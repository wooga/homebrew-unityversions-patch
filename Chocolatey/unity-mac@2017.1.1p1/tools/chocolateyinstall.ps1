$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.2017.1.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/007fc09e806c/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.1p1.exe'
$checksum64     = 'ad51eb4bdc0d3bfdfcee3eae26c2c0491c1a281b244e8cdde0a82e5fa940a145'

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
