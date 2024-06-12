#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

void sub_08008BF4(void)
{
    if (gNextMainState == MAIN_STATE_PAUSE
     || gNextMainState == MAIN_STATE_HELP
     || gNextMainState == MAIN_STATE_LEVEL_SCROLL)
        sub_080720E4();
    else
    {
        sub_08071C6C(22);
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
            sub_080720AC();
    }
}

void sub_08008C30(void)
{
}

void state10_init_callback(void)
{
    sub_08071BE0();
    gUnknown_03000B60 = 0;
    arena_restore_head(0);
    sub_08040D50();
    sub_0805727C();
    sub_08032C44(&gUnknown_03000B90);
    sub_080041B8(gUnknown_03000B90.unk4);
    sub_08038B18();
    sub_08071C00();
    REG_DISPCNT &= 0xFF7F;
    sub_08033F80(0, 0);
    sub_08004428(gUnknown_03000B90.unk0->unk4);
    arena_save_head(2);
    state11_init_callback();
}

void state11_init_callback(void)
{
    arena_restore_head(2);
    sub_08008CE4();
    sub_080069E8();
    sub_080040D8();
    sub_0802C20C();
    sub_080386DC();
    sub_08004634(0);
    gUnknown_03000A0C = REG_BG1CNT;
    REG_BG1CNT &= 0xFFFC;
    sub_0800EF0C();
}

void sub_08008CE4(void)
{
    gUnknown_030009FC = 0;
}

void state10_11_main_callback(void)
{
    if (gUnknown_030009FC != 0)
        process_input();
    else
    {
        process_input();
        if (gHeldKeys == 1)
            gSomeKeys_030012E8 = gHeldKeys = gUnknown_03001708 = 0;
        else if (gHeldKeys != 0)
            gUnknown_030009FC = 1;
    }
    sub_08004FBC();
    sub_08005FA0();
    sub_0801B310();
    if ((gSomeKeys_030012E8 & 8) && sub_08006A34() == 7)
    {
        goto_state_080070E8(13, 1);
        sub_080107E8(gUnknown_03000B90.unk12, gUnknown_03000B90.unk10, 0);
    }
    sub_08008238();
}

void sub_08008D7C(void)
{
    REG_BG1CNT = gUnknown_03000A0C;
    sub_080062D0();
    sub_080720AC();
    sub_08006A00();
}
