#include "gba/gba.h"
#include "global.h"

void sub_0800EFD8(u32 param_1, u32 param_2, u8 param_3) {
    // ...
    if (gUnknown_03000A10.unk44 == '\x00' ) {
        gUnknown_03000A10.unk3C = param_1;
        gUnknown_03000A10.unk40 = param_2;
    }
    gUnknown_03000A10.unk44 = param_3;
}
void sub_0800F000(void) {
    gUnknown_03000A10.unk44 = 0;
}
void sub_0800F010(void) {
    gUnknown_03000A10.unk7C = 0;
    gUnknown_03000A10.unk7D = 0;
    gUnknown_03000A10.unk7B = 1;
}
void sub_0800F02C(void) {
    gUnknown_03000A10.unkD6 = 1;
    gUnknown_03000A10.unk120 = 0;
    gUnknown_03000A10.unk121 = 0;
    gUnknown_03000A10.unk122 = 0;
    gUnknown_03000A10.unk123 = 0;
    gUnknown_03000A10.unk124 = 0;
}
void sub_0800F060(void) {
	gUnknown_03000A10.unkD6 = 0;
}