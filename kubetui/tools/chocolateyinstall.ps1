$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.5.3/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '46578baacd92ec83dca54d271f8fc8d06b558310ed3ae24f9f67594b4e2d0918'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
