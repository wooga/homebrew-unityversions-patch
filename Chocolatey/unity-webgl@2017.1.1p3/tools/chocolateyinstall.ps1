$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl@2017.1.1p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/929150d2fa14/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.1p3.exe'
$checksum64     = '5a7e815e3d925942cc74804ef8799b32c812b3676ccb76466b039c00d113d8d4'

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
