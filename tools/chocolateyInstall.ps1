$ErrorActionPreference = 'Stop';

$packageName= 'veracrypt'
$toolsDir   = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url        = 'https://launchpad.net/veracrypt/trunk/1.25.9/+download/VeraCrypt_Setup_x64_1.25.9.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  url           = $url

  silentArgs = 'ACCEPTLICENSE=YES /qn'

  softwareName  = 'VeraCrypt*'
  checksum      = '206d31c2ed1a2b0390d4dfa12e74a9b9dae88658d1f9bfa1bb433b23e2b24fd8'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
