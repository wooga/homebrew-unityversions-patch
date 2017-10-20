$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.2017.1.1p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.1p4.exe'
$checksum64     = '3e4b0893340c2ed9197345fd6ce1eedf4611cc98befd639495cf0aea66d811fe'

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
