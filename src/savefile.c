#include "gba/gba.h"
#include "global.h"
#include "main.h"

extern u8 *pSelectedSaveFileNum;

#define LEVEL_COMPLETED 0x80
#define LEVEL_STARRED   0x40

struct LevelStats
{
    u16 highScore;
    u8 filler2[2];
    u8 present1;  // presents
    u8 present2;
    u8 present3;
    u8 flags;  // upper nibble: flags, lower nibble: mini mario count
};

struct SaveFile
{
    s8 lives;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 unk4;
    u8 unk8;
    u8 unk9;
    /*0x0C*/ struct LevelStats mainLevels[48];
    /*0x18C*/ struct LevelStats plusLevels[46];
    u8 filler2FC[0x30C-0x2FC];
    u16 unk30C;
    u8 filler30E[0x313-0x30E];
    u8 unk313;
    u16 unk314;
    u8 filler316[0x31B-0x316];
    u8 unk31B;
    struct LevelStats unk31C[6];
    struct LevelStats unk34C[6];
};  // 0x37C

extern struct SaveFile *gSaveFilesPtr;
extern u8 sub_080103C8(u8, u8);

enum LevelCategory
{
    MAIN_LEVELS = 0,
    PLUS_LEVELS = 1,
};

s8 sub_0800F76C(u8 arg0, u8 world)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    u8 level;

    if (arg0 == 0)
    {
        if (world != 0 && sub_080103C8(0, world - 1) == 0)
            return -1;
        for (level = 0; level < 8; level++)
        {
            if ((saveFile->mainLevels[world * 8 + level].flags & 0x80) == 0)
                break;
        }
        return level;
    }
    else if (arg0 == 1)
    {
        if (world != 0 && sub_080103C8(1, world - 1) == 0)
            return -1;
        for (level = 0; level < 7; level++)
        {
            if ((saveFile->plusLevels[world * 8 + level].flags & 0x80) == 0)
                break;
        }
        return level;
    }
    return 0;
}

u8 get_level_stats_08010068(u8 param_1,u8 param_2,u8 param_3,u8 param_4,u8 *param_5);

void sub_0800F84C(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    s16 r7 = 0;
    s16 r8 = 0;
    s16 world;
    s16 level;
    u8 sp4;

    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            if (get_level_stats_08010068(fileNum, MAIN_LEVELS, world, level, &sp4) != 0)
            {
                r8++;
                if ((sp4 & 0xC0) == 0xC0)
                    r7++;
            }
            if (get_level_stats_08010068(fileNum, PLUS_LEVELS, world, level, &sp4) != 0)
            {
                r8++;
                if ((sp4 & 0xC0) == 0xC0)
                    r7++;
            }
        }
        if (get_level_stats_08010068(fileNum, MAIN_LEVELS, world, level, &sp4) != 0)
        {
            r8++;
            if ((sp4 & 0xC0) == 0xC0)
                r7++;
        }
        if (get_level_stats_08010068(fileNum, MAIN_LEVELS, world, level + 1, &sp4) != 0)
        {
            r8++;
            if ((sp4 & 0xC0) == 0xC0)
                r7++;
        }
        if (get_level_stats_08010068(fileNum, PLUS_LEVELS, world, level, &sp4) != 0)
        {
            r8++;
            if ((sp4 & 0xC0) == 0xC0)
                r7++;
        }
    }
    saveFile->unk8 = r7;
    saveFile->unk9 = r8;
    if (r7 == 90 && (saveFile->unk31B & 0x80))
        saveFile->unk4 |= 0x80000000;
}

int sub_0800FA04(u8 arg0, u8 world, u8 level)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    s8 r1;
    u8 var;
    register u8 mask asm("r0");

    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (saveFile->mainLevels[world * 8 + level].flags & 0x80)
            return 1;
        r1 = sub_0800F76C(0, world);
        if (r1 == -1)
            return FALSE;
        if (r1 == 0)
            return level == 0;
        return r1 >= level;
    }
    else if (arg0 == 1)
    {
        if (world != 0 || level != 0 || !(saveFile->unk313 & 0x80))
        {
            if (saveFile->plusLevels[world * 8 + level].flags & 0x80)
                return 1;
            r1 = sub_0800F76C(arg0, world);
            if (r1 == -1)
                return FALSE;
            if (r1 == 0)
                return level == 0;
            return r1 >= level;
        }
        return 1;
    }
    else if (arg0 == 4)
        var = saveFile->mainLevels[47].flags;
    else if (arg0 == 5)
        var = saveFile->plusLevels[45].flags;
    else if (arg0 == 2)
        var = saveFile->unk31C[world].flags;
    else if (arg0 == 3)
        var = saveFile->unk34C[world].flags;
    else
        return FALSE;

    mask = 0x80;
    mask &= var;
    if (!(mask))
        return FALSE;
    else
        return TRUE;
}

int get_level_stats_0800FB28(u8 arg0, u8 world, u8 level, u8 *arg3)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    u8 r1;
    u8 r0;
    s8 result;

    *arg3 = 0;
    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    *arg3 |= 0x80;
            }
            else if (level == 7)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    *arg3 |= 0x80;
            }
            else
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].present1;
                *arg3 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    *arg3 |= 0x80;
            }
            return TRUE;
        }
        else
        {
            result = sub_0800F76C(0, world);
            if (result == -1)
                return FALSE;
            if (result == 0)
                return level == 0;
            return result >= level;
        }
    }
    else if (arg0 == 1)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                *arg3 = saveFile->plusLevels[world * 8 + 6].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
            }
            else
            {
                *arg3 = saveFile->plusLevels[world * 8 + level].present1;
                *arg3 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & 0x40)
                *arg3 |= 0x80;
            return TRUE;
        }
        else
        {
            result = sub_0800F76C(1, world);
            if (result == -1)
                return FALSE;
            if (result == 0)
                return level == 0;
            return result >= level;
        }
    }
    *arg3 = 0;
    return TRUE;
}

int get_level_stats_0800FCE4(u8 arg0, u8 world, u8 level)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    u8 r1;

    if (gUnknown_03000BB4 != 0)
        return 0;
    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                if ((saveFile->mainLevels[world * 8 + level].flags & 7) <= 5)
                    return 0;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    return 1;
                return 0;
            }
            else if (level == 7)
            {
                if ((saveFile->mainLevels[world * 8 + level].flags & 7) <= 5)
                    return 0;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    return 1;
            }
            else
            {
                r1 = saveFile->mainLevels[world * 8 + level].present1;
                r1 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                r1 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (r1 <= 6)
                    return 0;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    return 1;
            }
        }
        return 0;
    }
    else if (arg0 == 4)
        return 0;
    else if (arg0 == 1)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                if ((saveFile->plusLevels[world * 8 + level].flags & 7) <= 5)
                    return 0;
            }
            else
            {
                r1 = saveFile->plusLevels[world * 8 + level].present1;
                r1 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                r1 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (r1 <= 6)
                    return 0;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & 0x40)
                return 1;
        }
    }
    else if (arg0 == 2)  // needed to match
        return 0;
    return 0;
}

