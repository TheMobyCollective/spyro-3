.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_43
/* 87A07F8 8007B2C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 87A07FC 8007B2CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 87A0800 8007B2D0 21808000 */  addu       $s0, $a0, $zero
/* 87A0804 8007B2D4 1400BFAF */  sw         $ra, 0x14($sp)
/* 87A0808 8007B2D8 0000038E */  lw         $v1, 0x0($s0)
/* 87A080C 8007B2DC 00000000 */  nop
/* 87A0810 8007B2E0 0000628C */  lw         $v0, 0x0($v1)
/* 87A0814 8007B2E4 0680013C */  lui        $at, %hi(D_80066FCC)
/* 87A0818 8007B2E8 21082200 */  addu       $at, $at, $v0
/* 87A081C 8007B2EC CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 87A0820 8007B2F0 0780013C */  lui        $at, %hi(D_80070300)
/* 87A0824 8007B2F4 21082200 */  addu       $at, $at, $v0
/* 87A0828 8007B2F8 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 87A082C 8007B2FC 00000000 */  nop
/* 87A0830 8007B300 01004230 */  andi       $v0, $v0, 0x1
/* 87A0834 8007B304 04004010 */  beqz       $v0, .Llevel_43_8007B318
/* 87A0838 8007B308 FC000524 */   addiu     $a1, $zero, 0xFC
/* 87A083C 8007B30C 0400648C */  lw         $a0, 0x4($v1)
/* 87A0840 8007B310 B687000C */  jal        func_80021ED8
/* 87A0844 8007B314 21300000 */   addu      $a2, $zero, $zero
.Llevel_43_8007B318:
/* 87A0848 8007B318 C656010C */  jal        func_80055B18
/* 87A084C 8007B31C 21200002 */   addu      $a0, $s0, $zero
/* 87A0850 8007B320 1400BF8F */  lw         $ra, 0x14($sp)
/* 87A0854 8007B324 1000B08F */  lw         $s0, 0x10($sp)
/* 87A0858 8007B328 1800BD27 */  addiu      $sp, $sp, 0x18
/* 87A085C 8007B32C 0800E003 */  jr         $ra
/* 87A0860 8007B330 00000000 */   nop
.size MobyUpdate_993_level_43, . - MobyUpdate_993_level_43
