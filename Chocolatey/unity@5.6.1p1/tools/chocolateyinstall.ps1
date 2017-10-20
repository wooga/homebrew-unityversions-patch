$ErrorActionPreference = 'Stop';

$packageName        = 'unity@5.6.1p1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/74c1f4917542/Windows64EditorInstaller/UnitySetup64-5.6.1p1.exe'
$checksum64         = 'dee9f99f0ff0dcca39b6677d1681508a0b70676271f702b699987083c1d9c0d2'

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
