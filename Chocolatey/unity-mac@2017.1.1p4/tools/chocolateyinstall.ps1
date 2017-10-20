$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@2017.1.1p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.1p4.exe'
$checksum64     = '92b296ed27cec0987b2135d84e31d32d73db0f06144fb248f374a0ccdd6a2e57'

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
