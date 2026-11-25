.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_567_level_28
/* 655D1A4 8007CC74 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 655D1A8 8007CC78 1000B0AF */  sw         $s0, 0x10($sp)
/* 655D1AC 8007CC7C 21808000 */  addu       $s0, $a0, $zero
/* 655D1B0 8007CC80 0780053C */  lui        $a1, %hi(D_80070328)
/* 655D1B4 8007CC84 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 655D1B8 8007CC88 1800BFAF */  sw         $ra, 0x18($sp)
/* 655D1BC 8007CC8C 1400B1AF */  sw         $s1, 0x14($sp)
/* 655D1C0 8007CC90 0000118E */  lw         $s1, 0x0($s0)
/* 655D1C4 8007CC94 CD3C010C */  jal        func_8004F334
/* 655D1C8 8007CC98 0C000426 */   addiu     $a0, $s0, 0xC
/* 655D1CC 8007CC9C 0400238E */  lw         $v1, 0x4($s1)
/* 655D1D0 8007CCA0 00000000 */  nop
/* 655D1D4 8007CCA4 2A104300 */  slt        $v0, $v0, $v1
/* 655D1D8 8007CCA8 0F004010 */  beqz       $v0, .Llevel_28_8007CCE8
/* 655D1DC 8007CCAC 00000000 */   nop
/* 655D1E0 8007CCB0 0000228E */  lw         $v0, 0x0($s1)
/* 655D1E4 8007CCB4 00000000 */  nop
/* 655D1E8 8007CCB8 04004010 */  beqz       $v0, .Llevel_28_8007CCCC
/* 655D1EC 8007CCBC 21200002 */   addu      $a0, $s0, $zero
/* 655D1F0 8007CCC0 21280000 */  addu       $a1, $zero, $zero
/* 655D1F4 8007CCC4 AFEE000C */  jal        func_8003BABC
/* 655D1F8 8007CCC8 21300000 */   addu      $a2, $zero, $zero
.Llevel_28_8007CCCC:
/* 655D1FC 8007CCCC 21202002 */  addu       $a0, $s1, $zero
/* 655D200 8007CCD0 04000524 */  addiu      $a1, $zero, 0x4
/* 655D204 8007CCD4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 655D208 8007CCD8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 655D20C 8007CCDC 000020AE */  sw         $zero, 0x0($s1)
/* 655D210 8007CCE0 EDED000C */  jal        func_8003B7B4
/* 655D214 8007CCE4 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_28_8007CCE8:
/* 655D218 8007CCE8 48000292 */  lbu        $v0, 0x48($s0)
/* 655D21C 8007CCEC 00000000 */  nop
/* 655D220 8007CCF0 06004014 */  bnez       $v0, .Llevel_28_8007CD0C
/* 655D224 8007CCF4 00000000 */   nop
/* 655D228 8007CCF8 0000258E */  lw         $a1, 0x0($s1)
/* 655D22C 8007CCFC D0D3000C */  jal        func_80034F40
/* 655D230 8007CD00 21200002 */   addu      $a0, $s0, $zero
/* 655D234 8007CD04 01000224 */  addiu      $v0, $zero, 0x1
/* 655D238 8007CD08 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_28_8007CD0C:
/* 655D23C 8007CD0C 0000248E */  lw         $a0, 0x0($s1)
/* 655D240 8007CD10 00000000 */  nop
/* 655D244 8007CD14 05008010 */  beqz       $a0, .Llevel_28_8007CD2C
/* 655D248 8007CD18 01000224 */   addiu     $v0, $zero, 0x1
/* 655D24C 8007CD1C 08008210 */  beq        $a0, $v0, .Llevel_28_8007CD40
/* 655D250 8007CD20 FF000224 */   addiu     $v0, $zero, 0xFF
/* 655D254 8007CD24 55F30108 */  j          .Llevel_28_8007CD54
/* 655D258 8007CD28 00000000 */   nop
.Llevel_28_8007CD2C:
/* 655D25C 8007CD2C FF000224 */  addiu      $v0, $zero, 0xFF
/* 655D260 8007CD30 550002A2 */  sb         $v0, 0x55($s0)
/* 655D264 8007CD34 38000224 */  addiu      $v0, $zero, 0x38
/* 655D268 8007CD38 53F30108 */  j          .Llevel_28_8007CD4C
/* 655D26C 8007CD3C 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_28_8007CD40:
/* 655D270 8007CD40 540002A2 */  sb         $v0, 0x54($s0)
/* 655D274 8007CD44 38000224 */  addiu      $v0, $zero, 0x38
/* 655D278 8007CD48 550000A2 */  sb         $zero, 0x55($s0)
.Llevel_28_8007CD4C:
/* 655D27C 8007CD4C 560000A2 */  sb         $zero, 0x56($s0)
/* 655D280 8007CD50 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_28_8007CD54:
/* 655D284 8007CD54 1800BF8F */  lw         $ra, 0x18($sp)
/* 655D288 8007CD58 1400B18F */  lw         $s1, 0x14($sp)
/* 655D28C 8007CD5C 1000B08F */  lw         $s0, 0x10($sp)
/* 655D290 8007CD60 2000BD27 */  addiu      $sp, $sp, 0x20
/* 655D294 8007CD64 0800E003 */  jr         $ra
/* 655D298 8007CD68 00000000 */   nop
.size MobyUpdate_567_level_28, . - MobyUpdate_567_level_28
