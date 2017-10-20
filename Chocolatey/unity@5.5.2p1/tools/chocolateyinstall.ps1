$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.5.2p1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/9360c5517afe/Windows64EditorInstaller/UnitySetup64-5.5.2p1.exe'
$checksum64         = 'a253a3c4db1d2c1530669a518f38d3a6fd840ae36a68ba928f75732e33eb3172'

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
