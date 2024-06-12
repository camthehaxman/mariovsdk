	.SECTION .data

@ level_scroll

	.GLOBAL gUnknown_082E8900
gUnknown_082E8900:
	.INCBIN "baserom.gba", 0x2E8900, 0x2E8908-0x2E8900

	.GLOBAL gfxBackToGame4bpp
gfxBackToGame4bpp:
	.INCBIN "graphics/BackToGame.4bpp"

	.INCBIN "baserom.gba", 0x2E8A08, 0x2E8A50-0x2E8A08

	.GLOBAL gUnknown_082E8A50
gUnknown_082E8A50:
	.INCBIN "baserom.gba", 0x2E8A50, 0x2E8A58-0x2E8A50

	.GLOBAL gUnknown_082E8A58
gUnknown_082E8A58:
	.INCBIN "baserom.gba", 0x2E8A58, 0x2E8EA0-0x2E8A58

	.GLOBAL gUnknown_082E8EA0
gUnknown_082E8EA0:
	.INCBIN "baserom.gba", 0x2E8EA0, 0x2E8EA8-0x2E8EA0

	.GLOBAL gUnknown_082E8EA8
gUnknown_082E8EA8:
	.INCBIN "baserom.gba", 0x2E8EA8, 0x2E92C0-0x2E8EA8

	.GLOBAL gUnknown_082E92C0
gUnknown_082E92C0:
	.INCBIN "baserom.gba", 0x2E92C0, 0x2E92C8-0x2E92C0

	.GLOBAL gUnknown_082E92C8
gUnknown_082E92C8:
	.INCBIN "baserom.gba", 0x2E92C8, 0x2E94EC-0x2E92C8

	.GLOBAL gUnknown_082E94EC
gUnknown_082E94EC:
	.INCBIN "baserom.gba", 0x2E94EC, 0x2E94F4-0x2E94EC

	.GLOBAL gUnknown_082E94F4
gUnknown_082E94F4:
	.INCBIN "baserom.gba", 0x2E94F4, 0x2E9574-0x2E94F4

	.GLOBAL gUnknown_082E9574
gUnknown_082E9574:
	.INCBIN "baserom.gba", 0x2E9574, 0x2E964C-0x2E9574
