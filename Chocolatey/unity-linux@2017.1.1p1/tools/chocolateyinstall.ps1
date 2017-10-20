$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.2017.1.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/007fc09e806c/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2017.1.1p1.exe'
$checksum64     = '719a5df309c66fc9302482adbd1753c528bc4da4783026582c84ef09b096c7c0'

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
