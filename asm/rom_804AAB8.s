	.INCLUDE "macro.inc"
	.INCLUDE "gba.inc"

	THUMB_FUNC_START sub_0804AAB8
sub_0804AAB8: @ 0x0804AAB8
	push {r4,r5,lr}
	ldr r0, _0804AAE4  @ =0x0300195C
	ldr r1, [r0]
	ldr r0, [r1, #36]
	asr r0, r0, #11
	lsl r0, r0, #24
	lsr r2, r0, #24
	mov r3, #50
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0804AB0C
	mov r3, #0
	ldr r0, _0804AAE8  @ =gUnknown_080B5424
	ldrb r4, [r0]
	lsl r1, r2, #24
	asr r2, r1, #24
	add r5, r0, #0
	cmp r4, r2
	ble _0804AAF0
	ldr r1, _0804AAEC  @ =0x03001B94
	lsl r0, r4, #11
	b _0804AB4A
_0804AAE4:
	.4byte 0x0300195C
_0804AAE8:
	.4byte gUnknown_080B5424
_0804AAEC:
	.4byte 0x03001B94
_0804AAF0:
	lsl r0, r3, #24
	mov r2, #128
	lsl r2, r2, #17
	add r0, r0, r2
	lsr r3, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _0804AB52
	add r0, r0, r5
	ldrb r2, [r0]
	asr r0, r1, #24
	cmp r2, r0
	ble _0804AAF0
	b _0804AB46
_0804AB0C:
	mov r3, #1
	ldr r0, _0804AB24  @ =gUnknown_080B5424
	ldrb r4, [r0, #1]
	lsl r1, r2, #24
	asr r2, r1, #24
	add r5, r0, #0
	cmp r4, r2
	bge _0804AB2C
	ldr r1, _0804AB28  @ =0x03001B94
	lsl r0, r4, #11
	b _0804AB4A
	.byte 0x00
	.byte 0x00
_0804AB24:
	.4byte gUnknown_080B5424
_0804AB28:
	.4byte 0x03001B94
_0804AB2C:
	lsl r0, r3, #24
	mov r3, #255
	lsl r3, r3, #24
	add r0, r0, r3
	lsr r3, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	blt _0804AB52
	add r0, r0, r5
	ldrb r2, [r0]
	asr r0, r1, #24
	cmp r2, r0
	bge _0804AB2C
_0804AB46:
	ldr r1, _0804AB58  @ =0x03001B94
	lsl r0, r2, #11
_0804AB4A:
	str r0, [r1]
	ldr r1, _0804AB5C  @ =0x03001A50
	mov r0, #3
	strb r0, [r1]
_0804AB52:
	pop {r4,r5}
	pop {r0}
	bx r0
_0804AB58:
	.4byte 0x03001B94
_0804AB5C:
	.4byte 0x03001A50
	THUMB_FUNC_END sub_0804AAB8

	THUMB_FUNC_START sub_0804AB60
sub_0804AB60: @ 0x0804AB60
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r0, _0804AB78  @ =gNextLevelInLevelTable
	ldr r1, [r0, #32]
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	bne _0804AB80
	ldr r0, _0804AB7C  @ =gUnknown_03000368
	strb r1, [r0, #8]
	b _0804AD96
	.byte 0x00
	.byte 0x00
_0804AB78:
	.4byte gNextLevelInLevelTable
_0804AB7C:
	.4byte gUnknown_03000368
_0804AB80:
	ldr r4, _0804ABA0  @ =gUnknown_03001B90
	ldrb r1, [r4]
	cmp r1, #0
	beq _0804AC38
	cmp r1, #1
	bne _0804ABA8
	ldr r0, _0804ABA4  @ =gUnknown_03000A10
	add r0, r0, #48
	mov r1, #0
	strb r1, [r0]
	bl sub_0806F898
	mov r0, #2
	strb r0, [r4]
	b _0804AD96
	.byte 0x00
	.byte 0x00
_0804ABA0:
	.4byte gUnknown_03001B90
_0804ABA4:
	.4byte gUnknown_03000A10
_0804ABA8:
	bl sub_0806FDA4
	ldrb r0, [r4]
	cmp r0, #0
	bne _0804AC10
	mov r1, #0
	ldr r2, _0804AC28  @ =gUnknown_03001BC8
	add r5, r2, #0
	ldr r6, _0804AC2C  @ =0x0300037A
	ldrb r0, [r2]
	cmp r1, r0
	bge _0804ABE0
	ldr r4, _0804AC30  @ =gUnknown_03001BB0
	mov r3, #1
_0804ABC4:
	lsl r0, r1, #16
	asr r0, r0, #16
	lsl r1, r0, #2
	add r1, r1, r4
	ldr r1, [r1]
	add r1, r1, #153
	strb r3, [r1]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	ldrb r7, [r2]
	cmp r0, r7
	blt _0804ABC4
_0804ABE0:
	ldrb r1, [r5]
	mov r0, #50
	mul r0, r1, r0
	strh r0, [r6]
	ldr r0, _0804AC34  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _0804AC0A
	cmp r0, #2
	beq _0804AC0A
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #21
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0804AC0A:
	mov r0, #18
	bl sub_08071E14
_0804AC10:
	ldr r0, _0804AC34  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _0804AC1E
	cmp r0, #2
	beq _0804AC1E
	b _0804AD96
_0804AC1E:
	mov r0, #11
	mov r1, #0
	bl sub_08071E7C
	b _0804AD96
_0804AC28:
	.4byte gUnknown_03001BC8
_0804AC2C:
	.4byte 0x0300037A
_0804AC30:
	.4byte gUnknown_03001BB0
_0804AC34:
	.4byte gMainState
_0804AC38:
	ldr r0, _0804AC60  @ =gUnknown_03001BCC
	ldrb r0, [r0]
	cmp r0, #6
	bne _0804AC74
	ldr r0, _0804AC64  @ =gUnknown_03000368
	strb r1, [r0, #8]
	ldr r0, _0804AC68  @ =gUnknown_03000395
	strb r1, [r0]
	ldr r2, _0804AC6C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0804AC70  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	orr r0, r0, r1
	str r0, [r2]
	b _0804AD96
_0804AC60:
	.4byte gUnknown_03001BCC
_0804AC64:
	.4byte gUnknown_03000368
_0804AC68:
	.4byte gUnknown_03000395
_0804AC6C:
	.4byte gUnknown_030019A0
_0804AC70:
	.4byte gUnknown_03001A1C
_0804AC74:
	bl sub_0804A8E8
	ldr r3, _0804ACD0  @ =gUnknown_03000378
	ldrh r1, [r3]
	mov r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	blt _0804AD3A
	add r2, r1, #1
	strh r2, [r3]
	lsl r1, r2, #16
	ldr r0, _0804ACD4  @ =0x012B0000
	cmp r1, r0
	ble _0804ACE8
	mov r1, #0
	ldr r2, _0804ACD8  @ =gUnknown_03001BC8
	ldr r5, _0804ACDC  @ =gUnknown_03001A1C
	add r6, r3, #0
	ldrb r3, [r2]
	cmp r1, r3
	bge _0804ACBE
	ldr r4, _0804ACE0  @ =gUnknown_03001BB0
	mov r3, #1
_0804ACA2:
	lsl r0, r1, #16
	asr r0, r0, #16
	lsl r1, r0, #2
	add r1, r1, r4
	ldr r1, [r1]
	add r1, r1, #153
	strb r3, [r1]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	ldrb r7, [r2]
	cmp r0, r7
	blt _0804ACA2
_0804ACBE:
	mov r1, #1
	neg r1, r1
	add r0, r1, #0
	strh r0, [r6]
	ldr r0, [r5]
	ldr r1, _0804ACE4  @ =0xFBFFFFFF
	and r0, r0, r1
	str r0, [r5]
	b _0804AD3A
_0804ACD0:
	.4byte gUnknown_03000378
_0804ACD4:
	.4byte 0x012B0000
_0804ACD8:
	.4byte gUnknown_03001BC8
_0804ACDC:
	.4byte gUnknown_03001A1C
_0804ACE0:
	.4byte gUnknown_03001BB0
_0804ACE4:
	.4byte 0xFBFFFFFF
_0804ACE8:
	mov r0, #4
	and r2, r2, r0
	lsl r0, r2, #16
	lsr r4, r0, #16
	mov r1, #0
	ldr r0, _0804AD1C  @ =gUnknown_03001BC8
	add r5, r0, #0
	ldrb r2, [r5]
	cmp r1, r2
	bge _0804AD3A
	ldr r6, _0804AD20  @ =gUnknown_03001BB0
_0804ACFE:
	lsl r0, r1, #16
	asr r1, r0, #14
	add r1, r1, r6
	ldr r2, [r1]
	mov r3, #4
	ldrsh r1, [r2, r3]
	add r3, r0, #0
	cmp r1, #44
	ble _0804AD24
	add r1, r2, #0
	add r1, r1, #153
	mov r0, #1
	strb r0, [r1]
	b _0804AD2A
	.byte 0x00
	.byte 0x00
_0804AD1C:
	.4byte gUnknown_03001BC8
_0804AD20:
	.4byte gUnknown_03001BB0
_0804AD24:
	add r0, r2, #0
	add r0, r0, #153
	strb r4, [r0]
_0804AD2A:
	mov r7, #128
	lsl r7, r7, #9
	add r0, r3, r7
	lsr r1, r0, #16
	asr r0, r0, #16
	ldrb r2, [r5]
	cmp r0, r2
	blt _0804ACFE
_0804AD3A:
	ldr r0, _0804ADA0  @ =0x03001A60
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AD96
	ldr r0, _0804ADA4  @ =gUnknown_03000395
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0804AD72
	ldr r0, _0804ADA8  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	ldr r1, _0804ADAC  @ =0x00004002
	and r0, r0, r1
	cmp r0, #0
	beq _0804AD72
	ldr r1, _0804ADB0  @ =gUnknown_03000394
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	ble _0804AD72
	bl sub_0804EF38
_0804AD72:
	ldr r1, _0804ADB4  @ =gUnknown_03000368
	ldrb r0, [r1, #11]
	sub r0, r0, #1
	strb r0, [r1, #11]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _0804AD96
	ldrb r0, [r1, #9]
	add r0, r0, #1
	strb r0, [r1, #9]
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r3, [r1, #10]
	cmp r0, r3
	bcc _0804AD94
	strb r2, [r1, #9]
_0804AD94:
	strb r2, [r1, #11]
_0804AD96:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804ADA0:
	.4byte 0x03001A60
_0804ADA4:
	.4byte gUnknown_03000395
_0804ADA8:
	.4byte gUnknown_030019AC
_0804ADAC:
	.4byte 0x00004002
_0804ADB0:
	.4byte gUnknown_03000394
_0804ADB4:
	.4byte gUnknown_03000368
	THUMB_FUNC_END sub_0804AB60

	THUMB_FUNC_START sub_0804ADB8
sub_0804ADB8: @ 0x0804ADB8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	mov r12, r1
	ldr r0, [sp, #32]
	mov r10, r0
	lsl r2, r2, #24
	lsr r3, r2, #24
	ldr r1, _0804AE20  @ =gUnknown_03000396
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0804AE24  @ =gMainState
	ldr r1, [r0]
	add r4, r0, #0
	cmp r1, #13
	beq _0804ADE6
	cmp r1, #5
	beq _0804ADE6
	cmp r1, #2
	bne _0804ADFC
_0804ADE6:
	ldr r2, _0804AE28  @ =gUnknown_03001BB0
	ldr r1, _0804AE2C  @ =gUnknown_03001BC8
	ldrb r0, [r1]
	lsl r0, r0, #2
	add r0, r0, r2
	mov r2, r8
	str r2, [r0]
	ldrb r0, [r1]
	strb r0, [r2, #10]
	add r0, r0, #1
	strb r0, [r1]
_0804ADFC:
	mov r1, r8
	add r1, r1, #164
	ldr r0, _0804AE30  @ =0x0804B129
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0804AE34  @ =0x0804B1E1
	str r0, [r1]
	mov r0, r12
	strh r3, [r0]
	ldr r0, [r4]
	cmp r0, #5
	beq _0804AE18
	cmp r0, #2
	bne _0804AE38
_0804AE18:
	mov r0, #0
	mov r1, r12
	strh r0, [r1, #4]
	b _0804AE3E
_0804AE20:
	.4byte gUnknown_03000396
_0804AE24:
	.4byte gMainState
_0804AE28:
	.4byte gUnknown_03001BB0
_0804AE2C:
	.4byte gUnknown_03001BC8
_0804AE30:
	.4byte sub_0804B128
_0804AE34:
	.4byte sub_0804B1E0
_0804AE38:
	mov r0, #7
	mov r2, r12
	strh r0, [r2, #4]
_0804AE3E:
	mov r0, #0
	mov r9, r0
	mov r0, #58
	mov r1, r12
	strh r0, [r1, #6]
	mov r2, #4
	ldrsh r0, [r1, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0804AF14  @ =gUnknown_080B5F80
	add r3, r3, r0
	mov r0, r8
	add r0, r0, #160
	str r3, [r0]
	mov r6, r12
	add r6, r6, #124
	ldr r0, [r3, #8]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r6]
	str r1, [r6, #4]
	ldr r5, _0804AF18  @ =0x03000386
	mov r7, r12
	add r7, r7, #129
	mov r0, r10
	ldrb r2, [r0, #6]
	lsl r2, r2, #4
	ldrb r4, [r7]
	mov r1, #15
	add r0, r1, #0
	and r0, r0, r4
	orr r0, r0, r2
	strb r0, [r7]
	mov r2, r10
	ldrh r0, [r2, #6]
	and r1, r1, r0
	strb r1, [r5]
	mov r0, r12
	ldr r1, [r0, #32]
	mov r4, r12
	add r4, r4, #126
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4]
	ldr r0, _0804AF1C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4]
	mov r1, r12
	ldr r0, [r1, #36]
	asr r0, r0, #8
	strb r0, [r6]
	mov r2, r9
	strb r2, [r1, #15]
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
	mov r1, r12
	strb r0, [r1, #3]
	ldrh r0, [r3, #16]
	add r1, r1, #86
	strh r0, [r1]
	ldrb r1, [r3, #20]
	mov r0, r12
	add r0, r0, #88
	strh r1, [r0]
	ldrh r0, [r3, #18]
	mov r1, r12
	add r1, r1, #90
	strh r0, [r1]
	ldr r2, _0804AF20  @ =0x03000340
	mov r0, r9
	strb r0, [r2]
	ldrb r0, [r3, #22]
	strb r0, [r2, #1]
	ldrb r0, [r3, #23]
	strb r0, [r2, #2]
	ldr r0, _0804AF24  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #20
	and r0, r0, r1
	cmp r0, #0
	beq _0804AF28
	mov r1, #1
	strb r1, [r2, #16]
	mov r0, r12
	add r0, r0, #64
	strb r1, [r0]
	mov r3, r12
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
	b _0804AF3E
	.byte 0x00
	.byte 0x00
_0804AF14:
	.4byte gUnknown_080B5F80
_0804AF18:
	.4byte 0x03000386
_0804AF1C:
	.4byte 0xFFFFFE00
_0804AF20:
	.4byte 0x03000340
_0804AF24:
	.4byte gUnknown_03001A1C
_0804AF28:
	mov r1, r9
	strb r1, [r2, #16]
	mov r0, r12
	add r0, r0, #64
	strb r1, [r0]
	mov r3, r12
	add r3, r3, #127
	ldrb r1, [r3]
	mov r0, #17
	neg r0, r0
	and r0, r0, r1
_0804AF3E:
	strb r0, [r3]
	mov r4, #0
	str r4, [r2, #12]
	str r4, [r2, #8]
	mov r0, #5
	strb r0, [r2, #19]
	mov r0, #1
	strb r0, [r2, #17]
	strb r4, [r2, #18]
	str r4, [r2, #32]
	mov r2, r12
	ldr r0, [r2, #100]
	str r0, [r2, #104]
	mov r0, r12
	bl sub_0804A424
	ldr r0, _0804AF80  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _0804AF70
	cmp r0, #2
	beq _0804AF70
	mov r0, r8
	add r0, r0, #153
	strb r4, [r0]
_0804AF70:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804AF80:
	.4byte gMainState
	THUMB_FUNC_END sub_0804ADB8

	THUMB_FUNC_START sub_0804AF84
sub_0804AF84: @ 0x0804AF84
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #96]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r2
	cmp r0, #0
	beq _0804AFF0
	mov r0, #128
	lsl r0, r0, #9
	and r2, r2, r0
	cmp r2, #0
	beq _0804AFC8
	ldr r0, _0804AFBC  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804AFC0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804AFC4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	bl sub_0804A644
	b _0804B0F4
	.byte 0x00
	.byte 0x00
_0804AFBC:
	.4byte gUnknown_030019AC
_0804AFC0:
	.4byte 0x03000386
_0804AFC4:
	.4byte gUnknown_080B5F80
_0804AFC8:
	ldr r0, _0804AFE4  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804AFE8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804AFEC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
	b _0804B0F4
	.byte 0x00
	.byte 0x00
_0804AFE4:
	.4byte gUnknown_030019AC
_0804AFE8:
	.4byte 0x03000386
_0804AFEC:
	.4byte gUnknown_080B5F80
_0804AFF0:
	ldr r1, [r4, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804B040
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r2
	cmp r0, #0
	bne _0804B054
	mov r0, #128
	lsl r0, r0, #10
	and r0, r0, r2
	cmp r0, #0
	bne _0804B086
	mov r0, #128
	lsl r0, r0, #12
	and r2, r2, r0
	cmp r2, #0
	bne _0804B0B6
	ldr r0, _0804B034  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B038  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B03C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
	b _0804B0F4
_0804B034:
	.4byte gUnknown_030019AC
_0804B038:
	.4byte 0x03000386
_0804B03C:
	.4byte gUnknown_080B5F80
_0804B040:
	mov r0, #128
	lsl r0, r0, #3
	and r1, r1, r0
	cmp r1, #0
	beq _0804B0F4
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r2
	cmp r0, #0
	beq _0804B07C
_0804B054:
	ldr r0, _0804B070  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B074  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B078  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #17
	bl sub_0804A644
	b _0804B0F4
	.byte 0x00
	.byte 0x00
_0804B070:
	.4byte gUnknown_030019AC
_0804B074:
	.4byte 0x03000386
_0804B078:
	.4byte gUnknown_080B5F80
_0804B07C:
	mov r0, #128
	lsl r0, r0, #10
	and r0, r0, r2
	cmp r0, #0
	beq _0804B0AC
_0804B086:
	ldr r0, _0804B0A0  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B0A4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B0A8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #18
	bl sub_0804A644
	b _0804B0F4
_0804B0A0:
	.4byte gUnknown_030019AC
_0804B0A4:
	.4byte 0x03000386
_0804B0A8:
	.4byte gUnknown_080B5F80
_0804B0AC:
	mov r0, #128
	lsl r0, r0, #12
	and r2, r2, r0
	cmp r2, #0
	beq _0804B0DC
_0804B0B6:
	ldr r0, _0804B0D0  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B0D4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B0D8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
	b _0804B0F4
_0804B0D0:
	.4byte gUnknown_030019AC
_0804B0D4:
	.4byte 0x03000386
_0804B0D8:
	.4byte gUnknown_080B5F80
_0804B0DC:
	ldr r0, _0804B114  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B118  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B11C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
_0804B0F4:
	ldr r0, _0804B114  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r4, #36]
	ldr r0, [r4, #92]
	ldr r1, _0804B120  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, [r4, #96]
	ldr r1, _0804B124  @ =0xFFF2FFFF
	and r0, r0, r1
	str r0, [r4, #96]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804B114:
	.4byte gUnknown_030019AC
_0804B118:
	.4byte 0x03000386
_0804B11C:
	.4byte gUnknown_080B5F80
_0804B120:
	.4byte 0xFFFFF3FF
_0804B124:
	.4byte 0xFFF2FFFF
	THUMB_FUNC_END sub_0804AF84

	THUMB_FUNC_START sub_0804B128
sub_0804B128: @ 0x0804B128
	push {r4-r6,lr}
	add r5, r0, #0
	add r4, r5, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r5, #0
	bl _call_via_r1
	ldr r0, _0804B15C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _0804B164
	add r0, r5, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _0804B160  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	b _0804B16C
	.byte 0x00
	.byte 0x00
_0804B15C:
	.4byte gUnknown_03001A1C
_0804B160:
	.4byte 0x00007FFF
_0804B164:
	mov r6, #4
	ldrsh r0, [r5, r6]
	cmp r0, #44
	ble _0804B1AA
_0804B16C:
	add r0, r5, #0
	bl sub_0804A4E0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A580
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #7
	bne _0804B1B0
	add r0, r5, #0
	bl sub_0804E27C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B1B0
	add r0, r5, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804B1A4
	ldr r0, _0804B1A0  @ =0x0000FE50
	b _0804B1AE
_0804B1A0:
	.4byte 0x0000FE50
_0804B1A4:
	mov r0, #216
	lsl r0, r0, #1
	b _0804B1AE
_0804B1AA:
	mov r0, #0
	strh r0, [r5, #50]
_0804B1AE:
	strh r0, [r5, #48]
_0804B1B0:
	ldr r4, [r5, #104]
	mov r3, #4
	ldrsh r0, [r4, r3]
	ldr r2, [r5, #32]
	add r0, r2, r0
	str r0, [r5, #108]
	mov r6, #6
	ldrsh r1, [r4, r6]
	add r2, r2, r1
	str r2, [r5, #116]
	mov r3, #0
	ldrsh r1, [r4, r3]
	ldr r3, [r5, #36]
	add r1, r3, r1
	str r1, [r5, #112]
	mov r6, #2
	ldrsh r4, [r4, r6]
	add r3, r3, r4
	str r3, [r5, #120]
	bl sub_08003274
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804B128

	THUMB_FUNC_START sub_0804B1E0
sub_0804B1E0: @ 0x0804B1E0
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r6, r4, #0
	ldr r1, _0804B234  @ =gUnknown_03001B90
	ldrb r1, [r1]
	cmp r1, #0
	beq _0804B1F2
	b _0804B326
_0804B1F2:
	ldr r1, _0804B238  @ =gCurrentLevelWidth
	mov r2, #0
	ldrsh r3, [r1, r2]
	add r1, r3, #0
	sub r1, r1, #10
	lsl r1, r1, #8
	ldr r2, [r4, #32]
	cmp r2, r1
	blt _0804B20C
	add r1, r3, #0
	sub r1, r1, #11
	lsl r1, r1, #8
	str r1, [r4, #32]
_0804B20C:
	ldr r2, _0804B23C  @ =0x0300037A
	ldrh r3, [r2]
	mov r5, #0
	ldrsh r1, [r2, r5]
	cmp r1, #0
	beq _0804B244
	sub r1, r3, #1
	strh r1, [r2]
	lsl r1, r1, #16
	cmp r1, #0
	beq _0804B224
	b _0804B326
_0804B224:
	ldr r1, _0804B240  @ =gUnknown_03001A1C
	ldr r2, [r1]
	mov r3, #128
	lsl r3, r3, #6
	orr r2, r2, r3
	str r2, [r1]
	b _0804B326
	.byte 0x00
	.byte 0x00
_0804B234:
	.4byte gUnknown_03001B90
_0804B238:
	.4byte gCurrentLevelWidth
_0804B23C:
	.4byte 0x0300037A
_0804B240:
	.4byte gUnknown_03001A1C
_0804B244:
	ldr r0, _0804B2B4  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _0804B2C8
	mov r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #47
	beq _0804B2C8
	cmp r0, #40
	beq _0804B2C8
	ldr r5, _0804B2B8  @ =gUnknown_03001A1C
	ldr r0, [r5]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0804B2C8
	ldr r0, [r4, #36]
	add r1, r4, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	ldr r1, _0804B2BC  @ =gUnknown_030009E0
	ldrh r1, [r1]
	cmp r0, r1
	ble _0804B2C8
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #5
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B2C0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B2C4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #47
	bl sub_0804A644
	ldr r0, [r5]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r5]
	bl sub_0800A258
	b _0804B326
	.byte 0x00
	.byte 0x00
_0804B2B4:
	.4byte gNextLevelInLevelTable
_0804B2B8:
	.4byte gUnknown_03001A1C
_0804B2BC:
	.4byte gUnknown_030009E0
_0804B2C0:
	.4byte 0x03000386
_0804B2C4:
	.4byte gUnknown_080B5F80
_0804B2C8:
	mov r0, #15
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0804B308
	mov r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #45
	bgt _0804B308
	ldr r0, _0804B2F0  @ =gUnknown_03000378
	mov r2, #0
	ldrsh r1, [r0, r2]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0804B2F4
	add r0, r4, #0
	bl sub_0804F240
	b _0804B326
	.byte 0x00
	.byte 0x00
_0804B2F0:
	.4byte gUnknown_03000378
_0804B2F4:
	mov r0, #0
	strb r0, [r4, #15]
	add r0, r6, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r4, #0
	bl _call_via_r1
	b _0804B326
_0804B308:
	add r0, r6, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r4, #0
	bl _call_via_r1
	mov r1, #11
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bge _0804B326
	add r2, r4, #0
	add r2, r2, #67
	mov r1, #255
	strb r1, [r2]
_0804B326:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804B1E0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804B330
sub_0804B330: @ 0x0804B330
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B342
	b _0804B482
_0804B342:
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B370
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B368  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B36C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804B482
	.byte 0x00
	.byte 0x00
_0804B368:
	.4byte 0x03000386
_0804B36C:
	.4byte gUnknown_080B5F80
_0804B370:
	ldr r0, _0804B3AC  @ =0x03001AA0
	mov r1, #10
	ldrsb r1, [r4, r1]
	add r0, r0, #97
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804B382
	b _0804B482
_0804B382:
	ldr r0, _0804B3B0  @ =gUnknown_03000395
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804B390
	b _0804B482
_0804B390:
	ldr r1, _0804B3B4  @ =gUnknown_03000368
	ldr r5, [r1]
	ldr r0, [r4, #32]
	sub r3, r5, r0
	add r6, r1, #0
	add r2, r0, #0
	cmp r3, #0
	blt _0804B3B8
	mov r0, #192
	lsl r0, r0, #5
	cmp r3, r0
	bgt _0804B3C2
	b _0804B44C
	.byte 0x00
	.byte 0x00
_0804B3AC:
	.4byte 0x03001AA0
_0804B3B0:
	.4byte gUnknown_03000395
_0804B3B4:
	.4byte gUnknown_03000368
_0804B3B8:
	sub r1, r2, r5
	mov r0, #192
	lsl r0, r0, #5
	cmp r1, r0
	ble _0804B44C
_0804B3C2:
	ldr r0, [r6]
	sub r0, r0, r2
	cmp r0, #0
	bge _0804B408
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804B3F0
	ldr r0, _0804B3E8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B3EC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	b _0804B460
	.byte 0x00
	.byte 0x00
_0804B3E8:
	.4byte 0x03000386
_0804B3EC:
	.4byte gUnknown_080B5F80
_0804B3F0:
	ldr r0, _0804B400  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B404  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _0804B422
	.byte 0x00
	.byte 0x00
_0804B400:
	.4byte 0x03000386
_0804B404:
	.4byte gUnknown_080B5F80
_0804B408:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0804B434
	ldr r0, _0804B42C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B430  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
_0804B422:
	mov r2, #1
	bl sub_0804A644
	b _0804B482
	.byte 0x00
	.byte 0x00
_0804B42C:
	.4byte 0x03000386
_0804B430:
	.4byte gUnknown_080B5F80
_0804B434:
	ldr r0, _0804B444  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B448  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _0804B460
	.byte 0x00
	.byte 0x00
_0804B444:
	.4byte 0x03000386
_0804B448:
	.4byte gUnknown_080B5F80
_0804B44C:
	ldr r0, [r6]
	sub r0, r0, r2
	cmp r0, #0
	bge _0804B470
	ldr r0, _0804B468  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B46C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0804B460:
	mov r2, #0
	bl sub_0804A644
	b _0804B482
_0804B468:
	.4byte 0x03000386
_0804B46C:
	.4byte gUnknown_080B5F80
_0804B470:
	ldr r0, _0804B48C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B490  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl sub_0804A644
_0804B482:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804B48C:
	.4byte 0x03000386
_0804B490:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804B330

	THUMB_FUNC_START sub_0804B494
sub_0804B494: @ 0x0804B494
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _0804B590
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _0804B4D8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B4D0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B4D4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	strh r5, [r4, #58]
	b _0804B7FA
	.byte 0x00
	.byte 0x00
_0804B4D0:
	.4byte 0x03000386
_0804B4D4:
	.4byte gUnknown_080B5F80
_0804B4D8:
	ldr r0, _0804B500  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804B4EE
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B4EE
	b _0804B7FA
_0804B4EE:
	add r0, r4, #0
	mov r1, #0
	bl sub_0804EA94
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B504
	strh r6, [r4, #58]
	b _0804B7FA
_0804B500:
	.4byte gUnknown_03000387
_0804B504:
	ldr r2, _0804B544  @ =gUnknown_03000368
	ldr r1, [r2]
	ldr r0, [r4, #32]
	sub r5, r1, r0
	cmp r5, #0
	bge _0804B512
	sub r5, r0, r1
_0804B512:
	ldr r1, [r2, #4]
	ldr r0, [r4, #36]
	sub r7, r1, r0
	cmp r7, #0
	bge _0804B51E
	sub r7, r0, r1
_0804B51E:
	ldr r0, _0804B548  @ =gUnknown_03000395
	mov r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0804B558
	ldr r0, _0804B54C  @ =0x00000BFF
	cmp r5, r0
	bgt _0804B558
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B550  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B554  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	b _0804B5D8
	.byte 0x00
	.byte 0x00
_0804B544:
	.4byte gUnknown_03000368
_0804B548:
	.4byte gUnknown_03000395
_0804B54C:
	.4byte 0x00000BFF
_0804B550:
	.4byte 0x03000386
_0804B554:
	.4byte gUnknown_080B5F80
_0804B558:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_0804F394
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _0804B5A4
	ldr r0, _0804B598  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804B5EC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B59C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B5A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #25
	bl sub_0804A644
_0804B590:
	mov r0, #0
	strh r0, [r4, #58]
	b _0804B7FA
	.byte 0x00
	.byte 0x00
_0804B598:
	.4byte gUnknown_03000368
_0804B59C:
	.4byte 0x03000386
_0804B5A0:
	.4byte gUnknown_080B5F80
_0804B5A4:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_0804E870
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B5EC
	ldr r0, _0804B5E0  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r0, r2
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804B5EC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B5E4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B5E8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
_0804B5D8:
	bl sub_0804A644
	strh r6, [r4, #58]
	b _0804B7FA
_0804B5E0:
	.4byte gUnknown_03000368
_0804B5E4:
	.4byte 0x03000386
_0804B5E8:
	.4byte gUnknown_080B5F80
_0804B5EC:
	mov r0, #192
	lsl r0, r0, #5
	cmp r5, r0
	ble _0804B6B2
	ldr r5, _0804B634  @ =gUnknown_03000368
	ldr r1, [r5]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r4, #0
	bl sub_0804E098
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804B6A4
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804B658
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804B640
	ldr r0, _0804B638  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B63C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0804A644
	b _0804B696
_0804B634:
	.4byte gUnknown_03000368
_0804B638:
	.4byte 0x03000386
_0804B63C:
	.4byte gUnknown_080B5F80
_0804B640:
	ldr r0, _0804B650  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B654  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _0804B672
	.byte 0x00
	.byte 0x00
_0804B650:
	.4byte 0x03000386
_0804B654:
	.4byte gUnknown_080B5F80
_0804B658:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0804B684
	ldr r0, _0804B67C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B680  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
_0804B672:
	mov r2, #1
	bl sub_0804A644
	b _0804B696
	.byte 0x00
	.byte 0x00
_0804B67C:
	.4byte 0x03000386
_0804B680:
	.4byte gUnknown_080B5F80
_0804B684:
	ldr r0, _0804B69C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B6A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0804A644
_0804B696:
	mov r0, #0
	strh r0, [r4, #58]
	b _0804B6B2
_0804B69C:
	.4byte 0x03000386
_0804B6A0:
	.4byte gUnknown_080B5F80
_0804B6A4:
	add r0, r4, #0
	bl sub_0804E364
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B6B2
	b _0804B7FA
_0804B6B2:
	add r0, r4, #0
	bl sub_0804E364
	lsl r0, r0, #24
	asr r5, r0, #24
	cmp r5, #0
	beq _0804B6C2
	b _0804B7FA
_0804B6C2:
	ldr r0, _0804B6EC  @ =gUnknown_03000368
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804B6F8
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r6, r0, #0
	cmp r1, #0
	beq _0804B71A
	ldr r0, _0804B6F0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B6F4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #1
	b _0804B714
_0804B6EC:
	.4byte gUnknown_03000368
_0804B6F0:
	.4byte 0x03000386
_0804B6F4:
	.4byte gUnknown_080B5F80
_0804B6F8:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r6, r0, #0
	cmp r1, #1
	beq _0804B71A
	ldr r0, _0804B79C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B7A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
_0804B714:
	bl sub_0804A644
	strh r5, [r4, #58]
_0804B71A:
	ldrh r0, [r4, #4]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0804B76C
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0804B734
	mov r0, #0
	strh r0, [r4, #58]
_0804B734:
	ldrh r0, [r4, #58]
	cmp r0, #4
	bhi _0804B76C
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0804B76C
	mov r0, #8
	mov r1, #6
	bl sub_0804F3D0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804B76C
	ldrb r2, [r6]
	ldr r0, _0804B79C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B7A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	bl sub_0804A644
	ldrh r0, [r4, #58]
	add r0, r0, #1
	strh r0, [r4, #58]
_0804B76C:
	ldr r0, _0804B7A4  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0804B7A8  @ =0xFFFFFE97
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bhi _0804B7AC
	mov r0, #189
	lsl r0, r0, #1
	cmp r1, r0
	beq _0804B7FA
	ldrb r2, [r6]
	ldr r0, _0804B79C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B7A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_0804A644
	b _0804B7FA
	.byte 0x00
	.byte 0x00
_0804B79C:
	.4byte 0x03000386
_0804B7A0:
	.4byte gUnknown_080B5F80
_0804B7A4:
	.4byte gUnknown_030019AC
_0804B7A8:
	.4byte 0xFFFFFE97
_0804B7AC:
	ldr r0, _0804B7D0  @ =0x00001FFF
	cmp r7, r0
	bgt _0804B7FA
	ldr r0, _0804B7D4  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	ldr r1, [r4, #36]
	cmp r0, r1
	bge _0804B7E0
	ldrb r2, [r6]
	ldr r0, _0804B7D8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B7DC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804B7FA
_0804B7D0:
	.4byte 0x00001FFF
_0804B7D4:
	.4byte gUnknown_03000368
_0804B7D8:
	.4byte 0x03000386
_0804B7DC:
	.4byte gUnknown_080B5F80
_0804B7E0:
	ldr r2, _0804B804  @ =0xFFFFF600
	add r0, r0, r2
	cmp r0, r1
	bge _0804B7FA
	ldrb r2, [r6]
	ldr r0, _0804B808  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B80C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804B7FA:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804B804:
	.4byte 0xFFFFF600
_0804B808:
	.4byte 0x03000386
_0804B80C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804B494

	THUMB_FUNC_START sub_0804B810
sub_0804B810: @ 0x0804B810
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _0804B824
	b _0804BB5A
_0804B824:
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _0804B854
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B84C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B850  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	strh r5, [r4, #58]
	b _0804BB5E
_0804B84C:
	.4byte 0x03000386
_0804B850:
	.4byte gUnknown_080B5F80
_0804B854:
	ldr r0, _0804B87C  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804B86A
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B86A
	b _0804BB5E
_0804B86A:
	add r0, r4, #0
	mov r1, #0
	bl sub_0804EA94
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B880
	strh r6, [r4, #58]
	b _0804BB5E
_0804B87C:
	.4byte gUnknown_03000387
_0804B880:
	ldr r2, _0804B8B8  @ =gUnknown_03000368
	ldr r1, [r2]
	ldr r0, [r4, #32]
	sub r5, r1, r0
	cmp r5, #0
	bge _0804B88E
	sub r5, r0, r1
_0804B88E:
	ldr r0, [r2, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	ldr r0, _0804B8BC  @ =gUnknown_03000395
	mov r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0804B8CC
	ldr r0, _0804B8C0  @ =0x00000BFF
	cmp r5, r0
	bgt _0804B8CC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B8C4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B8C8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	b _0804B948
_0804B8B8:
	.4byte gUnknown_03000368
_0804B8BC:
	.4byte gUnknown_03000395
_0804B8C0:
	.4byte 0x00000BFF
_0804B8C4:
	.4byte 0x03000386
_0804B8C8:
	.4byte gUnknown_080B5F80
_0804B8CC:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_0804F394
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _0804B914
	ldr r0, _0804B908  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804B95C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B90C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B910  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #25
	bl sub_0804A644
	b _0804BB5A
	.byte 0x00
	.byte 0x00
_0804B908:
	.4byte gUnknown_03000368
_0804B90C:
	.4byte 0x03000386
_0804B910:
	.4byte gUnknown_080B5F80
_0804B914:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_0804E870
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804B95C
	ldr r0, _0804B950  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r0, r2
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804B95C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804B954  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B958  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
_0804B948:
	bl sub_0804A644
	strh r6, [r4, #58]
	b _0804BB5E
_0804B950:
	.4byte gUnknown_03000368
_0804B954:
	.4byte 0x03000386
_0804B958:
	.4byte gUnknown_080B5F80
_0804B95C:
	mov r0, #192
	lsl r0, r0, #5
	cmp r5, r0
	ble _0804BA22
	ldr r5, _0804B9A4  @ =gUnknown_03000368
	ldr r1, [r5]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r4, #0
	bl sub_0804E098
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804BA14
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804B9C8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804B9B0
	ldr r0, _0804B9A8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B9AC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0804A644
	b _0804BA06
_0804B9A4:
	.4byte gUnknown_03000368
_0804B9A8:
	.4byte 0x03000386
_0804B9AC:
	.4byte gUnknown_080B5F80
_0804B9B0:
	ldr r0, _0804B9C0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B9C4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _0804B9E2
	.byte 0x00
	.byte 0x00
_0804B9C0:
	.4byte 0x03000386
_0804B9C4:
	.4byte gUnknown_080B5F80
_0804B9C8:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0804B9F4
	ldr r0, _0804B9EC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804B9F0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
_0804B9E2:
	mov r2, #1
	bl sub_0804A644
	b _0804BA06
	.byte 0x00
	.byte 0x00
_0804B9EC:
	.4byte 0x03000386
_0804B9F0:
	.4byte gUnknown_080B5F80
_0804B9F4:
	ldr r0, _0804BA0C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BA10  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0804A644
_0804BA06:
	mov r0, #0
	strh r0, [r4, #58]
	b _0804BA22
_0804BA0C:
	.4byte 0x03000386
_0804BA10:
	.4byte gUnknown_080B5F80
_0804BA14:
	add r0, r4, #0
	bl sub_0804E364
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BA22
	b _0804BB5E
_0804BA22:
	add r0, r4, #0
	bl sub_0804E364
	lsl r0, r0, #24
	asr r5, r0, #24
	cmp r5, #0
	beq _0804BA32
	b _0804BB5E
_0804BA32:
	ldr r0, _0804BA5C  @ =gUnknown_03000368
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804BA68
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r6, r0, #0
	cmp r1, #0
	beq _0804BA8A
	ldr r0, _0804BA60  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BA64  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #1
	b _0804BA84
_0804BA5C:
	.4byte gUnknown_03000368
_0804BA60:
	.4byte 0x03000386
_0804BA64:
	.4byte gUnknown_080B5F80
_0804BA68:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r6, r0, #0
	cmp r1, #1
	beq _0804BA8A
	ldr r0, _0804BB04  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BB08  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
_0804BA84:
	bl sub_0804A644
	strh r5, [r4, #58]
_0804BA8A:
	ldrh r0, [r4, #4]
	sub r0, r0, #2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0804BADC
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0804BAA4
	mov r0, #0
	strh r0, [r4, #58]
_0804BAA4:
	ldrh r0, [r4, #58]
	cmp r0, #4
	bhi _0804BADC
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0804BADC
	mov r0, #8
	mov r1, #6
	bl sub_0804F3D0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804BADC
	ldrb r2, [r6]
	ldr r0, _0804BB04  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BB08  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	bl sub_0804A644
	ldrh r0, [r4, #58]
	add r0, r0, #1
	strh r0, [r4, #58]
_0804BADC:
	ldr r0, _0804BB0C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0804BB10  @ =0xFFFFFE97
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bls _0804BB14
	ldrb r2, [r6]
	ldr r0, _0804BB04  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BB08  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804BB5E
	.byte 0x00
	.byte 0x00
_0804BB04:
	.4byte 0x03000386
_0804BB08:
	.4byte gUnknown_080B5F80
_0804BB0C:
	.4byte gUnknown_030019AC
_0804BB10:
	.4byte 0xFFFFFE97
_0804BB14:
	lsl r1, r1, #16
	mov r0, #189
	lsl r0, r0, #17
	cmp r1, r0
	bne _0804BB5E
	ldr r0, _0804BB3C  @ =gUnknown_03000368
	ldr r1, [r0, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _0804BB48
	ldrb r2, [r6]
	ldr r0, _0804BB40  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BB44  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0804A644
	b _0804BB5A
_0804BB3C:
	.4byte gUnknown_03000368
_0804BB40:
	.4byte 0x03000386
_0804BB44:
	.4byte gUnknown_080B5F80
_0804BB48:
	ldrb r2, [r6]
	ldr r0, _0804BB68  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BB6C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0804BB5A:
	mov r0, #0
	strh r0, [r4, #58]
_0804BB5E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804BB68:
	.4byte 0x03000386
_0804BB6C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804B810

	THUMB_FUNC_START sub_0804BB70
sub_0804BB70: @ 0x0804BB70
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BB82
	b _0804BF64
_0804BB82:
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BBB0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BBA8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BBAC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804BF64
	.byte 0x00
	.byte 0x00
_0804BBA8:
	.4byte 0x03000386
_0804BBAC:
	.4byte gUnknown_080B5F80
_0804BBB0:
	add r0, r4, #0
	mov r1, #0
	bl sub_0804EA94
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BBC0
	b _0804BF64
_0804BBC0:
	ldr r2, _0804BC2C  @ =gUnknown_03000368
	ldr r1, [r2]
	ldr r0, [r4, #32]
	sub r5, r1, r0
	cmp r5, #0
	bge _0804BBCE
	sub r5, r0, r1
_0804BBCE:
	ldr r1, [r2, #4]
	ldr r0, [r4, #36]
	sub r6, r1, r0
	cmp r6, #0
	bge _0804BBDA
	sub r6, r0, r1
_0804BBDA:
	ldr r0, _0804BC30  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804BBF0
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BBF0
	b _0804BF64
_0804BBF0:
	ldr r0, _0804BC34  @ =0x03001AA0
	mov r1, #10
	ldrsb r1, [r4, r1]
	add r0, r0, #97
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804BC12
	ldr r0, _0804BC38  @ =gUnknown_03000395
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804BC48
	ldr r0, _0804BC3C  @ =0x00000BFF
	cmp r5, r0
	bgt _0804BC48
_0804BC12:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BC40  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BC44  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
	b _0804BF64
	.byte 0x00
	.byte 0x00
_0804BC2C:
	.4byte gUnknown_03000368
_0804BC30:
	.4byte gUnknown_03000387
_0804BC34:
	.4byte 0x03001AA0
_0804BC38:
	.4byte gUnknown_03000395
_0804BC3C:
	.4byte 0x00000BFF
_0804BC40:
	.4byte 0x03000386
_0804BC44:
	.4byte gUnknown_080B5F80
_0804BC48:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_0804F394
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BC8C
	ldr r0, _0804BC80  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804BCD4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BC84  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BC88  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #25
	bl sub_0804A644
	b _0804BF64
_0804BC80:
	.4byte gUnknown_03000368
_0804BC84:
	.4byte 0x03000386
_0804BC88:
	.4byte gUnknown_080B5F80
_0804BC8C:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_0804E870
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BCD4
	ldr r0, _0804BCC8  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r0, r2
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804BCD4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BCCC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BCD0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _0804BF64
	.byte 0x00
	.byte 0x00
_0804BCC8:
	.4byte gUnknown_03000368
_0804BCCC:
	.4byte 0x03000386
_0804BCD0:
	.4byte gUnknown_080B5F80
_0804BCD4:
	mov r0, #192
	lsl r0, r0, #5
	cmp r5, r0
	bgt _0804BCDE
	b _0804BE38
_0804BCDE:
	ldr r5, _0804BD18  @ =gUnknown_03000368
	ldr r1, [r5]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r4, #0
	bl sub_0804E098
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804BD78
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804BD3C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804BD24
	ldr r0, _0804BD1C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BD20  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	b _0804BE9E
_0804BD18:
	.4byte gUnknown_03000368
_0804BD1C:
	.4byte 0x03000386
_0804BD20:
	.4byte gUnknown_080B5F80
_0804BD24:
	ldr r0, _0804BD34  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BD38  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _0804BE6E
	.byte 0x00
	.byte 0x00
_0804BD34:
	.4byte 0x03000386
_0804BD38:
	.4byte gUnknown_080B5F80
_0804BD3C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0804BD60
	ldr r0, _0804BD58  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BD5C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	b _0804BE6E
_0804BD58:
	.4byte 0x03000386
_0804BD5C:
	.4byte gUnknown_080B5F80
_0804BD60:
	ldr r0, _0804BD70  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BD74  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _0804BE9E
	.byte 0x00
	.byte 0x00
_0804BD70:
	.4byte 0x03000386
_0804BD74:
	.4byte gUnknown_080B5F80
_0804BD78:
	add r0, r4, #0
	bl sub_0804E364
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BD86
	b _0804BF64
_0804BD86:
	add r0, r4, #0
	add r0, r0, #84
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #20
	ble _0804BE10
	mov r0, #128
	lsl r0, r0, #6
	cmp r6, r0
	ble _0804BDE0
	ldr r1, [r5, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _0804BDC0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BDB8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BDBC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	b _0804BF4A
	.byte 0x00
	.byte 0x00
_0804BDB8:
	.4byte 0x03000386
_0804BDBC:
	.4byte gUnknown_080B5F80
_0804BDC0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BDD8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BDDC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
	b _0804BF4E
_0804BDD8:
	.4byte 0x03000386
_0804BDDC:
	.4byte gUnknown_080B5F80
_0804BDE0:
	ldr r0, [r5, #4]
	ldr r1, _0804BE04  @ =0xFFFFF600
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804BDEE
	b _0804BF64
_0804BDEE:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BE08  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BE0C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0804BF4A
	.byte 0x00
	.byte 0x00
_0804BE04:
	.4byte 0xFFFFF600
_0804BE08:
	.4byte 0x03000386
_0804BE0C:
	.4byte gUnknown_080B5F80
_0804BE10:
	ldr r0, _0804BE30  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r2, _0804BE34  @ =0xFFFFFE97
	add r0, r2, #0
	ldrh r1, [r1, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bls _0804BE26
	b _0804BF64
_0804BE26:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	b _0804BF3E
	.byte 0x00
	.byte 0x00
_0804BE30:
	.4byte gUnknown_030019AC
_0804BE34:
	.4byte 0xFFFFFE97
_0804BE38:
	add r0, r4, #0
	bl sub_0804E364
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BE46
	b _0804BF64
_0804BE46:
	ldr r0, _0804BE78  @ =gUnknown_03000368
	ldr r1, [r0]
	ldr r2, [r4, #32]
	sub r1, r1, r2
	add r3, r0, #0
	cmp r1, #0
	bge _0804BE84
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #0
	beq _0804BEB0
	ldr r0, _0804BE7C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BE80  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
_0804BE6E:
	mov r2, #1
	bl sub_0804A644
	b _0804BF64
	.byte 0x00
	.byte 0x00
_0804BE78:
	.4byte gUnknown_03000368
_0804BE7C:
	.4byte 0x03000386
_0804BE80:
	.4byte gUnknown_080B5F80
_0804BE84:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #1
	beq _0804BEB0
	ldr r0, _0804BEA8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BEAC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
_0804BE9E:
	mov r2, #0
	bl sub_0804A644
	b _0804BF64
	.byte 0x00
	.byte 0x00
_0804BEA8:
	.4byte 0x03000386
_0804BEAC:
	.4byte gUnknown_080B5F80
_0804BEB0:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #20
	ble _0804BF28
	mov r0, #128
	lsl r0, r0, #6
	cmp r6, r0
	ble _0804BF00
	ldr r1, [r3, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _0804BEE4
	ldrb r2, [r2]
	ldr r0, _0804BEDC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BEE0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	b _0804BF4A
_0804BEDC:
	.4byte 0x03000386
_0804BEE0:
	.4byte gUnknown_080B5F80
_0804BEE4:
	ldrb r2, [r2]
	ldr r0, _0804BEF8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BEFC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
	b _0804BF4E
_0804BEF8:
	.4byte 0x03000386
_0804BEFC:
	.4byte gUnknown_080B5F80
_0804BF00:
	ldr r0, [r3, #4]
	ldr r3, _0804BF1C  @ =0xFFFFF600
	add r0, r0, r3
	ldr r1, [r4, #36]
	cmp r0, r1
	ble _0804BF64
	ldrb r2, [r2]
	ldr r0, _0804BF20  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BF24  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	b _0804BF4A
_0804BF1C:
	.4byte 0xFFFFF600
_0804BF20:
	.4byte 0x03000386
_0804BF24:
	.4byte gUnknown_080B5F80
_0804BF28:
	ldr r0, _0804BF6C  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r3, _0804BF70  @ =0xFFFFFE97
	add r0, r3, #0
	ldrh r1, [r1, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bhi _0804BF64
	ldrb r2, [r2]
_0804BF3E:
	ldr r0, _0804BF74  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BF78  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
_0804BF4A:
	bl sub_0804A644
_0804BF4E:
	mov r0, #10
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	strb r2, [r4, #2]
	ldrb r1, [r4, #3]
	lsl r0, r0, #25
	lsr r0, r0, #24
	cmp r0, r1
	bcc _0804BF64
	sub r0, r2, r1
	strb r0, [r4, #2]
_0804BF64:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0804BF6C:
	.4byte gUnknown_030019AC
_0804BF70:
	.4byte 0xFFFFFE97
_0804BF74:
	.4byte 0x03000386
_0804BF78:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804BB70

	THUMB_FUNC_START sub_0804BF7C
sub_0804BF7C: @ 0x0804BF7C
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BFAC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804BFA4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804BFA8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804C176
_0804BFA4:
	.4byte 0x03000386
_0804BFA8:
	.4byte gUnknown_080B5F80
_0804BFAC:
	add r0, r4, #0
	mov r1, #1
	bl sub_0804EA94
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BFBC
	b _0804C176
_0804BFBC:
	add r0, r4, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BFCA
	b _0804C176
_0804BFCA:
	ldr r0, _0804C008  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804BFE0
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804BFE0
	b _0804C176
_0804BFE0:
	ldr r0, _0804C00C  @ =0x03001AA0
	mov r1, #10
	ldrsb r1, [r4, r1]
	add r0, r0, #97
	add r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804C018
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C010  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C014  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
	b _0804C176
_0804C008:
	.4byte gUnknown_03000387
_0804C00C:
	.4byte 0x03001AA0
_0804C010:
	.4byte 0x03000386
_0804C014:
	.4byte gUnknown_080B5F80
_0804C018:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_0804F394
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804C05C
	ldr r0, _0804C050  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804C05C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C054  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C058  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #25
	bl sub_0804A644
	b _0804C176
_0804C050:
	.4byte gUnknown_03000368
_0804C054:
	.4byte 0x03000386
_0804C058:
	.4byte gUnknown_080B5F80
_0804C05C:
	add r0, r4, #0
	bl sub_0804F330
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804C088
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C080  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C084  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	bl sub_0804A644
	b _0804C176
_0804C080:
	.4byte 0x03000386
_0804C084:
	.4byte gUnknown_080B5F80
_0804C088:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_0804E870
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804C0D0
	ldr r0, _0804C0C4  @ =gUnknown_03000368
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804C0D0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C0C8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C0CC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _0804C176
	.byte 0x00
	.byte 0x00
_0804C0C4:
	.4byte gUnknown_03000368
_0804C0C8:
	.4byte 0x03000386
_0804C0CC:
	.4byte gUnknown_080B5F80
_0804C0D0:
	ldr r5, _0804C110  @ =gUnknown_03000368
	ldr r1, [r5]
	ldr r0, [r4, #32]
	sub r3, r1, r0
	cmp r3, #0
	bge _0804C0DE
	sub r3, r0, r1
_0804C0DE:
	ldr r0, [r5, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0804C120
	ldr r0, _0804C114  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C118  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C11C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	bl sub_0804A644
	b _0804C176
_0804C110:
	.4byte gUnknown_03000368
_0804C114:
	.4byte 0xFFFFFF00
_0804C118:
	.4byte 0x03000386
_0804C11C:
	.4byte gUnknown_080B5F80
_0804C120:
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0804C12C
	ldr r0, _0804C144  @ =0x00000BFF
	cmp r3, r0
	bgt _0804C150
_0804C12C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C148  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C14C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804C176
_0804C144:
	.4byte 0x00000BFF
_0804C148:
	.4byte 0x03000386
_0804C14C:
	.4byte gUnknown_080B5F80
_0804C150:
	mov r1, #192
	lsl r1, r1, #3
	add r0, r4, #0
	bl sub_0804E178
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804C176
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C180  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C184  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
_0804C176:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804C180:
	.4byte 0x03000386
_0804C184:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804BF7C

	THUMB_FUNC_START sub_0804C188
sub_0804C188: @ 0x0804C188
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804C19A
	b _0804C28C
_0804C19A:
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r4, #92]
	ldr r1, _0804C1F8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, _0804C1FC  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _0804C26C
	ldr r2, _0804C200  @ =gUnknown_03000368
	ldr r0, [r2, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0804C26C
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, [r2]
	sub r1, r1, r0
	ldr r0, _0804C204  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _0804C20C
	ldr r0, _0804C208  @ =0x000007FF
	cmp r2, r0
	bgt _0804C218
	b _0804C23C
_0804C1F8:
	.4byte 0xFFFFFF00
_0804C1FC:
	.4byte gUnknown_030019AC
_0804C200:
	.4byte gUnknown_03000368
_0804C204:
	.4byte 0xFFFFF800
_0804C208:
	.4byte 0x000007FF
_0804C20C:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0804C230  @ =0x000007FF
	cmp r0, r1
	ble _0804C23C
_0804C218:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C234  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C238  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _0804C252
_0804C230:
	.4byte 0x000007FF
_0804C234:
	.4byte 0x03000386
_0804C238:
	.4byte gUnknown_080B5F80
_0804C23C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C264  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C268  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_0804C252:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0804C34A
	.byte 0x00
	.byte 0x00
_0804C264:
	.4byte 0x03000386
_0804C268:
	.4byte gUnknown_080B5F80
_0804C26C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C284  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C288  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #26
	bl sub_0804A644
	b _0804C34A
_0804C284:
	.4byte 0x03000386
_0804C288:
	.4byte gUnknown_080B5F80
_0804C28C:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804C34A
	ldr r0, _0804C2D4  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _0804C2E4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C2D8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C2DC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #45
	bl sub_0804A644
	ldr r2, _0804C2E0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0800A258
	b _0804C34A
_0804C2D4:
	.4byte 0xFFFFFF00
_0804C2D8:
	.4byte 0x03000386
_0804C2DC:
	.4byte gUnknown_080B5F80
_0804C2E0:
	.4byte gUnknown_03001A1C
_0804C2E4:
	mov r0, #226
	lsl r0, r0, #7
	cmp r1, r0
	ble _0804C30C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C304  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C308  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #44
	bl sub_0804A644
	b _0804C34A
_0804C304:
	.4byte 0x03000386
_0804C308:
	.4byte gUnknown_080B5F80
_0804C30C:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _0804C334
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C32C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C330  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #43
	bl sub_0804A644
	b _0804C34A
_0804C32C:
	.4byte 0x03000386
_0804C330:
	.4byte gUnknown_080B5F80
_0804C334:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C354  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C358  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #42
	bl sub_0804A644
_0804C34A:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804C354:
	.4byte 0x03000386
_0804C358:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804C188

	THUMB_FUNC_START sub_0804C35C
sub_0804C35C: @ 0x0804C35C
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804C420
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r4, #92]
	ldr r1, _0804C3AC  @ =0xFFFFFF00
	and r0, r0, r1
	ldr r1, _0804C3B0  @ =0xFF7FFFFF
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _0804C3B4  @ =gUnknown_03000368
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _0804C3B8  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _0804C3C0
	ldr r0, _0804C3BC  @ =0x000007FF
	cmp r2, r0
	bgt _0804C3CC
	b _0804C3F0
_0804C3AC:
	.4byte 0xFFFFFF00
_0804C3B0:
	.4byte 0xFF7FFFFF
_0804C3B4:
	.4byte gUnknown_03000368
_0804C3B8:
	.4byte 0xFFFFF800
_0804C3BC:
	.4byte 0x000007FF
_0804C3C0:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0804C3E4  @ =0x000007FF
	cmp r0, r1
	ble _0804C3F0
_0804C3CC:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C3E8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C3EC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _0804C406
_0804C3E4:
	.4byte 0x000007FF
_0804C3E8:
	.4byte 0x03000386
_0804C3EC:
	.4byte gUnknown_080B5F80
_0804C3F0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C418  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C41C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_0804C406:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0804C486
	.byte 0x00
	.byte 0x00
_0804C418:
	.4byte 0x03000386
_0804C41C:
	.4byte gUnknown_080B5F80
_0804C420:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804C486
	ldr r0, _0804C45C  @ =0xFFFFFF00
	and r2, r2, r0
	ldr r0, _0804C460  @ =0xFF7FFFFF
	and r2, r2, r0
	str r2, [r4, #92]
	ldr r0, _0804C464  @ =gUnknown_03000368
	ldr r1, [r0, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _0804C470
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C468  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C46C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	bl sub_0804A644
	b _0804C486
_0804C45C:
	.4byte 0xFFFFFF00
_0804C460:
	.4byte 0xFF7FFFFF
_0804C464:
	.4byte gUnknown_03000368
_0804C468:
	.4byte 0x03000386
_0804C46C:
	.4byte gUnknown_080B5F80
_0804C470:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C490  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C494  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
_0804C486:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804C490:
	.4byte 0x03000386
_0804C494:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804C35C

	THUMB_FUNC_START sub_0804C498
sub_0804C498: @ 0x0804C498
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804C4C8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C4C0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C4C4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804C5EA
_0804C4C0:
	.4byte 0x03000386
_0804C4C4:
	.4byte gUnknown_080B5F80
_0804C4C8:
	mov r1, #54
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804C4E0
	ldr r1, [r4, #32]
	ldr r0, [r4, #40]
	cmp r1, r0
	bne _0804C504
	ldr r1, [r4, #36]
	ldr r0, [r4, #44]
	cmp r1, r0
	bne _0804C504
_0804C4E0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0804C4FC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C500  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804C5EA
_0804C4FC:
	.4byte 0x03000386
_0804C500:
	.4byte gUnknown_080B5F80
_0804C504:
	ldr r0, _0804C554  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804C518
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C5EA
_0804C518:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _0804C5EA
	ldr r0, _0804C558  @ =gUnknown_03000368
	ldr r5, [r0]
	ldr r3, [r4, #32]
	sub r2, r5, r3
	add r6, r2, #0
	cmp r2, #0
	bge _0804C534
	sub r6, r3, r5
_0804C534:
	ldr r0, [r0, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	mov r0, #240
	lsl r0, r0, #6
	cmp r6, r0
	ble _0804C57C
	cmp r2, #0
	ble _0804C564
	ldr r0, _0804C55C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C560  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	b _0804C5C6
_0804C554:
	.4byte gUnknown_03000387
_0804C558:
	.4byte gUnknown_03000368
_0804C55C:
	.4byte 0x03000386
_0804C560:
	.4byte gUnknown_080B5F80
_0804C564:
	ldr r0, _0804C574  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C578  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	b _0804C5A0
	.byte 0x00
	.byte 0x00
_0804C574:
	.4byte 0x03000386
_0804C578:
	.4byte gUnknown_080B5F80
_0804C57C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804C5B0
	ldr r0, [r4, #16]
	cmp r3, r0
	bge _0804C5EA
	cmp r5, r3
	bgt _0804C5BA
	ldr r0, _0804C5A8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C5AC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0804C5A0:
	mov r2, #0
	bl sub_0804A644
	b _0804C5EA
_0804C5A8:
	.4byte 0x03000386
_0804C5AC:
	.4byte gUnknown_080B5F80
_0804C5B0:
	ldr r0, [r4, #16]
	cmp r0, r3
	bge _0804C5EA
	cmp r5, r3
	ble _0804C5D8
_0804C5BA:
	ldr r0, _0804C5D0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C5D4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0804C5C6:
	mov r2, #1
	bl sub_0804A644
	b _0804C5EA
	.byte 0x00
	.byte 0x00
_0804C5D0:
	.4byte 0x03000386
_0804C5D4:
	.4byte gUnknown_080B5F80
_0804C5D8:
	ldr r0, _0804C5F4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C5F8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl sub_0804A644
_0804C5EA:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804C5F4:
	.4byte 0x03000386
_0804C5F8:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804C498

	THUMB_FUNC_START sub_0804C5FC
sub_0804C5FC: @ 0x0804C5FC
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _0804C630
	mov r0, #255
	strb r0, [r4, #11]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, _0804C628  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C62C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	b _0804C6CE
_0804C628:
	.4byte 0x03000386
_0804C62C:
	.4byte gUnknown_080B5F80
_0804C630:
	ldr r2, _0804C6A8  @ =gUnknown_03001940
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	mov r1, #0
	str r1, [r4, #80]
	strh r1, [r4, #50]
	ldr r0, [r0, #36]
	ldr r1, _0804C6AC  @ =0xFFFFF100
	add r0, r0, r1
	str r0, [r4, #36]
	asr r0, r0, #8
	add r1, r4, #0
	add r1, r1, #124
	strb r0, [r1]
	ldr r0, _0804C6B0  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #4
	bne _0804C6E0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #54
	beq _0804C6E0
	ldr r5, _0804C6B4  @ =gUnknown_03000368
	ldr r1, [r5]
	ldr r0, [r4, #32]
	sub r2, r1, r0
	cmp r2, #0
	bge _0804C674
	sub r2, r0, r1
_0804C674:
	mov r0, #160
	lsl r0, r0, #5
	cmp r2, r0
	ble _0804C6E0
	mov r2, #128
	lsl r2, r2, #5
	add r0, r4, #0
	bl sub_0804E098
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C6E0
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804C6C0
	ldr r0, _0804C6B8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C6BC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	mov r2, #0
	b _0804C6CE
	.byte 0x00
	.byte 0x00
_0804C6A8:
	.4byte gUnknown_03001940
_0804C6AC:
	.4byte 0xFFFFF100
_0804C6B0:
	.4byte 0x03001A50
_0804C6B4:
	.4byte gUnknown_03000368
_0804C6B8:
	.4byte 0x03000386
_0804C6BC:
	.4byte gUnknown_080B5F80
_0804C6C0:
	ldr r0, _0804C6D8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C6DC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	mov r2, #1
_0804C6CE:
	bl sub_0804A644
	mov r0, #1
	b _0804C6E2
	.byte 0x00
	.byte 0x00
_0804C6D8:
	.4byte 0x03000386
_0804C6DC:
	.4byte gUnknown_080B5F80
_0804C6E0:
	mov r0, #0
_0804C6E2:
	add sp, sp, #4
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804C5FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804C6EC
sub_0804C6EC: @ 0x0804C6EC
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0804C720  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804C708
	ldr r0, _0804C724  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804C730
_0804C708:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C728  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C72C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	b _0804C832
_0804C720:
	.4byte gUnknown_03001A1C
_0804C724:
	.4byte gUnknown_03000387
_0804C728:
	.4byte 0x03000386
_0804C72C:
	.4byte gUnknown_080B5F80
_0804C730:
	add r0, r4, #0
	bl sub_0804F8A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C75C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C754  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C758  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804C832
_0804C754:
	.4byte 0x03000386
_0804C758:
	.4byte gUnknown_080B5F80
_0804C75C:
	ldr r6, _0804C79C  @ =gUnknown_03000368
	ldr r1, [r6, #4]
	ldr r0, [r4, #36]
	sub r5, r1, r0
	cmp r5, #0
	bge _0804C76A
	sub r5, r0, r1
_0804C76A:
	add r0, r4, #0
	bl sub_0804C5FC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C832
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	ble _0804C7A8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C7A0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C7A4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #50
	bl sub_0804A644
	b _0804C832
	.byte 0x00
	.byte 0x00
_0804C79C:
	.4byte gUnknown_03000368
_0804C7A0:
	.4byte 0x03000386
_0804C7A4:
	.4byte gUnknown_080B5F80
_0804C7A8:
	mov r0, #128
	lsl r0, r0, #6
	cmp r5, r0
	ble _0804C808
	ldr r1, [r6, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _0804C7E0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #51
	beq _0804C832
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C7D8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C7DC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #51
	bl sub_0804A644
	b _0804C832
_0804C7D8:
	.4byte 0x03000386
_0804C7DC:
	.4byte gUnknown_080B5F80
_0804C7E0:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #52
	beq _0804C832
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C800  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C804  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #52
	bl sub_0804A644
	b _0804C832
_0804C800:
	.4byte 0x03000386
_0804C804:
	.4byte gUnknown_080B5F80
_0804C808:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #52
	beq _0804C832
	ldr r0, [r6, #4]
	ldr r1, _0804C83C  @ =0xFFFFF600
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	ble _0804C832
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C840  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C844  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #52
	bl sub_0804A644
_0804C832:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804C83C:
	.4byte 0xFFFFF600
_0804C840:
	.4byte 0x03000386
_0804C844:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804C6EC

	THUMB_FUNC_START sub_0804C848
sub_0804C848: @ 0x0804C848
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0804C87C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804C864
	ldr r0, _0804C880  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804C88C
_0804C864:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C884  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C888  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	b _0804C974
_0804C87C:
	.4byte gUnknown_03001A1C
_0804C880:
	.4byte gUnknown_03000387
_0804C884:
	.4byte 0x03000386
_0804C888:
	.4byte gUnknown_080B5F80
_0804C88C:
	add r0, r4, #0
	bl sub_0804F8A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C8B8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C8B0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C8B4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804C974
_0804C8B0:
	.4byte 0x03000386
_0804C8B4:
	.4byte gUnknown_080B5F80
_0804C8B8:
	add r0, r4, #0
	bl sub_0804C5FC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C974
	ldr r6, _0804C910  @ =gUnknown_03000368
	ldr r1, [r6, #4]
	ldr r0, [r4, #36]
	sub r5, r1, r0
	cmp r5, #0
	bge _0804C8D2
	sub r5, r0, r1
_0804C8D2:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #60
	ble _0804C974
	add r0, r4, #0
	bl sub_0804E6D0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804C974
	mov r0, #128
	lsl r0, r0, #6
	cmp r5, r0
	ble _0804C93C
	ldr r1, [r6, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _0804C91C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C914  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C918  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #51
	b _0804C95A
	.byte 0x00
	.byte 0x00
_0804C910:
	.4byte gUnknown_03000368
_0804C914:
	.4byte 0x03000386
_0804C918:
	.4byte gUnknown_080B5F80
_0804C91C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C934  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C938  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #52
	bl sub_0804A644
	b _0804C95E
_0804C934:
	.4byte 0x03000386
_0804C938:
	.4byte gUnknown_080B5F80
_0804C93C:
	ldr r0, [r6, #4]
	ldr r1, _0804C97C  @ =0xFFFFF600
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	ble _0804C974
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C980  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C984  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #52
_0804C95A:
	bl sub_0804A644
_0804C95E:
	mov r0, #10
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	strb r2, [r4, #2]
	ldrb r1, [r4, #3]
	lsl r0, r0, #25
	lsr r0, r0, #24
	cmp r0, r1
	bcc _0804C974
	sub r0, r2, r1
	strb r0, [r4, #2]
_0804C974:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0804C97C:
	.4byte 0xFFFFF600
_0804C980:
	.4byte 0x03000386
_0804C984:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804C848

	THUMB_FUNC_START sub_0804C988
sub_0804C988: @ 0x0804C988
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0804C9BC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804C9A4
	ldr r5, _0804C9C0  @ =gUnknown_03000387
	ldrb r0, [r5]
	cmp r0, #3
	bne _0804C9CC
_0804C9A4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804C9C4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804C9C8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	b _0804CAEE
_0804C9BC:
	.4byte gUnknown_03001A1C
_0804C9C0:
	.4byte gUnknown_03000387
_0804C9C4:
	.4byte 0x03000386
_0804C9C8:
	.4byte gUnknown_080B5F80
_0804C9CC:
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CA08
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CA00  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CA04  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #255
	strb r0, [r1]
	mov r0, #1
	neg r0, r0
	strb r0, [r4, #11]
	str r0, [r4, #76]
	b _0804CAEE
_0804CA00:
	.4byte 0x03000386
_0804CA04:
	.4byte gUnknown_080B5F80
_0804CA08:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0804CA1A
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CAEE
_0804CA1A:
	ldr r0, _0804CA3C  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804CA48
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CA40  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CA44  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #50
	bl sub_0804A644
	b _0804CAEE
	.byte 0x00
	.byte 0x00
_0804CA3C:
	.4byte 0x03001A50
_0804CA40:
	.4byte 0x03000386
_0804CA44:
	.4byte gUnknown_080B5F80
_0804CA48:
	add r0, r4, #0
	bl sub_0804C5FC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CAEE
	ldr r5, _0804CA9C  @ =gUnknown_03000368
	ldr r3, [r5]
	ldr r0, [r4, #32]
	sub r2, r3, r0
	cmp r2, #0
	bge _0804CA62
	sub r2, r0, r3
_0804CA62:
	ldr r0, [r5, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	mov r0, #160
	lsl r0, r0, #5
	cmp r2, r0
	ble _0804CAE8
	mov r2, #128
	lsl r2, r2, #5
	add r0, r4, #0
	add r1, r3, #0
	bl sub_0804E098
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CAEE
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804CAA0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0804CACC
	b _0804CAAE
_0804CA9C:
	.4byte gUnknown_03000368
_0804CAA0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0804CACC
_0804CAAE:
	ldr r0, _0804CAC4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CAC8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	mov r2, #1
	bl sub_0804A644
	b _0804CAEE
	.byte 0x00
	.byte 0x00
_0804CAC4:
	.4byte 0x03000386
_0804CAC8:
	.4byte gUnknown_080B5F80
_0804CACC:
	ldr r0, _0804CAE0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CAE4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	mov r2, #0
	bl sub_0804A644
	b _0804CAEE
_0804CAE0:
	.4byte 0x03000386
_0804CAE4:
	.4byte gUnknown_080B5F80
_0804CAE8:
	add r0, r4, #0
	bl sub_0804E6D0
_0804CAEE:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804C988

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804CAF8
sub_0804CAF8: @ 0x0804CAF8
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0804CB2C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804CB14
	ldr r5, _0804CB30  @ =gUnknown_03000387
	ldrb r0, [r5]
	cmp r0, #3
	bne _0804CB3C
_0804CB14:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CB34  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CB38  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	b _0804CCC2
_0804CB2C:
	.4byte gUnknown_03001A1C
_0804CB30:
	.4byte gUnknown_03000387
_0804CB34:
	.4byte 0x03000386
_0804CB38:
	.4byte gUnknown_080B5F80
_0804CB3C:
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CB78
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CB70  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CB74  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #255
	strb r0, [r1]
	mov r0, #1
	neg r0, r0
	strb r0, [r4, #11]
	str r0, [r4, #76]
	b _0804CCC2
_0804CB70:
	.4byte 0x03000386
_0804CB74:
	.4byte gUnknown_080B5F80
_0804CB78:
	add r0, r4, #0
	bl sub_0804F8A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CBA4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CB9C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CBA0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804CCC2
_0804CB9C:
	.4byte 0x03000386
_0804CBA0:
	.4byte gUnknown_080B5F80
_0804CBA4:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0804CBB8
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CBB8
	b _0804CCC2
_0804CBB8:
	ldr r0, _0804CBD8  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804CBE4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CBDC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CBE0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #50
	bl sub_0804A644
	b _0804CCC2
_0804CBD8:
	.4byte 0x03001A50
_0804CBDC:
	.4byte 0x03000386
_0804CBE0:
	.4byte gUnknown_080B5F80
_0804CBE4:
	add r0, r4, #0
	bl sub_0804C5FC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CCC2
	ldr r5, _0804CC28  @ =gUnknown_03000368
	ldr r1, [r5]
	ldr r0, [r4, #32]
	sub r2, r1, r0
	cmp r2, #0
	bge _0804CBFE
	sub r2, r0, r1
_0804CBFE:
	ldr r0, [r5, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0804CC10
	ldr r0, _0804CC2C  @ =0x000007FF
	cmp r2, r0
	bgt _0804CC38
_0804CC10:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CC30  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CC34  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
	b _0804CCC2
_0804CC28:
	.4byte gUnknown_03000368
_0804CC2C:
	.4byte 0x000007FF
_0804CC30:
	.4byte 0x03000386
_0804CC34:
	.4byte gUnknown_080B5F80
_0804CC38:
	mov r1, #192
	lsl r1, r1, #3
	add r0, r4, #0
	bl sub_0804E178
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CC68
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CC60  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CC64  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #55
	bl sub_0804A644
	b _0804CCC2
_0804CC60:
	.4byte 0x03000386
_0804CC64:
	.4byte gUnknown_080B5F80
_0804CC68:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804CCA0
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	ble _0804CCC2
	mov r0, #1
	eor r2, r2, r0
	ldr r0, _0804CC98  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CC9C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _0804CCC2
_0804CC98:
	.4byte 0x03000386
_0804CC9C:
	.4byte gUnknown_080B5F80
_0804CCA0:
	ldr r0, [r5]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _0804CCC2
	mov r0, #1
	eor r2, r2, r0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, _0804CCCC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CCD0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
_0804CCC2:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804CCCC:
	.4byte 0x03000386
_0804CCD0:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804CAF8

	THUMB_FUNC_START sub_0804CCD4
sub_0804CCD4: @ 0x0804CCD4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CD14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CD0C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CD10  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #255
	strb r0, [r1]
	mov r0, #1
	neg r0, r0
	strb r0, [r4, #11]
	str r0, [r4, #76]
	b _0804CE12
_0804CD0C:
	.4byte 0x03000386
_0804CD10:
	.4byte gUnknown_080B5F80
_0804CD14:
	ldr r0, _0804CD44  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804CD2A
	ldr r0, _0804CD48  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804CD54
_0804CD2A:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CD4C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CD50  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	b _0804CE12
	.byte 0x00
	.byte 0x00
_0804CD44:
	.4byte gUnknown_03001A1C
_0804CD48:
	.4byte gUnknown_03000387
_0804CD4C:
	.4byte 0x03000386
_0804CD50:
	.4byte gUnknown_080B5F80
_0804CD54:
	add r0, r4, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CE12
	add r0, r4, #0
	bl sub_0804F8A8
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CD8C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CD84  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CD88  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804CE12
_0804CD84:
	.4byte 0x03000386
_0804CD88:
	.4byte gUnknown_080B5F80
_0804CD8C:
	ldr r0, _0804CDAC  @ =0x03001A50
	ldrb r0, [r0]
	cmp r0, #4
	beq _0804CDB8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CDB0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CDB4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #50
	bl sub_0804A644
	b _0804CE12
_0804CDAC:
	.4byte 0x03001A50
_0804CDB0:
	.4byte 0x03000386
_0804CDB4:
	.4byte gUnknown_080B5F80
_0804CDB8:
	add r0, r4, #0
	bl sub_0804C5FC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CE12
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CDF0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CDE8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CDEC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804CE12
_0804CDE8:
	.4byte 0x03000386
_0804CDEC:
	.4byte gUnknown_080B5F80
_0804CDF0:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	ble _0804CE12
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CE1C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CE20  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_0804CE12:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804CE1C:
	.4byte 0x03000386
_0804CE20:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804CCD4

	THUMB_FUNC_START sub_0804CE24
sub_0804CE24: @ 0x0804CE24
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CE64
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CE5C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CE60  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	add r1, r4, #0
	add r1, r1, #67
	mov r0, #255
	strb r0, [r1]
	mov r0, #1
	neg r0, r0
	strb r0, [r4, #11]
	str r0, [r4, #76]
	b _0804CFBE
_0804CE5C:
	.4byte 0x03000386
_0804CE60:
	.4byte gUnknown_080B5F80
_0804CE64:
	add r0, r4, #0
	bl sub_0804C5FC
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804CE72
	b _0804CFBE
_0804CE72:
	ldr r0, _0804CEA4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804CE8A
	ldr r0, _0804CEA8  @ =gUnknown_03000387
	ldrb r1, [r0]
	add r2, r0, #0
	cmp r1, #3
	bne _0804CEB4
_0804CE8A:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804CEAC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CEB0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	b _0804CFBE
	.byte 0x00
	.byte 0x00
_0804CEA4:
	.4byte gUnknown_03001A1C
_0804CEA8:
	.4byte gUnknown_03000387
_0804CEAC:
	.4byte 0x03000386
_0804CEB0:
	.4byte gUnknown_080B5F80
_0804CEB4:
	ldr r1, [r4, #32]
	ldr r0, [r4, #40]
	cmp r1, r0
	bne _0804CEE8
	ldr r1, [r4, #36]
	ldr r0, [r4, #44]
	cmp r1, r0
	bne _0804CEE8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0804CEE0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CEE4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
	b _0804CFBE
_0804CEE0:
	.4byte 0x03000386
_0804CEE4:
	.4byte gUnknown_080B5F80
_0804CEE8:
	ldrb r0, [r2]
	cmp r0, #1
	bne _0804CEFA
	add r0, r4, #0
	bl sub_0804EC54
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804CFBE
_0804CEFA:
	ldr r0, _0804CF2C  @ =gUnknown_03000368
	ldr r5, [r0]
	ldr r3, [r4, #32]
	sub r2, r5, r3
	add r6, r2, #0
	cmp r2, #0
	bge _0804CF0A
	sub r6, r3, r5
_0804CF0A:
	ldr r0, [r0, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	mov r0, #240
	lsl r0, r0, #6
	cmp r6, r0
	ble _0804CF50
	cmp r2, #0
	ble _0804CF38
	ldr r0, _0804CF30  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CF34  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	b _0804CF9A
	.byte 0x00
	.byte 0x00
_0804CF2C:
	.4byte gUnknown_03000368
_0804CF30:
	.4byte 0x03000386
_0804CF34:
	.4byte gUnknown_080B5F80
_0804CF38:
	ldr r0, _0804CF48  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CF4C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	b _0804CF74
	.byte 0x00
	.byte 0x00
_0804CF48:
	.4byte 0x03000386
_0804CF4C:
	.4byte gUnknown_080B5F80
_0804CF50:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804CF84
	ldr r0, [r4, #16]
	cmp r3, r0
	bge _0804CFBE
	cmp r5, r3
	bgt _0804CF8E
	ldr r0, _0804CF7C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CF80  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
_0804CF74:
	mov r2, #0
	bl sub_0804A644
	b _0804CFBE
_0804CF7C:
	.4byte 0x03000386
_0804CF80:
	.4byte gUnknown_080B5F80
_0804CF84:
	ldr r0, [r4, #16]
	cmp r0, r3
	bge _0804CFBE
	cmp r5, r3
	ble _0804CFAC
_0804CF8E:
	ldr r0, _0804CFA4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CFA8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
_0804CF9A:
	mov r2, #1
	bl sub_0804A644
	b _0804CFBE
	.byte 0x00
	.byte 0x00
_0804CFA4:
	.4byte 0x03000386
_0804CFA8:
	.4byte gUnknown_080B5F80
_0804CFAC:
	ldr r0, _0804CFC8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804CFCC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	mov r2, #0
	bl sub_0804A644
_0804CFBE:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804CFC8:
	.4byte 0x03000386
_0804CFCC:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804CE24

	THUMB_FUNC_START sub_0804CFD0
sub_0804CFD0: @ 0x0804CFD0
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r5, r0, #4
	add r0, r4, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	beq _0804CFEE
	b _0804D240
_0804CFEE:
	add r6, r4, #0
	add r6, r6, #53
	ldrb r0, [r6]
	cmp r0, #0
	beq _0804D0A4
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r7, [r6]
	ldr r0, [r4, #92]
	ldr r1, _0804D034  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _0804D038  @ =gUnknown_03000368
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _0804D03C  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _0804D044
	ldr r0, _0804D040  @ =0x000007FF
	cmp r2, r0
	bgt _0804D050
	b _0804D074
	.byte 0x00
	.byte 0x00
_0804D034:
	.4byte 0xFFFFFF00
_0804D038:
	.4byte gUnknown_03000368
_0804D03C:
	.4byte 0xFFFFF800
_0804D040:
	.4byte 0x000007FF
_0804D044:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0804D068  @ =0x000007FF
	cmp r0, r1
	ble _0804D074
_0804D050:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D06C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D070  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _0804D08A
_0804D068:
	.4byte 0x000007FF
_0804D06C:
	.4byte 0x03000386
_0804D070:
	.4byte gUnknown_080B5F80
_0804D074:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D09C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D0A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_0804D08A:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0804D240
	.byte 0x00
	.byte 0x00
_0804D09C:
	.4byte 0x03000386
_0804D0A0:
	.4byte gUnknown_080B5F80
_0804D0A4:
	mov r2, #4
	add r0, r5, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0804D16C
	ldr r0, [r4, #92]
	ldr r1, _0804D0D8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #22
	bne _0804D0E4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D0DC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D0E0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804D240
	.byte 0x00
	.byte 0x00
_0804D0D8:
	.4byte 0xFFFFFF00
_0804D0DC:
	.4byte 0x03000386
_0804D0E0:
	.4byte gUnknown_080B5F80
_0804D0E4:
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _0804D124
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D118  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D11C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #45
	bl sub_0804A644
	ldr r2, _0804D120  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0800A258
	b _0804D240
	.byte 0x00
	.byte 0x00
_0804D118:
	.4byte 0x03000386
_0804D11C:
	.4byte gUnknown_080B5F80
_0804D120:
	.4byte gUnknown_03001A1C
_0804D124:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _0804D14C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D144  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D148  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #43
	bl sub_0804A644
	b _0804D240
_0804D144:
	.4byte 0x03000386
_0804D148:
	.4byte gUnknown_080B5F80
_0804D14C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D164  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D168  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #22
	bl sub_0804A644
	b _0804D240
_0804D164:
	.4byte 0x03000386
_0804D168:
	.4byte gUnknown_080B5F80
_0804D16C:
	mov r0, #2
	and r0, r0, r5
	cmp r0, #0
	beq _0804D19C
	ldr r0, [r4, #92]
	ldr r1, _0804D190  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, _0804D194  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D198  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #23
	mov r2, #1
	bl sub_0804A644
	b _0804D240
_0804D190:
	.4byte 0xFFFFFF00
_0804D194:
	.4byte 0x03000386
_0804D198:
	.4byte gUnknown_080B5F80
_0804D19C:
	mov r0, #8
	and r5, r5, r0
	cmp r5, #0
	beq _0804D1CC
	ldr r0, [r4, #92]
	ldr r1, _0804D1C0  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, _0804D1C4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D1C8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #23
	mov r2, #0
	bl sub_0804A644
	b _0804D240
_0804D1C0:
	.4byte 0xFFFFFF00
_0804D1C4:
	.4byte 0x03000386
_0804D1C8:
	.4byte gUnknown_080B5F80
_0804D1CC:
	ldr r1, [r4, #92]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0804D214
	ldr r0, _0804D208  @ =0xFFFFFF00
	and r1, r1, r0
	str r1, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #7
	beq _0804D1EE
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #20
	beq _0804D1EE
	cmp r0, #21
	bne _0804D240
_0804D1EE:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D20C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D210  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #24
	bl sub_0804A644
	b _0804D240
	.byte 0x00
	.byte 0x00
_0804D208:
	.4byte 0xFFFFFF00
_0804D20C:
	.4byte 0x03000386
_0804D210:
	.4byte gUnknown_080B5F80
_0804D214:
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0804D240
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #22
	bne _0804D240
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D248  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D24C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804D240:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_0804D248:
	.4byte 0x03000386
_0804D24C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804CFD0

	THUMB_FUNC_START sub_0804D250
sub_0804D250: @ 0x0804D250
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r1, r0, #4
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804D314
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r4, #92]
	ldr r1, _0804D2A4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _0804D2A8  @ =gUnknown_03000368
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _0804D2AC  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _0804D2B4
	ldr r0, _0804D2B0  @ =0x000007FF
	cmp r2, r0
	bgt _0804D2C0
	b _0804D2E4
_0804D2A4:
	.4byte 0xFFFFFF00
_0804D2A8:
	.4byte gUnknown_03000368
_0804D2AC:
	.4byte 0xFFFFF800
_0804D2B0:
	.4byte 0x000007FF
_0804D2B4:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0804D2D8  @ =0x000007FF
	cmp r0, r1
	ble _0804D2E4
_0804D2C0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D2DC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D2E0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _0804D2FA
_0804D2D8:
	.4byte 0x000007FF
_0804D2DC:
	.4byte 0x03000386
_0804D2E0:
	.4byte gUnknown_080B5F80
_0804D2E4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D30C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D310  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_0804D2FA:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0804D3A2
	.byte 0x00
	.byte 0x00
_0804D30C:
	.4byte 0x03000386
_0804D310:
	.4byte gUnknown_080B5F80
_0804D314:
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _0804D3A2
	ldr r0, _0804D354  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _0804D364
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D358  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D35C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #45
	bl sub_0804A644
	ldr r2, _0804D360  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0800A258
	b _0804D3A2
_0804D354:
	.4byte 0xFFFFFF00
_0804D358:
	.4byte 0x03000386
_0804D35C:
	.4byte gUnknown_080B5F80
_0804D360:
	.4byte gUnknown_03001A1C
_0804D364:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _0804D38C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D384  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D388  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #43
	bl sub_0804A644
	b _0804D3A2
_0804D384:
	.4byte 0x03000386
_0804D388:
	.4byte gUnknown_080B5F80
_0804D38C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D3AC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D3B0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #42
	bl sub_0804A644
_0804D3A2:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804D3AC:
	.4byte 0x03000386
_0804D3B0:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804D250

	THUMB_FUNC_START sub_0804D3B4
sub_0804D3B4: @ 0x0804D3B4
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	bne _0804D4AC
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804D47C
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r6, [r5]
	ldr r0, [r4, #92]
	ldr r1, _0804D40C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _0804D410  @ =gUnknown_03000368
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _0804D414  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _0804D41C
	ldr r0, _0804D418  @ =0x000007FF
	cmp r2, r0
	bgt _0804D428
	b _0804D44C
	.byte 0x00
	.byte 0x00
_0804D40C:
	.4byte 0xFFFFFF00
_0804D410:
	.4byte gUnknown_03000368
_0804D414:
	.4byte 0xFFFFF800
_0804D418:
	.4byte 0x000007FF
_0804D41C:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0804D440  @ =0x000007FF
	cmp r0, r1
	ble _0804D44C
_0804D428:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D444  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D448  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _0804D462
_0804D440:
	.4byte 0x000007FF
_0804D444:
	.4byte 0x03000386
_0804D448:
	.4byte gUnknown_080B5F80
_0804D44C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D474  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D478  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_0804D462:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0804D4AC
	.byte 0x00
	.byte 0x00
_0804D474:
	.4byte 0x03000386
_0804D478:
	.4byte gUnknown_080B5F80
_0804D47C:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804D4AC
	ldr r0, _0804D4B4  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D4B8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D4BC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #29
	bl sub_0804A644
_0804D4AC:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
_0804D4B4:
	.4byte 0xFFFFFF00
_0804D4B8:
	.4byte 0x03000386
_0804D4BC:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804D3B4

	THUMB_FUNC_START sub_0804D4C0
sub_0804D4C0: @ 0x0804D4C0
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _0804D4D4
	b _0804D62A
_0804D4D4:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0804D590
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	cmp r0, #0
	beq _0804D590
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r6, [r5]
	ldr r0, [r4, #92]
	ldr r1, _0804D520  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _0804D524  @ =gUnknown_03000368
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _0804D528  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _0804D530
	ldr r0, _0804D52C  @ =0x000007FF
	cmp r2, r0
	bgt _0804D53C
	b _0804D560
_0804D520:
	.4byte 0xFFFFFF00
_0804D524:
	.4byte gUnknown_03000368
_0804D528:
	.4byte 0xFFFFF800
_0804D52C:
	.4byte 0x000007FF
_0804D530:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0804D554  @ =0x000007FF
	cmp r0, r1
	ble _0804D560
_0804D53C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D558  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D55C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _0804D576
_0804D554:
	.4byte 0x000007FF
_0804D558:
	.4byte 0x03000386
_0804D55C:
	.4byte gUnknown_080B5F80
_0804D560:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D588  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D58C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_0804D576:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0804D62A
	.byte 0x00
	.byte 0x00
_0804D588:
	.4byte 0x03000386
_0804D58C:
	.4byte gUnknown_080B5F80
_0804D590:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804D62A
	ldr r0, _0804D5DC  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _0804D5EC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D5E0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D5E4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #45
	bl sub_0804A644
	ldr r2, _0804D5E8  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0800A258
	b _0804D62A
_0804D5DC:
	.4byte 0xFFFFFF00
_0804D5E0:
	.4byte 0x03000386
_0804D5E4:
	.4byte gUnknown_080B5F80
_0804D5E8:
	.4byte gUnknown_03001A1C
_0804D5EC:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _0804D614
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D60C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D610  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #43
	bl sub_0804A644
	b _0804D62A
_0804D60C:
	.4byte 0x03000386
_0804D610:
	.4byte gUnknown_080B5F80
_0804D614:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D634  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D638  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #42
	bl sub_0804A644
_0804D62A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804D634:
	.4byte 0x03000386
_0804D638:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804D4C0

	THUMB_FUNC_START sub_0804D63C
sub_0804D63C: @ 0x0804D63C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804D702
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804D67C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D674  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D678  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804D702
_0804D674:
	.4byte 0x03000386
_0804D678:
	.4byte gUnknown_080B5F80
_0804D67C:
	mov r1, #0
	ldr r0, _0804D6CC  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r1, r0
	bge _0804D6EC
	mov r2, #10
	ldrsb r2, [r4, r2]
	mov r8, r2
	ldr r5, _0804D6D0  @ =0x00001FFF
	add r6, r0, #0
	ldr r7, _0804D6D4  @ =gUnknown_03001BB0
	mov r12, r7
_0804D694:
	lsl r0, r1, #16
	asr r1, r0, #16
	add r3, r0, #0
	cmp r1, r8
	beq _0804D6DE
	lsl r0, r1, #2
	add r0, r0, r12
	ldr r1, [r0]
	ldrh r2, [r1, #4]
	mov r7, #4
	ldrsh r0, [r1, r7]
	cmp r0, #26
	beq _0804D702
	add r0, r2, #0
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0804D6DE
	ldr r2, [r1, #36]
	ldr r0, [r4, #36]
	sub r1, r2, r0
	cmp r1, #0
	blt _0804D6D8
	cmp r1, r5
	ble _0804D702
	b _0804D6DE
	.byte 0x00
	.byte 0x00
_0804D6CC:
	.4byte gUnknown_03001BC8
_0804D6D0:
	.4byte 0x00001FFF
_0804D6D4:
	.4byte gUnknown_03001BB0
_0804D6D8:
	sub r0, r0, r2
	cmp r0, r5
	ble _0804D702
_0804D6DE:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r3, r1
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, r6
	blt _0804D694
_0804D6EC:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D710  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D714  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #26
	bl sub_0804A644
_0804D702:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804D710:
	.4byte 0x03000386
_0804D714:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804D63C

	THUMB_FUNC_START sub_0804D718
sub_0804D718: @ 0x0804D718
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r2, r5
	bgt _0804D72A
	b _0804D81C
_0804D72A:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #225
	ble _0804D81C
	ldr r0, _0804D778  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #150
	bne _0804D81C
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r3, r1, r0
	ldr r0, _0804D77C  @ =gUnknown_03000368
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r0, [r4, #92]
	ldr r1, _0804D780  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	str r5, [r4, #76]
	cmp r3, r2
	ble _0804D7C8
	sub r1, r3, r2
	cmp r1, #0
	blt _0804D788
	ldr r0, _0804D784  @ =0x000007FF
	cmp r1, r0
	bgt _0804D790
	b _0804D7AC
	.byte 0x00
	.byte 0x00
_0804D778:
	.4byte gUnknown_03001940
_0804D77C:
	.4byte gUnknown_03000368
_0804D780:
	.4byte 0xFFFFFF00
_0804D784:
	.4byte 0x000007FF
_0804D788:
	sub r1, r2, r3
	ldr r0, _0804D7A0  @ =0x000007FF
	cmp r1, r0
	ble _0804D7AC
_0804D790:
	ldr r0, _0804D7A4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D7A8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #32
	b _0804D7B8
	.byte 0x00
	.byte 0x00
_0804D7A0:
	.4byte 0x000007FF
_0804D7A4:
	.4byte 0x03000386
_0804D7A8:
	.4byte gUnknown_080B5F80
_0804D7AC:
	ldr r0, _0804D7C0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D7C4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #33
_0804D7B8:
	mov r2, #0
	bl sub_0804A644
	b _0804D84C
_0804D7C0:
	.4byte 0x03000386
_0804D7C4:
	.4byte gUnknown_080B5F80
_0804D7C8:
	sub r1, r3, r2
	cmp r1, #0
	blt _0804D7DC
	ldr r0, _0804D7D8  @ =0x000007FF
	cmp r1, r0
	bgt _0804D7E4
	b _0804D800
	.byte 0x00
	.byte 0x00
_0804D7D8:
	.4byte 0x000007FF
_0804D7DC:
	sub r1, r2, r3
	ldr r0, _0804D7F4  @ =0x000007FF
	cmp r1, r0
	ble _0804D800
_0804D7E4:
	ldr r0, _0804D7F8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D7FC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #32
	b _0804D80C
	.byte 0x00
	.byte 0x00
_0804D7F4:
	.4byte 0x000007FF
_0804D7F8:
	.4byte 0x03000386
_0804D7FC:
	.4byte gUnknown_080B5F80
_0804D800:
	ldr r0, _0804D814  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D818  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #33
_0804D80C:
	mov r2, #1
	bl sub_0804A644
	b _0804D84C
_0804D814:
	.4byte 0x03000386
_0804D818:
	.4byte gUnknown_080B5F80
_0804D81C:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804D84C
	ldr r0, _0804D854  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D858  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D85C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #34
	bl sub_0804A644
_0804D84C:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0804D854:
	.4byte 0xFFFFFF00
_0804D858:
	.4byte 0x03000386
_0804D85C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804D718

	THUMB_FUNC_START sub_0804D860
sub_0804D860: @ 0x0804D860
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0804D870
	b _0804D970
_0804D870:
	ldr r2, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r2, r5
	bgt _0804D87C
	b _0804D99C
_0804D87C:
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #0
	bne _0804D888
	b _0804D99C
_0804D888:
	ldr r0, _0804D8CC  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #150
	beq _0804D89A
	b _0804D99C
_0804D89A:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r2, r1, r0
	ldr r0, _0804D8D0  @ =gUnknown_03000368
	ldr r0, [r0]
	mov r6, #128
	lsl r6, r6, #4
	add r1, r0, r6
	ldr r0, _0804D8D4  @ =0xFFFFFF00
	and r3, r3, r0
	str r3, [r4, #92]
	str r5, [r4, #76]
	cmp r2, r1
	ble _0804D91C
	sub r3, r2, r1
	cmp r3, #0
	blt _0804D8DC
	ldr r0, _0804D8D8  @ =0x000007FF
	cmp r3, r0
	bgt _0804D8E4
	b _0804D900
_0804D8CC:
	.4byte gUnknown_03001940
_0804D8D0:
	.4byte gUnknown_03000368
_0804D8D4:
	.4byte 0xFFFFFF00
_0804D8D8:
	.4byte 0x000007FF
_0804D8DC:
	sub r1, r1, r2
	ldr r0, _0804D8F4  @ =0x000007FF
	cmp r1, r0
	ble _0804D900
_0804D8E4:
	ldr r0, _0804D8F8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D8FC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #32
	b _0804D90C
	.byte 0x00
	.byte 0x00
_0804D8F4:
	.4byte 0x000007FF
_0804D8F8:
	.4byte 0x03000386
_0804D8FC:
	.4byte gUnknown_080B5F80
_0804D900:
	ldr r0, _0804D914  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D918  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #33
_0804D90C:
	mov r2, #0
	bl sub_0804A644
	b _0804D99C
_0804D914:
	.4byte 0x03000386
_0804D918:
	.4byte gUnknown_080B5F80
_0804D91C:
	sub r3, r2, r1
	cmp r3, #0
	blt _0804D930
	ldr r0, _0804D92C  @ =0x000007FF
	cmp r3, r0
	bgt _0804D938
	b _0804D954
	.byte 0x00
	.byte 0x00
_0804D92C:
	.4byte 0x000007FF
_0804D930:
	sub r1, r1, r2
	ldr r0, _0804D948  @ =0x000007FF
	cmp r1, r0
	ble _0804D954
_0804D938:
	ldr r0, _0804D94C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D950  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #32
	b _0804D960
	.byte 0x00
	.byte 0x00
_0804D948:
	.4byte 0x000007FF
_0804D94C:
	.4byte 0x03000386
_0804D950:
	.4byte gUnknown_080B5F80
_0804D954:
	ldr r0, _0804D968  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D96C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #33
_0804D960:
	mov r2, #1
	bl sub_0804A644
	b _0804D99C
_0804D968:
	.4byte 0x03000386
_0804D96C:
	.4byte gUnknown_080B5F80
_0804D970:
	ldr r3, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r3, r5
	ble _0804D99C
	ldr r2, [r4, #92]
	mov r0, #15
	and r0, r0, r2
	cmp r0, #0
	beq _0804D99C
	ldr r0, _0804D9E8  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r3, r0
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #150
	bne _0804D99C
	ldr r0, _0804D9EC  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	str r5, [r4, #76]
_0804D99C:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804DA3A
	ldr r0, _0804D9EC  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _0804D9FC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804D9F0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804D9F4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #45
	bl sub_0804A644
	ldr r2, _0804D9F8  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0800A258
	b _0804DA3A
_0804D9E8:
	.4byte gUnknown_03001940
_0804D9EC:
	.4byte 0xFFFFFF00
_0804D9F0:
	.4byte 0x03000386
_0804D9F4:
	.4byte gUnknown_080B5F80
_0804D9F8:
	.4byte gUnknown_03001A1C
_0804D9FC:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _0804DA24
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DA1C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DA20  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #43
	bl sub_0804A644
	b _0804DA3A
_0804DA1C:
	.4byte 0x03000386
_0804DA20:
	.4byte gUnknown_080B5F80
_0804DA24:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DA44  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DA48  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #42
	bl sub_0804A644
_0804DA3A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804DA44:
	.4byte 0x03000386
_0804DA48:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804D860

	THUMB_FUNC_START sub_0804DA4C
sub_0804DA4C: @ 0x0804DA4C
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804DAF8
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804DA88
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DA80  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DA84  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804DAF8
_0804DA80:
	.4byte 0x03000386
_0804DA84:
	.4byte gUnknown_080B5F80
_0804DA88:
	mov r3, #0
	ldr r0, _0804DAC8  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r3, r0
	bge _0804DAE2
	ldr r6, _0804DACC  @ =0x00001FFF
	mov r12, r0
	ldr r5, _0804DAD0  @ =gUnknown_03001BB0
_0804DA98:
	mov r0, #10
	ldrsb r0, [r4, r0]
	cmp r3, r0
	beq _0804DADA
	ldr r1, [r5]
	ldrh r2, [r1, #4]
	mov r7, #4
	ldrsh r0, [r1, r7]
	cmp r0, #26
	beq _0804DAF8
	add r0, r2, #0
	sub r0, r0, #27
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _0804DADA
	ldr r2, [r1, #36]
	ldr r0, [r4, #36]
	sub r1, r2, r0
	cmp r1, #0
	blt _0804DAD4
	cmp r1, r6
	ble _0804DAF8
	b _0804DADA
_0804DAC8:
	.4byte gUnknown_03001BC8
_0804DACC:
	.4byte 0x00001FFF
_0804DAD0:
	.4byte gUnknown_03001BB0
_0804DAD4:
	sub r0, r0, r2
	cmp r0, r6
	ble _0804DAF8
_0804DADA:
	add r5, r5, #4
	add r3, r3, #1
	cmp r3, r12
	blt _0804DA98
_0804DAE2:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DB00  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DB04  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_0804DAF8:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_0804DB00:
	.4byte 0x03000386
_0804DB04:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804DA4C

	THUMB_FUNC_START sub_0804DB08
sub_0804DB08: @ 0x0804DB08
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804DB38
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DB30  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DB34  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804DC30
_0804DB30:
	.4byte 0x03000386
_0804DB34:
	.4byte gUnknown_080B5F80
_0804DB38:
	ldr r1, _0804DB54  @ =gUnknown_03001BA4
	ldr r0, _0804DB58  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r3, r0, #8
	ldr r0, [r1]
	sub r2, r0, r3
	add r5, r1, #0
	cmp r2, #0
	blt _0804DB5C
	cmp r2, #40
	bgt _0804DBB4
	b _0804DB62
	.byte 0x00
	.byte 0x00
_0804DB54:
	.4byte gUnknown_03001BA4
_0804DB58:
	.4byte gUnknown_030019AC
_0804DB5C:
	sub r0, r3, r0
	cmp r0, #40
	bgt _0804DBB4
_0804DB62:
	ldr r0, [r4, #32]
	asr r0, r0, #8
	ldr r1, [r5]
	sub r0, r0, r1
	sub r0, r0, #8
	cmp r0, #0
	ble _0804DB7A
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0804DBAC
	b _0804DB82
_0804DB7A:
	mov r1, #48
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0804DBAC
_0804DB82:
	add r1, r4, #0
	add r1, r1, #64
	ldrb r0, [r1]
	mov r3, #1
	eor r0, r0, r3
	strb r0, [r1]
	mov r0, #127
	add r0, r0, r4
	mov r12, r0
	ldrb r2, [r0]
	lsl r1, r2, #27
	lsr r1, r1, #31
	mov r0, #1
	eor r1, r1, r0
	and r1, r1, r3
	lsl r1, r1, #4
	sub r0, r0, #18
	and r0, r0, r2
	orr r0, r0, r1
	mov r1, r12
	strb r0, [r1]
_0804DBAC:
	ldr r0, _0804DBCC  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804DBD8
_0804DBB4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DBD0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DBD4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804DC30
_0804DBCC:
	.4byte gUnknown_03000387
_0804DBD0:
	.4byte 0x03000386
_0804DBD4:
	.4byte gUnknown_080B5F80
_0804DBD8:
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0804DBF0  @ =gUnknown_03001B88
	ldr r1, [r1]
	sub r1, r0, r1
	add r0, r1, #0
	sub r0, r0, #16
	cmp r0, #0
	blt _0804DBF4
	cmp r0, #1
	ble _0804DBFC
	b _0804DC30
_0804DBF0:
	.4byte gUnknown_03001B88
_0804DBF4:
	mov r0, #16
	sub r0, r0, r1
	cmp r0, #1
	bgt _0804DC30
_0804DBFC:
	ldr r0, [r4, #32]
	asr r0, r0, #8
	ldr r1, [r5]
	sub r1, r0, r1
	add r0, r1, #0
	sub r0, r0, #8
	cmp r0, #0
	blt _0804DC12
	cmp r0, #4
	ble _0804DC1A
	b _0804DC30
_0804DC12:
	mov r0, #8
	sub r0, r0, r1
	cmp r0, #4
	bgt _0804DC30
_0804DC1A:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DC38  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DC3C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #38
	bl sub_0804A644
_0804DC30:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0804DC38:
	.4byte 0x03000386
_0804DC3C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804DB08

	THUMB_FUNC_START sub_0804DC40
sub_0804DC40: @ 0x0804DC40
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804DC70
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DC68  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DC6C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804DD72
_0804DC68:
	.4byte 0x03000386
_0804DC6C:
	.4byte gUnknown_080B5F80
_0804DC70:
	ldr r1, _0804DC8C  @ =gUnknown_03001BA4
	ldr r0, _0804DC90  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r3, r0, #8
	ldr r0, [r1]
	sub r2, r0, r3
	add r5, r1, #0
	cmp r2, #0
	blt _0804DC94
	cmp r2, #40
	bgt _0804DCA2
	b _0804DC9A
	.byte 0x00
	.byte 0x00
_0804DC8C:
	.4byte gUnknown_03001BA4
_0804DC90:
	.4byte gUnknown_030019AC
_0804DC94:
	sub r0, r3, r0
	cmp r0, #40
	bgt _0804DCA2
_0804DC9A:
	ldr r0, _0804DCBC  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804DCC8
_0804DCA2:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DCC0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DCC4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804DD72
	.byte 0x00
	.byte 0x00
_0804DCBC:
	.4byte gUnknown_03000387
_0804DCC0:
	.4byte 0x03000386
_0804DCC4:
	.4byte gUnknown_080B5F80
_0804DCC8:
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0804DCE0  @ =gUnknown_03001B88
	ldr r1, [r1]
	sub r1, r0, r1
	add r0, r1, #0
	sub r0, r0, #16
	cmp r0, #0
	blt _0804DCE4
	cmp r0, #1
	ble _0804DCEC
	b _0804DD72
_0804DCE0:
	.4byte gUnknown_03001B88
_0804DCE4:
	mov r0, #16
	sub r0, r0, r1
	cmp r0, #1
	bgt _0804DD72
_0804DCEC:
	ldr r0, [r4, #32]
	asr r0, r0, #8
	ldr r1, [r5]
	sub r1, r0, r1
	add r0, r1, #0
	sub r0, r0, #8
	cmp r0, #0
	blt _0804DD02
	cmp r0, #4
	ble _0804DD0A
	b _0804DD72
_0804DD02:
	mov r0, #8
	sub r0, r0, r1
	cmp r0, #4
	bgt _0804DD72
_0804DD0A:
	mov r1, #0
	ldr r0, _0804DD7C  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r1, r0
	bge _0804DD4E
	mov r5, #10
	ldrsb r5, [r4, r5]
	add r3, r0, #0
	ldr r6, _0804DD80  @ =gUnknown_03001BB0
_0804DD1C:
	lsl r0, r1, #16
	asr r1, r0, #16
	add r2, r0, #0
	cmp r1, r5
	beq _0804DD40
	lsl r0, r1, #2
	add r0, r0, r6
	ldr r1, [r0]
	mov r7, #4
	ldrsh r0, [r1, r7]
	cmp r0, #39
	bne _0804DD40
	add r0, r1, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #19
	ble _0804DD72
_0804DD40:
	mov r7, #128
	lsl r7, r7, #9
	add r0, r2, r7
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	blt _0804DD1C
_0804DD4E:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DD84  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DD88  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #39
	bl sub_0804A644
_0804DD72:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804DD7C:
	.4byte gUnknown_03001BC8
_0804DD80:
	.4byte gUnknown_03001BB0
_0804DD84:
	.4byte 0x03000386
_0804DD88:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804DC40

	THUMB_FUNC_START sub_0804DD8C
sub_0804DD8C: @ 0x0804DD8C
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, [r4, #32]
	asr r0, r0, #8
	ldr r1, _0804DDB8  @ =gUnknown_03001BA4
	ldr r1, [r1]
	sub r0, r0, r1
	sub r0, r0, #16
	cmp r0, #0
	bge _0804DDBC
	add r2, r4, #0
	add r2, r2, #64
	mov r0, #0
	strb r0, [r2]
	add r3, r4, #0
	add r3, r3, #127
	ldrb r1, [r3]
	sub r0, r0, #17
	and r0, r0, r1
	b _0804DDCE
	.byte 0x00
	.byte 0x00
_0804DDB8:
	.4byte gUnknown_03001BA4
_0804DDBC:
	add r2, r4, #0
	add r2, r2, #64
	mov r0, #1
	strb r0, [r2]
	add r3, r4, #0
	add r3, r3, #127
	ldrb r0, [r3]
	mov r1, #16
	orr r0, r0, r1
_0804DDCE:
	strb r0, [r3]
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0804DE46
	ldr r0, _0804DDF8  @ =gUnknown_03000387
	ldrb r5, [r0]
	cmp r5, #1
	beq _0804DE04
	ldrb r0, [r2]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _0804DDFC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DE00  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #11
	bl sub_0804A644
	b _0804DE46
_0804DDF8:
	.4byte gUnknown_03000387
_0804DDFC:
	.4byte 0x03000386
_0804DE00:
	.4byte gUnknown_080B5F80
_0804DE04:
	ldr r1, [r4, #80]
	ldr r0, _0804DE50  @ =0xFFFFF484
	cmp r1, r0
	ble _0804DE46
	ldrb r2, [r2]
	ldr r0, _0804DE54  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DE58  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #40
	bl sub_0804A644
	ldr r0, [r4, #36]
	mov r1, #160
	lsl r1, r1, #4
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r1, _0804DE5C  @ =gUnknown_03001BA0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0804DE60  @ =0x03000390
	ldr r0, _0804DE64  @ =gUnknown_03001B88
	ldr r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #8
	str r0, [r1]
	ldr r1, _0804DE68  @ =gUnknown_0300038C
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0804DE6C  @ =gUnknown_0300038B
	strb r5, [r0]
_0804DE46:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804DE50:
	.4byte 0xFFFFF484
_0804DE54:
	.4byte 0x03000386
_0804DE58:
	.4byte gUnknown_080B5F80
_0804DE5C:
	.4byte gUnknown_03001BA0
_0804DE60:
	.4byte 0x03000390
_0804DE64:
	.4byte gUnknown_03001B88
_0804DE68:
	.4byte gUnknown_0300038C
_0804DE6C:
	.4byte gUnknown_0300038B
	THUMB_FUNC_END sub_0804DD8C

	THUMB_FUNC_START sub_0804DE70
sub_0804DE70: @ 0x0804DE70
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0804DEA8  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804DE8C
	ldr r0, _0804DEAC  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #3
	bne _0804DEB8
_0804DE8C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804DEB0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DEB4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	bl sub_0804A644
	mov r0, #1
	b _0804E00E
	.byte 0x00
	.byte 0x00
_0804DEA8:
	.4byte gUnknown_03001A1C
_0804DEAC:
	.4byte gUnknown_03000387
_0804DEB0:
	.4byte 0x03000386
_0804DEB4:
	.4byte gUnknown_080B5F80
_0804DEB8:
	ldr r0, _0804DED4  @ =gUnknown_03000378
	mov r1, #0
	ldrsh r0, [r0, r1]
	mov r5, #1
	neg r5, r5
	cmp r0, r5
	ble _0804DEDC
	ldr r0, [r4, #92]
	ldr r1, _0804DED8  @ =0xFFFFFF00
_0804DECA:
	and r0, r0, r1
	str r0, [r4, #92]
	str r5, [r4, #76]
	b _0804E00C
	.byte 0x00
	.byte 0x00
_0804DED4:
	.4byte gUnknown_03000378
_0804DED8:
	.4byte 0xFFFFFF00
_0804DEDC:
	add r0, r4, #0
	add r0, r0, #108
	bl sub_08031740
	cmp r0, #0
	beq _0804DEF8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0804DFAC
	b _0804DFC8
_0804DEF8:
	ldr r1, [r4, #76]
	cmp r1, #0
	bgt _0804DF00
	b _0804E00C
_0804DF00:
	ldr r2, _0804DF20  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	beq _0804DF24
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	b _0804DECA
	.byte 0x00
	.byte 0x00
_0804DF20:
	.4byte gUnknown_03001940
_0804DF24:
	ldrh r0, [r2]
	cmp r0, #101
	beq _0804DF2E
	cmp r0, #104
	bne _0804DF74
_0804DF2E:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804DF58
	ldr r0, _0804DF50  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DF54  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #49
	mov r2, #1
	bl sub_0804A644
	b _0804DFE4
_0804DF50:
	.4byte 0x03000386
_0804DF54:
	.4byte gUnknown_080B5F80
_0804DF58:
	ldr r0, _0804DF6C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DF70  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #49
	mov r2, #0
	bl sub_0804A644
	b _0804DFE4
_0804DF6C:
	.4byte 0x03000386
_0804DF70:
	.4byte gUnknown_080B5F80
_0804DF74:
	cmp r0, #150
	bne _0804DF80
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	b _0804DECA
_0804DF80:
	cmp r0, #185
	bne _0804DF8C
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	b _0804DECA
_0804DF8C:
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0804E00C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804DFC8
_0804DFAC:
	ldr r0, _0804DFC0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804DFC4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #48
	mov r2, #1
	bl sub_0804A644
	b _0804DFDA
_0804DFC0:
	.4byte 0x03000386
_0804DFC4:
	.4byte gUnknown_080B5F80
_0804DFC8:
	ldr r0, _0804DFFC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E000  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #48
	mov r2, #0
	bl sub_0804A644
_0804DFDA:
	ldr r0, [r4, #92]
	mov r1, #128
	lsl r1, r1, #13
	orr r0, r0, r1
	str r0, [r4, #92]
_0804DFE4:
	ldr r1, _0804E004  @ =gUnknown_03000378
	mov r0, #0
	strh r0, [r1]
	ldr r2, _0804E008  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #19
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	b _0804E00E
	.byte 0x00
	.byte 0x00
_0804DFFC:
	.4byte 0x03000386
_0804E000:
	.4byte gUnknown_080B5F80
_0804E004:
	.4byte gUnknown_03000378
_0804E008:
	.4byte gUnknown_03001A1C
_0804E00C:
	mov r0, #0
_0804E00E:
	add sp, sp, #4
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804DE70

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804E018
sub_0804E018: @ 0x0804E018
	push {r4,lr}
	sub sp, sp, #16
	add r4, r0, #0
	ldr r2, [r4, #100]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #32]
	add r0, r1, r0
	str r0, [sp]
	mov r3, #6
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #8]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	mov r0, #127
	and r1, r1, r0
	cmp r1, #0
	bne _0804E060
	mov r0, #1
	b _0804E08A
_0804E060:
	cmp r1, #1
	bne _0804E078
	ldr r0, _0804E074  @ =gUnknown_03000378
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0804E088
	strb r1, [r4, #15]
	mov r0, #1
	b _0804E08A
_0804E074:
	.4byte gUnknown_03000378
_0804E078:
	cmp r1, #12
	bne _0804E080
	mov r0, #192
	b _0804E086
_0804E080:
	cmp r1, #13
	bne _0804E088
	ldr r0, _0804E094  @ =0x0000FF40
_0804E086:
	strh r0, [r4, #54]
_0804E088:
	mov r0, #0
_0804E08A:
	add sp, sp, #16
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804E094:
	.4byte 0x0000FF40
	THUMB_FUNC_END sub_0804E018

	THUMB_FUNC_START sub_0804E098
sub_0804E098: @ 0x0804E098
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	add r7, r2, #0
	ldr r0, [r6, #32]
	sub r1, r1, r0
	cmp r1, #0
	bge _0804E10C
	mov r0, #10
	ldrsb r0, [r6, r0]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsl r3, r5, #16
	asr r1, r3, #16
	ldr r0, _0804E100  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r1, r0
	bge _0804E15E
	ldr r1, _0804E104  @ =gUnknown_03001BB0
	mov r8, r1
	mov r12, r0
_0804E0C6:
	asr r0, r3, #14
	add r0, r0, r8
	ldr r3, [r0]
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #40
	beq _0804E0EA
	ldr r4, [r3, #32]
	ldr r2, [r6, #32]
	cmp r4, r2
	bgt _0804E0EA
	ldr r1, [r6, #36]
	ldr r0, [r3, #36]
	cmp r1, r0
	bne _0804E0EA
	sub r0, r2, r4
	cmp r0, r7
	blt _0804E108
_0804E0EA:
	lsl r0, r5, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r5, r0, #16
	lsl r3, r5, #16
	asr r0, r3, #16
	cmp r0, r12
	blt _0804E0C6
	b _0804E15E
	.byte 0x00
	.byte 0x00
_0804E100:
	.4byte gUnknown_03001BC8
_0804E104:
	.4byte gUnknown_03001BB0
_0804E108:
	mov r0, #1
	b _0804E160
_0804E10C:
	ldr r0, _0804E16C  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	lsl r3, r5, #16
	asr r1, r3, #16
	mov r0, #10
	ldrsb r0, [r6, r0]
	add r0, r0, #1
	cmp r1, r0
	blt _0804E15E
	ldr r1, _0804E170  @ =gUnknown_03001BB0
	mov r8, r1
	mov r12, r0
_0804E12A:
	asr r0, r3, #14
	add r0, r0, r8
	ldr r3, [r0]
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #40
	beq _0804E14E
	ldr r4, [r3, #32]
	ldr r2, [r6, #32]
	cmp r4, r2
	blt _0804E14E
	ldr r1, [r6, #36]
	ldr r0, [r3, #36]
	cmp r1, r0
	bne _0804E14E
	sub r0, r4, r2
	cmp r0, r7
	blt _0804E108
_0804E14E:
	lsl r0, r5, #16
	ldr r1, _0804E174  @ =0xFFFF0000
	add r0, r0, r1
	lsr r5, r0, #16
	lsl r3, r5, #16
	asr r0, r3, #16
	cmp r0, r12
	bge _0804E12A
_0804E15E:
	mov r0, #0
_0804E160:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804E16C:
	.4byte gUnknown_03001BC8
_0804E170:
	.4byte gUnknown_03001BB0
_0804E174:
	.4byte 0xFFFF0000
	THUMB_FUNC_END sub_0804E098

	THUMB_FUNC_START sub_0804E178
sub_0804E178: @ 0x0804E178
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r12, r0
	add r7, r1, #0
	mov r2, #0
	ldr r1, _0804E1D8  @ =gUnknown_03001BC8
	ldrb r0, [r1]
	cmp r2, r0
	bge _0804E26A
	str r0, [sp]
_0804E194:
	ldr r1, _0804E1DC  @ =gUnknown_03001BB0
	lsl r2, r2, #16
	asr r0, r2, #14
	add r0, r0, r1
	ldr r3, [r0]
	mov r1, #4
	ldrsh r0, [r3, r1]
	mov r8, r2
	cmp r0, #40
	beq _0804E25A
	add r0, r3, #0
	add r0, r0, #61
	mov r1, r12
	add r1, r1, #61
	ldrb r2, [r0]
	add r6, r0, #0
	add r4, r1, #0
	ldrb r0, [r4]
	cmp r2, r0
	beq _0804E25A
	mov r0, r12
	ldr r1, [r0, #36]
	ldr r0, [r3, #36]
	cmp r1, r0
	bne _0804E25A
	mov r1, r12
	ldr r2, [r1, #32]
	ldr r0, [r3, #32]
	sub r1, r2, r0
	cmp r1, #0
	blt _0804E1E0
	cmp r1, r7
	blt _0804E1E6
	b _0804E25A
_0804E1D8:
	.4byte gUnknown_03001BC8
_0804E1DC:
	.4byte gUnknown_03001BB0
_0804E1E0:
	sub r0, r0, r2
	cmp r0, r7
	bge _0804E25A
_0804E1E6:
	mov r2, #0
	ldr r0, _0804E248  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r2, r0
	bcs _0804E212
	ldr r5, _0804E24C  @ =gUnknown_03001BB0
	ldrb r1, [r4]
	ldr r0, _0804E248  @ =gUnknown_03001BC8
	ldrb r3, [r0]
_0804E1F8:
	lsl r0, r2, #2
	add r0, r0, r5
	ldr r0, [r0]
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, r1
	bne _0804E208
	mov r9, r2
_0804E208:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r3
	bcc _0804E1F8
_0804E212:
	mov r2, #0
	ldr r1, _0804E248  @ =gUnknown_03001BC8
	ldrb r1, [r1]
	cmp r2, r1
	bcs _0804E23E
	ldr r4, _0804E24C  @ =gUnknown_03001BB0
	ldrb r3, [r6]
	ldr r0, _0804E248  @ =gUnknown_03001BC8
	ldrb r1, [r0]
_0804E224:
	lsl r0, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, r3
	bne _0804E234
	mov r10, r2
_0804E234:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r1
	bcc _0804E224
_0804E23E:
	cmp r9, r10
	bcs _0804E250
	mov r0, #1
	b _0804E252
	.byte 0x00
	.byte 0x00
_0804E248:
	.4byte gUnknown_03001BC8
_0804E24C:
	.4byte gUnknown_03001BB0
_0804E250:
	mov r0, #0
_0804E252:
	cmp r0, #0
	beq _0804E25A
	mov r0, #1
	b _0804E26C
_0804E25A:
	mov r0, #128
	lsl r0, r0, #9
	add r0, r0, r8
	lsr r2, r0, #16
	asr r0, r0, #16
	ldr r1, [sp]
	cmp r0, r1
	blt _0804E194
_0804E26A:
	mov r0, #0
_0804E26C:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804E178

	THUMB_FUNC_START sub_0804E27C
sub_0804E27C: @ 0x0804E27C
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r0, _0804E2E8  @ =gUnknown_03000368
	ldr r0, [r0]
	ldr r5, [r4, #32]
	sub r0, r0, r5
	cmp r0, #0
	ble _0804E2F8
	ldr r1, _0804E2EC  @ =gUnknown_03001BB0
	mov r2, #10
	ldrsb r2, [r4, r2]
	add r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r3, [r0]
	ldr r0, _0804E2F0  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r2, r0
	bge _0804E350
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #40
	beq _0804E350
	ldr r1, [r3, #36]
	ldr r0, [r4, #36]
	cmp r1, r0
	bne _0804E350
	ldr r0, [r3, #32]
	sub r1, r0, r5
	add r2, r0, #0
	cmp r1, #0
	bge _0804E2C0
	sub r1, r5, r2
_0804E2C0:
	mov r0, #128
	lsl r0, r0, #7
	cmp r1, r0
	bgt _0804E350
	ldr r0, _0804E2F4  @ =0xFFFFFA00
	add r2, r2, r0
	ldr r0, [r4, #32]
	sub r1, r0, r2
	cmp r1, #0
	bge _0804E2D6
	sub r1, r2, r0
_0804E2D6:
	cmp r1, #0
	bge _0804E2DC
	neg r1, r1
_0804E2DC:
	mov r0, #192
	lsl r0, r0, #3
	cmp r1, r0
	bgt _0804E35C
	b _0804E350
	.byte 0x00
	.byte 0x00
_0804E2E8:
	.4byte gUnknown_03000368
_0804E2EC:
	.4byte gUnknown_03001BB0
_0804E2F0:
	.4byte gUnknown_03001BC8
_0804E2F4:
	.4byte 0xFFFFFA00
_0804E2F8:
	ldr r1, _0804E354  @ =gUnknown_03001BB0
	mov r2, #10
	ldrsb r2, [r4, r2]
	add r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r3, [r0]
	ldr r0, _0804E358  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r2, r0
	bge _0804E350
	mov r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #40
	beq _0804E350
	ldr r1, [r3, #36]
	ldr r0, [r4, #36]
	cmp r1, r0
	bne _0804E350
	ldr r0, [r3, #32]
	sub r1, r0, r5
	add r2, r0, #0
	cmp r1, #0
	bge _0804E32C
	sub r1, r5, r2
_0804E32C:
	mov r0, #128
	lsl r0, r0, #7
	cmp r1, r0
	bgt _0804E350
	mov r3, #192
	lsl r3, r3, #3
	add r2, r2, r3
	ldr r0, [r4, #32]
	sub r1, r0, r2
	cmp r1, #0
	bge _0804E344
	sub r1, r2, r0
_0804E344:
	add r0, r1, #0
	cmp r0, #0
	bge _0804E34C
	neg r0, r0
_0804E34C:
	cmp r0, r3
	bgt _0804E35C
_0804E350:
	mov r0, #0
	b _0804E35E
_0804E354:
	.4byte gUnknown_03001BB0
_0804E358:
	.4byte gUnknown_03001BC8
_0804E35C:
	mov r0, #1
_0804E35E:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804E27C

	THUMB_FUNC_START sub_0804E364
sub_0804E364: @ 0x0804E364
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	add r4, r0, #0
	ldr r0, _0804E3E8  @ =gUnknown_03000368
	ldr r0, [r0]
	ldr r3, [r4, #32]
	sub r0, r0, r3
	cmp r0, #0
	bgt _0804E37C
	b _0804E520
_0804E37C:
	ldr r1, _0804E3EC  @ =gUnknown_03001BB0
	mov r2, #10
	ldrsb r2, [r4, r2]
	add r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r6, [r0]
	ldr r0, _0804E3F0  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r2, r0
	blt _0804E396
	b _0804E6C0
_0804E396:
	mov r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #40
	bne _0804E3A0
	b _0804E6C0
_0804E3A0:
	ldr r1, [r6, #36]
	ldr r0, [r4, #36]
	cmp r1, r0
	beq _0804E3AA
	b _0804E6C0
_0804E3AA:
	ldr r0, [r6, #32]
	sub r1, r0, r3
	add r2, r0, #0
	cmp r1, #0
	bge _0804E3B6
	sub r1, r3, r2
_0804E3B6:
	mov r0, #128
	lsl r0, r0, #6
	cmp r1, r0
	ble _0804E3C0
	b _0804E6C0
_0804E3C0:
	ldr r3, _0804E3F4  @ =0xFFFFFA00
	add r2, r2, r3
	ldr r1, [r4, #32]
	sub r0, r1, r2
	cmp r0, #0
	bge _0804E3CE
	sub r0, r2, r1
_0804E3CE:
	cmp r0, #0
	bge _0804E3D4
	neg r0, r0
_0804E3D4:
	cmp r0, #255
	bgt _0804E3F8
	mov r5, #4
	ldrsh r0, [r4, r5]
_0804E3DC:
	cmp r0, #4
	bne _0804E3E2
	b _0804E6C0
_0804E3E2:
	str r2, [r4, #32]
	b _0804E6C0
	.byte 0x00
	.byte 0x00
_0804E3E8:
	.4byte gUnknown_03000368
_0804E3EC:
	.4byte gUnknown_03001BB0
_0804E3F0:
	.4byte gUnknown_03001BC8
_0804E3F4:
	.4byte 0xFFFFFA00
_0804E3F8:
	cmp r1, r2
	ble _0804E48C
	add r0, r4, #0
	mov r1, #0
	bl sub_0804E9F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804E40C
	b _0804E6C0
_0804E40C:
	ldr r3, _0804E47C  @ =0xFFFFFD00
	ldr r2, [r4, #100]
	mov r7, #4
	ldrsh r0, [r2, r7]
	ldr r1, [r4, #32]
	add r0, r1, r0
	add r0, r0, r3
	str r0, [sp, #4]
	mov r7, #6
	ldrsh r0, [r2, r7]
	add r1, r1, r0
	add r1, r1, r3
	str r1, [sp, #12]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #16]
	add r0, sp, #4
	mov r1, #0
	mov r2, #128
	lsl r2, r2, #1
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	mov r0, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804E458
	cmp r1, #12
	beq _0804E458
	cmp r1, #13
	bne _0804E45A
_0804E458:
	mov r5, #0
_0804E45A:
	lsl r0, r5, #24
	cmp r0, #0
	bne _0804E462
	b _0804E6C0
_0804E462:
	ldr r0, _0804E480  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E484  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	ldr r0, [r6, #32]
	ldr r5, _0804E488  @ =0xFFFFFA00
	add r0, r0, r5
	b _0804E6B0
_0804E47C:
	.4byte 0xFFFFFD00
_0804E480:
	.4byte 0x03000386
_0804E484:
	.4byte gUnknown_080B5F80
_0804E488:
	.4byte 0xFFFFFA00
_0804E48C:
	cmp r1, r2
	blt _0804E492
	b _0804E6C0
_0804E492:
	add r0, r4, #0
	mov r1, #1
	bl sub_0804E9F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804E4A2
	b _0804E6C0
_0804E4A2:
	mov r3, #192
	lsl r3, r3, #2
	ldr r2, [r4, #100]
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #32]
	add r0, r1, r0
	add r0, r0, r3
	str r0, [sp, #4]
	mov r5, #6
	ldrsh r0, [r2, r5]
	add r1, r1, r0
	add r1, r1, r3
	str r1, [sp, #12]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #16]
	add r0, sp, #4
	mov r1, #0
	mov r2, #128
	lsl r2, r2, #1
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	mov r0, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804E4F0
	cmp r1, #12
	beq _0804E4F0
	cmp r1, #13
	bne _0804E4F2
_0804E4F0:
	mov r7, #0
_0804E4F2:
	lsl r0, r7, #24
	cmp r0, #0
	bne _0804E4FA
	b _0804E6C0
_0804E4FA:
	ldr r0, _0804E514  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E518  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	bl sub_0804A644
	ldr r0, [r6, #32]
	ldr r5, _0804E51C  @ =0xFFFFFA00
	add r0, r0, r5
	b _0804E6B0
_0804E514:
	.4byte 0x03000386
_0804E518:
	.4byte gUnknown_080B5F80
_0804E51C:
	.4byte 0xFFFFFA00
_0804E520:
	ldr r1, _0804E584  @ =gUnknown_03001BB0
	mov r2, #10
	ldrsb r2, [r4, r2]
	add r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r5, [r0]
	ldr r0, _0804E588  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r2, r0
	blt _0804E53A
	b _0804E6C0
_0804E53A:
	mov r7, #4
	ldrsh r0, [r5, r7]
	cmp r0, #40
	bne _0804E544
	b _0804E6C0
_0804E544:
	ldr r1, [r5, #36]
	ldr r0, [r4, #36]
	cmp r1, r0
	beq _0804E54E
	b _0804E6C0
_0804E54E:
	ldr r0, [r5, #32]
	sub r1, r0, r3
	add r2, r0, #0
	cmp r1, #0
	bge _0804E55A
	sub r1, r3, r2
_0804E55A:
	mov r0, #128
	lsl r0, r0, #6
	cmp r1, r0
	ble _0804E564
	b _0804E6C0
_0804E564:
	mov r0, #192
	lsl r0, r0, #3
	add r2, r2, r0
	ldr r1, [r4, #32]
	sub r0, r1, r2
	cmp r0, #0
	bge _0804E574
	sub r0, r2, r1
_0804E574:
	cmp r0, #0
	bge _0804E57A
	neg r0, r0
_0804E57A:
	cmp r0, #255
	bgt _0804E58C
	mov r1, #4
	ldrsh r0, [r4, r1]
	b _0804E3DC
_0804E584:
	.4byte gUnknown_03001BB0
_0804E588:
	.4byte gUnknown_03001BC8
_0804E58C:
	cmp r2, r1
	ble _0804E61C
	add r0, r4, #0
	mov r1, #1
	bl sub_0804E9F4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804E5A0
	b _0804E6C0
_0804E5A0:
	mov r3, #192
	lsl r3, r3, #2
	ldr r2, [r4, #100]
	mov r7, #4
	ldrsh r0, [r2, r7]
	ldr r1, [r4, #32]
	add r0, r1, r0
	add r0, r0, r3
	str r0, [sp, #4]
	mov r7, #6
	ldrsh r0, [r2, r7]
	add r1, r1, r0
	add r1, r1, r3
	str r1, [sp, #12]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #16]
	add r0, sp, #4
	mov r1, #0
	mov r2, #128
	lsl r2, r2, #1
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	mov r0, #127
	and r1, r1, r0
	cmp r1, #0
	beq _0804E5EE
	cmp r1, #12
	beq _0804E5EE
	cmp r1, #13
	bne _0804E5F0
_0804E5EE:
	mov r6, #0
_0804E5F0:
	lsl r0, r6, #24
	cmp r0, #0
	beq _0804E6C0
	ldr r0, _0804E614  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E618  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	bl sub_0804A644
	ldr r0, [r5, #32]
	mov r5, #192
	lsl r5, r5, #3
	add r0, r0, r5
	b _0804E6B0
	.byte 0x00
	.byte 0x00
_0804E614:
	.4byte 0x03000386
_0804E618:
	.4byte gUnknown_080B5F80
_0804E61C:
	cmp r2, r1
	bge _0804E6C0
	add r0, r4, #0
	mov r1, #0
	bl sub_0804E9F4
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804E6C0
	ldr r3, _0804E678  @ =0xFFFFFD00
	ldr r2, [r4, #100]
	mov r6, #4
	ldrsh r0, [r2, r6]
	ldr r1, [r4, #32]
	add r0, r1, r0
	add r0, r0, r3
	str r0, [sp, #4]
	mov r7, #6
	ldrsh r0, [r2, r7]
	add r1, r1, r0
	add r1, r1, r3
	str r1, [sp, #12]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #16]
	add r0, sp, #4
	mov r1, #0
	mov r2, #128
	lsl r2, r2, #1
	mov r3, #0
	bl sub_080066FC
	add r1, r0, #0
	mov r0, #127
	and r1, r1, r0
	cmp r1, #0
	bne _0804E67C
	mov r6, #0
	mov r8, r6
	b _0804E68E
_0804E678:
	.4byte 0xFFFFFD00
_0804E67C:
	cmp r1, #12
	bne _0804E686
	mov r7, #0
	mov r8, r7
	b _0804E68E
_0804E686:
	cmp r1, #13
	bne _0804E68E
	mov r0, #0
	mov r8, r0
_0804E68E:
	mov r1, r8
	lsl r0, r1, #24
	cmp r0, #0
	beq _0804E6C0
	ldr r0, _0804E6B8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E6BC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
	ldr r0, [r5, #32]
	mov r3, #192
	lsl r3, r3, #3
	add r0, r0, r3
_0804E6B0:
	str r0, [r4, #16]
	mov r0, #1
	b _0804E6C2
	.byte 0x00
	.byte 0x00
_0804E6B8:
	.4byte 0x03000386
_0804E6BC:
	.4byte gUnknown_080B5F80
_0804E6C0:
	mov r0, #0
_0804E6C2:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804E364

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804E6D0
sub_0804E6D0: @ 0x0804E6D0
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, _0804E754  @ =gUnknown_03000368
	ldr r0, [r0]
	ldr r3, [r4, #32]
	sub r0, r0, r3
	cmp r0, #0
	ble _0804E794
	ldr r1, _0804E758  @ =gUnknown_03001BB0
	mov r2, #10
	ldrsb r2, [r4, r2]
	add r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r5, [r0]
	ldr r0, _0804E75C  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r2, r0
	blt _0804E6FC
	b _0804E864
_0804E6FC:
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #53
	ble _0804E706
	b _0804E864
_0804E706:
	cmp r0, #40
	bne _0804E70C
	b _0804E864
_0804E70C:
	add r0, r5, #0
	add r0, r0, #67
	add r2, r4, #0
	add r2, r2, #67
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	beq _0804E722
	b _0804E864
_0804E722:
	ldr r0, [r5, #32]
	sub r1, r0, r3
	add r2, r0, #0
	cmp r1, #0
	bge _0804E72E
	sub r1, r3, r2
_0804E72E:
	mov r0, #128
	lsl r0, r0, #6
	cmp r1, r0
	ble _0804E738
	b _0804E864
_0804E738:
	ldr r6, _0804E760  @ =0xFFFFFA00
	add r0, r2, r6
	ldr r2, [r4, #32]
	sub r1, r2, r0
	cmp r1, #0
	bge _0804E746
	sub r1, r0, r2
_0804E746:
	cmp r1, #0
	bge _0804E74C
	neg r1, r1
_0804E74C:
	cmp r1, #255
	bgt _0804E764
_0804E750:
	str r0, [r4, #32]
	b _0804E864
_0804E754:
	.4byte gUnknown_03000368
_0804E758:
	.4byte gUnknown_03001BB0
_0804E75C:
	.4byte gUnknown_03001BC8
_0804E760:
	.4byte 0xFFFFFA00
_0804E764:
	cmp r2, r0
	bgt _0804E830
	cmp r2, r0
	blt _0804E76E
	b _0804E864
_0804E76E:
	add r0, r4, #0
	mov r1, #1
	bl sub_0804F2B4
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804E864
	ldr r0, _0804E78C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E790  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	mov r2, #1
	b _0804E84C
_0804E78C:
	.4byte 0x03000386
_0804E790:
	.4byte gUnknown_080B5F80
_0804E794:
	ldr r1, _0804E81C  @ =gUnknown_03001BB0
	mov r2, #10
	ldrsb r2, [r4, r2]
	add r0, r2, #1
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r5, [r0]
	ldr r0, _0804E820  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	sub r0, r0, #1
	cmp r2, r0
	bge _0804E864
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #53
	bgt _0804E864
	cmp r0, #40
	beq _0804E864
	add r0, r5, #0
	add r0, r0, #67
	add r2, r4, #0
	add r2, r2, #67
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0804E864
	ldr r0, [r5, #32]
	sub r1, r0, r3
	add r2, r0, #0
	cmp r1, #0
	bge _0804E7D8
	sub r1, r3, r2
_0804E7D8:
	mov r0, #128
	lsl r0, r0, #6
	cmp r1, r0
	bgt _0804E864
	mov r6, #192
	lsl r6, r6, #3
	add r0, r2, r6
	ldr r2, [r4, #32]
	sub r1, r2, r0
	cmp r1, #0
	bge _0804E7F0
	sub r1, r0, r2
_0804E7F0:
	cmp r1, #0
	bge _0804E7F6
	neg r1, r1
_0804E7F6:
	cmp r1, #255
	ble _0804E750
	cmp r0, r2
	ble _0804E82C
	add r0, r4, #0
	mov r1, #1
	bl sub_0804F2B4
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804E864
	ldr r0, _0804E824  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E828  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	mov r2, #1
	b _0804E84C
_0804E81C:
	.4byte gUnknown_03001BB0
_0804E820:
	.4byte gUnknown_03001BC8
_0804E824:
	.4byte 0x03000386
_0804E828:
	.4byte gUnknown_080B5F80
_0804E82C:
	cmp r0, r2
	bge _0804E864
_0804E830:
	add r0, r4, #0
	mov r1, #0
	bl sub_0804F2B4
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804E864
	ldr r0, _0804E85C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804E860  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	mov r2, #0
_0804E84C:
	bl sub_0804A644
	ldr r0, [r5, #32]
	add r0, r0, r6
	str r0, [r4, #16]
	mov r0, #1
	b _0804E866
	.byte 0x00
	.byte 0x00
_0804E85C:
	.4byte 0x03000386
_0804E860:
	.4byte gUnknown_080B5F80
_0804E864:
	mov r0, #0
_0804E866:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804E6D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804E870
sub_0804E870: @ 0x0804E870
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r2, #0
	lsl r1, r1, #24
	ldr r2, _0804E8D4  @ =gUnknown_03001940
	ldr r2, [r2]
	mov r12, r2
	add r2, r0, #0
	add r2, r2, #132
	ldr r4, [r2]
	ldrb r2, [r4, #1]
	lsl r2, r2, #7
	ldr r3, [r0, #32]
	add r3, r3, r2
	mov r8, r3
	ldrb r2, [r4, #2]
	lsl r2, r2, #8
	ldr r0, [r0, #36]
	add r7, r0, r2
	mov r3, #0
	lsr r6, r1, #24
_0804E89C:
	mov r1, r12
	add r1, r1, #132
	ldrb r0, [r1, #20]
	cmp r0, #0
	beq _0804E8E2
	mov r2, r12
	ldrh r0, [r2]
	cmp r0, r6
	bne _0804E8E2
	ldr r4, [r1]
	ldrb r1, [r4, #2]
	lsl r1, r1, #8
	ldr r0, [r2, #36]
	add r0, r0, r1
	cmp r0, r7
	bne _0804E8E2
	ldr r0, [r2, #32]
	mov r1, r8
	sub r2, r1, r0
	ldrb r0, [r4, #1]
	lsl r0, r0, #7
	sub r1, r2, r0
	cmp r1, #0
	blt _0804E8D8
	cmp r1, r5
	ble _0804E8DE
	b _0804E8E2
	.byte 0x00
	.byte 0x00
_0804E8D4:
	.4byte gUnknown_03001940
_0804E8D8:
	sub r0, r0, r2
	cmp r0, r5
	bgt _0804E8E2
_0804E8DE:
	mov r0, #1
	b _0804E8EE
_0804E8E2:
	add r3, r3, #1
	mov r2, #176
	add r12, r12, r2
	cmp r3, #19
	ble _0804E89C
	mov r0, #0
_0804E8EE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804E870

	THUMB_FUNC_START sub_0804E8F8
sub_0804E8F8: @ 0x0804E8F8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r12, r0
	add r6, r1, #0
	ldr r0, [r0, #36]
	mov r1, r12
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r5, r0, r1
	ldr r0, _0804E978  @ =gUnknown_030019AC
	ldr r0, [r0]
	mov r2, r12
	ldr r1, [r2, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	ble _0804E988
	mov r3, #0
	ldr r0, _0804E97C  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r3, r0
	bge _0804E9DE
	mov r7, #61
	add r7, r7, r12
	mov r8, r7
	mov r9, r0
	ldr r4, _0804E980  @ =gUnknown_03001BB0
_0804E934:
	ldr r2, [r4]
	ldr r0, [r2, #36]
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	cmp r0, r5
	bne _0804E96E
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	beq _0804E96E
	ldrh r0, [r2]
	cmp r0, #150
	beq _0804E96E
	cmp r0, #0
	beq _0804E96E
	ldr r1, [r2, #32]
	mov r2, r12
	ldr r0, [r2, #32]
	cmp r1, r0
	bge _0804E96E
	cmp r1, r6
	bgt _0804E984
_0804E96E:
	add r4, r4, #4
	add r3, r3, #1
	cmp r3, r9
	blt _0804E934
	b _0804E9DE
_0804E978:
	.4byte gUnknown_030019AC
_0804E97C:
	.4byte gUnknown_03001BC8
_0804E980:
	.4byte gUnknown_03001BB0
_0804E984:
	mov r0, #1
	b _0804E9E0
_0804E988:
	mov r3, #0
	ldr r0, _0804E9EC  @ =gUnknown_03001BC8
	ldrb r0, [r0]
	cmp r3, r0
	bge _0804E9DE
	mov r7, #61
	add r7, r7, r12
	mov r8, r7
	mov r9, r0
	ldr r4, _0804E9F0  @ =gUnknown_03001BB0
_0804E99C:
	ldr r2, [r4]
	ldr r0, [r2, #36]
	add r1, r2, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	cmp r0, r5
	bne _0804E9D6
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1]
	cmp r0, r1
	beq _0804E9D6
	ldrh r0, [r2]
	cmp r0, #150
	beq _0804E9D6
	cmp r0, #0
	beq _0804E9D6
	ldr r1, [r2, #32]
	mov r2, r12
	ldr r0, [r2, #32]
	cmp r1, r0
	ble _0804E9D6
	cmp r1, r6
	blt _0804E984
_0804E9D6:
	add r4, r4, #4
	add r3, r3, #1
	cmp r3, r9
	blt _0804E99C
_0804E9DE:
	mov r0, #0
_0804E9E0:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_0804E9EC:
	.4byte gUnknown_03001BC8
_0804E9F0:
	.4byte gUnknown_03001BB0
	THUMB_FUNC_END sub_0804E8F8

	THUMB_FUNC_START sub_0804E9F4
sub_0804E9F4: @ 0x0804E9F4
	push {r4-r7,lr}
	sub sp, sp, #16
	add r5, r0, #0
	lsl r1, r1, #24
	mov r6, #160
	lsl r6, r6, #3
	cmp r1, #0
	bne _0804EA06
	ldr r6, _0804EA50  @ =0xFFFFFB00
_0804EA06:
	ldr r4, [r5, #100]
	mov r1, #4
	ldrsh r0, [r4, r1]
	ldr r3, [r5, #32]
	add r3, r3, r0
	str r3, [sp]
	mov r7, #0
	ldrsh r0, [r4, r7]
	ldr r2, [r5, #36]
	add r2, r2, r0
	str r2, [sp, #4]
	mov r1, #6
	ldrsh r0, [r4, r1]
	mov r7, #4
	ldrsh r1, [r4, r7]
	sub r0, r0, r1
	add r3, r3, r0
	str r3, [sp, #8]
	mov r0, #128
	lsl r0, r0, #1
	add r2, r2, r0
	str r2, [sp, #12]
	mov r0, sp
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _0804EA88
	cmp r6, #0
	ble _0804EA54
	ldr r0, [sp]
	mov r1, #160
	lsl r1, r1, #4
	b _0804EA58
	.byte 0x00
	.byte 0x00
_0804EA50:
	.4byte 0xFFFFFB00
_0804EA54:
	ldr r0, [sp]
	ldr r1, _0804EA84  @ =0xFFFFF600
_0804EA58:
	add r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #8]
	mov r7, #2
	ldrsh r1, [r4, r7]
	ldr r0, [r5, #36]
	add r0, r0, r1
	str r0, [sp, #12]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	beq _0804EA88
	mov r0, #0
	b _0804EA8A
	.byte 0x00
	.byte 0x00
_0804EA84:
	.4byte 0xFFFFF600
_0804EA88:
	mov r0, #1
_0804EA8A:
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804E9F4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804EA94
sub_0804EA94: @ 0x0804EA94
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	mov r12, r6
	ldr r1, [r4, #32]
	asr r1, r1, #11
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, [r4, #36]
	asr r2, r5, #11
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, _0804EB00  @ =gUnknown_03000374
	ldr r3, [r0]
	ldr r0, _0804EB04  @ =gCurrentLevelWidth
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	mul r2, r0, r2
	ldr r0, [r3]
	add r1, r1, r2
	add r0, r0, r1
	ldrb r3, [r0]
	add r2, r4, #0
	add r2, r2, #64
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0804EB86
	ldr r0, _0804EB08  @ =gUnknown_03000368
	ldr r7, _0804EB0C  @ =0xFFFFF000
	add r1, r5, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	ble _0804EB3C
	mov r0, #12
	and r3, r3, r0
	cmp r3, #0
	bne _0804EAEA
	b _0804EC48
_0804EAEA:
	cmp r3, #4
	bne _0804EB18
	ldrb r2, [r2]
	ldr r0, _0804EB10  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EB14  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _0804EC38
	.byte 0x00
	.byte 0x00
_0804EB00:
	.4byte gUnknown_03000374
_0804EB04:
	.4byte gCurrentLevelWidth
_0804EB08:
	.4byte gUnknown_03000368
_0804EB0C:
	.4byte 0xFFFFF000
_0804EB10:
	.4byte 0x03000386
_0804EB14:
	.4byte gUnknown_080B5F80
_0804EB18:
	cmp r3, #8
	bne _0804EB34
	ldrb r2, [r2]
	ldr r0, _0804EB2C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EB30  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	b _0804EC38
_0804EB2C:
	.4byte 0x03000386
_0804EB30:
	.4byte gUnknown_080B5F80
_0804EB34:
	cmp r6, #0
	bne _0804EB3A
	b _0804EC48
_0804EB3A:
	b _0804EC2A
_0804EB3C:
	mov r0, #3
	and r3, r3, r0
	cmp r3, #0
	bne _0804EB46
	b _0804EC48
_0804EB46:
	cmp r3, #1
	bne _0804EB64
	ldrb r2, [r2]
	ldr r0, _0804EB5C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EB60  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _0804EC38
	.byte 0x00
	.byte 0x00
_0804EB5C:
	.4byte 0x03000386
_0804EB60:
	.4byte gUnknown_080B5F80
_0804EB64:
	cmp r3, #2
	bne _0804EB80
	ldrb r2, [r2]
	ldr r0, _0804EB78  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EB7C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	b _0804EC38
_0804EB78:
	.4byte 0x03000386
_0804EB7C:
	.4byte gUnknown_080B5F80
_0804EB80:
	cmp r6, #0
	beq _0804EC48
	b _0804EC2A
_0804EB86:
	ldr r0, _0804EBB0  @ =gUnknown_03000368
	ldr r7, _0804EBB4  @ =0xFFFFF000
	add r1, r5, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	ble _0804EBE2
	mov r0, #192
	and r3, r3, r0
	cmp r3, #0
	beq _0804EC48
	cmp r3, #64
	bne _0804EBC0
	ldrb r2, [r2]
	ldr r0, _0804EBB8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EBBC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _0804EC38
	.byte 0x00
	.byte 0x00
_0804EBB0:
	.4byte gUnknown_03000368
_0804EBB4:
	.4byte 0xFFFFF000
_0804EBB8:
	.4byte 0x03000386
_0804EBBC:
	.4byte gUnknown_080B5F80
_0804EBC0:
	cmp r3, #128
	bne _0804EBDC
	ldrb r2, [r2]
	ldr r0, _0804EBD4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EBD8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	b _0804EC38
_0804EBD4:
	.4byte 0x03000386
_0804EBD8:
	.4byte gUnknown_080B5F80
_0804EBDC:
	cmp r6, #0
	beq _0804EC48
	b _0804EC2A
_0804EBE2:
	mov r0, #48
	and r3, r3, r0
	cmp r3, #0
	beq _0804EC48
	cmp r3, #16
	bne _0804EC08
	ldrb r2, [r2]
	ldr r0, _0804EC00  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EC04  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _0804EC38
	.byte 0x00
	.byte 0x00
_0804EC00:
	.4byte 0x03000386
_0804EC04:
	.4byte gUnknown_080B5F80
_0804EC08:
	cmp r3, #32
	bne _0804EC24
	ldrb r2, [r2]
	ldr r0, _0804EC1C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EC20  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #12
	b _0804EC38
_0804EC1C:
	.4byte 0x03000386
_0804EC20:
	.4byte gUnknown_080B5F80
_0804EC24:
	mov r0, r12
	cmp r0, #0
	beq _0804EC48
_0804EC2A:
	ldrb r2, [r2]
	ldr r0, _0804EC40  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EC44  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_0804EC38:
	bl sub_0804A644
	mov r0, #1
	b _0804EC4A
_0804EC40:
	.4byte 0x03000386
_0804EC44:
	.4byte gUnknown_080B5F80
_0804EC48:
	mov r0, #0
_0804EC4A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804EA94

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804EC54
sub_0804EC54: @ 0x0804EC54
	push {r4-r6,lr}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r1, _0804EC74  @ =gUnknown_03001BA4
	ldr r0, _0804EC78  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r3, r0, #8
	ldr r0, [r1]
	sub r2, r0, r3
	cmp r2, #0
	blt _0804EC7C
	cmp r2, #39
	ble _0804EC82
	b _0804ED20
	.byte 0x00
	.byte 0x00
_0804EC74:
	.4byte gUnknown_03001BA4
_0804EC78:
	.4byte gUnknown_030019AC
_0804EC7C:
	sub r0, r3, r0
	cmp r0, #39
	bgt _0804ED20
_0804EC82:
	mov r1, #128
	lsl r1, r1, #5
	add r0, r5, #0
	bl sub_0804E178
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804ED20
	ldr r0, [r5, #36]
	asr r0, r0, #8
	ldr r1, _0804ECAC  @ =gUnknown_03001B88
	ldr r1, [r1]
	sub r1, r0, r1
	add r0, r1, #0
	sub r0, r0, #16
	cmp r0, #0
	blt _0804ECB0
	cmp r0, #0
	ble _0804ECB8
	b _0804ED20
	.byte 0x00
	.byte 0x00
_0804ECAC:
	.4byte gUnknown_03001B88
_0804ECB0:
	mov r0, #16
	sub r0, r0, r1
	cmp r0, #0
	bgt _0804ED20
_0804ECB8:
	ldr r1, [r5, #32]
	asr r4, r1, #8
	ldr r0, _0804ECD0  @ =gUnknown_03001BA4
	ldr r3, [r0]
	sub r2, r4, r3
	add r6, r0, #0
	cmp r2, #0
	blt _0804ECD4
	cmp r2, #87
	ble _0804ECDA
	b _0804ED20
	.byte 0x00
	.byte 0x00
_0804ECD0:
	.4byte gUnknown_03001BA4
_0804ECD4:
	sub r0, r3, r4
	cmp r0, #87
	bgt _0804ED20
_0804ECDA:
	asr r1, r1, #8
	ldr r0, [r6]
	cmp r1, r0
	bge _0804ED00
	ldr r0, _0804ECF8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804ECFC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r5, #0
	mov r1, #37
	mov r2, #1
	bl sub_0804A644
	b _0804ED12
	.byte 0x00
	.byte 0x00
_0804ECF8:
	.4byte 0x03000386
_0804ECFC:
	.4byte gUnknown_080B5F80
_0804ED00:
	ldr r0, _0804ED18  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804ED1C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r5, #0
	mov r1, #37
	mov r2, #0
	bl sub_0804A644
_0804ED12:
	mov r0, #1
	b _0804ED22
	.byte 0x00
	.byte 0x00
_0804ED18:
	.4byte 0x03000386
_0804ED1C:
	.4byte gUnknown_080B5F80
_0804ED20:
	mov r0, #0
_0804ED22:
	add sp, sp, #4
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804EC54

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804ED2C
sub_0804ED2C: @ 0x0804ED2C
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	ldr r0, _0804EED4  @ =gUnknown_03001B8C
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EDEE
	ldr r2, _0804EED8  @ =REG_DMA3SAD
	ldr r0, _0804EEDC  @ =gUnknown_0812E170
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0804EEE0  @ =gOamData
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0804EEE4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _0804EEE8  @ =gUnknown_0812E128
	ldr r0, _0804EEEC  @ =gUnknown_03000389
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #8
	ldr r1, _0804EEF0  @ =gUnknown_0812E178
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _0804EEF4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0804EEF8  @ =0x84000040
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
	ldr r0, _0804EEFC  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _0804EF00  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r1, _0804EF04  @ =gUnknown_03001BA4
	ldr r0, _0804EF08  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	ldr r1, [r1]
	sub r1, r1, r0
	add r1, r1, #8
	ldr r2, _0804EF0C  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0804EF10  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _0804EF14  @ =gUnknown_03001B88
	ldr r1, [r0]
	ldr r0, _0804EF18  @ =gCameraVerticalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	sub r1, r1, #38
	strb r1, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
_0804EDEE:
	ldr r0, _0804EF1C  @ =gUnknown_0300038B
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EEBA
	ldr r2, _0804EED8  @ =REG_DMA3SAD
	ldr r0, _0804EF20  @ =gUnknown_082EC748
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0804EEE0  @ =gOamData
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0804EEE4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0804EF24  @ =gUnknown_03001BA0
	ldrb r0, [r0]
	lsl r0, r0, #6
	ldr r1, _0804EF28  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r7]
	ldr r1, _0804EEF4  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0804EF2C  @ =0x84000010
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
	ldr r0, _0804EEFC  @ =0x000003FF
	mov r12, r0
	mov r0, r12
	and r1, r1, r0
	ldr r0, _0804EF00  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r1, _0804EF04  @ =gUnknown_03001BA4
	ldr r0, _0804EF08  @ =gCameraHorizontalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	ldr r1, [r1]
	sub r1, r1, r0
	add r1, r1, #12
	ldr r2, _0804EF0C  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0804EF10  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r0, _0804EF30  @ =0x03000390
	ldr r1, [r0]
	asr r1, r1, #8
	ldr r0, _0804EF18  @ =gCameraVerticalOffset
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	sub r1, r1, r0
	add r1, r1, #8
	strb r1, [r2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r6]
	add r0, r0, #2
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #64
	strh r0, [r7]
_0804EEBA:
	ldr r0, _0804EF34  @ =gUnknown_03001B90
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804EECC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0807028C
_0804EECC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804EED4:
	.4byte gUnknown_03001B8C
_0804EED8:
	.4byte REG_DMA3SAD
_0804EEDC:
	.4byte gUnknown_0812E170
_0804EEE0:
	.4byte gOamData
_0804EEE4:
	.4byte 0x84000002
_0804EEE8:
	.4byte gUnknown_0812E128
_0804EEEC:
	.4byte gUnknown_03000389
_0804EEF0:
	.4byte gUnknown_0812E178
_0804EEF4:
	.4byte OBJ_VRAM0
_0804EEF8:
	.4byte 0x84000040
_0804EEFC:
	.4byte 0x000003FF
_0804EF00:
	.4byte 0xFFFFFC00
_0804EF04:
	.4byte gUnknown_03001BA4
_0804EF08:
	.4byte gCameraHorizontalOffset
_0804EF0C:
	.4byte 0x000001FF
_0804EF10:
	.4byte 0xFFFFFE00
_0804EF14:
	.4byte gUnknown_03001B88
_0804EF18:
	.4byte gCameraVerticalOffset
_0804EF1C:
	.4byte gUnknown_0300038B
_0804EF20:
	.4byte gUnknown_082EC748
_0804EF24:
	.4byte gUnknown_03001BA0
_0804EF28:
	.4byte gUnknown_082EC750
_0804EF2C:
	.4byte 0x84000010
_0804EF30:
	.4byte 0x03000390
_0804EF34:
	.4byte gUnknown_03001B90
	THUMB_FUNC_END sub_0804ED2C

	THUMB_FUNC_START sub_0804EF38
sub_0804EF38: @ 0x0804EF38
	push {r4,lr}
	ldr r1, _0804EF60  @ =gUnknown_03000394
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0804EF64  @ =gUnknown_030019AC
	ldr r2, [r1]
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r3, r1, #0
	cmp r0, #0
	bne _0804EF68
	ldr r0, [r2, #32]
	mov r2, #192
	lsl r2, r2, #4
	add r1, r0, r2
	b _0804EF70
	.byte 0x00
	.byte 0x00
_0804EF60:
	.4byte gUnknown_03000394
_0804EF64:
	.4byte gUnknown_030019AC
_0804EF68:
	ldr r0, [r2, #32]
	mov r4, #128
	lsl r4, r4, #3
	add r1, r0, r4
_0804EF70:
	ldr r0, _0804EF90  @ =gCurrentLevelWidth
	mov r4, #0
	ldrsh r2, [r0, r4]
	lsl r0, r2, #8
	cmp r1, r0
	blt _0804EF80
	sub r0, r2, #4
	lsl r1, r0, #8
_0804EF80:
	ldr r0, _0804EF94  @ =gUnknown_03000368
	str r1, [r0]
	ldr r1, [r3]
	ldr r1, [r1, #36]
	str r1, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0
_0804EF90:
	.4byte gCurrentLevelWidth
_0804EF94:
	.4byte gUnknown_03000368
	THUMB_FUNC_END sub_0804EF38

	THUMB_FUNC_START sub_0804EF98
sub_0804EF98: @ 0x0804EF98
	ldr r1, _0804EFB0  @ =gUnknown_03001BD0
	str r0, [r1]
	ldr r2, _0804EFB4  @ =gUnknown_03001BA4
	ldr r1, [r0, #32]
	asr r1, r1, #8
	str r1, [r2]
	ldr r1, _0804EFB8  @ =gUnknown_03001B88
	ldr r0, [r0, #36]
	asr r0, r0, #8
	str r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0804EFB0:
	.4byte gUnknown_03001BD0
_0804EFB4:
	.4byte gUnknown_03001BA4
_0804EFB8:
	.4byte gUnknown_03001B88
	THUMB_FUNC_END sub_0804EF98

	THUMB_FUNC_START sub_0804EFBC
sub_0804EFBC: @ 0x0804EFBC
	push {lr}
	sub sp, sp, #4
	add r1, r0, #0
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #14
	bne _0804EFEC
	add r0, r1, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804EFE4  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804EFE8  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r1, #0
	mov r1, #15
	bl sub_0804A644
	b _0804F002
	.byte 0x00
	.byte 0x00
_0804EFE4:
	.4byte 0x03000386
_0804EFE8:
	.4byte gUnknown_080B5F80
_0804EFEC:
	add r0, r1, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F008  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F00C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r1, #0
	mov r1, #14
	bl sub_0804A644
_0804F002:
	add sp, sp, #4
	pop {r0}
	bx r0
_0804F008:
	.4byte 0x03000386
_0804F00C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804EFBC

	THUMB_FUNC_START sub_0804F010
sub_0804F010: @ 0x0804F010
	push {lr}
	sub sp, sp, #4
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _0804F030  @ =0x03000386
	ldrb r3, [r1]
	ldr r1, _0804F034  @ =gUnknown_080B5F80
	str r1, [sp]
	mov r1, #15
	bl sub_0804A644
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804F030:
	.4byte 0x03000386
_0804F034:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F010

	THUMB_FUNC_START sub_0804F038
sub_0804F038: @ 0x0804F038
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	lsl r3, r3, #16
	lsr r2, r3, #16
	mov r3, #0
	ldr r0, _0804F098  @ =gUnknown_03001BC8
	ldrb r1, [r0]
	cmp r3, r1
	bge _0804F0B8
	ldr r0, _0804F09C  @ =gUnknown_03001BB0
	mov r8, r0
	lsl r0, r2, #16
	asr r7, r0, #16
	add r6, r1, #0
_0804F060:
	lsl r3, r3, #16
	asr r0, r3, #14
	add r0, r0, r8
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	cmp r0, r4
	ble _0804F0AA
	sub r0, r0, r4
	cmp r0, r7
	bge _0804F0AA
	mov r2, r12
	lsl r0, r2, #16
	asr r2, r0, #16
	sub r0, r1, r5
	cmp r0, #0
	blt _0804F0A0
	cmp r0, r2
	blt _0804F0A6
	b _0804F0AA
_0804F098:
	.4byte gUnknown_03001BC8
_0804F09C:
	.4byte gUnknown_03001BB0
_0804F0A0:
	sub r0, r5, r1
	cmp r0, r2
	bge _0804F0AA
_0804F0A6:
	mov r0, #1
	b _0804F0BA
_0804F0AA:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r3, r1
	lsr r3, r0, #16
	asr r0, r0, #16
	cmp r0, r6
	blt _0804F060
_0804F0B8:
	mov r0, #0
_0804F0BA:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F038

	THUMB_FUNC_START sub_0804F0C4
sub_0804F0C4: @ 0x0804F0C4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r5, r0, #0
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	lsl r3, r3, #16
	lsr r2, r3, #16
	mov r3, #0
	ldr r0, _0804F124  @ =gUnknown_03001BC8
	ldrb r1, [r0]
	cmp r3, r1
	bge _0804F144
	ldr r0, _0804F128  @ =gUnknown_03001BB0
	mov r8, r0
	lsl r0, r2, #16
	asr r7, r0, #16
	add r6, r1, #0
_0804F0EC:
	lsl r3, r3, #16
	asr r0, r3, #14
	add r0, r0, r8
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	cmp r0, r4
	ble _0804F136
	sub r0, r0, r4
	cmp r0, r7
	bge _0804F136
	mov r2, r12
	lsl r0, r2, #16
	asr r2, r0, #16
	sub r0, r1, r5
	cmp r0, #0
	blt _0804F12C
	cmp r0, r2
	blt _0804F132
	b _0804F136
_0804F124:
	.4byte gUnknown_03001BC8
_0804F128:
	.4byte gUnknown_03001BB0
_0804F12C:
	sub r0, r5, r1
	cmp r0, r2
	bge _0804F136
_0804F132:
	mov r0, #0
	b _0804F146
_0804F136:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r3, r1
	lsr r3, r0, #16
	asr r0, r0, #16
	cmp r0, r6
	blt _0804F0EC
_0804F144:
	mov r0, #1
_0804F146:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F0C4

	THUMB_FUNC_START sub_0804F150
sub_0804F150: @ 0x0804F150
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_0804F150

	THUMB_FUNC_START sub_0804F154
sub_0804F154: @ 0x0804F154
	push {lr}
	ldr r1, _0804F16C  @ =gUnknown_03001BA4
	ldr r0, _0804F170  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	ldr r1, [r1]
	cmp r1, r0
	bgt _0804F174
	mov r0, #0
	b _0804F176
	.byte 0x00
	.byte 0x00
_0804F16C:
	.4byte gUnknown_03001BA4
_0804F170:
	.4byte gUnknown_030019AC
_0804F174:
	mov r0, #1
_0804F176:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F154

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F17C
sub_0804F17C: @ 0x0804F17C
	push {lr}
	ldr r1, _0804F194  @ =gUnknown_03001BA4
	ldr r0, _0804F198  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	asr r0, r0, #8
	ldr r1, [r1]
	cmp r1, r0
	blt _0804F19C
	mov r0, #0
	b _0804F19E
	.byte 0x00
	.byte 0x00
_0804F194:
	.4byte gUnknown_03001BA4
_0804F198:
	.4byte gUnknown_030019AC
_0804F19C:
	mov r0, #1
_0804F19E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F17C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F1A4
sub_0804F1A4: @ 0x0804F1A4
	push {lr}
	ldr r0, _0804F1B4  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #3
	bhi _0804F1B8
	mov r0, #0
	b _0804F1BA
	.byte 0x00
	.byte 0x00
_0804F1B4:
	.4byte gUnknown_03000387
_0804F1B8:
	mov r0, #1
_0804F1BA:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F1A4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F1C0
sub_0804F1C0: @ 0x0804F1C0
	push {lr}
	lsr r0, r0, #11
	ldr r1, _0804F1D0  @ =gUnknown_080B5424
	ldrb r1, [r1, #1]
	cmp r0, r1
	bcs _0804F1D4
	mov r0, #0
	b _0804F1D6
_0804F1D0:
	.4byte gUnknown_080B5424
_0804F1D4:
	mov r0, #1
_0804F1D6:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F1C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F1DC
sub_0804F1DC: @ 0x0804F1DC
	ldr r0, _0804F1E4  @ =gUnknown_03001B90
	ldrb r0, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0804F1E4:
	.4byte gUnknown_03001B90
	THUMB_FUNC_END sub_0804F1DC

	THUMB_FUNC_START sub_0804F1E8
sub_0804F1E8: @ 0x0804F1E8
	push {lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	cmp r2, #0
	bne _0804F1FA
	ldr r1, _0804F208  @ =gUnknown_03001B84
	mov r0, #1
	strb r0, [r1]
_0804F1FA:
	ldr r1, _0804F20C  @ =gUnknown_03001B8C
	ldr r0, _0804F210  @ =gUnknown_0300038B
	strb r2, [r0]
	strb r2, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804F208:
	.4byte gUnknown_03001B84
_0804F20C:
	.4byte gUnknown_03001B8C
_0804F210:
	.4byte gUnknown_0300038B
	THUMB_FUNC_END sub_0804F1E8

	THUMB_FUNC_START sub_0804F214
sub_0804F214: @ 0x0804F214
	push {lr}
	ldr r0, _0804F230  @ =gUnknown_03001BA0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804F238
	ldr r0, _0804F234  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #16
	orr r1, r1, r2
	str r1, [r0]
	mov r0, #1
	b _0804F23A
	.byte 0x00
	.byte 0x00
_0804F230:
	.4byte gUnknown_03001BA0
_0804F234:
	.4byte gUnknown_03001A1C
_0804F238:
	mov r0, #0
_0804F23A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F214

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F240
sub_0804F240: @ 0x0804F240
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F2A0  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F2A4  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #46
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0804F2A8  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #68
	mov r2, #0
	bl sub_080410B4
	ldr r5, _0804F2AC  @ =gUnknown_03001A1C
	ldr r0, [r5]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r5]
	bl sub_0800A258
	mov r1, #0
	strb r1, [r4, #15]
	ldr r0, _0804F2B0  @ =gUnknown_03000378
	strh r1, [r0]
	ldr r0, [r5]
	mov r1, #128
	lsl r1, r1, #19
	orr r0, r0, r1
	str r0, [r5]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0804F2A0:
	.4byte 0x03000386
_0804F2A4:
	.4byte gUnknown_080B5F80
_0804F2A8:
	.4byte 0xFFFFF800
_0804F2AC:
	.4byte gUnknown_03001A1C
_0804F2B0:
	.4byte gUnknown_03000378
	THUMB_FUNC_END sub_0804F240

	THUMB_FUNC_START sub_0804F2B4
sub_0804F2B4: @ 0x0804F2B4
	push {r4-r7,lr}
	sub sp, sp, #16
	add r3, r0, #0
	lsl r1, r1, #24
	mov r7, #160
	lsl r7, r7, #3
	cmp r1, #0
	bne _0804F2C6
	ldr r7, _0804F2FC  @ =0xFFFFFB00
_0804F2C6:
	ldr r6, [r3, #100]
	mov r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, [r3, #32]
	add r5, r0, r1
	str r5, [sp]
	mov r1, #0
	ldrsh r2, [r6, r1]
	ldr r3, [r3, #36]
	add r2, r3, r2
	str r2, [sp, #4]
	mov r4, #6
	ldrsh r0, [r6, r4]
	mov r4, #4
	ldrsh r1, [r6, r4]
	sub r0, r0, r1
	add r4, r5, r0
	str r4, [sp, #8]
	mov r0, #128
	lsl r0, r0, #1
	add r2, r2, r0
	str r2, [sp, #12]
	cmp r7, #0
	ble _0804F300
	mov r0, #128
	lsl r0, r0, #4
	b _0804F302
_0804F2FC:
	.4byte 0xFFFFFB00
_0804F300:
	ldr r0, _0804F32C  @ =0xFFFFF800
_0804F302:
	add r1, r5, r0
	str r1, [sp]
	add r0, r4, r0
	str r0, [sp, #8]
	mov r1, #2
	ldrsh r0, [r6, r1]
	add r0, r3, r0
	str r0, [sp, #12]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	mov r0, #0
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804F32C:
	.4byte 0xFFFFF800
	THUMB_FUNC_END sub_0804F2B4

	THUMB_FUNC_START sub_0804F330
sub_0804F330: @ 0x0804F330
	push {r4,r5,lr}
	sub sp, sp, #16
	ldr r4, [r0, #100]
	mov r2, #4
	ldrsh r1, [r4, r2]
	ldr r3, [r0, #32]
	add r1, r3, r1
	str r1, [sp]
	mov r5, #0
	ldrsh r1, [r4, r5]
	ldr r2, [r0, #36]
	add r1, r2, r1
	str r1, [sp, #4]
	mov r5, #6
	ldrsh r1, [r4, r5]
	add r3, r3, r1
	str r3, [sp, #8]
	mov r3, #2
	ldrsh r1, [r4, r3]
	add r2, r2, r1
	str r2, [sp, #12]
	mov r5, #48
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _0804F370
	mov r1, #0
	cmp r0, #0
	ble _0804F372
	ldr r1, _0804F36C  @ =0x00000672
	b _0804F372
_0804F36C:
	.4byte 0x00000672
_0804F370:
	ldr r1, _0804F384  @ =0xFFFFF98E
_0804F372:
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _0804F388
	mov r0, #0
	b _0804F38A
_0804F384:
	.4byte 0xFFFFF98E
_0804F388:
	mov r0, #1
_0804F38A:
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F330

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F394
sub_0804F394: @ 0x0804F394
	push {r4,lr}
	sub sp, sp, #16
	add r2, r0, #0
	add r2, r2, #132
	ldr r4, [r2]
	ldrb r2, [r4, #1]
	lsl r2, r2, #7
	ldr r3, [r0, #32]
	add r3, r3, r2
	ldrb r2, [r4, #2]
	lsl r2, r2, #8
	ldr r4, [r0, #36]
	add r2, r4, r2
	sub r0, r3, r1
	str r0, [sp]
	str r4, [sp, #4]
	add r3, r3, r1
	str r3, [sp, #8]
	str r2, [sp, #12]
	mov r0, sp
	mov r1, #7
	bl sub_0800678C
	lsl r0, r0, #24
	lsr r0, r0, #24
	add sp, sp, #16
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F394

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F3D0
sub_0804F3D0: @ 0x0804F3D0
	push {r4-r7,lr}
	lsl r0, r0, #16
	lsr r3, r0, #16
	lsl r1, r1, #16
	lsr r1, r1, #16
	mov r4, #0
	ldr r0, _0804F418  @ =gUnknown_03001BC8
	ldrb r2, [r0]
	cmp r4, r2
	bge _0804F42E
	ldr r0, _0804F41C  @ =gUnknown_03001BB0
	mov r12, r0
	lsl r0, r3, #16
	asr r7, r0, #16
	lsl r0, r1, #16
	asr r6, r0, #16
	add r5, r2, #0
_0804F3F2:
	lsl r0, r4, #16
	asr r1, r0, #14
	add r1, r1, r12
	ldr r2, [r1]
	mov r3, #4
	ldrsh r1, [r2, r3]
	add r3, r0, #0
	cmp r1, r7
	bne _0804F420
	add r0, r2, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r6
	bge _0804F420
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _0804F430
_0804F418:
	.4byte gUnknown_03001BC8
_0804F41C:
	.4byte gUnknown_03001BB0
_0804F420:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r3, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, r5
	blt _0804F3F2
_0804F42E:
	mov r0, #0
_0804F430:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F3D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F438
sub_0804F438: @ 0x0804F438
	bx lr
	THUMB_FUNC_END sub_0804F438

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F43C
sub_0804F43C: @ 0x0804F43C
	bx lr
	THUMB_FUNC_END sub_0804F43C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F440
sub_0804F440: @ 0x0804F440
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r2, #1
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0804F494
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne _0804F47C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	eor r2, r2, r0
	ldr r0, _0804F474  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F478  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _0804F494
_0804F474:
	.4byte 0x03000386
_0804F478:
	.4byte gUnknown_080B5F80
_0804F47C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	eor r2, r2, r0
	ldr r0, _0804F49C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F4A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
_0804F494:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F49C:
	.4byte 0x03000386
_0804F4A0:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F440

	THUMB_FUNC_START sub_0804F4A4
sub_0804F4A4: @ 0x0804F4A4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804F4D4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F4CC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F4D0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804F4F6
_0804F4CC:
	.4byte 0x03000386
_0804F4D0:
	.4byte gUnknown_080B5F80
_0804F4D4:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	ble _0804F4F6
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F500  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F504  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #36
	bl sub_0804A644
_0804F4F6:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804F500:
	.4byte 0x03000386
_0804F504:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F4A4

	THUMB_FUNC_START sub_0804F508
sub_0804F508: @ 0x0804F508
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804F52E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F538  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F53C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
_0804F52E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804F538:
	.4byte 0x03000386
_0804F53C:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F508

	THUMB_FUNC_START sub_0804F540
sub_0804F540: @ 0x0804F540
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804F570
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F568  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F56C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804F5A4
_0804F568:
	.4byte 0x03000386
_0804F56C:
	.4byte gUnknown_080B5F80
_0804F570:
	mov r0, #11
	mov r1, #20
	bl sub_0804F3D0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804F5A4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F5AC  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F5B0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #11
	bl sub_0804A644
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
_0804F5A4:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F5AC:
	.4byte 0x03000386
_0804F5B0:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F540

	THUMB_FUNC_START sub_0804F5B4
sub_0804F5B4: @ 0x0804F5B4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804F638
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804F5F0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F5E8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F5EC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804F638
_0804F5E8:
	.4byte 0x03000386
_0804F5EC:
	.4byte gUnknown_080B5F80
_0804F5F0:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	ble _0804F612
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F640  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F644  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804F612:
	mov r1, #128
	lsl r1, r1, #5
	add r0, r4, #0
	bl sub_0804FAB0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804F638
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F640  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F644  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804F638:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F640:
	.4byte 0x03000386
_0804F644:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F5B4

	THUMB_FUNC_START sub_0804F648
sub_0804F648: @ 0x0804F648
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804F678
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F670  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F674  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _0804F6C0
_0804F670:
	.4byte 0x03000386
_0804F674:
	.4byte gUnknown_080B5F80
_0804F678:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	ble _0804F69A
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F6C8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F6CC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804F69A:
	mov r1, #128
	lsl r1, r1, #5
	add r0, r4, #0
	bl sub_0804FAB0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804F6C0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F6C8  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F6CC  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804F6C0:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F6C8:
	.4byte 0x03000386
_0804F6CC:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F648

	THUMB_FUNC_START sub_0804F6D0
sub_0804F6D0: @ 0x0804F6D0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0804F714  @ =gUnknown_030012E4
	mov r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _0804F70C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F718  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F71C  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #40
	bl sub_0804A644
	ldr r0, _0804F720  @ =gCurrentLevelHeight
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	str r0, [r4, #36]
	ldr r1, _0804F724  @ =gUnknown_03001BCC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0804F70C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F714:
	.4byte gUnknown_030012E4
_0804F718:
	.4byte 0x03000386
_0804F71C:
	.4byte gUnknown_080B5F80
_0804F720:
	.4byte gCurrentLevelHeight
_0804F724:
	.4byte gUnknown_03001BCC
	THUMB_FUNC_END sub_0804F6D0

	THUMB_FUNC_START sub_0804F728
sub_0804F728: @ 0x0804F728
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _0804F74C
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _0804F794  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _0804F78A
_0804F74C:
	ldr r0, _0804F798  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #5
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F79C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F7A0  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #47
	bl sub_0804A644
	ldr r2, _0804F7A4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #18
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0800A258
_0804F78A:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804F794:
	.4byte gUnknown_030012E4
_0804F798:
	.4byte 0xFFFFFF00
_0804F79C:
	.4byte 0x03000386
_0804F7A0:
	.4byte gUnknown_080B5F80
_0804F7A4:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_0804F728

	THUMB_FUNC_START sub_0804F7A8
sub_0804F7A8: @ 0x0804F7A8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804F7FC
	add r0, r4, #0
	bl sub_0804E018
	lsl r0, r0, #24
	cmp r0, #0
	beq _0804F7DA
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F804  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F808  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
_0804F7DA:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	ble _0804F7FC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F804  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F808  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804F7FC:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F804:
	.4byte 0x03000386
_0804F808:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F7A8

	THUMB_FUNC_START sub_0804F80C
sub_0804F80C: @ 0x0804F80C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_0804DE70
	lsl r0, r0, #24
	cmp r0, #0
	bne _0804F83C
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0804F83C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F844  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F848  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
_0804F83C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F844:
	.4byte 0x03000386
_0804F848:
	.4byte gUnknown_080B5F80
	THUMB_FUNC_END sub_0804F80C

	THUMB_FUNC_START sub_0804F84C
sub_0804F84C: @ 0x0804F84C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0804F884
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804F88C  @ =0x03000386
	ldrb r3, [r0]
	ldr r0, _0804F890  @ =gUnknown_080B5F80
	str r0, [sp]
	add r0, r4, #0
	mov r1, #40
	bl sub_0804A644
	ldr r0, _0804F894  @ =gCurrentLevelHeight
	mov r1, #0
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	str r0, [r4, #36]
	ldr r1, _0804F898  @ =gUnknown_03001BCC
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
_0804F884:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804F88C:
	.4byte 0x03000386
_0804F890:
	.4byte gUnknown_080B5F80
_0804F894:
	.4byte gCurrentLevelHeight
_0804F898:
	.4byte gUnknown_03001BCC
	THUMB_FUNC_END sub_0804F84C

	THUMB_FUNC_START sub_0804F89C
sub_0804F89C: @ 0x0804F89C
	push {lr}
	bl sub_0804C5FC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0804F89C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F8A8
sub_0804F8A8: @ 0x0804F8A8
	push {r4,lr}
	add r3, r0, #0
	ldr r2, _0804F8D0  @ =gUnknown_03001940
	mov r0, #67
	add r0, r0, r3
	mov r12, r0
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	mov r1, r12
	ldrb r4, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0804F8D4
	mov r0, #255
	b _0804F8F6
_0804F8D0:
	.4byte gUnknown_03001940
_0804F8D4:
	ldr r1, [r3, #116]
	ldr r0, [r2, #108]
	cmp r1, r0
	blt _0804F8E8
	ldr r1, [r3, #108]
	ldr r0, [r2, #116]
	cmp r1, r0
	bgt _0804F8E8
	mov r0, #1
	b _0804F900
_0804F8E8:
	mov r1, #255
	add r0, r4, #0
	orr r0, r0, r1
	mov r2, r12
	strb r0, [r2]
	ldrb r0, [r3, #11]
	orr r0, r0, r1
_0804F8F6:
	strb r0, [r3, #11]
	mov r0, #1
	neg r0, r0
	str r0, [r3, #76]
	mov r0, #0
_0804F900:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F8A8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0804F908
sub_0804F908: @ 0x0804F908
	push {lr}
	mov r1, #0
	ldr r0, _0804F91C  @ =gUnknown_03000387
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804F916
	mov r1, #1
_0804F916:
	add r0, r1, #0
	pop {r1}
	bx r1
_0804F91C:
	.4byte gUnknown_03000387
	THUMB_FUNC_END sub_0804F908

	THUMB_FUNC_START sub_0804F920
sub_0804F920: @ 0x0804F920
	push {lr}
	add r1, r0, #0
	lsl r1, r1, #24
	lsr r3, r1, #24
	cmp r3, #0
	beq _0804F944
	ldr r2, _0804F93C  @ =gUnknown_03000387
	mov r1, #1
	strb r1, [r2]
	ldr r2, _0804F940  @ =gUnknown_03001B8C
	mov r1, #0
	strb r1, [r2]
	b _0804F94E
	.byte 0x00
	.byte 0x00
_0804F93C:
	.4byte gUnknown_03000387
_0804F940:
	.4byte gUnknown_03001B8C
_0804F944:
	ldr r1, _0804F954  @ =gUnknown_03000387
	mov r2, #2
	strb r2, [r1]
	ldr r1, _0804F958  @ =gUnknown_03001B80
	strb r3, [r1]
_0804F94E:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0804F954:
	.4byte gUnknown_03000387
_0804F958:
	.4byte gUnknown_03001B80
	THUMB_FUNC_END sub_0804F920

	THUMB_FUNC_START sub_0804F95C
sub_0804F95C: @ 0x0804F95C
	push {lr}
	sub sp, sp, #12
	ldr r0, _0804F9B0  @ =gUnknown_03001BA0
	ldrb r2, [r0]
	cmp r2, #0
	bne _0804F9CC
	ldr r0, _0804F9B4  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #30
	ble _0804F9CC
	ldr r1, _0804F9B8  @ =0x03000390
	ldr r0, _0804F9BC  @ =gUnknown_03001B88
	ldr r0, [r0]
	sub r0, r0, #16
	lsl r0, r0, #8
	str r0, [r1]
	ldr r0, _0804F9C0  @ =gUnknown_0300038C
	strb r2, [r0]
	ldr r1, _0804F9C4  @ =gUnknown_0300038B
	mov r0, #1
	strb r0, [r1]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _0804F9C8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #12
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	b _0804F9CE
_0804F9B0:
	.4byte gUnknown_03001BA0
_0804F9B4:
	.4byte gUnknown_030019AC
_0804F9B8:
	.4byte 0x03000390
_0804F9BC:
	.4byte gUnknown_03001B88
_0804F9C0:
	.4byte gUnknown_0300038C
_0804F9C4:
	.4byte gUnknown_0300038B
_0804F9C8:
	.4byte gUnknown_030019A0
_0804F9CC:
	mov r0, #0
_0804F9CE:
	add sp, sp, #12
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F95C

	THUMB_FUNC_START sub_0804F9D4
sub_0804F9D4: @ 0x0804F9D4
	push {r4,r5,lr}
	mov r2, #0
	ldr r0, _0804FA1C  @ =gUnknown_03001BC8
	ldrb r1, [r0]
	add r5, r0, #0
	cmp r2, r1
	bge _0804FA08
	ldr r4, _0804FA20  @ =gUnknown_03001BB0
	add r3, r1, #0
_0804F9E6:
	lsl r0, r2, #16
	asr r1, r0, #16
	lsl r0, r1, #2
	add r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	sub r0, r0, #37
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bls _0804FA28
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	blt _0804F9E6
_0804FA08:
	ldr r0, _0804FA24  @ =gUnknown_03001BA0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FA16
	ldrb r0, [r5]
	cmp r0, #0
	bne _0804FA28
_0804FA16:
	mov r0, #1
	b _0804FA2A
	.byte 0x00
	.byte 0x00
_0804FA1C:
	.4byte gUnknown_03001BC8
_0804FA20:
	.4byte gUnknown_03001BB0
_0804FA24:
	.4byte gUnknown_03001BA0
_0804FA28:
	mov r0, #0
_0804FA2A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804F9D4

	THUMB_FUNC_START sub_0804FA30
sub_0804FA30: @ 0x0804FA30
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	add r6, r1, #0
	mov r2, #0
	ldr r0, _0804FA9C  @ =gUnknown_03001BC8
	ldrb r3, [r0]
	mov r8, r0
	cmp r2, r3
	bcs _0804FA68
	ldr r5, _0804FAA0  @ =gUnknown_03001BB0
	add r0, r4, #0
	add r0, r0, #61
	ldrb r1, [r0]
_0804FA4E:
	lsl r0, r2, #2
	add r0, r0, r5
	ldr r0, [r0]
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, r1
	bne _0804FA5E
	add r7, r2, #0
_0804FA5E:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r3
	bcc _0804FA4E
_0804FA68:
	mov r2, #0
	mov r0, r8
	ldrb r3, [r0]
	cmp r2, r3
	bcs _0804FA94
	ldr r4, _0804FAA0  @ =gUnknown_03001BB0
	add r0, r6, #0
	add r0, r0, #61
	ldrb r1, [r0]
_0804FA7A:
	lsl r0, r2, #2
	add r0, r0, r4
	ldr r0, [r0]
	add r0, r0, #61
	ldrb r0, [r0]
	cmp r0, r1
	bne _0804FA8A
	mov r12, r2
_0804FA8A:
	add r0, r2, #1
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, r3
	bcc _0804FA7A
_0804FA94:
	cmp r7, r12
	bcc _0804FAA4
	mov r0, #0
	b _0804FAA6
_0804FA9C:
	.4byte gUnknown_03001BC8
_0804FAA0:
	.4byte gUnknown_03001BB0
_0804FAA4:
	mov r0, #1
_0804FAA6:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804FA30

	THUMB_FUNC_START sub_0804FAB0
sub_0804FAB0: @ 0x0804FAB0
	push {r4-r7,lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	ldr r0, _0804FAF0  @ =gUnknown_03001BC8
	ldrb r2, [r0]
	cmp r1, r2
	bge _0804FB10
	ldr r0, _0804FAF4  @ =gUnknown_03001BB0
	mov r12, r0
	add r0, r5, #0
	add r0, r0, #61
	ldrb r7, [r0]
	add r6, r2, #0
_0804FACC:
	lsl r0, r1, #16
	asr r1, r0, #14
	add r1, r1, r12
	ldr r2, [r1]
	add r1, r2, #0
	add r1, r1, #61
	ldrb r1, [r1]
	add r3, r0, #0
	cmp r1, r7
	beq _0804FB02
	ldr r1, [r2, #32]
	ldr r0, [r5, #32]
	sub r2, r1, r0
	cmp r2, #0
	blt _0804FAF8
	cmp r2, r4
	blt _0804FAFE
	b _0804FB02
_0804FAF0:
	.4byte gUnknown_03001BC8
_0804FAF4:
	.4byte gUnknown_03001BB0
_0804FAF8:
	sub r0, r0, r1
	cmp r0, r4
	bge _0804FB02
_0804FAFE:
	mov r0, #0
	b _0804FB12
_0804FB02:
	mov r1, #128
	lsl r1, r1, #9
	add r0, r3, r1
	lsr r1, r0, #16
	asr r0, r0, #16
	cmp r0, r6
	blt _0804FACC
_0804FB10:
	mov r0, #1
_0804FB12:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0804FAB0

	THUMB_FUNC_START sub_0804FB18
sub_0804FB18: @ 0x0804FB18
	push {r4,lr}
	ldr r3, _0804FB6C  @ =0x030003A4
	ldr r2, _0804FB70  @ =gNextLevelInLevelTable
	mov r0, #18
	ldrsh r1, [r2, r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #4
	mov r4, #16
	ldrsh r1, [r2, r4]
	lsl r1, r1, #3
	ldr r2, _0804FB74  @ =gUnknown_080B6C30
	add r1, r1, r2
	add r0, r0, r1
	str r0, [r3]
	ldr r1, _0804FB78  @ =0x030003B8
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0804FB7C  @ =0x030003B9
	mov r0, #1
	strb r0, [r1]
	ldr r2, _0804FB80  @ =0x03000398
	mov r1, #0
	mov r0, #1
	strb r0, [r2, #8]
	strb r1, [r2, #9]
	strb r1, [r2, #10]
	strb r1, [r2, #11]
	ldr r1, _0804FB84  @ =gUnknown_030019AC
	ldr r3, [r1]
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0804FB88
	ldr r0, [r3, #32]
	mov r3, #192
	lsl r3, r3, #4
	add r0, r0, r3
	b _0804FB90
_0804FB6C:
	.4byte 0x030003A4
_0804FB70:
	.4byte gNextLevelInLevelTable
_0804FB74:
	.4byte gUnknown_080B6C30
_0804FB78:
	.4byte 0x030003B8
_0804FB7C:
	.4byte 0x030003B9
_0804FB80:
	.4byte 0x03000398
_0804FB84:
	.4byte gUnknown_030019AC
_0804FB88:
	ldr r0, [r3, #32]
	mov r4, #128
	lsl r4, r4, #3
	add r0, r0, r4
_0804FB90:
	str r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #36]
	str r0, [r2, #4]
	ldr r1, _0804FBA8  @ =0x030003A8
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
_0804FBA8:
	.4byte 0x030003A8
	THUMB_FUNC_END sub_0804FB18

	THUMB_FUNC_START sub_0804FBAC
sub_0804FBAC: @ 0x0804FBAC
	push {r4,lr}
	ldr r3, _0804FBF0  @ =0x030003A8
	ldrh r1, [r3]
	mov r2, #0
	ldrsh r0, [r3, r2]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	ble _0804FC50
	add r2, r1, #1
	strh r2, [r3]
	lsl r1, r2, #16
	ldr r0, _0804FBF4  @ =0x012B0000
	cmp r1, r0
	ble _0804FC08
	ldr r0, _0804FBF8  @ =0x03001BD4
	ldr r0, [r0]
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _0804FBFC  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #153
	mov r1, #1
	strb r1, [r0]
	strh r4, [r3]
	ldr r2, _0804FC00  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _0804FC04  @ =0xFBFFFFFF
	and r0, r0, r1
	str r0, [r2]
	b _0804FC50
_0804FBF0:
	.4byte 0x030003A8
_0804FBF4:
	.4byte 0x012B0000
_0804FBF8:
	.4byte 0x03001BD4
_0804FBFC:
	.4byte gUnknown_03001940
_0804FC00:
	.4byte gUnknown_03001A1C
_0804FC04:
	.4byte 0xFBFFFFFF
_0804FC08:
	mov r0, #4
	and r2, r2, r0
	lsl r0, r2, #16
	lsr r3, r0, #16
	ldr r0, _0804FC34  @ =0x03001BD4
	ldr r1, [r0]
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #55
	ble _0804FC3C
	add r0, r1, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _0804FC38  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #153
	mov r1, #1
	strb r1, [r0]
	b _0804FC50
_0804FC34:
	.4byte 0x03001BD4
_0804FC38:
	.4byte gUnknown_03001940
_0804FC3C:
	add r0, r1, #0
	add r0, r0, #61
	ldrb r2, [r0]
	ldr r0, _0804FCA4  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	mul r0, r2, r0
	add r0, r0, r1
	add r0, r0, #153
	strb r3, [r0]
_0804FC50:
	ldr r0, _0804FCA8  @ =0x03001A60
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804FC9E
	ldr r0, _0804FCAC  @ =0x030003B9
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0804FC7A
	ldr r0, _0804FCB0  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	ldr r1, _0804FCB4  @ =0x00004002
	and r0, r0, r1
	cmp r0, #0
	beq _0804FC7A
	bl sub_08053278
_0804FC7A:
	ldr r1, _0804FCB8  @ =0x03000398
	ldrb r0, [r1, #11]
	sub r0, r0, #1
	strb r0, [r1, #11]
	lsl r0, r0, #24
	lsr r2, r0, #24
	cmp r2, #0
	bne _0804FC9E
	ldrb r0, [r1, #9]
	add r0, r0, #1
	strb r0, [r1, #9]
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r3, [r1, #10]
	cmp r0, r3
	bcc _0804FC9C
	strb r2, [r1, #9]
_0804FC9C:
	strb r2, [r1, #11]
_0804FC9E:
	pop {r4}
	pop {r0}
	bx r0
_0804FCA4:
	.4byte gUnknown_03001940
_0804FCA8:
	.4byte 0x03001A60
_0804FCAC:
	.4byte 0x030003B9
_0804FCB0:
	.4byte gUnknown_030019AC
_0804FCB4:
	.4byte 0x00004002
_0804FCB8:
	.4byte 0x03000398
	THUMB_FUNC_END sub_0804FBAC

	THUMB_FUNC_START sub_0804FCBC
sub_0804FCBC: @ 0x0804FCBC
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
	ldr r1, _0804FDCC  @ =0x030003AC
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0804FDD0  @ =0x03001960
	ldr r0, _0804FDD4  @ =0x03001BD4
	str r7, [r0]
	str r7, [r1]
	add r1, r4, #0
	add r1, r1, #164
	ldr r0, _0804FDD8  @ =0x08050165
	str r0, [r1]
	add r1, r1, #4
	ldr r0, _0804FDDC  @ =0x08050201
	str r0, [r1]
	mov r1, #0
	mov r9, r1
	mov r0, #0
	strh r2, [r7]
	strh r0, [r7, #4]
	mov r0, #62
	strh r0, [r7, #6]
	mov r2, #4
	ldrsh r0, [r7, r2]
	lsl r3, r0, #3
	sub r3, r3, r0
	lsl r3, r3, #3
	ldr r0, _0804FDE0  @ =gUnknown_080B77F4
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
	ldr r5, _0804FDE4  @ =0x030003AD
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
	ldr r0, _0804FDE8  @ =0xFFFFFE00
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
	ldr r2, _0804FDEC  @ =0x03001C50
	mov r1, r9
	strb r1, [r2]
	ldrb r0, [r3, #22]
	strb r0, [r2, #1]
	ldrb r0, [r3, #23]
	strb r0, [r2, #2]
	ldr r0, _0804FDF0  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #20
	and r0, r0, r1
	add r4, r2, #0
	cmp r0, #0
	beq _0804FDF4
	mov r0, #1
	strb r0, [r4, #16]
	add r2, r7, #0
	add r2, r2, #64
	strb r0, [r2]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	sub r0, r0, #18
	and r0, r0, r1
	strb r0, [r3]
	add r5, r2, #0
	b _0804FE0C
	.byte 0x00
	.byte 0x00
_0804FDCC:
	.4byte 0x030003AC
_0804FDD0:
	.4byte 0x03001960
_0804FDD4:
	.4byte 0x03001BD4
_0804FDD8:
	.4byte sub_08050164
_0804FDDC:
	.4byte sub_08050200
_0804FDE0:
	.4byte gUnknown_080B77F4
_0804FDE4:
	.4byte 0x030003AD
_0804FDE8:
	.4byte 0xFFFFFE00
_0804FDEC:
	.4byte 0x03001C50
_0804FDF0:
	.4byte gUnknown_03001A1C
_0804FDF4:
	mov r2, r9
	strb r2, [r4, #16]
	add r0, r7, #0
	add r0, r0, #64
	strb r2, [r0]
	add r3, r7, #0
	add r3, r3, #127
	ldrb r1, [r3]
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r3]
	add r5, r0, #0
_0804FE0C:
	mov r1, #0
	str r1, [r4, #12]
	str r1, [r4, #8]
	mov r0, #5
	strb r0, [r4, #19]
	mov r0, #1
	strb r0, [r4, #17]
	strb r1, [r4, #18]
	str r1, [r4, #32]
	ldr r0, [r7, #100]
	str r0, [r7, #104]
	add r0, r7, #0
	bl sub_0804A424
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0804FE40
	ldr r2, _0804FE3C  @ =0x03001964
	ldr r1, [r2]
	ldr r0, [r7, #32]
	mov r3, #192
	lsl r3, r3, #4
	b _0804FE48
_0804FE3C:
	.4byte 0x03001964
_0804FE40:
	ldr r2, _0804FE64  @ =0x03001964
	ldr r1, [r2]
	ldr r0, [r7, #32]
	ldr r3, _0804FE68  @ =0xFFFFF400
_0804FE48:
	add r0, r0, r3
	str r0, [r1, #32]
	ldr r1, [r2]
	ldr r0, [r7, #36]
	str r0, [r1, #36]
	bl sub_0804FB18
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0804FE64:
	.4byte 0x03001964
_0804FE68:
	.4byte 0xFFFFF400
	THUMB_FUNC_END sub_0804FCBC

	THUMB_FUNC_START sub_0804FE6C
sub_0804FE6C: @ 0x0804FE6C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #96]
	mov r0, #128
	lsl r0, r0, #11
	and r0, r0, r2
	cmp r0, #0
	beq _0804FED8
	mov r0, #128
	lsl r0, r0, #9
	and r2, r2, r0
	cmp r2, #0
	beq _0804FEB0
	ldr r0, _0804FEA4  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804FEA8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0804FEAC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #24
	bl sub_0804A644
	b _0804FFDC
	.byte 0x00
	.byte 0x00
_0804FEA4:
	.4byte gUnknown_030019AC
_0804FEA8:
	.4byte 0x030003AD
_0804FEAC:
	.4byte gUnknown_080B77F4
_0804FEB0:
	ldr r0, _0804FECC  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804FED0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0804FED4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #23
	bl sub_0804A644
	b _0804FFDC
	.byte 0x00
	.byte 0x00
_0804FECC:
	.4byte gUnknown_030019AC
_0804FED0:
	.4byte 0x030003AD
_0804FED4:
	.4byte gUnknown_080B77F4
_0804FED8:
	ldr r1, [r4, #92]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0804FF28
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r2
	cmp r0, #0
	bne _0804FF3C
	mov r0, #128
	lsl r0, r0, #10
	and r0, r0, r2
	cmp r0, #0
	bne _0804FF6E
	mov r0, #128
	lsl r0, r0, #12
	and r2, r2, r0
	cmp r2, #0
	bne _0804FF9E
	ldr r0, _0804FF1C  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804FF20  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0804FF24  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
	b _0804FFDC
_0804FF1C:
	.4byte gUnknown_030019AC
_0804FF20:
	.4byte 0x030003AD
_0804FF24:
	.4byte gUnknown_080B77F4
_0804FF28:
	mov r0, #128
	lsl r0, r0, #3
	and r1, r1, r0
	cmp r1, #0
	beq _0804FFDC
	mov r0, #128
	lsl r0, r0, #9
	and r0, r0, r2
	cmp r0, #0
	beq _0804FF64
_0804FF3C:
	ldr r0, _0804FF58  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804FF5C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0804FF60  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #20
	bl sub_0804A644
	b _0804FFDC
	.byte 0x00
	.byte 0x00
_0804FF58:
	.4byte gUnknown_030019AC
_0804FF5C:
	.4byte 0x030003AD
_0804FF60:
	.4byte gUnknown_080B77F4
_0804FF64:
	mov r0, #128
	lsl r0, r0, #10
	and r0, r0, r2
	cmp r0, #0
	beq _0804FF94
_0804FF6E:
	ldr r0, _0804FF88  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804FF8C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0804FF90  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #21
	bl sub_0804A644
	b _0804FFDC
_0804FF88:
	.4byte gUnknown_030019AC
_0804FF8C:
	.4byte 0x030003AD
_0804FF90:
	.4byte gUnknown_080B77F4
_0804FF94:
	mov r0, #128
	lsl r0, r0, #12
	and r2, r2, r0
	cmp r2, #0
	beq _0804FFC4
_0804FF9E:
	ldr r0, _0804FFB8  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0804FFBC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0804FFC0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #22
	bl sub_0804A644
	b _0804FFDC
_0804FFB8:
	.4byte gUnknown_030019AC
_0804FFBC:
	.4byte 0x030003AD
_0804FFC0:
	.4byte gUnknown_080B77F4
_0804FFC4:
	ldr r0, _0804FFFC  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050000  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050004  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #19
	bl sub_0804A644
_0804FFDC:
	ldr r0, _0804FFFC  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r4, #36]
	ldr r0, [r4, #92]
	ldr r1, _08050008  @ =0xFFFFF3FF
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, [r4, #96]
	ldr r1, _0805000C  @ =0xFFF2FFFF
	and r0, r0, r1
	str r0, [r4, #96]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0804FFFC:
	.4byte gUnknown_030019AC
_08050000:
	.4byte 0x030003AD
_08050004:
	.4byte gUnknown_080B77F4
_08050008:
	.4byte 0xFFFFF3FF
_0805000C:
	.4byte 0xFFF2FFFF
	THUMB_FUNC_END sub_0804FE6C

	THUMB_FUNC_START sub_08050010
sub_08050010: @ 0x08050010
	push {r4-r6,lr}
	add r3, r0, #0
	ldr r0, _08050054  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805005C
	ldr r2, _08050058  @ =0x03001964
	ldr r1, [r2]
	ldr r0, [r3, #32]
	str r0, [r1, #32]
	ldr r0, [r3, #36]
	str r0, [r1, #36]
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	add r1, r1, #64
	strb r0, [r1]
	ldr r2, [r2]
	add r0, r3, #0
	add r0, r0, #127
	ldrb r0, [r0]
	add r2, r2, #127
	mov r1, #16
	and r1, r1, r0
	ldrb r3, [r2]
	mov r0, #17
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2]
	b _0805015A
_08050054:
	.4byte gUnknown_030019A0
_08050058:
	.4byte 0x03001964
_0805005C:
	add r0, r3, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08050074
	ldr r0, [r3, #32]
	mov r1, #192
	lsl r1, r1, #4
	add r2, r0, r1
	b _0805007A
_08050074:
	ldr r0, [r3, #32]
	ldr r4, _08050084  @ =0xFFFFF400
	add r2, r0, r4
_0805007A:
	cmp r2, #0
	bge _08050088
	mov r2, #0
	b _08050098
	.byte 0x00
	.byte 0x00
_08050084:
	.4byte 0xFFFFF400
_08050088:
	ldr r0, _080500B4  @ =gCurrentLevelWidth
	mov r4, #0
	ldrsh r1, [r0, r4]
	lsl r0, r1, #8
	cmp r2, r0
	ble _08050098
	sub r0, r1, #1
	lsl r2, r0, #8
_08050098:
	ldr r5, [r3, #36]
	ldr r0, _080500B8  @ =0x03001964
	ldr r4, [r0]
	ldr r3, [r4, #32]
	sub r1, r3, r2
	add r6, r0, #0
	cmp r1, #0
	bge _080500AA
	sub r1, r2, r3
_080500AA:
	cmp r1, #255
	bgt _080500BC
	str r2, [r4, #32]
	b _0805010C
	.byte 0x00
	.byte 0x00
_080500B4:
	.4byte gCurrentLevelWidth
_080500B8:
	.4byte 0x03001964
_080500BC:
	cmp r3, r2
	bge _080500E2
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	ble _080500CE
	mov r1, #192
	lsl r1, r1, #2
	b _080500D2
_080500CE:
	mov r1, #128
	lsl r1, r1, #1
_080500D2:
	add r0, r3, r1
	str r0, [r4, #32]
	ldr r0, [r6]
	add r0, r0, #127
	ldrb r1, [r0]
	mov r2, #16
	orr r1, r1, r2
	b _0805010A
_080500E2:
	cmp r3, r2
	ble _0805010C
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	ble _080500F8
	ldr r1, _080500F4  @ =0xFFFFFD00
	b _080500FA
	.byte 0x00
	.byte 0x00
_080500F4:
	.4byte 0xFFFFFD00
_080500F8:
	ldr r1, _08050120  @ =0xFFFFFF00
_080500FA:
	add r0, r3, r1
	str r0, [r4, #32]
	ldr r0, [r6]
	add r0, r0, #127
	ldrb r2, [r0]
	mov r1, #17
	neg r1, r1
	and r1, r1, r2
_0805010A:
	strb r1, [r0]
_0805010C:
	ldr r3, [r6]
	ldr r2, [r3, #36]
	sub r1, r2, r5
	cmp r1, #0
	bge _08050118
	sub r1, r5, r2
_08050118:
	cmp r1, #255
	bgt _08050124
	str r5, [r3, #36]
	b _0805015A
_08050120:
	.4byte 0xFFFFFF00
_08050124:
	cmp r2, r5
	bge _0805013E
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	ble _08050138
	mov r4, #192
	lsl r4, r4, #2
	add r0, r2, r4
	b _08050158
_08050138:
	mov r1, #128
	lsl r1, r1, #1
	b _08050156
_0805013E:
	cmp r2, r5
	ble _0805015A
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	ble _08050154
	ldr r4, _08050150  @ =0xFFFFFD00
	add r0, r2, r4
	b _08050158
_08050150:
	.4byte 0xFFFFFD00
_08050154:
	ldr r1, _08050160  @ =0xFFFFFF00
_08050156:
	add r0, r2, r1
_08050158:
	str r0, [r3, #36]
_0805015A:
	pop {r4-r6}
	pop {r0}
	bx r0
_08050160:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_08050010

	THUMB_FUNC_START sub_08050164
sub_08050164: @ 0x08050164
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r4, #0
	bl sub_0804FBAC
	add r0, r4, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #48]
	add r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805019C  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	and r0, r0, r1
	cmp r0, #0
	bne _080501A4
	add r0, r4, #0
	add r0, r0, #84
	ldrh r1, [r0]
	add r1, r1, #1
	ldr r3, _080501A0  @ =0x00007FFF
	add r2, r3, #0
	and r1, r1, r2
	strh r1, [r0]
	b _080501AC
_0805019C:
	.4byte gUnknown_03001A1C
_080501A0:
	.4byte 0x00007FFF
_080501A4:
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #55
	ble _080501BC
_080501AC:
	add r0, r4, #0
	bl sub_0804A4E0
	add r0, r5, #0
	mov r1, #0
	bl sub_0804A580
	b _080501C2
_080501BC:
	mov r0, #0
	strh r0, [r4, #50]
	strh r0, [r4, #48]
_080501C2:
	ldr r2, [r4, #104]
	mov r3, #4
	ldrsh r0, [r2, r3]
	ldr r1, [r4, #32]
	add r0, r1, r0
	str r0, [r4, #108]
	mov r3, #6
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [r4, #116]
	mov r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #36]
	add r0, r1, r0
	str r0, [r4, #112]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [r4, #120]
	add r0, r4, #0
	bl sub_08050010
	ldr r0, [r4, #108]
	ldr r1, [r4, #112]
	ldr r2, [r4, #116]
	ldr r3, [r4, #120]
	bl sub_08003274
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08050164

	THUMB_FUNC_START sub_08050200
sub_08050200: @ 0x08050200
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, _08050284  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _080502A0
	mov r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #58
	beq _080502A0
	ldr r5, _08050288  @ =gUnknown_03001A1C
	ldr r0, [r5]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080502A0
	ldr r0, [r4, #36]
	add r1, r4, #0
	add r1, r1, #132
	ldr r1, [r1]
	asr r0, r0, #8
	ldrb r1, [r1, #2]
	add r0, r0, r1
	ldr r1, _0805028C  @ =gUnknown_030009E0
	ldrh r1, [r1]
	cmp r0, r1
	ble _080502A0
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #5
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050290  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050294  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #58
	bl sub_0804A644
	ldr r2, [r5]
	mov r1, #128
	lsl r1, r1, #8
	and r1, r1, r2
	cmp r1, #0
	bne _08050274
	ldr r1, _08050298  @ =0x02010800
	orr r2, r2, r1
	str r2, [r5]
_08050274:
	ldr r1, _0805029C  @ =gUnknown_030019A0
	ldr r2, [r1]
	mov r3, #128
	lsl r3, r3, #22
	orr r2, r2, r3
	str r2, [r1]
	b _080502FE
	.byte 0x00
	.byte 0x00
_08050284:
	.4byte gNextLevelInLevelTable
_08050288:
	.4byte gUnknown_03001A1C
_0805028C:
	.4byte gUnknown_030009E0
_08050290:
	.4byte 0x030003AD
_08050294:
	.4byte gUnknown_080B77F4
_08050298:
	.4byte 0x02010800
_0805029C:
	.4byte gUnknown_030019A0
_080502A0:
	mov r0, #15
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _080502E0
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #56
	bgt _080502E0
	ldr r0, _080502C8  @ =0x030003A8
	mov r3, #0
	ldrsh r1, [r0, r3]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _080502CC
	add r0, r4, #0
	bl sub_080532C0
	b _080502FE
	.byte 0x00
	.byte 0x00
_080502C8:
	.4byte 0x030003A8
_080502CC:
	mov r0, #0
	strb r0, [r4, #15]
	add r0, r2, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r4, #0
	bl _call_via_r1
	b _080502FE
_080502E0:
	add r0, r2, #0
	add r0, r0, #160
	ldr r0, [r0]
	ldr r1, [r0, #52]
	add r0, r4, #0
	bl _call_via_r1
	mov r1, #11
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bge _080502FE
	add r2, r4, #0
	add r2, r2, #67
	mov r1, #255
	strb r1, [r2]
_080502FE:
	add sp, sp, #4
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08050200

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08050308
sub_08050308: @ 0x08050308
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080503F0
	add r0, r4, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _080503F0
	ldr r0, _08050350  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080503F0
	ldr r2, _08050354  @ =gUnknown_030019AC
	ldr r1, [r2]
	ldr r0, [r4, #36]
	ldr r5, _08050358  @ =0xFFFFF000
	add r3, r0, r5
	ldr r0, [r1, #36]
	sub r1, r0, r3
	cmp r1, #0
	blt _0805035C
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	ble _08050366
	b _080503F0
	.byte 0x00
	.byte 0x00
_08050350:
	.4byte gUnknown_03001A1C
_08050354:
	.4byte gUnknown_030019AC
_08050358:
	.4byte 0xFFFFF000
_0805035C:
	sub r1, r3, r0
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	bgt _080503F0
_08050366:
	ldr r1, [r2]
	ldr r0, [r4, #32]
	ldr r2, _08050380  @ =0xFFFFF800
	add r3, r0, r2
	ldr r0, [r1, #32]
	sub r1, r0, r3
	cmp r1, #0
	blt _08050388
	ldr r0, _08050384  @ =0x000017FF
	cmp r1, r0
	ble _08050390
	b _080503F0
	.byte 0x00
	.byte 0x00
_08050380:
	.4byte 0xFFFFF800
_08050384:
	.4byte 0x000017FF
_08050388:
	sub r1, r3, r0
	ldr r0, _080503C4  @ =0x000017FF
	cmp r1, r0
	bgt _080503F0
_08050390:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #237
	mov r2, #0
	bl sub_080410B4
	ldr r0, _080503C8  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r4, #32]
	ldr r5, _080503CC  @ =0xFFFFF800
	add r1, r1, r5
	ldr r0, [r0, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _080503D8
	ldr r0, _080503D0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080503D4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl sub_0804A644
	b _080503EA
_080503C4:
	.4byte 0x000017FF
_080503C8:
	.4byte gUnknown_030019AC
_080503CC:
	.4byte 0xFFFFF800
_080503D0:
	.4byte 0x030003AD
_080503D4:
	.4byte gUnknown_080B77F4
_080503D8:
	ldr r0, _080503F8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080503FC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #1
	bl sub_0804A644
_080503EA:
	ldr r1, _08050400  @ =0x030003AC
	mov r0, #1
	strb r0, [r1]
_080503F0:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080503F8:
	.4byte 0x030003AD
_080503FC:
	.4byte gUnknown_080B77F4
_08050400:
	.4byte 0x030003AC
	THUMB_FUNC_END sub_08050308

	THUMB_FUNC_START sub_08050404
sub_08050404: @ 0x08050404
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050416
	b _0805052E
_08050416:
	add r0, r4, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050424
	b _0805052E
_08050424:
	ldr r0, _08050458  @ =0x03001AA0
	add r0, r0, #97
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050430
	b _0805052E
_08050430:
	ldr r0, _0805045C  @ =0x030003B9
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0805043E
	b _0805052E
_0805043E:
	ldr r1, _08050460  @ =0x03000398
	ldr r5, [r1]
	ldr r0, [r4, #32]
	sub r3, r5, r0
	add r6, r1, #0
	add r2, r0, #0
	cmp r3, #0
	blt _08050464
	mov r0, #192
	lsl r0, r0, #5
	cmp r3, r0
	bgt _0805046E
	b _080504F8
_08050458:
	.4byte 0x03001AA0
_0805045C:
	.4byte 0x030003B9
_08050460:
	.4byte 0x03000398
_08050464:
	sub r1, r2, r5
	mov r0, #192
	lsl r0, r0, #5
	cmp r1, r0
	ble _080504F8
_0805046E:
	ldr r0, [r6]
	sub r0, r0, r2
	cmp r0, #0
	bge _080504B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0805049C
	ldr r0, _08050494  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050498  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _0805050C
	.byte 0x00
	.byte 0x00
_08050494:
	.4byte 0x030003AD
_08050498:
	.4byte gUnknown_080B77F4
_0805049C:
	ldr r0, _080504AC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080504B0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	b _080504CE
	.byte 0x00
	.byte 0x00
_080504AC:
	.4byte 0x030003AD
_080504B0:
	.4byte gUnknown_080B77F4
_080504B4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080504E0
	ldr r0, _080504D8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080504DC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
_080504CE:
	mov r2, #1
	bl sub_0804A644
	b _0805052E
	.byte 0x00
	.byte 0x00
_080504D8:
	.4byte 0x030003AD
_080504DC:
	.4byte gUnknown_080B77F4
_080504E0:
	ldr r0, _080504F0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080504F4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	b _0805050C
	.byte 0x00
	.byte 0x00
_080504F0:
	.4byte 0x030003AD
_080504F4:
	.4byte gUnknown_080B77F4
_080504F8:
	ldr r0, [r6]
	sub r0, r0, r2
	cmp r0, #0
	bge _0805051C
	ldr r0, _08050514  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050518  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
_0805050C:
	mov r2, #0
	bl sub_0804A644
	b _0805052E
_08050514:
	.4byte 0x030003AD
_08050518:
	.4byte gUnknown_080B77F4
_0805051C:
	ldr r0, _08050538  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805053C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl sub_0804A644
_0805052E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08050538:
	.4byte 0x030003AD
_0805053C:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08050404

	THUMB_FUNC_START sub_08050540
sub_08050540: @ 0x08050540
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	bne _08050606
	add r0, r4, #0
	bl sub_08052A64
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _08050564
	strh r5, [r4, #58]
	b _080507EE
_08050564:
	add r0, r4, #0
	mov r1, #0
	bl sub_08052F48
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050576
	strh r6, [r4, #58]
	b _080507EE
_08050576:
	ldr r2, _080505BC  @ =0x03000398
	ldr r1, [r2]
	ldr r0, [r4, #32]
	sub r5, r1, r0
	cmp r5, #0
	bge _08050584
	sub r5, r0, r1
_08050584:
	ldr r1, [r2, #4]
	ldr r0, [r4, #36]
	sub r7, r1, r0
	cmp r7, #0
	bge _08050590
	sub r7, r0, r1
_08050590:
	ldr r0, _080505C0  @ =0x030003B9
	mov r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _080505D0
	ldr r0, _080505C4  @ =0x00000BFF
	cmp r5, r0
	bgt _080505D0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080505C8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080505CC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
	strh r6, [r4, #58]
	b _080507EE
	.byte 0x00
	.byte 0x00
_080505BC:
	.4byte 0x03000398
_080505C0:
	.4byte 0x030003B9
_080505C4:
	.4byte 0x00000BFF
_080505C8:
	.4byte 0x030003AD
_080505CC:
	.4byte gUnknown_080B77F4
_080505D0:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_08053394
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050618
	ldr r0, _0805060C  @ =0x03000398
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _0805062C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050610  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050614  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
_08050606:
	mov r0, #0
	strh r0, [r4, #58]
	b _080507EE
_0805060C:
	.4byte 0x03000398
_08050610:
	.4byte 0x030003AD
_08050614:
	.4byte gUnknown_080B77F4
_08050618:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_08052C7C
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805062C
	b _080507EE
_0805062C:
	mov r0, #224
	lsl r0, r0, #4
	add r6, r4, #0
	add r6, r6, #64
	cmp r5, r0
	ble _080506BE
	ldr r0, _08050660  @ =0x03000398
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _08050684
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0805066C
	ldr r0, _08050664  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050668  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
	b _080506BA
_08050660:
	.4byte 0x03000398
_08050664:
	.4byte 0x030003AD
_08050668:
	.4byte gUnknown_080B77F4
_0805066C:
	ldr r0, _0805067C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050680  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	b _08050698
	.byte 0x00
	.byte 0x00
_0805067C:
	.4byte 0x030003AD
_08050680:
	.4byte gUnknown_080B77F4
_08050684:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _080506A8
	ldr r0, _080506A0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080506A4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
_08050698:
	mov r2, #1
	bl sub_0804A644
	b _080506BA
_080506A0:
	.4byte 0x030003AD
_080506A4:
	.4byte gUnknown_080B77F4
_080506A8:
	ldr r0, _080506E4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080506E8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
_080506BA:
	mov r0, #0
	strh r0, [r4, #58]
_080506BE:
	ldr r0, _080506EC  @ =0x03000398
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _080506F0
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _0805070E
	ldr r0, _080506E4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080506E8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	b _08050706
	.byte 0x00
	.byte 0x00
_080506E4:
	.4byte 0x030003AD
_080506E8:
	.4byte gUnknown_080B77F4
_080506EC:
	.4byte 0x03000398
_080506F0:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	beq _0805070E
	ldr r0, _08050790  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050794  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
_08050706:
	bl sub_0804A644
	mov r0, #0
	strh r0, [r4, #58]
_0805070E:
	ldrh r0, [r4, #4]
	sub r0, r0, #5
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _08050762
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08050728
	mov r0, #0
	strh r0, [r4, #58]
_08050728:
	add r0, r4, #0
	add r0, r0, #67
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08050762
	ldrh r0, [r4, #58]
	cmp r0, #4
	bhi _08050762
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08050762
	ldrb r2, [r6]
	ldr r0, _08050790  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050794  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #11
	bl sub_0804A644
	ldrh r0, [r4, #58]
	add r0, r0, #1
	strh r0, [r4, #58]
_08050762:
	ldr r0, _08050798  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _0805079C  @ =0xFFFFFE97
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bhi _080507A0
	mov r0, #189
	lsl r0, r0, #1
	cmp r1, r0
	beq _080507EE
	ldrb r2, [r6]
	ldr r0, _08050790  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050794  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	bl sub_0804A644
	b _080507EE
_08050790:
	.4byte 0x030003AD
_08050794:
	.4byte gUnknown_080B77F4
_08050798:
	.4byte gUnknown_030019AC
_0805079C:
	.4byte 0xFFFFFE97
_080507A0:
	ldr r0, _080507C4  @ =0x00001FFF
	cmp r7, r0
	bgt _080507EE
	ldr r0, _080507C8  @ =0x03000398
	ldr r0, [r0, #4]
	ldr r1, [r4, #36]
	cmp r0, r1
	bge _080507D4
	ldrb r2, [r6]
	ldr r0, _080507CC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080507D0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _080507EE
_080507C4:
	.4byte 0x00001FFF
_080507C8:
	.4byte 0x03000398
_080507CC:
	.4byte 0x030003AD
_080507D0:
	.4byte gUnknown_080B77F4
_080507D4:
	ldr r2, _080507F8  @ =0xFFFFF600
	add r0, r0, r2
	cmp r0, r1
	bge _080507EE
	ldrb r2, [r6]
	ldr r0, _080507FC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050800  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
_080507EE:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080507F8:
	.4byte 0xFFFFF600
_080507FC:
	.4byte 0x030003AD
_08050800:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08050540

	THUMB_FUNC_START sub_08050804
sub_08050804: @ 0x08050804
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #0
	beq _08050818
	b _08050A9A
_08050818:
	add r0, r4, #0
	bl sub_08052A64
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _0805082A
	strh r5, [r4, #58]
	b _08050A9E
_0805082A:
	add r0, r4, #0
	mov r1, #0
	bl sub_08052F48
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805083C
	strh r6, [r4, #58]
	b _08050A9E
_0805083C:
	ldr r2, _0805087C  @ =0x03000398
	ldr r1, [r2]
	ldr r0, [r4, #32]
	sub r5, r1, r0
	cmp r5, #0
	bge _0805084A
	sub r5, r0, r1
_0805084A:
	ldr r0, [r2, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	ldr r0, _08050880  @ =0x030003B9
	mov r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _08050890
	ldr r0, _08050884  @ =0x00000BFF
	cmp r5, r0
	bgt _08050890
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050888  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805088C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
	strh r6, [r4, #58]
	b _08050A9E
	.byte 0x00
	.byte 0x00
_0805087C:
	.4byte 0x03000398
_08050880:
	.4byte 0x030003B9
_08050884:
	.4byte 0x00000BFF
_08050888:
	.4byte 0x030003AD
_0805088C:
	.4byte gUnknown_080B77F4
_08050890:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_08053394
	lsl r0, r0, #24
	cmp r0, #0
	beq _080508D4
	ldr r0, _080508C8  @ =0x03000398
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _080508E8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080508CC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080508D0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
	b _08050A9A
_080508C8:
	.4byte 0x03000398
_080508CC:
	.4byte 0x030003AD
_080508D0:
	.4byte gUnknown_080B77F4
_080508D4:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_08052C7C
	lsl r0, r0, #24
	cmp r0, #0
	beq _080508E8
	b _08050A9E
_080508E8:
	mov r0, #224
	lsl r0, r0, #4
	add r6, r4, #0
	add r6, r6, #64
	cmp r5, r0
	ble _0805097A
	ldr r0, _0805091C  @ =0x03000398
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _08050940
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08050928
	ldr r0, _08050920  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050924  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	mov r2, #0
	bl sub_0804A644
	b _08050976
_0805091C:
	.4byte 0x03000398
_08050920:
	.4byte 0x030003AD
_08050924:
	.4byte gUnknown_080B77F4
_08050928:
	ldr r0, _08050938  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805093C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	b _08050954
	.byte 0x00
	.byte 0x00
_08050938:
	.4byte 0x030003AD
_0805093C:
	.4byte gUnknown_080B77F4
_08050940:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _08050964
	ldr r0, _0805095C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050960  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
_08050954:
	mov r2, #1
	bl sub_0804A644
	b _08050976
_0805095C:
	.4byte 0x030003AD
_08050960:
	.4byte gUnknown_080B77F4
_08050964:
	ldr r0, _080509A0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080509A4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0804A644
_08050976:
	mov r0, #0
	strh r0, [r4, #58]
_0805097A:
	ldr r0, _080509A8  @ =0x03000398
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _080509AC
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080509CA
	ldr r0, _080509A0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080509A4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	b _080509C2
	.byte 0x00
	.byte 0x00
_080509A0:
	.4byte 0x030003AD
_080509A4:
	.4byte gUnknown_080B77F4
_080509A8:
	.4byte 0x03000398
_080509AC:
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	beq _080509CA
	ldr r0, _08050A44  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050A48  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
_080509C2:
	bl sub_0804A644
	mov r0, #0
	strh r0, [r4, #58]
_080509CA:
	ldrh r0, [r4, #4]
	sub r0, r0, #5
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _08050A1E
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080509E4
	mov r0, #0
	strh r0, [r4, #58]
_080509E4:
	add r0, r4, #0
	add r0, r0, #67
	mov r1, #0
	ldrsb r1, [r0, r1]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08050A1E
	ldrh r0, [r4, #58]
	cmp r0, #4
	bhi _08050A1E
	add r0, r4, #0
	add r0, r0, #84
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08050A1E
	ldrb r2, [r6]
	ldr r0, _08050A44  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050A48  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #11
	bl sub_0804A644
	ldrh r0, [r4, #58]
	add r0, r0, #1
	strh r0, [r4, #58]
_08050A1E:
	ldr r0, _08050A4C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r2, _08050A50  @ =0xFFFFFE97
	add r0, r1, r2
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bls _08050A54
	ldrb r2, [r6]
	ldr r0, _08050A44  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050A48  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _08050A9E
_08050A44:
	.4byte 0x030003AD
_08050A48:
	.4byte gUnknown_080B77F4
_08050A4C:
	.4byte gUnknown_030019AC
_08050A50:
	.4byte 0xFFFFFE97
_08050A54:
	lsl r1, r1, #16
	mov r0, #189
	lsl r0, r0, #17
	cmp r1, r0
	bne _08050A9E
	ldr r0, _08050A7C  @ =0x03000398
	ldr r1, [r0, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _08050A88
	ldrb r2, [r6]
	ldr r0, _08050A80  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050A84  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	bl sub_0804A644
	b _08050A9A
_08050A7C:
	.4byte 0x03000398
_08050A80:
	.4byte 0x030003AD
_08050A84:
	.4byte gUnknown_080B77F4
_08050A88:
	ldrb r2, [r6]
	ldr r0, _08050AA8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050AAC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	bl sub_0804A644
_08050A9A:
	mov r0, #0
	strh r0, [r4, #58]
_08050A9E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08050AA8:
	.4byte 0x030003AD
_08050AAC:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08050804

	THUMB_FUNC_START sub_08050AB0
sub_08050AB0: @ 0x08050AB0
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050AC2
	b _08050D98
_08050AC2:
	add r0, r4, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050AD0
	b _08050D98
_08050AD0:
	add r0, r4, #0
	mov r1, #0
	bl sub_08052F48
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050AE0
	b _08050D98
_08050AE0:
	ldr r2, _08050B30  @ =0x03000398
	ldr r1, [r2]
	ldr r0, [r4, #32]
	sub r5, r1, r0
	cmp r5, #0
	bge _08050AEE
	sub r5, r0, r1
_08050AEE:
	ldr r1, [r2, #4]
	ldr r0, [r4, #36]
	sub r7, r1, r0
	cmp r7, #0
	bge _08050AFA
	sub r7, r0, r1
_08050AFA:
	ldr r0, _08050B34  @ =0x03001AA0
	add r0, r0, #97
	ldrb r0, [r0]
	cmp r0, #0
	bne _08050B16
	ldr r0, _08050B38  @ =0x030003B9
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08050B48
	ldr r0, _08050B3C  @ =0x00000BFF
	cmp r5, r0
	bgt _08050B48
_08050B16:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050B40  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050B44  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
	b _08050D98
	.byte 0x00
	.byte 0x00
_08050B30:
	.4byte 0x03000398
_08050B34:
	.4byte 0x03001AA0
_08050B38:
	.4byte 0x030003B9
_08050B3C:
	.4byte 0x00000BFF
_08050B40:
	.4byte 0x030003AD
_08050B44:
	.4byte gUnknown_080B77F4
_08050B48:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_08053394
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050B8C
	ldr r0, _08050B80  @ =0x03000398
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _08050BA0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050B84  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050B88  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
	b _08050D98
_08050B80:
	.4byte 0x03000398
_08050B84:
	.4byte 0x030003AD
_08050B88:
	.4byte gUnknown_080B77F4
_08050B8C:
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_08052C7C
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050BA0
	b _08050D98
_08050BA0:
	mov r0, #224
	lsl r0, r0, #4
	cmp r5, r0
	ble _08050C30
	ldr r0, _08050BD0  @ =0x03000398
	ldr r0, [r0]
	ldr r1, [r4, #32]
	sub r0, r0, r1
	cmp r0, #0
	bge _08050BF4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08050BDC
	ldr r0, _08050BD4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050BD8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _08050CCA
_08050BD0:
	.4byte 0x03000398
_08050BD4:
	.4byte 0x030003AD
_08050BD8:
	.4byte gUnknown_080B77F4
_08050BDC:
	ldr r0, _08050BEC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050BF0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	b _08050C7E
	.byte 0x00
	.byte 0x00
_08050BEC:
	.4byte 0x030003AD
_08050BF0:
	.4byte gUnknown_080B77F4
_08050BF4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08050C18
	ldr r0, _08050C10  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050C14  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _08050C7E
_08050C10:
	.4byte 0x030003AD
_08050C14:
	.4byte gUnknown_080B77F4
_08050C18:
	ldr r0, _08050C28  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050C2C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #9
	b _08050CCA
	.byte 0x00
	.byte 0x00
_08050C28:
	.4byte 0x030003AD
_08050C2C:
	.4byte gUnknown_080B77F4
_08050C30:
	ldr r0, _08050C60  @ =0x03000398
	ldr r6, [r0]
	ldr r3, [r4, #32]
	sub r5, r6, r3
	mov r12, r0
	cmp r5, #0
	bge _08050C90
	mov r1, #54
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08050C64
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #0
	beq _08050CDC
	sub r1, r3, r6
	mov r0, #160
	lsl r0, r0, #3
	cmp r1, r0
	ble _08050CDC
	b _08050C72
_08050C60:
	.4byte 0x03000398
_08050C64:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #0
	beq _08050CDC
_08050C72:
	ldr r0, _08050C88  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050C8C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
_08050C7E:
	mov r2, #1
	bl sub_0804A644
	b _08050D98
	.byte 0x00
	.byte 0x00
_08050C88:
	.4byte 0x030003AD
_08050C8C:
	.4byte gUnknown_080B77F4
_08050C90:
	mov r3, #54
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08050CB0
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #1
	beq _08050CDC
	mov r0, #160
	lsl r0, r0, #3
	cmp r5, r0
	ble _08050CDC
	b _08050CBE
_08050CB0:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r2, r0, #0
	cmp r1, #1
	beq _08050CDC
_08050CBE:
	ldr r0, _08050CD4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050CD8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
_08050CCA:
	mov r2, #0
	bl sub_0804A644
	b _08050D98
	.byte 0x00
	.byte 0x00
_08050CD4:
	.4byte 0x030003AD
_08050CD8:
	.4byte gUnknown_080B77F4
_08050CDC:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #20
	ble _08050D5C
	mov r0, #128
	lsl r0, r0, #6
	cmp r7, r0
	ble _08050D30
	mov r3, r12
	ldr r1, [r3, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _08050D14
	ldrb r2, [r2]
	ldr r0, _08050D0C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050D10  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	b _08050D7E
	.byte 0x00
	.byte 0x00
_08050D0C:
	.4byte 0x030003AD
_08050D10:
	.4byte gUnknown_080B77F4
_08050D14:
	ldrb r2, [r2]
	ldr r0, _08050D28  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050D2C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	bl sub_0804A644
	b _08050D82
_08050D28:
	.4byte 0x030003AD
_08050D2C:
	.4byte gUnknown_080B77F4
_08050D30:
	mov r1, r12
	ldr r0, [r1, #4]
	ldr r3, _08050D50  @ =0xFFFFF600
	add r0, r0, r3
	ldr r1, [r4, #36]
	cmp r0, r1
	ble _08050D98
	ldrb r2, [r2]
	ldr r0, _08050D54  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050D58  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	b _08050D7E
	.byte 0x00
	.byte 0x00
_08050D50:
	.4byte 0xFFFFF600
_08050D54:
	.4byte 0x030003AD
_08050D58:
	.4byte gUnknown_080B77F4
_08050D5C:
	ldr r0, _08050DA0  @ =gUnknown_030019AC
	ldr r1, [r0]
	ldr r3, _08050DA4  @ =0xFFFFFE97
	add r0, r3, #0
	ldrh r1, [r1, #4]
	add r0, r0, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #42
	bhi _08050D98
	ldrb r2, [r2]
	ldr r0, _08050DA8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050DAC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
_08050D7E:
	bl sub_0804A644
_08050D82:
	mov r0, #10
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	strb r2, [r4, #2]
	ldrb r1, [r4, #3]
	lsl r0, r0, #25
	lsr r0, r0, #24
	cmp r0, r1
	bcc _08050D98
	sub r0, r2, r1
	strb r0, [r4, #2]
_08050D98:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_08050DA0:
	.4byte gUnknown_030019AC
_08050DA4:
	.4byte 0xFFFFFE97
_08050DA8:
	.4byte 0x030003AD
_08050DAC:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08050AB0

	THUMB_FUNC_START sub_08050DB0
sub_08050DB0: @ 0x08050DB0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #12]
	mov r2, #1
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08050E54
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _08050DEC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	eor r2, r2, r0
	ldr r0, _08050DE4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050DE8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _08050E54
_08050DE4:
	.4byte 0x030003AD
_08050DE8:
	.4byte gUnknown_080B77F4
_08050DEC:
	cmp r0, #46
	bne _08050E14
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	eor r2, r2, r0
	ldr r0, _08050E0C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050E10  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #47
	bl sub_0804A644
	b _08050E54
	.byte 0x00
	.byte 0x00
_08050E0C:
	.4byte 0x030003AD
_08050E10:
	.4byte gUnknown_080B77F4
_08050E14:
	cmp r0, #48
	bne _08050E3C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	eor r2, r2, r0
	ldr r0, _08050E34  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050E38  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #49
	bl sub_0804A644
	b _08050E54
	.byte 0x00
	.byte 0x00
_08050E34:
	.4byte 0x030003AD
_08050E38:
	.4byte gUnknown_080B77F4
_08050E3C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	eor r2, r2, r0
	ldr r0, _08050E5C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050E60  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	bl sub_0804A644
_08050E54:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08050E5C:
	.4byte 0x030003AD
_08050E60:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08050DB0

	THUMB_FUNC_START sub_08050E64
sub_08050E64: @ 0x08050E64
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050E76
	b _08050FE6
_08050E76:
	add r0, r4, #0
	mov r1, #1
	bl sub_08052F48
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050E86
	b _08050FE6
_08050E86:
	add r0, r4, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050E94
	b _08050FE6
_08050E94:
	ldr r0, _08050EB8  @ =0x03001AA0
	add r0, r0, #97
	ldrb r0, [r0]
	cmp r0, #0
	beq _08050EC4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050EBC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050EC0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #3
	bl sub_0804A644
	b _08050FE6
	.byte 0x00
	.byte 0x00
_08050EB8:
	.4byte 0x03001AA0
_08050EBC:
	.4byte 0x030003AD
_08050EC0:
	.4byte gUnknown_080B77F4
_08050EC4:
	mov r1, #128
	lsl r1, r1, #1
	add r0, r4, #0
	bl sub_08053394
	lsl r0, r0, #24
	cmp r0, #0
	beq _08050F08
	ldr r0, _08050EFC  @ =0x03000398
	ldr r0, [r0, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _08050F08
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050F00  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050F04  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #28
	bl sub_0804A644
	b _08050FE6
_08050EFC:
	.4byte 0x03000398
_08050F00:
	.4byte 0x030003AD
_08050F04:
	.4byte gUnknown_080B77F4
_08050F08:
	add r0, r4, #0
	bl sub_08053330
	lsl r0, r0, #24
	cmp r0, #0
	bne _08050F54
	mov r2, #128
	lsl r2, r2, #3
	add r0, r4, #0
	mov r1, #150
	bl sub_08052C7C
	lsl r0, r0, #24
	cmp r0, #0
	bne _08050FE6
	ldr r1, _08050F6C  @ =0x03000398
	ldr r5, [r1]
	ldr r0, [r4, #32]
	sub r3, r5, r0
	add r7, r1, #0
	add r6, r0, #0
	cmp r3, #0
	bge _08050F38
	sub r3, r6, r5
_08050F38:
	ldr r0, [r7, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _08050F7C
	ldr r0, _08050F70  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
_08050F54:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050F74  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050F78  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #13
	bl sub_0804A644
	b _08050FE6
_08050F6C:
	.4byte 0x03000398
_08050F70:
	.4byte 0xFFFFFF00
_08050F74:
	.4byte 0x030003AD
_08050F78:
	.4byte gUnknown_080B77F4
_08050F7C:
	ldr r0, _08050F9C  @ =0x00000BFF
	cmp r3, r0
	bgt _08050FA8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08050FA0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08050FA4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _08050FE6
	.byte 0x00
	.byte 0x00
_08050F9C:
	.4byte 0x00000BFF
_08050FA0:
	.4byte 0x030003AD
_08050FA4:
	.4byte gUnknown_080B77F4
_08050FA8:
	mov r1, #48
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #48]
	cmp r0, #0
	bge _08050FB6
	cmp r5, r6
	bgt _08050FC2
_08050FB6:
	lsl r0, r1, #16
	cmp r0, #0
	ble _08050FE6
	ldr r0, [r7]
	cmp r0, r6
	bge _08050FE6
_08050FC2:
	add r1, r4, #0
	add r1, r1, #64
	ldrb r0, [r1]
	mov r3, #1
	eor r0, r0, r3
	strb r0, [r1]
	add r4, r4, #127
	ldrb r2, [r4]
	lsl r1, r2, #27
	lsr r1, r1, #31
	mov r0, #1
	eor r1, r1, r0
	and r1, r1, r3
	lsl r1, r1, #4
	sub r0, r0, #18
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4]
_08050FE6:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08050E64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08050FF0
sub_08050FF0: @ 0x08050FF0
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080525B8
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _08051004
	b _080512EE
_08051004:
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	add r7, r0, #0
	cmp r7, #0
	beq _08051100
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r6, [r5]
	ldr r0, [r4, #92]
	ldr r1, _0805106C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, _08051070  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _080510E0
	ldr r2, _08051074  @ =0x03000398
	ldr r0, [r2, #4]
	mov r1, #128
	lsl r1, r1, #6
	add r0, r0, r1
	ldr r1, [r4, #36]
	cmp r0, r1
	bgt _080510E0
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, [r2]
	sub r1, r1, r0
	ldr r0, _08051078  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08051080
	ldr r0, _0805107C  @ =0x000007FF
	cmp r2, r0
	bgt _0805108C
	b _080510B0
_0805106C:
	.4byte 0xFFFFFF00
_08051070:
	.4byte gUnknown_030019AC
_08051074:
	.4byte 0x03000398
_08051078:
	.4byte 0xFFFFF800
_0805107C:
	.4byte 0x000007FF
_08051080:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _080510A4  @ =0x000007FF
	cmp r0, r1
	ble _080510B0
_0805108C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080510A8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080510AC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _080510C6
_080510A4:
	.4byte 0x000007FF
_080510A8:
	.4byte 0x030003AD
_080510AC:
	.4byte gUnknown_080B77F4
_080510B0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080510D8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080510DC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_080510C6:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _08051220
	.byte 0x00
	.byte 0x00
_080510D8:
	.4byte 0x030003AD
_080510DC:
	.4byte gUnknown_080B77F4
_080510E0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080510F8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080510FC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #29
	bl sub_0804A644
	b _08051220
_080510F8:
	.4byte 0x030003AD
_080510FC:
	.4byte gUnknown_080B77F4
_08051100:
	ldr r0, [r4, #92]
	mov r1, #15
	and r0, r0, r1
	cmp r0, #0
	bne _0805110C
	b _08051220
_0805110C:
	ldr r2, _0805114C  @ =gUnknown_03001940
	ldr r1, [r4, #76]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #150
	beq _08051122
	cmp r0, #123
	bne _08051158
_08051122:
	ldr r1, [r4, #36]
	asr r1, r1, #8
	ldr r0, [r2, #36]
	asr r0, r0, #8
	add r0, r0, #5
	cmp r1, r0
	bgt _08051158
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051150  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051154  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	bl sub_0804A644
	strh r7, [r4, #58]
	b _080512EE
	.byte 0x00
	.byte 0x00
_0805114C:
	.4byte gUnknown_03001940
_08051150:
	.4byte 0x030003AD
_08051154:
	.4byte gUnknown_080B77F4
_08051158:
	ldrh r0, [r2]
	cmp r0, #124
	bne _080511B8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08051190
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051188  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805118C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
	b _080512EE
_08051188:
	.4byte 0x030003AD
_0805118C:
	.4byte gUnknown_080B77F4
_08051190:
	mov r0, #128
	lsl r0, r0, #7
	and r1, r1, r0
	cmp r1, #0
	beq _08051220
	ldr r2, [r2, #36]
	ldr r0, _080511B4  @ =0xFFFFFC00
	add r1, r2, r0
	ldr r0, [r4, #36]
	cmp r0, r1
	bge _08051220
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	lsl r0, r0, #8
	sub r0, r2, r0
	b _080511E4
_080511B4:
	.4byte 0xFFFFFC00
_080511B8:
	cmp r0, #125
	beq _080511C4
	cmp r0, #126
	beq _080511C4
	cmp r0, #127
	bne _08051220
_080511C4:
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08051220
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	lsl r1, r1, #8
	ldr r0, [r2, #36]
	sub r0, r0, r1
_080511E4:
	str r0, [r4, #36]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	bgt _08051240
	mov r0, #226
	lsl r0, r0, #7
	cmp r1, r0
	bgt _08051290
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	bgt _080512B8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051218  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805121C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
	b _080512EE
_08051218:
	.4byte 0x030003AD
_0805121C:
	.4byte gUnknown_080B77F4
_08051220:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080512EE
	ldr r0, _08051270  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _08051288
_08051240:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051274  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051278  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _0805127C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08051280  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08051284  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _080512EE
	.byte 0x00
	.byte 0x00
_08051270:
	.4byte 0xFFFFFF00
_08051274:
	.4byte 0x030003AD
_08051278:
	.4byte gUnknown_080B77F4
_0805127C:
	.4byte gUnknown_03001A1C
_08051280:
	.4byte 0x02010000
_08051284:
	.4byte gUnknown_030019A0
_08051288:
	mov r0, #226
	lsl r0, r0, #7
	cmp r1, r0
	ble _080512B0
_08051290:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080512A8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080512AC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #55
	bl sub_0804A644
	b _080512EE
_080512A8:
	.4byte 0x030003AD
_080512AC:
	.4byte gUnknown_080B77F4
_080512B0:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _080512D8
_080512B8:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080512D0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080512D4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _080512EE
_080512D0:
	.4byte 0x030003AD
_080512D4:
	.4byte gUnknown_080B77F4
_080512D8:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080512F8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080512FC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_080512EE:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080512F8:
	.4byte 0x030003AD
_080512FC:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08050FF0

	THUMB_FUNC_START sub_08051300
sub_08051300: @ 0x08051300
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	add r6, r0, #0
	cmp r6, #0
	beq _080513C0
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	mov r0, #0
	strb r0, [r5]
	ldr r0, [r4, #92]
	ldr r1, _08051350  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _08051354  @ =0x03000398
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _08051358  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08051360
	ldr r0, _0805135C  @ =0x000007FF
	cmp r2, r0
	bgt _0805136C
	b _08051390
	.byte 0x00
	.byte 0x00
_08051350:
	.4byte 0xFFFFFF00
_08051354:
	.4byte 0x03000398
_08051358:
	.4byte 0xFFFFF800
_0805135C:
	.4byte 0x000007FF
_08051360:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _08051384  @ =0x000007FF
	cmp r0, r1
	ble _08051390
_0805136C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051388  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805138C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _080513A6
_08051384:
	.4byte 0x000007FF
_08051388:
	.4byte 0x030003AD
_0805138C:
	.4byte gUnknown_080B77F4
_08051390:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080513B8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080513BC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_080513A6:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _0805145A
	.byte 0x00
	.byte 0x00
_080513B8:
	.4byte 0x030003AD
_080513BC:
	.4byte gUnknown_080B77F4
_080513C0:
	ldr r1, [r4, #76]
	cmp r1, #0
	ble _080513FC
	ldr r2, _080513F0  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #150
	bne _080513FC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080513F4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080513F8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #34
	bl sub_0804A644
	strh r6, [r4, #58]
	b _0805145A
_080513F0:
	.4byte gUnknown_03001940
_080513F4:
	.4byte 0x030003AD
_080513F8:
	.4byte gUnknown_080B77F4
_080513FC:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805145A
	ldr r0, _08051434  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	ldr r0, _08051438  @ =0x03000398
	ldr r1, [r0, #4]
	ldr r0, [r4, #36]
	cmp r1, r0
	bge _08051444
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805143C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051440  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	bl sub_0804A644
	b _0805145A
_08051434:
	.4byte 0xFFFFFF00
_08051438:
	.4byte 0x03000398
_0805143C:
	.4byte 0x030003AD
_08051440:
	.4byte gUnknown_080B77F4
_08051444:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051464  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051468  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #6
	bl sub_0804A644
_0805145A:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08051464:
	.4byte 0x030003AD
_08051468:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051300

	THUMB_FUNC_START sub_0805146C
sub_0805146C: @ 0x0805146C
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	beq _0805147E
	b _08051582
_0805147E:
	ldr r0, [r4, #40]
	ldr r7, [r4, #32]
	cmp r7, r0
	bne _080514B4
	ldr r1, [r4, #36]
	ldr r0, [r4, #44]
	cmp r1, r0
	bne _080514B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	mov r2, #1
	eor r2, r2, r0
	ldr r0, _080514AC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080514B0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _08051582
	.byte 0x00
	.byte 0x00
_080514AC:
	.4byte 0x030003AD
_080514B0:
	.4byte gUnknown_080B77F4
_080514B4:
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #10
	ble _08051582
	ldr r0, _080514F0  @ =0x03000398
	ldr r5, [r0]
	add r3, r7, #0
	sub r2, r5, r3
	add r6, r2, #0
	cmp r2, #0
	bge _080514D0
	sub r6, r3, r5
_080514D0:
	ldr r0, [r0, #4]
	ldr r1, [r4, #36]
	sub r0, r0, r1
	mov r0, #240
	lsl r0, r0, #5
	cmp r6, r0
	ble _08051514
	cmp r2, #0
	ble _080514FC
	ldr r0, _080514F4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080514F8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _0805155E
_080514F0:
	.4byte 0x03000398
_080514F4:
	.4byte 0x030003AD
_080514F8:
	.4byte gUnknown_080B77F4
_080514FC:
	ldr r0, _0805150C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051510  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	b _08051538
	.byte 0x00
	.byte 0x00
_0805150C:
	.4byte 0x030003AD
_08051510:
	.4byte gUnknown_080B77F4
_08051514:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08051548
	ldr r0, [r4, #16]
	cmp r3, r0
	bge _08051582
	cmp r5, r3
	bgt _08051552
	ldr r0, _08051540  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051544  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
_08051538:
	mov r2, #0
	bl sub_0804A644
	b _08051582
_08051540:
	.4byte 0x030003AD
_08051544:
	.4byte gUnknown_080B77F4
_08051548:
	ldr r0, [r4, #16]
	cmp r0, r7
	bge _08051582
	cmp r5, r7
	ble _08051570
_08051552:
	ldr r0, _08051568  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805156C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
_0805155E:
	mov r2, #1
	bl sub_0804A644
	b _08051582
	.byte 0x00
	.byte 0x00
_08051568:
	.4byte 0x030003AD
_0805156C:
	.4byte gUnknown_080B77F4
_08051570:
	ldr r0, _0805158C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051590  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0804A644
_08051582:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805158C:
	.4byte 0x030003AD
_08051590:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_0805146C

	THUMB_FUNC_START sub_08051594
sub_08051594: @ 0x08051594
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r5, r0, #4
	add r0, r4, #0
	bl sub_080527DC
	lsl r0, r0, #24
	lsr r7, r0, #24
	cmp r7, #0
	beq _080515B2
	b _08051810
_080515B2:
	add r6, r4, #0
	add r6, r6, #53
	ldrb r0, [r6]
	cmp r0, #0
	beq _08051668
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r7, [r6]
	ldr r0, [r4, #92]
	ldr r1, _080515F8  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _080515FC  @ =0x03000398
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _08051600  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08051608
	ldr r0, _08051604  @ =0x000007FF
	cmp r2, r0
	bgt _08051614
	b _08051638
	.byte 0x00
	.byte 0x00
_080515F8:
	.4byte 0xFFFFFF00
_080515FC:
	.4byte 0x03000398
_08051600:
	.4byte 0xFFFFF800
_08051604:
	.4byte 0x000007FF
_08051608:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _0805162C  @ =0x000007FF
	cmp r0, r1
	ble _08051638
_08051614:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051630  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051634  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _0805164E
_0805162C:
	.4byte 0x000007FF
_08051630:
	.4byte 0x030003AD
_08051634:
	.4byte gUnknown_080B77F4
_08051638:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051660  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051664  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_0805164E:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _08051810
	.byte 0x00
	.byte 0x00
_08051660:
	.4byte 0x030003AD
_08051664:
	.4byte gUnknown_080B77F4
_08051668:
	mov r2, #4
	add r0, r5, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0805173C
	ldr r0, [r4, #92]
	ldr r1, _0805169C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #25
	bne _080516A8
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080516A0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080516A4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
	b _08051810
	.byte 0x00
	.byte 0x00
_0805169C:
	.4byte 0xFFFFFF00
_080516A0:
	.4byte 0x030003AD
_080516A4:
	.4byte gUnknown_080B77F4
_080516A8:
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _080516F4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080516E0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080516E4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _080516E8  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _080516EC  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _080516F0  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _08051810
_080516E0:
	.4byte 0x030003AD
_080516E4:
	.4byte gUnknown_080B77F4
_080516E8:
	.4byte gUnknown_03001A1C
_080516EC:
	.4byte 0x02010000
_080516F0:
	.4byte gUnknown_030019A0
_080516F4:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _0805171C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051714  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051718  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _08051810
_08051714:
	.4byte 0x030003AD
_08051718:
	.4byte gUnknown_080B77F4
_0805171C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051734  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051738  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #25
	bl sub_0804A644
	b _08051810
_08051734:
	.4byte 0x030003AD
_08051738:
	.4byte gUnknown_080B77F4
_0805173C:
	mov r0, #2
	and r0, r0, r5
	cmp r0, #0
	beq _0805176C
	ldr r0, [r4, #92]
	ldr r1, _08051760  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, _08051764  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051768  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #26
	mov r2, #1
	bl sub_0804A644
	b _08051810
_08051760:
	.4byte 0xFFFFFF00
_08051764:
	.4byte 0x030003AD
_08051768:
	.4byte gUnknown_080B77F4
_0805176C:
	mov r0, #8
	and r5, r5, r0
	cmp r5, #0
	beq _0805179C
	ldr r0, [r4, #92]
	ldr r1, _08051790  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	ldr r0, _08051794  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051798  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #26
	mov r2, #0
	bl sub_0804A644
	b _08051810
_08051790:
	.4byte 0xFFFFFF00
_08051794:
	.4byte 0x030003AD
_08051798:
	.4byte gUnknown_080B77F4
_0805179C:
	ldr r1, [r4, #92]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _080517E4
	ldr r0, _080517D8  @ =0xFFFFFF00
	and r1, r1, r0
	str r1, [r4, #92]
	ldrh r0, [r4]
	cmp r0, #7
	beq _080517BE
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #23
	beq _080517BE
	cmp r0, #24
	bne _08051810
_080517BE:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080517DC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080517E0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #27
	bl sub_0804A644
	b _08051810
	.byte 0x00
	.byte 0x00
_080517D8:
	.4byte 0xFFFFFF00
_080517DC:
	.4byte 0x030003AD
_080517E0:
	.4byte gUnknown_080B77F4
_080517E4:
	add r0, r4, #0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _08051810
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #25
	bne _08051810
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051818  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805181C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
_08051810:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_08051818:
	.4byte 0x030003AD
_0805181C:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051594

	THUMB_FUNC_START sub_08051820
sub_08051820: @ 0x08051820
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r0, [r4, #92]
	mov r1, #240
	and r0, r0, r1
	lsr r7, r0, #4
	add r0, r4, #0
	bl sub_080525B8
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _08051842
	b _08051AFA
_08051842:
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	mov r8, r0
	cmp r0, #0
	beq _080518F8
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r6, [r5]
	ldr r0, [r4, #92]
	ldr r1, _08051888  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _0805188C  @ =0x03000398
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _08051890  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08051898
	ldr r0, _08051894  @ =0x000007FF
	cmp r2, r0
	bgt _080518A4
	b _080518C8
_08051888:
	.4byte 0xFFFFFF00
_0805188C:
	.4byte 0x03000398
_08051890:
	.4byte 0xFFFFF800
_08051894:
	.4byte 0x000007FF
_08051898:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _080518BC  @ =0x000007FF
	cmp r0, r1
	ble _080518C8
_080518A4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080518C0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080518C4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _080518DE
_080518BC:
	.4byte 0x000007FF
_080518C0:
	.4byte 0x030003AD
_080518C4:
	.4byte gUnknown_080B77F4
_080518C8:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080518F0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080518F4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_080518DE:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _08051AFA
	.byte 0x00
	.byte 0x00
_080518F0:
	.4byte 0x030003AD
_080518F4:
	.4byte gUnknown_080B77F4
_080518F8:
	ldr r1, [r4, #92]
	mov r0, #15
	and r0, r0, r1
	add r3, r1, #0
	cmp r0, #0
	bne _08051906
	b _08051A5C
_08051906:
	ldr r2, _08051938  @ =gUnknown_03001940
	ldr r1, [r4, #76]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #150
	beq _0805191C
	cmp r0, #123
	bne _08051944
_0805191C:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805193C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051940  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	bl sub_0804A644
	mov r1, r8
	strh r1, [r4, #58]
	b _08051AFA
_08051938:
	.4byte gUnknown_03001940
_0805193C:
	.4byte 0x030003AD
_08051940:
	.4byte gUnknown_080B77F4
_08051944:
	cmp r0, #124
	bne _080519AA
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0805197C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051974  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051978  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
	b _08051AFA
	.byte 0x00
	.byte 0x00
_08051974:
	.4byte 0x030003AD
_08051978:
	.4byte gUnknown_080B77F4
_0805197C:
	mov r0, #128
	lsl r0, r0, #7
	and r1, r1, r0
	cmp r1, #0
	beq _08051A5C
_08051986:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	lsl r1, r1, #8
	ldr r0, [r2, #36]
	sub r0, r0, r1
	str r0, [r4, #36]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	bgt _08051A74
	mov r0, #226
	lsl r0, r0, #7
	cmp r1, r0
	bgt _08051A12
	b _08051A34
_080519AA:
	cmp r0, #125
	bne _080519C2
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08051A5C
	b _08051986
_080519C2:
	cmp r0, #126
	bne _080519DA
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08051A5C
	b _08051986
_080519DA:
	cmp r0, #127
	bne _08051A5C
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08051A5C
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	lsl r1, r1, #8
	ldr r0, [r2, #36]
	sub r0, r0, r1
	str r0, [r4, #36]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	bgt _08051A74
	mov r0, #226
	lsl r0, r0, #7
	cmp r1, r0
	ble _08051A34
_08051A12:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051A2C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051A30  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #55
	bl sub_0804A644
	b _08051AFA
	.byte 0x00
	.byte 0x00
_08051A2C:
	.4byte 0x030003AD
_08051A30:
	.4byte gUnknown_080B77F4
_08051A34:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	bgt _08051AC4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051A54  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051A58  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
	b _08051AFA
_08051A54:
	.4byte 0x030003AD
_08051A58:
	.4byte gUnknown_080B77F4
_08051A5C:
	mov r0, #4
	and r7, r7, r0
	cmp r7, #0
	beq _08051AFA
	ldr r0, _08051AA4  @ =0xFFFFFF00
	and r0, r0, r3
	str r0, [r4, #92]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _08051ABC
_08051A74:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051AA8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051AAC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _08051AB0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08051AB4  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08051AB8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _08051AFA
	.byte 0x00
	.byte 0x00
_08051AA4:
	.4byte 0xFFFFFF00
_08051AA8:
	.4byte 0x030003AD
_08051AAC:
	.4byte gUnknown_080B77F4
_08051AB0:
	.4byte gUnknown_03001A1C
_08051AB4:
	.4byte 0x02010000
_08051AB8:
	.4byte gUnknown_030019A0
_08051ABC:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _08051AE4
_08051AC4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051ADC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051AE0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _08051AFA
_08051ADC:
	.4byte 0x030003AD
_08051AE0:
	.4byte gUnknown_080B77F4
_08051AE4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051B08  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051B0C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_08051AFA:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08051B08:
	.4byte 0x030003AD
_08051B0C:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051820

	THUMB_FUNC_START sub_08051B10
sub_08051B10: @ 0x08051B10
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _08051B24
	b _08051C48
_08051B24:
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	add r7, r0, #0
	cmp r7, #0
	beq _08051BDC
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r6, [r5]
	ldr r0, [r4, #92]
	ldr r1, _08051B6C  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _08051B70  @ =0x03000398
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _08051B74  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08051B7C
	ldr r0, _08051B78  @ =0x000007FF
	cmp r2, r0
	bgt _08051B88
	b _08051BAC
	.byte 0x00
	.byte 0x00
_08051B6C:
	.4byte 0xFFFFFF00
_08051B70:
	.4byte 0x03000398
_08051B74:
	.4byte 0xFFFFF800
_08051B78:
	.4byte 0x000007FF
_08051B7C:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _08051BA0  @ =0x000007FF
	cmp r0, r1
	ble _08051BAC
_08051B88:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051BA4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051BA8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _08051BC2
_08051BA0:
	.4byte 0x000007FF
_08051BA4:
	.4byte 0x030003AD
_08051BA8:
	.4byte gUnknown_080B77F4
_08051BAC:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051BD4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051BD8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_08051BC2:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _08051C48
	.byte 0x00
	.byte 0x00
_08051BD4:
	.4byte 0x030003AD
_08051BD8:
	.4byte gUnknown_080B77F4
_08051BDC:
	ldr r1, [r4, #76]
	cmp r1, #0
	ble _08051C18
	ldr r2, _08051C0C  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #150
	bne _08051C18
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051C10  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051C14  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #34
	bl sub_0804A644
	strh r7, [r4, #58]
	b _08051C48
_08051C0C:
	.4byte gUnknown_03001940
_08051C10:
	.4byte 0x030003AD
_08051C14:
	.4byte gUnknown_080B77F4
_08051C18:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08051C48
	ldr r0, _08051C50  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051C54  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051C58  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #32
	bl sub_0804A644
_08051C48:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_08051C50:
	.4byte 0xFFFFFF00
_08051C54:
	.4byte 0x030003AD
_08051C58:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051B10

	THUMB_FUNC_START sub_08051C5C
sub_08051C5C: @ 0x08051C5C
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #0
	beq _08051C70
	b _08051DD6
_08051C70:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08051D2C
	add r5, r4, #0
	add r5, r5, #53
	ldrb r0, [r5]
	cmp r0, #0
	beq _08051D2C
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #2
	bl sub_0802BC64
	strb r6, [r5]
	ldr r0, [r4, #92]
	ldr r1, _08051CBC  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _08051CC0  @ =0x03000398
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _08051CC4  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08051CCC
	ldr r0, _08051CC8  @ =0x000007FF
	cmp r2, r0
	bgt _08051CD8
	b _08051CFC
_08051CBC:
	.4byte 0xFFFFFF00
_08051CC0:
	.4byte 0x03000398
_08051CC4:
	.4byte 0xFFFFF800
_08051CC8:
	.4byte 0x000007FF
_08051CCC:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _08051CF0  @ =0x000007FF
	cmp r0, r1
	ble _08051CFC
_08051CD8:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051CF4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051CF8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #30
	bl sub_0804A644
	b _08051D12
_08051CF0:
	.4byte 0x000007FF
_08051CF4:
	.4byte 0x030003AD
_08051CF8:
	.4byte gUnknown_080B77F4
_08051CFC:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051D24  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051D28  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #31
	bl sub_0804A644
_08051D12:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #69
	mov r2, #0
	bl sub_080410B4
	b _08051DD6
	.byte 0x00
	.byte 0x00
_08051D24:
	.4byte 0x030003AD
_08051D28:
	.4byte gUnknown_080B77F4
_08051D2C:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08051DD6
	ldr r0, _08051D80  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _08051D98
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051D84  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051D88  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _08051D8C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08051D90  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08051D94  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _08051DD6
	.byte 0x00
	.byte 0x00
_08051D80:
	.4byte 0xFFFFFF00
_08051D84:
	.4byte 0x030003AD
_08051D88:
	.4byte gUnknown_080B77F4
_08051D8C:
	.4byte gUnknown_03001A1C
_08051D90:
	.4byte 0x02010000
_08051D94:
	.4byte gUnknown_030019A0
_08051D98:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _08051DC0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051DB8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051DBC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _08051DD6
_08051DB8:
	.4byte 0x030003AD
_08051DBC:
	.4byte gUnknown_080B77F4
_08051DC0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051DE0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051DE4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_08051DD6:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08051DE0:
	.4byte 0x030003AD
_08051DE4:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051C5C

	THUMB_FUNC_START sub_08051DE8
sub_08051DE8: @ 0x08051DE8
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r1, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r1, r5
	bgt _08051DFA
	b _08051F24
_08051DFA:
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r0, #225
	bgt _08051E04
	b _08051F24
_08051E04:
	ldr r2, _08051E4C  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r2, [r0]
	cmp r2, #150
	beq _08051E18
	cmp r2, #123
	bne _08051EF0
_08051E18:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r3, r1, r0
	ldr r0, _08051E50  @ =0x03000398
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	add r2, r0, r1
	ldr r0, [r4, #92]
	ldr r1, _08051E54  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	str r5, [r4, #76]
	cmp r3, r2
	ble _08051E9C
	sub r1, r3, r2
	cmp r1, #0
	blt _08051E5C
	ldr r0, _08051E58  @ =0x000007FF
	cmp r1, r0
	bgt _08051E64
	b _08051E80
_08051E4C:
	.4byte gUnknown_03001940
_08051E50:
	.4byte 0x03000398
_08051E54:
	.4byte 0xFFFFFF00
_08051E58:
	.4byte 0x000007FF
_08051E5C:
	sub r1, r2, r3
	ldr r0, _08051E74  @ =0x000007FF
	cmp r1, r0
	ble _08051E80
_08051E64:
	ldr r0, _08051E78  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051E7C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	b _08051E8C
	.byte 0x00
	.byte 0x00
_08051E74:
	.4byte 0x000007FF
_08051E78:
	.4byte 0x030003AD
_08051E7C:
	.4byte gUnknown_080B77F4
_08051E80:
	ldr r0, _08051E94  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051E98  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #36
_08051E8C:
	mov r2, #0
	bl sub_0804A644
	b _08051F54
_08051E94:
	.4byte 0x030003AD
_08051E98:
	.4byte gUnknown_080B77F4
_08051E9C:
	sub r1, r3, r2
	cmp r1, #0
	blt _08051EB0
	ldr r0, _08051EAC  @ =0x000007FF
	cmp r1, r0
	bgt _08051EB8
	b _08051ED4
	.byte 0x00
	.byte 0x00
_08051EAC:
	.4byte 0x000007FF
_08051EB0:
	sub r1, r2, r3
	ldr r0, _08051EC8  @ =0x000007FF
	cmp r1, r0
	ble _08051ED4
_08051EB8:
	ldr r0, _08051ECC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051ED0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	b _08051EE0
	.byte 0x00
	.byte 0x00
_08051EC8:
	.4byte 0x000007FF
_08051ECC:
	.4byte 0x030003AD
_08051ED0:
	.4byte gUnknown_080B77F4
_08051ED4:
	ldr r0, _08051EE8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051EEC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #36
_08051EE0:
	mov r2, #1
	bl sub_0804A644
	b _08051F54
_08051EE8:
	.4byte 0x030003AD
_08051EEC:
	.4byte gUnknown_080B77F4
_08051EF0:
	cmp r2, #124
	bne _08051F24
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08051F54
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051F1C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051F20  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
	b _08051F54
_08051F1C:
	.4byte 0x030003AD
_08051F20:
	.4byte gUnknown_080B77F4
_08051F24:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08051F54
	ldr r0, _08051F5C  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08051F60  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08051F64  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #37
	bl sub_0804A644
_08051F54:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_08051F5C:
	.4byte 0xFFFFFF00
_08051F60:
	.4byte 0x030003AD
_08051F64:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051DE8

	THUMB_FUNC_START sub_08051F68
sub_08051F68: @ 0x08051F68
	push {r4-r6,lr}
	sub sp, sp, #4
	add r4, r0, #0
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08051F78
	b _08052094
_08051F78:
	ldr r1, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r1, r5
	bgt _08051F84
	b _080520F4
_08051F84:
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #0
	bne _08051F90
	b _080520F4
_08051F90:
	ldr r2, _08051FD8  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r2, [r0]
	cmp r2, #150
	beq _08051FA4
	cmp r2, #123
	bne _0805207C
_08051FA4:
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r2, r1, r0
	ldr r0, _08051FDC  @ =0x03000398
	ldr r0, [r0]
	mov r6, #128
	lsl r6, r6, #4
	add r1, r0, r6
	ldr r0, _08051FE0  @ =0xFFFFFF00
	and r3, r3, r0
	str r3, [r4, #92]
	str r5, [r4, #76]
	cmp r2, r1
	ble _08052028
	sub r3, r2, r1
	cmp r3, #0
	blt _08051FE8
	ldr r0, _08051FE4  @ =0x000007FF
	cmp r3, r0
	bgt _08051FF0
	b _0805200C
	.byte 0x00
	.byte 0x00
_08051FD8:
	.4byte gUnknown_03001940
_08051FDC:
	.4byte 0x03000398
_08051FE0:
	.4byte 0xFFFFFF00
_08051FE4:
	.4byte 0x000007FF
_08051FE8:
	sub r1, r1, r2
	ldr r0, _08052000  @ =0x000007FF
	cmp r1, r0
	ble _0805200C
_08051FF0:
	ldr r0, _08052004  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052008  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	b _08052018
	.byte 0x00
	.byte 0x00
_08052000:
	.4byte 0x000007FF
_08052004:
	.4byte 0x030003AD
_08052008:
	.4byte gUnknown_080B77F4
_0805200C:
	ldr r0, _08052020  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052024  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #36
_08052018:
	mov r2, #0
	bl sub_0804A644
	b _0805219E
_08052020:
	.4byte 0x030003AD
_08052024:
	.4byte gUnknown_080B77F4
_08052028:
	sub r3, r2, r1
	cmp r3, #0
	blt _0805203C
	ldr r0, _08052038  @ =0x000007FF
	cmp r3, r0
	bgt _08052044
	b _08052060
	.byte 0x00
	.byte 0x00
_08052038:
	.4byte 0x000007FF
_0805203C:
	sub r1, r1, r2
	ldr r0, _08052054  @ =0x000007FF
	cmp r1, r0
	ble _08052060
_08052044:
	ldr r0, _08052058  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805205C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	b _0805206C
	.byte 0x00
	.byte 0x00
_08052054:
	.4byte 0x000007FF
_08052058:
	.4byte 0x030003AD
_0805205C:
	.4byte gUnknown_080B77F4
_08052060:
	ldr r0, _08052074  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052078  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #36
_0805206C:
	mov r2, #1
	bl sub_0804A644
	b _0805219E
_08052074:
	.4byte 0x030003AD
_08052078:
	.4byte gUnknown_080B77F4
_0805207C:
	cmp r2, #124
	bne _080520F4
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08052092
	b _0805219E
_08052092:
	b _080520D4
_08052094:
	ldr r1, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r1, r5
	ble _080520F4
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #0
	beq _080520F4
	ldr r2, _080520C8  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #150
	beq _080520BC
	cmp r1, #123
	bne _080520D0
_080520BC:
	ldr r0, _080520CC  @ =0xFFFFFF00
	and r3, r3, r0
	str r3, [r4, #92]
	str r5, [r4, #76]
	b _080520F4
	.byte 0x00
	.byte 0x00
_080520C8:
	.4byte gUnknown_03001940
_080520CC:
	.4byte 0xFFFFFF00
_080520D0:
	cmp r1, #124
	bne _080520F4
_080520D4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080520EC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080520F0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
	b _0805219E
_080520EC:
	.4byte 0x030003AD
_080520F0:
	.4byte gUnknown_080B77F4
_080520F4:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0805219E
	ldr r0, _08052148  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _08052160
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805214C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052150  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _08052154  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08052158  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _0805215C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _0805219E
	.byte 0x00
	.byte 0x00
_08052148:
	.4byte 0xFFFFFF00
_0805214C:
	.4byte 0x030003AD
_08052150:
	.4byte gUnknown_080B77F4
_08052154:
	.4byte gUnknown_03001A1C
_08052158:
	.4byte 0x02010000
_0805215C:
	.4byte gUnknown_030019A0
_08052160:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _08052188
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052180  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052184  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _0805219E
_08052180:
	.4byte 0x030003AD
_08052184:
	.4byte gUnknown_080B77F4
_08052188:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080521A8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080521AC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_0805219E:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080521A8:
	.4byte 0x030003AD
_080521AC:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08051F68

	THUMB_FUNC_START sub_080521B0
sub_080521B0: @ 0x080521B0
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r1, [r4, #76]
	mov r3, #1
	neg r3, r3
	cmp r1, r3
	ble _08052210
	mov r2, #50
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08052210
	ldr r2, _08052200  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #125
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #2
	bhi _08052210
	ldr r0, [r4, #92]
	ldr r1, _08052204  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
	str r3, [r4, #76]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052208  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805220C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #43
	bl sub_0804A644
	b _080522BA
_08052200:
	.4byte gUnknown_03001940
_08052204:
	.4byte 0xFFFFFF00
_08052208:
	.4byte 0x030003AD
_0805220C:
	.4byte gUnknown_080B77F4
_08052210:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080522BA
	ldr r0, _08052264  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _0805227C
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052268  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805226C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _08052270  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08052274  @ =0x02010800
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08052278  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _080522BA
	.byte 0x00
	.byte 0x00
_08052264:
	.4byte 0xFFFFFF00
_08052268:
	.4byte 0x030003AD
_0805226C:
	.4byte gUnknown_080B77F4
_08052270:
	.4byte gUnknown_03001A1C
_08052274:
	.4byte 0x02010800
_08052278:
	.4byte gUnknown_030019A0
_0805227C:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _080522A4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805229C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080522A0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _080522BA
_0805229C:
	.4byte 0x030003AD
_080522A0:
	.4byte gUnknown_080B77F4
_080522A4:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080522C4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080522C8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_080522BA:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080522C4:
	.4byte 0x030003AD
_080522C8:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080521B0

	THUMB_FUNC_START sub_080522CC
sub_080522CC: @ 0x080522CC
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	beq _080522DE
	b _080524C6
_080522DE:
	mov r1, #50
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080523BC
	ldr r1, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r1, r5
	bgt _080522F2
	b _0805241C
_080522F2:
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #0
	bne _080522FE
	b _0805241C
_080522FE:
	ldr r2, _08052340  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r2, [r0]
	cmp r2, #150
	beq _08052312
	cmp r2, #123
	bne _080523A4
_08052312:
	ldr r0, _08052344  @ =0xFFFFFF00
	and r3, r3, r0
	str r3, [r4, #92]
	str r5, [r4, #76]
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsl r0, r0, #7
	ldr r1, [r4, #32]
	add r1, r1, r0
	ldr r0, _08052348  @ =0x03000398
	ldr r0, [r0]
	sub r1, r1, r0
	ldr r0, _0805234C  @ =0xFFFFF800
	add r2, r1, r0
	cmp r2, #0
	blt _08052354
	ldr r0, _08052350  @ =0x000007FF
	cmp r2, r0
	bgt _08052360
	b _08052384
	.byte 0x00
	.byte 0x00
_08052340:
	.4byte gUnknown_03001940
_08052344:
	.4byte 0xFFFFFF00
_08052348:
	.4byte 0x03000398
_0805234C:
	.4byte 0xFFFFF800
_08052350:
	.4byte 0x000007FF
_08052354:
	mov r0, #128
	lsl r0, r0, #4
	sub r0, r0, r1
	ldr r1, _08052378  @ =0x000007FF
	cmp r0, r1
	ble _08052384
_08052360:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805237C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052380  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #35
	bl sub_0804A644
	b _0805241C
_08052378:
	.4byte 0x000007FF
_0805237C:
	.4byte 0x030003AD
_08052380:
	.4byte gUnknown_080B77F4
_08052384:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805239C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080523A0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #36
	bl sub_0804A644
	b _0805241C
_0805239C:
	.4byte 0x030003AD
_080523A0:
	.4byte gUnknown_080B77F4
_080523A4:
	cmp r2, #124
	bne _0805241C
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _080523BA
	b _080524C6
_080523BA:
	b _080523FC
_080523BC:
	ldr r1, [r4, #76]
	mov r5, #1
	neg r5, r5
	cmp r1, r5
	ble _0805241C
	ldr r3, [r4, #92]
	mov r0, #15
	and r0, r0, r3
	cmp r0, #0
	beq _0805241C
	ldr r2, _080523F0  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #150
	beq _080523E4
	cmp r1, #123
	bne _080523F8
_080523E4:
	ldr r0, _080523F4  @ =0xFFFFFF00
	and r3, r3, r0
	str r3, [r4, #92]
	str r5, [r4, #76]
	b _0805241C
	.byte 0x00
	.byte 0x00
_080523F0:
	.4byte gUnknown_03001940
_080523F4:
	.4byte 0xFFFFFF00
_080523F8:
	cmp r1, #124
	bne _0805241C
_080523FC:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052414  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052418  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
	b _080524C6
_08052414:
	.4byte 0x030003AD
_08052418:
	.4byte gUnknown_080B77F4
_0805241C:
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080524C6
	ldr r0, _08052470  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	ldr r1, [r4, #80]
	mov r0, #145
	lsl r0, r0, #8
	cmp r1, r0
	ble _08052488
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052474  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052478  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #56
	bl sub_0804A644
	ldr r2, _0805247C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08052480  @ =0x02010800
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08052484  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	b _080524C6
	.byte 0x00
	.byte 0x00
_08052470:
	.4byte 0xFFFFFF00
_08052474:
	.4byte 0x030003AD
_08052478:
	.4byte gUnknown_080B77F4
_0805247C:
	.4byte gUnknown_03001A1C
_08052480:
	.4byte 0x02010800
_08052484:
	.4byte gUnknown_030019A0
_08052488:
	mov r0, #162
	lsl r0, r0, #7
	cmp r1, r0
	ble _080524B0
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080524A8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080524AC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #54
	bl sub_0804A644
	b _080524C6
_080524A8:
	.4byte 0x030003AD
_080524AC:
	.4byte gUnknown_080B77F4
_080524B0:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080524D0  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080524D4  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #53
	bl sub_0804A644
_080524C6:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080524D0:
	.4byte 0x030003AD
_080524D4:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080522CC

	THUMB_FUNC_START sub_080524D8
sub_080524D8: @ 0x080524D8
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, _08052530  @ =gUnknown_03001940
	ldr r1, [r4, #76]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r5, r0, r1
	add r0, r4, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	lsl r1, r1, #8
	ldr r0, [r5, #36]
	sub r0, r0, r1
	str r0, [r4, #36]
	add r0, r4, #0
	mov r1, #0
	bl sub_08052F48
	lsl r0, r0, #24
	cmp r0, #0
	beq _08052560
	mov r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #14
	bne _08052552
	ldr r0, _08052534  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r4, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _08052540
	ldr r0, _08052538  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805253C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	mov r2, #1
	bl sub_0804A644
	b _08052552
_08052530:
	.4byte gUnknown_03001940
_08052534:
	.4byte gUnknown_030019AC
_08052538:
	.4byte 0x030003AD
_0805253C:
	.4byte gUnknown_080B77F4
_08052540:
	ldr r0, _08052558  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805255C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	mov r2, #0
	bl sub_0804A644
_08052552:
	mov r0, #0
	strh r0, [r4, #58]
	b _0805259E
_08052558:
	.4byte 0x030003AD
_0805255C:
	.4byte gUnknown_080B77F4
_08052560:
	add r0, r5, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0805259E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080525A8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080525AC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #16
	bl sub_0804A644
	ldr r1, _080525B0  @ =0x03001924
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	strb r0, [r1]
	add r0, r2, #0
	str r0, [r4, #76]
	ldr r0, [r4, #92]
	ldr r1, _080525B4  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r4, #92]
_0805259E:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080525A8:
	.4byte 0x030003AD
_080525AC:
	.4byte gUnknown_080B77F4
_080525B0:
	.4byte 0x03001924
_080525B4:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080524D8

	THUMB_FUNC_START sub_080525B8
sub_080525B8: @ 0x080525B8
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r7, _080525E0  @ =gUnknown_03001A1C
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080525EC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080525E4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080525E8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #38
	b _0805260C
_080525E0:
	.4byte gUnknown_03001A1C
_080525E4:
	.4byte 0x030003AD
_080525E8:
	.4byte gUnknown_080B77F4
_080525EC:
	ldr r6, _08052614  @ =gUnknown_030019A0
	ldr r0, [r6]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08052620
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052618  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805261C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #44
_0805260C:
	bl sub_0804A644
	mov r0, #1
	b _080527D2
_08052614:
	.4byte gUnknown_030019A0
_08052618:
	.4byte 0x030003AD
_0805261C:
	.4byte gUnknown_080B77F4
_08052620:
	add r0, r4, #0
	add r0, r0, #108
	bl sub_08031740
	cmp r0, #0
	bne _080526C8
	ldr r3, [r4, #76]
	cmp r3, #0
	bgt _08052634
	b _080527D0
_08052634:
	ldr r1, [r4, #92]
	mov r0, #15
	and r0, r0, r1
	add r5, r1, #0
	cmp r0, #0
	bne _08052642
	b _080527D0
_08052642:
	ldr r2, _0805266C  @ =gUnknown_03001940
	mov r0, #176
	add r1, r3, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	beq _08052670
_0805265A:
	mov r0, #16
	neg r0, r0
	and r0, r0, r5
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	b _080527D0
	.byte 0x00
	.byte 0x00
_0805266C:
	.4byte gUnknown_03001940
_08052670:
	ldrh r0, [r2]
	add r1, r0, #0
	add r3, r0, #0
	cmp r1, #101
	beq _0805267E
	cmp r1, #104
	bne _080526C4
_0805267E:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #5
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080526B8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080526BC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #58
	bl sub_0804A644
	ldr r1, [r7]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _080526EC
	ldr r0, _080526C0  @ =0x02010800
	orr r1, r1, r0
	str r1, [r7]
	b _080526EC
	.byte 0x00
	.byte 0x00
_080526B8:
	.4byte 0x030003AD
_080526BC:
	.4byte gUnknown_080B77F4
_080526C0:
	.4byte 0x02010800
_080526C4:
	cmp r1, #103
	bne _08052704
_080526C8:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080526FC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052700  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #61
	bl sub_0804A644
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #44
	mov r2, #0
	bl sub_080410B4
_080526EC:
	ldr r0, [r6]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r6]
	mov r0, #1
	b _080527D2
	.byte 0x00
	.byte 0x00
_080526FC:
	.4byte 0x030003AD
_08052700:
	.4byte gUnknown_080B77F4
_08052704:
	cmp r1, #150
	beq _080527D0
	cmp r1, #185
	beq _0805265A
	cmp r1, #165
	beq _080527D0
	cmp r1, #166
	beq _080527D0
	cmp r1, #123
	bne _0805272C
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08052778
	b _080527D0
_0805272C:
	cmp r1, #125
	bne _08052744
_08052730:
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _0805275E
	b _080527D0
_08052744:
	cmp r1, #126
	beq _08052730
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r0, #127
	beq _08052730
	cmp r0, #155
	bne _0805275E
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #6
	bne _0805275E
	b _0805265A
_0805275E:
	lsl r0, r3, #16
	lsr r0, r0, #16
	cmp r0, #124
	beq _080527D0
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _080527D0
_08052778:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080527B8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080527BC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _080527C0  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r2, _080527C4  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _080527C8  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _080527CC  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	b _080527D2
	.byte 0x00
	.byte 0x00
_080527B8:
	.4byte 0x030003AD
_080527BC:
	.4byte gUnknown_080B77F4
_080527C0:
	.4byte 0xFFFFF800
_080527C4:
	.4byte gUnknown_03001A1C
_080527C8:
	.4byte 0x02010000
_080527CC:
	.4byte gUnknown_030019A0
_080527D0:
	mov r0, #0
_080527D2:
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080525B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080527DC
sub_080527DC: @ 0x080527DC
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r7, _08052804  @ =gUnknown_03001A1C
	ldr r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08052810
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052808  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805280C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #38
	b _08052830
_08052804:
	.4byte gUnknown_03001A1C
_08052808:
	.4byte 0x030003AD
_0805280C:
	.4byte gUnknown_080B77F4
_08052810:
	ldr r6, _08052838  @ =gUnknown_030019A0
	ldr r0, [r6]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _08052844
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805283C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052840  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #44
_08052830:
	bl sub_0804A644
	mov r0, #1
	b _08052A5A
_08052838:
	.4byte gUnknown_030019A0
_0805283C:
	.4byte 0x030003AD
_08052840:
	.4byte gUnknown_080B77F4
_08052844:
	add r0, r4, #0
	add r0, r0, #108
	bl sub_08031740
	cmp r0, #0
	beq _08052880
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052878  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805287C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #61
	bl sub_0804A644
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #44
	mov r2, #0
	bl sub_080410B4
	b _0805296E
	.byte 0x00
	.byte 0x00
_08052878:
	.4byte 0x030003AD
_0805287C:
	.4byte gUnknown_080B77F4
_08052880:
	ldr r5, [r4, #76]
	cmp r5, #0
	bgt _08052888
	b _08052A58
_08052888:
	ldr r1, [r4, #92]
	mov r0, #15
	and r0, r0, r1
	add r3, r1, #0
	cmp r0, #0
	bne _08052896
	b _08052A58
_08052896:
	ldr r2, _080528C0  @ =gUnknown_03001940
	mov r0, #176
	add r1, r5, #0
	mul r1, r0, r1
	ldr r0, [r2]
	add r2, r0, r1
	ldr r0, [r2, #92]
	mov r1, #128
	lsl r1, r1, #19
	and r0, r0, r1
	cmp r0, #0
	beq _080528C4
_080528AE:
	mov r0, #16
	neg r0, r0
	and r0, r0, r3
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	b _08052A58
	.byte 0x00
	.byte 0x00
_080528C0:
	.4byte gUnknown_03001940
_080528C4:
	ldrh r0, [r2]
	add r1, r0, #0
	cmp r1, #101
	beq _080528D0
	cmp r1, #104
	bne _08052914
_080528D0:
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #5
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052908  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805290C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #58
	bl sub_0804A644
	ldr r1, [r7]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0805296E
	ldr r0, _08052910  @ =0x02010800
	orr r1, r1, r0
	str r1, [r7]
	b _0805296E
_08052908:
	.4byte 0x030003AD
_0805290C:
	.4byte gUnknown_080B77F4
_08052910:
	.4byte 0x02010800
_08052914:
	cmp r1, #150
	beq _080528AE
	cmp r1, #185
	beq _080528AE
	cmp r1, #165
	bne _08052922
	b _08052A58
_08052922:
	cmp r1, #166
	bne _08052928
	b _08052A58
_08052928:
	cmp r1, #123
	bne _08052990
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08052940
	b _08052A58
_08052940:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805297C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052980  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08052984  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r2, _08052988  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _0805298C  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
_0805296E:
	ldr r0, [r6]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r6]
	mov r0, #1
	b _08052A5A
_0805297C:
	.4byte 0x030003AD
_08052980:
	.4byte gUnknown_080B77F4
_08052984:
	.4byte 0xFFFFF800
_08052988:
	.4byte gUnknown_03001A1C
_0805298C:
	.4byte 0x02010000
_08052990:
	cmp r1, #124
	beq _08052A58
	cmp r1, #125
	bne _080529AC
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080529EE
	b _080528AE
_080529AC:
	cmp r1, #126
	bne _080529C4
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080529EE
	b _080528AE
_080529C4:
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #127
	bne _080529E0
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _080529EE
	b _080528AE
_080529E0:
	cmp r0, #155
	bne _080529EE
	mov r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #6
	bne _080529EE
	b _080528AE
_080529EE:
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _08052A58
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052A40  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052A44  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _08052A48  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r2, _08052A4C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _08052A50  @ =0x02010000
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _08052A54  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	b _08052A5A
	.byte 0x00
	.byte 0x00
_08052A40:
	.4byte 0x030003AD
_08052A44:
	.4byte gUnknown_080B77F4
_08052A48:
	.4byte 0xFFFFF800
_08052A4C:
	.4byte gUnknown_03001A1C
_08052A50:
	.4byte 0x02010000
_08052A54:
	.4byte gUnknown_030019A0
_08052A58:
	mov r0, #0
_08052A5A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080527DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08052A64
sub_08052A64: @ 0x08052A64
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r9, r0
	add r0, r0, #67
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _08052A80
	b _08052C60
_08052A80:
	mov r0, r9
	ldr r2, [r0, #100]
	mov r1, #4
	ldrsh r0, [r2, r1]
	mov r3, r9
	ldr r1, [r3, #32]
	add r0, r1, r0
	str r0, [sp, #4]
	mov r3, #6
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r1, #0
	ldrsh r0, [r2, r1]
	mov r3, r9
	ldr r1, [r3, #36]
	add r0, r1, r0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r0, [r2, r3]
	add r1, r1, r0
	str r1, [sp, #16]
	mov r5, #128
	lsl r5, r5, #1
	add r0, sp, #4
	mov r1, #0
	add r2, r5, #0
	mov r3, #0
	bl sub_080066FC
	add r4, r0, #0
	mov r0, #127
	and r4, r4, r0
	cmp r4, #0
	beq _08052AC8
	b _08052C08
_08052AC8:
	ldr r0, _08052B38  @ =gUnknown_03001940
	ldr r1, [r0]
	mov r0, #176
	add r0, r0, r1
	mov r12, r0
	mov r2, #1
	str r2, [sp, #20]
	ldr r3, [sp, #12]
	mov r8, r3
	ldr r7, [sp, #4]
	ldr r0, [sp, #8]
	add r6, r0, r5
	ldr r0, [sp, #16]
	add r5, r0, r5
	mov r0, #142
	lsl r0, r0, #1
	add r2, r1, r0
	mov r1, #128
	lsl r1, r1, #3
	mov r10, r1
_08052AF0:
	mov r0, r12
	add r0, r0, #132
	ldrb r0, [r0, #20]
	cmp r0, #0
	beq _08052BBC
	mov r3, r12
	ldrh r0, [r3]
	cmp r0, #124
	bne _08052B40
	ldr r0, [r2, #24]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	beq _08052BBC
	ldr r0, [r2]
	ldr r3, [r2, #8]
	ldr r4, [r2, #4]
	ldr r1, [r2, #12]
	cmp r8, r0
	ble _08052BBC
	cmp r7, r3
	bge _08052BBC
	cmp r6, r1
	bge _08052BBC
	cmp r5, r4
	ble _08052BBC
	mov r2, r12
	add r2, r2, #61
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1, #76]
	ldr r1, _08052B3C  @ =0x03001924
	ldrb r0, [r2]
	b _08052C5E
_08052B38:
	.4byte gUnknown_03001940
_08052B3C:
	.4byte 0x03001924
_08052B40:
	cmp r0, #125
	bne _08052B6A
	ldr r0, [r2, #24]
	ldr r0, [r0, #12]
	mov r3, r10
	and r0, r0, r3
	cmp r0, #0
	beq _08052BBC
	ldr r0, [r2]
	ldr r3, [r2, #8]
	ldr r4, [r2, #4]
	ldr r1, [r2, #12]
	cmp r8, r0
	ble _08052BBC
	cmp r7, r3
	bge _08052BBC
	cmp r6, r1
	bge _08052BBC
	cmp r5, r4
	ble _08052BBC
	b _08052C60
_08052B6A:
	cmp r0, #126
	bne _08052B94
	ldr r0, [r2, #24]
	ldr r0, [r0, #12]
	mov r1, r10
	and r0, r0, r1
	cmp r0, #0
	beq _08052BBC
	ldr r0, [r2]
	ldr r3, [r2, #8]
	ldr r4, [r2, #4]
	ldr r1, [r2, #12]
	cmp r8, r0
	ble _08052BBC
	cmp r7, r3
	bge _08052BBC
	cmp r6, r1
	bge _08052BBC
	cmp r5, r4
	ble _08052BBC
	b _08052C60
_08052B94:
	cmp r0, #127
	bne _08052BBC
	ldr r0, [r2, #24]
	ldr r0, [r0, #12]
	mov r3, r10
	and r0, r0, r3
	cmp r0, #0
	beq _08052BBC
	ldr r0, [r2]
	ldr r3, [r2, #8]
	ldr r4, [r2, #4]
	ldr r1, [r2, #12]
	cmp r8, r0
	ble _08052BBC
	cmp r7, r3
	bge _08052BBC
	cmp r6, r1
	bge _08052BBC
	cmp r5, r4
	bgt _08052C60
_08052BBC:
	ldr r1, [sp, #20]
	lsl r0, r1, #16
	mov r3, #128
	lsl r3, r3, #9
	add r0, r0, r3
	add r2, r2, #176
	mov r1, #176
	add r12, r12, r1
	lsr r3, r0, #16
	str r3, [sp, #20]
	asr r0, r0, #16
	cmp r0, #19
	ble _08052AF0
	ldr r1, _08052BFC  @ =0x03001924
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	strb r0, [r1]
	mov r0, r9
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052C00  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052C04  @ =gUnknown_080B77F4
	str r0, [sp]
	mov r0, r9
	mov r1, #16
	bl sub_0804A644
	mov r0, #1
	b _08052C62
	.byte 0x00
	.byte 0x00
_08052BFC:
	.4byte 0x03001924
_08052C00:
	.4byte 0x030003AD
_08052C04:
	.4byte gUnknown_080B77F4
_08052C08:
	cmp r4, #1
	bne _08052C40
	ldr r0, _08052C34  @ =0x030003A8
	mov r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08052C60
	mov r0, r9
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08052C38  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052C3C  @ =gUnknown_080B77F4
	str r0, [sp]
	mov r0, r9
	mov r1, #16
	bl sub_0804A644
	mov r0, r9
	strb r4, [r0, #15]
	mov r0, #1
	b _08052C62
_08052C34:
	.4byte 0x030003A8
_08052C38:
	.4byte 0x030003AD
_08052C3C:
	.4byte gUnknown_080B77F4
_08052C40:
	cmp r4, #12
	bne _08052C4C
	mov r0, #192
	mov r1, r9
	strh r0, [r1, #54]
	b _08052C56
_08052C4C:
	cmp r4, #13
	bne _08052C56
	ldr r0, _08052C74  @ =0x0000FF40
	mov r2, r9
	strh r0, [r2, #54]
_08052C56:
	ldr r1, _08052C78  @ =0x03001924
	mov r3, #1
	neg r3, r3
	add r0, r3, #0
_08052C5E:
	strb r0, [r1]
_08052C60:
	mov r0, #0
_08052C62:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08052C74:
	.4byte 0x0000FF40
_08052C78:
	.4byte 0x03001924
	THUMB_FUNC_END sub_08052A64

	THUMB_FUNC_START sub_08052C7C
sub_08052C7C: @ 0x08052C7C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r5, r0, #0
	add r7, r2, #0
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp, #4]
	ldr r0, _08052D10  @ =gUnknown_03001940
	ldr r0, [r0]
	mov r9, r0
	add r0, r5, #0
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	lsl r0, r0, #7
	ldr r1, [r5, #32]
	add r1, r1, r0
	mov r8, r1
	ldrb r0, [r2, #2]
	lsl r0, r0, #8
	ldr r1, [r5, #36]
	add r1, r1, r0
	str r1, [sp, #12]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #64
	add r1, r1, r5
	mov r12, r1
	mov r4, r9
	add r4, r4, #32
	ldr r2, _08052D14  @ =0x030003AD
	mov r10, r2
_08052CC4:
	mov r0, r9
	add r0, r0, #132
	ldrb r0, [r0, #20]
	cmp r0, #0
	bne _08052CD0
	b _08052E84
_08052CD0:
	mov r1, r9
	ldrh r0, [r1]
	ldr r2, [sp, #4]
	cmp r0, r2
	bne _08052D38
	ldr r3, [r4, #100]
	ldr r0, [r3, #12]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08052CE8
	b _08052E84
_08052CE8:
	ldrb r1, [r3, #2]
	lsl r1, r1, #8
	ldr r0, [r4, #4]
	add r0, r0, r1
	ldr r1, [sp, #12]
	cmp r0, r1
	beq _08052CF8
	b _08052E84
_08052CF8:
	ldr r0, [r4]
	mov r1, r8
	sub r2, r1, r0
	ldrb r0, [r3, #1]
	lsl r0, r0, #7
	sub r1, r2, r0
	cmp r1, #0
	blt _08052D18
	cmp r1, r7
	ble _08052D20
	b _08052E84
	.byte 0x00
	.byte 0x00
_08052D10:
	.4byte gUnknown_03001940
_08052D14:
	.4byte 0x030003AD
_08052D18:
	sub r0, r0, r2
	cmp r0, r7
	ble _08052D20
	b _08052E84
_08052D20:
	ldr r0, _08052D34  @ =0x03000398
	ldr r0, [r0, #4]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r0, r2
	ldr r1, [r5, #36]
	cmp r0, r1
	ble _08052D32
	b _08052E84
_08052D32:
	b _08052D8E
_08052D34:
	.4byte 0x03000398
_08052D38:
	cmp r0, #123
	bne _08052DB4
	ldr r6, [r4, #100]
	ldr r0, [r6, #12]
	mov r1, #128
	lsl r1, r1, #7
	and r0, r0, r1
	cmp r0, #0
	bne _08052D4C
	b _08052E84
_08052D4C:
	ldr r0, [r4, #4]
	ldr r3, [r5, #36]
	cmp r0, r3
	beq _08052D60
	mov r2, #128
	lsl r2, r2, #5
	add r0, r0, r2
	cmp r0, r3
	bge _08052D60
	b _08052E84
_08052D60:
	ldr r0, [r4]
	mov r1, r8
	sub r2, r1, r0
	ldrb r0, [r6, #1]
	lsl r0, r0, #7
	sub r1, r2, r0
	cmp r1, #0
	blt _08052D76
	cmp r1, r7
	ble _08052D7E
	b _08052E84
_08052D76:
	sub r0, r0, r2
	cmp r0, r7
	ble _08052D7E
	b _08052E84
_08052D7E:
	ldr r0, _08052DAC  @ =0x03000398
	ldr r0, [r0, #4]
	mov r2, #128
	lsl r2, r2, #6
	add r0, r0, r2
	cmp r0, r3
	ble _08052D8E
	b _08052E84
_08052D8E:
	mov r0, r12
	ldrb r2, [r0]
	mov r1, r10
	ldrb r3, [r1]
	ldr r0, _08052DB0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #34
	bl sub_0804A644
	mov r0, #0
	strh r0, [r5, #58]
	mov r0, #1
	b _08052E98
	.byte 0x00
	.byte 0x00
_08052DAC:
	.4byte 0x03000398
_08052DB0:
	.4byte gUnknown_080B77F4
_08052DB4:
	cmp r0, #125
	bne _08052DEC
	ldr r3, [r4, #100]
	ldr r0, [r3, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08052E84
	ldr r0, [r4, #4]
	ldr r1, [r5, #36]
	cmp r0, r1
	beq _08052DD6
	ldr r2, _08052DE8  @ =0xFFFFF000
	add r0, r0, r2
	cmp r0, r1
	bne _08052E84
_08052DD6:
	ldr r0, [r4]
	mov r1, r8
	sub r2, r1, r0
	ldrb r0, [r3, #1]
	lsl r0, r0, #7
	sub r1, r2, r0
	cmp r1, #0
	bge _08052E40
	b _08052E4C
_08052DE8:
	.4byte 0xFFFFF000
_08052DEC:
	cmp r0, #126
	bne _08052E12
	ldr r3, [r4, #100]
	ldr r0, [r3, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08052E84
	ldr r0, [r4, #4]
	ldr r1, [r5, #36]
	cmp r0, r1
	beq _08052DD6
	mov r2, #128
	lsl r2, r2, #5
	add r0, r0, r2
	cmp r0, r1
	blt _08052E84
	b _08052DD6
_08052E12:
	cmp r0, #127
	bne _08052E84
	ldr r3, [r4, #100]
	ldr r0, [r3, #12]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08052E84
	ldr r0, [r4, #4]
	ldr r2, _08052E48  @ =0xFFFFF000
	add r0, r0, r2
	ldr r1, [r5, #36]
	cmp r0, r1
	bne _08052E84
	ldr r0, [r4]
	mov r1, r8
	sub r2, r1, r0
	ldrb r0, [r3, #1]
	lsl r0, r0, #7
	sub r1, r2, r0
	cmp r1, #0
	blt _08052E4C
_08052E40:
	cmp r1, r7
	ble _08052E52
	b _08052E84
	.byte 0x00
	.byte 0x00
_08052E48:
	.4byte 0xFFFFF000
_08052E4C:
	sub r0, r0, r2
	cmp r0, r7
	bgt _08052E84
_08052E52:
	mov r0, r12
	ldrb r2, [r0]
	mov r1, r10
	ldrb r3, [r1]
	ldr r0, _08052E7C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #42
	bl sub_0804A644
	mov r0, #0
	strh r0, [r5, #58]
	ldr r0, [r5, #92]
	ldr r1, _08052E80  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r5, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r5, #76]
	mov r0, #1
	b _08052E98
_08052E7C:
	.4byte gUnknown_080B77F4
_08052E80:
	.4byte 0xFFFFFF00
_08052E84:
	ldr r2, [sp, #8]
	add r2, r2, #1
	str r2, [sp, #8]
	add r4, r4, #176
	mov r0, #176
	add r9, r9, r0
	cmp r2, #19
	bgt _08052E96
	b _08052CC4
_08052E96:
	mov r0, #0
_08052E98:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08052C7C

	THUMB_FUNC_START sub_08052EA8
sub_08052EA8: @ 0x08052EA8
	push {r4-r7,lr}
	sub sp, sp, #16
	add r5, r0, #0
	lsl r1, r1, #24
	mov r6, #160
	lsl r6, r6, #3
	cmp r1, #0
	bne _08052EBA
	ldr r6, _08052F04  @ =0xFFFFFB00
_08052EBA:
	ldr r4, [r5, #100]
	mov r1, #4
	ldrsh r0, [r4, r1]
	ldr r3, [r5, #32]
	add r3, r3, r0
	str r3, [sp]
	mov r7, #0
	ldrsh r0, [r4, r7]
	ldr r2, [r5, #36]
	add r2, r2, r0
	str r2, [sp, #4]
	mov r1, #6
	ldrsh r0, [r4, r1]
	mov r7, #4
	ldrsh r1, [r4, r7]
	sub r0, r0, r1
	add r3, r3, r0
	str r3, [sp, #8]
	mov r0, #128
	lsl r0, r0, #1
	add r2, r2, r0
	str r2, [sp, #12]
	mov r0, sp
	add r1, r6, #0
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08052F3C
	cmp r6, #0
	ble _08052F08
	ldr r0, [sp]
	mov r1, #160
	lsl r1, r1, #4
	b _08052F0C
	.byte 0x00
	.byte 0x00
_08052F04:
	.4byte 0xFFFFFB00
_08052F08:
	ldr r0, [sp]
	ldr r1, _08052F38  @ =0xFFFFF600
_08052F0C:
	add r0, r0, r1
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #8]
	mov r7, #2
	ldrsh r1, [r4, r7]
	ldr r0, [r5, #36]
	add r0, r0, r1
	str r0, [sp, #12]
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	beq _08052F3C
	mov r0, #0
	b _08052F3E
	.byte 0x00
	.byte 0x00
_08052F38:
	.4byte 0xFFFFF600
_08052F3C:
	mov r0, #1
_08052F3E:
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08052EA8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08052F48
sub_08052F48: @ 0x08052F48
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	lsl r1, r1, #24
	lsr r6, r1, #24
	mov r12, r6
	ldr r1, [r4, #32]
	asr r1, r1, #11
	add r1, r1, #1
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r5, [r4, #36]
	asr r2, r5, #11
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r0, _08052FCC  @ =0x030003A4
	ldr r3, [r0]
	ldr r0, _08052FD0  @ =gCurrentLevelWidth
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	mul r2, r0, r2
	ldr r0, [r3]
	add r1, r1, r2
	add r0, r0, r1
	ldrb r3, [r0]
	add r2, r4, #0
	add r2, r2, #64
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0805303C
	ldr r0, _08052FD4  @ =0x03000398
	ldr r7, _08052FD8  @ =0xFFFFF000
	add r1, r5, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	ble _08053008
	mov r0, #12
	and r3, r3, r0
	cmp r3, #0
	bne _08052F9E
	b _08053138
_08052F9E:
	cmp r3, #4
	bne _08052FE4
	ldrb r2, [r2]
	ldr r0, _08052FDC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052FE0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #36]
	sub r1, r1, #240
	add r0, r0, r1
	b _080530E6
_08052FCC:
	.4byte 0x030003A4
_08052FD0:
	.4byte gCurrentLevelWidth
_08052FD4:
	.4byte 0x03000398
_08052FD8:
	.4byte 0xFFFFF000
_08052FDC:
	.4byte 0x030003AD
_08052FE0:
	.4byte gUnknown_080B77F4
_08052FE4:
	cmp r3, #8
	bne _08053000
	ldrb r2, [r2]
	ldr r0, _08052FF8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08052FFC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	b _08053128
_08052FF8:
	.4byte 0x030003AD
_08052FFC:
	.4byte gUnknown_080B77F4
_08053000:
	cmp r6, #0
	bne _08053006
	b _08053138
_08053006:
	b _0805311A
_08053008:
	mov r0, #3
	and r3, r3, r0
	cmp r3, #0
	bne _08053012
	b _08053138
_08053012:
	cmp r3, #1
	beq _080530BE
	cmp r3, #2
	bne _08053034
	ldrb r2, [r2]
	ldr r0, _0805302C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053030  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	b _08053128
	.byte 0x00
	.byte 0x00
_0805302C:
	.4byte 0x030003AD
_08053030:
	.4byte gUnknown_080B77F4
_08053034:
	cmp r6, #0
	bne _0805303A
	b _08053138
_0805303A:
	b _0805311A
_0805303C:
	ldr r0, _08053080  @ =0x03000398
	ldr r7, _08053084  @ =0xFFFFF000
	add r1, r5, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	ble _080530B2
	mov r0, #192
	and r3, r3, r0
	cmp r3, #0
	beq _08053138
	cmp r3, #64
	bne _08053090
	ldrb r2, [r2]
	ldr r0, _08053088  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805308C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #36]
	sub r1, r1, #240
	add r0, r0, r1
	b _080530E6
	.byte 0x00
	.byte 0x00
_08053080:
	.4byte 0x03000398
_08053084:
	.4byte 0xFFFFF000
_08053088:
	.4byte 0x030003AD
_0805308C:
	.4byte gUnknown_080B77F4
_08053090:
	cmp r3, #128
	bne _080530AC
	ldrb r2, [r2]
	ldr r0, _080530A4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080530A8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	b _08053128
_080530A4:
	.4byte 0x030003AD
_080530A8:
	.4byte gUnknown_080B77F4
_080530AC:
	cmp r6, #0
	beq _08053138
	b _0805311A
_080530B2:
	mov r0, #48
	and r3, r3, r0
	cmp r3, #0
	beq _08053138
	cmp r3, #16
	bne _080530F8
_080530BE:
	ldrb r2, [r2]
	ldr r0, _080530EC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080530F0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	ldr r0, [r4, #36]
	ldr r7, _080530F4  @ =0xFFFFFF00
	add r0, r0, r7
_080530E6:
	str r0, [r4, #36]
	mov r0, #1
	b _0805313A
_080530EC:
	.4byte 0x030003AD
_080530F0:
	.4byte gUnknown_080B77F4
_080530F4:
	.4byte 0xFFFFFF00
_080530F8:
	cmp r3, #32
	bne _08053114
	ldrb r2, [r2]
	ldr r0, _0805310C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053110  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #15
	b _08053128
_0805310C:
	.4byte 0x030003AD
_08053110:
	.4byte gUnknown_080B77F4
_08053114:
	mov r0, r12
	cmp r0, #0
	beq _08053138
_0805311A:
	ldrb r2, [r2]
	ldr r0, _08053130  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053134  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #52
_08053128:
	bl sub_0804A644
	mov r0, #1
	b _0805313A
_08053130:
	.4byte 0x030003AD
_08053134:
	.4byte gUnknown_080B77F4
_08053138:
	mov r0, #0
_0805313A:
	add sp, sp, #4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08052F48

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08053144
sub_08053144: @ 0x08053144
	push {lr}
	sub sp, sp, #4
	add r1, r0, #0
	mov r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #17
	bne _08053174
	add r0, r1, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805316C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053170  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #18
	bl sub_0804A644
	b _0805318A
	.byte 0x00
	.byte 0x00
_0805316C:
	.4byte 0x030003AD
_08053170:
	.4byte gUnknown_080B77F4
_08053174:
	add r0, r1, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053190  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053194  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #17
	bl sub_0804A644
_0805318A:
	add sp, sp, #4
	pop {r0}
	bx r0
_08053190:
	.4byte 0x030003AD
_08053194:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053144

	THUMB_FUNC_START sub_08053198
sub_08053198: @ 0x08053198
	push {lr}
	sub sp, sp, #4
	add r1, r0, #0
	add r1, r1, #64
	ldrb r2, [r1]
	ldr r1, _080531B8  @ =0x030003AD
	ldrb r3, [r1]
	ldr r1, _080531BC  @ =gUnknown_080B77F4
	str r1, [sp]
	mov r1, #18
	bl sub_0804A644
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080531B8:
	.4byte 0x030003AD
_080531BC:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053198

	THUMB_FUNC_START sub_080531C0
sub_080531C0: @ 0x080531C0
	push {r4-r7,lr}
	add r6, r0, #0
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r7, r2, #16
	lsl r3, r3, #16
	lsr r5, r3, #16
	ldr r0, _08053204  @ =0x03001BD4
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r3, r1, r0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	cmp r0, r4
	ble _08053212
	sub r1, r0, r4
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r1, r0
	bge _08053212
	lsl r0, r7, #16
	asr r2, r0, #16
	sub r0, r3, r6
	cmp r0, #0
	blt _08053208
	cmp r0, r2
	blt _0805320E
	b _08053212
_08053204:
	.4byte 0x03001BD4
_08053208:
	sub r0, r6, r3
	cmp r0, r2
	bge _08053212
_0805320E:
	mov r0, #1
	b _08053214
_08053212:
	mov r0, #0
_08053214:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080531C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805321C
sub_0805321C: @ 0x0805321C
	push {r4-r7,lr}
	add r6, r0, #0
	add r4, r1, #0
	lsl r2, r2, #16
	lsr r7, r2, #16
	lsl r3, r3, #16
	lsr r5, r3, #16
	ldr r0, _08053260  @ =0x03001BD4
	ldr r2, [r0]
	ldr r1, [r2, #32]
	asr r1, r1, #8
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r3, r1, r0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	cmp r0, r4
	ble _0805326A
	sub r1, r0, r4
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r1, r0
	bge _0805326E
	lsl r0, r7, #16
	asr r2, r0, #16
	sub r0, r3, r6
	cmp r0, #0
	blt _08053264
	cmp r0, r2
	blt _0805326A
	b _0805326E
_08053260:
	.4byte 0x03001BD4
_08053264:
	sub r0, r6, r3
	cmp r0, r2
	bge _0805326E
_0805326A:
	mov r0, #0
	b _08053270
_0805326E:
	mov r0, #1
_08053270:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0805321C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08053278
sub_08053278: @ 0x08053278
	push {lr}
	ldr r1, _0805329C  @ =0x030003B8
	mov r0, #0
	strb r0, [r1]
	ldr r1, _080532A0  @ =gUnknown_030019AC
	ldr r2, [r1]
	add r0, r2, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r3, r1, #0
	cmp r0, #0
	bne _080532A4
	ldr r0, [r2, #32]
	mov r2, #192
	lsl r2, r2, #4
	b _080532AA
_0805329C:
	.4byte 0x030003B8
_080532A0:
	.4byte gUnknown_030019AC
_080532A4:
	ldr r0, [r2, #32]
	mov r2, #128
	lsl r2, r2, #3
_080532AA:
	add r1, r0, r2
	ldr r0, _080532BC  @ =0x03000398
	str r1, [r0]
	ldr r1, [r3]
	ldr r1, [r1, #36]
	str r1, [r0, #4]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080532BC:
	.4byte 0x03000398
	THUMB_FUNC_END sub_08053278

	THUMB_FUNC_START sub_080532C0
sub_080532C0: @ 0x080532C0
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053314  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053318  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #57
	bl sub_0804A644
	ldr r0, [r4, #32]
	ldr r1, _0805331C  @ =0xFFFFF800
	add r0, r0, r1
	str r0, [r4, #32]
	ldr r0, [r4, #36]
	add r0, r0, r1
	str r0, [r4, #36]
	ldr r5, _08053320  @ =gUnknown_03001A1C
	ldr r2, [r5]
	ldr r0, _08053324  @ =0x02010000
	orr r2, r2, r0
	ldr r3, _08053328  @ =gUnknown_030019A0
	ldr r0, [r3]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r3]
	mov r1, #0
	strb r1, [r4, #15]
	ldr r0, _0805332C  @ =0x030003A8
	strh r1, [r0]
	mov r0, #128
	lsl r0, r0, #19
	orr r2, r2, r0
	str r2, [r5]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_08053314:
	.4byte 0x030003AD
_08053318:
	.4byte gUnknown_080B77F4
_0805331C:
	.4byte 0xFFFFF800
_08053320:
	.4byte gUnknown_03001A1C
_08053324:
	.4byte 0x02010000
_08053328:
	.4byte gUnknown_030019A0
_0805332C:
	.4byte 0x030003A8
	THUMB_FUNC_END sub_080532C0

	THUMB_FUNC_START sub_08053330
sub_08053330: @ 0x08053330
	push {r4,r5,lr}
	sub sp, sp, #16
	ldr r4, [r0, #100]
	mov r2, #4
	ldrsh r1, [r4, r2]
	ldr r3, [r0, #32]
	add r1, r3, r1
	str r1, [sp]
	mov r5, #0
	ldrsh r1, [r4, r5]
	ldr r2, [r0, #36]
	add r1, r2, r1
	str r1, [sp, #4]
	mov r5, #6
	ldrsh r1, [r4, r5]
	add r3, r3, r1
	str r3, [sp, #8]
	mov r3, #2
	ldrsh r1, [r4, r3]
	add r2, r2, r1
	str r2, [sp, #12]
	mov r5, #48
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08053370
	mov r1, #0
	cmp r0, #0
	ble _08053372
	ldr r1, _0805336C  @ =0x00000672
	b _08053372
_0805336C:
	.4byte 0x00000672
_08053370:
	ldr r1, _08053384  @ =0xFFFFF98E
_08053372:
	mov r0, sp
	mov r2, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08053388
	mov r0, #0
	b _0805338A
_08053384:
	.4byte 0xFFFFF98E
_08053388:
	mov r0, #1
_0805338A:
	add sp, sp, #16
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08053330

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08053394
sub_08053394: @ 0x08053394
	push {r4,lr}
	sub sp, sp, #16
	add r2, r0, #0
	add r2, r2, #132
	ldr r4, [r2]
	ldrb r2, [r4, #1]
	lsl r2, r2, #7
	ldr r3, [r0, #32]
	add r3, r3, r2
	ldrb r2, [r4, #2]
	lsl r2, r2, #8
	ldr r4, [r0, #36]
	add r2, r4, r2
	sub r0, r3, r1
	str r0, [sp]
	str r4, [sp, #4]
	add r3, r3, r1
	str r3, [sp, #8]
	str r2, [sp, #12]
	mov r0, sp
	mov r1, #7
	bl sub_0800678C
	lsl r0, r0, #24
	lsr r0, r0, #24
	add sp, sp, #16
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08053394

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080533D0
sub_080533D0: @ 0x080533D0
	bx lr
	THUMB_FUNC_END sub_080533D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080533D4
sub_080533D4: @ 0x080533D4
	bx lr
	THUMB_FUNC_END sub_080533D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080533D8
sub_080533D8: @ 0x080533D8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	bne _08053414
	add r0, r4, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _08053414
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08053414
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805341C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053420  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #10
	bl sub_0804A644
_08053414:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_0805341C:
	.4byte 0x030003AD
_08053420:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080533D8

	THUMB_FUNC_START sub_08053424
sub_08053424: @ 0x08053424
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08053456
	ldr r0, _08053460  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053464  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053468  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
_08053456:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08053460:
	.4byte 0xFFFFFF00
_08053464:
	.4byte 0x030003AD
_08053468:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053424

	THUMB_FUNC_START sub_0805346C
sub_0805346C: @ 0x0805346C
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805349E
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	ble _0805349E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080534A8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080534AC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #39
	bl sub_0804A644
_0805349E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080534A8:
	.4byte 0x030003AD
_080534AC:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_0805346C

	THUMB_FUNC_START sub_080534B0
sub_080534B0: @ 0x080534B0
	push {lr}
	bl sub_08052A64
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080534B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080534BC
sub_080534BC: @ 0x080534BC
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, _08053508  @ =gUnknown_03001940
	ldr r1, [r4, #76]
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r0, r0, r1
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _080534FE
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805350C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053510  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #41
	bl sub_0804A644
	ldr r1, _08053514  @ =0x03001924
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	strb r0, [r1]
_080534FE:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08053508:
	.4byte gUnknown_03001940
_0805350C:
	.4byte 0x030003AD
_08053510:
	.4byte gUnknown_080B77F4
_08053514:
	.4byte 0x03001924
	THUMB_FUNC_END sub_080534BC

	THUMB_FUNC_START sub_08053518
sub_08053518: @ 0x08053518
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805354C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053550  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #14
	bl sub_0804A644
	ldr r0, [r4, #92]
	mov r1, #16
	neg r1, r1
	and r0, r0, r1
	str r0, [r4, #92]
	mov r0, #1
	neg r0, r0
	str r0, [r4, #76]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805354C:
	.4byte 0x030003AD
_08053550:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053518

	THUMB_FUNC_START sub_08053554
sub_08053554: @ 0x08053554
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	bne _08053586
	add r0, r4, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _08053586
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053590  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053594  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #29
	bl sub_0804A644
_08053586:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08053590:
	.4byte 0x030003AD
_08053594:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053554

	THUMB_FUNC_START sub_08053598
sub_08053598: @ 0x08053598
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _080535CA
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	ble _080535CA
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080535D4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080535D8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
_080535CA:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080535D4:
	.4byte 0x030003AD
_080535D8:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053598

	THUMB_FUNC_START sub_080535DC
sub_080535DC: @ 0x080535DC
	push {r4,lr}
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	bne _080535F0
	add r0, r4, #0
	bl sub_08052A64
_080535F0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080535DC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080535F8
sub_080535F8: @ 0x080535F8
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805362A
	add r0, r4, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #15
	ble _0805362A
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053634  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053638  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
_0805362A:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08053634:
	.4byte 0x030003AD
_08053638:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080535F8

	THUMB_FUNC_START sub_0805363C
sub_0805363C: @ 0x0805363C
	push {lr}
	add r2, r0, #0
	ldr r0, [r2, #36]
	asr r0, r0, #8
	ldr r1, _0805365C  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _08053658
	add r0, r2, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08053658:
	pop {r0}
	bx r0
_0805365C:
	.4byte gUnknown_030012E4
	THUMB_FUNC_END sub_0805363C

	THUMB_FUNC_START sub_08053660
sub_08053660: @ 0x08053660
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #92]
	mov r0, #240
	and r0, r0, r2
	lsr r0, r0, #4
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08053684
	ldr r0, [r4, #36]
	asr r0, r0, #8
	ldr r1, _080536D0  @ =gUnknown_030012E4
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _080536C8
_08053684:
	ldr r0, _080536D4  @ =0xFFFFFF00
	and r2, r2, r0
	str r2, [r4, #92]
	add r0, r0, #255
	str r0, [r4, #76]
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	mov r1, #5
	mov r2, #0
	bl sub_080410B4
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080536D8  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080536DC  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #58
	bl sub_0804A644
	ldr r2, _080536E0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	ldr r1, _080536E4  @ =0x02010800
	orr r0, r0, r1
	str r0, [r2]
	ldr r2, _080536E8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #22
	orr r0, r0, r1
	str r0, [r2]
_080536C8:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_080536D0:
	.4byte gUnknown_030012E4
_080536D4:
	.4byte 0xFFFFFF00
_080536D8:
	.4byte 0x030003AD
_080536DC:
	.4byte gUnknown_080B77F4
_080536E0:
	.4byte gUnknown_03001A1C
_080536E4:
	.4byte 0x02010800
_080536E8:
	.4byte gUnknown_030019A0
	THUMB_FUNC_END sub_08053660

	THUMB_FUNC_START sub_080536EC
sub_080536EC: @ 0x080536EC
	push {lr}
	ldrb r1, [r0, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08053718
	ldr r2, _0805371C  @ =gUnknown_03001A1C
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0805370C
	ldr r0, _08053720  @ =0x02010800
	orr r1, r1, r0
	str r1, [r2]
_0805370C:
	ldr r0, _08053724  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #22
	orr r1, r1, r2
	str r1, [r0]
_08053718:
	pop {r0}
	bx r0
_0805371C:
	.4byte gUnknown_03001A1C
_08053720:
	.4byte 0x02010800
_08053724:
	.4byte gUnknown_030019A0
	THUMB_FUNC_END sub_080536EC

	THUMB_FUNC_START sub_08053728
sub_08053728: @ 0x08053728
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_08052A64
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805379E
	add r0, r4, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	bne _0805379E
	add r0, r4, #0
	add r0, r0, #64
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08053780
	ldr r0, _08053774  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r4, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	bge _0805379E
	ldr r0, _08053778  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805377C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl sub_0804A644
	b _0805379E
	.byte 0x00
	.byte 0x00
_08053774:
	.4byte gUnknown_030019AC
_08053778:
	.4byte 0x030003AD
_0805377C:
	.4byte gUnknown_080B77F4
_08053780:
	ldr r0, _080537A8  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r4, #32]
	ldr r0, [r0, #32]
	cmp r1, r0
	ble _0805379E
	ldr r0, _080537AC  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080537B0  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0804A644
_0805379E:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080537A8:
	.4byte gUnknown_030019AC
_080537AC:
	.4byte 0x030003AD
_080537B0:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053728

	THUMB_FUNC_START sub_080537B4
sub_080537B4: @ 0x080537B4
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	bl sub_080527DC
	lsl r0, r0, #24
	cmp r0, #0
	bne _08053812
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08053812
	ldr r0, _080537F0  @ =0x030003AC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080537FC
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080537F4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080537F8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	bl sub_0804A644
	b _08053812
	.byte 0x00
	.byte 0x00
_080537F0:
	.4byte 0x030003AC
_080537F4:
	.4byte 0x030003AD
_080537F8:
	.4byte gUnknown_080B77F4
_080537FC:
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805381C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053820  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #7
	bl sub_0804A644
_08053812:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805381C:
	.4byte 0x030003AD
_08053820:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080537B4

	THUMB_FUNC_START sub_08053824
sub_08053824: @ 0x08053824
	push {lr}
	add r3, r0, #0
	ldrb r1, [r3, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08053848
	ldr r2, _0805384C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #4
	orr r0, r0, r1
	str r0, [r2]
	add r0, r3, #0
	add r0, r0, #61
	ldrb r0, [r0]
	bl sub_08039B64
_08053848:
	pop {r0}
	bx r0
_0805384C:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08053824

	THUMB_FUNC_START sub_08053850
sub_08053850: @ 0x08053850
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r0, #0
	ldrb r1, [r5, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080538A8
	ldr r2, _08053894  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #7
	orr r0, r0, r1
	str r0, [r2]
	add r4, r5, #0
	add r4, r4, #64
	ldrb r2, [r4]
	ldr r0, _08053898  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _0805389C  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #50
	bl sub_0804A644
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080538A0
	ldr r0, [r5, #32]
	mov r1, #192
	lsl r1, r1, #4
	b _080538A4
	.byte 0x00
	.byte 0x00
_08053894:
	.4byte gUnknown_030019A0
_08053898:
	.4byte 0x030003AD
_0805389C:
	.4byte gUnknown_080B77F4
_080538A0:
	ldr r0, [r5, #32]
	ldr r1, _080538B0  @ =0xFFFFF400
_080538A4:
	add r0, r0, r1
	str r0, [r5, #32]
_080538A8:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080538B0:
	.4byte 0xFFFFF400
	THUMB_FUNC_END sub_08053850

	THUMB_FUNC_START sub_080538B4
sub_080538B4: @ 0x080538B4
	push {r4,lr}
	sub sp, sp, #12
	add r4, r0, #0
	ldr r0, _08053908  @ =gUnknown_030019A0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08053900
	ldr r2, _0805390C  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #16
	orr r0, r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053910  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053914  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #45
	bl sub_0804A644
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #162
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08053900:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08053908:
	.4byte gUnknown_030019A0
_0805390C:
	.4byte gUnknown_03001A1C
_08053910:
	.4byte 0x030003AD
_08053914:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080538B4

	THUMB_FUNC_START sub_08053918
sub_08053918: @ 0x08053918
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, [r4, #32]
	asr r2, r2, #8
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r2, r2, r0
	ldr r0, _08053974  @ =0x03001998
	ldr r0, [r0]
	ldr r1, [r0, #32]
	asr r1, r1, #8
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	sub r2, r2, r1
	cmp r2, #0
	bge _08053946
	neg r2, r2
_08053946:
	cmp r2, #12
	ble _0805396C
	ldr r2, _08053978  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #7
	orr r0, r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _0805397C  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053980  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #48
	bl sub_0804A644
_0805396C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08053974:
	.4byte 0x03001998
_08053978:
	.4byte gUnknown_030019A0
_0805397C:
	.4byte 0x030003AD
_08053980:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053918

	THUMB_FUNC_START sub_08053984
sub_08053984: @ 0x08053984
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	ldr r2, _080539C0  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _080539B6
	mov r0, #128
	lsl r0, r0, #1
	orr r1, r1, r0
	str r1, [r2]
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _080539C4  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _080539C8  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #50
	bl sub_0804A644
_080539B6:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080539C0:
	.4byte gUnknown_030019A0
_080539C4:
	.4byte 0x030003AD
_080539C8:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_08053984

	THUMB_FUNC_START sub_080539CC
sub_080539CC: @ 0x080539CC
	push {r4,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r0, r0, #84
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #70
	bne _080539E8
	ldr r0, _08053A10  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #8
	orr r1, r1, r2
	str r1, [r0]
_080539E8:
	ldrb r1, [r4, #12]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08053A08
	add r0, r4, #0
	add r0, r0, #64
	ldrb r2, [r0]
	ldr r0, _08053A14  @ =0x030003AD
	ldrb r3, [r0]
	ldr r0, _08053A18  @ =gUnknown_080B77F4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #51
	bl sub_0804A644
_08053A08:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08053A10:
	.4byte gUnknown_03001938
_08053A14:
	.4byte 0x030003AD
_08053A18:
	.4byte gUnknown_080B77F4
	THUMB_FUNC_END sub_080539CC

	THUMB_FUNC_START sub_08053A1C
sub_08053A1C: @ 0x08053A1C
	push {lr}
	sub sp, sp, #16
	mov r3, #128
	lsl r3, r3, #3
	add r2, r0, r3
	str r2, [sp]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r0, r2
	str r0, [sp, #8]
	str r1, [sp, #4]
	mov r3, #128
	lsl r3, r3, #6
	add r1, r1, r3
	str r1, [sp, #12]
	ldr r0, _08053A64  @ =gUnknown_030019AC
	ldr r0, [r0]
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	bne _08053A68
	mov r2, #128
	lsl r2, r2, #1
	mov r0, sp
	mov r1, #0
	mov r3, #0
	bl sub_080066FC
	cmp r0, #0
	bne _08053A68
	mov r0, #0
	b _08053A6A
	.byte 0x00
	.byte 0x00
_08053A64:
	.4byte gUnknown_030019AC
_08053A68:
	mov r0, #1
_08053A6A:
	add sp, sp, #16
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08053A1C

	THUMB_FUNC_START sub_08053A70
sub_08053A70: @ 0x08053A70
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #176
	ldr r0, _08053B9C  @ =0x03001BE8
	ldr r0, [r0]
	cmp r0, #3
	bne _08053A88
	bl sub_08029E7C
_08053A88:
	ldr r0, _08053BA0  @ =gUnknown_082EB2B0
	str r0, [sp]
	ldr r0, _08053BA4  @ =gUnknown_082EB2B8
	str r0, [sp, #4]
	ldr r0, _08053BA8  @ =gUnknown_082EB244
	str r0, [sp, #8]
	mov r1, sp
	mov r4, #0
	mov r0, #0
	strh r0, [r1, #12]
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #16]
	mov r1, #192
	lsl r1, r1, #6
	str r1, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	mov r1, #64
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #52]
	mov r1, #32
	strh r1, [r0, #54]
	add r5, sp, #56
	mov r0, #6
	strb r0, [r5]
	mov r0, sp
	mov r1, #3
	mov r10, r1
	mov r1, r10
	strh r1, [r0, #58]
	mov r0, r8
	str r0, [sp, #60]
	add r7, sp, #64
	mov r1, #32
	strh r1, [r7]
	mov r6, sp
	add r6, r6, #66
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	add r0, sp, #68
	mov r9, r0
	mov r0, #128
	lsl r0, r0, #1
	mov r1, r9
	strh r0, [r1]
	str r4, [sp, #72]
	mov r0, #90
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08053BAC  @ =gUnknown_080C83A8
	str r0, [sp]
	ldr r0, _08053BB0  @ =gUnknown_080C83B0
	str r0, [sp, #4]
	ldr r0, _08053BB4  @ =gUnknown_080C833C
	str r0, [sp, #8]
	mov r1, sp
	mov r0, #1
	strh r0, [r1, #12]
	mov r1, #144
	lsl r1, r1, #7
	str r1, [sp, #16]
	mov r0, #192
	lsl r0, r0, #6
	str r0, [sp, #20]
	str r4, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	mov r0, sp
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	strb r0, [r5]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #58]
	mov r0, r8
	str r0, [sp, #60]
	mov r0, #16
	strh r0, [r7]
	mov r0, #128
	lsl r0, r0, #2
	strh r0, [r6]
	mov r0, #128
	mov r1, r9
	strh r0, [r1]
	str r4, [sp, #72]
	mov r0, #90
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	add r0, sp, #80
	strh r4, [r0]
	strh r4, [r0, #2]
	mov r1, #10
	str r1, [r0, #4]
	mov r1, #2
	str r1, [r0, #8]
	str r4, [r0, #12]
	bl sub_080572E0
	add r0, sp, #96
	mov r1, #90
	str r1, [sp, #96]
	strh r4, [r0, #4]
	mov r1, #0
	strb r1, [r0, #6]
	mov r1, #11
	strb r1, [r0, #7]
	mov r1, #10
	str r1, [r0, #8]
	mov r1, #90
	str r1, [r0, #12]
	bl sub_080565C0
	add r0, sp, #124
	mov r1, #90
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
_08053B9C:
	.4byte 0x03001BE8
_08053BA0:
	.4byte gUnknown_082EB2B0
_08053BA4:
	.4byte gUnknown_082EB2B8
_08053BA8:
	.4byte gUnknown_082EB244
_08053BAC:
	.4byte gUnknown_080C83A8
_08053BB0:
	.4byte gUnknown_080C83B0
_08053BB4:
	.4byte gUnknown_080C833C
	THUMB_FUNC_END sub_08053A70

	THUMB_FUNC_START sub_08053BB8
sub_08053BB8: @ 0x08053BB8
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
	ldr r0, _08053CB8  @ =gUnknown_082EB2B0
	str r0, [sp, #4]
	ldr r0, _08053CBC  @ =gUnknown_082EB2B8
	str r0, [sp, #8]
	ldr r0, _08053CC0  @ =gUnknown_082EB244
	str r0, [sp, #12]
	add r0, sp, #4
	mov r4, #0
	strh r1, [r0, #12]
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #20]
	mov r1, #192
	lsl r1, r1, #6
	str r1, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	mov r1, #64
	strh r1, [r0, #52]
	mov r1, #32
	strh r1, [r0, #54]
	add r5, sp, #60
	mov r0, #6
	strb r0, [r5]
	add r0, sp, #4
	mov r1, #3
	mov r10, r1
	mov r1, r10
	strh r1, [r0, #58]
	mov r0, #64
	str r0, [sp, #64]
	add r7, sp, #68
	mov r1, #32
	strh r1, [r7]
	mov r6, sp
	add r6, r6, #70
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r6]
	add r0, sp, #72
	mov r9, r0
	mov r0, #128
	lsl r0, r0, #1
	mov r1, r9
	strh r0, [r1]
	str r4, [sp, #76]
	mov r0, #90
	mov r8, r0
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _08053CC4  @ =gUnknown_080C83A8
	str r0, [sp, #4]
	ldr r0, _08053CC8  @ =gUnknown_080C83B0
	str r0, [sp, #8]
	ldr r0, _08053CCC  @ =gUnknown_080C833C
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #1
	strh r1, [r0, #12]
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #20]
	mov r1, #192
	lsl r1, r1, #6
	str r1, [sp, #24]
	str r4, [sp, #28]
	str r4, [sp, #32]
	str r4, [sp, #36]
	str r4, [sp, #40]
	add r0, sp, #4
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	strb r0, [r5]
	add r0, sp, #4
	mov r1, r10
	strh r1, [r0, #58]
	mov r0, #64
	str r0, [sp, #64]
	mov r0, #16
	strh r0, [r7]
	mov r0, #128
	lsl r0, r0, #2
	strh r0, [r6]
	mov r0, #128
	mov r1, r9
	strh r0, [r1]
	str r4, [sp, #76]
	mov r0, r8
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
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
_08053CB8:
	.4byte gUnknown_082EB2B0
_08053CBC:
	.4byte gUnknown_082EB2B8
_08053CC0:
	.4byte gUnknown_082EB244
_08053CC4:
	.4byte gUnknown_080C83A8
_08053CC8:
	.4byte gUnknown_080C83B0
_08053CCC:
	.4byte gUnknown_080C833C
	THUMB_FUNC_END sub_08053BB8

	THUMB_FUNC_START sub_08053CD0
sub_08053CD0: @ 0x08053CD0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #192
	mov r0, #0
	mov r10, r0
	ldr r3, _08053DD4  @ =0x03001BD8
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	ldrb r4, [r3, #2]
	lsl r1, r1, #1
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #4
	add r1, r1, r0
	add r1, r1, r4
	lsl r1, r1, #1
	ldr r2, _08053DD8  @ =gUnknown_08AF43E4
	add r1, r1, r2
	mov r5, #0
	ldrsh r0, [r1, r5]
	add r0, r0, r2
	str r0, [sp, #180]
	ldrb r1, [r0, #1]
	lsl r0, r1, #24
	lsr r2, r0, #30
	mov r8, r2
	lsr r0, r0, #26
	str r0, [sp, #176]
	mov r0, #15
	ldr r5, [sp, #176]
	and r5, r5, r0
	str r5, [sp, #176]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #184]
	cmp r4, #0
	bne _08053D46
	ldr r0, _08053DDC  @ =0x03001BE8
	ldr r1, [r0]
	ldr r0, _08053DE0  @ =0x000001B1
	cmp r1, r0
	bgt _08053D46
	ldr r0, _08053DE4  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _08053D46
	ldr r0, _08053DE8  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #9
	orr r1, r1, r2
	str r1, [r0]
_08053D46:
	ldr r0, _08053DEC  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053D64
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08053D64
	ldr r0, _08053DF0  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08053D64
	bl _08054C8C
_08053D64:
	ldr r0, _08053DF4  @ =gUnknown_082EB2B0
	str r0, [sp]
	ldr r0, _08053DF8  @ =gUnknown_082EB2B8
	str r0, [sp, #4]
	ldr r0, _08053DFC  @ =gUnknown_082EB244
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #0
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #16]
	mov r0, #192
	lsl r0, r0, #6
	str r0, [sp, #20]
	str r1, [sp, #24]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	mov r0, sp
	mov r3, #64
	strh r3, [r0, #52]
	mov r2, #32
	strh r2, [r0, #54]
	add r4, sp, #56
	mov r0, #6
	strb r0, [r4]
	mov r1, sp
	mov r0, #3
	strh r0, [r1, #58]
	str r3, [sp, #60]
	add r3, sp, #64
	strh r2, [r3]
	mov r2, sp
	add r2, r2, #66
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r2]
	add r1, sp, #68
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1]
	ldr r0, _08053DD4  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08053E00
	mov r0, #162
	str r0, [sp, #72]
	mov r0, #252
	b _08053E08
_08053DD4:
	.4byte 0x03001BD8
_08053DD8:
	.4byte gUnknown_08AF43E4
_08053DDC:
	.4byte 0x03001BE8
_08053DE0:
	.4byte 0x000001B1
_08053DE4:
	.4byte gUnknown_030012E8
_08053DE8:
	.4byte gUnknown_03001938
_08053DEC:
	.4byte gUnknown_03000C28
_08053DF0:
	.4byte gLevelEWorldFlag
_08053DF4:
	.4byte gUnknown_082EB2B0
_08053DF8:
	.4byte gUnknown_082EB2B8
_08053DFC:
	.4byte gUnknown_082EB244
_08053E00:
	mov r0, #217
	lsl r0, r0, #1
	str r0, [sp, #72]
	add r0, r0, #90
_08053E08:
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08053E80  @ =gUnknown_080C83A8
	str r0, [sp]
	ldr r0, _08053E84  @ =gUnknown_080C83B0
	str r0, [sp, #4]
	ldr r0, _08053E88  @ =gUnknown_080C833C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #0
	mov r5, r10
	strh r5, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #16]
	mov r0, #192
	lsl r0, r0, #6
	str r0, [sp, #20]
	str r1, [sp, #24]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	mov r0, sp
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	add r1, sp, #56
	strb r0, [r1]
	mov r1, sp
	mov r0, #3
	strh r0, [r1, #58]
	mov r0, #64
	str r0, [sp, #60]
	mov r0, #16
	add r2, sp, #64
	strh r0, [r2]
	mov r0, #128
	lsl r0, r0, #2
	mov r5, #66
	add r5, sp, r5
	strh r0, [r5]
	mov r0, #128
	add r1, sp, #68
	strh r0, [r1]
	ldr r0, _08053E8C  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08053E90
	mov r0, #162
	str r0, [sp, #72]
	mov r0, #252
	b _08053E98
_08053E80:
	.4byte gUnknown_080C83A8
_08053E84:
	.4byte gUnknown_080C83B0
_08053E88:
	.4byte gUnknown_080C833C
_08053E8C:
	.4byte 0x03001BD8
_08053E90:
	mov r0, #217
	lsl r0, r0, #1
	str r0, [sp, #72]
	add r0, r0, #90
_08053E98:
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r2, [sp, #184]
	cmp r2, #0
	bne _08053F58
	ldr r0, _08053EE0  @ =gUnknown_0854337C
	str r0, [sp]
	ldr r0, _08053EE4  @ =gUnknown_08543384
	str r0, [sp, #4]
	ldr r0, _08053EE8  @ =gUnknown_0854301C
	str r0, [sp, #8]
	mov r0, sp
	mov r5, r10
	strh r5, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #12
	str r0, [sp, #60]
	mov r0, #1
	mov r1, r8
	and r1, r1, r0
	cmp r1, #0
	beq _08053EF0
	ldr r0, _08053EEC  @ =0xFFFF1000
	str r0, [sp, #16]
	mov r0, #240
	lsl r0, r0, #1
	str r0, [sp, #32]
	mov r0, #13
	str r0, [sp, #60]
	b _08053EFA
_08053EE0:
	.4byte gUnknown_0854337C
_08053EE4:
	.4byte gUnknown_08543384
_08053EE8:
	.4byte gUnknown_0854301C
_08053EEC:
	.4byte 0xFFFF1000
_08053EF0:
	mov r0, #240
	lsl r0, r0, #8
	str r0, [sp, #16]
	ldr r0, _08053F40  @ =0xFFFFFE20
	str r0, [sp, #32]
_08053EFA:
	mov r0, #0
	str r0, [sp, #20]
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #36]
	mov r0, sp
	mov r2, #32
	strh r2, [r0, #52]
	strh r2, [r0, #54]
	mov r0, #6
	add r5, sp, #56
	strb r0, [r5]
	mov r1, sp
	mov r0, #24
	strh r0, [r1, #58]
	add r0, sp, #64
	strh r2, [r0]
	mov r0, #128
	lsl r0, r0, #3
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	add r2, sp, #68
	strh r0, [r2]
	ldr r0, _08053F44  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08053F48
	mov r0, #64
	str r0, [sp, #72]
	mov r0, #192
	b _08053F50
	.byte 0x00
	.byte 0x00
_08053F40:
	.4byte 0xFFFFFE20
_08053F44:
	.4byte 0x03001BD8
_08053F48:
	mov r0, #168
	lsl r0, r0, #1
	str r0, [sp, #72]
	add r0, r0, #128
_08053F50:
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
_08053F58:
	ldr r0, _080541CC  @ =0x03001BD8
	ldrb r7, [r0, #2]
	cmp r7, #0
	beq _08053F64
	bl _0805481A
_08053F64:
	ldr r0, _080541D0  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	str r0, [sp, #188]
	cmp r0, #1
	beq _08053F74
	b _0805421C
_08053F74:
	ldr r5, _080541D4  @ =gUnknown_0812953C
	str r5, [sp]
	ldr r0, _080541D8  @ =gUnknown_08129544
	str r0, [sp, #4]
	ldr r1, _080541DC  @ =gUnknown_08129518
	str r1, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r5, #224
	lsl r5, r5, #7
	mov r9, r5
	str r5, [sp, #16]
	str r5, [sp, #24]
	mov r4, #144
	lsl r4, r4, #7
	str r4, [sp, #20]
	str r4, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	mov r5, #16
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #8
	mov r8, r0
	mov r1, r8
	add r2, sp, #56
	strb r1, [r2]
	mov r0, sp
	add r1, sp, #188
	ldrh r1, [r1]
	strh r1, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #60]
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _080541E0  @ =gUnknown_0865FBB0
	str r0, [sp, #44]
	ldr r0, _080541E4  @ =gUnknown_0865FCA0
	str r0, [sp, #48]
	mov r2, #4
	add r0, sp, #64
	strh r2, [r0]
	mov r1, #128
	mov r2, #66
	add r2, sp, r2
	strh r1, [r2]
	mov r0, #32
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #252
	str r2, [sp, #72]
	mov r0, #156
	lsl r0, r0, #1
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _080541D4  @ =gUnknown_0812953C
	str r1, [sp]
	ldr r2, _080541D8  @ =gUnknown_08129544
	str r2, [sp, #4]
	ldr r0, _080541DC  @ =gUnknown_08129518
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, r9
	str r2, [sp, #16]
	str r2, [sp, #24]
	str r4, [sp, #20]
	str r4, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #10
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	add r2, sp, #188
	ldrh r2, [r2]
	strh r2, [r0, #58]
	mov r0, #144
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, sp
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _080541E8  @ =gUnknown_0865F9D0
	str r0, [sp, #44]
	ldr r0, _080541EC  @ =gUnknown_0865FAC0
	str r0, [sp, #48]
	mov r2, #4
	add r0, sp, #64
	strh r2, [r0]
	mov r1, #128
	mov r2, #66
	add r2, sp, r2
	strh r1, [r2]
	mov r0, #32
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #252
	str r2, [sp, #72]
	mov r0, #156
	lsl r0, r0, #1
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _080541F0  @ =gUnknown_0859FD3C
	str r0, [sp]
	ldr r0, _080541F4  @ =gUnknown_0859FD44
	str r0, [sp, #4]
	ldr r0, _080541F8  @ =gUnknown_0859FC1C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, r9
	str r2, [sp, #16]
	str r2, [sp, #24]
	str r4, [sp, #20]
	str r4, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #15
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	mov r2, r8
	strh r2, [r0, #58]
	mov r0, #144
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, sp
	mov r1, #60
	strh r1, [r0, #40]
	ldr r2, _080541FC  @ =gUnknown_0865F7F0
	str r2, [sp, #44]
	ldr r0, _08054200  @ =gUnknown_0865F8E0
	str r0, [sp, #48]
	mov r1, r8
	add r2, sp, #64
	strh r1, [r2]
	mov r0, #128
	lsl r0, r0, #1
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #64
	add r2, sp, #68
	strh r0, [r2]
	mov r0, #252
	str r0, [sp, #72]
	mov r1, #156
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08054204  @ =gUnknown_082F52A4
	str r0, [sp]
	ldr r0, _08054208  @ =gUnknown_082F52AC
	str r0, [sp, #4]
	ldr r0, _0805420C  @ =gUnknown_082F513C
	str r0, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, r9
	str r0, [sp, #16]
	str r0, [sp, #24]
	str r4, [sp, #20]
	str r4, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #2
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	mov r2, #10
	strh r2, [r0, #58]
	mov r0, #144
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, sp
	mov r1, #60
	strh r1, [r0, #40]
	ldr r2, _080541FC  @ =gUnknown_0865F7F0
	str r2, [sp, #44]
	ldr r0, _08054200  @ =gUnknown_0865F8E0
	str r0, [sp, #48]
	mov r1, #4
	add r2, sp, #64
	strh r1, [r2]
	mov r0, #128
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r2, #32
	add r0, sp, #68
	strh r2, [r0]
	ldr r0, _08054210  @ =0x00000101
	str r0, [sp, #72]
	add r0, r0, #60
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _080541D4  @ =gUnknown_0812953C
	str r1, [sp]
	ldr r2, _080541D8  @ =gUnknown_08129544
	str r2, [sp, #4]
	ldr r0, _080541DC  @ =gUnknown_08129518
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, r9
	str r2, [sp, #16]
	str r2, [sp, #24]
	str r4, [sp, #20]
	str r4, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r5, [r0, #52]
	strh r5, [r0, #54]
	mov r0, #9
	add r5, sp, #56
	strb r0, [r5]
	mov r0, sp
	add r1, sp, #188
	ldrh r1, [r1]
	strh r1, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #60]
	mov r5, #60
	strh r5, [r0, #40]
	ldr r0, _08054214  @ =gUnknown_0865FD90
	str r0, [sp, #44]
	ldr r0, _08054218  @ =gUnknown_0865FE80
	str r0, [sp, #48]
	mov r0, #4
	add r1, sp, #64
	strh r0, [r1]
	mov r2, #128
	mov r5, #66
	add r5, sp, r5
	strh r2, [r5]
	mov r0, #32
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #252
	str r2, [sp, #72]
	mov r5, #156
	lsl r5, r5, #1
	str r5, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	b _08054478
	.byte 0x00
	.byte 0x00
_080541CC:
	.4byte 0x03001BD8
_080541D0:
	.4byte gLevelType
_080541D4:
	.4byte gUnknown_0812953C
_080541D8:
	.4byte gUnknown_08129544
_080541DC:
	.4byte gUnknown_08129518
_080541E0:
	.4byte gUnknown_0865FBB0
_080541E4:
	.4byte gUnknown_0865FCA0
_080541E8:
	.4byte gUnknown_0865F9D0
_080541EC:
	.4byte gUnknown_0865FAC0
_080541F0:
	.4byte gUnknown_0859FD3C
_080541F4:
	.4byte gUnknown_0859FD44
_080541F8:
	.4byte gUnknown_0859FC1C
_080541FC:
	.4byte gUnknown_0865F7F0
_08054200:
	.4byte gUnknown_0865F8E0
_08054204:
	.4byte gUnknown_082F52A4
_08054208:
	.4byte gUnknown_082F52AC
_0805420C:
	.4byte gUnknown_082F513C
_08054210:
	.4byte 0x00000101
_08054214:
	.4byte gUnknown_0865FD90
_08054218:
	.4byte gUnknown_0865FE80
_0805421C:
	ldr r0, _08054608  @ =gUnknown_0812953C
	str r0, [sp]
	ldr r1, _0805460C  @ =gUnknown_08129544
	str r1, [sp, #4]
	ldr r2, _08054610  @ =gUnknown_08129518
	str r2, [sp, #8]
	mov r0, sp
	mov r5, r10
	strh r5, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #224
	lsl r0, r0, #7
	str r0, [sp, #16]
	str r0, [sp, #24]
	mov r5, #144
	lsl r5, r5, #7
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	mov r4, #16
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #8
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	mov r2, #1
	strh r2, [r0, #58]
	mov r0, #144
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, sp
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _08054614  @ =gUnknown_0865F610
	str r0, [sp, #44]
	ldr r0, _08054618  @ =gUnknown_0865F700
	str r0, [sp, #48]
	mov r2, #4
	add r0, sp, #64
	strh r2, [r0]
	mov r1, #128
	mov r2, #66
	add r2, sp, r2
	strh r1, [r2]
	mov r0, #32
	mov r8, r0
	mov r1, r8
	add r2, sp, #68
	strh r1, [r2]
	mov r0, #252
	str r0, [sp, #72]
	mov r1, #156
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _0805461C  @ =gUnknown_082F39F0
	str r0, [sp]
	ldr r0, _08054620  @ =gUnknown_082F39F8
	str r0, [sp, #4]
	ldr r0, _08054624  @ =gUnknown_082F38F4
	str r0, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #224
	lsl r0, r0, #7
	str r0, [sp, #16]
	str r0, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #2
	add r1, sp, #56
	strb r0, [r1]
	mov r1, sp
	mov r0, #7
	strh r0, [r1, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #60]
	mov r0, sp
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _08054628  @ =gUnknown_0865F7F0
	str r0, [sp, #44]
	ldr r0, _0805462C  @ =gUnknown_0865F8E0
	str r0, [sp, #48]
	mov r2, #4
	add r0, sp, #64
	strh r2, [r0]
	mov r1, #128
	mov r2, #66
	add r2, sp, r2
	strh r1, [r2]
	mov r0, r8
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #252
	str r2, [sp, #72]
	mov r0, #156
	lsl r0, r0, #1
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r1, _08054608  @ =gUnknown_0812953C
	str r1, [sp]
	ldr r2, _0805460C  @ =gUnknown_08129544
	str r2, [sp, #4]
	ldr r0, _08054610  @ =gUnknown_08129518
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, #224
	lsl r2, r2, #7
	str r2, [sp, #16]
	str r2, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #10
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	mov r2, #1
	strh r2, [r0, #58]
	mov r0, #144
	lsl r0, r0, #2
	str r0, [sp, #60]
	mov r0, sp
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _08054630  @ =gUnknown_0865F9D0
	str r0, [sp, #44]
	ldr r0, _08054634  @ =gUnknown_0865FAC0
	str r0, [sp, #48]
	mov r2, #4
	add r0, sp, #64
	strh r2, [r0]
	mov r1, #128
	mov r2, #66
	add r2, sp, r2
	strh r1, [r2]
	mov r0, r8
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #252
	str r2, [sp, #72]
	mov r0, #156
	lsl r0, r0, #1
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08054638  @ =gUnknown_08439A4C
	str r0, [sp]
	ldr r0, _0805463C  @ =gUnknown_08439A54
	str r0, [sp, #4]
	ldr r0, _08054640  @ =gUnknown_0843980C
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #208
	lsl r0, r0, #7
	str r0, [sp, #16]
	str r0, [sp, #24]
	mov r0, #128
	lsl r0, r0, #7
	str r0, [sp, #20]
	str r0, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	mov r2, r8
	strh r2, [r0, #52]
	strh r2, [r0, #54]
	mov r0, #7
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	strh r4, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #60]
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _08054644  @ =gUnknown_0865FBB0
	str r0, [sp, #44]
	ldr r0, _08054648  @ =gUnknown_0865FCA0
	str r0, [sp, #48]
	mov r2, r8
	add r0, sp, #64
	strh r2, [r0]
	mov r0, #128
	lsl r0, r0, #3
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	add r2, sp, #68
	strh r0, [r2]
	mov r0, #252
	str r0, [sp, #72]
	mov r1, #156
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r2, _08054608  @ =gUnknown_0812953C
	str r2, [sp]
	ldr r0, _0805460C  @ =gUnknown_08129544
	str r0, [sp, #4]
	ldr r1, _08054610  @ =gUnknown_08129518
	str r1, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #224
	lsl r0, r0, #7
	str r0, [sp, #16]
	str r0, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #9
	add r1, sp, #56
	strb r0, [r1]
	mov r0, sp
	mov r2, #1
	strh r2, [r0, #58]
	mov r5, #144
	lsl r5, r5, #2
	str r5, [sp, #60]
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _0805464C  @ =gUnknown_0865FD90
	str r0, [sp, #44]
	ldr r0, _08054650  @ =gUnknown_0865FE80
	str r0, [sp, #48]
	mov r2, #4
	add r5, sp, #64
	strh r2, [r5]
	mov r0, #128
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r2, r8
	add r5, sp, #68
	strh r2, [r5]
	mov r0, #252
	str r0, [sp, #72]
	mov r1, #156
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
_08054478:
	ldr r0, _08054654  @ =gUnknown_080BADF4
	str r0, [sp]
	ldr r0, _08054658  @ =gUnknown_080BADFC
	str r0, [sp, #4]
	ldr r0, _0805465C  @ =gUnknown_080BACD4
	str r0, [sp, #8]
	mov r0, sp
	mov r7, #0
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r5, _08054660  @ =0xFFFF6800
	str r5, [sp, #16]
	mov r0, #176
	lsl r0, r0, #7
	mov r8, r0
	str r0, [sp, #24]
	mov r5, #128
	lsl r5, r5, #6
	str r5, [sp, #20]
	str r5, [sp, #28]
	mov r1, #240
	lsl r1, r1, #1
	str r1, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	mov r4, #64
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #3
	add r2, sp, #56
	strb r0, [r2]
	mov r0, sp
	mov r1, #8
	strh r1, [r0, #58]
	mov r2, #68
	str r2, [sp, #60]
	add r0, sp, #64
	strh r4, [r0]
	mov r1, #128
	lsl r1, r1, #4
	mov r2, #66
	add r2, sp, r2
	strh r1, [r2]
	mov r0, #128
	lsl r0, r0, #2
	add r1, sp, #68
	strh r0, [r1]
	str r7, [sp, #72]
	mov r2, #128
	str r2, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08054664  @ =gUnknown_08251FE0
	str r0, [sp]
	ldr r0, _08054668  @ =gUnknown_08251FE8
	str r0, [sp, #4]
	ldr r0, _0805466C  @ =gUnknown_08251EC0
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	ldr r2, _08054660  @ =0xFFFF6800
	str r2, [sp, #16]
	mov r0, r8
	str r0, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	mov r1, #240
	lsl r1, r1, #1
	str r1, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r2, #6
	add r0, sp, #56
	strb r2, [r0]
	mov r0, sp
	mov r1, #8
	strh r1, [r0, #58]
	mov r2, #68
	str r2, [sp, #60]
	mov r0, #128
	add r1, sp, #64
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #5
	mov r0, #66
	add r0, sp, r0
	strh r2, [r0]
	mov r1, #128
	lsl r1, r1, #3
	add r2, sp, #68
	strh r1, [r2]
	str r7, [sp, #72]
	mov r0, #128
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08054670  @ =gUnknown_081461D0
	str r0, [sp]
	ldr r0, _08054674  @ =gUnknown_081461D8
	str r0, [sp, #4]
	ldr r0, _08054678  @ =gUnknown_081460B0
	str r0, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, r8
	str r2, [sp, #16]
	str r2, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r5, #6
	add r0, sp, #56
	strb r5, [r0]
	mov r0, sp
	mov r1, #8
	strh r1, [r0, #58]
	str r4, [sp, #60]
	mov r2, #128
	add r5, sp, #64
	strh r2, [r5]
	mov r0, #128
	lsl r0, r0, #5
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #3
	add r5, sp, #68
	strh r2, [r5]
	mov r0, #128
	str r0, [sp, #72]
	mov r1, #180
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _0805467C  @ =gUnknown_0814E340
	str r0, [sp]
	ldr r0, _08054680  @ =gUnknown_0814E348
	str r0, [sp, #4]
	ldr r0, _08054684  @ =gUnknown_0814E1D8
	str r0, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #208
	lsl r0, r0, #7
	str r0, [sp, #16]
	str r0, [sp, #24]
	mov r5, #128
	lsl r5, r5, #7
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r2, #6
	add r0, sp, #56
	strb r2, [r0]
	mov r1, sp
	mov r0, #10
	strh r0, [r1, #58]
	str r4, [sp, #60]
	mov r1, #32
	add r2, sp, #64
	b _08054688
	.byte 0x00
	.byte 0x00
_08054608:
	.4byte gUnknown_0812953C
_0805460C:
	.4byte gUnknown_08129544
_08054610:
	.4byte gUnknown_08129518
_08054614:
	.4byte gUnknown_0865F610
_08054618:
	.4byte gUnknown_0865F700
_0805461C:
	.4byte gUnknown_082F39F0
_08054620:
	.4byte gUnknown_082F39F8
_08054624:
	.4byte gUnknown_082F38F4
_08054628:
	.4byte gUnknown_0865F7F0
_0805462C:
	.4byte gUnknown_0865F8E0
_08054630:
	.4byte gUnknown_0865F9D0
_08054634:
	.4byte gUnknown_0865FAC0
_08054638:
	.4byte gUnknown_08439A4C
_0805463C:
	.4byte gUnknown_08439A54
_08054640:
	.4byte gUnknown_0843980C
_08054644:
	.4byte gUnknown_0865FBB0
_08054648:
	.4byte gUnknown_0865FCA0
_0805464C:
	.4byte gUnknown_0865FD90
_08054650:
	.4byte gUnknown_0865FE80
_08054654:
	.4byte gUnknown_080BADF4
_08054658:
	.4byte gUnknown_080BADFC
_0805465C:
	.4byte gUnknown_080BACD4
_08054660:
	.4byte 0xFFFF6800
_08054664:
	.4byte gUnknown_08251FE0
_08054668:
	.4byte gUnknown_08251FE8
_0805466C:
	.4byte gUnknown_08251EC0
_08054670:
	.4byte gUnknown_081461D0
_08054674:
	.4byte gUnknown_081461D8
_08054678:
	.4byte gUnknown_081460B0
_0805467C:
	.4byte gUnknown_0814E340
_08054680:
	.4byte gUnknown_0814E348
_08054684:
	.4byte gUnknown_0814E1D8
_08054688:
	strh r1, [r2]
	mov r0, #128
	lsl r0, r0, #3
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	add r2, sp, #68
	strh r0, [r2]
	mov r0, #180
	str r0, [sp, #72]
	mov r1, #130
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r2, _08054884  @ =gUnknown_0825A00C
	str r2, [sp]
	ldr r0, _08054888  @ =gUnknown_0825A014
	str r0, [sp, #4]
	ldr r1, _0805488C  @ =gUnknown_08259FE8
	str r1, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, r8
	str r0, [sp, #16]
	str r0, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	mov r1, #32
	strh r1, [r0, #54]
	mov r2, #6
	add r0, sp, #56
	strb r2, [r0]
	mov r0, sp
	mov r1, #1
	strh r1, [r0, #58]
	str r4, [sp, #60]
	add r2, sp, #64
	strh r4, [r2]
	mov r0, #128
	lsl r0, r0, #4
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #2
	add r0, sp, #68
	strh r2, [r0]
	mov r1, #1
	str r1, [sp, #72]
	mov r2, #128
	str r2, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08054884  @ =gUnknown_0825A00C
	str r0, [sp]
	ldr r1, _08054888  @ =gUnknown_0825A014
	str r1, [sp, #4]
	ldr r2, _0805488C  @ =gUnknown_08259FE8
	str r2, [sp, #8]
	mov r0, sp
	mov r1, r10
	strh r1, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r2, r8
	str r2, [sp, #16]
	str r2, [sp, #24]
	str r5, [sp, #20]
	str r5, [sp, #28]
	str r7, [sp, #32]
	str r7, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	mov r1, #32
	strh r1, [r0, #54]
	mov r2, #6
	add r0, sp, #56
	strb r2, [r0]
	mov r0, sp
	mov r1, #1
	strh r1, [r0, #58]
	str r4, [sp, #60]
	add r2, sp, #64
	strh r4, [r2]
	mov r0, #128
	lsl r0, r0, #4
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #2
	add r0, sp, #68
	strh r2, [r0]
	mov r1, #130
	lsl r1, r1, #1
	str r1, [sp, #72]
	mov r7, #156
	lsl r7, r7, #1
	str r7, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r2, _08054884  @ =gUnknown_0825A00C
	str r2, [sp]
	ldr r0, _08054888  @ =gUnknown_0825A014
	str r0, [sp, #4]
	ldr r1, _0805488C  @ =gUnknown_08259FE8
	str r1, [sp, #8]
	mov r0, sp
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, r8
	str r0, [sp, #16]
	ldr r0, _08054890  @ =0x03001998
	ldr r2, [r0]
	ldr r3, _08054894  @ =gCameraHorizontalOffset
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r1, r1, #7
	ldr r0, [r2, #16]
	sub r0, r0, r1
	str r0, [sp, #24]
	str r5, [sp, #20]
	ldr r5, _08054898  @ =gCameraVerticalOffset
	mov r0, #0
	ldrsh r1, [r5, r0]
	lsl r1, r1, #7
	ldr r0, [r2, #20]
	sub r0, r0, r1
	str r0, [sp, #28]
	mov r0, #0
	ldrsh r1, [r3, r0]
	lsl r1, r1, #7
	ldr r0, [r2, #16]
	sub r0, r0, r1
	ldr r1, _0805489C  @ =0xFFFFA800
	add r0, r0, r1
	asr r0, r0, #6
	str r0, [sp, #32]
	mov r0, #0
	ldrsh r1, [r5, r0]
	lsl r1, r1, #7
	ldr r0, [r2, #20]
	sub r0, r0, r1
	ldr r1, _080548A0  @ =0xFFFFC000
	add r0, r0, r1
	asr r0, r0, #6
	str r0, [sp, #36]
	mov r0, sp
	strh r4, [r0, #52]
	mov r2, #32
	strh r2, [r0, #54]
	mov r5, #6
	add r0, sp, #56
	strb r5, [r0]
	mov r0, sp
	mov r1, #1
	strh r1, [r0, #58]
	mov r2, #68
	str r2, [sp, #60]
	add r5, sp, #64
	strh r4, [r5]
	mov r0, #128
	lsl r0, r0, #4
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #2
	add r5, sp, #68
	strh r2, [r5]
	str r7, [sp, #72]
	mov r0, #188
	lsl r0, r0, #1
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
_0805481A:
	ldr r0, _080548A4  @ =gUnknown_08145F28
	str r0, [sp]
	ldr r0, _080548A8  @ =gUnknown_08145F30
	str r0, [sp, #4]
	ldr r0, _080548AC  @ =gUnknown_08145E74
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #0
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #128
	lsl r0, r0, #5
	str r0, [sp, #16]
	str r0, [sp, #24]
	str r1, [sp, #20]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	mov r0, sp
	mov r1, #16
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	add r5, sp, #56
	strb r0, [r5]
	mov r1, sp
	mov r0, #5
	strh r0, [r1, #58]
	mov r1, #32
	str r1, [sp, #60]
	mov r0, #4
	add r2, sp, #64
	strh r0, [r2]
	mov r0, #128
	mov r5, #66
	add r5, sp, r5
	strh r0, [r5]
	add r0, sp, #68
	strh r1, [r0]
	ldr r0, _080548B0  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _080548B4
	mov r0, #82
	str r0, [sp, #72]
	mov r0, #215
	b _080548BC
	.byte 0x00
	.byte 0x00
_08054884:
	.4byte gUnknown_0825A00C
_08054888:
	.4byte gUnknown_0825A014
_0805488C:
	.4byte gUnknown_08259FE8
_08054890:
	.4byte 0x03001998
_08054894:
	.4byte gCameraHorizontalOffset
_08054898:
	.4byte gCameraVerticalOffset
_0805489C:
	.4byte 0xFFFFA800
_080548A0:
	.4byte 0xFFFFC000
_080548A4:
	.4byte gUnknown_08145F28
_080548A8:
	.4byte gUnknown_08145F30
_080548AC:
	.4byte gUnknown_08145E74
_080548B0:
	.4byte 0x03001BD8
_080548B4:
	mov r0, #188
	lsl r0, r0, #1
	str r0, [sp, #72]
	add r0, r0, #133
_080548BC:
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r0, _08054930  @ =gUnknown_081B6378
	str r0, [sp]
	ldr r0, _08054934  @ =gUnknown_081B6380
	str r0, [sp, #4]
	ldr r0, _08054938  @ =gUnknown_081B6180
	str r0, [sp, #8]
	mov r0, sp
	mov r1, #0
	mov r2, r10
	strh r2, [r0, #12]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r0, #128
	lsl r0, r0, #5
	str r0, [sp, #16]
	str r0, [sp, #24]
	str r1, [sp, #20]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	mov r0, sp
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	add r5, sp, #56
	strb r0, [r5]
	mov r2, sp
	mov r0, #14
	strh r0, [r2, #58]
	str r1, [sp, #60]
	add r0, sp, #64
	strh r1, [r0]
	mov r0, #128
	lsl r0, r0, #3
	mov r1, #66
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	add r2, sp, #68
	strh r0, [r2]
	ldr r0, _0805493C  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054940
	mov r0, #82
	str r0, [sp, #72]
	mov r0, #215
	b _08054948
	.byte 0x00
	.byte 0x00
_08054930:
	.4byte gUnknown_081B6378
_08054934:
	.4byte gUnknown_081B6380
_08054938:
	.4byte gUnknown_081B6180
_0805493C:
	.4byte 0x03001BD8
_08054940:
	mov r0, #188
	lsl r0, r0, #1
	str r0, [sp, #72]
	add r0, r0, #133
_08054948:
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldr r4, _08054A0C  @ =0x03001BD8
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _080549B6
	ldr r0, _08054A10  @ =gUnknown_0825A00C
	str r0, [sp]
	ldr r0, _08054A14  @ =gUnknown_0825A014
	str r0, [sp, #4]
	ldr r0, _08054A18  @ =gUnknown_08259FE8
	str r0, [sp, #8]
	mov r0, sp
	mov r5, r10
	strh r5, [r0, #12]
	str r1, [sp, #16]
	str r1, [sp, #24]
	str r1, [sp, #20]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	mov r3, #64
	strh r3, [r0, #52]
	mov r2, #32
	strh r2, [r0, #54]
	mov r0, #6
	add r1, sp, #56
	strb r0, [r1]
	mov r1, sp
	mov r0, #1
	strh r0, [r1, #58]
	str r2, [sp, #60]
	add r2, sp, #64
	strh r3, [r2]
	mov r0, #128
	lsl r0, r0, #4
	mov r5, #66
	add r5, sp, r5
	strh r0, [r5]
	mov r0, #128
	lsl r0, r0, #2
	add r1, sp, #68
	strh r0, [r1]
	sub r0, r0, #136
	str r0, [sp, #72]
	add r0, r0, #133
	str r0, [sp, #76]
	mov r0, sp
	bl sub_08055FB8
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08054A86
_080549B6:
	ldr r0, _08054A1C  @ =gLevelEWorldFlag
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08054A86
	mov r6, #0
	add r7, sp, #96
	add r2, sp, #124
	mov r10, r2
	ldr r5, [sp, #176]
	cmp r6, r5
	bcc _080549D2
	b _08054B00
_080549D2:
	add r5, sp, #80
	mov r9, r6
	add r4, r5, #0
_080549D8:
	lsl r3, r6, #3
	add r2, r3, r6
	ldr r0, [sp, #180]
	add r2, r2, r0
	ldrb r1, [r2, #2]
	mov r8, r1
	ldrb r0, [r2, #8]
	lsl r0, r0, #8
	strh r0, [r5]
	ldrb r1, [r2, #7]
	orr r0, r0, r1
	strh r0, [r5]
	ldrb r0, [r2, #10]
	lsl r0, r0, #8
	strh r0, [r5, #2]
	ldrb r1, [r2, #9]
	orr r0, r0, r1
	strh r0, [r5, #2]
	mov r2, r9
	str r2, [r5, #4]
	mov r1, r8
	lsr r0, r1, #7
	cmp r0, #0
	beq _08054A20
	mov r0, #2
	b _08054A22
_08054A0C:
	.4byte 0x03001BD8
_08054A10:
	.4byte gUnknown_0825A00C
_08054A14:
	.4byte gUnknown_0825A014
_08054A18:
	.4byte gUnknown_08259FE8
_08054A1C:
	.4byte gLevelEWorldFlag
_08054A20:
	mov r0, #1
_08054A22:
	str r0, [r5, #4]
	mov r2, r8
	lsr r1, r2, #5
	mov r0, #3
	and r1, r1, r0
	cmp r1, #2
	beq _08054A46
	cmp r1, #2
	bgt _08054A3A
	cmp r1, #1
	beq _08054A40
	b _08054A54
_08054A3A:
	cmp r1, #3
	beq _08054A4C
	b _08054A54
_08054A40:
	ldr r0, [r4, #4]
	mov r1, #8
	b _08054A50
_08054A46:
	ldr r0, [r4, #4]
	mov r1, #16
	b _08054A50
_08054A4C:
	ldr r0, [r4, #4]
	mov r1, #32
_08054A50:
	orr r0, r0, r1
	str r0, [r4, #4]
_08054A54:
	add r2, r3, r6
	ldr r0, [sp, #180]
	add r2, r2, r0
	ldrb r0, [r2, #4]
	lsl r0, r0, #8
	str r0, [r4, #8]
	ldrb r1, [r2, #3]
	orr r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2, #6]
	lsl r0, r0, #8
	str r0, [r4, #12]
	ldrb r1, [r2, #5]
	orr r0, r0, r1
	str r0, [r4, #12]
	add r0, r4, #0
	bl sub_080572E0
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r1, [sp, #176]
	cmp r6, r1
	bcc _080549D8
	b _08054B00
_08054A86:
	add r4, sp, #80
	mov r5, #0
	strh r5, [r4]
	strh r5, [r4, #2]
	mov r0, #34
	str r0, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	str r0, [r4, #12]
	add r0, r4, #0
	bl sub_080572E0
	strh r5, [r4]
	strh r5, [r4, #2]
	mov r0, #17
	str r0, [r4, #4]
	ldr r0, _08054AB8  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054ABC
	mov r0, #132
	str r0, [r4, #8]
	mov r0, #162
	b _08054AC4
	.byte 0x00
	.byte 0x00
_08054AB8:
	.4byte 0x03001BD8
_08054ABC:
	mov r0, #202
	lsl r0, r0, #1
	str r0, [r4, #8]
	add r0, r0, #30
_08054AC4:
	str r0, [r4, #12]
	add r0, r4, #0
	bl sub_080572E0
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	mov r0, #9
	str r0, [r4, #4]
	ldr r0, _08054AE8  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054AEC
	mov r0, #177
	str r0, [r4, #8]
	mov r0, #207
	b _08054AF2
	.byte 0x00
	.byte 0x00
_08054AE8:
	.4byte 0x03001BD8
_08054AEC:
	ldr r0, _08054B64  @ =0x000001C1
	str r0, [r4, #8]
	add r0, r0, #30
_08054AF2:
	str r0, [r4, #12]
	add r0, r4, #0
	bl sub_080572E0
	add r7, sp, #96
	add r2, sp, #124
	mov r10, r2
_08054B00:
	ldr r5, _08054B68  @ =0x03001BD8
	mov r9, r5
	ldrb r6, [r5, #2]
	cmp r6, #0
	bne _08054B44
	mov r0, #85
	str r0, [sp, #96]
	mov r0, #0
	mov r8, r0
	strh r6, [r7, #4]
	mov r1, r8
	strb r1, [r7, #6]
	mov r5, #12
	strb r5, [r7, #7]
	mov r0, #183
	str r0, [r7, #8]
	mov r4, #130
	lsl r4, r4, #2
	str r4, [r7, #12]
	add r0, r7, #0
	bl sub_080565C0
	mov r0, #134
	str r0, [sp, #96]
	strh r6, [r7, #4]
	mov r2, r8
	strb r2, [r7, #6]
	strb r5, [r7, #7]
	add r0, r0, #126
	str r0, [r7, #8]
	str r4, [r7, #12]
	add r0, r7, #0
	bl sub_080565C0
_08054B44:
	mov r0, #90
	str r0, [sp, #96]
	mov r1, #0
	mov r0, #0
	strh r0, [r7, #4]
	strb r1, [r7, #6]
	mov r0, #11
	strb r0, [r7, #7]
	mov r5, r9
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08054B6C
	mov r0, #172
	str r0, [r7, #8]
	mov r0, #252
	b _08054B74
_08054B64:
	.4byte 0x000001C1
_08054B68:
	.4byte 0x03001BD8
_08054B6C:
	mov r0, #222
	lsl r0, r0, #1
	str r0, [r7, #8]
	add r0, r0, #80
_08054B74:
	str r0, [r7, #12]
	add r0, r7, #0
	bl sub_080565C0
	ldr r4, _08054BC4  @ =0x03001BD8
	ldrb r1, [r4, #2]
	cmp r1, #0
	bne _08054B9E
	mov r0, #234
	str r0, [sp, #96]
	strh r1, [r7, #4]
	mov r0, #1
	strb r0, [r7, #6]
	mov r0, #12
	strb r0, [r7, #7]
	str r1, [r7, #8]
	mov r0, #128
	str r0, [r7, #12]
	add r0, r7, #0
	bl sub_080565C0
_08054B9E:
	ldr r0, [sp, #184]
	cmp r0, #0
	bne _08054BD8
	mov r0, #18
	str r0, [sp, #96]
	add r1, sp, #184
	ldrh r1, [r1]
	strh r1, [r7, #4]
	mov r0, #1
	strb r0, [r7, #6]
	mov r0, #13
	strb r0, [r7, #7]
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08054BC8
	mov r0, #154
	str r0, [r7, #8]
	mov r0, #192
	b _08054BD0
_08054BC4:
	.4byte 0x03001BD8
_08054BC8:
	mov r0, #213
	lsl r0, r0, #1
	str r0, [r7, #8]
	add r0, r0, #38
_08054BD0:
	str r0, [r7, #12]
	add r0, r7, #0
	bl sub_080565C0
_08054BD8:
	mov r0, #136
	str r0, [sp, #96]
	mov r1, #0
	mov r0, #0
	strh r0, [r7, #4]
	strb r1, [r7, #6]
	mov r0, #11
	strb r0, [r7, #7]
	ldr r0, _08054BF8  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054BFC
	mov r0, #82
	str r0, [r7, #8]
	mov r0, #252
	b _08054C04
_08054BF8:
	.4byte 0x03001BD8
_08054BFC:
	mov r0, #188
	lsl r0, r0, #1
	str r0, [r7, #8]
	add r0, r0, #148
_08054C04:
	str r0, [r7, #12]
	add r0, r7, #0
	bl sub_080565C0
	ldr r2, [sp, #184]
	cmp r2, #0
	bne _08054C3A
	mov r0, #2
	str r0, [sp, #112]
	ldr r0, _08054C28  @ =0x03001BD8
	ldrb r0, [r0, #2]
	add r1, sp, #112
	cmp r0, #0
	beq _08054C2C
	str r2, [r1, #4]
	mov r0, #192
	b _08054C32
	.byte 0x00
	.byte 0x00
_08054C28:
	.4byte 0x03001BD8
_08054C2C:
	str r0, [r1, #4]
	mov r0, #232
	lsl r0, r0, #1
_08054C32:
	str r0, [r1, #8]
	add r0, r1, #0
	bl sub_080566E0
_08054C3A:
	ldr r0, _08054C58  @ =gUnknown_030009D4
	ldrb r2, [r0]
	cmp r2, #0
	bne _08054C6E
	mov r0, #4
	str r0, [sp, #112]
	ldr r0, _08054C5C  @ =0x03001BD8
	ldrb r0, [r0, #2]
	add r1, sp, #112
	cmp r0, #0
	beq _08054C60
	str r2, [r1, #4]
	str r2, [r1, #8]
	b _08054C68
	.byte 0x00
	.byte 0x00
_08054C58:
	.4byte gUnknown_030009D4
_08054C5C:
	.4byte 0x03001BD8
_08054C60:
	str r0, [r1, #4]
	mov r0, #192
	lsl r0, r0, #1
	str r0, [r1, #8]
_08054C68:
	add r0, r1, #0
	bl sub_080566E0
_08054C6E:
	ldr r0, _08054C7C  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054C80
	mov r0, #252
	b _08054C84
	.byte 0x00
	.byte 0x00
_08054C7C:
	.4byte 0x03001BD8
_08054C80:
	mov r0, #131
	lsl r0, r0, #2
_08054C84:
	str r0, [sp, #124]
	mov r0, r10
	bl sub_080572B8
_08054C8C:
	add sp, sp, #192
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08053CD0

	THUMB_FUNC_START sub_08054C9C
sub_08054C9C: @ 0x08054C9C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #108
	str r0, [sp, #84]
	str r1, [sp, #88]
	str r2, [sp, #92]
	str r3, [sp, #96]
	mov r6, #0
	ldr r0, _08054D4C  @ =0x03001BD8
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsl r1, r1, #1
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #4
	add r1, r1, r0
	ldr r2, _08054D4C  @ =0x03001BD8
	ldrb r2, [r2, #2]
	add r1, r1, r2
	lsl r1, r1, #1
	ldr r2, _08054D50  @ =gUnknown_08AF43E4
	add r1, r1, r2
	mov r3, #0
	ldrsh r0, [r1, r3]
	add r0, r0, r2
	ldrb r1, [r0, #1]
	lsr r7, r1, #6
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r0, _08054D54  @ =gUnknown_082EB2B0
	str r0, [sp, #4]
	ldr r0, _08054D58  @ =gUnknown_082EB2B8
	str r0, [sp, #8]
	ldr r0, _08054D5C  @ =gUnknown_082EB244
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #0
	strh r6, [r0, #12]
	mov r6, #1
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #20]
	mov r0, #192
	lsl r0, r0, #6
	str r0, [sp, #24]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	add r0, sp, #4
	mov r3, #64
	strh r3, [r0, #52]
	mov r2, #32
	strh r2, [r0, #54]
	mov r4, sp
	add r4, r4, #60
	str r4, [sp, #100]
	mov r0, #6
	strb r0, [r4]
	add r1, sp, #4
	mov r0, #3
	strh r0, [r1, #58]
	str r3, [sp, #64]
	add r3, sp, #68
	strh r2, [r3]
	mov r2, sp
	add r2, r2, #70
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r2]
	add r1, sp, #72
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1]
	ldr r4, _08054D4C  @ =0x03001BD8
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _08054D60
	mov r0, #162
	str r0, [sp, #76]
	mov r0, #252
	b _08054D68
_08054D4C:
	.4byte 0x03001BD8
_08054D50:
	.4byte gUnknown_08AF43E4
_08054D54:
	.4byte gUnknown_082EB2B0
_08054D58:
	.4byte gUnknown_082EB2B8
_08054D5C:
	.4byte gUnknown_082EB244
_08054D60:
	mov r0, #217
	lsl r0, r0, #1
	str r0, [sp, #76]
	add r0, r0, #90
_08054D68:
	str r0, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _08054DE4  @ =gUnknown_080C83A8
	str r0, [sp, #4]
	ldr r0, _08054DE8  @ =gUnknown_080C83B0
	str r0, [sp, #8]
	ldr r0, _08054DEC  @ =gUnknown_080C833C
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #0
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #20]
	mov r0, #192
	lsl r0, r0, #6
	str r0, [sp, #24]
	str r1, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	add r0, sp, #4
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	add r1, sp, #60
	strb r0, [r1]
	add r1, sp, #4
	mov r0, #3
	strh r0, [r1, #58]
	mov r0, #64
	str r0, [sp, #64]
	mov r0, #16
	add r2, sp, #68
	strh r0, [r2]
	mov r0, #128
	lsl r0, r0, #2
	mov r3, #70
	add r3, sp, r3
	strh r0, [r3]
	mov r0, #128
	add r4, sp, #72
	strh r0, [r4]
	ldr r0, _08054DF0  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054DF4
	mov r0, #162
	str r0, [sp, #76]
	mov r0, #252
	b _08054DFC
_08054DE4:
	.4byte gUnknown_080C83A8
_08054DE8:
	.4byte gUnknown_080C83B0
_08054DEC:
	.4byte gUnknown_080C833C
_08054DF0:
	.4byte 0x03001BD8
_08054DF4:
	mov r0, #217
	lsl r0, r0, #1
	str r0, [sp, #76]
	add r0, r0, #90
_08054DFC:
	str r0, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	mov r1, r8
	cmp r1, #0
	bne _08054ECA
	ldr r0, _08054E48  @ =gUnknown_0854337C
	str r0, [sp, #4]
	ldr r0, _08054E4C  @ =gUnknown_08543384
	str r0, [sp, #8]
	ldr r0, _08054E50  @ =gUnknown_0854301C
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #12
	str r0, [sp, #64]
	mov r0, #1
	and r7, r7, r0
	cmp r7, #0
	beq _08054E58
	ldr r0, _08054E54  @ =0xFFFF1000
	str r0, [sp, #20]
	mov r0, #240
	lsl r0, r0, #1
	str r0, [sp, #36]
	mov r0, #13
	str r0, [sp, #64]
	b _08054E62
	.byte 0x00
	.byte 0x00
_08054E48:
	.4byte gUnknown_0854337C
_08054E4C:
	.4byte gUnknown_08543384
_08054E50:
	.4byte gUnknown_0854301C
_08054E54:
	.4byte 0xFFFF1000
_08054E58:
	mov r0, #240
	lsl r0, r0, #8
	str r0, [sp, #20]
	ldr r0, _08054EA8  @ =0xFFFFFE20
	str r0, [sp, #36]
_08054E62:
	mov r0, #0
	str r0, [sp, #24]
	str r0, [sp, #28]
	str r0, [sp, #32]
	str r0, [sp, #40]
	add r0, sp, #4
	mov r2, #32
	strh r2, [r0, #52]
	strh r2, [r0, #54]
	mov r0, #6
	add r3, sp, #60
	strb r0, [r3]
	add r1, sp, #4
	mov r0, #24
	strh r0, [r1, #58]
	add r4, sp, #68
	strh r2, [r4]
	mov r0, #128
	lsl r0, r0, #3
	mov r1, #70
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	add r2, sp, #72
	strh r0, [r2]
	ldr r0, _08054EAC  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08054EB0
	mov r0, #64
	str r0, [sp, #76]
	mov r0, #192
	b _08054EB8
	.byte 0x00
	.byte 0x00
_08054EA8:
	.4byte 0xFFFFFE20
_08054EAC:
	.4byte 0x03001BD8
_08054EB0:
	mov r0, #168
	lsl r0, r0, #1
	str r0, [sp, #76]
	add r0, r0, #128
_08054EB8:
	str r0, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
_08054ECA:
	ldr r0, _08055160  @ =0x03001BD8
	ldrb r7, [r0, #2]
	cmp r7, #0
	beq _08054ED6
	bl _0805580A
_08054ED6:
	ldr r0, _08055164  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	str r0, [sp, #104]
	cmp r0, #1
	beq _08054EE6
	b _080551B0
_08054EE6:
	ldr r4, _08055168  @ =gUnknown_0812953C
	str r4, [sp, #4]
	ldr r0, _0805516C  @ =gUnknown_08129544
	str r0, [sp, #8]
	ldr r1, _08055170  @ =gUnknown_08129518
	str r1, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r2, #224
	lsl r2, r2, #7
	mov r10, r2
	str r2, [sp, #20]
	str r2, [sp, #28]
	mov r3, #144
	lsl r3, r3, #7
	str r3, [sp, #24]
	str r3, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r4, #16
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #8
	add r1, sp, #60
	strb r0, [r1]
	add r0, sp, #4
	add r2, sp, #104
	ldrh r2, [r2]
	strh r2, [r0, #58]
	mov r3, #144
	lsl r3, r3, #2
	str r3, [sp, #64]
	mov r4, #60
	strh r4, [r0, #40]
	ldr r0, _08055174  @ =gUnknown_0865F610
	str r0, [sp, #48]
	ldr r0, _08055178  @ =gUnknown_0865F700
	str r0, [sp, #52]
	mov r0, #4
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #128
	mov r3, #70
	add r3, sp, r3
	strh r2, [r3]
	mov r4, #32
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #252
	str r1, [sp, #76]
	mov r2, #156
	lsl r2, r2, #1
	str r2, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r4, _08055168  @ =gUnknown_0812953C
	str r4, [sp, #4]
	ldr r0, _0805516C  @ =gUnknown_08129544
	str r0, [sp, #8]
	ldr r1, _08055170  @ =gUnknown_08129518
	str r1, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r2, r10
	str r2, [sp, #20]
	str r2, [sp, #28]
	mov r3, #144
	lsl r3, r3, #7
	str r3, [sp, #24]
	str r3, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r4, #16
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #10
	add r1, sp, #60
	strb r0, [r1]
	add r0, sp, #4
	add r2, sp, #104
	ldrh r2, [r2]
	strh r2, [r0, #58]
	mov r3, #144
	lsl r3, r3, #2
	str r3, [sp, #64]
	mov r4, #60
	strh r4, [r0, #40]
	ldr r0, _0805517C  @ =gUnknown_0865F9D0
	str r0, [sp, #48]
	ldr r0, _08055180  @ =gUnknown_0865FAC0
	str r0, [sp, #52]
	mov r0, #4
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #128
	mov r3, #70
	add r3, sp, r3
	strh r2, [r3]
	mov r4, #32
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #252
	str r1, [sp, #76]
	mov r2, #156
	lsl r2, r2, #1
	str r2, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _08055184  @ =gUnknown_0859FD3C
	str r0, [sp, #4]
	ldr r0, _08055188  @ =gUnknown_0859FD44
	str r0, [sp, #8]
	ldr r0, _0805518C  @ =gUnknown_0859FC1C
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r4, r10
	str r4, [sp, #20]
	str r4, [sp, #28]
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #24]
	str r0, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #16
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #15
	add r2, sp, #60
	strb r0, [r2]
	add r0, sp, #4
	mov r3, #8
	strh r3, [r0, #58]
	mov r4, #144
	lsl r4, r4, #2
	str r4, [sp, #64]
	mov r1, #60
	strh r1, [r0, #40]
	ldr r2, _08055190  @ =gUnknown_0865F7F0
	str r2, [sp, #48]
	ldr r3, _08055194  @ =gUnknown_0865F8E0
	str r3, [sp, #52]
	mov r4, #8
	add r0, sp, #68
	strh r4, [r0]
	mov r0, #128
	lsl r0, r0, #1
	mov r1, #70
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #64
	add r2, sp, #72
	strh r0, [r2]
	mov r3, #252
	str r3, [sp, #76]
	mov r4, #156
	lsl r4, r4, #1
	str r4, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _08055198  @ =gUnknown_082F52A4
	str r0, [sp, #4]
	ldr r0, _0805519C  @ =gUnknown_082F52AC
	str r0, [sp, #8]
	ldr r0, _080551A0  @ =gUnknown_082F513C
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, r10
	str r1, [sp, #20]
	str r1, [sp, #28]
	mov r2, #144
	lsl r2, r2, #7
	str r2, [sp, #24]
	str r2, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r3, #16
	strh r3, [r0, #52]
	strh r3, [r0, #54]
	mov r0, #2
	add r4, sp, #60
	strb r0, [r4]
	add r0, sp, #4
	mov r1, #10
	strh r1, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #64]
	mov r3, #60
	strh r3, [r0, #40]
	ldr r4, _08055190  @ =gUnknown_0865F7F0
	str r4, [sp, #48]
	ldr r0, _08055194  @ =gUnknown_0865F8E0
	str r0, [sp, #52]
	mov r1, #4
	add r2, sp, #68
	strh r1, [r2]
	mov r3, #128
	mov r4, #70
	add r4, sp, r4
	strh r3, [r4]
	mov r0, #32
	add r1, sp, #72
	strh r0, [r1]
	ldr r0, _080551A4  @ =0x00000101
	str r0, [sp, #76]
	add r0, r0, #60
	str r0, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r3, _08055168  @ =gUnknown_0812953C
	str r3, [sp, #4]
	ldr r4, _0805516C  @ =gUnknown_08129544
	str r4, [sp, #8]
	ldr r0, _08055170  @ =gUnknown_08129518
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, r10
	str r1, [sp, #20]
	str r1, [sp, #28]
	mov r2, #144
	lsl r2, r2, #7
	str r2, [sp, #24]
	str r2, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r3, #16
	strh r3, [r0, #52]
	strh r3, [r0, #54]
	mov r0, #9
	add r4, sp, #60
	strb r0, [r4]
	add r0, sp, #4
	add r1, sp, #104
	ldrh r1, [r1]
	strh r1, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #64]
	mov r3, #60
	strh r3, [r0, #40]
	ldr r0, _080551A8  @ =gUnknown_0865FBB0
	str r0, [sp, #48]
	ldr r0, _080551AC  @ =gUnknown_0865FCA0
	str r0, [sp, #52]
	mov r4, #4
	add r0, sp, #68
	strh r4, [r0]
	mov r1, #128
	mov r2, #70
	add r2, sp, r2
	strh r1, [r2]
	mov r3, #32
	add r4, sp, #72
	strh r3, [r4]
	mov r0, #252
	str r0, [sp, #76]
	mov r1, #156
	lsl r1, r1, #1
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	b _08055426
	.byte 0x00
	.byte 0x00
_08055160:
	.4byte 0x03001BD8
_08055164:
	.4byte gLevelType
_08055168:
	.4byte gUnknown_0812953C
_0805516C:
	.4byte gUnknown_08129544
_08055170:
	.4byte gUnknown_08129518
_08055174:
	.4byte gUnknown_0865F610
_08055178:
	.4byte gUnknown_0865F700
_0805517C:
	.4byte gUnknown_0865F9D0
_08055180:
	.4byte gUnknown_0865FAC0
_08055184:
	.4byte gUnknown_0859FD3C
_08055188:
	.4byte gUnknown_0859FD44
_0805518C:
	.4byte gUnknown_0859FC1C
_08055190:
	.4byte gUnknown_0865F7F0
_08055194:
	.4byte gUnknown_0865F8E0
_08055198:
	.4byte gUnknown_082F52A4
_0805519C:
	.4byte gUnknown_082F52AC
_080551A0:
	.4byte gUnknown_082F513C
_080551A4:
	.4byte 0x00000101
_080551A8:
	.4byte gUnknown_0865FBB0
_080551AC:
	.4byte gUnknown_0865FCA0
_080551B0:
	ldr r3, _0805559C  @ =gUnknown_0812953C
	str r3, [sp, #4]
	ldr r4, _080555A0  @ =gUnknown_08129544
	str r4, [sp, #8]
	ldr r0, _080555A4  @ =gUnknown_08129518
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, #224
	lsl r1, r1, #7
	mov r9, r1
	str r1, [sp, #20]
	str r1, [sp, #28]
	mov r2, #144
	lsl r2, r2, #7
	str r2, [sp, #24]
	str r2, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r3, #16
	strh r3, [r0, #52]
	strh r3, [r0, #54]
	mov r0, #8
	add r4, sp, #60
	strb r0, [r4]
	add r0, sp, #4
	mov r1, #1
	strh r1, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #64]
	mov r3, #60
	strh r3, [r0, #40]
	ldr r0, _080555A8  @ =gUnknown_0865F610
	str r0, [sp, #48]
	ldr r0, _080555AC  @ =gUnknown_0865F700
	str r0, [sp, #52]
	mov r4, #4
	add r0, sp, #68
	strh r4, [r0]
	mov r1, #128
	mov r2, #70
	add r2, sp, r2
	strh r1, [r2]
	mov r3, #32
	add r4, sp, #72
	strh r3, [r4]
	mov r0, #252
	str r0, [sp, #76]
	mov r1, #156
	lsl r1, r1, #1
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _080555B0  @ =gUnknown_082F39F0
	str r0, [sp, #4]
	ldr r0, _080555B4  @ =gUnknown_082F39F8
	str r0, [sp, #8]
	ldr r0, _080555B8  @ =gUnknown_082F38F4
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r3, r9
	str r3, [sp, #20]
	str r3, [sp, #28]
	mov r4, #144
	lsl r4, r4, #7
	str r4, [sp, #24]
	str r4, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #16
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #2
	add r2, sp, #60
	strb r0, [r2]
	add r1, sp, #4
	mov r0, #7
	strh r0, [r1, #58]
	mov r3, #144
	lsl r3, r3, #2
	str r3, [sp, #64]
	add r0, r1, #0
	mov r4, #60
	strh r4, [r0, #40]
	ldr r0, _080555BC  @ =gUnknown_0865F7F0
	str r0, [sp, #48]
	ldr r0, _080555C0  @ =gUnknown_0865F8E0
	str r0, [sp, #52]
	mov r0, #4
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #128
	mov r3, #70
	add r3, sp, r3
	strh r2, [r3]
	mov r4, #32
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #252
	str r1, [sp, #76]
	mov r2, #156
	lsl r2, r2, #1
	str r2, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r4, _0805559C  @ =gUnknown_0812953C
	str r4, [sp, #4]
	ldr r0, _080555A0  @ =gUnknown_08129544
	str r0, [sp, #8]
	ldr r1, _080555A4  @ =gUnknown_08129518
	str r1, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r2, r9
	str r2, [sp, #20]
	str r2, [sp, #28]
	mov r3, #144
	lsl r3, r3, #7
	str r3, [sp, #24]
	str r3, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r4, #16
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r0, #10
	add r1, sp, #60
	strb r0, [r1]
	add r0, sp, #4
	mov r2, #1
	strh r2, [r0, #58]
	mov r3, #144
	lsl r3, r3, #2
	str r3, [sp, #64]
	mov r4, #60
	strh r4, [r0, #40]
	ldr r0, _080555C4  @ =gUnknown_0865F9D0
	str r0, [sp, #48]
	ldr r0, _080555C8  @ =gUnknown_0865FAC0
	str r0, [sp, #52]
	mov r0, #4
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #128
	mov r3, #70
	add r3, sp, r3
	strh r2, [r3]
	mov r4, #32
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #252
	str r1, [sp, #76]
	mov r2, #156
	lsl r2, r2, #1
	str r2, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _080555CC  @ =gUnknown_08439A4C
	str r0, [sp, #4]
	ldr r0, _080555D0  @ =gUnknown_08439A54
	str r0, [sp, #8]
	ldr r0, _080555D4  @ =gUnknown_0843980C
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #208
	lsl r0, r0, #7
	str r0, [sp, #20]
	str r0, [sp, #28]
	mov r0, #128
	lsl r0, r0, #7
	str r0, [sp, #24]
	str r0, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	strh r4, [r0, #52]
	strh r4, [r0, #54]
	mov r4, #7
	add r0, sp, #60
	strb r4, [r0]
	add r0, sp, #4
	mov r1, #16
	strh r1, [r0, #58]
	mov r2, #144
	lsl r2, r2, #2
	str r2, [sp, #64]
	mov r3, #60
	strh r3, [r0, #40]
	ldr r0, _080555D8  @ =gUnknown_0865FBB0
	str r0, [sp, #48]
	ldr r0, _080555DC  @ =gUnknown_0865FCA0
	str r0, [sp, #52]
	mov r4, #32
	add r0, sp, #68
	strh r4, [r0]
	mov r0, #128
	lsl r0, r0, #3
	mov r1, #70
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #1
	add r2, sp, #72
	strh r0, [r2]
	mov r3, #252
	str r3, [sp, #76]
	mov r4, #156
	lsl r4, r4, #1
	str r4, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r1, _0805559C  @ =gUnknown_0812953C
	str r1, [sp, #4]
	ldr r2, _080555A0  @ =gUnknown_08129544
	str r2, [sp, #8]
	ldr r3, _080555A4  @ =gUnknown_08129518
	str r3, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r4, r9
	str r4, [sp, #20]
	str r4, [sp, #28]
	mov r0, #144
	lsl r0, r0, #7
	str r0, [sp, #24]
	str r0, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #16
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #9
	add r2, sp, #60
	strb r0, [r2]
	add r0, sp, #4
	mov r3, #1
	strh r3, [r0, #58]
	mov r4, #144
	lsl r4, r4, #2
	str r4, [sp, #64]
	mov r1, #60
	strh r1, [r0, #40]
	ldr r0, _080555E0  @ =gUnknown_0865FD90
	str r0, [sp, #48]
	ldr r0, _080555E4  @ =gUnknown_0865FE80
	str r0, [sp, #52]
	mov r2, #4
	add r3, sp, #68
	strh r2, [r3]
	mov r4, #128
	mov r0, #70
	add r0, sp, r0
	strh r4, [r0]
	mov r1, #32
	add r2, sp, #72
	strh r1, [r2]
	mov r3, #252
	str r3, [sp, #76]
	mov r4, #156
	lsl r4, r4, #1
	str r4, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
_08055426:
	ldr r0, _080555E8  @ =gUnknown_080BADF4
	str r0, [sp, #4]
	ldr r0, _080555EC  @ =gUnknown_080BADFC
	str r0, [sp, #8]
	ldr r0, _080555F0  @ =gUnknown_080BACD4
	str r0, [sp, #12]
	add r0, sp, #4
	mov r7, #0
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r1, _080555F4  @ =0xFFFF6800
	str r1, [sp, #20]
	mov r2, #176
	lsl r2, r2, #7
	str r2, [sp, #28]
	mov r3, #128
	lsl r3, r3, #6
	str r3, [sp, #24]
	str r3, [sp, #32]
	mov r4, #240
	lsl r4, r4, #1
	str r4, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #64
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #3
	add r2, sp, #60
	strb r0, [r2]
	add r0, sp, #4
	mov r3, #8
	strh r3, [r0, #58]
	mov r4, #68
	str r4, [sp, #64]
	add r0, sp, #68
	strh r1, [r0]
	mov r1, #128
	lsl r1, r1, #4
	mov r2, #70
	add r2, sp, r2
	strh r1, [r2]
	mov r3, #128
	lsl r3, r3, #2
	add r4, sp, #72
	strh r3, [r4]
	str r7, [sp, #76]
	mov r0, #128
	str r0, [sp, #80]
	add r1, sp, #4
	str r1, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _080555F8  @ =gUnknown_08251FE0
	str r0, [sp, #4]
	ldr r0, _080555FC  @ =gUnknown_08251FE8
	str r0, [sp, #8]
	ldr r0, _08055600  @ =gUnknown_08251EC0
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r2, _080555F4  @ =0xFFFF6800
	str r2, [sp, #20]
	mov r3, #176
	lsl r3, r3, #7
	str r3, [sp, #28]
	mov r4, #128
	lsl r4, r4, #6
	str r4, [sp, #24]
	str r4, [sp, #32]
	mov r0, #240
	lsl r0, r0, #1
	str r0, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #64
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r2, #6
	add r3, sp, #60
	strb r2, [r3]
	mov r4, #8
	strh r4, [r0, #58]
	mov r0, #68
	str r0, [sp, #64]
	mov r1, #128
	add r2, sp, #68
	strh r1, [r2]
	mov r5, #128
	lsl r5, r5, #5
	mov r3, #70
	add r3, sp, r3
	strh r5, [r3]
	mov r4, #128
	lsl r4, r4, #3
	add r0, sp, #72
	strh r4, [r0]
	str r7, [sp, #76]
	mov r1, #128
	str r1, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _08055604  @ =gUnknown_081461D0
	str r0, [sp, #4]
	ldr r0, _08055608  @ =gUnknown_081461D8
	str r0, [sp, #8]
	ldr r0, _0805560C  @ =gUnknown_081460B0
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r3, #176
	lsl r3, r3, #7
	str r3, [sp, #20]
	str r3, [sp, #28]
	mov r4, #128
	lsl r4, r4, #6
	str r4, [sp, #24]
	str r4, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #64
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r2, #6
	add r3, sp, #60
	strb r2, [r3]
	mov r4, #8
	strh r4, [r0, #58]
	mov r0, #64
	str r0, [sp, #64]
	mov r1, #128
	add r2, sp, #68
	strh r1, [r2]
	mov r3, #70
	add r3, sp, r3
	strh r5, [r3]
	mov r4, #128
	lsl r4, r4, #3
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #128
	str r1, [sp, #76]
	mov r4, #180
	str r4, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _08055610  @ =gUnknown_0814E340
	str r0, [sp, #4]
	ldr r0, _08055614  @ =gUnknown_0814E348
	str r0, [sp, #8]
	ldr r0, _08055618  @ =gUnknown_0814E1D8
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #208
	lsl r0, r0, #7
	str r0, [sp, #20]
	b _0805561C
	.byte 0x00
	.byte 0x00
_0805559C:
	.4byte gUnknown_0812953C
_080555A0:
	.4byte gUnknown_08129544
_080555A4:
	.4byte gUnknown_08129518
_080555A8:
	.4byte gUnknown_0865F610
_080555AC:
	.4byte gUnknown_0865F700
_080555B0:
	.4byte gUnknown_082F39F0
_080555B4:
	.4byte gUnknown_082F39F8
_080555B8:
	.4byte gUnknown_082F38F4
_080555BC:
	.4byte gUnknown_0865F7F0
_080555C0:
	.4byte gUnknown_0865F8E0
_080555C4:
	.4byte gUnknown_0865F9D0
_080555C8:
	.4byte gUnknown_0865FAC0
_080555CC:
	.4byte gUnknown_08439A4C
_080555D0:
	.4byte gUnknown_08439A54
_080555D4:
	.4byte gUnknown_0843980C
_080555D8:
	.4byte gUnknown_0865FBB0
_080555DC:
	.4byte gUnknown_0865FCA0
_080555E0:
	.4byte gUnknown_0865FD90
_080555E4:
	.4byte gUnknown_0865FE80
_080555E8:
	.4byte gUnknown_080BADF4
_080555EC:
	.4byte gUnknown_080BADFC
_080555F0:
	.4byte gUnknown_080BACD4
_080555F4:
	.4byte 0xFFFF6800
_080555F8:
	.4byte gUnknown_08251FE0
_080555FC:
	.4byte gUnknown_08251FE8
_08055600:
	.4byte gUnknown_08251EC0
_08055604:
	.4byte gUnknown_081461D0
_08055608:
	.4byte gUnknown_081461D8
_0805560C:
	.4byte gUnknown_081460B0
_08055610:
	.4byte gUnknown_0814E340
_08055614:
	.4byte gUnknown_0814E348
_08055618:
	.4byte gUnknown_0814E1D8
_0805561C:
	str r0, [sp, #28]
	mov r3, #128
	lsl r3, r3, #7
	str r3, [sp, #24]
	str r3, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r2, #6
	add r3, sp, #60
	strb r2, [r3]
	add r1, r0, #0
	mov r0, #10
	strh r0, [r1, #58]
	mov r0, #64
	str r0, [sp, #64]
	mov r1, #32
	add r2, sp, #68
	strh r1, [r2]
	mov r3, #128
	lsl r3, r3, #3
	mov r0, #70
	add r0, sp, r0
	strh r3, [r0]
	mov r0, #128
	lsl r0, r0, #1
	add r1, sp, #72
	strh r0, [r1]
	str r4, [sp, #76]
	mov r2, #130
	lsl r2, r2, #1
	str r2, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r4, _0805586C  @ =gUnknown_0825A00C
	str r4, [sp, #4]
	ldr r0, _08055870  @ =gUnknown_0825A014
	str r0, [sp, #8]
	ldr r1, _08055874  @ =gUnknown_08259FE8
	mov r8, r1
	str r1, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r2, #176
	lsl r2, r2, #7
	str r2, [sp, #20]
	str r2, [sp, #28]
	mov r3, #128
	lsl r3, r3, #7
	str r3, [sp, #24]
	str r3, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r4, #64
	strh r4, [r0, #52]
	mov r1, #32
	strh r1, [r0, #54]
	mov r2, #6
	add r3, sp, #60
	strb r2, [r3]
	mov r4, #1
	strh r4, [r0, #58]
	mov r0, #64
	str r0, [sp, #64]
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #4
	mov r3, #70
	add r3, sp, r3
	strh r2, [r3]
	mov r4, #128
	lsl r4, r4, #2
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #1
	str r1, [sp, #76]
	mov r2, #128
	str r2, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r4, _0805586C  @ =gUnknown_0825A00C
	str r4, [sp, #4]
	ldr r0, _08055870  @ =gUnknown_0825A014
	str r0, [sp, #8]
	mov r1, r8
	str r1, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r2, #176
	lsl r2, r2, #7
	str r2, [sp, #20]
	str r2, [sp, #28]
	mov r3, #128
	lsl r3, r3, #7
	str r3, [sp, #24]
	str r3, [sp, #32]
	str r7, [sp, #36]
	str r7, [sp, #40]
	add r0, sp, #4
	mov r4, #64
	strh r4, [r0, #52]
	mov r1, #32
	strh r1, [r0, #54]
	mov r2, #6
	add r3, sp, #60
	strb r2, [r3]
	mov r4, #1
	strh r4, [r0, #58]
	mov r0, #64
	str r0, [sp, #64]
	add r1, sp, #68
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #4
	mov r3, #70
	add r3, sp, r3
	strh r2, [r3]
	mov r4, #128
	lsl r4, r4, #2
	add r0, sp, #72
	strh r4, [r0]
	mov r1, #130
	lsl r1, r1, #1
	str r1, [sp, #76]
	mov r7, #156
	lsl r7, r7, #1
	str r7, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r3, _0805586C  @ =gUnknown_0825A00C
	str r3, [sp, #4]
	ldr r4, _08055870  @ =gUnknown_0825A014
	str r4, [sp, #8]
	mov r0, r8
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r1, #176
	lsl r1, r1, #7
	str r1, [sp, #20]
	ldr r0, _08055878  @ =0x03001998
	ldr r2, [r0]
	ldr r3, _0805587C  @ =gCameraHorizontalOffset
	mov r4, #0
	ldrsh r1, [r3, r4]
	lsl r1, r1, #7
	ldr r0, [r2, #16]
	sub r0, r0, r1
	str r0, [sp, #28]
	mov r0, #128
	lsl r0, r0, #7
	str r0, [sp, #24]
	ldr r4, _08055880  @ =gCameraVerticalOffset
	mov r0, #0
	ldrsh r1, [r4, r0]
	lsl r1, r1, #7
	ldr r0, [r2, #20]
	sub r0, r0, r1
	str r0, [sp, #32]
	mov r4, #0
	ldrsh r1, [r3, r4]
	lsl r1, r1, #7
	ldr r0, [r2, #16]
	sub r0, r0, r1
	ldr r1, _08055884  @ =0xFFFFA800
	add r0, r0, r1
	asr r0, r0, #6
	str r0, [sp, #36]
	ldr r3, _08055880  @ =gCameraVerticalOffset
	mov r4, #0
	ldrsh r1, [r3, r4]
	lsl r1, r1, #7
	ldr r0, [r2, #20]
	sub r0, r0, r1
	ldr r1, _08055888  @ =0xFFFFC000
	add r0, r0, r1
	asr r0, r0, #6
	str r0, [sp, #40]
	add r0, sp, #4
	mov r2, #64
	strh r2, [r0, #52]
	mov r3, #32
	strh r3, [r0, #54]
	mov r4, #6
	add r0, sp, #60
	strb r4, [r0]
	add r0, sp, #4
	mov r1, #1
	strh r1, [r0, #58]
	mov r2, #68
	str r2, [sp, #64]
	mov r3, #64
	add r4, sp, #68
	strh r3, [r4]
	mov r0, #128
	lsl r0, r0, #4
	mov r1, #70
	add r1, sp, r1
	strh r0, [r1]
	mov r2, #128
	lsl r2, r2, #2
	add r3, sp, #72
	strh r2, [r3]
	str r7, [sp, #76]
	mov r0, #188
	lsl r0, r0, #1
	str r0, [sp, #80]
	add r4, sp, #4
	str r4, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
_0805580A:
	ldr r0, _0805588C  @ =gUnknown_08145F28
	str r0, [sp, #4]
	ldr r0, _08055890  @ =gUnknown_08145F30
	str r0, [sp, #8]
	ldr r0, _08055894  @ =gUnknown_08145E74
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #0
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #128
	lsl r0, r0, #5
	str r0, [sp, #20]
	str r0, [sp, #28]
	str r1, [sp, #24]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	add r0, sp, #4
	mov r1, #16
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	add r1, sp, #60
	strb r0, [r1]
	add r1, sp, #4
	mov r0, #5
	strh r0, [r1, #58]
	mov r1, #32
	str r1, [sp, #64]
	mov r0, #4
	add r2, sp, #68
	strh r0, [r2]
	mov r0, #128
	mov r3, #70
	add r3, sp, r3
	strh r0, [r3]
	add r4, sp, #72
	strh r1, [r4]
	ldr r0, _08055898  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0805589C
	mov r0, #82
	str r0, [sp, #76]
	mov r0, #215
	b _080558A4
_0805586C:
	.4byte gUnknown_0825A00C
_08055870:
	.4byte gUnknown_0825A014
_08055874:
	.4byte gUnknown_08259FE8
_08055878:
	.4byte 0x03001998
_0805587C:
	.4byte gCameraHorizontalOffset
_08055880:
	.4byte gCameraVerticalOffset
_08055884:
	.4byte 0xFFFFA800
_08055888:
	.4byte 0xFFFFC000
_0805588C:
	.4byte gUnknown_08145F28
_08055890:
	.4byte gUnknown_08145F30
_08055894:
	.4byte gUnknown_08145E74
_08055898:
	.4byte 0x03001BD8
_0805589C:
	mov r0, #188
	lsl r0, r0, #1
	str r0, [sp, #76]
	add r0, r0, #133
_080558A4:
	str r0, [sp, #80]
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _0805591C  @ =gUnknown_081B6378
	str r0, [sp, #4]
	ldr r0, _08055920  @ =gUnknown_081B6380
	str r0, [sp, #8]
	ldr r0, _08055924  @ =gUnknown_081B6180
	str r0, [sp, #12]
	add r0, sp, #4
	mov r1, #0
	strh r6, [r0, #12]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, #128
	lsl r0, r0, #5
	str r0, [sp, #20]
	str r0, [sp, #28]
	str r1, [sp, #24]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	add r0, sp, #4
	mov r1, #32
	strh r1, [r0, #52]
	strh r1, [r0, #54]
	mov r0, #6
	add r2, sp, #60
	strb r0, [r2]
	add r2, sp, #4
	mov r0, #14
	strh r0, [r2, #58]
	str r1, [sp, #64]
	add r3, sp, #68
	strh r1, [r3]
	mov r0, #128
	lsl r0, r0, #3
	mov r4, #70
	add r4, sp, r4
	strh r0, [r4]
	mov r0, #128
	lsl r0, r0, #1
	add r1, sp, #72
	strh r0, [r1]
	ldr r0, _08055928  @ =0x03001BD8
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0805592C
	mov r0, #82
	str r0, [sp, #76]
	mov r0, #215
	b _08055934
	.byte 0x00
	.byte 0x00
_0805591C:
	.4byte gUnknown_081B6378
_08055920:
	.4byte gUnknown_081B6380
_08055924:
	.4byte gUnknown_081B6180
_08055928:
	.4byte 0x03001BD8
_0805592C:
	mov r0, #188
	lsl r0, r0, #1
	str r0, [sp, #76]
	add r0, r0, #133
_08055934:
	str r0, [sp, #80]
	add r2, sp, #4
	str r2, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
	ldr r0, _080559C0  @ =0x03001BD8
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _080559AE
	ldr r0, _080559C4  @ =gUnknown_0825A00C
	str r0, [sp, #4]
	ldr r0, _080559C8  @ =gUnknown_0825A014
	str r0, [sp, #8]
	ldr r0, _080559CC  @ =gUnknown_08259FE8
	str r0, [sp, #12]
	add r0, sp, #4
	strh r6, [r0, #12]
	str r1, [sp, #20]
	str r1, [sp, #28]
	str r1, [sp, #24]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r1, [sp, #40]
	mov r3, #64
	strh r3, [r0, #52]
	mov r2, #32
	strh r2, [r0, #54]
	mov r0, #6
	add r4, sp, #60
	strb r0, [r4]
	add r1, sp, #4
	mov r0, #1
	strh r0, [r1, #58]
	str r2, [sp, #64]
	add r0, sp, #68
	strh r3, [r0]
	mov r0, #128
	lsl r0, r0, #4
	mov r1, #70
	add r1, sp, r1
	strh r0, [r1]
	mov r0, #128
	lsl r0, r0, #2
	add r2, sp, #72
	strh r0, [r2]
	sub r0, r0, #136
	str r0, [sp, #76]
	add r0, r0, #133
	str r0, [sp, #80]
	add r3, sp, #4
	str r3, [sp]
	ldr r0, [sp, #84]
	ldr r1, [sp, #88]
	ldr r2, [sp, #92]
	ldr r3, [sp, #96]
	bl sub_08055B2C
_080559AE:
	add sp, sp, #108
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080559C0:
	.4byte 0x03001BD8
_080559C4:
	.4byte gUnknown_0825A00C
_080559C8:
	.4byte gUnknown_0825A014
_080559CC:
	.4byte gUnknown_08259FE8
	THUMB_FUNC_END sub_08054C9C

	THUMB_FUNC_START sub_080559D0
sub_080559D0: @ 0x080559D0
	push {r4,lr}
	ldr r3, _08055A10  @ =gUnknown_03000A10
	add r3, r3, #48
	mov r4, #0
	strb r4, [r3]
	ldr r3, _08055A14  @ =0x03001BD8
	strb r0, [r3]
	strb r1, [r3, #1]
	strb r2, [r3, #2]
	ldr r0, _08055A18  @ =gUnknown_030009D4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080559EE
	bl sub_08029DB8
_080559EE:
	bl sub_08055AE4
	ldr r0, _08055A1C  @ =0x030009F4
	ldr r2, _08055A20  @ =0x08053CD1
	str r2, [r0]
	ldr r1, _08055A24  @ =0x030009F8
	ldr r0, _08055A28  @ =0x08054C9D
	str r0, [r1]
	ldr r1, _08055A2C  @ =0x03000A00
	ldr r0, _08055A30  @ =0x08055AA1
	str r0, [r1]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08055A10:
	.4byte gUnknown_03000A10
_08055A14:
	.4byte 0x03001BD8
_08055A18:
	.4byte gUnknown_030009D4
_08055A1C:
	.4byte 0x030009F4
_08055A20:
	.4byte sub_08053CD0
_08055A24:
	.4byte 0x030009F8
_08055A28:
	.4byte sub_08054C9C
_08055A2C:
	.4byte 0x03000A00
_08055A30:
	.4byte sub_08055AA0
	THUMB_FUNC_END sub_080559D0

	THUMB_FUNC_START sub_08055A34
sub_08055A34: @ 0x08055A34
	push {lr}
	sub sp, sp, #12
	ldr r0, _08055A88  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #16]
	str r1, [r0, #32]
	ldr r1, [r0, #20]
	str r1, [r0, #36]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08055A8C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	bl sub_08071C24
	bl sub_080720AC
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	bl sub_08055AE4
	ldr r0, _08055A90  @ =0x030009F4
	ldr r2, _08055A94  @ =0x08053A71
	str r2, [r0]
	ldr r1, _08055A98  @ =0x030009F8
	ldr r0, _08055A9C  @ =0x08053BB9
	str r0, [r1]
	bl _call_via_r2
	add sp, sp, #12
	pop {r0}
	bx r0
_08055A88:
	.4byte gUnknown_030019AC
_08055A8C:
	.4byte 0x00007FFF
_08055A90:
	.4byte 0x030009F4
_08055A94:
	.4byte sub_08053A70
_08055A98:
	.4byte 0x030009F8
_08055A9C:
	.4byte sub_08053BB8
	THUMB_FUNC_END sub_08055A34

	THUMB_FUNC_START sub_08055AA0
sub_08055AA0: @ 0x08055AA0
	push {lr}
	ldr r0, _08055ACC  @ =gUnknown_03000A10
	add r0, r0, #48
	mov r1, #1
	strb r1, [r0]
	ldr r1, _08055AD0  @ =0x030009F4
	ldr r0, _08055AD4  @ =0x080572B5
	str r0, [r1]
	ldr r1, _08055AD8  @ =0x030009F8
	ldr r0, _08055ADC  @ =0x08057325
	str r0, [r1]
	ldr r2, _08055AE0  @ =gUnknown_03001A1C
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #6
	orr r0, r0, r1
	str r0, [r2]
	bl sub_0804AB60
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08055ACC:
	.4byte gUnknown_03000A10
_08055AD0:
	.4byte 0x030009F4
_08055AD4:
	.4byte sub_080572B4
_08055AD8:
	.4byte 0x030009F8
_08055ADC:
	.4byte sub_08057324
_08055AE0:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08055AA0

	THUMB_FUNC_START sub_08055AE4
sub_08055AE4: @ 0x08055AE4
	push {r4-r6,lr}
	ldr r5, _08055B20  @ =0x03001C34
	ldr r6, _08055B24  @ =0x03001BE8
	ldr r4, _08055B28  @ =0x03001C18
	mov r1, #0
	mov r2, #0
	mov r3, #31
_08055AF2:
	ldr r0, [r4]
	add r0, r2, r0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	strh r1, [r0, #10]
	strh r1, [r0, #12]
	strh r1, [r0, #14]
	strb r1, [r0, #17]
	ldr r0, [r4]
	add r0, r2, r0
	strb r1, [r0, #16]
	add r2, r2, #20
	sub r3, r3, #1
	cmp r3, #0
	bge _08055AF2
	mov r0, #0
	strb r0, [r5]
	str r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08055B20:
	.4byte 0x03001C34
_08055B24:
	.4byte 0x03001BE8
_08055B28:
	.4byte 0x03001C18
	THUMB_FUNC_END sub_08055AE4

	THUMB_FUNC_START sub_08055B2C
sub_08055B2C: @ 0x08055B2C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r5, r0, #0
	add r7, r1, #0
	mov r8, r2
	ldr r0, [sp, #48]
	mov r12, r0
	ldr r0, _08055E38  @ =0x03001BE8
	ldr r1, [r0]
	mov r2, r12
	ldr r0, [r2, #72]
	cmp r1, r0
	bhi _08055B50
	b _08055E28
_08055B50:
	ldr r0, [r2, #76]
	cmp r1, r0
	bls _08055B58
	b _08055E28
_08055B58:
	ldrh r1, [r2, #12]
	ldr r2, _08055E3C  @ =0x03001C18
	ldr r4, [r2]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0, #17]
	cmp r0, #0
	bne _08055B6E
	b _08055E28
_08055B6E:
	ldr r0, _08055E40  @ =0x03001C24
	ldrb r0, [r0]
	ldr r3, _08055E44  @ =gOamData
	mov r10, r3
	mov r6, r12
	add r6, r6, #68
	str r6, [sp, #8]
	mov r1, r12
	add r1, r1, #66
	str r1, [sp, #4]
	mov r2, #56
	add r2, r2, r12
	mov r9, r2
	mov r3, r12
	add r3, r3, #64
	str r3, [sp]
	cmp r0, #0
	bne _08055B94
	b _08055CE0
_08055B94:
	ldr r2, _08055E48  @ =REG_DMA3SAD
	mov r6, r12
	ldr r0, [r6]
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r0, _08055E4C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrh r1, [r0, #14]
	ldr r3, [r6, #8]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r6, #4]
	add r0, r0, r1
	str r0, [r2]
	mov r6, r8
	ldrh r0, [r6]
	ldr r1, _08055E50  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r10
	mov r2, r12
	ldrh r1, [r2, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	mov r6, #8
	ldrsh r1, [r0, r6]
	ldr r2, _08055E54  @ =gSpriteHorizontalOffset
	mov r6, #0
	ldrsh r0, [r2, r6]
	sub r1, r1, r0
	ldr r2, _08055E58  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08055E5C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	mov r3, r12
	ldrh r1, [r3, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0, #10]
	ldr r4, _08055E60  @ =gUnknown_030012F4
	ldrb r1, [r4]
	sub r0, r0, r1
	add r0, r0, #1
	strb r0, [r2]
	ldr r1, [r3, #60]
	mov r0, #128
	lsl r0, r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _08055C58
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	mov r6, r9
	ldrb r1, [r6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
_08055C58:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrb r1, [r2, #1]
	mov r6, #13
	neg r6, r6
	add r0, r6, #0
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strb r0, [r2, #1]
	mov r1, r12
	ldr r0, [r1, #60]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08055C88
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r10
	ldrb r1, [r0, #3]
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #3]
_08055C88:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	mov r3, r9
	ldrb r1, [r3]
	mov r0, #3
	lsr r1, r1, #4
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r3, [r2, #5]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r4, [r7]
	add r1, r1, r4
	ldr r6, _08055E64  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _08055E68  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r1, [sp]
	ldrh r0, [r1]
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	ldr r3, [sp, #4]
	ldrh r0, [r3]
	mov r4, r8
	ldrh r4, [r4]
	add r0, r0, r4
	mov r6, r8
	strh r0, [r6]
_08055CE0:
	ldr r2, _08055E48  @ =REG_DMA3SAD
	mov r1, r12
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	mov r6, r10
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r0, _08055E4C  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r1, #12]
	ldr r4, _08055E3C  @ =0x03001C18
	ldr r3, [r4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r1, [r0, #14]
	mov r0, r12
	ldr r3, [r0, #8]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	mul r1, r0, r1
	lsl r1, r1, #2
	mov r4, r12
	ldr r0, [r4, #4]
	add r0, r0, r1
	str r0, [r2]
	mov r1, r8
	ldrh r0, [r1]
	ldr r1, _08055E50  @ =OBJ_VRAM0
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r3, [sp, #4]
	ldrh r0, [r3]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r1, [r4, #12]
	ldr r0, _08055E3C  @ =0x03001C18
	ldr r4, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	mov r2, #8
	ldrsh r1, [r0, r2]
	str r1, [sp, #12]
	ldr r1, _08055E54  @ =gSpriteHorizontalOffset
	mov r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, [sp, #12]
	sub r1, r2, r0
	ldr r2, _08055E58  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08055E5C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r3, r12
	ldrh r1, [r3, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0, #10]
	ldr r4, _08055E60  @ =gUnknown_030012F4
	ldrb r1, [r4]
	sub r0, r0, r1
	add r0, r0, #1
	strb r0, [r2]
	ldr r0, [r3, #60]
	mov r1, #128
	lsl r1, r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08055DB4
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r0, r9
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
_08055DB4:
	mov r1, r12
	ldr r0, [r1, #60]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08055DCE
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r1, [r0, #3]
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #3]
_08055DCE:
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	mov r3, r9
	ldrb r1, [r3]
	mov r0, #3
	lsr r1, r1, #4
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r3, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r4, [r7]
	add r1, r1, r4
	ldr r6, _08055E64  @ =0x000003FF
	add r0, r6, #0
	and r1, r1, r0
	ldr r0, _08055E68  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r1, [sp]
	ldrh r0, [r1]
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	ldr r3, [sp, #4]
	ldrh r0, [r3]
	mov r4, r8
	ldrh r4, [r4]
	add r0, r0, r4
	mov r6, r8
	strh r0, [r6]
_08055E28:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08055E38:
	.4byte 0x03001BE8
_08055E3C:
	.4byte 0x03001C18
_08055E40:
	.4byte 0x03001C24
_08055E44:
	.4byte gOamData
_08055E48:
	.4byte REG_DMA3SAD
_08055E4C:
	.4byte 0x84000002
_08055E50:
	.4byte OBJ_VRAM0
_08055E54:
	.4byte gSpriteHorizontalOffset
_08055E58:
	.4byte 0x000001FF
_08055E5C:
	.4byte 0xFFFFFE00
_08055E60:
	.4byte gUnknown_030012F4
_08055E64:
	.4byte 0x000003FF
_08055E68:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_08055B2C

	THUMB_FUNC_START sub_08055E6C
sub_08055E6C: @ 0x08055E6C
	push {r4-r6,lr}
	add r6, r0, #0
	ldr r1, [r6, #60]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08055EAC
	ldrh r1, [r6, #12]
	ldr r5, _08055EA4  @ =0x03001C18
	ldr r4, [r5]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, _08055EA8  @ =gUnknown_030019AC
	ldr r3, [r1]
	ldr r1, [r6, #16]
	ldr r2, [r3, #16]
	add r1, r1, r2
	str r1, [r0]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r6, #20]
	ldr r2, [r3, #16]
	b _08055F1C
_08055EA4:
	.4byte 0x03001C18
_08055EA8:
	.4byte gUnknown_030019AC
_08055EAC:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08055EEC
	ldrh r1, [r6, #12]
	ldr r5, _08055EE4  @ =0x03001C18
	ldr r4, [r5]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, _08055EE8  @ =0x03001998
	ldr r3, [r1]
	ldr r1, [r6, #16]
	ldr r2, [r3, #16]
	add r1, r1, r2
	str r1, [r0]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r6, #20]
	ldr r2, [r3, #20]
	add r1, r1, r2
	sub r1, r1, #32
	str r1, [r0, #4]
	b _08055F52
_08055EE4:
	.4byte 0x03001C18
_08055EE8:
	.4byte 0x03001998
_08055EEC:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08055F2C
	ldrh r1, [r6, #12]
	ldr r5, _08055F24  @ =0x03001C18
	ldr r4, [r5]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, _08055F28  @ =0x03001960
	ldr r3, [r1]
	ldr r1, [r6, #16]
	ldr r2, [r3, #16]
	add r1, r1, r2
	str r1, [r0]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r6, #20]
	ldr r2, [r3, #20]
_08055F1C:
	add r1, r1, r2
	str r1, [r0, #4]
	b _08055F52
	.byte 0x00
	.byte 0x00
_08055F24:
	.4byte 0x03001C18
_08055F28:
	.4byte 0x03001960
_08055F2C:
	mov r0, #64
	and r1, r1, r0
	ldrh r1, [r6, #12]
	ldr r3, _08055FB4  @ =0x03001C18
	ldr r2, [r3]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r6, #16]
	str r1, [r0]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r6, #20]
	str r1, [r0, #4]
	add r5, r3, #0
_08055F52:
	ldrh r1, [r6, #12]
	ldr r3, [r5]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	mov r4, #0
	mov r2, #0
	strh r2, [r0, #18]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	strh r2, [r0, #8]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	strh r2, [r0, #10]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	strh r2, [r0, #12]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	strh r2, [r0, #14]
	ldrh r1, [r6, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	strb r4, [r0, #17]
	ldrh r1, [r6, #12]
	ldr r2, [r5]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	strb r4, [r0, #16]
	pop {r4-r6}
	pop {r0}
	bx r0
_08055FB4:
	.4byte 0x03001C18
	THUMB_FUNC_END sub_08055E6C

	THUMB_FUNC_START sub_08055FB8
sub_08055FB8: @ 0x08055FB8
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r0, _08056024  @ =0x03001BE8
	ldr r1, [r0]
	ldr r2, [r5, #72]
	cmp r1, r2
	bcs _08055FC8
	b _0805648C
_08055FC8:
	ldr r0, [r5, #76]
	cmp r1, r0
	bcc _08055FD0
	b _0805648C
_08055FD0:
	cmp r1, r2
	bne _08055FDA
	add r0, r5, #0
	bl sub_08055E6C
_08055FDA:
	ldr r4, [r5, #60]
	mov r0, #2
	and r4, r4, r0
	ldr r7, _08056028  @ =0x03001C18
	cmp r4, #0
	bne _08056054
	ldrh r1, [r5, #12]
	ldr r6, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r3, r0, r6
	ldrh r1, [r3, #14]
	ldr r2, [r5, #8]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r1, [r3, #12]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08056042
	strh r4, [r3, #12]
	ldrh r0, [r5, #12]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r3, r1, r6
	ldrh r2, [r3, #14]
	ldrh r0, [r5, #58]
	sub r0, r0, #1
	cmp r2, r0
	bge _0805602C
	add r0, r2, #1
	strh r0, [r3, #14]
	b _08056042
	.byte 0x00
	.byte 0x00
_08056024:
	.4byte 0x03001BE8
_08056028:
	.4byte 0x03001C18
_0805602C:
	ldr r1, [r5, #8]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0, #8]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08056042
	strh r4, [r3, #14]
_08056042:
	ldrh r1, [r5, #12]
	ldr r2, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r1, [r0, #12]
	add r1, r1, #1
	strh r1, [r0, #12]
_08056054:
	ldr r2, [r5, #60]
	mov r0, #4
	and r0, r0, r2
	cmp r0, #0
	bne _08056060
	b _080562F4
_08056060:
	mov r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _080560B0
	ldrh r2, [r5, #12]
	ldr r3, [r5, #32]
	ldr r6, _080560AC  @ =gUnknown_030019AC
	ldr r4, [r5, #24]
	cmp r3, #0
	ble _0805608C
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	cmp r1, r0
	ble _080560F8
_0805608C:
	cmp r3, #0
	bge _08056110
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	cmp r1, r0
	bge _080560F8
	b _08056110
	.byte 0x00
	.byte 0x00
_080560AC:
	.4byte gUnknown_030019AC
_080560B0:
	mov r0, #16
	and r0, r0, r2
	cmp r0, #0
	beq _0805617C
	ldrh r2, [r5, #12]
	ldr r3, [r5, #32]
	ldr r4, [r5, #24]
	ldr r6, _0805610C  @ =0x03001960
	cmp r3, #0
	ble _080560DC
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	cmp r1, r0
	ble _080560F8
_080560DC:
	cmp r3, #0
	bge _08056110
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	cmp r1, r0
	blt _08056110
_080560F8:
	ldrh r1, [r5, #12]
	ldr r2, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0]
	add r1, r1, r3
	str r1, [r0]
	b _08056124
_0805610C:
	.4byte 0x03001960
_08056110:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	str r0, [r1]
_08056124:
	ldrh r2, [r5, #12]
	ldr r3, [r5, #36]
	ldr r4, [r5, #28]
	cmp r3, #0
	ble _08056148
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0, #4]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #20]
	add r0, r4, r0
	cmp r1, r0
	bgt _08056148
	b _080562D0
_08056148:
	cmp r3, #0
	bge _08056166
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0, #4]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #20]
	add r0, r4, r0
	cmp r1, r0
	blt _08056166
	b _080562D0
_08056166:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r6]
	ldr r0, [r0, #20]
	add r0, r4, r0
	str r0, [r1, #4]
	b _08056386
_0805617C:
	mov r0, #32
	and r2, r2, r0
	cmp r2, #0
	beq _0805624A
	ldrh r2, [r5, #12]
	ldr r3, [r5, #32]
	ldr r4, [r5, #24]
	ldr r6, _080561D8  @ =0x03001998
	cmp r3, #0
	ble _080561A8
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	cmp r1, r0
	ble _080561C4
_080561A8:
	cmp r3, #0
	bge _080561DC
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #16]
	add r0, r4, r0
	cmp r1, r0
	blt _080561DC
_080561C4:
	ldrh r1, [r5, #12]
	ldr r2, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0]
	add r1, r1, r3
	str r1, [r0]
	b _080561F0
_080561D8:
	.4byte 0x03001998
_080561DC:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r6]
	ldr r0, [r0, #32]
	add r0, r4, r0
	str r0, [r1]
_080561F0:
	ldrh r2, [r5, #12]
	ldr r3, [r5, #36]
	ldr r4, [r5, #28]
	cmp r3, #0
	ble _08056214
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0, #4]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #20]
	add r0, r4, r0
	sub r0, r0, #32
	cmp r1, r0
	ble _080562D0
_08056214:
	cmp r3, #0
	bge _08056232
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0, #4]
	add r1, r1, r3
	ldr r0, [r6]
	ldr r0, [r0, #20]
	add r0, r4, r0
	sub r0, r0, #32
	cmp r1, r0
	bge _080562D0
_08056232:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r0, [r6]
	ldr r0, [r0, #20]
	add r0, r4, r0
	sub r0, r0, #32
	str r0, [r1, #4]
	b _08056386
_0805624A:
	ldrh r2, [r5, #12]
	ldr r3, [r5, #32]
	ldr r4, [r5, #24]
	cmp r3, #0
	ble _08056266
	ldr r0, [r7]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	add r0, r0, r3
	cmp r0, r4
	ble _0805627C
_08056266:
	cmp r3, #0
	bge _08056290
	ldr r0, [r7]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	add r0, r0, r3
	cmp r0, r4
	blt _08056290
_0805627C:
	ldrh r1, [r5, #12]
	ldr r2, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0]
	add r1, r1, r3
	str r1, [r0]
	b _0805629E
_08056290:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	str r4, [r1]
_0805629E:
	ldrh r2, [r5, #12]
	ldr r3, [r5, #36]
	ldr r4, [r5, #28]
	cmp r3, #0
	ble _080562BA
	ldr r0, [r7]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1, #4]
	add r0, r0, r3
	cmp r0, r4
	ble _080562D0
_080562BA:
	cmp r3, #0
	bge _080562E4
	ldr r0, [r7]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1, #4]
	add r0, r0, r3
	cmp r0, r4
	blt _080562E4
_080562D0:
	ldrh r1, [r5, #12]
	ldr r2, [r7]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r1, [r0, #4]
	add r1, r1, r3
	str r1, [r0, #4]
	b _08056386
_080562E4:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	str r4, [r1, #4]
	b _08056386
_080562F4:
	mov r0, #192
	lsl r0, r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08056386
	ldrh r0, [r5, #12]
	ldr r4, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r3, r1, r4
	ldrh r0, [r3, #18]
	ldrh r1, [r5, #40]
	cmp r0, r1
	bcs _0805634E
	add r1, r0, #0
	ldr r0, [r5, #44]
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r3]
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [r3]
	ldrh r1, [r5, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrh r2, [r0, #18]
	ldr r1, [r5, #48]
	lsl r2, r2, #2
	add r2, r2, r1
	ldr r1, [r0, #4]
	ldr r2, [r2]
	sub r1, r1, r2
	str r1, [r0, #4]
	ldrh r1, [r5, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r4
	ldrh r1, [r0, #18]
	add r1, r1, #1
	strh r1, [r0, #18]
	b _08056386
_0805634E:
	mov r0, #128
	lsl r0, r0, #2
	and r2, r2, r0
	cmp r2, #0
	beq _08056386
	ldrh r0, [r5, #40]
	ldr r1, [r5, #44]
	lsl r0, r0, #2
	add r0, r0, r1
	sub r0, r0, #4
	ldr r1, [r3]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r3]
	ldrh r0, [r5, #12]
	lsl r2, r0, #2
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r4
	ldrh r0, [r5, #40]
	ldr r1, [r5, #48]
	lsl r0, r0, #2
	add r0, r0, r1
	sub r0, r0, #4
	ldr r1, [r2, #4]
	ldr r0, [r0]
	sub r1, r1, r0
	str r1, [r2, #4]
_08056386:
	ldr r0, [r5, #60]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080563B8
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r2, [r1]
	asr r2, r2, #8
	ldrh r3, [r1, #14]
	ldr r4, [r5, #8]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r2, r2, r0
	strh r2, [r1, #8]
	b _080563DE
_080563B8:
	ldrh r0, [r5, #12]
	ldr r2, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldr r3, [r1]
	asr r3, r3, #8
	ldrh r2, [r1, #14]
	ldr r4, [r5, #8]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r3
	strh r0, [r1, #8]
_080563DE:
	ldrh r0, [r5, #12]
	ldr r6, [r7]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r6
	ldr r3, [r1, #4]
	asr r3, r3, #8
	ldrh r2, [r1, #14]
	ldr r4, [r5, #8]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, r3
	strh r0, [r1, #10]
	ldr r0, [r5, #60]
	mov r1, #64
	and r0, r0, r1
	ldr r4, _08056480  @ =gSpriteHorizontalOffset
	cmp r0, #0
	beq _08056436
	ldrh r1, [r5, #12]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrh r1, [r4]
	ldrh r2, [r0, #8]
	add r1, r1, r2
	strh r1, [r0, #8]
	ldrh r0, [r5, #12]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r6
	ldr r0, _08056484  @ =gUnknown_030012F4
	ldrh r0, [r0]
	ldrh r6, [r1, #10]
	add r0, r0, r6
	strh r0, [r1, #10]
_08056436:
	ldrh r2, [r5, #12]
	ldr r1, [r7]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r3, r0, r1
	mov r0, #8
	ldrsh r1, [r3, r0]
	mov r6, #0
	ldrsh r0, [r4, r6]
	sub r1, r1, r0
	cmp r1, #240
	bgt _08056470
	ldrh r0, [r5, #52]
	add r0, r1, r0
	cmp r0, #0
	ble _08056470
	mov r1, #10
	ldrsh r0, [r3, r1]
	ldr r1, _08056484  @ =gUnknown_030012F4
	mov r4, #0
	ldrsh r1, [r1, r4]
	sub r1, r0, r1
	cmp r1, #160
	bgt _08056470
	ldrh r0, [r5, #54]
	add r0, r1, r0
	cmp r0, #0
	bgt _08056488
_08056470:
	ldr r0, [r7]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, r0
	mov r0, #0
	strb r0, [r1, #17]
	b _0805648C
_08056480:
	.4byte gSpriteHorizontalOffset
_08056484:
	.4byte gUnknown_030012F4
_08056488:
	mov r0, #1
	strb r0, [r3, #17]
_0805648C:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08055FB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08056494
sub_08056494: @ 0x08056494
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r1, _080564B4  @ =0x03001C34
	mov r0, #0
	strb r0, [r1]
	ldr r2, [r5, #4]
	mov r0, #32
	and r0, r0, r2
	mov r8, r1
	cmp r0, #0
	beq _080564BC
	ldr r0, _080564B8  @ =0x03001998
	b _080564D6
_080564B4:
	.4byte 0x03001C34
_080564B8:
	.4byte 0x03001998
_080564BC:
	mov r0, #16
	and r0, r0, r2
	cmp r0, #0
	beq _080564CC
	ldr r0, _080564C8  @ =0x03001960
	b _080564D6
_080564C8:
	.4byte 0x03001960
_080564CC:
	mov r0, #8
	and r2, r2, r0
	cmp r2, #0
	beq _08056510
	ldr r0, _0805650C  @ =gUnknown_030019AC
_080564D6:
	ldr r2, [r0]
	ldr r4, [r2, #100]
	mov r1, #4
	ldrsh r0, [r4, r1]
	ldr r1, [r2, #16]
	add r0, r1, r0
	asr r0, r0, #7
	ldrh r3, [r5]
	add r6, r0, r3
	mov r7, #6
	ldrsh r0, [r4, r7]
	add r1, r1, r0
	asr r1, r1, #7
	add r3, r1, r3
	mov r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, [r2, #20]
	add r0, r1, r0
	asr r0, r0, #7
	ldrh r2, [r5, #2]
	add r7, r0, r2
	mov r0, #2
	ldrsh r4, [r4, r0]
	add r1, r1, r4
	asr r1, r1, #7
	add r4, r1, r2
	b _08056518
_0805650C:
	.4byte gUnknown_030019AC
_08056510:
	ldrh r6, [r5]
	add r3, r6, #0
	ldrh r7, [r5, #2]
	add r4, r7, #0
_08056518:
	ldr r1, [r5, #4]
	mov r0, #4
	and r0, r0, r1
	mov r12, r1
	cmp r0, #0
	beq _0805654E
	ldr r0, _08056580  @ =gCameraHorizontalOffset
	mov r1, #0
	ldrsh r2, [r0, r1]
	sub r1, r3, r2
	mov r0, #240
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0805654E
	sub r0, r6, r2
	cmp r0, #0
	ble _0805654E
	ldr r0, _08056584  @ =gCameraVerticalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r4, r0
	mov r0, #160
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0805654E
	cmp r1, #0
	bgt _080565B2
_0805654E:
	mov r1, #1
	mov r0, r12
	and r0, r0, r1
	cmp r0, #0
	beq _08056590
	mov r0, r8
	strb r1, [r0]
	str r3, [sp]
	bl sub_08034238
	ldr r3, [sp]
	add r0, r6, r3
	lsl r0, r0, #6
	ldr r1, _08056588  @ =0xFFFF8800
	add r0, r0, r1
	add r1, r7, r4
	lsl r1, r1, #6
	ldr r2, _0805658C  @ =0xFFFFB000
	add r1, r1, r2
	ldr r2, [r5, #12]
	ldr r3, [r5, #8]
	sub r2, r2, r3
	bl sub_0803425C
	b _080565B2
_08056580:
	.4byte gCameraHorizontalOffset
_08056584:
	.4byte gCameraVerticalOffset
_08056588:
	.4byte 0xFFFF8800
_0805658C:
	.4byte 0xFFFFB000
_08056590:
	mov r0, #2
	mov r1, r12
	and r0, r0, r1
	cmp r0, #0
	beq _080565B2
	add r0, r6, r3
	asr r0, r0, #1
	sub r0, r0, #240
	lsl r0, r0, #16
	asr r0, r0, #16
	add r1, r7, r4
	asr r1, r1, #1
	sub r1, r1, #160
	lsl r1, r1, #16
	asr r1, r1, #16
	bl sub_08033FAC
_080565B2:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08056494

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080565C0
sub_080565C0: @ 0x080565C0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r4, r0, #0
	ldrb r7, [r4, #6]
	mov r0, #2
	and r0, r0, r7
	ldr r2, _08056620  @ =0x03001BE8
	cmp r0, #0
	beq _08056688
	ldr r3, [r2]
	ldr r0, [r4, #8]
	cmp r3, r0
	blt _080566C2
	ldr r5, [r4, #12]
	cmp r3, r5
	bgt _08056688
	ldrh r0, [r4, #4]
	ldr r1, _08056624  @ =0x03001C18
	mov r8, r1
	ldr r2, [r1]
	lsl r1, r0, #2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r2
	ldrb r6, [r1, #16]
	cmp r6, #0
	beq _08056628
	ldrb r0, [r1, #17]
	cmp r0, #0
	beq _08056604
	cmp r3, r5
	bne _080566D2
_08056604:
	ldrb r0, [r4, #7]
	mov r1, #0
	bl sub_08071E7C
	ldrh r1, [r4, #4]
	mov r0, r8
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	mov r1, #0
	strb r1, [r0, #16]
	b _080566D2
_08056620:
	.4byte 0x03001BE8
_08056624:
	.4byte 0x03001C18
_08056628:
	cmp r3, r5
	bne _08056636
	ldrb r0, [r4, #7]
	mov r1, #0
	bl sub_08071E7C
	b _080566D2
_08056636:
	ldrb r0, [r1, #17]
	cmp r0, #0
	beq _080566D2
	mov r3, #1
	and r3, r3, r7
	cmp r3, #0
	beq _0805665A
	ldr r0, [r4]
	ldrb r2, [r4, #7]
	str r6, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r6, [sp, #8]
	mov r1, #12
	mov r3, #64
	bl sub_08071990
	b _0805666E
_0805665A:
	ldr r0, [r4]
	ldrb r2, [r4, #7]
	str r3, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #8
	mov r3, #64
	bl sub_08071990
_0805666E:
	ldrh r1, [r4, #4]
	ldr r0, _08056684  @ =0x03001C18
	ldr r2, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	mov r1, #1
	strb r1, [r0, #16]
	b _080566D2
	.byte 0x00
	.byte 0x00
_08056684:
	.4byte 0x03001C18
_08056688:
	ldr r1, [r2]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _080566C2
	ldrb r0, [r4, #6]
	mov r3, #1
	and r3, r3, r0
	cmp r3, #0
	beq _080566AC
	ldr r0, [r4]
	ldrb r2, [r4, #7]
	mov r3, #0
	str r3, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #12
	b _080566BA
_080566AC:
	ldr r0, [r4]
	ldrb r2, [r4, #7]
	str r3, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #8
_080566BA:
	mov r3, #64
	bl sub_08071990
	b _080566D2
_080566C2:
	ldr r1, [r2]
	ldr r0, [r4, #12]
	cmp r1, r0
	bne _080566D2
	ldrb r0, [r4, #7]
	mov r1, #0
	bl sub_08071E7C
_080566D2:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080565C0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080566E0
sub_080566E0: @ 0x080566E0
	push {r4,lr}
	add r1, r0, #0
	ldr r0, _08056708  @ =0x03001BE8
	ldr r2, [r0]
	ldr r0, [r1, #4]
	cmp r2, r0
	blt _08056768
	ldr r3, [r1, #8]
	cmp r2, r3
	bgt _08056768
	ldr r1, [r1]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08056718
	cmp r2, r3
	bne _08056710
	ldr r0, _0805670C  @ =gUnknown_030019AC
	b _08056728
	.byte 0x00
	.byte 0x00
_08056708:
	.4byte 0x03001BE8
_0805670C:
	.4byte gUnknown_030019AC
_08056710:
	ldr r0, _08056714  @ =gUnknown_030019AC
	b _08056736
_08056714:
	.4byte gUnknown_030019AC
_08056718:
	mov r4, #1
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, #0
	beq _08056754
	cmp r2, r3
	bne _08056734
	ldr r0, _08056730  @ =0x03001998
_08056728:
	ldr r1, [r0]
	ldr r0, [r1, #16]
	str r0, [r1, #32]
	b _08056768
_08056730:
	.4byte 0x03001998
_08056734:
	ldr r0, _0805674C  @ =0x03001998
_08056736:
	ldr r1, [r0]
	ldr r0, _08056750  @ =gCameraHorizontalOffset
	mov r2, #0
	ldrsh r0, [r0, r2]
	mov r2, #240
	lsl r2, r2, #1
	add r0, r0, r2
	lsl r0, r0, #7
	str r0, [r1, #32]
	b _08056768
	.byte 0x00
	.byte 0x00
_0805674C:
	.4byte 0x03001998
_08056750:
	.4byte gCameraHorizontalOffset
_08056754:
	mov r0, #4
	and r1, r1, r0
	cmp r1, #0
	beq _08056768
	ldr r0, _08056770  @ =0x03001C24
	strb r4, [r0]
	cmp r2, r3
	bne _08056768
	bl sub_08029E14
_08056768:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08056770:
	.4byte 0x03001C24
	THUMB_FUNC_END sub_080566E0

	THUMB_FUNC_START sub_08056774
sub_08056774: @ 0x08056774
	push {r4,r5,lr}
	add r4, r0, #0
	ldr r1, _080568B0  @ =REG_BLDCNT
	mov r0, #255
	strh r0, [r1]
	ldr r0, _080568B4  @ =REG_BLDALPHA
	mov r1, #0
	strh r1, [r0]
	ldr r2, _080568B8  @ =REG_BLDY
	mov r0, #21
	strh r0, [r2]
	mov r5, #128
	lsl r5, r5, #19
	ldrh r2, [r5]
	ldr r0, _080568BC  @ =0x0000F0FF
	and r0, r0, r2
	strh r0, [r5]
	ldr r2, _080568C0  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r2]
	ldr r0, _080568C4  @ =0x03001C30
	strh r1, [r0]
	ldr r0, _080568C8  @ =0x03001C28
	strh r1, [r0]
	ldr r0, _080568CC  @ =0x03001BFC
	strh r1, [r0]
	ldr r0, _080568D0  @ =0x03001C14
	strh r1, [r0]
	ldr r0, _080568D4  @ =0x03001C10
	strh r1, [r0]
	ldr r0, _080568D8  @ =0x03001BF0
	strh r1, [r0]
	ldr r0, _080568DC  @ =0x03001C2C
	strh r1, [r0]
	ldr r0, _080568E0  @ =0x03001BE0
	strh r1, [r0]
	ldr r0, _080568E4  @ =gUnknown_03001C04
	mov r1, #0
	str r1, [r0]
	ldr r0, _080568E8  @ =gUnknown_03001C08
	str r1, [r0]
	ldr r0, _080568EC  @ =gUnknown_03001BE4
	str r1, [r0]
	ldr r0, _080568F0  @ =gUnknown_03001C1C
	str r1, [r0]
	ldr r0, _080568F4  @ =gUnknown_03001BEC
	str r1, [r0]
	ldr r0, _080568F8  @ =gUnknown_03001C20
	str r1, [r0]
	ldr r0, _080568FC  @ =gUnknown_03001C0C
	str r1, [r0]
	ldr r0, _08056900  @ =gUnknown_03001BF4
	str r1, [r0]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	cmp r0, #0
	bne _08056808
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r0, #0
	bne _08056808
	add r0, r4, #0
	add r0, r0, #132
	ldrh r0, [r0]
	cmp r0, #0
	bne _08056808
	add r0, r4, #0
	add r0, r0, #140
	ldrh r0, [r0]
	cmp r0, #0
	bne _08056808
	b _08056904
_08056808:
	add r0, r4, #0
	mov r1, #0
	bl setup_graphics_08032814
	mov r2, #128
	lsl r2, r2, #19
	ldr r1, _080568BC  @ =0x0000F0FF
	and r1, r1, r0
	ldrh r0, [r2]
	orr r1, r1, r0
	strh r1, [r2]
	add r0, r4, #0
	add r0, r0, #116
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805683C
	ldr r0, [r4, #120]
	ldr r0, [r0]
	cmp r0, #0
	bne _0805683C
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #1
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
_0805683C:
	add r0, r4, #0
	add r0, r0, #124
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056862
	add r0, r4, #0
	add r0, r0, #128
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _08056862
	mov r0, #128
	lsl r0, r0, #19
	ldrh r1, [r0]
	mov r3, #128
	lsl r3, r3, #2
	add r2, r3, #0
	orr r1, r1, r2
	strh r1, [r0]
_08056862:
	add r0, r4, #0
	add r0, r0, #132
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056888
	add r0, r4, #0
	add r0, r0, #136
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _08056888
	mov r0, #128
	lsl r0, r0, #19
	ldrh r1, [r0]
	mov r3, #128
	lsl r3, r3, #3
	add r2, r3, #0
	orr r1, r1, r2
	strh r1, [r0]
_08056888:
	add r0, r4, #0
	add r0, r0, #140
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056912
	add r0, r4, #0
	add r0, r0, #144
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _08056912
	mov r0, #128
	lsl r0, r0, #19
	ldrh r1, [r0]
	mov r3, #128
	lsl r3, r3, #4
	add r2, r3, #0
	orr r1, r1, r2
	strh r1, [r0]
	b _08056912
_080568B0:
	.4byte REG_BLDCNT
_080568B4:
	.4byte REG_BLDALPHA
_080568B8:
	.4byte REG_BLDY
_080568BC:
	.4byte 0x0000F0FF
_080568C0:
	.4byte gUnknown_030009EC
_080568C4:
	.4byte 0x03001C30
_080568C8:
	.4byte 0x03001C28
_080568CC:
	.4byte 0x03001BFC
_080568D0:
	.4byte 0x03001C14
_080568D4:
	.4byte 0x03001C10
_080568D8:
	.4byte 0x03001BF0
_080568DC:
	.4byte 0x03001C2C
_080568E0:
	.4byte 0x03001BE0
_080568E4:
	.4byte gUnknown_03001C04
_080568E8:
	.4byte gUnknown_03001C08
_080568EC:
	.4byte gUnknown_03001BE4
_080568F0:
	.4byte gUnknown_03001C1C
_080568F4:
	.4byte gUnknown_03001BEC
_080568F8:
	.4byte gUnknown_03001C20
_080568FC:
	.4byte gUnknown_03001C0C
_08056900:
	.4byte gUnknown_03001BF4
_08056904:
	add r0, r4, #0
	mov r1, #0
	bl setup_graphics_08032814
	ldrh r1, [r5]
	orr r1, r1, r0
	strh r1, [r5]
_08056912:
	ldrh r0, [r4, #52]
	cmp r0, #0
	beq _08056920
	ldr r0, _080569A0  @ =gUnknown_03001C04
	ldr r1, [r4, #56]
	ldr r1, [r1]
	str r1, [r0]
_08056920:
	ldrh r0, [r4, #60]
	cmp r0, #0
	beq _0805692E
	ldr r0, _080569A4  @ =gUnknown_03001C08
	ldr r1, [r4, #64]
	ldr r1, [r1]
	str r1, [r0]
_0805692E:
	add r0, r4, #0
	add r0, r0, #68
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056940
	ldr r0, _080569A8  @ =gUnknown_03001BE4
	ldr r1, [r4, #72]
	ldr r1, [r1]
	str r1, [r0]
_08056940:
	add r0, r4, #0
	add r0, r0, #76
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056952
	ldr r0, _080569AC  @ =gUnknown_03001C1C
	ldr r1, [r4, #80]
	ldr r1, [r1]
	str r1, [r0]
_08056952:
	add r0, r4, #0
	add r0, r0, #84
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056964
	ldr r0, _080569B0  @ =gUnknown_03001BEC
	ldr r1, [r4, #88]
	ldr r1, [r1]
	str r1, [r0]
_08056964:
	add r0, r4, #0
	add r0, r0, #92
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056976
	ldr r0, _080569B4  @ =gUnknown_03001C20
	ldr r1, [r4, #96]
	ldr r1, [r1]
	str r1, [r0]
_08056976:
	add r0, r4, #0
	add r0, r0, #100
	ldrh r0, [r0]
	cmp r0, #0
	beq _08056988
	ldr r0, _080569B8  @ =gUnknown_03001C0C
	ldr r1, [r4, #104]
	ldr r1, [r1]
	str r1, [r0]
_08056988:
	add r0, r4, #0
	add r0, r0, #108
	ldrh r0, [r0]
	cmp r0, #0
	beq _0805699A
	ldr r0, _080569BC  @ =gUnknown_03001BF4
	ldr r1, [r4, #112]
	ldr r1, [r1]
	str r1, [r0]
_0805699A:
	pop {r4,r5}
	pop {r0}
	bx r0
_080569A0:
	.4byte gUnknown_03001C04
_080569A4:
	.4byte gUnknown_03001C08
_080569A8:
	.4byte gUnknown_03001BE4
_080569AC:
	.4byte gUnknown_03001C1C
_080569B0:
	.4byte gUnknown_03001BEC
_080569B4:
	.4byte gUnknown_03001C20
_080569B8:
	.4byte gUnknown_03001C0C
_080569BC:
	.4byte gUnknown_03001BF4
	THUMB_FUNC_END sub_08056774

	THUMB_FUNC_START sub_080569C0
sub_080569C0: @ 0x080569C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	mov r12, r0
	add r0, r0, #116
	ldrh r0, [r0]
	ldr r1, _08056A08  @ =0x03001C30
	mov r9, r1
	ldr r2, _08056A0C  @ =0x03001C28
	mov r10, r2
	cmp r0, #0
	beq _08056A36
	mov r2, #0
	cmp r2, r0
	bcs _08056A36
	mov r6, r12
	ldr r5, [r6, #120]
	ldr r0, _08056A10  @ =0x03001BE8
	ldr r4, [r0]
	mov r3, #128
	lsl r3, r3, #19
	ldr r7, _08056A14  @ =0x0000FEFF
	mov r0, #128
	lsl r0, r0, #1
	add r6, r0, #0
_080569F8:
	lsl r0, r2, #3
	add r1, r0, r5
	ldr r0, [r1]
	cmp r0, r4
	bne _08056A18
	ldrh r0, [r3]
	orr r0, r0, r6
	b _08056A24
_08056A08:
	.4byte 0x03001C30
_08056A0C:
	.4byte 0x03001C28
_08056A10:
	.4byte 0x03001BE8
_08056A14:
	.4byte 0x0000FEFF
_08056A18:
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08056A26
	ldrh r1, [r3]
	add r0, r7, #0
	and r0, r0, r1
_08056A24:
	strh r0, [r3]
_08056A26:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	mov r0, r12
	add r0, r0, #116
	ldrh r0, [r0]
	cmp r2, r0
	bcc _080569F8
_08056A36:
	mov r0, r12
	add r0, r0, #124
	ldrh r1, [r0]
	str r0, [sp, #24]
	mov r5, r12
	add r5, r5, #132
	mov r7, r12
	add r7, r7, #140
	mov r2, r12
	add r2, r2, #68
	str r2, [sp]
	mov r6, r12
	add r6, r6, #76
	str r6, [sp, #4]
	sub r0, r0, #40
	str r0, [sp, #8]
	add r2, r2, #24
	str r2, [sp, #12]
	add r6, r6, #24
	str r6, [sp, #16]
	add r0, r0, #24
	str r0, [sp, #20]
	cmp r1, #0
	beq _08056AB8
	mov r2, #0
	cmp r2, r1
	bcs _08056AB8
	ldr r0, _08056A94  @ =0x03001BE8
	ldr r4, [r0]
	mov r3, #128
	lsl r3, r3, #19
	ldr r1, _08056A98  @ =0x0000FDFF
	mov r8, r1
_08056A78:
	mov r0, r12
	add r0, r0, #128
	ldr r1, [r0]
	lsl r0, r2, #3
	add r1, r0, r1
	ldr r0, [r1]
	cmp r0, r4
	bne _08056A9C
	ldrh r0, [r3]
	mov r6, #128
	lsl r6, r6, #2
	add r1, r6, #0
	orr r0, r0, r1
	b _08056AA8
_08056A94:
	.4byte 0x03001BE8
_08056A98:
	.4byte 0x0000FDFF
_08056A9C:
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08056AAA
	ldrh r1, [r3]
	mov r0, r8
	and r0, r0, r1
_08056AA8:
	strh r0, [r3]
_08056AAA:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, [sp, #24]
	ldrh r0, [r0]
	cmp r2, r0
	bcc _08056A78
_08056AB8:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08056B0E
	mov r2, #0
	cmp r2, r0
	bcs _08056B0E
	ldr r0, _08056AEC  @ =0x03001BE8
	ldr r4, [r0]
	mov r3, #128
	lsl r3, r3, #19
	ldr r1, _08056AF0  @ =0x0000FBFF
	mov r8, r1
_08056AD0:
	mov r0, r12
	add r0, r0, #136
	ldr r1, [r0]
	lsl r0, r2, #3
	add r1, r0, r1
	ldr r0, [r1]
	cmp r0, r4
	bne _08056AF4
	ldrh r0, [r3]
	mov r6, #128
	lsl r6, r6, #3
	add r1, r6, #0
	orr r0, r0, r1
	b _08056B00
_08056AEC:
	.4byte 0x03001BE8
_08056AF0:
	.4byte 0x0000FBFF
_08056AF4:
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08056B02
	ldrh r1, [r3]
	mov r0, r8
	and r0, r0, r1
_08056B00:
	strh r0, [r3]
_08056B02:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldrh r0, [r5]
	cmp r2, r0
	bcc _08056AD0
_08056B0E:
	ldrh r0, [r7]
	cmp r0, #0
	beq _08056B62
	mov r2, #0
	cmp r2, r0
	bcs _08056B62
	ldr r0, _08056B40  @ =0x03001BE8
	ldr r4, [r0]
	mov r3, #128
	lsl r3, r3, #19
	ldr r5, _08056B44  @ =0x0000F7FF
_08056B24:
	mov r0, r12
	add r0, r0, #144
	ldr r1, [r0]
	lsl r0, r2, #3
	add r1, r0, r1
	ldr r0, [r1]
	cmp r0, r4
	bne _08056B48
	ldrh r0, [r3]
	mov r6, #128
	lsl r6, r6, #4
	add r1, r6, #0
	orr r0, r0, r1
	b _08056B54
_08056B40:
	.4byte 0x03001BE8
_08056B44:
	.4byte 0x0000F7FF
_08056B48:
	ldr r0, [r1, #4]
	cmp r0, r4
	bne _08056B56
	ldrh r1, [r3]
	add r0, r5, #0
	and r0, r0, r1
_08056B54:
	strh r0, [r3]
_08056B56:
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldrh r0, [r7]
	cmp r2, r0
	bcc _08056B24
_08056B62:
	mov r1, r9
	ldrh r0, [r1]
	mov r2, r12
	ldrh r2, [r2, #60]
	mov r8, r2
	mov r6, r12
	ldrh r6, [r6, #52]
	cmp r0, r6
	bcs _08056BEE
	add r2, r0, #0
	mov r0, r12
	ldr r4, [r0, #56]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056BD8  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056BB8
	mov r1, r12
	ldrh r0, [r1, #52]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056BB8
	mov r3, r9
	add r5, r0, #0
_08056B9C:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056BB8
	cmp r2, r5
	blt _08056B9C
_08056BB8:
	mov r2, r9
	ldrh r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056BD8  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056BE0
	ldr r1, _08056BDC  @ =gUnknown_03001C04
	ldr r0, [r2]
	str r0, [r1]
	b _08056BEE
	.byte 0x00
	.byte 0x00
_08056BD8:
	.4byte 0x03001BE8
_08056BDC:
	.4byte gUnknown_03001C04
_08056BE0:
	cmp r1, r0
	bge _08056BEE
	ldr r0, _08056C60  @ =gUnknown_03001C04
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056BEE:
	mov r0, r10
	ldrh r1, [r0]
	mov r2, r8
	lsl r0, r2, #16
	lsr r0, r0, #16
	cmp r1, r0
	bcs _08056C7A
	mov r6, r10
	ldrh r2, [r6]
	mov r0, r12
	ldr r4, [r0, #64]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056C64  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056C42
	mov r1, r12
	ldrh r0, [r1, #60]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056C42
	mov r3, r10
	add r5, r0, #0
_08056C26:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056C42
	cmp r2, r5
	blt _08056C26
_08056C42:
	mov r2, r10
	ldrh r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056C64  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056C6C
	ldr r1, _08056C68  @ =gUnknown_03001C08
	ldr r0, [r2]
	str r0, [r1]
	b _08056C7A
_08056C60:
	.4byte gUnknown_03001C04
_08056C64:
	.4byte 0x03001BE8
_08056C68:
	.4byte gUnknown_03001C08
_08056C6C:
	cmp r1, r0
	bge _08056C7A
	ldr r0, _08056CE8  @ =gUnknown_03001C08
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056C7A:
	ldr r5, [sp]
	ldr r1, _08056CEC  @ =0x03001BFC
	ldrh r0, [r1]
	ldrh r2, [r5]
	cmp r0, r2
	bcs _08056D06
	add r2, r0, #0
	mov r6, r12
	ldr r4, [r6, #72]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056CF0  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056CCA
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056CCA
	ldr r3, _08056CEC  @ =0x03001BFC
_08056CAA:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056CCA
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _08056CAA
_08056CCA:
	ldr r0, _08056CEC  @ =0x03001BFC
	ldrh r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056CF0  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056CF8
	ldr r1, _08056CF4  @ =gUnknown_03001BE4
	ldr r0, [r2]
	str r0, [r1]
	b _08056D06
_08056CE8:
	.4byte gUnknown_03001C08
_08056CEC:
	.4byte 0x03001BFC
_08056CF0:
	.4byte 0x03001BE8
_08056CF4:
	.4byte gUnknown_03001BE4
_08056CF8:
	cmp r1, r0
	bge _08056D06
	ldr r0, _08056D74  @ =gUnknown_03001BE4
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056D06:
	ldr r5, [sp, #4]
	ldr r1, _08056D78  @ =0x03001C14
	ldrh r0, [r1]
	ldrh r2, [r5]
	cmp r0, r2
	bcs _08056D92
	add r2, r0, #0
	mov r6, r12
	ldr r4, [r6, #80]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056D7C  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056D56
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056D56
	ldr r3, _08056D78  @ =0x03001C14
_08056D36:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056D56
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _08056D36
_08056D56:
	ldr r0, _08056D78  @ =0x03001C14
	ldrh r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056D7C  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056D84
	ldr r1, _08056D80  @ =gUnknown_03001C1C
	ldr r0, [r2]
	str r0, [r1]
	b _08056D92
_08056D74:
	.4byte gUnknown_03001BE4
_08056D78:
	.4byte 0x03001C14
_08056D7C:
	.4byte 0x03001BE8
_08056D80:
	.4byte gUnknown_03001C1C
_08056D84:
	cmp r1, r0
	bge _08056D92
	ldr r0, _08056E00  @ =gUnknown_03001C1C
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056D92:
	ldr r5, [sp, #8]
	ldr r1, _08056E04  @ =0x03001C10
	ldrh r0, [r1]
	ldrh r2, [r5]
	cmp r0, r2
	bcs _08056E1E
	add r2, r0, #0
	mov r6, r12
	ldr r4, [r6, #88]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056E08  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056DE2
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056DE2
	ldr r3, _08056E04  @ =0x03001C10
_08056DC2:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056DE2
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _08056DC2
_08056DE2:
	ldr r0, _08056E04  @ =0x03001C10
	ldrh r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056E08  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056E10
	ldr r1, _08056E0C  @ =gUnknown_03001BEC
	ldr r0, [r2]
	str r0, [r1]
	b _08056E1E
_08056E00:
	.4byte gUnknown_03001C1C
_08056E04:
	.4byte 0x03001C10
_08056E08:
	.4byte 0x03001BE8
_08056E0C:
	.4byte gUnknown_03001BEC
_08056E10:
	cmp r1, r0
	bge _08056E1E
	ldr r0, _08056E8C  @ =gUnknown_03001BEC
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056E1E:
	ldr r5, [sp, #12]
	ldr r1, _08056E90  @ =0x03001BF0
	ldrh r0, [r1]
	ldrh r2, [r5]
	cmp r0, r2
	bcs _08056EAA
	add r2, r0, #0
	mov r6, r12
	ldr r4, [r6, #96]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056E94  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056E6E
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056E6E
	ldr r3, _08056E90  @ =0x03001BF0
_08056E4E:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056E6E
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _08056E4E
_08056E6E:
	ldr r0, _08056E90  @ =0x03001BF0
	ldrh r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056E94  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056E9C
	ldr r1, _08056E98  @ =gUnknown_03001C20
	ldr r0, [r2]
	str r0, [r1]
	b _08056EAA
_08056E8C:
	.4byte gUnknown_03001BEC
_08056E90:
	.4byte 0x03001BF0
_08056E94:
	.4byte 0x03001BE8
_08056E98:
	.4byte gUnknown_03001C20
_08056E9C:
	cmp r1, r0
	bge _08056EAA
	ldr r0, _08056F18  @ =gUnknown_03001C20
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056EAA:
	ldr r5, [sp, #16]
	ldr r1, _08056F1C  @ =0x03001C2C
	ldrh r0, [r1]
	ldrh r2, [r5]
	cmp r0, r2
	bcs _08056F36
	add r2, r0, #0
	mov r6, r12
	ldr r4, [r6, #104]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056F20  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056EFA
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056EFA
	ldr r3, _08056F1C  @ =0x03001C2C
_08056EDA:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056EFA
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _08056EDA
_08056EFA:
	ldr r0, _08056F1C  @ =0x03001C2C
	ldrh r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056F20  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056F28
	ldr r1, _08056F24  @ =gUnknown_03001C0C
	ldr r0, [r2]
	str r0, [r1]
	b _08056F36
_08056F18:
	.4byte gUnknown_03001C20
_08056F1C:
	.4byte 0x03001C2C
_08056F20:
	.4byte 0x03001BE8
_08056F24:
	.4byte gUnknown_03001C0C
_08056F28:
	cmp r1, r0
	bge _08056F36
	ldr r0, _08056FA4  @ =gUnknown_03001C0C
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056F36:
	ldr r5, [sp, #20]
	ldr r1, _08056FA8  @ =0x03001BE0
	ldrh r0, [r1]
	ldrh r2, [r5]
	cmp r0, r2
	bcs _08056FC2
	add r2, r0, #0
	mov r6, r12
	ldr r4, [r6, #112]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r6, _08056FAC  @ =0x03001BE8
	ldr r1, [r0, #8]
	ldr r0, [r6]
	add r7, r4, #0
	cmp r1, r0
	bge _08056F86
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	bge _08056F86
	ldr r3, _08056FA8  @ =0x03001BE0
_08056F66:
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	ldrh r2, [r3]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r1, [r0, #8]
	ldr r0, [r6]
	cmp r1, r0
	bge _08056F86
	ldrh r0, [r5]
	sub r0, r0, #1
	cmp r2, r0
	blt _08056F66
_08056F86:
	ldr r0, _08056FA8  @ =0x03001BE0
	ldrh r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r0, r7
	ldr r6, _08056FAC  @ =0x03001BE8
	ldr r1, [r6]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08056FB4
	ldr r1, _08056FB0  @ =gUnknown_03001BF4
	ldr r0, [r2]
	str r0, [r1]
	b _08056FC2
_08056FA4:
	.4byte gUnknown_03001C0C
_08056FA8:
	.4byte 0x03001BE0
_08056FAC:
	.4byte 0x03001BE8
_08056FB0:
	.4byte gUnknown_03001BF4
_08056FB4:
	cmp r1, r0
	bge _08056FC2
	ldr r0, _08056FD4  @ =gUnknown_03001BF4
	ldr r1, [r0]
	ldr r2, [r2, #4]
	add r1, r1, r2
	str r1, [r0]
_08056FC2:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08056FD4:
	.4byte gUnknown_03001BF4
	THUMB_FUNC_END sub_080569C0

	THUMB_FUNC_START sub_08056FD8
sub_08056FD8: @ 0x08056FD8
	push {r4-r7,lr}
	add r5, r0, #0
	ldr r6, _08057024  @ =0x03001C34
	ldr r7, _08057028  @ =0x03001BE8
	ldr r0, _0805702C  @ =0x03001C00
	mov r12, r0
	ldr r4, _08057030  @ =0x03001C18
	mov r1, #0
	mov r2, #0
	mov r3, #31
_08056FEC:
	ldr r0, [r4]
	add r0, r2, r0
	str r1, [r0]
	str r1, [r0, #4]
	strh r1, [r0, #8]
	strh r1, [r0, #10]
	strh r1, [r0, #12]
	strh r1, [r0, #14]
	strb r1, [r0, #17]
	ldr r0, [r4]
	add r0, r2, r0
	strb r1, [r0, #16]
	add r2, r2, #20
	sub r3, r3, #1
	cmp r3, #0
	bge _08056FEC
	mov r0, #0
	strb r0, [r6]
	str r0, [r7]
	mov r1, r12
	strh r0, [r1]
	ldr r0, [r5, #48]
	bl sub_08056774
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08057024:
	.4byte 0x03001C34
_08057028:
	.4byte 0x03001BE8
_0805702C:
	.4byte 0x03001C00
_08057030:
	.4byte 0x03001C18
	THUMB_FUNC_END sub_08056FD8

	THUMB_FUNC_START sub_08057034
sub_08057034: @ 0x08057034
	push {r4-r7,lr}
	add r5, r0, #0
	mov r4, #0
	b _08057050
_0805703C:
	lsl r1, r4, #2
	add r1, r1, r4
	lsl r1, r1, #4
	ldr r0, [r5, #8]
	add r0, r0, r1
	bl sub_08055FB8
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_08057050:
	ldrh r0, [r5, #4]
	cmp r4, r0
	bcc _0805703C
	mov r4, #0
	b _0805709C
_0805705A:
	lsl r0, r4, #4
	ldr r1, [r5, #16]
	add r2, r0, r1
	ldr r0, _08057074  @ =0x03001BE8
	ldr r1, [r0]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _08057078
	add r0, r2, #0
	bl sub_08056494
	b _08057096
	.byte 0x00
	.byte 0x00
_08057074:
	.4byte 0x03001BE8
_08057078:
	cmp r1, r0
	bhi _08057082
	ldr r0, [r2, #12]
	cmp r1, r0
	bcs _08057096
_08057082:
	ldr r6, _080570A8  @ =0x03001C34
	ldrb r0, [r6]
	cmp r0, #0
	beq _08057096
	bl sub_08033658
	cmp r0, #0
	beq _08057096
	mov r0, #0
	strb r0, [r6]
_08057096:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_0805709C:
	ldrh r0, [r5, #12]
	cmp r4, r0
	bcc _0805705A
	mov r4, #0
	b _080570BC
	.byte 0x00
	.byte 0x00
_080570A8:
	.4byte 0x03001C34
_080570AC:
	lsl r1, r4, #4
	ldr r0, [r5, #24]
	add r0, r0, r1
	bl sub_080565C0
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_080570BC:
	ldrh r0, [r5, #20]
	cmp r4, r0
	bcc _080570AC
	mov r4, #0
	b _080570DA
_080570C6:
	lsl r1, r4, #1
	add r1, r1, r4
	lsl r1, r1, #2
	ldr r0, [r5, #32]
	add r0, r0, r1
	bl sub_080566E0
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_080570DA:
	ldrh r0, [r5, #28]
	cmp r4, r0
	bcc _080570C6
	mov r4, #0
	ldrh r0, [r5, #36]
	ldr r7, _08057140  @ =0x03001BE8
	ldr r6, _08057144  @ =0x03001C00
	ldr r3, [r5, #48]
	cmp r4, r0
	bcs _080570FA
	add r1, r0, #0
_080570F0:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, r1
	bcc _080570F0
_080570FA:
	ldrh r2, [r6]
	mov r4, #156
	add r0, r2, #0
	mul r0, r4, r0
	add r0, r0, r3
	add r0, r0, #152
	ldr r1, [r7]
	ldr r0, [r0]
	cmp r1, r0
	bne _0805714C
	ldrh r0, [r5, #44]
	sub r0, r0, #1
	cmp r2, r0
	bge _0805714C
	add r0, r2, #1
	strh r0, [r6]
	ldrh r0, [r6]
	mul r0, r4, r0
	add r0, r3, r0
	bl sub_08056774
	ldrh r0, [r6]
	ldr r1, [r5, #48]
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #148
	ldrb r0, [r0]
	cmp r0, #3
	bne _0805717C
	bl sub_08029CB0
	ldr r1, _08057148  @ =0x03000DCC
	mov r0, #1
	strb r0, [r1]
	b _0805717C
_08057140:
	.4byte 0x03001BE8
_08057144:
	.4byte 0x03001C00
_08057148:
	.4byte 0x03000DCC
_0805714C:
	ldr r0, [r7]
	cmp r0, #0
	ble _0805717C
	ldr r0, _0805719C  @ =0x03000DCC
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805717C
	ldr r0, _080571A0  @ =REG_BLDY
	strh r1, [r0]
	ldr r3, _080571A4  @ =REG_BLDCNT
	ldr r0, _080571A8  @ =0x03001C00
	ldrh r1, [r0]
	ldr r2, [r5, #48]
	mov r0, #156
	mul r1, r0, r1
	add r1, r1, r2
	add r0, r1, #0
	add r0, r0, #49
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r0, [r0, #48]
	strh r0, [r3]
_0805717C:
	ldr r0, _080571A8  @ =0x03001C00
	ldrh r1, [r0]
	mov r0, #156
	mul r1, r0, r1
	ldr r0, [r5, #48]
	add r0, r0, r1
	bl sub_080569C0
	ldr r1, _080571AC  @ =0x03001BE8
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805719C:
	.4byte 0x03000DCC
_080571A0:
	.4byte REG_BLDY
_080571A4:
	.4byte REG_BLDCNT
_080571A8:
	.4byte 0x03001C00
_080571AC:
	.4byte 0x03001BE8
	THUMB_FUNC_END sub_08057034

	THUMB_FUNC_START sub_080571B0
sub_080571B0: @ 0x080571B0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	mov r9, r0
	mov r8, r1
	add r6, r2, #0
	add r5, r3, #0
	ldr r7, [sp, #32]
	mov r4, #0
	b _080571E6
_080571C8:
	lsl r0, r4, #2
	add r0, r0, r4
	lsl r0, r0, #4
	ldr r1, [r7, #8]
	add r1, r1, r0
	str r1, [sp]
	mov r0, r9
	mov r1, r8
	add r2, r6, #0
	add r3, r5, #0
	bl sub_08055B2C
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_080571E6:
	ldrh r0, [r7, #4]
	cmp r4, r0
	bcc _080571C8
	bl sub_080351E0
	mov r4, #0
	b _08057260
_080571F4:
	lsl r0, r4, #4
	add r0, r0, r4
	lsl r0, r0, #4
	ldr r1, [r7, #40]
	add r0, r0, r1
	mov r12, r0
	mov r0, #128
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r6, [r0]
	mov r0, #129
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r5, [r0]
	ldr r0, _08057244  @ =0x03001BE8
	mov r1, #132
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	blt _0805725A
	mov r0, #134
	lsl r0, r0, #1
	add r0, r0, r12
	ldr r0, [r0]
	cmp r3, r0
	bgt _0805725A
	mov r1, #130
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r1]
	cmp r0, #0
	beq _08057248
	sub r0, r3, r2
	ldrh r1, [r1]
	mul r0, r1, r0
	asr r3, r0, #8
	b _0805724C
	.byte 0x00
	.byte 0x00
_08057244:
	.4byte 0x03001BE8
_08057248:
	mov r3, #1
	neg r3, r3
_0805724C:
	mov r0, #7
	str r0, [sp]
	mov r0, r12
	add r1, r6, #0
	add r2, r5, #0
	bl sub_08034CCC
_0805725A:
	add r0, r4, #1
	lsl r0, r0, #16
	lsr r4, r0, #16
_08057260:
	ldrh r0, [r7, #36]
	cmp r4, r0
	bcc _080571F4
	mov r0, r9
	bl sub_08035108
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080571B0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805727C
sub_0805727C: @ 0x0805727C
	push {r4,lr}
	ldr r4, _08057290  @ =0x03001C18
	mov r0, #160
	lsl r0, r0, #2
	bl arena_allocate
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_08057290:
	.4byte 0x03001C18
	THUMB_FUNC_END sub_0805727C

	THUMB_FUNC_START sub_08057294
sub_08057294: @ 0x08057294
	ldr r1, _080572A4  @ =0x030009F4
	ldr r0, _080572A8  @ =0x080572B5
	str r0, [r1]
	ldr r1, _080572AC  @ =0x030009F8
	ldr r0, _080572B0  @ =0x08057325
	str r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_080572A4:
	.4byte 0x030009F4
_080572A8:
	.4byte sub_080572B4
_080572AC:
	.4byte 0x030009F8
_080572B0:
	.4byte sub_08057324
	THUMB_FUNC_END sub_08057294

	THUMB_FUNC_START sub_080572B4
sub_080572B4: @ 0x080572B4
	bx lr
	THUMB_FUNC_END sub_080572B4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080572B8
sub_080572B8: @ 0x080572B8
	push {r4,lr}
	ldr r4, _080572D8  @ =0x03001BE8
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _080572CC
	ldr r0, _080572DC  @ =0x03000A00
	ldr r0, [r0]
	bl _call_via_r0
_080572CC:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_080572D8:
	.4byte 0x03001BE8
_080572DC:
	.4byte 0x03000A00
	THUMB_FUNC_END sub_080572B8

	THUMB_FUNC_START sub_080572E0
sub_080572E0: @ 0x080572E0
	push {r4,lr}
	add r2, r0, #0
	ldr r0, _080572F8  @ =0x03001BE8
	ldr r1, [r0]
	ldr r0, [r2, #8]
	cmp r1, r0
	bne _080572FC
	add r0, r2, #0
	bl sub_08056494
	b _0805731A
	.byte 0x00
	.byte 0x00
_080572F8:
	.4byte 0x03001BE8
_080572FC:
	cmp r1, r0
	bhi _08057306
	ldr r0, [r2, #12]
	cmp r1, r0
	bcs _0805731A
_08057306:
	ldr r4, _08057320  @ =0x03001C34
	ldrb r0, [r4]
	cmp r0, #0
	beq _0805731A
	bl sub_08033658
	cmp r0, #0
	beq _0805731A
	mov r0, #0
	strb r0, [r4]
_0805731A:
	pop {r4}
	pop {r0}
	bx r0
_08057320:
	.4byte 0x03001C34
	THUMB_FUNC_END sub_080572E0

	THUMB_FUNC_START sub_08057324
sub_08057324: @ 0x08057324
	bx lr
	THUMB_FUNC_END sub_08057324

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08057328
sub_08057328: @ 0x08057328
	bx lr
	THUMB_FUNC_END sub_08057328

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805732C
sub_0805732C: @ 0x0805732C
	bx lr
	THUMB_FUNC_END sub_0805732C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08057330
sub_08057330: @ 0x08057330
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, [sp, #16]
	mov r12, r0
	mov r0, #128
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r5, [r0]
	mov r0, #129
	lsl r0, r0, #1
	add r0, r0, r12
	ldrb r4, [r0]
	ldr r0, _0805737C  @ =0x03001BE8
	mov r1, #132
	lsl r1, r1, #1
	add r1, r1, r12
	ldr r3, [r0]
	ldr r2, [r1]
	cmp r3, r2
	blt _08057392
	mov r0, #134
	lsl r0, r0, #1
	add r0, r0, r12
	ldr r0, [r0]
	cmp r3, r0
	bgt _08057392
	mov r1, #130
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r1]
	cmp r0, #0
	beq _08057380
	sub r0, r3, r2
	ldrh r1, [r1]
	mul r0, r1, r0
	asr r3, r0, #8
	b _08057384
	.byte 0x00
	.byte 0x00
_0805737C:
	.4byte 0x03001BE8
_08057380:
	mov r3, #1
	neg r3, r3
_08057384:
	mov r0, #7
	str r0, [sp]
	mov r0, r12
	add r1, r5, #0
	add r2, r4, #0
	bl sub_08034CCC
_08057392:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08057330

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0805739C
sub_0805739C: @ 0x0805739C
	push {r4-r6,lr}
	add r4, r0, #0
	ldr r5, _080573E0  @ =0x03001BF8
	ldrh r0, [r5]
	mov r6, #52
	add r1, r0, #0
	mul r1, r6, r1
	ldr r0, [r4, #4]
	add r0, r0, r1
	bl sub_08057034
	ldr r1, _080573E4  @ =0x03001BE8
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
	ldr r0, _080573E8  @ =0x03000A00
	ldr r0, [r0]
	bl _call_via_r0
	b _080573F6
_080573E0:
	.4byte 0x03001BF8
_080573E4:
	.4byte 0x03001BE8
_080573E8:
	.4byte 0x03000A00
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
	ldr r4, _0805741C  @ =0x03001BF8
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
	.4byte 0x03001BF8
	THUMB_FUNC_END sub_080573FC

	THUMB_FUNC_START sub_08057420
sub_08057420: @ 0x08057420
	push {lr}
	ldr r2, _0805743C  @ =0x03001BF8
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
	.4byte 0x03001BF8
	THUMB_FUNC_END sub_08057420

	THUMB_FUNC_START sub_08057440
sub_08057440: @ 0x08057440
	ldr r1, _08057448  @ =0x03001C18
	mov r0, #0
	str r0, [r1]
	bx lr
_08057448:
	.4byte 0x03001C18
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
	ldr r0, _08057480  @ =gLevelType
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
	.4byte gLevelType
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
	ldr r0, _080575C4  @ =gUnknown_03001C48
	mov r5, #0
	strh r5, [r0]
	ldr r0, _080575C8  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C48
_080575C8:
	.4byte gUnknown_03001C40
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
	ldr r1, _08057674  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08057708  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_0805770C:
	.4byte 0x030003C8
_08057710:
	ldr r2, _08057730  @ =0x030003E4
	ldr r0, _08057734  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r0, _080578AC  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08057988  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r0, _080579F0  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #2
	beq _08057A1E
	mov r0, #2
	bl sub_08058350
	b _08057A1E
_080579F0:
	.4byte gCurrentSwitchState
_080579F4:
	cmp r0, #7
	bne _08057A0C
	ldr r0, _08057A08  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #3
	beq _08057A1E
	mov r0, #3
	bl sub_08058350
	b _08057A1E
_08057A08:
	.4byte gCurrentSwitchState
_08057A0C:
	cmp r0, #6
	bne _08057A1E
	ldr r0, _08057A24  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
_08057DE8:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _08057E02
	ldr r1, _08057E44  @ =gUnknown_03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _08057E48  @ =gUnknown_03001C48
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
	ldr r1, _08057E44  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
_08057E48:
	.4byte gUnknown_03001C48
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
	ldr r1, _08057EB8  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	ldr r2, _08057F90  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r2, _08058024  @ =gCurrentEnemyScore
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
	.4byte gCurrentEnemyScore
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
	ldr r0, _08058054  @ =gLevelType
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
	.4byte gLevelType
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
	ldr r0, _080580AC  @ =gLevelType
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
	.4byte gLevelType
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
	ldr r0, _08058104  @ =gLevelType
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
	.4byte gLevelType
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
	bl sub_08071990
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
	ldr r0, _08058294  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
_08058298:
	.4byte 0x030003C0
_0805829C:
	mov r0, #4
	ldrsb r0, [r4, r0]
	ldrb r1, [r4, #4]
	cmp r0, #6
	bne _080582B8
	ldr r0, _080582B4  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #1
	bne _080582B8
	add r3, r5, #0
	b _08058278
	.byte 0x00
	.byte 0x00
_080582B4:
	.4byte gCurrentSwitchState
_080582B8:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #7
	bne _080582EC
	ldr r0, _080582E0  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r2, _080583E8  @ =gPreviousSwitchState
	ldr r0, _080583EC  @ =gCurrentSwitchState
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
	bl sub_08071990
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
	.4byte gPreviousSwitchState
_080583EC:
	.4byte gCurrentSwitchState
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
	ldr r4, _0805844C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _080584B4  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
_080584B8:
	.4byte 0xFFFFFF00
	THUMB_FUNC_END sub_080583F4

	THUMB_FUNC_START falling_brick_spawn
falling_brick_spawn: @ 0x080584BC
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
	ldr r0, _080585F8  @ =gNextLevelInLevelTable
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
	.4byte gNextLevelInLevelTable
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
	THUMB_FUNC_END falling_brick_spawn

	THUMB_FUNC_START falling_dumbell_spawn
falling_dumbell_spawn: @ 0x08058610
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
	ldr r0, _0805874C  @ =gNextLevelInLevelTable
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
	.4byte gNextLevelInLevelTable
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
	THUMB_FUNC_END falling_dumbell_spawn

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
	ldr r0, _080588A0  @ =gNextLevelInLevelTable
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
	.4byte gNextLevelInLevelTable
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
	ldr r0, _08058970  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_08058974:
	add r0, r2, #0
	add r0, r0, #10
	cmp r0, r1
	bne _0805898C
	mov r0, #10
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0805898C
	ldr r0, _08058994  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r0, [r0, #32]
	str r0, [r4, #32]
_0805898C:
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
_08058994:
	.4byte gUnknown_030019AC
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
	ldr r3, _08058A80  @ =gUnknown_030019AC
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
	ldr r1, _08058A84  @ =gUnknown_03001940
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
	ldr r2, _08058A88  @ =gCurrentEnemyScore
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
	.4byte gUnknown_030019AC
_08058A84:
	.4byte gUnknown_03001940
_08058A88:
	.4byte gCurrentEnemyScore
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
	ldr r0, _08058C70  @ =gNextLevelInLevelTable
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
	.4byte gNextLevelInLevelTable
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
	ldr r0, _08058D20  @ =gUnknown_030019AC
	ldr r3, [r0]
	ldr r0, [r3, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08058D0E
	ldr r2, _08058D24  @ =gUnknown_03001940
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
	.4byte gUnknown_030019AC
_08058D24:
	.4byte gUnknown_03001940
_08058D28:
	.4byte 0x03001C7C
_08058D2C:
	.4byte 0x03001978
	THUMB_FUNC_END sub_08058998

	THUMB_FUNC_START boss_1_player
boss_1_player: @ 0x08058D30
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
	ldr r6, _08058F98  @ =REG_DMA3SAD
	ldr r0, _08058F9C  @ =gUnknown_08657324
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08058FA0  @ =gOamData
	mov r12, r1
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r2, _08058FA4  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldr r3, _08058FA8  @ =gUnknown_086573AC
	str r3, [r6]
	ldrh r0, [r4]
	ldr r1, _08058FAC  @ =OBJ_VRAM0
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
	ldr r1, _08058FB8  @ =gCameraHorizontalOffset
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
	ldr r3, _08058FCC  @ =gCameraVerticalOffset
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
	ldr r3, _08058FAC  @ =OBJ_VRAM0
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
	ldr r3, _08058FB8  @ =gCameraHorizontalOffset
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
	ldr r3, _08058FCC  @ =gCameraVerticalOffset
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
	ldr r3, _08058FAC  @ =OBJ_VRAM0
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
	ldr r3, _08058FB8  @ =gCameraHorizontalOffset
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
	ldr r3, _08058FCC  @ =gCameraVerticalOffset
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
	.4byte REG_DMA3SAD
_08058F9C:
	.4byte gUnknown_08657324
_08058FA0:
	.4byte gOamData
_08058FA4:
	.4byte 0x84000002
_08058FA8:
	.4byte gUnknown_086573AC
_08058FAC:
	.4byte OBJ_VRAM0
_08058FB0:
	.4byte 0x000003FF
_08058FB4:
	.4byte 0xFFFFFC00
_08058FB8:
	.4byte gCameraHorizontalOffset
_08058FBC:
	.4byte 0x030003E8
_08058FC0:
	.4byte 0x000001FF
_08058FC4:
	.4byte 0xFFFFFE00
_08058FC8:
	.4byte 0x030003EC
_08058FCC:
	.4byte gCameraVerticalOffset
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
	ldr r2, _080590C4  @ =OBJ_VRAM0
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
	ldr r2, _080590D8  @ =gCameraHorizontalOffset
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
	ldr r0, _080590E4  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r3, _080590E8  @ =gCameraVerticalOffset
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
	.4byte OBJ_VRAM0
_080590C8:
	.4byte 0x84000100
_080590CC:
	.4byte 0x000003FF
_080590D0:
	.4byte 0xFFFFFC00
_080590D4:
	.4byte 0x030003E4
_080590D8:
	.4byte gCameraHorizontalOffset
_080590DC:
	.4byte 0x000001FF
_080590E0:
	.4byte 0xFFFFFE00
_080590E4:
	.4byte gUnknown_030019AC
_080590E8:
	.4byte gCameraVerticalOffset
	THUMB_FUNC_END boss_1_player

	THUMB_FUNC_START sub_080590EC
sub_080590EC: @ 0x080590EC
	push {r4,lr}
	add r3, r0, #0
	add r4, r3, #0
	ldr r1, _0805913C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _08059198  @ =gUnknown_03001940
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
	bl sub_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08059198:
	.4byte gUnknown_03001940
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
	THUMB_FUNC_START fall_objects_hit
fall_objects_hit: @ 0x080593B4
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
	THUMB_FUNC_END fall_objects_hit

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
	ldr r0, _0805947C  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r0, _08059608  @ =gUnknown_03001C48
	strh r5, [r0]
	ldr r0, _0805960C  @ =gUnknown_03001C40
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
	ldr r0, _0805962C  @ =gUnknown_03001C80
	strb r5, [r0]
	ldr r0, _08059630  @ =gUnknown_03001C84
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
	.4byte gUnknown_03001C48
_0805960C:
	.4byte gUnknown_03001C40
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
	.4byte gUnknown_03001C80
_08059630:
	.4byte gUnknown_03001C84
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
	ldr r0, _080596AC  @ =gUnknown_030019AC
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
	ldr r1, _080596B4  @ =gLevelTimerOnOffFlag
	mov r0, #0
	strb r0, [r1]
	b _080596C6
_080596A8:
	.4byte gUnknown_03001C78
_080596AC:
	.4byte gUnknown_030019AC
_080596B0:
	.4byte 0x03000444
_080596B4:
	.4byte gLevelTimerOnOffFlag
_080596B8:
	ldr r0, _080596DC  @ =0x03000444
	mov r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _08059702
	ldr r0, _080596E0  @ =gLevelTimerOnOffFlag
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
	.4byte gLevelTimerOnOffFlag
_080596E4:
	.4byte 0x03000434
_080596E8:
	ldr r1, _08059708  @ =gLevelTimerOnOffFlag
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
	.4byte gLevelTimerOnOffFlag
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
	ldr r1, _08059964  @ =gUnknown_03001C80
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
	.4byte gUnknown_03001C80
	THUMB_FUNC_END sub_08059710

	THUMB_FUNC_START sub_08059968
sub_08059968: @ 0x08059968
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r4, #0
	ldr r1, _080599FC  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _08059B68  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08059BD0  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_08059BD4:
	.4byte 0x0300042E
_08059BD8:
	ldr r2, _08059BF8  @ =0x03000448
	ldr r0, _08059BFC  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r0, _08059D74  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08059E54  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r0, _08059ED4  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08059FA0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r1, _0805A288  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
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
	ldr r1, _0805A2FC  @ =gCurrentLevelWidth
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
	.4byte gCurrentLevelWidth
_0805A300:
	.4byte gUnknown_03001938
	THUMB_FUNC_END sub_0805A184

	THUMB_FUNC_START sub_0805A304
sub_0805A304: @ 0x0805A304
	push {r4,r5,lr}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r0, _0805A360  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	ldr r2, _0805A410  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r2, _0805A568  @ =gCurrentEnemyScore
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
	.4byte gCurrentEnemyScore
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
	ldr r4, _0805A6F0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _0805A758  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r4, _0805A7E0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _0805A870  @ =gUnknown_030019AC
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
	ldr r0, _0805A870  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805AC20  @ =gCurrentLevelWidth
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
	.4byte gCurrentLevelWidth
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
	ldr r0, _0805ACB8  @ =gCurrentLevelWidth
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
	.4byte gCurrentLevelWidth
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
	ldr r0, _0805ADD0  @ =gUnknown_030019AC
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
	ldr r0, _0805ADD0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r2, _0805AE7C  @ =gUnknown_03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r2]
	add r5, r0, r1
	ldr r0, _0805AE80  @ =gUnknown_030019AC
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
	ldr r0, _0805AE80  @ =gUnknown_030019AC
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
	.4byte gUnknown_03001940
_0805AE80:
	.4byte gUnknown_030019AC
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

	THUMB_FUNC_START boss_2_player
boss_2_player: @ 0x0805B108
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
	ldr r2, _0805B14C  @ =REG_DMA3SAD
	ldr r0, _0805B150  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805B154  @ =gOamData
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
	.4byte REG_DMA3SAD
_0805B150:
	.4byte gUnknown_0854337C
_0805B154:
	.4byte gOamData
_0805B158:
	.4byte 0x84000002
_0805B15C:
	.4byte 0x03000440
_0805B160:
	.4byte gUnknown_08543384
_0805B164:
	cmp r0, #2
	bne _0805B22E
	ldr r2, _0805B234  @ =REG_DMA3SAD
	ldr r0, _0805B238  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805B23C  @ =gOamData
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
	ldr r1, _0805B24C  @ =OBJ_VRAM0
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
	ldr r0, _0805B260  @ =gCameraHorizontalOffset
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
	ldr r0, _0805B26C  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _0805B270  @ =gCameraVerticalOffset
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
	.4byte REG_DMA3SAD
_0805B238:
	.4byte gUnknown_0851F560
_0805B23C:
	.4byte gOamData
_0805B240:
	.4byte 0x84000002
_0805B244:
	.4byte 0x03000440
_0805B248:
	.4byte gUnknown_0851F568
_0805B24C:
	.4byte OBJ_VRAM0
_0805B250:
	.4byte 0x84000100
_0805B254:
	.4byte 0x000003FF
_0805B258:
	.4byte 0xFFFFFC00
_0805B25C:
	.4byte 0x03000448
_0805B260:
	.4byte gCameraHorizontalOffset
_0805B264:
	.4byte 0x000001FF
_0805B268:
	.4byte 0xFFFFFE00
_0805B26C:
	.4byte gUnknown_030019AC
_0805B270:
	.4byte gCameraVerticalOffset
	THUMB_FUNC_END boss_2_player

	THUMB_FUNC_START sub_0805B274
sub_0805B274: @ 0x0805B274
	push {lr}
	ldr r0, _0805B294  @ =0x0300043A
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0805B298  @ =0x03000452
	strh r1, [r0]
	ldr r0, _0805B29C  @ =gLevelType
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
	.4byte gLevelType
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
	THUMB_FUNC_START world_2_dk_spawn
world_2_dk_spawn: @ 0x0805B308
	push {r4,lr}
	sub sp, sp, #12
	ldr r1, _0805B354  @ =gUnknown_03001940
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
	bl sub_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805B354:
	.4byte gUnknown_03001940
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
	THUMB_FUNC_END world_2_dk_spawn

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
	ldr r3, _0805B614  @ =gUnknown_030019E8
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
	.4byte gUnknown_030019E8
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
	ldr r0, _0805B6FC  @ =gUnknown_030019E8
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
	.4byte gUnknown_030019E8
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
	ldr r0, _0805B7FC  @ =gNextLevelInLevelTable
	mov r1, #18
	ldrsh r0, [r0, r1]
	mov r2, r8
	add r3, r7, r2
	mov r2, #0
	ldrsb r2, [r3, r2]
	ldr r0, _0805B800  @ =gUnknown_03001940
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
	.4byte gNextLevelInLevelTable
_0805B800:
	.4byte gUnknown_03001940
_0805B804:
	add r0, r7, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldr r0, _0805B824  @ =gUnknown_030019E8
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
	.4byte gUnknown_030019E8
	THUMB_FUNC_END sub_0805B674

	THUMB_FUNC_START sub_0805B828
sub_0805B828: @ 0x0805B828
	push {r4-r6,lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r2, r2, #24
	ldr r1, _0805B85C  @ =0x030004A8
	ldr r3, _0805B860  @ =gUnknown_030019B0
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
	.4byte gUnknown_030019B0
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
	ldr r0, _0805B950  @ =gUnknown_030019B0
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
	ldr r0, _0805B964  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019B0
_0805B954:
	.4byte 0x030004A8
_0805B958:
	.4byte 0x030004D0
_0805B95C:
	.4byte gUnknown_03001A1C
_0805B960:
	.4byte 0x030004B4
_0805B964:
	.4byte gUnknown_030019AC
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
	ldr r0, _0805BA04  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805BA5C  @ =gUnknown_030019B0
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
	.4byte gUnknown_030019B0
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
	ldr r0, _0805BBA4  @ =gUnknown_03001C48
	mov r5, #0
	strh r5, [r0]
	ldr r1, _0805BBA8  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C48
_0805BBA8:
	.4byte gUnknown_03001C40
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
	ldr r1, _0805BC64  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805BCFC  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_0805BD00:
	.4byte 0x030004E8
_0805BD04:
	ldr r2, _0805BD24  @ =0x030004F8
	ldr r0, _0805BD28  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r0, _0805BEA0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805BF7C  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
_0805C6AC:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _0805C6C6
	ldr r1, _0805C708  @ =gUnknown_03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _0805C70C  @ =gUnknown_03001C48
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
	ldr r1, _0805C708  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
_0805C70C:
	.4byte gUnknown_03001C48
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
	ldr r1, _0805C77C  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	ldr r2, _0805C850  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r2, _0805C8E8  @ =gCurrentEnemyScore
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
	.4byte gCurrentEnemyScore
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
	bl sub_08071990
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
	ldr r4, _0805CA64  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _0805CACC  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805D01C  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_0805D020:
	.4byte gUnknown_030012E4
_0805D024:
	ldr r2, [r6, #76]
	cmp r2, #0
	beq _0805D02C
	b _0805D220
_0805D02C:
	ldr r0, _0805D04C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _0805D174  @ =gUnknown_03001940
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
	ldr r2, _0805D178  @ =gCurrentEnemyScore
	ldrb r0, [r7]
	ldr r1, [r5]
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r1, [r2]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805D17C  @ =gUnknown_030019AC
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
	.4byte gUnknown_03001940
_0805D178:
	.4byte gCurrentEnemyScore
_0805D17C:
	.4byte gUnknown_030019AC
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
	ldr r0, _0805D238  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805D360  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805D494  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805D624  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
	THUMB_FUNC_END sub_0805D428

	THUMB_FUNC_START sub_0805D628
sub_0805D628: @ 0x0805D628
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #48
	add r6, r0, #0
	ldr r0, _0805D660  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_0805D664:
	.4byte gUnknown_030012E4
_0805D668:
	ldr r2, [r6, #76]
	cmp r2, #0
	beq _0805D670
	b _0805D8C4
_0805D670:
	ldr r0, _0805D690  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _0805D818  @ =gUnknown_03001940
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
	ldr r2, _0805D81C  @ =gCurrentEnemyScore
	ldrb r0, [r7]
	ldr r1, [r5]
	mul r0, r4, r0
	add r0, r0, r1
	add r0, r0, #172
	ldr r1, [r2]
	ldr r0, [r0]
	add r1, r1, r0
	str r1, [r2]
	ldr r0, _0805D820  @ =gUnknown_030019AC
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
	.4byte gUnknown_03001940
_0805D81C:
	.4byte gCurrentEnemyScore
_0805D820:
	.4byte gUnknown_030019AC
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
	ldr r0, _0805D8DC  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805DA04  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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

	THUMB_FUNC_START boss_3_player
boss_3_player: @ 0x0805DB44
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
	ldr r2, _0805DB9C  @ =REG_DMA3SAD
	ldr r0, _0805DBA0  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805DBA4  @ =gOamData
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
	.4byte REG_DMA3SAD
_0805DBA0:
	.4byte gUnknown_0854337C
_0805DBA4:
	.4byte gOamData
_0805DBA8:
	.4byte 0x84000002
_0805DBAC:
	.4byte 0x030004F0
_0805DBB0:
	.4byte gUnknown_08543384
_0805DBB4:
	cmp r0, #2
	bne _0805DC7E
	ldr r2, _0805DC84  @ =REG_DMA3SAD
	ldr r0, _0805DC88  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0805DC8C  @ =gOamData
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
	ldr r1, _0805DC9C  @ =OBJ_VRAM0
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
	ldr r0, _0805DCB0  @ =gCameraHorizontalOffset
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
	ldr r0, _0805DCBC  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _0805DCC0  @ =gCameraVerticalOffset
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
	.4byte REG_DMA3SAD
_0805DC88:
	.4byte gUnknown_0851F560
_0805DC8C:
	.4byte gOamData
_0805DC90:
	.4byte 0x84000002
_0805DC94:
	.4byte 0x030004F0
_0805DC98:
	.4byte gUnknown_0851F568
_0805DC9C:
	.4byte OBJ_VRAM0
_0805DCA0:
	.4byte 0x84000100
_0805DCA4:
	.4byte 0x000003FF
_0805DCA8:
	.4byte 0xFFFFFC00
_0805DCAC:
	.4byte 0x030004F8
_0805DCB0:
	.4byte gCameraHorizontalOffset
_0805DCB4:
	.4byte 0x000001FF
_0805DCB8:
	.4byte 0xFFFFFE00
_0805DCBC:
	.4byte gUnknown_030019AC
_0805DCC0:
	.4byte gCameraVerticalOffset
	THUMB_FUNC_END boss_3_player

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
	ldr r1, _0805DD80  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _0805DDE0  @ =gUnknown_03001940
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
	bl sub_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0805DDE0:
	.4byte gUnknown_03001940
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
	ldr r6, _0805E10C  @ =REG_DMA3SAD
	ldr r7, _0805E110  @ =gOamData
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
	.4byte REG_DMA3SAD
_0805E110:
	.4byte gOamData
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
	ldr r1, _0805E1E0  @ =OBJ_VRAM0
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
	.4byte OBJ_VRAM0
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
	ldr r1, _0805E230  @ =OBJ_VRAM0
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
	.4byte OBJ_VRAM0
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
	ldr r1, _0805E33C  @ =OBJ_VRAM0
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
	.4byte OBJ_VRAM0
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
	ldr r3, _0805E4D4  @ =gUnknown_03001C48
	strh r1, [r3]
	ldr r6, _0805E4D8  @ =gLevelType
	mov r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _0805E4E0
	mov r0, #64
	ldr r1, _0805E4DC  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C48
_0805E4D8:
	.4byte gLevelType
_0805E4DC:
	.4byte gUnknown_03001C40
_0805E4E0:
	mov r0, #56
	ldr r3, _0805E5F4  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
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
	ldr r1, _0805E6B0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805E79C  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_0805E7A0:
	.4byte 0x030005E8
_0805E7A4:
	ldr r2, _0805E7C4  @ =0x030005F4
	ldr r0, _0805E7C8  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r0, _0805E940  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805EA1C  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r0, _0805EA88  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805EAB4  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805EAE0  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
_0805ED94:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _0805EDAE
	ldr r1, _0805EDF0  @ =gUnknown_03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _0805EDF4  @ =gUnknown_03001C48
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
	ldr r1, _0805EDF0  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
_0805EDF4:
	.4byte gUnknown_03001C48
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
	ldr r0, _0805EE64  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	ldr r2, _0805EF3C  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r2, _0805EFF8  @ =gCurrentEnemyScore
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
	.4byte gCurrentEnemyScore
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
	bl sub_08071990
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
	ldr r0, _0805F13C  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805F170  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
_0805F174:
	.4byte 0x030005E0
_0805F178:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #7
	bne _0805F1AC
	ldr r0, _0805F1A0  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r2, _0805F2A8  @ =gPreviousSwitchState
	ldr r0, _0805F2AC  @ =gCurrentSwitchState
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
	bl sub_08071990
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
	.4byte gPreviousSwitchState
_0805F2AC:
	.4byte gCurrentSwitchState
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
	ldr r4, _0805F30C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _0805F398  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _0805F470  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805F654  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805F838  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805FB3C  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r0, _0805FD38  @ =gUnknown_030019AC
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
	ldr r2, _0805FD3C  @ =gUnknown_03001940
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
	.4byte gUnknown_030019AC
_0805FD3C:
	.4byte gUnknown_03001940
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
	ldr r4, _0805FD94  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _080600F8  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
_080600FC:
	ldr r4, _08060148  @ =0x030005A0
	add r4, r7, r4
	ldr r5, _0806014C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	THUMB_FUNC_START boss_4_player
boss_4_player: @ 0x080609B0
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
	ldr r2, _08060A08  @ =REG_DMA3SAD
	ldr r0, _08060A0C  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08060A10  @ =gOamData
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
	.4byte REG_DMA3SAD
_08060A0C:
	.4byte gUnknown_0854337C
_08060A10:
	.4byte gOamData
_08060A14:
	.4byte 0x84000002
_08060A18:
	.4byte 0x030005EE
_08060A1C:
	.4byte gUnknown_08543384
_08060A20:
	cmp r0, #2
	bne _08060AEA
	ldr r2, _08060AF0  @ =REG_DMA3SAD
	ldr r0, _08060AF4  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08060AF8  @ =gOamData
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
	ldr r1, _08060B08  @ =OBJ_VRAM0
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
	ldr r0, _08060B1C  @ =gCameraHorizontalOffset
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
	ldr r0, _08060B28  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08060B2C  @ =gCameraVerticalOffset
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
	.4byte REG_DMA3SAD
_08060AF4:
	.4byte gUnknown_0851F560
_08060AF8:
	.4byte gOamData
_08060AFC:
	.4byte 0x84000002
_08060B00:
	.4byte 0x030005EE
_08060B04:
	.4byte gUnknown_0851F568
_08060B08:
	.4byte OBJ_VRAM0
_08060B0C:
	.4byte 0x84000100
_08060B10:
	.4byte 0x000003FF
_08060B14:
	.4byte 0xFFFFFC00
_08060B18:
	.4byte 0x030005F4
_08060B1C:
	.4byte gCameraHorizontalOffset
_08060B20:
	.4byte 0x000001FF
_08060B24:
	.4byte 0xFFFFFE00
_08060B28:
	.4byte gUnknown_030019AC
_08060B2C:
	.4byte gCameraVerticalOffset
	THUMB_FUNC_END boss_4_player

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
	ldr r1, _08060EF4  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _08060F60  @ =gUnknown_03001940
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
	bl sub_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08060F60:
	.4byte gUnknown_03001940
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
	ldr r1, _08061138  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08061180  @ =gUnknown_030019AC
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
	ldr r1, _08061180  @ =gUnknown_030019AC
	ldr r1, [r1]
	str r0, [r1, #76]
_08061178:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08061180:
	.4byte gUnknown_030019AC
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
	ldr r1, _08061234  @ =gUnknown_03001C48
	mov r3, #16
	neg r3, r3
	add r0, r3, #0
	strh r0, [r1]
	ldr r0, _08061238  @ =gLevelType
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08061240
	ldr r1, _0806123C  @ =gUnknown_03001C40
	mov r0, #0
	b _08061248
	.byte 0x00
	.byte 0x00
_08061234:
	.4byte gUnknown_03001C48
_08061238:
	.4byte gLevelType
_0806123C:
	.4byte gUnknown_03001C40
_08061240:
	ldr r1, _08061364  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
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
	ldr r1, _08061410  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _080614A4  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_080614A8:
	.4byte 0x0300068C
_080614AC:
	ldr r2, _080614CC  @ =0x0300069C
	ldr r0, _080614D0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r0, _08061648  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08061724  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
_08061A64:
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r2, [r4]
	cmp r3, #30
	bne _08061A7E
	ldr r1, _08061AC0  @ =gUnknown_03001C40
	ldrh r0, [r1]
	add r0, r0, #254
	strh r0, [r1]
	ldr r1, _08061AC4  @ =gUnknown_03001C48
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
	ldr r1, _08061AC0  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
_08061AC4:
	.4byte gUnknown_03001C48
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
	ldr r1, _08061B3C  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	ldr r4, _08061BF8  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r2, _08061D54  @ =gCurrentEnemyScore
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
	.4byte gCurrentEnemyScore
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
	bl sub_08071990
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
	ldr r4, _08061EB4  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _08061F1C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08061FE4  @ =gUnknown_030019AC
	mov r9, r0
	ldr r6, [r0]
	ldr r0, [r6, #92]
	mov r1, #128
	lsl r1, r1, #18
	and r0, r0, r1
	cmp r0, #0
	beq _08062048
	ldr r2, _08061FE8  @ =gUnknown_03001940
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
	.4byte gUnknown_030019AC
_08061FE8:
	.4byte gUnknown_03001940
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
	ldr r4, _08062040  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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

	THUMB_FUNC_START boss_5_player
boss_5_player: @ 0x080620DC
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
	ldr r2, _08062134  @ =REG_DMA3SAD
	ldr r0, _08062138  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0806213C  @ =gOamData
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
	.4byte REG_DMA3SAD
_08062138:
	.4byte gUnknown_0854337C
_0806213C:
	.4byte gOamData
_08062140:
	.4byte 0x84000002
_08062144:
	.4byte 0x03000694
_08062148:
	.4byte gUnknown_08543384
_0806214C:
	cmp r0, #2
	bne _08062216
	ldr r2, _0806221C  @ =REG_DMA3SAD
	ldr r0, _08062220  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08062224  @ =gOamData
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
	ldr r1, _08062234  @ =OBJ_VRAM0
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
	ldr r0, _08062248  @ =gCameraHorizontalOffset
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
	ldr r0, _08062254  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08062258  @ =gCameraVerticalOffset
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
	.4byte REG_DMA3SAD
_08062220:
	.4byte gUnknown_0851F560
_08062224:
	.4byte gOamData
_08062228:
	.4byte 0x84000002
_0806222C:
	.4byte 0x03000694
_08062230:
	.4byte gUnknown_0851F568
_08062234:
	.4byte OBJ_VRAM0
_08062238:
	.4byte 0x84000100
_0806223C:
	.4byte 0x000003FF
_08062240:
	.4byte 0xFFFFFC00
_08062244:
	.4byte 0x0300069C
_08062248:
	.4byte gCameraHorizontalOffset
_0806224C:
	.4byte 0x000001FF
_08062250:
	.4byte 0xFFFFFE00
_08062254:
	.4byte gUnknown_030019AC
_08062258:
	.4byte gCameraVerticalOffset
	THUMB_FUNC_END boss_5_player

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
	ldr r1, _080622E0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _08062340  @ =gUnknown_03001940
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
	bl sub_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08062340:
	.4byte gUnknown_03001940
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
	bl sub_08071990
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
	ldr r1, _08062750  @ =gUnknown_03001C48
	mov r3, #16
	neg r3, r3
	add r0, r3, #0
	strh r0, [r1]
	ldr r1, _08062754  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C48
_08062754:
	.4byte gUnknown_03001C40
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
	ldr r1, _08062800  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08062894  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_08062898:
	.4byte 0x030006B8
_0806289C:
	ldr r2, _080628BC  @ =0x030006C8
	ldr r0, _080628C0  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r0, _08062A38  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08062B14  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	bl sub_08071990
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
	bl sub_08071990
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
	bl sub_08071990
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
	ldr r1, _08062DF0  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	ldr r2, _08062EA8  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r1, _08062FB4  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r2, _08063030  @ =gCurrentEnemyScore
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
	.4byte gCurrentEnemyScore
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
	bl sub_08071990
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
	ldr r4, _0806318C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r5, _080631F4  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r2, _08063294  @ =gPreviousSwitchState
	ldr r0, _08063298  @ =gCurrentSwitchState
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
	bl sub_08071990
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
	.4byte gPreviousSwitchState
_08063298:
	.4byte gCurrentSwitchState
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
	ldr r0, _0806338C  @ =gUnknown_030019AC
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
	ldr r2, _08063390  @ =gUnknown_03001940
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
	.4byte gUnknown_030019AC
_08063390:
	.4byte gUnknown_03001940
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
	ldr r4, _080633E8  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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

	THUMB_FUNC_START boss_6_player
boss_6_player: @ 0x0806348C
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
	ldr r2, _080634E4  @ =REG_DMA3SAD
	ldr r0, _080634E8  @ =gUnknown_0854337C
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _080634EC  @ =gOamData
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
	.4byte REG_DMA3SAD
_080634E8:
	.4byte gUnknown_0854337C
_080634EC:
	.4byte gOamData
_080634F0:
	.4byte 0x84000002
_080634F4:
	.4byte 0x030006C0
_080634F8:
	.4byte gUnknown_08543384
_080634FC:
	cmp r0, #2
	bne _080635C6
	ldr r2, _080635CC  @ =REG_DMA3SAD
	ldr r0, _080635D0  @ =gUnknown_0851F560
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _080635D4  @ =gOamData
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
	ldr r1, _080635E4  @ =OBJ_VRAM0
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
	ldr r0, _080635F8  @ =gCameraHorizontalOffset
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
	ldr r0, _08063604  @ =gUnknown_030019AC
	ldr r0, [r0]
	ldr r1, [r0, #36]
	asr r1, r1, #8
	ldr r0, _08063608  @ =gCameraVerticalOffset
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
	.4byte REG_DMA3SAD
_080635D0:
	.4byte gUnknown_0851F560
_080635D4:
	.4byte gOamData
_080635D8:
	.4byte 0x84000002
_080635DC:
	.4byte 0x030006C0
_080635E0:
	.4byte gUnknown_0851F568
_080635E4:
	.4byte OBJ_VRAM0
_080635E8:
	.4byte 0x84000100
_080635EC:
	.4byte 0x000003FF
_080635F0:
	.4byte 0xFFFFFC00
_080635F4:
	.4byte 0x030006C8
_080635F8:
	.4byte gCameraHorizontalOffset
_080635FC:
	.4byte 0x000001FF
_08063600:
	.4byte 0xFFFFFE00
_08063604:
	.4byte gUnknown_030019AC
_08063608:
	.4byte gCameraVerticalOffset
	THUMB_FUNC_END boss_6_player

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
	ldr r1, _08063690  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _080636F0  @ =gUnknown_03001940
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
	bl sub_08071990
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080636F0:
	.4byte gUnknown_03001940
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
	bl sub_08071990
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
	ldr r1, _0806391C  @ =gUnknown_03001C40
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
	.4byte gUnknown_03001C40
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
	ldr r1, _08063958  @ =gCurrentLevelWidth
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
	.4byte gCurrentLevelWidth
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
	bl sub_08071990
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
	ldr r0, _08063DEC  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
_08063DF0:
	.4byte 0x030006E0
_08063DF4:
	ldr r4, _08063E14  @ =0x030006E0
	ldr r3, [r4]
	ldr r0, _08063E18  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	bl sub_08071990
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
	ldr r0, _08063F60  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
_08063F64:
	ldr r4, _08063F84  @ =0x030006E0
	ldr r3, [r4]
	ldr r0, _08063F88  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r0, _08064054  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	ldr r0, _0806419C  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #2
	beq _080641CA
	mov r0, #2
	bl sub_08064894
	b _080641CA
_0806419C:
	.4byte gCurrentSwitchState
_080641A0:
	cmp r0, #7
	bne _080641B8
	ldr r0, _080641B4  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #3
	beq _080641CA
	mov r0, #3
	bl sub_08064894
	b _080641CA
_080641B4:
	.4byte gCurrentSwitchState
_080641B8:
	cmp r0, #6
	bne _080641CA
	ldr r0, _080641D0  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	bl sub_08071990
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
	ldr r1, _080645E0  @ =gUnknown_030019AC
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
	bl sub_08071990
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
	.4byte gUnknown_030019AC
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
	ldr r2, _08064644  @ =gUnknown_03001940
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
	.4byte gUnknown_03001940
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
	bl sub_08071990
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
	ldr r4, _08064828  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r6, _0806488C  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r2, _08064930  @ =gPreviousSwitchState
	ldr r0, _08064934  @ =gCurrentSwitchState
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
	bl sub_08071990
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
	.4byte gPreviousSwitchState
_08064934:
	.4byte gCurrentSwitchState
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
	ldr r0, _0806497C  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
_08064980:
	mov r0, #0
	ldrsb r0, [r5, r0]
	ldrb r1, [r5]
	cmp r0, #6
	bne _08064992
	ldr r0, _080649B8  @ =gCurrentSwitchState
	ldrb r0, [r0]
	cmp r0, #1
	beq _08064966
_08064992:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #7
	bne _080649C0
	ldr r0, _080649B8  @ =gCurrentSwitchState
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
	.4byte gCurrentSwitchState
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
	ldr r1, _08064C28  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r1, _08065060  @ =gUnknown_030019AC
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
	.4byte gUnknown_030019AC
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
	ldr r2, _08065AE8  @ =gUnknown_030019AC
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
	ldr r3, _08065AF0  @ =gUnknown_03001940
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
	bx r0