#include "gba/gba.h"
#include "global.h"
#include "main.h"

struct Struct08032D50
{
    u8 filler0[0x40];
    u32 unk40;
    u8 filler44[0x4E - 0x44];
    u16 unk4E;
    u16 unk50;
    u16 unk52;
    u16 unk54;
    u16 unk56;
};

extern u32 gPaletteIndices_0807DD34[];
extern u32 gUnknown_0807DD4C[];
extern u32 gUnknown_0807DD64[];
extern u32 gUnknown_0807DD7C[];

u32 load_bg_tilemap_08032E24(struct GraphicsConfig *arg0, int arg1, int arg2);
void load_gfx_to_vram_08034790(void *, void *, int);
void sub_0801B3DC(struct GraphicsConfig *, int, int);
void sub_0802C0B8(struct GraphicsConfig *);
void copy_some_palette_08032E80(struct GraphicsConfig *arg0);

u16 setup_graphics_08032814(struct UnkStruct1 *arg0, int arg1)
{
    u16 dispcnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    int i;
    struct UnkStruct1_sub *r4;
    struct GraphicsConfig *r2;

    gUnknown_030012A4 = 0;
    gUnknown_030012EC = 0;
    reset_some_array_0801B3C0();

    for (i = 0; i < 4; i++)
    {
        volatile u16 *bgReg;

        r4 = &arg0->unk0[arg0->unk20[i]];
        if (r4->unk0 != NULL)
        {
            dispcnt |= load_bg_tilemap_08032E24(r4->unk0, i, i + 1) << 8;
            bgReg = &((volatile u16 *)REG_ADDR_BG0CNT)[i];
            // init BGCNT
            *bgReg = r4->unk0->bgCnt[i];
            // set priority if specified
            if (arg0->bgPrio[i] != 0)
                *bgReg = (*bgReg & ~3) | ((arg0->bgPrio[i] - 1) & 3);
        }
    }

    for (i = 0; i < 4; i++)
    {
        struct GraphicsConfig *config;

        r4 = &arg0->unk0[i];
        config = r4->unk0;
        if (config != NULL && config->gfxOffset != 0)
        {
            u8 bgNum = r4->bgNum;
            struct UnkStruct1_sub *r5 = &arg0->unk0[arg0->unk20[r4->bgNum]];
            volatile u16 *bgReg = &((volatile u16 *)REG_ADDR_BG0CNT)[r4->bgNum];

            if (r5->unk0 == NULL)
                r5 = &arg0->unk0[i];

            if (r4->unk7 != 0)
            {
                bgNum = r4->unk7 - 1;
                // clear CHARBASE field
                *bgReg = (*bgReg & ~0xC) | (config->bgCnt[bgNum] & 0xC);
            }

            config = r4->unk0;
            gUnknown_03000E88 = (u8 *)config + config->gfxOffset;
            // Load tiles
            load_gfx_to_vram_08034790(gUnknown_03000E88 + 4, r5->unk0->vramAddr50[bgNum] + config->unk2C * 0x40, TRUE);

            // set color mode
            {
                u16 reg = *bgReg & ~BGCNT_256COLOR;
                reg |= (r4->unk0->bgCnt[r4->bgNum] & BGCNT_256COLOR);
                *bgReg = reg;
            }

            if (r4->unk6 == 0)
            {
                sub_0801B3DC(r4->unk0, !(r4->unk0->bgCnt[bgNum] & BGCNT_256COLOR), bgNum);
            }
        }
    }

    r4 = &arg0->unk0[arg0->unk20[arg0->unk32]];
    r2 = r4->unk0;
    if (r2 != NULL)
    {
        gUnknown_030012E4 = r2->unk2E;
        if (r2->unkOffsets[arg0->unk32] == 0)
        {
        }
        else if (r2->unkOffsets[arg0->unk32] > 0)
        {
            struct UnkStruct1_sub_child_data *r2_ = (void *)((u8 *)r2 + r2->unkOffsets[arg0->unk32]);
            gUnknown_03001720 = r2_->unk4;
            gUnknown_0300170C = r2_->unk6;
            gUnknown_030012A4 = gUnknown_03000E70[1]->unk8;
            gUnknown_030012EC = gUnknown_03000E70[1]->unkC;
        }
    }

    if (arg0->unk28 != 0)
    {
        struct GraphicsConfig *r2 = arg0->unk0[arg0->unk20[arg0->unk2C]].unk0;
        struct GraphicsConfig *r5 = arg0->unk0[arg0->unk2D].unk0;

        gSomeVRAMAddr_03000E80 = r2->bgVramMapAddrs[arg0->unk2C];
        gSomeVRAMAddr_03000E90 = r2->bgVramMapAddrs[arg0->unk2C - 1];
        gUnknown_03000E60 = r5->unk2C;
        if (!(r5->bgCnt[0] & BGCNT_256COLOR))
            *(vu16 *)&gUnknown_03000E60 <<= 1;
        if (arg0->unk33 & 2)
        {
            sub_08004428(arg0->unk28);
            sub_080041B8(r5);
            sub_08006968(r5);
            sub_08004634(1);
        }
        else
            sub_08006388();
    }
    sub_0802C0B8(arg0->unk0[arg0->unk30].unk0);
    sub_0802BCA4(arg0->unk0[arg0->unk2F].unk0, arg1);
    if (arg0->unk2E >= 0)
        copy_some_palette_08032E80(arg0->unk0[arg0->unk2E].unk0);
    // init blend regs
    if (arg0->unk33 & 1)
    {
        struct GraphicsConfig *config;
        config = arg0->unk0[arg0->unk31].unk0;
        if (config != NULL)
        {
            if (gUnknown_03000B90.unk12 != 2 || (gUnknown_030009D0 & 0x10))
                set_blend_regs_08029CDC(config->bldCnt, config->bldAlpha, config->bldY);
            else
                set_blend_regs_08029CDC(config->bldCnt | BLDCNT_EFF_ALPHA, config->bldAlpha, config->bldY);
        }
    }
    return dispcnt;
}

