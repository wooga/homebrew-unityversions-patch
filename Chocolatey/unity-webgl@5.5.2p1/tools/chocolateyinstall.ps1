$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.5.5.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/9360c5517afe/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.5.2p1.exe'
$checksum64     = '967d51c2dbfed44a32e380f6b51040ae65f959bae42f2f82c22d82c6dcb7eb34'

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
