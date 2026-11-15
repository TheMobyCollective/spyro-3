.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_34
/* 74DA444 8007E714 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 74DA448 8007E718 1000B0AF */  sw         $s0, 0x10($sp)
/* 74DA44C 8007E71C 21808000 */  addu       $s0, $a0, $zero
/* 74DA450 8007E720 1400BFAF */  sw         $ra, 0x14($sp)
/* 74DA454 8007E724 0000038E */  lw         $v1, 0x0($s0)
/* 74DA458 8007E728 00000000 */  nop
/* 74DA45C 8007E72C 0000628C */  lw         $v0, 0x0($v1)
/* 74DA460 8007E730 0680013C */  lui        $at, %hi(D_80066FCC)
/* 74DA464 8007E734 21082200 */  addu       $at, $at, $v0
/* 74DA468 8007E738 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 74DA46C 8007E73C 0780013C */  lui        $at, %hi(D_80070300)
/* 74DA470 8007E740 21082200 */  addu       $at, $at, $v0
/* 74DA474 8007E744 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 74DA478 8007E748 00000000 */  nop
/* 74DA47C 8007E74C 01004230 */  andi       $v0, $v0, 0x1
/* 74DA480 8007E750 04004010 */  beqz       $v0, .Llevel_34_8007E764
/* 74DA484 8007E754 FC000524 */   addiu     $a1, $zero, 0xFC
/* 74DA488 8007E758 0400648C */  lw         $a0, 0x4($v1)
/* 74DA48C 8007E75C B687000C */  jal        func_80021ED8
/* 74DA490 8007E760 21300000 */   addu      $a2, $zero, $zero
.Llevel_34_8007E764:
/* 74DA494 8007E764 C656010C */  jal        func_80055B18
/* 74DA498 8007E768 21200002 */   addu      $a0, $s0, $zero
/* 74DA49C 8007E76C 1400BF8F */  lw         $ra, 0x14($sp)
/* 74DA4A0 8007E770 1000B08F */  lw         $s0, 0x10($sp)
/* 74DA4A4 8007E774 1800BD27 */  addiu      $sp, $sp, 0x18
/* 74DA4A8 8007E778 0800E003 */  jr         $ra
/* 74DA4AC 8007E77C 00000000 */   nop
.size MobyUpdate_993_level_34, . - MobyUpdate_993_level_34
