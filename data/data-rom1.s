	.INCLUDE "macro.inc"

	.data

	@ What is this first part? Seems unreferenced.

	.INCBIN "baserom.gba", 0x76360, 0x76368-0x76360

	.GLOBAL gUnknown_08076368
gUnknown_08076368:
	.INCBIN "baserom.gba", 0x76368, 0x76387-0x76368

	.GLOBAL gUnknown_08076387
gUnknown_08076387:
	.INCBIN "baserom.gba", 0x76387, 0x7638C-0x76387
