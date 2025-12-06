$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.10.2/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '29fdde52d152ade7e466bd439a5f1f12628ccf7a37b929024cc28b9ac1180c3c'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