void sub_08032B30(s16 arg0, s16 arg1)
{
    if (gUnknown_03000B80 == 0)
    {
        if (gMainState == MAIN_STATE_TUTORIAL)
        {
            if (arg0 <= 5)
                load_predefined_palette(gPaletteIndices_0807DD34[arg1], 1);
            else
                load_predefined_palette(gUnknown_0807DD4C[arg1], 1);
        }
        else
        {
            if (arg0 <= 11)
                load_predefined_palette(gPaletteIndices_0807DD34[arg1], 1);
            else if (arg0 == 12)
                load_predefined_palette(gUnknown_0807DD4C[arg1], 1);
            else if (arg0 == 13)
                load_predefined_palette(gUnknown_0807DD64[arg1], 1);
        }
    }
    else if (gUnknown_03000B80 == 1)
    {
        if (arg0 <= 5)
            load_predefined_palette(gUnknown_0807DD7C[arg1], 1);
        else if (arg1 == 2)
            load_predefined_palette(58, 1);
        else
            load_predefined_palette(gUnknown_0807DD64[arg1], 1);
    }
    else if (gUnknown_03000B80 == 2)
        load_predefined_palette(gPaletteIndices_0807DD34[arg1], 1);
    else if (gUnknown_03000B80 == 3)
        load_predefined_palette(gUnknown_0807DD7C[arg1], 1);
    else if (gUnknown_03000B80 == 4)
        load_predefined_palette(62, 1);
    else if (gUnknown_03000B80 == 5)
        load_predefined_palette(63, 1);
}

