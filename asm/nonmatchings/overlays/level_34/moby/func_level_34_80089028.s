.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_423_level_34
/* 74E4D58 80089028 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 74E4D5C 8008902C 1000B0AF */  sw         $s0, 0x10($sp)
/* 74E4D60 80089030 21808000 */  addu       $s0, $a0, $zero
/* 74E4D64 80089034 1400BFAF */  sw         $ra, 0x14($sp)
/* 74E4D68 80089038 48000392 */  lbu        $v1, 0x48($s0)
/* 74E4D6C 8008903C 32000224 */  addiu      $v0, $zero, 0x32
/* 74E4D70 80089040 12006210 */  beq        $v1, $v0, .Llevel_34_8008908C
/* 74E4D74 80089044 00000000 */   nop
/* 74E4D78 80089048 C5E5000C */  jal        func_80039714
/* 74E4D7C 8008904C 21200002 */   addu      $a0, $s0, $zero
/* 74E4D80 80089050 10004010 */  beqz       $v0, .Llevel_34_80089094
/* 74E4D84 80089054 21200002 */   addu      $a0, $s0, $zero
/* 74E4D88 80089058 4957010C */  jal        func_80055D24
/* 74E4D8C 8008905C 04000524 */   addiu     $a1, $zero, 0x4
/* 74E4D90 80089060 21200002 */  addu       $a0, $s0, $zero
/* 74E4D94 80089064 6EDA000C */  jal        func_800369B8
/* 74E4D98 80089068 20000524 */   addiu     $a1, $zero, 0x20
/* 74E4D9C 8008906C 08000424 */  addiu      $a0, $zero, 0x8
/* 74E4DA0 80089070 46000524 */  addiu      $a1, $zero, 0x46
/* 74E4DA4 80089074 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74E4DA8 80089078 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74E4DAC 8008907C 0C000626 */  addiu      $a2, $s0, 0xC
/* 74E4DB0 80089080 09F84000 */  jalr       $v0
/* 74E4DB4 80089084 10000724 */   addiu     $a3, $zero, 0x10
/* 74E4DB8 80089088 21200002 */  addu       $a0, $s0, $zero
.Llevel_34_8008908C:
/* 74E4DBC 8008908C C656010C */  jal        func_80055B18
/* 74E4DC0 80089090 00000000 */   nop
.Llevel_34_80089094:
/* 74E4DC4 80089094 1400BF8F */  lw         $ra, 0x14($sp)
/* 74E4DC8 80089098 1000B08F */  lw         $s0, 0x10($sp)
/* 74E4DCC 8008909C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 74E4DD0 800890A0 0800E003 */  jr         $ra
/* 74E4DD4 800890A4 00000000 */   nop
.size MobyUpdate_423_level_34, . - MobyUpdate_423_level_34
