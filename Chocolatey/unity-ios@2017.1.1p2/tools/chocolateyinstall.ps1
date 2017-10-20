$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios@2017.1.1p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/b8e3f2d6c409/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.1.1p2.exe'
$checksum64     = 'c964e86a5d3ce91daa81b7991b7f32714422cedb41a600add27de4c280b40c5d'

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
