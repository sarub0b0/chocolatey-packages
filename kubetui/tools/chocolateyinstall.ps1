$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.5.0/kubetui-x86_64-pc-windows-msvc-rustls.exe'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64
