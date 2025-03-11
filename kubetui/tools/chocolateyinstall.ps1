$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.6.2/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'b78e3053a6e146b3e164a3893c7c14b33e5aaf455d7b3f0514a4378b944c4f5b'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
