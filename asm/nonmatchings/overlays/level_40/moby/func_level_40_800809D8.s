.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_40
/* 7E6BF08 800809D8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 7E6BF0C 800809DC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 7E6BF10 800809E0 21888000 */  addu       $s1, $a0, $zero
/* 7E6BF14 800809E4 2400BFAF */  sw         $ra, 0x24($sp)
/* 7E6BF18 800809E8 2000B2AF */  sw         $s2, 0x20($sp)
/* 7E6BF1C 800809EC 1800B0AF */  sw         $s0, 0x18($sp)
/* 7E6BF20 800809F0 0000308E */  lw         $s0, 0x0($s1)
/* 7E6BF24 800809F4 0780023C */  lui        $v0, %hi(D_8006C708)
/* 7E6BF28 800809F8 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 7E6BF2C 800809FC 0000038E */  lw         $v1, 0x0($s0)
/* 7E6BF30 80080A00 00000000 */  nop
/* 7E6BF34 80080A04 21104300 */  addu       $v0, $v0, $v1
/* 7E6BF38 80080A08 00004390 */  lbu        $v1, 0x0($v0)
/* 7E6BF3C 80080A0C 00000000 */  nop
/* 7E6BF40 80080A10 80100300 */  sll        $v0, $v1, 2
/* 7E6BF44 80080A14 21104300 */  addu       $v0, $v0, $v1
/* 7E6BF48 80080A18 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 7E6BF4C 80080A1C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 7E6BF50 80080A20 80100200 */  sll        $v0, $v0, 2
/* 7E6BF54 80080A24 21104300 */  addu       $v0, $v0, $v1
/* 7E6BF58 80080A28 10004290 */  lbu        $v0, 0x10($v0)
/* 7E6BF5C 80080A2C 00000000 */  nop
/* 7E6BF60 80080A30 39004010 */  beqz       $v0, .Llevel_40_80080B18
/* 7E6BF64 80080A34 00000000 */   nop
/* 7E6BF68 80080A38 0780053C */  lui        $a1, %hi(D_8006E044)
/* 7E6BF6C 80080A3C 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 7E6BF70 80080A40 0000A28C */  lw         $v0, 0x0($a1)
/* 7E6BF74 80080A44 00000000 */  nop
/* 7E6BF78 80080A48 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 7E6BF7C 80080A4C 0200422C */  sltiu      $v0, $v0, 0x2
/* 7E6BF80 80080A50 08004010 */  beqz       $v0, .Llevel_40_80080A74
/* 7E6BF84 80080A54 0C002426 */   addiu     $a0, $s1, 0xC
/* 7E6BF88 80080A58 CD3C010C */  jal        func_8004F334
/* 7E6BF8C 80080A5C DCFFA524 */   addiu     $a1, $a1, -0x24
/* 7E6BF90 80080A60 1400238E */  lw         $v1, 0x14($s1)
/* 7E6BF94 80080A64 0780043C */  lui        $a0, %hi(D_8006E028)
/* 7E6BF98 80080A68 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 7E6BF9C 80080A6C A6020208 */  j          .Llevel_40_80080A98
/* 7E6BFA0 80080A70 23186400 */   subu      $v1, $v1, $a0
.Llevel_40_80080A74:
/* 7E6BFA4 80080A74 0780053C */  lui        $a1, %hi(D_80070328)
/* 7E6BFA8 80080A78 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7E6BFAC 80080A7C CD3C010C */  jal        func_8004F334
/* 7E6BFB0 80080A80 0C002426 */   addiu     $a0, $s1, 0xC
/* 7E6BFB4 80080A84 1400238E */  lw         $v1, 0x14($s1)
/* 7E6BFB8 80080A88 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 7E6BFBC 80080A8C 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 7E6BFC0 80080A90 00000000 */  nop
/* 7E6BFC4 80080A94 23186400 */  subu       $v1, $v1, $a0
.Llevel_40_80080A98:
/* 7E6BFC8 80080A98 02006104 */  bgez       $v1, .Llevel_40_80080AA4
/* 7E6BFCC 80080A9C 00000000 */   nop
/* 7E6BFD0 80080AA0 23180300 */  negu       $v1, $v1
.Llevel_40_80080AA4:
/* 7E6BFD4 80080AA4 21286200 */  addu       $a1, $v1, $v0
/* 7E6BFD8 80080AA8 0780023C */  lui        $v0, %hi(D_8006C708)
/* 7E6BFDC 80080AAC 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 7E6BFE0 80080AB0 0000038E */  lw         $v1, 0x0($s0)
/* 7E6BFE4 80080AB4 80200500 */  sll        $a0, $a1, 2
/* 7E6BFE8 80080AB8 21104300 */  addu       $v0, $v0, $v1
/* 7E6BFEC 80080ABC 00004390 */  lbu        $v1, 0x0($v0)
/* 7E6BFF0 80080AC0 23208500 */  subu       $a0, $a0, $a1
/* 7E6BFF4 80080AC4 80100300 */  sll        $v0, $v1, 2
/* 7E6BFF8 80080AC8 21104300 */  addu       $v0, $v0, $v1
/* 7E6BFFC 80080ACC 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 7E6C000 80080AD0 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 7E6C004 80080AD4 80100200 */  sll        $v0, $v0, 2
/* 7E6C008 80080AD8 21104300 */  addu       $v0, $v0, $v1
/* 7E6C00C 80080ADC 0A004294 */  lhu        $v0, 0xA($v0)
/* 7E6C010 80080AE0 03290400 */  sra        $a1, $a0, 4
/* 7E6C014 80080AE4 2A10A200 */  slt        $v0, $a1, $v0
/* 7E6C018 80080AE8 28004010 */  beqz       $v0, .Llevel_40_80080B8C
/* 7E6C01C 80080AEC 00000000 */   nop
/* 7E6C020 80080AF0 1800058E */  lw         $a1, 0x18($s0)
/* 7E6C024 80080AF4 F0EF000C */  jal        func_8003BFC0
/* 7E6C028 80080AF8 21202002 */   addu      $a0, $s1, $zero
/* 7E6C02C 80080AFC 23004014 */  bnez       $v0, .Llevel_40_80080B8C
/* 7E6C030 80080B00 21202002 */   addu      $a0, $s1, $zero
/* 7E6C034 80080B04 0000058E */  lw         $a1, 0x0($s0)
/* 7E6C038 80080B08 C4EE000C */  jal        func_8003BB10
/* 7E6C03C 80080B0C 04000624 */   addiu     $a2, $zero, 0x4
/* 7E6C040 80080B10 E3020208 */  j          .Llevel_40_80080B8C
/* 7E6C044 80080B14 180002AE */   sw        $v0, 0x18($s0)
.Llevel_40_80080B18:
/* 7E6C048 80080B18 14000426 */  addiu      $a0, $s0, 0x14
/* 7E6C04C 80080B1C 69D6000C */  jal        func_800359A4
/* 7E6C050 80080B20 04000524 */   addiu     $a1, $zero, 0x4
/* 7E6C054 80080B24 19004010 */  beqz       $v0, .Llevel_40_80080B8C
/* 7E6C058 80080B28 00000000 */   nop
/* 7E6C05C 80080B2C 0000048E */  lw         $a0, 0x0($s0)
/* 7E6C060 80080B30 0400058E */  lw         $a1, 0x4($s0)
/* 7E6C064 80080B34 00000000 */  nop
/* 7E6C068 80080B38 2A108500 */  slt        $v0, $a0, $a1
/* 7E6C06C 80080B3C 04004010 */  beqz       $v0, .Llevel_40_80080B50
/* 7E6C070 80080B40 21908000 */   addu      $s2, $a0, $zero
/* 7E6C074 80080B44 DBD8000C */  jal        func_8003636C
/* 7E6C078 80080B48 00000000 */   nop
/* 7E6C07C 80080B4C 21904000 */  addu       $s2, $v0, $zero
.Llevel_40_80080B50:
/* 7E6C080 80080B50 0800048E */  lw         $a0, 0x8($s0)
/* 7E6C084 80080B54 0C00058E */  lw         $a1, 0xC($s0)
/* 7E6C088 80080B58 00000000 */  nop
/* 7E6C08C 80080B5C 2A108500 */  slt        $v0, $a0, $a1
/* 7E6C090 80080B60 05004010 */  beqz       $v0, .Llevel_40_80080B78
/* 7E6C094 80080B64 00000000 */   nop
/* 7E6C098 80080B68 DBD8000C */  jal        func_8003636C
/* 7E6C09C 80080B6C 00000000 */   nop
/* 7E6C0A0 80080B70 DF020208 */  j          .Llevel_40_80080B7C
/* 7E6C0A4 80080B74 140002AE */   sw        $v0, 0x14($s0)
.Llevel_40_80080B78:
/* 7E6C0A8 80080B78 140004AE */  sw         $a0, 0x14($s0)
.Llevel_40_80080B7C:
/* 7E6C0AC 80080B7C 21202002 */  addu       $a0, $s1, $zero
/* 7E6C0B0 80080B80 21284002 */  addu       $a1, $s2, $zero
/* 7E6C0B4 80080B84 C4EE000C */  jal        func_8003BB10
/* 7E6C0B8 80080B88 21300000 */   addu      $a2, $zero, $zero
.Llevel_40_80080B8C:
/* 7E6C0BC 80080B8C 1000058E */  lw         $a1, 0x10($s0)
/* 7E6C0C0 80080B90 00000000 */  nop
/* 7E6C0C4 80080B94 0C00A010 */  beqz       $a1, .Llevel_40_80080BC8
/* 7E6C0C8 80080B98 00000000 */   nop
/* 7E6C0CC 80080B9C 0780043C */  lui        $a0, %hi(D_80070328)
/* 7E6C0D0 80080BA0 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 7E6C0D4 80080BA4 46D9000C */  jal        func_80036518
/* 7E6C0D8 80080BA8 1000A627 */   addiu     $a2, $sp, 0x10
/* 7E6C0DC 80080BAC 0C002426 */  addiu      $a0, $s1, 0xC
/* 7E6C0E0 80080BB0 1000028E */  lw         $v0, 0x10($s0)
/* 7E6C0E4 80080BB4 1000A58F */  lw         $a1, 0x10($sp)
/* 7E6C0E8 80080BB8 0C00428C */  lw         $v0, 0xC($v0)
/* 7E6C0EC 80080BBC 00290500 */  sll        $a1, $a1, 4
/* 7E6C0F0 80080BC0 5E3C010C */  jal        func_8004F178
/* 7E6C0F4 80080BC4 21284500 */   addu      $a1, $v0, $a1
.Llevel_40_80080BC8:
/* 7E6C0F8 80080BC8 2400BF8F */  lw         $ra, 0x24($sp)
/* 7E6C0FC 80080BCC 2000B28F */  lw         $s2, 0x20($sp)
/* 7E6C100 80080BD0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 7E6C104 80080BD4 1800B08F */  lw         $s0, 0x18($sp)
/* 7E6C108 80080BD8 2800BD27 */  addiu      $sp, $sp, 0x28
/* 7E6C10C 80080BDC 0800E003 */  jr         $ra
/* 7E6C110 80080BE0 00000000 */   nop
.size MobyUpdate_1016_level_40, . - MobyUpdate_1016_level_40
