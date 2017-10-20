$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.6.3p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/fbe8bd37d7fa/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.3p4.exe'
$checksum64     = '5ef3759c4c1357e454c27746a36204e8b87dbbf06b72ee85f419480bdc2666f9'

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
