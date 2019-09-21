 <#
=============================================================================================================
Script:    		    create-vlans.ps1
Date:      		    September, 2019
Create By:          Paul van Dieën
Last Edited by:	    Paul van Dieën
Last Edited Date:   18-09-2019
Requirements:		POSH-SSH Module installed
                    Powershell Framework 5.1
                    Cisco.UCSCentral 2.2.1.8
=============================================================================================================
.DESCRIPTION
This script adds vlans to UCS Central based on input from csv file.
#>
 $ucscentral = "inf-cucc-0-01.infra.local"
 
 #connect to ucs central
 Connect-UcsCentral $ucscentral

if ((Test-Path .\vlan.csv)){
    $vlans = Import-CSV ".\vlan.csv"
    Foreach ($vlan in $vlans){
        Get-UcsCentralOrgDomainGroup -Name RHG |Get-UcsCentralFabricEp |Get-UcsCentralLanCloud | Add-UcsCentralVlan -Id $vlan.id -Name $vlan.name
        Get-UcsCentralorg -Name RHG | Add-UcsCentralFabricVlanReq -Name $vlan.name
    }
}

Disconnect-UcsCentral $ucscentral