.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_616_level_28
/* 655EC1C 8007E6EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 655EC20 8007E6F0 1000B0AF */  sw         $s0, 0x10($sp)
/* 655EC24 8007E6F4 21808000 */  addu       $s0, $a0, $zero
/* 655EC28 8007E6F8 1400BFAF */  sw         $ra, 0x14($sp)
/* 655EC2C 8007E6FC 48000292 */  lbu        $v0, 0x48($s0)
/* 655EC30 8007E700 00000000 */  nop
/* 655EC34 8007E704 25004014 */  bnez       $v0, .Llevel_28_8007E79C
/* 655EC38 8007E708 00000000 */   nop
/* 655EC3C 8007E70C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 655EC40 8007E710 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 655EC44 8007E714 00000000 */  nop
/* 655EC48 8007E718 27004010 */  beqz       $v0, .Llevel_28_8007E7B8
/* 655EC4C 8007E71C 01000224 */   addiu     $v0, $zero, 0x1
/* 655EC50 8007E720 3C000392 */  lbu        $v1, 0x3C($s0)
/* 655EC54 8007E724 00000000 */  nop
/* 655EC58 8007E728 23006214 */  bne        $v1, $v0, .Llevel_28_8007E7B8
/* 655EC5C 8007E72C 00000000 */   nop
/* 655EC60 8007E730 C656010C */  jal        func_80055B18
/* 655EC64 8007E734 00000000 */   nop
/* 655EC68 8007E738 3A000392 */  lbu        $v1, 0x3A($s0)
/* 655EC6C 8007E73C 00000000 */  nop
/* 655EC70 8007E740 1D006010 */  beqz       $v1, .Llevel_28_8007E7B8
/* 655EC74 8007E744 21200000 */   addu      $a0, $zero, $zero
/* 655EC78 8007E748 40100300 */  sll        $v0, $v1, 1
/* 655EC7C 8007E74C 21104300 */  addu       $v0, $v0, $v1
/* 655EC80 8007E750 80100200 */  sll        $v0, $v0, 2
/* 655EC84 8007E754 23104300 */  subu       $v0, $v0, $v1
/* 655EC88 8007E758 0780033C */  lui        $v1, %hi(D_8006C550)
/* 655EC8C 8007E75C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 655EC90 8007E760 C0100200 */  sll        $v0, $v0, 3
/* 655EC94 8007E764 21104300 */  addu       $v0, $v0, $v1
/* 655EC98 8007E768 0000438C */  lw         $v1, 0x0($v0)
.Llevel_28_8007E76C:
/* 655EC9C 8007E76C 00000000 */  nop
/* 655ECA0 8007E770 0000628C */  lw         $v0, 0x0($v1)
/* 655ECA4 8007E774 00000000 */  nop
/* 655ECA8 8007E778 02000216 */  bne        $s0, $v0, .Llevel_28_8007E784
/* 655ECAC 8007E77C 00000000 */   nop
/* 655ECB0 8007E780 000060AC */  sw         $zero, 0x0($v1)
.Llevel_28_8007E784:
/* 655ECB4 8007E784 01008424 */  addiu      $a0, $a0, 0x1
/* 655ECB8 8007E788 04008228 */  slti       $v0, $a0, 0x4
/* 655ECBC 8007E78C F7FF4014 */  bnez       $v0, .Llevel_28_8007E76C
/* 655ECC0 8007E790 04006324 */   addiu     $v1, $v1, 0x4
/* 655ECC4 8007E794 EEF90108 */  j          .Llevel_28_8007E7B8
/* 655ECC8 8007E798 00000000 */   nop
.Llevel_28_8007E79C:
/* 655ECCC 8007E79C 0000048E */  lw         $a0, 0x0($s0)
/* 655ECD0 8007E7A0 69D6000C */  jal        func_800359A4
/* 655ECD4 8007E7A4 04000524 */   addiu     $a1, $zero, 0x4
/* 655ECD8 8007E7A8 03004010 */  beqz       $v0, .Llevel_28_8007E7B8
/* 655ECDC 8007E7AC 00000000 */   nop
/* 655ECE0 8007E7B0 C656010C */  jal        func_80055B18
/* 655ECE4 8007E7B4 21200002 */   addu      $a0, $s0, $zero
.Llevel_28_8007E7B8:
/* 655ECE8 8007E7B8 1400BF8F */  lw         $ra, 0x14($sp)
/* 655ECEC 8007E7BC 1000B08F */  lw         $s0, 0x10($sp)
/* 655ECF0 8007E7C0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 655ECF4 8007E7C4 0800E003 */  jr         $ra
/* 655ECF8 8007E7C8 00000000 */   nop
.size MobyUpdate_616_level_28, . - MobyUpdate_616_level_28
