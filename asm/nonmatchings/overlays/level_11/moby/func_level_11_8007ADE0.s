.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_11
/* 3E1F310 8007ADE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3E1F314 8007ADE4 1000B0AF */  sw         $s0, 0x10($sp)
/* 3E1F318 8007ADE8 21808000 */  addu       $s0, $a0, $zero
/* 3E1F31C 8007ADEC 1400BFAF */  sw         $ra, 0x14($sp)
/* 3E1F320 8007ADF0 0000038E */  lw         $v1, 0x0($s0)
/* 3E1F324 8007ADF4 00000000 */  nop
/* 3E1F328 8007ADF8 0000628C */  lw         $v0, 0x0($v1)
/* 3E1F32C 8007ADFC 0680013C */  lui        $at, %hi(D_80066FCC)
/* 3E1F330 8007AE00 21082200 */  addu       $at, $at, $v0
/* 3E1F334 8007AE04 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 3E1F338 8007AE08 0780013C */  lui        $at, %hi(D_80070300)
/* 3E1F33C 8007AE0C 21082200 */  addu       $at, $at, $v0
/* 3E1F340 8007AE10 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 3E1F344 8007AE14 00000000 */  nop
/* 3E1F348 8007AE18 01004230 */  andi       $v0, $v0, 0x1
/* 3E1F34C 8007AE1C 04004010 */  beqz       $v0, .Llevel_11_8007AE30
/* 3E1F350 8007AE20 FC000524 */   addiu     $a1, $zero, 0xFC
/* 3E1F354 8007AE24 0400648C */  lw         $a0, 0x4($v1)
/* 3E1F358 8007AE28 B687000C */  jal        func_80021ED8
/* 3E1F35C 8007AE2C 21300000 */   addu      $a2, $zero, $zero
.Llevel_11_8007AE30:
/* 3E1F360 8007AE30 C656010C */  jal        func_80055B18
/* 3E1F364 8007AE34 21200002 */   addu      $a0, $s0, $zero
/* 3E1F368 8007AE38 1400BF8F */  lw         $ra, 0x14($sp)
/* 3E1F36C 8007AE3C 1000B08F */  lw         $s0, 0x10($sp)
/* 3E1F370 8007AE40 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3E1F374 8007AE44 0800E003 */  jr         $ra
/* 3E1F378 8007AE48 00000000 */   nop
.size MobyUpdate_993_level_11, . - MobyUpdate_993_level_11
