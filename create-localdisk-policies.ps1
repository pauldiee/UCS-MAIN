#Set variables
$organization = "PAAS"
$ucscentral = "inf-cucc-0-01.infra.local"

#Connect to UCS Central
Connect-UcsCentral $ucscentral

#Create CC-LOCALDISK policy
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralLocalDiskConfigPolicy -ModifyPresent  -Descr "" -FlexFlashRAIDReportingState "disable" -FlexFlashState "disable" -Mode "no-raid" -Name "CC-LOCALDISK" -ProtectConfig "yes"

#Create CC-FLEX-FLASH policy
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralLocalDiskConfigPolicy -ModifyPresent  -Descr "" -FlexFlashRAIDReportingState "enable" -FlexFlashState "enable" -Mode "any-configuration" -Name "CC-FLEX-FLASH" -ProtectConfig "yes"