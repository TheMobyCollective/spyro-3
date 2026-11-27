.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_744_level_44
/* 8B57954 80084424 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8B57958 80084428 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B5795C 8008442C 1400BFAF */  sw         $ra, 0x14($sp)
/* 8B57960 80084430 C5E5000C */  jal        func_80039714
/* 8B57964 80084434 21808000 */   addu      $s0, $a0, $zero
/* 8B57968 80084438 0F004010 */  beqz       $v0, .Llevel_44_80084478
/* 8B5796C 8008443C 21200002 */   addu      $a0, $s0, $zero
/* 8B57970 80084440 4957010C */  jal        func_80055D24
/* 8B57974 80084444 04000524 */   addiu     $a1, $zero, 0x4
/* 8B57978 80084448 21200002 */  addu       $a0, $s0, $zero
/* 8B5797C 8008444C 6EDA000C */  jal        func_800369B8
/* 8B57980 80084450 30000524 */   addiu     $a1, $zero, 0x30
/* 8B57984 80084454 0A000424 */  addiu      $a0, $zero, 0xA
/* 8B57988 80084458 46000524 */  addiu      $a1, $zero, 0x46
/* 8B5798C 8008445C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B57990 80084460 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B57994 80084464 0C000626 */  addiu      $a2, $s0, 0xC
/* 8B57998 80084468 09F84000 */  jalr       $v0
/* 8B5799C 8008446C 10000724 */   addiu     $a3, $zero, 0x10
/* 8B579A0 80084470 C656010C */  jal        func_80055B18
/* 8B579A4 80084474 21200002 */   addu      $a0, $s0, $zero
.Llevel_44_80084478:
/* 8B579A8 80084478 1400BF8F */  lw         $ra, 0x14($sp)
/* 8B579AC 8008447C 1000B08F */  lw         $s0, 0x10($sp)
/* 8B579B0 80084480 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8B579B4 80084484 0800E003 */  jr         $ra
/* 8B579B8 80084488 00000000 */   nop
.size MobyUpdate_744_level_44, . - MobyUpdate_744_level_44
