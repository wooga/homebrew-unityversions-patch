$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl@5.6.3p3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/88d4ddf6344a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.6.3p3.exe'
$checksum64     = 'ef8a54a3af922d126192263cdcce648cef989445a8e3130e1525192739678215'

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
