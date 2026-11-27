.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_971_level_48
/* 9274A4C 80081D1C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9274A50 80081D20 1400B1AF */  sw         $s1, 0x14($sp)
/* 9274A54 80081D24 21888000 */  addu       $s1, $a0, $zero
/* 9274A58 80081D28 0780053C */  lui        $a1, %hi(D_80070328)
/* 9274A5C 80081D2C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 9274A60 80081D30 1800BFAF */  sw         $ra, 0x18($sp)
/* 9274A64 80081D34 1000B0AF */  sw         $s0, 0x10($sp)
/* 9274A68 80081D38 0000308E */  lw         $s0, 0x0($s1)
/* 9274A6C 80081D3C CD3C010C */  jal        func_8004F334
/* 9274A70 80081D40 0C002426 */   addiu     $a0, $s1, 0xC
/* 9274A74 80081D44 0000038E */  lw         $v1, 0x0($s0)
/* 9274A78 80081D48 00000000 */  nop
/* 9274A7C 80081D4C 2A104300 */  slt        $v0, $v0, $v1
/* 9274A80 80081D50 0F004010 */  beqz       $v0, .Llevel_48_80081D90
/* 9274A84 80081D54 10010424 */   addiu     $a0, $zero, 0x110
/* 9274A88 80081D58 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 9274A8C 80081D5C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 9274A90 80081D60 00000000 */  nop
/* 9274A94 80081D64 09F84000 */  jalr       $v0
/* 9274A98 80081D68 21282002 */   addu      $a1, $s1, $zero
/* 9274A9C 80081D6C 21284000 */  addu       $a1, $v0, $zero
/* 9274AA0 80081D70 0700A010 */  beqz       $a1, .Llevel_48_80081D90
/* 9274AA4 80081D74 21202002 */   addu      $a0, $s1, $zero
/* 9274AA8 80081D78 0000A38C */  lw         $v1, 0x0($a1)
/* 9274AAC 80081D7C 10000224 */  addiu      $v0, $zero, 0x10
/* 9274AB0 80081D80 4600A0A0 */  sb         $zero, 0x46($a1)
/* 9274AB4 80081D84 4F00A2A0 */  sb         $v0, 0x4F($a1)
/* 9274AB8 80081D88 C656010C */  jal        func_80055B18
/* 9274ABC 80081D8C 040060A0 */   sb        $zero, 0x4($v1)
.Llevel_48_80081D90:
/* 9274AC0 80081D90 1800BF8F */  lw         $ra, 0x18($sp)
/* 9274AC4 80081D94 1400B18F */  lw         $s1, 0x14($sp)
/* 9274AC8 80081D98 1000B08F */  lw         $s0, 0x10($sp)
/* 9274ACC 80081D9C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 9274AD0 80081DA0 0800E003 */  jr         $ra
/* 9274AD4 80081DA4 00000000 */   nop
.size MobyUpdate_971_level_48, . - MobyUpdate_971_level_48
