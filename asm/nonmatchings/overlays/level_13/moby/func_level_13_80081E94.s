.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_245_level_13
/* 44203C4 80081E94 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 44203C8 80081E98 2400B1AF */  sw         $s1, 0x24($sp)
/* 44203CC 80081E9C 21888000 */  addu       $s1, $a0, $zero
/* 44203D0 80081EA0 2800BFAF */  sw         $ra, 0x28($sp)
/* 44203D4 80081EA4 2000B0AF */  sw         $s0, 0x20($sp)
/* 44203D8 80081EA8 0000308E */  lw         $s0, 0x0($s1)
/* 44203DC 80081EAC 04000524 */  addiu      $a1, $zero, 0x4
/* 44203E0 80081EB0 69D6000C */  jal        func_800359A4
/* 44203E4 80081EB4 0C000426 */   addiu     $a0, $s0, 0xC
/* 44203E8 80081EB8 05004010 */  beqz       $v0, .Llevel_13_80081ED0
/* 44203EC 80081EBC 1000A427 */   addiu     $a0, $sp, 0x10
/* 44203F0 80081EC0 C656010C */  jal        func_80055B18
/* 44203F4 80081EC4 21202002 */   addu      $a0, $s1, $zero
/* 44203F8 80081EC8 CE070208 */  j          .Llevel_13_80081F38
/* 44203FC 80081ECC 00000000 */   nop
.Llevel_13_80081ED0:
/* 4420400 80081ED0 5E3C010C */  jal        func_8004F178
/* 4420404 80081ED4 21280002 */   addu      $a1, $s0, $zero
/* 4420408 80081ED8 1000A427 */  addiu      $a0, $sp, 0x10
/* 442040C 80081EDC 1800A28F */  lw         $v0, 0x18($sp)
/* 4420410 80081EE0 08000524 */  addiu      $a1, $zero, 0x8
/* 4420414 80081EE4 20004224 */  addiu      $v0, $v0, 0x20
/* 4420418 80081EE8 C13B010C */  jal        func_8004EF04
/* 442041C 80081EEC 1800A2AF */   sw        $v0, 0x18($sp)
/* 4420420 80081EF0 21200002 */  addu       $a0, $s0, $zero
/* 4420424 80081EF4 21280002 */  addu       $a1, $s0, $zero
/* 4420428 80081EF8 723C010C */  jal        func_8004F1C8
/* 442042C 80081EFC 1000A627 */   addiu     $a2, $sp, 0x10
/* 4420430 80081F00 0C002426 */  addiu      $a0, $s1, 0xC
/* 4420434 80081F04 21288000 */  addu       $a1, $a0, $zero
/* 4420438 80081F08 653C010C */  jal        func_8004F194
/* 442043C 80081F0C 21300002 */   addu      $a2, $s0, $zero
/* 4420440 80081F10 0C00028E */  lw         $v0, 0xC($s0)
/* 4420444 80081F14 00000000 */  nop
/* 4420448 80081F18 C0100200 */  sll        $v0, $v0, 3
/* 442044C 80081F1C F8014230 */  andi       $v0, $v0, 0x1F8
/* 4420450 80081F20 0680013C */  lui        $at, %hi(D_80065920)
/* 4420454 80081F24 21082200 */  addu       $at, $at, $v0
/* 4420458 80081F28 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 442045C 80081F2C 00000000 */  nop
/* 4420460 80081F30 C2110200 */  srl        $v0, $v0, 7
/* 4420464 80081F34 440022A2 */  sb         $v0, 0x44($s1)
.Llevel_13_80081F38:
/* 4420468 80081F38 2800BF8F */  lw         $ra, 0x28($sp)
/* 442046C 80081F3C 2400B18F */  lw         $s1, 0x24($sp)
/* 4420470 80081F40 2000B08F */  lw         $s0, 0x20($sp)
/* 4420474 80081F44 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4420478 80081F48 0800E003 */  jr         $ra
/* 442047C 80081F4C 00000000 */   nop
.size MobyUpdate_245_level_13, . - MobyUpdate_245_level_13
