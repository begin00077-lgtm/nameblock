# nameblock 逻辑全解（基于手机安装包 `smali_installed_1118`，106 个类）

> 这份文档是从**手机上实际运行的 APK** 反编译 smali 逐条读出来的，
> 不是从旧 Java 源码推测的。任何与旧 `src/*.java` 冲突之处，以此为准。

---

## 0. 组件与职责

| 组件 | 类型 | 职责 |
| --- | --- | --- |
| `ScreeningService` | CallScreeningService | **响铃前**判定：唯一能不响铃就拒接的环节 |
| `NameGuardService` | AccessibilityService | **响铃后**读来电界面文字，命中关键词则 `endCall()` |
| `CallNotifyListener` | NotificationListenerService | 亮屏时 ColorOS 用横幅通知显示来电，从通知里取名称 |
| `Scanner` | 工具类 | 扫通话记录，按名称关键词学习号码进黑名单 |
| `ScanJob` | JobService | 每 15 分钟跑一次 `Scanner.scan(full=false)` |
| `Store` | SharedPreferences | 全部数据 |
| `Keeper` | 工具类 | 用 WRITE_SECURE_SETTINGS 保持无障碍服务常驻 |
| `Marks` | 工具类 | 从通话记录读号码标记（`identify_name` 的 JSON） |
| `Notifier` / `ActionReceiver` | 通知 | 拦截后发通知，带「放行此号码」 |

---

## 1. Store：数据模型

prefs 文件 `nameblock.xml`，key 一览：

| key | 类型 | 含义 |
| --- | --- | --- |
| `enabled` | bool | 总开关 |
| `name_guard` | bool | 启用「读名称挂断」（无障碍） |
| `mode` | int | 陌生号码策略：0=OFF 1=SILENCE 2=REJECT |
| `kw_list` | string | 关键词，`\n` 分隔 |
| `kw` | stringSet | 旧版关键词（兼容） |
| `kw_order_fixed` | bool | 关键词顺序已修正标志 |
| `numbers` | string | 黑名单，每行 `号码\t标签\t时间戳` |
| `white_list` | string | 白名单，每行一个号码 |
| `allowed` | stringSet | 自动学习的「有往来」号码 |
| `recent` | string | 二次来电窗口 `号码,首次时间,次数` |
| `last_call` / `last_call_contact` | string/bool | 最近一通来电，供无障碍判断 |
| `last_scan` | long | 增量扫描水位线 |
| `log` | string | 拦截记录 |

**默认关键词 21 个**：传媒、文化传播、教育、培训、招生、课程、学院、学校、广告、推销、骚扰、诈骗、贷款、保险、理财、房产、中介、装修、医美、招生办、客服中心。

### 关键方法语义

- `Norm.number(s)`：只留数字；去 `0086` 前缀；13 位且以 `86` 开头去前两位。**保留座机前导 0**。
- `Norm.name(s)`：转小写，只留字母数字（去掉空格、标点、括号）。
- `matchKeyword(normalizedName)`：
  ```java
  for (String kw : keywords) {
      String n = Norm.name(kw);
      if (n.isEmpty()) continue;
      if (normalizedName.contains(n)) return kw;   // 包含匹配
  }
  return null;
  ```
  **注意：关键词只与「名称」比较，不与号码比较。**
- `isBlockedNumber(number)`：遍历 `numbers`，用 **`equals` 精确匹配**（不是前缀）。
- `isWhitelisted` / `isAllowed`：`List.contains` / `Set.contains`，同样是精确匹配。
- `putNumber(num, label)`：白名单里的跳过；已存在则移到首位并更新时间；否则插到首位；**最多保留 1000 条**。
- `addWhitelist(num)`：加入白名单后**同时从黑名单移除**。

---

## 2. 主判定：ScreeningService.onScreenCall

