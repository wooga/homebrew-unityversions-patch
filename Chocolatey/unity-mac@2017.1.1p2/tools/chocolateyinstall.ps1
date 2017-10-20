$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@2017.1.1p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/b8e3f2d6c409/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.1p2.exe'
$checksum64     = '30dc2bb6e02bdca9d3cb69168967987adb3f1615dc45c324f1e1939334f2bce2'

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
