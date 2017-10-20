$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.5.3p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/f15b2772e4d0/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.3p2.exe'
$checksum64     = '88e384b8998c36990b4cd948538707645067ac9b6789aa039caaf7ea8eca3f73'

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
