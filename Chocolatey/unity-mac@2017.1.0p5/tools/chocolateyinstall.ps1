$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.2017.1.0p5'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/de463fc61bac/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.0p5.exe'
$checksum64     = '471193cf701fd84af6ff3ba838f2402c98f4c447eed239cc3e91ea8a44334ded'

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
