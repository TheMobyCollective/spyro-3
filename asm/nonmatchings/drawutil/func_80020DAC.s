.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80020DAC
/* 115AC 80020DAC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 115B0 80020DB0 2800B4AF */  sw         $s4, 0x28($sp)
/* 115B4 80020DB4 21A0A000 */  addu       $s4, $a1, $zero
/* 115B8 80020DB8 3000BFAF */  sw         $ra, 0x30($sp)
/* 115BC 80020DBC 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 115C0 80020DC0 2400B3AF */  sw         $s3, 0x24($sp)
/* 115C4 80020DC4 2000B2AF */  sw         $s2, 0x20($sp)
/* 115C8 80020DC8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 115CC 80020DCC 1800B0AF */  sw         $s0, 0x18($sp)
/* 115D0 80020DD0 0000828C */  lw         $v0, 0x0($a0)
/* 115D4 80020DD4 21A8E000 */  addu       $s5, $a3, $zero
/* 115D8 80020DD8 00004290 */  lbu        $v0, 0x0($v0)
/* 115DC 80020DDC 00000000 */  nop
/* 115E0 80020DE0 09004010 */  beqz       $v0, .L80020E08
/* 115E4 80020DE4 21900000 */   addu      $s2, $zero, $zero
/* 115E8 80020DE8 21188000 */  addu       $v1, $a0, $zero
.L80020DEC:
/* 115EC 80020DEC 04006324 */  addiu      $v1, $v1, 0x4
/* 115F0 80020DF0 0000628C */  lw         $v0, 0x0($v1)
/* 115F4 80020DF4 00000000 */  nop
/* 115F8 80020DF8 00004290 */  lbu        $v0, 0x0($v0)
/* 115FC 80020DFC 00000000 */  nop
/* 11600 80020E00 FAFF4014 */  bnez       $v0, .L80020DEC
/* 11604 80020E04 01005226 */   addiu     $s2, $s2, 0x1
.L80020E08:
/* 11608 80020E08 C0101200 */  sll        $v0, $s2, 3
/* 1160C 80020E0C 23105200 */  subu       $v0, $v0, $s2
/* 11610 80020E10 2398C200 */  subu       $s3, $a2, $v0
/* 11614 80020E14 0D00401A */  blez       $s2, .L80020E4C
/* 11618 80020E18 21800000 */   addu      $s0, $zero, $zero
/* 1161C 80020E1C 21888000 */  addu       $s1, $a0, $zero
/* 11620 80020E20 21306002 */  addu       $a2, $s3, $zero
.L80020E24:
/* 11624 80020E24 0E007326 */  addiu      $s3, $s3, 0xE
/* 11628 80020E28 0000248E */  lw         $a0, 0x0($s1)
/* 1162C 80020E2C 04003126 */  addiu      $s1, $s1, 0x4
/* 11630 80020E30 01001026 */  addiu      $s0, $s0, 0x1
/* 11634 80020E34 21288002 */  addu       $a1, $s4, $zero
/* 11638 80020E38 B780000C */  jal        DrawStringCentered
/* 1163C 80020E3C 2138A002 */   addu      $a3, $s5, $zero
/* 11640 80020E40 2A101202 */  slt        $v0, $s0, $s2
/* 11644 80020E44 F7FF4014 */  bnez       $v0, .L80020E24
/* 11648 80020E48 21306002 */   addu      $a2, $s3, $zero
.L80020E4C:
/* 1164C 80020E4C 3000BF8F */  lw         $ra, 0x30($sp)
/* 11650 80020E50 2C00B58F */  lw         $s5, 0x2C($sp)
/* 11654 80020E54 2800B48F */  lw         $s4, 0x28($sp)
/* 11658 80020E58 2400B38F */  lw         $s3, 0x24($sp)
/* 1165C 80020E5C 2000B28F */  lw         $s2, 0x20($sp)
/* 11660 80020E60 1C00B18F */  lw         $s1, 0x1C($sp)
/* 11664 80020E64 1800B08F */  lw         $s0, 0x18($sp)
/* 11668 80020E68 3800BD27 */  addiu      $sp, $sp, 0x38
/* 1166C 80020E6C 0800E003 */  jr         $ra
/* 11670 80020E70 00000000 */   nop
.size func_80020DAC, . - func_80020DAC
