Connect-UcsCentral inf-cucc-0-01 -Credential (Get-Credential)
Start-UcsCentralTransaction
Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name "Meander" | Add-UcsCentralBootPolicy -BootMode "legacy" -EnforceVnicName "yes" -Name "RD-CC-BOOT-NEW2" -RebootOnUpdate "yes"
Get-UcsCentralBootPolicy RD-CC-BOOT-NEW2 | Add-UcsCentralLsbootVirtualMedia -Access "read-only-remote" -LunId 0 -MappingName "" -Order 1
Get-UcsCentralBootPolicy RD-CC-BOOT-NEW2 | Add-UcsCentralLsbootStorage -Order 2
Get-UcsCentralBootPolicy RD-CC-BOOT-NEW2 | Add-UcsCentralLsbootLocalStorage -LsbootStorage
Get-UcsCentralBootPolicy RD-CC-BOOT-NEW2 | Add-UcsCentralLsbootUsbFlashStorageImage -Order 2
Get-UcsCentralBootPolicy RD-CC-BOOT-NEW2 | Get-UcsCentralLsbootUpgradeStatus  |  Set-UcsCentralLsbootUpgradeStatus -LegacyToAdvancedBootOrderUpdate "no"
Complete-UcsCentralTransaction
Disconnect-UcsCentral