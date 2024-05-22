	.INCLUDE "macro.inc"

	THUMB_FUNC_START bonus_stoparrow_init_callback
bonus_stoparrow_init_callback: @ 0x080215B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	mov r0, #0
	bl arena_restore_head
	bl sub_080720AC
	mov r0, #68
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	ldr r7, _08021648  @ =0x030000D0
	mov r0, #12
	bl arena_allocate
	str r0, [r7]
	ldr r5, _0802164C  @ =0x030000D4
	mov r0, #24
	bl arena_allocate
	str r0, [r5]
	ldr r4, _08021650  @ =0x030000D8
	mov r0, #24
	bl arena_allocate
	str r0, [r4]
	ldr r0, [r5]
	mov r1, #0
	strh r1, [r0, #20]
	ldr r0, _08021654  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08021658  @ =gUnknown_03001710
	strh r1, [r0]
	ldr r0, _0802165C  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r0, _08021660  @ =gUnknown_0300192C
	strh r1, [r0]
	ldr r0, _08021664  @ =gUnknown_030009DC
	ldr r5, [r0]
	ldr r0, _08021668  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #10
	bl __modsi3
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	mov r1, #1
	and r4, r4, r1
	cmp r4, #0
	bne _08021678
	and r5, r5, r1
	cmp r5, #0
	bne _08021678
	cmp r0, #4
	beq _0802163A
	cmp r6, #4
	bne _0802166C
_0802163A:
	ldr r1, [r7]
	mov r0, #5
	strb r0, [r1, #10]
	ldr r1, [r7]
	mov r0, #11
	b _08021684
	.byte 0x00
	.byte 0x00
_08021648:
	.4byte 0x030000D0
_0802164C:
	.4byte 0x030000D4
_08021650:
	.4byte 0x030000D8
_08021654:
	.4byte gUnknown_030012A0
_08021658:
	.4byte gUnknown_03001710
_0802165C:
	.4byte gUnknown_03001930
_08021660:
	.4byte gUnknown_0300192C
_08021664:
	.4byte gUnknown_030009DC
_08021668:
	.4byte gUnknown_03000B54
_0802166C:
	ldr r1, [r7]
	mov r0, #4
	strb r0, [r1, #10]
	ldr r1, [r7]
	mov r0, #12
	b _08021684
_08021678:
	ldr r2, _080216A8  @ =0x030000D0
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #10]
	ldr r1, [r2]
	mov r0, #5
_08021684:
	strb r0, [r1, #11]
	ldr r0, _080216AC  @ =0x030000D4
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	bl sub_0804A244
	mov r1, #6
	bl __modsi3
	cmp r0, #5
	bhi _08021768
	lsl r0, r0, #2
	ldr r1, _080216B0  @ =0x080216B4
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_080216A8:
	.4byte 0x030000D0
_080216AC:
	.4byte 0x030000D4
_080216B0:
	.4byte _080216B4
_080216B4:
	.4byte _080216CC
	.4byte _080216E8
	.4byte _08021708
	.4byte _08021728
	.4byte _08021748
	.4byte _08021768
_080216CC:
	ldr r2, _080216E0  @ =0x030000D8
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _080216E4  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	b _08021778
	.byte 0x00
	.byte 0x00
_080216E0:
	.4byte 0x030000D8
_080216E4:
	.4byte 0x030000D0
_080216E8:
	ldr r1, _08021700  @ =0x030000D8
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2]
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2, #8]
	ldr r1, [r1]
	ldr r0, _08021704  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	b _0802177E
_08021700:
	.4byte 0x030000D8
_08021704:
	.4byte 0x030000D0
_08021708:
	ldr r2, _08021720  @ =0x030000D8
	ldr r1, [r2]
	ldr r0, _08021724  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	strb r0, [r1]
	ldr r1, [r2]
	mov r0, #3
	strb r0, [r1, #8]
	ldr r1, [r2]
	mov r0, #1
	b _0802177E
_08021720:
	.4byte 0x030000D8
_08021724:
	.4byte 0x030000D0
_08021728:
	ldr r1, _08021740  @ =0x030000D8
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #8]
	ldr r1, [r1]
	ldr r0, _08021744  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	b _0802177E
_08021740:
	.4byte 0x030000D8
_08021744:
	.4byte 0x030000D0
_08021748:
	ldr r2, _08021760  @ =0x030000D8
	ldr r1, [r2]
	mov r0, #3
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08021764  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	strb r0, [r1, #8]
	ldr r1, [r2]
	mov r0, #1
	b _0802177E
_08021760:
	.4byte 0x030000D8
_08021764:
	.4byte 0x030000D0
_08021768:
	ldr r2, _080218E4  @ =0x030000D8
	ldr r1, [r2]
	ldr r0, _080218E8  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	strb r0, [r1]
	ldr r1, [r2]
	mov r0, #1
_08021778:
	strb r0, [r1, #8]
	ldr r1, [r2]
	mov r0, #3
_0802177E:
	strb r0, [r1, #16]
	ldr r4, _080218EC  @ =gUnknown_0885C4C4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _080218F0  @ =gUnknown_0885D720
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl sub_08032F24
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #202
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _080218F4  @ =0x030000CC
	str r0, [r1]
	add r5, sp, #16
	mov r0, #160
	strh r0, [r5]
	ldr r1, _080218F8  @ =0x040000D4
	str r5, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080218FC  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	mov r0, #0
	mov r8, r0
	strh r0, [r5]
	ldr r1, [r4, #64]
	ldr r2, [r4, #68]
	sub r2, r2, r1
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r5, #0
	bl CpuSet
	ldr r6, _08021900  @ =0x030000D4
	ldr r1, [r6]
	ldr r4, _08021904  @ =gUnknown_03001930
	ldrh r0, [r4]
	str r0, [r1, #8]
	ldr r0, _08021908  @ =gUnknown_082EBE60
	ldr r5, _0802190C  @ =gUnknown_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r1, [r6]
	str r0, [r1, #12]
	ldr r0, _08021910  @ =gUnknown_082ECB40
	mov r3, #160
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r0, [r6]
	mov r1, r8
	strb r1, [r0, #1]
	ldr r3, _08021914  @ =0x030000DC
	ldr r1, _08021918  @ =gUnknown_08079878
	ldr r2, [r6]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802191C  @ =0x030000E0
	ldr r1, _08021920  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080218E8  @ =0x030000D0
	ldr r1, [r3]
	mov r0, #4
	strb r0, [r1]
	ldr r1, [r6]
	mov r0, #20
	strb r0, [r1, #2]
	ldr r1, [r6]
	mov r0, #84
	strb r0, [r1, #3]
	ldr r1, [r3]
	mov r0, #255
	strb r0, [r1, #1]
	ldr r0, [r3]
	mov r2, r8
	strb r2, [r0, #9]
	ldr r1, _080218E4  @ =0x030000D8
	ldr r0, [r1]
	mov r2, #16
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	strb r2, [r0, #3]
	ldr r0, [r1]
	mov r4, #69
	strb r4, [r0, #4]
	ldr r0, [r1]
	mov r5, #1
	strb r5, [r0, #5]
	ldr r2, [r1]
	mov r0, #8
	strb r0, [r2, #6]
	ldr r0, [r1]
	mov r2, #88
	strb r2, [r0, #9]
	ldr r0, [r1]
	strb r2, [r0, #10]
	ldr r0, [r1]
	strb r2, [r0, #11]
	ldr r0, [r1]
	strb r4, [r0, #12]
	ldr r0, [r1]
	strb r5, [r0, #13]
	ldr r2, [r1]
	mov r0, #6
	strb r0, [r2, #14]
	ldr r0, [r1]
	mov r2, #160
	strb r2, [r0, #17]
	ldr r0, [r1]
	strb r2, [r0, #18]
	ldr r0, [r1]
	strb r2, [r0, #19]
	ldr r0, [r1]
	strb r4, [r0, #20]
	ldr r0, [r1]
	strb r5, [r0, #21]
	ldr r1, [r1]
	mov r0, #7
	strb r0, [r1, #22]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #3]
	ldr r0, [r6]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r5, [r0, #6]
	ldr r0, [r3]
	strb r1, [r0, #7]
	ldr r0, [r3]
	strb r5, [r0, #8]
	mov r0, #9
	mov r1, #3
	bl copy_palettes_to_vram
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080218E4:
	.4byte 0x030000D8
_080218E8:
	.4byte 0x030000D0
_080218EC:
	.4byte gUnknown_0885C4C4
_080218F0:
	.4byte gUnknown_0885D720
_080218F4:
	.4byte 0x030000CC
_080218F8:
	.4byte 0x040000D4
_080218FC:
	.4byte 0x81000100
_08021900:
	.4byte 0x030000D4
_08021904:
	.4byte gUnknown_03001930
_08021908:
	.4byte gUnknown_082EBE60
_0802190C:
	.4byte gUnknown_0300192C
_08021910:
	.4byte gUnknown_082ECB40
_08021914:
	.4byte 0x030000DC
_08021918:
	.4byte gUnknown_08079878
_0802191C:
	.4byte 0x030000E0
_08021920:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END bonus_stoparrow_init_callback

	THUMB_FUNC_START bonus_stoparrow_main_callback
bonus_stoparrow_main_callback: @ 0x08021924
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _08021990  @ =gUnknown_03000BBC
	ldrb r4, [r0]
	bl sub_08029C20
	bl sub_0800881C
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _08021994  @ =0x030000D4
	ldr r1, [r5]
	add r1, r1, #22
	ldr r2, _08021998  @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r1, [r5]
	lsl r4, r4, #24
	asr r4, r4, #24
	ldr r0, _0802199C  @ =0x0000199A
	mul r0, r4, r0
	asr r3, r0, #16
	strb r3, [r1, #23]
	ldr r2, [r5]
	ldrb r1, [r2, #23]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r4, r4, r0
	strb r4, [r2, #22]
	ldr r1, [r5]
	ldrb r0, [r1, #22]
	cmp r0, #9
	bls _08021970
	mov r0, #9
	strb r0, [r1, #22]
_08021970:
	ldr r0, [r5]
	strb r3, [r0, #23]
	ldr r1, [r5]
	ldrh r0, [r1, #20]
	add r0, r0, #1
	strh r0, [r1, #20]
	ldr r0, _080219A0  @ =0x030000DC
	ldr r0, [r0]
	bl _call_via_r0
	bl process_input
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_08021990:
	.4byte gUnknown_03000BBC
_08021994:
	.4byte 0x030000D4
_08021998:
	.4byte 0x01000001
_0802199C:
	.4byte 0x0000199A
_080219A0:
	.4byte 0x030000DC
	THUMB_FUNC_END bonus_stoparrow_main_callback

	THUMB_FUNC_START bonus_stoparrow_display_callback
bonus_stoparrow_display_callback: @ 0x080219A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	add r5, sp, #8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _08021B64  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r2, sp
	add r2, r2, #10
	str r2, [sp, #24]
	strh r0, [r2]
	ldr r0, _08021B68  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r2, r2, #2
	str r2, [sp, #28]
	strh r0, [r2]
	mov r0, #160
	str r0, [sp, #4]
	ldr r6, _08021B6C  @ =0x040000D4
	add r0, sp, #4
	str r0, [r6]
	ldr r7, _08021B70  @ =gOamBuffer
	str r7, [r6, #4]
	ldr r0, _08021B74  @ =0x85000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, #8
	str r0, [sp, #16]
	str r1, [sp, #20]
	ldr r0, _08021B78  @ =gUnknown_082EBE58
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08021B7C  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	add r0, sp, #16
	mov r8, r0
	ldrh r1, [r0]
	ldr r0, _08021B80  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08021B84  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	add r1, sp, #20
	mov r12, r1
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08021B88  @ =0x030000D4
	ldr r4, [r0]
	ldr r1, [r4, #8]
	ldr r0, _08021B8C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08021B90  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #32
	str r0, [sp, #16]
	mov r0, #4
	str r0, [sp, #20]
	ldrb r0, [r4, #23]
	mov r1, r8
	mov r9, r12
	ldr r4, _08021B94  @ =gUnknown_082ECB38
	cmp r0, #0
	beq _08021AC6
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r2, _08021B7C  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r1, [r1]
	ldr r0, _08021B80  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08021B88  @ =0x030000D4
	ldr r1, [r0]
	ldrb r0, [r1, #23]
	lsl r0, r0, #1
	ldr r1, [r1, #12]
	add r1, r1, r0
	ldr r0, _08021B8C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08021B90  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
_08021AC6:
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08021B7C  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _08021B80  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r12
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08021B88  @ =0x030000D4
	ldr r1, [r0]
	ldrb r0, [r1, #22]
	lsl r0, r0, #1
	ldr r1, [r1, #12]
	add r1, r1, r0
	ldr r0, _08021B8C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08021B90  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, _08021B98  @ =0x030000E0
	mov r1, r12
	str r1, [sp]
	ldr r4, [r0]
	add r0, r5, #0
	ldr r1, [sp, #24]
	ldr r2, [sp, #28]
	mov r3, r8
	bl _call_via_r4
	str r7, [r6]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r6, #4]
	ldr r0, _08021B9C  @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08021B64:
	.4byte gUnknown_03001930
_08021B68:
	.4byte gUnknown_0300192C
_08021B6C:
	.4byte 0x040000D4
_08021B70:
	.4byte gOamBuffer
_08021B74:
	.4byte 0x85000100
_08021B78:
	.4byte gUnknown_082EBE58
_08021B7C:
	.4byte 0x84000002
_08021B80:
	.4byte 0x000001FF
_08021B84:
	.4byte 0xFFFFFE00
_08021B88:
	.4byte 0x030000D4
_08021B8C:
	.4byte 0x000003FF
_08021B90:
	.4byte 0xFFFFFC00
_08021B94:
	.4byte gUnknown_082ECB38
_08021B98:
	.4byte 0x030000E0
_08021B9C:
	.4byte 0x80000200
	THUMB_FUNC_END bonus_stoparrow_display_callback

	THUMB_FUNC_START sub_08021BA0
sub_08021BA0: @ 0x08021BA0
	bx lr
	THUMB_FUNC_END sub_08021BA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021BA4
sub_08021BA4: @ 0x08021BA4
	push {r4,lr}
	ldr r2, _08021BDC  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #60
	bne _08021BD6
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #1]
	ldr r3, _08021BE0  @ =0x030000DC
	ldr r1, _08021BE4  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021BE8  @ =0x030000E0
	ldr r1, _08021BEC  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021BD6:
	pop {r4}
	pop {r0}
	bx r0
_08021BDC:
	.4byte 0x030000D4
_08021BE0:
	.4byte 0x030000DC
_08021BE4:
	.4byte gUnknown_08079878
_08021BE8:
	.4byte 0x030000E0
_08021BEC:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021BA4

	THUMB_FUNC_START sub_08021BF0
sub_08021BF0: @ 0x08021BF0
	push {r4,lr}
	ldr r2, _08021C28  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #60
	bne _08021C22
	mov r4, #0
	mov r0, #2
	strb r0, [r1, #1]
	ldr r3, _08021C2C  @ =0x030000DC
	ldr r1, _08021C30  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021C34  @ =0x030000E0
	ldr r1, _08021C38  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021C22:
	pop {r4}
	pop {r0}
	bx r0
_08021C28:
	.4byte 0x030000D4
_08021C2C:
	.4byte 0x030000DC
_08021C30:
	.4byte gUnknown_08079878
_08021C34:
	.4byte 0x030000E0
_08021C38:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021BF0

	THUMB_FUNC_START sub_08021C3C
sub_08021C3C: @ 0x08021C3C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D748
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D1F0
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021C3C

	THUMB_FUNC_START sub_08021C80
sub_08021C80: @ 0x08021C80
	push {lr}
	ldr r0, _08021CC0  @ =0x030000D0
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _08021CC4  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #80
	bne _08021CBC
	mov r0, #3
	strb r0, [r1, #1]
	ldr r3, _08021CC8  @ =0x030000DC
	ldr r1, _08021CCC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021CD0  @ =0x030000E0
	ldr r1, _08021CD4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, #0
	strh r0, [r2, #20]
_08021CBC:
	pop {r0}
	bx r0
_08021CC0:
	.4byte 0x030000D0
_08021CC4:
	.4byte 0x030000D4
_08021CC8:
	.4byte 0x030000DC
_08021CCC:
	.4byte gUnknown_08079878
_08021CD0:
	.4byte 0x030000E0
_08021CD4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021C80

	THUMB_FUNC_START sub_08021CD8
sub_08021CD8: @ 0x08021CD8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D748
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021CD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021D10
sub_08021D10: @ 0x08021D10
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F254
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021D48
sub_08021D48: @ 0x08021D48
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801FB3C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F254
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801CBD8
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D48

	THUMB_FUNC_START sub_08021D8C
sub_08021D8C: @ 0x08021D8C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D8C

	THUMB_FUNC_START sub_08021DA0
sub_08021DA0: @ 0x08021DA0
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DA0

	THUMB_FUNC_START sub_08021DB4
sub_08021DB4: @ 0x08021DB4
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DB4

	THUMB_FUNC_START sub_08021DC8
sub_08021DC8: @ 0x08021DC8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080201EC
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E1C
sub_08021E1C: @ 0x08021E1C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021E1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E70
sub_08021E70: @ 0x08021E70
	push {r4,lr}
	ldr r2, _08021EA8  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #59
	bls _08021EA2
	mov r4, #0
	mov r0, #11
	strb r0, [r1, #1]
	ldr r3, _08021EAC  @ =0x030000DC
	ldr r1, _08021EB0  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021EB4  @ =0x030000E0
	ldr r1, _08021EB8  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021EA2:
	pop {r4}
	pop {r0}
	bx r0
_08021EA8:
	.4byte 0x030000D4
_08021EAC:
	.4byte 0x030000DC
_08021EB0:
	.4byte gUnknown_08079878
_08021EB4:
	.4byte 0x030000E0
_08021EB8:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021E70

	THUMB_FUNC_START sub_08021EBC
sub_08021EBC: @ 0x08021EBC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021EBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F10
sub_08021F10: @ 0x08021F10
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F64
sub_08021F64: @ 0x08021F64
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E3E8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021FB8
sub_08021FB8: @ 0x08021FB8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E3E8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021FB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802200C
sub_0802200C: @ 0x0802200C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r2, _08022308  @ =0x030000F8
	mov r10, r2
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08022112
	ldrb r0, [r1, #1]
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r3, r9
	str r0, [r3]
	ldr r4, _08022310  @ =0x040000D4
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022334  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022112:
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08022200
	ldrb r0, [r1, #1]
	mov r3, r8
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r1, r9
	str r0, [r1]
	ldr r4, _08022310  @ =0x040000D4
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022334  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022200:
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080222F6
	ldrb r0, [r1, #1]
	mov r3, r8
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r1, r9
	str r0, [r1]
	ldr r4, _08022310  @ =0x040000D4
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08022334  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080222F6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08022304:
	.4byte 0x030000E8
_08022308:
	.4byte 0x030000F8
_0802230C:
	.4byte 0x030000F4
_08022310:
	.4byte 0x040000D4
_08022314:
	.4byte gUnknown_082AEF7C
_08022318:
	.4byte 0x06010000
_0802231C:
	.4byte 0x84000200
_08022320:
	.4byte gUnknown_082AEF74
_08022324:
	.4byte gOamBuffer
_08022328:
	.4byte 0x84000002
_0802232C:
	.4byte 0x000001FF
_08022330:
	.4byte 0xFFFFFE00
_08022334:
	.4byte 0x000003FF
_08022338:
	.4byte 0xFFFFFC00
_0802233C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0802200C

	THUMB_FUNC_START sub_08022340
sub_08022340: @ 0x08022340
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #30
	str r0, [r3]
	ldr r2, _08022394  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _08022398  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _080223B0
	ldr r4, _0802239C  @ =0x040000D4
	ldr r0, _080223A0  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080223A4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080223A8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080223AC  @ =gUnknown_0811BCB0
	b _0802245A
	.byte 0x00
	.byte 0x00
_08022394:
	.4byte 0x030000E8
_08022398:
	.4byte 0x030000F8
_0802239C:
	.4byte 0x040000D4
_080223A0:
	.4byte gUnknown_0811BCB8
_080223A4:
	.4byte 0x06010000
_080223A8:
	.4byte 0x84000020
_080223AC:
	.4byte gUnknown_0811BCB0
_080223B0:
	cmp r0, #2
	bne _080223E0
	ldr r4, _080223CC  @ =0x040000D4
	ldr r0, _080223D0  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080223D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080223D8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080223DC  @ =gUnknown_0811BD5C
	b _0802245A
_080223CC:
	.4byte 0x040000D4
_080223D0:
	.4byte gUnknown_0811BD64
_080223D4:
	.4byte 0x06010000
_080223D8:
	.4byte 0x84000020
_080223DC:
	.4byte gUnknown_0811BD5C
_080223E0:
	cmp r0, #3
	bne _08022410
	ldr r4, _080223FC  @ =0x040000D4
	ldr r0, _08022400  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022404  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022408  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802240C  @ =gUnknown_0811BC04
	b _0802245A
_080223FC:
	.4byte 0x040000D4
_08022400:
	.4byte gUnknown_0811BC0C
_08022404:
	.4byte 0x06010000
_08022408:
	.4byte 0x84000020
_0802240C:
	.4byte gUnknown_0811BC04
_08022410:
	cmp r0, #4
	bne _08022440
	ldr r4, _0802242C  @ =0x040000D4
	ldr r0, _08022430  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022434  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022438  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802243C  @ =gUnknown_081257D0
	b _0802245A
_0802242C:
	.4byte 0x040000D4
_08022430:
	.4byte gUnknown_081257D8
_08022434:
	.4byte 0x06010000
_08022438:
	.4byte 0x84000020
_0802243C:
	.4byte gUnknown_081257D0
_08022440:
	cmp r0, #5
	bne _080224E8
	ldr r4, _08022524  @ =0x040000D4
	ldr r0, _08022528  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802252C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022530  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022534  @ =gUnknown_08125928
_0802245A:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022538  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802253C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0802254C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080224E8:
	mov r0, #102
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _08022554  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022560
	ldr r4, _08022524  @ =0x040000D4
	ldr r0, _08022558  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802252C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022530  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802255C  @ =gUnknown_0811BCB0
	b _0802260A
_08022524:
	.4byte 0x040000D4
_08022528:
	.4byte gUnknown_08125930
_0802252C:
	.4byte 0x06010000
_08022530:
	.4byte 0x84000020
_08022534:
	.4byte gUnknown_08125928
_08022538:
	.4byte gOamBuffer
_0802253C:
	.4byte 0x84000002
_08022540:
	.4byte 0x000001FF
_08022544:
	.4byte 0xFFFFFE00
_08022548:
	.4byte 0x000003FF
_0802254C:
	.4byte 0xFFFFFC00
_08022550:
	.4byte 0x80000200
_08022554:
	.4byte 0x030000F8
_08022558:
	.4byte gUnknown_0811BCB8
_0802255C:
	.4byte gUnknown_0811BCB0
_08022560:
	cmp r0, #2
	bne _08022590
	ldr r4, _0802257C  @ =0x040000D4
	ldr r0, _08022580  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022584  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022588  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802258C  @ =gUnknown_0811BD5C
	b _0802260A
_0802257C:
	.4byte 0x040000D4
_08022580:
	.4byte gUnknown_0811BD64
_08022584:
	.4byte 0x06010000
_08022588:
	.4byte 0x84000020
_0802258C:
	.4byte gUnknown_0811BD5C
_08022590:
	cmp r0, #3
	bne _080225C0
	ldr r4, _080225AC  @ =0x040000D4
	ldr r0, _080225B0  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080225B4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080225B8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080225BC  @ =gUnknown_0811BC04
	b _0802260A
_080225AC:
	.4byte 0x040000D4
_080225B0:
	.4byte gUnknown_0811BC0C
_080225B4:
	.4byte 0x06010000
_080225B8:
	.4byte 0x84000020
_080225BC:
	.4byte gUnknown_0811BC04
_080225C0:
	cmp r0, #4
	bne _080225F0
	ldr r4, _080225DC  @ =0x040000D4
	ldr r0, _080225E0  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080225E4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080225E8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080225EC  @ =gUnknown_081257D0
	b _0802260A
_080225DC:
	.4byte 0x040000D4
_080225E0:
	.4byte gUnknown_081257D8
_080225E4:
	.4byte 0x06010000
_080225E8:
	.4byte 0x84000020
_080225EC:
	.4byte gUnknown_081257D0
_080225F0:
	cmp r0, #5
	bne _08022698
	ldr r4, _080226D4  @ =0x040000D4
	ldr r0, _080226D8  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080226DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226E0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080226E4  @ =gUnknown_08125928
_0802260A:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080226E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080226EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _080226F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080226F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080226F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080226FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022700  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022698:
	mov r0, #174
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r2, _08022704  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022710
	ldr r4, _080226D4  @ =0x040000D4
	ldr r0, _08022708  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080226DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226E0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802270C  @ =gUnknown_0811BCB0
	b _080227BA
_080226D4:
	.4byte 0x040000D4
_080226D8:
	.4byte gUnknown_08125930
_080226DC:
	.4byte 0x06010000
_080226E0:
	.4byte 0x84000020
_080226E4:
	.4byte gUnknown_08125928
_080226E8:
	.4byte gOamBuffer
_080226EC:
	.4byte 0x84000002
_080226F0:
	.4byte 0x000001FF
_080226F4:
	.4byte 0xFFFFFE00
_080226F8:
	.4byte 0x000003FF
_080226FC:
	.4byte 0xFFFFFC00
_08022700:
	.4byte 0x80000200
_08022704:
	.4byte 0x030000F8
_08022708:
	.4byte gUnknown_0811BCB8
_0802270C:
	.4byte gUnknown_0811BCB0
_08022710:
	cmp r0, #2
	bne _08022740
	ldr r4, _0802272C  @ =0x040000D4
	ldr r0, _08022730  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022734  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022738  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802273C  @ =gUnknown_0811BD5C
	b _080227BA
_0802272C:
	.4byte 0x040000D4
_08022730:
	.4byte gUnknown_0811BD64
_08022734:
	.4byte 0x06010000
_08022738:
	.4byte 0x84000020
_0802273C:
	.4byte gUnknown_0811BD5C
_08022740:
	cmp r0, #3
	bne _08022770
	ldr r4, _0802275C  @ =0x040000D4
	ldr r0, _08022760  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022764  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022768  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802276C  @ =gUnknown_0811BC04
	b _080227BA
_0802275C:
	.4byte 0x040000D4
_08022760:
	.4byte gUnknown_0811BC0C
_08022764:
	.4byte 0x06010000
_08022768:
	.4byte 0x84000020
_0802276C:
	.4byte gUnknown_0811BC04
_08022770:
	cmp r0, #4
	bne _080227A0
	ldr r4, _0802278C  @ =0x040000D4
	ldr r0, _08022790  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022794  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022798  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802279C  @ =gUnknown_081257D0
	b _080227BA
_0802278C:
	.4byte 0x040000D4
_08022790:
	.4byte gUnknown_081257D8
_08022794:
	.4byte 0x06010000
_08022798:
	.4byte 0x84000020
_0802279C:
	.4byte gUnknown_081257D0
_080227A0:
	cmp r0, #5
	bne _08022850
	ldr r4, _08022860  @ =0x040000D4
	ldr r0, _08022864  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022868  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802286C  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022870  @ =gUnknown_08125928
_080227BA:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022874  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022878  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802287C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022880  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08022884  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08022888  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802288C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022850:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022860:
	.4byte 0x040000D4
_08022864:
	.4byte gUnknown_08125930
_08022868:
	.4byte 0x06010000
_0802286C:
	.4byte 0x84000020
_08022870:
	.4byte gUnknown_08125928
_08022874:
	.4byte gOamBuffer
_08022878:
	.4byte 0x84000002
_0802287C:
	.4byte 0x000001FF
_08022880:
	.4byte 0xFFFFFE00
_08022884:
	.4byte 0x000003FF
_08022888:
	.4byte 0xFFFFFC00
_0802288C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08022340

	THUMB_FUNC_START sub_08022890
sub_08022890: @ 0x08022890
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #16
	str r0, [r3]
	ldr r2, _0802296C  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r1, r9
	str r0, [r1]
	ldr r5, [r2]
	ldrb r0, [r5, #1]
	ldr r3, _08022970  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _080229A4
	ldr r4, _08022974  @ =0x040000D4
	ldr r2, _08022978  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0802297C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022980  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022984  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022988  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802298C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022990  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022994  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022998  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802299C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080229A0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _08022CDE
_0802296C:
	.4byte 0x030000E8
_08022970:
	.4byte 0x030000F8
_08022974:
	.4byte 0x040000D4
_08022978:
	.4byte gUnknown_0811C010
_0802297C:
	.4byte gUnknown_0811C1C8
_08022980:
	.4byte 0x06010000
_08022984:
	.4byte 0x84000200
_08022988:
	.4byte gUnknown_0811C1C0
_0802298C:
	.4byte gOamBuffer
_08022990:
	.4byte 0x84000002
_08022994:
	.4byte 0x000001FF
_08022998:
	.4byte 0xFFFFFE00
_0802299C:
	.4byte 0x000003FF
_080229A0:
	.4byte 0xFFFFFC00
_080229A4:
	cmp r0, #2
	bne _08022A7C
	ldr r4, _08022A4C  @ =0x040000D4
	ldr r2, _08022A50  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022A54  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022A58  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022A5C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022A60  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022A64  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022A68  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022A6C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022A70  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022A74  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022A78  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _08022CDE
_08022A4C:
	.4byte 0x040000D4
_08022A50:
	.4byte gUnknown_0811C010
_08022A54:
	.4byte gUnknown_0811C1C8
_08022A58:
	.4byte 0x06010000
_08022A5C:
	.4byte 0x84000200
_08022A60:
	.4byte gUnknown_0811C1C0
_08022A64:
	.4byte gOamBuffer
_08022A68:
	.4byte 0x84000002
_08022A6C:
	.4byte 0x000001FF
_08022A70:
	.4byte 0xFFFFFE00
_08022A74:
	.4byte 0x000003FF
_08022A78:
	.4byte 0xFFFFFC00
_08022A7C:
	cmp r0, #3
	bne _08022B60
	ldr r4, _08022B30  @ =0x040000D4
	ldr r2, _08022B34  @ =gUnknown_0811F5F4
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08022B38  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022B3C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022B40  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022B44  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022B48  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022B4C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022B50  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022B54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022B58  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022B5C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _08022CFA
	.byte 0x00
	.byte 0x00
_08022B30:
	.4byte 0x040000D4
_08022B34:
	.4byte gUnknown_0811F5F4
_08022B38:
	.4byte gUnknown_0811F7AC
_08022B3C:
	.4byte 0x06010000
_08022B40:
	.4byte 0x84000400
_08022B44:
	.4byte gUnknown_0811F7A4
_08022B48:
	.4byte gOamBuffer
_08022B4C:
	.4byte 0x84000002
_08022B50:
	.4byte 0x000001FF
_08022B54:
	.4byte 0xFFFFFE00
_08022B58:
	.4byte 0x000003FF
_08022B5C:
	.4byte 0xFFFFFC00
_08022B60:
	cmp r0, #4
	bne _08022C38
	ldr r4, _08022C08  @ =0x040000D4
	ldr r2, _08022C0C  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022C10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022C14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022C18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022C1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022C20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022C24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022C28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022C2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022C30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022C34  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _08022CDE
_08022C08:
	.4byte 0x040000D4
_08022C0C:
	.4byte gUnknown_0811C010
_08022C10:
	.4byte gUnknown_0811C1C8
_08022C14:
	.4byte 0x06010000
_08022C18:
	.4byte 0x84000200
_08022C1C:
	.4byte gUnknown_0811C1C0
_08022C20:
	.4byte gOamBuffer
_08022C24:
	.4byte 0x84000002
_08022C28:
	.4byte 0x000001FF
_08022C2C:
	.4byte 0xFFFFFE00
_08022C30:
	.4byte 0x000003FF
_08022C34:
	.4byte 0xFFFFFC00
_08022C38:
	cmp r0, #5
	bne _08022D0A
	ldr r4, _08022DD0  @ =0x040000D4
	ldr r2, _08022DD4  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022DD8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022DDC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022DE0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022DE4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022DE8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022DEC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022DF0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022DF4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022DF8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022DFC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_08022CDE:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_08022CFA:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022E00  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022D0A:
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r3, r9
	str r0, [r3]
	ldr r3, [r2]
	ldrb r0, [r3, #2]
	ldr r2, _08022E04  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022E08
	ldr r4, _08022DD0  @ =0x040000D4
	ldr r2, _08022DD4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022DD8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022DDC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022DE0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022DE4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022DE8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022DEC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022DF0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022DF4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022DF8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022DFC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _08023142
_08022DD0:
	.4byte 0x040000D4
_08022DD4:
	.4byte gUnknown_0811C010
_08022DD8:
	.4byte gUnknown_0811C1C8
_08022DDC:
	.4byte 0x06010000
_08022DE0:
	.4byte 0x84000200
_08022DE4:
	.4byte gUnknown_0811C1C0
_08022DE8:
	.4byte gOamBuffer
_08022DEC:
	.4byte 0x84000002
_08022DF0:
	.4byte 0x000001FF
_08022DF4:
	.4byte 0xFFFFFE00
_08022DF8:
	.4byte 0x000003FF
_08022DFC:
	.4byte 0xFFFFFC00
_08022E00:
	.4byte 0x80000200
_08022E04:
	.4byte 0x030000F8
_08022E08:
	cmp r0, #2
	bne _08022EE0
	ldr r4, _08022EB0  @ =0x040000D4
	ldr r2, _08022EB4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022EB8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022EBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022EC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022EC4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022EC8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022ECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022ED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022ED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022ED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022EDC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _08023142
_08022EB0:
	.4byte 0x040000D4
_08022EB4:
	.4byte gUnknown_0811C010
_08022EB8:
	.4byte gUnknown_0811C1C8
_08022EBC:
	.4byte 0x06010000
_08022EC0:
	.4byte 0x84000200
_08022EC4:
	.4byte gUnknown_0811C1C0
_08022EC8:
	.4byte gOamBuffer
_08022ECC:
	.4byte 0x84000002
_08022ED0:
	.4byte 0x000001FF
_08022ED4:
	.4byte 0xFFFFFE00
_08022ED8:
	.4byte 0x000003FF
_08022EDC:
	.4byte 0xFFFFFC00
_08022EE0:
	cmp r0, #3
	bne _08022FC4
	ldr r4, _08022F94  @ =0x040000D4
	ldr r2, _08022F98  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08022F9C  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022FA0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022FA4  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022FA8  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022FAC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022FB0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022FB4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022FB8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022FBC  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022FC0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _0802315E
	.byte 0x00
	.byte 0x00
_08022F94:
	.4byte 0x040000D4
_08022F98:
	.4byte gUnknown_0811F5F4
_08022F9C:
	.4byte gUnknown_0811F7AC
_08022FA0:
	.4byte 0x06010000
_08022FA4:
	.4byte 0x84000400
_08022FA8:
	.4byte gUnknown_0811F7A4
_08022FAC:
	.4byte gOamBuffer
_08022FB0:
	.4byte 0x84000002
_08022FB4:
	.4byte 0x000001FF
_08022FB8:
	.4byte 0xFFFFFE00
_08022FBC:
	.4byte 0x000003FF
_08022FC0:
	.4byte 0xFFFFFC00
_08022FC4:
	cmp r0, #4
	bne _0802309C
	ldr r4, _0802306C  @ =0x040000D4
	ldr r2, _08023070  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023074  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023078  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802307C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023080  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023084  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023088  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802308C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023090  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023094  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023098  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _08023142
_0802306C:
	.4byte 0x040000D4
_08023070:
	.4byte gUnknown_0811C010
_08023074:
	.4byte gUnknown_0811C1C8
_08023078:
	.4byte 0x06010000
_0802307C:
	.4byte 0x84000200
_08023080:
	.4byte gUnknown_0811C1C0
_08023084:
	.4byte gOamBuffer
_08023088:
	.4byte 0x84000002
_0802308C:
	.4byte 0x000001FF
_08023090:
	.4byte 0xFFFFFE00
_08023094:
	.4byte 0x000003FF
_08023098:
	.4byte 0xFFFFFC00
_0802309C:
	cmp r0, #5
	bne _0802316E
	ldr r4, _0802323C  @ =0x040000D4
	ldr r2, _08023240  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023244  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023248  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802324C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023250  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023254  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023258  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802325C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023260  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023264  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023268  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_08023142:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_0802315E:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802326C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802316E:
	mov r0, #160
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r3, r9
	str r0, [r3]
	ldr r3, [r2]
	ldrb r0, [r3, #3]
	ldr r2, _08023270  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #1
	bne _08023274
	ldr r4, _0802323C  @ =0x040000D4
	ldr r2, _08023240  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023244  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023248  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802324C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023250  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023254  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023258  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802325C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023260  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023264  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023268  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _080235CE
_0802323C:
	.4byte 0x040000D4
_08023240:
	.4byte gUnknown_0811C010
_08023244:
	.4byte gUnknown_0811C1C8
_08023248:
	.4byte 0x06010000
_0802324C:
	.4byte 0x84000200
_08023250:
	.4byte gUnknown_0811C1C0
_08023254:
	.4byte gOamBuffer
_08023258:
	.4byte 0x84000002
_0802325C:
	.4byte 0x000001FF
_08023260:
	.4byte 0xFFFFFE00
_08023264:
	.4byte 0x000003FF
_08023268:
	.4byte 0xFFFFFC00
_0802326C:
	.4byte 0x80000200
_08023270:
	.4byte 0x030000F8
_08023274:
	cmp r1, #2
	bne _08023354
	ldr r4, _08023324  @ =0x040000D4
	ldr r2, _08023328  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0802332C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023330  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023334  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023338  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802333C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023340  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023344  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023348  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0802334C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023350  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _080235CE
_08023324:
	.4byte 0x040000D4
_08023328:
	.4byte gUnknown_0811C010
_0802332C:
	.4byte gUnknown_0811C1C8
_08023330:
	.4byte 0x06010000
_08023334:
	.4byte 0x84000200
_08023338:
	.4byte gUnknown_0811C1C0
_0802333C:
	.4byte gOamBuffer
_08023340:
	.4byte 0x84000002
_08023344:
	.4byte 0x000001FF
_08023348:
	.4byte 0xFFFFFE00
_0802334C:
	.4byte 0x000003FF
_08023350:
	.4byte 0xFFFFFC00
_08023354:
	cmp r1, #3
	bne _08023440
	ldr r4, _08023410  @ =0x040000D4
	ldr r2, _08023414  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08023418  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802341C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023420  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023424  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023428  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802342C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023430  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023434  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023438  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0802343C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _080235EA
	.byte 0x00
	.byte 0x00
_08023410:
	.4byte 0x040000D4
_08023414:
	.4byte gUnknown_0811F5F4
_08023418:
	.4byte gUnknown_0811F7AC
_0802341C:
	.4byte 0x06010000
_08023420:
	.4byte 0x84000400
_08023424:
	.4byte gUnknown_0811F7A4
_08023428:
	.4byte gOamBuffer
_0802342C:
	.4byte 0x84000002
_08023430:
	.4byte 0x000001FF
_08023434:
	.4byte 0xFFFFFE00
_08023438:
	.4byte 0x000003FF
_0802343C:
	.4byte 0xFFFFFC00
_08023440:
	cmp r1, #4
	bne _08023520
	ldr r4, _080234F0  @ =0x040000D4
	ldr r2, _080234F4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080234F8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080234FC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023500  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023504  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023508  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802350C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023510  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023514  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023518  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0802351C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _080235CE
_080234F0:
	.4byte 0x040000D4
_080234F4:
	.4byte gUnknown_0811C010
_080234F8:
	.4byte gUnknown_0811C1C8
_080234FC:
	.4byte 0x06010000
_08023500:
	.4byte 0x84000200
_08023504:
	.4byte gUnknown_0811C1C0
_08023508:
	.4byte gOamBuffer
_0802350C:
	.4byte 0x84000002
_08023510:
	.4byte 0x000001FF
_08023514:
	.4byte 0xFFFFFE00
_08023518:
	.4byte 0x000003FF
_0802351C:
	.4byte 0xFFFFFC00
_08023520:
	cmp r1, #5
	bne _080235FA
	ldr r4, _08023608  @ =0x040000D4
	ldr r2, _0802360C  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023610  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023614  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023618  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802361C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023620  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023624  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023628  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802362C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023630  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023634  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_080235CE:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_080235EA:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023638  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080235FA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08023608:
	.4byte 0x040000D4
_0802360C:
	.4byte gUnknown_0811C010
_08023610:
	.4byte gUnknown_0811C1C8
_08023614:
	.4byte 0x06010000
_08023618:
	.4byte 0x84000200
_0802361C:
	.4byte gUnknown_0811C1C0
_08023620:
	.4byte gOamBuffer
_08023624:
	.4byte 0x84000002
_08023628:
	.4byte 0x000001FF
_0802362C:
	.4byte 0xFFFFFE00
_08023630:
	.4byte 0x000003FF
_08023634:
	.4byte 0xFFFFFC00
_08023638:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08022890

	THUMB_FUNC_START sub_0802363C
sub_0802363C: @ 0x0802363C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r9, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _08023A30  @ =0x030000E8
	mov r8, r1
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802375A
	mov r0, #88
	str r0, [r3]
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802375A:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023862
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023862:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802396A
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802396A:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08023980
	b _08023AB2
_08023980:
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A6C  @ =gUnknown_0811F5F4
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08023A70  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A74  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A78  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	b _08023A7C
	.byte 0x00
	.byte 0x00
_08023A30:
	.4byte 0x030000E8
_08023A34:
	.4byte 0x030000F8
_08023A38:
	.4byte gUnknown_0811C010
_08023A3C:
	.4byte 0x040000D4
_08023A40:
	.4byte gUnknown_0811C1C8
_08023A44:
	.4byte 0x06010000
_08023A48:
	.4byte 0x84000200
_08023A4C:
	.4byte gUnknown_0811C1C0
_08023A50:
	.4byte gOamBuffer
_08023A54:
	.4byte 0x84000002
_08023A58:
	.4byte 0x000001FF
_08023A5C:
	.4byte 0xFFFFFE00
_08023A60:
	.4byte 0x000003FF
_08023A64:
	.4byte 0xFFFFFC00
_08023A68:
	.4byte 0x80000200
_08023A6C:
	.4byte gUnknown_0811F5F4
_08023A70:
	.4byte gUnknown_0811F7AC
_08023A74:
	.4byte 0x84000400
_08023A78:
	.4byte gUnknown_0811F7A4
_08023A7C:
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023BD0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023AB2:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023BD4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08023BC2
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023BD8  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023BDC  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023BE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023BE4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023BE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023BEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023BF0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023BF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023BF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023BFC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023C00  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023C04  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023BD0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023BC2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08023BD0:
	.4byte 0x80000200
_08023BD4:
	.4byte 0x030000F8
_08023BD8:
	.4byte gUnknown_0811C010
_08023BDC:
	.4byte 0x040000D4
_08023BE0:
	.4byte gUnknown_0811C1C8
_08023BE4:
	.4byte 0x06010000
_08023BE8:
	.4byte 0x84000200
_08023BEC:
	.4byte gUnknown_0811C1C0
_08023BF0:
	.4byte gOamBuffer
_08023BF4:
	.4byte 0x84000002
_08023BF8:
	.4byte 0x000001FF
_08023BFC:
	.4byte 0xFFFFFE00
_08023C00:
	.4byte 0x000003FF
_08023C04:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802363C

	THUMB_FUNC_START sub_08023C08
sub_08023C08: @ 0x08023C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _08023FF8  @ =0x030000E8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08023CFE
	mov r0, #88
	str r0, [r3]
	mov r3, r9
	ldr r0, [r3]
	ldrb r0, [r0]
	mov r1, r10
	str r0, [r1]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023CFE:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023DDC
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023DDC:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023EBA
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023EBA:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08023F86
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024030  @ =gUnknown_0811F7AC
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024034  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024038  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023F86:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08023F9C
	b _080240B6
_08023F9C:
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	b _0802403C
	.byte 0x00
	.byte 0x00
_08023FF8:
	.4byte 0x030000E8
_08023FFC:
	.4byte 0x030000F8
_08024000:
	.4byte 0x040000D4
_08024004:
	.4byte gUnknown_0811C1C8
_08024008:
	.4byte 0x06010000
_0802400C:
	.4byte 0x84000200
_08024010:
	.4byte gUnknown_0811C1C0
_08024014:
	.4byte gOamBuffer
_08024018:
	.4byte 0x84000002
_0802401C:
	.4byte 0x000001FF
_08024020:
	.4byte 0xFFFFFE00
_08024024:
	.4byte 0x000003FF
_08024028:
	.4byte 0xFFFFFC00
_0802402C:
	.4byte 0x80000200
_08024030:
	.4byte gUnknown_0811F7AC
_08024034:
	.4byte 0x84000400
_08024038:
	.4byte gUnknown_0811F7A4
_0802403C:
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080240C4  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080240C8  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080240CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080240B6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080240C4:
	.4byte 0x000003FF
_080240C8:
	.4byte 0xFFFFFC00
_080240CC:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08023C08

	THUMB_FUNC_START sub_080240D0
sub_080240D0: @ 0x080240D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r2, _080243CC  @ =0x030000F8
	mov r10, r2
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080241D6
	ldrb r0, [r1, #2]
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r3, r9
	str r0, [r3]
	ldr r4, _080243D4  @ =0x040000D4
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080243F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080241D6:
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080242C4
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r1, r9
	str r0, [r1]
	ldr r4, _080243D4  @ =0x040000D4
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080243F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080242C4:
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080243BA
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r1, r9
	str r0, [r1]
	ldr r4, _080243D4  @ =0x040000D4
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080243F8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080243BA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080243C8:
	.4byte 0x030000E8
_080243CC:
	.4byte 0x030000F8
_080243D0:
	.4byte 0x030000F4
_080243D4:
	.4byte 0x040000D4
_080243D8:
	.4byte gUnknown_082B30B4
_080243DC:
	.4byte 0x06010000
_080243E0:
	.4byte 0x84000100
_080243E4:
	.4byte gUnknown_082B30AC
_080243E8:
	.4byte gOamBuffer
_080243EC:
	.4byte 0x84000002
_080243F0:
	.4byte 0x000001FF
_080243F4:
	.4byte 0xFFFFFE00
_080243F8:
	.4byte 0x000003FF
_080243FC:
	.4byte 0xFFFFFC00
_08024400:
	.4byte 0x80000200
	THUMB_FUNC_END sub_080240D0

	THUMB_FUNC_START sub_08024404
sub_08024404: @ 0x08024404
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r9, r3
	ldr r0, _08024530  @ =0x030000F0
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #0
	beq _08024422
	b _08024570
_08024422:
	ldr r0, _08024534  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024538  @ =0x030000F8
	mov r8, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _0802453C  @ =0x040000D4
	ldr r2, _08024540  @ =gUnknown_082AFFA8
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024544  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024548  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802454C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024550  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024554  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024558  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0802455C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024560  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024564  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024568  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802456C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0802466A
_08024530:
	.4byte 0x030000F0
_08024534:
	.4byte 0x030000E8
_08024538:
	.4byte 0x030000F8
_0802453C:
	.4byte 0x040000D4
_08024540:
	.4byte gUnknown_082AFFA8
_08024544:
	.4byte gUnknown_082B0088
_08024548:
	.4byte 0x06010000
_0802454C:
	.4byte 0x84000200
_08024550:
	.4byte gUnknown_082B0080
_08024554:
	.4byte gOamBuffer
_08024558:
	.4byte 0x84000002
_0802455C:
	.4byte 0x000001FF
_08024560:
	.4byte 0xFFFFFE00
_08024564:
	.4byte 0x000003FF
_08024568:
	.4byte 0xFFFFFC00
_0802456C:
	.4byte 0x80000200
_08024570:
	ldr r0, _080246E0  @ =0x030000E8
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _080246E4  @ =0x030000F8
	mov r10, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r4, _080246E8  @ =0x040000D4
	ldr r0, _080246EC  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080246F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080246F4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080246F8  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080246FC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024700  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024704  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024708  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802470C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024710  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024714  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r8, r10
_0802466A:
	ldr r1, _08024718  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08024728
	ldr r2, _080246E0  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _080246E8  @ =0x040000D4
	ldr r2, _0802471C  @ =gUnknown_082AFFA8
	ldr r3, _080246E0  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024720  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080246F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080246F4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024724  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024700  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _0802477C
_080246E0:
	.4byte 0x030000E8
_080246E4:
	.4byte 0x030000F8
_080246E8:
	.4byte 0x040000D4
_080246EC:
	.4byte gUnknown_082AF7A8
_080246F0:
	.4byte 0x06010000
_080246F4:
	.4byte 0x84000200
_080246F8:
	.4byte gUnknown_082AF7A0
_080246FC:
	.4byte gOamBuffer
_08024700:
	.4byte 0x84000002
_08024704:
	.4byte 0x000001FF
_08024708:
	.4byte 0xFFFFFE00
_0802470C:
	.4byte 0x000003FF
_08024710:
	.4byte 0xFFFFFC00
_08024714:
	.4byte 0x80000200
_08024718:
	.4byte 0x030000F0
_0802471C:
	.4byte gUnknown_082AFFA8
_08024720:
	.4byte gUnknown_082B0088
_08024724:
	.4byte gUnknown_082B0080
_08024728:
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024894  @ =0x040000D4
	ldr r0, _08024898  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0802489C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080248A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080248A4  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080248A8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_0802477C:
	ldr r3, _080248AC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080248B0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r10, r3
	mov r0, r10
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080248B4  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _080248B8  @ =0xFFFFFC00
	mov r3, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080248BC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _080248C0  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _080248D0
	ldr r2, _08024890  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024894  @ =0x040000D4
	ldr r2, _080248C4  @ =gUnknown_082AFFA8
	ldr r3, _08024890  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080248C8  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0802489C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080248A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080248CC  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080248A8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _08024924
_08024890:
	.4byte 0x030000E8
_08024894:
	.4byte 0x040000D4
_08024898:
	.4byte gUnknown_082AF7A8
_0802489C:
	.4byte 0x06010000
_080248A0:
	.4byte 0x84000200
_080248A4:
	.4byte gUnknown_082AF7A0
_080248A8:
	.4byte 0x84000002
_080248AC:
	.4byte 0x000001FF
_080248B0:
	.4byte 0xFFFFFE00
_080248B4:
	.4byte 0x000003FF
_080248B8:
	.4byte 0xFFFFFC00
_080248BC:
	.4byte 0x80000200
_080248C0:
	.4byte 0x030000F0
_080248C4:
	.4byte gUnknown_082AFFA8
_080248C8:
	.4byte gUnknown_082B0088
_080248CC:
	.4byte gUnknown_082B0080
_080248D0:
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _080249D8  @ =0x040000D4
	ldr r0, _080249DC  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080249E0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080249E4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080249E8  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080249EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_08024924:
	ldr r3, _080249F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080249F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080249F8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _080249FC  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024A00  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080249D4:
	.4byte 0x030000E8
_080249D8:
	.4byte 0x040000D4
_080249DC:
	.4byte gUnknown_082AF7A8
_080249E0:
	.4byte 0x06010000
_080249E4:
	.4byte 0x84000200
_080249E8:
	.4byte gUnknown_082AF7A0
_080249EC:
	.4byte 0x84000002
_080249F0:
	.4byte 0x000001FF
_080249F4:
	.4byte 0xFFFFFE00
_080249F8:
	.4byte 0x000003FF
_080249FC:
	.4byte 0xFFFFFC00
_08024A00:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024404

	THUMB_FUNC_START sub_08024A04
sub_08024A04: @ 0x08024A04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r9, r3
	ldr r0, _08024B30  @ =0x030000F0
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #0
	beq _08024A22
	b _08024B70
_08024A22:
	ldr r0, _08024B34  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024B38  @ =0x030000F8
	mov r8, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _08024B3C  @ =0x040000D4
	ldr r2, _08024B40  @ =gUnknown_082AFFA8
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024B44  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024B48  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024B4C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024B50  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024B54  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024B58  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024B5C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024B60  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024B64  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024B68  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024B6C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _08024C6A
_08024B30:
	.4byte 0x030000F0
_08024B34:
	.4byte 0x030000E8
_08024B38:
	.4byte 0x030000F8
_08024B3C:
	.4byte 0x040000D4
_08024B40:
	.4byte gUnknown_082AFFA8
_08024B44:
	.4byte gUnknown_082B0088
_08024B48:
	.4byte 0x06010000
_08024B4C:
	.4byte 0x84000200
_08024B50:
	.4byte gUnknown_082B0080
_08024B54:
	.4byte gOamBuffer
_08024B58:
	.4byte 0x84000002
_08024B5C:
	.4byte 0x000001FF
_08024B60:
	.4byte 0xFFFFFE00
_08024B64:
	.4byte 0x000003FF
_08024B68:
	.4byte 0xFFFFFC00
_08024B6C:
	.4byte 0x80000200
_08024B70:
	ldr r0, _08024CE0  @ =0x030000E8
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024CE4  @ =0x030000F8
	mov r10, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r4, _08024CE8  @ =0x040000D4
	ldr r0, _08024CEC  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024CF0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024CF4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024CF8  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024CFC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024D00  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024D04  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024D08  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024D0C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024D10  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024D14  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r8, r10
_08024C6A:
	ldr r1, _08024D18  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08024D28
	ldr r2, _08024CE0  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024CE8  @ =0x040000D4
	ldr r2, _08024D1C  @ =gUnknown_082AFFA8
	ldr r3, _08024CE0  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024D20  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024CF0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024CF4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024D24  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024D00  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _08024D7C
_08024CE0:
	.4byte 0x030000E8
_08024CE4:
	.4byte 0x030000F8
_08024CE8:
	.4byte 0x040000D4
_08024CEC:
	.4byte gUnknown_082AF7A8
_08024CF0:
	.4byte 0x06010000
_08024CF4:
	.4byte 0x84000200
_08024CF8:
	.4byte gUnknown_082AF7A0
_08024CFC:
	.4byte gOamBuffer
_08024D00:
	.4byte 0x84000002
_08024D04:
	.4byte 0x000001FF
_08024D08:
	.4byte 0xFFFFFE00
_08024D0C:
	.4byte 0x000003FF
_08024D10:
	.4byte 0xFFFFFC00
_08024D14:
	.4byte 0x80000200
_08024D18:
	.4byte 0x030000F0
_08024D1C:
	.4byte gUnknown_082AFFA8
_08024D20:
	.4byte gUnknown_082B0088
_08024D24:
	.4byte gUnknown_082B0080
_08024D28:
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024E30  @ =0x040000D4
	ldr r0, _08024E34  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024E38  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024E3C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024E40  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024E44  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_08024D7C:
	ldr r3, _08024E48  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024E4C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08024E50  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _08024E54  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024E58  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08024E2C:
	.4byte 0x030000E8
_08024E30:
	.4byte 0x040000D4
_08024E34:
	.4byte gUnknown_082AF7A8
_08024E38:
	.4byte 0x06010000
_08024E3C:
	.4byte 0x84000200
_08024E40:
	.4byte gUnknown_082AF7A0
_08024E44:
	.4byte 0x84000002
_08024E48:
	.4byte 0x000001FF
_08024E4C:
	.4byte 0xFFFFFE00
_08024E50:
	.4byte 0x000003FF
_08024E54:
	.4byte 0xFFFFFC00
_08024E58:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024A04

	THUMB_FUNC_START sub_08024E5C
sub_08024E5C: @ 0x08024E5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, _08025168  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802516C  @ =0x030000F8
	mov r9, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08024F6A
	ldrb r0, [r1, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _08025170  @ =0x040000D4
	ldr r0, _08025174  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08025194  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08025198  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08024F6A:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025060
	ldrb r0, [r1, #3]
	mov r3, r8
	str r0, [r3]
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08025170  @ =0x040000D4
	ldr r0, _08025174  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08025194  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08025198  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025060:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0802515A
	ldrb r0, [r1, #3]
	mov r3, r8
	str r0, [r3]
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08025170  @ =0x040000D4
	ldr r0, _08025174  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08025194  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08025198  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802515A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08025168:
	.4byte 0x030000E8
_0802516C:
	.4byte 0x030000F8
_08025170:
	.4byte 0x040000D4
_08025174:
	.4byte gUnknown_082AF7A8
_08025178:
	.4byte 0x06010000
_0802517C:
	.4byte 0x84000200
_08025180:
	.4byte gUnknown_082AF7A0
_08025184:
	.4byte gOamBuffer
_08025188:
	.4byte 0x84000002
_0802518C:
	.4byte 0x000001FF
_08025190:
	.4byte 0xFFFFFE00
_08025194:
	.4byte 0x000003FF
_08025198:
	.4byte 0xFFFFFC00
_0802519C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024E5C

	THUMB_FUNC_START sub_080251A0
sub_080251A0: @ 0x080251A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _08025590  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _080251C2
	b _080254DC
_080251C2:
	ldrb r0, [r2, #1]
	ldr r1, _08025594  @ =0x030000F8
	mov r9, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080252C8
	ldrb r0, [r1, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080252C8:
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080253D2
	ldrb r0, [r1, #1]
	add r0, r0, #15
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080253D2:
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080254DC
	ldrb r0, [r1, #1]
	add r0, r0, #15
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080254DC:
	ldr r0, _08025590  @ =0x030000E8
	mov r9, r0
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _080254EA
	b _08025858
_080254EA:
	ldrb r0, [r1, #1]
	ldr r2, _08025594  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _080254FC
	b _08025640
_080254FC:
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255D0  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255D4  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255D8  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	b _080255DC
	.byte 0x00
	.byte 0x00
_08025590:
	.4byte 0x030000E8
_08025594:
	.4byte 0x030000F8
_08025598:
	.4byte 0x030000F4
_0802559C:
	.4byte 0x040000D4
_080255A0:
	.4byte gUnknown_082B34B4
_080255A4:
	.4byte gUnknown_082B354C
_080255A8:
	.4byte 0x06010000
_080255AC:
	.4byte 0x84000100
_080255B0:
	.4byte gUnknown_082B3544
_080255B4:
	.4byte gOamBuffer
_080255B8:
	.4byte 0x84000002
_080255BC:
	.4byte 0x000001FF
_080255C0:
	.4byte 0xFFFFFE00
_080255C4:
	.4byte 0x000003FF
_080255C8:
	.4byte 0xFFFFFC00
_080255CC:
	.4byte 0x80000200
_080255D0:
	.4byte gUnknown_082B55E4
_080255D4:
	.4byte gUnknown_082B567C
_080255D8:
	.4byte gUnknown_082B5674
_080255DC:
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025640:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08025868  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025748
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025870  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _08025874  @ =0x040000D4
	ldr r2, _08025878  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0802587C  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025880  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08025884  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025888  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802588C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025890  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08025894  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025898  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802589C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080258A0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025748:
	ldr r1, _080258A4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r2, _08025868  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025858
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025870  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _08025874  @ =0x040000D4
	ldr r2, _08025878  @ =gUnknown_082B55E4
	ldr r3, _080258A4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0802587C  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025880  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08025884  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025888  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802588C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025890  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08025894  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025898  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0802589C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080258A0  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080258A4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025858:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025868:
	.4byte 0x030000F8
_0802586C:
	.4byte 0x80000200
_08025870:
	.4byte 0x030000F4
_08025874:
	.4byte 0x040000D4
_08025878:
	.4byte gUnknown_082B55E4
_0802587C:
	.4byte gUnknown_082B567C
_08025880:
	.4byte 0x06010000
_08025884:
	.4byte 0x84000100
_08025888:
	.4byte gUnknown_082B5674
_0802588C:
	.4byte gOamBuffer
_08025890:
	.4byte 0x84000002
_08025894:
	.4byte 0x000001FF
_08025898:
	.4byte 0xFFFFFE00
_0802589C:
	.4byte 0x000003FF
_080258A0:
	.4byte 0xFFFFFC00
_080258A4:
	.4byte 0x030000E8
	THUMB_FUNC_END sub_080251A0

	THUMB_FUNC_START sub_080258A8
sub_080258A8: @ 0x080258A8
	push {r4,lr}
	sub sp, sp, #12
	ldr r2, _08025900  @ =0x030000F4
	ldr r0, [r2]
	ldrb r1, [r0, #24]
	add r1, r1, #1
	mov r4, #0
	strb r1, [r0, #24]
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #43
	bne _080258F8
	mov r0, #4
	strb r0, [r1, #23]
	ldr r3, _08025904  @ =0x03000C10
	ldr r1, _08025908  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802590C  @ =0x03000C08
	ldr r1, _08025910  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080258F8:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08025900:
	.4byte 0x030000F4
_08025904:
	.4byte 0x03000C10
_08025908:
	.4byte gUnknown_080798E8
_0802590C:
	.4byte 0x03000C08
_08025910:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080258A8

	THUMB_FUNC_START sub_08025914
sub_08025914: @ 0x08025914
	push {r4,lr}
	ldr r0, _08025934  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r4, r0, #0
	cmp r1, #2
	bhi _0802593C
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08025938
	add r0, r1, #1
	strb r0, [r2, #4]
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #6]
	b _0802593C
_08025934:
	.4byte 0x030000E8
_08025938:
	sub r0, r0, #1
	strb r0, [r2, #6]
_0802593C:
	ldr r0, _08025970  @ =0x030000F4
	ldr r1, [r0]
	ldrh r1, [r1, #40]
	add r2, r0, #0
	cmp r1, #8
	bne _0802594E
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #7]
_0802594E:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #8
	bls _08025978
	ldr r1, [r4]
	ldrb r3, [r1, #5]
	cmp r3, #2
	bhi _08025978
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08025974
	add r0, r3, #1
	strb r0, [r1, #5]
	ldr r1, [r4]
	mov r0, #1
	b _08025976
	.byte 0x00
	.byte 0x00
_08025970:
	.4byte 0x030000F4
_08025974:
	sub r0, r0, #1
_08025976:
	strb r0, [r1, #6]
_08025978:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #16
	bne _080259AE
	ldr r1, [r4]
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #6]
	ldr r1, [r2]
	mov r0, #6
	strb r0, [r1, #23]
	ldr r3, _080259B4  @ =0x03000C10
	ldr r1, _080259B8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080259BC  @ =0x03000C08
	ldr r1, _080259C0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_080259AE:
	pop {r4}
	pop {r0}
	bx r0
_080259B4:
	.4byte 0x03000C10
_080259B8:
	.4byte gUnknown_080798E8
_080259BC:
	.4byte 0x03000C08
_080259C0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025914

	THUMB_FUNC_START sub_080259C4
sub_080259C4: @ 0x080259C4
	push {r4,r5,lr}
	sub sp, sp, #8
	ldr r0, _08025A40  @ =0x030000EC
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	str r0, [sp]
	mov r0, #13
	str r0, [sp, #4]
	ldr r5, _08025A44  @ =0x030000E4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r4, _08025A48  @ =gUnknown_0886022C
	ldr r2, [r4, #68]
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
	ldr r2, _08025A4C  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #119
	bls _08025A38
	mov r4, #0
	mov r0, #7
	strb r0, [r1, #23]
	ldr r3, _08025A50  @ =0x03000C10
	ldr r1, _08025A54  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08025A58  @ =0x03000C08
	ldr r1, _08025A5C  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08025A38:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08025A40:
	.4byte 0x030000EC
_08025A44:
	.4byte 0x030000E4
_08025A48:
	.4byte gUnknown_0886022C
_08025A4C:
	.4byte 0x030000F4
_08025A50:
	.4byte 0x03000C10
_08025A54:
	.4byte gUnknown_080798E8
_08025A58:
	.4byte 0x03000C08
_08025A5C:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080259C4

	THUMB_FUNC_START sub_08025A60
sub_08025A60: @ 0x08025A60
	push {r4,r5,lr}
	sub sp, sp, #16
	mov r4, #8
	str r4, [sp, #8]
	mov r0, #4
	str r0, [sp, #12]
	ldr r0, _08025AD4  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08025AD8  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r0, _08025ADC  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #1
	strb r0, [r1, #1]
	ldr r2, _08025AE0  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #0
	beq _08025ACC
	strb r4, [r1, #23]
	ldr r3, _08025AE4  @ =0x03000C10
	ldr r1, _08025AE8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08025AEC  @ =0x03000C08
	ldr r1, _08025AF0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
	mov r0, #42
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08025ACC:
	add sp, sp, #16
	pop {r4,r5}
	pop {r0}
	bx r0
_08025AD4:
	.4byte 0x030000E4
_08025AD8:
	.4byte gUnknown_0886022C
_08025ADC:
	.4byte 0x030000F0
_08025AE0:
	.4byte 0x030000F4
_08025AE4:
	.4byte 0x03000C10
_08025AE8:
	.4byte gUnknown_080798E8
_08025AEC:
	.4byte 0x03000C08
_08025AF0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025A60

	THUMB_FUNC_START sub_08025AF4
sub_08025AF4: @ 0x08025AF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08025BB0  @ =0x030000EC
	ldr r2, [r0]
	ldrb r4, [r2]
	mov r8, r0
	cmp r4, #0
	beq _08025B0E
	b _08025C5C
_08025B0E:
	ldr r0, _08025BB4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r1, [r0, #40]
	ldrh r0, [r0]
	sub r0, r0, #6
	cmp r1, r0
	blt _08025B1E
	b _08025C5C
_08025B1E:
	ldrb r0, [r2, #3]
	str r0, [sp, #12]
	mov r0, #13
	mov r9, r0
	str r0, [sp, #16]
	ldr r6, _08025BB8  @ =0x030000E4
	ldr r0, [r6]
	mov r1, #160
	lsl r1, r1, #1
	mov r10, r1
	add r0, r0, r10
	ldr r1, [r0]
	ldr r7, _08025BBC  @ =gUnknown_0886022C
	ldr r2, [r7, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, _08025BC0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r5, #1
	and r5, r5, r1
	cmp r5, #0
	beq _08025BC4
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #159
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r2, r8
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, r9
	str r0, [sp, #16]
	ldr r0, [r6]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r7, #68]
	b _08025E2A
_08025BB0:
	.4byte 0x030000EC
_08025BB4:
	.4byte 0x030000F4
_08025BB8:
	.4byte 0x030000E4
_08025BBC:
	.4byte gUnknown_0886022C
_08025BC0:
	.4byte gUnknown_030012E8
_08025BC4:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08025C10
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08025BDC
	b _08025EA4
_08025BDC:
	str r0, [sp, #12]
	mov r1, r9
	str r1, [sp, #16]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r4, #5
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r2, r8
	ldr r0, [r2]
	strb r4, [r0, #3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r1, [r0]
	ldr r2, [r7, #68]
	b _08025E2A
_08025C10:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08025C1A
	b _08025EA4
_08025C1A:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	cmp r0, #14
	bne _08025C26
	b _08025EA4
_08025C26:
	str r0, [sp, #12]
	mov r1, r9
	str r1, [sp, #16]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r2, r8
	ldr r1, [r2]
	mov r0, #14
	strb r0, [r1, #3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r1, [r0]
	ldr r2, [r7, #68]
	b _08025E2A
_08025C5C:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08025C68
	b _08025EA4
_08025C68:
	ldrb r0, [r1, #2]
	sub r0, r0, #1
	mov r7, #0
	strb r0, [r1, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r6, [r0, #3]
	cmp r6, #5
	bne _08025D1C
	ldr r3, _08025D0C  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _08025D10  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _08025C92
	add r0, r0, #24
	strb r0, [r1, #3]
_08025C92:
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #16
	bne _08025D48
	mov r2, r8
	ldr r0, [r2]
	strb r7, [r0]
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	strb r7, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	strb r1, [r0, #1]
	ldr r0, [r3]
	strb r2, [r0, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025D14  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025D18  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	str r6, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08025DC0
	.byte 0x00
	.byte 0x00
_08025D0C:
	.4byte 0x030000E8
_08025D10:
	.4byte 0x030000F8
_08025D14:
	.4byte 0x030000E4
_08025D18:
	.4byte gUnknown_0886022C
_08025D1C:
	cmp r6, #14
	bne _08025DC0
	ldr r3, _08025D50  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _08025D54  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #160
	beq _08025D38
	add r0, r0, #24
	strb r0, [r1, #3]
_08025D38:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _08025D58
_08025D48:
	sub r0, r0, #24
	strb r0, [r1, #3]
	b _08025DC0
	.byte 0x00
	.byte 0x00
_08025D50:
	.4byte 0x030000E8
_08025D54:
	.4byte 0x030000F8
_08025D58:
	mov r2, r8
	ldr r0, [r2]
	strb r7, [r0]
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	strb r7, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	strb r1, [r0, #2]
	ldr r0, [r3]
	strb r2, [r0, #3]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025E34  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025E38  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08025DC0:
	ldr r0, _08025E3C  @ =0x030000EC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r8, r0
	cmp r1, #1
	bhi _08025E40
	ldrb r7, [r2, #2]
	cmp r7, #0
	bne _08025E40
	mov r0, #2
	strb r0, [r2, #2]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r6, _08025E34  @ =0x030000E4
	ldr r1, [r6]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025E38  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r4, #68]
_08025E2A:
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08025EA4
_08025E34:
	.4byte 0x030000E4
_08025E38:
	.4byte gUnknown_0886022C
_08025E3C:
	.4byte 0x030000EC
_08025E40:
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _08025EB4  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #2
	cmp r0, r1
	bne _08025EA4
	mov r6, #0
	mov r0, #2
	strb r0, [r2, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025EB8  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025EBC  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08025EA4:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08025EB4:
	.4byte 0x00FFFF00
_08025EB8:
	.4byte 0x030000E4
_08025EBC:
	.4byte gUnknown_0886022C
	THUMB_FUNC_END sub_08025AF4

	THUMB_FUNC_START sub_08025EC0
sub_08025EC0: @ 0x08025EC0
	push {r4,lr}
	ldr r1, _08025EE8  @ =0x030000F0
	ldr r3, [r1]
	ldrb r2, [r3, #1]
	add r4, r1, #0
	cmp r2, #0
	bne _08025F24
	ldr r0, _08025EEC  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025EE2
	cmp r0, #3
	bne _08025EF4
_08025EE2:
	ldr r1, _08025EF0  @ =0x03000C04
	mov r0, #72
	b _08025F18
_08025EE8:
	.4byte 0x030000F0
_08025EEC:
	.4byte 0x030000F4
_08025EF0:
	.4byte 0x03000C04
_08025EF4:
	cmp r0, #1
	beq _08025EFC
	cmp r0, #4
	bne _08025F08
_08025EFC:
	ldr r0, _08025F04  @ =0x03000C04
	strh r2, [r0]
	b _08025F1A
	.byte 0x00
	.byte 0x00
_08025F04:
	.4byte 0x03000C04
_08025F08:
	cmp r0, #2
	beq _08025F10
	cmp r0, #5
	bne _08025F1A
_08025F10:
	ldr r1, _08025F20  @ =0x03000C04
	mov r2, #70
	neg r2, r2
	add r0, r2, #0
_08025F18:
	strh r0, [r1]
_08025F1A:
	ldr r1, [r4]
	mov r0, #1
	b _08025F9A
_08025F20:
	.4byte 0x03000C04
_08025F24:
	cmp r2, #1
	bne _08025F6E
	ldr r0, _08025F48  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _08025F50
	ldr r1, _08025F4C  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #80
	bgt _08025F5C
	b _08025F68
	.byte 0x00
	.byte 0x00
_08025F48:
	.4byte 0x030000F4
_08025F4C:
	.4byte 0x03000C0C
_08025F50:
	ldr r1, _08025F64  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #42
	ble _08025F68
_08025F5C:
	sub r0, r2, #2
	strh r0, [r1]
	b _08025F9C
	.byte 0x00
	.byte 0x00
_08025F64:
	.4byte 0x03000C0C
_08025F68:
	mov r0, #2
	strb r0, [r3, #1]
	b _08025F9C
_08025F6E:
	cmp r2, #2
	bne _08025F9C
	ldr r2, _08025F84  @ =0x03000C0C
	ldrh r3, [r2]
	mov r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #127
	bgt _08025F88
	add r0, r3, #2
	strh r0, [r2]
	b _08025F9C
_08025F84:
	.4byte 0x03000C0C
_08025F88:
	ldr r0, _08025FA4  @ =0x030000F4
	ldr r2, [r0]
	ldrb r0, [r2, #22]
	cmp r0, #8
	bhi _08025F96
	add r0, r0, #1
	strb r0, [r2, #22]
_08025F96:
	ldr r1, [r1]
	mov r0, #0
_08025F9A:
	strb r0, [r1, #1]
_08025F9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025FA4:
	.4byte 0x030000F4
	THUMB_FUNC_END sub_08025EC0

	THUMB_FUNC_START sub_08025FA8
sub_08025FA8: @ 0x08025FA8
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_08025EC0
	bl sub_08025AF4
	ldr r0, _08025FD8  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r2, [r1]
	cmp r0, r2
	bcc _0802604C
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025FD0
	cmp r0, #3
	bne _08025FE0
_08025FD0:
	ldr r2, _08025FDC  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #0
	b _08026004
_08025FD8:
	.4byte 0x030000F4
_08025FDC:
	.4byte 0x030000F0
_08025FE0:
	cmp r0, #1
	beq _08025FE8
	cmp r0, #4
	bne _08025FF4
_08025FE8:
	ldr r2, _08025FF0  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #1
	b _08026004
_08025FF0:
	.4byte 0x030000F0
_08025FF4:
	cmp r0, #2
	beq _08025FFE
	ldr r2, _08026054  @ =0x030000F0
	cmp r0, #5
	bne _08026006
_08025FFE:
	ldr r2, _08026054  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #2
_08026004:
	strb r0, [r1, #2]
_08026006:
	ldr r0, [r2]
	mov r4, #0
	strb r4, [r0, #1]
	ldr r1, _08026058  @ =0x030000F4
	ldr r0, [r1]
	strb r4, [r0, #22]
	ldr r2, [r1]
	mov r0, #9
	strb r0, [r2, #23]
	ldr r5, _0802605C  @ =0x03000C10
	ldr r3, _08026060  @ =gUnknown_080798E8
	ldr r2, [r1]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r5]
	ldr r3, _08026064  @ =0x03000C08
	ldr r1, _08026068  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802604C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08026054:
	.4byte 0x030000F0
_08026058:
	.4byte 0x030000F4
_0802605C:
	.4byte 0x03000C10
_08026060:
	.4byte gUnknown_080798E8
_08026064:
	.4byte 0x03000C08
_08026068:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025FA8

	THUMB_FUNC_START sub_0802606C
sub_0802606C: @ 0x0802606C
	push {r4-r6,lr}
	ldr r2, _08026080  @ =0x03000C0C
	ldrh r0, [r2]
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #42
	ble _08026084
	sub r0, r0, #2
	strh r0, [r2]
	b _08026158
_08026080:
	.4byte 0x03000C0C
_08026084:
	cmp r1, #10
	ble _0802608C
	sub r0, r0, #2
	strh r0, [r2]
_0802608C:
	ldr r0, _080260AC  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	add r4, r0, #0
	cmp r1, #3
	bhi _080260B4
	ldrb r0, [r2, #11]
	cmp r0, #0
	bne _080260B0
	add r0, r1, #1
	strb r0, [r2, #9]
	ldr r1, [r4]
	mov r0, #5
	strb r0, [r1, #11]
	b _080260B4
	.byte 0x00
	.byte 0x00
_080260AC:
	.4byte 0x030000E8
_080260B0:
	sub r0, r0, #1
	strb r0, [r2, #11]
_080260B4:
	ldr r0, _08026104  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r6, r0, #0
	cmp r1, #29
	bls _08026158
	mov r5, #0
	mov r0, #10
	strb r0, [r3, #23]
	ldr r3, _08026108  @ =0x03000C10
	ldr r1, _0802610C  @ =gUnknown_080798E8
	ldr r2, [r6]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026110  @ =0x03000C08
	ldr r1, _08026114  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _08026118  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08026120
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r1, _0802611C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #1]
	b _08026152
_08026104:
	.4byte 0x030000F4
_08026108:
	.4byte 0x03000C10
_0802610C:
	.4byte gUnknown_080798E8
_08026110:
	.4byte 0x03000C08
_08026114:
	.4byte gUnknown_08079938
_08026118:
	.4byte 0x030000F0
_0802611C:
	.4byte 0x030000F8
_08026120:
	cmp r0, #2
	bne _08026140
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, _0802613C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #3]
	b _08026152
	.byte 0x00
	.byte 0x00
_0802613C:
	.4byte 0x030000F8
_08026140:
	cmp r0, #1
	bne _08026152
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, _08026160  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
_08026152:
	ldr r1, [r6]
	mov r0, #0
	strh r0, [r1, #40]
_08026158:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026160:
	.4byte 0x030000F8
	THUMB_FUNC_END sub_0802606C

	THUMB_FUNC_START sub_08026164
sub_08026164: @ 0x08026164
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #16
	ldr r1, _08026180  @ =0x03000C0C
	ldrh r2, [r1]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #127
	bgt _08026184
	add r0, r2, #2
	strh r0, [r1]
	b _080262B4
_08026180:
	.4byte 0x03000C0C
_08026184:
	ldr r0, _080261A8  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _080261B4
	ldr r3, _080261AC  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _080261B0  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026208
	sub r0, r0, #1
	b _08026206
	.byte 0x00
	.byte 0x00
_080261A8:
	.4byte 0x030000F0
_080261AC:
	.4byte 0x030000E8
_080261B0:
	.4byte 0x030000F8
_080261B4:
	cmp r0, #2
	bne _080261EC
	ldr r3, _080261E4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _080261E8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _080261D0
	add r0, r0, #1
	strb r0, [r1, #3]
_080261D0:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _0802621C
	add r0, r0, #1
	b _0802621A
_080261E4:
	.4byte 0x030000E8
_080261E8:
	.4byte 0x030000F8
_080261EC:
	cmp r0, #1
	bne _0802621C
	ldr r3, _080262C4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080262C8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026208
	add r0, r0, #1
_08026206:
	strb r0, [r1, #3]
_08026208:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _0802621C
	sub r0, r0, #1
_0802621A:
	strb r0, [r1, #3]
_0802621C:
	ldr r7, _080262CC  @ =0x030000F4
	ldr r0, [r7]
	ldrh r0, [r0, #40]
	cmp r0, #99
	bls _080262B4
	ldr r4, _080262D0  @ =0x030000EC
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	str r0, [sp, #8]
	mov r0, #13
	str r0, [sp, #12]
	ldr r0, _080262D4  @ =0x030000E4
	mov r8, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r6, _080262D8  @ =gUnknown_0886022C
	ldr r3, [r6, #68]
	mov r0, #5
	mov r9, r0
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r1, [r4]
	mov r0, #10
	strb r0, [r1, #3]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	str r0, [sp, #8]
	mov r1, r8
	ldr r0, [r1]
	mov r3, #138
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r2, [r6, #68]
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
	ldr r1, _080262C4  @ =0x030000E8
	ldr r0, [r1]
	strb r5, [r0, #9]
	ldr r0, [r1]
	mov r1, r9
	strb r1, [r0, #11]
	ldr r0, _080262DC  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #2]
	ldr r1, [r7]
	mov r0, #11
	strb r0, [r1, #23]
	ldr r3, _080262E0  @ =0x03000C10
	ldr r1, _080262E4  @ =gUnknown_080798E8
	ldr r2, [r7]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080262E8  @ =0x03000C08
	ldr r1, _080262EC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
_080262B4:
	add sp, sp, #16
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080262C4:
	.4byte 0x030000E8
_080262C8:
	.4byte 0x030000F8
_080262CC:
	.4byte 0x030000F4
_080262D0:
	.4byte 0x030000EC
_080262D4:
	.4byte 0x030000E4
_080262D8:
	.4byte gUnknown_0886022C
_080262DC:
	.4byte 0x030000F0
_080262E0:
	.4byte 0x03000C10
_080262E4:
	.4byte gUnknown_080798E8
_080262E8:
	.4byte 0x03000C08
_080262EC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026164

	THUMB_FUNC_START sub_080262F0
sub_080262F0: @ 0x080262F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	ldr r0, _080263A0  @ =0x030000EC
	ldr r2, [r0]
	ldrb r4, [r2]
	mov r8, r0
	cmp r4, #0
	bne _080263B4
	ldr r0, _080263A4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r1, [r0, #40]
	ldrh r0, [r0, #2]
	sub r0, r0, #6
	cmp r1, r0
	bge _080263B4
	ldrb r0, [r2, #3]
	str r0, [sp, #12]
	mov r7, #13
	str r7, [sp, #16]
	ldr r5, _080263A8  @ =0x030000E4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r6, _080263AC  @ =gUnknown_0886022C
	ldr r2, [r6, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, _080263B0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08026340
	b _08026550
_08026340:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #159
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r2, r8
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	str r7, [sp, #16]
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r6, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r6, #68]
	b _080264D4
_080263A0:
	.4byte 0x030000EC
_080263A4:
	.4byte 0x030000F4
_080263A8:
	.4byte 0x030000E4
_080263AC:
	.4byte gUnknown_0886022C
_080263B0:
	.4byte gUnknown_030012E8
_080263B4:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080263C0
	b _08026550
_080263C0:
	ldrb r0, [r1, #2]
	sub r0, r0, #1
	mov r6, #0
	strb r0, [r1, #2]
	ldr r3, _080263F8  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080263FC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _080263E0
	add r0, r0, #24
	strb r0, [r1, #3]
_080263E0:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026400
	sub r0, r0, #24
	strb r0, [r1, #3]
	b _0802646A
	.byte 0x00
	.byte 0x00
_080263F8:
	.4byte 0x030000E8
_080263FC:
	.4byte 0x030000F8
_08026400:
	mov r1, r8
	ldr r0, [r1]
	strb r6, [r0]
	ldr r1, [r1]
	mov r0, #2
	strb r0, [r1, #2]
	mov r2, r8
	ldr r0, [r2]
	strb r6, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #3]
	strb r1, [r0, #1]
	ldr r0, [r3]
	strb r2, [r0, #3]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _080264E0  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _080264E4  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_0802646A:
	ldr r0, _080264E8  @ =0x030000EC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r8, r0
	cmp r1, #1
	bhi _080264EC
	ldrb r7, [r2, #2]
	cmp r7, #0
	bne _080264EC
	mov r0, #2
	strb r0, [r2, #2]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r6, _080264E0  @ =0x030000E4
	ldr r1, [r6]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _080264E4  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r4, #68]
_080264D4:
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08026550
	.byte 0x00
	.byte 0x00
_080264E0:
	.4byte 0x030000E4
_080264E4:
	.4byte gUnknown_0886022C
_080264E8:
	.4byte 0x030000EC
_080264EC:
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _0802655C  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #2
	cmp r0, r1
	bne _08026550
	mov r6, #0
	mov r0, #2
	strb r0, [r2, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08026560  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08026564  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08026550:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802655C:
	.4byte 0x00FFFF00
_08026560:
	.4byte 0x030000E4
_08026564:
	.4byte gUnknown_0886022C
	THUMB_FUNC_END sub_080262F0

	THUMB_FUNC_START sub_08026568
sub_08026568: @ 0x08026568
	push {r4,lr}
	ldr r1, _08026594  @ =0x030000F0
	ldr r3, [r1]
	ldrb r0, [r3, #1]
	add r2, r1, #0
	cmp r0, #0
	bne _080265BC
	ldr r0, _08026598  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802658C
	cmp r0, #3
	bne _080265A0
_0802658C:
	ldr r1, _0802659C  @ =0x03000C04
	mov r0, #32
	b _080265B0
	.byte 0x00
	.byte 0x00
_08026594:
	.4byte 0x030000F0
_08026598:
	.4byte 0x030000F4
_0802659C:
	.4byte 0x03000C04
_080265A0:
	cmp r0, #2
	beq _080265A8
	cmp r0, #5
	bne _080265B2
_080265A8:
	ldr r1, _080265B8  @ =0x03000C04
	mov r3, #32
	neg r3, r3
	add r0, r3, #0
_080265B0:
	strh r0, [r1]
_080265B2:
	ldr r1, [r2]
	mov r0, #1
	b _08026632
_080265B8:
	.4byte 0x03000C04
_080265BC:
	cmp r0, #1
	bne _08026606
	ldr r0, _080265E0  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _080265E8
	ldr r1, _080265E4  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #80
	bgt _080265F4
	b _08026600
_080265E0:
	.4byte 0x030000F4
_080265E4:
	.4byte 0x03000C0C
_080265E8:
	ldr r1, _080265FC  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #42
	ble _08026600
_080265F4:
	sub r0, r2, #6
	strh r0, [r1]
	b _08026634
	.byte 0x00
	.byte 0x00
_080265FC:
	.4byte 0x03000C0C
_08026600:
	mov r0, #2
	strb r0, [r3, #1]
	b _08026634
_08026606:
	cmp r0, #2
	bne _08026634
	ldr r2, _0802661C  @ =0x03000C0C
	ldrh r3, [r2]
	mov r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #127
	bgt _08026620
	add r0, r3, #6
	strh r0, [r2]
	b _08026634
_0802661C:
	.4byte 0x03000C0C
_08026620:
	ldr r0, _0802663C  @ =0x030000F4
	ldr r2, [r0]
	ldrb r0, [r2, #22]
	cmp r0, #8
	bhi _0802662E
	add r0, r0, #1
	strb r0, [r2, #22]
_0802662E:
	ldr r1, [r1]
	mov r0, #0
_08026632:
	strb r0, [r1, #1]
_08026634:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802663C:
	.4byte 0x030000F4
	THUMB_FUNC_END sub_08026568

	THUMB_FUNC_START sub_08026640
sub_08026640: @ 0x08026640
	push {r4,lr}
	sub sp, sp, #12
	bl sub_08026568
	bl sub_080262F0
	ldr r0, _08026674  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r2, [r1, #2]
	cmp r0, r2
	bcc _080266CA
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802666A
	cmp r0, #3
	bne _0802667C
_0802666A:
	ldr r0, _08026678  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #0
	b _0802668A
	.byte 0x00
	.byte 0x00
_08026674:
	.4byte 0x030000F4
_08026678:
	.4byte 0x030000F0
_0802667C:
	cmp r0, #2
	beq _08026684
	cmp r0, #5
	bne _0802668C
_08026684:
	ldr r0, _080266D4  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #1
_0802668A:
	strb r0, [r1, #2]
_0802668C:
	ldr r2, _080266D8  @ =0x030000F4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #12
	strb r0, [r1, #23]
	ldr r4, _080266DC  @ =0x03000C10
	ldr r1, _080266E0  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r4, _080266E4  @ =0x03000C08
	ldr r1, _080266E8  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strh r3, [r2, #40]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080266CA:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080266D4:
	.4byte 0x030000F0
_080266D8:
	.4byte 0x030000F4
_080266DC:
	.4byte 0x03000C10
_080266E0:
	.4byte gUnknown_080798E8
_080266E4:
	.4byte 0x03000C08
_080266E8:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026640

	THUMB_FUNC_START sub_080266EC
sub_080266EC: @ 0x080266EC
	push {r4,r5,lr}
	ldr r2, _08026700  @ =0x03000C0C
	ldrh r0, [r2]
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #42
	ble _08026704
	sub r0, r0, #6
	strh r0, [r2]
	b _080267D8
_08026700:
	.4byte 0x03000C0C
_08026704:
	cmp r1, #10
	ble _0802670C
	sub r0, r0, #6
	strh r0, [r2]
_0802670C:
	ldr r0, _0802672C  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	add r4, r0, #0
	cmp r1, #3
	bhi _08026734
	ldrb r0, [r2, #11]
	cmp r0, #0
	bne _08026730
	add r0, r1, #1
	strb r0, [r2, #9]
	ldr r1, [r4]
	mov r0, #5
	strb r0, [r1, #11]
	b _08026734
	.byte 0x00
	.byte 0x00
_0802672C:
	.4byte 0x030000E8
_08026730:
	sub r0, r0, #1
	strb r0, [r2, #11]
_08026734:
	ldr r0, _08026790  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r5, r0, #0
	cmp r1, #29
	bls _080267D8
	mov r0, #13
	strb r0, [r3, #23]
	ldr r3, _08026794  @ =0x03000C10
	ldr r1, _08026798  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802679C  @ =0x03000C08
	ldr r1, _080267A0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _080267A4  @ =0x030000F0
	ldr r0, [r0]
	ldrb r3, [r0, #2]
	cmp r3, #0
	bne _080267AC
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r2, _080267A8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r3, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0, #5]
	b _080267D2
_08026790:
	.4byte 0x030000F4
_08026794:
	.4byte 0x03000C10
_08026798:
	.4byte gUnknown_080798E8
_0802679C:
	.4byte 0x03000C08
_080267A0:
	.4byte gUnknown_08079938
_080267A4:
	.4byte 0x030000F0
_080267A8:
	.4byte 0x030000F8
_080267AC:
	cmp r3, #1
	bne _080267D2
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r2, _080267E0  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r1, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r3, [r0, #5]
_080267D2:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #40]
_080267D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080267E0:
	.4byte 0x030000F8
	THUMB_FUNC_END sub_080266EC

	THUMB_FUNC_START sub_080267E4
sub_080267E4: @ 0x080267E4
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r1, _080267FC  @ =0x03000C0C
	ldrh r2, [r1]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #127
	bgt _08026800
	add r0, r2, #1
	strh r0, [r1]
	b _080268BA
	.byte 0x00
	.byte 0x00
_080267FC:
	.4byte 0x03000C0C
_08026800:
	ldr r0, _08026824  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08026830
	ldr r0, _08026828  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _0802682C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _0802684C
	sub r0, r0, #1
	b _0802684A
	.byte 0x00
	.byte 0x00
_08026824:
	.4byte 0x030000F0
_08026828:
	.4byte 0x030000E8
_0802682C:
	.4byte 0x030000F8
_08026830:
	cmp r0, #1
	bne _0802684C
	ldr r0, _080268C4  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _080268C8  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _0802684C
	add r0, r0, #1
_0802684A:
	strb r0, [r1, #3]
_0802684C:
	ldr r6, _080268CC  @ =0x030000F4
	ldr r0, [r6]
	ldrh r0, [r0, #40]
	cmp r0, #99
	bls _080268BA
	ldr r4, _080268C4  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r3, _080268C8  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r5, #0
	mov r2, #88
	strb r2, [r0, #1]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r2, [r0, #2]
	ldr r1, [r6]
	mov r0, #14
	strb r0, [r1, #23]
	ldr r3, _080268D0  @ =0x03000C10
	ldr r1, _080268D4  @ =gUnknown_080798E8
	ldr r2, [r6]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080268D8  @ =0x03000C08
	ldr r1, _080268DC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #69
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
_080268BA:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080268C4:
	.4byte 0x030000E8
_080268C8:
	.4byte 0x030000F8
_080268CC:
	.4byte 0x030000F4
_080268D0:
	.4byte 0x03000C10
_080268D4:
	.4byte gUnknown_080798E8
_080268D8:
	.4byte 0x03000C08
_080268DC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080267E4

	THUMB_FUNC_START sub_080268E0
sub_080268E0: @ 0x080268E0
	push {r4,lr}
	ldr r0, _08026908  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r3, r0, #0
	cmp r1, #0
	beq _08026910
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08026910
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0802690C
	sub r0, r1, #1
	strb r0, [r2, #5]
	ldr r1, [r3]
	mov r0, #1
	strb r0, [r1, #6]
	b _08026910
	.byte 0x00
	.byte 0x00
_08026908:
	.4byte 0x030000E8
_0802690C:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08026910:
	ldr r0, _08026940  @ =0x030000F4
	ldr r1, [r0]
	ldrh r1, [r1, #40]
	add r2, r0, #0
	cmp r1, #8
	bne _08026922
	ldr r1, [r3]
	mov r0, #0
	strb r0, [r1, #7]
_08026922:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #8
	bls _08026948
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08026944
	ldrb r0, [r1, #4]
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r1, [r3]
	mov r0, #1
	b _08026946
	.byte 0x00
	.byte 0x00
_08026940:
	.4byte 0x030000F4
_08026944:
	sub r0, r0, #1
_08026946:
	strb r0, [r1, #6]
_08026948:
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #15
	bls _08026976
	mov r4, #0
	mov r0, #15
	strb r0, [r1, #23]
	ldr r3, _0802697C  @ =0x03000C10
	ldr r1, _08026980  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026984  @ =0x03000C08
	ldr r1, _08026988  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08026976:
	pop {r4}
	pop {r0}
	bx r0
_0802697C:
	.4byte 0x03000C10
_08026980:
	.4byte gUnknown_080798E8
_08026984:
	.4byte 0x03000C08
_08026988:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080268E0

	THUMB_FUNC_START sub_0802698C
sub_0802698C: @ 0x0802698C
	push {r4,lr}
	ldr r2, _080269D0  @ =0x030000F4
	ldr r1, [r2]
	ldrb r0, [r1, #24]
	cmp r0, #0
	beq _0802699C
	sub r0, r0, #1
	strb r0, [r1, #24]
_0802699C:
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #59
	bls _080269CA
	mov r4, #0
	mov r0, #17
	strb r0, [r1, #23]
	ldr r3, _080269D4  @ =0x03000C10
	ldr r1, _080269D8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080269DC  @ =0x03000C08
	ldr r1, _080269E0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_080269CA:
	pop {r4}
	pop {r0}
	bx r0
_080269D0:
	.4byte 0x030000F4
_080269D4:
	.4byte 0x03000C10
_080269D8:
	.4byte gUnknown_080798E8
_080269DC:
	.4byte 0x03000C08
_080269E0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_0802698C

	THUMB_FUNC_START sub_080269E4
sub_080269E4: @ 0x080269E4
	push {r4-r7,lr}
	ldr r0, _08026A50  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r5, r0, #0
	cmp r1, #0
	beq _08026AD0
	mov r0, #18
	strb r0, [r3, #23]
	ldr r3, _08026A54  @ =0x03000C10
	ldr r1, _08026A58  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026A5C  @ =0x03000C08
	ldr r1, _08026A60  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026A64  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldr r2, _08026A68  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r6, r3, #0
	add r7, r2, #0
	cmp r0, #1
	bls _08026A3C
	add r0, r1, #0
	cmp r0, #4
	beq _08026A3C
	cmp r0, #5
	bne _08026A70
_08026A3C:
	ldr r3, [r6]
	ldr r2, _08026A6C  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #11]
	b _08026A84
_08026A50:
	.4byte 0x030000F4
_08026A54:
	.4byte 0x03000C10
_08026A58:
	.4byte gUnknown_080798E8
_08026A5C:
	.4byte 0x03000C08
_08026A60:
	.4byte gUnknown_08079938
_08026A64:
	.4byte 0x030000E8
_08026A68:
	.4byte 0x030000F8
_08026A6C:
	.4byte gUnknown_0811C010
_08026A70:
	cmp r0, #3
	bne _08026A84
	ldr r2, _08026AA4  @ =gUnknown_0811F5F4
	ldrb r1, [r4, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r4, #11]
_08026A84:
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	ldr r1, [r7]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08026A98
	cmp r0, #3
	bne _08026AA8
_08026A98:
	ldr r1, [r5]
	mov r0, #80
	strh r0, [r1, #36]
	strh r0, [r1, #38]
	b _08026ACA
	.byte 0x00
	.byte 0x00
_08026AA4:
	.4byte gUnknown_0811F5F4
_08026AA8:
	cmp r0, #2
	bne _08026AB2
	ldr r0, [r5]
	mov r1, #95
	b _08026AC4
_08026AB2:
	cmp r0, #4
	bne _08026ABC
	ldr r0, [r5]
	mov r1, #140
	b _08026AC4
_08026ABC:
	cmp r0, #5
	bne _08026ACA
	ldr r0, [r5]
	mov r1, #220
_08026AC4:
	strh r1, [r0, #36]
	mov r1, #50
	strh r1, [r0, #38]
_08026ACA:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #40]
_08026AD0:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080269E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026AD8
sub_08026AD8: @ 0x08026AD8
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r3, _08026B1C  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldr r2, _08026B20  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r3, #0
	add r6, r2, #0
	cmp r0, #1
	bls _08026B04
	add r0, r1, #0
	cmp r0, #4
	beq _08026B04
	cmp r0, #5
	bne _08026B2E
_08026B04:
	ldr r1, [r5]
	ldrb r2, [r1, #10]
	cmp r2, #10
	bhi _08026B60
	ldrb r0, [r1, #11]
	cmp r0, #0
	bne _08026B28
	add r0, r2, #1
	strb r0, [r1, #10]
	ldr r3, [r5]
	ldr r2, _08026B24  @ =gUnknown_0811C010
	b _08026B46
_08026B1C:
	.4byte 0x030000E8
_08026B20:
	.4byte 0x030000F8
_08026B24:
	.4byte gUnknown_0811C010
_08026B28:
	sub r0, r0, #1
	strb r0, [r1, #11]
	b _08026B60
_08026B2E:
	cmp r0, #3
	bne _08026B60
	ldrb r1, [r4, #10]
	cmp r1, #10
	bhi _08026B60
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _08026B5C
	add r0, r1, #1
	strb r0, [r4, #10]
	ldr r3, [r5]
	ldr r2, _08026B58  @ =gUnknown_0811F5F4
_08026B46:
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #11]
	b _08026B60
	.byte 0x00
	.byte 0x00
_08026B58:
	.4byte gUnknown_0811F5F4
_08026B5C:
	sub r0, r0, #1
	strb r0, [r4, #11]
_08026B60:
	ldr r0, _08026BC4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #10
	bne _08026C06
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	ldr r1, [r6]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08026B8A
	add r0, r1, #0
	cmp r0, #4
	beq _08026B8A
	cmp r0, #5
	bne _08026BD0
_08026B8A:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026BC8  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026BCC  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08026C06
	.byte 0x00
	.byte 0x00
_08026BC4:
	.4byte 0x030000F4
_08026BC8:
	.4byte 0x030000E4
_08026BCC:
	.4byte gUnknown_0886022C
_08026BD0:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026C74  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08026C78  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #80
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026C06:
	ldr r0, _08026C7C  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r1, [r1, #38]
	cmp r0, r1
	bne _08026CB6
	ldr r0, _08026C80  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026C84  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08026C36
	add r0, r1, #0
	cmp r0, #4
	beq _08026C36
	cmp r0, #5
	bne _08026C8C
_08026C36:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026C74  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026C78  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026C88  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026CB6
	mov r0, #1
	bl add_lives
	b _08026CB6
_08026C74:
	.4byte 0x030000E4
_08026C78:
	.4byte gUnknown_0886022C
_08026C7C:
	.4byte 0x030000F4
_08026C80:
	.4byte 0x030000E8
_08026C84:
	.4byte 0x030000F8
_08026C88:
	.4byte gUnknown_03000BBC
_08026C8C:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
_08026CB6:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #55
	bne _08026D12
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026CDC
	cmp r0, #4
	beq _08026CDC
	cmp r0, #5
	bne _08026D12
_08026CDC:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #150
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026D12:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #82
	bne _08026D74
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026D38
	cmp r0, #4
	beq _08026D38
	cmp r0, #5
	bne _08026D74
_08026D38:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026D74
	mov r0, #1
	bl add_lives
_08026D74:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #100
	bne _08026DCE
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08026DCE
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #154
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026DCE:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #127
	bne _08026E2E
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08026E2E
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #154
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026E2E
	mov r0, #1
	bl add_lives
_08026E2E:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #145
	bne _08026E82
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08026E82
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #156
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026E82:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #172
	bne _08026EDA
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08026EDA
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #156
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026EDA
	mov r0, #1
	bl add_lives
_08026EDA:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #190
	bne _08026F2E
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08026F2E
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08026F2E:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #207
	bne _08026F86
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08026F86
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026F86
	mov r0, #1
	bl add_lives
_08026F86:
	ldr r2, _08026FC8  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	ldrh r3, [r1, #36]
	cmp r0, r3
	bcc _08026FB8
	mov r4, #0
	mov r0, #19
	strb r0, [r1, #23]
	ldr r3, _08026FD8  @ =0x03000C10
	ldr r1, _08026FDC  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026FE0  @ =0x03000C08
	ldr r1, _08026FE4  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08026FB8:
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_08026FC0:
	.4byte 0x030000E4
_08026FC4:
	.4byte gUnknown_0886022C
_08026FC8:
	.4byte 0x030000F4
_08026FCC:
	.4byte 0x030000E8
_08026FD0:
	.4byte 0x030000F8
_08026FD4:
	.4byte gUnknown_03000BBC
_08026FD8:
	.4byte 0x03000C10
_08026FDC:
	.4byte gUnknown_080798E8
_08026FE0:
	.4byte 0x03000C08
_08026FE4:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026AD8

	THUMB_FUNC_START sub_08026FE8
sub_08026FE8: @ 0x08026FE8
	push {r4,r5,lr}
	bl sub_0801488C
	ldr r0, _08027000  @ =gUnknown_03000B80
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08027004
	mov r0, #9
	b _08027052
_08027000:
	.4byte gUnknown_03000B80
_08027004:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0802705A
	ldr r4, _08027048  @ =gUnknown_03000B90
	ldr r0, [r4, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08027050
	ldr r5, _0802704C  @ =gUnknown_080788C8
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08027050
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08027052
	.byte 0x00
	.byte 0x00
_08027048:
	.4byte gUnknown_03000B90
_0802704C:
	.4byte gUnknown_080788C8
_08027050:
	mov r0, #8
_08027052:
	mov r1, #1
	bl sub_080070E8
	b _08027062
_0802705A:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_08027062:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026FE8

	THUMB_FUNC_START bonus_swapboxes_init_callback
bonus_swapboxes_init_callback: @ 0x08027068
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r0, #0
	bl arena_restore_head
	bl sub_080720AC
	mov r0, #68
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	ldr r7, _08027110  @ =0x030000E8
	mov r0, #16
	bl arena_allocate
	str r0, [r7]
	ldr r4, _08027114  @ =0x030000EC
	mov r0, #4
	bl arena_allocate
	str r0, [r4]
	ldr r4, _08027118  @ =0x030000F0
	mov r0, #4
	bl arena_allocate
	str r0, [r4]
	ldr r5, _0802711C  @ =0x030000F4
	mov r0, #44
	bl arena_allocate
	str r0, [r5]
	ldr r4, _08027120  @ =0x030000F8
	mov r0, #24
	bl arena_allocate
	str r0, [r4]
	ldr r0, [r5]
	mov r1, #0
	strh r1, [r0, #40]
	ldr r0, _08027124  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08027128  @ =gUnknown_03001710
	strh r1, [r0]
	ldr r0, _0802712C  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r0, _08027130  @ =gUnknown_0300192C
	strh r1, [r0]
	ldr r0, _08027134  @ =gUnknown_030009DC
	ldr r6, [r0]
	ldr r0, _08027138  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #10
	bl __modsi3
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r2, r0, #0
	mov r0, #1
	and r4, r4, r0
	cmp r4, #0
	beq _08027142
	and r6, r6, r0
	cmp r6, #0
	beq _08027142
	cmp r2, #7
	beq _08027108
	cmp r5, #7
	bne _0802713C
_08027108:
	ldr r1, [r7]
	mov r0, #5
	b _08027148
	.byte 0x00
	.byte 0x00
_08027110:
	.4byte 0x030000E8
_08027114:
	.4byte 0x030000EC
_08027118:
	.4byte 0x030000F0
_0802711C:
	.4byte 0x030000F4
_08027120:
	.4byte 0x030000F8
_08027124:
	.4byte gUnknown_030012A0
_08027128:
	.4byte gUnknown_03001710
_0802712C:
	.4byte gUnknown_03001930
_08027130:
	.4byte gUnknown_0300192C
_08027134:
	.4byte gUnknown_030009DC
_08027138:
	.4byte gUnknown_03000B54
_0802713C:
	ldr r1, [r7]
	mov r0, #4
	b _08027148
_08027142:
	ldr r0, _08027168  @ =0x030000E8
	ldr r1, [r0]
	mov r0, #2
_08027148:
	strb r0, [r1, #12]
	add r0, sp, #16
	mov r1, #0
	mov r3, #3
	strb r3, [r0]
	strb r3, [r0, #1]
	add r6, r0, #0
	cmp r5, #0
	bne _0802717C
	cmp r2, #1
	beq _080271C6
	cmp r2, #3
	bne _0802716C
	mov r0, #2
	b _080272AE
	.byte 0x00
	.byte 0x00
_08027168:
	.4byte 0x030000E8
_0802716C:
	cmp r2, #5
	bne _08027174
	mov r0, #1
	b _080271FA
_08027174:
	cmp r2, #7
	bne _080271F2
	strb r3, [r6]
	b _080272D6
_0802717C:
	cmp r5, #1
	bne _080271A0
	cmp r2, #1
	bne _0802718A
	strb r1, [r6]
	strb r2, [r6, #1]
	b _08027322
_0802718A:
	cmp r2, #3
	bne _08027192
	mov r0, #2
	b _080272F4
_08027192:
	cmp r2, #5
	beq _080271C6
	cmp r2, #7
	bne _080271F2
	strb r3, [r6]
	strb r3, [r6, #1]
	b _08027322
_080271A0:
	cmp r5, #2
	bne _080271CC
	cmp r2, #1
	beq _080271D4
	cmp r2, #3
	bne _080271B0
	strb r2, [r6]
	b _08027320
_080271B0:
	cmp r2, #5
	bne _080271B8
	mov r0, #1
	b _080271FA
_080271B8:
	cmp r2, #7
	bne _080271C0
	strb r1, [r6]
	b _08027320
_080271C0:
	cmp r2, #9
	beq _080271C6
	b _08027322
_080271C6:
	strb r5, [r6]
	strb r5, [r6, #1]
	b _08027322
_080271CC:
	cmp r5, #3
	bne _08027200
	cmp r2, #1
	bne _080271DA
_080271D4:
	strb r1, [r6]
	strb r5, [r6, #1]
	b _08027322
_080271DA:
	cmp r2, #3
	bne _080271E2
	strb r2, [r6]
	b _08027302
_080271E2:
	cmp r2, #5
	bne _080271EA
	mov r0, #1
	b _080271FA
_080271EA:
	cmp r2, #7
	bne _080271F2
	strb r1, [r6]
	b _08027302
_080271F2:
	cmp r2, #9
	beq _080271F8
	b _08027322
_080271F8:
	mov r0, #2
_080271FA:
	strb r0, [r6]
	strb r5, [r6, #1]
	b _08027322
_08027200:
	cmp r5, #4
	bne _0802722A
	cmp r2, #1
	bne _0802720C
	strb r2, [r6]
	b _08027320
_0802720C:
	cmp r2, #3
	bne _08027214
	strb r2, [r6]
	b _080272D6
_08027214:
	cmp r2, #5
	bne _0802721A
	b _0802731C
_0802721A:
	cmp r2, #7
	bne _08027222
	strb r1, [r6]
	b _080272D6
_08027222:
	cmp r2, #9
	bne _08027322
	strb r3, [r6]
	b _08027320
_0802722A:
	cmp r5, #5
	bne _08027254
	cmp r2, #1
	beq _08027236
	cmp r2, #3
	bne _0802723C
_08027236:
	strb r2, [r6]
	strb r2, [r6, #1]
	b _08027322
_0802723C:
	cmp r2, #5
	bne _08027244
	mov r0, #2
	b _08027300
_08027244:
	cmp r2, #7
	bne _0802724E
	strb r1, [r6]
	strb r3, [r6, #1]
	b _08027322
_0802724E:
	cmp r2, #9
	bne _08027322
	b _080272FE
_08027254:
	cmp r5, #6
	bne _08027282
	cmp r2, #1
	bne _08027260
	strb r2, [r6]
	b _080272D6
_08027260:
	cmp r2, #3
	bne _08027268
	strb r1, [r6]
	b _08027320
_08027268:
	cmp r2, #5
	bne _08027270
	mov r0, #2
	b _080272AE
_08027270:
	cmp r2, #7
	bne _0802727A
	mov r1, #0
	mov r0, #1
	b _0802731E
_0802727A:
	cmp r2, #9
	bne _08027322
	mov r0, #3
	b _080272D4
_08027282:
	cmp r5, #7
	bne _080272B4
	cmp r2, #1
	bne _08027290
	strb r2, [r6]
	strb r3, [r6, #1]
	b _08027322
_08027290:
	cmp r2, #3
	bne _08027298
	strb r1, [r6]
	b _08027302
_08027298:
	cmp r2, #5
	bne _080272A0
	mov r0, #2
	b _0802730E
_080272A0:
	cmp r2, #7
	bne _080272A8
	mov r0, #1
	b _080272AE
_080272A8:
	cmp r2, #9
	bne _08027322
	mov r0, #3
_080272AE:
	strb r0, [r6]
	strb r0, [r6, #1]
	b _08027322
_080272B4:
	cmp r5, #8
	bne _080272E2
	cmp r2, #1
	beq _0802731C
	cmp r2, #3
	bne _080272C4
	mov r0, #0
	b _080272D4
_080272C4:
	cmp r2, #5
	bne _080272CE
	mov r1, #0
	mov r0, #3
	b _0802731E
_080272CE:
	cmp r2, #7
	bne _080272DC
	mov r0, #1
_080272D4:
	strb r0, [r6]
_080272D6:
	mov r0, #2
	strb r0, [r6, #1]
	b _08027322
_080272DC:
	cmp r2, #9
	bne _08027322
	b _0802730C
_080272E2:
	cmp r5, #9
	bne _08027322
	cmp r2, #1
	bne _080272EE
	mov r0, #2
	b _080272F4
_080272EE:
	cmp r2, #3
	bne _080272FA
	mov r0, #0
_080272F4:
	strb r0, [r6]
	strb r2, [r6, #1]
	b _08027322
_080272FA:
	cmp r2, #5
	bne _08027308
_080272FE:
	mov r0, #3
_08027300:
	strb r0, [r6]
_08027302:
	mov r0, #1
	strb r0, [r6, #1]
	b _08027322
_08027308:
	cmp r2, #7
	bne _08027316
_0802730C:
	mov r0, #1
_0802730E:
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	b _08027322
_08027316:
	cmp r2, #9
	bne _08027322
	mov r1, #0
_0802731C:
	mov r0, #2
_0802731E:
	strb r0, [r6]
_08027320:
	strb r1, [r6, #1]
_08027322:
	ldrb r5, [r6]
	cmp r5, #1
	beq _08027368
	cmp r5, #1
	bgt _08027338
	cmp r5, #0
	beq _08027348
	ldr r5, _08027334  @ =0x030000F4
	b _080273FC
_08027334:
	.4byte 0x030000F4
_08027338:
	cmp r5, #2
	beq _08027390
	cmp r5, #3
	beq _080273CC
	ldr r5, _08027344  @ =0x030000F4
	b _080273FC
_08027344:
	.4byte 0x030000F4
_08027348:
	ldr r2, _08027364  @ =0x030000F4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #184
	strh r0, [r1]
	strb r3, [r1, #4]
	ldr r1, [r2]
	mov r0, #5
	strb r0, [r1, #5]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1, #6]
	add r5, r2, #0
	b _080273FC
_08027364:
	.4byte 0x030000F4
_08027368:
	ldr r1, _0802738C  @ =0x030000F4
	ldr r2, [r1]
	mov r0, #160
	lsl r0, r0, #1
	strh r0, [r2]
	mov r0, #4
	strb r0, [r2, #4]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #5]
	ldr r0, [r1]
	mov r2, #2
	strb r2, [r0, #6]
	ldr r0, [r1]
	strb r2, [r0, #7]
	ldr r0, [r1]
	strb r5, [r0, #8]
	b _080273EA
_0802738C:
	.4byte 0x030000F4
_08027390:
	ldr r1, _080273C8  @ =0x030000F4
	ldr r2, [r1]
	mov r4, #0
	mov r0, #205
	lsl r0, r0, #1
	strh r0, [r2]
	mov r3, #1
	strb r3, [r2, #4]
	ldr r2, [r1]
	mov r0, #5
	strb r0, [r2, #5]
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #7]
	ldr r0, [r1]
	strb r3, [r0, #8]
	ldr r0, [r1]
	strb r4, [r0, #9]
	ldr r0, [r1]
	strb r5, [r0, #10]
	ldr r0, [r1]
	strb r5, [r0, #11]
	ldr r0, [r1]
	strb r5, [r0, #12]
	b _080273FA
	.byte 0x00
	.byte 0x00
_080273C8:
	.4byte 0x030000F4
_080273CC:
	ldr r1, _0802740C  @ =0x030000F4
	ldr r3, [r1]
	mov r0, #232
	strh r0, [r3]
	mov r2, #2
	strb r2, [r3, #4]
	ldr r0, [r1]
	strb r5, [r0, #5]
	ldr r3, [r1]
	mov r0, #4
	strb r0, [r3, #6]
	ldr r0, [r1]
	strb r2, [r0, #7]
	ldr r0, [r1]
	strb r2, [r0, #8]
_080273EA:
	ldr r0, [r1]
	strb r2, [r0, #9]
	ldr r0, [r1]
	strb r2, [r0, #10]
	ldr r0, [r1]
	strb r2, [r0, #11]
	ldr r0, [r1]
	strb r2, [r0, #12]
_080273FA:
	add r5, r1, #0
_080273FC:
	ldrb r4, [r6, #1]
	cmp r4, #1
	beq _0802744A
	cmp r4, #1
	bgt _08027410
	cmp r4, #0
	beq _0802741A
	b _080274D4
_0802740C:
	.4byte 0x030000F4
_08027410:
	cmp r4, #2
	beq _08027478
	cmp r4, #3
	beq _080274A6
	b _080274D4
_0802741A:
	ldr r2, [r5]
	mov r3, #0
	mov r0, #138
	strh r0, [r2, #2]
	mov r1, #3
	strb r1, [r2, #13]
	ldr r0, [r5]
	mov r2, #2
	strb r2, [r0, #14]
	ldr r0, [r5]
	strb r1, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r2, [r0, #17]
	ldr r0, [r5]
	strb r3, [r0, #18]
	ldr r0, [r5]
	strb r3, [r0, #19]
	ldr r0, [r5]
	strb r3, [r0, #20]
	ldr r0, [r5]
	strb r3, [r0, #21]
	b _080274D4
_0802744A:
	ldr r2, [r5]
	mov r1, #0
	mov r0, #80
	strh r0, [r2, #2]
	strb r1, [r2, #13]
	ldr r0, [r5]
	mov r2, #2
	strb r2, [r0, #14]
	ldr r0, [r5]
	strb r2, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r1, [r0, #17]
	ldr r0, [r5]
	strb r1, [r0, #18]
	ldr r0, [r5]
	strb r1, [r0, #19]
	ldr r0, [r5]
	strb r1, [r0, #20]
	ldr r0, [r5]
	strb r1, [r0, #21]
	b _080274D4
_08027478:
	ldr r1, [r5]
	mov r2, #0
	mov r0, #120
	strh r0, [r1, #2]
	strb r4, [r1, #13]
	ldr r0, [r5]
	mov r1, #5
	strb r1, [r0, #14]
	ldr r0, [r5]
	strb r2, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r4, [r0, #17]
	ldr r0, [r5]
	strb r4, [r0, #18]
	ldr r0, [r5]
	strb r4, [r0, #19]
	ldr r0, [r5]
	strb r4, [r0, #20]
	ldr r0, [r5]
	strb r4, [r0, #21]
	b _080274D4
_080274A6:
	ldr r1, [r5]
	mov r2, #0
	mov r0, #172
	strh r0, [r1, #2]
	strb r2, [r1, #13]
	ldr r0, [r5]
	mov r3, #5
	strb r3, [r0, #14]
	ldr r1, [r5]
	mov r0, #2
	strb r0, [r1, #15]
	ldr r0, [r5]
	strb r2, [r0, #16]
	ldr r0, [r5]
	strb r4, [r0, #17]
	ldr r0, [r5]
	strb r3, [r0, #18]
	ldr r0, [r5]
	strb r2, [r0, #19]
	ldr r0, [r5]
	strb r2, [r0, #20]
	ldr r0, [r5]
	strb r2, [r0, #21]
_080274D4:
	ldr r0, [r5]
	mov r2, #0
	strb r2, [r0, #22]
	ldr r1, _08027508  @ =0x030000E8
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2, #2]
	ldr r1, [r1]
	mov r0, #2
	strb r0, [r1, #3]
	bl sub_0804A244
	mov r1, #6
	bl __modsi3
	cmp r0, #5
	bls _080274FC
	b _08027638
_080274FC:
	lsl r0, r0, #2
	ldr r1, _0802750C  @ =0x08027510
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08027508:
	.4byte 0x030000E8
_0802750C:
	.4byte _08027510
_08027510:
	.4byte _08027528
	.4byte _08027558
	.4byte _08027590
	.4byte _080275C8
	.4byte _08027600
	.4byte _08027638
_08027528:
	ldr r4, _08027550  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r3, _08027554  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	b _0802765E
_08027550:
	.4byte 0x030000E8
_08027554:
	.4byte 0x030000F8
_08027558:
	ldr r2, _08027588  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _0802758C  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	ldrb r0, [r2, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	b _08027664
	.byte 0x00
	.byte 0x00
_08027588:
	.4byte 0x030000E8
_0802758C:
	.4byte 0x030000F8
_08027590:
	ldr r3, _080275C0  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _080275C4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r4, #12]
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	b _08027664
	.byte 0x00
	.byte 0x00
_080275C0:
	.4byte 0x030000E8
_080275C4:
	.4byte 0x030000F8
_080275C8:
	ldr r2, _080275F8  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _080275FC  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r2, [r2]
	ldrb r0, [r2, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	b _08027664
	.byte 0x00
	.byte 0x00
_080275F8:
	.4byte 0x030000E8
_080275FC:
	.4byte 0x030000F8
_08027600:
	ldr r4, _08027630  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r3, _08027634  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	b _08027664
	.byte 0x00
	.byte 0x00
_08027630:
	.4byte 0x030000E8
_08027634:
	.4byte 0x030000F8
_08027638:
	ldr r3, _080278B0  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _080278B4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r4, #12]
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
_0802765E:
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
_08027664:
	strb r1, [r0]
	ldr r0, _080278B8  @ =gUnknown_088637E8
	str r0, [sp]
	ldr r4, _080278BC  @ =gUnknown_0886022C
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl sub_08032F24
	mov r1, #128
	lsl r1, r1, #19
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _080278C0  @ =0x030000E4
	str r0, [r1]
	add r5, sp, #20
	mov r0, #160
	strh r0, [r5]
	ldr r1, _080278C4  @ =0x040000D4
	str r5, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080278C8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	mov r8, r4
	mov r1, #0
	mov r6, r8
	add r6, r6, #64
_080276B2:
	lsl r2, r1, #2
	mov r0, r8
	add r0, r0, #12
	add r0, r0, r2
	ldr r0, [r0]
	add r4, r1, #1
	cmp r0, #0
	ble _080276E2
	mov r0, #0
	strh r0, [r5]
	add r0, r6, r2
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r2, [r0]
	sub r2, r2, r1
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r5, #0
	bl CpuSet
_080276E2:
	lsl r0, r4, #24
	lsr r1, r0, #24
	cmp r1, #1
	bls _080276B2
	ldr r5, _080278CC  @ =0x030000F4
	ldr r1, [r5]
	ldr r4, _080278D0  @ =gUnknown_03001930
	ldrh r0, [r4]
	str r0, [r1, #28]
	ldr r0, _080278D4  @ =gUnknown_082EBE60
	ldr r6, _080278D8  @ =gUnknown_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0800F0C4
	ldr r1, [r5]
	str r0, [r1, #32]
	ldr r0, _080278DC  @ =gUnknown_082ECB40
	mov r3, #160
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0800F0C4
	ldr r0, [r5]
	mov r4, #0
	strb r4, [r0, #23]
	ldr r3, _080278E0  @ =0x03000C10
	ldr r1, _080278E4  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080278E8  @ =0x03000C08
	ldr r1, _080278EC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080278B0  @ =0x030000E8
	ldr r1, [r3]
	mov r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	mov r0, #20
	strb r0, [r1, #24]
	ldr r1, [r5]
	mov r0, #84
	strb r0, [r1, #25]
	ldr r1, _080278F0  @ =0x030000EC
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r4, [r0, #1]
	ldr r2, [r1]
	mov r0, #2
	strb r0, [r2, #2]
	ldr r0, [r1]
	mov r1, #5
	mov r9, r1
	mov r1, r9
	strb r1, [r0, #3]
	ldr r0, _080278F4  @ =0x03000C04
	mov r1, #0
	mov r8, r1
	strh r4, [r0]
	ldr r1, _080278F8  @ =0x03000C0C
	mov r0, #128
	strh r0, [r1]
	ldr r0, _080278FC  @ =0x030000F0
	mov r10, r0
	ldr r0, [r0]
	mov r1, r8
	strb r1, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080278B4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #16
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r6, #69
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r5, #1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #8
	strb r1, [r0, #6]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #88
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #6
	strb r1, [r0, #6]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #160
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #7
	strb r1, [r0, #6]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #9]
	ldr r0, [r3]
	mov r1, r9
	strb r1, [r0, #11]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #10]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r5, [r0, #6]
	ldr r0, [r3]
	strb r1, [r0, #7]
	ldr r0, [r3]
	strb r5, [r0, #8]
	mov r0, r10
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #2]
	mov r0, #10
	mov r1, #3
	bl copy_palettes_to_vram
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080278B0:
	.4byte 0x030000E8
_080278B4:
	.4byte 0x030000F8
_080278B8:
	.4byte gUnknown_088637E8
_080278BC:
	.4byte gUnknown_0886022C
_080278C0:
	.4byte 0x030000E4
_080278C4:
	.4byte 0x040000D4
_080278C8:
	.4byte 0x81000100
_080278CC:
	.4byte 0x030000F4
_080278D0:
	.4byte gUnknown_03001930
_080278D4:
	.4byte gUnknown_082EBE60
_080278D8:
	.4byte gUnknown_0300192C
_080278DC:
	.4byte gUnknown_082ECB40
_080278E0:
	.4byte 0x03000C10
_080278E4:
	.4byte gUnknown_080798E8
_080278E8:
	.4byte 0x03000C08
_080278EC:
	.4byte gUnknown_08079938
_080278F0:
	.4byte 0x030000EC
_080278F4:
	.4byte 0x03000C04
_080278F8:
	.4byte 0x03000C0C
_080278FC:
	.4byte 0x030000F0
	THUMB_FUNC_END bonus_swapboxes_init_callback

	THUMB_FUNC_START bonus_swapboxes_main_callback
bonus_swapboxes_main_callback: @ 0x08027900
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _0802797C  @ =gUnknown_03000BBC
	ldrb r4, [r0]
	bl sub_08029C20
	bl sub_080088C4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _08027980  @ =0x030000F4
	ldr r1, [r5]
	add r1, r1, #42
	ldr r2, _08027984  @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r1, [r5]
	lsl r4, r4, #24
	asr r4, r4, #24
	ldr r0, _08027988  @ =0x0000199A
	mul r0, r4, r0
	asr r3, r0, #16
	add r1, r1, #43
	strb r3, [r1]
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r4, r4, r0
	add r2, r2, #42
	strb r4, [r2]
	ldr r0, [r5]
	add r1, r0, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #9
	bls _08027958
	mov r0, #9
	strb r0, [r1]
_08027958:
	ldr r0, [r5]
	add r0, r0, #43
	strb r3, [r0]
	ldr r1, [r5]
	ldrh r0, [r1, #40]
	add r0, r0, #1
	strh r0, [r1, #40]
	ldr r0, _0802798C  @ =0x03000C10
	ldr r0, [r0]
	bl _call_via_r0
	bl process_input
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802797C:
	.4byte gUnknown_03000BBC
_08027980:
	.4byte 0x030000F4
_08027984:
	.4byte 0x01000001
_08027988:
	.4byte 0x0000199A
_0802798C:
	.4byte 0x03000C10
	THUMB_FUNC_END bonus_swapboxes_main_callback

	THUMB_FUNC_START bonus_swapboxes_display_callback
bonus_swapboxes_display_callback: @ 0x08027990
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	add r5, sp, #8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _08027B5C  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r2, sp
	add r2, r2, #10
	str r2, [sp, #24]
	strh r0, [r2]
	ldr r0, _08027B60  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r2, r2, #2
	str r2, [sp, #28]
	strh r0, [r2]
	mov r0, #160
	str r0, [sp, #4]
	ldr r6, _08027B64  @ =0x040000D4
	add r0, sp, #4
	str r0, [r6]
	ldr r7, _08027B68  @ =gOamBuffer
	str r7, [r6, #4]
	ldr r0, _08027B6C  @ =0x85000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, #8
	str r0, [sp, #16]
	str r1, [sp, #20]
	ldr r0, _08027B70  @ =gUnknown_082EBE58
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08027B74  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	add r0, sp, #16
	mov r8, r0
	ldrh r1, [r0]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08027B7C  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	add r1, sp, #20
	mov r12, r1
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r4, [r0]
	ldr r1, [r4, #28]
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #32
	str r0, [sp, #16]
	mov r0, #4
	str r0, [sp, #20]
	add r4, r4, #43
	ldrb r0, [r4]
	mov r1, r8
	mov r9, r12
	ldr r4, _08027B8C  @ =gUnknown_082ECB38
	cmp r0, #0
	beq _08027AB8
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r2, _08027B74  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r1, [r1]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, [r1, #32]
	add r1, r1, r0
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
_08027AB8:
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08027B74  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r12
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, [r1, #32]
	add r1, r1, r0
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, _08027B90  @ =0x03000C08
	mov r1, r12
	str r1, [sp]
	ldr r4, [r0]
	add r0, r5, #0
	ldr r1, [sp, #24]
	ldr r2, [sp, #28]
	mov r3, r8
	bl _call_via_r4
	str r7, [r6]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r6, #4]
	ldr r0, _08027B94  @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08027B5C:
	.4byte gUnknown_03001930
_08027B60:
	.4byte gUnknown_0300192C
_08027B64:
	.4byte 0x040000D4
_08027B68:
	.4byte gOamBuffer
_08027B6C:
	.4byte 0x85000100
_08027B70:
	.4byte gUnknown_082EBE58
_08027B74:
	.4byte 0x84000002
_08027B78:
	.4byte 0x000001FF
_08027B7C:
	.4byte 0xFFFFFE00
_08027B80:
	.4byte 0x030000F4
_08027B84:
	.4byte 0x000003FF
_08027B88:
	.4byte 0xFFFFFC00
_08027B8C:
	.4byte gUnknown_082ECB38
_08027B90:
	.4byte 0x03000C08
_08027B94:
	.4byte 0x80000200
	THUMB_FUNC_END bonus_swapboxes_display_callback

	THUMB_FUNC_START sub_08027B98
sub_08027B98: @ 0x08027B98
	bx lr
	THUMB_FUNC_END sub_08027B98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027B9C
sub_08027B9C: @ 0x08027B9C
	push {r4,lr}
	ldr r2, _08027BD4  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #60
	bne _08027BCE
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #23]
	ldr r3, _08027BD8  @ =0x03000C10
	ldr r1, _08027BDC  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027BE0  @ =0x03000C08
	ldr r1, _08027BE4  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027BCE:
	pop {r4}
	pop {r0}
	bx r0
_08027BD4:
	.4byte 0x030000F4
_08027BD8:
	.4byte 0x03000C10
_08027BDC:
	.4byte gUnknown_080798E8
_08027BE0:
	.4byte 0x03000C08
_08027BE4:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027B9C

	THUMB_FUNC_START sub_08027BE8
sub_08027BE8: @ 0x08027BE8
	push {r4,lr}
	ldr r2, _08027C20  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #60
	bne _08027C1A
	mov r4, #0
	mov r0, #2
	strb r0, [r1, #23]
	ldr r3, _08027C24  @ =0x03000C10
	ldr r1, _08027C28  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027C2C  @ =0x03000C08
	ldr r1, _08027C30  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027C1A:
	pop {r4}
	pop {r0}
	bx r0
_08027C20:
	.4byte 0x030000F4
_08027C24:
	.4byte 0x03000C10
_08027C28:
	.4byte gUnknown_080798E8
_08027C2C:
	.4byte 0x03000C08
_08027C30:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027BE8

	THUMB_FUNC_START sub_08027C34
sub_08027C34: @ 0x08027C34
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022890
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022340
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027C34

	THUMB_FUNC_START sub_08027C78
sub_08027C78: @ 0x08027C78
	push {lr}
	ldr r0, _08027CB8  @ =0x030000E8
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _08027CBC  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #80
	bne _08027CB4
	mov r0, #3
	strb r0, [r1, #23]
	ldr r3, _08027CC0  @ =0x03000C10
	ldr r1, _08027CC4  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027CC8  @ =0x03000C08
	ldr r1, _08027CCC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, #0
	strh r0, [r2, #40]
_08027CB4:
	pop {r0}
	bx r0
_08027CB8:
	.4byte 0x030000E8
_08027CBC:
	.4byte 0x030000F4
_08027CC0:
	.4byte 0x03000C10
_08027CC4:
	.4byte gUnknown_080798E8
_08027CC8:
	.4byte 0x03000C08
_08027CCC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027C78

	THUMB_FUNC_START sub_08027CD0
sub_08027CD0: @ 0x08027CD0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022890
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027CD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027D08
sub_08027D08: @ 0x08027D08
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027D08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027D40
sub_08027D40: @ 0x08027D40
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080251A0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027D40

	THUMB_FUNC_START sub_08027D84
sub_08027D84: @ 0x08027D84
	push {r4,lr}
	ldr r2, _08027DBC  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #52
	bne _08027DB6
	mov r4, #0
	mov r0, #6
	strb r0, [r1, #23]
	ldr r3, _08027DC0  @ =0x03000C10
	ldr r1, _08027DC4  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027DC8  @ =0x03000C08
	ldr r1, _08027DCC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027DB6:
	pop {r4}
	pop {r0}
	bx r0
_08027DBC:
	.4byte 0x030000F4
_08027DC0:
	.4byte 0x03000C10
_08027DC4:
	.4byte gUnknown_080798E8
_08027DC8:
	.4byte 0x03000C08
_08027DCC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027D84

	THUMB_FUNC_START sub_08027DD0
sub_08027DD0: @ 0x08027DD0
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DD0

	THUMB_FUNC_START sub_08027DE4
sub_08027DE4: @ 0x08027DE4
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DE4

	THUMB_FUNC_START sub_08027DF8
sub_08027DF8: @ 0x08027DF8
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DF8

	THUMB_FUNC_START sub_08027E0C
sub_08027E0C: @ 0x08027E0C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E0C

	THUMB_FUNC_START sub_08027E20
sub_08027E20: @ 0x08027E20
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024404
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E20

	THUMB_FUNC_START sub_08027E34
sub_08027E34: @ 0x08027E34
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E34

	THUMB_FUNC_START sub_08027E48
sub_08027E48: @ 0x08027E48
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E48

	THUMB_FUNC_START sub_08027E5C
sub_08027E5C: @ 0x08027E5C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024A04
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E5C

	THUMB_FUNC_START sub_08027E70
sub_08027E70: @ 0x08027E70
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E70

	THUMB_FUNC_START sub_08027E84
sub_08027E84: @ 0x08027E84
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080251A0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E84

	THUMB_FUNC_START sub_08027EC8
sub_08027EC8: @ 0x08027EC8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027EC8

	THUMB_FUNC_START sub_08027F0C
sub_08027F0C: @ 0x08027F0C
	push {r4,lr}
	ldr r2, _08027F44  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #59
	bls _08027F3E
	mov r4, #0
	mov r0, #17
	strb r0, [r1, #23]
	ldr r3, _08027F48  @ =0x03000C10
	ldr r1, _08027F4C  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027F50  @ =0x03000C08
	ldr r1, _08027F54  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027F3E:
	pop {r4}
	pop {r0}
	bx r0
_08027F44:
	.4byte 0x030000F4
_08027F48:
	.4byte 0x03000C10
_08027F4C:
	.4byte gUnknown_080798E8
_08027F50:
	.4byte 0x03000C08
_08027F54:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027F0C

	THUMB_FUNC_START sub_08027F58
sub_08027F58: @ 0x08027F58
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027F58

	THUMB_FUNC_START sub_08027F9C
sub_08027F9C: @ 0x08027F9C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027F9C

	THUMB_FUNC_START sub_08027FE0
sub_08027FE0: @ 0x08027FE0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802363C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027FE0

	THUMB_FUNC_START sub_08028024
sub_08028024: @ 0x08028024
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802363C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028024

	THUMB_FUNC_START sub_08028068
sub_08028068: @ 0x08028068
	push {r4-r7,lr}
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r1, _080280AC  @ =gUnknown_086593A0
	add r2, r2, r1
	str r2, [r0]
	mov r1, #0
	strh r1, [r0, #10]
	ldr r1, [r2, #12]
	ldrb r1, [r1, #1]
	strh r1, [r0, #8]
	ldr r5, _080280B0  @ =gUnknown_03001930
	ldrh r3, [r5]
	strh r3, [r0, #6]
	ldr r6, _080280B4  @ =gUnknown_0300192C
	ldrh r4, [r6]
	strh r4, [r0, #4]
	ldrb r0, [r0, #13]
	cmp r0, #0
	beq _080280B8
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	add r7, r0, #0
	mul r7, r1, r7
	add r0, r7, #0
	add r0, r3, r0
	strh r0, [r5]
	ldrh r0, [r2, #2]
	add r2, r0, #0
	mul r2, r1, r2
	add r0, r2, #0
	b _080280C0
	.byte 0x00
	.byte 0x00
_080280AC:
	.4byte gUnknown_086593A0
_080280B0:
	.4byte gUnknown_03001930
_080280B4:
	.4byte gUnknown_0300192C
_080280B8:
	ldrh r0, [r2, #4]
	add r0, r3, r0
	strh r0, [r5]
	ldrh r0, [r2, #2]
_080280C0:
	add r0, r4, r0
	strh r0, [r6]
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028068

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080280CC
sub_080280CC: @ 0x080280CC
	push {r4,lr}
	add r3, r0, #0
	add r2, r1, #0
	ldrb r0, [r3, #13]
	cmp r0, #0
	bne _08028120
	ldrh r0, [r3, #8]
	sub r0, r0, #1
	strh r0, [r3, #8]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _08028120
	ldr r4, [r3]
	cmp r2, #0
	bge _080280EC
	ldrh r2, [r4]
_080280EC:
	mov r0, #10
	ldrsh r1, [r3, r0]
	sub r0, r2, #1
	cmp r1, r0
	blt _08028108
	ldrh r1, [r3, #14]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802810C
	mov r0, #2
	orr r0, r0, r1
	strh r0, [r3, #14]
	b _0802810E
_08028108:
	ldrh r0, [r3, #10]
	add r0, r0, #1
_0802810C:
	strh r0, [r3, #10]
_0802810E:
	mov r0, #10
	ldrsh r1, [r3, r0]
	ldr r2, [r4, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #8]
_08028120:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080280CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028128
sub_08028128: @ 0x08028128
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r0, [r5, #13]
	cmp r0, #0
	bne _08028174
	ldr r4, _0802816C  @ =0x040000D4
	ldr r2, [r5]
	mov r0, #10
	ldrsh r1, [r5, r0]
	ldr r3, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldrh r0, [r2, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5, #4]
	ldr r1, _08028170  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _080281BA
	.byte 0x00
	.byte 0x00
_0802816C:
	.4byte 0x040000D4
_08028170:
	.4byte 0x06010000
_08028174:
	mov r4, #0
	ldr r2, [r5]
	ldrh r1, [r2]
	cmp r4, r1
	bge _080281BA
	ldr r3, _080281C0  @ =0x040000D4
	mov r6, #0
_08028182:
	ldr r0, [r2, #12]
	add r0, r6, r0
	ldrb r1, [r0]
	ldrh r0, [r2, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2, #2]
	mul r0, r4, r0
	ldr r1, _080281C4  @ =0x06010000
	add r0, r0, r1
	ldrh r1, [r5, #4]
	add r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r2, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	add r6, r6, #36
	add r4, r4, #1
	ldrh r0, [r2]
	cmp r4, r0
	blt _08028182
_080281BA:
	pop {r4-r6}
	pop {r0}
	bx r0
_080281C0:
	.4byte 0x040000D4
_080281C4:
	.4byte 0x06010000
	THUMB_FUNC_END sub_08028128

	THUMB_FUNC_START sub_080281C8
sub_080281C8: @ 0x080281C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r5, r1, #0
	mov r8, r2
	mov r12, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _08028290  @ =gOamBuffer
	add r3, r0, r1
	ldrb r0, [r4, #13]
	cmp r0, #0
	beq _080282AC
	mov r6, #0
	ldr r1, [r4]
	ldrh r2, [r1]
	cmp r6, r2
	blt _080281F8
	b _08028324
_080281F8:
	ldr r7, _08028294  @ =0x040000D4
	mov r0, #13
	neg r0, r0
	mov r9, r0
_08028200:
	ldr r0, [r1, #16]
	str r0, [r7]
	str r3, [r7, #4]
	ldr r0, _08028298  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, r8
	strb r1, [r3]
	ldr r2, _0802829C  @ =0x000001FF
	add r0, r2, #0
	add r1, r5, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080282A0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	add r1, r6, #0
	mul r1, r0, r1
	ldrh r0, [r4, #6]
	add r1, r1, r0
	ldr r2, _080282A4  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080282A8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #12]
	cmp r0, #0
	beq _08028252
	sub r0, r0, #1
	lsl r0, r0, #4
	ldrb r2, [r3, #5]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
_08028252:
	mov r0, r10
	cmp r0, #0
	beq _08028264
	ldrb r0, [r3, #1]
	mov r1, r9
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3, #1]
_08028264:
	mov r0, #3
	ldrb r1, [r4, #16]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r3, #5]
	mov r0, r9
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #5]
	add r6, r6, #1
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	add r5, r5, r0
	add r3, r3, #8
	mov r2, r12
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	cmp r6, r0
	blt _08028200
	b _08028324
_08028290:
	.4byte gOamBuffer
_08028294:
	.4byte 0x040000D4
_08028298:
	.4byte 0x84000002
_0802829C:
	.4byte 0x000001FF
_080282A0:
	.4byte 0xFFFFFE00
_080282A4:
	.4byte 0x000003FF
_080282A8:
	.4byte 0xFFFFFC00
_080282AC:
	ldr r1, _08028334  @ =0x040000D4
	ldr r0, [r4]
	ldr r0, [r0, #16]
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08028338  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, r8
	strb r1, [r3]
	ldr r2, _0802833C  @ =0x000001FF
	add r0, r2, #0
	and r5, r5, r0
	ldrh r1, [r3, #2]
	ldr r0, _08028340  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r5
	strh r0, [r3, #2]
	ldrh r0, [r4, #6]
	ldr r1, _08028344  @ =0x000003FF
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08028348  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #12]
	cmp r0, #0
	beq _080282F4
	sub r0, r0, #1
	lsl r0, r0, #4
	ldrb r2, [r3, #5]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
_080282F4:
	mov r0, r10
	cmp r0, #0
	beq _08028308
	ldrb r0, [r3, #1]
	mov r1, #13
	neg r1, r1
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3, #1]
_08028308:
	mov r0, #3
	ldrb r1, [r4, #16]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r3, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #5]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_08028324:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028334:
	.4byte 0x040000D4
_08028338:
	.4byte 0x84000002
_0802833C:
	.4byte 0x000001FF
_08028340:
	.4byte 0xFFFFFE00
_08028344:
	.4byte 0x000003FF
_08028348:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_080281C8

	THUMB_FUNC_START sub_0802834C
sub_0802834C: @ 0x0802834C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	add r7, r0, #0
	mov r8, r1
	mov r6, #0
	ldrb r0, [r7]
	cmp r6, r0
	bge _080283B0
	add r4, r7, #4
_08028364:
	ldr r1, [r4]
	mov r5, #0
	cmp r6, r8
	bne _0802836E
	mov r5, #1
_0802836E:
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080283A6
	str r2, [sp, #8]
	str r3, [sp, #12]
	cmp r5, #0
	bne _08028384
	add r1, r1, #25
_08028384:
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028470  @ =0x030000FC
	ldr r2, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
_080283A6:
	add r4, r4, #20
	add r6, r6, #1
	ldrb r1, [r7]
	cmp r6, r1
	blt _08028364
_080283B0:
	ldrb r2, [r7, #1]
	mov r9, r2
	mov r4, r8
	lsl r0, r4, #2
	add r0, r0, r8
	lsl r0, r0, #2
	add r1, r7, r0
	mov r2, #20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _080283CA
	add r4, r0, #0
	mov r9, r4
_080283CA:
	mov r6, #0
	cmp r6, r9
	bge _08028416
	add r5, sp, #16
	add r4, r7, #0
	add r4, r4, #64
	mov r6, r9
_080283D8:
	ldr r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0802840C
	str r2, [sp, #16]
	str r3, [r5, #4]
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028470  @ =0x030000FC
	ldr r2, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
_0802840C:
	add r4, r4, #20
	sub r6, r6, #1
	cmp r6, #0
	bne _080283D8
	mov r6, r9
_08028416:
	ldrb r1, [r7, #1]
	cmp r6, r1
	bge _0802845C
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, #64
	add r5, r0, r7
_08028426:
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r1, [r0]
	ldr r0, [r5]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r2, [r1]
	ldrb r0, [r5, #4]
	ldrb r1, [r5, #5]
	ldr r3, _08028470  @ =0x030000FC
	ldr r3, [r3]
	mov r4, #146
	lsl r4, r4, #4
	add r3, r3, r4
	mov r4, #5
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl sub_080065B4
	add r5, r5, #20
	add r6, r6, #1
	ldrb r0, [r7, #1]
	cmp r6, r0
	blt _08028426
_0802845C:
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802846C:
	.4byte gUnknown_08078210
_08028470:
	.4byte 0x030000FC
	THUMB_FUNC_END sub_0802834C

	THUMB_FUNC_START sub_08028474
sub_08028474: @ 0x08028474
	push {r4,lr}
	ldr r2, _08028494  @ =0x030000FC
	ldr r3, [r2]
	mov r4, #137
	lsl r4, r4, #5
	add r1, r3, r4
	str r0, [r1]
	ldr r1, _08028498  @ =0x00001128
	add r0, r3, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _0802849C
	add r4, r4, #4
	add r0, r3, r4
	b _080284A4
	.byte 0x00
	.byte 0x00
_08028494:
	.4byte 0x030000FC
_08028498:
	.4byte 0x00001128
_0802849C:
	ldr r4, _080284D4  @ =0x00001124
	add r0, r3, r4
	add r1, r1, #188
	ldr r1, [r1]
_080284A4:
	str r1, [r0]
	ldr r2, [r2]
	ldr r0, _080284D8  @ =0x00001128
	add r3, r2, r0
	mov r1, #137
	lsl r1, r1, #5
	add r0, r2, r1
	ldr r1, [r0]
	mov r0, #204
	mul r0, r1, r0
	ldr r1, _080284DC  @ =gUnknown_080799F0
	add r0, r0, r1
	str r0, [r3]
	ldr r4, _080284E0  @ =0x0000112C
	add r0, r2, r4
	mov r1, #1
	strh r1, [r0]
	ldr r0, _080284E4  @ =0x0000112E
	add r2, r2, r0
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080284D4:
	.4byte 0x00001124
_080284D8:
	.4byte 0x00001128
_080284DC:
	.4byte gUnknown_080799F0
_080284E0:
	.4byte 0x0000112C
_080284E4:
	.4byte 0x0000112E
	THUMB_FUNC_END sub_08028474

	THUMB_FUNC_START sub_080284E8
sub_080284E8: @ 0x080284E8
	push {r4-r6,lr}
	sub sp, sp, #12
	mov r5, #0
	ldr r0, _08028500  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08028504
	sub r5, r5, #1
	b _0802850E
	.byte 0x00
	.byte 0x00
_08028500:
	.4byte gUnknown_03001708
_08028504:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802850E
	mov r5, #1
_0802850E:
	ldr r0, _08028540  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08028522
	bl sub_080720AC
	bl sub_08071C24
_08028522:
	cmp r5, #0
	beq _080285EC
	ldr r1, _08028544  @ =0x030000FC
	ldr r3, [r1]
	ldr r2, _08028548  @ =0x00001124
	add r0, r3, r2
	ldr r0, [r0]
	cmp r0, #1
	beq _0802855C
	cmp r0, #1
	bgt _0802854C
	cmp r0, #0
	beq _08028552
	b _08028576
	.byte 0x00
	.byte 0x00
_08028540:
	.4byte gUnknown_030012E8
_08028544:
	.4byte 0x030000FC
_08028548:
	.4byte 0x00001124
_0802854C:
	cmp r0, #2
	beq _0802856C
	b _08028576
_08028552:
	mov r6, #2
	ldr r0, _08028558  @ =0x00001138
	b _08028574
_08028558:
	.4byte 0x00001138
_0802855C:
	mov r2, #138
	lsl r2, r2, #5
	add r0, r3, r2
	ldrh r6, [r0]
	ldr r0, _08028568  @ =0x00001130
	b _08028574
_08028568:
	.4byte 0x00001130
_0802856C:
	ldr r2, _0802858C  @ =0x0000113E
	add r0, r3, r2
	ldrh r6, [r0]
	ldr r0, _08028590  @ =0x00001132
_08028574:
	add r4, r3, r0
_08028576:
	ldrh r0, [r4]
	add r0, r0, r5
	strh r0, [r4]
	lsl r0, r0, #16
	asr r3, r0, #16
	cmp r3, #0
	bge _08028594
	lsl r0, r6, #16
	asr r0, r0, #16
	sub r0, r0, #1
	b _0802859E
_0802858C:
	.4byte 0x0000113E
_08028590:
	.4byte 0x00001132
_08028594:
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r3, r0
	blt _080285A0
	mov r0, #0
_0802859E:
	strh r0, [r4]
_080285A0:
	ldr r2, [r1]
	ldr r1, _080285F4  @ =0x0000112E
	add r0, r2, r1
	mov r5, #0
	mov r1, #1
	strh r1, [r0]
	ldr r3, _080285F8  @ =0x0000112C
	add r0, r2, r3
	strh r1, [r0]
	ldr r4, _080285FC  @ =gUnknown_080788FC
	ldr r3, [r4]
	ldr r0, _08028600  @ =0x00001138
	add r2, r2, r0
	ldrb r0, [r2]
	and r1, r1, r0
	lsl r1, r1, #5
	ldrb r2, [r3]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r4]
	ldr r0, [r0]
	lsl r0, r0, #26
	lsr r0, r0, #31
	bl sub_0807220C
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080285EC:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
_080285F4:
	.4byte 0x0000112E
_080285F8:
	.4byte 0x0000112C
_080285FC:
	.4byte gUnknown_080788FC
_08028600:
	.4byte 0x00001138
	THUMB_FUNC_END sub_080284E8

	THUMB_FUNC_START sub_08028604
sub_08028604: @ 0x08028604
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #24
	ldr r1, _08028724  @ =gUnknown_08079D20
	ldr r0, _08028728  @ =0x030000FC
	ldr r2, [r0]
	ldr r3, _0802872C  @ =0x00001138
	add r0, r2, r3
	mov r4, #0
	ldrsh r0, [r0, r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r3, #0
	ldr r4, _08028730  @ =0x00001124
	add r0, r2, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0802862E
	mov r3, #1
_0802862E:
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028662
	mov r0, #18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	cmp r3, #0
	bne _08028644
	add r1, r1, #25
_08028644:
	ldr r0, _08028734  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	mov r4, #146
	lsl r4, r4, #4
	add r2, r2, r4
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
_08028662:
	ldr r0, _08028728  @ =0x030000FC
	ldr r0, [r0]
	ldr r1, _08028738  @ =0x00001130
	add r0, r0, r1
	mov r1, #23
	mov r2, #9
	mov r3, #0
	ldrsh r4, [r0, r3]
	mov r0, #5
	mov r8, r0
	str r1, [sp, #8]
	add r0, sp, #8
	str r2, [r0, #4]
	add r7, r0, #0
	add r6, sp, #16
_08028680:
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, r8
	ldr r1, _08028734  @ =gUnknown_08078210
	ldr r1, [r1]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1]
	ldr r0, [sp, #8]
	sub r0, r0, r2
	str r0, [sp, #8]
	ldr r5, _08028728  @ =0x030000FC
	ldr r2, [r5]
	mov r3, #144
	lsl r3, r3, #1
	add r2, r2, r3
	add r0, r7, #0
	mov r3, #5
	bl sub_080064D4
	add r0, r4, #0
	mov r1, #10
	bl __divsi3
	add r4, r0, #0
	cmp r4, #0
	bgt _08028680
	ldr r0, [r5]
	ldr r4, _0802873C  @ =0x00001132
	add r0, r0, r4
	mov r1, #23
	mov r2, #13
	mov r3, #0
	ldrsh r4, [r0, r3]
	mov r5, #5
	str r1, [sp, #16]
	str r2, [r6, #4]
_080286D6:
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r0, r5, r0
	ldr r1, _08028734  @ =gUnknown_08078210
	ldr r1, [r1]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1]
	ldr r0, [sp, #16]
	sub r0, r0, r2
	str r0, [sp, #16]
	ldr r0, _08028728  @ =0x030000FC
	ldr r2, [r0]
	mov r3, #144
	lsl r3, r3, #1
	add r2, r2, r3
	add r0, r6, #0
	mov r3, #5
	bl sub_080064D4
	add r0, r4, #0
	mov r1, #10
	bl __divsi3
	add r4, r0, #0
	cmp r4, #0
	bgt _080286D6
	add sp, sp, #24
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028724:
	.4byte gUnknown_08079D20
_08028728:
	.4byte 0x030000FC
_0802872C:
	.4byte 0x00001138
_08028730:
	.4byte 0x00001124
_08028734:
	.4byte gUnknown_08078210
_08028738:
	.4byte 0x00001130
_0802873C:
	.4byte 0x00001132
	THUMB_FUNC_END sub_08028604

	THUMB_FUNC_START sub_08028740
sub_08028740: @ 0x08028740
	push {r4-r6,lr}
	sub sp, sp, #12
	mov r4, #0
	ldr r0, _08028758  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802875C
	sub r4, r4, #1
	b _0802876A
	.byte 0x00
	.byte 0x00
_08028758:
	.4byte gUnknown_03001708
_0802875C:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08028766
	mov r4, #1
_08028766:
	cmp r4, #0
	beq _0802880A
_0802876A:
	ldr r1, _08028780  @ =0x030000FC
	ldr r2, [r1]
	ldr r6, _08028784  @ =0x00001124
	add r0, r2, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08028788
	cmp r0, #1
	beq _08028794
	b _0802879E
	.byte 0x00
	.byte 0x00
_08028780:
	.4byte 0x030000FC
_08028784:
	.4byte 0x00001124
_08028788:
	mov r5, #2
	ldr r0, _08028790  @ =0x00001136
	add r3, r2, r0
	b _0802879E
_08028790:
	.4byte 0x00001136
_08028794:
	ldr r3, _080287B4  @ =0x0000113A
	add r0, r2, r3
	ldrh r5, [r0]
	ldr r6, _080287B8  @ =0x00001134
	add r3, r2, r6
_0802879E:
	ldrh r0, [r3]
	add r0, r0, r4
	strh r0, [r3]
	lsl r0, r0, #16
	asr r2, r0, #16
	cmp r2, #0
	bge _080287BC
	lsl r0, r5, #16
	asr r0, r0, #16
	sub r0, r0, #1
	b _080287C6
_080287B4:
	.4byte 0x0000113A
_080287B8:
	.4byte 0x00001134
_080287BC:
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r2, r0
	blt _080287C8
	mov r0, #0
_080287C6:
	strh r0, [r3]
_080287C8:
	ldr r1, [r1]
	ldr r2, _08028814  @ =0x0000112E
	add r0, r1, r2
	mov r4, #0
	mov r2, #1
	strh r2, [r0]
	ldr r3, _08028818  @ =0x0000112C
	add r0, r1, r3
	strh r2, [r0]
	ldr r0, _0802881C  @ =gUnknown_080788FC
	ldr r3, [r0]
	ldr r6, _08028820  @ =0x00001136
	add r1, r1, r6
	ldrb r0, [r1]
	mov r1, #3
	and r1, r1, r0
	lsl r1, r1, #3
	ldrb r2, [r3]
	mov r0, #25
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802880A:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028814:
	.4byte 0x0000112E
_08028818:
	.4byte 0x0000112C
_0802881C:
	.4byte gUnknown_080788FC
_08028820:
	.4byte 0x00001136
	THUMB_FUNC_END sub_08028740

	THUMB_FUNC_START sub_08028824
sub_08028824: @ 0x08028824
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	mov r9, r0
	ldr r1, _08028940  @ =gUnknown_08079D28
	ldr r0, _08028944  @ =0x030000FC
	ldr r2, [r0]
	ldr r3, _08028948  @ =0x00001136
	add r0, r2, r3
	mov r4, #0
	ldrsh r0, [r0, r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r3, #0
	ldr r5, _0802894C  @ =0x00001124
	add r0, r2, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08028852
	mov r3, #1
_08028852:
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028886
	mov r0, #12
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	cmp r3, #0
	bne _08028868
	add r1, r1, #25
_08028868:
	ldr r0, _08028950  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	mov r4, #146
	lsl r4, r4, #4
	add r2, r2, r4
	add r0, sp, #4
	mov r3, #5
	bl sub_080064D4
_08028886:
	ldr r1, _08028944  @ =0x030000FC
	ldr r0, [r1]
	ldr r5, _08028954  @ =0x0000113A
	add r0, r0, r5
	mov r2, #0
	ldrsh r4, [r0, r2]
	lsl r0, r4, #1
	add r6, r0, #0
	add r6, r6, #10
	cmp r4, #7
	bgt _080288E6
	mov r8, r1
	mov r7, #9
_080288A0:
	mov r5, #0
	mov r3, r8
	ldr r2, [r3]
	ldr r1, _0802894C  @ =0x00001124
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080288B2
	mov r5, #1
_080288B2:
	mov r1, #24
	str r6, [sp, #12]
	add r3, sp, #12
	str r7, [r3, #4]
	cmp r5, #0
	bne _080288C0
	mov r1, #49
_080288C0:
	ldr r0, _08028950  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r5, #132
	lsl r5, r5, #1
	add r0, r0, r5
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, r3, #0
	mov r3, #5
	bl sub_080064D4
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #7
	ble _080288A0
_080288E6:
	ldr r4, _08028944  @ =0x030000FC
	ldr r2, [r4]
	ldr r1, _0802894C  @ =0x00001124
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08028910
	ldr r3, _08028958  @ =0x00001134
	add r0, r2, r3
	mov r5, #0
	ldrsh r1, [r0, r5]
	lsl r1, r1, #4
	add r0, r2, #0
	add r0, r0, #60
	add r1, r1, #72
	mov r2, #0
	str r2, [sp]
	mov r2, #64
	mov r3, r9
	bl sub_080281C8
_08028910:
	ldr r0, [r4]
	ldr r2, _08028958  @ =0x00001134
	add r1, r0, r2
	mov r3, #0
	ldrsh r2, [r1, r3]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, #100
	add r0, r0, r1
	mov r1, #0
	str r1, [sp]
	mov r1, #88
	mov r2, #96
	mov r3, r9
	bl sub_080281C8
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08028940:
	.4byte gUnknown_08079D28
_08028944:
	.4byte 0x030000FC
_08028948:
	.4byte 0x00001136
_0802894C:
	.4byte 0x00001124
_08028950:
	.4byte gUnknown_08078210
_08028954:
	.4byte 0x0000113A
_08028958:
	.4byte 0x00001134
	THUMB_FUNC_END sub_08028824

	THUMB_FUNC_START option_menu_init_callback
option_menu_init_callback: @ 0x0802895C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #0
	bl arena_restore_head
	ldr r0, _080289D0  @ =gUnknown_030012A0
	mov r5, #0
	strh r5, [r0]
	ldr r0, _080289D4  @ =gUnknown_03001710
	strh r5, [r0]
	ldr r4, _080289D8  @ =gUnknown_088754F8
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	add r0, r4, #0
	bl sub_08032EB8
	mov r2, #128
	lsl r2, r2, #19
	mov r3, #192
	lsl r3, r3, #2
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_08006968
	ldr r4, _080289DC  @ =0x030000FC
	ldr r0, _080289E0  @ =0x00001150
	bl arena_allocate
	add r1, r0, #0
	str r1, [r4]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _080289E4  @ =0x010008A8
	bl CpuSet
	ldr r0, _080289E8  @ =gUnknown_030009C8
	ldr r0, [r0]
	cmp r0, #30
	bne _080289F4
	ldr r1, [r4]
	mov r5, #137
	lsl r5, r5, #5
	add r2, r1, r5
	mov r0, #2
	str r0, [r2]
	ldr r0, _080289EC  @ =0x03000100
	ldrh r0, [r0]
	ldr r2, _080289F0  @ =0x00001134
	add r1, r1, r2
	strh r0, [r1]
	b _080289F8
_080289D0:
	.4byte gUnknown_030012A0
_080289D4:
	.4byte gUnknown_03001710
_080289D8:
	.4byte gUnknown_088754F8
_080289DC:
	.4byte 0x030000FC
_080289E0:
	.4byte 0x00001150
_080289E4:
	.4byte 0x010008A8
_080289E8:
	.4byte gUnknown_030009C8
_080289EC:
	.4byte 0x03000100
_080289F0:
	.4byte 0x00001134
_080289F4:
	ldr r0, _08028BAC  @ =0x03000100
	strh r5, [r0]
_080289F8:
	ldr r4, _08028BB0  @ =0x030000FC
	ldr r0, [r4]
	mov r3, #137
	lsl r3, r3, #5
	add r0, r0, r3
	ldr r0, [r0]
	bl sub_08028474
	ldr r0, _08028BB4  @ =gUnknown_030009C8
	ldr r0, [r0]
	cmp r0, #30
	bne _08028A1A
	ldr r0, [r4]
	ldr r5, _08028BB8  @ =0x00001124
	add r0, r0, r5
	mov r1, #1
	str r1, [r0]
_08028A1A:
	ldr r3, [r4]
	mov r0, #140
	lsl r0, r0, #1
	add r1, r3, r0
	ldr r2, _08028BBC  @ =gUnknown_088754F8
	ldr r0, [r2, #64]
	str r0, [r1]
	mov r5, #142
	lsl r5, r5, #1
	add r1, r3, r5
	ldr r0, [r2, #68]
	str r0, [r1]
	ldr r0, _08028BC0  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08028BC4  @ =gUnknown_03001930
	strh r1, [r0]
	mov r5, #0
	mov r0, #2
	add r0, sp, r0
	mov r8, r0
	add r6, r4, #0
	mov r4, #0
_08028A48:
	lsl r2, r5, #2
	ldr r0, [r6]
	add r0, r0, r4
	ldr r1, _08028BC8  @ =gUnknown_08079998
	add r2, r2, r1
	ldr r1, [r2]
	bl sub_08028068
	add r4, r4, #20
	add r5, r5, #1
	cmp r5, #13
	ble _08028A48
	ldr r7, _08028BB0  @ =0x030000FC
	ldr r0, [r7]
	add r0, r0, #92
	mov r4, #0
	mov r1, #14
	strb r1, [r0]
	ldr r2, [r7]
	ldr r0, _08028BCC  @ =gUnknown_080788FC
	ldr r3, [r0]
	ldr r0, [r3]
	lsl r0, r0, #27
	lsr r0, r0, #30
	ldr r5, _08028BD0  @ =0x00001136
	add r1, r2, r5
	strh r0, [r1]
	ldr r0, [r3]
	lsl r0, r0, #26
	lsr r0, r0, #31
	ldr r1, _08028BD4  @ =0x00001138
	add r2, r2, r1
	strh r0, [r2]
	mov r0, #3
	mov r1, #3
	bl copy_palettes_to_vram
	ldr r6, _08028BD8  @ =gUnknown_08B3A4DC
	ldrh r0, [r6]
	lsl r0, r0, #1
	bl arena_allocate
	ldr r1, [r7]
	ldr r3, _08028BDC  @ =0x00001144
	add r2, r1, r3
	str r0, [r2]
	add r5, r5, #8
	add r1, r1, r5
	strh r4, [r1]
	mov r5, #0
	ldrh r0, [r6]
	cmp r5, r0
	bge _08028ADE
	ldr r4, _08028BE0  @ =gUnknown_08B3A4E0
_08028AB4:
	ldrb r0, [r4, #19]
	cmp r0, #0
	bne _08028AD4
	ldr r2, [r7]
	ldr r1, _08028BE4  @ =0x0000113E
	add r3, r2, r1
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	lsl r0, r0, #16
	ldr r3, _08028BDC  @ =0x00001144
	add r2, r2, r3
	ldr r1, [r2]
	asr r0, r0, #15
	add r0, r0, r1
	strh r5, [r0]
_08028AD4:
	add r4, r4, #28
	add r5, r5, #1
	ldrh r0, [r6]
	cmp r5, r0
	blt _08028AB4
_08028ADE:
	ldr r4, _08028BE8  @ =gUnknown_08D7B10C
	ldrh r0, [r4]
	lsl r0, r0, #1
	bl arena_allocate
	ldr r3, _08028BB0  @ =0x030000FC
	ldr r1, [r3]
	ldr r5, _08028BEC  @ =0x00001148
	add r2, r1, r5
	str r0, [r2]
	mov r0, #138
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	ldrh r1, [r4]
	cmp r5, r1
	bge _08028B36
	add r7, r3, #0
	add r6, r4, #0
	ldr r4, _08028BF0  @ =gUnknown_08D7B110
_08028B0A:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08028B2C
	ldr r2, [r7]
	mov r0, #138
	lsl r0, r0, #5
	add r3, r2, r0
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	lsl r0, r0, #16
	ldr r1, _08028BEC  @ =0x00001148
	add r2, r2, r1
	ldr r1, [r2]
	asr r0, r0, #15
	add r0, r0, r1
	strh r5, [r0]
_08028B2C:
	add r4, r4, #12
	add r5, r5, #1
	ldrh r2, [r6]
	cmp r5, r2
	blt _08028B0A
_08028B36:
	bl sub_08071FE4
	cmp r0, #10
	beq _08028B48
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08028B48:
	mov r5, #7
_08028B4A:
	ldr r1, _08028BF4  @ =gUnknown_080799D0
	lsl r0, r5, #2
	add r4, r0, r1
	ldr r1, [r4]
	mov r0, #0
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	ldr r1, [r4]
	mov r0, #1
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	ldr r1, [r4]
	mov r0, #2
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	sub r5, r5, #1
	cmp r5, #0
	bgt _08028B4A
_08028B7A:
	ldr r0, _08028BB0  @ =0x030000FC
	ldr r1, [r0]
	add r2, r5, #1
	ldr r3, _08028BF8  @ =0x0000113A
	add r0, r1, r3
	mov r3, #0
	strh r2, [r0]
	ldr r5, _08028BFC  @ =0x0000114C
	add r1, r1, r5
	ldr r0, _08028BCC  @ =gUnknown_080788FC
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	strh r3, [r0]
	ldr r1, _08028C00  @ =gUnknown_03001730
	ldr r2, _08028C04  @ =0x01000008
	bl CpuSet
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028BAC:
	.4byte 0x03000100
_08028BB0:
	.4byte 0x030000FC
_08028BB4:
	.4byte gUnknown_030009C8
_08028BB8:
	.4byte 0x00001124
_08028BBC:
	.4byte gUnknown_088754F8
_08028BC0:
	.4byte gUnknown_0300192C
_08028BC4:
	.4byte gUnknown_03001930
_08028BC8:
	.4byte gUnknown_08079998
_08028BCC:
	.4byte gUnknown_080788FC
_08028BD0:
	.4byte 0x00001136
_08028BD4:
	.4byte 0x00001138
_08028BD8:
	.4byte gUnknown_08B3A4DC
_08028BDC:
	.4byte 0x00001144
_08028BE0:
	.4byte gUnknown_08B3A4E0
_08028BE4:
	.4byte 0x0000113E
_08028BE8:
	.4byte gUnknown_08D7B10C
_08028BEC:
	.4byte 0x00001148
_08028BF0:
	.4byte gUnknown_08D7B110
_08028BF4:
	.4byte gUnknown_080799D0
_08028BF8:
	.4byte 0x0000113A
_08028BFC:
	.4byte 0x0000114C
_08028C00:
	.4byte gUnknown_03001730
_08028C04:
	.4byte 0x01000008
	THUMB_FUNC_END option_menu_init_callback

	THUMB_FUNC_START option_menu_main_callback
option_menu_main_callback: @ 0x08028C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	mov r0, #178
	mov r9, r0
	mov r5, #64
	mov r1, #128
	mov r8, r1
	bl process_input
	ldr r2, _08028C78  @ =0x030000FC
	ldr r1, [r2]
	ldr r0, _08028C7C  @ =0x00001128
	mov r10, r0
	add r4, r1, r0
	ldr r6, [r4]
	add r0, r6, #0
	add r0, r0, #192
	ldr r0, [r0]
	mov r2, #1
	mov r12, r2
	and r0, r0, r2
	cmp r0, #0
	beq _08028C48
	mov r5, #32
	mov r0, #16
	mov r8, r0
	mov r2, #23
	mov r9, r2
_08028C48:
	ldr r0, _08028C80  @ =0x00001124
	add r2, r1, r0
	ldr r7, [r2]
	ldr r0, _08028C84  @ =gUnknown_030012E8
	ldrh r1, [r0]
	add r0, r1, #0
	and r5, r5, r0
	cmp r5, #0
	beq _08028C8E
	sub r0, r7, #1
	str r0, [r2]
	cmp r0, #0
	bge _08028CB8
	ldr r3, [r4]
	add r0, r3, #0
	add r0, r0, #192
	ldr r0, [r0]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08028C88
	mov r0, #0
	b _08028CB2
	.byte 0x00
	.byte 0x00
_08028C78:
	.4byte 0x030000FC
_08028C7C:
	.4byte 0x00001128
_08028C80:
	.4byte 0x00001124
_08028C84:
	.4byte gUnknown_030012E8
_08028C88:
	ldrb r0, [r3]
	sub r0, r0, #1
	b _08028CB2
_08028C8E:
	mov r3, r8
	and r3, r3, r0
	cmp r3, #0
	beq _08028CF4
	add r0, r7, #1
	str r0, [r2]
	ldr r1, [r4]
	ldrb r3, [r1]
	cmp r0, r3
	blt _08028CB8
	add r0, r1, #0
	add r0, r0, #192
	ldr r1, [r0]
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08028CB6
	sub r0, r3, #1
_08028CB2:
	str r0, [r2]
	b _08028CB8
_08028CB6:
	str r1, [r2]
_08028CB8:
	ldr r0, _08028CE8  @ =0x030000FC
	ldr r1, [r0]
	ldr r0, _08028CEC  @ =0x0000112E
	add r2, r1, r0
	mov r3, #0
	mov r0, #1
	strh r0, [r2]
	ldr r2, _08028CF0  @ =0x00001124
	add r1, r1, r2
	ldr r0, [r1]
	cmp r0, r7
	beq _08028D92
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, r9
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _08028D92
	.byte 0x00
	.byte 0x00
_08028CE8:
	.4byte 0x030000FC
_08028CEC:
	.4byte 0x0000112E
_08028CF0:
	.4byte 0x00001124
_08028CF4:
	mov r0, r12
	and r0, r0, r1
	cmp r0, #0
	beq _08028D36
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #2
	add r0, r0, #4
	add r4, r6, r0
	ldr r1, [r4, #8]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028D2A
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, [r4, #8]
	bl sub_08028474
_08028D2A:
	ldr r0, [r4, #12]
	cmp r0, #0
	beq _08028D92
	bl _call_via_r0
	b _08028D92
_08028D36:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08028D92
	add r0, r6, #0
	add r0, r0, #184
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08028D56
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
	b _08028D7C
_08028D56:
	bl sub_08071C24
	ldr r1, _08028E2C  @ =0x030000FC
	ldr r0, [r1]
	add r0, r0, r10
	ldr r0, [r0]
	add r0, r0, #184
	ldr r0, [r0]
	bl sub_08028474
	bl sub_08071FE4
	cmp r0, #10
	beq _08028D7C
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08028D7C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_08028D92:
	ldr r6, _08028E2C  @ =0x030000FC
	mov r5, #0
	mov r4, #13
_08028D98:
	ldr r0, [r6]
	add r0, r0, r5
	mov r1, #1
	neg r1, r1
	bl sub_080280CC
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _08028D98
	ldr r5, _08028E2C  @ =0x030000FC
	ldr r0, [r5]
	ldr r2, _08028E30  @ =0x00001128
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #196
	ldr r0, [r0]
	cmp r0, #0
	beq _08028DC2
	bl _call_via_r0
_08028DC2:
	ldr r1, [r5]
	ldr r0, _08028E34  @ =0x0000113C
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #80
	mov r6, #0
	strh r0, [r1]
	ldr r1, _08028E38  @ =gUnknown_03001730
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	bl sub_0801B310
	ldr r1, [r5]
	ldr r2, _08028E3C  @ =0x0000112C
	add r0, r1, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08028E1A
	add r0, sp, #12
	strh r6, [r0]
	mov r0, #144
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r4, _08028E40  @ =0x01000400
	add r0, sp, #12
	add r2, r4, #0
	bl CpuSet
	mov r0, sp
	add r0, r0, #14
	strh r6, [r0]
	ldr r1, [r5]
	mov r2, #146
	lsl r2, r2, #4
	add r1, r1, r2
	add r2, r4, #0
	bl CpuSet
	ldr r0, [r5]
	ldr r1, _08028E3C  @ =0x0000112C
	add r0, r0, r1
	strh r6, [r0]
_08028E1A:
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
_08028E2C:
	.4byte 0x030000FC
_08028E30:
	.4byte 0x00001128
_08028E34:
	.4byte 0x0000113C
_08028E38:
	.4byte gUnknown_03001730
_08028E3C:
	.4byte 0x0000112C
_08028E40:
	.4byte 0x01000400
	THUMB_FUNC_END option_menu_main_callback

	THUMB_FUNC_START option_menu_display_callback
option_menu_display_callback: @ 0x08028E44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	ldr r6, _08028FE0  @ =0x030000FC
	ldr r2, [r6]
	ldr r0, _08028FE4  @ =0x00001128
	add r3, r2, r0
	ldr r1, _08028FE8  @ =0x00001124
	add r0, r2, r1
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r1, [r3]
	add r1, r1, r0
	mov r8, r1
	ldr r1, [r1]
	mov r0, #1
	neg r0, r0
	add r5, r2, #0
	cmp r1, r0
	bne _08028E80
	add r5, r5, #80
_08028E80:
	bl sub_08029C20
	cmp r0, #0
	bne _08028E9E
	ldr r0, [r5]
	mov r2, #10
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
_08028E9E:
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _08028FEC  @ =0x040000D4
	add r3, sp, #4
	str r3, [r1]
	ldr r0, _08028FF0  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _08028FF4  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r7, r6, #0
	mov r6, #0
	mov r5, #13
_08028EB8:
	ldr r0, [r7]
	add r0, r0, r6
	bl sub_08028128
	add r6, r6, #20
	sub r5, r5, #1
	cmp r5, #0
	bge _08028EB8
	ldr r5, _08028FE0  @ =0x030000FC
	ldr r1, [r5]
	ldr r6, _08028FF8  @ =0x0000112E
	add r0, r1, r6
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08028EE8
	ldr r3, _08028FE4  @ =0x00001128
	add r0, r1, r3
	ldr r0, [r0]
	ldr r2, _08028FE8  @ =0x00001124
	add r1, r1, r2
	ldr r1, [r1]
	bl sub_0802834C
_08028EE8:
	ldr r0, [r5]
	ldr r3, _08028FE4  @ =0x00001128
	add r0, r0, r3
	ldr r0, [r0]
	add r0, r0, #200
	ldr r1, [r0]
	cmp r1, #0
	beq _08028EFE
	add r0, sp, #8
	bl _call_via_r1
_08028EFE:
	ldr r3, [r5]
	add r1, r3, r6
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r10, r5
	cmp r0, #0
	beq _08028F6A
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	ldr r2, _08028FEC  @ =0x040000D4
	add r7, r3, #0
	mov r3, #140
	lsl r3, r3, #1
	add r0, r7, r3
	mov r1, #128
	lsl r1, r1, #3
	mov r12, r1
	ldr r3, _08028FFC  @ =0x80000400
	mov r9, r3
	ldr r4, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r7, r1
	ldr r6, [r0]
	mov r0, #144
	lsl r0, r0, #1
	add r3, r7, r0
_08028F36:
	lsl r0, r5, #1
	str r3, [r2]
	str r4, [r2, #4]
	mov r1, r9
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	mov r1, #146
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, r7, r0
	str r0, [r2]
	str r6, [r2, #4]
	mov r0, r9
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #4
	add r4, r4, r1
	mov r1, r12
	lsl r0, r1, #1
	add r6, r6, r0
	add r3, r3, r0
	add r5, r5, r12
	ldr r0, _08029000  @ =0x000003FF
	cmp r5, r0
	ble _08028F36
_08028F6A:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	blt _08029004
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #5]
	mov r3, r8
	ldrb r2, [r3, #6]
	lsl r6, r0, #3
	lsl r7, r1, #3
	lsl r4, r2, #3
	mov r1, r10
	ldr r0, [r1]
	mov r5, #1
	str r5, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	mov r2, r10
	ldr r0, [r2]
	ldr r1, [r0, #20]
	ldrb r1, [r1, #8]
	sub r4, r4, r1
	add r0, r0, #20
	add r4, r6, r4
	str r5, [sp]
	add r1, r4, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	mov r3, r10
	ldr r1, [r3]
	ldr r0, [r1, #40]
	ldrb r5, [r0, #8]
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	add r6, r6, r0
	cmp r6, r4
	bge _0802901A
	mov r9, r10
	mov r0, #1
	mov r8, r0
_08028FC4:
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #40
	mov r2, r8
	str r2, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	add r6, r6, r5
	cmp r6, r4
	blt _08028FC4
	b _0802901A
_08028FE0:
	.4byte 0x030000FC
_08028FE4:
	.4byte 0x00001128
_08028FE8:
	.4byte 0x00001124
_08028FEC:
	.4byte 0x040000D4
_08028FF0:
	.4byte gOamBuffer
_08028FF4:
	.4byte 0x85000100
_08028FF8:
	.4byte 0x0000112E
_08028FFC:
	.4byte 0x80000400
_08029000:
	.4byte 0x000003FF
_08029004:
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #80
	mov r2, r8
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	mov r3, #1
	str r3, [sp]
	add r3, sp, #8
	bl sub_080281C8
_0802901A:
	bl sub_0801B4BC
	ldr r1, _08029040  @ =0x040000D4
	ldr r0, _08029044  @ =gOamBuffer
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08029048  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08029040:
	.4byte 0x040000D4
_08029044:
	.4byte gOamBuffer
_08029048:
	.4byte 0x84000100
	THUMB_FUNC_END option_menu_display_callback

	THUMB_FUNC_START sub_0802904C
sub_0802904C: @ 0x0802904C
	push {lr}
	ldr r0, _08029074  @ =0x030000FC
	ldr r0, [r0]
	ldr r1, _08029078  @ =0x0000114C
	add r0, r0, r1
	ldrb r3, [r0]
	mov r1, #63
	ldr r0, _0802907C  @ =gUnknown_080788FC
	ldr r0, [r0]
	ldrb r2, [r0]
	add r0, r1, #0
	and r0, r0, r3
	and r1, r1, r2
	cmp r0, r1
	beq _0802906E
	bl sub_0802A164
_0802906E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029074:
	.4byte 0x030000FC
_08029078:
	.4byte 0x0000114C
_0802907C:
	.4byte gUnknown_080788FC
	THUMB_FUNC_END sub_0802904C

	THUMB_FUNC_START sub_08029080
sub_08029080: @ 0x08029080
	ldr r3, _080290A8  @ =gUnknown_080788FC
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #8
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #25
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080290A8:
	.4byte gUnknown_080788FC
	THUMB_FUNC_END sub_08029080

	THUMB_FUNC_START sub_080290AC
sub_080290AC: @ 0x080290AC
	push {lr}
	ldr r0, _080290D4  @ =0x030000FC
	ldr r0, [r0]
	ldr r2, _080290D8  @ =0x00001130
	add r1, r0, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _080290DC  @ =0x00001148
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	pop {r0}
	bx r0
_080290D4:
	.4byte 0x030000FC
_080290D8:
	.4byte 0x00001130
_080290DC:
	.4byte 0x00001148
	THUMB_FUNC_END sub_080290AC

	THUMB_FUNC_START sub_080290E0
sub_080290E0: @ 0x080290E0
	push {lr}
	sub sp, sp, #12
	bl sub_08071C24
	ldr r0, _0802911C  @ =0x030000FC
	ldr r0, [r0]
	ldr r2, _08029120  @ =0x00001132
	add r1, r0, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _08029124  @ =0x00001144
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	add sp, sp, #12
	pop {r0}
	bx r0
_0802911C:
	.4byte 0x030000FC
_08029120:
	.4byte 0x00001132
_08029124:
	.4byte 0x00001144
	THUMB_FUNC_END sub_080290E0

	THUMB_FUNC_START sub_08029128
sub_08029128: @ 0x08029128
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r1, _0802917C  @ =gUnknown_08079990
	ldr r5, _08029180  @ =0x030000FC
	ldr r0, [r5]
	ldr r4, _08029184  @ =0x00001134
	add r0, r0, r4
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r1, r0, r1
	ldrb r1, [r1]
	ldr r2, _08029188  @ =gUnknown_08079988
	add r0, r0, r2
	ldrb r3, [r0]
	mov r0, #3
	mov r2, #4
	bl sub_0802D468
	mov r0, #30
	mov r1, #1
	bl sub_080070E8
	ldr r1, _0802918C  @ =0x03000100
	ldr r0, [r5]
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
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
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0802917C:
	.4byte gUnknown_08079990
_08029180:
	.4byte 0x030000FC
_08029184:
	.4byte 0x00001134
_08029188:
	.4byte gUnknown_08079988
_0802918C:
	.4byte 0x03000100
	THUMB_FUNC_END sub_08029128

	THUMB_FUNC_START sub_08029190
sub_08029190: @ 0x08029190
	push {lr}
	mov r0, #0
	bl sub_08011428
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029190

	THUMB_FUNC_START sub_0802919C
sub_0802919C: @ 0x0802919C
	push {r4-r7,lr}
	add r4, r0, #0
	add r3, r1, #0
	ldr r6, _080291D8  @ =0x0300010E
	mov r2, #0
	strb r2, [r6]
	ldr r0, _080291DC  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080291F0
	ldr r1, _080291E0  @ =0x0300010C
	mov r0, #7
	strb r0, [r1]
	ldr r0, _080291E4  @ =0x03000DF8
	ldr r1, _080291E8  @ =0x0300010D
	strb r3, [r1]
	strb r3, [r0]
	ldr r0, _080291EC  @ =0x03000DD0
	strb r2, [r0]
	lsl r0, r3, #24
	cmp r0, #0
	bge _080291CE
	strb r2, [r1]
_080291CE:
	ldrb r0, [r1]
	add r0, r0, #9
	strb r0, [r1]
	b _08029346
	.byte 0x00
	.byte 0x00
_080291D8:
	.4byte 0x0300010E
_080291DC:
	.4byte gUnknown_03000BB4
_080291E0:
	.4byte 0x0300010C
_080291E4:
	.4byte 0x03000DF8
_080291E8:
	.4byte 0x0300010D
_080291EC:
	.4byte 0x03000DD0
_080291F0:
	ldr r1, _08029218  @ =gUnknown_03000B90
	ldr r5, [r1, #32]
	mov r0, #2
	and r5, r5, r0
	add r7, r1, #0
	cmp r5, #0
	beq _08029278
	ldr r0, _0802921C  @ =0x03000DD0
	strb r4, [r0]
	ldr r1, _08029220  @ =gUnknown_03000B80
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r3, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _08029228
	ldr r1, _08029224  @ =0x03000DF8
	mov r0, #13
	b _0802922C
	.byte 0x00
	.byte 0x00
_08029218:
	.4byte gUnknown_03000B90
_0802921C:
	.4byte 0x03000DD0
_08029220:
	.4byte gUnknown_03000B80
_08029224:
	.4byte 0x03000DF8
_08029228:
	ldr r1, _08029258  @ =0x03000DF8
	mov r0, #6
_0802922C:
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _0802923C
	ldr r1, _0802925C  @ =0x0300010F
	mov r0, #1
	strb r0, [r1]
_0802923C:
	ldr r1, _08029260  @ =0x03000DF4
	mov r0, #7
	strb r0, [r1]
	ldr r1, _08029264  @ =0x0300010C
	ldrb r0, [r3]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _0802926C
	ldr r1, _08029268  @ =0x0300010D
	mov r0, #25
	strb r0, [r1]
	b _08029346
_08029258:
	.4byte 0x03000DF8
_0802925C:
	.4byte 0x0300010F
_08029260:
	.4byte 0x03000DF4
_08029264:
	.4byte 0x0300010C
_08029268:
	.4byte 0x0300010D
_0802926C:
	ldr r1, _08029274  @ =0x0300010D
	mov r0, #22
	strb r0, [r1]
	b _08029346
_08029274:
	.4byte 0x0300010D
_08029278:
	ldr r1, _0802929C  @ =0x03000DD0
	strb r4, [r1]
	ldr r0, _080292A0  @ =gUnknown_03000B80
	ldrb r2, [r0]
	sub r0, r2, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080292B0
	ldr r1, _080292A4  @ =0x0300010C
	mov r0, #8
	strb r0, [r1]
	ldr r1, _080292A8  @ =0x0300010D
	mov r0, #23
	strb r0, [r1]
	add r2, r1, #0
	ldr r1, _080292AC  @ =0x03000DF4
	b _08029332
_0802929C:
	.4byte 0x03000DD0
_080292A0:
	.4byte gUnknown_03000B80
_080292A4:
	.4byte 0x0300010C
_080292A8:
	.4byte 0x0300010D
_080292AC:
	.4byte 0x03000DF4
_080292B0:
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080292EC
	ldr r0, _080292DC  @ =0x03000DF8
	strb r4, [r0]
	strb r4, [r1]
	ldr r1, _080292E0  @ =0x0300010C
	mov r0, #6
	strb r0, [r1]
	ldr r1, _080292E4  @ =0x03000DF4
	strb r4, [r1]
	lsl r0, r2, #24
	asr r0, r0, #24
	ldr r2, _080292E8  @ =0x0300010D
	cmp r0, #3
	bne _08029332
	add r0, r4, #6
	strb r0, [r1]
	b _08029332
	.byte 0x00
	.byte 0x00
_080292DC:
	.4byte 0x03000DF8
_080292E0:
	.4byte 0x0300010C
_080292E4:
	.4byte 0x03000DF4
_080292E8:
	.4byte 0x0300010D
_080292EC:
	lsl r0, r2, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08029314
	strb r0, [r6]
	ldr r0, _08029308  @ =0x03000DF8
	strb r3, [r0]
	strb r4, [r1]
	ldr r0, _0802930C  @ =0x0300010C
	strb r4, [r0]
	ldr r0, _08029310  @ =0x03000DF4
	strb r3, [r0]
	b _0802932E
	.byte 0x00
	.byte 0x00
_08029308:
	.4byte 0x03000DF8
_0802930C:
	.4byte 0x0300010C
_08029310:
	.4byte 0x03000DF4
_08029314:
	ldr r1, _0802934C  @ =0x03000DF8
	strb r3, [r1]
	lsl r0, r3, #24
	cmp r0, #0
	bge _08029320
	strb r5, [r1]
_08029320:
	ldr r0, _08029350  @ =0x03000DF4
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #25
	strb r1, [r0]
	ldr r1, _08029354  @ =0x0300010C
	strb r4, [r1]
_0802932E:
	ldr r2, _08029358  @ =0x0300010D
	add r1, r0, #0
_08029332:
	ldrb r0, [r1]
	add r0, r0, #9
	strb r0, [r2]
	ldr r0, [r7, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029346
	mov r0, #21
	strb r0, [r2]
_08029346:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802934C:
	.4byte 0x03000DF8
_08029350:
	.4byte 0x03000DF4
_08029354:
	.4byte 0x0300010C
_08029358:
	.4byte 0x0300010D
	THUMB_FUNC_END sub_0802919C

	THUMB_FUNC_START level_results_init_callback
level_results_init_callback: @ 0x0802935C
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r1, _0802937C  @ =0x0300010F
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08029380  @ =0x03001940
	ldr r0, [r0]
	cmp r0, #0
	beq _0802938C
	ldr r1, _08029384  @ =0x03000C20
	ldr r0, _08029388  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #52
	ldrb r0, [r0]
	b _08029390
	.byte 0x00
	.byte 0x00
_0802937C:
	.4byte 0x0300010F
_08029380:
	.4byte 0x03001940
_08029384:
	.4byte 0x03000C20
_08029388:
	.4byte 0x030019AC
_0802938C:
	ldr r1, _08029408  @ =0x03000C20
	mov r0, #6
_08029390:
	strb r0, [r1]
	mov r0, #0
	bl arena_restore_head
	ldr r1, _0802940C  @ =0x03000C1C
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08029410  @ =gUnknown_030009D8
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08029414  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08029418  @ =gUnknown_03001710
	strh r1, [r0]
	ldr r4, _0802941C  @ =gUnknown_0885A088
	add r0, r4, #0
	bl sub_08032EB8
	mov r0, #0
	mov r1, #0
	bl sub_0802BCA4
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _08029420  @ =0x03000104
	str r0, [r1]
	mov r1, sp
	mov r0, #160
	strh r0, [r1]
	ldr r1, _08029424  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08029428  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0802942C  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #242
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r1, _08029430  @ =gUnknown_03001A1C
	mov r0, #0
	str r0, [r1]
	ldr r0, _0802942C  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08029434
	mov r4, #3
	b _08029456
_08029408:
	.4byte 0x03000C20
_0802940C:
	.4byte 0x03000C1C
_08029410:
	.4byte gUnknown_030009D8
_08029414:
	.4byte gUnknown_030012A0
_08029418:
	.4byte gUnknown_03001710
_0802941C:
	.4byte gUnknown_0885A088
_08029420:
	.4byte 0x03000104
_08029424:
	.4byte 0x040000D4
_08029428:
	.4byte 0x81000100
_0802942C:
	.4byte gUnknown_03000B90
_08029430:
	.4byte gUnknown_03001A1C
_08029434:
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029440
	mov r4, #2
	b _08029456
_08029440:
	ldr r0, _080294A8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _08029456
	ldr r0, _080294AC  @ =gUnknown_03000BB4
	mov r1, #0
	ldrsb r1, [r0, r1]
	neg r0, r1
	orr r0, r0, r1
	lsr r4, r0, #31
_08029456:
	bl sub_08029A80
	add r0, r4, #0
	bl sub_08030408
	ldr r2, _080294B0  @ =gUnknown_0885A088
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl sub_08029CDC
	bl sub_08071FE4
	cmp r0, #11
	beq _0802947E
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_0802947E:
	bl sub_08038B18
	mov r4, #0
	mov r0, sp
	strh r4, [r0]
	ldr r1, _080294B4  @ =gUnknown_03001730
	ldr r2, _080294B8  @ =0x01000008
	bl CpuSet
	ldr r0, _080294BC  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080294C8
	ldr r0, _080294C0  @ =0x03000E00
	ldr r1, _080294C4  @ =gUnknown_08079DA0
	ldr r1, [r1, #4]
	bl sub_0802F648
	b _08029522
_080294A8:
	.4byte gUnknown_03000B80
_080294AC:
	.4byte gUnknown_03000BB4
_080294B0:
	.4byte gUnknown_0885A088
_080294B4:
	.4byte gUnknown_03001730
_080294B8:
	.4byte 0x01000008
_080294BC:
	.4byte gUnknown_03000B90
_080294C0:
	.4byte 0x03000E00
_080294C4:
	.4byte gUnknown_08079DA0
_080294C8:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _080294E4
	ldr r0, _080294DC  @ =0x03000E00
	ldr r1, _080294E0  @ =gUnknown_08079DA0
	ldr r1, [r1, #8]
	bl sub_0802F648
	b _08029522
_080294DC:
	.4byte 0x03000E00
_080294E0:
	.4byte gUnknown_08079DA0
_080294E4:
	ldr r0, _08029508  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029518
	ldr r0, _0802950C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029518
	ldr r0, _08029510  @ =0x03000E00
	ldr r1, _08029514  @ =gUnknown_08079DA0
	ldr r1, [r1]
	bl sub_0802F648
	b _08029522
_08029508:
	.4byte gUnknown_03000BB4
_0802950C:
	.4byte gUnknown_03000B80
_08029510:
	.4byte 0x03000E00
_08029514:
	.4byte gUnknown_08079DA0
_08029518:
	ldr r0, _08029544  @ =0x03000E00
	ldr r1, _08029548  @ =gUnknown_08079DA0
	ldr r1, [r1, #12]
	bl sub_0802F648
_08029522:
	ldr r0, _0802954C  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029558
	ldr r1, _08029550  @ =0x03001BA0
	ldrb r0, [r1]
	cmp r0, #5
	bhi _08029554
	add r1, r0, #0
	lsl r0, r1, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r1
	lsl r0, r0, #3
	b _08029556
_08029544:
	.4byte 0x03000E00
_08029548:
	.4byte gUnknown_08079DA0
_0802954C:
	.4byte gUnknown_03000B90
_08029550:
	.4byte 0x03001BA0
_08029554:
	ldr r0, _080295D8  @ =0x00002710
_08029556:
	add r4, r4, r0
_08029558:
	add r0, r4, #0
	mov r1, #1
	bl sub_0802FC24
	ldr r1, _080295DC  @ =0x040000D4
	ldr r0, _080295E0  @ =gUnknown_082EC750
	str r0, [r1]
	ldr r0, _080295E4  @ =0x06010000
	str r0, [r1, #4]
	ldr r0, _080295E8  @ =0x840000A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _080295EC  @ =gUnknown_0300192C
	mov r1, #160
	lsl r1, r1, #2
	add r0, r1, #0
	strh r0, [r5]
	ldr r4, _080295F0  @ =gUnknown_03001930
	mov r0, #20
	strh r0, [r4]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080091A8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08042FB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08031BF0
	ldr r0, _080295F4  @ =0x03000C24
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080295F8  @ =0x03000C14
	strb r1, [r0]
	bl sub_08029A80
	ldr r1, _080295FC  @ =0x03000108
	mov r0, #1
	neg r0, r0
	str r0, [r1]
	bl sub_0802FCA4
	ldr r0, _08029600  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl set_lives
	ldr r0, _08029604  @ =0x0300010F
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08029610
	ldr r0, _08029608  @ =0x03000DF8
	ldrb r1, [r0]
	ldr r2, _0802960C  @ =gUnknown_03001A30
	mov r0, #5
	bl sub_08010534
	b _0802961E
_080295D8:
	.4byte 0x00002710
_080295DC:
	.4byte 0x040000D4
_080295E0:
	.4byte gUnknown_082EC750
_080295E4:
	.4byte 0x06010000
_080295E8:
	.4byte 0x840000A0
_080295EC:
	.4byte gUnknown_0300192C
_080295F0:
	.4byte gUnknown_03001930
_080295F4:
	.4byte 0x03000C24
_080295F8:
	.4byte 0x03000C14
_080295FC:
	.4byte 0x03000108
_08029600:
	.4byte gUnknown_03000BBC
_08029604:
	.4byte 0x0300010F
_08029608:
	.4byte 0x03000DF8
_0802960C:
	.4byte gUnknown_03001A30
_08029610:
	ldr r0, _08029648  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802964C  @ =0x03000DF8
	ldrb r1, [r1]
	ldr r2, _08029650  @ =gUnknown_03001A30
	bl sub_08010534
_0802961E:
	ldr r0, _08029654  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08029682
	ldr r0, _08029648  @ =0x03000DD0
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bgt _08029658
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_08010BE0
	b _0802968E
	.byte 0x00
	.byte 0x00
_08029648:
	.4byte 0x03000DD0
_0802964C:
	.4byte 0x03000DF8
_08029650:
	.4byte gUnknown_03001A30
_08029654:
	.4byte gUnknown_03000B90
_08029658:
	ldr r0, _08029670  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029674
	mov r0, #5
	mov r1, #14
	bl sub_08010BE0
	b _0802968E
	.byte 0x00
	.byte 0x00
_08029670:
	.4byte gUnknown_03000B80
_08029674:
	cmp r0, #1
	bne _0802968E
	mov r0, #5
	mov r1, #6
	bl sub_08010BE0
	b _0802968E
_08029682:
	ldr r0, _0802969C  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _080296A0  @ =gUnknown_03000B74
	ldrb r1, [r1]
	bl sub_08010BE0
_0802968E:
	mov r0, #1
	bl sub_080300CC
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0802969C:
	.4byte 0x03000DD0
_080296A0:
	.4byte gUnknown_03000B74
	THUMB_FUNC_END level_results_init_callback

	THUMB_FUNC_START level_results_main_callback
level_results_main_callback: @ 0x080296A4
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r4, #0
	bl sub_08029C20
	ldr r1, _08029774  @ =0x03000C14
	ldrb r0, [r1]
	cmp r0, #30
	bhi _080296B8
	b _080297DA
_080296B8:
	mov r4, #50
	bl process_input
	ldr r0, _08029778  @ =0x03000DDC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080296CC
	b _080297C8
_080296CC:
	ldr r0, _0802977C  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08029716
	ldr r0, _08029780  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080296F8
	ldr r1, _08029784  @ =gUnknown_03001A30
	ldrb r0, [r1]
	cmp r0, #0
	beq _080296F8
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080296F8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0802970E
_080296F8:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #32
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802970E:
	ldr r4, _08029788  @ =0x000F423F
	ldr r1, _0802977C  @ =gUnknown_030012E8
	mov r0, #0
	strh r0, [r1]
_08029716:
	ldr r0, _0802978C  @ =0x03000E00
	add r1, r4, #0
	bl sub_0802F7B8
	mov r4, #0
	cmp r0, #0
	bne _08029726
	mov r4, #1
_08029726:
	cmp r4, #0
	beq _08029794
	ldr r0, _08029790  @ =0x03000108
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0802973C
	add r0, r1, #0
	bl sub_08071D9C
_0802973C:
	ldr r0, _08029780  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080297DE
	ldr r2, _08029784  @ =gUnknown_03001A30
	ldrb r0, [r2]
	cmp r0, #0
	beq _080297DE
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080297DE
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _080297DE
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #41
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _080297DE
	.byte 0x00
	.byte 0x00
_08029774:
	.4byte 0x03000C14
_08029778:
	.4byte 0x03000DDC
_0802977C:
	.4byte gUnknown_030012E8
_08029780:
	.4byte gUnknown_03000B90
_08029784:
	.4byte gUnknown_03001A30
_08029788:
	.4byte 0x000F423F
_0802978C:
	.4byte 0x03000E00
_08029790:
	.4byte 0x03000108
_08029794:
	ldr r5, _080297C4  @ =0x03000108
	ldr r1, [r5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080297AA
	add r0, r1, #0
	bl sub_080721A8
	cmp r0, #0
	beq _080297DE
_080297AA:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #12
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r5]
	b _080297DE
	.byte 0x00
	.byte 0x00
_080297C4:
	.4byte 0x03000108
_080297C8:
	bl sub_0802FC88
	cmp r0, #0
	beq _080297D6
	mov r0, #1
	bl sub_080300CC
_080297D6:
	mov r4, #1
	b _080297DE
_080297DA:
	add r0, r0, #1
	strb r0, [r1]
_080297DE:
	add r0, r4, #0
	bl sub_08030DA0
	cmp r4, #0
	bne _080297EA
	b _08029A74
_080297EA:
	ldr r0, _08029860  @ =gUnknown_030009D8
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	bl sub_08030DE8
	cmp r0, #0
	bne _080297FC
	b _08029A74
_080297FC:
	ldr r0, _08029864  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	bne _0802980A
	b _08029A74
_0802980A:
	ldr r2, _08029868  @ =0x03000E00
	ldr r0, [r2, #80]
	ldr r1, [r0]
	sub r1, r1, #1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r0, r2
	add r2, r2, #4
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802986C  @ =0x03000108
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08029834
	add r0, r1, #0
	bl sub_08071D9C
_08029834:
	mov r0, #0
	str r0, [sp]
	mov r7, #128
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _08029870  @ =0x03000C1C
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08029874  @ =gUnknown_03000BB4
	mov r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0
	beq _08029878
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029860:
	.4byte gUnknown_030009D8
_08029864:
	.4byte gUnknown_030012E8
_08029868:
	.4byte 0x03000E00
_0802986C:
	.4byte 0x03000108
_08029870:
	.4byte 0x03000C1C
_08029874:
	.4byte gUnknown_03000BB4
_08029878:
	ldr r2, _08029888  @ =gUnknown_03000B80
	mov r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #2
	bne _0802988C
	mov r0, #9
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029888:
	.4byte gUnknown_03000B80
_0802988C:
	cmp r4, #3
	bne _08029894
	mov r0, #9
	b _08029A52
_08029894:
	ldr r1, _080298D0  @ =gUnknown_03000B90
	ldr r0, [r1, #32]
	mov r3, #4
	and r0, r0, r3
	add r6, r1, #0
	cmp r0, #0
	bne _080298A4
	b _080299E4
_080298A4:
	cmp r4, #0
	bne _08029938
	mov r0, #18
	ldrsh r1, [r6, r0]
	ldr r0, _080298D4  @ =gUnknown_08B2CA5C
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bcs _080298F2
	ldr r4, _080298D8  @ =gUnknown_080788B0
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080298DC
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_080298D0:
	.4byte gUnknown_03000B90
_080298D4:
	.4byte gUnknown_08B2CA5C
_080298D8:
	.4byte gUnknown_080788B0
_080298DC:
	mov r1, #18
	ldrsh r0, [r6, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08029A52
_080298F2:
	strb r3, [r2]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _08029930  @ =gUnknown_03000B58
	strb r4, [r0]
	ldr r0, _08029934  @ =gUnknown_03000B74
	strb r4, [r0]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #3
	mov r1, #43
	mov r2, #13
	mov r3, #2
	bl sub_0802D468
	mov r0, #30
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029930:
	.4byte gUnknown_03000B58
_08029934:
	.4byte gUnknown_03000B74
_08029938:
	cmp r4, #1
	bne _080299C8
	mov r0, #18
	ldrsh r1, [r6, r0]
	ldr r0, _08029964  @ =gUnknown_08B2CDF4
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bcs _08029982
	ldr r4, _08029968  @ =gUnknown_080788C8
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802996C
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029964:
	.4byte gUnknown_08B2CDF4
_08029968:
	.4byte gUnknown_080788C8
_0802996C:
	mov r1, #18
	ldrsh r0, [r6, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08029A52
_08029982:
	mov r0, #5
	strb r0, [r2]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r0, _080299C0  @ =gUnknown_03000B58
	strb r5, [r0]
	ldr r0, _080299C4  @ =gUnknown_03000B74
	strb r4, [r0]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #3
	mov r1, #45
	mov r2, #13
	mov r3, #5
	bl sub_0802D468
	mov r0, #30
	b _08029A52
_080299C0:
	.4byte gUnknown_03000B58
_080299C4:
	.4byte gUnknown_03000B74
_080299C8:
	mov r0, #7
	mov r1, #1
	bl sub_080070E8
	ldr r0, _080299DC  @ =gUnknown_03000B58
	strb r5, [r0]
	ldr r0, _080299E0  @ =gUnknown_03000B74
	strb r5, [r0]
	b _08029A74
	.byte 0x00
	.byte 0x00
_080299DC:
	.4byte gUnknown_03000B58
_080299E0:
	.4byte gUnknown_03000B74
_080299E4:
	ldr r1, _08029A30  @ =gUnknown_03001A30
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029A5A
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08029A5A
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08029A5A
	cmp r4, #0
	bne _08029A38
	mov r1, #18
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08029A38
	mov r1, #16
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _08029A1A
	mov r0, #128
	lsl r0, r0, #1
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08029A50
_08029A1A:
	ldr r0, _08029A34  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029A50
	mov r0, #23
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029A30:
	.4byte gUnknown_03001A30
_08029A34:
	.4byte gUnknown_03000B54
_08029A38:
	ldr r0, _08029A4C  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029A50
	mov r0, #23
	b _08029A52
_08029A4C:
	.4byte gUnknown_03000B54
_08029A50:
	mov r0, #22
_08029A52:
	mov r1, #1
	bl sub_080070E8
	b _08029A74
_08029A5A:
	ldr r0, [r6, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029A6C
	mov r0, #12
	bl sub_080070E8
	b _08029A74
_08029A6C:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_08029A74:
	bl sub_08031C1C
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END level_results_main_callback

	THUMB_FUNC_START sub_08029A80
sub_08029A80: @ 0x08029A80
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r0, _08029B64  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, sp, #8
	cmp r0, #0
	bne _08029AE6
	ldr r0, _08029B68  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r2, r0, #24
	lsr r0, r2, #24
	cmp r0, #1
	bhi _08029AE6
	ldr r0, _08029B6C  @ =gUnknown_080763FC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #8
	ldr r0, _08029B70  @ =gUnknown_0885A088
	ldr r7, [r0, #72]
	ldr r0, _08029B74  @ =0x03000104
	ldr r0, [r0]
	mov r3, #184
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r6, [r0]
	asr r0, r2, #24
	cmp r0, #1
	bne _08029AC8
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	mov r1, #7
_08029AC8:
	cmp r1, #0
	beq _08029AE6
	add r4, r1, #0
_08029ACE:
	mov r0, sp
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #5
	bl sub_080064D4
	sub r4, r4, #1
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	cmp r4, #0
	bne _08029ACE
_08029AE6:
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #2
	str r0, [r5, #4]
	ldr r7, _08029B74  @ =0x03000104
	ldr r1, [r7]
	ldr r0, _08029B78  @ =0x0300010C
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r6, _08029B70  @ =gUnknown_0885A088
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r1, [r7]
	ldr r0, _08029B7C  @ =0x0300010D
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
	ldr r0, _08029B80  @ =0x0300010E
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08029B5A
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [r7]
	mov r1, #180
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
_08029B5A:
	add sp, sp, #16
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029B64:
	.4byte gUnknown_03000BB4
_08029B68:
	.4byte gUnknown_03000B80
_08029B6C:
	.4byte gUnknown_080763FC
_08029B70:
	.4byte gUnknown_0885A088
_08029B74:
	.4byte 0x03000104
_08029B78:
	.4byte 0x0300010C
_08029B7C:
	.4byte 0x0300010D
_08029B80:
	.4byte 0x0300010E
	THUMB_FUNC_END sub_08029A80

	THUMB_FUNC_START level_results_display_callback
level_results_display_callback: @ 0x08029B84
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r6, sp, #4
	mov r0, #0
	strh r0, [r6]
	ldr r0, _08029BFC  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r5, sp
	add r5, r5, #6
	strh r0, [r5]
	ldr r0, _08029C00  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r7, sp, #8
	strh r0, [r7]
	ldr r0, _08029C04  @ =0x03000C1C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029BEE
	mov r0, #160
	str r0, [sp]
	ldr r4, _08029C08  @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r0, _08029C0C  @ =gOamBuffer
	mov r8, r0
	str r0, [r4, #4]
	ldr r0, _08029C10  @ =0x85000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	add r0, r6, #0
	bl sub_08031AD4
	ldr r0, _08029C14  @ =0x03000E00
	add r1, r6, #0
	add r2, r5, #0
	add r3, r7, #0
	bl sub_0802F890
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_08030C84
	mov r0, r8
	str r0, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08029C18  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08029BEE:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029BFC:
	.4byte gUnknown_03001930
_08029C00:
	.4byte gUnknown_0300192C
_08029C04:
	.4byte 0x03000C1C
_08029C08:
	.4byte 0x040000D4
_08029C0C:
	.4byte gOamBuffer
_08029C10:
	.4byte 0x85000100
_08029C14:
	.4byte 0x03000E00
_08029C18:
	.4byte 0x84000100
	THUMB_FUNC_END level_results_display_callback

	THUMB_FUNC_START sub_08029C1C
sub_08029C1C: @ 0x08029C1C
	bx lr
	THUMB_FUNC_END sub_08029C1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029C20
sub_08029C20: @ 0x08029C20
	push {r4,lr}
	ldr r4, _08029C40  @ =gUnknown_03000C28
	ldrb r0, [r4]
	cmp r0, #0
	beq _08029C84
	ldr r1, _08029C44  @ =0x03000111
	ldrb r0, [r1]
	mov r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _08029C48
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #1
	b _08029C86
	.byte 0x00
	.byte 0x00
_08029C40:
	.4byte gUnknown_03000C28
_08029C44:
	.4byte 0x03000111
_08029C48:
	ldr r3, _08029C64  @ =0x03000110
	ldrb r0, [r3]
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	ble _08029C6C
	ldr r1, _08029C68  @ =0x04000054
	mov r0, #0
	ldrsb r0, [r3, r0]
	strh r0, [r1]
	mov r0, #1
	b _08029C86
	.byte 0x00
	.byte 0x00
_08029C64:
	.4byte 0x03000110
_08029C68:
	.4byte 0x04000054
_08029C6C:
	strb r2, [r4]
	strb r2, [r3]
	ldr r1, _08029C8C  @ =0x04000050
	ldr r0, _08029C90  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029C94  @ =0x03000114
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08029C98  @ =0x04000054
	strh r2, [r0]
_08029C84:
	mov r0, #0
_08029C86:
	pop {r4}
	pop {r1}
	bx r1
_08029C8C:
	.4byte 0x04000050
_08029C90:
	.4byte 0x03000112
_08029C94:
	.4byte 0x03000114
_08029C98:
	.4byte 0x04000054
	THUMB_FUNC_END sub_08029C20

	THUMB_FUNC_START sub_08029C9C
sub_08029C9C: @ 0x08029C9C
	push {lr}
	ldrh r3, [r0, #48]
	ldrh r1, [r0, #50]
	ldrh r2, [r0, #52]
	add r0, r3, #0
	bl sub_08029CDC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029C9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029CB0
sub_08029CB0: @ 0x08029CB0
	ldr r1, _08029CD0  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029CD4  @ =gUnknown_03000C28
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08029CD8  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	bx lr
_08029CD0:
	.4byte 0x03000110
_08029CD4:
	.4byte gUnknown_03000C28
_08029CD8:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029CB0

	THUMB_FUNC_START sub_08029CDC
sub_08029CDC: @ 0x08029CDC
	push {r4,r5,lr}
	ldr r4, _08029D24  @ =0x04000048
	ldr r5, _08029D28  @ =0x00001010
	add r3, r5, #0
	strh r3, [r4]
	add r4, r4, #2
	add r5, r5, #47
	add r3, r5, #0
	strh r3, [r4]
	ldr r4, _08029D2C  @ =0x03000110
	mov r3, #31
	strb r3, [r4]
	ldr r4, _08029D30  @ =gUnknown_03000C28
	mov r3, #1
	strb r3, [r4]
	ldr r4, _08029D34  @ =0x03000111
	mov r3, #5
	strb r3, [r4]
	ldr r3, _08029D38  @ =0x03000112
	strh r0, [r3]
	ldr r0, _08029D3C  @ =0x03000114
	strh r1, [r0]
	ldr r0, _08029D40  @ =0x03000116
	strh r2, [r0]
	ldr r1, _08029D44  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_08029D24:
	.4byte 0x04000048
_08029D28:
	.4byte 0x00001010
_08029D2C:
	.4byte 0x03000110
_08029D30:
	.4byte gUnknown_03000C28
_08029D34:
	.4byte 0x03000111
_08029D38:
	.4byte 0x03000112
_08029D3C:
	.4byte 0x03000114
_08029D40:
	.4byte 0x03000116
_08029D44:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029CDC

	THUMB_FUNC_START fadetransition_init_callback
fadetransition_init_callback: @ 0x08029D48
	ldr r1, _08029D70  @ =0x03000110
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08029D74  @ =0x03000111
	mov r0, #4
	strb r0, [r1]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08029D78  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029D7C  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029D70:
	.4byte 0x03000110
_08029D74:
	.4byte 0x03000111
_08029D78:
	.4byte 0x00007FFF
_08029D7C:
	.4byte 0x04000050
	THUMB_FUNC_END fadetransition_init_callback

	THUMB_FUNC_START sub_08029D80
sub_08029D80: @ 0x08029D80
	ldr r1, _08029DA8  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029DAC  @ =0x03000111
	mov r0, #0
	strb r0, [r1]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08029DB0  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029DB4  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #31
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029DA8:
	.4byte 0x03000110
_08029DAC:
	.4byte 0x03000111
_08029DB0:
	.4byte 0x00007FFF
_08029DB4:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029D80

	THUMB_FUNC_START sub_08029DB8
sub_08029DB8: @ 0x08029DB8
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029DF8  @ =0x04000048
	ldr r2, _08029DFC  @ =0x00001010
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r3, _08029E00  @ =0x0000103F
	add r0, r3, #0
	strh r0, [r1]
	add r1, r1, #6
	mov r0, #255
	strh r0, [r1]
	ldr r0, _08029E04  @ =0x04000052
	mov r2, #0
	strh r2, [r0]
	ldr r1, _08029E08  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029E0C  @ =0x04000054
	mov r0, #31
	strh r0, [r1]
	ldr r0, _08029E10  @ =gUnknown_03000C28
	strb r2, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08029DF8:
	.4byte 0x04000048
_08029DFC:
	.4byte 0x00001010
_08029E00:
	.4byte 0x0000103F
_08029E04:
	.4byte 0x04000052
_08029E08:
	.4byte 0x03000110
_08029E0C:
	.4byte 0x04000054
_08029E10:
	.4byte gUnknown_03000C28
	THUMB_FUNC_END sub_08029DB8

	THUMB_FUNC_START sub_08029E14
sub_08029E14: @ 0x08029E14
	ldr r1, _08029E3C  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029E40  @ =gUnknown_03000C28
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08029E44  @ =0x03000111
	mov r0, #5
	strb r0, [r1]
	ldr r1, _08029E48  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029E3C:
	.4byte 0x03000110
_08029E40:
	.4byte gUnknown_03000C28
_08029E44:
	.4byte 0x03000111
_08029E48:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029E14

	THUMB_FUNC_START sub_08029E4C
sub_08029E4C: @ 0x08029E4C
	ldr r1, _08029E64  @ =0x03000110
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08029E68  @ =0x04000054
	mov r0, #0
	strh r0, [r1]
	sub r1, r1, #4
	ldr r0, _08029E6C  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029E64:
	.4byte 0x03000110
_08029E68:
	.4byte 0x04000054
_08029E6C:
	.4byte 0x03000112
	THUMB_FUNC_END sub_08029E4C

	THUMB_FUNC_START sub_08029E70
sub_08029E70: @ 0x08029E70
	ldr r1, _08029E78  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	bx lr
_08029E78:
	.4byte 0x03000110
	THUMB_FUNC_END sub_08029E70

	THUMB_FUNC_START sub_08029E7C
sub_08029E7C: @ 0x08029E7C
	ldr r0, _08029EA0  @ =gUnknown_03000C28
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08029EA4  @ =0x03000110
	strb r1, [r0]
	ldr r1, _08029EA8  @ =0x04000050
	ldr r0, _08029EAC  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029EB0  @ =0x03000114
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029EA0:
	.4byte gUnknown_03000C28
_08029EA4:
	.4byte 0x03000110
_08029EA8:
	.4byte 0x04000050
_08029EAC:
	.4byte 0x03000112
_08029EB0:
	.4byte 0x03000114
	THUMB_FUNC_END sub_08029E7C

	THUMB_FUNC_START sub_08029EB4
sub_08029EB4: @ 0x08029EB4
	push {lr}
	ldr r3, _08029EE8  @ =gUnknown_03000C28
	ldrb r0, [r3]
	cmp r0, #0
	beq _08029F1C
	ldr r2, _08029EEC  @ =0x03000110
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bgt _08029EFC
	mov r0, #0
	strb r0, [r3]
	strb r0, [r2]
	ldr r1, _08029EF0  @ =0x04000050
	ldr r0, _08029EF4  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029EF8  @ =0x03000114
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	b _08029F1C
_08029EE8:
	.4byte gUnknown_03000C28
_08029EEC:
	.4byte 0x03000110
_08029EF0:
	.4byte 0x04000050
_08029EF4:
	.4byte 0x03000112
_08029EF8:
	.4byte 0x03000114
_08029EFC:
	sub r0, r1, #4
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bge _08029F0A
	mov r0, #0
	strb r0, [r2]
_08029F0A:
	ldr r1, _08029F18  @ =0x04000054
	mov r0, #0
	ldrsb r0, [r2, r0]
	strh r0, [r1]
	mov r0, #1
	b _08029F1E
	.byte 0x00
	.byte 0x00
_08029F18:
	.4byte 0x04000054
_08029F1C:
	mov r0, #0
_08029F1E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08029EB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START fadetransition_main_callback
fadetransition_main_callback: @ 0x08029F24
	push {lr}
	ldr r3, _08029F38  @ =0x03000110
	ldrb r1, [r3]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #30
	bgt _08029F3C
	add r0, r1, #1
	strb r0, [r3]
	b _08029F62
_08029F38:
	.4byte 0x03000110
_08029F3C:
	ldr r1, _08029F50  @ =0x03000111
	ldrb r0, [r1]
	mov r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _08029F54
	sub r0, r0, #1
	strb r0, [r1]
	b _08029F62
	.byte 0x00
	.byte 0x00
_08029F50:
	.4byte 0x03000111
_08029F54:
	mov r0, #31
	strb r0, [r3]
	mov r0, #128
	lsl r0, r0, #19
	strh r2, [r0]
	bl sub_08007154
_08029F62:
	ldr r0, _08029F74  @ =0x04000054
	ldr r1, _08029F78  @ =0x03000110
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029F74:
	.4byte 0x04000054
_08029F78:
	.4byte 0x03000110
	THUMB_FUNC_END fadetransition_main_callback

	THUMB_FUNC_START sub_08029F7C
sub_08029F7C: @ 0x08029F7C
	push {lr}
	ldr r0, _08029F94  @ =0x03000110
	ldrb r2, [r0]
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #30
	bgt _08029F98
	add r0, r2, #1
	strb r0, [r3]
	b _08029FB4
	.byte 0x00
	.byte 0x00
_08029F94:
	.4byte 0x03000110
_08029F98:
	ldr r1, _08029FAC  @ =0x03000111
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08029FB0
	mov r0, #31
	strb r0, [r3]
	mov r0, #1
	b _08029FBE
_08029FAC:
	.4byte 0x03000111
_08029FB0:
	sub r0, r2, #1
	strb r0, [r1]
_08029FB4:
	ldr r1, _08029FC4  @ =0x04000054
	mov r0, #0
	ldrsb r0, [r3, r0]
	strh r0, [r1]
	mov r0, #0
_08029FBE:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08029FC4:
	.4byte 0x04000054
	THUMB_FUNC_END sub_08029F7C

	THUMB_FUNC_START sub_08029FC8
sub_08029FC8: @ 0x08029FC8
	bx lr
	THUMB_FUNC_END sub_08029FC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029FCC
sub_08029FCC: @ 0x08029FCC
	bx lr
	THUMB_FUNC_END sub_08029FCC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029FD0
sub_08029FD0: @ 0x08029FD0
	push {r4-r7,lr}
	sub sp, sp, #8
	bl IdentifyFlash
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802A090
	ldr r0, _0802A010  @ =0x03000124
	mov r1, #1
	str r1, [r0]
	ldr r1, _0802A014  @ =gInterruptHandlers+0x18
	mov r0, #2
	bl SetFlashTimerIntr
	mov r6, #0
	mov r5, #0
	mov r4, sp
	ldr r7, _0802A018  @ =0x0000FFFC
_08029FF4:
	ldr r0, _0802A01C  @ =0x0300012A
	strh r5, [r0]
	bl sub_0802A0A8
	cmp r0, #0
	beq _0802A024
	ldr r0, _0802A020  @ =0x03000128
	ldrh r0, [r0]
	str r0, [r4]
	cmp r0, r7
	bls _0802A02A
	mov r6, #1
	b _0802A02A
	.byte 0x00
	.byte 0x00
_0802A010:
	.4byte 0x03000124
_0802A014:
	.4byte gInterruptHandlers+0x18
_0802A018:
	.4byte 0x0000FFFC
_0802A01C:
	.4byte 0x0300012A
_0802A020:
	.4byte 0x03000128
_0802A024:
	mov r0, #1
	neg r0, r0
	str r0, [r4]
_0802A02A:
	add r4, r4, #4
	add r5, r5, #1
	cmp r5, #1
	bls _08029FF4
	ldr r0, _0802A080  @ =0x03000124
	mov r12, r0
	ldr r1, _0802A084  @ =0x0300012A
	ldr r7, _0802A088  @ =0x03000128
	cmp r6, #0
	beq _0802A058
	mov r5, #0
	mov r3, #128
	lsl r3, r3, #9
	mov r2, sp
_0802A046:
	ldr r0, [r2]
	cmp r0, #2
	bhi _0802A050
	add r0, r0, r3
	str r0, [r2]
_0802A050:
	add r2, r2, #4
	add r5, r5, #1
	cmp r5, #1
	bls _0802A046
_0802A058:
	mov r3, #0
	ldr r4, _0802A08C  @ =0x0000FFFF
	mov r5, #0
	mov r6, #1
	neg r6, r6
	mov r2, sp
_0802A064:
	ldr r0, [r2]
	cmp r0, r6
	beq _0802A072
	cmp r0, r3
	bcc _0802A072
	add r4, r5, #0
	add r3, r0, #0
_0802A072:
	add r2, r2, #4
	add r5, r5, #1
	cmp r5, #1
	bls _0802A064
	strh r3, [r7]
	strh r4, [r1]
	b _0802A098
_0802A080:
	.4byte 0x03000124
_0802A084:
	.4byte 0x0300012A
_0802A088:
	.4byte 0x03000128
_0802A08C:
	.4byte 0x0000FFFF
_0802A090:
	ldr r1, _0802A0A4  @ =0x03000124
	mov r0, #0
	str r0, [r1]
	mov r12, r1
_0802A098:
	mov r1, r12
	ldr r0, [r1]
	add sp, sp, #8
	pop {r4-r7}
	pop {r1}
	bx r1
_0802A0A4:
	.4byte 0x03000124
	THUMB_FUNC_END sub_08029FD0

	THUMB_FUNC_START sub_0802A0A8
sub_0802A0A8: @ 0x0802A0A8
	push {r4-r6,lr}
	ldr r5, _0802A134  @ =0x02032FF8
	ldr r0, _0802A138  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A15C
	ldr r2, _0802A13C  @ =0x0300012A
	ldrh r1, [r2]
	ldr r0, _0802A140  @ =0x0000FFFF
	cmp r1, r0
	beq _0802A15C
	ldrh r0, [r2]
	ldr r6, _0802A144  @ =0x02032000
	mov r4, #128
	lsl r4, r4, #5
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ReadFlash
	ldrb r0, [r5]
	cmp r0, #68
	bne _0802A15C
	ldrb r0, [r5, #1]
	cmp r0, #75
	bne _0802A15C
	ldr r0, _0802A148  @ =0x02032FFA
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	cmp r1, r4
	bne _0802A15C
	ldr r0, _0802A14C  @ =0x02032FFE
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r4, r1, #0
	orr r4, r4, r0
	mov r1, #0
	add r5, r6, #0
	mov r3, #0
	ldr r2, _0802A150  @ =0x00000FF7
_0802A102:
	add r0, r5, r3
	ldrb r0, [r0]
	add r0, r0, #1
	add r0, r3, r0
	add r0, r1, r0
	lsl r0, r0, #16
	lsr r1, r0, #16
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, r2
	bls _0802A102
	cmp r4, r1
	bne _0802A15C
	ldr r0, _0802A154  @ =0x02032FFC
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _0802A158  @ =0x03000128
	strh r1, [r0]
	mov r0, #1
	b _0802A15E
	.byte 0x00
	.byte 0x00
_0802A134:
	.4byte 0x02032FF8
_0802A138:
	.4byte 0x03000124
_0802A13C:
	.4byte 0x0300012A
_0802A140:
	.4byte 0x0000FFFF
_0802A144:
	.4byte 0x02032000
_0802A148:
	.4byte 0x02032FFA
_0802A14C:
	.4byte 0x02032FFE
_0802A150:
	.4byte 0x00000FF7
_0802A154:
	.4byte 0x02032FFC
_0802A158:
	.4byte 0x03000128
_0802A15C:
	mov r0, #0
_0802A15E:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A0A8

	THUMB_FUNC_START sub_0802A164
sub_0802A164: @ 0x0802A164
	push {r4-r6,lr}
	ldr r1, _0802A174  @ =0x02032FF8
	ldr r0, _0802A178  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A17C
	mov r0, #0
	b _0802A28A
_0802A174:
	.4byte 0x02032FF8
_0802A178:
	.4byte 0x03000124
_0802A17C:
	mov r0, #68
	strb r0, [r1]
	mov r0, #75
	strb r0, [r1, #1]
	ldr r3, _0802A19C  @ =0x0300012A
	ldrh r1, [r3]
	ldr r0, _0802A1A0  @ =0x0000FFFF
	cmp r1, r0
	bne _0802A1A8
	ldr r1, _0802A1A4  @ =0x03000128
	mov r0, #0
	strh r0, [r1]
	strh r0, [r3]
	add r2, r1, #0
	b _0802A1BC
	.byte 0x00
	.byte 0x00
_0802A19C:
	.4byte 0x0300012A
_0802A1A0:
	.4byte 0x0000FFFF
_0802A1A4:
	.4byte 0x03000128
_0802A1A8:
	ldr r2, _0802A208  @ =0x03000128
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldrh r1, [r3]
	add r1, r1, #1
	lsr r0, r1, #1
	lsl r0, r0, #1
	sub r1, r1, r0
	strh r1, [r3]
_0802A1BC:
	ldr r1, _0802A20C  @ =0x02032FFA
	mov r0, #0
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #16
	strb r0, [r1]
	ldrh r0, [r2]
	add r1, r1, #1
	strb r0, [r1]
	add r1, r1, #1
	lsr r0, r0, #8
	strb r0, [r1]
	mov r2, #0
	ldr r4, _0802A210  @ =0x02032000
	mov r1, #0
	ldr r3, _0802A214  @ =0x00000FF7
_0802A1DC:
	add r0, r4, r1
	ldrb r0, [r0]
	add r0, r0, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, r3
	bls _0802A1DC
	ldr r0, _0802A218  @ =0x02032FFE
	strb r2, [r0]
	ldr r1, _0802A21C  @ =0x02032FFF
	lsr r0, r2, #8
	strb r0, [r1]
	mov r4, #0
	ldr r6, _0802A220  @ =0x0300012A
	ldr r5, _0802A210  @ =0x02032000
	b _0802A22C
	.byte 0x00
	.byte 0x00
_0802A208:
	.4byte 0x03000128
_0802A20C:
	.4byte 0x02032FFA
_0802A210:
	.4byte 0x02032000
_0802A214:
	.4byte 0x00000FF7
_0802A218:
	.4byte 0x02032FFE
_0802A21C:
	.4byte 0x02032FFF
_0802A220:
	.4byte 0x0300012A
_0802A224:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, #1
	bhi _0802A288
_0802A22C:
	ldr r1, _0802A250  @ =0x03001F38
	ldrh r0, [r6]
	ldr r2, [r1]
	add r1, r5, #0
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A254  @ =0x000080FF
	cmp r1, r0
	beq _0802A27E
	cmp r1, r0
	bgt _0802A258
	cmp r1, #0
	beq _0802A26C
	sub r0, r0, #251
	b _0802A260
	.byte 0x00
	.byte 0x00
_0802A250:
	.4byte 0x03001F38
_0802A254:
	.4byte 0x000080FF
_0802A258:
	ldr r0, _0802A268  @ =0x0000C001
	cmp r1, r0
	beq _0802A27E
	add r0, r0, #1
_0802A260:
	cmp r1, r0
	beq _0802A27E
	b _0802A282
	.byte 0x00
	.byte 0x00
_0802A268:
	.4byte 0x0000C001
_0802A26C:
	ldrh r0, [r6]
	add r1, r5, #0
	bl VerifyFlashSector
	mov r1, #0
	cmp r0, #0
	bne _0802A284
	mov r1, #1
	b _0802A288
_0802A27E:
	mov r1, #0
	b _0802A224
_0802A282:
	mov r1, #0
_0802A284:
	cmp r1, #0
	beq _0802A224
_0802A288:
	add r0, r1, #0
_0802A28A:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A164

	THUMB_FUNC_START sub_0802A290
sub_0802A290: @ 0x0802A290
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _0802A2C0  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A354
	ldr r1, _0802A2C4  @ =0x0300011C
	cmp r3, #0
	blt _0802A2AE
	ldr r0, _0802A2C8  @ =0x03000120
	str r3, [r0]
	ldr r0, _0802A2CC  @ =0x03000118
	str r4, [r0]
	str r2, [r1]
_0802A2AE:
	ldr r0, [r1]
	cmp r0, #0
	ble _0802A354
	mov r4, #0
	ldr r7, _0802A2D0  @ =0x03001F38
	ldr r6, _0802A2C8  @ =0x03000120
	ldr r5, _0802A2CC  @ =0x03000118
	b _0802A2DC
	.byte 0x00
	.byte 0x00
_0802A2C0:
	.4byte 0x03000124
_0802A2C4:
	.4byte 0x0300011C
_0802A2C8:
	.4byte 0x03000120
_0802A2CC:
	.4byte 0x03000118
_0802A2D0:
	.4byte 0x03001F38
_0802A2D4:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, #1
	bhi _0802A32E
_0802A2DC:
	ldrh r0, [r6]
	ldr r1, [r5]
	ldr r2, [r7]
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A2FC  @ =0x000080FF
	cmp r1, r0
	beq _0802A324
	cmp r1, r0
	bgt _0802A300
	cmp r1, #0
	beq _0802A314
	sub r0, r0, #251
	b _0802A308
_0802A2FC:
	.4byte 0x000080FF
_0802A300:
	ldr r0, _0802A310  @ =0x0000C001
	cmp r1, r0
	beq _0802A324
	add r0, r0, #1
_0802A308:
	cmp r1, r0
	beq _0802A324
	b _0802A328
	.byte 0x00
	.byte 0x00
_0802A310:
	.4byte 0x0000C001
_0802A314:
	ldrh r0, [r6]
	ldr r1, [r5]
	bl VerifyFlashSector
	mov r1, #0
	cmp r0, #0
	bne _0802A32A
	b _0802A332
_0802A324:
	mov r1, #0
	b _0802A2D4
_0802A328:
	mov r1, #0
_0802A32A:
	cmp r1, #0
	beq _0802A2D4
_0802A32E:
	cmp r1, #0
	beq _0802A368
_0802A332:
	ldr r1, _0802A358  @ =0x03000120
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldr r1, _0802A35C  @ =0x03000118
	ldr r0, [r1]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r0, r2
	str r0, [r1]
	ldr r1, _0802A360  @ =0x0300011C
	ldr r0, [r1]
	ldr r2, _0802A364  @ =0xFFFFF000
	add r0, r0, r2
	str r0, [r1]
	cmp r0, #0
	bgt _0802A368
_0802A354:
	mov r0, #1
	b _0802A36A
_0802A358:
	.4byte 0x03000120
_0802A35C:
	.4byte 0x03000118
_0802A360:
	.4byte 0x0300011C
_0802A364:
	.4byte 0xFFFFF000
_0802A368:
	mov r0, #0
_0802A36A:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A290

	THUMB_FUNC_START sub_0802A370
sub_0802A370: @ 0x0802A370
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, _0802A38C  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A390
	mov r0, #0
	b _0802A41E
	.byte 0x00
	.byte 0x00
_0802A38C:
	.4byte 0x03000124
_0802A390:
	mov r0, #0
	mov r9, r0
	cmp r6, #0
	ble _0802A41C
_0802A398:
	lsl r1, r7, #16
	mov r8, r1
	b _0802A3A8
_0802A39E:
	mov r0, r9
	mov r1, #1
	add r9, r9, r1
	cmp r0, #1
	bhi _0802A408
_0802A3A8:
	ldr r0, _0802A3D0  @ =0x03001F38
	mov r1, r8
	lsr r4, r1, #16
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A3D4  @ =0x000080FF
	cmp r1, r0
	beq _0802A3FE
	cmp r1, r0
	bgt _0802A3D8
	cmp r1, #0
	beq _0802A3EC
	sub r0, r0, #251
	b _0802A3E0
	.byte 0x00
	.byte 0x00
_0802A3D0:
	.4byte 0x03001F38
_0802A3D4:
	.4byte 0x000080FF
_0802A3D8:
	ldr r0, _0802A3E8  @ =0x0000C001
	cmp r1, r0
	beq _0802A3FE
	add r0, r0, #1
_0802A3E0:
	cmp r1, r0
	beq _0802A3FE
	b _0802A402
	.byte 0x00
	.byte 0x00
_0802A3E8:
	.4byte 0x0000C001
_0802A3EC:
	add r0, r4, #0
	add r1, r5, #0
	bl VerifyFlashSector
	mov r3, #0
	cmp r0, #0
	bne _0802A404
	mov r3, #1
	b _0802A40C
_0802A3FE:
	mov r3, #0
	b _0802A39E
_0802A402:
	mov r3, #0
_0802A404:
	cmp r3, #0
	beq _0802A39E
_0802A408:
	cmp r3, #0
	beq _0802A41C
_0802A40C:
	add r7, r7, #1
	mov r0, #128
	lsl r0, r0, #5
	add r5, r5, r0
	ldr r1, _0802A42C  @ =0xFFFFF000
	add r6, r6, r1
	cmp r6, #0
	bgt _0802A398
_0802A41C:
	add r0, r3, #0
_0802A41E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0802A42C:
	.4byte 0xFFFFF000
	THUMB_FUNC_END sub_0802A370

	THUMB_FUNC_START sub_0802A430
sub_0802A430: @ 0x0802A430
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	ldr r0, _0802A454  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A44E
	lsl r0, r3, #16
	lsr r0, r0, #16
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ReadFlash
_0802A44E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802A454:
	.4byte 0x03000124
	THUMB_FUNC_END sub_0802A430

	THUMB_FUNC_START sub_0802A458
sub_0802A458: @ 0x0802A458
	ldr r0, _0802A460  @ =0x03000124
	ldr r0, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0802A460:
	.4byte 0x03000124
	THUMB_FUNC_END sub_0802A458

	THUMB_FUNC_START sub_0802A464
sub_0802A464: @ 0x0802A464
	push {r4-r6,lr}
	ldr r6, _0802A478  @ =0x02032000
	ldr r5, _0802A47C  @ =0x02032FF8
	ldr r0, _0802A480  @ =0x0300012A
	ldrh r1, [r0]
	ldr r0, _0802A484  @ =0x0000FFFF
	cmp r1, r0
	beq _0802A488
_0802A474:
	mov r0, #0
	b _0802A4AE
_0802A478:
	.4byte 0x02032000
_0802A47C:
	.4byte 0x02032FF8
_0802A480:
	.4byte 0x0300012A
_0802A484:
	.4byte 0x0000FFFF
_0802A488:
	mov r4, #0
_0802A48A:
	lsl r0, r4, #16
	lsr r0, r0, #16
	mov r1, #0
	add r2, r6, #0
	mov r3, #128
	lsl r3, r3, #5
	bl ReadFlash
	ldrb r0, [r5]
	cmp r0, #68
	bne _0802A4A6
	ldrb r0, [r5, #1]
	cmp r0, #75
	beq _0802A474
_0802A4A6:
	add r4, r4, #1
	cmp r4, #1
	ble _0802A48A
	mov r0, #1
_0802A4AE:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A464

	THUMB_FUNC_START help_init_callback
help_init_callback: @ 0x0802A4B4
	push {r4,lr}
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802A4F8  @ =0x03000130
	mov r4, #1
	strb r4, [r0]
	ldr r1, _0802A4FC  @ =0x03000131
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0802A500  @ =0x03000132
	mov r0, #2
	strb r0, [r1]
	mov r0, #5
	mov r1, #2
	bl copy_palettes_to_vram
	ldr r0, _0802A504  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0802A50C
	ldr r1, _0802A508  @ =0x03000133
	mov r0, #0
	strb r0, [r1]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A4F8:
	.4byte 0x03000130
_0802A4FC:
	.4byte 0x03000131
_0802A500:
	.4byte 0x03000132
_0802A504:
	.4byte gUnknown_03001938
_0802A508:
	.4byte 0x03000133
_0802A50C:
	mov r3, #4
	add r0, r1, #0
	and r0, r0, r3
	cmp r0, #0
	bne _0802A59E
	mov r4, #8
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, #0
	beq _0802A52C
	ldr r0, _0802A528  @ =0x03000133
	strb r2, [r0]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A528:
	.4byte 0x03000133
_0802A52C:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802A540
	ldr r1, _0802A53C  @ =0x03000133
	mov r0, #3
	strb r0, [r1]
	b _0802A5A2
_0802A53C:
	.4byte 0x03000133
_0802A540:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802A554
	ldr r0, _0802A550  @ =0x03000133
	strb r3, [r0]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A550:
	.4byte 0x03000133
_0802A554:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0802A568
	ldr r1, _0802A564  @ =0x03000133
	mov r0, #5
	strb r0, [r1]
	b _0802A5A2
_0802A564:
	.4byte 0x03000133
_0802A568:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802A57C
	ldr r1, _0802A578  @ =0x03000133
	mov r0, #6
	strb r0, [r1]
	b _0802A5A2
_0802A578:
	.4byte 0x03000133
_0802A57C:
	mov r0, #128
	lsl r0, r0, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0802A594
	ldr r1, _0802A590  @ =0x03000133
	mov r0, #7
	strb r0, [r1]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A590:
	.4byte 0x03000133
_0802A594:
	mov r0, #128
	lsl r0, r0, #7
	and r1, r1, r0
	cmp r1, #0
	beq _0802A5A2
_0802A59E:
	ldr r0, _0802A5A8  @ =0x03000133
	strb r4, [r0]
_0802A5A2:
	pop {r4}
	pop {r0}
	bx r0
_0802A5A8:
	.4byte 0x03000133
	THUMB_FUNC_END help_init_callback

	THUMB_FUNC_START sub_0802A5AC
sub_0802A5AC: @ 0x0802A5AC
	push {r4,r5,lr}
	mov r3, #0
	ldr r5, _0802A5F0  @ =0x03000130
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802A5FC
	ldr r2, _0802A5F4  @ =0x03000131
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802A5F8  @ =0x03000132
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #8
	bls _0802A5D6
	mov r0, #8
	strb r0, [r2]
	mov r3, #1
_0802A5D6:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _0802A5E8
	mov r0, #5
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A5E8:
	cmp r3, #2
	bne _0802A638
	strb r3, [r5]
	b _0802A638
_0802A5F0:
	.4byte 0x03000130
_0802A5F4:
	.4byte 0x03000131
_0802A5F8:
	.4byte 0x03000132
_0802A5FC:
	cmp r0, #3
	bne _0802A638
	ldr r2, _0802A640  @ =0x03000131
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802A644  @ =0x03000132
	ldrb r1, [r4]
	sub r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _0802A61E
	mov r0, #4
	strb r0, [r2]
	mov r3, #1
_0802A61E:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802A630
	mov r0, #2
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A630:
	cmp r3, #2
	bne _0802A638
	mov r0, #0
	strb r0, [r5]
_0802A638:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A640:
	.4byte 0x03000131
_0802A644:
	.4byte 0x03000132
	THUMB_FUNC_END sub_0802A5AC

	THUMB_FUNC_START sub_0802A648
sub_0802A648: @ 0x0802A648
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r4, _0802A76C  @ =0x040000D4
	ldr r0, _0802A770  @ =gUnknown_082E4C4C
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802A774  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802A778  @ =0x84000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #16
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r4, _0802A77C  @ =0x03000131
	ldrb r1, [r4]
	lsl r1, r1, #5
	mov r0, #240
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #4]
	ldr r2, _0802A780  @ =0x03000132
	ldrb r3, [r2]
	lsl r1, r3, #5
	mov r0, #160
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r0, #0
	mov r8, r0
	cmp r8, r3
	bcs _0802A75C
_0802A6A6:
	mov r6, #0
	mov r1, #1
	add r1, r1, r8
	mov r10, r1
	ldr r2, _0802A77C  @ =0x03000131
	ldrb r2, [r2]
	cmp r6, r2
	bcs _0802A74C
	ldr r7, _0802A76C  @ =0x040000D4
	ldr r4, _0802A784  @ =gOamBuffer
	ldr r3, _0802A788  @ =0x000003FF
	ldr r0, [sp]
	and r0, r0, r3
	mov r12, r0
	ldr r1, _0802A78C  @ =gUnknown_082E4C44
	mov r9, r1
_0802A6C6:
	mov r2, r9
	str r2, [r7]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0802A790  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #4]
	ldr r0, _0802A794  @ =0xFFFFFC00
	and r0, r0, r2
	mov r3, r12
	orr r0, r0, r3
	strh r0, [r1, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	lsl r1, r6, #5
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r3, _0802A798  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802A79C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r2, r8
	lsl r0, r2, #5
	ldr r3, [sp, #8]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _0802A77C  @ =0x03000131
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0802A6C6
_0802A74C:
	mov r1, r10
	lsl r0, r1, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, _0802A780  @ =0x03000132
	ldrb r2, [r2]
	cmp r8, r2
	bcc _0802A6A6
_0802A75C:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802A76C:
	.4byte 0x040000D4
_0802A770:
	.4byte gUnknown_082E4C4C
_0802A774:
	.4byte 0x06010000
_0802A778:
	.4byte 0x84000080
_0802A77C:
	.4byte 0x03000131
_0802A780:
	.4byte 0x03000132
_0802A784:
	.4byte gOamBuffer
_0802A788:
	.4byte 0x000003FF
_0802A78C:
	.4byte gUnknown_082E4C44
_0802A790:
	.4byte 0x84000002
_0802A794:
	.4byte 0xFFFFFC00
_0802A798:
	.4byte 0x000001FF
_0802A79C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802A648

	THUMB_FUNC_START sub_0802A7A0
sub_0802A7A0: @ 0x0802A7A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r4, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, _0802A8C4  @ =gUnknown_08079F00
	mov r8, r0
	ldr r0, _0802A8C8  @ =gUnknown_08079ED0
	ldr r3, [r0]
	mov r1, #0
	mov r12, r1
	ldr r5, _0802A8CC  @ =0x040000D4
	ldr r2, _0802A8D0  @ =0x03000138
	mov r9, r2
_0802A7C4:
	ldr r0, [r3, #20]
	str r0, [r5]
	ldrh r0, [r6]
	ldr r1, _0802A8D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldrh r0, [r3, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r0, r12
	lsl r2, r0, #16
	asr r2, r2, #16
	lsl r0, r2, #1
	add r0, r0, r9
	ldrh r1, [r7]
	strh r1, [r0]
	ldrh r0, [r3, #6]
	ldrh r1, [r7]
	add r0, r0, r1
	strh r0, [r7]
	ldrh r0, [r3, #8]
	ldrh r1, [r6]
	add r0, r0, r1
	strh r0, [r6]
	add r2, r2, #1
	lsl r2, r2, #16
	add r3, r3, #24
	lsr r0, r2, #16
	mov r12, r0
	asr r2, r2, #16
	cmp r2, #11
	ble _0802A7C4
	mov r1, #0
	str r1, [sp]
	ldr r6, _0802A8CC  @ =0x040000D4
	ldr r5, _0802A8D8  @ =gOamBuffer
	ldr r2, _0802A8D0  @ =0x03000138
	mov r12, r2
	ldr r3, _0802A8DC  @ =0xFFFFFE00
	mov r10, r3
	mov r7, #13
	neg r7, r7
	mov r9, r7
_0802A822:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #16]
	str r0, [r6]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r6, #4]
	ldr r0, _0802A8E0  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	mov r7, r8
	ldr r0, [r7, #4]
	lsl r0, r0, #1
	add r0, r0, r12
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r7, _0802A8E4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0802A8E8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	mov r3, #8
	ldrsh r2, [r0, r3]
	ldr r7, _0802A8EC  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
	ldrh r1, [r2, #10]
	strb r1, [r0]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, r9
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r3, [sp]
	lsl r0, r3, #16
	mov r7, #128
	lsl r7, r7, #9
	add r0, r0, r7
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #12
	add r8, r8, r0
	ldr r1, [sp]
	cmp r1, #42
	bls _0802A822
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
_0802A8C4:
	.4byte gUnknown_08079F00
_0802A8C8:
	.4byte gUnknown_08079ED0
_0802A8CC:
	.4byte 0x040000D4
_0802A8D0:
	.4byte 0x03000138
_0802A8D4:
	.4byte 0x06010000
_0802A8D8:
	.4byte gOamBuffer
_0802A8DC:
	.4byte 0xFFFFFE00
_0802A8E0:
	.4byte 0x84000002
_0802A8E4:
	.4byte 0x000003FF
_0802A8E8:
	.4byte 0xFFFFFC00
_0802A8EC:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_0802A7A0

	THUMB_FUNC_START sub_0802A8F0
sub_0802A8F0: @ 0x0802A8F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	mov r2, #0
	ldr r1, _0802A9F4  @ =gUnknown_0807A92C
	ldr r3, _0802A9F8  @ =0x03000133
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #4
	ldrsh r0, [r0, r4]
	cmp r2, r0
	bge _0802A9E6
	mov r10, r3
	ldr r7, _0802A9FC  @ =0x040000D4
	ldr r0, _0802AA00  @ =gOamBuffer
	mov r12, r0
_0802A91C:
	mov r3, r10
	ldrb r1, [r3]
	lsl r1, r1, #3
	ldr r4, _0802A9F4  @ =gUnknown_0807A92C
	add r1, r1, r4
	lsl r5, r2, #16
	asr r5, r5, #16
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #3
	ldr r4, [r1]
	add r4, r4, r0
	ldr r0, [r4, #20]
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r1, _0802AA04  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r4, #16]
	str r0, [r7]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r7, #4]
	ldr r0, _0802AA08  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r3, r9
	ldrh r0, [r3]
	ldr r1, _0802AA0C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0802AA10  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	mov r0, #0
	ldrsh r2, [r4, r0]
	ldr r3, _0802AA14  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802AA18  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4, #6]
	mov r1, r9
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r9
	strh r0, [r2]
	ldrh r0, [r4, #8]
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	add r5, r5, #1
	lsl r5, r5, #16
	mov r1, r10
	ldrb r0, [r1]
	lsl r0, r0, #3
	ldr r2, _0802A9F4  @ =gUnknown_0807A92C
	add r0, r0, r2
	lsr r2, r5, #16
	asr r5, r5, #16
	mov r3, #4
	ldrsh r0, [r0, r3]
	cmp r5, r0
	blt _0802A91C
_0802A9E6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802A9F4:
	.4byte gUnknown_0807A92C
_0802A9F8:
	.4byte 0x03000133
_0802A9FC:
	.4byte 0x040000D4
_0802AA00:
	.4byte gOamBuffer
_0802AA04:
	.4byte 0x06010000
_0802AA08:
	.4byte 0x84000002
_0802AA0C:
	.4byte 0x000003FF
_0802AA10:
	.4byte 0xFFFFFC00
_0802AA14:
	.4byte 0x000001FF
_0802AA18:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802A8F0

	THUMB_FUNC_START sub_0802AA1C
sub_0802AA1C: @ 0x0802AA1C
	push {lr}
	bl sub_08038B18
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AA1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START help_main_callback
help_main_callback: @ 0x0802AA28
	push {lr}
	sub sp, sp, #12
	bl process_input
	ldr r2, _0802AA4C  @ =0x03000130
	ldrb r3, [r2]
	cmp r3, #2
	bne _0802AA54
	ldr r0, _0802AA50  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802AA84
	mov r0, #3
	strb r0, [r2]
	b _0802AA84
	.byte 0x00
	.byte 0x00
_0802AA4C:
	.4byte 0x03000130
_0802AA50:
	.4byte gUnknown_030012E8
_0802AA54:
	cmp r3, #0
	bne _0802AA84
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802AA8C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #19
	mov r1, #0
	bl sub_080070E8
	bl sub_08072118
_0802AA84:
	add sp, sp, #12
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AA8C:
	.4byte 0x00007FFF
	THUMB_FUNC_END help_main_callback

	THUMB_FUNC_START help_display_callback
help_display_callback: @ 0x0802AA90
	push {lr}
	bl demo_display_callback
	pop {r0}
	bx r0
	THUMB_FUNC_END help_display_callback

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802AA9C
sub_0802AA9C: @ 0x0802AA9C
	push {r4-r6,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, _0802AACC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #17
	bne _0802AAE2
	ldr r0, _0802AAD0  @ =0x03000130
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AAE2
	cmp r0, #2
	bne _0802AAD4
	add r0, r4, #0
	bl sub_0802A8F0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802A7A0
	b _0802AAE2
	.byte 0x00
	.byte 0x00
_0802AACC:
	.4byte gMainState
_0802AAD0:
	.4byte 0x03000130
_0802AAD4:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802A648
	bl sub_0802A5AC
_0802AAE2:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AA9C

	THUMB_FUNC_START respawn_init_callback
respawn_init_callback: @ 0x0802AAE8
	push {r4-r7,lr}
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802AB18  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AB24
	ldr r1, _0802AB1C  @ =0x03000154
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0802AB20  @ =0x03000155
	mov r0, #2
	strb r0, [r1]
	mov r0, #4
	mov r1, #2
	bl copy_palettes_to_vram
	b _0802AC82
_0802AB18:
	.4byte gMainState
_0802AB1C:
	.4byte 0x03000154
_0802AB20:
	.4byte 0x03000155
_0802AB24:
	cmp r0, #2
	bne _0802AB2C
	bl sub_080720AC
_0802AB2C:
	ldr r7, _0802AB58  @ =gUnknown_0807A974
	ldr r0, _0802AB5C  @ =gUnknown_03000B74
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r5, r0, #25
	ldr r6, _0802AB60  @ =gUnknown_03000B58
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r3, [r0]
	cmp r3, #1
	beq _0802ABA8
	cmp r3, #1
	bgt _0802AB64
	cmp r3, #0
	beq _0802AB6E
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802AB58:
	.4byte gUnknown_0807A974
_0802AB5C:
	.4byte gUnknown_03000B74
_0802AB60:
	.4byte gUnknown_03000B58
_0802AB64:
	cmp r3, #2
	beq _0802ABF8
	cmp r3, #3
	beq _0802AC40
	b _0802AC82
_0802AB6E:
	ldr r2, _0802AB90  @ =0x03000156
	ldr r1, _0802AB94  @ =0x03000152
	ldrb r0, [r0, #1]
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _0802AB98  @ =0x03000157
	mov r2, #20
	strb r2, [r0]
	ldr r0, _0802AB9C  @ =0x03000153
	strb r3, [r0]
	ldr r1, _0802ABA0  @ =0x03000154
	mov r0, #30
	strb r0, [r1]
	ldr r0, _0802ABA4  @ =0x03000155
	strb r2, [r0]
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802AB90:
	.4byte 0x03000156
_0802AB94:
	.4byte 0x03000152
_0802AB98:
	.4byte 0x03000157
_0802AB9C:
	.4byte 0x03000153
_0802ABA0:
	.4byte 0x03000154
_0802ABA4:
	.4byte 0x03000155
_0802ABA8:
	ldr r1, _0802ABE0  @ =0x03000156
	ldrb r0, [r0, #1]
	mov r2, #30
	sub r0, r2, r0
	strb r0, [r1]
	ldr r0, _0802ABE4  @ =0x03000157
	mov r4, #20
	strb r4, [r0]
	ldr r0, _0802ABE8  @ =0x03000152
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802ABEC  @ =0x03000153
	strb r1, [r0]
	ldr r3, _0802ABF0  @ =0x03000154
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	sub r2, r2, r0
	strb r2, [r3]
	ldr r0, _0802ABF4  @ =0x03000155
	strb r4, [r0]
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802ABE0:
	.4byte 0x03000156
_0802ABE4:
	.4byte 0x03000157
_0802ABE8:
	.4byte 0x03000152
_0802ABEC:
	.4byte 0x03000153
_0802ABF0:
	.4byte 0x03000154
_0802ABF4:
	.4byte 0x03000155
_0802ABF8:
	ldr r0, _0802AC28  @ =0x03000156
	mov r4, #30
	strb r4, [r0]
	ldr r3, _0802AC2C  @ =0x03000157
	ldr r2, _0802AC30  @ =0x03000153
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	strb r0, [r2]
	strb r0, [r3]
	ldr r1, _0802AC34  @ =0x03000152
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0802AC38  @ =0x03000154
	strb r4, [r0]
	ldr r1, _0802AC3C  @ =0x03000155
	mov r0, #20
	strb r0, [r1]
	b _0802AC82
_0802AC28:
	.4byte 0x03000156
_0802AC2C:
	.4byte 0x03000157
_0802AC30:
	.4byte 0x03000153
_0802AC34:
	.4byte 0x03000152
_0802AC38:
	.4byte 0x03000154
_0802AC3C:
	.4byte 0x03000155
_0802AC40:
	ldr r0, _0802AC90  @ =0x03000156
	mov r4, #30
	strb r4, [r0]
	ldr r3, _0802AC94  @ =0x03000157
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	mov r2, #20
	sub r0, r2, r0
	strb r0, [r3]
	ldr r0, _0802AC98  @ =0x03000152
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802AC9C  @ =0x03000153
	strb r1, [r0]
	ldr r0, _0802ACA0  @ =0x03000154
	strb r4, [r0]
	ldr r3, _0802ACA4  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	sub r2, r2, r0
	strb r2, [r3]
_0802AC82:
	ldr r1, _0802ACA8  @ =0x03000150
	mov r0, #1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AC90:
	.4byte 0x03000156
_0802AC94:
	.4byte 0x03000157
_0802AC98:
	.4byte 0x03000152
_0802AC9C:
	.4byte 0x03000153
_0802ACA0:
	.4byte 0x03000154
_0802ACA4:
	.4byte 0x03000155
_0802ACA8:
	.4byte 0x03000150
	THUMB_FUNC_END respawn_init_callback

	THUMB_FUNC_START respawn_main_callback
respawn_main_callback: @ 0x0802ACAC
	push {r4,lr}
	ldr r2, _0802ACF4  @ =0x03000150
	ldrb r0, [r2]
	cmp r0, #2
	bne _0802AD38
	ldr r1, _0802ACF8  @ =0x03000151
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #30
	bne _0802ADA4
	mov r0, #3
	strb r0, [r2]
	ldr r0, _0802ACFC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AD0A
	bl sub_080072A4
	bl sub_08040B28
	ldr r4, _0802AD00  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0802AD04
	mov r0, #0
	bl sub_0802BEA4
	b _0802AD16
	.byte 0x00
	.byte 0x00
_0802ACF4:
	.4byte 0x03000150
_0802ACF8:
	.4byte 0x03000151
_0802ACFC:
	.4byte gMainState
_0802AD00:
	.4byte gUnknown_03000B90
_0802AD04:
	bl sub_0802BE50
	b _0802AD16
_0802AD0A:
	bl sub_0802C71C
	ldr r0, _0802AD2C  @ =gUnknown_03000B90
	ldr r0, [r0, #12]
	bl _call_via_r0
_0802AD16:
	ldr r2, _0802AD30  @ =0x0300196C
	ldr r1, _0802AD34  @ =0x030019DC
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #1
	mov r1, #1
	bl sub_080035C0
	b _0802ADA4
	.byte 0x00
	.byte 0x00
_0802AD2C:
	.4byte gUnknown_03000B90
_0802AD30:
	.4byte 0x0300196C
_0802AD34:
	.4byte 0x030019DC
_0802AD38:
	cmp r0, #0
	bne _0802AD72
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802AD5C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802AD60  @ =0x03001B98
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802AD64  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AD68
	mov r0, #15
	b _0802AD6A
	.byte 0x00
	.byte 0x00
_0802AD5C:
	.4byte 0x00007FFF
_0802AD60:
	.4byte 0x03001B98
_0802AD64:
	.4byte gMainState
_0802AD68:
	mov r0, #6
_0802AD6A:
	mov r1, #0
	bl sub_080070E8
	b _0802ADA4
_0802AD72:
	cmp r0, #3
	bne _0802ADA4
	ldr r0, _0802AD98  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802ADA4
	ldr r4, _0802AD9C  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0802ADA0
	mov r0, #0
	bl sub_0802BEA4
	b _0802ADA4
	.byte 0x00
	.byte 0x00
_0802AD98:
	.4byte gMainState
_0802AD9C:
	.4byte gUnknown_03000B90
_0802ADA0:
	bl sub_0802BE50
_0802ADA4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END respawn_main_callback

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802ADAC
sub_0802ADAC: @ 0x0802ADAC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r4, _0802ADE0  @ =0x03000150
	ldrb r1, [r4]
	cmp r1, #1
	bne _0802AE14
	ldr r3, _0802ADE4  @ =0x03000156
	ldrb r1, [r3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r3]
	cmp r0, #0
	ble _0802ADEC
	ldr r0, _0802ADE8  @ =0x03000154
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AE5C
	b _0802ADFE
_0802ADE0:
	.4byte 0x03000150
_0802ADE4:
	.4byte 0x03000156
_0802ADE8:
	.4byte 0x03000154
_0802ADEC:
	ldr r0, _0802AE0C  @ =0x03000152
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AE5C
_0802ADFE:
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r1, _0802AE10  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802AE5C
_0802AE0C:
	.4byte 0x03000152
_0802AE10:
	.4byte 0x03000151
_0802AE14:
	cmp r1, #3
	bne _0802AE5C
	ldr r3, _0802AE3C  @ =0x03000156
	ldrb r1, [r3]
	lsl r0, r2, #24
	asr r0, r0, #24
	sub r1, r1, r0
	strb r1, [r3]
	cmp r0, #0
	ble _0802AE44
	ldr r0, _0802AE40  @ =0x03000152
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AE5C
	b _0802AE56
_0802AE3C:
	.4byte 0x03000156
_0802AE40:
	.4byte 0x03000152
_0802AE44:
	ldr r0, _0802AE64  @ =0x03000154
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AE5C
_0802AE56:
	strb r2, [r3]
	mov r0, #0
	strb r0, [r4]
_0802AE5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AE64:
	.4byte 0x03000154
	THUMB_FUNC_END sub_0802ADAC

	THUMB_FUNC_START sub_0802AE68
sub_0802AE68: @ 0x0802AE68
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r4, _0802AE9C  @ =0x03000150
	ldrb r1, [r4]
	cmp r1, #1
	bne _0802AED0
	ldr r3, _0802AEA0  @ =0x03000157
	ldrb r1, [r3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r3]
	cmp r0, #0
	ble _0802AEA8
	ldr r0, _0802AEA4  @ =0x03000155
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AF18
	b _0802AEBA
_0802AE9C:
	.4byte 0x03000150
_0802AEA0:
	.4byte 0x03000157
_0802AEA4:
	.4byte 0x03000155
_0802AEA8:
	ldr r0, _0802AEC8  @ =0x03000153
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AF18
_0802AEBA:
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r1, _0802AECC  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802AF18
_0802AEC8:
	.4byte 0x03000153
_0802AECC:
	.4byte 0x03000151
_0802AED0:
	cmp r1, #3
	bne _0802AF18
	ldr r3, _0802AEF8  @ =0x03000157
	ldrb r1, [r3]
	lsl r0, r2, #24
	asr r0, r0, #24
	sub r1, r1, r0
	strb r1, [r3]
	cmp r0, #0
	ble _0802AF00
	ldr r0, _0802AEFC  @ =0x03000153
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AF18
	b _0802AF12
_0802AEF8:
	.4byte 0x03000157
_0802AEFC:
	.4byte 0x03000153
_0802AF00:
	ldr r0, _0802AF20  @ =0x03000155
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AF18
_0802AF12:
	strb r2, [r3]
	mov r0, #0
	strb r0, [r4]
_0802AF18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AF20:
	.4byte 0x03000155
	THUMB_FUNC_END sub_0802AE68

	THUMB_FUNC_START sub_0802AF24
sub_0802AF24: @ 0x0802AF24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B03C  @ =0x040000D4
	ldr r0, _0802B040  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B044  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B048  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B04C  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B050  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B02A
_0802AF70:
	ldr r1, _0802B054  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B058  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B01A
	ldr r0, _0802B03C  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B05C  @ =gOamBuffer
	ldr r1, _0802B060  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B064  @ =gUnknown_08342EAC
	mov r9, r3
_0802AF9A:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B068  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B06C  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B070  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B074  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B058  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802AF9A
_0802B01A:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B050  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802AF70
_0802B02A:
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
_0802B03C:
	.4byte 0x040000D4
_0802B040:
	.4byte gUnknown_08342EB4
_0802B044:
	.4byte 0x06010000
_0802B048:
	.4byte 0x84000040
_0802B04C:
	.4byte 0x03000153
_0802B050:
	.4byte 0x03000155
_0802B054:
	.4byte 0x03000152
_0802B058:
	.4byte 0x03000156
_0802B05C:
	.4byte gOamBuffer
_0802B060:
	.4byte 0x000003FF
_0802B064:
	.4byte gUnknown_08342EAC
_0802B068:
	.4byte 0x84000002
_0802B06C:
	.4byte 0xFFFFFC00
_0802B070:
	.4byte 0x000001FF
_0802B074:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802AF24

	THUMB_FUNC_START sub_0802B078
sub_0802B078: @ 0x0802B078
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B190  @ =0x040000D4
	ldr r0, _0802B194  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B198  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B19C  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B1A0  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B1A4  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B17E
_0802B0C4:
	ldr r1, _0802B1A8  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B1AC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B16E
	ldr r0, _0802B190  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B1B0  @ =gOamBuffer
	ldr r1, _0802B1B4  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B1B8  @ =gUnknown_08342EAC
	mov r9, r3
_0802B0EE:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B1BC  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B1C0  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B1C4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B1C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B1AC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B0EE
_0802B16E:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B1A4  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B0C4
_0802B17E:
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
_0802B190:
	.4byte 0x040000D4
_0802B194:
	.4byte gUnknown_08342EB4
_0802B198:
	.4byte 0x06010000
_0802B19C:
	.4byte 0x84000040
_0802B1A0:
	.4byte 0x03000153
_0802B1A4:
	.4byte 0x03000155
_0802B1A8:
	.4byte 0x03000156
_0802B1AC:
	.4byte 0x03000154
_0802B1B0:
	.4byte gOamBuffer
_0802B1B4:
	.4byte 0x000003FF
_0802B1B8:
	.4byte gUnknown_08342EAC
_0802B1BC:
	.4byte 0x84000002
_0802B1C0:
	.4byte 0xFFFFFC00
_0802B1C4:
	.4byte 0x000001FF
_0802B1C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B078

	THUMB_FUNC_START sub_0802B1CC
sub_0802B1CC: @ 0x0802B1CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B2E0  @ =0x040000D4
	ldr r0, _0802B2E4  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B2E8  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B2EC  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B2F0  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B2F4  @ =0x03000157
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B2CE
_0802B218:
	ldr r1, _0802B2F8  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B2FC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B2BE
	ldr r0, _0802B2E0  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B300  @ =gOamBuffer
	ldr r1, _0802B304  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B308  @ =gUnknown_08342EAC
	mov r9, r3
_0802B242:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B30C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B310  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B314  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B318  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B2FC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B242
_0802B2BE:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B2F4  @ =0x03000157
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B218
_0802B2CE:
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
_0802B2E0:
	.4byte 0x040000D4
_0802B2E4:
	.4byte gUnknown_08342EB4
_0802B2E8:
	.4byte 0x06010000
_0802B2EC:
	.4byte 0x84000040
_0802B2F0:
	.4byte 0x03000153
_0802B2F4:
	.4byte 0x03000157
_0802B2F8:
	.4byte 0x03000152
_0802B2FC:
	.4byte 0x03000154
_0802B300:
	.4byte gOamBuffer
_0802B304:
	.4byte 0x000003FF
_0802B308:
	.4byte gUnknown_08342EAC
_0802B30C:
	.4byte 0x84000002
_0802B310:
	.4byte 0xFFFFFC00
_0802B314:
	.4byte 0x000001FF
_0802B318:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B1CC

	THUMB_FUNC_START sub_0802B31C
sub_0802B31C: @ 0x0802B31C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B434  @ =0x040000D4
	ldr r0, _0802B438  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B43C  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B440  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B444  @ =0x03000157
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B448  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B422
_0802B368:
	ldr r1, _0802B44C  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B450  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B412
	ldr r0, _0802B434  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B454  @ =gOamBuffer
	ldr r1, _0802B458  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B45C  @ =gUnknown_08342EAC
	mov r9, r3
_0802B392:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B460  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B464  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B468  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B46C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B450  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B392
_0802B412:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B448  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B368
_0802B422:
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
_0802B434:
	.4byte 0x040000D4
_0802B438:
	.4byte gUnknown_08342EB4
_0802B43C:
	.4byte 0x06010000
_0802B440:
	.4byte 0x84000040
_0802B444:
	.4byte 0x03000157
_0802B448:
	.4byte 0x03000155
_0802B44C:
	.4byte 0x03000152
_0802B450:
	.4byte 0x03000154
_0802B454:
	.4byte gOamBuffer
_0802B458:
	.4byte 0x000003FF
_0802B45C:
	.4byte gUnknown_08342EAC
_0802B460:
	.4byte 0x84000002
_0802B464:
	.4byte 0xFFFFFC00
_0802B468:
	.4byte 0x000001FF
_0802B46C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B31C

	THUMB_FUNC_START sub_0802B470
sub_0802B470: @ 0x0802B470
	push {r4,r5,lr}
	mov r3, #0
	ldr r5, _0802B4BC  @ =0x03000150
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802B4CC
	ldr r2, _0802B4C0  @ =0x03000154
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802B4C4  @ =0x03000155
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #8
	ble _0802B49A
	mov r0, #8
	strb r0, [r2]
	mov r3, #1
_0802B49A:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #5
	ble _0802B4AC
	mov r0, #5
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802B4AC:
	cmp r3, #2
	bne _0802B508
	strb r3, [r5]
	ldr r1, _0802B4C8  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802B508
	.byte 0x00
	.byte 0x00
_0802B4BC:
	.4byte 0x03000150
_0802B4C0:
	.4byte 0x03000154
_0802B4C4:
	.4byte 0x03000155
_0802B4C8:
	.4byte 0x03000151
_0802B4CC:
	cmp r0, #3
	bne _0802B508
	ldr r2, _0802B510  @ =0x03000154
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802B514  @ =0x03000155
	ldrb r1, [r4]
	sub r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #3
	bgt _0802B4EE
	mov r0, #4
	strb r0, [r2]
	mov r3, #1
_0802B4EE:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _0802B500
	mov r0, #2
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802B500:
	cmp r3, #2
	bne _0802B508
	mov r0, #0
	strb r0, [r5]
_0802B508:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B510:
	.4byte 0x03000154
_0802B514:
	.4byte 0x03000155
	THUMB_FUNC_END sub_0802B470

	THUMB_FUNC_START sub_0802B518
sub_0802B518: @ 0x0802B518
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r4, _0802B640  @ =0x040000D4
	ldr r0, _0802B644  @ =gUnknown_082E29F4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B648  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B64C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #32
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r4, _0802B650  @ =0x03000154
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r1, r1, #5
	mov r0, #240
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #4]
	ldr r2, _0802B654  @ =0x03000155
	mov r3, #0
	ldrsb r3, [r2, r3]
	lsl r1, r3, #5
	mov r0, #160
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r1, #0
	cmp r1, r3
	bge _0802B62E
_0802B578:
	mov r6, #0
	ldr r2, _0802B650  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r1, #1
	mov r10, r3
	cmp r6, r0
	bge _0802B61E
	ldr r7, _0802B640  @ =0x040000D4
	ldr r4, _0802B658  @ =gOamBuffer
	ldr r0, _0802B65C  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r0
	mov r12, r2
	ldr r3, _0802B660  @ =gUnknown_082E29EC
	mov r9, r3
	lsl r0, r1, #5
	ldr r1, [sp, #8]
	add r0, r0, r1
	mov r8, r0
_0802B5A0:
	mov r2, r9
	str r2, [r7]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0802B664  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #4]
	ldr r0, _0802B668  @ =0xFFFFFC00
	and r0, r0, r2
	mov r3, r12
	orr r0, r0, r3
	strh r0, [r1, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	lsl r1, r6, #5
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r3, _0802B66C  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802B670  @ =0xFFFFFE00
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
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
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
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r2, _0802B650  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r6, r0
	blt _0802B5A0
_0802B61E:
	mov r3, r10
	lsl r0, r3, #16
	lsr r1, r0, #16
	ldr r2, _0802B654  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	blt _0802B578
_0802B62E:
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
_0802B640:
	.4byte 0x040000D4
_0802B644:
	.4byte gUnknown_082E29F4
_0802B648:
	.4byte 0x06010000
_0802B64C:
	.4byte 0x84000100
_0802B650:
	.4byte 0x03000154
_0802B654:
	.4byte 0x03000155
_0802B658:
	.4byte gOamBuffer
_0802B65C:
	.4byte 0x000003FF
_0802B660:
	.4byte gUnknown_082E29EC
_0802B664:
	.4byte 0x84000002
_0802B668:
	.4byte 0xFFFFFC00
_0802B66C:
	.4byte 0x000001FF
_0802B670:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B518

	THUMB_FUNC_START sub_0802B674
sub_0802B674: @ 0x0802B674
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r7, _0802B6A4  @ =gMainState
	ldr r0, [r7]
	cmp r0, #14
	bne _0802B6AC
	ldr r0, _0802B6A8  @ =0x03000150
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B778
	cmp r0, #2
	beq _0802B696
	bl sub_0802B470
_0802B696:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B518
	b _0802B778
	.byte 0x00
	.byte 0x00
_0802B6A4:
	.4byte gMainState
_0802B6A8:
	.4byte 0x03000150
_0802B6AC:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0806E594
	str r6, [sp]
	mov r0, #8
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0800A2B8
	ldr r0, [r7]
	cmp r0, #18
	bne _0802B778
	ldr r7, _0802B6FC  @ =0x03000150
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802B778
	ldr r3, _0802B700  @ =gUnknown_0807A974
	ldr r0, _0802B704  @ =gUnknown_03000B74
	ldrb r1, [r0]
	lsl r1, r1, #24
	asr r1, r1, #25
	ldr r0, _0802B708  @ =gUnknown_03000B58
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1]
	cmp r0, #1
	beq _0802B72E
	cmp r0, #1
	bgt _0802B70C
	cmp r0, #0
	beq _0802B716
	b _0802B778
_0802B6FC:
	.4byte 0x03000150
_0802B700:
	.4byte gUnknown_0807A974
_0802B704:
	.4byte gUnknown_03000B74
_0802B708:
	.4byte gUnknown_03000B58
_0802B70C:
	cmp r0, #2
	beq _0802B748
	cmp r0, #3
	beq _0802B760
	b _0802B778
_0802B716:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802AF24
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	bl sub_0802ADAC
	b _0802B778
_0802B72E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B078
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	neg r0, r0
	bl sub_0802ADAC
	b _0802B778
_0802B748:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B1CC
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	bl sub_0802AE68
	b _0802B778
_0802B760:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B31C
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	neg r0, r0
	bl sub_0802AE68
_0802B778:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B674

	THUMB_FUNC_START sub_0802B780
sub_0802B780: @ 0x0802B780
	push {lr}
	bl sub_08038B18
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B780

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START respawn_display_callback
respawn_display_callback: @ 0x0802B78C
	push {lr}
	bl demo_display_callback
	pop {r0}
	bx r0
	THUMB_FUNC_END respawn_display_callback

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802B798
sub_0802B798: @ 0x0802B798
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r2, #50
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0802B7A6
	b _0802B962
_0802B7A6:
	mov r0, #127
	and r0, r0, r1
	cmp r0, #9
	bne _0802B840
	ldr r7, _0802B828  @ =0x0300196C
	ldrb r6, [r7]
	cmp r6, #1
	bne _0802B7B8
	b _0802B962
_0802B7B8:
	ldr r0, _0802B82C  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B830  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B834  @ =0x030019DC
	strb r6, [r3]
	mov r0, #1
	strb r0, [r7]
	ldr r2, _0802B838  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #1
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B83C  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #3
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #56
	b _0802B8BA
	.byte 0x00
	.byte 0x00
_0802B828:
	.4byte 0x0300196C
_0802B82C:
	.4byte gUnknown_0807820C
_0802B830:
	.4byte 0x0000600C
_0802B834:
	.4byte 0x030019DC
_0802B838:
	.4byte gUnknown_030019A0
_0802B83C:
	.4byte 0x030019E4
_0802B840:
	cmp r0, #8
	bne _0802B8E0
	ldr r7, _0802B8C8  @ =0x0300196C
	ldrb r6, [r7]
	cmp r6, #2
	bne _0802B84E
	b _0802B962
_0802B84E:
	ldr r0, _0802B8CC  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B8D0  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B8D4  @ =0x030019DC
	strb r6, [r3]
	mov r0, #2
	strb r0, [r7]
	ldr r2, _0802B8D8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #2
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B8DC  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #4
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #57
_0802B8BA:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	b _0802B962
	.byte 0x00
	.byte 0x00
_0802B8C8:
	.4byte 0x0300196C
_0802B8CC:
	.4byte gUnknown_0807820C
_0802B8D0:
	.4byte 0x0000600C
_0802B8D4:
	.4byte 0x030019DC
_0802B8D8:
	.4byte gUnknown_030019A0
_0802B8DC:
	.4byte 0x030019E4
_0802B8E0:
	cmp r0, #10
	bne _0802B962
	ldr r7, _0802B96C  @ =0x0300196C
	ldrb r6, [r7]
	cmp r6, #3
	beq _0802B962
	ldr r0, _0802B970  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B974  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B978  @ =0x030019DC
	strb r6, [r3]
	mov r0, #3
	strb r0, [r7]
	ldr r2, _0802B97C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #3
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B980  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #5
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #58
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802B962:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B96C:
	.4byte 0x0300196C
_0802B970:
	.4byte gUnknown_0807820C
_0802B974:
	.4byte 0x0000600C
_0802B978:
	.4byte 0x030019DC
_0802B97C:
	.4byte gUnknown_030019A0
_0802B980:
	.4byte 0x030019E4
	THUMB_FUNC_END sub_0802B798

	THUMB_FUNC_START sub_0802B984
sub_0802B984: @ 0x0802B984
	ldr r0, _0802B994  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #9
	orr r1, r1, r2
	str r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0802B994:
	.4byte gUnknown_030019A0
	THUMB_FUNC_END sub_0802B984

	THUMB_FUNC_START sub_0802B998
sub_0802B998: @ 0x0802B998
	push {r4,r5,lr}
	ldr r5, _0802B9CC  @ =0x080006D8
	ldr r0, _0802B9D0  @ =0x00001068
	bl arena_allocate
	add r4, r0, #0
	ldr r2, _0802B9D4  @ =0x0400041A
	add r0, r5, #0
	add r1, r4, #0
	bl CpuSet
	ldr r0, _0802B9D8  @ =0x03000C2C
	str r4, [r0]
	ldr r3, _0802B9DC  @ =0x03000970
	ldr r2, _0802B9E0  @ =gUnknown_0807AA1C
	mov r1, #14
_0802B9B8:
	ldm r2!, {r0}
	sub r0, r0, r5
	add r0, r4, r0
	stm r3!, {r0}
	sub r1, r1, #1
	cmp r1, #0
	bge _0802B9B8
	pop {r4,r5}
	pop {r0}
	bx r0
_0802B9CC:
	.4byte sub_080006D8
_0802B9D0:
	.4byte 0x00001068
_0802B9D4:
	.4byte 0x0400041A
_0802B9D8:
	.4byte 0x03000C2C
_0802B9DC:
	.4byte 0x03000970
_0802B9E0:
	.4byte gUnknown_0807AA1C
	THUMB_FUNC_END sub_0802B998

	THUMB_FUNC_START sub_0802B9E4
sub_0802B9E4: @ 0x0802B9E4
	push {lr}
	mov r0, #240
	lsl r0, r0, #1
	bl arena_allocate
	ldr r1, _0802B9FC  @ =0x03000C30
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B9FC:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802B9E4

	THUMB_FUNC_START sub_0802BA00
sub_0802BA00: @ 0x0802BA00
	push {r4,r5,lr}
	ldr r4, _0802BA2C  @ =0x03000C30
	ldr r5, [r4, #4]
	cmp r5, #0
	bne _0802BA16
	mov r0, #240
	lsl r0, r0, #1
	bl arena_allocate
	str r0, [r4, #4]
	str r5, [r4]
_0802BA16:
	ldr r2, [r4]
	cmp r2, #29
	bhi _0802BA30
	lsl r1, r2, #4
	ldr r0, [r4, #4]
	add r0, r0, r1
	add r1, r2, #1
	str r1, [r4]
	mov r1, #0
	str r1, [r0, #12]
	b _0802BA32
_0802BA2C:
	.4byte 0x03000C30
_0802BA30:
	mov r0, #0
_0802BA32:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BA00

	THUMB_FUNC_START sub_0802BA38
sub_0802BA38: @ 0x0802BA38
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r0
	mov r8, r1
	add r7, r2, #0
	add r6, r3, #0
	ldr r1, _0802BA90  @ =0x03000C30
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0802BA84
	add r4, r0, #0
	ldr r0, [r1]
	lsl r0, r0, #4
	add r5, r4, r0
	cmp r4, r5
	bcs _0802BA84
_0802BA5C:
	ldr r1, [r4, #8]
	ldr r0, [r4, #12]
	cmp r1, r0
	beq _0802BA7E
	add r0, r4, #0
	mov r2, r9
	mov r3, r8
	bl sub_080064D4
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_080064D4
	ldr r0, [r4, #8]
	str r0, [r4, #12]
_0802BA7E:
	add r4, r4, #16
	cmp r4, r5
	bcc _0802BA5C
_0802BA84:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802BA90:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802BA38

	THUMB_FUNC_START sub_0802BA94
sub_0802BA94: @ 0x0802BA94
	ldr r1, _0802BA9C  @ =0x03000C30
	mov r0, #0
	str r0, [r1, #4]
	bx lr
_0802BA9C:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802BA94

	THUMB_FUNC_START sub_0802BAA0
sub_0802BAA0: @ 0x0802BAA0
	push {r4-r7,lr}
	ldr r0, _0802BACC  @ =0x03000C40
	ldr r1, [r0, #32]
	cmp r1, #0
	beq _0802BB1A
	add r4, r1, #0
	ldr r1, [r0, #28]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r7, r4, r0
	cmp r4, r7
	bcs _0802BB1A
_0802BABA:
	ldr r6, [r4]
	cmp r6, #0
	beq _0802BB14
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802BAD0
	sub r0, r0, #1
	b _0802BB12
	.byte 0x00
	.byte 0x00
_0802BACC:
	.4byte 0x03000C40
_0802BAD0:
	ldr r2, [r4, #8]
	ldr r5, _0802BB0C  @ =0x03000C40
	ldr r1, [r2, #8]
	ldr r0, [r5, #24]
	add r3, r1, r0
	str r3, [r2, #8]
	lsl r0, r6, #3
	add r1, r5, #4
	add r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _0802BB10
	ldr r1, [r5, #32]
	sub r1, r4, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_0802BC64
	b _0802BB14
_0802BB0C:
	.4byte 0x03000C40
_0802BB10:
	ldrb r0, [r3, #12]
_0802BB12:
	strb r0, [r4, #4]
_0802BB14:
	add r4, r4, #12
	cmp r4, r7
	bcc _0802BABA
_0802BB1A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BAA0

	THUMB_FUNC_START sub_0802BB20
sub_0802BB20: @ 0x0802BB20
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _0802BB48  @ =0x03000C40
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0802BB2E:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0802BB2E
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BB48:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BB20

	THUMB_FUNC_START sub_0802BB4C
sub_0802BB4C: @ 0x0802BB4C
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #84
	bl arena_allocate
	add r1, r0, #0
	ldr r4, _0802BB78  @ =0x03000C40
	str r1, [r4, #32]
	mov r2, sp
	mov r0, #0
	strh r0, [r2]
	ldr r2, _0802BB7C  @ =0x0100002A
	mov r0, sp
	bl CpuSet
	mov r0, #0
	str r0, [r4, #28]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BB78:
	.4byte 0x03000C40
_0802BB7C:
	.4byte 0x0100002A
	THUMB_FUNC_END sub_0802BB4C

	THUMB_FUNC_START sub_0802BB80
sub_0802BB80: @ 0x0802BB80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #16
	lsr r6, r2, #16
	ldr r5, _0802BBC8  @ =0x03000C40
	ldr r4, [r5, #32]
	cmp r4, #0
	bne _0802BBB4
	mov r0, #84
	bl arena_allocate
	add r1, r0, #0
	str r1, [r5, #32]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _0802BBCC  @ =0x0100002A
	bl CpuSet
	str r4, [r5, #28]
_0802BBB4:
	ldr r0, [r5, #28]
	cmp r0, #6
	bhi _0802BBC4
	bl sub_0802BA00
	add r4, r0, #0
	cmp r4, #0
	bne _0802BBD0
_0802BBC4:
	mov r0, #0
	b _0802BBF4
_0802BBC8:
	.4byte 0x03000C40
_0802BBCC:
	.4byte 0x0100002A
_0802BBD0:
	ldr r3, [r5, #28]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	ldr r2, [r5, #32]
	add r2, r2, r1
	add r3, r3, #1
	str r3, [r5, #28]
	mov r1, #0
	strb r1, [r2, #4]
	str r1, [r2]
	str r4, [r2, #8]
	strh r6, [r2, #6]
	mov r1, r8
	str r1, [r4]
	str r7, [r4, #4]
	ldr r1, [r5]
	str r1, [r4, #8]
_0802BBF4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BB80

	THUMB_FUNC_START sub_0802BC00
sub_0802BC00: @ 0x0802BC00
	push {r4,lr}
	ldr r1, _0802BC48  @ =gUnknown_0807820C
	ldr r1, [r1]
	lsl r0, r0, #1
	ldr r2, _0802BC4C  @ =0x0000600C
	add r1, r1, r2
	add r1, r1, r0
	ldrh r4, [r1]
	ldr r3, _0802BC50  @ =0x03000C40
	ldr r2, [r3, #32]
	ldr r1, [r3, #28]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r2, r0
	cmp r2, r1
	bcs _0802BC5A
_0802BC22:
	ldrh r0, [r2, #6]
	cmp r0, r4
	bne _0802BC54
	ldr r1, [r3, #32]
	sub r1, r2, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #2
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _0802BC5C
_0802BC48:
	.4byte gUnknown_0807820C
_0802BC4C:
	.4byte 0x0000600C
_0802BC50:
	.4byte 0x03000C40
_0802BC54:
	add r2, r2, #12
	cmp r2, r1
	bcc _0802BC22
_0802BC5A:
	mov r0, #1
_0802BC5C:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BC00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BC64
sub_0802BC64: @ 0x0802BC64
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _0802BC94  @ =0x03000C40
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r4, #32]
	add r2, r0, r1
	ldr r0, [r2]
	cmp r0, r3
	beq _0802BC8E
	str r3, [r2]
	ldr r1, [r2, #8]
	lsl r0, r3, #3
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldrb r0, [r0, #12]
	strb r0, [r2, #4]
_0802BC8E:
	pop {r4}
	pop {r0}
	bx r0
_0802BC94:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BC64

	THUMB_FUNC_START sub_0802BC98
sub_0802BC98: @ 0x0802BC98
	ldr r1, _0802BCA0  @ =0x03000C40
	mov r0, #0
	str r0, [r1, #32]
	bx lr
_0802BCA0:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BC98

	THUMB_FUNC_START sub_0802BCA4
sub_0802BCA4: @ 0x0802BCA4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	add r2, r0, #0
	add r6, r1, #0
	mov r3, #104
	cmp r2, #0
	beq _0802BCDC
	ldr r1, [r2]
	cmp r1, #0
	bge _0802BCDC
	ldr r0, _0802BCD8  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, r3
	bls _0802BCDC
	ldr r0, [r2, #104]
	cmp r0, #0
	beq _0802BCDC
	add r1, r2, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0802BCDC
	add r5, r1, #0
	b _0802BCF2
	.byte 0x00
	.byte 0x00
_0802BCD8:
	.4byte 0x7FFFFFFF
_0802BCDC:
	cmp r6, #0
	bne _0802BCF0
	ldr r1, _0802BCEC  @ =0x03000C90
	str r6, [r1, #24]
	mov r0, #4
	strh r0, [r1, #8]
	b _0802BDF0
	.byte 0x00
	.byte 0x00
_0802BCEC:
	.4byte 0x03000C90
_0802BCF0:
	ldr r5, _0802BD14  @ =gUnknown_0807BA58
_0802BCF2:
	ldr r0, _0802BD18  @ =0x08001840
	ldr r7, _0802BD1C  @ =0x08001760
	sub r4, r0, r7
	add r0, r4, #0
	bl arena_allocate
	add r1, r0, #0
	ldr r0, _0802BD20  @ =0x03000C90
	str r1, [r0, #24]
	cmp r6, #0
	beq _0802BD24
	lsl r2, r4, #10
	lsr r2, r2, #11
	add r0, r7, #0
	bl CpuSet
	b _0802BD2E
_0802BD14:
	.4byte gUnknown_0807BA58
_0802BD18:
	.4byte sub_08001840
_0802BD1C:
	.4byte sub_08001760
_0802BD20:
	.4byte 0x03000C90
_0802BD24:
	ldr r0, _0802BDFC  @ =0x0800169C
	lsl r2, r4, #10
	lsr r2, r2, #11
	bl CpuSet
_0802BD2E:
	ldrh r0, [r5, #2]
	lsl r0, r0, #4
	add r0, r0, #1
	bl arena_allocate
	ldr r1, _0802BE00  @ =0x03000C90
	str r0, [r1, #20]
	add r0, sp, #4
	mov r8, r0
	add r6, r1, #0
	add r6, r6, #12
	mov r4, #1
_0802BD46:
	mov r0, #228
	lsl r0, r0, #1
	bl arena_allocate
	stm r6!, {r0}
	sub r4, r4, #1
	cmp r4, #0
	bge _0802BD46
	mov r0, #0
	str r0, [sp]
	ldr r6, _0802BE00  @ =0x03000C90
	ldr r1, [r6, #20]
	ldrh r2, [r5, #2]
	lsl r2, r2, #2
	mov r0, #160
	lsl r0, r0, #19
	orr r2, r2, r0
	mov r0, sp
	bl CpuSet
	mov r4, #0
	ldrh r1, [r5, #2]
	cmp r4, r1
	bge _0802BD96
	add r3, r6, #0
	add r2, r5, #4
_0802BD7A:
	lsl r0, r4, #4
	ldr r1, [r3, #20]
	add r1, r1, r0
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r2, #8]
	strh r0, [r1, #12]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	add r2, r2, #12
	add r4, r4, #1
	ldrh r0, [r5, #2]
	cmp r4, r0
	blt _0802BD7A
_0802BD96:
	ldr r7, _0802BE04  @ =0x03000C70
	ldrh r0, [r5, #2]
	str r0, [r7, #24]
	ldr r6, _0802BE00  @ =0x03000C90
	ldr r0, [r6, #20]
	str r0, [r7, #20]
	ldrh r4, [r5]
	ldr r0, _0802BE08  @ =gUnknown_0807BB30
	lsl r4, r4, #2
	add r0, r4, r0
	ldr r0, [r0]
	str r0, [r7]
	mov r0, #0
	mov r1, r8
	strh r0, [r1]
	ldr r5, _0802BE0C  @ =gUnknown_03001730
	ldr r2, _0802BE10  @ =0x01000008
	mov r0, r8
	add r1, r5, #0
	bl CpuSet
	add r0, r4, r5
	str r0, [r7, #8]
	add r5, r5, #2
	add r4, r4, r5
	str r4, [r7, #12]
	ldr r0, _0802BE14  @ =0x04000005
	str r0, [r7, #4]
	ldr r0, [r7]
	str r0, [r6]
	ldr r0, [r6, #16]
	str r0, [r6, #4]
	mov r0, #3
	strh r0, [r6, #8]
	mov r0, #1
	strh r0, [r6, #10]
	ldr r4, [r6, #24]
	cmp r4, #0
	beq _0802BDF0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	bl _call_via_r4
_0802BDF0:
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802BDFC:
	.4byte sub_0800169C
_0802BE00:
	.4byte 0x03000C90
_0802BE04:
	.4byte 0x03000C70
_0802BE08:
	.4byte gUnknown_0807BB30
_0802BE0C:
	.4byte gUnknown_03001730
_0802BE10:
	.4byte 0x01000008
_0802BE14:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802BCA4

	THUMB_FUNC_START sub_0802BE18
sub_0802BE18: @ 0x0802BE18
	push {lr}
	add r2, r0, #0
	mov r3, #104
	cmp r2, #0
	beq _0802BE48
	ldr r1, [r2]
	cmp r1, #0
	bge _0802BE48
	ldr r0, _0802BE44  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, r3
	bls _0802BE48
	ldr r0, [r2, #104]
	cmp r0, #0
	beq _0802BE48
	add r0, r2, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0802BE48
	mov r0, #1
	b _0802BE4A
	.byte 0x00
	.byte 0x00
_0802BE44:
	.4byte 0x7FFFFFFF
_0802BE48:
	mov r0, #0
_0802BE4A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BE18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BE50
sub_0802BE50: @ 0x0802BE50
	push {r4,lr}
	ldr r0, _0802BE6C  @ =0x03000C90
	ldr r4, [r0, #24]
	cmp r4, #0
	beq _0802BE64
	ldr r1, _0802BE70  @ =0x03000C70
	mov r2, #0
	mov r3, #0
	bl _call_via_r4
_0802BE64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BE6C:
	.4byte 0x03000C90
_0802BE70:
	.4byte 0x03000C70
	THUMB_FUNC_END sub_0802BE50

	THUMB_FUNC_START sub_0802BE74
sub_0802BE74: @ 0x0802BE74
	push {lr}
	ldr r0, _0802BE94  @ =0x03000C90
	ldrh r1, [r0, #8]
	add r2, r0, #0
	cmp r1, #1
	bhi _0802BE9E
	cmp r1, #1
	bne _0802BE9A
	ldr r0, [r2, #4]
	ldr r1, [r2, #12]
	cmp r0, r1
	bne _0802BE98
	ldr r0, [r2, #16]
	str r0, [r2, #4]
	b _0802BE9A
	.byte 0x00
	.byte 0x00
_0802BE94:
	.4byte 0x03000C90
_0802BE98:
	str r1, [r2, #4]
_0802BE9A:
	mov r0, #0
	strh r0, [r2, #8]
_0802BE9E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BE74

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BEA4
sub_0802BEA4: @ 0x0802BEA4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r0, _0802BEDC  @ =0x03000C90
	ldr r5, [r0, #24]
	cmp r5, #0
	beq _0802BED4
	ldr r1, _0802BEE0  @ =0x03000C70
	ldr r2, _0802BEE4  @ =gUnknown_0807BA68
	ldr r4, _0802BEE8  @ =0x0300015A
	mov r7, #0
	ldrsh r3, [r4, r7]
	bl _call_via_r5
	cmp r6, #0
	beq _0802BED4
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bge _0802BED4
	mov r0, #99
	strh r0, [r4]
_0802BED4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BEDC:
	.4byte 0x03000C90
_0802BEE0:
	.4byte 0x03000C70
_0802BEE4:
	.4byte gUnknown_0807BA68
_0802BEE8:
	.4byte 0x0300015A
	THUMB_FUNC_END sub_0802BEA4

	THUMB_FUNC_START sub_0802BEEC
sub_0802BEEC: @ 0x0802BEEC
	push {lr}
	ldr r1, _0802BF14  @ =0x04000010
	mov r2, #8
	bl CpuSet
	ldr r1, _0802BF18  @ =0x03000C90
	ldrh r0, [r1, #8]
	cmp r0, #2
	bhi _0802BF0E
	ldrh r0, [r1, #10]
	cmp r0, #0
	beq _0802BF0E
	ldr r0, [r1, #4]
	ldr r1, [r1]
	mov r2, #1
	bl CpuSet
_0802BF0E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BF14:
	.4byte 0x04000010
_0802BF18:
	.4byte 0x03000C90
	THUMB_FUNC_END sub_0802BEEC

	THUMB_FUNC_START sub_0802BF1C
sub_0802BF1C: @ 0x0802BF1C
	ldr r1, _0802BF24  @ =0x0300015A
	mov r0, #0
	strh r0, [r1]
	bx lr
_0802BF24:
	.4byte 0x0300015A
	THUMB_FUNC_END sub_0802BF1C

	THUMB_FUNC_START sub_0802BF28
sub_0802BF28: @ 0x0802BF28
	ldr r2, _0802BF58  @ =0x04000200
	ldrh r0, [r2]
	mov r1, #4
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802BF5C  @ =0x04000005
	mov r0, #0
	strb r0, [r1]
	ldr r2, _0802BF60  @ =0x04000004
	ldrh r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802BF64  @ =0x040000BA
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802BF68  @ =0x03000CB0
	mov r1, #227
	strb r1, [r0, #4]
	ldr r1, _0802BF6C  @ =0x0802C081
	str r1, [r0]
	str r0, [r0, #8]
	bx lr
	.byte 0x00
	.byte 0x00
_0802BF58:
	.4byte 0x04000200
_0802BF5C:
	.4byte 0x04000005
_0802BF60:
	.4byte 0x04000004
_0802BF64:
	.4byte 0x040000BA
_0802BF68:
	.4byte 0x03000CB0
_0802BF6C:
	.4byte sub_0802C080
	THUMB_FUNC_END sub_0802BF28

	THUMB_FUNC_START tm0over_interrupt_handler
tm0over_interrupt_handler: @ 0x0802BF70
	push {r4,r5,lr}
	ldr r0, _0802BF9C  @ =0x03000CB0
	ldr r5, [r0, #104]
	cmp r5, #0
	beq _0802BF96
	add r4, r5, #0
_0802BF7C:
	ldr r0, [r4, #16]
	ldr r1, [r4]
	bl _call_via_r1
	ldr r4, [r4, #12]
	cmp r4, #0
	bne _0802BF7C
	ldr r1, _0802BF9C  @ =0x03000CB0
	ldr r0, [r5, #8]
	str r0, [r1, #104]
	ldr r1, _0802BFA0  @ =0x04000005
	ldrb r0, [r5, #4]
	strb r0, [r1]
_0802BF96:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802BF9C:
	.4byte 0x03000CB0
_0802BFA0:
	.4byte 0x04000005
	THUMB_FUNC_END tm0over_interrupt_handler

	THUMB_FUNC_START sub_0802BFA4
sub_0802BFA4: @ 0x0802BFA4
	ldr r1, _0802BFB8  @ =0x040000BA
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802BFBC  @ =0x03000CB0
	str r0, [r0, #108]
	str r0, [r0, #8]
	mov r1, #1
	str r1, [r0, #100]
	bx lr
	.byte 0x00
	.byte 0x00
_0802BFB8:
	.4byte 0x040000BA
_0802BFBC:
	.4byte 0x03000CB0
	THUMB_FUNC_END sub_0802BFA4

	THUMB_FUNC_START sub_0802BFC0
sub_0802BFC0: @ 0x0802BFC0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	add r6, r1, #0
	add r5, r2, #0
	mov r0, #0
	mov r12, r0
	cmp r5, #159
	bhi _0802C04A
	mov r7, #0
	ldr r0, _0802BFFC  @ =0x03000CB0
	ldr r3, [r0, #108]
	add r2, r3, #0
	mov r9, r0
	cmp r3, #0
	beq _0802C00C
	add r1, r5, #2
_0802BFE6:
	ldrb r0, [r3, #4]
	cmp r0, r5
	bcc _0802C004
	cmp r0, r1
	bhi _0802C000
	ldr r0, [r3]
	cmp r0, r6
	beq _0802C04A
	mov r1, #1
	mov r12, r1
	b _0802C00C
_0802BFFC:
	.4byte 0x03000CB0
_0802C000:
	cmp r0, r5
	bhi _0802C00C
_0802C004:
	add r7, r3, #0
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0802BFE6
_0802C00C:
	mov r2, r9
	ldr r1, [r2, #100]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r4, r0, r2
	add r1, r1, #1
	str r1, [r2, #100]
	mov r0, #0
	strb r5, [r4, #4]
	str r6, [r4]
	mov r1, r8
	str r1, [r4, #16]
	str r0, [r4, #12]
	mov r0, r12
	cmp r0, #0
	beq _0802C03C
	b _0802C032
_0802C030:
	ldr r3, [r3, #12]
_0802C032:
	ldr r0, [r3, #12]
	cmp r0, #0
	bne _0802C030
	str r4, [r3, #12]
	b _0802C04A
_0802C03C:
	cmp r7, #0
	bne _0802C046
	mov r1, r9
	str r4, [r1, #108]
	b _0802C048
_0802C046:
	str r4, [r7, #8]
_0802C048:
	str r3, [r4, #8]
_0802C04A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BFC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C058
sub_0802C058: @ 0x0802C058
	push {lr}
	ldr r0, _0802C06C  @ =0x03000CB0
	ldr r2, [r0, #108]
	str r2, [r0, #104]
	cmp r2, #0
	beq _0802C074
	ldr r1, _0802C070  @ =0x04000005
	ldrb r0, [r2, #4]
	strb r0, [r1]
	b _0802C078
_0802C06C:
	.4byte 0x03000CB0
_0802C070:
	.4byte 0x04000005
_0802C074:
	ldr r0, _0802C07C  @ =0x04000005
	strb r2, [r0]
_0802C078:
	pop {r0}
	bx r0
_0802C07C:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802C058

	THUMB_FUNC_START sub_0802C080
sub_0802C080: @ 0x0802C080
	push {lr}
	ldr r2, _0802C0A8  @ =0x040000B0
	ldr r0, _0802C0AC  @ =0x040000BA
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0802C0B0  @ =0x03000C90
	ldrh r0, [r1, #8]
	cmp r0, #2
	bhi _0802C0A2
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldrh r0, [r1, #10]
	ldr r1, _0802C0B4  @ =0xA2600000
	orr r0, r0, r1
	str r0, [r2, #8]
_0802C0A2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C0A8:
	.4byte 0x040000B0
_0802C0AC:
	.4byte 0x040000BA
_0802C0B0:
	.4byte 0x03000C90
_0802C0B4:
	.4byte 0xA2600000
	THUMB_FUNC_END sub_0802C080

	THUMB_FUNC_START sub_0802C0B8
sub_0802C0B8: @ 0x0802C0B8
	push {lr}
	add r1, r0, #0
	ldr r3, _0802C0E0  @ =0x03000D20
	cmp r1, #0
	beq _0802C0D6
	ldr r2, [r1]
	cmp r2, #0
	bge _0802C0D6
	ldr r0, _0802C0E4  @ =0x7FFFFFFF
	and r2, r2, r0
	cmp r2, #108
	bls _0802C0D6
	ldr r0, [r1, #108]
	cmp r0, #0
	bne _0802C0E8
_0802C0D6:
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r3, #16]
	b _0802C0FE
	.byte 0x00
	.byte 0x00
_0802C0E0:
	.4byte 0x03000D20
_0802C0E4:
	.4byte 0x7FFFFFFF
_0802C0E8:
	add r1, r1, r0
	add r0, r1, #4
	str r0, [r3, #8]
	mov r2, #129
	lsl r2, r2, #2
	add r0, r1, r2
	str r0, [r3, #12]
	ldrh r0, [r1]
	strh r0, [r3, #16]
	ldrh r0, [r1, #2]
	strh r0, [r3, #18]
_0802C0FE:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802C0B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C104
sub_0802C104: @ 0x0802C104
	ldr r3, _0802C114  @ =0x03000D20
	lsl r1, r1, #2
	lsl r0, r0, #3
	add r1, r1, r0
	add r1, r1, r3
	str r2, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802C114:
	.4byte 0x03000D20
	THUMB_FUNC_END sub_0802C104

	THUMB_FUNC_START sub_0802C118
sub_0802C118: @ 0x0802C118
	push {lr}
	add r2, r0, #0
	cmp r2, #0
	beq _0802C134
	ldr r1, [r2]
	cmp r1, #0
	bge _0802C134
	ldr r0, _0802C138  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, #108
	bls _0802C134
	ldr r0, [r2, #108]
	cmp r0, #0
	bne _0802C13C
_0802C134:
	mov r0, #0
	b _0802C13E
_0802C138:
	.4byte 0x7FFFFFFF
_0802C13C:
	mov r0, #1
_0802C13E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802C118

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C144
sub_0802C144: @ 0x0802C144
	push {r4,lr}
	add r2, r0, #0
	ldr r4, _0802C198  @ =0x03000D20
	ldrh r1, [r4, #16]
	mov r0, #128
	lsl r0, r0, #3
	cmp r1, r0
	beq _0802C192
	ldr r1, [r4]
	cmp r1, #0
	beq _0802C192
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _0802C192
	ldr r0, _0802C19C  @ =0x040000D4
	str r1, [r0]
	mov r1, #160
	lsl r1, r1, #19
	str r1, [r0, #4]
	ldr r1, _0802C1A0  @ =0x80000100
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [r0]
	ldr r1, _0802C1A4  @ =0x05000200
	str r1, [r0, #4]
	ldr r1, _0802C1A8  @ =0x84000080
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #16]
	sub r2, r0, r2
	cmp r2, #159
	bgt _0802C192
	cmp r2, #0
	bge _0802C18A
	mov r2, #0
_0802C18A:
	ldr r1, _0802C1AC  @ =0x0802C1C1
	add r0, r4, #0
	bl sub_0802BFC0
_0802C192:
	pop {r4}
	pop {r0}
	bx r0
_0802C198:
	.4byte 0x03000D20
_0802C19C:
	.4byte 0x040000D4
_0802C1A0:
	.4byte 0x80000100
_0802C1A4:
	.4byte 0x05000200
_0802C1A8:
	.4byte 0x84000080
_0802C1AC:
	.4byte sub_0802C1C0
	THUMB_FUNC_END sub_0802C144

	THUMB_FUNC_START sub_0802C1B0
sub_0802C1B0: @ 0x0802C1B0
	ldr r1, _0802C1BC  @ =0x03000D20
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r1, #16]
	bx lr
	.byte 0x00
	.byte 0x00
_0802C1BC:
	.4byte 0x03000D20
	THUMB_FUNC_END sub_0802C1B0

	THUMB_FUNC_START sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	push {lr}
	add r2, r0, #0
	add r3, r2, #0
	ldrh r1, [r2, #18]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802C1E2
	ldr r1, _0802C200  @ =0x040000D4
	ldr r0, [r2, #8]
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802C204  @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0802C1E2:
	ldrh r1, [r3, #18]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802C1FC
	ldr r1, _0802C200  @ =0x040000D4
	ldr r0, [r3, #12]
	str r0, [r1]
	ldr r0, _0802C208  @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0802C204  @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0802C1FC:
	pop {r0}
	bx r0
_0802C200:
	.4byte 0x040000D4
_0802C204:
	.4byte 0x84000080
_0802C208:
	.4byte 0x05000200
	THUMB_FUNC_END sub_0802C1C0

	THUMB_FUNC_START sub_0802C20C
sub_0802C20C: @ 0x0802C20C
	push {r4,r5,lr}
	ldr r0, _0802C23C  @ =0x0300015C
	mov r1, #0
	str r1, [r0]
	ldr r2, _0802C240  @ =0x03000D38
	mov r0, #90
	strh r0, [r2]
	ldr r0, _0802C244  @ =0x03000D34
	str r1, [r0]
	ldr r0, _0802C248  @ =0x03000D3C
	strb r1, [r0]
	ldr r2, _0802C24C  @ =0x03000160
	strb r1, [r2]
	ldr r0, _0802C250  @ =0x03000161
	strb r1, [r0]
	ldr r0, _0802C254  @ =gMainState
	ldr r0, [r0]
	sub r0, r0, #5
	add r4, r2, #0
	cmp r0, #1
	bhi _0802C260
	ldr r1, _0802C258  @ =0x03000164
	ldr r3, _0802C25C  @ =gUnknown_0807C0E0
	b _0802C2C4
_0802C23C:
	.4byte 0x0300015C
_0802C240:
	.4byte 0x03000D38
_0802C244:
	.4byte 0x03000D34
_0802C248:
	.4byte 0x03000D3C
_0802C24C:
	.4byte 0x03000160
_0802C250:
	.4byte 0x03000161
_0802C254:
	.4byte gMainState
_0802C258:
	.4byte 0x03000164
_0802C25C:
	.4byte gUnknown_0807C0E0
_0802C260:
	ldr r0, _0802C274  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0802C280
	ldr r1, _0802C278  @ =0x03000164
	ldr r3, _0802C27C  @ =gUnknown_0807C098
	b _0802C2C4
	.byte 0x00
	.byte 0x00
_0802C274:
	.4byte gUnknown_03000B80
_0802C278:
	.4byte 0x03000164
_0802C27C:
	.4byte gUnknown_0807C098
_0802C280:
	cmp r0, #2
	bne _0802C2A0
	ldr r1, _0802C294  @ =0x03000164
	ldr r2, _0802C298  @ =gUnknown_0807C0D0
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _0802C29C  @ =0x03000168
	ldr r0, [r2]
	b _0802C2DE
	.byte 0x00
	.byte 0x00
_0802C294:
	.4byte 0x03000164
_0802C298:
	.4byte gUnknown_0807C0D0
_0802C29C:
	.4byte 0x03000168
_0802C2A0:
	cmp r0, #3
	bne _0802C2C0
	ldr r1, _0802C2B4  @ =0x03000164
	ldr r2, _0802C2B8  @ =gUnknown_0807C0D8
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _0802C2BC  @ =0x03000168
	ldr r0, [r2]
	b _0802C2DE
	.byte 0x00
	.byte 0x00
_0802C2B4:
	.4byte 0x03000164
_0802C2B8:
	.4byte gUnknown_0807C0D8
_0802C2BC:
	.4byte 0x03000168
_0802C2C0:
	ldr r1, _0802C304  @ =0x03000164
	ldr r3, _0802C308  @ =gUnknown_0807C028
_0802C2C4:
	ldr r2, _0802C30C  @ =gUnknown_03000B90
	mov r5, #16
	ldrsh r0, [r2, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r1]
	ldr r1, _0802C310  @ =0x03000168
	mov r5, #16
	ldrsh r0, [r2, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0]
_0802C2DE:
	str r0, [r1]
	ldr r2, _0802C314  @ =0x030009E0
	ldrb r0, [r4]
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r1, _0802C318  @ =0x03000D40
	lsl r0, r0, #16
	lsr r0, r0, #19
	strh r0, [r1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C304:
	.4byte 0x03000164
_0802C308:
	.4byte gUnknown_0807C028
_0802C30C:
	.4byte gUnknown_03000B90
_0802C310:
	.4byte 0x03000168
_0802C314:
	.4byte 0x030009E0
_0802C318:
	.4byte 0x03000D40
	THUMB_FUNC_END sub_0802C20C

	THUMB_FUNC_START sub_0802C31C
sub_0802C31C: @ 0x0802C31C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	ldr r0, _0802C3CC  @ =gUnknown_03001720
	ldrh r1, [r0]
	lsl r1, r1, #16
	asr r1, r1, #19
	lsl r1, r1, #16
	ldr r0, _0802C3D0  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
	lsr r0, r1, #16
	str r0, [sp, #16]
	mov r2, #0
	cmp r1, #0
	bgt _0802C348
	b _0802C4F8
_0802C348:
	mov r1, r8
	lsl r0, r1, #16
	asr r5, r0, #16
	lsl r0, r5, #6
	lsl r2, r2, #16
	asr r4, r2, #16
	add r0, r0, r4
	ldr r6, _0802C3D4  @ =gUnknown_0807820C
	ldr r3, [r6]
	lsl r1, r0, #1
	ldr r6, _0802C3D8  @ =0x0000600C
	add r0, r3, r6
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #16]
	lsl r1, r1, #16
	str r1, [sp, #24]
	str r2, [sp, #20]
	cmp r0, #0
	bne _0802C372
	b _0802C4E6
_0802C372:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r3, r0
	ldrh r6, [r0, #12]
	ldr r0, _0802C3DC  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #40
	bne _0802C3EC
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r0, [r0]
	str r4, [sp]
	ldrh r0, [r0, #2]
	sub r0, r5, r0
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, sp
	bl sub_08002160
	ldr r3, _0802C3D4  @ =gUnknown_0807820C
	ldr r2, [r3]
	ldr r4, _0802C3E0  @ =0x0000800C
	add r2, r2, r4
	mov r0, sp
	add r1, r6, #0
	bl sub_080063E4
	ldr r0, _0802C3E4  @ =gUnknown_030009EC
	mov r4, #1
	strb r4, [r0]
	mov r0, #40
	bl sub_0801B50C
	ldr r0, _0802C3E8  @ =0x03000D3C
	strb r4, [r0]
	b _0802C4E6
	.byte 0x00
	.byte 0x00
_0802C3CC:
	.4byte gUnknown_03001720
_0802C3D0:
	.4byte 0x030009E0
_0802C3D4:
	.4byte gUnknown_0807820C
_0802C3D8:
	.4byte 0x0000600C
_0802C3DC:
	.4byte gUnknown_08078210
_0802C3E0:
	.4byte 0x0000800C
_0802C3E4:
	.4byte gUnknown_030009EC
_0802C3E8:
	.4byte 0x03000D3C
_0802C3EC:
	ldr r0, _0802C520  @ =0x03000D3C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802C4E6
	ldr r0, _0802C524  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
	ldr r0, _0802C528  @ =0x03000D40
	mov r6, r8
	lsl r2, r6, #16
	mov r3, #0
	ldrsh r1, [r0, r3]
	add r3, r0, #0
	cmp r8, r1
	bge _0802C4DC
	mov r9, r4
_0802C410:
	asr r7, r2, #16
	lsl r0, r7, #6
	add r0, r0, r9
	ldr r4, _0802C52C  @ =gUnknown_0807820C
	ldr r2, [r4]
	lsl r1, r0, #1
	ldr r6, _0802C530  @ =0x0000600C
	add r0, r2, r6
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802C4C2
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r2, r0
	ldrh r6, [r0, #12]
	ldr r0, _0802C534  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	mov r10, r2
	add r1, r1, r10
	add r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #41
	bne _0802C4C2
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r4, [r0]
	mov r3, r9
	str r3, [sp, #8]
	ldrh r0, [r4, #2]
	sub r0, r7, r0
	add r0, r0, #1
	add r5, sp, #8
	str r0, [r5, #4]
	add r0, r5, #0
	bl sub_08002160
	ldr r0, _0802C52C  @ =gUnknown_0807820C
	ldr r2, [r0]
	ldr r1, _0802C538  @ =0x0000800C
	add r2, r2, r1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080063E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08001BA4
	ldrh r0, [r4, #2]
	sub r0, r7, r0
	lsl r0, r0, #6
	add r0, r0, r9
	ldr r3, _0802C52C  @ =gUnknown_0807820C
	ldr r2, [r3]
	lsl r1, r0, #1
	ldr r4, _0802C530  @ =0x0000600C
	add r0, r2, r4
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802C4BA
	ldr r1, _0802C534  @ =gUnknown_08078210
	ldr r0, [r1]
	add r1, r6, #2
	lsl r1, r1, #2
	add r0, r0, r10
	add r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r4, #2]
	ldr r0, [r5, #4]
	sub r0, r0, r1
	str r0, [r5, #4]
	ldr r3, _0802C538  @ =0x0000800C
	add r2, r2, r3
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #6
	bl sub_080064D4
_0802C4BA:
	ldr r1, _0802C53C  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r3, _0802C528  @ =0x03000D40
_0802C4C2:
	mov r4, r8
	lsl r0, r4, #16
	mov r6, #128
	lsl r6, r6, #9
	add r0, r0, r6
	lsr r0, r0, #16
	mov r8, r0
	lsl r2, r0, #16
	asr r1, r2, #16
	mov r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _0802C410
_0802C4DC:
	ldr r0, _0802C524  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
_0802C4E6:
	ldr r6, [sp, #20]
	mov r1, #128
	lsl r1, r1, #9
	add r0, r6, r1
	lsr r2, r0, #16
	ldr r3, [sp, #24]
	cmp r0, r3
	bge _0802C4F8
	b _0802C348
_0802C4F8:
	ldr r1, _0802C520  @ =0x03000D3C
	ldrb r0, [r1]
	cmp r0, #2
	bne _0802C510
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0802C528  @ =0x03000D40
	ldr r0, _0802C524  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	asr r0, r0, #3
	strh r0, [r1]
_0802C510:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C520:
	.4byte 0x03000D3C
_0802C524:
	.4byte 0x030009E0
_0802C528:
	.4byte 0x03000D40
_0802C52C:
	.4byte gUnknown_0807820C
_0802C530:
	.4byte 0x0000600C
_0802C534:
	.4byte gUnknown_08078210
_0802C538:
	.4byte 0x0000800C
_0802C53C:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_0802C31C

	THUMB_FUNC_START sub_0802C540
sub_0802C540: @ 0x0802C540
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _0802C574  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	beq _0802C558
	b _0802C6F4
_0802C558:
	ldr r0, _0802C578  @ =0x03000161
	ldrb r1, [r0]
	cmp r1, #1
	bne _0802C590
	ldr r2, _0802C57C  @ =0x030009E0
	ldr r0, _0802C580  @ =0x03000162
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bls _0802C584
	sub r0, r1, #1
	strh r0, [r2]
	b _0802C6E8
	.byte 0x00
	.byte 0x00
_0802C574:
	.4byte gUnknown_03000B90
_0802C578:
	.4byte 0x03000161
_0802C57C:
	.4byte 0x030009E0
_0802C580:
	.4byte 0x03000162
_0802C584:
	mov r0, #0
	ldr r2, _0802C58C  @ =0x03000161
	strb r0, [r2]
	b _0802C6E8
_0802C58C:
	.4byte 0x03000161
_0802C590:
	cmp r1, #2
	bne _0802C5BC
	ldr r2, _0802C5A8  @ =0x030009E0
	ldr r0, _0802C5AC  @ =0x03000162
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bcs _0802C5B0
	add r0, r1, #1
	strh r0, [r2]
	b _0802C6E8
	.byte 0x00
	.byte 0x00
_0802C5A8:
	.4byte 0x030009E0
_0802C5AC:
	.4byte 0x03000162
_0802C5B0:
	mov r0, #0
	ldr r3, _0802C5B8  @ =0x03000161
	strb r0, [r3]
	b _0802C6E8
_0802C5B8:
	.4byte 0x03000161
_0802C5BC:
	ldr r0, _0802C680  @ =0x03000160
	ldrb r3, [r0]
	ldr r1, _0802C684  @ =0x03000164
	ldrh r1, [r1]
	cmp r3, r1
	bcc _0802C5CA
	b _0802C6EC
_0802C5CA:
	ldr r1, _0802C688  @ =gUnknown_03001A30
	ldrb r7, [r1]
	ldrb r0, [r1, #1]
	mov r8, r0
	add r0, r7, r0
	ldrb r2, [r1, #2]
	mov r10, r2
	add r0, r0, r10
	ldrb r6, [r1, #3]
	add r0, r6, r0
	ldrb r2, [r1, #4]
	mov r12, r2
	add r0, r0, r12
	ldrb r1, [r1, #5]
	mov r9, r1
	add r5, r1, r0
	ldr r2, _0802C68C  @ =0x03000168
	ldr r1, [r2]
	lsl r0, r3, #3
	add r3, r0, r1
	ldrh r4, [r3]
	cmp r4, #0
	bne _0802C608
	ldr r0, _0802C690  @ =0x0300015C
	ldr r1, _0802C694  @ =0x03000D34
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	ldrh r1, [r3, #4]
	cmp r0, r1
	bge _0802C652
_0802C608:
	cmp r4, #1
	bne _0802C6E8
	ldrh r0, [r3, #4]
	cmp r0, #4
	bne _0802C61A
	cmp r7, #0
	bne _0802C652
	cmp r6, #0
	bne _0802C652
_0802C61A:
	cmp r0, #5
	bne _0802C62A
	mov r2, r8
	cmp r2, #0
	bne _0802C652
	mov r3, r12
	cmp r3, #0
	bne _0802C652
_0802C62A:
	cmp r0, #6
	bne _0802C63A
	mov r1, r10
	cmp r1, #0
	bne _0802C652
	mov r2, r9
	cmp r2, #0
	bne _0802C652
_0802C63A:
	cmp r0, #1
	bne _0802C642
	cmp r5, #0
	bne _0802C652
_0802C642:
	cmp r0, #2
	bne _0802C64A
	cmp r5, #1
	bhi _0802C652
_0802C64A:
	cmp r0, #3
	bne _0802C6E8
	cmp r5, #2
	bls _0802C6E8
_0802C652:
	ldr r2, _0802C698  @ =0x03000162
	ldr r3, _0802C680  @ =0x03000160
	ldrb r0, [r3]
	ldr r3, _0802C68C  @ =0x03000168
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r2, _0802C680  @ =0x03000160
	ldrb r0, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r1, _0802C69C  @ =0x030009E0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _0802C6A4
	mov r0, #1
	ldr r3, _0802C6A0  @ =0x03000161
	strb r0, [r3]
	b _0802C6AA
	.byte 0x00
	.byte 0x00
_0802C680:
	.4byte 0x03000160
_0802C684:
	.4byte 0x03000164
_0802C688:
	.4byte gUnknown_03001A30
_0802C68C:
	.4byte 0x03000168
_0802C690:
	.4byte 0x0300015C
_0802C694:
	.4byte 0x03000D34
_0802C698:
	.4byte 0x03000162
_0802C69C:
	.4byte 0x030009E0
_0802C6A0:
	.4byte 0x03000161
_0802C6A4:
	mov r0, #2
	ldr r1, _0802C704  @ =0x03000161
	strb r0, [r1]
_0802C6AA:
	ldr r2, _0802C708  @ =0x03000160
	ldrb r0, [r2]
	ldr r3, _0802C70C  @ =0x03000168
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0802C6D8
	ldr r1, _0802C710  @ =0x03000D38
	mov r0, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #110
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0802C6D8:
	ldr r1, _0802C708  @ =0x03000160
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802C714  @ =0x03000D34
	ldr r0, _0802C718  @ =0x0300015C
	ldr r0, [r0]
	str r0, [r1]
_0802C6E8:
	bl sub_0802C31C
_0802C6EC:
	ldr r1, _0802C718  @ =0x0300015C
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
_0802C6F4:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C704:
	.4byte 0x03000161
_0802C708:
	.4byte 0x03000160
_0802C70C:
	.4byte 0x03000168
_0802C710:
	.4byte 0x03000D38
_0802C714:
	.4byte 0x03000D34
_0802C718:
	.4byte 0x0300015C
	THUMB_FUNC_END sub_0802C540

	THUMB_FUNC_START sub_0802C71C
sub_0802C71C: @ 0x0802C71C
	push {r4,r5,lr}
	ldr r0, _0802C774  @ =0x0300015C
	mov r1, #0
	str r1, [r0]
	ldr r2, _0802C778  @ =0x03000D38
	mov r0, #90
	strh r0, [r2]
	ldr r0, _0802C77C  @ =0x03000D34
	str r1, [r0]
	ldr r0, _0802C780  @ =0x03000D3C
	strb r1, [r0]
	ldr r4, _0802C784  @ =0x03000160
	strb r1, [r4]
	ldr r0, _0802C788  @ =0x03000161
	strb r1, [r0]
	ldr r2, _0802C78C  @ =0x03000164
	ldr r3, _0802C790  @ =gUnknown_0807C0E0
	ldr r1, _0802C794  @ =gUnknown_03000B90
	mov r5, #16
	ldrsh r0, [r1, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r2]
	ldr r2, _0802C798  @ =0x03000168
	mov r5, #16
	ldrsh r0, [r1, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _0802C79C  @ =0x030009E0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r1, _0802C7A0  @ =0x03000D40
	lsl r0, r0, #16
	lsr r0, r0, #19
	strh r0, [r1]
	mov r0, #1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C774:
	.4byte 0x0300015C
_0802C778:
	.4byte 0x03000D38
_0802C77C:
	.4byte 0x03000D34
_0802C780:
	.4byte 0x03000D3C
_0802C784:
	.4byte 0x03000160
_0802C788:
	.4byte 0x03000161
_0802C78C:
	.4byte 0x03000164
_0802C790:
	.4byte gUnknown_0807C0E0
_0802C794:
	.4byte gUnknown_03000B90
_0802C798:
	.4byte 0x03000168
_0802C79C:
	.4byte 0x030009E0
_0802C7A0:
	.4byte 0x03000D40
	THUMB_FUNC_END sub_0802C71C

	THUMB_FUNC_START sub_0802C7A4
sub_0802C7A4: @ 0x0802C7A4
	push {r4-r7,lr}
	ldr r3, _0802C7E8  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r3, r1]
	cmp r0, #2
	beq _0802C7B2
	b _0802C902
_0802C7B2:
	ldr r0, _0802C7EC  @ =0x03000D7C
	mov r4, #0
	str r4, [r0]
	ldr r0, _0802C7F0  @ =gMainState
	ldr r1, [r0]
	cmp r1, #5
	bne _0802C80C
	ldr r2, _0802C7F4  @ =0x03000D78
	ldr r1, _0802C7F8  @ =gUnknown_0807C7A8
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C7FC  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C800  @ =0x03000D88
	ldr r1, _0802C804  @ =gUnknown_0807C7C4
	str r1, [r0]
	ldr r2, _0802C808  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C7E8:
	.4byte gUnknown_03000B90
_0802C7EC:
	.4byte 0x03000D7C
_0802C7F0:
	.4byte gMainState
_0802C7F4:
	.4byte 0x03000D78
_0802C7F8:
	.4byte gUnknown_0807C7A8
_0802C7FC:
	.4byte 0x03000D80
_0802C800:
	.4byte 0x03000D88
_0802C804:
	.4byte gUnknown_0807C7C4
_0802C808:
	.4byte 0x03000D74
_0802C80C:
	ldr r0, _0802C844  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802C81C
	cmp r1, #2
	bne _0802C860
_0802C81C:
	ldr r2, _0802C848  @ =0x03000D78
	ldr r1, _0802C84C  @ =gUnknown_0807C7CC
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C850  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C854  @ =0x03000D88
	ldr r1, _0802C858  @ =gUnknown_0807C804
	str r1, [r0]
	ldr r2, _0802C85C  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C844:
	.4byte gUnknown_03000B80
_0802C848:
	.4byte 0x03000D78
_0802C84C:
	.4byte gUnknown_0807C7CC
_0802C850:
	.4byte 0x03000D80
_0802C854:
	.4byte 0x03000D88
_0802C858:
	.4byte gUnknown_0807C804
_0802C85C:
	.4byte 0x03000D74
_0802C860:
	cmp r0, #1
	bne _0802C8A4
	ldr r2, _0802C88C  @ =0x03000D78
	ldr r1, _0802C890  @ =gUnknown_0807C814
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C894  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C898  @ =0x03000D88
	ldr r1, _0802C89C  @ =gUnknown_0807C82C
	str r1, [r0]
	ldr r2, _0802C8A0  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C88C:
	.4byte 0x03000D78
_0802C890:
	.4byte gUnknown_0807C814
_0802C894:
	.4byte 0x03000D80
_0802C898:
	.4byte 0x03000D88
_0802C89C:
	.4byte gUnknown_0807C82C
_0802C8A0:
	.4byte 0x03000D74
_0802C8A4:
	ldr r1, _0802C908  @ =0x03000D78
	ldr r0, _0802C90C  @ =gUnknown_0807C834
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802C910  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C914  @ =0x03000D88
	ldr r1, _0802C918  @ =gUnknown_0807C838
	str r1, [r0]
	ldr r2, _0802C91C  @ =0x03000D74
	ldrb r0, [r1]
_0802C8BA:
	strb r0, [r2]
	ldr r1, _0802C920  @ =0x03000D64
	ldr r0, _0802C924  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	mov r1, #0
	add r4, r2, #0
	ldr r7, _0802C928  @ =0x03000D84
	ldr r5, _0802C92C  @ =0x03000D68
	mov r12, r5
	ldrb r0, [r4]
	cmp r1, r0
	bge _0802C8F8
	ldr r6, _0802C930  @ =0x03000D90
	ldr r5, _0802C934  @ =0x03000D58
	mov r3, #0
_0802C8DE:
	lsl r0, r1, #16
	asr r0, r0, #16
	add r2, r0, r6
	add r1, r0, r5
	strb r3, [r1]
	strb r3, [r2]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	ldrb r2, [r4]
	cmp r0, r2
	blt _0802C8DE
_0802C8F8:
	mov r0, #0
	strb r0, [r7]
	mov r0, #0
	mov r4, r12
	strh r0, [r4]
_0802C902:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C908:
	.4byte 0x03000D78
_0802C90C:
	.4byte gUnknown_0807C834
_0802C910:
	.4byte 0x03000D80
_0802C914:
	.4byte 0x03000D88
_0802C918:
	.4byte gUnknown_0807C838
_0802C91C:
	.4byte 0x03000D74
_0802C920:
	.4byte 0x03000D64
_0802C924:
	.4byte 0x030009E0
_0802C928:
	.4byte 0x03000D84
_0802C92C:
	.4byte 0x03000D68
_0802C930:
	.4byte 0x03000D90
_0802C934:
	.4byte 0x03000D58
	THUMB_FUNC_END sub_0802C7A4

	THUMB_FUNC_START sub_0802C938
sub_0802C938: @ 0x0802C938
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r4, #0
	ldr r0, _0802C9C0  @ =gUnknown_03000B90
	mov r2, #16
	ldrsh r1, [r0, r2]
	ldr r0, _0802C9C4  @ =0x03000D88
	ldr r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _0802C9B8
	mov r7, #0
	ldr r6, _0802C9C8  @ =0x03000DA0
_0802C954:
	lsl r4, r4, #16
	asr r5, r4, #16
	ldr r0, _0802C9CC  @ =0x03000D78
	ldr r1, [r0]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r3, [r0]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0802C9D0  @ =0x030009E0
	ldrh r0, [r0]
	sub r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #255
	mov r1, #171
	mov r2, #1
	neg r2, r2
	bl sub_08038DF4
	lsl r0, r0, #24
	lsr r1, r0, #24
	lsl r2, r5, #2
	add r2, r2, r6
	ldr r3, _0802C9D4  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r3]
	add r0, r0, r1
	str r0, [r2]
	mov r3, #128
	lsl r3, r3, #9
	add r1, r4, r3
	lsr r4, r1, #16
	asr r1, r1, #16
	ldr r0, _0802C9C0  @ =gUnknown_03000B90
	mov r3, #16
	ldrsh r2, [r0, r3]
	ldr r0, _0802C9C4  @ =0x03000D88
	ldr r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802C954
_0802C9B8:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C9C0:
	.4byte gUnknown_03000B90
_0802C9C4:
	.4byte 0x03000D88
_0802C9C8:
	.4byte 0x03000DA0
_0802C9CC:
	.4byte 0x03000D78
_0802C9D0:
	.4byte 0x030009E0
_0802C9D4:
	.4byte 0x03001940
	THUMB_FUNC_END sub_0802C938

	THUMB_FUNC_START sub_0802C9D8
sub_0802C9D8: @ 0x0802C9D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802CA3C  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r1, [r0, r2]
	mov r8, r0
	cmp r1, #2
	beq _0802C9EC
	b _0802CD28
_0802C9EC:
	ldr r0, _0802CA40  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0802C9FC
	b _0802CD28
_0802C9FC:
	ldr r2, _0802CA44  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #16
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	bne _0802CA0C
	b _0802CD28
_0802CA0C:
	ldr r0, _0802CA48  @ =0x03000D7C
	ldr r2, [r0]
	add r7, r0, #0
	ldr r3, _0802CA4C  @ =0x03000D84
	mov r12, r3
	cmp r2, #0
	beq _0802CA64
	ldr r0, _0802CA50  @ =0x03000D54
	ldr r1, _0802CA54  @ =0x03000D64
	ldr r1, [r1]
	ldr r3, _0802CA58  @ =0xFFFFFB00
	add r1, r1, r3
	ldr r0, [r0]
	cmp r0, r1
	ble _0802CA62
	mov r4, r12
	ldrb r0, [r4]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0802CA5C
	str r1, [r2, #36]
	b _0802CA64
_0802CA3C:
	.4byte gUnknown_03000B90
_0802CA40:
	.4byte gUnknown_03001A1C
_0802CA44:
	.4byte gUnknown_030009D0
_0802CA48:
	.4byte 0x03000D7C
_0802CA4C:
	.4byte 0x03000D84
_0802CA50:
	.4byte 0x03000D54
_0802CA54:
	.4byte 0x03000D64
_0802CA58:
	.4byte 0xFFFFFB00
_0802CA5C:
	ldr r0, _0802CA78  @ =0x03000D50
	ldr r0, [r0]
	add r0, r0, r3
_0802CA62:
	str r0, [r2, #36]
_0802CA64:
	mov r5, r12
	ldrb r0, [r5]
	cmp r0, #4
	bls _0802CA6E
	b _0802CD28
_0802CA6E:
	lsl r0, r0, #2
	ldr r1, _0802CA7C  @ =0x0802CA80
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802CA78:
	.4byte 0x03000D50
_0802CA7C:
	.4byte _0802CA80
_0802CA80:
	.4byte _0802CA94
	.4byte _0802CB44
	.4byte _0802CBA4
	.4byte _0802CC14
	.4byte _0802CCD0
_0802CA94:
	ldrb r1, [r6]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0802CAA0
	b _0802CD28
_0802CAA0:
	ldr r0, _0802CB18  @ =0x03000D68
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldr r6, _0802CB1C  @ =0x03000D80
	ldrb r2, [r6]
	ldr r0, _0802CB20  @ =0x03000D78
	ldr r5, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r5
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r0, [r0, #12]
	cmp r1, r0
	bcs _0802CAC4
	b _0802CD28
_0802CAC4:
	mov r0, #1
	mov r1, r12
	strb r0, [r1]
	ldr r2, _0802CB24  @ =0x03000D60
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0]
	str r0, [r2]
	ldr r4, _0802CB28  @ =0x03000D70
	ldr r3, _0802CB2C  @ =0x030009E0
	ldrh r2, [r3]
	lsl r2, r2, #8
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0, #4]
	sub r2, r2, r0
	str r2, [r4]
	ldr r1, _0802CB30  @ =0x03000D64
	ldrh r0, [r3]
	lsl r0, r0, #8
	str r0, [r1]
	ldr r1, _0802CB34  @ =0x03000DA0
	ldrb r0, [r6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r7]
	ldr r1, _0802CB38  @ =0x03000D54
	ldr r0, [r0, #36]
	str r0, [r1]
	ldr r1, _0802CB3C  @ =0x03000D6C
	ldr r0, _0802CB40  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r1]
	b _0802CD28
_0802CB18:
	.4byte 0x03000D68
_0802CB1C:
	.4byte 0x03000D80
_0802CB20:
	.4byte 0x03000D78
_0802CB24:
	.4byte 0x03000D60
_0802CB28:
	.4byte 0x03000D70
_0802CB2C:
	.4byte 0x030009E0
_0802CB30:
	.4byte 0x03000D64
_0802CB34:
	.4byte 0x03000DA0
_0802CB38:
	.4byte 0x03000D54
_0802CB3C:
	.4byte 0x03000D6C
_0802CB40:
	.4byte 0x030019AC
_0802CB44:
	ldr r3, _0802CB88  @ =0x03000D64
	ldr r0, _0802CB8C  @ =0x03000D80
	ldrb r1, [r0]
	ldr r0, _0802CB90  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	mov r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	sub r2, r0, r1
	str r2, [r3]
	ldr r0, _0802CB94  @ =0x03000D70
	ldr r0, [r0]
	mov r3, #128
	lsl r3, r3, #4
	add r0, r0, r3
	cmp r2, r0
	blt _0802CB70
	b _0802CD28
_0802CB70:
	mov r0, #2
	mov r4, r12
	strb r0, [r4]
	ldr r0, _0802CB98  @ =0x03000D68
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0802CB9C  @ =0x03000D50
	str r2, [r0]
	ldr r0, _0802CBA0  @ =0x03000DC8
	strh r1, [r0]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CB88:
	.4byte 0x03000D64
_0802CB8C:
	.4byte 0x03000D80
_0802CB90:
	.4byte 0x03000D78
_0802CB94:
	.4byte 0x03000D70
_0802CB98:
	.4byte 0x03000D68
_0802CB9C:
	.4byte 0x03000D50
_0802CBA0:
	.4byte 0x03000DC8
_0802CBA4:
	ldr r5, _0802CBE0  @ =0x03000D68
	ldrh r0, [r5]
	add r3, r0, #1
	strh r3, [r5]
	ldr r0, _0802CBE4  @ =0x03000DC8
	ldrh r1, [r0]
	add r4, r0, #0
	cmp r1, #9
	bls _0802CBF0
	mov r0, #9
	strh r0, [r4]
	ldr r0, _0802CBE8  @ =0x03000D80
	ldrb r1, [r0]
	ldr r0, _0802CBEC  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	lsl r1, r3, #16
	lsr r1, r1, #16
	ldrh r0, [r0, #14]
	cmp r1, r0
	bcc _0802CC04
	mov r0, #3
	mov r1, r12
	strb r0, [r1]
	mov r0, #2
	strh r0, [r5]
	b _0802CC04
_0802CBE0:
	.4byte 0x03000D68
_0802CBE4:
	.4byte 0x03000DC8
_0802CBE8:
	.4byte 0x03000D80
_0802CBEC:
	.4byte 0x03000D78
_0802CBF0:
	ldr r2, _0802CC0C  @ =0x03000D50
	ldr r1, _0802CC10  @ =gUnknown_0807C83A
	ldrh r0, [r4]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	sub r0, r0, r1
	str r0, [r2]
_0802CC04:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0802CD28
_0802CC0C:
	.4byte 0x03000D50
_0802CC10:
	.4byte gUnknown_0807C83A
_0802CC14:
	ldr r3, _0802CC90  @ =0x03000D50
	ldr r1, [r3]
	add r1, r1, #32
	ldr r5, _0802CC94  @ =0x03000D80
	ldrb r2, [r5]
	ldr r0, _0802CC98  @ =0x03000D78
	ldr r4, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, #10
	ldrsh r0, [r0, r2]
	add r1, r1, r0
	str r1, [r3]
	ldr r3, _0802CC9C  @ =0x03000D64
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r4, #10
	ldrsh r0, [r0, r4]
	ldr r1, [r3]
	add r1, r1, r0
	str r1, [r3]
	ldr r0, _0802CCA0  @ =0x030009E0
	ldrh r2, [r0]
	lsl r0, r2, #8
	cmp r1, r0
	ble _0802CD28
	add r0, r2, #0
	add r0, r0, #8
	lsl r0, r0, #8
	str r0, [r3]
	ldr r0, _0802CCA4  @ =0x03000D68
	mov r3, #0
	strh r3, [r0]
	ldrb r1, [r6]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0802CCAC
	mov r0, r12
	strb r3, [r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r1, r8
	mov r4, #16
	ldrsh r2, [r1, r4]
	ldr r1, _0802CCA8  @ =0x03000D88
	ldr r1, [r1]
	add r1, r1, r2
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0802CD28
	strb r3, [r5]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CC90:
	.4byte 0x03000D50
_0802CC94:
	.4byte 0x03000D80
_0802CC98:
	.4byte 0x03000D78
_0802CC9C:
	.4byte 0x03000D64
_0802CCA0:
	.4byte 0x030009E0
_0802CCA4:
	.4byte 0x03000D68
_0802CCA8:
	.4byte 0x03000D88
_0802CCAC:
	ldr r0, [r7]
	ldr r2, [r0, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r0, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #12
	mov r1, #0
	bl sub_0804138C
	ldr r1, _0802CCCC  @ =0x03000D84
	mov r0, #4
	strb r0, [r1]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CCCC:
	.4byte 0x03000D84
_0802CCD0:
	ldr r2, _0802CD0C  @ =0x03000D50
	ldr r3, _0802CD10  @ =0x03000D80
	ldrb r1, [r3]
	ldr r0, _0802CD14  @ =0x03000D78
	ldr r4, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r5, #10
	ldrsh r1, [r0, r5]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldr r0, [r7]
	ldr r0, [r0, #32]
	asr r2, r0, #8
	ldrb r1, [r3]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0]
	asr r0, r0, #8
	sub r1, r2, r0
	cmp r1, #0
	blt _0802CD18
	cmp r1, #8
	bgt _0802CD1E
	b _0802CD28
_0802CD0C:
	.4byte 0x03000D50
_0802CD10:
	.4byte 0x03000D80
_0802CD14:
	.4byte 0x03000D78
_0802CD18:
	sub r0, r0, r2
	cmp r0, #8
	ble _0802CD28
_0802CD1E:
	mov r0, #0
	mov r1, r12
	strb r0, [r1]
	mov r0, #0
	str r0, [r7]
_0802CD28:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802C9D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802CD34
sub_0802CD34: @ 0x0802CD34
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	add r6, r0, #0
	ldr r0, [r6, #32]
	asr r4, r0, #8
	ldr r0, _0802CDBC  @ =0x030009E0
	ldrh r0, [r0]
	lsl r0, r0, #8
	mov r12, r0
	ldr r0, _0802CDC0  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0802CD5A
	b _0802CEF6
_0802CD5A:
	ldr r0, [r6, #36]
	cmp r0, r12
	ble _0802CD62
	b _0802CEF6
_0802CD62:
	mov r2, r12
	sub r1, r2, r0
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	ble _0802CD70
	b _0802CEF6
_0802CD70:
	ldr r0, _0802CDC4  @ =0x03000D84
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CD7A
	b _0802CEF6
_0802CD7A:
	mov r7, #0
	ldr r3, _0802CDC8  @ =gUnknown_03000B90
	mov r0, #16
	ldrsh r2, [r3, r0]
	ldr r1, _0802CDCC  @ =0x03000D88
	ldr r0, [r1]
	add r0, r0, r2
	mov r9, r3
	add r5, r1, #0
	ldrb r0, [r0]
	cmp r7, r0
	blt _0802CD94
	b _0802CEF6
_0802CD94:
	ldr r1, _0802CDD0  @ =0x03000D78
	mov r8, r1
_0802CD98:
	lsl r3, r7, #16
	asr r1, r3, #16
	ldr r0, _0802CDD0  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	ldr r0, [r0]
	asr r1, r0, #8
	sub r0, r4, r1
	cmp r0, #0
	blt _0802CDD4
	cmp r4, r1
	beq _0802CDB8
	b _0802CEDA
_0802CDB8:
	b _0802CDDA
	.byte 0x00
	.byte 0x00
_0802CDBC:
	.4byte 0x030009E0
_0802CDC0:
	.4byte gUnknown_030009D0
_0802CDC4:
	.4byte 0x03000D84
_0802CDC8:
	.4byte gUnknown_03000B90
_0802CDCC:
	.4byte 0x03000D88
_0802CDD0:
	.4byte 0x03000D78
_0802CDD4:
	cmp r1, r4
	beq _0802CDDA
	b _0802CEDA
_0802CDDA:
	asr r3, r3, #16
	mov r2, r8
	ldr r4, [r2]
	lsl r0, r3, #1
	add r0, r0, r3
	lsl r0, r0, #3
	add r1, r0, r4
	ldr r0, _0802CE80  @ =0x03000D90
	add r5, r3, r0
	add r0, r1, #0
	add r0, r0, #16
	ldrb r2, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CEA8
	ldr r0, [r1]
	str r0, [r6, #32]
	ldr r2, _0802CE84  @ =0x03000D80
	strb r7, [r2]
	ldr r3, _0802CE88  @ =0x03000D60
	ldrb r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802CE8C  @ =0x03000D70
	ldrb r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #4]
	mov r1, r12
	sub r0, r1, r0
	str r0, [r3]
	ldr r0, _0802CE90  @ =0x03000D64
	str r1, [r0]
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #112
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, _0802CE94  @ =0x03000D84
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802CE98  @ =0x03000D7C
	str r6, [r0]
	ldr r0, _0802CE9C  @ =0x03000D54
	ldr r3, [r6, #36]
	str r3, [r0]
	ldr r1, _0802CEA0  @ =0x03000D6C
	ldr r0, _0802CEA4  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r1]
	ldr r2, [r6, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #12
	mov r1, #0
	bl sub_0804138C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _0802CE7C
	strb r4, [r5]
_0802CE7C:
	mov r0, #1
	b _0802CEF8
_0802CE80:
	.4byte 0x03000D90
_0802CE84:
	.4byte 0x03000D80
_0802CE88:
	.4byte 0x03000D60
_0802CE8C:
	.4byte 0x03000D70
_0802CE90:
	.4byte 0x03000D64
_0802CE94:
	.4byte 0x03000D84
_0802CE98:
	.4byte 0x03000D7C
_0802CE9C:
	.4byte 0x03000D54
_0802CEA0:
	.4byte 0x03000D6C
_0802CEA4:
	.4byte 0x030019AC
_0802CEA8:
	ldr r0, _0802CEB8  @ =0x03000D58
	add r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802CEBC
	mov r0, #1
	strb r0, [r3]
	b _0802CEF6
_0802CEB8:
	.4byte 0x03000D58
_0802CEBC:
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0802CEF6
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _0802CEF6
	strb r1, [r5]
	b _0802CEF6
_0802CEDA:
	mov r2, #128
	lsl r2, r2, #9
	add r0, r3, r2
	lsr r7, r0, #16
	asr r0, r0, #16
	mov r3, r9
	mov r1, #16
	ldrsh r2, [r3, r1]
	ldr r1, [r5]
	add r1, r1, r2
	ldrb r1, [r1]
	cmp r0, r1
	bge _0802CEF6
	b _0802CD98
_0802CEF6:
	mov r0, #0
_0802CEF8:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802CD34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802CF08
sub_0802CF08: @ 0x0802CF08
	ldr r1, _0802CF18  @ =0x03000D84
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0802CF1C  @ =0x03000D68
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802CF18:
	.4byte 0x03000D84
_0802CF1C:
	.4byte 0x03000D68
	THUMB_FUNC_END sub_0802CF08

	THUMB_FUNC_START sub_0802CF20
sub_0802CF20: @ 0x0802CF20
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0802CF60  @ =0x03000D84
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802CF70
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	ldr r1, _0802CF64  @ =0x030019AC
	ldr r2, [r1]
	add r3, r2, #0
	add r3, r3, #67
	mov r1, #0
	ldrsb r1, [r3, r1]
	cmp r0, r1
	bne _0802CF54
	ldr r0, [r2, #36]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r1, _0802CF68  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #36]
	mov r0, #255
	strb r0, [r3]
_0802CF54:
	ldr r0, _0802CF6C  @ =0x03000D54
	ldr r0, [r0]
	str r0, [r4, #36]
	mov r0, #1
	b _0802CF72
	.byte 0x00
	.byte 0x00
_0802CF60:
	.4byte 0x03000D84
_0802CF64:
	.4byte 0x030019AC
_0802CF68:
	.4byte 0xFFFFFF00
_0802CF6C:
	.4byte 0x03000D54
_0802CF70:
	mov r0, #0
_0802CF72:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802CF20

	THUMB_FUNC_START sub_0802CF78
sub_0802CF78: @ 0x0802CF78
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r0, #0
	mov r8, r0
	ldr r0, _0802CFCC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0802D058
	ldr r2, _0802CFD0  @ =0x03000170
	ldr r1, [r2, #28]
	cmp r1, #0
	beq _0802D058
	ldr r0, _0802CFD4  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802D058
	add r4, r1, #0
	add r6, r4, #0
	add r6, r6, #144
	cmp r4, r6
	bcs _0802D040
	mov r7, #1
	neg r7, r7
	mov r9, r2
	mov r3, #4
	add r3, r3, r9
	mov r10, r3
_0802CFBA:
	ldr r0, [r4]
	cmp r0, r7
	beq _0802D03A
	cmp r0, #2
	bgt _0802D03A
	cmp r0, #2
	bne _0802CFD8
	str r7, [r4]
	b _0802D03A
_0802CFCC:
	.4byte gUnknown_03001A1C
_0802CFD0:
	.4byte 0x03000170
_0802CFD4:
	.4byte gUnknown_03001A38
_0802CFD8:
	mov r0, #1
	add r8, r8, r0
	ldr r5, _0802D010  @ =0x03000170
	ldr r0, [r5, #32]
	cmp r0, r7
	beq _0802CFEC
	bl sub_080721A8
	cmp r0, #0
	beq _0802D004
_0802CFEC:
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #109
	mov r1, #4
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	str r0, [r5, #32]
_0802D004:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802D014
	sub r0, r0, #1
	b _0802D038
	.byte 0x00
	.byte 0x00
_0802D010:
	.4byte 0x03000170
_0802D014:
	ldr r2, [r4, #8]
	ldr r1, [r2, #8]
	mov r3, r9
	ldr r0, [r3, #24]
	add r1, r1, r0
	str r1, [r2, #8]
	ldr r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r10
	ldr r0, [r0]
	cmp r1, r0
	bne _0802D036
	add r0, r4, #0
	mov r1, #2
	bl sub_0802D1DC
	b _0802D03A
_0802D036:
	ldrb r0, [r1, #12]
_0802D038:
	strb r0, [r4, #4]
_0802D03A:
	add r4, r4, #12
	cmp r4, r6
	bcc _0802CFBA
_0802D040:
	mov r0, r8
	cmp r0, #0
	bne _0802D058
	ldr r5, _0802D068  @ =0x03000170
	ldr r0, [r5, #32]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	beq _0802D058
	bl sub_08071D9C
	str r4, [r5, #32]
_0802D058:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802D068:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802CF78

	THUMB_FUNC_START sub_0802D06C
sub_0802D06C: @ 0x0802D06C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #144
	bl arena_allocate
	ldr r1, _0802D0B8  @ =0x03000170
	str r0, [r1, #28]
	mov r8, r1
	mov r1, #0
	mov r6, #0
	mov r5, #11
_0802D086:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _0802D086
	ldr r0, _0802D0B8  @ =0x03000170
	str r7, [r0, #32]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802D0B8:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D06C

	THUMB_FUNC_START sub_0802D0BC
sub_0802D0BC: @ 0x0802D0BC
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _0802D0E4  @ =0x03000170
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0802D0CA:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0802D0CA
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D0E4:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D0BC

	THUMB_FUNC_START sub_0802D0E8
sub_0802D0E8: @ 0x0802D0E8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r4, _0802D13C  @ =0x03000170
	ldr r0, [r4, #28]
	cmp r0, #0
	bne _0802D12E
	mov r0, #144
	bl arena_allocate
	str r0, [r4, #28]
	mov r8, r4
	mov r1, #0
	mov r6, #0
	mov r5, #11
_0802D108:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _0802D108
	ldr r0, _0802D13C  @ =0x03000170
	str r7, [r0, #32]
_0802D12E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D13C:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D0E8

	THUMB_FUNC_START sub_0802D140
sub_0802D140: @ 0x0802D140
	push {r4-r7,lr}
	add r3, r1, #0
	mov r1, #1
	neg r1, r1
	mov r12, r1
	ldr r0, [r0, #8]
	asr r7, r0, #11
	mov r0, #64
	neg r0, r0
	and r0, r0, r3
	add r7, r7, r0
	cmp r3, r7
	bhi _0802D1CA
_0802D15A:
	ldr r0, _0802D18C  @ =gUnknown_0807820C
	ldr r4, [r0]
	lsl r1, r3, #1
	ldr r2, _0802D190  @ =0x0000400C
	add r0, r4, r2
	add r0, r0, r1
	ldrh r2, [r0]
	ldr r5, _0802D194  @ =0x0000600C
	add r0, r4, r5
	add r0, r0, r1
	ldrh r5, [r0]
	add r6, r3, #1
	cmp r2, #6
	bne _0802D1C2
	cmp r5, r12
	beq _0802D1C2
	lsl r0, r5, #2
	add r0, r0, #8
	add r3, r4, r0
	ldr r0, _0802D198  @ =0x03000170
	ldr r2, [r0, #28]
	add r4, r2, #0
	add r4, r4, #144
	b _0802D19E
	.byte 0x00
	.byte 0x00
_0802D18C:
	.4byte gUnknown_0807820C
_0802D190:
	.4byte 0x0000400C
_0802D194:
	.4byte 0x0000600C
_0802D198:
	.4byte 0x03000170
_0802D19C:
	add r2, r2, #12
_0802D19E:
	cmp r2, r4
	bcs _0802D1C2
	ldr r1, [r2]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0802D19C
	ldr r0, [r2, #8]
	ldr r1, [r3]
	lsl r1, r1, #9
	lsr r1, r1, #25
	str r1, [r0]
	ldrb r1, [r3, #3]
	str r1, [r0, #4]
	add r0, r2, #0
	mov r1, #1
	bl sub_0802D1DC
_0802D1C2:
	mov r12, r5
	add r3, r6, #0
	cmp r3, r7
	bls _0802D15A
_0802D1CA:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802D140

	THUMB_FUNC_START sub_0802D1D0
sub_0802D1D0: @ 0x0802D1D0
	ldr r1, _0802D1D8  @ =0x03000170
	mov r0, #0
	str r0, [r1, #28]
	bx lr
_0802D1D8:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D1D0

	THUMB_FUNC_START sub_0802D1DC
sub_0802D1DC: @ 0x0802D1DC
	push {lr}
	add r3, r0, #0
	ldr r0, [r3]
	cmp r0, r1
	beq _0802D1FE
	str r1, [r3]
	ldr r0, [r3, #8]
	ldr r2, _0802D204  @ =0x03000170
	lsl r1, r1, #3
	add r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	ldrb r1, [r1, #12]
	strb r1, [r3, #4]
	ldr r1, [r0, #8]
	bl sub_08001BA4
_0802D1FE:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D204:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D1DC

.section .data

	.GLOBAL gUnknown_087DCC50
gUnknown_087DCC50:
	.INCBIN "baserom.gba", 0x7DCC50, 0x7DED6C-0x7DCC50

	.GLOBAL gUnknown_087DED6C
gUnknown_087DED6C:
	.INCBIN "baserom.gba", 0x7DED6C, 0x7E21D0-0x7DED6C

	.GLOBAL gUnknown_087E21D0
gUnknown_087E21D0:
	.INCBIN "baserom.gba", 0x7E21D0, 0x7E4B48-0x7E21D0

	.GLOBAL gUnknown_087E4B48
gUnknown_087E4B48:
	.INCBIN "baserom.gba", 0x7E4B48, 0x7E88DC-0x7E4B48

	.GLOBAL gUnknown_087E88DC
gUnknown_087E88DC:
	.INCBIN "baserom.gba", 0x7E88DC, 0x7EB618-0x7E88DC

	.GLOBAL gUnknown_087EB618
gUnknown_087EB618:
	.INCBIN "baserom.gba", 0x7EB618, 0x7EF674-0x7EB618

	.GLOBAL gUnknown_087EF674
gUnknown_087EF674:
	.INCBIN "baserom.gba", 0x7EF674, 0x7F1714-0x7EF674

	.GLOBAL gUnknown_087F1714
gUnknown_087F1714:
	.INCBIN "baserom.gba", 0x7F1714, 0x7F52DC-0x7F1714

	.GLOBAL gUnknown_087F52DC
gUnknown_087F52DC:
	.INCBIN "baserom.gba", 0x7F52DC, 0x7F6CF0-0x7F52DC

	.GLOBAL gUnknown_087F6CF0
gUnknown_087F6CF0:
	.INCBIN "baserom.gba", 0x7F6CF0, 0x7FB054-0x7F6CF0

	.GLOBAL gUnknown_087FB054
gUnknown_087FB054:
	.INCBIN "baserom.gba", 0x7FB054, 0x7FD5AC-0x7FB054

	.GLOBAL gUnknown_087FD5AC
gUnknown_087FD5AC:
	.INCBIN "baserom.gba", 0x7FD5AC, 0x801ABC-0x7FD5AC

	.GLOBAL gUnknown_08801ABC
gUnknown_08801ABC:
	.INCBIN "baserom.gba", 0x801ABC, 0x8034AC-0x801ABC

	.GLOBAL gUnknown_088034AC
gUnknown_088034AC:
	.INCBIN "baserom.gba", 0x8034AC, 0x8076D4-0x8034AC

	.GLOBAL gUnknown_088076D4
gUnknown_088076D4:
	.INCBIN "baserom.gba", 0x8076D4, 0x8095E0-0x8076D4

	.GLOBAL gUnknown_088095E0
gUnknown_088095E0:
	.INCBIN "baserom.gba", 0x8095E0, 0x80D09C-0x8095E0

	.GLOBAL gUnknown_0880D09C
gUnknown_0880D09C:
	.INCBIN "baserom.gba", 0x80D09C, 0x80F0A4-0x80D09C

	.GLOBAL gUnknown_0880F0A4
gUnknown_0880F0A4:
	.INCBIN "baserom.gba", 0x80F0A4, 0x8133F0-0x80F0A4

	.GLOBAL gUnknown_088133F0
gUnknown_088133F0:
	.INCBIN "baserom.gba", 0x8133F0, 0x814E6C-0x8133F0

	.GLOBAL gUnknown_08814E6C
gUnknown_08814E6C:
	.INCBIN "baserom.gba", 0x814E6C, 0x8184BC-0x814E6C

	.GLOBAL gUnknown_088184BC
gUnknown_088184BC:
	.INCBIN "baserom.gba", 0x8184BC, 0x81A270-0x8184BC

	.GLOBAL gUnknown_0881A270
gUnknown_0881A270:
	.INCBIN "baserom.gba", 0x81A270, 0x81E02C-0x81A270

	.GLOBAL gUnknown_0881E02C
gUnknown_0881E02C:
	.INCBIN "baserom.gba", 0x81E02C, 0x81FE98-0x81E02C

	.GLOBAL gUnknown_0881FE98
gUnknown_0881FE98:
	.INCBIN "baserom.gba", 0x81FE98, 0x823B74-0x81FE98

	.GLOBAL gUnknown_08823B74
gUnknown_08823B74:
	.INCBIN "baserom.gba", 0x823B74, 0x825F04-0x823B74

	.GLOBAL gUnknown_08825F04
gUnknown_08825F04:
	.INCBIN "baserom.gba", 0x825F04, 0x829B18-0x825F04

	.GLOBAL gUnknown_08829B18
gUnknown_08829B18:
	.INCBIN "baserom.gba", 0x829B18, 0x82B4C4-0x829B18

	.GLOBAL gUnknown_0882B4C4
gUnknown_0882B4C4:
	.INCBIN "baserom.gba", 0x82B4C4, 0x85A088-0x82B4C4

	.GLOBAL gUnknown_0885A088
gUnknown_0885A088:
	.INCBIN "baserom.gba", 0x85A088, 0x85C4C4-0x85A088

	.GLOBAL gUnknown_0885C4C4
gUnknown_0885C4C4:
	.INCBIN "baserom.gba", 0x85C4C4, 0x85D720-0x85C4C4

	.GLOBAL gUnknown_0885D720
gUnknown_0885D720:
	.INCBIN "baserom.gba", 0x85D720, 0x86022C-0x85D720

	.GLOBAL gUnknown_0886022C
gUnknown_0886022C:
	.INCBIN "baserom.gba", 0x86022C, 0x8637E8-0x86022C

	.GLOBAL gUnknown_088637E8
gUnknown_088637E8:
	.INCBIN "baserom.gba", 0x8637E8, 0x866A48-0x8637E8

	.GLOBAL gUnknown_08866A48
gUnknown_08866A48:
	.INCBIN "baserom.gba", 0x866A48, 0x867560-0x866A48

	.GLOBAL gUnknown_08867560
gUnknown_08867560:
	.INCBIN "baserom.gba", 0x867560, 0x86A328-0x867560

	.GLOBAL gUnknown_0886A328
gUnknown_0886A328:
	.INCBIN "baserom.gba", 0x86A328, 0x86CFCC-0x86A328

	.GLOBAL gUnknown_0886CFCC
gUnknown_0886CFCC:
	.INCBIN "baserom.gba", 0x86CFCC, 0x8754F8-0x86CFCC

	.GLOBAL gUnknown_088754F8
gUnknown_088754F8:
	.INCBIN "baserom.gba", 0x8754F8, 0xAF43E4-0x8754F8

	.GLOBAL gUnknown_08AF43E4
gUnknown_08AF43E4:
	.INCBIN "baserom.gba", 0xAF43E4, 0xB29054-0xAF43E4

	.GLOBAL gUnknown_08B29054
gUnknown_08B29054:
	.INCBIN "baserom.gba", 0xB29054, 0xB2AD88-0xB29054

	.GLOBAL gUnknown_08B2AD88
gUnknown_08B2AD88:
	.INCBIN "baserom.gba", 0xB2AD88, 0xB2CA5C-0xB2AD88

	.GLOBAL gUnknown_08B2CA5C
gUnknown_08B2CA5C:
	.INCBIN "baserom.gba", 0xB2CA5C, 0xB2CDF4-0xB2CA5C

	.GLOBAL gUnknown_08B2CDF4
gUnknown_08B2CDF4:
	.INCBIN "baserom.gba", 0xB2CDF4, 0xB2CEBC-0xB2CDF4

	.GLOBAL gUnknown_08B2CEBC
gUnknown_08B2CEBC:
	.INCBIN "baserom.gba", 0xB2CEBC, 0xB2CF84-0xB2CEBC

	.GLOBAL gUnknown_08B2CF84
gUnknown_08B2CF84:
	.INCBIN "baserom.gba", 0xB2CF84, 0xB2CFC0-0xB2CF84

	.GLOBAL gUnknown_08B2CFC0
gUnknown_08B2CFC0:
	.INCBIN "baserom.gba", 0xB2CFC0, 0xB2CFC8-0xB2CFC0

	.GLOBAL gUnknown_08B2CFC8
gUnknown_08B2CFC8:
	.INCBIN "baserom.gba", 0xB2CFC8, 0xB2CFD0-0xB2CFC8

	.GLOBAL gUnknown_08B2CFD0
gUnknown_08B2CFD0:
	.INCBIN "baserom.gba", 0xB2CFD0, 0xB2D378-0xB2CFD0

	.GLOBAL gUnknown_08B2D378
gUnknown_08B2D378:
	.INCBIN "baserom.gba", 0xB2D378, 0xB2D380-0xB2D378

	.GLOBAL gUnknown_08B2D380
gUnknown_08B2D380:
	.INCBIN "baserom.gba", 0xB2D380, 0xB2D574-0xB2D380

	.GLOBAL gUnknown_08B2D574
gUnknown_08B2D574:
	.INCBIN "baserom.gba", 0xB2D574, 0xB2D578-0xB2D574

	.GLOBAL gUnknown_08B2D578
gUnknown_08B2D578:
	.INCBIN "baserom.gba", 0xB2D578, 0xB2DC74-0xB2D578

	.GLOBAL gUnknown_08B2DC74
gUnknown_08B2DC74:
	.INCBIN "baserom.gba", 0xB2DC74, 0xB2F070-0xB2DC74

	.GLOBAL gUnknown_08B2F070
gUnknown_08B2F070:
	.INCBIN "baserom.gba", 0xB2F070, 0xB2F5B8-0xB2F070

	.GLOBAL gUnknown_08B2F5B8
gUnknown_08B2F5B8:
	.INCBIN "baserom.gba", 0xB2F5B8, 0xB2FFDC-0xB2F5B8

	.GLOBAL gUnknown_08B2FFDC
gUnknown_08B2FFDC:
	.INCBIN "baserom.gba", 0xB2FFDC, 0xB30768-0xB2FFDC

	.GLOBAL gUnknown_08B30768
gUnknown_08B30768:
	.INCBIN "baserom.gba", 0xB30768, 0xB30F94-0xB30768

	.GLOBAL gUnknown_08B30F94
gUnknown_08B30F94:
	.INCBIN "baserom.gba", 0xB30F94, 0xB32118-0xB30F94

	.GLOBAL gUnknown_08B32118
gUnknown_08B32118:
	.INCBIN "baserom.gba", 0xB32118, 0xB35FC0-0xB32118

	.GLOBAL gUnknown_08B35FC0
gUnknown_08B35FC0:
	.INCBIN "baserom.gba", 0xB35FC0, 0xB37168-0xB35FC0

	.GLOBAL gUnknown_08B37168
gUnknown_08B37168:
	.INCBIN "baserom.gba", 0xB37168, 0xB3732C-0xB37168

	.GLOBAL gUnknown_08B3732C
gUnknown_08B3732C:
	.INCBIN "baserom.gba", 0xB3732C, 0xB37424-0xB3732C

	.GLOBAL gUnknown_08B37424
gUnknown_08B37424:
	.INCBIN "baserom.gba", 0xB37424, 0xB3961C-0xB37424

	.GLOBAL gUnknown_08B3961C
gUnknown_08B3961C:
	.INCBIN "baserom.gba", 0xB3961C, 0xB39C1C-0xB3961C

	.GLOBAL gUnknown_08B39C1C
gUnknown_08B39C1C:
	.INCBIN "baserom.gba", 0xB39C1C, 0xB39F1C-0xB39C1C

	.GLOBAL gUnknown_08B39F1C
gUnknown_08B39F1C:
	.INCBIN "baserom.gba", 0xB39F1C, 0xB39F48-0xB39F1C

	.GLOBAL gUnknown_08B39F48
gUnknown_08B39F48:
	.INCBIN "baserom.gba", 0xB39F48, 0xB39FC4-0xB39F48
