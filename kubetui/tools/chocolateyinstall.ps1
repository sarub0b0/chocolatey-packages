$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.10.0/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '6982a462c3b363b460054ce1b05ed455c96589a9fa3df7cdbbe10ff81e8a9dd6'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
