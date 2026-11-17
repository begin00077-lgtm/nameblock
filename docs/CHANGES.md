# 改动明细

基线：`apk/original-base.apk`（2026-11-03 从手机拉取的原始包，v1.0）。
产物：`apk/nameblock-v8.apk`。

所有改动都在 smali 层完成，未触碰资源与 AndroidManifest。

---

## 1. 黑名单改为前缀匹配

`com/dsh/nameblock/Store.smali` — `isBlockedNumber(Ljava/lang/String;)Z`

原始（保留数字归一化后的精确比较）：

```smali
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
```

修改后（**来电号码** 以 **黑名单项** 开头即命中）：

```smali
invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
```

调换了参数顺序：`p1` 是归一化后的来电号码，`v2` 是黑名单中的条目。

效果：黑名单里填 `18609`，`18609141451` / `18609999999` 都会被拒接。

---

## 2. 号码也参与关键词匹配

`com/dsh/nameblock/Store.smali` — `isBlockedNumber` 尾部（黑名单未命中时）

```smali
:cond_2d
invoke-virtual {p0, p1}, Lcom/dsh/nameblock/Store;->matchKeyword(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2d_nokw
monitor-exit p0
const/4 p0, 0x1
return p0
:cond_2d_nokw
monitor-exit p0
return v1
```

原实现此处直接 `return 0`。新增后，号码本身包含关键词同样视为命中。

配合 `matchKeyword()` 内部已有的 `contains` 逻辑，`18609` 能命中
`18609141451`（开头）和 `13818609123`（中间）。

---

## 3. 拦截成功后自动学习到黑名单

`com/dsh/nameblock/ScreeningService.smali` — `onScreenCall`

原实现只在「名称命中关键词」分支里调用 `putNumber`。新增在「已在拦截名单」分支：

```smali
const-string v0, "\u5df2\u5728\u62e6\u622a\u540d\u5355"   # 已在拦截名单
invoke-virtual {v7, v9, v5}, Lcom/dsh/nameblock/Store;->putNumber(Ljava/lang/String;Ljava/lang/String;)V
move v7, v4
goto :goto_ee
```

`v7` = Store，`v9` = 归一化号码，`v5` = 来电显示名（可为 null，`putNumber` 内部处理）。

---

## 4. 同步通话记录页：黄页名也能「加关键词」

### 4.1 按钮可见性

`com/dsh/nameblock/ListActivity.smali` — `showSyncRows()`

原逻辑：来电**显示名**为空（`v12 != 0`）时直接显示「无名称」，按钮不可用，
即使通话记录里带着黄页/标记名。

```smali
:cond_105
if-nez v12, :cond_10c                     # 有显示名 → 正常「加关键词」
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v12
if-eqz v12, :cond_10c                     # 有黄页/标记文字 → 也允许「加关键词」
const-string v6, "\u65e0\u540d\u79f0"
iput-object v6, v8, Lcom/dsh/nameblock/ListActivity$RowData;->actionLabel:Ljava/lang/String;
goto :goto_120
```

`v11` 是 `keywordTag(号码)` 或 `cleanName(entry.name)` 的结果。

### 4.2 挑字内容

`com/dsh/nameblock/ListActivity.smali` — `showCharPicker(CallEntry)`

原实现只把 `entry.name` 传给 `CharPickerView`，通话记录 `name` 列为空时
界面上只有号码，无法选出「比亚迪」这类黄页汉字。

改为三级回退（`.registers` 由 7 提到 8）：

```smali
iget-object v5, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->name:Ljava/lang/String;
iget-object v4, p1, Lcom/dsh/nameblock/Scanner$CallEntry;->number:Ljava/lang/String;
invoke-direct {p0, v4}, Lcom/dsh/nameblock/ListActivity;->displayNameOf(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
# 1) displayNameOf 非空 → 用
# 2) 否则用 entry.name（若非空）
# 3) 否则用 keywordTag(号码) —— 黄页/标记名
# 最后 null 兜底为 ""
invoke-static {p0, v3, v4}, Lcom/dsh/nameblock/Diag;->log(...)   # tag = "picker"
new-instance v2, Lcom/dsh/nameblock/CharPickerView;
invoke-direct {v2, p0, v4, v3}, Lcom/dsh/nameblock/CharPickerView;-><init>(...)V
```

实测日志：`[picker] 比亚迪海洋网(渭南奥通4S店)`。

---

## 排错记录

| 现象 | 原因 | 处理 |
| --- | --- | --- |
| `VerifyError: expected 2 argument registers, method signature has 3` | `Diag.log` 是三参数，漏传 tag | 补 `const-string v3, "picker"` |
| `VerifyError: type Conflict unexpected as arg to if-eqz` | 在 `showSyncRows` 里用未初始化的 `v9` 当临时寄存器 | 改用 int 型 `v12` 承载 `length()` 结果 |
| 同步页按钮变成「无名称」 | 分支条件写反（`if-eqz` / `if-nez`） | 改为 `if-nez v12`，显示名为空时再检查黄页文字 |
| App 启动即崩 | 上一行的寄存器/条件错误导致整个类校验失败 | 同上，修复后正常 |

## 校验

```bash
java -cp "cls;apksig.jar" Verify apk/nameblock-v8.apk
# verified=true  v1=false v2=false v3=true
```

- `apk/classes-patched.dex` SHA-256：`06B8D3E02577443D3716E5D6ECD9D994BB9BF3989C7F0A449863BC97DC9C42E0`
- `apk/nameblock-v8.apk` SHA-256：`2276B12644D06A8349E95A4ECBF6C79268D6217156D95B3B5D07F216F63FD930`
