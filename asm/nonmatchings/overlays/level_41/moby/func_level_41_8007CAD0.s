.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_65_level_41
/* 8142800 8007CAD0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8142804 8007CAD4 1400B1AF */  sw         $s1, 0x14($sp)
/* 8142808 8007CAD8 21888000 */  addu       $s1, $a0, $zero
/* 814280C 8007CADC 1800BFAF */  sw         $ra, 0x18($sp)
/* 8142810 8007CAE0 1000B0AF */  sw         $s0, 0x10($sp)
/* 8142814 8007CAE4 3A002392 */  lbu        $v1, 0x3A($s1)
/* 8142818 8007CAE8 00000000 */  nop
/* 814281C 8007CAEC 40100300 */  sll        $v0, $v1, 1
/* 8142820 8007CAF0 21104300 */  addu       $v0, $v0, $v1
/* 8142824 8007CAF4 80100200 */  sll        $v0, $v0, 2
/* 8142828 8007CAF8 23104300 */  subu       $v0, $v0, $v1
/* 814282C 8007CAFC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8142830 8007CB00 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8142834 8007CB04 C0100200 */  sll        $v0, $v0, 3
/* 8142838 8007CB08 21806200 */  addu       $s0, $v1, $v0
/* 814283C 8007CB0C 3D000392 */  lbu        $v1, 0x3D($s0)
/* 8142840 8007CB10 06000224 */  addiu      $v0, $zero, 0x6
/* 8142844 8007CB14 05006210 */  beq        $v1, $v0, .Llevel_41_8007CB2C
/* 8142848 8007CB18 00000000 */   nop
/* 814284C 8007CB1C C656010C */  jal        func_80055B18
/* 8142850 8007CB20 00000000 */   nop
/* 8142854 8007CB24 D7F20108 */  j          .Llevel_41_8007CB5C
/* 8142858 8007CB28 00000000 */   nop
.Llevel_41_8007CB2C:
/* 814285C 8007CB2C 0C002426 */  addiu      $a0, $s1, 0xC
/* 8142860 8007CB30 5E3C010C */  jal        func_8004F178
/* 8142864 8007CB34 0C000526 */   addiu     $a1, $s0, 0xC
/* 8142868 8007CB38 44000292 */  lbu        $v0, 0x44($s0)
/* 814286C 8007CB3C 00000000 */  nop
/* 8142870 8007CB40 440022A2 */  sb         $v0, 0x44($s1)
/* 8142874 8007CB44 45000292 */  lbu        $v0, 0x45($s0)
/* 8142878 8007CB48 00000000 */  nop
/* 814287C 8007CB4C 450022A2 */  sb         $v0, 0x45($s1)
/* 8142880 8007CB50 46000292 */  lbu        $v0, 0x46($s0)
/* 8142884 8007CB54 00000000 */  nop
/* 8142888 8007CB58 460022A2 */  sb         $v0, 0x46($s1)
.Llevel_41_8007CB5C:
/* 814288C 8007CB5C 1800BF8F */  lw         $ra, 0x18($sp)
/* 8142890 8007CB60 1400B18F */  lw         $s1, 0x14($sp)
/* 8142894 8007CB64 1000B08F */  lw         $s0, 0x10($sp)
/* 8142898 8007CB68 2000BD27 */  addiu      $sp, $sp, 0x20
/* 814289C 8007CB6C 0800E003 */  jr         $ra
/* 81428A0 8007CB70 00000000 */   nop
.size MobyUpdate_65_level_41, . - MobyUpdate_65_level_41
