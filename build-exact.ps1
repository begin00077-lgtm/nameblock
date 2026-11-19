$ErrorActionPreference = 'Stop'
# Rebuild nameblock EXACTLY like the version that was running on the phone.
#
# The authoritative artefact is the APK pulled from the device
# (backup_phone_1118\base.apk): every resource, icon, raw XML and the manifest
# are taken from it byte-for-byte. Only classes.dex is regenerated, from the
# baksmali output of that same APK (smali_installed_1118\). This guarantees the
# rebuild is identical to what the phone ran.
$Proj = $PSScriptRoot
$Ws   = Split-Path $Proj -Parent
$Base = Join-Path $Ws 'tools'
$Jdk  = Join-Path $Base 'jdk\bin'
$Bt   = Join-Path $Base 'build-tools\android-14'
$env:JAVA_HOME = Split-Path $Jdk -Parent
$env:PATH = "$Jdk;$env:PATH"

$OrigApk  = Join-Path $Ws 'backup_phone_1118\base.apk'
$SmaliDir = Join-Path $Proj 'smali_installed_1118'
$Out      = Join-Path $Proj 'build-exact'

foreach ($p in @($OrigApk, (Join-Path $Jdk 'java.exe'), (Join-Path $Bt 'apksigner.bat'))) {
    if (-not (Test-Path $p)) { throw "missing required input: $p" }
}
if (-not (Test-Path (Join-Path $SmaliDir 'com\dsh\nameblock\MainActivity.smali'))) {
    throw "missing smali sources: $SmaliDir"
}

if (Test-Path $Out) { Remove-Item $Out -Recurse -Force }
New-Item -ItemType Directory -Force -Path $Out | Out-Null

# --- 1. assemble the smali dump back into classes.dex ---------------------
Write-Host '[1/4] smali -> classes.dex'
$smaliCp = @(
    (Join-Path $Proj 'tools\smali-asm.jar'),
    (Join-Path $Proj 'tools\dexlib2.jar'),
    (Join-Path $Proj 'tools\util.jar'),
    (Join-Path $Proj 'tools\guava.jar'),
    (Join-Path $Proj 'tools\jcommander.jar'),
    (Join-Path $Proj 'tools\antlr.jar')
) -join ';'
Push-Location $SmaliDir
& "$Jdk\java.exe" -cp $smaliCp com.android.tools.smali.smali.Main assemble . -o (Join-Path $Out 'classes.dex')
Pop-Location
if ($LASTEXITCODE -ne 0) { throw 'smali assemble failed' }

# --- 2+3. repack, replacing only classes.dex -----------------------------
# repack.py keeps every entry's compression type as in the source: resources.arsc
# MUST stay STORED (Android 11+ rejects compressed arsc), and the stale v1
# signature files are dropped because they no longer match.
Write-Host '[2/4] repack (preserving compression)'
$Py = $env:DSH_PYTHON
if (-not $Py -or -not (Test-Path $Py)) {
    $Py = Join-Path $env:USERPROFILE '.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe'
}
if (-not (Test-Path $Py)) { throw "python not found: $Py" }

$repackScript = Join-Path $Proj 'tools\repack_tools.py'
$rebuild = Join-Path $Out 'repack.apk'
if (Test-Path $rebuild) { Remove-Item $rebuild -Force }
& $Py $repackScript $OrigApk $rebuild ("classes.dex=" + (Join-Path $Out 'classes.dex'))
if ($LASTEXITCODE -ne 0) { throw 'repack failed' }

Write-Host '[3/4] align'
& "$Bt\zipalign.exe" -f -p 4 $rebuild (Join-Path $Out 'aligned.apk')
if ($LASTEXITCODE -ne 0) { throw 'zipalign failed' }

# --- 4. sign with the project key ----------------------------------------
Write-Host '[4/4] sign'
$ks = Join-Path $Proj 'tools\mod.p12'
& "$Bt\apksigner.bat" sign --ks $ks --ks-pass pass:modpass --key-pass pass:modpass `
    --ks-key-alias mod `
    --out (Join-Path $Out 'nameblock.apk') (Join-Path $Out 'aligned.apk')
if ($LASTEXITCODE -ne 0) { throw 'apksigner failed' }

& "$Bt\apksigner.bat" verify --print-certs (Join-Path $Out 'nameblock.apk') 2>&1 |
    Select-String -Pattern 'Verified using v\d|Signer #1 certificate SHA-256' |
    ForEach-Object { Write-Host "  $($_.Line.Trim())" }

Write-Host "OK -> $(Join-Path $Out 'nameblock.apk')" -ForegroundColor Green
