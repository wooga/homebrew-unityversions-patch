$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.2017.1.1p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2017.1.1p4.exe'
$checksum64     = '7d4356613155964ca05e8fa0ea0f8283b3c347322fadd0d580fca740a6d598bf'

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
