.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_17_8007F3E8
/* 4D0C918 8007F3E8 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 4D0C91C 8007F3EC 3400B3AF */  sw         $s3, 0x34($sp)
/* 4D0C920 8007F3F0 21988000 */  addu       $s3, $a0, $zero
/* 4D0C924 8007F3F4 3800B4AF */  sw         $s4, 0x38($sp)
/* 4D0C928 8007F3F8 21A0A000 */  addu       $s4, $a1, $zero
/* 4D0C92C 8007F3FC 4400B7AF */  sw         $s7, 0x44($sp)
/* 4D0C930 8007F400 21B8C000 */  addu       $s7, $a2, $zero
/* 4D0C934 8007F404 2800B0AF */  sw         $s0, 0x28($sp)
/* 4D0C938 8007F408 2180E000 */  addu       $s0, $a3, $zero
/* 4D0C93C 8007F40C 4000B6AF */  sw         $s6, 0x40($sp)
/* 4D0C940 8007F410 6400B68F */  lw         $s6, 0x64($sp)
/* 4D0C944 8007F414 21300000 */  addu       $a2, $zero, $zero
/* 4D0C948 8007F418 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 4D0C94C 8007F41C 4800BEAF */  sw         $fp, 0x48($sp)
/* 4D0C950 8007F420 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 4D0C954 8007F424 3000B2AF */  sw         $s2, 0x30($sp)
/* 4D0C958 8007F428 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4D0C95C 8007F42C 0C00638E */  lw         $v1, 0xC($s3)
/* 4D0C960 8007F430 0000848E */  lw         $a0, 0x0($s4)
/* 4D0C964 8007F434 1000628E */  lw         $v0, 0x10($s3)
/* 4D0C968 8007F438 0400858E */  lw         $a1, 0x4($s4)
/* 4D0C96C 8007F43C 6000B18F */  lw         $s1, 0x60($sp)
/* 4D0C970 8007F440 7000BE8F */  lw         $fp, 0x70($sp)
/* 4D0C974 8007F444 23206400 */  subu       $a0, $v1, $a0
/* 4D0C978 8007F448 203A010C */  jal        func_8004E880
/* 4D0C97C 8007F44C 23284500 */   subu      $a1, $v0, $a1
/* 4D0C980 8007F450 21904000 */  addu       $s2, $v0, $zero
/* 4D0C984 8007F454 21200002 */  addu       $a0, $s0, $zero
/* 4D0C988 8007F458 4FD8000C */  jal        SubAngle8
/* 4D0C98C 8007F45C FF004532 */   andi      $a1, $s2, 0xFF
/* 4D0C990 8007F460 0C006426 */  addiu      $a0, $s3, 0xC
/* 4D0C994 8007F464 21288002 */  addu       $a1, $s4, $zero
/* 4D0C998 8007F468 CD3C010C */  jal        func_8004F334
/* 4D0C99C 8007F46C 21A84000 */   addu      $s5, $v0, $zero
/* 4D0C9A0 8007F470 21184000 */  addu       $v1, $v0, $zero
/* 4D0C9A4 8007F474 0200A106 */  bgez       $s5, .Llevel_17_8007F480
/* 4D0C9A8 8007F478 2110A002 */   addu      $v0, $s5, $zero
/* 4D0C9AC 8007F47C 23100200 */  negu       $v0, $v0
.Llevel_17_8007F480:
/* 4D0C9B0 8007F480 2A105100 */  slt        $v0, $v0, $s1
/* 4D0C9B4 8007F484 07004010 */  beqz       $v0, .Llevel_17_8007F4A4
/* 4D0C9B8 8007F488 23107700 */   subu      $v0, $v1, $s7
/* 4D0C9BC 8007F48C 03004104 */  bgez       $v0, .Llevel_17_8007F49C
/* 4D0C9C0 8007F490 C8004228 */   slti      $v0, $v0, 0xC8
/* 4D0C9C4 8007F494 2310E302 */  subu       $v0, $s7, $v1
/* 4D0C9C8 8007F498 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_17_8007F49C:
/* 4D0C9CC 8007F49C 89004014 */  bnez       $v0, .Llevel_17_8007F6C4
/* 4D0C9D0 8007F4A0 00000000 */   nop
.Llevel_17_8007F4A4:
/* 4D0C9D4 8007F4A4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4D0C9D8 8007F4A8 1200C213 */  beq        $fp, $v0, .Llevel_17_8007F4F4
/* 4D0C9DC 8007F4AC 00000000 */   nop
/* 4D0C9E0 8007F4B0 FF005032 */  andi       $s0, $s2, 0xFF
/* 4D0C9E4 8007F4B4 21200002 */  addu       $a0, $s0, $zero
/* 4D0C9E8 8007F4B8 993C010C */  jal        func_8004F264
/* 4D0C9EC 8007F4BC 2128C003 */   addu      $a1, $fp, $zero
/* 4D0C9F0 8007F4C0 05004228 */  slti       $v0, $v0, 0x5
/* 4D0C9F4 8007F4C4 0B004010 */  beqz       $v0, .Llevel_17_8007F4F4
/* 4D0C9F8 8007F4C8 2120C003 */   addu      $a0, $fp, $zero
/* 4D0C9FC 8007F4CC 4FD8000C */  jal        SubAngle8
/* 4D0CA00 8007F4D0 21280002 */   addu      $a1, $s0, $zero
/* 4D0CA04 8007F4D4 0300A106 */  bgez       $s5, .Llevel_17_8007F4E4
/* 4D0CA08 8007F4D8 00000000 */   nop
/* 4D0CA0C 8007F4DC 1A004004 */  bltz       $v0, .Llevel_17_8007F548
/* 4D0CA10 8007F4E0 00000000 */   nop
.Llevel_17_8007F4E4:
/* 4D0CA14 8007F4E4 0300A01A */  blez       $s5, .Llevel_17_8007F4F4
/* 4D0CA18 8007F4E8 00000000 */   nop
/* 4D0CA1C 8007F4EC 7800401C */  bgtz       $v0, .Llevel_17_8007F6D0
/* 4D0CA20 8007F4F0 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_17_8007F4F4:
/* 4D0CA24 8007F4F4 7400A88F */  lw         $t0, 0x74($sp)
/* 4D0CA28 8007F4F8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4D0CA2C 8007F4FC 14000211 */  beq        $t0, $v0, .Llevel_17_8007F550
/* 4D0CA30 8007F500 FF005032 */   andi      $s0, $s2, 0xFF
/* 4D0CA34 8007F504 7400A58F */  lw         $a1, 0x74($sp)
/* 4D0CA38 8007F508 993C010C */  jal        func_8004F264
/* 4D0CA3C 8007F50C 21200002 */   addu      $a0, $s0, $zero
/* 4D0CA40 8007F510 05004228 */  slti       $v0, $v0, 0x5
/* 4D0CA44 8007F514 0E004010 */  beqz       $v0, .Llevel_17_8007F550
/* 4D0CA48 8007F518 00000000 */   nop
/* 4D0CA4C 8007F51C 7400A48F */  lw         $a0, 0x74($sp)
/* 4D0CA50 8007F520 4FD8000C */  jal        SubAngle8
/* 4D0CA54 8007F524 21280002 */   addu      $a1, $s0, $zero
/* 4D0CA58 8007F528 0300A106 */  bgez       $s5, .Llevel_17_8007F538
/* 4D0CA5C 8007F52C 00000000 */   nop
/* 4D0CA60 8007F530 05004004 */  bltz       $v0, .Llevel_17_8007F548
/* 4D0CA64 8007F534 00000000 */   nop
.Llevel_17_8007F538:
/* 4D0CA68 8007F538 0500A01A */  blez       $s5, .Llevel_17_8007F550
/* 4D0CA6C 8007F53C 00000000 */   nop
/* 4D0CA70 8007F540 03004018 */  blez       $v0, .Llevel_17_8007F550
/* 4D0CA74 8007F544 00000000 */   nop
.Llevel_17_8007F548:
/* 4D0CA78 8007F548 B4FD0108 */  j          .Llevel_17_8007F6D0
/* 4D0CA7C 8007F54C 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_17_8007F550:
/* 4D0CA80 8007F550 0300A106 */  bgez       $s5, .Llevel_17_8007F560
/* 4D0CA84 8007F554 00000000 */   nop
/* 4D0CA88 8007F558 59FD0108 */  j          .Llevel_17_8007F564
/* 4D0CA8C 8007F55C 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_17_8007F560:
/* 4D0CA90 8007F560 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_17_8007F564:
/* 4D0CA94 8007F564 FF004332 */  andi       $v1, $s2, 0xFF
/* 4D0CA98 8007F568 40180300 */  sll        $v1, $v1, 1
/* 4D0CA9C 8007F56C 0680013C */  lui        $at, %hi(D_80065920)
/* 4D0CAA0 8007F570 21082300 */  addu       $at, $at, $v1
/* 4D0CAA4 8007F574 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 4D0CAA8 8007F578 00000000 */  nop
/* 4D0CAAC 8007F57C 18005700 */  mult       $v0, $s7
/* 4D0CAB0 8007F580 0000878E */  lw         $a3, 0x0($s4)
/* 4D0CAB4 8007F584 12400000 */  mflo       $t0
/* 4D0CAB8 8007F588 03130800 */  sra        $v0, $t0, 12
/* 4D0CABC 8007F58C 2138E200 */  addu       $a3, $a3, $v0
/* 4D0CAC0 8007F590 1800A7AF */  sw         $a3, 0x18($sp)
/* 4D0CAC4 8007F594 0680013C */  lui        $at, %hi(D_800658A0)
/* 4D0CAC8 8007F598 21082300 */  addu       $at, $at, $v1
/* 4D0CACC 8007F59C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4D0CAD0 8007F5A0 00000000 */  nop
/* 4D0CAD4 8007F5A4 18005700 */  mult       $v0, $s7
/* 4D0CAD8 8007F5A8 21300000 */  addu       $a2, $zero, $zero
/* 4D0CADC 8007F5AC 0400858E */  lw         $a1, 0x4($s4)
/* 4D0CAE0 8007F5B0 12400000 */  mflo       $t0
/* 4D0CAE4 8007F5B4 03130800 */  sra        $v0, $t0, 12
/* 4D0CAE8 8007F5B8 2128A200 */  addu       $a1, $a1, $v0
/* 4D0CAEC 8007F5BC 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 4D0CAF0 8007F5C0 0C00648E */  lw         $a0, 0xC($s3)
/* 4D0CAF4 8007F5C4 1000628E */  lw         $v0, 0x10($s3)
/* 4D0CAF8 8007F5C8 2320E400 */  subu       $a0, $a3, $a0
/* 4D0CAFC 8007F5CC 203A010C */  jal        func_8004E880
/* 4D0CB00 8007F5D0 2328A200 */   subu      $a1, $a1, $v0
/* 4D0CB04 8007F5D4 21804000 */  addu       $s0, $v0, $zero
/* 4D0CB08 8007F5D8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 4D0CB0C 8007F5DC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 4D0CB10 8007F5E0 03000224 */  addiu      $v0, $zero, 0x3
/* 4D0CB14 8007F5E4 04006214 */  bne        $v1, $v0, .Llevel_17_8007F5F8
/* 4D0CB18 8007F5E8 04000224 */   addiu     $v0, $zero, 0x4
/* 4D0CB1C 8007F5EC 43101600 */  sra        $v0, $s6, 1
/* 4D0CB20 8007F5F0 81FD0108 */  j          .Llevel_17_8007F604
/* 4D0CB24 8007F5F4 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_17_8007F5F8:
/* 4D0CB28 8007F5F8 02006214 */  bne        $v1, $v0, .Llevel_17_8007F604
/* 4D0CB2C 8007F5FC 00000000 */   nop
/* 4D0CB30 8007F600 40B01600 */  sll        $s6, $s6, 1
.Llevel_17_8007F604:
/* 4D0CB34 8007F604 8000A88F */  lw         $t0, 0x80($sp)
/* 4D0CB38 8007F608 00000000 */  nop
/* 4D0CB3C 8007F60C 08000231 */  andi       $v0, $t0, 0x8
/* 4D0CB40 8007F610 1A004010 */  beqz       $v0, .Llevel_17_8007F67C
/* 4D0CB44 8007F614 21300000 */   addu      $a2, $zero, $zero
/* 4D0CB48 8007F618 0000838E */  lw         $v1, 0x0($s4)
/* 4D0CB4C 8007F61C 0C00648E */  lw         $a0, 0xC($s3)
/* 4D0CB50 8007F620 0400828E */  lw         $v0, 0x4($s4)
/* 4D0CB54 8007F624 1000658E */  lw         $a1, 0x10($s3)
/* 4D0CB58 8007F628 23206400 */  subu       $a0, $v1, $a0
/* 4D0CB5C 8007F62C 203A010C */  jal        func_8004E880
/* 4D0CB60 8007F630 23284500 */   subu      $a1, $v0, $a1
/* 4D0CB64 8007F634 21206002 */  addu       $a0, $s3, $zero
/* 4D0CB68 8007F638 21284000 */  addu       $a1, $v0, $zero
/* 4D0CB6C 8007F63C 6800A68F */  lw         $a2, 0x68($sp)
/* 4D0CB70 8007F640 21380000 */  addu       $a3, $zero, $zero
/* 4D0CB74 8007F644 1000A0AF */  sw         $zero, 0x10($sp)
/* 4D0CB78 8007F648 17D6000C */  jal        func_8003585C
/* 4D0CB7C 8007F64C 1400A0AF */   sw        $zero, 0x14($sp)
/* 4D0CB80 8007F650 21206002 */  addu       $a0, $s3, $zero
/* 4D0CB84 8007F654 7800A78F */  lw         $a3, 0x78($sp)
/* 4D0CB88 8007F658 7C00A88F */  lw         $t0, 0x7C($sp)
/* 4D0CB8C 8007F65C 21280002 */  addu       $a1, $s0, $zero
/* 4D0CB90 8007F660 1000A8AF */  sw         $t0, 0x10($sp)
/* 4D0CB94 8007F664 8000A88F */  lw         $t0, 0x80($sp)
/* 4D0CB98 8007F668 2130C002 */  addu       $a2, $s6, $zero
/* 4D0CB9C 8007F66C B8D7000C */  jal        func_80035EE0
/* 4D0CBA0 8007F670 1400A8AF */   sw        $t0, 0x14($sp)
/* 4D0CBA4 8007F674 AFFD0108 */  j          .Llevel_17_8007F6BC
/* 4D0CBA8 8007F678 00000000 */   nop
.Llevel_17_8007F67C:
/* 4D0CBAC 8007F67C 21206002 */  addu       $a0, $s3, $zero
/* 4D0CBB0 8007F680 21280002 */  addu       $a1, $s0, $zero
/* 4D0CBB4 8007F684 6800A68F */  lw         $a2, 0x68($sp)
/* 4D0CBB8 8007F688 6C00A78F */  lw         $a3, 0x6C($sp)
/* 4D0CBBC 8007F68C 01000224 */  addiu      $v0, $zero, 0x1
/* 4D0CBC0 8007F690 1000A2AF */  sw         $v0, 0x10($sp)
/* 4D0CBC4 8007F694 17D6000C */  jal        func_8003585C
/* 4D0CBC8 8007F698 1400A0AF */   sw        $zero, 0x14($sp)
/* 4D0CBCC 8007F69C 09004010 */  beqz       $v0, .Llevel_17_8007F6C4
/* 4D0CBD0 8007F6A0 21206002 */   addu      $a0, $s3, $zero
/* 4D0CBD4 8007F6A4 8000A88F */  lw         $t0, 0x80($sp)
/* 4D0CBD8 8007F6A8 7800A68F */  lw         $a2, 0x78($sp)
/* 4D0CBDC 8007F6AC 7C00A78F */  lw         $a3, 0x7C($sp)
/* 4D0CBE0 8007F6B0 2128C002 */  addu       $a1, $s6, $zero
/* 4D0CBE4 8007F6B4 77D7000C */  jal        func_80035DDC
/* 4D0CBE8 8007F6B8 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_17_8007F6BC:
/* 4D0CBEC 8007F6BC 04004014 */  bnez       $v0, .Llevel_17_8007F6D0
/* 4D0CBF0 8007F6C0 23100200 */   negu      $v0, $v0
.Llevel_17_8007F6C4:
/* 4D0CBF4 8007F6C4 0200A106 */  bgez       $s5, .Llevel_17_8007F6D0
/* 4D0CBF8 8007F6C8 2110A002 */   addu      $v0, $s5, $zero
/* 4D0CBFC 8007F6CC 23100200 */  negu       $v0, $v0
.Llevel_17_8007F6D0:
/* 4D0CC00 8007F6D0 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 4D0CC04 8007F6D4 4800BE8F */  lw         $fp, 0x48($sp)
/* 4D0CC08 8007F6D8 4400B78F */  lw         $s7, 0x44($sp)
/* 4D0CC0C 8007F6DC 4000B68F */  lw         $s6, 0x40($sp)
/* 4D0CC10 8007F6E0 3C00B58F */  lw         $s5, 0x3C($sp)
/* 4D0CC14 8007F6E4 3800B48F */  lw         $s4, 0x38($sp)
/* 4D0CC18 8007F6E8 3400B38F */  lw         $s3, 0x34($sp)
/* 4D0CC1C 8007F6EC 3000B28F */  lw         $s2, 0x30($sp)
/* 4D0CC20 8007F6F0 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4D0CC24 8007F6F4 2800B08F */  lw         $s0, 0x28($sp)
/* 4D0CC28 8007F6F8 5000BD27 */  addiu      $sp, $sp, 0x50
/* 4D0CC2C 8007F6FC 0800E003 */  jr         $ra
/* 4D0CC30 8007F700 00000000 */   nop
.size func_level_17_8007F3E8, . - func_level_17_8007F3E8
