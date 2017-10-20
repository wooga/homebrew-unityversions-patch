$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.2017.1.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/007fc09e806c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.1p1.exe'
$checksum64     = '6edbe6094eb00eadb0f3577c441fc02b10a19d23d432d060916ab3f23d639ab4'

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
