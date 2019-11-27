
$ucscentral = "inf-cucc-0-01.infra.local"
$profilename = "*ls-llz-esxi-6*"

Connect-UcsCentral $ucscentral

#get vnic0 mac adresses
Get-UcsCentralServiceProfile | Get-UcsCentralVnic | Where-Object {$_.dn -like $profilename -and $_.dn -like "*vmnic0"} | Select-Object dn,addr | Export-Csv llz-mer2-vmnic0.csv

#get vhba wwpn adresses
Get-UcsCentralServiceProfile | Get-UcsCentralVhba | Where-Object {$_.dn -like $profilename -and $_.dn -like "*vhba*"} | Select-Object dn,Name,addr,Nodeaddr | Export-Csv E:\backup\exports\C1-01-Hosts-HBA-WWPN.csv
