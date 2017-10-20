$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.5.5.3p2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/f15b2772e4d0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.5.3p2.exe'
$checksum64     = 'c7aa9d6c8c3f5cced147cd0a83d39dba19409750fdc82cb5f4bb3c18fb7bfaea'

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
