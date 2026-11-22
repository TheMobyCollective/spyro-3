.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_77_level_47
/* 9117A48 80078518 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9117A4C 8007851C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9117A50 80078520 21808000 */  addu       $s0, $a0, $zero
/* 9117A54 80078524 0C000426 */  addiu      $a0, $s0, 0xC
/* 9117A58 80078528 00080524 */  addiu      $a1, $zero, 0x800
/* 9117A5C 8007852C 1400BFAF */  sw         $ra, 0x14($sp)
/* 9117A60 80078530 A270000C */  jal        func_8001C288
/* 9117A64 80078534 07000624 */   addiu     $a2, $zero, 0x7
/* 9117A68 80078538 0780023C */  lui        $v0, %hi(D_8006C770)
/* 9117A6C 8007853C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 9117A70 80078540 00000000 */  nop
/* 9117A74 80078544 03004010 */  beqz       $v0, .Llevel_47_80078554
/* 9117A78 80078548 00000000 */   nop
/* 9117A7C 8007854C C656010C */  jal        func_80055B18
/* 9117A80 80078550 21200002 */   addu      $a0, $s0, $zero
.Llevel_47_80078554:
/* 9117A84 80078554 1400BF8F */  lw         $ra, 0x14($sp)
/* 9117A88 80078558 1000B08F */  lw         $s0, 0x10($sp)
/* 9117A8C 8007855C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 9117A90 80078560 0800E003 */  jr         $ra
/* 9117A94 80078564 00000000 */   nop
.size MobyUpdate_77_level_47, . - MobyUpdate_77_level_47
