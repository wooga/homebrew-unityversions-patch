$ErrorActionPreference = 'Stop';

$packageName        = 'unity.2017.1.0p5'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/de463fc61bac/Windows64EditorInstaller/UnitySetup64-2017.1.0p5.exe'
$checksum64         = '05319f356c707b52ebee18778d6b3dc3b0c40b262c396345362e040fcb438c88'

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
