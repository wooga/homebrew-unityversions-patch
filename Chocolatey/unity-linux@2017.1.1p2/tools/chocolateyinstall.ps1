$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux@2017.1.1p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/b8e3f2d6c409/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.1p2.exe'
$checksum64     = '550980b9601fcbba543ec11edb8524249020b4bb357d038287ac8de8fd346e47'

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
