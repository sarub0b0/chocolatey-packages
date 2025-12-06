$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.11.0/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'ce2e5ba43d0b818dc535c6cb11d789c0220fb220a1ffe546ddd0a1c144d02659'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
