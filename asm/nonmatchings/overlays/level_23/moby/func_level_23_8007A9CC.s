.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8007A9CC
/* 5A96EFC 8007A9CC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5A96F00 8007A9D0 2000B0AF */  sw         $s0, 0x20($sp)
/* 5A96F04 8007A9D4 21808000 */  addu       $s0, $a0, $zero
/* 5A96F08 8007A9D8 2400BFAF */  sw         $ra, 0x24($sp)
/* 5A96F0C 8007A9DC 36000386 */  lh         $v1, 0x36($s0)
/* 5A96F10 8007A9E0 E5020224 */  addiu      $v0, $zero, 0x2E5
/* 5A96F14 8007A9E4 1D006214 */  bne        $v1, $v0, .Llevel_23_8007AA5C
/* 5A96F18 8007A9E8 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 5A96F1C 8007A9EC 0780043C */  lui        $a0, %hi(D_8006C640)
/* 5A96F20 8007A9F0 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 5A96F24 8007A9F4 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 5A96F28 8007A9F8 18008200 */  mult       $a0, $v0
/* 5A96F2C 8007A9FC C31F0400 */  sra        $v1, $a0, 31
/* 5A96F30 8007AA00 10400000 */  mfhi       $t0
/* 5A96F34 8007AA04 23180301 */  subu       $v1, $t0, $v1
/* 5A96F38 8007AA08 40100300 */  sll        $v0, $v1, 1
/* 5A96F3C 8007AA0C 21104300 */  addu       $v0, $v0, $v1
/* 5A96F40 8007AA10 12008214 */  bne        $a0, $v0, .Llevel_23_8007AA5C
/* 5A96F44 8007AA14 00000000 */   nop
/* 5A96F48 8007AA18 9171010C */  jal        rand
/* 5A96F4C 8007AA1C 00000000 */   nop
/* 5A96F50 8007AA20 03004230 */  andi       $v0, $v0, 0x3
/* 5A96F54 8007AA24 9171010C */  jal        rand
/* 5A96F58 8007AA28 1000A2AF */   sw        $v0, 0x10($sp)
/* 5A96F5C 8007AA2C 01000424 */  addiu      $a0, $zero, 0x1
/* 5A96F60 8007AA30 03004230 */  andi       $v0, $v0, 0x3
/* 5A96F64 8007AA34 1400A2AF */  sw         $v0, 0x14($sp)
/* 5A96F68 8007AA38 14000224 */  addiu      $v0, $zero, 0x14
/* 5A96F6C 8007AA3C 01000524 */  addiu      $a1, $zero, 0x1
/* 5A96F70 8007AA40 0C000626 */  addiu      $a2, $s0, 0xC
/* 5A96F74 8007AA44 1800A2AF */  sw         $v0, 0x18($sp)
/* 5A96F78 8007AA48 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5A96F7C 8007AA4C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5A96F80 8007AA50 00000000 */  nop
/* 5A96F84 8007AA54 09F84000 */  jalr       $v0
/* 5A96F88 8007AA58 1000A727 */   addiu     $a3, $sp, 0x10
.Llevel_23_8007AA5C:
/* 5A96F8C 8007AA5C C5E5000C */  jal        func_80039714
/* 5A96F90 8007AA60 21200002 */   addu      $a0, $s0, $zero
/* 5A96F94 8007AA64 2400BF8F */  lw         $ra, 0x24($sp)
/* 5A96F98 8007AA68 2000B08F */  lw         $s0, 0x20($sp)
/* 5A96F9C 8007AA6C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 5A96FA0 8007AA70 0800E003 */  jr         $ra
/* 5A96FA4 8007AA74 00000000 */   nop
.size func_level_23_8007A9CC, . - func_level_23_8007A9CC
