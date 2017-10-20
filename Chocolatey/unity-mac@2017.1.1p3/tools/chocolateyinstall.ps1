$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@2017.1.1p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/929150d2fa14/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.1p3.exe'
$checksum64     = 'a3c520a15b5cc60cddb64c82b37639fa6cbb8ff80259ee89ddfac0afec192dd9'

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