u8 get_level_stats_0800FE2C(u8 arg0, u8 world, u8 level, u8 *arg3)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];

    *arg3 = 0;
    if (arg0 == 0)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (!(saveFile->mainLevels[world * 8 + level].flags & 0x40))
                    return 1;
                *arg3 |= 0x80;
            }
            else if (level == 7)
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
                if (!(saveFile->mainLevels[world * 8 + level].flags & 0x40))
                    return 1;
                *arg3 |= 0x80;
            }
            else
            {
                *arg3 = saveFile->mainLevels[world * 8 + level].present1;
                *arg3 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
                if (!(saveFile->mainLevels[world * 8 + level].flags & 0x40))
                    return 1;
                *arg3 |= 0x80;
            }
            return 1;
        }
    }
    else if (arg0 == 4)
    {
        if (saveFile->unk313 & 0x80)
        {
            if (!(saveFile->unk313 & 0x40))
                return 1;
            *arg3 = 0xC0;
            return 1;
        }
    }
    else if (arg0 == 1)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                *arg3 = saveFile->plusLevels[world * 8 + level].flags & 7;
                if (*arg3 > 5)
                    *arg3 = 70;
            }
            else
            {
                *arg3 = saveFile->plusLevels[world * 8 + level].present1;
                *arg3 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *arg3 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*arg3 == 7)
                    *arg3 |= 0x40;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & 0x40)
                *arg3 |= 0x80;
            return 1;
        }
    }
    else if (arg0 == 5)
    {
        if (saveFile->unk31B & 0x80)
        {
            if (saveFile->unk31B & 0x40)
                *arg3 = 0xC0;
            return 1;
        }
    }
    else if (arg0 == 2)
    {
        if (saveFile->unk31C[world].flags & 0x80)
        {
            *arg3 = saveFile->unk31C[world].present1;
            *arg3 += saveFile->unk31C[world].present2 * 2;
            *arg3 += saveFile->unk31C[world].present3 * 4;
            if (*arg3 == 7)
                *arg3 |= 0x40;
            if (saveFile->unk31C[world].flags & 0x40)
                *arg3 |= 0x80;
            return 1;

        }
    }
    else if (arg0 == 3)
    {
        if (saveFile->unk34C[world].flags & 0x80)
        {
            *arg3 = saveFile->unk34C[world].present1;
            *arg3 += saveFile->unk34C[world].present2 * 2;
            *arg3 += saveFile->unk34C[world].present3 * 4;
            if (*arg3 == 7)
                *arg3 |= 0x40;
            if (saveFile->unk34C[world].flags & 0x40)
                *arg3 |= 0x80;
            return 1;
        }
    }
    return 0;
}

u8 get_level_stats_08010068(u8 fileNum, u8 category, u8 world, u8 level, u8 *arg4)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];

    *arg4 = 0;
    if (category == MAIN_LEVELS)
    {
        if (level > 7)
            level = 7;
        if (world > 5)
            world = 5;
        if (saveFile->mainLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                *arg4 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg4 > 5)
                    *arg4 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    *arg4 |= 0x80;

            }
            else if (level == 7)
            {
                *arg4 = saveFile->mainLevels[world * 8 + level].flags & 7;
                if (*arg4 > 5)
                    *arg4 = 70;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    *arg4 |= 0x80;

            }
            else
            {
                *arg4 = saveFile->mainLevels[world * 8 + level].present1;
                *arg4 += saveFile->mainLevels[world * 8 + level].present2 * 2;
                *arg4 += saveFile->mainLevels[world * 8 + level].present3 * 4;
                if (*arg4 == 7)
                    *arg4 |= 0x40;
                if (saveFile->mainLevels[world * 8 + level].flags & 0x40)
                    *arg4 |= 0x80;

            }
            return 1;
        }
    }
    else if (category == 4)
    {
        if (saveFile->unk313 & 0x80)
        {
            if (saveFile->unk313 & 0x40)
                *arg4 = 0xC0;
            return 1;
        }
    }
    else if (category == PLUS_LEVELS)
    {
        if (level > 6)
            level = 6;
        if (world > 5)
            world = 5;
        if (saveFile->plusLevels[world * 8 + level].flags & 0x80)
        {
            if (level == 6)
            {
                *arg4 = saveFile->plusLevels[world * 8 + level].flags & 7;
                if (*arg4 > 5)
                    *arg4 = 70;
            }
            else
            {
                *arg4 = saveFile->plusLevels[world * 8 + level].present1;
                *arg4 += saveFile->plusLevels[world * 8 + level].present2 * 2;
                *arg4 += saveFile->plusLevels[world * 8 + level].present3 * 4;
                if (*arg4 == 7)
                    *arg4 |= 0x40;
            }
            if (saveFile->plusLevels[world * 8 + level].flags & 0x40)
                *arg4 |= 0x80;
            return 1;
        }
    }
    else if (category == 5)
    {
        if (saveFile->unk31B & 0x80)
        {
            if (saveFile->unk31B & 0x40)
                *arg4 = 0xC0;
            return 1;
        }
    }
    else if (category == 2)
    {
        if (saveFile->unk31C[world].flags & 0x80)
        {
            *arg4 = saveFile->unk31C[world].present1;
            *arg4 += saveFile->unk31C[world].present2 * 2;
            *arg4 += saveFile->unk31C[world].present3 * 4;
            if (*arg4 == 7)
                *arg4 |= 0x40;
            if (saveFile->unk31C[world].flags & 0x40)
                *arg4 |= 0x80;
            return 1;
        }
    }
    else if (category == 3)
    {
        if (saveFile->unk34C[world].flags & 0x80)
        {
            *arg4 = saveFile->unk34C[world].present1;
            *arg4 += saveFile->unk34C[world].present2 * 2;
            *arg4 += saveFile->unk34C[world].present3 * 4;
            if (*arg4 == 7)
                *arg4 |= 0x40;
            if (saveFile->unk34C[world].flags & 0x40)
                *arg4 |= 0x80;
            return 1;
        }
    }
    return 0;
}

extern u16 gUnknown_080784F8[][8];
extern u16 gUnknown_08078558[][7];
extern u8 gFileSelectMenuSel;

void init_current_save_file_080102B4(u8 world)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    s16 level;

    if (gUnknown_03000B80 == 0)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->mainLevels[world * 8 + level].highScore = gUnknown_080784F8[world][level];
            saveFile->mainLevels[world * 8 + level].flags = 0;
            saveFile->mainLevels[world * 8 + level].present2 = 0;
            saveFile->mainLevels[world * 8 + level].present3 = 0;
            saveFile->mainLevels[world * 8 + level].present1 = 0;
        }
        saveFile->lives = 5;
        sub_0800F84C(gFileSelectMenuSel);
    }
    else if (gUnknown_03000B80 == 1)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->plusLevels[world * 8 + level].highScore = gUnknown_08078558[world][level];
            saveFile->plusLevels[world * 8 + level].flags = 0;
            saveFile->plusLevels[world * 8 + level].present2 = 0;
            saveFile->plusLevels[world * 8 + level].present3 = 0;
            saveFile->plusLevels[world * 8 + level].present1 = 0;
        }
        saveFile->lives = 5;
        sub_0800F84C(gFileSelectMenuSel);
    }
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

