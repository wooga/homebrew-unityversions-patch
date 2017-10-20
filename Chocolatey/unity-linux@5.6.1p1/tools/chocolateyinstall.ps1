$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.5.6.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/74c1f4917542/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.6.1p1.exe'
$checksum64     = '1829af7c6dec89b7a29129eace3e91a1599cc12f5712ffa173572939cec79ded'

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
