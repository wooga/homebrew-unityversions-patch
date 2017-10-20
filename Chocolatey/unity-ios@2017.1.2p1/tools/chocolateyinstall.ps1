$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.2017.1.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/c2ed782bb21e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.1.2p1.exe'
$checksum64     = '7e2ac0220f9e53cceace64bea324577b52428c386d392d02e522023f7c5fa49e'

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