u8 sub_080103C8(u8 arg0, u8 world)
{
    u8 dummy;
    u8 a, b, c;

    if (arg0 == 0)
    {
        a = 0; b = world;
jump:
        c = 7;
    }
    else if (arg0 == 4)
    {
        a = 0; b = 5; goto jump;
    }
    else if (arg0 == 1)
    {
        a = 1; b = world; c = 6;
    }
    else if (arg0 == 5)
    {
        a = 1; b = 5; c = 6;
    }
    else if (arg0 == 2)
    {
        a = 2; b = world; c = 0;
    }
    else if (arg0 == 3)
    {
        a = 3; b = world; c = 0;
    }
    else
        return FALSE;

    if (!get_level_stats_0800FE2C(a, b, c, &dummy))
        return FALSE;
    return TRUE;
}

int sub_0801042C(u8 arg0, u8 world)
{
    u8 sp0;
    u8 level;

    if (arg0 == 0)
    {
        for (level = 0; level < 8; level++)
        {
            if (!get_level_stats_0800FE2C(arg0, world, level, &sp0))
                return FALSE;
            if ((sp0 & 0xC0) != 0xC0)
                return FALSE;
        }
        return TRUE;
    }
    else if (arg0 == 4)
    {
        if (!get_level_stats_0800FE2C(4, 0, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    else if (arg0 == 1)
    {
        for (level = 0; level < 6; level++)
        {
            if (!get_level_stats_0800FE2C(arg0, world, level, &sp0))
                return FALSE;
            if ((sp0 & 0xC0) != 0xC0)
                return FALSE;
        }
        return TRUE;
    }
    else if (arg0 == 5)
    {
        if (!get_level_stats_0800FE2C(5, 0, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    else if (arg0 == 2)
    {
        if (!get_level_stats_0800FE2C(2, world, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    else if (arg0 == 3)
    {
        if (!get_level_stats_0800FE2C(3, world, 0, &sp0))
            return FALSE;
        if ((sp0 & 0xC0) != 0xC0)
            return FALSE;
        return TRUE;
    }
    return FALSE;
}

void sub_08010534(u8 world, u8 level, u8 *arg2)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];

    asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");asm("");

    if (gUnknown_03000BB4 != 0)
    {
        sub_0802F168(level, arg2);
        return;
    }
    if (gUnknown_03000B80 == 0)
    {
        if (gUnknown_03000B90.unk20 & 1)
        {
            if ((saveFile->mainLevels[world * 8 + 6].flags & 7) <= 5)
            {
                saveFile->mainLevels[world * 8 + 6].flags &= 0xF8;
                saveFile->mainLevels[world * 8 + 6].flags |= gUnknown_03001BA0;
            }
            saveFile->mainLevels[world * 8 + 6].flags |= 0x80;
        }
        else if (gUnknown_03000B90.unk20 & 2)
        {
            if ((saveFile->mainLevels[world * 8 + 7].flags & 7) <= 5)
            {
                saveFile->mainLevels[world * 8 + 7].flags &= 0xF8;
                saveFile->mainLevels[world * 8 + 7].flags |= gUnknown_03000C20;
            }
            saveFile->mainLevels[world * 8 + 7].flags |= 0x80;
        }
        else
        {
            u8 var = level / 2;

            if (saveFile->mainLevels[world * 8 + var].present1 == 0
             || saveFile->mainLevels[world * 8 + var].present2 == 0
             || saveFile->mainLevels[world * 8 + var].present3 == 0)
            {
                saveFile->mainLevels[world * 8 + var].present1 = (arg2[0] != 0);
                saveFile->mainLevels[world * 8 + var].present2 = (arg2[1] != 0);
                saveFile->mainLevels[world * 8 + var].present3 = (arg2[2] != 0);
            }
            saveFile->mainLevels[world * 8 + var].flags |= 0x80;
        }
    }
    else if (gUnknown_03000B80 == 1)
    {
        if (level == 6)
        {
            if ((saveFile->plusLevels[world * 8 + level].flags & 7) <= 5)
            {
                saveFile->plusLevels[world * 8 + level].flags &= 0xF8;
                saveFile->plusLevels[world * 8 + level].flags |= gUnknown_03000C20;
            }
            saveFile->plusLevels[world * 8 + level].flags |= 0x80;
        }
        else
        {
            if (saveFile->plusLevels[world * 8 + level].present1 == 0
             || saveFile->plusLevels[world * 8 + level].present2 == 0
             || saveFile->plusLevels[world * 8 + level].present3 == 0)
            {
                saveFile->plusLevels[world * 8 + level].present1 = (arg2[0] != 0);
                saveFile->plusLevels[world * 8 + level].present2 = (arg2[1] != 0);
                saveFile->plusLevels[world * 8 + level].present3 = (arg2[2] != 0);
            }
        }
        saveFile->plusLevels[world * 8 + level].flags |= 0x80;
    }
    else if (gUnknown_03000B80 == 4)
    {
        saveFile->unk313 |= 0x80;
    }
    else if (gUnknown_03000B80 == 5)
    {
        saveFile->unk31B |= 0x80;
    }
    else if (gUnknown_03000B80 == 2)
    {
        if (saveFile->unk31C[world].present1 == 0
         || saveFile->unk31C[world].present2 == 0
         || saveFile->unk31C[world].present3 == 0)
        {
            saveFile->unk31C[world].present1 = (arg2[0] != 0);
            saveFile->unk31C[world].present2 = (arg2[1] != 0);
            saveFile->unk31C[world].present3 = (arg2[2] != 0);
        }
        saveFile->unk31C[world].flags |= 0x80;
    }
    else if (gUnknown_03000B80 == 3)
    {
        if (saveFile->unk34C[world].present1 == 0
         || saveFile->unk34C[world].present2 == 0
         || saveFile->unk34C[world].present3 == 0)
        {
            saveFile->unk34C[world].present1 = (arg2[0] != 0);
            saveFile->unk34C[world].present2 = (arg2[1] != 0);
            saveFile->unk34C[world].present3 = (arg2[2] != 0);
        }
        saveFile->unk34C[world].flags |= 0x80;
    }
}

void sub_080107E8(u8 world, u8 level, u16 arg2)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];

    if (gUnknown_03000BB4 != 0)
    {
        sub_0802F1AC(level, arg2);
        return;
    }
    gUnknown_03000B6C = 0;
    if (gUnknown_03000B80 == 0)
    {
        if (gUnknown_03000B90.unk20 & 1)
        {
            if (saveFile->mainLevels[world * 8 + 6].highScore <= arg2)
            {
                gUnknown_03000B4C = saveFile->mainLevels[world * 8 + 6].highScore = arg2;
                saveFile->mainLevels[world * 8 + 6].flags |= 0x40;
            }
            else
            {
                gUnknown_03000B4C = arg2;
            }
        }
        else if (gUnknown_03000B90.unk20 & 2)
        {
            if (saveFile->mainLevels[world * 8 + 7].highScore <= arg2)
            {
                gUnknown_03000B4C = saveFile->mainLevels[world * 8 + 7].highScore = arg2;
                saveFile->mainLevels[world * 8 + 7].flags |= 0x40;
            }
            else
            {
                gUnknown_03000B4C = arg2;
            }
        }
        else
        {
            level /= 2;
            if (saveFile->mainLevels[world * 8 + level].highScore <= arg2)
            {
                gUnknown_03000B4C = saveFile->mainLevels[world * 8 + level].highScore = arg2;
                saveFile->mainLevels[world * 8 + level].flags |= 0x40;
            }
            else
            {
                gUnknown_03000B4C = arg2;
            }
        }
    }
    else if (gUnknown_03000B80 == 1)
    {
        if (saveFile->plusLevels[world * 8 + level].highScore <= arg2)
        {
            gUnknown_03000B4C = saveFile->plusLevels[world * 8 + level].highScore = arg2;
            saveFile->plusLevels[world * 8 + level].flags |= 0x40;
        }
        else
        {
            gUnknown_03000B4C = arg2;
        }
    }
    else if (gUnknown_03000B80 == 2)
    {

        if (saveFile->unk31C[world].highScore <= arg2)
        {
            gUnknown_03000B4C = saveFile->unk31C[world].highScore = arg2;
            saveFile->unk31C[world].flags |= 0x40;
        }
        else
        {
            gUnknown_03000B4C = arg2;
        }
    }
    else if (gUnknown_03000B80 == 3)
    {

        if (saveFile->unk34C[world].highScore <= arg2)
        {
           gUnknown_03000B4C = saveFile->unk34C[world].highScore = arg2;
            saveFile->unk34C[world].flags |= 0x40;
        }
        else
        {
            gUnknown_03000B4C = arg2;
        }
    }
    else
    {
        gUnknown_03000B4C = 0;
    }
}

u16 get_level_highscore_0801095C(u8 world, u8 level, u8 arg2)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];

    if (gUnknown_03000BB4 != 0)
        return sub_0802F1C0(level);
    if (arg2 == 0)
    {
        if (level == 12)
            return saveFile->mainLevels[world * 8 + 6].highScore;
        if (level == 13)
            return saveFile->mainLevels[world * 8 + 7].highScore;
        level /= 2;
        return saveFile->mainLevels[world * 8 + level].highScore;
    }
    if (arg2 == 1)
        return saveFile->plusLevels[world * 8 + level].highScore;
    if (arg2 == 4)
        return 0;
    if (arg2 == 5)
        return 0;
    if (arg2 == 2)
        return saveFile->unk31C[world].highScore;
    if (arg2 == 3)
        return saveFile->unk34C[world].highScore;
}

void sub_08010A3C(u8 arg0, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    s8 sp0;
    u8 sp1;
    s8 sp2;

    if ((saveFile->unk31B & 0x80) == 0)
    {
        sub_08014B78(*pSelectedSaveFileNum, &sp0, &sp1, &sp2);
        if (gUnknown_03000B80 == 0)
        {
            if (sp2 == 0 && arg0 >= sp0)
            {
                if (gUnknown_03000B90.unk20 & 1)
                {
                    saveFile->unk2 = saveFile->unk1 = (arg0 << 4) | 6;
                }
                else if (gUnknown_03000B90.unk20 & 2)
                {
                    if (gUnknown_03000B58 > 5)
                        gUnknown_03000B58 = 0;
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 <= 4)
                        saveFile->unk2 = saveFile->unk1;
                    else
                        saveFile->unk2 = arg1 | 0x50;
                }
                else
                {
                    u8 var = arg1 / 2;
                    saveFile->unk1 = var | (arg0 << 4);
                    saveFile->unk2 = (gUnknown_03000B58 << 4) | var;
                }
                saveFile->unk3 = 0;
            }
        }
        else if (gUnknown_03000B80 == 1)
        {
            if (sp2 == 1 && arg0 >= sp0 )
            {
                if (gUnknown_03000B90.unk20 & 2)
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 > 4)
                        saveFile->unk2 = arg1 | 0x50;
                    else
                        saveFile->unk2 = saveFile->unk1;
                }
                else
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    saveFile->unk2 = (gUnknown_03000B58 << 4) | arg1;
                }
                saveFile->unk3 = 1;
            }
        }
        else if (gUnknown_03000B80 == 4)
        {
            saveFile->unk2 = saveFile->unk1 = 0;
            saveFile->unk3 = 1;
        }
        else if (gUnknown_03000B80 == 5)
        {
            saveFile->unk1 = 0x55;
            saveFile->unk2 = 0x56;
            saveFile->unk3 = 1;
        }
    }
    sub_0800F84C(*pSelectedSaveFileNum);
    if (saveFile->lives <= 0)
        saveFile->lives = 1;
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

