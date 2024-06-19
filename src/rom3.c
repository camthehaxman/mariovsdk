#include "gba/gba.h"
#include "global.h"
#include "arena.h"
#include "main.h"

extern void *gUnknown_0807AA1C[];
extern void *gUnknown_03000970[];
extern u8 sub_080006D8[];

void sub_0802B984(void)
{
    gUnknown_030019A0 |= 0x10000;
}

void load_arm_code_0802B998(void)
{
    u8 *romBase = sub_080006D8;
    void *buffer = arena_allocate(0x1068);
    int i;
    u8 **src;
    u8 **dest;

    CpuCopy32(romBase, buffer, 0x1068);
    gUnknown_03000C2C = buffer;
    dest = (u8 **)gUnknown_03000970;
    src = (u8 **)gUnknown_0807AA1C;
    for (i = 0; i < 15; i++)
    {
        *dest++ = (u8 *)*src++ - (u8 *)romBase + (u8 *)buffer;
    }
}

void sub_0802B9E4(void)
{
    gUnknown_03000C30.unk4 = arena_allocate(0x1E0);
    gUnknown_03000C30.unk0 = 0;
}

void *sub_0802BA00(void)
{
    void *r5 = gUnknown_03000C30.unk4;
    struct StructC30_child *r0;

    if (r5 == NULL)
    {
        gUnknown_03000C30.unk4 = arena_allocate(0x1E0);
        gUnknown_03000C30.unk0 = 0;
    }
    if (gUnknown_03000C30.unk0 >= 30)
        return NULL;
    r0 = &gUnknown_03000C30.unk4[gUnknown_03000C30.unk0];
    gUnknown_03000C30.unk0++;
    r0->unkC = 0;
    return r0;
}

void sub_0802BA38(int arg0, int arg1, int arg2, int arg3)
{
    if (gUnknown_03000C30.unk4 != NULL)
    {
        struct StructC30_child *r4 = gUnknown_03000C30.unk4;
        struct StructC30_child *r5 = r4 + gUnknown_03000C30.unk0;

        while (r4 < r5)
        {
            if (r4->unk8 != r4->unkC)
            {
                sub_080064D4(r4, r4->unk8, arg0, arg1);
                sub_080064D4(r4, r4->unk8, arg2, arg3);
                r4->unkC = r4->unk8;
            }
            r4++;
        }
    }
}

extern void sub_0802BC64(u8, int);

void sub_0802BA94(void)
{
    gUnknown_03000C30.unk4 = NULL;
}

void sub_0802BAA0(void)
{
    if (gUnknown_03000C40.unk20 != NULL)
    {
        struct StructC40_child *r4 = gUnknown_03000C40.unk20;
        struct StructC40_child *r7 = r4 + gUnknown_03000C40.unk1C;

        while (r4 < r7)
        {
            if (r4->unk0 != 0)
            {
                if (r4->unk4 != 0)
                    r4->unk4--;
                else
                {
                    struct StructC40_child_child_child *r3;
                    r4->unk8->unk8 = (void *)((u8 *)r4->unk8->unk8 + gUnknown_03000C40.unk18);
                    r3 = (void *)r4->unk8->unk8;
                    if (r3 == (void *)gUnknown_03000C40.unk0[r4->unk0].unk4)
                    {
                        sub_0802BC64(((r4 - gUnknown_03000C40.unk20)), 0);
                    }
                    else
                        r4->unk4 = r3->unkC;
                }
            }
            r4++;
        }
    }
}

void sub_0802BB20(u8 *arg0, int arg1)
{
    int i;

    gUnknown_03000C40.unk18 = arg1;
    for (i = 0; i < 3; i++)
    {
        gUnknown_03000C40.unk0[i].unk0 = arg0;
        arg0 += arg0[11] * arg1;
        gUnknown_03000C40.unk0[i].unk4 = arg0;
    }
}

