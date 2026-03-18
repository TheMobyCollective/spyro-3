.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8008ECE0
/* 74EAA10 8008ECE0 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 74EAA14 8008ECE4 7400B1AF */  sw         $s1, 0x74($sp)
/* 74EAA18 8008ECE8 21888000 */  addu       $s1, $a0, $zero
/* 74EAA1C 8008ECEC 8400B5AF */  sw         $s5, 0x84($sp)
/* 74EAA20 8008ECF0 21A8A000 */  addu       $s5, $a1, $zero
/* 74EAA24 8008ECF4 8800BFAF */  sw         $ra, 0x88($sp)
/* 74EAA28 8008ECF8 8000B4AF */  sw         $s4, 0x80($sp)
/* 74EAA2C 8008ECFC 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 74EAA30 8008ED00 7800B2AF */  sw         $s2, 0x78($sp)
/* 74EAA34 8008ED04 9F56010C */  jal        func_80055A7C
/* 74EAA38 8008ED08 7000B0AF */   sw        $s0, 0x70($sp)
/* 74EAA3C 8008ED0C 21984000 */  addu       $s3, $v0, $zero
/* 74EAA40 8008ED10 03006016 */  bnez       $s3, .Llevel_34_8008ED20
/* 74EAA44 8008ED14 21206002 */   addu      $a0, $s3, $zero
/* 74EAA48 8008ED18 A93E0208 */  j          .Llevel_34_8008FAA4
/* 74EAA4C 8008ED1C 21100000 */   addu      $v0, $zero, $zero
.Llevel_34_8008ED20:
/* 74EAA50 8008ED20 21280000 */  addu       $a1, $zero, $zero
/* 74EAA54 8008ED24 0000708E */  lw         $s0, 0x0($s3)
/* 74EAA58 8008ED28 E439010C */  jal        func_8004E790
/* 74EAA5C 8008ED2C 58000624 */   addiu     $a2, $zero, 0x58
/* 74EAA60 8008ED30 21280000 */  addu       $a1, $zero, $zero
/* 74EAA64 8008ED34 18000624 */  addiu      $a2, $zero, 0x18
/* 74EAA68 8008ED38 21200002 */  addu       $a0, $s0, $zero
/* 74EAA6C 8008ED3C E439010C */  jal        func_8004E790
/* 74EAA70 8008ED40 000064AE */   sw        $a0, 0x0($s3)
/* 74EAA74 8008ED44 1600A012 */  beqz       $s5, .Llevel_34_8008EDA0
/* 74EAA78 8008ED48 360071A6 */   sh        $s1, 0x36($s3)
/* 74EAA7C 8008ED4C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 74EAA80 8008ED50 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 74EAA84 8008ED54 00000000 */  nop
/* 74EAA88 8008ED58 2320A402 */  subu       $a0, $s5, $a0
/* 74EAA8C 8008ED5C 40190400 */  sll        $v1, $a0, 5
/* 74EAA90 8008ED60 23186400 */  subu       $v1, $v1, $a0
/* 74EAA94 8008ED64 40190300 */  sll        $v1, $v1, 5
/* 74EAA98 8008ED68 21186400 */  addu       $v1, $v1, $a0
/* 74EAA9C 8008ED6C C0100300 */  sll        $v0, $v1, 3
/* 74EAAA0 8008ED70 21186200 */  addu       $v1, $v1, $v0
/* 74EAAA4 8008ED74 C0130300 */  sll        $v0, $v1, 15
/* 74EAAA8 8008ED78 23104300 */  subu       $v0, $v0, $v1
/* 74EAAAC 8008ED7C 80100200 */  sll        $v0, $v0, 2
/* 74EAAB0 8008ED80 21104400 */  addu       $v0, $v0, $a0
/* 74EAAB4 8008ED84 23100200 */  negu       $v0, $v0
/* 74EAAB8 8008ED88 C3180200 */  sra        $v1, $v0, 3
/* 74EAABC 8008ED8C 0001622C */  sltiu      $v0, $v1, 0x100
/* 74EAAC0 8008ED90 04004010 */  beqz       $v0, .Llevel_34_8008EDA4
/* 74EAAC4 8008ED94 FF000224 */   addiu     $v0, $zero, 0xFF
/* 74EAAC8 8008ED98 6A3B0208 */  j          .Llevel_34_8008EDA8
/* 74EAACC 8008ED9C 3A0063A2 */   sb        $v1, 0x3A($s3)
.Llevel_34_8008EDA0:
/* 74EAAD0 8008EDA0 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_34_8008EDA4:
/* 74EAAD4 8008EDA4 3A0062A2 */  sb         $v0, 0x3A($s3)
.Llevel_34_8008EDA8:
/* 74EAAD8 8008EDA8 FBD3000C */  jal        func_80034FEC
/* 74EAADC 8008EDAC 21206002 */   addu      $a0, $s3, $zero
/* 74EAAE0 8008EDB0 10010224 */  addiu      $v0, $zero, 0x110
/* 74EAAE4 8008EDB4 1B012212 */  beq        $s1, $v0, .Llevel_34_8008F224
/* 74EAAE8 8008EDB8 1101222A */   slti      $v0, $s1, 0x111
/* 74EAAEC 8008EDBC 20004010 */  beqz       $v0, .Llevel_34_8008EE40
/* 74EAAF0 8008EDC0 78000224 */   addiu     $v0, $zero, 0x78
/* 74EAAF4 8008EDC4 B8002212 */  beq        $s1, $v0, .Llevel_34_8008F0A8
/* 74EAAF8 8008EDC8 7900222A */   slti      $v0, $s1, 0x79
/* 74EAAFC 8008EDCC 0E004010 */  beqz       $v0, .Llevel_34_8008EE08
/* 74EAB00 8008EDD0 10000224 */   addiu     $v0, $zero, 0x10
/* 74EAB04 8008EDD4 81002212 */  beq        $s1, $v0, .Llevel_34_8008EFDC
/* 74EAB08 8008EDD8 1100222A */   slti      $v0, $s1, 0x11
/* 74EAB0C 8008EDDC 05004010 */  beqz       $v0, .Llevel_34_8008EDF4
/* 74EAB10 8008EDE0 01000224 */   addiu     $v0, $zero, 0x1
/* 74EAB14 8008EDE4 32002212 */  beq        $s1, $v0, .Llevel_34_8008EEB0
/* 74EAB18 8008EDE8 00000000 */   nop
/* 74EAB1C 8008EDEC 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EAB20 8008EDF0 00000000 */   nop
.Llevel_34_8008EDF4:
/* 74EAB24 8008EDF4 5A000224 */  addiu      $v0, $zero, 0x5A
/* 74EAB28 8008EDF8 34002212 */  beq        $s1, $v0, .Llevel_34_8008EECC
/* 74EAB2C 8008EDFC C0000224 */   addiu     $v0, $zero, 0xC0
/* 74EAB30 8008EE00 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EAB34 8008EE04 00000000 */   nop
.Llevel_34_8008EE08:
/* 74EAB38 8008EE08 D3000224 */  addiu      $v0, $zero, 0xD3
/* 74EAB3C 8008EE0C 73002212 */  beq        $s1, $v0, .Llevel_34_8008EFDC
/* 74EAB40 8008EE10 D400222A */   slti      $v0, $s1, 0xD4
/* 74EAB44 8008EE14 05004010 */  beqz       $v0, .Llevel_34_8008EE2C
/* 74EAB48 8008EE18 84000224 */   addiu     $v0, $zero, 0x84
/* 74EAB4C 8008EE1C DE002212 */  beq        $s1, $v0, .Llevel_34_8008F198
/* 74EAB50 8008EE20 0C006426 */   addiu     $a0, $s3, 0xC
/* 74EAB54 8008EE24 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EAB58 8008EE28 00000000 */   nop
.Llevel_34_8008EE2C:
/* 74EAB5C 8008EE2C 04010224 */  addiu      $v0, $zero, 0x104
/* 74EAB60 8008EE30 E7002212 */  beq        $s1, $v0, .Llevel_34_8008F1D0
/* 74EAB64 8008EE34 00000000 */   nop
/* 74EAB68 8008EE38 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EAB6C 8008EE3C 00000000 */   nop
.Llevel_34_8008EE40:
/* 74EAB70 8008EE40 E2010224 */  addiu      $v0, $zero, 0x1E2
/* 74EAB74 8008EE44 1B022212 */  beq        $s1, $v0, .Llevel_34_8008F6B4
/* 74EAB78 8008EE48 E301222A */   slti      $v0, $s1, 0x1E3
/* 74EAB7C 8008EE4C 0A004010 */  beqz       $v0, .Llevel_34_8008EE78
/* 74EAB80 8008EE50 3201222A */   slti      $v0, $s1, 0x132
/* 74EAB84 8008EE54 07034014 */  bnez       $v0, .Llevel_34_8008FA74
/* 74EAB88 8008EE58 3501222A */   slti      $v0, $s1, 0x135
/* 74EAB8C 8008EE5C 0E014014 */  bnez       $v0, .Llevel_34_8008F298
/* 74EAB90 8008EE60 0C006426 */   addiu     $a0, $s3, 0xC
/* 74EAB94 8008EE64 46010224 */  addiu      $v0, $zero, 0x146
/* 74EAB98 8008EE68 D0012212 */  beq        $s1, $v0, .Llevel_34_8008F5AC
/* 74EAB9C 8008EE6C 00000000 */   nop
/* 74EABA0 8008EE70 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EABA4 8008EE74 00000000 */   nop
.Llevel_34_8008EE78:
/* 74EABA8 8008EE78 1D020224 */  addiu      $v0, $zero, 0x21D
/* 74EABAC 8008EE7C E8022212 */  beq        $s1, $v0, .Llevel_34_8008FA20
/* 74EABB0 8008EE80 1E02222A */   slti      $v0, $s1, 0x21E
/* 74EABB4 8008EE84 05004010 */  beqz       $v0, .Llevel_34_8008EE9C
/* 74EABB8 8008EE88 E3010224 */   addiu     $v0, $zero, 0x1E3
/* 74EABBC 8008EE8C 21022212 */  beq        $s1, $v0, .Llevel_34_8008F714
/* 74EABC0 8008EE90 00000000 */   nop
/* 74EABC4 8008EE94 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EABC8 8008EE98 00000000 */   nop
.Llevel_34_8008EE9C:
/* 74EABCC 8008EE9C 38020224 */  addiu      $v0, $zero, 0x238
/* 74EABD0 8008EEA0 FD002212 */  beq        $s1, $v0, .Llevel_34_8008F298
/* 74EABD4 8008EEA4 0C006426 */   addiu     $a0, $s3, 0xC
/* 74EABD8 8008EEA8 9D3E0208 */  j          .Llevel_34_8008FA74
/* 74EABDC 8008EEAC 00000000 */   nop
.Llevel_34_8008EEB0:
/* 74EABE0 8008EEB0 0957010C */  jal        func_80055C24
/* 74EABE4 8008EEB4 21206002 */   addu      $a0, $s3, $zero
/* 74EABE8 8008EEB8 18000224 */  addiu      $v0, $zero, 0x18
/* 74EABEC 8008EEBC 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 74EABF0 8008EEC0 40000224 */  addiu      $v0, $zero, 0x40
/* 74EABF4 8008EEC4 863C0208 */  j          .Llevel_34_8008F218
/* 74EABF8 8008EEC8 4A0062A2 */   sb        $v0, 0x4A($s3)
.Llevel_34_8008EECC:
/* 74EABFC 8008EECC 0000B18E */  lw         $s1, 0x0($s5)
/* 74EAC00 8008EED0 0000728E */  lw         $s2, 0x0($s3)
/* 74EAC04 8008EED4 1000A0AF */  sw         $zero, 0x10($sp)
/* 74EAC08 8008EED8 1400A2AF */  sw         $v0, 0x14($sp)
/* 74EAC0C 8008EEDC 2800228E */  lw         $v0, 0x28($s1)
/* 74EAC10 8008EEE0 00000000 */  nop
/* 74EAC14 8008EEE4 02004010 */  beqz       $v0, .Llevel_34_8008EEF0
/* 74EAC18 8008EEE8 40FF0224 */   addiu     $v0, $zero, -0xC0
/* 74EAC1C 8008EEEC 1400A2AF */  sw         $v0, 0x14($sp)
.Llevel_34_8008EEF0:
/* 74EAC20 8008EEF0 0780103C */  lui        $s0, %hi(D_8006E044)
/* 74EAC24 8008EEF4 44E01026 */  addiu      $s0, $s0, %lo(D_8006E044)
/* 74EAC28 8008EEF8 0000038E */  lw         $v1, 0x0($s0)
/* 74EAC2C 8008EEFC 07000224 */  addiu      $v0, $zero, 0x7
/* 74EAC30 8008EF00 1E006214 */  bne        $v1, $v0, .Llevel_34_8008EF7C
/* 74EAC34 8008EF04 2000A426 */   addiu     $a0, $s5, 0x20
/* 74EAC38 8008EF08 0780033C */  lui        $v1, %hi(D_8006E048)
/* 74EAC3C 8008EF0C 48E0638C */  lw         $v1, %lo(D_8006E048)($v1)
/* 74EAC40 8008EF10 01000224 */  addiu      $v0, $zero, 0x1
/* 74EAC44 8008EF14 18006210 */  beq        $v1, $v0, .Llevel_34_8008EF78
/* 74EAC48 8008EF18 C8FF0426 */   addiu     $a0, $s0, -0x38
/* 74EAC4C 8008EF1C 1000A527 */  addiu      $a1, $sp, 0x10
/* 74EAC50 8008EF20 2130A000 */  addu       $a2, $a1, $zero
/* 74EAC54 8008EF24 5B3B010C */  jal        func_8004ED6C
/* 74EAC58 8008EF28 1800A0AF */   sw        $zero, 0x18($sp)
/* 74EAC5C 8008EF2C 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EAC60 8008EF30 DCFF0526 */  addiu      $a1, $s0, -0x24
/* 74EAC64 8008EF34 653C010C */  jal        func_8004F194
/* 74EAC68 8008EF38 1000A627 */   addiu     $a2, $sp, 0x10
/* 74EAC6C 8008EF3C 0780023C */  lui        $v0, %hi(D_8006E03C)
/* 74EAC70 8008EF40 3CE04294 */  lhu        $v0, %lo(D_8006E03C)($v0)
/* 74EAC74 8008EF44 00000000 */  nop
/* 74EAC78 8008EF48 02110200 */  srl        $v0, $v0, 4
/* 74EAC7C 8008EF4C 440062A2 */  sb         $v0, 0x44($s3)
/* 74EAC80 8008EF50 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 74EAC84 8008EF54 3EE04284 */  lh         $v0, %lo(D_8006E03E)($v0)
/* 74EAC88 8008EF58 00000000 */  nop
/* 74EAC8C 8008EF5C 23100200 */  negu       $v0, $v0
/* 74EAC90 8008EF60 03110200 */  sra        $v0, $v0, 4
/* 74EAC94 8008EF64 450062A2 */  sb         $v0, 0x45($s3)
/* 74EAC98 8008EF68 0780023C */  lui        $v0, %hi(D_8006E040)
/* 74EAC9C 8008EF6C 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 74EACA0 8008EF70 EF3B0208 */  j          .Llevel_34_8008EFBC
/* 74EACA4 8008EF74 02110200 */   srl       $v0, $v0, 4
.Llevel_34_8008EF78:
/* 74EACA8 8008EF78 2000A426 */  addiu      $a0, $s5, 0x20
.Llevel_34_8008EF7C:
/* 74EACAC 8008EF7C 1000A527 */  addiu      $a1, $sp, 0x10
/* 74EACB0 8008EF80 2130A000 */  addu       $a2, $a1, $zero
/* 74EACB4 8008EF84 80010224 */  addiu      $v0, $zero, 0x180
/* 74EACB8 8008EF88 5B3B010C */  jal        func_8004ED6C
/* 74EACBC 8008EF8C 1800A2AF */   sw        $v0, 0x18($sp)
/* 74EACC0 8008EF90 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EACC4 8008EF94 0C00A526 */  addiu      $a1, $s5, 0xC
/* 74EACC8 8008EF98 653C010C */  jal        func_8004F194
/* 74EACCC 8008EF9C 1000A627 */   addiu     $a2, $sp, 0x10
/* 74EACD0 8008EFA0 4400A292 */  lbu        $v0, 0x44($s5)
/* 74EACD4 8008EFA4 00000000 */  nop
/* 74EACD8 8008EFA8 440062A2 */  sb         $v0, 0x44($s3)
/* 74EACDC 8008EFAC 4500A292 */  lbu        $v0, 0x45($s5)
/* 74EACE0 8008EFB0 00000000 */  nop
/* 74EACE4 8008EFB4 450062A2 */  sb         $v0, 0x45($s3)
/* 74EACE8 8008EFB8 4600A292 */  lbu        $v0, 0x46($s5)
.Llevel_34_8008EFBC:
/* 74EACEC 8008EFBC 00000000 */  nop
/* 74EACF0 8008EFC0 460062A2 */  sb         $v0, 0x46($s3)
/* 74EACF4 8008EFC4 5C00228E */  lw         $v0, 0x5C($s1)
/* 74EACF8 8008EFC8 21206002 */  addu       $a0, $s3, $zero
/* 74EACFC 8008EFCC 0957010C */  jal        func_80055C24
/* 74EAD00 8008EFD0 140042AE */   sw        $v0, 0x14($s2)
/* 74EAD04 8008EFD4 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EAD08 8008EFD8 480060A2 */   sb        $zero, 0x48($s3)
.Llevel_34_8008EFDC:
/* 74EAD0C 8008EFDC 10000324 */  addiu      $v1, $zero, 0x10
/* 74EAD10 8008EFE0 36006286 */  lh         $v0, 0x36($s3)
/* 74EAD14 8008EFE4 0000718E */  lw         $s1, 0x0($s3)
/* 74EAD18 8008EFE8 19004314 */  bne        $v0, $v1, .Llevel_34_8008F050
/* 74EAD1C 8008EFEC 0C007026 */   addiu     $s0, $s3, 0xC
/* 74EAD20 8008EFF0 0780043C */  lui        $a0, %hi(D_8006C784)
/* 74EAD24 8008EFF4 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 74EAD28 8008EFF8 00000000 */  nop
/* 74EAD2C 8008EFFC 04008228 */  slti       $v0, $a0, 0x4
/* 74EAD30 8008F000 03004010 */  beqz       $v0, .Llevel_34_8008F010
/* 74EAD34 8008F004 0A000324 */   addiu     $v1, $zero, 0xA
/* 74EAD38 8008F008 083C0208 */  j          .Llevel_34_8008F020
/* 74EAD3C 8008F00C 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_34_8008F010:
/* 74EAD40 8008F010 07008228 */  slti       $v0, $a0, 0x7
/* 74EAD44 8008F014 02004010 */  beqz       $v0, .Llevel_34_8008F020
/* 74EAD48 8008F018 00000000 */   nop
/* 74EAD4C 8008F01C 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_34_8008F020:
/* 74EAD50 8008F020 0680043C */  lui        $a0, %hi(D_8006582C)
/* 74EAD54 8008F024 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 74EAD58 8008F028 0000828C */  lw         $v0, 0x0($a0)
/* 74EAD5C 8008F02C 00000000 */  nop
/* 74EAD60 8008F030 01004224 */  addiu      $v0, $v0, 0x1
/* 74EAD64 8008F034 000082AC */  sw         $v0, 0x0($a0)
/* 74EAD68 8008F038 2A104300 */  slt        $v0, $v0, $v1
/* 74EAD6C 8008F03C 04004014 */  bnez       $v0, .Llevel_34_8008F050
/* 74EAD70 8008F040 0C007026 */   addiu     $s0, $s3, 0xC
/* 74EAD74 8008F044 D3000224 */  addiu      $v0, $zero, 0xD3
/* 74EAD78 8008F048 000080AC */  sw         $zero, 0x0($a0)
/* 74EAD7C 8008F04C 360062A6 */  sh         $v0, 0x36($s3)
.Llevel_34_8008F050:
/* 74EAD80 8008F050 21200002 */  addu       $a0, $s0, $zero
/* 74EAD84 8008F054 5E3C010C */  jal        func_8004F178
/* 74EAD88 8008F058 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EAD8C 8008F05C 0957010C */  jal        func_80055C24
/* 74EAD90 8008F060 21206002 */   addu      $a0, $s3, $zero
/* 74EAD94 8008F064 21202002 */  addu       $a0, $s1, $zero
/* 74EAD98 8008F068 1400628E */  lw         $v0, 0x14($s3)
/* 74EAD9C 8008F06C 21280002 */  addu       $a1, $s0, $zero
/* 74EADA0 8008F070 00024224 */  addiu      $v0, $v0, 0x200
/* 74EADA4 8008F074 5E3C010C */  jal        func_8004F178
/* 74EADA8 8008F078 140062AE */   sw        $v0, 0x14($s3)
/* 74EADAC 8008F07C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 74EADB0 8008F080 1C0062AE */  sw         $v0, 0x1C($s3)
/* 74EADB4 8008F084 02000224 */  addiu      $v0, $zero, 0x2
/* 74EADB8 8008F088 470062A2 */  sb         $v0, 0x47($s3)
/* 74EADBC 8008F08C 08070224 */  addiu      $v0, $zero, 0x708
/* 74EADC0 8008F090 0E0022A6 */  sh         $v0, 0xE($s1)
/* 74EADC4 8008F094 9171010C */  jal        rand
/* 74EADC8 8008F098 110020A2 */   sb        $zero, 0x11($s1)
/* 74EADCC 8008F09C FC004230 */  andi       $v0, $v0, 0xFC
/* 74EADD0 8008F0A0 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EADD4 8008F0A4 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_34_8008F0A8:
/* 74EADD8 8008F0A8 3600A286 */  lh         $v0, 0x36($s5)
/* 74EADDC 8008F0AC 00000000 */  nop
/* 74EADE0 8008F0B0 06005110 */  beq        $v0, $s1, .Llevel_34_8008F0CC
/* 74EADE4 8008F0B4 21280000 */   addu      $a1, $zero, $zero
/* 74EADE8 8008F0B8 0780043C */  lui        $a0, %hi(D_8006E394)
/* 74EADEC 8008F0BC 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 74EADF0 8008F0C0 000064AE */  sw         $a0, 0x0($s3)
/* 74EADF4 8008F0C4 E439010C */  jal        func_8004E790
/* 74EADF8 8008F0C8 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_34_8008F0CC:
/* 74EADFC 8008F0CC 0000708E */  lw         $s0, 0x0($s3)
/* 74EAE00 8008F0D0 0957010C */  jal        func_80055C24
/* 74EAE04 8008F0D4 21206002 */   addu      $a0, $s3, $zero
/* 74EAE08 8008F0D8 78000224 */  addiu      $v0, $zero, 0x78
/* 74EAE0C 8008F0DC 490060A2 */  sb         $zero, 0x49($s3)
/* 74EAE10 8008F0E0 000000A6 */  sh         $zero, 0x0($s0)
/* 74EAE14 8008F0E4 080000A6 */  sh         $zero, 0x8($s0)
/* 74EAE18 8008F0E8 060000A6 */  sh         $zero, 0x6($s0)
/* 74EAE1C 8008F0EC 040000A6 */  sh         $zero, 0x4($s0)
/* 74EAE20 8008F0F0 0D0002A2 */  sb         $v0, 0xD($s0)
/* 74EAE24 8008F0F4 100000AE */  sw         $zero, 0x10($s0)
/* 74EAE28 8008F0F8 0600A012 */  beqz       $s5, .Llevel_34_8008F114
/* 74EAE2C 8008F0FC 140000AE */   sw        $zero, 0x14($s0)
/* 74EAE30 8008F100 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EAE34 8008F104 5E3C010C */  jal        func_8004F178
/* 74EAE38 8008F108 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EAE3C 8008F10C 643C0208 */  j          .Llevel_34_8008F190
/* 74EAE40 8008F110 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_34_8008F114:
/* 74EAE44 8008F114 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EAE48 8008F118 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 74EAE4C 8008F11C 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 74EAE50 8008F120 0000A390 */  lbu        $v1, 0x0($a1)
/* 74EAE54 8008F124 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 74EAE58 8008F128 80FF6324 */  addiu      $v1, $v1, -0x80
/* 74EAE5C 8008F12C FF006330 */  andi       $v1, $v1, 0xFF
/* 74EAE60 8008F130 40180300 */  sll        $v1, $v1, 1
/* 74EAE64 8008F134 0680013C */  lui        $at, %hi(D_80065920)
/* 74EAE68 8008F138 21082300 */  addu       $at, $at, $v1
/* 74EAE6C 8008F13C 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 74EAE70 8008F140 2000A627 */  addiu      $a2, $sp, 0x20
/* 74EAE74 8008F144 40110700 */  sll        $v0, $a3, 5
/* 74EAE78 8008F148 23104700 */  subu       $v0, $v0, $a3
/* 74EAE7C 8008F14C 80100200 */  sll        $v0, $v0, 2
/* 74EAE80 8008F150 21104700 */  addu       $v0, $v0, $a3
/* 74EAE84 8008F154 43120200 */  sra        $v0, $v0, 9
/* 74EAE88 8008F158 2000A2AF */  sw         $v0, 0x20($sp)
/* 74EAE8C 8008F15C 0680013C */  lui        $at, %hi(D_800658A0)
/* 74EAE90 8008F160 21082300 */  addu       $at, $at, $v1
/* 74EAE94 8008F164 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 74EAE98 8008F168 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 74EAE9C 8008F16C 2800A2AF */  sw         $v0, 0x28($sp)
/* 74EAEA0 8008F170 40110300 */  sll        $v0, $v1, 5
/* 74EAEA4 8008F174 23104300 */  subu       $v0, $v0, $v1
/* 74EAEA8 8008F178 80100200 */  sll        $v0, $v0, 2
/* 74EAEAC 8008F17C 21104300 */  addu       $v0, $v0, $v1
/* 74EAEB0 8008F180 43120200 */  sra        $v0, $v0, 9
/* 74EAEB4 8008F184 653C010C */  jal        func_8004F194
/* 74EAEB8 8008F188 2400A2AF */   sw        $v0, 0x24($sp)
/* 74EAEBC 8008F18C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_34_8008F190:
/* 74EAEC0 8008F190 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EAEC4 8008F194 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_34_8008F198:
/* 74EAEC8 8008F198 4600A292 */  lbu        $v0, 0x46($s5)
/* 74EAECC 8008F19C 0C00A526 */  addiu      $a1, $s5, 0xC
/* 74EAED0 8008F1A0 5E3C010C */  jal        func_8004F178
/* 74EAED4 8008F1A4 460062A2 */   sb        $v0, 0x46($s3)
/* 74EAED8 8008F1A8 0957010C */  jal        func_80055C24
/* 74EAEDC 8008F1AC 21206002 */   addu      $a0, $s3, $zero
/* 74EAEE0 8008F1B0 4ED7000C */  jal        func_80035D38
/* 74EAEE4 8008F1B4 21206002 */   addu      $a0, $s3, $zero
/* 74EAEE8 8008F1B8 02004010 */  beqz       $v0, .Llevel_34_8008F1C4
/* 74EAEEC 8008F1BC 00000000 */   nop
/* 74EAEF0 8008F1C0 140062AE */  sw         $v0, 0x14($s3)
.Llevel_34_8008F1C4:
/* 74EAEF4 8008F1C4 06000224 */  addiu      $v0, $zero, 0x6
/* 74EAEF8 8008F1C8 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EAEFC 8008F1CC 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_34_8008F1D0:
/* 74EAF00 8008F1D0 0957010C */  jal        func_80055C24
/* 74EAF04 8008F1D4 21206002 */   addu      $a0, $s3, $zero
/* 74EAF08 8008F1D8 02000224 */  addiu      $v0, $zero, 0x2
/* 74EAF0C 8008F1DC 0E00A012 */  beqz       $s5, .Llevel_34_8008F218
/* 74EAF10 8008F1E0 540062A2 */   sb        $v0, 0x54($s3)
/* 74EAF14 8008F1E4 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EAF18 8008F1E8 0000628E */  lw         $v0, 0x0($s3)
/* 74EAF1C 8008F1EC 0C00A526 */  addiu      $a1, $s5, 0xC
/* 74EAF20 8008F1F0 5E3C010C */  jal        func_8004F178
/* 74EAF24 8008F1F4 000055AC */   sw        $s5, 0x0($v0)
/* 74EAF28 8008F1F8 0A000224 */  addiu      $v0, $zero, 0xA
/* 74EAF2C 8008F1FC 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 74EAF30 8008F200 1400628E */  lw         $v0, 0x14($s3)
/* 74EAF34 8008F204 08000324 */  addiu      $v1, $zero, 0x8
/* 74EAF38 8008F208 4C0063A2 */  sb         $v1, 0x4C($s3)
/* 74EAF3C 8008F20C 00044224 */  addiu      $v0, $v0, 0x400
/* 74EAF40 8008F210 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EAF44 8008F214 140062AE */   sw        $v0, 0x14($s3)
.Llevel_34_8008F218:
/* 74EAF48 8008F218 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 74EAF4C 8008F21C A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EAF50 8008F220 1C0062AE */   sw        $v0, 0x1C($s3)
.Llevel_34_8008F224:
/* 74EAF54 8008F224 0780053C */  lui        $a1, %hi(D_80070328)
/* 74EAF58 8008F228 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 74EAF5C 8008F22C 0000708E */  lw         $s0, 0x0($s3)
/* 74EAF60 8008F230 5E3C010C */  jal        func_8004F178
/* 74EAF64 8008F234 0C006426 */   addiu     $a0, $s3, 0xC
/* 74EAF68 8008F238 1400628E */  lw         $v0, 0x14($s3)
/* 74EAF6C 8008F23C 00000000 */  nop
/* 74EAF70 8008F240 00044224 */  addiu      $v0, $v0, 0x400
/* 74EAF74 8008F244 140062AE */  sw         $v0, 0x14($s3)
/* 74EAF78 8008F248 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 74EAF7C 8008F24C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 74EAF80 8008F250 21206002 */  addu       $a0, $s3, $zero
/* 74EAF84 8008F254 0957010C */  jal        func_80055C24
/* 74EAF88 8008F258 460062A2 */   sb        $v0, 0x46($s3)
/* 74EAF8C 8008F25C 02000224 */  addiu      $v0, $zero, 0x2
/* 74EAF90 8008F260 020002A2 */  sb         $v0, 0x2($s0)
/* 74EAF94 8008F264 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 74EAF98 8008F268 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 74EAF9C 8008F26C 00000000 */  nop
/* 74EAFA0 8008F270 030002A2 */  sb         $v0, 0x3($s0)
/* 74EAFA4 8008F274 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 74EAFA8 8008F278 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 74EAFAC 8008F27C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 74EAFB0 8008F280 100002AE */  sw         $v0, 0x10($s0)
/* 74EAFB4 8008F284 040003A2 */  sb         $v1, 0x4($s0)
/* 74EAFB8 8008F288 410060A2 */  sb         $zero, 0x41($s3)
/* 74EAFBC 8008F28C 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 74EAFC0 8008F290 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EAFC4 8008F294 4D0060A2 */   sb        $zero, 0x4D($s3)
.Llevel_34_8008F298:
/* 74EAFC8 8008F298 0C00A526 */  addiu      $a1, $s5, 0xC
/* 74EAFCC 8008F29C 0000748E */  lw         $s4, 0x0($s3)
/* 74EAFD0 8008F2A0 20000224 */  addiu      $v0, $zero, 0x20
/* 74EAFD4 8008F2A4 5E3C010C */  jal        func_8004F178
/* 74EAFD8 8008F2A8 4C0062A2 */   sb        $v0, 0x4C($s3)
/* 74EAFDC 8008F2AC 0957010C */  jal        func_80055C24
/* 74EAFE0 8008F2B0 21206002 */   addu      $a0, $s3, $zero
/* 74EAFE4 8008F2B4 9171010C */  jal        rand
/* 74EAFE8 8008F2B8 00000000 */   nop
/* 74EAFEC 8008F2BC 9171010C */  jal        rand
/* 74EAFF0 8008F2C0 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 74EAFF4 8008F2C4 FF075130 */  andi       $s1, $v0, 0x7FF
/* 74EAFF8 8008F2C8 8B3A010C */  jal        func_8004EA2C
/* 74EAFFC 8008F2CC 21202002 */   addu      $a0, $s1, $zero
/* 74EB000 8008F2D0 21204002 */  addu       $a0, $s2, $zero
/* 74EB004 8008F2D4 8B3A010C */  jal        func_8004EA2C
/* 74EB008 8008F2D8 21804000 */   addu      $s0, $v0, $zero
/* 74EB00C 8008F2DC 18000202 */  mult       $s0, $v0
/* 74EB010 8008F2E0 12400000 */  mflo       $t0
/* 74EB014 8008F2E4 4900A292 */  lbu        $v0, 0x49($s5)
/* 74EB018 8008F2E8 00000000 */  nop
/* 74EB01C 8008F2EC 18000201 */  mult       $t0, $v0
/* 74EB020 8008F2F0 21202002 */  addu       $a0, $s1, $zero
/* 74EB024 8008F2F4 12400000 */  mflo       $t0
/* 74EB028 8008F2F8 03160800 */  sra        $v0, $t0, 24
/* 74EB02C 8008F2FC 8B3A010C */  jal        func_8004EA2C
/* 74EB030 8008F300 000082A6 */   sh        $v0, 0x0($s4)
/* 74EB034 8008F304 21204002 */  addu       $a0, $s2, $zero
/* 74EB038 8008F308 793A010C */  jal        func_8004E9E4
/* 74EB03C 8008F30C 21804000 */   addu      $s0, $v0, $zero
/* 74EB040 8008F310 18000202 */  mult       $s0, $v0
/* 74EB044 8008F314 12400000 */  mflo       $t0
/* 74EB048 8008F318 4900A292 */  lbu        $v0, 0x49($s5)
/* 74EB04C 8008F31C 00000000 */  nop
/* 74EB050 8008F320 18000201 */  mult       $t0, $v0
/* 74EB054 8008F324 21202002 */  addu       $a0, $s1, $zero
/* 74EB058 8008F328 12400000 */  mflo       $t0
/* 74EB05C 8008F32C 03160800 */  sra        $v0, $t0, 24
/* 74EB060 8008F330 793A010C */  jal        func_8004E9E4
/* 74EB064 8008F334 020082A6 */   sh        $v0, 0x2($s4)
/* 74EB068 8008F338 4900A392 */  lbu        $v1, 0x49($s5)
/* 74EB06C 8008F33C 00000000 */  nop
/* 74EB070 8008F340 18004300 */  mult       $v0, $v1
/* 74EB074 8008F344 12400000 */  mflo       $t0
/* 74EB078 8008F348 03130800 */  sra        $v0, $t0, 12
/* 74EB07C 8008F34C 040082A6 */  sh         $v0, 0x4($s4)
/* 74EB080 8008F350 1800A38E */  lw         $v1, 0x18($s5)
/* 74EB084 8008F354 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 74EB088 8008F358 24106200 */  and        $v0, $v1, $v0
/* 74EB08C 8008F35C 2C004010 */  beqz       $v0, .Llevel_34_8008F410
/* 74EB090 8008F360 21300000 */   addu      $a2, $zero, $zero
/* 74EB094 8008F364 0780103C */  lui        $s0, %hi(D_80070328)
/* 74EB098 8008F368 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 74EB09C 8008F36C 0C00638E */  lw         $v1, 0xC($s3)
/* 74EB0A0 8008F370 0000048E */  lw         $a0, 0x0($s0)
/* 74EB0A4 8008F374 1000628E */  lw         $v0, 0x10($s3)
/* 74EB0A8 8008F378 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 74EB0AC 8008F37C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 74EB0B0 8008F380 23206400 */  subu       $a0, $v1, $a0
/* 74EB0B4 8008F384 203A010C */  jal        func_8004E880
/* 74EB0B8 8008F388 23284500 */   subu      $a1, $v0, $a1
/* 74EB0BC 8008F38C 40100200 */  sll        $v0, $v0, 1
/* 74EB0C0 8008F390 21300000 */  addu       $a2, $zero, $zero
/* 74EB0C4 8008F394 0680013C */  lui        $at, %hi(D_80065920)
/* 74EB0C8 8008F398 21082200 */  addu       $at, $at, $v0
/* 74EB0CC 8008F39C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 74EB0D0 8008F3A0 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 74EB0D4 8008F3A4 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 74EB0D8 8008F3A8 03110200 */  sra        $v0, $v0, 4
/* 74EB0DC 8008F3AC 2000A2AF */  sw         $v0, 0x20($sp)
/* 74EB0E0 8008F3B0 0C00638E */  lw         $v1, 0xC($s3)
/* 74EB0E4 8008F3B4 0000048E */  lw         $a0, 0x0($s0)
/* 74EB0E8 8008F3B8 1000628E */  lw         $v0, 0x10($s3)
/* 74EB0EC 8008F3BC 23206400 */  subu       $a0, $v1, $a0
/* 74EB0F0 8008F3C0 203A010C */  jal        func_8004E880
/* 74EB0F4 8008F3C4 23284500 */   subu      $a1, $v0, $a1
/* 74EB0F8 8008F3C8 40100200 */  sll        $v0, $v0, 1
/* 74EB0FC 8008F3CC 0680013C */  lui        $at, %hi(D_800658A0)
/* 74EB100 8008F3D0 21082200 */  addu       $at, $at, $v0
/* 74EB104 8008F3D4 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 74EB108 8008F3D8 2000A38F */  lw         $v1, 0x20($sp)
/* 74EB10C 8008F3DC 2800A0AF */  sw         $zero, 0x28($sp)
/* 74EB110 8008F3E0 03110200 */  sra        $v0, $v0, 4
/* 74EB114 8008F3E4 2400A2AF */  sw         $v0, 0x24($sp)
/* 74EB118 8008F3E8 00008296 */  lhu        $v0, 0x0($s4)
/* 74EB11C 8008F3EC 00000000 */  nop
/* 74EB120 8008F3F0 21104300 */  addu       $v0, $v0, $v1
/* 74EB124 8008F3F4 000082A6 */  sh         $v0, 0x0($s4)
/* 74EB128 8008F3F8 2400A38F */  lw         $v1, 0x24($sp)
/* 74EB12C 8008F3FC 02008296 */  lhu        $v0, 0x2($s4)
/* 74EB130 8008F400 00000000 */  nop
/* 74EB134 8008F404 21104300 */  addu       $v0, $v0, $v1
/* 74EB138 8008F408 1B3D0208 */  j          .Llevel_34_8008F46C
/* 74EB13C 8008F40C 020082A6 */   sh        $v0, 0x2($s4)
.Llevel_34_8008F410:
/* 74EB140 8008F410 0200023C */  lui        $v0, (0x20000 >> 16)
/* 74EB144 8008F414 24106200 */  and        $v0, $v1, $v0
/* 74EB148 8008F418 14004010 */  beqz       $v0, .Llevel_34_8008F46C
/* 74EB14C 8008F41C 04000224 */   addiu     $v0, $zero, 0x4
/* 74EB150 8008F420 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 74EB154 8008F424 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 74EB158 8008F428 00000000 */  nop
/* 74EB15C 8008F42C 03006210 */  beq        $v1, $v0, .Llevel_34_8008F43C
/* 74EB160 8008F430 0C000224 */   addiu     $v0, $zero, 0xC
/* 74EB164 8008F434 0D006214 */  bne        $v1, $v0, .Llevel_34_8008F46C
/* 74EB168 8008F438 00000000 */   nop
.Llevel_34_8008F43C:
/* 74EB16C 8008F43C 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 74EB170 8008F440 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 74EB174 8008F444 00008396 */  lhu        $v1, 0x0($s4)
/* 74EB178 8008F448 83110200 */  sra        $v0, $v0, 6
/* 74EB17C 8008F44C 21186200 */  addu       $v1, $v1, $v0
/* 74EB180 8008F450 000083A6 */  sh         $v1, 0x0($s4)
/* 74EB184 8008F454 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 74EB188 8008F458 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 74EB18C 8008F45C 02008396 */  lhu        $v1, 0x2($s4)
/* 74EB190 8008F460 83110200 */  sra        $v0, $v0, 6
/* 74EB194 8008F464 21186200 */  addu       $v1, $v1, $v0
/* 74EB198 8008F468 020083A6 */  sh         $v1, 0x2($s4)
.Llevel_34_8008F46C:
/* 74EB19C 8008F46C 5100A492 */  lbu        $a0, 0x51($s5)
/* 74EB1A0 8008F470 00000000 */  nop
/* 74EB1A4 8008F474 26008010 */  beqz       $a0, .Llevel_34_8008F510
/* 74EB1A8 8008F478 1000033C */   lui       $v1, (0x100000 >> 16)
/* 74EB1AC 8008F47C 1800A28E */  lw         $v0, 0x18($s5)
/* 74EB1B0 8008F480 00000000 */  nop
/* 74EB1B4 8008F484 24104300 */  and        $v0, $v0, $v1
/* 74EB1B8 8008F488 21004010 */  beqz       $v0, .Llevel_34_8008F510
/* 74EB1BC 8008F48C 40100400 */   sll       $v0, $a0, 1
/* 74EB1C0 8008F490 0680013C */  lui        $at, %hi(D_80065920)
/* 74EB1C4 8008F494 21082200 */  addu       $at, $at, $v0
/* 74EB1C8 8008F498 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 74EB1CC 8008F49C 00000000 */  nop
/* 74EB1D0 8008F4A0 80100300 */  sll        $v0, $v1, 2
/* 74EB1D4 8008F4A4 21104300 */  addu       $v0, $v0, $v1
/* 74EB1D8 8008F4A8 00190200 */  sll        $v1, $v0, 4
/* 74EB1DC 8008F4AC 23186200 */  subu       $v1, $v1, $v0
/* 74EB1E0 8008F4B0 00008296 */  lhu        $v0, 0x0($s4)
/* 74EB1E4 8008F4B4 C31A0300 */  sra        $v1, $v1, 11
/* 74EB1E8 8008F4B8 21104300 */  addu       $v0, $v0, $v1
/* 74EB1EC 8008F4BC 000082A6 */  sh         $v0, 0x0($s4)
/* 74EB1F0 8008F4C0 5100A292 */  lbu        $v0, 0x51($s5)
/* 74EB1F4 8008F4C4 28000424 */  addiu      $a0, $zero, 0x28
/* 74EB1F8 8008F4C8 40100200 */  sll        $v0, $v0, 1
/* 74EB1FC 8008F4CC 0680013C */  lui        $at, %hi(D_800658A0)
/* 74EB200 8008F4D0 21082200 */  addu       $at, $at, $v0
/* 74EB204 8008F4D4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 74EB208 8008F4D8 46000524 */  addiu      $a1, $zero, 0x46
/* 74EB20C 8008F4DC 80100300 */  sll        $v0, $v1, 2
/* 74EB210 8008F4E0 21104300 */  addu       $v0, $v0, $v1
/* 74EB214 8008F4E4 00190200 */  sll        $v1, $v0, 4
/* 74EB218 8008F4E8 23186200 */  subu       $v1, $v1, $v0
/* 74EB21C 8008F4EC 02008296 */  lhu        $v0, 0x2($s4)
/* 74EB220 8008F4F0 C31A0300 */  sra        $v1, $v1, 11
/* 74EB224 8008F4F4 21104300 */  addu       $v0, $v0, $v1
/* 74EB228 8008F4F8 DBD8000C */  jal        func_8003636C
/* 74EB22C 8008F4FC 020082A6 */   sh        $v0, 0x2($s4)
/* 74EB230 8008F500 04008396 */  lhu        $v1, 0x4($s4)
/* 74EB234 8008F504 00000000 */  nop
/* 74EB238 8008F508 21186200 */  addu       $v1, $v1, $v0
/* 74EB23C 8008F50C 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_34_8008F510:
/* 74EB240 8008F510 00008286 */  lh         $v0, 0x0($s4)
/* 74EB244 8008F514 0C00638E */  lw         $v1, 0xC($s3)
/* 74EB248 8008F518 80100200 */  sll        $v0, $v0, 2
/* 74EB24C 8008F51C 21186200 */  addu       $v1, $v1, $v0
/* 74EB250 8008F520 0C0063AE */  sw         $v1, 0xC($s3)
/* 74EB254 8008F524 02008286 */  lh         $v0, 0x2($s4)
/* 74EB258 8008F528 1000638E */  lw         $v1, 0x10($s3)
/* 74EB25C 8008F52C 80100200 */  sll        $v0, $v0, 2
/* 74EB260 8008F530 21186200 */  addu       $v1, $v1, $v0
/* 74EB264 8008F534 100063AE */  sw         $v1, 0x10($s3)
/* 74EB268 8008F538 04008286 */  lh         $v0, 0x4($s4)
/* 74EB26C 8008F53C 1400638E */  lw         $v1, 0x14($s3)
/* 74EB270 8008F540 80100200 */  sll        $v0, $v0, 2
/* 74EB274 8008F544 21186200 */  addu       $v1, $v1, $v0
/* 74EB278 8008F548 9171010C */  jal        rand
/* 74EB27C 8008F54C 140063AE */   sw        $v1, 0x14($s3)
/* 74EB280 8008F550 9171010C */  jal        rand
/* 74EB284 8008F554 450062A2 */   sb        $v0, 0x45($s3)
/* 74EB288 8008F558 9171010C */  jal        rand
/* 74EB28C 8008F55C 460062A2 */   sb        $v0, 0x46($s3)
/* 74EB290 8008F560 1F004230 */  andi       $v0, $v0, 0x1F
/* 74EB294 8008F564 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 74EB298 8008F568 9171010C */  jal        rand
/* 74EB29C 8008F56C 060082A6 */   sh        $v0, 0x6($s4)
/* 74EB2A0 8008F570 1F004230 */  andi       $v0, $v0, 0x1F
/* 74EB2A4 8008F574 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 74EB2A8 8008F578 9171010C */  jal        rand
/* 74EB2AC 8008F57C 080082A6 */   sh        $v0, 0x8($s4)
/* 74EB2B0 8008F580 32000424 */  addiu      $a0, $zero, 0x32
/* 74EB2B4 8008F584 1F004230 */  andi       $v0, $v0, 0x1F
/* 74EB2B8 8008F588 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 74EB2BC 8008F58C 0A0082A6 */  sh         $v0, 0xA($s4)
/* 74EB2C0 8008F590 1400A28E */  lw         $v0, 0x14($s5)
/* 74EB2C4 8008F594 50000524 */  addiu      $a1, $zero, 0x50
/* 74EB2C8 8008F598 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 74EB2CC 8008F59C DBD8000C */  jal        func_8003636C
/* 74EB2D0 8008F5A0 100082AE */   sw        $v0, 0x10($s4)
/* 74EB2D4 8008F5A4 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EB2D8 8008F5A8 0C0082AE */   sw        $v0, 0xC($s4)
.Llevel_34_8008F5AC:
/* 74EB2DC 8008F5AC 0000708E */  lw         $s0, 0x0($s3)
/* 74EB2E0 8008F5B0 5E3C010C */  jal        func_8004F178
/* 74EB2E4 8008F5B4 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EB2E8 8008F5B8 0957010C */  jal        func_80055C24
/* 74EB2EC 8008F5BC 21206002 */   addu      $a0, $s3, $zero
/* 74EB2F0 8008F5C0 10000224 */  addiu      $v0, $zero, 0x10
/* 74EB2F4 8008F5C4 3B000324 */  addiu      $v1, $zero, 0x3B
/* 74EB2F8 8008F5C8 000002A6 */  sh         $v0, 0x0($s0)
/* 74EB2FC 8008F5CC 80000224 */  addiu      $v0, $zero, 0x80
/* 74EB300 8008F5D0 570063A2 */  sb         $v1, 0x57($s3)
/* 74EB304 8008F5D4 540062A2 */  sb         $v0, 0x54($s3)
/* 74EB308 8008F5D8 550062A2 */  sb         $v0, 0x55($s3)
/* 74EB30C 8008F5DC 560060A2 */  sb         $zero, 0x56($s3)
/* 74EB310 8008F5E0 3600A486 */  lh         $a0, 0x36($s5)
/* 74EB314 8008F5E4 98010224 */  addiu      $v0, $zero, 0x198
/* 74EB318 8008F5E8 04008210 */  beq        $a0, $v0, .Llevel_34_8008F5FC
/* 74EB31C 8008F5EC 01000224 */   addiu     $v0, $zero, 0x1
/* 74EB320 8008F5F0 C2020224 */  addiu      $v0, $zero, 0x2C2
/* 74EB324 8008F5F4 05008214 */  bne        $a0, $v0, .Llevel_34_8008F60C
/* 74EB328 8008F5F8 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_34_8008F5FC:
/* 74EB32C 8008F5FC 020002A2 */  sb         $v0, 0x2($s0)
/* 74EB330 8008F600 030002A2 */  sb         $v0, 0x3($s0)
/* 74EB334 8008F604 913D0208 */  j          .Llevel_34_8008F644
/* 74EB338 8008F608 7F000224 */   addiu     $v0, $zero, 0x7F
.Llevel_34_8008F60C:
/* 74EB33C 8008F60C 70020224 */  addiu      $v0, $zero, 0x270
/* 74EB340 8008F610 0A008214 */  bne        $a0, $v0, .Llevel_34_8008F63C
/* 74EB344 8008F614 60000224 */   addiu     $v0, $zero, 0x60
/* 74EB348 8008F618 02000224 */  addiu      $v0, $zero, 0x2
/* 74EB34C 8008F61C 020002A2 */  sb         $v0, 0x2($s0)
/* 74EB350 8008F620 E0000224 */  addiu      $v0, $zero, 0xE0
/* 74EB354 8008F624 540062A2 */  sb         $v0, 0x54($s3)
/* 74EB358 8008F628 550062A2 */  sb         $v0, 0x55($s3)
/* 74EB35C 8008F62C 560062A2 */  sb         $v0, 0x56($s3)
/* 74EB360 8008F630 60000224 */  addiu      $v0, $zero, 0x60
/* 74EB364 8008F634 903D0208 */  j          .Llevel_34_8008F640
/* 74EB368 8008F638 570063A2 */   sb        $v1, 0x57($s3)
.Llevel_34_8008F63C:
/* 74EB36C 8008F63C 020000A2 */  sb         $zero, 0x2($s0)
.Llevel_34_8008F640:
/* 74EB370 8008F640 030000A2 */  sb         $zero, 0x3($s0)
.Llevel_34_8008F644:
/* 74EB374 8008F644 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 74EB378 8008F648 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EB37C 8008F64C 0780103C */  lui        $s0, %hi(D_8006E020)
/* 74EB380 8008F650 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 74EB384 8008F654 21280002 */  addu       $a1, $s0, $zero
/* 74EB388 8008F658 FE000224 */  addiu      $v0, $zero, 0xFE
/* 74EB38C 8008F65C CD3C010C */  jal        func_8004F334
/* 74EB390 8008F660 470062A2 */   sb        $v0, 0x47($s3)
/* 74EB394 8008F664 21204000 */  addu       $a0, $v0, $zero
/* 74EB398 8008F668 0780023C */  lui        $v0, %hi(D_8006E028)
/* 74EB39C 8008F66C 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 74EB3A0 8008F670 1400658E */  lw         $a1, 0x14($s3)
/* 74EB3A4 8008F674 21300000 */  addu       $a2, $zero, $zero
/* 74EB3A8 8008F678 203A010C */  jal        func_8004E880
/* 74EB3AC 8008F67C 23284500 */   subu      $a1, $v0, $a1
/* 74EB3B0 8008F680 21300000 */  addu       $a2, $zero, $zero
/* 74EB3B4 8008F684 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 74EB3B8 8008F688 450062A2 */  sb         $v0, 0x45($s3)
/* 74EB3BC 8008F68C 0000038E */  lw         $v1, 0x0($s0)
/* 74EB3C0 8008F690 0C00648E */  lw         $a0, 0xC($s3)
/* 74EB3C4 8008F694 0780023C */  lui        $v0, %hi(D_8006E024)
/* 74EB3C8 8008F698 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 74EB3CC 8008F69C 1000658E */  lw         $a1, 0x10($s3)
/* 74EB3D0 8008F6A0 23206400 */  subu       $a0, $v1, $a0
/* 74EB3D4 8008F6A4 203A010C */  jal        func_8004E880
/* 74EB3D8 8008F6A8 23284500 */   subu      $a1, $v0, $a1
/* 74EB3DC 8008F6AC A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EB3E0 8008F6B0 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_34_8008F6B4:
/* 74EB3E4 8008F6B4 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EB3E8 8008F6B8 0000708E */  lw         $s0, 0x0($s3)
/* 74EB3EC 8008F6BC 5E3C010C */  jal        func_8004F178
/* 74EB3F0 8008F6C0 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EB3F4 8008F6C4 0957010C */  jal        func_80055C24
/* 74EB3F8 8008F6C8 21206002 */   addu      $a0, $s3, $zero
/* 74EB3FC 8008F6CC 10000224 */  addiu      $v0, $zero, 0x10
/* 74EB400 8008F6D0 000002AE */  sw         $v0, 0x0($s0)
/* 74EB404 8008F6D4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 74EB408 8008F6D8 570062A2 */  sb         $v0, 0x57($s3)
/* 74EB40C 8008F6DC 80000224 */  addiu      $v0, $zero, 0x80
/* 74EB410 8008F6E0 540062A2 */  sb         $v0, 0x54($s3)
/* 74EB414 8008F6E4 40000224 */  addiu      $v0, $zero, 0x40
/* 74EB418 8008F6E8 550062A2 */  sb         $v0, 0x55($s3)
/* 74EB41C 8008F6EC 9171010C */  jal        rand
/* 74EB420 8008F6F0 560060A2 */   sb        $zero, 0x56($s3)
/* 74EB424 8008F6F4 9171010C */  jal        rand
/* 74EB428 8008F6F8 450062A2 */   sb        $v0, 0x45($s3)
/* 74EB42C 8008F6FC 460062A2 */  sb         $v0, 0x46($s3)
/* 74EB430 8008F700 46000224 */  addiu      $v0, $zero, 0x46
/* 74EB434 8008F704 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 74EB438 8008F708 04000224 */  addiu      $v0, $zero, 0x4
/* 74EB43C 8008F70C A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EB440 8008F710 470062A2 */   sb        $v0, 0x47($s3)
.Llevel_34_8008F714:
/* 74EB444 8008F714 0000728E */  lw         $s2, 0x0($s3)
/* 74EB448 8008F718 0957010C */  jal        func_80055C24
/* 74EB44C 8008F71C 21206002 */   addu      $a0, $s3, $zero
/* 74EB450 8008F720 40000224 */  addiu      $v0, $zero, 0x40
/* 74EB454 8008F724 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 74EB458 8008F728 AA00A016 */  bnez       $s5, .Llevel_34_8008F9D4
/* 74EB45C 8008F72C 4E0062A2 */   sb        $v0, 0x4E($s3)
/* 74EB460 8008F730 B8010224 */  addiu      $v0, $zero, 0x1B8
/* 74EB464 8008F734 0780053C */  lui        $a1, %hi(D_8006E044)
/* 74EB468 8008F738 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 74EB46C 8008F73C 2000A2AF */  sw         $v0, 0x20($sp)
/* 74EB470 8008F740 2400A0AF */  sw         $zero, 0x24($sp)
/* 74EB474 8008F744 2800A0AF */  sw         $zero, 0x28($sp)
/* 74EB478 8008F748 0000A38C */  lw         $v1, 0x0($a1)
/* 74EB47C 8008F74C 07000224 */  addiu      $v0, $zero, 0x7
/* 74EB480 8008F750 2A006214 */  bne        $v1, $v0, .Llevel_34_8008F7FC
/* 74EB484 8008F754 03000224 */   addiu     $v0, $zero, 0x3
/* 74EB488 8008F758 0780033C */  lui        $v1, %hi(D_8006E048)
/* 74EB48C 8008F75C 48E0638C */  lw         $v1, %lo(D_8006E048)($v1)
/* 74EB490 8008F760 00000000 */  nop
/* 74EB494 8008F764 25006214 */  bne        $v1, $v0, .Llevel_34_8008F7FC
/* 74EB498 8008F768 0C007126 */   addiu     $s1, $s3, 0xC
/* 74EB49C 8008F76C 21202002 */  addu       $a0, $s1, $zero
/* 74EB4A0 8008F770 5E3C010C */  jal        func_8004F178
/* 74EB4A4 8008F774 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 74EB4A8 8008F778 4800A427 */  addiu      $a0, $sp, 0x48
/* 74EB4AC 8008F77C 3000B027 */  addiu      $s0, $sp, 0x30
/* 74EB4B0 8008F780 21280002 */  addu       $a1, $s0, $zero
/* 74EB4B4 8008F784 0780033C */  lui        $v1, %hi(D_8006E040)
/* 74EB4B8 8008F788 40E06394 */  lhu        $v1, %lo(D_8006E040)($v1)
/* 74EB4BC 8008F78C 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 74EB4C0 8008F790 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 74EB4C4 8008F794 21300000 */  addu       $a2, $zero, $zero
/* 74EB4C8 8008F798 4800A0A3 */  sb         $zero, 0x48($sp)
/* 74EB4CC 8008F79C 02190300 */  srl        $v1, $v1, 4
/* 74EB4D0 8008F7A0 00140200 */  sll        $v0, $v0, 16
/* 74EB4D4 8008F7A4 03150200 */  sra        $v0, $v0, 20
/* 74EB4D8 8008F7A8 23100200 */  negu       $v0, $v0
/* 74EB4DC 8008F7AC 4900A2A3 */  sb         $v0, 0x49($sp)
/* 74EB4E0 8008F7B0 A43A010C */  jal        func_8004EA90
/* 74EB4E4 8008F7B4 4A00A3A3 */   sb        $v1, 0x4A($sp)
/* 74EB4E8 8008F7B8 21200002 */  addu       $a0, $s0, $zero
/* 74EB4EC 8008F7BC 2000B027 */  addiu      $s0, $sp, 0x20
/* 74EB4F0 8008F7C0 21280002 */  addu       $a1, $s0, $zero
/* 74EB4F4 8008F7C4 5B3B010C */  jal        func_8004ED6C
/* 74EB4F8 8008F7C8 21300002 */   addu      $a2, $s0, $zero
/* 74EB4FC 8008F7CC 21202002 */  addu       $a0, $s1, $zero
/* 74EB500 8008F7D0 21282002 */  addu       $a1, $s1, $zero
/* 74EB504 8008F7D4 653C010C */  jal        func_8004F194
/* 74EB508 8008F7D8 21300002 */   addu      $a2, $s0, $zero
/* 74EB50C 8008F7DC 21202002 */  addu       $a0, $s1, $zero
/* 74EB510 8008F7E0 21282002 */  addu       $a1, $s1, $zero
/* 74EB514 8008F7E4 653C010C */  jal        func_8004F194
/* 74EB518 8008F7E8 21300002 */   addu      $a2, $s0, $zero
/* 74EB51C 8008F7EC 21202002 */  addu       $a0, $s1, $zero
/* 74EB520 8008F7F0 21288000 */  addu       $a1, $a0, $zero
/* 74EB524 8008F7F4 293E0208 */  j          .Llevel_34_8008F8A4
/* 74EB528 8008F7F8 21300002 */   addu      $a2, $s0, $zero
.Llevel_34_8008F7FC:
/* 74EB52C 8008F7FC 0780053C */  lui        $a1, %hi(D_8006E020)
/* 74EB530 8008F800 20E0A524 */  addiu      $a1, $a1, %lo(D_8006E020)
/* 74EB534 8008F804 5E3C010C */  jal        func_8004F178
/* 74EB538 8008F808 0C006426 */   addiu     $a0, $s3, 0xC
/* 74EB53C 8008F80C 0780033C */  lui        $v1, %hi(D_80070328 + 0xD)
/* 74EB540 8008F810 35036390 */  lbu        $v1, %lo(D_80070328 + 0xD)($v1)
/* 74EB544 8008F814 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 74EB548 8008F818 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 74EB54C 8008F81C 6800A0A3 */  sb         $zero, 0x68($sp)
/* 74EB550 8008F820 07004014 */  bnez       $v0, .Llevel_34_8008F840
/* 74EB554 8008F824 6900A3A3 */   sb        $v1, 0x69($sp)
/* 74EB558 8008F828 FCFF6224 */  addiu      $v0, $v1, -0x4
/* 74EB55C 8008F82C FF004230 */  andi       $v0, $v0, 0xFF
/* 74EB560 8008F830 F900422C */  sltiu      $v0, $v0, 0xF9
/* 74EB564 8008F834 02004014 */  bnez       $v0, .Llevel_34_8008F840
/* 74EB568 8008F838 00000000 */   nop
/* 74EB56C 8008F83C 6900A0A3 */  sb         $zero, 0x69($sp)
.Llevel_34_8008F840:
/* 74EB570 8008F840 6800A427 */  addiu      $a0, $sp, 0x68
/* 74EB574 8008F844 5000B027 */  addiu      $s0, $sp, 0x50
/* 74EB578 8008F848 21280002 */  addu       $a1, $s0, $zero
/* 74EB57C 8008F84C 0780113C */  lui        $s1, %hi(D_80070328 + 0xE)
/* 74EB580 8008F850 36033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0xE)
/* 74EB584 8008F854 00002292 */  lbu        $v0, 0x0($s1)
/* 74EB588 8008F858 21300000 */  addu       $a2, $zero, $zero
/* 74EB58C 8008F85C A43A010C */  jal        func_8004EA90
/* 74EB590 8008F860 6A00A2A3 */   sb        $v0, 0x6A($sp)
/* 74EB594 8008F864 21200002 */  addu       $a0, $s0, $zero
/* 74EB598 8008F868 2000A527 */  addiu      $a1, $sp, 0x20
/* 74EB59C 8008F86C 5B3B010C */  jal        func_8004ED6C
/* 74EB5A0 8008F870 2130A000 */   addu      $a2, $a1, $zero
/* 74EB5A4 8008F874 21200002 */  addu       $a0, $s0, $zero
/* 74EB5A8 8008F878 0C007026 */  addiu      $s0, $s3, 0xC
/* 74EB5AC 8008F87C 21280002 */  addu       $a1, $s0, $zero
/* 74EB5B0 8008F880 21300002 */  addu       $a2, $s0, $zero
/* 74EB5B4 8008F884 F4010224 */  addiu      $v0, $zero, 0x1F4
/* 74EB5B8 8008F888 0C0062AE */  sw         $v0, 0xC($s3)
/* 74EB5BC 8008F88C 100060AE */  sw         $zero, 0x10($s3)
/* 74EB5C0 8008F890 5B3B010C */  jal        func_8004ED6C
/* 74EB5C4 8008F894 140060AE */   sw        $zero, 0x14($s3)
/* 74EB5C8 8008F898 21200002 */  addu       $a0, $s0, $zero
/* 74EB5CC 8008F89C 21288000 */  addu       $a1, $a0, $zero
/* 74EB5D0 8008F8A0 F2FF2626 */  addiu      $a2, $s1, -0xE
.Llevel_34_8008F8A4:
/* 74EB5D4 8008F8A4 653C010C */  jal        func_8004F194
/* 74EB5D8 8008F8A8 00000000 */   nop
/* 74EB5DC 8008F8AC 2000A427 */  addiu      $a0, $sp, 0x20
/* 74EB5E0 8008F8B0 7A3B010C */  jal        func_8004EDE8
/* 74EB5E4 8008F8B4 21280000 */   addu      $a1, $zero, $zero
/* 74EB5E8 8008F8B8 21204000 */  addu       $a0, $v0, $zero
/* 74EB5EC 8008F8BC 2800A58F */  lw         $a1, 0x28($sp)
/* 74EB5F0 8008F8C0 203A010C */  jal        func_8004E880
/* 74EB5F4 8008F8C4 21300000 */   addu      $a2, $zero, $zero
/* 74EB5F8 8008F8C8 450062A2 */  sb         $v0, 0x45($s3)
/* 74EB5FC 8008F8CC 2000A48F */  lw         $a0, 0x20($sp)
/* 74EB600 8008F8D0 2400A58F */  lw         $a1, 0x24($sp)
/* 74EB604 8008F8D4 203A010C */  jal        func_8004E880
/* 74EB608 8008F8D8 21300000 */   addu      $a2, $zero, $zero
/* 74EB60C 8008F8DC 460062A2 */  sb         $v0, 0x46($s3)
/* 74EB610 8008F8E0 2000A28F */  lw         $v0, 0x20($sp)
/* 74EB614 8008F8E4 0780053C */  lui        $a1, %hi(D_8006C550)
/* 74EB618 8008F8E8 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 74EB61C 8008F8EC 0780033C */  lui        $v1, %hi(D_8006C704)
/* 74EB620 8008F8F0 04C7638C */  lw         $v1, %lo(D_8006C704)($v1)
/* 74EB624 8008F8F4 000042A6 */  sh         $v0, 0x0($s2)
/* 74EB628 8008F8F8 2400A28F */  lw         $v0, 0x24($sp)
/* 74EB62C 8008F8FC 00000000 */  nop
/* 74EB630 8008F900 020042A6 */  sh         $v0, 0x2($s2)
/* 74EB634 8008F904 2800A28F */  lw         $v0, 0x28($sp)
/* 74EB638 8008F908 00000000 */  nop
/* 74EB63C 8008F90C 040042A6 */  sh         $v0, 0x4($s2)
/* 74EB640 8008F910 2B10A300 */  sltu       $v0, $a1, $v1
/* 74EB644 8008F914 0A004010 */  beqz       $v0, .Llevel_34_8008F940
/* 74EB648 8008F918 44010424 */   addiu     $a0, $zero, 0x144
/* 74EB64C 8008F91C FC030624 */  addiu      $a2, $zero, 0x3FC
.Llevel_34_8008F920:
/* 74EB650 8008F920 3600A284 */  lh         $v0, 0x36($a1)
/* 74EB654 8008F924 00000000 */  nop
/* 74EB658 8008F928 05004610 */  beq        $v0, $a2, .Llevel_34_8008F940
/* 74EB65C 8008F92C 00000000 */   nop
/* 74EB660 8008F930 5800A524 */  addiu      $a1, $a1, 0x58
/* 74EB664 8008F934 2B10A300 */  sltu       $v0, $a1, $v1
/* 74EB668 8008F938 F9FF4014 */  bnez       $v0, .Llevel_34_8008F920
/* 74EB66C 8008F93C 00000000 */   nop
.Llevel_34_8008F940:
/* 74EB670 8008F940 1A00A010 */  beqz       $a1, .Llevel_34_8008F9AC
/* 74EB674 8008F944 00000000 */   nop
/* 74EB678 8008F948 0000A78C */  lw         $a3, 0x0($a1)
/* 74EB67C 8008F94C 00000000 */  nop
/* 74EB680 8008F950 0400E38C */  lw         $v1, 0x4($a3)
/* 74EB684 8008F954 00000000 */  nop
/* 74EB688 8008F958 2A108300 */  slt        $v0, $a0, $v1
/* 74EB68C 8008F95C 02004010 */  beqz       $v0, .Llevel_34_8008F968
/* 74EB690 8008F960 00000000 */   nop
/* 74EB694 8008F964 21206000 */  addu       $a0, $v1, $zero
.Llevel_34_8008F968:
/* 74EB698 8008F968 0000E28C */  lw         $v0, 0x0($a3)
/* 74EB69C 8008F96C 0800E38C */  lw         $v1, 0x8($a3)
/* 74EB6A0 8008F970 21104400 */  addu       $v0, $v0, $a0
/* 74EB6A4 8008F974 0000E2AC */  sw         $v0, 0x0($a3)
/* 74EB6A8 8008F978 21104400 */  addu       $v0, $v0, $a0
/* 74EB6AC 8008F97C 2A104300 */  slt        $v0, $v0, $v1
/* 74EB6B0 8008F980 02004014 */  bnez       $v0, .Llevel_34_8008F98C
/* 74EB6B4 8008F984 10004426 */   addiu     $a0, $s2, 0x10
/* 74EB6B8 8008F988 0000E0AC */  sw         $zero, 0x0($a3)
.Llevel_34_8008F98C:
/* 74EB6BC 8008F98C 0C00E524 */  addiu      $a1, $a3, 0xC
/* 74EB6C0 8008F990 0000E28C */  lw         $v0, 0x0($a3)
/* 74EB6C4 8008F994 08000624 */  addiu      $a2, $zero, 0x8
/* 74EB6C8 8008F998 14004224 */  addiu      $v0, $v0, 0x14
/* 74EB6CC 8008F99C 2110E200 */  addu       $v0, $a3, $v0
/* 74EB6D0 8008F9A0 080042AE */  sw         $v0, 0x8($s2)
/* 74EB6D4 8008F9A4 F539010C */  jal        func_8004E7D4
/* 74EB6D8 8008F9A8 000040AC */   sw        $zero, 0x0($v0)
.Llevel_34_8008F9AC:
/* 74EB6DC 8008F9AC 21206002 */  addu       $a0, $s3, $zero
/* 74EB6E0 8008F9B0 21280000 */  addu       $a1, $zero, $zero
/* 74EB6E4 8008F9B4 21300000 */  addu       $a2, $zero, $zero
/* 74EB6E8 8008F9B8 6E000224 */  addiu      $v0, $zero, 0x6E
/* 74EB6EC 8008F9BC 070042A2 */  sb         $v0, 0x7($s2)
/* 74EB6F0 8008F9C0 01000224 */  addiu      $v0, $zero, 0x1
/* 74EB6F4 8008F9C4 AFEE000C */  jal        func_8003BABC
/* 74EB6F8 8008F9C8 4B0062A2 */   sb        $v0, 0x4B($s3)
/* 74EB6FC 8008F9CC A93E0208 */  j          .Llevel_34_8008FAA4
/* 74EB700 8008F9D0 21106002 */   addu      $v0, $s3, $zero
.Llevel_34_8008F9D4:
/* 74EB704 8008F9D4 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EB708 8008F9D8 5E3C010C */  jal        func_8004F178
/* 74EB70C 8008F9DC 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EB710 8008F9E0 30000224 */  addiu      $v0, $zero, 0x30
/* 74EB714 8008F9E4 070042A2 */  sb         $v0, 0x7($s2)
/* 74EB718 8008F9E8 7F000224 */  addiu      $v0, $zero, 0x7F
/* 74EB71C 8008F9EC 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 74EB720 8008F9F0 07004392 */  lbu        $v1, 0x7($s2)
/* 74EB724 8008F9F4 00000000 */  nop
/* 74EB728 8008F9F8 40100300 */  sll        $v0, $v1, 1
/* 74EB72C 8008F9FC 21104300 */  addu       $v0, $v0, $v1
/* 74EB730 8008FA00 43100200 */  sra        $v0, $v0, 1
/* 74EB734 8008FA04 540062A2 */  sb         $v0, 0x54($s3)
/* 74EB738 8008FA08 07004392 */  lbu        $v1, 0x7($s2)
/* 74EB73C 8008FA0C 3F000224 */  addiu      $v0, $zero, 0x3F
/* 74EB740 8008FA10 560060A2 */  sb         $zero, 0x56($s3)
/* 74EB744 8008FA14 570062A2 */  sb         $v0, 0x57($s3)
/* 74EB748 8008FA18 A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EB74C 8008FA1C 550063A2 */   sb        $v1, 0x55($s3)
.Llevel_34_8008FA20:
/* 74EB750 8008FA20 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EB754 8008FA24 0000708E */  lw         $s0, 0x0($s3)
/* 74EB758 8008FA28 5E3C010C */  jal        func_8004F178
/* 74EB75C 8008FA2C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EB760 8008FA30 0957010C */  jal        func_80055C24
/* 74EB764 8008FA34 21206002 */   addu      $a0, $s3, $zero
/* 74EB768 8008FA38 18000224 */  addiu      $v0, $zero, 0x18
/* 74EB76C 8008FA3C 000002AE */  sw         $v0, 0x0($s0)
/* 74EB770 8008FA40 30000224 */  addiu      $v0, $zero, 0x30
/* 74EB774 8008FA44 570062A2 */  sb         $v0, 0x57($s3)
/* 74EB778 8008FA48 64000224 */  addiu      $v0, $zero, 0x64
/* 74EB77C 8008FA4C 540060A2 */  sb         $zero, 0x54($s3)
/* 74EB780 8008FA50 550060A2 */  sb         $zero, 0x55($s3)
/* 74EB784 8008FA54 560060A2 */  sb         $zero, 0x56($s3)
/* 74EB788 8008FA58 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 74EB78C 8008FA5C 9171010C */  jal        rand
/* 74EB790 8008FA60 470060A2 */   sb        $zero, 0x47($s3)
/* 74EB794 8008FA64 9171010C */  jal        rand
/* 74EB798 8008FA68 450062A2 */   sb        $v0, 0x45($s3)
/* 74EB79C 8008FA6C A83E0208 */  j          .Llevel_34_8008FAA0
/* 74EB7A0 8008FA70 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_34_8008FA74:
/* 74EB7A4 8008FA74 0300A012 */  beqz       $s5, .Llevel_34_8008FA84
/* 74EB7A8 8008FA78 0C00A526 */   addiu     $a1, $s5, 0xC
/* 74EB7AC 8008FA7C A43E0208 */  j          .Llevel_34_8008FA90
/* 74EB7B0 8008FA80 0C006426 */   addiu     $a0, $s3, 0xC
.Llevel_34_8008FA84:
/* 74EB7B4 8008FA84 0C006426 */  addiu      $a0, $s3, 0xC
/* 74EB7B8 8008FA88 0780053C */  lui        $a1, %hi(D_80070328)
/* 74EB7BC 8008FA8C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_34_8008FA90:
/* 74EB7C0 8008FA90 5E3C010C */  jal        func_8004F178
/* 74EB7C4 8008FA94 00000000 */   nop
/* 74EB7C8 8008FA98 0957010C */  jal        func_80055C24
/* 74EB7CC 8008FA9C 21206002 */   addu      $a0, $s3, $zero
.Llevel_34_8008FAA0:
/* 74EB7D0 8008FAA0 21106002 */  addu       $v0, $s3, $zero
.Llevel_34_8008FAA4:
/* 74EB7D4 8008FAA4 8800BF8F */  lw         $ra, 0x88($sp)
/* 74EB7D8 8008FAA8 8400B58F */  lw         $s5, 0x84($sp)
/* 74EB7DC 8008FAAC 8000B48F */  lw         $s4, 0x80($sp)
/* 74EB7E0 8008FAB0 7C00B38F */  lw         $s3, 0x7C($sp)
/* 74EB7E4 8008FAB4 7800B28F */  lw         $s2, 0x78($sp)
/* 74EB7E8 8008FAB8 7400B18F */  lw         $s1, 0x74($sp)
/* 74EB7EC 8008FABC 7000B08F */  lw         $s0, 0x70($sp)
/* 74EB7F0 8008FAC0 9000BD27 */  addiu      $sp, $sp, 0x90
/* 74EB7F4 8008FAC4 0800E003 */  jr         $ra
/* 74EB7F8 8008FAC8 00000000 */   nop
.size func_level_34_8008ECE0, . - func_level_34_8008ECE0
