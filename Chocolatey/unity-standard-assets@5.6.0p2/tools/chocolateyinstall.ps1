$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.6.0p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/bbd5ca01a0ea/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.0p2.exe'
$checksum64     = 'a588f8cafc686cc10e6e5f7634be98ac26ff78da10e83d9a06604faaefaab5a3'

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
