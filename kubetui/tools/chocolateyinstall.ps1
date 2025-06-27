$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.8.1/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'ba38273beed61cf5704fe9e4bb390ea40a4e6384fbf13d8b691f39d49be9f624'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
