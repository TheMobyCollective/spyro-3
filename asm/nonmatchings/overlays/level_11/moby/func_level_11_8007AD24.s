.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_245_level_11
/* 3E1F254 8007AD24 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3E1F258 8007AD28 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E1F25C 8007AD2C 21888000 */  addu       $s1, $a0, $zero
/* 3E1F260 8007AD30 2800BFAF */  sw         $ra, 0x28($sp)
/* 3E1F264 8007AD34 2000B0AF */  sw         $s0, 0x20($sp)
/* 3E1F268 8007AD38 0000308E */  lw         $s0, 0x0($s1)
/* 3E1F26C 8007AD3C 04000524 */  addiu      $a1, $zero, 0x4
/* 3E1F270 8007AD40 69D6000C */  jal        func_800359A4
/* 3E1F274 8007AD44 0C000426 */   addiu     $a0, $s0, 0xC
/* 3E1F278 8007AD48 05004010 */  beqz       $v0, .Llevel_11_8007AD60
/* 3E1F27C 8007AD4C 1000A427 */   addiu     $a0, $sp, 0x10
/* 3E1F280 8007AD50 C656010C */  jal        func_80055B18
/* 3E1F284 8007AD54 21202002 */   addu      $a0, $s1, $zero
/* 3E1F288 8007AD58 72EB0108 */  j          .Llevel_11_8007ADC8
/* 3E1F28C 8007AD5C 00000000 */   nop
.Llevel_11_8007AD60:
/* 3E1F290 8007AD60 5E3C010C */  jal        func_8004F178
/* 3E1F294 8007AD64 21280002 */   addu      $a1, $s0, $zero
/* 3E1F298 8007AD68 1000A427 */  addiu      $a0, $sp, 0x10
/* 3E1F29C 8007AD6C 1800A28F */  lw         $v0, 0x18($sp)
/* 3E1F2A0 8007AD70 08000524 */  addiu      $a1, $zero, 0x8
/* 3E1F2A4 8007AD74 20004224 */  addiu      $v0, $v0, 0x20
/* 3E1F2A8 8007AD78 C13B010C */  jal        func_8004EF04
/* 3E1F2AC 8007AD7C 1800A2AF */   sw        $v0, 0x18($sp)
/* 3E1F2B0 8007AD80 21200002 */  addu       $a0, $s0, $zero
/* 3E1F2B4 8007AD84 21280002 */  addu       $a1, $s0, $zero
/* 3E1F2B8 8007AD88 723C010C */  jal        func_8004F1C8
/* 3E1F2BC 8007AD8C 1000A627 */   addiu     $a2, $sp, 0x10
/* 3E1F2C0 8007AD90 0C002426 */  addiu      $a0, $s1, 0xC
/* 3E1F2C4 8007AD94 21288000 */  addu       $a1, $a0, $zero
/* 3E1F2C8 8007AD98 653C010C */  jal        func_8004F194
/* 3E1F2CC 8007AD9C 21300002 */   addu      $a2, $s0, $zero
/* 3E1F2D0 8007ADA0 0C00028E */  lw         $v0, 0xC($s0)
/* 3E1F2D4 8007ADA4 00000000 */  nop
/* 3E1F2D8 8007ADA8 C0100200 */  sll        $v0, $v0, 3
/* 3E1F2DC 8007ADAC F8014230 */  andi       $v0, $v0, 0x1F8
/* 3E1F2E0 8007ADB0 0680013C */  lui        $at, %hi(D_80065920)
/* 3E1F2E4 8007ADB4 21082200 */  addu       $at, $at, $v0
/* 3E1F2E8 8007ADB8 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 3E1F2EC 8007ADBC 00000000 */  nop
/* 3E1F2F0 8007ADC0 C2110200 */  srl        $v0, $v0, 7
/* 3E1F2F4 8007ADC4 440022A2 */  sb         $v0, 0x44($s1)
.Llevel_11_8007ADC8:
/* 3E1F2F8 8007ADC8 2800BF8F */  lw         $ra, 0x28($sp)
/* 3E1F2FC 8007ADCC 2400B18F */  lw         $s1, 0x24($sp)
/* 3E1F300 8007ADD0 2000B08F */  lw         $s0, 0x20($sp)
/* 3E1F304 8007ADD4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 3E1F308 8007ADD8 0800E003 */  jr         $ra
/* 3E1F30C 8007ADDC 00000000 */   nop
.size MobyUpdate_245_level_11, . - MobyUpdate_245_level_11
