$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios@5.6.0p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/bbd5ca01a0ea/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.6.0p2.exe'
$checksum64     = '7cc6253cc9553ba7eda8ecc5bee7bb864cf245e7eed7042e5a0098c19e013918'

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
