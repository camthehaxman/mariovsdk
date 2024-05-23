	.INCLUDE "macro.inc"

	THUMB_FUNC_START movie_main_callback
movie_main_callback: @ 0x0802D208
	push {r4,lr}
	ldr r4, _0802D224  @ =0x03000DCC
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802D22C
	bl sub_08029EB4
	ldr r0, _0802D228  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D230
	strb r0, [r4]
	b _0802D230
	.byte 0x00
	.byte 0x00
_0802D224:
	.4byte 0x03000DCC
_0802D228:
	.4byte gUnknown_03000C28
_0802D22C:
	bl sub_08029C20
_0802D230:
	ldr r4, _0802D260  @ =0x030001A0
	ldr r0, [r4]
	bl sub_0805739C
	bl sub_0802BE50
	bl process_input
	ldr r1, _0802D264  @ =gUnknown_03000B54
	ldr r0, [r1]
	add r2, r0, #1
	str r2, [r1]
	ldr r0, _0802D268  @ =gUnknown_030009C8
	ldr r0, [r0]
	cmp r0, #4
	bne _0802D26C
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0802D25C
	b _0802D3FE
_0802D25C:
	b _0802D3EA
	.byte 0x00
	.byte 0x00
_0802D260:
	.4byte 0x030001A0
_0802D264:
	.4byte gUnknown_03000B54
_0802D268:
	.4byte gUnknown_030009C8
