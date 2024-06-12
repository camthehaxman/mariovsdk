#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

extern u8 gUnknown_08B30768[];

static inline void someinline(int a, int b, int nextState, int movieID)
{
    gMovieState_030001A0.unk4 = a;
    gMovieState_030001A0.unk5 = b;
    gMovieState_030001A0.nextState = nextState;
    gMovieState_030001A0.movieID = movieID;
    gMovieState_030001A0.unk0 = gUnknown_08B30768;
}

void movie_main_callback(void)
{
    if (gUnknown_03000DCC != 0)
    {
        sub_08029EB4();
        if (gUnknown_03000C28 == 0)
            gUnknown_03000DCC = 0;
    }
    else
        sub_08029C20();
    sub_0805739C(gMovieState_030001A0.unk0);
    sub_0802BE50();
    process_input();
    gMoveFrameCounter_03000B54++;
    if (gUnknown_030009C8 == 4)
    {
        if ((gMovieState_030001A0.unk4 & 1) && (gSomeKeys_030012E8 & (B_BUTTON|START_BUTTON)))
            goto_state_080070E8(gMovieState_030001A0.nextState, 1);
        if (!(gMovieState_030001A0.unk4 & 2))
            goto_state_080070E8(gMovieState_030001A0.nextState, 1);
    }
    else if (gMovieState_030001A0.movieID == 3)
    {
        if ((gMovieState_030001A0.unk4 & 1) && gMoveFrameCounter_03000B54 > 180 && (gSomeKeys_030012E8 & (B_BUTTON|START_BUTTON)))
        {
            someinline(3, 44, MAIN_STATE_LEVEL_SELECT, 4);
            goto_state_080070E8(MAIN_STATE_MOVIE, 1);
        }
        if (!(gMovieState_030001A0.unk4 & 2))
        {
            someinline(3, 44, MAIN_STATE_LEVEL_SELECT, 4);
            goto_state_080070E8(MAIN_STATE_MOVIE, 1);
        }
    }
    else if (gMovieState_030001A0.movieID == 4)
    {
        if ((gMovieState_030001A0.unk4 & 1) && gMoveFrameCounter_03000B54 > 180 && (gSomeKeys_030012E8 & (B_BUTTON|START_BUTTON)))
        {
            if (sub_080148F0(0x400000) != 0)
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
            else
            {
                sub_080148A4(0x400000, 1);
                goto_state_080070E8(MAIN_STATE_WORLD_INTRO, 1);
            }
        }
        if (!(gMovieState_030001A0.unk4 & 2))
        {
            if (sub_080148F0(0x400000) != 0)
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
            else
            {
                sub_080148A4(0x400000, 1);
                goto_state_080070E8(MAIN_STATE_WORLD_INTRO, 1);
            }
        }
    }
    else if (gMovieState_030001A0.movieID == 1)
    {
        if ((gMovieState_030001A0.unk4 & 1) && gMoveFrameCounter_03000B54 > 180 && (gSomeKeys_030012E8 & (B_BUTTON|START_BUTTON)))
        {
            int r1 = sub_08014BB4();

            if (r1 != 0)
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
            else
            {
                gUnknown_03000B58 = r1;
                sub_080148A4(0x1000000, 1);
                goto_state_080070E8(MAIN_STATE_WORLD_INTRO, 1);
            }
        }
        if (!(gMovieState_030001A0.unk4 & 2))
        {
            int r1 = sub_08014BB4();

            if (r1 != 0)
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
            else
            {
                gUnknown_03000B58 = r1;
                sub_080148A4(0x1000000, 1);
                goto_state_080070E8(MAIN_STATE_WORLD_INTRO, 1);
            }
        }
    }
    else if (gMovieState_030001A0.movieID == 0)
    {
        if ((gMovieState_030001A0.unk4 & 1) && gMoveFrameCounter_03000B54 > 5 && (gSomeKeys_030012E8 & (B_BUTTON|START_BUTTON)))
            goto_state_080070E8(gMovieState_030001A0.nextState, 1);
        if (!(gMovieState_030001A0.unk4 & 2))
            goto_state_080070E8(gMovieState_030001A0.nextState, 1);
    }
    else
    {
        if ((gMovieState_030001A0.unk4 & 1) && gMoveFrameCounter_03000B54 > 180 && (gSomeKeys_030012E8 & (B_BUTTON|START_BUTTON)))
            goto_state_080070E8(gMovieState_030001A0.nextState, 1);
        if (!(gMovieState_030001A0.unk4 & 2))
            goto_state_080070E8(gMovieState_030001A0.nextState, 1);
    }
    sub_080082C8();
    sub_0801B310();
}