int sub_08032C44(struct UnknownStruct4 *arg0)
{
    struct UnkStruct1 sp0 = {0};
    struct UnknownStruct5 *r6 = arg0->unk0;
    struct GraphicsConfig *r7 = r6->unk0;

    sp0.unk0[0].unk0 = r7;
    sp0.unk0[0].bgNum = 2;
    sp0.unk0[1].unk0 = arg0->unk4;
    sp0.unk0[1].bgNum = 1;
    sp0.unk33 |= 1;
    sp0.unk2E = 0;
    sp0.unk20[3] = 0;
    sp0.unk20[2] = 0;
    sp0.unk20[1] = 0;
    sp0.unk20[0] = 0;
    sp0.unk0[2].bgNum = 0;
    sp0.unk0[2].unk0 = arg0->unk4;
    sp0.unk0[2].unk6 = 1;
    if (gUnknown_030009D0 & 0x18)
    {
        sp0.bgPrio[0] = 0;
        sp0.unk20[0] = 0;
        sp0.unk0[2].bgNum = 0;
        sp0.unk0[2].unk0 = r7;
        sp0.unk0[2].unk7 = 4;
        sp0.unk0[2].unk6 = 1;
    }
    switch (arg0->unk8->unk6)
    {
    case 0:
        break;
    case 1:
        sp0.bgPrio[2] = 2;
        sp0.bgPrio[3] = 4;
        if (gUnknown_030009D0 & 0x18)
            sp0.bgPrio[0] = 3;
    }
    sp0.unk28 = r6->unk4;
    sp0.unk2C = 1;
    sp0.unk2D = 1;
    REG_DISPCNT |= setup_graphics_08032814(&sp0, (gUnknown_03000B90.unk12 == 2) ? 1 : 0);
    sub_08032B30(arg0->unk10, arg0->unk12);
    return sub_080319BC(arg0->unk4, r6, arg0->unk12);
}

void sub_08032D50(struct Struct08032D50 *arg0)
{
    u8 i;

    if (arg0->unk4E & DISPCNT_BG0_ON)
        REG_BG0CNT = arg0->unk50;
    if (arg0->unk4E & DISPCNT_BG1_ON)
    {
        REG_BG1CNT = arg0->unk52;
        REG_BG1CNT &= ~3;
        REG_BG1CNT |= BGCNT_PRIORITY(2);
    }
    if (arg0->unk4E & DISPCNT_BG2_ON)
    {
        REG_BG2CNT = arg0->unk54;
        REG_BG2CNT &= ~3;
        REG_BG2CNT |= BGCNT_PRIORITY(1) | BGCNT_WRAP;
    }
    if (arg0->unk4E & DISPCNT_BG3_ON)
        REG_BG3CNT = arg0->unk56;
    REG_DISPCNT = arg0->unk4E;
    for (i = 0; i < 4; i++)
    {
    }
    if (arg0->unk40 != 0)
        gUnknown_03000E94 = (u8 *)arg0 + arg0->unk40 * 0x6C;
}

// Loads the tilemaps for the specified BGs (from start to end)
// Returns BG enable flags for DISPCNT
u32 load_bg_tilemap_08032E24(struct GraphicsConfig *config, int start, int end)
{
    u8 *base = (u8 *)config;
    u32 dispcnt = 0;
    int i;

    for (i = start; i < end; i++)
    {
        if (config->unkOffsets[i] > 0)
        {
            dispcnt |= 1 << i;
            gUnknown_03000E70[i] = (struct UnkStruct1_sub_child_data *)(base + config->unkOffsets[i]);
            // load tilemap
            load_gfx_to_vram_08034790((u8 *)gUnknown_03000E70[i] + 0x28, config->bgVramMapAddrs[i], 1);
        }
    }
    return dispcnt;
}

void copy_some_palette_08032E80(struct GraphicsConfig *arg0)
{
    u8 *src;
    register u8 *src_ asm("r0");
    register void *dest asm("r1");

    if (arg0->palOffset != 0)
    {
        gPaletteData_03000E8C = (u8 *)arg0 + arg0->palOffset;
        src = gPaletteData_03000E8C + 4;
        src_ = src;
        dest = (void *)PLTT;
        CpuCopy16(src_, dest, 0x200);
        sub_0802C104(0, 0, src);
    }
}

int sub_08032EB4(void)
{
    return 0;
}

u16 load_graphics_config_bg2_08032EB8(struct GraphicsConfig *arg0)
{
    struct UnkStruct1 sp0 = {0};

    sp0.unk0[0].unk0 = arg0;
    sp0.unk0[0].bgNum = 2;
    return setup_graphics_08032814(&sp0, 0);
}

