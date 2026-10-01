.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_22_8008F920
/* 577F650 8008F920 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 577F654 8008F924 3400B3AF */  sw         $s3, 0x34($sp)
/* 577F658 8008F928 21988000 */  addu       $s3, $a0, $zero
/* 577F65C 8008F92C 3800B4AF */  sw         $s4, 0x38($sp)
/* 577F660 8008F930 21A0A000 */  addu       $s4, $a1, $zero
/* 577F664 8008F934 4400B7AF */  sw         $s7, 0x44($sp)
/* 577F668 8008F938 21B8C000 */  addu       $s7, $a2, $zero
/* 577F66C 8008F93C 2800B0AF */  sw         $s0, 0x28($sp)
/* 577F670 8008F940 2180E000 */  addu       $s0, $a3, $zero
/* 577F674 8008F944 4000B6AF */  sw         $s6, 0x40($sp)
/* 577F678 8008F948 6400B68F */  lw         $s6, 0x64($sp)
/* 577F67C 8008F94C 21300000 */  addu       $a2, $zero, $zero
/* 577F680 8008F950 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 577F684 8008F954 4800BEAF */  sw         $fp, 0x48($sp)
/* 577F688 8008F958 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 577F68C 8008F95C 3000B2AF */  sw         $s2, 0x30($sp)
/* 577F690 8008F960 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 577F694 8008F964 0C00638E */  lw         $v1, 0xC($s3)
/* 577F698 8008F968 0000848E */  lw         $a0, 0x0($s4)
/* 577F69C 8008F96C 1000628E */  lw         $v0, 0x10($s3)
/* 577F6A0 8008F970 0400858E */  lw         $a1, 0x4($s4)
/* 577F6A4 8008F974 6000B18F */  lw         $s1, 0x60($sp)
/* 577F6A8 8008F978 7000BE8F */  lw         $fp, 0x70($sp)
/* 577F6AC 8008F97C 23206400 */  subu       $a0, $v1, $a0
/* 577F6B0 8008F980 203A010C */  jal        func_8004E880
/* 577F6B4 8008F984 23284500 */   subu      $a1, $v0, $a1
/* 577F6B8 8008F988 21904000 */  addu       $s2, $v0, $zero
/* 577F6BC 8008F98C 21200002 */  addu       $a0, $s0, $zero
/* 577F6C0 8008F990 4FD8000C */  jal        SubAngle8
/* 577F6C4 8008F994 FF004532 */   andi      $a1, $s2, 0xFF
/* 577F6C8 8008F998 0C006426 */  addiu      $a0, $s3, 0xC
/* 577F6CC 8008F99C 21288002 */  addu       $a1, $s4, $zero
/* 577F6D0 8008F9A0 CD3C010C */  jal        func_8004F334
/* 577F6D4 8008F9A4 21A84000 */   addu      $s5, $v0, $zero
/* 577F6D8 8008F9A8 21184000 */  addu       $v1, $v0, $zero
/* 577F6DC 8008F9AC 0200A106 */  bgez       $s5, .Llevel_22_8008F9B8
/* 577F6E0 8008F9B0 2110A002 */   addu      $v0, $s5, $zero
/* 577F6E4 8008F9B4 23100200 */  negu       $v0, $v0
.Llevel_22_8008F9B8:
/* 577F6E8 8008F9B8 2A105100 */  slt        $v0, $v0, $s1
/* 577F6EC 8008F9BC 07004010 */  beqz       $v0, .Llevel_22_8008F9DC
/* 577F6F0 8008F9C0 23107700 */   subu      $v0, $v1, $s7
/* 577F6F4 8008F9C4 03004104 */  bgez       $v0, .Llevel_22_8008F9D4
/* 577F6F8 8008F9C8 C8004228 */   slti      $v0, $v0, 0xC8
/* 577F6FC 8008F9CC 2310E302 */  subu       $v0, $s7, $v1
/* 577F700 8008F9D0 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_22_8008F9D4:
/* 577F704 8008F9D4 89004014 */  bnez       $v0, .Llevel_22_8008FBFC
/* 577F708 8008F9D8 00000000 */   nop
.Llevel_22_8008F9DC:
/* 577F70C 8008F9DC FF000224 */  addiu      $v0, $zero, 0xFF
/* 577F710 8008F9E0 1200C213 */  beq        $fp, $v0, .Llevel_22_8008FA2C
/* 577F714 8008F9E4 00000000 */   nop
/* 577F718 8008F9E8 FF005032 */  andi       $s0, $s2, 0xFF
/* 577F71C 8008F9EC 21200002 */  addu       $a0, $s0, $zero
/* 577F720 8008F9F0 993C010C */  jal        func_8004F264
/* 577F724 8008F9F4 2128C003 */   addu      $a1, $fp, $zero
/* 577F728 8008F9F8 05004228 */  slti       $v0, $v0, 0x5
/* 577F72C 8008F9FC 0B004010 */  beqz       $v0, .Llevel_22_8008FA2C
/* 577F730 8008FA00 2120C003 */   addu      $a0, $fp, $zero
/* 577F734 8008FA04 4FD8000C */  jal        SubAngle8
/* 577F738 8008FA08 21280002 */   addu      $a1, $s0, $zero
/* 577F73C 8008FA0C 0300A106 */  bgez       $s5, .Llevel_22_8008FA1C
/* 577F740 8008FA10 00000000 */   nop
/* 577F744 8008FA14 1A004004 */  bltz       $v0, .Llevel_22_8008FA80
/* 577F748 8008FA18 00000000 */   nop
.Llevel_22_8008FA1C:
/* 577F74C 8008FA1C 0300A01A */  blez       $s5, .Llevel_22_8008FA2C
/* 577F750 8008FA20 00000000 */   nop
/* 577F754 8008FA24 7800401C */  bgtz       $v0, .Llevel_22_8008FC08
/* 577F758 8008FA28 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_22_8008FA2C:
/* 577F75C 8008FA2C 7400A88F */  lw         $t0, 0x74($sp)
/* 577F760 8008FA30 FF000224 */  addiu      $v0, $zero, 0xFF
/* 577F764 8008FA34 14000211 */  beq        $t0, $v0, .Llevel_22_8008FA88
/* 577F768 8008FA38 FF005032 */   andi      $s0, $s2, 0xFF
/* 577F76C 8008FA3C 7400A58F */  lw         $a1, 0x74($sp)
/* 577F770 8008FA40 993C010C */  jal        func_8004F264
/* 577F774 8008FA44 21200002 */   addu      $a0, $s0, $zero
/* 577F778 8008FA48 05004228 */  slti       $v0, $v0, 0x5
/* 577F77C 8008FA4C 0E004010 */  beqz       $v0, .Llevel_22_8008FA88
/* 577F780 8008FA50 00000000 */   nop
/* 577F784 8008FA54 7400A48F */  lw         $a0, 0x74($sp)
/* 577F788 8008FA58 4FD8000C */  jal        SubAngle8
/* 577F78C 8008FA5C 21280002 */   addu      $a1, $s0, $zero
/* 577F790 8008FA60 0300A106 */  bgez       $s5, .Llevel_22_8008FA70
/* 577F794 8008FA64 00000000 */   nop
/* 577F798 8008FA68 05004004 */  bltz       $v0, .Llevel_22_8008FA80
/* 577F79C 8008FA6C 00000000 */   nop
.Llevel_22_8008FA70:
/* 577F7A0 8008FA70 0500A01A */  blez       $s5, .Llevel_22_8008FA88
/* 577F7A4 8008FA74 00000000 */   nop
/* 577F7A8 8008FA78 03004018 */  blez       $v0, .Llevel_22_8008FA88
/* 577F7AC 8008FA7C 00000000 */   nop
.Llevel_22_8008FA80:
/* 577F7B0 8008FA80 023F0208 */  j          .Llevel_22_8008FC08
/* 577F7B4 8008FA84 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_22_8008FA88:
/* 577F7B8 8008FA88 0300A106 */  bgez       $s5, .Llevel_22_8008FA98
/* 577F7BC 8008FA8C 00000000 */   nop
/* 577F7C0 8008FA90 A73E0208 */  j          .Llevel_22_8008FA9C
/* 577F7C4 8008FA94 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_22_8008FA98:
/* 577F7C8 8008FA98 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_22_8008FA9C:
/* 577F7CC 8008FA9C FF004332 */  andi       $v1, $s2, 0xFF
/* 577F7D0 8008FAA0 40180300 */  sll        $v1, $v1, 1
/* 577F7D4 8008FAA4 0680013C */  lui        $at, %hi(D_80065920)
/* 577F7D8 8008FAA8 21082300 */  addu       $at, $at, $v1
/* 577F7DC 8008FAAC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 577F7E0 8008FAB0 00000000 */  nop
/* 577F7E4 8008FAB4 18005700 */  mult       $v0, $s7
/* 577F7E8 8008FAB8 0000878E */  lw         $a3, 0x0($s4)
/* 577F7EC 8008FABC 12400000 */  mflo       $t0
/* 577F7F0 8008FAC0 03130800 */  sra        $v0, $t0, 12
/* 577F7F4 8008FAC4 2138E200 */  addu       $a3, $a3, $v0
/* 577F7F8 8008FAC8 1800A7AF */  sw         $a3, 0x18($sp)
/* 577F7FC 8008FACC 0680013C */  lui        $at, %hi(D_800658A0)
/* 577F800 8008FAD0 21082300 */  addu       $at, $at, $v1
/* 577F804 8008FAD4 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 577F808 8008FAD8 00000000 */  nop
/* 577F80C 8008FADC 18005700 */  mult       $v0, $s7
/* 577F810 8008FAE0 21300000 */  addu       $a2, $zero, $zero
/* 577F814 8008FAE4 0400858E */  lw         $a1, 0x4($s4)
/* 577F818 8008FAE8 12400000 */  mflo       $t0
/* 577F81C 8008FAEC 03130800 */  sra        $v0, $t0, 12
/* 577F820 8008FAF0 2128A200 */  addu       $a1, $a1, $v0
/* 577F824 8008FAF4 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 577F828 8008FAF8 0C00648E */  lw         $a0, 0xC($s3)
/* 577F82C 8008FAFC 1000628E */  lw         $v0, 0x10($s3)
/* 577F830 8008FB00 2320E400 */  subu       $a0, $a3, $a0
/* 577F834 8008FB04 203A010C */  jal        func_8004E880
/* 577F838 8008FB08 2328A200 */   subu      $a1, $a1, $v0
/* 577F83C 8008FB0C 21804000 */  addu       $s0, $v0, $zero
/* 577F840 8008FB10 0780033C */  lui        $v1, %hi(D_8006C648)
/* 577F844 8008FB14 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 577F848 8008FB18 03000224 */  addiu      $v0, $zero, 0x3
/* 577F84C 8008FB1C 04006214 */  bne        $v1, $v0, .Llevel_22_8008FB30
/* 577F850 8008FB20 04000224 */   addiu     $v0, $zero, 0x4
/* 577F854 8008FB24 43101600 */  sra        $v0, $s6, 1
/* 577F858 8008FB28 CF3E0208 */  j          .Llevel_22_8008FB3C
/* 577F85C 8008FB2C 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_22_8008FB30:
/* 577F860 8008FB30 02006214 */  bne        $v1, $v0, .Llevel_22_8008FB3C
/* 577F864 8008FB34 00000000 */   nop
/* 577F868 8008FB38 40B01600 */  sll        $s6, $s6, 1
.Llevel_22_8008FB3C:
/* 577F86C 8008FB3C 8000A88F */  lw         $t0, 0x80($sp)
/* 577F870 8008FB40 00000000 */  nop
/* 577F874 8008FB44 08000231 */  andi       $v0, $t0, 0x8
/* 577F878 8008FB48 1A004010 */  beqz       $v0, .Llevel_22_8008FBB4
/* 577F87C 8008FB4C 21300000 */   addu      $a2, $zero, $zero
/* 577F880 8008FB50 0000838E */  lw         $v1, 0x0($s4)
/* 577F884 8008FB54 0C00648E */  lw         $a0, 0xC($s3)
/* 577F888 8008FB58 0400828E */  lw         $v0, 0x4($s4)
/* 577F88C 8008FB5C 1000658E */  lw         $a1, 0x10($s3)
/* 577F890 8008FB60 23206400 */  subu       $a0, $v1, $a0
/* 577F894 8008FB64 203A010C */  jal        func_8004E880
/* 577F898 8008FB68 23284500 */   subu      $a1, $v0, $a1
/* 577F89C 8008FB6C 21206002 */  addu       $a0, $s3, $zero
/* 577F8A0 8008FB70 21284000 */  addu       $a1, $v0, $zero
/* 577F8A4 8008FB74 6800A68F */  lw         $a2, 0x68($sp)
/* 577F8A8 8008FB78 21380000 */  addu       $a3, $zero, $zero
/* 577F8AC 8008FB7C 1000A0AF */  sw         $zero, 0x10($sp)
/* 577F8B0 8008FB80 17D6000C */  jal        func_8003585C
/* 577F8B4 8008FB84 1400A0AF */   sw        $zero, 0x14($sp)
/* 577F8B8 8008FB88 21206002 */  addu       $a0, $s3, $zero
/* 577F8BC 8008FB8C 7800A78F */  lw         $a3, 0x78($sp)
/* 577F8C0 8008FB90 7C00A88F */  lw         $t0, 0x7C($sp)
/* 577F8C4 8008FB94 21280002 */  addu       $a1, $s0, $zero
/* 577F8C8 8008FB98 1000A8AF */  sw         $t0, 0x10($sp)
/* 577F8CC 8008FB9C 8000A88F */  lw         $t0, 0x80($sp)
/* 577F8D0 8008FBA0 2130C002 */  addu       $a2, $s6, $zero
/* 577F8D4 8008FBA4 B8D7000C */  jal        func_80035EE0
/* 577F8D8 8008FBA8 1400A8AF */   sw        $t0, 0x14($sp)
/* 577F8DC 8008FBAC FD3E0208 */  j          .Llevel_22_8008FBF4
/* 577F8E0 8008FBB0 00000000 */   nop
.Llevel_22_8008FBB4:
/* 577F8E4 8008FBB4 21206002 */  addu       $a0, $s3, $zero
/* 577F8E8 8008FBB8 21280002 */  addu       $a1, $s0, $zero
/* 577F8EC 8008FBBC 6800A68F */  lw         $a2, 0x68($sp)
/* 577F8F0 8008FBC0 6C00A78F */  lw         $a3, 0x6C($sp)
/* 577F8F4 8008FBC4 01000224 */  addiu      $v0, $zero, 0x1
/* 577F8F8 8008FBC8 1000A2AF */  sw         $v0, 0x10($sp)
/* 577F8FC 8008FBCC 17D6000C */  jal        func_8003585C
/* 577F900 8008FBD0 1400A0AF */   sw        $zero, 0x14($sp)
/* 577F904 8008FBD4 09004010 */  beqz       $v0, .Llevel_22_8008FBFC
/* 577F908 8008FBD8 21206002 */   addu      $a0, $s3, $zero
/* 577F90C 8008FBDC 8000A88F */  lw         $t0, 0x80($sp)
/* 577F910 8008FBE0 7800A68F */  lw         $a2, 0x78($sp)
/* 577F914 8008FBE4 7C00A78F */  lw         $a3, 0x7C($sp)
/* 577F918 8008FBE8 2128C002 */  addu       $a1, $s6, $zero
/* 577F91C 8008FBEC 77D7000C */  jal        func_80035DDC
/* 577F920 8008FBF0 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_22_8008FBF4:
/* 577F924 8008FBF4 04004014 */  bnez       $v0, .Llevel_22_8008FC08
/* 577F928 8008FBF8 23100200 */   negu      $v0, $v0
.Llevel_22_8008FBFC:
/* 577F92C 8008FBFC 0200A106 */  bgez       $s5, .Llevel_22_8008FC08
/* 577F930 8008FC00 2110A002 */   addu      $v0, $s5, $zero
/* 577F934 8008FC04 23100200 */  negu       $v0, $v0
.Llevel_22_8008FC08:
/* 577F938 8008FC08 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 577F93C 8008FC0C 4800BE8F */  lw         $fp, 0x48($sp)
/* 577F940 8008FC10 4400B78F */  lw         $s7, 0x44($sp)
/* 577F944 8008FC14 4000B68F */  lw         $s6, 0x40($sp)
/* 577F948 8008FC18 3C00B58F */  lw         $s5, 0x3C($sp)
/* 577F94C 8008FC1C 3800B48F */  lw         $s4, 0x38($sp)
/* 577F950 8008FC20 3400B38F */  lw         $s3, 0x34($sp)
/* 577F954 8008FC24 3000B28F */  lw         $s2, 0x30($sp)
/* 577F958 8008FC28 2C00B18F */  lw         $s1, 0x2C($sp)
/* 577F95C 8008FC2C 2800B08F */  lw         $s0, 0x28($sp)
/* 577F960 8008FC30 5000BD27 */  addiu      $sp, $sp, 0x50
/* 577F964 8008FC34 0800E003 */  jr         $ra
/* 577F968 8008FC38 00000000 */   nop
.size func_level_22_8008F920, . - func_level_22_8008F920
