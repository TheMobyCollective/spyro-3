.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_764_level_44
/* 8B59298 80085D68 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8B5929C 80085D6C 2000B0AF */  sw         $s0, 0x20($sp)
/* 8B592A0 80085D70 21808000 */  addu       $s0, $a0, $zero
/* 8B592A4 80085D74 2400BFAF */  sw         $ra, 0x24($sp)
/* 8B592A8 80085D78 3D000292 */  lbu        $v0, 0x3D($s0)
/* 8B592AC 80085D7C 00000000 */  nop
/* 8B592B0 80085D80 0C004010 */  beqz       $v0, .Llevel_44_80085DB4
/* 8B592B4 80085D84 00000000 */   nop
/* 8B592B8 80085D88 C5E5000C */  jal        func_80039714
/* 8B592BC 80085D8C 00000000 */   nop
/* 8B592C0 80085D90 24004010 */  beqz       $v0, .Llevel_44_80085E24
/* 8B592C4 80085D94 21200002 */   addu      $a0, $s0, $zero
/* 8B592C8 80085D98 4957010C */  jal        func_80055D24
/* 8B592CC 80085D9C 04000524 */   addiu     $a1, $zero, 0x4
/* 8B592D0 80085DA0 21200002 */  addu       $a0, $s0, $zero
/* 8B592D4 80085DA4 6EDA000C */  jal        func_800369B8
/* 8B592D8 80085DA8 20000524 */   addiu     $a1, $zero, 0x20
/* 8B592DC 80085DAC 89170208 */  j          .Llevel_44_80085E24
/* 8B592E0 80085DB0 00000000 */   nop
.Llevel_44_80085DB4:
/* 8B592E4 80085DB4 48000392 */  lbu        $v1, 0x48($s0)
/* 8B592E8 80085DB8 00000000 */  nop
/* 8B592EC 80085DBC 19006010 */  beqz       $v1, .Llevel_44_80085E24
/* 8B592F0 80085DC0 01000224 */   addiu     $v0, $zero, 0x1
/* 8B592F4 80085DC4 17006214 */  bne        $v1, $v0, .Llevel_44_80085E24
/* 8B592F8 80085DC8 21200002 */   addu      $a0, $s0, $zero
/* 8B592FC 80085DCC 21280000 */  addu       $a1, $zero, $zero
/* 8B59300 80085DD0 AFEE000C */  jal        func_8003BABC
/* 8B59304 80085DD4 21300000 */   addu      $a2, $zero, $zero
/* 8B59308 80085DD8 06000424 */  addiu      $a0, $zero, 0x6
/* 8B5930C 80085DDC FC020524 */  addiu      $a1, $zero, 0x2FC
/* 8B59310 80085DE0 21300002 */  addu       $a2, $s0, $zero
/* 8B59314 80085DE4 03000224 */  addiu      $v0, $zero, 0x3
/* 8B59318 80085DE8 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B5931C 80085DEC C8000224 */  addiu      $v0, $zero, 0xC8
/* 8B59320 80085DF0 1400A2AF */  sw         $v0, 0x14($sp)
/* 8B59324 80085DF4 00010224 */  addiu      $v0, $zero, 0x100
/* 8B59328 80085DF8 01000724 */  addiu      $a3, $zero, 0x1
/* 8B5932C 80085DFC 7AE4000C */  jal        func_800391E8
/* 8B59330 80085E00 1800A2AF */   sw        $v0, 0x18($sp)
/* 8B59334 80085E04 21200002 */  addu       $a0, $s0, $zero
/* 8B59338 80085E08 4957010C */  jal        func_80055D24
/* 8B5933C 80085E0C 04000524 */   addiu     $a1, $zero, 0x4
/* 8B59340 80085E10 21200002 */  addu       $a0, $s0, $zero
/* 8B59344 80085E14 6EDA000C */  jal        func_800369B8
/* 8B59348 80085E18 38000524 */   addiu     $a1, $zero, 0x38
/* 8B5934C 80085E1C C656010C */  jal        func_80055B18
/* 8B59350 80085E20 21200002 */   addu      $a0, $s0, $zero
.Llevel_44_80085E24:
/* 8B59354 80085E24 2400BF8F */  lw         $ra, 0x24($sp)
/* 8B59358 80085E28 2000B08F */  lw         $s0, 0x20($sp)
/* 8B5935C 80085E2C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8B59360 80085E30 0800E003 */  jr         $ra
/* 8B59364 80085E34 00000000 */   nop
.size MobyUpdate_764_level_44, . - MobyUpdate_764_level_44
