$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux@5.5.3p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/f15b2772e4d0/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.5.3p2.exe'
$checksum64     = 'efdacfdb2868b54e76fe1773b5412dc14134062968f4f78314e6fadfa98b666a'

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
