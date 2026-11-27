.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_955_level_43
/* 87ADB5C 8008862C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 87ADB60 80088630 1000B0AF */  sw         $s0, 0x10($sp)
/* 87ADB64 80088634 21808000 */  addu       $s0, $a0, $zero
/* 87ADB68 80088638 01000224 */  addiu      $v0, $zero, 0x1
/* 87ADB6C 8008863C 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 87ADB70 80088640 1800B2AF */  sw         $s2, 0x18($sp)
/* 87ADB74 80088644 1400B1AF */  sw         $s1, 0x14($sp)
/* 87ADB78 80088648 48000392 */  lbu        $v1, 0x48($s0)
/* 87ADB7C 8008864C 0000118E */  lw         $s1, 0x0($s0)
/* 87ADB80 80088650 07006210 */  beq        $v1, $v0, .Llevel_43_80088670
/* 87ADB84 80088654 02006228 */   slti      $v0, $v1, 0x2
/* 87ADB88 80088658 1F004014 */  bnez       $v0, .Llevel_43_800886D8
/* 87ADB8C 8008865C 02000224 */   addiu     $v0, $zero, 0x2
/* 87ADB90 80088660 12006210 */  beq        $v1, $v0, .Llevel_43_800886AC
/* 87ADB94 80088664 00000000 */   nop
/* 87ADB98 80088668 B6210208 */  j          .Llevel_43_800886D8
/* 87ADB9C 8008866C 00000000 */   nop
.Llevel_43_80088670:
/* 87ADBA0 80088670 0000258E */  lw         $a1, 0x0($s1)
/* 87ADBA4 80088674 FFFF1224 */  addiu      $s2, $zero, -0x1
/* 87ADBA8 80088678 0600B214 */  bne        $a1, $s2, .Llevel_43_80088694
/* 87ADBAC 8008867C 21200002 */   addu      $a0, $s0, $zero
/* 87ADBB0 80088680 06000524 */  addiu      $a1, $zero, 0x6
/* 87ADBB4 80088684 C4EE000C */  jal        func_8003BB10
/* 87ADBB8 80088688 21300000 */   addu      $a2, $zero, $zero
/* 87ADBBC 8008868C B6210208 */  j          .Llevel_43_800886D8
/* 87ADBC0 80088690 000022AE */   sw        $v0, 0x0($s1)
.Llevel_43_80088694:
/* 87ADBC4 80088694 F0EF000C */  jal        func_8003BFC0
/* 87ADBC8 80088698 21200002 */   addu      $a0, $s0, $zero
/* 87ADBCC 8008869C 0E004014 */  bnez       $v0, .Llevel_43_800886D8
/* 87ADBD0 800886A0 00000000 */   nop
/* 87ADBD4 800886A4 B5210208 */  j          .Llevel_43_800886D4
/* 87ADBD8 800886A8 000032AE */   sw        $s2, 0x0($s1)
.Llevel_43_800886AC:
/* 87ADBDC 800886AC 0000258E */  lw         $a1, 0x0($s1)
/* 87ADBE0 800886B0 F0EF000C */  jal        func_8003BFC0
/* 87ADBE4 800886B4 21200002 */   addu      $a0, $s0, $zero
/* 87ADBE8 800886B8 05004010 */  beqz       $v0, .Llevel_43_800886D0
/* 87ADBEC 800886BC FFFF0224 */   addiu     $v0, $zero, -0x1
/* 87ADBF0 800886C0 0000248E */  lw         $a0, 0x0($s1)
/* 87ADBF4 800886C4 9CEF000C */  jal        func_8003BE70
/* 87ADBF8 800886C8 00000000 */   nop
/* 87ADBFC 800886CC FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_43_800886D0:
/* 87ADC00 800886D0 000022AE */  sw         $v0, 0x0($s1)
.Llevel_43_800886D4:
/* 87ADC04 800886D4 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_43_800886D8:
/* 87ADC08 800886D8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 87ADC0C 800886DC 1800B28F */  lw         $s2, 0x18($sp)
/* 87ADC10 800886E0 1400B18F */  lw         $s1, 0x14($sp)
/* 87ADC14 800886E4 1000B08F */  lw         $s0, 0x10($sp)
/* 87ADC18 800886E8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 87ADC1C 800886EC 0800E003 */  jr         $ra
/* 87ADC20 800886F0 00000000 */   nop
.size MobyUpdate_955_level_43, . - MobyUpdate_955_level_43
