	.INCLUDE "macro.inc"

.if 0
	THUMB_FUNC_START sub_08008BF4
sub_08008BF4: @ 0x08008BF4
	push {lr}
	ldr r0, _08008C0C  @ =gNextMainState
	ldr r1, [r0]
	add r0, r1, #0
	sub r0, r0, #16
	cmp r0, #1
	bls _08008C06
	cmp r1, #33
	bne _08008C10
_08008C06:
	bl sub_080720E4
	b _08008C26
_08008C0C:
	.4byte gNextMainState
_08008C10:
	mov r0, #22
	bl sub_08071C6C
	ldr r0, _08008C2C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	beq _08008C26
	cmp r0, #2
	beq _08008C26
	bl sub_080720AC
_08008C26:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008C2C:
	.4byte gMainState
	THUMB_FUNC_END sub_08008BF4

	THUMB_FUNC_START sub_08008C30
sub_08008C30: @ 0x08008C30
	bx lr
	THUMB_FUNC_END sub_08008C30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START state10_init_callback
state10_init_callback: @ 0x08008C34
	push {r4,lr}
	bl sub_08071BE0
	ldr r1, _08008C90  @ =gUnknown_03000B60
	mov r0, #0
	strb r0, [r1]
	mov r0, #0
	bl arena_restore_head
	bl sub_08040D50
	bl sub_0805727C
	ldr r4, _08008C94  @ =gUnknown_03000B90
	add r0, r4, #0
	bl sub_08032C44
	ldr r0, [r4, #4]
	bl sub_080041B8
	bl sub_08038B18
	bl sub_08071C00
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08008C98  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #0
	mov r1, #0
	bl sub_08033F80
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #2
	bl arena_save_head
	bl state11_init_callback
	pop {r4}
	pop {r0}
	bx r0
_08008C90:
	.4byte gUnknown_03000B60
_08008C94:
	.4byte gUnknown_03000B90
_08008C98:
	.4byte 0x0000FF7F
	THUMB_FUNC_END state10_init_callback

	THUMB_FUNC_START state11_init_callback
state11_init_callback: @ 0x08008C9C
	push {lr}
	mov r0, #2
	bl arena_restore_head
	bl sub_08008CE4
	bl sub_080069E8
	bl sub_080040D8
	bl sub_0802C20C
	bl sub_080386DC
	mov r0, #0
	bl sub_08004634
	ldr r2, _08008CD8  @ =gUnknown_03000A0C
	ldr r1, _08008CDC  @ =0x0400000A
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r2, [r1]
	ldr r0, _08008CE0  @ =0x0000FFFC
	and r0, r0, r2
	strh r0, [r1]
	bl sub_0800EF0C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008CD8:
	.4byte gUnknown_03000A0C
_08008CDC:
	.4byte 0x0400000A
_08008CE0:
	.4byte 0x0000FFFC
	THUMB_FUNC_END state11_init_callback

	THUMB_FUNC_START sub_08008CE4
sub_08008CE4: @ 0x08008CE4
	ldr r1, _08008CEC  @ =gUnknown_030009FC
	mov r0, #0
	strb r0, [r1]
	bx lr
_08008CEC:
	.4byte gUnknown_030009FC
	THUMB_FUNC_END sub_08008CE4

	THUMB_FUNC_START state10_11_main_callback
state10_11_main_callback: @ 0x08008CF0
	push {r4,r5,lr}
	ldr r5, _08008D00  @ =gUnknown_030009FC
	ldrb r4, [r5]
	cmp r4, #0
	beq _08008D04
	bl process_input
	b _08008D30
_08008D00:
	.4byte gUnknown_030009FC
_08008D04:
	bl process_input
	ldr r2, _08008D1C  @ =gHeldKeys
	ldrh r0, [r2]
	cmp r0, #1
	bne _08008D28
	ldr r1, _08008D20  @ =gSomeKeys_030012E8
	ldr r0, _08008D24  @ =gUnknown_03001708
	strh r4, [r0]
	strh r4, [r2]
	strh r4, [r1]
	b _08008D30
_08008D1C:
	.4byte gHeldKeys
_08008D20:
	.4byte gSomeKeys_030012E8
_08008D24:
	.4byte gUnknown_03001708
_08008D28:
	cmp r0, #0
	beq _08008D30
	mov r0, #1
	strb r0, [r5]
_08008D30:
	bl sub_08004FBC
	bl sub_08005FA0
	bl sub_0801B310
	ldr r0, _08008D74  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08008D68
	bl sub_08006A34
	cmp r0, #7
	bne _08008D68
	mov r0, #13
	mov r1, #1
	bl goto_state_080070E8
	ldr r1, _08008D78  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r2, #16
	ldrsh r1, [r1, r2]
	mov r2, #0
	bl sub_080107E8
_08008D68:
	bl sub_08008238
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008D74:
	.4byte gSomeKeys_030012E8
_08008D78:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END state10_11_main_callback

	THUMB_FUNC_START sub_08008D7C
sub_08008D7C: @ 0x08008D7C
	push {lr}
	ldr r0, _08008D98  @ =0x0400000A
	ldr r1, _08008D9C  @ =gUnknown_03000A0C
	ldrh r1, [r1]
	strh r1, [r0]
	bl sub_080062D0
	bl sub_080720AC
	bl sub_08006A00
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08008D98:
	.4byte 0x0400000A
_08008D9C:
	.4byte gUnknown_03000A0C
	THUMB_FUNC_END sub_08008D7C
.endif
	THUMB_FUNC_START sub_08008DA0
sub_08008DA0: @ 0x08008DA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r0, #96
	mov r9, r0
	mov r6, #0
	ldr r1, _08008E48  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r6, r0
	bge _08008EA6
	ldr r2, _08008E4C  @ =0x03000A10
	mov r8, r2
	mov r0, #128
	lsl r0, r0, #1
	mov r12, r0
	ldr r7, _08008E50  @ =gUnknown_03000B6C
	ldr r1, _08008E54  @ =gUnknown_03001A1C
	mov r10, r1
_08008DD2:
	lsl r1, r6, #2
	mov r0, r8
	add r0, r0, #156
	add r5, r1, r0
	ldr r4, [r5]
	cmp r4, r12
	bgt _08008E8A
	lsl r3, r6, #1
	mov r2, r8
	add r2, r2, #130
	add r2, r3, r2
	str r2, [sp]
	mov r2, r12
	sub r0, r2, r4
	add r1, r0, #0
	mul r1, r0, r1
	mov r2, r9
	mul r2, r1, r2
	add r1, r2, #0
	lsl r0, r0, #1
	mul r0, r4, r0
	mov r2, #151
	mul r0, r2, r0
	add r1, r1, r0
	add r0, r4, #0
	mul r0, r4, r0
	mul r0, r2, r0
	add r1, r1, r0
	asr r1, r1, #16
	ldr r0, [sp]
	strh r1, [r0]
	ldr r1, _08008E58  @ =0x03000A9E
	add r3, r3, r1
	ldr r2, [r5]
	mov r1, r12
	sub r0, r1, r2
	add r1, r0, #0
	mul r1, r0, r1
	lsl r0, r0, #1
	mul r0, r2, r0
	add r1, r1, r0
	lsl r1, r1, #4
	add r0, r2, #0
	mul r0, r2, r0
	add r1, r1, r0
	asr r1, r1, #16
	strh r1, [r3]
	ldr r0, [r5]
	add r0, r0, #3
	str r0, [r5]
	cmp r0, r12
	ble _08008E8A
	cmp r6, #5
	bne _08008E60
	ldr r0, [r7]
	ldr r2, _08008E5C  @ =0x00001388
	add r0, r0, r2
	b _08008E68
	.byte 0x00
	.byte 0x00
_08008E48:
	.4byte 0x030019AC
_08008E4C:
	.4byte 0x03000A10
_08008E50:
	.4byte gUnknown_03000B6C
_08008E54:
	.4byte gUnknown_03001A1C
_08008E58:
	.4byte 0x03000A9E
_08008E5C:
	.4byte 0x00001388
_08008E60:
	ldr r0, [r7]
	mov r1, #250
	lsl r1, r1, #2
	add r0, r0, r1
_08008E68:
	str r0, [r7]
	ldr r2, _08008EB8  @ =0x030019AC
	ldr r0, [r2]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r0, r0, #1
	cmp r6, r0
	bne _08008E8A
	mov r1, r10
	ldr r0, [r1]
	mov r1, #134
	lsl r1, r1, #7
	orr r0, r0, r1
	mov r2, r10
	str r0, [r2]
_08008E8A:
	mov r0, #13
	neg r0, r0
	add r9, r9, r0
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r1, _08008EB8  @ =0x030019AC
	ldr r0, [r1]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r6, r0
	blt _08008DD2
_08008EA6:
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
_08008EB8:
	.4byte 0x030019AC
	THUMB_FUNC_END sub_08008DA0

	THUMB_FUNC_START sub_08008EBC
sub_08008EBC: @ 0x08008EBC
	push {r4-r7,lr}
	sub sp, sp, #32
	add r7, r0, #0
	ldr r1, _08008F6C  @ =gUnknown_08076368
	mov r0, sp
	mov r2, #31
	bl memcpy
	ldr r6, _08008F70  @ =0x03000A10
	add r0, r6, #0
	add r0, r0, #57
	ldrb r5, [r0]
	cmp r5, #1
	beq _08008EDA
	b _080091A0
_08008EDA:
	sub r0, r0, #8
	ldrb r0, [r0]
	add r0, sp, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008EE8
	b _080091A0
_08008EE8:
	ldr r0, _08008F74  @ =gUnknown_0300170C
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #160
	bgt _08008EF4
	b _08009050
_08008EF4:
	ldr r0, _08008F78  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _08008F02
	b _08009050
_08008F02:
	ldr r1, _08008F7C  @ =0x040000D4
	ldr r2, _08008F80  @ =gUnknown_082E84D4
	mov r12, r2
	str r2, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _08008F84  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r1, #4]
	ldr r0, _08008F88  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r1, [r2, #2]
	ldr r0, _08008F8C  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #104
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #8
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r2, [r6, #40]
	ldr r0, _08008F90  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08008F94  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	add r0, r6, #0
	add r0, r0, #55
	ldrb r0, [r0]
	and r5, r5, r0
	mov r3, r12
	mov r12, r4
	cmp r5, #0
	beq _08008F98
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _08008FA6
_08008F6C:
	.4byte gUnknown_08076368
_08008F70:
	.4byte 0x03000A10
_08008F74:
	.4byte gUnknown_0300170C
_08008F78:
	.4byte gUnknown_03000B80
_08008F7C:
	.4byte 0x040000D4
_08008F80:
	.4byte gUnknown_082E84D4
_08008F84:
	.4byte gOamBuffer
_08008F88:
	.4byte 0x84000002
_08008F8C:
	.4byte 0xFFFFFE00
_08008F90:
	.4byte 0x000003FF
_08008F94:
	.4byte 0xFFFFFC00
_08008F98:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_08008FA6:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08009020  @ =0x040000D4
	str r3, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _08009024  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _08009028  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #104
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #120
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r0, [r1, #3]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800902C  @ =0x03000A10
	ldr r1, [r3, #40]
	ldr r0, _08009030  @ =0x000003FF
	and r1, r1, r0
	ldrh r4, [r2, #4]
	ldr r0, _08009034  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	add r3, r3, #55
	ldrb r1, [r3]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08009038
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _08009046
_08009020:
	.4byte 0x040000D4
_08009024:
	.4byte 0x84000002
_08009028:
	.4byte 0xFFFFFE00
_0800902C:
	.4byte 0x03000A10
_08009030:
	.4byte 0x000003FF
_08009034:
	.4byte 0xFFFFFC00
_08009038:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_08009046:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_08009050:
	ldr r0, _080090C8  @ =gUnknown_03001720
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #240
	bgt _0800905C
	b _080091A0
_0800905C:
	ldr r1, _080090CC  @ =0x040000D4
	ldr r6, _080090D0  @ =gUnknown_082E8A50
	str r6, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _080090D4  @ =gOamBuffer
	mov r12, r2
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _080090D8  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _080090DC  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #8
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #64
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r4, _080090E0  @ =0x03000A10
	ldr r1, [r4, #44]
	ldr r0, _080090E4  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _080090E8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	add r0, r4, #0
	add r0, r0, #55
	ldrb r1, [r0]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _080090EC
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _080090FA
	.byte 0x00
	.byte 0x00
_080090C8:
	.4byte gUnknown_03001720
_080090CC:
	.4byte 0x040000D4
_080090D0:
	.4byte gUnknown_082E8A50
_080090D4:
	.4byte gOamBuffer
_080090D8:
	.4byte 0x84000002
_080090DC:
	.4byte 0xFFFFFE00
_080090E0:
	.4byte 0x03000A10
_080090E4:
	.4byte 0x000003FF
_080090E8:
	.4byte 0xFFFFFC00
_080090EC:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_080090FA:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _08009174  @ =0x040000D4
	str r6, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _08009178  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r1, [r2, #2]
	ldr r0, _0800917C  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #200
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #64
	strb r1, [r0]
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
	ldr r2, [r4, #44]
	ldr r0, _08009180  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _08009184  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	add r0, r4, #0
	add r0, r0, #55
	ldrb r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08009188
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _08009196
_08009174:
	.4byte 0x040000D4
_08009178:
	.4byte 0x84000002
_0800917C:
	.4byte 0xFFFFFE00
_08009180:
	.4byte 0x000003FF
_08009184:
	.4byte 0xFFFFFC00
_08009188:
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
_08009196:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_080091A0:
	add sp, sp, #32
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08008EBC

	THUMB_FUNC_START sub_080091A8
sub_080091A8: @ 0x080091A8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r10, r0
	add r6, r1, #0
	ldr r0, _080095A0  @ =0x03000A10
	mov r12, r0
	add r0, r0, #48
	mov r1, #0
	mov r9, r1
	mov r2, #1
	strb r2, [r0]
	mov r0, r12
	add r0, r0, #182
	mov r3, r9
	strb r3, [r0]
	sub r0, r0, #125
	strb r3, [r0]
	add r0, r0, #11
	strb r3, [r0]
	sub r0, r0, #18
	strb r3, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #153
	strb r3, [r0]
	add r0, r0, #10
	strb r3, [r0]
	mov r4, r10
	ldrh r0, [r4]
	mov r7, r12
	str r0, [r7, #20]
	ldr r0, _080095A4  @ =gUnknown_082EBC34
	ldr r7, _080095A8  @ =0x040000D4
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r2, _080095B0  @ =0x84000080
	str r2, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	mov r3, #128
	lsl r3, r3, #2
	add r0, r2, r3
	strh r0, [r6]
	ldrh r4, [r4]
	mov r8, r4
	mov r0, r8
	add r0, r0, #16
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	str r0, [r1, #24]
	ldr r0, _080095B4  @ =gUnknown_082EAE80
	str r0, [r7]
	ldrh r0, [r6]
	ldr r3, _080095AC  @ =0x06010000
	add r0, r0, r3
	str r0, [r7, #4]
	mov r4, #132
	lsl r4, r4, #24
	str r4, [sp]
	add r4, r4, #32
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #160
	lsl r1, r1, #2
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #20
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r3, r12
	str r0, [r3, #36]
	ldr r0, _080095B8  @ =gUnknown_082F0BE4
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, #192
	lsl r3, r3, #2
	add r0, r2, r3
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	str r0, [r1, #40]
	ldr r0, _080095BC  @ =gUnknown_082E84DC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r3, _080095AC  @ =0x06010000
	add r0, r0, r3
	str r0, [r7, #4]
	ldr r0, _080095B0  @ =0x84000080
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #160
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r3, r12
	str r0, [r3, #44]
	ldr r0, _080095C0  @ =gUnknown_082E8A58
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldr r3, _080095B0  @ =0x84000080
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #224
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #56
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r3, r12
	str r0, [r3, #28]
	ldr r0, _080095C4  @ =gUnknown_082F0CFC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, #240
	lsl r3, r3, #3
	add r0, r2, r3
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #60
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	str r0, [r1, #32]
	ldr r0, _080095C8  @ =gUnknown_082F0C90
	str r0, [r7]
	ldrh r0, [r6]
	ldr r3, _080095AC  @ =0x06010000
	add r0, r0, r3
	str r0, [r7, #4]
	ldr r5, _080095CC  @ =0x84000010
	str r5, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #248
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #62
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #228
	str r0, [r1]
	ldr r0, _080095D0  @ =gUnknown_082EFC70
	str r0, [r7]
	ldrh r0, [r6]
	add r0, r0, r3
	str r0, [r7, #4]
	mov r3, #8
	ldr r0, [sp]
	orr r3, r3, r0
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #252
	lsl r1, r1, #3
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #63
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #232
	str r0, [r1]
	ldr r0, _080095D4  @ =gUnknown_082EFCBC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #64
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #236
	str r0, [r1]
	ldr r0, _080095D8  @ =gUnknown_082F0770
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #130
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #65
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #240
	str r0, [r1]
	ldr r0, _080095DC  @ =gUnknown_082F07BC
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #132
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #66
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #244
	str r0, [r1]
	ldr r0, _080095E0  @ =gUnknown_082F0808
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #134
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #67
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #248
	str r0, [r1]
	ldr r0, _080095E4  @ =gUnknown_082F0854
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #136
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #68
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, r12
	add r1, r1, #252
	str r0, [r1]
	ldr r0, _080095E8  @ =gUnknown_082EFDB4
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #138
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #69
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #128
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095EC  @ =gUnknown_082EFE00
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #140
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #70
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #130
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095F0  @ =gUnknown_082EFE4C
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #142
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #71
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #132
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095F4  @ =gUnknown_082EFE98
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #144
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #72
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #134
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095F8  @ =gUnknown_082EE194
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [r7, #8]
	mov r4, #152
	lsl r4, r4, #4
	add r0, r2, r4
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #76
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #136
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _080095FC  @ =gUnknown_082EFC04
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	str r5, [r7, #8]
	ldr r0, [r7, #8]
	add r4, r4, #64
	add r0, r2, r4
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #78
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #138
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _08009600  @ =gUnknown_082F01B8
	str r0, [r7]
	ldrh r0, [r6]
	ldr r1, _080095AC  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	mov r0, #88
	ldr r4, [sp]
	orr r0, r0, r4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #178
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #89
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #140
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _08009604  @ =gUnknown_082F0344
	str r0, [r7]
	ldrh r0, [r6]
	ldr r4, _080095AC  @ =0x06010000
	add r0, r0, r4
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, #180
	lsl r1, r1, #4
	add r0, r2, r1
	strh r0, [r6]
	mov r0, r8
	add r0, r0, #90
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r1, #142
	lsl r1, r1, #1
	add r1, r1, r12
	str r0, [r1]
	ldr r0, _08009608  @ =gUnknown_082F094C
	str r0, [r7]
	ldrh r0, [r6]
	add r0, r0, r4
	str r0, [r7, #4]
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	mov r3, #182
	lsl r3, r3, #4
	add r2, r2, r3
	strh r2, [r6]
	mov r0, r8
	add r0, r0, #91
	mov r4, r10
	strh r0, [r4]
	ldr r0, _0800960C  @ =0x00000123
	add r0, r0, r12
	mov r1, r9
	strb r1, [r0]
	mov r0, #146
	lsl r0, r0, #1
	add r0, r0, r12
	strb r1, [r0]
	mov r0, r12
	add r0, r0, #215
	mov r2, #3
	strb r2, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #4
	mov r3, r9
	str r3, [r0]
	mov r1, r12
	add r1, r1, #224
	ldr r0, _08009610  @ =gUnknown_082EB118
	str r0, [r1]
	ldr r0, _08009614  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r4, r12
	cmp r0, #4
	bne _08009622
	add r0, r4, #0
	add r0, r0, #206
	strb r3, [r0]
	add r0, r0, #1
	mov r1, r9
	strb r1, [r0]
	add r0, r0, #1
	mov r1, #0
	mov r3, r9
	strh r3, [r0]
	add r0, r0, #2
	b _08009618
	.byte 0x00
	.byte 0x00
_080095A0:
	.4byte 0x03000A10
_080095A4:
	.4byte gUnknown_082EBC34
_080095A8:
	.4byte 0x040000D4
_080095AC:
	.4byte 0x06010000
_080095B0:
	.4byte 0x84000080
_080095B4:
	.4byte gUnknown_082EAE80
_080095B8:
	.4byte gUnknown_082F0BE4
_080095BC:
	.4byte gUnknown_082E84DC
_080095C0:
	.4byte gUnknown_082E8A58
_080095C4:
	.4byte gUnknown_082F0CFC
_080095C8:
	.4byte gUnknown_082F0C90
_080095CC:
	.4byte 0x84000010
_080095D0:
	.4byte gUnknown_082EFC70
_080095D4:
	.4byte gUnknown_082EFCBC
_080095D8:
	.4byte gUnknown_082F0770
_080095DC:
	.4byte gUnknown_082F07BC
_080095E0:
	.4byte gUnknown_082F0808
_080095E4:
	.4byte gUnknown_082F0854
_080095E8:
	.4byte gUnknown_082EFDB4
_080095EC:
	.4byte gUnknown_082EFE00
_080095F0:
	.4byte gUnknown_082EFE4C
_080095F4:
	.4byte gUnknown_082EFE98
_080095F8:
	.4byte gUnknown_082EE194
_080095FC:
	.4byte gUnknown_082EFC04
_08009600:
	.4byte gUnknown_082F01B8
_08009604:
	.4byte gUnknown_082F0344
_08009608:
	.4byte gUnknown_082F094C
_0800960C:
	.4byte 0x00000123
_08009610:
	.4byte gUnknown_082EB118
_08009614:
	.4byte gUnknown_03000B80
_08009618:
	strh r3, [r0]
	add r0, r0, #2
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
_08009622:
	ldr r0, _08009660  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	bne _080096A4
	mov r2, r10
	ldrh r0, [r2]
	str r0, [r4, #72]
	mov r3, #8
	and r1, r1, r3
	cmp r1, #0
	beq _08009670
	ldr r0, _08009664  @ =gUnknown_08514014
	str r0, [r7]
	ldrh r0, [r6]
	ldr r4, _08009668  @ =0x06010000
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0800966C  @ =0x84000080
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r0, r1
	strh r0, [r6]
	ldrh r0, [r2]
	add r0, r0, #16
	strh r0, [r2]
	b _08009840
_08009660:
	.4byte gUnknown_03000B90
_08009664:
	.4byte gUnknown_08514014
_08009668:
	.4byte 0x06010000
_0800966C:
	.4byte 0x84000080
_08009670:
	ldr r0, _08009698  @ =gUnknown_082F8F0C
	str r0, [r7]
	ldrh r0, [r6]
	ldr r2, _0800969C  @ =0x06010000
	add r0, r0, r2
	str r0, [r7, #4]
	ldr r3, _080096A0  @ =0x84000080
	str r3, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r0, [r6]
	mov r4, #128
	lsl r4, r4, #2
	add r0, r0, r4
	strh r0, [r6]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #16
	strh r0, [r7]
	b _08009840
	.byte 0x00
	.byte 0x00
_08009698:
	.4byte gUnknown_082F8F0C
_0800969C:
	.4byte 0x06010000
_080096A0:
	.4byte 0x84000080
_080096A4:
	add r2, r1, #0
	mov r0, #1
	and r2, r2, r0
	cmp r2, #0
	beq _08009754
	add r0, r4, #0
	add r0, r0, #183
	mov r1, r9
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r0, r0, #3
	strb r1, [r0]
	sub r0, r0, #2
	strb r1, [r0]
	add r0, r0, #3
	strb r1, [r0]
	sub r0, r0, #2
	strb r1, [r0]
	add r0, r0, #3
	strb r1, [r0]
	sub r0, r0, #93
	strb r1, [r0]
	add r1, r4, #0
	add r1, r1, #96
	mov r0, #6
	strb r0, [r1]
	mov r2, #0
	ldr r3, _08009740  @ =gUnknown_082EC2E0
	mov r12, r3
	mov r7, #99
	add r7, r7, r4
	mov r8, r7
	mov r1, #0
	mov r0, #156
	add r0, r0, r4
	mov r9, r0
	add r5, r4, #0
	add r5, r5, #105
	ldr r3, _08009744  @ =0x00000101
_080096F8:
	mov r7, r8
	add r0, r2, r7
	strb r1, [r0]
	add r0, r2, r5
	strb r1, [r0]
	lsl r0, r2, #2
	add r0, r0, r9
	str r3, [r0]
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #5
	bls _080096F8
	mov r1, r10
	ldrh r0, [r1]
	str r0, [r4, #76]
	ldr r1, _08009748  @ =0x040000D4
	mov r2, r12
	str r2, [r1]
	ldrh r0, [r6]
	ldr r3, _0800974C  @ =0x06010000
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _08009750  @ =0x840000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r6]
	mov r4, #192
	lsl r4, r4, #2
	add r0, r0, r4
	strh r0, [r6]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #24
	strh r0, [r7]
	b _08009840
_08009740:
	.4byte gUnknown_082EC2E0
_08009744:
	.4byte 0x00000101
_08009748:
	.4byte 0x040000D4
_0800974C:
	.4byte 0x06010000
_08009750:
	.4byte 0x840000C0
_08009754:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08009840
	add r0, r4, #0
	add r0, r0, #97
	strb r2, [r0]
	add r0, r0, #1
	strb r2, [r0]
	add r0, r0, #29
	strb r2, [r0]
	sub r0, r0, #1
	strb r2, [r0]
	add r0, r0, #2
	strh r2, [r0]
	ldr r2, _08009850  @ =gUnknown_03001938
	ldr r0, [r2]
	ldr r1, _08009854  @ =0xFFFDFFFF
	and r0, r0, r1
	str r0, [r2]
	mov r2, #0
	ldr r0, _08009858  @ =gUnknown_082EC2E0
	mov r12, r0
	add r5, r4, #0
	mov r3, #0
	mov r1, #156
	add r1, r1, r4
	mov r9, r1
	mov r7, #99
	add r7, r7, r4
	mov r8, r7
	add r7, r4, #0
	add r7, r7, #105
_08009796:
	mov r1, r8
	add r0, r2, r1
	strb r3, [r0]
	add r0, r2, r7
	strb r3, [r0]
	add r0, r5, #0
	add r0, r0, #111
	add r0, r2, r0
	strb r3, [r0]
	add r0, r5, #0
	add r0, r0, #117
	add r0, r2, r0
	strb r3, [r0]
	lsl r0, r2, #2
	add r0, r0, r9
	ldr r1, _0800985C  @ =0x00000101
	str r1, [r0]
	add r0, r2, #1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #5
	bls _08009796
	add r1, r4, #0
	add r1, r1, #180
	mov r0, #0
	strh r0, [r1]
	mov r2, r10
	ldrh r0, [r2]
	str r0, [r4, #76]
	ldr r1, _08009860  @ =0x040000D4
	mov r3, r12
	str r3, [r1]
	ldrh r0, [r6]
	ldr r7, _08009864  @ =0x06010000
	add r0, r0, r7
	str r0, [r1, #4]
	ldr r0, _08009868  @ =0x840000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r6]
	mov r3, #192
	lsl r3, r3, #2
	add r0, r2, r3
	strh r0, [r6]
	mov r7, r10
	ldrh r5, [r7]
	add r0, r5, #0
	add r0, r0, #24
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [r4, #80]
	ldr r0, _0800986C  @ =gUnknown_082E8EA8
	str r0, [r1]
	ldrh r0, [r6]
	ldr r3, _08009864  @ =0x06010000
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r3, _08009870  @ =0x84000080
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r7, #160
	lsl r7, r7, #3
	add r0, r2, r7
	strh r0, [r6]
	add r0, r5, #0
	add r0, r0, #40
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [r4, #92]
	ldr r0, _08009874  @ =gUnknown_082E92C8
	str r0, [r1]
	ldrh r0, [r6]
	ldr r4, _08009864  @ =0x06010000
	add r0, r0, r4
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	mov r7, #224
	lsl r7, r7, #3
	add r2, r2, r7
	strh r2, [r6]
	add r0, r5, #0
	add r0, r0, #56
	mov r1, r10
	strh r0, [r1]
_08009840:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08009850:
	.4byte gUnknown_03001938
_08009854:
	.4byte 0xFFFDFFFF
_08009858:
	.4byte gUnknown_082EC2E0
_0800985C:
	.4byte 0x00000101
_08009860:
	.4byte 0x040000D4
_08009864:
	.4byte 0x06010000
_08009868:
	.4byte 0x840000C0
_0800986C:
	.4byte gUnknown_082E8EA8
_08009870:
	.4byte 0x84000080
_08009874:
	.4byte gUnknown_082E92C8
	THUMB_FUNC_END sub_080091A8

	THUMB_FUNC_START sub_08009878
sub_08009878: @ 0x08009878
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _080098CC  @ =0x03000A10
	mov r1, #215
	add r1, r1, r0
	mov r8, r1
	ldrb r6, [r1]
	mov r12, r0
	cmp r6, #0
	beq _08009910
	ldr r1, _080098D0  @ =gUnknown_03001A30
	ldrb r0, [r1]
	cmp r0, #0
	beq _08009910
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08009910
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08009910
	mov r4, r12
	add r4, r4, #216
	ldr r1, _080098D4  @ =gUnknown_082EAF00
	mov r5, r12
	add r5, r5, #220
	ldr r2, [r5]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r3, [r4]
	add r7, r1, #0
	ldrb r0, [r0, #1]
	cmp r3, r0
	bne _0800990C
	mov r0, #0
	strb r0, [r4]
	cmp r2, #2
	bhi _080098D8
	add r0, r2, #1
	b _080098E6
_080098CC:
	.4byte 0x03000A10
_080098D0:
	.4byte gUnknown_03001A30
_080098D4:
	.4byte gUnknown_082EAF00
_080098D8:
	sub r0, r6, #1
	mov r1, r8
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	beq _080098E8
	mov r0, #1
_080098E6:
	str r0, [r5]
_080098E8:
	mov r2, r12
	add r2, r2, #224
	mov r0, r12
	add r0, r0, #220
	ldr r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009908  @ =gUnknown_082EAF98
	add r0, r0, r1
	str r0, [r2]
	b _08009910
	.byte 0x00
	.byte 0x00
_08009908:
	.4byte gUnknown_082EAF98
_0800990C:
	add r0, r3, #1
	strb r0, [r4]
_08009910:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08009878

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800991C
sub_0800991C: @ 0x0800991C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08009A30  @ =gUnknown_03000B4C
	ldr r1, _08009A34  @ =gUnknown_03000B6C
	ldr r2, [r0]
	ldr r0, [r1]
	add r2, r2, r0
	mov r8, r2
	ldr r0, _08009A38  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	mov r9, r0
	ldr r0, _08009A3C  @ =gUnknown_03000B54
	ldr r1, [r0]
	lsl r0, r1, #4
	add r0, r0, r1
	lsl r0, r0, #4
	add r0, r0, r1
	lsl r0, r0, #2
	asr r7, r0, #16
	ldr r6, _08009A40  @ =0x03000A10
	add r0, r6, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800995A
	bl _0800A246
_0800995A:
	add r0, r6, #0
	add r0, r0, #204
	mov r4, #0
	strb r4, [r0]
	add r0, sp, #12
	strh r4, [r0]
	ldr r2, _08009A44  @ =0x01000003
	add r1, r6, #0
	bl CpuSet
	mov r0, sp
	add r0, r0, #14
	strh r4, [r0]
	add r1, r6, #0
	add r1, r1, #12
	ldr r5, _08009A48  @ =0x01000001
	add r2, r5, #0
	bl CpuSet
	add r0, sp, #16
	strh r4, [r0]
	add r1, r6, #0
	add r1, r1, #14
	add r2, r5, #0
	bl CpuSet
	add r0, r6, #0
	mov r1, r8
	bl sub_0802FB18
	add r4, r6, #6
	ldr r0, _08009A4C  @ =gUnknown_03000B58
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r1, _08009A50  @ =gUnknown_03000B74
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	ldr r2, _08009A54  @ =gUnknown_03000B80
	ldrb r2, [r2]
	lsl r2, r2, #24
	asr r2, r2, #24
	bl get_level_highscore_0801095C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0802FB18
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #3
	add r0, r0, r7
	asr r2, r0, #12
	strb r2, [r6, #16]
	ldrb r1, [r6, #16]
	mov r0, #100
	mul r0, r1, r0
	sub r7, r7, r0
	cmp r7, #99
	ble _080099EC
	sub r7, r7, #100
	ldrb r0, [r6, #15]
	add r0, r0, #1
	strb r0, [r6, #15]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _080099EC
	mov r0, #0
	strb r0, [r6, #15]
	add r0, r2, #1
	strb r0, [r6, #16]
_080099EC:
	ldr r2, _08009A40  @ =0x03000A10
	ldr r0, _08009A58  @ =0x0000199A
	mul r0, r7, r0
	asr r0, r0, #16
	strb r0, [r2, #15]
	ldrb r1, [r2, #15]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r7, r7, r0
	add r6, r2, #0
	cmp r7, #9
	ble _08009A1E
	sub r7, r7, #10
	add r0, r1, #1
	strb r0, [r6, #15]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _08009A1E
	mov r0, #0
	strb r0, [r6, #15]
	ldrb r0, [r6, #16]
	add r0, r0, #1
	strb r0, [r6, #16]
_08009A1E:
	strb r7, [r6, #14]
	ldr r0, _08009A3C  @ =gUnknown_03000B54
	ldr r1, [r0]
	cmp r1, #59
	bgt _08009A5C
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #6
	b _08009ADA
_08009A30:
	.4byte gUnknown_03000B4C
_08009A34:
	.4byte gUnknown_03000B6C
_08009A38:
	.4byte gUnknown_03000BBC
_08009A3C:
	.4byte gUnknown_03000B54
_08009A40:
	.4byte 0x03000A10
_08009A44:
	.4byte 0x01000003
_08009A48:
	.4byte 0x01000001
_08009A4C:
	.4byte gUnknown_03000B58
_08009A50:
	.4byte gUnknown_03000B74
_08009A54:
	.4byte gUnknown_03000B80
_08009A58:
	.4byte 0x0000199A
_08009A5C:
	ldr r0, _08009A7C  @ =0x00000167
	cmp r1, r0
	bgt _08009A96
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #8
	bhi _08009A80
	add r1, r1, #1
	mov r0, #4
	b _08009A86
	.byte 0x00
	.byte 0x00
_08009A7C:
	.4byte 0x00000167
_08009A80:
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #5
_08009A86:
	strb r0, [r1]
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	cmp r0, #15
	bls _08009ADC
	mov r0, #5
	b _08009ADA
_08009A96:
	ldr r0, _08009AB4  @ =0x00000383
	cmp r1, r0
	bgt _08009ACE
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #23
	bhi _08009AB8
	add r1, r1, #1
	mov r0, #3
	b _08009ABE
_08009AB4:
	.4byte 0x00000383
_08009AB8:
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #0
_08009ABE:
	strb r0, [r1]
	add r1, r6, #0
	add r1, r1, #50
	ldrb r0, [r1]
	cmp r0, #30
	bls _08009ADC
	mov r0, #0
	b _08009ADA
_08009ACE:
	ldr r0, _08009B5C  @ =0x00000707
	cmp r1, r0
	bgt _08009ADC
	add r1, r6, #0
	add r1, r1, #51
	mov r0, #2
_08009ADA:
	strb r0, [r1]
_08009ADC:
	mov r0, r9
	lsl r1, r0, #24
	asr r1, r1, #24
	ldr r0, _08009B60  @ =0x0000199A
	mul r0, r1, r0
	asr r3, r0, #16
	mov r7, #0
	strb r3, [r6, #13]
	ldrb r2, [r6, #13]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #1
	sub r1, r1, r0
	strb r1, [r6, #12]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #9
	bls _08009B04
	mov r0, #9
	strb r0, [r6, #12]
_08009B04:
	strb r3, [r6, #13]
	ldr r0, _08009B64  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bne _08009BA6
	add r4, r6, #0
	add r4, r4, #208
	add r5, r6, #0
	add r5, r5, #210
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08066C70
	add r1, r6, #0
	add r1, r1, #212
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #0
	beq _08009B90
	sub r4, r4, #1
	ldr r1, _08009B68  @ =gUnknown_082E9574
	add r2, r6, #0
	add r2, r2, #206
	ldrb r3, [r2]
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcc _08009B6C
	add r0, r3, #1
	strb r0, [r2]
	strb r7, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _08009B70
	strb r7, [r2]
	b _08009B70
_08009B5C:
	.4byte 0x00000707
_08009B60:
	.4byte 0x0000199A
_08009B64:
	.4byte gUnknown_03000B80
_08009B68:
	.4byte gUnknown_082E9574
_08009B6C:
	add r0, r1, #1
	strb r0, [r4]
_08009B70:
	ldr r0, _08009B8C  @ =0x03000A10
	add r1, r0, #0
	add r1, r1, #213
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _08009BA6
	mov r0, #0
	strb r0, [r1]
	b _08009BA6
	.byte 0x00
	.byte 0x00
_08009B8C:
	.4byte 0x03000A10
_08009B90:
	add r1, r6, #0
	add r1, r1, #206
	strb r0, [r1]
	add r1, r1, #1
	strb r0, [r1]
	mov r1, #0
	strh r0, [r4]
	strh r0, [r5]
	add r0, r6, #0
	add r0, r0, #213
	strb r1, [r0]
_08009BA6:
	ldr r0, _08009BD0  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _08009BE0
	ldr r0, _08009BD4  @ =gUnknown_03001A1C
	ldr r0, [r0]
	ldr r1, _08009BD8  @ =0x00901000
	and r0, r0, r1
	cmp r0, #0
	beq _08009BC0
	b _0800A246
_08009BC0:
	ldr r0, _08009BDC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	beq _08009BCA
	b _0800A246
_08009BCA:
	bl sub_08009878
	b _0800A246
_08009BD0:
	.4byte gUnknown_03000B90
_08009BD4:
	.4byte gUnknown_03001A1C
_08009BD8:
	.4byte 0x00901000
_08009BDC:
	.4byte gMainState
_08009BE0:
	mov r7, #1
	add r0, r1, #0
	and r0, r0, r7
	cmp r0, #0
	bne _08009BEC
	b _08009E9C
_08009BEC:
	ldr r0, _08009C48  @ =0x03001BC8
	ldr r1, _08009C4C  @ =0x03001BA0
	ldrb r2, [r0]
	ldrb r0, [r1]
	orr r0, r0, r2
	cmp r0, #0
	bne _08009C04
	ldr r0, _08009C50  @ =gUnknown_03001B30
	ldr r1, [r0, #20]
	mov r2, #128
	orr r1, r1, r2
	str r1, [r0, #20]
_08009C04:
	ldr r1, _08009C54  @ =0x030008E4
	ldrb r2, [r1]
	mov r12, r2
	add r0, r7, #0
	mov r3, r12
	and r0, r0, r3
	add r7, r1, #0
	cmp r0, #0
	beq _08009C92
	ldr r3, _08009C58  @ =0x03000A10
	add r4, r3, #0
	add r4, r4, #185
	ldr r2, _08009C5C  @ =gUnknown_082F1898
	add r5, r3, #0
	add r5, r5, #188
	ldrb r1, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r4]
	add r6, r3, #0
	add r3, r2, #0
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08009C8C
	mov r0, #0
	strb r0, [r4]
	ldrb r0, [r5]
	cmp r0, #2
	bhi _08009C60
	add r0, r0, #1
	strb r0, [r5]
	b _08009C68
_08009C48:
	.4byte 0x03001BC8
_08009C4C:
	.4byte 0x03001BA0
_08009C50:
	.4byte gUnknown_03001B30
_08009C54:
	.4byte 0x030008E4
_08009C58:
	.4byte 0x03000A10
_08009C5C:
	.4byte gUnknown_082F1898
_08009C60:
	mov r0, #254
	mov r5, r12
	and r0, r0, r5
	strb r0, [r7]
_08009C68:
	add r2, r6, #0
	add r2, r2, #192
	add r0, r6, #0
	add r0, r0, #188
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009C88  @ =gUnknown_082F1930
	add r0, r0, r1
	str r0, [r2]
	b _08009C9E
	.byte 0x00
	.byte 0x00
_08009C88:
	.4byte gUnknown_082F1930
_08009C8C:
	add r0, r1, #1
	strb r0, [r4]
	b _08009C9E
_08009C92:
	ldr r2, _08009CD8  @ =0x03000A10
	add r1, r2, #0
	add r1, r1, #192
	ldr r0, _08009CDC  @ =gUnknown_082F1930
	str r0, [r1]
	add r6, r2, #0
_08009C9E:
	ldrb r1, [r7]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08009D16
	add r3, r6, #0
	add r3, r3, #186
	ldr r2, _08009CE0  @ =gUnknown_082F1680
	add r4, r6, #0
	add r4, r4, #189
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r3]
	add r5, r2, #0
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08009D10
	mov r0, #0
	strb r0, [r3]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08009CE4
	add r0, r0, #1
	strb r0, [r4]
	b _08009CEC
	.byte 0x00
	.byte 0x00
_08009CD8:
	.4byte 0x03000A10
_08009CDC:
	.4byte gUnknown_082F1930
_08009CE0:
	.4byte gUnknown_082F1680
_08009CE4:
	ldrb r1, [r7]
	mov r0, #253
	and r0, r0, r1
	strb r0, [r7]
_08009CEC:
	add r2, r6, #0
	add r2, r2, #196
	add r0, r6, #0
	add r0, r0, #189
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009D0C  @ =gUnknown_082F1718
	add r0, r0, r1
	str r0, [r2]
	b _08009D1E
	.byte 0x00
	.byte 0x00
_08009D0C:
	.4byte gUnknown_082F1718
_08009D10:
	add r0, r1, #1
	strb r0, [r3]
	b _08009D1E
_08009D16:
	add r1, r6, #0
	add r1, r1, #196
	ldr r0, _08009D58  @ =gUnknown_082F1718
	str r0, [r1]
_08009D1E:
	ldrb r1, [r7]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08009D92
	add r3, r6, #0
	add r3, r3, #187
	ldr r2, _08009D5C  @ =gUnknown_082F1AB0
	add r4, r6, #0
	add r4, r4, #190
	ldrb r1, [r4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r3]
	add r5, r2, #0
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _08009D8C
	mov r0, #0
	strb r0, [r3]
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08009D60
	add r0, r0, #1
	strb r0, [r4]
	b _08009D68
	.byte 0x00
	.byte 0x00
_08009D58:
	.4byte gUnknown_082F1718
_08009D5C:
	.4byte gUnknown_082F1AB0
_08009D60:
	ldrb r1, [r7]
	mov r0, #251
	and r0, r0, r1
	strb r0, [r7]
_08009D68:
	add r2, r6, #0
	add r2, r2, #200
	add r0, r6, #0
	add r0, r0, #190
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r5
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08009D88  @ =gUnknown_082F1B48
	add r0, r0, r1
	str r0, [r2]
	b _08009D9A
	.byte 0x00
	.byte 0x00
_08009D88:
	.4byte gUnknown_082F1B48
_08009D8C:
	add r0, r1, #1
	strb r0, [r3]
	b _08009D9A
_08009D92:
	add r1, r6, #0
	add r1, r1, #200
	ldr r0, _08009E24  @ =gUnknown_082F1B48
	str r0, [r1]
_08009D9A:
	add r4, r6, #0
	add r4, r4, #184
	ldrb r3, [r4]
	cmp r3, #4
	bhi _08009DEA
	ldrb r0, [r7]
	cmp r0, #0
	bne _08009DEA
	ldr r1, _08009E28  @ =gUnknown_03001A30
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _08009DEA
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08009DEA
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08009DEA
	ldr r0, _08009E2C  @ =gUnknown_03001A1C
	ldr r1, [r0]
	ldr r0, _08009E30  @ =0x00901000
	and r1, r1, r0
	cmp r1, #0
	bne _08009DEA
	ldr r0, _08009E34  @ =gMainState
	ldr r0, [r0]
	cmp r0, #13
	bne _08009DEA
	add r2, r6, #0
	add r2, r2, #183
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #15
	bls _08009DEA
	strb r1, [r2]
	add r0, r3, #1
	strb r0, [r4]
_08009DEA:
	mov r5, #0
	ldr r7, _08009E38  @ =0x03000A71
	mov r0, #1
	mov r12, r0
	ldr r1, _08009E3C  @ =gUnknown_08587E38
	mov r8, r1
_08009DF6:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r2, r12
	and r0, r0, r2
	cmp r0, #0
	beq _08009E5A
	add r0, r6, #0
	add r0, r0, #105
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _08009E40
	add r0, r2, #1
	strb r0, [r4]
	b _08009E5A
_08009E24:
	.4byte gUnknown_082F1B48
_08009E28:
	.4byte gUnknown_03001A30
_08009E2C:
	.4byte gUnknown_03001A1C
_08009E30:
	.4byte 0x00901000
_08009E34:
	.4byte gMainState
_08009E38:
	.4byte 0x03000A71
_08009E3C:
	.4byte gUnknown_08587E38
_08009E40:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #31
	bls _08009E5A
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_08009E5A:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #5
	bls _08009DF6
	b _0800A246
_08009E66:
	add r3, r2, #0
	add r3, r3, #97
	mov r0, #1
	lsl r0, r0, r5
	ldrb r1, [r3]
	orr r0, r0, r1
	mov r1, #0
	strb r0, [r3]
	add r0, r2, #0
	add r0, r0, #99
	add r0, r5, r0
	strb r1, [r0]
	add r0, r2, #0
	add r0, r0, #105
	add r0, r5, r0
	strb r1, [r0]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #146
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08009EE0
_08009E9C:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	bne _08009EA6
	b _0800A246
_08009EA6:
	ldr r0, _08009F30  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	beq _08009F8C
	mov r5, #0
	ldr r0, _08009F34  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #52
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r5, r1
	bge _08009EE0
	ldr r2, _08009F38  @ =0x03000A10
	add r0, r2, #0
	add r0, r0, #180
	ldrh r3, [r0]
_08009ECC:
	lsl r0, r5, #4
	sub r0, r0, r5
	lsl r0, r0, #1
	cmp r3, r0
	beq _08009E66
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, r1
	blt _08009ECC
_08009EE0:
	mov r5, #0
	ldr r0, _08009F3C  @ =0x03001BA0
	mov r10, r0
	ldrb r3, [r0]
	cmp r5, r3
	bcs _08009F78
	ldr r6, _08009F38  @ =0x03000A10
	add r7, r6, #0
	add r7, r7, #97
	mov r0, #1
	mov r12, r0
	ldr r1, _08009F40  @ =gUnknown_08587E38
	mov r9, r1
	mov r2, #156
	add r2, r2, r6
	mov r8, r2
_08009F00:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r3, r12
	and r0, r0, r3
	cmp r0, #0
	beq _08009F6A
	add r0, r6, #0
	add r0, r0, #105
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r9
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _08009F44
	add r0, r2, #1
	strb r0, [r4]
	b _08009F6A
	.byte 0x00
	.byte 0x00
_08009F30:
	.4byte gUnknown_03001938
_08009F34:
	.4byte 0x030019AC
_08009F38:
	.4byte 0x03000A10
_08009F3C:
	.4byte 0x03001BA0
_08009F40:
	.4byte gUnknown_08587E38
_08009F44:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #7
	bne _08009F58
	lsl r0, r5, #2
	add r0, r0, r8
	str r1, [r0]
_08009F58:
	ldrb r0, [r3]
	cmp r0, #31
	bls _08009F6A
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_08009F6A:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	mov r0, r10
	ldrb r0, [r0]
	cmp r5, r0
	bcc _08009F00
_08009F78:
	bl sub_08008DA0
	ldr r1, _08009F88  @ =0x03000A10
	add r1, r1, #180
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0800A246
_08009F88:
	.4byte 0x03000A10
_08009F8C:
	ldr r0, _0800A008  @ =gUnknown_03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #21
	and r1, r1, r2
	mov r9, r0
	cmp r1, #0
	beq _0800A02C
	ldr r1, _0800A00C  @ =0x03000A10
	add r4, r1, #0
	add r4, r4, #97
	ldrb r2, [r4]
	ldr r5, _0800A010  @ =0x030019AC
	ldr r0, [r5]
	add r3, r0, #0
	add r3, r3, #52
	mov r0, #0
	ldrsb r0, [r3, r0]
	asr r2, r2, r0
	and r2, r2, r7
	add r6, r1, #0
	cmp r2, #0
	bne _08009FEE
	mov r0, #30
	str r0, [r6, #84]
	mov r1, #0
	ldrsb r1, [r3, r1]
	add r0, r7, #0
	lsl r0, r0, r1
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r6, #0
	add r1, r1, #99
	add r0, r0, r1
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, #6
	add r0, r0, r1
	strb r2, [r0]
_08009FEE:
	ldr r0, [r6, #84]
	cmp r0, #0
	bne _0800A01C
	mov r1, r9
	ldr r0, [r1]
	ldr r1, _0800A014  @ =0xEFFFFFFF
	and r0, r0, r1
	mov r2, r9
	str r0, [r2]
	ldr r3, _0800A018  @ =0x03001BA0
	mov r10, r3
	b _0800A0A6
	.byte 0x00
	.byte 0x00
_0800A008:
	.4byte gUnknown_03001A1C
_0800A00C:
	.4byte 0x03000A10
_0800A010:
	.4byte 0x030019AC
_0800A014:
	.4byte 0xEFFFFFFF
_0800A018:
	.4byte 0x03001BA0
_0800A01C:
	sub r0, r0, #1
	str r0, [r6, #84]
	ldr r5, _0800A028  @ =0x03001BA0
	mov r10, r5
	b _0800A0A6
	.byte 0x00
	.byte 0x00
_0800A028:
	.4byte 0x03001BA0
_0800A02C:
	ldr r2, _0800A0E8  @ =0x030019AC
	ldr r3, [r2]
	add r0, r3, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #17
	and r1, r1, r0
	ldr r6, _0800A0EC  @ =0x03000A10
	ldr r0, _0800A0F0  @ =0x03001BA0
	mov r10, r0
	cmp r1, #0
	beq _0800A0A6
	mov r5, #0
	add r0, r3, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r5, r0
	bge _0800A09E
	add r4, r6, #0
	add r4, r4, #97
	mov r7, #1
	mov r1, #99
	add r1, r1, r6
	mov r8, r1
	mov r3, #105
	add r3, r3, r6
	mov r12, r3
_0800A06A:
	ldrb r3, [r4]
	add r1, r3, #0
	asr r1, r1, r5
	and r1, r1, r7
	cmp r1, #0
	bne _0800A08A
	add r0, r7, #0
	lsl r0, r0, r5
	orr r3, r3, r0
	strb r3, [r4]
	mov r3, r8
	add r0, r5, r3
	strb r1, [r0]
	mov r3, r12
	add r0, r5, r3
	strb r1, [r0]
_0800A08A:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	ldr r0, [r2]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r5, r0
	blt _0800A06A
_0800A09E:
	ldr r0, [r2]
	add r0, r0, #52
	mov r1, #0
	strb r1, [r0]
_0800A0A6:
	mov r5, #0
	mov r0, r10
	ldrb r0, [r0]
	cmp r5, r0
	bcs _0800A124
	ldr r7, _0800A0F4  @ =0x03000A71
	mov r1, #1
	mov r12, r1
	ldr r2, _0800A0F8  @ =gUnknown_08587E38
	mov r8, r2
_0800A0BA:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r3, r12
	and r0, r0, r3
	cmp r0, #0
	beq _0800A116
	add r0, r6, #0
	add r0, r0, #105
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _0800A0FC
	add r0, r2, #1
	strb r0, [r4]
	b _0800A116
_0800A0E8:
	.4byte 0x030019AC
_0800A0EC:
	.4byte 0x03000A10
_0800A0F0:
	.4byte 0x03001BA0
_0800A0F4:
	.4byte 0x03000A71
_0800A0F8:
	.4byte gUnknown_08587E38
_0800A0FC:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #31
	bls _0800A116
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_0800A116:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	mov r0, r10
	ldrb r0, [r0]
	cmp r5, r0
	bcc _0800A0BA
_0800A124:
	mov r1, r9
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #22
	and r0, r0, r1
	cmp r0, #0
	beq _0800A1A4
	add r3, r6, #0
	add r3, r3, #98
	ldrb r2, [r3]
	ldr r5, _0800A198  @ =gUnknown_03001C78
	ldr r0, [r5]
	add r1, r0, #0
	add r1, r1, #52
	mov r0, #0
	ldrsb r0, [r1, r0]
	asr r2, r2, r0
	mov r4, #1
	and r2, r2, r4
	cmp r2, #0
	bne _0800A184
	mov r0, #30
	str r0, [r6, #88]
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r0, r4, #0
	lsl r0, r0, r1
	ldrb r1, [r3]
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r6, #0
	add r1, r1, #111
	add r0, r0, r1
	strb r2, [r0]
	ldr r0, [r5]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r1, #6
	add r0, r0, r1
	strb r2, [r0]
_0800A184:
	ldr r0, [r6, #88]
	cmp r0, #0
	bne _0800A1A0
	mov r2, r9
	ldr r0, [r2]
	ldr r1, _0800A19C  @ =0xDFFFFFFF
	and r0, r0, r1
	str r0, [r2]
	b _0800A1A4
	.byte 0x00
	.byte 0x00
_0800A198:
	.4byte gUnknown_03001C78
_0800A19C:
	.4byte 0xDFFFFFFF
_0800A1A0:
	sub r0, r0, #1
	str r0, [r6, #88]
_0800A1A4:
	mov r5, #0
	ldr r7, _0800A1E0  @ =0x03000A72
	mov r3, #1
	mov r12, r3
	ldr r0, _0800A1E4  @ =gUnknown_08587E38
	mov r8, r0
_0800A1B0:
	ldrb r0, [r7]
	asr r0, r0, r5
	mov r1, r12
	and r0, r0, r1
	cmp r0, #0
	beq _0800A202
	add r0, r6, #0
	add r0, r0, #117
	add r4, r5, r0
	sub r0, r0, #6
	add r3, r5, r0
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r2, [r4]
	ldrb r0, [r0, #1]
	cmp r2, r0
	bcs _0800A1E8
	add r0, r2, #1
	strb r0, [r4]
	b _0800A202
	.byte 0x00
	.byte 0x00
_0800A1E0:
	.4byte 0x03000A72
_0800A1E4:
	.4byte gUnknown_08587E38
_0800A1E8:
	add r0, r1, #1
	mov r1, #0
	strb r0, [r3]
	strb r1, [r4]
	ldrb r0, [r3]
	cmp r0, #31
	bls _0800A202
	strb r1, [r3]
	mov r1, r12
	lsl r1, r1, r5
	ldrb r0, [r7]
	bic r0, r0, r1
	strb r0, [r7]
_0800A202:
	add r0, r5, #1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #3
	bls _0800A1B0
	add r0, r6, #0
	add r4, r0, #0
	add r4, r4, #126
	ldrb r3, [r4]
	cmp r3, #25
	bhi _0800A246
	add r1, r0, #0
	add r1, r1, #128
	ldrh r2, [r1]
	mov r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #119
	bgt _0800A22C
	add r0, r2, #1
	strh r0, [r1]
	b _0800A246
_0800A22C:
	add r1, r6, #0
	add r1, r1, #127
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bls _0800A246
	add r0, r3, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r1]
_0800A246:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800991C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800A258
sub_0800A258: @ 0x0800A258
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r3, _0800A2B4  @ =0x03000A10
	add r4, r3, #0
	add r4, r4, #96
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800A2AA
	sub r0, r0, #1
	mov r2, #0
	strb r0, [r4]
	mov r0, #97
	add r0, r0, r3
	mov r12, r0
	mov r0, #1
	ldrb r1, [r4]
	lsl r0, r0, r1
	mov r5, r12
	ldrb r1, [r5]
	orr r0, r0, r1
	strb r0, [r5]
	add r0, r3, #0
	add r0, r0, #99
	ldrb r1, [r4]
	add r0, r0, r1
	strb r2, [r0]
	add r0, r3, #0
	add r0, r0, #105
	ldrb r4, [r4]
	add r0, r0, r4
	strb r2, [r0]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #68
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800A2AA:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800A2B4:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800A258

	THUMB_FUNC_START sub_0800A2B8
sub_0800A2B8: @ 0x0800A2B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r2, #0
	add r6, r0, #0
	mov r12, r1
	ldr r5, _0800A384  @ =0x040000D4
	ldr r0, _0800A388  @ =gUnknown_082EBC2C
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r7, _0800A38C  @ =gOamBuffer
	add r0, r0, r7
	str r0, [r5, #4]
	ldr r0, _0800A390  @ =0x84000002
	mov r9, r0
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r1, _0800A394  @ =0x000001FF
	mov r10, r1
	add r1, r6, #0
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800A398  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r3, _0800A39C  @ =0x03000A10
	ldr r2, [r3, #20]
	ldr r0, _0800A3A0  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800A3A4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r6, r6, #24
	mov r1, #4
	add r12, r12, r1
	ldr r0, _0800A3A8  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0800A3B0
	ldr r0, _0800A3AC  @ =gUnknown_082EAE78
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	mov r3, r9
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, r10
	and r6, r6, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800A398  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _0800A39C  @ =0x03000A10
	ldr r1, [r3, #24]
	b _0800A47A
	.byte 0x00
	.byte 0x00
_0800A384:
	.4byte 0x040000D4
_0800A388:
	.4byte gUnknown_082EBC2C
_0800A38C:
	.4byte gOamBuffer
_0800A390:
	.4byte 0x84000002
_0800A394:
	.4byte 0x000001FF
_0800A398:
	.4byte 0xFFFFFE00
_0800A39C:
	.4byte 0x03000A10
_0800A3A0:
	.4byte 0x000003FF
_0800A3A4:
	.4byte 0xFFFFFC00
_0800A3A8:
	.4byte gUnknown_03000BB4
_0800A3AC:
	.4byte gUnknown_082EAE78
_0800A3B0:
	ldr r1, _0800A49C  @ =0x03000A10
	ldrb r0, [r1, #13]
	ldr r3, _0800A4A0  @ =gUnknown_082EC748
	mov r8, r3
	cmp r0, #0
	beq _0800A426
	str r3, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	mov r0, r9
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	add r1, r6, #0
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800A4A4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _0800A49C  @ =0x03000A10
	ldrb r0, [r3, #13]
	lsl r0, r0, #1
	ldr r3, _0800A4A8  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, r0
	ldr r0, _0800A4AC  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800A4B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r6, r6, #8
_0800A426:
	mov r1, r8
	str r1, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	mov r3, r9
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	mov r0, r10
	and r6, r6, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800A4A4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, r12
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r3, _0800A49C  @ =0x03000A10
	ldrb r0, [r3, #12]
	lsl r0, r0, #1
	ldr r3, _0800A4A8  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, r0
_0800A47A:
	ldr r0, _0800A4AC  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800A4B0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800A49C:
	.4byte 0x03000A10
_0800A4A0:
	.4byte gUnknown_082EC748
_0800A4A4:
	.4byte 0xFFFFFE00
_0800A4A8:
	.4byte gUnknown_03001B30
_0800A4AC:
	.4byte 0x000003FF
_0800A4B0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800A2B8

	THUMB_FUNC_START sub_0800A4B4
sub_0800A4B4: @ 0x0800A4B4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	mov r8, r1
	add r4, r2, #0
	add r7, r3, #0
	ldr r0, [sp, #44]
	mov r9, r0
	ldr r1, _0800A4F8  @ =gUnknown_08076387
	mov r0, sp
	mov r2, #3
	bl memcpy
	mov r3, #0
	ldr r0, _0800A4FC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800A4E6
	b _0800A7D2
_0800A4E6:
	ldr r0, _0800A500  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r2, #8
	and r1, r1, r2
	cmp r1, #0
	beq _0800A504
	mov r3, #3
	b _0800A526
	.byte 0x00
	.byte 0x00
_0800A4F8:
	.4byte gUnknown_08076387
_0800A4FC:
	.4byte gUnknown_03000B80
_0800A500:
	.4byte gUnknown_03000B90
_0800A504:
	ldr r0, _0800A5D0  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0800A512
	mov r3, #1
_0800A512:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800A51C
	add r3, r3, #1
_0800A51C:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800A526
	add r3, r3, #1
_0800A526:
	mov r1, #3
	sub r1, r1, r3
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r6, r5, r0
	mov r1, r8
	str r1, [sp, #4]
	mov r2, #0
	mov r8, r2
	ldr r5, _0800A5D4  @ =0x040000D4
	ldr r0, _0800A5D8  @ =gOamBuffer
	mov r12, r0
	ldr r1, _0800A5DC  @ =0x03000A10
	str r1, [sp, #8]
	mov r10, sp
_0800A546:
	ldr r0, _0800A5E0  @ =gUnknown_03001A30
	add r0, r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A604
	ldr r0, [sp, #8]
	add r0, r0, #224
	ldr r0, [r0]
	str r0, [r5]
	mov r2, r9
	ldrh r0, [r2]
	ldr r1, _0800A5E4  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800A5E8  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A5EC  @ =gUnknown_082EAF90
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800A5F0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _0800A5F4  @ =0x000001FF
	add r0, r1, #0
	add r1, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800A5F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0800A5FC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800A600  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r0, r10
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	b _0800A7AA
	.byte 0x00
	.byte 0x00
_0800A5D0:
	.4byte gUnknown_030009D0
_0800A5D4:
	.4byte 0x040000D4
_0800A5D8:
	.4byte gOamBuffer
_0800A5DC:
	.4byte 0x03000A10
_0800A5E0:
	.4byte gUnknown_03001A30
_0800A5E4:
	.4byte 0x06010000
_0800A5E8:
	.4byte 0x84000020
_0800A5EC:
	.4byte gUnknown_082EAF90
_0800A5F0:
	.4byte 0x84000002
_0800A5F4:
	.4byte 0x000001FF
_0800A5F8:
	.4byte 0xFFFFFE00
_0800A5FC:
	.4byte 0x000003FF
_0800A600:
	.4byte 0xFFFFFC00
_0800A604:
	ldr r2, _0800A6C8  @ =gUnknown_03000B90
	ldr r0, [r2, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0800A646
	mov r0, r8
	cmp r0, #0
	bne _0800A622
	ldr r2, _0800A6CC  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0800A64C
_0800A622:
	mov r0, r8
	cmp r0, #1
	bne _0800A634
	ldr r2, _0800A6CC  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0800A64C
_0800A634:
	mov r0, r8
	cmp r0, #2
	bne _0800A646
	ldr r2, _0800A6CC  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0800A64C
_0800A646:
	ldr r0, [sp, #48]
	cmp r0, #1
	bne _0800A6F4
_0800A64C:
	ldr r1, _0800A6D0  @ =gUnknown_082EB1C4
	str r1, [r5]
	mov r2, r9
	ldrh r0, [r2]
	ldr r1, _0800A6D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800A6D8  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800A6DC  @ =gUnknown_082EB1BC
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800A6E0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _0800A6E4  @ =0x000001FF
	add r0, r1, #0
	add r1, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800A6E8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0800A6EC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800A6F0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r0, r10
	ldrb r1, [r0]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	b _0800A7AA
	.byte 0x00
	.byte 0x00
_0800A6C8:
	.4byte gUnknown_03000B90
_0800A6CC:
	.4byte gUnknown_030009D0
_0800A6D0:
	.4byte gUnknown_082EB1C4
_0800A6D4:
	.4byte 0x06010000
_0800A6D8:
	.4byte 0x84000020
_0800A6DC:
	.4byte gUnknown_082EB1BC
_0800A6E0:
	.4byte 0x84000002
_0800A6E4:
	.4byte 0x000001FF
_0800A6E8:
	.4byte 0xFFFFFE00
_0800A6EC:
	.4byte 0x000003FF
_0800A6F0:
	.4byte 0xFFFFFC00
_0800A6F4:
	mov r2, r8
	cmp r2, #0
	bne _0800A706
	ldr r0, _0800A7E4  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	bne _0800A736
_0800A706:
	mov r1, r8
	cmp r1, #1
	bne _0800A718
	ldr r2, _0800A7E4  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	bne _0800A736
_0800A718:
	mov r0, r8
	cmp r0, #2
	bne _0800A72A
	ldr r2, _0800A7E4  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0800A736
_0800A72A:
	ldr r1, _0800A7E8  @ =gUnknown_03000B90
	ldr r0, [r1, #32]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0800A7C4
_0800A736:
	ldr r2, _0800A7EC  @ =gUnknown_082EAF98
	str r2, [r5]
	mov r1, r9
	ldrh r0, [r1]
	ldr r1, _0800A7F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800A7F4  @ =0x84000020
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r2, _0800A7F8  @ =gUnknown_082EAF90
	str r2, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800A7FC  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, _0800A800  @ =0x000001FF
	add r0, r1, #0
	add r1, r6, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800A804  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r0, _0800A808  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800A80C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800A7AA:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldrh r0, [r7]
	add r0, r0, #4
	strh r0, [r7]
	add r6, r6, #12
_0800A7C4:
	mov r2, #1
	add r10, r10, r2
	add r8, r8, r2
	mov r0, r8
	cmp r0, #2
	bgt _0800A7D2
	b _0800A546
_0800A7D2:
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
_0800A7E4:
	.4byte gUnknown_030009D0
_0800A7E8:
	.4byte gUnknown_03000B90
_0800A7EC:
	.4byte gUnknown_082EAF98
_0800A7F0:
	.4byte 0x06010000
_0800A7F4:
	.4byte 0x84000020
_0800A7F8:
	.4byte gUnknown_082EAF90
_0800A7FC:
	.4byte 0x84000002
_0800A800:
	.4byte 0x000001FF
_0800A804:
	.4byte 0xFFFFFE00
_0800A808:
	.4byte 0x000003FF
_0800A80C:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800A4B4

	THUMB_FUNC_START sub_0800A810
sub_0800A810: @ 0x0800A810
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #44
	add r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #12]
	ldr r1, _0800A89C  @ =0x03000A10
	add r0, r1, #0
	add r0, r0, #48
	ldrb r0, [r0]
	str r1, [sp, #36]
	cmp r0, #1
	beq _0800A834
	bl _0800C55E
_0800A834:
	ldr r0, _0800A8A0  @ =gNextMainState
	ldr r0, [r0]
	cmp r0, #31
	bne _0800A840
	bl _0800C55E
_0800A840:
	add r5, r1, #0
	add r5, r5, #51
	ldrb r0, [r5]
	cmp r0, #5
	bne _0800A84C
	b _0800A98C
_0800A84C:
	mov r0, #8
	str r0, [sp, #16]
	ldr r1, _0800A8A4  @ =0x040000D4
	ldr r0, _0800A8A8  @ =gUnknown_082F0CF4
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800A8AC  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _0800A8B0  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r3
	mov r4, #181
	ldrh r2, [r1, #2]
	ldr r0, _0800A8B4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r3
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	bne _0800A8B8
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _0800A8C8
	.byte 0x00
	.byte 0x00
_0800A89C:
	.4byte 0x03000A10
_0800A8A0:
	.4byte gNextMainState
_0800A8A4:
	.4byte 0x040000D4
_0800A8A8:
	.4byte gUnknown_082F0CF4
_0800A8AC:
	.4byte gOamBuffer
_0800A8B0:
	.4byte 0x84000002
_0800A8B4:
	.4byte 0xFFFFFE00
_0800A8B8:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r4, _0800A93C  @ =gOamBuffer
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
_0800A8C8:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r0, _0800A93C  @ =gOamBuffer
	add r1, r1, r0
	ldr r3, [sp, #36]
	ldr r2, [r3, #28]
	ldr r0, _0800A940  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800A944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, #8
	ldr r1, _0800A948  @ =0x040000D4
	ldr r0, _0800A94C  @ =gUnknown_082F0C88
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800A93C  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800A950  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #224
	ldrh r2, [r1, #2]
	ldr r0, _0800A954  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800A93C  @ =gOamBuffer
	add r0, r0, r3
	strb r4, [r0]
	ldr r0, [sp, #36]
	add r0, r0, #51
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800A958
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
	b _0800A968
	.byte 0x00
	.byte 0x00
_0800A93C:
	.4byte gOamBuffer
_0800A940:
	.4byte 0x000003FF
_0800A944:
	.4byte 0xFFFFFC00
_0800A948:
	.4byte 0x040000D4
_0800A94C:
	.4byte gUnknown_082F0C88
_0800A950:
	.4byte 0x84000002
_0800A954:
	.4byte 0xFFFFFE00
_0800A958:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800A9F8  @ =gOamBuffer
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
_0800A968:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldr r0, _0800A9F8  @ =gOamBuffer
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r0
	ldr r3, [sp, #36]
	ldr r2, [r3, #32]
	ldr r0, _0800A9FC  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800AA00  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800A98C:
	ldr r4, [sp, #36]
	add r4, r4, #51
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800A998
	b _0800AC1E
_0800A998:
	cmp r0, #5
	bne _0800A99E
	b _0800AC1E
_0800A99E:
	mov r0, #4
	str r0, [sp, #16]
	ldr r1, [sp, #36]
	ldrb r0, [r1, #16]
	cmp r0, #0
	beq _0800AA72
	ldr r1, _0800AA04  @ =0x040000D4
	ldr r2, _0800AA08  @ =gUnknown_082EC748
	str r2, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800A9F8  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r1, #4]
	ldr r0, _0800AA0C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r3
	mov r3, #200
	ldrh r2, [r1, #2]
	ldr r0, _0800AA10  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0800A9F8  @ =gOamBuffer
	add r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800AA14
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r1
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800AA44
	.byte 0x00
	.byte 0x00
_0800A9F8:
	.4byte gOamBuffer
_0800A9FC:
	.4byte 0x000003FF
_0800AA00:
	.4byte 0xFFFFFC00
_0800AA04:
	.4byte 0x040000D4
_0800AA08:
	.4byte gUnknown_082EC748
_0800AA0C:
	.4byte 0x84000002
_0800AA10:
	.4byte 0xFFFFFE00
_0800AA14:
	cmp r0, #2
	bne _0800AA30
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800AA2C  @ =gOamBuffer
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	b _0800AA44
	.byte 0x00
	.byte 0x00
_0800AA2C:
	.4byte gOamBuffer
_0800AA30:
	cmp r0, #2
	bls _0800AA48
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r4, _0800AAD0  @ =gOamBuffer
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800AA44:
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800AA48:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800AAD0  @ =gOamBuffer
	add r2, r2, r0
	ldr r1, [sp, #36]
	ldrb r0, [r1, #16]
	lsl r0, r0, #1
	ldr r4, _0800AAD4  @ =gUnknown_03001B30
	ldr r1, [r4, #4]
	add r1, r1, r0
	ldr r3, _0800AAD8  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800AADC  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800AA72:
	ldr r4, [sp, #36]
	ldrb r1, [r4, #16]
	ldrb r0, [r4, #15]
	orr r0, r0, r1
	cmp r0, #0
	beq _0800AB4E
	ldr r1, _0800AAE0  @ =0x040000D4
	ldr r0, _0800AAE4  @ =gUnknown_082EC748
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800AAD0  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800AAE8  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #208
	ldrh r2, [r1, #2]
	ldr r0, _0800AAEC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800AAD0  @ =gOamBuffer
	add r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r0, [sp, #36]
	add r0, r0, #51
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AAF0
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800AB20
	.byte 0x00
	.byte 0x00
_0800AAD0:
	.4byte gOamBuffer
_0800AAD4:
	.4byte gUnknown_03001B30
_0800AAD8:
	.4byte 0x000003FF
_0800AADC:
	.4byte 0xFFFFFC00
_0800AAE0:
	.4byte 0x040000D4
_0800AAE4:
	.4byte gUnknown_082EC748
_0800AAE8:
	.4byte 0x84000002
_0800AAEC:
	.4byte 0xFFFFFE00
_0800AAF0:
	cmp r0, #2
	bne _0800AB0C
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800AB08  @ =gOamBuffer
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	b _0800AB20
	.byte 0x00
	.byte 0x00
_0800AB08:
	.4byte gOamBuffer
_0800AB0C:
	cmp r0, #2
	bls _0800AB24
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800ABA0  @ =gOamBuffer
	add r2, r2, r1
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800AB20:
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800AB24:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800ABA0  @ =gOamBuffer
	add r2, r2, r3
	ldr r4, [sp, #36]
	ldrb r0, [r4, #15]
	lsl r0, r0, #1
	ldr r3, _0800ABA4  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, r0
	ldr r4, _0800ABA8  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800ABAC  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800AB4E:
	ldr r1, _0800ABB0  @ =0x040000D4
	ldr r0, _0800ABB4  @ =gUnknown_082EC748
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800ABA0  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _0800ABB8  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #216
	ldrh r2, [r1, #2]
	ldr r0, _0800ABBC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800ABA0  @ =gOamBuffer
	add r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r0, [sp, #36]
	add r0, r0, #51
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800ABC0
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800ABF0
	.byte 0x00
	.byte 0x00
_0800ABA0:
	.4byte gOamBuffer
_0800ABA4:
	.4byte gUnknown_03001B30
_0800ABA8:
	.4byte 0x000003FF
_0800ABAC:
	.4byte 0xFFFFFC00
_0800ABB0:
	.4byte 0x040000D4
_0800ABB4:
	.4byte gUnknown_082EC748
_0800ABB8:
	.4byte 0x84000002
_0800ABBC:
	.4byte 0xFFFFFE00
_0800ABC0:
	cmp r0, #2
	bne _0800ABDC
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800ABD8  @ =gOamBuffer
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	b _0800ABF0
	.byte 0x00
	.byte 0x00
_0800ABD8:
	.4byte gOamBuffer
_0800ABDC:
	cmp r0, #2
	bls _0800ABF4
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800AD5C  @ =gOamBuffer
	add r2, r2, r1
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800ABF0:
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800ABF4:
	ldr r0, _0800AD5C  @ =gOamBuffer
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r0
	ldr r3, [sp, #36]
	ldrb r0, [r3, #14]
	lsl r0, r0, #1
	ldr r1, _0800AD60  @ =gUnknown_03001B30
	ldr r1, [r1, #4]
	add r1, r1, r0
	ldr r4, _0800AD64  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800AD68  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800AC1E:
	ldr r0, _0800AD6C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	beq _0800AC2C
	b _0800AED4
_0800AC2C:
	ldr r0, [sp, #36]
	add r0, r0, #212
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AC38
	b _0800AED4
_0800AC38:
	ldr r6, [sp, #36]
	add r6, r6, #210
	ldrh r0, [r6]
	cmp r0, #112
	beq _0800AC44
	b _0800AD9C
_0800AC44:
	ldr r4, _0800AD70  @ =0x040000D4
	ldr r0, [sp, #36]
	add r0, r0, #206
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0800AD74  @ =gUnknown_082E9654
	add r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	ldr r1, _0800AD78  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800AD7C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AD80  @ =gUnknown_082E964C
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800AD5C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r2, _0800AD84  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r3, [sp, #36]
	add r3, r3, #208
	mov r12, r3
	ldrh r2, [r3]
	ldr r0, _0800AD88  @ =0x000001FF
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0800AD8C  @ =0xFFFFFE00
	mov r9, r0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r6]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800AD64  @ =0x000003FF
	mov r10, r3
	mov r0, r10
	and r1, r1, r0
	ldr r3, _0800AD68  @ =0xFFFFFC00
	mov r8, r3
	mov r0, r8
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldr r0, [sp, #36]
	add r0, r0, #213
	ldrb r0, [r0]
	cmp r0, #11
	bhi _0800ACF2
	b _0800AED4
_0800ACF2:
	ldr r0, _0800AD90  @ =gUnknown_082E94F4
	str r0, [r4]
	ldrh r0, [r3]
	ldr r2, _0800AD78  @ =0x06010000
	add r0, r0, r2
	str r0, [r4, #4]
	ldr r0, _0800AD94  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AD98  @ =gUnknown_082E94EC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r3, _0800AD84  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r4, r12
	ldrh r1, [r4]
	add r1, r1, #8
	ldr r0, _0800AD88  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r6]
	add r0, r0, #32
	strb r0, [r1]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	add r0, r0, r1
	mov r4, r10
	and r0, r0, r4
	mov r1, r8
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800AEBE
_0800AD5C:
	.4byte gOamBuffer
_0800AD60:
	.4byte gUnknown_03001B30
_0800AD64:
	.4byte 0x000003FF
_0800AD68:
	.4byte 0xFFFFFC00
_0800AD6C:
	.4byte gUnknown_03000B80
_0800AD70:
	.4byte 0x040000D4
_0800AD74:
	.4byte gUnknown_082E9654
_0800AD78:
	.4byte 0x06010000
_0800AD7C:
	.4byte 0x84000100
_0800AD80:
	.4byte gUnknown_082E964C
_0800AD84:
	.4byte 0x84000002
_0800AD88:
	.4byte 0x000001FF
_0800AD8C:
	.4byte 0xFFFFFE00
_0800AD90:
	.4byte gUnknown_082E94F4
_0800AD94:
	.4byte 0x84000020
_0800AD98:
	.4byte gUnknown_082E94EC
_0800AD9C:
	ldr r4, _0800AF08  @ =0x040000D4
	ldr r0, [sp, #36]
	add r0, r0, #206
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0800AF0C  @ =gUnknown_082E9654
	add r0, r0, r1
	str r0, [r4]
	ldr r3, [sp, #12]
	ldrh r0, [r3]
	ldr r1, _0800AF10  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800AF14  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AF18  @ =gUnknown_082E964C
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800AF1C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0800AF20  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [sp, #36]
	add r2, r2, #208
	mov r12, r2
	ldrh r2, [r2]
	ldr r3, _0800AF24  @ =0x000001FF
	and r2, r2, r3
	ldrh r3, [r1, #2]
	ldr r0, _0800AF28  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r6]
	add r0, r0, #16
	strb r0, [r1]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800AF2C  @ =0x000003FF
	mov r9, r3
	mov r0, r9
	and r1, r1, r0
	ldr r3, _0800AF30  @ =0xFFFFFC00
	mov r8, r3
	mov r0, r8
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	ldr r0, [sp, #36]
	add r0, r0, #213
	ldrb r0, [r0]
	cmp r0, #11
	bls _0800AED4
	ldr r0, _0800AF34  @ =gUnknown_082E94F4
	str r0, [r4]
	ldrh r0, [r3]
	ldr r2, _0800AF10  @ =0x06010000
	add r0, r0, r2
	str r0, [r4, #4]
	ldr r0, _0800AF38  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800AF3C  @ =gUnknown_082E94EC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r3, _0800AF20  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r4, r12
	ldrh r1, [r4]
	add r1, r1, #8
	ldr r0, _0800AF24  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r1, [r6]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	add r0, r0, r1
	mov r4, r9
	and r0, r0, r4
	mov r1, r8
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r0, [r1, #3]
	mov r2, #32
	orr r0, r0, r2
	strb r0, [r1, #3]
_0800AEBE:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	add r0, r0, #4
	strh r0, [r2]
_0800AED4:
	ldr r0, _0800AF40  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800AEE2
	b _0800B126
_0800AEE2:
	mov r3, #100
	mov r9, r3
	mov r4, #12
	str r4, [sp, #16]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800AF44
	ldr r1, [sp, #12]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #100
	mov r1, #12
	add r2, r7, #0
	ldr r3, [sp, #8]
	bl sub_0800A4B4
	b _0800B126
	.byte 0x00
	.byte 0x00
_0800AF08:
	.4byte 0x040000D4
_0800AF0C:
	.4byte gUnknown_082E9654
_0800AF10:
	.4byte 0x06010000
_0800AF14:
	.4byte 0x84000100
_0800AF18:
	.4byte gUnknown_082E964C
_0800AF1C:
	.4byte gOamBuffer
_0800AF20:
	.4byte 0x84000002
_0800AF24:
	.4byte 0x000001FF
_0800AF28:
	.4byte 0xFFFFFE00
_0800AF2C:
	.4byte 0x000003FF
_0800AF30:
	.4byte 0xFFFFFC00
_0800AF34:
	.4byte gUnknown_082E94F4
_0800AF38:
	.4byte 0x84000020
_0800AF3C:
	.4byte gUnknown_082E94EC
_0800AF40:
	.4byte gUnknown_03000B90
_0800AF44:
	ldr r0, [sp, #36]
	add r0, r0, #183
	ldrb r0, [r0]
	cmp r0, #11
	bls _0800AF50
	b _0800B126
_0800AF50:
	mov r2, #0
	mov r12, r2
	ldr r6, _0800AF84  @ =0x040000D4
	ldr r3, _0800AF88  @ =0x06010000
	mov r8, r3
	ldr r5, _0800AF8C  @ =0x84000020
	ldr r4, _0800AF90  @ =gOamBuffer
	ldr r0, _0800AF94  @ =0xFFFFFC00
	mov r10, r0
_0800AF62:
	mov r0, r12
	add r0, r0, #3
	ldr r1, _0800AF98  @ =gUnknown_03001A30
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B048
	mov r2, r12
	cmp r2, #0
	bne _0800AFA0
	ldr r3, _0800AF9C  @ =0x03000AD0
	ldr r0, [r3]
	str r0, [r6]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	b _0800AFC2
	.byte 0x00
	.byte 0x00
_0800AF84:
	.4byte 0x040000D4
_0800AF88:
	.4byte 0x06010000
_0800AF8C:
	.4byte 0x84000020
_0800AF90:
	.4byte gOamBuffer
_0800AF94:
	.4byte 0xFFFFFC00
_0800AF98:
	.4byte gUnknown_03001A30
_0800AF9C:
	.4byte 0x03000AD0
_0800AFA0:
	mov r2, r12
	cmp r2, #1
	bne _0800AFB8
	ldr r3, _0800AFB4  @ =0x03000AD4
	ldr r0, [r3]
	str r0, [r6]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	b _0800AFC2
	.byte 0x00
	.byte 0x00
_0800AFB4:
	.4byte 0x03000AD4
_0800AFB8:
	ldr r2, _0800B030  @ =0x03000AD8
	ldr r0, [r2]
	str r0, [r6]
	ldr r3, [sp, #12]
	ldrh r0, [r3]
_0800AFC2:
	add r0, r0, r8
	str r0, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800B034  @ =gUnknown_082F15F8
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800B038  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800B03C  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B040  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800B044  @ =0x000003FF
	and r1, r1, r3
	mov r0, r10
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	b _0800B0FC
_0800B030:
	.4byte 0x03000AD8
_0800B034:
	.4byte gUnknown_082F15F8
_0800B038:
	.4byte 0x84000002
_0800B03C:
	.4byte 0x000001FF
_0800B040:
	.4byte 0xFFFFFE00
_0800B044:
	.4byte 0x000003FF
_0800B048:
	ldr r3, _0800B0CC  @ =gUnknown_082F1600
	str r3, [r6]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	add r0, r0, r8
	str r0, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldr r2, _0800B0D0  @ =gUnknown_082F15F8
	str r2, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800B0D4  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B0D8  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B0DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0800B0E0  @ =0x000003FF
	and r1, r1, r3
	mov r0, r10
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldr r1, _0800B0E4  @ =gUnknown_03000B58
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0800B0EC
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800B0E8  @ =gOamBuffer
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _0800B0FC
	.byte 0x00
	.byte 0x00
_0800B0CC:
	.4byte gUnknown_082F1600
_0800B0D0:
	.4byte gUnknown_082F15F8
_0800B0D4:
	.4byte 0x84000002
_0800B0D8:
	.4byte 0x000001FF
_0800B0DC:
	.4byte 0xFFFFFE00
_0800B0E0:
	.4byte 0x000003FF
_0800B0E4:
	.4byte gUnknown_03000B58
_0800B0E8:
	.4byte gOamBuffer
_0800B0EC:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r0, _0800B1CC  @ =gOamBuffer
	add r2, r2, r0
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #128
_0800B0FC:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, [sp, #12]
	ldrh r0, [r1]
	add r0, r0, #128
	strh r0, [r1]
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	add r0, r0, #4
	strh r0, [r2]
	mov r3, #17
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	mov r1, r12
	cmp r1, #2
	bgt _0800B126
	b _0800AF62
_0800B126:
	ldr r0, _0800B1D0  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800B134
	b _0800B5F0
_0800B134:
	mov r2, #5
	mov r9, r2
	mov r3, #17
	str r3, [sp, #16]
	ldr r6, _0800B1D4  @ =0x03000A10
	add r0, r6, #0
	add r0, r0, #97
	ldrb r0, [r0]
	str r6, [sp, #36]
	cmp r0, #0
	bne _0800B14C
	b _0800B44C
_0800B14C:
	mov r4, #0
	mov r12, r4
	add r0, r6, #0
	add r0, r0, #96
	ldrb r0, [r0]
	cmp r12, r0
	blt _0800B15C
	b _0800B260
_0800B15C:
	ldr r5, _0800B1D8  @ =0x040000D4
	ldr r4, _0800B1CC  @ =gOamBuffer
	ldr r0, _0800B1DC  @ =gUnknown_082EC2D8
	mov r10, r0
	ldr r1, _0800B1E0  @ =0x84000002
	mov r8, r1
_0800B168:
	ldr r2, _0800B1E4  @ =0x03001BA0
	ldrb r2, [r2]
	cmp r12, r2
	bge _0800B1F8
	mov r3, r10
	str r3, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	mov r0, r8
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800B1E8  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B1EC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, [r6, #76]
	add r1, r1, #16
	ldr r3, _0800B1F0  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r0, _0800B1F4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, #13
	add r9, r9, r0
	b _0800B250
	.byte 0x00
	.byte 0x00
_0800B1CC:
	.4byte gOamBuffer
_0800B1D0:
	.4byte gUnknown_03000B90
_0800B1D4:
	.4byte 0x03000A10
_0800B1D8:
	.4byte 0x040000D4
_0800B1DC:
	.4byte gUnknown_082EC2D8
_0800B1E0:
	.4byte 0x84000002
_0800B1E4:
	.4byte 0x03001BA0
_0800B1E8:
	.4byte 0x000001FF
_0800B1EC:
	.4byte 0xFFFFFE00
_0800B1F0:
	.4byte 0x000003FF
_0800B1F4:
	.4byte 0xFFFFFC00
_0800B1F8:
	mov r1, r10
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	mov r2, r8
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B370  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B374  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	ldr r0, _0800B378  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800B37C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
_0800B250:
	mov r2, #1
	add r12, r12, r2
	ldr r6, [sp, #36]
	add r0, r6, #0
	add r0, r0, #96
	ldrb r0, [r0]
	cmp r12, r0
	blt _0800B168
_0800B260:
	mov r3, r12
	cmp r3, #5
	ble _0800B26A
	bl _0800C458
_0800B26A:
	ldr r4, _0800B380  @ =0x03000A10
	str r4, [sp, #20]
	ldr r5, _0800B384  @ =0x040000D4
	ldr r6, _0800B388  @ =gOamBuffer
_0800B272:
	ldr r0, [sp, #20]
	add r0, r0, #97
	ldrb r0, [r0]
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800B286
	b _0800B3C8
_0800B286:
	ldr r4, [sp, #36]
	add r4, r4, #99
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0800B38C  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, [sp, #12]
	ldrh r0, [r2]
	ldr r1, _0800B390  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800B394  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800B398  @ =gUnknown_085882B8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r3, _0800B39C  @ =0x84000002
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	sub r1, r1, #8
	ldr r4, _0800B370  @ =0x000001FF
	and r1, r1, r4
	ldrh r3, [r2, #2]
	ldr r0, _0800B374  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _0800B378  @ =0x000003FF
	mov r8, r4
	mov r0, r8
	and r1, r1, r0
	ldr r4, _0800B37C  @ =0xFFFFFC00
	mov r10, r4
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r0, _0800B3A0  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800B39C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800B370  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800B374  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800B3A4
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800B388  @ =gOamBuffer
	add r2, r2, r3
	ldr r4, [sp, #20]
	ldr r1, [r4, #76]
	mov r0, r8
	and r1, r1, r0
	b _0800B3B6
_0800B370:
	.4byte 0x000001FF
_0800B374:
	.4byte 0xFFFFFE00
_0800B378:
	.4byte 0x000003FF
_0800B37C:
	.4byte 0xFFFFFC00
_0800B380:
	.4byte 0x03000A10
_0800B384:
	.4byte 0x040000D4
_0800B388:
	.4byte gOamBuffer
_0800B38C:
	.4byte gUnknown_085882C0
_0800B390:
	.4byte 0x06010000
_0800B394:
	.4byte 0x84000100
_0800B398:
	.4byte gUnknown_085882B8
_0800B39C:
	.4byte 0x84000002
_0800B3A0:
	.4byte gUnknown_082EC2D8
_0800B3A4:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800B3C4  @ =gOamBuffer
	add r2, r2, r1
	ldr r3, [sp, #20]
	ldr r1, [r3, #76]
	add r1, r1, #8
	mov r4, r8
	and r1, r1, r4
_0800B3B6:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800B418
	.byte 0x00
	.byte 0x00
_0800B3C4:
	.4byte gOamBuffer
_0800B3C8:
	ldr r0, _0800B434  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800B438  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800B43C  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800B440  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #36]
	ldr r1, [r0, #76]
	add r1, r1, #8
	ldr r2, _0800B444  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800B448  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_0800B418:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r4, #1
	add r12, r12, r4
	mov r0, r12
	cmp r0, #5
	bgt _0800B42E
	b _0800B272
_0800B42E:
	bl _0800C458
	.byte 0x00
	.byte 0x00
_0800B434:
	.4byte gUnknown_082EC2D8
_0800B438:
	.4byte 0x84000002
_0800B43C:
	.4byte 0x000001FF
_0800B440:
	.4byte 0xFFFFFE00
_0800B444:
	.4byte 0x000003FF
_0800B448:
	.4byte 0xFFFFFC00
_0800B44C:
	mov r1, #0
	mov r12, r1
	ldr r3, _0800B4B8  @ =0x03001BC8
	ldrb r1, [r3]
	ldr r2, _0800B4BC  @ =0x03001BCC
	ldrb r0, [r2]
	sub r1, r1, r0
	cmp r12, r1
	bge _0800B548
	ldr r5, _0800B4C0  @ =0x040000D4
	ldr r4, _0800B4C4  @ =gOamBuffer
	ldr r2, _0800B4C8  @ =0xFFFFFC00
	mov r10, r2
	ldr r3, _0800B4CC  @ =gUnknown_082EC2D8
	mov r8, r3
	ldr r6, _0800B4D0  @ =0x84000002
_0800B46C:
	ldr r0, _0800B4D4  @ =0x03001BA0
	ldrb r0, [r0]
	cmp r12, r0
	bge _0800B4E0
	mov r1, r8
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B4D8  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B4DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	add r1, r1, #16
	b _0800B51E
	.byte 0x00
	.byte 0x00
_0800B4B8:
	.4byte 0x03001BC8
_0800B4BC:
	.4byte 0x03001BCC
_0800B4C0:
	.4byte 0x040000D4
_0800B4C4:
	.4byte gOamBuffer
_0800B4C8:
	.4byte 0xFFFFFC00
_0800B4CC:
	.4byte gUnknown_082EC2D8
_0800B4D0:
	.4byte 0x84000002
_0800B4D4:
	.4byte 0x03001BA0
_0800B4D8:
	.4byte 0x000001FF
_0800B4DC:
	.4byte 0xFFFFFE00
_0800B4E0:
	mov r2, r8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	str r6, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800B5C8  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B5CC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
_0800B51E:
	ldr r0, _0800B5D0  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r3, _0800B5D4  @ =0x03001BC8
	ldrb r0, [r3]
	ldr r2, _0800B5D8  @ =0x03001BCC
	ldrb r1, [r2]
	sub r0, r0, r1
	cmp r12, r0
	blt _0800B46C
_0800B548:
	mov r3, r12
	cmp r3, #5
	ble _0800B552
	bl _0800C458
_0800B552:
	ldr r5, _0800B5DC  @ =0x040000D4
	ldr r4, _0800B5E0  @ =gOamBuffer
	ldr r0, _0800B5CC  @ =0xFFFFFE00
	mov r8, r0
	ldr r6, _0800B5E4  @ =0xFFFFFC00
_0800B55C:
	ldr r0, _0800B5E8  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800B5EC  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800B5C8  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r0, [sp, #36]
	ldr r1, [r0, #76]
	add r1, r1, #8
	ldr r2, _0800B5D0  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	mov r1, r12
	cmp r1, #5
	ble _0800B55C
	bl _0800C458
	.byte 0x00
	.byte 0x00
_0800B5C8:
	.4byte 0x000001FF
_0800B5CC:
	.4byte 0xFFFFFE00
_0800B5D0:
	.4byte 0x000003FF
_0800B5D4:
	.4byte 0x03001BC8
_0800B5D8:
	.4byte 0x03001BCC
_0800B5DC:
	.4byte 0x040000D4
_0800B5E0:
	.4byte gOamBuffer
_0800B5E4:
	.4byte 0xFFFFFC00
_0800B5E8:
	.4byte gUnknown_082EC2D8
_0800B5EC:
	.4byte 0x84000002
_0800B5F0:
	mov r0, #2
	and r1, r1, r0
	ldr r2, _0800B91C  @ =0x03000A10
	str r2, [sp, #36]
	cmp r1, #0
	bne _0800B600
	bl _0800C458
_0800B600:
	ldr r0, _0800B920  @ =gUnknown_03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #10
	and r0, r0, r1
	cmp r0, #0
	bne _0800B610
	b _0800BB30
_0800B610:
	mov r3, #84
	mov r9, r3
	mov r4, #14
	str r4, [sp, #16]
	mov r0, #0
	mov r12, r0
	ldr r0, _0800B924  @ =0x030019AC
	ldr r1, [r0]
	add r1, r1, #52
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	cmp r12, r1
	blt _0800B62E
	b _0800B9A2
_0800B62E:
	str r2, [sp, #24]
	ldr r1, _0800B928  @ =0x040000D4
	mov r8, r1
	ldr r6, _0800B92C  @ =gOamBuffer
_0800B636:
	ldr r0, [sp, #24]
	add r0, r0, #180
	ldrh r1, [r0]
	mov r2, r12
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #1
	cmp r1, r0
	bgt _0800B69C
	ldr r3, _0800B930  @ =gUnknown_082EC2D8
	mov r4, r8
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _0800B934  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800B938  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r0, [sp, #36]
	ldr r2, [r0, #76]
	ldr r0, _0800B940  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800B944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800B69C:
	ldr r1, [sp, #24]
	add r1, r1, #97
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800B6A8
	b _0800B7AC
_0800B6A8:
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0800B7AC
	ldr r5, _0800B928  @ =0x040000D4
	ldr r4, [sp, #24]
	add r4, r4, #99
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r2, _0800B948  @ =gUnknown_085882C0
	add r0, r0, r2
	str r0, [r5]
	ldr r3, [sp, #12]
	ldrh r0, [r3]
	ldr r1, _0800B94C  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800B950  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r4, _0800B954  @ =gUnknown_085882B8
	str r4, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800B934  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, r9
	sub r2, r2, #8
	ldr r3, _0800B938  @ =0x000001FF
	and r2, r2, r3
	ldrh r3, [r1, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r4, [sp, #8]
	ldrh r4, [r4]
	add r1, r1, r4
	ldr r0, _0800B940  @ =0x000003FF
	mov r10, r0
	mov r4, r10
	and r1, r1, r4
	ldr r0, _0800B944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800B7AC
	ldr r2, _0800B930  @ =gUnknown_082EC2D8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800B92C  @ =gOamBuffer
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r4, _0800B934  @ =0x84000002
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	mov r1, r9
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0800B92C  @ =gOamBuffer
	add r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r1
	ldr r3, [sp, #24]
	ldr r1, [r3, #76]
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #4]
	ldr r0, _0800B944  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800B7AC:
	mov r1, r12
	lsl r0, r1, #2
	ldr r2, _0800B958  @ =0x03000AAC
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #1
	cmp r1, r0
	ble _0800B7C0
	b _0800B986
_0800B7C0:
	ldr r3, _0800B95C  @ =gUnknown_082EC748
	mov r4, r8
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r4, #4]
	ldr r0, _0800B934  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	mov r1, r12
	lsl r4, r1, #1
	ldr r5, [sp, #36]
	add r5, r5, #130
	add r5, r4, r5
	ldrh r1, [r5]
	ldr r2, _0800B938  @ =0x000001FF
	and r1, r1, r2
	ldrh r2, [r3, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r0, [sp, #36]
	add r0, r0, #142
	add r4, r4, r0
	ldrh r0, [r4]
	strb r0, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r3, _0800B960  @ =gUnknown_03001B30
	ldr r2, [r3, #4]
	ldr r0, _0800B940  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800B944  @ =0xFFFFFC00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800B95C  @ =gUnknown_082EC748
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r3, _0800B934  @ =0x84000002
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r1, [r5]
	sub r1, r1, #6
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r3, _0800B960  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	ldr r0, _0800B940  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800B95C  @ =gUnknown_082EC748
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r3, _0800B934  @ =0x84000002
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r1, [r5]
	sub r1, r1, #12
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r3, _0800B960  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	ldr r0, _0800B940  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800B95C  @ =gUnknown_082EC748
	mov r2, r8
	str r1, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r2, #4]
	ldr r3, _0800B934  @ =0x84000002
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r1, [r5]
	sub r1, r1, #18
	ldr r0, _0800B938  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800B93C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrh r1, [r4]
	strb r1, [r0]
	mov r1, r12
	cmp r1, #5
	bne _0800B964
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800B92C  @ =gOamBuffer
	add r2, r2, r3
	ldr r4, _0800B960  @ =gUnknown_03001B30
	ldr r1, [r4, #4]
	add r1, r1, #10
	ldr r0, _0800B940  @ =0x000003FF
	and r1, r1, r0
	b _0800B976
_0800B91C:
	.4byte 0x03000A10
_0800B920:
	.4byte gUnknown_03001938
_0800B924:
	.4byte 0x030019AC
_0800B928:
	.4byte 0x040000D4
_0800B92C:
	.4byte gOamBuffer
_0800B930:
	.4byte gUnknown_082EC2D8
_0800B934:
	.4byte 0x84000002
_0800B938:
	.4byte 0x000001FF
_0800B93C:
	.4byte 0xFFFFFE00
_0800B940:
	.4byte 0x000003FF
_0800B944:
	.4byte 0xFFFFFC00
_0800B948:
	.4byte gUnknown_085882C0
_0800B94C:
	.4byte 0x06010000
_0800B950:
	.4byte 0x84000100
_0800B954:
	.4byte gUnknown_085882B8
_0800B958:
	.4byte 0x03000AAC
_0800B95C:
	.4byte gUnknown_082EC748
_0800B960:
	.4byte gUnknown_03001B30
_0800B964:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800BAFC  @ =gOamBuffer
	add r2, r2, r1
	ldr r3, _0800BB00  @ =gUnknown_03001B30
	ldr r1, [r3, #4]
	add r1, r1, #2
	ldr r4, _0800BB04  @ =0x000003FF
	and r1, r1, r4
_0800B976:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800B986:
	mov r0, #13
	neg r0, r0
	add r9, r9, r0
	mov r1, #1
	add r12, r12, r1
	ldr r2, _0800BB08  @ =0x030019AC
	ldr r0, [r2]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800B9A2
	b _0800B636
_0800B9A2:
	ldr r3, _0800BB08  @ =0x030019AC
	ldr r0, [r3]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r12, r0
	ldr r6, _0800BB0C  @ =0x03001BA0
	ldrb r4, [r6]
	cmp r12, r4
	bge _0800BA2C
	ldr r5, _0800BB10  @ =0x040000D4
	ldr r4, _0800BAFC  @ =gOamBuffer
	ldr r0, _0800BB14  @ =0xFFFFFC00
	mov r10, r0
	ldr r1, _0800BB18  @ =gUnknown_082EC2D8
	mov r8, r1
_0800B9C4:
	mov r2, r8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BB1C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BB20  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BB24  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #76]
	add r1, r1, #8
	ldr r2, _0800BB04  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r10
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	neg r3, r3
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	ldrb r1, [r6]
	cmp r12, r1
	blt _0800B9C4
_0800BA2C:
	mov r2, #140
	mov r9, r2
	ldr r5, _0800BB10  @ =0x040000D4
	ldr r4, _0800BAFC  @ =gOamBuffer
	ldr r3, _0800BB14  @ =0xFFFFFC00
	mov r10, r3
	mov r0, #3
	mov r12, r0
_0800BA3C:
	ldr r1, _0800BB28  @ =gUnknown_082E8EA0
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r2, _0800BB1C  @ =0x84000002
	mov r8, r2
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BB20  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BB24  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #80]
	add r1, r1, #8
	ldr r0, _0800BB04  @ =0x000003FF
	add r6, r0, #0
	and r1, r1, r6
	ldrh r2, [r3, #4]
	mov r0, r10
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	neg r2, r2
	add r12, r12, r2
	mov r3, r12
	cmp r3, #0
	bge _0800BA3C
	mov r4, #13
	str r4, [sp, #16]
	ldr r1, _0800BB10  @ =0x040000D4
	ldr r0, _0800BB2C  @ =gUnknown_082E92C0
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r2, _0800BAFC  @ =gOamBuffer
	add r0, r0, r2
	str r0, [r1, #4]
	mov r3, r8
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r2
	mov r3, #104
	ldrh r2, [r1, #2]
	ldr r0, _0800BB24  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0800BAFC  @ =gOamBuffer
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #92]
	and r1, r1, r6
	ldrh r3, [r2, #4]
	ldr r0, _0800BB14  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	bl _0800C452
	.byte 0x00
	.byte 0x00
_0800BAFC:
	.4byte gOamBuffer
_0800BB00:
	.4byte gUnknown_03001B30
_0800BB04:
	.4byte 0x000003FF
_0800BB08:
	.4byte 0x030019AC
_0800BB0C:
	.4byte 0x03001BA0
_0800BB10:
	.4byte 0x040000D4
_0800BB14:
	.4byte 0xFFFFFC00
_0800BB18:
	.4byte gUnknown_082EC2D8
_0800BB1C:
	.4byte 0x84000002
_0800BB20:
	.4byte 0x000001FF
_0800BB24:
	.4byte 0xFFFFFE00
_0800BB28:
	.4byte gUnknown_082E8EA0
_0800BB2C:
	.4byte gUnknown_082E92C0
_0800BB30:
	ldr r1, [sp, #36]
	add r1, r1, #126
	ldrb r0, [r1]
	cmp r0, #25
	bls _0800BB3C
	b _0800BC7A
_0800BB3C:
	mov r4, #84
	mov r9, r4
	mov r0, #14
	str r0, [sp, #16]
	mov r2, #0
	mov r12, r2
	ldr r3, _0800BC40  @ =gUnknown_082EC2D8
	mov r10, r3
	ldr r4, _0800BC44  @ =0x03001BA0
	ldrb r4, [r4]
	cmp r12, r4
	bge _0800BBCC
	ldr r5, _0800BC48  @ =0x040000D4
	ldr r4, _0800BC4C  @ =gOamBuffer
	ldr r0, [sp, #36]
	mov r8, r0
	add r6, r1, #0
_0800BB5E:
	mov r1, r10
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BC50  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BC54  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BC58  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	mov r3, r8
	ldr r1, [r3, #76]
	ldr r0, _0800BC5C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800BC60  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrb r0, [r6]
	cmp r0, #12
	bls _0800BBC0
	mov r1, r9
	add r1, r1, #13
	sub r1, r1, r0
	mov r9, r1
_0800BBC0:
	mov r1, #1
	add r12, r12, r1
	ldr r2, _0800BC44  @ =0x03001BA0
	ldrb r2, [r2]
	cmp r12, r2
	blt _0800BB5E
_0800BBCC:
	mov r3, #140
	mov r9, r3
	ldr r5, _0800BC48  @ =0x040000D4
	ldr r4, _0800BC4C  @ =gOamBuffer
	ldr r0, _0800BC64  @ =0x03000A10
	mov r8, r0
	mov r6, r8
	add r6, r6, #126
	mov r1, #3
	mov r12, r1
_0800BBE0:
	mov r2, r10
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BC50  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BC54  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BC58  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	mov r3, r8
	ldr r1, [r3, #80]
	ldr r0, _0800BC5C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800BC60  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldrb r0, [r6]
	cmp r0, #12
	bhi _0800BC68
	add r9, r9, r0
	b _0800BC6C
	.byte 0x00
	.byte 0x00
_0800BC40:
	.4byte gUnknown_082EC2D8
_0800BC44:
	.4byte 0x03001BA0
_0800BC48:
	.4byte 0x040000D4
_0800BC4C:
	.4byte gOamBuffer
_0800BC50:
	.4byte 0x84000002
_0800BC54:
	.4byte 0x000001FF
_0800BC58:
	.4byte 0xFFFFFE00
_0800BC5C:
	.4byte 0x000003FF
_0800BC60:
	.4byte 0xFFFFFC00
_0800BC64:
	.4byte 0x03000A10
_0800BC68:
	mov r1, #13
	add r9, r9, r1
_0800BC6C:
	mov r2, #1
	neg r2, r2
	add r12, r12, r2
	mov r3, r12
	cmp r3, #0
	bge _0800BBE0
	b _0800C402
_0800BC7A:
	mov r4, #84
	mov r9, r4
	mov r0, #14
	str r0, [sp, #16]
	ldr r0, [sp, #36]
	add r0, r0, #97
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800BCA4
	ldr r1, _0800BD48  @ =0x030019AC
	ldr r2, [r1]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0800BCA4
	b _0800BF64
_0800BCA4:
	ldr r6, _0800BD48  @ =0x030019AC
	ldr r2, [r6]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	bne _0800BD6C
	mov r3, #0
	mov r12, r3
	add r0, r2, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800BD70
	ldr r5, _0800BD4C  @ =0x040000D4
	ldr r4, _0800BD50  @ =gOamBuffer
	ldr r0, _0800BD54  @ =0x000003FF
	mov r8, r0
	ldr r1, _0800BD58  @ =0xFFFFFC00
	mov r10, r1
_0800BCD8:
	ldr r0, _0800BD5C  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800BD60  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800BD64  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800BD68  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	mov r0, r8
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	neg r1, r1
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800BCD8
	b _0800BD70
	.byte 0x00
	.byte 0x00
_0800BD48:
	.4byte 0x030019AC
_0800BD4C:
	.4byte 0x040000D4
_0800BD50:
	.4byte gOamBuffer
_0800BD54:
	.4byte 0x000003FF
_0800BD58:
	.4byte 0xFFFFFC00
_0800BD5C:
	.4byte gUnknown_082EC2D8
_0800BD60:
	.4byte 0x84000002
_0800BD64:
	.4byte 0x000001FF
_0800BD68:
	.4byte 0xFFFFFE00
_0800BD6C:
	mov r3, #0
	mov r12, r3
_0800BD70:
	ldr r4, _0800BE80  @ =0x03001BA0
	ldrb r4, [r4]
	cmp r12, r4
	blt _0800BD7A
	b _0800C06E
_0800BD7A:
	ldr r0, _0800BE84  @ =0x03000A10
	str r0, [sp, #28]
	ldr r5, _0800BE88  @ =0x040000D4
	ldr r6, _0800BE8C  @ =gOamBuffer
_0800BD82:
	ldr r0, [sp, #28]
	add r0, r0, #97
	ldrb r0, [r0]
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800BD96
	b _0800BEDC
_0800BD96:
	ldr r4, [sp, #36]
	add r4, r4, #99
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0800BE90  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, [sp, #12]
	ldrh r0, [r2]
	ldr r1, _0800BE94  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800BE98  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800BE9C  @ =gUnknown_085882B8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r3, _0800BEA0  @ =0x84000002
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	sub r1, r1, #8
	ldr r4, _0800BEA4  @ =0x000001FF
	and r1, r1, r4
	ldrh r3, [r2, #2]
	ldr r0, _0800BEA8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _0800BEAC  @ =0x000003FF
	mov r8, r4
	mov r0, r8
	and r1, r1, r0
	ldr r4, _0800BEB0  @ =0xFFFFFC00
	mov r10, r4
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r0, _0800BEB4  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800BEA0  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800BEA4  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800BEA8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800BEB8
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800BE8C  @ =gOamBuffer
	add r2, r2, r3
	ldr r4, [sp, #28]
	ldr r1, [r4, #76]
	mov r0, r8
	and r1, r1, r0
	b _0800BECA
_0800BE80:
	.4byte 0x03001BA0
_0800BE84:
	.4byte 0x03000A10
_0800BE88:
	.4byte 0x040000D4
_0800BE8C:
	.4byte gOamBuffer
_0800BE90:
	.4byte gUnknown_085882C0
_0800BE94:
	.4byte 0x06010000
_0800BE98:
	.4byte 0x84000100
_0800BE9C:
	.4byte gUnknown_085882B8
_0800BEA0:
	.4byte 0x84000002
_0800BEA4:
	.4byte 0x000001FF
_0800BEA8:
	.4byte 0xFFFFFE00
_0800BEAC:
	.4byte 0x000003FF
_0800BEB0:
	.4byte 0xFFFFFC00
_0800BEB4:
	.4byte gUnknown_082EC2D8
_0800BEB8:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800BED8  @ =gOamBuffer
	add r2, r2, r1
	ldr r3, [sp, #28]
	ldr r1, [r3, #76]
	add r1, r1, #8
	mov r4, r8
	and r1, r1, r4
_0800BECA:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800BF2C
	.byte 0x00
	.byte 0x00
_0800BED8:
	.4byte gOamBuffer
_0800BEDC:
	ldr r0, _0800BF48  @ =gUnknown_082EC2D8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800BF4C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800BF50  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800BF54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #36]
	ldr r1, [r0, #76]
	add r1, r1, #8
	ldr r2, _0800BF58  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800BF5C  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_0800BF2C:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	neg r3, r3
	add r9, r9, r3
	mov r4, #1
	add r12, r12, r4
	ldr r0, _0800BF60  @ =0x03001BA0
	ldrb r0, [r0]
	cmp r12, r0
	bge _0800BF46
	b _0800BD82
_0800BF46:
	b _0800C06E
_0800BF48:
	.4byte gUnknown_082EC2D8
_0800BF4C:
	.4byte 0x84000002
_0800BF50:
	.4byte 0x000001FF
_0800BF54:
	.4byte 0xFFFFFE00
_0800BF58:
	.4byte 0x000003FF
_0800BF5C:
	.4byte 0xFFFFFC00
_0800BF60:
	.4byte 0x03001BA0
_0800BF64:
	mov r1, #0
	mov r12, r1
	add r0, r2, #0
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800BFF2
	ldr r5, _0800C218  @ =0x040000D4
	ldr r4, _0800C21C  @ =gOamBuffer
	ldr r2, _0800C220  @ =0x000003FF
	mov r10, r2
	ldr r3, _0800C224  @ =gUnknown_082EC2D8
	mov r8, r3
	ldr r6, _0800C228  @ =0xFFFFFC00
_0800BF84:
	mov r0, r8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800C230  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #76]
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	neg r1, r1
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r3, _0800C238  @ =0x030019AC
	ldr r0, [r3]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800BF84
_0800BFF2:
	ldr r6, _0800C23C  @ =0x03001BA0
	ldrb r4, [r6]
	cmp r12, r4
	bge _0800C06E
	ldr r5, _0800C218  @ =0x040000D4
	ldr r4, _0800C21C  @ =gOamBuffer
	ldr r0, _0800C228  @ =0xFFFFFC00
	mov r10, r0
	ldr r1, _0800C224  @ =gUnknown_082EC2D8
	mov r8, r1
_0800C006:
	mov r2, r8
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800C230  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #76]
	add r1, r1, #8
	ldr r2, _0800C220  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r10
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	neg r3, r3
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	ldrb r1, [r6]
	cmp r12, r1
	blt _0800C006
_0800C06E:
	mov r2, #140
	mov r9, r2
	ldr r0, [sp, #36]
	add r0, r0, #98
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800C07E
	b _0800C300
_0800C07E:
	mov r3, #0
	mov r12, r3
	ldr r6, _0800C240  @ =gUnknown_03001C78
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800C108
	ldr r5, _0800C218  @ =0x040000D4
	ldr r4, _0800C21C  @ =gOamBuffer
	ldr r0, _0800C244  @ =gUnknown_082E8EA0
	mov r10, r0
	ldr r1, _0800C228  @ =0xFFFFFC00
	mov r8, r1
_0800C09E:
	mov r2, r10
	str r2, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800C230  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #80]
	ldr r0, _0800C220  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800C09E
_0800C108:
	mov r3, r12
	cmp r3, #3
	ble _0800C110
	b _0800C402
_0800C110:
	ldr r4, _0800C248  @ =0x03000A10
	str r4, [sp, #32]
	ldr r5, _0800C218  @ =0x040000D4
	ldr r6, _0800C21C  @ =gOamBuffer
_0800C118:
	ldr r0, [sp, #32]
	add r0, r0, #98
	ldrb r0, [r0]
	mov r1, r12
	asr r0, r0, r1
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0800C12C
	b _0800C280
_0800C12C:
	ldr r4, [sp, #36]
	add r4, r4, #111
	add r4, r4, r12
	str r4, [sp, #40]
	ldrb r0, [r4]
	lsl r0, r0, #10
	ldr r1, _0800C24C  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r5]
	ldr r2, [sp, #12]
	ldrh r0, [r2]
	ldr r1, _0800C250  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800C254  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800C258  @ =gUnknown_085882B8
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r3, _0800C22C  @ =0x84000002
	str r3, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	sub r1, r1, #8
	ldr r4, _0800C230  @ =0x000001FF
	and r1, r1, r4
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldr r1, [sp, #16]
	sub r1, r1, #8
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r4, _0800C220  @ =0x000003FF
	mov r8, r4
	mov r0, r8
	and r1, r1, r0
	ldr r4, _0800C228  @ =0xFFFFFC00
	mov r10, r4
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldr r2, [sp, #12]
	ldrh r2, [r2]
	add r0, r0, r2
	ldr r3, [sp, #12]
	strh r0, [r3]
	ldr r4, [sp, #8]
	ldrh r0, [r4]
	add r0, r0, #32
	strh r0, [r4]
	ldr r0, _0800C244  @ =gUnknown_082E8EA0
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800C22C  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800C230  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800C234  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldr r1, [sp, #40]
	ldrb r0, [r1]
	cmp r0, #6
	bhi _0800C25C
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r3, _0800C21C  @ =gOamBuffer
	add r2, r2, r3
	ldr r4, [sp, #32]
	ldr r1, [r4, #80]
	mov r0, r8
	and r1, r1, r0
	b _0800C26E
	.byte 0x00
	.byte 0x00
_0800C218:
	.4byte 0x040000D4
_0800C21C:
	.4byte gOamBuffer
_0800C220:
	.4byte 0x000003FF
_0800C224:
	.4byte gUnknown_082EC2D8
_0800C228:
	.4byte 0xFFFFFC00
_0800C22C:
	.4byte 0x84000002
_0800C230:
	.4byte 0x000001FF
_0800C234:
	.4byte 0xFFFFFE00
_0800C238:
	.4byte 0x030019AC
_0800C23C:
	.4byte 0x03001BA0
_0800C240:
	.4byte gUnknown_03001C78
_0800C244:
	.4byte gUnknown_082E8EA0
_0800C248:
	.4byte 0x03000A10
_0800C24C:
	.4byte gUnknown_085882C0
_0800C250:
	.4byte 0x06010000
_0800C254:
	.4byte 0x84000100
_0800C258:
	.4byte gUnknown_085882B8
_0800C25C:
	ldrh r2, [r7]
	lsl r2, r2, #3
	ldr r1, _0800C27C  @ =gOamBuffer
	add r2, r2, r1
	ldr r3, [sp, #32]
	ldr r1, [r3, #80]
	add r1, r1, #8
	mov r4, r8
	and r1, r1, r4
_0800C26E:
	ldrh r3, [r2, #4]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800C2D0
	.byte 0x00
	.byte 0x00
_0800C27C:
	.4byte gOamBuffer
_0800C280:
	ldr r0, _0800C2E8  @ =gUnknown_082E8EA0
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _0800C2EC  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	mov r1, r9
	ldr r3, _0800C2F0  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800C2F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r4, sp
	ldrb r4, [r4, #16]
	strb r4, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #36]
	ldr r1, [r0, #80]
	add r1, r1, #8
	ldr r2, _0800C2F8  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800C2FC  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
_0800C2D0:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r4, #1
	add r12, r12, r4
	mov r0, r12
	cmp r0, #3
	bgt _0800C2E6
	b _0800C118
_0800C2E6:
	b _0800C402
_0800C2E8:
	.4byte gUnknown_082E8EA0
_0800C2EC:
	.4byte 0x84000002
_0800C2F0:
	.4byte 0x000001FF
_0800C2F4:
	.4byte 0xFFFFFE00
_0800C2F8:
	.4byte 0x000003FF
_0800C2FC:
	.4byte 0xFFFFFC00
_0800C300:
	mov r1, #0
	mov r12, r1
	ldr r6, _0800C570  @ =gUnknown_03001C78
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	bge _0800C38A
	ldr r5, _0800C574  @ =0x040000D4
	ldr r4, _0800C578  @ =gOamBuffer
	ldr r2, _0800C57C  @ =gUnknown_082E8EA0
	mov r10, r2
	ldr r3, _0800C580  @ =0xFFFFFC00
	mov r8, r3
_0800C320:
	mov r0, r10
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r1, _0800C588  @ =0x000001FF
	add r0, r1, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800C58C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #16]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, [sp, #36]
	ldr r1, [r3, #80]
	ldr r0, _0800C590  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	mov r0, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #13
	add r9, r9, r1
	mov r2, #1
	add r12, r12, r2
	ldr r0, [r6]
	add r0, r0, #52
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r12, r0
	blt _0800C320
_0800C38A:
	mov r3, r12
	cmp r3, #3
	bgt _0800C402
	ldr r5, _0800C574  @ =0x040000D4
	ldr r4, _0800C578  @ =gOamBuffer
	ldr r0, _0800C58C  @ =0xFFFFFE00
	mov r10, r0
	ldr r1, _0800C580  @ =0xFFFFFC00
	mov r8, r1
	ldr r6, _0800C57C  @ =gUnknown_082E8EA0
_0800C39E:
	str r6, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r5, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r3, _0800C588  @ =0x000001FF
	add r0, r3, #0
	mov r1, r9
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	ldr r2, [sp, #36]
	ldr r1, [r2, #80]
	add r1, r1, #8
	ldr r2, _0800C590  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r3, #13
	add r9, r9, r3
	mov r0, #1
	add r12, r12, r0
	mov r1, r12
	cmp r1, #3
	ble _0800C39E
_0800C402:
	mov r2, #13
	str r2, [sp, #16]
	ldr r1, _0800C574  @ =0x040000D4
	ldr r3, _0800C594  @ =gUnknown_082E92C0
	str r3, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0800C578  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r1, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r3, #104
	ldrh r2, [r1, #2]
	ldr r0, _0800C58C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldr r3, [sp, #36]
	ldr r2, [r3, #92]
	ldr r0, _0800C590  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800C580  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
_0800C452:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800C458:
	mov r4, #4
	str r4, [sp, #16]
	ldr r4, _0800C574  @ =0x040000D4
	ldr r0, _0800C598  @ =gUnknown_082F0BDC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _0800C578  @ =gOamBuffer
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	ldr r2, _0800C578  @ =gOamBuffer
	add r1, r1, r2
	mov r3, #78
	ldrh r2, [r1, #2]
	ldr r6, _0800C58C  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r3, _0800C578  @ =gOamBuffer
	add r0, r0, r3
	mov r1, sp
	ldrb r1, [r1, #16]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r3
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r3
	ldr r3, [sp, #36]
	ldr r2, [r3, #36]
	ldr r0, _0800C590  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r5, _0800C580  @ =0xFFFFFC00
	add r0, r5, #0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp, #36]
	mov r10, r0
	mov r1, #0
	mov r8, r1
	mov r9, r4
	ldr r4, _0800C578  @ =gOamBuffer
	mov r12, r6
	add r6, r5, #0
	mov r5, #96
_0800C4DA:
	ldr r2, _0800C59C  @ =gUnknown_082EC748
	mov r3, r9
	str r2, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _0800C584  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	mov r0, r8
	lsl r1, r0, #3
	mov r2, #150
	sub r1, r2, r1
	ldr r2, _0800C588  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	mov r0, r12
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r3, #1
	strb r3, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r4
	mov r0, r10
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r2, _0800C5A0  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r0
	ldr r2, _0800C590  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, r8
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	cmp r0, #5
	bls _0800C4DA
_0800C55E:
	add sp, sp, #44
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800C570:
	.4byte gUnknown_03001C78
_0800C574:
	.4byte 0x040000D4
_0800C578:
	.4byte gOamBuffer
_0800C57C:
	.4byte gUnknown_082E8EA0
_0800C580:
	.4byte 0xFFFFFC00
_0800C584:
	.4byte 0x84000002
_0800C588:
	.4byte 0x000001FF
_0800C58C:
	.4byte 0xFFFFFE00
_0800C590:
	.4byte 0x000003FF
_0800C594:
	.4byte gUnknown_082E92C0
_0800C598:
	.4byte gUnknown_082F0BDC
_0800C59C:
	.4byte gUnknown_082EC748
_0800C5A0:
	.4byte gUnknown_03001B30
	THUMB_FUNC_END sub_0800A810

	THUMB_FUNC_START sub_0800C5A4
sub_0800C5A4: @ 0x0800C5A4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	mov r6, #0
	ldr r4, _0800C610  @ =0x03000A10
	add r0, r4, #0
	add r0, r0, #57
	mov r1, #1
	mov r5, #1
	strb r5, [r0]
	add r2, r4, #0
	add r2, r2, #53
	ldrb r0, [r2]
	eor r0, r0, r1
	strb r0, [r2]
	sub r2, r2, #4
	ldrb r0, [r2]
	add r0, r0, #1
	mov r1, #31
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, _0800C614  @ =gHeldKeys
	ldrh r1, [r2]
	mov r0, #10
	and r0, r0, r1
	mov r12, r2
	cmp r0, #0
	beq _0800C624
	ldr r2, _0800C618  @ =gUnknown_030019A0
	ldr r1, [r2]
	mov r0, #128
	lsl r0, r0, #23
	and r0, r0, r1
	cmp r0, #0
	beq _0800C624
	ldr r0, _0800C61C  @ =gUnknown_03000B78
	strb r6, [r0]
	ldr r0, _0800C620  @ =0xBFFFFFFF
	and r1, r1, r0
	str r1, [r2]
	bl sub_08040F9C
	add r0, r4, #0
	add r0, r0, #52
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C60C
	add r0, r4, #0
	add r0, r0, #182
	strb r5, [r0]
_0800C60C:
	mov r0, #2
	b _0800CAC0
_0800C610:
	.4byte 0x03000A10
_0800C614:
	.4byte gHeldKeys
_0800C618:
	.4byte gUnknown_030019A0
_0800C61C:
	.4byte gUnknown_03000B78
_0800C620:
	.4byte 0xBFFFFFFF
_0800C624:
	mov r0, r12
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, r1
	beq _0800C640
	ldr r0, _0800C6D0  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #23
	orr r1, r1, r2
	str r1, [r0]
_0800C640:
	ldr r4, _0800C6D4  @ =0x03000A10
	mov r1, #55
	add r1, r1, r4
	mov r8, r1
	mov r0, #0
	strb r0, [r1]
	ldr r2, _0800C6D8  @ =gUnknown_03001720
	mov r9, r2
	mov r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #240
	bgt _0800C65A
	b _0800C862
_0800C65A:
	ldr r0, _0800C6DC  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r3, #32
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800C674
	mov r5, r12
	ldrh r2, [r5]
	add r0, r3, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0800C754
_0800C674:
	mov r0, #1
	orr r6, r6, r0
	add r0, r4, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C6FC
	ldr r5, _0800C6E0  @ =0x030008C8
	ldr r2, [r5]
	sub r0, r2, #1
	str r0, [r5]
	lsl r0, r0, #3
	add r1, r0, #0
	sub r1, r1, #120
	cmp r1, #0
	blt _0800C6A0
	ldr r0, _0800C6E4  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C6E8
_0800C6A0:
	mov r0, #254
	and r6, r6, r0
	str r2, [r5]
	mov r0, #4
	mov r7, r8
	strb r0, [r7]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C6C8
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C6C8:
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r4]
	b _0800C862
_0800C6D0:
	.4byte gUnknown_030019A0
_0800C6D4:
	.4byte 0x03000A10
_0800C6D8:
	.4byte gUnknown_03001720
_0800C6DC:
	.4byte gSomeKeys_030012E8
_0800C6E0:
	.4byte 0x030008C8
_0800C6E4:
	.4byte gUnknown_03000B80
_0800C6E8:
	lsl r0, r1, #17
	asr r0, r0, #16
	ldr r1, [r5, #4]
	lsl r1, r1, #20
	ldr r2, _0800C6F8  @ =0xFF600000
	add r1, r1, r2
	b _0800C7E4
	.byte 0x00
	.byte 0x00
_0800C6F8:
	.4byte 0xFF600000
_0800C6FC:
	ldr r1, _0800C74C  @ =0x030008C8
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	lsl r0, r0, #3
	sub r0, r0, #120
	add r7, r1, #0
	cmp r0, #0
	blt _0800C71A
	ldr r0, _0800C750  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C746
_0800C71A:
	mov r0, #254
	and r6, r6, r0
	mov r0, #4
	mov r3, r8
	strb r0, [r3]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C740
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C740:
	mov r5, r8
	ldrb r0, [r5]
	strb r0, [r4]
_0800C746:
	ldr r0, [r7]
	add r0, r0, #1
	b _0800C860
_0800C74C:
	.4byte 0x030008C8
_0800C750:
	.4byte gUnknown_03000B80
_0800C754:
	mov r3, #16
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800C768
	add r0, r3, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0800C768
	b _0800C862
_0800C768:
	mov r0, #1
	orr r6, r6, r0
	add r0, r4, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C80C
	ldr r5, _0800C7CC  @ =0x030008C8
	ldr r3, [r5]
	add r0, r3, #1
	str r0, [r5]
	lsl r2, r0, #3
	mov r7, #120
	add r7, r7, r2
	mov r12, r7
	mov r1, r9
	mov r7, #0
	ldrsh r0, [r1, r7]
	cmp r12, r0
	bgt _0800C79C
	ldr r0, _0800C7D0  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C7D4
_0800C79C:
	mov r0, #254
	and r6, r6, r0
	str r3, [r5]
	mov r0, #8
	mov r1, r8
	strb r0, [r1]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C7C4
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C7C4:
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4]
	b _0800C862
_0800C7CC:
	.4byte 0x030008C8
_0800C7D0:
	.4byte gUnknown_03000B80
_0800C7D4:
	add r0, r2, #0
	sub r0, r0, #120
	lsl r0, r0, #17
	asr r0, r0, #16
	ldr r1, [r5, #4]
	lsl r1, r1, #20
	ldr r3, _0800C804  @ =0xFF600000
	add r1, r1, r3
_0800C7E4:
	asr r1, r1, #16
	bl sub_08033FAC
	ldr r0, _0800C808  @ =gUnknown_030012A0
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #120
	asr r0, r0, #3
	str r0, [r5]
	add r1, r4, #0
	add r1, r1, #52
	mov r0, #1
	strb r0, [r1]
	b _0800C862
	.byte 0x00
	.byte 0x00
_0800C804:
	.4byte 0xFF600000
_0800C808:
	.4byte gUnknown_030012A0
_0800C80C:
	ldr r0, _0800C8F4  @ =0x030008C8
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	lsl r1, r1, #3
	add r1, r1, #120
	mov r5, r9
	mov r7, #0
	ldrsh r2, [r5, r7]
	add r7, r0, #0
	cmp r1, r2
	bgt _0800C830
	ldr r0, _0800C8F8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C85C
_0800C830:
	mov r0, #254
	and r6, r6, r0
	mov r0, #8
	mov r1, r8
	strb r0, [r1]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C856
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C856:
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r4]
_0800C85C:
	ldr r0, [r7]
	sub r0, r0, #1
_0800C860:
	str r0, [r7]
_0800C862:
	ldr r3, _0800C8FC  @ =gUnknown_0300170C
	mov r9, r3
	mov r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #160
	bgt _0800C870
	b _0800CA66
_0800C870:
	ldr r0, _0800C8F8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0800C87E
	b _0800CA66
_0800C87E:
	ldr r0, _0800C900  @ =gSomeKeys_030012E8
	ldrh r2, [r0]
	mov r3, #64
	add r0, r3, #0
	and r0, r0, r2
	cmp r0, #0
	bne _0800C898
	ldr r0, _0800C904  @ =gHeldKeys
	ldrh r1, [r0]
	add r0, r3, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0800C974
_0800C898:
	mov r0, #2
	orr r6, r6, r0
	lsl r0, r6, #24
	lsr r6, r0, #24
	ldr r4, _0800C908  @ =0x03000A10
	add r0, r4, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800C928
	ldr r2, _0800C8F4  @ =0x030008C8
	ldr r3, [r2, #4]
	sub r0, r3, #1
	str r0, [r2, #4]
	lsl r0, r0, #3
	add r1, r0, #0
	sub r1, r1, #80
	cmp r1, #0
	bge _0800C90C
	mov r0, #253
	and r6, r6, r0
	str r3, [r2, #4]
	mov r0, #1
	add r5, r4, #0
	add r5, r5, #55
	ldrb r1, [r5]
	orr r0, r0, r1
	strb r0, [r5]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C8EC
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C8EC:
	ldrb r0, [r5]
	strb r0, [r4]
	b _0800CA66
	.byte 0x00
	.byte 0x00
_0800C8F4:
	.4byte 0x030008C8
_0800C8F8:
	.4byte gUnknown_03000B80
_0800C8FC:
	.4byte gUnknown_0300170C
_0800C900:
	.4byte gSomeKeys_030012E8
_0800C904:
	.4byte gHeldKeys
_0800C908:
	.4byte 0x03000A10
_0800C90C:
	ldr r0, [r2]
	lsl r0, r0, #20
	ldr r5, _0800C924  @ =0xFF100000
	add r0, r0, r5
	asr r0, r0, #16
	lsl r1, r1, #17
	asr r1, r1, #16
	bl sub_08033FAC
	add r1, r4, #0
	b _0800CA0C
	.byte 0x00
	.byte 0x00
_0800C924:
	.4byte 0xFF100000
_0800C928:
	ldr r1, _0800C970  @ =0x030008C8
	ldr r0, [r1, #4]
	sub r0, r0, #1
	str r0, [r1, #4]
	lsl r0, r0, #3
	sub r0, r0, #80
	add r7, r1, #0
	cmp r0, #0
	bge _0800C96A
	mov r0, #253
	and r6, r6, r0
	mov r0, #1
	add r5, r4, #0
	add r5, r5, #55
	ldrb r1, [r5]
	orr r0, r0, r1
	strb r0, [r5]
	add r4, r4, #56
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800C966
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C966:
	ldrb r0, [r5]
	strb r0, [r4]
_0800C96A:
	ldr r0, [r7, #4]
	add r0, r0, #1
	b _0800CA64
_0800C970:
	.4byte 0x030008C8
_0800C974:
	mov r7, #128
	mov r8, r7
	mov r0, r8
	and r0, r0, r2
	cmp r0, #0
	bne _0800C988
	mov r0, r8
	and r0, r0, r1
	cmp r0, #0
	beq _0800CA66
_0800C988:
	mov r0, #2
	orr r6, r6, r0
	lsl r0, r6, #24
	lsr r6, r0, #24
	ldr r5, _0800C9EC  @ =0x03000A10
	add r0, r5, #0
	add r0, r0, #53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CA18
	ldr r2, _0800C9F0  @ =0x030008C8
	ldr r4, [r2, #4]
	add r0, r4, #1
	str r0, [r2, #4]
	lsl r3, r0, #3
	mov r0, #80
	add r0, r0, r3
	mov r12, r0
	mov r1, r9
	mov r7, #0
	ldrsh r0, [r1, r7]
	cmp r12, r0
	ble _0800C9F4
	mov r0, #253
	and r6, r6, r0
	str r4, [r2, #4]
	mov r0, #2
	add r4, r5, #0
	add r4, r4, #55
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	add r5, r5, #56
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800C9E4
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800C9E4:
	ldrb r0, [r4]
	strb r0, [r5]
	b _0800CA66
	.byte 0x00
	.byte 0x00
_0800C9EC:
	.4byte 0x03000A10
_0800C9F0:
	.4byte 0x030008C8
_0800C9F4:
	ldr r0, [r2]
	lsl r0, r0, #20
	ldr r2, _0800CA14  @ =0xFF100000
	add r0, r0, r2
	asr r0, r0, #16
	add r1, r3, #0
	sub r1, r1, #80
	lsl r1, r1, #17
	asr r1, r1, #16
	bl sub_08033FAC
	add r1, r5, #0
_0800CA0C:
	add r1, r1, #52
	mov r0, #1
	strb r0, [r1]
	b _0800CA66
_0800CA14:
	.4byte 0xFF100000
_0800CA18:
	ldr r0, _0800CA90  @ =0x030008C8
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	lsl r1, r1, #3
	add r1, r1, #80
	mov r3, r9
	mov r4, #0
	ldrsh r2, [r3, r4]
	add r7, r0, #0
	cmp r1, r2
	ble _0800CA60
	mov r0, #253
	and r6, r6, r0
	mov r0, #2
	add r4, r5, #0
	add r4, r4, #55
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	add r5, r5, #56
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800CA5C
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800CA5C:
	ldrb r0, [r4]
	strb r0, [r5]
_0800CA60:
	ldr r0, [r7, #4]
	sub r0, r0, #1
_0800CA64:
	str r0, [r7, #4]
_0800CA66:
	cmp r6, #0
	beq _0800CA98
	ldr r0, _0800CA94  @ =0x03000A10
	add r4, r0, #0
	add r4, r4, #54
	ldrb r1, [r4]
	cmp r1, #0
	bne _0800CAAC
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #64
	mov r1, #12
	mov r2, #1
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #1
	strb r0, [r4]
	b _0800CAAC
_0800CA90:
	.4byte 0x030008C8
_0800CA94:
	.4byte 0x03000A10
_0800CA98:
	ldr r0, _0800CAD0  @ =0x03000A10
	add r4, r0, #0
	add r4, r4, #54
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800CAAA
	mov r0, #64
	bl sub_08071E14
_0800CAAA:
	strb r6, [r4]
_0800CAAC:
	ldr r0, _0800CAD0  @ =0x03000A10
	add r2, r0, #0
	add r2, r2, #55
	ldrb r1, [r2]
	cmp r1, #0
	bne _0800CABE
	strb r1, [r2]
	add r0, r0, #56
	strb r1, [r0]
_0800CABE:
	mov r0, #1
_0800CAC0:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0800CAD0:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800C5A4

	THUMB_FUNC_START sub_0800CAD4
sub_0800CAD4: @ 0x0800CAD4
	push {r4-r7,lr}
	add r7, r0, #0
	ldr r4, _0800CB68  @ =0x03000A10
	add r0, r4, #0
	add r0, r0, #68
	ldrb r0, [r0]
	cmp r0, #5
	bne _0800CB90
	ldr r2, [r4, #60]
	ldr r0, _0800CB6C  @ =gUnknown_03001724
	ldrh r0, [r0]
	sub r2, r2, r0
	ldr r0, [r4, #64]
	ldr r1, _0800CB70  @ =gUnknown_030012F4
	ldrh r1, [r1]
	sub r0, r0, r1
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r2, r2, #16
	asr r3, r2, #16
	mov r0, #128
	lsl r0, r0, #14
	add r2, r2, r0
	ldr r0, _0800CB74  @ =0x010F0000
	cmp r2, r0
	bls _0800CB0A
	b _0800CC3C
_0800CB0A:
	lsl r0, r6, #16
	asr r1, r0, #16
	add r0, r1, #0
	add r0, r0, #32
	cmp r0, #0
	bge _0800CB18
	b _0800CC3C
_0800CB18:
	cmp r1, #159
	ble _0800CB1E
	b _0800CC3C
_0800CB1E:
	ldr r1, _0800CB78  @ =0x040000D4
	ldr r0, _0800CB7C  @ =gUnknown_0851400C
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800CB80  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _0800CB84  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, _0800CB88  @ =0x000001FF
	add r0, r2, #0
	and r3, r3, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800CB8C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	b _0800CBFC
	.byte 0x00
	.byte 0x00
_0800CB68:
	.4byte 0x03000A10
_0800CB6C:
	.4byte gUnknown_03001724
_0800CB70:
	.4byte gUnknown_030012F4
_0800CB74:
	.4byte 0x010F0000
_0800CB78:
	.4byte 0x040000D4
_0800CB7C:
	.4byte gUnknown_0851400C
_0800CB80:
	.4byte gOamBuffer
_0800CB84:
	.4byte 0x84000002
_0800CB88:
	.4byte 0x000001FF
_0800CB8C:
	.4byte 0xFFFFFE00
_0800CB90:
	cmp r0, #18
	bne _0800CC3C
	ldr r1, [r4, #60]
	ldr r0, _0800CC44  @ =gUnknown_03001724
	ldrh r0, [r0]
	sub r1, r1, r0
	ldr r0, [r4, #64]
	ldr r2, _0800CC48  @ =gUnknown_030012F4
	ldrh r2, [r2]
	sub r0, r0, r2
	lsl r0, r0, #16
	lsr r6, r0, #16
	lsl r1, r1, #16
	asr r3, r1, #16
	mov r0, #128
	lsl r0, r0, #13
	add r1, r1, r0
	lsr r1, r1, #16
	cmp r1, #255
	bhi _0800CC3C
	lsl r0, r6, #16
	asr r1, r0, #16
	add r0, r1, #0
	add r0, r0, #16
	cmp r0, #0
	blt _0800CC3C
	cmp r1, #159
	bgt _0800CC3C
	ldr r1, _0800CC4C  @ =0x040000D4
	ldr r0, _0800CC50  @ =gUnknown_082F8F04
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0800CC54  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _0800CC58  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, _0800CC5C  @ =0x000001FF
	add r0, r2, #0
	and r3, r3, r0
	ldrh r2, [r1, #2]
	ldr r0, _0800CC60  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	strb r6, [r0]
_0800CBFC:
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r3, #13
	neg r3, r3
	add r0, r3, #0
	and r0, r0, r2
	mov r6, #4
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r4, #72]
	ldr r0, _0800CC64  @ =0x000003FF
	and r2, r2, r0
	ldrh r4, [r1, #4]
	ldr r0, _0800CC68  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrb r1, [r0, #1]
	and r3, r3, r1
	orr r3, r3, r6
	strb r3, [r0, #1]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800CC3C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800CC44:
	.4byte gUnknown_03001724
_0800CC48:
	.4byte gUnknown_030012F4
_0800CC4C:
	.4byte 0x040000D4
_0800CC50:
	.4byte gUnknown_082F8F04
_0800CC54:
	.4byte gOamBuffer
_0800CC58:
	.4byte 0x84000002
_0800CC5C:
	.4byte 0x000001FF
_0800CC60:
	.4byte 0xFFFFFE00
_0800CC64:
	.4byte 0x000003FF
_0800CC68:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800CAD4

	THUMB_FUNC_START sub_0800CC6C
sub_0800CC6C: @ 0x0800CC6C
	push {r4-r6,lr}
	ldr r0, _0800CCDC  @ =gUnknown_03000BBC
	ldrb r5, [r0]
	ldr r0, _0800CCE0  @ =gUnknown_03000B74
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _0800CCE4  @ =gUnknown_03000B80
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _0800CC94
	asr r2, r2, #1
	ldr r0, _0800CCE8  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800CC94
	mov r2, #7
_0800CC94:
	mov r0, #0
	ldrsb r0, [r3, r0]
	ldr r1, _0800CCEC  @ =gUnknown_03000B58
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl get_level_stats_0800FCE4
	cmp r0, #0
	beq _0800CD00
	ldr r0, _0800CCF0  @ =0x03000A10
	ldr r1, _0800CCF4  @ =0x00000123
	add r4, r0, r1
	ldr r2, _0800CCF8  @ =gUnknown_082F0364
	add r1, r1, #1
	add r3, r0, r1
	ldrb r1, [r3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcc _0800CCFC
	mov r1, #0
	strb r1, [r4]
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _0800CD00
	strb r1, [r3]
	b _0800CD00
_0800CCDC:
	.4byte gUnknown_03000BBC
_0800CCE0:
	.4byte gUnknown_03000B74
_0800CCE4:
	.4byte gUnknown_03000B80
_0800CCE8:
	.4byte gUnknown_03000B90
_0800CCEC:
	.4byte gUnknown_03000B58
_0800CCF0:
	.4byte 0x03000A10
_0800CCF4:
	.4byte 0x00000123
_0800CCF8:
	.4byte gUnknown_082F0364
_0800CCFC:
	add r0, r1, #1
	strb r0, [r4]
_0800CD00:
	ldr r1, _0800CD5C  @ =0x03000A10
	mov r2, #123
	add r2, r2, r1
	mov r12, r2
	ldrb r0, [r2]
	add r3, r1, #0
	cmp r0, #0
	beq _0800CD7C
	lsl r1, r5, #24
	asr r1, r1, #24
	ldr r0, _0800CD60  @ =0x0000199A
	mul r0, r1, r0
	asr r4, r0, #16
	mov r6, #0
	strb r4, [r3, #13]
	ldrb r2, [r3, #13]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #1
	sub r1, r1, r0
	strb r1, [r3, #12]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #9
	bls _0800CD36
	mov r0, #9
	strb r0, [r3, #12]
_0800CD36:
	strb r4, [r3, #13]
	add r4, r3, #0
	add r4, r4, #125
	ldr r1, _0800CD64  @ =gUnknown_08587E38
	add r5, r3, #0
	add r5, r5, #124
	ldrb r2, [r5]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r4]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bcs _0800CD68
	add r0, r1, #2
	strb r0, [r4]
	b _0800CD7C
	.byte 0x00
	.byte 0x00
_0800CD5C:
	.4byte 0x03000A10
_0800CD60:
	.4byte 0x0000199A
_0800CD64:
	.4byte gUnknown_08587E38
_0800CD68:
	add r0, r2, #1
	strb r0, [r5]
	strb r6, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #31
	bls _0800CD7C
	strb r6, [r5]
	mov r0, r12
	strb r6, [r0]
_0800CD7C:
	mov r1, #145
	lsl r1, r1, #1
	add r0, r3, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0800CDC2
	mov r2, #144
	lsl r2, r2, #1
	add r5, r3, r2
	ldr r1, _0800CDB4  @ =gUnknown_082EE214
	ldr r0, _0800CDB8  @ =0x00000121
	add r0, r0, r3
	mov r12, r0
	ldrb r2, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r5]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800CE38
	cmp r2, #0
	bne _0800CDBC
	add r0, r2, #1
	mov r1, r12
	strb r0, [r1]
	b _0800CE2C
_0800CDB4:
	.4byte gUnknown_082EE214
_0800CDB8:
	.4byte 0x00000121
_0800CDBC:
	mov r2, r12
	strb r4, [r2]
	b _0800CE2C
_0800CDC2:
	cmp r4, #1
	bne _0800CDF4
	mov r1, #144
	lsl r1, r1, #1
	add r5, r3, r1
	ldr r1, _0800CDEC  @ =gUnknown_082EF144
	ldr r2, _0800CDF0  @ =0x00000121
	add r4, r3, r2
	ldrb r2, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r5]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800CE38
	cmp r2, #0
	bne _0800CE28
	add r0, r2, #1
	b _0800CE2A
_0800CDEC:
	.4byte gUnknown_082EF144
_0800CDF0:
	.4byte 0x00000121
_0800CDF4:
	cmp r4, #2
	bne _0800CE3C
	mov r1, #144
	lsl r1, r1, #1
	add r5, r3, r1
	ldr r1, _0800CE20  @ =gUnknown_082EEEF4
	ldr r2, _0800CE24  @ =0x00000121
	add r4, r3, r2
	ldrb r2, [r4]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, r1
	ldrb r1, [r5]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0800CE38
	cmp r2, #0
	bne _0800CE28
	add r0, r2, #1
	b _0800CE2A
	.byte 0x00
	.byte 0x00
_0800CE20:
	.4byte gUnknown_082EEEF4
_0800CE24:
	.4byte 0x00000121
_0800CE28:
	mov r0, #0
_0800CE2A:
	strb r0, [r4]
_0800CE2C:
	mov r0, #144
	lsl r0, r0, #1
	add r1, r3, r0
	mov r0, #0
	strb r0, [r1]
	b _0800CE3C
_0800CE38:
	add r0, r1, #1
	strb r0, [r5]
_0800CE3C:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800CC6C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800CE44
sub_0800CE44: @ 0x0800CE44
	push {r4-r7,lr}
	sub sp, sp, #4
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r1, _0800CF14  @ =0x03000A10
	add r0, r1, #0
	add r0, r0, #123
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, #0
	beq _0800CEEA
	mov r0, r12
	add r0, r0, #214
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CEEA
	ldr r2, _0800CF18  @ =0x040000D4
	mov r0, r12
	add r0, r0, #124
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0800CF1C  @ =gUnknown_085882C0
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r6]
	ldr r1, _0800CF20  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0800CF24  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800CF28  @ =gUnknown_085882B8
	str r0, [r2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _0800CF2C  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0800CF30  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r3, #20
	ldrh r2, [r1, #2]
	ldr r0, _0800CF34  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r1, _0800CF38  @ =0x0000FFFC
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldrh r0, [r7]
	add r1, r1, r0
	ldr r4, _0800CF3C  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0800CF40  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r4, [r6]
	add r0, r0, r4
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #32
	strh r0, [r7]
_0800CEEA:
	mov r0, r12
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CEFE
	mov r0, r12
	add r0, r0, #214
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800CF0C
_0800CEFE:
	str r6, [sp]
	mov r0, #8
	mov r1, #0
	add r2, r5, #0
	add r3, r7, #0
	bl sub_0800A2B8
_0800CF0C:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
_0800CF14:
	.4byte 0x03000A10
_0800CF18:
	.4byte 0x040000D4
_0800CF1C:
	.4byte gUnknown_085882C0
_0800CF20:
	.4byte 0x06010000
_0800CF24:
	.4byte 0x84000100
_0800CF28:
	.4byte gUnknown_085882B8
_0800CF2C:
	.4byte gOamBuffer
_0800CF30:
	.4byte 0x84000002
_0800CF34:
	.4byte 0xFFFFFE00
_0800CF38:
	.4byte 0x0000FFFC
_0800CF3C:
	.4byte 0x000003FF
_0800CF40:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800CE44

	THUMB_FUNC_START sub_0800CF44
sub_0800CF44: @ 0x0800CF44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #148
	add r7, r0, #0
	str r1, [sp]
	mov r9, r2
	ldr r0, _0800D32C  @ =0x03000A10
	add r0, r0, #214
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800CF64
	bl _0800ECCC
_0800CF64:
	ldr r0, _0800D330  @ =gUnknown_03000B74
	mov r2, #0
	ldrsb r2, [r0, r2]
	ldr r0, _0800D334  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0800CF86
	asr r2, r2, #1
	ldr r0, _0800D338  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800CF86
	mov r2, #7
_0800CF86:
	ldr r1, _0800D334  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r1, r0]
	ldr r1, _0800D33C  @ =gUnknown_03000B58
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl get_level_stats_0800FCE4
	mov r1, #72
	lsl r1, r1, #16
	str r1, [sp, #128]
	cmp r0, #0
	beq _0800D042
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #4
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #128
	strh r0, [r3]
	ldr r2, _0800D340  @ =0x040000D4
	ldr r0, _0800D32C  @ =0x03000A10
	mov r4, #146
	lsl r4, r4, #1
	add r0, r0, r4
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0800D344  @ =gUnknown_082F0444
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r3]
	ldr r1, _0800D348  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0800D34C  @ =0x84000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800D350  @ =gUnknown_082F043C
	str r0, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r4, _0800D354  @ =gOamBuffer
	add r0, r0, r4
	str r0, [r2, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldr r5, [sp, #128]
	asr r1, r5, #16
	add r1, r1, #77
	ldrh r3, [r2, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, #48
	add r1, r1, #6
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r5, _0800D360  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800D042:
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, _0800D340  @ =0x040000D4
	mov r8, r1
	ldr r2, _0800D368  @ =gUnknown_082F0768
	str r2, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r6, _0800D354  @ =gOamBuffer
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r3, _0800D358  @ =0x84000002
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r4, [sp, #128]
	asr r4, r4, #16
	str r4, [sp, #12]
	ldrh r2, [r1, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r5, #48
	strb r5, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r6
	ldr r0, _0800D32C  @ =0x03000A10
	str r0, [sp, #16]
	add r0, r0, #236
	ldr r1, [r0]
	ldr r3, _0800D360  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r4, _0800D364  @ =0xFFFFFC00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r3, #15
	add r0, r3, #0
	and r0, r0, r2
	mov r5, #96
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800D36C  @ =gUnknown_082F07B4
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r2, _0800D358  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r5, [sp, #12]
	add r5, r5, #8
	ldrh r2, [r1, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r5
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, #48
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r0, [sp, #16]
	add r0, r0, #240
	ldr r0, [r0]
	ldr r2, _0800D360  @ =0x000003FF
	and r0, r0, r2
	ldrh r2, [r1, #4]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r6
	ldrb r1, [r0, #5]
	and r3, r3, r1
	mov r4, #96
	orr r3, r3, r4
	strb r3, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, #16
	mov r5, #0
	mov r10, r5
	ldr r0, [sp, #16]
	str r0, [sp, #112]
	mov r12, r6
	mov r1, #48
	add r1, r1, #8
	str r1, [sp, #116]
	mov r2, #48
	add r2, r2, #16
	str r2, [sp, #120]
	mov r3, #48
	add r3, r3, #24
	str r3, [sp, #124]
	mov r5, #48
	add r5, r5, #32
	str r5, [sp, #132]
	mov r0, #48
	add r0, r0, #40
	str r0, [sp, #136]
	mov r1, #48
	add r1, r1, #56
	str r1, [sp, #144]
	mov r2, #48
	add r2, r2, #48
	str r2, [sp, #140]
	mov r6, r8
	mov r5, r12
	ldr r3, [sp, #12]
	mov r8, r3
_0800D154:
	ldr r0, _0800D370  @ =gUnknown_082F0800
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r6, #4]
	ldr r1, _0800D358  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r4, r4, #16
	asr r4, r4, #16
	mov r2, r8
	add r1, r4, r2
	ldr r0, _0800D374  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r1, [sp, #4]
	add r1, r1, #48
	str r1, [sp, #24]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r3, _0800D378  @ =0x03000B04
	ldr r2, [r3]
	ldr r0, _0800D360  @ =0x000003FF
	and r2, r2, r0
	ldrh r3, [r1, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r4, r4, #8
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	cmp r0, #7
	bls _0800D154
	ldr r3, _0800D37C  @ =gUnknown_082F084C
	ldr r5, _0800D340  @ =0x040000D4
	str r3, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	lsl r4, r4, #16
	asr r4, r4, #16
	ldr r1, [sp, #128]
	asr r1, r1, #16
	mov r8, r1
	add r1, r4, r1
	ldr r3, _0800D374  @ =0x000001FF
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r6, _0800D35C  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r5, sp
	ldrb r5, [r5, #24]
	strb r5, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, [sp, #112]
	add r0, r0, #248
	ldr r1, [r0]
	ldr r0, _0800D360  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	add r4, r4, #8
	ldr r3, _0800D368  @ =gUnknown_082F0768
	ldr r5, _0800D340  @ =0x040000D4
	str r3, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	lsl r4, r4, #16
	asr r4, r4, #16
	add r4, r4, r8
	ldr r2, _0800D374  @ =0x000001FF
	and r4, r4, r2
	ldrh r2, [r1, #2]
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r3, sp
	ldrb r3, [r3, #24]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r0, [sp, #112]
	add r0, r0, #236
	ldr r1, [r0]
	ldr r4, _0800D360  @ =0x000003FF
	and r1, r1, r4
	ldrh r3, [r2, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r5, #96
	orr r0, r0, r5
	strb r0, [r1, #5]
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
	mov r0, #8
	str r0, [sp, #4]
	mov r1, #0
	mov r10, r1
	ldr r2, _0800D340  @ =0x040000D4
	mov r8, r2
	mov r5, r12
_0800D2D2:
	ldr r3, _0800D380  @ =gUnknown_082EFCB4
	mov r4, r8
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0800D358  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	ldr r1, [sp, #128]
	asr r1, r1, #16
	str r1, [sp, #28]
	add r4, r1, #0
	add r4, r4, #0
	add r1, r4, #0
	ldr r2, _0800D374  @ =0x000001FF
	and r1, r1, r2
	ldrh r2, [r3, #2]
	ldr r0, _0800D35C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r6, [sp, #4]
	add r6, r6, #48
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r3, _0800D384  @ =0x03000AF8
	ldr r1, [r3]
	ldr r0, _0800D360  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D364  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	b _0800D388
_0800D32C:
	.4byte 0x03000A10
_0800D330:
	.4byte gUnknown_03000B74
_0800D334:
	.4byte gUnknown_03000B80
_0800D338:
	.4byte gUnknown_03000B90
_0800D33C:
	.4byte gUnknown_03000B58
_0800D340:
	.4byte 0x040000D4
_0800D344:
	.4byte gUnknown_082F0444
_0800D348:
	.4byte 0x06010000
_0800D34C:
	.4byte 0x84000020
_0800D350:
	.4byte gUnknown_082F043C
_0800D354:
	.4byte gOamBuffer
_0800D358:
	.4byte 0x84000002
_0800D35C:
	.4byte 0xFFFFFE00
_0800D360:
	.4byte 0x000003FF
_0800D364:
	.4byte 0xFFFFFC00
_0800D368:
	.4byte gUnknown_082F0768
_0800D36C:
	.4byte gUnknown_082F07B4
_0800D370:
	.4byte gUnknown_082F0800
_0800D374:
	.4byte 0x000001FF
_0800D378:
	.4byte 0x03000B04
_0800D37C:
	.4byte gUnknown_082F084C
_0800D380:
	.4byte gUnknown_082EFCB4
_0800D384:
	.4byte 0x03000AF8
_0800D388:
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800D614  @ =gUnknown_082EFCB4
	mov r0, r8
	str r3, [r0]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	str r0, [r1, #4]
	ldr r2, _0800D618  @ =0x84000002
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	add r4, r4, #88
	ldr r3, _0800D61C  @ =0x000001FF
	and r4, r4, r3
	ldrh r2, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	strb r6, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r4, _0800D624  @ =0x03000AF8
	ldr r1, [r4]
	ldr r0, _0800D628  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r0, [r2, #3]
	mov r1, #16
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, [sp, #4]
	lsl r0, r3, #16
	mov r4, #128
	lsl r4, r4, #12
	add r0, r0, r4
	lsr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	cmp r0, #5
	bhi _0800D430
	b _0800D2D2
_0800D430:
	mov r5, #8
	str r5, [sp, #4]
	ldr r5, _0800D630  @ =0x040000D4
	ldr r0, _0800D634  @ =gUnknown_082EFDAC
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r1, _0800D618  @ =0x84000002
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r3, [sp, #28]
	add r3, r3, #8
	ldrh r2, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r2, sp, #116
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [sp, #112]
	add r0, r0, #252
	ldr r2, [r0]
	ldr r3, _0800D628  @ =0x000003FF
	mov r10, r3
	and r2, r2, r3
	ldrh r3, [r1, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	mov r8, r4
	mov r0, r8
	and r0, r0, r2
	mov r6, #96
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800D638  @ =gUnknown_082F0944
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r1, _0800D618  @ =0x84000002
	str r1, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #28]
	add r2, r2, #16
	ldrh r3, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r3
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r2, sp, #116
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #112]
	mov r4, #142
	lsl r4, r4, #1
	add r0, r3, r4
	ldr r1, [r0]
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r1, _0800D63C  @ =gUnknown_082EFBFC
	str r1, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r2, _0800D618  @ =0x84000002
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	add r4, r4, #227
	mov r3, sp
	strh r4, [r3, #32]
	ldr r3, [sp, #28]
	add r3, r3, #24
	ldrh r2, [r1, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #112]
	sub r4, r4, #239
	add r0, r3, r4
	ldr r1, [r0]
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800D62C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r6
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r4, #72
	ldr r1, _0800D640  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0800D658
	ldr r0, _0800D644  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800D658
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #1
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #32
	strh r0, [r3]
	ldr r0, _0800D648  @ =gUnknown_082EFF2C
	str r0, [r5]
	ldrh r0, [r3]
	ldr r1, _0800D64C  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0800D650  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0800D654  @ =gUnknown_082EFF24
	str r0, [r5]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r5, #4]
	ldr r4, _0800D618  @ =0x84000002
	str r4, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, [sp, #28]
	add r1, r1, #72
	mov r5, sp
	ldrh r5, [r5, #32]
	and r1, r1, r5
	ldrh r3, [r2, #2]
	ldr r0, _0800D620  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r4, [sp]
	ldrh r4, [r4]
	add r0, r0, r4
	mov r5, r10
	and r0, r0, r5
	ldr r1, _0800D62C  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r6
	strb r0, [r1, #5]
	b _0800D6C8
	.byte 0x00
	.byte 0x00
_0800D614:
	.4byte gUnknown_082EFCB4
_0800D618:
	.4byte 0x84000002
_0800D61C:
	.4byte 0x000001FF
_0800D620:
	.4byte 0xFFFFFE00
_0800D624:
	.4byte 0x03000AF8
_0800D628:
	.4byte 0x000003FF
_0800D62C:
	.4byte 0xFFFFFC00
_0800D630:
	.4byte 0x040000D4
_0800D634:
	.4byte gUnknown_082EFDAC
_0800D638:
	.4byte gUnknown_082F0944
_0800D63C:
	.4byte gUnknown_082EFBFC
_0800D640:
	.4byte gUnknown_03000B80
_0800D644:
	.4byte gUnknown_03000B90
_0800D648:
	.4byte gUnknown_082EFF2C
_0800D64C:
	.4byte 0x06010000
_0800D650:
	.4byte 0x84000008
_0800D654:
	.4byte gUnknown_082EFF24
_0800D658:
	ldr r1, _0800DA44  @ =0x040000D4
	ldr r0, _0800DA48  @ =gUnknown_082F0944
	str r0, [r1]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r1, #4]
	ldr r0, _0800DA4C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	lsl r1, r4, #16
	asr r1, r1, #16
	ldr r3, [sp, #128]
	asr r0, r3, #16
	add r1, r1, r0
	ldr r4, _0800DA50  @ =0x000001FF
	add r0, r4, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0800DA5C  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800D6C8:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, _0800DA44  @ =0x040000D4
	ldr r2, _0800DA60  @ =gUnknown_082EFDF8
	str r2, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r3, _0800DA4C  @ =0x84000002
	str r3, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	str r5, [sp, #36]
	add r5, r5, #80
	str r5, [sp, #40]
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r5
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #112]
	mov r3, #128
	lsl r3, r3, #1
	add r0, r2, r3
	ldr r2, [r0]
	ldr r5, _0800DA58  @ =0x000003FF
	and r2, r2, r5
	ldrh r3, [r1, #4]
	ldr r6, _0800DA5C  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	mov r8, r2
	mov r3, r8
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, _0800DA64  @ =gUnknown_082EE18C
	str r5, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r0, _0800DA4C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #36]
	add r2, r2, #8
	str r2, [sp, #44]
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r3, [sp, #44]
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r5, sp, #120
	ldrb r5, [r5]
	strb r5, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r1, [sp, #112]
	mov r3, #134
	lsl r3, r3, #1
	add r0, r1, r3
	ldr r1, [r0]
	ldr r5, _0800DA58  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA68  @ =gUnknown_082EFE44
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #44]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #124
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #130
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r3, _0800DA58  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r5, r8
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800DA6C  @ =gUnknown_082EFE90
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _0800DA4C  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #40]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #124
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #132
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r3, _0800DA58  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r5, r8
	orr r0, r0, r5
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r0, _0800DA70  @ =gUnknown_082F033C
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r1, _0800DA4C  @ =0x84000002
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #44]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #132
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DA74  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #44]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #136
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DA74  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #36]
	add r2, r2, #16
	ldrh r3, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800DA74  @ =0x03000B28
	ldr r1, [r3]
	ldr r5, _0800DA58  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #40]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #132
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DA74  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DA58  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DA70  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DA4C  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r3, [sp, #36]
	add r3, r3, #72
	ldrh r2, [r1, #2]
	ldr r0, _0800DA54  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800DA74  @ =0x03000B28
	ldr r1, [r3]
	ldr r5, _0800DA58  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	b _0800DA78
	.byte 0x00
	.byte 0x00
_0800DA44:
	.4byte 0x040000D4
_0800DA48:
	.4byte gUnknown_082F0944
_0800DA4C:
	.4byte 0x84000002
_0800DA50:
	.4byte 0x000001FF
_0800DA54:
	.4byte 0xFFFFFE00
_0800DA58:
	.4byte 0x000003FF
_0800DA5C:
	.4byte 0xFFFFFC00
_0800DA60:
	.4byte gUnknown_082EFDF8
_0800DA64:
	.4byte gUnknown_082EE18C
_0800DA68:
	.4byte gUnknown_082EFE44
_0800DA6C:
	.4byte gUnknown_082EFE90
_0800DA70:
	.4byte gUnknown_082F033C
_0800DA74:
	.4byte 0x03000B28
_0800DA78:
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DD74  @ =gUnknown_082F033C
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #40]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #136
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, _0800DD80  @ =0x03000B28
	ldr r1, [r5]
	ldr r0, _0800DD84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DD88  @ =gUnknown_082EFC68
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	ldr r2, [sp, #36]
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #48
	add r1, r1, #56
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, _0800DD8C  @ =0x03000AF4
	ldr r1, [r3]
	ldr r5, _0800DD84  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	add r0, r6, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DD88  @ =gUnknown_082EFC68
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r3, [sp, #36]
	add r3, r3, #88
	ldrh r2, [r1, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #144
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, _0800DD8C  @ =0x03000AF4
	ldr r0, [r2]
	ldr r3, _0800DD84  @ =0x000003FF
	and r0, r0, r3
	ldrh r2, [r1, #4]
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	mov r5, #15
	and r5, r5, r1
	mov r1, r8
	orr r5, r5, r1
	strb r5, [r0, #5]
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
	mov r3, #16
	str r3, [sp, #4]
	mov r5, #0
	mov r10, r5
	mov r5, r12
	ldr r6, [sp, #112]
	ldr r0, [sp, #36]
	add r0, r0, #40
	str r0, [sp, #52]
_0800DBD8:
	ldr r1, _0800DD90  @ =gUnknown_082F01B0
	str r1, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r2, _0800DD78  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r0, r10
	lsl r1, r0, #3
	ldr r2, [sp, #52]
	add r1, r2, r1
	ldr r0, _0800DD94  @ =0x000001FF
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r3, [r7]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r0, #5
	mov r1, r10
	sub r0, r0, r1
	add r1, r6, #6
	add r0, r0, r1
	ldrb r1, [r0]
	mov r2, #138
	lsl r2, r2, #1
	add r0, r6, r2
	ldr r0, [r0]
	add r1, r1, r0
	ldr r0, _0800DD84  @ =0x000003FF
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800DD98  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	mov r8, r2
	mov r3, r8
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r0, r10
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	cmp r0, #5
	bls _0800DBD8
	ldr r4, _0800DD9C  @ =gUnknown_03000B80
	ldrb r2, [r4]
	sub r0, r2, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0800DC76
	b _0800DDB8
_0800DC76:
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #4
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #128
	strh r0, [r1]
	ldr r4, _0800DDA0  @ =0x040000D4
	ldr r0, _0800DDA4  @ =gUnknown_082EFB58
	str r0, [r4]
	ldrh r0, [r1]
	ldr r1, _0800DDA8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0800DDAC  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0800DDB0  @ =gUnknown_082EFB50
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r2, _0800DD78  @ =0x84000002
	str r2, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #128]
	asr r6, r3, #16
	add r1, r6, #0
	add r1, r1, #40
	ldr r5, _0800DD94  @ =0x000001FF
	and r1, r1, r5
	ldrh r3, [r2, #2]
	ldr r0, _0800DD7C  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800DD84  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800DD98  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DDB4  @ =gUnknown_082F0944
	str r3, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r5, _0800DD78  @ =0x84000002
	str r5, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r6, r6, #64
	ldr r1, _0800DD94  @ =0x000001FF
	and r6, r6, r1
	ldrh r1, [r0, #2]
	mov r2, r10
	and r2, r2, r1
	orr r2, r2, r6
	strh r2, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #116
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r5, [sp, #112]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r5, r1
	ldr r1, [r0]
	ldr r3, _0800DD84  @ =0x000003FF
	and r1, r1, r3
	ldrh r3, [r2, #4]
	ldr r0, _0800DD98  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r4, r8
	orr r0, r0, r4
	strb r0, [r1, #5]
	b _0800E3EC
	.byte 0x00
	.byte 0x00
_0800DD74:
	.4byte gUnknown_082F033C
_0800DD78:
	.4byte 0x84000002
_0800DD7C:
	.4byte 0xFFFFFE00
_0800DD80:
	.4byte 0x03000B28
_0800DD84:
	.4byte 0x000003FF
_0800DD88:
	.4byte gUnknown_082EFC68
_0800DD8C:
	.4byte 0x03000AF4
_0800DD90:
	.4byte gUnknown_082F01B0
_0800DD94:
	.4byte 0x000001FF
_0800DD98:
	.4byte 0xFFFFFC00
_0800DD9C:
	.4byte gUnknown_03000B80
_0800DDA0:
	.4byte 0x040000D4
_0800DDA4:
	.4byte gUnknown_082EFB58
_0800DDA8:
	.4byte 0x06010000
_0800DDAC:
	.4byte 0x84000020
_0800DDB0:
	.4byte gUnknown_082EFB50
_0800DDB4:
	.4byte gUnknown_082F0944
_0800DDB8:
	ldr r0, _0800DDC8  @ =gUnknown_03000BB4
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _0800DDCC
	mov r1, #7
	b _0800DDE2
	.byte 0x00
	.byte 0x00
_0800DDC8:
	.4byte gUnknown_03000BB4
_0800DDCC:
	lsl r0, r2, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0800DDE0
	ldr r0, _0800DDDC  @ =gUnknown_03000BF0
	mov r1, #0
	ldrsb r1, [r0, r1]
	b _0800DDE2
_0800DDDC:
	.4byte gUnknown_03000BF0
_0800DDE0:
	mov r1, #6
_0800DDE2:
	mov r5, #8
	str r5, [sp, #4]
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #2
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #64
	strh r0, [r3]
	ldr r6, _0800DEC0  @ =0x040000D4
	lsl r0, r1, #6
	ldr r1, _0800DEC4  @ =gUnknown_082EF92C
	add r0, r0, r1
	str r0, [r6]
	ldrh r0, [r3]
	ldr r4, _0800DEC8  @ =0x06010000
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r5, _0800DECC  @ =0x84000010
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800DED0  @ =gUnknown_082EF924
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r0, _0800DED4  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	mov r8, r2
	ldr r3, _0800DED8  @ =0x000001FF
	mov r10, r3
	mov r3, r8
	add r3, r3, #40
	ldrh r2, [r1, #2]
	ldr r0, _0800DEDC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r3
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r5, [sp, #116]
	str r5, [sp, #60]
	add r1, sp, #60
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800DEE0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800DEE4  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r3, _0800DEE8  @ =gUnknown_03000BB4
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0800DF6C
	ldr r1, _0800DEEC  @ =gUnknown_03000BF8
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #1
	cmp r0, #9
	bgt _0800DEF4
	str r0, [sp, #8]
	ldr r4, _0800DEF0  @ =gUnknown_082F0944
	str r4, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800DED4  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	b _0800E252
	.byte 0x00
	.byte 0x00
_0800DEC0:
	.4byte 0x040000D4
_0800DEC4:
	.4byte gUnknown_082EF92C
_0800DEC8:
	.4byte 0x06010000
_0800DECC:
	.4byte 0x84000010
_0800DED0:
	.4byte gUnknown_082EF924
_0800DED4:
	.4byte 0x84000002
_0800DED8:
	.4byte 0x000001FF
_0800DEDC:
	.4byte 0xFFFFFE00
_0800DEE0:
	.4byte 0x000003FF
_0800DEE4:
	.4byte 0xFFFFFC00
_0800DEE8:
	.4byte gUnknown_03000BB4
_0800DEEC:
	.4byte gUnknown_03000BF8
_0800DEF0:
	.4byte gUnknown_082F0944
_0800DEF4:
	mov r3, #1
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r2, r9
	ldrh r0, [r2]
	sub r0, r0, #32
	strh r0, [r2]
	mov r0, #0
	ldrsb r0, [r1, r0]
	sub r0, r0, #9
	lsl r0, r0, #5
	ldr r3, _0800DF58  @ =gUnknown_082ECF9C
	add r0, r0, r3
	str r0, [r6]
	ldrh r0, [r2]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800DF5C  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0800DF60  @ =gUnknown_082ECF94
	str r4, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800DF64  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800DF68  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #60
	b _0800E324
	.byte 0x00
	.byte 0x00
_0800DF58:
	.4byte gUnknown_082ECF9C
_0800DF5C:
	.4byte 0x84000008
_0800DF60:
	.4byte gUnknown_082ECF94
_0800DF64:
	.4byte 0x84000002
_0800DF68:
	.4byte 0xFFFFFE00
_0800DF6C:
	ldr r0, _0800DFF0  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0800E010
	mov r3, #10
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	ldr r0, _0800DFF4  @ =gUnknown_082EFF4C
	str r0, [r6]
	ldrh r0, [r1]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800DFF8  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800DFFC  @ =gUnknown_082EFF24
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r2, _0800E000  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800E004  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #60
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E008  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E00C  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
_0800DFF0:
	.4byte gUnknown_03000B90
_0800DFF4:
	.4byte gUnknown_082EFF4C
_0800DFF8:
	.4byte 0x84000008
_0800DFFC:
	.4byte gUnknown_082EFF24
_0800E000:
	.4byte 0x84000002
_0800E004:
	.4byte 0xFFFFFE00
_0800E008:
	.4byte 0x000003FF
_0800E00C:
	.4byte 0xFFFFFC00
_0800E010:
	mov r2, #1
	and r1, r1, r2
	cmp r1, #0
	beq _0800E0AC
	mov r3, #11
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	ldr r0, _0800E090  @ =gUnknown_082EFF6C
	str r0, [r6]
	ldrh r0, [r1]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800E094  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800E098  @ =gUnknown_082EFF24
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r2, _0800E09C  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800E0A0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #60
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E0A4  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E0A8  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
_0800E090:
	.4byte gUnknown_082EFF6C
_0800E094:
	.4byte 0x84000008
_0800E098:
	.4byte gUnknown_082EFF24
_0800E09C:
	.4byte 0x84000002
_0800E0A0:
	.4byte 0xFFFFFE00
_0800E0A4:
	.4byte 0x000003FF
_0800E0A8:
	.4byte 0xFFFFFC00
_0800E0AC:
	ldr r3, _0800E144  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0800E168
	ldr r1, _0800E148  @ =gUnknown_03000BF8
	ldrb r0, [r1]
	lsl r0, r0, #24
	asr r0, r0, #25
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #2
	strh r0, [r5]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #64
	strh r0, [r3]
	ldrb r1, [r1]
	add r0, r2, #0
	and r0, r0, r1
	lsl r0, r0, #6
	ldr r1, _0800E14C  @ =gUnknown_082ED5C4
	add r0, r0, r1
	str r0, [r6]
	ldrh r0, [r3]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r4, _0800E150  @ =0x84000010
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800E154  @ =gUnknown_082ED5BC
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800E158  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800E15C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #60
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r4, [sp]
	ldrh r4, [r4]
	add r0, r0, r4
	ldr r5, _0800E160  @ =0x000003FF
	and r0, r0, r5
	ldr r1, _0800E164  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
	.byte 0x00
	.byte 0x00
_0800E144:
	.4byte gUnknown_03000B80
_0800E148:
	.4byte gUnknown_03000BF8
_0800E14C:
	.4byte gUnknown_082ED5C4
_0800E150:
	.4byte 0x84000010
_0800E154:
	.4byte gUnknown_082ED5BC
_0800E158:
	.4byte 0x84000002
_0800E15C:
	.4byte 0xFFFFFE00
_0800E160:
	.4byte 0x000003FF
_0800E164:
	.4byte 0xFFFFFC00
_0800E168:
	cmp r0, #1
	bne _0800E210
	ldr r0, _0800E1F0  @ =gUnknown_03000BF8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r3, [sp]
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #32
	strh r0, [r5]
	ldr r0, _0800E1F4  @ =gUnknown_082EFF2C
	str r0, [r6]
	ldrh r0, [r5]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800E1F8  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r0, _0800E1FC  @ =gUnknown_082EFF24
	str r0, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r0, _0800E200  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r3, r10
	and r1, r1, r3
	ldrh r3, [r2, #2]
	ldr r0, _0800E204  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #60
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E208  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E20C  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	b _0800E286
	.byte 0x00
	.byte 0x00
_0800E1F0:
	.4byte gUnknown_03000BF8
_0800E1F4:
	.4byte gUnknown_082EFF2C
_0800E1F8:
	.4byte 0x84000008
_0800E1FC:
	.4byte gUnknown_082EFF24
_0800E200:
	.4byte 0x84000002
_0800E204:
	.4byte 0xFFFFFE00
_0800E208:
	.4byte 0x000003FF
_0800E20C:
	.4byte 0xFFFFFC00
_0800E210:
	cmp r0, #2
	bne _0800E224
	ldr r0, _0800E220  @ =gUnknown_03000BF0
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r0, r0, #1
	b _0800E230
_0800E220:
	.4byte gUnknown_03000BF0
_0800E224:
	ldr r1, _0800E2A4  @ =gUnknown_03000BF0
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #7
	cmp r0, #9
	bgt _0800E2C4
_0800E230:
	str r0, [sp, #8]
	ldr r3, _0800E2A8  @ =gUnknown_082F0944
	str r3, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r4, _0800E2AC  @ =0x84000002
	str r4, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r5, r10
	and r1, r1, r5
_0800E252:
	ldrh r3, [r2, #2]
	ldr r0, _0800E2B0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #60
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r3, [sp, #112]
	mov r4, #142
	lsl r4, r4, #1
	add r0, r3, r4
	ldr r1, [r0]
	ldr r5, _0800E2B4  @ =0x000003FF
	and r1, r1, r5
	ldrh r3, [r2, #4]
	ldr r0, _0800E2B8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
_0800E286:
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, _0800E2BC  @ =gUnknown_082ECF9C
	ldr r4, _0800E2C0  @ =gUnknown_082ECF94
	b _0800E360
_0800E2A4:
	.4byte gUnknown_03000BF0
_0800E2A8:
	.4byte gUnknown_082F0944
_0800E2AC:
	.4byte 0x84000002
_0800E2B0:
	.4byte 0xFFFFFE00
_0800E2B4:
	.4byte 0x000003FF
_0800E2B8:
	.4byte 0xFFFFFC00
_0800E2BC:
	.4byte gUnknown_082ECF9C
_0800E2C0:
	.4byte gUnknown_082ECF94
_0800E2C4:
	mov r3, #1
	str r3, [sp, #8]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #1
	strh r0, [r5]
	mov r2, r9
	ldrh r0, [r2]
	sub r0, r0, #32
	strh r0, [r2]
	mov r0, #0
	ldrsb r0, [r1, r0]
	sub r0, r0, #3
	lsl r0, r0, #5
	ldr r3, _0800E4E8  @ =gUnknown_082ECF9C
	add r0, r0, r3
	str r0, [r6]
	ldrh r0, [r2]
	add r0, r0, r4
	str r0, [r6, #4]
	ldr r0, _0800E4EC  @ =0x84000008
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0800E4F0  @ =gUnknown_082ECF94
	str r4, [r6]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r6, #4]
	ldr r5, _0800E4F4  @ =0x84000002
	str r5, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r1, r8
	add r1, r1, #64
	mov r0, r10
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0800E4F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #116
_0800E324:
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r0, r3, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800E4FC  @ =0x000003FF
	and r0, r0, r1
	ldr r1, _0800E500  @ =0xFFFFFC00
	and r1, r1, r3
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, _0800E4E8  @ =gUnknown_082ECF9C
_0800E360:
	ldr r3, [sp]
	ldrh r0, [r3]
	sub r0, r0, #1
	strh r0, [r3]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #32
	strh r0, [r1]
	ldr r2, _0800E504  @ =0x040000D4
	ldr r3, [sp, #8]
	lsl r0, r3, #5
	add r0, r0, r5
	str r0, [r2]
	ldrh r0, [r1]
	ldr r1, _0800E508  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0800E4EC  @ =0x84000008
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	str r4, [r2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r2, #4]
	ldr r0, _0800E4F4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldr r4, [sp, #128]
	asr r1, r4, #16
	add r1, r1, #56
	ldrh r3, [r2, #2]
	ldr r0, _0800E4F8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r1, [sp, #4]
	add r1, r1, #48
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r4, _0800E4FC  @ =0x000003FF
	add r0, r4, #0
	and r1, r1, r0
	ldr r0, _0800E500  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r2, #5]
_0800E3EC:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp, #112]
	mov r1, #145
	lsl r1, r1, #1
	add r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800E402
	b _0800E528
_0800E402:
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #8
	strh r0, [r2]
	ldr r4, _0800E50C  @ =0xFFFFFF00
	mov r3, r9
	ldrh r3, [r3]
	add r0, r4, r3
	mov r4, r9
	strh r0, [r4]
	ldr r3, _0800E504  @ =0x040000D4
	ldr r5, _0800E510  @ =0x03000B31
	ldrb r0, [r5]
	lsl r0, r0, #8
	ldr r1, _0800E514  @ =gUnknown_082EE264
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r4]
	ldr r1, _0800E508  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _0800E518  @ =0x84000040
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E51C  @ =gUnknown_082EE25C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800E4F4  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	mov r8, r5
	mov r2, r8
	add r2, r2, #16
	ldrh r4, [r1, #2]
	ldr r6, _0800E4F8  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r4
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #124
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800E4FC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800E500  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #8
	strh r0, [r5]
	ldr r1, _0800E50C  @ =0xFFFFFF00
	mov r0, r9
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [sp, #64]
	mov r1, r9
	strh r0, [r1]
	ldr r2, _0800E510  @ =0x03000B31
	ldrb r0, [r2]
	lsl r0, r0, #8
	ldr r1, _0800E520  @ =gUnknown_082EE4B4
	add r0, r0, r1
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	ldr r1, _0800E508  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _0800E518  @ =0x84000040
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E524  @ =gUnknown_082EE4AC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0800E4F4  @ =0x84000002
	str r5, [r3, #8]
	b _0800E5F8
_0800E4E8:
	.4byte gUnknown_082ECF9C
_0800E4EC:
	.4byte 0x84000008
_0800E4F0:
	.4byte gUnknown_082ECF94
_0800E4F4:
	.4byte 0x84000002
_0800E4F8:
	.4byte 0xFFFFFE00
_0800E4FC:
	.4byte 0x000003FF
_0800E500:
	.4byte 0xFFFFFC00
_0800E504:
	.4byte 0x040000D4
_0800E508:
	.4byte 0x06010000
_0800E50C:
	.4byte 0xFFFFFF00
_0800E510:
	.4byte 0x03000B31
_0800E514:
	.4byte gUnknown_082EE264
_0800E518:
	.4byte 0x84000040
_0800E51C:
	.4byte gUnknown_082EE25C
_0800E520:
	.4byte gUnknown_082EE4B4
_0800E524:
	.4byte gUnknown_082EE4AC
_0800E528:
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #8
	strh r0, [r2]
	ldr r4, _0800E77C  @ =0xFFFFFF00
	mov r3, r9
	ldrh r3, [r3]
	add r0, r4, r3
	mov r4, r9
	strh r0, [r4]
	ldr r3, _0800E780  @ =0x040000D4
	ldr r0, _0800E784  @ =gUnknown_082ED670
	str r0, [r3]
	ldrh r0, [r4]
	ldr r5, _0800E788  @ =0x06010000
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800E78C  @ =0x84000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E790  @ =gUnknown_082ED668
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r1, _0800E794  @ =0x84000002
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	mov r8, r2
	add r2, r2, #16
	ldrh r4, [r1, #2]
	ldr r6, _0800E798  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r4
	orr r2, r2, r0
	strh r2, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #124
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800E79C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800E7A0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #8
	strh r0, [r5]
	ldr r1, _0800E77C  @ =0xFFFFFF00
	mov r0, r9
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [sp, #72]
	mov r1, r9
	strh r0, [r1]
	ldr r0, _0800E7A4  @ =gUnknown_082ED79C
	str r0, [r3]
	ldrh r0, [r1]
	ldr r2, _0800E788  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r5, _0800E78C  @ =0x84000040
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E7A8  @ =gUnknown_082ED794
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r0, _0800E794  @ =0x84000002
	str r0, [r3, #8]
_0800E5F8:
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #48
	add r8, r8, r1
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r2, r8
	orr r6, r6, r2
	strh r6, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #124
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r3, _0800E79C  @ =0x000003FF
	and r0, r0, r3
	ldr r5, _0800E7A0  @ =0xFFFFFC00
	and r5, r5, r2
	orr r5, r5, r0
	strh r5, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	and r4, r4, r1
	mov r1, #96
	orr r4, r4, r1
	strb r4, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r2, [sp, #112]
	mov r3, #145
	lsl r3, r3, #1
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #1
	beq _0800E65E
	b _0800E7C8
_0800E65E:
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #128
	strh r0, [r5]
	ldr r3, _0800E780  @ =0x040000D4
	ldr r1, _0800E7AC  @ =0x03000B31
	ldrb r0, [r1]
	lsl r0, r0, #7
	ldr r1, _0800E7B0  @ =gUnknown_082EF634
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	ldr r2, _0800E788  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800E7B4  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E7B8  @ =gUnknown_082EF62C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800E794  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	mov r8, r5
	mov r4, r8
	add r4, r4, #24
	ldrh r2, [r1, #2]
	ldr r6, _0800E798  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800E79C  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800E7A0  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #2
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #64
	strh r0, [r1]
	ldr r2, _0800E7AC  @ =0x03000B31
	ldrb r0, [r2]
	lsl r0, r0, #6
	ldr r1, _0800E7BC  @ =gUnknown_082EF784
	add r0, r0, r1
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	ldr r1, _0800E788  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800E7C0  @ =0x84000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800E7C4  @ =gUnknown_082EF77C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r2, _0800E794  @ =0x84000002
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r3, #56
	add r8, r8, r3
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r5, r8
	orr r6, r6, r5
	strh r6, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #136
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, _0800E79C  @ =0x000003FF
	and r0, r0, r5
	ldr r3, _0800E7A0  @ =0xFFFFFC00
	and r3, r3, r2
	orr r3, r3, r0
	strh r3, [r1, #4]
	b _0800E8D2
	.byte 0x00
	.byte 0x00
_0800E77C:
	.4byte 0xFFFFFF00
_0800E780:
	.4byte 0x040000D4
_0800E784:
	.4byte gUnknown_082ED670
_0800E788:
	.4byte 0x06010000
_0800E78C:
	.4byte 0x84000040
_0800E790:
	.4byte gUnknown_082ED668
_0800E794:
	.4byte 0x84000002
_0800E798:
	.4byte 0xFFFFFE00
_0800E79C:
	.4byte 0x000003FF
_0800E7A0:
	.4byte 0xFFFFFC00
_0800E7A4:
	.4byte gUnknown_082ED79C
_0800E7A8:
	.4byte gUnknown_082ED794
_0800E7AC:
	.4byte 0x03000B31
_0800E7B0:
	.4byte gUnknown_082EF634
_0800E7B4:
	.4byte 0x84000020
_0800E7B8:
	.4byte gUnknown_082EF62C
_0800E7BC:
	.4byte gUnknown_082EF784
_0800E7C0:
	.4byte 0x84000010
_0800E7C4:
	.4byte gUnknown_082EF77C
_0800E7C8:
	ldr r2, [sp]
	ldrh r0, [r2]
	sub r0, r0, #4
	strh r0, [r2]
	mov r3, r9
	ldrh r0, [r3]
	sub r0, r0, #128
	strh r0, [r3]
	ldr r3, _0800EAC4  @ =0x040000D4
	ldr r0, _0800EAC8  @ =gUnknown_082EE07C
	str r0, [r3]
	mov r4, r9
	ldrh r0, [r4]
	ldr r5, _0800EACC  @ =0x06010000
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800EAD0  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EAD4  @ =gUnknown_082EE074
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r0, _0800EAD8  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	mov r8, r2
	mov r4, r8
	add r4, r4, #24
	ldrh r2, [r1, #2]
	ldr r6, _0800EADC  @ =0xFFFFFE00
	add r0, r6, #0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #136
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800EAE0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0800EAE4  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r4, #15
	add r0, r4, #0
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r5, [sp]
	ldrh r0, [r5]
	sub r0, r0, #2
	strh r0, [r5]
	mov r1, r9
	ldrh r0, [r1]
	sub r0, r0, #64
	strh r0, [r1]
	ldr r0, _0800EAE8  @ =gUnknown_082EE128
	str r0, [r3]
	ldrh r0, [r1]
	ldr r2, _0800EACC  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800EAEC  @ =0x84000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EAF0  @ =gUnknown_082EE120
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0800EAD8  @ =0x84000002
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	mov r1, #56
	add r8, r8, r1
	ldrh r1, [r0, #2]
	and r6, r6, r1
	mov r2, r8
	orr r6, r6, r2
	strh r6, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r3, sp, #136
	ldrb r3, [r3]
	strb r3, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r3, _0800EAE0  @ =0x000003FF
	and r0, r0, r3
	ldr r5, _0800EAE4  @ =0xFFFFFC00
	and r5, r5, r2
	orr r5, r5, r0
	strh r5, [r1, #4]
_0800E8D2:
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	and r4, r4, r1
	mov r1, #96
	orr r4, r4, r1
	strb r4, [r0, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r2, [sp, #112]
	mov r3, #145
	lsl r3, r3, #1
	add r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq _0800E8F8
	b _0800EB18
_0800E8F8:
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #8
	strh r0, [r4]
	ldr r1, _0800EAF4  @ =0xFFFFFF00
	mov r5, r9
	ldrh r5, [r5]
	add r0, r1, r5
	mov r1, r9
	strh r0, [r1]
	ldr r3, _0800EAC4  @ =0x040000D4
	ldr r2, _0800EAF8  @ =0x03000B31
	ldrb r0, [r2]
	lsl r0, r0, #8
	ldr r1, _0800EAFC  @ =gUnknown_082EE954
	add r0, r0, r1
	str r0, [r3]
	mov r4, r9
	ldrh r0, [r4]
	ldr r5, _0800EACC  @ =0x06010000
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0800EB00  @ =0x84000040
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EB04  @ =gUnknown_082EE94C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r1, _0800EAD8  @ =0x84000002
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r2, [sp, #128]
	asr r2, r2, #16
	str r2, [sp, #88]
	add r4, r2, #0
	add r4, r4, #8
	ldrh r2, [r1, #2]
	ldr r5, _0800EADC  @ =0xFFFFFE00
	mov r8, r5
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800EAE0  @ =0x000003FF
	and r1, r1, r0
	ldr r6, _0800EAE4  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #8
	strh r0, [r4]
	ldr r0, _0800EAF4  @ =0xFFFFFF00
	mov r5, r9
	ldrh r5, [r5]
	add r5, r0, r5
	str r5, [sp, #92]
	mov r0, r9
	strh r5, [r0]
	ldr r1, _0800EAF8  @ =0x03000B31
	ldrb r0, [r1]
	lsl r0, r0, #8
	ldr r1, _0800EB08  @ =gUnknown_082EEBA4
	add r0, r0, r1
	str r0, [r3]
	mov r2, r9
	ldrh r0, [r2]
	ldr r4, _0800EACC  @ =0x06010000
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r5, _0800EB00  @ =0x84000040
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EB0C  @ =gUnknown_082EEB9C
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r0, _0800EAD8  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r4, [sp, #88]
	add r4, r4, #40
	ldrh r2, [r1, #2]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800EAE0  @ =0x000003FF
	and r0, r0, r1
	add r1, r6, #0
	and r1, r1, r4
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #128
	strh r0, [r5]
	ldr r1, _0800EAF8  @ =0x03000B31
	ldrb r0, [r1]
	lsl r0, r0, #7
	ldr r1, _0800EB10  @ =gUnknown_082EEDF4
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	ldr r2, _0800EACC  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0800EAD0  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800EB14  @ =gUnknown_082EEDEC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800EAD8  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r2, [sp, #88]
	add r2, r2, #72
	ldrh r1, [r0, #2]
	mov r5, r8
	and r5, r5, r1
	orr r5, r5, r2
	strh r5, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r4, _0800EAE0  @ =0x000003FF
	and r0, r0, r4
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	mov r5, #15
	and r5, r5, r1
	mov r1, #96
	orr r5, r5, r1
	strb r5, [r0, #5]
	b _0800ECC6
_0800EAC4:
	.4byte 0x040000D4
_0800EAC8:
	.4byte gUnknown_082EE07C
_0800EACC:
	.4byte 0x06010000
_0800EAD0:
	.4byte 0x84000020
_0800EAD4:
	.4byte gUnknown_082EE074
_0800EAD8:
	.4byte 0x84000002
_0800EADC:
	.4byte 0xFFFFFE00
_0800EAE0:
	.4byte 0x000003FF
_0800EAE4:
	.4byte 0xFFFFFC00
_0800EAE8:
	.4byte gUnknown_082EE128
_0800EAEC:
	.4byte 0x84000010
_0800EAF0:
	.4byte gUnknown_082EE120
_0800EAF4:
	.4byte 0xFFFFFF00
_0800EAF8:
	.4byte 0x03000B31
_0800EAFC:
	.4byte gUnknown_082EE954
_0800EB00:
	.4byte 0x84000040
_0800EB04:
	.4byte gUnknown_082EE94C
_0800EB08:
	.4byte gUnknown_082EEBA4
_0800EB0C:
	.4byte gUnknown_082EEB9C
_0800EB10:
	.4byte gUnknown_082EEDF4
_0800EB14:
	.4byte gUnknown_082EEDEC
_0800EB18:
	ldr r3, [sp]
	ldrh r0, [r3]
	sub r0, r0, #8
	strh r0, [r3]
	ldr r5, _0800ECDC  @ =0xFFFFFF00
	mov r4, r9
	ldrh r4, [r4]
	add r0, r5, r4
	mov r5, r9
	strh r0, [r5]
	ldr r3, _0800ECE0  @ =0x040000D4
	ldr r0, _0800ECE4  @ =gUnknown_082ED9F4
	str r0, [r3]
	ldrh r0, [r5]
	ldr r1, _0800ECE8  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r2, _0800ECEC  @ =0x84000040
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800ECF0  @ =gUnknown_082ED9EC
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r4, _0800ECF4  @ =0x84000002
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r5, [sp, #128]
	asr r5, r5, #16
	str r5, [sp, #100]
	add r4, r5, #0
	add r4, r4, #8
	ldrh r2, [r1, #2]
	ldr r0, _0800ECF8  @ =0xFFFFFE00
	mov r8, r0
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	lsr r1, r1, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r1, r1, r5
	ldr r0, _0800ECFC  @ =0x000003FF
	and r1, r1, r0
	ldr r6, _0800ED00  @ =0xFFFFFC00
	add r0, r6, #0
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #8
	strh r0, [r4]
	ldr r0, _0800ECDC  @ =0xFFFFFF00
	mov r5, r9
	ldrh r5, [r5]
	add r5, r0, r5
	str r5, [sp, #104]
	mov r0, r9
	strh r5, [r0]
	ldr r0, _0800ED04  @ =gUnknown_082EDB20
	str r0, [r3]
	mov r1, r9
	ldrh r0, [r1]
	ldr r2, _0800ECE8  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r4, _0800ECEC  @ =0x84000040
	str r4, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800ED08  @ =gUnknown_082EDB18
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r5, _0800ECF4  @ =0x84000002
	str r5, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r4, [sp, #100]
	add r4, r4, #40
	ldrh r2, [r1, #2]
	mov r0, r8
	and r0, r0, r2
	orr r0, r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r1, sp, #140
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r12
	ldrh r4, [r2, #4]
	lsl r0, r4, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r1, _0800ECFC  @ =0x000003FF
	and r0, r0, r1
	add r1, r6, #0
	and r1, r1, r4
	orr r1, r1, r0
	strh r1, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, #96
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	ldr r4, [sp]
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	mov r5, r9
	ldrh r0, [r5]
	sub r0, r0, #128
	strh r0, [r5]
	ldr r0, _0800ED0C  @ =gUnknown_082EDC4C
	str r0, [r3]
	ldrh r0, [r5]
	ldr r1, _0800ECE8  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0800ED10  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0800ED14  @ =gUnknown_082EDC44
	str r0, [r3]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r3, #4]
	ldr r2, _0800ECF4  @ =0x84000002
	str r2, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldr r2, [sp, #100]
	add r2, r2, #72
	ldrh r1, [r0, #2]
	mov r3, r8
	and r3, r3, r1
	orr r3, r3, r2
	strh r3, [r0, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	add r4, sp, #140
	ldrb r4, [r4]
	strb r4, [r0]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrh r2, [r1, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r5, [sp]
	ldrh r5, [r5]
	add r0, r0, r5
	ldr r3, _0800ECFC  @ =0x000003FF
	and r0, r0, r3
	and r6, r6, r2
	orr r6, r6, r0
	strh r6, [r1, #4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrb r1, [r0, #5]
	mov r4, #15
	and r4, r4, r1
	mov r5, #96
	orr r4, r4, r5
	strb r4, [r0, #5]
_0800ECC6:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
_0800ECCC:
	add sp, sp, #148
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800ECDC:
	.4byte 0xFFFFFF00
_0800ECE0:
	.4byte 0x040000D4
_0800ECE4:
	.4byte gUnknown_082ED9F4
_0800ECE8:
	.4byte 0x06010000
_0800ECEC:
	.4byte 0x84000040
_0800ECF0:
	.4byte gUnknown_082ED9EC
_0800ECF4:
	.4byte 0x84000002
_0800ECF8:
	.4byte 0xFFFFFE00
_0800ECFC:
	.4byte 0x000003FF
_0800ED00:
	.4byte 0xFFFFFC00
_0800ED04:
	.4byte gUnknown_082EDB20
_0800ED08:
	.4byte gUnknown_082EDB18
_0800ED0C:
	.4byte gUnknown_082EDC4C
_0800ED10:
	.4byte 0x84000020
_0800ED14:
	.4byte gUnknown_082EDC44
	THUMB_FUNC_END sub_0800CF44

	THUMB_FUNC_START sub_0800ED18
sub_0800ED18: @ 0x0800ED18
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _0800EE44  @ =0x03000A10
	mov r12, r2
	add r2, r2, #48
	mov r3, #0
	mov r8, r3
	mov r3, #1
	strb r3, [r2]
	mov r2, r12
	add r2, r2, #182
	mov r4, r8
	strb r4, [r2]
	sub r2, r2, #125
	strb r4, [r2]
	add r2, r2, #11
	strb r4, [r2]
	sub r2, r2, #18
	strb r4, [r2]
	add r2, r2, #1
	strb r3, [r2]
	add r2, r2, #153
	strb r4, [r2]
	add r2, r2, #10
	strb r4, [r2]
	ldrh r2, [r0]
	mov r5, r12
	str r2, [r5, #20]
	ldr r2, _0800EE48  @ =gUnknown_082EBC34
	ldr r4, _0800EE4C  @ =0x040000D4
	str r2, [r4]
	ldrh r2, [r1]
	ldr r3, _0800EE50  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r5, _0800EE54  @ =0x84000080
	mov r9, r5
	str r5, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r6, [r1]
	mov r2, #128
	lsl r2, r2, #2
	add r6, r6, r2
	strh r6, [r1]
	ldrh r2, [r0]
	add r7, r2, #0
	add r7, r7, #16
	lsl r2, r7, #16
	lsr r2, r2, #16
	mov r3, r12
	str r2, [r3, #40]
	ldr r2, _0800EE58  @ =gUnknown_082E84DC
	str r2, [r4]
	ldrh r2, [r1]
	ldr r5, _0800EE50  @ =0x06010000
	add r2, r2, r5
	str r2, [r4, #4]
	mov r2, r9
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r3, #128
	lsl r3, r3, #2
	add r3, r3, r6
	mov r10, r3
	strh r3, [r1]
	add r3, r7, #0
	add r3, r3, #16
	lsl r2, r3, #16
	lsr r2, r2, #16
	mov r5, r12
	str r2, [r5, #44]
	ldr r2, _0800EE5C  @ =gUnknown_082E8A58
	str r2, [r4]
	ldrh r2, [r1]
	ldr r5, _0800EE50  @ =0x06010000
	add r2, r2, r5
	str r2, [r4, #4]
	mov r2, r9
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r5, #128
	lsl r5, r5, #2
	add r5, r5, r10
	strh r5, [r1]
	add r3, r3, #16
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r5, r12
	str r3, [r5, #28]
	ldr r2, _0800EE60  @ =gUnknown_082F0CFC
	str r2, [r4]
	ldrh r2, [r1]
	ldr r3, _0800EE50  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r2, _0800EE64  @ =0x84000020
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r5, #144
	lsl r5, r5, #3
	add r2, r6, r5
	strh r2, [r1]
	add r2, r7, #0
	add r2, r2, #36
	strh r2, [r0]
	ldrh r2, [r0]
	mov r3, r12
	str r2, [r3, #72]
	ldr r2, _0800EE68  @ =gUnknown_082F8F0C
	str r2, [r4]
	ldrh r2, [r1]
	ldr r5, _0800EE50  @ =0x06010000
	add r2, r2, r5
	str r2, [r4, #4]
	mov r2, r9
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	mov r3, #208
	lsl r3, r3, #3
	add r6, r6, r3
	strh r6, [r1]
	add r2, r7, #0
	add r2, r2, #52
	strh r2, [r0]
	mov r3, r12
	add r3, r3, #215
	mov r2, #3
	strb r2, [r3]
	mov r2, r12
	add r2, r2, #216
	mov r4, r8
	strb r4, [r2]
	add r2, r2, #4
	mov r5, r8
	str r5, [r2]
	add r3, r3, #9
	ldr r2, _0800EE6C  @ =gUnknown_082EB118
	str r2, [r3]
	bl sub_0806CFB0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0800EE44:
	.4byte 0x03000A10
_0800EE48:
	.4byte gUnknown_082EBC34
_0800EE4C:
	.4byte 0x040000D4
_0800EE50:
	.4byte 0x06010000
_0800EE54:
	.4byte 0x84000080
_0800EE58:
	.4byte gUnknown_082E84DC
_0800EE5C:
	.4byte gUnknown_082E8A58
_0800EE60:
	.4byte gUnknown_082F0CFC
_0800EE64:
	.4byte 0x84000020
_0800EE68:
	.4byte gUnknown_082F8F0C
_0800EE6C:
	.4byte gUnknown_082EB118
	THUMB_FUNC_END sub_0800ED18

	THUMB_FUNC_START sub_0800EE70
sub_0800EE70: @ 0x0800EE70
	push {r4,r5,lr}
	ldr r0, _0800EEB4  @ =gUnknown_03000BBC
	ldrb r5, [r0]
	ldr r4, _0800EEB8  @ =0x03000A10
	add r0, r4, #0
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800EEAC
	bl sub_0806D7EC
	lsl r1, r5, #24
	asr r1, r1, #24
	ldr r0, _0800EEBC  @ =0x0000199A
	mul r0, r1, r0
	asr r3, r0, #16
	strb r3, [r4, #13]
	ldrb r2, [r4, #13]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #1
	sub r1, r1, r0
	strb r1, [r4, #12]
	lsl r1, r1, #24
	lsr r1, r1, #24
	cmp r1, #9
	bls _0800EEAA
	mov r0, #9
	strb r0, [r4, #12]
_0800EEAA:
	strb r3, [r4, #13]
_0800EEAC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800EEB4:
	.4byte gUnknown_03000BBC
_0800EEB8:
	.4byte 0x03000A10
_0800EEBC:
	.4byte 0x0000199A
	THUMB_FUNC_END sub_0800EE70

	THUMB_FUNC_START sub_0800EEC0
sub_0800EEC0: @ 0x0800EEC0
	bx lr
	THUMB_FUNC_END sub_0800EEC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EEC4
sub_0800EEC4: @ 0x0800EEC4
	bx lr
	THUMB_FUNC_END sub_0800EEC4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EEC8
sub_0800EEC8: @ 0x0800EEC8
	push {r4,r5,lr}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r2, _0800EF08  @ =0x03000A10
	add r4, r2, #0
	add r4, r4, #55
	ldrb r1, [r4]
	orr r0, r0, r1
	strb r0, [r4]
	add r5, r2, #0
	add r5, r5, #56
	ldrb r1, [r5]
	cmp r1, #0
	bne _0800EEFA
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0800EEFA:
	ldrb r0, [r4]
	strb r0, [r5]
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800EF08:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800EEC8

	THUMB_FUNC_START sub_0800EF0C
sub_0800EF0C: @ 0x0800EF0C
	ldr r0, _0800EF18  @ =0x03000A10
	add r0, r0, #48
	mov r1, #0
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0800EF18:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800EF0C

	THUMB_FUNC_START sub_0800EF1C
sub_0800EF1C: @ 0x0800EF1C
	ldr r0, _0800EF2C  @ =0x03000A10
	add r2, r0, #0
	add r2, r2, #55
	mov r1, #0
	strb r1, [r2]
	add r0, r0, #56
	strb r1, [r0]
	bx lr
_0800EF2C:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800EF1C

	THUMB_FUNC_START sub_0800EF30
sub_0800EF30: @ 0x0800EF30
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r4, _0800EF5C  @ =0x03000A10
	add r0, r4, #0
	add r0, r0, #57
	mov r5, #0
	strb r5, [r0]
	bl sub_0801B310
	bl sub_08033658
	add r1, r0, #0
	cmp r1, #0
	beq _0800EF60
	add r0, r4, #0
	add r0, r0, #52
	strb r5, [r0]
	mov r0, #64
	bl sub_08071E14
	mov r0, #3
	b _0800EF82
_0800EF5C:
	.4byte 0x03000A10
_0800EF60:
	add r2, r4, #0
	add r2, r2, #182
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800EF80
	strb r1, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #65
	mov r1, #8
	mov r2, #1
	mov r3, #64
	bl play_sound_effect_08071990
_0800EF80:
	mov r0, #2
_0800EF82:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800EF30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EF8C
sub_0800EF8C: @ 0x0800EF8C
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r4, _0800EFB4  @ =0x03000A10
	add r0, r4, #0
	add r0, r0, #57
	mov r5, #0
	strb r5, [r0]
	bl sub_0801B310
	add r4, r4, #52
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #14
	bhi _0800EFB8
	mov r0, #3
	b _0800EFCE
	.byte 0x00
	.byte 0x00
_0800EFB4:
	.4byte 0x03000A10
_0800EFB8:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #1
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
_0800EFCE:
	add sp, sp, #12
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800EF8C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800EFD8
sub_0800EFD8: @ 0x0800EFD8
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	ldr r3, _0800EFFC  @ =0x03000A10
	add r1, r3, #0
	add r1, r1, #68
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800EFF2
	str r4, [r3, #60]
	str r5, [r3, #64]
_0800EFF2:
	strb r2, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800EFFC:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800EFD8

	THUMB_FUNC_START sub_0800F000
sub_0800F000: @ 0x0800F000
	ldr r0, _0800F00C  @ =0x03000A10
	add r0, r0, #68
	mov r1, #0
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0800F00C:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800F000

	THUMB_FUNC_START sub_0800F010
sub_0800F010: @ 0x0800F010
	ldr r2, _0800F028  @ =0x03000A10
	add r0, r2, #0
	add r0, r0, #124
	mov r1, #0
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	add r1, r2, #0
	add r1, r1, #123
	mov r0, #1
	strb r0, [r1]
	bx lr
_0800F028:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800F010

	THUMB_FUNC_START sub_0800F02C
sub_0800F02C: @ 0x0800F02C
	ldr r2, _0800F05C  @ =0x03000A10
	add r3, r2, #0
	add r3, r3, #214
	mov r1, #0
	mov r0, #1
	strb r0, [r3]
	mov r3, #144
	lsl r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	add r3, r3, #1
	add r0, r2, r3
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0800F05C:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800F02C

	THUMB_FUNC_START sub_0800F060
sub_0800F060: @ 0x0800F060
	ldr r0, _0800F06C  @ =0x03000A10
	add r0, r0, #214
	mov r1, #0
	strb r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0800F06C:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800F060

	THUMB_FUNC_START sub_0800F070
sub_0800F070: @ 0x0800F070
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r3, r0, #0
	ldr r2, _0800F0A4  @ =0x03000A10
	mov r0, #145
	lsl r0, r0, #1
	add r0, r0, r2
	mov r12, r0
	ldrb r1, [r0]
	cmp r3, r1
	beq _0800F098
	mov r4, #144
	lsl r4, r4, #1
	add r0, r2, r4
	mov r1, #0
	strb r1, [r0]
	add r4, r4, #1
	add r0, r2, r4
	strb r1, [r0]
_0800F098:
	mov r0, r12
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F0A4:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800F070

	THUMB_FUNC_START sub_0800F0A8
sub_0800F0A8: @ 0x0800F0A8
	push {lr}
	add r3, r0, #0
	ldr r0, _0800F0C0  @ =0x03000A10
	add r0, r0, #48
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800F0BC
	add r0, r3, #0
	bl sub_0806E594
_0800F0BC:
	pop {r0}
	bx r0
_0800F0C0:
	.4byte 0x03000A10
	THUMB_FUNC_END sub_0800F0A8

	THUMB_FUNC_START sub_0800F0C4
sub_0800F0C4: @ 0x0800F0C4
	push {r4,r5,lr}
	add r4, r0, #0
	lsl r0, r3, #16
	ldr r5, _0800F0FC  @ =0x040000D4
	str r4, [r5]
	ldrh r3, [r2]
	ldr r4, _0800F100  @ =0x06010000
	add r3, r3, r4
	str r3, [r5, #4]
	lsr r3, r0, #18
	mov r4, #132
	lsl r4, r4, #24
	orr r3, r3, r4
	str r3, [r5, #8]
	ldr r3, [r5, #8]
	lsr r3, r0, #16
	ldrh r4, [r2]
	add r3, r3, r4
	strh r3, [r2]
	lsr r0, r0, #21
	ldrh r2, [r1]
	add r0, r0, r2
	strh r0, [r1]
	lsl r0, r0, #16
	lsr r0, r0, #16
	pop {r4,r5}
	pop {r1}
	bx r1
_0800F0FC:
	.4byte 0x040000D4
_0800F100:
	.4byte 0x06010000
	THUMB_FUNC_END sub_0800F0C4

	THUMB_FUNC_START sub_0800F104
sub_0800F104: @ 0x0800F104
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r4, r3, #0
	ldr r0, [sp, #40]
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	lsl r0, r0, #24
	mov r2, #160
	lsl r2, r2, #22
	add r1, r1, r2
	lsr r1, r1, #24
	mov r9, r1
	mov r6, #0
	ldr r7, _0800F1C0  @ =0x040000D4
	ldr r5, _0800F1C4  @ =gOamBuffer
	lsr r0, r0, #20
	mov r12, r0
_0800F132:
	ldr r0, _0800F1C8  @ =gUnknown_082EC748
	str r0, [r7]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _0800F1CC  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r1, r6, #3
	mov r2, r9
	sub r1, r2, r1
	ldr r2, _0800F1D0  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0800F1D4  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	strb r1, [r0]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	mov r2, r10
	add r0, r2, r6
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r2, _0800F1D8  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r0
	ldr r2, _0800F1DC  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _0800F1E0  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r12
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #5
	bls _0800F132
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F1C0:
	.4byte 0x040000D4
_0800F1C4:
	.4byte gOamBuffer
_0800F1C8:
	.4byte gUnknown_082EC748
_0800F1CC:
	.4byte 0x84000002
_0800F1D0:
	.4byte 0x000001FF
_0800F1D4:
	.4byte 0xFFFFFE00
_0800F1D8:
	.4byte gUnknown_03001B30
_0800F1DC:
	.4byte 0x000003FF
_0800F1E0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0800F104

	THUMB_FUNC_START sub_0800F1E4
sub_0800F1E4: @ 0x0800F1E4
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F250  @ =gUnknown_03000B90
	ldr r0, _0800F254  @ =gUnknown_08B2CA5C
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F22A:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F22A
	ldr r0, _0800F258  @ =0x08008239
	str r0, [r4, #12]
	mov r0, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	str r0, [r4, #32]
	str r0, [r4, #8]
	cmp r5, #12
	bne _0800F25C
	mov r0, #1
	b _0800F28A
	.byte 0x00
	.byte 0x00
_0800F250:
	.4byte gUnknown_03000B90
_0800F254:
	.4byte gUnknown_08B2CA5C
_0800F258:
	.4byte sub_08008238
_0800F25C:
	cmp r5, #13
	bne _0800F280
	mov r0, #2
	str r0, [r4, #32]
	cmp r6, #1
	bne _0800F274
	ldr r0, _0800F270  @ =0x080086A5
	str r0, [r4, #12]
	b _0800F28C
	.byte 0x00
	.byte 0x00
_0800F270:
	.4byte sub_080086A4
_0800F274:
	ldr r0, _0800F27C  @ =0x08008601
	str r0, [r4, #12]
	b _0800F28C
	.byte 0x00
	.byte 0x00
_0800F27C:
	.4byte sub_08008600
_0800F280:
	mov r0, #1
	and r0, r0, r5
	cmp r0, #0
	beq _0800F28C
	mov r0, #8
_0800F28A:
	str r0, [r4, #32]
_0800F28C:
	cmp r5, #0
	bne _0800F296
	ldr r0, [r4, #32]
	mov r1, #32
	b _0800F2AE
_0800F296:
	ldr r0, _0800F2C8  @ =gUnknown_08B2CA5C
	ldr r1, [r0, #4]
	lsl r0, r6, #1
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r5, r0
	bcc _0800F2B2
	ldr r0, [r4, #32]
	mov r1, #4
_0800F2AE:
	orr r0, r0, r1
	str r0, [r4, #32]
_0800F2B2:
	cmp r6, #2
	bne _0800F2D8
	lsl r0, r5, #3
	ldr r1, _0800F2CC  @ =gUnknown_0807C028
	add r0, r0, r1
	str r0, [r4, #8]
	cmp r5, #13
	bne _0800F2D4
	ldr r0, _0800F2D0  @ =0x080084A5
	b _0800F2D6
	.byte 0x00
	.byte 0x00
_0800F2C8:
	.4byte gUnknown_08B2CA5C
_0800F2CC:
	.4byte gUnknown_0807C028
_0800F2D0:
	.4byte sub_080084A4
_0800F2D4:
	ldr r0, _0800F2E0  @ =0x08008331
_0800F2D6:
	str r0, [r4, #12]
_0800F2D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F2E0:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F1E4

	THUMB_FUNC_START sub_0800F2E4
sub_0800F2E4: @ 0x0800F2E4
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F358  @ =gUnknown_03000B90
	ldr r0, _0800F35C  @ =gUnknown_08B2CDF4
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F32A:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F32A
	ldr r0, _0800F360  @ =0x08008239
	str r0, [r4, #12]
	mov r1, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	mov r0, #64
	str r0, [r4, #32]
	str r1, [r4, #8]
	cmp r5, #6
	bne _0800F36C
	mov r0, #66
	str r0, [r4, #32]
	cmp r6, #1
	bne _0800F368
	ldr r0, _0800F364  @ =0x080086A5
	b _0800F36A
_0800F358:
	.4byte gUnknown_03000B90
_0800F35C:
	.4byte gUnknown_08B2CDF4
_0800F360:
	.4byte sub_08008238
_0800F364:
	.4byte sub_080086A4
_0800F368:
	ldr r0, _0800F378  @ =0x08008601
_0800F36A:
	str r0, [r4, #12]
_0800F36C:
	cmp r5, #0
	bne _0800F37C
	ldr r0, [r4, #32]
	mov r1, #32
	b _0800F394
	.byte 0x00
	.byte 0x00
_0800F378:
	.4byte sub_08008600
_0800F37C:
	ldr r0, _0800F3AC  @ =gUnknown_08B2CDF4
	ldr r1, [r0, #4]
	lsl r0, r6, #1
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r5, r0
	bcc _0800F398
	ldr r0, [r4, #32]
	mov r1, #4
_0800F394:
	orr r0, r0, r1
	str r0, [r4, #32]
_0800F398:
	cmp r6, #2
	bne _0800F3BC
	lsl r0, r5, #3
	ldr r1, _0800F3B0  @ =gUnknown_0807C098
	add r0, r0, r1
	str r0, [r4, #8]
	cmp r5, #6
	bne _0800F3B8
	ldr r0, _0800F3B4  @ =0x080084A5
	b _0800F3BA
_0800F3AC:
	.4byte gUnknown_08B2CDF4
_0800F3B0:
	.4byte gUnknown_0807C098
_0800F3B4:
	.4byte sub_080084A4
_0800F3B8:
	ldr r0, _0800F3C4  @ =0x08008331
_0800F3BA:
	str r0, [r4, #12]
_0800F3BC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F3C4:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F2E4

	THUMB_FUNC_START sub_0800F3C8
sub_0800F3C8: @ 0x0800F3C8
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _0800F434  @ =gUnknown_03000B90
	ldr r0, _0800F438  @ =gUnknown_08B2CEBC
	ldr r0, [r0, #4]
	lsl r1, r5, #1
	add r1, r1, r5
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F40E:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F40E
	ldr r0, _0800F43C  @ =0x08008239
	str r0, [r4, #12]
	mov r1, #0
	strh r6, [r4, #16]
	strh r5, [r4, #18]
	mov r0, #128
	str r0, [r4, #32]
	str r1, [r4, #8]
	cmp r6, #0
	bne _0800F440
	mov r0, #160
	b _0800F456
_0800F434:
	.4byte gUnknown_03000B90
_0800F438:
	.4byte gUnknown_08B2CEBC
_0800F43C:
	.4byte sub_08008238
_0800F440:
	ldr r0, _0800F468  @ =gUnknown_08B2CEBC
	ldr r1, [r0, #4]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r6, r0
	bcc _0800F458
	mov r0, #132
_0800F456:
	str r0, [r4, #32]
_0800F458:
	cmp r5, #2
	bne _0800F478
	ldr r0, _0800F46C  @ =gUnknown_0807C0D0
	str r0, [r4, #8]
	cmp r6, #13
	bne _0800F474
	ldr r0, _0800F470  @ =0x080084A5
	b _0800F476
_0800F468:
	.4byte gUnknown_08B2CEBC
_0800F46C:
	.4byte gUnknown_0807C0D0
_0800F470:
	.4byte sub_080084A4
_0800F474:
	ldr r0, _0800F480  @ =0x08008331
_0800F476:
	str r0, [r4, #12]
_0800F478:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F480:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F3C8

	THUMB_FUNC_START sub_0800F484
sub_0800F484: @ 0x0800F484
	push {r4-r7,lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _0800F4F4  @ =gUnknown_03000B90
	ldr r0, _0800F4F8  @ =gUnknown_08B2CF84
	ldr r0, [r0, #4]
	lsl r1, r5, #1
	add r1, r1, r5
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F4CA:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F4CA
	ldr r0, _0800F4FC  @ =0x08008239
	str r0, [r4, #12]
	mov r0, #0
	strh r6, [r4, #16]
	strh r5, [r4, #18]
	mov r2, #128
	lsl r2, r2, #3
	str r2, [r4, #32]
	str r0, [r4, #8]
	cmp r6, #0
	bne _0800F500
	mov r0, #32
	b _0800F516
	.byte 0x00
	.byte 0x00
_0800F4F4:
	.4byte gUnknown_03000B90
_0800F4F8:
	.4byte gUnknown_08B2CF84
_0800F4FC:
	.4byte sub_08008238
_0800F500:
	ldr r0, _0800F52C  @ =gUnknown_08B2CEBC
	ldr r1, [r0, #4]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r6, r0
	bcc _0800F51A
	mov r0, #4
_0800F516:
	orr r0, r0, r2
	str r0, [r4, #32]
_0800F51A:
	cmp r5, #2
	bne _0800F53C
	ldr r0, _0800F530  @ =gUnknown_0807C0D8
	str r0, [r4, #8]
	cmp r6, #13
	bne _0800F538
	ldr r0, _0800F534  @ =0x080084A5
	b _0800F53A
	.byte 0x00
	.byte 0x00
_0800F52C:
	.4byte gUnknown_08B2CEBC
_0800F530:
	.4byte gUnknown_0807C0D8
_0800F534:
	.4byte sub_080084A4
_0800F538:
	ldr r0, _0800F544  @ =0x08008331
_0800F53A:
	str r0, [r4, #12]
_0800F53C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F544:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F484

	THUMB_FUNC_START sub_0800F548
sub_0800F548: @ 0x0800F548
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F5B4  @ =gUnknown_03000B90
	ldr r0, _0800F5B8  @ =gUnknown_08B2CFC0
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F58E:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F58E
	ldr r0, _0800F5BC  @ =0x08008239
	str r0, [r4, #12]
	mov r1, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	mov r0, #128
	lsl r0, r0, #1
	str r0, [r4, #32]
	str r1, [r4, #8]
	pop {r4-r7}
	pop {r0}
	bx r0
_0800F5B4:
	.4byte gUnknown_03000B90
_0800F5B8:
	.4byte gUnknown_08B2CFC0
_0800F5BC:
	.4byte sub_08008238
	THUMB_FUNC_END sub_0800F548

	THUMB_FUNC_START sub_0800F5C0
sub_0800F5C0: @ 0x0800F5C0
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F62C  @ =gUnknown_03000B90
	ldr r0, _0800F630  @ =gUnknown_08B2CFC0
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F606:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F606
	ldr r0, _0800F634  @ =0x08008765
	str r0, [r4, #12]
	mov r1, #0
	strh r5, [r4, #16]
	strh r6, [r4, #18]
	mov r0, #128
	lsl r0, r0, #2
	str r0, [r4, #32]
	str r1, [r4, #8]
	pop {r4-r7}
	pop {r0}
	bx r0
_0800F62C:
	.4byte gUnknown_03000B90
_0800F630:
	.4byte gUnknown_08B2CFC0
_0800F634:
	.4byte sub_08008764
	THUMB_FUNC_END sub_0800F5C0

	THUMB_FUNC_START sub_0800F638
sub_0800F638: @ 0x0800F638
	push {r4-r7,lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r4, _0800F6A4  @ =gUnknown_03000B90
	ldr r0, _0800F6A8  @ =gUnknown_08B2D378
	ldr r0, [r0, #4]
	lsl r1, r6, #1
	add r1, r1, r6
	lsl r1, r1, #2
	add r1, r1, r0
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #2
	ldr r2, [r1, #4]
	add r2, r2, r0
	str r2, [r4]
	ldr r0, [r1, #8]
	str r0, [r4, #4]
	ldrb r0, [r2, #10]
	bl sub_08071F64
	str r0, [r4, #24]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F78
	str r0, [r4, #20]
	ldr r0, [r4]
	ldrb r0, [r0, #10]
	bl sub_08071F8C
	add r3, r0, #0
	mov r2, #0
	add r7, r4, #0
	add r7, r7, #29
_0800F67E:
	add r0, r2, r7
	add r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0800F67E
	mov r0, #0
	strh r6, [r4, #18]
	strh r5, [r4, #16]
	str r0, [r4, #32]
	str r0, [r4, #8]
	ldr r0, _0800F6AC  @ =0x08008239
	str r0, [r4, #12]
	cmp r5, #6
	bne _0800F6B0
	mov r0, #1
	str r0, [r4, #32]
	b _0800F6C8
_0800F6A4:
	.4byte gUnknown_03000B90
_0800F6A8:
	.4byte gUnknown_08B2D378
_0800F6AC:
	.4byte sub_08008238
_0800F6B0:
	cmp r5, #7
	bne _0800F6C8
	mov r0, #2
	str r0, [r4, #32]
	cmp r6, #1
	bne _0800F6C4
	ldr r0, _0800F6C0  @ =0x080086A5
	b _0800F6C6
_0800F6C0:
	.4byte sub_080086A4
_0800F6C4:
	ldr r0, _0800F6E0  @ =0x08008601
_0800F6C6:
	str r0, [r4, #12]
_0800F6C8:
	cmp r6, #2
	bne _0800F6D8
	lsl r0, r5, #3
	ldr r1, _0800F6E4  @ =gUnknown_0807C0E0
	add r0, r0, r1
	str r0, [r4, #8]
	ldr r0, _0800F6E8  @ =0x08008331
	str r0, [r4, #12]
_0800F6D8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0800F6E0:
	.4byte sub_08008600
_0800F6E4:
	.4byte gUnknown_0807C0E0
_0800F6E8:
	.4byte sub_08008330
	THUMB_FUNC_END sub_0800F638

	THUMB_FUNC_START sub_0800F6EC
sub_0800F6EC: @ 0x0800F6EC
	push {lr}
	add r2, r0, #0
	ldr r0, _0800F704  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0800F708
	add r0, r2, #0
	bl sub_0800F1E4
	b _0800F73E
_0800F704:
	.4byte gUnknown_03000B80
_0800F708:
	cmp r0, #1
	bne _0800F714
	add r0, r2, #0
	bl sub_0800F2E4
	b _0800F73E
_0800F714:
	cmp r0, #2
	bne _0800F720
	add r0, r2, #0
	bl sub_0800F3C8
	b _0800F73E
_0800F720:
	cmp r0, #3
	bne _0800F72C
	add r0, r2, #0
	bl sub_0800F484
	b _0800F73E
_0800F72C:
	cmp r0, #4
	bne _0800F738
	add r0, r2, #0
	bl sub_0800F548
	b _0800F73E
_0800F738:
	add r0, r2, #0
	bl sub_0800F5C0
_0800F73E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800F6EC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800F744
sub_0800F744: @ 0x0800F744
	push {r4,lr}
	ldr r4, _0800F760  @ =gUnknown_08B2CFC8
	add r4, r0, r4
	ldrb r1, [r4]
	bl sub_0800F1E4
	ldr r2, _0800F764  @ =gUnknown_03000B74
	ldr r1, _0800F768  @ =gUnknown_03000B90
	ldrb r0, [r4]
	strh r0, [r1, #16]
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
_0800F760:
	.4byte gUnknown_08B2CFC8
_0800F764:
	.4byte gUnknown_03000B74
_0800F768:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END sub_0800F744

.section .data

	.GLOBAL gUnknown_082E964C
gUnknown_082E964C:
	.INCBIN "baserom.gba", 0x2E964C, 0x2E9654-0x2E964C

	.GLOBAL gUnknown_082E9654
gUnknown_082E9654:
	.INCBIN "baserom.gba", 0x2E9654, 0x2EAE78-0x2E9654

	.GLOBAL gUnknown_082EAE78
gUnknown_082EAE78:
	.INCBIN "baserom.gba", 0x2EAE78, 0x2EAE80-0x2EAE78

	.GLOBAL gUnknown_082EAE80
gUnknown_082EAE80:
	.INCBIN "baserom.gba", 0x2EAE80, 0x2EAF00-0x2EAE80

	.GLOBAL gUnknown_082EAF00
gUnknown_082EAF00:
	.INCBIN "baserom.gba", 0x2EAF00, 0x2EAF90-0x2EAF00

	.GLOBAL gUnknown_082EAF90
gUnknown_082EAF90:
	.INCBIN "baserom.gba", 0x2EAF90, 0x2EAF98-0x2EAF90

	.GLOBAL gUnknown_082EAF98
gUnknown_082EAF98:
	.INCBIN "baserom.gba", 0x2EAF98, 0x2EB118-0x2EAF98

	.GLOBAL gUnknown_082EB118
gUnknown_082EB118:
	.INCBIN "baserom.gba", 0x2EB118, 0x2EB1BC-0x2EB118

	.GLOBAL gUnknown_082EB1BC
gUnknown_082EB1BC:
	.INCBIN "baserom.gba", 0x2EB1BC, 0x2EB1C4-0x2EB1BC

	.GLOBAL gUnknown_082EB1C4
gUnknown_082EB1C4:
	.INCBIN "baserom.gba", 0x2EB1C4, 0x2EB244-0x2EB1C4

	.GLOBAL gUnknown_082EB244
gUnknown_082EB244:
	.INCBIN "baserom.gba", 0x2EB244, 0x2EB2B0-0x2EB244

	.GLOBAL gUnknown_082EB2B0
gUnknown_082EB2B0:
	.INCBIN "baserom.gba", 0x2EB2B0, 0x2EB2B8-0x2EB2B0

	.GLOBAL gUnknown_082EB2B8
gUnknown_082EB2B8:
	.INCBIN "baserom.gba", 0x2EB2B8, 0x2EBC2C-0x2EB2B8

	.GLOBAL gUnknown_082EBC2C
gUnknown_082EBC2C:
	.INCBIN "baserom.gba", 0x2EBC2C, 0x2EBC34-0x2EBC2C

	.GLOBAL gUnknown_082EBC34
gUnknown_082EBC34:
	.INCBIN "baserom.gba", 0x2EBC34, 0x2EBE58-0x2EBC34

	.GLOBAL gUnknown_082EBE58
gUnknown_082EBE58:
	.INCBIN "baserom.gba", 0x2EBE58, 0x2EBE60-0x2EBE58

	.GLOBAL gUnknown_082EBE60
gUnknown_082EBE60:
	.INCBIN "baserom.gba", 0x2EBE60, 0x2EC2D8-0x2EBE60

	.GLOBAL gUnknown_082EC2D8
gUnknown_082EC2D8:
	.INCBIN "baserom.gba", 0x2EC2D8, 0x2EC2E0-0x2EC2D8

	.GLOBAL gUnknown_082EC2E0
gUnknown_082EC2E0:
	.INCBIN "baserom.gba", 0x2EC2E0, 0x2EC748-0x2EC2E0

	.GLOBAL gUnknown_082EC748
gUnknown_082EC748:
	.INCBIN "baserom.gba", 0x2EC748, 0x2EC750-0x2EC748

	.GLOBAL gUnknown_082EC750
gUnknown_082EC750:
	.INCBIN "baserom.gba", 0x2EC750, 0x2ECB38-0x2EC750

	.GLOBAL gUnknown_082ECB38
gUnknown_082ECB38:
	.INCBIN "baserom.gba", 0x2ECB38, 0x2ECB40-0x2ECB38

	.GLOBAL gUnknown_082ECB40
gUnknown_082ECB40:
	.INCBIN "baserom.gba", 0x2ECB40, 0x2ECF94-0x2ECB40

	.GLOBAL gUnknown_082ECF94
gUnknown_082ECF94:
	.INCBIN "baserom.gba", 0x2ECF94, 0x2ECF9C-0x2ECF94

	.GLOBAL gUnknown_082ECF9C
gUnknown_082ECF9C:
	.INCBIN "baserom.gba", 0x2ECF9C, 0x2ED5BC-0x2ECF9C

	.GLOBAL gUnknown_082ED5BC
gUnknown_082ED5BC:
	.INCBIN "baserom.gba", 0x2ED5BC, 0x2ED5C4-0x2ED5BC

	.GLOBAL gUnknown_082ED5C4
gUnknown_082ED5C4:
	.INCBIN "baserom.gba", 0x2ED5C4, 0x2ED668-0x2ED5C4

	.GLOBAL gUnknown_082ED668
gUnknown_082ED668:
	.INCBIN "baserom.gba", 0x2ED668, 0x2ED670-0x2ED668

	.GLOBAL gUnknown_082ED670
gUnknown_082ED670:
	.INCBIN "baserom.gba", 0x2ED670, 0x2ED794-0x2ED670

	.GLOBAL gUnknown_082ED794
gUnknown_082ED794:
	.INCBIN "baserom.gba", 0x2ED794, 0x2ED79C-0x2ED794

	.GLOBAL gUnknown_082ED79C
gUnknown_082ED79C:
	.INCBIN "baserom.gba", 0x2ED79C, 0x2ED9EC-0x2ED79C

	.GLOBAL gUnknown_082ED9EC
gUnknown_082ED9EC:
	.INCBIN "baserom.gba", 0x2ED9EC, 0x2ED9F4-0x2ED9EC

	.GLOBAL gUnknown_082ED9F4
gUnknown_082ED9F4:
	.INCBIN "baserom.gba", 0x2ED9F4, 0x2EDB18-0x2ED9F4

	.GLOBAL gUnknown_082EDB18
gUnknown_082EDB18:
	.INCBIN "baserom.gba", 0x2EDB18, 0x2EDB20-0x2EDB18

	.GLOBAL gUnknown_082EDB20
gUnknown_082EDB20:
	.INCBIN "baserom.gba", 0x2EDB20, 0x2EDC44-0x2EDB20

	.GLOBAL gUnknown_082EDC44
gUnknown_082EDC44:
	.INCBIN "baserom.gba", 0x2EDC44, 0x2EDC4C-0x2EDC44

	.GLOBAL gUnknown_082EDC4C
gUnknown_082EDC4C:
	.INCBIN "baserom.gba", 0x2EDC4C, 0x2EE074-0x2EDC4C

	.GLOBAL gUnknown_082EE074
gUnknown_082EE074:
	.INCBIN "baserom.gba", 0x2EE074, 0x2EE07C-0x2EE074

	.GLOBAL gUnknown_082EE07C
gUnknown_082EE07C:
	.INCBIN "baserom.gba", 0x2EE07C, 0x2EE120-0x2EE07C

	.GLOBAL gUnknown_082EE120
gUnknown_082EE120:
	.INCBIN "baserom.gba", 0x2EE120, 0x2EE128-0x2EE120

	.GLOBAL gUnknown_082EE128
gUnknown_082EE128:
	.INCBIN "baserom.gba", 0x2EE128, 0x2EE18C-0x2EE128

	.GLOBAL gUnknown_082EE18C
gUnknown_082EE18C:
	.INCBIN "baserom.gba", 0x2EE18C, 0x2EE194-0x2EE18C

	.GLOBAL gUnknown_082EE194
gUnknown_082EE194:
	.INCBIN "baserom.gba", 0x2EE194, 0x2EE214-0x2EE194

	.GLOBAL gUnknown_082EE214
gUnknown_082EE214:
	.INCBIN "baserom.gba", 0x2EE214, 0x2EE25C-0x2EE214

	.GLOBAL gUnknown_082EE25C
gUnknown_082EE25C:
	.INCBIN "baserom.gba", 0x2EE25C, 0x2EE264-0x2EE25C

	.GLOBAL gUnknown_082EE264
gUnknown_082EE264:
	.INCBIN "baserom.gba", 0x2EE264, 0x2EE4AC-0x2EE264

	.GLOBAL gUnknown_082EE4AC
gUnknown_082EE4AC:
	.INCBIN "baserom.gba", 0x2EE4AC, 0x2EE4B4-0x2EE4AC

	.GLOBAL gUnknown_082EE4B4
gUnknown_082EE4B4:
	.INCBIN "baserom.gba", 0x2EE4B4, 0x2EE94C-0x2EE4B4

	.GLOBAL gUnknown_082EE94C
gUnknown_082EE94C:
	.INCBIN "baserom.gba", 0x2EE94C, 0x2EE954-0x2EE94C

	.GLOBAL gUnknown_082EE954
gUnknown_082EE954:
	.INCBIN "baserom.gba", 0x2EE954, 0x2EEB9C-0x2EE954

	.GLOBAL gUnknown_082EEB9C
gUnknown_082EEB9C:
	.INCBIN "baserom.gba", 0x2EEB9C, 0x2EEBA4-0x2EEB9C

	.GLOBAL gUnknown_082EEBA4
gUnknown_082EEBA4:
	.INCBIN "baserom.gba", 0x2EEBA4, 0x2EEDEC-0x2EEBA4

	.GLOBAL gUnknown_082EEDEC
gUnknown_082EEDEC:
	.INCBIN "baserom.gba", 0x2EEDEC, 0x2EEDF4-0x2EEDEC

	.GLOBAL gUnknown_082EEDF4
gUnknown_082EEDF4:
	.INCBIN "baserom.gba", 0x2EEDF4, 0x2EEEF4-0x2EEDF4

	.GLOBAL gUnknown_082EEEF4
gUnknown_082EEEF4:
	.INCBIN "baserom.gba", 0x2EEEF4, 0x2EF144-0x2EEEF4

	.GLOBAL gUnknown_082EF144
gUnknown_082EF144:
	.INCBIN "baserom.gba", 0x2EF144, 0x2EF62C-0x2EF144

	.GLOBAL gUnknown_082EF62C
gUnknown_082EF62C:
	.INCBIN "baserom.gba", 0x2EF62C, 0x2EF634-0x2EF62C

	.GLOBAL gUnknown_082EF634
gUnknown_082EF634:
	.INCBIN "baserom.gba", 0x2EF634, 0x2EF77C-0x2EF634

	.GLOBAL gUnknown_082EF77C
gUnknown_082EF77C:
	.INCBIN "baserom.gba", 0x2EF77C, 0x2EF784-0x2EF77C

	.GLOBAL gUnknown_082EF784
gUnknown_082EF784:
	.INCBIN "baserom.gba", 0x2EF784, 0x2EF924-0x2EF784

	.GLOBAL gUnknown_082EF924
gUnknown_082EF924:
	.INCBIN "baserom.gba", 0x2EF924, 0x2EF92C-0x2EF924

	.GLOBAL gUnknown_082EF92C
gUnknown_082EF92C:
	.INCBIN "baserom.gba", 0x2EF92C, 0x2EFB50-0x2EF92C

	.GLOBAL gUnknown_082EFB50
gUnknown_082EFB50:
	.INCBIN "baserom.gba", 0x2EFB50, 0x2EFB58-0x2EFB50

	.GLOBAL gUnknown_082EFB58
gUnknown_082EFB58:
	.INCBIN "baserom.gba", 0x2EFB58, 0x2EFBFC-0x2EFB58

	.GLOBAL gUnknown_082EFBFC
gUnknown_082EFBFC:
	.INCBIN "baserom.gba", 0x2EFBFC, 0x2EFC04-0x2EFBFC

	.GLOBAL gUnknown_082EFC04
gUnknown_082EFC04:
	.INCBIN "baserom.gba", 0x2EFC04, 0x2EFC68-0x2EFC04

	.GLOBAL gUnknown_082EFC68
gUnknown_082EFC68:
	.INCBIN "baserom.gba", 0x2EFC68, 0x2EFC70-0x2EFC68

	.GLOBAL gUnknown_082EFC70
gUnknown_082EFC70:
	.INCBIN "baserom.gba", 0x2EFC70, 0x2EFCB4-0x2EFC70

	.GLOBAL gUnknown_082EFCB4
gUnknown_082EFCB4:
	.INCBIN "baserom.gba", 0x2EFCB4, 0x2EFCBC-0x2EFCB4

	.GLOBAL gUnknown_082EFCBC
gUnknown_082EFCBC:
	.INCBIN "baserom.gba", 0x2EFCBC, 0x2EFDAC-0x2EFCBC

	.GLOBAL gUnknown_082EFDAC
gUnknown_082EFDAC:
	.INCBIN "baserom.gba", 0x2EFDAC, 0x2EFDB4-0x2EFDAC

	.GLOBAL gUnknown_082EFDB4
gUnknown_082EFDB4:
	.INCBIN "baserom.gba", 0x2EFDB4, 0x2EFDF8-0x2EFDB4

	.GLOBAL gUnknown_082EFDF8
gUnknown_082EFDF8:
	.INCBIN "baserom.gba", 0x2EFDF8, 0x2EFE00-0x2EFDF8

	.GLOBAL gUnknown_082EFE00
gUnknown_082EFE00:
	.INCBIN "baserom.gba", 0x2EFE00, 0x2EFE44-0x2EFE00

	.GLOBAL gUnknown_082EFE44
gUnknown_082EFE44:
	.INCBIN "baserom.gba", 0x2EFE44, 0x2EFE4C-0x2EFE44

	.GLOBAL gUnknown_082EFE4C
gUnknown_082EFE4C:
	.INCBIN "baserom.gba", 0x2EFE4C, 0x2EFE90-0x2EFE4C

	.GLOBAL gUnknown_082EFE90
gUnknown_082EFE90:
	.INCBIN "baserom.gba", 0x2EFE90, 0x2EFE98-0x2EFE90

	.GLOBAL gUnknown_082EFE98
gUnknown_082EFE98:
	.INCBIN "baserom.gba", 0x2EFE98, 0x2EFF24-0x2EFE98

	.GLOBAL gUnknown_082EFF24
gUnknown_082EFF24:
	.INCBIN "baserom.gba", 0x2EFF24, 0x2EFF2C-0x2EFF24

	.GLOBAL gUnknown_082EFF2C
gUnknown_082EFF2C:
	.INCBIN "baserom.gba", 0x2EFF2C, 0x2EFF4C-0x2EFF2C

	.GLOBAL gUnknown_082EFF4C
gUnknown_082EFF4C:
	.INCBIN "baserom.gba", 0x2EFF4C, 0x2EFF6C-0x2EFF4C

	.GLOBAL gUnknown_082EFF6C
gUnknown_082EFF6C:
	.INCBIN "baserom.gba", 0x2EFF6C, 0x2F01B0-0x2EFF6C

	.GLOBAL gUnknown_082F01B0
gUnknown_082F01B0:
	.INCBIN "baserom.gba", 0x2F01B0, 0x2F01B8-0x2F01B0

	.GLOBAL gUnknown_082F01B8
gUnknown_082F01B8:
	.INCBIN "baserom.gba", 0x2F01B8, 0x2F033C-0x2F01B8

	.GLOBAL gUnknown_082F033C
gUnknown_082F033C:
	.INCBIN "baserom.gba", 0x2F033C, 0x2F0344-0x2F033C

	.GLOBAL gUnknown_082F0344
gUnknown_082F0344:
	.INCBIN "baserom.gba", 0x2F0344, 0x2F0364-0x2F0344

	.GLOBAL gUnknown_082F0364
gUnknown_082F0364:
	.INCBIN "baserom.gba", 0x2F0364, 0x2F043C-0x2F0364

	.GLOBAL gUnknown_082F043C
gUnknown_082F043C:
	.INCBIN "baserom.gba", 0x2F043C, 0x2F0444-0x2F043C

	.GLOBAL gUnknown_082F0444
gUnknown_082F0444:
	.INCBIN "baserom.gba", 0x2F0444, 0x2F0768-0x2F0444

	.GLOBAL gUnknown_082F0768
gUnknown_082F0768:
	.INCBIN "baserom.gba", 0x2F0768, 0x2F0770-0x2F0768

	.GLOBAL gUnknown_082F0770
gUnknown_082F0770:
	.INCBIN "baserom.gba", 0x2F0770, 0x2F07B4-0x2F0770

	.GLOBAL gUnknown_082F07B4
gUnknown_082F07B4:
	.INCBIN "baserom.gba", 0x2F07B4, 0x2F07BC-0x2F07B4

	.GLOBAL gUnknown_082F07BC
gUnknown_082F07BC:
	.INCBIN "baserom.gba", 0x2F07BC, 0x2F0800-0x2F07BC

	.GLOBAL gUnknown_082F0800
gUnknown_082F0800:
	.INCBIN "baserom.gba", 0x2F0800, 0x2F0808-0x2F0800

	.GLOBAL gUnknown_082F0808
gUnknown_082F0808:
	.INCBIN "baserom.gba", 0x2F0808, 0x2F084C-0x2F0808

	.GLOBAL gUnknown_082F084C
gUnknown_082F084C:
	.INCBIN "baserom.gba", 0x2F084C, 0x2F0854-0x2F084C

	.GLOBAL gUnknown_082F0854
gUnknown_082F0854:
	.INCBIN "baserom.gba", 0x2F0854, 0x2F0944-0x2F0854

	.GLOBAL gUnknown_082F0944
gUnknown_082F0944:
	.INCBIN "baserom.gba", 0x2F0944, 0x2F094C-0x2F0944

	.GLOBAL gUnknown_082F094C
gUnknown_082F094C:
	.INCBIN "baserom.gba", 0x2F094C, 0x2F0A60-0x2F094C

	.GLOBAL gUnknown_082F0A60
gUnknown_082F0A60:
	.INCBIN "baserom.gba", 0x2F0A60, 0x2F0A68-0x2F0A60

	.GLOBAL gUnknown_082F0A68
gUnknown_082F0A68:
	.INCBIN "baserom.gba", 0x2F0A68, 0x2F0B30-0x2F0A68

	.GLOBAL gUnknown_082F0B30
gUnknown_082F0B30:
	.INCBIN "baserom.gba", 0x2F0B30, 0x2F0B38-0x2F0B30

	.GLOBAL gUnknown_082F0B38
gUnknown_082F0B38:
	.INCBIN "baserom.gba", 0x2F0B38, 0x2F0BDC-0x2F0B38

	.GLOBAL gUnknown_082F0BDC
gUnknown_082F0BDC:
	.INCBIN "baserom.gba", 0x2F0BDC, 0x2F0BE4-0x2F0BDC

	.GLOBAL gUnknown_082F0BE4
gUnknown_082F0BE4:
	.INCBIN "baserom.gba", 0x2F0BE4, 0x2F0C88-0x2F0BE4

	.GLOBAL gUnknown_082F0C88
gUnknown_082F0C88:
	.INCBIN "baserom.gba", 0x2F0C88, 0x2F0C90-0x2F0C88

	.GLOBAL gUnknown_082F0C90
gUnknown_082F0C90:
	.INCBIN "baserom.gba", 0x2F0C90, 0x2F0CF4-0x2F0C90

	.GLOBAL gUnknown_082F0CF4
gUnknown_082F0CF4:
	.INCBIN "baserom.gba", 0x2F0CF4, 0x2F0CFC-0x2F0CF4

	.GLOBAL gUnknown_082F0CFC
gUnknown_082F0CFC:
	.INCBIN "baserom.gba", 0x2F0CFC, 0x2F0DA0-0x2F0CFC

	.GLOBAL gUnknown_082F0DA0
gUnknown_082F0DA0:
	.INCBIN "baserom.gba", 0x2F0DA0, 0x2F0DA8-0x2F0DA0

	.GLOBAL gUnknown_082F0DA8
gUnknown_082F0DA8:
	.INCBIN "baserom.gba", 0x2F0DA8, 0x2F11CC-0x2F0DA8

	.GLOBAL gUnknown_082F11CC
gUnknown_082F11CC:
	.INCBIN "baserom.gba", 0x2F11CC, 0x2F11D4-0x2F11CC

	.GLOBAL gUnknown_082F11D4
gUnknown_082F11D4:
	.INCBIN "baserom.gba", 0x2F11D4, 0x2F15F8-0x2F11D4

	.GLOBAL gUnknown_082F15F8
gUnknown_082F15F8:
	.INCBIN "baserom.gba", 0x2F15F8, 0x2F1600-0x2F15F8

	.GLOBAL gUnknown_082F1600
gUnknown_082F1600:
	.INCBIN "baserom.gba", 0x2F1600, 0x2F1680-0x2F1600

	.GLOBAL gUnknown_082F1680
gUnknown_082F1680:
	.INCBIN "baserom.gba", 0x2F1680, 0x2F1718-0x2F1680

	.GLOBAL gUnknown_082F1718
gUnknown_082F1718:
	.INCBIN "baserom.gba", 0x2F1718, 0x2F1898-0x2F1718

	.GLOBAL gUnknown_082F1898
gUnknown_082F1898:
	.INCBIN "baserom.gba", 0x2F1898, 0x2F1930-0x2F1898

	.GLOBAL gUnknown_082F1930
gUnknown_082F1930:
	.INCBIN "baserom.gba", 0x2F1930, 0x2F1AB0-0x2F1930

	.GLOBAL gUnknown_082F1AB0
gUnknown_082F1AB0:
	.INCBIN "baserom.gba", 0x2F1AB0, 0x2F1B48-0x2F1AB0

	.GLOBAL gUnknown_082F1B48
gUnknown_082F1B48:
	.INCBIN "baserom.gba", 0x2F1B48, 0x2F200C-0x2F1B48

	.GLOBAL gUnknown_082F200C
gUnknown_082F200C:
	.INCBIN "baserom.gba", 0x2F200C, 0x2F2014-0x2F200C

	.GLOBAL gUnknown_082F2014
gUnknown_082F2014:
	.INCBIN "baserom.gba", 0x2F2014, 0x2F20B8-0x2F2014

	.GLOBAL gUnknown_082F20B8
gUnknown_082F20B8:
	.INCBIN "baserom.gba", 0x2F20B8, 0x2F20C0-0x2F20B8

	.GLOBAL gUnknown_082F20C0
gUnknown_082F20C0:
	.INCBIN "baserom.gba", 0x2F20C0, 0x2F2164-0x2F20C0

	.GLOBAL gUnknown_082F2164
gUnknown_082F2164:
	.INCBIN "baserom.gba", 0x2F2164, 0x2F216C-0x2F2164

	.GLOBAL gUnknown_082F216C
gUnknown_082F216C:
	.INCBIN "baserom.gba", 0x2F216C, 0x2F2210-0x2F216C

	.GLOBAL gUnknown_082F2210
gUnknown_082F2210:
	.INCBIN "baserom.gba", 0x2F2210, 0x2F2218-0x2F2210

	.GLOBAL gUnknown_082F2218
gUnknown_082F2218:
	.INCBIN "baserom.gba", 0x2F2218, 0x2F22BC-0x2F2218

	.GLOBAL gUnknown_082F22BC
gUnknown_082F22BC:
	.INCBIN "baserom.gba", 0x2F22BC, 0x2F22C4-0x2F22BC

	.GLOBAL gUnknown_082F22C4
gUnknown_082F22C4:
	.INCBIN "baserom.gba", 0x2F22C4, 0x2F2368-0x2F22C4

	.GLOBAL gUnknown_082F2368
gUnknown_082F2368:
	.INCBIN "baserom.gba", 0x2F2368, 0x2F2370-0x2F2368

	.GLOBAL gUnknown_082F2370
gUnknown_082F2370:
	.INCBIN "baserom.gba", 0x2F2370, 0x2F2414-0x2F2370

	.GLOBAL gUnknown_082F2414
gUnknown_082F2414:
	.INCBIN "baserom.gba", 0x2F2414, 0x2F241C-0x2F2414

	.GLOBAL gUnknown_082F241C
gUnknown_082F241C:
	.INCBIN "baserom.gba", 0x2F241C, 0x2F2640-0x2F241C

	.GLOBAL gUnknown_082F2640
gUnknown_082F2640:
	.INCBIN "baserom.gba", 0x2F2640, 0x2F2648-0x2F2640

	.GLOBAL gUnknown_082F2648
gUnknown_082F2648:
	.INCBIN "baserom.gba", 0x2F2648, 0x2F286C-0x2F2648

	.GLOBAL gUnknown_082F286C
gUnknown_082F286C:
	.INCBIN "baserom.gba", 0x2F286C, 0x2F2874-0x2F286C

	.GLOBAL gUnknown_082F2874
gUnknown_082F2874:
	.INCBIN "baserom.gba", 0x2F2874, 0x2F2A98-0x2F2874

	.GLOBAL gUnknown_082F2A98
gUnknown_082F2A98:
	.INCBIN "baserom.gba", 0x2F2A98, 0x2F2AA0-0x2F2A98

	.GLOBAL gUnknown_082F2AA0
gUnknown_082F2AA0:
	.INCBIN "baserom.gba", 0x2F2AA0, 0x2F2CC4-0x2F2AA0

	.GLOBAL gUnknown_082F2CC4
gUnknown_082F2CC4:
	.INCBIN "baserom.gba", 0x2F2CC4, 0x2F2CCC-0x2F2CC4

	.GLOBAL gUnknown_082F2CCC
gUnknown_082F2CCC:
	.INCBIN "baserom.gba", 0x2F2CCC, 0x2F2EF0-0x2F2CCC

	.GLOBAL gUnknown_082F2EF0
gUnknown_082F2EF0:
	.INCBIN "baserom.gba", 0x2F2EF0, 0x2F2EF8-0x2F2EF0

	.GLOBAL gUnknown_082F2EF8
gUnknown_082F2EF8:
	.INCBIN "baserom.gba", 0x2F2EF8, 0x2F311C-0x2F2EF8

	.GLOBAL gUnknown_082F311C
gUnknown_082F311C:
	.INCBIN "baserom.gba", 0x2F311C, 0x2F3124-0x2F311C

	.GLOBAL gUnknown_082F3124
gUnknown_082F3124:
	.INCBIN "baserom.gba", 0x2F3124, 0x2F3348-0x2F3124

	.GLOBAL gUnknown_082F3348
gUnknown_082F3348:
	.INCBIN "baserom.gba", 0x2F3348, 0x2F3350-0x2F3348

	.GLOBAL gUnknown_082F3350
gUnknown_082F3350:
	.INCBIN "baserom.gba", 0x2F3350, 0x2F3574-0x2F3350

	.GLOBAL gUnknown_082F3574
gUnknown_082F3574:
	.INCBIN "baserom.gba", 0x2F3574, 0x2F357C-0x2F3574

	.GLOBAL gUnknown_082F357C
gUnknown_082F357C:
	.INCBIN "baserom.gba", 0x2F357C, 0x2F37A8-0x2F357C

	.GLOBAL gUnknown_082F37A8
gUnknown_082F37A8:
	.INCBIN "baserom.gba", 0x2F37A8, 0x2F38F4-0x2F37A8

	.GLOBAL gUnknown_082F38F4
gUnknown_082F38F4:
	.INCBIN "baserom.gba", 0x2F38F4, 0x2F39F0-0x2F38F4

	.GLOBAL gUnknown_082F39F0
gUnknown_082F39F0:
	.INCBIN "baserom.gba", 0x2F39F0, 0x2F39F8-0x2F39F0

	.GLOBAL gUnknown_082F39F8
gUnknown_082F39F8:
	.INCBIN "baserom.gba", 0x2F39F8, 0x2F513C-0x2F39F8

	.GLOBAL gUnknown_082F513C
gUnknown_082F513C:
	.INCBIN "baserom.gba", 0x2F513C, 0x2F52A4-0x2F513C

	.GLOBAL gUnknown_082F52A4
gUnknown_082F52A4:
	.INCBIN "baserom.gba", 0x2F52A4, 0x2F52AC-0x2F52A4

	.GLOBAL gUnknown_082F52AC
gUnknown_082F52AC:
	.INCBIN "baserom.gba", 0x2F52AC, 0x2F8F04-0x2F52AC

	.GLOBAL gUnknown_082F8F04
gUnknown_082F8F04:
	.INCBIN "baserom.gba", 0x2F8F04, 0x2F8F0C-0x2F8F04

	.GLOBAL gUnknown_082F8F0C
gUnknown_082F8F0C:
	.INCBIN "baserom.gba", 0x2F8F0C, 0x342EAC-0x2F8F0C

	.GLOBAL gUnknown_08342EAC
gUnknown_08342EAC:
	.INCBIN "baserom.gba", 0x342EAC, 0x342EB4-0x342EAC

	.GLOBAL gUnknown_08342EB4
gUnknown_08342EB4:
	.INCBIN "baserom.gba", 0x342EB4, 0x43980C-0x342EB4

	.GLOBAL gUnknown_0843980C
gUnknown_0843980C:
	.INCBIN "baserom.gba", 0x43980C, 0x439A4C-0x43980C

	.GLOBAL gUnknown_08439A4C
gUnknown_08439A4C:
	.INCBIN "baserom.gba", 0x439A4C, 0x439A54-0x439A4C

	.GLOBAL gUnknown_08439A54
gUnknown_08439A54:
	.INCBIN "baserom.gba", 0x439A54, 0x51400C-0x439A54

	.GLOBAL gUnknown_0851400C
gUnknown_0851400C:
	.INCBIN "baserom.gba", 0x51400C, 0x514014-0x51400C

	.GLOBAL gUnknown_08514014
gUnknown_08514014:
	.INCBIN "baserom.gba", 0x514014, 0x51F440-0x514014

	.GLOBAL gUnknown_0851F440
gUnknown_0851F440:
	.INCBIN "baserom.gba", 0x51F440, 0x51F560-0x51F440

	.GLOBAL gUnknown_0851F560
gUnknown_0851F560:
	.INCBIN "baserom.gba", 0x51F560, 0x51F568-0x51F560

	.GLOBAL gUnknown_0851F568
gUnknown_0851F568:
	.INCBIN "baserom.gba", 0x51F568, 0x54301C-0x51F568

	.GLOBAL gUnknown_0854301C
gUnknown_0854301C:
	.INCBIN "baserom.gba", 0x54301C, 0x54337C-0x54301C

	.GLOBAL gUnknown_0854337C
gUnknown_0854337C:
	.INCBIN "baserom.gba", 0x54337C, 0x543384-0x54337C

	.GLOBAL gUnknown_08543384
gUnknown_08543384:
	.INCBIN "baserom.gba", 0x543384, 0x587E38-0x543384

	.GLOBAL gUnknown_08587E38
gUnknown_08587E38:
	.INCBIN "baserom.gba", 0x587E38, 0x5882B8-0x587E38

	.GLOBAL gUnknown_085882B8
gUnknown_085882B8:
	.INCBIN "baserom.gba", 0x5882B8, 0x5882C0-0x5882B8

	.GLOBAL gUnknown_085882C0
gUnknown_085882C0:
	.INCBIN "baserom.gba", 0x5882C0, 0x59FC1C-0x5882C0

	.GLOBAL gUnknown_0859FC1C
gUnknown_0859FC1C:
	.INCBIN "baserom.gba", 0x59FC1C, 0x59FD3C-0x59FC1C

	.GLOBAL gUnknown_0859FD3C
gUnknown_0859FD3C:
	.INCBIN "baserom.gba", 0x59FD3C, 0x59FD44-0x59FD3C

	.GLOBAL gUnknown_0859FD44
gUnknown_0859FD44:
	.INCBIN "baserom.gba", 0x59FD44, 0x5BD3D8-0x59FD44

	.GLOBAL gUnknown_085BD3D8
gUnknown_085BD3D8:
	.INCBIN "baserom.gba", 0x5BD3D8, 0x5BD588-0x5BD3D8

	.GLOBAL gUnknown_085BD588
gUnknown_085BD588:
	.INCBIN "baserom.gba", 0x5BD588, 0x5BD590-0x5BD588

	.GLOBAL gUnknown_085BD590
gUnknown_085BD590:
	.INCBIN "baserom.gba", 0x5BD590, 0x5C240C-0x5BD590

.section .rodata

	@ What is this first part? Seems unreferenced.

	.INCBIN "baserom.gba", 0x76360, 0x76368-0x76360

	.GLOBAL gUnknown_08076368
gUnknown_08076368:
	.INCBIN "baserom.gba", 0x76368, 0x76387-0x76368

	.GLOBAL gUnknown_08076387
gUnknown_08076387:
	.INCBIN "baserom.gba", 0x76387, 0x7638C-0x76387
