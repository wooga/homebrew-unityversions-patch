$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.5.5.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/9360c5517afe/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.5.2p1.exe'
$checksum64     = '290574cd1495a42ddd0413bbabb3dc3a8a9b764042e9b56f8e051affa18efdc3'

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
