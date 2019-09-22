#Set variables
$organization = "PAAS"
$ucscentral = "inf-cucc-0-01.infra.local"

#Connect to UCS Central
Connect-UcsCentral $ucscentral

#Create CC-MAINT policy
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralMaintenancePolicy -ModifyPresent  -DataDisr "user-ack" -Descr "" -Name "CC-MAINT" -SchedName "" -SoftShutdownTimer "never" -TriggerConfig "on-next-boot" -UptimeDisr "user-ack"