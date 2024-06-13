#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

extern const u8 gfxPressStartOam[];
extern const u8 gfxPressStart4bpp[];

enum
{
    FADE_UP,
    FADE_DOWN,
};

void title_init_callback(void)
{
    const struct UnkStruct1_sub_child *arr[4];
    struct UnknownStruct15 *var;

    arena_restore_head(0);
    sub_08071CD4();
    gUnknown_03001740 = 0;
    gIntroTitleTimer_03000BE0 = 0;
    gUnknown_030000B0 = -1;
    gUnknown_030012A0 = 0;
    gUnknown_03001710 = 0;
    arr[0] = &gUnknown_08867560;
    arr[1] = &gUnknown_0886A328;
    arr[2] = &gUnknown_0886CFCC;
    arr[3] = NULL;
    something_with_loading_graphics_08032F24(arr, 0);
    var = sub_08006968(&gUnknown_0886CFCC);
    gUnknown_030000A4 = var;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    gUnknown_03000BE4 = 0;
    gUnknown_03000BE8 = 0;
    gMoveFrameCounter_03000B54 = 0;
    if (sub_08071FE4() != 10)
        sub_0807204C(10, 128, 1);
    seed_rng_with_timer();
    set_blend_regs_08029CDC(gUnknown_08867560.bldCnt, gUnknown_08867560.bldAlpha, gUnknown_08867560.bldY);
    load_palette(0, 3);
    gPressStartFadeDir = FADE_UP;
    gTitleScreenFrameCounter = 3;
    gPressStartOpacity = 0;
}

void title_main_callback(void)
{
    u32 arr[2];  // could possibly be a struct?
    u32 r0;
    u32 r6;

    process_input();
    sub_08029C20();
    if (gUnknown_030000AC == 0 && gUnknown_03000C28 == 0 && gUnknown_030000B0 == -1)
        gUnknown_030000B0 = play_sound_effect_08071990(229, 8, 16, 64, 0, 128, 0);
    if (gIntroTitleTimer_03000BE0 > 5)
        REG_DISPCNT = 0x1740;
    arr[0] = 0;
    arr[1] = 13;
    sub_080064D4(arr, gUnknown_030000A4->unk108[gUnknown_0807956C[gUnknown_03000BE4]], gUnknown_0886CFCC.vramAddr40[2], 5);
    arr[0] = 22;
    arr[1] = 0;
    sub_080064D4(arr, gUnknown_030000A4->unk108[gUnknown_08079698[gUnknown_03000BE8] + 3], gUnknown_0886CFCC.vramAddr40[2], 5);
    if (gUnknown_03000BE4 < 299)
        gUnknown_03000BE4++;
    else
        gUnknown_03000BE4 = 0;
    if (gUnknown_03000BE8 < 209)
        gUnknown_03000BE8++;
    else
        gUnknown_03000BE8 = 0;
    if (gIntroTitleTimer_03000BE0 > 1280)
    {
        if (gUnknown_03000B64 > 7 || gUnknown_03000B64 < 0)
            gUnknown_03000B64 = 0;
        sub_08071E14(229);
        if (gUnknown_0807954C[gUnknown_03000B64].unk0 != 0)
        {
            init_movie_0802D468(3, 23, MAIN_STATE_TITLE_SCREEN, 0);
            goto_state_080070E8(30, 1);
        }
        else
        {
            gUnknown_03000B80 = 0;
            gUnknown_03000B58 = gUnknown_0807954C[gUnknown_03000B64].unk1;
            sub_0800F744(gUnknown_03000B58);
            sub_08004428(gUnknown_03000B90.unk0->unk4);
            goto_state_080070E8(2, 1);
            gUnknown_030012F8 = 0;
        }
        gUnknown_03000B64++;
        gUnknown_03000B64 = (gUnknown_03000B64 < 8) ? gUnknown_03000B64 : 0;
    }
    if (gUnknown_03000C28 == 0 && sub_080721A8(gUnknown_030000B0) != 0)
    {
        if (sub_08034004() != 0 && !(gSomeKeys_030012E8 & 2) && !(gHeldKeys & 2))
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            goto_state_080070E8(3, 1);
            gUnknown_03000BD0 = 1;
        }
        sub_0801B88C();
    }
    sub_08008238();
    gIntroTitleTimer_03000BE0++;
    gIntroTitleTimer_03000BE0 &= 0xFFFF;
}

void sub_0801B88C(void)
{
    REG_BLDCNT = BLDCNT_BG0_FIRST | BLDCNT_OBJ_FIRST
               | BLDCNT_BG0_SECOND | BLDCNT_BG1_SECOND | BLDCNT_BG2_SECOND | BLDCNT_BG3_SECOND
               | BLDCNT_EFF_ALPHA;
    REG_BLDALPHA = ((15 - gPressStartOpacity) << 8) | gPressStartOpacity;

    if (gTitleScreenFrameCounter > 0)
    {
        gTitleScreenFrameCounter--;
    }
    else
    {
        gTitleScreenFrameCounter = 3;
        if (gPressStartFadeDir == FADE_DOWN)
        {
            gPressStartOpacity--;
            if (gPressStartOpacity == 0)
            {
                gPressStartFadeDir = FADE_UP;
                gPressStartOpacity = 0;  // It's already zero
            }
        }
        else if (gPressStartFadeDir == FADE_UP)
        {
            gPressStartOpacity++;
            if (gPressStartOpacity >= 11)
            {
                gPressStartOpacity = 11;
                gPressStartFadeDir = 2;
            }
        }
        else
        {
            gPressStartFadeDir = FADE_DOWN;
        }
    }
}

void title_display_callback(void)
{
    gMoveFrameCounter_03000B54++;
    DmaFill32(3, 0xA0, gOamBuffer, 0x400);
    if (gUnknown_03000C28 == 0 && sub_080721A8(gUnknown_030000B0) != 0)
    {
        u8 var;

        DmaCopy32(3, gfxPressStartOam, gOamBuffer, 8);
        DmaCopy32(3, gfxPressStart4bpp, (void *)(VRAM + 0x10000), 0x200);
        gOamBuffer[0].tileNum = 0;
        gOamBuffer[0].x = 204;
        gOamBuffer[0].y = 124;
        gOamBuffer[0].paletteNum = 0;
        gOamBuffer[0].objMode = 1;
        gOamBuffer[0].priority = 1;
    }
    DmaCopy32(3, gOamBuffer, (void *)OAM, 0x400);
}
