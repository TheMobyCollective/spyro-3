.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_423_level_14
/* 47C8DE4 800898B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47C8DE8 800898B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 47C8DEC 800898BC 21808000 */  addu       $s0, $a0, $zero
/* 47C8DF0 800898C0 1400BFAF */  sw         $ra, 0x14($sp)
/* 47C8DF4 800898C4 48000392 */  lbu        $v1, 0x48($s0)
/* 47C8DF8 800898C8 32000224 */  addiu      $v0, $zero, 0x32
/* 47C8DFC 800898CC 12006210 */  beq        $v1, $v0, .Llevel_14_80089918
/* 47C8E00 800898D0 00000000 */   nop
/* 47C8E04 800898D4 C5E5000C */  jal        func_80039714
/* 47C8E08 800898D8 21200002 */   addu      $a0, $s0, $zero
/* 47C8E0C 800898DC 10004010 */  beqz       $v0, .Llevel_14_80089920
/* 47C8E10 800898E0 21200002 */   addu      $a0, $s0, $zero
/* 47C8E14 800898E4 4957010C */  jal        func_80055D24
/* 47C8E18 800898E8 04000524 */   addiu     $a1, $zero, 0x4
/* 47C8E1C 800898EC 21200002 */  addu       $a0, $s0, $zero
/* 47C8E20 800898F0 6EDA000C */  jal        func_800369B8
/* 47C8E24 800898F4 20000524 */   addiu     $a1, $zero, 0x20
/* 47C8E28 800898F8 08000424 */  addiu      $a0, $zero, 0x8
/* 47C8E2C 800898FC 46000524 */  addiu      $a1, $zero, 0x46
/* 47C8E30 80089900 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47C8E34 80089904 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47C8E38 80089908 0C000626 */  addiu      $a2, $s0, 0xC
/* 47C8E3C 8008990C 09F84000 */  jalr       $v0
/* 47C8E40 80089910 10000724 */   addiu     $a3, $zero, 0x10
/* 47C8E44 80089914 21200002 */  addu       $a0, $s0, $zero
.Llevel_14_80089918:
/* 47C8E48 80089918 C656010C */  jal        func_80055B18
/* 47C8E4C 8008991C 00000000 */   nop
.Llevel_14_80089920:
/* 47C8E50 80089920 1400BF8F */  lw         $ra, 0x14($sp)
/* 47C8E54 80089924 1000B08F */  lw         $s0, 0x10($sp)
/* 47C8E58 80089928 1800BD27 */  addiu      $sp, $sp, 0x18
/* 47C8E5C 8008992C 0800E003 */  jr         $ra
/* 47C8E60 80089930 00000000 */   nop
.size MobyUpdate_423_level_14, . - MobyUpdate_423_level_14
