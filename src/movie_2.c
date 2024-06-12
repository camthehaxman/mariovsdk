#include "gba/gba.h"
#include "global.h"
#include "arena.h"

void sub_08056494(struct Movie_child_child10 *);
int sub_08033658(void);
void sub_08057034(struct Movie_child *);
void sub_08056FD8(struct Movie_child *);
void sub_080571B0(u16 *arg0, u16 *arg1, u16 *arg2, u16 *arg3, struct Movie_child *arg4);
void sub_080351C4();

void sub_08056774(struct Movie_child_child30 *);
void sub_08055FB8(struct Movie_child_child8 *);
void sub_080565C0(struct Movie_child_child18 *);

/*static*/ void sub_080572B4(void);
/*static*/ void sub_08057324(void);

// like sub_080572E0, but inlined
static inline void sub_080572E0_inline(struct Movie_child_child10 *arg0)
{
    if (gUnknown_03001BE8 == arg0->unk8)
        sub_08056494(arg0);
    else if ((gUnknown_03001BE8 > arg0->unk8 || gUnknown_03001BE8 < arg0->unkC)
     && gUnknown_03001C34 != 0 && sub_08033658() != 0)
        gUnknown_03001C34 = 0;
}

static inline void sub_08057330_inline(struct Movie_child_child28 *arg4)
{
    u8 r5 = arg4->unk100;
    u8 r4 = arg4->unk102;
    int r3;

    if (gUnknown_03001BE8 >= arg4->unk108 && gUnknown_03001BE8 <= arg4->unk10C)
    {
        if (arg4->unk104 != 0)
            r3 = ((gUnknown_03001BE8 - arg4->unk108) * arg4->unk104) >> 8;
        else
            r3 = -1;
        sub_08034CCC(arg4, r5, r4, r3, 7);
    }
}

void sub_08056FD8(struct Movie_child *arg0)
{
    int i;

    for (i = 0; i < 32; i++)
    {
        gUnknown_03001C18[i].unk0 = 0;
        gUnknown_03001C18[i].unk4 = 0;
        gUnknown_03001C18[i].unk8 = 0;
        gUnknown_03001C18[i].unkA = 0;
        gUnknown_03001C18[i].unkC = 0;
        gUnknown_03001C18[i].unkE = 0;
        gUnknown_03001C18[i].unk11 = 0;
        gUnknown_03001C18[i].unk10 = 0;
    }
    gUnknown_03001C34 = 0; gUnknown_03001BE8 = 0;  // needed to match
    gUnknown_03001C00 = gUnknown_03001BE8 = gUnknown_03001C34 = 0;
    sub_08056774(&arg0->unk30[0]);
}

void sub_08057034(struct Movie_child *arg0)
{
    u16 i;

    for (i = 0; i < arg0->unk4; i++)
        sub_08055FB8(&arg0->unk8[i]);
    for (i = 0; i < arg0->unkC; i++)
        sub_080572E0_inline(&arg0->unk10[i]);
    for (i = 0; i < arg0->unk14; i++)
        sub_080565C0(&arg0->unk18[i]);
    for (i = 0; i < arg0->unk1C; i++)
        sub_080566E0(&arg0->unk20[i]);
    for (i = 0; i < arg0->unk24; i++)
    {
    }

    if (gUnknown_03001BE8 == arg0->unk30[gUnknown_03001C00].unk98
     && gUnknown_03001C00 < arg0->unk2C - 1)
    {
        gUnknown_03001C00++;
        sub_08056774(&arg0->unk30[gUnknown_03001C00]);
        if (arg0->unk30[gUnknown_03001C00].unk94 == 3)
        {
            sub_08029CB0();
            gUnknown_03000DCC = 1;
        }
    }
    else if (gUnknown_03001BE8 > 0 && gUnknown_03000DCC == 0)
    {
        REG_BLDY = 0;
        REG_BLDCNT = arg0->unk30[gUnknown_03001C00].unk0[arg0->unk30[gUnknown_03001C00].unk31].unk0->unk30;
    }
    sub_080569C0(&arg0->unk30[gUnknown_03001C00]);
    gUnknown_03001BE8++;
}

void sub_080571B0(u16 *arg0, u16 *arg1, u16 *arg2, u16 *arg3, struct Movie_child *arg4)
{
    u16 i;

    for (i = 0; i < arg4->unk4; i++)
        sub_08055B2C(arg0, arg1, arg2, arg3, &arg4->unk8[i]);
    sub_080351E0();
    for (i = 0; i < arg4->unk24; i++)
        sub_08057330_inline(&arg4->unk28[i]);
    sub_08035108(arg0);
}

void sub_0805727C(void)
{
    //gUnknown_03001C18 = arena_allocate(sizeof(*gUnknown_03001C18));
    gUnknown_03001C18 = arena_allocate(0x280);
}

void sub_08057294(void)
{
    gUnknown_030009F4 = sub_080572B4;
    gUnknown_030009F8 = sub_08057324;
}

/*static*/ void sub_080572B4(void)
{
}

void sub_080572B8(u32 *arg0)
{
    if (gUnknown_03001BE8 == *arg0)
        gUnknown_03000A00();
    gUnknown_03001BE8++;
}

void sub_080572E0(struct Movie_child_child10 *arg0)
{
    sub_080572E0_inline(arg0);
}

/*static*/ void sub_08057324(void)
{
}

void sub_08057328(void)
{
}

void sub_0805732C(void)
{
}

void sub_08057330(int arg0, int arg1, int arg2, int arg3, struct Movie_child_child28 *arg4)
{
    sub_08057330_inline(arg4);
}

void sub_0805739C(struct Movie *movie)
{
    u16 old;

    sub_08057034(&movie->unk4[gUnknown_03001BF8]);
    if (gUnknown_03001BE8 == movie->unk4[gUnknown_03001BF8].unk0)
    {
        old = gUnknown_03001BF8;
        if (++gUnknown_03001BF8 == movie->unk0)
        {
            gUnknown_03001BF8 = old;
            gUnknown_03000A00();
        }
        else
            sub_08056FD8(&movie->unk4[gUnknown_03001BF8]);
    }
}

void sub_080573FC(u16 *arg0, u16 *arg1, u16 *arg2, u16 *arg3, struct Movie *arg4)
{
    sub_080571B0(arg0, arg1, arg2, arg3, &arg4->unk4[gUnknown_03001BF8]);
}

void sub_08057420(struct Movie *arg0)
{
    gUnknown_03001BF8 = 0;
    sub_08056FD8(&arg0->unk4[0]);
    sub_080351C4(0, 0, 0);
}
