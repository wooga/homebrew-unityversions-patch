$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.0p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/bbd5ca01a0ea/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.0p2.exe'
$checksum64     = '16d9cabd75af3f533a820ad8325127d58312e31bd97067279d75db715db650e4'

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
