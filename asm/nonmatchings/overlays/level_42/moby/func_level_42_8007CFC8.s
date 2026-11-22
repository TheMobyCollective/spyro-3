.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_761_level_42
/* 8481CF8 8007CFC8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8481CFC 8007CFCC 1800B0AF */  sw         $s0, 0x18($sp)
/* 8481D00 8007CFD0 21808000 */  addu       $s0, $a0, $zero
/* 8481D04 8007CFD4 1000033C */  lui        $v1, (0x100000 >> 16)
/* 8481D08 8007CFD8 2000BFAF */  sw         $ra, 0x20($sp)
/* 8481D0C 8007CFDC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 8481D10 8007CFE0 1800028E */  lw         $v0, 0x18($s0)
/* 8481D14 8007CFE4 0000118E */  lw         $s1, 0x0($s0)
/* 8481D18 8007CFE8 24104300 */  and        $v0, $v0, $v1
/* 8481D1C 8007CFEC 05004010 */  beqz       $v0, .Llevel_42_8007D004
/* 8481D20 8007CFF0 21280000 */   addu      $a1, $zero, $zero
/* 8481D24 8007CFF4 AFEE000C */  jal        func_8003BABC
/* 8481D28 8007CFF8 21300000 */   addu      $a2, $zero, $zero
/* 8481D2C 8007CFFC 01000224 */  addiu      $v0, $zero, 0x1
/* 8481D30 8007D000 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_42_8007D004:
/* 8481D34 8007D004 48000392 */  lbu        $v1, 0x48($s0)
/* 8481D38 8007D008 00000000 */  nop
/* 8481D3C 8007D00C 05006010 */  beqz       $v1, .Llevel_42_8007D024
/* 8481D40 8007D010 01000224 */   addiu     $v0, $zero, 0x1
/* 8481D44 8007D014 10006210 */  beq        $v1, $v0, .Llevel_42_8007D058
/* 8481D48 8007D018 03000424 */   addiu     $a0, $zero, 0x3
/* 8481D4C 8007D01C 24F40108 */  j          .Llevel_42_8007D090
/* 8481D50 8007D020 00000000 */   nop
.Llevel_42_8007D024:
/* 8481D54 8007D024 21200002 */  addu       $a0, $s0, $zero
/* 8481D58 8007D028 18002626 */  addiu      $a2, $s1, 0x18
/* 8481D5C 8007D02C 06000224 */  addiu      $v0, $zero, 0x6
/* 8481D60 8007D030 1000A2AF */  sw         $v0, 0x10($sp)
/* 8481D64 8007D034 1400A0AF */  sw         $zero, 0x14($sp)
/* 8481D68 8007D038 0000258E */  lw         $a1, 0x0($s1)
/* 8481D6C 8007D03C 0780023C */  lui        $v0, %hi(unk_ovlheader_800743EC)
/* 8481D70 8007D040 EC43428C */  lw         $v0, %lo(unk_ovlheader_800743EC)($v0)
/* 8481D74 8007D044 00000000 */  nop
/* 8481D78 8007D048 09F84000 */  jalr       $v0
/* 8481D7C 8007D04C 24002726 */   addiu     $a3, $s1, 0x24
/* 8481D80 8007D050 24F40108 */  j          .Llevel_42_8007D090
/* 8481D84 8007D054 00000000 */   nop
.Llevel_42_8007D058:
/* 8481D88 8007D058 BC010524 */  addiu      $a1, $zero, 0x1BC
/* 8481D8C 8007D05C 00010224 */  addiu      $v0, $zero, 0x100
/* 8481D90 8007D060 1000A0AF */  sw         $zero, 0x10($sp)
/* 8481D94 8007D064 1400A2AF */  sw         $v0, 0x14($sp)
/* 8481D98 8007D068 1400278E */  lw         $a3, 0x14($s1)
/* 8481D9C 8007D06C 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 8481DA0 8007D070 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 8481DA4 8007D074 00000000 */  nop
/* 8481DA8 8007D078 09F84000 */  jalr       $v0
/* 8481DAC 8007D07C 21300002 */   addu      $a2, $s0, $zero
/* 8481DB0 8007D080 80EE000C */  jal        func_8003BA00
/* 8481DB4 8007D084 21200002 */   addu      $a0, $s0, $zero
/* 8481DB8 8007D088 C656010C */  jal        func_80055B18
/* 8481DBC 8007D08C 21200002 */   addu      $a0, $s0, $zero
.Llevel_42_8007D090:
/* 8481DC0 8007D090 2000BF8F */  lw         $ra, 0x20($sp)
/* 8481DC4 8007D094 1C00B18F */  lw         $s1, 0x1C($sp)
/* 8481DC8 8007D098 1800B08F */  lw         $s0, 0x18($sp)
/* 8481DCC 8007D09C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8481DD0 8007D0A0 0800E003 */  jr         $ra
/* 8481DD4 8007D0A4 00000000 */   nop
.size MobyUpdate_761_level_42, . - MobyUpdate_761_level_42
