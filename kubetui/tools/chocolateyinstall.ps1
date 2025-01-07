$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.6.0/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '2d4a17e1cc552979ddabef55d56be11d05d2a6b299a542c959e471b2871ed223'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
