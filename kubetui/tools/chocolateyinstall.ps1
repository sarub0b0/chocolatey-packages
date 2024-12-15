$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/sarub0b0/kubetui/releases/download/v1.5.4/kubetui-x86_64-pc-windows-msvc.exe'

$checksum = 'ccccb55fef7463eb4d09b5d9ed3149ca0e4ec508d8e8ba566bd9eda221978b11'

Get-ChocolateyWebFile $packageName "$toolsDir\kubetui.exe" $url $url64 -Checksum $checksum -ChecksumType 'SHA256'
