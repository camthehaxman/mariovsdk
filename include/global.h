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

typedef u32 unknown;

struct UnknownStruct15
{
    u8 unk0[0x108];
    u32 unk108[0];
};

struct UnkStruct1_sub_child_data
{
    u8 filler0[4];
    u16 unk4;
    u16 unk6;
};

struct UnkStruct1_sub_child_data68_sub
{
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u8 fillerA[2];
};  // size = 0xC

struct UnkStruct1_sub_child_data68
{
    u16 unk0;
    u16 unk2;
    struct UnkStruct1_sub_child_data68_sub unk4[1];
};

struct CmprHeader
{
    u32 reserved:4;
    u32 compressionType:4;  // 1 = LZ77
    u32 size:24;  // size of decompressed data
    // data follows this header
};

struct UnkStruct1_sub_child
{
    s32 unk0;
    u8 filler4[4];
    /*0x08*/ u32 gfxOffset;  // offset to CmprHeader containing graphics data. Actually 4 bytes ahead of this
    /*0x0C*/ s32 unkOffsets[4];  // offsets to UnkStruct1_sub_child_data structs from the beginning of this struct
    /*0x1C*/ u32 palOffset;  // offset from the beginning of this struct to palette. Palette is actually 4 bytes after the address.
    u8 filler20[0xC];
    u16 unk2C;
    u16 unk2E;
    /*0x30*/ u16 bldCnt;
    /*0x32*/ u16 bldAlpha;
    /*0x34*/ u16 bldY;
    u8 filler36[2];
    /*0x38*/ u16 bgCnt[4];  // bgcnt for BGs 0-3
    /*0x40*/ u8 *vramAddr40[4];  // VRAM addresses?
    /*0x50*/ u8 *vramAddr50[4];  // VRAM addresses?
    u8 filler60[8];
    u32 unk68;  // some offset
};

struct UnkStruct1_sub
{
    struct UnkStruct1_sub_child *unk0;
    /*0x04*/ u16 bgNum;  // bgNum
    u8 unk6;
    u8 unk7;
};

struct UnkStruct1
{
    struct UnkStruct1_sub unk0[4];
    u8 unk20[4];  // some indices (0 to 3)?
    /*0x24*/ u8 bgPrio[4];  // priorities for each background
    u32 unk28;
    u8 unk2C;
    u8 unk2D;
    s8 unk2E;
    u8 unk2F;
    u8 unk30;
    u8 unk31;
    u8 unk32;  // some index
    u8 unk33;
};

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

struct BGOffsets
{
    u16 bg0hofs;
    u16 bg0vofs;
    u16 bg1hofs;
    u16 bg1vofs;
    s16 bg2hofs;
    u16 bg2vofs;
    u16 bg3hofs;
    u16 bg3vofs;
};

struct Struct30009B0
{
    s32 unk0;
    s32 unk4;
    u8 unk8;
    s16 unk10;
    s16 unk12;
};

struct Arena
{
    void *startAddr;
    void *head;
    void *endAddr;
    u32 totalSize;
    void *unk10[4];
};

struct UnknownStruct6
{
    u8 filler0[0x20];
    s32 unk20;
    s32 unk24;
};

struct UnknownStruct5
{
    struct UnkStruct1_sub_child *unk0;
    u32 unk4;
    u16 unk8;
};

struct UnknownStruct4_child
{
    u8 filler0[6];
    u16 unk6;
};

