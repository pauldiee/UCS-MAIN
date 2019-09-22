
#Set variables
$organization = "PAAS"
$ucscentral = "inf-cucc-0-01.infra.local"

#Connect to UCS Central
Connect-UcsCentral $ucscentral

#Create RD-CC-BOOT policy
Start-UcsCentralTransaction
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralBootPolicy -ModifyPresent  -BootMode "legacy" -Descr "" -EnforceVnicName "yes" -Name "RD-CC-BOOT" -RebootOnUpdate "yes"
$mo_2  = $mo_1  |  Add-UcsCentralLsbootVirtualMedia -ModifyPresent  -Access "read-only-remote" -LunId 0 -MappingName "" -Order 1
$mo_3  = $mo_1  |  Add-UcsCentralLsbootStorage -ModifyPresent  -Order 2
$mo_4  = $mo_3  |  Add-UcsCentralLsbootLocalStorage -ModifyPresent 
$mo_5  = $mo_4  |  Add-UcsCentralLsbootUsbFlashStorageImage -ModifyPresent  -Order 2
$mo_6  = $mo_1  |  Get-UcsCentralLsbootUpgradeStatus  |  Set-UcsCentralLsbootUpgradeStatus -LegacyToAdvancedBootOrderUpdate "yes"
Complete-UcsCentralTransaction

#Create AD-CC-BOOT policy
Start-UcsCentralTransaction
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralBootPolicy -ModifyPresent  -BootMode "legacy" -Descr "" -EnforceVnicName "yes" -Name "AD-CC-BOOT" -RebootOnUpdate "no"
$mo_2  = $mo_1  |  Add-UcsCentralLsbootLan -ModifyPresent  -Order 1 -Prot "pxe"
$mo_3  = $mo_2  |  Add-UcsCentralLsbootLanImagePath -ModifyPresent  -BootIpPolicyName "" -ISCSIVnicName "" -ImgPolicyName "" -ImgSecPolicyName "" -ProvSrvPolicyName "" -Type "primary" -VnicName "vmnic0" -XtraProperty @{IpAddrType="none"; }
$mo_4  = $mo_1  |  Add-UcsCentralLsbootStorage -ModifyPresent  -Order 2
$mo_5  = $mo_4  |  Add-UcsCentralLsbootLocalStorage -ModifyPresent 
$mo_6  = $mo_5  |  Add-UcsCentralLsbootUsbFlashStorageImage -ModifyPresent  -Order 2
Complete-UcsCentralTransaction