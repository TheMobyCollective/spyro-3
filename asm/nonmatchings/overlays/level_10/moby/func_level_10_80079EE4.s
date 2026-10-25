.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_10
/* 3ADEC14 80079EE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3ADEC18 80079EE8 1000B0AF */  sw         $s0, 0x10($sp)
/* 3ADEC1C 80079EEC 21808000 */  addu       $s0, $a0, $zero
/* 3ADEC20 80079EF0 1400BFAF */  sw         $ra, 0x14($sp)
/* 3ADEC24 80079EF4 0000048E */  lw         $a0, 0x0($s0)
/* 3ADEC28 80079EF8 00000000 */  nop
/* 3ADEC2C 80079EFC 0000838C */  lw         $v1, 0x0($a0)
/* 3ADEC30 80079F00 00000000 */  nop
/* 3ADEC34 80079F04 08006018 */  blez       $v1, .Llevel_10_80079F28
/* 3ADEC38 80079F08 00000000 */   nop
/* 3ADEC3C 80079F0C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 3ADEC40 80079F10 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 3ADEC44 80079F14 00000000 */  nop
/* 3ADEC48 80079F18 40100200 */  sll        $v0, $v0, 1
/* 3ADEC4C 80079F1C 23106200 */  subu       $v0, $v1, $v0
/* 3ADEC50 80079F20 D0E70108 */  j          .Llevel_10_80079F40
/* 3ADEC54 80079F24 000082AC */   sw        $v0, 0x0($a0)
.Llevel_10_80079F28:
/* 3ADEC58 80079F28 0780023C */  lui        $v0, %hi(D_8006C648)
/* 3ADEC5C 80079F2C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 3ADEC60 80079F30 4F000392 */  lbu        $v1, 0x4F($s0)
/* 3ADEC64 80079F34 40100200 */  sll        $v0, $v0, 1
/* 3ADEC68 80079F38 21186200 */  addu       $v1, $v1, $v0
/* 3ADEC6C 80079F3C 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_10_80079F40:
/* 3ADEC70 80079F40 0780043C */  lui        $a0, %hi(D_8006C648)
/* 3ADEC74 80079F44 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 3ADEC78 80079F48 1400028E */  lw         $v0, 0x14($s0)
/* 3ADEC7C 80079F4C 40190400 */  sll        $v1, $a0, 5
/* 3ADEC80 80079F50 21104300 */  addu       $v0, $v0, $v1
/* 3ADEC84 80079F54 C0200400 */  sll        $a0, $a0, 3
/* 3ADEC88 80079F58 140002AE */  sw         $v0, 0x14($s0)
/* 3ADEC8C 80079F5C 46000292 */  lbu        $v0, 0x46($s0)
/* 3ADEC90 80079F60 4F000392 */  lbu        $v1, 0x4F($s0)
/* 3ADEC94 80079F64 21104400 */  addu       $v0, $v0, $a0
/* 3ADEC98 80079F68 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 3ADEC9C 80079F6C 0E006014 */  bnez       $v1, .Llevel_10_80079FA8
/* 3ADECA0 80079F70 460002A2 */   sb        $v0, 0x46($s0)
/* 3ADECA4 80079F74 08000424 */  addiu      $a0, $zero, 0x8
/* 3ADECA8 80079F78 47000524 */  addiu      $a1, $zero, 0x47
/* 3ADECAC 80079F7C 1400028E */  lw         $v0, 0x14($s0)
/* 3ADECB0 80079F80 0C000626 */  addiu      $a2, $s0, 0xC
/* 3ADECB4 80079F84 60004224 */  addiu      $v0, $v0, 0x60
/* 3ADECB8 80079F88 140002AE */  sw         $v0, 0x14($s0)
/* 3ADECBC 80079F8C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADECC0 80079F90 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADECC4 80079F94 00000000 */  nop
/* 3ADECC8 80079F98 09F84000 */  jalr       $v0
/* 3ADECCC 80079F9C 21380000 */   addu      $a3, $zero, $zero
/* 3ADECD0 80079FA0 C656010C */  jal        func_80055B18
/* 3ADECD4 80079FA4 21200002 */   addu      $a0, $s0, $zero
.Llevel_10_80079FA8:
/* 3ADECD8 80079FA8 1400BF8F */  lw         $ra, 0x14($sp)
/* 3ADECDC 80079FAC 1000B08F */  lw         $s0, 0x10($sp)
/* 3ADECE0 80079FB0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3ADECE4 80079FB4 0800E003 */  jr         $ra
/* 3ADECE8 80079FB8 00000000 */   nop
.size MobyUpdate_459_level_10, . - MobyUpdate_459_level_10
