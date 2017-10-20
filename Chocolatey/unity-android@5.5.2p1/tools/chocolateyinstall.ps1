$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.5.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/9360c5517afe/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.2p1.exe'
$checksum64     = 'a310d6b34b32a1c215ae32a0fb6a8ba10b9cf633a7859bb8cb3526820dbe59e4'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