u16 load_graphics_config_08032EE4(struct GraphicsConfig *arg0)
{
    struct UnkStruct1 sp0 = {0};
    int i;
    struct GraphicsConfig *temp = arg0;

    for (i = 0; i < 4; i++)
    {
        sp0.unk0[i].unk0 = temp;
        sp0.unk0[0].bgNum = i;
        sp0.unk20[i] = i;
    }
    return setup_graphics_08032814(&sp0, 0);
}

u16 something_with_loading_graphics_08032F24(const struct GraphicsConfig *arg0[4], int arg1)
{
    struct UnkStruct1 sp0 = {0};
    int i;

    for (i = 0; i < 4; i++)
    {
        sp0.unk0[i].bgNum = i;
        sp0.unk0[i].unk0 = arg0[i];
        sp0.unk20[i] = i;
    }
    sp0.unk2E = arg1;
    return setup_graphics_08032814(&sp0, 0);
}

void sub_08032F68(void)
{
    clear_graphics_memory();
    sub_0802BCA4(0, 0);
    sub_0802C1B0();
    REG_IE = 1;
    sub_0802BF28();
    REG_DISPSTAT = 8;
    REG_IE |= 4;
    REG_DISPSTAT |= 0x20;
    REG_IME = 1;
}

void clear_oam_and_buffer(void)
{
    int i;
    struct OamData *oam = gOamBuffer;
    u16 *ptr = (u16 *)oam;

    for (i = 0; i < 32; i++)
    {
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
    }
    CpuCopy16(oam, (void *)OAM, OAM_SIZE);
}

void sub_08033024(void)
{
    if (gSomeKeys_030012E8 == START_BUTTON || gSomeKeys_030012E8 == B_BUTTON)
    {
        goto_state_080070E8(12, 1);
        gUnknown_030012F8 = 0;
        gHeldKeys = 0;
        gSomeKeys_030012E8 = 0;
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        return;
    }

    if (gUnknown_03001A1C & 0x2000)
    {
        if (gUnknown_0807DD94[0] > gUnknown_030012F8)
        {
            gSomeKeys_030012E8 = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 0];
            gHeldKeys = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 1];
            if ((gHeldKeys & L_BUTTON) && (gSomeKeys_030012E8 & DPAD_UP))
            {
                goto_state_080070E8(18, 0);
                gUnknown_030012F8 = 0;
                gHeldKeys = 0;
                gSomeKeys_030012E8 = 0;
                gUnknown_030019A0 |= 0x200000;
                gUnknown_03001744 = 1;
            }
            else
            {
                sub_0806D1AC(gSomeKeys_030012E8, gHeldKeys);
                if (gUnknown_03001938 & 0x800)
                {
                    sub_0800EE70();
                }
                else
                {
                    gUnknown_030012F8++;
                }
            }
        }
        else
        {
            goto_state_080070E8(6, 0);
            gUnknown_030012F8 = 0;
            gHeldKeys = 0;
            gSomeKeys_030012E8 = 0;
        }
    }
}

void sub_08033148(void)
{
    if (gSomeKeys_030012E8 == START_BUTTON || gSomeKeys_030012E8 == B_BUTTON)
    {
        goto_state_080070E8(7, 1);
        gUnknown_030012F8 = 0;
        gHeldKeys = 0;
        gSomeKeys_030012E8 = 0;
        play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
        return;
    }

    if (gUnknown_03001A1C & 0x2000)
    {
        if (gUnknown_0807DD94[0] > gUnknown_030012F8)
        {
            gSomeKeys_030012E8 = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 0];
            gHeldKeys = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 1];
            gUnknown_030012F8++;
        }
        else
        {
            goto_state_080070E8(7, 1);
            gUnknown_030012F8 = 0;
            gHeldKeys = 0;
            gSomeKeys_030012E8 = 0;
        }
    }

}

// possibly sub_08034154
static inline u16 inline_1(void)
{
    if (gUnknown_03000B80 == 5)
        return sub_0806C2C4();
    else
        return 0;
}

