$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@2017.1.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/007fc09e806c/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.1p1.exe'
$checksum64     = '9f22a81752b2fa1bb248e03f3e502c8e7432e9cb6fdeec71066eaf6604396525'

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
