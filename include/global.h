#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

//------------------------------------------------------------------------------
// Macros
//------------------------------------------------------------------------------

// Both of these match so far
#define ABS(n) ((n) >= 0 ? (n) : -(n))
//#define ABS(n) ((n) < 0 ? -(n) : (n))


//------------------------------------------------------------------------------
// Types
//------------------------------------------------------------------------------

struct KeyInput
{
    u16 keys:10;
    u16 dummy:6;
};

struct Struct30002B8
{
    s32 unk0;
    s32 unk4;
};

struct Struct30012D0
{
    u8 filler0[6];
    u16 unk6;
};

struct Struct30009B0
{
    s32 unk0;
    s32 unk4;
    u8 unk8;
    s16 unk10;
    s16 unk12;
};

struct UnknownStruct3
{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10[4];
};

struct CompressionHeader
{
    u32 unk0_0:4;
    u32 compressionType:4;
    u32 size:24;
};

struct UnknownStruct2
{
    struct CompressionHeader header;
    u8 data[0];
};

struct UnknownStruct6
{
    u8 filler0[0x20];
    s32 unk20;
    s32 unk24;
};

struct UnknownStruct5
{
    u8 filler0[8];
    u16 unk8;
};

// These may be the same. Don't know yet.
struct UnknownStruct4
{
    struct UnknownStruct5 *unk0;
    u32 unk4;
    u8 filler8[0x10-0x8];
    s16 unk10;
    u8 filler12[2];
    u32 unk14;
    u32 unk18;
    u8 filler1C[1];
    u8 unk1D[3];
    u32 unk20;
};

struct UnknownStruct7
{
    u8 filler0[0x34];
    s8 unk34;
};

struct UnknownStruct8
{
    u8 filler0[0x14];
    u32 unk14;
};

struct UnknownStruct9
{
    void *unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    void *unk10;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u16 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u16 unk28;
};

struct UnknownStruct10
{
    u8 unk0[4];
    u16 unk4;
    u8 filler6[4];
    u8 unkA;
};

//------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------

extern u32 gUnknown_03000020;
extern u32 gUnknown_03000024;
extern u8 gUnknown_03000028;
extern u8 gUnknown_03000029;
extern s32 gUnknown_0300002C;
extern u8 gUnknown_03000030;
extern u8 gUnknown_03000031;
extern u8 gUnknown_03000032;
extern u8 gUnknown_03000033;
extern u32 gUnknown_03000034;
extern u32 gUnknown_03000038;
extern u32 gUnknown_0300003C;
extern u8 gUnknown_030002A0[];
extern u16 gUnknown_030002AA;
extern struct Struct30002B8 gUnknown_030002B0;
extern struct Struct30002B8 gUnknown_030002B8;
extern struct Struct30002B8 gUnknown_030002C0;
extern struct Struct30002B8 gUnknown_030002C8;
extern int (*gUnknown_03000964)(u32 *, int, int, int);
extern struct Struct30009B0 gUnknown_030009B0;
extern u32 gUnknown_030009C0;
extern u32 gUnknown_030009C4;
extern u32 gUnknown_030009C8;
extern u32 gUnknown_030009CC;
extern u8 gUnknown_030009D0;
extern u8 gUnknown_030009D4;
extern u16 gUnknown_030009D8;
extern u8 gUnknown_030009E4[];  // unknown type
extern u8 gUnknown_030009E8;
extern u8 gUnknown_030009EC;
extern s32 gUnknown_03000B44;
extern u32 gUnknown_03000B48;
extern u32 gUnknown_03000B4C;
extern s32 gUnknown_03000B54;
extern s8 gUnknown_03000B58;
extern u8 gUnknown_03000B5C;
extern u8 gUnknown_03000B60;
extern u8 gUnknown_03000B64;
extern u8 gUnknown_03000B68;
extern u32 gUnknown_03000B6C;
extern u32 gUnknown_03000B70;
extern s8 gUnknown_03000B74;
extern u8 gUnknown_03000B78;
extern s8 gUnknown_03000B80;
extern struct UnknownStruct4 gUnknown_03000B90;
extern s8 gUnknown_03000BB4;
extern u32 gUnknown_03000BB8;
extern s8 gUnknown_03000BBC;
extern u8 gUnknown_03000C28;
extern u32 gUnknown_030009DC;
extern struct OamData gUnknown_03000EA0;
extern s16 gUnknown_030012A0;
extern void (*gUnknown_030012A8)(void);
extern u8 gUnknown_030012B0[];
extern void (*gUnknown_030012C0)(void);
extern struct Struct30012D0 gUnknown_030012D0;
extern u16 gUnknown_030012E0;
extern u16 gUnknown_030012E8;
extern s16 gUnknown_030012F4;
extern s16 gUnknown_030012F8;
extern void (*gUnknown_030012FC)(void);
extern u8 gUnknown_03001300[];
extern volatile u16 gUnknown_03001700;  // vblank counter, to run at 30 FPS?
extern u16 gUnknown_03001708;
extern s16 gUnknown_0300170C;
extern s16 gUnknown_03001710;
extern u32 gUnknown_03001714;
extern u32 gUnknown_03001718;
extern u16 gUnknown_0300171C;
extern s16 gUnknown_03001720;
extern s16 gUnknown_03001724;
extern struct Struct30012D0 gUnknown_03001730;  // no idea what type this is
extern u8 gUnknown_03001740;
extern u8 gUnknown_03001744;
extern u16 gUnknown_03001748;
extern struct UnknownStruct3 gUnknown_03001750;
extern struct UnknownStruct9 gUnknown_03001770;
extern u8 gUnknown_0300192C[];  // unknown type
extern u8 gUnknown_03001930[];  // unknown type
extern u32 gUnknown_03001938;
extern u32 gUnknown_030019A0;
extern u32 gUnknown_03001A1C;
extern u8 gUnknown_03001A30[];  // unknown type
extern u8 gUnknown_03001A38;
extern struct UnknownStruct8 gUnknown_03001B30;
extern u8 gUnknown_03001BDC;
extern struct UnknownStruct7 *gUnknown_03001C78;
extern void *gUnknown_03007FFC;

