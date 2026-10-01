# This does not take account of the antipiracy - this will probably be done in a separate Python script
# Of course I'd need to make sure this all rebuilds if the antipiracy is run?
# Or rewrite the AP tools to spit the updated files out into a different folder.

# TODO: warp.c needs -G8 - apparently I already did this? But I don't know if it works
# TODO: get it to actually work (right now it complains about endianness)
# TODO: switch to mipsel like Spyro 1 (probably needs some flag updates or something too because it shits the bed otherwise)

# -------------------------------
# Compiler & Toolchain Setup
# -------------------------------
NOCD_FLAG          = $(if ${NOCD},-DNOCD,-DNNOCD)
DEBUG_FLAG          = $(if ${DEBUG},-DDEBUG,-DNDEBUG)
NON_MATCHING_FLAG  = $(if ${NON_MATCHING},-DNON_MATCHING,)

CC       = "./tools/gcc2.7.2/cc1"
GCC      = mips-linux-gnu-cpp
AS       = mips-linux-gnu-as
LD       = mips-linux-gnu-ld
OBJCOPY  = mips-linux-gnu-objcopy
PYTHON   = python3

MASPSX          = "./tools/maspsx/maspsx.py"
FIX_JTBL_ALIGN  = "./tools/fix_jtbl_align.py"
FIX_STR_ALIGN   = "./tools/fix_str_align.py"

# -------------------------------
# Compilation Flags
# -------------------------------
# TODO - file flags? warp.c needs -G8
LD_FLAGS     = -T /tmp/psx.ld -Map build/psx.map --no-check-sections -nostdlib # -g? -EL?
GCC_FLAGS    = -Iinclude -Ipsyq/include -ffreestanding -MT # -MT new # -MMD -MP -MF are in the command currently # -D_HAS_MASPSX currently excluded as the reorder hack is broken
C_FLAGS      = -O2 -G0 -gcoff -fverbose-asm -mips1 -mcpu=3000 -fgnu-linker -mno-abicalls -mgpopt -msoft-float -quiet -funsigned-char # should be -G8
AS_FLAGS     = -EL -Iinclude -Iasm -march=r3000 -mtune=r3000 -no-pad-sections -G0 -ggdb -msoft-float # -EL -Iasm -ggdb -msoft-float new # does it need -I for every overlay folder??
MASPSX_FLAGS = -G0 --aspsx-version 2.56 --expand-div # should be -G8

# -------------------------------
# Targets & Sources
# -------------------------------
TARGET_ELF = build/psx.elf
TARGET_EXE = build/PSX.EXE

LEVEL_NUMBERS = \
	10 11 12 13 14 15 16 17 18 \
	20 21 22 23 24 25 26 27 28 \
	30 31 32 33 34 35 36 37 38 \
	40 41 42 43 44 45 46 47 48 \
	50

CUTSCENE_NUMBERS = \
    61 62 63 64 65 66 67 68 69 70 \
	71    73 74 75 76 77 78 79 80

# Generate object names and their section numbers
TARGET_OVERLAYS   = $(patsubst %, build/wad/level_%.ovl, $(LEVEL_NUMBERS)) $(patsubst %, build/wad/cutscene_%.ovl, $(CUTSCENE_NUMBERS)) build/wad/atlas.ovl build/wad/credits.ovl build/wad/loading.ovl build/wad/options.ovl build/wad/title.ovl
OVERLAY_SECTIONS  = $(foreach n, $(LEVEL_NUMBERS), .level_$(n)) $(foreach n, $(CUTSCENE_NUMBERS), .cutscene_$(n))

# Input is one of TARGET_OVERLAYS' values and it returns the OVERLAY_SECTIONS entry at the same index
# Also works for cutscenes!
define LEVEL_TO_SECTION
    $(strip
			$(foreach idx, $(shell seq 1 $(words $(TARGET_OVERLAYS))), \
        $(if $(filter $(word $(idx),$(TARGET_OVERLAYS)),$(1)), \
            $(word $(idx),$(OVERLAY_SECTIONS)) \
        ) \
    	) \
		)
