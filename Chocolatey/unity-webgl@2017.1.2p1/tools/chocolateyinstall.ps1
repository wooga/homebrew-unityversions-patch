$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl@2017.1.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/c2ed782bb21e/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.2p1.exe'
$checksum64     = '3224c68dbd3f5757ef0722d222996bc8ee1cae869c8acf29c0623401305e9e63'

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