extern const u8 gUnknown_08076D94[];
extern u16 *const gUnknown_0807820C;
extern void (*const gUnknown_0807823C[])(void);
extern void (*const gUnknown_080782C8[])(void);
extern const u32 gUnknown_08078354[];
extern void (*const gUnknown_080783E0[])(void);
extern const u32 gUnknown_0807846C[];
extern u16 *const gUnknown_0807DD94;


//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------

// crt0.s
void sub_080000FC_t(void);
void sub_08000114_t(void);
void interrupt_main(void);

void sub_08004634();
int sub_080066FC(u32 *, int, int, int);
void sub_08006968();
void sub_08006D44(void);
void sub_080070E8(s32, s32);
void sub_08007170(void);
void sub_0800EE70(void);
void sub_08014A58();
void sub_0801500C();
void sub_0802919C();
void sub_0802BA94(void);
void sub_0802BC98(void);
void sub_0802BE74(void);
void sub_0802BEEC();
void sub_0802BF1C(void);
void sub_0802BFA4(void);
void sub_0802C20C(void);
void sub_0802C058(void);
void sub_0802C144();
void sub_0802C7A4(void);
void sub_0802C938(void);
void sub_0802CF08(void);
void sub_0802D1D0(void);
void sub_0802D468();
int sub_0802F5C0();
void sub_0803109C(void);
void sub_080317F8(void);
void sub_08031BF0();
void sub_08032FB0(void);
void sub_08033440(void);
void sub_08033C38(void);
void sub_08033CE0(void);
void sub_08033D1C(void);
void sub_08033D30(void);
void sub_08033D58(void);
void sub_08033EA0();
void sub_08033EBC(void);
void sub_08033EC8(void);
void sub_08033EE0(void);
void sub_08033FAC(s16, s16);
void sub_08033FC8(void);
void sub_08034138(void);
void sub_08034898();
void sub_08037A04();
void sub_080386DC(void);
s8 sub_08040EE8();
struct UnknownStruct6 *sub_08040F30(s8);
u16 sub_0806C2C4(void);
void sub_0806D1AC(u16, u16);
void sub_080714A8(void);
void sub_08071800(void);
void sub_0807194C(void);
void sub_08071990();
void sub_08071C24(void);
void sub_08071CD4(void);
void sub_08071FA0();
int sub_08071FE4(void);
int sub_08072038(void);
void sub_0807204C();
void sub_080720AC(void);
int sub_08072144(void);

#endif  // GUARD_GLOBAL_H
