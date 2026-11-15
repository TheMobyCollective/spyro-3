.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_33
/* 71B4F84 8007D254 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 71B4F88 8007D258 1000B0AF */  sw         $s0, 0x10($sp)
/* 71B4F8C 8007D25C 21808000 */  addu       $s0, $a0, $zero
/* 71B4F90 8007D260 1400BFAF */  sw         $ra, 0x14($sp)
/* 71B4F94 8007D264 0000038E */  lw         $v1, 0x0($s0)
/* 71B4F98 8007D268 00000000 */  nop
/* 71B4F9C 8007D26C 0000628C */  lw         $v0, 0x0($v1)
/* 71B4FA0 8007D270 0680013C */  lui        $at, %hi(D_80066FCC)
/* 71B4FA4 8007D274 21082200 */  addu       $at, $at, $v0
/* 71B4FA8 8007D278 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 71B4FAC 8007D27C 0780013C */  lui        $at, %hi(D_80070300)
/* 71B4FB0 8007D280 21082200 */  addu       $at, $at, $v0
/* 71B4FB4 8007D284 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 71B4FB8 8007D288 00000000 */  nop
/* 71B4FBC 8007D28C 01004230 */  andi       $v0, $v0, 0x1
/* 71B4FC0 8007D290 04004010 */  beqz       $v0, .Llevel_33_8007D2A4
/* 71B4FC4 8007D294 FC000524 */   addiu     $a1, $zero, 0xFC
/* 71B4FC8 8007D298 0400648C */  lw         $a0, 0x4($v1)
/* 71B4FCC 8007D29C B687000C */  jal        func_80021ED8
/* 71B4FD0 8007D2A0 21300000 */   addu      $a2, $zero, $zero
.Llevel_33_8007D2A4:
/* 71B4FD4 8007D2A4 C656010C */  jal        func_80055B18
/* 71B4FD8 8007D2A8 21200002 */   addu      $a0, $s0, $zero
/* 71B4FDC 8007D2AC 1400BF8F */  lw         $ra, 0x14($sp)
/* 71B4FE0 8007D2B0 1000B08F */  lw         $s0, 0x10($sp)
/* 71B4FE4 8007D2B4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 71B4FE8 8007D2B8 0800E003 */  jr         $ra
/* 71B4FEC 8007D2BC 00000000 */   nop
.size MobyUpdate_993_level_33, . - MobyUpdate_993_level_33
