# Don't echo build commands unless VERBOSE is set
VERBOSE ?= 0
ifeq ($(VERBOSE),0)
  QUIET := @
endif

#### Tools ####

CC1      := tools/agbcc/bin/agbcc
CC1_OLD  := tools/agbcc/bin/old_agbcc
CPP      := $(DEVKITARM)/bin/arm-none-eabi-cpp
AS       := $(DEVKITARM)/bin/arm-none-eabi-as
LD       := $(DEVKITARM)/bin/arm-none-eabi-ld
OBJCOPY  := $(DEVKITARM)/bin/arm-none-eabi-objcopy

GBAGFX   := tools/gbagfx/gbagfx

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS := -I tools/agbcc/include -iquote include -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I asminclude


#### Files ####

ROM      := mariovsdk.gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt
CFILES := $(wildcard src/*.c)
SFILES := $(wildcard asm/*.s) $(wildcard data/*.s)
OFILES   := $(SFILES:.s=.o) $(CFILES:.c=.o)

src/agb_flash.o: CC1FLAGS := -O1 -mthumb-interwork
src/agb_flash_1m.o: CC1FLAGS := -O1 -mthumb-interwork
src/agb_flash_mx.o: CC1FLAGS := -O1 -mthumb-interwork

src/libc.o: CC1 := $(CC1_OLD)
src/libc.o: CC1FLAGS := -O2

#### Main Targets ####

compare: $(ROM)
	md5sum -c checksum.md5

clean:
	$(RM) $(ROM) $(ELF) $(MAP) src/*.s
	find . -name '*.o' -exec rm {} +
	find . -name '*.4bpp' -exec rm {} +
	$(MAKE) -C tools/gbagfx clean

#### Tools ####

$(GBAGFX):
	$(MAKE) -C tools/gbagfx

#### Recipes ####

$(ELF): $(OFILES) $(LDSCRIPT)
	$(LD) -T $(LDSCRIPT) -Map $(MAP) $(OFILES) tools/agbcc/lib/libgcc.a -o $@

%.gba: %.elf
	$(OBJCOPY) -O binary --pad-to 0x9000000 $< $@

%.o: %.c
	@echo "Compiling " $<
	$(QUIET) $(CPP) $(CPPFLAGS) $< | $(CC1) $(CC1FLAGS) -o $*.s
	$(QUIET) $(AS) $(ASFLAGS) $*.s -o $*.o

%.o: %.s
	@echo "Assembling " $<
	@echo "Deps: $^"
	$(QUIET) $(AS) $(ASFLAGS) $< -o $@

ldscript.txt: ldscript.in
	$(CPP) -P $< > $@

#### Graphics ####

%.4bpp: %.png $(GBAGFX)
	$(GBAGFX) $< $@

# Automatically scan files for incbins and add them as a dependency
.SECONDEXPANSION:
$(SFILES:.s=.o): $$(shell sed -n '/INCBIN/s/.*"\([^"]*\)".*/\1/p' $$< | sort -u)
