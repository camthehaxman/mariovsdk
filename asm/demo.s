	.INCLUDE "macro.inc"

	THUMB_FUNC_START state13_15_main_callback
state13_15_main_callback: @ 0x08007B58
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	bl sub_08029C20
	bl process_input
	ldr r0, _08007BB8  @ =gUnknown_030012E8
	ldrh r0, [r0]
	ldr r1, _08007BBC  @ =gHeldKeys
	ldrh r1, [r1]
	bl sub_08038414
	bl sub_08039C44
	mov r0, #0
	mov r9, r0
	ldr r0, _08007BC0  @ =gUnknown_03001A1C
	ldr r3, [r0]
	ldr r0, _08007BC4  @ =0x00001B08
	and r0, r0, r3
	cmp r0, #0
	bne _08007B8E
	mov r1, #1
	mov r9, r1
_08007B8E:
	ldr r0, _08007BC8  @ =0x03001A00
	mov r2, r9
	strb r2, [r0]
	ldr r1, _08007BCC  @ =gUnknown_03000038
	ldr r0, _08007BD0  @ =gUnknown_03000034
	ldr r2, [r0]
	add r0, r2, #0
	eor r0, r0, r3
	and r3, r3, r0
	str r3, [r1]
	ldr r1, _08007BD4  @ =gUnknown_0300003C
	and r0, r0, r2
	str r0, [r1]
	ldr r1, _08007BD8  @ =gUnknown_0300002C
	ldr r0, [r1]
	cmp r0, #0
	bge _08007BDC
	bl sub_08007544
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007BB8:
	.4byte gUnknown_030012E8
_08007BBC:
	.4byte gHeldKeys
_08007BC0:
	.4byte gUnknown_03001A1C
_08007BC4:
	.4byte 0x00001B08
_08007BC8:
	.4byte 0x03001A00
_08007BCC:
	.4byte gUnknown_03000038
_08007BD0:
	.4byte gUnknown_03000034
_08007BD4:
	.4byte gUnknown_0300003C
_08007BD8:
	.4byte gUnknown_0300002C
_08007BDC:
	cmp r0, #0
	ble _08007BE6
	sub r0, r0, #1
	str r0, [r1]
	b _08007F6E
