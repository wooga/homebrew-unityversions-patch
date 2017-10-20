$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.2017.1.1p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.1p4.exe'
$checksum64     = 'c6d0cfebf2dddc8678a6df67bb625d8d0ab54a1fd006b2079a2e3fba0daafa40'

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
