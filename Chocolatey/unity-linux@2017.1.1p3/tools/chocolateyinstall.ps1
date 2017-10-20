$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.2017.1.1p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/929150d2fa14/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.1p3.exe'
$checksum64     = 'bdd1e269b503558aed02db8b28fa9cbd907d16836d3c3791ee916e70365055b1'

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
