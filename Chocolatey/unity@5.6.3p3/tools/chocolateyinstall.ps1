$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.6.3p3'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/88d4ddf6344a/Windows64EditorInstaller/UnitySetup64-5.6.3p3.exe'
$checksum64         = '55f2c8c84a8865e98712883a29b3de6c9337e8603534cc38847f106d4cfadf24'

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
