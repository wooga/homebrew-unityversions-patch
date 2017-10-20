$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.6.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/74c1f4917542/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.1p1.exe'
$checksum64     = 'dde5e900b890ec18d3741f85d6f14cffc08f2fbe7bf9f7220c076ebe19dd0d4f'

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
