$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.3p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/88d4ddf6344a/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.3p3.exe'
$checksum64     = '1ea79e7bf1334664dfce7102c62b1d0048bae7868870b3546d6b43447ffdf25b'

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
