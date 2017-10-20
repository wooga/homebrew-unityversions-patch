$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.2017.1.1p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/929150d2fa14/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.1p3.exe'
$checksum64     = 'f0295cee0d6009d3e39edba962fb6d8172cb43a9fa56515c8da7e9e74b79df72'

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
