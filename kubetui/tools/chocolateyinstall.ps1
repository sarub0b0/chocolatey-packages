$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.10.1/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'e95720fda6d23e0cd97c17736c7d5a3a20fc0df11e25ee87bf8c73f3cfcc07b2'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
