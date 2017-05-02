$checksum = '424E43F67FE96E3DFC1BEE16288856FDE920AD7AE761EC9AF51E37FF11183760'
$checksum64 = 'A242D8A28FBFF39E4F28E607BEC4E3972D1E3B9675AC28A9314757138BB9F1B6'
$url = 'https://github.com/erikvanbrakel/terraform-provider-sumologic/releases/download/v0.2.1/windows-386.zip'
$url64bit = 'https://github.com/erikvanbrakel/terraform-provider-sumologic/releases/download/v0.2.1/windows-amd64.zip'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "terraform-provider-sumologic" -Url "$url" -UnzipLocation "$unzipLocation" -Url64 "$url64bit" -ChecksumType 'sha256' -Checksum "$checksum" -Checksum64 "$checksum64"
