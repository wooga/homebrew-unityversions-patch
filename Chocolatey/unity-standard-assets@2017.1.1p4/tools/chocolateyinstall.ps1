$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.2017.1.1p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.1p4.exe'
$checksum64     = '3c55d9c13502ff7bae3426ab0fb8fcc1fe3ff50359aa12c23ce45addc1984717'

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
