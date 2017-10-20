$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@2017.1.0p5'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/de463fc61bac/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.0p5.exe'
$checksum64     = 'd3504c934bca807b0d49985fc2204500c9e3783a310bbc651787e2da42fcc60e'

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
