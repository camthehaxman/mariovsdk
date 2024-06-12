	.INCLUDE "macro.inc"

	THUMB_FUNC_START clear_gameover_init_callback
clear_gameover_init_callback: @ 0x0801BF14
	push {r4-r6,lr}
	sub sp, sp, #36
	mov r0, #0
	bl arena_restore_head
	ldr r0, _0801BFAC  @ =gUnknown_030012A0
	mov r5, #0
	strh r5, [r0]
	ldr r0, _0801BFB0  @ =gUnknown_03001710
	strh r5, [r0]
	ldr r1, _0801BFB4  @ =gUnknown_030009D8
	ldr r0, _0801BFB8  @ =0x030000C6
	strb r5, [r0]
	strh r5, [r1]
	ldr r6, _0801BFBC  @ =0x030000C4
	ldr r0, _0801BFC0  @ =0x030000C5
	strb r5, [r0]
	strb r5, [r6]
	ldr r4, _0801BFC4  @ =gUnknown_03000BBC
	bl get_lives
	strb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801BFE0
	mov r0, #15
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	mov r0, #1
	strb r0, [r6]
	ldr r0, _0801BFC8  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801BF64
	bl sub_0801C1F0
_0801BF64:
	ldr r1, _0801BFCC  @ =0x030000C0
	mov r0, #50
	strb r0, [r1]
	ldr r0, _0801BFD0  @ =0x030000C2
	strb r5, [r0]
	ldr r1, _0801BFD4  @ =0x030000C3
	ldr r0, _0801BFD8  @ =gUnknown_085DED1C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	add r0, sp, #16
	mov r1, #0
	str r1, [sp, #16]
	str r1, [r0, #4]
	ldr r4, _0801BFDC  @ =gUnknown_08829B18
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r1, #3
	bl something_with_loading_graphics_08032F24
	mov r0, #6
	mov r1, #3
	bl copy_palettes_to_vram
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #194
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	b _0801C1B4
	.byte 0x00
	.byte 0x00
_0801BFAC:
	.4byte gUnknown_030012A0
_0801BFB0:
	.4byte gUnknown_03001710
_0801BFB4:
	.4byte gUnknown_030009D8
_0801BFB8:
	.4byte 0x030000C6
_0801BFBC:
	.4byte 0x030000C4
_0801BFC0:
	.4byte 0x030000C5
_0801BFC4:
	.4byte gUnknown_03000BBC
_0801BFC8:
	.4byte gUnknown_03000BB4
_0801BFCC:
	.4byte 0x030000C0
_0801BFD0:
	.4byte 0x030000C2
_0801BFD4:
	.4byte 0x030000C3
_0801BFD8:
	.4byte gUnknown_085DED1C
_0801BFDC:
	.4byte gUnknown_08829B18
_0801BFE0:
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	ldr r0, _0801C014  @ =0x030000C7
	strb r5, [r0]
	ldr r1, _0801C018  @ =0x030000C8
	mov r0, #30
	strb r0, [r1]
	ldr r0, _0801C01C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C0B0
	ldr r0, _0801C020  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bhi _0801C0A0
	lsl r0, r0, #2
	ldr r1, _0801C024  @ =0x0801C028
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0801C014:
	.4byte 0x030000C7
_0801C018:
	.4byte 0x030000C8
_0801C01C:
	.4byte gUnknown_03000B80
_0801C020:
	.4byte gUnknown_03000B90
_0801C024:
	.4byte _0801C028
_0801C028:
	.4byte _0801C040
	.4byte _0801C050
	.4byte _0801C060
	.4byte _0801C070
	.4byte _0801C080
	.4byte _0801C090
_0801C040:
	ldr r0, _0801C048  @ =gUnknown_087E21D0
	str r0, [sp]
	ldr r0, _0801C04C  @ =gUnknown_087E4B48
	b _0801C13E
_0801C048:
	.4byte gUnknown_087E21D0
_0801C04C:
	.4byte gUnknown_087E4B48
_0801C050:
	ldr r0, _0801C058  @ =gUnknown_087E88DC
	str r0, [sp]
	ldr r0, _0801C05C  @ =gUnknown_087EB618
	b _0801C13E
_0801C058:
	.4byte gUnknown_087E88DC
_0801C05C:
	.4byte gUnknown_087EB618
_0801C060:
	ldr r0, _0801C068  @ =gUnknown_087EF674
	str r0, [sp]
	ldr r0, _0801C06C  @ =gUnknown_087F1714
	b _0801C13E
_0801C068:
	.4byte gUnknown_087EF674
_0801C06C:
	.4byte gUnknown_087F1714
_0801C070:
	ldr r0, _0801C078  @ =gUnknown_087F52DC
	str r0, [sp]
	ldr r0, _0801C07C  @ =gUnknown_087F6CF0
	b _0801C13E
_0801C078:
	.4byte gUnknown_087F52DC
_0801C07C:
	.4byte gUnknown_087F6CF0
_0801C080:
	ldr r0, _0801C088  @ =gUnknown_087FB054
	str r0, [sp]
	ldr r0, _0801C08C  @ =gUnknown_087FD5AC
	b _0801C13E
_0801C088:
	.4byte gUnknown_087FB054
_0801C08C:
	.4byte gUnknown_087FD5AC
_0801C090:
	ldr r0, _0801C098  @ =gUnknown_08801ABC
	str r0, [sp]
	ldr r0, _0801C09C  @ =gUnknown_088034AC
	b _0801C13E
_0801C098:
	.4byte gUnknown_08801ABC
_0801C09C:
	.4byte gUnknown_088034AC
_0801C0A0:
	ldr r0, _0801C0A8  @ =gUnknown_08801ABC
	str r0, [sp]
	ldr r0, _0801C0AC  @ =gUnknown_088034AC
	b _0801C13E
_0801C0A8:
	.4byte gUnknown_08801ABC
_0801C0AC:
	.4byte gUnknown_088034AC
_0801C0B0:
	cmp r0, #1
	bne _0801C140
	ldr r0, _0801C0C8  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bhi _0801C138
	lsl r0, r0, #2
	ldr r1, _0801C0CC  @ =0x0801C0D0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0801C0C8:
	.4byte gUnknown_03000B90
_0801C0CC:
	.4byte _0801C0D0
_0801C0D0:
	.4byte _0801C0E8
	.4byte _0801C0F8
	.4byte _0801C108
	.4byte _0801C118
	.4byte _0801C128
	.4byte _0801C138
_0801C0E8:
	ldr r0, _0801C0F0  @ =gUnknown_088076D4
	str r0, [sp]
	ldr r0, _0801C0F4  @ =gUnknown_088095E0
	b _0801C13E
_0801C0F0:
	.4byte gUnknown_088076D4
_0801C0F4:
	.4byte gUnknown_088095E0
_0801C0F8:
	ldr r0, _0801C100  @ =gUnknown_0880D09C
	str r0, [sp]
	ldr r0, _0801C104  @ =gUnknown_0880F0A4
	b _0801C13E
_0801C100:
	.4byte gUnknown_0880D09C
_0801C104:
	.4byte gUnknown_0880F0A4
_0801C108:
	ldr r0, _0801C110  @ =gUnknown_088133F0
	str r0, [sp]
	ldr r0, _0801C114  @ =gUnknown_08814E6C
	b _0801C13E
_0801C110:
	.4byte gUnknown_088133F0
_0801C114:
	.4byte gUnknown_08814E6C
_0801C118:
	ldr r0, _0801C120  @ =gUnknown_088184BC
	str r0, [sp]
	ldr r0, _0801C124  @ =gUnknown_0881A270
	b _0801C13E
_0801C120:
	.4byte gUnknown_088184BC
_0801C124:
	.4byte gUnknown_0881A270
_0801C128:
	ldr r0, _0801C130  @ =gUnknown_0881E02C
	str r0, [sp]
	ldr r0, _0801C134  @ =gUnknown_0881FE98
	b _0801C13E
_0801C130:
	.4byte gUnknown_0881E02C
_0801C134:
	.4byte gUnknown_0881FE98
_0801C138:
	ldr r0, _0801C170  @ =gUnknown_08823B74
	str r0, [sp]
	ldr r0, _0801C174  @ =gUnknown_08825F04
_0801C13E:
	str r0, [sp, #4]
_0801C140:
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	bl something_with_loading_graphics_08032F24
	ldr r0, _0801C178  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C184
	ldr r1, _0801C17C  @ =gUnknown_08079778
	ldr r0, _0801C180  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl copy_palettes_to_vram
	b _0801C19C
_0801C170:
	.4byte gUnknown_08823B74
_0801C174:
	.4byte gUnknown_08825F04
_0801C178:
	.4byte gUnknown_03000B80
_0801C17C:
	.4byte gUnknown_08079778
_0801C180:
	.4byte gUnknown_03000B90
_0801C184:
	cmp r0, #1
	bne _0801C19C
	ldr r1, _0801C1D8  @ =gUnknown_08079790
	ldr r0, _0801C1DC  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl copy_palettes_to_vram
_0801C19C:
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #154
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r2, _0801C1E0  @ =gUnknown_087E21D0
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl sub_08029CDC
_0801C1B4:
	add r2, sp, #32
	mov r0, #160
	strh r0, [r2]
	ldr r1, _0801C1E4  @ =0x040000D4
	str r2, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801C1E8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0801C1EC  @ =0x030000C1
	mov r0, #0
	strb r0, [r1]
	add sp, sp, #36
	pop {r4-r6}
	pop {r0}
	bx r0
_0801C1D8:
	.4byte gUnknown_08079790
_0801C1DC:
	.4byte gUnknown_03000B90
_0801C1E0:
	.4byte gUnknown_087E21D0
_0801C1E4:
	.4byte 0x040000D4
_0801C1E8:
	.4byte 0x81000100
_0801C1EC:
	.4byte 0x030000C1
	THUMB_FUNC_END clear_gameover_init_callback

	THUMB_FUNC_START sub_0801C1F0
sub_0801C1F0: @ 0x0801C1F0
	push {r4,r5,lr}
	ldr r1, _0801C264  @ =gUnknown_03000BBC
	mov r0, #5
	strb r0, [r1]
	mov r0, #5
	bl set_lives
	ldr r5, _0801C268  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, _0801C26C  @ =gUnknown_03000B58
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r2, #0
	bl sub_080103C8
	cmp r0, #0
	bne _0801C25E
	ldr r4, _0801C270  @ =gUnknown_03000B90
	ldr r0, [r4, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0801C250
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0801C23C
	ldr r2, _0801C274  @ =gUnknown_03000B74
	ldrb r1, [r2]
	mov r0, #2
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	lsl r0, r0, #24
	asr r0, r0, #24
	strh r0, [r4, #16]
_0801C23C:
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_0800F6EC
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_08004428
_0801C250:
	ldr r1, _0801C270  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r2, #16
	ldrsh r1, [r1, r2]
	bl sub_08010A3C
_0801C25E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C264:
	.4byte gUnknown_03000BBC
_0801C268:
	.4byte gUnknown_03000B80
_0801C26C:
	.4byte gUnknown_03000B58
_0801C270:
	.4byte gUnknown_03000B90
_0801C274:
	.4byte gUnknown_03000B74
	THUMB_FUNC_END sub_0801C1F0

	THUMB_FUNC_START clear_gameover_main_callback
clear_gameover_main_callback: @ 0x0801C278
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_08029C20
	bl process_input
	ldr r0, _0801C328  @ =0x030000C6
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, _0801C32C  @ =0x030000C4
	ldrb r4, [r0]
	cmp r4, #0
	bne _0801C296
	b _0801C3A8
_0801C296:
	ldr r4, _0801C330  @ =gUnknown_030009D8
	ldrh r1, [r4]
	ldr r0, _0801C334  @ =0x0000270F
	cmp r1, r0
	bhi _0801C2A4
	add r0, r1, #1
	strh r0, [r4]
_0801C2A4:
	ldr r5, _0801C338  @ =gSomeKeys_030012E8
	ldrh r1, [r5]
	mov r0, #48
	and r0, r0, r1
	cmp r0, #0
	beq _0801C2D0
	ldr r2, _0801C33C  @ =0x030000C1
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
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
_0801C2D0:
	ldrh r3, [r4]
	cmp r3, #120
	bne _0801C2E6
	mov r0, #128
	lsl r0, r0, #19
	ldrh r1, [r0]
	mov r4, #128
	lsl r4, r4, #3
	add r2, r4, #0
	orr r1, r1, r2
	strh r1, [r0]
_0801C2E6:
	ldrh r1, [r5]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0801C358
	cmp r3, #120
	bls _0801C358
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r0, _0801C33C  @ =0x030000C1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801C378
	bl sub_080720AC
	ldr r0, _0801C340  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801C344
	mov r0, #24
	b _0801C38A
	.byte 0x00
	.byte 0x00
_0801C328:
	.4byte 0x030000C6
_0801C32C:
	.4byte 0x030000C4
_0801C330:
	.4byte gUnknown_030009D8
_0801C334:
	.4byte 0x0000270F
_0801C338:
	.4byte gSomeKeys_030012E8
_0801C33C:
	.4byte 0x030000C1
_0801C340:
	.4byte gUnknown_03000BB4
_0801C344:
	ldr r0, _0801C350  @ =0x030000C5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C354
	mov r0, #8
	b _0801C38A
_0801C350:
	.4byte 0x030000C5
_0801C354:
	mov r0, #13
	b _0801C38A
_0801C358:
	ldr r0, _0801C394  @ =gUnknown_030009D8
	ldrh r1, [r0]
	ldr r0, _0801C398  @ =0x0000270F
	cmp r1, r0
	bls _0801C408
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0801C378:
	bl sub_080720AC
	ldr r0, _0801C39C  @ =gUnknown_03000B58
	strb r4, [r0]
	ldr r0, _0801C3A0  @ =gUnknown_03000B74
	strb r4, [r0]
	ldr r0, _0801C3A4  @ =gUnknown_03000B80
	strb r4, [r0]
	mov r0, #7
_0801C38A:
	mov r1, #1
	bl goto_state_080070E8
	b _0801C408
	.byte 0x00
	.byte 0x00
_0801C394:
	.4byte gUnknown_030009D8
_0801C398:
	.4byte 0x0000270F
_0801C39C:
	.4byte gUnknown_03000B58
_0801C3A0:
	.4byte gUnknown_03000B74
_0801C3A4:
	.4byte gUnknown_03000B80
_0801C3A8:
	ldr r2, _0801C414  @ =gUnknown_030009D8
	ldrh r1, [r2]
	mov r0, #250
	lsl r0, r0, #2
	cmp r1, r0
	bhi _0801C3B8
	add r0, r1, #1
	strh r0, [r2]
_0801C3B8:
	ldr r0, _0801C418  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0801C408
	ldr r0, _0801C41C  @ =0x030000C7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C408
	ldr r0, _0801C420  @ =0x030000C8
	ldrb r0, [r0]
	cmp r0, #40
	bne _0801C408
	bl sub_080720AC
	ldr r1, _0801C424  @ =gUnknown_0807976C
	ldr r0, _0801C428  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08071E14
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #21
	mov r1, #1
	bl goto_state_080070E8
_0801C408:
	bl sub_08008238
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C414:
	.4byte gUnknown_030009D8
_0801C418:
	.4byte gSomeKeys_030012E8
_0801C41C:
	.4byte 0x030000C7
_0801C420:
	.4byte 0x030000C8
_0801C424:
	.4byte gUnknown_0807976C
_0801C428:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END clear_gameover_main_callback

	THUMB_FUNC_START sub_0801C42C
sub_0801C42C: @ 0x0801C42C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _0801C4E8  @ =0x040000D4
	ldr r2, _0801C4EC  @ =gUnknown_085DED1C
	ldr r7, _0801C4F0  @ =0x030000C2
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C4F4  @ =gUnknown_085DEFAC
	add r0, r0, r1
	str r0, [r4]
	ldr r5, _0801C4F8  @ =gUnknown_0300192C
	ldrh r0, [r5]
	ldr r1, _0801C4FC  @ =0x06010000
	mov r12, r1
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r0, _0801C500  @ =0x84000020
	mov r10, r0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0801C504  @ =0x030000B8
	mov r9, r1
	ldr r0, _0801C508  @ =gUnknown_03001930
	mov r8, r0
	ldrh r2, [r0]
	strh r2, [r1]
	add r2, r2, #4
	strh r2, [r0]
	ldrh r3, [r5]
	add r3, r3, #128
	strh r3, [r5]
	ldr r6, _0801C50C  @ =gUnknown_085DF3AC
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C510  @ =gUnknown_085DF63C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5]
	add r0, r0, r12
	str r0, [r4, #4]
	mov r1, r10
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r9
	strh r2, [r0, #2]
	add r2, r2, #4
	mov r1, r8
	strh r2, [r1]
	add r3, r3, #128
	strh r3, [r5]
	ldr r6, _0801C514  @ =gUnknown_085DFA3C
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C518  @ =gUnknown_085DFCCC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5]
	add r0, r0, r12
	str r0, [r4, #4]
	mov r0, r10
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r9
	strh r2, [r1, #4]
	add r2, r2, #4
	mov r0, r8
	strh r2, [r0]
	add r3, r3, #128
	strh r3, [r5]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801C4E8:
	.4byte 0x040000D4
_0801C4EC:
	.4byte gUnknown_085DED1C
_0801C4F0:
	.4byte 0x030000C2
_0801C4F4:
	.4byte gUnknown_085DEFAC
_0801C4F8:
	.4byte gUnknown_0300192C
_0801C4FC:
	.4byte 0x06010000
_0801C500:
	.4byte 0x84000020
_0801C504:
	.4byte 0x030000B8
_0801C508:
	.4byte gUnknown_03001930
_0801C50C:
	.4byte gUnknown_085DF3AC
_0801C510:
	.4byte gUnknown_085DF63C
_0801C514:
	.4byte gUnknown_085DFA3C
_0801C518:
	.4byte gUnknown_085DFCCC
	THUMB_FUNC_END sub_0801C42C

	THUMB_FUNC_START sub_0801C51C
sub_0801C51C: @ 0x0801C51C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	mov r1, #0
	ldrsh r2, [r0, r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _0801C5BC  @ =gUnknown_086593A0
	add r1, r1, r2
	ldr r2, _0801C5C0  @ =0x040000D4
	ldr r1, [r1, #16]
	str r1, [r2]
	ldr r6, _0801C5C4  @ =0x030000BE
	ldrh r1, [r6]
	lsl r1, r1, #3
	ldr r3, _0801C5C8  @ =gOamBuffer
	mov r8, r3
	add r1, r1, r8
	str r1, [r2, #4]
	ldr r1, _0801C5CC  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r2, _0801C5D0  @ =0x030000B8
	ldrh r1, [r0, #2]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _0801C5D4  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _0801C5D8  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #1]
	mov r4, #13
	neg r4, r4
	add r1, r4, #0
	and r1, r1, r2
	mov r2, #4
	orr r1, r1, r2
	strb r1, [r3, #1]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r5, [r0, #4]
	ldrh r3, [r2, #2]
	ldr r1, _0801C5DC  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r5
	strh r1, [r2, #2]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r0, #5]
	strb r0, [r1]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C5BC:
	.4byte gUnknown_086593A0
_0801C5C0:
	.4byte 0x040000D4
_0801C5C4:
	.4byte 0x030000BE
_0801C5C8:
	.4byte gOamBuffer
_0801C5CC:
	.4byte 0x84000002
_0801C5D0:
	.4byte 0x030000B8
_0801C5D4:
	.4byte 0x000003FF
_0801C5D8:
	.4byte 0xFFFFFC00
_0801C5DC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801C51C

	THUMB_FUNC_START sub_0801C5E0
sub_0801C5E0: @ 0x0801C5E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r2, _0801C6CC  @ =0x030000C6
	ldrb r3, [r2]
	lsr r3, r3, #2
	lsl r2, r3, #8
	sub r2, r2, r3
	add r2, r0, r2
	lsl r2, r2, #5
	str r2, [sp]
	mov r2, #255
	ldr r3, [sp]
	and r3, r3, r2
	str r3, [sp]
	ldr r4, _0801C6D0  @ =0x040000D4
	ldr r3, _0801C6D4  @ =gUnknown_085F61B4
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r3
	ldrb r2, [r2]
	lsl r2, r2, #7
	ldr r3, _0801C6D8  @ =gUnknown_085F6390
	add r2, r2, r3
	str r2, [r4]
	ldr r7, _0801C6DC  @ =gUnknown_0300192C
	mov r10, r7
	mov r3, r10
	ldrh r2, [r3]
	ldr r3, _0801C6E0  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r2, _0801C6E4  @ =0x84000020
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldr r2, _0801C6E8  @ =gUnknown_085F6388
	str r2, [r4]
	ldr r7, _0801C6EC  @ =0x030000BE
	mov r8, r7
	mov r3, r8
	ldrh r2, [r3]
	lsl r2, r2, #3
	ldr r6, _0801C6F0  @ =gOamBuffer
	add r2, r2, r6
	str r2, [r4, #4]
	ldr r2, _0801C6F4  @ =0x84000002
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r4, [r3]
	lsl r4, r4, #3
	add r4, r4, r6
	ldrh r5, [r4, #4]
	lsl r3, r5, #22
	ldr r7, _0801C6F8  @ =gUnknown_03001930
	mov r9, r7
	lsr r3, r3, #22
	mov r2, r9
	ldrh r2, [r2]
	add r3, r3, r2
	ldr r7, _0801C6FC  @ =0x000003FF
	and r3, r3, r7
	ldr r2, _0801C700  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	mov r2, r8
	ldrh r3, [r2]
	lsl r3, r3, #3
	add r3, r3, r6
	lsl r1, r1, #16
	ldr r2, _0801C704  @ =gUnknown_080797B8
	add r0, r0, r2
	asr r1, r1, #16
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r7, _0801C708  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0801C70C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, _0801C710  @ =0x030000C7
	ldrb r0, [r0]
	mov r5, r10
	mov r3, r8
	mov r4, r9
	cmp r0, #0
	beq _0801C71C
	ldr r0, _0801C714  @ =0x030000C8
	ldrb r0, [r0]
	cmp r0, #29
	bls _0801C71C
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r2, _0801C718  @ =gUnknown_08076AD8
	ldr r7, [sp]
	lsl r0, r7, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #23
	mov r2, r12
	sub r0, r2, r0
	strb r0, [r1]
	b _0801C726
	.byte 0x00
	.byte 0x00
_0801C6CC:
	.4byte 0x030000C6
_0801C6D0:
	.4byte 0x040000D4
_0801C6D4:
	.4byte gUnknown_085F61B4
_0801C6D8:
	.4byte gUnknown_085F6390
_0801C6DC:
	.4byte gUnknown_0300192C
_0801C6E0:
	.4byte 0x06010000
_0801C6E4:
	.4byte 0x84000020
_0801C6E8:
	.4byte gUnknown_085F6388
_0801C6EC:
	.4byte 0x030000BE
_0801C6F0:
	.4byte gOamBuffer
_0801C6F4:
	.4byte 0x84000002
_0801C6F8:
	.4byte gUnknown_03001930
_0801C6FC:
	.4byte 0x000003FF
_0801C700:
	.4byte 0xFFFFFC00
_0801C704:
	.4byte gUnknown_080797B8
_0801C708:
	.4byte 0x000001FF
_0801C70C:
	.4byte 0xFFFFFE00
_0801C710:
	.4byte 0x030000C7
_0801C714:
	.4byte 0x030000C8
_0801C718:
	.4byte gUnknown_08076AD8
_0801C71C:
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r7, r12
	strb r7, [r0]
_0801C726:
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r0, [r5]
	add r0, r0, #128
	strh r0, [r5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C5E0

	THUMB_FUNC_START sub_0801C758
sub_0801C758: @ 0x0801C758
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0801C814  @ =0x030000C6
	ldrb r3, [r2]
	lsr r3, r3, #2
	lsl r2, r3, #8
	sub r2, r2, r3
	add r2, r1, r2
	lsl r2, r2, #6
	mov r12, r2
	mov r2, #255
	mov r3, r12
	and r3, r3, r2
	mov r12, r3
	ldr r3, _0801C818  @ =0x040000D4
	ldr r4, _0801C81C  @ =gUnknown_080C87B0
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r4
	ldrb r0, [r2]
	lsl r0, r0, #7
	ldr r2, _0801C820  @ =gUnknown_080C8E30
	add r0, r0, r2
	str r0, [r3]
	ldr r7, _0801C824  @ =gUnknown_0300192C
	mov r9, r7
	mov r2, r9
	ldrh r0, [r2]
	ldr r2, _0801C828  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0801C82C  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0801C830  @ =gUnknown_080C8E28
	str r0, [r3]
	ldr r6, _0801C834  @ =0x030000BE
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801C838  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0801C83C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r4, [r3, #4]
	lsl r2, r4, #22
	ldr r7, _0801C840  @ =gUnknown_03001930
	mov r8, r7
	lsr r2, r2, #22
	mov r0, r8
	ldrh r0, [r0]
	add r2, r2, r0
	ldr r7, _0801C844  @ =0x000003FF
	add r0, r7, #0
	and r2, r2, r0
	ldr r0, _0801C848  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r2
	strh r0, [r3, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r0, _0801C84C  @ =gUnknown_080797A8
	add r1, r1, r0
	ldrb r3, [r1]
	ldrh r1, [r2, #2]
	ldr r0, _0801C850  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	ldr r0, _0801C854  @ =0x030000C0
	ldrb r2, [r0]
	mov r4, r9
	mov r3, r8
	cmp r2, #0
	beq _0801C858
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, #33
	sub r0, r0, r2
	strb r0, [r1]
	b _0801C872
_0801C814:
	.4byte 0x030000C6
_0801C818:
	.4byte 0x040000D4
_0801C81C:
	.4byte gUnknown_080C87B0
_0801C820:
	.4byte gUnknown_080C8E30
_0801C824:
	.4byte gUnknown_0300192C
_0801C828:
	.4byte 0x06010000
_0801C82C:
	.4byte 0x84000020
_0801C830:
	.4byte gUnknown_080C8E28
_0801C834:
	.4byte 0x030000BE
_0801C838:
	.4byte gOamBuffer
_0801C83C:
	.4byte 0x84000002
_0801C840:
	.4byte gUnknown_03001930
_0801C844:
	.4byte 0x000003FF
_0801C848:
	.4byte 0xFFFFFC00
_0801C84C:
	.4byte gUnknown_080797A8
_0801C850:
	.4byte 0xFFFFFE00
_0801C854:
	.4byte 0x030000C0
_0801C858:
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801C8B4  @ =gUnknown_08076AD8
	mov r7, r12
	lsl r0, r7, #1
	add r0, r0, r1
	ldrh r1, [r0]
	lsl r1, r1, #16
	asr r1, r1, #23
	mov r0, #33
	sub r0, r0, r1
	strb r0, [r2]
_0801C872:
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #4
	strh r0, [r3]
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C8B4:
	.4byte gUnknown_08076AD8
	THUMB_FUNC_END sub_0801C758

	THUMB_FUNC_START sub_0801C8B8
sub_0801C8B8: @ 0x0801C8B8
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r0, _0801C8CC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C8D4
	ldr r0, _0801C8D0  @ =gUnknown_080797C8
	b _0801C8D6
_0801C8CC:
	.4byte gUnknown_03000B80
_0801C8D0:
	.4byte gUnknown_080797C8
_0801C8D4:
	ldr r0, _0801C900  @ =gUnknown_080797E0
_0801C8D6:
	ldr r2, _0801C904  @ =gUnknown_03000B90
	mov r3, #18
	ldrsh r1, [r2, r3]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r5, [r1]
	ldrh r7, [r1, #2]
	ldr r4, _0801C908  @ =0x030000C7
	ldrb r3, [r4]
	cmp r3, #0
	bne _0801C910
	ldr r1, _0801C90C  @ =0x030000C8
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C946
	add r0, r3, #1
	strb r0, [r4]
	b _0801C946
_0801C900:
	.4byte gUnknown_080797E0
_0801C904:
	.4byte gUnknown_03000B90
_0801C908:
	.4byte 0x030000C7
_0801C90C:
	.4byte 0x030000C8
_0801C910:
	ldr r1, _0801C974  @ =0x030000C8
	ldrb r0, [r1]
	cmp r0, #39
	bhi _0801C946
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #40
	bne _0801C946
	ldr r1, _0801C978  @ =gUnknown_0807976C
	mov r3, #18
	ldrsh r0, [r2, r3]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0801C946:
	ldr r0, _0801C97C  @ =0x030000C7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C980
	mov r4, #0
	lsl r6, r5, #16
	lsl r5, r7, #16
_0801C954:
	lsl r0, r4, #24
	lsr r0, r0, #24
	asr r1, r6, #16
	asr r2, r5, #16
	bl sub_0801C5E0
	lsl r0, r4, #16
	mov r3, #128
	lsl r3, r3, #9
	add r0, r0, r3
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #12
	ble _0801C954
	b _0801C9A2
	.byte 0x00
	.byte 0x00
_0801C974:
	.4byte 0x030000C8
_0801C978:
	.4byte gUnknown_0807976C
_0801C97C:
	.4byte 0x030000C7
_0801C980:
	mov r4, #0
	lsl r6, r5, #16
	lsl r5, r7, #16
_0801C986:
	lsl r0, r4, #24
	lsr r0, r0, #24
	asr r1, r6, #16
	asr r2, r5, #16
	bl sub_0801C5E0
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _0801C986
_0801C9A2:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C8B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START clear_gameover_display_callback
clear_gameover_display_callback: @ 0x0801C9AC
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r0, _0801CAC0  @ =0x030000C4
	ldrb r3, [r0]
	cmp r3, #0
	bne _0801C9BA
	b _0801CB00
_0801C9BA:
	add r1, sp, #12
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0801CAC4  @ =0x040000D4
	add r0, sp, #12
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CAC8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #16]
	add r0, sp, #16
	str r0, [r1]
	ldr r0, _0801CACC  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _0801CAD0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0801CAD4  @ =gUnknown_03001930
	ldr r2, _0801CAD8  @ =gUnknown_0300192C
	ldr r1, _0801CADC  @ =0x030000BE
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	ldr r0, _0801CAE0  @ =gUnknown_030009D8
	ldrh r1, [r0]
	add r2, r0, #0
	cmp r1, #59
	bls _0801CA2A
	mov r1, #0
	ldr r5, _0801CAE4  @ =gUnknown_080797B0
_0801CA00:
	lsl r4, r1, #16
	asr r4, r4, #16
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_0801C758
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801CA00
	ldr r1, _0801CAE8  @ =0x030000C0
	ldrb r0, [r1]
	ldr r2, _0801CAE0  @ =gUnknown_030009D8
	cmp r0, #0
	beq _0801CA2A
	sub r0, r0, #5
	strb r0, [r1]
_0801CA2A:
	ldrh r0, [r2]
	cmp r0, #119
	bhi _0801CA32
	b _0801CB5A
_0801CA32:
	ldr r5, _0801CAEC  @ =gUnknown_08079868
	ldr r4, _0801CAF0  @ =0x030000C1
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r6, [r0]
	bl sub_0801C42C
	ldr r2, _0801CAF4  @ =gUnknown_085DED1C
	ldr r0, _0801CAF8  @ =0x030000C2
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r0, [r0]
	bl sub_0801B2CC
	mov r1, #0
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r0, [r0, #4]
	cmp r1, r0
	bge _0801CA88
_0801CA66:
	lsl r4, r1, #16
	asr r4, r4, #16
	lsl r0, r4, #3
	add r0, r6, r0
	bl sub_0801C51C
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	ldr r0, _0801CAF0  @ =0x030000C1
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0801CA66
_0801CA88:
	ldr r1, _0801CAF8  @ =0x030000C2
	ldr r2, _0801CAFC  @ =0x030000C3
	ldr r3, _0801CAF4  @ =gUnknown_085DED1C
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801CB5A
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #18
	blt _0801CAAC
	mov r0, #0
	strb r0, [r1]
_0801CAAC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
	b _0801CB5A
	.byte 0x00
	.byte 0x00
_0801CAC0:
	.4byte 0x030000C4
_0801CAC4:
	.4byte 0x040000D4
_0801CAC8:
	.4byte 0x81000100
_0801CACC:
	.4byte gOamBuffer
_0801CAD0:
	.4byte 0x85000100
_0801CAD4:
	.4byte gUnknown_03001930
_0801CAD8:
	.4byte gUnknown_0300192C
_0801CADC:
	.4byte 0x030000BE
_0801CAE0:
	.4byte gUnknown_030009D8
_0801CAE4:
	.4byte gUnknown_080797B0
_0801CAE8:
	.4byte 0x030000C0
_0801CAEC:
	.4byte gUnknown_08079868
_0801CAF0:
	.4byte 0x030000C1
_0801CAF4:
	.4byte gUnknown_085DED1C
_0801CAF8:
	.4byte 0x030000C2
_0801CAFC:
	.4byte 0x030000C3
_0801CB00:
	add r1, sp, #12
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0801CB74  @ =0x040000D4
	add r0, sp, #12
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CB78  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #16]
	add r0, sp, #16
	str r0, [r1]
	ldr r0, _0801CB7C  @ =gOamBuffer
	str r0, [r1, #4]
	ldr r0, _0801CB80  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801CB84  @ =gUnknown_030009D8
	ldrh r4, [r0]
	cmp r4, #119
	bls _0801CB5A
	ldr r2, _0801CB88  @ =gUnknown_03001930
	ldr r1, _0801CB8C  @ =gUnknown_0300192C
	ldr r0, _0801CB90  @ =0x030000BE
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	cmp r4, #120
	bne _0801CB56
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #248
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_0801CB56:
	bl sub_0801C8B8
_0801CB5A:
	ldr r1, _0801CB74  @ =0x040000D4
	ldr r0, _0801CB7C  @ =gOamBuffer
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CB94  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_0801CB74:
	.4byte 0x040000D4
_0801CB78:
	.4byte 0x81000100
_0801CB7C:
	.4byte gOamBuffer
_0801CB80:
	.4byte 0x85000100
_0801CB84:
	.4byte gUnknown_030009D8
_0801CB88:
	.4byte gUnknown_03001930
_0801CB8C:
	.4byte gUnknown_0300192C
_0801CB90:
	.4byte 0x030000BE
_0801CB94:
	.4byte 0x84000100
	THUMB_FUNC_END clear_gameover_display_callback

	THUMB_FUNC_START sub_0801CB98
sub_0801CB98: @ 0x0801CB98
	bx lr
	THUMB_FUNC_END sub_0801CB98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801CB9C
sub_0801CB9C: @ 0x0801CB9C
	push {r4,r5,lr}
	mov r1, #0
	ldr r5, _0801CBD0  @ =gUnknown_080797B0
_0801CBA2:
	lsl r4, r1, #16
	asr r4, r4, #16
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_0801C758
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801CBA2
	ldr r1, _0801CBD4  @ =0x030000C0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801CBCA
	sub r0, r0, #5
	strb r0, [r1]
_0801CBCA:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801CBD0:
	.4byte gUnknown_080797B0
_0801CBD4:
	.4byte 0x030000C0
	THUMB_FUNC_END sub_0801CB9C

	THUMB_FUNC_START sub_0801CBD8
sub_0801CBD8: @ 0x0801CBD8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801CEA8  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801CCCE
	ldr r2, _0801CEAC  @ =0x030000D8
	mov r10, r2
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	str r0, [r3]
	ldr r0, _0801CEB0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r4, _0801CEB4  @ =0x040000D4
	ldr r0, _0801CEB8  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801CEBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801CEC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801CEC4  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801CEC8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801CECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801CED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801CED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
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
	ldr r3, _0801CED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801CEDC  @ =0xFFFFFC00
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
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801CEE0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CCCE:
	ldr r2, _0801CEA8  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801CDB0
	ldr r3, _0801CEAC  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801CEB0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801CEB4  @ =0x040000D4
	ldr r0, _0801CEB8  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801CEBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801CEC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801CEC4  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801CEC8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801CECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801CED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801CED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
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
	ldr r3, _0801CED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801CEDC  @ =0xFFFFFC00
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
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801CEE0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CDB0:
	ldr r2, _0801CEA8  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801CE9A
	ldr r3, _0801CEAC  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801CEB0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801CEB4  @ =0x040000D4
	ldr r0, _0801CEB8  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801CEBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801CEC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801CEC4  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801CEC8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801CECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801CED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801CED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
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
	ldr r0, _0801CED8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801CEDC  @ =0xFFFFFC00
	mov r3, r8
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
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801CEE0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CE9A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801CEA8:
	.4byte 0x030000D0
_0801CEAC:
	.4byte 0x030000D8
_0801CEB0:
	.4byte 0x030000D4
_0801CEB4:
	.4byte 0x040000D4
_0801CEB8:
	.4byte gUnknown_082AEF7C
_0801CEBC:
	.4byte 0x06010000
_0801CEC0:
	.4byte 0x84000200
_0801CEC4:
	.4byte gUnknown_082AEF74
_0801CEC8:
	.4byte gOamBuffer
_0801CECC:
	.4byte 0x84000002
_0801CED0:
	.4byte 0x000001FF
_0801CED4:
	.4byte 0xFFFFFE00
_0801CED8:
	.4byte 0x000003FF
_0801CEDC:
	.4byte 0xFFFFFC00
_0801CEE0:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801CBD8

	THUMB_FUNC_START sub_0801CEE4
sub_0801CEE4: @ 0x0801CEE4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801D1B4  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801CFDA
	ldr r2, _0801D1B8  @ =0x030000D8
	mov r10, r2
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	str r0, [r3]
	ldr r0, _0801D1BC  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r4, _0801D1C0  @ =0x040000D4
	ldr r0, _0801D1C4  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801D1C8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D1CC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D1D0  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801D1D4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D1D8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801D1DC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D1E0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
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
	ldr r3, _0801D1E4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D1E8  @ =0xFFFFFC00
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
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D1EC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CFDA:
	ldr r2, _0801D1B4  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0801D0BC
	ldr r3, _0801D1B8  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801D1BC  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801D1C0  @ =0x040000D4
	ldr r0, _0801D1C4  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801D1C8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D1CC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D1D0  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801D1D4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D1D8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D1DC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D1E0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
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
	ldr r3, _0801D1E4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D1E8  @ =0xFFFFFC00
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
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D1EC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D0BC:
	ldr r2, _0801D1B4  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0801D1A6
	ldr r3, _0801D1B8  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801D1BC  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801D1C0  @ =0x040000D4
	ldr r0, _0801D1C4  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801D1C8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D1CC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D1D0  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801D1D4  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D1D8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D1DC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D1E0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
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
	ldr r0, _0801D1E4  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801D1E8  @ =0xFFFFFC00
	mov r3, r8
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
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D1EC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D1A6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801D1B4:
	.4byte 0x030000D0
_0801D1B8:
	.4byte 0x030000D8
_0801D1BC:
	.4byte 0x030000D4
_0801D1C0:
	.4byte 0x040000D4
_0801D1C4:
	.4byte gUnknown_082AEF7C
_0801D1C8:
	.4byte 0x06010000
_0801D1CC:
	.4byte 0x84000200
_0801D1D0:
	.4byte gUnknown_082AEF74
_0801D1D4:
	.4byte gOamBuffer
_0801D1D8:
	.4byte 0x84000002
_0801D1DC:
	.4byte 0x000001FF
_0801D1E0:
	.4byte 0xFFFFFE00
_0801D1E4:
	.4byte 0x000003FF
_0801D1E8:
	.4byte 0xFFFFFC00
_0801D1EC:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801CEE4

	THUMB_FUNC_START sub_0801D1F0
sub_0801D1F0: @ 0x0801D1F0
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
	ldr r2, _0801D254  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r1, _0801D258  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _0801D278
	ldr r4, _0801D25C  @ =0x040000D4
	ldr r0, _0801D260  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D264  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D268  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D26C  @ =gUnknown_0811BCB0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D270  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D274  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	b _0801D33C
	.byte 0x00
	.byte 0x00
_0801D254:
	.4byte 0x030000D0
_0801D258:
	.4byte 0x030000D8
_0801D25C:
	.4byte 0x040000D4
_0801D260:
	.4byte gUnknown_0811BCB8
_0801D264:
	.4byte 0x06010000
_0801D268:
	.4byte 0x84000020
_0801D26C:
	.4byte gUnknown_0811BCB0
_0801D270:
	.4byte gOamBuffer
_0801D274:
	.4byte 0x84000002
_0801D278:
	cmp r0, #2
	bne _0801D2A8
	ldr r4, _0801D294  @ =0x040000D4
	ldr r0, _0801D298  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D29C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D2A0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D2A4  @ =gUnknown_0811BD5C
	b _0801D322
_0801D294:
	.4byte 0x040000D4
_0801D298:
	.4byte gUnknown_0811BD64
_0801D29C:
	.4byte 0x06010000
_0801D2A0:
	.4byte 0x84000020
_0801D2A4:
	.4byte gUnknown_0811BD5C
_0801D2A8:
	cmp r0, #3
	bne _0801D2D8
	ldr r4, _0801D2C4  @ =0x040000D4
	ldr r0, _0801D2C8  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D2CC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D2D0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D2D4  @ =gUnknown_0811BC04
	b _0801D322
_0801D2C4:
	.4byte 0x040000D4
_0801D2C8:
	.4byte gUnknown_0811BC0C
_0801D2CC:
	.4byte 0x06010000
_0801D2D0:
	.4byte 0x84000020
_0801D2D4:
	.4byte gUnknown_0811BC04
_0801D2D8:
	cmp r0, #4
	bne _0801D308
	ldr r4, _0801D2F4  @ =0x040000D4
	ldr r0, _0801D2F8  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D2FC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D300  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D304  @ =gUnknown_081257D0
	b _0801D322
_0801D2F4:
	.4byte 0x040000D4
_0801D2F8:
	.4byte gUnknown_081257D8
_0801D2FC:
	.4byte 0x06010000
_0801D300:
	.4byte 0x84000020
_0801D304:
	.4byte gUnknown_081257D0
_0801D308:
	cmp r0, #5
	bne _0801D3B0
	ldr r4, _0801D3E4  @ =0x040000D4
	ldr r0, _0801D3E8  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D3EC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D3F0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D3F4  @ =gUnknown_08125928
_0801D322:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D3F8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D3FC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
_0801D33C:
	ldr r2, [r3]
	ldr r3, _0801D400  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D404  @ =0xFFFFFE00
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
	ldr r3, _0801D408  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D40C  @ =0xFFFFFC00
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
	ldr r0, _0801D410  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D3B0:
	mov r0, #102
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r2, _0801D414  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0801D420
	ldr r4, _0801D3E4  @ =0x040000D4
	ldr r0, _0801D418  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D3EC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D3F0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D41C  @ =gUnknown_0811BCB0
	b _0801D4CA
_0801D3E4:
	.4byte 0x040000D4
_0801D3E8:
	.4byte gUnknown_08125930
_0801D3EC:
	.4byte 0x06010000
_0801D3F0:
	.4byte 0x84000020
_0801D3F4:
	.4byte gUnknown_08125928
_0801D3F8:
	.4byte gOamBuffer
_0801D3FC:
	.4byte 0x84000002
_0801D400:
	.4byte 0x000001FF
_0801D404:
	.4byte 0xFFFFFE00
_0801D408:
	.4byte 0x000003FF
_0801D40C:
	.4byte 0xFFFFFC00
_0801D410:
	.4byte 0x80000200
_0801D414:
	.4byte 0x030000D8
_0801D418:
	.4byte gUnknown_0811BCB8
_0801D41C:
	.4byte gUnknown_0811BCB0
_0801D420:
	cmp r0, #2
	bne _0801D450
	ldr r4, _0801D43C  @ =0x040000D4
	ldr r0, _0801D440  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D444  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D448  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D44C  @ =gUnknown_0811BD5C
	b _0801D4CA
_0801D43C:
	.4byte 0x040000D4
_0801D440:
	.4byte gUnknown_0811BD64
_0801D444:
	.4byte 0x06010000
_0801D448:
	.4byte 0x84000020
_0801D44C:
	.4byte gUnknown_0811BD5C
_0801D450:
	cmp r0, #3
	bne _0801D480
	ldr r4, _0801D46C  @ =0x040000D4
	ldr r0, _0801D470  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D474  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D478  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D47C  @ =gUnknown_0811BC04
	b _0801D4CA
_0801D46C:
	.4byte 0x040000D4
_0801D470:
	.4byte gUnknown_0811BC0C
_0801D474:
	.4byte 0x06010000
_0801D478:
	.4byte 0x84000020
_0801D47C:
	.4byte gUnknown_0811BC04
_0801D480:
	cmp r0, #4
	bne _0801D4B0
	ldr r4, _0801D49C  @ =0x040000D4
	ldr r0, _0801D4A0  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D4A4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D4A8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D4AC  @ =gUnknown_081257D0
	b _0801D4CA
_0801D49C:
	.4byte 0x040000D4
_0801D4A0:
	.4byte gUnknown_081257D8
_0801D4A4:
	.4byte 0x06010000
_0801D4A8:
	.4byte 0x84000020
_0801D4AC:
	.4byte gUnknown_081257D0
_0801D4B0:
	cmp r0, #5
	bne _0801D558
	ldr r4, _0801D58C  @ =0x040000D4
	ldr r0, _0801D590  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D594  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D598  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D59C  @ =gUnknown_08125928
_0801D4CA:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D5A0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D5A4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D5A8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D5AC  @ =0xFFFFFE00
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
	ldr r3, _0801D5B0  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D5B4  @ =0xFFFFFC00
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
	ldr r0, _0801D5B8  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D558:
	mov r0, #174
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r2, _0801D5BC  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #16]
	cmp r0, #1
	bne _0801D5C8
	ldr r4, _0801D58C  @ =0x040000D4
	ldr r0, _0801D5C0  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D594  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D598  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D5C4  @ =gUnknown_0811BCB0
	b _0801D672
_0801D58C:
	.4byte 0x040000D4
_0801D590:
	.4byte gUnknown_08125930
_0801D594:
	.4byte 0x06010000
_0801D598:
	.4byte 0x84000020
_0801D59C:
	.4byte gUnknown_08125928
_0801D5A0:
	.4byte gOamBuffer
_0801D5A4:
	.4byte 0x84000002
_0801D5A8:
	.4byte 0x000001FF
_0801D5AC:
	.4byte 0xFFFFFE00
_0801D5B0:
	.4byte 0x000003FF
_0801D5B4:
	.4byte 0xFFFFFC00
_0801D5B8:
	.4byte 0x80000200
_0801D5BC:
	.4byte 0x030000D8
_0801D5C0:
	.4byte gUnknown_0811BCB8
_0801D5C4:
	.4byte gUnknown_0811BCB0
_0801D5C8:
	cmp r0, #2
	bne _0801D5F8
	ldr r4, _0801D5E4  @ =0x040000D4
	ldr r0, _0801D5E8  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D5EC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D5F0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D5F4  @ =gUnknown_0811BD5C
	b _0801D672
_0801D5E4:
	.4byte 0x040000D4
_0801D5E8:
	.4byte gUnknown_0811BD64
_0801D5EC:
	.4byte 0x06010000
_0801D5F0:
	.4byte 0x84000020
_0801D5F4:
	.4byte gUnknown_0811BD5C
_0801D5F8:
	cmp r0, #3
	bne _0801D628
	ldr r4, _0801D614  @ =0x040000D4
	ldr r0, _0801D618  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D61C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D620  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D624  @ =gUnknown_0811BC04
	b _0801D672
_0801D614:
	.4byte 0x040000D4
_0801D618:
	.4byte gUnknown_0811BC0C
_0801D61C:
	.4byte 0x06010000
_0801D620:
	.4byte 0x84000020
_0801D624:
	.4byte gUnknown_0811BC04
_0801D628:
	cmp r0, #4
	bne _0801D658
	ldr r4, _0801D644  @ =0x040000D4
	ldr r0, _0801D648  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D64C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D650  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D654  @ =gUnknown_081257D0
	b _0801D672
_0801D644:
	.4byte 0x040000D4
_0801D648:
	.4byte gUnknown_081257D8
_0801D64C:
	.4byte 0x06010000
_0801D650:
	.4byte 0x84000020
_0801D654:
	.4byte gUnknown_081257D0
_0801D658:
	cmp r0, #5
	bne _0801D708
	ldr r4, _0801D718  @ =0x040000D4
	ldr r0, _0801D71C  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D720  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D724  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D728  @ =gUnknown_08125928
_0801D672:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D72C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D730  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D734  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D738  @ =0xFFFFFE00
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
	ldr r0, _0801D73C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801D740  @ =0xFFFFFC00
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
	ldr r0, _0801D744  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D708:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D718:
	.4byte 0x040000D4
_0801D71C:
	.4byte gUnknown_08125930
_0801D720:
	.4byte 0x06010000
_0801D724:
	.4byte 0x84000020
_0801D728:
	.4byte gUnknown_08125928
_0801D72C:
	.4byte gOamBuffer
_0801D730:
	.4byte 0x84000002
_0801D734:
	.4byte 0x000001FF
_0801D738:
	.4byte 0xFFFFFE00
_0801D73C:
	.4byte 0x000003FF
_0801D740:
	.4byte 0xFFFFFC00
_0801D744:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801D1F0

	THUMB_FUNC_START sub_0801D748
sub_0801D748: @ 0x0801D748
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r9, r3
	mov r0, #16
	str r0, [r3]
	ldr r2, _0801D840  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r1, _0801D844  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	beq _0801D776
	b _0801D878
_0801D776:
	ldr r4, _0801D848  @ =0x040000D4
	ldr r2, _0801D84C  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801D850  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D854  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D858  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D85C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D860  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D864  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801D868  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D86C  @ =0xFFFFFE00
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
	ldr r0, _0801D870  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801D874  @ =0xFFFFFC00
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
	b _0801DB16
_0801D840:
	.4byte 0x030000D0
_0801D844:
	.4byte 0x030000D8
_0801D848:
	.4byte 0x040000D4
_0801D84C:
	.4byte gUnknown_0811C010
_0801D850:
	.4byte gUnknown_0811C1C8
_0801D854:
	.4byte 0x06010000
_0801D858:
	.4byte 0x84000200
_0801D85C:
	.4byte gUnknown_0811C1C0
_0801D860:
	.4byte gOamBuffer
_0801D864:
	.4byte 0x84000002
_0801D868:
	.4byte 0x000001FF
_0801D86C:
	.4byte 0xFFFFFE00
_0801D870:
	.4byte 0x000003FF
_0801D874:
	.4byte 0xFFFFFC00
_0801D878:
	cmp r0, #2
	bne _0801D8E8
	ldr r4, _0801D8C8  @ =0x040000D4
	ldr r2, _0801D8CC  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801D8D0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D8D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D8D8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D8DC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D8E0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D8E4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DA90
	.byte 0x00
	.byte 0x00
_0801D8C8:
	.4byte 0x040000D4
_0801D8CC:
	.4byte gUnknown_0811C010
_0801D8D0:
	.4byte gUnknown_0811C1C8
_0801D8D4:
	.4byte 0x06010000
_0801D8D8:
	.4byte 0x84000200
_0801D8DC:
	.4byte gUnknown_0811C1C0
_0801D8E0:
	.4byte gOamBuffer
_0801D8E4:
	.4byte 0x84000002
_0801D8E8:
	cmp r0, #3
	bne _0801D9D4
	ldr r4, _0801D9A4  @ =0x040000D4
	ldr r2, _0801D9A8  @ =gUnknown_0811F5F4
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801D9AC  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D9B0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D9B4  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D9B8  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D9BC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D9C0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801D9C4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D9C8  @ =0xFFFFFE00
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
	ldr r0, _0801D9CC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801D9D0  @ =0xFFFFFC00
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
	strh r0, [r3]
	b _0801DB16
_0801D9A4:
	.4byte 0x040000D4
_0801D9A8:
	.4byte gUnknown_0811F5F4
_0801D9AC:
	.4byte gUnknown_0811F7AC
_0801D9B0:
	.4byte 0x06010000
_0801D9B4:
	.4byte 0x84000400
_0801D9B8:
	.4byte gUnknown_0811F7A4
_0801D9BC:
	.4byte gOamBuffer
_0801D9C0:
	.4byte 0x84000002
_0801D9C4:
	.4byte 0x000001FF
_0801D9C8:
	.4byte 0xFFFFFE00
_0801D9CC:
	.4byte 0x000003FF
_0801D9D0:
	.4byte 0xFFFFFC00
_0801D9D4:
	cmp r0, #4
	bne _0801DA44
	ldr r4, _0801DA24  @ =0x040000D4
	ldr r2, _0801DA28  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DA2C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DA30  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DA34  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DA38  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DA3C  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DA40  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DA90
	.byte 0x00
	.byte 0x00
_0801DA24:
	.4byte 0x040000D4
_0801DA28:
	.4byte gUnknown_0811C010
_0801DA2C:
	.4byte gUnknown_0811C1C8
_0801DA30:
	.4byte 0x06010000
_0801DA34:
	.4byte 0x84000200
_0801DA38:
	.4byte gUnknown_0811C1C0
_0801DA3C:
	.4byte gOamBuffer
_0801DA40:
	.4byte 0x84000002
_0801DA44:
	cmp r0, #5
	bne _0801DB24
	ldr r4, _0801DC08  @ =0x040000D4
	ldr r2, _0801DC0C  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DC10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DC14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DC18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DC1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DC20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DC24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
_0801DA90:
	ldr r3, _0801DC28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DC2C  @ =0xFFFFFE00
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
	ldr r0, _0801DC30  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801DC34  @ =0xFFFFFC00
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
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
_0801DB16:
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801DC38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801DB24:
	mov r0, #88
	mov r2, r9
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r2, _0801DC3C  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	cmp r0, #1
	beq _0801DB40
	b _0801DC40
_0801DB40:
	ldr r4, _0801DC08  @ =0x040000D4
	ldr r2, _0801DC0C  @ =gUnknown_0811C010
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DC10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DC14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DC18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DC1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DC20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DC24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801DC28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DC2C  @ =0xFFFFFE00
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
	ldr r0, _0801DC30  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801DC34  @ =0xFFFFFC00
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
	b _0801DEDE
_0801DC08:
	.4byte 0x040000D4
_0801DC0C:
	.4byte gUnknown_0811C010
_0801DC10:
	.4byte gUnknown_0811C1C8
_0801DC14:
	.4byte 0x06010000
_0801DC18:
	.4byte 0x84000200
_0801DC1C:
	.4byte gUnknown_0811C1C0
_0801DC20:
	.4byte gOamBuffer
_0801DC24:
	.4byte 0x84000002
_0801DC28:
	.4byte 0x000001FF
_0801DC2C:
	.4byte 0xFFFFFE00
_0801DC30:
	.4byte 0x000003FF
_0801DC34:
	.4byte 0xFFFFFC00
_0801DC38:
	.4byte 0x80000200
_0801DC3C:
	.4byte 0x030000D8
_0801DC40:
	cmp r0, #2
	bne _0801DCB0
	ldr r4, _0801DC90  @ =0x040000D4
	ldr r2, _0801DC94  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DC98  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DC9C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DCA0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DCA4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DCA8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DCAC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DE58
	.byte 0x00
	.byte 0x00
_0801DC90:
	.4byte 0x040000D4
_0801DC94:
	.4byte gUnknown_0811C010
_0801DC98:
	.4byte gUnknown_0811C1C8
_0801DC9C:
	.4byte 0x06010000
_0801DCA0:
	.4byte 0x84000200
_0801DCA4:
	.4byte gUnknown_0811C1C0
_0801DCA8:
	.4byte gOamBuffer
_0801DCAC:
	.4byte 0x84000002
_0801DCB0:
	cmp r0, #3
	bne _0801DD9C
	ldr r4, _0801DD6C  @ =0x040000D4
	ldr r2, _0801DD70  @ =gUnknown_0811F5F4
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801DD74  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DD78  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DD7C  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DD80  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DD84  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DD88  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801DD8C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DD90  @ =0xFFFFFE00
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
	ldr r0, _0801DD94  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801DD98  @ =0xFFFFFC00
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
	strh r0, [r3]
	b _0801DEDE
_0801DD6C:
	.4byte 0x040000D4
_0801DD70:
	.4byte gUnknown_0811F5F4
_0801DD74:
	.4byte gUnknown_0811F7AC
_0801DD78:
	.4byte 0x06010000
_0801DD7C:
	.4byte 0x84000400
_0801DD80:
	.4byte gUnknown_0811F7A4
_0801DD84:
	.4byte gOamBuffer
_0801DD88:
	.4byte 0x84000002
_0801DD8C:
	.4byte 0x000001FF
_0801DD90:
	.4byte 0xFFFFFE00
_0801DD94:
	.4byte 0x000003FF
_0801DD98:
	.4byte 0xFFFFFC00
_0801DD9C:
	cmp r0, #4
	bne _0801DE0C
	ldr r4, _0801DDEC  @ =0x040000D4
	ldr r2, _0801DDF0  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DDF4  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DDF8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DDFC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DE00  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DE04  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DE08  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DE58
	.byte 0x00
	.byte 0x00
_0801DDEC:
	.4byte 0x040000D4
_0801DDF0:
	.4byte gUnknown_0811C010
_0801DDF4:
	.4byte gUnknown_0811C1C8
_0801DDF8:
	.4byte 0x06010000
_0801DDFC:
	.4byte 0x84000200
_0801DE00:
	.4byte gUnknown_0811C1C0
_0801DE04:
	.4byte gOamBuffer
_0801DE08:
	.4byte 0x84000002
_0801DE0C:
	cmp r0, #5
	bne _0801DEEC
	ldr r4, _0801DFD8  @ =0x040000D4
	ldr r2, _0801DFDC  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DFE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DFE4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DFE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DFEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DFF0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DFF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
_0801DE58:
	ldr r3, _0801DFF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DFFC  @ =0xFFFFFE00
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
	ldr r0, _0801E000  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801E004  @ =0xFFFFFC00
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
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
_0801DEDE:
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E008  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801DEEC:
	mov r0, #160
	mov r2, r9
	str r0, [r2]
	mov r8, r10
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r2, _0801E00C  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #16]
	cmp r0, #1
	beq _0801DF0A
	b _0801E010
_0801DF0A:
	ldr r4, _0801DFD8  @ =0x040000D4
	ldr r2, _0801DFDC  @ =gUnknown_0811C010
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DFE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DFE4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DFE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DFEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DFF0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DFF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801DFF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DFFC  @ =0xFFFFFE00
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
	ldr r0, _0801E000  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E004  @ =0xFFFFFC00
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
	b _0801E396
	.byte 0x00
	.byte 0x00
_0801DFD8:
	.4byte 0x040000D4
_0801DFDC:
	.4byte gUnknown_0811C010
_0801DFE0:
	.4byte gUnknown_0811C1C8
_0801DFE4:
	.4byte 0x06010000
_0801DFE8:
	.4byte 0x84000200
_0801DFEC:
	.4byte gUnknown_0811C1C0
_0801DFF0:
	.4byte gOamBuffer
_0801DFF4:
	.4byte 0x84000002
_0801DFF8:
	.4byte 0x000001FF
_0801DFFC:
	.4byte 0xFFFFFE00
_0801E000:
	.4byte 0x000003FF
_0801E004:
	.4byte 0xFFFFFC00
_0801E008:
	.4byte 0x80000200
_0801E00C:
	.4byte 0x030000D8
_0801E010:
	cmp r0, #2
	bne _0801E0F0
	ldr r4, _0801E0C0  @ =0x040000D4
	ldr r2, _0801E0C4  @ =gUnknown_0811C010
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E0C8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E0CC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E0D0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E0D4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E0D8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E0DC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801E0E0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E0E4  @ =0xFFFFFE00
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
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E0E8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _0801E0EC  @ =0xFFFFFC00
	mov r3, r9
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
	mov r1, r8
	b _0801E36C
	.byte 0x00
	.byte 0x00
_0801E0C0:
	.4byte 0x040000D4
_0801E0C4:
	.4byte gUnknown_0811C010
_0801E0C8:
	.4byte gUnknown_0811C1C8
_0801E0CC:
	.4byte 0x06010000
_0801E0D0:
	.4byte 0x84000200
_0801E0D4:
	.4byte gUnknown_0811C1C0
_0801E0D8:
	.4byte gOamBuffer
_0801E0DC:
	.4byte 0x84000002
_0801E0E0:
	.4byte 0x000001FF
_0801E0E4:
	.4byte 0xFFFFFE00
_0801E0E8:
	.4byte 0x000003FF
_0801E0EC:
	.4byte 0xFFFFFC00
_0801E0F0:
	cmp r0, #3
	bne _0801E1E0
	ldr r4, _0801E1B0  @ =0x040000D4
	ldr r2, _0801E1B4  @ =gUnknown_0811F5F4
	mov r3, r8
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801E1B8  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E1BC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E1C0  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E1C4  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E1C8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E1CC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801E1D0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E1D4  @ =0xFFFFFE00
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
	ldr r0, _0801E1D8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E1DC  @ =0xFFFFFC00
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
	strh r0, [r3]
	b _0801E396
_0801E1B0:
	.4byte 0x040000D4
_0801E1B4:
	.4byte gUnknown_0811F5F4
_0801E1B8:
	.4byte gUnknown_0811F7AC
_0801E1BC:
	.4byte 0x06010000
_0801E1C0:
	.4byte 0x84000400
_0801E1C4:
	.4byte gUnknown_0811F7A4
_0801E1C8:
	.4byte gOamBuffer
_0801E1CC:
	.4byte 0x84000002
_0801E1D0:
	.4byte 0x000001FF
_0801E1D4:
	.4byte 0xFFFFFE00
_0801E1D8:
	.4byte 0x000003FF
_0801E1DC:
	.4byte 0xFFFFFC00
_0801E1E0:
	cmp r0, #4
	bne _0801E2C0
	ldr r4, _0801E290  @ =0x040000D4
	ldr r2, _0801E294  @ =gUnknown_0811C010
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E298  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E29C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E2A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E2A4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E2A8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E2AC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801E2B0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E2B4  @ =0xFFFFFE00
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
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E2B8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _0801E2BC  @ =0xFFFFFC00
	mov r3, r9
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
	mov r1, r8
	b _0801E36C
	.byte 0x00
	.byte 0x00
_0801E290:
	.4byte 0x040000D4
_0801E294:
	.4byte gUnknown_0811C010
_0801E298:
	.4byte gUnknown_0811C1C8
_0801E29C:
	.4byte 0x06010000
_0801E2A0:
	.4byte 0x84000200
_0801E2A4:
	.4byte gUnknown_0811C1C0
_0801E2A8:
	.4byte gOamBuffer
_0801E2AC:
	.4byte 0x84000002
_0801E2B0:
	.4byte 0x000001FF
_0801E2B4:
	.4byte 0xFFFFFE00
_0801E2B8:
	.4byte 0x000003FF
_0801E2BC:
	.4byte 0xFFFFFC00
_0801E2C0:
	cmp r0, #5
	bne _0801E3A4
	ldr r4, _0801E3B4  @ =0x040000D4
	ldr r2, _0801E3B8  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E3BC  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E3C0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E3C4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E3C8  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E3CC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E3D0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801E3D4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E3D8  @ =0xFFFFFE00
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
	ldr r0, _0801E3DC  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E3E0  @ =0xFFFFFC00
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
_0801E36C:
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
_0801E396:
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E3E4  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E3A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801E3B4:
	.4byte 0x040000D4
_0801E3B8:
	.4byte gUnknown_0811C010
_0801E3BC:
	.4byte gUnknown_0811C1C8
_0801E3C0:
	.4byte 0x06010000
_0801E3C4:
	.4byte 0x84000200
_0801E3C8:
	.4byte gUnknown_0811C1C0
_0801E3CC:
	.4byte gOamBuffer
_0801E3D0:
	.4byte 0x84000002
_0801E3D4:
	.4byte 0x000001FF
_0801E3D8:
	.4byte 0xFFFFFE00
_0801E3DC:
	.4byte 0x000003FF
_0801E3E0:
	.4byte 0xFFFFFC00
_0801E3E4:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801D748

	THUMB_FUNC_START sub_0801E3E8
sub_0801E3E8: @ 0x0801E3E8
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
	ldr r1, _0801E410  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801E414
	mov r0, #16
	str r0, [r3]
	b _0801E426
	.byte 0x00
	.byte 0x00
_0801E410:
	.4byte 0x030000D0
_0801E414:
	cmp r0, #1
	bne _0801E420
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	b _0801E426
_0801E420:
	mov r0, #160
	mov r2, r8
	str r0, [r2]
_0801E426:
	ldr r3, _0801E804  @ =0x030000D0
	mov r9, r3
	ldr r3, [r3]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801E52C
	ldr r2, _0801E80C  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E814  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E81C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E820  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
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
	ldr r3, _0801E834  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801E838  @ =0xFFFFFC00
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
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E83C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E52C:
	mov r2, r9
	ldr r3, [r2]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0801E630
	ldr r2, _0801E80C  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E814  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E81C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E820  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
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
	ldr r3, _0801E834  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801E838  @ =0xFFFFFC00
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
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E83C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E630:
	mov r2, r9
	ldr r3, [r2]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E72E
	ldr r2, _0801E80C  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E814  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E81C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E820  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
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
	ldr r3, _0801E834  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801E838  @ =0xFFFFFC00
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
	ldr r0, _0801E83C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E72E:
	mov r0, r9
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801E744
	b _0801E86E
_0801E744:
	ldr r2, _0801E840  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801E844  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E848  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E84C  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
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
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E834  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801E838  @ =0xFFFFFC00
	mov r3, r9
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
	b _0801E850
_0801E804:
	.4byte 0x030000D0
_0801E808:
	.4byte 0x030000D8
_0801E80C:
	.4byte gUnknown_0811C010
_0801E810:
	.4byte 0x040000D4
_0801E814:
	.4byte gUnknown_0811C1C8
_0801E818:
	.4byte 0x06010000
_0801E81C:
	.4byte 0x84000200
_0801E820:
	.4byte gUnknown_0811C1C0
_0801E824:
	.4byte gOamBuffer
_0801E828:
	.4byte 0x84000002
_0801E82C:
	.4byte 0x000001FF
_0801E830:
	.4byte 0xFFFFFE00
_0801E834:
	.4byte 0x000003FF
_0801E838:
	.4byte 0xFFFFFC00
_0801E83C:
	.4byte 0x80000200
_0801E840:
	.4byte gUnknown_0811F5F4
_0801E844:
	.4byte gUnknown_0811F7AC
_0801E848:
	.4byte 0x84000400
_0801E84C:
	.4byte gUnknown_0811F7A4
_0801E850:
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
	ldr r0, _0801E988  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E86E:
	ldr r0, _0801E98C  @ =0x030000D0
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	ldr r2, _0801E990  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801E97A
	ldr r2, _0801E994  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E998  @ =0x040000D4
	ldr r1, _0801E98C  @ =0x030000D0
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E99C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E9A0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E9A4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E9A8  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E9AC  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E9B0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E9B4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E9B8  @ =0xFFFFFE00
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
	ldr r0, _0801E9BC  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E9C0  @ =0xFFFFFC00
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
	ldr r1, _0801E98C  @ =0x030000D0
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E988  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E97A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801E988:
	.4byte 0x80000200
_0801E98C:
	.4byte 0x030000D0
_0801E990:
	.4byte 0x030000D8
_0801E994:
	.4byte gUnknown_0811C010
_0801E998:
	.4byte 0x040000D4
_0801E99C:
	.4byte gUnknown_0811C1C8
_0801E9A0:
	.4byte 0x06010000
_0801E9A4:
	.4byte 0x84000200
_0801E9A8:
	.4byte gUnknown_0811C1C0
_0801E9AC:
	.4byte gOamBuffer
_0801E9B0:
	.4byte 0x84000002
_0801E9B4:
	.4byte 0x000001FF
_0801E9B8:
	.4byte 0xFFFFFE00
_0801E9BC:
	.4byte 0x000003FF
_0801E9C0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0801E3E8

	THUMB_FUNC_START sub_0801E9C4
sub_0801E9C4: @ 0x0801E9C4
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
	ldr r1, _0801E9EC  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801E9F0
	mov r0, #16
	str r0, [r3]
	b _0801EA02
	.byte 0x00
	.byte 0x00
_0801E9EC:
	.4byte 0x030000D0
_0801E9F0:
	cmp r0, #1
	bne _0801E9FC
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	b _0801EA02
_0801E9FC:
	mov r0, #160
	mov r2, r8
	str r0, [r2]
_0801EA02:
	ldr r3, _0801EDDC  @ =0x030000D0
	mov r10, r3
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801EAE0
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
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
	ldr r3, _0801EE08  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801EE0C  @ =0xFFFFFC00
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
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EAE0:
	mov r3, r10
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0801EBBC
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
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
	ldr r3, _0801EE08  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801EE0C  @ =0xFFFFFC00
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
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EBBC:
	mov r3, r10
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801EC92
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
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
	ldr r3, _0801EE08  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801EE0C  @ =0xFFFFFC00
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
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EC92:
	mov r0, r10
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801ED5A
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EE14  @ =gUnknown_0811F7AC
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EE18  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EE1C  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
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
	mov r10, r3
	mov r0, r10
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801EE08  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801EE0C  @ =0xFFFFFC00
	mov r3, r10
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
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801ED5A:
	ldr r0, _0801EDDC  @ =0x030000D0
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801ED70
	b _0801EE88
_0801ED70:
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
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
	b _0801EE20
	.byte 0x00
	.byte 0x00
_0801EDDC:
	.4byte 0x030000D0
_0801EDE0:
	.4byte 0x030000D8
_0801EDE4:
	.4byte 0x040000D4
_0801EDE8:
	.4byte gUnknown_0811C1C8
_0801EDEC:
	.4byte 0x06010000
_0801EDF0:
	.4byte 0x84000200
_0801EDF4:
	.4byte gUnknown_0811C1C0
_0801EDF8:
	.4byte gOamBuffer
_0801EDFC:
	.4byte 0x84000002
_0801EE00:
	.4byte 0x000001FF
_0801EE04:
	.4byte 0xFFFFFE00
_0801EE08:
	.4byte 0x000003FF
_0801EE0C:
	.4byte 0xFFFFFC00
_0801EE10:
	.4byte 0x80000200
_0801EE14:
	.4byte gUnknown_0811F7AC
_0801EE18:
	.4byte 0x84000400
_0801EE1C:
	.4byte gUnknown_0811F7A4
_0801EE20:
	add r1, r1, r3
	ldr r0, _0801EE98  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801EE9C  @ =0xFFFFFC00
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
	ldr r1, _0801EEA0  @ =0x030000D0
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EEA4  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EE88:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801EE98:
	.4byte 0x000003FF
_0801EE9C:
	.4byte 0xFFFFFC00
_0801EEA0:
	.4byte 0x030000D0
_0801EEA4:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801E9C4

	THUMB_FUNC_START sub_0801EEA8
sub_0801EEA8: @ 0x0801EEA8
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
	mov r8, r0
	ldr r0, _0801EEE8  @ =0x030000D0
	ldr r1, [r0]
	ldrb r1, [r1, #1]
	mov r10, r0
	cmp r1, #0
	bne _0801EFB8
	ldr r1, _0801EEEC  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801EEF4
	ldr r0, _0801EEF0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r3, r8
	str r0, [r3]
	b _0801EEFA
_0801EEE8:
	.4byte 0x030000D0
_0801EEEC:
	.4byte 0x030000D8
_0801EEF0:
	.4byte 0x030000D4
_0801EEF4:
	mov r0, #63
	mov r1, r8
	str r0, [r1]
_0801EEFA:
	ldr r4, _0801EFE4  @ =0x040000D4
	ldr r0, _0801EFE8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EFEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EFF0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EFF4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EFF8  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EFFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801F000  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F004  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
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
	ldr r3, _0801F008  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F00C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801F010  @ =0x030000D8
	ldr r0, [r1]
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
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F014  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EFB8:
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801EFC4
	b _0801F0E0
_0801EFC4:
	ldr r1, _0801F010  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0, #10]
	mov r3, r9
	str r0, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0801F01C
	ldr r0, _0801F018  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	b _0801F022
	.byte 0x00
	.byte 0x00
_0801EFE4:
	.4byte 0x040000D4
_0801EFE8:
	.4byte gUnknown_082B30B4
_0801EFEC:
	.4byte 0x06010000
_0801EFF0:
	.4byte 0x84000100
_0801EFF4:
	.4byte gUnknown_082B30AC
_0801EFF8:
	.4byte gOamBuffer
_0801EFFC:
	.4byte 0x84000002
_0801F000:
	.4byte 0x000001FF
_0801F004:
	.4byte 0xFFFFFE00
_0801F008:
	.4byte 0x000003FF
_0801F00C:
	.4byte 0xFFFFFC00
_0801F010:
	.4byte 0x030000D8
_0801F014:
	.4byte 0x80000200
_0801F018:
	.4byte 0x030000D4
_0801F01C:
	mov r0, #63
	mov r2, r8
	str r0, [r2]
_0801F022:
	ldr r4, _0801F10C  @ =0x040000D4
	ldr r0, _0801F110  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801F114  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F118  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F11C  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801F120  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F124  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801F128  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F12C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
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
	ldr r3, _0801F130  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F134  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801F138  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F13C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F0E0:
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801F0EC
	b _0801F210
_0801F0EC:
	ldr r1, _0801F138  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0, #18]
	mov r3, r9
	str r0, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0801F144
	ldr r0, _0801F140  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	b _0801F14A
	.byte 0x00
	.byte 0x00
_0801F10C:
	.4byte 0x040000D4
_0801F110:
	.4byte gUnknown_082B30B4
_0801F114:
	.4byte 0x06010000
_0801F118:
	.4byte 0x84000100
_0801F11C:
	.4byte gUnknown_082B30AC
_0801F120:
	.4byte gOamBuffer
_0801F124:
	.4byte 0x84000002
_0801F128:
	.4byte 0x000001FF
_0801F12C:
	.4byte 0xFFFFFE00
_0801F130:
	.4byte 0x000003FF
_0801F134:
	.4byte 0xFFFFFC00
_0801F138:
	.4byte 0x030000D8
_0801F13C:
	.4byte 0x80000200
_0801F140:
	.4byte 0x030000D4
_0801F144:
	mov r0, #63
	mov r2, r8
	str r0, [r2]
_0801F14A:
	ldr r4, _0801F220  @ =0x040000D4
	ldr r0, _0801F224  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801F228  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F22C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F230  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801F234  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F238  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801F23C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F240  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
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
	ldr r0, _0801F244  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801F248  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801F24C  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F250  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F210:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F220:
	.4byte 0x040000D4
_0801F224:
	.4byte gUnknown_082B30B4
_0801F228:
	.4byte 0x06010000
_0801F22C:
	.4byte 0x84000100
_0801F230:
	.4byte gUnknown_082B30AC
_0801F234:
	.4byte gOamBuffer
_0801F238:
	.4byte 0x84000002
_0801F23C:
	.4byte 0x000001FF
_0801F240:
	.4byte 0xFFFFFE00
_0801F244:
	.4byte 0x000003FF
_0801F248:
	.4byte 0xFFFFFC00
_0801F24C:
	.4byte 0x030000D8
_0801F250:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801EEA8

	THUMB_FUNC_START sub_0801F254
sub_0801F254: @ 0x0801F254
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801F518  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801F346
	ldr r2, _0801F51C  @ =0x030000D8
	mov r10, r2
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	str r0, [r3]
	ldr r0, _0801F520  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r3, r9
	str r0, [r3]
	ldr r4, _0801F524  @ =0x040000D4
	ldr r0, _0801F528  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801F52C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F530  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F534  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801F538  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F53C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801F540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
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
	ldr r3, _0801F548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F54C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
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
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F346:
	ldr r2, _0801F518  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801F424
	ldr r3, _0801F51C  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #10]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801F520  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801F524  @ =0x040000D4
	ldr r0, _0801F528  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801F52C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F530  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F534  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801F538  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F53C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801F540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
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
	ldr r3, _0801F548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F54C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F424:
	ldr r2, _0801F518  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801F50A
	ldr r3, _0801F51C  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #18]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801F520  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801F524  @ =0x040000D4
	ldr r0, _0801F528  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801F52C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F530  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F534  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801F538  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F53C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801F540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
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
	ldr r0, _0801F548  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801F54C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F50A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801F518:
	.4byte 0x030000D0
_0801F51C:
	.4byte 0x030000D8
_0801F520:
	.4byte 0x030000D4
_0801F524:
	.4byte 0x040000D4
_0801F528:
	.4byte gUnknown_082B30B4
_0801F52C:
	.4byte 0x06010000
_0801F530:
	.4byte 0x84000100
_0801F534:
	.4byte gUnknown_082B30AC
_0801F538:
	.4byte gOamBuffer
_0801F53C:
	.4byte 0x84000002
_0801F540:
	.4byte 0x000001FF
_0801F544:
	.4byte 0xFFFFFE00
_0801F548:
	.4byte 0x000003FF
_0801F54C:
	.4byte 0xFFFFFC00
_0801F550:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801F254

	THUMB_FUNC_START sub_0801F554
sub_0801F554: @ 0x0801F554
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r7, _0801F804  @ =0x030000D8
	ldr r4, [r7]
	ldrb r4, [r4, #3]
	str r4, [r3]
	ldr r4, [r7]
	ldrb r4, [r4, #4]
	ldr r5, [sp, #40]
	str r4, [r5]
	ldr r6, _0801F808  @ =0x040000D4
	mov r9, r6
	ldr r4, _0801F80C  @ =gUnknown_082AF7A8
	str r4, [r6]
	ldrh r4, [r2]
	ldr r5, _0801F810  @ =0x06010000
	add r4, r4, r5
	str r4, [r6, #4]
	ldr r4, _0801F814  @ =0x84000200
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r5, _0801F818  @ =gUnknown_082AF7A0
	str r5, [r6]
	ldrh r4, [r0]
	lsl r4, r4, #3
	ldr r6, _0801F81C  @ =gOamBuffer
	mov r10, r6
	add r4, r4, r10
	mov r5, r9
	str r4, [r5, #4]
	ldr r6, _0801F820  @ =0x84000002
	str r6, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r5, [r0]
	lsl r5, r5, #3
	add r5, r5, r10
	mov r12, r5
	ldr r6, [r3]
	ldr r4, _0801F824  @ =0x000001FF
	and r6, r6, r4
	ldrh r5, [r5, #2]
	mov r8, r5
	ldr r4, _0801F828  @ =0xFFFFFE00
	mov r5, r8
	and r4, r4, r5
	orr r4, r4, r6
	mov r6, r12
	strh r4, [r6, #2]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r6, [sp, #40]
	ldr r5, [r6]
	strb r5, [r4]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	mov r12, r6
	ldrh r4, [r6, #4]
	mov r8, r4
	mov r6, r8
	lsl r5, r6, #22
	lsr r5, r5, #22
	ldrh r4, [r1]
	add r5, r5, r4
	ldr r6, _0801F82C  @ =0x000003FF
	and r5, r5, r6
	ldr r4, _0801F830  @ =0xFFFFFC00
	mov r6, r8
	and r4, r4, r6
	orr r4, r4, r5
	mov r5, r12
	strh r4, [r5, #4]
	ldrh r5, [r0]
	lsl r5, r5, #3
	add r5, r5, r10
	ldrb r6, [r5, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r6
	mov r6, #4
	orr r4, r4, r6
	strb r4, [r5, #5]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	ldr r4, [r7]
	ldrb r5, [r4, #6]
	lsl r5, r5, #4
	str r5, [sp]
	ldrb r4, [r6, #5]
	mov r8, r4
	mov r5, #15
	mov r12, r5
	mov r4, r12
	mov r5, r8
	and r4, r4, r5
	ldr r5, [sp]
	orr r4, r4, r5
	strb r4, [r6, #5]
	ldrh r4, [r0]
	add r4, r4, #1
	strh r4, [r0]
	mov r6, #128
	lsl r6, r6, #4
	ldrh r5, [r2]
	add r4, r6, r5
	strh r4, [r2]
	ldrh r4, [r1]
	add r4, r4, #64
	strh r4, [r1]
	mov r6, r10
	mov r4, r9
	str r6, [r4]
	mov r5, #224
	lsl r5, r5, #19
	str r5, [r4, #4]
	ldr r6, _0801F834  @ =0x80000200
	str r6, [r4, #8]
	ldr r4, [r4, #8]
	ldr r4, [r7]
	ldrb r4, [r4, #11]
	str r4, [r3]
	ldr r4, [r7]
	ldrb r4, [r4, #12]
	ldr r5, [sp, #40]
	str r4, [r5]
	ldr r6, _0801F80C  @ =gUnknown_082AF7A8
	mov r4, r9
	str r6, [r4]
	ldrh r4, [r2]
	ldr r5, _0801F810  @ =0x06010000
	add r4, r4, r5
	mov r6, r9
	str r4, [r6, #4]
	ldr r4, _0801F814  @ =0x84000200
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r5, _0801F818  @ =gUnknown_082AF7A0
	str r5, [r6]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	str r4, [r6, #4]
	ldr r4, _0801F820  @ =0x84000002
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	str r6, [sp, #4]
	ldr r5, [r3]
	ldr r6, _0801F824  @ =0x000001FF
	and r5, r5, r6
	ldr r4, [sp, #4]
	ldrh r4, [r4, #2]
	mov r8, r4
	ldr r4, _0801F828  @ =0xFFFFFE00
	mov r6, r8
	and r4, r4, r6
	orr r4, r4, r5
	ldr r5, [sp, #4]
	strh r4, [r5, #2]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r6, [sp, #40]
	ldr r5, [r6]
	strb r5, [r4]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	str r6, [sp, #4]
	ldrh r4, [r6, #4]
	mov r8, r4
	mov r5, r8
	lsl r4, r5, #22
	lsr r4, r4, #22
	ldrh r6, [r1]
	add r4, r4, r6
	ldr r5, _0801F82C  @ =0x000003FF
	and r4, r4, r5
	ldr r5, _0801F830  @ =0xFFFFFC00
	mov r6, r8
	and r5, r5, r6
	orr r5, r5, r4
	ldr r4, [sp, #4]
	strh r5, [r4, #4]
	ldrh r5, [r0]
	lsl r5, r5, #3
	add r5, r5, r10
	ldrb r6, [r5, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r6
	mov r6, #4
	orr r4, r4, r6
	strb r4, [r5, #5]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	ldr r4, [r7]
	ldrb r5, [r4, #14]
	lsl r5, r5, #4
	str r5, [sp]
	ldrb r4, [r6, #5]
	mov r8, r4
	mov r4, r12
	mov r5, r8
	and r4, r4, r5
	ldr r5, [sp]
	orr r4, r4, r5
	strb r4, [r6, #5]
	ldrh r4, [r0]
	add r4, r4, #1
	strh r4, [r0]
	mov r6, #128
	lsl r6, r6, #4
	ldrh r5, [r2]
	add r4, r6, r5
	strh r4, [r2]
	ldrh r4, [r1]
	add r4, r4, #64
	strh r4, [r1]
	mov r6, r10
	mov r4, r9
	str r6, [r4]
	mov r5, #224
	lsl r5, r5, #19
	str r5, [r4, #4]
	ldr r6, _0801F834  @ =0x80000200
	str r6, [r4, #8]
	ldr r4, [r4, #8]
	ldr r4, [r7]
	ldrb r4, [r4, #19]
	str r4, [r3]
	ldr r4, [r7]
	ldrb r4, [r4, #20]
	ldr r5, [sp, #40]
	str r4, [r5]
	ldr r6, _0801F80C  @ =gUnknown_082AF7A8
	mov r4, r9
	str r6, [r4]
	ldrh r4, [r2]
	ldr r5, _0801F810  @ =0x06010000
	add r4, r4, r5
	mov r6, r9
	str r4, [r6, #4]
	ldr r4, _0801F814  @ =0x84000200
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r5, _0801F818  @ =gUnknown_082AF7A0
	str r5, [r6]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	str r4, [r6, #4]
	ldr r4, _0801F820  @ =0x84000002
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r3, [r3]
	ldr r5, _0801F824  @ =0x000001FF
	and r3, r3, r5
	ldrh r5, [r4, #2]
	ldr r6, _0801F828  @ =0xFFFFFE00
	and r6, r6, r5
	orr r6, r6, r3
	strh r6, [r4, #2]
	ldrh r3, [r0]
	lsl r3, r3, #3
	add r3, r3, r10
	ldr r6, [sp, #40]
	ldr r4, [r6]
	strb r4, [r3]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldrh r5, [r4, #4]
	lsl r3, r5, #22
	lsr r3, r3, #22
	ldrh r6, [r1]
	add r3, r3, r6
	ldr r6, _0801F82C  @ =0x000003FF
	and r3, r3, r6
	ldr r6, _0801F830  @ =0xFFFFFC00
	and r6, r6, r5
	orr r6, r6, r3
	strh r6, [r4, #4]
	ldrh r3, [r0]
	lsl r3, r3, #3
	add r3, r3, r10
	ldrb r4, [r3, #5]
	mov r5, #13
	neg r5, r5
	and r5, r5, r4
	mov r4, #4
	orr r5, r5, r4
	strb r5, [r3, #5]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r3, [r7]
	ldrb r3, [r3, #22]
	lsl r3, r3, #4
	ldrb r5, [r4, #5]
	mov r6, r12
	and r6, r6, r5
	orr r6, r6, r3
	strb r6, [r4, #5]
	ldrh r3, [r0]
	add r3, r3, #1
	strh r3, [r0]
	mov r0, #128
	lsl r0, r0, #4
	ldrh r3, [r2]
	add r4, r0, r3
	strh r4, [r2]
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	mov r4, r10
	mov r5, r9
	str r4, [r5]
	mov r6, #224
	lsl r6, r6, #19
	str r6, [r5, #4]
	ldr r0, _0801F834  @ =0x80000200
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801F804:
	.4byte 0x030000D8
_0801F808:
	.4byte 0x040000D4
_0801F80C:
	.4byte gUnknown_082AF7A8
_0801F810:
	.4byte 0x06010000
_0801F814:
	.4byte 0x84000200
_0801F818:
	.4byte gUnknown_082AF7A0
_0801F81C:
	.4byte gOamBuffer
_0801F820:
	.4byte 0x84000002
_0801F824:
	.4byte 0x000001FF
_0801F828:
	.4byte 0xFFFFFE00
_0801F82C:
	.4byte 0x000003FF
_0801F830:
	.4byte 0xFFFFFC00
_0801F834:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801F554

	THUMB_FUNC_START sub_0801F838
sub_0801F838: @ 0x0801F838
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _0801FB04  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801F92C
	ldr r2, _0801FB08  @ =0x030000D8
	mov r9, r2
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801FB0C  @ =0x040000D4
	ldr r0, _0801FB10  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FB14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FB18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FB1C  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FB20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FB24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FB28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FB2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _0801FB30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FB34  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
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
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FB38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F92C:
	ldr r2, _0801FB04  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801FA0C
	ldr r3, _0801FB08  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #11]
	mov r1, r8
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #12]
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FB0C  @ =0x040000D4
	ldr r0, _0801FB10  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FB14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FB18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FB1C  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FB20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FB24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801FB28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FB2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _0801FB30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FB34  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FB38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FA0C:
	ldr r2, _0801FB04  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801FAF4
	ldr r3, _0801FB08  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #19]
	mov r1, r8
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #20]
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FB0C  @ =0x040000D4
	ldr r0, _0801FB10  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FB14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FB18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FB1C  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FB20  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FB24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801FB28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FB2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
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
	ldr r0, _0801FB30  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _0801FB34  @ =0xFFFFFC00
	mov r3, r8
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FB38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FAF4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801FB04:
	.4byte 0x030000D0
_0801FB08:
	.4byte 0x030000D8
_0801FB0C:
	.4byte 0x040000D4
_0801FB10:
	.4byte gUnknown_082AF7A8
_0801FB14:
	.4byte 0x06010000
_0801FB18:
	.4byte 0x84000200
_0801FB1C:
	.4byte gUnknown_082AF7A0
_0801FB20:
	.4byte gOamBuffer
_0801FB24:
	.4byte 0x84000002
_0801FB28:
	.4byte 0x000001FF
_0801FB2C:
	.4byte 0xFFFFFE00
_0801FB30:
	.4byte 0x000003FF
_0801FB34:
	.4byte 0xFFFFFC00
_0801FB38:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801F838

	THUMB_FUNC_START sub_0801FB3C
sub_0801FB3C: @ 0x0801FB3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _0801FF2C  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _0801FB5E
	b _0801FE4C
_0801FB5E:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801FC54
	ldr r1, _0801FF30  @ =0x030000D8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF3C  @ =gUnknown_082B34B4
	ldr r3, _0801FF2C  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF40  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF4C  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
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
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FF68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FC54:
	ldr r2, _0801FF2C  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801FD50
	ldr r3, _0801FF30  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF3C  @ =gUnknown_082B34B4
	ldr r3, _0801FF2C  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF40  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF4C  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FF68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FD50:
	ldr r2, _0801FF2C  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801FE4C
	ldr r3, _0801FF30  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF3C  @ =gUnknown_082B34B4
	ldr r3, _0801FF2C  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF40  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF4C  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FF68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FE4C:
	ldr r2, _0801FF2C  @ =0x030000D0
	mov r9, r2
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0801FE5A
	b _0802019E
_0801FE5A:
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0801FE62
	b _0801FFA0
_0801FE62:
	ldr r3, _0801FF30  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF6C  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF70  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF74  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
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
	ldr r1, _0801FF30  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	b _0801FF78
	.byte 0x00
	.byte 0x00
_0801FF2C:
	.4byte 0x030000D0
_0801FF30:
	.4byte 0x030000D8
_0801FF34:
	.4byte 0x030000D4
_0801FF38:
	.4byte 0x040000D4
_0801FF3C:
	.4byte gUnknown_082B34B4
_0801FF40:
	.4byte gUnknown_082B354C
_0801FF44:
	.4byte 0x06010000
_0801FF48:
	.4byte 0x84000100
_0801FF4C:
	.4byte gUnknown_082B3544
_0801FF50:
	.4byte gOamBuffer
_0801FF54:
	.4byte 0x84000002
_0801FF58:
	.4byte 0x000001FF
_0801FF5C:
	.4byte 0xFFFFFE00
_0801FF60:
	.4byte 0x000003FF
_0801FF64:
	.4byte 0xFFFFFC00
_0801FF68:
	.4byte 0x80000200
_0801FF6C:
	.4byte gUnknown_082B55E4
_0801FF70:
	.4byte gUnknown_082B567C
_0801FF74:
	.4byte gUnknown_082B5674
_0801FF78:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080201AC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FFA0:
	mov r2, r9
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0802009C
	ldr r3, _080201B0  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #10]
	mov r1, r8
	str r0, [r1]
	ldr r0, _080201B4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _080201B8  @ =0x040000D4
	ldr r2, _080201BC  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080201C0  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080201C4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080201C8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080201CC  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080201D0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080201D4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080201D8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080201DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r0, _080201E0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _080201E4  @ =0xFFFFFC00
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
	ldr r1, _080201B0  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080201AC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802009C:
	ldr r2, _080201E8  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0802019E
	ldr r3, _080201B0  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #18]
	mov r1, r8
	str r0, [r1]
	ldr r0, _080201B4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _080201B8  @ =0x040000D4
	ldr r2, _080201BC  @ =gUnknown_082B55E4
	ldr r3, _080201E8  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080201C0  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080201C4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080201C8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080201CC  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080201D0  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080201D4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080201D8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080201DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
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
	ldr r0, _080201E0  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _080201E4  @ =0xFFFFFC00
	mov r3, r8
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080201AC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802019E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080201AC:
	.4byte 0x80000200
_080201B0:
	.4byte 0x030000D8
_080201B4:
	.4byte 0x030000D4
_080201B8:
	.4byte 0x040000D4
_080201BC:
	.4byte gUnknown_082B55E4
_080201C0:
	.4byte gUnknown_082B567C
_080201C4:
	.4byte 0x06010000
_080201C8:
	.4byte 0x84000100
_080201CC:
	.4byte gUnknown_082B5674
_080201D0:
	.4byte gOamBuffer
_080201D4:
	.4byte 0x84000002
_080201D8:
	.4byte 0x000001FF
_080201DC:
	.4byte 0xFFFFFE00
_080201E0:
	.4byte 0x000003FF
_080201E4:
	.4byte 0xFFFFFC00
_080201E8:
	.4byte 0x030000D0
	THUMB_FUNC_END sub_0801FB3C

	THUMB_FUNC_START sub_080201EC
sub_080201EC: @ 0x080201EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _080205DC  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _0802020E
	b _080204FC
_0802020E:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08020304
	ldr r1, _080205E0  @ =0x030000D8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _080205EC  @ =gUnknown_082B34B4
	ldr r3, _080205DC  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080205F0  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080205FC  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
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
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08020618  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08020304:
	ldr r2, _080205DC  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _08020400
	ldr r3, _080205E0  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _080205EC  @ =gUnknown_082B34B4
	ldr r3, _080205DC  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080205F0  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080205FC  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08020618  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08020400:
	ldr r2, _080205DC  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _080204FC
	ldr r3, _080205E0  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _080205EC  @ =gUnknown_082B34B4
	ldr r3, _080205DC  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080205F0  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080205FC  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08020618  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080204FC:
	ldr r2, _080205DC  @ =0x030000D0
	mov r9, r2
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0802050A
	b _0802084E
_0802050A:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08020512
	b _08020650
_08020512:
	ldr r3, _080205E0  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _0802061C  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08020620  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08020624  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
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
	ldr r1, _080205E0  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	b _08020628
	.byte 0x00
	.byte 0x00
_080205DC:
	.4byte 0x030000D0
_080205E0:
	.4byte 0x030000D8
_080205E4:
	.4byte 0x030000D4
_080205E8:
	.4byte 0x040000D4
_080205EC:
	.4byte gUnknown_082B34B4
_080205F0:
	.4byte gUnknown_082B354C
_080205F4:
	.4byte 0x06010000
_080205F8:
	.4byte 0x84000100
_080205FC:
	.4byte gUnknown_082B3544
_08020600:
	.4byte gOamBuffer
_08020604:
	.4byte 0x84000002
_08020608:
	.4byte 0x000001FF
_0802060C:
	.4byte 0xFFFFFE00
_08020610:
	.4byte 0x000003FF
_08020614:
	.4byte 0xFFFFFC00
_08020618:
	.4byte 0x80000200
_0802061C:
	.4byte gUnknown_082B55E4
_08020620:
	.4byte gUnknown_082B567C
_08020624:
	.4byte gUnknown_082B5674
_08020628:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802085C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08020650:
	mov r2, r9
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0802074C
	ldr r3, _08020860  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #10]
	mov r1, r8
	str r0, [r1]
	ldr r0, _08020864  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _08020868  @ =0x040000D4
	ldr r2, _0802086C  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08020870  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08020874  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08020878  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802087C  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020880  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020884  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020888  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802088C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
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
	ldr r0, _08020890  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08020894  @ =0xFFFFFC00
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
	ldr r1, _08020860  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802085C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802074C:
	ldr r2, _08020898  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0802084E
	ldr r3, _08020860  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #18]
	mov r1, r8
	str r0, [r1]
	ldr r0, _08020864  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _08020868  @ =0x040000D4
	ldr r2, _0802086C  @ =gUnknown_082B55E4
	ldr r3, _08020898  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08020870  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08020874  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08020878  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802087C  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020880  @ =gOamBuffer
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020884  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020888  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802088C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
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
	ldr r0, _08020890  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _08020894  @ =0xFFFFFC00
	mov r3, r8
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
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802085C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802084E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802085C:
	.4byte 0x80000200
_08020860:
	.4byte 0x030000D8
_08020864:
	.4byte 0x030000D4
_08020868:
	.4byte 0x040000D4
_0802086C:
	.4byte gUnknown_082B55E4
_08020870:
	.4byte gUnknown_082B567C
_08020874:
	.4byte 0x06010000
_08020878:
	.4byte 0x84000100
_0802087C:
	.4byte gUnknown_082B5674
_08020880:
	.4byte gOamBuffer
_08020884:
	.4byte 0x84000002
_08020888:
	.4byte 0x000001FF
_0802088C:
	.4byte 0xFFFFFE00
_08020890:
	.4byte 0x000003FF
_08020894:
	.4byte 0xFFFFFC00
_08020898:
	.4byte 0x030000D0
	THUMB_FUNC_END sub_080201EC

	THUMB_FUNC_START sub_0802089C
sub_0802089C: @ 0x0802089C
	push {r4,lr}
	sub sp, sp, #12
	ldr r2, _080208F4  @ =0x030000D4
	ldr r0, [r2]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	mov r4, #0
	strb r1, [r0, #2]
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #43
	bne _080208EC
	mov r0, #4
	strb r0, [r1, #1]
	ldr r3, _080208F8  @ =0x030000DC
	ldr r1, _080208FC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020900  @ =0x030000E0
	ldr r1, _08020904  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
_080208EC:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_080208F4:
	.4byte 0x030000D4
_080208F8:
	.4byte 0x030000DC
_080208FC:
	.4byte gUnknown_08079878
_08020900:
	.4byte 0x030000E0
_08020904:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_0802089C

	THUMB_FUNC_START sub_08020908
sub_08020908: @ 0x08020908
	push {r4,lr}
	ldr r0, _08020928  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r4, r0, #0
	cmp r1, #2
	bhi _08020930
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0802092C
	add r0, r1, #1
	strb r0, [r2, #4]
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #6]
	b _08020930
_08020928:
	.4byte 0x030000D0
_0802092C:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08020930:
	ldr r0, _08020964  @ =0x030000D4
	ldr r1, [r0]
	ldrh r1, [r1, #20]
	add r2, r0, #0
	cmp r1, #8
	bne _08020942
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #7]
_08020942:
	ldr r0, [r2]
	ldrh r0, [r0, #20]
	cmp r0, #8
	bls _0802096C
	ldr r1, [r4]
	ldrb r3, [r1, #5]
	cmp r3, #2
	bhi _0802096C
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08020968
	add r0, r3, #1
	strb r0, [r1, #5]
	ldr r1, [r4]
	mov r0, #1
	b _0802096A
	.byte 0x00
	.byte 0x00
_08020964:
	.4byte 0x030000D4
_08020968:
	sub r0, r0, #1
_0802096A:
	strb r0, [r1, #6]
_0802096C:
	ldr r0, [r2]
	ldrh r0, [r0, #20]
	cmp r0, #16
	bne _080209A2
	ldr r1, [r4]
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #6]
	ldr r1, [r2]
	mov r0, #5
	strb r0, [r1, #1]
	ldr r3, _080209A8  @ =0x030000DC
	ldr r1, _080209AC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080209B0  @ =0x030000E0
	ldr r1, _080209B4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_080209A2:
	pop {r4}
	pop {r0}
	bx r0
_080209A8:
	.4byte 0x030000DC
_080209AC:
	.4byte gUnknown_08079878
_080209B0:
	.4byte 0x030000E0
_080209B4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020908

	THUMB_FUNC_START sub_080209B8
sub_080209B8: @ 0x080209B8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #16
	mov r0, #8
	mov r8, r0
	str r0, [sp, #8]
	mov r7, #4
	str r7, [sp, #12]
	ldr r4, _08020A54  @ =0x030000CC
	ldr r0, [r4]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r6, _08020A58  @ =gUnknown_0885C4C4
	ldr r2, [r6, #64]
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
	ldr r5, _08020A5C  @ =0x030000D4
	ldr r0, [r5]
	ldrh r0, [r0, #20]
	cmp r0, #119
	bls _08020A46
	mov r0, r8
	str r0, [sp, #8]
	str r7, [sp, #12]
	ldr r0, [r4]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r6, #64]
	mov r0, #5
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r0, _08020A60  @ =0x030000D0
	ldr r0, [r0]
	strb r4, [r0, #1]
	ldr r1, [r5]
	mov r0, #6
	strb r0, [r1, #1]
	ldr r3, _08020A64  @ =0x030000DC
	ldr r1, _08020A68  @ =gUnknown_08079878
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020A6C  @ =0x030000E0
	ldr r1, _08020A70  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
	mov r0, #42
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08020A46:
	add sp, sp, #16
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020A54:
	.4byte 0x030000CC
_08020A58:
	.4byte gUnknown_0885C4C4
_08020A5C:
	.4byte 0x030000D4
_08020A60:
	.4byte 0x030000D0
_08020A64:
	.4byte 0x030000DC
_08020A68:
	.4byte gUnknown_08079878
_08020A6C:
	.4byte 0x030000E0
_08020A70:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_080209B8

	THUMB_FUNC_START sub_08020A74
sub_08020A74: @ 0x08020A74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08020ACC  @ =gSomeKeys_030012E8
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08020AE4
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #79
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r2, _08020AD0  @ =0x030000D4
	ldr r1, [r2]
	mov r0, #7
	strb r0, [r1, #1]
	ldr r3, _08020AD4  @ =0x030000DC
	ldr r1, _08020AD8  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020ADC  @ =0x030000E0
	ldr r1, _08020AE0  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
	b _08020BB0
_08020ACC:
	.4byte gSomeKeys_030012E8
_08020AD0:
	.4byte 0x030000D4
_08020AD4:
	.4byte 0x030000DC
_08020AD8:
	.4byte gUnknown_08079878
_08020ADC:
	.4byte 0x030000E0
_08020AE0:
	.4byte gUnknown_080798B0
_08020AE4:
	ldr r7, _08020BC0  @ =0x030000D4
	ldr r0, [r7]
	ldrh r0, [r0, #20]
	mov r5, #7
	and r5, r5, r0
	cmp r5, #0
	bne _08020BB0
	ldr r6, _08020BC4  @ =0x030000D0
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020BC8  @ =0x030000CC
	mov r10, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	mov r9, r1
	add r0, r0, r9
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08020BCC  @ =gUnknown_0885C4C4
	mov r8, r0
	ldr r3, [r0, #64]
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	str r5, [sp]
	mov r4, #128
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #78
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08020B4E
	strb r5, [r1, #1]
_08020B4E:
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r1, r10
	ldr r0, [r1]
	add r0, r0, r9
	ldr r1, [r0]
	mov r0, r8
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, [r7]
	ldrh r1, [r0, #20]
	ldr r0, _08020BD0  @ =0x00000634
	cmp r1, r0
	bls _08020BB0
	str r5, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #79
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r1, [r7]
	mov r0, #7
	strb r0, [r1, #1]
	ldr r3, _08020BD4  @ =0x030000DC
	ldr r1, _08020BD8  @ =gUnknown_08079878
	ldr r2, [r7]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020BDC  @ =0x030000E0
	ldr r1, _08020BE0  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #20]
_08020BB0:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08020BC0:
	.4byte 0x030000D4
_08020BC4:
	.4byte 0x030000D0
_08020BC8:
	.4byte 0x030000CC
_08020BCC:
	.4byte gUnknown_0885C4C4
_08020BD0:
	.4byte 0x00000634
_08020BD4:
	.4byte 0x030000DC
_08020BD8:
	.4byte gUnknown_08079878
_08020BDC:
	.4byte 0x030000E0
_08020BE0:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020A74

	THUMB_FUNC_START sub_08020BE4
sub_08020BE4: @ 0x08020BE4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	ldr r6, _08020CDC  @ =0x030000D4
	ldr r1, [r6]
	ldrh r0, [r1, #20]
	add r0, r0, #1
	mov r7, #0
	strh r0, [r1, #20]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #10
	beq _08020C16
	cmp r0, #22
	beq _08020C16
	cmp r0, #38
	beq _08020C16
	cmp r0, #54
	beq _08020C16
	cmp r0, #78
	beq _08020C16
	cmp r0, #118
	bne _08020CF4
_08020C16:
	mov r5, #0
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #78
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	ldr r6, _08020CE0  @ =0x030000D0
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020CE4  @ =0x030000CC
	mov r9, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	mov r8, r1
	add r0, r0, r8
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r7, _08020CE8  @ =gUnknown_0885C4C4
	ldr r3, [r7, #64]
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08020C72
	strb r5, [r1, #1]
_08020C72:
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, r8
	ldr r1, [r0]
	ldr r2, [r7, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r4, #128
	lsl r4, r4, #1
	add r0, r4, #0
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08020CA2
	b _08020DF8
_08020CA2:
	ldr r0, _08020CDC  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #118
	beq _08020CAE
	b _08020DF8
_08020CAE:
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	ldr r1, _08020CEC  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08020CC2
	b _08020DF8
_08020CC2:
	ldr r0, _08020CF0  @ =gUnknown_03000B90
	ldr r0, [r0, #16]
	cmp r0, #1
	beq _08020CCC
	b _08020DF8
_08020CCC:
	mov r0, #78
	strh r0, [r2, #20]
	add r0, r4, #0
	mov r1, #1
	bl sub_080148A4
	b _08020DF8
	.byte 0x00
	.byte 0x00
_08020CDC:
	.4byte 0x030000D4
_08020CE0:
	.4byte 0x030000D0
_08020CE4:
	.4byte 0x030000CC
_08020CE8:
	.4byte gUnknown_0885C4C4
_08020CEC:
	.4byte 0x030000D8
_08020CF0:
	.4byte gUnknown_03000B90
_08020CF4:
	cmp r0, #178
	bne _08020D4C
	ldr r0, _08020D40  @ =0x030000D0
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020D44  @ =0x030000CC
	mov r8, r0
	ldr r0, [r0]
	mov r6, #160
	lsl r6, r6, #1
	add r0, r0, r6
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r5, _08020D48  @ =gUnknown_0885C4C4
	ldr r3, [r5, #64]
	str r4, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r6
	ldr r1, [r0]
	ldr r2, [r5, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08020DF8
	.byte 0x00
	.byte 0x00
_08020D40:
	.4byte 0x030000D0
_08020D44:
	.4byte 0x030000CC
_08020D48:
	.4byte gUnknown_0885C4C4
_08020D4C:
	cmp r0, #200
	bne _08020DF8
	ldr r5, _08020D90  @ =0x030000D0
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020D94  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08020D98  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	str r4, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08020D9C
	ldr r1, [r6]
	mov r0, #3
	b _08020DAE
	.byte 0x00
	.byte 0x00
_08020D90:
	.4byte 0x030000D0
_08020D94:
	.4byte 0x030000CC
_08020D98:
	.4byte gUnknown_0885C4C4
_08020D9C:
	cmp r0, #1
	bne _08020DA6
	ldr r1, [r6]
	mov r0, #12
	b _08020DAE
_08020DA6:
	cmp r0, #2
	bne _08020DB0
	ldr r1, [r6]
	mov r0, #21
_08020DAE:
	strb r0, [r1, #4]
_08020DB0:
	ldr r2, _08020E08  @ =0x030000D4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #8
	strb r0, [r1, #1]
	ldr r4, _08020E0C  @ =0x030000DC
	ldr r1, _08020E10  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r4, _08020E14  @ =0x030000E0
	ldr r1, _08020E18  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strh r3, [r2, #20]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl play_sound_effect_08071990
	mov r0, #69
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
_08020DF8:
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020E08:
	.4byte 0x030000D4
_08020E0C:
	.4byte 0x030000DC
_08020E10:
	.4byte gUnknown_08079878
_08020E14:
	.4byte 0x030000E0
_08020E18:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020BE4

	THUMB_FUNC_START sub_08020E1C
sub_08020E1C: @ 0x08020E1C
	push {r4,lr}
	ldr r0, _08020E44  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r3, r0, #0
	cmp r1, #0
	beq _08020E4C
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08020E4C
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08020E48
	sub r0, r1, #1
	strb r0, [r2, #5]
	ldr r1, [r3]
	mov r0, #1
	strb r0, [r1, #6]
	b _08020E4C
	.byte 0x00
	.byte 0x00
_08020E44:
	.4byte 0x030000D0
_08020E48:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08020E4C:
	ldr r0, _08020E7C  @ =0x030000D4
	ldr r1, [r0]
	ldrh r1, [r1, #20]
	add r2, r0, #0
	cmp r1, #8
	bne _08020E5E
	ldr r1, [r3]
	mov r0, #0
	strb r0, [r1, #7]
_08020E5E:
	ldr r0, [r2]
	ldrh r0, [r0, #20]
	cmp r0, #8
	bls _08020E84
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08020E80
	ldrb r0, [r1, #4]
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r1, [r3]
	mov r0, #1
	b _08020E82
	.byte 0x00
	.byte 0x00
_08020E7C:
	.4byte 0x030000D4
_08020E80:
	sub r0, r0, #1
_08020E82:
	strb r0, [r1, #6]
_08020E84:
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #15
	bls _08020EB2
	mov r4, #0
	mov r0, #9
	strb r0, [r1, #1]
	ldr r3, _08020EB8  @ =0x030000DC
	ldr r1, _08020EBC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020EC0  @ =0x030000E0
	ldr r1, _08020EC4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08020EB2:
	pop {r4}
	pop {r0}
	bx r0
_08020EB8:
	.4byte 0x030000DC
_08020EBC:
	.4byte gUnknown_08079878
_08020EC0:
	.4byte 0x030000E0
_08020EC4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020E1C

	THUMB_FUNC_START sub_08020EC8
sub_08020EC8: @ 0x08020EC8
	push {r4,lr}
	ldr r2, _08020F0C  @ =0x030000D4
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08020ED8
	sub r0, r0, #1
	strb r0, [r1, #2]
_08020ED8:
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #59
	bls _08020F06
	mov r4, #0
	mov r0, #11
	strb r0, [r1, #1]
	ldr r3, _08020F10  @ =0x030000DC
	ldr r1, _08020F14  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020F18  @ =0x030000E0
	ldr r1, _08020F1C  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08020F06:
	pop {r4}
	pop {r0}
	bx r0
_08020F0C:
	.4byte 0x030000D4
_08020F10:
	.4byte 0x030000DC
_08020F14:
	.4byte gUnknown_08079878
_08020F18:
	.4byte 0x030000E0
_08020F1C:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020EC8

	THUMB_FUNC_START sub_08020F20
sub_08020F20: @ 0x08020F20
	push {r4-r7,lr}
	ldr r0, _08020F8C  @ =0x030000D4
	ldr r3, [r0]
	ldrh r1, [r3, #20]
	add r5, r0, #0
	cmp r1, #0
	beq _0802100C
	mov r0, #12
	strb r0, [r3, #1]
	ldr r3, _08020F90  @ =0x030000DC
	ldr r1, _08020F94  @ =gUnknown_08079878
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020F98  @ =0x030000E0
	ldr r1, _08020F9C  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020FA0  @ =0x030000D0
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _08020FA4  @ =0x030000D8
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
	bls _08020F78
	add r0, r1, #0
	cmp r0, #4
	beq _08020F78
	cmp r0, #5
	bne _08020FAC
_08020F78:
	ldr r3, [r6]
	ldr r2, _08020FA8  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #9]
	b _08020FC0
_08020F8C:
	.4byte 0x030000D4
_08020F90:
	.4byte 0x030000DC
_08020F94:
	.4byte gUnknown_08079878
_08020F98:
	.4byte 0x030000E0
_08020F9C:
	.4byte gUnknown_080798B0
_08020FA0:
	.4byte 0x030000D0
_08020FA4:
	.4byte 0x030000D8
_08020FA8:
	.4byte gUnknown_0811C010
_08020FAC:
	cmp r0, #3
	bne _08020FC0
	ldr r2, _08020FE0  @ =gUnknown_0811F5F4
	ldrb r1, [r4, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r4, #9]
_08020FC0:
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	ldr r1, [r7]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08020FD4
	cmp r0, #3
	bne _08020FE4
_08020FD4:
	ldr r1, [r5]
	mov r0, #80
	strh r0, [r1, #16]
	strh r0, [r1, #18]
	b _08021006
	.byte 0x00
	.byte 0x00
_08020FE0:
	.4byte gUnknown_0811F5F4
_08020FE4:
	cmp r0, #2
	bne _08020FEE
	ldr r0, [r5]
	mov r1, #95
	b _08021000
_08020FEE:
	cmp r0, #4
	bne _08020FF8
	ldr r0, [r5]
	mov r1, #140
	b _08021000
_08020FF8:
	cmp r0, #5
	bne _08021006
	ldr r0, [r5]
	mov r1, #220
_08021000:
	strh r1, [r0, #16]
	mov r1, #50
	strh r1, [r0, #18]
_08021006:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #20]
_0802100C:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020F20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021014
sub_08021014: @ 0x08021014
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r3, _08021058  @ =0x030000D0
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _0802105C  @ =0x030000D8
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
	bls _08021040
	add r0, r1, #0
	cmp r0, #4
	beq _08021040
	cmp r0, #5
	bne _0802106A
_08021040:
	ldr r1, [r5]
	ldrb r2, [r1, #3]
	cmp r2, #10
	bhi _0802109C
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _08021064
	add r0, r2, #1
	strb r0, [r1, #3]
	ldr r3, [r5]
	ldr r2, _08021060  @ =gUnknown_0811C010
	b _08021082
_08021058:
	.4byte 0x030000D0
_0802105C:
	.4byte 0x030000D8
_08021060:
	.4byte gUnknown_0811C010
_08021064:
	sub r0, r0, #1
	strb r0, [r1, #9]
	b _0802109C
_0802106A:
	cmp r0, #3
	bne _0802109C
	ldrb r1, [r4, #3]
	cmp r1, #10
	bhi _0802109C
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08021098
	add r0, r1, #1
	strb r0, [r4, #3]
	ldr r3, [r5]
	ldr r2, _08021094  @ =gUnknown_0811F5F4
_08021082:
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #9]
	b _0802109C
	.byte 0x00
	.byte 0x00
_08021094:
	.4byte gUnknown_0811F5F4
_08021098:
	sub r0, r0, #1
	strb r0, [r4, #9]
_0802109C:
	ldr r0, _08021104  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #10
	bne _08021146
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	ldr r1, [r6]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080210C6
	add r0, r1, #0
	cmp r0, #4
	beq _080210C6
	cmp r0, #5
	bne _08021110
_080210C6:
	ldr r0, _08021104  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08021108  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0802110C  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
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
	b _08021146
	.byte 0x00
	.byte 0x00
_08021104:
	.4byte 0x030000D4
_08021108:
	.4byte 0x030000CC
_0802110C:
	.4byte gUnknown_0885C4C4
_08021110:
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _080211B8  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _080211BC  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
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
_08021146:
	ldr r0, _080211C0  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	ldrh r1, [r2, #18]
	cmp r0, r1
	bne _080211FA
	ldr r0, _080211C4  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _080211C8  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08021176
	add r0, r1, #0
	cmp r0, #4
	beq _08021176
	cmp r0, #5
	bne _080211D0
_08021176:
	ldr r0, _080211C0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _080211B8  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #148
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _080211BC  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _080211CC  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _080211FA
	mov r0, #1
	bl add_lives
	b _080211FA
_080211B8:
	.4byte 0x030000CC
_080211BC:
	.4byte gUnknown_0885C4C4
_080211C0:
	.4byte 0x030000D4
_080211C4:
	.4byte 0x030000D0
_080211C8:
	.4byte 0x030000D8
_080211CC:
	.4byte gUnknown_03000BBC
_080211D0:
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #152
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
_080211FA:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrh r0, [r0, #20]
	cmp r0, #55
	bne _0802125A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08021220
	cmp r0, #4
	beq _08021220
	cmp r0, #5
	bne _0802125A
_08021220:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
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
_0802125A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrh r0, [r0, #20]
	cmp r0, #82
	bne _080212C0
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08021280
	cmp r0, #4
	beq _08021280
	cmp r0, #5
	bne _080212C0
_08021280:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #150
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _080212C0
	mov r0, #1
	bl add_lives
_080212C0:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #100
	bne _0802131A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802131A
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #154
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
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
_0802131A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #127
	bne _0802137A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802137A
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #154
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _0802137A
	mov r0, #1
	bl add_lives
_0802137A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #145
	bne _080213CE
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _080213CE
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #156
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
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
_080213CE:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #172
	bne _08021426
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08021426
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #156
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08021426
	mov r0, #1
	bl add_lives
_08021426:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #190
	bne _0802147A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802147A
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
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
_0802147A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #207
	bne _080214D2
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _080214D2
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _080214D2
	mov r0, #1
	bl add_lives
_080214D2:
	ldr r2, _08021514  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	ldrh r3, [r1, #16]
	cmp r0, r3
	bcc _08021504
	mov r4, #0
	mov r0, #13
	strb r0, [r1, #1]
	ldr r3, _08021524  @ =0x030000DC
	ldr r1, _08021528  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802152C  @ =0x030000E0
	ldr r1, _08021530  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021504:
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_0802150C:
	.4byte 0x030000CC
_08021510:
	.4byte gUnknown_0885C4C4
_08021514:
	.4byte 0x030000D4
_08021518:
	.4byte 0x030000D0
_0802151C:
	.4byte 0x030000D8
_08021520:
	.4byte gUnknown_03000BBC
_08021524:
	.4byte 0x030000DC
_08021528:
	.4byte gUnknown_08079878
_0802152C:
	.4byte 0x030000E0
_08021530:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021014

	THUMB_FUNC_START sub_08021534
sub_08021534: @ 0x08021534
	push {r4,r5,lr}
	bl sub_0801488C
	ldr r0, _0802154C  @ =gUnknown_03000B80
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08021550
	mov r0, #9
	b _0802159E
_0802154C:
	.4byte gUnknown_03000B80
_08021550:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080215A6
	ldr r4, _08021594  @ =gUnknown_03000B90
	ldr r0, [r4, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802159C
	ldr r5, _08021598  @ =gUnknown_080788C8
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802159C
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _0802159E
	.byte 0x00
	.byte 0x00
_08021594:
	.4byte gUnknown_03000B90
_08021598:
	.4byte gUnknown_080788C8
_0802159C:
	mov r0, #8
_0802159E:
	mov r1, #1
	bl goto_state_080070E8
	b _080215AE
_080215A6:
	mov r0, #8
	mov r1, #1
	bl goto_state_080070E8
_080215AE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021534