extern u32 *gUnknown_080788F8;

void sub_08010BE0(u8 arg0, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[*pSelectedSaveFileNum];
    s8 sp0;
    s8 sp1;
    s8 sp2;

    if (gUnknown_03000BB4 != 0)
    {
        sub_0802F1D4();
        *gUnknown_080788F8 |= 1;
        sub_0802A164();
        return;
    }
    *gUnknown_080788F8 &= ~1;
    if ((saveFile->unk31B & 0x80) == 0)
    {
        sub_08014B78(*pSelectedSaveFileNum, &sp0, &sp1, &sp2);
        if (gUnknown_03000B80 == 0)
        {
            arg1 /= 2;
            if (sp2 == 0 && (arg0 > sp0 || (arg0 == sp0 && arg1 >= sp1)))
            {
                if (gUnknown_03000B90.unk20 & 1)
                {
                    saveFile->unk2 = saveFile->unk1 = (arg0 << 4) | 6;
                }
                else if (gUnknown_03000B90.unk20 & 2)
                {
                    if (gUnknown_03000B58 > 5)
                        gUnknown_03000B58 = 0;
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 <= 4)
                        saveFile->unk2 = arg1 | (arg0 << 4);
                    else
                        saveFile->unk2 = arg1 | 0x50;
                }
                else
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    saveFile->unk2 = (gUnknown_03000B58 << 4) | arg1;
                }
                saveFile->unk3 = 0;
            }
        }
        else if (gUnknown_03000B80 == 1)
        {
            if (sp2 <= 1 && (arg0 > sp0 || (arg0 == sp0 && arg1 >= sp1)))
            {
                if (gUnknown_03000B90.unk20 & 2)
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    if (arg0 > 4)
                        saveFile->unk2 = arg1 | 0x50;
                    else
                        saveFile->unk2 = (arg0 << 4) | arg1;
                }
                else
                {
                    saveFile->unk1 = (arg0 << 4) | arg1;
                    saveFile->unk2 = (gUnknown_03000B58 << 4) | arg1;
                }
                saveFile->unk3 = 1;
            }
        }
        else if (gUnknown_03000B80 == 4)
        {
            saveFile->unk2 = saveFile->unk1 = 0;
            saveFile->unk3 = 1;
        }
        else if (gUnknown_03000B80 == 5)
        {
            saveFile->unk2 = saveFile->unk1 = 0x55;
            saveFile->unk3 = 1;
        }
    }
    sub_0800F84C(*pSelectedSaveFileNum);
    if (saveFile->lives <= 0)
        saveFile->lives = 1;
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

void init_level_highscores_08010DEC(struct SaveFile *saveFile)
{
    s16 world, level;

    saveFile->lives = 5;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 8; level++)
            saveFile->mainLevels[world * 8 + level].highScore = gUnknown_080784F8[world][level];
        for (level = 0; level < 7; level++)
            saveFile->plusLevels[world * 8 + level].highScore = gUnknown_08078558[world][level];
    }
    saveFile->unk30C = 0;
    saveFile->unk314 = 0;
}

