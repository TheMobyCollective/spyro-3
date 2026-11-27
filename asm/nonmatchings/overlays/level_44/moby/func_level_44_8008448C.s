.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_752_level_44
/* 8B579BC 8008448C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8B579C0 80084490 2000B0AF */  sw         $s0, 0x20($sp)
/* 8B579C4 80084494 21808000 */  addu       $s0, $a0, $zero
/* 8B579C8 80084498 2400BFAF */  sw         $ra, 0x24($sp)
/* 8B579CC 8008449C 48000392 */  lbu        $v1, 0x48($s0)
/* 8B579D0 800844A0 32000224 */  addiu      $v0, $zero, 0x32
/* 8B579D4 800844A4 0A006214 */  bne        $v1, $v0, .Llevel_44_800844D0
/* 8B579D8 800844A8 00000000 */   nop
/* 8B579DC 800844AC 4957010C */  jal        func_80055D24
/* 8B579E0 800844B0 04000524 */   addiu     $a1, $zero, 0x4
/* 8B579E4 800844B4 21200002 */  addu       $a0, $s0, $zero
/* 8B579E8 800844B8 6EDA000C */  jal        func_800369B8
/* 8B579EC 800844BC 18000524 */   addiu     $a1, $zero, 0x18
/* 8B579F0 800844C0 C656010C */  jal        func_80055B18
/* 8B579F4 800844C4 21200002 */   addu      $a0, $s0, $zero
/* 8B579F8 800844C8 43110208 */  j          .Llevel_44_8008450C
/* 8B579FC 800844CC 00000000 */   nop
.Llevel_44_800844D0:
/* 8B57A00 800844D0 C5E5000C */  jal        func_80039714
/* 8B57A04 800844D4 21200002 */   addu      $a0, $s0, $zero
/* 8B57A08 800844D8 36000386 */  lh         $v1, 0x36($s0)
/* 8B57A0C 800844DC 13010224 */  addiu      $v0, $zero, 0x113
/* 8B57A10 800844E0 0A006214 */  bne        $v1, $v0, .Llevel_44_8008450C
/* 8B57A14 800844E4 00000000 */   nop
/* 8B57A18 800844E8 5A3C010C */  jal        func_8004F168
/* 8B57A1C 800844EC 1000A427 */   addiu     $a0, $sp, 0x10
/* 8B57A20 800844F0 01000424 */  addiu      $a0, $zero, 0x1
/* 8B57A24 800844F4 21280000 */  addu       $a1, $zero, $zero
/* 8B57A28 800844F8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B57A2C 800844FC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B57A30 80084500 0C000626 */  addiu      $a2, $s0, 0xC
/* 8B57A34 80084504 09F84000 */  jalr       $v0
/* 8B57A38 80084508 1000A727 */   addiu     $a3, $sp, 0x10
.Llevel_44_8008450C:
/* 8B57A3C 8008450C 2400BF8F */  lw         $ra, 0x24($sp)
/* 8B57A40 80084510 2000B08F */  lw         $s0, 0x20($sp)
/* 8B57A44 80084514 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8B57A48 80084518 0800E003 */  jr         $ra
/* 8B57A4C 8008451C 00000000 */   nop
.size MobyUpdate_752_level_44, . - MobyUpdate_752_level_44