_08007BE6:
	ldr r0, _08007C0C  @ =gUnknown_03000B68
	ldrb r1, [r0]
	mov r0, #2
	and r0, r0, r1
	ldr r7, _08007C10  @ =gUnknown_03000B90
	cmp r0, #0
	beq _08007C18
	ldr r0, [r7, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08007C18
	ldr r1, _08007C14  @ =gUnknown_03000B74
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #12
	b _08007EBA
	.byte 0x00
	.byte 0x00
_08007C0C:
	.4byte gUnknown_03000B68
_08007C10:
	.4byte gUnknown_03000B90
_08007C14:
	.4byte gUnknown_03000B74
_08007C18:
	add r4, r7, #0
	ldr r2, [r4, #32]
	mov r6, #2
	and r6, r6, r2
	cmp r6, #0
	beq _08007D04
	ldr r1, _08007C64  @ =gUnknown_030009D8
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #60
	bhi _08007C36
	b _08007F6E
_08007C36:
	ldr r0, _08007C68  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08007C70
	ldr r0, _08007C6C  @ =gUnknown_03000B58
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08007C92
	mov r0, #2
	bl sub_080148F0
	cmp r0, #0
	bne _08007C92
	mov r0, #2
	mov r1, #1
	bl sub_080148A4
	b _08007C92
	.byte 0x00
	.byte 0x00
_08007C64:
	.4byte gUnknown_030009D8
_08007C68:
	.4byte gUnknown_03000B80
_08007C6C:
	.4byte gUnknown_03000B58
_08007C70:
	cmp r0, #1
	bne _08007C92
	ldr r0, _08007CE0  @ =gUnknown_03000B58
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08007C92
	mov r0, #16
	bl sub_080148F0
	cmp r0, #0
	bne _08007C92
	mov r0, #16
	mov r1, #1
	bl sub_080148A4
_08007C92:
	mov r0, #20
	mov r1, #1
	bl sub_080070E8
	ldr r4, _08007CE4  @ =gUnknown_030019A0
	ldr r0, _08007CE8  @ =gUnknown_03000B90
	ldr r3, [r0, #32]
	mov r2, #15
	and r2, r2, r3
	mov r1, #18
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r4]
	orr r0, r0, r2
	str r0, [r4]
	ldr r1, _08007CEC  @ =gUnknown_03000B74
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08007CF0  @ =gUnknown_03000BD0
	mov r4, #0
	strb r4, [r0]
	mov r0, #4
	and r3, r3, r0
	cmp r3, #0
	bne _08007CD0
	b _08007F6E
_08007CD0:
	ldr r1, _08007CE0  @ =gUnknown_03000B58
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	ble _08007CF4
	strb r4, [r1]
	b _08007CF8
_08007CE0:
	.4byte gUnknown_03000B58
_08007CE4:
	.4byte gUnknown_030019A0
_08007CE8:
	.4byte gUnknown_03000B90
_08007CEC:
	.4byte gUnknown_03000B74
_08007CF0:
	.4byte gUnknown_03000BD0
_08007CF4:
	add r0, r2, #1
	strb r0, [r1]
_08007CF8:
	ldr r1, _08007D00  @ =gUnknown_03000B74
	mov r0, #0
	strb r0, [r1]
	b _08007F6E
_08007D00:
	.4byte gUnknown_03000B74
_08007D04:
	mov r0, #1
	mov r8, r0
	add r5, r2, #0
	and r5, r5, r0
	cmp r5, #0
	beq _08007D50
	mov r0, #21
	mov r1, #1
	bl sub_080070E8
	ldr r3, _08007D44  @ =gUnknown_030019A0
	ldr r2, [r4, #32]
	mov r0, #15
	and r2, r2, r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	ldr r1, _08007D48  @ =gUnknown_03000B74
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08007D4C  @ =gUnknown_03000BD0
	strb r6, [r0]
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007D44:
	.4byte gUnknown_030019A0
_08007D48:
	.4byte gUnknown_03000B74
_08007D4C:
	.4byte gUnknown_03000BD0
_08007D50:
	ldr r6, _08007DC8  @ =gUnknown_03000B80
	ldrb r0, [r6]
	mov r1, #0
	ldrsb r1, [r6, r1]
	cmp r1, #4
	bne _08007DE0
	ldr r0, _08007DCC  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl set_lives
	mov r2, #18
	ldrsh r0, [r4, r2]
	mov r2, #16
	ldrsh r1, [r4, r2]
	ldr r2, _08007DD0  @ =gUnknown_03001A30
	bl sub_08010534
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_08010BE0
	mov r0, #8
	bl sub_080148F0
	cmp r0, #0
	bne _08007D94
	mov r0, #8
	mov r1, #1
	bl sub_080148A4
_08007D94:
	mov r0, #4
	bl sub_080148F0
	cmp r0, #0
	bne _08007DA6
	mov r0, #4
	mov r1, #1
	bl sub_080148A4
_08007DA6:
	mov r0, r8
	strb r0, [r6]
	ldr r0, _08007DD4  @ =gUnknown_03000B58
	ldr r1, _08007DD8  @ =gUnknown_03000B74
	strb r5, [r1]
	strb r5, [r0]
	ldr r0, _08007DDC  @ =gUnknown_03000BD0
	strb r5, [r0]
	mov r0, #3
	mov r1, #62
	mov r2, #1
	mov r3, #8
	bl sub_0802D468
	mov r0, #30
	b _08007EBA
	.byte 0x00
	.byte 0x00
_08007DC8:
	.4byte gUnknown_03000B80
_08007DCC:
	.4byte gUnknown_03000BBC
_08007DD0:
	.4byte gUnknown_03001A30
_08007DD4:
	.4byte gUnknown_03000B58
_08007DD8:
	.4byte gUnknown_03000B74
_08007DDC:
	.4byte gUnknown_03000BD0
_08007DE0:
	cmp r1, #5
	bne _08007E64
	ldr r0, _08007E50  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl set_lives
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_08010BE0
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	ldr r2, _08007E54  @ =gUnknown_03001A30
	bl sub_08010534
	mov r0, #32
	bl sub_080148F0
	cmp r0, #0
	bne _08007E1C
	mov r0, #32
	mov r1, #1
	bl sub_080148A4
_08007E1C:
	mov r0, #64
	bl sub_080148F0
	cmp r0, #0
	bne _08007E2E
	mov r0, #64
	mov r1, #1
	bl sub_080148A4
_08007E2E:
	strb r5, [r6]
	ldr r0, _08007E58  @ =gUnknown_03000B58
	ldr r1, _08007E5C  @ =gUnknown_03000B74
	strb r5, [r1]
	strb r5, [r0]
	ldr r0, _08007E60  @ =gUnknown_03000BD0
	mov r1, r8
	strb r1, [r0]
	mov r0, #3
	mov r1, #46
	mov r2, #1
	mov r3, #6
	bl sub_0802D468
	mov r0, #30
	b _08007EBA
	.byte 0x00
	.byte 0x00
_08007E50:
	.4byte gUnknown_03000BBC
_08007E54:
	.4byte gUnknown_03001A30
_08007E58:
	.4byte gUnknown_03000B58
_08007E5C:
	.4byte gUnknown_03000B74
_08007E60:
	.4byte gUnknown_03000BD0
_08007E64:
	cmp r1, #1
	bne _08007EA4
	ldr r1, _08007E8C  @ =gUnknown_03000B74
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, _08007E90  @ =gUnknown_03000BD0
	strb r5, [r0]
	mov r0, #4
	and r2, r2, r0
	cmp r2, #0
	beq _08007EB8
	ldr r2, _08007E94  @ =gUnknown_03000B58
	ldrb r3, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	ble _08007E98
	strb r5, [r2]
	b _08007E9C
_08007E8C:
	.4byte gUnknown_03000B74
_08007E90:
	.4byte gUnknown_03000BD0
_08007E94:
	.4byte gUnknown_03000B58
_08007E98:
	add r0, r3, #1
	strb r0, [r2]
_08007E9C:
	mov r0, #0
	strb r0, [r1]
	mov r0, #20
	b _08007EBA
_08007EA4:
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08007EB8
	ldr r0, _08007EC4  @ =gUnknown_03000BB4
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _08007EC8
_08007EB8:
	mov r0, #21
_08007EBA:
	mov r1, #1
	bl sub_080070E8
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007EC4:
	.4byte gUnknown_03000BB4
_08007EC8:
	mov r5, #8
	and r5, r5, r2
	cmp r5, #0
	beq _08007F24
	mov r0, #20
	and r2, r2, r0
	cmp r2, #20
	bne _08007EEC
	mov r1, #1
	bl sub_080070E8
	ldr r1, _08007EE8  @ =gUnknown_03000B74
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	b _08007F6E
_08007EE8:
	.4byte gUnknown_03000B74
_08007EEC:
	mov r0, #21
	mov r1, #1
	bl sub_080070E8
	ldr r2, _08007F18  @ =gUnknown_03000B74
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r0, _08007F1C  @ =gUnknown_03000BD0
	strb r4, [r0]
	ldr r0, [r7, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08007F6E
	ldr r1, _08007F20  @ =gUnknown_03000B58
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r4, [r2]
	b _08007F6E
	.byte 0x00
	.byte 0x00
_08007F18:
	.4byte gUnknown_03000B74
_08007F1C:
	.4byte gUnknown_03000BD0
_08007F20:
	.4byte gUnknown_03000B58
_08007F24:
	ldr r3, _08007FC8  @ =gUnknown_03000B74
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r0, _08007FCC  @ =gUnknown_03000BD0
	strb r5, [r0]
	mov r0, #4
	and r2, r2, r0
	cmp r2, #0
	beq _08007F42
	ldr r1, _08007FD0  @ =gUnknown_03000B58
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	strb r5, [r3]
_08007F42:
	ldr r1, _08007FD4  @ =gUnknown_03000BB8
	ldr r2, _08007FD8  @ =gUnknown_03000B6C
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08007FDC  @ =gUnknown_03000B48
	ldr r0, _08007FE0  @ =gUnknown_03000B4C
	ldr r0, [r0]
	str r0, [r1]
	str r5, [r2]
	ldr r1, _08007FE4  @ =gUnknown_03000B44
	ldr r0, _08007FE8  @ =gUnknown_03000B54
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08007FEC  @ =gUnknown_03001A30
	ldr r1, _08007FF0  @ =gUnknown_030009E4
	mov r2, #2
	bl CpuSet
	mov r0, #12
	mov r1, #1
	bl sub_080070E8
_08007F6E:
	ldr r1, _08007FF4  @ =gUnknown_03000034
	ldr r0, _08007FF8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08007FFC  @ =0x03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007FAA
	bl sub_0802C540
	ldr r0, _08008000  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _08007F92
	bl sub_0802C9D8
_08007F92:
	bl sub_0802BAA0
	bl sub_0802CF78
	bl sub_08030F50
	ldr r0, _08008004  @ =gUnknown_030009E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007FAA
	bl sub_080315A4
_08007FAA:
	bl sub_08031C1C
	ldr r4, _08008008  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r2, #18
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _0800800C
	ldr r0, _08007FFC  @ =0x03001A00
	ldrb r0, [r0]
	bl sub_0802BEA4
	b _08008016
_08007FC8:
	.4byte gUnknown_03000B74
_08007FCC:
	.4byte gUnknown_03000BD0
_08007FD0:
	.4byte gUnknown_03000B58
_08007FD4:
	.4byte gUnknown_03000BB8
_08007FD8:
	.4byte gUnknown_03000B6C
_08007FDC:
	.4byte gUnknown_03000B48
_08007FE0:
	.4byte gUnknown_03000B4C
_08007FE4:
	.4byte gUnknown_03000B44
_08007FE8:
	.4byte gUnknown_03000B54
_08007FEC:
	.4byte gUnknown_03001A30
_08007FF0:
	.4byte gUnknown_030009E4
_08007FF4:
	.4byte gUnknown_03000034
_08007FF8:
	.4byte gUnknown_03001A1C
_08007FFC:
	.4byte 0x03001A00
_08008000:
	.4byte gUnknown_030009D0
_08008004:
	.4byte gUnknown_030009E8
_08008008:
	.4byte gUnknown_03000B90
_0800800C:
	mov r0, r9
	cmp r0, #0
	beq _08008016
	bl sub_0802BE50
_08008016:
	ldr r0, _080080D4  @ =0x03001A00
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008022
	bl sub_0801B310
_08008022:
	ldr r0, _080080D8  @ =gUnknown_0300002C
	ldr r0, [r0]
	cmp r0, #0
	bge _080080C6
	ldr r0, _080080DC  @ =gUnknown_030012E8
	ldrh r0, [r0]
	cmp r0, #8
	bne _0800807E
	ldr r0, _080080E0  @ =gUnknown_03000B54
	ldr r0, [r0]
	cmp r0, #0
	ble _0800807E
	ldr r0, _080080E4  @ =gUnknown_03000B5C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800807E
	ldr r0, _080080E8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0800807E
	ldr r0, _080080EC  @ =gUnknown_030019A0
	ldr r4, [r0]
	mov r0, #128
	lsl r0, r0, #22
	and r4, r4, r0
	cmp r4, #0
	bne _0800807E
	mov r0, #16
	mov r1, #0
	bl sub_080070E8
	bl sub_08071C24
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800807E:
	ldr r0, _080080E8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _080080C6
	ldr r3, _080080F0  @ =gUnknown_03001938
	ldr r1, [r3]
	mov r2, #1
	add r4, r1, #0
	and r4, r4, r2
	cmp r4, #0
	bne _080080C6
	ldr r0, _080080F4  @ =0x000050FE
	and r0, r0, r1
	cmp r0, #0
	beq _080080C6
	orr r1, r1, r2
	str r1, [r3]
	mov r0, #17
	mov r1, #0
	bl sub_080070E8
	bl sub_08071C24
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #24
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080080C6:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_080080D4:
	.4byte 0x03001A00
_080080D8:
	.4byte gUnknown_0300002C
_080080DC:
	.4byte gUnknown_030012E8
_080080E0:
	.4byte gUnknown_03000B54
_080080E4:
	.4byte gUnknown_03000B5C
_080080E8:
	.4byte gUnknown_03001A1C
_080080EC:
	.4byte gUnknown_030019A0
_080080F0:
	.4byte gUnknown_03001938
_080080F4:
	.4byte 0x000050FE
	THUMB_FUNC_END state13_15_main_callback

	THUMB_FUNC_START demo_main_callback
demo_main_callback: @ 0x080080F8
	push {r4,r5,lr}
	bl sub_08029C20
	bl process_input
	ldr r0, _08008174  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0800812A
	ldr r0, _08008178  @ =gUnknown_030012E8
	ldrh r0, [r0]
	ldr r1, _0800817C  @ =gHeldKeys
	ldrh r1, [r1]
	bl sub_08038414
	bl sub_08039C44
	ldr r0, _08008180  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #33
	bne _0800812A
	b _08008230
_0800812A:
	mov r5, #0
	ldr r0, _08008184  @ =gUnknown_03001A1C
	ldr r4, [r0]
	mov r0, #216
	lsl r0, r0, #5
	and r0, r0, r4
	cmp r0, #0
	bne _0800813C
	mov r5, #1
_0800813C:
	ldr r0, _08008188  @ =0x03001A00
	strb r5, [r0]
	ldr r2, _0800818C  @ =gUnknown_03000038
	ldr r0, _08008190  @ =gUnknown_03000034
	ldr r3, [r0]
	add r0, r3, #0
	eor r0, r0, r4
	add r1, r0, #0
	and r1, r1, r4
	str r1, [r2]
	ldr r2, _08008194  @ =gUnknown_0300003C
	and r0, r0, r3
	str r0, [r2]
	mov r0, #128
	lsl r0, r0, #23
	and r1, r1, r0
	cmp r1, #0
	beq _080081A0
	ldr r2, _08008198  @ =gUnknown_03000B58
	ldr r1, _0800819C  @ =gUnknown_03000B74
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #7
	mov r1, #1
	bl sub_080070E8
	b _080081C6
_08008174:
	.4byte gUnknown_03001938
_08008178:
	.4byte gUnknown_030012E8
_0800817C:
	.4byte gHeldKeys
_08008180:
	.4byte gNextMainState
_08008184:
	.4byte gUnknown_03001A1C
_08008188:
	.4byte 0x03001A00
_0800818C:
	.4byte gUnknown_03000038
_08008190:
	.4byte gUnknown_03000034
_08008194:
	.4byte gUnknown_0300003C
_08008198:
	.4byte gUnknown_03000B58
_0800819C:
	.4byte gUnknown_03000B74
_080081A0:
	ldr r1, _080081B0  @ =gUnknown_0300002C
	ldr r0, [r1]
	cmp r0, #0
	bge _080081B4
	bl sub_08007544
	b _080081C6
	.byte 0x00
	.byte 0x00
_080081B0:
	.4byte gUnknown_0300002C
_080081B4:
	cmp r0, #0
	ble _080081BE
	sub r0, r0, #1
	str r0, [r1]
	b _080081C6
_080081BE:
	mov r0, #7
	mov r1, #1
	bl sub_080070E8
_080081C6:
	ldr r1, _08008210  @ =gUnknown_03000034
	ldr r0, _08008214  @ =gUnknown_03001A1C
	ldr r0, [r0]
	str r0, [r1]
	bl sub_0802BAA0
	bl sub_0802CF78
	bl sub_08030F50
	bl sub_08031C1C
	bl sub_080315A4
	bl sub_0802C540
	ldr r0, _08008218  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _080081F6
	bl sub_0802C9D8
_080081F6:
	ldr r4, _0800821C  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _08008224
	ldr r0, _08008220  @ =0x03001A00
	ldrb r0, [r0]
	bl sub_0802BEA4
	b _0800822C
_08008210:
	.4byte gUnknown_03000034
_08008214:
	.4byte gUnknown_03001A1C
_08008218:
	.4byte gUnknown_030009D0
_0800821C:
	.4byte gUnknown_03000B90
_08008220:
	.4byte 0x03001A00
_08008224:
	cmp r5, #0
	beq _0800822C
	bl sub_0802BE50
_0800822C:
	bl sub_0801B310
_08008230:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END demo_main_callback

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08008238
sub_08008238: @ 0x08008238
	push {r4-r6,lr}
	ldr r0, _080082B0  @ =gUnknown_030012A0
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _080082B4  @ =gUnknown_03001710
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _080082B8  @ =gUnknown_03001730
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _080082BC  @ =0x030012A4
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _080082C0  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #8]
	add r0, r0, r1
	strh r0, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	strh r3, [r4, #2]
	ldr r0, _080082C4  @ =0x030012EC
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #12]
	add r0, r0, r1
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_080082B0:
	.4byte gUnknown_030012A0
_080082B4:
	.4byte gUnknown_03001710
_080082B8:
	.4byte gUnknown_03001730
_080082BC:
	.4byte 0x030012A4
_080082C0:
	.4byte 0x03000E70
_080082C4:
	.4byte 0x030012EC
	THUMB_FUNC_END sub_08008238

	THUMB_FUNC_START sub_080082C8
sub_080082C8: @ 0x080082C8
	ldr r1, _0800830C  @ =gUnknown_03001730
	ldr r0, _08008310  @ =0x03001C04
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1]
	ldr r0, _08008314  @ =0x03001BE4
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, _08008318  @ =0x03001BEC
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, _0800831C  @ =0x03001C0C
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #12]
	ldr r0, _08008320  @ =0x03001C08
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #2]
	ldr r0, _08008324  @ =0x03001C1C
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #6]
	ldr r0, _08008328  @ =0x03001C20
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #10]
	ldr r0, _0800832C  @ =0x03001BF4
	ldr r0, [r0]
	asr r0, r0, #8
	strh r0, [r1, #14]
	bx lr
_0800830C:
	.4byte gUnknown_03001730
_08008310:
	.4byte 0x03001C04
_08008314:
	.4byte 0x03001BE4
_08008318:
	.4byte 0x03001BEC
_0800831C:
	.4byte 0x03001C0C
_08008320:
	.4byte 0x03001C08
_08008324:
	.4byte 0x03001C1C
_08008328:
	.4byte 0x03001C20
_0800832C:
	.4byte 0x03001BF4
	THUMB_FUNC_END sub_080082C8

	THUMB_FUNC_START sub_08008330
sub_08008330: @ 0x08008330
	push {r4-r7,lr}
	ldr r0, _080083D8  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r4, r0, #17
	ldr r0, _080083DC  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r5, r0, #17
	ldr r6, _080083E0  @ =0x03000D38
	ldrh r0, [r6]
	cmp r0, #90
	beq _080083A6
	ldr r3, _080083E4  @ =gUnknown_0807C118
	lsl r2, r0, #2
	add r1, r2, r3
	mov r7, #0
	ldrsh r1, [r1, r7]
	add r4, r4, r1
	add r3, r3, #2
	add r2, r2, r3
	mov r3, #0
	ldrsh r1, [r2, r3]
	add r5, r5, r1
	add r0, r0, #1
	strh r0, [r6]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #90
	bne _08008376
	ldr r0, _080083E8  @ =gUnknown_030019A0
	ldr r1, [r0]
	ldr r2, _080083EC  @ =0xDFFFFFFF
	and r1, r1, r2
	str r1, [r0]
_08008376:
	cmp r4, #0
	bge _0800837C
	mov r4, #0
_0800837C:
	add r1, r4, #0
	add r1, r1, #240
	ldr r0, _080083F0  @ =gUnknown_03001720
	mov r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	blt _0800838E
	add r4, r0, #0
	sub r4, r4, #240
_0800838E:
	cmp r5, #0
	bge _08008394
	mov r5, #0
_08008394:
	asr r0, r5, #1
	add r0, r0, #160
	ldr r1, _080083F4  @ =gUnknown_0300170C
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _080083A6
	add r5, r1, #0
	sub r5, r5, #160
_080083A6:
	ldr r0, _080083F8  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #24
	and r0, r0, r1
	cmp r0, #0
	beq _08008410
	ldr r3, _080083FC  @ =gUnknown_03001730
	ldr r2, _08008400  @ =gUnknown_03001724
	ldr r0, _08008404  @ =0x03000D60
	ldr r1, [r0]
	asr r1, r1, #8
	ldrh r0, [r2]
	sub r0, r0, r1
	strh r0, [r3]
	ldr r0, _08008408  @ =0x03000D64
	ldr r0, [r0]
	asr r0, r0, #8
	sub r0, r5, r0
	mov r1, #160
	neg r1, r1
	add r6, r3, #0
	cmp r0, r1
	bge _0800840C
	strh r1, [r6, #2]
	b _08008418
_080083D8:
	.4byte gUnknown_030012A0
_080083DC:
	.4byte gUnknown_03001710
_080083E0:
	.4byte 0x03000D38
_080083E4:
	.4byte gUnknown_0807C118
_080083E8:
	.4byte gUnknown_030019A0
_080083EC:
	.4byte 0xDFFFFFFF
_080083F0:
	.4byte gUnknown_03001720
_080083F4:
	.4byte gUnknown_0300170C
_080083F8:
	.4byte gUnknown_030009D0
_080083FC:
	.4byte gUnknown_03001730
_08008400:
	.4byte gUnknown_03001724
_08008404:
	.4byte 0x03000D60
_08008408:
	.4byte 0x03000D64
_0800840C:
	strh r0, [r6, #2]
	b _08008418
_08008410:
	ldr r0, _08008460  @ =gUnknown_03001730
	strh r4, [r0]
	strh r5, [r0, #2]
	add r6, r0, #0
_08008418:
	strh r4, [r6, #4]
	strh r5, [r6, #6]
	ldr r0, _08008464  @ =0x030012A4
	mov r3, #0
	ldrsh r0, [r0, r3]
	add r4, r4, r0
	ldr r3, _08008468  @ =0x03000E70
	ldr r2, [r3, #8]
	mov r7, #34
	ldrsh r0, [r2, r7]
	add r1, r4, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r6, #8]
	ldr r2, [r3, #12]
	mov r1, #34
	ldrsh r0, [r2, r1]
	add r1, r4, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r6, #12]
	ldr r0, _0800846C  @ =0x030009E0
	ldrh r1, [r0]
	add r0, r1, #0
	sub r0, r0, #160
	sub r0, r5, r0
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #0
	bgt _08008470
	mov r0, #0
	b _0800847E
_08008460:
	.4byte gUnknown_03001730
_08008464:
	.4byte 0x030012A4
_08008468:
	.4byte 0x03000E70
_0800846C:
	.4byte 0x030009E0
_08008470:
	cmp r0, #176
	ble _08008478
	mov r0, #176
	b _0800847E
_08008478:
	add r0, r5, #0
	add r0, r0, #160
	sub r0, r0, r1
_0800847E:
	strh r0, [r6, #10]
	ldr r0, _080084A0  @ =0x030012EC
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r5, r5, r0
	ldr r2, [r3, #12]
	mov r3, #36
	ldrsh r0, [r2, r3]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #12]
	add r0, r0, r1
	strh r0, [r6, #14]
	pop {r4-r7}
	pop {r0}
	bx r0
_080084A0:
	.4byte 0x030012EC
	THUMB_FUNC_END sub_08008330

	THUMB_FUNC_START sub_080084A4
sub_080084A4: @ 0x080084A4
	push {r4-r7,lr}
	ldr r0, _0800857C  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r5, r0, #17
	ldr r0, _08008580  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #17
	ldr r4, _08008584  @ =0x03000D38
	ldrh r0, [r4]
	cmp r0, #90
	beq _0800851A
	ldr r3, _08008588  @ =gUnknown_0807C118
	lsl r2, r0, #2
	add r1, r2, r3
	mov r7, #0
	ldrsh r1, [r1, r7]
	add r5, r5, r1
	add r3, r3, #2
	add r2, r2, r3
	mov r3, #0
	ldrsh r1, [r2, r3]
	add r6, r6, r1
	add r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #90
	bne _080084EA
	ldr r0, _0800858C  @ =gUnknown_030019A0
	ldr r1, [r0]
	ldr r2, _08008590  @ =0xDFFFFFFF
	and r1, r1, r2
	str r1, [r0]
_080084EA:
	cmp r5, #0
	bge _080084F0
	mov r5, #0
_080084F0:
	add r1, r5, #0
	add r1, r1, #240
	ldr r0, _08008594  @ =gUnknown_03001720
	mov r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	blt _08008502
	add r5, r0, #0
	sub r5, r5, #240
_08008502:
	cmp r6, #0
	bge _08008508
	mov r6, #0
_08008508:
	asr r0, r6, #1
	add r0, r0, #160
	ldr r1, _08008598  @ =gUnknown_0300170C
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0800851A
	add r6, r1, #0
	sub r6, r6, #160
_0800851A:
	ldr r3, _0800859C  @ =gUnknown_03001730
	strh r5, [r3, #4]
	strh r6, [r3, #6]
	ldr r0, _080085A0  @ =0x030012A4
	mov r7, #0
	ldrsh r0, [r0, r7]
	add r5, r5, r0
	ldr r4, _080085A4  @ =0x03000E70
	ldr r2, [r4]
	mov r1, #34
	ldrsh r0, [r2, r1]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r3]
	ldr r1, [r4, #8]
	mov r2, #34
	ldrsh r0, [r1, r2]
	mul r0, r5, r0
	asr r0, r0, #8
	ldr r1, [r1, #8]
	add r1, r1, r0
	ldr r0, _080085A8  @ =0x03001C48
	ldrh r0, [r0]
	sub r1, r1, r0
	strh r1, [r3, #8]
	ldr r2, [r4, #12]
	mov r7, #34
	ldrsh r0, [r2, r7]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #8]
	add r0, r0, r1
	strh r0, [r3, #12]
	ldr r0, _080085AC  @ =0x030009E0
	ldrh r1, [r0]
	add r0, r1, #0
	sub r0, r0, #160
	sub r0, r6, r0
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #0
	bgt _080085B0
	mov r0, #0
	b _080085BE
	.byte 0x00
	.byte 0x00
_0800857C:
	.4byte gUnknown_030012A0
_08008580:
	.4byte gUnknown_03001710
_08008584:
	.4byte 0x03000D38
_08008588:
	.4byte gUnknown_0807C118
_0800858C:
	.4byte gUnknown_030019A0
_08008590:
	.4byte 0xDFFFFFFF
_08008594:
	.4byte gUnknown_03001720
_08008598:
	.4byte gUnknown_0300170C
_0800859C:
	.4byte gUnknown_03001730
_080085A0:
	.4byte 0x030012A4
_080085A4:
	.4byte 0x03000E70
_080085A8:
	.4byte 0x03001C48
_080085AC:
	.4byte 0x030009E0
_080085B0:
	cmp r0, #160
	ble _080085B8
	mov r0, #160
	b _080085BE
_080085B8:
	add r0, r6, #0
	add r0, r0, #160
	sub r0, r0, r1
_080085BE:
	strh r0, [r3, #2]
	ldr r0, _080085F8  @ =0x030012EC
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r6, r6, r0
	ldr r1, [r4, #8]
	mov r2, #36
	ldrsh r0, [r1, r2]
	mul r0, r6, r0
	asr r0, r0, #8
	ldr r1, [r1, #12]
	sub r1, r1, #56
	ldr r2, _080085FC  @ =0x03001C40
	add r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r3, #10]
	ldr r2, [r4, #12]
	mov r7, #36
	ldrsh r0, [r2, r7]
	add r1, r6, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r2, #12]
	add r0, r0, r1
	strh r0, [r3, #14]
	pop {r4-r7}
	pop {r0}
	bx r0
_080085F8:
	.4byte 0x030012EC
_080085FC:
	.4byte 0x03001C40
	THUMB_FUNC_END sub_080084A4

	THUMB_FUNC_START sub_08008600
sub_08008600: @ 0x08008600
	push {r4-r6,lr}
	ldr r0, _08008684  @ =gUnknown_030012A0
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _08008688  @ =gUnknown_03001710
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _0800868C  @ =gUnknown_03001730
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _08008690  @ =0x030012A4
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _08008694  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	mul r0, r2, r0
	asr r0, r0, #8
	ldr r1, [r6, #8]
	add r1, r1, r0
	ldr r0, _08008698  @ =0x03001C48
	ldrh r0, [r0]
	sub r1, r1, r0
	strh r1, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	strh r3, [r4, #2]
	ldr r0, _0800869C  @ =0x030012EC
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	mul r0, r3, r0
	asr r0, r0, #8
	ldr r1, [r6, #12]
	sub r1, r1, #56
	ldr r2, _080086A0  @ =0x03001C40
	add r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008684:
	.4byte gUnknown_030012A0
_08008688:
	.4byte gUnknown_03001710
_0800868C:
	.4byte gUnknown_03001730
_08008690:
	.4byte 0x030012A4
_08008694:
	.4byte 0x03000E70
_08008698:
	.4byte 0x03001C48
_0800869C:
	.4byte 0x030012EC
_080086A0:
	.4byte 0x03001C40
	THUMB_FUNC_END sub_08008600

	THUMB_FUNC_START sub_080086A4
sub_080086A4: @ 0x080086A4
	push {r4-r6,lr}
	ldr r0, _0800873C  @ =gUnknown_030012A0
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _08008740  @ =gUnknown_03001710
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _08008744  @ =gUnknown_03001730
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _08008748  @ =0x030012A4
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _0800874C  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	mul r0, r2, r0
	asr r0, r0, #8
	ldr r1, [r6, #8]
	add r1, r1, r0
	ldr r0, _08008750  @ =0x03001C80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r1
	ldr r1, _08008754  @ =0x03001C48
	ldrh r1, [r1]
	sub r0, r0, r1
	strh r0, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	strh r3, [r4, #2]
	ldr r0, _08008758  @ =0x030012EC
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #12]
	add r0, r0, r1
	ldr r1, _0800875C  @ =0x03001C84
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	sub r1, r1, #8
	ldr r2, _08008760  @ =0x03001C40
	add r0, r0, r1
	ldrh r2, [r2]
	add r0, r0, r2
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_0800873C:
	.4byte gUnknown_030012A0
_08008740:
	.4byte gUnknown_03001710
_08008744:
	.4byte gUnknown_03001730
_08008748:
	.4byte 0x030012A4
_0800874C:
	.4byte 0x03000E70
_08008750:
	.4byte 0x03001C80
_08008754:
	.4byte 0x03001C48
_08008758:
	.4byte 0x030012EC
_0800875C:
	.4byte 0x03001C84
_08008760:
	.4byte 0x03001C40
	THUMB_FUNC_END sub_080086A4

	THUMB_FUNC_START sub_08008764
sub_08008764: @ 0x08008764
	push {r4-r6,lr}
	ldr r0, _080087FC  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #17
	ldr r0, _08008800  @ =gUnknown_03001710
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r5, r0, #17
	ldr r0, _08008804  @ =0x03001D60
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r5, r5, r0
	cmp r5, #0
	bge _08008784
	mov r5, #0
_08008784:
	asr r0, r5, #1
	add r0, r0, #160
	ldr r1, _08008808  @ =gUnknown_0300170C
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _08008796
	add r5, r1, #0
	sub r5, r5, #160
_08008796:
	ldr r2, _0800880C  @ =gUnknown_03001730
	strh r6, [r2, #4]
	strh r6, [r2]
	ldr r0, _08008810  @ =0x030012A4
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r6, r6, r0
	ldr r3, _08008814  @ =0x03000E70
	ldr r4, [r3, #8]
	mov r1, #34
	ldrsh r0, [r4, r1]
	add r1, r6, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r4, #8]
	add r0, r0, r1
	strh r0, [r2, #8]
	ldr r3, [r3, #12]
	mov r1, #34
	ldrsh r0, [r3, r1]
	add r1, r6, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r3, #8]
	add r0, r0, r1
	strh r0, [r2, #12]
	strh r5, [r2, #6]
	strh r5, [r2, #2]
	ldr r0, _08008818  @ =0x030012EC
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r5, r5, r0
	mov r1, #36
	ldrsh r0, [r4, r1]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r4, #12]
	add r0, r0, r1
	strh r0, [r2, #10]
	mov r1, #36
	ldrsh r0, [r3, r1]
	add r1, r5, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r3, #12]
	add r0, r0, r1
	strh r0, [r2, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_080087FC:
	.4byte gUnknown_030012A0
_08008800:
	.4byte gUnknown_03001710
_08008804:
	.4byte 0x03001D60
_08008808:
	.4byte gUnknown_0300170C
_0800880C:
	.4byte gUnknown_03001730
_08008810:
	.4byte 0x030012A4
_08008814:
	.4byte 0x03000E70
_08008818:
	.4byte 0x030012EC
	THUMB_FUNC_END sub_08008764

	THUMB_FUNC_START sub_0800881C
sub_0800881C: @ 0x0800881C
	push {r4-r6,lr}
	ldr r0, _080088A4  @ =gUnknown_030012A0
	ldrh r2, [r0]
	lsl r2, r2, #16
	asr r2, r2, #17
	ldr r0, _080088A8  @ =gUnknown_03001710
	ldrh r3, [r0]
	lsl r3, r3, #16
	asr r3, r3, #17
	ldr r4, _080088AC  @ =gUnknown_03001730
	strh r2, [r4, #4]
	strh r2, [r4]
	ldr r0, _080088B0  @ =0x030012A4
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r2, r2, r0
	ldr r5, _080088B4  @ =0x03000E70
	ldr r6, [r5, #8]
	mov r1, #34
	ldrsh r0, [r6, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r6, #8]
	add r0, r0, r1
	strh r0, [r4, #8]
	ldr r5, [r5, #12]
	mov r1, #34
	ldrsh r0, [r5, r1]
	add r1, r2, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #8]
	add r0, r0, r1
	strh r0, [r4, #12]
	strh r3, [r4, #6]
	ldr r0, _080088B8  @ =0x03000C00
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r3
	strh r0, [r4, #2]
	ldr r0, _080088BC  @ =0x030012EC
	mov r1, #0
	ldrsh r0, [r0, r1]
	add r3, r3, r0
	mov r1, #36
	ldrsh r0, [r6, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, _080088C0  @ =0x03000BFC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r1
	strh r0, [r4, #10]
	mov r1, #36
	ldrsh r0, [r5, r1]
	add r1, r3, #0
	mul r1, r0, r1
	asr r1, r1, #8
	ldr r0, [r5, #12]
	add r0, r0, r1
	strh r0, [r4, #14]
	pop {r4-r6}
	pop {r0}
	bx r0
_080088A4:
	.4byte gUnknown_030012A0
_080088A8:
	.4byte gUnknown_03001710
_080088AC:
	.4byte gUnknown_03001730
_080088B0:
	.4byte 0x030012A4
_080088B4:
	.4byte 0x03000E70
_080088B8:
	.4byte 0x03000C00
_080088BC:
	.4byte 0x030012EC
_080088C0:
	.4byte 0x03000BFC
	THUMB_FUNC_END sub_0800881C

	THUMB_FUNC_START sub_080088C4
sub_080088C4: @ 0x080088C4
	ldr r0, _080088E4  @ =gUnknown_03001730
	mov r2, #0
	strh r2, [r0, #4]
	strh r2, [r0]
	ldr r1, _080088E8  @ =0x03000C04
	ldrh r1, [r1]
	strh r1, [r0, #8]
	strh r2, [r0, #12]
	strh r2, [r0, #6]
	strh r2, [r0, #2]
	ldr r1, _080088EC  @ =0x03000C0C
	ldrh r1, [r1]
	strh r1, [r0, #10]
	strh r2, [r0, #14]
	bx lr
	.byte 0x00
	.byte 0x00
_080088E4:
	.4byte gUnknown_03001730
_080088E8:
	.4byte 0x03000C04
_080088EC:
	.4byte 0x03000C0C
	THUMB_FUNC_END sub_080088C4

	THUMB_FUNC_START demo_display_callback
demo_display_callback: @ 0x080088F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, sp, #4
	mov r0, #0
	strh r0, [r5]
	ldr r0, _08008A4C  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r7, sp
	add r7, r7, #6
	strh r0, [r7]
	ldr r0, _08008A50  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r6, sp, #8
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08008A54  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #160
	str r0, [sp]
	ldr r4, _08008A58  @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r1, _08008A5C  @ =gOamBuffer
	mov r8, r1
	str r1, [r4, #4]
	ldr r0, _08008A60  @ =0x85000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r2, _08008A64  @ =gMainState
	mov r9, r2
	ldr r0, [r2]
	sub r0, r0, #10
	cmp r0, #1
	bhi _08008946
	mov r1, #1
_08008946:
	add r0, r1, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_0803D248
	add r0, r5, #0
	bl sub_08031AD4
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_080322A8
	mov r7, r8
	str r7, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08008A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08008A6C  @ =0x03000E80
	ldr r0, [r0]
	ldr r1, _08008A70  @ =gUnknown_0807820C
	ldr r2, [r1]
	ldr r1, _08008A74  @ =0x0000800C
	add r2, r2, r1
	mov r1, #6
	mov r3, #6
	bl sub_0802BA38
	ldr r0, _08008A78  @ =gUnknown_030009EC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080089A8
	mov r2, r9
	ldr r0, [r2]
	cmp r0, #10
	beq _080089A8
	cmp r0, #11
	beq _080089A8
	ldr r0, _08008A7C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	beq _08008A36
_080089A8:
	mov r5, #0
	ldr r7, _08008A70  @ =gUnknown_0807820C
	mov r12, r7
	mov r1, r12
	ldr r0, [r1]
	ldr r2, _08008A80  @ =0x0000C00C
	add r0, r0, r2
	ldr r0, [r0]
	cmp r5, r0
	bcs _08008A30
	ldr r3, _08008A58  @ =0x040000D4
	ldr r0, _08008A6C  @ =0x03000E80
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08008A84  @ =gUnknown_030009D0
	ldrb r0, [r0]
	ldr r7, _08008A88  @ =gUnknown_03000B90
	mov r10, r7
	ldr r1, _08008A8C  @ =0x03000E90
	mov r9, r1
	mov r6, #24
	and r6, r6, r0
_080089D4:
	lsl r2, r5, #1
	ldr r7, _08008A74  @ =0x0000800C
	add r0, r2, r7
	ldr r1, _08008A70  @ =gUnknown_0807820C
	ldr r4, [r1]
	add r0, r4, r0
	str r0, [r3]
	mov r7, r8
	add r0, r7, r2
	str r0, [r3, #4]
	ldr r0, _08008A90  @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	cmp r6, #0
	bne _08008A1C
	ldr r7, _08008A94  @ =gUnknown_03000B58
	mov r1, #0
	ldrsb r1, [r7, r1]
	cmp r1, #2
	bne _08008A06
	mov r7, r10
	ldr r0, [r7, #32]
	and r0, r0, r1
	cmp r0, #0
	bne _08008A1C
_08008A06:
	ldr r1, _08008A98  @ =0x0000A00C
	add r0, r2, r1
	add r0, r4, r0
	str r0, [r3]
	mov r7, r9
	ldr r0, [r7]
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _08008A90  @ =0x80000400
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08008A1C:
	mov r1, #128
	lsl r1, r1, #3
	add r5, r5, r1
	mov r2, r12
	ldr r0, [r2]
	ldr r7, _08008A80  @ =0x0000C00C
	add r0, r0, r7
	ldr r0, [r0]
	cmp r5, r0
	bcc _080089D4
_08008A30:
	mov r0, #0
	ldr r1, _08008A78  @ =gUnknown_030009EC
	strb r0, [r1]
_08008A36:
	bl sub_0801B4BC
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
_08008A4C:
	.4byte gUnknown_03001930
_08008A50:
	.4byte gUnknown_0300192C
_08008A54:
	.4byte 0x0000FF7F
_08008A58:
	.4byte 0x040000D4
_08008A5C:
	.4byte gOamBuffer
_08008A60:
	.4byte 0x85000100
_08008A64:
	.4byte gMainState
_08008A68:
	.4byte 0x80000200
_08008A6C:
	.4byte 0x03000E80
_08008A70:
	.4byte gUnknown_0807820C
_08008A74:
	.4byte 0x0000800C
_08008A78:
	.4byte gUnknown_030009EC
_08008A7C:
	.4byte gUnknown_03001A1C
_08008A80:
	.4byte 0x0000C00C
_08008A84:
	.4byte gUnknown_030009D0
_08008A88:
	.4byte gUnknown_03000B90
_08008A8C:
	.4byte 0x03000E90
_08008A90:
	.4byte 0x80000400
_08008A94:
	.4byte gUnknown_03000B58
_08008A98:
	.4byte 0x0000A00C
	THUMB_FUNC_END demo_display_callback

	THUMB_FUNC_START state12_init_callback
state12_init_callback: @ 0x08008A9C
	push {lr}
	ldr r0, _08008AC0  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08008ACC
	ldr r0, _08008AC4  @ =gUnknown_03000B58
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08008AC8  @ =gUnknown_03000B74
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_0800F6EC
	b _08008AFA
_08008AC0:
	.4byte gUnknown_03000BB4
_08008AC4:
	.4byte gUnknown_03000B58
_08008AC8:
	.4byte gUnknown_03000B74
_08008ACC:
	ldr r0, _08008AE8  @ =gUnknown_0807CA98
	ldr r1, [r0]
	ldr r0, _08008AEC  @ =gUnknown_03000B74
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #2
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08008AF0
	add r0, r2, #0
	bl sub_0802EDAC
	b _08008AFA
_08008AE8:
	.4byte gUnknown_0807CA98
_08008AEC:
	.4byte gUnknown_03000B74
_08008AF0:
	mov r0, #24
	mov r1, #0
	bl sub_080070E8
	b _08008B0C
_08008AFA:
	ldr r0, _08008B10  @ =gUnknown_03000B90
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #0
	bl sub_080070E8
_08008B0C:
	pop {r0}
	bx r0
_08008B10:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END state12_init_callback

	THUMB_FUNC_START state13_init_callback
state13_init_callback: @ 0x08008B14
	push {r4,r5,lr}
	ldr r1, _08008B70  @ =gUnknown_03000BD0
	mov r0, #1
	strb r0, [r1]
	mov r0, #0
	bl arena_restore_head
	bl sub_08040D50
	bl sub_0805727C
	bl sub_08038B18
	bl sub_0802B998
	bl sub_080069BC
	ldr r1, _08008B74  @ =gUnknown_030009D0
	ldr r4, _08008B78  @ =gUnknown_03000B90
	ldr r0, [r4]
	ldr r0, [r0, #12]
	strb r0, [r1]
	ldr r0, _08008B7C  @ =gUnknown_030009D8
	mov r5, #0
	strh r5, [r0]
	ldr r0, _08008B80  @ =gUnknown_03000B60
	strb r5, [r0]
	add r0, r4, #0
	bl sub_08032C44
	ldr r0, [r4, #4]
	bl sub_080041B8
	mov r0, #2
	bl arena_save_head
	ldr r0, _08008B84  @ =0x03001B98
	strb r5, [r0]
	bl sub_080072A4
	ldr r0, _08008B88  @ =gUnknown_030009D4
	strb r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008B70:
	.4byte gUnknown_03000BD0
_08008B74:
	.4byte gUnknown_030009D0
_08008B78:
	.4byte gUnknown_03000B90
_08008B7C:
	.4byte gUnknown_030009D8
_08008B80:
	.4byte gUnknown_03000B60
_08008B84:
	.4byte 0x03001B98
_08008B88:
	.4byte gUnknown_030009D4
	THUMB_FUNC_END state13_init_callback

	THUMB_FUNC_START demo_init_callback
demo_init_callback: @ 0x08008B8C
	push {r4,lr}
	ldr r1, _08008BE0  @ =0x03001744
	mov r0, #0
	strb r0, [r1]
	mov r0, #0
	bl arena_restore_head
	bl sub_08040D50
	bl sub_0805727C
	bl sub_08038B18
	bl sub_0802B998
	bl sub_080069BC
	ldr r1, _08008BE4  @ =gUnknown_030009D0
	ldr r4, _08008BE8  @ =gUnknown_03000B90
	ldr r0, [r4]
	ldr r0, [r0, #12]
	strb r0, [r1]
	ldr r0, _08008BEC  @ =gUnknown_030009D8
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08008BF0  @ =gUnknown_03000B60
	strb r1, [r0]
	add r0, r4, #0
	bl sub_08032C44
	ldr r0, [r4, #4]
	bl sub_080041B8
	mov r0, #2
	bl arena_save_head
	bl state6_init_callback
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008BE0:
	.4byte 0x03001744
_08008BE4:
	.4byte gUnknown_030009D0
_08008BE8:
	.4byte gUnknown_03000B90
_08008BEC:
	.4byte gUnknown_030009D8
_08008BF0:
	.4byte gUnknown_03000B60
	THUMB_FUNC_END demo_init_callback


