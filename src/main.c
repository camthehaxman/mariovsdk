#include "gba/gba.h"
#include "global.h"
#include "main.h"

static void main_loop(void);

void (*gInitCallbacks[])(void) =
{
    intro_init_callback,
    credits_init_callback,
    demo_init_callback,
    file_select_init_callback,
    option_menu_init_callback,
    demo_init_callback,
    state6_init_callback,
    title_init_callback,
    level_select_init_callback,
    expert_level_select_init_callback,
    state10_init_callback,
    state11_init_callback,
    state12_init_callback,
    state13_init_callback,
    respawn_init_callback,
    NULL,
    pause_init_callback,
    help_init_callback,
    respawn_init_callback,
    NULL,
    clear_gameover_init_callback,
    level_results_init_callback,
    bonus_stoparrow_init_callback,
    bonus_swapboxes_init_callback,
    state24_init_callback,
    state25_init_callback,
    state26_27_init_callback,
    state26_27_init_callback,
    state28_init_callback,
    state29_init_callback,
    movie_init_callback,
    fadetransition_init_callback,
    world_intro_init_callback,
    level_scroll_init_callback,
    init_init_callback,
};

void (*gMainCallbacks[])(void) =
{
    intro_main_callback,
    credits_main_callback,
    demo_main_callback,
    file_select_main_callback,
    option_menu_main_callback,
    demo_main_callback,
    demo_main_callback,
    title_main_callback,
    level_select_main_callback,
    expert_level_select_main_callback,
    state10_11_main_callback,
    state10_11_main_callback,
    NULL,
    state13_15_main_callback,
    respawn_main_callback,
    state13_15_main_callback,
    pause_main_callback,
    help_main_callback,
    respawn_main_callback,
    NULL,
    clear_gameover_main_callback,
    level_results_main_callback,
    bonus_stoparrow_main_callback,
    bonus_swapboxes_main_callback,
    state24_25_main_callback,
    state24_25_main_callback,
    state26_27_main_callback,
    state26_27_main_callback,
    state28_main_callback,
    state29_main_callback,
    movie_main_callback,
    fadetransition_main_callback,
    world_intro_main_callback,
    level_scroll_main_callback,
    init_main_callback,
};

void (*gDisplayCallbacks[])(void) =
{
    intro_display_callback,
    credits_display_callback,
    demo_display_callback,
    file_select_display_callback,
    option_menu_display_callback,
    demo_display_callback,
    demo_display_callback,
    title_display_callback,
    level_select_display_callback,
    expert_level_select_display_callback,
    NULL,
    demo_display_callback,
    demo_display_callback,
    demo_display_callback,
    respawn_display_callback,
    demo_display_callback,
    pause_display_callback,
    help_display_callback,
    respawn_display_callback,
    NULL,
    clear_gameover_display_callback,
    level_results_display_callback,
    bonus_stoparrow_display_callback,
    bonus_swapboxes_display_callback,
    state24_25_display_callback,
    state24_25_display_callback,
    state26_27_display_callback,
    state26_27_display_callback,
    state28_display_callback,
    state29_display_callback,
    movie_display_callback,
    NULL,
    world_intro_display_callback,
    level_scroll_display_callback,
    init_display_callback,
};

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
