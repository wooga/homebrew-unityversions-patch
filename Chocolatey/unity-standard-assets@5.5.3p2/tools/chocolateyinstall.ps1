$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.5.5.3p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/f15b2772e4d0/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.3p2.exe'
$checksum64     = '71a4510ef15c066d9ce8ba75ba39259e7fa22630b1ae457085551ab7d24e05c5'

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