_0802D26C:
	ldrb r3, [r4, #7]
	cmp r3, #3
	bne _0802D2D8
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D2A6
	cmp r2, #180
	ble _0802D2A6
	ldr r0, _0802D2CC  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D2A6
	mov r0, #44
	mov r1, #8
	mov r2, #4
	strb r3, [r4, #4]
	strb r0, [r4, #5]
	strb r1, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, _0802D2D0  @ =gUnknown_08B30768
	str r0, [r4]
	mov r0, #30
	mov r1, #1
	bl goto_state_080070E8
_0802D2A6:
	ldr r4, _0802D2D4  @ =0x030001A0
	ldrb r1, [r4, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802D2B4
	b _0802D452
_0802D2B4:
	mov r0, #3
	mov r1, #44
	mov r2, #8
	mov r3, #4
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	strb r2, [r4, #6]
	strb r3, [r4, #7]
	ldr r0, _0802D2D0  @ =gUnknown_08B30768
	str r0, [r4]
	mov r0, #30
	b _0802D40C
_0802D2CC:
	.4byte gSomeKeys_030012E8
_0802D2D0:
	.4byte gUnknown_08B30768
_0802D2D4:
	.4byte 0x030001A0
_0802D2D8:
	cmp r3, #4
	bne _0802D354
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D324
	cmp r2, #180
	ble _0802D324
	ldr r0, _0802D310  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D324
	mov r4, #128
	lsl r4, r4, #15
	add r0, r4, #0
	bl sub_080148F0
	cmp r0, #0
	beq _0802D314
	mov r0, #8
	mov r1, #1
	bl goto_state_080070E8
	b _0802D324
	.byte 0x00
	.byte 0x00
_0802D310:
	.4byte gSomeKeys_030012E8
_0802D314:
	add r0, r4, #0
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	mov r1, #1
	bl goto_state_080070E8
_0802D324:
	ldr r0, _0802D344  @ =0x030001A0
	ldrb r1, [r0, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802D332
	b _0802D452
_0802D332:
	mov r4, #128
	lsl r4, r4, #15
	add r0, r4, #0
	bl sub_080148F0
	cmp r0, #0
	beq _0802D348
	mov r0, #8
	b _0802D40C
_0802D344:
	.4byte 0x030001A0
_0802D348:
	add r0, r4, #0
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _0802D40C
_0802D354:
	cmp r3, #1
	bne _0802D3D8
	ldrb r0, [r4, #4]
	and r3, r3, r0
	cmp r3, #0
	beq _0802D39E
	cmp r2, #180
	ble _0802D39E
	ldr r0, _0802D384  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D39E
	bl sub_08014BB4
	add r1, r0, #0
	cmp r1, #0
	beq _0802D388
	mov r0, #8
	mov r1, #1
	bl goto_state_080070E8
	b _0802D39E
_0802D384:
	.4byte gSomeKeys_030012E8
_0802D388:
	ldr r0, _0802D3B8  @ =gUnknown_03000B58
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #17
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	mov r1, #1
	bl goto_state_080070E8
_0802D39E:
	ldr r0, _0802D3BC  @ =0x030001A0
	ldrb r1, [r0, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802D452
	bl sub_08014BB4
	add r1, r0, #0
	cmp r1, #0
	beq _0802D3C0
	mov r0, #8
	b _0802D40C
_0802D3B8:
	.4byte gUnknown_03000B58
_0802D3BC:
	.4byte 0x030001A0
_0802D3C0:
	ldr r0, _0802D3D4  @ =gUnknown_03000B58
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #17
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _0802D40C
	.byte 0x00
	.byte 0x00
_0802D3D4:
	.4byte gUnknown_03000B58
_0802D3D8:
	cmp r3, #0
	bne _0802D41C
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D3FE
	cmp r2, #5
	ble _0802D3FE
_0802D3EA:
	ldr r0, _0802D414  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D3FE
	ldrb r0, [r4, #6]
	mov r1, #1
	bl goto_state_080070E8
_0802D3FE:
	ldr r2, _0802D418  @ =0x030001A0
	ldrb r1, [r2, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802D452
	ldrb r0, [r2, #6]
_0802D40C:
	mov r1, #1
	bl goto_state_080070E8
	b _0802D452
_0802D414:
	.4byte gSomeKeys_030012E8
_0802D418:
	.4byte 0x030001A0
_0802D41C:
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D43E
	cmp r2, #180
	ble _0802D43E
	ldr r0, _0802D460  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D43E
	ldrb r0, [r4, #6]
	mov r1, #1
	bl goto_state_080070E8
_0802D43E:
	ldr r2, _0802D464  @ =0x030001A0
	ldrb r1, [r2, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802D452
	ldrb r0, [r2, #6]
	mov r1, #1
	bl goto_state_080070E8
_0802D452:
	bl sub_080082C8
	bl sub_0801B310
	pop {r4}
	pop {r0}
	bx r0
_0802D460:
	.4byte gSomeKeys_030012E8
_0802D464:
	.4byte 0x030001A0
	THUMB_FUNC_END movie_main_callback

	THUMB_FUNC_START sub_0802D468
sub_0802D468: @ 0x0802D468
	push {r4,lr}
	lsl r3, r3, #24
	lsr r4, r3, #24
	ldr r3, _0802D488  @ =0x030001A0
	strb r0, [r3, #4]
	strb r1, [r3, #5]
	strb r2, [r3, #6]
	strb r4, [r3, #7]
	cmp r4, #9
	bhi _0802D504
	lsl r0, r4, #2
	ldr r1, _0802D48C  @ =0x0802D490
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802D488:
	.4byte 0x030001A0
_0802D48C:
	.4byte _0802D490
_0802D490:
	.4byte _0802D4B8
	.4byte _0802D4C0
	.4byte _0802D4C8
	.4byte _0802D4F0
	.4byte _0802D4D0
	.4byte _0802D4D8
	.4byte _0802D4E0
	.4byte _0802D4E8
	.4byte _0802D4F8
	.4byte _0802D500
_0802D4B8:
	ldr r0, _0802D4BC  @ =gUnknown_08B32118
	b _0802D502
_0802D4BC:
	.4byte gUnknown_08B32118
_0802D4C0:
	ldr r0, _0802D4C4  @ =gUnknown_08B30F94
	b _0802D502
_0802D4C4:
	.4byte gUnknown_08B30F94
_0802D4C8:
	ldr r0, _0802D4CC  @ =gUnknown_08B2FFDC
	b _0802D502
_0802D4CC:
	.4byte gUnknown_08B2FFDC
_0802D4D0:
	ldr r0, _0802D4D4  @ =gUnknown_08B30768
	b _0802D502
_0802D4D4:
	.4byte gUnknown_08B30768
_0802D4D8:
	ldr r0, _0802D4DC  @ =gUnknown_08B2F5B8
	b _0802D502
_0802D4DC:
	.4byte gUnknown_08B2F5B8
_0802D4E0:
	ldr r0, _0802D4E4  @ =gUnknown_08B2F070
	b _0802D502
_0802D4E4:
	.4byte gUnknown_08B2F070
_0802D4E8:
	ldr r0, _0802D4EC  @ =gUnknown_08B35FC0
	b _0802D502
_0802D4EC:
	.4byte gUnknown_08B35FC0
_0802D4F0:
	ldr r0, _0802D4F4  @ =gUnknown_08B37168
	b _0802D502
_0802D4F4:
	.4byte gUnknown_08B37168
_0802D4F8:
	ldr r0, _0802D4FC  @ =gUnknown_08B3732C
	b _0802D502
_0802D4FC:
	.4byte gUnknown_08B3732C
_0802D500:
	ldr r0, _0802D50C  @ =gUnknown_08B37424
_0802D502:
	str r0, [r3]
_0802D504:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D50C:
	.4byte gUnknown_08B37424
	THUMB_FUNC_END sub_0802D468

	THUMB_FUNC_START movie_init_callback
movie_init_callback: @ 0x0802D510
	push {r4,lr}
	mov r0, #0
	bl arena_restore_head
	ldr r4, _0802D564  @ =0x030001A0
	ldrb r0, [r4, #5]
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	bl sub_0805727C
	ldr r0, [r4]
	bl sub_08057420
	ldr r1, _0802D568  @ =gUnknown_030009EC
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0802D56C  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0802D570  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r2, _0802D574  @ =gUnknown_03000B54
	mov r0, #0
	str r0, [r2]
	ldr r0, _0802D578  @ =0x03000DCC
	strb r1, [r0]
	ldr r1, _0802D57C  @ =0x03000A00
	ldr r0, _0802D580  @ =0x0802D609
	str r0, [r1]
	bl sub_08038B18
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802D584  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
_0802D564:
	.4byte 0x030001A0
_0802D568:
	.4byte gUnknown_030009EC
_0802D56C:
	.4byte gUnknown_0300192C
_0802D570:
	.4byte gUnknown_03001930
_0802D574:
	.4byte gUnknown_03000B54
_0802D578:
	.4byte 0x03000DCC
_0802D57C:
	.4byte 0x03000A00
_0802D580:
	.4byte sub_0802D608
_0802D584:
	.4byte 0x0000FF7F
	THUMB_FUNC_END movie_init_callback

	THUMB_FUNC_START movie_display_callback
movie_display_callback: @ 0x0802D588
	push {r4-r6,lr}
	sub sp, sp, #16
	add r0, sp, #8
	mov r4, #0
	strh r4, [r0]
	ldr r1, _0802D5E0  @ =gUnknown_03001930
	ldrh r2, [r1]
	mov r1, sp
	add r1, r1, #10
	strh r2, [r1]
	ldr r2, _0802D5E4  @ =gUnknown_0300192C
	ldrh r3, [r2]
	add r2, sp, #12
	strh r3, [r2]
	mov r3, sp
	add r3, r3, #14
	strh r4, [r3]
	mov r4, #160
	str r4, [sp, #4]
	ldr r5, _0802D5E8  @ =0x040000D4
	add r4, sp, #4
	str r4, [r5]
	ldr r6, _0802D5EC  @ =gOamBuffer
	str r6, [r5, #4]
	ldr r4, _0802D5F0  @ =0x85000100
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldr r4, _0802D5F4  @ =0x030001A0
	ldr r4, [r4]
	str r4, [sp]
	bl sub_080573FC
	str r6, [r5]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r5, #4]
	ldr r0, _0802D5F8  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	add sp, sp, #16
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D5E0:
	.4byte gUnknown_03001930
_0802D5E4:
	.4byte gUnknown_0300192C
_0802D5E8:
	.4byte 0x040000D4
_0802D5EC:
	.4byte gOamBuffer
_0802D5F0:
	.4byte 0x85000100
_0802D5F4:
	.4byte 0x030001A0
_0802D5F8:
	.4byte 0x84000100
	THUMB_FUNC_END movie_display_callback

	THUMB_FUNC_START sub_0802D5FC
sub_0802D5FC: @ 0x0802D5FC
	push {lr}
	bl sub_08071C24
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802D5FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802D608
sub_0802D608: @ 0x0802D608
	ldr r1, _0802D610  @ =0x030001A0
	mov r0, #0
	strb r0, [r1, #4]
	bx lr
_0802D610:
	.4byte 0x030001A0
	THUMB_FUNC_END sub_0802D608

	THUMB_FUNC_START sub_0802D614
sub_0802D614: @ 0x0802D614
	push {r4,lr}
	add r4, r0, #0
	mov r0, #26
	mov r1, #0
	bl goto_state_080070E8
	ldr r2, _0802D648  @ =0x030001C0
	str r4, [r2]
	ldr r1, _0802D64C  @ =0x030001B4
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D650  @ =0x030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, [r2]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0802D66C
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #2
	bne _0802D654
	mov r3, #6
	b _0802D67E
_0802D648:
	.4byte 0x030001C0
_0802D64C:
	.4byte 0x030001B4
_0802D650:
	.4byte 0x030001BC
_0802D654:
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #1
	bne _0802D662
	mov r3, #7
	b _0802D67E
_0802D662:
	add r0, r4, #0
	bl sub_08031978
	mov r3, #5
	b _0802D67E
_0802D66C:
	add r0, r4, #0
	add r0, r0, #16
	bl sub_0802F090
	mov r3, #1
	neg r3, r3
	cmp r0, #0
	beq _0802D67E
	mov r3, #3
_0802D67E:
	ldr r0, _0802D694  @ =0x030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802D69C
	ldr r1, _0802D698  @ =0x030001A8
	mov r0, #4
	str r0, [r1]
	b _0802D6C4
_0802D694:
	.4byte 0x030001B8
_0802D698:
	.4byte 0x030001A8
_0802D69C:
	cmp r3, #3
	bne _0802D6AC
	ldr r1, _0802D6A8  @ =0x030001A8
	mov r0, #5
	str r0, [r1]
	b _0802D6C4
_0802D6A8:
	.4byte 0x030001A8
_0802D6AC:
	ldr r1, _0802D6CC  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802D6D0  @ =0x030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802D6D4  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
	ldr r0, _0802D6D8  @ =0x030001B0
	str r4, [r0]
_0802D6C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D6CC:
	.4byte 0x030001A8
_0802D6D0:
	.4byte 0x030001AC
_0802D6D4:
	.4byte gUnknown_0807C850
_0802D6D8:
	.4byte 0x030001B0
	THUMB_FUNC_END sub_0802D614

