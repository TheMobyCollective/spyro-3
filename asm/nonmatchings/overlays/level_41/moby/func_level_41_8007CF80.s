.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_41_8007CF80
/* 8142CB0 8007CF80 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 8142CB4 8007CF84 2000B0AF */  sw         $s0, 0x20($sp)
/* 8142CB8 8007CF88 21808000 */  addu       $s0, $a0, $zero
/* 8142CBC 8007CF8C 01000224 */  addiu      $v0, $zero, 0x1
/* 8142CC0 8007CF90 3000BFAF */  sw         $ra, 0x30($sp)
/* 8142CC4 8007CF94 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 8142CC8 8007CF98 2800B2AF */  sw         $s2, 0x28($sp)
/* 8142CCC 8007CF9C 2400B1AF */  sw         $s1, 0x24($sp)
/* 8142CD0 8007CFA0 48000392 */  lbu        $v1, 0x48($s0)
/* 8142CD4 8007CFA4 0000138E */  lw         $s3, 0x0($s0)
/* 8142CD8 8007CFA8 25006210 */  beq        $v1, $v0, .Llevel_41_8007D040
/* 8142CDC 8007CFAC 02006228 */   slti      $v0, $v1, 0x2
/* 8142CE0 8007CFB0 05004010 */  beqz       $v0, .Llevel_41_8007CFC8
/* 8142CE4 8007CFB4 00000000 */   nop
/* 8142CE8 8007CFB8 0A006010 */  beqz       $v1, .Llevel_41_8007CFE4
/* 8142CEC 8007CFBC 02000224 */   addiu     $v0, $zero, 0x2
/* 8142CF0 8007CFC0 90F40108 */  j          .Llevel_41_8007D240
/* 8142CF4 8007CFC4 00000000 */   nop
.Llevel_41_8007CFC8:
/* 8142CF8 8007CFC8 02000224 */  addiu      $v0, $zero, 0x2
/* 8142CFC 8007CFCC 4B006210 */  beq        $v1, $v0, .Llevel_41_8007D0FC
/* 8142D00 8007CFD0 03000224 */   addiu     $v0, $zero, 0x3
/* 8142D04 8007CFD4 85006210 */  beq        $v1, $v0, .Llevel_41_8007D1EC
/* 8142D08 8007CFD8 21206002 */   addu      $a0, $s3, $zero
/* 8142D0C 8007CFDC 90F40108 */  j          .Llevel_41_8007D240
/* 8142D10 8007CFE0 00000000 */   nop
.Llevel_41_8007CFE4:
/* 8142D14 8007CFE4 0780033C */  lui        $v1, %hi(D_8006FA3C)
/* 8142D18 8007CFE8 3CFA638C */  lw         $v1, %lo(D_8006FA3C)($v1)
/* 8142D1C 8007CFEC 00000000 */  nop
/* 8142D20 8007CFF0 07006214 */  bne        $v1, $v0, .Llevel_41_8007D010
/* 8142D24 8007CFF4 03000224 */   addiu     $v0, $zero, 0x3
/* 8142D28 8007CFF8 0400628E */  lw         $v0, 0x4($s3)
/* 8142D2C 8007CFFC 00000000 */  nop
/* 8142D30 8007D000 0D004014 */  bnez       $v0, .Llevel_41_8007D038
/* 8142D34 8007D004 01000224 */   addiu     $v0, $zero, 0x1
/* 8142D38 8007D008 0AF40108 */  j          .Llevel_41_8007D028
/* 8142D3C 8007D00C 00000000 */   nop
.Llevel_41_8007D010:
/* 8142D40 8007D010 05006210 */  beq        $v1, $v0, .Llevel_41_8007D028
/* 8142D44 8007D014 00000000 */   nop
/* 8142D48 8007D018 0400628E */  lw         $v0, 0x4($s3)
/* 8142D4C 8007D01C 00000000 */  nop
/* 8142D50 8007D020 05004010 */  beqz       $v0, .Llevel_41_8007D038
/* 8142D54 8007D024 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_41_8007D028:
/* 8142D58 8007D028 C656010C */  jal        func_80055B18
/* 8142D5C 8007D02C 21200002 */   addu      $a0, $s0, $zero
/* 8142D60 8007D030 90F40108 */  j          .Llevel_41_8007D240
/* 8142D64 8007D034 00000000 */   nop
.Llevel_41_8007D038:
/* 8142D68 8007D038 90F40108 */  j          .Llevel_41_8007D240
/* 8142D6C 8007D03C 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_41_8007D040:
/* 8142D70 8007D040 08006286 */  lh         $v0, 0x8($s3)
/* 8142D74 8007D044 00000000 */  nop
/* 8142D78 8007D048 16004010 */  beqz       $v0, .Llevel_41_8007D0A4
/* 8142D7C 8007D04C 00000000 */   nop
/* 8142D80 8007D050 0A006486 */  lh         $a0, 0xA($s3)
/* 8142D84 8007D054 00000000 */  nop
/* 8142D88 8007D058 12008010 */  beqz       $a0, .Llevel_41_8007D0A4
/* 8142D8C 8007D05C 00000000 */   nop
/* 8142D90 8007D060 0780033C */  lui        $v1, %hi(D_8006FA80)
/* 8142D94 8007D064 80FA638C */  lw         $v1, %lo(D_8006FA80)($v1)
/* 8142D98 8007D068 00000000 */  nop
/* 8142D9C 8007D06C 2A104300 */  slt        $v0, $v0, $v1
/* 8142DA0 8007D070 07004010 */  beqz       $v0, .Llevel_41_8007D090
/* 8142DA4 8007D074 2A106400 */   slt       $v0, $v1, $a0
/* 8142DA8 8007D078 06004010 */  beqz       $v0, .Llevel_41_8007D094
/* 8142DAC 8007D07C 01000324 */   addiu     $v1, $zero, 0x1
/* 8142DB0 8007D080 410000A2 */  sb         $zero, 0x41($s0)
/* 8142DB4 8007D084 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 8142DB8 8007D088 29F40108 */  j          .Llevel_41_8007D0A4
/* 8142DBC 8007D08C 4D0000A2 */   sb        $zero, 0x4D($s0)
.Llevel_41_8007D090:
/* 8142DC0 8007D090 01000324 */  addiu      $v1, $zero, 0x1
.Llevel_41_8007D094:
/* 8142DC4 8007D094 3F000224 */  addiu      $v0, $zero, 0x3F
/* 8142DC8 8007D098 410003A2 */  sb         $v1, 0x41($s0)
/* 8142DCC 8007D09C 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 8142DD0 8007D0A0 4D0003A2 */  sb         $v1, 0x4D($s0)
.Llevel_41_8007D0A4:
/* 8142DD4 8007D0A4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 8142DD8 8007D0A8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 8142DDC 8007D0AC 21200002 */  addu       $a0, $s0, $zero
/* 8142DE0 8007D0B0 00140200 */  sll        $v0, $v0, 16
/* 8142DE4 8007D0B4 03150200 */  sra        $v0, $v0, 20
/* 8142DE8 8007D0B8 80FF4224 */  addiu      $v0, $v0, -0x80
/* 8142DEC 8007D0BC 460002A2 */  sb         $v0, 0x46($s0)
/* 8142DF0 8007D0C0 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 8142DF4 8007D0C4 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 8142DF8 8007D0C8 0780053C */  lui        $a1, %hi(D_80070328)
/* 8142DFC 8007D0CC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8142E00 8007D0D0 02110200 */  srl        $v0, $v0, 4
/* 8142E04 8007D0D4 450002A2 */  sb         $v0, 0x45($s0)
/* 8142E08 8007D0D8 0780023C */  lui        $v0, %hi(unk_ovlheader_800743A0)
/* 8142E0C 8007D0DC A043428C */  lw         $v0, %lo(unk_ovlheader_800743A0)($v0)
/* 8142E10 8007D0E0 00000000 */  nop
/* 8142E14 8007D0E4 09F84000 */  jalr       $v0
/* 8142E18 8007D0E8 00040624 */   addiu     $a2, $zero, 0x400
/* 8142E1C 8007D0EC 54004010 */  beqz       $v0, .Llevel_41_8007D240
/* 8142E20 8007D0F0 02000224 */   addiu     $v0, $zero, 0x2
/* 8142E24 8007D0F4 90F40108 */  j          .Llevel_41_8007D240
/* 8142E28 8007D0F8 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_41_8007D0FC:
/* 8142E2C 8007D0FC 21200002 */  addu       $a0, $s0, $zero
/* 8142E30 8007D100 21280000 */  addu       $a1, $zero, $zero
/* 8142E34 8007D104 AFEE000C */  jal        func_8003BABC
/* 8142E38 8007D108 21300000 */   addu      $a2, $zero, $zero
/* 8142E3C 8007D10C 21880000 */  addu       $s1, $zero, $zero
/* 8142E40 8007D110 0780123C */  lui        $s2, %hi(D_80070328 + 0x98)
/* 8142E44 8007D114 C0035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x98)
/* 8142E48 8007D118 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_41_8007D11C:
/* 8142E4C 8007D11C 5E3C010C */  jal        func_8004F178
/* 8142E50 8007D120 21284002 */   addu      $a1, $s2, $zero
/* 8142E54 8007D124 1000A427 */  addiu      $a0, $sp, 0x10
/* 8142E58 8007D128 443C010C */  jal        func_8004F110
/* 8142E5C 8007D12C 05000524 */   addiu     $a1, $zero, 0x5
/* 8142E60 8007D130 9171010C */  jal        rand
/* 8142E64 8007D134 01003126 */   addiu     $s1, $s1, 0x1
/* 8142E68 8007D138 1000A38F */  lw         $v1, 0x10($sp)
/* 8142E6C 8007D13C FE004230 */  andi       $v0, $v0, 0xFE
/* 8142E70 8007D140 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 8142E74 8007D144 21186200 */  addu       $v1, $v1, $v0
/* 8142E78 8007D148 9171010C */  jal        rand
/* 8142E7C 8007D14C 1000A3AF */   sw        $v1, 0x10($sp)
/* 8142E80 8007D150 1400A38F */  lw         $v1, 0x14($sp)
/* 8142E84 8007D154 FE004230 */  andi       $v0, $v0, 0xFE
/* 8142E88 8007D158 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 8142E8C 8007D15C 21186200 */  addu       $v1, $v1, $v0
/* 8142E90 8007D160 9171010C */  jal        rand
/* 8142E94 8007D164 1400A3AF */   sw        $v1, 0x14($sp)
/* 8142E98 8007D168 01000424 */  addiu      $a0, $zero, 0x1
/* 8142E9C 8007D16C 17000524 */  addiu      $a1, $zero, 0x17
/* 8142EA0 8007D170 68FF4626 */  addiu      $a2, $s2, -0x98
/* 8142EA4 8007D174 1800A38F */  lw         $v1, 0x18($sp)
/* 8142EA8 8007D178 FE004230 */  andi       $v0, $v0, 0xFE
/* 8142EAC 8007D17C 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 8142EB0 8007D180 21186200 */  addu       $v1, $v1, $v0
/* 8142EB4 8007D184 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8142EB8 8007D188 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8142EBC 8007D18C 1000A727 */  addiu      $a3, $sp, 0x10
/* 8142EC0 8007D190 09F84000 */  jalr       $v0
/* 8142EC4 8007D194 1800A3AF */   sw        $v1, 0x18($sp)
/* 8142EC8 8007D198 0800222A */  slti       $v0, $s1, 0x8
/* 8142ECC 8007D19C DFFF4014 */  bnez       $v0, .Llevel_41_8007D11C
/* 8142ED0 8007D1A0 1000A427 */   addiu     $a0, $sp, 0x10
/* 8142ED4 8007D1A4 0780033C */  lui        $v1, %hi(D_80070328 + 0x15C)
/* 8142ED8 8007D1A8 8404638C */  lw         $v1, %lo(D_80070328 + 0x15C)($v1)
/* 8142EDC 8007D1AC 4B000224 */  addiu      $v0, $zero, 0x4B
/* 8142EE0 8007D1B0 03006004 */  bltz       $v1, .Llevel_41_8007D1C0
/* 8142EE4 8007D1B4 B00042A6 */   sh        $v0, 0xB0($s2)
/* 8142EE8 8007D1B8 71F40108 */  j          .Llevel_41_8007D1C4
/* 8142EEC 8007D1BC 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_41_8007D1C0:
/* 8142EF0 8007D1C0 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_41_8007D1C4:
/* 8142EF4 8007D1C4 B20042A6 */  sh         $v0, 0xB2($s2)
/* 8142EF8 8007D1C8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8142EFC 8007D1CC 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 8142F00 8007D1D0 3C000224 */  addiu      $v0, $zero, 0x3C
/* 8142F04 8007D1D4 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 8142F08 8007D1D8 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 8142F0C 8007D1DC 000062AE */  sw         $v0, 0x0($s3)
/* 8142F10 8007D1E0 03000224 */  addiu      $v0, $zero, 0x3
/* 8142F14 8007D1E4 90F40108 */  j          .Llevel_41_8007D240
/* 8142F18 8007D1E8 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_41_8007D1EC:
/* 8142F1C 8007D1EC 69D6000C */  jal        func_800359A4
/* 8142F20 8007D1F0 04000524 */   addiu     $a1, $zero, 0x4
/* 8142F24 8007D1F4 12004010 */  beqz       $v0, .Llevel_41_8007D240
/* 8142F28 8007D1F8 00000000 */   nop
/* 8142F2C 8007D1FC 0780023C */  lui        $v0, %hi(D_8006E040)
/* 8142F30 8007D200 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 8142F34 8007D204 00000000 */  nop
/* 8142F38 8007D208 00140200 */  sll        $v0, $v0, 16
/* 8142F3C 8007D20C 03150200 */  sra        $v0, $v0, 20
/* 8142F40 8007D210 80FF4224 */  addiu      $v0, $v0, -0x80
/* 8142F44 8007D214 460002A2 */  sb         $v0, 0x46($s0)
/* 8142F48 8007D218 0780033C */  lui        $v1, %hi(D_8006E03E)
/* 8142F4C 8007D21C 3EE06394 */  lhu        $v1, %lo(D_8006E03E)($v1)
/* 8142F50 8007D220 3F000224 */  addiu      $v0, $zero, 0x3F
/* 8142F54 8007D224 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 8142F58 8007D228 10000224 */  addiu      $v0, $zero, 0x10
/* 8142F5C 8007D22C 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 8142F60 8007D230 01000224 */  addiu      $v0, $zero, 0x1
/* 8142F64 8007D234 480002A2 */  sb         $v0, 0x48($s0)
/* 8142F68 8007D238 02190300 */  srl        $v1, $v1, 4
/* 8142F6C 8007D23C 450003A2 */  sb         $v1, 0x45($s0)
.Llevel_41_8007D240:
/* 8142F70 8007D240 3000BF8F */  lw         $ra, 0x30($sp)
/* 8142F74 8007D244 2C00B38F */  lw         $s3, 0x2C($sp)
/* 8142F78 8007D248 2800B28F */  lw         $s2, 0x28($sp)
/* 8142F7C 8007D24C 2400B18F */  lw         $s1, 0x24($sp)
/* 8142F80 8007D250 2000B08F */  lw         $s0, 0x20($sp)
/* 8142F84 8007D254 3800BD27 */  addiu      $sp, $sp, 0x38
/* 8142F88 8007D258 0800E003 */  jr         $ra
/* 8142F8C 8007D25C 00000000 */   nop
.size func_level_41_8007CF80, . - func_level_41_8007CF80
