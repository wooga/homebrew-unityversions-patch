$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.3p4'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/fbe8bd37d7fa/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.3p4.exe'
$checksum64     = '3ebbc66e2ee757e03d7d379c43e1499f8e898207d695d68e8acecc4abfe431c4'

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