void init_all_save_files_08010E90(void)
{
    struct SaveFile *saveFile;
    s16 world;
    s16 level;

    saveFile = &gSaveFilesPtr[1];
    saveFile->unk2 = saveFile->unk1 = 16;
    saveFile->lives = 5;
    saveFile->unk4 = 0;
    for (world = 0; world < 1; world++)
    {
        for (level = 0; level < 6; level++)
            saveFile->mainLevels[world * 8 + level].flags = 0x80;
        saveFile->mainLevels[world * 8 + level].flags = 0x86;
        saveFile->mainLevels[world * 8 + level + 1].flags = 0x80;
    }
    sub_0800F84C(1);

    saveFile = &gSaveFilesPtr[2];
    saveFile->unk2 = saveFile->unk1 = 48;
    saveFile->lives = 5;
    saveFile->unk4 = 0;
    for (world = 0; world < 3; world++)
    {
        for (level = 0; level < 6; level++)
            saveFile->mainLevels[world * 8 + level].flags = 0x80;
        saveFile->mainLevels[world * 8 + level].flags = 0x86;
        saveFile->mainLevels[world * 8 + level + 1].flags = 0x80;
    }
    sub_0800F84C(2);
}

void unlock_everything(void)  // unreferenced?
{
    struct SaveFile *saveFile = &gSaveFilesPtr[gFileSelectMenuSel];
    s16 world;
    s16 level;

    saveFile->lives = 5;
    saveFile->unk4 = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->mainLevels[world * 8 + level].flags = 0xC0;
            saveFile->plusLevels[world * 8 + level].flags = 0xC0;
            saveFile->plusLevels[world * 8 + level].present2 = 1;
            saveFile->plusLevels[world * 8 + level].present3 = 1;
            saveFile->plusLevels[world * 8 + level].present1 = 1;
            saveFile->mainLevels[world * 8 + level].present2 = 1;
            saveFile->mainLevels[world * 8 + level].present3 = 1;
            saveFile->mainLevels[world * 8 + level].present1 = 1;
        }
        saveFile->unk31C[world].flags = 0x80;
        saveFile->unk34C[world].flags = 0x80;
        saveFile->unk31C[world].present2 = 1;
        saveFile->unk31C[world].present3 = 1;
        saveFile->unk31C[world].present1 = 1;
        saveFile->unk34C[world].present2 = 1;
        saveFile->unk34C[world].present3 = 1;
        saveFile->unk34C[world].present1 = 1;
        saveFile->mainLevels[world * 8 + level].flags = 0xC6;
        saveFile->mainLevels[world * 8 + level + 1].flags = 0xC6;
        saveFile->plusLevels[world * 8 + level].flags = 0xC6;
        saveFile->unk313 = 0x80;
        saveFile->unk31B = 0x80;
    }
    sub_0800F84C(gFileSelectMenuSel);
    sub_08014D08();
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

void init_current_save_file_08011098(void)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[gFileSelectMenuSel];
    s16 world;
    s16 level;

    saveFile->lives = 5;
    saveFile->unk4 = 0xF000FFEF;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            saveFile->mainLevels[world * 8 + level].flags = 0xC0;
            saveFile->plusLevels[world * 8 + level].flags = 0xC0;
        }
        saveFile->unk31C[world].flags = 0xC0;
        saveFile->unk34C[world].flags = 0xC0;
        saveFile->unk31C[world].present2 = 1;
        saveFile->unk31C[world].present3 = 1;
        saveFile->unk31C[world].present1 = 1;
        saveFile->unk34C[world].present2 = 1;
        saveFile->unk34C[world].present3 = 1;
        saveFile->unk34C[world].present1 = 1;
        saveFile->mainLevels[world * 8 + level].flags = 0xC6;
        saveFile->mainLevels[world * 8 + level + 1].flags = 0xC6;
        saveFile->unk313 = 0xC0;
        saveFile->unk31B = 0xC0;
    }
    sub_0800F84C(gFileSelectMenuSel);
    sub_08014D08();
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

u8 sub_080111B4(u8 arg0)
{
    s16 world;
    s16 level;
    u8 sp4;
    s16 sp8;
    s16 r6;

    sp8 = 0;
    r6 = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 6; level++)
        {
            if (get_level_stats_08010068(arg0, MAIN_LEVELS, world, level, &sp4) && (sp4 & 0xC0) == 0xC0)
                r6++;
        }
        if (get_level_stats_08010068(arg0, MAIN_LEVELS, world, level, &sp4) && (sp4 & 0xC0) == 0xC0)
            r6++;
        if (get_level_stats_08010068(arg0, MAIN_LEVELS, world, level + 1, &sp4) && (sp4 & 0xC0) == 0xC0)
            r6++;
    }
    if (r6 < 48)
        return 0;
    sp8++;
    r6 = 0;
    for (world = 0; world < 6; world++)
    {
        for (level = 0; level < 7; level++)
        {
            if (get_level_stats_08010068(arg0, PLUS_LEVELS, world, level, &sp4) && (sp4 & 0xC0) == 0xC0)
                r6++;
        }
    }
    if (r6 >= 42)
    {
        sp8++;
        r6 = 0;
        for (world = 0; world < 6; world++)
        {
            if (get_level_stats_08010068(arg0, 2, world, 0, &sp4))
                r6++;
            if (get_level_stats_08010068(arg0, 3, world, 0, &sp4))
                r6++;
        }
        if (r6 > 11)
            return ++sp8;
    }
    return sp8;
}

extern u16 gUnknown_080788E0[];

void process_some_key_sequence(void)  // unreferenced?
{
    if (gHeldKeys & SELECT_BUTTON)
    {
        gHeldKeys &= ~SELECT_BUTTON;
        if (gHeldKeys == gUnknown_080788E0[gUnknown_03000065])
        {
            gUnknown_03000065++;
            if (gUnknown_03000065 == 10)
                play_sound_effect_08071990(20, 8, 16, 64, 0, 0x80, 0);
        }
        else if (gUnknown_03000065 != 0
         && gHeldKeys != 0
         && gHeldKeys != gUnknown_080788E0[gUnknown_03000065 - 1])
        {
            gUnknown_03000065 = 0;
        }
        gSomeKeys_030012E8 = 0;
        gHeldKeys = 0;
    }
    else
    {
        gUnknown_03000065 = 0;
    }
}

extern u32 *gUnknown_080788FC;
extern u32 *gUnknown_0807CA94;

void sub_08011428(u32 arg0)
{
    u32 r6 = *gUnknown_080788FC;
    s16 i;

    CpuFill16(0, pSelectedSaveFileNum, 0xA84);
    sub_08029080();
    if (arg0 == 0)
        *gUnknown_080788FC = r6;
    sub_0807220C((*gUnknown_080788FC << 26) >> 31);
    init_level_highscores_08010DEC(&gSaveFilesPtr[0]);
    init_level_highscores_08010DEC(&gSaveFilesPtr[1]);
    init_level_highscores_08010DEC(&gSaveFilesPtr[2]);
    sub_0802F06C();
    sub_0802F1D4();
    for (i = 0; i < 3; i++)
        gUnknown_03000066[i] = sub_080111B4(i);
    if (gUnknown_03000B50 == 1)
        sub_0802A164();
}

extern u8 gUnknown_085FEFE4[];
extern u8 gUnknown_08617030[];
extern struct UnkStruct1_sub_child gUnknown_087B2FF8;

