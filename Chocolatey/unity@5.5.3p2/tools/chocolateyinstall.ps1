$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.5.3p2'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/f15b2772e4d0/Windows64EditorInstaller/UnitySetup64-5.5.3p2.exe'
$checksum64         = '9c01f01c5fd819748ddb7afd4347c09391ef7e78a9454e7f2023b8c5f2c89eb6'

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
