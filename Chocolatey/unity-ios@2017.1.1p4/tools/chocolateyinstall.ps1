$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.2017.1.1p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.1.1p4.exe'
$checksum64     = 'd2f794f3cd7c630a328a5dcb3afe0f75193b656fa87a69fed28531aa69f4bc8b'

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
