$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.5.6.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/74c1f4917542/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.6.1p1.exe'
$checksum64     = 'd9e86ed8bf21db4cdcb8019977acabc8e350b9e9d13a7fd6f40958d90b76abf8'

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
