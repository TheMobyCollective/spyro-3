.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_23
/* 5A97F80 8007BA50 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5A97F84 8007BA54 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 5A97F88 8007BA58 21888000 */  addu       $s1, $a0, $zero
/* 5A97F8C 8007BA5C 2400BFAF */  sw         $ra, 0x24($sp)
/* 5A97F90 8007BA60 2000B2AF */  sw         $s2, 0x20($sp)
/* 5A97F94 8007BA64 1800B0AF */  sw         $s0, 0x18($sp)
/* 5A97F98 8007BA68 0000308E */  lw         $s0, 0x0($s1)
/* 5A97F9C 8007BA6C 0780023C */  lui        $v0, %hi(D_8006C708)
/* 5A97FA0 8007BA70 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 5A97FA4 8007BA74 0000038E */  lw         $v1, 0x0($s0)
/* 5A97FA8 8007BA78 00000000 */  nop
/* 5A97FAC 8007BA7C 21104300 */  addu       $v0, $v0, $v1
/* 5A97FB0 8007BA80 00004390 */  lbu        $v1, 0x0($v0)
/* 5A97FB4 8007BA84 00000000 */  nop
/* 5A97FB8 8007BA88 80100300 */  sll        $v0, $v1, 2
/* 5A97FBC 8007BA8C 21104300 */  addu       $v0, $v0, $v1
/* 5A97FC0 8007BA90 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 5A97FC4 8007BA94 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 5A97FC8 8007BA98 80100200 */  sll        $v0, $v0, 2
/* 5A97FCC 8007BA9C 21104300 */  addu       $v0, $v0, $v1
/* 5A97FD0 8007BAA0 10004290 */  lbu        $v0, 0x10($v0)
/* 5A97FD4 8007BAA4 00000000 */  nop
/* 5A97FD8 8007BAA8 39004010 */  beqz       $v0, .Llevel_23_8007BB90
/* 5A97FDC 8007BAAC 00000000 */   nop
/* 5A97FE0 8007BAB0 0780053C */  lui        $a1, %hi(D_8006E044)
/* 5A97FE4 8007BAB4 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 5A97FE8 8007BAB8 0000A28C */  lw         $v0, 0x0($a1)
/* 5A97FEC 8007BABC 00000000 */  nop
/* 5A97FF0 8007BAC0 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 5A97FF4 8007BAC4 0200422C */  sltiu      $v0, $v0, 0x2
/* 5A97FF8 8007BAC8 08004010 */  beqz       $v0, .Llevel_23_8007BAEC
/* 5A97FFC 8007BACC 0C002426 */   addiu     $a0, $s1, 0xC
/* 5A98000 8007BAD0 CD3C010C */  jal        func_8004F334
/* 5A98004 8007BAD4 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 5A98008 8007BAD8 1400238E */  lw         $v1, 0x14($s1)
/* 5A9800C 8007BADC 0780043C */  lui        $a0, %hi(D_8006E028)
/* 5A98010 8007BAE0 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 5A98014 8007BAE4 C4EE0108 */  j          .Llevel_23_8007BB10
/* 5A98018 8007BAE8 23186400 */   subu      $v1, $v1, $a0
.Llevel_23_8007BAEC:
/* 5A9801C 8007BAEC 0780053C */  lui        $a1, %hi(D_80070328)
/* 5A98020 8007BAF0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5A98024 8007BAF4 CD3C010C */  jal        func_8004F334
/* 5A98028 8007BAF8 0C002426 */   addiu     $a0, $s1, 0xC
/* 5A9802C 8007BAFC 1400238E */  lw         $v1, 0x14($s1)
/* 5A98030 8007BB00 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 5A98034 8007BB04 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 5A98038 8007BB08 00000000 */  nop
/* 5A9803C 8007BB0C 23186400 */  subu       $v1, $v1, $a0
.Llevel_23_8007BB10:
/* 5A98040 8007BB10 02006104 */  bgez       $v1, .Llevel_23_8007BB1C
/* 5A98044 8007BB14 00000000 */   nop
/* 5A98048 8007BB18 23180300 */  negu       $v1, $v1
.Llevel_23_8007BB1C:
/* 5A9804C 8007BB1C 21286200 */  addu       $a1, $v1, $v0
/* 5A98050 8007BB20 0780023C */  lui        $v0, %hi(D_8006C708)
/* 5A98054 8007BB24 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 5A98058 8007BB28 0000038E */  lw         $v1, 0x0($s0)
/* 5A9805C 8007BB2C 80200500 */  sll        $a0, $a1, 2
/* 5A98060 8007BB30 21104300 */  addu       $v0, $v0, $v1
/* 5A98064 8007BB34 00004390 */  lbu        $v1, 0x0($v0)
/* 5A98068 8007BB38 23208500 */  subu       $a0, $a0, $a1
/* 5A9806C 8007BB3C 80100300 */  sll        $v0, $v1, 2
/* 5A98070 8007BB40 21104300 */  addu       $v0, $v0, $v1
/* 5A98074 8007BB44 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 5A98078 8007BB48 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 5A9807C 8007BB4C 80100200 */  sll        $v0, $v0, 2
/* 5A98080 8007BB50 21104300 */  addu       $v0, $v0, $v1
/* 5A98084 8007BB54 0A004294 */  lhu        $v0, 0xA($v0)
/* 5A98088 8007BB58 03290400 */  sra        $a1, $a0, 4
/* 5A9808C 8007BB5C 2A10A200 */  slt        $v0, $a1, $v0
/* 5A98090 8007BB60 28004010 */  beqz       $v0, .Llevel_23_8007BC04
/* 5A98094 8007BB64 00000000 */   nop
/* 5A98098 8007BB68 1800058E */  lw         $a1, 0x18($s0)
/* 5A9809C 8007BB6C F0EF000C */  jal        func_8003BFC0
/* 5A980A0 8007BB70 21202002 */   addu      $a0, $s1, $zero
/* 5A980A4 8007BB74 23004014 */  bnez       $v0, .Llevel_23_8007BC04
/* 5A980A8 8007BB78 21202002 */   addu      $a0, $s1, $zero
/* 5A980AC 8007BB7C 0000058E */  lw         $a1, 0x0($s0)
/* 5A980B0 8007BB80 C4EE000C */  jal        func_8003BB10
/* 5A980B4 8007BB84 04000624 */   addiu     $a2, $zero, 0x4
/* 5A980B8 8007BB88 01EF0108 */  j          .Llevel_23_8007BC04
/* 5A980BC 8007BB8C 180002AE */   sw        $v0, 0x18($s0)
.Llevel_23_8007BB90:
/* 5A980C0 8007BB90 14000426 */  addiu      $a0, $s0, 0x14
/* 5A980C4 8007BB94 69D6000C */  jal        func_800359A4
/* 5A980C8 8007BB98 04000524 */   addiu     $a1, $zero, 0x4
/* 5A980CC 8007BB9C 19004010 */  beqz       $v0, .Llevel_23_8007BC04
/* 5A980D0 8007BBA0 00000000 */   nop
/* 5A980D4 8007BBA4 0000048E */  lw         $a0, 0x0($s0)
/* 5A980D8 8007BBA8 0400058E */  lw         $a1, 0x4($s0)
/* 5A980DC 8007BBAC 00000000 */  nop
/* 5A980E0 8007BBB0 2A108500 */  slt        $v0, $a0, $a1
/* 5A980E4 8007BBB4 04004010 */  beqz       $v0, .Llevel_23_8007BBC8
/* 5A980E8 8007BBB8 21908000 */   addu      $s2, $a0, $zero
/* 5A980EC 8007BBBC DBD8000C */  jal        func_8003636C
/* 5A980F0 8007BBC0 00000000 */   nop
/* 5A980F4 8007BBC4 21904000 */  addu       $s2, $v0, $zero
.Llevel_23_8007BBC8:
/* 5A980F8 8007BBC8 0800048E */  lw         $a0, 0x8($s0)
/* 5A980FC 8007BBCC 0C00058E */  lw         $a1, 0xC($s0)
/* 5A98100 8007BBD0 00000000 */  nop
/* 5A98104 8007BBD4 2A108500 */  slt        $v0, $a0, $a1
/* 5A98108 8007BBD8 05004010 */  beqz       $v0, .Llevel_23_8007BBF0
/* 5A9810C 8007BBDC 00000000 */   nop
/* 5A98110 8007BBE0 DBD8000C */  jal        func_8003636C
/* 5A98114 8007BBE4 00000000 */   nop
/* 5A98118 8007BBE8 FDEE0108 */  j          .Llevel_23_8007BBF4
/* 5A9811C 8007BBEC 140002AE */   sw        $v0, 0x14($s0)
.Llevel_23_8007BBF0:
/* 5A98120 8007BBF0 140004AE */  sw         $a0, 0x14($s0)
.Llevel_23_8007BBF4:
/* 5A98124 8007BBF4 21202002 */  addu       $a0, $s1, $zero
/* 5A98128 8007BBF8 21284002 */  addu       $a1, $s2, $zero
/* 5A9812C 8007BBFC C4EE000C */  jal        func_8003BB10
/* 5A98130 8007BC00 21300000 */   addu      $a2, $zero, $zero
.Llevel_23_8007BC04:
/* 5A98134 8007BC04 1000058E */  lw         $a1, 0x10($s0)
/* 5A98138 8007BC08 00000000 */  nop
/* 5A9813C 8007BC0C 0C00A010 */  beqz       $a1, .Llevel_23_8007BC40
/* 5A98140 8007BC10 00000000 */   nop
/* 5A98144 8007BC14 0780043C */  lui        $a0, %hi(D_80070328)
/* 5A98148 8007BC18 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 5A9814C 8007BC1C 46D9000C */  jal        func_80036518
/* 5A98150 8007BC20 1000A627 */   addiu     $a2, $sp, 0x10
/* 5A98154 8007BC24 0C002426 */  addiu      $a0, $s1, 0xC
/* 5A98158 8007BC28 1000028E */  lw         $v0, 0x10($s0)
/* 5A9815C 8007BC2C 1000A58F */  lw         $a1, 0x10($sp)
/* 5A98160 8007BC30 0C00428C */  lw         $v0, 0xC($v0)
/* 5A98164 8007BC34 00290500 */  sll        $a1, $a1, 4
/* 5A98168 8007BC38 5E3C010C */  jal        func_8004F178
/* 5A9816C 8007BC3C 21284500 */   addu      $a1, $v0, $a1
.Llevel_23_8007BC40:
/* 5A98170 8007BC40 2400BF8F */  lw         $ra, 0x24($sp)
/* 5A98174 8007BC44 2000B28F */  lw         $s2, 0x20($sp)
/* 5A98178 8007BC48 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5A9817C 8007BC4C 1800B08F */  lw         $s0, 0x18($sp)
/* 5A98180 8007BC50 2800BD27 */  addiu      $sp, $sp, 0x28
/* 5A98184 8007BC54 0800E003 */  jr         $ra
/* 5A98188 8007BC58 00000000 */   nop
.size MobyUpdate_1016_level_23, . - MobyUpdate_1016_level_23
