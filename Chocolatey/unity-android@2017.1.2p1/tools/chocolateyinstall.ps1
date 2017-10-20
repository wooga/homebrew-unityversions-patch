$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@2017.1.2p1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://beta.unity3d.com/download/c2ed782bb21e/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.2p1.exe'
$checksum64     = '8462961276a0cc3bbdf455edc47b02474c0af54e9ec8e186e477693123f3fb16'

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
