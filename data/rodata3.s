	.SECTION .rodata

	.GLOBAL gUnknown_08077F2C
gUnknown_08077F2C:
	.4byte 0x03000882
	.4byte gFlashTimeoutFlag
	.4byte 0x03000880
	.4byte 0x03000884
	.4byte FlashTimerIntr
	.4byte gFlashMaxTime
	.4byte 0x03000888
	.4byte 0x03000884
	.4byte 0x03000880
	.4byte gFlashTimeoutFlag
	.4byte 0x03000882
	.4byte 0x03000884
	.4byte 0x03000880
	.4byte 0x03000888
	.4byte PollFlashStatus
	.4byte ReadFlash1
	.4byte SetReadFlash1
	.4byte gFlash
	.4byte ReadFlash_Core
	.4byte ReadFlash
	.4byte gFlash
	.4byte VerifyFlashSector_Core
	.4byte VerifyFlashSector
	.4byte gFlash
	.4byte VerifyFlashSector_Core
	.4byte VerifyFlashSector
	.4byte ProgramFlashSector
	.4byte ProgramFlashSector
	.ASCII "FLASH512_V131\0\0\0"
	
	.GLOBAL sSetupInfos
sSetupInfos:
	.4byte gUnknown_08078028
	.4byte gUnknown_080780D8
	.4byte gUnknown_080780AC
	.4byte gUnknown_08077FFC
	.4byte sSetupInfos
	.4byte ProgramFlashSector
	.4byte EraseFlashChip
	.4byte EraseFlashSector
	.4byte WaitForFlashWrite
	.4byte gFlashMaxTime
	.4byte gFlash
	.4byte PollFlashStatus
	.4byte gFlashTimeoutFlag
	.4byte gFlash
	
	.GLOBAL gUnknown_08077FE4
gUnknown_08077FE4:
	.4byte 0xFFBD000A
	.4byte 0x000A00C2
	.4byte 0x00C2FFBD
	.4byte 0xFFBD0028
	.4byte 0x00C800C2
	.4byte 0x00C2FFBD
	
	.GLOBAL gUnknown_08077FFC
gUnknown_08077FFC:
	.4byte ProgramFlashSector_MX
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_08077FE4
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00030003
	.4byte 0x00000000
	
	.GLOBAL gUnknown_08078028
gUnknown_08078028:
	.4byte ProgramFlashSector_MX
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_08077FE4
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00020001
	.4byte 0x0000D4BF
	.4byte gFlash
	.4byte WaitForFlashWrite
	.4byte gFlash
	.4byte WaitForFlashWrite
	.4byte WaitForFlashWrite
	.4byte gFlash
	.4byte sub_080746D0
	.4byte sub_080746F4
	.4byte gFlashNumRemainingBytes
	.4byte gFlash

	.GLOBAL gUnknown_0807807C
gUnknown_0807807C:
	.4byte 0xFFBD000A
	.4byte 0x000A00C2
	.4byte 0x00C2FFBD
	.4byte 0xFFBD07D0
	.4byte 0x07D000C2
	.4byte 0x00C2FFBD
	
	.GLOBAL gUnknown_08078094
gUnknown_08078094:
	.4byte 0xFFBD000A
	.4byte 0x000A00C2
	.4byte 0x00C2FFBD
	.4byte 0xFFBD01F4
	.4byte 0x01F400C2
	.4byte 0x00C2FFBD

	.GLOBAL gUnknown_080780AC
gUnknown_080780AC:
	.4byte sub_0807470C
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_0807807C
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00001CC2

	.GLOBAL gUnknown_080780D8
gUnknown_080780D8:
	.4byte sub_0807470C
	.4byte EraseFlashChip_MX
	.4byte EraseFlashSector_MX
	.4byte WaitForFlashWrite_Common
	.4byte gUnknown_08078094
	.4byte 0x00010000
	.4byte 0x00001000
	.4byte 0x0010000C
	.4byte 0x00000000
	.4byte 0x00020000
	.4byte 0x00001B32
	.4byte gFlash
	.4byte gFlashNumRemainingBytes
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
