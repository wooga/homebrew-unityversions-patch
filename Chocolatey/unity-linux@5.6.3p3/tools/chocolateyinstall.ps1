$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.5.6.3p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/88d4ddf6344a/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.6.3p3.exe'
$checksum64     = 'bd136bc542ba370e5291ae9d848fb2d642720035f077d15c086f2e1534284388'

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
