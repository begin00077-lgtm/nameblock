# 拦截傻逼 (NameBlock)

Android 来电拦截 App（包名 `com.dsh.nameblock`）。

在**不修改原版 UI 的前提下**，通过 DEX 打补丁增强了拦截能力：关键词现在同时匹配**号码**、**来电显示名称**、**来电界面文字**（含在线黄页名），黑名单由拦截结果自动学习。

---

## 特性

| 能力 | 说明 |
| --- | --- |
| 关键词匹配号码 | 号码包含任一关键词即拦截（如 `18609` 命中 `18609141451`、`13818609123`） |
| 关键词匹配名称 | 保留原逻辑，来电显示名归一化后做包含匹配 |
| 关键词匹配来电界面 | 无障碍服务读取来电/通话界面文字（含黄页识别名，如「比亚迪海洋网(渭南奥通4S店)」） |
| 黑名单 | **前缀匹配**：黑名单填 `18609`，所有 18609 开头的号码都会被拒接 |
| 黑名单自动学习 | 每次拦截成功自动把号码写入黑名单 |
| 白名单 | 最高优先级，永远放行 |
| 紧急号码 | `110/119/120/122/96110` 永不拦截 |

## 拦截判定流程

```
来电
 ├─ 总开关关闭 → 放行
 ├─ 紧急号码   → 放行
 ├─ 白名单命中 → 放行
 ├─ isBlockedNumber(号码)：黑名单前缀命中 或 号码包含关键词 → 拒接（响铃前）
 ├─ 来电显示名包含关键词 → 拒接
 └─ 无障碍读到界面文字含关键词 → 挂断
```

## 目录

```
apk/
  nameblock-v8.apk          # 最终成品（v3 签名，可直接安装）
  original-base.apk         # 打补丁前的原始 APK（参考用）
  classes-patched.dex       # 补丁后的 classes.dex
  installed-verification.apk# 从手机拉回的实际安装包（与 v8 一致）
smali/                      # 完整反编译 smali（含本仓库的全部改动）
tools/
  build_mod.py              # DEX 补丁 + 重打包 + v2 签名（Python）
  pack.py                   # 用指定 classes.dex 重新打包
  Sign.java / Verify.java   # apksig 签名与校验
docs/
  CHANGES.md                # 改动明细
```

## 构建

依赖：JDK（`javac`/`java`）、Python 3、[androguard](https://pypi.org/project/androguard/)、
apksig（`com.android.tools.build:apksig`）、smali/baksmali 3.0.10。

```bash
# 1. 反编译原始 APK
java -cp "smali.jar;dexlib2.jar;util.jar;guava.jar;jcommander.jar" \
     com.android.tools.smali.baksmali.Main d original-base.apk -o smali

# 2. 修改 smali（见 docs/CHANGES.md）

# 3. 汇编成 dex
java -cp "smali-asm.jar;dexlib2.jar;util.jar;guava.jar;jcommander.jar;antlr.jar" \
     com.android.tools.smali.smali.Main a smali -o classes.dex

# 4. 重新打包
python tools/pack.py classes.dex unsigned.apk

# 5. 签名
java -cp "cls;apksig.jar" Sign <storepass> keystore alias unsigned.apk signed.apk

# 6. 校验
java -cp "cls;apksig.jar" Verify signed.apk      # 期望 verified=true
```

## 安装

```bash
adb install -r apk/nameblock-v8.apk
```

首次安装后需授予：

```bash
adb shell pm grant com.dsh.nameblock android.permission.READ_CALL_LOG
adb shell pm grant com.dsh.nameblock android.permission.READ_CONTACTS
adb shell pm grant com.dsh.nameblock android.permission.POST_NOTIFICATIONS
adb shell pm grant com.dsh.nameblock android.permission.WRITE_SECURE_SETTINGS
adb shell cmd role add-role-holder android.app.role.CALL_SCREENING com.dsh.nameblock
```

## ⚠️ 签名

本 APK 使用**自签名证书**（非官方原版证书）。这意味着：

- 无法覆盖安装到官方原版之上，必须先卸载原版；
- **卸载会清空 App 数据**（关键词、黑名单、白名单），请先导出或记录；
- 后续更新必须始终使用同一把私钥签名。

## 已知限制

- 关键词为「包含」匹配，短词容易误伤（如 `186` 会拦掉整个号段）；
- 黑名单前缀匹配对整张表生效，不要往黑名单里放很短的号；
- 拦截依赖系统将本 App 设为默认来电筛选应用，且无障碍服务需保持开启。
