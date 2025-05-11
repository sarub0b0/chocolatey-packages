$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.7.1/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '8ea573ba5d63893c869128144d56f6dc439a2e87295560c10586930cd3be92ed'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
