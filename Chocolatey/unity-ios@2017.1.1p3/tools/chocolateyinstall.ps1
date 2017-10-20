$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.2017.1.1p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/929150d2fa14/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.1.1p3.exe'
$checksum64     = '200c03254bda16fc3ef6a3551490ee5a687a485f2df5820bf608ab80ceb834e4'

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
