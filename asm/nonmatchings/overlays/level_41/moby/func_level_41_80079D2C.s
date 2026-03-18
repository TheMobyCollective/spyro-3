.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_41_80079D2C
/* 813FA5C 80079D2C B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 813FA60 80079D30 3800B0AF */  sw         $s0, 0x38($sp)
/* 813FA64 80079D34 21808000 */  addu       $s0, $a0, $zero
/* 813FA68 80079D38 4400BFAF */  sw         $ra, 0x44($sp)
/* 813FA6C 80079D3C 4000B2AF */  sw         $s2, 0x40($sp)
/* 813FA70 80079D40 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 813FA74 80079D44 4D000292 */  lbu        $v0, 0x4D($s0)
/* 813FA78 80079D48 0000118E */  lw         $s1, 0x0($s0)
/* 813FA7C 80079D4C 03004014 */  bnez       $v0, .Llevel_41_80079D5C
/* 813FA80 80079D50 00000000 */   nop
/* 813FA84 80079D54 C656010C */  jal        func_80055B18
/* 813FA88 80079D58 00000000 */   nop
.Llevel_41_80079D5C:
/* 813FA8C 80079D5C 49000292 */  lbu        $v0, 0x49($s0)
/* 813FA90 80079D60 00000000 */  nop
/* 813FA94 80079D64 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 813FA98 80079D68 490002A2 */  sb         $v0, 0x49($s0)
/* 813FA9C 80079D6C FF004230 */  andi       $v0, $v0, 0xFF
/* 813FAA0 80079D70 07004010 */  beqz       $v0, .Llevel_41_80079D90
/* 813FAA4 80079D74 08000424 */   addiu     $a0, $zero, 0x8
/* 813FAA8 80079D78 1400028E */  lw         $v0, 0x14($s0)
/* 813FAAC 80079D7C 0C00238E */  lw         $v1, 0xC($s1)
/* 813FAB0 80079D80 00000000 */  nop
/* 813FAB4 80079D84 2A104300 */  slt        $v0, $v0, $v1
/* 813FAB8 80079D88 0B004010 */  beqz       $v0, .Llevel_41_80079DB8
/* 813FABC 80079D8C 0C001226 */   addiu     $s2, $s0, 0xC
.Llevel_41_80079D90:
/* 813FAC0 80079D90 46000524 */  addiu      $a1, $zero, 0x46
/* 813FAC4 80079D94 0C000626 */  addiu      $a2, $s0, 0xC
/* 813FAC8 80079D98 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 813FACC 80079D9C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 813FAD0 80079DA0 00000000 */  nop
/* 813FAD4 80079DA4 09F84000 */  jalr       $v0
/* 813FAD8 80079DA8 10000724 */   addiu     $a3, $zero, 0x10
/* 813FADC 80079DAC C656010C */  jal        func_80055B18
/* 813FAE0 80079DB0 21200002 */   addu      $a0, $s0, $zero
/* 813FAE4 80079DB4 0C001226 */  addiu      $s2, $s0, 0xC
.Llevel_41_80079DB8:
/* 813FAE8 80079DB8 21204002 */  addu       $a0, $s2, $zero
/* 813FAEC 80079DBC 21284002 */  addu       $a1, $s2, $zero
/* 813FAF0 80079DC0 653C010C */  jal        func_8004F194
/* 813FAF4 80079DC4 21302002 */   addu      $a2, $s1, $zero
/* 813FAF8 80079DC8 0800228E */  lw         $v0, 0x8($s1)
/* 813FAFC 80079DCC 10002392 */  lbu        $v1, 0x10($s1)
/* 813FB00 80079DD0 F4FF4224 */  addiu      $v0, $v0, -0xC
/* 813FB04 80079DD4 080022AE */  sw         $v0, 0x8($s1)
/* 813FB08 80079DD8 44000292 */  lbu        $v0, 0x44($s0)
/* 813FB0C 80079DDC 00000000 */  nop
/* 813FB10 80079DE0 21104300 */  addu       $v0, $v0, $v1
/* 813FB14 80079DE4 440002A2 */  sb         $v0, 0x44($s0)
/* 813FB18 80079DE8 45000292 */  lbu        $v0, 0x45($s0)
/* 813FB1C 80079DEC 11002392 */  lbu        $v1, 0x11($s1)
/* 813FB20 80079DF0 00000000 */  nop
/* 813FB24 80079DF4 21104300 */  addu       $v0, $v0, $v1
/* 813FB28 80079DF8 450002A2 */  sb         $v0, 0x45($s0)
/* 813FB2C 80079DFC 46000292 */  lbu        $v0, 0x46($s0)
/* 813FB30 80079E00 12002492 */  lbu        $a0, 0x12($s1)
/* 813FB34 80079E04 49000392 */  lbu        $v1, 0x49($s0)
/* 813FB38 80079E08 21104400 */  addu       $v0, $v0, $a0
/* 813FB3C 80079E0C 01006330 */  andi       $v1, $v1, 0x1
/* 813FB40 80079E10 1A006014 */  bnez       $v1, .Llevel_41_80079E7C
/* 813FB44 80079E14 460002A2 */   sb        $v0, 0x46($s0)
/* 813FB48 80079E18 1000A427 */  addiu      $a0, $sp, 0x10
/* 813FB4C 80079E1C 5E3C010C */  jal        func_8004F178
/* 813FB50 80079E20 21284002 */   addu      $a1, $s2, $zero
/* 813FB54 80079E24 9171010C */  jal        rand
/* 813FB58 80079E28 00000000 */   nop
/* 813FB5C 80079E2C 03004230 */  andi       $v0, $v0, 0x3
/* 813FB60 80079E30 9171010C */  jal        rand
/* 813FB64 80079E34 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 813FB68 80079E38 01000424 */  addiu      $a0, $zero, 0x1
/* 813FB6C 80079E3C 11000524 */  addiu      $a1, $zero, 0x11
/* 813FB70 80079E40 1000A627 */  addiu      $a2, $sp, 0x10
/* 813FB74 80079E44 2800A727 */  addiu      $a3, $sp, 0x28
/* 813FB78 80079E48 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 813FB7C 80079E4C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 813FB80 80079E50 03004230 */  andi       $v0, $v0, 0x3
/* 813FB84 80079E54 2000A2AF */  sw         $v0, 0x20($sp)
/* 813FB88 80079E58 14000224 */  addiu      $v0, $zero, 0x14
/* 813FB8C 80079E5C 2400A2AF */  sw         $v0, 0x24($sp)
/* 813FB90 80079E60 80000224 */  addiu      $v0, $zero, 0x80
/* 813FB94 80079E64 2800A2AF */  sw         $v0, 0x28($sp)
/* 813FB98 80079E68 70000224 */  addiu      $v0, $zero, 0x70
/* 813FB9C 80079E6C 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 813FBA0 80079E70 40000224 */  addiu      $v0, $zero, 0x40
/* 813FBA4 80079E74 09F86000 */  jalr       $v1
/* 813FBA8 80079E78 3000A2AF */   sw        $v0, 0x30($sp)
.Llevel_41_80079E7C:
/* 813FBAC 80079E7C 4400BF8F */  lw         $ra, 0x44($sp)
/* 813FBB0 80079E80 4000B28F */  lw         $s2, 0x40($sp)
/* 813FBB4 80079E84 3C00B18F */  lw         $s1, 0x3C($sp)
/* 813FBB8 80079E88 3800B08F */  lw         $s0, 0x38($sp)
/* 813FBBC 80079E8C 4800BD27 */  addiu      $sp, $sp, 0x48
/* 813FBC0 80079E90 0800E003 */  jr         $ra
/* 813FBC4 80079E94 00000000 */   nop
.size func_level_41_80079D2C, . - func_level_41_80079D2C
