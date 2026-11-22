.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1003_level_50
/* 95CEC0C 8007A6DC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95CEC10 8007A6E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 95CEC14 8007A6E4 21808000 */  addu       $s0, $a0, $zero
/* 95CEC18 8007A6E8 1400BFAF */  sw         $ra, 0x14($sp)
/* 95CEC1C 8007A6EC 49000292 */  lbu        $v0, 0x49($s0)
/* 95CEC20 8007A6F0 00000000 */  nop
/* 95CEC24 8007A6F4 0C004014 */  bnez       $v0, .Llevel_50_8007A728
/* 95CEC28 8007A6F8 02000424 */   addiu     $a0, $zero, 0x2
/* 95CEC2C 8007A6FC 80000424 */  addiu      $a0, $zero, 0x80
/* 95CEC30 8007A700 0E000524 */  addiu      $a1, $zero, 0xE
/* 95CEC34 8007A704 01000624 */  addiu      $a2, $zero, 0x1
/* 95CEC38 8007A708 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95CEC3C 8007A70C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95CEC40 8007A710 00000000 */  nop
/* 95CEC44 8007A714 09F84000 */  jalr       $v0
/* 95CEC48 8007A718 21380000 */   addu      $a3, $zero, $zero
/* 95CEC4C 8007A71C 01000224 */  addiu      $v0, $zero, 0x1
/* 95CEC50 8007A720 D1E90108 */  j          .Llevel_50_8007A744
/* 95CEC54 8007A724 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_50_8007A728:
/* 95CEC58 8007A728 0E000524 */  addiu      $a1, $zero, 0xE
/* 95CEC5C 8007A72C 21300000 */  addu       $a2, $zero, $zero
/* 95CEC60 8007A730 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95CEC64 8007A734 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95CEC68 8007A738 00000000 */  nop
/* 95CEC6C 8007A73C 09F84000 */  jalr       $v0
/* 95CEC70 8007A740 21380000 */   addu      $a3, $zero, $zero
.Llevel_50_8007A744:
/* 95CEC74 8007A744 1400BF8F */  lw         $ra, 0x14($sp)
/* 95CEC78 8007A748 1000B08F */  lw         $s0, 0x10($sp)
/* 95CEC7C 8007A74C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 95CEC80 8007A750 0800E003 */  jr         $ra
/* 95CEC84 8007A754 00000000 */   nop
.size MobyUpdate_1003_level_50, . - MobyUpdate_1003_level_50
