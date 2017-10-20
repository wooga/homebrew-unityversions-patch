$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.6.0p2'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/bbd5ca01a0ea/Windows64EditorInstaller/UnitySetup64-5.6.0p2.exe'
$checksum64         = '586c2e6d9f479aec8a807dc976eb09e867c8c4192274876a6e460a9f457af2d1'

$args = '/S'

$pp = Get-PackageParameters
if ($pp.InstallationPath) {
    $args += " /D=$($pp.InstallationPath)"
    Write-Host "Param: Installing to $($pp.InstallationPath)"
}

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Unity'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
