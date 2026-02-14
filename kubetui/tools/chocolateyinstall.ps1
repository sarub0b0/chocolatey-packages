$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.12.1/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '11a53a52a011cdd871f48251e34f0e689a96f0db803bc081106c68e8a4e10f95'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
