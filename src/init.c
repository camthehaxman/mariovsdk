#include "gba/gba.h"
#include "global.h"
#include "arena.h"

struct Foo
{
    u8 filler[8];
};

struct UnknownStruct13
{
    //u8 filler0[4];
    u32 unk0;
    u32 unk4;
};

struct UnknownStruct11
{
    u8 filler0[0x1000];
    u32 unk1000;
    u8 filler1004;
    struct UnknownStruct13 *unk1008;
};

struct UnknownStruct12
{
    u32 unk0_0:5;
    //u32 unk0_3:2;
    u32 unk0_5:1;
};

extern u8 gUnknown_03001F50[];  // unknown type
extern u8 gUnknown_03007AB0[];  // unknown type
extern struct UnknownStruct11 *gUnknown_0300029C;

extern u16 gUnknown_0807DD14[];
extern const struct UnknownStruct10 gUnknown_08B2AD88;
extern struct UnknownStruct12 *gUnknown_080788FC;
extern struct UnknownStruct13 gUnknown_0807DD1C[];
extern void *const gUnknown_0807CA94;
extern const u8 gPredefinedPalettes[];

void init_init_callback(void)
{
    gUnknown_03000B50 = 0;
    gUnknown_03001704 = 0;
    gUnknown_03000B80 = 0;
    sub_08032F68();
    arena_init(gUnknown_03001F50, gUnknown_03007AB0);
    sub_0802F060();
    sub_0807166C(arena_allocate(0x15A4), 0x15A4, 3, 3, 8);
    arena_save_head(0);
    CpuFill16(0, (void *)PLTT, 0x200);
    CpuCopy16(gUnknown_0807DD14, (void *)(PLTT + 0x200), 6);
    sub_080348C8(&gUnknown_08B2AD88, 0, 0, 0);
    gUnknown_0300029C = arena_allocate(sizeof(*gUnknown_0300029C));
    CpuFill16(0, gUnknown_0300029C, sizeof(*gUnknown_0300029C));
    gUnknown_0300029C->unk1000 = 0;
    REG_DISPCNT = 0x1140;
    process_input();
}

void init_main_callback(void)
{
    process_input();
    switch (gUnknown_0300029C->unk1000)
    {
      case 0:
        if (sub_08029FD0() == 0)
        {
            gUnknown_0300029C->unk1000 = 8;
            gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
        }
        else
        {
            int r1 = sub_0802A464();

            if (r1 == 1)
            {
                gUnknown_0300029C->unk1000 = 6;
            }
            else if (r1 == -1)
            {
                gUnknown_0300029C->unk1000 = 8;
                // Only way I could get this to match. No clue what gUnknown_0807DD1C actually is
                gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
                gUnknown_0300029C->unk1008++;
            }
            else
            {
                gUnknown_0300029C->unk1000 = 1;
            }
        }
        break;
      case 1:
        if (sub_0802A0A8() == 0)
        {
            gUnknown_0300029C->unk1000 = 8;
            gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
            gUnknown_0300029C->unk1008++;
        }
        else
        {
            gUnknown_0300029C->unk1000 = 2;
            gUnknown_03000B50 = 1;
        }
        break;
      case 2:
        if (sub_08031E04() == 0)
        {
            gUnknown_0300029C->unk1000 = 8;
            gUnknown_0300029C->unk1008 = &gUnknown_0807DD1C[0];
            gUnknown_0300029C->unk1008 += 2;
        }
        else
        {
            gUnknown_0300029C->unk1000 = 3;
        }
        break;
      case 3:
        goto_state_080070E8(0, 0);
        sub_0807220C(gUnknown_080788FC->unk0_5);
        break;
      case 4:
        sub_08011428(1);
        sub_0802A164();
        gUnknown_0300029C->unk1000 = 2;
        break;
      case 5:
        sub_0802F1D4();
        gUnknown_0300029C->unk1000 = 3;
        break;
      case 6:
        sub_08011428(1);
        CpuFill16(0, gUnknown_0807CA94, 0x68);
        sub_0802A164();
        sub_0802F1D4();
        gUnknown_0300029C->unk1000 = 1;
        break;
      case 7:
        sub_08011428(1);
        gUnknown_03000B50 = 2;
        CpuFill16(0, gUnknown_0807CA94, 0x68);
        gUnknown_0300029C->unk1000 = 3;
        break;
      case 8:
        if (gSomeKeys_030012E8 & 11)
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            gUnknown_0300029C->unk1000 = gUnknown_0300029C->unk1008->unk4;
            gUnknown_0300029C->unk1008 = NULL;
        }
        break;
    }
}

void init_display_callback(void)
{
    u16 val = 0;

    DmaFill32(3, 0xA0, gOamBuffer, 0x400);
    sub_080351E0();
    if (gUnknown_0300029C->unk1008 != NULL)
        sub_08034CCC(gUnknown_0300029C->unk1008->unk0, -32767, -32767, -1, 16);
    sub_08035108(&val);
    DmaCopy32(3, gOamBuffer, (void *)OAM, 0x400);
}

void sub_08032784(void)
{
}

void load_predefined_palette(u32 paletteNum, u32 flags)
{
    // I have to do this stupid cast for it to match.
    bool32 r4 = ((*(u8 *)gUnknown_080788FC & 24) != 0);

    if (flags & LOAD_BG_PALETTE)
    {
        const void *src = gPredefinedPalettes + paletteNum * 0x800 + r4 * 0x400;

        DmaCopy16(3, src, (void *)PLTT, 0x200);
        sub_0802C104(0, 0, src);
    }

    if (flags & LOAD_OBJ_PALETTE)
    {
        const void *src = gPredefinedPalettes + paletteNum * 0x800 + r4 * 0x400 + 0x200;

        // Why is this one DmaCopy32 while the other one is DmaCopy16?
        DmaCopy32(3, src, (void *)(PLTT + 0x200), 0x200);
        sub_0802C104(0, 1, src);
    }
}

asm(".align 2, 0");
