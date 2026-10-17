.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_20
/* 50C7720 800779F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 50C7724 800779F4 1000B0AF */  sw         $s0, 0x10($sp)
/* 50C7728 800779F8 21808000 */  addu       $s0, $a0, $zero
/* 50C772C 800779FC 1800BFAF */  sw         $ra, 0x18($sp)
/* 50C7730 80077A00 1400B1AF */  sw         $s1, 0x14($sp)
/* 50C7734 80077A04 0000118E */  lw         $s1, 0x0($s0)
/* 50C7738 80077A08 04000524 */  addiu      $a1, $zero, 0x4
/* 50C773C 80077A0C 69D6000C */  jal        func_800359A4
/* 50C7740 80077A10 21202002 */   addu      $a0, $s1, $zero
/* 50C7744 80077A14 03004010 */  beqz       $v0, .Llevel_20_80077A24
/* 50C7748 80077A18 00000000 */   nop
/* 50C774C 80077A1C C656010C */  jal        func_80055B18
/* 50C7750 80077A20 21200002 */   addu      $a0, $s0, $zero
.Llevel_20_80077A24:
/* 50C7754 80077A24 0000228E */  lw         $v0, 0x0($s1)
/* 50C7758 80077A28 00000000 */  nop
/* 50C775C 80077A2C C0100200 */  sll        $v0, $v0, 3
/* 50C7760 80077A30 540002A2 */  sb         $v0, 0x54($s0)
/* 50C7764 80077A34 0000228E */  lw         $v0, 0x0($s1)
/* 50C7768 80077A38 00000000 */  nop
/* 50C776C 80077A3C 80100200 */  sll        $v0, $v0, 2
/* 50C7770 80077A40 550002A2 */  sb         $v0, 0x55($s0)
/* 50C7774 80077A44 0780043C */  lui        $a0, %hi(D_8006C648)
/* 50C7778 80077A48 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 50C777C 80077A4C 4F000292 */  lbu        $v0, 0x4F($s0)
/* 50C7780 80077A50 40180400 */  sll        $v1, $a0, 1
/* 50C7784 80077A54 21186400 */  addu       $v1, $v1, $a0
/* 50C7788 80077A58 23104300 */  subu       $v0, $v0, $v1
/* 50C778C 80077A5C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 50C7790 80077A60 FF004230 */  andi       $v0, $v0, 0xFF
/* 50C7794 80077A64 8000422C */  sltiu      $v0, $v0, 0x80
/* 50C7798 80077A68 02004014 */  bnez       $v0, .Llevel_20_80077A74
/* 50C779C 80077A6C 00000000 */   nop
/* 50C77A0 80077A70 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_20_80077A74:
/* 50C77A4 80077A74 4F000292 */  lbu        $v0, 0x4F($s0)
/* 50C77A8 80077A78 00000000 */  nop
/* 50C77AC 80077A7C 0E00422C */  sltiu      $v0, $v0, 0xE
/* 50C77B0 80077A80 02004010 */  beqz       $v0, .Llevel_20_80077A8C
/* 50C77B4 80077A84 0E000224 */   addiu     $v0, $zero, 0xE
/* 50C77B8 80077A88 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_20_80077A8C:
/* 50C77BC 80077A8C 1800BF8F */  lw         $ra, 0x18($sp)
/* 50C77C0 80077A90 1400B18F */  lw         $s1, 0x14($sp)
/* 50C77C4 80077A94 1000B08F */  lw         $s0, 0x10($sp)
/* 50C77C8 80077A98 2000BD27 */  addiu      $sp, $sp, 0x20
/* 50C77CC 80077A9C 0800E003 */  jr         $ra
/* 50C77D0 80077AA0 00000000 */   nop
.size MobyUpdate_482_level_20, . - MobyUpdate_482_level_20
