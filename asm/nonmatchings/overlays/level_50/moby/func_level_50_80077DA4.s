.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_50
/* 95CC2D4 80077DA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 95CC2D8 80077DA8 1000B0AF */  sw         $s0, 0x10($sp)
/* 95CC2DC 80077DAC 21808000 */  addu       $s0, $a0, $zero
/* 95CC2E0 80077DB0 1800BFAF */  sw         $ra, 0x18($sp)
/* 95CC2E4 80077DB4 1400B1AF */  sw         $s1, 0x14($sp)
/* 95CC2E8 80077DB8 0000118E */  lw         $s1, 0x0($s0)
/* 95CC2EC 80077DBC 04000524 */  addiu      $a1, $zero, 0x4
/* 95CC2F0 80077DC0 69D6000C */  jal        func_800359A4
/* 95CC2F4 80077DC4 21202002 */   addu      $a0, $s1, $zero
/* 95CC2F8 80077DC8 03004010 */  beqz       $v0, .Llevel_50_80077DD8
/* 95CC2FC 80077DCC 00000000 */   nop
/* 95CC300 80077DD0 C656010C */  jal        func_80055B18
/* 95CC304 80077DD4 21200002 */   addu      $a0, $s0, $zero
.Llevel_50_80077DD8:
/* 95CC308 80077DD8 0000238E */  lw         $v1, 0x0($s1)
/* 95CC30C 80077DDC 10000224 */  addiu      $v0, $zero, 0x10
/* 95CC310 80077DE0 23104300 */  subu       $v0, $v0, $v1
/* 95CC314 80077DE4 03004104 */  bgez       $v0, .Llevel_50_80077DF4
/* 95CC318 80077DE8 30004224 */   addiu     $v0, $v0, 0x30
/* 95CC31C 80077DEC 21100000 */  addu       $v0, $zero, $zero
/* 95CC320 80077DF0 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_50_80077DF4:
/* 95CC324 80077DF4 570002A2 */  sb         $v0, 0x57($s0)
/* 95CC328 80077DF8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 95CC32C 80077DFC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 95CC330 80077E00 00000000 */  nop
/* 95CC334 80077E04 40180200 */  sll        $v1, $v0, 1
/* 95CC338 80077E08 21186200 */  addu       $v1, $v1, $v0
/* 95CC33C 80077E0C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 95CC340 80077E10 40180300 */  sll        $v1, $v1, 1
/* 95CC344 80077E14 23104300 */  subu       $v0, $v0, $v1
/* 95CC348 80077E18 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 95CC34C 80077E1C FF004230 */  andi       $v0, $v0, 0xFF
/* 95CC350 80077E20 8000422C */  sltiu      $v0, $v0, 0x80
/* 95CC354 80077E24 02004014 */  bnez       $v0, .Llevel_50_80077E30
/* 95CC358 80077E28 00000000 */   nop
/* 95CC35C 80077E2C 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_50_80077E30:
/* 95CC360 80077E30 4F000292 */  lbu        $v0, 0x4F($s0)
/* 95CC364 80077E34 00000000 */  nop
/* 95CC368 80077E38 1800422C */  sltiu      $v0, $v0, 0x18
/* 95CC36C 80077E3C 02004010 */  beqz       $v0, .Llevel_50_80077E48
/* 95CC370 80077E40 18000224 */   addiu     $v0, $zero, 0x18
/* 95CC374 80077E44 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_50_80077E48:
/* 95CC378 80077E48 1800BF8F */  lw         $ra, 0x18($sp)
/* 95CC37C 80077E4C 1400B18F */  lw         $s1, 0x14($sp)
/* 95CC380 80077E50 1000B08F */  lw         $s0, 0x10($sp)
/* 95CC384 80077E54 2000BD27 */  addiu      $sp, $sp, 0x20
/* 95CC388 80077E58 0800E003 */  jr         $ra
/* 95CC38C 80077E5C 00000000 */   nop
.size MobyUpdate_541_level_50, . - MobyUpdate_541_level_50
