.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80076870
/* 6DDDDA0 80076870 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 6DDDDA4 80076874 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 6DDDDA8 80076878 21888000 */  addu       $s1, $a0, $zero
/* 6DDDDAC 8007687C 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DDDDB0 80076880 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DDDDB4 80076884 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 6DDDDB8 80076888 5800B4AF */  sw         $s4, 0x58($sp)
/* 6DDDDBC 8007688C 5400B3AF */  sw         $s3, 0x54($sp)
/* 6DDDDC0 80076890 5000B2AF */  sw         $s2, 0x50($sp)
/* 6DDDDC4 80076894 4800B0AF */  sw         $s0, 0x48($sp)
/* 6DDDDC8 80076898 0000328E */  lw         $s2, 0x0($s1)
/* 6DDDDCC 8007689C CD3C010C */  jal        func_8004F334
/* 6DDDDD0 800768A0 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DDDDD4 800768A4 21A04000 */  addu       $s4, $v0, $zero
/* 6DDDDD8 800768A8 48002392 */  lbu        $v1, 0x48($s1)
/* 6DDDDDC 800768AC 02000224 */  addiu      $v0, $zero, 0x2
/* 6DDDDE0 800768B0 06006214 */  bne        $v1, $v0, .Llevel_32_800768CC
/* 6DDDDE4 800768B4 B80B822A */   slti      $v0, $s4, 0xBB8
/* 6DDDDE8 800768B8 46002292 */  lbu        $v0, 0x46($s1)
/* 6DDDDEC 800768BC 00000000 */  nop
/* 6DDDDF0 800768C0 02004224 */  addiu      $v0, $v0, 0x2
/* 6DDDDF4 800768C4 B6DB0108 */  j          .Llevel_32_80076ED8
/* 6DDDDF8 800768C8 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_32_800768CC:
/* 6DDDDFC 800768CC 70004010 */  beqz       $v0, .Llevel_32_80076A90
/* 6DDDE00 800768D0 00000000 */   nop
/* 6DDDE04 800768D4 38002386 */  lh         $v1, 0x38($s1)
/* 6DDDE08 800768D8 1400228E */  lw         $v0, 0x14($s1)
/* 6DDDE0C 800768DC 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 6DDDE10 800768E0 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 6DDDE14 800768E4 23184300 */  subu       $v1, $v0, $v1
/* 6DDDE18 800768E8 23106400 */  subu       $v0, $v1, $a0
/* 6DDDE1C 800768EC 05004004 */  bltz       $v0, .Llevel_32_80076904
/* 6DDDE20 800768F0 F00A4228 */   slti      $v0, $v0, 0xAF0
/* 6DDDE24 800768F4 66004010 */  beqz       $v0, .Llevel_32_80076A90
/* 6DDDE28 800768F8 00000000 */   nop
/* 6DDDE2C 800768FC 45DA0108 */  j          .Llevel_32_80076914
/* 6DDDE30 80076900 00000000 */   nop
.Llevel_32_80076904:
/* 6DDDE34 80076904 23108300 */  subu       $v0, $a0, $v1
/* 6DDDE38 80076908 F00A4228 */  slti       $v0, $v0, 0xAF0
/* 6DDDE3C 8007690C 60004010 */  beqz       $v0, .Llevel_32_80076A90
/* 6DDDE40 80076910 00000000 */   nop
.Llevel_32_80076914:
/* 6DDDE44 80076914 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 6DDDE48 80076918 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 6DDDE4C 8007691C 00000000 */  nop
/* 6DDDE50 80076920 30004014 */  bnez       $v0, .Llevel_32_800769E4
/* 6DDDE54 80076924 00000000 */   nop
/* 6DDDE58 80076928 0780133C */  lui        $s3, %hi(D_80070328 + 0x280)
/* 6DDDE5C 8007692C A8057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x280)
/* 6DDDE60 80076930 0000628E */  lw         $v0, 0x0($s3)
/* 6DDDE64 80076934 00000000 */  nop
/* 6DDDE68 80076938 55004004 */  bltz       $v0, .Llevel_32_80076A90
/* 6DDDE6C 8007693C 78000424 */   addiu     $a0, $zero, 0x78
/* 6DDDE70 80076940 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DDDE74 80076944 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DDDE78 80076948 00000000 */  nop
/* 6DDDE7C 8007694C 09F84000 */  jalr       $v0
/* 6DDDE80 80076950 21282002 */   addu      $a1, $s1, $zero
/* 6DDDE84 80076954 0780013C */  lui        $at, %hi(D_8006C65C)
/* 6DDDE88 80076958 5CC622AC */  sw         $v0, %lo(D_8006C65C)($at)
/* 6DDDE8C 8007695C 4C004010 */  beqz       $v0, .Llevel_32_80076A90
/* 6DDDE90 80076960 00000000 */   nop
/* 6DDDE94 80076964 0000508C */  lw         $s0, 0x0($v0)
/* 6DDDE98 80076968 00000000 */  nop
/* 6DDDE9C 8007696C 02000592 */  lbu        $a1, 0x2($s0)
/* 6DDDEA0 80076970 F0EF000C */  jal        func_8003BFC0
/* 6DDDEA4 80076974 21204000 */   addu      $a0, $v0, $zero
/* 6DDDEA8 80076978 06004014 */  bnez       $v0, .Llevel_32_80076994
/* 6DDDEAC 8007697C 21280000 */   addu      $a1, $zero, $zero
/* 6DDDEB0 80076980 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDDEB4 80076984 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDDEB8 80076988 AFEE000C */  jal        func_8003BABC
/* 6DDDEBC 8007698C 21300000 */   addu      $a2, $zero, $zero
/* 6DDDEC0 80076990 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_32_80076994:
/* 6DDDEC4 80076994 36002386 */  lh         $v1, 0x36($s1)
/* 6DDDEC8 80076998 10000224 */  addiu      $v0, $zero, 0x10
/* 6DDDECC 8007699C 04006214 */  bne        $v1, $v0, .Llevel_32_800769B0
/* 6DDDED0 800769A0 03000324 */   addiu     $v1, $zero, 0x3
/* 6DDDED4 800769A4 01000224 */  addiu      $v0, $zero, 0x1
/* 6DDDED8 800769A8 B5DA0108 */  j          .Llevel_32_80076AD4
/* 6DDDEDC 800769AC 000062AE */   sw        $v0, 0x0($s3)
.Llevel_32_800769B0:
/* 6DDDEE0 800769B0 0780023C */  lui        $v0, %hi(D_8006C784)
/* 6DDDEE4 800769B4 84C7428C */  lw         $v0, %lo(D_8006C784)($v0)
/* 6DDDEE8 800769B8 000063AE */  sw         $v1, 0x0($s3)
/* 6DDDEEC 800769BC 01004224 */  addiu      $v0, $v0, 0x1
/* 6DDDEF0 800769C0 0780013C */  lui        $at, %hi(D_8006C784)
/* 6DDDEF4 800769C4 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 6DDDEF8 800769C8 64004228 */  slti       $v0, $v0, 0x64
/* 6DDDEFC 800769CC 41004014 */  bnez       $v0, .Llevel_32_80076AD4
/* 6DDDF00 800769D0 63000224 */   addiu     $v0, $zero, 0x63
/* 6DDDF04 800769D4 0780013C */  lui        $at, %hi(D_8006C784)
/* 6DDDF08 800769D8 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 6DDDF0C 800769DC B5DA0108 */  j          .Llevel_32_80076AD4
/* 6DDDF10 800769E0 00000000 */   nop
.Llevel_32_800769E4:
/* 6DDDF14 800769E4 0000508C */  lw         $s0, 0x0($v0)
/* 6DDDF18 800769E8 00000000 */  nop
/* 6DDDF1C 800769EC 1400028E */  lw         $v0, 0x14($s0)
/* 6DDDF20 800769F0 00000000 */  nop
/* 6DDDF24 800769F4 0A004010 */  beqz       $v0, .Llevel_32_80076A20
/* 6DDDF28 800769F8 21300000 */   addu      $a2, $zero, $zero
/* 6DDDF2C 800769FC 24005110 */  beq        $v0, $s1, .Llevel_32_80076A90
/* 6DDDF30 80076A00 00000000 */   nop
/* 6DDDF34 80076A04 00000286 */  lh         $v0, 0x0($s0)
/* 6DDDF38 80076A08 00000000 */  nop
/* 6DDDF3C 80076A0C 1F004228 */  slti       $v0, $v0, 0x1F
/* 6DDDF40 80076A10 1F004014 */  bnez       $v0, .Llevel_32_80076A90
/* 6DDDF44 80076A14 1E000224 */   addiu     $v0, $zero, 0x1E
/* 6DDDF48 80076A18 A4DA0108 */  j          .Llevel_32_80076A90
/* 6DDDF4C 80076A1C 000002A6 */   sh        $v0, 0x0($s0)
.Llevel_32_80076A20:
/* 6DDDF50 80076A20 0C00238E */  lw         $v1, 0xC($s1)
/* 6DDDF54 80076A24 0780043C */  lui        $a0, %hi(D_80070328)
/* 6DDDF58 80076A28 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 6DDDF5C 80076A2C 1000228E */  lw         $v0, 0x10($s1)
/* 6DDDF60 80076A30 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6DDDF64 80076A34 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6DDDF68 80076A38 23206400 */  subu       $a0, $v1, $a0
/* 6DDDF6C 80076A3C 203A010C */  jal        func_8004E880
/* 6DDDF70 80076A40 23284500 */   subu      $a1, $v0, $a1
/* 6DDDF74 80076A44 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 6DDDF78 80076A48 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 6DDDF7C 80076A4C 4FD8000C */  jal        func_8003613C
/* 6DDDF80 80076A50 21284000 */   addu      $a1, $v0, $zero
/* 6DDDF84 80076A54 02004104 */  bgez       $v0, .Llevel_32_80076A60
/* 6DDDF88 80076A58 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 6DDDF8C 80076A5C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_32_80076A60:
/* 6DDDF90 80076A60 0C0042A6 */  sh         $v0, 0xC($s2)
/* 6DDDF94 80076A64 50000424 */  addiu      $a0, $zero, 0x50
/* 6DDDF98 80076A68 01000224 */  addiu      $v0, $zero, 0x1
/* 6DDDF9C 80076A6C 120040A2 */  sb         $zero, 0x12($s2)
/* 6DDDFA0 80076A70 480022A2 */  sb         $v0, 0x48($s1)
/* 6DDDFA4 80076A74 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 6DDDFA8 80076A78 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 6DDDFAC 80076A7C 82000524 */  addiu      $a1, $zero, 0x82
/* 6DDDFB0 80076A80 490040A0 */  sb         $zero, 0x49($v0)
/* 6DDDFB4 80076A84 DBD8000C */  jal        func_8003636C
/* 6DDDFB8 80076A88 140011AE */   sw        $s1, 0x14($s0)
/* 6DDDFBC 80076A8C 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_32_80076A90:
/* 6DDDFC0 80076A90 48002392 */  lbu        $v1, 0x48($s1)
/* 6DDDFC4 80076A94 00000000 */  nop
/* 6DDDFC8 80076A98 05006010 */  beqz       $v1, .Llevel_32_80076AB0
/* 6DDDFCC 80076A9C 01000224 */   addiu     $v0, $zero, 0x1
/* 6DDDFD0 80076AA0 92006210 */  beq        $v1, $v0, .Llevel_32_80076CEC
/* 6DDDFD4 80076AA4 00000000 */   nop
/* 6DDDFD8 80076AA8 70DB0108 */  j          .Llevel_32_80076DC0
/* 6DDDFDC 80076AAC 00000000 */   nop
.Llevel_32_80076AB0:
/* 6DDDFE0 80076AB0 0E004426 */  addiu      $a0, $s2, 0xE
/* 6DDDFE4 80076AB4 69D6000C */  jal        func_800359A4
/* 6DDDFE8 80076AB8 02000524 */   addiu     $a1, $zero, 0x2
/* 6DDDFEC 80076ABC 09004010 */  beqz       $v0, .Llevel_32_80076AE4
/* 6DDDFF0 80076AC0 00000000 */   nop
/* 6DDDFF4 80076AC4 4D002292 */  lbu        $v0, 0x4D($s1)
/* 6DDDFF8 80076AC8 00000000 */  nop
/* 6DDDFFC 80076ACC 09004014 */  bnez       $v0, .Llevel_32_80076AF4
/* 6DDE000 80076AD0 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_32_80076AD4:
/* 6DDE004 80076AD4 C656010C */  jal        func_80055B18
/* 6DDE008 80076AD8 21202002 */   addu      $a0, $s1, $zero
/* 6DDE00C 80076ADC B6DB0108 */  j          .Llevel_32_80076ED8
/* 6DDE010 80076AE0 00000000 */   nop
.Llevel_32_80076AE4:
/* 6DDE014 80076AE4 4D002292 */  lbu        $v0, 0x4D($s1)
/* 6DDE018 80076AE8 00000000 */  nop
/* 6DDE01C 80076AEC B8004010 */  beqz       $v0, .Llevel_32_80076DD0
/* 6DDE020 80076AF0 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_32_80076AF4:
/* 6DDE024 80076AF4 B2004010 */  beqz       $v0, .Llevel_32_80076DC0
/* 6DDE028 80076AF8 11004426 */   addiu     $a0, $s2, 0x11
/* 6DDE02C 80076AFC 69D6000C */  jal        func_800359A4
/* 6DDE030 80076B00 01000524 */   addiu     $a1, $zero, 0x1
/* 6DDE034 80076B04 13004010 */  beqz       $v0, .Llevel_32_80076B54
/* 6DDE038 80076B08 21202002 */   addu      $a0, $s1, $zero
/* 6DDE03C 80076B0C 1E000424 */  addiu      $a0, $zero, 0x1E
/* 6DDE040 80076B10 F7D8000C */  jal        func_800363DC
/* 6DDE044 80076B14 5A000524 */   addiu     $a1, $zero, 0x5A
/* 6DDE048 80076B18 9171010C */  jal        rand
/* 6DDE04C 80076B1C 21804000 */   addu      $s0, $v0, $zero
/* 6DDE050 80076B20 01004230 */  andi       $v0, $v0, 0x1
/* 6DDE054 80076B24 02004010 */  beqz       $v0, .Llevel_32_80076B30
/* 6DDE058 80076B28 00000000 */   nop
/* 6DDE05C 80076B2C 23801000 */  negu       $s0, $s0
.Llevel_32_80076B30:
/* 6DDE060 80076B30 10004492 */  lbu        $a0, 0x10($s2)
/* 6DDE064 80076B34 5FD8000C */  jal        func_8003617C
/* 6DDE068 80076B38 21280002 */   addu      $a1, $s0, $zero
/* 6DDE06C 80076B3C 3C000424 */  addiu      $a0, $zero, 0x3C
/* 6DDE070 80076B40 8C000524 */  addiu      $a1, $zero, 0x8C
/* 6DDE074 80076B44 DBD8000C */  jal        func_8003636C
/* 6DDE078 80076B48 100042A2 */   sb        $v0, 0x10($s2)
/* 6DDE07C 80076B4C 110042A2 */  sb         $v0, 0x11($s2)
/* 6DDE080 80076B50 21202002 */  addu       $a0, $s1, $zero
.Llevel_32_80076B54:
/* 6DDE084 80076B54 04000624 */  addiu      $a2, $zero, 0x4
/* 6DDE088 80076B58 0A000724 */  addiu      $a3, $zero, 0xA
/* 6DDE08C 80076B5C 10004592 */  lbu        $a1, 0x10($s2)
/* 6DDE090 80076B60 01000224 */  addiu      $v0, $zero, 0x1
/* 6DDE094 80076B64 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DDE098 80076B68 17D6000C */  jal        func_8003585C
/* 6DDE09C 80076B6C 1400A0AF */   sw        $zero, 0x14($sp)
/* 6DDE0A0 80076B70 21A04000 */  addu       $s4, $v0, $zero
/* 6DDE0A4 80076B74 0780033C */  lui        $v1, %hi(D_8006C648)
/* 6DDE0A8 80076B78 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 6DDE0AC 80076B7C 03000224 */  addiu      $v0, $zero, 0x3
/* 6DDE0B0 80076B80 03006214 */  bne        $v1, $v0, .Llevel_32_80076B90
/* 6DDE0B4 80076B84 1E000424 */   addiu     $a0, $zero, 0x1E
/* 6DDE0B8 80076B88 E8DA0108 */  j          .Llevel_32_80076BA0
/* 6DDE0BC 80076B8C 2D000424 */   addiu     $a0, $zero, 0x2D
.Llevel_32_80076B90:
/* 6DDE0C0 80076B90 04000224 */  addiu      $v0, $zero, 0x4
/* 6DDE0C4 80076B94 02006214 */  bne        $v1, $v0, .Llevel_32_80076BA0
/* 6DDE0C8 80076B98 00000000 */   nop
/* 6DDE0CC 80076B9C 3C000424 */  addiu      $a0, $zero, 0x3C
.Llevel_32_80076BA0:
/* 6DDE0D0 80076BA0 46002292 */  lbu        $v0, 0x46($s1)
/* 6DDE0D4 80076BA4 00000000 */  nop
/* 6DDE0D8 80076BA8 40100200 */  sll        $v0, $v0, 1
/* 6DDE0DC 80076BAC 0680013C */  lui        $at, %hi(D_80065920)
/* 6DDE0E0 80076BB0 21082200 */  addu       $at, $at, $v0
/* 6DDE0E4 80076BB4 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DDE0E8 80076BB8 00000000 */  nop
/* 6DDE0EC 80076BBC 18004400 */  mult       $v0, $a0
/* 6DDE0F0 80076BC0 12400000 */  mflo       $t0
/* 6DDE0F4 80076BC4 03130800 */  sra        $v0, $t0, 12
/* 6DDE0F8 80076BC8 3800A2AF */  sw         $v0, 0x38($sp)
/* 6DDE0FC 80076BCC 46002292 */  lbu        $v0, 0x46($s1)
/* 6DDE100 80076BD0 00000000 */  nop
/* 6DDE104 80076BD4 40100200 */  sll        $v0, $v0, 1
/* 6DDE108 80076BD8 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DDE10C 80076BDC 21082200 */  addu       $at, $at, $v0
/* 6DDE110 80076BE0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 6DDE114 80076BE4 00000000 */  nop
/* 6DDE118 80076BE8 18004400 */  mult       $v0, $a0
/* 6DDE11C 80076BEC 0C003026 */  addiu      $s0, $s1, 0xC
/* 6DDE120 80076BF0 21300002 */  addu       $a2, $s0, $zero
/* 6DDE124 80076BF4 4000A0AF */  sw         $zero, 0x40($sp)
/* 6DDE128 80076BF8 3800A427 */  addiu      $a0, $sp, 0x38
/* 6DDE12C 80076BFC 21288000 */  addu       $a1, $a0, $zero
/* 6DDE130 80076C00 12400000 */  mflo       $t0
/* 6DDE134 80076C04 03130800 */  sra        $v0, $t0, 12
/* 6DDE138 80076C08 653C010C */  jal        func_8004F194
/* 6DDE13C 80076C0C 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 6DDE140 80076C10 3800A427 */  addiu      $a0, $sp, 0x38
/* 6DDE144 80076C14 6564000C */  jal        func_80019194
/* 6DDE148 80076C18 32000524 */   addiu     $a1, $zero, 0x32
/* 6DDE14C 80076C1C 21984000 */  addu       $s3, $v0, $zero
/* 6DDE150 80076C20 03006016 */  bnez       $s3, .Llevel_32_80076C30
/* 6DDE154 80076C24 21200002 */   addu      $a0, $s0, $zero
/* 6DDE158 80076C28 5E3C010C */  jal        func_8004F178
/* 6DDE15C 80076C2C 3800A527 */   addiu     $a1, $sp, 0x38
.Llevel_32_80076C30:
/* 6DDE160 80076C30 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DDE164 80076C34 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DDE168 80076C38 00000000 */  nop
/* 6DDE16C 80076C3C 04004230 */  andi       $v0, $v0, 0x4
/* 6DDE170 80076C40 06004014 */  bnez       $v0, .Llevel_32_80076C5C
/* 6DDE174 80076C44 00000000 */   nop
/* 6DDE178 80076C48 21200002 */  addu       $a0, $s0, $zero
/* 6DDE17C 80076C4C D668000C */  jal        func_8001A358
/* 6DDE180 80076C50 00080524 */   addiu     $a1, $zero, 0x800
/* 6DDE184 80076C54 A758010C */  jal        func_8005629C
/* 6DDE188 80076C58 21202002 */   addu      $a0, $s1, $zero
.Llevel_32_80076C5C:
/* 6DDE18C 80076C5C 0D008012 */  beqz       $s4, .Llevel_32_80076C94
/* 6DDE190 80076C60 00000000 */   nop
/* 6DDE194 80076C64 0B006012 */  beqz       $s3, .Llevel_32_80076C94
/* 6DDE198 80076C68 62000424 */   addiu     $a0, $zero, 0x62
/* 6DDE19C 80076C6C DBD8000C */  jal        func_8003636C
/* 6DDE1A0 80076C70 9E000524 */   addiu     $a1, $zero, 0x9E
/* 6DDE1A4 80076C74 10004492 */  lbu        $a0, 0x10($s2)
/* 6DDE1A8 80076C78 5FD8000C */  jal        func_8003617C
/* 6DDE1AC 80076C7C 21284000 */   addu      $a1, $v0, $zero
/* 6DDE1B0 80076C80 1E000424 */  addiu      $a0, $zero, 0x1E
/* 6DDE1B4 80076C84 50000524 */  addiu      $a1, $zero, 0x50
/* 6DDE1B8 80076C88 DBD8000C */  jal        func_8003636C
/* 6DDE1BC 80076C8C 100042A2 */   sb        $v0, 0x10($s2)
/* 6DDE1C0 80076C90 110042A2 */  sb         $v0, 0x11($s2)
.Llevel_32_80076C94:
/* 6DDE1C4 80076C94 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DDE1C8 80076C98 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DDE1CC 80076C9C 00000000 */  nop
/* 6DDE1D0 80076CA0 03004230 */  andi       $v0, $v0, 0x3
/* 6DDE1D4 80076CA4 46004014 */  bnez       $v0, .Llevel_32_80076DC0
/* 6DDE1D8 80076CA8 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DDE1DC 80076CAC CD3C010C */  jal        func_8004F334
/* 6DDE1E0 80076CB0 21284002 */   addu      $a1, $s2, $zero
/* 6DDE1E4 80076CB4 D1074228 */  slti       $v0, $v0, 0x7D1
/* 6DDE1E8 80076CB8 41004014 */  bnez       $v0, .Llevel_32_80076DC0
/* 6DDE1EC 80076CBC 21300000 */   addu      $a2, $zero, $zero
/* 6DDE1F0 80076CC0 0000438E */  lw         $v1, 0x0($s2)
/* 6DDE1F4 80076CC4 0C00248E */  lw         $a0, 0xC($s1)
/* 6DDE1F8 80076CC8 0400428E */  lw         $v0, 0x4($s2)
/* 6DDE1FC 80076CCC 1000258E */  lw         $a1, 0x10($s1)
/* 6DDE200 80076CD0 23206400 */  subu       $a0, $v1, $a0
/* 6DDE204 80076CD4 203A010C */  jal        func_8004E880
/* 6DDE208 80076CD8 23284500 */   subu      $a1, $v0, $a1
/* 6DDE20C 80076CDC 100042A2 */  sb         $v0, 0x10($s2)
/* 6DDE210 80076CE0 28000224 */  addiu      $v0, $zero, 0x28
/* 6DDE214 80076CE4 70DB0108 */  j          .Llevel_32_80076DC0
/* 6DDE218 80076CE8 110042A2 */   sb        $v0, 0x11($s2)
.Llevel_32_80076CEC:
/* 6DDE21C 80076CEC 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 6DDE220 80076CF0 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 6DDE224 80076CF4 00000000 */  nop
/* 6DDE228 80076CF8 30004010 */  beqz       $v0, .Llevel_32_80076DBC
/* 6DDE22C 80076CFC 21300000 */   addu      $a2, $zero, $zero
/* 6DDE230 80076D00 0780103C */  lui        $s0, %hi(D_80070328)
/* 6DDE234 80076D04 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 6DDE238 80076D08 0C00238E */  lw         $v1, 0xC($s1)
/* 6DDE23C 80076D0C 0000048E */  lw         $a0, 0x0($s0)
/* 6DDE240 80076D10 1000228E */  lw         $v0, 0x10($s1)
/* 6DDE244 80076D14 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6DDE248 80076D18 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6DDE24C 80076D1C 23206400 */  subu       $a0, $v1, $a0
/* 6DDE250 80076D20 203A010C */  jal        func_8004E880
/* 6DDE254 80076D24 23284500 */   subu      $a1, $v0, $a1
/* 6DDE258 80076D28 0C004386 */  lh         $v1, 0xC($s2)
/* 6DDE25C 80076D2C 21204000 */  addu       $a0, $v0, $zero
/* 6DDE260 80076D30 80280300 */  sll        $a1, $v1, 2
/* 6DDE264 80076D34 2128A300 */  addu       $a1, $a1, $v1
/* 6DDE268 80076D38 5FD8000C */  jal        func_8003617C
/* 6DDE26C 80076D3C 40280500 */   sll       $a1, $a1, 1
/* 6DDE270 80076D40 21202002 */  addu       $a0, $s1, $zero
/* 6DDE274 80076D44 21280002 */  addu       $a1, $s0, $zero
/* 6DDE278 80076D48 20030624 */  addiu      $a2, $zero, 0x320
/* 6DDE27C 80076D4C 21384000 */  addu       $a3, $v0, $zero
/* 6DDE280 80076D50 0780033C */  lui        $v1, %hi(unk_ovlheader_80074314)
/* 6DDE284 80076D54 1443638C */  lw         $v1, %lo(unk_ovlheader_80074314)($v1)
/* 6DDE288 80076D58 08000224 */  addiu      $v0, $zero, 0x8
/* 6DDE28C 80076D5C 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DDE290 80076D60 78000224 */  addiu      $v0, $zero, 0x78
/* 6DDE294 80076D64 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DDE298 80076D68 0E000224 */  addiu      $v0, $zero, 0xE
/* 6DDE29C 80076D6C 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DDE2A0 80076D70 80000224 */  addiu      $v0, $zero, 0x80
/* 6DDE2A4 80076D74 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 6DDE2A8 80076D78 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DDE2AC 80076D7C 2000A2AF */  sw         $v0, 0x20($sp)
/* 6DDE2B0 80076D80 2400A2AF */  sw         $v0, 0x24($sp)
/* 6DDE2B4 80076D84 2800A0AF */  sw         $zero, 0x28($sp)
/* 6DDE2B8 80076D88 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 6DDE2BC 80076D8C 09F86000 */  jalr       $v1
/* 6DDE2C0 80076D90 3000A0AF */   sw        $zero, 0x30($sp)
/* 6DDE2C4 80076D94 0A004104 */  bgez       $v0, .Llevel_32_80076DC0
/* 6DDE2C8 80076D98 00000000 */   nop
/* 6DDE2CC 80076D9C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 6DDE2D0 80076DA0 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 6DDE2D4 80076DA4 00000000 */  nop
/* 6DDE2D8 80076DA8 05004010 */  beqz       $v0, .Llevel_32_80076DC0
/* 6DDE2DC 80076DAC 00000000 */   nop
/* 6DDE2E0 80076DB0 0000428C */  lw         $v0, 0x0($v0)
/* 6DDE2E4 80076DB4 70DB0108 */  j          .Llevel_32_80076DC0
/* 6DDE2E8 80076DB8 000040A4 */   sh        $zero, 0x0($v0)
.Llevel_32_80076DBC:
/* 6DDE2EC 80076DBC 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_32_80076DC0:
/* 6DDE2F0 80076DC0 4D002292 */  lbu        $v0, 0x4D($s1)
/* 6DDE2F4 80076DC4 00000000 */  nop
/* 6DDE2F8 80076DC8 05004014 */  bnez       $v0, .Llevel_32_80076DE0
/* 6DDE2FC 80076DCC 00000000 */   nop
.Llevel_32_80076DD0:
/* 6DDE300 80076DD0 48002392 */  lbu        $v1, 0x48($s1)
/* 6DDE304 80076DD4 01000224 */  addiu      $v0, $zero, 0x1
/* 6DDE308 80076DD8 2E006214 */  bne        $v1, $v0, .Llevel_32_80076E94
/* 6DDE30C 80076DDC 00000000 */   nop
.Llevel_32_80076DE0:
/* 6DDE310 80076DE0 4ED7000C */  jal        func_80035D38
/* 6DDE314 80076DE4 21202002 */   addu      $a0, $s1, $zero
/* 6DDE318 80076DE8 21202002 */  addu       $a0, $s1, $zero
/* 6DDE31C 80076DEC A758010C */  jal        func_8005629C
/* 6DDE320 80076DF0 21804000 */   addu      $s0, $v0, $zero
/* 6DDE324 80076DF4 27000012 */  beqz       $s0, .Llevel_32_80076E94
/* 6DDE328 80076DF8 00000000 */   nop
/* 6DDE32C 80076DFC 12004492 */  lbu        $a0, 0x12($s2)
/* 6DDE330 80076E00 00000000 */  nop
/* 6DDE334 80076E04 40100400 */  sll        $v0, $a0, 1
/* 6DDE338 80076E08 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DDE33C 80076E0C 21082200 */  addu       $at, $at, $v0
/* 6DDE340 80076E10 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DDE344 80076E14 13004292 */  lbu        $v0, 0x13($s2)
/* 6DDE348 80076E18 00000000 */  nop
/* 6DDE34C 80076E1C 18006200 */  mult       $v1, $v0
/* 6DDE350 80076E20 12400000 */  mflo       $t0
/* 6DDE354 80076E24 03130800 */  sra        $v0, $t0, 12
/* 6DDE358 80076E28 80024224 */  addiu      $v0, $v0, 0x280
/* 6DDE35C 80076E2C 04008010 */  beqz       $a0, .Llevel_32_80076E40
/* 6DDE360 80076E30 21800202 */   addu      $s0, $s0, $v0
/* 6DDE364 80076E34 80000224 */  addiu      $v0, $zero, 0x80
/* 6DDE368 80076E38 05008214 */  bne        $a0, $v0, .Llevel_32_80076E50
/* 6DDE36C 80076E3C 00000000 */   nop
.Llevel_32_80076E40:
/* 6DDE370 80076E40 00010424 */  addiu      $a0, $zero, 0x100
/* 6DDE374 80076E44 DBD8000C */  jal        func_8003636C
/* 6DDE378 80076E48 00020524 */   addiu     $a1, $zero, 0x200
/* 6DDE37C 80076E4C 130042A2 */  sb         $v0, 0x13($s2)
.Llevel_32_80076E50:
/* 6DDE380 80076E50 12004292 */  lbu        $v0, 0x12($s2)
/* 6DDE384 80076E54 00000000 */  nop
/* 6DDE388 80076E58 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 6DDE38C 80076E5C 120042A2 */  sb         $v0, 0x12($s2)
/* 6DDE390 80076E60 1400238E */  lw         $v1, 0x14($s1)
/* 6DDE394 80076E64 00000000 */  nop
/* 6DDE398 80076E68 23800302 */  subu       $s0, $s0, $v1
/* 6DDE39C 80076E6C 2100022A */  slti       $v0, $s0, 0x21
/* 6DDE3A0 80076E70 03004014 */  bnez       $v0, .Llevel_32_80076E80
/* 6DDE3A4 80076E74 E0FF022A */   slti      $v0, $s0, -0x20
/* 6DDE3A8 80076E78 20001024 */  addiu      $s0, $zero, 0x20
/* 6DDE3AC 80076E7C E0FF022A */  slti       $v0, $s0, -0x20
.Llevel_32_80076E80:
/* 6DDE3B0 80076E80 03004010 */  beqz       $v0, .Llevel_32_80076E90
/* 6DDE3B4 80076E84 21107000 */   addu      $v0, $v1, $s0
/* 6DDE3B8 80076E88 E0FF1024 */  addiu      $s0, $zero, -0x20
/* 6DDE3BC 80076E8C 21107000 */  addu       $v0, $v1, $s0
.Llevel_32_80076E90:
/* 6DDE3C0 80076E90 140022AE */  sw         $v0, 0x14($s1)
.Llevel_32_80076E94:
/* 6DDE3C4 80076E94 36002386 */  lh         $v1, 0x36($s1)
/* 6DDE3C8 80076E98 D3000224 */  addiu      $v0, $zero, 0xD3
/* 6DDE3CC 80076E9C 0E006214 */  bne        $v1, $v0, .Llevel_32_80076ED8
/* 6DDE3D0 80076EA0 00000000 */   nop
/* 6DDE3D4 80076EA4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DDE3D8 80076EA8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DDE3DC 80076EAC 00000000 */  nop
/* 6DDE3E0 80076EB0 01004230 */  andi       $v0, $v0, 0x1
/* 6DDE3E4 80076EB4 08004014 */  bnez       $v0, .Llevel_32_80076ED8
/* 6DDE3E8 80076EB8 01000424 */   addiu     $a0, $zero, 0x1
/* 6DDE3EC 80076EBC 0C000524 */  addiu      $a1, $zero, 0xC
/* 6DDE3F0 80076EC0 21302002 */  addu       $a2, $s1, $zero
/* 6DDE3F4 80076EC4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DDE3F8 80076EC8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DDE3FC 80076ECC 00000000 */  nop
/* 6DDE400 80076ED0 09F84000 */  jalr       $v0
/* 6DDE404 80076ED4 06000724 */   addiu     $a3, $zero, 0x6
.Llevel_32_80076ED8:
/* 6DDE408 80076ED8 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 6DDE40C 80076EDC 5800B48F */  lw         $s4, 0x58($sp)
/* 6DDE410 80076EE0 5400B38F */  lw         $s3, 0x54($sp)
/* 6DDE414 80076EE4 5000B28F */  lw         $s2, 0x50($sp)
/* 6DDE418 80076EE8 4C00B18F */  lw         $s1, 0x4C($sp)
/* 6DDE41C 80076EEC 4800B08F */  lw         $s0, 0x48($sp)
/* 6DDE420 80076EF0 6000BD27 */  addiu      $sp, $sp, 0x60
/* 6DDE424 80076EF4 0800E003 */  jr         $ra
/* 6DDE428 80076EF8 00000000 */   nop
.size func_level_32_80076870, . - func_level_32_80076870
