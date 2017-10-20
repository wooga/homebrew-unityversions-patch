$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.2017.1.1p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/b8e3f2d6c409/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.1p2.exe'
$checksum64     = 'c94e669355a6d6ba61ef9155e04d4d18014a0c7b10b9b474388c068ee10136b2'

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
