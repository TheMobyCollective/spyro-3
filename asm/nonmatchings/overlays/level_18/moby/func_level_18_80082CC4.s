.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_971_level_18
/* 4EB59F4 80082CC4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EB59F8 80082CC8 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EB59FC 80082CCC 21888000 */  addu       $s1, $a0, $zero
/* 4EB5A00 80082CD0 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB5A04 80082CD4 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB5A08 80082CD8 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EB5A0C 80082CDC 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EB5A10 80082CE0 0000308E */  lw         $s0, 0x0($s1)
/* 4EB5A14 80082CE4 CD3C010C */  jal        func_8004F334
/* 4EB5A18 80082CE8 0C002426 */   addiu     $a0, $s1, 0xC
/* 4EB5A1C 80082CEC 0000038E */  lw         $v1, 0x0($s0)
/* 4EB5A20 80082CF0 00000000 */  nop
/* 4EB5A24 80082CF4 2A104300 */  slt        $v0, $v0, $v1
/* 4EB5A28 80082CF8 0F004010 */  beqz       $v0, .Llevel_18_80082D38
/* 4EB5A2C 80082CFC 10010424 */   addiu     $a0, $zero, 0x110
/* 4EB5A30 80082D00 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4EB5A34 80082D04 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4EB5A38 80082D08 00000000 */  nop
/* 4EB5A3C 80082D0C 09F84000 */  jalr       $v0
/* 4EB5A40 80082D10 21282002 */   addu      $a1, $s1, $zero
/* 4EB5A44 80082D14 21284000 */  addu       $a1, $v0, $zero
/* 4EB5A48 80082D18 0700A010 */  beqz       $a1, .Llevel_18_80082D38
/* 4EB5A4C 80082D1C 21202002 */   addu      $a0, $s1, $zero
/* 4EB5A50 80082D20 0000A38C */  lw         $v1, 0x0($a1)
/* 4EB5A54 80082D24 10000224 */  addiu      $v0, $zero, 0x10
/* 4EB5A58 80082D28 4600A0A0 */  sb         $zero, 0x46($a1)
/* 4EB5A5C 80082D2C 4F00A2A0 */  sb         $v0, 0x4F($a1)
/* 4EB5A60 80082D30 C656010C */  jal        func_80055B18
/* 4EB5A64 80082D34 040060A0 */   sb        $zero, 0x4($v1)
.Llevel_18_80082D38:
/* 4EB5A68 80082D38 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EB5A6C 80082D3C 1400B18F */  lw         $s1, 0x14($sp)
/* 4EB5A70 80082D40 1000B08F */  lw         $s0, 0x10($sp)
/* 4EB5A74 80082D44 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EB5A78 80082D48 0800E003 */  jr         $ra
/* 4EB5A7C 80082D4C 00000000 */   nop
.size MobyUpdate_971_level_18, . - MobyUpdate_971_level_18
