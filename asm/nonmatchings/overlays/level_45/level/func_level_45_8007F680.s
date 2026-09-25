.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_45_8007F680
/* 8D3BBB0 8007F680 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8D3BBB4 8007F684 3400B3AF */  sw         $s3, 0x34($sp)
/* 8D3BBB8 8007F688 21988000 */  addu       $s3, $a0, $zero
/* 8D3BBBC 8007F68C 3800B4AF */  sw         $s4, 0x38($sp)
/* 8D3BBC0 8007F690 21A0A000 */  addu       $s4, $a1, $zero
/* 8D3BBC4 8007F694 4400B7AF */  sw         $s7, 0x44($sp)
/* 8D3BBC8 8007F698 21B8C000 */  addu       $s7, $a2, $zero
/* 8D3BBCC 8007F69C 2800B0AF */  sw         $s0, 0x28($sp)
/* 8D3BBD0 8007F6A0 2180E000 */  addu       $s0, $a3, $zero
/* 8D3BBD4 8007F6A4 4000B6AF */  sw         $s6, 0x40($sp)
/* 8D3BBD8 8007F6A8 6400B68F */  lw         $s6, 0x64($sp)
/* 8D3BBDC 8007F6AC 21300000 */  addu       $a2, $zero, $zero
/* 8D3BBE0 8007F6B0 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 8D3BBE4 8007F6B4 4800BEAF */  sw         $fp, 0x48($sp)
/* 8D3BBE8 8007F6B8 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 8D3BBEC 8007F6BC 3000B2AF */  sw         $s2, 0x30($sp)
/* 8D3BBF0 8007F6C0 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8D3BBF4 8007F6C4 0C00638E */  lw         $v1, 0xC($s3)
/* 8D3BBF8 8007F6C8 0000848E */  lw         $a0, 0x0($s4)
/* 8D3BBFC 8007F6CC 1000628E */  lw         $v0, 0x10($s3)
/* 8D3BC00 8007F6D0 0400858E */  lw         $a1, 0x4($s4)
/* 8D3BC04 8007F6D4 6000B18F */  lw         $s1, 0x60($sp)
/* 8D3BC08 8007F6D8 7000BE8F */  lw         $fp, 0x70($sp)
/* 8D3BC0C 8007F6DC 23206400 */  subu       $a0, $v1, $a0
/* 8D3BC10 8007F6E0 203A010C */  jal        func_8004E880
/* 8D3BC14 8007F6E4 23284500 */   subu      $a1, $v0, $a1
/* 8D3BC18 8007F6E8 21904000 */  addu       $s2, $v0, $zero
/* 8D3BC1C 8007F6EC 21200002 */  addu       $a0, $s0, $zero
/* 8D3BC20 8007F6F0 4FD8000C */  jal        SubAngle8
/* 8D3BC24 8007F6F4 FF004532 */   andi      $a1, $s2, 0xFF
/* 8D3BC28 8007F6F8 0C006426 */  addiu      $a0, $s3, 0xC
/* 8D3BC2C 8007F6FC 21288002 */  addu       $a1, $s4, $zero
/* 8D3BC30 8007F700 CD3C010C */  jal        func_8004F334
/* 8D3BC34 8007F704 21A84000 */   addu      $s5, $v0, $zero
/* 8D3BC38 8007F708 21184000 */  addu       $v1, $v0, $zero
/* 8D3BC3C 8007F70C 0200A106 */  bgez       $s5, .Llevel_45_8007F718
/* 8D3BC40 8007F710 2110A002 */   addu      $v0, $s5, $zero
/* 8D3BC44 8007F714 23100200 */  negu       $v0, $v0
.Llevel_45_8007F718:
/* 8D3BC48 8007F718 2A105100 */  slt        $v0, $v0, $s1
/* 8D3BC4C 8007F71C 07004010 */  beqz       $v0, .Llevel_45_8007F73C
/* 8D3BC50 8007F720 23107700 */   subu      $v0, $v1, $s7
/* 8D3BC54 8007F724 03004104 */  bgez       $v0, .Llevel_45_8007F734
/* 8D3BC58 8007F728 C8004228 */   slti      $v0, $v0, 0xC8
/* 8D3BC5C 8007F72C 2310E302 */  subu       $v0, $s7, $v1
/* 8D3BC60 8007F730 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_45_8007F734:
/* 8D3BC64 8007F734 89004014 */  bnez       $v0, .Llevel_45_8007F95C
/* 8D3BC68 8007F738 00000000 */   nop
.Llevel_45_8007F73C:
/* 8D3BC6C 8007F73C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8D3BC70 8007F740 1200C213 */  beq        $fp, $v0, .Llevel_45_8007F78C
/* 8D3BC74 8007F744 00000000 */   nop
/* 8D3BC78 8007F748 FF005032 */  andi       $s0, $s2, 0xFF
/* 8D3BC7C 8007F74C 21200002 */  addu       $a0, $s0, $zero
/* 8D3BC80 8007F750 993C010C */  jal        func_8004F264
/* 8D3BC84 8007F754 2128C003 */   addu      $a1, $fp, $zero
/* 8D3BC88 8007F758 05004228 */  slti       $v0, $v0, 0x5
/* 8D3BC8C 8007F75C 0B004010 */  beqz       $v0, .Llevel_45_8007F78C
/* 8D3BC90 8007F760 2120C003 */   addu      $a0, $fp, $zero
/* 8D3BC94 8007F764 4FD8000C */  jal        SubAngle8
/* 8D3BC98 8007F768 21280002 */   addu      $a1, $s0, $zero
/* 8D3BC9C 8007F76C 0300A106 */  bgez       $s5, .Llevel_45_8007F77C
/* 8D3BCA0 8007F770 00000000 */   nop
/* 8D3BCA4 8007F774 1A004004 */  bltz       $v0, .Llevel_45_8007F7E0
/* 8D3BCA8 8007F778 00000000 */   nop
.Llevel_45_8007F77C:
/* 8D3BCAC 8007F77C 0300A01A */  blez       $s5, .Llevel_45_8007F78C
/* 8D3BCB0 8007F780 00000000 */   nop
/* 8D3BCB4 8007F784 7800401C */  bgtz       $v0, .Llevel_45_8007F968
/* 8D3BCB8 8007F788 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_45_8007F78C:
/* 8D3BCBC 8007F78C 7400A88F */  lw         $t0, 0x74($sp)
/* 8D3BCC0 8007F790 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8D3BCC4 8007F794 14000211 */  beq        $t0, $v0, .Llevel_45_8007F7E8
/* 8D3BCC8 8007F798 FF005032 */   andi      $s0, $s2, 0xFF
/* 8D3BCCC 8007F79C 7400A58F */  lw         $a1, 0x74($sp)
/* 8D3BCD0 8007F7A0 993C010C */  jal        func_8004F264
/* 8D3BCD4 8007F7A4 21200002 */   addu      $a0, $s0, $zero
/* 8D3BCD8 8007F7A8 05004228 */  slti       $v0, $v0, 0x5
/* 8D3BCDC 8007F7AC 0E004010 */  beqz       $v0, .Llevel_45_8007F7E8
/* 8D3BCE0 8007F7B0 00000000 */   nop
/* 8D3BCE4 8007F7B4 7400A48F */  lw         $a0, 0x74($sp)
/* 8D3BCE8 8007F7B8 4FD8000C */  jal        SubAngle8
/* 8D3BCEC 8007F7BC 21280002 */   addu      $a1, $s0, $zero
/* 8D3BCF0 8007F7C0 0300A106 */  bgez       $s5, .Llevel_45_8007F7D0
/* 8D3BCF4 8007F7C4 00000000 */   nop
/* 8D3BCF8 8007F7C8 05004004 */  bltz       $v0, .Llevel_45_8007F7E0
/* 8D3BCFC 8007F7CC 00000000 */   nop
.Llevel_45_8007F7D0:
/* 8D3BD00 8007F7D0 0500A01A */  blez       $s5, .Llevel_45_8007F7E8
/* 8D3BD04 8007F7D4 00000000 */   nop
/* 8D3BD08 8007F7D8 03004018 */  blez       $v0, .Llevel_45_8007F7E8
/* 8D3BD0C 8007F7DC 00000000 */   nop
.Llevel_45_8007F7E0:
/* 8D3BD10 8007F7E0 5AFE0108 */  j          .Llevel_45_8007F968
/* 8D3BD14 8007F7E4 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_45_8007F7E8:
/* 8D3BD18 8007F7E8 0300A106 */  bgez       $s5, .Llevel_45_8007F7F8
/* 8D3BD1C 8007F7EC 00000000 */   nop
/* 8D3BD20 8007F7F0 FFFD0108 */  j          .Llevel_45_8007F7FC
/* 8D3BD24 8007F7F4 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_45_8007F7F8:
/* 8D3BD28 8007F7F8 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_45_8007F7FC:
/* 8D3BD2C 8007F7FC FF004332 */  andi       $v1, $s2, 0xFF
/* 8D3BD30 8007F800 40180300 */  sll        $v1, $v1, 1
/* 8D3BD34 8007F804 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3BD38 8007F808 21082300 */  addu       $at, $at, $v1
/* 8D3BD3C 8007F80C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8D3BD40 8007F810 00000000 */  nop
/* 8D3BD44 8007F814 18005700 */  mult       $v0, $s7
/* 8D3BD48 8007F818 0000878E */  lw         $a3, 0x0($s4)
/* 8D3BD4C 8007F81C 12400000 */  mflo       $t0
/* 8D3BD50 8007F820 03130800 */  sra        $v0, $t0, 12
/* 8D3BD54 8007F824 2138E200 */  addu       $a3, $a3, $v0
/* 8D3BD58 8007F828 1800A7AF */  sw         $a3, 0x18($sp)
/* 8D3BD5C 8007F82C 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3BD60 8007F830 21082300 */  addu       $at, $at, $v1
/* 8D3BD64 8007F834 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8D3BD68 8007F838 00000000 */  nop
/* 8D3BD6C 8007F83C 18005700 */  mult       $v0, $s7
/* 8D3BD70 8007F840 21300000 */  addu       $a2, $zero, $zero
/* 8D3BD74 8007F844 0400858E */  lw         $a1, 0x4($s4)
/* 8D3BD78 8007F848 12400000 */  mflo       $t0
/* 8D3BD7C 8007F84C 03130800 */  sra        $v0, $t0, 12
/* 8D3BD80 8007F850 2128A200 */  addu       $a1, $a1, $v0
/* 8D3BD84 8007F854 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 8D3BD88 8007F858 0C00648E */  lw         $a0, 0xC($s3)
/* 8D3BD8C 8007F85C 1000628E */  lw         $v0, 0x10($s3)
/* 8D3BD90 8007F860 2320E400 */  subu       $a0, $a3, $a0
/* 8D3BD94 8007F864 203A010C */  jal        func_8004E880
/* 8D3BD98 8007F868 2328A200 */   subu      $a1, $a1, $v0
/* 8D3BD9C 8007F86C 21804000 */  addu       $s0, $v0, $zero
/* 8D3BDA0 8007F870 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8D3BDA4 8007F874 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8D3BDA8 8007F878 03000224 */  addiu      $v0, $zero, 0x3
/* 8D3BDAC 8007F87C 04006214 */  bne        $v1, $v0, .Llevel_45_8007F890
/* 8D3BDB0 8007F880 04000224 */   addiu     $v0, $zero, 0x4
/* 8D3BDB4 8007F884 43101600 */  sra        $v0, $s6, 1
/* 8D3BDB8 8007F888 27FE0108 */  j          .Llevel_45_8007F89C
/* 8D3BDBC 8007F88C 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_45_8007F890:
/* 8D3BDC0 8007F890 02006214 */  bne        $v1, $v0, .Llevel_45_8007F89C
/* 8D3BDC4 8007F894 00000000 */   nop
/* 8D3BDC8 8007F898 40B01600 */  sll        $s6, $s6, 1
.Llevel_45_8007F89C:
/* 8D3BDCC 8007F89C 8000A88F */  lw         $t0, 0x80($sp)
/* 8D3BDD0 8007F8A0 00000000 */  nop
/* 8D3BDD4 8007F8A4 08000231 */  andi       $v0, $t0, 0x8
/* 8D3BDD8 8007F8A8 1A004010 */  beqz       $v0, .Llevel_45_8007F914
/* 8D3BDDC 8007F8AC 21300000 */   addu      $a2, $zero, $zero
/* 8D3BDE0 8007F8B0 0000838E */  lw         $v1, 0x0($s4)
/* 8D3BDE4 8007F8B4 0C00648E */  lw         $a0, 0xC($s3)
/* 8D3BDE8 8007F8B8 0400828E */  lw         $v0, 0x4($s4)
/* 8D3BDEC 8007F8BC 1000658E */  lw         $a1, 0x10($s3)
/* 8D3BDF0 8007F8C0 23206400 */  subu       $a0, $v1, $a0
/* 8D3BDF4 8007F8C4 203A010C */  jal        func_8004E880
/* 8D3BDF8 8007F8C8 23284500 */   subu      $a1, $v0, $a1
/* 8D3BDFC 8007F8CC 21206002 */  addu       $a0, $s3, $zero
/* 8D3BE00 8007F8D0 21284000 */  addu       $a1, $v0, $zero
/* 8D3BE04 8007F8D4 6800A68F */  lw         $a2, 0x68($sp)
/* 8D3BE08 8007F8D8 21380000 */  addu       $a3, $zero, $zero
/* 8D3BE0C 8007F8DC 1000A0AF */  sw         $zero, 0x10($sp)
/* 8D3BE10 8007F8E0 17D6000C */  jal        func_8003585C
/* 8D3BE14 8007F8E4 1400A0AF */   sw        $zero, 0x14($sp)
/* 8D3BE18 8007F8E8 21206002 */  addu       $a0, $s3, $zero
/* 8D3BE1C 8007F8EC 7800A78F */  lw         $a3, 0x78($sp)
/* 8D3BE20 8007F8F0 7C00A88F */  lw         $t0, 0x7C($sp)
/* 8D3BE24 8007F8F4 21280002 */  addu       $a1, $s0, $zero
/* 8D3BE28 8007F8F8 1000A8AF */  sw         $t0, 0x10($sp)
/* 8D3BE2C 8007F8FC 8000A88F */  lw         $t0, 0x80($sp)
/* 8D3BE30 8007F900 2130C002 */  addu       $a2, $s6, $zero
/* 8D3BE34 8007F904 B8D7000C */  jal        func_80035EE0
/* 8D3BE38 8007F908 1400A8AF */   sw        $t0, 0x14($sp)
/* 8D3BE3C 8007F90C 55FE0108 */  j          .Llevel_45_8007F954
/* 8D3BE40 8007F910 00000000 */   nop
.Llevel_45_8007F914:
/* 8D3BE44 8007F914 21206002 */  addu       $a0, $s3, $zero
/* 8D3BE48 8007F918 21280002 */  addu       $a1, $s0, $zero
/* 8D3BE4C 8007F91C 6800A68F */  lw         $a2, 0x68($sp)
/* 8D3BE50 8007F920 6C00A78F */  lw         $a3, 0x6C($sp)
/* 8D3BE54 8007F924 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3BE58 8007F928 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D3BE5C 8007F92C 17D6000C */  jal        func_8003585C
/* 8D3BE60 8007F930 1400A0AF */   sw        $zero, 0x14($sp)
/* 8D3BE64 8007F934 09004010 */  beqz       $v0, .Llevel_45_8007F95C
/* 8D3BE68 8007F938 21206002 */   addu      $a0, $s3, $zero
/* 8D3BE6C 8007F93C 8000A88F */  lw         $t0, 0x80($sp)
/* 8D3BE70 8007F940 7800A68F */  lw         $a2, 0x78($sp)
/* 8D3BE74 8007F944 7C00A78F */  lw         $a3, 0x7C($sp)
/* 8D3BE78 8007F948 2128C002 */  addu       $a1, $s6, $zero
/* 8D3BE7C 8007F94C 77D7000C */  jal        func_80035DDC
/* 8D3BE80 8007F950 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_45_8007F954:
/* 8D3BE84 8007F954 04004014 */  bnez       $v0, .Llevel_45_8007F968
/* 8D3BE88 8007F958 23100200 */   negu      $v0, $v0
.Llevel_45_8007F95C:
/* 8D3BE8C 8007F95C 0200A106 */  bgez       $s5, .Llevel_45_8007F968
/* 8D3BE90 8007F960 2110A002 */   addu      $v0, $s5, $zero
/* 8D3BE94 8007F964 23100200 */  negu       $v0, $v0
.Llevel_45_8007F968:
/* 8D3BE98 8007F968 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 8D3BE9C 8007F96C 4800BE8F */  lw         $fp, 0x48($sp)
/* 8D3BEA0 8007F970 4400B78F */  lw         $s7, 0x44($sp)
/* 8D3BEA4 8007F974 4000B68F */  lw         $s6, 0x40($sp)
/* 8D3BEA8 8007F978 3C00B58F */  lw         $s5, 0x3C($sp)
/* 8D3BEAC 8007F97C 3800B48F */  lw         $s4, 0x38($sp)
/* 8D3BEB0 8007F980 3400B38F */  lw         $s3, 0x34($sp)
/* 8D3BEB4 8007F984 3000B28F */  lw         $s2, 0x30($sp)
/* 8D3BEB8 8007F988 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8D3BEBC 8007F98C 2800B08F */  lw         $s0, 0x28($sp)
/* 8D3BEC0 8007F990 5000BD27 */  addiu      $sp, $sp, 0x50
/* 8D3BEC4 8007F994 0800E003 */  jr         $ra
/* 8D3BEC8 8007F998 00000000 */   nop
.size func_level_45_8007F680, . - func_level_45_8007F680
