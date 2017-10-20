$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl@5.6.0p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/bbd5ca01a0ea/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.6.0p2.exe'
$checksum64     = '42ceb9cbbbb63288d17fa15f17c5304301f724aa80b9a46bf3fb7b3abb424203'

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
