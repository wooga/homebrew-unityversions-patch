$ErrorActionPreference = 'Stop';

$packageName        = 'unity@5.6.3p4'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/fbe8bd37d7fa/Windows64EditorInstaller/UnitySetup64-5.6.3p4.exe'
$checksum64         = '3b32e3600a772a6ce0d4e5119260a4bbd24bab89771b446eb2c63c93a383b221'

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
