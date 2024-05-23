	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0801BAD8
sub_0801BAD8: @ 0x0801BAD8
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r0, _0801BB04  @ =0x03000BEC
	ldrb r3, [r0]
	cmp r3, #0
	beq _0801BB44
	ldr r0, _0801BB08  @ =0x030000B6
	ldrh r0, [r0]
	cmp r0, #60
	bls _0801BB34
	ldr r0, _0801BB0C  @ =0x03000BF4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801BB10
	mov r0, #14
	mov r1, #0
	bl goto_state_080070E8
	b _0801BB34
	.byte 0x00
	.byte 0x00
_0801BB04:
	.4byte 0x03000BEC
_0801BB08:
	.4byte 0x030000B6
_0801BB0C:
	.4byte 0x03000BF4
_0801BB10:
	ldr r0, _0801BB28  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801BB2C
	mov r0, #9
	mov r1, #1
	bl goto_state_080070E8
	b _0801BB34
_0801BB28:
	.4byte gUnknown_03000B80
_0801BB2C:
	mov r0, #8
	mov r1, #1
	bl goto_state_080070E8
_0801BB34:
	ldr r1, _0801BB40  @ =0x030000B6
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BB40:
	.4byte 0x030000B6
_0801BB44:
	ldr r2, _0801BB74  @ =gSomeKeys_030012E8
	ldrh r1, [r2]
	mov r0, #64
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #0
	beq _0801BB80
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0801BB78  @ =0x030000B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801BB7C
	sub r0, r0, #1
	b _0801BB7E
	.byte 0x00
	.byte 0x00
_0801BB74:
	.4byte gSomeKeys_030012E8
_0801BB78:
	.4byte 0x030000B4
_0801BB7C:
	mov r0, #2
_0801BB7E:
	strb r0, [r1]
_0801BB80:
	ldrh r1, [r5]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801BBB6
	mov r4, #0
	str r4, [sp]
	str r2, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0801BBB0  @ =0x030000B4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _0801BBB4
	add r0, r0, #1
	strb r0, [r1]
	b _0801BBB6
	.byte 0x00
	.byte 0x00
_0801BBB0:
	.4byte 0x030000B4
_0801BBB4:
	strb r4, [r1]
_0801BBB6:
	ldrh r1, [r5]
	mov r2, #9
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801BBC4
	b _0801BDE8
_0801BBC4:
	ldr r0, _0801BBD8  @ =0x030000B4
	ldrb r5, [r0]
	cmp r5, #1
	beq _0801BBEC
	cmp r5, #1
	bgt _0801BBDC
	cmp r5, #0
	beq _0801BBE2
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BBD8:
	.4byte 0x030000B4
_0801BBDC:
	cmp r5, #2
	beq _0801BCB4
	b _0801BE1C
_0801BBE2:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	b _0801BE04
_0801BBEC:
	ldr r0, _0801BC1C  @ =gUnknown_03000BB4
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _0801BC20
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	bl sub_080720AC
	mov r0, #14
	mov r1, #0
	bl goto_state_080070E8
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BC1C:
	.4byte gUnknown_03000BB4
_0801BC20:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #114
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #1
	neg r0, r0
	bl add_lives
	ldr r0, _0801BC5C  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801BC6C
	bl sub_0800F010
	ldr r0, _0801BC60  @ =0x03000BEC
	strb r5, [r0]
	ldr r0, _0801BC64  @ =0x030000B6
	mov r1, #0
	strh r4, [r0]
	ldr r0, _0801BC68  @ =0x03000BF4
	strb r1, [r0]
	b _0801BC96
_0801BC5C:
	.4byte gUnknown_03000BBC
_0801BC60:
	.4byte 0x03000BEC
_0801BC64:
	.4byte 0x030000B6
_0801BC68:
	.4byte 0x03000BF4
