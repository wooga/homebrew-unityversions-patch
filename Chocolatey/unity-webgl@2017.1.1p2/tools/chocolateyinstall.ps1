$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.2017.1.1p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/b8e3f2d6c409/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.1p2.exe'
$checksum64     = 'ea3ee8adb1b273745e413812eca8a2234d464686ad5c46f323f393f2e6cbf454'

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
