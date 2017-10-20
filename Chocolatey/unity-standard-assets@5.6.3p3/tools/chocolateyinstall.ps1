$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.6.3p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/88d4ddf6344a/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.3p3.exe'
$checksum64     = 'ba378ebd235760a6316e3792d4b85327db749831b3b772da706d22d719c6cd4e'

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
