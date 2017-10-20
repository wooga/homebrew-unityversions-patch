$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.5.6.3p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/fbe8bd37d7fa/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.6.3p4.exe'
$checksum64     = '059f69c385b470428aed7590436ad585d9924c9fed67c7e80b5e6c034212a10e'

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
