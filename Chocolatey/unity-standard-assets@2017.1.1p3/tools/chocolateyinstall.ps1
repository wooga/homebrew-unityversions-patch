$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@2017.1.1p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/929150d2fa14/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.1p3.exe'
$checksum64     = 'c3cd1f0f2ee44db34b05ec2af329c8576f231372052977ba62f931e474b03d02'

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
