.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_290_level_22
/* 57773B8 80087688 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 57773BC 8008768C 1000B0AF */  sw         $s0, 0x10($sp)
/* 57773C0 80087690 1400BFAF */  sw         $ra, 0x14($sp)
/* 57773C4 80087694 C5E5000C */  jal        func_80039714
/* 57773C8 80087698 21808000 */   addu      $s0, $a0, $zero
/* 57773CC 8008769C 36000386 */  lh         $v1, 0x36($s0)
/* 57773D0 800876A0 39020224 */  addiu      $v0, $zero, 0x239
/* 57773D4 800876A4 04006214 */  bne        $v1, $v0, .Llevel_22_800876B8
/* 57773D8 800876A8 21200002 */   addu      $a0, $s0, $zero
/* 57773DC 800876AC 09000524 */  addiu      $a1, $zero, 0x9
/* 57773E0 800876B0 C4EE000C */  jal        func_8003BB10
/* 57773E4 800876B4 21300000 */   addu      $a2, $zero, $zero
.Llevel_22_800876B8:
/* 57773E8 800876B8 1400BF8F */  lw         $ra, 0x14($sp)
/* 57773EC 800876BC 1000B08F */  lw         $s0, 0x10($sp)
/* 57773F0 800876C0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 57773F4 800876C4 0800E003 */  jr         $ra
/* 57773F8 800876C8 00000000 */   nop
.size MobyUpdate_290_level_22, . - MobyUpdate_290_level_22
