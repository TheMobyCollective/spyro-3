.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1003_level_31
/* 6A94ACC 80079D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6A94AD0 80079DA0 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A94AD4 80079DA4 21808000 */  addu       $s0, $a0, $zero
/* 6A94AD8 80079DA8 1400BFAF */  sw         $ra, 0x14($sp)
/* 6A94ADC 80079DAC 49000292 */  lbu        $v0, 0x49($s0)
/* 6A94AE0 80079DB0 00000000 */  nop
/* 6A94AE4 80079DB4 0C004014 */  bnez       $v0, .Llevel_31_80079DE8
/* 6A94AE8 80079DB8 01000424 */   addiu     $a0, $zero, 0x1
/* 6A94AEC 80079DBC 40000424 */  addiu      $a0, $zero, 0x40
/* 6A94AF0 80079DC0 0E000524 */  addiu      $a1, $zero, 0xE
/* 6A94AF4 80079DC4 01000624 */  addiu      $a2, $zero, 0x1
/* 6A94AF8 80079DC8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6A94AFC 80079DCC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6A94B00 80079DD0 00000000 */  nop
/* 6A94B04 80079DD4 09F84000 */  jalr       $v0
/* 6A94B08 80079DD8 21380000 */   addu      $a3, $zero, $zero
/* 6A94B0C 80079DDC 01000224 */  addiu      $v0, $zero, 0x1
/* 6A94B10 80079DE0 81E70108 */  j          .Llevel_31_80079E04
/* 6A94B14 80079DE4 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_31_80079DE8:
/* 6A94B18 80079DE8 0E000524 */  addiu      $a1, $zero, 0xE
/* 6A94B1C 80079DEC 21300000 */  addu       $a2, $zero, $zero
/* 6A94B20 80079DF0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6A94B24 80079DF4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6A94B28 80079DF8 00000000 */  nop
/* 6A94B2C 80079DFC 09F84000 */  jalr       $v0
/* 6A94B30 80079E00 21380000 */   addu      $a3, $zero, $zero
.Llevel_31_80079E04:
/* 6A94B34 80079E04 1400BF8F */  lw         $ra, 0x14($sp)
/* 6A94B38 80079E08 1000B08F */  lw         $s0, 0x10($sp)
/* 6A94B3C 80079E0C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6A94B40 80079E10 0800E003 */  jr         $ra
/* 6A94B44 80079E14 00000000 */   nop
.size MobyUpdate_1003_level_31, . - MobyUpdate_1003_level_31
