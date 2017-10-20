$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.5.5.3p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/f15b2772e4d0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.5.3p2.exe'
$checksum64     = '27f2421aea6998f2d9045cd0c399d3e6d43dc7c6338227b5b5573fc7fc24fbbb'

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
