<#
=============================================================================================================
Script:    		    Start-UCSInventory.ps1
Date:      		    June, 2019
By:        		    Paul van Dieen
Last Edited by:	    Paul van Dieen
Last Edited Date:   04-06-2019
Requirements:		UCS Powertool and UCS-Inventory-Script.ps1
=============================================================================================================
.DESCRIPTION
With this script you can start the UCS Domain export all to html for multiple UCSM Domains.
#>

$WorkingDir = split-path -parent $PSCommandPath
Set-Location -Path $WorkingDir

# Globale variabelen
$FileDir = $WorkingDir
$smtpserver = "SMTPSERVER"
$emailrecipient = "MAILADRESONTVANGER"
$emailfrom = "MAILADRESVERZENDER"
$script = "$($WorkingDir)\UCS-Inventory-Script.ps1"

#Collect information for input file.

if (Test-Path .\UCSINPUT.csv) {
    $exists = $true
} else{
    $exists = $false
}

if ($exists) {
    Get-Content .\UCSINPUT.csv
    $check = Read-Host "Is this correct? Y = Yes, N = No"
    if ($check -eq "N") {
        $check = "Y"
        $checkfile = Read-Host "Start over fresh? Y = Yes, N = No"
    } else {
        $check = "N"
        $checkfile = "N"
    }
}

if ($checkfile -eq "Y" -or $exists -eq $false) {
    $header = "UCS Manager IP,Outfile,Username,Encrypted Password"
    Tee-Object -InputObject $header .\UCSINPUT.csv
    $check = "Y"
}

if ($check -eq "Y") {
    while ($check -eq "Y"){
        $ip = Read-Host "Enter ip"
        $filename = Read-Host "Enter filename"
        $username = Read-Host "Please enter your username"
        $PlainPassword = Read-Host "Please enter your password"
        $SecurePassword = $PlainPassword | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString
        
        $string = "$($ip),$($filename).html,$($username),$($SecurePassword)"
        Tee-Object -InputObject $string .\UCSINPUT.csv -Append | Out-Null
    
        #write-host $check
        $check = Read-Host "Add another UCSM Domain? Y = Yes, N = No"
    } # End while ($Check="y"){
}
# Uitvoeren Script
&  $script -CSVFile .\UCSINPUT.csv

#if ($smtpserver -ne "SMTPSERVER"){ NEEDS WORK
#    Write-Host Sending Report as email to $emailrecipient
#    Send-MailMessage -From $emailfrom -To $emailrecipient -Subject "UCS Inventory of $($row.IPADRES)" -Attachments "$($FileDir)\$($row.FILENAME)" -SmtpServer $smtpserver
#}
# Einde Script