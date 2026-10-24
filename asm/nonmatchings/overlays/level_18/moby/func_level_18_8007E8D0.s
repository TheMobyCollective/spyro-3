.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_577_level_18
/* 4EB1600 8007E8D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EB1604 8007E8D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EB1608 8007E8D8 21808000 */  addu       $s0, $a0, $zero
/* 4EB160C 8007E8DC 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EB1610 8007E8E0 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EB1614 8007E8E4 1800028E */  lw         $v0, 0x18($s0)
/* 4EB1618 8007E8E8 0000118E */  lw         $s1, 0x0($s0)
/* 4EB161C 8007E8EC 09004010 */  beqz       $v0, .Llevel_18_8007E914
/* 4EB1620 8007E8F0 01000224 */   addiu     $v0, $zero, 0x1
/* 4EB1624 8007E8F4 48000392 */  lbu        $v1, 0x48($s0)
/* 4EB1628 8007E8F8 00000000 */  nop
/* 4EB162C 8007E8FC 03006210 */  beq        $v1, $v0, .Llevel_18_8007E90C
/* 4EB1630 8007E900 21280000 */   addu      $a1, $zero, $zero
/* 4EB1634 8007E904 AFEE000C */  jal        func_8003BABC
/* 4EB1638 8007E908 21300000 */   addu      $a2, $zero, $zero
.Llevel_18_8007E90C:
/* 4EB163C 8007E90C 000020AE */  sw         $zero, 0x0($s1)
/* 4EB1640 8007E910 180000AE */  sw         $zero, 0x18($s0)
.Llevel_18_8007E914:
/* 4EB1644 8007E914 0400258E */  lw         $a1, 0x4($s1)
/* 4EB1648 8007E918 F0EF000C */  jal        func_8003BFC0
/* 4EB164C 8007E91C 21200002 */   addu      $a0, $s0, $zero
/* 4EB1650 8007E920 0A004014 */  bnez       $v0, .Llevel_18_8007E94C
/* 4EB1654 8007E924 00000000 */   nop
/* 4EB1658 8007E928 0400258E */  lw         $a1, 0x4($s1)
/* 4EB165C 8007E92C F0EF000C */  jal        func_8003BFC0
/* 4EB1660 8007E930 21200002 */   addu      $a0, $s0, $zero
/* 4EB1664 8007E934 05004014 */  bnez       $v0, .Llevel_18_8007E94C
/* 4EB1668 8007E938 21200002 */   addu      $a0, $s0, $zero
/* 4EB166C 8007E93C 01000524 */  addiu      $a1, $zero, 0x1
/* 4EB1670 8007E940 AFEE000C */  jal        func_8003BABC
/* 4EB1674 8007E944 04000624 */   addiu     $a2, $zero, 0x4
/* 4EB1678 8007E948 040022AE */  sw         $v0, 0x4($s1)
.Llevel_18_8007E94C:
/* 4EB167C 8007E94C 0000238E */  lw         $v1, 0x0($s1)
/* 4EB1680 8007E950 00000000 */  nop
/* 4EB1684 8007E954 0F006228 */  slti       $v0, $v1, 0xF
/* 4EB1688 8007E958 03004014 */  bnez       $v0, .Llevel_18_8007E968
/* 4EB168C 8007E95C 03006228 */   slti      $v0, $v1, 0x3
/* 4EB1690 8007E960 5EFA0108 */  j          .Llevel_18_8007E978
/* 4EB1694 8007E964 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_18_8007E968:
/* 4EB1698 8007E968 02004014 */  bnez       $v0, .Llevel_18_8007E974
/* 4EB169C 8007E96C 01000224 */   addiu     $v0, $zero, 0x1
/* 4EB16A0 8007E970 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_18_8007E974:
/* 4EB16A4 8007E974 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_18_8007E978:
/* 4EB16A8 8007E978 48000392 */  lbu        $v1, 0x48($s0)
/* 4EB16AC 8007E97C 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB16B0 8007E980 11006210 */  beq        $v1, $v0, .Llevel_18_8007E9C8
/* 4EB16B4 8007E984 02006228 */   slti      $v0, $v1, 0x2
/* 4EB16B8 8007E988 05004010 */  beqz       $v0, .Llevel_18_8007E9A0
/* 4EB16BC 8007E98C 00000000 */   nop
/* 4EB16C0 8007E990 08006010 */  beqz       $v1, .Llevel_18_8007E9B4
/* 4EB16C4 8007E994 00000000 */   nop
/* 4EB16C8 8007E998 D4FA0108 */  j          .Llevel_18_8007EB50
/* 4EB16CC 8007E99C 00000000 */   nop
.Llevel_18_8007E9A0:
/* 4EB16D0 8007E9A0 02000224 */  addiu      $v0, $zero, 0x2
/* 4EB16D4 8007E9A4 30006210 */  beq        $v1, $v0, .Llevel_18_8007EA68
/* 4EB16D8 8007E9A8 00000000 */   nop
/* 4EB16DC 8007E9AC D4FA0108 */  j          .Llevel_18_8007EB50
/* 4EB16E0 8007E9B0 00000000 */   nop
.Llevel_18_8007E9B4:
/* 4EB16E4 8007E9B4 540000A2 */  sb         $zero, 0x54($s0)
/* 4EB16E8 8007E9B8 550000A2 */  sb         $zero, 0x55($s0)
/* 4EB16EC 8007E9BC 560000A2 */  sb         $zero, 0x56($s0)
/* 4EB16F0 8007E9C0 D4FA0108 */  j          .Llevel_18_8007EB50
/* 4EB16F4 8007E9C4 570000A2 */   sb        $zero, 0x57($s0)
.Llevel_18_8007E9C8:
/* 4EB16F8 8007E9C8 0000238E */  lw         $v1, 0x0($s1)
/* 4EB16FC 8007E9CC 00000000 */  nop
/* 4EB1700 8007E9D0 80100300 */  sll        $v0, $v1, 2
/* 4EB1704 8007E9D4 21104300 */  addu       $v0, $v0, $v1
/* 4EB1708 8007E9D8 00190200 */  sll        $v1, $v0, 4
/* 4EB170C 8007E9DC 21304300 */  addu       $a2, $v0, $v1
/* 4EB1710 8007E9E0 0001C228 */  slti       $v0, $a2, 0x100
/* 4EB1714 8007E9E4 03004014 */  bnez       $v0, .Llevel_18_8007E9F4
/* 4EB1718 8007E9E8 00000000 */   nop
/* 4EB171C 8007E9EC 80FA0108 */  j          .Llevel_18_8007EA00
/* 4EB1720 8007E9F0 FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_18_8007E9F4:
/* 4EB1724 8007E9F4 0300C104 */  bgez       $a2, .Llevel_18_8007EA04
/* 4EB1728 8007E9F8 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 4EB172C 8007E9FC 21300000 */  addu       $a2, $zero, $zero
.Llevel_18_8007EA00:
/* 4EB1730 8007EA00 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_18_8007EA04:
/* 4EB1734 8007EA04 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 4EB1738 8007EA08 0000238E */  lw         $v1, 0x0($s1)
/* 4EB173C 8007EA0C 0F000224 */  addiu      $v0, $zero, 0xF
/* 4EB1740 8007EA10 23104300 */  subu       $v0, $v0, $v1
/* 4EB1744 8007EA14 C0100200 */  sll        $v0, $v0, 3
/* 4EB1748 8007EA18 18004400 */  mult       $v0, $a0
/* 4EB174C 8007EA1C 10380000 */  mfhi       $a3
/* 4EB1750 8007EA20 2118E200 */  addu       $v1, $a3, $v0
/* 4EB1754 8007EA24 C3180300 */  sra        $v1, $v1, 3
/* 4EB1758 8007EA28 C3170200 */  sra        $v0, $v0, 31
/* 4EB175C 8007EA2C 23286200 */  subu       $a1, $v1, $v0
/* 4EB1760 8007EA30 1000A228 */  slti       $v0, $a1, 0x10
/* 4EB1764 8007EA34 03004014 */  bnez       $v0, .Llevel_18_8007EA44
/* 4EB1768 8007EA38 00000000 */   nop
/* 4EB176C 8007EA3C 94FA0108 */  j          .Llevel_18_8007EA50
/* 4EB1770 8007EA40 0F000524 */   addiu     $a1, $zero, 0xF
.Llevel_18_8007EA44:
/* 4EB1774 8007EA44 0300A104 */  bgez       $a1, .Llevel_18_8007EA54
/* 4EB1778 8007EA48 FF000224 */   addiu     $v0, $zero, 0xFF
/* 4EB177C 8007EA4C 21280000 */  addu       $a1, $zero, $zero
.Llevel_18_8007EA50:
/* 4EB1780 8007EA50 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_18_8007EA54:
/* 4EB1784 8007EA54 540002A2 */  sb         $v0, 0x54($s0)
/* 4EB1788 8007EA58 3000A234 */  ori        $v0, $a1, 0x30
/* 4EB178C 8007EA5C 550000A2 */  sb         $zero, 0x55($s0)
/* 4EB1790 8007EA60 CFFA0108 */  j          .Llevel_18_8007EB3C
/* 4EB1794 8007EA64 560006A2 */   sb        $a2, 0x56($s0)
.Llevel_18_8007EA68:
/* 4EB1798 8007EA68 0000238E */  lw         $v1, 0x0($s1)
/* 4EB179C 8007EA6C 00000000 */  nop
/* 4EB17A0 8007EA70 80100300 */  sll        $v0, $v1, 2
/* 4EB17A4 8007EA74 21104300 */  addu       $v0, $v0, $v1
/* 4EB17A8 8007EA78 00190200 */  sll        $v1, $v0, 4
/* 4EB17AC 8007EA7C 21104300 */  addu       $v0, $v0, $v1
/* 4EB17B0 8007EA80 40300200 */  sll        $a2, $v0, 1
/* 4EB17B4 8007EA84 0001C228 */  slti       $v0, $a2, 0x100
/* 4EB17B8 8007EA88 03004014 */  bnez       $v0, .Llevel_18_8007EA98
/* 4EB17BC 8007EA8C 00000000 */   nop
/* 4EB17C0 8007EA90 A9FA0108 */  j          .Llevel_18_8007EAA4
/* 4EB17C4 8007EA94 FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_18_8007EA98:
/* 4EB17C8 8007EA98 0200C104 */  bgez       $a2, .Llevel_18_8007EAA4
/* 4EB17CC 8007EA9C 00000000 */   nop
/* 4EB17D0 8007EAA0 21300000 */  addu       $a2, $zero, $zero
.Llevel_18_8007EAA4:
/* 4EB17D4 8007EAA4 0000238E */  lw         $v1, 0x0($s1)
/* 4EB17D8 8007EAA8 00000000 */  nop
/* 4EB17DC 8007EAAC 80100300 */  sll        $v0, $v1, 2
/* 4EB17E0 8007EAB0 21104300 */  addu       $v0, $v0, $v1
/* 4EB17E4 8007EAB4 00190200 */  sll        $v1, $v0, 4
/* 4EB17E8 8007EAB8 21284300 */  addu       $a1, $v0, $v1
/* 4EB17EC 8007EABC 0001A228 */  slti       $v0, $a1, 0x100
/* 4EB17F0 8007EAC0 03004014 */  bnez       $v0, .Llevel_18_8007EAD0
/* 4EB17F4 8007EAC4 00000000 */   nop
/* 4EB17F8 8007EAC8 B7FA0108 */  j          .Llevel_18_8007EADC
/* 4EB17FC 8007EACC FF000524 */   addiu     $a1, $zero, 0xFF
.Llevel_18_8007EAD0:
/* 4EB1800 8007EAD0 0300A104 */  bgez       $a1, .Llevel_18_8007EAE0
/* 4EB1804 8007EAD4 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 4EB1808 8007EAD8 21280000 */  addu       $a1, $zero, $zero
.Llevel_18_8007EADC:
/* 4EB180C 8007EADC 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_18_8007EAE0:
/* 4EB1810 8007EAE0 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 4EB1814 8007EAE4 0000238E */  lw         $v1, 0x0($s1)
/* 4EB1818 8007EAE8 0F000224 */  addiu      $v0, $zero, 0xF
/* 4EB181C 8007EAEC 23104300 */  subu       $v0, $v0, $v1
/* 4EB1820 8007EAF0 C0100200 */  sll        $v0, $v0, 3
/* 4EB1824 8007EAF4 18004400 */  mult       $v0, $a0
/* 4EB1828 8007EAF8 10380000 */  mfhi       $a3
/* 4EB182C 8007EAFC 2118E200 */  addu       $v1, $a3, $v0
/* 4EB1830 8007EB00 C3180300 */  sra        $v1, $v1, 3
/* 4EB1834 8007EB04 C3170200 */  sra        $v0, $v0, 31
/* 4EB1838 8007EB08 23186200 */  subu       $v1, $v1, $v0
/* 4EB183C 8007EB0C 10006228 */  slti       $v0, $v1, 0x10
/* 4EB1840 8007EB10 03004014 */  bnez       $v0, .Llevel_18_8007EB20
/* 4EB1844 8007EB14 00000000 */   nop
/* 4EB1848 8007EB18 CBFA0108 */  j          .Llevel_18_8007EB2C
/* 4EB184C 8007EB1C 0F000324 */   addiu     $v1, $zero, 0xF
.Llevel_18_8007EB20:
/* 4EB1850 8007EB20 03006104 */  bgez       $v1, .Llevel_18_8007EB30
/* 4EB1854 8007EB24 30006234 */   ori       $v0, $v1, 0x30
/* 4EB1858 8007EB28 21180000 */  addu       $v1, $zero, $zero
.Llevel_18_8007EB2C:
/* 4EB185C 8007EB2C 30006234 */  ori        $v0, $v1, 0x30
.Llevel_18_8007EB30:
/* 4EB1860 8007EB30 540006A2 */  sb         $a2, 0x54($s0)
/* 4EB1864 8007EB34 550000A2 */  sb         $zero, 0x55($s0)
/* 4EB1868 8007EB38 560005A2 */  sb         $a1, 0x56($s0)
.Llevel_18_8007EB3C:
/* 4EB186C 8007EB3C 570002A2 */  sb         $v0, 0x57($s0)
/* 4EB1870 8007EB40 0000228E */  lw         $v0, 0x0($s1)
/* 4EB1874 8007EB44 00000000 */  nop
/* 4EB1878 8007EB48 01004224 */  addiu      $v0, $v0, 0x1
/* 4EB187C 8007EB4C 000022AE */  sw         $v0, 0x0($s1)
.Llevel_18_8007EB50:
/* 4EB1880 8007EB50 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EB1884 8007EB54 1400B18F */  lw         $s1, 0x14($sp)
/* 4EB1888 8007EB58 1000B08F */  lw         $s0, 0x10($sp)
/* 4EB188C 8007EB5C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EB1890 8007EB60 0800E003 */  jr         $ra
/* 4EB1894 8007EB64 00000000 */   nop
.size MobyUpdate_577_level_18, . - MobyUpdate_577_level_18
