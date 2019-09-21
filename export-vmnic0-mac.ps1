
$ucscentral = "inf-cucc-0-01.infra.local"
$profilename = "*ls-llz-esxi-6*"

Connect-UcsCentral $ucscentral

Get-UcsCentralServiceProfile | Get-UcsCentralVnic | Where-Object {$_.dn -like $profilename -and $_.dn -like "*vmnic0"} | Select-Object dn,addr | Export-Csv llz-mer2-vmnic0.csv
