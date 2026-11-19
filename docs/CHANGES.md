# 改动明细

基线：`apk/original-base.apk`
最新产物：`apk/nameblock-v9.apk`

所有改动都在 smali 层完成，未触碰资源与 AndroidManifest。

---

## v9（2026-11-19）— 稳定性修复

### 1. `Keeper.ensure()` 不再清空其他人的无障碍服务

`com/dsh/nameblock/Keeper.smali`

重绑流程原本是「先清空整行 → 500ms 后再写回自己」，这会**禁用掉所有其他 App 的无障碍服务**（实测踢掉了 `com.dsh.dakacheck`）。

```smali
# 修改前
invoke-static {v6, v2, v7}, Settings$Secure;->putString(...)   # v7 = ""

# 修改后：读出当前值，只移除自己的条目，其余原样保留
getString(cr, "enabled_accessibility_services") -> v13
if v13 startsWith "<me>:"  -> v13 = v13.substring(("<me>:").length())
elif v13 equals "<me>"     -> v13 = ""
putString(cr, key, v13)
```

### 2. `Keeper$1.run()` 恢复时不再硬覆盖

`com/dsh/nameblock/Keeper$1.smali`

原本延迟 500ms 后把整行替换成只有自己：

```smali
const-string v3, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"
putString(cr, "enabled_accessibility_services", v3)   # 覆盖，其他人被踢
```

改为「读出 → 已包含自己就不动 → 未包含则用 `:` 追加」。

### 3. `[perf]` 诊断日志节流

`com/dsh/nameblock/ListActivity.smali`

`callLogNames()` 里的性能日志在页面频繁刷新时每 5 秒写一条，会把 128 KB 的
`diag.log` 刷爆（`Diag.write()` 超限时整个删除），导致真正的来电记录丢失。

新增静态字段 `lastPerfLog:J`，60 秒内只写一次：

```smali
invoke-static {}, System->currentTimeMillis()
sget-wide v14, ListActivity->lastPerfLog:J
sub-long v14, ...
const-wide/32 v16, 0xea60      # 60000ms
if-gez v14, :skip_perf_log
```

页面 5 秒轮询、标记变化检测、界面刷新逻辑**均未改动**，只减少日志写入。

---

## v8（2026-11-03）— 拦截能力增强

### 1. 黑名单改为前缀匹配

⚠️ **注意**：本节描述的是 v8 的设计意图，但**在真机安装包中并未生效**——`isBlockedNumber` 实际仍为 `equals` 精确匹配。v9 保持与安装包一致，未改动此处。详见 `APP-LOGIC.md`。

### 2. 号码也参与关键词匹配

同上，真机版本中 `isBlockedNumber` 没有号码关键词分支。

### 3. 拦截成功后自动学习到黑名单

`ScreeningService.onScreenCall` 在「已在拦截名单」分支调用 `putNumber`。

### 4. 同步通话记录页：黄页名也能「加关键词」

- 按钮可见性：显示名为空但有黄页文字时，也允许「加关键词」
- 挑字内容：三级回退 `displayNameOf(号码)` → `entry.name` → `keywordTag(号码)`

### 5. `identify_name` 双格式兼容

`Marks.flagOf()` 与 `ListActivity.flagOf()`：

```
{"phoneFlag":"11111"}              ← 手动标记
{"name":"宜宾渔朵酒业有限责任公司"}   ← 黄页标记
```

原本只读 `phoneFlag`，黄页类标记一律读不到，导致「酒业」等关键词永远匹配不上。

---

## v9 排错记录

| 现象 | 原因 | 处理 |
| --- | --- | --- |
| 清理后台后打卡 App 无障碍被禁用 | `Keeper$1` 硬覆盖整行设置 | 改为读-判-追加 |
| 同上，另一处 | `Keeper.ensure` 拔插前清空整行 | 改为只移除自己 |
| 重绑时无障碍反复解绑重绑 | 写入设置触发系统重绑，`connected` 状态震荡 | 收敛后自行停止 |
| `diag.log` 很快被清空 | 每 5 秒一条 perf 日志撑满 128 KB | 节流到 60 秒 |
| APK 装不上：`requires resources.arsc ... uncompressed` | 重打包时压缩了 arsc | 用 `repack_tools.py` 保留原压缩方式 |

## 校验

```bash
apksigner verify --print-certs apk/nameblock-v9.apk
# Verified using v3 scheme: true
# Signer #1 certificate SHA-256: 07:dd:7d:12:...:ce
```

- `apk/classes-patched.dex`：106 个类 / 902 个方法 / 284 个字段，与基线一致
- `apk/installed-verification.apk` 与 `apk/nameblock-v9.apk` 哈希相同（从手机拉回验证）
