.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_18
/* 4EAA0F8 800773C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EAA0FC 800773CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EAA100 800773D0 21808000 */  addu       $s0, $a0, $zero
/* 4EAA104 800773D4 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EAA108 800773D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EAA10C 800773DC 0000118E */  lw         $s1, 0x0($s0)
/* 4EAA110 800773E0 04000524 */  addiu      $a1, $zero, 0x4
/* 4EAA114 800773E4 69D6000C */  jal        func_800359A4
/* 4EAA118 800773E8 21202002 */   addu      $a0, $s1, $zero
/* 4EAA11C 800773EC 03004010 */  beqz       $v0, .Llevel_18_800773FC
/* 4EAA120 800773F0 00000000 */   nop
/* 4EAA124 800773F4 C656010C */  jal        func_80055B18
/* 4EAA128 800773F8 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_800773FC:
/* 4EAA12C 800773FC 0000238E */  lw         $v1, 0x0($s1)
/* 4EAA130 80077400 10000224 */  addiu      $v0, $zero, 0x10
/* 4EAA134 80077404 23104300 */  subu       $v0, $v0, $v1
/* 4EAA138 80077408 03004104 */  bgez       $v0, .Llevel_18_80077418
/* 4EAA13C 8007740C 30004224 */   addiu     $v0, $v0, 0x30
/* 4EAA140 80077410 21100000 */  addu       $v0, $zero, $zero
/* 4EAA144 80077414 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_18_80077418:
/* 4EAA148 80077418 570002A2 */  sb         $v0, 0x57($s0)
/* 4EAA14C 8007741C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 4EAA150 80077420 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 4EAA154 80077424 00000000 */  nop
/* 4EAA158 80077428 40180200 */  sll        $v1, $v0, 1
/* 4EAA15C 8007742C 21186200 */  addu       $v1, $v1, $v0
/* 4EAA160 80077430 4F000292 */  lbu        $v0, 0x4F($s0)
/* 4EAA164 80077434 40180300 */  sll        $v1, $v1, 1
/* 4EAA168 80077438 23104300 */  subu       $v0, $v0, $v1
/* 4EAA16C 8007743C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 4EAA170 80077440 FF004230 */  andi       $v0, $v0, 0xFF
/* 4EAA174 80077444 8000422C */  sltiu      $v0, $v0, 0x80
/* 4EAA178 80077448 02004014 */  bnez       $v0, .Llevel_18_80077454
/* 4EAA17C 8007744C 00000000 */   nop
/* 4EAA180 80077450 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_18_80077454:
/* 4EAA184 80077454 4F000292 */  lbu        $v0, 0x4F($s0)
/* 4EAA188 80077458 00000000 */  nop
/* 4EAA18C 8007745C 1800422C */  sltiu      $v0, $v0, 0x18
/* 4EAA190 80077460 02004010 */  beqz       $v0, .Llevel_18_8007746C
/* 4EAA194 80077464 18000224 */   addiu     $v0, $zero, 0x18
/* 4EAA198 80077468 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_18_8007746C:
/* 4EAA19C 8007746C 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EAA1A0 80077470 1400B18F */  lw         $s1, 0x14($sp)
/* 4EAA1A4 80077474 1000B08F */  lw         $s0, 0x10($sp)
/* 4EAA1A8 80077478 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EAA1AC 8007747C 0800E003 */  jr         $ra
/* 4EAA1B0 80077480 00000000 */   nop
.size MobyUpdate_541_level_18, . - MobyUpdate_541_level_18
