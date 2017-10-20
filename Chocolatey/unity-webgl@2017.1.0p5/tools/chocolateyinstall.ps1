$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.2017.1.0p5'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/de463fc61bac/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.0p5.exe'
$checksum64     = '3a13f823239a7956e928cfdd9dd00b6c1dbef4f0868aceb13d8efee6dc5c9385'

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
