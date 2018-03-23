$FileExists = Test-Path Windows10Professional.json.tmp
if ($FileExists -eq $True) {
  Move-Item Windows10Professional.json.tmp -Force -Destination Windows10Professional.json
}

$FileExists = Test-Path answer_files\Windows10Professional1709Dec\Autounattend.xml.tmp
if ($FileExists -eq $True) {
  Move-Item answer_files\Windows10Professional1709Dec\Autounattend.xml.tmp -Force -Destination answer_files\Windows10Professional1709Dec\Autounattend.xml
}


