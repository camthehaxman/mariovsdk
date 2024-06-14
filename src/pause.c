#include "gba/gba.h"
#include "global.h"
#include "main.h"

#if NONMATCHING
s8 process_pause_menu(void)
{
    int r6;
    u8 spC;

    if (gUnknown_03000BEC != 0)
    {
        if (gUnknown_030000B6 > 60)
        {
            if (gUnknown_03000BF4 == 0)
                goto_state_080070E8(MAIN_STATE_RESPAWN, 0);
            else if (gUnknown_03000B80 == 2 || gUnknown_03000B80 == 3)
                goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
            else
                goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
        }
        //_0801BB34
        gUnknown_030000B6++;
        //to _0801BE1C
    }
    //_0801BB44
    else
    {
        if (gSomeKeys_030012E8 & 0x40)
        {
            play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            if (gUnknown_030000B4 > 0)
                gUnknown_030000B4--;
            else
                gUnknown_030000B4 = 2;
        }
        //_0801BB80
        if (gSomeKeys_030012E8 & 0x80)
        {
            play_sound_effect_08071990(SE_CURSOR_UP_DN, 8, 16, 64, 0, 128, 0);
            if (gUnknown_030000B4 < 2)
                gUnknown_030000B4++;
            else
                gUnknown_030000B4 = 0;
        }
        //_0801BBB6
        if (gSomeKeys_030012E8 & 0x9)
        {
            switch (gUnknown_030000B4)
            {
            case 0:
                //to _0801BE04
                play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
                goto_state_080070E8(MAIN_STATE_UNKNOWN_19, 0);
                sub_08072118();
                //goto label;
                break;
            case 1:
                if (gUnknown_03000BB4 != 0)
                {
                    play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                    sub_080720AC();
                    goto_state_080070E8(MAIN_STATE_RESPAWN, 0);
                }
                else
                //_0801BC20
                {
                    play_sound_effect_08071990(SE_RESTART, 8, 16, 64, 0, 128, 0);
                    add_lives(-1);
                    //sub_080720AC();
                    if (gUnknown_03000BBC > 0)
                    {
                        sub_0800F010();
                        gUnknown_03000BEC = 1;
                        gUnknown_030000B6 = 0;
                        gUnknown_03000BF4 = 0;
                    }
                    //_0801BC6C
                    else
                    {
                        gUnknown_030019A0 |= 0x10000000 | (gUnknown_03000B90.unk20 & 0xF) | (gUnknown_03000B90.unk12 << 8);
                        goto_state_080070E8(MAIN_STATE_CLEAR_GAMEOVER, 1);
                        gUnknown_03000BD0 = 1;
                    }
                    //_0801BC96
                    gUnknown_030019A0 |= 0x10000000;
                    //_0801BCA2
                    sub_080720AC();
                }
                break;
            case 2:
                r6 = gUnknown_03000B74;
                gUnknown_030019A0 |= 0x10000000 | (gUnknown_03000B90.unk20 & 0xF) | (gUnknown_03000B90.unk12 << 8);
                if (gUnknown_03000B80 == 0)
                {
                    r6 >>= 1;
                    if (gUnknown_03000B90.unk20 & 2)
                        r6 = 7;
                }
                if (get_level_stats_0800FE2C(gUnknown_03000B80, gUnknown_03000B58, r6, &spC)
                 || gUnknown_03000BB4 == 1)
                {
                    int state;
                    //_0801BD14
                    play_sound_effect_08071990(SE_START, 8, 16, 64, 0, 128, 0);
                    /*if (gUnknown_03000B80 == 2 || gUnknown_03000B80 == 3)
                        goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
                    else
                        goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);*/
                    //goto_state_080070E8((gUnknown_03000B80 == 2 || gUnknown_03000B80 == 3) ? MAIN_STATE_EXPERT_LEVEL_SELECT : MAIN_STATE_LEVEL_SELECT, 1);
                    if (gUnknown_03000B80 == 2 || gUnknown_03000B80 == 3)
                    {
                        state = MAIN_STATE_EXPERT_LEVEL_SELECT;
                        asm("");
                    }
                    else
                        state = MAIN_STATE_LEVEL_SELECT;
                    //state = (gUnknown_03000B80 == 2 || gUnknown_03000B80 == 3) ? MAIN_STATE_EXPERT_LEVEL_SELECT : MAIN_STATE_LEVEL_SELECT;
                    goto_state_080070E8(state, 1);
                    /*if (gUnknown_03000B80 == 2)
                        goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
                    else if (gUnknown_03000B80 == 3)
                        goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
                    else
                        goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);*/
                    /*switch (gUnknown_03000B80)
                    {
                        case 2:
                        case 3:
                        goto_state_080070E8(MAIN_STATE_EXPERT_LEVEL_SELECT, 1);
                        break;
                        default:
                        goto_state_080070E8(MAIN_STATE_LEVEL_SELECT, 1);
                    }*/
                    //to _0801BCA2
                    sub_080720AC();
                    //goto label2;
                }
                //_0801BD5E
                else
                {
                    play_sound_effect_08071990(SE_RESTART, 8, 16, 64, 0, 128, 0);
                    add_lives(-1);
                    if (gUnknown_03000BBC > 0)
                    {
                        sub_0800F010();
                        gUnknown_03000BEC = 1;
                        gUnknown_030000B6 = 0;
                        gUnknown_03000BF4 = 1;
                        //to _0801BCA2
                        //sub_080720AC();
                    }
                    //_0801BDAC
                    else
                    {
                        gUnknown_030019A0 |= 0x10000000 | (gUnknown_03000B90.unk20 & 0xF) | (gUnknown_03000B90.unk12 << 8);
                        goto_state_080070E8(MAIN_STATE_CLEAR_GAMEOVER, 1);
                        gUnknown_03000BD0 = 1;
                        //to _0801BCA2
                    //  sub_080720AC();
                    }
                    sub_080720AC();
                    //goto label2;
                }
                break;
            }
            //_0801BE1C
        }
        //_0801BDE8
        else if ((gSomeKeys_030012E8 & 2) && !(gHeldKeys & 9))
        {
            play_sound_effect_08071990(SE_BACK, 8, 16, 64, 0, 128, 0);
            goto_state_080070E8(MAIN_STATE_UNKNOWN_19, 0);
            sub_08072118();
        }
    }
    //_0801BE1C
    return gUnknown_030000B4;
}
#else
__attribute__((naked))
s8 process_pause_menu(void)
{
    asm(
    "push {r4-r7,lr}\n\
    sub sp, sp, #16\n\
    ldr r0, _0801BB04  @ =gUnknown_03000BEC\n\
    ldrb r3, [r0]\n\
    cmp r3, #0\n\
    beq _0801BB44\n\
    ldr r0, _0801BB08  @ =gUnknown_030000B6\n\
    ldrh r0, [r0]\n\
    cmp r0, #60\n\
    bls _0801BB34\n\
    ldr r0, _0801BB0C  @ =gUnknown_03000BF4\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #0\n\
    bne _0801BB10\n\
    mov r0, #14\n\
    mov r1, #0\n\
    bl goto_state_080070E8\n\
    b _0801BB34\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BB04:\n\
    .4byte gUnknown_03000BEC\n\
_0801BB08:\n\
    .4byte gUnknown_030000B6\n\
_0801BB0C:\n\
    .4byte gUnknown_03000BF4\n\
_0801BB10:\n\
    ldr r0, _0801BB28  @ =gUnknown_03000B80\n\
    ldrb r0, [r0]\n\
    sub r0, r0, #2\n\
    lsl r0, r0, #24\n\
    lsr r0, r0, #24\n\
    cmp r0, #1\n\
    bhi _0801BB2C\n\
    mov r0, #9\n\
    mov r1, #1\n\
    bl goto_state_080070E8\n\
    b _0801BB34\n\
_0801BB28:\n\
    .4byte gUnknown_03000B80\n\
_0801BB2C:\n\
    mov r0, #8\n\
    mov r1, #1\n\
    bl goto_state_080070E8\n\
_0801BB34:\n\
    ldr r1, _0801BB40  @ =gUnknown_030000B6\n\
    ldrh r0, [r1]\n\
    add r0, r0, #1\n\
    strh r0, [r1]\n\
    b _0801BE1C\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BB40:\n\
    .4byte gUnknown_030000B6\n\
_0801BB44:\n\
    ldr r2, _0801BB74  @ =gSomeKeys_030012E8\n\
    ldrh r1, [r2]\n\
    mov r0, #64\n\
    and r0, r0, r1\n\
    add r5, r2, #0\n\
    cmp r0, #0\n\
    beq _0801BB80\n\
    str r3, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r3, [sp, #8]\n\
    mov r0, #178\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    ldr r1, _0801BB78  @ =gUnknown_030000B4\n\
    ldrb r0, [r1]\n\
    cmp r0, #0\n\
    beq _0801BB7C\n\
    sub r0, r0, #1\n\
    b _0801BB7E\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BB74:\n\
    .4byte gSomeKeys_030012E8\n\
_0801BB78:\n\
    .4byte gUnknown_030000B4\n\
_0801BB7C:\n\
    mov r0, #2\n\
_0801BB7E:\n\
    strb r0, [r1]\n\
_0801BB80:\n\
    ldrh r1, [r5]\n\
    mov r2, #128\n\
    add r0, r2, #0\n\
    and r0, r0, r1\n\
    cmp r0, #0\n\
    beq _0801BBB6\n\
    mov r4, #0\n\
    str r4, [sp]\n\
    str r2, [sp, #4]\n\
    str r4, [sp, #8]\n\
    mov r0, #178\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    ldr r1, _0801BBB0  @ =gUnknown_030000B4\n\
    ldrb r0, [r1]\n\
    cmp r0, #1\n\
    bhi _0801BBB4\n\
    add r0, r0, #1\n\
    strb r0, [r1]\n\
    b _0801BBB6\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BBB0:\n\
    .4byte gUnknown_030000B4\n\
_0801BBB4:\n\
    strb r4, [r1]\n\
_0801BBB6:\n\
    ldrh r1, [r5]\n\
    mov r2, #9\n\
    add r0, r2, #0\n\
    and r0, r0, r1\n\
    cmp r0, #0\n\
    bne _0801BBC4\n\
    b _0801BDE8\n\
_0801BBC4:\n\
    ldr r0, _0801BBD8  @ =gUnknown_030000B4\n\
    ldrb r5, [r0]\n\
    cmp r5, #1\n\
    beq _0801BBEC\n\
    cmp r5, #1\n\
    bgt _0801BBDC\n\
    cmp r5, #0\n\
    beq _0801BBE2\n\
    b _0801BE1C\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BBD8:\n\
    .4byte gUnknown_030000B4\n\
_0801BBDC:\n\
    cmp r5, #2\n\
    beq _0801BCB4\n\
    b _0801BE1C\n\
_0801BBE2: @0\n\
    str r5, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r5, [sp, #8]\n\
    b _0801BE04\n\
_0801BBEC: @1\n\
    ldr r0, _0801BC1C  @ =gUnknown_03000BB4\n\
    mov r4, #0\n\
    ldrsb r4, [r0, r4]\n\
    cmp r4, #0\n\
    beq _0801BC20\n\
    mov r1, #0\n\
    str r1, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r1, [sp, #8]\n\
    mov r0, #35\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    bl sub_080720AC\n\
    mov r0, #14\n\
    mov r1, #0\n\
    bl goto_state_080070E8\n\
    b _0801BE1C\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BC1C:\n\
    .4byte gUnknown_03000BB4\n\
_0801BC20:\n\
    str r4, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r4, [sp, #8]\n\
    mov r0, #114\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    mov r0, #1\n\
    neg r0, r0\n\
    bl add_lives\n\
    ldr r0, _0801BC5C  @ =gUnknown_03000BBC\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #0\n\
    ble _0801BC6C\n\
    bl sub_0800F010\n\
    ldr r0, _0801BC60  @ =gUnknown_03000BEC\n\
    strb r5, [r0]\n\
    ldr r0, _0801BC64  @ =gUnknown_030000B6\n\
    mov r1, #0\n\
    strh r4, [r0]\n\
    ldr r0, _0801BC68  @ =gUnknown_03000BF4\n\
    strb r1, [r0]\n\
    b _0801BC96\n\
_0801BC5C:\n\
    .4byte gUnknown_03000BBC\n\
_0801BC60:\n\
    .4byte gUnknown_03000BEC\n\
_0801BC64:\n\
    .4byte gUnknown_030000B6\n\
_0801BC68:\n\
    .4byte gUnknown_03000BF4\n\
_0801BC6C:\n\
    ldr r3, _0801BCA8  @ =gUnknown_030019A0\n\
    ldr r1, _0801BCAC  @ =gUnknown_03000B90\n\
    ldr r2, [r1, #32]\n\
    mov r0, #15\n\
    and r2, r2, r0\n\
    mov r4, #18\n\
    ldrsh r0, [r1, r4]\n\
    lsl r0, r0, #8\n\
    mov r1, #128\n\
    lsl r1, r1, #21\n\
    orr r0, r0, r1\n\
    orr r2, r2, r0\n\
    ldr r0, [r3]\n\
    orr r0, r0, r2\n\
    str r0, [r3]\n\
    mov r0, #20\n\
    mov r1, #1\n\
    bl goto_state_080070E8\n\
    ldr r0, _0801BCB0  @ =gUnknown_03000BD0\n\
    str r5, [r0]\n\
_0801BC96:\n\
    ldr r0, _0801BCA8  @ =gUnknown_030019A0\n\
    ldr r1, [r0]\n\
    mov r2, #128\n\
    lsl r2, r2, #21\n\
    orr r1, r1, r2\n\
    str r1, [r0]\n\
_0801BCA2:\n\
    bl sub_080720AC\n\
    b _0801BE1C\n\
_0801BCA8:\n\
    .4byte gUnknown_030019A0\n\
_0801BCAC:\n\
    .4byte gUnknown_03000B90\n\
_0801BCB0:\n\
    .4byte gUnknown_03000BD0\n\
_0801BCB4: @2\n\
    ldr r0, _0801BD3C  @ =gUnknown_03000B74\n\
    mov r6, #0\n\
    ldrsb r6, [r0, r6]\n\
    ldr r3, _0801BD40  @ =gUnknown_030019A0\n\
    ldr r0, _0801BD44  @ =gUnknown_03000B90\n\
    ldr r4, [r0, #32]\n\
    mov r2, #15\n\
    and r2, r2, r4\n\
    mov r1, #18\n\
    ldrsh r0, [r0, r1]\n\
    lsl r0, r0, #8\n\
    mov r1, #128\n\
    lsl r1, r1, #21\n\
    orr r0, r0, r1\n\
    orr r2, r2, r0\n\
    ldr r0, [r3]\n\
    orr r0, r0, r2\n\
    str r0, [r3]\n\
    ldr r0, _0801BD48  @ =gUnknown_03000B80\n\
    mov r1, #0\n\
    ldrsb r1, [r0, r1]\n\
    add r7, r0, #0\n\
    cmp r1, #0\n\
    bne _0801BCEE\n\
    asr r6, r6, #1\n\
    and r4, r4, r5\n\
    cmp r4, #0\n\
    beq _0801BCEE\n\
    mov r6, #7\n\
_0801BCEE:\n\
    mov r0, #0\n\
    ldrsb r0, [r7, r0]\n\
    ldr r1, _0801BD4C  @ =gUnknown_03000B58\n\
    ldrb r1, [r1]\n\
    lsl r1, r1, #24\n\
    asr r1, r1, #24\n\
    add r2, r6, #0\n\
    add r3, sp, #12\n\
    bl get_level_stats_0800FE2C\n\
    add r4, r0, #0\n\
    cmp r4, #0\n\
    bne _0801BD14\n\
    ldr r0, _0801BD50  @ =gUnknown_03000BB4\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #1\n\
    bne _0801BD5E\n\
_0801BD14:\n\
    mov r1, #0\n\
    str r1, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r1, [sp, #8]\n\
    mov r0, #35\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    ldrb r0, [r7]\n\
    sub r0, r0, #2\n\
    lsl r0, r0, #24\n\
    lsr r0, r0, #24\n\
    cmp r0, #1\n\
    bhi _0801BD54\n\
    mov r0, #9\n\
    b _0801BD56\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BD3C:\n\
    .4byte gUnknown_03000B74\n\
_0801BD40:\n\
    .4byte gUnknown_030019A0\n\
_0801BD44:\n\
    .4byte gUnknown_03000B90\n\
_0801BD48:\n\
    .4byte gUnknown_03000B80\n\
_0801BD4C:\n\
    .4byte gUnknown_03000B58\n\
_0801BD50:\n\
    .4byte gUnknown_03000BB4\n\
_0801BD54:\n\
    mov r0, #8\n\
_0801BD56:\n\
    mov r1, #1\n\
    bl goto_state_080070E8\n\
    b _0801BCA2\n\
_0801BD5E:\n\
    str r4, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r4, [sp, #8]\n\
    mov r0, #114\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    mov r0, #1\n\
    neg r0, r0\n\
    bl add_lives\n\
    ldr r0, _0801BD9C  @ =gUnknown_03000BBC\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    cmp r0, #0\n\
    ble _0801BDAC\n\
    bl sub_0800F010\n\
    ldr r0, _0801BDA0  @ =gUnknown_03000BEC\n\
    mov r1, #1\n\
    strb r1, [r0]\n\
    ldr r0, _0801BDA4  @ =gUnknown_030000B6\n\
    strh r4, [r0]\n\
    ldr r0, _0801BDA8  @ =gUnknown_03000BF4\n\
    strb r1, [r0]\n\
    b _0801BCA2\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BD9C:\n\
    .4byte gUnknown_03000BBC\n\
_0801BDA0:\n\
    .4byte gUnknown_03000BEC\n\
_0801BDA4:\n\
    .4byte gUnknown_030000B6\n\
_0801BDA8:\n\
    .4byte gUnknown_03000BF4\n\
_0801BDAC:\n\
    ldr r3, _0801BDDC  @ =gUnknown_030019A0\n\
    ldr r1, _0801BDE0  @ =gUnknown_03000B90\n\
    ldr r2, [r1, #32]\n\
    mov r0, #15\n\
    and r2, r2, r0\n\
    mov r4, #18\n\
    ldrsh r0, [r1, r4]\n\
    lsl r0, r0, #8\n\
    mov r1, #128\n\
    lsl r1, r1, #21\n\
    orr r0, r0, r1\n\
    orr r2, r2, r0\n\
    ldr r0, [r3]\n\
    orr r0, r0, r2\n\
    str r0, [r3]\n\
    mov r0, #20\n\
    mov r1, #1\n\
    bl goto_state_080070E8\n\
    ldr r1, _0801BDE4  @ =gUnknown_03000BD0\n\
    mov r0, #1\n\
    str r0, [r1]\n\
    b _0801BCA2\n\
    .byte 0x00\n\
    .byte 0x00\n\
_0801BDDC:\n\
    .4byte gUnknown_030019A0\n\
_0801BDE0:\n\
    .4byte gUnknown_03000B90\n\
_0801BDE4:\n\
    .4byte gUnknown_03000BD0\n\
_0801BDE8:\n\
    mov r0, #2\n\
    and r0, r0, r1\n\
    cmp r0, #0\n\
    beq _0801BE1C\n\
    ldr r0, _0801BE2C  @ =gHeldKeys\n\
    ldrh r0, [r0]\n\
    add r1, r2, #0\n\
    and r1, r1, r0\n\
    cmp r1, #0\n\
    bne _0801BE1C\n\
    str r1, [sp]\n\
    mov r0, #128\n\
    str r0, [sp, #4]\n\
    str r1, [sp, #8]\n\
_0801BE04:\n\
    mov r0, #22\n\
    mov r1, #8\n\
    mov r2, #16\n\
    mov r3, #64\n\
    bl play_sound_effect_08071990\n\
    mov r0, #19\n\
    mov r1, #0\n\
    bl goto_state_080070E8\n\
    bl sub_08072118\n\
_0801BE1C:\n\
    ldr r0, _0801BE30  @ =gUnknown_030000B4\n\
    ldrb r0, [r0]\n\
    lsl r0, r0, #24\n\
    asr r0, r0, #24\n\
    add sp, sp, #16\n\
    pop {r4-r7}\n\
    pop {r1}\n\
    bx r1\n\
_0801BE2C:\n\
    .4byte gHeldKeys\n\
_0801BE30:\n\
    .4byte gUnknown_030000B4");
}
#endif

void pause_init_callback(void)
{
    gUnknown_030000B4 = 0;
    gUnknown_03000BF0 = gUnknown_03000B58;
    gUnknown_03000BF8 = gUnknown_03000B74;
    gUnknown_03000BEC = 0;
    gUnknown_030000B6 = 0;
    sub_0800F02C();
}

void pause_main_callback(void)
{
    process_input();
    switch (process_pause_menu())
    {
    case 0:
        sub_0800F070(0);
        break;
    case 1:
        sub_0800F070(1);
        break;
    case 2:
        sub_0800F070(2);
        break;
    }
    sub_0800CC6C();
}

void pause_display_callback(void)
{
    demo_display_callback();
}

void sub_0801BEC8(void)
{
    sub_0800F060();
}

void sub_0801BED4(void)
{
    gUnknown_030000B4 = 0;
    gUnknown_03000BF0 = gUnknown_03000B58;
    gUnknown_03000BF8 = gUnknown_03000B74;
    gUnknown_03000BEC = 0;
    gUnknown_030000B6 = 0;
}
