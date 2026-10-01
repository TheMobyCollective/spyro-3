.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_28_8007C98C
/* 655CEBC 8007C98C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 655CEC0 8007C990 2000B0AF */  sw         $s0, 0x20($sp)
/* 655CEC4 8007C994 21808000 */  addu       $s0, $a0, $zero
/* 655CEC8 8007C998 01000224 */  addiu      $v0, $zero, 0x1
/* 655CECC 8007C99C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 655CED0 8007C9A0 2800B2AF */  sw         $s2, 0x28($sp)
/* 655CED4 8007C9A4 2400B1AF */  sw         $s1, 0x24($sp)
/* 655CED8 8007C9A8 48000392 */  lbu        $v1, 0x48($s0)
/* 655CEDC 8007C9AC 0000128E */  lw         $s2, 0x0($s0)
/* 655CEE0 8007C9B0 71006210 */  beq        $v1, $v0, .Llevel_28_8007CB78
/* 655CEE4 8007C9B4 02006228 */   slti      $v0, $v1, 0x2
/* 655CEE8 8007C9B8 05004010 */  beqz       $v0, .Llevel_28_8007C9D0
/* 655CEEC 8007C9BC 00000000 */   nop
/* 655CEF0 8007C9C0 0A006010 */  beqz       $v1, .Llevel_28_8007C9EC
/* 655CEF4 8007C9C4 7F000224 */   addiu     $v0, $zero, 0x7F
/* 655CEF8 8007C9C8 16F30108 */  j          .Llevel_28_8007CC58
/* 655CEFC 8007C9CC 00000000 */   nop
.Llevel_28_8007C9D0:
/* 655CF00 8007C9D0 02000224 */  addiu      $v0, $zero, 0x2
/* 655CF04 8007C9D4 82006210 */  beq        $v1, $v0, .Llevel_28_8007CBE0
/* 655CF08 8007C9D8 03000224 */   addiu     $v0, $zero, 0x3
/* 655CF0C 8007C9DC 93006210 */  beq        $v1, $v0, .Llevel_28_8007CC2C
/* 655CF10 8007C9E0 00000000 */   nop
/* 655CF14 8007C9E4 16F30108 */  j          .Llevel_28_8007CC58
/* 655CF18 8007C9E8 00000000 */   nop
.Llevel_28_8007C9EC:
/* 655CF1C 8007C9EC 410000A2 */  sb         $zero, 0x41($s0)
/* 655CF20 8007C9F0 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 655CF24 8007C9F4 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 655CF28 8007C9F8 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 655CF2C 8007C9FC 0000438E */  lw         $v1, 0x0($s2)
/* 655CF30 8007CA00 00000000 */  nop
/* 655CF34 8007CA04 40100300 */  sll        $v0, $v1, 1
/* 655CF38 8007CA08 21104300 */  addu       $v0, $v0, $v1
/* 655CF3C 8007CA0C 80100200 */  sll        $v0, $v0, 2
/* 655CF40 8007CA10 23104300 */  subu       $v0, $v0, $v1
/* 655CF44 8007CA14 0780033C */  lui        $v1, %hi(D_8006C550)
/* 655CF48 8007CA18 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 655CF4C 8007CA1C C0100200 */  sll        $v0, $v0, 3
/* 655CF50 8007CA20 21104300 */  addu       $v0, $v0, $v1
/* 655CF54 8007CA24 48004290 */  lbu        $v0, 0x48($v0)
/* 655CF58 8007CA28 00000000 */  nop
/* 655CF5C 8007CA2C 80004230 */  andi       $v0, $v0, 0x80
/* 655CF60 8007CA30 89004010 */  beqz       $v0, .Llevel_28_8007CC58
/* 655CF64 8007CA34 84000424 */   addiu     $a0, $zero, 0x84
/* 655CF68 8007CA38 0400428E */  lw         $v0, 0x4($s2)
/* 655CF6C 8007CA3C 00000000 */  nop
/* 655CF70 8007CA40 40280200 */  sll        $a1, $v0, 1
/* 655CF74 8007CA44 2128A200 */  addu       $a1, $a1, $v0
/* 655CF78 8007CA48 80280500 */  sll        $a1, $a1, 2
/* 655CF7C 8007CA4C 2328A200 */  subu       $a1, $a1, $v0
/* 655CF80 8007CA50 C0280500 */  sll        $a1, $a1, 3
/* 655CF84 8007CA54 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 655CF88 8007CA58 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 655CF8C 8007CA5C 00000000 */  nop
/* 655CF90 8007CA60 09F84000 */  jalr       $v0
/* 655CF94 8007CA64 21286500 */   addu      $a1, $v1, $a1
/* 655CF98 8007CA68 21884000 */  addu       $s1, $v0, $zero
/* 655CF9C 8007CA6C 7A002012 */  beqz       $s1, .Llevel_28_8007CC58
/* 655CFA0 8007CA70 1000A427 */   addiu     $a0, $sp, 0x10
/* 655CFA4 8007CA74 0400438E */  lw         $v1, 0x4($s2)
/* 655CFA8 8007CA78 00000000 */  nop
/* 655CFAC 8007CA7C 40100300 */  sll        $v0, $v1, 1
/* 655CFB0 8007CA80 21104300 */  addu       $v0, $v0, $v1
/* 655CFB4 8007CA84 80100200 */  sll        $v0, $v0, 2
/* 655CFB8 8007CA88 23104300 */  subu       $v0, $v0, $v1
/* 655CFBC 8007CA8C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 655CFC0 8007CA90 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 655CFC4 8007CA94 C0100200 */  sll        $v0, $v0, 3
/* 655CFC8 8007CA98 21104300 */  addu       $v0, $v0, $v1
/* 655CFCC 8007CA9C 46004290 */  lbu        $v0, 0x46($v0)
/* 655CFD0 8007CAA0 0000238E */  lw         $v1, 0x0($s1)
/* 655CFD4 8007CAA4 460022A2 */  sb         $v0, 0x46($s1)
/* 655CFD8 8007CAA8 01000224 */  addiu      $v0, $zero, 0x1
/* 655CFDC 8007CAAC 000060A4 */  sh         $zero, 0x0($v1)
/* 655CFE0 8007CAB0 480022A2 */  sb         $v0, 0x48($s1)
/* 655CFE4 8007CAB4 480002A2 */  sb         $v0, 0x48($s0)
/* 655CFE8 8007CAB8 080051AE */  sw         $s1, 0x8($s2)
/* 655CFEC 8007CABC 46002292 */  lbu        $v0, 0x46($s1)
/* 655CFF0 8007CAC0 00000000 */  nop
/* 655CFF4 8007CAC4 40100200 */  sll        $v0, $v0, 1
/* 655CFF8 8007CAC8 0680013C */  lui        $at, %hi(D_80065920)
/* 655CFFC 8007CACC 21082200 */  addu       $at, $at, $v0
/* 655D000 8007CAD0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 655D004 8007CAD4 00000000 */  nop
/* 655D008 8007CAD8 40100300 */  sll        $v0, $v1, 1
/* 655D00C 8007CADC 21104300 */  addu       $v0, $v0, $v1
/* 655D010 8007CAE0 80100200 */  sll        $v0, $v0, 2
/* 655D014 8007CAE4 21104300 */  addu       $v0, $v0, $v1
/* 655D018 8007CAE8 43110200 */  sra        $v0, $v0, 5
/* 655D01C 8007CAEC 1000A2AF */  sw         $v0, 0x10($sp)
/* 655D020 8007CAF0 46002292 */  lbu        $v0, 0x46($s1)
/* 655D024 8007CAF4 21288000 */  addu       $a1, $a0, $zero
/* 655D028 8007CAF8 40100200 */  sll        $v0, $v0, 1
/* 655D02C 8007CAFC 0680013C */  lui        $at, %hi(D_800658A0)
/* 655D030 8007CB00 21082200 */  addu       $at, $at, $v0
/* 655D034 8007CB04 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 655D038 8007CB08 0780023C */  lui        $v0, %hi(D_80070328 + 0x44)
/* 655D03C 8007CB0C 6C03428C */  lw         $v0, %lo(D_80070328 + 0x44)($v0)
/* 655D040 8007CB10 0C002626 */  addiu      $a2, $s1, 0xC
/* 655D044 8007CB14 1800A0AF */  sw         $zero, 0x18($sp)
/* 655D048 8007CB18 1800A2AF */  sw         $v0, 0x18($sp)
/* 655D04C 8007CB1C 40100300 */  sll        $v0, $v1, 1
/* 655D050 8007CB20 21104300 */  addu       $v0, $v0, $v1
/* 655D054 8007CB24 80100200 */  sll        $v0, $v0, 2
/* 655D058 8007CB28 21104300 */  addu       $v0, $v0, $v1
/* 655D05C 8007CB2C 43110200 */  sra        $v0, $v0, 5
/* 655D060 8007CB30 653C010C */  jal        func_8004F194
/* 655D064 8007CB34 1400A2AF */   sw        $v0, 0x14($sp)
/* 655D068 8007CB38 1000A427 */  addiu      $a0, $sp, 0x10
/* 655D06C 8007CB3C 21300000 */  addu       $a2, $zero, $zero
/* 655D070 8007CB40 46002592 */  lbu        $a1, 0x46($s1)
/* 655D074 8007CB44 98000724 */  addiu      $a3, $zero, 0x98
/* 655D078 8007CB48 8000A524 */  addiu      $a1, $a1, 0x80
/* 655D07C 8007CB4C 514F000C */  jal        func_80013D44
/* 655D080 8007CB50 FF00A530 */   andi      $a1, $a1, 0xFF
/* 655D084 8007CB54 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 655D088 8007CB58 A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 655D08C 8007CB5C 00000000 */  nop
/* 655D090 8007CB60 3D004104 */  bgez       $v0, .Llevel_28_8007CC58
/* 655D094 8007CB64 00000000 */   nop
/* 655D098 8007CB68 0780013C */  lui        $at, %hi(D_80070328 + 0x280)
/* 655D09C 8007CB6C A80520AC */  sw         $zero, %lo(D_80070328 + 0x280)($at)
/* 655D0A0 8007CB70 16F30108 */  j          .Llevel_28_8007CC58
/* 655D0A4 8007CB74 00000000 */   nop
.Llevel_28_8007CB78:
/* 655D0A8 8007CB78 0800428E */  lw         $v0, 0x8($s2)
/* 655D0AC 8007CB7C 00000000 */  nop
/* 655D0B0 8007CB80 48004290 */  lbu        $v0, 0x48($v0)
/* 655D0B4 8007CB84 00000000 */  nop
/* 655D0B8 8007CB88 80004230 */  andi       $v0, $v0, 0x80
/* 655D0BC 8007CB8C 32004010 */  beqz       $v0, .Llevel_28_8007CC58
/* 655D0C0 8007CB90 0F000224 */   addiu     $v0, $zero, 0xF
/* 655D0C4 8007CB94 0780033C */  lui        $v1, %hi(D_8006E344)
/* 655D0C8 8007CB98 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 655D0CC 8007CB9C 00000000 */  nop
/* 655D0D0 8007CBA0 2D006210 */  beq        $v1, $v0, .Llevel_28_8007CC58
/* 655D0D4 8007CBA4 02000224 */   addiu     $v0, $zero, 0x2
/* 655D0D8 8007CBA8 480002A2 */  sb         $v0, 0x48($s0)
/* 655D0DC 8007CBAC 48001026 */  addiu      $s0, $s0, 0x48
/* 655D0E0 8007CBB0 21200002 */  addu       $a0, $s0, $zero
/* 655D0E4 8007CBB4 0780063C */  lui        $a2, %hi(D_8006D088)
/* 655D0E8 8007CBB8 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 655D0EC 8007CBBC EDED000C */  jal        func_8003B7B4
/* 655D0F0 8007CBC0 01000524 */   addiu     $a1, $zero, 0x1
/* 655D0F4 8007CBC4 21200002 */  addu       $a0, $s0, $zero
/* 655D0F8 8007CBC8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 655D0FC 8007CBCC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 655D100 8007CBD0 EDED000C */  jal        func_8003B7B4
/* 655D104 8007CBD4 01000524 */   addiu     $a1, $zero, 0x1
/* 655D108 8007CBD8 16F30108 */  j          .Llevel_28_8007CC58
/* 655D10C 8007CBDC 00000000 */   nop
.Llevel_28_8007CBE0:
/* 655D110 8007CBE0 5B020424 */  addiu      $a0, $zero, 0x25B
/* 655D114 8007CBE4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 655D118 8007CBE8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 655D11C 8007CBEC 00000000 */  nop
/* 655D120 8007CBF0 09F84000 */  jalr       $v0
/* 655D124 8007CBF4 21280002 */   addu      $a1, $s0, $zero
/* 655D128 8007CBF8 1400438C */  lw         $v1, 0x14($v0)
/* 655D12C 8007CBFC 450040A0 */  sb         $zero, 0x45($v0)
/* 655D130 8007CC00 00FE6324 */  addiu      $v1, $v1, -0x200
/* 655D134 8007CC04 140043AC */  sw         $v1, 0x14($v0)
/* 655D138 8007CC08 01000324 */  addiu      $v1, $zero, 0x1
/* 655D13C 8007CC0C 20000224 */  addiu      $v0, $zero, 0x20
/* 655D140 8007CC10 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 655D144 8007CC14 40000224 */  addiu      $v0, $zero, 0x40
/* 655D148 8007CC18 450002A2 */  sb         $v0, 0x45($s0)
/* 655D14C 8007CC1C 03000224 */  addiu      $v0, $zero, 0x3
/* 655D150 8007CC20 410003A2 */  sb         $v1, 0x41($s0)
/* 655D154 8007CC24 4D0003A2 */  sb         $v1, 0x4D($s0)
/* 655D158 8007CC28 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_28_8007CC2C:
/* 655D15C 8007CC2C 0780053C */  lui        $a1, %hi(D_80070328)
/* 655D160 8007CC30 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 655D164 8007CC34 CD3C010C */  jal        func_8004F334
/* 655D168 8007CC38 0C000426 */   addiu     $a0, $s0, 0xC
/* 655D16C 8007CC3C 00034228 */  slti       $v0, $v0, 0x300
/* 655D170 8007CC40 05004010 */  beqz       $v0, .Llevel_28_8007CC58
/* 655D174 8007CC44 21200000 */   addu      $a0, $zero, $zero
/* 655D178 8007CC48 0780053C */  lui        $a1, %hi(D_8006C5BC)
/* 655D17C 8007CC4C BCC5A58C */  lw         $a1, %lo(D_8006C5BC)($a1)
/* 655D180 8007CC50 2F61010C */  jal        WarpToLevel
/* 655D184 8007CC54 F8FFA524 */   addiu     $a1, $a1, -0x8
.Llevel_28_8007CC58:
/* 655D188 8007CC58 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 655D18C 8007CC5C 2800B28F */  lw         $s2, 0x28($sp)
/* 655D190 8007CC60 2400B18F */  lw         $s1, 0x24($sp)
/* 655D194 8007CC64 2000B08F */  lw         $s0, 0x20($sp)
/* 655D198 8007CC68 3000BD27 */  addiu      $sp, $sp, 0x30
/* 655D19C 8007CC6C 0800E003 */  jr         $ra
/* 655D1A0 8007CC70 00000000 */   nop
.size func_level_28_8007C98C, . - func_level_28_8007C98C
