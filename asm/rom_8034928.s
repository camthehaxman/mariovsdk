	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08034928
sub_08034928: @ 0x08034928
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #48
	str r0, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	ldr r2, _080349C4  @ =gUnknown_03001770
	ldrb r0, [r2, #20]
	str r0, [sp, #24]
	ldrb r3, [r2, #22]
	str r3, [sp, #28]
	ldr r0, [r2]
	ldrb r0, [r0, #11]
	str r0, [sp, #16]
	ldr r4, [sp, #84]
	mov r12, r4
	ldr r0, [sp, #88]
	str r0, [sp, #20]
	add r3, r1, #0
	ldr r1, [sp, #8]
	cmp r3, r1
	bne _0803495C
	b _08034A80
_0803495C:
	ldrb r1, [r3]
	cmp r1, #0
	bne _08034964
	b _08034A80
_08034964:
	mov r4, #16
	ldr r0, [sp, #96]
	and r4, r4, r0
	str r4, [sp, #36]
_0803496C:
	cmp r1, #10
	bne _080349C8
	ldr r0, [sp, #20]
	ldr r1, [sp, #16]
	add r0, r0, r1
	str r0, [sp, #20]
	ldr r2, [sp, #12]
	mov r12, r2
	add r4, r3, #1
	mov r10, r4
	ldr r0, [sp, #36]
	cmp r0, #0
	beq _08034A70
	mov r5, sp
	mov r4, #0
	mov r2, r10
	ldrb r1, [r3, #1]
	cmp r1, #0
	beq _080349B8
	cmp r1, #10
	beq _080349B8
	ldr r0, _080349C4  @ =gUnknown_03001770
	ldr r3, [r0, #16]
	ldr r1, [r0]
_0803499C:
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r0, [r0, #16]
	add r4, r4, r0
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _080349B8
	cmp r0, #10
	bne _0803499C
_080349B8:
	str r4, [r5]
	ldr r0, [sp]
	ldr r1, [sp, #80]
	sub r0, r1, r0
	asr r0, r0, #1
	b _08034A6E
_080349C4:
	.4byte gUnknown_03001770
_080349C8:
	ldrb r0, [r3]
	ldr r2, _08034AA4  @ =gUnknown_03001770
	ldr r1, [r2, #16]
	lsl r0, r0, #1
	add r0, r0, r1
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, #12
	ldr r1, [r2]
	add r0, r0, r1
	mov r9, r0
	ldr r0, [r0, #4]
	add r0, r0, r12
	mov r8, r0
	ldr r4, [sp, #16]
	ldr r0, [sp, #20]
	add r4, r4, r0
	str r4, [sp, #32]
	mov r2, r9
	ldr r0, [r2]
	add r7, r1, r0
	ldr r1, [sp, #20]
	add r3, r3, #1
	mov r10, r3
	cmp r1, r4
	bge _08034A6A
_080349FC:
	mov r5, r12
	add r3, r1, #1
	str r3, [sp, #44]
	cmp r12, r8
	bge _08034A62
	asr r0, r1, #3
	ldr r2, [sp, #92]
	add r4, r0, #0
	mul r4, r2, r4
	str r4, [sp, #40]
	mov r6, #7
	and r6, r6, r1
	ldr r3, [sp, #24]
	lsl r6, r6, r3
_08034A18:
	add r1, r5, #0
	ldr r4, [sp, #24]
	asr r1, r1, r4
	add r0, r4, #0
	add r0, r0, #3
	lsl r1, r1, r0
	ldr r0, [sp, #40]
	add r1, r1, r0
	add r2, r5, #0
	ldr r3, [sp, #28]
	and r2, r2, r3
	add r2, r2, r6
	add r2, r2, r1
	ldrb r4, [r7]
	mov r1, #1
	add r0, r2, #0
	and r0, r0, r1
	lsl r0, r0, #3
	lsl r4, r4, r0
	mov r1, #8
	sub r1, r1, r0
	mov r3, #255
	lsl r3, r3, #16
	lsl r3, r3, r1
	lsr r3, r3, #16
	asr r2, r2, #1
	lsl r2, r2, #1
	ldr r0, [sp, #4]
	add r2, r0, r2
	ldrh r0, [r2]
	and r0, r0, r3
	orr r0, r0, r4
	strh r0, [r2]
	add r5, r5, #1
	add r7, r7, #1
	cmp r5, r8
	blt _08034A18
_08034A62:
	ldr r1, [sp, #44]
	ldr r2, [sp, #32]
	cmp r1, r2
	blt _080349FC
_08034A6A:
	mov r3, r9
	ldr r0, [r3, #4]
_08034A6E:
	add r12, r12, r0
_08034A70:
	mov r3, r10
	ldr r4, [sp, #8]
	cmp r10, r4
	beq _08034A80
	ldrb r1, [r3]
	cmp r1, #0
	beq _08034A80
	b _0803496C
_08034A80:
	ldr r0, _08034AA8  @ =0x0000FFFF
	mov r1, r12
	and r1, r1, r0
	ldr r2, [sp, #20]
	and r2, r2, r0
	lsl r0, r2, #16
	orr r1, r1, r0
	mov r12, r1
	mov r0, r12
	add sp, sp, #48
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08034AA4:
	.4byte gUnknown_03001770
_08034AA8:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08034928

	THUMB_FUNC_START sub_08034AAC
sub_08034AAC: @ 0x08034AAC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #76
	mov r10, r0
	str r1, [sp, #40]
	mov r9, r2
	str r3, [sp, #44]
	ldr r3, _08034C34  @ =gUnknown_03001770
	ldr r1, [r3]
	ldrb r0, [r1, #11]
	str r0, [sp, #28]
	ldr r2, [sp, #108]
	lsl r0, r2, #28
	lsr r0, r0, #16
	str r0, [sp, #68]
	add r4, sp, #24
	mov r12, r4
	mov r0, sp
	add r0, r0, #28
	str r0, [sp, #72]
	ldrb r6, [r1, #11]
	mov r5, #0
	str r5, [sp, #32]
	mov r2, r10
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B3E
	add r1, sp, #32
	mov r8, r1
	add r7, r3, #0
_08034AEE:
	mov r1, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B1A
	cmp r0, #10
	beq _08034B1A
	ldr r4, [r7, #16]
	ldr r3, [r7]
_08034AFE:
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0, #16]
	add r1, r1, r0
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B1A
	cmp r0, #10
	bne _08034AFE
_08034B1A:
	mov r3, r8
	str r1, [r3]
	ldr r0, [sp, #32]
	cmp r0, r5
	ble _08034B26
	add r5, r0, #0
_08034B26:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034B3E
	cmp r0, #10
	bne _08034B36
	ldr r0, [r7]
	ldrb r0, [r0, #11]
	add r6, r6, r0
_08034B36:
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _08034AEE
_08034B3E:
	ldr r7, _08034C34  @ =gUnknown_03001770
	ldrb r0, [r7, #20]
	mov r1, #3
	sub r0, r1, r0
	lsl r5, r5, r0
	mov r4, r12
	str r5, [r4]
	ldr r0, [sp, #72]
	str r6, [r0]
	mov r0, #64
	ldr r2, [sp, #108]
	and r0, r0, r2
	cmp r0, #0
	beq _08034B62
	ldr r0, [sp, #28]
	mov r3, r9
	sub r3, r3, r0
	mov r9, r3
_08034B62:
	ldrb r0, [r7, #20]
	sub r0, r1, r0
	ldr r1, [sp, #24]
	add r6, r1, #0
	asr r6, r6, r0
	mov r0, #7
	ldr r4, [sp, #40]
	and r4, r4, r0
	add r1, r1, r4
	mov r3, r9
	and r3, r3, r0
	ldr r0, [sp, #28]
	add r0, r0, r3
	add r1, r1, #7
	mov r2, #8
	neg r2, r2
	and r1, r1, r2
	add r0, r0, #7
	and r0, r0, r2
	asr r1, r1, #3
	str r1, [sp, #24]
	asr r0, r0, #3
	str r0, [sp, #28]
	ldr r2, [sp, #40]
	asr r2, r2, #3
	mov r8, r2
	mov r2, r9
	asr r2, r2, #3
	str r2, [sp, #48]
	add r2, r1, #0
	mul r2, r0, r2
	str r2, [sp, #60]
	str r4, [sp, #40]
	mov r9, r3
	ldrb r3, [r7, #20]
	str r3, [sp, #56]
	ldrb r2, [r7, #21]
	add r4, r2, #0
	mul r4, r1, r4
	str r4, [sp, #52]
	ldrh r0, [r7, #24]
	add r1, r2, #0
	mul r1, r0, r1
	ldr r0, [r7, #4]
	add r0, r0, r1
	str r0, [sp, #64]
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r0, [sp, #60]
	mul r2, r0, r2
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	ldr r1, [sp, #64]
	bl CpuSet
	ldr r1, [sp, #44]
	add r1, r1, r10
	mov r12, r1
	ldr r2, [sp, #44]
	cmp r2, #0
	bge _08034BEE
	mov r3, #0
	mov r12, r3
_08034BEE:
	mov r0, #16
	ldr r4, [sp, #108]
	and r0, r0, r4
	cmp r0, #0
	beq _08034C38
	add r2, sp, #36
	mov r3, #0
	mov r1, r10
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034C28
	cmp r0, #10
	beq _08034C28
	ldr r5, [r7, #16]
	ldr r4, [r7]
_08034C0C:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r5
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #16]
	add r3, r3, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034C28
	cmp r0, #10
	bne _08034C0C
_08034C28:
	str r3, [r2]
	ldr r0, [sp, #36]
	sub r0, r6, r0
	asr r1, r0, #1
	b _08034C3A
	.byte 0x00
	.byte 0x00
_08034C34:
	.4byte gUnknown_03001770
_08034C38:
	mov r1, #0
_08034C3A:
	mov r0, #3
	ldr r2, [sp, #56]
	sub r0, r0, r2
	ldr r3, [sp, #40]
	asr r3, r3, r0
	str r3, [sp, #40]
	str r6, [sp]
	str r1, [sp, #4]
	mov r4, r9
	str r4, [sp, #8]
	ldr r0, [sp, #52]
	str r0, [sp, #12]
	ldr r1, [sp, #108]
	str r1, [sp, #16]
	ldr r0, [sp, #64]
	mov r1, r10
	mov r2, r12
	bl sub_08034928
	ldr r1, _08034CC8  @ =gUnknown_03001770
	ldr r2, [r1, #12]
	mov r12, r2
	ldr r0, [sp, #28]
	ldr r3, [sp, #48]
	add r2, r0, r3
	str r2, [sp, #28]
	ldr r0, [sp, #24]
	mov r3, r8
	add r4, r0, r3
	str r4, [sp, #24]
	ldrh r3, [r1, #24]
	ldr r0, [sp, #48]
	cmp r0, r2
	bge _08034CAC
	add r5, r4, #0
	add r7, r2, #0
	mov r4, r8
	lsl r6, r4, #1
_08034C86:
	mov r1, r8
	add r4, r0, #1
	cmp r1, r5
	bge _08034CA6
	lsl r0, r0, #6
	add r0, r0, r12
	add r2, r6, r0
	sub r1, r5, r1
_08034C96:
	ldr r0, [sp, #68]
	orr r0, r0, r3
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	add r3, r3, #1
	cmp r1, #0
	bne _08034C96
_08034CA6:
	add r0, r4, #0
	cmp r0, r7
	blt _08034C86
_08034CAC:
	ldr r1, _08034CC8  @ =gUnknown_03001770
	ldrh r0, [r1, #24]
	ldr r2, [sp, #60]
	add r0, r0, r2
	strh r0, [r1, #24]
	add sp, sp, #76
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08034CC8:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_08034AAC

	THUMB_FUNC_START sub_08034CCC
sub_08034CCC: @ 0x08034CCC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #68
	mov r12, r0
	str r1, [sp, #40]
	str r2, [sp, #44]
	ldr r0, [sp, #100]
	mov r10, r0
	mov r1, #0
	str r1, [sp, #48]
	ldr r2, _08034D2C  @ =0x03001798
	str r2, [sp, #52]
	mov r0, #32
	mov r6, r10
	and r0, r0, r6
	cmp r0, #0
	beq _08034CFC
	ldr r0, _08034D30  @ =gUnknown_0300192C
	str r0, [sp, #52]
	mov r1, #1
	str r1, [sp, #48]
_08034CFC:
	ldr r2, _08034D34  @ =gUnknown_03001770
	ldr r1, [r2, #32]
	mov r0, #44
	mul r1, r0, r1
	ldr r0, [r2, #28]
	add r5, r0, r1
	mov r1, #15
	mov r0, r10
	and r0, r0, r1
	strb r0, [r5, #4]
	mov r6, r10
	str r6, [r5, #12]
	mov r0, sp
	ldrh r0, [r0, #40]
	strh r0, [r5]
	mov r1, sp
	ldrh r1, [r1, #44]
	strh r1, [r5, #2]
	mov r9, r2
	cmp r3, #0
	blt _08034D38
	mov r2, r12
	add r0, r2, r3
	b _08034D3A
_08034D2C:
	.4byte 0x03001798
_08034D30:
	.4byte gUnknown_0300192C
_08034D34:
	.4byte gUnknown_03001770
_08034D38:
	mov r0, #0
_08034D3A:
	str r0, [r5, #24]
	mov r3, r9
	ldr r1, [r3, #32]
	ldr r0, [r3, #36]
	cmp r1, r0
	bge _08034DA8
	ldr r0, [r5, #16]
	cmp r0, r12
	bne _08034D7C
	add r0, r1, #1
	str r0, [r3, #32]
	ldr r6, [sp, #48]
	cmp r6, #0
	beq _08034D68
	ldr r1, [sp, #52]
	ldrh r0, [r1]
	strh r0, [r5, #6]
	ldr r1, [r5, #40]
	ldr r2, [sp, #52]
	ldrh r0, [r2]
	add r0, r0, r1
	strh r0, [r2]
	b _08034D74
_08034D68:
	ldr r1, [r5, #40]
	ldr r3, [sp, #52]
	ldrh r0, [r3]
	sub r0, r0, r1
	strh r0, [r3]
	strh r0, [r5, #6]
_08034D74:
	ldrh r0, [r5, #6]
	lsr r0, r0, #5
	strh r0, [r5, #8]
	b _08034EF2
_08034D7C:
	ldrb r2, [r5, #5]
	lsl r2, r2, #3
	mov r6, r9
	ldrh r0, [r6, #42]
	lsl r0, r0, #3
	sub r0, r0, r2
	add r3, sp, #20
	mov r1, #160
	strh r1, [r3]
	ldr r3, _08034ED4  @ =0x040000D4
	add r1, sp, #20
	str r1, [r3]
	mov r1, #224
	lsl r1, r1, #19
	add r2, r2, r1
	str r2, [r3, #4]
	lsr r0, r0, #1
	mov r1, #129
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08034DA8:
	mov r2, r12
	str r2, [r5, #16]
	str r2, [r5, #20]
	mov r0, #0
	strh r0, [r5, #30]
	mov r3, sp
	add r3, r3, #24
	str r3, [sp, #56]
	mov r6, sp
	add r6, r6, #28
	str r6, [sp, #60]
	mov r1, r9
	ldr r0, [r1]
	ldrb r7, [r0, #11]
	mov r6, #0
	str r6, [sp, #32]
	mov r1, r12
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034E2C
	mov r2, sp
	add r2, r2, #32
	str r2, [sp, #64]
	mov r8, r9
_08034DD8:
	mov r4, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034E06
	cmp r0, #10
	beq _08034E06
	mov r0, r8
	ldr r3, [r0, #16]
	ldr r2, [r0]
_08034DEA:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r3
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r2
	ldr r0, [r0, #16]
	add r4, r4, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034E06
	cmp r0, #10
	bne _08034DEA
_08034E06:
	ldr r2, [sp, #64]
	str r4, [r2]
	ldr r0, [sp, #32]
	cmp r0, r6
	ble _08034E12
	add r6, r0, #0
_08034E12:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034E2C
	cmp r0, #10
	bne _08034E24
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #11]
	add r7, r7, r0
_08034E24:
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08034DD8
_08034E2C:
	mov r1, r9
	ldrb r0, [r1, #20]
	mov r1, #3
	sub r0, r1, r0
	lsl r6, r6, r0
	ldr r2, [sp, #56]
	str r6, [r2]
	ldr r3, [sp, #60]
	str r7, [r3]
	ldr r0, [sp, #28]
	strh r0, [r5, #38]
	mov r6, r9
	ldrb r0, [r6, #20]
	sub r1, r1, r0
	ldr r3, [sp, #24]
	asr r3, r3, r1
	strh r3, [r5, #36]
	ldr r1, [sp, #24]
	add r1, r1, #7
	mov r2, #8
	neg r2, r2
	and r1, r1, r2
	ldr r0, [sp, #28]
	add r0, r0, #7
	and r0, r0, r2
	asr r1, r1, #3
	str r1, [sp, #24]
	asr r0, r0, #3
	str r0, [sp, #28]
	strh r1, [r5, #32]
	ldr r0, [sp, #28]
	strh r0, [r5, #34]
	ldr r1, [sp, #24]
	ldr r0, [sp, #28]
	mul r1, r0, r1
	ldrb r0, [r6, #21]
	mul r0, r1, r0
	str r0, [r5, #40]
	mov r0, #16
	mov r1, r10
	and r0, r0, r1
	cmp r0, #0
	beq _08034EBC
	add r7, sp, #36
	mov r2, #0
	mov r1, r12
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034EB4
	cmp r0, #10
	beq _08034EB4
	ldr r6, [r6, #16]
	mov r0, r9
	ldr r4, [r0]
_08034E98:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r6
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #16]
	add r2, r2, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034EB4
	cmp r0, #10
	bne _08034E98
_08034EB4:
	str r2, [r7]
	ldr r0, [sp, #36]
	sub r0, r3, r0
	asr r0, r0, #1
_08034EBC:
	strh r0, [r5, #28]
	ldr r1, [sp, #48]
	cmp r1, #0
	beq _08034ED8
	ldr r2, [sp, #52]
	ldrh r0, [r2]
	strh r0, [r5, #6]
	ldr r1, [r5, #40]
	ldrh r0, [r2]
	add r0, r0, r1
	strh r0, [r2]
	b _08034EE4
_08034ED4:
	.4byte 0x040000D4
_08034ED8:
	ldr r1, [r5, #40]
	ldr r3, [sp, #52]
	ldrh r0, [r3]
	sub r0, r0, r1
	strh r0, [r3]
	strh r0, [r5, #6]
_08034EE4:
	ldrh r0, [r5, #6]
	lsr r0, r0, #5
	strh r0, [r5, #8]
	mov r6, r9
	ldr r0, [r6, #32]
	add r0, r0, #1
	str r0, [r6, #32]
_08034EF2:
	ldr r3, _08034FA4  @ =0xFFFF8001
	ldr r0, [sp, #40]
	cmp r0, r3
	bne _08034F10
	mov r2, #36
	ldrsh r1, [r5, r2]
	mov r6, r9
	ldrb r2, [r6, #20]
	mov r0, #3
	sub r0, r0, r2
	lsl r1, r1, r0
	mov r0, #240
	sub r0, r0, r1
	asr r0, r0, #1
	strh r0, [r5]
_08034F10:
	ldr r0, [sp, #44]
	cmp r0, r3
	bne _08034F22
	mov r2, #38
	ldrsh r1, [r5, r2]
	mov r0, #160
	sub r0, r0, r1
	asr r0, r0, #1
	strh r0, [r5, #2]
_08034F22:
	mov r0, #32
	mov r3, r10
	and r3, r3, r0
	cmp r3, #0
	beq _08034F88
	ldrh r4, [r5, #6]
	ldr r0, _08034FA8  @ =0x06010000
	add r4, r4, r0
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r2, [r5, #40]
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	add r1, r4, #0
	bl CpuSet
	ldr r1, [r5, #20]
	ldr r2, [r5, #24]
	mov r6, #36
	ldrsh r0, [r5, r6]
	str r0, [sp]
	mov r3, #28
	ldrsh r0, [r5, r3]
	str r0, [sp, #4]
	mov r6, #30
	ldrsh r0, [r5, r6]
	str r0, [sp, #8]
	ldr r0, _08034FAC  @ =gUnknown_03001770
	ldrb r3, [r0, #21]
	mov r6, #32
	ldrsh r0, [r5, r6]
	mul r0, r3, r0
	str r0, [sp, #12]
	ldr r0, [r5, #12]
	str r0, [sp, #16]
	add r0, r4, #0
	mov r3, #0
	bl sub_08034928
	ldr r1, [r5, #24]
	str r1, [r5, #20]
	strh r0, [r5, #28]
	lsr r0, r0, #16
	strh r0, [r5, #30]
_08034F88:
	mov r1, #2
	ldrsh r0, [r5, r1]
	mov r2, #38
	ldrsh r1, [r5, r2]
	add r0, r0, r1
	add sp, sp, #68
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08034FA4:
	.4byte 0xFFFF8001
_08034FA8:
	.4byte 0x06010000
_08034FAC:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_08034CCC

	
	THUMB_FUNC_START sub_08034FB0
sub_08034FB0: @ 0x08034FB0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	add r4, r0, #0
	str r1, [sp]
	mov r12, r2
	str r3, [sp, #4]
	mov r1, #32
	ldrsh r0, [r4, r1]
	mov r9, r0
	mov r0, #34
	ldrsh r2, [r4, r0]
	str r2, [sp, #8]
	ldr r0, _0803509C  @ =gUnknown_03001770
	ldrb r6, [r0, #20]
	ldrh r5, [r4, #8]
	sub r6, r6, #2
	ldrb r2, [r4, #4]
	ldr r0, [r4, #12]
	mov r1, #64
	and r0, r0, r1
	cmp r0, #0
	beq _08034FEE
	mov r1, #38
	ldrsh r0, [r4, r1]
	mov r1, r12
	sub r1, r1, r0
	mov r12, r1
_08034FEE:
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	strb r0, [r4, #5]
	ldrh r0, [r1]
	lsl r0, r0, #3
	ldr r1, _080350A0  @ =gOamData
	add r3, r0, r1
	mov r0, #0
	ldr r1, [sp, #8]
	cmp r0, r1
	bge _080350E8
	lsl r2, r2, #4
	str r2, [sp, #12]
	mov r2, #4
	lsl r2, r2, r6
	str r2, [sp, #16]
_0803500E:
	mov r4, #0
	add r0, r0, #1
	str r0, [sp, #20]
	mov r0, r12
	add r0, r0, #8
	str r0, [sp, #24]
	cmp r4, r9
	bge _080350DC
	sub r1, r6, #2
	mov r7, #63
	mov r2, #64
	mov r8, r2
	mov r0, #1
	and r1, r1, r0
	lsl r1, r1, #5
	mov r10, r1
_0803502E:
	mov r0, r12
	strb r0, [r3]
	lsl r1, r4, #3
	ldr r2, [sp]
	add r1, r2, r1
	ldr r2, _080350A4  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080350A8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r1, _080350AC  @ =0x000003FF
	add r0, r1, #0
	add r1, r5, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080350B0  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	mov r0, #15
	and r0, r0, r1
	ldr r2, [sp, #12]
	orr r0, r0, r2
	mov r1, #13
	neg r1, r1
	and r0, r0, r1
	strb r0, [r3, #5]
	ldrb r0, [r3, #1]
	sub r1, r1, #20
	and r1, r1, r0
	mov r2, r10
	orr r1, r1, r2
	strb r1, [r3, #1]
	mov r2, r9
	sub r0, r2, r4
	cmp r0, #3
	ble _080350B4
	and r1, r1, r7
	mov r0, r8
	orr r1, r1, r0
	strb r1, [r3, #1]
	ldrb r1, [r3, #3]
	add r0, r7, #0
	and r0, r0, r1
	mov r1, r8
	orr r0, r0, r1
	strb r0, [r3, #3]
	add r4, r4, #4
	ldr r2, [sp, #16]
	add r5, r5, r2
	b _080350D6
_0803509C:
	.4byte gUnknown_03001770
_080350A0:
	.4byte gOamData
_080350A4:
	.4byte 0x000001FF
_080350A8:
	.4byte 0xFFFFFE00
_080350AC:
	.4byte 0x000003FF
_080350B0:
	.4byte 0xFFFFFC00
_080350B4:
	cmp r0, #1
	ble _080350CE
	and r1, r1, r7
	mov r0, r8
	orr r1, r1, r0
	strb r1, [r3, #1]
	ldrb r0, [r3, #3]
	add r1, r7, #0
	and r1, r1, r0
	strb r1, [r3, #3]
	add r4, r4, #2
	mov r0, #2
	b _080350D2
_080350CE:
	add r4, r4, #1
	mov r0, #1
_080350D2:
	lsl r0, r0, r6
	add r5, r5, r0
_080350D6:
	add r3, r3, #8
	cmp r4, r9
	blt _0803502E
_080350DC:
	ldr r0, [sp, #20]
	ldr r1, [sp, #24]
	mov r12, r1
	ldr r2, [sp, #8]
	cmp r0, r2
	blt _0803500E
_080350E8:
	ldr r1, _08035104  @ =gOamData
	sub r0, r3, r1
	asr r0, r0, #3
	ldr r2, [sp, #4]
	strh r0, [r2]
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
_08035104:
	.4byte gOamData
	THUMB_FUNC_END sub_08034FB0

	THUMB_FUNC_START sub_08035108
sub_08035108: @ 0x08035108
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	mov r8, r0
	mov r7, #0
	ldr r1, _080351BC  @ =gUnknown_03001770
	ldr r4, [r1, #28]
	ldr r0, [r1, #32]
	cmp r7, r0
	bge _080351A4
	mov r9, r1
_08035122:
	mov r0, r9
	ldrb r1, [r0, #21]
	mov r2, #32
	ldrsh r0, [r4, r2]
	add r6, r1, #0
	mul r6, r0, r6
	ldrh r0, [r4, #6]
	ldr r3, _080351C0  @ =0x06010000
	add r5, r0, r3
	ldr r1, [r4, #20]
	ldr r0, [r4, #16]
	cmp r1, r0
	bne _0803515A
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r2, [r4, #40]
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	add r1, r5, #0
	bl CpuSet
_0803515A:
	ldr r1, [r4, #20]
	ldr r2, [r4, #24]
	mov r3, #36
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r3, #28
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r3, #30
	ldrsh r0, [r4, r3]
	str r0, [sp, #8]
	str r6, [sp, #12]
	ldr r0, [r4, #12]
	str r0, [sp, #16]
	add r0, r5, #0
	mov r3, #0
	bl sub_08034928
	ldr r1, [r4, #24]
	str r1, [r4, #20]
	strh r0, [r4, #28]
	lsr r0, r0, #16
	strh r0, [r4, #30]
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r3, #2
	ldrsh r2, [r4, r3]
	add r0, r4, #0
	mov r3, r8
	bl sub_08034FB0
	add r7, r7, #1
	add r4, r4, #44
	mov r1, r9
	ldr r0, [r1, #32]
	cmp r7, r0
	blt _08035122
_080351A4:
	ldr r1, _080351BC  @ =gUnknown_03001770
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1, #42]
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080351BC:
	.4byte gUnknown_03001770
_080351C0:
	.4byte 0x06010000
	THUMB_FUNC_END sub_08035108

	THUMB_FUNC_START sub_080351C4
sub_080351C4: @ 0x080351C4
	push {r4,r5,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r3, r2, #0
	ldr r0, _080351DC  @ =gUnknown_08B2AD88
	add r1, r4, #0
	add r2, r5, #0
	bl sub_080348C8
	pop {r4,r5}
	pop {r0}
	bx r0
_080351DC:
	.4byte gUnknown_08B2AD88
	THUMB_FUNC_END sub_080351C4

	THUMB_FUNC_START sub_080351E0
sub_080351E0: @ 0x080351E0
	ldr r1, _080351F8  @ =gUnknown_03001770
	ldr r0, [r1, #8]
	mov r2, #0
	strh r0, [r1, #24]
	ldr r0, [r1, #32]
	str r0, [r1, #36]
	str r2, [r1, #32]
	mov r0, #128
	lsl r0, r0, #8
	strh r0, [r1, #40]
	bx lr
	.byte 0x00
	.byte 0x00
_080351F8:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_080351E0

	THUMB_FUNC_START sub_080351FC
sub_080351FC: @ 0x080351FC
	push {r4,r5,lr}
	ldr r5, _08035214  @ =gUnknown_03001770
	mov r4, #44
	mul r4, r0, r4
	ldr r0, [r5, #28]
	add r0, r0, r4
	bl sub_08034FB0
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035214:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_080351FC

	THUMB_FUNC_START sub_08035218
sub_08035218: @ 0x08035218
	push {r4,r5,lr}
	add r5, r1, #0
	mov r3, #0
	add r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803524C
	cmp r0, #10
	beq _0803524C
	ldr r0, _08035258  @ =gUnknown_03001770
	ldr r4, [r0, #16]
	ldr r1, [r0]
_08035230:
	ldrb r0, [r2]
	lsl r0, r0, #1
	add r0, r0, r4
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r0, [r0, #16]
	add r3, r3, r0
	add r2, r2, #1
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803524C
	cmp r0, #10
	bne _08035230
_0803524C:
	str r3, [r5]
	add r0, r2, #0
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08035258:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_08035218

	THUMB_FUNC_START sub_0803525C
sub_0803525C: @ 0x0803525C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r8, r1
	mov r9, r2
	ldr r2, _080352F4  @ =gUnknown_03001770
	ldr r1, [r2]
	ldrb r6, [r1, #11]
	mov r5, #0
	str r5, [sp]
	add r1, r0, #0
	ldrb r0, [r1]
	mov r10, r2
	cmp r0, #0
	beq _080352D2
	mov r12, sp
	mov r7, r10
_08035284:
	mov r4, #0
	cmp r0, #0
	beq _080352AE
	cmp r0, #10
	beq _080352AE
	ldr r2, [r7, #16]
	ldr r3, [r7]
_08035292:
	ldrb r0, [r1]
	lsl r0, r0, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0, #16]
	add r4, r4, r0
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080352AE
	cmp r0, #10
	bne _08035292
_080352AE:
	mov r0, r12
	str r4, [r0]
	ldr r0, [sp]
	cmp r0, r5
	ble _080352BA
	add r5, r0, #0
_080352BA:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080352D2
	cmp r0, #10
	bne _080352CA
	ldr r0, [r7]
	ldrb r0, [r0, #11]
	add r6, r6, r0
_080352CA:
	add r1, r1, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _08035284
_080352D2:
	mov r0, r10
	ldrb r1, [r0, #20]
	mov r0, #3
	sub r0, r0, r1
	lsl r5, r5, r0
	mov r0, r8
	str r5, [r0]
	mov r0, r9
	str r6, [r0]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080352F4:
	.4byte gUnknown_03001770
	THUMB_FUNC_END sub_0803525C

	THUMB_FUNC_START sub_080352F8
sub_080352F8: @ 0x080352F8
	push {r4-r7,lr}
	sub sp, sp, #24
	add r4, r0, #0
	add r7, r1, #0
	ldr r0, _08035380  @ =gUnknown_03001770
	ldrb r1, [r0, #21]
	mov r2, #32
	ldrsh r0, [r4, r2]
	add r6, r1, #0
	mul r6, r0, r6
	ldrh r1, [r4, #6]
	ldr r0, _08035384  @ =0x06010000
	add r5, r1, r0
	ldr r1, [r4, #20]
	ldr r0, [r4, #16]
	cmp r1, r0
	bne _08035338
	add r1, sp, #20
	mov r0, #0
	strh r0, [r1]
	ldr r2, [r4, #40]
	lsr r0, r2, #31
	add r2, r2, r0
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r1, #0
	add r1, r5, #0
	bl CpuSet
_08035338:
	ldr r1, [r4, #20]
	ldr r2, [r4, #24]
	mov r3, #36
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r3, #28
	ldrsh r0, [r4, r3]
	str r0, [sp, #4]
	mov r3, #30
	ldrsh r0, [r4, r3]
	str r0, [sp, #8]
	str r6, [sp, #12]
	ldr r0, [r4, #12]
	str r0, [sp, #16]
	add r0, r5, #0
	mov r3, #0
	bl sub_08034928
	ldr r1, [r4, #24]
	str r1, [r4, #20]
	strh r0, [r4, #28]
	lsr r0, r0, #16
	strh r0, [r4, #30]
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r3, #2
	ldrsh r2, [r4, r3]
	add r0, r4, #0
	add r3, r7, #0
	bl sub_08034FB0
	add sp, sp, #24
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035380:
	.4byte gUnknown_03001770
_08035384:
	.4byte 0x06010000
	THUMB_FUNC_END sub_080352F8

	THUMB_FUNC_START expert_levels_init_callback
expert_levels_init_callback: @ 0x08035388
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, sp, #20
	ldr r0, _08035460  @ =0x030002D2
	mov r4, #0
	strh r4, [r0]
	mov r0, #0
	bl sub_08034898
	ldr r2, _08035464  @ =0x030002E8
	ldr r1, _08035468  @ =0x030002E9
	ldr r0, _0803546C  @ =0x030002EB
	strb r4, [r0]
	strb r4, [r1]
	strb r4, [r2]
	ldr r1, _08035470  @ =0x030002EA
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08035474  @ =0x030002EC
	ldr r0, _08035478  @ =gUnknown_085E1F2C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	ldr r2, _0803547C  @ =0x030002ED
	ldr r0, _08035480  @ =gUnknown_085E0AC4
	ldrb r1, [r0, #1]
	strb r1, [r2]
	ldr r1, _08035484  @ =0x030002EE
	add r0, r0, #37
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08035488  @ =0x030002EF
	ldr r0, _0803548C  @ =gUnknown_085C7A78
	ldrb r0, [r0, #1]
	strb r0, [r1]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r5, _08035490  @ =gExpertLevelMenuData
	str r5, [sp, #8]
	str r5, [sp, #12]
	mov r0, sp
	mov r1, #3
	bl sub_08032F24
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #234
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	add r0, sp, #16
	strh r4, [r0]
	ldr r1, [r5, #64]
	ldr r2, [r5, #68]
	sub r2, r2, r1
	lsr r2, r2, #1
	ldr r3, _08035494  @ =0x001FFFFF
	mov r8, r3
	and r2, r2, r3
	mov r6, #128
	lsl r6, r6, #17
	orr r2, r2, r6
	bl CpuSet
	mov r0, sp
	add r0, r0, #18
	strh r4, [r0]
	ldr r1, [r5, #68]
	ldr r2, [r5, #72]
	sub r2, r2, r1
	lsr r2, r2, #1
	mov r3, r8
	and r2, r2, r3
	orr r2, r2, r6
	bl CpuSet
	ldr r0, _08035498  @ =gBGLayerOffsets 
	strh r4, [r0]
	strh r4, [r0, #4]
	strh r4, [r0, #8]
	strh r4, [r0, #12]
	strh r4, [r0, #2]
	strh r4, [r0, #6]
	strh r4, [r0, #10]
	strh r4, [r0, #14]
	add r0, r5, #0
	bl sub_08029C9C
	mov r0, #2
	mov r1, #3
	bl sub_08032788
	bl sub_08071FE4
	cmp r0, #11
	beq _08035454
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08035454:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
_08035460:
	.4byte 0x030002D2
_08035464:
	.4byte 0x030002E8
_08035468:
	.4byte 0x030002E9
_0803546C:
	.4byte 0x030002EB
_08035470:
	.4byte 0x030002EA
_08035474:
	.4byte 0x030002EC
_08035478:
	.4byte gUnknown_085E1F2C
_0803547C:
	.4byte 0x030002ED
_08035480:
	.4byte gUnknown_085E0AC4
_08035484:
	.4byte 0x030002EE
_08035488:
	.4byte 0x030002EF
_0803548C:
	.4byte gUnknown_085C7A78
_08035490:
	.4byte gExpertLevelMenuData
_08035494:
	.4byte 0x001FFFFF
_08035498:
	.4byte gBGLayerOffsets 
	THUMB_FUNC_END expert_levels_init_callback

	THUMB_FUNC_START sub_0803549C
sub_0803549C: @ 0x0803549C
	push {r4-r7,lr}
	sub sp, sp, #12
	bl sub_08014C6C
	lsl r0, r0, #24
	lsr r4, r0, #24
	add r7, r4, #0
	ldr r0, _080354E4  @ =gUnknown_030012E8
	ldrh r3, [r0]
	mov r0, #32
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _080354EC
	ldr r1, _080354E8  @ =gAfterTutorialWorld
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bgt _080354C8
	b _08035664
_080354C8:
	sub r0, r0, #1
	cmp r4, r0
	bgt _080354D0
	b _08035664
_080354D0:
	sub r0, r2, #1
	strb r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _08035670
	.byte 0x00
	.byte 0x00
_080354E4:
	.4byte gUnknown_030012E8
_080354E8:
	.4byte gAfterTutorialWorld
_080354EC:
	mov r0, #16
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08035552
	ldr r3, _0803551C  @ =gAfterTutorialWorld
	ldrb r1, [r3]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #4
	bgt _0803552A
	add r0, r0, #1
	cmp r4, r0
	ble _08035520
	add r0, r1, #1
	strb r0, [r3]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	b _08035670
	.byte 0x00
	.byte 0x00
_0803551C:
	.4byte gAfterTutorialWorld
_08035520:
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	b _0803566E
_0803552A:
	cmp r4, #6
	bls _08035548
	ldr r0, _08035544  @ =gUnknown_03000B80
	mov r1, #3
	strb r1, [r0]
	strb r2, [r3]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	b _08035670
	.byte 0x00
	.byte 0x00
_08035544:
	.4byte gUnknown_03000B80
_08035548:
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	b _0803566E
_08035552:
	mov r0, #64
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _08035588
	ldr r2, _08035584  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r2, r0]
	sub r0, r0, #4
	cmp r0, #0
	bge _0803556C
	b _08035666
_0803556C:
	cmp r4, r0
	bgt _08035572
	b _08035666
_08035572:
	ldrb r0, [r2]
	sub r0, r0, #4
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _08035670
_08035584:
	.4byte gAfterTutorialWorld
_08035588:
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _080355EC
	ldr r3, _080355B8  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r3, r0]
	add r0, r0, #4
	cmp r0, #5
	bgt _080355C4
	cmp r4, r0
	ble _080355BC
	ldrb r0, [r3]
	add r0, r0, #4
	strb r0, [r3]
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	b _08035670
	.byte 0x00
	.byte 0x00
_080355B8:
	.4byte gAfterTutorialWorld
_080355BC:
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	b _0803566E
_080355C4:
	cmp r7, r0
	ble _080355E4
	ldr r1, _080355E0  @ =gUnknown_03000B80
	mov r0, #3
	strb r0, [r1]
	ldrb r0, [r3]
	sub r0, r0, #2
	strb r0, [r3]
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	b _08035670
	.byte 0x00
	.byte 0x00
_080355E0:
	.4byte gUnknown_03000B80
_080355E4:
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	b _0803566E
_080355EC:
	mov r4, #9
	and r4, r4, r3
	cmp r4, #0
	beq _0803567C
	bl sub_08014BD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08035664
	ldr r4, _08035650  @ =gAfterTutorialWorld
	ldrb r0, [r4]
	bl sub_08014C18
	lsl r0, r0, #24
	cmp r0, #0
	beq _08035664
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08035654  @ =gUnknown_03000B80
	mov r0, #2
	strb r0, [r1]
	ldr r0, _08035658  @ =gNextLevelID
	strb r5, [r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
	mov r1, #0
	bl sub_0800F6EC
	bl sub_08014A34
	ldr r1, _0803565C  @ =gLivesCount
	strb r0, [r1]
	ldr r0, _08035660  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _080356A8
	.byte 0x00
	.byte 0x00
_08035650:
	.4byte gAfterTutorialWorld
_08035654:
	.4byte gUnknown_03000B80
_08035658:
	.4byte gNextLevelID
_0803565C:
	.4byte gLivesCount
_08035660:
	.4byte gNextLevelInLevelTable
_08035664:
	mov r1, #0
_08035666:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
_0803566E:
	mov r0, #27
_08035670:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080356A8
_0803567C:
	mov r0, #2
	and r0, r0, r3
	cmp r0, #0
	beq _080356A8
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _080356B0  @ =gUnknown_03000B80
	mov r1, #2
	strb r1, [r0]
	ldr r0, _080356B4  @ =gNextLevelID
	strb r4, [r0]
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_080356A8:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_080356B0:
	.4byte gUnknown_03000B80
_080356B4:
	.4byte gNextLevelID
	THUMB_FUNC_END sub_0803549C

	THUMB_FUNC_START sub_080356B8
sub_080356B8: @ 0x080356B8
	push {r4-r6,lr}
	sub sp, sp, #12
	bl sub_08014C6C
	lsl r0, r0, #24
	lsr r3, r0, #24
	add r5, r3, #0
	ldr r0, _080356FC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08035720
	ldr r2, _08035700  @ =gAfterTutorialWorld
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _08035704
	add r0, r0, #5
	cmp r3, r0
	bgt _080356EA
	b _080358B4
_080356EA:
	sub r0, r1, #1
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _080358C0
_080356FC:
	.4byte gUnknown_030012E8
_08035700:
	.4byte gAfterTutorialWorld
_08035704:
	ldr r1, _0803571C  @ =gUnknown_03000B80
	mov r0, #2
	strb r0, [r1]
	mov r0, #5
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _080358C0
_0803571C:
	.4byte gUnknown_03000B80
_08035720:
	mov r0, #16
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _08035794
	ldr r5, _08035758  @ =gAfterTutorialWorld
	ldrb r1, [r5]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #4
	bgt _0803578A
	cmp r0, #2
	ble _08035766
	bl sub_08014CD4
	lsl r0, r0, #24
	cmp r0, #0
	beq _0803575C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _080358C0
_08035758:
	.4byte gAfterTutorialWorld
_0803575C:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _080358BE
_08035766:
	mov r0, #0
	ldrsb r0, [r5, r0]
	add r0, r0, #7
	cmp r3, r0
	ble _08035780
	add r0, r1, #1
	strb r0, [r5]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _080358C0
_08035780:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _080358BE
_0803578A:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _080358BE
_08035794:
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _080357F0
	ldr r3, _080357C4  @ =gAfterTutorialWorld
	mov r1, #0
	ldrsb r1, [r3, r1]
	sub r0, r1, #4
	cmp r0, #0
	blt _080357D2
	add r0, r1, #2
	cmp r5, r0
	ble _080357C8
	ldrb r0, [r3]
	sub r0, r0, #4
	strb r0, [r3]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	b _080358C0
_080357C4:
	.4byte gAfterTutorialWorld
_080357C8:
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	b _080358BE
_080357D2:
	ldr r1, _080357EC  @ =gUnknown_03000B80
	mov r0, #2
	strb r0, [r1]
	ldrb r0, [r3]
	add r0, r0, #2
	strb r0, [r3]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #23
	b _080358C0
	.byte 0x00
	.byte 0x00
_080357EC:
	.4byte gUnknown_03000B80
_080357F0:
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08035838
	ldr r5, _08035824  @ =gAfterTutorialWorld
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bgt _08035830
	bl sub_08014CD4
	lsl r0, r0, #24
	cmp r0, #0
	beq _08035828
	ldrb r0, [r5]
	add r0, r0, #4
	strb r0, [r5]
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	b _080358C0
	.byte 0x00
	.byte 0x00
_08035824:
	.4byte gAfterTutorialWorld
_08035828:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _080358BE
_08035830:
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	b _080358BE
_08035838:
	mov r4, #9
	and r4, r4, r1
	cmp r4, #0
	beq _080358CC
	bl sub_08014BD0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080358B4
	ldr r4, _080358A0  @ =gAfterTutorialWorld
	ldrb r0, [r4]
	add r0, r0, #6
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl sub_08014C18
	lsl r0, r0, #24
	cmp r0, #0
	beq _080358B4
	str r5, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _080358A4  @ =gUnknown_03000B80
	mov r0, #3
	strb r0, [r1]
	ldr r0, _080358A8  @ =gNextLevelID
	strb r5, [r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
	mov r1, #0
	bl sub_0800F6EC
	bl sub_08014A34
	ldr r1, _080358AC  @ =gLivesCount
	strb r0, [r1]
	ldr r0, _080358B0  @ =gNextLevelInLevelTable
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #13
	mov r1, #1
	bl sub_080070E8
	b _080358F8
_080358A0:
	.4byte gAfterTutorialWorld
_080358A4:
	.4byte gUnknown_03000B80
_080358A8:
	.4byte gNextLevelID
_080358AC:
	.4byte gLivesCount
_080358B0:
	.4byte gNextLevelInLevelTable
_080358B4:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
_080358BE:
	mov r0, #27
_080358C0:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080358F8
_080358CC:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _080358F8
	str r4, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _08035900  @ =gUnknown_03000B80
	mov r1, #3
	strb r1, [r0]
	ldr r0, _08035904  @ =gNextLevelID
	strb r4, [r0]
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
_080358F8:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
_08035900:
	.4byte gUnknown_03000B80
_08035904:
	.4byte gNextLevelID
	THUMB_FUNC_END sub_080356B8

	THUMB_FUNC_START expert_levels_main
expert_levels_main: @ 0x08035908
	push {r4,lr}
	bl sub_08029C20
	ldr r0, _08035940  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803591A
	bl sub_0801B310
_0803591A:
	bl sub_080331FC
	ldr r1, _08035944  @ =0x030002D2
	ldrh r0, [r1]
	add r0, r0, #80
	strh r0, [r1]
	ldr r1, _08035948  @ =gBGLayerOffsets 
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	ldr r0, _0803594C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08035950
	bl sub_0803549C
	b _08035958
_08035940:
	.4byte gUnknown_03000C28
_08035944:
	.4byte 0x030002D2
_08035948:
	.4byte gBGLayerOffsets 
_0803594C:
	.4byte gUnknown_03000B80
_08035950:
	cmp r0, #3
	bne _08035958
	bl sub_080356B8
_08035958:
	ldr r1, _08035A30  @ =0x030002E8
	ldr r2, _08035A34  @ =0x030002EC
	ldr r3, _08035A38  @ =gUnknown_085E1F2C
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0803598C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	blt _0803597C
	mov r0, #0
	strb r0, [r1]
_0803597C:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
_0803598C:
	ldr r1, _08035A3C  @ =0x030002EB
	ldr r2, _08035A40  @ =0x030002EF
	ldr r3, _08035A44  @ =gUnknown_085C7A78
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _080359C0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #18
	blt _080359B0
	mov r0, #0
	strb r0, [r1]
_080359B0:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
_080359C0:
	ldr r2, _08035A48  @ =0x030002E9
	ldr r3, _08035A4C  @ =0x030002ED
	ldr r1, _08035A50  @ =gUnknown_085E0AC4
	ldrb r0, [r3]
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	add r4, r1, #0
	cmp r0, #0
	bgt _080359F6
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	blt _080359E6
	mov r0, #0
	strb r0, [r2]
_080359E6:
	mov r0, #0
	ldrsb r0, [r2, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r4
	ldrb r0, [r1, #1]
	strb r0, [r3]
_080359F6:
	ldr r1, _08035A54  @ =0x030002EA
	ldr r2, _08035A58  @ =0x030002EE
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _08035A28
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	blt _08035A18
	mov r0, #0
	strb r0, [r1]
_08035A18:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r4
	ldrb r0, [r1, #1]
	strb r0, [r2]
_08035A28:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035A30:
	.4byte 0x030002E8
_08035A34:
	.4byte 0x030002EC
_08035A38:
	.4byte gUnknown_085E1F2C
_08035A3C:
	.4byte 0x030002EB
_08035A40:
	.4byte 0x030002EF
_08035A44:
	.4byte gUnknown_085C7A78
_08035A48:
	.4byte 0x030002E9
_08035A4C:
	.4byte 0x030002ED
_08035A50:
	.4byte gUnknown_085E0AC4
_08035A54:
	.4byte 0x030002EA
_08035A58:
	.4byte 0x030002EE
	THUMB_FUNC_END expert_levels_main

	THUMB_FUNC_START sub_08035A5C
sub_08035A5C: @ 0x08035A5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r4, [sp, #40]
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r7, r3, #16
	lsl r4, r4, #24
	lsr r4, r4, #24
	mov r10, r4
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	cmp r4, #0
	bne _08035A94
	b _08035BA0
_08035A94:
	mov r6, #0
	cmp r6, r9
	blt _08035A9C
	b _08035C82
_08035A9C:
	ldr r4, _08035B68  @ =0x040000D4
	ldr r5, _08035B6C  @ =0x030002D0
	ldr r0, _08035B70  @ =gOamData
	mov r8, r0
	ldr r1, _08035B74  @ =gUnknown_03001930
	mov r10, r1
_08035AA8:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08035B78  @ =gUnknown_085DEA9C
	add r0, r0, r1
	str r0, [r4]
	ldr r2, _08035B7C  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08035B80  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _08035B84  @ =0x84000010
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08035B88  @ =gUnknown_085DEA94
	str r0, [r4]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r4, #4]
	ldr r0, _08035B8C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r12, r3
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r1, r10
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r3, _08035B90  @ =0x000003FF
	and r0, r0, r3
	ldr r1, _08035B94  @ =0xFFFFFC00
	and r2, r2, r1
	orr r2, r2, r0
	mov r3, r12
	strh r2, [r3, #4]
	ldrh r3, [r5]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r2, r6, #3
	ldr r0, [sp, #4]
	sub r2, r0, r2
	ldr r1, _08035B98  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08035B9C  @ =0xFFFFFE00
	mov r12, r1
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	mov r1, r10
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08035B7C  @ =gUnknown_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r6, r6, #1
	cmp r6, r9
	blt _08035AA8
	b _08035C82
	.byte 0x00
	.byte 0x00
_08035B68:
	.4byte 0x040000D4
_08035B6C:
	.4byte 0x030002D0
_08035B70:
	.4byte gOamData
_08035B74:
	.4byte gUnknown_03001930
_08035B78:
	.4byte gUnknown_085DEA9C
_08035B7C:
	.4byte gUnknown_0300192C
_08035B80:
	.4byte 0x06010000
_08035B84:
	.4byte 0x84000010
_08035B88:
	.4byte gUnknown_085DEA94
_08035B8C:
	.4byte 0x84000002
_08035B90:
	.4byte 0x000003FF
_08035B94:
	.4byte 0xFFFFFC00
_08035B98:
	.4byte 0x000001FF
_08035B9C:
	.4byte 0xFFFFFE00
_08035BA0:
	mov r6, #0
	cmp r6, r9
	bge _08035C82
	ldr r5, _08035C94  @ =0x040000D4
	ldr r4, _08035C98  @ =0x030002D0
	ldr r3, _08035C9C  @ =gOamData
	mov r8, r3
_08035BAE:
	add r0, r7, #0
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08035CA0  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r5]
	ldr r1, _08035CA4  @ =gUnknown_0300192C
	ldrh r0, [r1]
	ldr r2, _08035CA8  @ =0x06010000
	add r0, r0, r2
	str r0, [r5, #4]
	ldr r0, _08035CAC  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08035CB0  @ =gUnknown_082EC748
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r8
	str r0, [r5, #4]
	ldr r0, _08035CB4  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r8
	mov r12, r3
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	ldr r3, _08035CB8  @ =gUnknown_03001930
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r1, _08035CBC  @ =0x000003FF
	and r0, r0, r1
	ldr r3, _08035CC0  @ =0xFFFFFC00
	and r2, r2, r3
	orr r2, r2, r0
	mov r0, r12
	strh r2, [r0, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r8
	lsl r2, r6, #3
	ldr r1, [sp, #4]
	sub r2, r1, r2
	ldr r1, _08035CC4  @ =0x000001FF
	add r0, r1, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08035CC8  @ =0xFFFFFE00
	mov r12, r1
	mov r1, r12
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r8
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r8
	mov r1, #9
	mov r3, r10
	sub r1, r1, r3
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	ldr r1, _08035CB8  @ =gUnknown_03001930
	ldrh r0, [r1]
	add r0, r0, #2
	strh r0, [r1]
	ldr r2, _08035CA4  @ =gUnknown_0300192C
	ldrh r0, [r2]
	add r0, r0, #64
	strh r0, [r2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r7, #0
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r7, r0, #16
	add r6, r6, #1
	cmp r6, r9
	blt _08035BAE
_08035C82:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08035C94:
	.4byte 0x040000D4
_08035C98:
	.4byte 0x030002D0
_08035C9C:
	.4byte gOamData
_08035CA0:
	.4byte gUnknown_082EC750
_08035CA4:
	.4byte gUnknown_0300192C
_08035CA8:
	.4byte 0x06010000
_08035CAC:
	.4byte 0x84000010
_08035CB0:
	.4byte gUnknown_082EC748
_08035CB4:
	.4byte 0x84000002
_08035CB8:
	.4byte gUnknown_03001930
_08035CBC:
	.4byte 0x000003FF
_08035CC0:
	.4byte 0xFFFFFC00
_08035CC4:
	.4byte 0x000001FF
_08035CC8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08035A5C

	THUMB_FUNC_START sub_08035CCC
sub_08035CCC: @ 0x08035CCC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	str r1, [sp]
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r9, r2
	lsl r3, r3, #16
	lsr r3, r3, #16
	mov r8, r3
	mov r1, r9
	sub r1, r1, #1
	lsl r1, r1, #3
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	cmp r0, r9
	bge _08035DE4
	ldr r5, _08035DF4  @ =0x040000D4
	ldr r4, _08035DF8  @ =0x030002D0
	ldr r6, _08035DFC  @ =gOamData
	ldr r1, _08035E00  @ =gUnknown_03001930
	mov r10, r1
_08035D0A:
	mov r0, r8
	mov r1, #10
	bl __umodsi3
	lsl r0, r0, #16
	lsr r0, r0, #10
	ldr r1, _08035E04  @ =gUnknown_082EC750
	add r0, r0, r1
	str r0, [r5]
	ldr r2, _08035E08  @ =gUnknown_0300192C
	ldrh r0, [r2]
	ldr r3, _08035E0C  @ =0x06010000
	add r0, r0, r3
	str r0, [r5, #4]
	ldr r0, _08035E10  @ =0x84000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _08035E14  @ =gUnknown_082EC748
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r5, #4]
	ldr r0, _08035E18  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldrh r2, [r3, #4]
	lsl r0, r2, #22
	lsr r0, r0, #22
	mov r7, r10
	ldrh r7, [r7]
	add r0, r0, r7
	ldr r1, _08035E1C  @ =0x000003FF
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	ldr r1, _08035E20  @ =0xFFFFFC00
	mov r12, r1
	mov r7, r12
	and r2, r2, r7
	orr r2, r2, r0
	strh r2, [r3, #4]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r6
	ldr r0, [sp, #8]
	lsl r2, r0, #3
	ldr r1, [sp, #4]
	sub r2, r1, r2
	ldr r7, _08035E24  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r0, [r3, #2]
	ldr r1, _08035E28  @ =0xFFFFFE00
	mov r12, r1
	mov r7, r12
	and r0, r0, r7
	orr r0, r0, r2
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r0, [r2, #5]
	mov r3, #13
	neg r3, r3
	add r1, r3, #0
	and r0, r0, r1
	strb r0, [r2, #5]
	mov r7, r10
	ldrh r0, [r7]
	add r0, r0, #2
	strh r0, [r7]
	ldr r1, _08035E08  @ =gUnknown_0300192C
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, r8
	mov r1, #10
	bl __udivsi3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, [sp, #8]
	add r2, r2, #1
	str r2, [sp, #8]
	cmp r2, r9
	blt _08035D0A
_08035DE4:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08035DF4:
	.4byte 0x040000D4
_08035DF8:
	.4byte 0x030002D0
_08035DFC:
	.4byte gOamData
_08035E00:
	.4byte gUnknown_03001930
_08035E04:
	.4byte gUnknown_082EC750
_08035E08:
	.4byte gUnknown_0300192C
_08035E0C:
	.4byte 0x06010000
_08035E10:
	.4byte 0x84000010
_08035E14:
	.4byte gUnknown_082EC748
_08035E18:
	.4byte 0x84000002
_08035E1C:
	.4byte 0x000003FF
_08035E20:
	.4byte 0xFFFFFC00
_08035E24:
	.4byte 0x000001FF
_08035E28:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08035CCC

	THUMB_FUNC_START sub_08035E2C
sub_08035E2C: @ 0x08035E2C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r3, r3, #16
	ldr r5, _08035F20  @ =0x040000D4
	ldr r4, [r0, #12]
	lsl r6, r1, #3
	mov r8, r6
	add r8, r8, r1
	mov r1, r8
	lsl r1, r1, #2
	mov r8, r1
	add r4, r4, r8
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r7, _08035F24  @ =gUnknown_0300192C
	ldrh r1, [r7]
	ldr r4, _08035F28  @ =0x06010000
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r4, _08035F2C  @ =0x030002D0
	mov r9, r4
	ldrh r1, [r4]
	lsl r1, r1, #3
	ldr r6, _08035F30  @ =gOamData
	mov r10, r6
	add r1, r1, r10
	str r1, [r5, #4]
	ldr r1, _08035F34  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r10
	ldr r1, _08035F38  @ =gUnknown_03001930
	mov r12, r1
	ldrh r1, [r1]
	ldr r4, _08035F3C  @ =0x000003FF
	and r4, r4, r1
	ldrh r6, [r5, #4]
	ldr r1, _08035F40  @ =0xFFFFFC00
	and r1, r1, r6
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r4, r9
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r10
	lsl r2, r2, #16
	asr r2, r2, #16
	ldr r1, [r0, #12]
	add r1, r1, r8
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r2, r1
	ldr r6, _08035F44  @ =0x000001FF
	add r1, r6, #0
	and r2, r2, r1
	ldrh r4, [r5, #2]
	ldr r1, _08035F48  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r5, #2]
	mov r1, r9
	ldrh r2, [r1]
	lsl r2, r2, #3
	add r2, r2, r10
	ldr r1, [r0, #12]
	add r8, r8, r1
	lsr r3, r3, #16
	mov r4, r8
	ldrb r4, [r4, #3]
	add r3, r3, r4
	strb r3, [r2]
	mov r6, r9
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r10
	ldrb r3, [r2, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r3
	strb r1, [r2, #5]
	ldrh r1, [r0, #6]
	mov r2, r12
	ldrh r2, [r2]
	add r1, r1, r2
	mov r3, r12
	strh r1, [r3]
	ldrh r0, [r0, #8]
	ldrh r4, [r7]
	add r0, r0, r4
	strh r0, [r7]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08035F20:
	.4byte 0x040000D4
_08035F24:
	.4byte gUnknown_0300192C
_08035F28:
	.4byte 0x06010000
_08035F2C:
	.4byte 0x030002D0
_08035F30:
	.4byte gOamData
_08035F34:
	.4byte 0x84000002
_08035F38:
	.4byte gUnknown_03001930
_08035F3C:
	.4byte 0x000003FF
_08035F40:
	.4byte 0xFFFFFC00
_08035F44:
	.4byte 0x000001FF
_08035F48:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08035E2C

	THUMB_FUNC_START sub_08035F4C
sub_08035F4C: @ 0x08035F4C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	str r3, [sp]
	ldr r3, [sp, #36]
	mov r10, r3
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r4, r10
	lsl r4, r4, #16
	mov r10, r4
	ldr r6, _08036058  @ =0x040000D4
	ldr r4, [r0, #20]
	str r4, [r6]
	ldr r3, _0803605C  @ =gUnknown_0300192C
	ldrh r4, [r3]
	ldr r5, _08036060  @ =0x06010000
	add r4, r4, r5
	str r4, [r6, #4]
	ldrh r4, [r0, #8]
	lsr r4, r4, #2
	mov r5, #132
	lsl r5, r5, #24
	orr r4, r4, r5
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r4, [r0, #16]
	str r4, [r6]
	ldr r4, _08036064  @ =0x030002D0
	mov r9, r4
	ldrh r4, [r4]
	lsl r4, r4, #3
	ldr r3, _08036068  @ =gOamData
	mov r12, r3
	add r4, r4, r12
	str r4, [r6, #4]
	ldr r4, _0803606C  @ =0x84000002
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	mov r4, r9
	ldrh r6, [r4]
	lsl r6, r6, #3
	add r6, r6, r12
	ldrh r3, [r6, #4]
	mov r8, r3
	mov r4, r8
	lsl r5, r4, #22
	ldr r7, _08036070  @ =gUnknown_03001930
	lsr r5, r5, #22
	ldrh r3, [r7]
	add r5, r5, r3
	ldr r4, _08036074  @ =0x000003FF
	and r5, r5, r4
	ldr r4, _08036078  @ =0xFFFFFC00
	mov r3, r8
	and r4, r4, r3
	orr r4, r4, r5
	strh r4, [r6, #4]
	mov r4, r9
	ldrh r6, [r4]
	lsl r6, r6, #3
	add r6, r6, r12
	ldr r4, [sp]
	lsl r3, r4, #16
	asr r3, r3, #16
	ldr r4, [r0, #12]
	lsl r5, r1, #3
	add r5, r5, r1
	lsl r5, r5, #2
	add r4, r5, r4
	mov r1, #2
	ldrsb r1, [r4, r1]
	add r3, r3, r1
	ldr r4, _0803607C  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r6, #2]
	ldr r1, _08036080  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r6, #2]
	mov r1, r9
	ldrh r3, [r1]
	lsl r3, r3, #3
	add r3, r3, r12
	ldr r1, [r0, #12]
	add r5, r5, r1
	mov r4, r10
	lsr r4, r4, #16
	mov r10, r4
	ldrb r5, [r5, #3]
	add r10, r10, r5
	mov r1, r10
	strb r1, [r3]
	mov r4, r9
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r12
	mov r1, #3
	and r2, r2, r1
	lsl r2, r2, #2
	ldrb r4, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	ldrh r2, [r7]
	add r1, r1, r2
	strh r1, [r7]
	ldrh r0, [r0, #8]
	ldr r3, _0803605C  @ =gUnknown_0300192C
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r4, _0803605C  @ =gUnknown_0300192C
	strh r0, [r4]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08036058:
	.4byte 0x040000D4
_0803605C:
	.4byte gUnknown_0300192C
_08036060:
	.4byte 0x06010000
_08036064:
	.4byte 0x030002D0
_08036068:
	.4byte gOamData
_0803606C:
	.4byte 0x84000002
_08036070:
	.4byte gUnknown_03001930
_08036074:
	.4byte 0x000003FF
_08036078:
	.4byte 0xFFFFFC00
_0803607C:
	.4byte 0x000001FF
_08036080:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08035F4C

	THUMB_FUNC_START sub_08036084
sub_08036084: @ 0x08036084
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	str r3, [sp]
	ldr r3, [sp, #36]
	mov r10, r3
	lsl r1, r1, #24
	lsr r1, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r4, r10
	lsl r4, r4, #16
	mov r10, r4
	ldr r5, _080361A0  @ =0x040000D4
	ldr r4, [r0, #12]
	lsl r6, r1, #3
	add r6, r6, r1
	lsl r6, r6, #2
	add r4, r6, r4
	ldrb r4, [r4]
	ldrh r1, [r0, #4]
	mul r4, r1, r4
	lsl r4, r4, #2
	ldr r1, [r0, #20]
	add r1, r1, r4
	str r1, [r5]
	ldr r3, _080361A4  @ =gUnknown_0300192C
	ldrh r1, [r3]
	ldr r4, _080361A8  @ =0x06010000
	add r1, r1, r4
	str r1, [r5, #4]
	ldrh r1, [r0, #8]
	lsr r1, r1, #2
	mov r4, #132
	lsl r4, r4, #24
	orr r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldr r1, [r0, #16]
	str r1, [r5]
	ldr r4, _080361AC  @ =0x030002D0
	mov r9, r4
	ldrh r1, [r4]
	lsl r1, r1, #3
	ldr r3, _080361B0  @ =gOamData
	mov r12, r3
	add r1, r1, r12
	str r1, [r5, #4]
	ldr r1, _080361B4  @ =0x84000002
	str r1, [r5, #8]
	ldr r1, [r5, #8]
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r12
	ldrh r4, [r5, #4]
	mov r8, r4
	mov r1, r8
	lsl r4, r1, #22
	ldr r7, _080361B8  @ =gUnknown_03001930
	lsr r4, r4, #22
	ldrh r3, [r7]
	add r4, r4, r3
	ldr r3, _080361BC  @ =0x000003FF
	add r1, r3, #0
	and r4, r4, r1
	ldr r1, _080361C0  @ =0xFFFFFC00
	mov r3, r8
	and r1, r1, r3
	orr r1, r1, r4
	strh r1, [r5, #4]
	mov r4, r9
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r12
	ldr r1, [sp]
	lsl r3, r1, #16
	asr r3, r3, #16
	ldr r1, [r0, #12]
	add r1, r6, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r3, r3, r1
	ldr r4, _080361C4  @ =0x000001FF
	add r1, r4, #0
	and r3, r3, r1
	ldrh r4, [r5, #2]
	ldr r1, _080361C8  @ =0xFFFFFE00
	and r1, r1, r4
	orr r1, r1, r3
	strh r1, [r5, #2]
	mov r1, r9
	ldrh r3, [r1]
	lsl r3, r3, #3
	add r3, r3, r12
	ldr r1, [r0, #12]
	add r6, r6, r1
	mov r4, r10
	lsr r4, r4, #16
	mov r10, r4
	ldrb r6, [r6, #3]
	add r10, r10, r6
	mov r1, r10
	strb r1, [r3]
	mov r4, r9
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r12
	mov r1, #3
	and r2, r2, r1
	lsl r2, r2, #2
	ldrb r4, [r3, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r4
	orr r1, r1, r2
	strb r1, [r3, #5]
	ldrh r1, [r0, #6]
	ldrh r2, [r7]
	add r1, r1, r2
	strh r1, [r7]
	ldrh r0, [r0, #8]
	ldr r3, _080361A4  @ =gUnknown_0300192C
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r4, _080361A4  @ =gUnknown_0300192C
	strh r0, [r4]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080361A0:
	.4byte 0x040000D4
_080361A4:
	.4byte gUnknown_0300192C
_080361A8:
	.4byte 0x06010000
_080361AC:
	.4byte 0x030002D0
_080361B0:
	.4byte gOamData
_080361B4:
	.4byte 0x84000002
_080361B8:
	.4byte gUnknown_03001930
_080361BC:
	.4byte 0x000003FF
_080361C0:
	.4byte 0xFFFFFC00
_080361C4:
	.4byte 0x000001FF
_080361C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08036084

	THUMB_FUNC_START sub_080361CC
sub_080361CC: @ 0x080361CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r6, [sp, #32]
	ldr r4, [sp, #36]
	mov r9, r4
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r7, r9
	lsl r7, r7, #16
	mov r9, r7
	ldr r5, _080362A4  @ =0x040000D4
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _080362A8  @ =0x030002D0
	mov r10, r4
	ldrh r4, [r4]
	lsl r4, r4, #3
	ldr r7, _080362AC  @ =gOamData
	mov r12, r7
	add r4, r4, r12
	str r4, [r5, #4]
	ldr r4, _080362B0  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r4, r10
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r12
	ldrh r7, [r5, #4]
	mov r8, r7
	mov r7, r8
	lsl r4, r7, #22
	lsr r4, r4, #22
	add r1, r1, r4
	ldr r7, _080362B4  @ =0x000003FF
	add r4, r7, #0
	and r1, r1, r4
	ldr r4, _080362B8  @ =0xFFFFFC00
	mov r7, r8
	and r4, r4, r7
	orr r4, r4, r1
	strh r4, [r5, #4]
	mov r1, r10
	ldrh r5, [r1]
	lsl r5, r5, #3
	add r5, r5, r12
	lsl r6, r6, #16
	asr r6, r6, #16
	ldr r1, [r0, #12]
	lsl r4, r2, #3
	add r4, r4, r2
	lsl r4, r4, #2
	add r1, r4, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r6, r6, r1
	ldr r2, _080362BC  @ =0x000001FF
	add r1, r2, #0
	and r6, r6, r1
	ldrh r2, [r5, #2]
	ldr r1, _080362C0  @ =0xFFFFFE00
	and r1, r1, r2
	orr r1, r1, r6
	strh r1, [r5, #2]
	mov r7, r10
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [r0, #12]
	add r4, r4, r0
	mov r0, r9
	lsr r0, r0, #16
	mov r9, r0
	ldrb r4, [r4, #3]
	add r9, r9, r4
	mov r2, r9
	strb r2, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	mov r0, #3
	and r3, r3, r0
	lsl r3, r3, #2
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080362A4:
	.4byte 0x040000D4
_080362A8:
	.4byte 0x030002D0
_080362AC:
	.4byte gOamData
_080362B0:
	.4byte 0x84000002
_080362B4:
	.4byte 0x000003FF
_080362B8:
	.4byte 0xFFFFFC00
_080362BC:
	.4byte 0x000001FF
_080362C0:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080361CC

	THUMB_FUNC_START sub_080362C4
sub_080362C4: @ 0x080362C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, [sp, #32]
	mov r8, r4
	ldr r6, [sp, #36]
	mov r10, r6
	lsl r1, r1, #16
	lsr r1, r1, #16
	lsl r2, r2, #24
	lsr r2, r2, #24
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r7, r10
	lsl r7, r7, #16
	mov r10, r7
	ldr r5, _080363B8  @ =0x040000D4
	ldr r4, [r0, #16]
	str r4, [r5]
	ldr r4, _080363BC  @ =0x030002D0
	mov r9, r4
	ldrh r4, [r4]
	lsl r4, r4, #3
	ldr r6, _080363C0  @ =gOamData
	mov r12, r6
	add r4, r4, r12
	str r4, [r5, #4]
	ldr r4, _080363C4  @ =0x84000002
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	mov r7, r9
	ldrh r5, [r7]
	lsl r5, r5, #3
	add r5, r5, r12
	ldrh r6, [r5, #4]
	lsl r4, r6, #22
	lsr r4, r4, #22
	add r1, r1, r4
	ldr r7, _080363C8  @ =0x000003FF
	add r4, r7, #0
	and r1, r1, r4
	ldr r4, _080363CC  @ =0xFFFFFC00
	and r4, r4, r6
	orr r4, r4, r1
	strh r4, [r5, #4]
	mov r1, r9
	ldrh r5, [r1]
	lsl r5, r5, #3
	add r5, r5, r12
	ldrb r6, [r5, #5]
	lsr r4, r6, #4
	add r4, r4, #1
	lsl r4, r4, #4
	mov r1, #15
	and r1, r1, r6
	orr r1, r1, r4
	strb r1, [r5, #5]
	mov r4, r9
	ldrh r5, [r4]
	lsl r5, r5, #3
	add r5, r5, r12
	mov r6, r8
	lsl r6, r6, #16
	asr r6, r6, #16
	mov r8, r6
	ldr r1, [r0, #12]
	lsl r4, r2, #3
	add r4, r4, r2
	lsl r4, r4, #2
	add r1, r4, r1
	ldrb r1, [r1, #2]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r8, r8, r1
	ldr r7, _080363D0  @ =0x000001FF
	add r1, r7, #0
	mov r2, r8
	and r2, r2, r1
	mov r8, r2
	ldrh r2, [r5, #2]
	ldr r1, _080363D4  @ =0xFFFFFE00
	and r1, r1, r2
	mov r6, r8
	orr r1, r1, r6
	strh r1, [r5, #2]
	mov r7, r9
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	ldr r0, [r0, #12]
	add r4, r4, r0
	mov r0, r10
	lsr r0, r0, #16
	mov r10, r0
	ldrb r4, [r4, #3]
	add r10, r10, r4
	mov r2, r10
	strb r2, [r1]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r12
	mov r0, #3
	and r3, r3, r0
	lsl r3, r3, #2
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080363B8:
	.4byte 0x040000D4
_080363BC:
	.4byte 0x030002D0
_080363C0:
	.4byte gOamData
_080363C4:
	.4byte 0x84000002
_080363C8:
	.4byte 0x000003FF
_080363CC:
	.4byte 0xFFFFFC00
_080363D0:
	.4byte 0x000001FF
_080363D4:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080362C4

	THUMB_FUNC_START sub_080363D8
sub_080363D8: @ 0x080363D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	lsl r1, r1, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	lsr r7, r1, #24
	lsl r0, r0, #24
	asr r5, r1, #24
	cmp r1, r0
	bne _08036498
	mov r0, #64
	and r0, r0, r6
	cmp r0, #0
	beq _08036498
	ldr r0, _08036474  @ =gUnknown_080A8290
	ldr r1, _08036478  @ =0x030002DA
	ldrh r1, [r1]
	ldr r2, _0803647C  @ =0x030002E9
	mov r8, r2
	ldrb r2, [r2]
	ldr r4, _08036480  @ =gUnknown_080A7DF8
	lsl r5, r5, #3
	add r6, r5, r4
	ldr r3, [r6]
	add r3, r3, #1
	lsl r3, r3, #16
	asr r3, r3, #16
	str r3, [sp]
	add r4, r4, #4
	add r5, r5, r4
	ldr r3, [r5]
	add r3, r3, #17
	lsl r3, r3, #16
	asr r3, r3, #16
	str r3, [sp, #4]
	mov r3, #1
	bl sub_080361CC
	ldr r0, _08036484  @ =gUnknown_080A82A8
	ldr r1, _08036488  @ =0x030002DC
	ldrh r1, [r1]
	ldr r2, _0803648C  @ =0x030002EA
	ldrb r2, [r2]
	ldr r3, [r6]
	add r3, r3, #10
	lsl r3, r3, #16
	asr r3, r3, #16
	str r3, [sp]
	ldr r3, [r5]
	add r3, r3, #17
	lsl r3, r3, #16
	asr r3, r3, #16
	str r3, [sp, #4]
	mov r3, #1
	bl sub_080361CC
	ldr r0, _08036490  @ =gUnknown_080A82C0
	ldr r1, _08036494  @ =0x030002DE
	ldrh r1, [r1]
	mov r3, r8
	ldrb r2, [r3]
	ldr r3, [r6]
	add r3, r3, #19
	lsl r3, r3, #16
	asr r3, r3, #16
	str r3, [sp]
	ldr r3, [r5]
	add r3, r3, #17
	lsl r3, r3, #16
	asr r3, r3, #16
	str r3, [sp, #4]
	mov r3, #1
	bl sub_080361CC
	b _0803653A
	.byte 0x00
	.byte 0x00
_08036474:
	.4byte gUnknown_080A8290
_08036478:
	.4byte 0x030002DA
_0803647C:
	.4byte 0x030002E9
_08036480:
	.4byte gUnknown_080A7DF8
_08036484:
	.4byte gUnknown_080A82A8
_08036488:
	.4byte 0x030002DC
_0803648C:
	.4byte 0x030002EA
_08036490:
	.4byte gUnknown_080A82C0
_08036494:
	.4byte 0x030002DE
_08036498:
	mov r0, #1
	and r0, r0, r6
	cmp r0, #0
	beq _080364CE
	ldr r0, _08036548  @ =gUnknown_080A8248
	ldr r1, _0803654C  @ =0x030002D4
	ldrh r1, [r1]
	ldr r4, _08036550  @ =gUnknown_080A7DF8
	lsl r3, r7, #24
	asr r3, r3, #21
	add r2, r3, r4
	ldr r2, [r2]
	add r2, r2, #1
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	add r4, r4, #4
	add r3, r3, r4
	ldr r2, [r3]
	add r2, r2, #17
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp, #4]
	mov r2, #0
	mov r3, #0
	bl sub_080362C4
_080364CE:
	mov r0, #2
	and r0, r0, r6
	cmp r0, #0
	beq _08036504
	ldr r0, _08036554  @ =gUnknown_080A8260
	ldr r1, _08036558  @ =0x030002D6
	ldrh r1, [r1]
	ldr r4, _08036550  @ =gUnknown_080A7DF8
	lsl r3, r7, #24
	asr r3, r3, #21
	add r2, r3, r4
	ldr r2, [r2]
	add r2, r2, #10
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	add r4, r4, #4
	add r3, r3, r4
	ldr r2, [r3]
	add r2, r2, #17
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp, #4]
	mov r2, #0
	mov r3, #0
	bl sub_080362C4
_08036504:
	mov r0, #4
	and r0, r0, r6
	cmp r0, #0
	beq _0803653A
	ldr r0, _0803655C  @ =gUnknown_080A8278
	ldr r1, _08036560  @ =0x030002D8
	ldrh r1, [r1]
	ldr r4, _08036550  @ =gUnknown_080A7DF8
	lsl r3, r7, #24
	asr r3, r3, #21
	add r2, r3, r4
	ldr r2, [r2]
	add r2, r2, #19
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp]
	add r4, r4, #4
	add r3, r3, r4
	ldr r2, [r3]
	add r2, r2, #17
	lsl r2, r2, #16
	asr r2, r2, #16
	str r2, [sp, #4]
	mov r2, #0
	mov r3, #0
	bl sub_080362C4
_0803653A:
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036548:
	.4byte gUnknown_080A8248
_0803654C:
	.4byte 0x030002D4
_08036550:
	.4byte gUnknown_080A7DF8
_08036554:
	.4byte gUnknown_080A8260
_08036558:
	.4byte 0x030002D6
_0803655C:
	.4byte gUnknown_080A8278
_08036560:
	.4byte 0x030002D8
	THUMB_FUNC_END sub_080363D8

	THUMB_FUNC_START sub_08036564
sub_08036564: @ 0x08036564
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsl r0, r0, #24
	lsr r4, r0, #24
	ldr r0, _08036688  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _08036592
	ldr r2, _0803668C  @ =gUnknown_085C2F90
	ldr r0, _08036690  @ =0x030002EB
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r0, [r0]
	bl sub_0801B2CC
_08036592:
	ldr r2, _08036694  @ =0x040000D4
	ldr r3, _0803668C  @ =gUnknown_085C2F90
	ldr r0, _08036690  @ =0x030002EB
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08036698  @ =gUnknown_085C3220
	add r0, r0, r1
	str r0, [r2]
	ldr r0, _0803669C  @ =gUnknown_0300192C
	mov r12, r0
	ldrh r0, [r0]
	ldr r1, _080366A0  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080366A4  @ =0x84000200
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080366A8  @ =gUnknown_085C3218
	str r0, [r2]
	ldr r1, _080366AC  @ =0x030002D0
	mov r8, r1
	ldrh r0, [r1]
	lsl r0, r0, #3
	ldr r5, _080366B0  @ =gOamData
	mov r9, r5
	add r0, r0, r9
	str r0, [r2, #4]
	ldr r0, _080366B4  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r1]
	lsl r2, r2, #3
	add r2, r2, r9
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	ldr r0, _080366B8  @ =gUnknown_03001930
	mov r10, r0
	lsr r1, r1, #22
	ldrh r5, [r0]
	add r1, r1, r5
	ldr r5, _080366BC  @ =0x000003FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _080366C0  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	mov r0, r8
	ldrh r1, [r0]
	lsl r1, r1, #3
	add r1, r1, r9
	ldrb r2, [r1, #1]
	mov r5, #13
	neg r5, r5
	add r0, r5, #0
	and r0, r0, r2
	mov r7, #4
	orr r0, r0, r7
	strb r0, [r1, #1]
	mov r1, r8
	ldrh r3, [r1]
	lsl r3, r3, #3
	add r3, r3, r9
	ldr r6, _080366C4  @ =gUnknown_080A7D98
	lsl r4, r4, #24
	asr r4, r4, #21
	add r0, r4, r6
	ldr r1, [r0]
	sub r1, r1, #8
	ldr r2, _080366C8  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080366CC  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r0, r8
	ldrh r1, [r0]
	lsl r1, r1, #3
	add r1, r1, r9
	add r6, r6, #4
	add r4, r4, r6
	ldr r0, [r4]
	sub r0, r0, #8
	strb r0, [r1]
	mov r1, r8
	ldrh r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r9
	ldrb r1, [r0, #5]
	and r5, r5, r1
	orr r5, r5, r7
	strb r5, [r0, #5]
	mov r2, r8
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	mov r5, r10
	ldrh r0, [r5]
	add r0, r0, #64
	strh r0, [r5]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	mov r2, r12
	ldrh r2, [r2]
	add r0, r0, r2
	mov r5, r12
	strh r0, [r5]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08036688:
	.4byte gUnknown_03000C28
_0803668C:
	.4byte gUnknown_085C2F90
_08036690:
	.4byte 0x030002EB
_08036694:
	.4byte 0x040000D4
_08036698:
	.4byte gUnknown_085C3220
_0803669C:
	.4byte gUnknown_0300192C
_080366A0:
	.4byte 0x06010000
_080366A4:
	.4byte 0x84000200
_080366A8:
	.4byte gUnknown_085C3218
_080366AC:
	.4byte 0x030002D0
_080366B0:
	.4byte gOamData
_080366B4:
	.4byte 0x84000002
_080366B8:
	.4byte gUnknown_03001930
_080366BC:
	.4byte 0x000003FF
_080366C0:
	.4byte 0xFFFFFC00
_080366C4:
	.4byte gUnknown_080A7D98
_080366C8:
	.4byte 0x000001FF
_080366CC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08036564

	THUMB_FUNC_START sub_080366D0
sub_080366D0: @ 0x080366D0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r2, _0803678C  @ =0x040000D4
	ldr r0, _08036790  @ =gUnknown_085D0900
	str r0, [r2]
	ldr r0, _08036794  @ =gUnknown_0300192C
	mov r8, r0
	ldrh r0, [r0]
	ldr r1, _08036798  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0803679C  @ =0x84000040
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _080367A0  @ =gUnknown_085D08F8
	str r0, [r2]
	ldr r3, _080367A4  @ =0x030002D0
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r5, _080367A8  @ =gOamData
	add r0, r0, r5
	str r0, [r2, #4]
	ldr r0, _080367AC  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r3]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r4, [r2, #4]
	lsl r1, r4, #22
	ldr r6, _080367B0  @ =gUnknown_03001930
	lsr r1, r1, #22
	ldrh r7, [r6]
	add r1, r1, r7
	ldr r7, _080367B4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _080367B8  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r3]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r1, [r2, #2]
	ldr r0, _080367BC  @ =0xFFFFFE00
	and r0, r0, r1
	mov r1, #26
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, #134
	strb r1, [r0]
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #8
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	mov r2, r8
	ldrh r2, [r2]
	add r0, r0, r2
	mov r7, r8
	strh r0, [r7]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	bl sub_08014A34
	add r3, r0, #0
	lsl r3, r3, #24
	asr r3, r3, #8
	lsr r3, r3, #16
	mov r0, #50
	mov r1, #139
	mov r2, #2
	bl sub_08035CCC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0803678C:
	.4byte 0x040000D4
_08036790:
	.4byte gUnknown_085D0900
_08036794:
	.4byte gUnknown_0300192C
_08036798:
	.4byte 0x06010000
_0803679C:
	.4byte 0x84000040
_080367A0:
	.4byte gUnknown_085D08F8
_080367A4:
	.4byte 0x030002D0
_080367A8:
	.4byte gOamData
_080367AC:
	.4byte 0x84000002
_080367B0:
	.4byte gUnknown_03001930
_080367B4:
	.4byte 0x000003FF
_080367B8:
	.4byte 0xFFFFFC00
_080367BC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080366D0

	THUMB_FUNC_START sub_080367C0
sub_080367C0: @ 0x080367C0
	push {r4,r5,lr}
	sub sp, sp, #8
	ldr r0, _08036804  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08036810
	ldr r5, _08036808  @ =gAfterTutorialWorld
	ldrb r1, [r5]
	ldr r4, _0803680C  @ =gNextLevelID
	ldrb r2, [r4]
	mov r0, #2
	add r3, sp, #4
	bl sub_0800FE2C
	ldrb r0, [r5]
	ldrb r1, [r4]
	mov r2, #2
	bl sub_0801095C
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, sp, #4
	ldrb r0, [r0]
	lsr r0, r0, #7
	str r0, [sp]
	mov r0, #168
	mov r1, #139
	mov r2, #6
	bl sub_08035A5C
	b _08036846
_08036804:
	.4byte gUnknown_03000B80
_08036808:
	.4byte gAfterTutorialWorld
_0803680C:
	.4byte gNextLevelID
_08036810:
	cmp r0, #3
	bne _08036846
	ldr r5, _08036850  @ =gAfterTutorialWorld
	ldrb r1, [r5]
	ldr r4, _08036854  @ =gNextLevelID
	ldrb r2, [r4]
	mov r0, #3
	add r3, sp, #4
	bl sub_0800FE2C
	ldrb r0, [r5]
	ldrb r1, [r4]
	mov r2, #3
	bl sub_0801095C
	add r3, r0, #0
	lsl r3, r3, #16
	lsr r3, r3, #16
	add r0, sp, #4
	ldrb r0, [r0]
	lsr r0, r0, #7
	str r0, [sp]
	mov r0, #168
	mov r1, #139
	mov r2, #6
	bl sub_08035A5C
_08036846:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036850:
	.4byte gAfterTutorialWorld
_08036854:
	.4byte gNextLevelID
	THUMB_FUNC_END sub_080367C0

	THUMB_FUNC_START sub_08036858
sub_08036858: @ 0x08036858
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	bl sub_08014C6C
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r10, r0
	mov r6, #0
	mov r1, r8
	lsl r0, r1, #1
	add r0, r0, r8
	lsl r0, r0, #3
	str r0, [sp, #8]
	ldr r2, _080368CC  @ =gUnknown_080A8548
	add r7, r0, r2
_08036884:
	cmp r10, r6
	bls _08036924
	cmp r8, r6
	beq _08036928
	mov r2, #1
	neg r2, r2
	add r2, r2, r10
	mov r9, r2
	cmp r6, r9
	bne _080368D8
	lsl r5, r2, #1
	add r4, r5, r2
	lsl r4, r4, #3
	ldr r0, _080368D0  @ =gUnknown_080A8128
	add r0, r4, r0
	ldr r1, _080368CC  @ =gUnknown_080A8548
	add r4, r4, r1
	mov r2, #0
	ldrsh r3, [r4, r2]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _080368D4  @ =0x030002E2
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _080368CC  @ =gUnknown_080A8548
	b _0803690A
_080368CC:
	.4byte gUnknown_080A8548
_080368D0:
	.4byte gUnknown_080A8128
_080368D4:
	.4byte 0x030002E2
_080368D8:
	lsl r5, r6, #1
	add r4, r5, r6
	lsl r4, r4, #3
	ldr r1, _08036914  @ =gUnknown_080A8008
	add r0, r4, r1
	ldr r2, _08036918  @ =gUnknown_080A8548
	add r4, r4, r2
	mov r1, #0
	ldrsh r3, [r4, r1]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _0803691C  @ =0x030002E0
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036920  @ =gUnknown_080A8428
_0803690A:
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	b _080369B6
_08036914:
	.4byte gUnknown_080A8008
_08036918:
	.4byte gUnknown_080A8548
_0803691C:
	.4byte 0x030002E0
_08036920:
	.4byte gUnknown_080A8428
_08036924:
	cmp r8, r6
	bne _08036974
_08036928:
	mov r0, #0
	ldrsh r3, [r7, r0]
	mov r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r1, _08036968  @ =gUnknown_080A8008
	add r0, r2, r1
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _0803696C  @ =0x030002E0
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r7, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r7, r2]
	str r0, [sp, #4]
	ldr r0, _08036970  @ =gUnknown_080A8428
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	mov r0, #1
	neg r0, r0
	add r0, r0, r10
	mov r9, r0
	mov r1, r8
	lsl r5, r1, #1
	b _080369B6
_08036968:
	.4byte gUnknown_080A8008
_0803696C:
	.4byte 0x030002E0
_08036970:
	.4byte gUnknown_080A8428
_08036974:
	lsl r5, r6, #1
	add r4, r5, r6
	lsl r4, r4, #3
	ldr r0, _08036A08  @ =gUnknown_080A7EE8
	add r0, r4, r0
	ldr r2, _08036A0C  @ =gUnknown_080A8548
	add r4, r4, r2
	mov r1, #0
	ldrsh r3, [r4, r1]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036A10  @ =0x030002E4
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036A14  @ =gUnknown_080A8308
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	mov r0, #1
	neg r0, r0
	add r0, r0, r10
	mov r9, r0
_080369B6:
	add r0, r5, r6
	lsl r0, r0, #3
	ldr r1, _08036A0C  @ =gUnknown_080A8548
	add r0, r0, r1
	ldrh r3, [r0]
	add r3, r3, #1
	lsl r3, r3, #16
	asr r3, r3, #16
	ldrh r0, [r0, #2]
	add r0, r0, #2
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp]
	ldr r0, _08036A18  @ =gUnknown_080A7ED0
	add r1, r6, #0
	mov r2, #1
	bl sub_08036084
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #5
	bhi _080369E6
	b _08036884
_080369E6:
	cmp r6, #9
	bls _080369EC
	b _08036B62
_080369EC:
	mov r2, r8
	lsl r0, r2, #1
	add r0, r0, r8
	lsl r0, r0, #3
	str r0, [sp, #12]
	ldr r1, _08036A0C  @ =gUnknown_080A8548
	add r7, r0, r1
_080369FA:
	cmp r10, r6
	bls _08036AB0
	cmp r8, r6
	bne _08036A1C
	mov r2, #0
	ldrsh r3, [r7, r2]
	b _08036AB8
_08036A08:
	.4byte gUnknown_080A7EE8
_08036A0C:
	.4byte gUnknown_080A8548
_08036A10:
	.4byte 0x030002E4
_08036A14:
	.4byte gUnknown_080A8308
_08036A18:
	.4byte gUnknown_080A7ED0
_08036A1C:
	cmp r6, r9
	bne _08036A64
	mov r1, r9
	lsl r5, r1, #1
	add r4, r5, r1
	lsl r4, r4, #3
	ldr r0, _08036A58  @ =gUnknown_080A8128
	add r0, r4, r0
	ldr r2, _08036A5C  @ =gUnknown_080A8548
	add r4, r4, r2
	mov r1, #0
	ldrsh r3, [r4, r1]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036A60  @ =0x030002E2
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036A5C  @ =gUnknown_080A8548
	b _08036A96
	.byte 0x00
	.byte 0x00
_08036A58:
	.4byte gUnknown_080A8128
_08036A5C:
	.4byte gUnknown_080A8548
_08036A60:
	.4byte 0x030002E2
_08036A64:
	lsl r5, r6, #1
	add r4, r5, r6
	lsl r4, r4, #3
	ldr r1, _08036AA0  @ =gUnknown_080A8008
	add r0, r4, r1
	ldr r2, _08036AA4  @ =gUnknown_080A8548
	add r4, r4, r2
	mov r1, #0
	ldrsh r3, [r4, r1]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036AA8  @ =0x030002E0
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036AAC  @ =gUnknown_080A8428
_08036A96:
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	b _08036B32
_08036AA0:
	.4byte gUnknown_080A8008
_08036AA4:
	.4byte gUnknown_080A8548
_08036AA8:
	.4byte 0x030002E0
_08036AAC:
	.4byte gUnknown_080A8428
_08036AB0:
	cmp r8, r6
	bne _08036AF8
	mov r0, #0
	ldrsh r3, [r7, r0]
_08036AB8:
	mov r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp]
	ldr r2, [sp, #12]
	ldr r1, _08036AEC  @ =gUnknown_080A8008
	add r0, r2, r1
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036AF0  @ =0x030002E0
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r7, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r7, r2]
	str r0, [sp, #4]
	ldr r0, _08036AF4  @ =gUnknown_080A8428
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	mov r0, r8
	lsl r5, r0, #1
	b _08036B32
_08036AEC:
	.4byte gUnknown_080A8008
_08036AF0:
	.4byte 0x030002E0
_08036AF4:
	.4byte gUnknown_080A8428
_08036AF8:
	lsl r5, r6, #1
	add r4, r5, r6
	lsl r4, r4, #3
	ldr r0, _08036B9C  @ =gUnknown_080A7EE8
	add r0, r4, r0
	ldr r1, _08036BA0  @ =gUnknown_080A8548
	add r4, r4, r1
	mov r2, #0
	ldrsh r3, [r4, r2]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036BA4  @ =0x030002E4
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036BA8  @ =gUnknown_080A8308
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
_08036B32:
	add r0, r5, r6
	lsl r0, r0, #3
	ldr r1, _08036BA0  @ =gUnknown_080A8548
	add r0, r0, r1
	ldrh r3, [r0]
	add r3, r3, #1
	lsl r3, r3, #16
	asr r3, r3, #16
	ldrh r0, [r0, #2]
	add r0, r0, #2
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp]
	ldr r0, _08036BAC  @ =gUnknown_080A7ED0
	add r1, r6, #0
	mov r2, #1
	bl sub_08036084
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #9
	bhi _08036B62
	b _080369FA
_08036B62:
	cmp r6, #11
	bls _08036B68
	b _08036CEA
_08036B68:
	mov r2, r8
	lsl r0, r2, #1
	add r0, r0, r8
	lsl r0, r0, #3
	str r0, [sp, #16]
	ldr r0, _08036BA0  @ =gUnknown_080A8548
	mov r10, r0
	ldr r7, [sp, #16]
	add r7, r7, r10
_08036B7A:
	bl sub_08014CD4
	lsl r0, r0, #24
	cmp r0, #0
	beq _08036C3C
	cmp r8, r6
	bne _08036BB4
	mov r1, #0
	ldrsh r3, [r7, r1]
	mov r2, #2
	ldrsh r0, [r7, r2]
	str r0, [sp]
	ldr r1, [sp, #16]
	ldr r2, _08036BB0  @ =gUnknown_080A8008
	add r0, r1, r2
	b _08036C50
	.byte 0x00
	.byte 0x00
_08036B9C:
	.4byte gUnknown_080A7EE8
_08036BA0:
	.4byte gUnknown_080A8548
_08036BA4:
	.4byte 0x030002E4
_08036BA8:
	.4byte gUnknown_080A8308
_08036BAC:
	.4byte gUnknown_080A7ED0
_08036BB0:
	.4byte gUnknown_080A8008
_08036BB4:
	cmp r6, r9
	bne _08036BF4
	mov r1, r9
	lsl r5, r1, #1
	add r4, r5, r1
	lsl r4, r4, #3
	ldr r0, _08036BEC  @ =gUnknown_080A8128
	add r0, r4, r0
	add r4, r4, r10
	mov r2, #0
	ldrsh r3, [r4, r2]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036BF0  @ =0x030002E2
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	mov r0, r10
	b _08036C24
_08036BEC:
	.4byte gUnknown_080A8128
_08036BF0:
	.4byte 0x030002E2
_08036BF4:
	lsl r5, r6, #1
	add r4, r5, r6
	lsl r4, r4, #3
	ldr r1, _08036C30  @ =gUnknown_080A8008
	add r0, r4, r1
	add r4, r4, r10
	mov r2, #0
	ldrsh r3, [r4, r2]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036C34  @ =0x030002E0
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036C38  @ =gUnknown_080A8428
_08036C24:
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	b _08036CBC
	.byte 0x00
	.byte 0x00
_08036C30:
	.4byte gUnknown_080A8008
_08036C34:
	.4byte 0x030002E0
_08036C38:
	.4byte gUnknown_080A8428
_08036C3C:
	cmp r8, r6
	bne _08036C84
	mov r0, #0
	ldrsh r3, [r7, r0]
	mov r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp]
	ldr r2, [sp, #16]
	ldr r1, _08036C78  @ =gUnknown_080A8008
	add r0, r2, r1
_08036C50:
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036C7C  @ =0x030002E0
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r7, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r7, r2]
	str r0, [sp, #4]
	ldr r0, _08036C80  @ =gUnknown_080A8428
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
	mov r0, r8
	lsl r5, r0, #1
	b _08036CBC
_08036C78:
	.4byte gUnknown_080A8008
_08036C7C:
	.4byte 0x030002E0
_08036C80:
	.4byte gUnknown_080A8428
_08036C84:
	lsl r5, r6, #1
	add r4, r5, r6
	lsl r4, r4, #3
	ldr r0, _08036D24  @ =gUnknown_080A7EE8
	add r0, r4, r0
	add r4, r4, r10
	mov r1, #0
	ldrsh r3, [r4, r1]
	mov r2, #2
	ldrsh r1, [r4, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
	ldr r0, _08036D28  @ =0x030002E4
	ldrh r1, [r0]
	mov r2, #0
	ldrsh r0, [r4, r2]
	str r0, [sp]
	mov r2, #2
	ldrsh r0, [r4, r2]
	str r0, [sp, #4]
	ldr r0, _08036D2C  @ =gUnknown_080A8308
	mov r2, #0
	mov r3, #1
	bl sub_080361CC
_08036CBC:
	add r0, r5, r6
	lsl r0, r0, #3
	add r0, r0, r10
	ldrh r3, [r0]
	add r3, r3, #1
	lsl r3, r3, #16
	asr r3, r3, #16
	ldrh r0, [r0, #2]
	add r0, r0, #2
	lsl r0, r0, #16
	asr r0, r0, #16
	str r0, [sp]
	ldr r0, _08036D30  @ =gUnknown_080A7ED0
	add r1, r6, #0
	mov r2, #1
	bl sub_08036084
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #11
	bhi _08036CEA
	b _08036B7A
_08036CEA:
	cmp r8, r9
	blt _08036D12
	ldr r0, _08036D34  @ =gUnknown_080A8668
	add r0, r0, r8
	ldrb r3, [r0]
	mov r0, #40
	mov r1, #57
	mov r2, #2
	bl sub_08035CCC
	ldr r0, _08036D38  @ =gUnknown_080A7EB8
	mov r1, #0
	ldrsh r3, [r0, r1]
	mov r2, #2
	ldrsh r1, [r0, r2]
	str r1, [sp]
	mov r1, #0
	mov r2, #1
	bl sub_08035F4C
_08036D12:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08036D24:
	.4byte gUnknown_080A7EE8
_08036D28:
	.4byte 0x030002E4
_08036D2C:
	.4byte gUnknown_080A8308
_08036D30:
	.4byte gUnknown_080A7ED0
_08036D34:
	.4byte gUnknown_080A8668
_08036D38:
	.4byte gUnknown_080A7EB8
	THUMB_FUNC_END sub_08036858

	THUMB_FUNC_START sub_08036D3C
sub_08036D3C: @ 0x08036D3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r2, _08036EB4  @ =0x040000D4
	ldr r0, _08036EB8  @ =gUnknown_085E0D90
	str r0, [r2]
	ldr r5, _08036EBC  @ =gUnknown_0300192C
	ldrh r0, [r5]
	ldr r1, _08036EC0  @ =0x06010000
	mov r10, r1
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r6, _08036EC4  @ =0x84000020
	mov r12, r6
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036EC8  @ =0x030002D4
	ldr r7, _08036ECC  @ =gUnknown_03001930
	ldrh r3, [r7]
	strh r3, [r0]
	add r3, r3, #4
	ldrh r4, [r5]
	add r4, r4, #128
	strh r4, [r5]
	ldr r0, _08036ED0  @ =gUnknown_085E1188
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036ED4  @ =0x030002D6
	strh r3, [r0]
	add r3, r3, #4
	add r4, r4, #128
	strh r4, [r5]
	ldr r0, _08036ED8  @ =gUnknown_085E0908
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036EDC  @ =0x030002D8
	strh r3, [r0]
	add r3, r3, #4
	strh r3, [r7]
	add r4, r4, #128
	strh r4, [r5]
	ldr r6, _08036EE0  @ =gUnknown_085E0AC4
	ldr r0, _08036EE4  @ =0x030002E9
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08036EE8  @ =gUnknown_085E0B14
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r12
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036EEC  @ =0x030002DA
	strh r3, [r0]
	add r3, r3, #4
	strh r3, [r7]
	add r4, r4, #128
	strh r4, [r5]
	ldr r6, _08036EF0  @ =gUnknown_085E0EBC
	ldr r0, _08036EF4  @ =0x030002EA
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08036EF8  @ =gUnknown_085E0F0C
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r6, r12
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036EFC  @ =0x030002DC
	strh r3, [r0]
	add r0, r3, #4
	mov r9, r0
	strh r0, [r7]
	add r6, r4, #0
	add r6, r6, #128
	strh r6, [r5]
	ldr r1, _08036F00  @ =gUnknown_085E063C
	mov r8, r1
	ldr r0, _08036EE4  @ =0x030002E9
	mov r1, #0
	ldrsb r1, [r0, r1]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r8
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _08036F04  @ =gUnknown_085E068C
	add r0, r0, r1
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	mov r1, r12
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036F08  @ =0x030002DE
	mov r1, r9
	strh r1, [r0]
	mov r0, #4
	add r9, r9, r0
	add r6, r6, #128
	strh r6, [r5]
	ldr r0, _08036F0C  @ =gUnknown_08296810
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	ldr r1, _08036F10  @ =0x84000200
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036F14  @ =0x030002E0
	mov r6, r9
	strh r6, [r0]
	mov r0, #72
	add r0, r0, r3
	mov r8, r0
	mov r6, #144
	lsl r6, r6, #4
	add r0, r4, r6
	strh r0, [r5]
	ldr r0, _08036F18  @ =gUnknown_08295FE4
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036F1C  @ =0x030002E4
	mov r6, r8
	strh r6, [r0]
	mov r0, #136
	add r0, r0, r3
	mov r8, r0
	mov r6, #136
	lsl r6, r6, #5
	add r0, r4, r6
	strh r0, [r5]
	ldr r0, _08036F20  @ =gUnknown_082957B8
	str r0, [r2]
	ldrh r0, [r5]
	add r0, r0, r10
	str r0, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08036F24  @ =0x030002E2
	mov r1, r8
	strh r1, [r0]
	add r3, r3, #200
	strh r3, [r7]
	mov r6, #200
	lsl r6, r6, #5
	add r4, r4, r6
	strh r4, [r5]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08036EB4:
	.4byte 0x040000D4
_08036EB8:
	.4byte gUnknown_085E0D90
_08036EBC:
	.4byte gUnknown_0300192C
_08036EC0:
	.4byte 0x06010000
_08036EC4:
	.4byte 0x84000020
_08036EC8:
	.4byte 0x030002D4
_08036ECC:
	.4byte gUnknown_03001930
_08036ED0:
	.4byte gUnknown_085E1188
_08036ED4:
	.4byte 0x030002D6
_08036ED8:
	.4byte gUnknown_085E0908
_08036EDC:
	.4byte 0x030002D8
_08036EE0:
	.4byte gUnknown_085E0AC4
_08036EE4:
	.4byte 0x030002E9
_08036EE8:
	.4byte gUnknown_085E0B14
_08036EEC:
	.4byte 0x030002DA
_08036EF0:
	.4byte gUnknown_085E0EBC
_08036EF4:
	.4byte 0x030002EA
_08036EF8:
	.4byte gUnknown_085E0F0C
_08036EFC:
	.4byte 0x030002DC
_08036F00:
	.4byte gUnknown_085E063C
_08036F04:
	.4byte gUnknown_085E068C
_08036F08:
	.4byte 0x030002DE
_08036F0C:
	.4byte gUnknown_08296810
_08036F10:
	.4byte 0x84000200
_08036F14:
	.4byte 0x030002E0
_08036F18:
	.4byte gUnknown_08295FE4
_08036F1C:
	.4byte 0x030002E4
_08036F20:
	.4byte gUnknown_082957B8
_08036F24:
	.4byte 0x030002E2
	THUMB_FUNC_END sub_08036D3C

	THUMB_FUNC_START expert_levels_loop
expert_levels_loop: @ 0x08036F28
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, _08036F40  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #2
	bne _08036F48
	ldr r0, _08036F44  @ =gAfterTutorialWorld
	ldrb r7, [r0]
	b _08036F52
	.byte 0x00
	.byte 0x00
_08036F40:
	.4byte gUnknown_03000B80
_08036F44:
	.4byte gAfterTutorialWorld
_08036F48:
	ldr r0, _0803702C  @ =gAfterTutorialWorld
	ldrb r0, [r0]
	add r0, r0, #6
	lsl r0, r0, #24
	lsr r7, r0, #24
_08036F52:
	ldr r0, _08037030  @ =0x030002D0
	mov r1, #0
	strh r1, [r0]
	ldr r2, _08037034  @ =gUnknown_03001930
	ldr r0, _08037038  @ =gUnknown_0300192C
	strh r1, [r0]
	strh r1, [r2]
	mov r0, #160
	str r0, [sp]
	ldr r1, _0803703C  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08037040  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _08037044  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08036D3C
	bl sub_08014C6C
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r4, #0
	lsl r5, r7, #24
_08036F84:
	mov r0, #2
	add r1, r4, #0
	mov r2, #0
	add r3, sp, #4
	bl sub_0800FE2C
	cmp r6, r4
	bls _08036FA2
	lsl r1, r4, #24
	asr r1, r1, #24
	add r0, sp, #4
	ldrb r2, [r0]
	asr r0, r5, #24
	bl sub_080363D8
_08036FA2:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #5
	bls _08036F84
	cmp r4, #11
	bhi _08036FDC
_08036FB0:
	sub r1, r4, #6
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r0, #3
	mov r2, #0
	add r3, sp, #4
	bl sub_0800FE2C
	cmp r6, r4
	bls _08036FD2
	lsl r1, r4, #24
	asr r1, r1, #24
	add r0, sp, #4
	ldrb r2, [r0]
	asr r0, r5, #24
	bl sub_080363D8
_08036FD2:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #11
	bls _08036FB0
_08036FDC:
	asr r0, r5, #24
	ldr r1, _0803702C  @ =gAfterTutorialWorld
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	bl sub_08036564
	bl sub_080366D0
	bl sub_080367C0
	bl sub_08014AB8
	add r3, r0, #0
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r0, #40
	mov r1, #26
	mov r2, #2
	bl sub_08035CCC
	add r0, r7, #0
	bl sub_08036858
	ldr r1, _0803703C  @ =0x040000D4
	ldr r0, _08037040  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08037048  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_0801B4BC
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803702C:
	.4byte gAfterTutorialWorld
_08037030:
	.4byte 0x030002D0
_08037034:
	.4byte gUnknown_03001930
_08037038:
	.4byte gUnknown_0300192C
_0803703C:
	.4byte 0x040000D4
_08037040:
	.4byte gOamData
_08037044:
	.4byte 0x85000100
_08037048:
	.4byte 0x84000100
	THUMB_FUNC_END expert_levels_loop

	THUMB_FUNC_START expert_levels_end
expert_levels_end: @ 0x0803704C
	bx lr
	THUMB_FUNC_END expert_levels_end
	.byte 0x00
	.byte 0x00