```java
Store store = Store.get(this);
String number = details.getHandle() == null ? "" : details.getHandle().getSchemeSpecificPart();
String name   = details.getCallerDisplayName();     // 运营商 CNAP 名
String n      = Norm.number(number);

Diag.log("call", "num=" + n + " name=" + name + " enabled=" + store.enabled() + " mode=" + store.mode());

// 只有总开关开启 且 非紧急号码 才继续
if (store.enabled() && !isEmergency(n)) {           // 紧急：110/119/120/122/96110
    boolean contact = Contacts.isContact(this, n);
    store.setLastCall(n, contact);                  // 给无障碍服务留证

    // 是否"受信任"：联系人 / 白名单 / 已学习放行
    boolean trusted = contact || store.isWhitelisted(n) || store.isAllowed(n);

    // ---------- 分支 A：黑名单 ----------
    if (!store.isWhitelisted(n) && store.isBlockedNumber(n)) {
        block = true;
        reason = "已在拦截名单";
    }
    // ---------- 分支 B：CNAP 名称含关键词 ----------
    else if (name != null && !name.trim().isEmpty()) {
        String hit = store.matchKeyword(Norm.name(name));
        if (hit != null && !trusted) {
            block = true;
            reason = "名称含「" + hit + "」";
            store.putNumber(n, name.trim() + " · " + hit);   // 学习
        }
    }
    // ---------- 分支 C：CNAP 为空 → 查号码标记 ----------
    else {
        String mark = Marks.of(this, n);
        if (!mark.isEmpty() && !trusted) {
            String hit = store.matchKeyword(Norm.name(mark));
            if (hit != null) {
                block = true;
                reason = "号码标记含「" + hit + "」";
                store.putNumber(n, mark + " · " + hit);      // 学习
            }
        }
    }
}

CallResponse.Builder b = new CallResponse.Builder();
if (block) b.setDisallowCall(true).setRejectCall(true).setSilenceCall(true)
             .setSkipCallLog(false).setSkipNotification(true);
respondToCall(details, b.build());

Diag.log("decision", "num=" + number + " block=" + block + " reason=" + reason);
if (block) { store.addLog(...); Notifier.blocked(...); }
```

### 判定要点

1. **分支是互斥的 `else if` 链**：只要 `name` 非空就走 B，**永远不会走 C**。
2. `name` 为空时才走 C，C 依赖 `Marks.of()` 从通话记录里读标记。
3. **关键词只匹配名称**，不匹配号码。所以「号码里含某个关键词」永远不会触发。
4. 黑名单是**精确匹配**，`085188975354` 只能被完全相同的条目命中。

### Marks.of

```java
Cursor c = cr.query(CallLog.Calls.CONTENT_URI,
                    new String[]{"number", "identify_name"},
                    "number=?",                        // ← 精确匹配数据库里的原始号码
                    new String[]{Norm.number(number)}, // ← 传入的是归一化后的纯数字
                    "date DESC");
// 取第一条非空 identify_name，用 flagOf 解析：
//   先找 "phoneFlag":"..."，为空再找 "name":"..."
```

**风险点**：查询用 `number=?` 精确匹配，但传入的是 `Norm.number()` 归一化后的值。
若通话记录库里原始号码带空格/短横线/`+86`，此查询将查不到 → 分支 C 失效。

---

## 3. 响铃后：NameGuardService.handleEvent

```java
if (!store.enabled() || !store.nameGuard()) return;

long now = System.currentTimeMillis();
if (now - lastEnd < 3000) return;              // 挂断后 3 秒冷却（0xbb8）

TelephonyManager tel = ...;
if (tel.getCallState() != CALL_STATE_RINGING) return;   // 必须正在响铃

String text = gatherCallText();                // 读所有窗口的文字
if (text.isEmpty()) return;

if (now - lastLog > 2000) log("acc-text", "len=" + ...);   // 限流日志

String number = store.lastCallNumber();
if (number.isEmpty()) number = firstNumber(text);

if (!number.isEmpty() && store.isWhitelisted(number)) return;   // 白名单跳过

String hit = store.matchKeyword(Norm.name(text));
if (hit == null && !number.isEmpty()) {
    String mark = cachedMark(number);
    if (!mark.isEmpty()) hit = store.matchKeyword(Norm.name(mark));
}
if (hit == null) return;

if (store.lastCallWasContact()) return;        // 联系人不挂

TelecomManager tm = ...;
tm.endCall();
store.addLog(...); Notifier.blocked(...);
```

### gatherCallText

```java
for (AccessibilityWindowInfo w : getWindows()) {
    StringBuilder sb = new StringBuilder();
    collect(w.getRoot(), sb, 0);
    if (sb.toString().contains("接听")) return sb.toString();   // 只认含「接听」的窗口
}
return "";
```