void sub_0802BB4C(void)
{
    gUnknown_03000C40.unk20 = arena_allocate(0x54);
    CpuFill16(0, gUnknown_03000C40.unk20, 0x54);
    gUnknown_03000C40.unk1C = 0;
}

int sub_0802BB80(u8 arg0, u8 arg1, u16 arg2)
{
    struct StructC40_child *r4 = gUnknown_03000C40.unk20;
    struct StructC40_child *r2;
    int r0;

    if (r4 == NULL)
    {
        gUnknown_03000C40.unk20 = arena_allocate(0x54);
        CpuFill16(0, gUnknown_03000C40.unk20, 0x54);
        gUnknown_03000C40.unk1C = 0;
    }
    if (gUnknown_03000C40.unk1C > 6 || (r4 = sub_0802BA00()) == NULL)
        return 0;
    r2 = gUnknown_03000C40.unk20 + gUnknown_03000C40.unk1C;
    gUnknown_03000C40.unk1C++;
    r2->unk4 = 0;
    r2->unk0 = 0;
    r2->unk8 = r4;
    r2->unk6 = arg2;
    r4->unk0 = arg0;
    *(u32 *)&r4->unk4 = arg1;  // WTF?
    r4->unk8 = gUnknown_03000C40.unk0[0].unk0;
    // missing return value
}

u8 sub_0802BC00(int arg0)
{
    u16 r4 = gUnknown_0807820C->unk600C[arg0];
    struct StructC40_child *r2 = gUnknown_03000C40.unk20;
    struct StructC40_child *r1 = r2 + gUnknown_03000C40.unk1C;

    while (r2 < r1)
    {
        if (r2->unk6 == r4)
            return r2 - gUnknown_03000C40.unk20 + 1;
        r2++;
    }
    return 1;
}

void sub_0802BC64(u8 arg0, int arg1)
{
    struct StructC40_child *r2 = &gUnknown_03000C40.unk20[arg0];

    if (r2->unk0 != arg1)
    {
        r2->unk0 = arg1;
        r2->unk8->unk8 = gUnknown_03000C40.unk0[arg1].unk0;
        r2->unk4 = ((struct StructC40_child_child_child *)r2->unk8->unk8)->unkC;
    }
}

void sub_0802BC98(void)
{
    gUnknown_03000C40.unk20 = NULL;
}

extern struct UnkStruct1_sub_child_data68 gUnknown_0807BA58;
extern u8 sub_0800169C[]; extern u8 sub_0800169C_end[];
extern u8 sub_08001760[]; extern u8 sub_08001760_end[];
extern void *gUnknown_0807BB30[];

void sub_0802BCA4(struct GraphicsConfig *config, int arg1)
{
    register u32 r3 asm("r3") = 0x68;
    struct UnkStruct1_sub_child_data68 *r5;
    u8 *end;
    u8 *start;
    u32 size;
    int i;
    int r4_;

    if (config != NULL && config->unk0 < 0 && (config->unk0 & 0x7FFFFFFF) > r3
     && config->unk68 != 0
     && ((struct UnkStruct1_sub_child_data68 *)((u8 *)config + config->unk68))->unk2 != 0)
        r5 = (struct UnkStruct1_sub_child_data68 *)((u8 *)config + config->unk68);
    else if (arg1 == 0)
    {
        gUnknown_03000C90.armFunc = NULL;
        gUnknown_03000C90.unk8 = 4;
        return;
    }
    else
        r5 = &gUnknown_0807BA58;

    // Load function
    end = sub_08001760_end;
    start = sub_08001760;
    size = end - start;
    gUnknown_03000C90.armFunc = arena_allocate(size);
    if (arg1 != 0)
        CpuCopy16(start, gUnknown_03000C90.armFunc, size);
    else
        CpuCopy16(sub_0800169C, gUnknown_03000C90.armFunc, size);

    gUnknown_03000C90.unk14 = arena_allocate(r5->unk2 * 0x10 + 1);
    for (i = 0; i < 2; i++)
        gUnknown_03000C90.unkC[i] = arena_allocate(0x1C8);
    CpuFill32(0, gUnknown_03000C90.unk14, r5->unk2 * 0x10);

    for (i = 0; i < r5->unk2; i++)
    {
        struct UnkStruct1_sub_child_data68_sub *r2 = &r5->unk4[i];
        struct StructC90_child14 *r1 = &gUnknown_03000C90.unk14[i];

        r1->unk0 = r2->unk0;
        r1->unkC = r2->unk8;
        r1->unk4 = r2->unk4;
    }

    gUnknown_03000C70.unk18 = r5->unk2;
    gUnknown_03000C70.unk14 = gUnknown_03000C90.unk14;
    r4_ = r5->unk0;
    gUnknown_03000C70.unk0 = gUnknown_0807BB30[r4_];
    CpuFill16(0, &gBGOffsets_03001730, sizeof(gBGOffsets_03001730));
    gUnknown_03000C70.unk8 = (u8 *)&gBGOffsets_03001730 + r4_ * 4;
    gUnknown_03000C70.unkC = (u8 *)&gBGOffsets_03001730 + r4_ * 4 + 2;
    gUnknown_03000C70.unk4 = 0x04000005;
    gUnknown_03000C90.copyDest = gUnknown_03000C70.unk0;
    gUnknown_03000C90.copySrc = gUnknown_03000C90.unkC[1];
    gUnknown_03000C90.unk8 = 3;
    gUnknown_03000C90.copyLength = 1;
    if (gUnknown_03000C90.armFunc != NULL)
        gUnknown_03000C90.armFunc(&gUnknown_03000C90, &gUnknown_03000C70, 0, 0);
}

int has_0x68_struct_0802BE18(struct GraphicsConfig *config)
{
    register u32 r3 asm("r3") = 0x68;

    if (config != NULL && config->unk0 < 0 && (config->unk0 & 0x7FFFFFFF) > r3
     && config->unk68 != 0)
    {
        struct UnkStruct1_sub_child_data68 *r0 = (struct UnkStruct1_sub_child_data68 *)((u8 *)config + config->unk68);
        if (r0->unk2 != 0)
            return TRUE;
    }
    return FALSE;
}

void sub_0802BE50(void)
{
    if (gUnknown_03000C90.armFunc != NULL)
        gUnknown_03000C90.armFunc(&gUnknown_03000C90, &gUnknown_03000C70, NULL, 0);
}

void sub_0802BE74(void)
{
    if (gUnknown_03000C90.unk8 > 1)
        return;
    if (gUnknown_03000C90.unk8 == 1)
    {
        if (gUnknown_03000C90.copySrc == gUnknown_03000C90.unkC[0])
            gUnknown_03000C90.copySrc = gUnknown_03000C90.unkC[1];
        else
            gUnknown_03000C90.copySrc = gUnknown_03000C90.unkC[0];
    }
    gUnknown_03000C90.unk8 = 0;
}

extern u8 gUnknown_0807BA68[];

void sub_0802BEA4(u8 arg0)
{
    if (gUnknown_03000C90.armFunc != NULL)
    {
        gUnknown_03000C90.armFunc(&gUnknown_03000C90, &gUnknown_03000C70, gUnknown_0807BA68, gUnknown_0300015A);
        if (arg0 != 0 && --gUnknown_0300015A < 0)
            gUnknown_0300015A = 99;
    }
}

void set_bg_offset_regs_0802BEEC(struct BGOffsets *bgOffsets)
{
    CpuCopy16(bgOffsets, (void *)REG_ADDR_BG0HOFS, sizeof(*bgOffsets));
    if (gUnknown_03000C90.unk8 <= 2 && gUnknown_03000C90.copyLength != 0)
        CpuCopy16(gUnknown_03000C90.copySrc, gUnknown_03000C90.copyDest, 2);
}

void sub_0802BF1C(void)
{
    gUnknown_0300015A = 0;
}

// The LYC field of the DISPSTAT register
#define REG_DISPSTAT_LYC (*(vu8 *)(REG_ADDR_DISPSTAT + 1))

void enable_vcount_interrupt_0802BF28(void)
{
    REG_IE |= INTR_FLAG_VCOUNT;
    REG_DISPSTAT_LYC = 0;
    REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
    REG_DMA0CNT_H = 0;
    gUnknown_03000CB0.unk0[0].unk4 = 227;
    gUnknown_03000CB0.unk0[0].unk0 = sub_0802C080;
    gUnknown_03000CB0.unk0[0].unk8 = &gUnknown_03000CB0.unk0[0];
}

// Hmm... is this really for the TIMER0 interrupt? Looks like VCOUNT to me...
void tm0over_interrupt_handler(void)
{
    struct StructCB0_child *r5 = gUnknown_03000CB0.unk68;

    if (r5 != NULL)
    {
        struct StructCB0_child *r4;

        for (r4 = r5; r4 != NULL; r4 = r4->next)
            r4->unk0(r4->unk10);
        gUnknown_03000CB0.unk68 = r5->unk8;
        REG_DISPSTAT_LYC = r5->unk4;
    }
}

void sub_0802BFA4(void)
{
    REG_DMA0CNT_H = 0;
    gUnknown_03000CB0.unk6C = &gUnknown_03000CB0.unk0[0];
    gUnknown_03000CB0.unk0[0].unk8 = &gUnknown_03000CB0.unk0[0];
    gUnknown_03000CB0.unk64 = 1;
}

void sub_0802BFC0(void *arg0, void (*func)(struct Struct0802C1C0 *), u32 arg2)
{
    struct StructCB0_child *r3;
    struct StructCB0_child *r2;
    int r12 = 0;
    struct StructCB0_child *r4;
    struct StructCB0_child *r7;

    if (arg2 > 159)
        return;
    r7 = NULL;
    r3 = gUnknown_03000CB0.unk6C;
    r2 = r3;
    if (r3 != NULL)
    {
        do
        {
            if (r3->unk4 >= arg2)
            {
                if (r3->unk4 <= arg2 + 2)
                {
                    if (r3->unk0 == func)
                        return;
                    r12 = 1;
                    break;
                }
                if (r3->unk4 > arg2)
                    break;
            }
            r7 = r3;
            r3 = r3->unk8;
        } while (r3 != r2);
    }
    r4 = &gUnknown_03000CB0.unk0[gUnknown_03000CB0.unk64];
    gUnknown_03000CB0.unk64++;
    r4->unk4 = arg2;
    r4->unk0 = func;
    r4->unk10 = arg0;
    r4->next = NULL;
    if (r12)
    {
        while (r3->next != NULL)
            r3 = r3->next;
        r3->next = r4;
        return;
    }
    else if (r7 == NULL)
        gUnknown_03000CB0.unk6C = r4;
    else
        r7->unk8 = r4;
    r4->unk8 = r3;
}

void sub_0802C058(void)
{
    gUnknown_03000CB0.unk68 = gUnknown_03000CB0.unk6C;
    if (gUnknown_03000CB0.unk68 != NULL)
        REG_DISPSTAT_LYC = gUnknown_03000CB0.unk68->unk4;
    else
        REG_DISPSTAT_LYC = 0;
}

void sub_0802C080(struct Struct0802C1C0 *unused)
{
    volatile u32 *dma0 = (u32 *)REG_ADDR_DMA0SAD;

    REG_DMA0CNT_H = 0;
    if (gUnknown_03000C90.unk8 <= 2)
    {
        dma0[0] = (u32)gUnknown_03000C90.copySrc;
        dma0[1] = (u32)gUnknown_03000C90.copyDest;
        dma0[2] = ((DMA_ENABLE | DMA_START_HBLANK | DMA_REPEAT | DMA_DEST_RELOAD) << 16) | gUnknown_03000C90.copyLength;
    }
}

void gfx_related_0802C0B8(struct GraphicsConfig *config)
{
    struct StructD20 *r3 = &gUnknown_03000D20;

    if (config == NULL || config->unk0 >= 0 || (u32)(config->unk0 & 0x7FFFFFFF) <= 0x6C || config->unk6C == 0)
        r3->unk10 = 0x400;
    else
    {
        struct GraphicsConfig_6C *r1 = (void *)((u8 *)config + config->unk6C);

        r3->unk8 = r1->unk4;
        r3->unkC = r1->unk204;
        r3->unk10 = r1->unk0;
        r3->unk12 = r1->unk2;
    }
}

void sub_0802C104(int arg0, int arg1, void *arg2)
{
    gUnknown_03000D20.unk0[arg0][arg1] = arg2;
}

int has_0x6C_struct_0802C118(struct GraphicsConfig *arg0)
{
    if (arg0 == NULL || arg0->unk0 >= 0 || (u32)(arg0->unk0 & 0x7FFFFFFF) <= 0x6C || arg0->unk6C == 0)
        return FALSE;
    else
        return TRUE;
}

void sub_0802C144(int arg0)
{
    if (gUnknown_03000D20.unk10 != 0x400 && gUnknown_03000D20.unk0[0][0] != NULL && gUnknown_03000D20.unk0[0][1] != NULL)
    {
        DmaCopy16(3, gUnknown_03000D20.unk0[0][0], (void *)BG_PLTT, BG_PLTT_SIZE);
        DmaCopy32(3, gUnknown_03000D20.unk0[0][1], (void *)OBJ_PLTT, OBJ_PLTT_SIZE);
        arg0 = gUnknown_03000D20.unk10 - arg0;
        if (arg0 < 160)
        {
            if (arg0 < 0)
                arg0 = 0;
            sub_0802BFC0(&gUnknown_03000D20, load_some_palettes_0802C1C0, arg0);
        }
    }
}

void sub_0802C1B0(void)
{
    gUnknown_03000D20.unk10 = 0x400;
}

void load_some_palettes_0802C1C0(struct Struct0802C1C0 *arg0)
{
    struct Struct0802C1C0 *r3 = arg0;

    if (arg0->unk12 & 2)
        DmaCopy32(3, arg0->bgPalSrc, (void *)BG_PLTT, BG_PLTT_SIZE);
    if (r3->unk12 & 1)
        DmaCopy32(3, r3->objPalSrc, (void *)OBJ_PLTT, OBJ_PLTT_SIZE);
}

struct Struct168
{
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
};
extern struct Struct168 *gUnknown_03000168;

struct Struct0807C0E0
{
    struct Struct168 *unk0;
    u16 unk4;
    u8 filler6[2];
};

extern struct Struct0807C0E0 gUnknown_0807C0E0[];
extern struct Struct0807C0E0 gUnknown_0807C098[];
extern struct Struct0807C0E0 gUnknown_0807C028[];
extern struct Struct0807C0E0 gUnknown_0807C0D0;
extern struct Struct0807C0E0 gUnknown_0807C0D8;

void sub_0802C20C(void)
{
    gUnknown_0300015C = 0;
    gUnknown_03000D38 = 90;
    gUnknown_03000D34 = 0;
    gUnknown_03000D3C = 0;
    gUnknown_03000160 = 0;
    gUnknown_03000161 = 0;
    if (gMainState == MAIN_STATE_TUTORIAL || gMainState == MAIN_STATE_TUTORIAL_SETUP)
    {
        gUnknown_03000164 = gUnknown_0807C0E0[gUnknown_03000B90.unk10].unk4;
        gUnknown_03000168 = gUnknown_0807C0E0[gUnknown_03000B90.unk10].unk0;
    }
    else if (gUnknown_03000B80 == 1)
    {
        gUnknown_03000164 = gUnknown_0807C098[gUnknown_03000B90.unk10].unk4;
        gUnknown_03000168 = gUnknown_0807C098[gUnknown_03000B90.unk10].unk0;
    }
    else if (gUnknown_03000B80 == 2)
    {
        gUnknown_03000164 = gUnknown_0807C0D0.unk4;
        gUnknown_03000168 = gUnknown_0807C0D0.unk0;
    }
    else if (gUnknown_03000B80 == 3)
    {
        gUnknown_03000164 = gUnknown_0807C0D8.unk4;
        gUnknown_03000168 = gUnknown_0807C0D8.unk0;
    }
    else
    {
        gUnknown_03000164 = gUnknown_0807C028[gUnknown_03000B90.unk10].unk4;
        gUnknown_03000168 = gUnknown_0807C028[gUnknown_03000B90.unk10].unk0;
    }
    gUnknown_030009E0 = gUnknown_03000168[gUnknown_03000160].unk2;
    gUnknown_03000D40 = gUnknown_030009E0 >> 3;
    gUnknown_03000160++;
}

struct Struct08078210_sub
{
    u8 filler0[2];
    u16 unk2;
    u8 unk4;
};

extern struct Struct08078210
{
    u8 filler0[0x108];
    struct Struct08078210_sub *unk108[1];
} *gUnknown_08078210;

void sub_08002160(struct Struct802C31C *);
void sub_080063E4(struct Struct802C31C *, int, void *);
void sub_0801B50C(int);
void sub_08001BA4(struct Struct802C31C *, struct Struct08078210_sub *);

void sub_0802C31C(void)
{
    s16 i;
    s16 j;
    s16 sp10 = gUnknown_03001720 >> 3;

    j = (gUnknown_030009E0 + 2) >> 3;
    for (i = 0; i < sp10; i++)
    {
        int index;
        int r0;

        index = j * 0x40 + i;
        r0 = gUnknown_0807820C->unk600C[index];
        if (r0 != 0)
        {
            int r6 = gUnknown_0807820C->unkC[r0 - 1].unk0;
            if (gUnknown_08078210->unk108[r6 - 1]->unk4 == 40)
            {
                struct Struct08078210_sub *r0 = gUnknown_08078210->unk108[r6];
                struct Struct802C31C sp0;

                sp0.unk0 = i;
                sp0.unk4 = j - r0->unk2 + 1;
                sub_08002160(&sp0);
                sub_080063E4(&sp0, r6, gUnknown_0807820C->unk800C);
                gUnknown_030009EC = 1;
                sub_0801B50C(40);
                gUnknown_03000D3C = 1;
            }
            else if (gUnknown_03000D3C == 2)
            {
                for (j = (gUnknown_030009E0 + 2) >> 3; j < gUnknown_03000D40; j++)
                {
                    index = j * 0x40 + i;
                    r0 = gUnknown_0807820C->unk600C[index];
                    if (r0 != 0)
                    {
                        r6 = gUnknown_0807820C->unkC[r0 - 1].unk0;
                        if (gUnknown_08078210->unk108[r6 - 1]->unk4 == 41)
                        {
                            struct Struct08078210_sub *r4 = gUnknown_08078210->unk108[r6];
                            struct Struct802C31C sp8;

                            sp8.unk0 = i;
                            sp8.unk4 = j - r4->unk2 + 1;
                            sub_08002160(&sp8);
                            sub_080063E4(&sp8, r6, gUnknown_0807820C->unk800C);
                            sub_08001BA4(&sp8, r4);
                            index = (j - r4->unk2) * 0x40 + i;
                            if (gUnknown_0807820C->unk600C[index] == 0)
                            {
                                r4 = gUnknown_08078210->unk108[r6 + 2];
                                sp8.unk4 -= r4->unk2;
                                sub_080064D4(&sp8, r4, gUnknown_0807820C->unk800C, 6);
                            }
                            gUnknown_030009EC = 1;
                        }
                    }
                }
                j = (gUnknown_030009E0 + 2) >> 3;
            }
        }
    }
    if (gUnknown_03000D3C == 2)
    {
        gUnknown_03000D3C = 0;
        gUnknown_03000D40 = (gUnknown_030009E0 + 2) >> 3;
    }
}

void sub_0802C540(void)
{
    u8 r3;

    if (gUnknown_03000B90.unk12 == 2)
    {
        if (gUnknown_03000161 == 1)
        {
            if (gUnknown_030009E0 > gUnknown_03000162)
                gUnknown_030009E0--;
            else
                gUnknown_03000161 = 0;
            goto _0802C6E8;
        }
        else if (gUnknown_03000161 == 2)
        {
            if (gUnknown_030009E0 < gUnknown_03000162)
                gUnknown_030009E0++;
            else
                gUnknown_03000161 = 0;
            goto _0802C6E8;
        }
        else if (gUnknown_03000160 < gUnknown_03000164)
        {
            u32 r0 = (gUnknown_03001A30[0] + gUnknown_03001A30[1] + gUnknown_03001A30[2]);
            u32 r0_ = (gUnknown_03001A30[3] + r0 + gUnknown_03001A30[4]);
            u32 r5 = gUnknown_03001A30[5] + r0_;

            if ((gUnknown_03000168[gUnknown_03000160].unk0 == 0 && (int)(gUnknown_0300015C - gUnknown_03000D34) >= (int)gUnknown_03000168[gUnknown_03000160].unk4)
             || (gUnknown_03000168[gUnknown_03000160].unk0 == 1
              && ((gUnknown_03000168[gUnknown_03000160].unk4 == 4 && (gUnknown_03001A30[0] != 0 || gUnknown_03001A30[3] != 0))
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 5 && (gUnknown_03001A30[1] != 0 || gUnknown_03001A30[4] != 0))
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 6 && (gUnknown_03001A30[2] != 0 || gUnknown_03001A30[5] != 0))
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 1 && r5 != 0)
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 2 && r5 > 1)
               || (gUnknown_03000168[gUnknown_03000160].unk4 == 3 && r5 > 2))))
            {
                gUnknown_03000162 = gUnknown_03000168[gUnknown_03000160].unk2;
                if (gUnknown_03000168[gUnknown_03000160].unk2 < gUnknown_030009E0)
                    gUnknown_03000161 = 1;
                else
                    gUnknown_03000161 = 2;
                if (gUnknown_03000168[gUnknown_03000160].unk6 != 0)
                {
                    gUnknown_03000D38 = 0;
                    play_sound_effect_08071990(SE_LAVA, 8, 16, 64, 0, 128, 0);
                }
                gUnknown_03000160++;
                gUnknown_03000D34 = gUnknown_0300015C;
            }
_0802C6E8:
            sub_0802C31C();
        }
        gUnknown_0300015C++;
    }
}

void sub_0802C71C(void)
{
    gUnknown_0300015C = 0;
    gUnknown_03000D38 = 90;
    gUnknown_03000D34 = 0;
    gUnknown_03000D3C = 0;
    gUnknown_03000160 = 0;
    gUnknown_03000161 = 0;
    gUnknown_03000164 = gUnknown_0807C0E0[gUnknown_03000B90.unk10].unk4;
    gUnknown_03000168 = gUnknown_0807C0E0[gUnknown_03000B90.unk10].unk0;
    gUnknown_030009E0 = gUnknown_03000168->unk2;
    gUnknown_03000D40 = gUnknown_030009E0 >> 3;
    gUnknown_03000160 = 1;
}
