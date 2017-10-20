$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/74c1f4917542/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.1p1.exe'
$checksum64     = '94de73c231057b6c7fd3da2427cbabb1458e06b2b893bcad5a0056a231f925f2'

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
