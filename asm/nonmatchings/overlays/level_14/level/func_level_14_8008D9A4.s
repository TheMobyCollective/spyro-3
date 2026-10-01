.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8008D9A4
/* 47CCED4 8008D9A4 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 47CCED8 8008D9A8 3400B3AF */  sw         $s3, 0x34($sp)
/* 47CCEDC 8008D9AC 21988000 */  addu       $s3, $a0, $zero
/* 47CCEE0 8008D9B0 3800B4AF */  sw         $s4, 0x38($sp)
/* 47CCEE4 8008D9B4 21A0A000 */  addu       $s4, $a1, $zero
/* 47CCEE8 8008D9B8 4400B7AF */  sw         $s7, 0x44($sp)
/* 47CCEEC 8008D9BC 21B8C000 */  addu       $s7, $a2, $zero
/* 47CCEF0 8008D9C0 2800B0AF */  sw         $s0, 0x28($sp)
/* 47CCEF4 8008D9C4 2180E000 */  addu       $s0, $a3, $zero
/* 47CCEF8 8008D9C8 4000B6AF */  sw         $s6, 0x40($sp)
/* 47CCEFC 8008D9CC 6400B68F */  lw         $s6, 0x64($sp)
/* 47CCF00 8008D9D0 21300000 */  addu       $a2, $zero, $zero
/* 47CCF04 8008D9D4 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 47CCF08 8008D9D8 4800BEAF */  sw         $fp, 0x48($sp)
/* 47CCF0C 8008D9DC 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 47CCF10 8008D9E0 3000B2AF */  sw         $s2, 0x30($sp)
/* 47CCF14 8008D9E4 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 47CCF18 8008D9E8 0C00638E */  lw         $v1, 0xC($s3)
/* 47CCF1C 8008D9EC 0000848E */  lw         $a0, 0x0($s4)
/* 47CCF20 8008D9F0 1000628E */  lw         $v0, 0x10($s3)
/* 47CCF24 8008D9F4 0400858E */  lw         $a1, 0x4($s4)
/* 47CCF28 8008D9F8 6000B18F */  lw         $s1, 0x60($sp)
/* 47CCF2C 8008D9FC 7000BE8F */  lw         $fp, 0x70($sp)
/* 47CCF30 8008DA00 23206400 */  subu       $a0, $v1, $a0
/* 47CCF34 8008DA04 203A010C */  jal        func_8004E880
/* 47CCF38 8008DA08 23284500 */   subu      $a1, $v0, $a1
/* 47CCF3C 8008DA0C 21904000 */  addu       $s2, $v0, $zero
/* 47CCF40 8008DA10 21200002 */  addu       $a0, $s0, $zero
/* 47CCF44 8008DA14 4FD8000C */  jal        SubAngle8
/* 47CCF48 8008DA18 FF004532 */   andi      $a1, $s2, 0xFF
/* 47CCF4C 8008DA1C 0C006426 */  addiu      $a0, $s3, 0xC
/* 47CCF50 8008DA20 21288002 */  addu       $a1, $s4, $zero
/* 47CCF54 8008DA24 CD3C010C */  jal        func_8004F334
/* 47CCF58 8008DA28 21A84000 */   addu      $s5, $v0, $zero
/* 47CCF5C 8008DA2C 21184000 */  addu       $v1, $v0, $zero
/* 47CCF60 8008DA30 0200A106 */  bgez       $s5, .Llevel_14_8008DA3C
/* 47CCF64 8008DA34 2110A002 */   addu      $v0, $s5, $zero
/* 47CCF68 8008DA38 23100200 */  negu       $v0, $v0
.Llevel_14_8008DA3C:
/* 47CCF6C 8008DA3C 2A105100 */  slt        $v0, $v0, $s1
/* 47CCF70 8008DA40 07004010 */  beqz       $v0, .Llevel_14_8008DA60
/* 47CCF74 8008DA44 23107700 */   subu      $v0, $v1, $s7
/* 47CCF78 8008DA48 03004104 */  bgez       $v0, .Llevel_14_8008DA58
/* 47CCF7C 8008DA4C C8004228 */   slti      $v0, $v0, 0xC8
/* 47CCF80 8008DA50 2310E302 */  subu       $v0, $s7, $v1
/* 47CCF84 8008DA54 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_14_8008DA58:
/* 47CCF88 8008DA58 89004014 */  bnez       $v0, .Llevel_14_8008DC80
/* 47CCF8C 8008DA5C 00000000 */   nop
.Llevel_14_8008DA60:
/* 47CCF90 8008DA60 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47CCF94 8008DA64 1200C213 */  beq        $fp, $v0, .Llevel_14_8008DAB0
/* 47CCF98 8008DA68 00000000 */   nop
/* 47CCF9C 8008DA6C FF005032 */  andi       $s0, $s2, 0xFF
/* 47CCFA0 8008DA70 21200002 */  addu       $a0, $s0, $zero
/* 47CCFA4 8008DA74 993C010C */  jal        func_8004F264
/* 47CCFA8 8008DA78 2128C003 */   addu      $a1, $fp, $zero
/* 47CCFAC 8008DA7C 05004228 */  slti       $v0, $v0, 0x5
/* 47CCFB0 8008DA80 0B004010 */  beqz       $v0, .Llevel_14_8008DAB0
/* 47CCFB4 8008DA84 2120C003 */   addu      $a0, $fp, $zero
/* 47CCFB8 8008DA88 4FD8000C */  jal        SubAngle8
/* 47CCFBC 8008DA8C 21280002 */   addu      $a1, $s0, $zero
/* 47CCFC0 8008DA90 0300A106 */  bgez       $s5, .Llevel_14_8008DAA0
/* 47CCFC4 8008DA94 00000000 */   nop
/* 47CCFC8 8008DA98 1A004004 */  bltz       $v0, .Llevel_14_8008DB04
/* 47CCFCC 8008DA9C 00000000 */   nop
.Llevel_14_8008DAA0:
/* 47CCFD0 8008DAA0 0300A01A */  blez       $s5, .Llevel_14_8008DAB0
/* 47CCFD4 8008DAA4 00000000 */   nop
/* 47CCFD8 8008DAA8 7800401C */  bgtz       $v0, .Llevel_14_8008DC8C
/* 47CCFDC 8008DAAC 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_14_8008DAB0:
/* 47CCFE0 8008DAB0 7400A88F */  lw         $t0, 0x74($sp)
/* 47CCFE4 8008DAB4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47CCFE8 8008DAB8 14000211 */  beq        $t0, $v0, .Llevel_14_8008DB0C
/* 47CCFEC 8008DABC FF005032 */   andi      $s0, $s2, 0xFF
/* 47CCFF0 8008DAC0 7400A58F */  lw         $a1, 0x74($sp)
/* 47CCFF4 8008DAC4 993C010C */  jal        func_8004F264
/* 47CCFF8 8008DAC8 21200002 */   addu      $a0, $s0, $zero
/* 47CCFFC 8008DACC 05004228 */  slti       $v0, $v0, 0x5
/* 47CD000 8008DAD0 0E004010 */  beqz       $v0, .Llevel_14_8008DB0C
/* 47CD004 8008DAD4 00000000 */   nop
/* 47CD008 8008DAD8 7400A48F */  lw         $a0, 0x74($sp)
/* 47CD00C 8008DADC 4FD8000C */  jal        SubAngle8
/* 47CD010 8008DAE0 21280002 */   addu      $a1, $s0, $zero
/* 47CD014 8008DAE4 0300A106 */  bgez       $s5, .Llevel_14_8008DAF4
/* 47CD018 8008DAE8 00000000 */   nop
/* 47CD01C 8008DAEC 05004004 */  bltz       $v0, .Llevel_14_8008DB04
/* 47CD020 8008DAF0 00000000 */   nop
.Llevel_14_8008DAF4:
/* 47CD024 8008DAF4 0500A01A */  blez       $s5, .Llevel_14_8008DB0C
/* 47CD028 8008DAF8 00000000 */   nop
/* 47CD02C 8008DAFC 03004018 */  blez       $v0, .Llevel_14_8008DB0C
/* 47CD030 8008DB00 00000000 */   nop
.Llevel_14_8008DB04:
/* 47CD034 8008DB04 23370208 */  j          .Llevel_14_8008DC8C
/* 47CD038 8008DB08 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_14_8008DB0C:
/* 47CD03C 8008DB0C 0300A106 */  bgez       $s5, .Llevel_14_8008DB1C
/* 47CD040 8008DB10 00000000 */   nop
/* 47CD044 8008DB14 C8360208 */  j          .Llevel_14_8008DB20
/* 47CD048 8008DB18 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_14_8008DB1C:
/* 47CD04C 8008DB1C FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_14_8008DB20:
/* 47CD050 8008DB20 FF004332 */  andi       $v1, $s2, 0xFF
/* 47CD054 8008DB24 40180300 */  sll        $v1, $v1, 1
/* 47CD058 8008DB28 0680013C */  lui        $at, %hi(D_80065920)
/* 47CD05C 8008DB2C 21082300 */  addu       $at, $at, $v1
/* 47CD060 8008DB30 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 47CD064 8008DB34 00000000 */  nop
/* 47CD068 8008DB38 18005700 */  mult       $v0, $s7
/* 47CD06C 8008DB3C 0000878E */  lw         $a3, 0x0($s4)
/* 47CD070 8008DB40 12400000 */  mflo       $t0
/* 47CD074 8008DB44 03130800 */  sra        $v0, $t0, 12
/* 47CD078 8008DB48 2138E200 */  addu       $a3, $a3, $v0
/* 47CD07C 8008DB4C 1800A7AF */  sw         $a3, 0x18($sp)
/* 47CD080 8008DB50 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CD084 8008DB54 21082300 */  addu       $at, $at, $v1
/* 47CD088 8008DB58 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 47CD08C 8008DB5C 00000000 */  nop
/* 47CD090 8008DB60 18005700 */  mult       $v0, $s7
/* 47CD094 8008DB64 21300000 */  addu       $a2, $zero, $zero
/* 47CD098 8008DB68 0400858E */  lw         $a1, 0x4($s4)
/* 47CD09C 8008DB6C 12400000 */  mflo       $t0
/* 47CD0A0 8008DB70 03130800 */  sra        $v0, $t0, 12
/* 47CD0A4 8008DB74 2128A200 */  addu       $a1, $a1, $v0
/* 47CD0A8 8008DB78 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 47CD0AC 8008DB7C 0C00648E */  lw         $a0, 0xC($s3)
/* 47CD0B0 8008DB80 1000628E */  lw         $v0, 0x10($s3)
/* 47CD0B4 8008DB84 2320E400 */  subu       $a0, $a3, $a0
/* 47CD0B8 8008DB88 203A010C */  jal        func_8004E880
/* 47CD0BC 8008DB8C 2328A200 */   subu      $a1, $a1, $v0
/* 47CD0C0 8008DB90 21804000 */  addu       $s0, $v0, $zero
/* 47CD0C4 8008DB94 0780033C */  lui        $v1, %hi(D_8006C648)
/* 47CD0C8 8008DB98 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 47CD0CC 8008DB9C 03000224 */  addiu      $v0, $zero, 0x3
/* 47CD0D0 8008DBA0 04006214 */  bne        $v1, $v0, .Llevel_14_8008DBB4
/* 47CD0D4 8008DBA4 04000224 */   addiu     $v0, $zero, 0x4
/* 47CD0D8 8008DBA8 43101600 */  sra        $v0, $s6, 1
/* 47CD0DC 8008DBAC F0360208 */  j          .Llevel_14_8008DBC0
/* 47CD0E0 8008DBB0 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_14_8008DBB4:
/* 47CD0E4 8008DBB4 02006214 */  bne        $v1, $v0, .Llevel_14_8008DBC0
/* 47CD0E8 8008DBB8 00000000 */   nop
/* 47CD0EC 8008DBBC 40B01600 */  sll        $s6, $s6, 1
.Llevel_14_8008DBC0:
/* 47CD0F0 8008DBC0 8000A88F */  lw         $t0, 0x80($sp)
/* 47CD0F4 8008DBC4 00000000 */  nop
/* 47CD0F8 8008DBC8 08000231 */  andi       $v0, $t0, 0x8
/* 47CD0FC 8008DBCC 1A004010 */  beqz       $v0, .Llevel_14_8008DC38
/* 47CD100 8008DBD0 21300000 */   addu      $a2, $zero, $zero
/* 47CD104 8008DBD4 0000838E */  lw         $v1, 0x0($s4)
/* 47CD108 8008DBD8 0C00648E */  lw         $a0, 0xC($s3)
/* 47CD10C 8008DBDC 0400828E */  lw         $v0, 0x4($s4)
/* 47CD110 8008DBE0 1000658E */  lw         $a1, 0x10($s3)
/* 47CD114 8008DBE4 23206400 */  subu       $a0, $v1, $a0
/* 47CD118 8008DBE8 203A010C */  jal        func_8004E880
/* 47CD11C 8008DBEC 23284500 */   subu      $a1, $v0, $a1
/* 47CD120 8008DBF0 21206002 */  addu       $a0, $s3, $zero
/* 47CD124 8008DBF4 21284000 */  addu       $a1, $v0, $zero
/* 47CD128 8008DBF8 6800A68F */  lw         $a2, 0x68($sp)
/* 47CD12C 8008DBFC 21380000 */  addu       $a3, $zero, $zero
/* 47CD130 8008DC00 1000A0AF */  sw         $zero, 0x10($sp)
/* 47CD134 8008DC04 17D6000C */  jal        func_8003585C
/* 47CD138 8008DC08 1400A0AF */   sw        $zero, 0x14($sp)
/* 47CD13C 8008DC0C 21206002 */  addu       $a0, $s3, $zero
/* 47CD140 8008DC10 7800A78F */  lw         $a3, 0x78($sp)
/* 47CD144 8008DC14 7C00A88F */  lw         $t0, 0x7C($sp)
/* 47CD148 8008DC18 21280002 */  addu       $a1, $s0, $zero
/* 47CD14C 8008DC1C 1000A8AF */  sw         $t0, 0x10($sp)
/* 47CD150 8008DC20 8000A88F */  lw         $t0, 0x80($sp)
/* 47CD154 8008DC24 2130C002 */  addu       $a2, $s6, $zero
/* 47CD158 8008DC28 B8D7000C */  jal        func_80035EE0
/* 47CD15C 8008DC2C 1400A8AF */   sw        $t0, 0x14($sp)
/* 47CD160 8008DC30 1E370208 */  j          .Llevel_14_8008DC78
/* 47CD164 8008DC34 00000000 */   nop
.Llevel_14_8008DC38:
/* 47CD168 8008DC38 21206002 */  addu       $a0, $s3, $zero
/* 47CD16C 8008DC3C 21280002 */  addu       $a1, $s0, $zero
/* 47CD170 8008DC40 6800A68F */  lw         $a2, 0x68($sp)
/* 47CD174 8008DC44 6C00A78F */  lw         $a3, 0x6C($sp)
/* 47CD178 8008DC48 01000224 */  addiu      $v0, $zero, 0x1
/* 47CD17C 8008DC4C 1000A2AF */  sw         $v0, 0x10($sp)
/* 47CD180 8008DC50 17D6000C */  jal        func_8003585C
/* 47CD184 8008DC54 1400A0AF */   sw        $zero, 0x14($sp)
/* 47CD188 8008DC58 09004010 */  beqz       $v0, .Llevel_14_8008DC80
/* 47CD18C 8008DC5C 21206002 */   addu      $a0, $s3, $zero
/* 47CD190 8008DC60 8000A88F */  lw         $t0, 0x80($sp)
/* 47CD194 8008DC64 7800A68F */  lw         $a2, 0x78($sp)
/* 47CD198 8008DC68 7C00A78F */  lw         $a3, 0x7C($sp)
/* 47CD19C 8008DC6C 2128C002 */  addu       $a1, $s6, $zero
/* 47CD1A0 8008DC70 77D7000C */  jal        func_80035DDC
/* 47CD1A4 8008DC74 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_14_8008DC78:
/* 47CD1A8 8008DC78 04004014 */  bnez       $v0, .Llevel_14_8008DC8C
/* 47CD1AC 8008DC7C 23100200 */   negu      $v0, $v0
.Llevel_14_8008DC80:
/* 47CD1B0 8008DC80 0200A106 */  bgez       $s5, .Llevel_14_8008DC8C
/* 47CD1B4 8008DC84 2110A002 */   addu      $v0, $s5, $zero
/* 47CD1B8 8008DC88 23100200 */  negu       $v0, $v0
.Llevel_14_8008DC8C:
/* 47CD1BC 8008DC8C 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 47CD1C0 8008DC90 4800BE8F */  lw         $fp, 0x48($sp)
/* 47CD1C4 8008DC94 4400B78F */  lw         $s7, 0x44($sp)
/* 47CD1C8 8008DC98 4000B68F */  lw         $s6, 0x40($sp)
/* 47CD1CC 8008DC9C 3C00B58F */  lw         $s5, 0x3C($sp)
/* 47CD1D0 8008DCA0 3800B48F */  lw         $s4, 0x38($sp)
/* 47CD1D4 8008DCA4 3400B38F */  lw         $s3, 0x34($sp)
/* 47CD1D8 8008DCA8 3000B28F */  lw         $s2, 0x30($sp)
/* 47CD1DC 8008DCAC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 47CD1E0 8008DCB0 2800B08F */  lw         $s0, 0x28($sp)
/* 47CD1E4 8008DCB4 5000BD27 */  addiu      $sp, $sp, 0x50
/* 47CD1E8 8008DCB8 0800E003 */  jr         $ra
/* 47CD1EC 8008DCBC 00000000 */   nop
.size func_level_14_8008D9A4, . - func_level_14_8008D9A4
