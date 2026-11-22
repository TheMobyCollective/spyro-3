.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_45
/* 8D38F6C 8007CA3C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8D38F70 8007CA40 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 8D38F74 8007CA44 21888000 */  addu       $s1, $a0, $zero
/* 8D38F78 8007CA48 2400BFAF */  sw         $ra, 0x24($sp)
/* 8D38F7C 8007CA4C 2000B2AF */  sw         $s2, 0x20($sp)
/* 8D38F80 8007CA50 1800B0AF */  sw         $s0, 0x18($sp)
/* 8D38F84 8007CA54 0000308E */  lw         $s0, 0x0($s1)
/* 8D38F88 8007CA58 0780023C */  lui        $v0, %hi(D_8006C708)
/* 8D38F8C 8007CA5C 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 8D38F90 8007CA60 0000038E */  lw         $v1, 0x0($s0)
/* 8D38F94 8007CA64 00000000 */  nop
/* 8D38F98 8007CA68 21104300 */  addu       $v0, $v0, $v1
/* 8D38F9C 8007CA6C 00004390 */  lbu        $v1, 0x0($v0)
/* 8D38FA0 8007CA70 00000000 */  nop
/* 8D38FA4 8007CA74 80100300 */  sll        $v0, $v1, 2
/* 8D38FA8 8007CA78 21104300 */  addu       $v0, $v0, $v1
/* 8D38FAC 8007CA7C 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 8D38FB0 8007CA80 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 8D38FB4 8007CA84 80100200 */  sll        $v0, $v0, 2
/* 8D38FB8 8007CA88 21104300 */  addu       $v0, $v0, $v1
/* 8D38FBC 8007CA8C 10004290 */  lbu        $v0, 0x10($v0)
/* 8D38FC0 8007CA90 00000000 */  nop
/* 8D38FC4 8007CA94 39004010 */  beqz       $v0, .Llevel_45_8007CB7C
/* 8D38FC8 8007CA98 00000000 */   nop
/* 8D38FCC 8007CA9C 0780053C */  lui        $a1, %hi(D_8006E044)
/* 8D38FD0 8007CAA0 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 8D38FD4 8007CAA4 0000A28C */  lw         $v0, 0x0($a1)
/* 8D38FD8 8007CAA8 00000000 */  nop
/* 8D38FDC 8007CAAC F7FF4224 */  addiu      $v0, $v0, -0x9
/* 8D38FE0 8007CAB0 0200422C */  sltiu      $v0, $v0, 0x2
/* 8D38FE4 8007CAB4 08004010 */  beqz       $v0, .Llevel_45_8007CAD8
/* 8D38FE8 8007CAB8 0C002426 */   addiu     $a0, $s1, 0xC
/* 8D38FEC 8007CABC CD3C010C */  jal        func_8004F334
/* 8D38FF0 8007CAC0 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 8D38FF4 8007CAC4 1400238E */  lw         $v1, 0x14($s1)
/* 8D38FF8 8007CAC8 0780043C */  lui        $a0, %hi(D_8006E028)
/* 8D38FFC 8007CACC 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 8D39000 8007CAD0 BFF20108 */  j          .Llevel_45_8007CAFC
/* 8D39004 8007CAD4 23186400 */   subu      $v1, $v1, $a0
.Llevel_45_8007CAD8:
/* 8D39008 8007CAD8 0780053C */  lui        $a1, %hi(D_80070328)
/* 8D3900C 8007CADC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8D39010 8007CAE0 CD3C010C */  jal        func_8004F334
/* 8D39014 8007CAE4 0C002426 */   addiu     $a0, $s1, 0xC
/* 8D39018 8007CAE8 1400238E */  lw         $v1, 0x14($s1)
/* 8D3901C 8007CAEC 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 8D39020 8007CAF0 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 8D39024 8007CAF4 00000000 */  nop
/* 8D39028 8007CAF8 23186400 */  subu       $v1, $v1, $a0
.Llevel_45_8007CAFC:
/* 8D3902C 8007CAFC 02006104 */  bgez       $v1, .Llevel_45_8007CB08
/* 8D39030 8007CB00 00000000 */   nop
/* 8D39034 8007CB04 23180300 */  negu       $v1, $v1
.Llevel_45_8007CB08:
/* 8D39038 8007CB08 21286200 */  addu       $a1, $v1, $v0
/* 8D3903C 8007CB0C 0780023C */  lui        $v0, %hi(D_8006C708)
/* 8D39040 8007CB10 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 8D39044 8007CB14 0000038E */  lw         $v1, 0x0($s0)
/* 8D39048 8007CB18 80200500 */  sll        $a0, $a1, 2
/* 8D3904C 8007CB1C 21104300 */  addu       $v0, $v0, $v1
/* 8D39050 8007CB20 00004390 */  lbu        $v1, 0x0($v0)
/* 8D39054 8007CB24 23208500 */  subu       $a0, $a0, $a1
/* 8D39058 8007CB28 80100300 */  sll        $v0, $v1, 2
/* 8D3905C 8007CB2C 21104300 */  addu       $v0, $v0, $v1
/* 8D39060 8007CB30 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 8D39064 8007CB34 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 8D39068 8007CB38 80100200 */  sll        $v0, $v0, 2
/* 8D3906C 8007CB3C 21104300 */  addu       $v0, $v0, $v1
/* 8D39070 8007CB40 0A004294 */  lhu        $v0, 0xA($v0)
/* 8D39074 8007CB44 03290400 */  sra        $a1, $a0, 4
/* 8D39078 8007CB48 2A10A200 */  slt        $v0, $a1, $v0
/* 8D3907C 8007CB4C 28004010 */  beqz       $v0, .Llevel_45_8007CBF0
/* 8D39080 8007CB50 00000000 */   nop
/* 8D39084 8007CB54 1800058E */  lw         $a1, 0x18($s0)
/* 8D39088 8007CB58 F0EF000C */  jal        func_8003BFC0
/* 8D3908C 8007CB5C 21202002 */   addu      $a0, $s1, $zero
/* 8D39090 8007CB60 23004014 */  bnez       $v0, .Llevel_45_8007CBF0
/* 8D39094 8007CB64 21202002 */   addu      $a0, $s1, $zero
/* 8D39098 8007CB68 0000058E */  lw         $a1, 0x0($s0)
/* 8D3909C 8007CB6C C4EE000C */  jal        func_8003BB10
/* 8D390A0 8007CB70 04000624 */   addiu     $a2, $zero, 0x4
/* 8D390A4 8007CB74 FCF20108 */  j          .Llevel_45_8007CBF0
/* 8D390A8 8007CB78 180002AE */   sw        $v0, 0x18($s0)
.Llevel_45_8007CB7C:
/* 8D390AC 8007CB7C 14000426 */  addiu      $a0, $s0, 0x14
/* 8D390B0 8007CB80 69D6000C */  jal        func_800359A4
/* 8D390B4 8007CB84 04000524 */   addiu     $a1, $zero, 0x4
/* 8D390B8 8007CB88 19004010 */  beqz       $v0, .Llevel_45_8007CBF0
/* 8D390BC 8007CB8C 00000000 */   nop
/* 8D390C0 8007CB90 0000048E */  lw         $a0, 0x0($s0)
/* 8D390C4 8007CB94 0400058E */  lw         $a1, 0x4($s0)
/* 8D390C8 8007CB98 00000000 */  nop
/* 8D390CC 8007CB9C 2A108500 */  slt        $v0, $a0, $a1
/* 8D390D0 8007CBA0 04004010 */  beqz       $v0, .Llevel_45_8007CBB4
/* 8D390D4 8007CBA4 21908000 */   addu      $s2, $a0, $zero
/* 8D390D8 8007CBA8 DBD8000C */  jal        func_8003636C
/* 8D390DC 8007CBAC 00000000 */   nop
/* 8D390E0 8007CBB0 21904000 */  addu       $s2, $v0, $zero
.Llevel_45_8007CBB4:
/* 8D390E4 8007CBB4 0800048E */  lw         $a0, 0x8($s0)
/* 8D390E8 8007CBB8 0C00058E */  lw         $a1, 0xC($s0)
/* 8D390EC 8007CBBC 00000000 */  nop
/* 8D390F0 8007CBC0 2A108500 */  slt        $v0, $a0, $a1
/* 8D390F4 8007CBC4 05004010 */  beqz       $v0, .Llevel_45_8007CBDC
/* 8D390F8 8007CBC8 00000000 */   nop
/* 8D390FC 8007CBCC DBD8000C */  jal        func_8003636C
/* 8D39100 8007CBD0 00000000 */   nop
/* 8D39104 8007CBD4 F8F20108 */  j          .Llevel_45_8007CBE0
/* 8D39108 8007CBD8 140002AE */   sw        $v0, 0x14($s0)
.Llevel_45_8007CBDC:
/* 8D3910C 8007CBDC 140004AE */  sw         $a0, 0x14($s0)
.Llevel_45_8007CBE0:
/* 8D39110 8007CBE0 21202002 */  addu       $a0, $s1, $zero
/* 8D39114 8007CBE4 21284002 */  addu       $a1, $s2, $zero
/* 8D39118 8007CBE8 C4EE000C */  jal        func_8003BB10
/* 8D3911C 8007CBEC 21300000 */   addu      $a2, $zero, $zero
.Llevel_45_8007CBF0:
/* 8D39120 8007CBF0 1000058E */  lw         $a1, 0x10($s0)
/* 8D39124 8007CBF4 00000000 */  nop
/* 8D39128 8007CBF8 0C00A010 */  beqz       $a1, .Llevel_45_8007CC2C
/* 8D3912C 8007CBFC 00000000 */   nop
/* 8D39130 8007CC00 0780043C */  lui        $a0, %hi(D_80070328)
/* 8D39134 8007CC04 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 8D39138 8007CC08 46D9000C */  jal        func_80036518
/* 8D3913C 8007CC0C 1000A627 */   addiu     $a2, $sp, 0x10
/* 8D39140 8007CC10 0C002426 */  addiu      $a0, $s1, 0xC
/* 8D39144 8007CC14 1000028E */  lw         $v0, 0x10($s0)
/* 8D39148 8007CC18 1000A58F */  lw         $a1, 0x10($sp)
/* 8D3914C 8007CC1C 0C00428C */  lw         $v0, 0xC($v0)
/* 8D39150 8007CC20 00290500 */  sll        $a1, $a1, 4
/* 8D39154 8007CC24 5E3C010C */  jal        func_8004F178
/* 8D39158 8007CC28 21284500 */   addu      $a1, $v0, $a1
.Llevel_45_8007CC2C:
/* 8D3915C 8007CC2C 2400BF8F */  lw         $ra, 0x24($sp)
/* 8D39160 8007CC30 2000B28F */  lw         $s2, 0x20($sp)
/* 8D39164 8007CC34 1C00B18F */  lw         $s1, 0x1C($sp)
/* 8D39168 8007CC38 1800B08F */  lw         $s0, 0x18($sp)
/* 8D3916C 8007CC3C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8D39170 8007CC40 0800E003 */  jr         $ra
/* 8D39174 8007CC44 00000000 */   nop
.size MobyUpdate_1016_level_45, . - MobyUpdate_1016_level_45
