$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@2017.1.0p5'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/de463fc61bac/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.0p5.exe'
$checksum64     = '2e7069e8c9e04ea5c6ae20a9a2310bc7610131fda78b316a0ba5d7869ad8ce55'

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
