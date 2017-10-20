$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.6.0p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/bbd5ca01a0ea/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.0p2.exe'
$checksum64     = '15eb049102edb5393983765c13ff4cf0a35e4b771b85e901178fa55e182bc04e'

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
