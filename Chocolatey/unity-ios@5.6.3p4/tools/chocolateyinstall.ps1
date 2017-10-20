$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios.5.6.3p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/fbe8bd37d7fa/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.6.3p4.exe'
$checksum64     = '77b44e17474e3c80400922aa56741df51077dc265b9e53c5ec835d449c56bffb'

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