// These may be the same. Don't know yet.
struct UnknownStruct4  // gUnknown_03000B90
{
    struct UnknownStruct5 *unk0;
    struct UnkStruct1_sub_child *unk4;
    struct UnknownStruct4_child *unk8;
    void (*unkC)(void);
    s16 unk10;
    s16 unk12;
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

struct UnknownStruct10
{
    u8 unk0[4];
    u16 unk4;
    u8 filler6[4];
    u8 unkA;
};

struct UnknownStruct9
{
    const struct UnknownStruct10 *unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    const void *unk10;
    u8 unk14;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u16 unk18;
    void *unk1C;
    u32 unk20;
    u32 unk24;
    u16 unk28;
};

struct UnknownStruct17
{
    u8 unk0;
    u8 unk1;
};

struct Movie_child_child8
{
    u8 filler0[0x50];
};  // size = 0x50

struct Movie_child_child10
{
    u8 filler0[0x8];
    u32 unk8;
    u32 unkC;
};  // size = 0x10

struct Movie_child_child18
{
    u8 filler0[0x10];
};  // size = 0x10

struct Movie_child_child20
{
    u8 filler0[0xC];
};  // size = 0xC

struct Movie_child_child28
{
    u8 filler0[0x100];
    u8 unk100;
    u8 filler101[1];
    u8 unk102;
    u16 unk104;
    s32 unk108;
    s32 unk10C;
};  // size = 0x110

struct Movie_child_child30_sub_child
{
    u8 filler0[0x30];
    u16 unk30;
};

struct Movie_child_child30_sub
{
    struct Movie_child_child30_sub_child *unk0;
    u8 filler4[4];
};  // size = 8

struct Movie_child_child30
{
    struct Movie_child_child30_sub unk0[1];
    u8 filler8[0x31-8];
    u8 unk31;
    u8 filler32[0x94-0x32];
    u8 unk94;
    u32 unk98;
};  // size = 0x9C

struct Movie_child
{
    u32 unk0;
    u16 unk4;
    struct Movie_child_child8 *unk8;
    u16 unkC;
    struct Movie_child_child10 *unk10;
    u16 unk14;
    struct Movie_child_child18 *unk18;
    u16 unk1C;
    struct Movie_child_child20 *unk20;
    u16 unk24;
    struct Movie_child_child28 *unk28;
    u16 unk2C;
    struct Movie_child_child30 *unk30;
};  // size = 0x34

struct Movie
{
    u16 unk0;
    u8 filler2[2];
    struct Movie_child *unk4;
};

struct Struct1A0
{
    struct Movie *unk0;
    u8 unk4;
    u8 unk5;
    u8 nextState;  // next state after movie finishes
    u8 movieID;  // current movie ID
};

struct Struct0802D614
{
    u8 filler0[6];
    u16 unk6;
};

struct Struct1C18  // movie related?
{
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u8 unk10;
    u8 unk11;
    u8 filler12[0x14-0x12];
};  // size = 0x14

struct StructC30_child
{
	u8 filler0[0x8];
    u32 unk8;
	u32 unkC;
};

struct StructC30
{
    u32 unk0;
    struct StructC30_child *unk4;
};

struct StructC40_child_child_child  // might not actually be a struct
{
    u8 filler0[0xC];
    u8 unkC;
};

struct StructC40_child_child
{
    u8 filler0[8];
    /*struct StructC40_child_child_child*/ u8 *unk8;
};

struct StructC40_child
{
    u32 unk0;
    u8 unk4;
    u16 unk6;
    struct StructC40_child_child *unk8;  // possibly recursive struct StructC40_child?
};  // size = 0xC

struct StructC40_sub
{
    void *unk0;
    u8 *unk4;
};

struct StructC40
{
    struct StructC40_sub unk0[1];
    u8 filler0[4];
    u8 fillerC[0x18-0xC];
    u32 unk18;
    u32 unk1C;
    struct StructC40_child *unk20;
};

struct Struct807820C
{
    u8 filler0[0x600C];
    u16 unk600C[1];
};

struct StructC70
{
    void *unk0;
    u32 unk4;
    void *unk8;
    void *unkC;
    u8 filler10[0x4];
    void *unk14;
    u32 unk18;
};

struct StructC90_child14
{
    u32 unk0;
    u32 unk4;
    u8 filler8[4];
    u16 unkC;
    u8 fillerE[2];
};  // size = 0x10

struct StructC90
{
    void *unk0;
    void *unk4;
    u16 unk8;
    u16 unkA;
    void *unkC[2];
    struct StructC90_child14 *unk14;
    void (*unk18)(void *, void *, void *, int);
};

struct StructCB0_child
{
    void (*unk0)();
    u8 unk4;
    struct StructCB0_child *unk8;
    struct StructCB0_child *unkC;
    u32 unk10;
};

struct StructCB0
{
    void (*unk0)();
    u8 unk4;
    void *unk8;
    u8 fillerC[0x64-0xC];
    u32 unk64;
    struct StructCB0_child *unk68;
    void *unk6C;
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
extern u16 gSomeOamIndex_03000040;
extern u16 gUnknown_03000042;
extern u16 gUnknown_03000044;
extern u16 gUnknown_03000046;
extern u16 gUnknown_03000048;
extern u16 gUnknown_0300004A;
extern u16 gUnknown_0300004C;
extern u8 gFileSelectMenuSel;
extern u8 gUnknown_03000059;
extern u8 gUnknown_0300005B;
extern u8 gUnknown_0300005C;
extern u8 gUnknown_0300005D;
extern u8 gUnknown_0300005E;
extern u8 gUnknown_0300005F;
extern u8 gUnknown_03000060;
extern u8 gUnknown_03000061;
extern u8 gUnknown_03000062;
extern u8 gUnknown_03000063;
extern u8 gUnknown_03000064;
extern u8 gUnknown_03000065;
extern u8 gUnknown_03000066[];
extern struct UnknownStruct15 *gUnknown_030000A4;
extern u8 gPressStartFadeDir;
extern u8 gTitleScreenFrameCounter;
extern u16 gPressStartOpacity;
extern u8 gUnknown_030000AC;
extern s32 gUnknown_030000B0;
extern u8 gUnknown_030000B4;
extern u16 gUnknown_030000B6;
extern s16 gUnknown_0300015A;
extern struct Struct1A0 gMovieState_030001A0;
extern u32 gUnknown_030001A8;
extern void *gUnknown_030001AC;
extern u32 gUnknown_030001B0;
extern u32 gUnknown_030001B4;
extern u32 gUnknown_030001B8;
extern u8 *gUnknown_030001BC;
extern struct Struct0802D614 *gUnknown_030001C0;
extern u8 gUnknown_030002A0[];
extern u16 gUnknown_030002AA;
extern struct Struct30002B8 gUnknown_030002B0;
extern struct Struct30002B8 gUnknown_030002B8;
extern struct Struct30002B8 gUnknown_030002C0;
extern struct Struct30002B8 gUnknown_030002C8;
extern int (*gUnknown_03000964)(u32 *, int, int, int);
extern struct Struct30009B0 gUnknown_030009B0;
extern u32 gNextMainState;
extern u32 gUnknown_030009C8;
extern u32 gUnknown_030009CC;
extern u8 gUnknown_030009D0;
extern u8 gUnknown_030009D4;
extern u16 gUnknown_030009D8;
extern u32 gUnknown_030009DC;
extern u8 gUnknown_030009E4[];  // unknown type
extern u8 gUnknown_030009E8;
extern u8 gUnknown_030009EC;
extern void (*gUnknown_030009F4)(void);
extern void (*gUnknown_030009F8)(void);
extern u8 gUnknown_030009FC;
extern void (*gUnknown_03000A00)(void);
extern u16 gUnknown_03000A0C;
extern s32 gUnknown_03000B44;
extern u32 gUnknown_03000B48;
extern u32 gUnknown_03000B4C;
extern u8 gUnknown_03000B50;
extern s32 gMoveFrameCounter_03000B54;
extern s8 gUnknown_03000B58;
extern u8 gUnknown_03000B5C;
extern u8 gUnknown_03000B60;
extern s8 gUnknown_03000B64;
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
extern u8 gUnknown_03000BD0;
extern u32 gIntroTitleTimer_03000BE0;
extern u16 gUnknown_03000BE4;
extern u16 gUnknown_03000BE8;
extern u8 gUnknown_03000BEC;
extern u8 gUnknown_03000BF0;
extern s8 gUnknown_03000BF4;
extern u8 gUnknown_03000BF8;
extern u8 gUnknown_03000C20;
extern u8 gUnknown_03000C28;
extern void *gUnknown_03000C2C;
extern struct StructC30 gUnknown_03000C30;
extern struct StructC40 gUnknown_03000C40;
extern struct StructC70 gUnknown_03000C70;
extern struct StructC90 gUnknown_03000C90;
extern struct StructCB0 gUnknown_03000CB0;
extern u8 gUnknown_03000DCC;
extern u16 gUnknown_03000E60;
extern void *gUnknown_03000E70[];
extern u8 *gSomeVRAMAddr_03000E80;
extern u8 *gSomeVRAMAddr_03000E90;
extern u8 *gUnknown_03000E88;
extern u8 *gPaletteData_03000E8C;
extern void *gUnknown_03000E94;
extern struct OamData gOamBuffer[];
extern s16 gUnknown_030012A0;
extern u16 gUnknown_030012A4;
extern void (*gUnknown_030012A8)(void);
extern u8 gUnknown_030012B0[];
extern void (*gUnknown_030012C0)(void);
extern struct BGOffsets gBGOffsets_030012D0;
extern u16 gHeldKeys;
extern u16 gUnknown_030012E4;
extern u16 gSomeKeys_030012E8;
extern u16 gUnknown_030012EC;
extern s16 gUnknown_030012F4;
extern s16 gUnknown_030012F8;
extern void (*gUnknown_030012FC)(void);
extern u8 gIntrMainBuffer[];
extern volatile u16 gUnknown_03001700;  // vblank counter, to run at 30 FPS?
extern u8 gUnknown_03001704;
extern u16 gUnknown_03001708;
extern s16 gUnknown_0300170C;
extern s16 gUnknown_03001710;
extern u32 gUnknown_03001714;
extern u32 gRNGSeed;
extern u16 gUnknown_0300171C;
extern s16 gUnknown_03001720;
extern s16 gUnknown_03001724;
extern struct BGOffsets gBGOffsets_03001730;  // no idea what type this is
extern u8 gUnknown_03001740;
extern u8 gUnknown_03001744;
extern u16 gUnknown_03001748;
extern struct Arena gArena;
extern struct UnknownStruct9 gUnknown_03001770;
extern u16 gUnknown_0300192C;
extern u16 gUnknown_03001930;
extern u32 gUnknown_03001938;
extern u32 gUnknown_030019A0;
extern u8 gUnknown_03001A00;
extern u32 gUnknown_03001A1C;
extern u8 gUnknown_03001A30[];  // unknown type
extern u8 gUnknown_03001A38;
extern struct UnknownStruct8 gUnknown_03001B30;
extern u8 gUnknown_03001BA0;
extern u8 gUnknown_03001BDC;
extern s32 gUnknown_03001BE8;
extern u16 gUnknown_03001BF8;
extern u16 gUnknown_03001C00;
//extern struct Struct1C18 *gUnknown_03001C18;
extern struct Struct1C18 *gUnknown_03001C18;
extern u8 gUnknown_03001C34;
extern struct UnknownStruct7 *gUnknown_03001C78;
extern void *gUnknown_03007FFC;

extern struct Struct807820C *const gUnknown_0807820C;
extern void (*gInitCallbacks[])(void);
extern void (*gMainCallbacks[])(void);
extern void (*gDisplayCallbacks[])(void);
extern void (*gUnknown_080783E0[])(void);
extern void (*gUnknown_0807846C[])(void);
extern const struct UnknownStruct17 gUnknown_0807954C[];
extern const u8 gUnknown_0807956C[];
extern const u8 gUnknown_08079698[];
extern u16 *const gUnknown_0807DD94;
extern const struct UnkStruct1_sub_child gUnknown_08866A48;
extern const struct UnkStruct1_sub_child gUnknown_08867560;
extern const struct UnkStruct1_sub_child gUnknown_0886A328;
extern struct UnkStruct1_sub_child gUnknown_0886CFCC;  // non-const (likely in .data instead of .rodata)

//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------

void intro_init_callback(void);
void credits_init_callback(void);
void demo_init_callback(void);
void file_select_init_callback(void);
void option_menu_init_callback(void);
void demo_init_callback(void);
void state6_init_callback(void);
void title_init_callback(void);
void level_select_init_callback(void);
void expert_level_select_init_callback(void);
void state10_init_callback(void);
void state11_init_callback(void);
void state12_init_callback(void);
void state13_init_callback(void);
void respawn_init_callback(void);
void pause_init_callback(void);
void help_init_callback(void);
void respawn_init_callback(void);
void clear_gameover_init_callback(void);
void level_results_init_callback(void);
void bonus_stoparrow_init_callback(void);
void bonus_swapboxes_init_callback(void);
void state24_init_callback(void);
void state25_init_callback(void);
void state26_27_init_callback(void);
void state28_init_callback(void);
void state29_init_callback(void);
void movie_init_callback(void);
void fadetransition_init_callback(void);
void world_intro_init_callback(void);
void level_scroll_init_callback(void);
void init_init_callback(void);

void intro_main_callback(void);
void credits_main_callback(void);
void demo_main_callback(void);
void file_select_main_callback(void);
void option_menu_main_callback(void);
void title_main_callback(void);
void level_select_main_callback(void);
void expert_level_select_main_callback(void);
void state10_11_main_callback(void);
void state13_15_main_callback(void);
void respawn_main_callback(void);
void state13_15_main_callback(void);
void pause_main_callback(void);
void help_main_callback(void);
void respawn_main_callback(void);
void clear_gameover_main_callback(void);
void level_results_main_callback(void);
void bonus_stoparrow_main_callback(void);
void bonus_swapboxes_main_callback(void);
void state24_25_main_callback(void);
void state26_27_main_callback(void);
void state28_main_callback(void);
void state29_main_callback(void);
void movie_main_callback(void);
void fadetransition_main_callback(void);
void world_intro_main_callback(void);
void level_scroll_main_callback(void);
void init_main_callback(void);

void intro_display_callback(void);
void credits_display_callback(void);
void demo_display_callback(void);
void file_select_display_callback(void);
void option_menu_display_callback(void);
void title_display_callback(void);
void level_select_display_callback(void);
void expert_level_select_display_callback(void);
void respawn_display_callback(void);
void pause_display_callback(void);
void help_display_callback(void);
void clear_gameover_display_callback(void);
void level_results_display_callback(void);
void bonus_stoparrow_display_callback(void);
void bonus_swapboxes_display_callback(void);
void state24_25_display_callback(void);
void state26_27_display_callback(void);
void state28_display_callback(void);
void state29_display_callback(void);
void movie_display_callback(void);
void world_intro_display_callback(void);
void level_scroll_display_callback(void);
void init_display_callback(void);

void sub_0802BE50(void);
void sub_0802BEA4(u8);
void sub_08072118(void);
int sub_0800EF8C(void);
int sub_0800EF30(void);
int sub_0800C5A4(void);
void sub_0800F060(void);
void sub_08040F54(void);
void sub_080720E4(void);
void sub_08041F70(void);
void sub_0800CC6C(void);
void sub_0801BAD4(void);
void sub_08034828(void);
void sub_08008BF4(void);
void sub_08014880(void);
void sub_0802904C(void);
void sub_0801BA6C(void);
void sub_0801B220(void);
void sub_0803704C(void);
void sub_08008D7C(void);
void sub_0802B780(void);
void sub_0801BEC8(void);
void sub_0802AA1C(void);
void sub_0802B780(void);
void sub_0801CB98(void);
void sub_08029C1C(void);
void sub_08021BA0(void);
void sub_08027B98(void);
void sub_0802ECF0(void);
void sub_0802DDE8(void);
void sub_0802F5BC(void);
void sub_0803220C(void);
void sub_0802D5FC(void);
void sub_08029E70(void);
void sub_08029EB4(void);
void sub_080379B8(void);
void sub_080323E8(void);
void sub_08032784(void);

void sub_08015044(void);


// crt0.s
void irq_enable_t(void);
void irq_disable_t(void);
void interrupt_main(void);

void sub_080040D8();
void sub_080041B8();
void sub_08004428();
void sub_08004634();
void sub_08004FBC(void);
void sub_08005FA0(void);
void sub_080062D0(void);
void sub_08006388(void);
void sub_080064D4();
int sub_080066FC(u32 *, int, int, int);
struct UnknownStruct15 *sub_08006968();
void sub_080069E8(void);
void sub_08006A00(void);
int sub_08006A34(void);
void sub_08006D44(void);
void goto_state_080070E8(s32, s32);
void sub_08007170(void);
void sub_08008238(void);
void sub_080082C8(void);
void sub_08008CE4(void);
void sub_0800EE70(void);
void sub_0800EF0C(void);
void sub_0800F02C(void);
void sub_0800F070(int);
void sub_0800F744();
// There seems to be some conflict with the parameter types here
//void sub_080107E8(u8 world, u8 level, u16 arg2);
void sub_08011428();
void sub_080148A4(u32, int);
int sub_080148F0(u32);
void add_lives();
int sub_08014BB4(void);
void sub_0801500C();
void sub_0801B310(void);
void reset_some_array_0801B3C0(void);
void sub_0801B88C(void);
void sub_0802919C();
void sub_08029C20(void);
void set_blend_regs_08029CDC();
int sub_08029FD0(void);
int sub_0802A0A8(void);
void sub_0802A164(void);
int sub_0802A464(void);
void sub_0802BA94(void);
void sub_0802BC98(void);
void sub_0802BCA4(struct UnkStruct1_sub_child *, int);
void sub_0802BE74(void);
void set_bg_offset_regs_0802BEEC(struct BGOffsets *bgOffsets);
void sub_0802BF1C(void);
void sub_0802BF28(void);
void sub_0802BFA4(void);
void sub_0802C20C(void);
void sub_0802C058(void);
void sub_0802C104();
void sub_0802C144();
void sub_0802C1B0(void);
void sub_0802C7A4(void);
void sub_0802C938(void);
void sub_0802CF08(void);
void sub_0802D1D0(void);
void init_movie_0802D468(u8 arg0, u8 arg1, u8 arg2, u8 arg3);
void sub_0802F060(void);
int sub_0802F090(void *);
void sub_0802F1D4(void);
int sub_0802F5C0();
void sub_0803109C(void);
void sub_080317F8(void);
int sub_08031944(struct Struct0802D614 *);
void sub_08031978(struct Struct0802D614 *);
int sub_080319BC(struct UnkStruct1_sub_child *, struct UnknownStruct5 *, int);
void sub_08031BF0();
int sub_08031E04(void);
void load_palette();
int sub_08032C44(struct UnknownStruct4 *);
u16 sub_08032EB8(struct UnkStruct1_sub_child *arg0);
u16 sub_08032EE4(struct UnkStruct1_sub_child *arg0);
u16 something_with_loading_graphics_08032F24(const struct UnkStruct1_sub_child *arg0[4], int arg1);
void sub_08032F68(void);
void clear_oam_and_buffer(void);
void process_input(void);
void sub_08033440(void);
void init_timer_regs(void);
void seed_rng_with_timer(void);
void clear_ram(void);
void clear_graphics_memory(void);
void clear_vram(void);
void clear_palette_memory(void);
void sub_08033EA0();
void sub_08033EBC(void);
void sub_08033EC8(void);
void sub_08033EE0(void);
void sub_08033F80(s16, s16);
void sub_08033FAC(s16, s16);
void sub_08033FC8(void);
extern u8 sub_08034004(void);
void dummy_interrupt_handler(void);

void sub_080348C8(const struct UnknownStruct10 *, u32, u32, u32);
void sub_08034CCC();
void sub_08035108();
void sub_080351E0(void);
void print_message();
void sub_080386DC(void);
void sub_08038B18(void);
void sub_08040D50(void);
s8 sub_08040EE8();
struct UnknownStruct6 *sub_08040F30(s8);
void sub_0805727C(void);
void sub_0805739C(struct Movie *);
void sub_080573FC(u16 *, u16 *, u16 *, u16 *, struct Movie *);
void sub_08057420(struct Movie *);
u16 sub_0806C2C4(void);
void sub_0806D1AC(u16, u16);
void sub_080714A8(void);
void sub_0807166C();
void sub_08071800(void);
void sub_0807194C(void);
int play_sound_effect_08071990();
void sub_08071BE0(void);
void sub_08071C00(void);
void sub_08071C24(void);
void sub_08071C6C(int);
void sub_08071CD4(void);
void sub_08071E14();
void sub_08071FA0();
int sub_08071FE4(void);
int sub_08072038(void);
void sub_0807204C();
void sub_080720AC(void);
int sub_08072144(void);
int sub_080721A8();
void sub_0807220C();

#endif  // GUARD_GLOBAL_H
