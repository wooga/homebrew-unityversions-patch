$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.6.3p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/fbe8bd37d7fa/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.3p4.exe'
$checksum64     = 'c03d9a5c332cf694815305e70e46963ab133655d17703e9d7a40f7b32510e713'

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
