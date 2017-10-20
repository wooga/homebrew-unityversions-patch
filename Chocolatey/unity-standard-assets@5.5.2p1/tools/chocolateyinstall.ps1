$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.5.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/9360c5517afe/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.2p1.exe'
$checksum64     = '4f52a5c291f4ab1be670e29faa97cb186706a6636cc39d94978c02989402e2a1'

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
