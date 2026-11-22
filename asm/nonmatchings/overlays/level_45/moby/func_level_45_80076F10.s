.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_45
/* 8D33440 80076F10 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8D33444 80076F14 1000B0AF */  sw         $s0, 0x10($sp)
/* 8D33448 80076F18 21808000 */  addu       $s0, $a0, $zero
/* 8D3344C 80076F1C 1800BFAF */  sw         $ra, 0x18($sp)
/* 8D33450 80076F20 1400B1AF */  sw         $s1, 0x14($sp)
/* 8D33454 80076F24 0000118E */  lw         $s1, 0x0($s0)
/* 8D33458 80076F28 04000524 */  addiu      $a1, $zero, 0x4
/* 8D3345C 80076F2C 69D6000C */  jal        func_800359A4
/* 8D33460 80076F30 21202002 */   addu      $a0, $s1, $zero
/* 8D33464 80076F34 03004010 */  beqz       $v0, .Llevel_45_80076F44
/* 8D33468 80076F38 00000000 */   nop
/* 8D3346C 80076F3C C656010C */  jal        func_80055B18
/* 8D33470 80076F40 21200002 */   addu      $a0, $s0, $zero
.Llevel_45_80076F44:
/* 8D33474 80076F44 0000238E */  lw         $v1, 0x0($s1)
/* 8D33478 80076F48 10000224 */  addiu      $v0, $zero, 0x10
/* 8D3347C 80076F4C 23104300 */  subu       $v0, $v0, $v1
/* 8D33480 80076F50 03004104 */  bgez       $v0, .Llevel_45_80076F60
/* 8D33484 80076F54 30004224 */   addiu     $v0, $v0, 0x30
/* 8D33488 80076F58 21100000 */  addu       $v0, $zero, $zero
/* 8D3348C 80076F5C 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_45_80076F60:
/* 8D33490 80076F60 570002A2 */  sb         $v0, 0x57($s0)
/* 8D33494 80076F64 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8D33498 80076F68 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8D3349C 80076F6C 00000000 */  nop
/* 8D334A0 80076F70 40180200 */  sll        $v1, $v0, 1
/* 8D334A4 80076F74 21186200 */  addu       $v1, $v1, $v0
/* 8D334A8 80076F78 4F000292 */  lbu        $v0, 0x4F($s0)
/* 8D334AC 80076F7C 40180300 */  sll        $v1, $v1, 1
/* 8D334B0 80076F80 23104300 */  subu       $v0, $v0, $v1
/* 8D334B4 80076F84 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 8D334B8 80076F88 FF004230 */  andi       $v0, $v0, 0xFF
/* 8D334BC 80076F8C 8000422C */  sltiu      $v0, $v0, 0x80
/* 8D334C0 80076F90 02004014 */  bnez       $v0, .Llevel_45_80076F9C
/* 8D334C4 80076F94 00000000 */   nop
/* 8D334C8 80076F98 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_45_80076F9C:
/* 8D334CC 80076F9C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 8D334D0 80076FA0 00000000 */  nop
/* 8D334D4 80076FA4 1800422C */  sltiu      $v0, $v0, 0x18
/* 8D334D8 80076FA8 02004010 */  beqz       $v0, .Llevel_45_80076FB4
/* 8D334DC 80076FAC 18000224 */   addiu     $v0, $zero, 0x18
/* 8D334E0 80076FB0 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_45_80076FB4:
/* 8D334E4 80076FB4 1800BF8F */  lw         $ra, 0x18($sp)
/* 8D334E8 80076FB8 1400B18F */  lw         $s1, 0x14($sp)
/* 8D334EC 80076FBC 1000B08F */  lw         $s0, 0x10($sp)
/* 8D334F0 80076FC0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8D334F4 80076FC4 0800E003 */  jr         $ra
/* 8D334F8 80076FC8 00000000 */   nop
.size MobyUpdate_541_level_45, . - MobyUpdate_541_level_45
