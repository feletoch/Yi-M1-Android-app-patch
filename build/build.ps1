<#
    Reproducible build for the YI Mirrorless 3.1.6 "modern Android" patch.

    What it does
      1. Decodes the original YI Mirrorless 3.1.6 APK with apktool (bundled).
      2. Applies the patch set in .\decoded-patch (smali + layouts + manifest).
      3. Drops the 32-bit native libraries.
      4. Compiles the pure-Java replacements in .\patch-src and baksmali's them
         into the decoded tree (baksmali is bundled).
      5. Adds the baked-in Master Guide assets (.\assets\offline_ml).
      6. Rebuilds, zipaligns and optionally signs the APK.

    Requirements
      - Windows PowerShell 5.1+ (or PowerShell 7+)
      - JDK 11 or newer (JAVA_HOME or -JavaHome)
      - Android SDK with build-tools + a platform (ANDROID_SDK_ROOT / ANDROID_HOME
        or -AndroidSdk)

    Examples
      # sign with your own key
      .\build.ps1 -OriginalApk "C:\downloads\YI+Mirrorless_3.1.6.apk" `
                  -Keystore "C:\keys\my-release.jks" -StorePass "secret" `
                  -KeyAlias "mykey" -KeyPass "secret"

      # unsigned build (sign it yourself afterwards)
      .\build.ps1 -OriginalApk "C:\downloads\YI+Mirrorless_3.1.6.apk"

    The original APK is NOT included in this repository. See README.md.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$OriginalApk,

    [string]$AndroidSdk = $(if ($env:ANDROID_SDK_ROOT) { $env:ANDROID_SDK_ROOT } else { $env:ANDROID_HOME }),
    [string]$JavaHome   = $env:JAVA_HOME,

    [string]$Keystore,
    [string]$StorePass,
    [string]$KeyAlias = "yi",
    [string]$KeyPass,

    [string]$OutputApk,
    [switch]$KeepWork
)

$ErrorActionPreference = "Stop"
$Root      = $PSScriptRoot
$Work      = Join-Path $Root ".work"
$Decoded   = Join-Path $Work  "decoded"
$StubOut   = Join-Path $Work  "stubout"
$Classes   = Join-Path $Work  "classes"
$DexDir    = Join-Path $Work  "dex"
$SmaliOut  = Join-Path $Work  "smali_out"
$OutDir    = Join-Path $Root  "out"
$Apktool   = Join-Path $Root  "tools\apktool-3.0.3.jar"
$Baksmali  = Join-Path $Root  "tools\baksmali-3.0.10.jar"

function Fail($msg) { Write-Host "ERROR: $msg" -ForegroundColor Red; exit 1 }

if (-not (Test-Path -LiteralPath $OriginalApk)) { Fail "original APK not found: $OriginalApk" }
if (-not (Test-Path -LiteralPath $Apktool))     { Fail "missing $Apktool" }
if (-not (Test-Path -LiteralPath $Baksmali))    { Fail "missing $Baksmali" }

# ------------------------------------------------------------------ toolchain
if (-not (Test-Path "$JavaHome\bin\javac.exe")) {
    Fail "JDK not found. Set JAVA_HOME or pass -JavaHome (need javac.exe)."
}
if (-not $AndroidSdk -or -not (Test-Path $AndroidSdk)) {
    Fail "Android SDK not found. Set ANDROID_SDK_ROOT / ANDROID_HOME or pass -AndroidSdk."
}

function Get-NewestDir($parent, $pattern) {
    Get-ChildItem -LiteralPath $parent -Directory -Filter $pattern -ErrorAction SilentlyContinue |
        Sort-Object Name -Descending | Select-Object -First 1
}

$BtDir = Get-NewestDir (Join-Path $AndroidSdk "build-tools") "*"
if (-not $BtDir) { Fail "no build-tools directory under $AndroidSdk\build-tools" }
$PlatDir = Get-NewestDir (Join-Path $AndroidSdk "platforms") "android-*"
if (-not $PlatDir) { Fail "no platform under $AndroidSdk\platforms (install one with sdkmanager)" }

$BuildTools = $BtDir.FullName
$AndroidJar = Join-Path $PlatDir.FullName "android.jar"
$env:JAVA_HOME = $JavaHome
$env:Path      = "$JavaHome\bin;$BuildTools;$env:Path"

Write-Host "== JDK          : $JavaHome"
Write-Host "== build-tools  : $BuildTools"
Write-Host "== android.jar  : $AndroidJar"

# ------------------------------------------------------------------ 1. decode
Write-Host "== decoding original APK"
if (Test-Path $Work) { Remove-Item -Recurse -Force $Work }
New-Item -ItemType Directory -Force $Work, $OutDir | Out-Null

& "$JavaHome\bin\java.exe" -jar $Apktool d $OriginalApk -o $Decoded -f
if ($LASTEXITCODE -ne 0) { Fail "apktool decode failed" }

# ------------------------------------------------------------------ 2. patches
Write-Host "== applying decoded-patch"
Copy-Item -Path "$Root\decoded-patch\*" -Destination $Decoded -Recurse -Force

# the app only ever ran on 32-bit; drop the native libs entirely
if (Test-Path (Join-Path $Decoded "lib")) { Remove-Item -Recurse -Force (Join-Path $Decoded "lib") }