void file_select_init_callback(void)
{
    s16 i;

    arena_restore_head(0);
    gUnknown_03001740 = 0;
    gUnknown_0300005D = gUnknown_03000062 = 0;
    if (*gUnknown_0807CA94 != 0)
        gUnknown_0300005D = gUnknown_03000062 = 1;
    if (gUnknown_030009C8 == 4)
        gFileSelectMenuSel = 4;
    else if ((gUnknown_030009C8 == 24 || gUnknown_030009C8 == 25) && gUnknown_0300005D != 0)
        gFileSelectMenuSel = 3;
    else if ((*gUnknown_080788F8 & 1) && gUnknown_0300005D != 0)
        gFileSelectMenuSel = gUnknown_03000059 = 3;
    else
        gFileSelectMenuSel = gUnknown_03000059 = *pSelectedSaveFileNum;
    gUnknown_0300005B = 0;
    gUnknown_0300005E = 0;
    gUnknown_0300005F = gUnknown_085FEFE4[1];
    gUnknown_03000060 = 0;
    gUnknown_03000061 = gUnknown_08617030[1];
    gUnknown_03000064 = 0;
    gUnknown_03000065 = 0;
    gUnknown_030012A0 = 0;
    gUnknown_03001710 = 0;
    sub_08032EB8(&gUnknown_087B2FF8);
    DmaFill16(3, 0xA0, (void *)OAM, 0x200);
    if (sub_08071FE4() != 10)
        sub_0807204C(10, 0x80, 1);
    set_blend_regs_08029CDC(gUnknown_087B2FF8.bldCnt, gUnknown_087B2FF8.bldAlpha, gUnknown_087B2FF8.bldY);
    REG_DISPCNT = 0x1B40;
    load_palette(1, 3);
    CpuFill16(0, &gBGOffsets_03001730, 16);
    sub_080381E4(0, 0);
    for (i = 0; i < 3; i++)
        gUnknown_03000066[i] = sub_080111B4(i);
}

extern u8 gUnknown_080A8668;

static inline u8 inlinefunc(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    if (fileNum != 3 && (saveFile->unk313 & 0x80) && saveFile->unk8 >= gUnknown_080A8668)
        return TRUE;
    else
        return FALSE;
}

void sub_0801168C(u8 arg0)
{
    struct SaveFile *saveFile;
    u8 r0;
    u8 fileNum;

    if (arg0 != 0)
    {
        if (gUnknown_0300005D != 0)
        {
            s8 sp0[32] = {254, 46, 94, 142};  //gUnknown_0807638C
            gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
        }
        else
        {
            s8 sp0[32] = {8, 65, 122};  //gUnknown_080763AC
            gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
        }
        if (inlinefunc(gFileSelectMenuSel))
            gBGOffsets_03001730.bg2vofs = 0xFF00;
        REG_DISPCNT = 0x1F40;
        REG_BLDCNT = 0x3B44;
        REG_BLDALPHA = 0x0808;
    }
    else
    {
        gBGOffsets_03001730.bg1vofs = 0;
        gBGOffsets_03001730.bg2vofs = 0;
        gBGOffsets_03001730.bg2hofs = 0;
        gBGOffsets_03001730.bg0vofs = 0;
        REG_DISPCNT = 0x1B40;
    }
}

static inline u8 inlinefunc2(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    if (fileNum <= 2 && (saveFile->mainLevels[0].flags & 0x80) != 0)
        return TRUE;
    else
        return FALSE;
}

static inline void inlinefunc3(u8 fileNum, u8 arg1)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    saveFile->unk4 |= arg1;
}

static inline void inlinefunc4(u8 fileNum)
{
    struct SaveFile *saveFile = &gSaveFilesPtr[fileNum];
    int lives = saveFile->lives;
    gUnknown_03000BBC = lives;
}

static inline void inlinefunc5(u8 fileNum)
{
    u8 *r6 = &gUnknown_03000B58;
    u8 *r3 = &gUnknown_03000B74;
    u8 *r4 = &gUnknown_03000B80;
    struct SaveFile *r1 = &gSaveFilesPtr[fileNum];
    u8 r7 = r1->unk2 & 0xF;
    *r4 = r1->unk3;
    *r3 = r7;
    *r6 = (r1->unk2 >> 4) & 7;
    gUnknown_03000B80 = r1->unk3;
}

void pick_file(void)
{
    int r2;
    struct SaveFile *saveFile;
    int r0;
    s8 r5;
    struct SaveFile *r1;
    u8 spC;
    u32 r7;

    if (sub_08034004())
    {
        if (gFileSelectMenuSel == 5)
        {
            for (r2 = 0; r2 <= 2; r2++)
            {
                if (inlinefunc2(r2))
                {
                    r0 = r2 + 1;
                    goto _080117CE;
                }
            }
            r0 = 0;
        _080117CE:
            r5 = r0;
            if (*gUnknown_0807CA94 == 0 && r5 == 0)
            {
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
            else
            {
                play_sound_effect_08071990(35, 8, 16, 64, 0, 0x80, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                if (r5 > 0)
                    gFileSelectMenuSel = r5 - 1;
                else
                    gFileSelectMenuSel = 0;
                gUnknown_0300005B = 2;
                sub_0801168C(1);
            }
            return;
        }
        else if (gFileSelectMenuSel == 4)
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 0x80, 0);
            goto_state_080070E8(MAIN_STATE_OPTION_MENU, 1);
            return;
        }
        else if (gFileSelectMenuSel == 3)
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 0x80, 0);
            goto_state_080070E8(29, 1);
            return;
        }
        else if (gFileSelectMenuSel <= 2)
        {
            u8 one;

            play_sound_effect_08071990(35, 8, 16, 64, 0, 0x80, 0);
            *pSelectedSaveFileNum = gFileSelectMenuSel;
            inlinefunc5(*pSelectedSaveFileNum);
            inlinefunc4(*pSelectedSaveFileNum);
            if (gUnknown_03000B80 == 0)
                gUnknown_03000B74 = gUnknown_03000B74 << 1;
            if (get_level_stats_0800FE2C(0, 0, 0, &spC))
            {
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
            }
            else
            {
                init_movie_0802D468(3, 41, MAIN_STATE_LEVEL_SELECT, 1);
                goto_state_080070E8(MAIN_STATE_MOVIE, 1);
                one = 1;
                inlinefunc3(*pSelectedSaveFileNum, one);
                if (gUnknown_03000B50 == 1)
                    sub_0802A164();
            }
            return;
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(22, 8, 16, 64, 0, 0x80, 0);
        goto_state_080070E8(MAIN_STATE_TITLE_SCREEN, 1);
        return;
    }

    if (gFileSelectMenuSel <= 7)
    {
        if (gFileSelectMenuSel <= 3)
        {
            if (gSomeKeys_030012E8 & DPAD_RIGHT)
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                if (gUnknown_03000059 == 2 && gUnknown_0300005D == 0)
                    gFileSelectMenuSel++;
                gFileSelectMenuSel++;
            }
            else if (gFileSelectMenuSel <= 2 && (gSomeKeys_030012E8 & DPAD_DOWN))
            {
                if (inlinefunc(gFileSelectMenuSel))
                {
                    play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
                    gUnknown_03000059 = gFileSelectMenuSel;
                    gFileSelectMenuSel += 6;
                    gUnknown_0300005B = 1;
                    return;
                }
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
            }
        }
        else
        {
            if (gSomeKeys_030012E8 & DPAD_DOWN)
            {
                if (gFileSelectMenuSel == 4)
                {
                    play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
                    gUnknown_03000059 = gFileSelectMenuSel;
                    gFileSelectMenuSel++;
                }
                else
                {
                    play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
                }
            }
            if (gSomeKeys_030012E8 & DPAD_RIGHT)
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel = 0;
            }
        }
    }
    else if (gSomeKeys_030012E8 & DPAD_RIGHT)
    {
        play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        gUnknown_03000059 = gFileSelectMenuSel;
        gFileSelectMenuSel = 0;
    }

    if (gFileSelectMenuSel != 0)
    {
        if (gFileSelectMenuSel <= 4)
        {
            if (gSomeKeys_030012E8 & DPAD_LEFT)
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                if (gUnknown_03000059 == 4 && gUnknown_0300005D == 0)
                    gFileSelectMenuSel--;
                gFileSelectMenuSel--;
            }
            if (gSomeKeys_030012E8 & DPAD_UP)
                play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
        else if (gSomeKeys_030012E8 & DPAD_UP)
        {
            play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel--;
        }
        else if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            if (gUnknown_0300005D == 0)
                gFileSelectMenuSel--;
            gFileSelectMenuSel -= 2;
        }
    }
    else
    {
        if (gSomeKeys_030012E8 & DPAD_UP)
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 4;
        }
    }
}

