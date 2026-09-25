.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8008FACC
/* 74EB7FC 8008FACC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 74EB800 8008FAD0 3400B3AF */  sw         $s3, 0x34($sp)
/* 74EB804 8008FAD4 21988000 */  addu       $s3, $a0, $zero
/* 74EB808 8008FAD8 3800B4AF */  sw         $s4, 0x38($sp)
/* 74EB80C 8008FADC 21A0A000 */  addu       $s4, $a1, $zero
/* 74EB810 8008FAE0 4400B7AF */  sw         $s7, 0x44($sp)
/* 74EB814 8008FAE4 21B8C000 */  addu       $s7, $a2, $zero
/* 74EB818 8008FAE8 2800B0AF */  sw         $s0, 0x28($sp)
/* 74EB81C 8008FAEC 2180E000 */  addu       $s0, $a3, $zero
/* 74EB820 8008FAF0 4000B6AF */  sw         $s6, 0x40($sp)
/* 74EB824 8008FAF4 6400B68F */  lw         $s6, 0x64($sp)
/* 74EB828 8008FAF8 21300000 */  addu       $a2, $zero, $zero
/* 74EB82C 8008FAFC 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 74EB830 8008FB00 4800BEAF */  sw         $fp, 0x48($sp)
/* 74EB834 8008FB04 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 74EB838 8008FB08 3000B2AF */  sw         $s2, 0x30($sp)
/* 74EB83C 8008FB0C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 74EB840 8008FB10 0C00638E */  lw         $v1, 0xC($s3)
/* 74EB844 8008FB14 0000848E */  lw         $a0, 0x0($s4)
/* 74EB848 8008FB18 1000628E */  lw         $v0, 0x10($s3)
/* 74EB84C 8008FB1C 0400858E */  lw         $a1, 0x4($s4)
/* 74EB850 8008FB20 6000B18F */  lw         $s1, 0x60($sp)
/* 74EB854 8008FB24 7000BE8F */  lw         $fp, 0x70($sp)
/* 74EB858 8008FB28 23206400 */  subu       $a0, $v1, $a0
/* 74EB85C 8008FB2C 203A010C */  jal        func_8004E880
/* 74EB860 8008FB30 23284500 */   subu      $a1, $v0, $a1
/* 74EB864 8008FB34 21904000 */  addu       $s2, $v0, $zero
/* 74EB868 8008FB38 21200002 */  addu       $a0, $s0, $zero
/* 74EB86C 8008FB3C 4FD8000C */  jal        SubAngle8
/* 74EB870 8008FB40 FF004532 */   andi      $a1, $s2, 0xFF
/* 74EB874 8008FB44 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EB878 8008FB48 21288002 */  addu       $a1, $s4, $zero
/* 74EB87C 8008FB4C CD3C010C */  jal        func_8004F334
/* 74EB880 8008FB50 21A84000 */   addu      $s5, $v0, $zero
/* 74EB884 8008FB54 21184000 */  addu       $v1, $v0, $zero
/* 74EB888 8008FB58 0200A106 */  bgez       $s5, .Llevel_34_8008FB64
/* 74EB88C 8008FB5C 2110A002 */   addu      $v0, $s5, $zero
/* 74EB890 8008FB60 23100200 */  negu       $v0, $v0
.Llevel_34_8008FB64:
/* 74EB894 8008FB64 2A105100 */  slt        $v0, $v0, $s1
/* 74EB898 8008FB68 07004010 */  beqz       $v0, .Llevel_34_8008FB88
/* 74EB89C 8008FB6C 23107700 */   subu      $v0, $v1, $s7
/* 74EB8A0 8008FB70 03004104 */  bgez       $v0, .Llevel_34_8008FB80
/* 74EB8A4 8008FB74 C8004228 */   slti      $v0, $v0, 0xC8
/* 74EB8A8 8008FB78 2310E302 */  subu       $v0, $s7, $v1
/* 74EB8AC 8008FB7C C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_34_8008FB80:
/* 74EB8B0 8008FB80 89004014 */  bnez       $v0, .Llevel_34_8008FDA8
/* 74EB8B4 8008FB84 00000000 */   nop
.Llevel_34_8008FB88:
/* 74EB8B8 8008FB88 FF000224 */  addiu      $v0, $zero, 0xFF
/* 74EB8BC 8008FB8C 1200C213 */  beq        $fp, $v0, .Llevel_34_8008FBD8
/* 74EB8C0 8008FB90 00000000 */   nop
/* 74EB8C4 8008FB94 FF005032 */  andi       $s0, $s2, 0xFF
/* 74EB8C8 8008FB98 21200002 */  addu       $a0, $s0, $zero
/* 74EB8CC 8008FB9C 993C010C */  jal        func_8004F264
/* 74EB8D0 8008FBA0 2128C003 */   addu      $a1, $fp, $zero
/* 74EB8D4 8008FBA4 05004228 */  slti       $v0, $v0, 0x5
/* 74EB8D8 8008FBA8 0B004010 */  beqz       $v0, .Llevel_34_8008FBD8
/* 74EB8DC 8008FBAC 2120C003 */   addu      $a0, $fp, $zero
/* 74EB8E0 8008FBB0 4FD8000C */  jal        SubAngle8
/* 74EB8E4 8008FBB4 21280002 */   addu      $a1, $s0, $zero
/* 74EB8E8 8008FBB8 0300A106 */  bgez       $s5, .Llevel_34_8008FBC8
/* 74EB8EC 8008FBBC 00000000 */   nop
/* 74EB8F0 8008FBC0 1A004004 */  bltz       $v0, .Llevel_34_8008FC2C
/* 74EB8F4 8008FBC4 00000000 */   nop
.Llevel_34_8008FBC8:
/* 74EB8F8 8008FBC8 0300A01A */  blez       $s5, .Llevel_34_8008FBD8
/* 74EB8FC 8008FBCC 00000000 */   nop
/* 74EB900 8008FBD0 7800401C */  bgtz       $v0, .Llevel_34_8008FDB4
/* 74EB904 8008FBD4 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_34_8008FBD8:
/* 74EB908 8008FBD8 7400A88F */  lw         $t0, 0x74($sp)
/* 74EB90C 8008FBDC FF000224 */  addiu      $v0, $zero, 0xFF
/* 74EB910 8008FBE0 14000211 */  beq        $t0, $v0, .Llevel_34_8008FC34
/* 74EB914 8008FBE4 FF005032 */   andi      $s0, $s2, 0xFF
/* 74EB918 8008FBE8 7400A58F */  lw         $a1, 0x74($sp)
/* 74EB91C 8008FBEC 993C010C */  jal        func_8004F264
/* 74EB920 8008FBF0 21200002 */   addu      $a0, $s0, $zero
/* 74EB924 8008FBF4 05004228 */  slti       $v0, $v0, 0x5
/* 74EB928 8008FBF8 0E004010 */  beqz       $v0, .Llevel_34_8008FC34
/* 74EB92C 8008FBFC 00000000 */   nop
/* 74EB930 8008FC00 7400A48F */  lw         $a0, 0x74($sp)
/* 74EB934 8008FC04 4FD8000C */  jal        SubAngle8
/* 74EB938 8008FC08 21280002 */   addu      $a1, $s0, $zero
/* 74EB93C 8008FC0C 0300A106 */  bgez       $s5, .Llevel_34_8008FC1C
/* 74EB940 8008FC10 00000000 */   nop
/* 74EB944 8008FC14 05004004 */  bltz       $v0, .Llevel_34_8008FC2C
/* 74EB948 8008FC18 00000000 */   nop
.Llevel_34_8008FC1C:
/* 74EB94C 8008FC1C 0500A01A */  blez       $s5, .Llevel_34_8008FC34
/* 74EB950 8008FC20 00000000 */   nop
/* 74EB954 8008FC24 03004018 */  blez       $v0, .Llevel_34_8008FC34
/* 74EB958 8008FC28 00000000 */   nop
.Llevel_34_8008FC2C:
/* 74EB95C 8008FC2C 6D3F0208 */  j          .Llevel_34_8008FDB4
/* 74EB960 8008FC30 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_34_8008FC34:
/* 74EB964 8008FC34 0300A106 */  bgez       $s5, .Llevel_34_8008FC44
/* 74EB968 8008FC38 00000000 */   nop
/* 74EB96C 8008FC3C 123F0208 */  j          .Llevel_34_8008FC48
/* 74EB970 8008FC40 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_34_8008FC44:
/* 74EB974 8008FC44 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_34_8008FC48:
/* 74EB978 8008FC48 FF004332 */  andi       $v1, $s2, 0xFF
/* 74EB97C 8008FC4C 40180300 */  sll        $v1, $v1, 1
/* 74EB980 8008FC50 0680013C */  lui        $at, %hi(D_80065920)
/* 74EB984 8008FC54 21082300 */  addu       $at, $at, $v1
/* 74EB988 8008FC58 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 74EB98C 8008FC5C 00000000 */  nop
/* 74EB990 8008FC60 18005700 */  mult       $v0, $s7
/* 74EB994 8008FC64 0000878E */  lw         $a3, 0x0($s4)
/* 74EB998 8008FC68 12400000 */  mflo       $t0
/* 74EB99C 8008FC6C 03130800 */  sra        $v0, $t0, 12
/* 74EB9A0 8008FC70 2138E200 */  addu       $a3, $a3, $v0
/* 74EB9A4 8008FC74 1800A7AF */  sw         $a3, 0x18($sp)
/* 74EB9A8 8008FC78 0680013C */  lui        $at, %hi(D_800658A0)
/* 74EB9AC 8008FC7C 21082300 */  addu       $at, $at, $v1
/* 74EB9B0 8008FC80 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 74EB9B4 8008FC84 00000000 */  nop
/* 74EB9B8 8008FC88 18005700 */  mult       $v0, $s7
/* 74EB9BC 8008FC8C 21300000 */  addu       $a2, $zero, $zero
/* 74EB9C0 8008FC90 0400858E */  lw         $a1, 0x4($s4)
/* 74EB9C4 8008FC94 12400000 */  mflo       $t0
/* 74EB9C8 8008FC98 03130800 */  sra        $v0, $t0, 12
/* 74EB9CC 8008FC9C 2128A200 */  addu       $a1, $a1, $v0
/* 74EB9D0 8008FCA0 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 74EB9D4 8008FCA4 0C00648E */  lw         $a0, 0xC($s3)
/* 74EB9D8 8008FCA8 1000628E */  lw         $v0, 0x10($s3)
/* 74EB9DC 8008FCAC 2320E400 */  subu       $a0, $a3, $a0
/* 74EB9E0 8008FCB0 203A010C */  jal        func_8004E880
/* 74EB9E4 8008FCB4 2328A200 */   subu      $a1, $a1, $v0
/* 74EB9E8 8008FCB8 21804000 */  addu       $s0, $v0, $zero
/* 74EB9EC 8008FCBC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 74EB9F0 8008FCC0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 74EB9F4 8008FCC4 03000224 */  addiu      $v0, $zero, 0x3
/* 74EB9F8 8008FCC8 04006214 */  bne        $v1, $v0, .Llevel_34_8008FCDC
/* 74EB9FC 8008FCCC 04000224 */   addiu     $v0, $zero, 0x4
/* 74EBA00 8008FCD0 43101600 */  sra        $v0, $s6, 1
/* 74EBA04 8008FCD4 3A3F0208 */  j          .Llevel_34_8008FCE8
/* 74EBA08 8008FCD8 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_34_8008FCDC:
/* 74EBA0C 8008FCDC 02006214 */  bne        $v1, $v0, .Llevel_34_8008FCE8
/* 74EBA10 8008FCE0 00000000 */   nop
/* 74EBA14 8008FCE4 40B01600 */  sll        $s6, $s6, 1
.Llevel_34_8008FCE8:
/* 74EBA18 8008FCE8 8000A88F */  lw         $t0, 0x80($sp)
/* 74EBA1C 8008FCEC 00000000 */  nop
/* 74EBA20 8008FCF0 08000231 */  andi       $v0, $t0, 0x8
/* 74EBA24 8008FCF4 1A004010 */  beqz       $v0, .Llevel_34_8008FD60
/* 74EBA28 8008FCF8 21300000 */   addu      $a2, $zero, $zero
/* 74EBA2C 8008FCFC 0000838E */  lw         $v1, 0x0($s4)
/* 74EBA30 8008FD00 0C00648E */  lw         $a0, 0xC($s3)
/* 74EBA34 8008FD04 0400828E */  lw         $v0, 0x4($s4)
/* 74EBA38 8008FD08 1000658E */  lw         $a1, 0x10($s3)
/* 74EBA3C 8008FD0C 23206400 */  subu       $a0, $v1, $a0
/* 74EBA40 8008FD10 203A010C */  jal        func_8004E880
/* 74EBA44 8008FD14 23284500 */   subu      $a1, $v0, $a1
/* 74EBA48 8008FD18 21206002 */  addu       $a0, $s3, $zero
/* 74EBA4C 8008FD1C 21284000 */  addu       $a1, $v0, $zero
/* 74EBA50 8008FD20 6800A68F */  lw         $a2, 0x68($sp)
/* 74EBA54 8008FD24 21380000 */  addu       $a3, $zero, $zero
/* 74EBA58 8008FD28 1000A0AF */  sw         $zero, 0x10($sp)
/* 74EBA5C 8008FD2C 17D6000C */  jal        func_8003585C
/* 74EBA60 8008FD30 1400A0AF */   sw        $zero, 0x14($sp)
/* 74EBA64 8008FD34 21206002 */  addu       $a0, $s3, $zero
/* 74EBA68 8008FD38 7800A78F */  lw         $a3, 0x78($sp)
/* 74EBA6C 8008FD3C 7C00A88F */  lw         $t0, 0x7C($sp)
/* 74EBA70 8008FD40 21280002 */  addu       $a1, $s0, $zero
/* 74EBA74 8008FD44 1000A8AF */  sw         $t0, 0x10($sp)
/* 74EBA78 8008FD48 8000A88F */  lw         $t0, 0x80($sp)
/* 74EBA7C 8008FD4C 2130C002 */  addu       $a2, $s6, $zero
/* 74EBA80 8008FD50 B8D7000C */  jal        func_80035EE0
/* 74EBA84 8008FD54 1400A8AF */   sw        $t0, 0x14($sp)
/* 74EBA88 8008FD58 683F0208 */  j          .Llevel_34_8008FDA0
/* 74EBA8C 8008FD5C 00000000 */   nop
.Llevel_34_8008FD60:
/* 74EBA90 8008FD60 21206002 */  addu       $a0, $s3, $zero
/* 74EBA94 8008FD64 21280002 */  addu       $a1, $s0, $zero
/* 74EBA98 8008FD68 6800A68F */  lw         $a2, 0x68($sp)
/* 74EBA9C 8008FD6C 6C00A78F */  lw         $a3, 0x6C($sp)
/* 74EBAA0 8008FD70 01000224 */  addiu      $v0, $zero, 0x1
/* 74EBAA4 8008FD74 1000A2AF */  sw         $v0, 0x10($sp)
/* 74EBAA8 8008FD78 17D6000C */  jal        func_8003585C
/* 74EBAAC 8008FD7C 1400A0AF */   sw        $zero, 0x14($sp)
/* 74EBAB0 8008FD80 09004010 */  beqz       $v0, .Llevel_34_8008FDA8
/* 74EBAB4 8008FD84 21206002 */   addu      $a0, $s3, $zero
/* 74EBAB8 8008FD88 8000A88F */  lw         $t0, 0x80($sp)
/* 74EBABC 8008FD8C 7800A68F */  lw         $a2, 0x78($sp)
/* 74EBAC0 8008FD90 7C00A78F */  lw         $a3, 0x7C($sp)
/* 74EBAC4 8008FD94 2128C002 */  addu       $a1, $s6, $zero
/* 74EBAC8 8008FD98 77D7000C */  jal        func_80035DDC
/* 74EBACC 8008FD9C 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_34_8008FDA0:
/* 74EBAD0 8008FDA0 04004014 */  bnez       $v0, .Llevel_34_8008FDB4
/* 74EBAD4 8008FDA4 23100200 */   negu      $v0, $v0
.Llevel_34_8008FDA8:
/* 74EBAD8 8008FDA8 0200A106 */  bgez       $s5, .Llevel_34_8008FDB4
/* 74EBADC 8008FDAC 2110A002 */   addu      $v0, $s5, $zero
/* 74EBAE0 8008FDB0 23100200 */  negu       $v0, $v0
.Llevel_34_8008FDB4:
/* 74EBAE4 8008FDB4 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 74EBAE8 8008FDB8 4800BE8F */  lw         $fp, 0x48($sp)
/* 74EBAEC 8008FDBC 4400B78F */  lw         $s7, 0x44($sp)
/* 74EBAF0 8008FDC0 4000B68F */  lw         $s6, 0x40($sp)
/* 74EBAF4 8008FDC4 3C00B58F */  lw         $s5, 0x3C($sp)
/* 74EBAF8 8008FDC8 3800B48F */  lw         $s4, 0x38($sp)
/* 74EBAFC 8008FDCC 3400B38F */  lw         $s3, 0x34($sp)
/* 74EBB00 8008FDD0 3000B28F */  lw         $s2, 0x30($sp)
/* 74EBB04 8008FDD4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 74EBB08 8008FDD8 2800B08F */  lw         $s0, 0x28($sp)
/* 74EBB0C 8008FDDC 5000BD27 */  addiu      $sp, $sp, 0x50
/* 74EBB10 8008FDE0 0800E003 */  jr         $ra
/* 74EBB14 8008FDE4 00000000 */   nop
.size func_level_34_8008FACC, . - func_level_34_8008FACC
