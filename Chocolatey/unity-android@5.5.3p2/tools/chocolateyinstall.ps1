$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.5.3p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/f15b2772e4d0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.3p2.exe'
$checksum64     = '13fbb15951e4d1ad7cffccdb6228821c4c7f8496ae6b4c71665fd689d7d1e8fd'

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
