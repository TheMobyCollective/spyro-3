.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_96_level_23
/* 5AA27BC 8008628C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5AA27C0 80086290 1000BFAF */  sw         $ra, 0x10($sp)
/* 5AA27C4 80086294 1800828C */  lw         $v0, 0x18($a0)
/* 5AA27C8 80086298 1600033C */  lui        $v1, (0x160000 >> 16)
/* 5AA27CC 8008629C 24104300 */  and        $v0, $v0, $v1
/* 5AA27D0 800862A0 15004010 */  beqz       $v0, .Llevel_23_800862F8
/* 5AA27D4 800862A4 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA27D8 800862A8 48008390 */  lbu        $v1, 0x48($a0)
/* 5AA27DC 800862AC 00000000 */  nop
/* 5AA27E0 800862B0 06006214 */  bne        $v1, $v0, .Llevel_23_800862CC
/* 5AA27E4 800862B4 180080AC */   sw        $zero, 0x18($a0)
/* 5AA27E8 800862B8 3E008290 */  lbu        $v0, 0x3E($a0)
/* 5AA27EC 800862BC 00000000 */  nop
/* 5AA27F0 800862C0 0400422C */  sltiu      $v0, $v0, 0x4
/* 5AA27F4 800862C4 18004014 */  bnez       $v0, .Llevel_23_80086328
/* 5AA27F8 800862C8 00000000 */   nop
.Llevel_23_800862CC:
/* 5AA27FC 800862CC 01000324 */  addiu      $v1, $zero, 0x1
/* 5AA2800 800862D0 72000224 */  addiu      $v0, $zero, 0x72
/* 5AA2804 800862D4 480083A0 */  sb         $v1, 0x48($a0)
/* 5AA2808 800862D8 0780013C */  lui        $at, %hi(D_8006C770)
/* 5AA280C 800862DC 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 5AA2810 800862E0 400082A0 */  sb         $v0, 0x40($a0)
/* 5AA2814 800862E4 3D0083A0 */  sb         $v1, 0x3D($a0)
/* 5AA2818 800862E8 CDD5000C */  jal        func_80035734
/* 5AA281C 800862EC 3F0080A0 */   sb        $zero, 0x3F($a0)
/* 5AA2820 800862F0 CA180208 */  j          .Llevel_23_80086328
/* 5AA2824 800862F4 00000000 */   nop
.Llevel_23_800862F8:
/* 5AA2828 800862F8 48008390 */  lbu        $v1, 0x48($a0)
/* 5AA282C 800862FC 00000000 */  nop
/* 5AA2830 80086300 09006214 */  bne        $v1, $v0, .Llevel_23_80086328
/* 5AA2834 80086304 00000000 */   nop
/* 5AA2838 80086308 0780023C */  lui        $v0, %hi(D_8006C770)
/* 5AA283C 8008630C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 5AA2840 80086310 00000000 */  nop
/* 5AA2844 80086314 04004010 */  beqz       $v0, .Llevel_23_80086328
/* 5AA2848 80086318 00000000 */   nop
/* 5AA284C 8008631C 480080A0 */  sb         $zero, 0x48($a0)
/* 5AA2850 80086320 D0D3000C */  jal        func_80034F40
/* 5AA2854 80086324 21280000 */   addu      $a1, $zero, $zero
.Llevel_23_80086328:
/* 5AA2858 80086328 1000BF8F */  lw         $ra, 0x10($sp)
/* 5AA285C 8008632C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5AA2860 80086330 0800E003 */  jr         $ra
/* 5AA2864 80086334 00000000 */   nop
.size MobyUpdate_96_level_23, . - MobyUpdate_96_level_23
