$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.2017.1.1p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/b8e3f2d6c409/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.1p2.exe'
$checksum64     = 'ef8b4af457f06e540d14ddec6e8e7afbee0a8a0b861dea6acf8ff8572d235b28'

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
