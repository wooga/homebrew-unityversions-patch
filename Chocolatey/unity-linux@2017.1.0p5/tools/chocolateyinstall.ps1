$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.2017.1.0p5'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/de463fc61bac/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.0p5.exe'
$checksum64     = '489903e2d8126acec58312c5b3f10d8f307b377d76ae3c5907f8d095a84cdc2a'

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
