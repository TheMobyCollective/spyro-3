.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_31
/* 6A986AC 8007D97C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6A986B0 8007D980 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A986B4 8007D984 21808000 */  addu       $s0, $a0, $zero
/* 6A986B8 8007D988 1400BFAF */  sw         $ra, 0x14($sp)
/* 6A986BC 8007D98C 0000038E */  lw         $v1, 0x0($s0)
/* 6A986C0 8007D990 00000000 */  nop
/* 6A986C4 8007D994 0000628C */  lw         $v0, 0x0($v1)
/* 6A986C8 8007D998 0680013C */  lui        $at, %hi(D_80066FCC)
/* 6A986CC 8007D99C 21082200 */  addu       $at, $at, $v0
/* 6A986D0 8007D9A0 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 6A986D4 8007D9A4 0780013C */  lui        $at, %hi(D_80070300)
/* 6A986D8 8007D9A8 21082200 */  addu       $at, $at, $v0
/* 6A986DC 8007D9AC 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 6A986E0 8007D9B0 00000000 */  nop
/* 6A986E4 8007D9B4 01004230 */  andi       $v0, $v0, 0x1
/* 6A986E8 8007D9B8 04004010 */  beqz       $v0, .Llevel_31_8007D9CC
/* 6A986EC 8007D9BC FC000524 */   addiu     $a1, $zero, 0xFC
/* 6A986F0 8007D9C0 0400648C */  lw         $a0, 0x4($v1)
/* 6A986F4 8007D9C4 B687000C */  jal        func_80021ED8
/* 6A986F8 8007D9C8 21300000 */   addu      $a2, $zero, $zero
.Llevel_31_8007D9CC:
/* 6A986FC 8007D9CC C656010C */  jal        func_80055B18
/* 6A98700 8007D9D0 21200002 */   addu      $a0, $s0, $zero
/* 6A98704 8007D9D4 1400BF8F */  lw         $ra, 0x14($sp)
/* 6A98708 8007D9D8 1000B08F */  lw         $s0, 0x10($sp)
/* 6A9870C 8007D9DC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6A98710 8007D9E0 0800E003 */  jr         $ra
/* 6A98714 8007D9E4 00000000 */   nop
.size MobyUpdate_993_level_31, . - MobyUpdate_993_level_31
