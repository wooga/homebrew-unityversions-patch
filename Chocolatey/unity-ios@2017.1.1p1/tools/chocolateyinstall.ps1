$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.2017.1.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/007fc09e806c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.1.1p1.exe'
$checksum64     = 'a45386bb8101e0bac796a2ef716aec1196fd373aba82912f8ef4378431cd7e2b'

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
