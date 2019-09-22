# DOES NOT WORK!
#Set variables
$organization = "PAAS"
$ucscentral = "inf-cucc-0-01.infra.local"

#Connect to UCS Central
Connect-UcsCentral $ucscentral

Start-UcsCentralTransaction
$mo_1  = Get-UcsCentralOrg -Level root | Get-UcsCentralOrg -Name $organization -LimitScope | Add-UcsCentralBiosPolicy -ModifyPresent  -Descr "" -Name "CC-BIOS" -RebootOnUpdate "yes"
$mo_2  = $mo_1  |  Get-UcsCentralBiosVfACPI10Support  |  Set-UcsCentralBiosVfACPI10Support -VpACPI10Support "platform-default"
$mo_3  = $mo_1  |  Get-UcsCentralBiosVfAllUSBDevices  |  Set-UcsCentralBiosVfAllUSBDevices -VpAllUSBDevices "platform-default"
$mo_4  = $mo_1  |  Get-UcsCentralBiosVfAltitude  |  Set-UcsCentralBiosVfAltitude -VpAltitude "platform-default"
$mo_5  = $mo_1  |  Get-UcsCentralBiosVfASPMSupport  |  Set-UcsCentralBiosVfASPMSupport -VpASPMSupport "platform-default"
$mo_6  = $mo_1  |  Get-UcsCentralBiosVfAssertNMIOnPERR  |  Set-UcsCentralBiosVfAssertNMIOnPERR -VpAssertNMIOnPERR "platform-default"
$mo_7  = $mo_1  |  Get-UcsCentralBiosVfAssertNMIOnSERR  |  Set-UcsCentralBiosVfAssertNMIOnSERR -VpAssertNMIOnSERR "platform-default"
$mo_8  = $mo_1  |  Get-UcsCentralBiosVfBootOptionRetry  |  Set-UcsCentralBiosVfBootOptionRetry -VpBootOptionRetry "platform-default"
$mo_9  = $mo_1  |  Get-UcsCentralBiosVfConsistentDeviceNameControl  |  Set-UcsCentralBiosVfConsistentDeviceNameControl -VpCDNControl "platform-default"
$mo_10  = $mo_1  |  Get-UcsCentralBiosVfConsoleRedirection  |  Set-UcsCentralBiosVfConsoleRedirection -VpBaudRate "platform-default" -VpConsoleRedirection "platform-default" -VpFlowControl "platform-default" -VpLegacyOSRedirection "platform-default" -VpPuttyKeyPad "platform-default" -VpTerminalType "platform-default"
$mo_11  = $mo_1  |  Get-UcsCentralBiosVfCoreMultiProcessing  |  Set-UcsCentralBiosVfCoreMultiProcessing -VpCoreMultiProcessing "all"
$mo_12  = $mo_1  |  Get-UcsCentralBiosVfCPUHardwarePowerManagement  |  Set-UcsCentralManagedObject -PropertyMap @{VpCPUHardwarePowerManagement="platform-default"; }
$mo_13  = $mo_1  |  Get-UcsCentralBiosVfCPUPerformance  |  Set-UcsCentralBiosVfCPUPerformance -VpCPUPerformance "enterprise"
$mo_14  = $mo_1  |  Get-UcsCentralBiosVfCPUPowerManagement  |  Set-UcsCentralBiosVfCPUPowerManagement -VpCPUPowerManagement "custom"
$mo_15  = $mo_1  |  Get-UcsCentralBiosVfDDR3VoltageSelection  |  Set-UcsCentralBiosVfDDR3VoltageSelection -VpDDR3VoltageSelection "platform-default"
$mo_16  = $mo_1  |  Get-UcsCentralBiosVfDirectCacheAccess  |  Set-UcsCentralBiosVfDirectCacheAccess -VpDirectCacheAccess "enabled"
$mo_17  = $mo_1  |  Get-UcsCentralBiosVfDRAMClockThrottling  |  Set-UcsCentralBiosVfDRAMClockThrottling -VpDRAMClockThrottling "platform-default"
$mo_18  = $mo_1  |  Get-UcsCentralBiosVfDramRefreshRate  |  Set-UcsCentralBiosVfDramRefreshRate -VpDramRefreshRate "platform-default"
$mo_19  = $mo_1  |  Get-UcsCentralBiosVfEnergyPerformanceTuning  |  Set-UcsCentralBiosVfEnergyPerformanceTuning -VpPwrPerfTuning "platform-default"
$mo_20  = $mo_1  |  Get-UcsCentralBiosEnhancedIntelSpeedStep  |  Set-UcsCentralBiosEnhancedIntelSpeedStep -VpEnhancedIntelSpeedStepTech "enabled"
$mo_21  = $mo_1  |  Get-UcsCentralBiosVfEnhancedPowerCappingSupport  |  Set-UcsCentralBiosVfEnhancedPowerCappingSupport -VpEnhancedPowerCapping "platform-default"
$mo_22  = $mo_1  |  Get-UcsCentralBiosExecuteDisabledBit  |  Set-UcsCentralBiosExecuteDisabledBit -VpExecuteDisableBit "enabled"
$mo_23  = $mo_1  |  Get-UcsCentralBiosVfFRB2Timer  |  Set-UcsCentralBiosVfFRB2Timer -VpFRB2Timer "platform-default"
$mo_24  = $mo_1  |  Get-UcsCentralBiosVfFrequencyFloorOverride  |  Set-UcsCentralBiosVfFrequencyFloorOverride -VpFrequencyFloorOverride "platform-default"
$mo_25  = $mo_1  |  Get-UcsCentralBiosVfFrontPanelLockout  |  Set-UcsCentralBiosVfFrontPanelLockout -VpFrontPanelLockout "platform-default"
$mo_26  = $mo_1  |  Get-UcsCentralBiosVfIntegratedGraphics  |  Set-UcsCentralManagedObject -PropertyMap @{VpIntegratedGraphics="platform-default"; }
$mo_27  = $mo_1  |  Get-UcsCentralBiosVfIntegratedGraphicsApertureSize  |  Set-UcsCentralManagedObject -PropertyMap @{VpIntegratedGraphicsApertureSize="platform-default"; }
$mo_28  = $mo_1  |  Get-UcsCentralBiosVfIntelEntrySASRAIDModule  |  Set-UcsCentralBiosVfIntelEntrySASRAIDModule -VpSASRAID "platform-default" -VpSASRAIDModule "platform-default"
$mo_29  = $mo_1  |  Get-UcsCentralBiosHyperThreading  |  Set-UcsCentralBiosHyperThreading -VpIntelHyperThreadingTech "enabled"
$mo_30  = $mo_1  |  Get-UcsCentralBiosVfIntelTrustedExecutionTechnology  |  Set-UcsCentralBiosVfIntelTrustedExecutionTechnology -VpIntelTrustedExecutionTechnologySupport "platform-default"
$mo_31  = $mo_1  |  Get-UcsCentralBiosTurboBoost  |  Set-UcsCentralBiosTurboBoost -VpIntelTurboBoostTech "enabled"
$mo_32  = $mo_1  |  Get-UcsCentralBiosVfIntelVirtualizationTechnology  |  Set-UcsCentralBiosVfIntelVirtualizationTechnology -VpIntelVirtualizationTechnology "enabled"
$mo_33  = $mo_1  |  Get-UcsCentralBiosIntelDirectedIO  |  Set-UcsCentralBiosIntelDirectedIO -VpIntelVTDATSSupport "platform-default" -VpIntelVTDCoherencySupport "platform-default" -VpIntelVTDInterruptRemapping "platform-default" -VpIntelVTDPassThroughDMASupport "platform-default" -VpIntelVTForDirectedIO "enabled"
$mo_34  = $mo_1  |  Get-UcsCentralBiosVfInterleaveConfiguration  |  Set-UcsCentralBiosVfInterleaveConfiguration -VpChannelInterleaving "platform-default" -VpMemoryInterleaving "platform-default" -VpRankInterleaving "platform-default"
$mo_35  = $mo_1  |  Get-UcsCentralBiosVfIOEMezz1OptionROM  |  Set-UcsCentralBiosVfIOEMezz1OptionROM -VpIOEMezz1OptionROM "platform-default"
$mo_36  = $mo_1  |  Get-UcsCentralBiosVfIOENVMe1OptionROM  |  Set-UcsCentralBiosVfIOENVMe1OptionROM -VpIOENVMe1OptionROM "platform-default"
$mo_37  = $mo_1  |  Get-UcsCentralBiosVfIOENVMe2OptionROM  |  Set-UcsCentralBiosVfIOENVMe2OptionROM -VpIOENVMe2OptionROM "platform-default"
$mo_38  = $mo_1  |  Get-UcsCentralBiosVfIOESlot1OptionROM  |  Set-UcsCentralBiosVfIOESlot1OptionROM -VpIOESlot1OptionROM "platform-default"
$mo_39  = $mo_1  |  Get-UcsCentralBiosVfIOESlot2OptionROM  |  Set-UcsCentralBiosVfIOESlot2OptionROM -VpIOESlot2OptionROM "platform-default"
$mo_40  = $mo_1  |  Get-UcsCentralBiosVfLocalX2Apic  |  Set-UcsCentralBiosVfLocalX2Apic -VpLocalX2Apic "platform-default"
$mo_41  = $mo_1  |  Get-UcsCentralBiosLvDdrMode  |  Set-UcsCentralBiosLvDdrMode -VpLvDDRMode "performance-mode"
$mo_42  = $mo_1  |  Get-UcsCentralBiosVfMaximumMemoryBelow4GB  |  Set-UcsCentralBiosVfMaximumMemoryBelow4GB -VpMaximumMemoryBelow4GB "platform-default"
$mo_43  = $mo_1  |  Get-UcsCentralBiosVfMaxVariableMTRRSetting  |  Set-UcsCentralBiosVfMaxVariableMTRRSetting -VpProcessorMtrr "platform-default"
$mo_44  = $mo_1  |  Get-UcsCentralBiosVfMemoryMappedIOAbove4GB  |  Set-UcsCentralBiosVfMemoryMappedIOAbove4GB -VpMemoryMappedIOAbove4GB "platform-default"
$mo_45  = $mo_1  |  Get-UcsCentralBiosVfMirroringMode  |  Set-UcsCentralBiosVfMirroringMode -VpMirroringMode "platform-default"
$mo_46  = $mo_1  |  Get-UcsCentralBiosNUMA  |  Set-UcsCentralBiosNUMA -VpNUMAOptimized "enabled"
$mo_47  = $mo_1  |  Get-UcsCentralBiosVfOnboardGraphics  |  Set-UcsCentralManagedObject -PropertyMap @{VpOnboardGraphics="platform-default"; }
$mo_48  = $mo_1  |  Get-UcsCentralBiosVfOnboardSATAController  |  Set-UcsCentralBiosVfOnboardSATAController -VpOnboardSATAController "platform-default" -VpSATAMode "platform-default"
$mo_49  = $mo_1  |  Get-UcsCentralBiosVfOnboardStorage  |  Set-UcsCentralBiosVfOnboardStorage -VpOnboardSCUStorageSupport "platform-default"
$mo_50  = $mo_1  |  Get-UcsCentralBiosVfOptionROMEnable  |  Set-UcsCentralBiosVfOptionROMEnable -VpState "platform-default"
$mo_51  = $mo_1  |  Get-UcsCentralBiosVfOptionROMLoad  |  Set-UcsCentralBiosVfOptionROMLoad -VpLoad "platform-default"
$mo_52  = $mo_1  |  Get-UcsCentralBiosVfOSBootWatchdogTimer  |  Set-UcsCentralBiosVfOSBootWatchdogTimer -VpOSBootWatchdogTimer "platform-default"
$mo_53  = $mo_1  |  Get-UcsCentralBiosOSBootWatchdogTimerTimeoutPolicy  |  Set-UcsCentralBiosOSBootWatchdogTimerTimeoutPolicy -VpOSBootWatchdogTimerPolicy "platform-default"
$mo_54  = $mo_1  |  Get-UcsCentralBiosVfOSBootWatchdogTimerTimeout  |  Set-UcsCentralBiosVfOSBootWatchdogTimerTimeout -VpOSBootWatchdogTimerTimeout "platform-default"
$mo_55  = $mo_1  |  Get-UcsCentralBiosVfOutOfBandManagement  |  Set-UcsCentralBiosVfOutOfBandManagement -VpComSpcrEnable "platform-default"
$mo_56  = $mo_1  |  Get-UcsCentralBiosVfPackageCStateLimit  |  Set-UcsCentralBiosVfPackageCStateLimit -VpPackageCStateLimit "platform-default"
$mo_57  = $mo_1  |  Get-UcsCentralBiosVfPCHSATAMode  |  Set-UcsCentralBiosVfPCHSATAMode -VpSATAMode "platform-default"
$mo_58  = $mo_1  |  Get-UcsCentralBiosVfPCILOMPortsConfiguration  |  Set-UcsCentralBiosVfPCILOMPortsConfiguration -VpPCIe10GLOM2Link "platform-default"
$mo_59  = $mo_1  |  Get-UcsCentralBiosVfPCIROMCLP  |  Set-UcsCentralBiosVfPCIROMCLP -VpPCIROMCLP "platform-default"
$mo_60  = $mo_1  |  Get-UcsCentralBiosVfPCISlotLinkSpeed  |  Set-UcsCentralBiosVfPCISlotLinkSpeed -VpPCIeSlot10LinkSpeed "platform-default" -VpPCIeSlot1LinkSpeed "platform-default" -VpPCIeSlot2LinkSpeed "platform-default" -VpPCIeSlot3LinkSpeed "platform-default" -VpPCIeSlot4LinkSpeed "platform-default" -VpPCIeSlot5LinkSpeed "platform-default" -VpPCIeSlot6LinkSpeed "platform-default" -VpPCIeSlot7LinkSpeed "platform-default" -VpPCIeSlot8LinkSpeed "platform-default" -VpPCIeSlot9LinkSpeed "platform-default"
$mo_61  = $mo_1  |  Get-UcsCentralBiosVfPCISlotOptionROMEnable  |  Set-UcsCentralBiosVfPCISlotOptionROMEnable -VpPCIeSlotHBAOptionROM "platform-default" -VpPCIeSlotMLOMOptionROM "platform-default" -VpPCIeSlotN1OptionROM "platform-default" -VpPCIeSlotN2OptionROM "platform-default" -VpPCIeSlotSASOptionROM "platform-default" -VpSlot10State "platform-default" -VpSlot1State "platform-default" -VpSlot2State "platform-default" -VpSlot3State "platform-default" -VpSlot4State "platform-default" -VpSlot5State "platform-default" -VpSlot6State "platform-default" -VpSlot7State "platform-default" -VpSlot8State "platform-default" -VpSlot9State "platform-default" -VpSlotMezzState "platform-default"
$mo_62  = $mo_1  |  Get-UcsCentralBiosVfPOSTErrorPause  |  Set-UcsCentralBiosVfPOSTErrorPause -VpPOSTErrorPause "platform-default"
$mo_63  = $mo_1  |  Get-UcsCentralBiosVfProcessorC1E  |  Set-UcsCentralBiosVfProcessorC1E -VpProcessorC1E "disabled"
$mo_64  = $mo_1  |  Get-UcsCentralBiosVfProcessorC3Report  |  Set-UcsCentralBiosVfProcessorC3Report -VpProcessorC3Report "disabled"
$mo_65  = $mo_1  |  Get-UcsCentralBiosVfProcessorC6Report  |  Set-UcsCentralBiosVfProcessorC6Report -VpProcessorC6Report "disabled"
$mo_66  = $mo_1  |  Get-UcsCentralBiosVfProcessorC7Report  |  Set-UcsCentralBiosVfProcessorC7Report -VpProcessorC7Report "disabled"
$mo_67  = $mo_1  |  Get-UcsCentralBiosVfProcessorCMCI  |  Set-UcsCentralBiosVfProcessorCMCI -VpProcessorCMCI "platform-default"
$mo_68  = $mo_1  |  Get-UcsCentralBiosVfProcessorCState  |  Set-UcsCentralBiosVfProcessorCState -VpProcessorCState "enabled"
$mo_69  = $mo_1  |  Get-UcsCentralBiosVfProcessorEnergyConfiguration  |  Set-UcsCentralBiosVfProcessorEnergyConfiguration -VpEnergyPerformance "platform-default" -VpPowerTechnology "platform-default"
$mo_70  = $mo_1  |  Get-UcsCentralBiosVfProcessorPrefetchConfig  |  Set-UcsCentralBiosVfProcessorPrefetchConfig -VpAdjacentCacheLinePrefetcher "platform-default" -VpDCUIPPrefetcher "platform-default" -VpDCUStreamerPrefetch "platform-default" -VpHardwarePrefetcher "platform-default"
$mo_71  = $mo_1  |  Get-UcsCentralBiosVfPSTATECoordination  |  Set-UcsCentralBiosVfPSTATECoordination -VpPSTATECoordination "platform-default"
$mo_72  = $mo_1  |  Get-UcsCentralBiosVfQPILinkFrequencySelect  |  Set-UcsCentralBiosVfQPILinkFrequencySelect -VpQPILinkFrequencySelect "platform-default"
$mo_73  = $mo_1  |  Get-UcsCentralBiosVfQPISnoopMode  |  Set-UcsCentralBiosVfQPISnoopMode -VpQPISnoopMode "platform-default"
$mo_74  = $mo_1  |  Get-UcsCentralBiosVfQuietBoot  |  Set-UcsCentralBiosVfQuietBoot -VpQuietBoot "platform-default"
$mo_75  = $mo_1  |  Get-UcsCentralBiosVfRedirectionAfterBIOSPOST  |  Set-UcsCentralBiosVfRedirectionAfterBIOSPOST -VpRedirectionAfterPOST "platform-default"
$mo_76  = $mo_1  |  Get-UcsCentralBiosVfResumeOnACPowerLoss  |  Set-UcsCentralBiosVfResumeOnACPowerLoss -VpResumeOnACPowerLoss "platform-default"
$mo_77  = $mo_1  |  Get-UcsCentralBiosVfSBMezz1OptionROM  |  Set-UcsCentralBiosVfSBMezz1OptionROM -VpSBMezz1OptionROM "platform-default"
$mo_78  = $mo_1  |  Get-UcsCentralBiosVfSBNVMe1OptionROM  |  Set-UcsCentralBiosVfSBNVMe1OptionROM -VpSBNVMe1OptionROM "platform-default"
$mo_79  = $mo_1  |  Get-UcsCentralBiosVfScrubPolicies  |  Set-UcsCentralBiosVfScrubPolicies -VpDemandScrub "platform-default" -VpPatrolScrub "platform-default"
$mo_80  = $mo_1  |  Get-UcsCentralBiosVfSelectMemoryRASConfiguration  |  Set-UcsCentralBiosVfSelectMemoryRASConfiguration -VpSelectMemoryRASConfiguration "maximum-performance"
$mo_81  = $mo_1  |  Get-UcsCentralBiosVfSerialPortAEnable  |  Set-UcsCentralBiosVfSerialPortAEnable -VpSerialPortAEnable "platform-default"
$mo_82  = $mo_1  |  Get-UcsCentralBiosVfSIOC1OptionROM  |  Set-UcsCentralBiosVfSIOC1OptionROM -VpSIOC1OptionROM "platform-default"
$mo_83  = $mo_1  |  Get-UcsCentralBiosVfSIOC2OptionROM  |  Set-UcsCentralBiosVfSIOC2OptionROM -VpSIOC2OptionROM "platform-default"
$mo_84  = $mo_1  |  Get-UcsCentralBiosVfSparingMode  |  Set-UcsCentralBiosVfSparingMode -VpSparingMode "platform-default"
$mo_85  = $mo_1  |  Get-UcsCentralBiosVfSriovConfig  |  Set-UcsCentralBiosVfSriovConfig -VpSriov "platform-default"
$mo_86  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Access Control Services" 
$mo_87  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu1" 
$mo_88  = $mo_87 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_89  = $mo_87 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_90  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu2" 
$mo_91  = $mo_90 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_92  = $mo_90 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_93  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu3" 
$mo_94  = $mo_93 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_95  = $mo_93 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_96  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu4" 
$mo_97  = $mo_96 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_98  = $mo_96 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_99  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu5" 
$mo_100  = $mo_99 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_101  = $mo_99 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_102  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu6" 
$mo_103  = $mo_102 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_104  = $mo_102 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_105  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu7" 
$mo_106  = $mo_105 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_107  = $mo_105 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_108  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlGpu8" 
$mo_109  = $mo_108 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_110  = $mo_108 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_111  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlSlot11" 
$mo_112  = $mo_111 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_113  = $mo_111 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_114  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlSlot12" 
$mo_115  = $mo_114 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_116  = $mo_114 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_117  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlSlot13" 
$mo_118  = $mo_117 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_119  = $mo_117 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_120  = $mo_86 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACSCtlSlot14" 
$mo_121  = $mo_120 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_122  = $mo_120 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_123  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "ACPI10 Support" 
$mo_124  = $mo_123 | Get-UcsCentralBiosTokenParam -TargetTokenName "ACPI10Support" 
$mo_125  = $mo_124 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_126  = $mo_124 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_127  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Adaptive Memory Training" 
$mo_128  = $mo_127 | Get-UcsCentralBiosTokenParam -TargetTokenName "CiscoAdaptiveMemTraining" 
$mo_129  = $mo_128 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_130  = $mo_128 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_131  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "All USB Devices" 
$mo_132  = $mo_131 | Get-UcsCentralBiosTokenParam -TargetTokenName "AllUsbDevices" 
$mo_133  = $mo_132 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_134  = $mo_132 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_135  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Altitude" 
$mo_136  = $mo_135 | Get-UcsCentralBiosTokenParam -TargetTokenName "Altitude" 
$mo_137  = $mo_136 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1500-M" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_138  = $mo_136 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "3000-M" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_139  = $mo_136 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "300-M" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_140  = $mo_136 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "900-M" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_141  = $mo_136 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_142  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "ASPM Support" 
$mo_143  = $mo_142 | Get-UcsCentralBiosTokenParam -TargetTokenName "AspmSupport" 
$mo_144  = $mo_143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_145  = $mo_143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_146  = $mo_143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "ForceL0" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_147  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Assert NMI on PERR" 
$mo_148  = $mo_147 | Get-UcsCentralBiosTokenParam -TargetTokenName "AssertNMIOnPERR" 
$mo_149  = $mo_148 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_150  = $mo_148 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_151  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Assert NMI on SERR" 
$mo_152  = $mo_151 | Get-UcsCentralBiosTokenParam -TargetTokenName "AssertNMIOnSERR" 
$mo_153  = $mo_152 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_154  = $mo_152 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_155  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "BIOS Techlog Level" 
$mo_156  = $mo_155 | Get-UcsCentralBiosTokenParam -TargetTokenName "CiscoDebugLevel" 
$mo_157  = $mo_156 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Maximum" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_158  = $mo_156 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Minimum" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_159  = $mo_156 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Normal" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_160  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "BME DMA Mitigation" 
$mo_161  = $mo_160 | Get-UcsCentralBiosTokenParam -TargetTokenName "BmeDmaMitigation" 
$mo_162  = $mo_161 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_163  = $mo_161 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_164  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Boot option retry" 
$mo_165  = $mo_164 | Get-UcsCentralBiosTokenParam -TargetTokenName "BootOptionRetry" 
$mo_166  = $mo_165 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_167  = $mo_165 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_168  = $mo_164 | Get-UcsCentralBiosTokenParam -TargetTokenName "BORCoolDown" 
$mo_169  = $mo_168 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "15" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_170  = $mo_168 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "45" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_171  = $mo_168 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "90" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_172  = $mo_164 | Get-UcsCentralBiosTokenParam -TargetTokenName "BORNumRetry" 
$mo_173  = $mo_172 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "13" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_174  = $mo_172 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "5" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_175  = $mo_172 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Infinite" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_176  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Consistent Device Name Control" 
$mo_177  = $mo_176 | Get-UcsCentralBiosTokenParam -TargetTokenName "cdnEnable" 
$mo_178  = $mo_177 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_179  = $mo_177 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_180  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Console redirection" 
$mo_181  = $mo_180 | Get-UcsCentralBiosTokenParam -TargetTokenName "BaudRate" 
$mo_182  = $mo_181 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "115.2k" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_183  = $mo_181 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "19.2k" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_184  = $mo_181 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "38.4k" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_185  = $mo_181 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "57.6k" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_186  = $mo_181 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "9.6k" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_187  = $mo_180 | Get-UcsCentralBiosTokenParam -TargetTokenName "ConsoleRedir" 
$mo_188  = $mo_187 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "COM-0" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_189  = $mo_187 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "COM-1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_190  = $mo_187 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_191  = $mo_187 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_192  = $mo_187 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Serial-Port-A" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_193  = $mo_187 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Serial-Port-B" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_194  = $mo_180 | Get-UcsCentralBiosTokenParam -TargetTokenName "FlowCtrl" 
$mo_195  = $mo_194 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "None" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_196  = $mo_194 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "RTS-CTS" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_197  = $mo_180 | Get-UcsCentralBiosTokenParam -TargetTokenName "LegacyOSRedir" 
$mo_198  = $mo_197 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "80x24" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_199  = $mo_197 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "80x25" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_200  = $mo_197 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_201  = $mo_197 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_202  = $mo_180 | Get-UcsCentralBiosTokenParam -TargetTokenName "PuttyFunctionKeyPad" 
$mo_203  = $mo_202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "ESCN" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_204  = $mo_202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "LINUX" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_205  = $mo_202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "SCO" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_206  = $mo_202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "VT100" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_207  = $mo_202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "VT400" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_208  = $mo_202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "XTERMR6" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_209  = $mo_180 | Get-UcsCentralBiosTokenParam -TargetTokenName "TerminalType" 
$mo_210  = $mo_209 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "PC-ANSI" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_211  = $mo_209 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "VT100" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_212  = $mo_209 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "VT100-PLUS" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_213  = $mo_209 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "VT-UTF8" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_214  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Core MultiProcessing" 
$mo_215  = $mo_214 | Get-UcsCentralBiosTokenParam -TargetTokenName "CoreMultiProcessing" 
$mo_216  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_217  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "10" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_218  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "11" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_219  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "12" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_220  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "13" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_221  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "14" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_222  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "15" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_223  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "16" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_224  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "17" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_225  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "18" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_226  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "19" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_227  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_228  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "20" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_229  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "21" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_230  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "22" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_231  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "23" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_232  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "24" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_233  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "25" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_234  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "26" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_235  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "27" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_236  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "28" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_237  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_238  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "4" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_239  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "5" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_240  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "6" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_241  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "7" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_242  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "8" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_243  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "9" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_244  = $mo_215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "All" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_245  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "CPU Hardware Power Management" 
$mo_246  = $mo_245 | Get-UcsCentralBiosTokenParam -TargetTokenName "CpuHWPM" 
$mo_247  = $mo_246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_248  = $mo_246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "HWPM-Native-Mode" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_249  = $mo_246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "HWPM-OOB-Mode" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_250  = $mo_246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Native-Mode-with-no-Legacy" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_251  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "CPU Performance" 
$mo_252  = $mo_251 | Get-UcsCentralBiosTokenParam -TargetTokenName "BootPerformanceMode" 
$mo_253  = $mo_252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Max-Efficient" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_254  = $mo_252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Max-Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_255  = $mo_252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Set-by-Intel-NM" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_256  = $mo_251 | Get-UcsCentralBiosTokenParam -TargetTokenName "CPUPerformance" 
$mo_257  = $mo_256 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Custom" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_258  = $mo_256 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enterprise" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_259  = $mo_256 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "High-Throughput" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_260  = $mo_256 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "HPC" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_261  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "DCPMM Firmware Downgrade Configuration" 
$mo_262  = $mo_261 | Get-UcsCentralBiosTokenParam -TargetTokenName "DCPMMFirmwareDowngrade" 
$mo_263  = $mo_262 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_264  = $mo_262 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_265  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "DDR3 Voltage Selection" 
$mo_266  = $mo_265 | Get-UcsCentralBiosTokenParam -TargetTokenName "Ddr3VoltageSelection" 
$mo_267  = $mo_266 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "DDR3-1350mv" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_268  = $mo_266 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "DDR3-1500mv" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_269  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Direct Cache Access" 
$mo_270  = $mo_269 | Get-UcsCentralBiosTokenParam -TargetTokenName "DirectCacheAccess" 
$mo_271  = $mo_270 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_272  = $mo_270 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_273  = $mo_270 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_274  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "DRAM Clock Throttling" 
$mo_275  = $mo_274 | Get-UcsCentralBiosTokenParam -TargetTokenName "DRAMClockThrottling" 
$mo_276  = $mo_275 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_277  = $mo_275 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_278  = $mo_275 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Energy-Efficient" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_279  = $mo_275 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_280  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Dram Refresh Rate" 
$mo_281  = $mo_280 | Get-UcsCentralBiosTokenParam -TargetTokenName "DramRefreshRate" 
$mo_282  = $mo_281 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1x" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_283  = $mo_281 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2x" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_284  = $mo_281 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "3x" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_285  = $mo_281 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "4x" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_286  = $mo_281 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_287  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Energy Performance Tuning" 
$mo_288  = $mo_287 | Get-UcsCentralBiosTokenParam -TargetTokenName "PwrPerfTuning" 
$mo_289  = $mo_288 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "BIOS" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_290  = $mo_288 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "OS" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_291  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Enhanced Intel SpeedStep Tech" 
$mo_292  = $mo_291 | Get-UcsCentralBiosTokenParam -TargetTokenName "EnhancedIntelSpeedStep" 
$mo_293  = $mo_292 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_294  = $mo_292 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_295  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Enhanced PowerCapping Support" 
$mo_296  = $mo_295 | Get-UcsCentralBiosTokenParam -TargetTokenName "EnhancedPowerCapping" 
$mo_297  = $mo_296 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_298  = $mo_296 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_299  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Execute Disable Bit" 
$mo_300  = $mo_299 | Get-UcsCentralBiosTokenParam -TargetTokenName "ExecuteDisable" 
$mo_301  = $mo_300 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_302  = $mo_300 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_303  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "FRB 2 Timer" 
$mo_304  = $mo_303 | Get-UcsCentralBiosTokenParam -TargetTokenName "FRB-2" 
$mo_305  = $mo_304 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_306  = $mo_304 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_307  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Frequency Floor Override" 
$mo_308  = $mo_307 | Get-UcsCentralBiosTokenParam -TargetTokenName "CpuFreqFloor" 
$mo_309  = $mo_308 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_310  = $mo_308 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_311  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Front panel lockout" 
$mo_312  = $mo_311 | Get-UcsCentralBiosTokenParam -TargetTokenName "FrontPanelLock" 
$mo_313  = $mo_312 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_314  = $mo_312 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_315  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Integrated Graphics" 
$mo_316  = $mo_315 | Get-UcsCentralBiosTokenParam -TargetTokenName "IGDSupport" 
$mo_317  = $mo_316 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_318  = $mo_316 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_319  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Integrated Graphics Aperture Size" 
$mo_320  = $mo_319 | Get-UcsCentralBiosTokenParam -TargetTokenName "IGDAperture" 
$mo_321  = $mo_320 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1024MB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_322  = $mo_320 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "128MB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_323  = $mo_320 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2048MB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_324  = $mo_320 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "256MB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_325  = $mo_320 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "4096MB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_326  = $mo_320 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "512MB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_327  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Intel entry SAS RAID module" 
$mo_328  = $mo_327 | Get-UcsCentralBiosTokenParam -TargetTokenName "ConfigSASRaidModule" 
$mo_329  = $mo_328 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Intel-ESRTII" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_330  = $mo_328 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "IT-IR-RAID" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_331  = $mo_327 | Get-UcsCentralBiosTokenParam -TargetTokenName "IntelSASRaidConfig" 
$mo_332  = $mo_331 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_333  = $mo_331 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_334  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Intel HyperThreading Tech" 
$mo_335  = $mo_334 | Get-UcsCentralBiosTokenParam -TargetTokenName "IntelHyperThread" 
$mo_336  = $mo_335 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_337  = $mo_335 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_338  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Intel Trusted Execution Technology" 
$mo_339  = $mo_338 | Get-UcsCentralBiosTokenParam -TargetTokenName "TXTSupport" 
$mo_340  = $mo_339 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_341  = $mo_339 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_342  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Intel Turbo Boost Tech" 
$mo_343  = $mo_342 | Get-UcsCentralBiosTokenParam -TargetTokenName "EnergyEfficientTurbo" 
$mo_344  = $mo_343 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_345  = $mo_343 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_346  = $mo_342 | Get-UcsCentralBiosTokenParam -TargetTokenName "IntelTurboBoostTech" 
$mo_347  = $mo_346 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_348  = $mo_346 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_349  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Intel Virtualization Technology" 
$mo_350  = $mo_349 | Get-UcsCentralBiosTokenParam -TargetTokenName "IntelVT" 
$mo_351  = $mo_350 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_352  = $mo_350 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_353  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Intel VT for directed IO" 
$mo_354  = $mo_353 | Get-UcsCentralBiosTokenParam -TargetTokenName "ATS" 
$mo_355  = $mo_354 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_356  = $mo_354 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_357  = $mo_353 | Get-UcsCentralBiosTokenParam -TargetTokenName "CoherencySupport" 
$mo_358  = $mo_357 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_359  = $mo_357 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_360  = $mo_353 | Get-UcsCentralBiosTokenParam -TargetTokenName "IntelVTD" 
$mo_361  = $mo_360 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_362  = $mo_360 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_363  = $mo_353 | Get-UcsCentralBiosTokenParam -TargetTokenName "InterruptRemap" 
$mo_364  = $mo_363 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_365  = $mo_363 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_366  = $mo_353 | Get-UcsCentralBiosTokenParam -TargetTokenName "PassThroughDMA" 
$mo_367  = $mo_366 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_368  = $mo_366 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_369  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "IntelSpeedSelect Configuration" 
$mo_370  = $mo_369 | Get-UcsCentralBiosTokenParam -TargetTokenName "IntelSpeedSelect" 
$mo_371  = $mo_370 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Base" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_372  = $mo_370 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Config-1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_373  = $mo_370 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Config-2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_374  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Interleave Configuration" 
$mo_375  = $mo_374 | Get-UcsCentralBiosTokenParam -TargetTokenName "ChannelInterLeave" 
$mo_376  = $mo_375 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_377  = $mo_375 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_378  = $mo_375 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "3-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_379  = $mo_375 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "4-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_380  = $mo_375 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_381  = $mo_374 | Get-UcsCentralBiosTokenParam -TargetTokenName "IMCInterleave" 
$mo_382  = $mo_381 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1-way-Interleave" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_383  = $mo_381 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2-way-Interleave" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_384  = $mo_381 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_385  = $mo_374 | Get-UcsCentralBiosTokenParam -TargetTokenName "MemoryInterLeave" 
$mo_386  = $mo_385 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2-Way-Node-Interleave" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_387  = $mo_385 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "4-Way-Node-Interleave" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_388  = $mo_385 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "8-Way-Interleaving-Inter-Socket" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_389  = $mo_385 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "NUMA---1-Way-Node-Interleave" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_390  = $mo_374 | Get-UcsCentralBiosTokenParam -TargetTokenName "RankInterLeave" 
$mo_391  = $mo_390 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_392  = $mo_390 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_393  = $mo_390 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "4-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_394  = $mo_390 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "8-Way" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_395  = $mo_390 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_396  = $mo_374 | Get-UcsCentralBiosTokenParam -TargetTokenName "SNC" 
$mo_397  = $mo_396 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_398  = $mo_396 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_399  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "IOEMezz1 OptionROM" 
$mo_400  = $mo_399 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOEMezz1OptionROM" 
$mo_401  = $mo_400 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_402  = $mo_400 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_403  = $mo_400 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_404  = $mo_400 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_405  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "IOENVMe1 OptionROM" 
$mo_406  = $mo_405 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOENVMe1OptionROM" 
$mo_407  = $mo_406 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_408  = $mo_406 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_409  = $mo_406 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_410  = $mo_406 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_411  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "IOENVMe2 OptionROM" 
$mo_412  = $mo_411 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOENVMe2OptionROM" 
$mo_413  = $mo_412 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_414  = $mo_412 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_415  = $mo_412 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_416  = $mo_412 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_417  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "IOESlot1 OptionROM" 
$mo_418  = $mo_417 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOESlot1OptionROM" 
$mo_419  = $mo_418 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_420  = $mo_418 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_421  = $mo_418 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_422  = $mo_418 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_423  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "IOESlot2 OptionROM" 
$mo_424  = $mo_423 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOESlot2OptionROM" 
$mo_425  = $mo_424 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_426  = $mo_424 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_427  = $mo_424 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_428  = $mo_424 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_429  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Local X2 Apic" 
$mo_430  = $mo_429 | Get-UcsCentralBiosTokenParam -TargetTokenName "LocalX2Apic" 
$mo_431  = $mo_430 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_432  = $mo_430 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_433  = $mo_430 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_434  = $mo_430 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "X2APIC" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_435  = $mo_430 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "XAPIC" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_436  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "LvDIMM Support" 
$mo_437  = $mo_436 | Get-UcsCentralBiosTokenParam -TargetTokenName "LvDDRMode" 
$mo_438  = $mo_437 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_439  = $mo_437 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Performance-Mode" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_440  = $mo_437 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Power-Saving-Mode" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_441  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Max Variable MTRR Setting" 
$mo_442  = $mo_441 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorMtrr" 
$mo_443  = $mo_442 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "8" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_444  = $mo_442 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto-Max" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_445  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Maximum memory below 4GB" 
$mo_446  = $mo_445 | Get-UcsCentralBiosTokenParam -TargetTokenName "MaxMemoryBelow4GB" 
$mo_447  = $mo_446 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_448  = $mo_446 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_449  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Memory mapped IO above 4GB" 
$mo_450  = $mo_449 | Get-UcsCentralBiosTokenParam -TargetTokenName "MemoryMappedIOAbove4GB" 
$mo_451  = $mo_450 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_452  = $mo_450 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_453  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Mirroring Mode" 
$mo_454  = $mo_453 | Get-UcsCentralBiosTokenParam -TargetTokenName "MirroringMode" 
$mo_455  = $mo_454 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Inter-Socket" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_456  = $mo_454 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Intra-Socket" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_457  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "NUMA optimized" 
$mo_458  = $mo_457 | Get-UcsCentralBiosTokenParam -TargetTokenName "NUMAOptimize" 
$mo_459  = $mo_458 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_460  = $mo_458 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_461  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Onboard Graphics" 
$mo_462  = $mo_461 | Get-UcsCentralBiosTokenParam -TargetTokenName "OnboardGraphics" 
$mo_463  = $mo_462 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_464  = $mo_462 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_465  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Onboard LOM Option ROM" 
$mo_466  = $mo_465 | Get-UcsCentralBiosTokenParam -TargetTokenName "AllLomPortControl" 
$mo_467  = $mo_466 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_468  = $mo_466 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_469  = $mo_465 | Get-UcsCentralBiosTokenParam -TargetTokenName "CdnSupport" 
$mo_470  = $mo_469 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_471  = $mo_469 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_472  = $mo_465 | Get-UcsCentralBiosTokenParam -TargetTokenName "LomOpromControlPort0" 
$mo_473  = $mo_472 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_474  = $mo_472 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_475  = $mo_465 | Get-UcsCentralBiosTokenParam -TargetTokenName "LomOpromControlPort1" 
$mo_476  = $mo_475 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_477  = $mo_475 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_478  = $mo_465 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBLom1OptionROM" 
$mo_479  = $mo_478 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_480  = $mo_478 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_481  = $mo_478 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_482  = $mo_478 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_483  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Onboard Storage" 
$mo_484  = $mo_483 | Get-UcsCentralBiosTokenParam -TargetTokenName "DisableSCU" 
$mo_485  = $mo_484 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_486  = $mo_484 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_487  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "OptionROM Launch Optimization" 
$mo_488  = $mo_487 | Get-UcsCentralBiosTokenParam -TargetTokenName "CiscoOpromLaunchOptimization" 
$mo_489  = $mo_488 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_490  = $mo_488 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_491  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "OS Boot Watchdog Timer" 
$mo_492  = $mo_491 | Get-UcsCentralBiosTokenParam -TargetTokenName "OSBootWatchdogTimer" 
$mo_493  = $mo_492 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_494  = $mo_492 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_495  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "OS Boot Watchdog Timer Policy" 
$mo_496  = $mo_495 | Get-UcsCentralBiosTokenParam -TargetTokenName "OSBootWatchdogTimerPolicy" 
$mo_497  = $mo_496 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Power-Off" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_498  = $mo_496 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Reset" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_499  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "OS Boot Watchdog Timer Timeout" 
$mo_500  = $mo_499 | Get-UcsCentralBiosTokenParam -TargetTokenName "OSBootWatchdogTimerTimeout" 
$mo_501  = $mo_500 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "10-minutes" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_502  = $mo_500 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "15-minutes" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_503  = $mo_500 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "20-minutes" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_504  = $mo_500 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "5-minutes" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_505  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Out of Band Management" 
$mo_506  = $mo_505 | Get-UcsCentralBiosTokenParam -TargetTokenName "comSpcrEnable" 
$mo_507  = $mo_506 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_508  = $mo_506 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_509  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "P STATE Coordination" 
$mo_510  = $mo_509 | Get-UcsCentralBiosTokenParam -TargetTokenName "PsdCoordType" 
$mo_511  = $mo_510 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "HW-ALL" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_512  = $mo_510 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "SW-ALL" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_513  = $mo_510 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "SW-ANY" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_514  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Package C State Limit" 
$mo_515  = $mo_514 | Get-UcsCentralBiosTokenParam -TargetTokenName "PackageCstateLimit" 
$mo_516  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_517  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C0" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_518  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C0-C1-State" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_519  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_520  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_521  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_522  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C6" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_523  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C6-Non-Retention" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_524  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C6-Retention" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_525  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C7" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_526  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C7s" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_527  = $mo_515 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "No-Limit" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_528  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PCH SATA Mode" 
$mo_529  = $mo_528 | Get-UcsCentralBiosTokenParam -TargetTokenName "pSATA" 
$mo_530  = $mo_529 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "AHCI" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_531  = $mo_529 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_532  = $mo_529 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "LSI-SW-RAID" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_533  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PCI LOM Ports Configuration" 
$mo_534  = $mo_533 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieLOM2Link" 
$mo_535  = $mo_534 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_536  = $mo_534 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_537  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PCI ROM CLP" 
$mo_538  = $mo_537 | Get-UcsCentralBiosTokenParam -TargetTokenName "PCIROMCLP" 
$mo_539  = $mo_538 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_540  = $mo_538 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_541  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PCI Slot Link Speed" 
$mo_542  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOEMezz1LinkSpeed" 
$mo_543  = $mo_542 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_544  = $mo_542 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_545  = $mo_542 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_546  = $mo_542 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_547  = $mo_542 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_548  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOENVMe1LinkSpeed" 
$mo_549  = $mo_548 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_550  = $mo_548 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_551  = $mo_548 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_552  = $mo_548 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_553  = $mo_548 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_554  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOENVMe2LinkSpeed" 
$mo_555  = $mo_554 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_556  = $mo_554 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_557  = $mo_554 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_558  = $mo_554 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_559  = $mo_554 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_560  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOESlot1LinkSpeed" 
$mo_561  = $mo_560 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_562  = $mo_560 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_563  = $mo_560 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_564  = $mo_560 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_565  = $mo_560 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_566  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "IOESlot2LinkSpeed" 
$mo_567  = $mo_566 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_568  = $mo_566 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_569  = $mo_566 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_570  = $mo_566 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_571  = $mo_566 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_572  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot10LinkSpeed" 
$mo_573  = $mo_572 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_574  = $mo_572 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_575  = $mo_572 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_576  = $mo_572 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_577  = $mo_572 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_578  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot11LinkSpeed" 
$mo_579  = $mo_578 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_580  = $mo_578 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_581  = $mo_578 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_582  = $mo_578 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_583  = $mo_578 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_584  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot12LinkSpeed" 
$mo_585  = $mo_584 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_586  = $mo_584 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_587  = $mo_584 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_588  = $mo_584 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_589  = $mo_584 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_590  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot1LinkSpeed" 
$mo_591  = $mo_590 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_592  = $mo_590 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_593  = $mo_590 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_594  = $mo_590 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_595  = $mo_590 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_596  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot2LinkSpeed" 
$mo_597  = $mo_596 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_598  = $mo_596 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_599  = $mo_596 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_600  = $mo_596 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_601  = $mo_596 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_602  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot3LinkSpeed" 
$mo_603  = $mo_602 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_604  = $mo_602 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_605  = $mo_602 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_606  = $mo_602 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_607  = $mo_602 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_608  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot4LinkSpeed" 
$mo_609  = $mo_608 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_610  = $mo_608 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_611  = $mo_608 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_612  = $mo_608 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_613  = $mo_608 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_614  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot5LinkSpeed" 
$mo_615  = $mo_614 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_616  = $mo_614 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_617  = $mo_614 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_618  = $mo_614 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_619  = $mo_614 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_620  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot6LinkSpeed" 
$mo_621  = $mo_620 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_622  = $mo_620 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_623  = $mo_620 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_624  = $mo_620 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_625  = $mo_620 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_626  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot7LinkSpeed" 
$mo_627  = $mo_626 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_628  = $mo_626 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_629  = $mo_626 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_630  = $mo_626 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_631  = $mo_626 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_632  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot8LinkSpeed" 
$mo_633  = $mo_632 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_634  = $mo_632 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_635  = $mo_632 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_636  = $mo_632 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_637  = $mo_632 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_638  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot9LinkSpeed" 
$mo_639  = $mo_638 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_640  = $mo_638 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_641  = $mo_638 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_642  = $mo_638 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_643  = $mo_638 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_644  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBMezz1LinkSpeed" 
$mo_645  = $mo_644 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_646  = $mo_644 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_647  = $mo_644 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_648  = $mo_644 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_649  = $mo_644 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_650  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBMezz2LinkSpeed" 
$mo_651  = $mo_650 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_652  = $mo_650 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_653  = $mo_650 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_654  = $mo_650 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_655  = $mo_650 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_656  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBNVMe1LinkSpeed" 
$mo_657  = $mo_656 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_658  = $mo_656 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_659  = $mo_656 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_660  = $mo_656 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_661  = $mo_656 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_662  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBNVMe2LinkSpeed" 
$mo_663  = $mo_662 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_664  = $mo_662 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_665  = $mo_662 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_666  = $mo_662 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_667  = $mo_662 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_668  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOC1LinkSpeed" 
$mo_669  = $mo_668 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_670  = $mo_668 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_671  = $mo_668 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_672  = $mo_668 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_673  = $mo_668 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_674  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOC2LinkSpeed" 
$mo_675  = $mo_674 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_676  = $mo_674 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_677  = $mo_674 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_678  = $mo_674 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_679  = $mo_674 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_680  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOCNVMe1LinkSpeed" 
$mo_681  = $mo_680 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_682  = $mo_680 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_683  = $mo_680 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_684  = $mo_680 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_685  = $mo_680 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_686  = $mo_541 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOCNVMe2LinkSpeed" 
$mo_687  = $mo_686 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_688  = $mo_686 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_689  = $mo_686 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_690  = $mo_686 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_691  = $mo_686 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_692  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PCI Slot LINK Speed" 
$mo_693  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotFrontNvme1LinkSpeed" 
$mo_694  = $mo_693 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_695  = $mo_693 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_696  = $mo_693 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_697  = $mo_693 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_698  = $mo_693 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_699  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotFrontNvme2LinkSpeed" 
$mo_700  = $mo_699 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_701  = $mo_699 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_702  = $mo_699 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_703  = $mo_699 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_704  = $mo_699 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_705  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotHBALinkSpeed" 
$mo_706  = $mo_705 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_707  = $mo_705 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_708  = $mo_705 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_709  = $mo_705 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_710  = $mo_705 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_711  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotMLOMLinkSpeed" 
$mo_712  = $mo_711 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_713  = $mo_711 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_714  = $mo_711 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_715  = $mo_711 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_716  = $mo_711 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_717  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotMRAIDLinkSpeed" 
$mo_718  = $mo_717 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_719  = $mo_717 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_720  = $mo_717 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_721  = $mo_717 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_722  = $mo_717 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_723  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRAIDLinkSpeed" 
$mo_724  = $mo_723 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_725  = $mo_723 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_726  = $mo_723 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_727  = $mo_723 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_728  = $mo_723 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_729  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme1LinkSpeed" 
$mo_730  = $mo_729 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_731  = $mo_729 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_732  = $mo_729 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_733  = $mo_729 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_734  = $mo_729 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_735  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme2LinkSpeed" 
$mo_736  = $mo_735 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_737  = $mo_735 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_738  = $mo_735 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN1" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_739  = $mo_735 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_740  = $mo_735 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "GEN3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_741  = $mo_692 | Get-UcsCentralBiosTokenParam -TargetTokenName "PowerOnPassword" 
$mo_742  = $mo_741 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_743  = $mo_741 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_744  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PCI Slot OptionROM Enable" 
$mo_745  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot10OptionROM" 
$mo_746  = $mo_745 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_747  = $mo_745 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_748  = $mo_745 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_749  = $mo_745 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_750  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot11OptionROM" 
$mo_751  = $mo_750 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_752  = $mo_750 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_753  = $mo_750 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_754  = $mo_750 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_755  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot12OptionROM" 
$mo_756  = $mo_755 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_757  = $mo_755 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_758  = $mo_755 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_759  = $mo_755 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_760  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot13OptionROM" 
$mo_761  = $mo_760 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_762  = $mo_760 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_763  = $mo_760 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_764  = $mo_760 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_765  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot14OptionROM" 
$mo_766  = $mo_765 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_767  = $mo_765 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_768  = $mo_765 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_769  = $mo_765 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_770  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot1OptionROM" 
$mo_771  = $mo_770 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_772  = $mo_770 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_773  = $mo_770 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_774  = $mo_770 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_775  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot2OptionROM" 
$mo_776  = $mo_775 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_777  = $mo_775 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_778  = $mo_775 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_779  = $mo_775 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_780  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot3OptionROM" 
$mo_781  = $mo_780 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_782  = $mo_780 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_783  = $mo_780 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_784  = $mo_780 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_785  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot4OptionROM" 
$mo_786  = $mo_785 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_787  = $mo_785 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_788  = $mo_785 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_789  = $mo_785 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_790  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot5OptionROM" 
$mo_791  = $mo_790 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_792  = $mo_790 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_793  = $mo_790 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_794  = $mo_790 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_795  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot6OptionROM" 
$mo_796  = $mo_795 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_797  = $mo_795 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_798  = $mo_795 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_799  = $mo_795 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_800  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot7OptionROM" 
$mo_801  = $mo_800 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_802  = $mo_800 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_803  = $mo_800 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_804  = $mo_800 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_805  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot8OptionROM" 
$mo_806  = $mo_805 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_807  = $mo_805 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_808  = $mo_805 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_809  = $mo_805 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_810  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlot9OptionROM" 
$mo_811  = $mo_810 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_812  = $mo_810 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_813  = $mo_810 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_814  = $mo_810 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_815  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU1OptionROM" 
$mo_816  = $mo_815 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_817  = $mo_815 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_818  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU2OptionROM" 
$mo_819  = $mo_818 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_820  = $mo_818 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_821  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU3OptionROM" 
$mo_822  = $mo_821 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_823  = $mo_821 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_824  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU4OptionROM" 
$mo_825  = $mo_824 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_826  = $mo_824 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_827  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU5OptionROM" 
$mo_828  = $mo_827 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_829  = $mo_827 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_830  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU6OptionROM" 
$mo_831  = $mo_830 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_832  = $mo_830 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_833  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU7OptionROM" 
$mo_834  = $mo_833 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_835  = $mo_833 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_836  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotGPU8OptionROM" 
$mo_837  = $mo_836 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_838  = $mo_836 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_839  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotHBAOptionROM" 
$mo_840  = $mo_839 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_841  = $mo_839 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_842  = $mo_839 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_843  = $mo_839 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_844  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotMLOMOptionROM" 
$mo_845  = $mo_844 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_846  = $mo_844 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_847  = $mo_844 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_848  = $mo_844 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_849  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotMRAIDOptionROM" 
$mo_850  = $mo_849 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_851  = $mo_849 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_852  = $mo_849 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_853  = $mo_849 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_854  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN10OptionROM" 
$mo_855  = $mo_854 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_856  = $mo_854 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_857  = $mo_854 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_858  = $mo_854 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_859  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN11OptionROM" 
$mo_860  = $mo_859 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_861  = $mo_859 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_862  = $mo_859 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_863  = $mo_859 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_864  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN12OptionROM" 
$mo_865  = $mo_864 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_866  = $mo_864 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_867  = $mo_864 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_868  = $mo_864 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_869  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN13OptionROM" 
$mo_870  = $mo_869 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_871  = $mo_869 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_872  = $mo_869 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_873  = $mo_869 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_874  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN14OptionROM" 
$mo_875  = $mo_874 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_876  = $mo_874 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_877  = $mo_874 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_878  = $mo_874 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_879  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN15OptionROM" 
$mo_880  = $mo_879 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_881  = $mo_879 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_882  = $mo_879 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_883  = $mo_879 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_884  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN16OptionROM" 
$mo_885  = $mo_884 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_886  = $mo_884 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_887  = $mo_884 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_888  = $mo_884 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_889  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN17OptionROM" 
$mo_890  = $mo_889 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_891  = $mo_889 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_892  = $mo_889 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_893  = $mo_889 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_894  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN18OptionROM" 
$mo_895  = $mo_894 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_896  = $mo_894 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_897  = $mo_894 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_898  = $mo_894 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_899  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN19OptionROM" 
$mo_900  = $mo_899 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_901  = $mo_899 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_902  = $mo_899 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_903  = $mo_899 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_904  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN1OptionROM" 
$mo_905  = $mo_904 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_906  = $mo_904 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_907  = $mo_904 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_908  = $mo_904 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_909  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN20OptionROM" 
$mo_910  = $mo_909 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_911  = $mo_909 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_912  = $mo_909 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_913  = $mo_909 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_914  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN21OptionROM" 
$mo_915  = $mo_914 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_916  = $mo_914 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_917  = $mo_914 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_918  = $mo_914 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_919  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN22OptionROM" 
$mo_920  = $mo_919 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_921  = $mo_919 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_922  = $mo_919 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_923  = $mo_919 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_924  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN23OptionROM" 
$mo_925  = $mo_924 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_926  = $mo_924 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_927  = $mo_924 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_928  = $mo_924 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_929  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN24OptionROM" 
$mo_930  = $mo_929 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_931  = $mo_929 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_932  = $mo_929 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_933  = $mo_929 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_934  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN2OptionROM" 
$mo_935  = $mo_934 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_936  = $mo_934 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_937  = $mo_934 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_938  = $mo_934 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_939  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN3OptionROM" 
$mo_940  = $mo_939 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_941  = $mo_939 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_942  = $mo_939 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_943  = $mo_939 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_944  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN4OptionROM" 
$mo_945  = $mo_944 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_946  = $mo_944 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_947  = $mo_944 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_948  = $mo_944 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_949  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN5OptionROM" 
$mo_950  = $mo_949 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_951  = $mo_949 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_952  = $mo_949 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_953  = $mo_949 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_954  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN6OptionROM" 
$mo_955  = $mo_954 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_956  = $mo_954 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_957  = $mo_954 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_958  = $mo_954 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_959  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN7OptionROM" 
$mo_960  = $mo_959 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_961  = $mo_959 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_962  = $mo_959 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_963  = $mo_959 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_964  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN8OptionROM" 
$mo_965  = $mo_964 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_966  = $mo_964 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_967  = $mo_964 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_968  = $mo_964 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_969  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotN9OptionROM" 
$mo_970  = $mo_969 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_971  = $mo_969 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_972  = $mo_969 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_973  = $mo_969 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_974  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRAIDOptionROM" 
$mo_975  = $mo_974 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_976  = $mo_974 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_977  = $mo_974 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_978  = $mo_974 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_979  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme1OptionRom" 
$mo_980  = $mo_979 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_981  = $mo_979 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_982  = $mo_979 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_983  = $mo_979 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_984  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme2OptionRom" 
$mo_985  = $mo_984 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_986  = $mo_984 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_987  = $mo_984 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_988  = $mo_984 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_989  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme3OptionRom" 
$mo_990  = $mo_989 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_991  = $mo_989 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_992  = $mo_989 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_993  = $mo_989 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_994  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme4OptionRom" 
$mo_995  = $mo_994 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_996  = $mo_994 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_997  = $mo_994 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_998  = $mo_994 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_999  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme5OptionRom" 
$mo_1000  = $mo_999 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1001  = $mo_999 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1002  = $mo_999 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1003  = $mo_999 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1004  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme6OptionRom" 
$mo_1005  = $mo_1004 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1006  = $mo_1004 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1007  = $mo_1004 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1008  = $mo_1004 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1009  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme7OptionRom" 
$mo_1010  = $mo_1009 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1011  = $mo_1009 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1012  = $mo_1009 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1013  = $mo_1009 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1014  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotRearNvme8OptionRom" 
$mo_1015  = $mo_1014 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1016  = $mo_1014 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1017  = $mo_1014 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1018  = $mo_1014 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1019  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "PcieSlotSASOptionROM" 
$mo_1020  = $mo_1019 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1021  = $mo_1019 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1022  = $mo_1019 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1023  = $mo_1019 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1024  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBMezz2OptionROM" 
$mo_1025  = $mo_1024 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1026  = $mo_1024 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1027  = $mo_1024 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1028  = $mo_1024 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1029  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBNVMe2OptionROM" 
$mo_1030  = $mo_1029 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1031  = $mo_1029 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1032  = $mo_1029 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1033  = $mo_1029 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1034  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOCNvme1OptionROM" 
$mo_1035  = $mo_1034 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1036  = $mo_1034 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1037  = $mo_1034 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1038  = $mo_1034 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1039  = $mo_744 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOCNvme2OptionROM" 
$mo_1040  = $mo_1039 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1041  = $mo_1039 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1042  = $mo_1039 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1043  = $mo_1039 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1044  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "POST error pause" 
$mo_1045  = $mo_1044 | Get-UcsCentralBiosTokenParam -TargetTokenName "POSTErrorPause" 
$mo_1046  = $mo_1045 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1047  = $mo_1045 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1048  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor" 
$mo_1049  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnCpuCpb" 
$mo_1050  = $mo_1049 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1051  = $mo_1049 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1052  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnCpuGenDowncoreCtrl" 
$mo_1053  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1054  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "FOUR-(2-+-2)" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1055  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "FOUR-(4-+-0)" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1056  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "SIX-(3-+-3)" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1057  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "THREE-(3-+-0)" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1058  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "TWO-(1-+-1)" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1059  = $mo_1052 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "TWO-(2-+-0)" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1060  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnCpuGlobalCstateCtrl" 
$mo_1061  = $mo_1060 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1062  = $mo_1060 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1063  = $mo_1060 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1064  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnCpuL1StreamHwPrefetcher" 
$mo_1065  = $mo_1064 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1066  = $mo_1064 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1067  = $mo_1064 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1068  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnCpuL2StreamHwPrefetcher" 
$mo_1069  = $mo_1068 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1070  = $mo_1068 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1071  = $mo_1068 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1072  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmncTDPCtl" 
$mo_1073  = $mo_1072 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1074  = $mo_1072 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Manual" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1075  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnDeterminismSlider" 
$mo_1076  = $mo_1075 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1077  = $mo_1075 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1078  = $mo_1075 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Power" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1079  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnGnbNbIOMMU" 
$mo_1080  = $mo_1079 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1081  = $mo_1079 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1082  = $mo_1079 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1083  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnMemCtrlBankGroupSwapDdr4" 
$mo_1084  = $mo_1083 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1085  = $mo_1083 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1086  = $mo_1083 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1087  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsCmnMemMapBankInterleaveDdr4" 
$mo_1088  = $mo_1087 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1089  = $mo_1087 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1090  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsDfCmnMemIntlv" 
$mo_1091  = $mo_1090 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1092  = $mo_1090 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Channel" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1093  = $mo_1090 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Die" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1094  = $mo_1090 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "None" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1095  = $mo_1090 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Socket" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1096  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "CbsDfCmnMemIntlvSize" 
$mo_1097  = $mo_1096 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "1-KB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1098  = $mo_1096 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "256-Bytes" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1099  = $mo_1096 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "2-KB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1100  = $mo_1096 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "512-Bytes" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1101  = $mo_1096 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1102  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "SMEE" 
$mo_1103  = $mo_1102 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1104  = $mo_1102 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1105  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "SmtMode" 
$mo_1106  = $mo_1105 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1107  = $mo_1105 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Off" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1108  = $mo_1048 | Get-UcsCentralBiosTokenParam -TargetTokenName "SvmMode" 
$mo_1109  = $mo_1108 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1110  = $mo_1108 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1111  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor C State" 
$mo_1112  = $mo_1111 | Get-UcsCentralBiosTokenParam -TargetTokenName "AutoCCState" 
$mo_1113  = $mo_1112 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1114  = $mo_1112 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1115  = $mo_1111 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorCstate" 
$mo_1116  = $mo_1115 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1117  = $mo_1115 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1118  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor C1E" 
$mo_1119  = $mo_1118 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorC1E" 
$mo_1120  = $mo_1119 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1121  = $mo_1119 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1122  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor C3 Report" 
$mo_1123  = $mo_1122 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorC3Report" 
$mo_1124  = $mo_1123 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "ACPI-C2" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1125  = $mo_1123 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "ACPI-C3" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1126  = $mo_1123 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1127  = $mo_1123 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1128  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor C6 Report" 
$mo_1129  = $mo_1128 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorC6Report" 
$mo_1130  = $mo_1129 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1131  = $mo_1129 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1132  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor C7 Report" 
$mo_1133  = $mo_1132 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorC7Report" 
$mo_1134  = $mo_1133 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C7" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1135  = $mo_1133 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "C7s" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1136  = $mo_1133 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1137  = $mo_1133 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1138  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor CMCI" 
$mo_1139  = $mo_1138 | Get-UcsCentralBiosTokenParam -TargetTokenName "ProcessorCMCI" 
$mo_1140  = $mo_1139 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1141  = $mo_1139 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1142  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor Energy Configuration" 
$mo_1143  = $mo_1142 | Get-UcsCentralBiosTokenParam -TargetTokenName "CpuEngPerfBias" 
$mo_1144  = $mo_1143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced-Energy" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1145  = $mo_1143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced-Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1146  = $mo_1143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced-Power" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1147  = $mo_1143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Energy-Efficient" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1148  = $mo_1143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1149  = $mo_1143 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Power" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1150  = $mo_1142 | Get-UcsCentralBiosTokenParam -TargetTokenName "CPUPowerManagement" 
$mo_1151  = $mo_1150 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Custom" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1152  = $mo_1150 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1153  = $mo_1150 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Energy-Efficient" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1154  = $mo_1150 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1155  = $mo_1142 | Get-UcsCentralBiosTokenParam -TargetTokenName "EPPProfile" 
$mo_1156  = $mo_1155 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced-Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1157  = $mo_1155 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced-Power" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1158  = $mo_1155 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1159  = $mo_1155 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Power" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1160  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Processor Prefetch Config" 
$mo_1161  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "AdjacentCacheLinePrefetch" 
$mo_1162  = $mo_1161 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1163  = $mo_1161 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1164  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "DcuIpPrefetch" 
$mo_1165  = $mo_1164 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1166  = $mo_1164 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1167  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "DcuStreamerPrefetch" 
$mo_1168  = $mo_1167 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1169  = $mo_1167 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1170  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "HardwarePrefetch" 
$mo_1171  = $mo_1170 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1172  = $mo_1170 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1173  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "KTIPrefetch" 
$mo_1174  = $mo_1173 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1175  = $mo_1173 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1176  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "LLCPrefetch" 
$mo_1177  = $mo_1176 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1178  = $mo_1176 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1179  = $mo_1160 | Get-UcsCentralBiosTokenParam -TargetTokenName "XPTPrefetch" 
$mo_1180  = $mo_1179 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1181  = $mo_1179 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1182  = $mo_1179 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1183  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "PXE BOOT" 
$mo_1184  = $mo_1183 | Get-UcsCentralBiosTokenParam -TargetTokenName "IPV6PXE" 
$mo_1185  = $mo_1184 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1186  = $mo_1184 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1187  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "QPI Link Frequency Select" 
$mo_1188  = $mo_1187 | Get-UcsCentralBiosTokenParam -TargetTokenName "QPILinkFrequency" 
$mo_1189  = $mo_1188 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "6.4-GT-s" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1190  = $mo_1188 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "7.2-GT-s" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1191  = $mo_1188 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "8.0-GT-s" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1192  = $mo_1188 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "9.6-GT-s" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1193  = $mo_1188 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1194  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "QPI Snoop Mode" 
$mo_1195  = $mo_1194 | Get-UcsCentralBiosTokenParam -TargetTokenName "QpiSnoopMode" 
$mo_1196  = $mo_1195 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1197  = $mo_1195 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Cluster-On-Die" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1198  = $mo_1195 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Early-Snoop" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1199  = $mo_1195 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Home-Directory-Snoop-with-OSB" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1200  = $mo_1195 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Home-Snoop" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1201  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Quiet Boot" 
$mo_1202  = $mo_1201 | Get-UcsCentralBiosTokenParam -TargetTokenName "QuietBoot" 
$mo_1203  = $mo_1202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1204  = $mo_1202 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1205  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Redirection After BIOS POST" 
$mo_1206  = $mo_1205 | Get-UcsCentralBiosTokenParam -TargetTokenName "RedirectionAfterPOST" 
$mo_1207  = $mo_1206 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Always-Enable" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1208  = $mo_1206 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Bootloader" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1209  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Resume on AC power loss" 
$mo_1210  = $mo_1209 | Get-UcsCentralBiosTokenParam -TargetTokenName "ResumeOnACPowerLoss" 
$mo_1211  = $mo_1210 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Last-State" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1212  = $mo_1210 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Reset" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1213  = $mo_1210 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Stay-Off" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1214  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "SBMezz1 OptionROM" 
$mo_1215  = $mo_1214 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBMezz1OptionROM" 
$mo_1216  = $mo_1215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1217  = $mo_1215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1218  = $mo_1215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1219  = $mo_1215 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1220  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "SBNVMe1 OptionROM" 
$mo_1221  = $mo_1220 | Get-UcsCentralBiosTokenParam -TargetTokenName "SBNVMe1OptionROM" 
$mo_1222  = $mo_1221 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1223  = $mo_1221 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1224  = $mo_1221 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1225  = $mo_1221 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1226  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Scrub Policies" 
$mo_1227  = $mo_1226 | Get-UcsCentralBiosTokenParam -TargetTokenName "DemandScrub" 
$mo_1228  = $mo_1227 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1229  = $mo_1227 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1230  = $mo_1226 | Get-UcsCentralBiosTokenParam -TargetTokenName "PatrolScrub" 
$mo_1231  = $mo_1230 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1232  = $mo_1230 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1233  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "SelectMemory RAS configuration" 
$mo_1234  = $mo_1233 | Get-UcsCentralBiosTokenParam -TargetTokenName "SelectMemoryRAS" 
$mo_1235  = $mo_1234 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "ADDDC-Sparing" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1236  = $mo_1234 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Lockstep" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1237  = $mo_1234 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Maximum-Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="yes"; }
$mo_1238  = $mo_1234 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Mirroring" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1239  = $mo_1234 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Mirror-Mode-1LM" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1240  = $mo_1234 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Sparing" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1241  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Serial port A enable" 
$mo_1242  = $mo_1241 | Get-UcsCentralBiosTokenParam -TargetTokenName "Serial-PortA" 
$mo_1243  = $mo_1242 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1244  = $mo_1242 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1245  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "SIOC1 OptionROM" 
$mo_1246  = $mo_1245 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOC1OptionROM" 
$mo_1247  = $mo_1246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1248  = $mo_1246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1249  = $mo_1246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1250  = $mo_1246 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1251  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "SIOC2 OptionROM" 
$mo_1252  = $mo_1251 | Get-UcsCentralBiosTokenParam -TargetTokenName "SIOC2OptionROM" 
$mo_1253  = $mo_1252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1254  = $mo_1252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1255  = $mo_1252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Legacy-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1256  = $mo_1252 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "UEFI-Only" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1257  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Sparing Mode" 
$mo_1258  = $mo_1257 | Get-UcsCentralBiosTokenParam -TargetTokenName "SparingMode" 
$mo_1259  = $mo_1258 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "DIMM-Sparing" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1260  = $mo_1258 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Rank-Sparing" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1261  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Trusted Platform Module" 
$mo_1262  = $mo_1261 | Get-UcsCentralBiosTokenParam -TargetTokenName "TPMControl" 
$mo_1263  = $mo_1262 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1264  = $mo_1262 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1265  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "UEFI OS use legacy video" 
$mo_1266  = $mo_1265 | Get-UcsCentralBiosTokenParam -TargetTokenName "EFIOSUseLegacyVideo" 
$mo_1267  = $mo_1266 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1268  = $mo_1266 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1269  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "USB Boot Config" 
$mo_1270  = $mo_1269 | Get-UcsCentralBiosTokenParam -TargetTokenName "MakeUSBDeviceNonBootable" 
$mo_1271  = $mo_1270 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1272  = $mo_1270 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1273  = $mo_1269 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbLegacySupport" 
$mo_1274  = $mo_1273 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Auto" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1275  = $mo_1273 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1276  = $mo_1273 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1277  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "USB Configuration" 
$mo_1278  = $mo_1277 | Get-UcsCentralBiosTokenParam -TargetTokenName "PchUsb30Mode" 
$mo_1279  = $mo_1278 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1280  = $mo_1278 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1281  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "USB Front Panel Access Lock" 
$mo_1282  = $mo_1281 | Get-UcsCentralBiosTokenParam -TargetTokenName "USBFrontPanelLock" 
$mo_1283  = $mo_1282 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1284  = $mo_1282 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1285  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "USB port configuration" 
$mo_1286  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbEmul6064" 
$mo_1287  = $mo_1286 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1288  = $mo_1286 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1289  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbPortFront" 
$mo_1290  = $mo_1289 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1291  = $mo_1289 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1292  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbPortInt" 
$mo_1293  = $mo_1292 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1294  = $mo_1292 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1295  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbPortKVM" 
$mo_1296  = $mo_1295 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1297  = $mo_1295 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1298  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbPortRear" 
$mo_1299  = $mo_1298 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1300  = $mo_1298 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1301  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbPortSdCard" 
$mo_1302  = $mo_1301 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1303  = $mo_1301 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1304  = $mo_1285 | Get-UcsCentralBiosTokenParam -TargetTokenName "UsbPortVMedia" 
$mo_1305  = $mo_1304 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1306  = $mo_1304 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1307  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "USB System Idle Power Optimizing Setting" 
$mo_1308  = $mo_1307 | Get-UcsCentralBiosTokenParam -TargetTokenName "USBIdlePowerOptimize" 
$mo_1309  = $mo_1308 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "High-Performance" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1310  = $mo_1308 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Lower-Idle-Power" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1311  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "VGA Priority" 
$mo_1312  = $mo_1311 | Get-UcsCentralBiosTokenParam -TargetTokenName "VgaPriority" 
$mo_1313  = $mo_1312 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Offboard" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1314  = $mo_1312 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Onboard" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1315  = $mo_1312 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Onboard-VGA-Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1316  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "VMD Enablement" 
$mo_1317  = $mo_1316 | Get-UcsCentralBiosTokenParam -TargetTokenName "VMDEnable" 
$mo_1318  = $mo_1317 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Disabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1319  = $mo_1317 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Enabled" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1320  = $mo_1  |  Get-UcsCentralBiosTokenFeatureGroup -Name "Workload Configuration" 
$mo_1321  = $mo_1320 | Get-UcsCentralBiosTokenParam -TargetTokenName "WorkLdConfig" 
$mo_1322  = $mo_1321 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "Balanced" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1323  = $mo_1321 | Get-UcsCentralBiosTokenSettings -SettingsMoRn "IO-Sensitive" | Set-UcsCentralManagedObject -PropertyMap @{IsAssigned="no"; }
$mo_1324  = $mo_1  |  Get-UcsCentralBiosVfTPMPendingOperation  |  Set-UcsCentralBiosVfTPMPendingOperation -VpTPMPendingOperation "platform-default"
$mo_1325  = $mo_1  |  Get-UcsCentralBiosVfTPMSupport  |  Set-UcsCentralBiosVfTPMSupport -VpTPMSupport "platform-default"
$mo_1326  = $mo_1  |  Get-UcsCentralBiosVfTrustedPlatformModule  |  Set-UcsCentralBiosVfTrustedPlatformModule -VpTrustedPlatformModuleSupport "platform-default"
$mo_1327  = $mo_1  |  Get-UcsCentralBiosVfUCSMBootModeControl  |  Set-UcsCentralBiosVfUCSMBootModeControl -VpUEFIBootMode "platform-default"
$mo_1328  = $mo_1  |  Get-UcsCentralBiosVfUCSMBootOrderRuleControl  |  Set-UcsCentralBiosVfUCSMBootOrderRuleControl -VpUCSMBootOrderRule "platform-default"
$mo_1329  = $mo_1  |  Get-UcsCentralBiosVfUEFIOSUseLegacyVideo  |  Set-UcsCentralBiosVfUEFIOSUseLegacyVideo -VpUEFIOSUseLegacyVideo "platform-default"
$mo_1330  = $mo_1  |  Get-UcsCentralBiosVfUSBBootConfig  |  Set-UcsCentralBiosVfUSBBootConfig -VpLegacyUSBSupport "platform-default" -VpMakeDeviceNonBootable "platform-default"
$mo_1331  = $mo_1  |  Get-UcsCentralBiosVfUSBConfiguration  |  Set-UcsCentralBiosVfUSBConfiguration -VpLegacyUSBSupport "platform-default" -VpXHCIMode "platform-default"
$mo_1332  = $mo_1  |  Get-UcsCentralBiosVfUSBFrontPanelAccessLock  |  Set-UcsCentralBiosVfUSBFrontPanelAccessLock -VpUSBFrontPanelLock "platform-default"
$mo_1333  = $mo_1  |  Get-UcsCentralBiosVfUSBPortConfiguration  |  Set-UcsCentralBiosVfUSBPortConfiguration -VpPort6064Emulation "platform-default" -VpUSBPortFront "platform-default" -VpUSBPortInternal "platform-default" -VpUSBPortKVM "platform-default" -VpUSBPortRear "platform-default" -VpUSBPortSDCard "platform-default" -VpUSBPortVMedia "platform-default"
$mo_1334  = $mo_1  |  Get-UcsCentralBiosVfUSBSystemIdlePowerOptimizingSetting  |  Set-UcsCentralBiosVfUSBSystemIdlePowerOptimizingSetting -VpUSBIdlePowerOptimizing "platform-default"
$mo_1335  = $mo_1  |  Get-UcsCentralBiosVfVGAPriority  |  Set-UcsCentralBiosVfVGAPriority -VpVGAPriority "platform-default"
$mo_1336  = $mo_1  |  Get-UcsCentralBiosVfWorkloadConfiguration  |  Set-UcsCentralBiosVfWorkloadConfiguration -VpWorkloadConfiguration "platform-default"
Complete-UcsCentralTransaction