$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.9.1/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'c462de96fe82d21ec54997c65c79e9542d28477fe1bfe29ae84975bbaf9b2146'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
