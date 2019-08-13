$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://app.prntscr.com/build/setup-lightshot.exe'

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir
    fileType       = 'exe'
    url            = $url

    softwareName   = 'lightshot.install*'

    checksum       = 'ACDFBB45BFED06F1BC92888D5D1A36CE'
    checksumType   = 'md5'

    validExitCodes = @(0, 3010, 1641)
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs