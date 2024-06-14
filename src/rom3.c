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
        {
            return r2 - gUnknown_03000C40.unk20 + 1;
        }
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

void sub_0802BCA4(struct GraphicsConfig *arg0, int arg1)
{
    register u32 r3 asm("r3") = 0x68;
    struct UnkStruct1_sub_child_data68 *r5;
    u8 *end;
    u8 *start;
    u32 size;
    int i;
    int r4_;

    if (arg0 != NULL && arg0->unk0 < 0 && (arg0->unk0 & 0x7FFFFFFF) > r3
     && arg0->unk68 != 0
     && ((struct UnkStruct1_sub_child_data68 *)((u8 *)arg0 + arg0->unk68))->unk2 != 0)
        r5 = (struct UnkStruct1_sub_child_data68 *)((u8 *)arg0 + arg0->unk68);
    else if (arg1 == 0)
    {
        gUnknown_03000C90.unk18 = 0;
        gUnknown_03000C90.unk8 = 4;
        return;
    }
    else
        r5 = &gUnknown_0807BA58;

    end = sub_08001760_end;
    start = sub_08001760;
    size = end - start;
    gUnknown_03000C90.unk18 = arena_allocate(size);
    if (arg1 != 0)
        CpuCopy16(start, gUnknown_03000C90.unk18, size);
    else
        CpuCopy16(sub_0800169C, gUnknown_03000C90.unk18, size);

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
    gUnknown_03000C90.unk0 = gUnknown_03000C70.unk0;
    gUnknown_03000C90.unk4 = gUnknown_03000C90.unkC[1];
    gUnknown_03000C90.unk8 = 3;
    gUnknown_03000C90.unkA = 1;
    if (gUnknown_03000C90.unk18 != NULL)
        gUnknown_03000C90.unk18(&gUnknown_03000C90, &gUnknown_03000C70, 0, 0);
}

int sub_0802BE18(struct GraphicsConfig *arg0)
{
    register u32 r3 asm("r3") = 0x68;

    if (arg0 != NULL && arg0->unk0 < 0 && (arg0->unk0 & 0x7FFFFFFF) > r3
     && arg0->unk68 != 0)
    {
        struct UnkStruct1_sub_child_data68 *r0 = (struct UnkStruct1_sub_child_data68 *)((u8 *)arg0 + arg0->unk68);
        if (r0->unk2 != 0)
            return TRUE;
    }
    return FALSE;
}

void sub_0802BE50(void)
{
    if (gUnknown_03000C90.unk18 != NULL)
        gUnknown_03000C90.unk18(&gUnknown_03000C90, &gUnknown_03000C70, 0, 0);
}

void sub_0802BE74(void)
{
    if (gUnknown_03000C90.unk8 > 1)
        return;
    if (gUnknown_03000C90.unk8 == 1)
    {
        if (gUnknown_03000C90.unk4 == gUnknown_03000C90.unkC[0])
            gUnknown_03000C90.unk4 = gUnknown_03000C90.unkC[1];
        else
            gUnknown_03000C90.unk4 = gUnknown_03000C90.unkC[0];
    }
    gUnknown_03000C90.unk8 = 0;
}

extern u8 gUnknown_0807BA68[];

void sub_0802BEA4(u8 arg0)
{
    if (gUnknown_03000C90.unk18 != NULL)
    {
        gUnknown_03000C90.unk18(&gUnknown_03000C90, &gUnknown_03000C70, gUnknown_0807BA68, gUnknown_0300015A);
        if (arg0 != 0 && --gUnknown_0300015A < 0)
            gUnknown_0300015A = 99;
    }
}

void set_bg_offset_regs_0802BEEC(struct BGOffsets *bgOffsets)
{
    CpuCopy16(bgOffsets, (void *)REG_ADDR_BG0HOFS, sizeof(*bgOffsets));
    if (gUnknown_03000C90.unk8 <= 2 && gUnknown_03000C90.unkA != 0)
        CpuCopy16(gUnknown_03000C90.unk4, gUnknown_03000C90.unk0, 2);
}

void sub_0802BF1C(void)
{
    gUnknown_0300015A = 0;
}

void sub_0802C080();

void sub_0802BF28(void)
{
    REG_IE |= 4;
    *(u8 *)(REG_ADDR_DISPSTAT + 1) = 0;
    REG_DISPSTAT |= 0x20;
    REG_DMA0CNT_H = 0;
    gUnknown_03000CB0.unk4 = 227;
    gUnknown_03000CB0.unk0 = sub_0802C080;
    gUnknown_03000CB0.unk8 = &gUnknown_03000CB0;
}

void tm0over_interrupt_handler(void)
{
    struct StructCB0_child *r5 = gUnknown_03000CB0.unk68;

    if (r5 != NULL)
    {
        struct StructCB0_child *r4;

        for (r4 = r5; r4 != NULL; r4 = r4->unkC)
            r4->unk0(r4->unk10);
        gUnknown_03000CB0.unk68 = r5->unk8;
        *(u8 *)(REG_ADDR_DISPSTAT + 1) = r5->unk4;
    }
}

void sub_0802BFA4(void)
{
    REG_DMA0CNT_H = 0;
    gUnknown_03000CB0.unk6C = &gUnknown_03000CB0;
    gUnknown_03000CB0.unk8 = &gUnknown_03000CB0;
    gUnknown_03000CB0.unk64 = 1;
}

void sub_0802BFC0(void *arg0, void (*arg1)() /*r6*/, u32 arg2 /*r5*/)
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
                    if (r3->unk0 == arg1)
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
    r4 = (struct StructCB0_child *)&gUnknown_03000CB0 + gUnknown_03000CB0.unk64;
    gUnknown_03000CB0.unk64++;
    r4->unk4 = arg2;
    r4->unk0 = arg1;
    r4->unk10 = arg0;
    r4->unkC = 0;
    if (r12)
    {
        while (r3->unkC != NULL)
            r3 = r3->unkC;
        r3->unkC = r4;
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
        *(u8 *)(REG_ADDR_DISPSTAT + 1) = gUnknown_03000CB0.unk68->unk4;
    else
        *(u8 *)(REG_ADDR_DISPSTAT + 1) = 0;
}

void sub_0802C080(void)
{
    volatile u32 *dma0 = (u32 *)REG_ADDR_DMA0SAD;

    REG_DMA0CNT_H = 0;
    if (gUnknown_03000C90.unk8 <= 2)
    {
        dma0[0] = (u32)gUnknown_03000C90.unk4;
        dma0[1] = (u32)gUnknown_03000C90.unk0;
        dma0[2] = ((DMA_ENABLE | DMA_START_HBLANK | DMA_REPEAT | DMA_DEST_RELOAD) << 16) | gUnknown_03000C90.unkA;
    }
}

struct GraphicsConfig_6C
{
    u16 unk0;
    u16 unk2;
};

void sub_0802C0B8(struct GraphicsConfig *arg0)
{
    struct StructD20 *r3 = &gUnknown_03000D20;

    if (arg0 == NULL || arg0->unk0 >= 0 || (u32)(arg0->unk0 & 0x7FFFFFFF) <= 0x6C || arg0->unk6C == 0)
        r3->unk10 = 0x400;
    else
    {
        struct GraphicsConfig_6C *r1 = (void *)((u8 *)arg0 + arg0->unk6C);

        r3->unk8 = (u8 *)r1 + 4;
        r3->unkC = (u8 *)r1 + 0x204;
        r3->unk10 = r1->unk0;
        r3->unk12 = r1->unk2;
    }
}

void sub_0802C104(int arg0, int arg1, void *arg2)
{
    gUnknown_03000D20.unk0[arg0][arg1] = arg2;
}

int sub_0802C118(struct GraphicsConfig *arg0)
{
    if (arg0 == NULL || arg0->unk0 >= 0 || (u32)(arg0->unk0 & 0x7FFFFFFF) <= 0x6C || arg0->unk6C == 0)
        return FALSE;
    else
        return TRUE;
}

void sub_0802C1C0();

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
            sub_0802BFC0(&gUnknown_03000D20, sub_0802C1C0, arg0);
        }
    }
}

void sub_0802C1B0(void)
{
    gUnknown_03000D20.unk10 = 0x400;
}