_0801BC6C:
	ldr r3, _0801BCA8  @ =gUnknown_030019A0
	ldr r1, _0801BCAC  @ =gUnknown_03000B90
	ldr r2, [r1, #32]
	mov r0, #15
	and r2, r2, r0
	mov r4, #18
	ldrsh r0, [r1, r4]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	mov r0, #20
	mov r1, #1
	bl goto_state_080070E8
	ldr r0, _0801BCB0  @ =gUnknown_03000BD0
	str r5, [r0]
_0801BC96:
	ldr r0, _0801BCA8  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #21
	orr r1, r1, r2
	str r1, [r0]
_0801BCA2:
	bl sub_080720AC
	b _0801BE1C
_0801BCA8:
	.4byte gUnknown_030019A0
_0801BCAC:
	.4byte gUnknown_03000B90
_0801BCB0:
	.4byte gUnknown_03000BD0
_0801BCB4:
	ldr r0, _0801BD3C  @ =gUnknown_03000B74
	mov r6, #0
	ldrsb r6, [r0, r6]
	ldr r3, _0801BD40  @ =gUnknown_030019A0
	ldr r0, _0801BD44  @ =gUnknown_03000B90
	ldr r4, [r0, #32]
	mov r2, #15
	and r2, r2, r4
	mov r1, #18
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	ldr r0, _0801BD48  @ =gUnknown_03000B80
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r7, r0, #0
	cmp r1, #0
	bne _0801BCEE
	asr r6, r6, #1
	and r4, r4, r5
	cmp r4, #0
	beq _0801BCEE
	mov r6, #7
_0801BCEE:
	mov r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, _0801BD4C  @ =gUnknown_03000B58
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r6, #0
	add r3, sp, #12
	bl get_level_stats_0800FE2C
	add r4, r0, #0
	cmp r4, #0
	bne _0801BD14
	ldr r0, _0801BD50  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0801BD5E
_0801BD14:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrb r0, [r7]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801BD54
	mov r0, #9
	b _0801BD56
	.byte 0x00
	.byte 0x00
_0801BD3C:
	.4byte gUnknown_03000B74
_0801BD40:
	.4byte gUnknown_030019A0
_0801BD44:
	.4byte gUnknown_03000B90
_0801BD48:
	.4byte gUnknown_03000B80
_0801BD4C:
	.4byte gUnknown_03000B58
_0801BD50:
	.4byte gUnknown_03000BB4
_0801BD54:
	mov r0, #8
_0801BD56:
	mov r1, #1
	bl goto_state_080070E8
	b _0801BCA2
_0801BD5E:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #114
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #1
	neg r0, r0
	bl add_lives
	ldr r0, _0801BD9C  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801BDAC
	bl sub_0800F010
	ldr r0, _0801BDA0  @ =0x03000BEC
	mov r1, #1
	strb r1, [r0]
	ldr r0, _0801BDA4  @ =0x030000B6
	strh r4, [r0]
	ldr r0, _0801BDA8  @ =0x03000BF4
	strb r1, [r0]
	b _0801BCA2
	.byte 0x00
	.byte 0x00
_0801BD9C:
	.4byte gUnknown_03000BBC
_0801BDA0:
	.4byte 0x03000BEC
_0801BDA4:
	.4byte 0x030000B6
_0801BDA8:
	.4byte 0x03000BF4
_0801BDAC:
	ldr r3, _0801BDDC  @ =gUnknown_030019A0
	ldr r1, _0801BDE0  @ =gUnknown_03000B90
	ldr r2, [r1, #32]
	mov r0, #15
	and r2, r2, r0
	mov r4, #18
	ldrsh r0, [r1, r4]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	mov r0, #20
	mov r1, #1
	bl goto_state_080070E8
	ldr r1, _0801BDE4  @ =gUnknown_03000BD0
	mov r0, #1
	str r0, [r1]
	b _0801BCA2
	.byte 0x00
	.byte 0x00
_0801BDDC:
	.4byte gUnknown_030019A0
_0801BDE0:
	.4byte gUnknown_03000B90
_0801BDE4:
	.4byte gUnknown_03000BD0
_0801BDE8:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0801BE1C
	ldr r0, _0801BE2C  @ =gHeldKeys
	ldrh r0, [r0]
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #0
	bne _0801BE1C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
_0801BE04:
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #19
	mov r1, #0
	bl goto_state_080070E8
	bl sub_08072118
_0801BE1C:
	ldr r0, _0801BE30  @ =0x030000B4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
_0801BE2C:
	.4byte gHeldKeys
_0801BE30:
	.4byte 0x030000B4
	THUMB_FUNC_END sub_0801BAD8

	THUMB_FUNC_START pause_init_callback
pause_init_callback: @ 0x0801BE34
	push {lr}
	ldr r0, _0801BE60  @ =0x030000B4
	mov r2, #0
	strb r2, [r0]
	ldr r1, _0801BE64  @ =0x03000BF0
	ldr r0, _0801BE68  @ =gUnknown_03000B58
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801BE6C  @ =0x03000BF8
	ldr r0, _0801BE70  @ =gUnknown_03000B74
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801BE74  @ =0x03000BEC
	strb r2, [r0]
	ldr r1, _0801BE78  @ =0x030000B6
	mov r0, #0
	strh r0, [r1]
	bl sub_0800F02C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801BE60:
	.4byte 0x030000B4
_0801BE64:
	.4byte 0x03000BF0
_0801BE68:
	.4byte gUnknown_03000B58
_0801BE6C:
	.4byte 0x03000BF8
_0801BE70:
	.4byte gUnknown_03000B74
_0801BE74:
	.4byte 0x03000BEC
_0801BE78:
	.4byte 0x030000B6
	THUMB_FUNC_END pause_init_callback

	THUMB_FUNC_START pause_main_callback
pause_main_callback: @ 0x0801BE7C
	push {lr}
	bl process_input
	bl sub_0801BAD8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	beq _0801BEA6
	cmp r0, #1
	bgt _0801BE98
	cmp r0, #0
	beq _0801BE9E
	b _0801BEB4
_0801BE98:
	cmp r0, #2
	beq _0801BEAE
	b _0801BEB4
_0801BE9E:
	mov r0, #0
	bl sub_0800F070
	b _0801BEB4
_0801BEA6:
	mov r0, #1
	bl sub_0800F070
	b _0801BEB4
_0801BEAE:
	mov r0, #2
	bl sub_0800F070
_0801BEB4:
	bl sub_0800CC6C
	pop {r0}
	bx r0
	THUMB_FUNC_END pause_main_callback

	THUMB_FUNC_START pause_display_callback
pause_display_callback: @ 0x0801BEBC
	push {lr}
	bl demo_display_callback
	pop {r0}
	bx r0
	THUMB_FUNC_END pause_display_callback

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BEC8
sub_0801BEC8: @ 0x0801BEC8
	push {lr}
	bl sub_0800F060
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BEC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BED4
sub_0801BED4: @ 0x0801BED4
	ldr r0, _0801BEF8  @ =0x030000B4
	mov r2, #0
	strb r2, [r0]
	ldr r1, _0801BEFC  @ =0x03000BF0
	ldr r0, _0801BF00  @ =gUnknown_03000B58
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801BF04  @ =0x03000BF8
	ldr r0, _0801BF08  @ =gUnknown_03000B74
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801BF0C  @ =0x03000BEC
	strb r2, [r0]
	ldr r1, _0801BF10  @ =0x030000B6
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0801BEF8:
	.4byte 0x030000B4
_0801BEFC:
	.4byte 0x03000BF0
_0801BF00:
	.4byte gUnknown_03000B58
_0801BF04:
	.4byte 0x03000BF8
_0801BF08:
	.4byte gUnknown_03000B74
_0801BF0C:
	.4byte 0x03000BEC
_0801BF10:
	.4byte 0x030000B6
	THUMB_FUNC_END sub_0801BED4
