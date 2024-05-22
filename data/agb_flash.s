	.INCLUDE "macro.inc"

	.section .rodata

AgbLibFlashVersion:
	.asciz "FLASH512_V131"

	.BALIGN 4

	.GLOBAL sSetupInfos
sSetupInfos:
	.INCBIN "baserom.gba", 0x77FAC, 0x77FE4-0x77FAC

	.GLOBAL mMaxTime
mMaxTime:
	.INCBIN "baserom.gba", 0x77FE4, 0x77FFC-0x77FE4

	.INCBIN "baserom.gba", 0x77FFC, 0x7820C-0x77FFC


