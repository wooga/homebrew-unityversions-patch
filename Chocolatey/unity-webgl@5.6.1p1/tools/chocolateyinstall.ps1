$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl.5.6.1p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/74c1f4917542/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.6.1p1.exe'
$checksum64     = '1a7d7f624ebcfd66e6fe6906a73e8af0fd5d6202368d30f3a5dd3d48a804f8bc'

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
