$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.2017.1.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/007fc09e806c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.1p1.exe'
$checksum64     = '2992199e60697c855139487b999878e3a6e8b7b5f094d05558cdbd84c19cfcd6'

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
