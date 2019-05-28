Connect-UcsCentral inf-cucc-0-01 -Credential (Get-Credential)
Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name "Meander" | Add-UcsCentralBiosPolicy -Name RD-CC-BIOS -RebootOnUpdate true
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosTurboBoost -VpIntelTurboBoostTech "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosEnhancedIntelSpeedStep -VpEnhancedIntelSpeedStepTech "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosHyperThreading -VpIntelHyperThreadingTech "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfCoreMultiProcessing -VpCoreMultiProcessing "all" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosExecuteDisabledBit -VpExecuteDisableBit "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfIntelVirtualizationTechnology -VpIntelVirtualizationTechnology "disabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfDirectCacheAccess -VpDirectCacheAccess "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfProcessorCState -VpProcessorCState "disabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfProcessorC1E -VpProcessorC1E "disabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfProcessorC3Report -VpProcessorC3Report "disabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfProcessorC6Report -VpProcessorC6Report "disabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfProcessorC7Report -VpProcessorC7Report "disabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfCPUPerformance -VpCPUPerformance "enterprise" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosIntelDirectedIO -VpIntelVTForDirectedIO "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosVfSelectMemoryRASConfiguration -VpSelectMemoryRASConfiguration "maximum-performance" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosNUMA -VpNUMAOptimized "enabled" -Force
Get-UcsCentralBiosPolicy RD-TEST2 | Set-UcsCentralBiosLvDdrMode -VpLvDDRMode "performance-mode" -Force
Disconnect-UcsCentral