# ------------------------------------------------------------------ 3. offline guide
Write-Host "== adding offline Master Guide assets"
$OfflineAssets = Join-Path $Root "assets\offline_ml"
if (-not (Test-Path $OfflineAssets)) { Fail "missing $OfflineAssets" }
New-Item -ItemType Directory -Force (Join-Path $Decoded "assets") | Out-Null
Copy-Item -Path $OfflineAssets -Destination (Join-Path $Decoded "assets") -Recurse -Force

# ------------------------------------------------------------------ 4. java -> smali
Write-Host "== compiling replacement classes"
New-Item -ItemType Directory -Force $StubOut, $Classes, $DexDir | Out-Null

$StubRoot = Join-Path $Root "patch-src\stub"
$SrcRoot  = Join-Path $Root "patch-src"

& "$JavaHome\bin\javac.exe" --release 8 -nowarn -classpath $AndroidJar -d $StubOut `
    "$StubRoot\com\xiaoyi\mirrorlesscamera\view\LiveView.java" `
    "$StubRoot\com\xiaoyi\mirrorlesscamera\db\a.java" `
    "$StubRoot\com\xiaoyi\mirrorlesscamera\common\l.java"

$Sources = @(
    "$SrcRoot\com\xiaoyi\mirrorlesscamera\view\UdpJpegReceiver.java",
    "$SrcRoot\com\xiaoyi\mirrorlesscamera\OfflineMasterLearn.java",
    "$SrcRoot\com\facebook\imagepipeline\memory\NativeMemoryChunk.java",
    "$SrcRoot\com\xiaoyi\mirrorlesscamera\bean\DngJpegScanner.java",
    "$SrcRoot\com\xiaoyi\mirrorlesscamera\bean\YiMirrorlessDNG.java",
    "$SrcRoot\com\xiaoyi\mirrorlesscamera\bean\YiCameraThumb.java"
)

& "$JavaHome\bin\javac.exe" --release 8 -nowarn -classpath "$AndroidJar;$StubOut" -d $Classes @Sources
if ($LASTEXITCODE -ne 0) { Fail "javac failed" }

$ClassFiles = @(Get-ChildItem -Recurse $Classes -Filter *.class | ForEach-Object { $_.FullName })
& "$BuildTools\d8.bat" --min-api 19 --lib $AndroidJar --output $DexDir @ClassFiles
if ($LASTEXITCODE -ne 0) { Fail "d8 failed" }

& "$JavaHome\bin\java.exe" -jar $Baksmali d (Join-Path $DexDir "classes.dex") -o $SmaliOut
if ($LASTEXITCODE -ne 0) { Fail "baksmali failed" }

Copy-Item "$SmaliOut\com\xiaoyi\mirrorlesscamera\view\*.smali"   (Join-Path $Decoded "smali\com\xiaoyi\mirrorlesscamera\view")   -Force
Copy-Item "$SmaliOut\com\xiaoyi\mirrorlesscamera\bean\*.smali"   (Join-Path $Decoded "smali\com\xiaoyi\mirrorlesscamera\bean")   -Force
Copy-Item "$SmaliOut\com\xiaoyi\mirrorlesscamera\*.smali"        (Join-Path $Decoded "smali\com\xiaoyi\mirrorlesscamera")        -Force
Copy-Item "$SmaliOut\com\facebook\imagepipeline\memory\*.smali"  (Join-Path $Decoded "smali\com\facebook\imagepipeline\memory")  -Force

# ------------------------------------------------------------------ 5. package
Write-Host "== building APK"
$Unsigned = Join-Path $OutDir "yi-3.1.6-patched-unsigned.apk"
$Aligned  = Join-Path $OutDir "yi-3.1.6-patched-aligned.apk"
if (-not $OutputApk) { $OutputApk = Join-Path $OutDir "yi-3.1.6-patched.apk" }

& "$JavaHome\bin\java.exe" -jar $Apktool b $Decoded -o $Unsigned
if ($LASTEXITCODE -ne 0) { Fail "apktool build failed" }

& "$BuildTools\zipalign.exe" -f -p 4 $Unsigned $Aligned
if ($LASTEXITCODE -ne 0) { Fail "zipalign failed" }

if ($Keystore) {
    if (-not (Test-Path -LiteralPath $Keystore)) { Fail "keystore not found: $Keystore" }
    if (-not $StorePass) { Fail "pass -StorePass for the keystore" }
    if (-not $KeyPass)   { $KeyPass = $StorePass }

    Write-Host "== signing"
    & "$BuildTools\apksigner.bat" sign --ks $Keystore --ks-pass "pass:$StorePass" `
        --ks-key-alias $KeyAlias --key-pass "pass:$KeyPass" `
        --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true `
        --out $OutputApk $Aligned
    if ($LASTEXITCODE -ne 0) { Fail "apksigner failed" }

    & "$BuildTools\apksigner.bat" verify --verbose $OutputApk
    Write-Host ""
    Write-Host "== done: $OutputApk" -ForegroundColor Green
    Write-Host "   install: adb install -r --no-incremental `"$OutputApk`""
} else {
    Copy-Item $Aligned $OutputApk -Force
    Write-Host ""
    Write-Host "== done (UNSIGNED): $OutputApk" -ForegroundColor Yellow
    Write-Host "   sign it with apksigner, or re-run with -Keystore / -StorePass / -KeyAlias:"
    Write-Host "   apksigner sign --ks <your.jks> --out yi-3.1.6-patched.apk `"$OutputApk`""
}

if (-not $KeepWork) { Remove-Item -Recurse -Force $Work }
