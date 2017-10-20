$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.6.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/74c1f4917542/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.1p1.exe'
$checksum64     = 'f444d882152ff28e2d50d8233f37aa4c69f761fa469ee50fce27efa0ac982b55'

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