extern u8 gUnknown_08B32118[];
extern u8 gUnknown_08B30F94[];
extern u8 gUnknown_08B2FFDC[];
extern u8 gUnknown_08B30768[];
extern u8 gUnknown_08B2F5B8[];
extern u8 gUnknown_08B2F070[];
extern u8 gUnknown_08B35FC0[];
extern u8 gUnknown_08B37168[];
extern u8 gUnknown_08B3732C[];
extern u8 gUnknown_08B37424[];

void init_movie_0802D468(u8 arg0, u8 arg1, u8 nextState, u8 movieID)
{
    gMovieState_030001A0.unk4 = arg0;
    gMovieState_030001A0.unk5 = arg1;
    gMovieState_030001A0.nextState = nextState;
    gMovieState_030001A0.movieID = movieID;
    switch (movieID)
    {
    case 0: gMovieState_030001A0.unk0 = gUnknown_08B32118; break;
    case 1: gMovieState_030001A0.unk0 = gUnknown_08B30F94; break;
    case 2: gMovieState_030001A0.unk0 = gUnknown_08B2FFDC; break;
    case 4: gMovieState_030001A0.unk0 = gUnknown_08B30768; break;
    case 5: gMovieState_030001A0.unk0 = gUnknown_08B2F5B8; break;
    case 6: gMovieState_030001A0.unk0 = gUnknown_08B2F070; break;
    case 7: gMovieState_030001A0.unk0 = gUnknown_08B35FC0; break;
    case 3: gMovieState_030001A0.unk0 = gUnknown_08B37168; break;
    case 8: gMovieState_030001A0.unk0 = gUnknown_08B3732C; break;
    case 9: gMovieState_030001A0.unk0 = gUnknown_08B37424; break;
    }
}

void sub_0802D608(void);

void movie_init_callback(void)
{
    arena_restore_head(0);
    sub_0807204C(gMovieState_030001A0.unk5, 128, 1);
    sub_0805727C();
    sub_08057420(gMovieState_030001A0.unk0);
    gUnknown_030009EC = 0;
    gUnknown_0300192C = 0;
    gUnknown_03001930 = 0;
    gMoveFrameCounter_03000B54 = 0;
    gUnknown_03000DCC = 0;
    gUnknown_03000A00 = sub_0802D608;
    sub_08038B18();
    REG_DISPCNT &= 0xFF7F;
}

void movie_display_callback(void)
{
    u16 sp8 = 0;
    u16 spA = gUnknown_03001930;
    u16 spC = gUnknown_0300192C;
    u16 spE = 0;

    DmaFill32(3, 0xA0, gOamBuffer, 0x400);
    sub_080573FC(&sp8, &spA, &spC, &spE, gMovieState_030001A0.unk0);
    DmaCopy32(3, gOamBuffer, (void *)OAM, 0x400);
}

void sub_0802D5FC(void)
{
    sub_08071C24();
}

void sub_0802D608(void)
{
    gMovieState_030001A0.unk4 = 0;
}

extern u8 gUnknown_0807C850[];

void sub_0802D614(struct Struct0802D614 *arg0)
{
    struct Struct0802D614 *r4;
    int r3;

    goto_state_080070E8(MAIN_STATE_CONNECT_EREADER, 0);
    gUnknown_030001C0 = arg0;
    gUnknown_030001B4 = 1;
    *gUnknown_030001BC = 0;
    r4 = gUnknown_030001C0;
    if (r4->unk6 == 1)
    {
        if (sub_08031944(r4) == 2)
            r3 = 6;
        else if (sub_08031944(r4) == 1)
            r3 = 7;
        else
        {
            sub_08031978(r4);
            r3 = 5;
        }
    }
    else
    {
        r3 = sub_0802F090((u8 *)r4 + 16) ? 3 : -1;
    }

    gUnknown_030001B8 = 0;
    if (r3 == -1)
        gUnknown_030001A8 = 4;
    else if (r3 == 3)
        gUnknown_030001A8 = 5;
    else
    {
        gUnknown_030001A8 = 6;
        gUnknown_030001AC = gUnknown_0807C850 + r3 * 40;
        gUnknown_030001B0 = 0;
    }
}
