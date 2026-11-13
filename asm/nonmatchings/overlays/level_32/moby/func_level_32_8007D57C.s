.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_46_level_32
/* 6DE4AAC 8007D57C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6DE4AB0 8007D580 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DE4AB4 8007D584 21808000 */  addu       $s0, $a0, $zero
/* 6DE4AB8 8007D588 03000324 */  addiu      $v1, $zero, 0x3
/* 6DE4ABC 8007D58C 1800BFAF */  sw         $ra, 0x18($sp)
/* 6DE4AC0 8007D590 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DE4AC4 8007D594 48000292 */  lbu        $v0, 0x48($s0)
/* 6DE4AC8 8007D598 0000118E */  lw         $s1, 0x0($s0)
/* 6DE4ACC 8007D59C 1F004310 */  beq        $v0, $v1, .Llevel_32_8007D61C
/* 6DE4AD0 8007D5A0 00000000 */   nop
/* 6DE4AD4 8007D5A4 1800028E */  lw         $v0, 0x18($s0)
/* 6DE4AD8 8007D5A8 00000000 */  nop
/* 6DE4ADC 8007D5AC 1B004010 */  beqz       $v0, .Llevel_32_8007D61C
/* 6DE4AE0 8007D5B0 2E000224 */   addiu     $v0, $zero, 0x2E
/* 6DE4AE4 8007D5B4 36000386 */  lh         $v1, 0x36($s0)
/* 6DE4AE8 8007D5B8 00000000 */  nop
/* 6DE4AEC 8007D5BC 0A006214 */  bne        $v1, $v0, .Llevel_32_8007D5E8
/* 6DE4AF0 8007D5C0 18002526 */   addiu     $a1, $s1, 0x18
/* 6DE4AF4 8007D5C4 08000624 */  addiu      $a2, $zero, 0x8
/* 6DE4AF8 8007D5C8 FEE2000C */  jal        func_80038BF8
/* 6DE4AFC 8007D5CC 03000724 */   addiu     $a3, $zero, 0x3
/* 6DE4B00 8007D5D0 1C002296 */  lhu        $v0, 0x1C($s1)
/* 6DE4B04 8007D5D4 C8000324 */  addiu      $v1, $zero, 0xC8
/* 6DE4B08 8007D5D8 1E0023A6 */  sh         $v1, 0x1E($s1)
/* 6DE4B0C 8007D5DC 64004224 */  addiu      $v0, $v0, 0x64
/* 6DE4B10 8007D5E0 80F50108 */  j          .Llevel_32_8007D600
/* 6DE4B14 8007D5E4 1C0022A6 */   sh        $v0, 0x1C($s1)
.Llevel_32_8007D5E8:
/* 6DE4B18 8007D5E8 21200002 */  addu       $a0, $s0, $zero
/* 6DE4B1C 8007D5EC 21300000 */  addu       $a2, $zero, $zero
/* 6DE4B20 8007D5F0 FEE2000C */  jal        func_80038BF8
/* 6DE4B24 8007D5F4 03000724 */   addiu     $a3, $zero, 0x3
/* 6DE4B28 8007D5F8 96000224 */  addiu      $v0, $zero, 0x96
/* 6DE4B2C 8007D5FC 1E0022A6 */  sh         $v0, 0x1E($s1)
.Llevel_32_8007D600:
/* 6DE4B30 8007D600 10000424 */  addiu      $a0, $zero, 0x10
/* 6DE4B34 8007D604 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DE4B38 8007D608 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DE4B3C 8007D60C 00000000 */  nop
/* 6DE4B40 8007D610 09F84000 */  jalr       $v0
/* 6DE4B44 8007D614 21280002 */   addu      $a1, $s0, $zero
/* 6DE4B48 8007D618 080000AE */  sw         $zero, 0x8($s0)
.Llevel_32_8007D61C:
/* 6DE4B4C 8007D61C 48000392 */  lbu        $v1, 0x48($s0)
/* 6DE4B50 8007D620 02000224 */  addiu      $v0, $zero, 0x2
/* 6DE4B54 8007D624 15006210 */  beq        $v1, $v0, .Llevel_32_8007D67C
/* 6DE4B58 8007D628 03006228 */   slti      $v0, $v1, 0x3
/* 6DE4B5C 8007D62C 05004014 */  bnez       $v0, .Llevel_32_8007D644
/* 6DE4B60 8007D630 03000224 */   addiu     $v0, $zero, 0x3
/* 6DE4B64 8007D634 30006210 */  beq        $v1, $v0, .Llevel_32_8007D6F8
/* 6DE4B68 8007D638 21200002 */   addu      $a0, $s0, $zero
/* 6DE4B6C 8007D63C CCF50108 */  j          .Llevel_32_8007D730
/* 6DE4B70 8007D640 00000000 */   nop
.Llevel_32_8007D644:
/* 6DE4B74 8007D644 3A006004 */  bltz       $v1, .Llevel_32_8007D730
/* 6DE4B78 8007D648 00000000 */   nop
/* 6DE4B7C 8007D64C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6DE4B80 8007D650 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6DE4B84 8007D654 00000000 */  nop
/* 6DE4B88 8007D658 35004010 */  beqz       $v0, .Llevel_32_8007D730
/* 6DE4B8C 8007D65C 5A000424 */   addiu     $a0, $zero, 0x5A
/* 6DE4B90 8007D660 DBD8000C */  jal        func_8003636C
/* 6DE4B94 8007D664 2C010524 */   addiu     $a1, $zero, 0x12C
/* 6DE4B98 8007D668 21200002 */  addu       $a0, $s0, $zero
/* 6DE4B9C 8007D66C 02000524 */  addiu      $a1, $zero, 0x2
/* 6DE4BA0 8007D670 300022AE */  sw         $v0, 0x30($s1)
/* 6DE4BA4 8007D674 BAF50108 */  j          .Llevel_32_8007D6E8
/* 6DE4BA8 8007D678 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_32_8007D67C:
/* 6DE4BAC 8007D67C 21200002 */  addu       $a0, $s0, $zero
/* 6DE4BB0 8007D680 21282002 */  addu       $a1, $s1, $zero
/* 6DE4BB4 8007D684 5ADC000C */  jal        func_80037168
/* 6DE4BB8 8007D688 57000624 */   addiu     $a2, $zero, 0x57
/* 6DE4BBC 8007D68C 30002426 */  addiu      $a0, $s1, 0x30
/* 6DE4BC0 8007D690 69D6000C */  jal        func_800359A4
/* 6DE4BC4 8007D694 04000524 */   addiu     $a1, $zero, 0x4
/* 6DE4BC8 8007D698 25004010 */  beqz       $v0, .Llevel_32_8007D730
/* 6DE4BCC 8007D69C 00000000 */   nop
/* 6DE4BD0 8007D6A0 3400228E */  lw         $v0, 0x34($s1)
/* 6DE4BD4 8007D6A4 00000000 */  nop
/* 6DE4BD8 8007D6A8 08004010 */  beqz       $v0, .Llevel_32_8007D6CC
/* 6DE4BDC 8007D6AC 21200002 */   addu      $a0, $s0, $zero
/* 6DE4BE0 8007D6B0 21280000 */  addu       $a1, $zero, $zero
/* 6DE4BE4 8007D6B4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DE4BE8 8007D6B8 340022AE */  sw         $v0, 0x34($s1)
/* 6DE4BEC 8007D6BC D0D3000C */  jal        func_80034F40
/* 6DE4BF0 8007D6C0 480080A0 */   sb        $zero, 0x48($a0)
/* 6DE4BF4 8007D6C4 CCF50108 */  j          .Llevel_32_8007D730
/* 6DE4BF8 8007D6C8 00000000 */   nop
.Llevel_32_8007D6CC:
/* 6DE4BFC 8007D6CC 02000424 */  addiu      $a0, $zero, 0x2
/* 6DE4C00 8007D6D0 DBD8000C */  jal        func_8003636C
/* 6DE4C04 8007D6D4 04000524 */   addiu     $a1, $zero, 0x4
/* 6DE4C08 8007D6D8 21200002 */  addu       $a0, $s0, $zero
/* 6DE4C0C 8007D6DC 01000524 */  addiu      $a1, $zero, 0x1
/* 6DE4C10 8007D6E0 340022AE */  sw         $v0, 0x34($s1)
/* 6DE4C14 8007D6E4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_32_8007D6E8:
/* 6DE4C18 8007D6E8 D0D3000C */  jal        func_80034F40
/* 6DE4C1C 8007D6EC 480082A0 */   sb        $v0, 0x48($a0)
/* 6DE4C20 8007D6F0 CCF50108 */  j          .Llevel_32_8007D730
/* 6DE4C24 8007D6F4 00000000 */   nop
.Llevel_32_8007D6F8:
/* 6DE4C28 8007D6F8 65D4000C */  jal        func_80035194
/* 6DE4C2C 8007D6FC 18002526 */   addiu     $a1, $s1, 0x18
/* 6DE4C30 8007D700 00010324 */  addiu      $v1, $zero, 0x100
/* 6DE4C34 8007D704 0A004314 */  bne        $v0, $v1, .Llevel_32_8007D730
/* 6DE4C38 8007D708 21200002 */   addu      $a0, $s0, $zero
/* 6DE4C3C 8007D70C 4957010C */  jal        func_80055D24
/* 6DE4C40 8007D710 04000524 */   addiu     $a1, $zero, 0x4
/* 6DE4C44 8007D714 80EE000C */  jal        func_8003BA00
/* 6DE4C48 8007D718 21200002 */   addu      $a0, $s0, $zero
/* 6DE4C4C 8007D71C 21200002 */  addu       $a0, $s0, $zero
/* 6DE4C50 8007D720 6EDA000C */  jal        func_800369B8
/* 6DE4C54 8007D724 20000524 */   addiu     $a1, $zero, 0x20
/* 6DE4C58 8007D728 C656010C */  jal        func_80055B18
/* 6DE4C5C 8007D72C 21200002 */   addu      $a0, $s0, $zero
.Llevel_32_8007D730:
/* 6DE4C60 8007D730 1800BF8F */  lw         $ra, 0x18($sp)
/* 6DE4C64 8007D734 1400B18F */  lw         $s1, 0x14($sp)
/* 6DE4C68 8007D738 1000B08F */  lw         $s0, 0x10($sp)
/* 6DE4C6C 8007D73C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6DE4C70 8007D740 0800E003 */  jr         $ra
/* 6DE4C74 8007D744 00000000 */   nop
.size MobyUpdate_46_level_32, . - MobyUpdate_46_level_32
