# 拦截傻逼 (NameBlock)

Android 来电拦截 App（包名 `com.dsh.nameblock`），用于拦截传媒、教育、酒业等机构的骚扰电话。

核心难点：Android 只把**运营商 CNAP 名称**交给 `CallScreeningService`，而屏幕上看到的黄页名（如「贵州王茅乾邦酒业有限公司」）来自拨号器自己的库，第三方拿不到。所以拦截必须多层并联。

---

## 拦截判定流程

```
来电
 ├─① ScreeningService（CALL_SCREENING 角色，响铃前）
 │    ├ 总开关关闭 / 紧急号码(110/119/120/122/96110) → 放行
 │    ├ 通讯录联系人 / 白名单 / 已学习放行 → 受信任
 │    ├ 黑名单命中                    → 拒接「已在拦截名单」
 │    ├ CNAP 名称含关键词             → 拒接 + 自动学习入黑名单
 │    └ CNAP 为空 → 查通话记录标记
 │         标记含关键词               → 拒接 + 自动学习
 │
 ├─② NameGuardService（无障碍，响铃后）
 │    读含「接听」字样的窗口文字 → 命中关键词 → TelecomManager.endCall()
 │
 ├─③ CallNotifyListener（通知监听）
 │    亮屏时 ColorOS 走横幅通知，从通知取名称 → 命中 → endCall()
 │
 └─④ Scanner + ScanJob（每 15 分钟）
      扫通话记录，名称命中关键词的号码自动补进黑名单
```

**关键词只匹配名称，不匹配号码。** 黑名单是**精确匹配**（非前缀）。

---

## 特性

| 能力 | 说明 |
| --- | --- |
| 名称关键词拦截 | CNAP 名 / 通话记录黄页名 / 来电界面文字，任一命中即拦 |
| 黑名单 | 精确号码匹配，响铃前直接拒接 |
| 自动学习 | 拦截成功的号码自动入黑名单；也可从通话记录批量学习 |
| 白名单 | 最高优先级，且加入白名单会自动移出黑名单 |
| 安静模式 | 首通不响铃直接拒接，号码自动入黑名单 |
| 紧急号码 | `110/119/120/122/96110` 永不拦截 |
| 拦截通知 | 高优先级、锁屏可见、带「放行此号码」按钮 |
| 无障碍保活 | `Keeper` 在 `ScanJob` 周期任务里检查并自动恢复 |

---

## 目录

```
apk/
  nameblock-v9.apk          # 最新成品（v3 签名，可直接安装）
  original-base.apk         # 基线 APK
  classes-patched.dex       # 与 v9 对应的 classes.dex
  installed-verification.apk# 从手机拉回的实际安装包（与 v9 一致）
smali/                      # 完整反编译（106 个类，含全部改动）
tools/                      # 构建与修补脚本
  gen_stubs.py              # 从 smali 生成 javac 编译期桩
  repack_tools.py           # 重打包（保留 arsc 压缩方式、丢弃旧 v1 签名）
  throttle_perf.py          # 日志节流
  fix_keeper1.py            # 修复 Keeper$1 覆盖无障碍设置
  fix_keeper_ensure.py      # 修复 Keeper.ensure 清空无障碍设置
  make_icon.py              # 生成图标
docs/CHANGES.md             # 改动明细
APP-LOGIC.md                # 从安装包反编译逐条还原的完整逻辑
build-exact.ps1             # 以基线 APK 为底、替换 dex 后重签
```

---

## 构建

需要：JDK 17、Android build-tools（aapt2/d8/zipalign/apksigner）、smali 3.0.10、Python 3。

```powershell
# 以基线 APK 为底，重新汇编 smali 并替换 classes.dex 后签名
.\build-exact.ps1
```

签名密钥需放在 `tools\mod.p12`（**不入库**），口令见私有备份。

---

## 安装与授权

```bash
adb install -r -g apk/nameblock-v9.apk

# 权限
adb shell pm grant com.dsh.nameblock android.permission.READ_CALL_LOG
adb shell pm grant com.dsh.nameblock android.permission.READ_CONTACTS
adb shell pm grant com.dsh.nameblock android.permission.READ_PHONE_STATE
adb shell pm grant com.dsh.nameblock android.permission.ANSWER_PHONE_CALLS
adb shell pm grant com.dsh.nameblock android.permission.POST_NOTIFICATIONS
adb shell pm grant com.dsh.nameblock android.permission.WRITE_SECURE_SETTINGS

# 来电筛选角色
adb shell cmd role add-role-holder android.app.role.CALL_SCREENING com.dsh.nameblock

# 无障碍 + 通知监听
adb shell settings put secure enabled_accessibility_services \
  "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"
adb shell settings put secure accessibility_enabled 1
adb shell cmd notification allow_listener \
  com.dsh.nameblock/com.dsh.nameblock.CallNotifyListener

# 免电池优化（避免被系统回收）
adb shell cmd deviceidle whitelist +com.dsh.nameblock
```

> 若已有其他无障碍服务，**务必用 `:` 拼接**，不要覆盖整行，否则会禁用掉别的 App。

---

## ⚠️ 签名

使用项目自有密钥（RSA 2048，v2/v3 签名）。**换密钥后无法覆盖安装，只能卸载重装，会清空 App 内数据**（关键词、黑名单）。

---

## 已知限制

- **首次来电若 CNAP 与通话记录标记都拿不到名称，只能靠无障碍在响铃后挂断**，会有短暂响铃；
- 进程被系统强杀期间来的电话无法拦截，`ScanJob` 每 15 分钟兜底恢复无障碍；
- 关键词是「包含」匹配，过短的词容易误伤；
- 依赖本 App 持有来电筛选角色，且无障碍服务保持开启。