endef

SRC_C  = $(shell find src -type f -name '*.c')
SRC_S  = $(shell find asm -type f -name '*.s' | grep -v asm/nonmatchings)

OBJ_C  = $(SRC_C:src/%.c=build/src/%.o)
OBJ_S  = $(SRC_S:asm/%.s=build/asm/%.o)
DEPENDS = $(OBJ_C:.o=.o.d)

# -------------------------------
# Dependency Handling
# -------------------------------
-include $(DEPENDS)

# -------------------------------
# Directories Setup
# -------------------------------
$(OBJ_C): | create_dirs

create_dirs:
	@mkdir -p build/asm build/src $(sort $(dir $(OBJ_C))) $(sort $(dir $(OBJ_S))) build/wad

# -------------------------------
# Build Targets
# -------------------------------

all: $(TARGET_OVERLAYS) $(TARGET_EXE)
	@echo "\e[0;32m[Verifying] SHA-256 checksums...\e[0m"
	@sha256sum -c sha256sum.txt

non_matching: $(TARGET_OVERLAYS) $(TARGET_EXE)

# -------------------------------
# Compilation
# -------------------------------

# Overlay Specific Flags (-G0)
# build/src/overlays/%.o: C_FLAGS := $(subst -G8,-G0,$(C_FLAGS)) # Probably doesn't work yet, test this
build/src/warp.o: C_FLAGS := $(subst -G0,-G8,$(C_FLAGS)) # Temporary, until all non-overlay files support -G8

build/src/%.o: src/%.c
	@echo "\e[0;36m[Compiling] $<\e[0m"
		
	@$(GCC) $(DEBUG_FLAG) $(NON_MATCHING_FLAG) $(GCC_FLAGS) $@ -MMD -MP -MF $@.d $< | \
		$(CC) $(C_FLAGS) |\
		$(PYTHON) $(MASPSX) $(MASPSX_FLAGS) | \
		$(PYTHON) $(FIX_STR_ALIGN) | \
		$(PYTHON) $(FIX_JTBL_ALIGN) | \
		$(AS) $(AS_FLAGS) -o $@

build/asm/%.o: asm/%.s
	@echo "\e[0;34m[Assembling] $<\e[0m"
	@$(AS) $(AS_FLAGS) -o $@ $<

# -------------------------------
# Linking
# -------------------------------

# Main ELF
$(TARGET_ELF): $(OBJ_C) $(OBJ_S) psx.ld overlays.ld
	@echo "\e[0;32m[Linking] $@\e[0m"
	@gcc -E -P -x assembler-with-cpp -c psx.ld -o /tmp/psx.ld
	@$(LD) $(LD_FLAGS) -o $@

# Main executable
$(TARGET_EXE): $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.header --only-section=.main -O binary $< $@

# Overlays
build/wad/atlas.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.atlas -O binary $< $@

build/wad/credits.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.credits -O binary $< $@

build/wad/loading.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.loading -O binary $< $@

build/wad/options.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.options_ovl -O binary $< $@

build/wad/title.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=.title -O binary $< $@

build/wad/level_%.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=$(strip $(call LEVEL_TO_SECTION,$@)) -O binary $< $@

build/wad/cutscene_%.ovl: $(TARGET_ELF)
	@echo "\e[0;32m[Copying] $< → $@\e[0m"
	@$(OBJCOPY) --only-section=$(strip $(call LEVEL_TO_SECTION,$@)) -O binary $< $@

# -------------------------------
# Cleaning
# -------------------------------
clean:
	@echo "\e[0;31m[Cleaning] Removing build artifacts...\e[0m"
	@rm -f $(OBJ_C) $(OBJ_S) $(DEPENDS) $(TARGET_ELF) $(TARGET_EXE) $(TARGET_OVERLAYS)
