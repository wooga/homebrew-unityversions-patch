$ErrorActionPreference = 'Stop';

$packageName        = 'unity.2017.1.1p3'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/929150d2fa14/Windows64EditorInstaller/UnitySetup64-2017.1.1p3.exe'
$checksum64         = '4a14b1e7853ac2c5e5d6ee679a817e9a9517b93e8b9d89ebd3317ccb8a88ad57'

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
