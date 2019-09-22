#Set variables
$organization = "PAAS"
$ucscentral = "inf-cucc-0-01.infra.local"

#Connect to UCS Central
Connect-UcsCentral $ucscentral

#Create CC-SCRUB policy
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralScrubPolicy -ModifyPresent  -BiosSettingsScrub "no" -Descr "" -DiskScrub "no" -FlexFlashScrub "yes" -Name "CC-SCRUB"

#Create CC-NOSCRUB policy
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralScrubPolicy -ModifyPresent  -BiosSettingsScrub "no" -Descr "" -DiskScrub "no" -FlexFlashScrub "no" -Name "CC-NOSCRUB"