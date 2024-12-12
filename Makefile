#### Options ####

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
AIF2PCM  := tools/aif2pcm/aif2pcm

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm -fno-common
CPPFLAGS := -I tools/agbcc/include -iquote include -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I asminclude


#### Files ####

ROM      := mariovsdk.gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt
CFILES   := $(wildcard src/*.c)
SFILES   := $(wildcard asm/*.s) $(wildcard data/*.s)
OFILES   := $(SFILES:.s=.o) $(CFILES:.c=.o)
DEP_FILES := $(CFILES:.c=.dep)

src/agb_flash.o: CC1FLAGS := -O1 -mthumb-interwork
src/agb_flash_1m.o: CC1FLAGS := -O1 -mthumb-interwork
src/agb_flash_mx.o: CC1FLAGS := -O1 -mthumb-interwork

src/libc.o: CC1 := $(CC1_OLD)
src/libc.o: CC1FLAGS := -O2


#### Main Targets ####

compare: $(ROM)
	$(QUIET) md5sum -c checksum.md5

clean:
	$(RM) $(ROM) $(ELF) $(MAP) $(OFILES) src/*.s
	find . -name '*.4bpp' -exec rm {} +
	find . -name '*.8bpp' -exec rm {} +
	find . -name '*.gbapal' -exec rm {} +
	$(RM) assets/sounds/*.pcm
	$(MAKE) -C tools/gbagfx clean

# Compile a set of baserom objects for use with objdiff
baserom-objs: compare
	mkdir -p baserom-objs && rm -f baserom-objs/*
	cp src/*.o baserom-objs
	cp asm/*.o baserom-objs

#### Recipes ####

$(ELF): $(OFILES) $(LDSCRIPT)
	@echo 'Linking $@'
	$(QUIET) $(LD) -T $(LDSCRIPT) -Map $(MAP) $(OFILES) tools/agbcc/lib/libgcc.a -o $@

%.gba: %.elf
	@echo 'Generating ROM $@'
	$(QUIET) $(OBJCOPY) -O binary --pad-to 0x9000000 $< $@

%.o: %.c
	@echo 'Compiling $<'
	$(QUIET) $(CPP) $(CPPFLAGS) -MMD -MF $(@:.o=.dep) -MT $@ $< | $(CC1) $(CC1FLAGS) -o $*.s
	$(QUIET) $(AS) $(ASFLAGS) $*.s -o $*.o

%.o: %.s
	@echo 'Assembling $<'
	$(QUIET) $(AS) $(ASFLAGS) $< -o $@

ldscript.txt: ldscript.in
	@echo '/* Autogenerated - do not edit. Edit $< instead. */' > $@
	$(CPP) -P $< >> $@

%.4bpp:   %.png $(GBAGFX) ; $(GBAGFX) $< $@
%.8bpp:   %.png $(GBAGFX) ; $(GBAGFX) $< $@
%.gbapal: %.pal $(GBAGFX) ; $(GBAGFX) $< $@

%.pcm:    %.aif $(AIF2PCM) ; $(AIF2PCM) $< $@

%.lz:     %     $(GBAGFX) ; $(GBAGFX) $< $@

$(GBAGFX):  ; $(MAKE) -C $(@D)
$(AIF2PCM): ; $(MAKE) -C $(@D)

# Automatic dependency generation
-include $(DEP_FILES)

# Automatically scan files for incbins and add them as a dependency
.SECONDEXPANSION:
$(SFILES:.s=.o): $$(shell sed -n '/INCBIN/s/.*"\([^"]*\)".*/\1/p' $$< | sort -u)
