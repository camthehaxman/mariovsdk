#include "gba/gba.h"
#include "global.h"
#include "main.h"

static void main_loop(void);

// 0x08006DF8
void AgbMain(void)
{
    clear_ram();
    gUnknown_03000B64 = 0;
    gUnknown_03000B78 = 0;
    gNextMainState = MAIN_STATE_INIT;
    init_timer_regs();
    main_loop();
}

void sub_08006E28(void)  // unreferenced?
{
    u32 arr[4];

    if ((gHeldKeys & 1) && gUnknown_030009B0.unk8 != 0)
        gUnknown_030009B0.unk10 = 0xFD80;

    gUnknown_030009B0.unk10 = 0;  // wat?
    gUnknown_030009B0.unk12 = 0;

    if (gHeldKeys & DPAD_RIGHT)
        gUnknown_030009B0.unk12 = 0x100;
    else if (gHeldKeys & DPAD_LEFT)
        gUnknown_030009B0.unk12 = 0xFF00;

    if (gHeldKeys & DPAD_UP)
        gUnknown_030009B0.unk10 = 0xFF00;
    else if (gHeldKeys & DPAD_DOWN)
        gUnknown_030009B0.unk10 = 0x100;

    if (gHeldKeys & L_BUTTON)
    {
        gUnknown_030009B0.unk12 = 0xFF00;
        gUnknown_030009B0.unk10 = 0xFF00;
    }
    else if (gHeldKeys & R_BUTTON)
    {
        gUnknown_030009B0.unk12 = 0x100;
        gUnknown_030009B0.unk10 = 0x100;
    }

    arr[0] = gUnknown_030009B0.unk0;
    arr[1] = gUnknown_030009B0.unk4;
    arr[2] = gUnknown_030009B0.unk0 + 0x800;
    arr[3] = gUnknown_030009B0.unk4 + 0x1000;

    if (gUnknown_030009B0.unk12 != 0)
    {
        if (sub_080066FC(arr, gUnknown_030009B0.unk12, 0, 0) != 0)
            gUnknown_030009B0.unk12 = 0;
    }

    gUnknown_030009B0.unk0 += gUnknown_030009B0.unk12;
    arr[0] += gUnknown_030009B0.unk12;
    arr[2] += gUnknown_030009B0.unk12;
    gUnknown_030009B0.unk8 = 0;

    if (gUnknown_030009B0.unk10 != 0)
    {
        if (sub_080066FC(arr, 0, gUnknown_030009B0.unk10, 0) != 0)
            gUnknown_030009B0.unk10 = 0;
    }

    gUnknown_030009B0.unk4 += gUnknown_030009B0.unk10;
    if (gUnknown_030009B0.unk10 > 0x200)
        gUnknown_030009B0.unk10 = 0x200;
    if ((gUnknown_030009B0.unk4 >> 8) > 159)
    {
        gUnknown_030009B0.unk4 = 0;
        gUnknown_030009B0.unk10 = 0;
    }
}

void sub_08006F5C(u32 a, u32 b)
{
    CpuFill16(0, &gUnknown_030009B0, 4);
    gUnknown_030009B0.unk0 = a << 8;
    gUnknown_030009B0.unk4 = b << 8;
}

void sub_08006F90(void)
{
    struct OamData *oam = &gOamBuffer[0];
    s32 x;
    s32 y;

    x = ((gUnknown_030009B0.unk0 >> 8) - gUnknown_03001724 - 4) & 0xFF;
    oam->x = x;
    y = (gUnknown_030009B0.unk4 >> 8) - (u8)gUnknown_030012F4;
    oam->y = y;
    oam->affineMode = 0;
    oam->tileNum = 0;
}

// 0x08006FF0
static void main_loop(void)
{
    gMainState = gNextMainState;
    gUnknown_03000B70 = 0;

    while (1)
    {
        gUnknown_03000020 = gMainState;

        if (gInitCallbacks[gUnknown_03000020] != NULL)
            gInitCallbacks[gUnknown_03000020]();

        if (gMainState == MAIN_STATE_UNKNOWN_19 || gMainState == MAIN_STATE_UNKNOWN_15)
        {
            gMainState = MAIN_STATE_LEVEL_PLAY;
            gUnknown_03000020 = MAIN_STATE_LEVEL_PLAY;
            gNextMainState = MAIN_STATE_LEVEL_PLAY;
        }
        else if (gMainState == MAIN_STATE_TUTORIAL_SETUP)
        {
            gMainState = MAIN_STATE_TUTORIAL;
            gUnknown_03000020 = MAIN_STATE_TUTORIAL;
            gNextMainState = MAIN_STATE_TUTORIAL;
        }

        sub_0801500C(gUnknown_0807846C[gUnknown_03000020]);
        sub_08033EA0(gDisplayCallbacks[gUnknown_03000020]);

        while (gNextMainState == gUnknown_03000020 && gUnknown_03000024 == 0)
        {
            if (gMainCallbacks[gUnknown_03000020] != NULL)
                gMainCallbacks[gUnknown_03000020]();
            sub_08033EE0();
        }

        gUnknown_03000024 = 0;

        if (gUnknown_080783E0[gUnknown_03000020] != NULL)
            gUnknown_080783E0[gUnknown_03000020]();

        gMainState = gNextMainState;
    }
}

void sub_080070E8(s32 a, s32 b)
{
    if (gNextMainState != MAIN_STATE_FADETRANSITION)
    {
        if (gUnknown_03000BB4 != MAIN_STATE_INTRO && a == MAIN_STATE_LEVEL_SELECT)
            a = MAIN_STATE_EWORLD_LEVEL_SELECT;
        if (b == 0)
        {
            gNextMainState = a;
        }
        else
        {
            gUnknown_030009CC = a;
            gUnknown_030009C8 = gNextMainState;
            gNextMainState = MAIN_STATE_FADETRANSITION;
        }

        gUnknown_03000024 = 1;
        gUnknown_030012E8 = gUnknown_03001708 = 0;
    }
}
