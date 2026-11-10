.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_138_level_16
/* 4B9CFA4 8007BA74 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4B9CFA8 8007BA78 2000B0AF */  sw         $s0, 0x20($sp)
/* 4B9CFAC 8007BA7C 21808000 */  addu       $s0, $a0, $zero
/* 4B9CFB0 8007BA80 3000BFAF */  sw         $ra, 0x30($sp)
/* 4B9CFB4 8007BA84 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 4B9CFB8 8007BA88 2800B2AF */  sw         $s2, 0x28($sp)
/* 4B9CFBC 8007BA8C 2400B1AF */  sw         $s1, 0x24($sp)
/* 4B9CFC0 8007BA90 1800028E */  lw         $v0, 0x18($s0)
/* 4B9CFC4 8007BA94 0000118E */  lw         $s1, 0x0($s0)
/* 4B9CFC8 8007BA98 0D004010 */  beqz       $v0, .Llevel_16_8007BAD0
/* 4B9CFCC 8007BA9C 03000224 */   addiu     $v0, $zero, 0x3
/* 4B9CFD0 8007BAA0 48000392 */  lbu        $v1, 0x48($s0)
/* 4B9CFD4 8007BAA4 00000000 */  nop
/* 4B9CFD8 8007BAA8 09006210 */  beq        $v1, $v0, .Llevel_16_8007BAD0
/* 4B9CFDC 8007BAAC 21280000 */   addu      $a1, $zero, $zero
/* 4B9CFE0 8007BAB0 21300000 */  addu       $a2, $zero, $zero
/* 4B9CFE4 8007BAB4 9ADA000C */  jal        func_80036A68
/* 4B9CFE8 8007BAB8 21380000 */   addu      $a3, $zero, $zero
/* 4B9CFEC 8007BABC 21200002 */  addu       $a0, $s0, $zero
/* 4B9CFF0 8007BAC0 21282002 */  addu       $a1, $s1, $zero
/* 4B9CFF4 8007BAC4 05000624 */  addiu      $a2, $zero, 0x5
/* 4B9CFF8 8007BAC8 FEE2000C */  jal        func_80038BF8
/* 4B9CFFC 8007BACC 03000724 */   addiu     $a3, $zero, 0x3
.Llevel_16_8007BAD0:
/* 4B9D000 8007BAD0 180000AE */  sw         $zero, 0x18($s0)
/* 4B9D004 8007BAD4 2C00238E */  lw         $v1, 0x2C($s1)
/* 4B9D008 8007BAD8 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D00C 8007BADC 20006214 */  bne        $v1, $v0, .Llevel_16_8007BB60
/* 4B9D010 8007BAE0 00000000 */   nop
/* 4B9D014 8007BAE4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 4B9D018 8007BAE8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 4B9D01C 8007BAEC 00000000 */  nop
/* 4B9D020 8007BAF0 0A004014 */  bnez       $v0, .Llevel_16_8007BB1C
/* 4B9D024 8007BAF4 14000224 */   addiu     $v0, $zero, 0x14
/* 4B9D028 8007BAF8 1C000224 */  addiu      $v0, $zero, 0x1C
/* 4B9D02C 8007BAFC 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 4B9D030 8007BB00 14000224 */  addiu      $v0, $zero, 0x14
/* 4B9D034 8007BB04 080000AE */  sw         $zero, 0x8($s0)
/* 4B9D038 8007BB08 410000A2 */  sb         $zero, 0x41($s0)
/* 4B9D03C 8007BB0C 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 4B9D040 8007BB10 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 4B9D044 8007BB14 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D048 8007BB18 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_16_8007BB1C:
/* 4B9D04C 8007BB1C 48000392 */  lbu        $v1, 0x48($s0)
/* 4B9D050 8007BB20 00000000 */  nop
/* 4B9D054 8007BB24 10006214 */  bne        $v1, $v0, .Llevel_16_8007BB68
/* 4B9D058 8007BB28 01001224 */   addiu     $s2, $zero, 0x1
/* 4B9D05C 8007BB2C 49000292 */  lbu        $v0, 0x49($s0)
/* 4B9D060 8007BB30 00000000 */  nop
/* 4B9D064 8007BB34 81014010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D068 8007BB38 21200002 */   addu      $a0, $s0, $zero
/* 4B9D06C 8007BB3C 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9D070 8007BB40 01000324 */  addiu      $v1, $zero, 0x1
/* 4B9D074 8007BB44 30000224 */  addiu      $v0, $zero, 0x30
/* 4B9D078 8007BB48 490000A2 */  sb         $zero, 0x49($s0)
/* 4B9D07C 8007BB4C 410003A2 */  sb         $v1, 0x41($s0)
/* 4B9D080 8007BB50 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 4B9D084 8007BB54 4957010C */  jal        func_80055D24
/* 4B9D088 8007BB58 4D0003A2 */   sb        $v1, 0x4D($s0)
/* 4B9D08C 8007BB5C 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_16_8007BB60:
/* 4B9D090 8007BB60 48000392 */  lbu        $v1, 0x48($s0)
/* 4B9D094 8007BB64 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_16_8007BB68:
/* 4B9D098 8007BB68 C2007210 */  beq        $v1, $s2, .Llevel_16_8007BE74
/* 4B9D09C 8007BB6C 02006228 */   slti      $v0, $v1, 0x2
/* 4B9D0A0 8007BB70 05004010 */  beqz       $v0, .Llevel_16_8007BB88
/* 4B9D0A4 8007BB74 00000000 */   nop
/* 4B9D0A8 8007BB78 0A006010 */  beqz       $v1, .Llevel_16_8007BBA4
/* 4B9D0AC 8007BB7C 1C002426 */   addiu     $a0, $s1, 0x1C
/* 4B9D0B0 8007BB80 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D0B4 8007BB84 00000000 */   nop
.Llevel_16_8007BB88:
/* 4B9D0B8 8007BB88 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9D0BC 8007BB8C 04016210 */  beq        $v1, $v0, .Llevel_16_8007BFA0
/* 4B9D0C0 8007BB90 03000224 */   addiu     $v0, $zero, 0x3
/* 4B9D0C4 8007BB94 45016210 */  beq        $v1, $v0, .Llevel_16_8007C0AC
/* 4B9D0C8 8007BB98 21200002 */   addu      $a0, $s0, $zero
/* 4B9D0CC 8007BB9C 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D0D0 8007BBA0 00000000 */   nop
.Llevel_16_8007BBA4:
/* 4B9D0D4 8007BBA4 69D6000C */  jal        func_800359A4
/* 4B9D0D8 8007BBA8 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9D0DC 8007BBAC 2C004010 */  beqz       $v0, .Llevel_16_8007BC60
/* 4B9D0E0 8007BBB0 00000000 */   nop
/* 4B9D0E4 8007BBB4 2000228E */  lw         $v0, 0x20($s1)
/* 4B9D0E8 8007BBB8 00000000 */  nop
/* 4B9D0EC 8007BBBC 0100422C */  sltiu      $v0, $v0, 0x1
/* 4B9D0F0 8007BBC0 13004014 */  bnez       $v0, .Llevel_16_8007BC10
/* 4B9D0F4 8007BBC4 200022AE */   sw        $v0, 0x20($s1)
/* 4B9D0F8 8007BBC8 78000424 */  addiu      $a0, $zero, 0x78
/* 4B9D0FC 8007BBCC DBD8000C */  jal        func_8003636C
/* 4B9D100 8007BBD0 B4000524 */   addiu     $a1, $zero, 0xB4
/* 4B9D104 8007BBD4 1C0022AE */  sw         $v0, 0x1C($s1)
/* 4B9D108 8007BBD8 3D000292 */  lbu        $v0, 0x3D($s0)
/* 4B9D10C 8007BBDC 00000000 */  nop
/* 4B9D110 8007BBE0 1F004010 */  beqz       $v0, .Llevel_16_8007BC60
/* 4B9D114 8007BBE4 21200002 */   addu      $a0, $s0, $zero
/* 4B9D118 8007BBE8 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D11C 8007BBEC 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D120 8007BBF0 3D000292 */  lbu        $v0, 0x3D($s0)
/* 4B9D124 8007BBF4 3F000592 */  lbu        $a1, 0x3F($s0)
/* 4B9D128 8007BBF8 72000324 */  addiu      $v1, $zero, 0x72
/* 4B9D12C 8007BBFC 400003A2 */  sb         $v1, 0x40($s0)
/* 4B9D130 8007BC00 3D0000A2 */  sb         $zero, 0x3D($s0)
/* 4B9D134 8007BC04 3F0000A2 */  sb         $zero, 0x3F($s0)
/* 4B9D138 8007BC08 16EF0108 */  j          .Llevel_16_8007BC58
/* 4B9D13C 8007BC0C 3C0002A2 */   sb        $v0, 0x3C($s0)
.Llevel_16_8007BC10:
/* 4B9D140 8007BC10 B4000424 */  addiu      $a0, $zero, 0xB4
/* 4B9D144 8007BC14 DBD8000C */  jal        func_8003636C
/* 4B9D148 8007BC18 F0000524 */   addiu     $a1, $zero, 0xF0
/* 4B9D14C 8007BC1C 1C0022AE */  sw         $v0, 0x1C($s1)
/* 4B9D150 8007BC20 3D000292 */  lbu        $v0, 0x3D($s0)
/* 4B9D154 8007BC24 00000000 */  nop
/* 4B9D158 8007BC28 0D005210 */  beq        $v0, $s2, .Llevel_16_8007BC60
/* 4B9D15C 8007BC2C 21200002 */   addu      $a0, $s0, $zero
/* 4B9D160 8007BC30 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D164 8007BC34 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D168 8007BC38 3D000392 */  lbu        $v1, 0x3D($s0)
/* 4B9D16C 8007BC3C 3F000592 */  lbu        $a1, 0x3F($s0)
/* 4B9D170 8007BC40 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9D174 8007BC44 400002A2 */  sb         $v0, 0x40($s0)
/* 4B9D178 8007BC48 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D17C 8007BC4C 3D0002A2 */  sb         $v0, 0x3D($s0)
/* 4B9D180 8007BC50 3F0000A2 */  sb         $zero, 0x3F($s0)
/* 4B9D184 8007BC54 3C0003A2 */  sb         $v1, 0x3C($s0)
.Llevel_16_8007BC58:
/* 4B9D188 8007BC58 CDD5000C */  jal        func_80035734
/* 4B9D18C 8007BC5C 3E0005A2 */   sb        $a1, 0x3E($s0)
.Llevel_16_8007BC60:
/* 4B9D190 8007BC60 2000228E */  lw         $v0, 0x20($s1)
/* 4B9D194 8007BC64 00000000 */  nop
/* 4B9D198 8007BC68 0E004014 */  bnez       $v0, .Llevel_16_8007BCA4
/* 4B9D19C 8007BC6C 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9D1A0 8007BC70 3D000292 */  lbu        $v0, 0x3D($s0)
/* 4B9D1A4 8007BC74 00000000 */  nop
/* 4B9D1A8 8007BC78 3E004010 */  beqz       $v0, .Llevel_16_8007BD74
/* 4B9D1AC 8007BC7C 21200002 */   addu      $a0, $s0, $zero
/* 4B9D1B0 8007BC80 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9D1B4 8007BC84 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D1B8 8007BC88 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D1BC 8007BC8C 400002A2 */  sb         $v0, 0x40($s0)
/* 4B9D1C0 8007BC90 3D0000A2 */  sb         $zero, 0x3D($s0)
/* 4B9D1C4 8007BC94 CDD5000C */  jal        func_80035734
/* 4B9D1C8 8007BC98 3F0000A2 */   sb        $zero, 0x3F($s0)
/* 4B9D1CC 8007BC9C 5EEF0108 */  j          .Llevel_16_8007BD78
/* 4B9D1D0 8007BCA0 24002426 */   addiu     $a0, $s1, 0x24
.Llevel_16_8007BCA4:
/* 4B9D1D4 8007BCA4 3D000392 */  lbu        $v1, 0x3D($s0)
/* 4B9D1D8 8007BCA8 00000000 */  nop
/* 4B9D1DC 8007BCAC 09006210 */  beq        $v1, $v0, .Llevel_16_8007BCD4
/* 4B9D1E0 8007BCB0 21200002 */   addu      $a0, $s0, $zero
/* 4B9D1E4 8007BCB4 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9D1E8 8007BCB8 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D1EC 8007BCBC 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D1F0 8007BCC0 400002A2 */  sb         $v0, 0x40($s0)
/* 4B9D1F4 8007BCC4 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D1F8 8007BCC8 3D0002A2 */  sb         $v0, 0x3D($s0)
/* 4B9D1FC 8007BCCC CDD5000C */  jal        func_80035734
/* 4B9D200 8007BCD0 3F0000A2 */   sb        $zero, 0x3F($s0)
.Llevel_16_8007BCD4:
/* 4B9D204 8007BCD4 21200002 */  addu       $a0, $s0, $zero
/* 4B9D208 8007BCD8 00020624 */  addiu      $a2, $zero, 0x200
/* 4B9D20C 8007BCDC 2C010224 */  addiu      $v0, $zero, 0x12C
/* 4B9D210 8007BCE0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9D214 8007BCE4 03000224 */  addiu      $v0, $zero, 0x3
/* 4B9D218 8007BCE8 1400A2AF */  sw         $v0, 0x14($sp)
/* 4B9D21C 8007BCEC 80000224 */  addiu      $v0, $zero, 0x80
/* 4B9D220 8007BCF0 1800A2AF */  sw         $v0, 0x18($sp)
/* 4B9D224 8007BCF4 23000224 */  addiu      $v0, $zero, 0x23
/* 4B9D228 8007BCF8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 4B9D22C 8007BCFC 1800258E */  lw         $a1, 0x18($s1)
/* 4B9D230 8007BD00 A0D6000C */  jal        func_80035A80
/* 4B9D234 8007BD04 3C000724 */   addiu     $a3, $zero, 0x3C
/* 4B9D238 8007BD08 01004230 */  andi       $v0, $v0, 0x1
/* 4B9D23C 8007BD0C 19004010 */  beqz       $v0, .Llevel_16_8007BD74
/* 4B9D240 8007BD10 01000424 */   addiu     $a0, $zero, 0x1
/* 4B9D244 8007BD14 1800228E */  lw         $v0, 0x18($s1)
/* 4B9D248 8007BD18 00000000 */  nop
/* 4B9D24C 8007BD1C 00004584 */  lh         $a1, 0x0($v0)
/* 4B9D250 8007BD20 DBD8000C */  jal        func_8003636C
/* 4B9D254 8007BD24 FEFFA524 */   addiu     $a1, $a1, -0x2
/* 4B9D258 8007BD28 1800258E */  lw         $a1, 0x18($s1)
/* 4B9D25C 8007BD2C 00000000 */  nop
/* 4B9D260 8007BD30 0200A384 */  lh         $v1, 0x2($a1)
/* 4B9D264 8007BD34 0000A484 */  lh         $a0, 0x0($a1)
/* 4B9D268 8007BD38 21186200 */  addu       $v1, $v1, $v0
/* 4B9D26C 8007BD3C 21186400 */  addu       $v1, $v1, $a0
/* 4B9D270 8007BD40 1A006400 */  div        $zero, $v1, $a0
/* 4B9D274 8007BD44 02008014 */  bnez       $a0, .Llevel_16_8007BD50
/* 4B9D278 8007BD48 00000000 */   nop
/* 4B9D27C 8007BD4C 0D000700 */  break      7
.Llevel_16_8007BD50:
/* 4B9D280 8007BD50 FFFF0124 */  addiu      $at, $zero, -0x1
/* 4B9D284 8007BD54 04008114 */  bne        $a0, $at, .Llevel_16_8007BD68
/* 4B9D288 8007BD58 0080013C */   lui       $at, (0x80000000 >> 16)
/* 4B9D28C 8007BD5C 02006114 */  bne        $v1, $at, .Llevel_16_8007BD68
/* 4B9D290 8007BD60 00000000 */   nop
/* 4B9D294 8007BD64 0D000600 */  break      6
.Llevel_16_8007BD68:
/* 4B9D298 8007BD68 10100000 */  mfhi       $v0
/* 4B9D29C 8007BD6C 00000000 */  nop
/* 4B9D2A0 8007BD70 0200A2A4 */  sh         $v0, 0x2($a1)
.Llevel_16_8007BD74:
/* 4B9D2A4 8007BD74 24002426 */  addiu      $a0, $s1, 0x24
.Llevel_16_8007BD78:
/* 4B9D2A8 8007BD78 69D6000C */  jal        func_800359A4
/* 4B9D2AC 8007BD7C 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9D2B0 8007BD80 EE004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D2B4 8007BD84 0C001326 */   addiu     $s3, $s0, 0xC
/* 4B9D2B8 8007BD88 21206002 */  addu       $a0, $s3, $zero
/* 4B9D2BC 8007BD8C 0780123C */  lui        $s2, %hi(D_80070328)
/* 4B9D2C0 8007BD90 28035226 */  addiu      $s2, $s2, %lo(D_80070328)
/* 4B9D2C4 8007BD94 CD3C010C */  jal        func_8004F334
/* 4B9D2C8 8007BD98 21284002 */   addu      $a1, $s2, $zero
/* 4B9D2CC 8007BD9C 70174228 */  slti       $v0, $v0, 0x1770
/* 4B9D2D0 8007BDA0 E6004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D2D4 8007BDA4 00000000 */   nop
/* 4B9D2D8 8007BDA8 0780023C */  lui        $v0, %hi(D_8006E344)
/* 4B9D2DC 8007BDAC 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 4B9D2E0 8007BDB0 00000000 */  nop
/* 4B9D2E4 8007BDB4 E1004014 */  bnez       $v0, .Llevel_16_8007C13C
/* 4B9D2E8 8007BDB8 21300000 */   addu      $a2, $zero, $zero
/* 4B9D2EC 8007BDBC 0000438E */  lw         $v1, 0x0($s2)
/* 4B9D2F0 8007BDC0 0C00048E */  lw         $a0, 0xC($s0)
/* 4B9D2F4 8007BDC4 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 4B9D2F8 8007BDC8 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 4B9D2FC 8007BDCC 1000058E */  lw         $a1, 0x10($s0)
/* 4B9D300 8007BDD0 23206400 */  subu       $a0, $v1, $a0
/* 4B9D304 8007BDD4 203A010C */  jal        func_8004E880
/* 4B9D308 8007BDD8 23284500 */   subu      $a1, $v0, $a1
/* 4B9D30C 8007BDDC 46000492 */  lbu        $a0, 0x46($s0)
/* 4B9D310 8007BDE0 993C010C */  jal        func_8004F264
/* 4B9D314 8007BDE4 21284000 */   addu      $a1, $v0, $zero
/* 4B9D318 8007BDE8 26004228 */  slti       $v0, $v0, 0x26
/* 4B9D31C 8007BDEC 07004014 */  bnez       $v0, .Llevel_16_8007BE0C
/* 4B9D320 8007BDF0 21300000 */   addu      $a2, $zero, $zero
/* 4B9D324 8007BDF4 21206002 */  addu       $a0, $s3, $zero
/* 4B9D328 8007BDF8 CD3C010C */  jal        func_8004F334
/* 4B9D32C 8007BDFC 21284002 */   addu      $a1, $s2, $zero
/* 4B9D330 8007BE00 D0074228 */  slti       $v0, $v0, 0x7D0
/* 4B9D334 8007BE04 CD004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D338 8007BE08 21300000 */   addu      $a2, $zero, $zero
.Llevel_16_8007BE0C:
/* 4B9D33C 8007BE0C 0C00038E */  lw         $v1, 0xC($s0)
/* 4B9D340 8007BE10 0780043C */  lui        $a0, %hi(D_8006E020)
/* 4B9D344 8007BE14 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 4B9D348 8007BE18 1000028E */  lw         $v0, 0x10($s0)
/* 4B9D34C 8007BE1C 0780053C */  lui        $a1, %hi(D_8006E024)
/* 4B9D350 8007BE20 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 4B9D354 8007BE24 23206400 */  subu       $a0, $v1, $a0
/* 4B9D358 8007BE28 203A010C */  jal        func_8004E880
/* 4B9D35C 8007BE2C 23284500 */   subu      $a1, $v0, $a1
/* 4B9D360 8007BE30 0780043C */  lui        $a0, %hi(D_8006E040)
/* 4B9D364 8007BE34 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 4B9D368 8007BE38 21284000 */  addu       $a1, $v0, $zero
/* 4B9D36C 8007BE3C 00240400 */  sll        $a0, $a0, 16
/* 4B9D370 8007BE40 993C010C */  jal        func_8004F264
/* 4B9D374 8007BE44 03250400 */   sra       $a0, $a0, 20
/* 4B9D378 8007BE48 1C004228 */  slti       $v0, $v0, 0x1C
/* 4B9D37C 8007BE4C BB004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D380 8007BE50 21200002 */   addu      $a0, $s0, $zero
/* 4B9D384 8007BE54 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9D388 8007BE58 B4000224 */  addiu      $v0, $zero, 0xB4
/* 4B9D38C 8007BE5C 240022AE */  sw         $v0, 0x24($s1)
/* 4B9D390 8007BE60 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D394 8007BE64 D0D3000C */  jal        func_80034F40
/* 4B9D398 8007BE68 480082A0 */   sb        $v0, 0x48($a0)
/* 4B9D39C 8007BE6C 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D3A0 8007BE70 00000000 */   nop
.Llevel_16_8007BE74:
/* 4B9D3A4 8007BE74 21200002 */  addu       $a0, $s0, $zero
/* 4B9D3A8 8007BE78 06000524 */  addiu      $a1, $zero, 0x6
/* 4B9D3AC 8007BE7C 21300000 */  addu       $a2, $zero, $zero
/* 4B9D3B0 8007BE80 CFD5000C */  jal        func_8003573C
/* 4B9D3B4 8007BE84 21380000 */   addu      $a3, $zero, $zero
/* 4B9D3B8 8007BE88 1800228E */  lw         $v0, 0x18($s1)
/* 4B9D3BC 8007BE8C 0C000426 */  addiu      $a0, $s0, 0xC
/* 4B9D3C0 8007BE90 02004584 */  lh         $a1, 0x2($v0)
/* 4B9D3C4 8007BE94 0C00428C */  lw         $v0, 0xC($v0)
/* 4B9D3C8 8007BE98 00290500 */  sll        $a1, $a1, 4
/* 4B9D3CC 8007BE9C CD3C010C */  jal        func_8004F334
/* 4B9D3D0 8007BEA0 21284500 */   addu      $a1, $v0, $a1
/* 4B9D3D4 8007BEA4 411F4228 */  slti       $v0, $v0, 0x1F41
/* 4B9D3D8 8007BEA8 20004010 */  beqz       $v0, .Llevel_16_8007BF2C
/* 4B9D3DC 8007BEAC 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9D3E0 8007BEB0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 4B9D3E4 8007BEB4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 4B9D3E8 8007BEB8 00000000 */  nop
/* 4B9D3EC 8007BEBC 1B004014 */  bnez       $v0, .Llevel_16_8007BF2C
/* 4B9D3F0 8007BEC0 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9D3F4 8007BEC4 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 4B9D3F8 8007BEC8 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 4B9D3FC 8007BECC 00000000 */  nop
/* 4B9D400 8007BED0 0D004014 */  bnez       $v0, .Llevel_16_8007BF08
/* 4B9D404 8007BED4 23000224 */   addiu     $v0, $zero, 0x23
/* 4B9D408 8007BED8 38000386 */  lh         $v1, 0x38($s0)
/* 4B9D40C 8007BEDC 1400028E */  lw         $v0, 0x14($s0)
/* 4B9D410 8007BEE0 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 4B9D414 8007BEE4 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 4B9D418 8007BEE8 23184300 */  subu       $v1, $v0, $v1
/* 4B9D41C 8007BEEC 23106400 */  subu       $v0, $v1, $a0
/* 4B9D420 8007BEF0 03004104 */  bgez       $v0, .Llevel_16_8007BF00
/* 4B9D424 8007BEF4 F5014228 */   slti      $v0, $v0, 0x1F5
/* 4B9D428 8007BEF8 23108300 */  subu       $v0, $a0, $v1
/* 4B9D42C 8007BEFC F5014228 */  slti       $v0, $v0, 0x1F5
.Llevel_16_8007BF00:
/* 4B9D430 8007BF00 09004010 */  beqz       $v0, .Llevel_16_8007BF28
/* 4B9D434 8007BF04 23000224 */   addiu     $v0, $zero, 0x23
.Llevel_16_8007BF08:
/* 4B9D438 8007BF08 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9D43C 8007BF0C 21200002 */  addu       $a0, $s0, $zero
/* 4B9D440 8007BF10 50000524 */  addiu      $a1, $zero, 0x50
/* 4B9D444 8007BF14 5E010624 */  addiu      $a2, $zero, 0x15E
/* 4B9D448 8007BF18 77D7000C */  jal        func_80035DDC
/* 4B9D44C 8007BF1C 5E010724 */   addiu     $a3, $zero, 0x15E
/* 4B9D450 8007BF20 12004010 */  beqz       $v0, .Llevel_16_8007BF6C
/* 4B9D454 8007BF24 00000000 */   nop
.Llevel_16_8007BF28:
/* 4B9D458 8007BF28 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_16_8007BF2C:
/* 4B9D45C 8007BF2C B4000324 */  addiu      $v1, $zero, 0xB4
/* 4B9D460 8007BF30 200022AE */  sw         $v0, 0x20($s1)
/* 4B9D464 8007BF34 1C0023AE */  sw         $v1, 0x1C($s1)
/* 4B9D468 8007BF38 3D000392 */  lbu        $v1, 0x3D($s0)
/* 4B9D46C 8007BF3C 00000000 */  nop
/* 4B9D470 8007BF40 09006210 */  beq        $v1, $v0, .Llevel_16_8007BF68
/* 4B9D474 8007BF44 21200002 */   addu      $a0, $s0, $zero
/* 4B9D478 8007BF48 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9D47C 8007BF4C 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D480 8007BF50 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D484 8007BF54 400002A2 */  sb         $v0, 0x40($s0)
/* 4B9D488 8007BF58 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D48C 8007BF5C 3D0002A2 */  sb         $v0, 0x3D($s0)
/* 4B9D490 8007BF60 CDD5000C */  jal        func_80035734
/* 4B9D494 8007BF64 3F0000A2 */   sb        $zero, 0x3F($s0)
.Llevel_16_8007BF68:
/* 4B9D498 8007BF68 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_16_8007BF6C:
/* 4B9D49C 8007BF6C 0780053C */  lui        $a1, %hi(D_80070328)
/* 4B9D4A0 8007BF70 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4B9D4A4 8007BF74 CD3C010C */  jal        func_8004F334
/* 4B9D4A8 8007BF78 0C000426 */   addiu     $a0, $s0, 0xC
/* 4B9D4AC 8007BF7C E8034228 */  slti       $v0, $v0, 0x3E8
/* 4B9D4B0 8007BF80 6E004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D4B4 8007BF84 02000224 */   addiu     $v0, $zero, 0x2
/* 4B9D4B8 8007BF88 480002A2 */  sb         $v0, 0x48($s0)
/* 4B9D4BC 8007BF8C 21200002 */  addu       $a0, $s0, $zero
/* 4B9D4C0 8007BF90 D0D3000C */  jal        func_80034F40
/* 4B9D4C4 8007BF94 02000524 */   addiu     $a1, $zero, 0x2
/* 4B9D4C8 8007BF98 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D4CC 8007BF9C 00000000 */   nop
.Llevel_16_8007BFA0:
/* 4B9D4D0 8007BFA0 21200002 */  addu       $a0, $s0, $zero
/* 4B9D4D4 8007BFA4 08000524 */  addiu      $a1, $zero, 0x8
/* 4B9D4D8 8007BFA8 21300000 */  addu       $a2, $zero, $zero
/* 4B9D4DC 8007BFAC CFD5000C */  jal        func_8003573C
/* 4B9D4E0 8007BFB0 21380000 */   addu      $a3, $zero, $zero
/* 4B9D4E4 8007BFB4 21200002 */  addu       $a0, $s0, $zero
/* 4B9D4E8 8007BFB8 4957010C */  jal        func_80055D24
/* 4B9D4EC 8007BFBC 05000524 */   addiu     $a1, $zero, 0x5
/* 4B9D4F0 8007BFC0 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 4B9D4F4 8007BFC4 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 4B9D4F8 8007BFC8 00000000 */  nop
/* 4B9D4FC 8007BFCC 21004014 */  bnez       $v0, .Llevel_16_8007C054
/* 4B9D500 8007BFD0 00000000 */   nop
/* 4B9D504 8007BFD4 38000386 */  lh         $v1, 0x38($s0)
/* 4B9D508 8007BFD8 1400028E */  lw         $v0, 0x14($s0)
/* 4B9D50C 8007BFDC 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 4B9D510 8007BFE0 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 4B9D514 8007BFE4 23184300 */  subu       $v1, $v0, $v1
/* 4B9D518 8007BFE8 23106400 */  subu       $v0, $v1, $a0
/* 4B9D51C 8007BFEC 05004004 */  bltz       $v0, .Llevel_16_8007C004
/* 4B9D520 8007BFF0 F5014228 */   slti      $v0, $v0, 0x1F5
/* 4B9D524 8007BFF4 07004010 */  beqz       $v0, .Llevel_16_8007C014
/* 4B9D528 8007BFF8 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9D52C 8007BFFC 15F00108 */  j          .Llevel_16_8007C054
/* 4B9D530 8007C000 00000000 */   nop
.Llevel_16_8007C004:
/* 4B9D534 8007C004 23108300 */  subu       $v0, $a0, $v1
/* 4B9D538 8007C008 F5014228 */  slti       $v0, $v0, 0x1F5
/* 4B9D53C 8007C00C 11004014 */  bnez       $v0, .Llevel_16_8007C054
/* 4B9D540 8007C010 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_16_8007C014:
/* 4B9D544 8007C014 B4000324 */  addiu      $v1, $zero, 0xB4
/* 4B9D548 8007C018 200022AE */  sw         $v0, 0x20($s1)
/* 4B9D54C 8007C01C 1C0023AE */  sw         $v1, 0x1C($s1)
/* 4B9D550 8007C020 3D000392 */  lbu        $v1, 0x3D($s0)
/* 4B9D554 8007C024 00000000 */  nop
/* 4B9D558 8007C028 09006210 */  beq        $v1, $v0, .Llevel_16_8007C050
/* 4B9D55C 8007C02C 21200002 */   addu      $a0, $s0, $zero
/* 4B9D560 8007C030 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9D564 8007C034 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D568 8007C038 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D56C 8007C03C 400002A2 */  sb         $v0, 0x40($s0)
/* 4B9D570 8007C040 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D574 8007C044 3D0002A2 */  sb         $v0, 0x3D($s0)
/* 4B9D578 8007C048 CDD5000C */  jal        func_80035734
/* 4B9D57C 8007C04C 3F0000A2 */   sb        $zero, 0x3F($s0)
.Llevel_16_8007C050:
/* 4B9D580 8007C050 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_16_8007C054:
/* 4B9D584 8007C054 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9D588 8007C058 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9D58C 8007C05C 00000000 */  nop
/* 4B9D590 8007C060 36004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D594 8007C064 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9D598 8007C068 B4000324 */  addiu      $v1, $zero, 0xB4
/* 4B9D59C 8007C06C 200022AE */  sw         $v0, 0x20($s1)
/* 4B9D5A0 8007C070 1C0023AE */  sw         $v1, 0x1C($s1)
/* 4B9D5A4 8007C074 3D000392 */  lbu        $v1, 0x3D($s0)
/* 4B9D5A8 8007C078 00000000 */  nop
/* 4B9D5AC 8007C07C 09006210 */  beq        $v1, $v0, .Llevel_16_8007C0A4
/* 4B9D5B0 8007C080 21200002 */   addu      $a0, $s0, $zero
/* 4B9D5B4 8007C084 72000224 */  addiu      $v0, $zero, 0x72
/* 4B9D5B8 8007C088 0780013C */  lui        $at, %hi(D_8006C770)
/* 4B9D5BC 8007C08C 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 4B9D5C0 8007C090 400002A2 */  sb         $v0, 0x40($s0)
/* 4B9D5C4 8007C094 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D5C8 8007C098 3D0002A2 */  sb         $v0, 0x3D($s0)
/* 4B9D5CC 8007C09C CDD5000C */  jal        func_80035734
/* 4B9D5D0 8007C0A0 3F0000A2 */   sb        $zero, 0x3F($s0)
.Llevel_16_8007C0A4:
/* 4B9D5D4 8007C0A4 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D5D8 8007C0A8 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_16_8007C0AC:
/* 4B9D5DC 8007C0AC 65D4000C */  jal        func_80035194
/* 4B9D5E0 8007C0B0 21282002 */   addu      $a1, $s1, $zero
/* 4B9D5E4 8007C0B4 21200002 */  addu       $a0, $s0, $zero
/* 4B9D5E8 8007C0B8 4957010C */  jal        func_80055D24
/* 4B9D5EC 8007C0BC 01000524 */   addiu     $a1, $zero, 0x1
/* 4B9D5F0 8007C0C0 0780023C */  lui        $v0, %hi(D_8006C770)
/* 4B9D5F4 8007C0C4 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 4B9D5F8 8007C0C8 00000000 */  nop
/* 4B9D5FC 8007C0CC 1B004010 */  beqz       $v0, .Llevel_16_8007C13C
/* 4B9D600 8007C0D0 00000000 */   nop
/* 4B9D604 8007C0D4 2C00228E */  lw         $v0, 0x2C($s1)
/* 4B9D608 8007C0D8 00000000 */  nop
/* 4B9D60C 8007C0DC 0E005214 */  bne        $v0, $s2, .Llevel_16_8007C118
/* 4B9D610 8007C0E0 21200002 */   addu      $a0, $s0, $zero
/* 4B9D614 8007C0E4 4957010C */  jal        func_80055D24
/* 4B9D618 8007C0E8 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9D61C 8007C0EC 21200002 */  addu       $a0, $s0, $zero
/* 4B9D620 8007C0F0 6EDA000C */  jal        func_800369B8
/* 4B9D624 8007C0F4 20000524 */   addiu     $a1, $zero, 0x20
/* 4B9D628 8007C0F8 14000224 */  addiu      $v0, $zero, 0x14
/* 4B9D62C 8007C0FC 080000AE */  sw         $zero, 0x8($s0)
/* 4B9D630 8007C100 410000A2 */  sb         $zero, 0x41($s0)
/* 4B9D634 8007C104 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 4B9D638 8007C108 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 4B9D63C 8007C10C 480002A2 */  sb         $v0, 0x48($s0)
/* 4B9D640 8007C110 4FF00108 */  j          .Llevel_16_8007C13C
/* 4B9D644 8007C114 490000A2 */   sb        $zero, 0x49($s0)
.Llevel_16_8007C118:
/* 4B9D648 8007C118 4957010C */  jal        func_80055D24
/* 4B9D64C 8007C11C 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9D650 8007C120 80EE000C */  jal        func_8003BA00
/* 4B9D654 8007C124 21200002 */   addu      $a0, $s0, $zero
/* 4B9D658 8007C128 21200002 */  addu       $a0, $s0, $zero
/* 4B9D65C 8007C12C 6EDA000C */  jal        func_800369B8
/* 4B9D660 8007C130 40000524 */   addiu     $a1, $zero, 0x40
/* 4B9D664 8007C134 C656010C */  jal        func_80055B18
/* 4B9D668 8007C138 21200002 */   addu      $a0, $s0, $zero
.Llevel_16_8007C13C:
/* 4B9D66C 8007C13C 3000BF8F */  lw         $ra, 0x30($sp)
/* 4B9D670 8007C140 2C00B38F */  lw         $s3, 0x2C($sp)
/* 4B9D674 8007C144 2800B28F */  lw         $s2, 0x28($sp)
/* 4B9D678 8007C148 2400B18F */  lw         $s1, 0x24($sp)
/* 4B9D67C 8007C14C 2000B08F */  lw         $s0, 0x20($sp)
/* 4B9D680 8007C150 3800BD27 */  addiu      $sp, $sp, 0x38
/* 4B9D684 8007C154 0800E003 */  jr         $ra
/* 4B9D688 8007C158 00000000 */   nop
.size MobyUpdate_138_level_16, . - MobyUpdate_138_level_16
