$ErrorActionPreference = 'Stop';

$packageName        = 'unity@2017.1.1p4'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://beta.unity3d.com/download/4b0ddcd3f6ad/Windows64EditorInstaller/UnitySetup64-2017.1.1p4.exe'
$checksum64         = '2503c5e68f3eb353c406e57586b1332e6e16109e19457cd4c40d2098908c9984'

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
