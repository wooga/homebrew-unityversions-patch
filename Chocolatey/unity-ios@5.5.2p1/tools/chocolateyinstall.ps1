$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.5.5.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/9360c5517afe/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.5.2p1.exe'
$checksum64     = '858011b8474d5f116d7de2f6766a74b42a20fb28f0856e66bb18014b358ee7a4'

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
