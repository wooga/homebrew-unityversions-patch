$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.2017.1.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/c2ed782bb21e/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.2p1.exe'
$checksum64     = 'a368d6124677230d42ab373de3b80be08c8e4fb6eb478aee8179ad7c2a12dd7c'

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
