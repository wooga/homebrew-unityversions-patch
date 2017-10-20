$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.2017.1.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/c2ed782bb21e/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.2p1.exe'
$checksum64     = '9073ab4b6766d291df3c4d6a9c4afec1be656f322b8e514e2ab6ca3ea45a416b'

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
