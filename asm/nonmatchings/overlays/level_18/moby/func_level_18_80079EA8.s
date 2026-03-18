.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_18_80079EA8
/* 4EACBD8 80079EA8 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 4EACBDC 80079EAC 8400B3AF */  sw         $s3, 0x84($sp)
/* 4EACBE0 80079EB0 21988000 */  addu       $s3, $a0, $zero
/* 4EACBE4 80079EB4 9400BFAF */  sw         $ra, 0x94($sp)
/* 4EACBE8 80079EB8 9000B6AF */  sw         $s6, 0x90($sp)
/* 4EACBEC 80079EBC 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 4EACBF0 80079EC0 8800B4AF */  sw         $s4, 0x88($sp)
/* 4EACBF4 80079EC4 8000B2AF */  sw         $s2, 0x80($sp)
/* 4EACBF8 80079EC8 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 4EACBFC 80079ECC 7800B0AF */  sw         $s0, 0x78($sp)
/* 4EACC00 80079ED0 4D006292 */  lbu        $v0, 0x4D($s3)
/* 4EACC04 80079ED4 0000768E */  lw         $s6, 0x0($s3)
/* 4EACC08 80079ED8 09004014 */  bnez       $v0, .Llevel_18_80079F00
/* 4EACC0C 80079EDC 00000000 */   nop
/* 4EACC10 80079EE0 0800C48E */  lw         $a0, 0x8($s6)
/* 4EACC14 80079EE4 00000000 */  nop
/* 4EACC18 80079EE8 4F018010 */  beqz       $a0, .Llevel_18_8007A428
/* 4EACC1C 80079EEC 00000000 */   nop
/* 4EACC20 80079EF0 7A42010C */  jal        func_800509E8
/* 4EACC24 80079EF4 00000000 */   nop
/* 4EACC28 80079EF8 0AE90108 */  j          .Llevel_18_8007A428
/* 4EACC2C 80079EFC 00000000 */   nop
.Llevel_18_80079F00:
/* 4EACC30 80079F00 48006392 */  lbu        $v1, 0x48($s3)
/* 4EACC34 80079F04 01000224 */  addiu      $v0, $zero, 0x1
/* 4EACC38 80079F08 44006210 */  beq        $v1, $v0, .Llevel_18_8007A01C
/* 4EACC3C 80079F0C 02006228 */   slti      $v0, $v1, 0x2
/* 4EACC40 80079F10 05004010 */  beqz       $v0, .Llevel_18_80079F28
/* 4EACC44 80079F14 00000000 */   nop
/* 4EACC48 80079F18 08006010 */  beqz       $v1, .Llevel_18_80079F3C
/* 4EACC4C 80079F1C 0100143C */   lui       $s4, (0x1869F >> 16)
/* 4EACC50 80079F20 0CE90108 */  j          .Llevel_18_8007A430
/* 4EACC54 80079F24 00000000 */   nop
.Llevel_18_80079F28:
/* 4EACC58 80079F28 02000224 */  addiu      $v0, $zero, 0x2
/* 4EACC5C 80079F2C E0006210 */  beq        $v1, $v0, .Llevel_18_8007A2B0
/* 4EACC60 80079F30 00000000 */   nop
/* 4EACC64 80079F34 0CE90108 */  j          .Llevel_18_8007A430
/* 4EACC68 80079F38 00000000 */   nop
.Llevel_18_80079F3C:
/* 4EACC6C 80079F3C 9F869436 */  ori        $s4, $s4, (0x1869F & 0xFFFF)
/* 4EACC70 80079F40 0780123C */  lui        $s2, %hi(D_8006E788)
/* 4EACC74 80079F44 88E75226 */  addiu      $s2, $s2, %lo(D_8006E788)
/* 4EACC78 80079F48 FDE70108 */  j          .Llevel_18_80079FF4
/* 4EACC7C 80079F4C 0400C0AE */   sw        $zero, 0x4($s6)
.Llevel_18_80079F50:
/* 4EACC80 80079F50 0800228E */  lw         $v0, 0x8($s1)
/* 4EACC84 80079F54 00000000 */  nop
/* 4EACC88 80079F58 26004010 */  beqz       $v0, .Llevel_18_80079FF4
/* 4EACC8C 80079F5C 1800A427 */   addiu     $a0, $sp, 0x18
/* 4EACC90 80079F60 5E3C010C */  jal        func_8004F178
/* 4EACC94 80079F64 0C002526 */   addiu     $a1, $s1, 0xC
/* 4EACC98 80079F68 21300000 */  addu       $a2, $zero, $zero
/* 4EACC9C 80079F6C 1800A38F */  lw         $v1, 0x18($sp)
/* 4EACCA0 80079F70 0C00648E */  lw         $a0, 0xC($s3)
/* 4EACCA4 80079F74 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4EACCA8 80079F78 1000658E */  lw         $a1, 0x10($s3)
/* 4EACCAC 80079F7C 23206400 */  subu       $a0, $v1, $a0
/* 4EACCB0 80079F80 203A010C */  jal        func_8004E880
/* 4EACCB4 80079F84 23284500 */   subu      $a1, $v0, $a1
/* 4EACCB8 80079F88 46006392 */  lbu        $v1, 0x46($s3)
/* 4EACCBC 80079F8C 00000000 */  nop
/* 4EACCC0 80079F90 23104300 */  subu       $v0, $v0, $v1
/* 4EACCC4 80079F94 FF005030 */  andi       $s0, $v0, 0xFF
/* 4EACCC8 80079F98 8100022A */  slti       $v0, $s0, 0x81
/* 4EACCCC 80079F9C 02004014 */  bnez       $v0, .Llevel_18_80079FA8
/* 4EACCD0 80079FA0 00000000 */   nop
/* 4EACCD4 80079FA4 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_18_80079FA8:
/* 4EACCD8 80079FA8 02000106 */  bgez       $s0, .Llevel_18_80079FB4
/* 4EACCDC 80079FAC 00000000 */   nop
/* 4EACCE0 80079FB0 23801000 */  negu       $s0, $s0
.Llevel_18_80079FB4:
/* 4EACCE4 80079FB4 0C006426 */  addiu      $a0, $s3, 0xC
/* 4EACCE8 80079FB8 CD3C010C */  jal        func_8004F334
/* 4EACCEC 80079FBC 1800A527 */   addiu     $a1, $sp, 0x18
/* 4EACCF0 80079FC0 00100324 */  addiu      $v1, $zero, 0x1000
/* 4EACCF4 80079FC4 23186200 */  subu       $v1, $v1, $v0
/* 4EACCF8 80079FC8 02006104 */  bgez       $v1, .Llevel_18_80079FD4
/* 4EACCFC 80079FCC 00000000 */   nop
/* 4EACD00 80079FD0 23180300 */  negu       $v1, $v1
.Llevel_18_80079FD4:
/* 4EACD04 80079FD4 00121000 */  sll        $v0, $s0, 8
/* 4EACD08 80079FD8 21186200 */  addu       $v1, $v1, $v0
/* 4EACD0C 80079FDC 2A107400 */  slt        $v0, $v1, $s4
/* 4EACD10 80079FE0 04004010 */  beqz       $v0, .Llevel_18_80079FF4
/* 4EACD14 80079FE4 01086228 */   slti      $v0, $v1, 0x801
/* 4EACD18 80079FE8 06004014 */  bnez       $v0, .Llevel_18_8007A004
/* 4EACD1C 80079FEC 0400D1AE */   sw        $s1, 0x4($s6)
/* 4EACD20 80079FF0 21A06000 */  addu       $s4, $v1, $zero
.Llevel_18_80079FF4:
/* 4EACD24 80079FF4 0000518E */  lw         $s1, 0x0($s2)
/* 4EACD28 80079FF8 00000000 */  nop
/* 4EACD2C 80079FFC D4FF2016 */  bnez       $s1, .Llevel_18_80079F50
/* 4EACD30 8007A000 04005226 */   addiu     $s2, $s2, 0x4
.Llevel_18_8007A004:
/* 4EACD34 8007A004 0100023C */  lui        $v0, (0x1869F >> 16)
/* 4EACD38 8007A008 9F864234 */  ori        $v0, $v0, (0x1869F & 0xFFFF)
/* 4EACD3C 8007A00C 02008216 */  bne        $s4, $v0, .Llevel_18_8007A018
/* 4EACD40 8007A010 01000224 */   addiu     $v0, $zero, 0x1
/* 4EACD44 8007A014 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_18_8007A018:
/* 4EACD48 8007A018 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_18_8007A01C:
/* 4EACD4C 8007A01C 0C00628E */  lw         $v0, 0xC($s3)
/* 4EACD50 8007A020 00000000 */  nop
/* 4EACD54 8007A024 00044228 */  slti       $v0, $v0, 0x400
/* 4EACD58 8007A028 10004014 */  bnez       $v0, .Llevel_18_8007A06C
/* 4EACD5C 8007A02C 02000224 */   addiu     $v0, $zero, 0x2
/* 4EACD60 8007A030 1000628E */  lw         $v0, 0x10($s3)
/* 4EACD64 8007A034 00000000 */  nop
/* 4EACD68 8007A038 00044228 */  slti       $v0, $v0, 0x400
/* 4EACD6C 8007A03C 0B004014 */  bnez       $v0, .Llevel_18_8007A06C
/* 4EACD70 8007A040 02000224 */   addiu     $v0, $zero, 0x2
/* 4EACD74 8007A044 1400628E */  lw         $v0, 0x14($s3)
/* 4EACD78 8007A048 00000000 */  nop
/* 4EACD7C 8007A04C 00044228 */  slti       $v0, $v0, 0x400
/* 4EACD80 8007A050 06004014 */  bnez       $v0, .Llevel_18_8007A06C
/* 4EACD84 8007A054 02000224 */   addiu     $v0, $zero, 0x2
/* 4EACD88 8007A058 2120C002 */  addu       $a0, $s6, $zero
/* 4EACD8C 8007A05C 69D6000C */  jal        func_800359A4
/* 4EACD90 8007A060 04000524 */   addiu     $a1, $zero, 0x4
/* 4EACD94 8007A064 03004010 */  beqz       $v0, .Llevel_18_8007A074
/* 4EACD98 8007A068 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_18_8007A06C:
/* 4EACD9C 8007A06C 0CE90108 */  j          .Llevel_18_8007A430
/* 4EACDA0 8007A070 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_18_8007A074:
/* 4EACDA4 8007A074 2800A427 */  addiu      $a0, $sp, 0x28
/* 4EACDA8 8007A078 0C007126 */  addiu      $s1, $s3, 0xC
/* 4EACDAC 8007A07C 5E3C010C */  jal        func_8004F178
/* 4EACDB0 8007A080 21282002 */   addu      $a1, $s1, $zero
/* 4EACDB4 8007A084 0400C28E */  lw         $v0, 0x4($s6)
/* 4EACDB8 8007A088 00000000 */  nop
/* 4EACDBC 8007A08C 48004290 */  lbu        $v0, 0x48($v0)
/* 4EACDC0 8007A090 00000000 */  nop
/* 4EACDC4 8007A094 80004230 */  andi       $v0, $v0, 0x80
/* 4EACDC8 8007A098 02004010 */  beqz       $v0, .Llevel_18_8007A0A4
/* 4EACDCC 8007A09C 00000000 */   nop
/* 4EACDD0 8007A0A0 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_18_8007A0A4:
/* 4EACDD4 8007A0A4 0400C58E */  lw         $a1, 0x4($s6)
/* 4EACDD8 8007A0A8 00000000 */  nop
/* 4EACDDC 8007A0AC 3000A010 */  beqz       $a1, .Llevel_18_8007A170
/* 4EACDE0 8007A0B0 4800B027 */   addiu     $s0, $sp, 0x48
/* 4EACDE4 8007A0B4 21200002 */  addu       $a0, $s0, $zero
/* 4EACDE8 8007A0B8 5E3C010C */  jal        func_8004F178
/* 4EACDEC 8007A0BC 0C00A524 */   addiu     $a1, $a1, 0xC
/* 4EACDF0 8007A0C0 3800A427 */  addiu      $a0, $sp, 0x38
/* 4EACDF4 8007A0C4 21280002 */  addu       $a1, $s0, $zero
/* 4EACDF8 8007A0C8 5000A28F */  lw         $v0, 0x50($sp)
/* 4EACDFC 8007A0CC 21302002 */  addu       $a2, $s1, $zero
/* 4EACE00 8007A0D0 80004224 */  addiu      $v0, $v0, 0x80
/* 4EACE04 8007A0D4 723C010C */  jal        func_8004F1C8
/* 4EACE08 8007A0D8 5000A2AF */   sw        $v0, 0x50($sp)
/* 4EACE0C 8007A0DC 21300000 */  addu       $a2, $zero, $zero
/* 4EACE10 8007A0E0 3800A48F */  lw         $a0, 0x38($sp)
/* 4EACE14 8007A0E4 4000A28F */  lw         $v0, 0x40($sp)
/* 4EACE18 8007A0E8 3C00A58F */  lw         $a1, 0x3C($sp)
/* 4EACE1C 8007A0EC 00014224 */  addiu      $v0, $v0, 0x100
/* 4EACE20 8007A0F0 203A010C */  jal        func_8004E880
/* 4EACE24 8007A0F4 4000A2AF */   sw        $v0, 0x40($sp)
/* 4EACE28 8007A0F8 3800A48F */  lw         $a0, 0x38($sp)
/* 4EACE2C 8007A0FC 3C00A58F */  lw         $a1, 0x3C($sp)
/* 4EACE30 8007A100 203A010C */  jal        func_8004E880
/* 4EACE34 8007A104 21300000 */   addu      $a2, $zero, $zero
/* 4EACE38 8007A108 46006492 */  lbu        $a0, 0x46($s3)
/* 4EACE3C 8007A10C 00000000 */  nop
/* 4EACE40 8007A110 23104400 */  subu       $v0, $v0, $a0
/* 4EACE44 8007A114 FF004330 */  andi       $v1, $v0, 0xFF
/* 4EACE48 8007A118 81006228 */  slti       $v0, $v1, 0x81
/* 4EACE4C 8007A11C 02004014 */  bnez       $v0, .Llevel_18_8007A128
/* 4EACE50 8007A120 00000000 */   nop
/* 4EACE54 8007A124 00FF6324 */  addiu      $v1, $v1, -0x100
.Llevel_18_8007A128:
/* 4EACE58 8007A128 02006104 */  bgez       $v1, .Llevel_18_8007A134
/* 4EACE5C 8007A12C 21106000 */   addu      $v0, $v1, $zero
/* 4EACE60 8007A130 23100200 */  negu       $v0, $v0
.Llevel_18_8007A134:
/* 4EACE64 8007A134 30004228 */  slti       $v0, $v0, 0x30
/* 4EACE68 8007A138 02004010 */  beqz       $v0, .Llevel_18_8007A144
/* 4EACE6C 8007A13C 80001124 */   addiu     $s1, $zero, 0x80
/* 4EACE70 8007A140 FA001124 */  addiu      $s1, $zero, 0xFA
.Llevel_18_8007A144:
/* 4EACE74 8007A144 FCFF6228 */  slti       $v0, $v1, -0x4
/* 4EACE78 8007A148 03004010 */  beqz       $v0, .Llevel_18_8007A158
/* 4EACE7C 8007A14C 05006228 */   slti      $v0, $v1, 0x5
/* 4EACE80 8007A150 FCFF0324 */  addiu      $v1, $zero, -0x4
/* 4EACE84 8007A154 05006228 */  slti       $v0, $v1, 0x5
.Llevel_18_8007A158:
/* 4EACE88 8007A158 03004014 */  bnez       $v0, .Llevel_18_8007A168
/* 4EACE8C 8007A15C 21108300 */   addu      $v0, $a0, $v1
/* 4EACE90 8007A160 04000324 */  addiu      $v1, $zero, 0x4
/* 4EACE94 8007A164 21108300 */  addu       $v0, $a0, $v1
.Llevel_18_8007A168:
/* 4EACE98 8007A168 5EE80108 */  j          .Llevel_18_8007A178
/* 4EACE9C 8007A16C 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_18_8007A170:
/* 4EACEA0 8007A170 FA001124 */  addiu      $s1, $zero, 0xFA
/* 4EACEA4 8007A174 480060A2 */  sb         $zero, 0x48($s3)
.Llevel_18_8007A178:
/* 4EACEA8 8007A178 21206002 */  addu       $a0, $s3, $zero
/* 4EACEAC 8007A17C 4957010C */  jal        func_80055D24
/* 4EACEB0 8007A180 04000524 */   addiu     $a1, $zero, 0x4
/* 4EACEB4 8007A184 20006426 */  addiu      $a0, $s3, 0x20
/* 4EACEB8 8007A188 3800B027 */  addiu      $s0, $sp, 0x38
/* 4EACEBC 8007A18C 21280002 */  addu       $a1, $s0, $zero
/* 4EACEC0 8007A190 21300002 */  addu       $a2, $s0, $zero
/* 4EACEC4 8007A194 3800B1AF */  sw         $s1, 0x38($sp)
/* 4EACEC8 8007A198 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 4EACECC 8007A19C 5B3B010C */  jal        func_8004ED6C
/* 4EACED0 8007A1A0 4000A0AF */   sw        $zero, 0x40($sp)
/* 4EACED4 8007A1A4 0C007226 */  addiu      $s2, $s3, 0xC
/* 4EACED8 8007A1A8 21204002 */  addu       $a0, $s2, $zero
/* 4EACEDC 8007A1AC 21284002 */  addu       $a1, $s2, $zero
/* 4EACEE0 8007A1B0 653C010C */  jal        func_8004F194
/* 4EACEE4 8007A1B4 21300002 */   addu      $a2, $s0, $zero
/* 4EACEE8 8007A1B8 2800B027 */  addiu      $s0, $sp, 0x28
/* 4EACEEC 8007A1BC 21200002 */  addu       $a0, $s0, $zero
/* 4EACEF0 8007A1C0 21284002 */  addu       $a1, $s2, $zero
/* 4EACEF4 8007A1C4 21300000 */  addu       $a2, $zero, $zero
/* 4EACEF8 8007A1C8 1100073C */  lui        $a3, (0x110000 >> 16)
/* 4EACEFC 8007A1CC C360000C */  jal        func_8001830C
/* 4EACF00 8007A1D0 1000B3AF */   sw        $s3, 0x10($sp)
/* 4EACF04 8007A1D4 05004010 */  beqz       $v0, .Llevel_18_8007A1EC
/* 4EACF08 8007A1D8 21204002 */   addu      $a0, $s2, $zero
/* 4EACF0C 8007A1DC 5E3C010C */  jal        func_8004F178
/* 4EACF10 8007A1E0 21280002 */   addu      $a1, $s0, $zero
/* 4EACF14 8007A1E4 94E80108 */  j          .Llevel_18_8007A250
/* 4EACF18 8007A1E8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_18_8007A1EC:
/* 4EACF1C 8007A1EC 00020524 */  addiu      $a1, $zero, 0x200
/* 4EACF20 8007A1F0 01000624 */  addiu      $a2, $zero, 0x1
/* 4EACF24 8007A1F4 21380000 */  addu       $a3, $zero, $zero
/* 4EACF28 8007A1F8 1000A0AF */  sw         $zero, 0x10($sp)
/* 4EACF2C 8007A1FC 8C6E000C */  jal        func_8001BA30
/* 4EACF30 8007A200 1400B3AF */   sw        $s3, 0x14($sp)
/* 4EACF34 8007A204 21884000 */  addu       $s1, $v0, $zero
/* 4EACF38 8007A208 12002012 */  beqz       $s1, .Llevel_18_8007A254
/* 4EACF3C 8007A20C 5800B027 */   addiu     $s0, $sp, 0x58
/* 4EACF40 8007A210 21200002 */  addu       $a0, $s0, $zero
/* 4EACF44 8007A214 5E3C010C */  jal        func_8004F178
/* 4EACF48 8007A218 0C002526 */   addiu     $a1, $s1, 0xC
/* 4EACF4C 8007A21C 21204002 */  addu       $a0, $s2, $zero
/* 4EACF50 8007A220 6000A28F */  lw         $v0, 0x60($sp)
/* 4EACF54 8007A224 21280002 */  addu       $a1, $s0, $zero
/* 4EACF58 8007A228 80004224 */  addiu      $v0, $v0, 0x80
/* 4EACF5C 8007A22C DA60000C */  jal        func_80018368
/* 4EACF60 8007A230 6000A2AF */   sw        $v0, 0x60($sp)
/* 4EACF64 8007A234 07004014 */  bnez       $v0, .Llevel_18_8007A254
/* 4EACF68 8007A238 1100033C */   lui       $v1, (0x110000 >> 16)
/* 4EACF6C 8007A23C 1800228E */  lw         $v0, 0x18($s1)
/* 4EACF70 8007A240 00000000 */  nop
/* 4EACF74 8007A244 25104300 */  or         $v0, $v0, $v1
/* 4EACF78 8007A248 180022AE */  sw         $v0, 0x18($s1)
/* 4EACF7C 8007A24C 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_18_8007A250:
/* 4EACF80 8007A250 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_18_8007A254:
/* 4EACF84 8007A254 0800C28E */  lw         $v0, 0x8($s6)
/* 4EACF88 8007A258 00000000 */  nop
/* 4EACF8C 8007A25C 74004010 */  beqz       $v0, .Llevel_18_8007A430
/* 4EACF90 8007A260 00000000 */   nop
/* 4EACF94 8007A264 46006492 */  lbu        $a0, 0x46($s3)
/* 4EACF98 8007A268 993C010C */  jal        func_8004F264
/* 4EACF9C 8007A26C 21280000 */   addu      $a1, $zero, $zero
/* 4EACFA0 8007A270 20004228 */  slti       $v0, $v0, 0x20
/* 4EACFA4 8007A274 07004014 */  bnez       $v0, .Llevel_18_8007A294
/* 4EACFA8 8007A278 00000000 */   nop
/* 4EACFAC 8007A27C 46006492 */  lbu        $a0, 0x46($s3)
/* 4EACFB0 8007A280 993C010C */  jal        func_8004F264
/* 4EACFB4 8007A284 80000524 */   addiu     $a1, $zero, 0x80
/* 4EACFB8 8007A288 20004228 */  slti       $v0, $v0, 0x20
/* 4EACFBC 8007A28C 05004010 */  beqz       $v0, .Llevel_18_8007A2A4
/* 4EACFC0 8007A290 07000224 */   addiu     $v0, $zero, 0x7
.Llevel_18_8007A294:
/* 4EACFC4 8007A294 0800C38E */  lw         $v1, 0x8($s6)
/* 4EACFC8 8007A298 F4000224 */  addiu      $v0, $zero, 0xF4
/* 4EACFCC 8007A29C 0CE90108 */  j          .Llevel_18_8007A430
/* 4EACFD0 8007A2A0 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_18_8007A2A4:
/* 4EACFD4 8007A2A4 0800C38E */  lw         $v1, 0x8($s6)
/* 4EACFD8 8007A2A8 0CE90108 */  j          .Llevel_18_8007A430
/* 4EACFDC 8007A2AC 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_18_8007A2B0:
/* 4EACFE0 8007A2B0 9171010C */  jal        rand
/* 4EACFE4 8007A2B4 21800000 */   addu      $s0, $zero, $zero
/* 4EACFE8 8007A2B8 FF005130 */  andi       $s1, $v0, 0xFF
/* 4EACFEC 8007A2BC 0C007526 */  addiu      $s5, $s3, 0xC
/* 4EACFF0 8007A2C0 6800B427 */  addiu      $s4, $sp, 0x68
/* 4EACFF4 8007A2C4 0680033C */  lui        $v1, %hi(D_80065920)
/* 4EACFF8 8007A2C8 20596324 */  addiu      $v1, $v1, %lo(D_80065920)
/* 4EACFFC 8007A2CC 40101100 */  sll        $v0, $s1, 1
/* 4EAD000 8007A2D0 21904300 */  addu       $s2, $v0, $v1
.Llevel_18_8007A2D4:
/* 4EAD004 8007A2D4 01000424 */  addiu      $a0, $zero, 0x1
/* 4EAD008 8007A2D8 37000524 */  addiu      $a1, $zero, 0x37
/* 4EAD00C 8007A2DC 2130A002 */  addu       $a2, $s5, $zero
/* 4EAD010 8007A2E0 00004286 */  lh         $v0, 0x0($s2)
/* 4EAD014 8007A2E4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 4EAD018 8007A2E8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 4EAD01C 8007A2EC C3110200 */  sra        $v0, $v0, 7
/* 4EAD020 8007A2F0 6800A2AF */  sw         $v0, 0x68($sp)
/* 4EAD024 8007A2F4 40101100 */  sll        $v0, $s1, 1
/* 4EAD028 8007A2F8 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EAD02C 8007A2FC 21082200 */  addu       $at, $at, $v0
/* 4EAD030 8007A300 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EAD034 8007A304 21388002 */  addu       $a3, $s4, $zero
/* 4EAD038 8007A308 7000A0AF */  sw         $zero, 0x70($sp)
/* 4EAD03C 8007A30C C3110200 */  sra        $v0, $v0, 7
/* 4EAD040 8007A310 09F86000 */  jalr       $v1
/* 4EAD044 8007A314 6C00A2AF */   sw        $v0, 0x6C($sp)
/* 4EAD048 8007A318 01000232 */  andi       $v0, $s0, 0x1
/* 4EAD04C 8007A31C 0B004010 */  beqz       $v0, .Llevel_18_8007A34C
/* 4EAD050 8007A320 21208002 */   addu      $a0, $s4, $zero
/* 4EAD054 8007A324 443C010C */  jal        func_8004F110
/* 4EAD058 8007A328 01000524 */   addiu     $a1, $zero, 0x1
/* 4EAD05C 8007A32C 01000424 */  addiu      $a0, $zero, 0x1
/* 4EAD060 8007A330 37000524 */  addiu      $a1, $zero, 0x37
/* 4EAD064 8007A334 2130A002 */  addu       $a2, $s5, $zero
/* 4EAD068 8007A338 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4EAD06C 8007A33C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4EAD070 8007A340 00000000 */  nop
/* 4EAD074 8007A344 09F84000 */  jalr       $v0
/* 4EAD078 8007A348 21388002 */   addu      $a3, $s4, $zero
.Llevel_18_8007A34C:
/* 4EAD07C 8007A34C 40005226 */  addiu      $s2, $s2, 0x40
/* 4EAD080 8007A350 01001026 */  addiu      $s0, $s0, 0x1
/* 4EAD084 8007A354 0800022A */  slti       $v0, $s0, 0x8
/* 4EAD088 8007A358 DEFF4014 */  bnez       $v0, .Llevel_18_8007A2D4
/* 4EAD08C 8007A35C 20003126 */   addiu     $s1, $s1, 0x20
/* 4EAD090 8007A360 0C007126 */  addiu      $s1, $s3, 0xC
/* 4EAD094 8007A364 21202002 */  addu       $a0, $s1, $zero
/* 4EAD098 8007A368 00040524 */  addiu      $a1, $zero, 0x400
/* 4EAD09C 8007A36C 01000624 */  addiu      $a2, $zero, 0x1
/* 4EAD0A0 8007A370 21380000 */  addu       $a3, $zero, $zero
/* 4EAD0A4 8007A374 1000A0AF */  sw         $zero, 0x10($sp)
/* 4EAD0A8 8007A378 8C6E000C */  jal        func_8001BA30
/* 4EAD0AC 8007A37C 1400B3AF */   sw        $s3, 0x14($sp)
/* 4EAD0B0 8007A380 21804000 */  addu       $s0, $v0, $zero
/* 4EAD0B4 8007A384 09000012 */  beqz       $s0, .Llevel_18_8007A3AC
/* 4EAD0B8 8007A388 21202002 */   addu      $a0, $s1, $zero
/* 4EAD0BC 8007A38C DA60000C */  jal        func_80018368
/* 4EAD0C0 8007A390 0C000526 */   addiu     $a1, $s0, 0xC
/* 4EAD0C4 8007A394 05004014 */  bnez       $v0, .Llevel_18_8007A3AC
/* 4EAD0C8 8007A398 1100033C */   lui       $v1, (0x110000 >> 16)
/* 4EAD0CC 8007A39C 1800028E */  lw         $v0, 0x18($s0)
/* 4EAD0D0 8007A3A0 00000000 */  nop
/* 4EAD0D4 8007A3A4 25104300 */  or         $v0, $v0, $v1
/* 4EAD0D8 8007A3A8 180002AE */  sw         $v0, 0x18($s0)
.Llevel_18_8007A3AC:
/* 4EAD0DC 8007A3AC 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4EAD0E0 8007A3B0 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4EAD0E4 8007A3B4 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4EAD0E8 8007A3B8 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4EAD0EC 8007A3BC 00000000 */  nop
/* 4EAD0F0 8007A3C0 23104300 */  subu       $v0, $v0, $v1
/* 4EAD0F4 8007A3C4 15004228 */  slti       $v0, $v0, 0x15
/* 4EAD0F8 8007A3C8 0D004014 */  bnez       $v0, .Llevel_18_8007A400
/* 4EAD0FC 8007A3CC 46010424 */   addiu     $a0, $zero, 0x146
/* 4EAD100 8007A3D0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4EAD104 8007A3D4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4EAD108 8007A3D8 00000000 */  nop
/* 4EAD10C 8007A3DC 09F84000 */  jalr       $v0
/* 4EAD110 8007A3E0 21286002 */   addu      $a1, $s3, $zero
/* 4EAD114 8007A3E4 21804000 */  addu       $s0, $v0, $zero
/* 4EAD118 8007A3E8 05000012 */  beqz       $s0, .Llevel_18_8007A400
/* 4EAD11C 8007A3EC 08000224 */   addiu     $v0, $zero, 0x8
/* 4EAD120 8007A3F0 470002A2 */  sb         $v0, 0x47($s0)
/* 4EAD124 8007A3F4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 4EAD128 8007A3F8 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 4EAD12C 8007A3FC 4E0002A2 */  sb         $v0, 0x4E($s0)
.Llevel_18_8007A400:
/* 4EAD130 8007A400 0800C48E */  lw         $a0, 0x8($s6)
/* 4EAD134 8007A404 00000000 */  nop
/* 4EAD138 8007A408 03008010 */  beqz       $a0, .Llevel_18_8007A418
/* 4EAD13C 8007A40C 00000000 */   nop
/* 4EAD140 8007A410 7A42010C */  jal        func_800509E8
/* 4EAD144 8007A414 00000000 */   nop
.Llevel_18_8007A418:
/* 4EAD148 8007A418 21206002 */  addu       $a0, $s3, $zero
/* 4EAD14C 8007A41C 01000524 */  addiu      $a1, $zero, 0x1
/* 4EAD150 8007A420 AFEE000C */  jal        func_8003BABC
/* 4EAD154 8007A424 21300000 */   addu      $a2, $zero, $zero
.Llevel_18_8007A428:
/* 4EAD158 8007A428 C656010C */  jal        func_80055B18
/* 4EAD15C 8007A42C 21206002 */   addu      $a0, $s3, $zero
.Llevel_18_8007A430:
/* 4EAD160 8007A430 9400BF8F */  lw         $ra, 0x94($sp)
/* 4EAD164 8007A434 9000B68F */  lw         $s6, 0x90($sp)
/* 4EAD168 8007A438 8C00B58F */  lw         $s5, 0x8C($sp)
/* 4EAD16C 8007A43C 8800B48F */  lw         $s4, 0x88($sp)
/* 4EAD170 8007A440 8400B38F */  lw         $s3, 0x84($sp)
/* 4EAD174 8007A444 8000B28F */  lw         $s2, 0x80($sp)
/* 4EAD178 8007A448 7C00B18F */  lw         $s1, 0x7C($sp)
/* 4EAD17C 8007A44C 7800B08F */  lw         $s0, 0x78($sp)
/* 4EAD180 8007A450 9800BD27 */  addiu      $sp, $sp, 0x98
/* 4EAD184 8007A454 0800E003 */  jr         $ra
/* 4EAD188 8007A458 00000000 */   nop
.size func_level_18_80079EA8, . - func_level_18_80079EA8
