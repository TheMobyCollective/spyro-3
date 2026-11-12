.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_30
/* 6782E7C 8007A14C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6782E80 8007A150 1000B0AF */  sw         $s0, 0x10($sp)
/* 6782E84 8007A154 21808000 */  addu       $s0, $a0, $zero
/* 6782E88 8007A158 1400BFAF */  sw         $ra, 0x14($sp)
/* 6782E8C 8007A15C 0000048E */  lw         $a0, 0x0($s0)
/* 6782E90 8007A160 00000000 */  nop
/* 6782E94 8007A164 0000838C */  lw         $v1, 0x0($a0)
/* 6782E98 8007A168 00000000 */  nop
/* 6782E9C 8007A16C 08006018 */  blez       $v1, .Llevel_30_8007A190
/* 6782EA0 8007A170 00000000 */   nop
/* 6782EA4 8007A174 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6782EA8 8007A178 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6782EAC 8007A17C 00000000 */  nop
/* 6782EB0 8007A180 40100200 */  sll        $v0, $v0, 1
/* 6782EB4 8007A184 23106200 */  subu       $v0, $v1, $v0
/* 6782EB8 8007A188 6AE80108 */  j          .Llevel_30_8007A1A8
/* 6782EBC 8007A18C 000082AC */   sw        $v0, 0x0($a0)
.Llevel_30_8007A190:
/* 6782EC0 8007A190 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6782EC4 8007A194 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6782EC8 8007A198 4F000392 */  lbu        $v1, 0x4F($s0)
/* 6782ECC 8007A19C 40100200 */  sll        $v0, $v0, 1
/* 6782ED0 8007A1A0 21186200 */  addu       $v1, $v1, $v0
/* 6782ED4 8007A1A4 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_30_8007A1A8:
/* 6782ED8 8007A1A8 0780043C */  lui        $a0, %hi(D_8006C648)
/* 6782EDC 8007A1AC 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 6782EE0 8007A1B0 1400028E */  lw         $v0, 0x14($s0)
/* 6782EE4 8007A1B4 40190400 */  sll        $v1, $a0, 5
/* 6782EE8 8007A1B8 21104300 */  addu       $v0, $v0, $v1
/* 6782EEC 8007A1BC C0200400 */  sll        $a0, $a0, 3
/* 6782EF0 8007A1C0 140002AE */  sw         $v0, 0x14($s0)
/* 6782EF4 8007A1C4 46000292 */  lbu        $v0, 0x46($s0)
/* 6782EF8 8007A1C8 4F000392 */  lbu        $v1, 0x4F($s0)
/* 6782EFC 8007A1CC 21104400 */  addu       $v0, $v0, $a0
/* 6782F00 8007A1D0 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 6782F04 8007A1D4 0E006014 */  bnez       $v1, .Llevel_30_8007A210
/* 6782F08 8007A1D8 460002A2 */   sb        $v0, 0x46($s0)
/* 6782F0C 8007A1DC 08000424 */  addiu      $a0, $zero, 0x8
/* 6782F10 8007A1E0 47000524 */  addiu      $a1, $zero, 0x47
/* 6782F14 8007A1E4 1400028E */  lw         $v0, 0x14($s0)
/* 6782F18 8007A1E8 0C000626 */  addiu      $a2, $s0, 0xC
/* 6782F1C 8007A1EC 60004224 */  addiu      $v0, $v0, 0x60
/* 6782F20 8007A1F0 140002AE */  sw         $v0, 0x14($s0)
/* 6782F24 8007A1F4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6782F28 8007A1F8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6782F2C 8007A1FC 00000000 */  nop
/* 6782F30 8007A200 09F84000 */  jalr       $v0
/* 6782F34 8007A204 21380000 */   addu      $a3, $zero, $zero
/* 6782F38 8007A208 C656010C */  jal        func_80055B18
/* 6782F3C 8007A20C 21200002 */   addu      $a0, $s0, $zero
.Llevel_30_8007A210:
/* 6782F40 8007A210 1400BF8F */  lw         $ra, 0x14($sp)
/* 6782F44 8007A214 1000B08F */  lw         $s0, 0x10($sp)
/* 6782F48 8007A218 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6782F4C 8007A21C 0800E003 */  jr         $ra
/* 6782F50 8007A220 00000000 */   nop
.size MobyUpdate_459_level_30, . - MobyUpdate_459_level_30
