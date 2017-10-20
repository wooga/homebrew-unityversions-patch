$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux@5.6.0p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/bbd5ca01a0ea/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.6.0p2.exe'
$checksum64     = '3bdd4a38a4c9d8089657b3dd878279cde9ec97c7fce8f1db83b683c70592539d'

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
