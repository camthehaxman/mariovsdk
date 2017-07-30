	.INCLUDE "macro.inc"

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08073E3C
	swi #0xB
	bx lr
	THUMB_FUNC_END CpuSet

	THUMB_FUNC_START LZ77UnCompVram
LZ77UnCompVram: @ 0x08073E40
	swi #0x12
	bx lr
	THUMB_FUNC_END LZ77UnCompVram

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x08073E44
	swi #0x11
	bx lr
	THUMB_FUNC_END LZ77UnCompWram
