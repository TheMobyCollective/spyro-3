.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_244_level_31
/* 6A985EC 8007D8BC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 6A985F0 8007D8C0 3400B1AF */  sw         $s1, 0x34($sp)
/* 6A985F4 8007D8C4 21888000 */  addu       $s1, $a0, $zero
/* 6A985F8 8007D8C8 3800BFAF */  sw         $ra, 0x38($sp)
/* 6A985FC 8007D8CC 3000B0AF */  sw         $s0, 0x30($sp)
/* 6A98600 8007D8D0 0000308E */  lw         $s0, 0x0($s1)
/* 6A98604 8007D8D4 00000000 */  nop
/* 6A98608 8007D8D8 0000048E */  lw         $a0, 0x0($s0)
/* 6A9860C 8007D8DC 00000000 */  nop
/* 6A98610 8007D8E0 48008290 */  lbu        $v0, 0x48($a0)
/* 6A98614 8007D8E4 00000000 */  nop
/* 6A98618 8007D8E8 80004230 */  andi       $v0, $v0, 0x80
/* 6A9861C 8007D8EC 05004010 */  beqz       $v0, .Llevel_31_8007D904
/* 6A98620 8007D8F0 21280000 */   addu      $a1, $zero, $zero
/* 6A98624 8007D8F4 C656010C */  jal        func_80055B18
/* 6A98628 8007D8F8 21202002 */   addu      $a0, $s1, $zero
/* 6A9862C 8007D8FC 59F60108 */  j          .Llevel_31_8007D964
/* 6A98630 8007D900 00000000 */   nop
.Llevel_31_8007D904:
/* 6A98634 8007D904 C557010C */  jal        func_80055F14
/* 6A98638 8007D908 1000A627 */   addiu     $a2, $sp, 0x10
/* 6A9863C 8007D90C 01000524 */  addiu      $a1, $zero, 0x1
/* 6A98640 8007D910 0000048E */  lw         $a0, 0x0($s0)
/* 6A98644 8007D914 2000B027 */  addiu      $s0, $sp, 0x20
/* 6A98648 8007D918 C557010C */  jal        func_80055F14
/* 6A9864C 8007D91C 21300002 */   addu      $a2, $s0, $zero
/* 6A98650 8007D920 21200002 */  addu       $a0, $s0, $zero
/* 6A98654 8007D924 21280002 */  addu       $a1, $s0, $zero
/* 6A98658 8007D928 723C010C */  jal        func_8004F1C8
/* 6A9865C 8007D92C 1000A627 */   addiu     $a2, $sp, 0x10
/* 6A98660 8007D930 2000A48F */  lw         $a0, 0x20($sp)
/* 6A98664 8007D934 2400A58F */  lw         $a1, 0x24($sp)
/* 6A98668 8007D938 203A010C */  jal        func_8004E880
/* 6A9866C 8007D93C 21300000 */   addu      $a2, $zero, $zero
/* 6A98670 8007D940 21200002 */  addu       $a0, $s0, $zero
/* 6A98674 8007D944 01000524 */  addiu      $a1, $zero, 0x1
/* 6A98678 8007D948 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 6A9867C 8007D94C 443C010C */  jal        func_8004F110
/* 6A98680 8007D950 460022A2 */   sb        $v0, 0x46($s1)
/* 6A98684 8007D954 0C002426 */  addiu      $a0, $s1, 0xC
/* 6A98688 8007D958 21280002 */  addu       $a1, $s0, $zero
/* 6A9868C 8007D95C 653C010C */  jal        func_8004F194
/* 6A98690 8007D960 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_31_8007D964:
/* 6A98694 8007D964 3800BF8F */  lw         $ra, 0x38($sp)
/* 6A98698 8007D968 3400B18F */  lw         $s1, 0x34($sp)
/* 6A9869C 8007D96C 3000B08F */  lw         $s0, 0x30($sp)
/* 6A986A0 8007D970 4000BD27 */  addiu      $sp, $sp, 0x40
/* 6A986A4 8007D974 0800E003 */  jr         $ra
/* 6A986A8 8007D978 00000000 */   nop
.size MobyUpdate_244_level_31, . - MobyUpdate_244_level_31
