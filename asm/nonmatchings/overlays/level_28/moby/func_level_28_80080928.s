.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_971_level_28
/* 6560E58 80080928 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6560E5C 8008092C 1400B1AF */  sw         $s1, 0x14($sp)
/* 6560E60 80080930 21888000 */  addu       $s1, $a0, $zero
/* 6560E64 80080934 0780053C */  lui        $a1, %hi(D_80070328)
/* 6560E68 80080938 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6560E6C 8008093C 1800BFAF */  sw         $ra, 0x18($sp)
/* 6560E70 80080940 1000B0AF */  sw         $s0, 0x10($sp)
/* 6560E74 80080944 0000308E */  lw         $s0, 0x0($s1)
/* 6560E78 80080948 CD3C010C */  jal        func_8004F334
/* 6560E7C 8008094C 0C002426 */   addiu     $a0, $s1, 0xC
/* 6560E80 80080950 0000038E */  lw         $v1, 0x0($s0)
/* 6560E84 80080954 00000000 */  nop
/* 6560E88 80080958 2A104300 */  slt        $v0, $v0, $v1
/* 6560E8C 8008095C 0F004010 */  beqz       $v0, .Llevel_28_8008099C
/* 6560E90 80080960 10010424 */   addiu     $a0, $zero, 0x110
/* 6560E94 80080964 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6560E98 80080968 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6560E9C 8008096C 00000000 */  nop
/* 6560EA0 80080970 09F84000 */  jalr       $v0
/* 6560EA4 80080974 21282002 */   addu      $a1, $s1, $zero
/* 6560EA8 80080978 21284000 */  addu       $a1, $v0, $zero
/* 6560EAC 8008097C 0700A010 */  beqz       $a1, .Llevel_28_8008099C
/* 6560EB0 80080980 21202002 */   addu      $a0, $s1, $zero
/* 6560EB4 80080984 0000A38C */  lw         $v1, 0x0($a1)
/* 6560EB8 80080988 10000224 */  addiu      $v0, $zero, 0x10
/* 6560EBC 8008098C 4600A0A0 */  sb         $zero, 0x46($a1)
/* 6560EC0 80080990 4F00A2A0 */  sb         $v0, 0x4F($a1)
/* 6560EC4 80080994 C656010C */  jal        func_80055B18
/* 6560EC8 80080998 040060A0 */   sb        $zero, 0x4($v1)
.Llevel_28_8008099C:
/* 6560ECC 8008099C 1800BF8F */  lw         $ra, 0x18($sp)
/* 6560ED0 800809A0 1400B18F */  lw         $s1, 0x14($sp)
/* 6560ED4 800809A4 1000B08F */  lw         $s0, 0x10($sp)
/* 6560ED8 800809A8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6560EDC 800809AC 0800E003 */  jr         $ra
/* 6560EE0 800809B0 00000000 */   nop
.size MobyUpdate_971_level_28, . - MobyUpdate_971_level_28
