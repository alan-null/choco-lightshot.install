$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://app.prntscr.com/build/setup-lightshot.exe'
$url64 = 'https://app.prntscr.com/build/setup-lightshot.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir
    fileType       = 'exe'
    url            = $url
    url64bit       = $url64

    softwareName   = 'lightshot.install*'

    checksum       = 'ACDFBB45BFED06F1BC92888D5D1A36CE'
    checksumType   = 'md5'
    checksum64     = 'ACDFBB45BFED06F1BC92888D5D1A36CE'
    checksumType64 = 'md5'

    validExitCodes = @(0, 3010, 1641)
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs