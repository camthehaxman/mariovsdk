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

	.GLOBAL gUnknown_0807638C
gUnknown_0807638C:
	.INCBIN "baserom.gba", 0x7638C, 0x763AC-0x7638C

	.GLOBAL gUnknown_080763AC
gUnknown_080763AC:
	.INCBIN "baserom.gba", 0x763AC, 0x763CC-0x763AC

	.GLOBAL gUnknown_080763CC
gUnknown_080763CC:
	.INCBIN "baserom.gba", 0x763CC, 0x763D2-0x763CC

	.GLOBAL gUnknown_080763D2
gUnknown_080763D2:
	.INCBIN "baserom.gba", 0x763D2, 0x763D6-0x763D2

	.GLOBAL gUnknown_080763D6
gUnknown_080763D6:
	.INCBIN "baserom.gba", 0x763D6, 0x763DC-0x763D6

	.GLOBAL gUnknown_080763DC
gUnknown_080763DC:
	.INCBIN "baserom.gba", 0x763DC, 0x763E2-0x763DC

	.GLOBAL gUnknown_080763E2
gUnknown_080763E2:
	.INCBIN "baserom.gba", 0x763E2, 0x763E8-0x763E2

	.GLOBAL gUnknown_080763E8
gUnknown_080763E8:
	.INCBIN "baserom.gba", 0x763E8, 0x763ED-0x763E8

	.GLOBAL gUnknown_080763ED
gUnknown_080763ED:
	.INCBIN "baserom.gba", 0x763ED, 0x763F4-0x763ED

	.GLOBAL gUnknown_080763F4
gUnknown_080763F4:
	.INCBIN "baserom.gba", 0x763F4, 0x763FC-0x763F4

	.GLOBAL gUnknown_080763FC
gUnknown_080763FC:
	.INCBIN "baserom.gba", 0x763FC, 0x76800-0x763FC

	.GLOBAL gUnknown_08076800
gUnknown_08076800:
	.INCBIN "baserom.gba", 0x76800, 0x7684C-0x76800

	.GLOBAL gUnknown_0807684C
gUnknown_0807684C:
	.INCBIN "baserom.gba", 0x7684C, 0x7689C-0x7684C

	.GLOBAL gUnknown_0807689C
gUnknown_0807689C:
	.INCBIN "baserom.gba", 0x7689C, 0x76994-0x7689C

	.GLOBAL gUnknown_08076994
gUnknown_08076994:
	.INCBIN "baserom.gba", 0x76994, 0x7699C-0x76994

	.GLOBAL gUnknown_0807699C
gUnknown_0807699C:
	.INCBIN "baserom.gba", 0x7699C, 0x769B0-0x7699C

	.GLOBAL gUnknown_080769B0
gUnknown_080769B0:
	.INCBIN "baserom.gba", 0x769B0, 0x769B8-0x769B0

	.GLOBAL gUnknown_080769B8
gUnknown_080769B8:
	.INCBIN "baserom.gba", 0x769B8, 0x769F4-0x769B8

	.GLOBAL gUnknown_080769F4
gUnknown_080769F4:
	.INCBIN "baserom.gba", 0x769F4, 0x76AD8-0x769F4

	.GLOBAL gUnknown_08076AD8
gUnknown_08076AD8:
	.INCBIN "baserom.gba", 0x76AD8, 0x76D58-0x76AD8

	.GLOBAL gInterruptHandlers
gInterruptHandlers:
	.4byte vblank_interrupt_handler
	.4byte hblank_serial_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte tm0over_interrupt_handler
	.4byte tm1over_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte tm3over_interrupt_handler
	.4byte hblank_serial_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte dma1_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte dummy_interrupt_handler
	.4byte dummy_interrupt_handler