void sub_08011CB4(void)
{
    if (gSomeKeys_030012E8 & DPAD_UP)
    {
        play_sound_effect_08071990(178, 8, 16, 64, 0, 128, 0);
        gUnknown_03000059 = gFileSelectMenuSel;
        gFileSelectMenuSel -= 6;
        gUnknown_0300005B = 0;
    }
    else if (gSomeKeys_030012E8 & DPAD_LEFT)
    {
        if (gFileSelectMenuSel > 6)
        {
            if (inlinefunc(gFileSelectMenuSel - 7))
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel--;
            }
            else
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel = 0;
                gUnknown_0300005B = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 0;
            gUnknown_0300005B = 0;
        }
    }
    else if (gSomeKeys_030012E8 & DPAD_RIGHT)
    {
        if (gFileSelectMenuSel <= 7)
        {
            if (inlinefunc(gFileSelectMenuSel - 5))
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel++;
            }
            else
            {
                play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
                gUnknown_03000059 = gFileSelectMenuSel;
                gFileSelectMenuSel = 5;
                gUnknown_0300005B = 0;
            }
        }
        else
        {
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 5;
            gUnknown_0300005B = 0;
        }
    }

    if (gSomeKeys_030012E8 & DPAD_DOWN)
        play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
    if (sub_08034004())
    {
        play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
        gUnknown_03000B80 = 2;
        if (gFileSelectMenuSel == 3)
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            goto_state_080070E8(29, 1);
        }
        else
        {
            *pSelectedSaveFileNum = gFileSelectMenuSel - 6;
            gUnknown_03000B58 = 0;
            gUnknown_03000B74 = 0;
            goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
        }
    }
}

