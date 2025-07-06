$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.9.0/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = '0bad1630f642175cc96ad664c8d2eaa5f91d1e8856f3d5ecc53d3320d68622a8'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
