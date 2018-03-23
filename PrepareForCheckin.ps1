$FileExists = Test-Path Windows10Professional.json.tmp
if ($FileExists -eq $False) {
  Copy-Item Windows10Professional.json -Destination Windows10Professional.json.tmp
}

(Get-Content Windows10Professional.json) -replace '"cloud_token": "(.*)"', '"cloud_token": "<place your vagrant cloud key here>"' | Out-File Windows10Professional.json

$FileExists = Test-Path answer_files\Windows10Professional1709Dec\Autounattend.xml.tmp
if ($FileExists -eq $False) {
  Copy-Item answer_files\Windows10Professional1709Dec\Autounattend.xml -Destination answer_files\Windows10Professional1709Dec\Autounattend.xml.tmp
}

(Get-Content answer_files\Windows10Professional1709Dec\Autounattend.xml) -replace '<Key>([A-Z0-9]*)-([A-Z0-9]*)-([A-Z0-9]*)-([A-Z0-9]*)-([A-Z0-9]*)<\/Key>', '<Key>PLACE YOUR PERSONAL WINDOWS 10 PROFESSIONAL KEY HERE</Key>' | Out-File answer_files\Windows10Professional1709Dec\Autounattend.xml


