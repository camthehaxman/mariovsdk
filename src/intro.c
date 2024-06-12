#include "gba/gba.h"
#include "global.h"
#include "main.h"

void intro_init_callback(void)
{
    const void *arr[4];

    gIntroTitleTimer_03000BE0 = 0;
    gUnknown_03000BD0 = 0;
    gUnknown_030012A0 = 0;
    gUnknown_03001710 = 0;
    arr[0] = &gUnknown_08866A48;
    arr[1] = NULL;
    arr[2] = NULL;
    arr[3] = NULL;
    something_with_loading_graphics_08032F24(arr, 0);
    REG_BLDCNT = gUnknown_08866A48.bldCnt;
    REG_BLDALPHA = gUnknown_08866A48.bldAlpha;
    REG_BLDY = gUnknown_08866A48.bldY;
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    REG_DISPCNT = 0x100;
    gMoveFrameCounter_03000B54 = 0;
    sub_08029CDC(gUnknown_08866A48.bldCnt, gUnknown_08866A48.bldAlpha, gUnknown_08866A48.bldY);
}

void sub_0801BA6C(void)
{
    REG_BLDALPHA = 0;
    REG_BLDCNT = 0;
    gUnknown_030000AC = 1;
}

void intro_main_callback(void)
{
    sub_08029C20();
    gIntroTitleTimer_03000BE0++;
    if (gIntroTitleTimer_03000BE0 > 180)
    {
        init_movie_0802D468(3, 23, MAIN_STATE_TITLE_SCREEN, 0);
        gNextMainState = MAIN_STATE_MOVIE;
    }
    sub_08008238();
    gIntroTitleTimer_03000BE0 &= 0xFFFF;
}

void intro_display_callback(void)
{
    gMoveFrameCounter_03000B54++;
}

void sub_0801BAD4(void)
{
}

asm(".align 2, 0");
