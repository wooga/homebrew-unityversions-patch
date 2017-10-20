$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@2017.1.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/c2ed782bb21e/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.2p1.exe'
$checksum64     = 'dbbd949ce406d0563e367b30d16b2cd352b883fb7e2761162fbc1ad9326d8bc5'

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
