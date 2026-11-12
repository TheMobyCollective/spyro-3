.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_24
/* 5DF8920 8007DBF0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5DF8924 8007DBF4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 5DF8928 8007DBF8 21888000 */  addu       $s1, $a0, $zero
/* 5DF892C 8007DBFC 2400BFAF */  sw         $ra, 0x24($sp)
/* 5DF8930 8007DC00 2000B2AF */  sw         $s2, 0x20($sp)
/* 5DF8934 8007DC04 1800B0AF */  sw         $s0, 0x18($sp)
/* 5DF8938 8007DC08 0000308E */  lw         $s0, 0x0($s1)
/* 5DF893C 8007DC0C 0780023C */  lui        $v0, %hi(D_8006C708)
/* 5DF8940 8007DC10 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 5DF8944 8007DC14 0000038E */  lw         $v1, 0x0($s0)
/* 5DF8948 8007DC18 00000000 */  nop
/* 5DF894C 8007DC1C 21104300 */  addu       $v0, $v0, $v1
/* 5DF8950 8007DC20 00004390 */  lbu        $v1, 0x0($v0)
/* 5DF8954 8007DC24 00000000 */  nop
/* 5DF8958 8007DC28 80100300 */  sll        $v0, $v1, 2
/* 5DF895C 8007DC2C 21104300 */  addu       $v0, $v0, $v1
/* 5DF8960 8007DC30 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 5DF8964 8007DC34 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 5DF8968 8007DC38 80100200 */  sll        $v0, $v0, 2
/* 5DF896C 8007DC3C 21104300 */  addu       $v0, $v0, $v1
/* 5DF8970 8007DC40 10004290 */  lbu        $v0, 0x10($v0)
/* 5DF8974 8007DC44 00000000 */  nop
/* 5DF8978 8007DC48 39004010 */  beqz       $v0, .Llevel_24_8007DD30
/* 5DF897C 8007DC4C 00000000 */   nop
/* 5DF8980 8007DC50 0780053C */  lui        $a1, %hi(D_8006E044)
/* 5DF8984 8007DC54 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 5DF8988 8007DC58 0000A28C */  lw         $v0, 0x0($a1)
/* 5DF898C 8007DC5C 00000000 */  nop
/* 5DF8990 8007DC60 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 5DF8994 8007DC64 0200422C */  sltiu      $v0, $v0, 0x2
/* 5DF8998 8007DC68 08004010 */  beqz       $v0, .Llevel_24_8007DC8C
/* 5DF899C 8007DC6C 0C002426 */   addiu     $a0, $s1, 0xC
/* 5DF89A0 8007DC70 CD3C010C */  jal        func_8004F334
/* 5DF89A4 8007DC74 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 5DF89A8 8007DC78 1400238E */  lw         $v1, 0x14($s1)
/* 5DF89AC 8007DC7C 0780043C */  lui        $a0, %hi(D_8006E028)
/* 5DF89B0 8007DC80 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 5DF89B4 8007DC84 2CF70108 */  j          .Llevel_24_8007DCB0
/* 5DF89B8 8007DC88 23186400 */   subu      $v1, $v1, $a0
.Llevel_24_8007DC8C:
/* 5DF89BC 8007DC8C 0780053C */  lui        $a1, %hi(D_80070328)
/* 5DF89C0 8007DC90 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5DF89C4 8007DC94 CD3C010C */  jal        func_8004F334
/* 5DF89C8 8007DC98 0C002426 */   addiu     $a0, $s1, 0xC
/* 5DF89CC 8007DC9C 1400238E */  lw         $v1, 0x14($s1)
/* 5DF89D0 8007DCA0 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 5DF89D4 8007DCA4 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 5DF89D8 8007DCA8 00000000 */  nop
/* 5DF89DC 8007DCAC 23186400 */  subu       $v1, $v1, $a0
.Llevel_24_8007DCB0:
/* 5DF89E0 8007DCB0 02006104 */  bgez       $v1, .Llevel_24_8007DCBC
/* 5DF89E4 8007DCB4 00000000 */   nop
/* 5DF89E8 8007DCB8 23180300 */  negu       $v1, $v1
.Llevel_24_8007DCBC:
/* 5DF89EC 8007DCBC 21286200 */  addu       $a1, $v1, $v0
/* 5DF89F0 8007DCC0 0780023C */  lui        $v0, %hi(D_8006C708)
/* 5DF89F4 8007DCC4 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 5DF89F8 8007DCC8 0000038E */  lw         $v1, 0x0($s0)
/* 5DF89FC 8007DCCC 80200500 */  sll        $a0, $a1, 2
/* 5DF8A00 8007DCD0 21104300 */  addu       $v0, $v0, $v1
/* 5DF8A04 8007DCD4 00004390 */  lbu        $v1, 0x0($v0)
/* 5DF8A08 8007DCD8 23208500 */  subu       $a0, $a0, $a1
/* 5DF8A0C 8007DCDC 80100300 */  sll        $v0, $v1, 2
/* 5DF8A10 8007DCE0 21104300 */  addu       $v0, $v0, $v1
/* 5DF8A14 8007DCE4 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 5DF8A18 8007DCE8 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 5DF8A1C 8007DCEC 80100200 */  sll        $v0, $v0, 2
/* 5DF8A20 8007DCF0 21104300 */  addu       $v0, $v0, $v1
/* 5DF8A24 8007DCF4 0A004294 */  lhu        $v0, 0xA($v0)
/* 5DF8A28 8007DCF8 03290400 */  sra        $a1, $a0, 4
/* 5DF8A2C 8007DCFC 2A10A200 */  slt        $v0, $a1, $v0
/* 5DF8A30 8007DD00 28004010 */  beqz       $v0, .Llevel_24_8007DDA4
/* 5DF8A34 8007DD04 00000000 */   nop
/* 5DF8A38 8007DD08 1800058E */  lw         $a1, 0x18($s0)
/* 5DF8A3C 8007DD0C F0EF000C */  jal        func_8003BFC0
/* 5DF8A40 8007DD10 21202002 */   addu      $a0, $s1, $zero
/* 5DF8A44 8007DD14 23004014 */  bnez       $v0, .Llevel_24_8007DDA4
/* 5DF8A48 8007DD18 21202002 */   addu      $a0, $s1, $zero
/* 5DF8A4C 8007DD1C 0000058E */  lw         $a1, 0x0($s0)
/* 5DF8A50 8007DD20 C4EE000C */  jal        func_8003BB10
/* 5DF8A54 8007DD24 04000624 */   addiu     $a2, $zero, 0x4
/* 5DF8A58 8007DD28 69F70108 */  j          .Llevel_24_8007DDA4
/* 5DF8A5C 8007DD2C 180002AE */   sw        $v0, 0x18($s0)
.Llevel_24_8007DD30:
/* 5DF8A60 8007DD30 14000426 */  addiu      $a0, $s0, 0x14
/* 5DF8A64 8007DD34 69D6000C */  jal        func_800359A4
/* 5DF8A68 8007DD38 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF8A6C 8007DD3C 19004010 */  beqz       $v0, .Llevel_24_8007DDA4
/* 5DF8A70 8007DD40 00000000 */   nop
/* 5DF8A74 8007DD44 0000048E */  lw         $a0, 0x0($s0)
/* 5DF8A78 8007DD48 0400058E */  lw         $a1, 0x4($s0)
/* 5DF8A7C 8007DD4C 00000000 */  nop
/* 5DF8A80 8007DD50 2A108500 */  slt        $v0, $a0, $a1
/* 5DF8A84 8007DD54 04004010 */  beqz       $v0, .Llevel_24_8007DD68
/* 5DF8A88 8007DD58 21908000 */   addu      $s2, $a0, $zero
/* 5DF8A8C 8007DD5C DBD8000C */  jal        func_8003636C
/* 5DF8A90 8007DD60 00000000 */   nop
/* 5DF8A94 8007DD64 21904000 */  addu       $s2, $v0, $zero
.Llevel_24_8007DD68:
/* 5DF8A98 8007DD68 0800048E */  lw         $a0, 0x8($s0)
/* 5DF8A9C 8007DD6C 0C00058E */  lw         $a1, 0xC($s0)
/* 5DF8AA0 8007DD70 00000000 */  nop
/* 5DF8AA4 8007DD74 2A108500 */  slt        $v0, $a0, $a1
/* 5DF8AA8 8007DD78 05004010 */  beqz       $v0, .Llevel_24_8007DD90
/* 5DF8AAC 8007DD7C 00000000 */   nop
/* 5DF8AB0 8007DD80 DBD8000C */  jal        func_8003636C
/* 5DF8AB4 8007DD84 00000000 */   nop
/* 5DF8AB8 8007DD88 65F70108 */  j          .Llevel_24_8007DD94
/* 5DF8ABC 8007DD8C 140002AE */   sw        $v0, 0x14($s0)
.Llevel_24_8007DD90:
/* 5DF8AC0 8007DD90 140004AE */  sw         $a0, 0x14($s0)
.Llevel_24_8007DD94:
/* 5DF8AC4 8007DD94 21202002 */  addu       $a0, $s1, $zero
/* 5DF8AC8 8007DD98 21284002 */  addu       $a1, $s2, $zero
/* 5DF8ACC 8007DD9C C4EE000C */  jal        func_8003BB10
/* 5DF8AD0 8007DDA0 21300000 */   addu      $a2, $zero, $zero
.Llevel_24_8007DDA4:
/* 5DF8AD4 8007DDA4 1000058E */  lw         $a1, 0x10($s0)
/* 5DF8AD8 8007DDA8 00000000 */  nop
/* 5DF8ADC 8007DDAC 0C00A010 */  beqz       $a1, .Llevel_24_8007DDE0
/* 5DF8AE0 8007DDB0 00000000 */   nop
/* 5DF8AE4 8007DDB4 0780043C */  lui        $a0, %hi(D_80070328)
/* 5DF8AE8 8007DDB8 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 5DF8AEC 8007DDBC 46D9000C */  jal        func_80036518
/* 5DF8AF0 8007DDC0 1000A627 */   addiu     $a2, $sp, 0x10
/* 5DF8AF4 8007DDC4 0C002426 */  addiu      $a0, $s1, 0xC
/* 5DF8AF8 8007DDC8 1000028E */  lw         $v0, 0x10($s0)
/* 5DF8AFC 8007DDCC 1000A58F */  lw         $a1, 0x10($sp)
/* 5DF8B00 8007DDD0 0C00428C */  lw         $v0, 0xC($v0)
/* 5DF8B04 8007DDD4 00290500 */  sll        $a1, $a1, 4
/* 5DF8B08 8007DDD8 5E3C010C */  jal        func_8004F178
/* 5DF8B0C 8007DDDC 21284500 */   addu      $a1, $v0, $a1
.Llevel_24_8007DDE0:
/* 5DF8B10 8007DDE0 2400BF8F */  lw         $ra, 0x24($sp)
/* 5DF8B14 8007DDE4 2000B28F */  lw         $s2, 0x20($sp)
/* 5DF8B18 8007DDE8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5DF8B1C 8007DDEC 1800B08F */  lw         $s0, 0x18($sp)
/* 5DF8B20 8007DDF0 2800BD27 */  addiu      $sp, $sp, 0x28
/* 5DF8B24 8007DDF4 0800E003 */  jr         $ra
/* 5DF8B28 8007DDF8 00000000 */   nop
.size MobyUpdate_1016_level_24, . - MobyUpdate_1016_level_24