// possibly sub_08034178
static inline bool32 inline_2(void)
{
    if ((gHeldKeys & START_BUTTON) &&  (gHeldKeys & SELECT_BUTTON) && (gHeldKeys & A_BUTTON) && (gHeldKeys & B_BUTTON)
     && gMainState != MAIN_STATE_TITLE_SCREEN && gMainState != MAIN_STATE_INIT)
    {
        goto_state_080070E8(7, 1);
        gUnknown_03000B80 = 0;
        gUnknown_03000B58 = 0;
        gUnknown_03000B74 = 0;
        gUnknown_03000BB4 = 0;
        sub_080720AC();
        sub_08071C24();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

void process_input(void)
{
    struct KeyInput keyInput = {.keys = ~REG_KEYINPUT};
    u16 keys;
    u32 r4;
    bool16 r3_2;

    keys = keyInput.keys;
    if (gMainState == MAIN_STATE_TUTORIAL || gMainState == MAIN_STATE_DEMO)
        gHeldKeys = gUnknown_030002AA;
    r4 = gUnknown_03001938;
    if (r4 & 0x400)
    {
        gSomeKeys_030012E8 = keys & ~gHeldKeys;
        gHeldKeys = keys;

        if ((keys & (START_BUTTON | SELECT_BUTTON)) == (START_BUTTON | SELECT_BUTTON) && (keys & A_BUTTON) && (keys & B_BUTTON) && gMainState != MAIN_STATE_TITLE_SCREEN)
        {
            gUnknown_03001938 = r4 & ~0x400;
        }
        else
        {
            u16 r2 = inline_1();

            gSomeKeys_030012E8 = r2 & ~gHeldKeys;
            gHeldKeys = r2;
        }

    }
    else
    {
        gSomeKeys_030012E8 = keys & ~gHeldKeys;
        gHeldKeys = keys;
        if (gUnknown_03001740 == 0 && gSomeKeys_030012E8 == 0 && keys == 0)
            gUnknown_03001740 = 1;
    }

    r3_2 = inline_2();
    if (r3_2 == 0)
    {
        s32 i;

        if (gMainState == MAIN_STATE_TUTORIAL)
        {
            gUnknown_030002AA = gHeldKeys;
            sub_08033024();
        }
        else if (gMainState == MAIN_STATE_DEMO)
        {
            gUnknown_030002AA = gHeldKeys;
            sub_08033148();
        }
        else if (gUnknown_03000C28 != 0)
        {
            gSomeKeys_030012E8 = gHeldKeys = 0;
        }
        else if (gMainState == MAIN_STATE_LEVEL_PLAY)
        {
            if (gMoveFrameCounter_03000B54 <= 10)
            {
                gSomeKeys_030012E8 = gHeldKeys = 0;
            }
        }
        gUnknown_03001708 = 0;

        for (i = 0; i < 16; i++)
        {
            u16 r3 = 1 << i;

            if (gSomeKeys_030012E8 & r3)
                gUnknown_03001708 |= r3;
            if ((u16)gHeldKeys & r3)
            {
                gUnknown_030012B0[i]--;
                if (gUnknown_030012B0[i] == 0)
                {
                    gUnknown_030012B0[i] = 6;
                    gUnknown_03001708 |= r3;
                }
            }
            else
            {
                gUnknown_030012B0[i] = 20;
            }
        }
    }
}

void sub_08033440(void)
{
    if (gUnknown_030012A0 < 0)
        gUnknown_030012A0 = 0;
    if ((gUnknown_030012A0 >> 1) + 240 >= gUnknown_03001720)
        gUnknown_030012A0 = ((u16)gUnknown_03001720 - 240) * 2;

    if (gUnknown_03001710 < 0)
        gUnknown_03001710 = 0;
    if ((gUnknown_03001710 >> 1) + 160 >= gUnknown_0300170C)
        gUnknown_03001710 = ((u16)gUnknown_0300170C - 160) * 2;

    gUnknown_03001724 = gUnknown_030012A0 >> 1;
    gUnknown_030012F4 = gUnknown_03001710 >> 1;
}

#ifdef NONMATCHING
void sub_080334C4(s32 a)
{
    s32 r1 = gUnknown_030002C0.unk0;
    s32 r5 = gUnknown_030002C0.unk4;

    if (gUnknown_030002B0.unk0 == r1)
    {
        gUnknown_030002C8.unk0 = 0;
    }
    else
    {
        gUnknown_030002B8.unk0 = r1;
        if (gUnknown_030002B8.unk0 < 0)
            gUnknown_030002B8.unk0 = 0;
        if ((gUnknown_030002B8.unk0 >> 8) + 240 >= gUnknown_03001720)
            gUnknown_030002B8.unk0 = (gUnknown_03001720 - 240) << 8;
        gUnknown_030002C8.unk0 = (gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0) / a;
        asm("");
    }

    if (gUnknown_030002B0.unk4 == r5)
    {
        gUnknown_030002C8.unk4 = 0;
    }
    else
    {
        gUnknown_030002B8.unk4 = r5;
        if (gUnknown_030002B8.unk4 < 0)
            gUnknown_030002B8.unk4 = 0;
        if ((gUnknown_030002B8.unk4 >> 8) + 160 >= gUnknown_0300170C)
            gUnknown_030002B8.unk4 = (gUnknown_0300170C - 160) << 8;
        gUnknown_030002C8.unk4 = (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4) / a;
    }
}
#else
__attribute__((naked))
void sub_080334C4(s32 a)
{
    asm("push {r4-r6,lr}\n\
	add r6, r0, #0\n\
	ldr r0, _080334E0  @ =gUnknown_030002C0\n\
	ldr r1, [r0]\n\
	ldr r5, [r0, #4]\n\
	ldr r3, _080334E4  @ =gUnknown_030002B0\n\
	ldr r0, [r3]\n\
	cmp r0, r1\n\
	bne _080334EC\n\
	ldr r1, _080334E8  @ =gUnknown_030002C8\n\
	mov r0, #0\n\
	str r0, [r1]\n\
	b _08033520\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080334E0:\n\
	.4byte gUnknown_030002C0\n\
_080334E4:\n\
	.4byte gUnknown_030002B0\n\
_080334E8:\n\
	.4byte gUnknown_030002C8\n\
_080334EC:\n\
	ldr r2, _08033530  @ =gUnknown_030002B8\n\
	str r1, [r2]\n\
	cmp r1, #0\n\
	bge _080334F8\n\
	mov r0, #0\n\
	str r0, [r2]\n\
_080334F8:\n\
	ldr r0, [r2]\n\
	asr r0, r0, #8\n\
	add r0, r0, #240\n\
	ldr r1, _08033534  @ =gUnknown_03001720\n\
	mov r4, #0\n\
	ldrsh r1, [r1, r4]\n\
	cmp r0, r1\n\
	blt _08033510\n\
	add r0, r1, #0\n\
	sub r0, r0, #240\n\
	lsl r0, r0, #8\n\
	str r0, [r2]\n\
_08033510:\n\
	ldr r4, _08033538  @ =gUnknown_030002C8\n\
	ldr r0, [r2]\n\
	ldr r1, [r3]\n\
	sub r0, r0, r1\n\
	add r1, r6, #0\n\
	bl __divsi3\n\
	str r0, [r4]\n\
_08033520:\n\
	ldr r3, _0803353C  @ =gUnknown_030002B0\n\
	ldr r0, [r3, #4]\n\
	cmp r0, r5\n\
	bne _08033540\n\
	ldr r1, _08033538  @ =gUnknown_030002C8\n\
	mov r0, #0\n\
	str r0, [r1, #4]\n\
	b _08033574\n\
_08033530:\n\
	.4byte gUnknown_030002B8\n\
_08033534:\n\
	.4byte gUnknown_03001720\n\
_08033538:\n\
	.4byte gUnknown_030002C8\n\
_0803353C:\n\
	.4byte gUnknown_030002B0\n\
_08033540:\n\
	ldr r2, _0803357C  @ =gUnknown_030002B8\n\
	str r5, [r2, #4]\n\
	cmp r5, #0\n\
	bge _0803354C\n\
	mov r0, #0\n\
	str r0, [r2, #4]\n\
_0803354C:\n\
	ldr r0, [r2, #4]\n\
	asr r0, r0, #8\n\
	add r0, r0, #160\n\
	ldr r1, _08033580  @ =gUnknown_0300170C\n\
	mov r4, #0\n\
	ldrsh r1, [r1, r4]\n\
	cmp r0, r1\n\
	blt _08033564\n\
	add r0, r1, #0\n\
	sub r0, r0, #160\n\
	lsl r0, r0, #8\n\
	str r0, [r2, #4]\n\
_08033564:\n\
	ldr r4, _08033584  @ =gUnknown_030002C8\n\
	ldr r0, [r2, #4]\n\
	ldr r1, [r3, #4]\n\
	sub r0, r0, r1\n\
	add r1, r6, #0\n\
	bl __divsi3\n\
	str r0, [r4, #4]\n\
_08033574:\n\
	pop {r4-r6}\n\
	pop {r0}\n\
	bx r0\n\
	.byte 0x00\n\
	.byte 0x00\n\
_0803357C:\n\
	.4byte gUnknown_030002B8\n\
_08033580:\n\
	.4byte gUnknown_0300170C\n\
_08033584:\n\
	.4byte gUnknown_030002C8\n");
}
#endif

void sub_08033588(int a, int b, int c)
{
    if (gUnknown_030002B0.unk0 == a)
    {
        gUnknown_030002C8.unk0 = 0;
        gUnknown_030002B8.unk0 = a;
    }
    else
    {
        gUnknown_030002B8.unk0 = a;
        if (gUnknown_030002B8.unk0 < 0)
            gUnknown_030002B8.unk0 = 0;
        if ((gUnknown_030002B8.unk0 >> 8) + DISPLAY_WIDTH >= gUnknown_03001720)
            gUnknown_030002B8.unk0 = (gUnknown_03001720 - DISPLAY_WIDTH) << 8;
        if (gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0 > 0)
            gUnknown_030002C8.unk0 = c;
        else
            gUnknown_030002C8.unk0 = -c;
    }

    if (gUnknown_030002B0.unk4 == b)
    {
        gUnknown_030002C8.unk4 = 0;
        gUnknown_030002B8.unk4 = b;
    }
    else
    {
        gUnknown_030002B8.unk4 = b;
        if (gUnknown_030002B8.unk4 < 0)
            gUnknown_030002B8.unk4 = 0;
        if ((gUnknown_030002B8.unk4 >> 8) + DISPLAY_HEIGHT >= gUnknown_0300170C)
            gUnknown_030002B8.unk4 = (gUnknown_0300170C - DISPLAY_HEIGHT) << 8;
        if (gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4 > 0)
            gUnknown_030002C8.unk4 = c;
        else
            gUnknown_030002C8.unk4 = -c;
    }
}

/*
int sub_08033658(void)
{
    int r7 = 0;
    int r2;
    int r6;
    
    r2 = gUnknown_030002B8.unk0 - gUnknown_030002B0.unk0;
    if (r2 < 0)
        r2 = gUnknown_030002B0.unk0 - gUnknown_030002B8.unk0;
    r6 = gUnknown_030002B8.unk4 - gUnknown_030002B0.unk4;
    if (r6 < 0)
        r6 = gUnknown_030002B0.unk4 - gUnknown_030002B8.unk4;
    //_0803367E
    if (gUnknown_030002B0.unk0 != gUnknown_030002B8.unk0)
    {
        int r1 = gUnknown_030002C8.unk0;
        if (r1 < 0)
            r1 = -r1;
        if (r2 > r1 && r2 > 255)
            gUnknown_030002C8.unk0 += gUnknown_030002B0.unk0;
        else
            gUnknown_030002B0.unk0 = gUnknown_030002B8.unk0;
    }
    //_080336AA
    else
        r7 = 1;
    //_080336AC
    if (gUnknown_030002B0.unk4 != gUnknown_030002B8.unk4)
    {
        int r1 = gUnknown_030002C8.unk4;
        if (r1 < 0)
            r1 = -r1;
        if (r6 > r1 && r6 > 255)
            gUnknown_030002C8.unk4 += gUnknown_030002B0.unk4;
        else
            gUnknown_030002B0.unk4 = gUnknown_030002B8.unk4;
    }
    //_080336D6
    else
        r7++;
    //_080336D8
    gUnknown_030012A0 = (gUnknown_030002B0.unk0 >> 7);
    gUnknown_03001710 = (gUnknown_030002B0.unk4 >> 7);
    sub_08033440();
    return r7 == 2;
}
*/
asm(".align 2, 0");
