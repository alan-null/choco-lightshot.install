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

    checksum       = '1B6D1F252704D9911478803E4FB195B7'
    checksumType   = 'md5'
    checksum64     = '1B6D1F252704D9911478803E4FB195B7'
    checksumType64 = 'md5'

    validExitCodes = @(0, 3010, 1641)
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs