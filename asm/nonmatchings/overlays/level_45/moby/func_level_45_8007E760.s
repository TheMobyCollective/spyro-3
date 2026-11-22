.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_953_level_45
/* 8D3AC90 8007E760 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8D3AC94 8007E764 1000B0AF */  sw         $s0, 0x10($sp)
/* 8D3AC98 8007E768 21808000 */  addu       $s0, $a0, $zero
/* 8D3AC9C 8007E76C 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 8D3ACA0 8007E770 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 8D3ACA4 8007E774 03000324 */  addiu      $v1, $zero, 0x3
/* 8D3ACA8 8007E778 1800BFAF */  sw         $ra, 0x18($sp)
/* 8D3ACAC 8007E77C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8D3ACB0 8007E780 0000118E */  lw         $s1, 0x0($s0)
/* 8D3ACB4 8007E784 03004310 */  beq        $v0, $v1, .Llevel_45_8007E794
/* 8D3ACB8 8007E788 00000000 */   nop
/* 8D3ACBC 8007E78C C656010C */  jal        func_80055B18
/* 8D3ACC0 8007E790 00000000 */   nop
.Llevel_45_8007E794:
/* 8D3ACC4 8007E794 48000392 */  lbu        $v1, 0x48($s0)
/* 8D3ACC8 8007E798 00000000 */  nop
/* 8D3ACCC 8007E79C 05006010 */  beqz       $v1, .Llevel_45_8007E7B4
/* 8D3ACD0 8007E7A0 01000224 */   addiu     $v0, $zero, 0x1
/* 8D3ACD4 8007E7A4 38006210 */  beq        $v1, $v0, .Llevel_45_8007E888
/* 8D3ACD8 8007E7A8 00000000 */   nop
/* 8D3ACDC 8007E7AC 62FA0108 */  j          .Llevel_45_8007E988
/* 8D3ACE0 8007E7B0 00000000 */   nop
.Llevel_45_8007E7B4:
/* 8D3ACE4 8007E7B4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8D3ACE8 8007E7B8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8D3ACEC 8007E7BC 0780043C */  lui        $a0, %hi(D_8006C704)
/* 8D3ACF0 8007E7C0 04C7848C */  lw         $a0, %lo(D_8006C704)($a0)
/* 8D3ACF4 8007E7C4 00000000 */  nop
/* 8D3ACF8 8007E7C8 2B106400 */  sltu       $v0, $v1, $a0
/* 8D3ACFC 8007E7CC 10004010 */  beqz       $v0, .Llevel_45_8007E810
/* 8D3AD00 8007E7D0 BA030524 */   addiu     $a1, $zero, 0x3BA
/* 8D3AD04 8007E7D4 48006324 */  addiu      $v1, $v1, 0x48
/* 8D3AD08 8007E7D8 48008424 */  addiu      $a0, $a0, 0x48
.Llevel_45_8007E7DC:
/* 8D3AD0C 8007E7DC EEFF6284 */  lh         $v0, -0x12($v1)
/* 8D3AD10 8007E7E0 00000000 */  nop
/* 8D3AD14 8007E7E4 06004514 */  bne        $v0, $a1, .Llevel_45_8007E800
/* 8D3AD18 8007E7E8 00000000 */   nop
/* 8D3AD1C 8007E7EC 00006290 */  lbu        $v0, 0x0($v1)
/* 8D3AD20 8007E7F0 00000000 */  nop
/* 8D3AD24 8007E7F4 80004230 */  andi       $v0, $v0, 0x80
/* 8D3AD28 8007E7F8 63004010 */  beqz       $v0, .Llevel_45_8007E988
/* 8D3AD2C 8007E7FC 00000000 */   nop
.Llevel_45_8007E800:
/* 8D3AD30 8007E800 58006324 */  addiu      $v1, $v1, 0x58
/* 8D3AD34 8007E804 2B106400 */  sltu       $v0, $v1, $a0
/* 8D3AD38 8007E808 F4FF4014 */  bnez       $v0, .Llevel_45_8007E7DC
/* 8D3AD3C 8007E80C 00000000 */   nop
.Llevel_45_8007E810:
/* 8D3AD40 8007E810 0400238E */  lw         $v1, 0x4($s1)
/* 8D3AD44 8007E814 00000000 */  nop
/* 8D3AD48 8007E818 40100300 */  sll        $v0, $v1, 1
/* 8D3AD4C 8007E81C 21104300 */  addu       $v0, $v0, $v1
/* 8D3AD50 8007E820 80100200 */  sll        $v0, $v0, 2
/* 8D3AD54 8007E824 23104300 */  subu       $v0, $v0, $v1
/* 8D3AD58 8007E828 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8D3AD5C 8007E82C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8D3AD60 8007E830 C0100200 */  sll        $v0, $v0, 3
/* 8D3AD64 8007E834 21104300 */  addu       $v0, $v0, $v1
/* 8D3AD68 8007E838 02000324 */  addiu      $v1, $zero, 0x2
/* 8D3AD6C 8007E83C 480043A0 */  sb         $v1, 0x48($v0)
/* 8D3AD70 8007E840 0400238E */  lw         $v1, 0x4($s1)
/* 8D3AD74 8007E844 00000000 */  nop
/* 8D3AD78 8007E848 40100300 */  sll        $v0, $v1, 1
/* 8D3AD7C 8007E84C 21104300 */  addu       $v0, $v0, $v1
/* 8D3AD80 8007E850 80100200 */  sll        $v0, $v0, 2
/* 8D3AD84 8007E854 23104300 */  subu       $v0, $v0, $v1
/* 8D3AD88 8007E858 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8D3AD8C 8007E85C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8D3AD90 8007E860 C0100200 */  sll        $v0, $v0, 3
/* 8D3AD94 8007E864 21104300 */  addu       $v0, $v0, $v1
/* 8D3AD98 8007E868 0000428C */  lw         $v0, 0x0($v0)
/* 8D3AD9C 8007E86C 00000000 */  nop
/* 8D3ADA0 8007E870 2C00428C */  lw         $v0, 0x2C($v0)
/* 8D3ADA4 8007E874 00000000 */  nop
/* 8D3ADA8 8007E878 020040A4 */  sh         $zero, 0x2($v0)
/* 8D3ADAC 8007E87C 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3ADB0 8007E880 62FA0108 */  j          .Llevel_45_8007E988
/* 8D3ADB4 8007E884 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_45_8007E888:
/* 8D3ADB8 8007E888 0000248E */  lw         $a0, 0x0($s1)
/* 8D3ADBC 8007E88C 00000000 */  nop
/* 8D3ADC0 8007E890 3D008010 */  beqz       $a0, .Llevel_45_8007E988
/* 8D3ADC4 8007E894 00000000 */   nop
/* 8D3ADC8 8007E898 0400228E */  lw         $v0, 0x4($s1)
/* 8D3ADCC 8007E89C 0780053C */  lui        $a1, %hi(D_8006C550)
/* 8D3ADD0 8007E8A0 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 8D3ADD4 8007E8A4 40180200 */  sll        $v1, $v0, 1
/* 8D3ADD8 8007E8A8 21186200 */  addu       $v1, $v1, $v0
/* 8D3ADDC 8007E8AC 80180300 */  sll        $v1, $v1, 2
/* 8D3ADE0 8007E8B0 23186200 */  subu       $v1, $v1, $v0
/* 8D3ADE4 8007E8B4 C0180300 */  sll        $v1, $v1, 3
/* 8D3ADE8 8007E8B8 21186500 */  addu       $v1, $v1, $a1
/* 8D3ADEC 8007E8BC 48006290 */  lbu        $v0, 0x48($v1)
/* 8D3ADF0 8007E8C0 00000000 */  nop
/* 8D3ADF4 8007E8C4 80004230 */  andi       $v0, $v0, 0x80
/* 8D3ADF8 8007E8C8 24004014 */  bnez       $v0, .Llevel_45_8007E95C
/* 8D3ADFC 8007E8CC 00000000 */   nop
/* 8D3AE00 8007E8D0 0C00848C */  lw         $a0, 0xC($a0)
/* 8D3AE04 8007E8D4 B94E000C */  jal        func_80013AE4
/* 8D3AE08 8007E8D8 0C006524 */   addiu     $a1, $v1, 0xC
/* 8D3AE0C 8007E8DC 0780023C */  lui        $v0, %hi(D_8006E048)
/* 8D3AE10 8007E8E0 48E0428C */  lw         $v0, %lo(D_8006E048)($v0)
/* 8D3AE14 8007E8E4 00000000 */  nop
/* 8D3AE18 8007E8E8 01004230 */  andi       $v0, $v0, 0x1
/* 8D3AE1C 8007E8EC 05004014 */  bnez       $v0, .Llevel_45_8007E904
/* 8D3AE20 8007E8F0 0010023C */   lui       $v0, (0x10008000 >> 16)
/* 8D3AE24 8007E8F4 49000292 */  lbu        $v0, 0x49($s0)
/* 8D3AE28 8007E8F8 00000000 */  nop
/* 8D3AE2C 8007E8FC 22004010 */  beqz       $v0, .Llevel_45_8007E988
/* 8D3AE30 8007E900 0010023C */   lui       $v0, (0x10008000 >> 16)
.Llevel_45_8007E904:
/* 8D3AE34 8007E904 00804234 */  ori        $v0, $v0, (0x10008000 & 0xFFFF)
/* 8D3AE38 8007E908 0780043C */  lui        $a0, %hi(D_80070328 + 0x20C)
/* 8D3AE3C 8007E90C 34058424 */  addiu      $a0, $a0, %lo(D_80070328 + 0x20C)
/* 8D3AE40 8007E910 000082AC */  sw         $v0, 0x0($a0)
/* 8D3AE44 8007E914 A0000224 */  addiu      $v0, $zero, 0xA0
/* 8D3AE48 8007E918 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 8D3AE4C 8007E91C 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
/* 8D3AE50 8007E920 0000228E */  lw         $v0, 0x0($s1)
/* 8D3AE54 8007E924 00000000 */  nop
/* 8D3AE58 8007E928 0C00458C */  lw         $a1, 0xC($v0)
/* 8D3AE5C 8007E92C 20008424 */  addiu      $a0, $a0, 0x20
/* 8D3AE60 8007E930 5E3C010C */  jal        func_8004F178
/* 8D3AE64 8007E934 1000A524 */   addiu     $a1, $a1, 0x10
/* 8D3AE68 8007E938 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3AE6C 8007E93C 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 8D3AE70 8007E940 440520AC */  sw         $zero, %lo(D_80070328 + 0x21C)($at)
/* 8D3AE74 8007E944 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 8D3AE78 8007E948 480520AC */  sw         $zero, %lo(D_80070328 + 0x220)($at)
/* 8D3AE7C 8007E94C 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 8D3AE80 8007E950 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 8D3AE84 8007E954 62FA0108 */  j          .Llevel_45_8007E988
/* 8D3AE88 8007E958 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_45_8007E95C:
/* 8D3AE8C 8007E95C 0800228E */  lw         $v0, 0x8($s1)
/* 8D3AE90 8007E960 21200002 */  addu       $a0, $s0, $zero
/* 8D3AE94 8007E964 40180200 */  sll        $v1, $v0, 1
/* 8D3AE98 8007E968 21186200 */  addu       $v1, $v1, $v0
/* 8D3AE9C 8007E96C 80180300 */  sll        $v1, $v1, 2
/* 8D3AEA0 8007E970 23186200 */  subu       $v1, $v1, $v0
/* 8D3AEA4 8007E974 C0180300 */  sll        $v1, $v1, 3
/* 8D3AEA8 8007E978 2118A300 */  addu       $v1, $a1, $v1
/* 8D3AEAC 8007E97C 03000224 */  addiu      $v0, $zero, 0x3
/* 8D3AEB0 8007E980 C656010C */  jal        func_80055B18
/* 8D3AEB4 8007E984 490062A0 */   sb        $v0, 0x49($v1)
.Llevel_45_8007E988:
/* 8D3AEB8 8007E988 1800BF8F */  lw         $ra, 0x18($sp)
/* 8D3AEBC 8007E98C 1400B18F */  lw         $s1, 0x14($sp)
/* 8D3AEC0 8007E990 1000B08F */  lw         $s0, 0x10($sp)
/* 8D3AEC4 8007E994 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8D3AEC8 8007E998 0800E003 */  jr         $ra
/* 8D3AECC 8007E99C 00000000 */   nop
.size MobyUpdate_953_level_45, . - MobyUpdate_953_level_45
