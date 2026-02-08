$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.12.0/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'e424f6387a512f2b3ed1867cfe37066061335b96477dc46eccd4ad5952eedd0b'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
