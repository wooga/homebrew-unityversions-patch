$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios@5.6.3p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/88d4ddf6344a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.6.3p3.exe'
$checksum64     = '34b12d7003cb75e35d73a88c3302441ca58262bafa2b4dbdb6f3ec208345bb23'

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
