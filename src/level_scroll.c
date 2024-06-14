#include "gba/gba.h"
#include "global.h"
#include "main.h"

void level_scroll_main_callback(void)
{
	process_input();
	if ((gHeldKeys & 0x300) != 0x300)
		gUnknown_030019A0 |= 0x40000000;
	sub_0800CC6C();
	sub_08041F70();
	if (gUnknown_03001A38 == 1)
		gUnknown_03001A38 = sub_0800C5A4();
	else if (gUnknown_03001A38 == 2)
		gUnknown_03001A38 = sub_0800EF30();
	else if (gUnknown_03001A38 == 3)
	{
		gUnknown_03001A38 = sub_0800EF8C();
		if (gUnknown_03001A38 == 0)
		{
			sub_08072118();
			goto_state_080070E8(MAIN_STATE_UNKNOWN_19, 0);
		}
	}
	gUnknown_03000B90.unkC();
	if (gUnknown_03000B90.unk12 == 2)
		sub_0802BEA4(0);
	else
		sub_0802BE50();
}

extern struct OamData gUnknown_082E8900;
extern u8 gfxBackToGame4bpp[0x100];

int add_back_to_game_icon(u16 *oamIndex, u16 *tileNum, u16 *offset)
{
	if (gUnknown_03000B78 != 0)
	{
		DmaCopy32(3, gfxBackToGame4bpp, (void *)(VRAM + 0x10000 + *offset), 0x100);
		DmaCopy32(3, &gUnknown_082E8900, &gOamBuffer[*oamIndex], sizeof(struct OamData));
		gOamBuffer[*oamIndex].tileNum = *tileNum;
		gOamBuffer[*oamIndex].x = 200;
		gOamBuffer[*oamIndex].y = 140;
		gOamBuffer[*oamIndex].priority = 0;
		*tileNum += 8;
		*offset += 0x100;
		*oamIndex += 1;
	}
	// missing return value
}

void level_scroll_init_callback(void)
{
	sub_080720E4();
	sub_08040F54();
	gUnknown_03001A38 = 1;
	sub_08071C24();
	play_sound_effect_08071990(SE_ERASE, 8, 16, 64, 0, 128, 0);
	gUnknown_030019A0 &= ~0x40000000;
	gUnknown_03000B78 = 1;
	gUnknown_03001A00 = 0;
}

void level_scroll_display_callback(void)
{
	u32 oldState = gMainState;

	gMainState = MAIN_STATE_LEVEL_PLAY;
	demo_display_callback();
	gMainState = oldState;
}

void sub_080323E8(void)
{
	gUnknown_03000B78 = 0;
	gUnknown_03001A00 = 1;
	sub_0800F060();
}
