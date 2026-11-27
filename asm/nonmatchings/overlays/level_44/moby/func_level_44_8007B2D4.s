.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_44
/* 8B4E804 8007B2D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8B4E808 8007B2D8 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B4E80C 8007B2DC 21808000 */  addu       $s0, $a0, $zero
/* 8B4E810 8007B2E0 1400BFAF */  sw         $ra, 0x14($sp)
/* 8B4E814 8007B2E4 0000038E */  lw         $v1, 0x0($s0)
/* 8B4E818 8007B2E8 00000000 */  nop
/* 8B4E81C 8007B2EC 0000628C */  lw         $v0, 0x0($v1)
/* 8B4E820 8007B2F0 0680013C */  lui        $at, %hi(D_80066FCC)
/* 8B4E824 8007B2F4 21082200 */  addu       $at, $at, $v0
/* 8B4E828 8007B2F8 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 8B4E82C 8007B2FC 0780013C */  lui        $at, %hi(D_80070300)
/* 8B4E830 8007B300 21082200 */  addu       $at, $at, $v0
/* 8B4E834 8007B304 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 8B4E838 8007B308 00000000 */  nop
/* 8B4E83C 8007B30C 01004230 */  andi       $v0, $v0, 0x1
/* 8B4E840 8007B310 04004010 */  beqz       $v0, .Llevel_44_8007B324
/* 8B4E844 8007B314 FC000524 */   addiu     $a1, $zero, 0xFC
/* 8B4E848 8007B318 0400648C */  lw         $a0, 0x4($v1)
/* 8B4E84C 8007B31C B687000C */  jal        func_80021ED8
/* 8B4E850 8007B320 21300000 */   addu      $a2, $zero, $zero
.Llevel_44_8007B324:
/* 8B4E854 8007B324 C656010C */  jal        func_80055B18
/* 8B4E858 8007B328 21200002 */   addu      $a0, $s0, $zero
/* 8B4E85C 8007B32C 1400BF8F */  lw         $ra, 0x14($sp)
/* 8B4E860 8007B330 1000B08F */  lw         $s0, 0x10($sp)
/* 8B4E864 8007B334 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8B4E868 8007B338 0800E003 */  jr         $ra
/* 8B4E86C 8007B33C 00000000 */   nop
.size MobyUpdate_993_level_44, . - MobyUpdate_993_level_44
