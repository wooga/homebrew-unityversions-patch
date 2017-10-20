$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.5.6.3p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/fbe8bd37d7fa/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.6.3p4.exe'
$checksum64     = '76f4ca58bb4fbcc682b49084e4e16d2add9fe7534b8aca28734fa26173555810'

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