void sub_08011F60(void)
{
    gBGOffsets_03001730.bg1vofs = 0xFF00;
    if (sub_08034004())
    {
        u32 r1;

        if (gFileSelectMenuSel <= 2)
            r1 = inlinefunc2(gFileSelectMenuSel);
        else
            r1 = *gUnknown_0807CA94;
        if (!r1)
        {
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            gUnknown_0300005B = 3;
            gUnknown_0300005C = 0;
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
        gUnknown_03000059 = gFileSelectMenuSel;
        gFileSelectMenuSel = 0;
        gUnknown_0300005B = 0;
        sub_0801168C(0);
    }
    else
    {
        if (gSomeKeys_030012E8 & (DPAD_UP|DPAD_DOWN))
            play_sound_effect_08071990(27, 8, 16, 64, 0, 128, 0);
        if (gSomeKeys_030012E8 & DPAD_RIGHT)
        {
            gUnknown_03000059 = gFileSelectMenuSel;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel < gUnknown_0300005D + 2)
                gFileSelectMenuSel++;
            else
                gFileSelectMenuSel = 0;
            if (gUnknown_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            if (inlinefunc(gFileSelectMenuSel))
                gBGOffsets_03001730.bg2vofs = 0xFF00;
            else
                gBGOffsets_03001730.bg2vofs = 0;
        }
        else if (gSomeKeys_030012E8 & DPAD_LEFT)
        {
            gUnknown_03000059 = gFileSelectMenuSel;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel != 0)
                gFileSelectMenuSel--;
            else
                gFileSelectMenuSel = gUnknown_0300005D + 2;
            if (gUnknown_0300005D != 0)
            {
                s8 sp0[32] = {254, 46, 94, 142};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            else
            {
                s8 sp0[32] = {8, 65, 122};
                gBGOffsets_03001730.bg2hofs = -sp0[gFileSelectMenuSel];
            }
            if (inlinefunc(gFileSelectMenuSel))
                gBGOffsets_03001730.bg2vofs = 0xFF00;
            else
                gBGOffsets_03001730.bg2vofs = 0;
        }
    }
}

void sub_08012230(void)  // for new save file?
{
    s16 i;

    gBGOffsets_03001730.bg0vofs = 0xFF00;
    gBGOffsets_03001730.bg1vofs = 0xFF00;
    if (sub_08034004())
    {
        if (gUnknown_0300005C != 0)
        {
            u8 r1;

            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
            r1 = gFileSelectMenuSel;
            if (r1 <= 2)
            {
                CpuFill16(0, &gSaveFilesPtr[r1], sizeof(struct SaveFile));
                init_level_highscores_08010DEC(&gSaveFilesPtr[r1]);
                if (gUnknown_03000B50 == 1)
                    sub_0802A164();
                for (i = 0; i < 3; i++)
                    gUnknown_03000066[i] = sub_080111B4(i);
            }
            else
            {
                sub_0802F06C();
                sub_0802F1D4();
            }
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 0;
            gUnknown_0300005B = 0;
            sub_0801168C(0);
        }
        else
        {
            play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
            gUnknown_03000059 = gFileSelectMenuSel;
            gFileSelectMenuSel = 0;
            gUnknown_0300005B = 0;
            sub_0801168C(0);
        }
    }
    else if (gSomeKeys_030012E8 & B_BUTTON)
    {
        play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
        gUnknown_03000059 = gFileSelectMenuSel;
        gFileSelectMenuSel = 0;
        gUnknown_0300005B = 0;
        sub_0801168C(0);
    }
    else if (gSomeKeys_030012E8 & DPAD_RIGHT)
    {
        if (gUnknown_0300005C == 0)
        {
            gUnknown_0300005C++;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        }
    }
    else if (gSomeKeys_030012E8 & DPAD_LEFT)
    {
        if (gUnknown_0300005C != 0)
        {
            gUnknown_0300005C--;
            play_sound_effect_08071990(23, 8, 16, 64, 0, 128, 0);
        }
    }
}

void file_select_main_callback(void)
{
    u8 r5;
    s8 *r1;
    s8 *r2;
    u8 *r3;

    process_input();
    sub_08029C20();
    if (gUnknown_03000C28 == 0)
        sub_0801B310();
    if (gUnknown_03000064 > 20)
    {
        switch (gUnknown_0300005B)
        {
        case 0:
            pick_file();
            break;
        case 1:
            sub_08011CB4();
            break;
        case 2:
            sub_08011F60();
            break;
        case 3:
            sub_08012230();
            break;
        }
    }
    r5 = gUnknown_0300005D;
    sub_08038130(0);
    if (gUnknown_03000C28 == 0)
    {
        if (sub_08038228(0) != 0 || *gUnknown_0807CA94 != 0)
            gUnknown_0300005D = 1;
        else
            gUnknown_0300005D = 0;
        if (gUnknown_03000062 != 0)
            gUnknown_0300005D = 1;
    }
    if (r5 != gUnknown_0300005D)
    {
        if (gUnknown_0300005D != 0)
        {
            if (gUnknown_03000063 == 0 && *gUnknown_0807CA94 == 0)
                gFileSelectMenuSel = 3;
            gUnknown_03000063 = 1;
            play_sound_effect_08071990(35, 8, 16, 64, 0, 128, 0);
        }
        else
        {
            play_sound_effect_08071990(22, 8, 16, 64, 0, 128, 0);
            if (gFileSelectMenuSel == 3)
                gFileSelectMenuSel--;
        }
    }
    if (gUnknown_03000064 <= 20)
        gUnknown_03000064++;

    r1 = &gUnknown_0300005E;
    r2 = &gUnknown_0300005F;
    r3 = gUnknown_085FEFE4;
    if (--*r2 <= 0)
    {
        int val = 18;
        (*r1)++;
        asm("":::"memory");
        if (*r1 >= val)
            *r1 = 0;
        *r2 = r3[1 + *r1 * 0x24];
    }

    r1 = &gUnknown_03000060;
    r2 = &gUnknown_03000061;
    r3 = gUnknown_08617030;
    if (--*r2 <= 0)
    {
        int val = 2;
        (*r1)++;
        asm("":::"memory");
        if (*r1 >= val)
            *r1 = 0;
        *r2 = r3[1 + *r1 * 0x24];
    }
}

struct Coords32
{
    s32 x;
    s32 y;
};

extern struct Coords32 gUnknown_080785E0[];
extern struct Coords32 gUnknown_080785B0[];
extern struct Coords32 gUnknown_08078610[];
extern struct Coords32 gUnknown_08078628[];

extern struct OamData gUnknown_08606A1C;
extern struct OamData gUnknown_085FB7DC;
extern struct OamData gUnknown_085FF26C;
extern struct OamData gUnknown_0860FDCC;
extern struct OamData gUnknown_0860C33C;
extern struct OamData gUnknown_0860A4AC;
extern struct OamData gUnknown_08602F8C;
extern struct OamData gUnknown_086010FC;

void sub_08012568(void)
{
    s16 x, y;
    int dummy;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_080785E0[gFileSelectMenuSel].x;
        y = gUnknown_080785E0[gFileSelectMenuSel].y;
    }
    else
    {
        x = gUnknown_080785B0[gFileSelectMenuSel].x;
        y = gUnknown_080785B0[gFileSelectMenuSel].y;
    }

    // useless code
    dummy = inlinefunc2(gFileSelectMenuSel);
    if (dummy)
        dummy++;

    DmaCopy32(3, &gUnknown_08606A1C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000046;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
    gOamBuffer[gSomeOamIndex_03000040].y = y - 8;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;    
}

void sub_08012680(void)
{
    s16 x, y;
    int dummy;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_080785E0[gFileSelectMenuSel].x;
        y = gUnknown_080785E0[gFileSelectMenuSel].y;
    }
    else
    {
        x = gUnknown_080785B0[gFileSelectMenuSel].x;
        y = gUnknown_080785B0[gFileSelectMenuSel].y;
    }

    // useless code
    dummy = inlinefunc2(gFileSelectMenuSel);
    if (dummy)
        dummy++;

    DmaCopy32(3, &gUnknown_085FB7DC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000048;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
    gOamBuffer[gSomeOamIndex_03000040].y = y - 8;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;    
}

void sub_08012798(void)
{
    u8 arr[] = { 4, 6, 8, 12, 10, 10 };
    s16 x, y;
    u8 paletteNum;
    int dummy;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_08078628[gFileSelectMenuSel - 6].x;
        y = gUnknown_08078628[gFileSelectMenuSel - 6].y;
    }
    else
    {
        x = gUnknown_08078610[gFileSelectMenuSel - 6].x;
        y = gUnknown_08078610[gFileSelectMenuSel - 6].y;
    }
    paletteNum = arr[gFileSelectMenuSel - 6];

    // useless code
    dummy = inlinefunc2(gFileSelectMenuSel);
    if (dummy)
        dummy++;

    DmaCopy32(3, &gUnknown_085FF26C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_0300004C;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
    gOamBuffer[gSomeOamIndex_03000040].y = y - 8;
    gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
    gOamBuffer[gSomeOamIndex_03000040].priority = 2;
    gSomeOamIndex_03000040++;    
}

void sub_080128EC(void)
{
    s16 arr[] = { 68, 115 };
    s16 x, y;

    DmaCopy32(3, &gUnknown_0860FDCC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
    gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_0300004A;
    gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
    gOamBuffer[gSomeOamIndex_03000040].x = arr[gUnknown_0300005C];
    gOamBuffer[gSomeOamIndex_03000040].y = 81;
    gOamBuffer[gSomeOamIndex_03000040].priority = 0;
    gSomeOamIndex_03000040++;    
}

void sub_080129C0(void)
{
    u8 arr[] = { 4, 6, 8, 12, 10, 10 };
    s16 x, y;
    u8 paletteNum;

    if (gUnknown_0300005D != 0)
    {
        x = gUnknown_080785E0[gFileSelectMenuSel].x;
        y = gUnknown_080785E0[gFileSelectMenuSel].y;
    }
    else
    {
        x = gUnknown_080785B0[gFileSelectMenuSel].x;
        y = gUnknown_080785B0[gFileSelectMenuSel].y;
    }
    paletteNum = arr[gFileSelectMenuSel];

    if (inlinefunc2(gFileSelectMenuSel))
    {
        DmaCopy32(3, &gUnknown_0860C33C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000042;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 248;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;

        DmaCopy32(3, &gUnknown_0860A4AC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000044;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 56;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;
    }
    else
    {
        DmaCopy32(3, &gUnknown_08602F8C, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000042;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 248;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;

        DmaCopy32(3, &gUnknown_086010FC, &gOamBuffer[gSomeOamIndex_03000040], sizeof(struct OamData));
        gOamBuffer[gSomeOamIndex_03000040].tileNum += gUnknown_03000044;
        gOamBuffer[gSomeOamIndex_03000040].objMode = 1;
        gOamBuffer[gSomeOamIndex_03000040].x = x - 8;
        gOamBuffer[gSomeOamIndex_03000040].y = y + 56;
        gOamBuffer[gSomeOamIndex_03000040].paletteNum = paletteNum;
        gOamBuffer[gSomeOamIndex_03000040].priority = 2;
        gSomeOamIndex_03000040++;
    }
}
