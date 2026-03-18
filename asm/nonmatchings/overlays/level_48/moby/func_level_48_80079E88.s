.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_48_80079E88
/* 926CBB8 80079E88 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 926CBBC 80079E8C 8400B3AF */  sw         $s3, 0x84($sp)
/* 926CBC0 80079E90 21988000 */  addu       $s3, $a0, $zero
/* 926CBC4 80079E94 9400BFAF */  sw         $ra, 0x94($sp)
/* 926CBC8 80079E98 9000B6AF */  sw         $s6, 0x90($sp)
/* 926CBCC 80079E9C 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 926CBD0 80079EA0 8800B4AF */  sw         $s4, 0x88($sp)
/* 926CBD4 80079EA4 8000B2AF */  sw         $s2, 0x80($sp)
/* 926CBD8 80079EA8 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 926CBDC 80079EAC 7800B0AF */  sw         $s0, 0x78($sp)
/* 926CBE0 80079EB0 4D006292 */  lbu        $v0, 0x4D($s3)
/* 926CBE4 80079EB4 0000768E */  lw         $s6, 0x0($s3)
/* 926CBE8 80079EB8 09004014 */  bnez       $v0, .Llevel_48_80079EE0
/* 926CBEC 80079EBC 00000000 */   nop
/* 926CBF0 80079EC0 0800C48E */  lw         $a0, 0x8($s6)
/* 926CBF4 80079EC4 00000000 */  nop
/* 926CBF8 80079EC8 4F018010 */  beqz       $a0, .Llevel_48_8007A408
/* 926CBFC 80079ECC 00000000 */   nop
/* 926CC00 80079ED0 7A42010C */  jal        func_800509E8
/* 926CC04 80079ED4 00000000 */   nop
/* 926CC08 80079ED8 02E90108 */  j          .Llevel_48_8007A408
/* 926CC0C 80079EDC 00000000 */   nop
.Llevel_48_80079EE0:
/* 926CC10 80079EE0 48006392 */  lbu        $v1, 0x48($s3)
/* 926CC14 80079EE4 01000224 */  addiu      $v0, $zero, 0x1
/* 926CC18 80079EE8 44006210 */  beq        $v1, $v0, .Llevel_48_80079FFC
/* 926CC1C 80079EEC 02006228 */   slti      $v0, $v1, 0x2
/* 926CC20 80079EF0 05004010 */  beqz       $v0, .Llevel_48_80079F08
/* 926CC24 80079EF4 00000000 */   nop
/* 926CC28 80079EF8 08006010 */  beqz       $v1, .Llevel_48_80079F1C
/* 926CC2C 80079EFC 0100143C */   lui       $s4, (0x1869F >> 16)
/* 926CC30 80079F00 04E90108 */  j          .Llevel_48_8007A410
/* 926CC34 80079F04 00000000 */   nop
.Llevel_48_80079F08:
/* 926CC38 80079F08 02000224 */  addiu      $v0, $zero, 0x2
/* 926CC3C 80079F0C E0006210 */  beq        $v1, $v0, .Llevel_48_8007A290
/* 926CC40 80079F10 00000000 */   nop
/* 926CC44 80079F14 04E90108 */  j          .Llevel_48_8007A410
/* 926CC48 80079F18 00000000 */   nop
.Llevel_48_80079F1C:
/* 926CC4C 80079F1C 9F869436 */  ori        $s4, $s4, (0x1869F & 0xFFFF)
/* 926CC50 80079F20 0780123C */  lui        $s2, %hi(D_8006E788)
/* 926CC54 80079F24 88E75226 */  addiu      $s2, $s2, %lo(D_8006E788)
/* 926CC58 80079F28 F5E70108 */  j          .Llevel_48_80079FD4
/* 926CC5C 80079F2C 0400C0AE */   sw        $zero, 0x4($s6)
.Llevel_48_80079F30:
/* 926CC60 80079F30 0800228E */  lw         $v0, 0x8($s1)
/* 926CC64 80079F34 00000000 */  nop
/* 926CC68 80079F38 26004010 */  beqz       $v0, .Llevel_48_80079FD4
/* 926CC6C 80079F3C 1800A427 */   addiu     $a0, $sp, 0x18
/* 926CC70 80079F40 5E3C010C */  jal        func_8004F178
/* 926CC74 80079F44 0C002526 */   addiu     $a1, $s1, 0xC
/* 926CC78 80079F48 21300000 */  addu       $a2, $zero, $zero
/* 926CC7C 80079F4C 1800A38F */  lw         $v1, 0x18($sp)
/* 926CC80 80079F50 0C00648E */  lw         $a0, 0xC($s3)
/* 926CC84 80079F54 1C00A28F */  lw         $v0, 0x1C($sp)
/* 926CC88 80079F58 1000658E */  lw         $a1, 0x10($s3)
/* 926CC8C 80079F5C 23206400 */  subu       $a0, $v1, $a0
/* 926CC90 80079F60 203A010C */  jal        func_8004E880
/* 926CC94 80079F64 23284500 */   subu      $a1, $v0, $a1
/* 926CC98 80079F68 46006392 */  lbu        $v1, 0x46($s3)
/* 926CC9C 80079F6C 00000000 */  nop
/* 926CCA0 80079F70 23104300 */  subu       $v0, $v0, $v1
/* 926CCA4 80079F74 FF005030 */  andi       $s0, $v0, 0xFF
/* 926CCA8 80079F78 8100022A */  slti       $v0, $s0, 0x81
/* 926CCAC 80079F7C 02004014 */  bnez       $v0, .Llevel_48_80079F88
/* 926CCB0 80079F80 00000000 */   nop
/* 926CCB4 80079F84 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_48_80079F88:
/* 926CCB8 80079F88 02000106 */  bgez       $s0, .Llevel_48_80079F94
/* 926CCBC 80079F8C 00000000 */   nop
/* 926CCC0 80079F90 23801000 */  negu       $s0, $s0
.Llevel_48_80079F94:
/* 926CCC4 80079F94 0C006426 */  addiu      $a0, $s3, 0xC
/* 926CCC8 80079F98 CD3C010C */  jal        func_8004F334
/* 926CCCC 80079F9C 1800A527 */   addiu     $a1, $sp, 0x18
/* 926CCD0 80079FA0 00100324 */  addiu      $v1, $zero, 0x1000
/* 926CCD4 80079FA4 23186200 */  subu       $v1, $v1, $v0
/* 926CCD8 80079FA8 02006104 */  bgez       $v1, .Llevel_48_80079FB4
/* 926CCDC 80079FAC 00000000 */   nop
/* 926CCE0 80079FB0 23180300 */  negu       $v1, $v1
.Llevel_48_80079FB4:
/* 926CCE4 80079FB4 00121000 */  sll        $v0, $s0, 8
/* 926CCE8 80079FB8 21186200 */  addu       $v1, $v1, $v0
/* 926CCEC 80079FBC 2A107400 */  slt        $v0, $v1, $s4
/* 926CCF0 80079FC0 04004010 */  beqz       $v0, .Llevel_48_80079FD4
/* 926CCF4 80079FC4 01086228 */   slti      $v0, $v1, 0x801
/* 926CCF8 80079FC8 06004014 */  bnez       $v0, .Llevel_48_80079FE4
/* 926CCFC 80079FCC 0400D1AE */   sw        $s1, 0x4($s6)
/* 926CD00 80079FD0 21A06000 */  addu       $s4, $v1, $zero
.Llevel_48_80079FD4:
/* 926CD04 80079FD4 0000518E */  lw         $s1, 0x0($s2)
/* 926CD08 80079FD8 00000000 */  nop
/* 926CD0C 80079FDC D4FF2016 */  bnez       $s1, .Llevel_48_80079F30
/* 926CD10 80079FE0 04005226 */   addiu     $s2, $s2, 0x4
.Llevel_48_80079FE4:
/* 926CD14 80079FE4 0100023C */  lui        $v0, (0x1869F >> 16)
/* 926CD18 80079FE8 9F864234 */  ori        $v0, $v0, (0x1869F & 0xFFFF)
/* 926CD1C 80079FEC 02008216 */  bne        $s4, $v0, .Llevel_48_80079FF8
/* 926CD20 80079FF0 01000224 */   addiu     $v0, $zero, 0x1
/* 926CD24 80079FF4 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_48_80079FF8:
/* 926CD28 80079FF8 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_48_80079FFC:
/* 926CD2C 80079FFC 0C00628E */  lw         $v0, 0xC($s3)
/* 926CD30 8007A000 00000000 */  nop
/* 926CD34 8007A004 00044228 */  slti       $v0, $v0, 0x400
/* 926CD38 8007A008 10004014 */  bnez       $v0, .Llevel_48_8007A04C
/* 926CD3C 8007A00C 02000224 */   addiu     $v0, $zero, 0x2
/* 926CD40 8007A010 1000628E */  lw         $v0, 0x10($s3)
/* 926CD44 8007A014 00000000 */  nop
/* 926CD48 8007A018 00044228 */  slti       $v0, $v0, 0x400
/* 926CD4C 8007A01C 0B004014 */  bnez       $v0, .Llevel_48_8007A04C
/* 926CD50 8007A020 02000224 */   addiu     $v0, $zero, 0x2
/* 926CD54 8007A024 1400628E */  lw         $v0, 0x14($s3)
/* 926CD58 8007A028 00000000 */  nop
/* 926CD5C 8007A02C 00044228 */  slti       $v0, $v0, 0x400
/* 926CD60 8007A030 06004014 */  bnez       $v0, .Llevel_48_8007A04C
/* 926CD64 8007A034 02000224 */   addiu     $v0, $zero, 0x2
/* 926CD68 8007A038 2120C002 */  addu       $a0, $s6, $zero
/* 926CD6C 8007A03C 69D6000C */  jal        func_800359A4
/* 926CD70 8007A040 04000524 */   addiu     $a1, $zero, 0x4
/* 926CD74 8007A044 03004010 */  beqz       $v0, .Llevel_48_8007A054
/* 926CD78 8007A048 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_48_8007A04C:
/* 926CD7C 8007A04C 04E90108 */  j          .Llevel_48_8007A410
/* 926CD80 8007A050 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_48_8007A054:
/* 926CD84 8007A054 2800A427 */  addiu      $a0, $sp, 0x28
/* 926CD88 8007A058 0C007126 */  addiu      $s1, $s3, 0xC
/* 926CD8C 8007A05C 5E3C010C */  jal        func_8004F178
/* 926CD90 8007A060 21282002 */   addu      $a1, $s1, $zero
/* 926CD94 8007A064 0400C28E */  lw         $v0, 0x4($s6)
/* 926CD98 8007A068 00000000 */  nop
/* 926CD9C 8007A06C 48004290 */  lbu        $v0, 0x48($v0)
/* 926CDA0 8007A070 00000000 */  nop
/* 926CDA4 8007A074 80004230 */  andi       $v0, $v0, 0x80
/* 926CDA8 8007A078 02004010 */  beqz       $v0, .Llevel_48_8007A084
/* 926CDAC 8007A07C 00000000 */   nop
/* 926CDB0 8007A080 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_48_8007A084:
/* 926CDB4 8007A084 0400C58E */  lw         $a1, 0x4($s6)
/* 926CDB8 8007A088 00000000 */  nop
/* 926CDBC 8007A08C 3000A010 */  beqz       $a1, .Llevel_48_8007A150
/* 926CDC0 8007A090 4800B027 */   addiu     $s0, $sp, 0x48
/* 926CDC4 8007A094 21200002 */  addu       $a0, $s0, $zero
/* 926CDC8 8007A098 5E3C010C */  jal        func_8004F178
/* 926CDCC 8007A09C 0C00A524 */   addiu     $a1, $a1, 0xC
/* 926CDD0 8007A0A0 3800A427 */  addiu      $a0, $sp, 0x38
/* 926CDD4 8007A0A4 21280002 */  addu       $a1, $s0, $zero
/* 926CDD8 8007A0A8 5000A28F */  lw         $v0, 0x50($sp)
/* 926CDDC 8007A0AC 21302002 */  addu       $a2, $s1, $zero
/* 926CDE0 8007A0B0 80004224 */  addiu      $v0, $v0, 0x80
/* 926CDE4 8007A0B4 723C010C */  jal        func_8004F1C8
/* 926CDE8 8007A0B8 5000A2AF */   sw        $v0, 0x50($sp)
/* 926CDEC 8007A0BC 21300000 */  addu       $a2, $zero, $zero
/* 926CDF0 8007A0C0 3800A48F */  lw         $a0, 0x38($sp)
/* 926CDF4 8007A0C4 4000A28F */  lw         $v0, 0x40($sp)
/* 926CDF8 8007A0C8 3C00A58F */  lw         $a1, 0x3C($sp)
/* 926CDFC 8007A0CC 00014224 */  addiu      $v0, $v0, 0x100
/* 926CE00 8007A0D0 203A010C */  jal        func_8004E880
/* 926CE04 8007A0D4 4000A2AF */   sw        $v0, 0x40($sp)
/* 926CE08 8007A0D8 3800A48F */  lw         $a0, 0x38($sp)
/* 926CE0C 8007A0DC 3C00A58F */  lw         $a1, 0x3C($sp)
/* 926CE10 8007A0E0 203A010C */  jal        func_8004E880
/* 926CE14 8007A0E4 21300000 */   addu      $a2, $zero, $zero
/* 926CE18 8007A0E8 46006492 */  lbu        $a0, 0x46($s3)
/* 926CE1C 8007A0EC 00000000 */  nop
/* 926CE20 8007A0F0 23104400 */  subu       $v0, $v0, $a0
/* 926CE24 8007A0F4 FF004330 */  andi       $v1, $v0, 0xFF
/* 926CE28 8007A0F8 81006228 */  slti       $v0, $v1, 0x81
/* 926CE2C 8007A0FC 02004014 */  bnez       $v0, .Llevel_48_8007A108
/* 926CE30 8007A100 00000000 */   nop
/* 926CE34 8007A104 00FF6324 */  addiu      $v1, $v1, -0x100
.Llevel_48_8007A108:
/* 926CE38 8007A108 02006104 */  bgez       $v1, .Llevel_48_8007A114
/* 926CE3C 8007A10C 21106000 */   addu      $v0, $v1, $zero
/* 926CE40 8007A110 23100200 */  negu       $v0, $v0
.Llevel_48_8007A114:
/* 926CE44 8007A114 30004228 */  slti       $v0, $v0, 0x30
/* 926CE48 8007A118 02004010 */  beqz       $v0, .Llevel_48_8007A124
/* 926CE4C 8007A11C 80001124 */   addiu     $s1, $zero, 0x80
/* 926CE50 8007A120 FA001124 */  addiu      $s1, $zero, 0xFA
.Llevel_48_8007A124:
/* 926CE54 8007A124 FCFF6228 */  slti       $v0, $v1, -0x4
/* 926CE58 8007A128 03004010 */  beqz       $v0, .Llevel_48_8007A138
/* 926CE5C 8007A12C 05006228 */   slti      $v0, $v1, 0x5
/* 926CE60 8007A130 FCFF0324 */  addiu      $v1, $zero, -0x4
/* 926CE64 8007A134 05006228 */  slti       $v0, $v1, 0x5
.Llevel_48_8007A138:
/* 926CE68 8007A138 03004014 */  bnez       $v0, .Llevel_48_8007A148
/* 926CE6C 8007A13C 21108300 */   addu      $v0, $a0, $v1
/* 926CE70 8007A140 04000324 */  addiu      $v1, $zero, 0x4
/* 926CE74 8007A144 21108300 */  addu       $v0, $a0, $v1
.Llevel_48_8007A148:
/* 926CE78 8007A148 56E80108 */  j          .Llevel_48_8007A158
/* 926CE7C 8007A14C 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_48_8007A150:
/* 926CE80 8007A150 FA001124 */  addiu      $s1, $zero, 0xFA
/* 926CE84 8007A154 480060A2 */  sb         $zero, 0x48($s3)
.Llevel_48_8007A158:
/* 926CE88 8007A158 21206002 */  addu       $a0, $s3, $zero
/* 926CE8C 8007A15C 4957010C */  jal        func_80055D24
/* 926CE90 8007A160 04000524 */   addiu     $a1, $zero, 0x4
/* 926CE94 8007A164 20006426 */  addiu      $a0, $s3, 0x20
/* 926CE98 8007A168 3800B027 */  addiu      $s0, $sp, 0x38
/* 926CE9C 8007A16C 21280002 */  addu       $a1, $s0, $zero
/* 926CEA0 8007A170 21300002 */  addu       $a2, $s0, $zero
/* 926CEA4 8007A174 3800B1AF */  sw         $s1, 0x38($sp)
/* 926CEA8 8007A178 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 926CEAC 8007A17C 5B3B010C */  jal        func_8004ED6C
/* 926CEB0 8007A180 4000A0AF */   sw        $zero, 0x40($sp)
/* 926CEB4 8007A184 0C007226 */  addiu      $s2, $s3, 0xC
/* 926CEB8 8007A188 21204002 */  addu       $a0, $s2, $zero
/* 926CEBC 8007A18C 21284002 */  addu       $a1, $s2, $zero
/* 926CEC0 8007A190 653C010C */  jal        func_8004F194
/* 926CEC4 8007A194 21300002 */   addu      $a2, $s0, $zero
/* 926CEC8 8007A198 2800B027 */  addiu      $s0, $sp, 0x28
/* 926CECC 8007A19C 21200002 */  addu       $a0, $s0, $zero
/* 926CED0 8007A1A0 21284002 */  addu       $a1, $s2, $zero
/* 926CED4 8007A1A4 21300000 */  addu       $a2, $zero, $zero
/* 926CED8 8007A1A8 1100073C */  lui        $a3, (0x110000 >> 16)
/* 926CEDC 8007A1AC C360000C */  jal        func_8001830C
/* 926CEE0 8007A1B0 1000B3AF */   sw        $s3, 0x10($sp)
/* 926CEE4 8007A1B4 05004010 */  beqz       $v0, .Llevel_48_8007A1CC
/* 926CEE8 8007A1B8 21204002 */   addu      $a0, $s2, $zero
/* 926CEEC 8007A1BC 5E3C010C */  jal        func_8004F178
/* 926CEF0 8007A1C0 21280002 */   addu      $a1, $s0, $zero
/* 926CEF4 8007A1C4 8CE80108 */  j          .Llevel_48_8007A230
/* 926CEF8 8007A1C8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_48_8007A1CC:
/* 926CEFC 8007A1CC 00020524 */  addiu      $a1, $zero, 0x200
/* 926CF00 8007A1D0 01000624 */  addiu      $a2, $zero, 0x1
/* 926CF04 8007A1D4 21380000 */  addu       $a3, $zero, $zero
/* 926CF08 8007A1D8 1000A0AF */  sw         $zero, 0x10($sp)
/* 926CF0C 8007A1DC 8C6E000C */  jal        func_8001BA30
/* 926CF10 8007A1E0 1400B3AF */   sw        $s3, 0x14($sp)
/* 926CF14 8007A1E4 21884000 */  addu       $s1, $v0, $zero
/* 926CF18 8007A1E8 12002012 */  beqz       $s1, .Llevel_48_8007A234
/* 926CF1C 8007A1EC 5800B027 */   addiu     $s0, $sp, 0x58
/* 926CF20 8007A1F0 21200002 */  addu       $a0, $s0, $zero
/* 926CF24 8007A1F4 5E3C010C */  jal        func_8004F178
/* 926CF28 8007A1F8 0C002526 */   addiu     $a1, $s1, 0xC
/* 926CF2C 8007A1FC 21204002 */  addu       $a0, $s2, $zero
/* 926CF30 8007A200 6000A28F */  lw         $v0, 0x60($sp)
/* 926CF34 8007A204 21280002 */  addu       $a1, $s0, $zero
/* 926CF38 8007A208 80004224 */  addiu      $v0, $v0, 0x80
/* 926CF3C 8007A20C DA60000C */  jal        func_80018368
/* 926CF40 8007A210 6000A2AF */   sw        $v0, 0x60($sp)
/* 926CF44 8007A214 07004014 */  bnez       $v0, .Llevel_48_8007A234
/* 926CF48 8007A218 1100033C */   lui       $v1, (0x110000 >> 16)
/* 926CF4C 8007A21C 1800228E */  lw         $v0, 0x18($s1)
/* 926CF50 8007A220 00000000 */  nop
/* 926CF54 8007A224 25104300 */  or         $v0, $v0, $v1
/* 926CF58 8007A228 180022AE */  sw         $v0, 0x18($s1)
/* 926CF5C 8007A22C 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_48_8007A230:
/* 926CF60 8007A230 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_48_8007A234:
/* 926CF64 8007A234 0800C28E */  lw         $v0, 0x8($s6)
/* 926CF68 8007A238 00000000 */  nop
/* 926CF6C 8007A23C 74004010 */  beqz       $v0, .Llevel_48_8007A410
/* 926CF70 8007A240 00000000 */   nop
/* 926CF74 8007A244 46006492 */  lbu        $a0, 0x46($s3)
/* 926CF78 8007A248 993C010C */  jal        func_8004F264
/* 926CF7C 8007A24C 21280000 */   addu      $a1, $zero, $zero
/* 926CF80 8007A250 20004228 */  slti       $v0, $v0, 0x20
/* 926CF84 8007A254 07004014 */  bnez       $v0, .Llevel_48_8007A274
/* 926CF88 8007A258 00000000 */   nop
/* 926CF8C 8007A25C 46006492 */  lbu        $a0, 0x46($s3)
/* 926CF90 8007A260 993C010C */  jal        func_8004F264
/* 926CF94 8007A264 80000524 */   addiu     $a1, $zero, 0x80
/* 926CF98 8007A268 20004228 */  slti       $v0, $v0, 0x20
/* 926CF9C 8007A26C 05004010 */  beqz       $v0, .Llevel_48_8007A284
/* 926CFA0 8007A270 07000224 */   addiu     $v0, $zero, 0x7
.Llevel_48_8007A274:
/* 926CFA4 8007A274 0800C38E */  lw         $v1, 0x8($s6)
/* 926CFA8 8007A278 F4000224 */  addiu      $v0, $zero, 0xF4
/* 926CFAC 8007A27C 04E90108 */  j          .Llevel_48_8007A410
/* 926CFB0 8007A280 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_48_8007A284:
/* 926CFB4 8007A284 0800C38E */  lw         $v1, 0x8($s6)
/* 926CFB8 8007A288 04E90108 */  j          .Llevel_48_8007A410
/* 926CFBC 8007A28C 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_48_8007A290:
/* 926CFC0 8007A290 9171010C */  jal        rand
/* 926CFC4 8007A294 21800000 */   addu      $s0, $zero, $zero
/* 926CFC8 8007A298 FF005130 */  andi       $s1, $v0, 0xFF
/* 926CFCC 8007A29C 0C007526 */  addiu      $s5, $s3, 0xC
/* 926CFD0 8007A2A0 6800B427 */  addiu      $s4, $sp, 0x68
/* 926CFD4 8007A2A4 0680033C */  lui        $v1, %hi(D_80065920)
/* 926CFD8 8007A2A8 20596324 */  addiu      $v1, $v1, %lo(D_80065920)
/* 926CFDC 8007A2AC 40101100 */  sll        $v0, $s1, 1
/* 926CFE0 8007A2B0 21904300 */  addu       $s2, $v0, $v1
.Llevel_48_8007A2B4:
/* 926CFE4 8007A2B4 01000424 */  addiu      $a0, $zero, 0x1
/* 926CFE8 8007A2B8 37000524 */  addiu      $a1, $zero, 0x37
/* 926CFEC 8007A2BC 2130A002 */  addu       $a2, $s5, $zero
/* 926CFF0 8007A2C0 00004286 */  lh         $v0, 0x0($s2)
/* 926CFF4 8007A2C4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 926CFF8 8007A2C8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 926CFFC 8007A2CC C3110200 */  sra        $v0, $v0, 7
/* 926D000 8007A2D0 6800A2AF */  sw         $v0, 0x68($sp)
/* 926D004 8007A2D4 40101100 */  sll        $v0, $s1, 1
/* 926D008 8007A2D8 0680013C */  lui        $at, %hi(D_800658A0)
/* 926D00C 8007A2DC 21082200 */  addu       $at, $at, $v0
/* 926D010 8007A2E0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 926D014 8007A2E4 21388002 */  addu       $a3, $s4, $zero
/* 926D018 8007A2E8 7000A0AF */  sw         $zero, 0x70($sp)
/* 926D01C 8007A2EC C3110200 */  sra        $v0, $v0, 7
/* 926D020 8007A2F0 09F86000 */  jalr       $v1
/* 926D024 8007A2F4 6C00A2AF */   sw        $v0, 0x6C($sp)
/* 926D028 8007A2F8 01000232 */  andi       $v0, $s0, 0x1
/* 926D02C 8007A2FC 0B004010 */  beqz       $v0, .Llevel_48_8007A32C
/* 926D030 8007A300 21208002 */   addu      $a0, $s4, $zero
/* 926D034 8007A304 443C010C */  jal        func_8004F110
/* 926D038 8007A308 01000524 */   addiu     $a1, $zero, 0x1
/* 926D03C 8007A30C 01000424 */  addiu      $a0, $zero, 0x1
/* 926D040 8007A310 37000524 */  addiu      $a1, $zero, 0x37
/* 926D044 8007A314 2130A002 */  addu       $a2, $s5, $zero
/* 926D048 8007A318 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 926D04C 8007A31C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 926D050 8007A320 00000000 */  nop
/* 926D054 8007A324 09F84000 */  jalr       $v0
/* 926D058 8007A328 21388002 */   addu      $a3, $s4, $zero
.Llevel_48_8007A32C:
/* 926D05C 8007A32C 40005226 */  addiu      $s2, $s2, 0x40
/* 926D060 8007A330 01001026 */  addiu      $s0, $s0, 0x1
/* 926D064 8007A334 0800022A */  slti       $v0, $s0, 0x8
/* 926D068 8007A338 DEFF4014 */  bnez       $v0, .Llevel_48_8007A2B4
/* 926D06C 8007A33C 20003126 */   addiu     $s1, $s1, 0x20
/* 926D070 8007A340 0C007126 */  addiu      $s1, $s3, 0xC
/* 926D074 8007A344 21202002 */  addu       $a0, $s1, $zero
/* 926D078 8007A348 00040524 */  addiu      $a1, $zero, 0x400
/* 926D07C 8007A34C 01000624 */  addiu      $a2, $zero, 0x1
/* 926D080 8007A350 21380000 */  addu       $a3, $zero, $zero
/* 926D084 8007A354 1000A0AF */  sw         $zero, 0x10($sp)
/* 926D088 8007A358 8C6E000C */  jal        func_8001BA30
/* 926D08C 8007A35C 1400B3AF */   sw        $s3, 0x14($sp)
/* 926D090 8007A360 21804000 */  addu       $s0, $v0, $zero
/* 926D094 8007A364 09000012 */  beqz       $s0, .Llevel_48_8007A38C
/* 926D098 8007A368 21202002 */   addu      $a0, $s1, $zero
/* 926D09C 8007A36C DA60000C */  jal        func_80018368
/* 926D0A0 8007A370 0C000526 */   addiu     $a1, $s0, 0xC
/* 926D0A4 8007A374 05004014 */  bnez       $v0, .Llevel_48_8007A38C
/* 926D0A8 8007A378 1100033C */   lui       $v1, (0x110000 >> 16)
/* 926D0AC 8007A37C 1800028E */  lw         $v0, 0x18($s0)
/* 926D0B0 8007A380 00000000 */  nop
/* 926D0B4 8007A384 25104300 */  or         $v0, $v0, $v1
/* 926D0B8 8007A388 180002AE */  sw         $v0, 0x18($s0)
.Llevel_48_8007A38C:
/* 926D0BC 8007A38C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 926D0C0 8007A390 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 926D0C4 8007A394 0780033C */  lui        $v1, %hi(D_8006C574)
/* 926D0C8 8007A398 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 926D0CC 8007A39C 00000000 */  nop
/* 926D0D0 8007A3A0 23104300 */  subu       $v0, $v0, $v1
/* 926D0D4 8007A3A4 15004228 */  slti       $v0, $v0, 0x15
/* 926D0D8 8007A3A8 0D004014 */  bnez       $v0, .Llevel_48_8007A3E0
/* 926D0DC 8007A3AC 46010424 */   addiu     $a0, $zero, 0x146
/* 926D0E0 8007A3B0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 926D0E4 8007A3B4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 926D0E8 8007A3B8 00000000 */  nop
/* 926D0EC 8007A3BC 09F84000 */  jalr       $v0
/* 926D0F0 8007A3C0 21286002 */   addu      $a1, $s3, $zero
/* 926D0F4 8007A3C4 21804000 */  addu       $s0, $v0, $zero
/* 926D0F8 8007A3C8 05000012 */  beqz       $s0, .Llevel_48_8007A3E0
/* 926D0FC 8007A3CC 08000224 */   addiu     $v0, $zero, 0x8
/* 926D100 8007A3D0 470002A2 */  sb         $v0, 0x47($s0)
/* 926D104 8007A3D4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 926D108 8007A3D8 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 926D10C 8007A3DC 4E0002A2 */  sb         $v0, 0x4E($s0)
.Llevel_48_8007A3E0:
/* 926D110 8007A3E0 0800C48E */  lw         $a0, 0x8($s6)
/* 926D114 8007A3E4 00000000 */  nop
/* 926D118 8007A3E8 03008010 */  beqz       $a0, .Llevel_48_8007A3F8
/* 926D11C 8007A3EC 00000000 */   nop
/* 926D120 8007A3F0 7A42010C */  jal        func_800509E8
/* 926D124 8007A3F4 00000000 */   nop
.Llevel_48_8007A3F8:
/* 926D128 8007A3F8 21206002 */  addu       $a0, $s3, $zero
/* 926D12C 8007A3FC 01000524 */  addiu      $a1, $zero, 0x1
/* 926D130 8007A400 AFEE000C */  jal        func_8003BABC
/* 926D134 8007A404 21300000 */   addu      $a2, $zero, $zero
.Llevel_48_8007A408:
/* 926D138 8007A408 C656010C */  jal        func_80055B18
/* 926D13C 8007A40C 21206002 */   addu      $a0, $s3, $zero
.Llevel_48_8007A410:
/* 926D140 8007A410 9400BF8F */  lw         $ra, 0x94($sp)
/* 926D144 8007A414 9000B68F */  lw         $s6, 0x90($sp)
/* 926D148 8007A418 8C00B58F */  lw         $s5, 0x8C($sp)
/* 926D14C 8007A41C 8800B48F */  lw         $s4, 0x88($sp)
/* 926D150 8007A420 8400B38F */  lw         $s3, 0x84($sp)
/* 926D154 8007A424 8000B28F */  lw         $s2, 0x80($sp)
/* 926D158 8007A428 7C00B18F */  lw         $s1, 0x7C($sp)
/* 926D15C 8007A42C 7800B08F */  lw         $s0, 0x78($sp)
/* 926D160 8007A430 9800BD27 */  addiu      $sp, $sp, 0x98
/* 926D164 8007A434 0800E003 */  jr         $ra
/* 926D168 8007A438 00000000 */   nop
.size func_level_48_80079E88, . - func_level_48_80079E88
