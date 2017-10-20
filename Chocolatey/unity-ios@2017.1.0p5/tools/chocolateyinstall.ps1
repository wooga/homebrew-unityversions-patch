$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios@2017.1.0p5'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/de463fc61bac/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.1.0p5.exe'
$checksum64     = '40d8b461b59b2a29eb08628195e045654c0929c3e61c0d8d9a690970e3584f8d'

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
