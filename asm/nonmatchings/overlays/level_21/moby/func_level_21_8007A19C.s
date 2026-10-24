.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1003_level_21
/* 53F66CC 8007A19C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 53F66D0 8007A1A0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 53F66D4 8007A1A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 53F66D8 8007A1A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 53F66DC 8007A1AC 21808000 */  addu       $s0, $a0, $zero
/* 53F66E0 8007A1B0 D8FF6224 */  addiu      $v0, $v1, -0x28
/* 53F66E4 8007A1B4 0200422C */  sltiu      $v0, $v0, 0x2
/* 53F66E8 8007A1B8 1A004014 */  bnez       $v0, .Llevel_21_8007A224
/* 53F66EC 8007A1BC 1400BFAF */   sw        $ra, 0x14($sp)
/* 53F66F0 8007A1C0 2A000224 */  addiu      $v0, $zero, 0x2A
/* 53F66F4 8007A1C4 17006210 */  beq        $v1, $v0, .Llevel_21_8007A224
/* 53F66F8 8007A1C8 00000000 */   nop
/* 53F66FC 8007A1CC 49000292 */  lbu        $v0, 0x49($s0)
/* 53F6700 8007A1D0 00000000 */  nop
/* 53F6704 8007A1D4 0C004014 */  bnez       $v0, .Llevel_21_8007A208
/* 53F6708 8007A1D8 01000424 */   addiu     $a0, $zero, 0x1
/* 53F670C 8007A1DC 40000424 */  addiu      $a0, $zero, 0x40
/* 53F6710 8007A1E0 0E000524 */  addiu      $a1, $zero, 0xE
/* 53F6714 8007A1E4 01000624 */  addiu      $a2, $zero, 0x1
/* 53F6718 8007A1E8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 53F671C 8007A1EC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 53F6720 8007A1F0 00000000 */  nop
/* 53F6724 8007A1F4 09F84000 */  jalr       $v0
/* 53F6728 8007A1F8 21380000 */   addu      $a3, $zero, $zero
/* 53F672C 8007A1FC 01000224 */  addiu      $v0, $zero, 0x1
/* 53F6730 8007A200 89E80108 */  j          .Llevel_21_8007A224
/* 53F6734 8007A204 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_21_8007A208:
/* 53F6738 8007A208 0E000524 */  addiu      $a1, $zero, 0xE
/* 53F673C 8007A20C 21300000 */  addu       $a2, $zero, $zero
/* 53F6740 8007A210 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 53F6744 8007A214 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 53F6748 8007A218 00000000 */  nop
/* 53F674C 8007A21C 09F84000 */  jalr       $v0
/* 53F6750 8007A220 21380000 */   addu      $a3, $zero, $zero
.Llevel_21_8007A224:
/* 53F6754 8007A224 1400BF8F */  lw         $ra, 0x14($sp)
/* 53F6758 8007A228 1000B08F */  lw         $s0, 0x10($sp)
/* 53F675C 8007A22C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 53F6760 8007A230 0800E003 */  jr         $ra
/* 53F6764 8007A234 00000000 */   nop
.size MobyUpdate_1003_level_21, . - MobyUpdate_1003_level_21
