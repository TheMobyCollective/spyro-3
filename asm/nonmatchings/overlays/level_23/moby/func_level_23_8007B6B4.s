.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_23
/* 5A97BE4 8007B6B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5A97BE8 8007B6B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 5A97BEC 8007B6BC 21808000 */  addu       $s0, $a0, $zero
/* 5A97BF0 8007B6C0 1400BFAF */  sw         $ra, 0x14($sp)
/* 5A97BF4 8007B6C4 0000038E */  lw         $v1, 0x0($s0)
/* 5A97BF8 8007B6C8 00000000 */  nop
/* 5A97BFC 8007B6CC 0000628C */  lw         $v0, 0x0($v1)
/* 5A97C00 8007B6D0 0680013C */  lui        $at, %hi(D_80066FCC)
/* 5A97C04 8007B6D4 21082200 */  addu       $at, $at, $v0
/* 5A97C08 8007B6D8 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 5A97C0C 8007B6DC 0780013C */  lui        $at, %hi(D_80070300)
/* 5A97C10 8007B6E0 21082200 */  addu       $at, $at, $v0
/* 5A97C14 8007B6E4 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5A97C18 8007B6E8 00000000 */  nop
/* 5A97C1C 8007B6EC 01004230 */  andi       $v0, $v0, 0x1
/* 5A97C20 8007B6F0 04004010 */  beqz       $v0, .Llevel_23_8007B704
/* 5A97C24 8007B6F4 FC000524 */   addiu     $a1, $zero, 0xFC
/* 5A97C28 8007B6F8 0400648C */  lw         $a0, 0x4($v1)
/* 5A97C2C 8007B6FC B687000C */  jal        func_80021ED8
/* 5A97C30 8007B700 21300000 */   addu      $a2, $zero, $zero
.Llevel_23_8007B704:
/* 5A97C34 8007B704 C656010C */  jal        func_80055B18
/* 5A97C38 8007B708 21200002 */   addu      $a0, $s0, $zero
/* 5A97C3C 8007B70C 1400BF8F */  lw         $ra, 0x14($sp)
/* 5A97C40 8007B710 1000B08F */  lw         $s0, 0x10($sp)
/* 5A97C44 8007B714 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5A97C48 8007B718 0800E003 */  jr         $ra
/* 5A97C4C 8007B71C 00000000 */   nop
.size MobyUpdate_993_level_23, . - MobyUpdate_993_level_23
