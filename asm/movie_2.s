	.INCLUDE "macro.inc"

.if 0
	THUMB_FUNC_START sub_0805739C
sub_0805739C: @ 0x0805739C
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r5, _080573E0  @ =gUnknown_03001BF8
	ldrh r0, [r5]
	mov r6, #52
	add r1, r0, #0
	mul r1, r6, r1
	ldr r0, [r4, #4]
	add r0, r0, r1
	bl sub_08057034
	ldr r1, _080573E4  @ =gUnknown_03001BE8
	ldrh r2, [r5]
	ldr r3, [r4, #4]
	add r0, r2, #0
	mul r0, r6, r0
	add r0, r0, r3
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _080573F6
	add r0, r2, #1
	strh r0, [r5]
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r4, [r4]
	cmp r0, r4
	bne _080573EC
	strh r2, [r5]
	ldr r0, _080573E8  @ =gUnknown_03000A00
	ldr r0, [r0]
	bl _call_via_r0
	b _080573F6
_080573E0:
	.4byte gUnknown_03001BF8
_080573E4:
	.4byte gUnknown_03001BE8
_080573E8:
	.4byte gUnknown_03000A00
_080573EC:
	ldrh r0, [r5]
	mul r0, r6, r0
	add r0, r3, r0
	bl sub_08056FD8
_080573F6:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805739C

	THUMB_FUNC_START sub_080573FC
sub_080573FC: @ 0x080573FC
	push {r4-r6,lr}
	sub sp, sp, #4
	ldr r6, [sp, #20]
	ldr r4, _0805741C  @ =gUnknown_03001BF8
	ldrh r5, [r4]
	mov r4, #52
	mul r5, r4, r5
	ldr r4, [r6, #4]
	add r4, r4, r5
	str r4, [sp]
	bl sub_080571B0
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0805741C:
	.4byte gUnknown_03001BF8
	THUMB_FUNC_END sub_080573FC

	THUMB_FUNC_START sub_08057420
sub_08057420: @ 0x08057420
	push {lr}
	ldr r2, _0805743C  @ =gUnknown_03001BF8
	mov r1, #0
	strh r1, [r2]
	ldr r0, [r0, #4]
	bl sub_08056FD8
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl sub_080351C4
	pop {r0}
	bx r0
_0805743C:
	.4byte gUnknown_03001BF8
	THUMB_FUNC_END sub_08057420
.endif
	THUMB_FUNC_START sub_08057440
sub_08057440: @ 0x08057440
	ldr r1, _08057448  @ =gUnknown_03001C18
	mov r0, #0
	str r0, [r1]
	bx lr
_08057448:
	.4byte gUnknown_03001C18
	THUMB_FUNC_END sub_08057440

	THUMB_FUNC_START sub_0805744C
sub_0805744C: @ 0x0805744C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r1, _0805747C  @ =0x030003C0
	mov r0, #8
	strh r0, [r1]
	ldr r0, _08057480  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0805748C
	ldr r1, _08057484  @ =0x030003C4
	ldr r0, _08057488  @ =gUnknown_086602C0
	b _08057490
	.byte 0x00
	.byte 0x00
_0805747C:
	.4byte 0x030003C0
_08057480:
	.4byte gUnknown_03000B80
_08057484:
	.4byte 0x030003C4
_08057488:
	.4byte gUnknown_086602C0
_0805748C:
	ldr r1, _080575B8  @ =0x030003C4
	ldr r0, _080575BC  @ =gUnknown_086600D8
_08057490:
	str r0, [r1]
	ldr r1, _080575C0  @ =0x03001C44
	mov r0, #3
	strh r0, [r1]
	ldr r0, _080575C4  @ =0x03001C48
	mov r5, #0
	strh r5, [r0]
	ldr r0, _080575C8  @ =0x03001C40
	strh r5, [r0]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _080575CC  @ =0x080575F5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _080575D0  @ =0x080590ED
	str r0, [r1]
	ldr r0, _080575D4  @ =gUnknown_03001C78
	str r7, [r0]
	ldr r1, _080575D8  @ =0x030003E8
	ldr r0, [r7, #32]
	asr r0, r0, #8
	str r0, [r1]
	ldr r1, _080575DC  @ =0x030003EC
	ldr r0, [r7, #36]
	asr r0, r0, #8
	str r0, [r1]
	mov r1, #0
	mov r8, r1
	strh r2, [r7]
	mov r2, r8
	strh r2, [r7, #4]
	mov r0, #23
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080575E0  @ =gUnknown_086604B8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r9, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _080575E4  @ =0x030003C9
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _080575E8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	strb r5, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	strb r5, [r7, #10]
	ldr r0, _080575EC  @ =0x03001C50
	strb r5, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	strb r5, [r0, #16]
	mov r2, r8
	str r2, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	mov r1, #2
	strb r1, [r0, #19]
	strb r5, [r0, #17]
	strb r5, [r0, #18]
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _080575F0  @ =0x030003DA
	mov r1, r8
	strh r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080575B8:
	.4byte 0x030003C4
_080575BC:
	.4byte gUnknown_086600D8
_080575C0:
	.4byte 0x03001C44
_080575C4:
	.4byte 0x03001C48
_080575C8:
	.4byte 0x03001C40
_080575CC:
	.4byte sub_080575F4
_080575D0:
	.4byte sub_080590EC
_080575D4:
	.4byte gUnknown_03001C78
_080575D8:
	.4byte 0x030003E8
_080575DC:
	.4byte 0x030003EC
_080575E0:
	.4byte gUnknown_086604B8
_080575E4:
	.4byte 0x030003C9
_080575E8:
	.4byte 0xFFFFFE00
_080575EC:
	.4byte 0x03001C50
_080575F0:
	.4byte 0x030003DA
	THUMB_FUNC_END sub_0805744C

	THUMB_FUNC_START sub_080575F4
sub_080575F4: @ 0x080575F4
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r4, #0
	ldr r1, _08057674  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805761E
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _0805762E
_0805761E:
	ldr r1, _08057678  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _080576B0
_0805762E:
	add r0, r7, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _0805767C  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _0805765A
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08057680  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0805765A:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _08057684
	add r0, r7, #0
	mov r1, #0
	bl sub_0804A580
	b _0805768A
	.byte 0x00
	.byte 0x00
_08057674:
	.4byte 0x030019AC
_08057678:
	.4byte gUnknown_03001C78
_0805767C:
	.4byte gUnknown_03001A1C
_08057680:
	.4byte 0x00007FFF
_08057684:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0805768A:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
_080576B0:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080575F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080576B8
sub_080576B8: @ 0x080576B8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r5, r0, #0
	mov r0, #4
	ldrsh r6, [r5, r0]
	cmp r6, #1
	beq _080576CC
	b _080577F8
_080576CC:
	add r4, r5, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _08057708  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r5, #0
	bl sub_08057E54
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _080576F0
	b _080579AA
_080576F0:
	ldr r0, _0805770C  @ =0x030003C8
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _08057710
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	ble _08057710
	mov r3, r8
	strb r6, [r3]
	b _0805784A
_08057708:
	.4byte 0x03001940
_0805770C:
	.4byte 0x030003C8
_08057710:
	ldr r2, _08057730  @ =0x030003E4
	ldr r0, _08057734  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805773C
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _08057738  @ =0x030003F0
	ldr r0, [r0]
	bl sub_08040FC0
	b _0805775C
_08057730:
	.4byte 0x030003E4
_08057734:
	.4byte 0x030019AC
_08057738:
	.4byte 0x030003F0
_0805773C:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _0805775C
	mov r0, #2
	strb r0, [r1]
	ldr r1, _0805778C  @ =0x030003DE
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08057790  @ =0x030003E0
	ldr r0, _08057794  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_0805775C:
	ldr r4, _08057790  @ =0x030003E0
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _080577C2
	ldr r3, _0805778C  @ =0x030003DE
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	ldr r0, _08057798  @ =0x030003C8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080577A0
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08057786
	mov r0, #0
	strh r0, [r3]
_08057786:
	ldr r2, _0805779C  @ =gUnknown_0854301C
	b _080577B2
	.byte 0x00
	.byte 0x00
_0805778C:
	.4byte 0x030003DE
_08057790:
	.4byte 0x030003E0
_08057794:
	.4byte gUnknown_0851F440
_08057798:
	.4byte 0x030003C8
_0805779C:
	.4byte gUnknown_0854301C
_080577A0:
	cmp r0, #2
	bne _080577C2
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _080577B0
	mov r0, #0
	strh r0, [r3]
_080577B0:
	ldr r2, _080577EC  @ =gUnknown_0851F440
_080577B2:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_080577C2:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080577CE
	b _080579AA
_080577CE:
	ldrh r4, [r7]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080577F0  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _080577F4  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	bl sub_0804A644
	strh r4, [r7]
	b _080579AA
	.byte 0x00
	.byte 0x00
_080577EC:
	.4byte gUnknown_0851F440
_080577F0:
	.4byte 0x030003C9
_080577F4:
	.4byte gUnknown_086604B8
_080577F8:
	cmp r6, #2
	beq _080577FE
	b _0805798C
_080577FE:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057832
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #249
	bgt _08057832
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r5, #12]
	strb r1, [r5, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08057832:
	ldr r2, _08057874  @ =0x030003C8
	ldrb r1, [r2]
	cmp r1, #0
	bne _08057888
	add r0, r5, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #249
	ble _08057888
	mov r0, #1
	strb r0, [r2]
_0805784A:
	ldr r5, _08057878  @ =0x030003E4
	ldr r0, _0805787C  @ =0xFFFFEC00
	str r0, [r5]
	ldr r0, _08057880  @ =0x030003DE
	strh r1, [r0]
	ldr r4, _08057884  @ =0x030003F0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	ldr r1, [r5]
	bl sub_08040FC0
	b _080579AA
_08057874:
	.4byte 0x030003C8
_08057878:
	.4byte 0x030003E4
_0805787C:
	.4byte 0xFFFFEC00
_08057880:
	.4byte 0x030003DE
_08057884:
	.4byte 0x030003F0
_08057888:
	ldr r2, _080578A8  @ =0x030003E4
	ldr r0, _080578AC  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _080578B4
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _080578B0  @ =0x030003F0
	ldr r0, [r0]
	bl sub_08040FC0
	b _080578D4
_080578A8:
	.4byte 0x030003E4
_080578AC:
	.4byte 0x030019AC
_080578B0:
	.4byte 0x030003F0
_080578B4:
	ldr r1, _08057904  @ =0x030003C8
	ldrb r0, [r1]
	cmp r0, #1
	bne _080578D4
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08057908  @ =0x030003DE
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0805790C  @ =0x030003E0
	ldr r0, _08057910  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_080578D4:
	ldr r4, _0805790C  @ =0x030003E0
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	ldr r1, _08057904  @ =0x030003C8
	mov r8, r1
	cmp r0, #0
	bgt _0805793A
	ldr r3, _08057908  @ =0x030003DE
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrb r1, [r1]
	cmp r1, #1
	bne _08057918
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08057900
	mov r0, #0
	strh r0, [r3]
_08057900:
	ldr r2, _08057914  @ =gUnknown_0854301C
	b _0805792A
_08057904:
	.4byte 0x030003C8
_08057908:
	.4byte 0x030003DE
_0805790C:
	.4byte 0x030003E0
_08057910:
	.4byte gUnknown_0851F440
_08057914:
	.4byte gUnknown_0854301C
_08057918:
	cmp r1, #2
	bne _080579AA
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _08057928
	mov r0, #0
	strh r0, [r3]
_08057928:
	ldr r2, _08057978  @ =gUnknown_0851F440
_0805792A:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0805793A:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _080579AA
	ldr r2, _0805797C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057980  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057984  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	bl sub_0804A644
	ldr r0, _08057988  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	b _080579AA
	.byte 0x00
	.byte 0x00
_08057978:
	.4byte gUnknown_0851F440
_0805797C:
	.4byte gUnknown_03001A1C
_08057980:
	.4byte 0x030003C9
_08057984:
	.4byte gUnknown_086604B8
_08057988:
	.4byte 0x03001940
_0805798C:
	add r0, r5, #0
	bl sub_08057E54
	lsl r0, r0, #24
	cmp r0, #0
	bne _080579AA
	add r0, r5, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #160
	ble _080579AA
	add r0, r5, #0
	bl sub_0805824C
_080579AA:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080576B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080579B8
sub_080579B8: @ 0x080579B8
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08057E54
	lsl r0, r0, #24
	cmp r0, #0
	bne _08057A48
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #44
	bne _08057A28
	ldrh r6, [r5]
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne _080579F4
	ldr r0, _080579F0  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #2
	beq _08057A1E
	mov r0, #2
	bl sub_08058350
	b _08057A1E
_080579F0:
	.4byte 0x0300196C
_080579F4:
	cmp r0, #7
	bne _08057A0C
	ldr r0, _08057A08  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #3
	beq _08057A1E
	mov r0, #3
	bl sub_08058350
	b _08057A1E
_08057A08:
	.4byte 0x0300196C
_08057A0C:
	cmp r0, #6
	bne _08057A1E
	ldr r0, _08057A24  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #1
	beq _08057A1E
	mov r0, #1
	bl sub_08058350
_08057A1E:
	strh r6, [r5]
	b _08057A48
	.byte 0x00
	.byte 0x00
_08057A24:
	.4byte 0x0300196C
_08057A28:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057A48
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057A50  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057A54  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_08057A48:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_08057A50:
	.4byte 0x030003C9
_08057A54:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_080579B8

	THUMB_FUNC_START sub_08057A58
sub_08057A58: @ 0x08057A58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r6, r0, #0
	bl sub_08057E54
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	bne _08057B42
	add r0, r6, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r10, r0
	cmp r1, #23
	bne _08057A94
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #143
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08057A94:
	ldr r2, _08057B54  @ =0x030003CB
	ldrb r0, [r2]
	cmp r0, #0
	beq _08057B42
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057B42
	ldr r1, _08057B58  @ =0x030003C4
	ldr r0, _08057B5C  @ =0x030003DC
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #3
	ldr r1, [r1]
	add r5, r1, r0
	mov r0, r10
	ldrh r0, [r0]
	str r0, [sp, #12]
	strb r4, [r2]
	mov r0, #10
	ldrsb r0, [r6, r0]
	mov r1, #64
	add r1, r1, r6
	mov r9, r1
	cmp r0, #0
	bne _08057B20
	ldr r0, [r5]
	cmp r0, #0
	beq _08057B20
	mov r1, #0
	ldr r0, _08057B60  @ =0x03001C44
	ldrh r0, [r0]
	cmp r1, r0
	bge _08057B1C
	ldr r2, _08057B64  @ =0x030003D0
	mov r8, r2
	mov r7, #0
_08057AE0:
	ldr r0, _08057B68  @ =0x030003CA
	strb r1, [r0]
	lsl r4, r1, #24
	asr r4, r4, #24
	lsl r1, r4, #1
	add r1, r1, r8
	ldr r0, [r5]
	lsl r2, r4, #3
	add r0, r2, r0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r0, [r5]
	add r2, r2, r0
	ldrb r1, [r2]
	ldrh r3, [r2, #4]
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #255
	mov r2, #1
	neg r2, r2
	bl sub_08038DF4
	add r4, r4, #1
	lsl r4, r4, #24
	lsr r1, r4, #24
	asr r4, r4, #24
	ldr r0, _08057B60  @ =0x03001C44
	ldrh r0, [r0]
	cmp r4, r0
	blt _08057AE0
_08057B1C:
	mov r0, #1
	strb r0, [r6, #10]
_08057B20:
	ldr r1, _08057B6C  @ =0x03001C7C
	mov r0, #0
	strb r0, [r1]
	mov r3, r9
	ldrb r2, [r3]
	ldr r0, _08057B70  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057B74  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, sp
	ldrh r1, [r0, #12]
	mov r0, r10
	strh r1, [r0]
_08057B42:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08057B54:
	.4byte 0x030003CB
_08057B58:
	.4byte 0x030003C4
_08057B5C:
	.4byte 0x030003DC
_08057B60:
	.4byte 0x03001C44
_08057B64:
	.4byte 0x030003D0
_08057B68:
	.4byte 0x030003CA
_08057B6C:
	.4byte 0x03001C7C
_08057B70:
	.4byte 0x030003C9
_08057B74:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_08057A58

	THUMB_FUNC_START sub_08057B78
sub_08057B78: @ 0x08057B78
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #14
	bne _08057BC8
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057C34
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057BBC  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057BC0  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08057BC4  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
	b _08057C34
	.byte 0x00
	.byte 0x00
_08057BBC:
	.4byte 0x030003C9
_08057BC0:
	.4byte gUnknown_086604B8
_08057BC4:
	.4byte 0xFFFFF000
_08057BC8:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _08057BEA
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #142
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08057BEA:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057C34
	ldr r1, _08057C10  @ =0x030003DC
	ldr r0, _08057C14  @ =0x030003DA
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08057C18  @ =0x030003C0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _08057C1C
	add r0, r2, #1
	b _08057C1E
_08057C10:
	.4byte 0x030003DC
_08057C14:
	.4byte 0x030003DA
_08057C18:
	.4byte 0x030003C0
_08057C1C:
	mov r0, #0
_08057C1E:
	strh r0, [r3]
	add r0, r4, #0
	bl sub_0805824C
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08057C3C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08057C34:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08057C3C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08057B78

	THUMB_FUNC_START sub_08057C40
sub_08057C40: @ 0x08057C40
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #16
	bne _08057C94
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08057C5A
	b _08057D72
_08057C5A:
	mov r0, #18
	bl sub_08071E14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057C88  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057C8C  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08057C90  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	b _08057D1C
	.byte 0x00
	.byte 0x00
_08057C88:
	.4byte 0x030003C9
_08057C8C:
	.4byte gUnknown_086604B8
_08057C90:
	.4byte 0xFFFFF000
_08057C94:
	cmp r0, #17
	bne _08057CC4
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057D72
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057CBC  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057CC0  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #18
	bl sub_0804A644
	b _08057D72
	.byte 0x00
	.byte 0x00
_08057CBC:
	.4byte 0x030003C9
_08057CC0:
	.4byte gUnknown_086604B8
_08057CC4:
	cmp r0, #18
	bne _08057D30
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #8
	bne _08057CEA
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #95
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08057CEA:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057D72
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057D24  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057D28  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _08057D2C  @ =0xFFFFE000
_08057D1C:
	add r0, r0, r1
	str r0, [r4, #36]
	b _08057D72
	.byte 0x00
	.byte 0x00
_08057D24:
	.4byte 0x030003C9
_08057D28:
	.4byte gUnknown_086604B8
_08057D2C:
	.4byte 0xFFFFE000
_08057D30:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057D72
	bl sub_08072144
	cmp r0, #0
	beq _08057D46
	bl sub_080720AC
_08057D46:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #148
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057D7C  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057D80  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
_08057D72:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08057D7C:
	.4byte 0x030003C9
_08057D80:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_08057C40

	THUMB_FUNC_START sub_08057D84
sub_08057D84: @ 0x08057D84
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #21
	bne _08057DC8
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08057E3A
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08057DBC  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057DC0  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #22
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _08057DC4  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	b _08057E3A
_08057DBC:
	.4byte 0x030003C9
_08057DC0:
	.4byte gUnknown_086604B8
_08057DC4:
	.4byte 0xFFFFE000
_08057DC8:
	add r4, r4, #84
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #25
	bne _08057DE8
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #94
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08057DE8:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _08057E02
	ldr r1, _08057E44  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _08057E48  @ =0x03001C48
	ldrh r0, [r1]
	sub r0, r0, #16
	strh r0, [r1]
_08057E02:
	add r0, r2, #0
	sub r0, r0, #34
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #20
	bhi _08057E16
	ldr r1, _08057E44  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #6
	strh r0, [r1]
_08057E16:
	cmp r3, #54
	ble _08057E3A
	ldr r0, _08057E4C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #134
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _08057E3A
	ldr r0, _08057E50  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #10
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #18
	bl sub_08071E14
_08057E3A:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08057E44:
	.4byte 0x03001C40
_08057E48:
	.4byte 0x03001C48
_08057E4C:
	.4byte gUnknown_03001A1C
_08057E50:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_08057D84

	THUMB_FUNC_START sub_08057E54
sub_08057E54: @ 0x08057E54
	push {r4-r6,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r1, _08057EB8  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	add r3, r1, #0
	cmp r4, #0
	beq _08057ECC
	ldr r0, _08057EBC  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057EC0  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08057EC4  @ =0x03001968
	ldrh r0, [r5]
	str r0, [r1]
	ldr r2, _08057EC8  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _08057EAE
	b _0805822E
_08057EAE:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _0805822E
_08057EB8:
	.4byte 0x030019AC
_08057EBC:
	.4byte 0x030003C9
_08057EC0:
	.4byte gUnknown_086604B8
_08057EC4:
	.4byte 0x03001968
_08057EC8:
	.4byte gUnknown_03001A1C
_08057ECC:
	ldr r0, _08057F10  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _08057F1C
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #12
	beq _08057F1C
	cmp r0, #13
	beq _08057F1C
	ldr r0, _08057F14  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057F18  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #12
	mov r2, #0
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08058240
	.byte 0x00
	.byte 0x00
_08057F10:
	.4byte gUnknown_03001A1C
_08057F14:
	.4byte 0x030003C9
_08057F18:
	.4byte gUnknown_086604B8
_08057F1C:
	ldr r1, [r5, #76]
	cmp r1, #0
	bge _08057F24
	b _08058240
_08057F24:
	ldr r2, _08057F90  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r6, r0, r1
	ldrh r0, [r6]
	cmp r0, #0
	bne _08057FA0
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _08057F94  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #32]
	asr r2, r2, #8
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _08057F76
	b _080581E6
_08057F76:
	ldr r0, _08057F98  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08057F9C  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_080583F4
	b _08058220
_08057F90:
	.4byte 0x03001940
_08057F94:
	.4byte gUnknown_03001A1C
_08057F98:
	.4byte 0x030003C9
_08057F9C:
	.4byte gUnknown_086604B8
_08057FA0:
	sub r0, r0, #14
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bls _08057FAC
	b _08058220
_08057FAC:
	add r4, r6, #0
	add r4, r4, #132
	ldr r0, [r4]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08057FC0
	b _080581A8
_08057FC0:
	add r1, r5, #0
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	asr r1, r0, #24
	cmp r1, #0
	bgt _0805802C
	ldr r1, _08058010  @ =0x03001C7C
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08058014  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08058018  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #16
	mov r2, #0
	bl sub_0804A644
	ldr r2, _0805801C  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _08058020  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08058024  @ =gUnknown_03000B6C
	ldr r1, [r2]
	ldr r0, _08058028  @ =0x00001388
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r1, r1, #16
	ldr r2, [r5, #36]
	asr r2, r2, #8
	bl sub_08031A64
	b _08058136
	.byte 0x00
	.byte 0x00
_08058010:
	.4byte 0x03001C7C
_08058014:
	.4byte 0x030003C9
_08058018:
	.4byte gUnknown_086604B8
_0805801C:
	.4byte gUnknown_030019A0
_08058020:
	.4byte 0x20040000
_08058024:
	.4byte gUnknown_03000B6C
_08058028:
	.4byte 0x00001388
_0805802C:
	cmp r1, #3
	bne _08058080
	ldr r0, _0805804C  @ =0x03001C44
	strh r1, [r0]
	ldr r1, _08058050  @ =0x030003C0
	mov r0, #14
	strh r0, [r1]
	ldr r0, _08058054  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08058060
	ldr r1, _08058058  @ =0x030003C4
	ldr r0, _0805805C  @ =gUnknown_08660310
	b _08058064
_0805804C:
	.4byte 0x03001C44
_08058050:
	.4byte 0x030003C0
_08058054:
	.4byte gUnknown_03000B80
_08058058:
	.4byte 0x030003C4
_0805805C:
	.4byte gUnknown_08660310
_08058060:
	ldr r1, _08058070  @ =0x030003C4
	ldr r0, _08058074  @ =gUnknown_08660118
_08058064:
	str r0, [r1]
	ldr r2, _08058078  @ =0x030003DA
	ldr r1, _0805807C  @ =0x030003DC
	mov r0, #14
	b _0805811C
	.byte 0x00
	.byte 0x00
_08058070:
	.4byte 0x030003C4
_08058074:
	.4byte gUnknown_08660118
_08058078:
	.4byte 0x030003DA
_0805807C:
	.4byte 0x030003DC
_08058080:
	cmp r1, #2
	bne _080580D8
	ldr r1, _080580A4  @ =0x03001C44
	mov r0, #4
	strh r0, [r1]
	ldr r1, _080580A8  @ =0x030003C0
	mov r0, #20
	strh r0, [r1]
	ldr r0, _080580AC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080580B8
	ldr r1, _080580B0  @ =0x030003C4
	ldr r0, _080580B4  @ =gUnknown_08660380
	b _080580BC
	.byte 0x00
	.byte 0x00
_080580A4:
	.4byte 0x03001C44
_080580A8:
	.4byte 0x030003C0
_080580AC:
	.4byte gUnknown_03000B80
_080580B0:
	.4byte 0x030003C4
_080580B4:
	.4byte gUnknown_08660380
_080580B8:
	ldr r1, _080580C8  @ =0x030003C4
	ldr r0, _080580CC  @ =gUnknown_08660188
_080580BC:
	str r0, [r1]
	ldr r2, _080580D0  @ =0x030003DA
	ldr r1, _080580D4  @ =0x030003DC
	mov r0, #20
	b _0805811C
	.byte 0x00
	.byte 0x00
_080580C8:
	.4byte 0x030003C4
_080580CC:
	.4byte gUnknown_08660188
_080580D0:
	.4byte 0x030003DA
_080580D4:
	.4byte 0x030003DC
_080580D8:
	cmp r1, #1
	bne _08058120
	ldr r1, _080580FC  @ =0x03001C44
	mov r0, #5
	strh r0, [r1]
	ldr r1, _08058100  @ =0x030003C0
	mov r0, #19
	strh r0, [r1]
	ldr r0, _08058104  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08058110
	ldr r1, _08058108  @ =0x030003C4
	ldr r0, _0805810C  @ =gUnknown_08660420
	b _08058114
	.byte 0x00
	.byte 0x00
_080580FC:
	.4byte 0x03001C44
_08058100:
	.4byte 0x030003C0
_08058104:
	.4byte gUnknown_03000B80
_08058108:
	.4byte 0x030003C4
_0805810C:
	.4byte gUnknown_08660420
_08058110:
	ldr r1, _08058188  @ =0x030003C4
	ldr r0, _0805818C  @ =gUnknown_08660228
_08058114:
	str r0, [r1]
	ldr r2, _08058190  @ =0x030003DA
	ldr r1, _08058194  @ =0x030003DC
	mov r0, #19
_0805811C:
	strh r0, [r1]
	strh r0, [r2]
_08058120:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08058198  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _0805819C  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #14
	bl sub_0804A644
_08058136:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r5, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, [r5, #36]
	ldr r1, _080581A0  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r5, #36]
	ldr r2, _080581A4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r6, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	b _08058220
_08058188:
	.4byte 0x030003C4
_0805818C:
	.4byte gUnknown_08660228
_08058190:
	.4byte 0x030003DA
_08058194:
	.4byte 0x030003DC
_08058198:
	.4byte 0x030003C9
_0805819C:
	.4byte gUnknown_086604B8
_080581A0:
	.4byte 0xFFFFE000
_080581A4:
	.4byte gUnknown_03001A1C
_080581A8:
	ldr r2, [r3]
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08058220
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r1, [r6, #32]
	asr r1, r1, #8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	ldr r2, [r5, #32]
	asr r2, r2, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	sub r1, r1, r2
	cmp r1, #0
	bge _08058208
_080581E6:
	ldr r0, _08058200  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08058204  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	bl sub_0804A644
	mov r0, #0
	bl sub_080583F4
	b _08058220
_08058200:
	.4byte 0x030003C9
_08058204:
	.4byte gUnknown_086604B8
_08058208:
	ldr r0, _08058234  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08058238  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_080583F4
_08058220:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _0805823C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
_0805822E:
	mov r0, #1
	b _08058242
	.byte 0x00
	.byte 0x00
_08058234:
	.4byte 0x030003C9
_08058238:
	.4byte gUnknown_086604B8
_0805823C:
	.4byte 0xFFFFFF00
_08058240:
	mov r0, #0
_08058242:
	add sp, sp, #12
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08057E54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805824C
sub_0805824C: @ 0x0805824C
	push {r4-r6,lr}
	sub sp, sp, #4
	add r6, r0, #0
	ldr r2, _08058288  @ =0x030003C4
	ldr r3, _0805828C  @ =0x030003DA
	mov r1, #0
	ldrsh r0, [r3, r1]
	lsl r0, r0, #3
	ldr r1, [r2]
	add r4, r1, r0
	ldr r1, _08058290  @ =0x030003CB
	mov r0, #1
	strb r0, [r1]
	mov r0, #4
	ldrsb r0, [r4, r0]
	add r5, r3, #0
	cmp r0, #5
	bne _0805829C
	ldr r0, _08058294  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805829C
_08058278:
	mov r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _08058298  @ =0x030003C0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	blt _080582D8
	b _080582E8
_08058288:
	.4byte 0x030003C4
_0805828C:
	.4byte 0x030003DA
_08058290:
	.4byte 0x030003CB
_08058294:
	.4byte 0x0300196C
_08058298:
	.4byte 0x030003C0
_0805829C:
	mov r0, #4
	ldrsb r0, [r4, r0]
	ldrb r1, [r4, #4]
	cmp r0, #6
	bne _080582B8
	ldr r0, _080582B4  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #1
	bne _080582B8
	add r3, r5, #0
	b _08058278
	.byte 0x00
	.byte 0x00
_080582B4:
	.4byte 0x0300196C
_080582B8:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #7
	bne _080582EC
	ldr r0, _080582E0  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #3
	bne _080582EC
	add r3, r5, #0
	mov r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _080582E4  @ =0x030003C0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _080582E8
_080582D8:
	ldrh r0, [r5]
	add r0, r0, #1
	b _080582EA
	.byte 0x00
	.byte 0x00
_080582E0:
	.4byte 0x0300196C
_080582E4:
	.4byte 0x030003C0
_080582E8:
	mov r0, #0
_080582EA:
	strh r0, [r3]
_080582EC:
	mov r1, #0
	ldrsh r0, [r5, r1]
	lsl r0, r0, #3
	ldr r1, [r2]
	add r4, r1, r0
	mov r1, #4
	ldrsb r1, [r4, r1]
	ldrb r2, [r4, #5]
	ldr r0, _08058330  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08058334  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r6, #0
	bl sub_0804A644
	ldr r1, _08058338  @ =0x030003E2
	ldrh r0, [r4, #6]
	strh r0, [r1]
	mov r0, #0
	strb r0, [r6, #10]
	ldr r0, _0805833C  @ =0x030003DC
	ldrh r2, [r5]
	strh r2, [r0]
	add r3, r5, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08058340  @ =0x030003C0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _08058344
	add r0, r2, #1
	b _08058346
	.byte 0x00
	.byte 0x00
_08058330:
	.4byte 0x030003C9
_08058334:
	.4byte gUnknown_086604B8
_08058338:
	.4byte 0x030003E2
_0805833C:
	.4byte 0x030003DC
_08058340:
	.4byte 0x030003C0
_08058344:
	mov r0, #0
_08058346:
	strh r0, [r3]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805824C

	THUMB_FUNC_START sub_08058350
sub_08058350: @ 0x08058350
	push {r4-r6,lr}
	sub sp, sp, #24
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r1, _080583E0  @ =gUnknown_08076F94
	add r0, sp, #12
	mov r2, #3
	bl memcpy
	add r4, sp, #16
	ldr r1, _080583E4  @ =gUnknown_08076F98
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	sub r6, r5, #1
	lsl r0, r6, #1
	add r4, r4, r0
	ldrh r4, [r4]
	add r4, r4, #16
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r2, _080583E8  @ =0x030019DC
	ldr r0, _080583EC  @ =0x0300196C
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldrb r0, [r0]
	ldrb r1, [r2]
	bl sub_080035C0
	mov r0, sp
	add r0, r0, r6
	add r0, r0, #12
	ldrb r0, [r0]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r5, r5, #2
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _080583F0  @ =gUnknown_03001C78
	ldr r1, [r0]
	ldr r0, [r1, #32]
	asr r0, r0, #8
	lsl r4, r4, #16
	asr r4, r4, #16
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r3, [r1, #36]
	asr r3, r3, #8
	add r3, r3, #26
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0804138C
	add sp, sp, #24
	pop {r4-r6}
	pop {r0}
	bx r0
_080583E0:
	.4byte gUnknown_08076F94
_080583E4:
	.4byte gUnknown_08076F98
_080583E8:
	.4byte 0x030019DC
_080583EC:
	.4byte 0x0300196C
_080583F0:
	.4byte gUnknown_03001C78
	THUMB_FUNC_END sub_08058350

	THUMB_FUNC_START sub_080583F4
sub_080583F4: @ 0x080583F4
	push {r4,r5,lr}
	sub sp, sp, #80
	lsl r0, r0, #16
	cmp r0, #0
	bne _08058450
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _08058448  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _0805844C  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08058442
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_08058442:
	ldr r2, [r4]
	b _08058494
	.byte 0x00
	.byte 0x00
_08058448:
	.4byte 0x00100800
_0805844C:
	.4byte 0x030019AC
_08058450:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	ldr r2, _080584AC  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _080584B0  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _080584B4  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08058492
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_08058492:
	ldr r2, [r5]
_08058494:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _080584B8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080584AC:
	.4byte 0x000001E9
_080584B0:
	.4byte 0x00200800
_080584B4:
	.4byte 0x030019AC
_080584B8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080583F4

	THUMB_FUNC_START sub_080584BC
sub_080584BC: @ 0x080584BC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _080585F0  @ =0x08059325
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _080585F4  @ =0x080593A1
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	mov r9, r1
	mov r1, r9
	strb r1, [r0]
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	ldr r0, _080585F8  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	mov r1, #0
	cmp r0, #0
	bne _08058502
	mov r1, #9
_08058502:
	strh r1, [r7, #4]
	mov r0, #13
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080585FC  @ =gUnknown_08660A68
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _08058600  @ =0x03000420
	mov r2, #129
	add r2, r2, r7
	mov r12, r2
	mov r0, r10
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	mov r1, r12
	ldrb r4, [r1]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08058604  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r8
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _08058608  @ =0x030003CA
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r0, _0805860C  @ =0x030003F8
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	mov r2, r8
	strb r2, [r0, #16]
	mov r1, r9
	str r1, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	strb r2, [r0, #19]
	strb r2, [r0, #17]
	mov r1, #2
	strb r1, [r0, #18]
	mov r2, r9
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #144
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080585F0:
	.4byte sub_08059324
_080585F4:
	.4byte sub_080593A0
_080585F8:
	.4byte gUnknown_03000B90
_080585FC:
	.4byte gUnknown_08660A68
_08058600:
	.4byte 0x03000420
_08058604:
	.4byte 0xFFFFFE00
_08058608:
	.4byte 0x030003CA
_0805860C:
	.4byte 0x030003F8
	THUMB_FUNC_END sub_080584BC

	THUMB_FUNC_START sub_08058610
sub_08058610: @ 0x08058610
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08058744  @ =0x08059325
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08058748  @ =0x080593A1
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	mov r9, r1
	mov r1, r9
	strb r1, [r0]
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	ldr r0, _0805874C  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	mov r1, #1
	cmp r0, #0
	bne _08058656
	mov r1, #10
_08058656:
	strh r1, [r7, #4]
	mov r0, #13
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08058750  @ =gUnknown_08660A68
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _08058754  @ =0x03000421
	mov r2, #129
	add r2, r2, r7
	mov r12, r2
	mov r0, r10
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	mov r1, r12
	ldrb r4, [r1]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08058758  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r8
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _0805875C  @ =0x030003CA
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r0, _08058760  @ =0x030003F8
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	mov r2, r8
	strb r2, [r0, #16]
	mov r1, r9
	str r1, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	strb r2, [r0, #19]
	strb r2, [r0, #17]
	mov r1, #2
	strb r1, [r0, #18]
	mov r2, r9
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #144
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08058744:
	.4byte sub_08059324
_08058748:
	.4byte sub_080593A0
_0805874C:
	.4byte gUnknown_03000B90
_08058750:
	.4byte gUnknown_08660A68
_08058754:
	.4byte 0x03000421
_08058758:
	.4byte 0xFFFFFE00
_0805875C:
	.4byte 0x030003CA
_08058760:
	.4byte 0x030003F8
	THUMB_FUNC_END sub_08058610

	THUMB_FUNC_START sub_08058764
sub_08058764: @ 0x08058764
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08058898  @ =0x08059325
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0805889C  @ =0x080593A1
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	mov r9, r1
	mov r1, r9
	strb r1, [r0]
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	ldr r0, _080588A0  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	mov r1, #2
	cmp r0, #0
	bne _080587AA
	mov r1, #11
_080587AA:
	strh r1, [r7, #4]
	mov r0, #13
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080588A4  @ =gUnknown_08660A68
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _080588A8  @ =0x03000422
	mov r2, #129
	add r2, r2, r7
	mov r12, r2
	mov r0, r10
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	mov r1, r12
	ldrb r4, [r1]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _080588AC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r8
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _080588B0  @ =0x030003CA
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r0, _080588B4  @ =0x030003F8
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	mov r2, r8
	strb r2, [r0, #16]
	mov r1, r9
	str r1, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	strb r2, [r0, #19]
	strb r2, [r0, #17]
	mov r1, #2
	strb r1, [r0, #18]
	mov r2, r9
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #144
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08058898:
	.4byte sub_08059324
_0805889C:
	.4byte sub_080593A0
_080588A0:
	.4byte gUnknown_03000B90
_080588A4:
	.4byte gUnknown_08660A68
_080588A8:
	.4byte 0x03000422
_080588AC:
	.4byte 0xFFFFFE00
_080588B0:
	.4byte 0x030003CA
_080588B4:
	.4byte 0x030003F8
	THUMB_FUNC_END sub_08058764

	THUMB_FUNC_START sub_080588B8
sub_080588B8: @ 0x080588B8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _080588F4  @ =0x030003D0
	mov r0, #10
	ldrsb r0, [r4, r0]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r0]
	cmp r2, r1
	blt _08058974
	ldr r0, _080588F8  @ =0x03001C7C
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080588FC
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0805898C
_080588F4:
	.4byte 0x030003D0
_080588F8:
	.4byte 0x03001C7C
_080588FC:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0805891C
	ldr r0, _08058914  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _08058918  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0805892C
	.byte 0x00
	.byte 0x00
_08058914:
	.4byte 0x03000420
_08058918:
	.4byte gUnknown_08660A68
_0805891C:
	cmp r0, #1
	bne _0805893C
	ldr r0, _08058934  @ =0x03000421
	ldrb r3, [r0]
	ldr r0, _08058938  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0805892C:
	mov r2, #0
	bl sub_0804A644
	b _0805894E
_08058934:
	.4byte 0x03000421
_08058938:
	.4byte gUnknown_08660A68
_0805893C:
	ldr r0, _08058968  @ =0x03000422
	ldrb r3, [r0]
	ldr r0, _0805896C  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
_0805894E:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _08058970  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #153
	mov r1, #1
	strb r1, [r0]
	b _0805898C
	.byte 0x00
	.byte 0x00
_08058968:
	.4byte 0x03000422
_0805896C:
	.4byte gUnknown_08660A68
_08058970:
	.4byte 0x03001940
_08058974:
	add r0, r2, #0
	add r0, r0, #10
	cmp r0, r1
	bne _0805898C
	mov r0, #10
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0805898C
	ldr r0, _08058994  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	str r0, [r4, #32]
_0805898C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08058994:
	.4byte 0x030019AC
	THUMB_FUNC_END sub_080588B8

	THUMB_FUNC_START sub_08058998
sub_08058998: @ 0x08058998
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	ble _080589B2
	b _08058C90
_080589B2:
	ldr r0, [r6, #36]
	asr r0, r0, #8
	ldr r1, _080589E0  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _080589C2
	b _08058C90
_080589C2:
	ldr r0, _080589E4  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _080589F0
	ldr r0, _080589E8  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _080589EC  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #12
	b _08058BC4
	.byte 0x00
	.byte 0x00
_080589E0:
	.4byte gUnknown_030012E4
_080589E4:
	.4byte gUnknown_030019A0
_080589E8:
	.4byte 0x03000420
_080589EC:
	.4byte gUnknown_08660A68
_080589F0:
	ldr r0, [r6, #76]
	cmp r0, #0
	beq _080589F8
	b _08058CA0
_080589F8:
	ldr r3, _08058A80  @ =0x030019AC
	mov r8, r3
	ldr r2, [r3]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08058B02
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #117
	mov r2, #0
	bl sub_080410B4
	add r7, r6, #0
	add r7, r7, #61
	ldrb r0, [r7]
	ldr r1, _08058A84  @ =0x03001940
	mov r9, r1
	ldr r1, [r1]
	mov r4, #176
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r0, [r0]
	ldr r1, [r6, #32]
	asr r1, r1, #8
	add r1, r1, #8
	ldr r2, [r6, #36]
	asr r2, r2, #8
	sub r2, r2, #8
	bl sub_08031A64
	ldr r2, _08058A88  @ =gUnknown_03000B6C
	ldrb r0, [r7]
	mov r3, r9
	ldr r1, [r3]
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r1, [r2]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r2]
	mov r7, #4
	ldrsh r0, [r6, r7]
	cmp r0, #3
	bne _08058AAC
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08058A94
	ldr r0, _08058A8C  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _08058A90  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	b _08058BC4
	.byte 0x00
	.byte 0x00
_08058A80:
	.4byte 0x030019AC
_08058A84:
	.4byte 0x03001940
_08058A88:
	.4byte gUnknown_03000B6C
_08058A8C:
	.4byte 0x03000420
_08058A90:
	.4byte gUnknown_08660A68
_08058A94:
	ldr r0, _08058AA4  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _08058AA8  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	b _08058BE0
	.byte 0x00
	.byte 0x00
_08058AA4:
	.4byte 0x03000420
_08058AA8:
	.4byte gUnknown_08660A68
_08058AAC:
	cmp r0, #5
	bne _08058AF0
	mov r2, r8
	ldr r0, [r2]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08058AD8
	ldr r0, _08058AD0  @ =0x03000422
	ldrb r3, [r0]
	ldr r0, _08058AD4  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	b _08058BC4
	.byte 0x00
	.byte 0x00
_08058AD0:
	.4byte 0x03000422
_08058AD4:
	.4byte gUnknown_08660A68
_08058AD8:
	ldr r0, _08058AE8  @ =0x03000422
	ldrb r3, [r0]
	ldr r0, _08058AEC  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	b _08058BE0
	.byte 0x00
	.byte 0x00
_08058AE8:
	.4byte 0x03000422
_08058AEC:
	.4byte gUnknown_08660A68
_08058AF0:
	mov r3, r8
	ldr r0, [r3]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08058BB8
	b _08058BD4
_08058B02:
	ldrh r0, [r2, #4]
	sub r0, r0, #25
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #9
	bhi _08058BF0
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #117
	mov r2, #0
	bl sub_080410B4
	mov r7, #4
	ldrsh r0, [r6, r7]
	cmp r0, #3
	bne _08058B64
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08058B4C
	ldr r0, _08058B44  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _08058B48  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	b _08058BC4
	.byte 0x00
	.byte 0x00
_08058B44:
	.4byte 0x03000420
_08058B48:
	.4byte gUnknown_08660A68
_08058B4C:
	ldr r0, _08058B5C  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _08058B60  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	b _08058BE0
	.byte 0x00
	.byte 0x00
_08058B5C:
	.4byte 0x03000420
_08058B60:
	.4byte gUnknown_08660A68
_08058B64:
	cmp r0, #5
	bne _08058BA8
	mov r2, r8
	ldr r0, [r2]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08058B90
	ldr r0, _08058B88  @ =0x03000422
	ldrb r3, [r0]
	ldr r0, _08058B8C  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	b _08058BC4
	.byte 0x00
	.byte 0x00
_08058B88:
	.4byte 0x03000422
_08058B8C:
	.4byte gUnknown_08660A68
_08058B90:
	ldr r0, _08058BA0  @ =0x03000422
	ldrb r3, [r0]
	ldr r0, _08058BA4  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	b _08058BE0
	.byte 0x00
	.byte 0x00
_08058BA0:
	.4byte 0x03000422
_08058BA4:
	.4byte gUnknown_08660A68
_08058BA8:
	mov r3, r8
	ldr r0, [r3]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08058BD4
_08058BB8:
	ldr r0, _08058BCC  @ =0x03000421
	ldrb r3, [r0]
	ldr r0, _08058BD0  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #7
_08058BC4:
	mov r2, #0
	bl sub_0804A644
	b _08058D0E
_08058BCC:
	.4byte 0x03000421
_08058BD0:
	.4byte gUnknown_08660A68
_08058BD4:
	ldr r0, _08058BE8  @ =0x03000421
	ldrb r3, [r0]
	ldr r0, _08058BEC  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r6, #0
	mov r1, #7
_08058BE0:
	mov r2, #1
	bl sub_0804A644
	b _08058D0E
_08058BE8:
	.4byte 0x03000421
_08058BEC:
	.4byte gUnknown_08660A68
_08058BF0:
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08058C10
	ldr r0, _08058C08  @ =0x03001C7C
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08058C0C  @ =0x03001978
	strb r1, [r0]
	b _08058C90
_08058C08:
	.4byte 0x03001C7C
_08058C0C:
	.4byte 0x03001978
_08058C10:
	ldr r0, _08058C70  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r4, #2
	and r0, r0, r4
	cmp r0, #0
	beq _08058C2A
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
_08058C2A:
	ldr r0, _08058C74  @ =0x03001C7C
	mov r3, #1
	strb r3, [r0]
	ldr r2, _08058C78  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	mov r7, r8
	ldr r1, [r7]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08058C8C
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08058C80
	ldr r0, _08058C7C  @ =0x030019A8
	strb r3, [r0]
	b _08058C90
_08058C70:
	.4byte gUnknown_03000B90
_08058C74:
	.4byte 0x03001C7C
_08058C78:
	.4byte gUnknown_03001A1C
_08058C7C:
	.4byte 0x030019A8
_08058C80:
	ldr r1, _08058C88  @ =0x03001978
	mov r0, #3
	strb r0, [r1]
	b _08058C90
_08058C88:
	.4byte 0x03001978
_08058C8C:
	ldr r0, _08058C9C  @ =0x03001978
	strb r4, [r0]
_08058C90:
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _08058D0E
_08058C9C:
	.4byte 0x03001978
_08058CA0:
	ldr r0, _08058D20  @ =0x030019AC
	ldr r3, [r0]
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08058D0E
	ldr r2, _08058D24  @ =0x03001940
	ldr r1, [r3, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r3, [r2]
	add r3, r3, r0
	ldr r0, [r6, #108]
	mov r8, r0
	ldr r1, [r6, #116]
	mov r9, r1
	ldr r5, [r6, #112]
	ldr r2, [r6, #120]
	mov r12, r2
	ldr r1, [r3, #104]
	mov r7, #4
	ldrsh r4, [r1, r7]
	ldr r2, [r3, #32]
	add r4, r2, r4
	mov r7, #6
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	mov r10, r2
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r3, #36]
	add r3, r2, r0
	mov r7, #2
	ldrsh r0, [r1, r7]
	add r0, r2, r0
	cmp r9, r4
	ble _08058D0E
	cmp r8, r10
	bge _08058D0E
	cmp r5, r0
	bge _08058D0E
	cmp r12, r3
	ble _08058D0E
	ldr r0, _08058D28  @ =0x03001C7C
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08058D2C  @ =0x03001978
	strb r1, [r0]
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08058D0E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08058D20:
	.4byte 0x030019AC
_08058D24:
	.4byte 0x03001940
_08058D28:
	.4byte 0x03001C7C
_08058D2C:
	.4byte 0x03001978
	THUMB_FUNC_END sub_08058998

	THUMB_FUNC_START sub_08058D30
sub_08058D30: @ 0x08058D30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	ldr r0, _08058D80  @ =0x0000FFED
	mov r10, r0
	ldr r0, _08058D84  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _08058D5C
	ldr r0, _08058D88  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _08058D5C
	b _080590A4
_08058D5C:
	ldr r0, _08058D8C  @ =gUnknown_03001C78
	ldr r1, [r0]
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #8
	bne _08058DB4
	add r0, r1, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #27
	ble _08058DB4
	cmp r0, #31
	bgt _08058D94
	ldr r0, _08058D90  @ =0x0000FFF4
	mov r10, r0
	b _08058DB4
	.byte 0x00
	.byte 0x00
_08058D80:
	.4byte 0x0000FFED
_08058D84:
	.4byte gNextMainState
_08058D88:
	.4byte gUnknown_030019A0
_08058D8C:
	.4byte gUnknown_03001C78
_08058D90:
	.4byte 0x0000FFF4
_08058D94:
	cmp r0, #37
	bgt _08058D9E
	mov r1, #0
	mov r10, r1
	b _08058DB4
_08058D9E:
	cmp r0, #41
	bgt _08058DAC
	ldr r2, _08058DA8  @ =0x0000FFF1
	mov r10, r2
	b _08058DB4
_08058DA8:
	.4byte 0x0000FFF1
_08058DAC:
	cmp r0, #45
	bgt _08058DB4
	ldr r3, _08058F94  @ =0x0000FFF2
	mov r10, r3
_08058DB4:
	ldr r6, _08058F98  @ =0x040000D4
	ldr r0, _08058F9C  @ =gUnknown_08657324
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08058FA0  @ =gOamBuffer
	mov r12, r1
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r2, _08058FA4  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldr r3, _08058FA8  @ =gUnknown_086573AC
	str r3, [r6]
	ldrh r0, [r4]
	ldr r1, _08058FAC  @ =0x06010000
	add r0, r0, r1
	str r0, [r6, #4]
	add r2, r2, #30
	mov r8, r2
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r5]
	add r1, r1, r0
	ldr r0, _08058FB0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08058FB4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _08058FB8  @ =gUnknown_030012A0
	ldrh r0, [r1]
	lsl r0, r0, #16
	asr r0, r0, #17
	ldr r3, _08058FBC  @ =0x030003E8
	ldr r1, [r3]
	sub r1, r1, r0
	add r1, r1, #53
	ldr r0, _08058FC0  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08058FC4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _08058FC8  @ =0x030003EC
	mov r9, r1
	ldr r1, [r1]
	ldr r3, _08058FCC  @ =gUnknown_03001710
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	add r1, r1, r10
	strb r1, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrh r0, [r5]
	add r0, r0, #4
	strh r0, [r5]
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldr r0, _08058F9C  @ =gUnknown_08657324
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r1, _08058FA4  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r2, _08058FD0  @ =gUnknown_0865732C
	str r2, [r6]
	ldrh r0, [r4]
	ldr r3, _08058FAC  @ =0x06010000
	add r0, r0, r3
	str r0, [r6, #4]
	mov r0, r8
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r1, [r5]
	add r0, r0, r1
	ldr r1, _08058FB0  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _08058FB4  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _08058FB8  @ =gUnknown_030012A0
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	ldr r3, _08058FBC  @ =0x030003E8
	ldr r1, [r3]
	sub r1, r1, r0
	add r1, r1, #53
	ldr r0, _08058FC0  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08058FC4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r3, r9
	ldr r1, [r3]
	ldr r3, _08058FCC  @ =gUnknown_03001710
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	sub r1, r1, #32
	add r1, r1, r10
	strb r1, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrh r0, [r5]
	add r0, r0, #4
	strh r0, [r5]
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldr r0, _08058F9C  @ =gUnknown_08657324
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r1, _08058FA4  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldr r2, _08058FD0  @ =gUnknown_0865732C
	str r2, [r6]
	ldrh r0, [r4]
	ldr r3, _08058FAC  @ =0x06010000
	add r0, r0, r3
	str r0, [r6, #4]
	mov r0, r8
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r1, [r5]
	add r0, r0, r1
	ldr r1, _08058FB0  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _08058FB4  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _08058FB8  @ =gUnknown_030012A0
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	ldr r3, _08058FBC  @ =0x030003E8
	ldr r1, [r3]
	sub r1, r1, r0
	add r1, r1, #53
	ldr r0, _08058FC0  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08058FC4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r3, r9
	ldr r1, [r3]
	ldr r3, _08058FCC  @ =gUnknown_03001710
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	sub r1, r1, #64
	add r1, r1, r10
	strb r1, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrh r0, [r5]
	add r0, r0, #4
	strh r0, [r5]
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldr r0, _08058FD4  @ =0x030003C8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08058FE4
	ldr r0, _08058FD8  @ =gUnknown_0854337C
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r0, _08058FA4  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _08058FDC  @ =0x030003DE
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _08058FE0  @ =gUnknown_08543384
	b _08059004
	.byte 0x00
	.byte 0x00
_08058F94:
	.4byte 0x0000FFF2
_08058F98:
	.4byte 0x040000D4
_08058F9C:
	.4byte gUnknown_08657324
_08058FA0:
	.4byte gOamBuffer
_08058FA4:
	.4byte 0x84000002
_08058FA8:
	.4byte gUnknown_086573AC
_08058FAC:
	.4byte 0x06010000
_08058FB0:
	.4byte 0x000003FF
_08058FB4:
	.4byte 0xFFFFFC00
_08058FB8:
	.4byte gUnknown_030012A0
_08058FBC:
	.4byte 0x030003E8
_08058FC0:
	.4byte 0x000001FF
_08058FC4:
	.4byte 0xFFFFFE00
_08058FC8:
	.4byte 0x030003EC
_08058FCC:
	.4byte gUnknown_03001710
_08058FD0:
	.4byte gUnknown_0865732C
_08058FD4:
	.4byte 0x030003C8
_08058FD8:
	.4byte gUnknown_0854337C
_08058FDC:
	.4byte 0x030003DE
_08058FE0:
	.4byte gUnknown_08543384
_08058FE4:
	cmp r0, #2
	bne _080590A4
	ldr r0, _080590B4  @ =gUnknown_0851F560
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r3, _080590B8  @ =0x84000002
	str r3, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _080590BC  @ =0x030003DE
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _080590C0  @ =gUnknown_0851F568
_08059004:
	add r0, r0, r1
	str r0, [r6]
	ldrh r0, [r4]
	ldr r2, _080590C4  @ =0x06010000
	add r0, r0, r2
	str r0, [r6, #4]
	ldr r0, _080590C8  @ =0x84000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r1, [r5]
	add r0, r0, r1
	ldr r1, _080590CC  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _080590D0  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r12
	ldr r0, _080590D4  @ =0x030003E4
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r2, _080590D8  @ =gUnknown_030012A0
	ldrh r0, [r2]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r0, _080590DC  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080590E0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _080590E4  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r3, _080590E8  @ =gUnknown_03001710
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrh r0, [r5]
	add r0, r0, #32
	strh r0, [r5]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r4]
	add r0, r0, r2
	strh r0, [r4]
_080590A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080590B4:
	.4byte gUnknown_0851F560
_080590B8:
	.4byte 0x84000002
_080590BC:
	.4byte 0x030003DE
_080590C0:
	.4byte gUnknown_0851F568
_080590C4:
	.4byte 0x06010000
_080590C8:
	.4byte 0x84000100
_080590CC:
	.4byte 0x000003FF
_080590D0:
	.4byte 0xFFFFFC00
_080590D4:
	.4byte 0x030003E4
_080590D8:
	.4byte gUnknown_030012A0
_080590DC:
	.4byte 0x000001FF
_080590E0:
	.4byte 0xFFFFFE00
_080590E4:
	.4byte 0x030019AC
_080590E8:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_08058D30

	THUMB_FUNC_START sub_080590EC
sub_080590EC: @ 0x080590EC
	push {r4,lr}
	add r3, r0, #0
	add r4, r3, #0
	ldr r1, _0805913C  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08059116
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _08059126
_08059116:
	ldr r1, _08059140  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08059134
_08059126:
	add r0, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r3, #0
	bl _call_via_r1
_08059134:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0805913C:
	.4byte 0x030019AC
_08059140:
	.4byte gUnknown_03001C78
	THUMB_FUNC_END sub_080590EC

	THUMB_FUNC_START sub_08059144
sub_08059144: @ 0x08059144
	bx lr
	THUMB_FUNC_END sub_08059144

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08059148
sub_08059148: @ 0x08059148
	bx lr
	THUMB_FUNC_END sub_08059148

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805914C
sub_0805914C: @ 0x0805914C
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _08059198  @ =0x03001940
	ldr r1, [r1]
	add r1, r1, #153
	mov r4, #0
	strb r4, [r1]
	ldr r2, _0805919C  @ =0x030003E0
	ldr r1, _080591A0  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r2]
	ldr r1, _080591A4  @ =0x030003C8
	strb r4, [r1]
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _080591A8  @ =0x030003C9
	ldrb r3, [r1]
	ldr r1, _080591AC  @ =gUnknown_086604B8
	str r1, [sp]
	mov r1, #1
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08059198:
	.4byte 0x03001940
_0805919C:
	.4byte 0x030003E0
_080591A0:
	.4byte gUnknown_0854301C
_080591A4:
	.4byte 0x030003C8
_080591A8:
	.4byte 0x030003C9
_080591AC:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_0805914C

	THUMB_FUNC_START sub_080591B0
sub_080591B0: @ 0x080591B0
	push {r4,lr}
	add r4, r0, #0
	bl sub_08057E54
	lsl r0, r0, #24
	cmp r0, #0
	bne _080591D6
	add r0, r4, #0
	add r0, r0, #84
	ldr r1, _080591DC  @ =0x030003E2
	mov r3, #0
	ldrsh r2, [r0, r3]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	blt _080591D6
	add r0, r4, #0
	bl sub_0805824C
_080591D6:
	pop {r4}
	pop {r0}
	bx r0
_080591DC:
	.4byte 0x030003E2
	THUMB_FUNC_END sub_080591B0

	THUMB_FUNC_START sub_080591E0
sub_080591E0: @ 0x080591E0
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08059230
	ldr r1, _0805920C  @ =0x030003DC
	ldr r0, _08059210  @ =0x030003DA
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08059214  @ =0x030003C0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _08059218
	add r0, r2, #1
	b _0805921A
	.byte 0x00
	.byte 0x00
_0805920C:
	.4byte 0x030003DC
_08059210:
	.4byte 0x030003DA
_08059214:
	.4byte 0x030003C0
_08059218:
	mov r0, #0
_0805921A:
	strh r0, [r3]
	add r0, r4, #0
	bl sub_0805824C
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08059238  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08059230:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08059238:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080591E0

	THUMB_FUNC_START sub_0805923C
sub_0805923C: @ 0x0805923C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805926C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08059274  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _08059278  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	bl sub_0804A644
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
_0805926C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08059274:
	.4byte 0x030003C9
_08059278:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_0805923C

	THUMB_FUNC_START sub_0805927C
sub_0805927C: @ 0x0805927C
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805929E
	ldr r0, _080592A4  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _080592A8  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #11
	mov r2, #0
	bl sub_0804A644
_0805929E:
	add sp, sp, #4
	pop {r0}
	bx r0
_080592A4:
	.4byte 0x030003C9
_080592A8:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_0805927C

	THUMB_FUNC_START sub_080592AC
sub_080592AC: @ 0x080592AC
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080592CE
	ldr r0, _080592D4  @ =0x030003C9
	ldrb r3, [r0]
	ldr r0, _080592D8  @ =gUnknown_086604B8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #13
	mov r2, #0
	bl sub_0804A644
_080592CE:
	add sp, sp, #4
	pop {r0}
	bx r0
_080592D4:
	.4byte 0x030003C9
_080592D8:
	.4byte gUnknown_086604B8
	THUMB_FUNC_END sub_080592AC

	THUMB_FUNC_START sub_080592DC
sub_080592DC: @ 0x080592DC
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805931E
	ldr r1, _08059308  @ =0x030003DC
	ldr r0, _0805930C  @ =0x030003DA
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08059310  @ =0x030003C0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _08059314
	add r0, r2, #1
	b _08059316
	.byte 0x00
	.byte 0x00
_08059308:
	.4byte 0x030003DC
_0805930C:
	.4byte 0x030003DA
_08059310:
	.4byte 0x030003C0
_08059314:
	mov r0, #0
_08059316:
	strh r0, [r3]
	add r0, r4, #0
	bl sub_0805824C
_0805931E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080592DC

	THUMB_FUNC_START sub_08059324
sub_08059324: @ 0x08059324
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08059360  @ =gUnknown_03001A1C
	ldr r1, [r1]
	ldr r2, _08059364  @ =0x00104300
	and r1, r1, r2
	cmp r1, #0
	bne _0805936C
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08059368  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08059372
_08059360:
	.4byte gUnknown_03001A1C
_08059364:
	.4byte 0x00104300
_08059368:
	.4byte 0x00007FFF
_0805936C:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08059372:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08059324

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080593A0
sub_080593A0: @ 0x080593A0
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080593A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080593B4
sub_080593B4: @ 0x080593B4
	push {lr}
	add r2, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	ble _080593CE
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _080593E6
_080593CE:
	ldr r0, [r2, #36]
	asr r0, r0, #8
	ldr r1, _080593EC  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _080593E6
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_080593E6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080593EC:
	.4byte gUnknown_030012E4
	THUMB_FUNC_END sub_080593B4

	THUMB_FUNC_START sub_080593F0
sub_080593F0: @ 0x080593F0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r1, r4, #0
	add r1, r1, #65
	ldrb r1, [r1]
	cmp r0, r1
	blt _0805946C
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #9
	bne _08059424
	ldr r0, _0805941C  @ =0x03000420
	ldrb r3, [r0]
	ldr r0, _08059420  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _08059434
_0805941C:
	.4byte 0x03000420
_08059420:
	.4byte gUnknown_08660A68
_08059424:
	cmp r0, #10
	bne _08059444
	ldr r0, _0805943C  @ =0x03000421
	ldrb r3, [r0]
	ldr r0, _08059440  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_08059434:
	mov r2, #0
	bl sub_0804A644
	b _08059456
_0805943C:
	.4byte 0x03000421
_08059440:
	.4byte gUnknown_08660A68
_08059444:
	ldr r0, _08059474  @ =0x03000422
	ldrb r3, [r0]
	ldr r0, _08059478  @ =gUnknown_08660A68
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
_08059456:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _0805947C  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #153
	mov r1, #1
	strb r1, [r0]
_0805946C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08059474:
	.4byte 0x03000422
_08059478:
	.4byte gUnknown_08660A68
_0805947C:
	.4byte 0x03001940
	THUMB_FUNC_END sub_080593F0

	THUMB_FUNC_START sub_08059480
sub_08059480: @ 0x08059480
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08059498
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08059498:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08059480

	THUMB_FUNC_START sub_0805949C
sub_0805949C: @ 0x0805949C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, _08059604  @ =0x0300042C
	mov r5, #0
	strh r5, [r0]
	ldr r0, _08059608  @ =0x03001C48
	strh r5, [r0]
	ldr r0, _0805960C  @ =0x03001C40
	strh r5, [r0]
	ldr r0, _08059610  @ =0x03000432
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08059614  @ =0x03000444
	strh r5, [r0]
	ldr r0, _08059618  @ =0x03000446
	strh r5, [r0]
	ldr r0, _0805961C  @ =0x03000435
	strb r5, [r0]
	ldr r0, _08059620  @ =0x03000434
	strb r5, [r0]
	ldr r0, _08059624  @ =0x03000437
	strb r5, [r0]
	ldr r0, _08059628  @ =0x03000450
	strb r1, [r0]
	ldr r0, _0805962C  @ =0x03001C80
	strb r5, [r0]
	ldr r0, _08059630  @ =0x03001C84
	strb r5, [r0]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08059634  @ =0x08059969
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08059638  @ =0x08059AD1
	str r0, [r1]
	ldr r0, _0805963C  @ =gUnknown_03001C78
	str r7, [r0]
	mov r1, #0
	mov r8, r1
	strh r2, [r7]
	mov r2, r8
	strh r2, [r7, #4]
	mov r0, #22
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08059640  @ =gUnknown_08660EA8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r9, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08059644  @ =0x0300042F
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08059648  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	strb r5, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	strb r5, [r7, #10]
	ldr r0, _0805964C  @ =0x03001C50
	strb r5, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	strb r5, [r0, #16]
	mov r2, r8
	str r2, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	mov r1, #2
	strb r1, [r0, #19]
	strb r5, [r0, #17]
	strb r5, [r0, #18]
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _08059650  @ =0x0300043C
	mov r1, r8
	strh r1, [r0]
	mov r1, #0
	ldr r3, _08059654  @ =0x03001C90
	mov r2, #0
_080595E2:
	lsl r0, r1, #16
	asr r0, r0, #16
	add r1, r0, r3
	strb r2, [r1]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #19
	ble _080595E2
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08059604:
	.4byte 0x0300042C
_08059608:
	.4byte 0x03001C48
_0805960C:
	.4byte 0x03001C40
_08059610:
	.4byte 0x03000432
_08059614:
	.4byte 0x03000444
_08059618:
	.4byte 0x03000446
_0805961C:
	.4byte 0x03000435
_08059620:
	.4byte 0x03000434
_08059624:
	.4byte 0x03000437
_08059628:
	.4byte 0x03000450
_0805962C:
	.4byte 0x03001C80
_08059630:
	.4byte 0x03001C84
_08059634:
	.4byte sub_08059968
_08059638:
	.4byte sub_08059AD0
_0805963C:
	.4byte gUnknown_03001C78
_08059640:
	.4byte gUnknown_08660EA8
_08059644:
	.4byte 0x0300042F
_08059648:
	.4byte 0xFFFFFE00
_0805964C:
	.4byte 0x03001C50
_08059650:
	.4byte 0x0300043C
_08059654:
	.4byte 0x03001C90
	THUMB_FUNC_END sub_0805949C

	THUMB_FUNC_START sub_08059658
sub_08059658: @ 0x08059658
	push {r4-r6,lr}
	ldr r0, _080596A8  @ =gUnknown_03001C78
	ldr r4, [r0]
	ldr r2, [r4, #36]
	add r0, r4, #0
	add r0, r0, #132
	ldr r6, [r0]
	asr r2, r2, #8
	ldrb r0, [r6, #2]
	add r2, r2, r0
	ldr r0, _080596AC  @ =0x030019AC
	ldr r3, [r0]
	ldr r0, [r3, #36]
	add r1, r3, #0
	add r1, r1, #132
	ldr r5, [r1]
	asr r0, r0, #8
	ldrb r1, [r5, #2]
	add r0, r0, r1
	cmp r2, r0
	bne _080596E8
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldrb r6, [r6, #1]
	add r1, r1, r6
	ldr r0, [r3, #32]
	asr r0, r0, #8
	ldrb r5, [r5, #1]
	add r0, r0, r5
	cmp r1, r0
	ble _080596B8
	ldr r0, _080596B0  @ =0x03000444
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08059702
	ldr r1, _080596B4  @ =gUnknown_030009E8
	mov r0, #0
	strb r0, [r1]
	b _080596C6
_080596A8:
	.4byte gUnknown_03001C78
_080596AC:
	.4byte 0x030019AC
_080596B0:
	.4byte 0x03000444
_080596B4:
	.4byte gUnknown_030009E8
_080596B8:
	ldr r0, _080596DC  @ =0x03000444
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _08059702
	ldr r0, _080596E0  @ =gUnknown_030009E8
	strb r1, [r0]
_080596C6:
	ldr r1, _080596E4  @ =0x03000434
	mov r0, #2
	strb r0, [r1]
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	b _08059702
_080596DC:
	.4byte 0x03000444
_080596E0:
	.4byte gUnknown_030009E8
_080596E4:
	.4byte 0x03000434
_080596E8:
	ldr r1, _08059708  @ =gUnknown_030009E8
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0805970C  @ =0x03000434
	mov r0, #2
	strb r0, [r1]
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
_08059702:
	pop {r4-r6}
	pop {r0}
	bx r0
_08059708:
	.4byte gUnknown_030009E8
_0805970C:
	.4byte 0x03000434
	THUMB_FUNC_END sub_08059658

	THUMB_FUNC_START sub_08059710
sub_08059710: @ 0x08059710
	push {r4-r7,lr}
	sub sp, sp, #24
	add r5, r0, #0
	ldr r1, _0805975C  @ =gUnknown_08076FA0
	mov r0, sp
	mov r2, #22
	bl memcpy
	mov r1, #4
	ldrsh r0, [r5, r1]
	add r0, sp, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805972E
	b _0805995C
_0805972E:
	ldr r0, _08059760  @ =0x03000432
	ldrb r1, [r0]
	add r6, r0, #0
	cmp r1, #0
	bne _0805973A
	b _08059848
_0805973A:
	add r0, r5, #0
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _08059768
	ldr r1, _08059764  @ =0x03000444
	mov r2, #240
	lsl r2, r2, #1
	add r0, r2, #0
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	add r7, r1, #0
	b _080597AA
	.byte 0x00
	.byte 0x00
_0805975C:
	.4byte gUnknown_08076FA0
_08059760:
	.4byte 0x03000432
_08059764:
	.4byte 0x03000444
_08059768:
	ldr r0, _08059788  @ =0x0300042C
	ldrh r0, [r0]
	cmp r0, #0
	beq _08059790
	ldr r2, _0805978C  @ =0x03000444
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #4
	sub r1, r1, r0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #6
	mov r1, #192
	lsl r1, r1, #1
	add r0, r0, r1
	b _080597A2
_08059788:
	.4byte 0x0300042C
_0805978C:
	.4byte 0x03000444
_08059790:
	ldr r2, _080597D4  @ =0x03000444
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #4
	sub r1, r1, r0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #5
	add r0, r0, #192
_080597A2:
	ldrh r1, [r2]
	add r0, r0, r1
	strh r0, [r2]
	add r7, r2, #0
_080597AA:
	mov r2, #0
	ldrsh r1, [r7, r2]
	ldr r0, _080597D8  @ =0x00004FFF
	cmp r1, r0
	ble _080597E4
	ldr r0, _080597DC  @ =0x03000434
	ldrb r0, [r0]
	cmp r0, #1
	bne _080597C0
	bl sub_08059658
_080597C0:
	mov r1, #160
	lsl r1, r1, #7
	add r0, r1, #0
	strh r0, [r7]
	ldr r1, _080597E0  @ =0x03000432
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	b _0805981C
_080597D4:
	.4byte 0x03000444
_080597D8:
	.4byte 0x00004FFF
_080597DC:
	.4byte 0x03000434
_080597E0:
	.4byte 0x03000432
_080597E4:
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08059842
	ldr r4, _08059828  @ =0x0300043A
	ldr r1, _0805982C  @ =gUnknown_086613B8
	ldr r2, _08059830  @ =0x03000438
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bcc _08059838
	mov r1, #0
	strh r1, [r4]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	bls _08059814
	strb r1, [r2]
_08059814:
	ldrb r0, [r6]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r6]
_0805981C:
	ldr r1, _08059834  @ =0x03000435
	ldrb r0, [r1]
	eor r0, r0, r2
	strb r0, [r1]
	b _08059842
	.byte 0x00
	.byte 0x00
_08059828:
	.4byte 0x0300043A
_0805982C:
	.4byte gUnknown_086613B8
_08059830:
	.4byte 0x03000438
_08059834:
	.4byte 0x03000435
_08059838:
	mov r0, #0
	ldrsb r0, [r3, r0]
	sub r0, r0, #4
	sub r0, r1, r0
	strh r0, [r4]
_08059842:
	mov r2, #0
	ldrsh r1, [r7, r2]
	b _0805994A
_08059848:
	add r0, r5, #0
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _08059870
	ldr r1, _08059868  @ =0x03000444
	ldr r2, _0805986C  @ =0xFFFFFE20
	add r0, r2, #0
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	add r7, r1, #0
	b _080598B2
	.byte 0x00
	.byte 0x00
_08059868:
	.4byte 0x03000444
_0805986C:
	.4byte 0xFFFFFE20
_08059870:
	ldr r0, _08059890  @ =0x0300042C
	ldrh r0, [r0]
	cmp r0, #0
	beq _08059898
	ldr r2, _08059894  @ =0x03000444
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #4
	sub r1, r1, r0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #6
	mov r1, #192
	lsl r1, r1, #1
	add r0, r0, r1
	b _080598AA
_08059890:
	.4byte 0x0300042C
_08059894:
	.4byte 0x03000444
_08059898:
	ldr r2, _080598D8  @ =0x03000444
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #4
	sub r1, r1, r0
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #5
	add r0, r0, #192
_080598AA:
	ldrh r1, [r2]
	sub r1, r1, r0
	strh r1, [r2]
	add r7, r2, #0
_080598B2:
	mov r2, #0
	ldrsh r0, [r7, r2]
	ldr r4, _080598DC  @ =0xFFFFB000
	cmp r0, r4
	bgt _080598E8
	ldr r0, _080598E0  @ =0x03000434
	ldrb r0, [r0]
	cmp r0, #1
	bne _080598C8
	bl sub_08059658
_080598C8:
	strh r4, [r7]
	ldr r1, _080598E4  @ =0x03000432
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	b _08059920
	.byte 0x00
	.byte 0x00
_080598D8:
	.4byte 0x03000444
_080598DC:
	.4byte 0xFFFFB000
_080598E0:
	.4byte 0x03000434
_080598E4:
	.4byte 0x03000432
_080598E8:
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _08059946
	ldr r4, _0805992C  @ =0x0300043A
	ldr r1, _08059930  @ =gUnknown_086613B8
	ldr r2, _08059934  @ =0x03000438
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	bcc _0805993C
	mov r1, #0
	strh r1, [r4]
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	bls _08059918
	strb r1, [r2]
_08059918:
	ldrb r0, [r6]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r6]
_08059920:
	ldr r1, _08059938  @ =0x03000435
	ldrb r0, [r1]
	eor r0, r0, r2
	strb r0, [r1]
	b _08059946
	.byte 0x00
	.byte 0x00
_0805992C:
	.4byte 0x0300043A
_08059930:
	.4byte gUnknown_086613B8
_08059934:
	.4byte 0x03000438
_08059938:
	.4byte 0x03000435
_0805993C:
	mov r0, #0
	ldrsb r0, [r3, r0]
	sub r0, r0, #4
	sub r0, r1, r0
	strh r0, [r4]
_08059946:
	mov r0, #0
	ldrsh r1, [r7, r0]
_0805994A:
	ldr r0, [r5, #16]
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r1, _08059964  @ =0x03001C80
	ldrh r0, [r7]
	lsl r0, r0, #16
	asr r0, r0, #24
	neg r0, r0
	strb r0, [r1]
_0805995C:
	add sp, sp, #24
	pop {r4-r7}
	pop {r0}
	bx r0
_08059964:
	.4byte 0x03001C80
	THUMB_FUNC_END sub_08059710

	THUMB_FUNC_START sub_08059968
sub_08059968: @ 0x08059968
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r4, #0
	ldr r1, _080599FC  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08059992
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _080599A4
_08059992:
	ldr r1, _08059A00  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bne _080599A4
	b _08059AB0
_080599A4:
	add r0, r7, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08059A04  @ =0x03000428
	ldrh r0, [r1]
	cmp r0, #0
	beq _080599BE
	sub r0, r0, #1
	strh r0, [r1]
_080599BE:
	ldr r6, _08059A08  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _080599E2
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08059A0C  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_08059710
_080599E2:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _08059A10
	add r0, r7, #0
	mov r1, #0
	bl sub_0804A580
	b _08059A16
	.byte 0x00
	.byte 0x00
_080599FC:
	.4byte 0x030019AC
_08059A00:
	.4byte gUnknown_03001C78
_08059A04:
	.4byte 0x03000428
_08059A08:
	.4byte gUnknown_03001A1C
_08059A0C:
	.4byte 0x00007FFF
_08059A10:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08059A16:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	mov r4, #0
	mov r3, #0
	ldr r1, _08059AB8  @ =0x03000452
	ldrh r1, [r1]
	ldr r7, _08059ABC  @ =0x03000455
	cmp r4, r1
	bcs _08059A78
	ldr r6, _08059AC0  @ =0x03001CB0
	add r5, r1, #0
_08059A4E:
	lsl r1, r3, #2
	add r1, r1, r6
	ldr r1, [r1]
	ldrh r1, [r1, #4]
	lsl r2, r1, #16
	lsr r1, r2, #16
	cmp r1, #1
	bls _08059A6E
	asr r1, r2, #16
	cmp r1, #6
	beq _08059A6E
	cmp r1, #7
	beq _08059A6E
	add r1, r4, #1
	lsl r1, r1, #24
	lsr r4, r1, #24
_08059A6E:
	add r1, r3, #1
	lsl r1, r1, #16
	lsr r3, r1, #16
	cmp r3, r5
	bcc _08059A4E
_08059A78:
	ldrb r7, [r7]
	cmp r4, r7
	bcs _08059AB0
	ldr r4, _08059AC4  @ =0x03001C90
	ldr r3, _08059AC0  @ =0x03001CB0
	ldr r2, _08059AC8  @ =gUnknown_08661378
	ldr r5, _08059ACC  @ =0x03000454
	ldrb r1, [r5]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	lsl r1, r1, #2
	add r1, r1, r3
	ldr r1, [r1]
	add r1, r1, #61
	ldrb r1, [r1]
	add r1, r1, r4
	mov r2, #1
	strb r2, [r1]
	ldrb r1, [r5]
	add r1, r1, #1
	strb r1, [r5]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #31
	bls _08059AB0
	mov r1, #0
	strb r1, [r5]
_08059AB0:
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08059AB8:
	.4byte 0x03000452
_08059ABC:
	.4byte 0x03000455
_08059AC0:
	.4byte 0x03001CB0
_08059AC4:
	.4byte 0x03001C90
_08059AC8:
	.4byte gUnknown_08661378
_08059ACC:
	.4byte 0x03000454
	THUMB_FUNC_END sub_08059968

	THUMB_FUNC_START sub_08059AD0
sub_08059AD0: @ 0x08059AD0
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r5, r4, #0
	ldr r1, _08059B68  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08059AFC
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _08059B0C
_08059AFC:
	ldr r1, _08059B6C  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08059B5E
_08059B0C:
	ldr r0, _08059B70  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _08059B50
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #9
	bgt _08059B50
	ldr r1, _08059B74  @ =0x0300042C
	mov r0, #0
	strh r0, [r1]
	ldr r0, _08059B78  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _08059B7C  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08059B50:
	add r0, r5, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r4, #0
	bl _call_via_r1
_08059B5E:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08059B68:
	.4byte 0x030019AC
_08059B6C:
	.4byte gUnknown_03001C78
_08059B70:
	.4byte gUnknown_03001A1C
_08059B74:
	.4byte 0x0300042C
_08059B78:
	.4byte 0x0300042F
_08059B7C:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_08059AD0

	THUMB_FUNC_START sub_08059B80
sub_08059B80: @ 0x08059B80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r6, r0, #0
	mov r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #1
	beq _08059B94
	b _08059CC0
_08059B94:
	add r4, r6, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _08059BD0  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r6, #0
	bl sub_0805A304
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _08059BB8
	b _08059F10
_08059BB8:
	ldr r0, _08059BD4  @ =0x0300042E
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _08059BD8
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	ble _08059BD8
	mov r3, r8
	strb r5, [r3]
	b _08059D12
_08059BD0:
	.4byte 0x03001940
_08059BD4:
	.4byte 0x0300042E
_08059BD8:
	ldr r2, _08059BF8  @ =0x03000448
	ldr r0, _08059BFC  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08059C04
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _08059C00  @ =0x0300044C
	ldr r0, [r0]
	bl sub_08040FC0
	b _08059C24
_08059BF8:
	.4byte 0x03000448
_08059BFC:
	.4byte 0x030019AC
_08059C00:
	.4byte 0x0300044C
_08059C04:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08059C24
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08059C54  @ =0x03000440
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08059C58  @ =0x03000442
	ldr r0, _08059C5C  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_08059C24:
	ldr r4, _08059C58  @ =0x03000442
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _08059C8A
	ldr r3, _08059C54  @ =0x03000440
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	ldr r0, _08059C60  @ =0x0300042E
	ldrb r0, [r0]
	cmp r0, #1
	bne _08059C68
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08059C4E
	mov r0, #0
	strh r0, [r3]
_08059C4E:
	ldr r2, _08059C64  @ =gUnknown_0854301C
	b _08059C7A
	.byte 0x00
	.byte 0x00
_08059C54:
	.4byte 0x03000440
_08059C58:
	.4byte 0x03000442
_08059C5C:
	.4byte gUnknown_0851F440
_08059C60:
	.4byte 0x0300042E
_08059C64:
	.4byte gUnknown_0854301C
_08059C68:
	cmp r0, #2
	bne _08059C8A
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _08059C78
	mov r0, #0
	strh r0, [r3]
_08059C78:
	ldr r2, _08059CB4  @ =gUnknown_0851F440
_08059C7A:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_08059C8A:
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08059C96
	b _08059F10
_08059C96:
	ldrh r4, [r7]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08059CB8  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _08059CBC  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	bl sub_0804A644
	strh r4, [r7]
	b _08059F10
	.byte 0x00
	.byte 0x00
_08059CB4:
	.4byte gUnknown_0851F440
_08059CB8:
	.4byte 0x0300042F
_08059CBC:
	.4byte gUnknown_08660EA8
_08059CC0:
	cmp r5, #2
	beq _08059CC6
	b _08059E58
_08059CC6:
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08059CFA
	add r0, r6, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #249
	bgt _08059CFA
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r6, #12]
	strb r1, [r6, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08059CFA:
	ldr r2, _08059D3C  @ =0x0300042E
	ldrb r1, [r2]
	cmp r1, #0
	bne _08059D50
	add r0, r6, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #249
	ble _08059D50
	mov r0, #1
	strb r0, [r2]
_08059D12:
	ldr r5, _08059D40  @ =0x03000448
	ldr r0, _08059D44  @ =0xFFFFEC00
	str r0, [r5]
	ldr r0, _08059D48  @ =0x03000440
	strh r1, [r0]
	ldr r4, _08059D4C  @ =0x0300044C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	ldr r1, [r5]
	bl sub_08040FC0
	b _08059F10
_08059D3C:
	.4byte 0x0300042E
_08059D40:
	.4byte 0x03000448
_08059D44:
	.4byte 0xFFFFEC00
_08059D48:
	.4byte 0x03000440
_08059D4C:
	.4byte 0x0300044C
_08059D50:
	ldr r2, _08059D70  @ =0x03000448
	ldr r0, _08059D74  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08059D7C
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _08059D78  @ =0x0300044C
	ldr r0, [r0]
	bl sub_08040FC0
	b _08059D9C
_08059D70:
	.4byte 0x03000448
_08059D74:
	.4byte 0x030019AC
_08059D78:
	.4byte 0x0300044C
_08059D7C:
	ldr r1, _08059DCC  @ =0x0300042E
	ldrb r0, [r1]
	cmp r0, #1
	bne _08059D9C
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08059DD0  @ =0x03000440
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08059DD4  @ =0x03000442
	ldr r0, _08059DD8  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_08059D9C:
	ldr r4, _08059DD4  @ =0x03000442
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	ldr r1, _08059DCC  @ =0x0300042E
	mov r8, r1
	cmp r0, #0
	bgt _08059E04
	ldr r3, _08059DD0  @ =0x03000440
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrb r1, [r1]
	cmp r1, #1
	bne _08059DE0
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08059DC8
	mov r0, #0
	strh r0, [r3]
_08059DC8:
	ldr r2, _08059DDC  @ =gUnknown_0854301C
	b _08059DF4
_08059DCC:
	.4byte 0x0300042E
_08059DD0:
	.4byte 0x03000440
_08059DD4:
	.4byte 0x03000442
_08059DD8:
	.4byte gUnknown_0851F440
_08059DDC:
	.4byte gUnknown_0854301C
_08059DE0:
	cmp r1, #2
	beq _08059DE6
	b _08059F10
_08059DE6:
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _08059DF2
	mov r0, #0
	strh r0, [r3]
_08059DF2:
	ldr r2, _08059E44  @ =gUnknown_0851F440
_08059DF4:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_08059E04:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	beq _08059E0E
	b _08059F10
_08059E0E:
	ldr r2, _08059E48  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08059E4C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _08059E50  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	bl sub_0804A644
	ldr r0, _08059E54  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	b _08059F10
	.byte 0x00
	.byte 0x00
_08059E44:
	.4byte gUnknown_0851F440
_08059E48:
	.4byte gUnknown_03001A1C
_08059E4C:
	.4byte 0x0300042F
_08059E50:
	.4byte gUnknown_08660EA8
_08059E54:
	.4byte 0x03001940
_08059E58:
	ldr r2, [r6, #32]
	ldr r1, [r6, #100]
	mov r3, #6
	ldrsh r0, [r1, r3]
	mov r3, #4
	ldrsh r1, [r1, r3]
	sub r0, r0, r1
	asr r0, r0, #1
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r7, r2, #16
	ldr r0, _08059ED4  @ =0x030019AC
	ldr r0, [r0]
	ldr r2, [r0, #32]
	ldr r1, [r0, #100]
	mov r3, #6
	ldrsh r0, [r1, r3]
	mov r3, #4
	ldrsh r1, [r1, r3]
	sub r0, r0, r1
	asr r0, r0, #1
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r5, r2, #16
	add r0, r6, #0
	bl sub_0805A304
	lsl r0, r0, #24
	cmp r0, #0
	bne _08059F10
	ldr r2, _08059ED8  @ =0x03000435
	ldrb r1, [r2]
	cmp r1, #0
	beq _08059EA2
	mov r0, #1
	eor r0, r0, r1
	strb r0, [r2]
_08059EA2:
	ldr r3, _08059EDC  @ =0x03000428
	ldrh r4, [r3]
	cmp r4, #0
	bne _08059F10
	lsl r1, r7, #16
	asr r1, r1, #16
	lsl r0, r5, #16
	asr r0, r0, #16
	sub r2, r1, r0
	ldr r0, _08059EE0  @ =0xFFFFEFFF
	add r1, r2, r0
	ldr r0, _08059EE4  @ =0x00000FFE
	cmp r1, r0
	bhi _08059EF0
	mov r0, #180
	strh r0, [r3]
	ldr r0, _08059EE8  @ =0x0300042A
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08059EEC  @ =0x03000433
	strb r1, [r0]
	add r0, r6, #0
	bl sub_0805A594
	b _08059F10
_08059ED4:
	.4byte 0x030019AC
_08059ED8:
	.4byte 0x03000435
_08059EDC:
	.4byte 0x03000428
_08059EE0:
	.4byte 0xFFFFEFFF
_08059EE4:
	.4byte 0x00000FFE
_08059EE8:
	.4byte 0x0300042A
_08059EEC:
	.4byte 0x03000433
_08059EF0:
	ldr r0, _08059F1C  @ =0xFFFFF000
	cmp r2, r0
	bge _08059F10
	ldr r0, _08059F20  @ =0xFFFFE000
	cmp r2, r0
	ble _08059F10
	mov r0, #180
	strh r0, [r3]
	ldr r1, _08059F24  @ =0x0300042A
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08059F28  @ =0x03000433
	strb r4, [r0]
	add r0, r6, #0
	bl sub_0805A594
_08059F10:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08059F1C:
	.4byte 0xFFFFF000
_08059F20:
	.4byte 0xFFFFE000
_08059F24:
	.4byte 0x0300042A
_08059F28:
	.4byte 0x03000433
	THUMB_FUNC_END sub_08059B80

	THUMB_FUNC_START sub_08059F2C
sub_08059F2C: @ 0x08059F2C
	push {r4-r7,lr}
	add r4, r0, #0
	ldr r2, [r4, #32]
	ldr r1, [r4, #100]
	mov r3, #6
	ldrsh r0, [r1, r3]
	mov r3, #4
	ldrsh r1, [r1, r3]
	sub r0, r0, r1
	asr r0, r0, #1
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r7, r2, #16
	ldr r0, _08059FA0  @ =0x030019AC
	ldr r0, [r0]
	ldr r2, [r0, #32]
	ldr r1, [r0, #100]
	mov r3, #6
	ldrsh r0, [r1, r3]
	mov r3, #4
	ldrsh r1, [r1, r3]
	sub r0, r0, r1
	asr r0, r0, #1
	add r2, r2, r0
	lsl r2, r2, #16
	lsr r6, r2, #16
	add r0, r4, #0
	bl sub_0805A304
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805A014
	ldr r2, _08059FA4  @ =0x03000435
	ldrb r1, [r2]
	cmp r1, #0
	beq _08059F7A
	mov r0, #1
	eor r0, r0, r1
	strb r0, [r2]
_08059F7A:
	ldr r3, _08059FA8  @ =0x03000428
	ldrh r0, [r3]
	cmp r0, #0
	bne _0805A014
	ldr r0, _08059FAC  @ =0x0300042C
	ldrh r5, [r0]
	cmp r5, #0
	beq _08059FB8
	mov r0, #60
	strh r0, [r3]
	ldr r0, _08059FB0  @ =0x0300042A
	mov r2, #1
	strb r2, [r0]
	ldr r1, _08059FB4  @ =0x03000433
	ldrb r0, [r1]
	eor r0, r0, r2
	strb r0, [r1]
	b _08059FDA
	.byte 0x00
	.byte 0x00
_08059FA0:
	.4byte 0x030019AC
_08059FA4:
	.4byte 0x03000435
_08059FA8:
	.4byte 0x03000428
_08059FAC:
	.4byte 0x0300042C
_08059FB0:
	.4byte 0x0300042A
_08059FB4:
	.4byte 0x03000433
_08059FB8:
	lsl r1, r7, #16
	asr r1, r1, #16
	lsl r0, r6, #16
	asr r0, r0, #16
	sub r2, r1, r0
	ldr r0, _08059FE4  @ =0xFFFFEFFF
	add r1, r2, r0
	ldr r0, _08059FE8  @ =0x00000FFE
	cmp r1, r0
	bhi _08059FF4
	mov r0, #180
	strh r0, [r3]
	ldr r0, _08059FEC  @ =0x0300042A
	mov r1, #1
	strb r1, [r0]
	ldr r0, _08059FF0  @ =0x03000433
	strb r1, [r0]
_08059FDA:
	add r0, r4, #0
	bl sub_0805A594
	b _0805A014
	.byte 0x00
	.byte 0x00
_08059FE4:
	.4byte 0xFFFFEFFF
_08059FE8:
	.4byte 0x00000FFE
_08059FEC:
	.4byte 0x0300042A
_08059FF0:
	.4byte 0x03000433
_08059FF4:
	ldr r0, _0805A01C  @ =0xFFFFF000
	cmp r2, r0
	bge _0805A014
	ldr r0, _0805A020  @ =0xFFFFE000
	cmp r2, r0
	ble _0805A014
	mov r0, #180
	strh r0, [r3]
	ldr r1, _0805A024  @ =0x0300042A
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0805A028  @ =0x03000433
	strb r5, [r0]
	add r0, r4, #0
	bl sub_0805A594
_0805A014:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805A01C:
	.4byte 0xFFFFF000
_0805A020:
	.4byte 0xFFFFE000
_0805A024:
	.4byte 0x0300042A
_0805A028:
	.4byte 0x03000433
	THUMB_FUNC_END sub_08059F2C

	THUMB_FUNC_START sub_0805A02C
sub_0805A02C: @ 0x0805A02C
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	bl sub_0805A304
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0805A0CE
	add r6, r5, #0
	add r6, r6, #84
	mov r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #6
	bne _0805A0A6
	ldr r0, _0805A07C  @ =0x03000433
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A084
	ldr r0, _0805A080  @ =0x03000436
	ldrb r0, [r0]
	cmp r0, #4
	beq _0805A084
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #255
	mov r1, #160
	mov r2, #0
	bl sub_08038DF4
	b _0805A0CE
	.byte 0x00
	.byte 0x00
_0805A07C:
	.4byte 0x03000433
_0805A080:
	.4byte 0x03000436
_0805A084:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #44
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #160
	mov r2, #1
	bl sub_08038DF4
	b _0805A0CE
_0805A0A6:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805A0CE
	ldrh r4, [r6]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0805A0D8  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A0DC  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #4
	bl sub_0804A644
	strh r4, [r6]
_0805A0CE:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805A0D8:
	.4byte 0x0300042F
_0805A0DC:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_0805A02C

	THUMB_FUNC_START sub_0805A0E0
sub_0805A0E0: @ 0x0805A0E0
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	bl sub_0805A304
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0805A174
	add r6, r5, #0
	add r6, r6, #84
	mov r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #6
	bne _0805A14C
	ldr r0, _0805A128  @ =0x03000444
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0805A12C
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #255
	mov r1, #160
	mov r2, #0
	bl sub_08038DF4
	b _0805A174
_0805A128:
	.4byte 0x03000444
_0805A12C:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #59
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #255
	mov r1, #160
	mov r2, #1
	bl sub_08038DF4
	b _0805A174
_0805A14C:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805A174
	ldrh r4, [r6]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0805A17C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A180  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #4
	bl sub_0804A644
	strh r4, [r6]
_0805A174:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_0805A17C:
	.4byte 0x0300042F
_0805A180:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_0805A0E0

	THUMB_FUNC_START sub_0805A184
sub_0805A184: @ 0x0805A184
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #14
	bne _0805A1EC
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #9
	bne _0805A1B4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #95
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805A1B4:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0805A1C0
	b _0805A2F2
_0805A1C0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805A1E0  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A1E4  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _0805A1E8  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805A2F2
_0805A1E0:
	.4byte 0x0300042F
_0805A1E4:
	.4byte gUnknown_08660EA8
_0805A1E8:
	.4byte 0xFFFFE000
_0805A1EC:
	cmp r0, #15
	bne _0805A254
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0805A1FC
	b _0805A2F2
_0805A1FC:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #148
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r4, #32]
	mov r0, #200
	lsl r0, r0, #7
	cmp r1, r0
	ble _0805A238
	ldr r0, _0805A230  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A234  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	mov r2, #0
	bl sub_0804A644
	b _0805A2F2
_0805A230:
	.4byte 0x0300042F
_0805A234:
	.4byte gUnknown_08660EA8
_0805A238:
	ldr r0, _0805A24C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A250  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	mov r2, #1
	bl sub_0804A644
	b _0805A2F2
_0805A24C:
	.4byte 0x0300042F
_0805A250:
	.4byte gUnknown_08660EA8
_0805A254:
	cmp r0, #16
	bne _0805A294
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805A2F2
	ldr r1, _0805A288  @ =0x03001C40
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805A28C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A290  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	b _0805A2F2
_0805A288:
	.4byte 0x03001C40
_0805A28C:
	.4byte 0x0300042F
_0805A290:
	.4byte gUnknown_08660EA8
_0805A294:
	ldr r0, _0805A2C0  @ =0x03000434
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805A2CC
	ldr r0, [r4, #32]
	asr r0, r0, #8
	mov r1, #63
	neg r1, r1
	cmp r0, r1
	bge _0805A2F2
	ldr r0, _0805A2C4  @ =0xFFFFC000
	str r0, [r4, #32]
	ldr r2, _0805A2C8  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #18
	bl sub_08071E14
	b _0805A2F2
_0805A2C0:
	.4byte 0x03000434
_0805A2C4:
	.4byte 0xFFFFC000
_0805A2C8:
	.4byte gUnknown_03001938
_0805A2CC:
	ldr r0, [r4, #32]
	asr r0, r0, #8
	ldr r1, _0805A2FC  @ =gUnknown_03001720
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	ble _0805A2F2
	add r0, r1, #1
	lsl r0, r0, #8
	str r0, [r4, #32]
	ldr r2, _0805A300  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #18
	bl sub_08071E14
_0805A2F2:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805A2FC:
	.4byte gUnknown_03001720
_0805A300:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_0805A184

	THUMB_FUNC_START sub_0805A304
sub_0805A304: @ 0x0805A304
	push {r4,r5,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r0, _0805A360  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _0805A370
	ldr r0, _0805A364  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A368  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #18
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _0805A36C  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0805A356
	b _0805A550
_0805A356:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _0805A550
_0805A360:
	.4byte 0x030019AC
_0805A364:
	.4byte 0x0300042F
_0805A368:
	.4byte gUnknown_08660EA8
_0805A36C:
	.4byte gUnknown_03001A1C
_0805A370:
	ldr r1, [r5, #76]
	cmp r1, #0
	bge _0805A378
	b _0805A586
_0805A378:
	ldr r2, _0805A410  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0805A444
	add r0, r4, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805A398
	b _0805A578
_0805A398:
	ldrh r0, [r4, #4]
	sub r0, r0, #25
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #53
	bhi _0805A3A6
	b _0805A578
_0805A3A6:
	add r0, r5, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805A3B6
	b _0805A578
_0805A3B6:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0805A414  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _0805A420
	ldr r0, _0805A418  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A41C  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #1
	bl sub_0804A644
	mov r0, #0
	bl sub_0805A698
	b _0805A542
_0805A410:
	.4byte 0x03001940
_0805A414:
	.4byte gUnknown_03001A1C
_0805A418:
	.4byte 0x0300042F
_0805A41C:
	.4byte gUnknown_08660EA8
_0805A420:
	ldr r0, _0805A43C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A440  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_0805A698
	b _0805A542
	.byte 0x00
	.byte 0x00
_0805A43C:
	.4byte 0x0300042F
_0805A440:
	.4byte gUnknown_08660EA8
_0805A444:
	sub r0, r0, #158
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bls _0805A450
	b _0805A578
_0805A450:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0805A470
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805A470
	b _0805A578
_0805A470:
	ldr r1, _0805A4C8  @ =0x03000455
	ldrb r0, [r1]
	cmp r0, #2
	bls _0805A47C
	sub r0, r0, #1
	strb r0, [r1]
_0805A47C:
	ldr r1, _0805A4CC  @ =0x03000450
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	add r4, r5, #0
	add r4, r4, #52
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	ldr r2, _0805A4D0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #74
	mov r2, #0
	bl sub_080410B4
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0805A4DC
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805A4D4  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A4D8  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #10
	bl sub_0804A644
	b _0805A542
_0805A4C8:
	.4byte 0x03000455
_0805A4CC:
	.4byte 0x03000450
_0805A4D0:
	.4byte gUnknown_03001A1C
_0805A4D4:
	.4byte 0x0300042F
_0805A4D8:
	.4byte gUnknown_08660EA8
_0805A4DC:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r4, #1
	add r2, r4, #0
	eor r2, r2, r0
	ldr r0, _0805A554  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A558  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #12
	bl sub_0804A644
	ldr r0, [r5, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, [r5, #36]
	ldr r1, _0805A55C  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r5, #36]
	mov r0, #18
	bl sub_08071E14
	mov r0, #61
	bl sub_08071E14
	mov r0, #62
	bl sub_08071E14
	ldr r2, _0805A560  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _0805A564  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0805A568  @ =gUnknown_03000B6C
	ldr r1, [r2]
	ldr r0, _0805A56C  @ =0x00001388
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r1, r1, #16
	ldr r2, [r5, #36]
	asr r2, r2, #8
	bl sub_08031A64
	ldr r0, _0805A570  @ =0x03000434
	strb r4, [r0]
_0805A542:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _0805A574  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
_0805A550:
	mov r0, #1
	b _0805A588
_0805A554:
	.4byte 0x0300042F
_0805A558:
	.4byte gUnknown_08660EA8
_0805A55C:
	.4byte 0xFFFFE000
_0805A560:
	.4byte gUnknown_030019A0
_0805A564:
	.4byte 0x20040000
_0805A568:
	.4byte gUnknown_03000B6C
_0805A56C:
	.4byte 0x00001388
_0805A570:
	.4byte 0x03000434
_0805A574:
	.4byte 0xFFFFFF00
_0805A578:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _0805A590  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
_0805A586:
	mov r0, #0
_0805A588:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
_0805A590:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805A304

	THUMB_FUNC_START sub_0805A594
sub_0805A594: @ 0x0805A594
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0805A5F8  @ =0x03000437
	ldr r1, _0805A5FC  @ =0x03000450
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0805A5AE
	ldr r0, _0805A600  @ =0x0300042C
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805A672
_0805A5AE:
	ldr r3, _0805A604  @ =0x0300042A
	ldrb r0, [r3]
	cmp r0, #0
	beq _0805A672
	ldr r0, _0805A608  @ =0x0300043C
	mov r2, #0
	ldrsh r1, [r0, r2]
	lsl r1, r1, #2
	ldr r0, _0805A60C  @ =gUnknown_08660E8C
	add r1, r1, r0
	ldr r2, _0805A610  @ =0x03000431
	ldrb r0, [r1, #1]
	strb r0, [r2]
	ldr r0, _0805A614  @ =0x03000436
	ldrb r1, [r1]
	strb r1, [r0]
	mov r0, #0
	strb r0, [r3]
	ldr r0, _0805A618  @ =0x03000433
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A624
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #4
	beq _0805A624
	ldr r0, _0805A61C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A620  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
	b _0805A636
	.byte 0x00
	.byte 0x00
_0805A5F8:
	.4byte 0x03000437
_0805A5FC:
	.4byte 0x03000450
_0805A600:
	.4byte 0x0300042C
_0805A604:
	.4byte 0x0300042A
_0805A608:
	.4byte 0x0300043C
_0805A60C:
	.4byte gUnknown_08660E8C
_0805A610:
	.4byte 0x03000431
_0805A614:
	.4byte 0x03000436
_0805A618:
	.4byte 0x03000433
_0805A61C:
	.4byte 0x0300042F
_0805A620:
	.4byte gUnknown_08660EA8
_0805A624:
	ldr r0, _0805A658  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A65C  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl sub_0804A644
_0805A636:
	mov r0, #0
	strb r0, [r4, #10]
	ldr r1, _0805A660  @ =0x0300043E
	ldr r0, _0805A664  @ =0x0300043C
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _0805A668  @ =0x03000450
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _0805A66C
	add r0, r2, #1
	b _0805A66E
	.byte 0x00
	.byte 0x00
_0805A658:
	.4byte 0x0300042F
_0805A65C:
	.4byte gUnknown_08660EA8
_0805A660:
	.4byte 0x0300043E
_0805A664:
	.4byte 0x0300043C
_0805A668:
	.4byte 0x03000450
_0805A66C:
	mov r0, #0
_0805A66E:
	strh r0, [r3]
	b _0805A688
_0805A672:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805A690  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805A694  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0805A688:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805A690:
	.4byte 0x0300042F
_0805A694:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_0805A594

	THUMB_FUNC_START sub_0805A698
sub_0805A698: @ 0x0805A698
	push {r4,r5,lr}
	sub sp, sp, #80
	lsl r0, r0, #16
	cmp r0, #0
	bne _0805A6F4
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _0805A6EC  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _0805A6F0  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805A6E6
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805A6E6:
	ldr r2, [r4]
	b _0805A738
	.byte 0x00
	.byte 0x00
_0805A6EC:
	.4byte 0x00100800
_0805A6F0:
	.4byte 0x030019AC
_0805A6F4:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	ldr r2, _0805A750  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _0805A754  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _0805A758  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805A736
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805A736:
	ldr r2, [r5]
_0805A738:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _0805A75C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805A750:
	.4byte 0x000001E9
_0805A754:
	.4byte 0x00200800
_0805A758:
	.4byte 0x030019AC
_0805A75C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805A698

	THUMB_FUNC_START sub_0805A760
sub_0805A760: @ 0x0805A760
	push {r4-r6,lr}
	sub sp, sp, #80
	ldr r6, _0805A7D8  @ =0x03000428
	mov r1, #180
	strh r1, [r6]
	lsl r0, r0, #16
	cmp r0, #0
	bne _0805A7E8
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #3
	strh r0, [r4, #2]
	ldr r0, _0805A7DC  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _0805A7E0  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	mov r2, #3
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	mov r0, #240
	strh r0, [r6]
	ldr r0, [r4]
	add r3, r0, #0
	add r3, r3, #52
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0805A7D2
	ldr r2, _0805A7E4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bgt _0805A852
_0805A7D2:
	ldr r1, [r4]
	b _0805A84C
	.byte 0x00
	.byte 0x00
_0805A7D8:
	.4byte 0x03000428
_0805A7DC:
	.4byte 0x00100800
_0805A7E0:
	.4byte 0x030019AC
_0805A7E4:
	.4byte gUnknown_03001A1C
_0805A7E8:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #4
	strh r0, [r4, #2]
	ldr r0, _0805A86C  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _0805A870  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #4
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r0, [r5]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	mov r0, #240
	strh r0, [r6]
	ldr r0, [r5]
	add r3, r0, #0
	add r3, r3, #52
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0805A84A
	ldr r2, _0805A874  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bgt _0805A852
_0805A84A:
	ldr r1, [r5]
_0805A84C:
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805A852:
	ldr r0, _0805A870  @ =0x030019AC
	ldr r2, [r0]
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _0805A878  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4-r6}
	pop {r0}
	bx r0
_0805A86C:
	.4byte 0x00200800
_0805A870:
	.4byte 0x030019AC
_0805A874:
	.4byte gUnknown_03001A1C
_0805A878:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805A760

	THUMB_FUNC_START sub_0805A87C
sub_0805A87C: @ 0x0805A87C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #28]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0805A8B8  @ =0x0805AA51
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0805A8BC  @ =0x0805B52D
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #1
	strb r0, [r1]
	strh r2, [r7]
	ldr r2, _0805A8C0  @ =0x0300042C
	ldrh r1, [r2]
	cmp r1, #0
	beq _0805A8C4
	mov r0, #9
	strh r0, [r7, #4]
	sub r0, r1, #1
	strh r0, [r2]
	b _0805A8FC
_0805A8B8:
	.4byte sub_0805AA50
_0805A8BC:
	.4byte sub_0805B52C
_0805A8C0:
	.4byte 0x0300042C
_0805A8C4:
	ldr r0, _0805A8E0  @ =gUnknown_03001C78
	ldr r0, [r0]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	beq _0805A8F4
	cmp r0, #2
	bgt _0805A8E4
	cmp r0, #1
	beq _0805A8F8
	b _0805A8FC
	.byte 0x00
	.byte 0x00
_0805A8E0:
	.4byte gUnknown_03001C78
_0805A8E4:
	cmp r0, #3
	beq _0805A8F0
	cmp r0, #4
	bne _0805A8FC
	mov r0, #6
	b _0805A8FA
_0805A8F0:
	mov r0, #7
	b _0805A8FA
_0805A8F4:
	mov r0, #8
	b _0805A8FA
_0805A8F8:
	mov r0, #9
_0805A8FA:
	strh r0, [r7, #4]
_0805A8FC:
	mov r1, #0
	mov r8, r1
	mov r0, #18
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0805A9DC  @ =gUnknown_08661EB8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0805A9E0  @ =0x03000480
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r9
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r9
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0805A9E4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r8
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #54
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _0805A9E8  @ =0x03000430
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r1, _0805A9EC  @ =0x03000458
	mov r0, r8
	strb r0, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	ldr r0, _0805A9F0  @ =0x03000433
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #0
	beq _0805A9F8
	ldr r0, _0805A9F4  @ =0x03000436
	ldrb r0, [r0]
	cmp r0, #4
	beq _0805A9F8
	mov r1, r8
	strb r1, [r5, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _0805AA0C
_0805A9DC:
	.4byte gUnknown_08661EB8
_0805A9E0:
	.4byte 0x03000480
_0805A9E4:
	.4byte 0xFFFFFE00
_0805A9E8:
	.4byte 0x03000430
_0805A9EC:
	.4byte 0x03000458
_0805A9F0:
	.4byte 0x03000433
_0805A9F4:
	.4byte 0x03000436
_0805A9F8:
	mov r1, #1
	strb r1, [r5, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
_0805AA0C:
	strb r0, [r3]
	mov r0, #0
	str r0, [r5, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r5, #12]
	strb r0, [r5, #19]
	strb r0, [r5, #17]
	ldr r1, [r2]
	strb r0, [r5, #18]
	strb r0, [r1, #18]
	str r0, [r5, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r1, _0805AA4C  @ =0x03000437
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805AA4C:
	.4byte 0x03000437
	THUMB_FUNC_END sub_0805A87C

	THUMB_FUNC_START sub_0805AA50
sub_0805AA50: @ 0x0805AA50
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _0805AAB0  @ =gUnknown_03001C78
	ldr r1, [r1]
	mov r2, #4
	ldrsh r1, [r1, r2]
	cmp r1, #12
	beq _0805AA76
	cmp r1, #20
	beq _0805AA76
	cmp r1, #12
	bne _0805AA80
_0805AA76:
	add r2, r4, #0
	add r2, r2, #84
	mov r1, #150
	lsl r1, r1, #2
	strh r1, [r2]
_0805AA80:
	ldr r1, _0805AAB4  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _0805AABC
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0805AAB8  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r5, #0
	mov r1, #0
	bl sub_0804A580
	b _0805AAC2
	.byte 0x00
	.byte 0x00
_0805AAB0:
	.4byte gUnknown_03001C78
_0805AAB4:
	.4byte gUnknown_03001A1C
_0805AAB8:
	.4byte 0x00007FFF
_0805AABC:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0805AAC2:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805AA50

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805AAF0
sub_0805AAF0: @ 0x0805AAF0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0805AB28  @ =0x00000257
	cmp r1, r0
	ble _0805AB38
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805AB2C  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AB30  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805AB34  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805AB7C
_0805AB28:
	.4byte 0x00000257
_0805AB2C:
	.4byte 0x03000480
_0805AB30:
	.4byte gUnknown_08661EB8
_0805AB34:
	.4byte 0xFFFFF800
_0805AB38:
	cmp r1, #30
	ble _0805AB44
	ldr r0, [r4, #92]
	ldr r1, _0805AB84  @ =0xFFEFFFFF
	and r0, r0, r1
	str r0, [r4, #92]
_0805AB44:
	add r0, r4, #0
	bl sub_0805AD54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AB7C
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805AB7C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805AB88  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AB8C  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #11
	bl sub_0804A644
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r4, #92]
_0805AB7C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805AB84:
	.4byte 0xFFEFFFFF
_0805AB88:
	.4byte 0x03000480
_0805AB8C:
	.4byte gUnknown_08661EB8
	THUMB_FUNC_END sub_0805AAF0

	THUMB_FUNC_START sub_0805AB90
sub_0805AB90: @ 0x0805AB90
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805AD54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AC06
	add r0, r4, #0
	bl sub_0805B038
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AC06
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0805AC10  @ =0x00000257
	cmp r1, r0
	ble _0805ABDE
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805AC14  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AC18  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805AC1C  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
_0805ABDE:
	ldr r0, [r4, #32]
	asr r1, r0, #8
	mov r0, #16
	neg r0, r0
	cmp r1, r0
	blt _0805ABF4
	ldr r0, _0805AC20  @ =gUnknown_03001720
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0805AC06
_0805ABF4:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r1, _0805AC24  @ =0x03000437
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0805AC06:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805AC10:
	.4byte 0x00000257
_0805AC14:
	.4byte 0x03000480
_0805AC18:
	.4byte gUnknown_08661EB8
_0805AC1C:
	.4byte 0xFFFFF800
_0805AC20:
	.4byte gUnknown_03001720
_0805AC24:
	.4byte 0x03000437
	THUMB_FUNC_END sub_0805AB90

	THUMB_FUNC_START sub_0805AC28
sub_0805AC28: @ 0x0805AC28
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805AD54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AC9E
	add r0, r4, #0
	bl sub_0805B09C
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AC9E
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0805ACA8  @ =0x00000257
	cmp r1, r0
	ble _0805AC76
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805ACAC  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805ACB0  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805ACB4  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
_0805AC76:
	ldr r0, [r4, #32]
	asr r1, r0, #8
	mov r0, #16
	neg r0, r0
	cmp r1, r0
	blt _0805AC8C
	ldr r0, _0805ACB8  @ =gUnknown_03001720
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0805AC9E
_0805AC8C:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r1, _0805ACBC  @ =0x03000437
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0805AC9E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805ACA8:
	.4byte 0x00000257
_0805ACAC:
	.4byte 0x03000480
_0805ACB0:
	.4byte gUnknown_08661EB8
_0805ACB4:
	.4byte 0xFFFFF800
_0805ACB8:
	.4byte gUnknown_03001720
_0805ACBC:
	.4byte 0x03000437
	THUMB_FUNC_END sub_0805AC28

	THUMB_FUNC_START sub_0805ACC0
sub_0805ACC0: @ 0x0805ACC0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805AD54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AD32
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0805AD3C  @ =0x00000257
	cmp r1, r0
	ble _0805AD02
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805AD40  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AD44  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805AD48  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
_0805AD02:
	add r0, r4, #0
	bl sub_0805B09C
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805AD32
	ldr r0, [r4, #36]
	asr r1, r0, #8
	ldr r0, _0805AD4C  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	bge _0805AD20
	cmp r1, #0
	bge _0805AD32
_0805AD20:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r1, _0805AD50  @ =0x03000437
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0805AD32:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805AD3C:
	.4byte 0x00000257
_0805AD40:
	.4byte 0x03000480
_0805AD44:
	.4byte gUnknown_08661EB8
_0805AD48:
	.4byte 0xFFFFF800
_0805AD4C:
	.4byte gUnknown_030012E4
_0805AD50:
	.4byte 0x03000437
	THUMB_FUNC_END sub_0805ACC0

	THUMB_FUNC_START sub_0805AD54
sub_0805AD54: @ 0x0805AD54
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r1, [r4, #76]
	cmp r1, #0
	bne _0805ADEC
	ldr r0, _0805ADD0  @ =0x030019AC
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805AD74
	b _0805AF14
_0805AD74:
	ldrh r0, [r1, #4]
	mov r3, #4
	ldrsh r2, [r1, r3]
	cmp r2, #24
	ble _0805AD92
	sub r0, r0, #79
	lsl r0, r0, #16
	mov r1, #204
	lsl r1, r1, #17
	cmp r0, r1
	bls _0805AD92
	ldr r0, _0805ADD4  @ =0x000001E9
	cmp r2, r0
	bgt _0805AD92
	b _0805AF14
_0805AD92:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805ADD8  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805ADDC  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	bl sub_0804A644
	ldr r1, [r4, #32]
	ldr r2, _0805ADE0  @ =0xFFFFF800
	add r1, r1, r2
	str r1, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r2
	str r0, [r4, #36]
	asr r1, r1, #8
	add r1, r1, #8
	ldr r0, _0805ADD0  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	cmp r1, r0
	ble _0805ADE4
	mov r0, #0
	bl sub_0805A760
	b _0805AF04
_0805ADD0:
	.4byte 0x030019AC
_0805ADD4:
	.4byte 0x000001E9
_0805ADD8:
	.4byte 0x03000480
_0805ADDC:
	.4byte gUnknown_08661EB8
_0805ADE0:
	.4byte 0xFFFFF800
_0805ADE4:
	mov r0, #1
	bl sub_0805A760
	b _0805AF04
_0805ADEC:
	cmp r1, #0
	bgt _0805ADF2
	b _0805AF1A
_0805ADF2:
	ldr r2, _0805AE7C  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r5, r0, r1
	ldr r0, _0805AE80  @ =0x030019AC
	ldr r2, [r0]
	ldr r3, [r2, #76]
	add r6, r0, #0
	cmp r3, #0
	ble _0805AEA4
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r3, r0
	bne _0805AEA4
	add r0, r2, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0805AE9C
	ldrh r0, [r2, #4]
	mov r1, #4
	ldrsh r2, [r2, r1]
	cmp r2, #24
	ble _0805AE3C
	sub r0, r0, #79
	lsl r0, r0, #16
	mov r1, #204
	lsl r1, r1, #17
	cmp r0, r1
	bls _0805AE3C
	ldr r0, _0805AE84  @ =0x000001E9
	cmp r2, r0
	ble _0805AE9C
_0805AE3C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805AE88  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AE8C  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	bl sub_0804A644
	ldr r1, [r4, #32]
	ldr r2, _0805AE90  @ =0xFFFFF800
	add r1, r1, r2
	str r1, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r2
	str r0, [r4, #36]
	asr r1, r1, #8
	add r1, r1, #8
	ldr r0, _0805AE80  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	cmp r1, r0
	ble _0805AE94
	mov r0, #0
	bl sub_0805A760
	b _0805AEFE
	.byte 0x00
	.byte 0x00
_0805AE7C:
	.4byte 0x03001940
_0805AE80:
	.4byte 0x030019AC
_0805AE84:
	.4byte 0x000001E9
_0805AE88:
	.4byte 0x03000480
_0805AE8C:
	.4byte gUnknown_08661EB8
_0805AE90:
	.4byte 0xFFFFF800
_0805AE94:
	mov r0, #1
	bl sub_0805A760
	b _0805AEFE
_0805AE9C:
	ldr r1, [r6]
	mov r0, #1
	neg r0, r0
	str r0, [r1, #76]
_0805AEA4:
	ldrh r0, [r5]
	sub r0, r0, #158
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805AF14
	ldrh r1, [r5, #4]
	sub r0, r1, #4
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bls _0805AEDA
	lsl r1, r1, #16
	lsr r0, r1, #16
	cmp r0, #1
	bls _0805AECE
	asr r0, r1, #16
	cmp r0, #6
	beq _0805AECE
	cmp r0, #7
	bne _0805AF14
_0805AECE:
	add r0, r5, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0805AF14
_0805AEDA:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805AF08  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AF0C  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805AF10  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
_0805AEFE:
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
_0805AF04:
	mov r0, #1
	b _0805AF1C
_0805AF08:
	.4byte 0x03000480
_0805AF0C:
	.4byte gUnknown_08661EB8
_0805AF10:
	.4byte 0xFFFFF800
_0805AF14:
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
_0805AF1A:
	mov r0, #0
_0805AF1C:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805AD54

	THUMB_FUNC_START sub_0805AF24
sub_0805AF24: @ 0x0805AF24
	push {r4,r5,lr}
	sub sp, sp, #4
	add r2, r0, #0
	lsl r1, r1, #24
	mov r0, #240
	lsl r0, r0, #24
	and r0, r0, r1
	lsr r0, r0, #24
	cmp r0, #32
	beq _0805AF84
	cmp r0, #32
	bgt _0805AF42
	cmp r0, #16
	beq _0805AF4C
	b _0805B02C
_0805AF42:
	cmp r0, #64
	beq _0805AFBC
	cmp r0, #128
	beq _0805AFF0
	b _0805B02C
_0805AF4C:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #13
	beq _0805B020
	ldr r0, [r2, #32]
	ldr r1, _0805AF78  @ =0xFFFFF800
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [r2, #32]
	add r4, r2, #0
	add r4, r4, #84
	ldrh r5, [r4]
	ldr r0, _0805AF7C  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AF80  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #13
	mov r2, #0
	b _0805B01A
_0805AF78:
	.4byte 0xFFFFF800
_0805AF7C:
	.4byte 0x03000480
_0805AF80:
	.4byte gUnknown_08661EB8
_0805AF84:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #14
	beq _0805B020
	ldr r0, [r2, #32]
	ldr r1, _0805AFB0  @ =0xFFFFF800
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [r2, #32]
	add r4, r2, #0
	add r4, r4, #84
	ldrh r5, [r4]
	ldr r0, _0805AFB4  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AFB8  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #14
	mov r2, #0
	b _0805B01A
_0805AFB0:
	.4byte 0xFFFFF800
_0805AFB4:
	.4byte 0x03000480
_0805AFB8:
	.4byte gUnknown_08661EB8
_0805AFBC:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #12
	bne _0805AFD2
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0805B020
_0805AFD2:
	add r4, r2, #0
	add r4, r4, #84
	ldrh r5, [r4]
	ldr r0, _0805AFE8  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805AFEC  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #12
	mov r2, #0
	b _0805B01A
_0805AFE8:
	.4byte 0x03000480
_0805AFEC:
	.4byte gUnknown_08661EB8
_0805AFF0:
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #12
	bne _0805B006
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	beq _0805B020
_0805B006:
	add r4, r2, #0
	add r4, r4, #84
	ldrh r5, [r4]
	ldr r0, _0805B024  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805B028  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #12
	mov r2, #1
_0805B01A:
	bl sub_0804A644
	strh r5, [r4]
_0805B020:
	mov r0, #1
	b _0805B02E
_0805B024:
	.4byte 0x03000480
_0805B028:
	.4byte gUnknown_08661EB8
_0805B02C:
	mov r0, #0
_0805B02E:
	add sp, sp, #4
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805AF24

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805B038
sub_0805B038: @ 0x0805B038
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r0, [r4, #32]
	asr r0, r0, #11
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r0, [r4, #36]
	asr r0, r0, #11
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r5, #0
	ldr r6, _0805B084  @ =gUnknown_08660E4C
_0805B054:
	lsl r0, r5, #3
	add r1, r6, #4
	add r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, r3
	bne _0805B088
	ldrb r0, [r1, #1]
	cmp r0, r2
	bne _0805B088
	ldrb r1, [r1, #2]
	add r0, r4, #0
	bl sub_0805AF24
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805B092
	strb r5, [r4, #10]
	add r1, r4, #0
	add r1, r1, #62
	mov r0, #1
	strb r0, [r1]
	b _0805B094
	.byte 0x00
	.byte 0x00
_0805B084:
	.4byte gUnknown_08660E4C
_0805B088:
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #7
	bls _0805B054
_0805B092:
	mov r0, #0
_0805B094:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805B038

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805B09C
sub_0805B09C: @ 0x0805B09C
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r2, [r4, #32]
	asr r2, r2, #11
	add r2, r2, #1
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, [r4, #36]
	asr r0, r0, #11
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r6, _0805B0FC  @ =gUnknown_08660E4C
	mov r1, #10
	ldrsb r1, [r4, r1]
	lsl r1, r1, #3
	add r0, r6, #4
	add r1, r1, r0
	add r5, r4, #0
	add r5, r5, #62
	ldrb r0, [r5]
	lsl r0, r0, #2
	ldr r1, [r1]
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, r2
	bne _0805B100
	ldrb r0, [r1, #1]
	cmp r0, r3
	bne _0805B100
	ldrb r1, [r1, #2]
	add r0, r4, #0
	bl sub_0805AF24
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805B100
	ldrb r1, [r5]
	mov r0, #10
	ldrsb r0, [r4, r0]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r1, #1
	strb r0, [r5]
	mov r0, #1
	b _0805B102
_0805B0FC:
	.4byte gUnknown_08660E4C
_0805B100:
	mov r0, #0
_0805B102:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805B09C

	THUMB_FUNC_START sub_0805B108
sub_0805B108: @ 0x0805B108
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _0805B144  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _0805B11A
	b _0805B22E
_0805B11A:
	ldr r0, _0805B148  @ =0x0300042E
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805B164
	ldr r2, _0805B14C  @ =0x040000D4
	ldr r0, _0805B150  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805B154  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0805B158  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0805B15C  @ =0x03000440
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _0805B160  @ =gUnknown_08543384
	b _0805B188
_0805B144:
	.4byte gNextMainState
_0805B148:
	.4byte 0x0300042E
_0805B14C:
	.4byte 0x040000D4
_0805B150:
	.4byte gUnknown_0854337C
_0805B154:
	.4byte gOamBuffer
_0805B158:
	.4byte 0x84000002
_0805B15C:
	.4byte 0x03000440
_0805B160:
	.4byte gUnknown_08543384
_0805B164:
	cmp r0, #2
	bne _0805B22E
	ldr r2, _0805B234  @ =0x040000D4
	ldr r0, _0805B238  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805B23C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0805B240  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0805B244  @ =0x03000440
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _0805B248  @ =gUnknown_0851F568
_0805B188:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _0805B24C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0805B250  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _0805B254  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _0805B258  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, _0805B25C  @ =0x03000448
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _0805B260  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _0805B264  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0805B268  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _0805B26C  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _0805B270  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
_0805B22E:
	pop {r4-r7}
	pop {r0}
	bx r0
_0805B234:
	.4byte 0x040000D4
_0805B238:
	.4byte gUnknown_0851F560
_0805B23C:
	.4byte gOamBuffer
_0805B240:
	.4byte 0x84000002
_0805B244:
	.4byte 0x03000440
_0805B248:
	.4byte gUnknown_0851F568
_0805B24C:
	.4byte 0x06010000
_0805B250:
	.4byte 0x84000100
_0805B254:
	.4byte 0x000003FF
_0805B258:
	.4byte 0xFFFFFC00
_0805B25C:
	.4byte 0x03000448
_0805B260:
	.4byte gUnknown_030012A0
_0805B264:
	.4byte 0x000001FF
_0805B268:
	.4byte 0xFFFFFE00
_0805B26C:
	.4byte 0x030019AC
_0805B270:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_0805B108

	THUMB_FUNC_START sub_0805B274
sub_0805B274: @ 0x0805B274
	push {lr}
	ldr r0, _0805B294  @ =0x0300043A
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0805B298  @ =0x03000452
	strh r1, [r0]
	ldr r0, _0805B29C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0805B2A4
	ldr r1, _0805B2A0  @ =0x03000455
	mov r0, #4
	b _0805B2A8
	.byte 0x00
	.byte 0x00
_0805B294:
	.4byte 0x0300043A
_0805B298:
	.4byte 0x03000452
_0805B29C:
	.4byte gUnknown_03000B80
_0805B2A0:
	.4byte 0x03000455
_0805B2A4:
	ldr r1, _0805B2CC  @ =0x03000455
	mov r0, #5
_0805B2A8:
	strb r0, [r1]
	ldr r0, _0805B2D0  @ =0x03000454
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0805B2D4  @ =0x03000438
	strb r1, [r0]
	ldr r0, _0805B2D8  @ =0x03001B6C
	strb r1, [r0]
	ldr r2, _0805B2DC  @ =0x03000428
	mov r3, #150
	lsl r3, r3, #2
	add r0, r3, #0
	strh r0, [r2]
	ldr r0, _0805B2E0  @ =0x0300042A
	strb r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805B2CC:
	.4byte 0x03000455
_0805B2D0:
	.4byte 0x03000454
_0805B2D4:
	.4byte 0x03000438
_0805B2D8:
	.4byte 0x03001B6C
_0805B2DC:
	.4byte 0x03000428
_0805B2E0:
	.4byte 0x0300042A
	THUMB_FUNC_END sub_0805B274

	THUMB_FUNC_START sub_0805B2E4
sub_0805B2E4: @ 0x0805B2E4
	ldr r3, _0805B2F8  @ =0x03001CB0
	ldr r2, _0805B2FC  @ =0x03000452
	ldrh r1, [r2]
	lsl r1, r1, #2
	add r1, r1, r3
	str r0, [r1]
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	bx lr
_0805B2F8:
	.4byte 0x03001CB0
_0805B2FC:
	.4byte 0x03000452
	THUMB_FUNC_END sub_0805B2E4

	THUMB_FUNC_START sub_0805B300
sub_0805B300: @ 0x0805B300
	bx lr
	THUMB_FUNC_END sub_0805B300

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805B304
sub_0805B304: @ 0x0805B304
	bx lr
	THUMB_FUNC_END sub_0805B304

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805B308
sub_0805B308: @ 0x0805B308
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _0805B354  @ =0x03001940
	ldr r1, [r1]
	add r1, r1, #153
	mov r4, #0
	strb r4, [r1]
	ldr r2, _0805B358  @ =0x03000442
	ldr r1, _0805B35C  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r2]
	ldr r1, _0805B360  @ =0x0300042E
	strb r4, [r1]
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _0805B364  @ =0x0300042F
	ldrb r3, [r1]
	ldr r1, _0805B368  @ =gUnknown_08660EA8
	str r1, [sp]
	mov r1, #1
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805B354:
	.4byte 0x03001940
_0805B358:
	.4byte 0x03000442
_0805B35C:
	.4byte gUnknown_0854301C
_0805B360:
	.4byte 0x0300042E
_0805B364:
	.4byte 0x0300042F
_0805B368:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_0805B308

	THUMB_FUNC_START sub_0805B36C
sub_0805B36C: @ 0x0805B36C
	push {r4-r6,lr}
	sub sp, sp, #4
	add r6, r0, #0
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B3A8
	add r4, r6, #0
	add r4, r4, #84
	ldrh r5, [r4]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805B3B0  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805B3B4  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #4
	bl sub_0804A644
	strh r5, [r4]
	mov r0, #1
	neg r0, r0
	str r0, [r6, #76]
	ldr r0, [r6, #92]
	ldr r1, _0805B3B8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r6, #92]
_0805B3A8:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0805B3B0:
	.4byte 0x0300042F
_0805B3B4:
	.4byte gUnknown_08660EA8
_0805B3B8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805B36C

	THUMB_FUNC_START sub_0805B3BC
sub_0805B3BC: @ 0x0805B3BC
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B3DC
	ldr r1, _0805B3E0  @ =0x03000428
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0805B3E4  @ =0x0300042C
	mov r0, #3
	strh r0, [r1]
	add r0, r2, #0
	bl sub_0805A594
_0805B3DC:
	pop {r0}
	bx r0
_0805B3E0:
	.4byte 0x03000428
_0805B3E4:
	.4byte 0x0300042C
	THUMB_FUNC_END sub_0805B3BC

	THUMB_FUNC_START sub_0805B3E8
sub_0805B3E8: @ 0x0805B3E8
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #12
	bne _0805B438
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B47E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805B42C  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805B430  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805B434  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805B47E
	.byte 0x00
	.byte 0x00
_0805B42C:
	.4byte 0x0300042F
_0805B430:
	.4byte gUnknown_08660EA8
_0805B434:
	.4byte 0xFFFFF000
_0805B438:
	ldr r5, _0805B464  @ =0x03000434
	ldrb r0, [r5]
	cmp r0, #2
	bne _0805B47E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805B468  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805B46C  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, _0805B470  @ =0x03000432
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B474
	mov r0, #3
	b _0805B476
	.byte 0x00
	.byte 0x00
_0805B464:
	.4byte 0x03000434
_0805B468:
	.4byte 0x0300042F
_0805B46C:
	.4byte gUnknown_08660EA8
_0805B470:
	.4byte 0x03000432
_0805B474:
	mov r0, #4
_0805B476:
	strb r0, [r5]
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r4, #92]
_0805B47E:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805B3E8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805B488
sub_0805B488: @ 0x0805B488
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B4AA
	ldr r0, _0805B4B0  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805B4B4  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #19
	mov r2, #0
	bl sub_0804A644
_0805B4AA:
	add sp, sp, #4
	pop {r0}
	bx r0
_0805B4B0:
	.4byte 0x0300042F
_0805B4B4:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_0805B488

	THUMB_FUNC_START sub_0805B4B8
sub_0805B4B8: @ 0x0805B4B8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805A304
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805B4E4
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B4E4
	ldr r0, _0805B4EC  @ =0x0300042F
	ldrb r3, [r0]
	ldr r0, _0805B4F0  @ =gUnknown_08660EA8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	mov r2, #0
	bl sub_0804A644
_0805B4E4:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805B4EC:
	.4byte 0x0300042F
_0805B4F0:
	.4byte gUnknown_08660EA8
	THUMB_FUNC_END sub_0805B4B8

	THUMB_FUNC_START sub_0805B4F4
sub_0805B4F4: @ 0x0805B4F4
	push {r4,lr}
	add r4, r0, #0
	bl sub_0805A304
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805B510
	ldr r0, _0805B528  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0805B520
_0805B510:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B520
	add r0, r4, #0
	bl sub_0805A594
_0805B520:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805B528:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_0805B4F4

	THUMB_FUNC_START sub_0805B52C
sub_0805B52C: @ 0x0805B52C
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805B52C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805B540
sub_0805B540: @ 0x0805B540
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805AD54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805B57C
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805B57C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805B584  @ =0x03000480
	ldrb r3, [r0]
	ldr r0, _0805B588  @ =gUnknown_08661EB8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r4, #92]
_0805B57C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805B584:
	.4byte 0x03000480
_0805B588:
	.4byte gUnknown_08661EB8
	THUMB_FUNC_END sub_0805B540

	THUMB_FUNC_START sub_0805B58C
sub_0805B58C: @ 0x0805B58C
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B5AC
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r1, _0805B5B0  @ =0x03000437
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0805B5AC:
	pop {r0}
	bx r0
_0805B5B0:
	.4byte 0x03000437
	THUMB_FUNC_END sub_0805B58C

	THUMB_FUNC_START sub_0805B5B4
sub_0805B5B4: @ 0x0805B5B4
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805B5D4
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r1, _0805B5D8  @ =0x03000437
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
_0805B5D4:
	pop {r0}
	bx r0
_0805B5D8:
	.4byte 0x03000437
	THUMB_FUNC_END sub_0805B5B4

	THUMB_FUNC_START sub_0805B5DC
sub_0805B5DC: @ 0x0805B5DC
	push {r4-r6,lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r2, r2, #24
	ldr r1, _0805B610  @ =0x03000484
	ldr r3, _0805B614  @ =0x030019E8
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0805B618  @ =0x0300048A
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	mov r4, #1
	strb r4, [r0]
	cmp r2, #0
	beq _0805B620
	ldr r1, _0805B61C  @ =0x0300049E
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	strb r4, [r0]
	b _0805B62C
_0805B610:
	.4byte 0x03000484
_0805B614:
	.4byte 0x030019E8
_0805B618:
	.4byte 0x0300048A
_0805B61C:
	.4byte 0x0300049E
_0805B620:
	ldr r0, _0805B660  @ =0x0300049E
	ldrb r1, [r3]
	sub r1, r1, #1
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
_0805B62C:
	ldr r1, _0805B664  @ =0x030004A1
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0805B668  @ =0x03000490
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r5, #3
	strh r1, [r0]
	ldr r1, _0805B66C  @ =0x03000498
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r6, #3
	strh r1, [r0]
	ldr r1, _0805B670  @ =0x03001CF0
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	mov r1, #255
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
_0805B660:
	.4byte 0x0300049E
_0805B664:
	.4byte 0x030004A1
_0805B668:
	.4byte 0x03000490
_0805B66C:
	.4byte 0x03000498
_0805B670:
	.4byte 0x03001CF0
	THUMB_FUNC_END sub_0805B5DC

	THUMB_FUNC_START sub_0805B674
sub_0805B674: @ 0x0805B674
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	mov r7, #0
	ldr r0, _0805B6FC  @ =0x030019E8
	ldrb r0, [r0]
	cmp r7, r0
	bcc _0805B68A
	b _0805B814
_0805B68A:
	ldr r0, _0805B700  @ =0x03001CF0
	mov r8, r0
	ldr r1, _0805B704  @ =0x03000490
	mov r9, r1
_0805B692:
	ldr r0, _0805B708  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0805B6A2
	b _0805B804
_0805B6A2:
	ldr r1, _0805B70C  @ =0x03000484
	lsl r2, r7, #1
	add r3, r2, r1
	ldrh r0, [r3]
	add r5, r0, #1
	mov r6, #0
	mov r0, #0
	mov r12, r0
	strh r5, [r3]
	ldr r0, _0805B710  @ =0x0300048A
	add r4, r7, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805B750
	lsl r0, r5, #16
	cmp r0, #0
	beq _0805B750
	strb r6, [r4]
	mov r1, r12
	strh r1, [r3]
	ldr r0, _0805B714  @ =0x0300049E
	add r0, r7, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805B71C
	mov r3, r9
	add r0, r2, r3
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0805B718  @ =0x03000498
	add r0, r2, r0
	ldrh r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r12
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #110
	mov r2, #2
	b _0805B73E
	.byte 0x00
	.byte 0x00
_0805B6FC:
	.4byte 0x030019E8
_0805B700:
	.4byte 0x03001CF0
_0805B704:
	.4byte 0x03000490
_0805B708:
	.4byte gUnknown_03001A1C
_0805B70C:
	.4byte 0x03000484
_0805B710:
	.4byte 0x0300048A
_0805B714:
	.4byte 0x0300049E
_0805B718:
	.4byte 0x03000498
_0805B71C:
	mov r3, r9
	add r0, r2, r3
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0805B74C  @ =0x03000498
	add r0, r2, r0
	ldrh r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #110
	mov r2, #0
_0805B73E:
	bl sub_08038DF4
	mov r2, r8
	add r1, r7, r2
	strb r0, [r1]
	b _0805B7D0
	.byte 0x00
	.byte 0x00
_0805B74C:
	.4byte 0x03000498
_0805B750:
	add r4, r2, #0
	add r3, r4, r1
	ldrh r1, [r3]
	mov r0, #180
	lsl r0, r0, #3
	cmp r1, r0
	bls _0805B7D0
	mov r0, r8
	add r5, r7, r0
	mov r1, #0
	ldrsb r1, [r5, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0805B7D0
	mov r6, #0
	strh r6, [r3]
	ldr r0, _0805B7A0  @ =0x0300049E
	add r0, r7, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805B7A8
	mov r1, r9
	add r0, r4, r1
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0805B7A4  @ =0x03000498
	add r0, r4, r0
	ldrh r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #110
	mov r2, #3
	b _0805B7CA
_0805B7A0:
	.4byte 0x0300049E
_0805B7A4:
	.4byte 0x03000498
_0805B7A8:
	mov r3, r9
	add r0, r2, r3
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0805B7F8  @ =0x03000498
	add r0, r2, r0
	ldrh r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #110
	mov r2, #1
_0805B7CA:
	bl sub_08038DF4
	strb r0, [r5]
_0805B7D0:
	ldr r0, _0805B7FC  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	mov r2, r8
	add r3, r7, r2
	mov r2, #0
	ldrsb r2, [r3, r2]
	ldr r0, _0805B800  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #11
	bne _0805B804
	mov r0, #255
	strb r0, [r3]
	b _0805B814
	.byte 0x00
	.byte 0x00
_0805B7F8:
	.4byte 0x03000498
_0805B7FC:
	.4byte gUnknown_03000B90
_0805B800:
	.4byte 0x03001940
_0805B804:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _0805B824  @ =0x030019E8
	ldrb r0, [r0]
	cmp r7, r0
	bcs _0805B814
	b _0805B692
_0805B814:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805B824:
	.4byte 0x030019E8
	THUMB_FUNC_END sub_0805B674

	THUMB_FUNC_START sub_0805B828
sub_0805B828: @ 0x0805B828
	push {r4-r6,lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r2, r2, #24
	ldr r1, _0805B85C  @ =0x030004A8
	ldr r3, _0805B860  @ =0x030019B0
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0805B864  @ =0x030004B4
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	mov r4, #1
	strb r4, [r0]
	cmp r2, #0
	beq _0805B86C
	ldr r1, _0805B868  @ =0x030004DC
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	strb r4, [r0]
	b _0805B878
_0805B85C:
	.4byte 0x030004A8
_0805B860:
	.4byte 0x030019B0
_0805B864:
	.4byte 0x030004B4
_0805B868:
	.4byte 0x030004DC
_0805B86C:
	ldr r0, _0805B8A8  @ =0x030004DC
	ldrb r1, [r3]
	sub r1, r1, #1
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
_0805B878:
	ldr r1, _0805B8AC  @ =0x030004C0
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r5, #3
	strh r1, [r0]
	ldr r1, _0805B8B0  @ =0x030004D0
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r6, #3
	strh r1, [r0]
	ldr r1, _0805B8B4  @ =0x03001CF8
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	mov r1, #255
	strb r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805B8A8:
	.4byte 0x030004DC
_0805B8AC:
	.4byte 0x030004C0
_0805B8B0:
	.4byte 0x030004D0
_0805B8B4:
	.4byte 0x03001CF8
	THUMB_FUNC_END sub_0805B828

	THUMB_FUNC_START sub_0805B8B8
sub_0805B8B8: @ 0x0805B8B8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	mov r7, #0
	ldr r0, _0805B950  @ =0x030019B0
	ldrb r0, [r0]
	cmp r7, r0
	bcc _0805B8CE
	b _0805BA4E
_0805B8CE:
	ldr r0, _0805B954  @ =0x030004A8
	mov r9, r0
	ldr r1, _0805B958  @ =0x030004D0
	mov r8, r1
_0805B8D6:
	ldr r0, _0805B95C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0805B8E6
	b _0805BA3E
_0805B8E6:
	ldr r0, _0805B960  @ =0x030004B4
	add r3, r7, r0
	ldrb r5, [r3]
	cmp r5, #0
	beq _0805B9A0
	lsl r4, r7, #1
	mov r0, r9
	add r2, r4, r0
	ldrh r0, [r2]
	add r0, r0, #1
	mov r5, #0
	mov r6, #0
	strh r0, [r2]
	ldrh r1, [r2]
	lsl r0, r7, #4
	sub r0, r0, r7
	lsl r0, r0, #2
	cmp r1, r0
	bgt _0805B90E
	b _0805BA3E
_0805B90E:
	strb r5, [r3]
	strh r6, [r2]
	ldr r0, _0805B964  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r1, r0, #8
	ldr r0, _0805B968  @ =0x030004C0
	add r3, r4, r0
	mov r2, #0
	ldrsh r0, [r3, r2]
	cmp r1, r0
	ble _0805B96C
	sub r0, r1, r0
	cmp r0, #15
	bgt _0805B92E
	b _0805BA3E
_0805B92E:
	ldrh r3, [r3]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r1, r8
	add r0, r4, r1
	ldrh r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #188
	mov r2, #0
	b _0805B990
	.byte 0x00
	.byte 0x00
_0805B950:
	.4byte 0x030019B0
_0805B954:
	.4byte 0x030004A8
_0805B958:
	.4byte 0x030004D0
_0805B95C:
	.4byte gUnknown_03001A1C
_0805B960:
	.4byte 0x030004B4
_0805B964:
	.4byte 0x030019AC
_0805B968:
	.4byte 0x030004C0
_0805B96C:
	sub r0, r0, r1
	cmp r0, #31
	ble _0805BA3E
	ldrh r3, [r3]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r2, r8
	add r0, r4, r2
	ldrh r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #188
	mov r2, #1
_0805B990:
	bl sub_08038DF4
	ldr r1, _0805B99C  @ =0x03001CF8
	add r1, r7, r1
	strb r0, [r1]
	b _0805BA3E
_0805B99C:
	.4byte 0x03001CF8
_0805B9A0:
	ldr r0, _0805BA00  @ =0x03001CF8
	add r6, r7, r0
	mov r1, #0
	ldrsb r1, [r6, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0805BA3E
	lsl r2, r7, #1
	mov r0, r9
	add r1, r2, r0
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r4, r2, #0
	cmp r0, #120
	bls _0805BA3E
	ldr r0, _0805BA04  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r1, r0, #8
	ldr r0, _0805BA08  @ =0x030004C0
	add r3, r4, r0
	mov r2, #0
	ldrsh r0, [r3, r2]
	cmp r1, r0
	ble _0805BA0C
	sub r0, r1, r0
	cmp r0, #15
	ble _0805BA3E
	ldrh r3, [r3]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r1, r8
	add r0, r4, r1
	ldrh r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #188
	mov r2, #0
	b _0805BA30
_0805BA00:
	.4byte 0x03001CF8
_0805BA04:
	.4byte 0x030019AC
_0805BA08:
	.4byte 0x030004C0
_0805BA0C:
	sub r0, r0, r1
	cmp r0, #31
	ble _0805BA3E
	ldrh r3, [r3]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r2, r8
	add r0, r4, r2
	ldrh r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #188
	mov r2, #1
_0805BA30:
	bl sub_08038DF4
	strb r0, [r6]
	mov r0, r9
	add r1, r4, r0
	mov r0, #0
	strh r0, [r1]
_0805BA3E:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _0805BA5C  @ =0x030019B0
	ldrb r0, [r0]
	cmp r7, r0
	bcs _0805BA4E
	b _0805B8D6
_0805BA4E:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0805BA5C:
	.4byte 0x030019B0
	THUMB_FUNC_END sub_0805B8B8

	THUMB_FUNC_START sub_0805BA60
sub_0805BA60: @ 0x0805BA60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r1, _0805BBA0  @ =0x03000508
	mov r0, #180
	strh r0, [r1]
	ldr r0, _0805BBA4  @ =0x03001C48
	mov r5, #0
	strh r5, [r0]
	ldr r1, _0805BBA8  @ =0x03001C40
	mov r0, #64
	strh r0, [r1]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0805BBAC  @ =0x0805BBD9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0805BBB0  @ =0x0805DD21
	str r0, [r1]
	ldr r0, _0805BBB4  @ =gUnknown_03001C78
	str r7, [r0]
	ldr r1, _0805BBB8  @ =0x030004FC
	ldr r0, [r7, #32]
	asr r0, r0, #8
	str r0, [r1]
	ldr r1, _0805BBBC  @ =0x03000500
	ldr r0, [r7, #36]
	asr r0, r0, #8
	str r0, [r1]
	ldr r0, _0805BBC0  @ =0x0300050F
	strb r5, [r0]
	mov r1, #0
	mov r8, r1
	strh r2, [r7]
	mov r2, r8
	strh r2, [r7, #4]
	mov r0, #22
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0805BBC4  @ =gUnknown_086622A8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r9, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _0805BBC8  @ =0x030004E9
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0805BBCC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	strb r5, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	strb r5, [r7, #10]
	ldr r0, _0805BBD0  @ =0x03001C50
	strb r5, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	strb r5, [r0, #16]
	mov r2, r8
	str r2, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	mov r1, #2
	strb r1, [r0, #19]
	strb r5, [r0, #17]
	strb r5, [r0, #18]
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _0805BBD4  @ =0x030004EC
	mov r1, r8
	strh r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0805BBA0:
	.4byte 0x03000508
_0805BBA4:
	.4byte 0x03001C48
_0805BBA8:
	.4byte 0x03001C40
_0805BBAC:
	.4byte sub_0805BBD8
_0805BBB0:
	.4byte sub_0805DD20
_0805BBB4:
	.4byte gUnknown_03001C78
_0805BBB8:
	.4byte 0x030004FC
_0805BBBC:
	.4byte 0x03000500
_0805BBC0:
	.4byte 0x0300050F
_0805BBC4:
	.4byte gUnknown_086622A8
_0805BBC8:
	.4byte 0x030004E9
_0805BBCC:
	.4byte 0xFFFFFE00
_0805BBD0:
	.4byte 0x03001C50
_0805BBD4:
	.4byte 0x030004EC
	THUMB_FUNC_END sub_0805BA60

	THUMB_FUNC_START sub_0805BBD8
sub_0805BBD8: @ 0x0805BBD8
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r4, #0
	ldr r1, _0805BC64  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805BC02
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _0805BC12
_0805BC02:
	ldr r1, _0805BC68  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805BCA4
_0805BC12:
	add r0, r7, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _0805BC6C  @ =0x03000508
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805BC2C
	sub r0, r0, #1
	strh r0, [r1]
_0805BC2C:
	ldr r6, _0805BC70  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _0805BC4A
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0805BC74  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0805BC4A:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _0805BC78
	add r0, r7, #0
	mov r1, #0
	bl sub_0804A580
	b _0805BC7E
	.byte 0x00
	.byte 0x00
_0805BC64:
	.4byte 0x030019AC
_0805BC68:
	.4byte gUnknown_03001C78
_0805BC6C:
	.4byte 0x03000508
_0805BC70:
	.4byte gUnknown_03001A1C
_0805BC74:
	.4byte 0x00007FFF
_0805BC78:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0805BC7E:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
_0805BCA4:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805BBD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805BCAC
sub_0805BCAC: @ 0x0805BCAC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r6, r0, #0
	mov r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #1
	beq _0805BCC0
	b _0805BDEC
_0805BCC0:
	add r4, r6, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _0805BCFC  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r6, #0
	bl sub_0805C718
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _0805BCE4
	b _0805C01E
_0805BCE4:
	ldr r0, _0805BD00  @ =0x030004E8
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0805BD04
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	ble _0805BD04
	mov r3, r8
	strb r5, [r3]
	b _0805BE3E
_0805BCFC:
	.4byte 0x03001940
_0805BD00:
	.4byte 0x030004E8
_0805BD04:
	ldr r2, _0805BD24  @ =0x030004F8
	ldr r0, _0805BD28  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805BD30
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805BD2C  @ =0x03000504
	ldr r0, [r0]
	bl sub_08040FC0
	b _0805BD50
_0805BD24:
	.4byte 0x030004F8
_0805BD28:
	.4byte 0x030019AC
_0805BD2C:
	.4byte 0x03000504
_0805BD30:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _0805BD50
	mov r0, #2
	strb r0, [r1]
	ldr r1, _0805BD80  @ =0x030004F0
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0805BD84  @ =0x030004F2
	ldr r0, _0805BD88  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_0805BD50:
	ldr r4, _0805BD84  @ =0x030004F2
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _0805BDB6
	ldr r3, _0805BD80  @ =0x030004F0
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	ldr r0, _0805BD8C  @ =0x030004E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805BD94
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _0805BD7A
	mov r0, #0
	strh r0, [r3]
_0805BD7A:
	ldr r2, _0805BD90  @ =gUnknown_0854301C
	b _0805BDA6
	.byte 0x00
	.byte 0x00
_0805BD80:
	.4byte 0x030004F0
_0805BD84:
	.4byte 0x030004F2
_0805BD88:
	.4byte gUnknown_0851F440
_0805BD8C:
	.4byte 0x030004E8
_0805BD90:
	.4byte gUnknown_0854301C
_0805BD94:
	cmp r0, #2
	bne _0805BDB6
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0805BDA4
	mov r0, #0
	strh r0, [r3]
_0805BDA4:
	ldr r2, _0805BDE0  @ =gUnknown_0851F440
_0805BDA6:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0805BDB6:
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0805BDC2
	b _0805C01E
_0805BDC2:
	ldrh r4, [r7]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805BDE4  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805BDE8  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	bl sub_0804A644
	strh r4, [r7]
	b _0805C01E
	.byte 0x00
	.byte 0x00
_0805BDE0:
	.4byte gUnknown_0851F440
_0805BDE4:
	.4byte 0x030004E9
_0805BDE8:
	.4byte gUnknown_086622A8
_0805BDEC:
	cmp r5, #2
	beq _0805BDF2
	b _0805BF80
_0805BDF2:
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805BE26
	add r0, r6, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #249
	bgt _0805BE26
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r6, #12]
	strb r1, [r6, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805BE26:
	ldr r2, _0805BE68  @ =0x030004E8
	ldrb r1, [r2]
	cmp r1, #0
	bne _0805BE7C
	add r0, r6, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #249
	ble _0805BE7C
	mov r0, #1
	strb r0, [r2]
_0805BE3E:
	ldr r5, _0805BE6C  @ =0x030004F8
	ldr r0, _0805BE70  @ =0xFFFFEC00
	str r0, [r5]
	ldr r0, _0805BE74  @ =0x030004F0
	strh r1, [r0]
	ldr r4, _0805BE78  @ =0x03000504
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	ldr r1, [r5]
	bl sub_08040FC0
	b _0805C01E
_0805BE68:
	.4byte 0x030004E8
_0805BE6C:
	.4byte 0x030004F8
_0805BE70:
	.4byte 0xFFFFEC00
_0805BE74:
	.4byte 0x030004F0
_0805BE78:
	.4byte 0x03000504
_0805BE7C:
	ldr r2, _0805BE9C  @ =0x030004F8
	ldr r0, _0805BEA0  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805BEA8
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805BEA4  @ =0x03000504
	ldr r0, [r0]
	bl sub_08040FC0
	b _0805BEC8
_0805BE9C:
	.4byte 0x030004F8
_0805BEA0:
	.4byte 0x030019AC
_0805BEA4:
	.4byte 0x03000504
_0805BEA8:
	ldr r1, _0805BEF8  @ =0x030004E8
	ldrb r0, [r1]
	cmp r0, #1
	bne _0805BEC8
	mov r0, #2
	strb r0, [r1]
	ldr r1, _0805BEFC  @ =0x030004F0
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0805BF00  @ =0x030004F2
	ldr r0, _0805BF04  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_0805BEC8:
	ldr r4, _0805BF00  @ =0x030004F2
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	ldr r1, _0805BEF8  @ =0x030004E8
	mov r8, r1
	cmp r0, #0
	bgt _0805BF30
	ldr r3, _0805BEFC  @ =0x030004F0
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrb r1, [r1]
	cmp r1, #1
	bne _0805BF0C
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _0805BEF4
	mov r0, #0
	strh r0, [r3]
_0805BEF4:
	ldr r2, _0805BF08  @ =gUnknown_0854301C
	b _0805BF20
_0805BEF8:
	.4byte 0x030004E8
_0805BEFC:
	.4byte 0x030004F0
_0805BF00:
	.4byte 0x030004F2
_0805BF04:
	.4byte gUnknown_0851F440
_0805BF08:
	.4byte gUnknown_0854301C
_0805BF0C:
	cmp r1, #2
	beq _0805BF12
	b _0805C01E
_0805BF12:
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0805BF1E
	mov r0, #0
	strh r0, [r3]
_0805BF1E:
	ldr r2, _0805BF6C  @ =gUnknown_0851F440
_0805BF20:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0805BF30:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _0805C01E
	ldr r2, _0805BF70  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805BF74  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805BF78  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	bl sub_0804A644
	ldr r0, _0805BF7C  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	b _0805C01E
_0805BF6C:
	.4byte gUnknown_0851F440
_0805BF70:
	.4byte gUnknown_03001A1C
_0805BF74:
	.4byte 0x030004E9
_0805BF78:
	.4byte gUnknown_086622A8
_0805BF7C:
	.4byte 0x03001940
_0805BF80:
	add r0, r6, #0
	bl sub_0805C718
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805C01E
	ldr r1, _0805BFA0  @ =0x03000508
	ldrh r0, [r1]
	cmp r0, #0
	bne _0805C01E
	ldr r0, _0805BFA4  @ =0x03000516
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805BFA8
	mov r0, #30
	b _0805BFAC
_0805BFA0:
	.4byte 0x03000508
_0805BFA4:
	.4byte 0x03000516
_0805BFA8:
	ldr r0, _0805BFD4  @ =0x03000514
	ldrh r0, [r0]
_0805BFAC:
	strh r0, [r1]
	ldr r0, _0805BFD8  @ =0x0300050B
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805BFE4
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #246
	mov r2, #0
	bl sub_080410B4
	ldr r0, _0805BFDC  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805BFE0  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #7
	b _0805BFF8
	.byte 0x00
	.byte 0x00
_0805BFD4:
	.4byte 0x03000514
_0805BFD8:
	.4byte 0x0300050B
_0805BFDC:
	.4byte 0x030004E9
_0805BFE0:
	.4byte gUnknown_086622A8
_0805BFE4:
	ldr r0, _0805C000  @ =0x0300050A
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C00C
	ldr r0, _0805C004  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C008  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
_0805BFF8:
	mov r2, #0
	bl sub_0804A644
	b _0805C01E
_0805C000:
	.4byte 0x0300050A
_0805C004:
	.4byte 0x030004E9
_0805C008:
	.4byte gUnknown_086622A8
_0805C00C:
	ldr r0, _0805C02C  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C030  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
_0805C01E:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805C02C:
	.4byte 0x030004E9
_0805C030:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805BCAC

	THUMB_FUNC_START sub_0805C034
sub_0805C034: @ 0x0805C034
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805C718
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805C0D6
	ldr r1, _0805C058  @ =0x03000508
	ldrh r0, [r1]
	cmp r0, #0
	bne _0805C0D6
	ldr r0, _0805C05C  @ =0x03000516
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805C060
	mov r0, #30
	b _0805C064
_0805C058:
	.4byte 0x03000508
_0805C05C:
	.4byte 0x03000516
_0805C060:
	ldr r0, _0805C08C  @ =0x03000514
	ldrh r0, [r0]
_0805C064:
	strh r0, [r1]
	ldr r0, _0805C090  @ =0x0300050B
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C09C
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #246
	mov r2, #0
	bl sub_080410B4
	ldr r0, _0805C094  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C098  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	b _0805C0B0
	.byte 0x00
	.byte 0x00
_0805C08C:
	.4byte 0x03000514
_0805C090:
	.4byte 0x0300050B
_0805C094:
	.4byte 0x030004E9
_0805C098:
	.4byte gUnknown_086622A8
_0805C09C:
	ldr r0, _0805C0B8  @ =0x0300050A
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C0C4
	ldr r0, _0805C0BC  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C0C0  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
_0805C0B0:
	mov r2, #0
	bl sub_0804A644
	b _0805C0D6
_0805C0B8:
	.4byte 0x0300050A
_0805C0BC:
	.4byte 0x030004E9
_0805C0C0:
	.4byte gUnknown_086622A8
_0805C0C4:
	ldr r0, _0805C0E0  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C0E4  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
_0805C0D6:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805C0E0:
	.4byte 0x030004E9
_0805C0E4:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805C034

	THUMB_FUNC_START sub_0805C0E8
sub_0805C0E8: @ 0x0805C0E8
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	bl sub_0805C718
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805C0FA
	b _0805C39C
_0805C0FA:
	add r6, r5, #0
	add r6, r6, #84
	mov r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #6
	beq _0805C108
	b _0805C374
_0805C108:
	ldr r0, _0805C14C  @ =0x0300050A
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C112
	b _0805C244
_0805C112:
	ldr r0, _0805C150  @ =0x0300050E
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C12A
	ldr r0, _0805C154  @ =0x03001D00
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C12A
	ldr r0, _0805C158  @ =0x03000516
	ldrh r2, [r0]
	cmp r2, #0
	beq _0805C15C
_0805C12A:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #175
	mov r2, #0
	bl sub_08038DF4
	b _0805C200
_0805C14C:
	.4byte 0x0300050A
_0805C150:
	.4byte 0x0300050E
_0805C154:
	.4byte 0x03001D00
_0805C158:
	.4byte 0x03000516
_0805C15C:
	ldr r0, _0805C18C  @ =0x0300050C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805C194
	ldr r1, _0805C190  @ =0x0300050B
	mov r0, #1
	strb r0, [r1]
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #175
	mov r2, #0
	bl sub_08038DF4
	b _0805C1EC
	.byte 0x00
	.byte 0x00
_0805C18C:
	.4byte 0x0300050C
_0805C190:
	.4byte 0x0300050B
_0805C194:
	ldr r0, _0805C1BC  @ =0x0300050F
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805C1C0
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #174
	mov r2, #0
	bl sub_08038DF4
	b _0805C1E2
_0805C1BC:
	.4byte 0x0300050F
_0805C1C0:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #255
	mov r1, #202
	mov r2, #0
	bl sub_08038DF4
_0805C1E2:
	ldr r0, _0805C22C  @ =0x0300050F
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
_0805C1EC:
	ldr r1, _0805C230  @ =0x0300050C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bls _0805C200
	mov r0, #0
	strb r0, [r1]
_0805C200:
	ldr r3, _0805C234  @ =0x0300050E
	ldrb r0, [r3]
	add r2, r0, #1
	strb r2, [r3]
	ldr r1, _0805C238  @ =0x03000516
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805C214
	sub r0, r0, #1
	strh r0, [r1]
_0805C214:
	ldr r1, _0805C23C  @ =0x0300050D
	lsl r0, r2, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805C224
	mov r0, #0
	strb r0, [r3]
_0805C224:
	ldr r1, _0805C240  @ =0x0300050A
	mov r0, #0
	strb r0, [r1]
	b _0805C39C
_0805C22C:
	.4byte 0x0300050F
_0805C230:
	.4byte 0x0300050C
_0805C234:
	.4byte 0x0300050E
_0805C238:
	.4byte 0x03000516
_0805C23C:
	.4byte 0x0300050D
_0805C240:
	.4byte 0x0300050A
_0805C244:
	ldr r0, _0805C280  @ =0x0300050E
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C25C
	ldr r0, _0805C284  @ =0x03001D00
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805C25C
	ldr r0, _0805C288  @ =0x03000516
	ldrh r2, [r0]
	cmp r2, #0
	beq _0805C28C
_0805C25C:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #52
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #175
	mov r2, #0
	bl sub_08038DF4
	b _0805C330
	.byte 0x00
	.byte 0x00
_0805C280:
	.4byte 0x0300050E
_0805C284:
	.4byte 0x03001D00
_0805C288:
	.4byte 0x03000516
_0805C28C:
	ldr r0, _0805C2BC  @ =0x0300050C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805C2C4
	ldr r1, _0805C2C0  @ =0x0300050B
	mov r0, #1
	strb r0, [r1]
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #52
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #175
	mov r2, #0
	bl sub_08038DF4
	b _0805C31C
	.byte 0x00
	.byte 0x00
_0805C2BC:
	.4byte 0x0300050C
_0805C2C0:
	.4byte 0x0300050B
_0805C2C4:
	ldr r0, _0805C2EC  @ =0x0300050F
	ldrb r1, [r0]
	cmp r1, #0
	beq _0805C2F0
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #52
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #174
	mov r2, #0
	bl sub_08038DF4
	b _0805C312
_0805C2EC:
	.4byte 0x0300050F
_0805C2F0:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #52
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #255
	mov r1, #202
	mov r2, #0
	bl sub_08038DF4
_0805C312:
	ldr r0, _0805C35C  @ =0x0300050F
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
_0805C31C:
	ldr r1, _0805C360  @ =0x0300050C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #2
	bls _0805C330
	mov r0, #0
	strb r0, [r1]
_0805C330:
	ldr r3, _0805C364  @ =0x0300050E
	ldrb r0, [r3]
	add r2, r0, #1
	strb r2, [r3]
	ldr r1, _0805C368  @ =0x03000516
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805C344
	sub r0, r0, #1
	strh r0, [r1]
_0805C344:
	ldr r1, _0805C36C  @ =0x0300050D
	lsl r0, r2, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805C354
	mov r0, #0
	strb r0, [r3]
_0805C354:
	ldr r1, _0805C370  @ =0x0300050A
	mov r0, #1
	strb r0, [r1]
	b _0805C39C
_0805C35C:
	.4byte 0x0300050F
_0805C360:
	.4byte 0x0300050C
_0805C364:
	.4byte 0x0300050E
_0805C368:
	.4byte 0x03000516
_0805C36C:
	.4byte 0x0300050D
_0805C370:
	.4byte 0x0300050A
_0805C374:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C39C
	ldrh r4, [r6]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0805C3A4  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C3A8  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #4
	bl sub_0804A644
	strh r4, [r6]
_0805C39C:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_0805C3A4:
	.4byte 0x030004E9
_0805C3A8:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805C0E8

	THUMB_FUNC_START sub_0805C3AC
sub_0805C3AC: @ 0x0805C3AC
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	bl sub_0805C718
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #0
	bne _0805C440
	add r6, r5, #0
	add r6, r6, #84
	mov r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #34
	bne _0805C41C
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #32
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #48
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #202
	mov r2, #0
	bl sub_08038DF4
	ldr r3, _0805C410  @ =0x0300050E
	ldrb r0, [r3]
	add r2, r0, #1
	strb r2, [r3]
	ldr r1, _0805C414  @ =0x03000516
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805C400
	sub r0, r0, #1
	strh r0, [r1]
_0805C400:
	ldr r1, _0805C418  @ =0x0300050D
	lsl r0, r2, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bne _0805C440
	strb r4, [r3]
	b _0805C440
_0805C410:
	.4byte 0x0300050E
_0805C414:
	.4byte 0x03000516
_0805C418:
	.4byte 0x0300050D
_0805C41C:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C440
	ldrh r4, [r6]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C448  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C44C  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #4
	bl sub_0804A644
	strh r4, [r6]
_0805C440:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_0805C448:
	.4byte 0x030004E9
_0805C44C:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805C3AC

	THUMB_FUNC_START sub_0805C450
sub_0805C450: @ 0x0805C450
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #13
	bne _0805C4A0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C4F0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C494  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C498  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805C49C  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805C4F0
	.byte 0x00
	.byte 0x00
_0805C494:
	.4byte 0x030004E9
_0805C498:
	.4byte gUnknown_086622A8
_0805C49C:
	.4byte 0xFFFFF000
_0805C4A0:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _0805C4C2
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #142
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805C4C2:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C4F0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C4F8  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C4FC  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _0805C500  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0805C4F0:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_0805C4F8:
	.4byte 0x030004E9
_0805C4FC:
	.4byte gUnknown_086622A8
_0805C500:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805C450

	THUMB_FUNC_START sub_0805C504
sub_0805C504: @ 0x0805C504
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #15
	bne _0805C558
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0805C51E
	b _0805C636
_0805C51E:
	mov r0, #18
	bl sub_08071E14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C54C  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C550  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805C554  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	b _0805C5E0
	.byte 0x00
	.byte 0x00
_0805C54C:
	.4byte 0x030004E9
_0805C550:
	.4byte gUnknown_086622A8
_0805C554:
	.4byte 0xFFFFF000
_0805C558:
	cmp r0, #16
	bne _0805C588
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C636
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C580  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C584  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	b _0805C636
	.byte 0x00
	.byte 0x00
_0805C580:
	.4byte 0x030004E9
_0805C584:
	.4byte gUnknown_086622A8
_0805C588:
	cmp r0, #17
	bne _0805C5F4
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #8
	bne _0805C5AE
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #95
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805C5AE:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C636
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C5E8  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C5EC  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #18
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _0805C5F0  @ =0xFFFFE000
_0805C5E0:
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805C636
	.byte 0x00
	.byte 0x00
_0805C5E8:
	.4byte 0x030004E9
_0805C5EC:
	.4byte gUnknown_086622A8
_0805C5F0:
	.4byte 0xFFFFE000
_0805C5F4:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C636
	bl sub_08072144
	cmp r0, #0
	beq _0805C60A
	bl sub_080720AC
_0805C60A:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #148
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C640  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C644  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
_0805C636:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805C640:
	.4byte 0x030004E9
_0805C644:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805C504

	THUMB_FUNC_START sub_0805C648
sub_0805C648: @ 0x0805C648
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #20
	bne _0805C68C
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805C6FE
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C680  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C684  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _0805C688  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805C6FE
_0805C680:
	.4byte 0x030004E9
_0805C684:
	.4byte gUnknown_086622A8
_0805C688:
	.4byte 0xFFFFE000
_0805C68C:
	add r4, r4, #84
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #25
	bne _0805C6AC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #94
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805C6AC:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _0805C6C6
	ldr r1, _0805C708  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _0805C70C  @ =0x03001C48
	ldrh r0, [r1]
	sub r0, r0, #16
	strh r0, [r1]
_0805C6C6:
	add r0, r2, #0
	sub r0, r0, #34
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #20
	bhi _0805C6DA
	ldr r1, _0805C708  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #6
	strh r0, [r1]
_0805C6DA:
	cmp r3, #54
	ble _0805C6FE
	ldr r0, _0805C710  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #134
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0805C6FE
	ldr r0, _0805C714  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #10
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #18
	bl sub_08071E14
_0805C6FE:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805C708:
	.4byte 0x03001C40
_0805C70C:
	.4byte 0x03001C48
_0805C710:
	.4byte gUnknown_03001A1C
_0805C714:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_0805C648

	THUMB_FUNC_START sub_0805C718
sub_0805C718: @ 0x0805C718
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r1, _0805C77C  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	add r7, r1, #0
	cmp r4, #0
	beq _0805C790
	ldr r0, _0805C780  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C784  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0805C788  @ =0x03001968
	ldrh r0, [r5]
	str r0, [r1]
	ldr r2, _0805C78C  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0805C772
	b _0805C9EE
_0805C772:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _0805C9EE
_0805C77C:
	.4byte 0x030019AC
_0805C780:
	.4byte 0x030004E9
_0805C784:
	.4byte gUnknown_086622A8
_0805C788:
	.4byte 0x03001968
_0805C78C:
	.4byte gUnknown_03001A1C
_0805C790:
	ldr r0, _0805C7D8  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #21
	and r1, r1, r2
	add r3, r0, #0
	cmp r1, #0
	beq _0805C7E8
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #11
	beq _0805C7E8
	cmp r0, #12
	beq _0805C7E8
	ldr r0, _0805C7DC  @ =0x03000516
	strh r4, [r0]
	ldr r0, _0805C7E0  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C7E4  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #11
	mov r2, #0
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0805CA00
_0805C7D8:
	.4byte gUnknown_03001A1C
_0805C7DC:
	.4byte 0x03000516
_0805C7E0:
	.4byte 0x030004E9
_0805C7E4:
	.4byte gUnknown_086622A8
_0805C7E8:
	ldr r1, [r5, #76]
	cmp r1, #0
	bge _0805C7F0
	b _0805CA00
_0805C7F0:
	ldr r2, _0805C850  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0805C85C
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _0805C836
	b _0805C9A6
_0805C836:
	ldr r0, _0805C854  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C858  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_0805CA0C
	b _0805C9E0
_0805C850:
	.4byte 0x03001940
_0805C854:
	.4byte 0x030004E9
_0805C858:
	.4byte gUnknown_086622A8
_0805C85C:
	cmp r0, #176
	beq _0805C862
	b _0805C9E0
_0805C862:
	add r6, r4, #0
	add r6, r6, #132
	ldr r0, [r6]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0805C968
	add r0, r5, #0
	add r0, r0, #52
	ldrb r1, [r0]
	sub r1, r1, #1
	mov r2, #0
	strb r1, [r0]
	ldr r0, _0805C8D0  @ =0x03000516
	strh r2, [r0]
	ldr r2, _0805C8D4  @ =0x03000514
	ldrh r0, [r2]
	sub r0, r0, #30
	strh r0, [r2]
	lsl r1, r1, #24
	cmp r1, #0
	bgt _0805C8F0
	ldr r0, [r3]
	mov r1, #8
	orr r0, r0, r1
	str r0, [r3]
	ldr r0, _0805C8D8  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C8DC  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #15
	mov r2, #0
	bl sub_0804A644
	ldr r2, _0805C8E0  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _0805C8E4  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0805C8E8  @ =gUnknown_03000B6C
	ldr r1, [r2]
	ldr r0, _0805C8EC  @ =0x00001388
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r1, r1, #16
	ldr r2, [r5, #36]
	asr r2, r2, #8
	bl sub_08031A64
	b _0805C906
_0805C8D0:
	.4byte 0x03000516
_0805C8D4:
	.4byte 0x03000514
_0805C8D8:
	.4byte 0x030004E9
_0805C8DC:
	.4byte gUnknown_086622A8
_0805C8E0:
	.4byte gUnknown_030019A0
_0805C8E4:
	.4byte 0x20040000
_0805C8E8:
	.4byte gUnknown_03000B6C
_0805C8EC:
	.4byte 0x00001388
_0805C8F0:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805C958  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C95C  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #13
	bl sub_0804A644
_0805C906:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r5, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, [r5, #36]
	ldr r1, _0805C960  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r5, #36]
	ldr r2, _0805C964  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	b _0805C9E0
_0805C958:
	.4byte 0x030004E9
_0805C95C:
	.4byte gUnknown_086622A8
_0805C960:
	.4byte 0xFFFFE000
_0805C964:
	.4byte gUnknown_03001A1C
_0805C968:
	ldr r2, [r7]
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0805C9E0
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	ldr r2, [r5, #32]
	asr r2, r2, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	sub r1, r1, r2
	cmp r1, #0
	bge _0805C9C8
_0805C9A6:
	ldr r0, _0805C9C0  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C9C4  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl sub_0804A644
	mov r0, #0
	bl sub_0805CA0C
	b _0805C9E0
_0805C9C0:
	.4byte 0x030004E9
_0805C9C4:
	.4byte gUnknown_086622A8
_0805C9C8:
	ldr r0, _0805C9F4  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805C9F8  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_0805CA0C
_0805C9E0:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _0805C9FC  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
_0805C9EE:
	mov r0, #1
	b _0805CA02
	.byte 0x00
	.byte 0x00
_0805C9F4:
	.4byte 0x030004E9
_0805C9F8:
	.4byte gUnknown_086622A8
_0805C9FC:
	.4byte 0xFFFFFF00
_0805CA00:
	mov r0, #0
_0805CA02:
	add sp, sp, #12
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805C718

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805CA0C
sub_0805CA0C: @ 0x0805CA0C
	push {r4,r5,lr}
	sub sp, sp, #80
	lsl r0, r0, #16
	cmp r0, #0
	bne _0805CA68
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _0805CA60  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _0805CA64  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805CA5A
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805CA5A:
	ldr r2, [r4]
	b _0805CAAC
	.byte 0x00
	.byte 0x00
_0805CA60:
	.4byte 0x00100800
_0805CA64:
	.4byte 0x030019AC
_0805CA68:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	ldr r2, _0805CAC4  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _0805CAC8  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _0805CACC  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805CAAA
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805CAAA:
	ldr r2, [r5]
_0805CAAC:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _0805CAD0  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805CAC4:
	.4byte 0x000001E9
_0805CAC8:
	.4byte 0x00200800
_0805CACC:
	.4byte 0x030019AC
_0805CAD0:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805CA0C

	THUMB_FUNC_START sub_0805CAD4
sub_0805CAD4: @ 0x0805CAD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r8, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0805CBDC  @ =0x0805CF69
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0805CBE0  @ =0x0805DF51
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #0
	mov r3, #1
	mov r10, r3
	mov r3, r10
	strb r3, [r1]
	mov r1, #0
	mov r9, r1
	strh r2, [r7]
	strh r0, [r7, #4]
	mov r0, #10
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0805CBE4  @ =gUnknown_08662A00
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0805CBE8  @ =0x03000540
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r8
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r8
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0805CBEC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r9
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _0805CBF0  @ =0x030004EA
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r1, _0805CBF4  @ =0x03000518
	mov r2, r9
	strb r2, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	ldr r0, _0805CBF8  @ =0x0300050A
	ldrb r0, [r0]
	add r3, r1, #0
	cmp r0, #0
	beq _0805CBFC
	strb r2, [r3, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _0805CC12
_0805CBDC:
	.4byte sub_0805CF68
_0805CBE0:
	.4byte sub_0805DF50
_0805CBE4:
	.4byte gUnknown_08662A00
_0805CBE8:
	.4byte 0x03000540
_0805CBEC:
	.4byte 0xFFFFFE00
_0805CBF0:
	.4byte 0x030004EA
_0805CBF4:
	.4byte 0x03000518
_0805CBF8:
	.4byte 0x0300050A
_0805CBFC:
	mov r0, r10
	strb r0, [r3, #16]
	add r0, r7, #0
	add r0, r0, #64
	mov r1, r10
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_0805CC12:
	strb r0, [r2]
	mov r0, #0
	str r0, [r3, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r3, #12]
	strb r0, [r3, #19]
	strb r0, [r3, #17]
	strb r0, [r3, #18]
	str r0, [r3, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805CAD4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805CC48
sub_0805CC48: @ 0x0805CC48
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r8, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0805CD50  @ =0x0805CF69
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0805CD54  @ =0x0805DF51
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	mov r9, r1
	strh r2, [r7]
	mov r2, #1
	mov r10, r2
	strh r0, [r7, #4]
	mov r0, #10
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0805CD58  @ =gUnknown_08662A00
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0805CD5C  @ =0x03000541
	mov r2, #129
	add r2, r2, r7
	mov r12, r2
	mov r0, r8
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	mov r1, r12
	ldrb r4, [r1]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r8
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0805CD60  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r9
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _0805CD64  @ =0x030004EA
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r1, _0805CD68  @ =0x03000518
	mov r2, r9
	strb r2, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	ldr r0, _0805CD6C  @ =0x0300050A
	ldrb r0, [r0]
	add r3, r1, #0
	cmp r0, #0
	beq _0805CD70
	strb r2, [r3, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _0805CD86
_0805CD50:
	.4byte sub_0805CF68
_0805CD54:
	.4byte sub_0805DF50
_0805CD58:
	.4byte gUnknown_08662A00
_0805CD5C:
	.4byte 0x03000541
_0805CD60:
	.4byte 0xFFFFFE00
_0805CD64:
	.4byte 0x030004EA
_0805CD68:
	.4byte 0x03000518
_0805CD6C:
	.4byte 0x0300050A
_0805CD70:
	mov r0, r10
	strb r0, [r3, #16]
	add r0, r7, #0
	add r0, r0, #64
	mov r1, r10
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_0805CD86:
	strb r0, [r2]
	mov r0, #0
	str r0, [r3, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r3, #12]
	strb r0, [r3, #19]
	strb r0, [r3, #17]
	strb r0, [r3, #18]
	str r0, [r3, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805CC48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805CDBC
sub_0805CDBC: @ 0x0805CDBC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #28]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0805CDF4  @ =0x0805CF69
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0805CDF8  @ =0x0805DF51
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #1
	strb r0, [r1]
	strh r2, [r7]
	ldr r0, _0805CDFC  @ =0x0300050B
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CE00
	mov r0, #3
	b _0805CE12
	.byte 0x00
	.byte 0x00
_0805CDF4:
	.4byte sub_0805CF68
_0805CDF8:
	.4byte sub_0805DF50
_0805CDFC:
	.4byte 0x0300050B
_0805CE00:
	ldr r0, _0805CE0C  @ =0x03000510
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CE10
	mov r0, #7
	b _0805CE12
_0805CE0C:
	.4byte 0x03000510
_0805CE10:
	mov r0, #2
_0805CE12:
	strh r0, [r7, #4]
	mov r1, #0
	mov r8, r1
	mov r0, #10
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0805CEE8  @ =gUnknown_08662A00
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0805CEEC  @ =0x03000540
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r9
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r9
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0805CEF0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r8
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, _0805CEF4  @ =0x030004EA
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r1, _0805CEF8  @ =0x03000518
	mov r2, r8
	strb r2, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	ldr r0, _0805CEFC  @ =0x0300050A
	ldrb r0, [r0]
	add r3, r1, #0
	cmp r0, #0
	beq _0805CF00
	strb r2, [r3, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _0805CF14
_0805CEE8:
	.4byte gUnknown_08662A00
_0805CEEC:
	.4byte 0x03000540
_0805CEF0:
	.4byte 0xFFFFFE00
_0805CEF4:
	.4byte 0x030004EA
_0805CEF8:
	.4byte 0x03000518
_0805CEFC:
	.4byte 0x0300050A
_0805CF00:
	mov r1, #1
	strb r1, [r3, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_0805CF14:
	strb r0, [r2]
	mov r4, #0
	str r4, [r3, #8]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r3, #12]
	strb r4, [r3, #19]
	strb r4, [r3, #17]
	strb r4, [r3, #18]
	str r4, [r3, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	ldr r1, _0805CF48  @ =0x0300050B
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805CF3C
	strb r4, [r1]
_0805CF3C:
	ldr r0, _0805CF4C  @ =0x03000510
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CF50
	str r4, [r7, #92]
	b _0805CF56
_0805CF48:
	.4byte 0x0300050B
_0805CF4C:
	.4byte 0x03000510
_0805CF50:
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r7, #92]
_0805CF56:
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r7, #96]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805CDBC

	THUMB_FUNC_START sub_0805CF68
sub_0805CF68: @ 0x0805CF68
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _0805CFA4  @ =gUnknown_03001A1C
	ldr r1, [r1]
	ldr r2, _0805CFA8  @ =0x00001008
	and r1, r1, r2
	cmp r1, #0
	bne _0805CFB0
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0805CFAC  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _0805CFB6
_0805CFA4:
	.4byte gUnknown_03001A1C
_0805CFA8:
	.4byte 0x00001008
_0805CFAC:
	.4byte 0x00007FFF
_0805CFB0:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0805CFB6:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805CF68

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805CFE4
sub_0805CFE4: @ 0x0805CFE4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #48
	add r6, r0, #0
	ldr r0, _0805D01C  @ =0x03001940
	mov r8, r0
	add r7, r6, #0
	add r7, r7, #61
	ldrb r2, [r7]
	ldr r3, [r0]
	add r0, r6, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	bgt _0805D014
	ldr r0, [r6, #36]
	asr r0, r0, #8
	ldr r1, _0805D020  @ =gUnknown_030012E4
	mov r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	blt _0805D024
_0805D014:
	add r0, r2, #0
	bl sub_08039B64
	b _0805D414
_0805D01C:
	.4byte 0x03001940
_0805D020:
	.4byte gUnknown_030012E4
_0805D024:
	ldr r2, [r6, #76]
	cmp r2, #0
	beq _0805D02C
	b _0805D220
_0805D02C:
	ldr r0, _0805D04C  @ =0x030019AC
	ldr r3, [r0]
	ldr r1, [r3, #92]
	mov r2, #128
	lsl r2, r2, #18
	and r1, r1, r2
	add r4, r0, #0
	cmp r1, #0
	beq _0805D054
	ldr r0, _0805D050  @ =0x03001978
	mov r1, #1
	strb r1, [r0]
	ldrb r0, [r7]
	bl sub_08039B64
	b _0805D2B6
_0805D04C:
	.4byte 0x030019AC
_0805D050:
	.4byte 0x03001978
_0805D054:
	ldrh r1, [r3, #4]
	add r0, r1, #0
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bls _0805D07A
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #25
	beq _0805D07A
	cmp r0, #26
	beq _0805D07A
	ldr r2, _0805D104  @ =0xFFFFFE66
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #3
	bhi _0805D084
_0805D07A:
	ldr r0, [r4]
	ldr r1, [r0, #112]
	ldr r0, [r6, #112]
	cmp r1, r0
	bge _0805D094
_0805D084:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bls _0805D094
	b _0805D1A8
_0805D094:
	add r7, r6, #0
	add r7, r7, #61
	ldrb r0, [r7]
	mov r1, #117
	mov r2, #0
	bl sub_080410B4
	mov r4, #4
	ldrsh r0, [r6, r4]
	mov r8, r7
	cmp r0, #0
	beq _0805D0B0
	cmp r0, #2
	bne _0805D11C
_0805D0B0:
	ldr r0, _0805D108  @ =0x00000FFF
	ldr r3, [r6, #32]
	cmp r3, r0
	ble _0805D0CE
	ldr r0, _0805D10C  @ =0x00003FFF
	cmp r3, r0
	ble _0805D0CE
	ldr r0, _0805D110  @ =0x00006FFF
	cmp r3, r0
	ble _0805D0CE
	ldr r0, _0805D114  @ =0x00009FFF
	cmp r3, r0
	ble _0805D0CE
	mov r0, #208
	lsl r0, r0, #8
_0805D0CE:
	ldr r5, _0805D118  @ =0x03000510
	mov r0, #1
	strb r0, [r5]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r6, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #202
	mov r2, #0
	bl sub_08038DF4
	strb r4, [r5]
	mov r1, r8
	ldrb r0, [r1]
	bl sub_08039B64
	b _0805D414
	.byte 0x00
	.byte 0x00
_0805D104:
	.4byte 0xFFFFFE66
_0805D108:
	.4byte 0x00000FFF
_0805D10C:
	.4byte 0x00003FFF
_0805D110:
	.4byte 0x00006FFF
_0805D114:
	.4byte 0x00009FFF
_0805D118:
	.4byte 0x03000510
_0805D11C:
	ldrb r0, [r7]
	ldr r5, _0805D174  @ =0x03001940
	ldr r1, [r5]
	mov r4, #176
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r0, [r0]
	ldr r1, [r6, #32]
	asr r1, r1, #8
	add r1, r1, #8
	ldr r2, [r6, #36]
	asr r2, r2, #8
	sub r2, r2, #8
	bl sub_08031A64
	ldr r2, _0805D178  @ =gUnknown_03000B6C
	ldrb r0, [r7]
	ldr r1, [r5]
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r1, [r2]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805D17C  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0805D188
	ldr r0, _0805D180  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D184  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_0804A644
	b _0805D19A
_0805D174:
	.4byte 0x03001940
_0805D178:
	.4byte gUnknown_03000B6C
_0805D17C:
	.4byte 0x030019AC
_0805D180:
	.4byte 0x03000541
_0805D184:
	.4byte gUnknown_08662A00
_0805D188:
	ldr r0, _0805D1A0  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D1A4  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
_0805D19A:
	mov r0, #128
	lsl r0, r0, #13
	b _0805D412
_0805D1A0:
	.4byte 0x03000541
_0805D1A4:
	.4byte gUnknown_08662A00
_0805D1A8:
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0805D1F4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805D208
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0805D1FC
	ldr r1, _0805D1F8  @ =0x030019A8
	mov r0, #1
	b _0805D20C
_0805D1F4:
	.4byte gUnknown_03001A1C
_0805D1F8:
	.4byte 0x030019A8
_0805D1FC:
	ldr r1, _0805D204  @ =0x03001978
	mov r0, #3
	b _0805D20C
	.byte 0x00
	.byte 0x00
_0805D204:
	.4byte 0x03001978
_0805D208:
	ldr r1, _0805D21C  @ =0x03001978
	mov r0, #2
_0805D20C:
	strb r0, [r1]
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0805D414
	.byte 0x00
	.byte 0x00
_0805D21C:
	.4byte 0x03001978
_0805D220:
	ldr r0, _0805D238  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0805D23C
	mov r0, #1
	neg r0, r0
	str r0, [r6, #76]
	b _0805D2B6
_0805D238:
	.4byte 0x030019AC
_0805D23C:
	cmp r2, #0
	blt _0805D2B6
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r3
	ldrh r5, [r0]
	cmp r5, #176
	bne _0805D2B6
	add r4, sp, #8
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #7
	strh r0, [r4, #2]
	ldr r0, _0805D310  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D314  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
	ldrb r0, [r7]
	mov r1, #244
	mov r2, #0
	bl sub_080410B4
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r6, #92]
	ldr r0, [r6, #76]
	add r1, r0, #0
	mul r1, r5, r1
	mov r2, r8
	ldr r0, [r2]
	add r0, r0, r1
	add r1, sp, #8
	mov r2, #7
	bl sub_0803ED98
	ldr r0, [r6, #76]
	mov r4, r8
	ldr r3, [r4]
	add r1, r0, #0
	mul r1, r5, r1
	add r1, r1, r3
	ldr r0, [r1, #92]
	ldr r2, _0805D318  @ =0xFFFFF3FF
	and r0, r0, r2
	str r0, [r1, #92]
	ldr r0, [r6, #76]
	add r1, r0, #0
	mul r1, r5, r1
	add r1, r1, r3
	ldr r0, [r1, #96]
	ldr r2, _0805D31C  @ =0xBFF0FFFF
	and r0, r0, r2
	str r0, [r1, #96]
_0805D2B6:
	ldr r0, [r6, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0805D2C8
	b _0805D404
_0805D2C8:
	ldr r1, [r6, #36]
	ldr r0, _0805D320  @ =0x000077FF
	ldrh r4, [r6, #4]
	cmp r1, r0
	ble _0805D324
	cmp r4, #2
	bne _0805D324
	add r4, r6, #0
	add r4, r4, #61
	ldrb r0, [r4]
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r6, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl sub_08038DF4
	ldrb r0, [r4]
	bl sub_08039B64
	b _0805D404
_0805D310:
	.4byte 0x03000541
_0805D314:
	.4byte gUnknown_08662A00
_0805D318:
	.4byte 0xFFFFF3FF
_0805D31C:
	.4byte 0xBFF0FFFF
_0805D320:
	.4byte 0x000077FF
_0805D324:
	ldr r1, [r6, #32]
	ldr r0, _0805D330  @ =0x00000FFF
	cmp r1, r0
	bgt _0805D334
	mov r1, #1
	b _0805D382
_0805D330:
	.4byte 0x00000FFF
_0805D334:
	mov r0, #208
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805D340
	mov r1, #0
	b _0805D382
_0805D340:
	lsl r0, r4, #16
	asr r0, r0, #16
	cmp r0, #0
	beq _0805D34C
	cmp r0, #2
	bne _0805D364
_0805D34C:
	mov r2, #0
	ldr r0, _0805D360  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805D35A
	mov r2, #1
_0805D35A:
	add r1, r2, #0
	b _0805D382
	.byte 0x00
	.byte 0x00
_0805D360:
	.4byte 0x030019AC
_0805D364:
	ldr r0, _0805D39C  @ =gUnknown_08662778
	ldr r3, _0805D3A0  @ =0x03000512
	ldrh r1, [r3]
	add r2, r1, #1
	strh r2, [r3]
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r1, r1, r0
	ldrb r1, [r1]
	lsl r2, r2, #16
	lsr r2, r2, #16
	cmp r2, #16
	bne _0805D382
	mov r0, #0
	strh r0, [r3]
_0805D382:
	lsl r0, r4, #16
	asr r0, r0, #16
	cmp r0, #0
	bne _0805D3AC
	lsl r2, r1, #24
	lsr r2, r2, #24
	ldr r0, _0805D3A4  @ =0x03000540
	ldrb r3, [r0]
	ldr r0, _0805D3A8  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #4
	b _0805D3C0
_0805D39C:
	.4byte gUnknown_08662778
_0805D3A0:
	.4byte 0x03000512
_0805D3A4:
	.4byte 0x03000540
_0805D3A8:
	.4byte gUnknown_08662A00
_0805D3AC:
	cmp r0, #2
	bne _0805D3DC
	lsl r2, r1, #24
	lsr r2, r2, #24
	ldr r0, _0805D3D4  @ =0x03000540
	ldrb r3, [r0]
	ldr r0, _0805D3D8  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
_0805D3C0:
	bl sub_0804A644
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #243
	mov r2, #0
	bl sub_080410B4
	b _0805D3FE
_0805D3D4:
	.4byte 0x03000540
_0805D3D8:
	.4byte gUnknown_08662A00
_0805D3DC:
	lsl r2, r1, #24
	lsr r2, r2, #24
	ldr r0, _0805D420  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D424  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #5
	bl sub_0804A644
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #244
	mov r2, #0
	bl sub_080410B4
_0805D3FE:
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r6, #92]
_0805D404:
	add r0, r6, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0805D414
	mov r0, #0
_0805D412:
	str r0, [r6, #92]
_0805D414:
	add sp, sp, #48
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0805D420:
	.4byte 0x03000541
_0805D424:
	.4byte gUnknown_08662A00
	THUMB_FUNC_END sub_0805CFE4

	THUMB_FUNC_START sub_0805D428
sub_0805D428: @ 0x0805D428
	push {r4-r6,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #61
	ldrb r3, [r5]
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	bgt _0805D44C
	ldr r2, [r4, #36]
	asr r0, r2, #8
	ldr r1, _0805D454  @ =gUnknown_030012E4
	mov r6, #0
	ldrsh r1, [r1, r6]
	cmp r0, r1
	blt _0805D458
_0805D44C:
	add r0, r3, #0
	bl sub_08039B64
	b _0805D61A
_0805D454:
	.4byte gUnknown_030012E4
_0805D458:
	mov r0, #176
	lsl r0, r0, #7
	cmp r2, r0
	ble _0805D468
	ldr r0, [r4, #92]
	ldr r1, _0805D490  @ =0xFFEFFFFF
	and r0, r0, r1
	str r0, [r4, #92]
_0805D468:
	ldr r0, [r4, #76]
	cmp r0, #0
	beq _0805D470
	b _0805D5BC
_0805D470:
	ldr r0, _0805D494  @ =0x030019AC
	ldr r3, [r0]
	ldr r1, [r3, #92]
	mov r2, #128
	lsl r2, r2, #18
	and r1, r1, r2
	add r6, r0, #0
	cmp r1, #0
	beq _0805D49C
	ldr r0, _0805D498  @ =0x03001978
	mov r1, #1
	strb r1, [r0]
	ldrb r0, [r5]
	bl sub_08039B64
	b _0805D5D2
_0805D490:
	.4byte 0xFFEFFFFF
_0805D494:
	.4byte 0x030019AC
_0805D498:
	.4byte 0x03001978
_0805D49C:
	ldrh r1, [r3, #4]
	add r0, r1, #0
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bls _0805D4C2
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #25
	beq _0805D4C2
	cmp r0, #26
	beq _0805D4C2
	ldr r2, _0805D4F4  @ =0xFFFFFE66
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #3
	bhi _0805D4CC
_0805D4C2:
	ldr r0, [r6]
	ldr r1, [r0, #112]
	ldr r0, [r4, #112]
	cmp r1, r0
	bge _0805D4DA
_0805D4CC:
	ldr r1, [r6]
	ldrh r0, [r1, #4]
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bhi _0805D544
_0805D4DA:
	ldr r1, [r4, #32]
	ldr r0, _0805D4F8  @ =0x00000FFF
	cmp r1, r0
	ble _0805D4EE
	ldr r0, _0805D4FC  @ =0x00003FFF
	cmp r1, r0
	ble _0805D514
	ldr r0, _0805D500  @ =0x00006FFF
	cmp r1, r0
	bgt _0805D504
_0805D4EE:
	mov r5, #1
	b _0805D516
	.byte 0x00
	.byte 0x00
_0805D4F4:
	.4byte 0xFFFFFE66
_0805D4F8:
	.4byte 0x00000FFF
_0805D4FC:
	.4byte 0x00003FFF
_0805D500:
	.4byte 0x00006FFF
_0805D504:
	ldr r0, _0805D538  @ =0x00009FFF
	cmp r1, r0
	ble _0805D514
	mov r0, #208
	lsl r0, r0, #8
	mov r5, #1
	cmp r1, r0
	ble _0805D516
_0805D514:
	mov r5, #0
_0805D516:
	ldr r0, [r6]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #117
	mov r2, #0
	bl sub_080410B4
	add r2, r5, #0
	ldr r0, _0805D53C  @ =0x03000540
	ldrb r3, [r0]
	ldr r0, _0805D540  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _0805D61A
_0805D538:
	.4byte 0x00009FFF
_0805D53C:
	.4byte 0x03000540
_0805D540:
	.4byte gUnknown_08662A00
_0805D544:
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0805D590  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, [r6]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r6]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805D5A4
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0805D598
	ldr r1, _0805D594  @ =0x030019A8
	mov r0, #1
	b _0805D5A8
_0805D590:
	.4byte gUnknown_03001A1C
_0805D594:
	.4byte 0x030019A8
_0805D598:
	ldr r1, _0805D5A0  @ =0x03001978
	mov r0, #3
	b _0805D5A8
	.byte 0x00
	.byte 0x00
_0805D5A0:
	.4byte 0x03001978
_0805D5A4:
	ldr r1, _0805D5B8  @ =0x03001978
	mov r0, #2
_0805D5A8:
	strb r0, [r1]
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0805D61A
	.byte 0x00
	.byte 0x00
_0805D5B8:
	.4byte 0x03001978
_0805D5BC:
	ldr r0, _0805D624  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0805D5D2
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
_0805D5D2:
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805D61A
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r5]
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl sub_08038DF4
	ldrb r0, [r5]
	bl sub_08039B64
_0805D61A:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805D624:
	.4byte 0x030019AC
	THUMB_FUNC_END sub_0805D428

	THUMB_FUNC_START sub_0805D628
sub_0805D628: @ 0x0805D628
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #48
	add r6, r0, #0
	ldr r0, _0805D660  @ =0x03001940
	mov r8, r0
	add r7, r6, #0
	add r7, r7, #61
	ldrb r2, [r7]
	ldr r3, [r0]
	add r0, r6, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	bgt _0805D658
	ldr r0, [r6, #36]
	asr r0, r0, #8
	ldr r1, _0805D664  @ =gUnknown_030012E4
	mov r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	blt _0805D668
_0805D658:
	add r0, r2, #0
	bl sub_08039B64
	b _0805DAB2
_0805D660:
	.4byte 0x03001940
_0805D664:
	.4byte gUnknown_030012E4
_0805D668:
	ldr r2, [r6, #76]
	cmp r2, #0
	beq _0805D670
	b _0805D8C4
_0805D670:
	ldr r0, _0805D690  @ =0x030019AC
	ldr r3, [r0]
	ldr r1, [r3, #92]
	mov r2, #128
	lsl r2, r2, #18
	and r1, r1, r2
	add r4, r0, #0
	cmp r1, #0
	beq _0805D698
	ldr r0, _0805D694  @ =0x03001978
	mov r1, #1
	strb r1, [r0]
	ldrb r0, [r7]
	bl sub_08039B64
	b _0805D95A
_0805D690:
	.4byte 0x030019AC
_0805D694:
	.4byte 0x03001978
_0805D698:
	ldrh r1, [r3, #4]
	add r0, r1, #0
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #43
	bls _0805D6BE
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #25
	beq _0805D6BE
	cmp r0, #26
	beq _0805D6BE
	ldr r2, _0805D744  @ =0xFFFFFE66
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #3
	bhi _0805D6C8
_0805D6BE:
	ldr r0, [r4]
	ldr r1, [r0, #112]
	ldr r0, [r6, #112]
	cmp r1, r0
	bge _0805D6D8
_0805D6C8:
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bls _0805D6D8
	b _0805D84C
_0805D6D8:
	add r7, r6, #0
	add r7, r7, #61
	ldrb r0, [r7]
	mov r1, #117
	mov r2, #0
	bl sub_080410B4
	mov r4, #4
	ldrsh r0, [r6, r4]
	mov r8, r7
	cmp r0, #4
	bne _0805D75C
	ldr r0, _0805D748  @ =0x00000FFF
	ldr r3, [r6, #32]
	cmp r3, r0
	ble _0805D70E
	ldr r0, _0805D74C  @ =0x00003FFF
	cmp r3, r0
	ble _0805D70E
	ldr r0, _0805D750  @ =0x00006FFF
	cmp r3, r0
	ble _0805D70E
	ldr r0, _0805D754  @ =0x00009FFF
	cmp r3, r0
	ble _0805D70E
	mov r0, #208
	lsl r0, r0, #8
_0805D70E:
	ldr r5, _0805D758  @ =0x03000510
	mov r0, #1
	strb r0, [r5]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r6, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #202
	mov r2, #0
	bl sub_08038DF4
	strb r4, [r5]
	mov r1, r8
	ldrb r0, [r1]
	bl sub_08039B64
	b _0805DAB2
	.byte 0x00
	.byte 0x00
_0805D744:
	.4byte 0xFFFFFE66
_0805D748:
	.4byte 0x00000FFF
_0805D74C:
	.4byte 0x00003FFF
_0805D750:
	.4byte 0x00006FFF
_0805D754:
	.4byte 0x00009FFF
_0805D758:
	.4byte 0x03000510
_0805D75C:
	cmp r0, #6
	bne _0805D7C0
	ldr r1, [r6, #32]
	ldr r0, _0805D778  @ =0x00000FFF
	cmp r1, r0
	ble _0805D774
	ldr r0, _0805D77C  @ =0x00003FFF
	cmp r1, r0
	ble _0805D794
	ldr r0, _0805D780  @ =0x00006FFF
	cmp r1, r0
	bgt _0805D784
_0805D774:
	mov r3, #1
	b _0805D796
_0805D778:
	.4byte 0x00000FFF
_0805D77C:
	.4byte 0x00003FFF
_0805D780:
	.4byte 0x00006FFF
_0805D784:
	ldr r0, _0805D7B4  @ =0x00009FFF
	cmp r1, r0
	ble _0805D794
	mov r0, #208
	lsl r0, r0, #8
	mov r3, #1
	cmp r1, r0
	ble _0805D796
_0805D794:
	mov r3, #0
_0805D796:
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r0, _0805D7B8  @ =0x03000540
	ldrb r3, [r0]
	ldr r0, _0805D7BC  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #7
	bl sub_0804A644
	mov r0, #0
	str r0, [r6, #92]
	sub r0, r0, #1
	str r0, [r6, #76]
	b _0805DAB2
_0805D7B4:
	.4byte 0x00009FFF
_0805D7B8:
	.4byte 0x03000540
_0805D7BC:
	.4byte gUnknown_08662A00
_0805D7C0:
	ldrb r0, [r7]
	ldr r5, _0805D818  @ =0x03001940
	ldr r1, [r5]
	mov r4, #176
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r0, [r0]
	ldr r1, [r6, #32]
	asr r1, r1, #8
	add r1, r1, #8
	ldr r2, [r6, #36]
	asr r2, r2, #8
	sub r2, r2, #8
	bl sub_08031A64
	ldr r2, _0805D81C  @ =gUnknown_03000B6C
	ldrb r0, [r7]
	ldr r1, [r5]
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r1, [r2]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805D820  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0805D82C
	ldr r0, _0805D824  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D828  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_0804A644
	b _0805D83E
_0805D818:
	.4byte 0x03001940
_0805D81C:
	.4byte gUnknown_03000B6C
_0805D820:
	.4byte 0x030019AC
_0805D824:
	.4byte 0x03000541
_0805D828:
	.4byte gUnknown_08662A00
_0805D82C:
	ldr r0, _0805D844  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D848  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
_0805D83E:
	mov r0, #128
	lsl r0, r0, #13
	b _0805DAB0
_0805D844:
	.4byte 0x03000541
_0805D848:
	.4byte gUnknown_08662A00
_0805D84C:
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0805D898  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805D8AC
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0805D8A0
	ldr r1, _0805D89C  @ =0x030019A8
	mov r0, #1
	b _0805D8B0
_0805D898:
	.4byte gUnknown_03001A1C
_0805D89C:
	.4byte 0x030019A8
_0805D8A0:
	ldr r1, _0805D8A8  @ =0x03001978
	mov r0, #3
	b _0805D8B0
	.byte 0x00
	.byte 0x00
_0805D8A8:
	.4byte 0x03001978
_0805D8AC:
	ldr r1, _0805D8C0  @ =0x03001978
	mov r0, #2
_0805D8B0:
	strb r0, [r1]
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0805DAB2
	.byte 0x00
	.byte 0x00
_0805D8C0:
	.4byte 0x03001978
_0805D8C4:
	ldr r0, _0805D8DC  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0805D8E0
	mov r0, #1
	neg r0, r0
	str r0, [r6, #76]
	b _0805D95A
_0805D8DC:
	.4byte 0x030019AC
_0805D8E0:
	cmp r2, #0
	blt _0805D95A
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r3
	ldrh r5, [r0]
	cmp r5, #176
	bne _0805D95A
	add r4, sp, #8
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #7
	strh r0, [r4, #2]
	ldr r0, _0805D9B4  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805D9B8  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
	ldrb r0, [r7]
	mov r1, #244
	mov r2, #0
	bl sub_080410B4
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r6, #92]
	ldr r0, [r6, #76]
	add r1, r0, #0
	mul r1, r5, r1
	mov r2, r8
	ldr r0, [r2]
	add r0, r0, r1
	add r1, sp, #8
	mov r2, #7
	bl sub_0803ED98
	ldr r0, [r6, #76]
	mov r4, r8
	ldr r3, [r4]
	add r1, r0, #0
	mul r1, r5, r1
	add r1, r1, r3
	ldr r0, [r1, #92]
	ldr r2, _0805D9BC  @ =0xFFFFF3FF
	and r0, r0, r2
	str r0, [r1, #92]
	ldr r0, [r6, #76]
	add r1, r0, #0
	mul r1, r5, r1
	add r1, r1, r3
	ldr r0, [r1, #96]
	ldr r2, _0805D9C0  @ =0xBFF0FFFF
	and r0, r0, r2
	str r0, [r1, #96]
_0805D95A:
	ldr r0, [r6, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0805D96C
	b _0805DAA8
_0805D96C:
	ldr r1, [r6, #36]
	ldr r0, _0805D9C4  @ =0x000077FF
	ldrh r5, [r6, #4]
	cmp r1, r0
	ble _0805D9C8
	cmp r5, #6
	bne _0805D9C8
	add r4, r6, #0
	add r4, r4, #61
	ldrb r0, [r4]
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r6, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl sub_08038DF4
	ldrb r0, [r4]
	bl sub_08039B64
	b _0805DAA8
_0805D9B4:
	.4byte 0x03000541
_0805D9B8:
	.4byte gUnknown_08662A00
_0805D9BC:
	.4byte 0xFFFFF3FF
_0805D9C0:
	.4byte 0xBFF0FFFF
_0805D9C4:
	.4byte 0x000077FF
_0805D9C8:
	ldr r1, [r6, #32]
	ldr r0, _0805D9D4  @ =0x00000FFF
	cmp r1, r0
	bgt _0805D9D8
	mov r3, #1
	b _0805DA26
_0805D9D4:
	.4byte 0x00000FFF
_0805D9D8:
	mov r0, #208
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805D9E4
	mov r3, #0
	b _0805DA26
_0805D9E4:
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r0, #4
	beq _0805D9F0
	cmp r0, #6
	bne _0805DA08
_0805D9F0:
	mov r2, #0
	ldr r0, _0805DA04  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805D9FE
	mov r2, #1
_0805D9FE:
	add r3, r2, #0
	b _0805DA26
	.byte 0x00
	.byte 0x00
_0805DA04:
	.4byte 0x030019AC
_0805DA08:
	ldr r0, _0805DA40  @ =gUnknown_08662778
	ldr r4, _0805DA44  @ =0x03000512
	ldrh r1, [r4]
	add r2, r1, #1
	strh r2, [r4]
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r1, r1, r0
	ldrb r3, [r1]
	lsl r2, r2, #16
	lsr r2, r2, #16
	cmp r2, #16
	bne _0805DA26
	mov r0, #0
	strh r0, [r4]
_0805DA26:
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r0, #4
	bne _0805DA50
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r0, _0805DA48  @ =0x03000540
	ldrb r3, [r0]
	ldr r0, _0805DA4C  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #4
	b _0805DA64
_0805DA40:
	.4byte gUnknown_08662778
_0805DA44:
	.4byte 0x03000512
_0805DA48:
	.4byte 0x03000540
_0805DA4C:
	.4byte gUnknown_08662A00
_0805DA50:
	cmp r0, #6
	bne _0805DA80
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r0, _0805DA78  @ =0x03000540
	ldrb r3, [r0]
	ldr r0, _0805DA7C  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
_0805DA64:
	bl sub_0804A644
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #243
	mov r2, #0
	bl sub_080410B4
	b _0805DAA2
_0805DA78:
	.4byte 0x03000540
_0805DA7C:
	.4byte gUnknown_08662A00
_0805DA80:
	lsl r2, r3, #24
	lsr r2, r2, #24
	ldr r0, _0805DAC0  @ =0x03000541
	ldrb r3, [r0]
	ldr r0, _0805DAC4  @ =gUnknown_08662A00
	str r0, [sp]
	add r0, r6, #0
	mov r1, #5
	bl sub_0804A644
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #244
	mov r2, #0
	bl sub_080410B4
_0805DAA2:
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r6, #92]
_0805DAA8:
	ldrh r0, [r6, #8]
	cmp r0, #24
	bne _0805DAB2
	mov r0, #0
_0805DAB0:
	str r0, [r6, #92]
_0805DAB2:
	add sp, sp, #48
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805DAC0:
	.4byte 0x03000541
_0805DAC4:
	.4byte gUnknown_08662A00
	THUMB_FUNC_END sub_0805D628

	THUMB_FUNC_START sub_0805DAC8
sub_0805DAC8: @ 0x0805DAC8
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #61
	ldrb r2, [r5]
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	bgt _0805DAEC
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0805DAF4  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _0805DAF8
_0805DAEC:
	add r0, r2, #0
	bl sub_08039B64
	b _0805DB3C
_0805DAF4:
	.4byte gUnknown_030012E4
_0805DAF8:
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805DB3C
	add r0, r2, #0
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl sub_08038DF4
	ldrb r0, [r5]
	bl sub_08039B64
_0805DB3C:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805DAC8

	THUMB_FUNC_START sub_0805DB44
sub_0805DB44: @ 0x0805DB44
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _0805DB90  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _0805DB64
	ldr r0, _0805DB94  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _0805DB64
	b _0805DC7E
_0805DB64:
	ldr r0, _0805DB98  @ =0x030004E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805DBB4
	ldr r2, _0805DB9C  @ =0x040000D4
	ldr r0, _0805DBA0  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805DBA4  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0805DBA8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0805DBAC  @ =0x030004F0
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _0805DBB0  @ =gUnknown_08543384
	b _0805DBD8
	.byte 0x00
	.byte 0x00
_0805DB90:
	.4byte gNextMainState
_0805DB94:
	.4byte gUnknown_030019A0
_0805DB98:
	.4byte 0x030004E8
_0805DB9C:
	.4byte 0x040000D4
_0805DBA0:
	.4byte gUnknown_0854337C
_0805DBA4:
	.4byte gOamBuffer
_0805DBA8:
	.4byte 0x84000002
_0805DBAC:
	.4byte 0x030004F0
_0805DBB0:
	.4byte gUnknown_08543384
_0805DBB4:
	cmp r0, #2
	bne _0805DC7E
	ldr r2, _0805DC84  @ =0x040000D4
	ldr r0, _0805DC88  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805DC8C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0805DC90  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0805DC94  @ =0x030004F0
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _0805DC98  @ =gUnknown_0851F568
_0805DBD8:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _0805DC9C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0805DCA0  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _0805DCA4  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _0805DCA8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, _0805DCAC  @ =0x030004F8
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _0805DCB0  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _0805DCB4  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0805DCB8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _0805DCBC  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _0805DCC0  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
_0805DC7E:
	pop {r4-r7}
	pop {r0}
	bx r0
_0805DC84:
	.4byte 0x040000D4
_0805DC88:
	.4byte gUnknown_0851F560
_0805DC8C:
	.4byte gOamBuffer
_0805DC90:
	.4byte 0x84000002
_0805DC94:
	.4byte 0x030004F0
_0805DC98:
	.4byte gUnknown_0851F568
_0805DC9C:
	.4byte 0x06010000
_0805DCA0:
	.4byte 0x84000100
_0805DCA4:
	.4byte 0x000003FF
_0805DCA8:
	.4byte 0xFFFFFC00
_0805DCAC:
	.4byte 0x030004F8
_0805DCB0:
	.4byte gUnknown_030012A0
_0805DCB4:
	.4byte 0x000001FF
_0805DCB8:
	.4byte 0xFFFFFE00
_0805DCBC:
	.4byte 0x030019AC
_0805DCC0:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_0805DB44

	THUMB_FUNC_START sub_0805DCC4
sub_0805DCC4: @ 0x0805DCC4
	ldr r0, _0805DCF8  @ =0x03000516
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0805DCFC  @ =0x03000512
	strh r1, [r0]
	ldr r2, _0805DD00  @ =0x0300050A
	mov r0, #1
	strb r0, [r2]
	ldr r0, _0805DD04  @ =0x0300050B
	strb r1, [r0]
	ldr r0, _0805DD08  @ =0x0300050C
	strb r1, [r0]
	ldr r2, _0805DD0C  @ =0x0300050D
	mov r0, #2
	strb r0, [r2]
	ldr r0, _0805DD10  @ =0x0300050E
	strb r1, [r0]
	ldr r2, _0805DD14  @ =0x03000514
	mov r0, #240
	strh r0, [r2]
	ldr r0, _0805DD18  @ =0x03001D00
	strb r1, [r0]
	ldr r0, _0805DD1C  @ =0x03000510
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0805DCF8:
	.4byte 0x03000516
_0805DCFC:
	.4byte 0x03000512
_0805DD00:
	.4byte 0x0300050A
_0805DD04:
	.4byte 0x0300050B
_0805DD08:
	.4byte 0x0300050C
_0805DD0C:
	.4byte 0x0300050D
_0805DD10:
	.4byte 0x0300050E
_0805DD14:
	.4byte 0x03000514
_0805DD18:
	.4byte 0x03001D00
_0805DD1C:
	.4byte 0x03000510
	THUMB_FUNC_END sub_0805DCC4

	THUMB_FUNC_START sub_0805DD20
sub_0805DD20: @ 0x0805DD20
	push {r4,lr}
	add r3, r0, #0
	add r4, r3, #0
	ldr r1, _0805DD80  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805DD4A
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _0805DD5A
_0805DD4A:
	ldr r1, _0805DD84  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805DD7A
_0805DD5A:
	add r0, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r3, #0
	bl _call_via_r1
	ldr r1, _0805DD88  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #4
	and r1, r1, r2
	cmp r1, #0
	beq _0805DD7A
	bl sub_08071CD4
_0805DD7A:
	pop {r4}
	pop {r1}
	bx r1
_0805DD80:
	.4byte 0x030019AC
_0805DD84:
	.4byte gUnknown_03001C78
_0805DD88:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_0805DD20

	THUMB_FUNC_START sub_0805DD8C
sub_0805DD8C: @ 0x0805DD8C
	bx lr
	THUMB_FUNC_END sub_0805DD8C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805DD90
sub_0805DD90: @ 0x0805DD90
	bx lr
	THUMB_FUNC_END sub_0805DD90

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805DD94
sub_0805DD94: @ 0x0805DD94
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _0805DDE0  @ =0x03001940
	ldr r1, [r1]
	add r1, r1, #153
	mov r4, #0
	strb r4, [r1]
	ldr r2, _0805DDE4  @ =0x030004F2
	ldr r1, _0805DDE8  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r2]
	ldr r1, _0805DDEC  @ =0x030004E8
	strb r4, [r1]
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _0805DDF0  @ =0x030004E9
	ldrb r3, [r1]
	ldr r1, _0805DDF4  @ =gUnknown_086622A8
	str r1, [sp]
	mov r1, #1
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805DDE0:
	.4byte 0x03001940
_0805DDE4:
	.4byte 0x030004F2
_0805DDE8:
	.4byte gUnknown_0854301C
_0805DDEC:
	.4byte 0x030004E8
_0805DDF0:
	.4byte 0x030004E9
_0805DDF4:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805DD94

	THUMB_FUNC_START sub_0805DDF8
sub_0805DDF8: @ 0x0805DDF8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805DE2C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805DE34  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805DE38  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _0805DE3C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0805DE2C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805DE34:
	.4byte 0x030004E9
_0805DE38:
	.4byte gUnknown_086622A8
_0805DE3C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805DDF8

	THUMB_FUNC_START sub_0805DE40
sub_0805DE40: @ 0x0805DE40
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805DE70
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805DE78  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805DE7C  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
_0805DE70:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805DE78:
	.4byte 0x030004E9
_0805DE7C:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805DE40

	THUMB_FUNC_START sub_0805DE80
sub_0805DE80: @ 0x0805DE80
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805DEA2
	ldr r0, _0805DEA8  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805DEAC  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r2, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
_0805DEA2:
	add sp, sp, #4
	pop {r0}
	bx r0
_0805DEA8:
	.4byte 0x030004E9
_0805DEAC:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805DE80

	THUMB_FUNC_START sub_0805DEB0
sub_0805DEB0: @ 0x0805DEB0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805C718
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805DEDC
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805DEDC
	ldr r0, _0805DEE4  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805DEE8  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	mov r2, #0
	bl sub_0804A644
_0805DEDC:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805DEE4:
	.4byte 0x030004E9
_0805DEE8:
	.4byte gUnknown_086622A8
	THUMB_FUNC_END sub_0805DEB0

	THUMB_FUNC_START sub_0805DEEC
sub_0805DEEC: @ 0x0805DEEC
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805C718
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805DF0A
	ldr r0, _0805DF40  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0805DF38
_0805DF0A:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805DF38
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805DF44  @ =0x030004E9
	ldrb r3, [r0]
	ldr r0, _0805DF48  @ =gUnknown_086622A8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _0805DF4C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0805DF38:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805DF40:
	.4byte gUnknown_03001A1C
_0805DF44:
	.4byte 0x030004E9
_0805DF48:
	.4byte gUnknown_086622A8
_0805DF4C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805DEEC

	THUMB_FUNC_START sub_0805DF50
sub_0805DF50: @ 0x0805DF50
	push {lr}
	add r2, r0, #0
	ldr r1, _0805DF70  @ =gUnknown_03001C78
	ldr r1, [r1]
	mov r3, #4
	ldrsh r1, [r1, r3]
	cmp r1, #14
	bgt _0805DF6C
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r2, #0
	bl _call_via_r1
_0805DF6C:
	pop {r1}
	bx r1
_0805DF70:
	.4byte gUnknown_03001C78
	THUMB_FUNC_END sub_0805DF50

	THUMB_FUNC_START sub_0805DF74
sub_0805DF74: @ 0x0805DF74
	push {lr}
	add r2, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	ble _0805DF8E
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0805DFA6
_0805DF8E:
	ldr r0, [r2, #36]
	asr r0, r0, #8
	ldr r1, _0805DFAC  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _0805DFA6
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0805DFA6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805DFAC:
	.4byte gUnknown_030012E4
	THUMB_FUNC_END sub_0805DF74

	THUMB_FUNC_START sub_0805DFB0
sub_0805DFB0: @ 0x0805DFB0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r7, #0
	ldr r0, _0805DFD8  @ =0x03001D20
	mov r12, r0
	ldr r0, _0805DFDC  @ =gUnknown_0861DE70
	mov r8, r0
_0805DFC0:
	lsl r2, r7, #3
	mov r0, r12
	add r0, r0, #4
	add r6, r2, r0
	ldr r4, [r6]
	cmp r4, #2
	beq _0805E018
	cmp r4, #2
	bhi _0805DFE0
	cmp r4, #0
	beq _0805DFE6
	b _0805E0B4
_0805DFD8:
	.4byte 0x03001D20
_0805DFDC:
	.4byte gUnknown_0861DE70
_0805DFE0:
	cmp r4, #3
	beq _0805E07C
	b _0805E0B4
_0805DFE6:
	mov r0, r12
	add r3, r2, r0
	ldrh r0, [r3, #2]
	add r0, r0, #1
	strh r0, [r3, #2]
	ldrh r2, [r3]
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r8
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrb r1, [r1, #1]
	cmp r0, r1
	bne _0805E0B4
	strh r4, [r3, #2]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #16
	bne _0805E0B4
	strh r4, [r3]
	b _0805E0B4
_0805E018:
	ldr r1, _0805E02C  @ =0x030005D0
	lsl r0, r7, #1
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #29
	bhi _0805E030
	add r0, r0, #1
	strh r0, [r1]
	b _0805E0B4
	.byte 0x00
	.byte 0x00
_0805E02C:
	.4byte 0x030005D0
_0805E030:
	mov r0, r12
	add r4, r2, r0
	ldrh r1, [r4, #2]
	add r1, r1, #1
	mov r5, #0
	strh r1, [r4, #2]
	ldr r3, _0805E074  @ =gUnknown_086211E0
	ldrh r2, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0805E0B4
	strh r5, [r4, #2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #8
	bne _0805E0B4
	strh r5, [r4]
	str r5, [r6]
	ldr r0, _0805E078  @ =0x03000548
	mov r1, #1
	lsl r1, r1, r7
	ldrb r2, [r0]
	orr r1, r1, r2
	strb r1, [r0]
	b _0805E0B4
_0805E074:
	.4byte gUnknown_086211E0
_0805E078:
	.4byte 0x03000548
_0805E07C:
	mov r0, r12
	add r4, r2, r0
	ldrh r1, [r4, #2]
	add r1, r1, #1
	mov r5, #0
	strh r1, [r4, #2]
	ldr r3, _0805E0CC  @ =gUnknown_086200B8
	ldrh r2, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r3
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0805E0B4
	strh r5, [r4, #2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #8
	bne _0805E0B4
	strh r5, [r4]
	mov r0, #1
	str r0, [r6]
_0805E0B4:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #2
	bhi _0805E0C0
	b _0805DFC0
_0805E0C0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805E0CC:
	.4byte gUnknown_086200B8
	THUMB_FUNC_END sub_0805DFB0

	THUMB_FUNC_START sub_0805E0D0
sub_0805E0D0: @ 0x0805E0D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r5, r0, #0
	mov r8, r1
	mov r12, r2
	mov r0, #0
	mov r9, r0
	ldr r1, _0805E108  @ =0x03001D20
	mov r10, r1
	ldr r6, _0805E10C  @ =0x040000D4
	ldr r7, _0805E110  @ =gOamBuffer
_0805E0EC:
	mov r2, r9
	lsl r1, r2, #3
	mov r0, r10
	add r0, r0, #4
	add r0, r1, r0
	ldr r0, [r0]
	cmp r0, #2
	bne _0805E0FE
	b _0805E204
_0805E0FE:
	cmp r0, #2
	bhi _0805E114
	cmp r0, #0
	beq _0805E11C
	b _0805E318
_0805E108:
	.4byte 0x03001D20
_0805E10C:
	.4byte 0x040000D4
_0805E110:
	.4byte gOamBuffer
_0805E114:
	cmp r0, #3
	bne _0805E11A
	b _0805E23C
_0805E11A:
	b _0805E318
_0805E11C:
	mov r4, r10
	add r0, r1, r4
	ldrh r0, [r0]
	lsl r0, r0, #9
	ldr r1, _0805E1DC  @ =gUnknown_0861E0B8
	add r0, r0, r1
	str r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	ldr r1, _0805E1E0  @ =0x06010000
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0805E1E4  @ =0x84000080
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0805E1E8  @ =gUnknown_0861E0B0
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r0, _0805E1EC  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r2, r9
	lsl r4, r2, #2
	ldr r0, _0805E1F0  @ =0x03001D10
	add r4, r4, r0
	ldr r0, [r4]
	ldr r1, [r0, #32]
	asr r1, r1, #8
	sub r1, r1, #8
	ldr r2, _0805E1F4  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0805E1F8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [r4]
	ldr r0, [r0, #36]
	asr r0, r0, #8
	sub r0, r0, #12
	strb r0, [r1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r4, r8
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r4, _0805E1FC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0805E200  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r1, r9
	add r1, r1, #8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r0, [r2, #5]
	mov r1, #12
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	b _0805E2FA
_0805E1DC:
	.4byte gUnknown_0861E0B8
_0805E1E0:
	.4byte 0x06010000
_0805E1E4:
	.4byte 0x84000080
_0805E1E8:
	.4byte gUnknown_0861E0B0
_0805E1EC:
	.4byte 0x84000002
_0805E1F0:
	.4byte 0x03001D10
_0805E1F4:
	.4byte 0x000001FF
_0805E1F8:
	.4byte 0xFFFFFE00
_0805E1FC:
	.4byte 0x000003FF
_0805E200:
	.4byte 0xFFFFFC00
_0805E204:
	ldr r2, _0805E228  @ =0x03001D20
	add r0, r1, r2
	ldrh r0, [r0]
	lsl r0, r0, #9
	ldr r1, _0805E22C  @ =gUnknown_08621308
	add r0, r0, r1
	str r0, [r6]
	mov r4, r12
	ldrh r0, [r4]
	ldr r1, _0805E230  @ =0x06010000
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0805E234  @ =0x84000080
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0805E238  @ =gUnknown_08621300
	b _0805E25C
	.byte 0x00
	.byte 0x00
_0805E228:
	.4byte 0x03001D20
_0805E22C:
	.4byte gUnknown_08621308
_0805E230:
	.4byte 0x06010000
_0805E234:
	.4byte 0x84000080
_0805E238:
	.4byte gUnknown_08621300
_0805E23C:
	mov r2, r10
	add r0, r1, r2
	ldrh r0, [r0]
	lsl r0, r0, #9
	ldr r1, _0805E338  @ =gUnknown_086201E0
	add r0, r0, r1
	str r0, [r6]
	mov r4, r12
	ldrh r0, [r4]
	ldr r1, _0805E33C  @ =0x06010000
	add r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0805E340  @ =0x84000080
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0805E344  @ =gUnknown_086201D8
_0805E25C:
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r0, _0805E348  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r0, r9
	lsl r4, r0, #2
	ldr r1, _0805E34C  @ =0x03001D10
	add r4, r4, r1
	ldr r0, [r4]
	ldr r1, [r0, #32]
	asr r1, r1, #8
	sub r1, r1, #8
	ldr r2, _0805E350  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0805E354  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [r4]
	ldr r0, [r0, #36]
	asr r0, r0, #8
	sub r0, r0, #12
	strb r0, [r1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r4, r8
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r4, _0805E358  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0805E35C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r1, r9
	add r1, r1, #8
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #1]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r0, [r2, #5]
	mov r1, #12
	orr r0, r0, r1
	strb r0, [r2, #5]
_0805E2FA:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r1, #0
	mov r2, r12
	ldrh r2, [r2]
	add r0, r0, r2
	mov r4, r12
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	add r0, r0, #16
	strh r0, [r1]
_0805E318:
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r0, #2
	bhi _0805E328
	b _0805E0EC
_0805E328:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805E338:
	.4byte gUnknown_086201E0
_0805E33C:
	.4byte 0x06010000
_0805E340:
	.4byte 0x84000080
_0805E344:
	.4byte gUnknown_086201D8
_0805E348:
	.4byte 0x84000002
_0805E34C:
	.4byte 0x03001D10
_0805E350:
	.4byte 0x000001FF
_0805E354:
	.4byte 0xFFFFFE00
_0805E358:
	.4byte 0x000003FF
_0805E35C:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0805E0D0

	THUMB_FUNC_START sub_0805E360
sub_0805E360: @ 0x0805E360
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	mov r12, r0
	add r7, r1, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp]
	mov r4, #0
	ldr r6, _0805E484  @ =0x03001D20
	ldr r0, _0805E488  @ =0x030005D8
	mov r10, r0
	ldr r1, _0805E48C  @ =0x030005CC
	mov r9, r1
	ldr r2, _0805E490  @ =0x03001C50
	mov r8, r2
	add r2, r6, #0
	mov r3, #0
	add r5, r6, #4
_0805E38C:
	lsl r0, r4, #3
	add r1, r0, r2
	strh r3, [r1, #2]
	strh r3, [r1]
	add r0, r0, r5
	str r3, [r0]
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #2
	bls _0805E38C
	mov r1, #0
	mov r0, #0
	strh r0, [r6, #2]
	strh r0, [r6]
	mov r0, #1
	str r0, [r6, #4]
	mov r0, #240
	lsl r0, r0, #7
	mov r3, r10
	str r0, [r3]
	ldr r6, _0805E494  @ =0x030005DC
	strb r1, [r6]
	mov r0, #2
	mov r1, r9
	strb r0, [r1]
	mov r0, #3
	strb r0, [r1, #1]
	mov r4, #0
	mov r2, r12
	add r2, r2, #164
	mov r3, #168
	add r3, r3, r12
	mov r9, r3
	mov r6, r12
	add r6, r6, #160
	str r6, [sp, #36]
	add r0, r7, #0
	add r0, r0, #124
	str r0, [sp, #16]
	mov r1, #129
	add r1, r1, r7
	mov r12, r1
	mov r3, #126
	add r3, r3, r7
	mov r10, r3
	add r6, r7, #0
	add r6, r6, #136
	str r6, [sp, #24]
	add r0, r0, #24
	str r0, [sp, #32]
	add r1, r7, #0
	add r1, r1, #140
	str r1, [sp, #28]
	add r3, r7, #0
	add r3, r3, #132
	str r3, [sp, #20]
	sub r6, r6, #50
	str r6, [sp, #4]
	sub r0, r0, #60
	str r0, [sp, #8]
	sub r1, r1, #50
	str r1, [sp, #12]
	mov r3, #0
	ldr r5, _0805E498  @ =0x030005D0
_0805E40E:
	lsl r1, r4, #2
	ldr r6, _0805E49C  @ =0x03000550
	add r0, r1, r6
	str r3, [r0]
	ldr r6, _0805E4A0  @ =0x03000560
	add r0, r1, r6
	str r3, [r0]
	ldr r6, _0805E4A4  @ =0x03000570
	add r0, r1, r6
	str r3, [r0]
	ldr r6, _0805E4A8  @ =0x03000580
	add r0, r1, r6
	str r3, [r0]
	ldr r6, _0805E4AC  @ =0x03000590
	add r0, r1, r6
	str r3, [r0]
	ldr r6, _0805E4B0  @ =0x030005A0
	add r0, r1, r6
	str r3, [r0]
	ldr r6, _0805E4B4  @ =0x030005B0
	add r0, r1, r6
	str r3, [r0]
	ldr r0, _0805E4B8  @ =0x030005C0
	add r1, r1, r0
	str r3, [r1]
	lsl r0, r4, #1
	add r0, r0, r5
	strh r3, [r0]
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #2
	bls _0805E40E
	mov r0, #0
	ldr r1, _0805E4BC  @ =0x03000548
	strb r0, [r1]
	mov r1, #0
	ldr r3, _0805E4C0  @ =0x030005DE
	strh r1, [r3]
	ldr r6, _0805E4C4  @ =0x03001D38
	str r7, [r6]
	mov r0, #5
	ldr r3, _0805E4C8  @ =0x030005E0
	strh r0, [r3]
	ldr r6, _0805E4CC  @ =gUnknown_08662C30
	ldr r0, _0805E4D0  @ =0x030005E4
	str r6, [r0]
	ldr r3, _0805E4D4  @ =0x03001C48
	strh r1, [r3]
	ldr r6, _0805E4D8  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _0805E4E0
	mov r0, #64
	ldr r1, _0805E4DC  @ =0x03001C40
	strh r0, [r1]
	b _0805E4E6
	.byte 0x00
	.byte 0x00
_0805E484:
	.4byte 0x03001D20
_0805E488:
	.4byte 0x030005D8
_0805E48C:
	.4byte 0x030005CC
_0805E490:
	.4byte 0x03001C50
_0805E494:
	.4byte 0x030005DC
_0805E498:
	.4byte 0x030005D0
_0805E49C:
	.4byte 0x03000550
_0805E4A0:
	.4byte 0x03000560
_0805E4A4:
	.4byte 0x03000570
_0805E4A8:
	.4byte 0x03000580
_0805E4AC:
	.4byte 0x03000590
_0805E4B0:
	.4byte 0x030005A0
_0805E4B4:
	.4byte 0x030005B0
_0805E4B8:
	.4byte 0x030005C0
_0805E4BC:
	.4byte 0x03000548
_0805E4C0:
	.4byte 0x030005DE
_0805E4C4:
	.4byte 0x03001D38
_0805E4C8:
	.4byte 0x030005E0
_0805E4CC:
	.4byte gUnknown_08662C30
_0805E4D0:
	.4byte 0x030005E4
_0805E4D4:
	.4byte 0x03001C48
_0805E4D8:
	.4byte gUnknown_03000B80
_0805E4DC:
	.4byte 0x03001C40
_0805E4E0:
	mov r0, #56
	ldr r3, _0805E5F4  @ =0x03001C40
	strh r0, [r3]
_0805E4E6:
	ldr r6, _0805E5F8  @ =0x0805E629
	str r6, [r2]
	ldr r0, _0805E5FC  @ =0x08060E79
	mov r1, r9
	str r0, [r1]
	mov r0, #0
	ldr r2, _0805E600  @ =0x03001D40
	strb r0, [r2]
	ldr r3, _0805E604  @ =0x03001D3C
	strb r0, [r3]
	ldr r6, _0805E608  @ =0x03001D44
	strb r0, [r6]
	ldr r0, _0805E60C  @ =gUnknown_03001C78
	str r7, [r0]
	ldr r0, [r7, #32]
	asr r0, r0, #8
	ldr r1, _0805E610  @ =0x030005F8
	str r0, [r1]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	ldr r2, _0805E614  @ =0x030005FC
	str r0, [r2]
	mov r5, #0
	mov r6, #0
	mov r3, sp
	ldrh r3, [r3]
	strh r3, [r7]
	strh r6, [r7, #4]
	mov r0, #22
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r2, r0, #3
	sub r2, r2, r0
	lsl r2, r2, #3
	ldr r3, _0805E618  @ =gUnknown_08662CA4
	add r2, r2, r3
	ldr r0, [sp, #36]
	str r2, [r0]
	ldr r0, [r2, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r3, [sp, #16]
	str r0, [r3]
	str r1, [r3, #4]
	ldr r0, [sp, #72]
	ldrb r3, [r0, #6]
	lsl r3, r3, #4
	mov r1, r12
	ldrb r4, [r1]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r3
	mov r3, r12
	strb r0, [r3]
	ldr r3, [sp, #72]
	ldrh r0, [r3, #6]
	and r1, r1, r0
	ldr r0, _0805E61C  @ =0x030005E9
	strb r1, [r0]
	ldr r1, [r7, #32]
	lsl r1, r1, #15
	lsr r1, r1, #23
	mov r0, r10
	ldrh r3, [r0]
	ldr r0, _0805E620  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	mov r1, r10
	strh r0, [r1]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	ldr r3, [sp, #16]
	strb r0, [r3]
	strb r5, [r7, #15]
	ldr r0, [r2, #4]
	ldr r1, [sp, #24]
	str r0, [r1]
	ldr r0, [r2, #12]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r0, [r2, #8]
	ldr r1, [sp, #28]
	str r0, [r1]
	ldr r0, [r2]
	ldr r3, [sp, #20]
	str r0, [r3]
	ldrb r0, [r2, #21]
	strb r0, [r7, #3]
	ldrh r0, [r2, #16]
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldrb r0, [r2, #20]
	ldr r3, [sp, #8]
	strh r0, [r3]
	ldrh r0, [r2, #18]
	ldr r1, [sp, #12]
	strh r0, [r1]
	strb r5, [r7, #10]
	mov r3, r8
	strb r5, [r3]
	ldrb r0, [r2, #22]
	strb r0, [r3, #1]
	ldrb r0, [r2, #23]
	strb r0, [r3, #2]
	strb r5, [r3, #16]
	str r6, [r3, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r3, #12]
	mov r0, #2
	strb r0, [r3, #19]
	strb r5, [r3, #17]
	strb r5, [r3, #18]
	str r6, [r3, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _0805E624  @ =0x030005EA
	strh r6, [r0]
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0805E5F4:
	.4byte 0x03001C40
_0805E5F8:
	.4byte sub_0805E628
_0805E5FC:
	.4byte sub_08060E78
_0805E600:
	.4byte 0x03001D40
_0805E604:
	.4byte 0x03001D3C
_0805E608:
	.4byte 0x03001D44
_0805E60C:
	.4byte gUnknown_03001C78
_0805E610:
	.4byte 0x030005F8
_0805E614:
	.4byte 0x030005FC
_0805E618:
	.4byte gUnknown_08662CA4
_0805E61C:
	.4byte 0x030005E9
_0805E620:
	.4byte 0xFFFFFE00
_0805E624:
	.4byte 0x030005EA
	THUMB_FUNC_END sub_0805E360

	THUMB_FUNC_START sub_0805E628
sub_0805E628: @ 0x0805E628
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r4, #0
	ldr r1, _0805E6B0  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805E652
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _0805E662
_0805E652:
	ldr r1, _0805E6B4  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0805E744
_0805E662:
	add r0, r5, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805E6B8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _0805E6F2
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0805E6BC  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	ldr r1, _0805E6C0  @ =0x030005DE
	ldrh r0, [r1]
	cmp r0, #0
	beq _0805E69A
	sub r0, r0, #1
	strh r0, [r1]
_0805E69A:
	ldr r0, _0805E6C4  @ =0x030005DC
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #0
	beq _0805E6CC
	ldr r1, _0805E6C8  @ =0x030005D8
	ldr r0, [r1]
	add r0, r0, #64
	b _0805E6D2
	.byte 0x00
	.byte 0x00
_0805E6B0:
	.4byte 0x030019AC
_0805E6B4:
	.4byte gUnknown_03001C78
_0805E6B8:
	.4byte gUnknown_03001A1C
_0805E6BC:
	.4byte 0x00007FFF
_0805E6C0:
	.4byte 0x030005DE
_0805E6C4:
	.4byte 0x030005DC
_0805E6C8:
	.4byte 0x030005D8
_0805E6CC:
	ldr r1, _0805E6E4  @ =0x030005D8
	ldr r0, [r1]
	sub r0, r0, #64
_0805E6D2:
	str r0, [r1]
	ldr r1, [r1]
	mov r0, #192
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805E6E8
	mov r0, #0
	b _0805E6F0
	.byte 0x00
	.byte 0x00
_0805E6E4:
	.4byte 0x030005D8
_0805E6E8:
	ldr r0, _0805E710  @ =0x00001FFF
	cmp r1, r0
	bgt _0805E6F2
	mov r0, #1
_0805E6F0:
	strb r0, [r2]
_0805E6F2:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, _0805E714  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _0805E718
	add r0, r5, #0
	mov r1, #0
	bl sub_0804A580
	b _0805E71E
_0805E710:
	.4byte 0x00001FFF
_0805E714:
	.4byte gUnknown_03001A1C
_0805E718:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0805E71E:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
_0805E744:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805E628

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805E74C
sub_0805E74C: @ 0x0805E74C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r5, r0, #0
	mov r0, #4
	ldrsh r6, [r5, r0]
	cmp r6, #1
	beq _0805E760
	b _0805E88C
_0805E760:
	add r4, r5, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _0805E79C  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r5, #0
	bl sub_0805EE00
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _0805E784
	b _0805EA3E
_0805E784:
	ldr r0, _0805E7A0  @ =0x030005E8
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0805E7A4
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	ble _0805E7A4
	mov r3, r8
	strb r6, [r3]
	b _0805E8DE
_0805E79C:
	.4byte 0x03001940
_0805E7A0:
	.4byte 0x030005E8
_0805E7A4:
	ldr r2, _0805E7C4  @ =0x030005F4
	ldr r0, _0805E7C8  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805E7D0
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805E7CC  @ =0x03000600
	ldr r0, [r0]
	bl sub_08040FC0
	b _0805E7F0
_0805E7C4:
	.4byte 0x030005F4
_0805E7C8:
	.4byte 0x030019AC
_0805E7CC:
	.4byte 0x03000600
_0805E7D0:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _0805E7F0
	mov r0, #2
	strb r0, [r1]
	ldr r1, _0805E820  @ =0x030005EE
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0805E824  @ =0x030005F0
	ldr r0, _0805E828  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_0805E7F0:
	ldr r4, _0805E824  @ =0x030005F0
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _0805E856
	ldr r3, _0805E820  @ =0x030005EE
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	ldr r0, _0805E82C  @ =0x030005E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805E834
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _0805E81A
	mov r0, #0
	strh r0, [r3]
_0805E81A:
	ldr r2, _0805E830  @ =gUnknown_0854301C
	b _0805E846
	.byte 0x00
	.byte 0x00
_0805E820:
	.4byte 0x030005EE
_0805E824:
	.4byte 0x030005F0
_0805E828:
	.4byte gUnknown_0851F440
_0805E82C:
	.4byte 0x030005E8
_0805E830:
	.4byte gUnknown_0854301C
_0805E834:
	cmp r0, #2
	bne _0805E856
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0805E844
	mov r0, #0
	strh r0, [r3]
_0805E844:
	ldr r2, _0805E880  @ =gUnknown_0851F440
_0805E846:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0805E856:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0805E862
	b _0805EA3E
_0805E862:
	ldrh r4, [r7]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805E884  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805E888  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	bl sub_0804A644
	strh r4, [r7]
	b _0805EA3E
	.byte 0x00
	.byte 0x00
_0805E880:
	.4byte gUnknown_0851F440
_0805E884:
	.4byte 0x030005E9
_0805E888:
	.4byte gUnknown_08662CA4
_0805E88C:
	cmp r6, #2
	beq _0805E892
	b _0805EA20
_0805E892:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805E8C6
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #249
	bgt _0805E8C6
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r5, #12]
	strb r1, [r5, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805E8C6:
	ldr r2, _0805E908  @ =0x030005E8
	ldrb r1, [r2]
	cmp r1, #0
	bne _0805E91C
	add r0, r5, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #249
	ble _0805E91C
	mov r0, #1
	strb r0, [r2]
_0805E8DE:
	ldr r5, _0805E90C  @ =0x030005F4
	ldr r0, _0805E910  @ =0xFFFFEC00
	str r0, [r5]
	ldr r0, _0805E914  @ =0x030005EE
	strh r1, [r0]
	ldr r4, _0805E918  @ =0x03000600
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	ldr r1, [r5]
	bl sub_08040FC0
	b _0805EA3E
_0805E908:
	.4byte 0x030005E8
_0805E90C:
	.4byte 0x030005F4
_0805E910:
	.4byte 0xFFFFEC00
_0805E914:
	.4byte 0x030005EE
_0805E918:
	.4byte 0x03000600
_0805E91C:
	ldr r2, _0805E93C  @ =0x030005F4
	ldr r0, _0805E940  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805E948
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805E944  @ =0x03000600
	ldr r0, [r0]
	bl sub_08040FC0
	b _0805E968
_0805E93C:
	.4byte 0x030005F4
_0805E940:
	.4byte 0x030019AC
_0805E944:
	.4byte 0x03000600
_0805E948:
	ldr r1, _0805E998  @ =0x030005E8
	ldrb r0, [r1]
	cmp r0, #1
	bne _0805E968
	mov r0, #2
	strb r0, [r1]
	ldr r1, _0805E99C  @ =0x030005EE
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0805E9A0  @ =0x030005F0
	ldr r0, _0805E9A4  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_0805E968:
	ldr r4, _0805E9A0  @ =0x030005F0
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	ldr r1, _0805E998  @ =0x030005E8
	mov r8, r1
	cmp r0, #0
	bgt _0805E9CE
	ldr r3, _0805E99C  @ =0x030005EE
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrb r1, [r1]
	cmp r1, #1
	bne _0805E9AC
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _0805E994
	mov r0, #0
	strh r0, [r3]
_0805E994:
	ldr r2, _0805E9A8  @ =gUnknown_0854301C
	b _0805E9BE
_0805E998:
	.4byte 0x030005E8
_0805E99C:
	.4byte 0x030005EE
_0805E9A0:
	.4byte 0x030005F0
_0805E9A4:
	.4byte gUnknown_0851F440
_0805E9A8:
	.4byte gUnknown_0854301C
_0805E9AC:
	cmp r1, #2
	bne _0805EA3E
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0805E9BC
	mov r0, #0
	strh r0, [r3]
_0805E9BC:
	ldr r2, _0805EA0C  @ =gUnknown_0851F440
_0805E9BE:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0805E9CE:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _0805EA3E
	ldr r2, _0805EA10  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805EA14  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EA18  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	bl sub_0804A644
	ldr r0, _0805EA1C  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	b _0805EA3E
	.byte 0x00
	.byte 0x00
_0805EA0C:
	.4byte gUnknown_0851F440
_0805EA10:
	.4byte gUnknown_03001A1C
_0805EA14:
	.4byte 0x030005E9
_0805EA18:
	.4byte gUnknown_08662CA4
_0805EA1C:
	.4byte 0x03001940
_0805EA20:
	add r0, r5, #0
	bl sub_0805EE00
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805EA3E
	add r0, r5, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #160
	ble _0805EA3E
	add r0, r5, #0
	bl sub_0805F0FC
_0805EA3E:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805E74C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805EA4C
sub_0805EA4C: @ 0x0805EA4C
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805EE00
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805EB14
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #44
	bne _0805EAF4
	ldrh r6, [r5]
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne _0805EA9A
	ldr r0, _0805EA88  @ =0x0300196C
	ldrb r1, [r0]
	cmp r1, #2
	beq _0805EAF0
	ldr r2, _0805EA8C  @ =0x030005CC
	ldrb r0, [r2]
	cmp r0, #2
	bne _0805EA90
	strb r1, [r2]
	b _0805EA92
_0805EA88:
	.4byte 0x0300196C
_0805EA8C:
	.4byte 0x030005CC
_0805EA90:
	strb r1, [r2, #1]
_0805EA92:
	mov r0, #2
	bl sub_0805F210
	b _0805EAF0
_0805EA9A:
	cmp r0, #7
	bne _0805EAC6
	ldr r0, _0805EAB4  @ =0x0300196C
	ldrb r1, [r0]
	cmp r1, #3
	beq _0805EAF0
	ldr r2, _0805EAB8  @ =0x030005CC
	ldrb r0, [r2]
	cmp r0, #3
	bne _0805EABC
	strb r1, [r2]
	b _0805EABE
	.byte 0x00
	.byte 0x00
_0805EAB4:
	.4byte 0x0300196C
_0805EAB8:
	.4byte 0x030005CC
_0805EABC:
	strb r1, [r2, #1]
_0805EABE:
	mov r0, #3
	bl sub_0805F210
	b _0805EAF0
_0805EAC6:
	cmp r0, #6
	bne _0805EAF0
	ldr r0, _0805EAE0  @ =0x0300196C
	ldrb r1, [r0]
	cmp r1, #1
	beq _0805EAF0
	ldr r2, _0805EAE4  @ =0x030005CC
	ldrb r0, [r2]
	cmp r0, #1
	bne _0805EAE8
	strb r1, [r2]
	b _0805EAEA
	.byte 0x00
	.byte 0x00
_0805EAE0:
	.4byte 0x0300196C
_0805EAE4:
	.4byte 0x030005CC
_0805EAE8:
	strb r1, [r2, #1]
_0805EAEA:
	mov r0, #1
	bl sub_0805F210
_0805EAF0:
	strh r6, [r5]
	b _0805EB14
_0805EAF4:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805EB14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805EB1C  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EB20  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0805EB14:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0805EB1C:
	.4byte 0x030005E9
_0805EB20:
	.4byte gUnknown_08662CA4
	THUMB_FUNC_END sub_0805EA4C

	THUMB_FUNC_START sub_0805EB24
sub_0805EB24: @ 0x0805EB24
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #13
	bne _0805EB74
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805EBE0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805EB68  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EB6C  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805EB70  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805EBE0
	.byte 0x00
	.byte 0x00
_0805EB68:
	.4byte 0x030005E9
_0805EB6C:
	.4byte gUnknown_08662CA4
_0805EB70:
	.4byte 0xFFFFF000
_0805EB74:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _0805EB96
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #142
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805EB96:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805EBE0
	ldr r1, _0805EBBC  @ =0x030005EC
	ldr r0, _0805EBC0  @ =0x030005EA
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _0805EBC4  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _0805EBC8
	add r0, r2, #1
	b _0805EBCA
_0805EBBC:
	.4byte 0x030005EC
_0805EBC0:
	.4byte 0x030005EA
_0805EBC4:
	.4byte 0x030005E0
_0805EBC8:
	mov r0, #0
_0805EBCA:
	strh r0, [r3]
	add r0, r4, #0
	bl sub_0805F0FC
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _0805EBE8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0805EBE0:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_0805EBE8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0805EB24

	THUMB_FUNC_START sub_0805EBEC
sub_0805EBEC: @ 0x0805EBEC
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #15
	bne _0805EC40
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0805EC06
	b _0805ED1E
_0805EC06:
	mov r0, #18
	bl sub_08071E14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805EC34  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EC38  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805EC3C  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	b _0805ECC8
	.byte 0x00
	.byte 0x00
_0805EC34:
	.4byte 0x030005E9
_0805EC38:
	.4byte gUnknown_08662CA4
_0805EC3C:
	.4byte 0xFFFFF000
_0805EC40:
	cmp r0, #16
	bne _0805EC70
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805ED1E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805EC68  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EC6C  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	b _0805ED1E
	.byte 0x00
	.byte 0x00
_0805EC68:
	.4byte 0x030005E9
_0805EC6C:
	.4byte gUnknown_08662CA4
_0805EC70:
	cmp r0, #17
	bne _0805ECDC
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #8
	bne _0805EC96
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #95
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805EC96:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805ED1E
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805ECD0  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805ECD4  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #18
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _0805ECD8  @ =0xFFFFE000
_0805ECC8:
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805ED1E
	.byte 0x00
	.byte 0x00
_0805ECD0:
	.4byte 0x030005E9
_0805ECD4:
	.4byte gUnknown_08662CA4
_0805ECD8:
	.4byte 0xFFFFE000
_0805ECDC:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805ED1E
	bl sub_08072144
	cmp r0, #0
	beq _0805ECF2
	bl sub_080720AC
_0805ECF2:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #148
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805ED28  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805ED2C  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
_0805ED1E:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805ED28:
	.4byte 0x030005E9
_0805ED2C:
	.4byte gUnknown_08662CA4
	THUMB_FUNC_END sub_0805EBEC

	THUMB_FUNC_START sub_0805ED30
sub_0805ED30: @ 0x0805ED30
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #20
	bne _0805ED74
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805EDE6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805ED68  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805ED6C  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _0805ED70  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	b _0805EDE6
_0805ED68:
	.4byte 0x030005E9
_0805ED6C:
	.4byte gUnknown_08662CA4
_0805ED70:
	.4byte 0xFFFFE000
_0805ED74:
	add r4, r4, #84
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #25
	bne _0805ED94
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #94
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0805ED94:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _0805EDAE
	ldr r1, _0805EDF0  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _0805EDF4  @ =0x03001C48
	ldrh r0, [r1]
	sub r0, r0, #16
	strh r0, [r1]
_0805EDAE:
	add r0, r2, #0
	sub r0, r0, #34
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #20
	bhi _0805EDC2
	ldr r1, _0805EDF0  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #6
	strh r0, [r1]
_0805EDC2:
	cmp r3, #54
	ble _0805EDE6
	ldr r0, _0805EDF8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #134
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _0805EDE6
	ldr r0, _0805EDFC  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #10
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #18
	bl sub_08071E14
_0805EDE6:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805EDF0:
	.4byte 0x03001C40
_0805EDF4:
	.4byte 0x03001C48
_0805EDF8:
	.4byte gUnknown_03001A1C
_0805EDFC:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_0805ED30

	THUMB_FUNC_START sub_0805EE00
sub_0805EE00: @ 0x0805EE00
	push {r4,r5,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r0, _0805EE64  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	cmp r4, #0
	beq _0805EE78
	ldr r0, _0805EE68  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EE6C  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0805EE70  @ =0x03001968
	ldrh r0, [r5]
	str r0, [r1]
	ldr r2, _0805EE74  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0805EE58
	b _0805F0C4
_0805EE58:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _0805F0C4
	.byte 0x00
	.byte 0x00
_0805EE64:
	.4byte 0x030019AC
_0805EE68:
	.4byte 0x030005E9
_0805EE6C:
	.4byte gUnknown_08662CA4
_0805EE70:
	.4byte 0x03001968
_0805EE74:
	.4byte gUnknown_03001A1C
_0805EE78:
	ldr r0, _0805EEBC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _0805EEC8
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #11
	beq _0805EEC8
	cmp r0, #12
	beq _0805EEC8
	ldr r0, _0805EEC0  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EEC4  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #11
	mov r2, #0
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0805F0F0
	.byte 0x00
	.byte 0x00
_0805EEBC:
	.4byte gUnknown_03001A1C
_0805EEC0:
	.4byte 0x030005E9
_0805EEC4:
	.4byte gUnknown_08662CA4
_0805EEC8:
	ldr r1, [r5, #76]
	cmp r1, #0
	bge _0805EED0
	b _0805F0F0
_0805EED0:
	ldr r2, _0805EF3C  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0805EF70
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0805EF40  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _0805EF4C
	ldr r0, _0805EF44  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EF48  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #8
	mov r2, #1
	bl sub_0804A644
	mov r0, #0
	bl sub_0805F2B4
	b _0805F0B6
	.byte 0x00
	.byte 0x00
_0805EF3C:
	.4byte 0x03001940
_0805EF40:
	.4byte gUnknown_03001A1C
_0805EF44:
	.4byte 0x030005E9
_0805EF48:
	.4byte gUnknown_08662CA4
_0805EF4C:
	ldr r0, _0805EF68  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EF6C  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_0805F2B4
	b _0805F0B6
	.byte 0x00
	.byte 0x00
_0805EF68:
	.4byte 0x030005E9
_0805EF6C:
	.4byte gUnknown_08662CA4
_0805EF70:
	cmp r0, #178
	beq _0805EF7E
	cmp r0, #180
	beq _0805EF7E
	cmp r0, #182
	beq _0805EF7E
	b _0805F0B6
_0805EF7E:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0805EF92
	b _0805F0F0
_0805EF92:
	add r1, r5, #0
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805F000
	ldr r0, _0805EFE4  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805EFE8  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #15
	mov r2, #0
	bl sub_0804A644
	ldr r2, _0805EFEC  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #8
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0805EFF0  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _0805EFF4  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0805EFF8  @ =gUnknown_03000B6C
	ldr r1, [r2]
	ldr r0, _0805EFFC  @ =0x00001388
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r1, r1, #16
	ldr r2, [r5, #36]
	asr r2, r2, #8
	bl sub_08031A64
	b _0805F066
_0805EFE4:
	.4byte 0x030005E9
_0805EFE8:
	.4byte gUnknown_08662CA4
_0805EFEC:
	.4byte gUnknown_03001A1C
_0805EFF0:
	.4byte gUnknown_030019A0
_0805EFF4:
	.4byte 0x20040000
_0805EFF8:
	.4byte gUnknown_03000B6C
_0805EFFC:
	.4byte 0x00001388
_0805F000:
	cmp r0, #3
	bne _0805F01C
	ldr r0, _0805F010  @ =0x030005E0
	mov r1, #6
	strh r1, [r0]
	ldr r2, _0805F014  @ =0x030005E4
	ldr r0, _0805F018  @ =gUnknown_08662C44
	b _0805F046
_0805F010:
	.4byte 0x030005E0
_0805F014:
	.4byte 0x030005E4
_0805F018:
	.4byte gUnknown_08662C44
_0805F01C:
	cmp r0, #2
	bne _0805F038
	ldr r0, _0805F02C  @ =0x030005E0
	mov r1, #8
	strh r1, [r0]
	ldr r2, _0805F030  @ =0x030005E4
	ldr r0, _0805F034  @ =gUnknown_08662C5C
	b _0805F046
_0805F02C:
	.4byte 0x030005E0
_0805F030:
	.4byte 0x030005E4
_0805F034:
	.4byte gUnknown_08662C5C
_0805F038:
	cmp r0, #1
	bne _0805F050
	ldr r0, _0805F0C8  @ =0x030005E0
	mov r1, #10
	strh r1, [r0]
	ldr r2, _0805F0CC  @ =0x030005E4
	ldr r0, _0805F0D0  @ =gUnknown_08662C7C
_0805F046:
	str r0, [r2]
	ldr r2, _0805F0D4  @ =0x030005EA
	ldr r0, _0805F0D8  @ =0x030005EC
	strh r1, [r0]
	strh r1, [r2]
_0805F050:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805F0DC  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805F0E0  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #13
	bl sub_0804A644
_0805F066:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r5, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, [r5, #36]
	ldr r1, _0805F0E4  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r5, #36]
	ldr r2, _0805F0E8  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
_0805F0B6:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _0805F0EC  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
_0805F0C4:
	mov r0, #1
	b _0805F0F2
_0805F0C8:
	.4byte 0x030005E0
_0805F0CC:
	.4byte 0x030005E4
_0805F0D0:
	.4byte gUnknown_08662C7C
_0805F0D4:
	.4byte 0x030005EA
_0805F0D8:
	.4byte 0x030005EC
_0805F0DC:
	.4byte 0x030005E9
_0805F0E0:
	.4byte gUnknown_08662CA4
_0805F0E4:
	.4byte 0xFFFFE000
_0805F0E8:
	.4byte gUnknown_03001A1C
_0805F0EC:
	.4byte 0xFFFFFF00
_0805F0F0:
	mov r0, #0
_0805F0F2:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805EE00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805F0FC
sub_0805F0FC: @ 0x0805F0FC
	push {r4-r7,lr}
	sub sp, sp, #4
	add r7, r0, #0
	ldr r2, _0805F134  @ =0x030005E4
	ldr r3, _0805F138  @ =0x030005EA
	mov r0, #0
	ldrsh r6, [r3, r0]
	lsl r1, r6, #2
	ldr r0, [r2]
	add r4, r0, r1
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r3, #0
	cmp r0, #5
	bne _0805F14A
	ldr r0, _0805F13C  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805F14A
	add r1, r5, #0
	ldr r0, _0805F140  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r6, r0
	bge _0805F144
	ldrh r0, [r5]
	add r0, r0, #1
	b _0805F146
_0805F134:
	.4byte 0x030005E4
_0805F138:
	.4byte 0x030005EA
_0805F13C:
	.4byte 0x0300196C
_0805F140:
	.4byte 0x030005E0
_0805F144:
	mov r0, #0
_0805F146:
	strh r0, [r1]
	b _0805F1AC
_0805F14A:
	mov r0, #0
	ldrsb r0, [r4, r0]
	ldrb r1, [r4]
	cmp r0, #6
	bne _0805F178
	ldr r0, _0805F170  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805F178
	add r3, r5, #0
	mov r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _0805F174  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	blt _0805F198
	b _0805F1A8
	.byte 0x00
	.byte 0x00
_0805F170:
	.4byte 0x0300196C
_0805F174:
	.4byte 0x030005E0
_0805F178:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #7
	bne _0805F1AC
	ldr r0, _0805F1A0  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805F1AC
	add r3, r5, #0
	mov r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _0805F1A4  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _0805F1A8
_0805F198:
	ldrh r0, [r5]
	add r0, r0, #1
	b _0805F1AA
	.byte 0x00
	.byte 0x00
_0805F1A0:
	.4byte 0x0300196C
_0805F1A4:
	.4byte 0x030005E0
_0805F1A8:
	mov r0, #0
_0805F1AA:
	strh r0, [r3]
_0805F1AC:
	mov r1, #0
	ldrsh r0, [r5, r1]
	lsl r0, r0, #2
	ldr r1, [r2]
	add r4, r1, r0
	mov r1, #0
	ldrsb r1, [r4, r1]
	ldrb r2, [r4, #1]
	ldr r0, _0805F1F0  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _0805F1F4  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r7, #0
	bl sub_0804A644
	ldr r1, _0805F1F8  @ =0x030005F2
	ldrh r0, [r4, #2]
	strh r0, [r1]
	mov r0, #0
	strb r0, [r7, #10]
	ldr r0, _0805F1FC  @ =0x030005EC
	ldrh r2, [r5]
	strh r2, [r0]
	add r3, r5, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _0805F200  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _0805F204
	add r0, r2, #1
	b _0805F206
	.byte 0x00
	.byte 0x00
_0805F1F0:
	.4byte 0x030005E9
_0805F1F4:
	.4byte gUnknown_08662CA4
_0805F1F8:
	.4byte 0x030005F2
_0805F1FC:
	.4byte 0x030005EC
_0805F200:
	.4byte 0x030005E0
_0805F204:
	mov r0, #0
_0805F206:
	strh r0, [r3]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805F0FC

	THUMB_FUNC_START sub_0805F210
sub_0805F210: @ 0x0805F210
	push {r4-r6,lr}
	sub sp, sp, #24
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r1, _0805F2A0  @ =gUnknown_08076FB8
	add r0, sp, #12
	mov r2, #3
	bl memcpy
	add r4, sp, #16
	ldr r1, _0805F2A4  @ =gUnknown_08076FBC
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	sub r6, r5, #1
	lsl r0, r6, #1
	add r4, r4, r0
	ldrh r4, [r4]
	add r4, r4, #16
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r2, _0805F2A8  @ =0x030019DC
	ldr r0, _0805F2AC  @ =0x0300196C
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldrb r0, [r0]
	ldrb r1, [r2]
	bl sub_080035C0
	mov r0, sp
	add r0, r0, r6
	add r0, r0, #12
	ldrb r0, [r0]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r5, r5, #2
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _0805F2B0  @ =gUnknown_03001C78
	ldr r1, [r0]
	ldr r0, [r1, #32]
	asr r0, r0, #8
	lsl r4, r4, #16
	asr r4, r4, #16
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r3, [r1, #36]
	asr r3, r3, #8
	add r3, r3, #26
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0804138C
	add sp, sp, #24
	pop {r4-r6}
	pop {r0}
	bx r0
_0805F2A0:
	.4byte gUnknown_08076FB8
_0805F2A4:
	.4byte gUnknown_08076FBC
_0805F2A8:
	.4byte 0x030019DC
_0805F2AC:
	.4byte 0x0300196C
_0805F2B0:
	.4byte gUnknown_03001C78
	THUMB_FUNC_END sub_0805F210

	THUMB_FUNC_START sub_0805F2B4
sub_0805F2B4: @ 0x0805F2B4
	push {r4,r5,lr}
	sub sp, sp, #200
	lsl r0, r0, #16
	cmp r0, #0
	bne _0805F310
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _0805F308  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _0805F30C  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805F302
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805F302:
	ldr r2, [r4]
	b _0805F354
	.byte 0x00
	.byte 0x00
_0805F308:
	.4byte 0x00100800
_0805F30C:
	.4byte 0x030019AC
_0805F310:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	ldr r2, _0805F390  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _0805F394  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _0805F398  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805F352
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0805F352:
	ldr r2, [r5]
_0805F354:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _0805F39C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	ldr r1, _0805F3A0  @ =0x030005DE
	mov r0, #180
	strh r0, [r1]
	ldr r0, _0805F3A4  @ =0x03001D10
	ldr r2, [r0]
	ldrh r1, [r2]
	add r5, r0, #0
	cmp r1, #178
	bne _0805F3A8
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #20
	bne _0805F3A8
	add r4, sp, #80
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #24
	strh r0, [r4, #2]
	ldr r0, [r5]
	b _0805F3CA
_0805F390:
	.4byte 0x000001E9
_0805F394:
	.4byte 0x00200800
_0805F398:
	.4byte 0x030019AC
_0805F39C:
	.4byte 0xFFFFFF00
_0805F3A0:
	.4byte 0x030005DE
_0805F3A4:
	.4byte 0x03001D10
_0805F3A8:
	ldr r1, [r5, #4]
	ldrh r0, [r1]
	cmp r0, #180
	bne _0805F3D4
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #20
	bne _0805F3D4
	add r4, sp, #120
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #24
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
_0805F3CA:
	add r1, r4, #0
	mov r2, #24
	bl sub_0803ED98
	b _0805F3FE
_0805F3D4:
	ldr r1, [r5, #8]
	ldrh r0, [r1]
	cmp r0, #182
	bne _0805F3FE
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #20
	bne _0805F3FE
	add r4, sp, #160
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #24
	strh r0, [r4, #2]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #24
	bl sub_0803ED98
_0805F3FE:
	add sp, sp, #200
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805F2B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805F408
sub_0805F408: @ 0x0805F408
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0805F470  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805F418
	b _0805F510
_0805F418:
	ldr r0, _0805F474  @ =0x03001D38
	ldr r5, [r0]
	ldr r1, [r5, #36]
	mov r6, #128
	lsl r6, r6, #6
	add r1, r1, r6
	ldr r3, [r4, #36]
	mov r7, #128
	lsl r7, r7, #4
	add r2, r3, r7
	add r7, r0, #0
	cmp r1, r2
	ble _0805F4DA
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r1, [r5, #32]
	add r3, r0, #0
	cmp r2, r1
	ble _0805F4A4
	add r0, r1, r6
	cmp r2, r0
	bge _0805F4A4
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805F496
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0805F480
	ldrb r2, [r1]
	ldr r0, _0805F478  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F47C  @ =gUnknown_08663488
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F496
_0805F470:
	.4byte 0x0300196C
_0805F474:
	.4byte 0x03001D38
_0805F478:
	.4byte 0x03000680
_0805F47C:
	.4byte gUnknown_08663488
_0805F480:
	cmp r0, #2
	bne _0805F496
	ldrb r2, [r1]
	ldr r0, _0805F49C  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F4A0  @ =gUnknown_08663488
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F496:
	ldr r0, [r4, #32]
	sub r0, r0, #128
	b _0805F5C6
_0805F49C:
	.4byte 0x03000680
_0805F4A0:
	.4byte gUnknown_08663488
_0805F4A4:
	mov r0, #128
	lsl r0, r0, #4
	add r2, r3, r0
	ldr r0, [r7]
	ldr r1, [r0, #32]
	mov r3, #128
	lsl r3, r3, #6
	add r0, r1, r3
	cmp r2, r0
	ble _0805F4F0
	mov r7, #128
	lsl r7, r7, #7
	add r0, r1, r7
	cmp r2, r0
	bge _0805F4F0
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0805F4D0
	b _0805F5C2
_0805F4D0:
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805F58A
	b _0805F5AC
_0805F4DA:
	mov r7, #160
	lsl r7, r7, #5
	add r1, r3, r7
	mov r0, #144
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805F4F0
	add r0, r3, #0
	sub r0, r0, #128
	str r0, [r4, #36]
	b _0805F5C8
_0805F4F0:
	ldr r1, _0805F508  @ =0x03001D20
	mov r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r0, #3
	str r0, [r1, #4]
	ldr r2, _0805F50C  @ =0x03000548
	ldrb r0, [r2]
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r2]
	b _0805F5D8
_0805F508:
	.4byte 0x03001D20
_0805F50C:
	.4byte 0x03000548
_0805F510:
	ldr r1, [r4, #32]
	mov r0, #192
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805F570
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805F562
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0805F54C
	ldrb r2, [r1]
	ldr r0, _0805F544  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F548  @ =gUnknown_08663488
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F562
	.byte 0x00
	.byte 0x00
_0805F544:
	.4byte 0x03000680
_0805F548:
	.4byte gUnknown_08663488
_0805F54C:
	cmp r0, #2
	bne _0805F562
	ldrb r2, [r1]
	ldr r0, _0805F568  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F56C  @ =gUnknown_08663488
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F562:
	ldr r0, [r4, #32]
	sub r0, r0, #128
	b _0805F5C6
_0805F568:
	.4byte 0x03000680
_0805F56C:
	.4byte gUnknown_08663488
_0805F570:
	ldr r0, _0805F5A0  @ =0x00001FFF
	cmp r1, r0
	bgt _0805F5D8
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0805F5C2
	mov r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0805F5AC
_0805F58A:
	ldrb r2, [r1]
	ldr r0, _0805F5A4  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F5A8  @ =gUnknown_08663488
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F5C2
	.byte 0x00
	.byte 0x00
_0805F5A0:
	.4byte 0x00001FFF
_0805F5A4:
	.4byte 0x03000680
_0805F5A8:
	.4byte gUnknown_08663488
_0805F5AC:
	cmp r0, #2
	bne _0805F5C2
	ldrb r2, [r1]
	ldr r0, _0805F5D0  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F5D4  @ =gUnknown_08663488
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F5C2:
	ldr r0, [r4, #32]
	add r0, r0, #128
_0805F5C6:
	str r0, [r4, #32]
_0805F5C8:
	add r0, r4, #0
	bl sub_08061140
	b _0805F5E4
_0805F5D0:
	.4byte 0x03000680
_0805F5D4:
	.4byte gUnknown_08663488
_0805F5D8:
	add r0, r4, #0
	bl sub_08060010
	add r0, r4, #0
	bl sub_08061140
_0805F5E4:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805F408

	THUMB_FUNC_START sub_0805F5EC
sub_0805F5EC: @ 0x0805F5EC
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0805F654  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #2
	beq _0805F5FC
	b _0805F6F4
_0805F5FC:
	ldr r0, _0805F658  @ =0x03001D38
	ldr r5, [r0]
	ldr r1, [r5, #36]
	mov r6, #128
	lsl r6, r6, #6
	add r1, r1, r6
	ldr r3, [r4, #36]
	mov r7, #128
	lsl r7, r7, #4
	add r2, r3, r7
	add r7, r0, #0
	cmp r1, r2
	ble _0805F6BE
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r1, [r5, #32]
	add r3, r0, #0
	cmp r2, r1
	ble _0805F688
	add r0, r1, r6
	cmp r2, r0
	bge _0805F688
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805F67A
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0805F664
	ldrb r2, [r1]
	ldr r0, _0805F65C  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805F660  @ =gUnknown_08663568
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F67A
_0805F654:
	.4byte 0x0300196C
_0805F658:
	.4byte 0x03001D38
_0805F65C:
	.4byte 0x03000680
_0805F660:
	.4byte gUnknown_08663568
_0805F664:
	cmp r0, #2
	bne _0805F67A
	ldrb r2, [r1]
	ldr r0, _0805F680  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805F684  @ =gUnknown_08663568
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F67A:
	ldr r0, [r4, #32]
	sub r0, r0, #128
	b _0805F7AA
_0805F680:
	.4byte 0x03000680
_0805F684:
	.4byte gUnknown_08663568
_0805F688:
	mov r0, #128
	lsl r0, r0, #4
	add r2, r3, r0
	ldr r0, [r7]
	ldr r1, [r0, #32]
	mov r3, #128
	lsl r3, r3, #6
	add r0, r1, r3
	cmp r2, r0
	ble _0805F6D4
	mov r7, #128
	lsl r7, r7, #7
	add r0, r1, r7
	cmp r2, r0
	bge _0805F6D4
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0805F6B4
	b _0805F7A6
_0805F6B4:
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805F76E
	b _0805F790
_0805F6BE:
	mov r7, #160
	lsl r7, r7, #5
	add r1, r3, r7
	mov r0, #144
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805F6D4
	add r0, r3, #0
	sub r0, r0, #128
	str r0, [r4, #36]
	b _0805F7AC
_0805F6D4:
	ldr r1, _0805F6EC  @ =0x03001D20
	mov r0, #0
	strh r0, [r1, #10]
	strh r0, [r1, #8]
	mov r0, #3
	str r0, [r1, #12]
	ldr r2, _0805F6F0  @ =0x03000548
	ldrb r0, [r2]
	mov r1, #2
	orr r0, r0, r1
	strb r0, [r2]
	b _0805F7BC
_0805F6EC:
	.4byte 0x03001D20
_0805F6F0:
	.4byte 0x03000548
_0805F6F4:
	ldr r1, [r4, #32]
	mov r0, #192
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805F754
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805F746
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0805F730
	ldrb r2, [r1]
	ldr r0, _0805F728  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805F72C  @ =gUnknown_08663568
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F746
	.byte 0x00
	.byte 0x00
_0805F728:
	.4byte 0x03000680
_0805F72C:
	.4byte gUnknown_08663568
_0805F730:
	cmp r0, #2
	bne _0805F746
	ldrb r2, [r1]
	ldr r0, _0805F74C  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805F750  @ =gUnknown_08663568
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F746:
	ldr r0, [r4, #32]
	sub r0, r0, #128
	b _0805F7AA
_0805F74C:
	.4byte 0x03000680
_0805F750:
	.4byte gUnknown_08663568
_0805F754:
	ldr r0, _0805F784  @ =0x00001FFF
	cmp r1, r0
	bgt _0805F7BC
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0805F7A6
	mov r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0805F790
_0805F76E:
	ldrb r2, [r1]
	ldr r0, _0805F788  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805F78C  @ =gUnknown_08663568
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F7A6
	.byte 0x00
	.byte 0x00
_0805F784:
	.4byte 0x00001FFF
_0805F788:
	.4byte 0x03000680
_0805F78C:
	.4byte gUnknown_08663568
_0805F790:
	cmp r0, #2
	bne _0805F7A6
	ldrb r2, [r1]
	ldr r0, _0805F7B4  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805F7B8  @ =gUnknown_08663568
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F7A6:
	ldr r0, [r4, #32]
	add r0, r0, #128
_0805F7AA:
	str r0, [r4, #32]
_0805F7AC:
	add r0, r4, #0
	bl sub_08061140
	b _0805F7C8
_0805F7B4:
	.4byte 0x03000680
_0805F7B8:
	.4byte gUnknown_08663568
_0805F7BC:
	add r0, r4, #0
	bl sub_08060010
	add r0, r4, #0
	bl sub_08061140
_0805F7C8:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805F5EC

	THUMB_FUNC_START sub_0805F7D0
sub_0805F7D0: @ 0x0805F7D0
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0805F838  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #3
	beq _0805F7E0
	b _0805F8D8
_0805F7E0:
	ldr r0, _0805F83C  @ =0x03001D38
	ldr r5, [r0]
	ldr r1, [r5, #36]
	mov r6, #128
	lsl r6, r6, #6
	add r1, r1, r6
	ldr r3, [r4, #36]
	mov r7, #128
	lsl r7, r7, #4
	add r2, r3, r7
	add r7, r0, #0
	cmp r1, r2
	ble _0805F8A2
	ldr r0, [r4, #32]
	mov r1, #128
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r1, [r5, #32]
	add r3, r0, #0
	cmp r2, r1
	ble _0805F86C
	add r0, r1, r6
	cmp r2, r0
	bge _0805F86C
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805F85E
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0805F848
	ldrb r2, [r1]
	ldr r0, _0805F840  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805F844  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F85E
_0805F838:
	.4byte 0x0300196C
_0805F83C:
	.4byte 0x03001D38
_0805F840:
	.4byte 0x03000680
_0805F844:
	.4byte gUnknown_08663648
_0805F848:
	cmp r0, #2
	bne _0805F85E
	ldrb r2, [r1]
	ldr r0, _0805F864  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805F868  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F85E:
	ldr r0, [r4, #32]
	sub r0, r0, #128
	b _0805F98E
_0805F864:
	.4byte 0x03000680
_0805F868:
	.4byte gUnknown_08663648
_0805F86C:
	mov r0, #128
	lsl r0, r0, #4
	add r2, r3, r0
	ldr r0, [r7]
	ldr r1, [r0, #32]
	mov r3, #128
	lsl r3, r3, #6
	add r0, r1, r3
	cmp r2, r0
	ble _0805F8B8
	mov r7, #128
	lsl r7, r7, #7
	add r0, r1, r7
	cmp r2, r0
	bge _0805F8B8
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0805F898
	b _0805F98A
_0805F898:
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805F952
	b _0805F974
_0805F8A2:
	mov r7, #160
	lsl r7, r7, #5
	add r1, r3, r7
	mov r0, #144
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805F8B8
	add r0, r3, #0
	sub r0, r0, #128
	str r0, [r4, #36]
	b _0805F990
_0805F8B8:
	ldr r1, _0805F8D0  @ =0x03001D20
	mov r0, #0
	strh r0, [r1, #18]
	strh r0, [r1, #16]
	mov r0, #3
	str r0, [r1, #20]
	ldr r2, _0805F8D4  @ =0x03000548
	ldrb r0, [r2]
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2]
	b _0805F9A0
_0805F8D0:
	.4byte 0x03001D20
_0805F8D4:
	.4byte 0x03000548
_0805F8D8:
	ldr r1, [r4, #32]
	mov r0, #192
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805F938
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805F92A
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0805F914
	ldrb r2, [r1]
	ldr r0, _0805F90C  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805F910  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F92A
	.byte 0x00
	.byte 0x00
_0805F90C:
	.4byte 0x03000680
_0805F910:
	.4byte gUnknown_08663648
_0805F914:
	cmp r0, #2
	bne _0805F92A
	ldrb r2, [r1]
	ldr r0, _0805F930  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805F934  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F92A:
	ldr r0, [r4, #32]
	sub r0, r0, #128
	b _0805F98E
_0805F930:
	.4byte 0x03000680
_0805F934:
	.4byte gUnknown_08663648
_0805F938:
	ldr r0, _0805F968  @ =0x00001FFF
	cmp r1, r0
	bgt _0805F9A0
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0805F98A
	mov r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0805F974
_0805F952:
	ldrb r2, [r1]
	ldr r0, _0805F96C  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805F970  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0805F98A
	.byte 0x00
	.byte 0x00
_0805F968:
	.4byte 0x00001FFF
_0805F96C:
	.4byte 0x03000680
_0805F970:
	.4byte gUnknown_08663648
_0805F974:
	cmp r0, #2
	bne _0805F98A
	ldrb r2, [r1]
	ldr r0, _0805F998  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805F99C  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0805F98A:
	ldr r0, [r4, #32]
	add r0, r0, #128
_0805F98E:
	str r0, [r4, #32]
_0805F990:
	add r0, r4, #0
	bl sub_08061140
	b _0805F9AC
_0805F998:
	.4byte 0x03000680
_0805F99C:
	.4byte gUnknown_08663648
_0805F9A0:
	add r0, r4, #0
	bl sub_08060010
	add r0, r4, #0
	bl sub_08061140
_0805F9AC:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805F7D0

	THUMB_FUNC_START sub_0805F9B4
sub_0805F9B4: @ 0x0805F9B4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0805FF68
	ldrh r0, [r4]
	cmp r0, #177
	bne _0805FA18
	add r0, r4, #0
	bl sub_0805F408
	ldr r0, _0805F9E8  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805F9F4
	ldrh r0, [r4, #4]
	cmp r0, #1
	bls _0805F9DA
	b _0805FAD6
_0805F9DA:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805F9EC  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805F9F0  @ =gUnknown_08663488
	b _0805FA9C
_0805F9E8:
	.4byte 0x030005DE
_0805F9EC:
	.4byte 0x03000680
_0805F9F0:
	.4byte gUnknown_08663488
_0805F9F4:
	ldrh r0, [r4, #4]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FAD6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805FA10  @ =0x03000680
	ldrb r3, [r0]
	ldr r0, _0805FA14  @ =gUnknown_08663488
	b _0805FA64
	.byte 0x00
	.byte 0x00
_0805FA10:
	.4byte 0x03000680
_0805FA14:
	.4byte gUnknown_08663488
_0805FA18:
	cmp r0, #179
	bne _0805FA78
	add r0, r4, #0
	bl sub_0805F5EC
	ldr r0, _0805FA40  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805FA4C
	ldrh r0, [r4, #4]
	cmp r0, #1
	bhi _0805FAD6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805FA44  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805FA48  @ =gUnknown_08663568
	b _0805FA9C
	.byte 0x00
	.byte 0x00
_0805FA40:
	.4byte 0x030005DE
_0805FA44:
	.4byte 0x03000680
_0805FA48:
	.4byte gUnknown_08663568
_0805FA4C:
	ldrh r0, [r4, #4]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FAD6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805FA70  @ =0x03000680
	ldrb r3, [r0, #1]
	ldr r0, _0805FA74  @ =gUnknown_08663568
_0805FA64:
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
	b _0805FAD6
_0805FA70:
	.4byte 0x03000680
_0805FA74:
	.4byte gUnknown_08663568
_0805FA78:
	cmp r0, #181
	bne _0805FAD6
	add r0, r4, #0
	bl sub_0805F7D0
	ldr r0, _0805FAA8  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805FAB4
	ldrh r0, [r4, #4]
	cmp r0, #1
	bhi _0805FAD6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805FAAC  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805FAB0  @ =gUnknown_08663648
_0805FA9C:
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0804A644
	b _0805FAD6
_0805FAA8:
	.4byte 0x030005DE
_0805FAAC:
	.4byte 0x03000680
_0805FAB0:
	.4byte gUnknown_08663648
_0805FAB4:
	ldrh r0, [r4, #4]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FAD6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805FAE0  @ =0x03000680
	ldrb r3, [r0, #2]
	ldr r0, _0805FAE4  @ =gUnknown_08663648
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
_0805FAD6:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805FAE0:
	.4byte 0x03000680
_0805FAE4:
	.4byte gUnknown_08663648
	THUMB_FUNC_END sub_0805F9B4

	THUMB_FUNC_START sub_0805FAE8
sub_0805FAE8: @ 0x0805FAE8
	push {r4,lr}
	ldr r0, _0805FB3C  @ =0x0300196C
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #1
	beq _0805FB70
	ldr r0, _0805FB40  @ =0x03001D10
	ldr r2, [r0]
	ldrh r1, [r2]
	add r3, r0, #0
	cmp r1, #178
	bne _0805FB70
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #49
	beq _0805FB10
	cmp r0, #53
	beq _0805FB10
	cmp r0, #6
	bne _0805FB50
_0805FB10:
	ldr r2, _0805FB44  @ =0x03001D20
	ldr r0, [r2, #4]
	cmp r0, #1
	bne _0805FB50
	ldr r1, [r3]
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #6
	bne _0805FB2C
	mov r0, #224
	lsl r0, r0, #7
	str r0, [r1, #32]
	ldr r0, _0805FB48  @ =0xFFFFE000
	str r0, [r1, #36]
_0805FB2C:
	mov r0, #0
	strh r0, [r2, #2]
	strh r0, [r2]
	mov r1, #2
	str r1, [r2, #4]
	ldr r1, _0805FB4C  @ =0x030005D0
	strh r0, [r1]
	b _0805FB70
_0805FB3C:
	.4byte 0x0300196C
_0805FB40:
	.4byte 0x03001D10
_0805FB44:
	.4byte 0x03001D20
_0805FB48:
	.4byte 0xFFFFE000
_0805FB4C:
	.4byte 0x030005D0
_0805FB50:
	ldr r0, [r3]
	ldrh r0, [r0, #4]
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FB70
	ldr r1, _0805FBC0  @ =0x03001D20
	ldr r0, [r1, #4]
	cmp r0, #2
	bne _0805FB70
	mov r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r0, #3
	str r0, [r1, #4]
_0805FB70:
	ldrb r0, [r4]
	cmp r0, #2
	beq _0805FBF0
	ldr r0, _0805FBC4  @ =0x03001D10
	ldr r2, [r0, #4]
	ldrh r1, [r2]
	add r3, r0, #0
	cmp r1, #180
	bne _0805FBF0
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #49
	beq _0805FB92
	cmp r0, #53
	beq _0805FB92
	cmp r0, #6
	bne _0805FBD0
_0805FB92:
	ldr r2, _0805FBC0  @ =0x03001D20
	ldr r0, [r2, #12]
	cmp r0, #1
	bne _0805FBD0
	ldr r1, [r3, #4]
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #6
	bne _0805FBAE
	mov r0, #224
	lsl r0, r0, #7
	str r0, [r1, #32]
	ldr r0, _0805FBC8  @ =0xFFFFE000
	str r0, [r1, #36]
_0805FBAE:
	mov r0, #0
	strh r0, [r2, #10]
	strh r0, [r2, #8]
	mov r1, #2
	str r1, [r2, #12]
	ldr r1, _0805FBCC  @ =0x030005D0
	strh r0, [r1, #2]
	b _0805FBF0
	.byte 0x00
	.byte 0x00
_0805FBC0:
	.4byte 0x03001D20
_0805FBC4:
	.4byte 0x03001D10
_0805FBC8:
	.4byte 0xFFFFE000
_0805FBCC:
	.4byte 0x030005D0
_0805FBD0:
	ldr r0, [r3, #4]
	ldrh r0, [r0, #4]
	sub r0, r0, #19
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FBF0
	ldr r1, _0805FC40  @ =0x03001D20
	ldr r0, [r1, #12]
	cmp r0, #2
	bne _0805FBF0
	mov r0, #0
	strh r0, [r1, #10]
	strh r0, [r1, #8]
	mov r0, #3
	str r0, [r1, #12]
_0805FBF0:
	ldrb r0, [r4]
	cmp r0, #3
	beq _0805FC72
	ldr r0, _0805FC44  @ =0x03001D10
	ldr r2, [r0, #8]
	ldrh r1, [r2]
	add r3, r0, #0
	cmp r1, #182
	bne _0805FC72
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #49
	beq _0805FC12
	cmp r0, #53
	beq _0805FC12
	cmp r0, #6
	bne _0805FC50
_0805FC12:
	ldr r2, _0805FC40  @ =0x03001D20
	ldr r0, [r2, #20]
	cmp r0, #1
	bne _0805FC50
	ldr r1, [r3, #8]
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #6
	bne _0805FC2E
	mov r0, #224
	lsl r0, r0, #7
	str r0, [r1, #32]
	ldr r0, _0805FC48  @ =0xFFFFE000
	str r0, [r1, #36]
_0805FC2E:
	mov r0, #0
	strh r0, [r2, #18]
	strh r0, [r2, #16]
	mov r1, #2
	str r1, [r2, #20]
	ldr r1, _0805FC4C  @ =0x030005D0
	strh r0, [r1, #4]
	b _0805FC72
	.byte 0x00
	.byte 0x00
_0805FC40:
	.4byte 0x03001D20
_0805FC44:
	.4byte 0x03001D10
_0805FC48:
	.4byte 0xFFFFE000
_0805FC4C:
	.4byte 0x030005D0
_0805FC50:
	ldr r0, [r3, #8]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #20
	beq _0805FC66
	cmp r0, #19
	bne _0805FC72
	ldr r0, _0805FC78  @ =0x03001D20
	ldr r0, [r0, #20]
	cmp r0, #2
	bne _0805FC72
_0805FC66:
	ldr r0, _0805FC78  @ =0x03001D20
	mov r1, #0
	strh r1, [r0, #18]
	strh r1, [r0, #16]
	mov r1, #3
	str r1, [r0, #20]
_0805FC72:
	pop {r4}
	pop {r0}
	bx r0
_0805FC78:
	.4byte 0x03001D20
	THUMB_FUNC_END sub_0805FAE8

	THUMB_FUNC_START sub_0805FC7C
sub_0805FC7C: @ 0x0805FC7C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #84
	ldr r0, _0805FD34  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805FC92
	b _0805FE0C
_0805FC92:
	ldr r0, _0805FD38  @ =0x030019AC
	mov r9, r0
	ldr r6, [r0]
	ldrh r0, [r6, #4]
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bhi _0805FCA6
	b _0805FE0C
_0805FCA6:
	ldr r0, [r6, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _0805FD9C
	ldr r2, _0805FD3C  @ =0x03001940
	ldr r1, [r6, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r3, [r2]
	add r3, r3, r0
	ldr r1, [r6, #108]
	mov r12, r1
	ldr r2, [r6, #116]
	mov r10, r2
	ldr r5, [r6, #112]
	ldr r7, [r6, #120]
	mov r8, r7
	ldr r1, [r3, #104]
	mov r0, #4
	ldrsh r4, [r1, r0]
	ldr r2, [r3, #32]
	add r4, r2, r4
	mov r7, #6
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	str r2, [sp, #80]
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r3, #36]
	add r3, r2, r0
	mov r7, #2
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	cmp r10, r4
	ble _0805FD66
	ldr r0, [sp, #80]
	cmp r12, r0
	bge _0805FD66
	cmp r5, r2
	bge _0805FD66
	cmp r8, r3
	ble _0805FD66
	add r0, r6, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0805FD40
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #27
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [sp, #28]
	mov r1, r9
	ldr r0, [r1]
	mov r1, sp
	mov r2, #27
	bl sub_0803ED98
	b _0805FD66
_0805FD34:
	.4byte 0x030005DE
_0805FD38:
	.4byte 0x030019AC
_0805FD3C:
	.4byte 0x03001940
_0805FD40:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #31
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [r4, #28]
	mov r2, r9
	ldr r0, [r2]
	add r1, r4, #0
	mov r2, #31
	bl sub_0803ED98
_0805FD66:
	ldr r4, _0805FD94  @ =0x030019AC
	ldr r0, [r4]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #40
	mov r2, #0
	bl sub_080410B4
	ldr r1, _0805FD98  @ =0x03001978
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	ldr r2, [r0, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r0, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	b _0805FE06
_0805FD94:
	.4byte 0x030019AC
_0805FD98:
	.4byte 0x03001978
_0805FD9C:
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #16
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0805FDEC  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	mov r7, r9
	ldr r1, [r7]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0805FE00
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0805FDF4
	ldr r1, _0805FDF0  @ =0x030019A8
	mov r0, #1
	b _0805FE04
	.byte 0x00
	.byte 0x00
_0805FDEC:
	.4byte gUnknown_03001A1C
_0805FDF0:
	.4byte 0x030019A8
_0805FDF4:
	ldr r1, _0805FDFC  @ =0x03001978
	mov r0, #3
	b _0805FE04
	.byte 0x00
	.byte 0x00
_0805FDFC:
	.4byte 0x03001978
_0805FE00:
	ldr r1, _0805FE1C  @ =0x03001978
	mov r0, #2
_0805FE04:
	strb r0, [r1]
_0805FE06:
	ldr r1, _0805FE20  @ =0x030005DE
	mov r0, #180
	strh r0, [r1]
_0805FE0C:
	add sp, sp, #84
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0805FE1C:
	.4byte 0x03001978
_0805FE20:
	.4byte 0x030005DE
	THUMB_FUNC_END sub_0805FC7C

	THUMB_FUNC_START sub_0805FE24
sub_0805FE24: @ 0x0805FE24
	push {r4,r5,lr}
	sub sp, sp, #80
	ldr r5, _0805FE5C  @ =0x03001D10
	ldr r1, [r5]
	ldrh r0, [r1]
	cmp r0, #178
	bne _0805FE84
	ldrh r0, [r1, #4]
	mov r2, #4
	ldrsh r1, [r1, r2]
	cmp r1, #49
	beq _0805FE40
	cmp r1, #56
	bne _0805FE60
_0805FE40:
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #52
	strh r0, [r4, #2]
	ldr r0, [r5]
	mov r1, sp
	mov r2, #52
	bl sub_0803ED98
	b _0805FE84
_0805FE5C:
	.4byte 0x03001D10
_0805FE60:
	sub r0, r0, #52
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FE84
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #56
	strh r0, [r4, #2]
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #56
	bl sub_0803ED98
_0805FE84:
	bl sub_0805FC7C
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805FE24

	THUMB_FUNC_START sub_0805FE90
sub_0805FE90: @ 0x0805FE90
	push {r4,r5,lr}
	sub sp, sp, #80
	ldr r5, _0805FEC8  @ =0x03001D10
	ldr r1, [r5, #4]
	ldrh r0, [r1]
	cmp r0, #180
	bne _0805FEF0
	ldrh r0, [r1, #4]
	mov r2, #4
	ldrsh r1, [r1, r2]
	cmp r1, #49
	beq _0805FEAC
	cmp r1, #56
	bne _0805FECC
_0805FEAC:
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #52
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	mov r1, sp
	mov r2, #52
	bl sub_0803ED98
	b _0805FEF0
_0805FEC8:
	.4byte 0x03001D10
_0805FECC:
	sub r0, r0, #52
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FEF0
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #56
	strh r0, [r4, #2]
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r2, #56
	bl sub_0803ED98
_0805FEF0:
	bl sub_0805FC7C
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805FE90

	THUMB_FUNC_START sub_0805FEFC
sub_0805FEFC: @ 0x0805FEFC
	push {r4,r5,lr}
	sub sp, sp, #80
	ldr r5, _0805FF34  @ =0x03001D10
	ldr r1, [r5, #8]
	ldrh r0, [r1]
	cmp r0, #182
	bne _0805FF5C
	ldrh r0, [r1, #4]
	mov r2, #4
	ldrsh r1, [r1, r2]
	cmp r1, #49
	beq _0805FF18
	cmp r1, #56
	bne _0805FF38
_0805FF18:
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #52
	strh r0, [r4, #2]
	ldr r0, [r5, #8]
	mov r1, sp
	mov r2, #52
	bl sub_0803ED98
	b _0805FF5C
_0805FF34:
	.4byte 0x03001D10
_0805FF38:
	sub r0, r0, #52
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0805FF5C
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #56
	strh r0, [r4, #2]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #56
	bl sub_0803ED98
_0805FF5C:
	bl sub_0805FC7C
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0805FEFC

	THUMB_FUNC_START sub_0805FF68
sub_0805FF68: @ 0x0805FF68
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #177
	bne _0805FF78
	mov r5, #0
	b _0805FF86
_0805FF78:
	cmp r0, #179
	bne _0805FF80
	mov r5, #1
	b _0805FF86
_0805FF80:
	cmp r0, #181
	bne _0805FF86
	mov r5, #2
_0805FF86:
	mov r0, #4
	ldrsh r1, [r4, r0]
	ldrh r2, [r4, #4]
	cmp r1, #1
	bne _0805FFC8
	ldrb r0, [r4, #12]
	and r1, r1, r0
	cmp r1, #0
	beq _0805FFC8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0805FFC0  @ =0x03000680
	add r0, r5, r0
	ldrb r3, [r0]
	lsl r0, r5, #3
	sub r0, r0, r5
	lsl r0, r0, #5
	ldr r1, _0805FFC4  @ =gUnknown_08663488
	add r0, r0, r1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
	b _0805FFFE
	.byte 0x00
	.byte 0x00
_0805FFC0:
	.4byte 0x03000680
_0805FFC4:
	.4byte gUnknown_08663488
_0805FFC8:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #3
	bne _0805FFFE
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0805FFFE
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _08060008  @ =0x03000680
	add r0, r5, r0
	ldrb r3, [r0]
	lsl r0, r5, #3
	sub r0, r0, r5
	lsl r0, r0, #5
	ldr r1, _0806000C  @ =gUnknown_08663488
	add r0, r0, r1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0804A644
_0805FFFE:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08060008:
	.4byte 0x03000680
_0806000C:
	.4byte gUnknown_08663488
	THUMB_FUNC_END sub_0805FF68

	THUMB_FUNC_START sub_08060010
sub_08060010: @ 0x08060010
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	mov r10, r0
	ldrh r0, [r0]
	cmp r0, #177
	bne _0806002A
	mov r0, #0
	mov r9, r0
	b _0806003C
_0806002A:
	cmp r0, #179
	bne _08060034
	mov r1, #1
	mov r9, r1
	b _0806003C
_08060034:
	cmp r0, #181
	bne _0806003C
	mov r2, #2
	mov r9, r2
_0806003C:
	mov r3, r10
	ldr r2, [r3, #100]
	mov r4, #4
	ldrsh r3, [r2, r4]
	mov r5, r10
	ldr r1, [r5, #32]
	add r1, r1, r3
	mov r6, #6
	ldrsh r0, [r2, r6]
	sub r0, r0, r3
	asr r0, r0, #1
	add r1, r1, r0
	mov r8, r1
	mov r0, #0
	ldrsh r3, [r2, r0]
	ldr r1, [r5, #36]
	add r1, r1, r3
	mov r4, #2
	ldrsh r0, [r2, r4]
	sub r0, r0, r3
	asr r0, r0, #1
	add r1, r1, r0
	mov r12, r1
	ldr r0, _08060098  @ =0x030005C0
	mov r5, r9
	lsl r1, r5, #2
	add r3, r1, r0
	ldr r2, [r3]
	add r4, r0, #0
	add r7, r1, #0
	cmp r2, #0
	beq _080600A8
	ldr r6, _0806009C  @ =0x030005DE
	ldrh r0, [r6]
	cmp r0, #0
	bne _080600A8
	ldr r0, _080600A0  @ =0x030005A0
	add r0, r7, r0
	ldr r6, [r0]
	ldr r0, _080600A4  @ =0x030005B0
	add r0, r7, r0
	ldr r1, [r0]
	sub r0, r2, #1
	str r0, [r3]
	b _08060138
	.byte 0x00
	.byte 0x00
_08060098:
	.4byte 0x030005C0
_0806009C:
	.4byte 0x030005DE
_080600A0:
	.4byte 0x030005A0
_080600A4:
	.4byte 0x030005B0
_080600A8:
	add r0, r7, r4
	mov r1, #60
	str r1, [r0]
	ldr r1, _080600E8  @ =0x030005DE
	ldrh r0, [r1]
	cmp r0, #0
	bne _080600FC
	ldr r0, _080600EC  @ =0x030005CC
	ldrb r0, [r0]
	cmp r0, #1
	bne _080600C4
	mov r1, r9
	cmp r1, #0
	beq _080600D8
_080600C4:
	cmp r0, #2
	bne _080600CE
	mov r2, r9
	cmp r2, #1
	beq _080600D8
_080600CE:
	cmp r0, #3
	bne _080600FC
	mov r3, r9
	cmp r3, #2
	bne _080600FC
_080600D8:
	ldr r0, _080600F0  @ =0x030005A0
	add r0, r7, r0
	ldr r1, _080600F4  @ =0x030005D8
	ldr r1, [r1]
	str r1, [r0]
	add r6, r1, #0
	ldr r5, _080600F8  @ =0x030019AC
	b _0806011C
_080600E8:
	.4byte 0x030005DE
_080600EC:
	.4byte 0x030005CC
_080600F0:
	.4byte 0x030005A0
_080600F4:
	.4byte 0x030005D8
_080600F8:
	.4byte 0x030019AC
_080600FC:
	ldr r4, _08060148  @ =0x030005A0
	add r4, r7, r4
	ldr r5, _0806014C  @ =0x030019AC
	ldr r0, [r5]
	ldr r2, [r0, #100]
	mov r6, #4
	ldrsh r3, [r2, r6]
	ldr r1, [r0, #32]
	add r1, r1, r3
	mov r6, #6
	ldrsh r0, [r2, r6]
	sub r0, r0, r3
	asr r0, r0, #1
	add r1, r1, r0
	str r1, [r4]
	add r6, r1, #0
_0806011C:
	ldr r4, _08060150  @ =0x030005B0
	add r4, r7, r4
	ldr r0, [r5]
	ldr r2, [r0, #100]
	mov r1, #0
	ldrsh r3, [r2, r1]
	ldr r1, [r0, #36]
	add r1, r1, r3
	mov r5, #2
	ldrsh r0, [r2, r5]
	sub r0, r0, r3
	asr r0, r0, #1
	add r1, r1, r0
	str r1, [r4]
_08060138:
	cmp r8, r6
	bge _08060154
	mov r0, r8
	sub r0, r6, r0
	mov r8, r0
	mov r2, #1
	str r2, [sp, #4]
	b _08060160
_08060148:
	.4byte 0x030005A0
_0806014C:
	.4byte 0x030019AC
_08060150:
	.4byte 0x030005B0
_08060154:
	mov r3, r8
	sub r3, r3, r6
	mov r8, r3
	mov r4, #1
	neg r4, r4
	str r4, [sp, #4]
_08060160:
	cmp r12, r1
	bge _0806016E
	mov r6, r12
	sub r5, r1, r6
	mov r0, #1
	str r0, [sp, #8]
	b _08060178
_0806016E:
	mov r2, r12
	sub r5, r2, r1
	mov r3, #1
	neg r3, r3
	str r3, [sp, #8]
_08060178:
	ldr r1, _080601A4  @ =gUnknown_08663464
	mov r6, #0
	ldrsh r4, [r1, r6]
	mov r0, #32
	ldrsh r6, [r1, r0]
	mov r3, #0
	ldr r2, _080601A8  @ =gUnknown_08663444
	mov r0, #2
	ldrsh r2, [r2, r0]
	mov r0, r8
	mul r0, r2, r0
	asr r0, r0, #8
	mov r2, #64
	add r2, r2, r10
	mov r12, r2
	cmp r5, r0
	bge _080601AC
	mov r3, #30
	ldrsh r4, [r1, r3]
	mov r5, #0
	ldrsh r6, [r1, r5]
	b _080601E2
_080601A4:
	.4byte gUnknown_08663464
_080601A8:
	.4byte gUnknown_08663444
_080601AC:
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #14
	bhi _080601E2
	add r0, r3, #1
	lsl r0, r0, #1
	ldr r2, _08060208  @ =gUnknown_08663444
	add r0, r0, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	mov r2, r8
	mul r2, r0, r2
	add r0, r2, #0
	asr r0, r0, #8
	cmp r5, r0
	bge _080601AC
	mov r0, #15
	sub r0, r0, r3
	lsl r0, r0, #1
	add r0, r0, r1
	mov r5, #0
	ldrsh r4, [r0, r5]
	lsl r0, r3, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r6, [r0, r1]
_080601E2:
	ldr r2, [sp, #4]
	mul r4, r2, r4
	ldr r3, [sp, #8]
	mul r6, r3, r6
	ldr r5, _0806020C  @ =0x030005DE
	ldrh r0, [r5]
	cmp r0, #0
	beq _08060218
	ldr r0, _08060210  @ =0x03000550
	add r1, r7, r0
	ldr r0, [r1]
	sub r0, r0, r4
	str r0, [r1]
	ldr r2, _08060214  @ =0x03000560
	add r1, r7, r2
	ldr r0, [r1]
	sub r0, r0, r6
	b _0806022A
	.byte 0x00
	.byte 0x00
_08060208:
	.4byte gUnknown_08663444
_0806020C:
	.4byte 0x030005DE
_08060210:
	.4byte 0x03000550
_08060214:
	.4byte 0x03000560
_08060218:
	ldr r3, _0806027C  @ =0x03000550
	add r1, r7, r3
	ldr r0, [r1]
	add r0, r0, r4
	str r0, [r1]
	ldr r4, _08060280  @ =0x03000560
	add r1, r7, r4
	ldr r0, [r1]
	add r0, r0, r6
_0806022A:
	str r0, [r1]
	ldr r5, _0806027C  @ =0x03000550
	add r0, r7, r5
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #1
	cmp r1, r2
	bgt _08060240
	ldr r2, _08060284  @ =0xFFFFFF00
	cmp r1, r2
	bge _08060242
_08060240:
	str r2, [r0]
_08060242:
	ldr r0, _08060280  @ =0x03000560
	add r0, r7, r0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #1
	cmp r1, r2
	bgt _08060256
	ldr r2, _08060284  @ =0xFFFFFF00
	cmp r1, r2
	bge _08060258
_08060256:
	str r2, [r0]
_08060258:
	mov r6, r12
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _080602B8
	ldr r1, _0806027C  @ =0x03000550
	add r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080602B8
	mov r2, r10
	mov r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08060288
	ldrb r2, [r6]
	b _080602D8
	.byte 0x00
	.byte 0x00
_0806027C:
	.4byte 0x03000550
_08060280:
	.4byte 0x03000560
_08060284:
	.4byte 0xFFFFFF00
_08060288:
	cmp r0, #2
	bne _08060328
	mov r5, r12
	ldrb r2, [r5]
	ldr r0, _080602B0  @ =0x03000680
	add r0, r0, r9
	ldrb r3, [r0]
	mov r6, r9
	lsl r0, r6, #3
	sub r0, r0, r6
	lsl r0, r0, #5
	ldr r1, _080602B4  @ =gUnknown_08663488
	add r0, r0, r1
	str r0, [sp]
	mov r0, r10
	mov r1, #3
	bl sub_0804A644
	b _08060328
	.byte 0x00
	.byte 0x00
_080602B0:
	.4byte 0x03000680
_080602B4:
	.4byte gUnknown_08663488
_080602B8:
	mov r1, r12
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _08060328
	ldr r0, _080602F8  @ =0x03000550
	add r0, r7, r0
	ldr r0, [r0]
	cmp r0, #0
	bge _08060328
	mov r2, r10
	mov r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08060304
	ldrb r2, [r1]
_080602D8:
	ldr r0, _080602FC  @ =0x03000680
	add r0, r0, r9
	ldrb r3, [r0]
	mov r4, r9
	lsl r0, r4, #3
	sub r0, r0, r4
	lsl r0, r0, #5
	ldr r1, _08060300  @ =gUnknown_08663488
	add r0, r0, r1
	str r0, [sp]
	mov r0, r10
	mov r1, #1
	bl sub_0804A644
	b _08060328
	.byte 0x00
	.byte 0x00
_080602F8:
	.4byte 0x03000550
_080602FC:
	.4byte 0x03000680
_08060300:
	.4byte gUnknown_08663488
_08060304:
	cmp r0, #2
	bne _08060328
	mov r5, r12
	ldrb r2, [r5]
	ldr r0, _08060384  @ =0x03000680
	add r0, r0, r9
	ldrb r3, [r0]
	mov r6, r9
	lsl r0, r6, #3
	sub r0, r0, r6
	lsl r0, r0, #5
	ldr r1, _08060388  @ =gUnknown_08663488
	add r0, r0, r1
	str r0, [sp]
	mov r0, r10
	mov r1, #3
	bl sub_0804A644
_08060328:
	ldr r0, _0806038C  @ =0x03000570
	add r0, r0, r7
	mov r12, r0
	ldr r1, _08060390  @ =0x03000550
	add r0, r7, r1
	ldr r1, [r0]
	asr r1, r1, #7
	ldr r2, _08060394  @ =0x03001D38
	mov r8, r2
	ldr r3, [r2]
	add r3, r3, #52
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r2, #5
	sub r0, r2, r0
	mul r1, r0, r1
	mov r4, r12
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	ldr r6, _08060398  @ =0x03000580
	add r4, r7, r6
	ldr r5, _0806039C  @ =0x03000560
	add r0, r7, r5
	ldr r1, [r0]
	asr r1, r1, #7
	mov r0, #0
	ldrsb r0, [r3, r0]
	sub r0, r2, r0
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	mov r0, #0
	ldrsb r0, [r3, r0]
	sub r2, r2, r0
	lsl r2, r2, #5
	mov r0, r12
	ldr r1, [r0]
	ldr r5, _0806038C  @ =0x03000570
	mov r0, r8
	cmp r1, r2
	ble _080603A0
	mov r1, r12
	str r2, [r1]
	b _080603AA
_08060384:
	.4byte 0x03000680
_08060388:
	.4byte gUnknown_08663488
_0806038C:
	.4byte 0x03000570
_08060390:
	.4byte 0x03000550
_08060394:
	.4byte 0x03001D38
_08060398:
	.4byte 0x03000580
_0806039C:
	.4byte 0x03000560
_080603A0:
	neg r2, r2
	cmp r1, r2
	bge _080603AA
	mov r3, r12
	str r2, [r3]
_080603AA:
	add r2, r7, r6
	ldr r0, [r0]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #5
	sub r0, r0, r1
	lsl r0, r0, #5
	ldr r1, [r2]
	cmp r1, r0
	bgt _080603C6
	neg r0, r0
	cmp r1, r0
	bge _080603C8
_080603C6:
	str r0, [r2]
_080603C8:
	add r1, r7, r5
	mov r4, r10
	ldr r0, [r4, #32]
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [r4, #32]
	add r0, r7, r6
	ldr r1, [r4, #36]
	ldr r0, [r0]
	add r4, r1, r0
	mov r0, r10
	str r4, [r0, #36]
	ldr r0, _0806040C  @ =0x03000590
	add r3, r7, r0
	ldr r1, [r3]
	mov r8, r0
	cmp r1, #178
	bhi _08060414
	ldr r2, _08060410  @ =gUnknown_08663174
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r2
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	add r0, r4, r0
	mov r1, r10
	str r0, [r1, #36]
	ldr r0, [r3]
	add r0, r0, #1
	b _08060428
	.byte 0x00
	.byte 0x00
_0806040C:
	.4byte 0x03000590
_08060410:
	.4byte gUnknown_08663174
_08060414:
	ldr r0, _08060440  @ =gUnknown_08663174
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	add r0, r4, r0
	mov r2, r10
	str r0, [r2, #36]
	mov r0, #0
_08060428:
	str r0, [r3]
	mov r3, r10
	ldr r1, [r3, #32]
	mov r0, #192
	lsl r0, r0, #8
	cmp r1, r0
	ble _08060448
	str r0, [r3, #32]
	ldr r4, _08060444  @ =0x03000550
	add r0, r7, r4
	b _08060458
	.byte 0x00
	.byte 0x00
_08060440:
	.4byte gUnknown_08663174
_08060444:
	.4byte 0x03000550
_08060448:
	ldr r0, _08060484  @ =0x00001FFF
	cmp r1, r0
	bgt _08060460
	add r0, r0, #1
	mov r1, r10
	str r0, [r1, #32]
	ldr r2, _08060488  @ =0x03000550
	add r0, r7, r2
_08060458:
	mov r1, #0
	str r1, [r0]
	add r0, r7, r5
	str r1, [r0]
_08060460:
	mov r3, r10
	ldr r0, [r3, #36]
	mov r1, #144
	lsl r1, r1, #8
	cmp r0, r1
	ble _08060490
	str r1, [r3, #36]
	ldr r4, _0806048C  @ =0x03000560
	add r0, r7, r4
	mov r1, #0
	str r1, [r0]
	add r0, r7, r6
	str r1, [r0]
	mov r5, r8
	add r1, r7, r5
	mov r0, #135
	b _080604AC
	.byte 0x00
	.byte 0x00
_08060484:
	.4byte 0x00001FFF
_08060488:
	.4byte 0x03000550
_0806048C:
	.4byte 0x03000560
_08060490:
	ldr r1, _080604C0  @ =0xFFFFE000
	cmp r0, r1
	bge _080604AE
	mov r0, r10
	str r1, [r0, #36]
	ldr r1, _080604C4  @ =0x03000560
	add r0, r7, r1
	mov r1, #0
	str r1, [r0]
	add r0, r7, r6
	str r1, [r0]
	mov r2, r8
	add r1, r7, r2
	mov r0, #45
_080604AC:
	str r0, [r1]
_080604AE:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080604C0:
	.4byte 0xFFFFE000
_080604C4:
	.4byte 0x03000560
	THUMB_FUNC_END sub_08060010

	THUMB_FUNC_START sub_080604C8
sub_080604C8: @ 0x080604C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08060608  @ =0x08060935
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806060C  @ =0x080610F1
	str r0, [r1]
	sub r1, r1, #15
	mov r5, #0
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	mov r8, r1
	strh r2, [r7]
	strh r5, [r7, #4]
	mov r0, #4
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08060610  @ =gUnknown_08663488
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08060614  @ =0x03000680
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08060618  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, r8
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r4, r4, #6
	ldr r0, [r3]
	str r0, [r4]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #54
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r1, _0806061C  @ =0x03000608
	strb r2, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	strb r2, [r1, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r2, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	strb r0, [r3]
	str r5, [r1, #8]
	mov r6, #128
	lsl r6, r6, #8
	str r6, [r1, #12]
	ldr r2, [r4]
	mov r0, #5
	strb r0, [r2, #19]
	strb r0, [r1, #19]
	ldr r2, [r4]
	mov r0, #2
	strb r0, [r1, #17]
	strb r0, [r2, #17]
	ldr r2, [r4]
	strb r0, [r1, #18]
	strb r0, [r2, #18]
	str r5, [r1, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r5, [r7, #92]
	str r6, [r7, #96]
	ldr r0, _08060620  @ =0x030005A0
	str r5, [r0]
	ldr r0, _08060624  @ =0x030005B0
	str r5, [r0]
	ldr r0, _08060628  @ =0x030005C0
	str r5, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08060608:
	.4byte sub_08060934
_0806060C:
	.4byte sub_080610F0
_08060610:
	.4byte gUnknown_08663488
_08060614:
	.4byte 0x03000680
_08060618:
	.4byte 0xFFFFFE00
_0806061C:
	.4byte 0x03000608
_08060620:
	.4byte 0x030005A0
_08060624:
	.4byte 0x030005B0
_08060628:
	.4byte 0x030005C0
	THUMB_FUNC_END sub_080604C8

	THUMB_FUNC_START sub_0806062C
sub_0806062C: @ 0x0806062C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0806078C  @ =0x08060935
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08060790  @ =0x080610F1
	str r0, [r1]
	sub r1, r1, #15
	mov r5, #0
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	mov r8, r1
	strh r2, [r7]
	strh r5, [r7, #4]
	mov r0, #4
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08060794  @ =gUnknown_08663568
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08060798  @ =0x03000680
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6, #1]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0806079C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, r8
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #54
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r6, _080607A0  @ =0x03000608
	add r0, r6, #0
	add r0, r0, #40
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r3, #22]
	add r1, r6, #0
	add r1, r1, #41
	strb r0, [r1]
	ldrb r0, [r3, #23]
	add r1, r1, #1
	strb r0, [r1]
	add r0, r6, #0
	add r0, r0, #56
	mov r1, r8
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	strb r0, [r3]
	str r5, [r6, #48]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r6, #52]
	ldr r0, [r2]
	mov r1, #5
	strb r1, [r0, #19]
	add r0, r6, #0
	add r0, r0, #59
	strb r1, [r0]
	ldr r1, [r2]
	add r3, r6, #0
	add r3, r3, #57
	mov r0, #2
	strb r0, [r3]
	strb r0, [r1, #17]
	ldr r1, [r2]
	add r2, r6, #0
	add r2, r2, #58
	strb r0, [r2]
	strb r0, [r1, #18]
	str r5, [r6, #72]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r5, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _080607A4  @ =0x030005A0
	str r5, [r0, #4]
	ldr r0, _080607A8  @ =0x030005B0
	str r5, [r0, #4]
	ldr r0, _080607AC  @ =0x030005C0
	str r5, [r0, #4]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806078C:
	.4byte sub_08060934
_08060790:
	.4byte sub_080610F0
_08060794:
	.4byte gUnknown_08663568
_08060798:
	.4byte 0x03000680
_0806079C:
	.4byte 0xFFFFFE00
_080607A0:
	.4byte 0x03000608
_080607A4:
	.4byte 0x030005A0
_080607A8:
	.4byte 0x030005B0
_080607AC:
	.4byte 0x030005C0
	THUMB_FUNC_END sub_0806062C

	THUMB_FUNC_START sub_080607B0
sub_080607B0: @ 0x080607B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08060910  @ =0x08060935
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08060914  @ =0x080610F1
	str r0, [r1]
	sub r1, r1, #15
	mov r5, #0
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	mov r8, r1
	strh r2, [r7]
	strh r5, [r7, #4]
	mov r0, #4
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08060918  @ =gUnknown_08663648
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _0806091C  @ =0x03000680
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6, #2]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08060920  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, r8
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r0, [r3]
	str r0, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #54
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r6, _08060924  @ =0x03000608
	add r0, r6, #0
	add r0, r0, #80
	mov r1, r8
	strb r1, [r0]
	ldrb r0, [r3, #22]
	add r1, r6, #0
	add r1, r1, #81
	strb r0, [r1]
	ldrb r0, [r3, #23]
	add r1, r1, #1
	strb r0, [r1]
	add r0, r6, #0
	add r0, r0, #96
	mov r1, r8
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	strb r0, [r3]
	str r5, [r6, #88]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r6, #92]
	ldr r0, [r2]
	mov r1, #5
	strb r1, [r0, #19]
	add r0, r6, #0
	add r0, r0, #99
	strb r1, [r0]
	ldr r1, [r2]
	add r3, r6, #0
	add r3, r3, #97
	mov r0, #2
	strb r0, [r3]
	strb r0, [r1, #17]
	ldr r1, [r2]
	add r2, r6, #0
	add r2, r2, #98
	strb r0, [r2]
	strb r0, [r1, #18]
	str r5, [r6, #112]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r5, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _08060928  @ =0x030005A0
	str r5, [r0, #8]
	ldr r0, _0806092C  @ =0x030005B0
	str r5, [r0, #8]
	ldr r0, _08060930  @ =0x030005C0
	str r5, [r0, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08060910:
	.4byte sub_08060934
_08060914:
	.4byte sub_080610F0
_08060918:
	.4byte gUnknown_08663648
_0806091C:
	.4byte 0x03000680
_08060920:
	.4byte 0xFFFFFE00
_08060924:
	.4byte 0x03000608
_08060928:
	.4byte 0x030005A0
_0806092C:
	.4byte 0x030005B0
_08060930:
	.4byte 0x030005C0
	THUMB_FUNC_END sub_080607B0

	THUMB_FUNC_START sub_08060934
sub_08060934: @ 0x08060934
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08060974  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _0806097C
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08060978  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08060982
	.byte 0x00
	.byte 0x00
_08060974:
	.4byte gUnknown_03001A1C
_08060978:
	.4byte 0x00007FFF
_0806097C:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08060982:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08060934

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080609B0
sub_080609B0: @ 0x080609B0
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _080609FC  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _080609D0
	ldr r0, _08060A00  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _080609D0
	b _08060AEA
_080609D0:
	ldr r0, _08060A04  @ =0x030005E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08060A20
	ldr r2, _08060A08  @ =0x040000D4
	ldr r0, _08060A0C  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08060A10  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08060A14  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08060A18  @ =0x030005EE
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _08060A1C  @ =gUnknown_08543384
	b _08060A44
	.byte 0x00
	.byte 0x00
_080609FC:
	.4byte gNextMainState
_08060A00:
	.4byte gUnknown_030019A0
_08060A04:
	.4byte 0x030005E8
_08060A08:
	.4byte 0x040000D4
_08060A0C:
	.4byte gUnknown_0854337C
_08060A10:
	.4byte gOamBuffer
_08060A14:
	.4byte 0x84000002
_08060A18:
	.4byte 0x030005EE
_08060A1C:
	.4byte gUnknown_08543384
_08060A20:
	cmp r0, #2
	bne _08060AEA
	ldr r2, _08060AF0  @ =0x040000D4
	ldr r0, _08060AF4  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08060AF8  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08060AFC  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08060B00  @ =0x030005EE
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _08060B04  @ =gUnknown_0851F568
_08060A44:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _08060B08  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08060B0C  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _08060B10  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _08060B14  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, _08060B18  @ =0x030005F4
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _08060B1C  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _08060B20  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08060B24  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _08060B28  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08060B2C  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
_08060AEA:
	pop {r4-r7}
	pop {r0}
	bx r0
_08060AF0:
	.4byte 0x040000D4
_08060AF4:
	.4byte gUnknown_0851F560
_08060AF8:
	.4byte gOamBuffer
_08060AFC:
	.4byte 0x84000002
_08060B00:
	.4byte 0x030005EE
_08060B04:
	.4byte gUnknown_0851F568
_08060B08:
	.4byte 0x06010000
_08060B0C:
	.4byte 0x84000100
_08060B10:
	.4byte 0x000003FF
_08060B14:
	.4byte 0xFFFFFC00
_08060B18:
	.4byte 0x030005F4
_08060B1C:
	.4byte gUnknown_030012A0
_08060B20:
	.4byte 0x000001FF
_08060B24:
	.4byte 0xFFFFFE00
_08060B28:
	.4byte 0x030019AC
_08060B2C:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_080609B0

	THUMB_FUNC_START sub_08060B30
sub_08060B30: @ 0x08060B30
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	ldr r2, _08060B78  @ =0x03000548
	ldrb r1, [r2]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08060C12
	ldr r6, _08060B7C  @ =0x03001D10
	ldr r1, [r6]
	ldr r7, [r1, #32]
	ldr r0, [r1, #36]
	mov r8, r0
	add r0, r1, #0
	add r0, r0, #64
	ldrb r5, [r0]
	ldrh r0, [r1]
	cmp r0, #177
	bne _08060B80
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #178
	add r2, r5, #0
	mov r3, #0
	bl sub_08038DF4
	b _08060C06
_08060B78:
	.4byte 0x03000548
_08060B7C:
	.4byte 0x03001D10
_08060B80:
	cmp r0, #178
	bne _08060C06
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #177
	mov r2, #0
	mov r3, #0
	bl sub_08038DF4
	ldr r0, _08060BD4  @ =0x03000550
	str r4, [r0]
	ldr r0, _08060BD8  @ =0x03000560
	str r4, [r0]
	ldr r0, _08060BDC  @ =0x03000570
	str r4, [r0]
	ldr r0, _08060BE0  @ =0x03000580
	str r4, [r0]
	ldr r1, _08060BE4  @ =0x03000590
	mov r0, #135
	str r0, [r1]
	ldr r0, _08060BE8  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _08060BF4
	ldr r0, [r6]
	ldr r1, _08060BEC  @ =0x03000680
	ldrb r3, [r1]
	ldr r1, _08060BF0  @ =gUnknown_08663488
	str r1, [sp]
	mov r1, #2
	add r2, r5, #0
	bl sub_0804A644
	b _08060C06
	.byte 0x00
	.byte 0x00
_08060BD4:
	.4byte 0x03000550
_08060BD8:
	.4byte 0x03000560
_08060BDC:
	.4byte 0x03000570
_08060BE0:
	.4byte 0x03000580
_08060BE4:
	.4byte 0x03000590
_08060BE8:
	.4byte 0x030005DE
_08060BEC:
	.4byte 0x03000680
_08060BF0:
	.4byte gUnknown_08663488
_08060BF4:
	ldr r0, [r6]
	ldr r1, _08060C50  @ =0x03000680
	ldrb r3, [r1]
	ldr r1, _08060C54  @ =gUnknown_08663488
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_0804A644
_08060C06:
	ldr r0, _08060C58  @ =0x03001D10
	ldr r0, [r0]
	str r7, [r0, #32]
	mov r1, r8
	str r1, [r0, #36]
	ldr r2, _08060C5C  @ =0x03000548
_08060C12:
	ldrb r1, [r2]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08060CF2
	ldr r6, _08060C58  @ =0x03001D10
	ldr r1, [r6, #4]
	ldr r7, [r1, #32]
	ldr r0, [r1, #36]
	mov r8, r0
	add r0, r1, #0
	add r0, r0, #64
	ldrb r5, [r0]
	ldrh r0, [r1]
	cmp r0, #179
	bne _08060C60
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #180
	add r2, r5, #0
	mov r3, #0
	bl sub_08038DF4
	b _08060CE6
_08060C50:
	.4byte 0x03000680
_08060C54:
	.4byte gUnknown_08663488
_08060C58:
	.4byte 0x03001D10
_08060C5C:
	.4byte 0x03000548
_08060C60:
	cmp r0, #180
	bne _08060CE6
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #179
	mov r2, #0
	mov r3, #0
	bl sub_08038DF4
	ldr r0, _08060CB4  @ =0x03000550
	str r4, [r0, #4]
	ldr r0, _08060CB8  @ =0x03000560
	str r4, [r0, #4]
	ldr r0, _08060CBC  @ =0x03000570
	str r4, [r0, #4]
	ldr r0, _08060CC0  @ =0x03000580
	str r4, [r0, #4]
	ldr r1, _08060CC4  @ =0x03000590
	mov r0, #135
	str r0, [r1, #4]
	ldr r0, _08060CC8  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _08060CD4
	ldr r0, [r6, #4]
	ldr r1, _08060CCC  @ =0x03000680
	ldrb r3, [r1, #1]
	ldr r1, _08060CD0  @ =gUnknown_08663568
	str r1, [sp]
	mov r1, #2
	add r2, r5, #0
	bl sub_0804A644
	b _08060CE6
	.byte 0x00
	.byte 0x00
_08060CB4:
	.4byte 0x03000550
_08060CB8:
	.4byte 0x03000560
_08060CBC:
	.4byte 0x03000570
_08060CC0:
	.4byte 0x03000580
_08060CC4:
	.4byte 0x03000590
_08060CC8:
	.4byte 0x030005DE
_08060CCC:
	.4byte 0x03000680
_08060CD0:
	.4byte gUnknown_08663568
_08060CD4:
	ldr r0, [r6, #4]
	ldr r1, _08060D30  @ =0x03000680
	ldrb r3, [r1, #1]
	ldr r1, _08060D34  @ =gUnknown_08663568
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_0804A644
_08060CE6:
	ldr r0, _08060D38  @ =0x03001D10
	ldr r0, [r0, #4]
	str r7, [r0, #32]
	mov r1, r8
	str r1, [r0, #36]
	ldr r2, _08060D3C  @ =0x03000548
_08060CF2:
	ldrb r1, [r2]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08060DD2
	ldr r6, _08060D38  @ =0x03001D10
	ldr r1, [r6, #8]
	ldr r7, [r1, #32]
	ldr r0, [r1, #36]
	mov r8, r0
	add r0, r1, #0
	add r0, r0, #64
	ldrb r5, [r0]
	ldrh r0, [r1]
	cmp r0, #181
	bne _08060D40
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #182
	add r2, r5, #0
	mov r3, #0
	bl sub_08038DF4
	b _08060DC6
_08060D30:
	.4byte 0x03000680
_08060D34:
	.4byte gUnknown_08663568
_08060D38:
	.4byte 0x03001D10
_08060D3C:
	.4byte 0x03000548
_08060D40:
	cmp r0, #182
	bne _08060DC6
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #181
	mov r2, #0
	mov r3, #0
	bl sub_08038DF4
	ldr r0, _08060D94  @ =0x03000550
	str r4, [r0, #8]
	ldr r0, _08060D98  @ =0x03000560
	str r4, [r0, #8]
	ldr r0, _08060D9C  @ =0x03000570
	str r4, [r0, #8]
	ldr r0, _08060DA0  @ =0x03000580
	str r4, [r0, #8]
	ldr r1, _08060DA4  @ =0x03000590
	mov r0, #135
	str r0, [r1, #8]
	ldr r0, _08060DA8  @ =0x030005DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _08060DB4
	ldr r0, [r6, #8]
	ldr r1, _08060DAC  @ =0x03000680
	ldrb r3, [r1, #2]
	ldr r1, _08060DB0  @ =gUnknown_08663648
	str r1, [sp]
	mov r1, #2
	add r2, r5, #0
	bl sub_0804A644
	b _08060DC6
	.byte 0x00
	.byte 0x00
_08060D94:
	.4byte 0x03000550
_08060D98:
	.4byte 0x03000560
_08060D9C:
	.4byte 0x03000570
_08060DA0:
	.4byte 0x03000580
_08060DA4:
	.4byte 0x03000590
_08060DA8:
	.4byte 0x030005DE
_08060DAC:
	.4byte 0x03000680
_08060DB0:
	.4byte gUnknown_08663648
_08060DB4:
	ldr r0, [r6, #8]
	ldr r1, _08060DE4  @ =0x03000680
	ldrb r3, [r1, #2]
	ldr r1, _08060DE8  @ =gUnknown_08663648
	str r1, [sp]
	mov r1, #0
	add r2, r5, #0
	bl sub_0804A644
_08060DC6:
	ldr r0, _08060DEC  @ =0x03001D10
	ldr r0, [r0, #8]
	str r7, [r0, #32]
	mov r1, r8
	str r1, [r0, #36]
	ldr r2, _08060DF0  @ =0x03000548
_08060DD2:
	mov r0, #0
	strb r0, [r2]
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08060DE4:
	.4byte 0x03000680
_08060DE8:
	.4byte gUnknown_08663648
_08060DEC:
	.4byte 0x03001D10
_08060DF0:
	.4byte 0x03000548
	THUMB_FUNC_END sub_08060B30

	THUMB_FUNC_START sub_08060DF4
sub_08060DF4: @ 0x08060DF4
	push {r4-r6,lr}
	mov r2, #0
	ldr r4, _08060E28  @ =0x03001D20
	add r6, r4, #0
	mov r3, #0
	add r5, r4, #4
_08060E00:
	lsl r0, r2, #3
	add r1, r0, r6
	strh r3, [r1, #2]
	strh r3, [r1]
	add r0, r0, r5
	str r3, [r0]
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #2
	bls _08060E00
	mov r0, #0
	strh r0, [r4, #2]
	strh r0, [r4]
	mov r0, #1
	str r0, [r4, #4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08060E28:
	.4byte 0x03001D20
	THUMB_FUNC_END sub_08060DF4

	THUMB_FUNC_START sub_08060E2C
sub_08060E2C: @ 0x08060E2C
	push {r4,lr}
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldr r1, _08060E54  @ =0x03001D20
	lsl r2, r0, #3
	add r3, r2, r1
	mov r4, #0
	strh r4, [r3, #2]
	strh r4, [r3]
	add r1, r1, #4
	add r2, r2, r1
	mov r1, #2
	str r1, [r2]
	ldr r1, _08060E58  @ =0x030005D0
	lsl r0, r0, #1
	add r0, r0, r1
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
_08060E54:
	.4byte 0x03001D20
_08060E58:
	.4byte 0x030005D0
	THUMB_FUNC_END sub_08060E2C

	THUMB_FUNC_START sub_08060E5C
sub_08060E5C: @ 0x08060E5C
	lsl r0, r0, #16
	ldr r2, _08060E74  @ =0x03001D20
	lsr r0, r0, #13
	add r3, r0, r2
	mov r1, #0
	strh r1, [r3, #2]
	strh r1, [r3]
	add r2, r2, #4
	add r0, r0, r2
	mov r1, #3
	str r1, [r0]
	bx lr
_08060E74:
	.4byte 0x03001D20
	THUMB_FUNC_END sub_08060E5C

	THUMB_FUNC_START sub_08060E78
sub_08060E78: @ 0x08060E78
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r3, #0
	ldr r1, _08060EF4  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08060EA2
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _08060EB2
_08060EA2:
	ldr r1, _08060EF8  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08060EEE
_08060EB2:
	add r0, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r3, #0
	bl _call_via_r1
	mov r4, #0
	ldr r5, _08060EFC  @ =0x03001D10
_08060EC4:
	lsl r0, r4, #2
	add r0, r0, r5
	ldr r0, [r0]
	bl sub_08061188
	add r1, r4, #1
	lsl r1, r1, #24
	lsr r4, r1, #24
	cmp r4, #2
	bls _08060EC4
	ldr r1, _08060F00  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #6
	and r1, r1, r2
	cmp r1, #0
	beq _08060EEE
	bl sub_08060B30
	bl sub_0805FAE8
_08060EEE:
	pop {r4,r5}
	pop {r1}
	bx r1
_08060EF4:
	.4byte 0x030019AC
_08060EF8:
	.4byte gUnknown_03001C78
_08060EFC:
	.4byte 0x03001D10
_08060F00:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08060E78

	THUMB_FUNC_START sub_08060F04
sub_08060F04: @ 0x08060F04
	bx lr
	THUMB_FUNC_END sub_08060F04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08060F08
sub_08060F08: @ 0x08060F08
	bx lr
	THUMB_FUNC_END sub_08060F08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08060F0C
sub_08060F0C: @ 0x08060F0C
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _08060F60  @ =0x03001940
	ldr r1, [r1]
	add r1, r1, #153
	mov r4, #0
	strb r4, [r1]
	ldr r2, _08060F64  @ =0x030005F0
	ldr r1, _08060F68  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r2]
	ldr r1, _08060F6C  @ =0x030005E8
	strb r4, [r1]
	ldr r1, _08060F70  @ =0x03001D10
	ldr r1, [r1]
	add r1, r1, #84
	mov r2, #30
	strh r2, [r1]
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _08060F74  @ =0x030005E9
	ldrb r3, [r1]
	ldr r1, _08060F78  @ =gUnknown_08662CA4
	str r1, [sp]
	mov r1, #1
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08060F60:
	.4byte 0x03001940
_08060F64:
	.4byte 0x030005F0
_08060F68:
	.4byte gUnknown_0854301C
_08060F6C:
	.4byte 0x030005E8
_08060F70:
	.4byte 0x03001D10
_08060F74:
	.4byte 0x030005E9
_08060F78:
	.4byte gUnknown_08662CA4
	THUMB_FUNC_END sub_08060F0C

	THUMB_FUNC_START sub_08060F7C
sub_08060F7C: @ 0x08060F7C
	push {r4,lr}
	add r4, r0, #0
	bl sub_0805EE00
	lsl r0, r0, #24
	cmp r0, #0
	bne _08060FA2
	add r0, r4, #0
	add r0, r0, #84
	ldr r1, _08060FA8  @ =0x030005F2
	mov r3, #0
	ldrsh r2, [r0, r3]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	blt _08060FA2
	add r0, r4, #0
	bl sub_0805F0FC
_08060FA2:
	pop {r4}
	pop {r0}
	bx r0
_08060FA8:
	.4byte 0x030005F2
	THUMB_FUNC_END sub_08060F7C

	THUMB_FUNC_START sub_08060FAC
sub_08060FAC: @ 0x08060FAC
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08060FFC
	ldr r1, _08060FD8  @ =0x030005EC
	ldr r0, _08060FDC  @ =0x030005EA
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _08060FE0  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _08060FE4
	add r0, r2, #1
	b _08060FE6
	.byte 0x00
	.byte 0x00
_08060FD8:
	.4byte 0x030005EC
_08060FDC:
	.4byte 0x030005EA
_08060FE0:
	.4byte 0x030005E0
_08060FE4:
	mov r0, #0
_08060FE6:
	strh r0, [r3]
	add r0, r4, #0
	bl sub_0805F0FC
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08061004  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08060FFC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08061004:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08060FAC

	THUMB_FUNC_START sub_08061008
sub_08061008: @ 0x08061008
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08061038
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08061040  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _08061044  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
_08061038:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08061040:
	.4byte 0x030005E9
_08061044:
	.4byte gUnknown_08662CA4
	THUMB_FUNC_END sub_08061008

	THUMB_FUNC_START sub_08061048
sub_08061048: @ 0x08061048
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806106A
	ldr r0, _08061070  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _08061074  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r2, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
_0806106A:
	add sp, sp, #4
	pop {r0}
	bx r0
_08061070:
	.4byte 0x030005E9
_08061074:
	.4byte gUnknown_08662CA4
	THUMB_FUNC_END sub_08061048

	THUMB_FUNC_START sub_08061078
sub_08061078: @ 0x08061078
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806109A
	ldr r0, _080610A0  @ =0x030005E9
	ldrb r3, [r0]
	ldr r0, _080610A4  @ =gUnknown_08662CA4
	str r0, [sp]
	add r0, r2, #0
	mov r1, #12
	mov r2, #0
	bl sub_0804A644
_0806109A:
	add sp, sp, #4
	pop {r0}
	bx r0
_080610A0:
	.4byte 0x030005E9
_080610A4:
	.4byte gUnknown_08662CA4
	THUMB_FUNC_END sub_08061078

	THUMB_FUNC_START sub_080610A8
sub_080610A8: @ 0x080610A8
	push {r4,lr}
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080610EA
	ldr r1, _080610D4  @ =0x030005EC
	ldr r0, _080610D8  @ =0x030005EA
	ldrh r2, [r0]
	strh r2, [r1]
	add r3, r0, #0
	mov r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080610DC  @ =0x030005E0
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _080610E0
	add r0, r2, #1
	b _080610E2
	.byte 0x00
	.byte 0x00
_080610D4:
	.4byte 0x030005EC
_080610D8:
	.4byte 0x030005EA
_080610DC:
	.4byte 0x030005E0
_080610E0:
	mov r0, #0
_080610E2:
	strh r0, [r3]
	add r0, r4, #0
	bl sub_0805F0FC
_080610EA:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080610A8

	THUMB_FUNC_START sub_080610F0
sub_080610F0: @ 0x080610F0
	push {lr}
	add r3, r0, #0
	ldr r1, _08061134  @ =0x03001D38
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0806112E
	ldr r1, _08061138  @ =0x030019AC
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0806112E
	ldr r1, _0806113C  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #6
	and r1, r1, r2
	cmp r1, #0
	beq _0806112E
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r3, #0
	bl _call_via_r1
_0806112E:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08061134:
	.4byte 0x03001D38
_08061138:
	.4byte 0x030019AC
_0806113C:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_080610F0

	THUMB_FUNC_START sub_08061140
sub_08061140: @ 0x08061140
	push {r4,lr}
	add r4, r0, #0
	ldr r0, [r4, #76]
	cmp r0, #0
	beq _0806115A
	ldr r0, _08061180  @ =0x030019AC
	ldr r0, [r0]
	add r1, r4, #0
	add r1, r1, #61
	ldr r0, [r0, #76]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08061178
_0806115A:
	ldr r0, _08061184  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _0806116C
	bl sub_0805FC7C
_0806116C:
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r1, _08061180  @ =0x030019AC
	ldr r1, [r1]
	str r0, [r1, #76]
_08061178:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08061180:
	.4byte 0x030019AC
_08061184:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08061140

	THUMB_FUNC_START sub_08061188
sub_08061188: @ 0x08061188
	push {r4,lr}
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #178
	bne _080611AC
	ldr r0, _080611F4  @ =0x03001D40
	ldrb r0, [r0]
	cmp r0, #0
	beq _080611A6
	ldr r0, [r4, #76]
	cmp r0, #0
	bne _080611A6
	add r0, r4, #0
	bl sub_0805FE24
_080611A6:
	ldr r1, _080611F4  @ =0x03001D40
	mov r0, #0
	strb r0, [r1]
_080611AC:
	ldrh r0, [r4]
	cmp r0, #180
	bne _080611CE
	ldr r0, _080611F8  @ =0x03001D3C
	ldrb r0, [r0]
	cmp r0, #0
	beq _080611C6
	ldr r0, [r4, #76]
	cmp r0, #0
	bne _080611C6
	add r0, r4, #0
	bl sub_0805FE90
_080611C6:
	ldr r1, _080611F8  @ =0x03001D3C
	mov r0, #0
	strb r0, [r1]
	ldrh r0, [r4]
_080611CE:
	cmp r0, #182
	bne _080611EC
	ldr r0, _080611FC  @ =0x03001D44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080611E6
	ldr r0, [r4, #76]
	cmp r0, #0
	bne _080611E6
	add r0, r4, #0
	bl sub_0805FEFC
_080611E6:
	ldr r1, _080611FC  @ =0x03001D44
	mov r0, #0
	strb r0, [r1]
_080611EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080611F4:
	.4byte 0x03001D40
_080611F8:
	.4byte 0x03001D3C
_080611FC:
	.4byte 0x03001D44
	THUMB_FUNC_END sub_08061188

	THUMB_FUNC_START sub_08061200
sub_08061200: @ 0x08061200
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r1, _08061234  @ =0x03001C48
	mov r3, #16
	neg r3, r3
	add r0, r3, #0
	strh r0, [r1]
	ldr r0, _08061238  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08061240
	ldr r1, _0806123C  @ =0x03001C40
	mov r0, #0
	b _08061248
	.byte 0x00
	.byte 0x00
_08061234:
	.4byte 0x03001C48
_08061238:
	.4byte gUnknown_03000B80
_0806123C:
	.4byte 0x03001C40
_08061240:
	ldr r1, _08061364  @ =0x03001C40
	mov r3, #8
	neg r3, r3
	add r0, r3, #0
_08061248:
	strh r0, [r1]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08061368  @ =0x08061391
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806136C  @ =0x08062281
	str r0, [r1]
	ldr r0, _08061370  @ =gUnknown_03001C78
	str r7, [r0]
	ldr r1, _08061374  @ =0x030006A0
	ldr r0, [r7, #32]
	asr r0, r0, #8
	str r0, [r1]
	ldr r1, _08061378  @ =0x030006A4
	ldr r0, [r7, #36]
	asr r0, r0, #8
	str r0, [r1]
	mov r5, #0
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	mov r1, r8
	strh r1, [r7, #4]
	mov r0, #22
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806137C  @ =gUnknown_086637A0
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08061380  @ =0x0300068D
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08061384  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	strb r5, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	strb r5, [r7, #10]
	ldr r0, _08061388  @ =0x03001C50
	strb r5, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	strb r5, [r0, #16]
	mov r2, r8
	str r2, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	mov r1, #11
	strb r1, [r0, #19]
	strb r5, [r0, #17]
	strb r5, [r0, #18]
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _0806138C  @ =0x03000690
	mov r3, r8
	strh r3, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08061364:
	.4byte 0x03001C40
_08061368:
	.4byte sub_08061390
_0806136C:
	.4byte sub_08062280
_08061370:
	.4byte gUnknown_03001C78
_08061374:
	.4byte 0x030006A0
_08061378:
	.4byte 0x030006A4
_0806137C:
	.4byte gUnknown_086637A0
_08061380:
	.4byte 0x0300068D
_08061384:
	.4byte 0xFFFFFE00
_08061388:
	.4byte 0x03001C50
_0806138C:
	.4byte 0x03000690
	THUMB_FUNC_END sub_08061200

	THUMB_FUNC_START sub_08061390
sub_08061390: @ 0x08061390
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r4, #0
	ldr r1, _08061410  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _080613BA
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _080613CA
_080613BA:
	ldr r1, _08061414  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0806144C
_080613CA:
	add r0, r7, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _08061418  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _080613F6
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806141C  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_080613F6:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _08061420
	add r0, r7, #0
	mov r1, #0
	bl sub_0804A580
	b _08061426
	.byte 0x00
	.byte 0x00
_08061410:
	.4byte 0x030019AC
_08061414:
	.4byte gUnknown_03001C78
_08061418:
	.4byte gUnknown_03001A1C
_0806141C:
	.4byte 0x00007FFF
_08061420:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08061426:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
_0806144C:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08061390

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08061454
sub_08061454: @ 0x08061454
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r5, r0, #0
	mov r0, #4
	ldrsh r6, [r5, r0]
	cmp r6, #1
	beq _08061468
	b _08061594
_08061468:
	add r4, r5, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _080614A4  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r5, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _0806148C
	b _08061746
_0806148C:
	ldr r0, _080614A8  @ =0x0300068C
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _080614AC
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	ble _080614AC
	mov r3, r8
	strb r6, [r3]
	b _080615E6
_080614A4:
	.4byte 0x03001940
_080614A8:
	.4byte 0x0300068C
_080614AC:
	ldr r2, _080614CC  @ =0x0300069C
	ldr r0, _080614D0  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _080614D8
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _080614D4  @ =0x030006A8
	ldr r0, [r0]
	bl sub_08040FC0
	b _080614F8
_080614CC:
	.4byte 0x0300069C
_080614D0:
	.4byte 0x030019AC
_080614D4:
	.4byte 0x030006A8
_080614D8:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _080614F8
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08061528  @ =0x03000694
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0806152C  @ =0x03000696
	ldr r0, _08061530  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_080614F8:
	ldr r4, _0806152C  @ =0x03000696
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _0806155E
	ldr r3, _08061528  @ =0x03000694
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	ldr r0, _08061534  @ =0x0300068C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806153C
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08061522
	mov r0, #0
	strh r0, [r3]
_08061522:
	ldr r2, _08061538  @ =gUnknown_0854301C
	b _0806154E
	.byte 0x00
	.byte 0x00
_08061528:
	.4byte 0x03000694
_0806152C:
	.4byte 0x03000696
_08061530:
	.4byte gUnknown_0851F440
_08061534:
	.4byte 0x0300068C
_08061538:
	.4byte gUnknown_0854301C
_0806153C:
	cmp r0, #2
	bne _0806155E
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0806154C
	mov r0, #0
	strh r0, [r3]
_0806154C:
	ldr r2, _08061588  @ =gUnknown_0851F440
_0806154E:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0806155E:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0806156A
	b _08061746
_0806156A:
	ldrh r4, [r7]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806158C  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061590  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	bl sub_0804A644
	strh r4, [r7]
	b _08061746
	.byte 0x00
	.byte 0x00
_08061588:
	.4byte gUnknown_0851F440
_0806158C:
	.4byte 0x0300068D
_08061590:
	.4byte gUnknown_086637A0
_08061594:
	cmp r6, #2
	beq _0806159A
	b _08061728
_0806159A:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080615CE
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #249
	bgt _080615CE
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r5, #12]
	strb r1, [r5, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080615CE:
	ldr r2, _08061610  @ =0x0300068C
	ldrb r1, [r2]
	cmp r1, #0
	bne _08061624
	add r0, r5, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #249
	ble _08061624
	mov r0, #1
	strb r0, [r2]
_080615E6:
	ldr r5, _08061614  @ =0x0300069C
	ldr r0, _08061618  @ =0xFFFFEC00
	str r0, [r5]
	ldr r0, _0806161C  @ =0x03000694
	strh r1, [r0]
	ldr r4, _08061620  @ =0x030006A8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	ldr r1, [r5]
	bl sub_08040FC0
	b _08061746
_08061610:
	.4byte 0x0300068C
_08061614:
	.4byte 0x0300069C
_08061618:
	.4byte 0xFFFFEC00
_0806161C:
	.4byte 0x03000694
_08061620:
	.4byte 0x030006A8
_08061624:
	ldr r2, _08061644  @ =0x0300069C
	ldr r0, _08061648  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08061650
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0806164C  @ =0x030006A8
	ldr r0, [r0]
	bl sub_08040FC0
	b _08061670
_08061644:
	.4byte 0x0300069C
_08061648:
	.4byte 0x030019AC
_0806164C:
	.4byte 0x030006A8
_08061650:
	ldr r1, _080616A0  @ =0x0300068C
	ldrb r0, [r1]
	cmp r0, #1
	bne _08061670
	mov r0, #2
	strb r0, [r1]
	ldr r1, _080616A4  @ =0x03000694
	mov r0, #0
	strh r0, [r1]
	ldr r1, _080616A8  @ =0x03000696
	ldr r0, _080616AC  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_08061670:
	ldr r4, _080616A8  @ =0x03000696
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	ldr r1, _080616A0  @ =0x0300068C
	mov r8, r1
	cmp r0, #0
	bgt _080616D6
	ldr r3, _080616A4  @ =0x03000694
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrb r1, [r1]
	cmp r1, #1
	bne _080616B4
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _0806169C
	mov r0, #0
	strh r0, [r3]
_0806169C:
	ldr r2, _080616B0  @ =gUnknown_0854301C
	b _080616C6
_080616A0:
	.4byte 0x0300068C
_080616A4:
	.4byte 0x03000694
_080616A8:
	.4byte 0x03000696
_080616AC:
	.4byte gUnknown_0851F440
_080616B0:
	.4byte gUnknown_0854301C
_080616B4:
	cmp r1, #2
	bne _08061746
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _080616C4
	mov r0, #0
	strh r0, [r3]
_080616C4:
	ldr r2, _08061714  @ =gUnknown_0851F440
_080616C6:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_080616D6:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _08061746
	ldr r2, _08061718  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806171C  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061720  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	bl sub_0804A644
	ldr r0, _08061724  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	b _08061746
	.byte 0x00
	.byte 0x00
_08061714:
	.4byte gUnknown_0851F440
_08061718:
	.4byte gUnknown_03001A1C
_0806171C:
	.4byte 0x0300068D
_08061720:
	.4byte gUnknown_086637A0
_08061724:
	.4byte 0x03001940
_08061728:
	add r0, r5, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08061746
	add r0, r5, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #160
	ble _08061746
	add r0, r5, #0
	bl sub_08062574
_08061746:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08061454

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08061754
sub_08061754: @ 0x08061754
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080617F8
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bne _080617D4
	ldr r0, _080617AC  @ =0x03000692
	mov r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080617B0  @ =0x03000688
	ldr r1, [r1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #8
	bne _080617B4
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #192
	mov r2, #0
	bl sub_08038DF4
	b _080617F8
	.byte 0x00
	.byte 0x00
_080617AC:
	.4byte 0x03000692
_080617B0:
	.4byte 0x03000688
_080617B4:
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #52
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #192
	mov r2, #1
	bl sub_08038DF4
	b _080617F8
_080617D4:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080617F8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _08061800  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061804  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_080617F8:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08061800:
	.4byte 0x0300068D
_08061804:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_08061754

	THUMB_FUNC_START sub_08061808
sub_08061808: @ 0x08061808
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #13
	bne _08061858
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080618A8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806184C  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061850  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08061854  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
	b _080618A8
	.byte 0x00
	.byte 0x00
_0806184C:
	.4byte 0x0300068D
_08061850:
	.4byte gUnknown_086637A0
_08061854:
	.4byte 0xFFFFF000
_08061858:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _0806187A
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #142
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806187A:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080618A8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080618B0  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _080618B4  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _080618B8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_080618A8:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_080618B0:
	.4byte 0x0300068D
_080618B4:
	.4byte gUnknown_086637A0
_080618B8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08061808

	THUMB_FUNC_START sub_080618BC
sub_080618BC: @ 0x080618BC
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #15
	bne _08061910
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _080618D6
	b _080619EE
_080618D6:
	mov r0, #18
	bl sub_08071E14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08061904  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061908  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0806190C  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	b _08061998
	.byte 0x00
	.byte 0x00
_08061904:
	.4byte 0x0300068D
_08061908:
	.4byte gUnknown_086637A0
_0806190C:
	.4byte 0xFFFFF000
_08061910:
	cmp r0, #16
	bne _08061940
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080619EE
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08061938  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _0806193C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	b _080619EE
	.byte 0x00
	.byte 0x00
_08061938:
	.4byte 0x0300068D
_0806193C:
	.4byte gUnknown_086637A0
_08061940:
	cmp r0, #17
	bne _080619AC
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #8
	bne _08061966
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #95
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08061966:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080619EE
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080619A0  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _080619A4  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #18
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _080619A8  @ =0xFFFFE000
_08061998:
	add r0, r0, r1
	str r0, [r4, #36]
	b _080619EE
	.byte 0x00
	.byte 0x00
_080619A0:
	.4byte 0x0300068D
_080619A4:
	.4byte gUnknown_086637A0
_080619A8:
	.4byte 0xFFFFE000
_080619AC:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080619EE
	bl sub_08072144
	cmp r0, #0
	beq _080619C2
	bl sub_080720AC
_080619C2:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #148
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080619F8  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _080619FC  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
_080619EE:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080619F8:
	.4byte 0x0300068D
_080619FC:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_080618BC

	THUMB_FUNC_START sub_08061A00
sub_08061A00: @ 0x08061A00
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #20
	bne _08061A44
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08061AB6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08061A38  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061A3C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _08061A40  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	b _08061AB6
_08061A38:
	.4byte 0x0300068D
_08061A3C:
	.4byte gUnknown_086637A0
_08061A40:
	.4byte 0xFFFFE000
_08061A44:
	add r4, r4, #84
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #25
	bne _08061A64
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #94
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08061A64:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _08061A7E
	ldr r1, _08061AC0  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _08061AC4  @ =0x03001C48
	ldrh r0, [r1]
	sub r0, r0, #16
	strh r0, [r1]
_08061A7E:
	add r0, r2, #0
	sub r0, r0, #34
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #20
	bhi _08061A92
	ldr r1, _08061AC0  @ =0x03001C40
	ldrh r0, [r1]
	add r0, r0, #6
	strh r0, [r1]
_08061A92:
	cmp r3, #54
	ble _08061AB6
	ldr r0, _08061AC8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #134
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _08061AB6
	ldr r0, _08061ACC  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #10
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #18
	bl sub_08071E14
_08061AB6:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08061AC0:
	.4byte 0x03001C40
_08061AC4:
	.4byte 0x03001C48
_08061AC8:
	.4byte gUnknown_03001A1C
_08061ACC:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_08061A00

	THUMB_FUNC_START sub_08061AD0
sub_08061AD0: @ 0x08061AD0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	add r6, r0, #0
	ldr r1, _08061B3C  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	add r5, r1, #0
	cmp r4, #0
	beq _08061B50
	ldr r0, _08061B40  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061B44  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08061B48  @ =0x03001968
	ldrh r0, [r6]
	str r0, [r1]
	ldr r2, _08061B4C  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _08061B30
	b _08061E20
_08061B30:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _08061E20
	.byte 0x00
	.byte 0x00
_08061B3C:
	.4byte 0x030019AC
_08061B40:
	.4byte 0x0300068D
_08061B44:
	.4byte gUnknown_086637A0
_08061B48:
	.4byte 0x03001968
_08061B4C:
	.4byte gUnknown_03001A1C
_08061B50:
	ldr r0, _08061B94  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _08061BA0
	mov r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #11
	beq _08061BA0
	cmp r0, #12
	beq _08061BA0
	ldr r0, _08061B98  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061B9C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #11
	mov r2, #0
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08061E4C
	.byte 0x00
	.byte 0x00
_08061B94:
	.4byte gUnknown_03001A1C
_08061B98:
	.4byte 0x0300068D
_08061B9C:
	.4byte gUnknown_086637A0
_08061BA0:
	ldr r2, [r6, #76]
	mov r3, #1
	neg r3, r3
	cmp r2, r3
	bgt _08061BAC
	b _08061E4C
_08061BAC:
	ldr r4, _08061BF8  @ =0x03001940
	mov r8, r4
	mov r0, #176
	mov r9, r0
	mov r1, r9
	mul r1, r2, r1
	ldr r0, [r4]
	add r7, r0, r1
	ldrh r0, [r7]
	cmp r0, #0
	bne _08061BFC
	add r0, r7, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r7, #32]
	asr r2, r2, #8
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r6, #32]
	asr r1, r1, #8
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	blt _08061C3C
	b _08061C60
_08061BF8:
	.4byte 0x03001940
_08061BFC:
	cmp r0, #192
	bne _08061CE8
	ldr r1, [r5]
	ldr r0, [r1, #72]
	cmp r0, r2
	bne _08061C84
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r7, #32]
	asr r2, r2, #8
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r6, #32]
	asr r1, r1, #8
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _08061C60
_08061C3C:
	ldr r0, _08061C58  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061C5C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	mov r2, #1
	bl sub_0804A644
	mov r0, #0
	bl sub_08061E5C
	b _08061E12
	.byte 0x00
	.byte 0x00
_08061C58:
	.4byte 0x0300068D
_08061C5C:
	.4byte gUnknown_086637A0
_08061C60:
	ldr r0, _08061C7C  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061C80  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_08061E5C
	b _08061E12
	.byte 0x00
	.byte 0x00
_08061C7C:
	.4byte 0x0300068D
_08061C80:
	.4byte gUnknown_086637A0
_08061C84:
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08061CD8
	ldr r4, [r7, #32]
	ldr r5, [r7, #36]
	add r0, r7, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #193
	mov r2, #0
	mov r3, #0
	bl sub_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, r8
	ldr r2, [r1]
	mov r1, r9
	mul r1, r0, r1
	add r1, r1, r2
	ldr r2, _08061CD4  @ =0xFFFFF800
	add r4, r4, r2
	str r4, [r1, #32]
	add r5, r5, r2
	str r5, [r1, #36]
	bl sub_0804106C
	b _08061E12
_08061CD4:
	.4byte 0xFFFFF800
_08061CD8:
	str r3, [r6, #76]
	ldr r0, [r6, #92]
	ldr r1, _08061CE4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r6, #92]
	b _08061E4C
_08061CE4:
	.4byte 0xFFFFFF00
_08061CE8:
	cmp r0, #193
	bne _08061CD8
	add r1, r6, #0
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08061D5C
	ldr r0, _08061D40  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061D44  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #15
	bl sub_0804A644
	ldr r2, _08061D48  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #8
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08061D4C  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _08061D50  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08061D54  @ =gUnknown_03000B6C
	ldr r1, [r2]
	ldr r0, _08061D58  @ =0x00001388
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r6, #32]
	asr r1, r1, #8
	add r1, r1, #16
	ldr r2, [r6, #36]
	asr r2, r2, #8
	bl sub_08031A64
	b _08061DC2
	.byte 0x00
	.byte 0x00
_08061D40:
	.4byte 0x0300068D
_08061D44:
	.4byte gUnknown_086637A0
_08061D48:
	.4byte gUnknown_03001A1C
_08061D4C:
	.4byte gUnknown_030019A0
_08061D50:
	.4byte 0x20040000
_08061D54:
	.4byte gUnknown_03000B6C
_08061D58:
	.4byte 0x00001388
_08061D5C:
	cmp r0, #3
	bne _08061D78
	ldr r1, _08061D6C  @ =0x03000684
	mov r0, #5
	strh r0, [r1]
	ldr r1, _08061D70  @ =0x03000688
	ldr r0, _08061D74  @ =gUnknown_08663734
	b _08061DA2
_08061D6C:
	.4byte 0x03000684
_08061D70:
	.4byte 0x03000688
_08061D74:
	.4byte gUnknown_08663734
_08061D78:
	cmp r0, #2
	bne _08061D94
	ldr r1, _08061D88  @ =0x03000684
	mov r0, #8
	strh r0, [r1]
	ldr r1, _08061D8C  @ =0x03000688
	ldr r0, _08061D90  @ =gUnknown_08663748
	b _08061DA2
_08061D88:
	.4byte 0x03000684
_08061D8C:
	.4byte 0x03000688
_08061D90:
	.4byte gUnknown_08663748
_08061D94:
	cmp r0, #1
	bne _08061DAC
	ldr r1, _08061E24  @ =0x03000684
	mov r0, #14
	strh r0, [r1]
	ldr r1, _08061E28  @ =0x03000688
	ldr r0, _08061E2C  @ =gUnknown_08663768
_08061DA2:
	str r0, [r1]
	ldr r1, _08061E30  @ =0x03000690
	ldr r0, _08061E34  @ =0x03000692
	strh r2, [r0]
	strh r2, [r1]
_08061DAC:
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08061E38  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08061E3C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #13
	bl sub_0804A644
_08061DC2:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r6, #32]
	mov r4, #128
	lsl r4, r4, #5
	add r0, r0, r4
	str r0, [r6, #32]
	ldr r0, [r6, #36]
	ldr r1, _08061E40  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r6, #36]
	ldr r2, _08061E44  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r7, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r7, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
_08061E12:
	mov r0, #1
	neg r0, r0
	str r0, [r6, #76]
	ldr r0, [r6, #92]
	ldr r1, _08061E48  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r6, #92]
_08061E20:
	mov r0, #1
	b _08061E4E
_08061E24:
	.4byte 0x03000684
_08061E28:
	.4byte 0x03000688
_08061E2C:
	.4byte gUnknown_08663768
_08061E30:
	.4byte 0x03000690
_08061E34:
	.4byte 0x03000692
_08061E38:
	.4byte 0x0300068D
_08061E3C:
	.4byte gUnknown_086637A0
_08061E40:
	.4byte 0xFFFFE000
_08061E44:
	.4byte gUnknown_03001A1C
_08061E48:
	.4byte 0xFFFFFF00
_08061E4C:
	mov r0, #0
_08061E4E:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08061AD0

	THUMB_FUNC_START sub_08061E5C
sub_08061E5C: @ 0x08061E5C
	push {r4,r5,lr}
	sub sp, sp, #80
	lsl r0, r0, #16
	cmp r0, #0
	bne _08061EB8
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _08061EB0  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _08061EB4  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08061EAA
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_08061EAA:
	ldr r2, [r4]
	b _08061EFC
	.byte 0x00
	.byte 0x00
_08061EB0:
	.4byte 0x00100800
_08061EB4:
	.4byte 0x030019AC
_08061EB8:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	ldr r2, _08061F14  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _08061F18  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _08061F1C  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08061EFA
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_08061EFA:
	ldr r2, [r5]
_08061EFC:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _08061F20  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08061F14:
	.4byte 0x000001E9
_08061F18:
	.4byte 0x00200800
_08061F1C:
	.4byte 0x030019AC
_08061F20:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08061E5C

	THUMB_FUNC_START sub_08061F24
sub_08061F24: @ 0x08061F24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #84
	ldr r0, _08061FDC  @ =0x03001B54
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	bne _08061F3C
	b _080620BA
_08061F3C:
	ldr r0, _08061FE0  @ =0x030006AC
	ldrh r0, [r0]
	cmp r0, #0
	beq _08061F46
	b _080620BA
_08061F46:
	ldr r0, _08061FE4  @ =0x030019AC
	mov r9, r0
	ldr r6, [r0]
	ldr r0, [r6, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08062048
	ldr r2, _08061FE8  @ =0x03001940
	ldr r1, [r6, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r3, [r2]
	add r3, r3, r0
	ldr r1, [r6, #108]
	mov r12, r1
	ldr r2, [r6, #116]
	mov r10, r2
	ldr r5, [r6, #112]
	ldr r7, [r6, #120]
	mov r8, r7
	ldr r1, [r3, #104]
	mov r0, #4
	ldrsh r4, [r1, r0]
	ldr r2, [r3, #32]
	add r4, r2, r4
	mov r7, #6
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	str r2, [sp, #80]
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r3, #36]
	add r3, r2, r0
	mov r7, #2
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	cmp r10, r4
	ble _08062012
	ldr r0, [sp, #80]
	cmp r12, r0
	bge _08062012
	cmp r5, r2
	bge _08062012
	cmp r8, r3
	ble _08062012
	add r0, r6, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08061FEC
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #27
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [sp, #28]
	mov r1, r9
	ldr r0, [r1]
	mov r1, sp
	mov r2, #27
	bl sub_0803ED98
	b _08062012
	.byte 0x00
	.byte 0x00
_08061FDC:
	.4byte 0x03001B54
_08061FE0:
	.4byte 0x030006AC
_08061FE4:
	.4byte 0x030019AC
_08061FE8:
	.4byte 0x03001940
_08061FEC:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #31
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [r4, #28]
	mov r2, r9
	ldr r0, [r2]
	add r1, r4, #0
	mov r2, #31
	bl sub_0803ED98
_08062012:
	ldr r4, _08062040  @ =0x030019AC
	ldr r0, [r4]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #40
	mov r2, #0
	bl sub_080410B4
	ldr r1, _08062044  @ =0x03001978
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	ldr r2, [r0, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r0, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	b _080620B2
_08062040:
	.4byte 0x030019AC
_08062044:
	.4byte 0x03001978
_08062048:
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, _08062098  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	mov r7, r9
	ldr r1, [r7]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _080620AC
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080620A0
	ldr r1, _0806209C  @ =0x030019A8
	mov r0, #1
	b _080620B0
	.byte 0x00
	.byte 0x00
_08062098:
	.4byte gUnknown_03001A1C
_0806209C:
	.4byte 0x030019A8
_080620A0:
	ldr r1, _080620A8  @ =0x03001978
	mov r0, #3
	b _080620B0
	.byte 0x00
	.byte 0x00
_080620A8:
	.4byte 0x03001978
_080620AC:
	ldr r1, _080620D0  @ =0x03001978
	mov r0, #2
_080620B0:
	strb r0, [r1]
_080620B2:
	ldr r1, _080620D4  @ =0x030006AC
	mov r0, #180
	strh r0, [r1]
	ldr r2, _080620D8  @ =0x03001B54
_080620BA:
	mov r0, #0
	strb r0, [r2]
	add sp, sp, #84
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080620D0:
	.4byte 0x03001978
_080620D4:
	.4byte 0x030006AC
_080620D8:
	.4byte 0x03001B54
	THUMB_FUNC_END sub_08061F24

	THUMB_FUNC_START sub_080620DC
sub_080620DC: @ 0x080620DC
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _08062128  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _080620FC
	ldr r0, _0806212C  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _080620FC
	b _08062216
_080620FC:
	ldr r0, _08062130  @ =0x0300068C
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806214C
	ldr r2, _08062134  @ =0x040000D4
	ldr r0, _08062138  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806213C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08062140  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08062144  @ =0x03000694
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _08062148  @ =gUnknown_08543384
	b _08062170
	.byte 0x00
	.byte 0x00
_08062128:
	.4byte gNextMainState
_0806212C:
	.4byte gUnknown_030019A0
_08062130:
	.4byte 0x0300068C
_08062134:
	.4byte 0x040000D4
_08062138:
	.4byte gUnknown_0854337C
_0806213C:
	.4byte gOamBuffer
_08062140:
	.4byte 0x84000002
_08062144:
	.4byte 0x03000694
_08062148:
	.4byte gUnknown_08543384
_0806214C:
	cmp r0, #2
	bne _08062216
	ldr r2, _0806221C  @ =0x040000D4
	ldr r0, _08062220  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08062224  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08062228  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806222C  @ =0x03000694
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _08062230  @ =gUnknown_0851F568
_08062170:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _08062234  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08062238  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _0806223C  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _08062240  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, _08062244  @ =0x0300069C
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _08062248  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _0806224C  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08062250  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _08062254  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08062258  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
_08062216:
	pop {r4-r7}
	pop {r0}
	bx r0
_0806221C:
	.4byte 0x040000D4
_08062220:
	.4byte gUnknown_0851F560
_08062224:
	.4byte gOamBuffer
_08062228:
	.4byte 0x84000002
_0806222C:
	.4byte 0x03000694
_08062230:
	.4byte gUnknown_0851F568
_08062234:
	.4byte 0x06010000
_08062238:
	.4byte 0x84000100
_0806223C:
	.4byte 0x000003FF
_08062240:
	.4byte 0xFFFFFC00
_08062244:
	.4byte 0x0300069C
_08062248:
	.4byte gUnknown_030012A0
_0806224C:
	.4byte 0x000001FF
_08062250:
	.4byte 0xFFFFFE00
_08062254:
	.4byte 0x030019AC
_08062258:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_080620DC

	THUMB_FUNC_START sub_0806225C
sub_0806225C: @ 0x0806225C
	ldr r1, _08062270  @ =0x030006AC
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08062274  @ =0x03000684
	mov r0, #3
	strh r0, [r1]
	ldr r1, _08062278  @ =0x03000688
	ldr r0, _0806227C  @ =gUnknown_08663728
	str r0, [r1]
	bx lr
_08062270:
	.4byte 0x030006AC
_08062274:
	.4byte 0x03000684
_08062278:
	.4byte 0x03000688
_0806227C:
	.4byte gUnknown_08663728
	THUMB_FUNC_END sub_0806225C

	THUMB_FUNC_START sub_08062280
sub_08062280: @ 0x08062280
	push {r4,lr}
	add r3, r0, #0
	add r4, r3, #0
	ldr r1, _080622E0  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _080622AA
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _080622BA
_080622AA:
	ldr r1, _080622E4  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _080622D8
_080622BA:
	add r0, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r3, #0
	bl _call_via_r1
	bl sub_08061F24
	ldr r2, _080622E8  @ =0x030006AC
	ldrh r1, [r2]
	cmp r1, #0
	beq _080622D8
	sub r1, r1, #1
	strh r1, [r2]
_080622D8:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080622E0:
	.4byte 0x030019AC
_080622E4:
	.4byte gUnknown_03001C78
_080622E8:
	.4byte 0x030006AC
	THUMB_FUNC_END sub_08062280

	THUMB_FUNC_START sub_080622EC
sub_080622EC: @ 0x080622EC
	bx lr
	THUMB_FUNC_END sub_080622EC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080622F0
sub_080622F0: @ 0x080622F0
	bx lr
	THUMB_FUNC_END sub_080622F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080622F4
sub_080622F4: @ 0x080622F4
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _08062340  @ =0x03001940
	ldr r1, [r1]
	add r1, r1, #153
	mov r4, #0
	strb r4, [r1]
	ldr r2, _08062344  @ =0x03000696
	ldr r1, _08062348  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r2]
	ldr r1, _0806234C  @ =0x0300068C
	strb r4, [r1]
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _08062350  @ =0x0300068D
	ldrb r3, [r1]
	ldr r1, _08062354  @ =gUnknown_086637A0
	str r1, [sp]
	mov r1, #1
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08062340:
	.4byte 0x03001940
_08062344:
	.4byte 0x03000696
_08062348:
	.4byte gUnknown_0854301C
_0806234C:
	.4byte 0x0300068C
_08062350:
	.4byte 0x0300068D
_08062354:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_080622F4

	THUMB_FUNC_START sub_08062358
sub_08062358: @ 0x08062358
	push {r4,lr}
	add r4, r0, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0806237E
	add r0, r4, #0
	add r0, r0, #84
	ldr r1, _08062384  @ =0x03000698
	mov r3, #0
	ldrsh r2, [r0, r3]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r2, r0
	blt _0806237E
	add r0, r4, #0
	bl sub_08062574
_0806237E:
	pop {r4}
	pop {r0}
	bx r0
_08062384:
	.4byte 0x03000698
	THUMB_FUNC_END sub_08062358

	THUMB_FUNC_START sub_08062388
sub_08062388: @ 0x08062388
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _0806240C
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #44
	bne _080623EC
	ldr r2, _080623E0  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r4, _080623E4  @ =0x030019EC
	ldrb r0, [r4]
	bl sub_08003B78
	ldrb r0, [r4]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	add r0, r0, #91
	str r5, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _080623E8  @ =0x0300197C
	mov r0, #4
	strb r0, [r1]
	b _0806240C
_080623E0:
	.4byte gUnknown_030019A0
_080623E4:
	.4byte 0x030019EC
_080623E8:
	.4byte 0x0300197C
_080623EC:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806240C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062414  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _08062418  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0806240C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08062414:
	.4byte 0x0300068D
_08062418:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_08062388

	THUMB_FUNC_START sub_0806241C
sub_0806241C: @ 0x0806241C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062450
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062458  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _0806245C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08062460  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08062450:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08062458:
	.4byte 0x0300068D
_0806245C:
	.4byte gUnknown_086637A0
_08062460:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0806241C

	THUMB_FUNC_START sub_08062464
sub_08062464: @ 0x08062464
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062494
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806249C  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _080624A0  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
_08062494:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0806249C:
	.4byte 0x0300068D
_080624A0:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_08062464

	THUMB_FUNC_START sub_080624A4
sub_080624A4: @ 0x080624A4
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080624C6
	ldr r0, _080624CC  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _080624D0  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r2, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
_080624C6:
	add sp, sp, #4
	pop {r0}
	bx r0
_080624CC:
	.4byte 0x0300068D
_080624D0:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_080624A4

	THUMB_FUNC_START sub_080624D4
sub_080624D4: @ 0x080624D4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08062500
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062500
	ldr r0, _08062508  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _0806250C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	mov r2, #0
	bl sub_0804A644
_08062500:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08062508:
	.4byte 0x0300068D
_0806250C:
	.4byte gUnknown_086637A0
	THUMB_FUNC_END sub_080624D4

	THUMB_FUNC_START sub_08062510
sub_08062510: @ 0x08062510
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08061AD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0806252E
	ldr r0, _08062564  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0806255C
_0806252E:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806255C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062568  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _0806256C  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08062570  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0806255C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08062564:
	.4byte gUnknown_03001A1C
_08062568:
	.4byte 0x0300068D
_0806256C:
	.4byte gUnknown_086637A0
_08062570:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08062510

	THUMB_FUNC_START sub_08062574
sub_08062574: @ 0x08062574
	push {r4-r6,lr}
	sub sp, sp, #4
	add r6, r0, #0
	ldr r0, _080625C4  @ =0x03000688
	ldr r5, _080625C8  @ =0x03000690
	ldr r4, [r0]
	ldr r1, _080625CC  @ =0x0300068F
	mov r0, #1
	strb r0, [r1]
	mov r1, #0
	ldrsh r0, [r5, r1]
	lsl r0, r0, #2
	add r4, r4, r0
	mov r1, #0
	ldrsb r1, [r4, r1]
	ldrb r2, [r4, #1]
	ldr r0, _080625D0  @ =0x0300068D
	ldrb r3, [r0]
	ldr r0, _080625D4  @ =gUnknown_086637A0
	str r0, [sp]
	add r0, r6, #0
	bl sub_0804A644
	ldr r1, _080625D8  @ =0x03000698
	ldrh r0, [r4, #2]
	strh r0, [r1]
	mov r0, #0
	strb r0, [r6, #10]
	ldr r0, _080625DC  @ =0x03000692
	ldrh r2, [r5]
	strh r2, [r0]
	mov r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _080625E0  @ =0x03000684
	ldrh r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bge _080625E4
	add r0, r2, #1
	b _080625E6
_080625C4:
	.4byte 0x03000688
_080625C8:
	.4byte 0x03000690
_080625CC:
	.4byte 0x0300068F
_080625D0:
	.4byte 0x0300068D
_080625D4:
	.4byte gUnknown_086637A0
_080625D8:
	.4byte 0x03000698
_080625DC:
	.4byte 0x03000692
_080625E0:
	.4byte 0x03000684
_080625E4:
	mov r0, #0
_080625E6:
	strh r0, [r5]
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08062574

	THUMB_FUNC_START sub_080625F0
sub_080625F0: @ 0x080625F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, _08062740  @ =0x030006D4
	mov r5, #0
	strh r5, [r0]
	ldr r0, _08062744  @ =0x03001D48
	strb r5, [r0]
	ldr r0, _08062748  @ =0x030006DC
	mov r1, #180
	strh r1, [r0]
	ldr r0, _0806274C  @ =0x03001D4C
	strh r1, [r0]
	ldr r1, _08062750  @ =0x03001C48
	mov r3, #16
	neg r3, r3
	add r0, r3, #0
	strh r0, [r1]
	ldr r1, _08062754  @ =0x03001C40
	mov r0, #16
	strh r0, [r1]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08062758  @ =0x08062781
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806275C  @ =0x08063631
	str r0, [r1]
	ldr r0, _08062760  @ =gUnknown_03001C78
	str r7, [r0]
	ldr r1, _08062764  @ =0x030006CC
	ldr r0, [r7, #32]
	asr r0, r0, #8
	str r0, [r1]
	ldr r1, _08062768  @ =0x030006D0
	ldr r0, [r7, #36]
	asr r0, r0, #8
	str r0, [r1]
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	mov r1, r8
	strh r1, [r7, #4]
	mov r0, #21
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806276C  @ =gUnknown_08663C88
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08062770  @ =0x030006B9
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08062774  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	strb r5, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	strb r5, [r7, #10]
	ldr r0, _08062778  @ =0x03001C50
	strb r5, [r0]
	ldrb r1, [r3, #22]
	strb r1, [r0, #1]
	ldrb r1, [r3, #23]
	strb r1, [r0, #2]
	strb r5, [r0, #16]
	mov r2, r8
	str r2, [r0, #8]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #12]
	mov r1, #11
	strb r1, [r0, #19]
	strb r5, [r0, #17]
	strb r5, [r0, #18]
	str r2, [r0, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r7, #92]
	str r4, [r7, #96]
	ldr r0, _0806277C  @ =0x030006BC
	mov r3, r8
	strh r3, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08062740:
	.4byte 0x030006D4
_08062744:
	.4byte 0x03001D48
_08062748:
	.4byte 0x030006DC
_0806274C:
	.4byte 0x03001D4C
_08062750:
	.4byte 0x03001C48
_08062754:
	.4byte 0x03001C40
_08062758:
	.4byte sub_08062780
_0806275C:
	.4byte sub_08063630
_08062760:
	.4byte gUnknown_03001C78
_08062764:
	.4byte 0x030006CC
_08062768:
	.4byte 0x030006D0
_0806276C:
	.4byte gUnknown_08663C88
_08062770:
	.4byte 0x030006B9
_08062774:
	.4byte 0xFFFFFE00
_08062778:
	.4byte 0x03001C50
_0806277C:
	.4byte 0x030006BC
	THUMB_FUNC_END sub_080625F0

	THUMB_FUNC_START sub_08062780
sub_08062780: @ 0x08062780
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r4, #0
	ldr r1, _08062800  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _080627AA
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _080627BA
_080627AA:
	ldr r1, _08062804  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0806283C
_080627BA:
	add r0, r7, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _08062808  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _080627E6
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806280C  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_080627E6:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _08062810
	add r0, r7, #0
	mov r1, #0
	bl sub_0804A580
	b _08062816
	.byte 0x00
	.byte 0x00
_08062800:
	.4byte 0x030019AC
_08062804:
	.4byte gUnknown_03001C78
_08062808:
	.4byte gUnknown_03001A1C
_0806280C:
	.4byte 0x00007FFF
_08062810:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08062816:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
_0806283C:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08062780

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08062844
sub_08062844: @ 0x08062844
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r6, r0, #0
	mov r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #1
	beq _08062858
	b _08062984
_08062858:
	add r4, r6, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _08062894  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r6, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _0806287C
	b _08062B7E
_0806287C:
	ldr r0, _08062898  @ =0x030006B8
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	bne _0806289C
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	ble _0806289C
	mov r3, r8
	strb r5, [r3]
	b _080629D6
_08062894:
	.4byte 0x03001940
_08062898:
	.4byte 0x030006B8
_0806289C:
	ldr r2, _080628BC  @ =0x030006C8
	ldr r0, _080628C0  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _080628C8
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _080628C4  @ =0x030006D8
	ldr r0, [r0]
	bl sub_08040FC0
	b _080628E8
_080628BC:
	.4byte 0x030006C8
_080628C0:
	.4byte 0x030019AC
_080628C4:
	.4byte 0x030006D8
_080628C8:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _080628E8
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08062918  @ =0x030006C0
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0806291C  @ =0x030006C2
	ldr r0, _08062920  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_080628E8:
	ldr r4, _0806291C  @ =0x030006C2
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _0806294E
	ldr r3, _08062918  @ =0x030006C0
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	ldr r0, _08062924  @ =0x030006B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0806292C
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08062912
	mov r0, #0
	strh r0, [r3]
_08062912:
	ldr r2, _08062928  @ =gUnknown_0854301C
	b _0806293E
	.byte 0x00
	.byte 0x00
_08062918:
	.4byte 0x030006C0
_0806291C:
	.4byte 0x030006C2
_08062920:
	.4byte gUnknown_0851F440
_08062924:
	.4byte 0x030006B8
_08062928:
	.4byte gUnknown_0854301C
_0806292C:
	cmp r0, #2
	bne _0806294E
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0806293C
	mov r0, #0
	strh r0, [r3]
_0806293C:
	ldr r2, _08062978  @ =gUnknown_0851F440
_0806293E:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_0806294E:
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0806295A
	b _08062B7E
_0806295A:
	ldrh r4, [r7]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806297C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062980  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	bl sub_0804A644
	strh r4, [r7]
	b _08062B7E
	.byte 0x00
	.byte 0x00
_08062978:
	.4byte gUnknown_0851F440
_0806297C:
	.4byte 0x030006B9
_08062980:
	.4byte gUnknown_08663C88
_08062984:
	cmp r5, #2
	beq _0806298A
	b _08062B18
_0806298A:
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080629BE
	add r0, r6, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #249
	bgt _080629BE
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r6, #12]
	strb r1, [r6, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080629BE:
	ldr r2, _08062A00  @ =0x030006B8
	ldrb r1, [r2]
	cmp r1, #0
	bne _08062A14
	add r0, r6, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #249
	ble _08062A14
	mov r0, #1
	strb r0, [r2]
_080629D6:
	ldr r5, _08062A04  @ =0x030006C8
	ldr r0, _08062A08  @ =0xFFFFEC00
	str r0, [r5]
	ldr r0, _08062A0C  @ =0x030006C0
	strh r1, [r0]
	ldr r4, _08062A10  @ =0x030006D8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	ldr r1, [r5]
	bl sub_08040FC0
	b _08062B7E
_08062A00:
	.4byte 0x030006B8
_08062A04:
	.4byte 0x030006C8
_08062A08:
	.4byte 0xFFFFEC00
_08062A0C:
	.4byte 0x030006C0
_08062A10:
	.4byte 0x030006D8
_08062A14:
	ldr r2, _08062A34  @ =0x030006C8
	ldr r0, _08062A38  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r2]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08062A40
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _08062A3C  @ =0x030006D8
	ldr r0, [r0]
	bl sub_08040FC0
	b _08062A60
_08062A34:
	.4byte 0x030006C8
_08062A38:
	.4byte 0x030019AC
_08062A3C:
	.4byte 0x030006D8
_08062A40:
	ldr r1, _08062A90  @ =0x030006B8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08062A60
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08062A94  @ =0x030006C0
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08062A98  @ =0x030006C2
	ldr r0, _08062A9C  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1]
	mov r0, #18
	bl sub_08071E14
_08062A60:
	ldr r4, _08062A98  @ =0x030006C2
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	ldr r1, _08062A90  @ =0x030006B8
	mov r8, r1
	cmp r0, #0
	bgt _08062AC6
	ldr r3, _08062A94  @ =0x030006C0
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrb r1, [r1]
	cmp r1, #1
	bne _08062AA4
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08062A8C
	mov r0, #0
	strh r0, [r3]
_08062A8C:
	ldr r2, _08062AA0  @ =gUnknown_0854301C
	b _08062AB6
_08062A90:
	.4byte 0x030006B8
_08062A94:
	.4byte 0x030006C0
_08062A98:
	.4byte 0x030006C2
_08062A9C:
	.4byte gUnknown_0851F440
_08062AA0:
	.4byte gUnknown_0854301C
_08062AA4:
	cmp r1, #2
	bne _08062B7E
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _08062AB4
	mov r0, #0
	strh r0, [r3]
_08062AB4:
	ldr r2, _08062B04  @ =gUnknown_0851F440
_08062AB6:
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r4]
_08062AC6:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _08062B7E
	ldr r2, _08062B08  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r6, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062B0C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062B10  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	bl sub_0804A644
	ldr r0, _08062B14  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r8
	strb r2, [r3]
	b _08062B7E
	.byte 0x00
	.byte 0x00
_08062B04:
	.4byte gUnknown_0851F440
_08062B08:
	.4byte gUnknown_03001A1C
_08062B0C:
	.4byte 0x030006B9
_08062B10:
	.4byte gUnknown_08663C88
_08062B14:
	.4byte 0x03001940
_08062B18:
	add r0, r6, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08062B7E
	ldr r0, _08062B50  @ =0x030019EC
	ldrb r4, [r0]
	cmp r4, #0
	bne _08062B64
	ldr r0, _08062B54  @ =0x03001D4C
	ldr r2, _08062B58  @ =0x030006DC
	ldrh r1, [r0]
	add r3, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	bcc _08062B72
	strh r4, [r3]
	ldr r0, _08062B5C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062B60  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
	b _08062B7E
_08062B50:
	.4byte 0x030019EC
_08062B54:
	.4byte 0x03001D4C
_08062B58:
	.4byte 0x030006DC
_08062B5C:
	.4byte 0x030006B9
_08062B60:
	.4byte gUnknown_08663C88
_08062B64:
	ldr r0, _08062B8C  @ =0x03001D4C
	ldr r2, _08062B90  @ =0x030006DC
	ldrh r1, [r0]
	add r3, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	bcs _08062B78
_08062B72:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
_08062B78:
	add r0, r6, #0
	bl sub_08063A30
_08062B7E:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08062B8C:
	.4byte 0x03001D4C
_08062B90:
	.4byte 0x030006DC
	THUMB_FUNC_END sub_08062844

	THUMB_FUNC_START sub_08062B94
sub_08062B94: @ 0x08062B94
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #13
	bne _08062BE4
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062C34
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062BD8  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062BDC  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08062BE0  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [r4, #36]
	b _08062C34
	.byte 0x00
	.byte 0x00
_08062BD8:
	.4byte 0x030006B9
_08062BDC:
	.4byte gUnknown_08663C88
_08062BE0:
	.4byte 0xFFFFF000
_08062BE4:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _08062C06
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #142
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08062C06:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062C34
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062C3C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062C40  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08062C44  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08062C34:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08062C3C:
	.4byte 0x030006B9
_08062C40:
	.4byte gUnknown_08663C88
_08062C44:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08062B94

	THUMB_FUNC_START sub_08062C48
sub_08062C48: @ 0x08062C48
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #15
	bne _08062C9C
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08062C62
	b _08062D7A
_08062C62:
	mov r0, #18
	bl sub_08071E14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062C90  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062C94  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08062C98  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	mov r1, #128
	lsl r1, r1, #6
	b _08062D24
	.byte 0x00
	.byte 0x00
_08062C90:
	.4byte 0x030006B9
_08062C94:
	.4byte gUnknown_08663C88
_08062C98:
	.4byte 0xFFFFF000
_08062C9C:
	cmp r0, #16
	bne _08062CCC
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062D7A
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062CC4  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062CC8  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	b _08062D7A
	.byte 0x00
	.byte 0x00
_08062CC4:
	.4byte 0x030006B9
_08062CC8:
	.4byte gUnknown_08663C88
_08062CCC:
	cmp r0, #17
	bne _08062D38
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #8
	bne _08062CF2
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #95
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08062CF2:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062D7A
	bl sub_080720AC
	mov r0, #22
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062D2C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062D30  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #18
	bl sub_0804A644
	ldr r0, [r4, #36]
	ldr r1, _08062D34  @ =0xFFFFE000
_08062D24:
	add r0, r0, r1
	str r0, [r4, #36]
	b _08062D7A
	.byte 0x00
	.byte 0x00
_08062D2C:
	.4byte 0x030006B9
_08062D30:
	.4byte gUnknown_08663C88
_08062D34:
	.4byte 0xFFFFE000
_08062D38:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08062D7A
	bl sub_08072144
	cmp r0, #0
	beq _08062D4E
	bl sub_080720AC
_08062D4E:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #148
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08062D84  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062D88  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
_08062D7A:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08062D84:
	.4byte 0x030006B9
_08062D88:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_08062C48

	THUMB_FUNC_START sub_08062D8C
sub_08062D8C: @ 0x08062D8C
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r1, _08062DF0  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r4, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r4, r4, r0
	add r7, r1, #0
	cmp r4, #0
	beq _08062E04
	ldr r0, _08062DF4  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062DF8  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08062DFC  @ =0x03001968
	ldrh r0, [r5]
	str r0, [r1]
	ldr r2, _08062E00  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _08062DE6
	b _080630FA
_08062DE6:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _080630FA
_08062DF0:
	.4byte 0x030019AC
_08062DF4:
	.4byte 0x030006B9
_08062DF8:
	.4byte gUnknown_08663C88
_08062DFC:
	.4byte 0x03001968
_08062E00:
	.4byte gUnknown_03001A1C
_08062E04:
	ldr r0, _08062E48  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	beq _08062E54
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #11
	beq _08062E54
	cmp r0, #12
	beq _08062E54
	ldr r0, _08062E4C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062E50  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #11
	mov r2, #0
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08063128
	.byte 0x00
	.byte 0x00
_08062E48:
	.4byte gUnknown_03001A1C
_08062E4C:
	.4byte 0x030006B9
_08062E50:
	.4byte gUnknown_08663C88
_08062E54:
	ldr r3, [r5, #76]
	mov r4, #1
	neg r4, r4
	cmp r3, r4
	bgt _08062E60
	b _08063128
_08062E60:
	ldr r2, _08062EA8  @ =0x03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r6, r0, r1
	ldrh r0, [r6]
	cmp r0, #0
	bne _08062EAC
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r6, #32]
	asr r2, r2, #8
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	blt _08062EEE
	b _08062F10
_08062EA8:
	.4byte 0x03001940
_08062EAC:
	cmp r0, #192
	beq _08062EB2
	b _08062FBC
_08062EB2:
	ldr r1, [r7]
	ldr r0, [r1, #72]
	cmp r0, r3
	bne _08062F34
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r6, #32]
	asr r2, r2, #8
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _08062F10
_08062EEE:
	ldr r0, _08062F08  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062F0C  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #6
	mov r2, #1
	bl sub_0804A644
	mov r0, #0
	bl sub_08063134
	b _080630EC
_08062F08:
	.4byte 0x030006B9
_08062F0C:
	.4byte gUnknown_08663C88
_08062F10:
	ldr r0, _08062F2C  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08062F30  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_0804A644
	mov r0, #1
	bl sub_08063134
	b _080630EC
	.byte 0x00
	.byte 0x00
_08062F2C:
	.4byte 0x030006B9
_08062F30:
	.4byte gUnknown_08663C88
_08062F34:
	add r0, r6, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08062F58
	mov r1, #4
	ldrsh r0, [r5, r1]
	ldr r7, [r6, #36]
	cmp r0, #12
	bne _08062F68
	ldr r0, [r5, #36]
	add r0, r0, #16
	cmp r7, r0
	bge _08062F68
_08062F58:
	str r4, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _08062F64  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
	b _08063128
_08062F64:
	.4byte 0xFFFFFF00
_08062F68:
	ldr r4, [r6, #32]
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #193
	mov r2, #0
	mov r3, #0
	bl sub_08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _08062FB0  @ =0x03001D48
	ldrb r1, [r2]
	sub r1, r1, #1
	strb r1, [r2]
	ldr r1, _08062FB4  @ =0x03001940
	ldr r3, [r1]
	mov r1, #176
	add r2, r0, #0
	mul r2, r1, r2
	add r2, r2, r3
	ldr r1, _08062FB8  @ =0xFFFFF800
	add r4, r4, r1
	str r4, [r2, #32]
	add r1, r7, r1
	str r1, [r2, #36]
	bl sub_0804106C
	b _080630EC
	.byte 0x00
	.byte 0x00
_08062FB0:
	.4byte 0x03001D48
_08062FB4:
	.4byte 0x03001940
_08062FB8:
	.4byte 0xFFFFF800
_08062FBC:
	cmp r0, #193
	bne _08062F58
	add r0, r5, #0
	add r0, r0, #52
	ldrb r2, [r0]
	sub r2, r2, #1
	mov r3, #0
	strb r2, [r0]
	ldr r1, _08063018  @ =0x030006DC
	ldrh r0, [r1]
	sub r0, r0, #30
	strh r0, [r1]
	ldr r1, _0806301C  @ =0x03001D4C
	strh r0, [r1]
	lsl r2, r2, #24
	asr r2, r2, #24
	cmp r2, #0
	bgt _08063038
	ldr r0, _08063020  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063024  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #15
	mov r2, #0
	bl sub_0804A644
	ldr r2, _08063028  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _0806302C  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08063030  @ =gUnknown_03000B6C
	ldr r1, [r2]
	ldr r0, _08063034  @ =0x00001388
	add r1, r1, r0
	str r1, [r2]
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r1, r1, #16
	ldr r2, [r5, #36]
	asr r2, r2, #8
	bl sub_08031A64
	b _0806309C
	.byte 0x00
	.byte 0x00
_08063018:
	.4byte 0x030006DC
_0806301C:
	.4byte 0x03001D4C
_08063020:
	.4byte 0x030006B9
_08063024:
	.4byte gUnknown_08663C88
_08063028:
	.4byte gUnknown_030019A0
_0806302C:
	.4byte 0x20040000
_08063030:
	.4byte gUnknown_03000B6C
_08063034:
	.4byte 0x00001388
_08063038:
	cmp r2, #3
	bne _08063054
	ldr r1, _08063048  @ =0x030006B0
	mov r0, #1
	strh r0, [r1]
	ldr r1, _0806304C  @ =0x030006B4
	ldr r0, _08063050  @ =gUnknown_08663C74
	b _0806307C
_08063048:
	.4byte 0x030006B0
_0806304C:
	.4byte 0x030006B4
_08063050:
	.4byte gUnknown_08663C74
_08063054:
	cmp r2, #2
	bne _08063070
	ldr r1, _08063064  @ =0x030006B0
	mov r0, #1
	strh r0, [r1]
	ldr r1, _08063068  @ =0x030006B4
	ldr r0, _0806306C  @ =gUnknown_08663C78
	b _0806307C
_08063064:
	.4byte 0x030006B0
_08063068:
	.4byte 0x030006B4
_0806306C:
	.4byte gUnknown_08663C78
_08063070:
	cmp r2, #1
	bne _08063086
	ldr r0, _08063100  @ =0x030006B0
	strh r2, [r0]
	ldr r1, _08063104  @ =0x030006B4
	ldr r0, _08063108  @ =gUnknown_08663C7C
_0806307C:
	str r0, [r1]
	ldr r1, _0806310C  @ =0x030006BC
	ldr r0, _08063110  @ =0x030006BE
	strh r3, [r0]
	strh r3, [r1]
_08063086:
	add r0, r5, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08063114  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063118  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #13
	bl sub_0804A644
_0806309C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r5, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	str r0, [r5, #32]
	ldr r0, [r5, #36]
	ldr r1, _0806311C  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r5, #36]
	ldr r2, _08063120  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r6, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
_080630EC:
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r0, [r5, #92]
	ldr r1, _08063124  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
_080630FA:
	mov r0, #1
	b _0806312A
	.byte 0x00
	.byte 0x00
_08063100:
	.4byte 0x030006B0
_08063104:
	.4byte 0x030006B4
_08063108:
	.4byte gUnknown_08663C7C
_0806310C:
	.4byte 0x030006BC
_08063110:
	.4byte 0x030006BE
_08063114:
	.4byte 0x030006B9
_08063118:
	.4byte gUnknown_08663C88
_0806311C:
	.4byte 0xFFFFE000
_08063120:
	.4byte gUnknown_03001A1C
_08063124:
	.4byte 0xFFFFFF00
_08063128:
	mov r0, #0
_0806312A:
	add sp, sp, #12
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08062D8C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08063134
sub_08063134: @ 0x08063134
	push {r4,r5,lr}
	sub sp, sp, #80
	lsl r0, r0, #16
	cmp r0, #0
	bne _08063190
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _08063188  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _0806318C  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r1, [r4]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08063182
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_08063182:
	ldr r2, [r4]
	b _080631D4
	.byte 0x00
	.byte 0x00
_08063188:
	.4byte 0x00100800
_0806318C:
	.4byte 0x030019AC
_08063190:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	ldr r2, _080631EC  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _080631F0  @ =0x00200800
	str r0, [r4, #28]
	ldr r5, _080631F4  @ =0x030019AC
	ldr r0, [r5]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r1, [r5]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _080631D2
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_080631D2:
	ldr r2, [r5]
_080631D4:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _080631F8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080631EC:
	.4byte 0x000001E9
_080631F0:
	.4byte 0x00200800
_080631F4:
	.4byte 0x030019AC
_080631F8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08063134

	THUMB_FUNC_START sub_080631FC
sub_080631FC: @ 0x080631FC
	push {r4-r6,lr}
	sub sp, sp, #24
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r1, _0806328C  @ =gUnknown_08076FC4
	add r0, sp, #12
	mov r2, #3
	bl memcpy
	add r4, sp, #16
	ldr r1, _08063290  @ =gUnknown_08076FC8
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	sub r6, r5, #1
	lsl r0, r6, #1
	add r4, r4, r0
	ldrh r4, [r4]
	add r4, r4, #16
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r2, _08063294  @ =0x030019DC
	ldr r0, _08063298  @ =0x0300196C
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldrb r0, [r0]
	ldrb r1, [r2]
	bl sub_080035C0
	mov r0, sp
	add r0, r0, r6
	add r0, r0, #12
	ldrb r0, [r0]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r5, r5, #2
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _0806329C  @ =gUnknown_03001C78
	ldr r1, [r0]
	ldr r0, [r1, #32]
	asr r0, r0, #8
	lsl r4, r4, #16
	asr r4, r4, #16
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r3, [r1, #36]
	asr r3, r3, #8
	add r3, r3, #26
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0804138C
	add sp, sp, #24
	pop {r4-r6}
	pop {r0}
	bx r0
_0806328C:
	.4byte gUnknown_08076FC4
_08063290:
	.4byte gUnknown_08076FC8
_08063294:
	.4byte 0x030019DC
_08063298:
	.4byte 0x0300196C
_0806329C:
	.4byte gUnknown_03001C78
	THUMB_FUNC_END sub_080631FC

	THUMB_FUNC_START sub_080632A0
sub_080632A0: @ 0x080632A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #84
	ldr r0, _08063378  @ =0x03001B54
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #0
	bne _080632B8
	b _0806346A
_080632B8:
	ldr r0, _0806337C  @ =0x030006DE
	ldrh r0, [r0]
	cmp r0, #0
	beq _080632C2
	b _0806346A
_080632C2:
	ldr r4, _08063380  @ =gUnknown_03001A1C
	ldr r0, [r4]
	ldr r1, _08063384  @ =0x00075F00
	and r0, r0, r1
	cmp r0, #0
	beq _080632D0
	b _0806346A
_080632D0:
	ldr r0, _08063388  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _080632E0
	b _0806346A
_080632E0:
	ldr r0, _0806338C  @ =0x030019AC
	mov r9, r0
	ldr r6, [r0]
	ldr r0, [r6, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	bne _080632F4
	b _080633F0
_080632F4:
	ldr r2, _08063390  @ =0x03001940
	ldr r1, [r6, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r3, [r2]
	add r3, r3, r0
	ldr r1, [r6, #108]
	mov r12, r1
	ldr r2, [r6, #116]
	mov r10, r2
	ldr r5, [r6, #112]
	ldr r7, [r6, #120]
	mov r8, r7
	ldr r1, [r3, #104]
	mov r0, #4
	ldrsh r4, [r1, r0]
	ldr r2, [r3, #32]
	add r4, r2, r4
	mov r7, #6
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	str r2, [sp, #80]
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r3, #36]
	add r3, r2, r0
	mov r7, #2
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	cmp r10, r4
	ble _080633BA
	ldr r0, [sp, #80]
	cmp r12, r0
	bge _080633BA
	cmp r5, r2
	bge _080633BA
	cmp r8, r3
	ble _080633BA
	add r0, r6, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08063394
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #27
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [sp, #28]
	mov r1, r9
	ldr r0, [r1]
	mov r1, sp
	mov r2, #27
	bl sub_0803ED98
	b _080633BA
	.byte 0x00
	.byte 0x00
_08063378:
	.4byte 0x03001B54
_0806337C:
	.4byte 0x030006DE
_08063380:
	.4byte gUnknown_03001A1C
_08063384:
	.4byte 0x00075F00
_08063388:
	.4byte gUnknown_030019A0
_0806338C:
	.4byte 0x030019AC
_08063390:
	.4byte 0x03001940
_08063394:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r0, #31
	strh r0, [r4, #2]
	mov r0, #128
	lsl r0, r0, #4
	str r0, [r4, #28]
	mov r2, r9
	ldr r0, [r2]
	add r1, r4, #0
	mov r2, #31
	bl sub_0803ED98
_080633BA:
	ldr r4, _080633E8  @ =0x030019AC
	ldr r0, [r4]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #40
	mov r2, #0
	bl sub_080410B4
	ldr r1, _080633EC  @ =0x03001978
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	ldr r2, [r0, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r0, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
	b _08063462
_080633E8:
	.4byte 0x030019AC
_080633EC:
	.4byte 0x03001978
_080633F0:
	mov r7, #4
	ldrsh r0, [r6, r7]
	cmp r0, #30
	beq _08063462
	cmp r0, #34
	beq _08063462
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r0, [r4]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r4]
	mov r0, r9
	ldr r1, [r0]
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	mov r2, r9
	ldr r1, [r2]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0806345C
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08063450
	ldr r1, _0806344C  @ =0x030019A8
	mov r0, #1
	b _08063460
	.byte 0x00
	.byte 0x00
_0806344C:
	.4byte 0x030019A8
_08063450:
	ldr r1, _08063458  @ =0x03001978
	mov r0, #3
	b _08063460
	.byte 0x00
	.byte 0x00
_08063458:
	.4byte 0x03001978
_0806345C:
	ldr r1, _08063480  @ =0x03001978
	mov r0, #2
_08063460:
	strb r0, [r1]
_08063462:
	ldr r1, _08063484  @ =0x030006DE
	mov r0, #180
	strh r0, [r1]
	ldr r2, _08063488  @ =0x03001B54
_0806346A:
	mov r0, #0
	strb r0, [r2]
	add sp, sp, #84
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08063480:
	.4byte 0x03001978
_08063484:
	.4byte 0x030006DE
_08063488:
	.4byte 0x03001B54
	THUMB_FUNC_END sub_080632A0

	THUMB_FUNC_START sub_0806348C
sub_0806348C: @ 0x0806348C
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _080634D8  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _080634AC
	ldr r0, _080634DC  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _080634AC
	b _080635C6
_080634AC:
	ldr r0, _080634E0  @ =0x030006B8
	ldrb r0, [r0]
	cmp r0, #1
	bne _080634FC
	ldr r2, _080634E4  @ =0x040000D4
	ldr r0, _080634E8  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _080634EC  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _080634F0  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080634F4  @ =0x030006C0
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _080634F8  @ =gUnknown_08543384
	b _08063520
	.byte 0x00
	.byte 0x00
_080634D8:
	.4byte gNextMainState
_080634DC:
	.4byte gUnknown_030019A0
_080634E0:
	.4byte 0x030006B8
_080634E4:
	.4byte 0x040000D4
_080634E8:
	.4byte gUnknown_0854337C
_080634EC:
	.4byte gOamBuffer
_080634F0:
	.4byte 0x84000002
_080634F4:
	.4byte 0x030006C0
_080634F8:
	.4byte gUnknown_08543384
_080634FC:
	cmp r0, #2
	bne _080635C6
	ldr r2, _080635CC  @ =0x040000D4
	ldr r0, _080635D0  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _080635D4  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _080635D8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080635DC  @ =0x030006C0
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #10
	ldr r1, _080635E0  @ =gUnknown_0851F568
_08063520:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _080635E4  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080635E8  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _080635EC  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _080635F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, _080635F4  @ =0x030006C8
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _080635F8  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _080635FC  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08063600  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _08063604  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08063608  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
_080635C6:
	pop {r4-r7}
	pop {r0}
	bx r0
_080635CC:
	.4byte 0x040000D4
_080635D0:
	.4byte gUnknown_0851F560
_080635D4:
	.4byte gOamBuffer
_080635D8:
	.4byte 0x84000002
_080635DC:
	.4byte 0x030006C0
_080635E0:
	.4byte gUnknown_0851F568
_080635E4:
	.4byte 0x06010000
_080635E8:
	.4byte 0x84000100
_080635EC:
	.4byte 0x000003FF
_080635F0:
	.4byte 0xFFFFFC00
_080635F4:
	.4byte 0x030006C8
_080635F8:
	.4byte gUnknown_030012A0
_080635FC:
	.4byte 0x000001FF
_08063600:
	.4byte 0xFFFFFE00
_08063604:
	.4byte 0x030019AC
_08063608:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_0806348C

	THUMB_FUNC_START sub_0806360C
sub_0806360C: @ 0x0806360C
	ldr r1, _08063620  @ =0x030006DE
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08063624  @ =0x030006B0
	mov r0, #1
	strh r0, [r1]
	ldr r1, _08063628  @ =0x030006B4
	ldr r0, _0806362C  @ =gUnknown_08663C70
	str r0, [r1]
	bx lr
_08063620:
	.4byte 0x030006DE
_08063624:
	.4byte 0x030006B0
_08063628:
	.4byte 0x030006B4
_0806362C:
	.4byte gUnknown_08663C70
	THUMB_FUNC_END sub_0806360C

	THUMB_FUNC_START sub_08063630
sub_08063630: @ 0x08063630
	push {r4,lr}
	add r3, r0, #0
	add r4, r3, #0
	ldr r1, _08063690  @ =0x030019AC
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _0806365A
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	ldr r1, [r1, #12]
	mov r2, #128
	lsl r2, r2, #17
	and r1, r1, r2
	cmp r1, #0
	beq _0806366A
_0806365A:
	ldr r1, _08063694  @ =gUnknown_03001C78
	ldr r1, [r1]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	beq _08063688
_0806366A:
	add r0, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r3, #0
	bl _call_via_r1
	bl sub_080632A0
	ldr r2, _08063698  @ =0x030006DE
	ldrh r1, [r2]
	cmp r1, #0
	beq _08063688
	sub r1, r1, #1
	strh r1, [r2]
_08063688:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08063690:
	.4byte 0x030019AC
_08063694:
	.4byte gUnknown_03001C78
_08063698:
	.4byte 0x030006DE
	THUMB_FUNC_END sub_08063630

	THUMB_FUNC_START sub_0806369C
sub_0806369C: @ 0x0806369C
	bx lr
	THUMB_FUNC_END sub_0806369C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080636A0
sub_080636A0: @ 0x080636A0
	bx lr
	THUMB_FUNC_END sub_080636A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080636A4
sub_080636A4: @ 0x080636A4
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _080636F0  @ =0x03001940
	ldr r1, [r1]
	add r1, r1, #153
	mov r4, #0
	strb r4, [r1]
	ldr r2, _080636F4  @ =0x030006C2
	ldr r1, _080636F8  @ =gUnknown_0854301C
	ldrb r1, [r1, #1]
	strh r1, [r2]
	ldr r1, _080636FC  @ =0x030006B8
	strb r4, [r1]
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _08063700  @ =0x030006B9
	ldrb r3, [r1]
	ldr r1, _08063704  @ =gUnknown_08663C88
	str r1, [sp]
	mov r1, #1
	bl sub_0804A644
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080636F0:
	.4byte 0x03001940
_080636F4:
	.4byte 0x030006C2
_080636F8:
	.4byte gUnknown_0854301C
_080636FC:
	.4byte 0x030006B8
_08063700:
	.4byte 0x030006B9
_08063704:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_080636A4

	THUMB_FUNC_START sub_08063708
sub_08063708: @ 0x08063708
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r0, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08063772
	ldr r0, _08063744  @ =0x030019EC
	ldrb r4, [r0]
	cmp r4, #0
	bne _08063758
	ldr r0, _08063748  @ =0x03001D4C
	ldr r2, _0806374C  @ =0x030006DC
	ldrh r1, [r0]
	add r3, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	bcc _08063766
	strh r4, [r3]
	ldr r0, _08063750  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063754  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0804A644
	b _08063772
_08063744:
	.4byte 0x030019EC
_08063748:
	.4byte 0x03001D4C
_0806374C:
	.4byte 0x030006DC
_08063750:
	.4byte 0x030006B9
_08063754:
	.4byte gUnknown_08663C88
_08063758:
	ldr r0, _0806377C  @ =0x03001D4C
	ldr r2, _08063780  @ =0x030006DC
	ldrh r1, [r0]
	add r3, r0, #0
	ldrh r2, [r2]
	cmp r1, r2
	bcs _0806376C
_08063766:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
_0806376C:
	add r0, r5, #0
	bl sub_08063A30
_08063772:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806377C:
	.4byte 0x03001D4C
_08063780:
	.4byte 0x030006DC
	THUMB_FUNC_END sub_08063708

	THUMB_FUNC_START sub_08063784
sub_08063784: @ 0x08063784
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _08063808
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #44
	bne _080637E8
	ldr r2, _080637DC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #5
	orr r0, r0, r1
	str r0, [r2]
	ldr r4, _080637E0  @ =0x030019EC
	ldrb r0, [r4]
	bl sub_08003B78
	ldrb r0, [r4]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	add r0, r0, #91
	str r5, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r5, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _080637E4  @ =0x0300197C
	mov r0, #4
	strb r0, [r1]
	b _08063808
_080637DC:
	.4byte gUnknown_030019A0
_080637E0:
	.4byte 0x030019EC
_080637E4:
	.4byte 0x0300197C
_080637E8:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08063808
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08063810  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063814  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_08063808:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08063810:
	.4byte 0x030006B9
_08063814:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_08063784

	THUMB_FUNC_START sub_08063818
sub_08063818: @ 0x08063818
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806384C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08063854  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063858  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _0806385C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0806384C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08063854:
	.4byte 0x030006B9
_08063858:
	.4byte gUnknown_08663C88
_0806385C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08063818

	THUMB_FUNC_START sub_08063860
sub_08063860: @ 0x08063860
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _080638D0
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bne _080638AC
	ldr r1, _080638A8  @ =0x03001D48
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	lsl r0, r0, #8
	lsr r0, r0, #16
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #255
	mov r1, #192
	mov r2, #0
	bl sub_08038DF4
	b _080638D0
	.byte 0x00
	.byte 0x00
_080638A8:
	.4byte 0x03001D48
_080638AC:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080638D0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _080638D8  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _080638DC  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_080638D0:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_080638D8:
	.4byte 0x030006B9
_080638DC:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_08063860

	THUMB_FUNC_START sub_080638E0
sub_080638E0: @ 0x080638E0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08063914
	ldr r1, _0806391C  @ =0x03001C40
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08063920  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063924  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
_08063914:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0806391C:
	.4byte 0x03001C40
_08063920:
	.4byte 0x030006B9
_08063924:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_080638E0

	THUMB_FUNC_START sub_08063928
sub_08063928: @ 0x08063928
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #32]
	asr r0, r0, #8
	ldr r1, _08063958  @ =gUnknown_03001720
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	ble _08063952
	add r0, r1, #1
	lsl r0, r0, #8
	str r0, [r2, #32]
	ldr r2, _0806395C  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #18
	bl sub_08071E14
_08063952:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08063958:
	.4byte gUnknown_03001720
_0806395C:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_08063928

	THUMB_FUNC_START sub_08063960
sub_08063960: @ 0x08063960
	push {lr}
	sub sp, sp, #4
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08063982
	ldr r0, _08063988  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _0806398C  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r2, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
_08063982:
	add sp, sp, #4
	pop {r0}
	bx r0
_08063988:
	.4byte 0x030006B9
_0806398C:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_08063960

	THUMB_FUNC_START sub_08063990
sub_08063990: @ 0x08063990
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	cmp r0, #0
	bne _080639BC
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080639BC
	ldr r0, _080639C4  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _080639C8  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	mov r2, #0
	bl sub_0804A644
_080639BC:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080639C4:
	.4byte 0x030006B9
_080639C8:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_08063990

	THUMB_FUNC_START sub_080639CC
sub_080639CC: @ 0x080639CC
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08062D8C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080639EA
	ldr r0, _08063A20  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _08063A18
_080639EA:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08063A18
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08063A24  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063A28  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08063A2C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08063A18:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08063A20:
	.4byte gUnknown_03001A1C
_08063A24:
	.4byte 0x030006B9
_08063A28:
	.4byte gUnknown_08663C88
_08063A2C:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080639CC

	THUMB_FUNC_START sub_08063A30
sub_08063A30: @ 0x08063A30
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _08063A5C  @ =0x03001D48
	ldrb r0, [r0]
	ldr r2, _08063A60  @ =0x030006D4
	cmp r0, #0
	bne _08063A4C
	add r1, r2, #0
	mov r2, #0
	ldrsh r0, [r1, r2]
	add r2, r1, #0
	cmp r0, #0
	beq _08063A64
_08063A4C:
	ldrh r1, [r2]
	mov r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _08063A7A
	sub r0, r1, #1
	strh r0, [r2]
	b _08063A7A
_08063A5C:
	.4byte 0x03001D48
_08063A60:
	.4byte 0x030006D4
_08063A64:
	mov r0, #120
	strh r0, [r1]
	ldr r0, _08063A84  @ =0x030006B9
	ldrb r3, [r0]
	ldr r0, _08063A88  @ =gUnknown_08663C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0804A644
_08063A7A:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08063A84:
	.4byte 0x030006B9
_08063A88:
	.4byte gUnknown_08663C88
	THUMB_FUNC_END sub_08063A30

	THUMB_FUNC_START sub_08063A8C
sub_08063A8C: @ 0x08063A8C
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r4, _08063B14  @ =0x030006E0
	mov r0, #254
	lsl r0, r0, #1
	bl arena_allocate
	str r0, [r4]
	add r0, r0, #57
	mov r3, #0
	strb r3, [r0]
	ldr r0, [r4]
	add r0, r0, #48
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	str r3, [r0, #12]
	add r0, r0, #49
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r0, #50
	strb r3, [r0]
	ldr r1, [r4]
	mov r2, #0
	mov r5, #240
	strh r5, [r1, #52]
	ldr r0, _08063B18  @ =gUnknown_08664120
	str r0, [r1, #4]
	add r1, r1, #54
	strb r2, [r1]
	ldr r0, [r4]
	add r0, r0, #55
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r0, #56
	strb r1, [r0]
	ldr r0, _08063B1C  @ =0x03001D54
	strb r2, [r0]
	ldr r0, [r4]
	mov r1, #16
	strh r1, [r0, #60]
	add r0, r0, #58
	strb r2, [r0]
	ldr r0, [r4]
	strh r5, [r0, #28]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	bl sub_08034238
	mov r0, #0
	mov r1, #0
	mov r2, #1
	bl sub_0803425C
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08063B14:
	.4byte 0x030006E0
_08063B18:
	.4byte gUnknown_08664120
_08063B1C:
	.4byte 0x03001D54
	THUMB_FUNC_END sub_08063A8C

	THUMB_FUNC_START sub_08063B20
sub_08063B20: @ 0x08063B20
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r6, _08063C94  @ =0x030006E0
	ldr r5, [r6]
	mov r1, #0
	mov r8, r1
	mov r0, #180
	strh r0, [r5, #44]
	strh r1, [r5, #46]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08063C98  @ =0x08063CAD
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08063C9C  @ =0x08066F29
	str r0, [r1]
	ldr r0, _08063CA0  @ =0x03001D50
	mov r1, #0
	str r1, [r0]
	str r7, [r5, #8]
	ldr r0, [r7, #32]
	asr r0, r0, #8
	str r0, [r5, #36]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	str r0, [r5, #40]
	strh r2, [r7]
	strh r1, [r7, #4]
	mov r0, #19
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08063CA4  @ =gUnknown_086641E8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5, #17]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08063CA8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, r8
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r0, r8
	strb r0, [r7, #10]
	ldr r0, [r6]
	add r0, r0, #108
	mov r1, r8
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r0, r0, #109
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	add r0, r0, #110
	strb r1, [r0]
	ldr r0, [r6]
	add r0, r0, #124
	mov r2, r8
	strb r2, [r0]
	ldr r1, [r6]
	mov r5, #128
	lsl r5, r5, #16
	str r5, [r1, #116]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r1, #120]
	add r1, r1, #127
	mov r0, #2
	strb r0, [r1]
	ldr r0, [r6]
	add r0, r0, #125
	strb r2, [r0]
	ldr r0, [r6]
	add r0, r0, #126
	strb r2, [r0]
	ldr r0, [r6]
	add r0, r0, #140
	mov r1, #0
	str r1, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r5, [r7, #92]
	str r4, [r7, #96]
	add r1, r7, #0
	add r1, r1, #52
	mov r0, #3
	strb r0, [r1]
	ldr r1, [r6]
	mov r2, #0
	strh r2, [r1, #20]
	mov r0, #6
	strh r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08063C94:
	.4byte 0x030006E0
_08063C98:
	.4byte sub_08063CAC
_08063C9C:
	.4byte sub_08066F28
_08063CA0:
	.4byte 0x03001D50
_08063CA4:
	.4byte gUnknown_086641E8
_08063CA8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08063B20

	THUMB_FUNC_START sub_08063CAC
sub_08063CAC: @ 0x08063CAC
	push {r4-r7,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r7, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r2, _08063CE4  @ =0x030006E0
	ldr r1, [r2]
	ldrh r0, [r1, #44]
	cmp r0, #0
	beq _08063CCE
	sub r0, r0, #1
	strh r0, [r1, #44]
_08063CCE:
	ldr r1, [r2]
	ldrh r0, [r1, #46]
	add r0, r0, #1
	strh r0, [r1, #46]
	ldrh r0, [r1, #60]
	add r2, r0, #0
	cmp r2, #14
	bhi _08063CE8
	add r0, r0, #1
	strh r0, [r1, #60]
	b _08063D08
_08063CE4:
	.4byte 0x030006E0
_08063CE8:
	cmp r2, #15
	bne _08063D08
	add r0, r0, #1
	strh r0, [r1, #60]
	mov r3, #136
	lsl r3, r3, #1
	mov r0, #148
	lsl r0, r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #32
	mov r2, #0
	bl sub_08038DF4
_08063D08:
	ldr r6, _08063D40  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _08063D26
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08063D44  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_08063D26:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r0, [r6]
	and r0, r0, r5
	cmp r0, #0
	bne _08063D48
	add r0, r7, #0
	mov r1, #0
	bl sub_0804A580
	b _08063D54
	.byte 0x00
	.byte 0x00
_08063D40:
	.4byte gUnknown_03001A1C
_08063D44:
	.4byte 0x00007FFF
_08063D48:
	mov r0, #138
	bl sub_08071E14
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08063D54:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	add sp, sp, #8
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08063CAC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08063D84
sub_08063D84: @ 0x08063D84
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	bl sub_08033658
	mov r0, #4
	ldrsh r6, [r5, r0]
	cmp r6, #1
	beq _08063D98
	b _08063ECC
_08063D98:
	add r4, r5, #0
	add r4, r4, #84
	ldrh r0, [r4]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r4]
	ldr r0, _08063DEC  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	strb r1, [r0]
	add r0, r5, #0
	bl sub_08064574
	lsl r0, r0, #24
	add r7, r4, #0
	cmp r0, #0
	beq _08063DBC
	b _080640B2
_08063DBC:
	mov r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #189
	bne _08063DD4
	bl sub_08034238
	mov r1, #128
	lsl r1, r1, #10
	mov r0, #0
	mov r2, #60
	bl sub_0803425C
_08063DD4:
	ldr r4, _08063DF0  @ =0x030006E0
	ldr r1, [r4]
	ldrb r2, [r1, #16]
	cmp r2, #0
	bne _08063DF4
	mov r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #249
	ble _08063DF4
	strb r6, [r1, #16]
	b _08063F34
	.byte 0x00
	.byte 0x00
_08063DEC:
	.4byte 0x03001940
_08063DF0:
	.4byte 0x030006E0
_08063DF4:
	ldr r4, _08063E14  @ =0x030006E0
	ldr r3, [r4]
	ldr r0, _08063E18  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08063E1C
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r3, #32]
	ldr r0, [r3, #96]
	bl sub_08040FC0
	b _08063E38
_08063E14:
	.4byte 0x030006E0
_08063E18:
	.4byte 0x030019AC
_08063E1C:
	ldrb r0, [r3, #16]
	cmp r0, #1
	bne _08063E38
	mov r2, #0
	mov r0, #2
	strb r0, [r3, #16]
	ldr r1, [r4]
	strh r2, [r1, #24]
	ldr r0, _08063E68  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1, #26]
	mov r0, #18
	bl sub_08071E14
_08063E38:
	ldr r1, _08063E6C  @ =0x030006E0
	ldr r4, [r1]
	ldrh r0, [r4, #26]
	sub r0, r0, #1
	mov r2, #0
	strh r0, [r4, #26]
	lsl r0, r0, #16
	add r6, r1, #0
	cmp r0, #0
	bgt _08063E96
	ldrh r0, [r4, #24]
	add r0, r0, #1
	strh r0, [r4, #24]
	ldrb r1, [r4, #16]
	cmp r1, #1
	bne _08063E74
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08063E62
	strh r2, [r4, #24]
_08063E62:
	ldr r3, [r6]
	ldr r2, _08063E70  @ =gUnknown_0854301C
	b _08063E86
_08063E68:
	.4byte gUnknown_0851F440
_08063E6C:
	.4byte 0x030006E0
_08063E70:
	.4byte gUnknown_0854301C
_08063E74:
	cmp r1, #2
	bne _08063E96
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _08063E82
	strh r2, [r4, #24]
_08063E82:
	ldr r3, [r6]
	ldr r2, _08063EC4  @ =gUnknown_0851F440
_08063E86:
	mov r0, #24
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #26]
_08063E96:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08063EA2
	b _080640B2
_08063EA2:
	ldrh r4, [r7]
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08063EC8  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #2
	bl sub_0804A748
	strh r4, [r7]
	b _080640B2
_08063EC4:
	.4byte gUnknown_0851F440
_08063EC8:
	.4byte gUnknown_086641E8
_08063ECC:
	cmp r6, #2
	beq _08063ED2
	b _08064058
_08063ED2:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	add r7, r5, #0
	add r7, r7, #84
	cmp r0, #0
	beq _08063F06
	mov r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #249
	bgt _08063F06
	mov r0, #254
	and r0, r0, r1
	mov r1, #0
	strb r0, [r5, #12]
	strb r1, [r5, #2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08063F06:
	mov r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #189
	bne _08063F1E
	bl sub_08034238
	mov r1, #128
	lsl r1, r1, #10
	mov r0, #0
	mov r2, #60
	bl sub_0803425C
_08063F1E:
	ldr r4, _08063F58  @ =0x030006E0
	ldr r1, [r4]
	ldrb r2, [r1, #16]
	cmp r2, #0
	bne _08063F64
	mov r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #249
	ble _08063F64
	mov r0, #1
	strb r0, [r1, #16]
_08063F34:
	ldr r1, [r4]
	ldr r0, _08063F5C  @ =0xFFFFEC00
	str r0, [r1, #32]
	strh r2, [r1, #24]
	ldr r0, _08063F60  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #18
	mov r2, #12
	bl sub_080410B4
	ldr r1, [r4]
	str r0, [r1, #96]
	ldr r1, [r1, #32]
	bl sub_08040FC0
	b _080640B2
_08063F58:
	.4byte 0x030006E0
_08063F5C:
	.4byte 0xFFFFEC00
_08063F60:
	.4byte 0x030019AC
_08063F64:
	ldr r4, _08063F84  @ =0x030006E0
	ldr r3, [r4]
	ldr r0, _08063F88  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r3, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08063F8C
	mov r0, #136
	lsl r0, r0, #1
	add r1, r1, r0
	str r1, [r3, #32]
	ldr r0, [r3, #96]
	bl sub_08040FC0
	b _08063FA8
_08063F84:
	.4byte 0x030006E0
_08063F88:
	.4byte 0x030019AC
_08063F8C:
	ldrb r0, [r3, #16]
	cmp r0, #1
	bne _08063FA8
	mov r2, #0
	mov r0, #2
	strb r0, [r3, #16]
	ldr r1, [r4]
	strh r2, [r1, #24]
	ldr r0, _08063FD8  @ =gUnknown_0851F440
	ldrb r0, [r0, #1]
	strh r0, [r1, #26]
	mov r0, #18
	bl sub_08071E14
_08063FA8:
	ldr r1, _08063FDC  @ =0x030006E0
	ldr r4, [r1]
	ldrh r0, [r4, #26]
	sub r0, r0, #1
	mov r2, #0
	strh r0, [r4, #26]
	lsl r0, r0, #16
	add r6, r1, #0
	cmp r0, #0
	bgt _08064006
	ldrh r0, [r4, #24]
	add r0, r0, #1
	strh r0, [r4, #24]
	ldrb r1, [r4, #16]
	cmp r1, #1
	bne _08063FE4
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #23
	ble _08063FD2
	strh r2, [r4, #24]
_08063FD2:
	ldr r3, [r6]
	ldr r2, _08063FE0  @ =gUnknown_0854301C
	b _08063FF6
_08063FD8:
	.4byte gUnknown_0851F440
_08063FDC:
	.4byte 0x030006E0
_08063FE0:
	.4byte gUnknown_0854301C
_08063FE4:
	cmp r1, #2
	bne _080640B2
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _08063FF2
	strh r2, [r4, #24]
_08063FF2:
	ldr r3, [r6]
	ldr r2, _08064048  @ =gUnknown_0851F440
_08063FF6:
	mov r0, #24
	ldrsh r1, [r3, r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #26]
_08064006:
	ldr r4, [r6]
	ldrb r0, [r4, #16]
	cmp r0, #2
	bne _080640B2
	ldr r2, _0806404C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, r0, #108
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r4, #17]
	str r1, [sp]
	ldr r1, _08064050  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0804A748
	ldr r0, _08064054  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	strb r2, [r0, #16]
	b _080640B2
	.byte 0x00
	.byte 0x00
_08064048:
	.4byte gUnknown_0851F440
_0806404C:
	.4byte gUnknown_03001A1C
_08064050:
	.4byte gUnknown_086641E8
_08064054:
	.4byte 0x03001940
_08064058:
	add r0, r5, #0
	bl sub_08064574
	lsl r0, r0, #24
	cmp r0, #0
	bne _080640B2
	ldr r0, _08064094  @ =0x030006E0
	ldr r1, [r0]
	ldrh r0, [r1, #44]
	cmp r0, #0
	bne _080640B2
	ldrh r0, [r1, #52]
	strh r0, [r1, #44]
	add r0, r1, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806409C
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _08064098  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	mov r3, #0
	bl sub_0804A748
	b _080640B2
_08064094:
	.4byte 0x030006E0
_08064098:
	.4byte gUnknown_086641E8
_0806409C:
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _080640BC  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #10
	mov r3, #1
	bl sub_0804A748
_080640B2:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080640BC:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_08063D84

	THUMB_FUNC_START sub_080640C0
sub_080640C0: @ 0x080640C0
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	bl sub_08064574
	lsl r0, r0, #24
	cmp r0, #0
	bne _08064156
	ldr r5, _0806410C  @ =0x030006E0
	ldr r0, [r5]
	ldrh r0, [r0, #44]
	cmp r0, #0
	bne _08064130
	bl sub_080670F0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08064130
	ldr r1, [r5]
	ldrh r0, [r1, #52]
	strh r0, [r1, #44]
	add r0, r1, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064114
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _08064110  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	mov r3, #0
	bl sub_0804A748
	b _08064156
_0806410C:
	.4byte 0x030006E0
_08064110:
	.4byte gUnknown_086641E8
_08064114:
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _0806412C  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	mov r3, #1
	bl sub_0804A748
	b _08064156
_0806412C:
	.4byte gUnknown_086641E8
_08064130:
	ldr r0, _08064160  @ =0x030006E0
	ldr r2, [r0]
	ldrh r1, [r2, #46]
	mov r3, #28
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _08064156
	add r0, r4, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _08064156
	mov r0, #0
	strh r0, [r2, #46]
	add r0, r4, #0
	bl sub_0806493C
_08064156:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08064160:
	.4byte 0x030006E0
	THUMB_FUNC_END sub_080640C0

	THUMB_FUNC_START sub_08064164
sub_08064164: @ 0x08064164
	push {r4-r6,lr}
	sub sp, sp, #8
	add r4, r0, #0
	bl sub_08064574
	lsl r0, r0, #24
	cmp r0, #0
	bne _080641FC
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	add r5, r0, #0
	cmp r1, #44
	bne _080641D4
	ldrh r6, [r5]
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne _080641A0
	ldr r0, _0806419C  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #2
	beq _080641CA
	mov r0, #2
	bl sub_08064894
	b _080641CA
_0806419C:
	.4byte 0x0300196C
_080641A0:
	cmp r0, #7
	bne _080641B8
	ldr r0, _080641B4  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #3
	beq _080641CA
	mov r0, #3
	bl sub_08064894
	b _080641CA
_080641B4:
	.4byte 0x0300196C
_080641B8:
	cmp r0, #6
	bne _080641CA
	ldr r0, _080641D0  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #1
	beq _080641CA
	mov r0, #1
	bl sub_08064894
_080641CA:
	strh r6, [r5]
	b _080641FC
	.byte 0x00
	.byte 0x00
_080641D0:
	.4byte 0x0300196C
_080641D4:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080641FC
	ldr r0, _08064204  @ =0x030006E0
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08064208  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	bl sub_0804A748
_080641FC:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_08064204:
	.4byte 0x030006E0
_08064208:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_08064164

	THUMB_FUNC_START sub_0806420C
sub_0806420C: @ 0x0806420C
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	bl sub_08064574
	lsl r0, r0, #24
	cmp r0, #0
	beq _0806421E
	b _080643EC
_0806421E:
	add r6, r5, #0
	add r6, r6, #84
	mov r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #6
	beq _0806422C
	b _080643BC
_0806422C:
	ldr r6, _08064288  @ =0x030006E0
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	beq _080642E8
	add r0, r2, #0
	add r0, r0, #54
	add r1, r2, #0
	add r1, r1, #55
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08064254
	add r0, r2, #0
	add r0, r0, #56
	ldrb r0, [r0]
	cmp r0, #0
	bne _08064266
_08064254:
	ldr r0, _0806428C  @ =0x03001D54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08064266
	add r0, r2, #0
	add r0, r0, #57
	ldrb r4, [r0]
	cmp r4, #0
	beq _08064290
_08064266:
	ldr r3, [r5, #32]
	lsl r3, r3, #8
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #198
	mov r2, #0
	bl sub_08038DF4
	b _080642BC
_08064288:
	.4byte 0x030006E0
_0806428C:
	.4byte 0x03001D54
_08064290:
	ldr r3, [r5, #32]
	lsl r3, r3, #8
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #199
	mov r2, #0
	bl sub_08038DF4
	ldr r0, [r6]
	add r0, r0, #54
	strb r4, [r0]
	ldr r0, [r6]
	add r0, r0, #57
	mov r1, #1
	strb r1, [r0]
_080642BC:
	ldr r2, _080642E4  @ =0x030006E0
	ldr r1, [r2]
	add r1, r1, #50
	ldrb r0, [r1]
	add r0, r0, #1
	mov r4, #0
	strb r0, [r1]
	ldr r0, [r2]
	add r3, r0, #0
	add r3, r3, #50
	add r0, r0, #49
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080642DC
	strb r4, [r3]
_080642DC:
	ldr r0, [r2]
	add r0, r0, #48
	strb r4, [r0]
	b _08064398
_080642E4:
	.4byte 0x030006E0
_080642E8:
	add r0, r2, #0
	add r0, r0, #54
	add r1, r2, #0
	add r1, r1, #55
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bcs _08064302
	add r0, r2, #0
	add r0, r0, #56
	ldrb r0, [r0]
	cmp r0, #0
	bne _08064314
_08064302:
	ldr r0, _0806433C  @ =0x03001D54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08064314
	add r0, r2, #0
	add r0, r0, #57
	ldrb r4, [r0]
	cmp r4, #0
	beq _08064340
_08064314:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #64
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #198
	mov r2, #0
	bl sub_08038DF4
	b _08064370
	.byte 0x00
	.byte 0x00
_0806433C:
	.4byte 0x03001D54
_08064340:
	ldr r3, [r5, #32]
	asr r3, r3, #8
	add r3, r3, #64
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r5, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #199
	mov r2, #0
	bl sub_08038DF4
	ldr r0, [r6]
	add r0, r0, #54
	strb r4, [r0]
	ldr r0, [r6]
	add r0, r0, #57
	mov r1, #1
	strb r1, [r0]
_08064370:
	ldr r2, _080643B8  @ =0x030006E0
	ldr r1, [r2]
	add r1, r1, #50
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	add r3, r0, #0
	add r3, r3, #50
	add r0, r0, #49
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08064390
	mov r0, #0
	strb r0, [r3]
_08064390:
	ldr r0, [r2]
	add r0, r0, #48
	mov r1, #1
	strb r1, [r0]
_08064398:
	ldr r1, [r2]
	add r1, r1, #54
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	add r2, r0, #0
	add r2, r2, #54
	add r0, r0, #55
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bls _080643EC
	mov r0, #0
	strb r0, [r2]
	b _080643EC
_080643B8:
	.4byte 0x030006E0
_080643BC:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080643EC
	ldrh r4, [r6]
	ldr r0, _080643F4  @ =0x030006E0
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r5, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _080643F8  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #4
	bl sub_0804A748
	strh r4, [r6]
_080643EC:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_080643F4:
	.4byte 0x030006E0
_080643F8:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_0806420C

	THUMB_FUNC_START sub_080643FC
sub_080643FC: @ 0x080643FC
	push {r4-r6,lr}
	sub sp, sp, #12
	add r6, r0, #0
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r6, #92]
	mov r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #13
	bne _08064444
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0806441C
	b _08064560
_0806441C:
	ldr r0, _0806443C  @ =0x030006E0
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r6, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08064440  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #14
	bl sub_0804A748
	b _08064560
_0806443C:
	.4byte 0x030006E0
_08064440:
	.4byte gUnknown_086641E8
_08064444:
	add r0, r6, #0
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	ldr r2, [r6, #36]
	cmp r1, #3
	bne _08064498
	asr r0, r2, #8
	cmp r0, #103
	ble _08064498
	ldr r2, _08064490  @ =0x030006E0
	ldr r0, [r2]
	add r0, r0, #55
	mov r4, #0
	mov r1, #6
	strb r1, [r0]
	ldr r2, [r2]
	ldrh r0, [r2, #52]
	sub r0, r0, #90
	strh r0, [r2, #52]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r6, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08064494  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #15
	bl sub_0804A748
	mov r0, #176
	lsl r0, r0, #7
	b _080644D8
	.byte 0x00
	.byte 0x00
_08064490:
	.4byte 0x030006E0
_08064494:
	.4byte gUnknown_086641E8
_08064498:
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _080644F8
	asr r0, r2, #8
	cmp r0, #199
	ble _080644F8
	ldr r2, _080644F0  @ =0x030006E0
	ldr r0, [r2]
	add r0, r0, #55
	mov r4, #0
	mov r1, #9
	strb r1, [r0]
	ldr r2, [r2]
	ldrh r0, [r2, #52]
	sub r0, r0, #90
	strh r0, [r2, #52]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r6, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _080644F4  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #15
	bl sub_0804A748
	mov r0, #184
	lsl r0, r0, #8
_080644D8:
	str r0, [r6, #36]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #249
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08064560
_080644F0:
	.4byte 0x030006E0
_080644F4:
	.4byte gUnknown_086641E8
_080644F8:
	asr r1, r2, #8
	ldr r0, _08064568  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r0, r0, #56
	cmp r1, r0
	blt _08064560
	mov r3, #128
	lsl r3, r3, #1
	mov r5, #160
	lsl r5, r5, #1
	str r5, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #26
	mov r2, #0
	bl sub_08038DF4
	mov r3, #136
	lsl r3, r3, #1
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #27
	mov r2, #0
	bl sub_08038DF4
	mov r3, #144
	lsl r3, r3, #1
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #28
	mov r2, #0
	bl sub_08038DF4
	ldr r0, _0806456C  @ =0x030006E0
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r6, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08064570  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #16
	bl sub_0804A748
_08064560:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
_08064568:
	.4byte gUnknown_030012E4
_0806456C:
	.4byte 0x030006E0
_08064570:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_080643FC

	THUMB_FUNC_START sub_08064574
sub_08064574: @ 0x08064574
	push {r4-r7,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r1, _080645E0  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r6, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r6, r6, r0
	add r3, r1, #0
	cmp r6, #0
	beq _080645F4
	ldr r0, _080645E4  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _080645E8  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	mov r3, #0
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _080645EC  @ =0x03001968
	ldrh r0, [r4]
	str r0, [r1]
	ldr r2, _080645F0  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _080645D6
	b _080647AA
_080645D6:
	mov r0, #128
	lsl r0, r0, #9
	orr r1, r1, r0
	str r1, [r2]
	b _080647AA
_080645E0:
	.4byte 0x030019AC
_080645E4:
	.4byte 0x030006E0
_080645E8:
	.4byte gUnknown_086641E8
_080645EC:
	.4byte 0x03001968
_080645F0:
	.4byte gUnknown_03001A1C
_080645F4:
	ldr r1, [r4, #76]
	cmp r1, #0
	bge _080645FC
	b _080647C8
_080645FC:
	ldr r2, _08064644  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r5, r0, r1
	ldrh r0, [r5]
	cmp r0, #0
	bne _08064648
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r5, #32]
	asr r2, r2, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	blt _08064698
	b _080646C4
	.byte 0x00
	.byte 0x00
_08064644:
	.4byte 0x03001940
_08064648:
	cmp r0, #29
	beq _08064654
	cmp r0, #31
	beq _08064654
	cmp r0, #30
	bne _080646F0
_08064654:
	ldr r2, [r3]
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	bne _08064664
	b _0806479C
_08064664:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, [r5, #32]
	asr r2, r2, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _080646C4
_08064698:
	ldr r0, _080646BC  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _080646C0  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #8
	mov r3, #1
	bl sub_0804A748
	mov r0, #0
	bl sub_080647D4
	b _0806479C
	.byte 0x00
	.byte 0x00
_080646BC:
	.4byte 0x030006E0
_080646C0:
	.4byte gUnknown_086641E8
_080646C4:
	ldr r0, _080646E8  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _080646EC  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl sub_0804A748
	mov r0, #1
	bl sub_080647D4
	b _0806479C
	.byte 0x00
	.byte 0x00
_080646E8:
	.4byte 0x030006E0
_080646EC:
	.4byte gUnknown_086641E8
_080646F0:
	cmp r0, #200
	bne _0806479C
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0806479C
	ldr r7, _080647B0  @ =0x030006E0
	ldr r0, [r7]
	add r0, r0, #54
	strb r6, [r0]
	add r1, r4, #0
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08064740
	ldr r2, _080647B4  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _080647B8  @ =0x20040000
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _080647BC  @ =0x03001A20
	mov r0, #6
	strb r0, [r1]
	bl sub_08034238
	mov r1, #128
	lsl r1, r1, #10
	mov r0, #0
	mov r2, #30
	bl sub_0803425C
_08064740:
	ldr r1, [r7]
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _080647C0  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #13
	mov r3, #0
	bl sub_0804A748
	ldr r0, [r7]
	add r0, r0, #125
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r7]
	add r0, r0, #126
	strb r6, [r0]
	ldr r0, [r4, #36]
	sub r0, r0, #64
	str r0, [r4, #36]
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, [r5, #32]
	asr r2, r2, #8
	sub r2, r2, #8
	lsl r2, r2, #16
	lsr r2, r2, #16
	ldr r3, [r5, #36]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #10
	mov r1, #0
	bl sub_0804138C
_0806479C:
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _080647C4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_080647AA:
	mov r0, #1
	b _080647CA
	.byte 0x00
	.byte 0x00
_080647B0:
	.4byte 0x030006E0
_080647B4:
	.4byte gUnknown_030019A0
_080647B8:
	.4byte 0x20040000
_080647BC:
	.4byte 0x03001A20
_080647C0:
	.4byte gUnknown_086641E8
_080647C4:
	.4byte 0xFFFFFF00
_080647C8:
	mov r0, #0
_080647CA:
	add sp, sp, #12
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08064574

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080647D4
sub_080647D4: @ 0x080647D4
	push {r4-r6,lr}
	sub sp, sp, #80
	lsl r0, r0, #16
	cmp r0, #0
	bne _0806482C
	mov r4, sp
	mov r0, sp
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r5, #0
	mov r2, #244
	lsl r2, r2, #1
	strh r2, [r4, #2]
	ldr r0, _08064824  @ =0x00100800
	str r0, [sp, #28]
	ldr r4, _08064828  @ =0x030019AC
	ldr r0, [r4]
	mov r1, sp
	bl sub_0803ED98
	ldr r0, [r4]
	add r0, r0, #52
	strb r5, [r0]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _08064820
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_08064820:
	ldr r2, [r4]
	b _0806486E
_08064824:
	.4byte 0x00100800
_08064828:
	.4byte 0x030019AC
_0806482C:
	add r4, sp, #40
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r0, #37
	strb r0, [r4]
	mov r5, #0
	ldr r2, _08064884  @ =0x000001E9
	strh r2, [r4, #2]
	ldr r0, _08064888  @ =0x00200800
	str r0, [r4, #28]
	ldr r6, _0806488C  @ =0x030019AC
	ldr r0, [r6]
	add r1, r4, #0
	bl sub_0803ED98
	ldr r0, [r6]
	add r0, r0, #52
	strb r5, [r0]
	ldr r1, [r6]
	add r0, r1, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bgt _0806486C
	mov r0, #170
	lsl r0, r0, #9
	str r0, [r1, #80]
_0806486C:
	ldr r2, [r6]
_0806486E:
	mov r0, #1
	neg r0, r0
	str r0, [r2, #76]
	ldr r0, [r2, #92]
	ldr r1, _08064890  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #92]
	add sp, sp, #80
	pop {r4-r6}
	pop {r0}
	bx r0
_08064884:
	.4byte 0x000001E9
_08064888:
	.4byte 0x00200800
_0806488C:
	.4byte 0x030019AC
_08064890:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080647D4

	THUMB_FUNC_START sub_08064894
sub_08064894: @ 0x08064894
	push {r4-r6,lr}
	sub sp, sp, #24
	add r5, r0, #0
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r1, _08064928  @ =gUnknown_08076FD0
	add r0, sp, #12
	mov r2, #3
	bl memcpy
	add r4, sp, #16
	ldr r1, _0806492C  @ =gUnknown_08076FD4
	add r0, r4, #0
	mov r2, #6
	bl memcpy
	sub r6, r5, #1
	lsl r0, r6, #1
	add r4, r4, r0
	ldrh r4, [r4]
	add r4, r4, #16
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r2, _08064930  @ =0x030019DC
	ldr r0, _08064934  @ =0x0300196C
	ldrb r1, [r0]
	strb r1, [r2]
	strb r5, [r0]
	ldrb r0, [r0]
	ldrb r1, [r2]
	bl sub_080035C0
	mov r0, sp
	add r0, r0, r6
	add r0, r0, #12
	ldrb r0, [r0]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add r5, r5, #2
	lsl r5, r5, #24
	lsr r5, r5, #24
	ldr r0, _08064938  @ =0x030006E0
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r0, [r1, #32]
	asr r0, r0, #8
	lsl r4, r4, #16
	asr r4, r4, #16
	add r4, r4, r0
	lsl r4, r4, #16
	lsr r4, r4, #16
	ldr r3, [r1, #36]
	asr r3, r3, #8
	add r3, r3, #26
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0804138C
	add sp, sp, #24
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08064928:
	.4byte gUnknown_08076FD0
_0806492C:
	.4byte gUnknown_08076FD4
_08064930:
	.4byte 0x030019DC
_08064934:
	.4byte 0x0300196C
_08064938:
	.4byte 0x030006E0
	THUMB_FUNC_END sub_08064894

	THUMB_FUNC_START sub_0806493C
sub_0806493C: @ 0x0806493C
	push {r4-r7,lr}
	sub sp, sp, #8
	add r7, r0, #0
	ldr r3, _08064978  @ =0x030006E0
	ldr r2, [r3]
	mov r1, #20
	ldrsh r0, [r2, r1]
	lsl r0, r0, #2
	ldr r1, [r2, #4]
	add r5, r1, r0
	mov r0, #1
	strb r0, [r2, #19]
	mov r0, #0
	ldrsb r0, [r5, r0]
	add r6, r3, #0
	cmp r0, #5
	bne _08064980
	ldr r0, _0806497C  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #2
	bne _08064980
_08064966:
	ldr r2, [r6]
	mov r0, #20
	ldrsh r1, [r2, r0]
	ldrh r0, [r2]
	sub r0, r0, #1
	cmp r1, r0
	blt _080649B0
	b _080649BC
	.byte 0x00
	.byte 0x00
_08064978:
	.4byte 0x030006E0
_0806497C:
	.4byte 0x0300196C
_08064980:
	mov r0, #0
	ldrsb r0, [r5, r0]
	ldrb r1, [r5]
	cmp r0, #6
	bne _08064992
	ldr r0, _080649B8  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #1
	beq _08064966
_08064992:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #7
	bne _080649C0
	ldr r0, _080649B8  @ =0x0300196C
	ldrb r0, [r0]
	cmp r0, #3
	bne _080649C0
	ldr r2, [r6]
	mov r0, #20
	ldrsh r1, [r2, r0]
	ldrh r0, [r2]
	sub r0, r0, #1
	cmp r1, r0
	bge _080649BC
_080649B0:
	ldrh r0, [r2, #20]
	add r0, r0, #1
	b _080649BE
	.byte 0x00
	.byte 0x00
_080649B8:
	.4byte 0x0300196C
_080649BC:
	mov r0, #0
_080649BE:
	strh r0, [r2, #20]
_080649C0:
	ldr r4, [r6]
	mov r1, #20
	ldrsh r0, [r4, r1]
	lsl r0, r0, #2
	ldr r1, [r4, #4]
	add r5, r1, r0
	add r0, r4, #0
	add r0, r0, #108
	mov r2, #0
	ldrsb r2, [r5, r2]
	ldrb r3, [r5, #1]
	ldrb r1, [r4, #17]
	str r1, [sp]
	ldr r1, _08064A04  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r7, #0
	bl sub_0804A748
	ldr r0, [r6]
	ldrh r1, [r5, #2]
	mov r2, #0
	strh r1, [r0, #28]
	strb r2, [r7, #10]
	ldrh r2, [r0, #20]
	strh r2, [r0, #22]
	add r3, r0, #0
	mov r0, #20
	ldrsh r1, [r3, r0]
	ldrh r0, [r3]
	sub r0, r0, #1
	cmp r1, r0
	bge _08064A08
	add r0, r2, #1
	b _08064A0A
_08064A04:
	.4byte gUnknown_086641E8
_08064A08:
	mov r0, #0
_08064A0A:
	strh r0, [r3, #20]
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806493C

	THUMB_FUNC_START sub_08064A14
sub_08064A14: @ 0x08064A14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08064B44  @ =0x08064BC5
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08064B48  @ =0x08067119
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #0
	mov r3, #1
	strb r3, [r1]
	mov r1, #0
	mov r10, r1
	strh r2, [r7]
	strh r0, [r7, #4]
	mov r0, #3
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08064B4C  @ =gUnknown_08664698
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r8, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08064B50  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r9
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r9
	ldrh r0, [r2, #6]
	and r1, r1, r0
	add r5, r5, #62
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08064B54  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r10
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	add r0, r0, #148
	mov r1, r10
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r0, r0, #149
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	add r0, r0, #150
	strb r1, [r0]
	ldr r1, [r6]
	add r0, r1, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064B58
	add r0, r1, #0
	add r0, r0, #164
	mov r2, r10
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _08064B70
_08064B44:
	.4byte sub_08064BC4
_08064B48:
	.4byte sub_08067118
_08064B4C:
	.4byte gUnknown_08664698
_08064B50:
	.4byte 0x030006E0
_08064B54:
	.4byte 0xFFFFFE00
_08064B58:
	add r0, r1, #0
	add r0, r0, #164
	mov r3, #1
	strb r3, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r3, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_08064B70:
	strb r0, [r2]
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #156
	mov r4, #0
	str r4, [r0]
	add r0, r0, #4
	mov r5, #130
	lsl r5, r5, #14
	str r5, [r0]
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	mov r1, #6
	strb r1, [r0, #19]
	add r0, r2, #0
	add r0, r0, #167
	strb r1, [r0]
	ldr r0, [r6]
	add r0, r0, #165
	strb r4, [r0]
	ldr r0, [r6]
	add r0, r0, #166
	strb r4, [r0]
	ldr r0, [r6]
	add r0, r0, #180
	str r4, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r4, [r7, #92]
	str r5, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08064A14

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08064BC4
sub_08064BC4: @ 0x08064BC4
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08064C20  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _08064C30
	add r3, r4, #0
	add r3, r3, #84
	ldrh r1, [r3]
	add r1, r1, #1
	ldr r5, _08064C24  @ =0x00007FFF
	add r2, r5, #0
	and r1, r1, r2
	strh r1, [r3]
	mov r3, #0
	ldr r1, _08064C28  @ =0x030019AC
	ldr r2, [r1]
	ldr r5, _08064C2C  @ =0xFFFFFE68
	add r1, r5, #0
	ldrh r2, [r2, #4]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #1
	bhi _08064C0A
	mov r3, #1
_08064C0A:
	cmp r3, #0
	bne _08064C30
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08064C36
	.byte 0x00
	.byte 0x00
_08064C20:
	.4byte gUnknown_03001A1C
_08064C24:
	.4byte 0x00007FFF
_08064C28:
	.4byte 0x030019AC
_08064C2C:
	.4byte 0xFFFFFE68
_08064C30:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08064C36:
	ldr r3, [r4, #104]
	mov r2, #4
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08064BC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08064C64
sub_08064C64: @ 0x08064C64
	push {r4,r5,lr}
	sub sp, sp, #48
	add r5, r0, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r0, [r5, #32]
	asr r2, r0, #8
	add r1, r2, #0
	add r1, r1, #32
	mov r0, #152
	lsl r0, r0, #1
	cmp r1, r0
	bls _08064C90
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _08064D30
_08064C90:
	ldr r0, _08064CE4  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _08064CF4
	ldr r4, _08064CE8  @ =0x030006E0
	ldr r0, [r4]
	mov r12, r0
	add r0, r0, #108
	ldr r2, _08064CEC  @ =gUnknown_08664610
	mov r1, r12
	add r1, r1, #58
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r3, [r1]
	mov r1, r12
	add r1, r1, #62
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08064CF0  @ =gUnknown_08664698
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #2
	bl sub_0804A748
	ldr r0, [r4]
	add r1, r0, #0
	add r1, r1, #160
	mov r2, #128
	lsl r2, r2, #8
	str r2, [r1]
	add r0, r0, #165
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r0, #166
	strb r1, [r0]
	str r2, [r5, #96]
	b _08064D30
	.byte 0x00
	.byte 0x00
_08064CE4:
	.4byte gUnknown_030019A0
_08064CE8:
	.4byte 0x030006E0
_08064CEC:
	.4byte gUnknown_08664610
_08064CF0:
	.4byte gUnknown_08664698
_08064CF4:
	sub r0, r2, #1
	cmp r0, #207
	bhi _08064D2A
	add r0, r5, #0
	add r1, sp, #8
	bl sub_08044238
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08064D2E
	ldr r0, _08064D38  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #62
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08064D3C  @ =gUnknown_08664698
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl sub_0804A748
_08064D2A:
	mov r0, #128
	lsl r0, r0, #13
_08064D2E:
	str r0, [r5, #92]
_08064D30:
	add sp, sp, #48
	pop {r4,r5}
	pop {r0}
	bx r0
_08064D38:
	.4byte 0x030006E0
_08064D3C:
	.4byte gUnknown_08664698
	THUMB_FUNC_END sub_08064C64

	THUMB_FUNC_START sub_08064D40
sub_08064D40: @ 0x08064D40
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldr r0, [r5, #36]
	asr r0, r0, #8
	ldr r1, _08064D60  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _08064D64
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _08064E36
_08064D60:
	.4byte gUnknown_030012E4
_08064D64:
	ldr r0, _08064DB8  @ =gUnknown_030019A0
	ldr r6, [r0]
	mov r0, #128
	lsl r0, r0, #11
	and r6, r6, r0
	cmp r6, #0
	beq _08064DC8
	ldr r4, _08064DBC  @ =0x030006E0
	ldr r0, [r4]
	mov r12, r0
	add r0, r0, #108
	ldr r2, _08064DC0  @ =gUnknown_08664610
	mov r1, r12
	add r1, r1, #58
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r3, [r1]
	mov r1, r12
	add r1, r1, #62
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08064DC4  @ =gUnknown_08664698
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #2
	bl sub_0804A748
	ldr r0, [r4]
	add r1, r0, #0
	add r1, r1, #160
	mov r2, #128
	lsl r2, r2, #8
	str r2, [r1]
	add r0, r0, #165
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r0, #166
	strb r1, [r0]
	str r2, [r5, #96]
	b _08064E36
	.byte 0x00
	.byte 0x00
_08064DB8:
	.4byte gUnknown_030019A0
_08064DBC:
	.4byte 0x030006E0
_08064DC0:
	.4byte gUnknown_08664610
_08064DC4:
	.4byte gUnknown_08664698
_08064DC8:
	add r0, r5, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bne _08064DD6
	str r6, [r5, #92]
_08064DD6:
	ldr r0, [r5, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08064E36
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #243
	mov r2, #0
	bl sub_080410B4
	ldr r4, _08064E40  @ =0x030006E0
	ldr r2, [r4]
	mov r12, r2
	mov r0, r12
	add r0, r0, #108
	ldr r2, _08064E44  @ =gUnknown_08664610
	mov r1, r12
	add r1, r1, #58
	ldrb r1, [r1]
	add r1, r1, r2
	ldrb r3, [r1]
	mov r1, r12
	add r1, r1, #62
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08064E48  @ =gUnknown_08664698
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #0
	bl sub_0804A748
	ldr r1, [r4]
	add r1, r1, #58
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	add r1, r0, #0
	add r1, r1, #58
	ldrb r0, [r1]
	cmp r0, #10
	bne _08064E36
	strb r6, [r1]
_08064E36:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08064E40:
	.4byte 0x030006E0
_08064E44:
	.4byte gUnknown_08664610
_08064E48:
	.4byte gUnknown_08664698
	THUMB_FUNC_END sub_08064D40

	THUMB_FUNC_START sub_08064E4C
sub_08064E4C: @ 0x08064E4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08064F7C  @ =0x08064FFD
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08064F80  @ =0x08067149
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #0
	mov r3, #1
	strb r3, [r1]
	mov r1, #0
	mov r10, r1
	strh r2, [r7]
	strh r0, [r7, #4]
	mov r0, #2
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08064F84  @ =gUnknown_086647BC
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r8, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08064F88  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r9
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r9
	ldrh r0, [r2, #6]
	and r1, r1, r0
	add r5, r5, #63
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08064F8C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r10
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	add r0, r0, #188
	mov r1, r10
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r0, r0, #189
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	add r0, r0, #190
	strb r1, [r0]
	ldr r1, [r6]
	add r0, r1, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064F90
	add r0, r1, #0
	add r0, r0, #204
	mov r2, r10
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _08064FA8
_08064F7C:
	.4byte sub_08064FFC
_08064F80:
	.4byte sub_08067148
_08064F84:
	.4byte gUnknown_086647BC
_08064F88:
	.4byte 0x030006E0
_08064F8C:
	.4byte 0xFFFFFE00
_08064F90:
	add r0, r1, #0
	add r0, r0, #204
	mov r3, #1
	strb r3, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r3, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_08064FA8:
	strb r0, [r2]
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #196
	mov r4, #0
	str r4, [r0]
	add r0, r0, #4
	mov r5, #130
	lsl r5, r5, #14
	str r5, [r0]
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	mov r1, #8
	strb r1, [r0, #19]
	add r0, r2, #0
	add r0, r0, #207
	strb r1, [r0]
	ldr r0, [r6]
	add r0, r0, #205
	strb r4, [r0]
	ldr r0, [r6]
	add r0, r0, #206
	strb r4, [r0]
	ldr r0, [r6]
	add r0, r0, #220
	str r4, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r4, [r7, #92]
	str r5, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08064E4C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08064FFC
sub_08064FFC: @ 0x08064FFC
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08065058  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _08065068
	add r3, r4, #0
	add r3, r3, #84
	ldrh r1, [r3]
	add r1, r1, #1
	ldr r5, _0806505C  @ =0x00007FFF
	add r2, r5, #0
	and r1, r1, r2
	strh r1, [r3]
	mov r3, #0
	ldr r1, _08065060  @ =0x030019AC
	ldr r2, [r1]
	ldr r5, _08065064  @ =0xFFFFFE68
	add r1, r5, #0
	ldrh r2, [r2, #4]
	add r1, r1, r2
	lsl r1, r1, #16
	lsr r1, r1, #16
	cmp r1, #1
	bhi _08065042
	mov r3, #1
_08065042:
	cmp r3, #0
	bne _08065068
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _0806506E
	.byte 0x00
	.byte 0x00
_08065058:
	.4byte gUnknown_03001A1C
_0806505C:
	.4byte 0x00007FFF
_08065060:
	.4byte 0x030019AC
_08065064:
	.4byte 0xFFFFFE68
_08065068:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0806506E:
	ldr r3, [r4, #104]
	mov r2, #4
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08064FFC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806509C
sub_0806509C: @ 0x0806509C
	push {r4,lr}
	sub sp, sp, #48
	add r4, r0, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r0, [r4, #32]
	asr r2, r0, #8
	add r1, r2, #0
	add r1, r1, #32
	mov r0, #136
	lsl r0, r0, #1
	cmp r1, r0
	bls _08065128
	ldr r0, _080650D8  @ =0x030006E0
	ldr r0, [r0]
	add r0, r0, #56
	ldrb r0, [r0]
	cmp r0, #0
	bne _08065104
	mov r0, #32
	neg r0, r0
	cmp r2, r0
	bge _080650E0
	ldr r1, _080650DC  @ =0x03001D54
	mov r0, #1
	b _080650E4
	.byte 0x00
	.byte 0x00
_080650D8:
	.4byte 0x030006E0
_080650DC:
	.4byte 0x03001D54
_080650E0:
	ldr r1, _080650FC  @ =0x03001D54
	mov r0, #2
_080650E4:
	strb r0, [r1]
	ldr r0, _08065100  @ =0x030006E0
	ldr r1, [r0]
	mov r0, #0
	strh r0, [r1, #60]
	add r4, r4, #61
	ldrb r0, [r4]
	mov r1, #189
	mov r2, #0
	bl sub_080410B4
	b _08065110
_080650FC:
	.4byte 0x03001D54
_08065100:
	.4byte 0x030006E0
_08065104:
	add r4, r4, #61
	ldrb r0, [r4]
	mov r1, #187
	mov r2, #0
	bl sub_080410B4
_08065110:
	ldr r0, _08065124  @ =0x030006E0
	ldr r0, [r0]
	add r0, r0, #57
	mov r1, #0
	strb r1, [r0]
	ldrb r0, [r4]
	bl sub_08039B64
	b _08065164
	.byte 0x00
	.byte 0x00
_08065124:
	.4byte 0x030006E0
_08065128:
	sub r0, r2, #1
	cmp r0, #207
	bhi _0806515E
	add r0, r4, #0
	add r1, sp, #8
	bl sub_08044238
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08065162
	ldr r0, _0806516C  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #63
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065170  @ =gUnknown_086647BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #1
	bl sub_0804A748
_0806515E:
	mov r0, #128
	lsl r0, r0, #13
_08065162:
	str r0, [r4, #92]
_08065164:
	add sp, sp, #48
	pop {r4}
	pop {r0}
	bx r0
_0806516C:
	.4byte 0x030006E0
_08065170:
	.4byte gUnknown_086647BC
	THUMB_FUNC_END sub_0806509C

	THUMB_FUNC_START sub_08065174
sub_08065174: @ 0x08065174
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bne _08065188
	mov r0, #0
	str r0, [r4, #92]
_08065188:
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806522C
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #186
	mov r2, #0
	bl sub_080410B4
	ldr r1, [r4, #36]
	mov r0, #240
	lsl r0, r0, #7
	cmp r1, r0
	bne _080651BC
	ldr r0, [r4, #32]
	asr r0, r0, #11
	cmp r0, #3
	ble _080651CE
	cmp r0, #24
	bgt _080651D6
_080651BC:
	ldr r1, [r4, #36]
	mov r0, #168
	lsl r0, r0, #8
	cmp r1, r0
	bne _080651DA
	ldr r0, [r4, #32]
	asr r0, r0, #11
	cmp r0, #14
	bgt _080651D2
_080651CE:
	mov r5, #1
	b _080651FC
_080651D2:
	cmp r0, #15
	ble _080651DA
_080651D6:
	mov r5, #0
	b _080651FC
_080651DA:
	ldr r2, _08065234  @ =gUnknown_08664610
	ldr r3, _08065238  @ =0x030006E0
	ldr r1, [r3]
	add r1, r1, #58
	ldrb r0, [r1]
	add r2, r0, r2
	ldrb r5, [r2]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	add r1, r0, #0
	add r1, r1, #58
	ldrb r0, [r1]
	cmp r0, #10
	bne _080651FC
	mov r0, #0
	strb r0, [r1]
_080651FC:
	ldr r2, [r4, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r4, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #9
	mov r1, #0
	bl sub_0804138C
	ldr r0, _08065238  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #63
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _0806523C  @ =gUnknown_086647BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #0
	bl sub_0804A748
_0806522C:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08065234:
	.4byte gUnknown_08664610
_08065238:
	.4byte 0x030006E0
_0806523C:
	.4byte gUnknown_086647BC
	THUMB_FUNC_END sub_08065174

	THUMB_FUNC_START sub_08065240
sub_08065240: @ 0x08065240
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08065280  @ =0x080659C1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08065284  @ =0x0806715D
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #1
	strb r0, [r1]
	strh r2, [r7]
	ldr r0, _08065288  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806528C
	mov r0, #5
	b _08065296
	.byte 0x00
	.byte 0x00
_08065280:
	.4byte sub_080659C0
_08065284:
	.4byte sub_0806715C
_08065288:
	.4byte gUnknown_030019A0
_0806528C:
	ldr r0, _080652B0  @ =0x03001D54
	ldrb r0, [r0]
	cmp r0, #0
	beq _080652B8
	mov r0, #3
_08065296:
	strh r0, [r7, #4]
	add r0, r7, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _080652B4  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #84]
	b _080652BA
	.byte 0x00
	.byte 0x00
_080652B0:
	.4byte 0x03001D54
_080652B4:
	.4byte 0x030006E0
_080652B8:
	strh r0, [r7, #4]
_080652BA:
	mov r1, #0
	mov r9, r1
	mov r0, #8
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080653C8  @ =gUnknown_086648A8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r8, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _080653CC  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	add r5, r5, #64
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _080653D0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r9
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r4, r4, #6
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r4]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	add r0, r0, #228
	strb r2, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r0, r0, #229
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	add r0, r0, #230
	strb r1, [r0]
	ldr r2, _080653D4  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #11
	and r1, r1, r0
	cmp r1, #0
	beq _080653DC
	ldr r0, [r6]
	add r0, r0, #244
	mov r1, #1
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r6]
	add r0, r0, #236
	mov r1, #128
	lsl r1, r1, #13
	str r1, [r0]
	str r1, [r7, #92]
	ldr r5, _080653D8  @ =0x03001D54
	b _08065440
	.byte 0x00
	.byte 0x00
_080653C8:
	.4byte gUnknown_086648A8
_080653CC:
	.4byte 0x030006E0
_080653D0:
	.4byte 0xFFFFFE00
_080653D4:
	.4byte gUnknown_030019A0
_080653D8:
	.4byte 0x03001D54
_080653DC:
	ldr r0, _08065404  @ =0x03001D54
	ldrb r3, [r0]
	add r5, r0, #0
	cmp r3, #0
	beq _08065432
	cmp r3, #1
	bne _08065408
	ldr r0, [r6]
	add r0, r0, #244
	strb r3, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r3, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	b _08065422
	.byte 0x00
	.byte 0x00
_08065404:
	.4byte 0x03001D54
_08065408:
	ldr r0, [r6]
	add r0, r0, #244
	mov r1, r9
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
_08065422:
	strb r0, [r3]
	ldr r0, [r6]
	add r0, r0, #236
	mov r1, #128
	lsl r1, r1, #13
	str r1, [r0]
	str r1, [r7, #92]
	b _08065440
_08065432:
	ldr r0, [r6]
	add r0, r0, #244
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	add r0, r0, #236
	str r3, [r0]
_08065440:
	ldr r3, [r6]
	add r0, r3, #0
	add r0, r0, #240
	mov r1, #128
	lsl r1, r1, #8
	str r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0806545E
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _08065464
_0806545E:
	ldr r0, [r4]
	mov r1, #7
	b _08065468
_08065464:
	ldr r0, [r4]
	mov r1, #20
_08065468:
	strb r1, [r0, #19]
	add r0, r3, #0
	add r0, r0, #247
	strb r1, [r0]
	ldr r0, [r6]
	add r0, r0, #245
	mov r4, #0
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	add r0, r0, #246
	strb r1, [r0]
	ldr r0, [r6]
	mov r2, #130
	lsl r2, r2, #1
	add r0, r0, r2
	str r4, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r4, [r7, #92]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08065240

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080654AC
sub_080654AC: @ 0x080654AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _080654EC  @ =0x080659C1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _080654F0  @ =0x0806715D
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #1
	strb r0, [r1]
	strh r2, [r7]
	ldr r2, _080654F4  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _080654F8
	mov r0, #5
	strh r0, [r7, #4]
	b _0806550E
_080654EC:
	.4byte sub_080659C0
_080654F0:
	.4byte sub_0806715C
_080654F4:
	.4byte gUnknown_030019A0
_080654F8:
	ldr r0, _08065508  @ =0x03001D54
	ldrb r1, [r0]
	cmp r1, #0
	beq _0806550C
	mov r0, #3
	strh r0, [r7, #4]
	b _0806550E
	.byte 0x00
	.byte 0x00
_08065508:
	.4byte 0x03001D54
_0806550C:
	strh r1, [r7, #4]
_0806550E:
	mov r1, #0
	mov r9, r1
	mov r0, #8
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806561C  @ =gUnknown_08664A68
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r4, #124
	add r4, r4, r7
	mov r8, r4
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08065620  @ =0x030006E0
	ldr r5, [r6]
	mov r4, #129
	add r4, r4, r7
	mov r12, r4
	mov r0, r10
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	ldrb r4, [r4]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r4, r10
	ldrh r0, [r4, #6]
	and r1, r1, r0
	add r5, r5, #65
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08065624  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r9
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	mov r4, #134
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, r9
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r4, r4, #1
	add r0, r0, r4
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	mov r3, #135
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r4, _08065628  @ =gUnknown_030019A0
	ldr r1, [r4]
	mov r0, #128
	lsl r0, r0, #11
	and r1, r1, r0
	cmp r1, #0
	beq _0806562C
	ldr r0, [r6]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	b _08065676
_0806561C:
	.4byte gUnknown_08664A68
_08065620:
	.4byte 0x030006E0
_08065624:
	.4byte 0xFFFFFE00
_08065628:
	.4byte gUnknown_030019A0
_0806562C:
	ldr r4, _08065654  @ =0x03001D54
	ldrb r1, [r4]
	cmp r1, #0
	beq _0806568A
	cmp r1, #1
	bne _08065658
	ldr r0, [r6]
	mov r3, #142
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	b _08065676
_08065654:
	.4byte 0x03001D54
_08065658:
	ldr r0, [r6]
	mov r4, #142
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, r9
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
_08065676:
	strb r0, [r3]
	ldr r0, [r6]
	mov r3, #138
	lsl r3, r3, #1
	add r0, r0, r3
	mov r1, #128
	lsl r1, r1, #13
	str r1, [r0]
	str r1, [r7, #92]
	b _080656A0
_0806568A:
	ldr r0, [r6]
	mov r4, #142
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	mov r3, #138
	lsl r3, r3, #1
	add r0, r0, r3
	str r1, [r0]
_080656A0:
	ldr r3, [r6]
	mov r4, #140
	lsl r4, r4, #1
	add r0, r3, r4
	mov r1, #128
	lsl r1, r1, #8
	str r1, [r0]
	ldr r1, _080656D0  @ =0x03001D54
	ldrb r0, [r1]
	cmp r0, #0
	bne _080656C4
	ldr r4, _080656D4  @ =gUnknown_030019A0
	ldr r0, [r4]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _080656DC
_080656C4:
	ldr r0, [r2]
	mov r1, #7
	strb r1, [r0, #19]
	ldr r2, _080656D8  @ =0x0000011F
	add r0, r3, r2
	b _080656E6
_080656D0:
	.4byte 0x03001D54
_080656D4:
	.4byte gUnknown_030019A0
_080656D8:
	.4byte 0x0000011F
_080656DC:
	ldr r0, [r2]
	mov r1, #20
	strb r1, [r0, #19]
	ldr r4, _08065728  @ =0x0000011F
	add r0, r3, r4
_080656E6:
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, _0806572C  @ =0x0000011D
	add r0, r0, r1
	mov r4, #0
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	mov r2, #143
	lsl r2, r2, #1
	add r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r0, r3
	str r4, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r4, [r7, #92]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08065728:
	.4byte 0x0000011F
_0806572C:
	.4byte 0x0000011D
	THUMB_FUNC_END sub_080654AC

	THUMB_FUNC_START sub_08065730
sub_08065730: @ 0x08065730
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08065770  @ =0x080659C1
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08065774  @ =0x0806715D
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #1
	strb r0, [r1]
	strh r2, [r7]
	ldr r2, _08065778  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806577C
	mov r0, #5
	strh r0, [r7, #4]
	b _08065792
_08065770:
	.4byte sub_080659C0
_08065774:
	.4byte sub_0806715C
_08065778:
	.4byte gUnknown_030019A0
_0806577C:
	ldr r0, _0806578C  @ =0x03001D54
	ldrb r1, [r0]
	cmp r1, #0
	beq _08065790
	mov r0, #3
	strh r0, [r7, #4]
	b _08065792
	.byte 0x00
	.byte 0x00
_0806578C:
	.4byte 0x03001D54
_08065790:
	strh r1, [r7, #4]
_08065792:
	mov r1, #0
	mov r9, r1
	mov r0, #8
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080658AC  @ =gUnknown_08664C28
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r4, #124
	add r4, r4, r7
	mov r8, r4
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _080658B0  @ =0x030006E0
	ldr r5, [r6]
	mov r4, #129
	add r4, r4, r7
	mov r12, r4
	mov r0, r10
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	ldrb r4, [r4]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r4, r10
	ldrh r0, [r4, #6]
	and r1, r1, r0
	add r5, r5, #66
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _080658B4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r9
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	mov r4, #154
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, r9
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r4, r4, #1
	add r0, r0, r4
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	mov r3, #155
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r4, _080658B8  @ =gUnknown_030019A0
	ldr r1, [r4]
	mov r0, #128
	lsl r0, r0, #11
	and r1, r1, r0
	cmp r1, #0
	beq _080658BC
	ldr r0, [r6]
	mov r1, #162
	lsl r1, r1, #1
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r6]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r0, r3
	b _08065910
	.byte 0x00
	.byte 0x00
_080658AC:
	.4byte gUnknown_08664C28
_080658B0:
	.4byte 0x030006E0
_080658B4:
	.4byte 0xFFFFFE00
_080658B8:
	.4byte gUnknown_030019A0
_080658BC:
	ldr r4, _080658E4  @ =0x03001D54
	ldrb r3, [r4]
	cmp r3, #0
	beq _0806591A
	cmp r3, #1
	bne _080658E8
	ldr r0, [r6]
	mov r1, #162
	lsl r1, r1, #1
	add r0, r0, r1
	strb r3, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r3, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	b _08065906
_080658E4:
	.4byte 0x03001D54
_080658E8:
	ldr r0, [r6]
	mov r3, #162
	lsl r3, r3, #1
	add r0, r0, r3
	mov r4, r9
	strb r4, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r4, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
_08065906:
	strb r0, [r3]
	ldr r0, [r6]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
_08065910:
	mov r1, #128
	lsl r1, r1, #13
	str r1, [r0]
	str r1, [r7, #92]
	b _08065930
_0806591A:
	ldr r0, [r6]
	mov r4, #162
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r6]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
	str r3, [r0]
_08065930:
	ldr r3, [r6]
	mov r4, #160
	lsl r4, r4, #1
	add r0, r3, r4
	mov r1, #128
	lsl r1, r1, #8
	str r1, [r0]
	ldr r1, _08065960  @ =0x03001D54
	ldrb r0, [r1]
	cmp r0, #0
	bne _08065954
	ldr r4, _08065964  @ =gUnknown_030019A0
	ldr r0, [r4]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806596C
_08065954:
	ldr r0, [r2]
	mov r1, #7
	strb r1, [r0, #19]
	ldr r2, _08065968  @ =0x00000147
	add r0, r3, r2
	b _08065976
_08065960:
	.4byte 0x03001D54
_08065964:
	.4byte gUnknown_030019A0
_08065968:
	.4byte 0x00000147
_0806596C:
	ldr r0, [r2]
	mov r1, #20
	strb r1, [r0, #19]
	ldr r4, _080659B8  @ =0x00000147
	add r0, r3, r4
_08065976:
	strb r1, [r0]
	ldr r0, [r6]
	ldr r1, _080659BC  @ =0x00000145
	add r0, r0, r1
	mov r4, #0
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	mov r2, #163
	lsl r2, r2, #1
	add r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	mov r3, #170
	lsl r3, r3, #1
	add r0, r0, r3
	str r4, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r4, [r7, #92]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080659B8:
	.4byte 0x00000147
_080659BC:
	.4byte 0x00000145
	THUMB_FUNC_END sub_08065730

	THUMB_FUNC_START sub_080659C0
sub_080659C0: @ 0x080659C0
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08065A00  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _08065A08
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08065A04  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08065A0E
	.byte 0x00
	.byte 0x00
_08065A00:
	.4byte gUnknown_03001A1C
_08065A04:
	.4byte 0x00007FFF
_08065A08:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08065A0E:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080659C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08065A3C
sub_08065A3C: @ 0x08065A3C
	push {r4-r7,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldr r2, _08065AE8  @ =0x030019AC
	ldr r3, [r2]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	beq _08065A5C
	b _08065C68
_08065A5C:
	ldr r1, [r5, #36]
	ldr r0, [r3, #36]
	cmp r1, r0
	beq _08065A66
	b _08065C68
_08065A66:
	ldr r0, [r5, #32]
	ldr r2, _08065AEC  @ =0xFFFFFC00
	add r1, r0, r2
	ldr r2, [r3, #32]
	add r4, r0, #0
	cmp r1, r2
	ble _08065A76
	b _08065C68
_08065A76:
	mov r7, #152
	lsl r7, r7, #5
	add r0, r4, r7
	cmp r0, r2
	bge _08065A82
	b _08065C68
_08065A82:
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	bne _08065A90
	b _08065C68
_08065A90:
	ldr r2, [r3, #72]
	ldr r3, _08065AF0  @ =0x03001940
	ldr r1, [r3]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldrh r2, [r0]
	cmp r2, #29
	bne _08065AA8
	ldrh r0, [r5]
	cmp r0, #26
	beq _08065AC0
_08065AA8:
	cmp r2, #30
	bne _08065AB2
	ldrh r0, [r5]
	cmp r0, #27
	beq _08065AC0
_08065AB2:
	cmp r2, #31
	beq _08065AB8
	b _08065C68
_08065AB8:
	ldrh r0, [r5]
	cmp r0, #28
	beq _08065AC0
	b _08065C68
_08065AC0:
	ldr r1, _08065AEC  @ =0xFFFFFC00
	add r0, r4, r1
	ldr r1, [r6]
	ldr r2, [r1, #32]
	cmp r0, r2
	bgt _08065AF4
	mov r7, #192
	lsl r7, r7, #4
	add r0, r4, r7
	cmp r0, r2
	ble _08065AF4
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, r2
	str r0, [r1, #32]
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	b _08065B04
	.byte 0x00
	.byte 0x00
_08065AE8:
	.4byte 0x030019AC
_08065AEC:
	.4byte 0xFFFFFC00
_08065AF0:
	.4byte 0x03001940
_08065AF4:
	ldr r0, [r6]
	mov r7, #144
	lsl r7, r7, #5
	add r1, r4, r7
	str r1, [r0, #32]
	add r0, r0, #64
	mov r1, #0
	strb r1, [r0]
_08065B04:
	ldr r0, [r6]
	ldr r1, [r0, #72]
	ldr r2, [r3]
	mov r0, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #29
	bne _08065B7C
	ldrh r0, [r5]
	cmp r0, #26
	bne _08065B7C
	ldr r4, _08065B6C  @ =0x030006E0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065B70  @ =gUnknown_086648A8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #0
	bl sub_0804A748
	ldr r0, [r6]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #151
	mov r2, #0
	bl sub_080410B4
	ldr r2, _08065B74  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #108
	ldr r1, [r2, #68]
	add r3, r5, #0
	add r3, r3, #64
	ldrb r3, [r3]
	add r2, r2, #80
	ldrb r2, [r2]
	str r2, [sp]
	ldr r2, _08065B78  @ =gUnknown_08664DE8
	b _08065BE0
	.byte 0x00
	.byte 0x00
_08065B6C:
	.4byte 0x030006E0
_08065B70:
	.4byte gUnknown_086648A8
_08065B74:
	.4byte gUnknown_03001938
_08065B78:
	.4byte gUnknown_08664DE8
_08065B7C:
	ldr r0, [r6]
	ldr r1, [r0, #72]
	ldr r2, [r3]
	mov r0, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #30
	bne _08065BFC
	ldrh r0, [r5]
	cmp r0, #27
	bne _08065BFC
	ldr r4, _08065BEC  @ =0x030006E0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065BF0  @ =gUnknown_08664A68
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #0
	bl sub_0804A748
	ldr r0, [r6]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #151
	mov r2, #0
	bl sub_080410B4
	ldr r2, _08065BF4  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #108
	ldr r1, [r2, #72]
	add r3, r5, #0
	add r3, r3, #64
	ldrb r3, [r3]
	add r2, r2, #81
	ldrb r2, [r2]
	str r2, [sp]
	ldr r2, _08065BF8  @ =gUnknown_08664E90
_08065BE0:
	str r2, [sp, #4]
	mov r2, #1
	bl sub_0804A748
	b _08065C68
	.byte 0x00
	.byte 0x00
_08065BEC:
	.4byte 0x030006E0
_08065BF0:
	.4byte gUnknown_08664A68
_08065BF4:
	.4byte gUnknown_03001938
_08065BF8:
	.4byte gUnknown_08664E90
_08065BFC:
	ldr r0, [r6]
	ldr r1, [r0, #72]
	ldr r2, [r3]
	mov r0, #176
	mul r0, r1, r0
	add r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #31
	bne _08065C68
	ldrh r0, [r5]
	cmp r0, #28
	bne _08065C68
	ldr r4, _08065C70  @ =0x030006E0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065C74  @ =gUnknown_08664C28
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #0
	bl sub_0804A748
	ldr r0, [r6]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #151
	mov r2, #0
	bl sub_080410B4
	ldr r2, _08065C78  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #1
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #108
	ldr r1, [r2, #76]
	add r3, r5, #0
	add r3, r3, #64
	ldrb r3, [r3]
	add r2, r2, #82
	ldrb r2, [r2]
	str r2, [sp]
	ldr r2, _08065C7C  @ =gUnknown_08664F38
	str r2, [sp, #4]
	mov r2, #1
	bl sub_0804A748
_08065C68:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_08065C70:
	.4byte 0x030006E0
_08065C74:
	.4byte gUnknown_08664C28
_08065C78:
	.4byte gUnknown_03001938
_08065C7C:
	.4byte gUnknown_08664F38
	THUMB_FUNC_END sub_08065A3C

	THUMB_FUNC_START sub_08065C80
sub_08065C80: @ 0x08065C80
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #25
	bne _08065CA6
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _08065CA6
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #152
	mov r2, #0
	bl sub_080410B4
_08065CA6:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08065CB2
	b _08065DEA
_08065CB2:
	ldr r0, [r4, #32]
	asr r0, r0, #8
	mov r5, #1
	cmp r0, #119
	bgt _08065CBE
	mov r5, #0
_08065CBE:
	ldrh r0, [r4]
	cmp r0, #26
	bne _08065D18
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08065CEC
	ldr r0, _08065CE4  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065CE8  @ =gUnknown_086648A8
	b _08065D9E
_08065CE4:
	.4byte 0x030006E0
_08065CE8:
	.4byte gUnknown_086648A8
_08065CEC:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _08065D10  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #84]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065D14  @ =gUnknown_086648A8
	b _08065D66
_08065D10:
	.4byte 0x030006E0
_08065D14:
	.4byte gUnknown_086648A8
_08065D18:
	cmp r0, #27
	bne _08065D7C
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08065D44
	ldr r0, _08065D3C  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065D40  @ =gUnknown_08664A68
	b _08065D9E
_08065D3C:
	.4byte 0x030006E0
_08065D40:
	.4byte gUnknown_08664A68
_08065D44:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _08065D74  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #88]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065D78  @ =gUnknown_08664A68
_08065D66:
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
	b _08065DE0
	.byte 0x00
	.byte 0x00
_08065D74:
	.4byte 0x030006E0
_08065D78:
	.4byte gUnknown_08664A68
_08065D7C:
	cmp r0, #28
	bne _08065DE0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08065DB4
	ldr r0, _08065DAC  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065DB0  @ =gUnknown_08664C28
_08065D9E:
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
	b _08065DE0
	.byte 0x00
	.byte 0x00
_08065DAC:
	.4byte 0x030006E0
_08065DB0:
	.4byte gUnknown_08664C28
_08065DB4:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _08065DF4  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #92]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065DF8  @ =gUnknown_08664C28
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
_08065DE0:
	add r0, r4, #0
	add r0, r0, #132
	ldr r1, [r0]
	mov r0, #7
	strb r0, [r1, #19]
_08065DEA:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08065DF4:
	.4byte 0x030006E0
_08065DF8:
	.4byte gUnknown_08664C28
	THUMB_FUNC_END sub_08065C80

	THUMB_FUNC_START sub_08065DFC
sub_08065DFC: @ 0x08065DFC
	push {r4,r5,lr}
	sub sp, sp, #48
	add r5, r0, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r0, [r5, #32]
	asr r2, r0, #8
	add r1, r2, #0
	add r1, r1, #32
	mov r0, #152
	lsl r0, r0, #1
	cmp r1, r0
	bls _08065E74
	ldrh r0, [r5]
	cmp r0, #26
	bne _08065E34
	ldr r0, _08065E30  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #84]
	bl sub_08071D9C
	b _08065E56
	.byte 0x00
	.byte 0x00
_08065E30:
	.4byte 0x030006E0
_08065E34:
	cmp r0, #27
	bne _08065E48
	ldr r0, _08065E44  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #88]
	bl sub_08071D9C
	b _08065E56
_08065E44:
	.4byte 0x030006E0
_08065E48:
	cmp r0, #28
	bne _08065E56
	ldr r0, _08065E70  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #92]
	bl sub_08071D9C
_08065E56:
	ldr r0, _08065E70  @ =0x030006E0
	ldr r1, [r0]
	add r1, r1, #56
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _08065F80
	.byte 0x00
	.byte 0x00
_08065E70:
	.4byte 0x030006E0
_08065E74:
	sub r0, r2, #1
	cmp r0, #221
	bls _08065E80
	mov r0, #128
	lsl r0, r0, #13
	b _08065F42
_08065E80:
	ldr r4, _08065EBC  @ =0x03001D54
	ldrb r0, [r4]
	cmp r0, #0
	bne _08065F44
	add r0, r5, #0
	add r1, sp, #8
	bl sub_08044238
	lsl r0, r0, #24
	cmp r0, #0
	beq _08065F3C
	ldrh r0, [r5]
	cmp r0, #26
	bne _08065EC8
	ldr r4, _08065EC0  @ =0x030006E0
	ldr r0, [r4]
	ldr r0, [r0, #84]
	bl sub_08071D9C
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065EC4  @ =gUnknown_086648A8
	b _08065EEA
_08065EBC:
	.4byte 0x03001D54
_08065EC0:
	.4byte 0x030006E0
_08065EC4:
	.4byte gUnknown_086648A8
_08065EC8:
	cmp r0, #27
	bne _08065F00
	ldr r4, _08065EF8  @ =0x030006E0
	ldr r0, [r4]
	ldr r0, [r0, #88]
	bl sub_08071D9C
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065EFC  @ =gUnknown_08664A68
_08065EEA:
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #4
	bl sub_0804A748
	b _08065F2C
	.byte 0x00
	.byte 0x00
_08065EF8:
	.4byte 0x030006E0
_08065EFC:
	.4byte gUnknown_08664A68
_08065F00:
	cmp r0, #28
	bne _08065F2C
	ldr r4, _08065F34  @ =0x030006E0
	ldr r0, [r4]
	ldr r0, [r0, #92]
	bl sub_08071D9C
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08065F38  @ =gUnknown_08664C28
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #4
	bl sub_0804A748
_08065F2C:
	mov r0, #128
	lsl r0, r0, #13
	b _08065F42
	.byte 0x00
	.byte 0x00
_08065F34:
	.4byte 0x030006E0
_08065F38:
	.4byte gUnknown_08664C28
_08065F3C:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08065F44
_08065F42:
	str r0, [r5, #92]
_08065F44:
	ldrh r0, [r5]
	cmp r0, #26
	bne _08065F58
	ldr r0, _08065F54  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #84]
	b _08065F62
	.byte 0x00
	.byte 0x00
_08065F54:
	.4byte 0x030006E0
_08065F58:
	cmp r0, #27
	bne _08065F70
	ldr r0, _08065F6C  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #88]
_08065F62:
	ldr r1, [r5, #32]
	bl sub_08040FC0
	b _08065F80
	.byte 0x00
	.byte 0x00
_08065F6C:
	.4byte 0x030006E0
_08065F70:
	cmp r0, #28
	bne _08065F80
	ldr r0, _08065F88  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #92]
	ldr r1, [r5, #32]
	bl sub_08040FC0
_08065F80:
	add sp, sp, #48
	pop {r4,r5}
	pop {r0}
	bx r0
_08065F88:
	.4byte 0x030006E0
	THUMB_FUNC_END sub_08065DFC

	THUMB_FUNC_START sub_08065F8C
sub_08065F8C: @ 0x08065F8C
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _08065FBC  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _08065FEA
	ldr r2, _08065FC0  @ =0x030006E0
	ldr r1, [r2]
	add r1, r1, #56
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	ldrh r0, [r4]
	cmp r0, #26
	bne _08065FC4
	ldr r0, [r2]
	ldr r0, [r0, #84]
	bl sub_08071D9C
	b _08065FDE
_08065FBC:
	.4byte gUnknown_030012E4
_08065FC0:
	.4byte 0x030006E0
_08065FC4:
	cmp r0, #27
	bne _08065FD2
	ldr r0, [r2]
	ldr r0, [r0, #88]
	bl sub_08071D9C
	b _08065FDE
_08065FD2:
	cmp r0, #28
	bne _08065FDE
	ldr r0, [r2]
	ldr r0, [r0, #92]
	bl sub_08071D9C
_08065FDE:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _080660B4
_08065FEA:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bne _08065FFA
	mov r0, #0
	str r0, [r4, #92]
_08065FFA:
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080660B4
	ldr r0, [r4, #32]
	asr r0, r0, #8
	mov r5, #1
	cmp r0, #119
	bgt _08066016
	mov r5, #0
_08066016:
	ldrh r0, [r4]
	cmp r0, #26
	bne _08066048
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _08066040  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #84]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066044  @ =gUnknown_086648A8
	b _0806606E
_08066040:
	.4byte 0x030006E0
_08066044:
	.4byte gUnknown_086648A8
_08066048:
	cmp r0, #27
	bne _08066084
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _0806607C  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #88]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066080  @ =gUnknown_08664A68
_0806606E:
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
	b _080660B4
	.byte 0x00
	.byte 0x00
_0806607C:
	.4byte 0x030006E0
_08066080:
	.4byte gUnknown_08664A68
_08066084:
	cmp r0, #28
	bne _080660B4
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #138
	mov r2, #4
	bl sub_080410B4
	ldr r1, _080660BC  @ =0x030006E0
	ldr r1, [r1]
	str r0, [r1, #92]
	add r0, r1, #0
	add r0, r0, #108
	add r3, r5, #0
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _080660C0  @ =gUnknown_08664C28
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
_080660B4:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_080660BC:
	.4byte 0x030006E0
_080660C0:
	.4byte gUnknown_08664C28
	THUMB_FUNC_END sub_08065F8C

	THUMB_FUNC_START sub_080660C4
sub_080660C4: @ 0x080660C4
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	cmp r0, #26
	bne _08066128
	ldr r1, [r5, #32]
	asr r0, r1, #8
	cmp r0, #112
	bne _08066118
	ldr r4, _08066110  @ =0x030006E0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066114  @ =gUnknown_086648A8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #6
	bl sub_0804A748
	ldr r0, [r4]
	ldr r0, [r0, #84]
	bl sub_08071D9C
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #188
	mov r2, #0
	bl sub_080410B4
	b _080661C2
_08066110:
	.4byte 0x030006E0
_08066114:
	.4byte gUnknown_086648A8
_08066118:
	ldr r0, _08066124  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #84]
	bl sub_08040FC0
	b _080661C2
_08066124:
	.4byte 0x030006E0
_08066128:
	cmp r0, #27
	bne _08066178
	ldr r1, [r5, #32]
	asr r0, r1, #8
	cmp r0, #128
	bne _08066168
	ldr r4, _08066160  @ =0x030006E0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066164  @ =gUnknown_08664A68
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #6
	bl sub_0804A748
	ldr r0, [r4]
	ldr r0, [r0, #88]
	bl sub_08071D9C
	b _080661C2
	.byte 0x00
	.byte 0x00
_08066160:
	.4byte 0x030006E0
_08066164:
	.4byte gUnknown_08664A68
_08066168:
	ldr r0, _08066174  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #88]
	bl sub_08040FC0
	b _080661C2
_08066174:
	.4byte 0x030006E0
_08066178:
	cmp r0, #28
	bne _080661C2
	ldr r1, [r5, #32]
	asr r0, r1, #8
	cmp r0, #144
	bne _080661B8
	ldr r4, _080661B0  @ =0x030006E0
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _080661B4  @ =gUnknown_08664C28
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #6
	bl sub_0804A748
	ldr r0, [r4]
	ldr r0, [r0, #92]
	bl sub_08071D9C
	b _080661C2
	.byte 0x00
	.byte 0x00
_080661B0:
	.4byte 0x030006E0
_080661B4:
	.4byte gUnknown_08664C28
_080661B8:
	ldr r0, _080661CC  @ =0x030006E0
	ldr r0, [r0]
	ldr r0, [r0, #92]
	bl sub_08040FC0
_080661C2:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080661CC:
	.4byte 0x030006E0
	THUMB_FUNC_END sub_080660C4

	THUMB_FUNC_START sub_080661D0
sub_080661D0: @ 0x080661D0
	push {r4,r5,lr}
	sub sp, sp, #12
	add r5, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #52
	bne _08066214
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #74
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0806623C  @ =0x030006E0
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #108
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r2, _08066240  @ =gUnknown_086641E8
	str r2, [sp, #4]
	mov r2, #18
	bl sub_0804A748
_08066214:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806629C
	ldrh r0, [r5]
	cmp r0, #26
	bne _08066248
	ldr r0, _0806623C  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #64
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066244  @ =gUnknown_086648A8
	b _08066262
_0806623C:
	.4byte 0x030006E0
_08066240:
	.4byte gUnknown_086641E8
_08066244:
	.4byte gUnknown_086648A8
_08066248:
	cmp r0, #27
	bne _08066278
	ldr r0, _08066270  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #65
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066274  @ =gUnknown_08664A68
_08066262:
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #7
	bl sub_0804A748
	b _0806629C
	.byte 0x00
	.byte 0x00
_08066270:
	.4byte 0x030006E0
_08066274:
	.4byte gUnknown_08664A68
_08066278:
	cmp r0, #28
	bne _0806629C
	ldr r0, _080662A4  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r5, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #66
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _080662A8  @ =gUnknown_08664C28
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #7
	bl sub_0804A748
_0806629C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_080662A4:
	.4byte 0x030006E0
_080662A8:
	.4byte gUnknown_08664C28
	THUMB_FUNC_END sub_080661D0

	THUMB_FUNC_START sub_080662AC
sub_080662AC: @ 0x080662AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08066428  @ =0x08066775
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806642C  @ =0x080671A1
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	mov r9, r1
	mov r3, #1
	strb r3, [r0]
	strh r2, [r7]
	mov r0, r9
	strh r0, [r7, #4]
	mov r0, #3
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08066430  @ =gUnknown_08664DE8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r8, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r4, r8
	str r0, [r4]
	str r1, [r4, #4]
	ldr r6, _08066434  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r4, r10
	ldrh r0, [r4, #6]
	and r1, r1, r0
	add r5, r5, #80
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08066438  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, #0
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	mov r4, #174
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r4, r4, #1
	add r0, r0, r4
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	mov r3, #175
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r0, [r6]
	add r4, r4, #15
	add r0, r0, r4
	mov r1, #1
	strb r1, [r0]
	ldr r3, [r6]
	sub r4, r4, #8
	add r0, r3, r4
	mov r1, r9
	str r1, [r0]
	add r4, r4, #4
	add r0, r3, r4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	ldr r0, [r2]
	mov r1, #19
	strb r1, [r0, #19]
	ldr r2, _0806643C  @ =0x0000016F
	add r0, r3, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r3, _08066440  @ =0x0000016D
	add r0, r0, r3
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	sub r2, r2, #1
	add r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	add r3, r3, #15
	add r0, r0, r3
	mov r1, r9
	str r1, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r2, r9
	str r2, [r7, #92]
	str r4, [r7, #96]
	ldr r0, [r6]
	str r7, [r0, #68]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08066428:
	.4byte sub_08066774
_0806642C:
	.4byte sub_080671A0
_08066430:
	.4byte gUnknown_08664DE8
_08066434:
	.4byte 0x030006E0
_08066438:
	.4byte 0xFFFFFE00
_0806643C:
	.4byte 0x0000016F
_08066440:
	.4byte 0x0000016D
	THUMB_FUNC_END sub_080662AC

	THUMB_FUNC_START sub_08066444
sub_08066444: @ 0x08066444
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _080665C0  @ =0x08066775
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _080665C4  @ =0x080671A1
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	mov r9, r1
	mov r3, #1
	strb r3, [r0]
	strh r2, [r7]
	mov r0, r9
	strh r0, [r7, #4]
	mov r0, #3
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080665C8  @ =gUnknown_08664E90
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r8, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r4, r8
	str r0, [r4]
	str r1, [r4, #4]
	ldr r6, _080665CC  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r4, r10
	ldrh r0, [r4, #6]
	and r1, r1, r0
	add r5, r5, #81
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _080665D0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, #0
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	mov r4, #194
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r4, r4, #1
	add r0, r0, r4
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	mov r3, #195
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r0, [r6]
	add r4, r4, #15
	add r0, r0, r4
	mov r1, #1
	strb r1, [r0]
	ldr r3, [r6]
	sub r4, r4, #8
	add r0, r3, r4
	mov r1, r9
	str r1, [r0]
	add r4, r4, #4
	add r0, r3, r4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	ldr r0, [r2]
	mov r1, #19
	strb r1, [r0, #19]
	ldr r2, _080665D4  @ =0x00000197
	add r0, r3, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r3, _080665D8  @ =0x00000195
	add r0, r0, r3
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	sub r2, r2, #1
	add r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	add r3, r3, #15
	add r0, r0, r3
	mov r1, r9
	str r1, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r2, r9
	str r2, [r7, #92]
	str r4, [r7, #96]
	ldr r0, [r6]
	str r7, [r0, #72]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080665C0:
	.4byte sub_08066774
_080665C4:
	.4byte sub_080671A0
_080665C8:
	.4byte gUnknown_08664E90
_080665CC:
	.4byte 0x030006E0
_080665D0:
	.4byte 0xFFFFFE00
_080665D4:
	.4byte 0x00000197
_080665D8:
	.4byte 0x00000195
	THUMB_FUNC_END sub_08066444

	THUMB_FUNC_START sub_080665DC
sub_080665DC: @ 0x080665DC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08066758  @ =0x08066775
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806675C  @ =0x080671A1
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	mov r9, r1
	mov r3, #1
	strb r3, [r0]
	strh r2, [r7]
	mov r0, r9
	strh r0, [r7, #4]
	mov r0, #3
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08066760  @ =gUnknown_08664F38
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r8, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r4, r8
	str r0, [r4]
	str r1, [r4, #4]
	ldr r6, _08066764  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r4, r10
	ldrh r0, [r4, #6]
	and r1, r1, r0
	add r5, r5, #82
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08066768  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, #0
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	mov r4, #214
	lsl r4, r4, #1
	add r0, r0, r4
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r4, r4, #1
	add r0, r0, r4
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	mov r3, #215
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r0, [r6]
	add r4, r4, #15
	add r0, r0, r4
	mov r1, #1
	strb r1, [r0]
	ldr r3, [r6]
	sub r4, r4, #8
	add r0, r3, r4
	mov r1, r9
	str r1, [r0]
	add r4, r4, #4
	add r0, r3, r4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	ldr r0, [r2]
	mov r1, #19
	strb r1, [r0, #19]
	ldr r2, _0806676C  @ =0x000001BF
	add r0, r3, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldr r3, _08066770  @ =0x000001BD
	add r0, r0, r3
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	sub r2, r2, #1
	add r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	add r3, r3, #15
	add r0, r0, r3
	mov r1, r9
	str r1, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r2, r9
	str r2, [r7, #92]
	str r4, [r7, #96]
	ldr r0, [r6]
	str r7, [r0, #76]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08066758:
	.4byte sub_08066774
_0806675C:
	.4byte sub_080671A0
_08066760:
	.4byte gUnknown_08664F38
_08066764:
	.4byte 0x030006E0
_08066768:
	.4byte 0xFFFFFE00
_0806676C:
	.4byte 0x000001BF
_08066770:
	.4byte 0x000001BD
	THUMB_FUNC_END sub_080665DC

	THUMB_FUNC_START sub_08066774
sub_08066774: @ 0x08066774
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _080667B4  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _080667BC
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _080667B8  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _080667C2
	.byte 0x00
	.byte 0x00
_080667B4:
	.4byte gUnknown_03001A1C
_080667B8:
	.4byte 0x00007FFF
_080667BC:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_080667C2:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08066774

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080667F0
sub_080667F0: @ 0x080667F0
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080668EA
	ldrh r0, [r4]
	cmp r0, #33
	bne _08066848
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080668A4
	ldr r0, [r4, #32]
	ldr r1, _08066838  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	ldr r1, _0806683C  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r0, _08066840  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #80
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066844  @ =gUnknown_08664DE8
	b _0806687A
	.byte 0x00
	.byte 0x00
_08066838:
	.4byte 0xFFFFF000
_0806683C:
	.4byte 0xFFFFE000
_08066840:
	.4byte 0x030006E0
_08066844:
	.4byte gUnknown_08664DE8
_08066848:
	cmp r0, #34
	bne _08066898
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _080668A4
	ldr r0, [r4, #32]
	ldr r1, _08066888  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	ldr r1, _0806688C  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r0, _08066890  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #81
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066894  @ =gUnknown_08664E90
_0806687A:
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
	b _080668E0
	.byte 0x00
	.byte 0x00
_08066888:
	.4byte 0xFFFFF000
_0806688C:
	.4byte 0xFFFFE000
_08066890:
	.4byte 0x030006E0
_08066894:
	.4byte gUnknown_08664E90
_08066898:
	cmp r0, #35
	bne _080668E0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080668B0
_080668A4:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _080668EA
_080668B0:
	ldr r0, [r4, #32]
	ldr r1, _080668F4  @ =0xFFFFF000
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	ldr r1, _080668F8  @ =0xFFFFE000
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r0, _080668FC  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #82
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08066900  @ =gUnknown_08664F38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
_080668E0:
	add r0, r4, #0
	add r0, r0, #132
	ldr r1, [r0]
	mov r0, #7
	strb r0, [r1, #19]
_080668EA:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080668F4:
	.4byte 0xFFFFF000
_080668F8:
	.4byte 0xFFFFE000
_080668FC:
	.4byte 0x030006E0
_08066900:
	.4byte gUnknown_08664F38
	THUMB_FUNC_END sub_080667F0

	THUMB_FUNC_START sub_08066904
sub_08066904: @ 0x08066904
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08066A44  @ =0x08066B05
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08066A48  @ =0x080671B9
	str r0, [r1]
	sub r1, r1, #15
	mov r0, #0
	mov r3, #1
	strb r3, [r1]
	mov r1, #0
	mov r10, r1
	strh r2, [r7]
	strh r0, [r7, #4]
	mov r0, #3
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08066A4C  @ =gUnknown_08664FE4
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r8, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r6, _08066A50  @ =0x030006E0
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r9
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r9
	ldrh r0, [r2, #6]
	and r1, r1, r0
	add r5, r5, #104
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08066A54  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r10
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #108
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #18]
	strb r0, [r7, #10]
	ldr r0, [r6]
	mov r1, #234
	lsl r1, r1, #1
	add r0, r0, r1
	mov r2, r10
	strb r2, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	ldr r2, _08066A58  @ =0x000001D5
	add r0, r0, r2
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	mov r3, #235
	lsl r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r0, _08066A5C  @ =0x03001D54
	ldrb r0, [r0]
	cmp r0, #1
	bne _08066A64
	ldr r0, [r6]
	mov r1, #242
	lsl r1, r1, #1
	add r0, r0, r1
	mov r2, r10
	strb r2, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r0, _08066A60  @ =0xFFFFC000
	b _08066A86
	.byte 0x00
	.byte 0x00
_08066A44:
	.4byte sub_08066B04
_08066A48:
	.4byte sub_080671B8
_08066A4C:
	.4byte gUnknown_08664FE4
_08066A50:
	.4byte 0x030006E0
_08066A54:
	.4byte 0xFFFFFE00
_08066A58:
	.4byte 0x000001D5
_08066A5C:
	.4byte 0x03001D54
_08066A60:
	.4byte 0xFFFFC000
_08066A64:
	ldr r0, [r6]
	mov r3, #242
	lsl r3, r3, #1
	add r0, r0, r3
	mov r1, #1
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, #240
	lsl r0, r0, #8
_08066A86:
	str r0, [r7, #32]
	ldr r3, [r6]
	mov r2, #238
	lsl r2, r2, #1
	add r1, r3, r2
	mov r0, #128
	lsl r0, r0, #13
	str r0, [r1]
	str r0, [r7, #92]
	mov r1, #240
	lsl r1, r1, #1
	add r0, r3, r1
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	add r0, r7, #0
	add r0, r0, #132
	ldr r0, [r0]
	mov r2, #0
	strb r2, [r0, #19]
	add r1, r1, #7
	add r0, r3, r1
	strb r2, [r0]
	ldr r0, [r6]
	ldr r3, _08066B00  @ =0x000001E5
	add r0, r0, r3
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r6]
	add r3, r3, #1
	add r0, r0, r3
	strb r1, [r0]
	ldr r0, [r6]
	mov r1, #250
	lsl r1, r1, #1
	add r0, r0, r1
	str r2, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r4, [r7, #96]
	add r0, r7, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #153
	mov r2, #4
	bl sub_080410B4
	ldr r1, [r6]
	str r0, [r1, #100]
	str r7, [r1, #12]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08066B00:
	.4byte 0x000001E5
	THUMB_FUNC_END sub_08066904

	THUMB_FUNC_START sub_08066B04
sub_08066B04: @ 0x08066B04
	push {r4,r5,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r1, _08066B44  @ =gUnknown_03001A1C
	ldr r1, [r1]
	mov r2, #128
	lsl r2, r2, #5
	and r1, r1, r2
	cmp r1, #0
	bne _08066B4C
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08066B48  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08066B52
	.byte 0x00
	.byte 0x00
_08066B44:
	.4byte gUnknown_03001A1C
_08066B48:
	.4byte 0x00007FFF
_08066B4C:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08066B52:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08066B04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08066B80
sub_08066B80: @ 0x08066B80
	push {r4-r6,lr}
	sub sp, sp, #8
	add r6, r0, #0
	ldrb r1, [r6, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08066C62
	ldr r0, _08066BD0  @ =0x03001D54
	ldrb r0, [r0]
	cmp r0, #1
	bne _08066BD4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r5, #160
	lsl r5, r5, #1
	str r5, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #26
	mov r2, #0
	bl sub_08038DF4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #48
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #28
	mov r2, #0
	bl sub_08038DF4
	b _08066C0A
_08066BD0:
	.4byte 0x03001D54
_08066BD4:
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #48
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r5, #160
	lsl r5, r5, #1
	str r5, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #26
	mov r2, #0
	bl sub_08038DF4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #28
	mov r2, #0
	bl sub_08038DF4
_08066C0A:
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #32
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #160
	lsl r0, r0, #1
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #27
	mov r2, #0
	bl sub_08038DF4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #32
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r6, #36]
	asr r0, r0, #8
	add r0, r0, #32
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #200
	mov r2, #0
	bl sub_08038DF4
	ldr r2, _08066C6C  @ =0x030006E0
	ldr r0, [r2]
	add r0, r0, #56
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r2]
	str r4, [r0, #12]
	add r0, r6, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08066C62:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08066C6C:
	.4byte 0x030006E0
	THUMB_FUNC_END sub_08066B80

	THUMB_FUNC_START sub_08066C70
sub_08066C70: @ 0x08066C70
	push {r4-r7,lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, _08066CC8  @ =0x03001D54
	ldrb r0, [r0]
	cmp r0, #0
	bne _08066C80
	b _08066DA4
_08066C80:
	ldr r0, _08066CCC  @ =0x03001D50
	ldr r4, [r0]
	add r6, r0, #0
	cmp r4, #0
	beq _08066D10
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #11
	beq _08066C94
	b _08066DA4
_08066C94:
	ldr r3, [r4, #32]
	ldr r0, _08066CD0  @ =0xFFFFE000
	cmp r3, r0
	bge _08066C9E
	b _08066DA4
_08066C9E:
	ldr r0, _08066CD4  @ =0x0000EFFF
	cmp r3, r0
	ble _08066CA6
	b _08066DA4
_08066CA6:
	ldr r2, _08066CD8  @ =gUnknown_03001710
	mov r1, #0
	ldrsh r0, [r2, r1]
	lsl r0, r0, #7
	ldr r1, [r4, #36]
	sub r1, r1, r0
	mov r0, #128
	lsl r0, r0, #6
	add r1, r1, r0
	ldr r0, _08066CDC  @ =0x0000BFFF
	cmp r1, r0
	bls _08066DA4
	cmp r3, #0
	bge _08066CE0
	mov r0, #0
	b _08066CF2
	.byte 0x00
	.byte 0x00
_08066CC8:
	.4byte 0x03001D54
_08066CCC:
	.4byte 0x03001D50
_08066CD0:
	.4byte 0xFFFFE000
_08066CD4:
	.4byte 0x0000EFFF
_08066CD8:
	.4byte gUnknown_03001710
_08066CDC:
	.4byte 0x0000BFFF
_08066CE0:
	ldr r0, _08066CEC  @ =0x0000CFFF
	cmp r3, r0
	ble _08066CF0
	mov r0, #208
	b _08066CF2
	.byte 0x00
	.byte 0x00
_08066CEC:
	.4byte 0x0000CFFF
_08066CF0:
	asr r0, r3, #8
_08066CF2:
	strh r0, [r5]
	ldr r1, [r6]
	mov r3, #0
	ldrsh r0, [r2, r3]
	lsl r0, r0, #7
	ldr r1, [r1, #36]
	sub r1, r1, r0
	ldr r0, _08066D0C  @ =0xFFFFE000
	cmp r1, r0
	bge _08066D9C
	mov r0, #8
	b _08066D9E
	.byte 0x00
	.byte 0x00
_08066D0C:
	.4byte 0xFFFFE000
_08066D10:
	ldr r1, _08066D50  @ =0x030006E0
	ldr r0, [r1]
	ldr r3, [r0, #12]
	mov r12, r1
	cmp r3, #0
	beq _08066DA4
	ldr r6, [r3, #32]
	mov r0, #192
	lsl r0, r0, #6
	add r1, r6, r0
	ldr r0, _08066D54  @ =0x00010FFF
	cmp r1, r0
	bhi _08066DA4
	ldr r2, _08066D58  @ =gUnknown_03001710
	mov r1, #0
	ldrsh r0, [r2, r1]
	lsl r0, r0, #7
	ldr r1, [r3, #36]
	sub r1, r1, r0
	mov r3, #192
	lsl r3, r3, #6
	add r1, r1, r3
	ldr r0, _08066D5C  @ =0x0000BFFF
	cmp r1, r0
	bls _08066DA4
	mov r0, #128
	lsl r0, r0, #5
	add r1, r6, r0
	cmp r1, #0
	bge _08066D60
	strh r4, [r5]
	b _08066D74
_08066D50:
	.4byte 0x030006E0
_08066D54:
	.4byte 0x00010FFF
_08066D58:
	.4byte gUnknown_03001710
_08066D5C:
	.4byte 0x0000BFFF
_08066D60:
	ldr r0, _08066D6C  @ =0x0000CFFF
	cmp r1, r0
	ble _08066D70
	mov r0, #208
	b _08066D72
	.byte 0x00
	.byte 0x00
_08066D6C:
	.4byte 0x0000CFFF
_08066D70:
	asr r0, r1, #8
_08066D72:
	strh r0, [r5]
_08066D74:
	mov r1, r12
	ldr r0, [r1]
	ldr r1, [r0, #12]
	mov r3, #0
	ldrsh r0, [r2, r3]
	lsl r0, r0, #7
	ldr r2, _08066D94  @ =0xFFFFF000
	add r0, r0, r2
	ldr r1, [r1, #36]
	sub r1, r1, r0
	ldr r0, _08066D98  @ =0xFFFFE000
	cmp r1, r0
	bge _08066D9C
	mov r0, #8
	b _08066D9E
	.byte 0x00
	.byte 0x00
_08066D94:
	.4byte 0xFFFFF000
_08066D98:
	.4byte 0xFFFFE000
_08066D9C:
	mov r0, #112
_08066D9E:
	strh r0, [r7]
	mov r0, #1
	b _08066DA6
_08066DA4:
	mov r0, #0
_08066DA6:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08066C70

	THUMB_FUNC_START sub_08066DAC
sub_08066DAC: @ 0x08066DAC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _08066DFC  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _08066DD0
	ldr r0, _08066E00  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #21
	and r0, r0, r1
	cmp r0, #0
	bne _08066DD0
	b _08066EE6
_08066DD0:
	ldr r0, _08066E04  @ =0x030006E0
	mov r12, r0
	ldr r1, [r0]
	ldrb r0, [r1, #16]
	cmp r0, #1
	bne _08066E1C
	ldr r2, _08066E08  @ =0x040000D4
	ldr r0, _08066E0C  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08066E10  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08066E14  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r3, #24
	ldrsh r0, [r1, r3]
	lsl r0, r0, #10
	ldr r1, _08066E18  @ =gUnknown_08543384
	b _08066E3E
_08066DFC:
	.4byte gNextMainState
_08066E00:
	.4byte gUnknown_030019A0
_08066E04:
	.4byte 0x030006E0
_08066E08:
	.4byte 0x040000D4
_08066E0C:
	.4byte gUnknown_0854337C
_08066E10:
	.4byte gOamBuffer
_08066E14:
	.4byte 0x84000002
_08066E18:
	.4byte gUnknown_08543384
_08066E1C:
	cmp r0, #2
	bne _08066EE6
	ldr r2, _08066EF0  @ =0x040000D4
	ldr r0, _08066EF4  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08066EF8  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _08066EFC  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r3, #24
	ldrsh r0, [r1, r3]
	lsl r0, r0, #10
	ldr r1, _08066F00  @ =gUnknown_0851F568
_08066E3E:
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _08066F04  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08066F08  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r6]
	add r1, r1, r0
	ldr r0, _08066F0C  @ =0x000003FF
	mov r8, r0
	mov r0, r8
	and r1, r1, r0
	ldr r0, _08066F10  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	mov r1, r12
	ldr r0, [r1]
	ldr r1, [r0, #32]
	asr r1, r1, #8
	ldr r0, _08066F14  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _08066F18  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08066F1C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _08066F20  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08066F24  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #32
	strh r0, [r6]
	mov r3, #128
	lsl r3, r3, #3
	add r0, r3, #0
	ldrh r1, [r7]
	add r0, r0, r1
	strh r0, [r7]
_08066EE6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08066EF0:
	.4byte 0x040000D4
_08066EF4:
	.4byte gUnknown_0851F560
_08066EF8:
	.4byte gOamBuffer
_08066EFC:
	.4byte 0x84000002
_08066F00:
	.4byte gUnknown_0851F568
_08066F04:
	.4byte 0x06010000
_08066F08:
	.4byte 0x84000100
_08066F0C:
	.4byte 0x000003FF
_08066F10:
	.4byte 0xFFFFFC00
_08066F14:
	.4byte gUnknown_030012A0
_08066F18:
	.4byte 0x000001FF
_08066F1C:
	.4byte 0xFFFFFE00
_08066F20:
	.4byte 0x030019AC
_08066F24:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_08066DAC

	THUMB_FUNC_START sub_08066F28
sub_08066F28: @ 0x08066F28
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08066F28

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08066F3C
sub_08066F3C: @ 0x08066F3C
	bx lr
	THUMB_FUNC_END sub_08066F3C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08066F40
sub_08066F40: @ 0x08066F40
	bx lr
	THUMB_FUNC_END sub_08066F40

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08066F44
sub_08066F44: @ 0x08066F44
	push {r4,r5,lr}
	sub sp, sp, #12
	add r1, r0, #0
	ldr r0, _08066F98  @ =0x03001940
	ldr r0, [r0]
	add r0, r0, #153
	mov r5, #0
	strb r5, [r0]
	ldr r4, _08066F9C  @ =0x030006E0
	ldr r3, [r4]
	ldr r0, _08066FA0  @ =gUnknown_0854301C
	ldrb r0, [r0, #1]
	mov r2, #0
	strh r0, [r3, #26]
	strb r2, [r3, #16]
	ldr r4, [r4]
	add r0, r4, #0
	add r0, r0, #108
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r2, _08066FA4  @ =gUnknown_086641E8
	str r2, [sp, #4]
	mov r2, #1
	bl sub_0804A748
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #75
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08066F98:
	.4byte 0x03001940
_08066F9C:
	.4byte 0x030006E0
_08066FA0:
	.4byte gUnknown_0854301C
_08066FA4:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_08066F44

	THUMB_FUNC_START sub_08066FA8
sub_08066FA8: @ 0x08066FA8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08066FE4
	ldr r0, _08066FEC  @ =0x030006E0
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08066FF0  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	bl sub_0804A748
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _08066FF4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_08066FE4:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08066FEC:
	.4byte 0x030006E0
_08066FF0:
	.4byte gUnknown_086641E8
_08066FF4:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08066FA8

	THUMB_FUNC_START sub_08066FF8
sub_08066FF8: @ 0x08066FF8
	push {lr}
	sub sp, sp, #8
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08067022
	ldr r0, _08067028  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	ldrb r1, [r1, #17]
	str r1, [sp]
	ldr r1, _0806702C  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r2, #0
	mov r2, #12
	mov r3, #0
	bl sub_0804A748
_08067022:
	add sp, sp, #8
	pop {r0}
	bx r0
_08067028:
	.4byte 0x030006E0
_0806702C:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_08066FF8

	THUMB_FUNC_START sub_08067030
sub_08067030: @ 0x08067030
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806709A
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	ldr r4, _08067088  @ =0x030006E0
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _0806708C  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #4
	bl sub_0804A748
	ldr r0, [r4]
	add r0, r0, #125
	mov r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r0, #126
	strb r1, [r0]
	add r0, r5, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #3
	bne _08067090
	mov r0, #240
	lsl r0, r0, #7
	b _08067098
	.byte 0x00
	.byte 0x00
_08067088:
	.4byte 0x030006E0
_0806708C:
	.4byte gUnknown_086641E8
_08067090:
	cmp r0, #2
	bne _0806709A
	mov r0, #216
	lsl r0, r0, #8
_08067098:
	str r0, [r5, #36]
_0806709A:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08067030

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080670A4
sub_080670A4: @ 0x080670A4
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #16
	bne _080670DA
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080670DA
	ldr r0, _080670E4  @ =0x030006E0
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #108
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _080670E8  @ =gUnknown_086641E8
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #17
	bl sub_0804A748
_080670DA:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080670E4:
	.4byte 0x030006E0
_080670E8:
	.4byte gUnknown_086641E8
	THUMB_FUNC_END sub_080670A4

	THUMB_FUNC_START sub_080670EC
sub_080670EC: @ 0x080670EC
	bx lr
	THUMB_FUNC_END sub_080670EC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080670F0
sub_080670F0: @ 0x080670F0
	push {lr}
	mov r2, #0
	ldr r0, _08067110  @ =0x030019AC
	ldr r1, [r0]
	ldr r3, _08067114  @ =0xFFFFFE68
	add r0, r3, #0
	ldrh r1, [r1, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0806710A
	mov r2, #1
_0806710A:
	add r0, r2, #0
	pop {r1}
	bx r1
_08067110:
	.4byte 0x030019AC
_08067114:
	.4byte 0xFFFFFE68
	THUMB_FUNC_END sub_080670F0

	THUMB_FUNC_START sub_08067118
sub_08067118: @ 0x08067118
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08067118

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806712C
sub_0806712C: @ 0x0806712C
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08067144
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08067144:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806712C

	THUMB_FUNC_START sub_08067148
sub_08067148: @ 0x08067148
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08067148

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806715C
sub_0806715C: @ 0x0806715C
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806715C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08067170
sub_08067170: @ 0x08067170
	push {lr}
	ldrb r1, [r0, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08067196
	ldr r3, _0806719C  @ =gUnknown_03001A1C
	ldr r1, [r3]
	mov r2, #134
	lsl r2, r2, #7
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _08067196
	orr r1, r1, r2
	str r1, [r3]
	mov r0, #18
	bl sub_08071E14
_08067196:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806719C:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08067170

	THUMB_FUNC_START sub_080671A0
sub_080671A0: @ 0x080671A0
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080671A0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080671B4
sub_080671B4: @ 0x080671B4
	bx lr
	THUMB_FUNC_END sub_080671B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080671B8
sub_080671B8: @ 0x080671B8
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080671B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080671CC
sub_080671CC: @ 0x080671CC
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, [r4, #32]
	asr r0, r0, #8
	cmp r0, #88
	bne _08067218
	mov r0, #153
	bl sub_08071E14
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #154
	mov r2, #0
	bl sub_080410B4
	ldr r0, _08067210  @ =0x030006E0
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #108
	add r2, r4, #0
	add r2, r2, #64
	ldrb r3, [r2]
	add r1, r1, #104
	ldrb r1, [r1]
	str r1, [sp]
	ldr r1, _08067214  @ =gUnknown_08664FE4
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #1
	bl sub_0804A748
	b _08067228
_08067210:
	.4byte 0x030006E0
_08067214:
	.4byte gUnknown_08664FE4
_08067218:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	ldr r1, _08067230  @ =0x030006E0
	ldr r1, [r1]
	ldr r1, [r1, #100]
	bl sub_0804110C
_08067228:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08067230:
	.4byte 0x030006E0
	THUMB_FUNC_END sub_080671CC

	THUMB_FUNC_START sub_08067234
sub_08067234: @ 0x08067234
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #32
	mov r1, #152
	lsl r1, r1, #1
	cmp r0, r1
	bls _08067250
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08067250:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08067234

	THUMB_FUNC_START sub_08067254
sub_08067254: @ 0x08067254
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r7, _0806756C  @ =0x030006E4
	mov r0, #220
	lsl r0, r0, #1
	bl arena_allocate
	str r0, [r7]
	mov r5, #132
	lsl r5, r5, #1
	add r2, r0, r5
	mov r1, #0
	mov r9, r1
	mov r1, #32
	strh r1, [r2]
	mov r3, #133
	lsl r3, r3, #1
	mov r8, r3
	add r0, r0, r8
	mov r6, #128
	strh r6, [r0]
	ldrh r3, [r2]
	sub r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r0, #160
	mov r10, r0
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #12
	mov r1, #135
	mov r2, #0
	bl sub_08038DF4
	bl sub_0804A244
	ldr r4, [r7]
	mov r1, #10
	bl __umodsi3
	mov r2, #217
	lsl r2, r2, #1
	add r1, r4, r2
	strb r0, [r1]
	ldr r1, [r7]
	mov r4, #134
	lsl r4, r4, #1
	add r2, r1, r4
	mov r0, #176
	strh r0, [r2]
	mov r3, #135
	lsl r3, r3, #1
	add r1, r1, r3
	strh r6, [r1]
	ldrh r3, [r2]
	add r3, r3, #48
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r6, r10
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #13
	mov r1, #136
	mov r2, #0
	bl sub_08038DF4
	ldr r0, [r7]
	mov r1, #143
	lsl r1, r1, #1
	add r0, r0, r1
	mov r2, r9
	strb r2, [r0]
	ldr r2, [r7]
	mov r3, #144
	lsl r3, r3, #1
	add r1, r2, r3
	add r5, r2, r5
	mov r6, #0
	ldrsh r0, [r5, r6]
	add r0, r0, #10
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #168
	lsl r0, r0, #1
	add r1, r2, r0
	add r8, r8, r2
	mov r3, r8
	mov r6, #0
	ldrsh r0, [r3, r6]
	sub r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #146
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r0, r0, #24
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #170
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, r8
	mov r6, #0
	ldrsh r0, [r3, r6]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #148
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r0, r0, #22
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #172
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, r8
	mov r6, #0
	ldrsh r0, [r3, r6]
	sub r0, r0, #7
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #150
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r0, r0, #36
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #174
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, r8
	mov r6, #0
	ldrsh r0, [r3, r6]
	add r0, r0, #1
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #152
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r0, r0, #34
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #176
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, r8
	mov r6, #0
	ldrsh r0, [r3, r6]
	sub r0, r0, #6
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #154
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r0, r0, #48
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #178
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, r8
	mov r6, #0
	ldrsh r0, [r3, r6]
	add r0, r0, #2
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #192
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #0
	ldrsh r0, [r5, r3]
	add r0, r0, #48
	lsl r0, r0, #8
	str r0, [r1]
	mov r5, #194
	lsl r5, r5, #1
	add r1, r2, r5
	mov r6, r8
	mov r3, #0
	ldrsh r0, [r6, r3]
	sub r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	sub r5, r5, #76
	add r1, r2, r5
	add r4, r2, r4
	mov r6, #0
	ldrsh r0, [r4, r6]
	sub r0, r0, #10
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #180
	lsl r0, r0, #1
	add r1, r2, r0
	mov r3, #135
	lsl r3, r3, #1
	add r3, r2, r3
	str r3, [sp, #8]
	mov r5, #0
	ldrsh r0, [r3, r5]
	sub r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #158
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, #0
	ldrsh r0, [r4, r3]
	sub r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	mov r5, #182
	lsl r5, r5, #1
	add r1, r2, r5
	ldr r6, [sp, #8]
	mov r3, #0
	ldrsh r0, [r6, r3]
	lsl r0, r0, #8
	str r0, [r1]
	sub r5, r5, #44
	add r1, r2, r5
	mov r6, #0
	ldrsh r0, [r4, r6]
	sub r0, r0, #22
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #184
	lsl r0, r0, #1
	add r1, r2, r0
	ldr r3, [sp, #8]
	mov r5, #0
	ldrsh r0, [r3, r5]
	sub r0, r0, #7
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #162
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, #0
	ldrsh r0, [r4, r3]
	sub r0, r0, #20
	lsl r0, r0, #8
	str r0, [r1]
	mov r5, #186
	lsl r5, r5, #1
	add r1, r2, r5
	ldr r6, [sp, #8]
	mov r3, #0
	ldrsh r0, [r6, r3]
	add r0, r0, #1
	lsl r0, r0, #8
	str r0, [r1]
	sub r5, r5, #44
	add r1, r2, r5
	mov r6, #0
	ldrsh r0, [r4, r6]
	sub r0, r0, #34
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #188
	lsl r0, r0, #1
	add r1, r2, r0
	ldr r3, [sp, #8]
	mov r5, #0
	ldrsh r0, [r3, r5]
	sub r0, r0, #6
	lsl r0, r0, #8
	str r0, [r1]
	mov r6, #166
	lsl r6, r6, #1
	add r1, r2, r6
	mov r3, #0
	ldrsh r0, [r4, r3]
	sub r0, r0, #32
	lsl r0, r0, #8
	str r0, [r1]
	mov r5, #190
	lsl r5, r5, #1
	add r1, r2, r5
	ldr r6, [sp, #8]
	mov r3, #0
	ldrsh r0, [r6, r3]
	add r0, r0, #2
	lsl r0, r0, #8
	str r0, [r1]
	add r5, r5, #12
	add r1, r2, r5
	mov r6, #0
	ldrsh r0, [r4, r6]
	sub r0, r0, #48
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #198
	lsl r0, r0, #1
	add r1, r2, r0
	mov r2, r8
	mov r3, #0
	ldrsh r0, [r2, r3]
	sub r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	bl sub_0804A244
	ldr r4, [r7]
	mov r1, #3
	bl __modsi3
	add r5, r5, #46
	add r1, r4, r5
	strb r0, [r1]
	ldr r0, [r7]
	mov r6, #136
	lsl r6, r6, #1
	add r0, r0, r6
	mov r1, r9
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, _08067570  @ =gUnknown_08665886
	ldrb r0, [r0]
	ldr r2, _08067574  @ =0x00000111
	add r1, r1, r2
	strb r0, [r1]
	ldr r0, [r7]
	mov r3, #137
	lsl r3, r3, #1
	add r1, r0, r3
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r7]
	sub r5, r5, #156
	add r0, r1, r5
	mov r6, #0
	strh r6, [r0]
	add r2, r2, #157
	add r0, r1, r2
	mov r3, r9
	strb r3, [r0]
	ldr r0, [r7]
	sub r5, r5, #1
	add r0, r0, r5
	strb r3, [r0]
	ldr r0, [r7]
	mov r6, #216
	lsl r6, r6, #1
	add r0, r0, r6
	strb r3, [r0]
	ldr r0, [r7]
	ldr r1, _08067578  @ =0x000001B1
	add r0, r0, r1
	strb r3, [r0]
	ldr r0, [r7]
	add r2, r2, #5
	add r0, r0, r2
	strb r3, [r0]
	ldr r0, [r7]
	mov r3, #218
	lsl r3, r3, #1
	add r0, r0, r3
	mov r5, #0
	strh r5, [r0]
	mov r0, #144
	str r0, [sp]
	mov r6, #0
	str r6, [sp, #4]
	mov r0, #255
	mov r1, #38
	mov r2, #0
	mov r3, #120
	bl sub_08038DF4
	mov r3, #0
	ldr r0, _0806757C  @ =0x03001940
	ldr r1, [r0]
	ldrh r0, [r1]
	cmp r0, #38
	bne _08067580
	ldr r0, [r7]
	str r1, [r0, #4]
	add r5, r7, #0
	b _0806759E
_0806756C:
	.4byte 0x030006E4
_08067570:
	.4byte gUnknown_08665886
_08067574:
	.4byte 0x00000111
_08067578:
	.4byte 0x000001B1
_0806757C:
	.4byte 0x03001940
_08067580:
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldr r0, _08067600  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r3, r0
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #38
	bne _08067580
	ldr r1, _08067604  @ =0x030006E4
	ldr r0, [r1]
	str r2, [r0, #4]
	add r5, r1, #0
_0806759E:
	ldr r3, [r5]
	mov r0, #138
	lsl r0, r0, #1
	add r2, r3, r0
	ldr r1, _08067608  @ =gUnknown_08665844
	ldr r0, [r1, #4]
	str r0, [r2]
	ldrb r0, [r1]
	sub r0, r0, #1
	mov r2, #140
	lsl r2, r2, #1
	add r1, r3, r2
	mov r2, #0
	strb r0, [r1]
	ldr r3, [r5]
	mov r6, #142
	lsl r6, r6, #1
	add r1, r3, r6
	mov r4, #0
	mov r0, #10
	strh r0, [r1]
	ldr r0, _0806760C  @ =0x03001D60
	strh r2, [r0]
	mov r1, #212
	lsl r1, r1, #1
	add r0, r3, r1
	str r2, [r0]
	add r6, r6, #136
	add r0, r3, r6
	str r2, [r0]
	bl sub_0806B600
	ldr r0, [r5]
	mov r1, #214
	lsl r1, r1, #1
	add r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	ldr r2, _08067610  @ =0x000001AD
	add r0, r0, r2
	strb r4, [r0]
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08067600:
	.4byte 0x03001940
_08067604:
	.4byte 0x030006E4
_08067608:
	.4byte gUnknown_08665844
_0806760C:
	.4byte 0x03001D60
_08067610:
	.4byte 0x000001AD
	THUMB_FUNC_END sub_08067254

	THUMB_FUNC_START sub_08067614
sub_08067614: @ 0x08067614
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r3, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r3, #0
	add r1, r1, #164
	ldr r0, _08067668  @ =0x08067C31
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806766C  @ =0x0806C2F9
	str r0, [r1]
	ldr r0, [r7, #36]
	ldr r1, _08067670  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r7, #36]
	strh r2, [r7]
	ldr r1, _08067674  @ =0x030006E4
	ldr r2, [r1]
	ldr r0, [r2, #8]
	mov r4, #4
	ldrsh r0, [r0, r4]
	mov r8, r1
	cmp r0, #37
	beq _0806765C
	ldr r0, [r2, #12]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #37
	bne _08067678
_0806765C:
	mov r0, #4
	strh r0, [r7, #4]
	add r1, r3, #0
	add r1, r1, #153
	mov r0, #1
	b _08067680
_08067668:
	.4byte sub_08067C30
_0806766C:
	.4byte sub_0806C2F8
_08067670:
	.4byte 0xFFFFF800
_08067674:
	.4byte 0x030006E4
_08067678:
	mov r0, #0
	strh r0, [r7, #4]
	add r1, r3, #0
	add r1, r1, #153
_08067680:
	strb r0, [r1]
	mov r2, #0
	mov r10, r2
	mov r0, #14
	strh r0, [r7, #6]
	mov r4, #4
	ldrsh r1, [r7, r4]
	lsl r0, r1, #3
	sub r0, r0, r1
	lsl r0, r0, #3
	ldr r1, _080677C0  @ =gUnknown_08665968
	add r6, r0, r1
	add r0, r3, #0
	add r0, r0, #160
	str r6, [r0]
	add r5, r7, #0
	add r5, r5, #124
	ldr r0, [r6, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r5]
	str r1, [r5, #4]
	mov r0, r8
	ldr r4, [r0]
	mov r1, #129
	add r1, r1, r7
	mov r12, r1
	mov r3, r9
	ldrb r2, [r3, #6]
	lsl r2, r2, #4
	ldrb r3, [r1]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r3
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r3, r9
	ldrh r0, [r3, #6]
	and r1, r1, r0
	strb r1, [r4, #19]
	ldr r1, [r7, #32]
	add r3, r7, #0
	add r3, r3, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r3]
	ldr r0, _080677C4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r5]
	mov r4, r10
	strb r4, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r6, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r6, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r6, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r6]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	mov r3, r8
	ldr r1, [r3]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r6, #21]
	strb r0, [r7, #3]
	ldrh r0, [r6, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r6, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r6, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, [r1, #8]
	mov r4, #4
	ldrsh r0, [r0, r4]
	cmp r0, #37
	beq _08067754
	ldr r0, [r1, #12]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #37
	beq _08067754
	ldr r3, _080677C8  @ =0x00000113
	add r0, r1, r3
	ldrb r0, [r0]
	strb r0, [r7, #10]
_08067754:
	mov r4, r8
	ldr r0, [r4]
	add r0, r0, #144
	mov r2, #0
	strb r2, [r0]
	ldr r0, [r4]
	ldrb r1, [r6, #22]
	add r0, r0, #145
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r1, [r6, #23]
	add r0, r0, #146
	strb r1, [r0]
	ldr r0, [r4]
	add r0, r0, #160
	strb r2, [r0]
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #152
	mov r5, #128
	lsl r5, r5, #13
	str r5, [r0]
	add r0, r0, #4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	add r0, r0, #7
	strb r2, [r0]
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #161
	strb r2, [r0]
	ldr r0, [r1]
	add r0, r0, #162
	mov r1, #2
	strb r1, [r0]
	mov r3, r8
	ldr r0, [r3]
	add r0, r0, #176
	str r2, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r5, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080677C0:
	.4byte gUnknown_08665968
_080677C4:
	.4byte 0xFFFFFE00
_080677C8:
	.4byte 0x00000113
	THUMB_FUNC_END sub_08067614

	THUMB_FUNC_START sub_080677CC
sub_080677CC: @ 0x080677CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r3, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r3, #0
	add r1, r1, #164
	ldr r0, _08067920  @ =0x08067C31
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08067924  @ =0x0806C2F9
	str r0, [r1]
	add r0, r3, #0
	add r0, r0, #153
	mov r1, #0
	strb r1, [r0]
	strh r2, [r7]
	mov r0, #1
	strh r0, [r7, #4]
	mov r0, #14
	strh r0, [r7, #6]
	ldr r2, _08067928  @ =gUnknown_08665968
	mov r8, r2
	mov r4, r8
	add r4, r4, #56
	add r0, r3, #0
	add r0, r0, #160
	str r4, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r9, r0
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r5, _0806792C  @ =0x030006E4
	ldr r6, [r5]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r3, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r3
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6, #20]
	ldr r1, [r7, #32]
	add r3, r7, #0
	add r3, r3, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r3]
	ldr r0, _08067930  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, #0
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r4, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r4, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r4, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	mov r0, r8
	ldr r1, [r0, #56]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r5]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r4, #21]
	strb r0, [r7, #3]
	ldrh r0, [r4, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r4, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r4, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, _08067934  @ =0x00000113
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r0, [r5]
	add r0, r0, #144
	mov r2, #0
	strb r2, [r0]
	ldr r0, [r5]
	ldrb r1, [r4, #22]
	add r0, r0, #145
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r1, [r4, #23]
	add r0, r0, #146
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #160
	strb r2, [r0]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #152
	mov r6, #128
	lsl r6, r6, #13
	str r6, [r0]
	add r0, r0, #4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	add r0, r0, #7
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #161
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #162
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #176
	mov r1, #0
	str r1, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r6, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08067920:
	.4byte sub_08067C30
_08067924:
	.4byte sub_0806C2F8
_08067928:
	.4byte gUnknown_08665968
_0806792C:
	.4byte 0x030006E4
_08067930:
	.4byte 0xFFFFFE00
_08067934:
	.4byte 0x00000113
	THUMB_FUNC_END sub_080677CC

	THUMB_FUNC_START sub_08067938
sub_08067938: @ 0x08067938
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, [r7, #32]
	ldr r1, _08067A9C  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r7, #32]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08067AA0  @ =0x08067C31
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08067AA4  @ =0x0806C2F9
	str r0, [r1]
	add r0, r4, #0
	add r0, r0, #153
	mov r1, #0
	strb r1, [r0]
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	mov r0, #2
	strh r0, [r7, #4]
	mov r0, #14
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _08067AA8  @ =gUnknown_08665968
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r9, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r5, _08067AAC  @ =0x030006E4
	ldr r6, [r5]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6, #21]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _08067AB0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, r8
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r5]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, _08067AB4  @ =0x00000113
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r0, [r5]
	add r0, r0, #144
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r5]
	ldrb r1, [r3, #22]
	add r0, r0, #145
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r1, [r3, #23]
	add r0, r0, #146
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #160
	strb r2, [r0]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #152
	mov r6, #128
	lsl r6, r6, #13
	str r6, [r0]
	add r0, r0, #4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	add r0, r0, #7
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #161
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #162
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #176
	mov r2, #0
	str r2, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r6, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08067A9C:
	.4byte 0xFFFFF800
_08067AA0:
	.4byte sub_08067C30
_08067AA4:
	.4byte sub_0806C2F8
_08067AA8:
	.4byte gUnknown_08665968
_08067AAC:
	.4byte 0x030006E4
_08067AB0:
	.4byte 0xFFFFFE00
_08067AB4:
	.4byte 0x00000113
	THUMB_FUNC_END sub_08067938

	THUMB_FUNC_START sub_08067AB8
sub_08067AB8: @ 0x08067AB8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r3, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, [r7, #32]
	ldr r1, _08067C14  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r7, #32]
	add r1, r3, #0
	add r1, r1, #164
	ldr r0, _08067C18  @ =0x08067C31
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08067C1C  @ =0x0806C2F9
	str r0, [r1]
	add r0, r3, #0
	add r0, r0, #153
	mov r1, #0
	strb r1, [r0]
	mov r0, #0
	mov r8, r0
	strh r2, [r7]
	mov r0, #3
	strh r0, [r7, #4]
	mov r0, #14
	strh r0, [r7, #6]
	ldr r4, _08067C20  @ =gUnknown_08665968
	add r4, r4, #168
	add r0, r3, #0
	add r0, r0, #160
	str r4, [r0]
	mov r1, #124
	add r1, r1, r7
	mov r9, r1
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r9
	str r0, [r2]
	str r1, [r2, #4]
	ldr r5, _08067C24  @ =0x030006E4
	ldr r6, [r5]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r3, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r3
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6, #22]
	ldr r1, [r7, #32]
	add r3, r7, #0
	add r3, r3, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r3]
	ldr r0, _08067C28  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r9
	strb r0, [r1]
	mov r2, r8
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r4, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r4, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r4, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r5]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r4, #21]
	strb r0, [r7, #3]
	ldrh r0, [r4, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r4, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r4, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, _08067C2C  @ =0x00000113
	add r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #10]
	ldr r0, [r5]
	add r0, r0, #144
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r5]
	ldrb r1, [r4, #22]
	add r0, r0, #145
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r1, [r4, #23]
	add r0, r0, #146
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #160
	strb r2, [r0]
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #152
	mov r6, #128
	lsl r6, r6, #13
	str r6, [r0]
	add r0, r0, #4
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0]
	add r0, r0, #7
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #161
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #162
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #176
	mov r1, #0
	str r1, [r0]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	str r6, [r7, #92]
	str r4, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08067C14:
	.4byte 0xFFFFF800
_08067C18:
	.4byte sub_08067C30
_08067C1C:
	.4byte sub_0806C2F8
_08067C20:
	.4byte gUnknown_08665968
_08067C24:
	.4byte 0x030006E4
_08067C28:
	.4byte 0xFFFFFE00
_08067C2C:
	.4byte 0x00000113
	THUMB_FUNC_END sub_08067AB8

	THUMB_FUNC_START sub_08067C30
sub_08067C30: @ 0x08067C30
	push {r4-r6,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _08067C78  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _08067C5E
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _08067C7C  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_08067C5E:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _08067C80
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08067C86
	.byte 0x00
	.byte 0x00
_08067C78:
	.4byte gUnknown_03001A1C
_08067C7C:
	.4byte 0x00007FFF
_08067C80:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08067C86:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08067C30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08067CB4
sub_08067CB4: @ 0x08067CB4
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	mov r0, #10
	ldrsb r0, [r4, r0]
	cmp r0, #31
	bgt _08067D50
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, _08067D14  @ =0x030006E4
	ldr r3, [r0]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r3, r1
	ldr r1, [r0]
	mov r0, #10
	ldrsb r0, [r4, r0]
	ldr r1, [r1, #4]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _08067CEE
	b _08067E18
_08067CEE:
	ldr r2, _08067D18  @ =0x00000119
	add r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08067D78
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08067D20
	add r0, r3, #0
	add r0, r0, #24
	ldrb r1, [r3, #19]
	str r1, [sp]
	ldr r1, _08067D1C  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	b _08067DE0
	.byte 0x00
	.byte 0x00
_08067D14:
	.4byte 0x030006E4
_08067D18:
	.4byte 0x00000119
_08067D1C:
	.4byte gUnknown_08665968
_08067D20:
	cmp r0, #1
	bne _08067D3C
	add r0, r3, #0
	add r0, r0, #24
	ldrb r1, [r3, #20]
	str r1, [sp]
	ldr r1, _08067D38  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #5
	b _08067DE0
	.byte 0x00
	.byte 0x00
_08067D38:
	.4byte gUnknown_08665968
_08067D3C:
	cmp r0, #2
	bne _08067D48
	add r0, r3, #0
	add r0, r0, #24
	ldrb r1, [r3, #21]
	b _08067DD6
_08067D48:
	add r0, r3, #0
	add r0, r0, #24
	ldrb r1, [r3, #22]
	b _08067DF2
_08067D50:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _08067D84  @ =gUnknown_086656FC
	mov r0, #10
	ldrsb r0, [r4, r0]
	sub r0, r0, #32
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _08067E18
	ldr r0, _08067D88  @ =0x030006E4
	ldr r1, [r0]
	ldr r2, _08067D8C  @ =0x00000119
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067D90
_08067D78:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _08067E18
_08067D84:
	.4byte gUnknown_086656FC
_08067D88:
	.4byte 0x030006E4
_08067D8C:
	.4byte 0x00000119
_08067D90:
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08067DB0
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #19]
	str r1, [sp]
	ldr r1, _08067DAC  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	b _08067DE0
	.byte 0x00
	.byte 0x00
_08067DAC:
	.4byte gUnknown_08665968
_08067DB0:
	cmp r0, #1
	bne _08067DCC
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #20]
	str r1, [sp]
	ldr r1, _08067DC8  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #5
	b _08067DE0
	.byte 0x00
	.byte 0x00
_08067DC8:
	.4byte gUnknown_08665968
_08067DCC:
	cmp r0, #2
	bne _08067DEC
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #21]
_08067DD6:
	str r1, [sp]
	ldr r1, _08067DE8  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #6
_08067DE0:
	mov r3, #0
	bl sub_0804A748
	b _08067E02
_08067DE8:
	.4byte gUnknown_08665968
_08067DEC:
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #22]
_08067DF2:
	str r1, [sp]
	ldr r1, _08067E20  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	mov r3, #0
	bl sub_0804A748
_08067E02:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _08067E24  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #153
	mov r1, #1
	strb r1, [r0]
_08067E18:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08067E20:
	.4byte gUnknown_08665968
_08067E24:
	.4byte 0x03001940
	THUMB_FUNC_END sub_08067CB4

	THUMB_FUNC_START sub_08067E28
sub_08067E28: @ 0x08067E28
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	add r6, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #199
	ble _08067E44
	sub r0, r0, #23
	b _080680F4
_08067E44:
	ldr r0, [r6, #36]
	asr r0, r0, #8
	ldr r1, _08067E78  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _08067E54
	b _080680F0
_08067E54:
	ldr r0, _08067E7C  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #11
	and r1, r1, r0
	cmp r1, #0
	beq _08067E88
	ldr r0, _08067E80  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #20]
	str r1, [sp]
	ldr r1, _08067E84  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #13
	b _08068016
_08067E78:
	.4byte gUnknown_030012E4
_08067E7C:
	.4byte gUnknown_030019A0
_08067E80:
	.4byte 0x030006E4
_08067E84:
	.4byte gUnknown_08665968
_08067E88:
	cmp r2, #15
	bne _08067E96
	mov r7, #4
	ldrsh r0, [r6, r7]
	cmp r0, #4
	bne _08067E96
	str r1, [r6, #92]
_08067E96:
	ldr r0, [r6, #76]
	cmp r0, #0
	beq _08067E9E
	b _08068090
_08067E9E:
	ldr r4, _08067F1C  @ =0x030019AC
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	add r0, r1, #0
	sub r0, r0, #244
	lsl r0, r0, #16
	lsr r0, r0, #16
	add r5, r4, #0
	cmp r0, #43
	bls _08067ED8
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #25
	beq _08067ED8
	cmp r0, #26
	beq _08067ED8
	ldr r3, _08067F20  @ =0xFFFFFE66
	add r0, r1, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #3
	bls _08067ED8
	add r0, r1, #0
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #7
	bls _08067ED8
	b _0806804C
_08067ED8:
	add r4, r5, #0
	ldr r0, [r4]
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #117
	mov r2, #0
	bl sub_080410B4
	mov r7, #4
	ldrsh r0, [r6, r7]
	cmp r0, #4
	bne _08067F54
	ldr r0, [r4]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08067F2C
	ldr r0, _08067F24  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #19]
	str r1, [sp]
	ldr r1, _08067F28  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #8
	mov r3, #0
	bl sub_0804A748
	b _08067F46
	.byte 0x00
	.byte 0x00
_08067F1C:
	.4byte 0x030019AC
_08067F20:
	.4byte 0xFFFFFE66
_08067F24:
	.4byte 0x030006E4
_08067F28:
	.4byte gUnknown_08665968
_08067F2C:
	ldr r0, _08067F4C  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #19]
	str r1, [sp]
	ldr r1, _08067F50  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #8
	mov r3, #1
	bl sub_0804A748
_08067F46:
	mov r0, #0
	str r0, [r6, #92]
	b _08068150
_08067F4C:
	.4byte 0x030006E4
_08067F50:
	.4byte gUnknown_08665968
_08067F54:
	cmp r0, #5
	bne _08067FA4
	ldr r0, [r4]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08067F84
	ldr r0, _08067F7C  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #20]
	str r1, [sp]
	ldr r1, _08067F80  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #9
	b _08068016
_08067F7C:
	.4byte 0x030006E4
_08067F80:
	.4byte gUnknown_08665968
_08067F84:
	ldr r0, _08067F9C  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #20]
	str r1, [sp]
	ldr r1, _08067FA0  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #9
	b _0806803C
	.byte 0x00
	.byte 0x00
_08067F9C:
	.4byte 0x030006E4
_08067FA0:
	.4byte gUnknown_08665968
_08067FA4:
	cmp r0, #6
	bne _08067FF4
	ldr r0, [r4]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08067FD4
	ldr r0, _08067FCC  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #21]
	str r1, [sp]
	ldr r1, _08067FD0  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #10
	b _08068016
_08067FCC:
	.4byte 0x030006E4
_08067FD0:
	.4byte gUnknown_08665968
_08067FD4:
	ldr r0, _08067FEC  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #21]
	str r1, [sp]
	ldr r1, _08067FF0  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #10
	b _0806803C
	.byte 0x00
	.byte 0x00
_08067FEC:
	.4byte 0x030006E4
_08067FF0:
	.4byte gUnknown_08665968
_08067FF4:
	ldr r0, [r5]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08068028
	ldr r0, _08068020  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #22]
	str r1, [sp]
	ldr r1, _08068024  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #11
_08068016:
	mov r3, #0
	bl sub_0804A748
	b _08068150
	.byte 0x00
	.byte 0x00
_08068020:
	.4byte 0x030006E4
_08068024:
	.4byte gUnknown_08665968
_08068028:
	ldr r0, _08068044  @ =0x030006E4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #24
	ldrb r1, [r1, #22]
	str r1, [sp]
	ldr r1, _08068048  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r6, #0
	mov r2, #11
_0806803C:
	mov r3, #1
	bl sub_0804A748
	b _08068150
_08068044:
	.4byte 0x030006E4
_08068048:
	.4byte gUnknown_08665968
_0806804C:
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #73
	mov r2, #0
	bl sub_080410B4
	ldr r2, _0806807C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	str r0, [r2]
	ldr r0, [r4]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08068084
	ldr r1, _08068080  @ =0x030019A8
	b _080680EC
_0806807C:
	.4byte gUnknown_03001A1C
_08068080:
	.4byte 0x030019A8
_08068084:
	ldr r1, _0806808C  @ =0x03001978
	mov r0, #3
	b _080680EE
	.byte 0x00
	.byte 0x00
_0806808C:
	.4byte 0x03001978
_08068090:
	ldr r0, _080680FC  @ =0x030019AC
	ldr r3, [r0]
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08068108
	ldr r2, _08068100  @ =0x03001940
	ldr r1, [r3, #72]
	mov r0, #176
	mul r0, r1, r0
	ldr r3, [r2]
	add r3, r3, r0
	ldr r0, [r6, #108]
	mov r12, r0
	ldr r1, [r6, #116]
	mov r9, r1
	ldr r5, [r6, #112]
	ldr r2, [r6, #120]
	mov r8, r2
	ldr r1, [r3, #104]
	mov r7, #4
	ldrsh r4, [r1, r7]
	ldr r2, [r3, #32]
	add r4, r2, r4
	mov r7, #6
	ldrsh r0, [r1, r7]
	add r2, r2, r0
	mov r10, r2
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [r3, #36]
	add r3, r2, r0
	mov r7, #2
	ldrsh r0, [r1, r7]
	add r0, r2, r0
	cmp r9, r4
	ble _08068108
	cmp r12, r10
	bge _08068108
	cmp r5, r0
	bge _08068108
	cmp r8, r3
	ble _08068108
	ldr r1, _08068104  @ =0x03001978
_080680EC:
	mov r0, #1
_080680EE:
	strb r0, [r1]
_080680F0:
	add r0, r6, #0
	add r0, r0, #61
_080680F4:
	ldrb r0, [r0]
	bl sub_08039B64
	b _08068150
_080680FC:
	.4byte 0x030019AC
_08068100:
	.4byte 0x03001940
_08068104:
	.4byte 0x03001978
_08068108:
	ldr r0, [r6, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08068150
	add r4, r6, #0
	add r4, r4, #61
	ldrb r0, [r4]
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r6, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r6, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl sub_08038DF4
	ldrb r0, [r4]
	bl sub_08039B64
_08068150:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08067E28

	THUMB_FUNC_START sub_08068160
sub_08068160: @ 0x08068160
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r9, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _080682A8  @ =0x08068311
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _080682AC  @ =0x0806C3F9
	str r0, [r1]
	mov r1, #0
	mov r10, r1
	strh r2, [r7]
	strh r1, [r7, #4]
	mov r0, #50
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _080682B0  @ =gUnknown_086660E0
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r0, #124
	add r0, r0, r7
	mov r8, r0
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	ldr r5, _080682B4  @ =0x030006E4
	ldr r6, [r5]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r9
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r9
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r6, #17]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _080682B8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r10
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r5]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r0, r10
	strb r0, [r7, #10]
	ldr r0, [r5]
	add r0, r0, #64
	mov r1, r10
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r1, [r3, #22]
	add r0, r0, #65
	strb r1, [r0]
	ldr r0, [r5]
	ldrb r1, [r3, #23]
	add r0, r0, #66
	strb r1, [r0]
	ldr r1, [r5]
	mov r0, #64
	str r0, [r1, #72]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r1, #76]
	add r1, r1, #83
	mov r0, #3
	strb r0, [r1]
	ldr r0, [r5]
	add r0, r0, #81
	mov r2, r10
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #82
	mov r1, #2
	strb r1, [r0]
	ldr r5, [r5]
	mov r0, #0
	str r0, [r5, #96]
	ldrh r0, [r7]
	cmp r0, #135
	bne _080682BC
	str r7, [r5, #8]
	add r0, r5, #0
	add r0, r0, #80
	mov r1, #1
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
	b _080682D8
	.byte 0x00
	.byte 0x00
_080682A8:
	.4byte sub_08068310
_080682AC:
	.4byte sub_0806C3F8
_080682B0:
	.4byte gUnknown_086660E0
_080682B4:
	.4byte 0x030006E4
_080682B8:
	.4byte 0xFFFFFE00
_080682BC:
	str r7, [r5, #12]
	add r0, r5, #0
	add r0, r0, #80
	mov r1, r10
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
_080682D8:
	strb r0, [r2]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #160
	lsl r0, r0, #15
	str r0, [r7, #92]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r7, #96]
	add r0, r7, #0
	add r0, r0, #132
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldr r1, _0806830C  @ =0x00080040
	orr r0, r0, r1
	str r0, [r2, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806830C:
	.4byte 0x00080040
	THUMB_FUNC_END sub_08068160

	THUMB_FUNC_START sub_08068310
sub_08068310: @ 0x08068310
	push {r4-r6,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _08068358  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _0806833E
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806835C  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0806833E:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _08068360
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _08068366
	.byte 0x00
	.byte 0x00
_08068358:
	.4byte gUnknown_03001A1C
_0806835C:
	.4byte 0x00007FFF
_08068360:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_08068366:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08068310

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08068394
sub_08068394: @ 0x08068394
	push {r4,r5,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldrh r0, [r5]
	cmp r0, #135
	bne _0806842C
	ldr r0, _080683C0  @ =0x03001B98
	ldrb r1, [r0]
	cmp r1, #0
	bne _08068434
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #88
	bne _080683C4
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _08068488
	.byte 0x00
	.byte 0x00
_080683C0:
	.4byte 0x03001B98
_080683C4:
	cmp r0, #104
	bne _080683D8
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #239
	mov r2, #0
	bl sub_080410B4
	b _080684EE
_080683D8:
	cmp r0, #120
	bgt _080683DE
	b _080684EE
_080683DE:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #181
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08068424  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068428  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl sub_0804A748
	b _080684EE
	.byte 0x00
	.byte 0x00
_08068424:
	.4byte 0x030006E4
_08068428:
	.4byte gUnknown_086660E0
_0806842C:
	ldr r0, _08068464  @ =0x03001B98
	ldrb r4, [r0]
	cmp r4, #0
	beq _08068470
_08068434:
	ldr r0, _08068468  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806846C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #7
	bl sub_0804A748
	b _080684EE
_08068464:
	.4byte 0x03001B98
_08068468:
	.4byte 0x030006E4
_0806846C:
	.4byte gUnknown_086660E0
_08068470:
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #134
	lsl r0, r0, #1
	cmp r1, r0
	bne _08068496
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
_08068488:
	mov r0, #176
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080684EE
_08068496:
	mov r0, #150
	lsl r0, r0, #1
	cmp r1, r0
	ble _080684EE
	add r0, r5, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #239
	mov r2, #0
	bl sub_080410B4
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #181
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080684F8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080684FC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #2
	bl sub_0804A748
_080684EE:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080684F8:
	.4byte 0x030006E4
_080684FC:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068394

	THUMB_FUNC_START sub_08068500
sub_08068500: @ 0x08068500
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068558
	ldr r0, _08068550  @ =0x030006E4
	ldr r2, [r0]
	mov r1, #132
	lsl r1, r1, #1
	add r0, r2, r1
	mov r5, #0
	ldrsh r0, [r0, r5]
	lsl r1, r0, #8
	ldr r0, [r4, #32]
	cmp r0, r1
	blt _0806859A
	str r1, [r4, #32]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068554  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #6
	bl sub_0804A748
	b _0806859A
_08068550:
	.4byte 0x030006E4
_08068554:
	.4byte gUnknown_086660E0
_08068558:
	ldr r0, _080685A4  @ =0x030006E4
	ldr r2, [r0]
	mov r1, #134
	lsl r1, r1, #1
	add r0, r2, r1
	mov r5, #0
	ldrsh r0, [r0, r5]
	lsl r1, r0, #8
	ldr r0, [r4, #32]
	cmp r0, r1
	bgt _0806859A
	str r1, [r4, #32]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080685A8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #6
	bl sub_0804A748
_0806859A:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080685A4:
	.4byte 0x030006E4
_080685A8:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068500

	THUMB_FUNC_START sub_080685AC
sub_080685AC: @ 0x080685AC
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #20
	bgt _080685BE
	b _080686EC
_080685BE:
	cmp r0, #40
	bne _08068650
	ldrh r0, [r4]
	cmp r0, #135
	bne _080685EC
	mov r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #21
	bne _08068684
	ldr r0, _080685E8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _08068608
_080685E8:
	.4byte 0x030006E4
_080685EC:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #21
	bne _08068630
	ldr r0, _08068624  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068628  @ =0x000001AD
_08068608:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806862C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #22
	bl sub_0804A748
	b _080686EC
	.byte 0x00
	.byte 0x00
_08068624:
	.4byte 0x030006E4
_08068628:
	.4byte 0x000001AD
_0806862C:
	.4byte gUnknown_086660E0
_08068630:
	ldr r0, _08068648  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806864C  @ =0x000001AD
	b _0806869A
	.byte 0x00
	.byte 0x00
_08068648:
	.4byte 0x030006E4
_0806864C:
	.4byte 0x000001AD
_08068650:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _080686EC
	ldr r0, _080686B4  @ =0x030019AC
	ldr r2, [r0]
	ldr r0, [r2, #32]
	mov r3, #128
	lsl r3, r3, #4
	add r1, r0, r3
	ldr r0, [r4, #32]
	cmp r0, r1
	bgt _080686EC
	mov r5, #128
	lsl r5, r5, #6
	add r0, r0, r5
	cmp r0, r1
	blt _080686EC
	ldr r0, [r4, #36]
	add r0, r0, r5
	ldr r1, [r2, #36]
	cmp r0, r1
	bge _080686EC
	ldrh r0, [r4]
	cmp r0, #135
	bne _080686C0
_08068684:
	ldr r0, _080686B8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
_0806869A:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080686BC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
	b _080686EC
_080686B4:
	.4byte 0x030019AC
_080686B8:
	.4byte 0x030006E4
_080686BC:
	.4byte gUnknown_086660E0
_080686C0:
	ldr r0, _080686F4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080686F8  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080686FC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
_080686EC:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_080686F4:
	.4byte 0x030006E4
_080686F8:
	.4byte 0x000001AD
_080686FC:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_080685AC

	THUMB_FUNC_START sub_08068700
sub_08068700: @ 0x08068700
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	bne _08068800
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #172
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #128
	lsl r0, r0, #15
	str r0, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068790
	mov r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #22
	bne _08068758
	ldr r0, _08068754  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _080687AC
	.byte 0x00
	.byte 0x00
_08068754:
	.4byte 0x030006E4
_08068758:
	ldr r0, _08068788  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806878C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
	b _08068800
_08068788:
	.4byte 0x030006E4
_0806878C:
	.4byte gUnknown_086660E0
_08068790:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #22
	bne _080687D4
	ldr r0, _080687C8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080687CC  @ =0x000001AD
_080687AC:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080687D0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #23
	bl sub_0804A748
	b _08068800
	.byte 0x00
	.byte 0x00
_080687C8:
	.4byte 0x030006E4
_080687CC:
	.4byte 0x000001AD
_080687D0:
	.4byte gUnknown_086660E0
_080687D4:
	ldr r0, _08068808  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806880C  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068810  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
_08068800:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08068808:
	.4byte 0x030006E4
_0806880C:
	.4byte 0x000001AD
_08068810:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068700

	THUMB_FUNC_START sub_08068814
sub_08068814: @ 0x08068814
	push {r4,r5,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r0, [r5, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0806882C
	b _08068952
_0806882C:
	ldrh r0, [r5]
	cmp r0, #135
	bne _080688A4
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #23
	bne _0806886C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08068868  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	b _080688D6
_08068868:
	.4byte 0x030006E4
_0806886C:
	ldr r0, _0806889C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080688A0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #11
	bl sub_0804A748
	b _08068928
_0806889C:
	.4byte 0x030006E4
_080688A0:
	.4byte gUnknown_086660E0
_080688A4:
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #23
	bne _080688FC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080688F0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r4, _080688F4  @ =0x000001AD
_080688D6:
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080688F8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #16
	bl sub_0804A748
	b _08068928
_080688F0:
	.4byte 0x030006E4
_080688F4:
	.4byte 0x000001AD
_080688F8:
	.4byte gUnknown_086660E0
_080688FC:
	ldr r0, _0806895C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r4, _08068960  @ =0x000001AD
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068964  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #11
	bl sub_0804A748
_08068928:
	ldr r2, _08068968  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #2
	add r4, r0, #0
	and r4, r4, r1
	cmp r4, #0
	bne _0806894C
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0806B2E8
	ldr r0, _0806895C  @ =0x030006E4
	ldr r0, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r0, r1
	strh r4, [r0]
_0806894C:
	mov r0, #160
	lsl r0, r0, #15
	str r0, [r5, #92]
_08068952:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806895C:
	.4byte 0x030006E4
_08068960:
	.4byte 0x000001AD
_08068964:
	.4byte gUnknown_086660E0
_08068968:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_08068814

	THUMB_FUNC_START sub_0806896C
sub_0806896C: @ 0x0806896C
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	beq _0806897E
	b _08068AF0
_0806897E:
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068A30
	ldr r2, _080689D8  @ =0x03001D64
	ldr r1, [r4, #32]
	mov r0, #160
	lsl r0, r0, #6
	sub r0, r0, r1
	asr r0, r0, #6
	mov r3, #0
	strh r0, [r2]
	ldr r2, _080689DC  @ =0x03001D68
	ldr r1, [r4, #36]
	mov r0, #192
	lsl r0, r0, #7
	sub r0, r0, r1
	asr r0, r0, #6
	neg r0, r0
	strh r0, [r2]
	mov r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #32
	bne _080689E4
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080689E0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _08068A82
_080689D8:
	.4byte 0x03001D64
_080689DC:
	.4byte 0x03001D68
_080689E0:
	.4byte 0x030006E4
_080689E4:
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #173
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08068A28  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068A2C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #12
	bl sub_0804A748
	b _08068AF0
_08068A28:
	.4byte 0x030006E4
_08068A2C:
	.4byte gUnknown_086660E0
_08068A30:
	ldr r2, _08068A9C  @ =0x03001D58
	ldr r1, [r4, #32]
	mov r0, #168
	lsl r0, r0, #8
	sub r0, r0, r1
	asr r0, r0, #6
	neg r0, r0
	mov r3, #0
	strh r0, [r2]
	ldr r2, _08068AA0  @ =0x03001D5C
	ldr r1, [r4, #36]
	mov r0, #192
	lsl r0, r0, #7
	sub r0, r0, r1
	asr r0, r0, #6
	neg r0, r0
	strh r0, [r2]
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #32
	bne _08068AB0
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08068AA4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068AA8  @ =0x000001AD
_08068A82:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068AAC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #33
	bl sub_0804A748
	b _08068AF0
_08068A9C:
	.4byte 0x03001D58
_08068AA0:
	.4byte 0x03001D5C
_08068AA4:
	.4byte 0x030006E4
_08068AA8:
	.4byte 0x000001AD
_08068AAC:
	.4byte gUnknown_086660E0
_08068AB0:
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #173
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _08068AF8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068AFC  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068B00  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #13
	bl sub_0804A748
_08068AF0:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08068AF8:
	.4byte 0x030006E4
_08068AFC:
	.4byte 0x000001AD
_08068B00:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806896C

	THUMB_FUNC_START sub_08068B04
sub_08068B04: @ 0x08068B04
	push {r4-r6,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068B98
	ldr r5, [r4, #32]
	ldr r1, _08068B80  @ =0xFFFFD840
	add r0, r5, r1
	cmp r0, #128
	bhi _08068C08
	ldr r3, [r4, #36]
	ldr r0, _08068B84  @ =0x00005FBF
	cmp r3, r0
	ble _08068C08
	add r0, r0, #129
	cmp r3, r0
	bgt _08068C08
	ldr r1, _08068B88  @ =0x03001D64
	ldr r0, _08068B8C  @ =0x030006E4
	ldr r2, [r0]
	mov r6, #132
	lsl r6, r6, #1
	add r0, r2, r6
	mov r6, #0
	ldrsh r0, [r0, r6]
	lsl r0, r0, #8
	sub r0, r0, r5
	asr r0, r0, #5
	strh r0, [r1]
	ldr r1, _08068B90  @ =0x03001D68
	mov r5, #133
	lsl r5, r5, #1
	add r0, r2, r5
	mov r6, #0
	ldrsh r0, [r0, r6]
	lsl r0, r0, #8
	sub r0, r0, r3
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	add r5, r5, #162
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068B94  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #14
	bl sub_0804A748
	b _08068C08
_08068B80:
	.4byte 0xFFFFD840
_08068B84:
	.4byte 0x00005FBF
_08068B88:
	.4byte 0x03001D64
_08068B8C:
	.4byte 0x030006E4
_08068B90:
	.4byte 0x03001D68
_08068B94:
	.4byte gUnknown_086660E0
_08068B98:
	ldr r5, [r4, #32]
	ldr r6, _08068C10  @ =0xFFFF5840
	add r0, r5, r6
	cmp r0, #128
	bhi _08068C08
	ldr r3, [r4, #36]
	ldr r0, _08068C14  @ =0x00005FBF
	cmp r3, r0
	ble _08068C08
	add r0, r0, #129
	cmp r3, r0
	bgt _08068C08
	ldr r1, _08068C18  @ =0x03001D58
	ldr r0, _08068C1C  @ =0x030006E4
	ldr r2, [r0]
	mov r6, #134
	lsl r6, r6, #1
	add r0, r2, r6
	mov r6, #0
	ldrsh r0, [r0, r6]
	lsl r0, r0, #8
	sub r0, r0, r5
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r1]
	ldr r1, _08068C20  @ =0x03001D5C
	mov r5, #135
	lsl r5, r5, #1
	add r0, r2, r5
	mov r6, #0
	ldrsh r0, [r0, r6]
	lsl r0, r0, #8
	sub r0, r0, r3
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r1]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	add r5, r5, #159
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068C24  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #15
	bl sub_0804A748
_08068C08:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_08068C10:
	.4byte 0xFFFF5840
_08068C14:
	.4byte 0x00005FBF
_08068C18:
	.4byte 0x03001D58
_08068C1C:
	.4byte 0x030006E4
_08068C20:
	.4byte 0x03001D5C
_08068C24:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068B04

	THUMB_FUNC_START sub_08068C28
sub_08068C28: @ 0x08068C28
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068CA8
	ldr r0, _08068CA0  @ =0x030006E4
	ldr r0, [r0]
	mov r12, r0
	mov r0, #132
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r2, r0, #8
	add r0, r2, #0
	sub r0, r0, #32
	ldr r1, [r4, #32]
	cmp r1, r0
	blt _08068D10
	add r0, r0, #64
	cmp r1, r0
	bgt _08068D10
	mov r0, #133
	lsl r0, r0, #1
	add r0, r0, r12
	mov r2, #0
	ldrsh r0, [r0, r2]
	lsl r2, r0, #8
	add r0, r2, #0
	sub r0, r0, #32
	ldr r1, [r4, #36]
	cmp r1, r0
	blt _08068D10
	add r0, r0, #64
	cmp r1, r0
	bgt _08068D10
	mov r0, r12
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r1, #214
	lsl r1, r1, #1
	add r1, r1, r12
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068CA4  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
	b _08068D10
_08068CA0:
	.4byte 0x030006E4
_08068CA4:
	.4byte gUnknown_086660E0
_08068CA8:
	ldr r0, _08068D18  @ =0x030006E4
	ldr r0, [r0]
	mov r12, r0
	mov r0, #134
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r2, r0, #8
	add r0, r2, #0
	sub r0, r0, #32
	ldr r1, [r4, #32]
	cmp r1, r0
	blt _08068D10
	add r0, r0, #64
	cmp r1, r0
	bgt _08068D10
	mov r0, #135
	lsl r0, r0, #1
	add r0, r0, r12
	mov r2, #0
	ldrsh r0, [r0, r2]
	lsl r2, r0, #8
	add r0, r2, #0
	sub r0, r0, #32
	ldr r1, [r4, #36]
	cmp r1, r0
	blt _08068D10
	add r0, r0, #64
	cmp r1, r0
	bgt _08068D10
	mov r0, r12
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08068D1C  @ =0x000001AD
	add r1, r1, r12
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068D20  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_08068D10:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08068D18:
	.4byte 0x030006E4
_08068D1C:
	.4byte 0x000001AD
_08068D20:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068C28

	THUMB_FUNC_START sub_08068D24
sub_08068D24: @ 0x08068D24
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #20
	bne _08068D3E
	mov r5, #4
	ldrsh r0, [r4, r5]
	ldrh r1, [r4, #4]
	cmp r0, #26
	bne _08068D4C
_08068D3E:
	cmp r2, #30
	bne _08068E20
	mov r1, #4
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #4]
	cmp r0, #26
	bne _08068E20
_08068D4C:
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068DB0
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #26
	bne _08068D78
	ldr r0, _08068D74  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _08068DCC
	.byte 0x00
	.byte 0x00
_08068D74:
	.4byte 0x030006E4
_08068D78:
	ldr r0, _08068DA8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068DAC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #17
	bl sub_0804A748
	b _08068E20
_08068DA8:
	.4byte 0x030006E4
_08068DAC:
	.4byte gUnknown_086660E0
_08068DB0:
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, #26
	bne _08068DF4
	ldr r0, _08068DE8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068DEC  @ =0x000001AD
_08068DCC:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068DF0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #27
	bl sub_0804A748
	b _08068E20
	.byte 0x00
	.byte 0x00
_08068DE8:
	.4byte 0x030006E4
_08068DEC:
	.4byte 0x000001AD
_08068DF0:
	.4byte gUnknown_086660E0
_08068DF4:
	ldr r0, _08068E28  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068E2C  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068E30  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #17
	bl sub_0804A748
_08068E20:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08068E28:
	.4byte 0x030006E4
_08068E2C:
	.4byte 0x000001AD
_08068E30:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068D24

	THUMB_FUNC_START sub_08068E34
sub_08068E34: @ 0x08068E34
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _08068F2C
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #175
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrh r0, [r4]
	cmp r0, #135
	bne _08068EBC
	mov r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #30
	bne _08068E84
	ldr r0, _08068E80  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _08068ED8
_08068E80:
	.4byte 0x030006E4
_08068E84:
	ldr r0, _08068EB4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068EB8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #18
	bl sub_0804A748
	b _08068F2C
_08068EB4:
	.4byte 0x030006E4
_08068EB8:
	.4byte gUnknown_086660E0
_08068EBC:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #30
	bne _08068F00
	ldr r0, _08068EF4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068EF8  @ =0x000001AD
_08068ED8:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068EFC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #31
	bl sub_0804A748
	b _08068F2C
	.byte 0x00
	.byte 0x00
_08068EF4:
	.4byte 0x030006E4
_08068EF8:
	.4byte 0x000001AD
_08068EFC:
	.4byte gUnknown_086660E0
_08068F00:
	ldr r0, _08068F34  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08068F38  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08068F3C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #18
	bl sub_0804A748
_08068F2C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08068F34:
	.4byte 0x030006E4
_08068F38:
	.4byte 0x000001AD
_08068F3C:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068E34

	THUMB_FUNC_START sub_08068F40
sub_08068F40: @ 0x08068F40
	push {r4-r7,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069024
	ldr r2, [r4, #32]
	asr r3, r2, #8
	ldr r1, _08068FE0  @ =0x030006E4
	ldr r0, [r1]
	ldr r5, [r0, #12]
	ldr r0, [r5, #32]
	asr r0, r0, #8
	sub r0, r0, #40
	add r6, r2, #0
	add r7, r1, #0
	cmp r3, r0
	bge _08068F66
	b _080690C0
_08068F66:
	ldr r0, _08068FE4  @ =0x030019AC
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _08068FAC
	ldr r0, [r2, #120]
	ldr r1, _08068FE8  @ =0xFFFFFE00
	add r0, r0, r1
	ldr r1, [r4, #112]
	cmp r1, r0
	bge _08068FAC
	ldr r1, [r4, #120]
	ldr r0, [r2, #112]
	cmp r1, r0
	ble _08068FAC
	ldr r1, [r4, #108]
	ldr r0, [r2, #108]
	cmp r1, r0
	bgt _08068FAC
	ldr r1, [r5, #116]
	ldr r0, [r2, #116]
	cmp r1, r0
	blt _08068FAC
	ldr r0, _08068FEC  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #15
	orr r1, r1, r2
	str r1, [r0]
_08068FAC:
	asr r1, r6, #8
	ldr r7, [r7]
	mov r12, r7
	mov r2, r12
	ldr r0, [r2, #12]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	sub r0, r0, #32
	cmp r1, r0
	bge _08068FC2
	b _080690C0
_08068FC2:
	mov r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #31
	bne _08068FF0
	mov r0, r12
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r1, #214
	lsl r1, r1, #1
	add r1, r1, r12
	b _08069072
_08068FE0:
	.4byte 0x030006E4
_08068FE4:
	.4byte 0x030019AC
_08068FE8:
	.4byte 0xFFFFFE00
_08068FEC:
	.4byte gUnknown_030019A0
_08068FF0:
	mov r0, r12
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r1, #214
	lsl r1, r1, #1
	add r1, r1, r12
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069020  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	bl sub_0804A748
	b _080690C0
	.byte 0x00
	.byte 0x00
_08069020:
	.4byte gUnknown_086660E0
_08069024:
	ldr r0, _0806908C  @ =0x030006E4
	ldr r2, [r0]
	ldr r3, [r2, #8]
	ldr r1, [r3, #32]
	asr r1, r1, #8
	ldr r0, [r4, #32]
	asr r0, r0, #8
	sub r0, r0, #40
	cmp r1, r0
	blt _080690C0
	mov r5, #4
	ldrsh r0, [r3, r5]
	cmp r0, #18
	beq _080690C0
	cmp r0, #16
	beq _080690C0
	cmp r0, #17
	beq _080690C0
	cmp r0, #28
	beq _080690C0
	cmp r0, #29
	beq _080690C0
	cmp r0, #30
	beq _080690C0
	cmp r0, #31
	beq _080690C0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #31
	bne _08069098
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069090  @ =0x000001AD
	add r1, r2, r5
_08069072:
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069094  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #32
	bl sub_0804A748
	b _080690C0
	.byte 0x00
	.byte 0x00
_0806908C:
	.4byte 0x030006E4
_08069090:
	.4byte 0x000001AD
_08069094:
	.4byte gUnknown_086660E0
_08069098:
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080690C8  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080690CC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	bl sub_0804A748
_080690C0:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_080690C8:
	.4byte 0x000001AD
_080690CC:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08068F40

	THUMB_FUNC_START sub_080690D0
sub_080690D0: @ 0x080690D0
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _0806919C
	cmp r0, #20
	bne _08069108
	ldrh r0, [r4]
	cmp r0, #135
	beq _08069134
	ldr r0, _08069100  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069104  @ =0x000001AD
	b _0806914A
_08069100:
	.4byte 0x030006E4
_08069104:
	.4byte 0x000001AD
_08069108:
	ldr r0, _08069164  @ =0x030019AC
	ldr r2, [r0]
	ldr r0, [r2, #32]
	mov r3, #128
	lsl r3, r3, #4
	add r1, r0, r3
	ldr r0, [r4, #32]
	cmp r0, r1
	bgt _0806919C
	mov r5, #128
	lsl r5, r5, #6
	add r0, r0, r5
	cmp r0, r1
	blt _0806919C
	ldr r0, [r4, #36]
	add r0, r0, r5
	ldr r1, [r2, #36]
	cmp r0, r1
	bge _0806919C
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069170
_08069134:
	ldr r0, _08069168  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
_0806914A:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806916C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
	b _0806919C
_08069164:
	.4byte 0x030019AC
_08069168:
	.4byte 0x030006E4
_0806916C:
	.4byte gUnknown_086660E0
_08069170:
	ldr r0, _080691A4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080691A8  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080691AC  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
_0806919C:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_080691A4:
	.4byte 0x030006E4
_080691A8:
	.4byte 0x000001AD
_080691AC:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_080690D0

	THUMB_FUNC_START sub_080691B0
sub_080691B0: @ 0x080691B0
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	bne _08069248
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #172
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #128
	lsl r0, r0, #15
	str r0, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806921C
	ldr r0, _08069214  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069218  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
	b _08069248
	.byte 0x00
	.byte 0x00
_08069214:
	.4byte 0x030006E4
_08069218:
	.4byte gUnknown_086660E0
_0806921C:
	ldr r0, _08069250  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069254  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069258  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
_08069248:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08069250:
	.4byte 0x030006E4
_08069254:
	.4byte 0x000001AD
_08069258:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_080691B0

	THUMB_FUNC_START sub_0806925C
sub_0806925C: @ 0x0806925C
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #20
	ble _080692EC
	ldr r0, _080692B8  @ =0x030006E4
	ldr r2, [r0]
	mov r5, #133
	lsl r5, r5, #1
	add r0, r2, r5
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r5, _080692BC  @ =0xFFFFF000
	add r0, r0, r5
	ldr r1, [r4, #36]
	cmp r1, r0
	blt _080692EC
	ldrh r0, [r4]
	cmp r0, #135
	bne _080692C4
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080692C0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #25
	bl sub_0804A748
	b _080692EC
_080692B8:
	.4byte 0x030006E4
_080692BC:
	.4byte 0xFFFFF000
_080692C0:
	.4byte gUnknown_086660E0
_080692C4:
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080692F4  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080692F8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #25
	bl sub_0804A748
_080692EC:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_080692F4:
	.4byte 0x000001AD
_080692F8:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806925C

	THUMB_FUNC_START sub_080692FC
sub_080692FC: @ 0x080692FC
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	bne _08069394
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #128
	lsl r0, r0, #15
	str r0, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069368
	ldr r0, _08069360  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069364  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #26
	bl sub_0804A748
	b _08069394
	.byte 0x00
	.byte 0x00
_08069360:
	.4byte 0x030006E4
_08069364:
	.4byte gUnknown_086660E0
_08069368:
	ldr r0, _0806939C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080693A0  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080693A4  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #26
	bl sub_0804A748
_08069394:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0806939C:
	.4byte 0x030006E4
_080693A0:
	.4byte 0x000001AD
_080693A4:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_080692FC

	THUMB_FUNC_START sub_080693A8
sub_080693A8: @ 0x080693A8
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #29
	bne _08069428
	ldr r0, _080693EC  @ =0x030006E4
	ldr r2, [r0]
	mov r5, #133
	lsl r5, r5, #1
	add r0, r2, r5
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r5, _080693F0  @ =0xFFFFE000
	add r0, r0, r5
	ldr r1, [r4, #36]
	cmp r1, r0
	bgt _080694A8
	ldrh r0, [r4]
	cmp r0, #135
	bne _080693F4
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _08069404
	.byte 0x00
	.byte 0x00
_080693EC:
	.4byte 0x030006E4
_080693F0:
	.4byte 0xFFFFE000
_080693F4:
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069420  @ =0x000001AD
_08069404:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069424  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #30
	bl sub_0804A748
	b _080694A8
	.byte 0x00
	.byte 0x00
_08069420:
	.4byte 0x000001AD
_08069424:
	.4byte gUnknown_086660E0
_08069428:
	ldr r0, _08069474  @ =0x030006E4
	ldr r2, [r0]
	mov r1, #133
	lsl r1, r1, #1
	add r0, r2, r1
	mov r5, #0
	ldrsh r0, [r0, r5]
	lsl r0, r0, #8
	ldr r1, _08069478  @ =0xFFFFF000
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r1, r0
	bgt _080694A8
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069480
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806947C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #17
	bl sub_0804A748
	b _080694A8
_08069474:
	.4byte 0x030006E4
_08069478:
	.4byte 0xFFFFF000
_0806947C:
	.4byte gUnknown_086660E0
_08069480:
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080694B0  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080694B4  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #17
	bl sub_0804A748
_080694A8:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_080694B0:
	.4byte 0x000001AD
_080694B4:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_080693A8

	THUMB_FUNC_START sub_080694B8
sub_080694B8: @ 0x080694B8
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #59
	ble _08069548
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806951C
	ldr r0, _08069514  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069518  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #34
	bl sub_0804A748
	b _08069548
_08069514:
	.4byte 0x030006E4
_08069518:
	.4byte gUnknown_086660E0
_0806951C:
	ldr r0, _08069550  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069554  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069558  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #34
	bl sub_0804A748
_08069548:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08069550:
	.4byte 0x030006E4
_08069554:
	.4byte 0x000001AD
_08069558:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_080694B8

	THUMB_FUNC_START sub_0806955C
sub_0806955C: @ 0x0806955C
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r5, _080695C4  @ =0x030006E4
	ldr r0, [r5]
	mov r1, #133
	lsl r1, r1, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #36]
	cmp r1, r0
	blt _080695F6
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #175
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrh r0, [r4]
	cmp r0, #135
	bne _080695CC
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080695C8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #18
	bl sub_0804A748
	b _080695F6
	.byte 0x00
	.byte 0x00
_080695C4:
	.4byte 0x030006E4
_080695C8:
	.4byte gUnknown_086660E0
_080695CC:
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069600  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069604  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #18
	bl sub_0804A748
_080695F6:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08069600:
	.4byte 0x000001AD
_08069604:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806955C

	THUMB_FUNC_START sub_08069608
sub_08069608: @ 0x08069608
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	bne _080696A0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #172
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #128
	lsl r0, r0, #15
	str r0, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069674
	ldr r0, _0806966C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069670  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #37
	bl sub_0804A748
	b _080696A0
	.byte 0x00
	.byte 0x00
_0806966C:
	.4byte 0x030006E4
_08069670:
	.4byte gUnknown_086660E0
_08069674:
	ldr r0, _080696A8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080696AC  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080696B0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #37
	bl sub_0804A748
_080696A0:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_080696A8:
	.4byte 0x030006E4
_080696AC:
	.4byte 0x000001AD
_080696B0:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08069608

	THUMB_FUNC_START sub_080696B4
sub_080696B4: @ 0x080696B4
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldr r0, [r5, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806975E
	ldrh r0, [r5]
	cmp r0, #135
	bne _08069708
	ldr r0, _08069700  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069704  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #38
	bl sub_0804A748
	b _08069734
_08069700:
	.4byte 0x030006E4
_08069704:
	.4byte gUnknown_086660E0
_08069708:
	ldr r0, _08069768  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r4, _0806976C  @ =0x000001AD
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069770  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #38
	bl sub_0804A748
_08069734:
	ldr r2, _08069774  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #2
	add r4, r0, #0
	and r4, r4, r1
	cmp r4, #0
	bne _08069758
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0806C818
	ldr r0, _08069768  @ =0x030006E4
	ldr r0, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r0, r1
	strh r4, [r0]
_08069758:
	mov r0, #160
	lsl r0, r0, #15
	str r0, [r5, #92]
_0806975E:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08069768:
	.4byte 0x030006E4
_0806976C:
	.4byte 0x000001AD
_08069770:
	.4byte gUnknown_086660E0
_08069774:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_080696B4

	THUMB_FUNC_START sub_08069778
sub_08069778: @ 0x08069778
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069850
	ldr r1, _080697F0  @ =gUnknown_0866587C
	ldr r5, _080697F4  @ =0x030006E4
	ldr r2, [r5]
	mov r3, #217
	lsl r3, r3, #1
	add r0, r2, r3
	ldrb r0, [r0]
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	beq _080697FC
	add r0, r4, #0
	add r0, r0, #84
	mov r5, #0
	ldrsh r1, [r0, r5]
	mov r0, #150
	lsl r0, r0, #1
	cmp r1, r0
	beq _080697C2
	ldr r0, _080697F8  @ =0x030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #205
	lsl r0, r0, #1
	cmp r1, r0
	beq _080697C2
	add r0, r0, #3
	cmp r1, r0
	beq _080697C2
	b _0806992E
_080697C2:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080697F4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	b _080698B6
_080697F0:
	.4byte gUnknown_0866587C
_080697F4:
	.4byte 0x030006E4
_080697F8:
	.4byte 0x030019AC
_080697FC:
	ldr r0, [r2, #12]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #42
	beq _08069808
	b _0806992E
_08069808:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806984C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #39
	bl sub_0804A748
	b _0806992E
	.byte 0x00
	.byte 0x00
_0806984C:
	.4byte gUnknown_086660E0
_08069850:
	ldr r0, _080698D0  @ =gUnknown_0866587C
	ldr r5, _080698D4  @ =0x030006E4
	ldr r2, [r5]
	mov r3, #217
	lsl r3, r3, #1
	add r1, r2, r3
	ldrb r1, [r1]
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _080698E4
	add r0, r4, #0
	add r0, r0, #84
	mov r5, #0
	ldrsh r1, [r0, r5]
	mov r0, #150
	lsl r0, r0, #1
	cmp r1, r0
	beq _0806988C
	ldr r0, _080698D8  @ =0x030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #205
	lsl r0, r0, #1
	cmp r1, r0
	beq _0806988C
	add r0, r0, #3
	cmp r1, r0
	bne _0806992E
_0806988C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _080698D4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080698DC  @ =0x000001AD
_080698B6:
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080698E0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #42
	bl sub_0804A748
	b _0806992E
_080698D0:
	.4byte gUnknown_0866587C
_080698D4:
	.4byte 0x030006E4
_080698D8:
	.4byte 0x030019AC
_080698DC:
	.4byte 0x000001AD
_080698E0:
	.4byte gUnknown_086660E0
_080698E4:
	ldr r0, [r2, #8]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #42
	bne _0806992E
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069938  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806993C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #39
	bl sub_0804A748
_0806992E:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08069938:
	.4byte 0x000001AD
_0806993C:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08069778

	THUMB_FUNC_START sub_08069940
sub_08069940: @ 0x08069940
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #100
	bne _080699D8
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #172
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #128
	lsl r0, r0, #15
	str r0, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #135
	bne _080699AC
	ldr r0, _080699A4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080699A8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #41
	bl sub_0804A748
	b _080699D8
	.byte 0x00
	.byte 0x00
_080699A4:
	.4byte 0x030006E4
_080699A8:
	.4byte gUnknown_086660E0
_080699AC:
	ldr r0, _080699E0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _080699E4  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _080699E8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #41
	bl sub_0804A748
_080699D8:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_080699E0:
	.4byte 0x030006E4
_080699E4:
	.4byte 0x000001AD
_080699E8:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08069940

	THUMB_FUNC_START sub_080699EC
sub_080699EC: @ 0x080699EC
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldr r0, [r5, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08069A96
	ldrh r0, [r5]
	cmp r0, #135
	bne _08069A40
	ldr r0, _08069A38  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069A3C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #45
	bl sub_0804A748
	b _08069A6C
_08069A38:
	.4byte 0x030006E4
_08069A3C:
	.4byte gUnknown_086660E0
_08069A40:
	ldr r0, _08069AA0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r4, _08069AA4  @ =0x000001AD
	add r1, r2, r4
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069AA8  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #45
	bl sub_0804A748
_08069A6C:
	ldr r2, _08069AAC  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #2
	add r4, r0, #0
	and r4, r4, r1
	cmp r4, #0
	bne _08069A90
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0806B2E8
	ldr r0, _08069AA0  @ =0x030006E4
	ldr r0, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r0, r1
	strh r4, [r0]
_08069A90:
	mov r0, #160
	lsl r0, r0, #15
	str r0, [r5, #92]
_08069A96:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08069AA0:
	.4byte 0x030006E4
_08069AA4:
	.4byte 0x000001AD
_08069AA8:
	.4byte gUnknown_086660E0
_08069AAC:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_080699EC

	THUMB_FUNC_START sub_08069AB0
sub_08069AB0: @ 0x08069AB0
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	bne _08069B98
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069B38
	ldr r2, _08069B28  @ =0x03001D64
	ldr r0, _08069B2C  @ =0x030006E4
	ldr r0, [r0]
	mov r12, r0
	mov r0, #132
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	strh r0, [r2]
	ldr r2, _08069B30  @ =0x03001D68
	mov r0, #133
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	mov r0, r12
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r1, #214
	lsl r1, r1, #1
	add r1, r1, r12
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069B34  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #14
	bl sub_0804A748
	b _08069B98
_08069B28:
	.4byte 0x03001D64
_08069B2C:
	.4byte 0x030006E4
_08069B30:
	.4byte 0x03001D68
_08069B34:
	.4byte gUnknown_086660E0
_08069B38:
	ldr r2, _08069BA0  @ =0x03001D58
	ldr r0, _08069BA4  @ =0x030006E4
	ldr r0, [r0]
	mov r12, r0
	mov r0, #134
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	ldr r2, _08069BA8  @ =0x03001D5C
	mov r0, #135
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	mov r0, r12
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r1, _08069BAC  @ =0x000001AD
	add r1, r1, r12
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069BB0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #15
	bl sub_0804A748
_08069B98:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08069BA0:
	.4byte 0x03001D58
_08069BA4:
	.4byte 0x030006E4
_08069BA8:
	.4byte 0x03001D5C
_08069BAC:
	.4byte 0x000001AD
_08069BB0:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08069AB0

	THUMB_FUNC_START sub_08069BB4
sub_08069BB4: @ 0x08069BB4
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	bne _08069C44
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #175
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069C18
	ldr r0, _08069C10  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069C14  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #44
	bl sub_0804A748
	b _08069C44
_08069C10:
	.4byte 0x030006E4
_08069C14:
	.4byte gUnknown_086660E0
_08069C18:
	ldr r0, _08069C4C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _08069C50  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069C54  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #44
	bl sub_0804A748
_08069C44:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08069C4C:
	.4byte 0x030006E4
_08069C50:
	.4byte 0x000001AD
_08069C54:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08069BB4

	THUMB_FUNC_START sub_08069C58
sub_08069C58: @ 0x08069C58
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #135
	bne _08069D18
	ldr r0, [r4, #108]
	cmp r0, #0
	bge _08069C98
	ldr r0, _08069CDC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069CE0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #45
	bl sub_0804A748
_08069C98:
	ldr r0, _08069CE4  @ =0x030019AC
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _08069CB0
	b _08069DCC
_08069CB0:
	ldr r0, [r2, #120]
	ldr r1, _08069CE8  @ =0xFFFFFE00
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r1, r0
	blt _08069CBE
	b _08069DCC
_08069CBE:
	ldr r1, [r4, #120]
	ldr r0, [r2, #112]
	cmp r1, r0
	bgt _08069CC8
	b _08069DCC
_08069CC8:
	ldr r5, [r2, #108]
	cmp r5, #0
	bge _08069CF0
	ldr r0, _08069CEC  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #15
	orr r1, r1, r2
	str r1, [r0]
	b _08069DCC
_08069CDC:
	.4byte 0x030006E4
_08069CE0:
	.4byte gUnknown_086660E0
_08069CE4:
	.4byte 0x030019AC
_08069CE8:
	.4byte 0xFFFFFE00
_08069CEC:
	.4byte gUnknown_030019A0
_08069CF0:
	ldr r3, [r4, #108]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r3, r1
	ldr r1, [r2, #116]
	cmp r0, r1
	bgt _08069DCC
	ldr r0, [r4, #116]
	ldr r4, _08069D14  @ =0xFFFFFE00
	add r0, r0, r4
	cmp r0, r5
	ble _08069DCC
	sub r1, r3, r1
	ldr r0, [r2, #32]
	add r0, r0, r1
	str r0, [r2, #32]
	b _08069DCC
	.byte 0x00
	.byte 0x00
_08069D14:
	.4byte 0xFFFFFE00
_08069D18:
	ldr r1, [r4, #116]
	ldr r0, _08069D94  @ =0x0000EFFF
	cmp r1, r0
	ble _08069D4E
	ldr r0, _08069D98  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069D9C  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #45
	bl sub_0804A748
_08069D4E:
	ldr r0, _08069DA0  @ =0x030019AC
	ldr r3, [r0]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _08069DCC
	ldr r0, [r3, #120]
	ldr r1, _08069DA4  @ =0xFFFFFE00
	add r0, r0, r1
	ldr r1, [r4, #112]
	cmp r1, r0
	bge _08069DCC
	ldr r1, [r4, #120]
	ldr r0, [r3, #112]
	cmp r1, r0
	ble _08069DCC
	ldr r1, [r3, #116]
	mov r0, #240
	lsl r0, r0, #8
	cmp r1, r0
	ble _08069DAC
	ldr r2, _08069DA8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #208
	lsl r0, r0, #8
	b _08069DCA
_08069D94:
	.4byte 0x0000EFFF
_08069D98:
	.4byte 0x030006E4
_08069D9C:
	.4byte gUnknown_086660E0
_08069DA0:
	.4byte 0x030019AC
_08069DA4:
	.4byte 0xFFFFFE00
_08069DA8:
	.4byte gUnknown_030019A0
_08069DAC:
	ldr r0, [r4, #108]
	mov r2, #128
	lsl r2, r2, #2
	add r0, r0, r2
	cmp r0, r1
	bgt _08069DCC
	ldr r2, [r4, #116]
	ldr r4, _08069DD4  @ =0xFFFFFE00
	add r0, r2, r4
	ldr r1, [r3, #108]
	cmp r0, r1
	ble _08069DCC
	sub r1, r2, r1
	ldr r0, [r3, #32]
	add r0, r0, r1
_08069DCA:
	str r0, [r3, #32]
_08069DCC:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08069DD4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08069C58

	THUMB_FUNC_START sub_08069DD8
sub_08069DD8: @ 0x08069DD8
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	cmp r0, #135
	bne _08069E74
	ldr r0, _08069E60  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _08069EEC
	ldr r2, _08069E64  @ =0x030006E4
	ldr r1, [r2]
	mov r4, #214
	lsl r4, r4, #1
	add r1, r1, r4
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r3, _08069E68  @ =0x03001D64
	ldr r2, [r2]
	mov r12, r2
	mov r0, #132
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r5, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	strh r0, [r3]
	ldr r2, _08069E6C  @ =0x03001D68
	mov r0, #133
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r5, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	mov r0, r12
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	add r4, r4, r12
	ldrb r2, [r4]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069E70  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #14
	bl sub_0804A748
	b _08069EEC
	.byte 0x00
	.byte 0x00
_08069E60:
	.4byte gUnknown_03001A1C
_08069E64:
	.4byte 0x030006E4
_08069E68:
	.4byte 0x03001D64
_08069E6C:
	.4byte 0x03001D68
_08069E70:
	.4byte gUnknown_086660E0
_08069E74:
	ldr r0, _08069EF4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _08069EEC
	ldr r2, _08069EF8  @ =0x030006E4
	ldr r1, [r2]
	ldr r4, _08069EFC  @ =0x000001AD
	add r1, r1, r4
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r3, _08069F00  @ =0x03001D58
	ldr r2, [r2]
	mov r12, r2
	mov r0, #134
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r5, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r3]
	ldr r2, _08069F04  @ =0x03001D5C
	mov r0, #135
	lsl r0, r0, #1
	add r0, r0, r12
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	ldr r1, [r5, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	mov r0, r12
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	mov r2, r12
	ldrb r1, [r2, #17]
	str r1, [sp]
	add r4, r4, r12
	ldrb r2, [r4]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _08069F08  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #15
	bl sub_0804A748
_08069EEC:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08069EF4:
	.4byte gUnknown_03001A1C
_08069EF8:
	.4byte 0x030006E4
_08069EFC:
	.4byte 0x000001AD
_08069F00:
	.4byte 0x03001D58
_08069F04:
	.4byte 0x03001D5C
_08069F08:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_08069DD8

	THUMB_FUNC_START sub_08069F0C
sub_08069F0C: @ 0x08069F0C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _08069F48  @ =0x0806A0FD
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _08069F4C  @ =0x0806C849
	str r0, [r1]
	strh r2, [r7]
	ldr r1, _08069F50  @ =0x030006E4
	ldr r0, [r1]
	ldr r0, [r0]
	mov r2, #4
	ldrsh r0, [r0, r2]
	add r6, r1, #0
	cmp r0, #5
	ble _08069F54
	mov r0, #14
	b _08069F5E
	.byte 0x00
	.byte 0x00
_08069F48:
	.4byte sub_0806A0FC
_08069F4C:
	.4byte sub_0806C848
_08069F50:
	.4byte 0x030006E4
_08069F54:
	cmp r0, #2
	bgt _08069F5C
	mov r0, #0
	b _08069F5E
_08069F5C:
	mov r0, #12
_08069F5E:
	strh r0, [r7, #4]
	mov r0, #0
	mov r9, r0
	mov r0, #17
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806A040  @ =gUnknown_08668D38
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r8, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldr r5, [r6]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r10
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5, #18]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0806A044  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, r9
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r6]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r0, r9
	strb r0, [r7, #10]
	ldr r0, [r6]
	add r0, r0, #104
	mov r1, r9
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #22]
	add r0, r0, #105
	strb r1, [r0]
	ldr r0, [r6]
	ldrb r1, [r3, #23]
	add r0, r0, #106
	strb r1, [r0]
	mov r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #12
	bne _0806A048
	ldr r1, [r6]
	mov r0, #192
	lsl r0, r0, #15
	b _0806A04E
_0806A040:
	.4byte gUnknown_08668D38
_0806A044:
	.4byte 0xFFFFFE00
_0806A048:
	ldr r1, [r6]
	mov r0, #224
	lsl r0, r0, #15
_0806A04E:
	str r0, [r1, #112]
	ldr r1, [r6]
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r1, #116]
	add r1, r1, #123
	mov r3, #0
	mov r2, #2
	strb r2, [r1]
	ldr r0, [r6]
	add r0, r0, #121
	strb r2, [r0]
	ldr r0, [r6]
	add r0, r0, #122
	strb r2, [r0]
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #136
	str r3, [r0]
	mov r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #12
	beq _0806A08A
	cmp r0, #0
	bne _0806A0A4
	ldr r1, [r7, #32]
	mov r0, #240
	lsl r0, r0, #7
	cmp r1, r0
	ble _0806A0A4
_0806A08A:
	add r0, r2, #0
	add r0, r0, #120
	strb r3, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r3, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	b _0806A0BC
_0806A0A4:
	ldr r0, [r6]
	add r0, r0, #120
	mov r1, #1
	strb r1, [r0]
	add r0, r7, #0
	add r0, r0, #64
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r0, [r2]
	mov r1, #16
	orr r0, r0, r1
_0806A0BC:
	strb r0, [r2]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r2, #4
	ldrsh r1, [r7, r2]
	cmp r1, #12
	bne _0806A0D8
	mov r0, #192
	lsl r0, r0, #15
	str r0, [r7, #92]
	b _0806A0E8
_0806A0D8:
	mov r0, #224
	lsl r0, r0, #15
	str r0, [r7, #92]
	cmp r1, #14
	bne _0806A0E8
	ldr r0, [r7, #32]
	neg r0, r0
	str r0, [r7, #32]
_0806A0E8:
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r7, #96]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08069F0C

	THUMB_FUNC_START sub_0806A0FC
sub_0806A0FC: @ 0x0806A0FC
	push {r4-r6,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _0806A144  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _0806A12A
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806A148  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0806A12A:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _0806A14C
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _0806A152
	.byte 0x00
	.byte 0x00
_0806A144:
	.4byte gUnknown_03001A1C
_0806A148:
	.4byte 0x00007FFF
_0806A14C:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0806A152:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806A0FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806A180
sub_0806A180: @ 0x0806A180
	push {lr}
	sub sp, sp, #8
	mov r12, r0
	ldr r1, [r0, #32]
	mov r0, #144
	lsl r0, r0, #6
	cmp r1, r0
	bne _0806A19C
	mov r0, r12
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #94
	bgt _0806A200
_0806A19C:
	mov r0, #176
	lsl r0, r0, #6
	cmp r1, r0
	bne _0806A1B0
	mov r0, r12
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #99
	bgt _0806A200
_0806A1B0:
	mov r0, #208
	lsl r0, r0, #6
	cmp r1, r0
	bne _0806A1C4
	mov r0, r12
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #119
	bgt _0806A200
_0806A1C4:
	mov r0, #172
	lsl r0, r0, #8
	cmp r1, r0
	bne _0806A1D8
	mov r0, r12
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #106
	bgt _0806A200
_0806A1D8:
	mov r0, #180
	lsl r0, r0, #8
	cmp r1, r0
	bne _0806A1EC
	mov r0, r12
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #114
	bgt _0806A200
_0806A1EC:
	mov r0, #188
	lsl r0, r0, #8
	cmp r1, r0
	bne _0806A21E
	mov r0, r12
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #101
	ble _0806A21E
_0806A200:
	ldr r0, _0806A224  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	mov r1, r12
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806A228  @ =gUnknown_08668D38
	str r1, [sp, #4]
	mov r1, r12
	mov r2, #1
	bl sub_0804A748
_0806A21E:
	add sp, sp, #8
	pop {r0}
	bx r0
_0806A224:
	.4byte 0x030006E4
_0806A228:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806A180

	THUMB_FUNC_START sub_0806A22C
sub_0806A22C: @ 0x0806A22C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r6, [sp, #32]
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0806A394  @ =0x0806A3A9
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806A398  @ =0x0806CCF1
	str r0, [r1]
	ldr r5, _0806A39C  @ =0x030006E4
	ldr r0, [r5]
	mov r9, r0
	str r7, [r0]
	mov r1, #0
	mov r10, r1
	strh r2, [r7]
	mov r2, r10
	strh r2, [r7, #4]
	mov r0, #12
	strh r0, [r7, #6]
	mov r1, #4
	ldrsh r0, [r7, r1]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806A3A0  @ =gUnknown_086691BC
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	mov r2, #124
	add r2, r2, r7
	mov r8, r2
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	ldrb r2, [r6, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	ldrh r0, [r6, #6]
	and r1, r1, r0
	mov r0, r9
	strb r1, [r0, #16]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0806A3A4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	mov r1, r8
	strb r0, [r1]
	mov r2, #0
	strb r2, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	add r2, r7, #0
	add r2, r2, #132
	ldr r1, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, #24
	ldr r1, [r5]
	add r1, r1, r0
	str r1, [r2]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	add r1, r7, #0
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r0, #0
	strb r0, [r7, #10]
	ldr r0, [r5]
	mov r1, #0
	strb r1, [r0, #24]
	ldr r1, [r5]
	ldrb r0, [r3, #22]
	strb r0, [r1, #25]
	ldr r1, [r5]
	ldrb r0, [r3, #23]
	strb r0, [r1, #26]
	ldr r0, [r5]
	add r0, r0, #40
	mov r2, #0
	strb r2, [r0]
	ldr r0, [r5]
	mov r1, r10
	str r1, [r0, #32]
	mov r4, #128
	lsl r4, r4, #8
	str r4, [r0, #36]
	add r0, r0, #43
	mov r1, #18
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #41
	mov r1, #2
	strb r1, [r0]
	ldr r0, [r5]
	add r0, r0, #42
	strb r2, [r0]
	ldr r0, [r5]
	mov r2, r10
	str r2, [r0, #56]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	add r0, r7, #0
	add r0, r0, #64
	mov r1, #0
	strb r1, [r0]
	add r2, r7, #0
	add r2, r2, #127
	ldrb r1, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r7, #92]
	str r4, [r7, #96]
	mov r0, #168
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r1, r7, #0
	add r1, r1, #52
	mov r0, #7
	strb r0, [r1]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806A394:
	.4byte sub_0806A3A8
_0806A398:
	.4byte sub_0806CCF0
_0806A39C:
	.4byte 0x030006E4
_0806A3A0:
	.4byte gUnknown_086691BC
_0806A3A4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806A22C

	THUMB_FUNC_START sub_0806A3A8
sub_0806A3A8: @ 0x0806A3A8
	push {r4-r7,lr}
	add r4, r0, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r6, _0806A3F0  @ =gUnknown_03001A1C
	ldr r0, [r6]
	mov r5, #128
	lsl r5, r5, #5
	and r0, r0, r5
	cmp r0, #0
	bne _0806A3D6
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806A3F4  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0806A3D6:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r6]
	and r1, r1, r5
	cmp r1, #0
	bne _0806A3F8
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	b _0806A3FE
	.byte 0x00
	.byte 0x00
_0806A3F0:
	.4byte gUnknown_03001A1C
_0806A3F4:
	.4byte 0x00007FFF
_0806A3F8:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0806A3FE:
	ldr r2, _0806A424  @ =0x030006E4
	ldr r1, [r2]
	mov r3, #142
	lsl r3, r3, #1
	add r5, r1, r3
	ldrh r6, [r5]
	add r7, r2, #0
	cmp r6, #9
	bhi _0806A430
	ldr r3, _0806A428  @ =0x03001D60
	ldr r2, _0806A42C  @ =gUnknown_0866508C
	ldrh r1, [r5]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r3]
	add r1, r6, #1
	strh r1, [r5]
	b _0806A436
_0806A424:
	.4byte 0x030006E4
_0806A428:
	.4byte 0x03001D60
_0806A42C:
	.4byte gUnknown_0866508C
_0806A430:
	ldr r2, _0806A47C  @ =0x03001D60
	mov r1, #0
	strh r1, [r2]
_0806A436:
	ldr r1, [r7]
	mov r5, #142
	lsl r5, r5, #1
	add r1, r1, r5
	ldrh r1, [r1]
	cmp r1, #10
	bne _0806A44E
	ldr r1, _0806A480  @ =gUnknown_03001938
	ldr r2, [r1]
	ldr r3, _0806A484  @ =0xFFFFFDFF
	and r2, r2, r3
	str r2, [r1]
_0806A44E:
	ldr r3, [r4, #104]
	mov r2, #4
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806A47C:
	.4byte 0x03001D60
_0806A480:
	.4byte gUnknown_03001938
_0806A484:
	.4byte 0xFFFFFDFF
	THUMB_FUNC_END sub_0806A3A8

	THUMB_FUNC_START sub_0806A488
sub_0806A488: @ 0x0806A488
	push {r4-r6,lr}
	sub sp, sp, #8
	add r5, r0, #0
	ldr r6, _0806A4FC  @ =0x030006E4
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A500  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #1
	bl sub_0804A748
	ldr r4, _0806A504  @ =gUnknown_03001A1C
	ldr r3, [r4]
	mov r0, #128
	lsl r0, r0, #6
	orr r3, r3, r0
	str r3, [r4]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	ldr r0, [r5, #36]
	mov r2, #192
	lsl r2, r2, #6
	add r0, r0, r2
	str r0, [r1, #36]
	ldr r0, _0806A508  @ =0x030019AC
	ldr r1, [r0]
	ldr r0, _0806A50C  @ =0xFFFFF000
	str r0, [r1, #32]
	ldr r2, _0806A510  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #3
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #16
	orr r3, r3, r0
	str r3, [r4]
	bl sub_080720AC
	ldr r0, _0806A514  @ =0x03001B98
	ldrb r5, [r0]
	cmp r5, #0
	beq _0806A518
	mov r0, #64
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	b _0806A584
	.byte 0x00
	.byte 0x00
_0806A4FC:
	.4byte 0x030006E4
_0806A500:
	.4byte gUnknown_086691BC
_0806A504:
	.4byte gUnknown_03001A1C
_0806A508:
	.4byte 0x030019AC
_0806A50C:
	.4byte 0xFFFFF000
_0806A510:
	.4byte gUnknown_03001938
_0806A514:
	.4byte 0x03001B98
_0806A518:
	mov r4, #144
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #44
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #52
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #60
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #196
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #188
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #180
	bl sub_08038DF4
	mov r0, #60
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
_0806A584:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806A488

	THUMB_FUNC_START sub_0806A58C
sub_0806A58C: @ 0x0806A58C
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r0, _0806A5E0  @ =0x03001B98
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806A5B6
	ldr r0, _0806A5E4  @ =0x030019AC
	ldr r1, [r0]
	mov r0, #208
	lsl r0, r0, #7
	str r0, [r1, #32]
	add r2, r4, #0
	add r2, r2, #84
	mov r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0806A5E8  @ =0x000001A3
	cmp r1, r0
	bgt _0806A5B6
	add r0, r0, #1
	strh r0, [r2]
_0806A5B6:
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #239
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806A5EC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #176
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0806A626
	.byte 0x00
	.byte 0x00
_0806A5E0:
	.4byte 0x03001B98
_0806A5E4:
	.4byte 0x030019AC
_0806A5E8:
	.4byte 0x000001A3
_0806A5EC:
	ldr r0, _0806A630  @ =0x000001FD
	cmp r1, r0
	ble _0806A626
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #182
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0806A634  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A638  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
_0806A626:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806A630:
	.4byte 0x000001FD
_0806A634:
	.4byte 0x030006E4
_0806A638:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806A58C

	THUMB_FUNC_START sub_0806A63C
sub_0806A63C: @ 0x0806A63C
	push {r4-r6,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r5, _0806A6CC  @ =0x030006E4
	ldr r2, [r5]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #50]
	mov r3, #0
	strh r0, [r1, #50]
	ldr r0, [r2, #4]
	ldr r2, [r0, #36]
	mov r0, #160
	lsl r0, r0, #8
	cmp r2, r0
	bgt _0806A664
	ldr r0, _0806A6D0  @ =0x030019AC
	ldr r1, [r0]
	ldr r6, _0806A6D4  @ =0xFFFFE000
	add r0, r2, r6
	str r0, [r1, #36]
_0806A664:
	ldr r0, [r4, #36]
	mov r2, #192
	lsl r2, r2, #7
	cmp r0, r2
	bgt _0806A6C2
	ldr r1, [r5]
	ldr r0, [r1, #4]
	strh r3, [r4, #50]
	strh r3, [r0, #50]
	str r2, [r4, #36]
	ldr r1, [r1, #4]
	mov r0, #144
	lsl r0, r0, #8
	str r0, [r1, #36]
	ldr r2, _0806A6D8  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _0806A6DC  @ =0xFFFFFBFF
	and r0, r0, r1
	str r0, [r2]
	ldr r2, _0806A6E0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _0806A6E4  @ =0xFF7FFFFF
	and r0, r0, r1
	str r0, [r2]
	bl sub_080720AC
	ldr r3, _0806A6E8  @ =gUnknown_03000B90
	ldr r0, [r3, #20]
	ldr r1, [r3, #24]
	add r3, r3, #29
	mov r2, #1
	bl sub_08071FA0
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A6EC  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
_0806A6C2:
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806A6CC:
	.4byte 0x030006E4
_0806A6D0:
	.4byte 0x030019AC
_0806A6D4:
	.4byte 0xFFFFE000
_0806A6D8:
	.4byte gUnknown_03001938
_0806A6DC:
	.4byte 0xFFFFFBFF
_0806A6E0:
	.4byte gUnknown_03001A1C
_0806A6E4:
	.4byte 0xFF7FFFFF
_0806A6E8:
	.4byte gUnknown_03000B90
_0806A6EC:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806A63C

	THUMB_FUNC_START sub_0806A6F0
sub_0806A6F0: @ 0x0806A6F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r7, r0, #0
	bl sub_0806AD94
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _0806A798
	ldr r0, _0806A7A4  @ =0x030006E4
	mov r8, r0
	ldr r1, [r0]
	mov r12, r1
	ldr r0, [r1, #8]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #7
	bne _0806A798
	ldr r0, [r1, #12]
	mov r2, #4
	ldrsh r1, [r0, r2]
	cmp r1, #7
	bne _0806A798
	mov r5, #218
	lsl r5, r5, #1
	add r5, r5, r12
	ldrh r3, [r5]
	add r3, r3, #1
	strh r3, [r5]
	ldr r4, _0806A7A8  @ =gUnknown_086651C4
	mov r2, r12
	ldr r0, [r2]
	add r0, r0, #52
	mov r2, #0
	ldrsb r2, [r0, r2]
	sub r2, r1, r2
	mov r0, #219
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r1, _0806A7AC  @ =0x000001B3
	add r1, r1, r12
	ldrb r1, [r1]
	ldr r0, [r0]
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r1, [r1, #2]
	cmp r3, r1
	bls _0806A798
	strh r6, [r5]
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #176
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, r8
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r7, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A7B0  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r7, #0
	mov r2, #4
	bl sub_0804A748
_0806A798:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0806A7A4:
	.4byte 0x030006E4
_0806A7A8:
	.4byte gUnknown_086651C4
_0806A7AC:
	.4byte 0x000001B3
_0806A7B0:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806A6F0

	THUMB_FUNC_START sub_0806A7B4
sub_0806A7B4: @ 0x0806A7B4
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	bl sub_0806AD94
	lsl r0, r0, #24
	cmp r0, #0
	beq _0806A7C6
	b _0806ACC6
_0806A7C6:
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0806A7D2
	b _0806ACC6
_0806A7D2:
	ldr r4, _0806A834  @ =0x030006E4
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806A838  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0804A748
	ldr r3, _0806A83C  @ =gUnknown_086651C4
	ldr r4, [r4]
	ldr r0, [r4]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r2, #7
	sub r2, r2, r0
	mov r1, #219
	lsl r1, r1, #1
	add r0, r4, r1
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r2, _0806A840  @ =0x000001B3
	add r1, r4, r2
	ldrb r1, [r1]
	ldr r0, [r0]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #10
	bls _0806A828
	b _0806AC86
_0806A828:
	lsl r0, r0, #2
	ldr r1, _0806A844  @ =0x0806A848
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806A834:
	.4byte 0x030006E4
_0806A838:
	.4byte gUnknown_086691BC
_0806A83C:
	.4byte gUnknown_086651C4
_0806A840:
	.4byte 0x000001B3
_0806A844:
	.4byte _0806A848
_0806A848:
	.4byte _0806A874
	.4byte _0806A8B8
	.4byte _0806A900
	.4byte _0806A95C
	.4byte _0806A9C8
	.4byte _0806AA24
	.4byte _0806AA68
	.4byte _0806AAB0
	.4byte _0806AB1C
	.4byte _0806AB88
	.4byte _0806AC00
_0806A874:
	ldr r0, _0806A8B0  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806A8B4  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806A8B0:
	.4byte 0x030006E4
_0806A8B4:
	.4byte gUnknown_086660E0
_0806A8B8:
	ldr r0, _0806A8F4  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806A8F8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806A8FC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
	.byte 0x00
	.byte 0x00
_0806A8F4:
	.4byte 0x030006E4
_0806A8F8:
	.4byte 0x000001AD
_0806A8FC:
	.4byte gUnknown_086660E0
_0806A900:
	ldr r6, _0806A950  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806A954  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #16
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806A958  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #16
	b _0806ABD6
_0806A950:
	.4byte 0x030006E4
_0806A954:
	.4byte gUnknown_086660E0
_0806A958:
	.4byte 0x000001AD
_0806A95C:
	ldr r6, _0806A9BC  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806A9C0  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806A9C4  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #8
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806A9BC:
	.4byte 0x030006E4
_0806A9C0:
	.4byte gUnknown_086660E0
_0806A9C4:
	.4byte 0x000001AD
_0806A9C8:
	ldr r6, _0806AA18  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806AA1C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #28
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806AA20  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #28
	b _0806ABD6
_0806AA18:
	.4byte 0x030006E4
_0806AA1C:
	.4byte gUnknown_086660E0
_0806AA20:
	.4byte 0x000001AD
_0806AA24:
	ldr r0, _0806AA60  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AA64  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #19
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806AA60:
	.4byte 0x030006E4
_0806AA64:
	.4byte gUnknown_086660E0
_0806AA68:
	ldr r0, _0806AAA4  @ =0x030006E4
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AAA8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AAAC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #19
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
	.byte 0x00
	.byte 0x00
_0806AAA4:
	.4byte 0x030006E4
_0806AAA8:
	.4byte 0x000001AD
_0806AAAC:
	.4byte gUnknown_086660E0
_0806AAB0:
	ldr r6, _0806AB10  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806AB14  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #21
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806AB18  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #21
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806AB10:
	.4byte 0x030006E4
_0806AB14:
	.4byte gUnknown_086660E0
_0806AB18:
	.4byte 0x000001AD
_0806AB1C:
	ldr r6, _0806AB7C  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806AB80  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #24
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806AB84  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #24
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #171
	b _0806ABE6
_0806AB7C:
	.4byte 0x030006E4
_0806AB80:
	.4byte gUnknown_086660E0
_0806AB84:
	.4byte 0x000001AD
_0806AB88:
	ldr r6, _0806ABF4  @ =0x030006E4
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806ABF8  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #29
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r7, _0806ABFC  @ =0x000001AD
	add r2, r6, r7
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #29
_0806ABD6:
	bl sub_0804A748
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #174
_0806ABE6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0806AC86
	.byte 0x00
	.byte 0x00
_0806ABF4:
	.4byte 0x030006E4
_0806ABF8:
	.4byte gUnknown_086660E0
_0806ABFC:
	.4byte 0x000001AD
_0806AC00:
	ldr r6, _0806ACD0  @ =0x030006E4
	ldr r1, [r6]
	mov r2, #217
	lsl r2, r2, #1
	add r1, r1, r2
	ldrb r0, [r1]
	add r0, r0, #1
	mov r7, #0
	strb r0, [r1]
	ldr r0, [r6]
	add r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #9
	bls _0806AC1E
	strb r7, [r1]
_0806AC1E:
	ldr r4, [r6]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r2, r4, r5
	ldrb r2, [r2]
	mov r5, #175
	lsl r5, r5, #4
	mul r2, r5, r2
	ldr r4, _0806ACD4  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #35
	bl sub_0804A748
	ldr r6, [r6]
	add r0, r6, #0
	add r0, r0, #24
	ldr r1, [r6, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r2, [r2]
	mov r12, r2
	ldrb r2, [r6, #17]
	str r2, [sp]
	ldr r3, _0806ACD8  @ =0x000001AD
	add r2, r6, r3
	ldrb r2, [r2]
	mul r2, r5, r2
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #35
	mov r3, r12
	bl sub_0804A748
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #174
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806AC86:
	ldr r3, _0806ACD0  @ =0x030006E4
	ldr r1, [r3]
	ldr r2, _0806ACDC  @ =0x000001B3
	add r1, r1, r2
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, [r3]
	add r4, r1, r2
	ldr r3, _0806ACE0  @ =gUnknown_086651C4
	ldr r0, [r1]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r2, #7
	sub r2, r2, r0
	mov r5, #219
	lsl r5, r5, #1
	add r0, r1, r5
	ldrb r1, [r0]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r3
	ldrb r1, [r4]
	ldrb r0, [r0, #4]
	cmp r1, r0
	bcc _0806ACC6
	mov r0, #0
	strb r0, [r4]
_0806ACC6:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806ACD0:
	.4byte 0x030006E4
_0806ACD4:
	.4byte gUnknown_086660E0
_0806ACD8:
	.4byte 0x000001AD
_0806ACDC:
	.4byte 0x000001B3
_0806ACE0:
	.4byte gUnknown_086651C4
	THUMB_FUNC_END sub_0806A7B4

	THUMB_FUNC_START sub_0806ACE4
sub_0806ACE4: @ 0x0806ACE4
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #179
	ble _0806AD7C
	bl sub_0806CF2C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #179
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r4, _0806AD84  @ =0x030006E4
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806AD88  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	bl sub_0804A748
	ldr r5, [r4]
	add r0, r5, #0
	add r0, r0, #24
	ldr r1, [r5, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r5, #17]
	str r2, [sp]
	mov r6, #214
	lsl r6, r6, #1
	add r2, r5, r6
	ldrb r2, [r2]
	mov r6, #175
	lsl r6, r6, #4
	mul r2, r6, r2
	ldr r5, _0806AD8C  @ =gUnknown_086660E0
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #48
	bl sub_0804A748
	ldr r4, [r4]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AD90  @ =0x000001AD
	add r2, r4, r7
	ldrb r2, [r2]
	mul r2, r6, r2
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #49
	bl sub_0804A748
_0806AD7C:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0806AD84:
	.4byte 0x030006E4
_0806AD88:
	.4byte gUnknown_086691BC
_0806AD8C:
	.4byte gUnknown_086660E0
_0806AD90:
	.4byte 0x000001AD
	THUMB_FUNC_END sub_0806ACE4

	THUMB_FUNC_START sub_0806AD94
sub_0806AD94: @ 0x0806AD94
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #52
	mov r8, r0
	ldr r1, [r0, #76]
	cmp r1, #0
	bge _0806ADA6
	b _0806B2D4
_0806ADA6:
	ldr r2, _0806AE70  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #176
	beq _0806ADB8
	b _0806B2C4
_0806ADB8:
	add r0, r1, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r2, #128
	lsl r2, r2, #16
	and r0, r0, r2
	cmp r0, #0
	bne _0806ADCC
	b _0806B2C4
_0806ADCC:
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #5
	bne _0806ADD6
	b _0806B2C4
_0806ADD6:
	cmp r0, #6
	bne _0806ADDC
	b _0806B2C4
_0806ADDC:
	cmp r0, #7
	bne _0806ADE2
	b _0806B2C4
_0806ADE2:
	cmp r0, #8
	bne _0806ADE8
	b _0806B2C4
_0806ADE8:
	mov r1, r8
	add r1, r1, #52
	ldrb r0, [r1]
	sub r0, r0, #1
	mov r7, #0
	strb r0, [r1]
	lsl r0, r0, #24
	add r6, r1, #0
	cmp r0, #0
	bgt _0806ADFE
	b _0806B1A4
_0806ADFE:
	add r4, sp, #12
	add r0, r4, #0
	mov r1, #0
	mov r2, #40
	bl memset
	mov r5, #0
	mov r0, #2
	strh r0, [r4, #2]
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #238
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r4, _0806AE74  @ =0x030006E4
	ldr r0, [r4]
	ldr r0, [r0, #4]
	add r1, sp, #12
	mov r2, #2
	bl sub_0803ED98
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	mov r1, r8
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806AE78  @ =gUnknown_086691BC
	str r1, [sp, #4]
	mov r1, r8
	mov r2, #5
	bl sub_0804A748
	ldr r0, [r4]
	ldr r7, _0806AE7C  @ =0x000001B3
	add r0, r0, r7
	strb r5, [r0]
	ldrb r0, [r6]
	sub r0, r0, #1
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bls _0806AE64
	b _0806B088
_0806AE64:
	lsl r0, r0, #2
	ldr r1, _0806AE80  @ =0x0806AE84
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806AE70:
	.4byte 0x03001940
_0806AE74:
	.4byte 0x030006E4
_0806AE78:
	.4byte gUnknown_086691BC
_0806AE7C:
	.4byte 0x000001B3
_0806AE80:
	.4byte _0806AE84
_0806AE84:
	.4byte _0806B030
	.4byte _0806AFD0
	.4byte _0806AF80
	.4byte _0806AF34
	.4byte _0806AEE8
	.4byte _0806AE9C
_0806AE9C:
	ldr r5, _0806AEE0  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AEE4  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	lsl r0, r0, #8
	b _0806B014
	.byte 0x00
	.byte 0x00
_0806AEE0:
	.4byte 0x030006E4
_0806AEE4:
	.4byte gUnknown_086660E0
_0806AEE8:
	ldr r5, _0806AF28  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AF2C  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AF30  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	lsl r0, r0, #8
	b _0806B014
_0806AF28:
	.4byte 0x030006E4
_0806AF2C:
	.4byte 0x000001AD
_0806AF30:
	.4byte gUnknown_086660E0
_0806AF34:
	ldr r5, _0806AF78  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AF7C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #8
	b _0806B012
_0806AF78:
	.4byte 0x030006E4
_0806AF7C:
	.4byte gUnknown_086660E0
_0806AF80:
	ldr r5, _0806AFC4  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806AFC8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806AFCC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #8
	b _0806B012
	.byte 0x00
	.byte 0x00
_0806AFC4:
	.4byte 0x030006E4
_0806AFC8:
	.4byte 0x000001AD
_0806AFCC:
	.4byte gUnknown_086660E0
_0806AFD0:
	ldr r5, _0806B028  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B02C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #8]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #16
_0806B012:
	lsl r0, r0, #16
_0806B014:
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	bl sub_08038DF4
	b _0806B088
_0806B028:
	.4byte 0x030006E4
_0806B02C:
	.4byte gUnknown_086660E0
_0806B030:
	ldr r5, _0806B0F4  @ =0x030006E4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r7, _0806B0F8  @ =0x000001AD
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B0FC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #46
	bl sub_0804A748
	ldr r0, [r5]
	ldr r0, [r0, #12]
	ldr r3, [r0, #32]
	asr r3, r3, #8
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r0, #36]
	asr r0, r0, #8
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	bl sub_08038DF4
	bl sub_0806C7CC
_0806B088:
	ldrb r1, [r6]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806B108
	ldr r2, _0806B100  @ =0x03001D64
	ldr r0, _0806B0F4  @ =0x030006E4
	ldr r4, [r0]
	mov r1, #132
	lsl r1, r1, #1
	add r0, r4, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	ldr r1, [r4, #8]
	ldr r1, [r1, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	strh r0, [r2]
	ldr r2, _0806B104  @ =0x03001D68
	mov r5, #133
	lsl r5, r5, #1
	add r0, r4, r5
	mov r6, #0
	ldrsh r0, [r0, r6]
	lsl r0, r0, #8
	ldr r1, [r4, #8]
	ldr r1, [r1, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	mov r7, #214
	lsl r7, r7, #1
	add r2, r4, r7
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B0FC  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #14
	bl sub_0804A748
	b _0806B166
_0806B0F4:
	.4byte 0x030006E4
_0806B0F8:
	.4byte 0x000001AD
_0806B0FC:
	.4byte gUnknown_086660E0
_0806B100:
	.4byte 0x03001D64
_0806B104:
	.4byte 0x03001D68
_0806B108:
	ldr r3, _0806B18C  @ =0x03001D58
	ldr r0, _0806B190  @ =0x030006E4
	ldr r4, [r0]
	ldr r2, [r4, #12]
	mov r1, #134
	lsl r1, r1, #1
	add r0, r4, r1
	mov r5, #0
	ldrsh r1, [r0, r5]
	lsl r1, r1, #8
	ldr r0, [r2, #32]
	sub r0, r0, r1
	asr r0, r0, #5
	strh r0, [r3]
	ldr r2, _0806B194  @ =0x03001D5C
	mov r6, #135
	lsl r6, r6, #1
	add r0, r4, r6
	mov r7, #0
	ldrsh r0, [r0, r7]
	lsl r0, r0, #8
	ldr r1, [r4, #12]
	ldr r1, [r1, #36]
	sub r0, r0, r1
	asr r0, r0, #5
	neg r0, r0
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r5, _0806B198  @ =0x000001AD
	add r2, r4, r5
	ldrb r4, [r2]
	mov r2, #175
	lsl r2, r2, #4
	mul r2, r4, r2
	ldr r4, _0806B19C  @ =gUnknown_086660E0
	add r2, r2, r4
	str r2, [sp, #4]
	mov r2, #15
	bl sub_0804A748
_0806B166:
	ldr r2, _0806B1A0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	mov r6, r8
	ldr r2, [r6, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r6, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #18
	mov r1, #0
	bl sub_0804138C
	b _0806B27E
	.byte 0x00
	.byte 0x00
_0806B18C:
	.4byte 0x03001D58
_0806B190:
	.4byte 0x030006E4
_0806B194:
	.4byte 0x03001D5C
_0806B198:
	.4byte 0x000001AD
_0806B19C:
	.4byte gUnknown_086660E0
_0806B1A0:
	.4byte gUnknown_03001A1C
_0806B1A4:
	ldr r1, _0806B294  @ =gUnknown_03001A1C
	ldr r0, [r1]
	orr r0, r0, r2
	str r0, [r1]
	ldr r4, _0806B298  @ =0x030006E4
	ldr r0, [r4]
	ldr r2, _0806B29C  @ =0x00000119
	add r1, r0, r2
	mov r0, #1
	strb r0, [r1]
	bl sub_080720AC
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #242
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r4]
	ldr r0, [r0, #4]
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	mov r1, r8
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806B2A0  @ =gUnknown_086691BC
	str r1, [sp, #4]
	mov r1, r8
	mov r2, #6
	bl sub_0804A748
	ldr r5, [r4]
	add r0, r5, #0
	add r0, r0, #24
	ldr r1, [r5, #8]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r3, [r2]
	ldrb r2, [r5, #17]
	str r2, [sp]
	mov r6, #214
	lsl r6, r6, #1
	add r2, r5, r6
	ldrb r2, [r2]
	mov r6, #175
	lsl r6, r6, #4
	mul r2, r6, r2
	ldr r5, _0806B2A4  @ =gUnknown_086660E0
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #47
	bl sub_0804A748
	ldr r4, [r4]
	add r0, r4, #0
	add r0, r0, #24
	ldr r1, [r4, #12]
	add r2, r1, #0
	add r2, r2, #64
	ldrb r2, [r2]
	mov r12, r2
	ldrb r2, [r4, #17]
	str r2, [sp]
	ldr r3, _0806B2A8  @ =0x000001AD
	add r2, r4, r3
	ldrb r2, [r2]
	mul r2, r6, r2
	add r2, r2, r5
	str r2, [sp, #4]
	mov r2, #47
	mov r3, r12
	bl sub_0804A748
	ldr r0, _0806B2AC  @ =0x03001D64
	strh r7, [r0]
	ldr r0, _0806B2B0  @ =0x03001D68
	strh r7, [r0]
	ldr r0, _0806B2B4  @ =0x03001D58
	strh r7, [r0]
	ldr r0, _0806B2B8  @ =0x03001D5C
	strh r7, [r0]
	ldr r2, _0806B2BC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	orr r0, r0, r1
	str r0, [r2]
	mov r5, r8
	ldr r2, [r5, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r5, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #18
	mov r1, #0
	bl sub_0804138C
_0806B27E:
	mov r0, #1
	neg r0, r0
	mov r6, r8
	str r0, [r6, #76]
	ldr r0, [r6, #92]
	ldr r1, _0806B2C0  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r6, #92]
	mov r0, #1
	b _0806B2D6
	.byte 0x00
	.byte 0x00
_0806B294:
	.4byte gUnknown_03001A1C
_0806B298:
	.4byte 0x030006E4
_0806B29C:
	.4byte 0x00000119
_0806B2A0:
	.4byte gUnknown_086691BC
_0806B2A4:
	.4byte gUnknown_086660E0
_0806B2A8:
	.4byte 0x000001AD
_0806B2AC:
	.4byte 0x03001D64
_0806B2B0:
	.4byte 0x03001D68
_0806B2B4:
	.4byte 0x03001D58
_0806B2B8:
	.4byte 0x03001D5C
_0806B2BC:
	.4byte gUnknown_030019A0
_0806B2C0:
	.4byte 0xFFFFFF00
_0806B2C4:
	mov r0, #1
	neg r0, r0
	mov r7, r8
	str r0, [r7, #76]
	ldr r0, [r7, #92]
	ldr r1, _0806B2E4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r7, #92]
_0806B2D4:
	mov r0, #0
_0806B2D6:
	add sp, sp, #52
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806B2E4:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_0806AD94

	THUMB_FUNC_START sub_0806B2E8
sub_0806B2E8: @ 0x0806B2E8
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r3, _0806B31C  @ =0x030006E4
	ldr r0, [r3]
	mov r1, #140
	lsl r1, r1, #1
	add r4, r0, r1
	ldrb r5, [r4]
	ldr r2, _0806B320  @ =gUnknown_08665844
	ldr r0, [r0]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #7
	sub r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	ldrb r0, [r0]
	sub r0, r0, #1
	mov r12, r3
	add r7, r2, #0
	cmp r5, r0
	blt _0806B324
	mov r0, #0
	b _0806B326
	.byte 0x00
	.byte 0x00
_0806B31C:
	.4byte 0x030006E4
_0806B320:
	.4byte gUnknown_08665844
_0806B324:
	add r0, r5, #1
_0806B326:
	strb r0, [r4]
	mov r0, r12
	ldr r2, [r0]
	mov r6, #138
	lsl r6, r6, #1
	add r3, r2, r6
	ldr r0, [r2]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #7
	sub r0, r0, r1
	lsl r0, r0, #3
	add r1, r7, #4
	add r0, r0, r1
	mov r1, #140
	lsl r1, r1, #1
	add r2, r2, r1
	ldrb r1, [r2]
	lsl r1, r1, #3
	ldr r0, [r0]
	add r0, r0, r1
	str r0, [r3]
	mov r4, #0
	ldrb r0, [r0]
	cmp r4, r0
	bcs _0806B398
	mov r5, r12
	mov r7, #0
_0806B360:
	ldr r0, [r5]
	ldr r1, _0806B3A0  @ =0x00000113
	add r0, r0, r1
	strb r4, [r0]
	ldr r0, [r5]
	add r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r0, #4]
	lsl r0, r4, #3
	add r0, r0, r1
	ldrb r1, [r0]
	ldrh r3, [r0, #2]
	str r7, [sp]
	str r7, [sp, #4]
	mov r0, #255
	mov r2, #1
	neg r2, r2
	bl sub_08038DF4
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, [r5]
	add r0, r0, r6
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r4, r0
	bcc _0806B360
_0806B398:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0806B3A0:
	.4byte 0x00000113
	THUMB_FUNC_END sub_0806B2E8

	THUMB_FUNC_START sub_0806B3A4
sub_0806B3A4: @ 0x0806B3A4
	push {r4,lr}
	mov r3, #0
	ldr r0, _0806B3D8  @ =0x03001B98
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B3E8
	ldr r0, _0806B3DC  @ =0x030006E4
	ldr r0, [r0]
	ldr r0, [r0]
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0806B3E0  @ =0x000001D1
	cmp r1, r0
	beq _0806B3D2
	mov r0, #240
	lsl r0, r0, #1
	cmp r1, r0
	beq _0806B428
	ldr r0, _0806B3E4  @ =0x000001EF
	cmp r1, r0
	beq _0806B3D2
	b _0806B4EE
_0806B3D2:
	mov r3, #16
	b _0806B4EE
	.byte 0x00
	.byte 0x00
_0806B3D8:
	.4byte 0x03001B98
_0806B3DC:
	.4byte 0x030006E4
_0806B3E0:
	.4byte 0x000001D1
_0806B3E4:
	.4byte 0x000001EF
_0806B3E8:
	ldr r0, _0806B408  @ =0x030006E4
	ldr r1, [r0]
	ldr r1, [r1, #8]
	mov r2, #4
	ldrsh r1, [r1, r2]
	add r2, r0, #0
	cmp r1, #5
	bgt _0806B414
	ldr r0, _0806B40C  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #32]
	ldr r0, _0806B410  @ =0x000043FF
	cmp r1, r0
	bgt _0806B4EE
	b _0806B3D2
	.byte 0x00
	.byte 0x00
_0806B408:
	.4byte 0x030006E4
_0806B40C:
	.4byte 0x030019AC
_0806B410:
	.4byte 0x000043FF
_0806B414:
	cmp r1, #6
	bne _0806B430
	ldr r0, _0806B42C  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0806B430
_0806B428:
	mov r3, #32
	b _0806B4EE
_0806B42C:
	.4byte 0x030019AC
_0806B430:
	ldr r1, [r2]
	ldr r0, [r1, #8]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #6
	ble _0806B4EE
	ldr r1, [r1]
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _0806B4EE
	add r0, r1, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #232
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0806B4C8
	ldr r1, _0806B48C  @ =0x030019AC
	ldr r2, [r1]
	ldr r4, [r2, #32]
	ldr r0, _0806B490  @ =0x000063FF
	cmp r4, r0
	bgt _0806B470
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0806B484
_0806B470:
	ldr r0, _0806B494  @ =0x0000A3FF
	cmp r4, r0
	bgt _0806B498
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0806B4AA
_0806B484:
	mov r0, #16
	orr r3, r3, r0
	b _0806B4EE
	.byte 0x00
	.byte 0x00
_0806B48C:
	.4byte 0x030019AC
_0806B490:
	.4byte 0x000063FF
_0806B494:
	.4byte 0x0000A3FF
_0806B498:
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0806B4AA
	mov r0, #32
	b _0806B4E8
_0806B4AA:
	ldr r2, [r1]
	ldr r1, [r2, #32]
	mov r0, #224
	lsl r0, r0, #7
	cmp r1, r0
	ble _0806B4EE
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0806B4EE
	mov r0, #32
	b _0806B4E8
_0806B4C8:
	ldr r0, _0806B4DC  @ =0x000001D1
	cmp r1, r0
	beq _0806B4E6
	mov r0, #240
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806B4E0
	mov r0, #32
	b _0806B4E8
	.byte 0x00
	.byte 0x00
_0806B4DC:
	.4byte 0x000001D1
_0806B4E0:
	ldr r0, _0806B4F8  @ =0x000001EF
	cmp r1, r0
	bne _0806B4EE
_0806B4E6:
	mov r0, #16
_0806B4E8:
	orr r3, r3, r0
	lsl r0, r3, #16
	lsr r3, r0, #16
_0806B4EE:
	add r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806B4F8:
	.4byte 0x000001EF
	THUMB_FUNC_END sub_0806B3A4

	THUMB_FUNC_START sub_0806B4FC
sub_0806B4FC: @ 0x0806B4FC
	push {r4,r5,lr}
	sub sp, sp, #12
	mov r5, #0
	ldr r0, _0806B53C  @ =0x030006E4
	ldr r2, [r0]
	ldr r0, [r2]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #7
	ble _0806B5F6
	mov r0, #216
	lsl r0, r0, #1
	add r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0806B548
	ldr r0, _0806B540  @ =0x030019AC
	ldr r0, [r0]
	mov r3, #4
	ldrsh r1, [r0, r3]
	mov r0, #242
	lsl r0, r0, #1
	cmp r1, r0
	beq _0806B572
	ldr r1, _0806B544  @ =0x000001B1
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B5F6
	mov r5, #64
	b _0806B5F6
	.byte 0x00
	.byte 0x00
_0806B53C:
	.4byte 0x030006E4
_0806B540:
	.4byte 0x030019AC
_0806B544:
	.4byte 0x000001B1
_0806B548:
	ldr r0, _0806B564  @ =0x030019AC
	ldr r2, [r0]
	ldr r1, [r2, #36]
	ldr r0, _0806B568  @ =0x00007FFF
	cmp r1, r0
	ble _0806B55E
	ldr r1, [r2, #32]
	mov r0, #132
	lsl r0, r0, #6
	cmp r1, r0
	ble _0806B56C
_0806B55E:
	mov r5, #32
	b _0806B5F6
	.byte 0x00
	.byte 0x00
_0806B564:
	.4byte 0x030019AC
_0806B568:
	.4byte 0x00007FFF
_0806B56C:
	ldr r0, _0806B578  @ =0x00001EFF
	cmp r1, r0
	bgt _0806B57C
_0806B572:
	mov r5, #16
	b _0806B5F6
	.byte 0x00
	.byte 0x00
_0806B578:
	.4byte 0x00001EFF
_0806B57C:
	mov r0, #1
	strb r0, [r3]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #245
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r4, #144
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #16
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #24
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #32
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #40
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #48
	bl sub_08038DF4
	str r4, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r1, #39
	mov r2, #0
	mov r3, #56
	bl sub_08038DF4
_0806B5F6:
	add r0, r5, #0
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806B4FC

	THUMB_FUNC_START sub_0806B600
sub_0806B600: @ 0x0806B600
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	ldr r6, _0806B690  @ =0x030006E4
	ldr r0, [r6]
	mov r1, #200
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r4, _0806B694  @ =gUnknown_03001930
	ldrh r1, [r4]
	str r1, [r0]
	ldr r0, _0806B698  @ =gUnknown_081C1A20
	ldr r5, _0806B69C  @ =gUnknown_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #202
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6A0  @ =gUnknown_081C209C
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #204
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6A4  @ =gUnknown_081C1C70
	mov r1, #128
	lsl r1, r1, #3
	mov r8, r1
	add r1, r4, #0
	add r2, r5, #0
	mov r3, r8
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #206
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6A8  @ =gUnknown_081C216C
	mov r3, #128
	lsl r3, r3, #1
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r1, [r6]
	mov r2, #208
	lsl r2, r2, #1
	add r1, r1, r2
	str r0, [r1]
	ldr r0, _0806B6AC  @ =gUnknown_08208514
	add r1, r4, #0
	add r2, r5, #0
	mov r3, r8
	bl sub_0800F0C4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_0806B690:
	.4byte 0x030006E4
_0806B694:
	.4byte gUnknown_03001930
_0806B698:
	.4byte gUnknown_081C1A20
_0806B69C:
	.4byte gUnknown_0300192C
_0806B6A0:
	.4byte gUnknown_081C209C
_0806B6A4:
	.4byte gUnknown_081C1C70
_0806B6A8:
	.4byte gUnknown_081C216C
_0806B6AC:
	.4byte gUnknown_08208514
	THUMB_FUNC_END sub_0806B600

	THUMB_FUNC_START sub_0806B6B0
sub_0806B6B0: @ 0x0806B6B0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #176
	mov r1, #0
	ldr r0, _0806B91C  @ =gUnknown_081E3378
	str r0, [sp]
	ldr r2, _0806B920  @ =gUnknown_081E3380
	str r2, [sp, #4]
	ldr r0, _0806B924  @ =gUnknown_081E327C
	str r0, [sp, #8]
	mov r0, sp
	mov r4, #0
	strh r1, [r0, #12]
	ldr r1, _0806B928  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806B92C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	mov r5, #64
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	add r7, sp, #56
	mov r2, #48
	strb r2, [r7]
	mov r1, #7
	strh r1, [r0, #58]
	ldr r0, _0806B930  @ =0x00000481
	str r0, [sp, #60]
	mov r0, sp
	strh r4, [r0, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	add r2, sp, #64
	mov r10, r2
	strh r5, [r2]
	mov r0, #66
	add r0, sp, r0
	mov r9, r0
	mov r1, #128
	lsl r1, r1, #4
	strh r1, [r0]
	add r6, sp, #68
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #72]
	mov r0, #14
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _0806B91C  @ =gUnknown_081E3378
	str r1, [sp]
	ldr r2, _0806B920  @ =gUnknown_081E3380
	str r2, [sp, #4]
	ldr r0, _0806B924  @ =gUnknown_081E327C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #1
	strh r1, [r0, #12]
	ldr r2, _0806B928  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #6
	mov r8, r2
	add r0, r0, r8
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	mov r0, sp
	mov r1, #7
	strh r1, [r0, #58]
	mov r0, #144
	lsl r0, r0, #3
	str r0, [sp, #60]
	mov r0, sp
	strh r4, [r0, #40]
	str r4, [sp, #44]
	str r4, [sp, #48]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #72]
	mov r0, #14
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _0806B934  @ =gUnknown_081E0274
	str r1, [sp]
	ldr r2, _0806B938  @ =gUnknown_081E027C
	str r2, [sp, #4]
	ldr r0, _0806B93C  @ =gUnknown_081E019C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #2
	strh r1, [r0, #12]
	ldr r2, _0806B928  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806B92C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	mov r0, sp
	mov r1, #6
	strh r1, [r0, #58]
	ldr r0, _0806B940  @ =0x00000681
	str r0, [sp, #60]
	mov r0, sp
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806B944  @ =gUnknown_0866954C
	str r0, [sp, #44]
	ldr r1, _0806B948  @ =gUnknown_0866958C
	str r1, [sp, #48]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #72]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r2, _0806B934  @ =gUnknown_081E0274
	str r2, [sp]
	ldr r0, _0806B938  @ =gUnknown_081E027C
	str r0, [sp, #4]
	ldr r1, _0806B93C  @ =gUnknown_081E019C
	str r1, [sp, #8]
	mov r0, sp
	mov r2, #3
	strh r2, [r0, #12]
	ldr r1, _0806B928  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r2, #48
	strb r2, [r7]
	mov r1, #6
	strh r1, [r0, #58]
	mov r0, #208
	lsl r0, r0, #3
	str r0, [sp, #60]
	mov r0, sp
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806B944  @ =gUnknown_0866954C
	str r0, [sp, #44]
	ldr r1, _0806B948  @ =gUnknown_0866958C
	str r1, [sp, #48]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #72]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _0806B94C  @ =gUnknown_082034E0
	str r0, [sp]
	ldr r0, _0806B950  @ =gUnknown_082034E8
	str r0, [sp, #4]
	ldr r0, _0806B954  @ =gUnknown_082031EC
	str r0, [sp, #8]
	mov r0, sp
	mov r2, #4
	strh r2, [r0, #12]
	ldr r1, _0806B928  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	str r0, [sp, #16]
	ldr r0, [r1, #32]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #20]
	ldr r0, [r1, #36]
	str r0, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r2, #0
	strb r2, [r7]
	mov r1, sp
	mov r0, #21
	strh r0, [r1, #58]
	mov r0, #160
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, #30
	strh r0, [r1, #40]
	ldr r0, _0806B958  @ =gUnknown_0866945C
	str r0, [sp, #44]
	ldr r0, _0806B95C  @ =gUnknown_086694D4
	str r0, [sp, #48]
	mov r0, #128
	mov r1, r10
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #5
	mov r2, r9
	strh r0, [r2]
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	str r4, [sp, #72]
	mov r0, #60
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	add r0, sp, #124
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #124]
	bl sub_080572B8
	add sp, sp, #176
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806B91C:
	.4byte gUnknown_081E3378
_0806B920:
	.4byte gUnknown_081E3380
_0806B924:
	.4byte gUnknown_081E327C
_0806B928:
	.4byte 0x030006E4
_0806B92C:
	.4byte 0xFFFFE000
_0806B930:
	.4byte 0x00000481
_0806B934:
	.4byte gUnknown_081E0274
_0806B938:
	.4byte gUnknown_081E027C
_0806B93C:
	.4byte gUnknown_081E019C
_0806B940:
	.4byte 0x00000681
_0806B944:
	.4byte gUnknown_0866954C
_0806B948:
	.4byte gUnknown_0866958C
_0806B94C:
	.4byte gUnknown_082034E0
_0806B950:
	.4byte gUnknown_082034E8
_0806B954:
	.4byte gUnknown_082031EC
_0806B958:
	.4byte gUnknown_0866945C
_0806B95C:
	.4byte gUnknown_086694D4
	THUMB_FUNC_END sub_0806B6B0

	THUMB_FUNC_START sub_0806B960
sub_0806B960: @ 0x0806B960
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #100
	str r0, [sp, #84]
	str r1, [sp, #88]
	str r2, [sp, #92]
	str r3, [sp, #96]
	mov r1, #0
	ldr r0, _0806BBFC  @ =gUnknown_081E3378
	str r0, [sp, #4]
	ldr r2, _0806BC00  @ =gUnknown_081E3380
	str r2, [sp, #8]
	ldr r0, _0806BC04  @ =gUnknown_081E327C
	str r0, [sp, #12]
	add r0, sp, #4
	mov r4, #0
	strh r1, [r0, #12]
	ldr r1, _0806BC08  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806BC0C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	mov r5, #64
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	add r7, sp, #60
	mov r2, #48
	strb r2, [r7]
	mov r1, #7
	strh r1, [r0, #58]
	ldr r0, _0806BC10  @ =0x00000481
	str r0, [sp, #64]
	add r0, sp, #4
	strh r4, [r0, #40]
	str r4, [sp, #48]
	str r4, [sp, #52]
	add r2, sp, #68
	mov r10, r2
	strh r5, [r2]
	mov r0, #70
	add r0, sp, r0
	mov r9, r0
	mov r1, #128
	lsl r1, r1, #4
	strh r1, [r0]
	add r6, sp, #72
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #76]
	mov r0, #14
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r2, _0806BBFC  @ =gUnknown_081E3378
	str r2, [sp, #4]
	ldr r0, _0806BC00  @ =gUnknown_081E3380
	str r0, [sp, #8]
	ldr r1, _0806BC04  @ =gUnknown_081E327C
	str r1, [sp, #12]
	add r0, sp, #4
	mov r2, #1
	strh r2, [r0, #12]
	ldr r1, _0806BC08  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	mov r2, #128
	lsl r2, r2, #6
	mov r8, r2
	add r0, r0, r8
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	add r0, sp, #4
	mov r1, #7
	strh r1, [r0, #58]
	mov r0, #144
	lsl r0, r0, #3
	str r0, [sp, #64]
	add r0, sp, #4
	strh r4, [r0, #40]
	str r4, [sp, #48]
	str r4, [sp, #52]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	str r4, [sp, #76]
	mov r0, #14
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r2, _0806BC14  @ =gUnknown_081E0274
	str r2, [sp, #4]
	ldr r0, _0806BC18  @ =gUnknown_081E027C
	str r0, [sp, #8]
	ldr r1, _0806BC1C  @ =gUnknown_081E019C
	str r1, [sp, #12]
	add r0, sp, #4
	mov r2, #2
	strh r2, [r0, #12]
	ldr r1, _0806BC08  @ =0x030006E4
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	ldr r2, _0806BC0C  @ =0xFFFFE000
	add r0, r0, r2
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r2
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	add r0, sp, #4
	mov r1, #6
	strh r1, [r0, #58]
	ldr r0, _0806BC20  @ =0x00000681
	str r0, [sp, #64]
	add r0, sp, #4
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806BC24  @ =gUnknown_0866954C
	str r0, [sp, #48]
	ldr r1, _0806BC28  @ =gUnknown_0866958C
	str r1, [sp, #52]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #76]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _0806BC14  @ =gUnknown_081E0274
	str r0, [sp, #4]
	ldr r1, _0806BC18  @ =gUnknown_081E027C
	str r1, [sp, #8]
	ldr r2, _0806BC1C  @ =gUnknown_081E019C
	str r2, [sp, #12]
	add r0, sp, #4
	mov r1, #3
	strh r1, [r0, #12]
	ldr r2, _0806BC08  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	add r0, r0, r8
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #48
	strb r0, [r7]
	add r0, sp, #4
	mov r1, #6
	strh r1, [r0, #58]
	mov r0, #208
	lsl r0, r0, #3
	str r0, [sp, #64]
	add r0, sp, #4
	mov r2, #16
	strh r2, [r0, #40]
	ldr r0, _0806BC24  @ =gUnknown_0866954C
	str r0, [sp, #48]
	ldr r1, _0806BC28  @ =gUnknown_0866958C
	str r1, [sp, #52]
	mov r2, r10
	strh r5, [r2]
	mov r1, #128
	lsl r1, r1, #4
	mov r0, r9
	strh r1, [r0]
	mov r2, #128
	lsl r2, r2, #2
	strh r2, [r6]
	mov r0, #14
	str r0, [sp, #76]
	mov r1, #165
	lsl r1, r1, #1
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _0806BC2C  @ =gUnknown_082034E0
	str r0, [sp, #4]
	ldr r0, _0806BC30  @ =gUnknown_082034E8
	str r0, [sp, #8]
	ldr r0, _0806BC34  @ =gUnknown_082031EC
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #4
	strh r1, [r0, #12]
	ldr r2, _0806BC08  @ =0x030006E4
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r0, [r1, #32]
	str r0, [sp, #20]
	ldr r0, [r1, #32]
	str r0, [sp, #28]
	ldr r0, [r1, #36]
	str r0, [sp, #24]
	ldr r0, [r1, #36]
	str r0, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #0
	strb r0, [r7]
	add r1, sp, #4
	mov r0, #21
	strh r0, [r1, #58]
	mov r0, #160
	lsl r0, r0, #2
	str r0, [sp, #64]
	mov r0, #30
	strh r0, [r1, #40]
	ldr r0, _0806BC38  @ =gUnknown_0866945C
	str r0, [sp, #48]
	ldr r0, _0806BC3C  @ =gUnknown_086694D4
	str r0, [sp, #52]
	mov r0, #128
	mov r1, r10
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #5
	mov r2, r9
	strh r0, [r2]
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	str r4, [sp, #76]
	mov r0, #60
	str r0, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	add sp, sp, #100
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806BBFC:
	.4byte gUnknown_081E3378
_0806BC00:
	.4byte gUnknown_081E3380
_0806BC04:
	.4byte gUnknown_081E327C
_0806BC08:
	.4byte 0x030006E4
_0806BC0C:
	.4byte 0xFFFFE000
_0806BC10:
	.4byte 0x00000481
_0806BC14:
	.4byte gUnknown_081E0274
_0806BC18:
	.4byte gUnknown_081E027C
_0806BC1C:
	.4byte gUnknown_081E019C
_0806BC20:
	.4byte 0x00000681
_0806BC24:
	.4byte gUnknown_0866954C
_0806BC28:
	.4byte gUnknown_0866958C
_0806BC2C:
	.4byte gUnknown_082034E0
_0806BC30:
	.4byte gUnknown_082034E8
_0806BC34:
	.4byte gUnknown_082031EC
_0806BC38:
	.4byte gUnknown_0866945C
_0806BC3C:
	.4byte gUnknown_086694D4
	THUMB_FUNC_END sub_0806B960

	THUMB_FUNC_START sub_0806BC40
sub_0806BC40: @ 0x0806BC40
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	ldr r0, _0806BEFC  @ =0x030006E4
	ldr r7, [r0]
	ldr r1, [r7, #8]
	ldr r2, [r7]
	ldr r3, [r1, #32]
	ldr r0, [r2, #32]
	sub r3, r3, r0
	mov r4, #128
	lsl r4, r4, #4
	add r3, r3, r4
	ldr r4, [r1, #36]
	ldr r5, [r2, #36]
	mov r10, r5
	sub r4, r4, r5
	ldr r5, _0806BF00  @ =0xFFFFE000
	add r4, r4, r5
	ldr r1, [r7, #12]
	ldr r6, [r1, #32]
	sub r6, r6, r0
	mov r9, r6
	ldr r6, _0806BF04  @ =0xFFFFD800
	add r9, r9, r6
	ldr r1, [r1, #36]
	mov r8, r1
	mov r6, r10
	sub r1, r1, r6
	mov r8, r1
	add r8, r8, r5
	mov r5, #144
	lsl r5, r5, #1
	add r1, r7, r5
	asr r6, r3, #1
	add r0, r0, r6
	asr r5, r3, #2
	mov r10, r5
	add r0, r0, r10
	ldr r5, _0806BF08  @ =0xFFFFF000
	add r0, r0, r5
	str r0, [r1]
	mov r0, #168
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	asr r5, r4, #1
	ldr r0, [r2, #36]
	add r0, r0, r5
	asr r1, r4, #2
	mov r12, r1
	add r0, r0, r12
	mov r1, #192
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #146
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [r2, #32]
	add r0, r0, r6
	asr r3, r3, #3
	add r0, r0, r3
	ldr r1, _0806BF0C  @ =0xFFFFF800
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #170
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [r2, #36]
	add r0, r0, r5
	asr r4, r4, #3
	add r0, r0, r4
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #148
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r6
	ldr r6, _0806BF08  @ =0xFFFFF000
	add r0, r0, r6
	str r0, [r1]
	mov r0, #172
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r5
	mov r5, #192
	lsl r5, r5, #5
	add r0, r0, r5
	str r0, [r1]
	mov r6, #150
	lsl r6, r6, #1
	add r1, r7, r6
	ldr r0, [r2, #32]
	add r0, r0, r10
	add r0, r0, r3
	ldr r5, _0806BF0C  @ =0xFFFFF800
	add r0, r0, r5
	str r0, [r1]
	add r6, r6, #48
	add r1, r7, r6
	ldr r0, [r2, #36]
	add r0, r0, r12
	add r0, r0, r4
	mov r5, #128
	lsl r5, r5, #6
	add r0, r0, r5
	str r0, [r1]
	sub r6, r6, #44
	add r1, r7, r6
	ldr r0, [r2, #32]
	add r0, r0, r10
	ldr r5, _0806BF08  @ =0xFFFFF000
	add r0, r0, r5
	str r0, [r1]
	add r6, r6, #48
	add r1, r7, r6
	ldr r0, [r2, #36]
	add r0, r0, r12
	mov r5, #192
	lsl r5, r5, #5
	add r0, r0, r5
	str r0, [r1]
	sub r6, r6, #44
	add r1, r7, r6
	ldr r0, [r2, #32]
	add r0, r0, r3
	ldr r3, _0806BF0C  @ =0xFFFFF800
	add r0, r0, r3
	str r0, [r1]
	mov r5, #178
	lsl r5, r5, #1
	add r1, r7, r5
	ldr r0, [r2, #36]
	add r0, r0, r4
	mov r6, #128
	lsl r6, r6, #6
	add r0, r0, r6
	str r0, [r1]
	mov r0, #192
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	ldr r3, _0806BF08  @ =0xFFFFF000
	add r0, r0, r3
	str r0, [r1]
	add r5, r5, #32
	add r1, r7, r5
	ldr r0, [r2, #36]
	add r0, r0, r4
	mov r6, #192
	lsl r6, r6, #5
	add r0, r0, r6
	str r0, [r1]
	mov r0, #156
	lsl r0, r0, #1
	add r1, r7, r0
	mov r3, r9
	asr r4, r3, #1
	ldr r0, [r2, #32]
	add r0, r0, r4
	asr r3, r3, #2
	mov r12, r3
	add r0, r0, r12
	mov r5, #192
	lsl r5, r5, #6
	add r0, r0, r5
	str r0, [r1]
	mov r6, #180
	lsl r6, r6, #1
	add r1, r7, r6
	mov r0, r8
	asr r3, r0, #1
	ldr r0, [r2, #36]
	add r0, r0, r3
	mov r5, r8
	asr r6, r5, #2
	add r0, r0, r6
	mov r5, #192
	lsl r5, r5, #5
	add r0, r0, r5
	str r0, [r1]
	mov r0, #158
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r4
	mov r5, r9
	asr r5, r5, #3
	mov r9, r5
	add r0, r0, r9
	mov r5, #224
	lsl r5, r5, #6
	add r0, r0, r5
	str r0, [r1]
	mov r0, #182
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp]
	ldr r0, [r2, #36]
	add r0, r0, r3
	mov r1, r8
	asr r1, r1, #3
	mov r8, r1
	add r0, r0, r8
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [sp]
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r4
	mov r4, #192
	lsl r4, r4, #6
	add r0, r0, r4
	str r0, [r1]
	mov r0, #184
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r3
	mov r3, #192
	lsl r3, r3, #5
	add r0, r0, r3
	str r0, [r1]
	mov r4, #162
	lsl r4, r4, #1
	add r1, r7, r4
	ldr r0, [r2, #32]
	add r0, r0, r12
	add r0, r0, r9
	add r0, r0, r5
	str r0, [r1]
	mov r0, #186
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r6
	add r0, r0, r8
	mov r3, #128
	lsl r3, r3, #6
	add r0, r0, r3
	str r0, [r1]
	add r4, r4, #4
	add r1, r7, r4
	ldr r0, [r2, #32]
	add r0, r0, r12
	mov r3, #192
	lsl r3, r3, #6
	add r0, r0, r3
	str r0, [r1]
	add r4, r4, #48
	add r1, r7, r4
	ldr r0, [r2, #36]
	add r0, r0, r6
	mov r6, #192
	lsl r6, r6, #5
	add r0, r0, r6
	str r0, [r1]
	mov r0, #166
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #32]
	add r0, r0, r9
	add r0, r0, r5
	str r0, [r1]
	mov r3, #190
	lsl r3, r3, #1
	add r1, r7, r3
	ldr r0, [r2, #36]
	add r0, r0, r8
	mov r4, #128
	lsl r4, r4, #6
	add r0, r0, r4
	str r0, [r1]
	mov r5, #196
	lsl r5, r5, #1
	add r1, r7, r5
	ldr r0, [r2, #32]
	mov r6, #192
	lsl r6, r6, #6
	add r0, r0, r6
	str r0, [r1]
	mov r0, #198
	lsl r0, r0, #1
	add r1, r7, r0
	ldr r0, [r2, #36]
	add r0, r0, r8
	mov r2, #192
	lsl r2, r2, #5
	add r0, r0, r2
	str r0, [r1]
	ldr r0, _0806BF10  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0806BEC2
	ldr r0, _0806BF14  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806BF20
_0806BEC2:
	mov r5, #212
	lsl r5, r5, #1
	add r4, r7, r5
	ldr r1, _0806BF18  @ =gUnknown_081C1C20
	mov r3, #210
	lsl r3, r3, #1
	add r2, r7, r3
	ldr r3, [r2]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcc _0806BF1C
	add r0, r3, #1
	str r0, [r2]
	cmp r0, #1
	bls _0806BEEE
	mov r0, #0
	str r0, [r2]
_0806BEEE:
	ldr r4, _0806BEFC  @ =0x030006E4
	ldr r0, [r4]
	add r0, r0, r5
	mov r1, #0
	str r1, [r0]
	b _0806BF20
	.byte 0x00
	.byte 0x00
_0806BEFC:
	.4byte 0x030006E4
_0806BF00:
	.4byte 0xFFFFE000
_0806BF04:
	.4byte 0xFFFFD800
_0806BF08:
	.4byte 0xFFFFF000
_0806BF0C:
	.4byte 0xFFFFF800
_0806BF10:
	.4byte gUnknown_03001A1C
_0806BF14:
	.4byte gUnknown_030019A0
_0806BF18:
	.4byte gUnknown_081C1C20
_0806BF1C:
	add r0, r1, #1
	str r0, [r4]
_0806BF20:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806BC40

	THUMB_FUNC_START sub_0806BF30
sub_0806BF30: @ 0x0806BF30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	ldr r0, _0806C060  @ =0x030006E4
	ldr r6, [r0]
	ldr r0, [r6]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #8
	ble _0806BF4C
	b _0806C050
_0806BF4C:
	ldr r2, _0806C064  @ =0x040000D4
	mov r12, r2
	ldr r0, _0806C068  @ =gUnknown_0820850C
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0806C06C  @ =gOamBuffer
	mov r8, r1
	add r0, r0, r8
	str r0, [r2, #4]
	ldr r0, _0806C070  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	mov r1, #208
	lsl r1, r1, #1
	mov r9, r1
	add r0, r6, r1
	ldr r1, [r0]
	ldr r0, _0806C074  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r5, _0806C078  @ =0xFFFFFC00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	mov r1, #192
	lsl r1, r1, #1
	add r0, r6, r1
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _0806C07C  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r4, _0806C080  @ =0xFFFFFE00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	mov r2, #194
	lsl r2, r2, #1
	add r0, r6, r2
	ldr r0, [r0]
	asr r0, r0, #8
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	mov r2, #12
	mov r10, r2
	mov r2, r10
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0806C068  @ =gUnknown_0820850C
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r1, #4]
	ldr r2, _0806C070  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r0, _0806C060  @ =0x030006E4
	ldr r3, [r0]
	add r9, r9, r3
	mov r2, r9
	ldr r0, [r2]
	ldr r2, _0806C074  @ =0x000003FF
	and r0, r0, r2
	ldrh r2, [r1, #4]
	and r5, r5, r2
	orr r5, r5, r0
	strh r5, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	mov r2, #196
	lsl r2, r2, #1
	add r0, r3, r2
	ldr r0, [r0]
	asr r0, r0, #8
	add r2, r2, #119
	and r0, r0, r2
	ldrh r2, [r1, #2]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	mov r0, #198
	lsl r0, r0, #1
	add r3, r3, r0
	ldr r0, [r3]
	asr r0, r0, #8
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	mov r2, r10
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0806C050:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C060:
	.4byte 0x030006E4
_0806C064:
	.4byte 0x040000D4
_0806C068:
	.4byte gUnknown_0820850C
_0806C06C:
	.4byte gOamBuffer
_0806C070:
	.4byte 0x84000002
_0806C074:
	.4byte 0x000003FF
_0806C078:
	.4byte 0xFFFFFC00
_0806C07C:
	.4byte 0x000001FF
_0806C080:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806BF30

	THUMB_FUNC_START sub_0806C084
sub_0806C084: @ 0x0806C084
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r5, r0, #0
	ldr r1, _0806C0E8  @ =0x030006E4
	ldr r0, [r1]
	ldr r0, [r0]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #8
	ble _0806C0A0
	b _0806C2A0
_0806C0A0:
	mov r4, #0
	mov r8, r4
	mov r9, r1
	ldr r6, _0806C0EC  @ =0x040000D4
	ldr r7, _0806C0F0  @ =gOamBuffer
	ldr r0, _0806C0F4  @ =0x84000002
	mov r10, r0
_0806C0AE:
	ldr r1, _0806C0F8  @ =gUnknown_03001A1C
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	bne _0806C0CC
	ldr r2, _0806C0FC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	bne _0806C0CC
	b _0806C1CC
_0806C0CC:
	mov r4, r9
	ldr r0, [r4]
	ldr r0, [r0]
	add r0, r0, #52
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C100
	mov r0, r8
	cmp r0, #5
	bhi _0806C114
	b _0806C106
	.byte 0x00
	.byte 0x00
_0806C0E8:
	.4byte 0x030006E4
_0806C0EC:
	.4byte 0x040000D4
_0806C0F0:
	.4byte gOamBuffer
_0806C0F4:
	.4byte 0x84000002
_0806C0F8:
	.4byte gUnknown_03001A1C
_0806C0FC:
	.4byte gUnknown_030019A0
_0806C100:
	mov r1, r8
	cmp r1, #5
	bls _0806C114
_0806C106:
	ldr r2, _0806C150  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0806C190
_0806C114:
	mov r0, r8
	mov r4, #1
	and r0, r0, r4
	cmp r0, #0
	beq _0806C158
	ldr r0, _0806C154  @ =gUnknown_081C2164
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r1, r10
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r4, r9
	ldr r2, [r4]
	mov r1, #206
	lsl r1, r1, #1
	add r0, r2, r1
	ldr r1, [r0]
	mov r4, #210
	lsl r4, r4, #1
	add r0, r2, r4
	ldr r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	b _0806C22C
_0806C150:
	.4byte gUnknown_030019A0
_0806C154:
	.4byte gUnknown_081C2164
_0806C158:
	ldr r1, _0806C18C  @ =gUnknown_081C1C68
	str r1, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r2, r10
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r4, r9
	ldr r2, [r4]
	mov r1, #204
	lsl r1, r1, #1
	add r0, r2, r1
	ldr r1, [r0]
	mov r4, #210
	lsl r4, r4, #1
	add r0, r2, r4
	ldr r0, [r0]
	lsl r0, r0, #4
	add r1, r1, r0
	b _0806C22C
	.byte 0x00
	.byte 0x00
_0806C18C:
	.4byte gUnknown_081C1C68
_0806C190:
	mov r0, r8
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C208
	ldr r2, _0806C1C4  @ =gUnknown_081C2094
	str r2, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r4, r10
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	ldr r0, [r1]
	mov r2, #202
	lsl r2, r2, #1
	add r0, r0, r2
	ldr r1, [r0]
	ldr r4, _0806C1C8  @ =0x000003FF
	and r1, r1, r4
	b _0806C230
_0806C1C4:
	.4byte gUnknown_081C2094
_0806C1C8:
	.4byte 0x000003FF
_0806C1CC:
	mov r0, r8
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C208
	ldr r2, _0806C200  @ =gUnknown_081C2094
	str r2, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r4, r10
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	ldr r0, [r1]
	mov r2, #202
	lsl r2, r2, #1
	add r0, r0, r2
	ldr r1, [r0]
	ldr r4, _0806C204  @ =0x000003FF
	and r1, r1, r4
	b _0806C230
_0806C200:
	.4byte gUnknown_081C2094
_0806C204:
	.4byte 0x000003FF
_0806C208:
	ldr r0, _0806C2B0  @ =gUnknown_081C1A18
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	mov r1, r10
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r2, r9
	ldr r0, [r2]
	mov r4, #200
	lsl r4, r4, #1
	add r0, r0, r4
	ldr r1, [r0]
_0806C22C:
	ldr r0, _0806C2B4  @ =0x000003FF
	and r1, r1, r0
_0806C230:
	ldrh r2, [r3, #4]
	ldr r0, _0806C2B8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r7
	mov r1, r9
	ldr r1, [r1]
	mov r12, r1
	mov r2, r8
	lsl r4, r2, #2
	mov r0, #144
	lsl r0, r0, #1
	add r0, r0, r12
	add r0, r0, r4
	ldr r1, [r0]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r3, #2]
	ldr r0, _0806C2BC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, #168
	lsl r0, r0, #1
	add r0, r0, r12
	add r0, r0, r4
	ldr r0, [r0]
	asr r0, r0, #8
	strb r0, [r1]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #11
	bhi _0806C2A0
	b _0806C0AE
_0806C2A0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C2B0:
	.4byte gUnknown_081C1A18
_0806C2B4:
	.4byte 0x000003FF
_0806C2B8:
	.4byte 0xFFFFFC00
_0806C2BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806C084

	THUMB_FUNC_START sub_0806C2C0
sub_0806C2C0: @ 0x0806C2C0
	bx lr
	THUMB_FUNC_END sub_0806C2C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C2C4
sub_0806C2C4: @ 0x0806C2C4
	push {lr}
	ldr r0, _0806C2DC  @ =0x030006E4
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bgt _0806C2E0
	bl sub_0806B3A4
	b _0806C2EC
	.byte 0x00
	.byte 0x00
_0806C2DC:
	.4byte 0x030006E4
_0806C2E0:
	cmp r0, #5
	bgt _0806C2E8
	mov r0, #0
	b _0806C2F0
_0806C2E8:
	bl sub_0806B4FC
_0806C2EC:
	lsl r0, r0, #16
	lsr r0, r0, #16
_0806C2F0:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C2C4

	THUMB_FUNC_START sub_0806C2F4
sub_0806C2F4: @ 0x0806C2F4
	bx lr
	THUMB_FUNC_END sub_0806C2F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C2F8
sub_0806C2F8: @ 0x0806C2F8
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C2F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C30C
sub_0806C30C: @ 0x0806C30C
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #199
	bgt _0806C32A
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0806C338  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0806C33C
_0806C32A:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0806C384
	.byte 0x00
	.byte 0x00
_0806C338:
	.4byte gUnknown_030012E4
_0806C33C:
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806C384
	add r5, r4, #0
	add r5, r5, #61
	ldrb r0, [r5]
	mov r1, #184
	mov r2, #0
	bl sub_080410B4
	ldr r3, [r4, #32]
	asr r3, r3, #8
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r1, #176
	mov r2, #0
	bl sub_08038DF4
	ldrb r0, [r5]
	bl sub_08039B64
_0806C384:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C30C

	THUMB_FUNC_START sub_0806C38C
sub_0806C38C: @ 0x0806C38C
	push {r4-r7,lr}
	sub sp, sp, #8
	add r7, r0, #0
	ldrb r1, [r7, #12]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0806C3CA
	add r4, r7, #0
	add r4, r4, #60
	ldrb r6, [r4]
	ldrb r5, [r7, #2]
	mov r0, #0
	strb r0, [r7, #12]
	ldr r0, _0806C3D4  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r7, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #19]
	str r1, [sp]
	ldr r1, _0806C3D8  @ =gUnknown_08665968
	str r1, [sp, #4]
	add r1, r7, #0
	mov r2, #4
	bl sub_0804A748
	strb r5, [r7, #2]
	strb r6, [r4]
_0806C3CA:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C3D4:
	.4byte 0x030006E4
_0806C3D8:
	.4byte gUnknown_08665968
	THUMB_FUNC_END sub_0806C38C

	THUMB_FUNC_START sub_0806C3DC
sub_0806C3DC: @ 0x0806C3DC
	push {lr}
	add r2, r0, #0
	ldrb r1, [r2, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C3F4
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806C3F4:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C3DC

	THUMB_FUNC_START sub_0806C3F8
sub_0806C3F8: @ 0x0806C3F8
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C3F8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C40C
sub_0806C40C: @ 0x0806C40C
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C45C  @ =0x030006E4
	ldr r2, [r0]
	mov r1, #133
	lsl r1, r1, #1
	add r0, r2, r1
	mov r5, #0
	ldrsh r0, [r0, r5]
	lsl r1, r0, #8
	ldr r0, [r4, #36]
	cmp r0, r1
	bgt _0806C454
	str r1, [r4, #36]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C460  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #3
	bl sub_0804A748
_0806C454:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C45C:
	.4byte 0x030006E4
_0806C460:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C40C

	THUMB_FUNC_START sub_0806C464
sub_0806C464: @ 0x0806C464
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0806C4E2
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C4B4
	ldr r0, _0806C4AC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C4B0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	bl sub_0804A748
	b _0806C4E2
	.byte 0x00
	.byte 0x00
_0806C4AC:
	.4byte 0x030006E4
_0806C4B0:
	.4byte gUnknown_086660E0
_0806C4B4:
	ldr r0, _0806C4EC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C4F0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #5
	bl sub_0804A748
_0806C4E2:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C4EC:
	.4byte 0x030006E4
_0806C4F0:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C464

	THUMB_FUNC_START sub_0806C4F4
sub_0806C4F4: @ 0x0806C4F4
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C532
	ldr r0, _0806C53C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C540  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_0806C532:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C53C:
	.4byte 0x030006E4
_0806C540:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C4F4

	THUMB_FUNC_START sub_0806C544
sub_0806C544: @ 0x0806C544
	push {lr}
	add r1, r0, #0
	ldrh r0, [r1]
	cmp r0, #135
	bne _0806C56C
	ldr r0, _0806C568  @ =0x030006E4
	ldr r2, [r0]
	mov r3, #132
	lsl r3, r3, #1
	add r0, r2, r3
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	str r0, [r1, #32]
	mov r3, #133
	lsl r3, r3, #1
	b _0806C582
	.byte 0x00
	.byte 0x00
_0806C568:
	.4byte 0x030006E4
_0806C56C:
	ldr r0, _0806C590  @ =0x030006E4
	ldr r2, [r0]
	mov r3, #134
	lsl r3, r3, #1
	add r0, r2, r3
	mov r3, #0
	ldrsh r0, [r0, r3]
	lsl r0, r0, #8
	str r0, [r1, #32]
	mov r3, #135
	lsl r3, r3, #1
_0806C582:
	add r0, r2, r3
	mov r2, #0
	ldrsh r0, [r0, r2]
	lsl r0, r0, #8
	str r0, [r1, #36]
	pop {r0}
	bx r0
_0806C590:
	.4byte 0x030006E4
	THUMB_FUNC_END sub_0806C544

	THUMB_FUNC_START sub_0806C594
sub_0806C594: @ 0x0806C594
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0806C610
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C5E4
	ldr r0, _0806C5DC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C5E0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #36
	bl sub_0804A748
	b _0806C610
	.byte 0x00
	.byte 0x00
_0806C5DC:
	.4byte 0x030006E4
_0806C5E0:
	.4byte gUnknown_086660E0
_0806C5E4:
	ldr r0, _0806C618  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806C61C  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C620  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #36
	bl sub_0804A748
_0806C610:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C618:
	.4byte 0x030006E4
_0806C61C:
	.4byte 0x000001AD
_0806C620:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C594

	THUMB_FUNC_START sub_0806C624
sub_0806C624: @ 0x0806C624
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0806C6A0
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C674
	ldr r0, _0806C66C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C670  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #40
	bl sub_0804A748
	b _0806C6A0
	.byte 0x00
	.byte 0x00
_0806C66C:
	.4byte 0x030006E4
_0806C670:
	.4byte gUnknown_086660E0
_0806C674:
	ldr r0, _0806C6A8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806C6AC  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C6B0  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #40
	bl sub_0804A748
_0806C6A0:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C6A8:
	.4byte 0x030006E4
_0806C6AC:
	.4byte 0x000001AD
_0806C6B0:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C624

	THUMB_FUNC_START sub_0806C6B4
sub_0806C6B4: @ 0x0806C6B4
	push {r4,r5,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #40
	bne _0806C730
	ldrh r0, [r4]
	cmp r0, #135
	bne _0806C704
	ldr r0, _0806C6FC  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	mov r5, #214
	lsl r5, r5, #1
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C700  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #43
	bl sub_0804A748
	b _0806C730
	.byte 0x00
	.byte 0x00
_0806C6FC:
	.4byte 0x030006E4
_0806C700:
	.4byte gUnknown_086660E0
_0806C704:
	ldr r0, _0806C738  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #17]
	str r1, [sp]
	ldr r5, _0806C73C  @ =0x000001AD
	add r1, r2, r5
	ldrb r2, [r1]
	mov r1, #175
	lsl r1, r1, #4
	mul r1, r2, r1
	ldr r2, _0806C740  @ =gUnknown_086660E0
	add r1, r1, r2
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #43
	bl sub_0804A748
_0806C730:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_0806C738:
	.4byte 0x030006E4
_0806C73C:
	.4byte 0x000001AD
_0806C740:
	.4byte gUnknown_086660E0
	THUMB_FUNC_END sub_0806C6B4

	THUMB_FUNC_START sub_0806C744
sub_0806C744: @ 0x0806C744
	push {r4,lr}
	ldr r1, _0806C774  @ =0x030019AC
	ldr r1, [r1]
	add r1, r1, #67
	mov r2, #255
	strb r2, [r1]
	ldr r3, _0806C778  @ =0x030006E4
	ldr r1, [r3]
	add r1, r1, #81
	mov r4, #0
	mov r2, #2
	strb r2, [r1]
	ldr r1, [r3]
	add r1, r1, #82
	strb r2, [r1]
	mov r1, #224
	lsl r1, r1, #15
	str r1, [r0, #92]
	add r0, r0, #132
	ldr r0, [r0]
	str r4, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
_0806C774:
	.4byte 0x030019AC
_0806C778:
	.4byte 0x030006E4
	THUMB_FUNC_END sub_0806C744

	THUMB_FUNC_START sub_0806C77C
sub_0806C77C: @ 0x0806C77C
	push {lr}
	add r3, r0, #0
	ldrh r0, [r3]
	cmp r0, #135
	bne _0806C7A0
	ldr r2, _0806C798  @ =0x03001D64
	ldr r1, [r3, #32]
	mov r0, #128
	lsl r0, r0, #7
	sub r0, r0, r1
	asr r0, r0, #6
	strh r0, [r2]
	ldr r2, _0806C79C  @ =0x03001D68
	b _0806C7AE
_0806C798:
	.4byte 0x03001D64
_0806C79C:
	.4byte 0x03001D68
_0806C7A0:
	ldr r1, _0806C7C0  @ =0x03001D58
	ldr r0, [r3, #32]
	ldr r2, _0806C7C4  @ =0xFFFF7000
	add r0, r0, r2
	asr r0, r0, #6
	strh r0, [r1]
	ldr r2, _0806C7C8  @ =0x03001D5C
_0806C7AE:
	ldr r1, [r3, #36]
	mov r0, #196
	lsl r0, r0, #8
	sub r0, r0, r1
	asr r0, r0, #6
	neg r0, r0
	strh r0, [r2]
	pop {r0}
	bx r0
_0806C7C0:
	.4byte 0x03001D58
_0806C7C4:
	.4byte 0xFFFF7000
_0806C7C8:
	.4byte 0x03001D5C
	THUMB_FUNC_END sub_0806C77C

	THUMB_FUNC_START sub_0806C7CC
sub_0806C7CC: @ 0x0806C7CC
	push {r4-r6,lr}
	sub sp, sp, #8
	mov r4, #0
	mov r5, #0
	ldr r6, _0806C80C  @ =gUnknown_086656FC
_0806C7D6:
	ldr r0, _0806C810  @ =0x030006E4
	ldr r0, [r0]
	add r1, r4, #0
	add r1, r1, #32
	ldr r2, _0806C814  @ =0x00000113
	add r0, r0, r2
	strb r1, [r0]
	lsl r0, r4, #3
	add r0, r0, r6
	ldrb r1, [r0]
	ldrh r3, [r0, #2]
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, #255
	mov r2, #1
	neg r2, r2
	bl sub_08038DF4
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #5
	bls _0806C7D6
	add sp, sp, #8
	pop {r4-r6}
	pop {r0}
	bx r0
_0806C80C:
	.4byte gUnknown_086656FC
_0806C810:
	.4byte 0x030006E4
_0806C814:
	.4byte 0x00000113
	THUMB_FUNC_END sub_0806C7CC

	THUMB_FUNC_START sub_0806C818
sub_0806C818: @ 0x0806C818
	push {r4,lr}
	sub sp, sp, #8
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #201
	mov r2, #0
	mov r3, #8
	bl sub_08038DF4
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, #255
	mov r1, #201
	mov r2, #0
	mov r3, #232
	bl sub_08038DF4
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C818

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C848
sub_0806C848: @ 0x0806C848
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806C848

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C85C
sub_0806C85C: @ 0x0806C85C
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806C88A
	ldr r0, _0806C894  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C898  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	bl sub_0804A748
_0806C88A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C894:
	.4byte 0x030006E4
_0806C898:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C85C

	THUMB_FUNC_START sub_0806C89C
sub_0806C89C: @ 0x0806C89C
	push {lr}
	add r2, r0, #0
	ldr r1, [r2, #32]
	ldr r0, _0806C8C4  @ =0x000077FF
	ldr r3, _0806C8C8  @ =0x030006E4
	cmp r1, r0
	bgt _0806C8CC
	ldr r0, [r3]
	ldr r0, [r0, #8]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bne _0806C8CC
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0806C8E2
	.byte 0x00
	.byte 0x00
_0806C8C4:
	.4byte 0x000077FF
_0806C8C8:
	.4byte 0x030006E4
_0806C8CC:
	ldr r0, [r3]
	ldr r0, [r0, #12]
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bne _0806C8E2
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806C8E2:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806C89C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806C8E8
sub_0806C8E8: @ 0x0806C8E8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C924  @ =0x030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	ldr r0, _0806C928  @ =0x0000023F
	cmp r1, r0
	bne _0806C91A
	ldr r0, _0806C92C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C930  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	bl sub_0804A748
_0806C91A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C924:
	.4byte 0x030019AC
_0806C928:
	.4byte 0x0000023F
_0806C92C:
	.4byte 0x030006E4
_0806C930:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C8E8

	THUMB_FUNC_START sub_0806C934
sub_0806C934: @ 0x0806C934
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C97C  @ =0x030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	mov r0, #243
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806C974
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0806C974
	ldr r0, _0806C980  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C984  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #5
	bl sub_0804A748
_0806C974:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806C97C:
	.4byte 0x030019AC
_0806C980:
	.4byte 0x030006E4
_0806C984:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C934

	THUMB_FUNC_START sub_0806C988
sub_0806C988: @ 0x0806C988
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806C9B8  @ =0x030006E4
	ldr r2, [r0]
	ldr r1, [r2, #8]
	mov r3, #4
	ldrsh r0, [r1, r3]
	cmp r0, #6
	bne _0806C9D6
	ldr r0, [r1, #32]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r0, r1
	ldr r1, [r4, #32]
	cmp r1, r0
	bge _0806C9BC
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
	b _0806C9D6
	.byte 0x00
	.byte 0x00
_0806C9B8:
	.4byte 0x030006E4
_0806C9BC:
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806C9E0  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #6
	bl sub_0804A748
_0806C9D6:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806C9E0:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C988

	THUMB_FUNC_START sub_0806C9E4
sub_0806C9E4: @ 0x0806C9E4
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CA16
	ldr r0, _0806CA20  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CA24  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_0806CA16:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CA20:
	.4byte 0x030006E4
_0806CA24:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806C9E4

	THUMB_FUNC_START sub_0806CA28
sub_0806CA28: @ 0x0806CA28
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806CA64  @ =0x030019AC
	ldr r0, [r0]
	mov r2, #4
	ldrsh r1, [r0, r2]
	ldr r0, _0806CA68  @ =0x0000023F
	cmp r1, r0
	bne _0806CA5A
	ldr r0, _0806CA6C  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CA70  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #8
	bl sub_0804A748
_0806CA5A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CA64:
	.4byte 0x030019AC
_0806CA68:
	.4byte 0x0000023F
_0806CA6C:
	.4byte 0x030006E4
_0806CA70:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CA28

	THUMB_FUNC_START sub_0806CA74
sub_0806CA74: @ 0x0806CA74
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CAA6
	ldr r0, _0806CAB0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CAB4  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
_0806CAA6:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CAB0:
	.4byte 0x030006E4
_0806CAB4:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CA74

	THUMB_FUNC_START sub_0806CAB8
sub_0806CAB8: @ 0x0806CAB8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r1, [r4, #32]
	ldr r0, _0806CAEC  @ =0x0000C1FF
	cmp r1, r0
	ble _0806CAE4
	ldr r0, _0806CAF0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CAF4  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
_0806CAE4:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CAEC:
	.4byte 0x0000C1FF
_0806CAF0:
	.4byte 0x030006E4
_0806CAF4:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CAB8

	THUMB_FUNC_START sub_0806CAF8
sub_0806CAF8: @ 0x0806CAF8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CB2A
	ldr r0, _0806CB34  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	mov r3, #1
	eor r3, r3, r1
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CB38  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	bl sub_0804A748
_0806CB2A:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CB34:
	.4byte 0x030006E4
_0806CB38:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CAF8

	THUMB_FUNC_START sub_0806CB3C
sub_0806CB3C: @ 0x0806CB3C
	push {lr}
	add r1, r0, #0
	ldr r0, _0806CB5C  @ =0x030006E4
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #6
	bne _0806CB58
	add r0, r1, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806CB58:
	pop {r0}
	bx r0
_0806CB5C:
	.4byte 0x030006E4
	THUMB_FUNC_END sub_0806CB3C

	THUMB_FUNC_START sub_0806CB60
sub_0806CB60: @ 0x0806CB60
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806CB9E
	ldr r0, _0806CBA8  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CBAC  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #13
	bl sub_0804A748
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #13
	orr r0, r0, r1
	str r0, [r4, #92]
_0806CB9E:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CBA8:
	.4byte 0x030006E4
_0806CBAC:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CB60

	THUMB_FUNC_START sub_0806CBB0
sub_0806CBB0: @ 0x0806CBB0
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
	mov r1, #128
	lsl r1, r1, #1
	cmp r0, r1
	bls _0806CBCC
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_0806CBCC:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806CBB0

	THUMB_FUNC_START sub_0806CBD0
sub_0806CBD0: @ 0x0806CBD0
	push {r4,r5,lr}
	sub sp, sp, #8
	add r5, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #48
	ble _0806CC18
	ldr r0, _0806CC0C  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r5, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0806CC18
	ldr r0, _0806CC10  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CC14  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #15
	bl sub_0804A748
	b _0806CC52
_0806CC0C:
	.4byte 0x030019AC
_0806CC10:
	.4byte 0x030006E4
_0806CC14:
	.4byte gUnknown_08668D38
_0806CC18:
	add r0, r5, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #63
	ble _0806CC52
	ldr r4, _0806CC5C  @ =0x030006E4
	ldr r0, [r4]
	ldr r2, _0806CC60  @ =0x000001B1
	add r1, r0, r2
	mov r0, #1
	strb r0, [r1]
	mov r0, #245
	bl sub_08071E14
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CC64  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #15
	bl sub_0804A748
_0806CC52:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CC5C:
	.4byte 0x030006E4
_0806CC60:
	.4byte 0x000001B1
_0806CC64:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CBD0

	THUMB_FUNC_START sub_0806CC68
sub_0806CC68: @ 0x0806CC68
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806CCA0  @ =0x030006E4
	ldr r2, [r0]
	ldr r1, _0806CCA4  @ =0x000001B1
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806CC96
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CCA8  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #16
	bl sub_0804A748
_0806CC96:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CCA0:
	.4byte 0x030006E4
_0806CCA4:
	.4byte 0x000001B1
_0806CCA8:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CC68

	THUMB_FUNC_START sub_0806CCAC
sub_0806CCAC: @ 0x0806CCAC
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, _0806CCE4  @ =0x030006E4
	ldr r2, [r0]
	ldr r1, _0806CCE8  @ =0x000001B1
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806CCDA
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #18]
	str r1, [sp]
	ldr r1, _0806CCEC  @ =gUnknown_08668D38
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #15
	bl sub_0804A748
_0806CCDA:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CCE4:
	.4byte 0x030006E4
_0806CCE8:
	.4byte 0x000001B1
_0806CCEC:
	.4byte gUnknown_08668D38
	THUMB_FUNC_END sub_0806CCAC

	THUMB_FUNC_START sub_0806CCF0
sub_0806CCF0: @ 0x0806CCF0
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	ldr r1, _0806CD18  @ =0x030019AC
	ldr r3, [r1]
	ldr r2, [r3, #36]
	mov r1, #128
	lsl r1, r1, #8
	cmp r2, r1
	ble _0806CD12
	mov r1, #254
	lsl r1, r1, #7
	str r1, [r3, #36]
_0806CD12:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806CD18:
	.4byte 0x030019AC
	THUMB_FUNC_END sub_0806CCF0

	THUMB_FUNC_START sub_0806CD1C
sub_0806CD1C: @ 0x0806CD1C
	push {r4,r5,lr}
	sub sp, sp, #48
	add r5, r0, #0
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CD6A
	add r0, sp, #8
	mov r1, #0
	mov r2, #40
	bl memset
	ldr r4, _0806CD74  @ =0x030006E4
	ldr r0, [r4]
	ldr r0, [r0, #4]
	add r1, sp, #8
	mov r2, #0
	bl sub_0803ED98
	ldr r2, _0806CD78  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _0806CD7C  @ =0xDFFFFFFF
	and r0, r0, r1
	str r0, [r2]
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r5, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CD80  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0804A748
_0806CD6A:
	add sp, sp, #48
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CD74:
	.4byte 0x030006E4
_0806CD78:
	.4byte gUnknown_03001A1C
_0806CD7C:
	.4byte 0xDFFFFFFF
_0806CD80:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CD1C

	THUMB_FUNC_START sub_0806CD84
sub_0806CD84: @ 0x0806CD84
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #144
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806CDAC
	ldr r0, _0806CDDC  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #3
	orr r1, r1, r2
	str r1, [r0]
_0806CDAC:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CDD4
	ldr r0, _0806CDE0  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CDE4  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #7
	bl sub_0804A748
_0806CDD4:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CDDC:
	.4byte gUnknown_03001938
_0806CDE0:
	.4byte 0x030006E4
_0806CDE4:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CD84

	THUMB_FUNC_START sub_0806CDE8
sub_0806CDE8: @ 0x0806CDE8
	push {r4,r5,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r5, _0806CE3C  @ =0x030006E4
	ldr r0, [r5]
	ldr r1, _0806CE40  @ =0x000001B1
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806CE32
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #180
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CE44  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #9
	bl sub_0804A748
	ldr r0, _0806CE48  @ =0xFFFFE000
	str r0, [r4, #36]
_0806CE32:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CE3C:
	.4byte 0x030006E4
_0806CE40:
	.4byte 0x000001B1
_0806CE44:
	.4byte gUnknown_086691BC
_0806CE48:
	.4byte 0xFFFFE000
	THUMB_FUNC_END sub_0806CDE8

	THUMB_FUNC_START sub_0806CE4C
sub_0806CE4C: @ 0x0806CE4C
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0806CEA0
	ldr r0, [r4, #92]
	ldr r1, _0806CEA8  @ =0xFF6FFFFF
	and r0, r0, r1
	str r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806CEA0
	ldr r2, _0806CEAC  @ =0x030006E4
	ldr r0, [r2]
	ldr r3, _0806CEB0  @ =0x000001B1
	add r0, r0, r3
	mov r1, #0
	strb r1, [r0]
	ldr r2, [r2]
	sub r3, r3, #149
	add r0, r2, r3
	strh r1, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CEB4  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #10
	bl sub_0804A748
_0806CEA0:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CEA8:
	.4byte 0xFF6FFFFF
_0806CEAC:
	.4byte 0x030006E4
_0806CEB0:
	.4byte 0x000001B1
_0806CEB4:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CE4C

	THUMB_FUNC_START sub_0806CEB8
sub_0806CEB8: @ 0x0806CEB8
	push {r4,lr}
	sub sp, sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806CEF8
	ldr r2, _0806CF00  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #192
	lsl r1, r1, #2
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0806CF04  @ =0x03001968
	ldrh r0, [r4]
	str r0, [r1]
	ldr r0, _0806CF08  @ =0x030006E4
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #24
	add r1, r4, #0
	add r1, r1, #64
	ldrb r3, [r1]
	ldrb r1, [r2, #16]
	str r1, [sp]
	ldr r1, _0806CF0C  @ =gUnknown_086691BC
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, #11
	bl sub_0804A748
_0806CEF8:
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0806CF00:
	.4byte gUnknown_03001A1C
_0806CF04:
	.4byte 0x03001968
_0806CF08:
	.4byte 0x030006E4
_0806CF0C:
	.4byte gUnknown_086691BC
	THUMB_FUNC_END sub_0806CEB8

	THUMB_FUNC_START sub_0806CF10
sub_0806CF10: @ 0x0806CF10
	push {lr}
	add r0, r0, #84
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #182
	lsl r0, r0, #1
	cmp r1, r0
	bne _0806CF26
	mov r0, #180
	bl sub_08071E14
_0806CF26:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806CF10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806CF2C
sub_0806CF2C: @ 0x0806CF2C
	push {lr}
	bl sub_08055AE4
	ldr r0, _0806CF4C  @ =gUnknown_030009F4
	ldr r2, _0806CF50  @ =0x0806B6B1
	str r2, [r0]
	ldr r1, _0806CF54  @ =gUnknown_030009F8
	ldr r0, _0806CF58  @ =0x0806B961
	str r0, [r1]
	ldr r1, _0806CF5C  @ =gUnknown_03000A00
	ldr r0, _0806CF60  @ =0x0806CF65
	str r0, [r1]
	bl _call_via_r2
	pop {r0}
	bx r0
_0806CF4C:
	.4byte gUnknown_030009F4
_0806CF50:
	.4byte sub_0806B6B0
_0806CF54:
	.4byte gUnknown_030009F8
_0806CF58:
	.4byte sub_0806B960
_0806CF5C:
	.4byte gUnknown_03000A00
_0806CF60:
	.4byte sub_0806CF64
	THUMB_FUNC_END sub_0806CF2C

	THUMB_FUNC_START sub_0806CF64
sub_0806CF64: @ 0x0806CF64
	push {lr}
	ldr r1, _0806CF94  @ =gUnknown_030009F4
	ldr r0, _0806CF98  @ =0x080572B5
	str r0, [r1]
	ldr r1, _0806CF9C  @ =gUnknown_030009F8
	ldr r0, _0806CFA0  @ =0x08057325
	str r0, [r1]
	ldr r2, _0806CFA4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #134
	lsl r1, r1, #7
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #18
	bl sub_08071E14
	ldr r2, _0806CFA8  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _0806CFAC  @ =0xFFFFFBFF
	and r0, r0, r1
	str r0, [r2]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806CF94:
	.4byte gUnknown_030009F4
_0806CF98:
	.4byte sub_080572B4
_0806CF9C:
	.4byte gUnknown_030009F8
_0806CFA0:
	.4byte sub_08057324
_0806CFA4:
	.4byte gUnknown_03001A1C
_0806CFA8:
	.4byte gUnknown_03001938
_0806CFAC:
	.4byte 0xFFFFFBFF
	THUMB_FUNC_END sub_0806CF64

	THUMB_FUNC_START sub_0806CFB0
sub_0806CFB0: @ 0x0806CFB0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	add r5, r1, #0
	ldr r3, _0806D150  @ =0x03001D70
	add r0, r3, #0
	add r0, r0, #144
	mov r1, #0
	str r1, [r0]
	add r0, r0, #4
	mov r2, #0
	strh r1, [r0]
	strh r1, [r3, #42]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #2
	strh r1, [r0]
	add r0, r0, #8
	strb r2, [r0]
	mov r2, #0
	add r6, r3, #0
	ldr r4, _0806D154  @ =0x030019AC
	ldr r0, _0806D158  @ =gUnknown_082F241C
	mov r9, r0
	mov r8, r6
	mov r12, r4
_0806CFE8:
	lsl r1, r2, #1
	add r1, r1, r8
	mov r3, r12
	ldr r0, [r3]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	strh r0, [r1]
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #20
	bls _0806CFE8
	ldr r0, [r4]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	add r1, r6, #0
	add r1, r1, #134
	mov r2, #0
	mov r8, r2
	strh r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	add r1, r1, #4
	strh r0, [r1]
	ldr r0, [r4]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	add r1, r1, #2
	strh r0, [r1]
	add r1, r1, #16
	ldr r0, _0806D15C  @ =0x0000FFFF
	strh r0, [r1]
	ldrh r0, [r7]
	str r0, [r6, #44]
	mov r4, #128
	lsl r4, r4, #2
	mov r0, r9
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #48]
	ldr r0, _0806D160  @ =gUnknown_082F3350
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #52]
	ldr r0, _0806D164  @ =gUnknown_082F2648
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #56]
	ldr r0, _0806D168  @ =gUnknown_082F2AA0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #60]
	ldr r0, _0806D16C  @ =gUnknown_082F2EF8
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #64]
	ldr r0, _0806D170  @ =gUnknown_082F357C
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #68]
	ldr r0, _0806D174  @ =gUnknown_082F2874
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #72]
	ldr r0, _0806D178  @ =gUnknown_082F2CCC
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #76]
	ldr r0, _0806D17C  @ =gUnknown_082F3124
	add r1, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_0800F0C4
	str r0, [r6, #80]
	ldr r0, _0806D180  @ =gUnknown_082F2014
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	str r0, [r6, #84]
	ldr r0, _0806D184  @ =gUnknown_082F20C0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	str r0, [r6, #88]
	ldr r0, _0806D188  @ =gUnknown_082F216C
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	str r0, [r6, #92]
	ldr r0, _0806D18C  @ =gUnknown_082F2218
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	str r0, [r6, #96]
	ldr r0, _0806D190  @ =gUnknown_082F22C4
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	str r0, [r6, #100]
	ldr r0, _0806D194  @ =gUnknown_082F2370
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #128
	bl sub_0800F0C4
	str r0, [r6, #104]
	ldr r0, _0806D198  @ =gUnknown_082F37A8
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #32
	bl sub_0800F0C4
	ldr r0, [r6, #44]
	str r0, [r6, #108]
	ldr r0, _0806D19C  @ =gUnknown_082F2414
	str r0, [r6, #112]
	ldr r0, [r6, #80]
	str r0, [r6, #116]
	ldr r0, _0806D1A0  @ =gUnknown_082F200C
	str r0, [r6, #120]
	ldr r0, [r6, #92]
	str r0, [r6, #124]
	add r1, r6, #0
	add r1, r1, #128
	ldr r0, _0806D1A4  @ =gUnknown_082F2210
	str r0, [r1]
	ldr r0, _0806D1A8  @ =0x03001E20
	mov r3, r8
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #12]
	str r3, [r0, #16]
	str r3, [r0, #20]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806D150:
	.4byte 0x03001D70
_0806D154:
	.4byte 0x030019AC
_0806D158:
	.4byte gUnknown_082F241C
_0806D15C:
	.4byte 0x0000FFFF
_0806D160:
	.4byte gUnknown_082F3350
_0806D164:
	.4byte gUnknown_082F2648
_0806D168:
	.4byte gUnknown_082F2AA0
_0806D16C:
	.4byte gUnknown_082F2EF8
_0806D170:
	.4byte gUnknown_082F357C
_0806D174:
	.4byte gUnknown_082F2874
_0806D178:
	.4byte gUnknown_082F2CCC
_0806D17C:
	.4byte gUnknown_082F3124
_0806D180:
	.4byte gUnknown_082F2014
_0806D184:
	.4byte gUnknown_082F20C0
_0806D188:
	.4byte gUnknown_082F216C
_0806D18C:
	.4byte gUnknown_082F2218
_0806D190:
	.4byte gUnknown_082F22C4
_0806D194:
	.4byte gUnknown_082F2370
_0806D198:
	.4byte gUnknown_082F37A8
_0806D19C:
	.4byte gUnknown_082F2414
_0806D1A0:
	.4byte gUnknown_082F200C
_0806D1A4:
	.4byte gUnknown_082F2210
_0806D1A8:
	.4byte 0x03001E20
	THUMB_FUNC_END sub_0806CFB0

	THUMB_FUNC_START sub_0806D1AC
sub_0806D1AC: @ 0x0806D1AC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	lsl r0, r0, #16
	lsr r7, r0, #16
	lsl r1, r1, #16
	lsr r6, r1, #16
	ldr r4, _0806D1E4  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #156
	ldrh r1, [r0]
	ldr r0, _0806D1E8  @ =0x0000FFFF
	mov r9, r4
	cmp r1, r0
	bne _0806D1D0
	b _0806D77A
_0806D1D0:
	ldr r0, _0806D1EC  @ =0x03001E20
	ldr r3, [r0]
	mov r8, r0
	cmp r3, #1
	bne _0806D1F4
	ldr r0, [r4, #72]
	str r0, [r4, #108]
	ldr r0, _0806D1F0  @ =gUnknown_082F2CC4
	str r0, [r4, #112]
	b _0806D576
_0806D1E4:
	.4byte 0x03001D70
_0806D1E8:
	.4byte 0x0000FFFF
_0806D1EC:
	.4byte 0x03001E20
_0806D1F0:
	.4byte gUnknown_082F2CC4
_0806D1F4:
	mov r0, r8
	ldr r2, [r0, #4]
	cmp r2, #1
	bne _0806D20C
	mov r1, r9
	ldr r0, [r1, #76]
	str r0, [r1, #108]
	ldr r0, _0806D208  @ =gUnknown_082F311C
	b _0806D574
	.byte 0x00
	.byte 0x00
_0806D208:
	.4byte gUnknown_082F311C
_0806D20C:
	mov r5, r8
	ldr r1, [r5, #8]
	cmp r1, #1
	bne _0806D224
	mov r1, r9
	ldr r0, [r1, #64]
	str r0, [r1, #108]
	ldr r0, _0806D220  @ =gUnknown_082F3574
	b _0806D574
	.byte 0x00
	.byte 0x00
_0806D220:
	.4byte gUnknown_082F3574
_0806D224:
	mov r5, r8
	ldr r0, [r5, #12]
	cmp r0, #1
	bne _0806D23C
	mov r1, r9
	ldr r0, [r1, #68]
	str r0, [r1, #108]
	ldr r0, _0806D238  @ =gUnknown_082F286C
	b _0806D574
	.byte 0x00
	.byte 0x00
_0806D238:
	.4byte gUnknown_082F286C
_0806D23C:
	cmp r3, #2
	bne _0806D25C
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D2C8
	mov r2, r9
	ldr r0, [r2, #72]
	str r0, [r2, #108]
	ldr r0, _0806D258  @ =gUnknown_082F2CC4
	str r0, [r2, #112]
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D258:
	.4byte gUnknown_082F2CC4
_0806D25C:
	cmp r2, #2
	bne _0806D288
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D278
	mov r1, r9
	ldr r0, [r1, #76]
	str r0, [r1, #108]
	ldr r0, _0806D274  @ =gUnknown_082F311C
	b _0806D574
_0806D274:
	.4byte gUnknown_082F311C
_0806D278:
	mov r2, r9
	ldr r0, [r2, #44]
	str r0, [r2, #108]
	ldr r0, _0806D284  @ =gUnknown_082F2414
	str r0, [r2, #112]
	b _0806D576
_0806D284:
	.4byte gUnknown_082F2414
_0806D288:
	cmp r1, #2
	bne _0806D2A8
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bls _0806D298
	b _0806D56C
_0806D298:
	mov r5, r9
	ldr r0, [r5, #64]
	str r0, [r5, #108]
	ldr r0, _0806D2A4  @ =gUnknown_082F3574
	str r0, [r5, #112]
	b _0806D576
_0806D2A4:
	.4byte gUnknown_082F3574
_0806D2A8:
	cmp r0, #2
	bne _0806D2D8
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D2C8
	mov r2, r9
	ldr r0, [r2, #68]
	str r0, [r2, #108]
	ldr r0, _0806D2C4  @ =gUnknown_082F286C
	str r0, [r2, #112]
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D2C4:
	.4byte gUnknown_082F286C
_0806D2C8:
	mov r5, r9
	ldr r0, [r5, #44]
	str r0, [r5, #108]
	ldr r0, _0806D2D4  @ =gUnknown_082F2414
	str r0, [r5, #112]
	b _0806D576
_0806D2D4:
	.4byte gUnknown_082F2414
_0806D2D8:
	mov r2, #64
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D388
	cmp r1, #3
	beq _0806D388
	mov r0, r9
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D33C
	mov r5, r9
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D30E
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D30E:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D324
	ldr r0, [r4, #48]
	str r0, [r4, #108]
	ldr r0, _0806D320  @ =gUnknown_082F3348
	str r0, [r4, #112]
	b _0806D410
	.byte 0x00
	.byte 0x00
_0806D320:
	.4byte gUnknown_082F3348
_0806D324:
	ldr r0, [r4, #44]
	str r0, [r4, #108]
	ldr r0, _0806D334  @ =gUnknown_082F2414
	str r0, [r4, #112]
	ldr r1, _0806D338  @ =0x03001E20
	mov r8, r1
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D334:
	.4byte gUnknown_082F2414
_0806D338:
	.4byte 0x03001E20
_0806D33C:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D366
	ldr r0, _0806D378  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D366
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D366:
	ldr r0, _0806D37C  @ =0x03001D70
	ldr r1, [r0, #48]
	str r1, [r0, #108]
	ldr r1, _0806D380  @ =gUnknown_082F3348
	str r1, [r0, #112]
	mov r9, r0
	ldr r2, _0806D384  @ =0x03001E20
	mov r8, r2
	b _0806D576
_0806D378:
	.4byte gUnknown_03001938
_0806D37C:
	.4byte 0x03001D70
_0806D380:
	.4byte gUnknown_082F3348
_0806D384:
	.4byte 0x03001E20
_0806D388:
	mov r2, #128
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D428
	mov r5, r8
	ldr r0, [r5, #12]
	cmp r0, #3
	beq _0806D428
	ldr r4, _0806D3D4  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D3DC
	add r5, r4, #0
	add r5, r5, #158
	ldrh r0, [r5]
	cmp r0, #0
	bne _0806D3C2
	str r0, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D3C2:
	ldrh r0, [r5]
	cmp r0, #4
	bls _0806D3CA
	b _0806D510
_0806D3CA:
	ldr r0, [r4, #52]
	str r0, [r4, #108]
	ldr r0, _0806D3D8  @ =gUnknown_082F2640
	b _0806D516
	.byte 0x00
	.byte 0x00
_0806D3D4:
	.4byte 0x03001D70
_0806D3D8:
	.4byte gUnknown_082F2640
_0806D3DC:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D404
	ldr r0, _0806D418  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D404
	str r1, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D404:
	ldr r0, _0806D41C  @ =0x03001D70
	ldr r1, [r0, #52]
	str r1, [r0, #108]
	ldr r1, _0806D420  @ =gUnknown_082F2640
	str r1, [r0, #112]
	mov r9, r0
_0806D410:
	ldr r0, _0806D424  @ =0x03001E20
	mov r8, r0
	b _0806D576
	.byte 0x00
	.byte 0x00
_0806D418:
	.4byte gUnknown_03001938
_0806D41C:
	.4byte 0x03001D70
_0806D420:
	.4byte gUnknown_082F2640
_0806D424:
	.4byte 0x03001E20
_0806D428:
	mov r1, #32
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D4BC
	mov r2, r8
	ldr r0, [r2]
	cmp r0, #3
	beq _0806D4BC
	ldr r4, _0806D474  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D47C
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D464
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D464:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D510
	ldr r0, [r4, #56]
	str r0, [r4, #108]
	ldr r0, _0806D478  @ =gUnknown_082F2A98
	b _0806D516
	.byte 0x00
	.byte 0x00
_0806D474:
	.4byte 0x03001D70
_0806D478:
	.4byte gUnknown_082F2A98
_0806D47C:
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D4A6
	ldr r0, _0806D4B0  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D4A6
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D4A6:
	ldr r0, _0806D4B4  @ =0x03001D70
	ldr r1, [r0, #56]
	str r1, [r0, #108]
	ldr r1, _0806D4B8  @ =gUnknown_082F2A98
	b _0806D552
_0806D4B0:
	.4byte gUnknown_03001938
_0806D4B4:
	.4byte 0x03001D70
_0806D4B8:
	.4byte gUnknown_082F2A98
_0806D4BC:
	mov r1, #16
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D56C
	mov r2, r8
	ldr r0, [r2, #4]
	cmp r0, #3
	beq _0806D56C
	ldr r4, _0806D508  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D520
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D4F8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D4F8:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D510
	ldr r0, [r4, #60]
	str r0, [r4, #108]
	ldr r0, _0806D50C  @ =gUnknown_082F2EF0
	b _0806D516
	.byte 0x00
	.byte 0x00
_0806D508:
	.4byte 0x03001D70
_0806D50C:
	.4byte gUnknown_082F2EF0
_0806D510:
	ldr r0, [r4, #44]
	str r0, [r4, #108]
	ldr r0, _0806D51C  @ =gUnknown_082F2414
_0806D516:
	str r0, [r4, #112]
	mov r9, r4
	b _0806D576
_0806D51C:
	.4byte gUnknown_082F2414
_0806D520:
	add r0, r7, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806D54A
	ldr r0, _0806D55C  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D54A
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D54A:
	ldr r0, _0806D560  @ =0x03001D70
	ldr r1, [r0, #60]
	str r1, [r0, #108]
	ldr r1, _0806D564  @ =gUnknown_082F2EF0
_0806D552:
	str r1, [r0, #112]
	mov r9, r0
	ldr r5, _0806D568  @ =0x03001E20
	mov r8, r5
	b _0806D576
_0806D55C:
	.4byte gUnknown_03001938
_0806D560:
	.4byte 0x03001D70
_0806D564:
	.4byte gUnknown_082F2EF0
_0806D568:
	.4byte 0x03001E20
_0806D56C:
	mov r1, r9
	ldr r0, [r1, #44]
	str r0, [r1, #108]
	ldr r0, _0806D58C  @ =gUnknown_082F2414
_0806D574:
	str r0, [r1, #112]
_0806D576:
	mov r2, r8
	ldr r1, [r2, #16]
	cmp r1, #1
	bne _0806D594
	mov r5, r9
	ldr r0, [r5, #88]
	str r0, [r5, #116]
	ldr r0, _0806D590  @ =gUnknown_082F2164
	str r0, [r5, #120]
	b _0806D676
	.byte 0x00
	.byte 0x00
_0806D58C:
	.4byte gUnknown_082F2414
_0806D590:
	.4byte gUnknown_082F2164
_0806D594:
	cmp r1, #2
	bne _0806D5C0
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D5B0
	mov r1, r9
	ldr r0, [r1, #88]
	str r0, [r1, #116]
	ldr r0, _0806D5AC  @ =gUnknown_082F2164
	b _0806D674
_0806D5AC:
	.4byte gUnknown_082F2164
_0806D5B0:
	mov r2, r9
	ldr r0, [r2, #80]
	str r0, [r2, #116]
	ldr r0, _0806D5BC  @ =gUnknown_082F200C
	str r0, [r2, #120]
	b _0806D676
_0806D5BC:
	.4byte gUnknown_082F200C
_0806D5C0:
	mov r2, #1
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D66C
	cmp r1, #3
	beq _0806D66C
	ldr r4, _0806D608  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D620
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D5F8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D5F8:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D610
	ldr r0, [r4, #84]
	str r0, [r4, #116]
	ldr r0, _0806D60C  @ =gUnknown_082F20B8
	b _0806D616
	.byte 0x00
	.byte 0x00
_0806D608:
	.4byte 0x03001D70
_0806D60C:
	.4byte gUnknown_082F20B8
_0806D610:
	ldr r0, [r4, #80]
	str r0, [r4, #116]
	ldr r0, _0806D61C  @ =gUnknown_082F200C
_0806D616:
	str r0, [r4, #120]
	mov r9, r4
	b _0806D676
_0806D61C:
	.4byte gUnknown_082F200C
_0806D620:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D64A
	ldr r0, _0806D65C  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D64A
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D64A:
	ldr r0, _0806D660  @ =0x03001D70
	ldr r1, [r0, #84]
	str r1, [r0, #116]
	ldr r1, _0806D664  @ =gUnknown_082F20B8
	str r1, [r0, #120]
	mov r9, r0
	ldr r5, _0806D668  @ =0x03001E20
	mov r8, r5
	b _0806D676
_0806D65C:
	.4byte gUnknown_03001938
_0806D660:
	.4byte 0x03001D70
_0806D664:
	.4byte gUnknown_082F20B8
_0806D668:
	.4byte 0x03001E20
_0806D66C:
	mov r1, r9
	ldr r0, [r1, #80]
	str r0, [r1, #116]
	ldr r0, _0806D68C  @ =gUnknown_082F200C
_0806D674:
	str r0, [r1, #120]
_0806D676:
	mov r2, r8
	ldr r1, [r2, #20]
	cmp r1, #1
	bne _0806D694
	mov r5, r9
	ldr r0, [r5, #100]
	str r0, [r5, #124]
	mov r1, r9
	add r1, r1, #128
	ldr r0, _0806D690  @ =gUnknown_082F2368
	b _0806D778
_0806D68C:
	.4byte gUnknown_082F200C
_0806D690:
	.4byte gUnknown_082F2368
_0806D694:
	cmp r1, #2
	bne _0806D6BC
	mov r0, r9
	add r0, r0, #158
	ldrh r0, [r0]
	cmp r0, #4
	bhi _0806D6B4
	mov r1, r9
	ldr r0, [r1, #100]
	str r0, [r1, #124]
	add r1, r1, #128
	ldr r0, _0806D6B0  @ =gUnknown_082F2368
	b _0806D778
	.byte 0x00
	.byte 0x00
_0806D6B0:
	.4byte gUnknown_082F2368
_0806D6B4:
	mov r2, r9
	ldr r0, [r2, #92]
	str r0, [r2, #124]
	b _0806D772
_0806D6BC:
	mov r2, #2
	add r0, r6, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D76C
	cmp r1, #3
	beq _0806D76C
	ldr r4, _0806D708  @ =0x03001D70
	add r0, r4, #0
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806D724
	add r5, r4, #0
	add r5, r5, #158
	ldrh r1, [r5]
	cmp r1, #0
	bne _0806D6F4
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D6F4:
	ldrh r0, [r5]
	cmp r0, #4
	bhi _0806D710
	ldr r0, [r4, #96]
	str r0, [r4, #124]
	add r1, r4, #0
	add r1, r1, #128
	ldr r0, _0806D70C  @ =gUnknown_082F22BC
	b _0806D71A
	.byte 0x00
	.byte 0x00
_0806D708:
	.4byte 0x03001D70
_0806D70C:
	.4byte gUnknown_082F22BC
_0806D710:
	ldr r0, [r4, #92]
	str r0, [r4, #124]
	add r1, r4, #0
	add r1, r1, #128
	ldr r0, _0806D720  @ =gUnknown_082F2210
_0806D71A:
	str r0, [r1]
	mov r9, r4
	b _0806D77A
_0806D720:
	.4byte gUnknown_082F2210
_0806D724:
	add r0, r7, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0806D74E
	ldr r0, _0806D760  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r1, r1, r0
	cmp r1, #0
	bne _0806D74E
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D74E:
	ldr r1, _0806D764  @ =0x03001D70
	ldr r0, [r1, #96]
	str r0, [r1, #124]
	add r2, r1, #0
	add r2, r2, #128
	ldr r0, _0806D768  @ =gUnknown_082F22BC
	str r0, [r2]
	mov r9, r1
	b _0806D77A
_0806D760:
	.4byte gUnknown_03001938
_0806D764:
	.4byte 0x03001D70
_0806D768:
	.4byte gUnknown_082F22BC
_0806D76C:
	mov r5, r9
	ldr r0, [r5, #92]
	str r0, [r5, #124]
_0806D772:
	mov r1, r9
	add r1, r1, #128
	ldr r0, _0806D7E4  @ =gUnknown_082F2210
_0806D778:
	str r0, [r1]
_0806D77A:
	mov r0, r9
	add r0, r0, #160
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806D7A4
	ldr r1, _0806D7E8  @ =0x03001E20
	ldr r0, [r1, #8]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1, #12]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1, #16]
	cmp r0, #2
	beq _0806D7A4
	ldr r0, [r1, #20]
	cmp r0, #2
	bne _0806D7D4
_0806D7A4:
	mov r4, r9
	add r4, r4, #158
	ldrh r1, [r4]
	cmp r1, #0
	bne _0806D7C2
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #102
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0806D7C2:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #9
	bls _0806D7D4
	mov r0, #0
	strh r0, [r4]
_0806D7D4:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806D7E4:
	.4byte gUnknown_082F2210
_0806D7E8:
	.4byte 0x03001E20
	THUMB_FUNC_END sub_0806D1AC

	THUMB_FUNC_START sub_0806D7EC
sub_0806D7EC: @ 0x0806D7EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r4, _0806D8C4  @ =0x030006E8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0806D808
	bl sub_08071CD4
	mov r0, #0
	strb r0, [r4]
_0806D808:
	ldr r0, _0806D8C8  @ =0x03001D70
	mov r12, r0
	mov r1, r12
	add r1, r1, #132
	mov r0, #0
	strh r0, [r1]
	mov r7, #0
	mov r6, #0
	ldr r4, _0806D8CC  @ =gUnknown_08B2D574
	ldr r5, _0806D8D0  @ =gUnknown_03000B74
	mov r1, #0
	ldrsb r1, [r5, r1]
	add r1, r1, #1
	asr r1, r1, #1
	ldr r3, _0806D8D4  @ =gUnknown_03000B58
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r1, r0, #3
	add r0, r1, r4
	mov r8, r4
	mov r9, r5
	mov r10, r3
	ldrb r0, [r0]
	cmp r6, r0
	bcs _0806D89A
	mov r0, r8
	add r0, r0, #4
	mov r5, r12
	add r5, r5, #142
	add r4, r1, r0
	mov r0, r12
	add r0, r0, #144
	ldr r3, [r0]
_0806D850:
	ldr r0, [r4]
	lsl r1, r6, #2
	add r1, r1, r6
	lsl r1, r1, #2
	add r2, r1, r0
	ldr r0, [r2, #12]
	cmp r0, r3
	bhi _0806D874
	ldr r0, [r2, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0806D870
	ldr r0, [r2, #16]
	cmp r0, r3
	bls _0806D874
_0806D870:
	strh r6, [r5]
	mov r7, #1
_0806D874:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r0, r10
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0806D850
_0806D89A:
	cmp r7, #0
	bne _0806D8A0
	b _0806DA74
_0806D8A0:
	mov r6, #0
	ldr r0, _0806D8D0  @ =gUnknown_03000B74
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	asr r1, r1, #1
	ldr r0, _0806D8D4  @ =gUnknown_03000B58
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r3, _0806D8D8  @ =gUnknown_08B2D578
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r3, r0, r3
	ldr r0, _0806D8DC  @ =0x03001DFE
	ldrh r2, [r0]
	b _0806D8F0
_0806D8C4:
	.4byte 0x030006E8
_0806D8C8:
	.4byte 0x03001D70
_0806D8CC:
	.4byte gUnknown_08B2D574
_0806D8D0:
	.4byte gUnknown_03000B74
_0806D8D4:
	.4byte gUnknown_03000B58
_0806D8D8:
	.4byte gUnknown_08B2D578
_0806D8DC:
	.4byte 0x03001DFE
_0806D8E0:
	mov r1, r12
	add r1, r1, #132
	ldrh r0, [r1]
	add r0, r0, #16
	strh r0, [r1]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
_0806D8F0:
	ldr r1, [r3]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0806D8E0
	mov r0, r12
	add r0, r0, #132
	ldrh r0, [r0]
	cmp r0, #0
	bne _0806D90C
	b _0806DA74
_0806D90C:
	mov r2, r9
	mov r1, #0
	ldrsb r1, [r2, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r3, r10
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	mov r1, r8
	add r1, r1, #4
	add r0, r0, r1
	mov r1, r12
	add r1, r1, #142
	ldrh r1, [r1]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r2
	ldr r0, [r2, #8]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806D9B8
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r2, #12]
	ldr r2, [r0]
	cmp r1, r2
	bne _0806D95A
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #1
	b _0806D9AC
_0806D95A:
	add r0, r1, #5
	cmp r0, r2
	bne _0806D96A
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #2
	b _0806D9AC
_0806D96A:
	add r0, r1, #0
	add r0, r0, #10
	cmp r0, r2
	bne _0806D97C
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #4
	b _0806D9AC
_0806D97C:
	add r0, r1, #0
	add r0, r0, #15
	cmp r0, r2
	bne _0806D998
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806D994  @ =0x0000FFFB
	and r0, r0, r1
	mov r1, #8
	b _0806D9AC
	.byte 0x00
	.byte 0x00
_0806D994:
	.4byte 0x0000FFFB
_0806D998:
	add r0, r1, #0
	add r0, r0, #20
	cmp r0, r2
	bne _0806D9C0
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806D9B4  @ =0x0000FFF7
	and r0, r0, r1
	mov r1, #16
_0806D9AC:
	orr r0, r0, r1
	strh r0, [r2]
	b _0806D9C0
	.byte 0x00
	.byte 0x00
_0806D9B4:
	.4byte 0x0000FFF7
_0806D9B8:
	mov r1, r12
	add r1, r1, #148
	mov r0, #19
	strh r0, [r1]
_0806D9C0:
	mov r0, r9
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r3, r10
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	mov r1, r8
	add r1, r1, #4
	add r0, r0, r1
	mov r1, r12
	add r1, r1, #142
	ldrh r1, [r1]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r4, r0, r2
	ldr r0, [r4, #8]
	mov r1, #6
	and r0, r0, r1
	cmp r0, #2
	bne _0806DA74
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r4, #16]
	ldr r2, [r0]
	cmp r1, r2
	bne _0806DA14
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806DA10  @ =0x0000FFFE
	b _0806DA70
	.byte 0x00
	.byte 0x00
_0806DA10:
	.4byte 0x0000FFFE
_0806DA14:
	sub r0, r1, #5
	cmp r0, r2
	bne _0806DA28
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806DA24  @ =0x0000FFFD
	b _0806DA70
_0806DA24:
	.4byte 0x0000FFFD
_0806DA28:
	add r0, r1, #0
	sub r0, r0, #10
	cmp r0, r2
	bne _0806DA40
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	ldr r0, _0806DA3C  @ =0x0000FFFB
	b _0806DA70
	.byte 0x00
	.byte 0x00
_0806DA3C:
	.4byte 0x0000FFFB
_0806DA40:
	add r0, r1, #0
	sub r0, r0, #15
	cmp r0, r2
	bne _0806DA5C
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #4
	orr r0, r0, r1
	ldr r1, _0806DA58  @ =0x0000FFF7
	b _0806DA70
	.byte 0x00
	.byte 0x00
_0806DA58:
	.4byte 0x0000FFF7
_0806DA5C:
	add r0, r1, #0
	sub r0, r0, #20
	cmp r0, r2
	bne _0806DA74
	mov r2, r12
	add r2, r2, #148
	ldrh r1, [r2]
	mov r0, #8
	orr r0, r0, r1
	ldr r1, _0806DAA4  @ =0x0000FFEF
_0806DA70:
	and r0, r0, r1
	strh r0, [r2]
_0806DA74:
	mov r0, r12
	ldrh r1, [r0, #42]
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r3, _0806DAA8  @ =0x030019AC
	ldr r2, [r3]
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
	strh r0, [r1]
	mov r0, r12
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #5
	bls _0806DABA
	mov r1, r12
	ldrh r0, [r1, #42]
	cmp r0, #4
	bhi _0806DAAC
	add r0, r0, #16
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DAC2
_0806DAA4:
	.4byte 0x0000FFEF
_0806DAA8:
	.4byte 0x030019AC
_0806DAAC:
	mov r2, r12
	ldrh r0, [r2, #42]
	sub r0, r0, #5
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DAC0
_0806DABA:
	ldr r0, [r2, #32]
	asr r0, r0, #8
	add r0, r0, #16
_0806DAC0:
	mov r1, r12
_0806DAC2:
	add r1, r1, #138
	strh r0, [r1]
	mov r0, r12
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #10
	bls _0806DAF0
	mov r3, r12
	ldrh r0, [r3, #42]
	cmp r0, #9
	bhi _0806DADC
	add r0, r0, #11
	b _0806DAE2
_0806DADC:
	mov r1, r12
	ldrh r0, [r1, #42]
	sub r0, r0, #10
_0806DAE2:
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r0]
	mov r0, r12
	add r0, r0, #140
	strh r1, [r0]
	b _0806DB00
_0806DAF0:
	ldr r2, _0806DB1C  @ =0x030019AC
	ldr r0, [r2]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
	mov r1, r12
	add r1, r1, #140
	strh r0, [r1]
_0806DB00:
	mov r0, r12
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #20
	bls _0806DB2E
	mov r3, r12
	ldrh r0, [r3, #42]
	cmp r0, #19
	bhi _0806DB20
	add r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DB38
_0806DB1C:
	.4byte 0x030019AC
_0806DB20:
	mov r1, r12
	ldrh r0, [r1, #42]
	sub r0, r0, #20
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r0, [r0]
	b _0806DB3A
_0806DB2E:
	ldr r2, _0806DB54  @ =0x030019AC
	ldr r0, [r2]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	add r0, r0, #16
_0806DB38:
	mov r1, r12
_0806DB3A:
	add r1, r1, #134
	strh r0, [r1]
	mov r2, r12
	add r2, r2, #140
	mov r1, r12
	add r1, r1, #138
	ldrh r0, [r2]
	ldrh r3, [r1]
	cmp r0, r3
	bls _0806DB58
	ldrh r1, [r1]
	b _0806DB5C
	.byte 0x00
	.byte 0x00
_0806DB54:
	.4byte 0x030019AC
_0806DB58:
	ldrh r0, [r1]
	ldrh r1, [r2]
_0806DB5C:
	sub r0, r0, r1
	asr r0, r0, #1
	mov r1, r12
	add r1, r1, #150
	strh r0, [r1]
	mov r2, r12
	add r2, r2, #134
	mov r1, r12
	add r1, r1, #140
	ldrh r0, [r2]
	ldrh r3, [r1]
	cmp r0, r3
	bls _0806DB7A
	ldrh r1, [r1]
	b _0806DB7E
_0806DB7A:
	ldrh r0, [r1]
	ldrh r1, [r2]
_0806DB7E:
	sub r0, r0, r1
	asr r0, r0, #1
	mov r1, r12
	add r1, r1, #152
	strh r0, [r1]
	mov r1, r12
	ldrh r0, [r1, #42]
	add r0, r0, #1
	strh r0, [r1, #42]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #20
	bls _0806DB9C
	mov r0, #0
	strh r0, [r1, #42]
_0806DB9C:
	ldr r2, _0806DBCC  @ =0x030019AC
	ldr r0, [r2]
	ldr r0, [r0, #36]
	asr r0, r0, #8
	sub r0, r0, #46
	mov r1, r12
	add r1, r1, #136
	strh r0, [r1]
	mov r6, #0
	ldr r4, _0806DBD0  @ =gUnknown_08B2DC74
	mov r5, r9
	mov r1, #0
	ldrsb r1, [r5, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r3, r10
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	b _0806DFEC
_0806DBCC:
	.4byte 0x030019AC
_0806DBD0:
	.4byte gUnknown_08B2DC74
_0806DBD4:
	mov r1, #0
	ldrsb r1, [r5, r1]
	add r1, r1, #1
	asr r1, r1, #1
	mov r2, #0
	ldrsb r2, [r3, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r1, r4, #4
	add r0, r0, r1
	ldr r1, [r0]
	lsl r0, r6, #3
	add r3, r0, r1
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r3, #4]
	ldr r0, [r0]
	cmp r1, r0
	beq _0806DC00
	b _0806DFC6
_0806DC00:
	ldr r0, [r3]
	cmp r0, #29
	bls _0806DC08
	b _0806DFC6
_0806DC08:
	lsl r0, r0, #2
	ldr r1, _0806DC14  @ =0x0806DC18
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806DC14:
	.4byte _0806DC18
_0806DC18:
	.4byte _0806DC90
	.4byte _0806DC9C
	.4byte _0806DCA8
	.4byte _0806DCB4
	.4byte _0806DCC0
	.4byte _0806DCCC
	.4byte _0806DCD8
	.4byte _0806DCEC
	.4byte _0806DD24
	.4byte _0806DD5C
	.4byte _0806DDA0
	.4byte _0806DDE0
	.4byte _0806DE04
	.4byte _0806DED8
	.4byte _0806DF04
	.4byte _0806DF30
	.4byte _0806DF68
	.4byte _0806DFA0
	.4byte _0806DFB8
	.4byte _0806DEB0
	.4byte _0806DEC8
	.4byte _0806DE24
	.4byte _0806DE30
	.4byte _0806DE3C
	.4byte _0806DE48
	.4byte _0806DE54
	.4byte _0806DE60
	.4byte _0806DE6C
	.4byte _0806DE80
	.4byte _0806DE9C
_0806DC90:
	ldr r1, _0806DC98  @ =0x03001E20
	mov r0, #0
	str r0, [r1]
	b _0806DFC6
_0806DC98:
	.4byte 0x03001E20
_0806DC9C:
	ldr r1, _0806DCA4  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #4]
	b _0806DFC6
_0806DCA4:
	.4byte 0x03001E20
_0806DCA8:
	ldr r1, _0806DCB0  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #8]
	b _0806DFC6
_0806DCB0:
	.4byte 0x03001E20
_0806DCB4:
	ldr r1, _0806DCBC  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #12]
	b _0806DFC6
_0806DCBC:
	.4byte 0x03001E20
_0806DCC0:
	ldr r1, _0806DCC8  @ =0x03001E20
	mov r0, #0
	str r0, [r1, #16]
	b _0806DFC6
_0806DCC8:
	.4byte 0x03001E20
_0806DCCC:
	ldr r1, _0806DCD4  @ =0x03001E20
	mov r0, #0
	b _0806DFC4
	.byte 0x00
	.byte 0x00
_0806DCD4:
	.4byte 0x03001E20
_0806DCD8:
	ldr r1, _0806DCE8  @ =0x03001E20
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	b _0806DFC4
_0806DCE8:
	.4byte 0x03001E20
_0806DCEC:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DD20  @ =0x03001E20
	mov r0, #1
	str r0, [r1]
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD12
	str r4, [r1, #4]
_0806DD12:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD8C
	str r4, [r1, #8]
	b _0806DD8C
	.byte 0x00
	.byte 0x00
_0806DD20:
	.4byte 0x03001E20
_0806DD24:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DD58  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD46
	str r4, [r1]
_0806DD46:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD8C
	str r4, [r1, #8]
	b _0806DD8C
	.byte 0x00
	.byte 0x00
_0806DD58:
	.4byte 0x03001E20
_0806DD5C:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DD9C  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD7E
	str r4, [r1]
_0806DD7E:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DD88
	str r4, [r1, #4]
_0806DD88:
	mov r0, #1
	str r0, [r1, #8]
_0806DD8C:
	ldr r0, [r1, #12]
	sub r0, r0, #1
	cmp r0, #1
	bls _0806DD96
	b _0806DFC6
_0806DD96:
	str r4, [r1, #12]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DD9C:
	.4byte 0x03001E20
_0806DDA0:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DDDC  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DDC2
	str r4, [r1]
_0806DDC2:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DDCC
	str r4, [r1, #4]
_0806DDCC:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DDD6
	str r4, [r1, #8]
_0806DDD6:
	mov r0, #1
	str r0, [r1, #12]
	b _0806DFC6
_0806DDDC:
	.4byte 0x03001E20
_0806DDE0:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DE00  @ =0x03001E20
	mov r0, #1
	str r0, [r1, #16]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DE00:
	.4byte 0x03001E20
_0806DE04:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0806DE20  @ =0x03001E20
	mov r0, #1
	b _0806DFC4
_0806DE20:
	.4byte 0x03001E20
_0806DE24:
	ldr r1, _0806DE2C  @ =0x03001E20
	mov r0, #3
	str r0, [r1]
	b _0806DFC6
_0806DE2C:
	.4byte 0x03001E20
_0806DE30:
	ldr r1, _0806DE38  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #4]
	b _0806DFC6
_0806DE38:
	.4byte 0x03001E20
_0806DE3C:
	ldr r1, _0806DE44  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #8]
	b _0806DFC6
_0806DE44:
	.4byte 0x03001E20
_0806DE48:
	ldr r1, _0806DE50  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #12]
	b _0806DFC6
_0806DE50:
	.4byte 0x03001E20
_0806DE54:
	ldr r1, _0806DE5C  @ =0x03001E20
	mov r0, #3
	str r0, [r1, #16]
	b _0806DFC6
_0806DE5C:
	.4byte 0x03001E20
_0806DE60:
	ldr r1, _0806DE68  @ =0x03001E20
	mov r0, #3
	b _0806DFC4
	.byte 0x00
	.byte 0x00
_0806DE68:
	.4byte 0x03001E20
_0806DE6C:
	ldr r1, _0806DE7C  @ =0x03001E20
	mov r0, #3
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #12]
	str r0, [r1, #16]
	b _0806DFC4
_0806DE7C:
	.4byte 0x03001E20
_0806DE80:
	ldr r2, _0806DE94  @ =gUnknown_03001938
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #4
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _0806DE98  @ =0x030006E8
	mov r0, #1
	strb r0, [r1]
	b _0806DFC6
_0806DE94:
	.4byte gUnknown_03001938
_0806DE98:
	.4byte 0x030006E8
_0806DE9C:
	ldr r0, _0806DEA8  @ =gUnknown_03001938
	ldr r1, [r0]
	ldr r2, _0806DEAC  @ =0xFFFFF7FF
	and r1, r1, r2
	str r1, [r0]
	b _0806DFC6
_0806DEA8:
	.4byte gUnknown_03001938
_0806DEAC:
	.4byte 0xFFFFF7FF
_0806DEB0:
	ldr r0, _0806DEC4  @ =0x03001D70
	add r2, r0, #0
	add r2, r2, #158
	mov r1, #0
	strh r1, [r2]
	add r0, r0, #160
	mov r1, #1
	strb r1, [r0]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DEC4:
	.4byte 0x03001D70
_0806DEC8:
	ldr r0, _0806DED4  @ =0x03001D70
	add r0, r0, #160
	mov r1, #0
	strb r1, [r0]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DED4:
	.4byte 0x03001D70
_0806DED8:
	ldr r0, _0806DEFC  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF00  @ =0x03001E20
	mov r0, #2
	str r0, [r1]
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DEF0
	str r2, [r1, #4]
_0806DEF0:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF52
	str r2, [r1, #8]
	b _0806DF52
_0806DEFC:
	.4byte 0x03001D70
_0806DF00:
	.4byte 0x03001E20
_0806DF04:
	ldr r0, _0806DF28  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF2C  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF18
	str r2, [r1]
_0806DF18:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF52
	str r2, [r1, #8]
	b _0806DF52
_0806DF28:
	.4byte 0x03001D70
_0806DF2C:
	.4byte 0x03001E20
_0806DF30:
	ldr r0, _0806DF60  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF64  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF44
	str r2, [r1]
_0806DF44:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF4E
	str r2, [r1, #4]
_0806DF4E:
	mov r0, #2
	str r0, [r1, #8]
_0806DF52:
	ldr r0, [r1, #12]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DFC6
	str r2, [r1, #12]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DF60:
	.4byte 0x03001D70
_0806DF64:
	.4byte 0x03001E20
_0806DF68:
	ldr r0, _0806DF98  @ =0x03001D70
	add r0, r0, #158
	mov r2, #0
	strh r2, [r0]
	ldr r1, _0806DF9C  @ =0x03001E20
	ldr r0, [r1]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF7C
	str r2, [r1]
_0806DF7C:
	ldr r0, [r1, #4]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF86
	str r2, [r1, #4]
_0806DF86:
	ldr r0, [r1, #8]
	sub r0, r0, #1
	cmp r0, #1
	bhi _0806DF90
	str r2, [r1, #8]
_0806DF90:
	mov r0, #2
	str r0, [r1, #12]
	b _0806DFC6
	.byte 0x00
	.byte 0x00
_0806DF98:
	.4byte 0x03001D70
_0806DF9C:
	.4byte 0x03001E20
_0806DFA0:
	ldr r0, _0806DFB0  @ =0x03001D70
	add r0, r0, #158
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0806DFB4  @ =0x03001E20
	mov r0, #2
	str r0, [r1, #16]
	b _0806DFC6
_0806DFB0:
	.4byte 0x03001D70
_0806DFB4:
	.4byte 0x03001E20
_0806DFB8:
	ldr r0, _0806E010  @ =0x03001D70
	add r0, r0, #158
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0806E014  @ =0x03001E20
	mov r0, #2
_0806DFC4:
	str r0, [r1, #20]
_0806DFC6:
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r4, _0806E018  @ =gUnknown_08B2DC74
	ldr r5, _0806E01C  @ =gUnknown_03000B74
	mov r2, #0
	ldrsb r2, [r5, r2]
	add r2, r2, #1
	asr r2, r2, #1
	ldr r3, _0806E020  @ =gUnknown_03000B58
	mov r1, #0
	ldrsb r1, [r3, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r1, _0806E010  @ =0x03001D70
	mov r12, r1
_0806DFEC:
	ldrb r0, [r0]
	cmp r6, r0
	bcs _0806DFF4
	b _0806DBD4
_0806DFF4:
	mov r1, r12
	add r1, r1, #144
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806E010:
	.4byte 0x03001D70
_0806E014:
	.4byte 0x03001E20
_0806E018:
	.4byte gUnknown_08B2DC74
_0806E01C:
	.4byte gUnknown_03000B74
_0806E020:
	.4byte gUnknown_03000B58
	THUMB_FUNC_END sub_0806D7EC

	THUMB_FUNC_START sub_0806E024
sub_0806E024: @ 0x0806E024
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r3, #0
	ldr r7, [sp, #28]
	ldr r6, [sp, #32]
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r12, r1
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r8, r2
	cmp r0, #19
	bls _0806E044
	b _0806E55C
_0806E044:
	lsl r0, r0, #2
	ldr r1, _0806E050  @ =0x0806E054
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0806E050:
	.4byte _0806E054
_0806E054:
	.4byte _0806E0A4
	.4byte _0806E0D0
	.4byte _0806E0FC
	.4byte _0806E128
	.4byte _0806E154
	.4byte _0806E180
	.4byte _0806E228
	.4byte _0806E254
	.4byte _0806E2FC
	.4byte _0806E328
	.4byte _0806E354
	.4byte _0806E380
	.4byte _0806E3AC
	.4byte _0806E3D8
	.4byte _0806E404
	.4byte _0806E430
	.4byte _0806E45C
	.4byte _0806E488
	.4byte _0806E4B4
	.4byte _0806E4E0
_0806E0A4:
	ldr r2, _0806E0BC  @ =0x040000D4
	ldr r0, _0806E0C0  @ =gUnknown_0812D208
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E0C4  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E0C8  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E0CC  @ =gUnknown_0812D200
	b _0806E4F6
_0806E0BC:
	.4byte 0x040000D4
_0806E0C0:
	.4byte gUnknown_0812D208
_0806E0C4:
	.4byte 0x06010000
_0806E0C8:
	.4byte 0x84000020
_0806E0CC:
	.4byte gUnknown_0812D200
_0806E0D0:
	ldr r2, _0806E0E8  @ =0x040000D4
	ldr r0, _0806E0EC  @ =gUnknown_0812D2B4
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E0F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E0F4  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E0F8  @ =gUnknown_0812D2AC
	b _0806E4F6
_0806E0E8:
	.4byte 0x040000D4
_0806E0EC:
	.4byte gUnknown_0812D2B4
_0806E0F0:
	.4byte 0x06010000
_0806E0F4:
	.4byte 0x84000020
_0806E0F8:
	.4byte gUnknown_0812D2AC
_0806E0FC:
	ldr r2, _0806E114  @ =0x040000D4
	ldr r0, _0806E118  @ =gUnknown_0812D360
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E11C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E120  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E124  @ =gUnknown_0812D358
	b _0806E4F6
_0806E114:
	.4byte 0x040000D4
_0806E118:
	.4byte gUnknown_0812D360
_0806E11C:
	.4byte 0x06010000
_0806E120:
	.4byte 0x84000020
_0806E124:
	.4byte gUnknown_0812D358
_0806E128:
	ldr r2, _0806E140  @ =0x040000D4
	ldr r0, _0806E144  @ =gUnknown_0812D40C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E148  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E14C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E150  @ =gUnknown_0812D404
	b _0806E4F6
_0806E140:
	.4byte 0x040000D4
_0806E144:
	.4byte gUnknown_0812D40C
_0806E148:
	.4byte 0x06010000
_0806E14C:
	.4byte 0x84000020
_0806E150:
	.4byte gUnknown_0812D404
_0806E154:
	ldr r2, _0806E16C  @ =0x040000D4
	ldr r0, _0806E170  @ =gUnknown_0812CA9C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E174  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E178  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E17C  @ =gUnknown_0812CA94
	b _0806E4F6
_0806E16C:
	.4byte 0x040000D4
_0806E170:
	.4byte gUnknown_0812CA9C
_0806E174:
	.4byte 0x06010000
_0806E178:
	.4byte 0x84000020
_0806E17C:
	.4byte gUnknown_0812CA94
_0806E180:
	ldr r2, _0806E1FC  @ =0x040000D4
	ldr r0, _0806E200  @ =gUnknown_0812CA9C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E204  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E208  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E20C  @ =gUnknown_0812CA94
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806E210  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806E214  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0806E218  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _0806E21C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0806E220  @ =0x000001FF
	add r0, r1, #0
	mov r1, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E224  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, r8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	b _0806E54A
	.byte 0x00
	.byte 0x00
_0806E1FC:
	.4byte 0x040000D4
_0806E200:
	.4byte gUnknown_0812CA9C
_0806E204:
	.4byte 0x06010000
_0806E208:
	.4byte 0x84000020
_0806E20C:
	.4byte gUnknown_0812CA94
_0806E210:
	.4byte gOamBuffer
_0806E214:
	.4byte 0x84000002
_0806E218:
	.4byte 0x000003FF
_0806E21C:
	.4byte 0xFFFFFC00
_0806E220:
	.4byte 0x000001FF
_0806E224:
	.4byte 0xFFFFFE00
_0806E228:
	ldr r2, _0806E240  @ =0x040000D4
	ldr r0, _0806E244  @ =gUnknown_0812CB48
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E248  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E24C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E250  @ =gUnknown_0812CB40
	b _0806E4F6
_0806E240:
	.4byte 0x040000D4
_0806E244:
	.4byte gUnknown_0812CB48
_0806E248:
	.4byte 0x06010000
_0806E24C:
	.4byte 0x84000020
_0806E250:
	.4byte gUnknown_0812CB40
_0806E254:
	ldr r2, _0806E2D0  @ =0x040000D4
	ldr r0, _0806E2D4  @ =gUnknown_0812CB48
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E2D8  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E2DC  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E2E0  @ =gUnknown_0812CB40
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806E2E4  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806E2E8  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0806E2EC  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _0806E2F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0806E2F4  @ =0x000001FF
	add r0, r1, #0
	mov r1, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E2F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, r8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r0, [r1, #3]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1, #3]
	b _0806E54A
	.byte 0x00
	.byte 0x00
_0806E2D0:
	.4byte 0x040000D4
_0806E2D4:
	.4byte gUnknown_0812CB48
_0806E2D8:
	.4byte 0x06010000
_0806E2DC:
	.4byte 0x84000020
_0806E2E0:
	.4byte gUnknown_0812CB40
_0806E2E4:
	.4byte gOamBuffer
_0806E2E8:
	.4byte 0x84000002
_0806E2EC:
	.4byte 0x000003FF
_0806E2F0:
	.4byte 0xFFFFFC00
_0806E2F4:
	.4byte 0x000001FF
_0806E2F8:
	.4byte 0xFFFFFE00
_0806E2FC:
	ldr r2, _0806E314  @ =0x040000D4
	ldr r0, _0806E318  @ =gUnknown_0812D768
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E31C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E320  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E324  @ =gUnknown_0812D760
	b _0806E4F6
_0806E314:
	.4byte 0x040000D4
_0806E318:
	.4byte gUnknown_0812D768
_0806E31C:
	.4byte 0x06010000
_0806E320:
	.4byte 0x84000020
_0806E324:
	.4byte gUnknown_0812D760
_0806E328:
	ldr r2, _0806E340  @ =0x040000D4
	ldr r0, _0806E344  @ =gUnknown_0812D4B8
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E348  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E34C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E350  @ =gUnknown_0812D4B0
	b _0806E4F6
_0806E340:
	.4byte 0x040000D4
_0806E344:
	.4byte gUnknown_0812D4B8
_0806E348:
	.4byte 0x06010000
_0806E34C:
	.4byte 0x84000020
_0806E350:
	.4byte gUnknown_0812D4B0
_0806E354:
	ldr r2, _0806E36C  @ =0x040000D4
	ldr r0, _0806E370  @ =gUnknown_0812DA18
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E374  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E378  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E37C  @ =gUnknown_0812DA10
	b _0806E4F6
_0806E36C:
	.4byte 0x040000D4
_0806E370:
	.4byte gUnknown_0812DA18
_0806E374:
	.4byte 0x06010000
_0806E378:
	.4byte 0x84000020
_0806E37C:
	.4byte gUnknown_0812DA10
_0806E380:
	ldr r2, _0806E398  @ =0x040000D4
	ldr r0, _0806E39C  @ =gUnknown_0812D8C0
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E3A0  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E3A4  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E3A8  @ =gUnknown_0812D8B8
	b _0806E4F6
_0806E398:
	.4byte 0x040000D4
_0806E39C:
	.4byte gUnknown_0812D8C0
_0806E3A0:
	.4byte 0x06010000
_0806E3A4:
	.4byte 0x84000020
_0806E3A8:
	.4byte gUnknown_0812D8B8
_0806E3AC:
	ldr r2, _0806E3C4  @ =0x040000D4
	ldr r0, _0806E3C8  @ =gUnknown_0812DB70
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E3CC  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E3D0  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E3D4  @ =gUnknown_0812DB68
	b _0806E4F6
_0806E3C4:
	.4byte 0x040000D4
_0806E3C8:
	.4byte gUnknown_0812DB70
_0806E3CC:
	.4byte 0x06010000
_0806E3D0:
	.4byte 0x84000020
_0806E3D4:
	.4byte gUnknown_0812DB68
_0806E3D8:
	ldr r2, _0806E3F0  @ =0x040000D4
	ldr r0, _0806E3F4  @ =gUnknown_0812D814
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E3F8  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E3FC  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E400  @ =gUnknown_0812D80C
	b _0806E4F6
_0806E3F0:
	.4byte 0x040000D4
_0806E3F4:
	.4byte gUnknown_0812D814
_0806E3F8:
	.4byte 0x06010000
_0806E3FC:
	.4byte 0x84000020
_0806E400:
	.4byte gUnknown_0812D80C
_0806E404:
	ldr r2, _0806E41C  @ =0x040000D4
	ldr r0, _0806E420  @ =gUnknown_0812D610
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E424  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E428  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E42C  @ =gUnknown_0812D608
	b _0806E4F6
_0806E41C:
	.4byte 0x040000D4
_0806E420:
	.4byte gUnknown_0812D610
_0806E424:
	.4byte 0x06010000
_0806E428:
	.4byte 0x84000020
_0806E42C:
	.4byte gUnknown_0812D608
_0806E430:
	ldr r2, _0806E448  @ =0x040000D4
	ldr r0, _0806E44C  @ =gUnknown_0812CBF4
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E450  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E454  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E458  @ =gUnknown_0812CBEC
	b _0806E4F6
_0806E448:
	.4byte 0x040000D4
_0806E44C:
	.4byte gUnknown_0812CBF4
_0806E450:
	.4byte 0x06010000
_0806E454:
	.4byte 0x84000020
_0806E458:
	.4byte gUnknown_0812CBEC
_0806E45C:
	ldr r2, _0806E474  @ =0x040000D4
	ldr r0, _0806E478  @ =gUnknown_0812D6BC
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E47C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E480  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E484  @ =gUnknown_0812D6B4
	b _0806E4F6
_0806E474:
	.4byte 0x040000D4
_0806E478:
	.4byte gUnknown_0812D6BC
_0806E47C:
	.4byte 0x06010000
_0806E480:
	.4byte 0x84000020
_0806E484:
	.4byte gUnknown_0812D6B4
_0806E488:
	ldr r2, _0806E4A0  @ =0x040000D4
	ldr r0, _0806E4A4  @ =gUnknown_0812DC1C
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E4A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E4AC  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E4B0  @ =gUnknown_0812DC14
	b _0806E4F6
_0806E4A0:
	.4byte 0x040000D4
_0806E4A4:
	.4byte gUnknown_0812DC1C
_0806E4A8:
	.4byte 0x06010000
_0806E4AC:
	.4byte 0x84000020
_0806E4B0:
	.4byte gUnknown_0812DC14
_0806E4B4:
	ldr r2, _0806E4CC  @ =0x040000D4
	ldr r0, _0806E4D0  @ =gUnknown_0812DAC4
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E4D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E4D8  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E4DC  @ =gUnknown_0812DABC
	b _0806E4F6
_0806E4CC:
	.4byte 0x040000D4
_0806E4D0:
	.4byte gUnknown_0812DAC4
_0806E4D4:
	.4byte 0x06010000
_0806E4D8:
	.4byte 0x84000020
_0806E4DC:
	.4byte gUnknown_0812DABC
_0806E4E0:
	ldr r2, _0806E568  @ =0x040000D4
	ldr r0, _0806E56C  @ =gUnknown_0812D564
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0806E570  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806E574  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806E578  @ =gUnknown_0812D55C
_0806E4F6:
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806E57C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806E580  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0806E584  @ =0x000003FF
	mov r9, r0
	mov r0, r9
	and r1, r1, r0
	ldr r0, _0806E588  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0806E58C  @ =0x000001FF
	add r0, r1, #0
	mov r1, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E590  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, r8
	strb r1, [r0]
_0806E54A:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #128
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #4
	strh r0, [r7]
_0806E55C:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806E568:
	.4byte 0x040000D4
_0806E56C:
	.4byte gUnknown_0812D564
_0806E570:
	.4byte 0x06010000
_0806E574:
	.4byte 0x84000020
_0806E578:
	.4byte gUnknown_0812D55C
_0806E57C:
	.4byte gOamBuffer
_0806E580:
	.4byte 0x84000002
_0806E584:
	.4byte 0x000003FF
_0806E588:
	.4byte 0xFFFFFC00
_0806E58C:
	.4byte 0x000001FF
_0806E590:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0806E024

	THUMB_FUNC_START sub_0806E594
sub_0806E594: @ 0x0806E594
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	add r7, r0, #0
	str r1, [sp, #8]
	mov r10, r2
	ldr r1, _0806E920  @ =0x03001D70
	ldr r2, _0806E924  @ =0x03001DF4
	ldrh r0, [r2]
	str r1, [sp, #12]
	cmp r0, #0
	bne _0806E5B4
	b _0806EC24
_0806E5B4:
	add r0, r1, #0
	add r0, r0, #144
	ldr r0, [r0]
	cmp r0, #0
	bne _0806E5C0
	b _0806EC24
_0806E5C0:
	add r0, r1, #0
	add r0, r0, #148
	ldrh r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0806E5D0
	b _0806E978
_0806E5D0:
	ldr r3, _0806E928  @ =0x040000D4
	mov r9, r3
	ldr r4, _0806E92C  @ =gUnknown_0812D030
	mov r8, r4
	str r4, [r3]
	mov r5, r10
	ldrh r0, [r5]
	ldr r6, _0806E930  @ =0x06010000
	add r0, r0, r6
	str r0, [r3, #4]
	ldr r6, _0806E934  @ =0x84000040
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _0806E938  @ =gUnknown_0812D028
	str r5, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0806E93C  @ =gOamBuffer
	mov r12, r1
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r2, _0806E940  @ =0x84000002
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r4, [sp, #8]
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _0806E944  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0806E948  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0806E94C  @ =0x03001DF6
	ldrh r1, [r3]
	ldr r4, _0806E924  @ =0x03001DF4
	ldrh r0, [r4]
	lsr r0, r0, #1
	sub r1, r1, r0
	sub r1, r1, #16
	ldr r0, _0806E950  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, _0806E958  @ =0x03001E08
	ldrb r0, [r2]
	ldr r3, _0806E95C  @ =0x03001DF8
	ldrb r3, [r3]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #128
	lsl r0, r0, #1
	add r4, r0, #0
	mov r1, r10
	ldrh r1, [r1]
	add r0, r4, r1
	mov r2, r10
	strh r0, [r2]
	ldr r3, [sp, #8]
	ldrh r1, [r3]
	add r1, r1, #8
	strh r1, [r3]
	mov r0, r8
	mov r2, r9
	str r0, [r2]
	mov r3, r10
	ldrh r0, [r3]
	ldr r2, _0806E930  @ =0x06010000
	add r0, r0, r2
	mov r3, r9
	str r0, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	str r5, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0806E940  @ =0x84000002
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	add r0, r0, r1
	ldr r6, _0806E944  @ =0x000003FF
	and r0, r0, r6
	ldr r1, _0806E948  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _0806E924  @ =0x03001DF4
	ldrh r1, [r0]
	lsr r1, r1, #1
	ldr r3, _0806E94C  @ =0x03001DF6
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r5, _0806E950  @ =0x000001FF
	and r1, r1, r5
	ldrh r3, [r2, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r6, _0806E958  @ =0x03001E08
	ldrb r0, [r6]
	ldr r2, _0806E95C  @ =0x03001DF8
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, r10
	ldrh r3, [r3]
	add r4, r4, r3
	mov r5, r10
	strh r4, [r5]
	ldr r6, [sp, #8]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r0, #0
	mov r8, r0
	ldr r1, _0806E924  @ =0x03001DF4
	ldrh r1, [r1]
	cmp r8, r1
	bcc _0806E716
	b _0806E85E
_0806E716:
	mov r5, r9
	mov r6, r12
	ldr r2, _0806E924  @ =0x03001DF4
	mov r9, r2
	ldr r3, _0806E958  @ =0x03001E08
	mov r12, r3
_0806E722:
	ldr r4, _0806E960  @ =gUnknown_0812CCA0
	str r4, [r5]
	mov r1, r10
	ldrh r0, [r1]
	ldr r2, _0806E930  @ =0x06010000
	add r0, r0, r2
	str r0, [r5, #4]
	ldr r3, _0806E964  @ =0x84000010
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _0806E968  @ =gUnknown_0812CC98
	str r4, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0806E940  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r4, [sp, #8]
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _0806E944  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0806E948  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r2, _0806E94C  @ =0x03001DF6
	ldrh r1, [r2]
	mov r4, r9
	ldrh r0, [r4]
	lsr r0, r0, #1
	sub r1, r1, r0
	add r1, r1, r8
	ldr r0, _0806E950  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, r12
	ldrb r0, [r2]
	ldr r3, _0806E95C  @ =0x03001DF8
	ldrb r3, [r3]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #64
	strh r0, [r4]
	ldr r0, [sp, #8]
	ldrh r4, [r0]
	add r4, r4, #2
	strh r4, [r0]
	ldr r1, _0806E960  @ =gUnknown_0812CCA0
	str r1, [r5]
	mov r2, r10
	ldrh r0, [r2]
	ldr r3, _0806E930  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _0806E964  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r1, _0806E968  @ =gUnknown_0812CC98
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r2, _0806E940  @ =0x84000002
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	add r1, r1, r4
	ldr r4, _0806E944  @ =0x000003FF
	and r1, r1, r4
	ldr r0, _0806E948  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, _0806E94C  @ =0x03001DF6
	ldrh r1, [r0]
	mov r2, r9
	ldrh r0, [r2]
	lsr r0, r0, #1
	sub r1, r1, r0
	add r1, r1, r8
	ldr r4, _0806E950  @ =0x000001FF
	and r1, r1, r4
	ldrh r2, [r3, #2]
	ldr r0, _0806E954  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, r12
	ldrb r0, [r2]
	add r0, r0, #24
	ldr r3, _0806E95C  @ =0x03001DF8
	ldrb r3, [r3]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r0, [r2, #3]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #64
	strh r0, [r4]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	mov r0, r8
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	mov r2, r9
	ldrh r2, [r2]
	cmp r8, r2
	bcs _0806E85E
	b _0806E722
_0806E85E:
	ldr r2, _0806E920  @ =0x03001D70
	add r3, r2, #0
	add r3, r3, #134
	add r0, r2, #0
	add r0, r0, #132
	ldrh r1, [r0]
	lsr r1, r1, #1
	ldrh r0, [r3]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	add r1, r2, #0
	add r1, r1, #136
	add r0, r2, #0
	add r0, r0, #152
	ldrh r0, [r0]
	add r0, r0, #8
	ldrh r1, [r1]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	mov r3, #0
	mov r8, r3
	ldr r6, _0806E96C  @ =gUnknown_08B2D578
	str r2, [sp, #12]
	add r5, r2, #0
	add r5, r5, #142
	ldr r0, _0806E970  @ =gUnknown_03000B74
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	asr r1, r1, #1
	ldr r0, _0806E974  @ =gUnknown_03000B58
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r5]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r0]
	cmp r8, r1
	bcc _0806E8C4
	b _0806EAE8
_0806E8C4:
	ldr r1, [r0, #4]
	mov r2, r8
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r3, [sp, #8]
	str r3, [sp]
	mov r1, r10
	str r1, [sp, #4]
	add r1, r4, #0
	mov r2, r9
	add r3, r7, #0
	bl sub_0806E024
	add r0, r4, #0
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r0, _0806E970  @ =gUnknown_03000B74
	mov r2, #0
	ldrsb r2, [r0, r2]
	add r2, r2, #1
	asr r2, r2, #1
	ldr r0, _0806E974  @ =gUnknown_03000B58
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r5]
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r2, [r0]
	cmp r8, r2
	bcc _0806E8C4
	b _0806EAE8
_0806E920:
	.4byte 0x03001D70
_0806E924:
	.4byte 0x03001DF4
_0806E928:
	.4byte 0x040000D4
_0806E92C:
	.4byte gUnknown_0812D030
_0806E930:
	.4byte 0x06010000
_0806E934:
	.4byte 0x84000040
_0806E938:
	.4byte gUnknown_0812D028
_0806E93C:
	.4byte gOamBuffer
_0806E940:
	.4byte 0x84000002
_0806E944:
	.4byte 0x000003FF
_0806E948:
	.4byte 0xFFFFFC00
_0806E94C:
	.4byte 0x03001DF6
_0806E950:
	.4byte 0x000001FF
_0806E954:
	.4byte 0xFFFFFE00
_0806E958:
	.4byte 0x03001E08
_0806E95C:
	.4byte 0x03001DF8
_0806E960:
	.4byte gUnknown_0812CCA0
_0806E964:
	.4byte 0x84000010
_0806E968:
	.4byte gUnknown_0812CC98
_0806E96C:
	.4byte gUnknown_08B2D578
_0806E970:
	.4byte gUnknown_03000B74
_0806E974:
	.4byte gUnknown_03000B58
_0806E978:
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0806EA44
	ldr r2, _0806EA18  @ =0x040000D4
	ldr r0, _0806EA1C  @ =gUnknown_0812CD58
	str r0, [r2]
	mov r3, r10
	ldrh r0, [r3]
	ldr r1, _0806EA20  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806EA24  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806EA28  @ =gUnknown_0812CD50
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806EA2C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806EA30  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r6, _0806EA34  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0806EA38  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #134
	ldrh r1, [r0]
	sub r1, r1, #8
	ldr r3, _0806EA3C  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EA40  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [sp, #12]
	add r2, r2, #136
	ldr r0, [sp, #12]
	add r0, r0, #152
	ldrb r0, [r0]
	add r0, r0, #16
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldr r5, [sp, #8]
	ldrh r0, [r5]
	add r0, r0, #4
	strh r0, [r5]
	b _0806EAE8
_0806EA18:
	.4byte 0x040000D4
_0806EA1C:
	.4byte gUnknown_0812CD58
_0806EA20:
	.4byte 0x06010000
_0806EA24:
	.4byte 0x84000020
_0806EA28:
	.4byte gUnknown_0812CD50
_0806EA2C:
	.4byte gOamBuffer
_0806EA30:
	.4byte 0x84000002
_0806EA34:
	.4byte 0x000003FF
_0806EA38:
	.4byte 0xFFFFFC00
_0806EA3C:
	.4byte 0x000001FF
_0806EA40:
	.4byte 0xFFFFFE00
_0806EA44:
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0806EAE8
	ldr r2, _0806ED84  @ =0x040000D4
	ldr r0, _0806ED88  @ =gUnknown_0812CE04
	str r0, [r2]
	mov r6, r10
	ldrh r0, [r6]
	ldr r1, _0806ED8C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806ED90  @ =0x84000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806ED94  @ =gUnknown_0812CDFC
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806ED98  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r5, _0806EDA0  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0806EDA4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #134
	ldrh r1, [r0]
	sub r1, r1, #16
	ldr r6, _0806EDA8  @ =0x000001FF
	add r0, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EDAC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [sp, #12]
	add r2, r2, #136
	ldr r0, [sp, #12]
	add r0, r0, #152
	ldrb r0, [r0]
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r1, #0
	mov r2, r10
	ldrh r2, [r2]
	add r0, r0, r2
	mov r3, r10
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #16
	strh r0, [r4]
_0806EAE8:
	ldr r5, [sp, #12]
	add r5, r5, #148
	ldrh r1, [r5]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0806EB8C
	ldr r2, _0806ED84  @ =0x040000D4
	ldr r0, _0806EDB0  @ =gUnknown_0812CD0C
	str r0, [r2]
	mov r6, r10
	ldrh r0, [r6]
	ldr r1, _0806ED8C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806EDB4  @ =0x84000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806EDB8  @ =gUnknown_0812CD04
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806ED98  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r6, _0806EDA0  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0806EDA4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #140
	ldrh r1, [r0]
	sub r1, r1, #4
	ldr r3, _0806EDA8  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EDAC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [sp, #12]
	add r2, r2, #136
	ldr r0, [sp, #12]
	add r0, r0, #150
	ldrb r0, [r0]
	add r0, r0, #34
	ldrb r2, [r2]
	add r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r6, [sp, #8]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
_0806EB8C:
	ldrh r1, [r5]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806EC24
	ldr r2, _0806ED84  @ =0x040000D4
	ldr r0, _0806EDB0  @ =gUnknown_0812CD0C
	str r0, [r2]
	mov r1, r10
	ldrh r0, [r1]
	ldr r1, _0806ED8C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0806EDB4  @ =0x84000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0806EDB8  @ =gUnknown_0812CD04
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0806ED98  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r6, _0806EDA0  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _0806EDA4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, [sp, #12]
	add r0, r0, #138
	ldrh r1, [r0]
	sub r1, r1, #4
	ldr r3, _0806EDA8  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0806EDAC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r0, [sp, #12]
	add r0, r0, #136
	ldrb r0, [r0]
	add r0, r0, #44
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, r10
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r5, [sp, #8]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_0806EC24:
	ldr r6, _0806EDBC  @ =0x03001E0C
	ldrh r1, [r6]
	ldr r0, _0806EDC0  @ =0x0000FFFF
	cmp r1, r0
	bne _0806EC30
	b _0806ED74
_0806EC30:
	ldr r4, _0806ED84  @ =0x040000D4
	ldr r1, [sp, #12]
	ldr r0, [r1, #112]
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0806ED98  @ =gOamBuffer
	mov r8, r2
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r3, _0806ED9C  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r5, [sp, #12]
	ldr r2, [r5, #108]
	ldr r6, _0806EDA0  @ =0x000003FF
	and r2, r2, r6
	ldrh r3, [r1, #4]
	ldr r6, _0806EDA4  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r0, _0806EDC4  @ =0x03001E0A
	ldrh r1, [r0]
	ldr r3, _0806EDC8  @ =gUnknown_03001724
	mov r10, r3
	mov r5, #0
	ldrsh r0, [r3, r5]
	sub r1, r1, r0
	ldr r0, _0806EDA8  @ =0x000001FF
	mov r12, r0
	mov r3, r12
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r5, _0806EDAC  @ =0xFFFFFE00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r1, _0806EDBC  @ =0x03001E0C
	ldrb r0, [r1]
	ldr r3, _0806EDCC  @ =gUnknown_030012F4
	mov r9, r3
	ldrb r1, [r3]
	sub r0, r0, r1
	strb r0, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #12]
	ldr r0, [r1, #120]
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r2, _0806ED9C  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r1, [r1, #116]
	ldr r3, _0806EDA0  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r0, _0806EDC4  @ =0x03001E0A
	ldrh r0, [r0]
	str r0, [sp, #16]
	mov r1, r10
	mov r3, #0
	ldrsh r0, [r1, r3]
	sub r0, r0, #56
	ldr r3, [sp, #16]
	sub r1, r3, r0
	mov r0, r12
	and r1, r1, r0
	ldrh r3, [r2, #2]
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r2, _0806EDBC  @ =0x03001E0C
	ldrb r0, [r2]
	mov r3, r9
	ldrb r2, [r3]
	sub r0, r0, r2
	strb r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp, #12]
	add r0, r0, #128
	ldr r0, [r0]
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r0, _0806ED9C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r8
	ldr r2, [sp, #12]
	ldr r0, [r2, #124]
	ldr r3, _0806EDA0  @ =0x000003FF
	and r0, r0, r3
	ldrh r2, [r1, #4]
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r4, _0806EDC4  @ =0x03001E0A
	ldrh r1, [r4]
	mov r6, r10
	mov r3, #0
	ldrsh r0, [r6, r3]
	sub r0, r0, #40
	sub r1, r1, r0
	mov r4, r12
	and r1, r1, r4
	ldrh r0, [r2, #2]
	and r5, r5, r0
	orr r5, r5, r1
	strh r5, [r2, #2]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r8
	ldr r5, _0806EDBC  @ =0x03001E0C
	ldrb r1, [r5]
	mov r6, r9
	ldrb r0, [r6]
	sub r0, r0, #16
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0806ED74:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806ED84:
	.4byte 0x040000D4
_0806ED88:
	.4byte gUnknown_0812CE04
_0806ED8C:
	.4byte 0x06010000
_0806ED90:
	.4byte 0x84000080
_0806ED94:
	.4byte gUnknown_0812CDFC
_0806ED98:
	.4byte gOamBuffer
_0806ED9C:
	.4byte 0x84000002
_0806EDA0:
	.4byte 0x000003FF
_0806EDA4:
	.4byte 0xFFFFFC00
_0806EDA8:
	.4byte 0x000001FF
_0806EDAC:
	.4byte 0xFFFFFE00
_0806EDB0:
	.4byte gUnknown_0812CD0C
_0806EDB4:
	.4byte 0x84000008
_0806EDB8:
	.4byte gUnknown_0812CD04
_0806EDBC:
	.4byte 0x03001E0C
_0806EDC0:
	.4byte 0x0000FFFF
_0806EDC4:
	.4byte 0x03001E0A
_0806EDC8:
	.4byte gUnknown_03001724
_0806EDCC:
	.4byte gUnknown_030012F4
	THUMB_FUNC_END sub_0806E594

	THUMB_FUNC_START sub_0806EDD0
sub_0806EDD0: @ 0x0806EDD0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #28]
	mov r8, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0806EED4  @ =0x0806EF55
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0806EED8  @ =0x0806F475
	str r0, [r1]
	mov r1, #0
	mov r9, r1
	strh r2, [r7]
	ldr r1, _0806EEDC  @ =0x03001E38
	ldrb r0, [r1]
	add r0, r0, #1
	strh r0, [r7, #4]
	mov r0, #5
	strh r0, [r7, #6]
	ldrb r0, [r1]
	add r0, r0, #50
	add r1, r7, #0
	add r1, r1, #65
	strb r0, [r1]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0806EEE0  @ =gUnknown_086695D8
	add r3, r3, r0
	add r0, r4, #0
	add r0, r0, #160
	str r3, [r0]
	add r6, r7, #0
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0806EEE4  @ =0x03000718
	mov r0, #129
	add r0, r0, r7
	mov r12, r0
	mov r1, r8
	ldrb r2, [r1, #6]
	lsl r2, r2, #4
	ldrb r4, [r0]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	mov r2, r12
	strb r0, [r2]
	mov r2, r8
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	ldr r1, [r7, #32]
	add r4, r7, #0
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0806EEE8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	ldr r0, [r7, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r0, r9
	strb r0, [r7, #15]
	add r1, r7, #0
	add r1, r1, #136
	ldr r0, [r3, #4]
	str r0, [r1]
	add r1, r1, #12
	ldr r0, [r3, #12]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3, #8]
	str r0, [r1]
	sub r1, r1, #8
	ldr r0, [r3]
	str r0, [r1]
	ldrb r0, [r3, #21]
	strb r0, [r7, #3]
	ldrh r0, [r3, #16]
	sub r1, r1, #46
	strh r0, [r1]
	ldrb r1, [r3, #20]
	add r0, r7, #0
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	add r1, r7, #0
	add r1, r1, #90
	strh r0, [r1]
	mov r1, r9
	strb r1, [r7, #10]
	ldr r1, _0806EEEC  @ =0x030006F0
	mov r2, r9
	strb r2, [r1]
	ldrb r0, [r3, #22]
	strb r0, [r1, #1]
	ldrb r0, [r3, #23]
	strb r0, [r1, #2]
	ldr r3, _0806EEF0  @ =0x03001E3C
	ldrb r2, [r3]
	mov r0, #7
	and r0, r0, r2
	add r2, r1, #0
	cmp r0, #1
	bne _0806EEF4
	add r0, r7, #0
	add r0, r0, #64
	mov r1, r9
	strb r1, [r0]
	strb r1, [r2, #16]
	b _0806EEFE
	.byte 0x00
	.byte 0x00
_0806EED4:
	.4byte sub_0806EF54
_0806EED8:
	.4byte sub_0806F474
_0806EEDC:
	.4byte 0x03001E38
_0806EEE0:
	.4byte gUnknown_086695D8
_0806EEE4:
	.4byte 0x03000718
_0806EEE8:
	.4byte 0xFFFFFE00
_0806EEEC:
	.4byte 0x030006F0
_0806EEF0:
	.4byte 0x03001E3C
_0806EEF4:
	add r1, r7, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2, #16]
_0806EEFE:
	ldrb r1, [r3]
	mov r0, #112
	and r0, r0, r1
	cmp r0, #16
	bne _0806EF0C
	mov r0, #0
	b _0806EF0E
_0806EF0C:
	mov r0, #1
_0806EF0E:
	strb r0, [r7, #10]
	mov r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _0806EF1E
	mov r0, #128
	lsl r0, r0, #8
	b _0806EF20
_0806EF1E:
	mov r0, #0
_0806EF20:
	str r0, [r2, #8]
	mov r4, #0
	str r4, [r2, #12]
	mov r0, #10
	strb r0, [r2, #19]
	mov r0, #1
	strb r0, [r2, #17]
	mov r0, #2
	strb r0, [r2, #18]
	str r4, [r2, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r7, #92]
	str r4, [r7, #96]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806EDD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806EF54
sub_0806EF54: @ 0x0806EF54
	push {r4-r7,lr}
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #160
	ldr r0, [r5]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r7, _0806EFB0  @ =gUnknown_03001A1C
	ldr r0, [r7]
	mov r6, #128
	lsl r6, r6, #5
	and r0, r0, r6
	cmp r0, #0
	bne _0806EF84
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0806EFB4  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
_0806EF84:
	add r0, r4, #0
	bl sub_0804A4E0
	ldr r1, [r7]
	and r1, r1, r6
	cmp r1, #0
	bne _0806EFE8
	ldr r3, [r5]
	add r1, r4, #0
	add r1, r1, #64
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r1, #0
	bne _0806EFB8
	ldrh r1, [r4, #8]
	ldr r2, [r3, #28]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	neg r1, r1
	b _0806EFC2
_0806EFB0:
	.4byte gUnknown_03001A1C
_0806EFB4:
	.4byte 0x00007FFF
_0806EFB8:
	ldrh r1, [r4, #8]
	ldr r2, [r3, #28]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
_0806EFC2:
	strh r1, [r4, #48]
	ldrh r2, [r4, #8]
	mov r1, #10
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bne _0806EFDC
	ldr r1, [r3, #32]
	lsl r2, r2, #1
	add r2, r2, r1
	ldrh r1, [r2]
	neg r1, r1
	strh r1, [r4, #50]
	b _0806EFEE
_0806EFDC:
	ldr r1, [r3, #32]
	lsl r2, r2, #1
	add r2, r2, r1
	ldrh r1, [r2]
	strh r1, [r4, #50]
	b _0806EFEE
_0806EFE8:
	mov r1, #0
	strh r1, [r4, #50]
	strh r1, [r4, #48]
_0806EFEE:
	ldr r3, [r4, #104]
	mov r5, #4
	ldrsh r1, [r3, r5]
	ldr r2, [r4, #32]
	add r1, r2, r1
	str r1, [r4, #108]
	mov r5, #6
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #116]
	mov r2, #0
	ldrsh r1, [r3, r2]
	ldr r2, [r4, #36]
	add r1, r2, r1
	str r1, [r4, #112]
	mov r5, #2
	ldrsh r1, [r3, r5]
	add r2, r2, r1
	str r2, [r4, #120]
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806EF54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F01C
sub_0806F01C: @ 0x0806F01C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	mov r0, #61
	add r0, r0, r5
	mov r12, r0
	ldr r7, _0806F098  @ =0x030019F0
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	bne _0806F0CC
	ldr r2, _0806F09C  @ =0x030019AC
	mov r8, r2
	ldr r4, [r2]
	ldr r3, [r4, #100]
	mov r6, #4
	ldrsh r0, [r3, r6]
	ldr r1, [r4, #32]
	add r0, r1, r0
	mov r6, #48
	ldrsh r2, [r4, r6]
	add r0, r0, r2
	mov r9, r0
	mov r6, #6
	ldrsh r0, [r3, r6]
	add r1, r1, r0
	add r1, r1, r2
	ldr r0, [r5, #108]
	cmp r0, r1
	bgt _0806F062
	ldr r0, [r5, #116]
	cmp r0, r9
	bge _0806F0CC
_0806F062:
	mov r2, #255
	strb r2, [r7]
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #0
	ldrsb r0, [r1, r0]
	mov r3, r12
	ldrb r3, [r3]
	cmp r0, r3
	bne _0806F07C
	ldrb r0, [r1]
	orr r0, r0, r2
	strb r0, [r1]
_0806F07C:
	mov r4, r8
	ldr r2, [r4]
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0806F0A4
	ldr r1, _0806F0A0  @ =0xFFFFFC00
	add r0, r2, #0
	bl sub_0804A264
	b _0806F0AE
_0806F098:
	.4byte 0x030019F0
_0806F09C:
	.4byte 0x030019AC
_0806F0A0:
	.4byte 0xFFFFFC00
_0806F0A4:
	mov r1, #128
	lsl r1, r1, #3
	add r0, r2, #0
	bl sub_0804A264
_0806F0AE:
	ldr r4, _0806F0D8  @ =0x030019AC
	ldr r0, [r4]
	mov r2, #192
	lsl r2, r2, #2
	mov r1, #0
	bl sub_0803F9A8
	cmp r0, #0
	beq _0806F0CC
	ldr r1, [r4]
	ldr r0, [r1, #36]
	mov r6, #192
	lsl r6, r6, #2
	add r0, r0, r6
	str r0, [r1, #36]
_0806F0CC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806F0D8:
	.4byte 0x030019AC
	THUMB_FUNC_END sub_0806F01C

	THUMB_FUNC_START sub_0806F0DC
sub_0806F0DC: @ 0x0806F0DC
	push {r4,lr}
	sub sp, sp, #20
	add r4, r0, #0
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #8
	orr r0, r0, r1
	str r0, [r2, #8]
	add r2, sp, #12
	add r0, r4, #0
	add r1, sp, #4
	bl sub_08006C30
	add r1, r4, #0
	add r1, r1, #65
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	bne _0806F132
	ldrb r0, [r4, #10]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r4, #10]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #36]
	sub r0, r0, r1
	str r0, [r4, #36]
	b _0806F1C6
_0806F132:
	cmp r0, #46
	beq _0806F13A
	cmp r0, #52
	bne _0806F180
_0806F13A:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F158
	ldr r2, _0806F154  @ =0x030006F0
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2, #16]
	add r0, r1, #0
	b _0806F162
	.byte 0x00
	.byte 0x00
_0806F154:
	.4byte 0x030006F0
_0806F158:
	ldr r1, _0806F174  @ =0x030006F0
	add r0, r4, #0
	add r0, r0, #64
	strb r2, [r0]
	strb r2, [r1, #16]
_0806F162:
	ldrb r2, [r0]
	ldr r0, _0806F178  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F17C  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0806F1BC
	.byte 0x00
	.byte 0x00
_0806F174:
	.4byte 0x030006F0
_0806F178:
	.4byte 0x03000718
_0806F17C:
	.4byte gUnknown_086695D8
_0806F180:
	cmp r0, #47
	beq _0806F188
	cmp r0, #53
	bne _0806F1C6
_0806F188:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F1A0
	ldr r1, _0806F19C  @ =0x030006F0
	add r0, r4, #0
	add r0, r0, #64
	strb r2, [r0]
	strb r2, [r1, #16]
	b _0806F1AE
_0806F19C:
	.4byte 0x030006F0
_0806F1A0:
	ldr r2, _0806F1D0  @ =0x030006F0
	add r1, r4, #0
	add r1, r1, #64
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2, #16]
	add r0, r1, #0
_0806F1AE:
	ldrb r2, [r0]
	ldr r0, _0806F1D4  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F1D8  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0806F1BC:
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
_0806F1C6:
	add sp, sp, #20
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806F1D0:
	.4byte 0x030006F0
_0806F1D4:
	.4byte 0x03000718
_0806F1D8:
	.4byte gUnknown_086695D8
	THUMB_FUNC_END sub_0806F0DC

	THUMB_FUNC_START sub_0806F1DC
sub_0806F1DC: @ 0x0806F1DC
	push {r4,lr}
	sub sp, sp, #20
	add r4, r0, #0
	bl sub_0806F01C
	ldr r1, [r4, #32]
	asr r1, r1, #8
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	add r2, sp, #12
	add r0, r4, #0
	add r1, sp, #4
	bl sub_08006C30
	add r1, r4, #0
	add r1, r1, #65
	mov r2, #0
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	bne _0806F232
	add r2, r4, #0
	add r2, r2, #64
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	mov r0, #48
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #32]
	sub r0, r0, r1
	str r0, [r4, #32]
	b _0806F2C0
_0806F232:
	cmp r0, #46
	beq _0806F23A
	cmp r0, #52
	bne _0806F278
_0806F23A:
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F250
	ldr r1, _0806F24C  @ =0x030006F0
	mov r0, #1
	strb r0, [r4, #10]
	strb r0, [r1, #16]
	b _0806F256
_0806F24C:
	.4byte 0x030006F0
_0806F250:
	ldr r0, _0806F26C  @ =0x030006F0
	strb r2, [r4, #10]
	strb r2, [r0, #16]
_0806F256:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F270  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F274  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0806F2AE
	.byte 0x00
	.byte 0x00
_0806F26C:
	.4byte 0x030006F0
_0806F270:
	.4byte 0x03000718
_0806F274:
	.4byte gUnknown_086695D8
_0806F278:
	cmp r0, #47
	beq _0806F280
	cmp r0, #53
	bne _0806F2C0
_0806F280:
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806F294
	ldr r0, _0806F290  @ =0x030006F0
	strb r2, [r4, #10]
	strb r2, [r0, #16]
	b _0806F29C
_0806F290:
	.4byte 0x030006F0
_0806F294:
	ldr r1, _0806F2C8  @ =0x030006F0
	mov r0, #1
	strb r0, [r4, #10]
	strb r0, [r1, #16]
_0806F29C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F2CC  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F2D0  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0806F2AE:
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
	ldr r1, _0806F2C8  @ =0x030006F0
	mov r0, #128
	lsl r0, r0, #8
	str r0, [r1, #8]
_0806F2C0:
	add sp, sp, #20
	pop {r4}
	pop {r0}
	bx r0
_0806F2C8:
	.4byte 0x030006F0
_0806F2CC:
	.4byte 0x03000718
_0806F2D0:
	.4byte gUnknown_086695D8
	THUMB_FUNC_END sub_0806F1DC

	THUMB_FUNC_START sub_0806F2D4
sub_0806F2D4: @ 0x0806F2D4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	add r4, r0, #0
	bl sub_0806F01C
	add r6, r4, #0
	add r6, r6, #132
	ldr r2, [r6]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #8
	orr r0, r0, r1
	str r0, [r2, #8]
	mov r1, #48
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #32]
	add r1, r1, r0
	asr r1, r1, #8
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #36]
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	add r5, sp, #12
	add r0, r4, #0
	add r1, sp, #4
	add r2, r5, #0
	bl sub_08006C30
	add r7, r4, #0
	add r7, r7, #65
	mov r2, #0
	mov r8, r2
	strb r0, [r7]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	beq _0806F36C
	cmp r0, #44
	beq _0806F388
	cmp r0, #50
	beq _0806F388
	cmp r0, #45
	beq _0806F3F8
	cmp r0, #51
	beq _0806F3F8
	ldr r1, [r4, #32]
	asr r1, r1, #8
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	mov r0, #50
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #36]
	add r0, r0, r1
	asr r0, r0, #8
	add r0, r0, #4
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #4
	add r2, r5, #0
	bl sub_08006C30
	strb r0, [r7]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #49
	bne _0806F380
_0806F36C:
	add r1, r4, #0
	add r1, r1, #64
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	ldrb r0, [r4, #10]
	eor r0, r0, r2
	strb r0, [r4, #10]
	b _0806F424
_0806F380:
	cmp r0, #44
	beq _0806F388
	cmp r0, #50
	bne _0806F3F0
_0806F388:
	ldr r0, [r5, #4]
	lsl r0, r0, #8
	str r0, [r4, #36]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F3DC  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F3E0  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
	ldr r0, _0806F3E4  @ =0x030006F0
	mov r1, r8
	str r1, [r0, #8]
	add r0, r4, #0
	add r0, r0, #61
	ldrb r1, [r0]
	ldr r3, _0806F3E8  @ =0x030019AC
	ldr r0, [r3]
	add r2, r0, #0
	add r2, r2, #67
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0806F424
	mov r0, #255
	strb r0, [r2]
	ldr r1, [r3]
	ldr r0, [r4, #36]
	ldr r2, _0806F3EC  @ =0xFFFFE200
	add r0, r0, r2
	str r0, [r1, #36]
	asr r0, r0, #8
	add r1, r1, #124
	strb r0, [r1]
	b _0806F424
_0806F3DC:
	.4byte 0x03000718
_0806F3E0:
	.4byte gUnknown_086695D8
_0806F3E4:
	.4byte 0x030006F0
_0806F3E8:
	.4byte 0x030019AC
_0806F3EC:
	.4byte 0xFFFFE200
_0806F3F0:
	cmp r0, #45
	beq _0806F3F8
	cmp r0, #51
	bne _0806F424
_0806F3F8:
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsr r1, r1, #1
	ldr r0, [sp, #12]
	sub r0, r0, r1
	add r0, r0, #4
	lsl r0, r0, #8
	str r0, [r4, #32]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0806F430  @ =0x03000718
	ldrb r3, [r0]
	ldr r0, _0806F434  @ =gUnknown_086695D8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0804A644
	mov r0, #129
	lsl r0, r0, #13
	str r0, [r4, #92]
_0806F424:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0806F430:
	.4byte 0x03000718
_0806F434:
	.4byte gUnknown_086695D8
	THUMB_FUNC_END sub_0806F2D4

	THUMB_FUNC_START sub_0806F438
sub_0806F438: @ 0x0806F438
	push {lr}
	add r3, r0, #0
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #1
	bne _0806F452
	add r0, r3, #0
	add r0, r0, #64
	ldrb r1, [r0]
	mov r2, #1
	eor r1, r1, r2
	strb r1, [r0]
	b _0806F470
_0806F452:
	cmp r0, #2
	bne _0806F45E
	ldrb r0, [r3, #10]
	mov r1, #1
	eor r0, r0, r1
	b _0806F46E
_0806F45E:
	add r1, r3, #0
	add r1, r1, #64
	ldrb r0, [r1]
	mov r2, #1
	eor r0, r0, r2
	strb r0, [r1]
	ldrb r0, [r3, #10]
	eor r0, r0, r2
_0806F46E:
	strb r0, [r3, #10]
_0806F470:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806F438

	THUMB_FUNC_START sub_0806F474
sub_0806F474: @ 0x0806F474
	push {lr}
	add r1, r0, #0
	add r1, r1, #160
	ldr r1, [r1]
	ldr r1, [r1, #52]
	bl _call_via_r1
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806F474

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F488
sub_0806F488: @ 0x0806F488
	bx lr
	THUMB_FUNC_END sub_0806F488

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F48C
sub_0806F48C: @ 0x0806F48C
	bx lr
	THUMB_FUNC_END sub_0806F48C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F490
sub_0806F490: @ 0x0806F490
	push {r4-r6,lr}
	ldr r3, _0806F4B8  @ =0x0300074A
	ldr r4, _0806F4BC  @ =0x03001BD0
	ldr r0, [r4]
	ldr r1, [r0, #32]
	asr r1, r1, #7
	sub r1, r1, #240
	strh r1, [r3]
	ldr r2, _0806F4C0  @ =0x0300074C
	ldr r0, [r0, #36]
	asr r0, r0, #7
	sub r0, r0, #160
	strh r0, [r2]
	lsl r0, r1, #16
	add r5, r4, #0
	cmp r0, #0
	bge _0806F4C4
	mov r0, #0
	b _0806F4D8
	.byte 0x00
	.byte 0x00
_0806F4B8:
	.4byte 0x0300074A
_0806F4BC:
	.4byte 0x03001BD0
_0806F4C0:
	.4byte 0x0300074C
_0806F4C4:
	asr r0, r0, #17
	add r0, r0, #240
	ldr r4, _0806F4E8  @ =gUnknown_03001720
	mov r6, #0
	ldrsh r1, [r4, r6]
	cmp r0, r1
	blt _0806F4DA
	ldrh r0, [r4]
	sub r0, r0, #240
	lsl r0, r0, #1
_0806F4D8:
	strh r0, [r3]
_0806F4DA:
	ldrh r0, [r2]
	lsl r0, r0, #16
	cmp r0, #0
	bge _0806F4EC
	mov r0, #0
	b _0806F500
	.byte 0x00
	.byte 0x00
_0806F4E8:
	.4byte gUnknown_03001720
_0806F4EC:
	asr r0, r0, #17
	add r0, r0, #160
	ldr r4, _0806F534  @ =gUnknown_0300170C
	mov r6, #0
	ldrsh r1, [r4, r6]
	cmp r0, r1
	blt _0806F502
	ldrh r0, [r4]
	sub r0, r0, #160
	lsl r0, r0, #1
_0806F500:
	strh r0, [r2]
_0806F502:
	ldr r0, _0806F538  @ =0x03000746
	ldrh r1, [r3]
	lsl r1, r1, #16
	asr r1, r1, #17
	strh r1, [r0]
	ldr r0, _0806F53C  @ =0x03000748
	ldrh r2, [r2]
	lsl r2, r2, #16
	asr r2, r2, #17
	strh r2, [r0]
	ldr r4, _0806F540  @ =0x03000742
	ldr r3, [r5]
	ldr r0, [r3, #32]
	asr r0, r0, #8
	sub r0, r0, r1
	strh r0, [r4]
	ldr r1, _0806F544  @ =0x03000744
	ldr r0, [r3, #36]
	asr r0, r0, #8
	sub r0, r0, r2
	strh r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806F534:
	.4byte gUnknown_0300170C
_0806F538:
	.4byte 0x03000746
_0806F53C:
	.4byte 0x03000748
_0806F540:
	.4byte 0x03000742
_0806F544:
	.4byte 0x03000744
	THUMB_FUNC_END sub_0806F490

	THUMB_FUNC_START sub_0806F548
sub_0806F548: @ sub_0806F548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r9, r0
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r10, r1
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r0, #8
	and r0, r0, r6
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	beq _0806F5D8
	mov r2, #128
	lsl r2, r2, #19
	ldr r0, _0806F5B0  @ =0x03000740
	ldrh r0, [r0]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	bl sub_08029E14
	ldr r1, _0806F5B4  @ =0x03001B90
	mov r0, #3
	strb r0, [r1]
	ldr r1, _0806F5B8  @ =gUnknown_030012A0
	ldr r0, _0806F5BC  @ =0x0300074A
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F5C0  @ =gUnknown_03001710
	ldr r0, _0806F5C4  @ =0x0300074C
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F5C8  @ =gUnknown_03001724
	ldr r0, _0806F5CC  @ =0x03000746
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F5D0  @ =gUnknown_030012F4
	ldr r0, _0806F5D4  @ =0x03000748
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, #1
	neg r0, r0
	b _0806F7B8
_0806F5B0:
	.4byte 0x03000740
_0806F5B4:
	.4byte 0x03001B90
_0806F5B8:
	.4byte gUnknown_030012A0
_0806F5BC:
	.4byte 0x0300074A
_0806F5C0:
	.4byte gUnknown_03001710
_0806F5C4:
	.4byte 0x0300074C
_0806F5C8:
	.4byte gUnknown_03001724
_0806F5CC:
	.4byte 0x03000746
_0806F5D0:
	.4byte gUnknown_030012F4
_0806F5D4:
	.4byte 0x03000748
_0806F5D8:
	mov r1, r9
	lsl r0, r1, #16
	asr r1, r0, #16
	cmp r1, #0
	blt _0806F626
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	ldr r1, _0806F608  @ =0x03000760
	add r7, r0, r1
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _0806F660
	strb r2, [r7, #7]
	strb r2, [r7, #4]
	strb r2, [r7, #6]
	mov r0, #0
	strh r2, [r7, #8]
	strb r0, [r7, #5]
	mov r0, #1
	neg r0, r0
	b _0806F7B8
	.byte 0x00
	.byte 0x00
_0806F608:
	.4byte 0x03000760
_0806F60C:
	lsr r2, r3, #16
	mov r9, r2
	asr r1, r3, #16
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	mov r3, r12
	add r7, r0, r3
	ldrb r0, [r7, #7]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r7, #7]
	b _0806F652
_0806F626:
	mov r4, #0
	ldr r5, _0806F65C  @ =0x03000760
	mov r12, r5
	mov r0, #16
	mov r8, r0
_0806F630:
	lsl r3, r4, #16
	asr r2, r3, #16
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r1, [r0, #7]
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	beq _0806F60C
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _0806F630
_0806F652:
	cmp r4, #8
	bne _0806F660
	mov r0, #1
	neg r0, r0
	b _0806F7B8
_0806F65C:
	.4byte 0x03000760
_0806F660:
	ldrb r1, [r7, #7]
	mov r0, #16
	mov r4, #0
	orr r0, r0, r1
	strb r0, [r7, #7]
	mov r1, r10
	lsl r0, r1, #16
	asr r0, r0, #16
	mov r1, #44
	mul r0, r1, r0
	ldr r1, _0806F6C4  @ =gUnknown_08669A80
	add r0, r0, r1
	str r0, [r7]
	ldrh r1, [r0, #30]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0806F694
	mov r0, #138
	bl sub_08071E14
	ldr r1, _0806F6C8  @ =0x03000754
	mov r0, #1
	neg r0, r0
	str r0, [r1]
_0806F694:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	bne _0806F69E
	strb r4, [r7, #4]
_0806F69E:
	strb r4, [r7, #6]
	strh r4, [r7, #8]
	ldr r1, [r7]
	ldr r0, [r1, #16]
	ldrb r0, [r0, #1]
	strb r0, [r7, #5]
	ldr r0, [r1, #4]
	add r2, r1, #0
	cmp r0, #0
	beq _0806F6CC
	mov r3, #4
	ldrsh r0, [r2, r3]
	lsl r0, r0, #8
	str r0, [r7, #12]
	mov r1, #6
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	b _0806F6D8
	.byte 0x00
	.byte 0x00
_0806F6C4:
	.4byte gUnknown_08669A80
_0806F6C8:
	.4byte 0x03000754
_0806F6CC:
	ldr r0, [r7, #12]
	ldr r1, _0806F7C8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r7, #12]
	ldr r0, [r7, #16]
	and r0, r0, r1
_0806F6D8:
	str r0, [r7, #16]
	ldrh r1, [r2, #30]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0806F6EA
	bl sub_0806F490
_0806F6EA:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _0806F7B2
	mov r6, #1
	neg r6, r6
	add r0, r6, #0
	mov r1, #12
	mov r2, #0
	bl sub_0806F548
	ldr r4, _0806F7CC  @ =0x03000760
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r5, r4, #0
	add r5, r5, #12
	add r2, r1, r5
	ldr r0, [r7, #12]
	str r0, [r2]
	add r4, r4, #16
	add r1, r1, r4
	ldr r0, [r7, #16]
	str r0, [r1]
	add r0, r6, #0
	mov r1, #13
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r2, r1, r5
	ldr r0, [r7, #12]
	str r0, [r2]
	add r1, r1, r4
	ldr r0, [r7, #16]
	str r0, [r1]
	add r0, r6, #0
	mov r1, #14
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r2, r1, r5
	ldr r0, [r7, #12]
	str r0, [r2]
	add r1, r1, r4
	ldr r0, [r7, #16]
	str r0, [r1]
	add r0, r6, #0
	mov r1, #15
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r2, r1, r5
	ldr r0, [r7, #12]
	ldr r3, _0806F7D0  @ =0xFFFFF400
	add r0, r0, r3
	str r0, [r2]
	add r1, r1, r4
	ldr r0, [r7, #16]
	mov r2, #192
	lsl r2, r2, #4
	mov r8, r2
	add r0, r0, r8
	str r0, [r1]
	add r0, r6, #0
	mov r1, #16
	mov r2, #0
	bl sub_0806F548
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r5, r1, r5
	ldr r0, [r7, #12]
	mov r3, #224
	lsl r3, r3, #5
	add r0, r0, r3
	str r0, [r5]
	add r1, r1, r4
	ldr r0, [r7, #16]
	add r0, r0, r8
	str r0, [r1]
_0806F7B2:
	mov r1, r9
	lsl r0, r1, #24
	asr r0, r0, #24
_0806F7B8:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0806F7C8:
	.4byte 0xFFFFFF00
_0806F7CC:
	.4byte 0x03000760
_0806F7D0:
	.4byte 0xFFFFF400
	THUMB_FUNC_END sub_0806F548

	THUMB_FUNC_START sub_0806F7D4
sub_0806F7D4:
	push {r4,r5,lr}
	add r3, r0, #0
	ldrb r0, [r3, #5]
	sub r0, r0, #1
	strb r0, [r3, #5]
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _0806F82C
	ldrb r0, [r3, #4]
	add r0, r0, #1
	strb r0, [r3, #4]
	ldr r1, [r3]
	ldrb r4, [r1, #28]
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r1, #0
	cmp r0, r4
	bcc _0806F81C
	ldrh r1, [r2, #30]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0806F80A
	strb r5, [r3, #4]
	b _0806F80E
_0806F80A:
	sub r0, r4, #1
	strb r0, [r3, #4]
_0806F80E:
	ldrh r1, [r2, #30]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0806F81C
	mov r0, #1
	b _0806F82E
_0806F81C:
	ldrb r1, [r3, #4]
	ldr r2, [r2, #16]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #5]
_0806F82C:
	mov r0, #0
_0806F82E:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806F7D4

	THUMB_FUNC_START sub_0806F834
sub_0806F834: @ 0x0806F834
	push {r4,lr}
	add r2, r0, #0
	ldr r3, [r2]
	mov r0, #34
	add r0, r0, r3
	mov r12, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806F88E
	ldrb r0, [r2, #6]
	ldr r1, [r3, #36]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2, #12]
	add r0, r0, r1
	str r0, [r2, #12]
	ldrb r0, [r2, #6]
	ldr r1, [r3, #40]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2, #16]
	sub r0, r0, r1
	str r0, [r2, #16]
	ldrb r0, [r2, #6]
	add r0, r0, #1
	strb r0, [r2, #6]
	mov r4, r12
	ldrb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, r1
	bcc _0806F88E
	sub r0, r1, #1
	strb r0, [r2, #6]
	ldrh r1, [r3, #30]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0806F88E
	mov r0, #1
	b _0806F890
_0806F88E:
	mov r0, #0
_0806F890:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0806F834

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806F898
sub_0806F898: @ 0x0806F898
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	ldr r1, _0806F990  @ =0x03000740
	mov r0, #128
	lsl r0, r0, #19
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F994  @ =0x0300074E
	ldr r0, _0806F998  @ =gUnknown_03001724
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0806F99C  @ =0x03000750
	ldr r0, _0806F9A0  @ =gUnknown_030012F4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0806F9A4  @ =0x03001B98
	ldrb r5, [r0]
	cmp r5, #0
	bne _0806F8E0
	bl sub_08029DB8
	ldr r4, _0806F9A8  @ =0x03000754
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #138
	mov r1, #12
	mov r2, #10
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
_0806F8E0:
	mov r3, #0
	ldr r0, _0806F9AC  @ =0x03001BC8
	ldr r5, _0806F9B0  @ =0x03000720
	ldr r1, _0806F9B4  @ =gUnknown_0854301C
	mov r8, r1
	ldr r2, _0806F9B8  @ =0x03001940
	mov r9, r2
	ldrb r1, [r0]
	cmp r3, r1
	bcs _0806F92A
	ldr r2, _0806F9BC  @ =0x03000728
	mov r12, r2
	add r4, r0, #0
	ldr r7, _0806F9C0  @ =gUnknown_085BD3D8
	mov r6, #0
_0806F8FE:
	lsl r2, r3, #2
	add r2, r2, r12
	strb r6, [r2]
	ldrb r0, [r4]
	sub r0, r0, r3
	lsl r0, r0, #3
	add r0, r0, #20
	neg r0, r0
	strh r0, [r2, #2]
	ldrb r1, [r2]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	strb r0, [r2, #1]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	ldrb r0, [r4]
	cmp r3, r0
	bcc _0806F8FE
_0806F92A:
	mov r0, #0
	strb r0, [r5]
	mov r1, #0
	ldr r0, _0806F9C4  @ =0x0000FFEC
	strh r0, [r5, #2]
	mov r2, r8
	ldrb r0, [r2, #1]
	strb r0, [r5, #1]
	mov r2, r9
	ldr r0, [r2]
	add r0, r0, #153
	strb r1, [r0]
	mov r3, #0
	ldr r2, _0806F9C8  @ =0x03000760
	mov r1, #0
_0806F948:
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r2
	strb r1, [r0, #7]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
	cmp r3, #7
	bls _0806F948
	mov r4, #1
	neg r4, r4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0
	bl sub_0806F548
	ldr r1, _0806F9CC  @ =0x03000758
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl sub_0806F548
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0806F548
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0806F990:
	.4byte 0x03000740
_0806F994:
	.4byte 0x0300074E
_0806F998:
	.4byte gUnknown_03001724
_0806F99C:
	.4byte 0x03000750
_0806F9A0:
	.4byte gUnknown_030012F4
_0806F9A4:
	.4byte 0x03001B98
_0806F9A8:
	.4byte 0x03000754
_0806F9AC:
	.4byte 0x03001BC8
_0806F9B0:
	.4byte 0x03000720
_0806F9B4:
	.4byte gUnknown_0854301C
_0806F9B8:
	.4byte 0x03001940
_0806F9BC:
	.4byte 0x03000728
_0806F9C0:
	.4byte gUnknown_085BD3D8
_0806F9C4:
	.4byte 0x0000FFEC
_0806F9C8:
	.4byte 0x03000760
_0806F9CC:
	.4byte 0x03000758
	THUMB_FUNC_END sub_0806F898

	THUMB_FUNC_START sub_0806F9D0
sub_0806F9D0: @ 0x0806F9D0
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r0, _0806FA5C  @ =0x03000754
	ldr r0, [r0]
	ldr r3, _0806FA60  @ =0x03000760
	ldr r1, _0806FA64  @ =0x03000758
	mov r2, #0
	ldrsb r2, [r1, r2]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r3, r3, #12
	add r1, r1, r3
	ldr r1, [r1]
	bl sub_08040FC0
	mov r2, #0
_0806F9F2:
	ldr r1, _0806FA60  @ =0x03000760
	lsl r2, r2, #16
	asr r5, r2, #16
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	add r3, r0, r1
	ldrb r1, [r3, #7]
	mov r0, #16
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	bne _0806FA0E
	b _0806FB76
_0806FA0E:
	add r4, r3, #0
	add r0, r4, #0
	bl sub_0806F834
	lsl r0, r0, #24
	cmp r0, #0
	bne _0806FA28
	add r0, r4, #0
	bl sub_0806F7D4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0806FA68
_0806FA28:
	ldr r0, [r4]
	add r1, r0, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FA4E
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r4, #12]
	bl sub_08040FC0
_0806FA4E:
	ldr r0, [r4]
	ldrb r1, [r0, #29]
	ldrb r2, [r0, #30]
	add r0, r5, #0
	bl sub_0806F548
	b _0806FB86
_0806FA5C:
	.4byte 0x03000754
_0806FA60:
	.4byte 0x03000760
_0806FA64:
	.4byte 0x03000758
_0806FA68:
	ldr r0, [r4]
	ldrh r0, [r0, #30]
	mov r2, #128
	lsl r2, r2, #2
	add r1, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0806FAF2
	mov r3, #0
	ldr r1, [r4, #12]
	asr r2, r1, #8
	ldr r0, _0806FA94  @ =0x03000742
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r2, r0
	bge _0806FA98
	mov r2, #128
	lsl r2, r2, #1
	add r0, r1, r2
	str r0, [r4, #12]
	b _0806FAAA
	.byte 0x00
	.byte 0x00
_0806FA94:
	.4byte 0x03000742
_0806FA98:
	cmp r2, r0
	ble _0806FAA8
	ldr r5, _0806FAA4  @ =0xFFFFFF00
	add r0, r1, r5
	str r0, [r4, #12]
	b _0806FAAA
_0806FAA4:
	.4byte 0xFFFFFF00
_0806FAA8:
	mov r3, #1
_0806FAAA:
	ldr r1, [r4, #16]
	asr r2, r1, #8
	ldr r0, _0806FAC4  @ =0x03000744
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r2, r0
	bge _0806FAC8
	mov r2, #128
	lsl r2, r2, #1
	add r0, r1, r2
	str r0, [r4, #16]
	b _0806FAE2
	.byte 0x00
	.byte 0x00
_0806FAC4:
	.4byte 0x03000744
_0806FAC8:
	cmp r2, r0
	ble _0806FAD8
	ldr r5, _0806FAD4  @ =0xFFFFFF00
	add r0, r1, r5
	str r0, [r4, #16]
	b _0806FAE2
_0806FAD4:
	.4byte 0xFFFFFF00
_0806FAD8:
	lsl r0, r3, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r3, r0, #16
_0806FAE2:
	cmp r3, #2
	bne _0806FAF2
	asr r0, r6, #16
	ldr r2, [r4]
	ldrb r1, [r2, #29]
	ldrb r2, [r2, #30]
	bl sub_0806F548
_0806FAF2:
	ldrh r0, [r4, #8]
	add r3, r0, #1
	mov r0, #255
	and r3, r3, r0
	strh r3, [r4, #8]
	ldr r1, [r4]
	ldrh r5, [r1, #30]
	mov r0, #128
	and r0, r0, r5
	add r2, r1, #0
	cmp r0, #0
	beq _0806FB22
	add r0, r2, #0
	add r0, r0, #32
	ldrb r0, [r0]
	cmp r3, r0
	bcc _0806FB22
	asr r0, r6, #16
	ldrb r1, [r2, #29]
	lsl r2, r5, #24
	lsr r2, r2, #24
	bl sub_0806F548
	b _0806FB86
_0806FB22:
	ldrh r1, [r2, #30]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0806FB76
	mov r5, #0
	ldrsh r0, [r2, r5]
	lsl r0, r0, #8
	ldr r1, [r4, #12]
	cmp r1, r0
	blt _0806FB76
	mov r1, #2
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	ldr r1, [r4, #16]
	cmp r1, r0
	blt _0806FB76
	add r1, r2, #0
	add r1, r1, #33
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806FB68
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r4, #12]
	bl sub_08040FC0
_0806FB68:
	asr r0, r6, #16
	ldr r2, [r4]
	ldrb r1, [r2, #29]
	ldrb r2, [r2, #30]
	bl sub_0806F548
	b _0806FB86
_0806FB76:
	mov r2, #128
	lsl r2, r2, #9
	add r0, r6, r2
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	bgt _0806FB86
	b _0806F9F2
_0806FB86:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806F9D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806FB90
sub_0806FB90: @ 0x0806FB90
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r5, #0
	ldr r0, _0806FC04  @ =0x03001BC8
	mov r12, r0
	ldr r6, _0806FC08  @ =0x03000720
	ldr r0, _0806FC0C  @ =0x03001940
	mov r10, r0
	mov r1, r12
	ldrb r1, [r1]
	cmp r5, r1
	bcs _0806FC2E
	ldr r7, _0806FC10  @ =0x03000728
	ldr r2, _0806FC14  @ =gUnknown_085BD3D8
	mov r9, r2
	ldr r3, _0806FC18  @ =0x03001BB0
	mov r8, r3
_0806FBB8:
	lsl r1, r5, #2
	add r2, r1, r7
	ldrb r0, [r2, #1]
	sub r0, r0, #1
	strb r0, [r2, #1]
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r4, r1, #0
	cmp r3, #0
	bne _0806FBE8
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #12
	blt _0806FBDA
	strb r3, [r2]
_0806FBDA:
	ldrb r0, [r2]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r9
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
_0806FBE8:
	add r2, r4, r7
	mov r1, #2
	ldrsh r0, [r2, r1]
	lsl r0, r0, #8
	mov r3, r8
	add r1, r4, r3
	ldr r1, [r1]
	ldr r1, [r1, #32]
	cmp r0, r1
	bge _0806FC1C
	ldrh r0, [r2, #2]
	add r0, r0, #1
	b _0806FC1E
	.byte 0x00
	.byte 0x00
_0806FC04:
	.4byte 0x03001BC8
_0806FC08:
	.4byte 0x03000720
_0806FC0C:
	.4byte 0x03001940
_0806FC10:
	.4byte 0x03000728
_0806FC14:
	.4byte gUnknown_085BD3D8
_0806FC18:
	.4byte 0x03001BB0
_0806FC1C:
	asr r0, r1, #8
_0806FC1E:
	strh r0, [r2, #2]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	mov r0, r12
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0806FBB8
_0806FC2E:
	ldrb r0, [r6, #1]
	sub r0, r0, #1
	strb r0, [r6, #1]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0806FC5A
	ldrb r0, [r6]
	add r0, r0, #1
	strb r0, [r6]
	ldrb r0, [r6]
	cmp r0, #24
	blt _0806FC4A
	strb r1, [r6]
_0806FC4A:
	ldrb r0, [r6]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r2, _0806FC8C  @ =gUnknown_0854301C
	add r1, r1, r2
	ldrb r0, [r1, #1]
	strb r0, [r6, #1]
_0806FC5A:
	mov r3, #2
	ldrsh r0, [r6, r3]
	lsl r0, r0, #8
	ldr r2, _0806FC90  @ =0x030019AC
	ldr r1, [r2]
	ldr r1, [r1, #32]
	cmp r0, r1
	bge _0806FC98
	ldrh r0, [r6, #2]
	add r0, r0, #1
	mov r1, #0
	strh r0, [r6, #2]
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #153
	strb r1, [r0]
	ldr r0, _0806FC94  @ =0x03000754
	ldr r0, [r0]
	mov r2, #2
	ldrsh r1, [r6, r2]
	lsl r1, r1, #8
	bl sub_08040FC0
	b _0806FCAE
	.byte 0x00
	.byte 0x00
_0806FC8C:
	.4byte gUnknown_0854301C
_0806FC90:
	.4byte 0x030019AC
_0806FC94:
	.4byte 0x03000754
_0806FC98:
	ldr r0, _0806FCBC  @ =0x03000A10
	add r0, r0, #48
	mov r2, #0
	mov r1, #1
	strb r1, [r0]
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #153
	strb r1, [r0]
	ldr r0, _0806FCC0  @ =0x03001B90
	strb r2, [r0]
_0806FCAE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0806FCBC:
	.4byte 0x03000A10
_0806FCC0:
	.4byte 0x03001B90
	THUMB_FUNC_END sub_0806FB90

	THUMB_FUNC_START sub_0806FCC4
sub_0806FCC4: @ 0x0806FCC4
	push {r4,r5,lr}
	sub sp, sp, #12
	mov r4, #0
	ldr r2, _0806FCEC  @ =gUnknown_03001724
	ldr r0, _0806FCF0  @ =0x0300074E
	ldrh r3, [r2]
	mov r5, #0
	ldrsh r1, [r2, r5]
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	bge _0806FCF8
	add r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FCF4  @ =gUnknown_030012A0
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	b _0806FD12
	.byte 0x00
	.byte 0x00
_0806FCEC:
	.4byte gUnknown_03001724
_0806FCF0:
	.4byte 0x0300074E
_0806FCF4:
	.4byte gUnknown_030012A0
_0806FCF8:
	cmp r1, r0
	ble _0806FD10
	sub r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FD0C  @ =gUnknown_030012A0
	ldrh r0, [r1]
	sub r0, r0, #2
	strh r0, [r1]
	b _0806FD12
	.byte 0x00
	.byte 0x00
_0806FD0C:
	.4byte gUnknown_030012A0
_0806FD10:
	mov r4, #1
_0806FD12:
	ldr r2, _0806FD34  @ =gUnknown_030012F4
	ldr r0, _0806FD38  @ =0x03000750
	ldrh r3, [r2]
	mov r5, #0
	ldrsh r1, [r2, r5]
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	bge _0806FD40
	add r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FD3C  @ =gUnknown_03001710
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	b _0806FD62
	.byte 0x00
	.byte 0x00
_0806FD34:
	.4byte gUnknown_030012F4
_0806FD38:
	.4byte 0x03000750
_0806FD3C:
	.4byte gUnknown_03001710
_0806FD40:
	cmp r1, r0
	ble _0806FD58
	sub r0, r3, #1
	strh r0, [r2]
	ldr r1, _0806FD54  @ =gUnknown_03001710
	ldrh r0, [r1]
	sub r0, r0, #2
	strh r0, [r1]
	b _0806FD62
	.byte 0x00
	.byte 0x00
_0806FD54:
	.4byte gUnknown_03001710
_0806FD58:
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r4, r0, #16
_0806FD62:
	cmp r4, #2
	bne _0806FD8E
	ldr r1, _0806FD98  @ =0x03001B90
	mov r0, #5
	strb r0, [r1]
	ldr r0, _0806FD9C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	bne _0806FD8E
	ldr r4, _0806FDA0  @ =0x03000754
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
_0806FD8E:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0806FD98:
	.4byte 0x03001B90
_0806FD9C:
	.4byte gMainState
_0806FDA0:
	.4byte 0x03000754
	THUMB_FUNC_END sub_0806FCC4

	THUMB_FUNC_START sub_0806FDA4
sub_0806FDA4: @ 0x0806FDA4
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r0, _0806FE24  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	ldr r2, _0806FE28  @ =0x03001B98
	cmp r0, #0
	bne _0806FDBC
	ldrb r0, [r2]
	cmp r0, #0
	beq _0806FE58
_0806FDBC:
	ldr r0, _0806FE2C  @ =0x03000A10
	add r0, r0, #48
	mov r5, #0
	mov r1, #1
	strb r1, [r0]
	mov r1, #128
	lsl r1, r1, #19
	ldr r0, _0806FE30  @ =0x03000740
	ldrh r0, [r0]
	strh r0, [r1]
	strb r5, [r2]
	bl sub_08029E7C
	ldr r2, _0806FE34  @ =gUnknown_03001724
	ldr r0, _0806FE38  @ =0x0300074E
	ldrh r1, [r0]
	strh r1, [r2]
	ldr r2, _0806FE3C  @ =gUnknown_030012F4
	ldr r0, _0806FE40  @ =0x03000750
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _0806FE44  @ =gUnknown_030012A0
	lsl r1, r1, #1
	strh r1, [r2]
	ldr r1, _0806FE48  @ =gUnknown_03001710
	lsl r0, r0, #1
	strh r0, [r1]
	ldr r1, _0806FE4C  @ =0x03001B90
	ldrb r0, [r1]
	cmp r0, #5
	beq _0806FEAA
	mov r0, #5
	strb r0, [r1]
	bl sub_08071C24
	ldr r0, _0806FE50  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	bne _0806FEAA
	ldr r4, _0806FE54  @ =0x03000754
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #18
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r4]
	b _0806FEAA
_0806FE24:
	.4byte gSomeKeys_030012E8
_0806FE28:
	.4byte 0x03001B98
_0806FE2C:
	.4byte 0x03000A10
_0806FE30:
	.4byte 0x03000740
_0806FE34:
	.4byte gUnknown_03001724
_0806FE38:
	.4byte 0x0300074E
_0806FE3C:
	.4byte gUnknown_030012F4
_0806FE40:
	.4byte 0x03000750
_0806FE44:
	.4byte gUnknown_030012A0
_0806FE48:
	.4byte gUnknown_03001710
_0806FE4C:
	.4byte 0x03001B90
_0806FE50:
	.4byte gMainState
_0806FE54:
	.4byte 0x03000754
_0806FE58:
	ldr r1, _0806FE6C  @ =0x03001B90
	ldrb r0, [r1]
	cmp r0, #3
	beq _0806FE80
	cmp r0, #3
	bgt _0806FE70
	cmp r0, #2
	beq _0806FE7A
	b _0806FEAA
	.byte 0x00
	.byte 0x00
_0806FE6C:
	.4byte 0x03001B90
_0806FE70:
	cmp r0, #4
	beq _0806FEA0
	cmp r0, #5
	beq _0806FEA6
	b _0806FEAA
_0806FE7A:
	bl sub_0806F9D0
	b _0806FEAA
_0806FE80:
	ldr r0, _0806FE98  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806FEAA
	mov r0, #4
	strb r0, [r1]
	mov r1, #128
	lsl r1, r1, #19
	ldr r0, _0806FE9C  @ =0x03000740
	ldrh r0, [r0]
	strh r0, [r1]
	b _0806FEAA
_0806FE98:
	.4byte gUnknown_03000C28
_0806FE9C:
	.4byte 0x03000740
_0806FEA0:
	bl sub_0806FCC4
	b _0806FEAA
_0806FEA6:
	bl sub_0806FB90
_0806FEAA:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0806FDA4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0806FEB4
sub_0806FEB4: @ 0x0806FEB4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [r0]
	mov r12, r4
	ldr r5, _08070038  @ =0x040000D4
	mov r8, r5
	ldr r4, [r4, #20]
	str r4, [r5]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r4, r4, r6
	str r4, [r5, #4]
	ldr r4, _08070040  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrb r5, [r0, #4]
	mov r4, r12
	ldr r6, [r4, #16]
	lsl r4, r5, #3
	add r4, r4, r5
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r5, [r4]
	mov r6, r12
	ldrh r4, [r6, #8]
	mul r5, r4, r5
	lsl r5, r5, #2
	ldr r4, [r6, #24]
	add r4, r4, r5
	mov r5, r8
	str r4, [r5]
	ldrh r4, [r3]
	ldr r6, _08070044  @ =0x06010000
	add r4, r4, r6
	str r4, [r5, #4]
	mov r5, r12
	ldrh r4, [r5, #12]
	lsr r4, r4, #2
	mov r6, #132
	lsl r6, r6, #24
	orr r4, r4, r6
	mov r5, r8
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r7, r4, r6
	ldrb r5, [r7, #1]
	mov r4, #13
	neg r4, r4
	and r4, r4, r5
	mov r5, #8
	orr r4, r4, r5
	strb r4, [r7, #1]
	ldr r5, [r0, #12]
	asr r5, r5, #8
	ldr r4, _08070048  @ =0x000001FF
	and r5, r5, r4
	ldrh r6, [r7, #2]
	ldr r4, _0807004C  @ =0xFFFFFE00
	mov r10, r4
	and r4, r4, r6
	orr r4, r4, r5
	strh r4, [r7, #2]
	ldr r4, [r0, #16]
	asr r4, r4, #8
	strb r4, [r7]
	ldrh r6, [r7, #4]
	lsl r5, r6, #22
	lsr r5, r5, #22
	ldrh r4, [r2]
	add r5, r5, r4
	ldr r4, _08070050  @ =0x000003FF
	and r5, r5, r4
	ldr r4, _08070054  @ =0xFFFFFC00
	mov r9, r4
	and r4, r4, r6
	orr r4, r4, r5
	strh r4, [r7, #4]
	ldrb r5, [r7, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r5
	strb r4, [r7, #5]
	ldrh r4, [r1]
	add r4, r4, #1
	strh r4, [r1]
	mov r5, r12
	ldrh r4, [r5, #10]
	ldrh r6, [r2]
	add r4, r4, r6
	strh r4, [r2]
	ldrh r4, [r5, #12]
	ldrh r5, [r3]
	add r4, r4, r5
	strh r4, [r3]
	mov r6, r12
	ldr r4, [r6, #20]
	mov r5, r8
	str r4, [r5]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r4, r4, r6
	str r4, [r5, #4]
	ldr r4, _08070040  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrb r5, [r0, #4]
	mov r4, r12
	ldr r6, [r4, #16]
	lsl r4, r5, #3
	add r4, r4, r5
	lsl r4, r4, #2
	add r4, r4, r6
	ldrb r5, [r4]
	mov r6, r12
	ldrh r4, [r6, #8]
	mul r5, r4, r5
	lsl r5, r5, #2
	ldr r4, [r6, #24]
	add r4, r4, r5
	mov r5, r8
	str r4, [r5]
	ldrh r4, [r3]
	ldr r6, _08070044  @ =0x06010000
	add r4, r4, r6
	str r4, [r5, #4]
	mov r5, r12
	ldrh r4, [r5, #12]
	lsr r4, r4, #2
	mov r6, #132
	lsl r6, r6, #24
	orr r4, r4, r6
	mov r5, r8
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r4, [r1]
	lsl r4, r4, #3
	ldr r6, _0807003C  @ =gOamBuffer
	add r7, r4, r6
	ldr r4, [r0, #12]
	asr r4, r4, #8
	ldr r5, _08070048  @ =0x000001FF
	and r4, r4, r5
	ldrh r5, [r7, #2]
	mov r6, r10
	and r6, r6, r5
	orr r6, r6, r4
	strh r6, [r7, #2]
	ldr r0, [r0, #16]
	asr r0, r0, #8
	strb r0, [r7]
	ldrh r4, [r7, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	ldrh r5, [r2]
	add r0, r0, r5
	ldr r6, _08070050  @ =0x000003FF
	and r0, r0, r6
	mov r5, r9
	and r5, r5, r4
	orr r5, r5, r0
	strh r5, [r7, #4]
	ldrb r0, [r7, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r0
	strb r4, [r7, #5]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r6, r12
	ldrh r0, [r6, #10]
	ldrh r1, [r2]
	add r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r6, #12]
	ldrh r4, [r3]
	add r0, r0, r4
	strh r0, [r3]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08070038:
	.4byte 0x040000D4
_0807003C:
	.4byte gOamBuffer
_08070040:
	.4byte 0x84000002
_08070044:
	.4byte 0x06010000
_08070048:
	.4byte 0x000001FF
_0807004C:
	.4byte 0xFFFFFE00
_08070050:
	.4byte 0x000003FF
_08070054:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0806FEB4

	THUMB_FUNC_START sub_08070058
sub_08070058: @ 0x08070058
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	ldr r5, _08070238  @ =0x040000D4
	ldr r0, _0807023C  @ =gUnknown_0854337C
	str r0, [r5]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r1, _08070240  @ =gOamBuffer
	mov r12, r1
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _08070244  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _08070248  @ =0x03000720
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0807024C  @ =gUnknown_08543384
	add r0, r0, r1
	str r0, [r5]
	ldrh r0, [r2]
	ldr r1, _08070250  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _08070254  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r7, r9
	ldrh r7, [r7]
	add r1, r1, r7
	ldr r7, _08070258  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0807025C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #16
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r12
	mov r0, #2
	ldrsh r1, [r4, r0]
	ldr r4, _08070260  @ =gUnknown_030012A0
	ldrh r0, [r4]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	ldr r2, _08070264  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08070268  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, _0807026C  @ =0x030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r3, _08070270  @ =gUnknown_03001710
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r7, r9
	ldrh r0, [r7]
	add r0, r0, #32
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	mov r2, r8
	ldrh r2, [r2]
	add r0, r0, r2
	mov r7, r8
	strh r0, [r7]
	mov r0, #0
	mov r10, r0
	ldr r1, _08070274  @ =0x03001BC8
	ldrb r1, [r1]
	cmp r10, r1
	bcs _08070226
	add r7, r5, #0
_08070142:
	ldr r2, _08070278  @ =gUnknown_085BD588
	str r2, [r7]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r7, #4]
	ldr r0, _08070244  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, r10
	lsl r4, r3, #2
	ldr r5, _0807027C  @ =0x03000728
	add r5, r4, r5
	str r5, [sp]
	ldrb r0, [r5]
	lsl r0, r0, #8
	ldr r1, _08070280  @ =gUnknown_085BD590
	add r0, r0, r1
	str r0, [r7]
	mov r2, r8
	ldrh r0, [r2]
	ldr r1, _08070250  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r0, _08070284  @ =0x84000040
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r5, r9
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r5, _08070258  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0807025C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r0, [r2, #3]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r0, [r2, #5]
	mov r1, #240
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r12
	ldr r0, [sp]
	mov r1, #2
	ldrsh r2, [r0, r1]
	ldr r5, _08070260  @ =gUnknown_030012A0
	ldrh r0, [r5]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r2, r2, r0
	ldr r1, _08070264  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r1, [r3, #2]
	ldr r0, _08070268  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _08070288  @ =0x03001BB0
	add r4, r4, r3
	ldr r0, [r4]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r5, _08070270  @ =gUnknown_03001710
	ldrh r0, [r5]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	strb r1, [r2]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #8
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #1
	add r0, r2, #0
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r5, r8
	strh r0, [r5]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r0, _08070274  @ =0x03001BC8
	ldrb r0, [r0]
	cmp r10, r0
	bcc _08070142
_08070226:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08070238:
	.4byte 0x040000D4
_0807023C:
	.4byte gUnknown_0854337C
_08070240:
	.4byte gOamBuffer
_08070244:
	.4byte 0x84000002
_08070248:
	.4byte 0x03000720
_0807024C:
	.4byte gUnknown_08543384
_08070250:
	.4byte 0x06010000
_08070254:
	.4byte 0x84000100
_08070258:
	.4byte 0x000003FF
_0807025C:
	.4byte 0xFFFFFC00
_08070260:
	.4byte gUnknown_030012A0
_08070264:
	.4byte 0x000001FF
_08070268:
	.4byte 0xFFFFFE00
_0807026C:
	.4byte 0x030019AC
_08070270:
	.4byte gUnknown_03001710
_08070274:
	.4byte 0x03001BC8
_08070278:
	.4byte gUnknown_085BD588
_0807027C:
	.4byte 0x03000728
_08070280:
	.4byte gUnknown_085BD590
_08070284:
	.4byte 0x84000040
_08070288:
	.4byte 0x03001BB0
	THUMB_FUNC_END sub_08070058

	THUMB_FUNC_START sub_0807028C
sub_0807028C: @ 0x0807028C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _080702AC  @ =0x03001B90
	ldrb r0, [r0]
	cmp r0, #3
	beq _080702F4
	cmp r0, #3
	bgt _080702B0
	cmp r0, #2
	beq _080702B6
	b _0807033A
	.byte 0x00
	.byte 0x00
_080702AC:
	.4byte 0x03001B90
_080702B0:
	cmp r0, #5
	beq _08070330
	b _0807033A
_080702B6:
	mov r1, #0
	ldr r0, _080702F0  @ =0x03000760
	mov r8, r0
_080702BC:
	lsl r0, r1, #16
	asr r4, r0, #16
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #2
	mov r1, r8
	add r2, r0, r1
	ldrb r1, [r2, #7]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080702E0
	add r0, r2, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0806FEB4
_080702E0:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _080702BC
	b _0807033A
	.byte 0x00
	.byte 0x00
_080702F0:
	.4byte 0x03000760
_080702F4:
	mov r1, #0
	ldr r0, _0807032C  @ =0x03000760
	mov r8, r0
_080702FA:
	lsl r0, r1, #16
	asr r4, r0, #16
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #2
	mov r1, r8
	add r2, r0, r1
	ldrb r1, [r2, #7]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0807031E
	add r0, r2, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0806FEB4
_0807031E:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, #7
	ble _080702FA
	b _0807033A
_0807032C:
	.4byte 0x03000760
_08070330:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_08070058
_0807033A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0807028C

	THUMB_FUNC_START sub_08070344
sub_08070344: @ 0x08070344
	push {r4-r6,lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r2, r2, #24
	ldr r1, _08070378  @ =0x03000800
	ldr r3, _0807037C  @ =0x03001994
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	ldr r1, _08070380  @ =0x03000806
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	mov r4, #1
	strb r4, [r0]
	cmp r2, #0
	beq _08070388
	ldr r1, _08070384  @ =0x0300081A
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	strb r4, [r0]
	b _08070394
_08070378:
	.4byte 0x03000800
_0807037C:
	.4byte 0x03001994
_08070380:
	.4byte 0x03000806
_08070384:
	.4byte 0x0300081A
_08070388:
	ldr r0, _080703C4  @ =0x0300081A
	ldrb r1, [r3]
	sub r1, r1, #1
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1]
_08070394:
	ldr r1, _080703C8  @ =0x0300080C
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r5, #3
	mov r2, #0
	strh r1, [r0]
	ldr r1, _080703CC  @ =0x03000814
	ldrb r0, [r3]
	sub r0, r0, #1
	lsl r0, r0, #1
	add r0, r0, r1
	lsl r1, r6, #3
	strh r1, [r0]
	ldr r1, _080703D0  @ =0x03001E40
	ldrb r0, [r3]
	sub r0, r0, #1
	add r0, r0, r1
	strb r2, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080703C4:
	.4byte 0x0300081A
_080703C8:
	.4byte 0x0300080C
_080703CC:
	.4byte 0x03000814
_080703D0:
	.4byte 0x03001E40
	THUMB_FUNC_END sub_08070344

	THUMB_FUNC_START sub_080703D4
sub_080703D4: @ 0x080703D4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	mov r6, #0
	ldr r0, _0807045C  @ =0x03001994
	mov r9, r0
	ldrb r0, [r0]
	cmp r6, r0
	bcc _080703EC
	b _08070590
_080703EC:
	mov r1, #1
	neg r1, r1
	mov r8, r1
_080703F2:
	ldr r0, _08070460  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _08070402
	b _08070580
_08070402:
	ldr r1, _08070464  @ =0x03000800
	lsl r2, r6, #1
	add r3, r2, r1
	ldrh r0, [r3]
	add r5, r0, #1
	mov r7, #0
	mov r0, #0
	mov r12, r0
	strh r5, [r3]
	ldr r0, _08070468  @ =0x03000806
	add r4, r6, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080704D8
	lsl r0, r5, #16
	cmp r0, #0
	beq _080704D8
	strb r7, [r4]
	mov r1, r12
	strh r1, [r3]
	ldr r0, _0807046C  @ =0x0300081A
	add r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _08070478
	ldr r0, _08070470  @ =0x0300080C
	add r0, r2, r0
	ldrh r3, [r0]
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _08070474  @ =0x03000814
	add r0, r2, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r12
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #1
	b _0807049A
	.byte 0x00
	.byte 0x00
_0807045C:
	.4byte 0x03001994
_08070460:
	.4byte gUnknown_03001A1C
_08070464:
	.4byte 0x03000800
_08070468:
	.4byte 0x03000806
_0807046C:
	.4byte 0x0300081A
_08070470:
	.4byte 0x0300080C
_08070474:
	.4byte 0x03000814
_08070478:
	ldr r0, _080704C4  @ =0x0300080C
	add r0, r2, r0
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _080704C8  @ =0x03000814
	add r0, r2, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #0
_0807049A:
	bl sub_08038DF4
	lsl r0, r0, #24
	asr r2, r0, #24
	cmp r2, r8
	beq _08070590
	ldr r0, _080704CC  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	str r6, [r0, #72]
	ldr r1, _080704D0  @ =0x03001E40
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _080704D4  @ =0x03001994
	mov r9, r1
	b _08070580
	.byte 0x00
	.byte 0x00
_080704C4:
	.4byte 0x0300080C
_080704C8:
	.4byte 0x03000814
_080704CC:
	.4byte 0x03001940
_080704D0:
	.4byte 0x03001E40
_080704D4:
	.4byte 0x03001994
_080704D8:
	add r4, r2, #0
	add r3, r4, r1
	ldrh r1, [r3]
	mov r0, #150
	lsl r0, r0, #2
	cmp r1, r0
	bls _08070580
	ldr r0, _08070528  @ =0x03001E40
	add r0, r6, r0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _08070580
	mov r5, #0
	strh r5, [r3]
	ldr r0, _0807052C  @ =0x0300081A
	add r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0
	beq _08070538
	ldr r0, _08070530  @ =0x0300080C
	add r0, r4, r0
	ldrh r3, [r0]
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _08070534  @ =0x03000814
	add r0, r4, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #1
	b _0807055A
	.byte 0x00
	.byte 0x00
_08070528:
	.4byte 0x03001E40
_0807052C:
	.4byte 0x0300081A
_08070530:
	.4byte 0x0300080C
_08070534:
	.4byte 0x03000814
_08070538:
	ldr r0, _080705A0  @ =0x0300080C
	add r0, r2, r0
	ldrh r3, [r0]
	add r3, r3, #2
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _080705A4  @ =0x03000814
	add r0, r2, r0
	ldrh r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #187
	mov r2, #0
_0807055A:
	bl sub_08038DF4
	lsl r0, r0, #24
	asr r2, r0, #24
	cmp r2, r8
	beq _08070590
	ldr r0, _080705A8  @ =0x03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	str r6, [r0, #72]
	ldr r1, _080705AC  @ =0x03001E40
	add r1, r6, r1
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _080705B0  @ =0x03001994
	mov r9, r0
_08070580:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, r9
	ldrb r1, [r1]
	cmp r6, r1
	bcs _08070590
	b _080703F2
_08070590:
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080705A0:
	.4byte 0x0300080C
_080705A4:
	.4byte 0x03000814
_080705A8:
	.4byte 0x03001940
_080705AC:
	.4byte 0x03001E40
_080705B0:
	.4byte 0x03001994
	THUMB_FUNC_END sub_080703D4

	THUMB_FUNC_START sub_080705B4
sub_080705B4: @ 0x080705B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r4, [sp, #40]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp]
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #4]
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r10, r2
	lsl r3, r3, #24
	lsr r5, r3, #24
	mov r9, r5
	lsl r4, r4, #24
	lsr r7, r4, #24
	mov r8, r7
	ldr r4, _080705FC  @ =0x03001E50
	add r6, r4, #0
	add r6, r6, #136
	ldr r0, [r6]
	cmp r0, #7
	bhi _080705F6
	bl sub_0802BA00
	mov r12, r0
	cmp r0, #0
	bne _08070600
_080705F6:
	mov r0, #0
	b _080706F6
	.byte 0x00
	.byte 0x00
_080705FC:
	.4byte 0x03001E50
_08070600:
	add r2, r4, #0
	add r2, r2, #140
	ldr r3, [r6]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #3
	ldr r2, [r2]
	add r4, r2, r1
	add r3, r3, #1
	str r3, [r6]
	cmp r7, #0
	beq _08070670
	cmp r5, #61
	beq _080706CA
	cmp r5, #62
	bne _08070630
	ldr r1, _0807062C  @ =gUnknown_08669D6C
	ldrh r1, [r1, #40]
	strh r1, [r4, #4]
	mov r1, #20
	b _080706D2
	.byte 0x00
	.byte 0x00
_0807062C:
	.4byte gUnknown_08669D6C
_08070630:
	cmp r5, #63
	bne _08070644
	ldr r1, _08070640  @ =gUnknown_08669D6C
	ldrh r1, [r1, #26]
	strh r1, [r4, #4]
	mov r1, #13
	b _080706D2
	.byte 0x00
	.byte 0x00
_08070640:
	.4byte gUnknown_08669D6C
_08070644:
	cmp r5, #64
	bne _08070658
	ldr r1, _08070654  @ =gUnknown_08669D6C
	ldrh r1, [r1, #12]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, #6
	b _080706A6
_08070654:
	.4byte gUnknown_08669D6C
_08070658:
	cmp r5, #65
	bne _080706D8
	ldr r1, _0807066C  @ =gUnknown_08669D6C
	ldrh r2, [r1]
	mov r3, #0
	mov r1, #0
	strh r2, [r4, #4]
	str r1, [r4]
	strb r3, [r4, #14]
	b _080706D8
_0807066C:
	.4byte gUnknown_08669D6C
_08070670:
	cmp r5, #61
	bne _08070684
	ldr r1, _08070680  @ =gUnknown_08669D6C
	ldrh r1, [r1]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, r8
	b _080706A6
_08070680:
	.4byte gUnknown_08669D6C
_08070684:
	cmp r5, #62
	bne _08070698
	ldr r1, _08070694  @ =gUnknown_08669D6C
	ldrh r1, [r1, #12]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, #6
	b _080706A6
_08070694:
	.4byte gUnknown_08669D6C
_08070698:
	cmp r5, #63
	bne _080706B0
	ldr r1, _080706AC  @ =gUnknown_08669D6C
	ldrh r1, [r1, #26]
	mov r2, #0
	strh r1, [r4, #4]
	mov r1, #13
_080706A6:
	str r1, [r4]
	strb r2, [r4, #14]
	b _080706D8
_080706AC:
	.4byte gUnknown_08669D6C
_080706B0:
	cmp r5, #64
	bne _080706C4
	ldr r1, _080706C0  @ =gUnknown_08669D6C
	ldrh r1, [r1, #40]
	strh r1, [r4, #4]
	mov r1, #20
	b _080706D2
	.byte 0x00
	.byte 0x00
_080706C0:
	.4byte gUnknown_08669D6C
_080706C4:
	mov r2, r9
	cmp r2, #65
	bne _080706D8
_080706CA:
	ldr r1, _08070708  @ =gUnknown_08669D6C
	ldrh r1, [r1, #54]
	strh r1, [r4, #4]
	mov r1, #27
_080706D2:
	str r1, [r4]
	mov r1, #1
	strb r1, [r4, #14]
_080706D8:
	mov r1, r12
	str r1, [r4, #20]
	mov r2, r10
	strh r2, [r4, #6]
	ldr r2, [sp]
	str r2, [r1]
	ldr r2, [sp, #4]
	str r2, [r1, #4]
	ldr r1, _0807070C  @ =0x03001E50
	ldr r2, [r4]
	lsl r2, r2, #2
	add r2, r2, r1
	ldr r1, [r2]
	mov r2, r12
	str r1, [r2, #8]
_080706F6:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08070708:
	.4byte gUnknown_08669D6C
_0807070C:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_080705B4

	THUMB_FUNC_START sub_08070710
sub_08070710: @ 0x08070710
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _0807077C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0807072E
	bl _08071326
_0807072E:
	mov r0, #0
	mov r9, r0
	ldr r0, _08070780  @ =0x03001E50
	add r1, r0, #0
	add r1, r1, #140
	ldr r4, [r1]
	add r0, r0, #136
	ldr r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r10, r0
	cmp r4, r10
	bcc _08070750
	bl _08071326
_08070750:
	mov r1, #0
	mov r8, r1
	ldr r7, _08070784  @ =gUnknown_08669D6C
_08070756:
	ldrh r5, [r4, #4]
	cmp r5, #0
	beq _08070788
	ldr r3, _08070780  @ =0x03001E50
	add r0, r3, #0
	add r0, r0, #140
	ldr r1, [r0]
	mov r6, r9
	lsl r2, r6, #1
	add r0, r2, r6
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080707A0
	sub r0, r5, #1
	strh r0, [r4, #4]
	bl _08071312
_0807077C:
	.4byte gUnknown_03001A1C
_08070780:
	.4byte 0x03001E50
_08070784:
	.4byte gUnknown_08669D6C
_08070788:
	ldr r3, _0807080C  @ =0x03001E50
	add r0, r3, #0
	add r0, r0, #140
	ldr r1, [r0]
	mov r0, r9
	lsl r2, r0, #1
	add r0, r2, r0
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080707B2
_080707A0:
	add r0, r3, #0
	add r0, r0, #140
	ldr r1, [r0]
	mov r5, r9
	add r0, r2, r5
	lsl r0, r0, #3
	add r0, r0, r1
	mov r6, r8
	strb r6, [r0, #8]
_080707B2:
	ldrb r5, [r4, #14]
	cmp r5, #0
	beq _080707BA
	b _08070CE2
_080707BA:
	ldrb r6, [r4, #16]
	cmp r6, #0
	bne _080707C2
	b _08070A9A
_080707C2:
	ldr r1, [r4]
	cmp r1, #0
	bne _08070810
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #2
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #2
	bne _080707FC
	bl _08071312
_080707FC:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #8]
	str r1, [r0, #8]
	ldrh r0, [r7, #4]
	strh r0, [r2, #4]
	bl _08071312
_0807080C:
	.4byte 0x03001E50
_08070810:
	cmp r1, #2
	bne _08070858
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #3
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #3
	bne _08070848
	bl _08071312
_08070848:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #12]
	str r1, [r0, #8]
	ldrh r0, [r7, #6]
	strh r0, [r2, #4]
	bl _08071312
_08070858:
	cmp r1, #3
	bne _080708B6
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r6, #4
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #4
	beq _08070898
	str r6, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #16]
	str r1, [r0, #8]
	ldrh r0, [r7, #8]
	strh r0, [r2, #4]
_08070898:
	ldrh r3, [r4, #10]
	sub r3, r3, #4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #2
	bl _08071230
_080708B6:
	cmp r1, #4
	bne _080708FE
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #5
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #5
	bne _080708EE
	bl _08071312
_080708EE:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #20]
	str r1, [r0, #8]
	ldrh r0, [r7, #10]
	strh r0, [r2, #4]
	bl _08071312
_080708FE:
	cmp r1, #5
	bne _08070946
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #1
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #1
	bne _08070936
	bl _08071312
_08070936:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #4]
	str r1, [r0, #8]
	ldrh r0, [r7, #2]
	strh r0, [r2, #4]
	bl _08071312
_08070946:
	cmp r1, #1
	bne _0807094C
	b _08070AE8
_0807094C:
	cmp r1, #6
	bne _08070952
	b _08070B2C
_08070952:
	cmp r1, #9
	bne _08070958
	b _08070B70
_08070958:
	cmp r1, #10
	bne _080709C6
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #11
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #11
	beq _08070998
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #44]
	str r1, [r0, #8]
	ldrh r0, [r7, #22]
	strh r0, [r2, #4]
_08070998:
	ldrh r3, [r4, #10]
	sub r3, r3, #1
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #6
	bl sub_08038DF4
	mov r1, r8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl _0807123C
_080709C6:
	cmp r1, #11
	bne _080709CC
	b _08070C1C
_080709CC:
	cmp r1, #12
	bne _08070A14
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #8
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #8
	bne _08070A04
	bl _08071312
_08070A04:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #32]
	str r1, [r0, #8]
	ldrh r0, [r7, #16]
	strh r0, [r2, #4]
	bl _08071312
_08070A14:
	cmp r1, #8
	bne _08070A1A
	b _08070F40
_08070A1A:
	cmp r1, #13
	bne _08070A20
	b _08070F84
_08070A20:
	cmp r1, #16
	bne _08070A26
	b _08070FC8
_08070A26:
	cmp r1, #17
	bne _08070A84
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #18
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #18
	beq _08070A66
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #72]
	str r1, [r0, #8]
	ldrh r0, [r7, #36]
	strh r0, [r2, #4]
_08070A66:
	ldrh r3, [r4, #10]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r5, r8
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #10
	b _08071230
_08070A84:
	cmp r1, #18
	bne _08070A8A
	b _08071078
_08070A8A:
	cmp r1, #19
	beq _08070A92
	bl _08071312
_08070A92:
	mov r6, r8
	strb r6, [r4, #16]
	bl _08071312
_08070A9A:
	ldr r0, [r4]
	cmp r0, #19
	bne _08070AE4
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #14
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #14
	bne _08070AD4
	bl _08071312
_08070AD4:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #56]
	str r1, [r0, #8]
	ldrh r0, [r7, #28]
	strh r0, [r2, #4]
	bl _08071312
_08070AE4:
	cmp r0, #14
	bne _08070B28
_08070AE8:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #6
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #6
	bne _08070B1A
	b _08071312
_08070B1A:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #24]
	str r1, [r0, #8]
	ldrh r0, [r7, #12]
	strh r0, [r2, #4]
	b _08071312
_08070B28:
	cmp r0, #6
	bne _08070B6C
_08070B2C:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #9
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #9
	bne _08070B5E
	b _08071312
_08070B5E:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #36]
	str r1, [r0, #8]
	ldrh r0, [r7, #18]
	strh r0, [r2, #4]
	b _08071312
_08070B6C:
	cmp r0, #9
	bne _08070BB0
_08070B70:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #10
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #10
	bne _08070BA2
	b _08071312
_08070BA2:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #40]
	str r1, [r0, #8]
	ldrh r0, [r7, #20]
	strh r0, [r2, #4]
	b _08071312
_08070BB0:
	cmp r0, #10
	bne _08070C18
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #11
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #11
	beq _08070BF0
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #44]
	str r1, [r0, #8]
	ldrh r0, [r7, #22]
	strh r0, [r2, #4]
_08070BF0:
	ldrh r3, [r4, #10]
	sub r3, r3, #1
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #6
	bl sub_08038DF4
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	b _0807123C
_08070C18:
	cmp r0, #11
	bne _08070C5C
_08070C1C:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #12
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #12
	bne _08070C4E
	b _08071312
_08070C4E:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #48]
	str r1, [r0, #8]
	ldrh r0, [r7, #24]
	strh r0, [r2, #4]
	b _08071312
_08070C5C:
	cmp r0, #12
	bne _08070CA0
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #7
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #7
	bne _08070C92
	b _08071312
_08070C92:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #28]
	str r1, [r0, #8]
	ldrh r0, [r7, #14]
	strh r0, [r2, #4]
	b _08071312
_08070CA0:
	cmp r0, #7
	beq _08070CA6
	b _08071312
_08070CA6:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #0
	bne _08070CD6
	b _0807130E
_08070CD6:
	str r6, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3]
	str r1, [r0, #8]
	ldrh r0, [r7]
	b _0807130C
_08070CE2:
	ldrb r5, [r4, #16]
	cmp r5, #0
	bne _08070CEA
	b _080710C4
_08070CEA:
	ldr r1, [r4]
	cmp r1, #27
	bne _08070D30
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #29
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #29
	bne _08070D22
	b _08071312
_08070D22:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #116]
	str r1, [r0, #8]
	ldrh r0, [r7, #58]
	strh r0, [r2, #4]
	b _08071312
_08070D30:
	cmp r1, #29
	bne _08070D74
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #30
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #30
	bne _08070D66
	b _08071312
_08070D66:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #120]
	str r1, [r0, #8]
	ldrh r0, [r7, #60]
	strh r0, [r2, #4]
	b _08071312
_08070D74:
	cmp r1, #30
	bne _08070DE0
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #31
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #31
	beq _08070DB4
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #124]
	str r1, [r0, #8]
	ldrh r0, [r7, #62]
	strh r0, [r2, #4]
_08070DB4:
	ldrh r3, [r4, #10]
	add r3, r3, #20
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	add r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #4
	bl sub_08038DF4
	mov r1, r8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _0807123C
_08070DE0:
	cmp r1, #31
	bne _08070E30
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #32
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #32
	bne _08070E16
	b _08071312
_08070E16:
	str r5, [r2]
	ldr r1, [r2, #20]
	add r0, r3, #0
	add r0, r0, #128
	ldr r0, [r0]
	str r0, [r1, #8]
	ldr r5, _08070E2C  @ =gUnknown_08669DAC
	ldrh r0, [r5]
	strh r0, [r2, #4]
	b _08071312
	.byte 0x00
	.byte 0x00
_08070E2C:
	.4byte gUnknown_08669DAC
_08070E30:
	cmp r1, #32
	bne _08070E74
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #28
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #28
	bne _08070E66
	b _08071312
_08070E66:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #112]
	str r1, [r0, #8]
	ldrh r0, [r7, #56]
	strh r0, [r2, #4]
	b _08071312
_08070E74:
	cmp r1, #28
	bne _08070E7A
	b _0807110E
_08070E7A:
	cmp r1, #20
	bne _08070E80
	b _08071152
_08070E80:
	cmp r1, #23
	bne _08070E86
	b _08071196
_08070E86:
	cmp r1, #24
	bne _08070EF0
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #25
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #25
	beq _08070EC6
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #100]
	str r1, [r0, #8]
	ldrh r0, [r7, #50]
	strh r0, [r2, #4]
_08070EC6:
	ldrh r3, [r4, #10]
	add r3, r3, #17
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r6, r8
	str r6, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #8
	bl sub_08038DF4
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	b _0807123C
_08070EF0:
	add r0, r1, #0
	cmp r0, #25
	bne _08070EF8
	b _0807124E
_08070EF8:
	cmp r0, #26
	bne _08070F3C
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #21
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #21
	bne _08070F2E
	b _08071312
_08070F2E:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #84]
	str r1, [r0, #8]
	ldrh r0, [r7, #42]
	strh r0, [r2, #4]
	b _08071312
_08070F3C:
	cmp r0, #21
	bne _08070F80
_08070F40:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #13
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #13
	bne _08070F72
	b _08071312
_08070F72:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #52]
	str r1, [r0, #8]
	ldrh r0, [r7, #26]
	strh r0, [r2, #4]
	b _08071312
_08070F80:
	cmp r0, #13
	bne _08070FC4
_08070F84:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #16
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #16
	bne _08070FB6
	b _08071312
_08070FB6:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #64]
	str r1, [r0, #8]
	ldrh r0, [r7, #32]
	strh r0, [r2, #4]
	b _08071312
_08070FC4:
	cmp r0, #16
	bne _08071008
_08070FC8:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #17
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #17
	bne _08070FFA
	b _08071312
_08070FFA:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #68]
	str r1, [r0, #8]
	ldrh r0, [r7, #34]
	strh r0, [r2, #4]
	b _08071312
_08071008:
	cmp r0, #17
	bne _08071074
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #18
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #18
	beq _08071048
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #72]
	str r1, [r0, #8]
	ldrh r0, [r7, #36]
	strh r0, [r2, #4]
_08071048:
	ldrh r3, [r4, #10]
	add r3, r3, #8
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #3
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #10
	bl sub_08038DF4
	mov r1, r8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _0807123C
_08071074:
	cmp r0, #18
	bne _080710B8
_08071078:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #19
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #19
	bne _080710AA
	b _08071312
_080710AA:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #76]
	str r1, [r0, #8]
	ldrh r0, [r7, #38]
	strh r0, [r2, #4]
	b _08071312
_080710B8:
	cmp r1, #19
	beq _080710BE
	b _08071312
_080710BE:
	mov r5, r8
	strb r5, [r4, #16]
	b _08071312
_080710C4:
	ldr r0, [r4]
	cmp r0, #19
	bne _0807110A
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #15
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #15
	bne _080710FC
	b _08071312
_080710FC:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #60]
	str r1, [r0, #8]
	ldrh r0, [r7, #30]
	strh r0, [r2, #4]
	b _08071312
_0807110A:
	cmp r0, #15
	bne _0807114E
_0807110E:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #20
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #20
	bne _08071140
	b _08071312
_08071140:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #80]
	str r1, [r0, #8]
	ldrh r0, [r7, #40]
	strh r0, [r2, #4]
	b _08071312
_0807114E:
	cmp r0, #20
	bne _08071192
_08071152:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #23
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #23
	bne _08071184
	b _08071312
_08071184:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #92]
	str r1, [r0, #8]
	ldrh r0, [r7, #46]
	strh r0, [r2, #4]
	b _08071312
_08071192:
	cmp r0, #23
	bne _080711D6
_08071196:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #24
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #24
	bne _080711C8
	b _08071312
_080711C8:
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #96]
	str r1, [r0, #8]
	ldrh r0, [r7, #48]
	strh r0, [r2, #4]
	b _08071312
_080711D6:
	cmp r0, #24
	bne _0807124A
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r6, #25
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #25
	beq _08071216
	str r6, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #100]
	str r1, [r0, #8]
	ldrh r0, [r7, #50]
	strh r0, [r2, #4]
_08071216:
	ldrh r3, [r4, #10]
	add r3, r3, #17
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldrh r0, [r4, #12]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #20
	mov r1, #190
	mov r2, #8
_08071230:
	bl sub_08038DF4
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
_0807123C:
	mov r0, #132
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08071312
_0807124A:
	cmp r0, #25
	bne _0807128C
_0807124E:
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #26
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #26
	beq _08071312
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #104]
	str r1, [r0, #8]
	ldrh r0, [r7, #52]
	strh r0, [r2, #4]
	b _08071312
_0807128C:
	cmp r0, #26
	bne _080712CE
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #22
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #22
	beq _08071312
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #88]
	str r1, [r0, #8]
	ldrh r0, [r7, #44]
	strh r0, [r2, #4]
	b _08071312
_080712CE:
	cmp r0, #22
	bne _08071312
	add r0, r3, #0
	add r0, r0, #140
	ldr r2, [r0]
	sub r1, r4, r2
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r5, #27
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r2, r2, r1
	ldr r0, [r2]
	cmp r0, #27
	beq _0807130E
	str r5, [r2]
	ldr r0, [r2, #20]
	ldr r1, [r3, #108]
	str r1, [r0, #8]
	ldrh r0, [r7, #54]
_0807130C:
	strh r0, [r2, #4]
_0807130E:
	mov r0, #1
	strb r0, [r4, #16]
_08071312:
	add r4, r4, #24
	mov r0, r9
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r9, r0
	cmp r4, r10
	bcs _08071326
	bl _08070756
_08071326:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08070710

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08071338
sub_08071338: @ 0x08071338
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	str r0, [sp, #4]
	str r1, [sp, #8]
	lsl r2, r2, #24
	lsr r7, r2, #24
	mov r8, r7
	ldr r6, _0807139C  @ =0x03001E50
	add r5, r6, #0
	add r5, r5, #140
	ldr r4, [r5]
	cmp r4, #0
	bne _08071370
	mov r0, #192
	bl arena_allocate
	add r1, r0, #0
	str r1, [r5]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _080713A0  @ =0x01000060
	bl CpuSet
	add r0, r6, #0
	add r0, r0, #136
	str r4, [r0]
_08071370:
	ldr r3, _080713A4  @ =0x0300199C
	ldrb r1, [r3]
	ldr r2, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	sub r0, r0, #24
	mov r6, #1
	strb r6, [r0, #8]
	add r4, r3, #0
	cmp r7, #0
	beq _080713A8
	ldrb r0, [r4]
	ldr r2, [r5]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r1, r1, r2
	sub r1, r1, #24
	strb r6, [r1, #14]
	b _080713BA
_0807139C:
	.4byte 0x03001E50
_080713A0:
	.4byte 0x01000060
_080713A4:
	.4byte 0x0300199C
_080713A8:
	ldrb r0, [r4]
	ldr r2, [r5]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	add r1, r1, r2
	sub r1, r1, #24
	mov r0, r8
	strb r0, [r1, #14]
_080713BA:
	ldr r2, _08071404  @ =0x03001E50
	ldrb r1, [r4]
	add r2, r2, #140
	ldr r3, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r3
	sub r0, r0, #24
	ldr r3, [sp, #4]
	lsl r1, r3, #3
	strh r1, [r0, #10]
	ldrb r1, [r4]
	ldr r3, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r3
	sub r0, r0, #24
	ldr r3, [sp, #8]
	lsl r1, r3, #3
	strh r1, [r0, #12]
	ldrb r1, [r4]
	ldr r2, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	sub r0, r0, #24
	mov r1, #1
	strb r1, [r0, #16]
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08071404:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_08071338

	THUMB_FUNC_START sub_08071408
sub_08071408: @ 0x08071408
	push {lr}
	add r2, r0, #0
	add r3, r1, #0
	ldr r1, _08071428  @ =0x03001E50
	add r0, r1, #0
	add r0, r0, #132
	str r3, [r0]
	mov r0, #32
_08071418:
	stm r1!, {r2}
	add r2, r2, r3
	sub r0, r0, #1
	cmp r0, #0
	bge _08071418
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08071428:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_08071408

	THUMB_FUNC_START sub_0807142C
sub_0807142C: @ 0x0807142C
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #192
	bl arena_allocate
	add r1, r0, #0
	ldr r4, _0807145C  @ =0x03001E50
	add r0, r4, #0
	add r0, r0, #140
	str r1, [r0]
	mov r2, sp
	mov r0, #0
	strh r0, [r2]
	ldr r2, _08071460  @ =0x01000060
	mov r0, sp
	bl CpuSet
	add r4, r4, #136
	mov r0, #0
	str r0, [r4]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0807145C:
	.4byte 0x03001E50
_08071460:
	.4byte 0x01000060
	THUMB_FUNC_END sub_0807142C

	THUMB_FUNC_START sub_08071464
sub_08071464: @ 0x08071464
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _080714A0  @ =0x03001E50
	add r2, r4, #0
	add r2, r2, #140
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r2]
	add r2, r0, r1
	ldr r0, [r2]
	cmp r0, r3
	beq _08071498
	str r3, [r2]
	ldr r1, [r2, #20]
	lsl r0, r3, #2
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldr r1, _080714A4  @ =gUnknown_08669D6C
	lsl r0, r3, #1
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #4]
_08071498:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080714A0:
	.4byte 0x03001E50
_080714A4:
	.4byte gUnknown_08669D6C
	THUMB_FUNC_END sub_08071464

	THUMB_FUNC_START sub_080714A8
sub_080714A8: @ 0x080714A8
	ldr r0, _080714B4  @ =0x03001E50
	add r0, r0, #140
	mov r1, #0
	str r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_080714B4:
	.4byte 0x03001E50
	THUMB_FUNC_END sub_080714A8

