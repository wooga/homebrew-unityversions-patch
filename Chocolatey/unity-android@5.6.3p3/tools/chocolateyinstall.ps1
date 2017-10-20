$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.6.3p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/88d4ddf6344a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.3p3.exe'
$checksum64     = 'a3be9e3a1b1a62265310432abe104168ce07c61a81ea5aae5109e73cdf4a4c3e'

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
