$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.5.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/9360c5517afe/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.2p1.exe'
$checksum64     = '954edf5bb9788550f8a9bab717980a9cf50a5cd9135f42c2cd1fb44ad5c25816'

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
