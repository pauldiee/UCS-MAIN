####
# script vereist het ucs inventory script en vraagt om credentials tijdens uitvoer
####

cd $PSScriptRoot

# Globale variabelen
$FileDir = "$($PSScriptRoot)"
$smtpserver = "SMTPSERVER"
$emailrecipient = "MAILADRESONTVANGER"
$emailfrom = "MAILADRESVERZENDER"
$script = "$($PSScriptRoot)\UCS-Inventory-Script.ps1"

# Controleren en aanmaken van input voor uitvoeren van script op meerdere Domains.

if (Test-Path .\UCSINPUT.csv) {
    $exists = $true
} else {
    $exists = $false
}

if ($exists) {
    Get-Content .\UCSINPUT.csv
    $check = Read-Host "Is this correct? y = ja, n = nee"
    if ($check -eq "n") {
        $check = "y"
        $checkfile = Read-Host "Start over fresh? y = ja, n = nee"
    }
} 
if ($check -eq "y") {
    $check = "n"
    $checkfile = "n"
}

if ($checkfile -eq "y") {
    $header = "IPADRES;FILENAME"
    Tee-Object -InputObject $header .\UCSINPUT.csv
}

if ($exists -eq $false) {
    $header = "IPADRES;FILENAME"
    Tee-Object -InputObject $header .\UCSINPUT.csv
    $check = "y"
}

if ($check -eq "y") {
    while ($Check -eq "y"){
        $ip = Read-Host "Enter ip"
        $filename = Read-Host "Enter filename"
    
        $string = "$($ip);$($filename)"
        Tee-Object -InputObject $string .\UCSINPUT.csv -Append
    
        #write-host $check
        $check = Read-Host "Nog een? zo ja: Y zo nee: N"        
    } # End while ($Check="y"){
}

# Importeren CSV met alle invoer regels
$tables = Import-csv .\UCSINPUT.csv -Delimiter ";"

# Uitvoeren Script
foreach ($row in $tables){
    Write-Host Connecting to $row.IPADRES
    &  $script -UCSM $row.IPADRES -OutFile "$($FileDir)\$($row.FILENAME)"
    Write-Host Sending Report as email to $emailrecipient
    Send-MailMessage -From $emailfrom -To $emailrecipient -Subject "UCS Inventory of $($row.IPADRES)" -Attachments "$($FileDir)\$($row.FILENAME)" -SmtpServer $smtpserver
}

# Einde Script