**要点**：
- 只接受包含「接听」二字的窗口 → 用来识别「这是来电界面」。
- 若来电界面没有「接听」按钮（例如权限不足、或界面被其他 App 覆盖），`gatherCallText` 返回空 → 什么都不做。
- **依赖无障碍服务处于连接状态**（`Keeper` 负责保活）。

---

## 4. 响铃后兜底：CallNotifyListener

亮屏时 ColorOS 用横幅通知显示来电，无障碍读不到窗口，改从通知取：

```java
if (!pkg.contains("incallui") && !pkg.contains("telecom") && !pkg.contains("phone")) return;
if (!store.enabled() || !store.nameGuard()) return;
if (tel.getCallState() != CALL_STATE_RINGING) return;

String all = title + "|" + text + "|" + bigText;
String hit = store.matchKeyword(Norm.name(all));
if (hit == null) return;

String number = store.lastCallNumber();  // 为空则从文字里抽数字
if (store.isWhitelisted(number) || store.isAllowed(number)) return;
tm.endCall();
```

---

## 5. 事后学习：Scanner.scan

```java
long since = full ? 0 : store.lastScan();
Cursor c = cr.query(CallLog.Calls.CONTENT_URI, null,
                    "date>" + since, null, "date DESC");

while (c.moveToNext()) {
    String norm = Norm.number(number);
    if (Norm.isServiceNumber(norm)) continue;      // 长度<5，或 400/800 开头，或 95 开头且≤6位

    if (type == OUTGOING) { if (date > now-90d) allowed.add(norm); continue; }
    if (type == INCOMING && duration >= 15 && date > now-30d) allowed.add(norm);
    if (type == VOICEMAIL) continue;

    String shown = pickName(cached_name, cnip_name, identify_name);
    if (shown == null) continue;

    String hit = store.matchKeyword(Norm.name(shown));
    if (hit == null) continue;
    if (isContact(cr, norm)) continue;              // 联系人不进黑名单

    store.putNumber(norm, shown + " · " + hit);
}
store.setAllowed(allowed);
store.setLastScan(max(newestDate, since));
```

### pickName 优先级

1. `cached_name`（系统已缓存的名字）
2. `cnip_name`（运营商 CNAP）
3. `identify_name`（黄页/标记 JSON）：先 `name`，再 `phoneFlag`

### 增量扫描的坑

`since = lastScan`，只处理 `date > since` 的记录。
`lastScan` 被推到「本轮扫过的最新一条通话时间」——**若某条通话早于这个水位线且当时没扫到（App 被杀 / Job 未跑），它将永久被跳过**。

---

## 6. 陌生号码策略（mode）

在 `ScreeningService` 里，分支 A/B/C 都不拦截时：

```java
if (!block && !trusted && store.mode() != MODE_OFF) {
    long[] st = store.recent(n);
    int count = (st == null || now - st[0] > 10min) ? 1 : (int) st[1] + 1;
    store.setRecent(n, st[0] or now, count);

    if (count == 2) { /* 二次来电放行，防快递外卖 */ }
    else if (mode == MODE_REJECT) { block = true; reason = "陌生号码"; }
    else { silence = true; reason = "陌生号码（静音）"; }
}
```

**当前 `mode` 的值需要从 prefs 里读实际值确认。**

---

## 7. 为什么「加了关键词」仍可能响铃

按代码，关键词要生效必须满足：

| 路径 | 前提条件 |
| --- | --- |
| B（响铃前拒接） | 系统把**名称**通过 `getCallerDisplayName()` 交出（含关键词） |
| C（响铃前拒接） | `getCallerDisplayName()` 为空，且 `Marks.of(n)` 能用 `number=?` 查到标记，且标记含关键词 |
| 无障碍挂断 | 响铃**之后**，无障碍已连接，「接听」窗口文字含关键词 |
| 通知监听 | 亮屏横幅通知里含关键词 |

四者任一失败，来电就会响完 / 需要手动拒接。

---

## 8. 待核对事项

- [ ] `mode` 实际值（0/1/2）
- [ ] `Marks.of` 的 `number=?` 是否真的匹配不到通话记录里的号码格式
- [ ] `getCallerDisplayName()` 在本机是否为 null（旧 README 称恒为 null）
