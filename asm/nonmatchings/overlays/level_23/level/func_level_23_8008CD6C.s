.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8008CD6C
/* 5AA929C 8008CD6C 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 5AA92A0 8008CD70 7400B5AF */  sw         $s5, 0x74($sp)
/* 5AA92A4 8008CD74 21A88000 */  addu       $s5, $a0, $zero
/* 5AA92A8 8008CD78 6800B2AF */  sw         $s2, 0x68($sp)
/* 5AA92AC 8008CD7C 2190C000 */  addu       $s2, $a2, $zero
/* 5AA92B0 8008CD80 1000A427 */  addiu      $a0, $sp, 0x10
/* 5AA92B4 8008CD84 8400BFAF */  sw         $ra, 0x84($sp)
/* 5AA92B8 8008CD88 8000BEAF */  sw         $fp, 0x80($sp)
/* 5AA92BC 8008CD8C 7C00B7AF */  sw         $s7, 0x7C($sp)
/* 5AA92C0 8008CD90 7800B6AF */  sw         $s6, 0x78($sp)
/* 5AA92C4 8008CD94 7000B4AF */  sw         $s4, 0x70($sp)
/* 5AA92C8 8008CD98 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 5AA92CC 8008CD9C 6400B1AF */  sw         $s1, 0x64($sp)
/* 5AA92D0 8008CDA0 6000B0AF */  sw         $s0, 0x60($sp)
/* 5AA92D4 8008CDA4 4000A5AF */  sw         $a1, 0x40($sp)
/* 5AA92D8 8008CDA8 5A3C010C */  jal        func_8004F168
/* 5AA92DC 8008CDAC 4800A7AF */   sw        $a3, 0x48($sp)
/* 5AA92E0 8008CDB0 0A00A01A */  blez       $s5, .Llevel_23_8008CDDC
/* 5AA92E4 8008CDB4 21980000 */   addu      $s3, $zero, $zero
/* 5AA92E8 8008CDB8 4800B08F */  lw         $s0, 0x48($sp)
.Llevel_23_8008CDBC:
/* 5AA92EC 8008CDBC 1000A427 */  addiu      $a0, $sp, 0x10
/* 5AA92F0 8008CDC0 21288000 */  addu       $a1, $a0, $zero
/* 5AA92F4 8008CDC4 653C010C */  jal        func_8004F194
/* 5AA92F8 8008CDC8 21300002 */   addu      $a2, $s0, $zero
/* 5AA92FC 8008CDCC 01007326 */  addiu      $s3, $s3, 0x1
/* 5AA9300 8008CDD0 2A107502 */  slt        $v0, $s3, $s5
/* 5AA9304 8008CDD4 F9FF4014 */  bnez       $v0, .Llevel_23_8008CDBC
/* 5AA9308 8008CDD8 0C001026 */   addiu     $s0, $s0, 0xC
.Llevel_23_8008CDDC:
/* 5AA930C 8008CDDC 1000A68F */  lw         $a2, 0x10($sp)
/* 5AA9310 8008CDE0 00000000 */  nop
/* 5AA9314 8008CDE4 1A00D500 */  div        $zero, $a2, $s5
/* 5AA9318 8008CDE8 0200A016 */  bnez       $s5, .Llevel_23_8008CDF4
/* 5AA931C 8008CDEC 00000000 */   nop
/* 5AA9320 8008CDF0 0D000700 */  break      7
.Llevel_23_8008CDF4:
/* 5AA9324 8008CDF4 FFFF0124 */  addiu      $at, $zero, -0x1
/* 5AA9328 8008CDF8 0400A116 */  bne        $s5, $at, .Llevel_23_8008CE0C
/* 5AA932C 8008CDFC 0080013C */   lui       $at, (0x80000000 >> 16)
/* 5AA9330 8008CE00 0200C114 */  bne        $a2, $at, .Llevel_23_8008CE0C
/* 5AA9334 8008CE04 00000000 */   nop
/* 5AA9338 8008CE08 0D000600 */  break      6
.Llevel_23_8008CE0C:
/* 5AA933C 8008CE0C 12300000 */  mflo       $a2
/* 5AA9340 8008CE10 1400A38F */  lw         $v1, 0x14($sp)
/* 5AA9344 8008CE14 00000000 */  nop
/* 5AA9348 8008CE18 1A007500 */  div        $zero, $v1, $s5
/* 5AA934C 8008CE1C 0200A016 */  bnez       $s5, .Llevel_23_8008CE28
/* 5AA9350 8008CE20 00000000 */   nop
/* 5AA9354 8008CE24 0D000700 */  break      7
.Llevel_23_8008CE28:
/* 5AA9358 8008CE28 FFFF0124 */  addiu      $at, $zero, -0x1
/* 5AA935C 8008CE2C 0400A116 */  bne        $s5, $at, .Llevel_23_8008CE40
/* 5AA9360 8008CE30 0080013C */   lui       $at, (0x80000000 >> 16)
/* 5AA9364 8008CE34 02006114 */  bne        $v1, $at, .Llevel_23_8008CE40
/* 5AA9368 8008CE38 00000000 */   nop
/* 5AA936C 8008CE3C 0D000600 */  break      6
.Llevel_23_8008CE40:
/* 5AA9370 8008CE40 12180000 */  mflo       $v1
/* 5AA9374 8008CE44 1800A28F */  lw         $v0, 0x18($sp)
/* 5AA9378 8008CE48 00000000 */  nop
/* 5AA937C 8008CE4C 1A005500 */  div        $zero, $v0, $s5
/* 5AA9380 8008CE50 0200A016 */  bnez       $s5, .Llevel_23_8008CE5C
/* 5AA9384 8008CE54 00000000 */   nop
/* 5AA9388 8008CE58 0D000700 */  break      7
.Llevel_23_8008CE5C:
/* 5AA938C 8008CE5C FFFF0124 */  addiu      $at, $zero, -0x1
/* 5AA9390 8008CE60 0400A116 */  bne        $s5, $at, .Llevel_23_8008CE74
/* 5AA9394 8008CE64 0080013C */   lui       $at, (0x80000000 >> 16)
/* 5AA9398 8008CE68 02004114 */  bne        $v0, $at, .Llevel_23_8008CE74
/* 5AA939C 8008CE6C 00000000 */   nop
/* 5AA93A0 8008CE70 0D000600 */  break      6
.Llevel_23_8008CE74:
/* 5AA93A4 8008CE74 12100000 */  mflo       $v0
/* 5AA93A8 8008CE78 04000524 */  addiu      $a1, $zero, 0x4
/* 5AA93AC 8008CE7C 21980000 */  addu       $s3, $zero, $zero
/* 5AA93B0 8008CE80 21204002 */  addu       $a0, $s2, $zero
/* 5AA93B4 8008CE84 1000A6AF */  sw         $a2, 0x10($sp)
/* 5AA93B8 8008CE88 1400A3AF */  sw         $v1, 0x14($sp)
/* 5AA93BC 8008CE8C 4957010C */  jal        func_80055D24
/* 5AA93C0 8008CE90 1800A2AF */   sw        $v0, 0x18($sp)
/* 5AA93C4 8008CE94 6401A01A */  blez       $s5, .Llevel_23_8008D428
/* 5AA93C8 8008CE98 2000B427 */   addiu     $s4, $sp, 0x20
/* 5AA93CC 8008CE9C 06801E3C */  lui        $fp, %hi(D_80065920)
/* 5AA93D0 8008CEA0 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 5AA93D4 8008CEA4 0680173C */  lui        $s7, %hi(D_800658A0)
/* 5AA93D8 8008CEA8 A058F726 */  addiu      $s7, $s7, %lo(D_800658A0)
/* 5AA93DC 8008CEAC 0780163C */  lui        $s6, %hi(D_80070328)
/* 5AA93E0 8008CEB0 2803D626 */  addiu      $s6, $s6, %lo(D_80070328)
.Llevel_23_8008CEB4:
/* 5AA93E4 8008CEB4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5AA93E8 8008CEB8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5AA93EC 8008CEBC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5AA93F0 8008CEC0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5AA93F4 8008CEC4 00000000 */  nop
/* 5AA93F8 8008CEC8 23104300 */  subu       $v0, $v0, $v1
/* 5AA93FC 8008CECC 15004228 */  slti       $v0, $v0, 0x15
/* 5AA9400 8008CED0 55014014 */  bnez       $v0, .Llevel_23_8008D428
/* 5AA9404 8008CED4 00000000 */   nop
/* 5AA9408 8008CED8 4000A48F */  lw         $a0, 0x40($sp)
/* 5AA940C 8008CEDC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5AA9410 8008CEE0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5AA9414 8008CEE4 00000000 */  nop
/* 5AA9418 8008CEE8 09F84000 */  jalr       $v0
/* 5AA941C 8008CEEC 21284002 */   addu      $a1, $s2, $zero
/* 5AA9420 8008CEF0 21884000 */  addu       $s1, $v0, $zero
/* 5AA9424 8008CEF4 48012012 */  beqz       $s1, .Llevel_23_8008D418
/* 5AA9428 8008CEF8 21208002 */   addu      $a0, $s4, $zero
/* 5AA942C 8008CEFC 40281300 */  sll        $a1, $s3, 1
/* 5AA9430 8008CF00 2128B300 */  addu       $a1, $a1, $s3
/* 5AA9434 8008CF04 80280500 */  sll        $a1, $a1, 2
/* 5AA9438 8008CF08 4800A88F */  lw         $t0, 0x48($sp)
/* 5AA943C 8008CF0C 0000308E */  lw         $s0, 0x0($s1)
/* 5AA9440 8008CF10 5E3C010C */  jal        func_8004F178
/* 5AA9444 8008CF14 21280501 */   addu      $a1, $t0, $a1
/* 5AA9448 8008CF18 20004426 */  addiu      $a0, $s2, 0x20
/* 5AA944C 8008CF1C 21288002 */  addu       $a1, $s4, $zero
/* 5AA9450 8008CF20 5B3B010C */  jal        func_8004ED6C
/* 5AA9454 8008CF24 21308002 */   addu      $a2, $s4, $zero
/* 5AA9458 8008CF28 2000A28F */  lw         $v0, 0x20($sp)
/* 5AA945C 8008CF2C 1000A38F */  lw         $v1, 0x10($sp)
/* 5AA9460 8008CF30 0C002426 */  addiu      $a0, $s1, 0xC
/* 5AA9464 8008CF34 23104300 */  subu       $v0, $v0, $v1
/* 5AA9468 8008CF38 83100200 */  sra        $v0, $v0, 2
/* 5AA946C 8008CF3C 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA9470 8008CF40 2400A28F */  lw         $v0, 0x24($sp)
/* 5AA9474 8008CF44 1400A38F */  lw         $v1, 0x14($sp)
/* 5AA9478 8008CF48 21288002 */  addu       $a1, $s4, $zero
/* 5AA947C 8008CF4C 23104300 */  subu       $v0, $v0, $v1
/* 5AA9480 8008CF50 83100200 */  sra        $v0, $v0, 2
/* 5AA9484 8008CF54 020002A6 */  sh         $v0, 0x2($s0)
/* 5AA9488 8008CF58 2800A28F */  lw         $v0, 0x28($sp)
/* 5AA948C 8008CF5C 1800A38F */  lw         $v1, 0x18($sp)
/* 5AA9490 8008CF60 0C004626 */  addiu      $a2, $s2, 0xC
/* 5AA9494 8008CF64 23104300 */  subu       $v0, $v0, $v1
/* 5AA9498 8008CF68 83100200 */  sra        $v0, $v0, 2
/* 5AA949C 8008CF6C 653C010C */  jal        func_8004F194
/* 5AA94A0 8008CF70 040002A6 */   sh        $v0, 0x4($s0)
/* 5AA94A4 8008CF74 36004386 */  lh         $v1, 0x36($s2)
/* 5AA94A8 8008CF78 FE000224 */  addiu      $v0, $zero, 0xFE
/* 5AA94AC 8008CF7C 1F006214 */  bne        $v1, $v0, .Llevel_23_8008CFFC
/* 5AA94B0 8008CF80 84000224 */   addiu     $v0, $zero, 0x84
/* 5AA94B4 8008CF84 1400238E */  lw         $v1, 0x14($s1)
/* 5AA94B8 8008CF88 14000224 */  addiu      $v0, $zero, 0x14
/* 5AA94BC 8008CF8C 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 5AA94C0 8008CF90 E8036324 */  addiu      $v1, $v1, 0x3E8
/* 5AA94C4 8008CF94 140023AE */  sw         $v1, 0x14($s1)
/* 5AA94C8 8008CF98 51004292 */  lbu        $v0, 0x51($s2)
/* 5AA94CC 8008CF9C 00000000 */  nop
/* 5AA94D0 8008CFA0 40100200 */  sll        $v0, $v0, 1
/* 5AA94D4 8008CFA4 21105E00 */  addu       $v0, $v0, $fp
/* 5AA94D8 8008CFA8 00004384 */  lh         $v1, 0x0($v0)
/* 5AA94DC 8008CFAC 00000000 */  nop
/* 5AA94E0 8008CFB0 80100300 */  sll        $v0, $v1, 2
/* 5AA94E4 8008CFB4 21104300 */  addu       $v0, $v0, $v1
/* 5AA94E8 8008CFB8 00000396 */  lhu        $v1, 0x0($s0)
/* 5AA94EC 8008CFBC 03120200 */  sra        $v0, $v0, 8
/* 5AA94F0 8008CFC0 21186200 */  addu       $v1, $v1, $v0
/* 5AA94F4 8008CFC4 000003A6 */  sh         $v1, 0x0($s0)
/* 5AA94F8 8008CFC8 51004292 */  lbu        $v0, 0x51($s2)
/* 5AA94FC 8008CFCC FA000424 */  addiu      $a0, $zero, 0xFA
/* 5AA9500 8008CFD0 40100200 */  sll        $v0, $v0, 1
/* 5AA9504 8008CFD4 21105700 */  addu       $v0, $v0, $s7
/* 5AA9508 8008CFD8 00004384 */  lh         $v1, 0x0($v0)
/* 5AA950C 8008CFDC 5E010524 */  addiu      $a1, $zero, 0x15E
/* 5AA9510 8008CFE0 80100300 */  sll        $v0, $v1, 2
/* 5AA9514 8008CFE4 21104300 */  addu       $v0, $v0, $v1
/* 5AA9518 8008CFE8 02000396 */  lhu        $v1, 0x2($s0)
/* 5AA951C 8008CFEC 03120200 */  sra        $v0, $v0, 8
/* 5AA9520 8008CFF0 21186200 */  addu       $v1, $v1, $v0
/* 5AA9524 8008CFF4 67340208 */  j          .Llevel_23_8008D19C
/* 5AA9528 8008CFF8 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_23_8008CFFC:
/* 5AA952C 8008CFFC 14006214 */  bne        $v1, $v0, .Llevel_23_8008D050
/* 5AA9530 8008D000 E7030224 */   addiu     $v0, $zero, 0x3E7
/* 5AA9534 8008D004 00000386 */  lh         $v1, 0x0($s0)
/* 5AA9538 8008D008 00000000 */  nop
/* 5AA953C 8008D00C 40100300 */  sll        $v0, $v1, 1
/* 5AA9540 8008D010 21104300 */  addu       $v0, $v0, $v1
/* 5AA9544 8008D014 C21F0200 */  srl        $v1, $v0, 31
/* 5AA9548 8008D018 21104300 */  addu       $v0, $v0, $v1
/* 5AA954C 8008D01C 02000386 */  lh         $v1, 0x2($s0)
/* 5AA9550 8008D020 43100200 */  sra        $v0, $v0, 1
/* 5AA9554 8008D024 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA9558 8008D028 40100300 */  sll        $v0, $v1, 1
/* 5AA955C 8008D02C 21104300 */  addu       $v0, $v0, $v1
/* 5AA9560 8008D030 C21F0200 */  srl        $v1, $v0, 31
/* 5AA9564 8008D034 21104300 */  addu       $v0, $v0, $v1
/* 5AA9568 8008D038 04000386 */  lh         $v1, 0x4($s0)
/* 5AA956C 8008D03C 43100200 */  sra        $v0, $v0, 1
/* 5AA9570 8008D040 020002A6 */  sh         $v0, 0x2($s0)
/* 5AA9574 8008D044 40180300 */  sll        $v1, $v1, 1
/* 5AA9578 8008D048 E0340208 */  j          .Llevel_23_8008D380
/* 5AA957C 8008D04C 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_23_8008D050:
/* 5AA9580 8008D050 30006214 */  bne        $v1, $v0, .Llevel_23_8008D114
/* 5AA9584 8008D054 2A000224 */   addiu     $v0, $zero, 0x2A
/* 5AA9588 8008D058 0780053C */  lui        $a1, %hi(D_80070328 + 0x48)
/* 5AA958C 8008D05C 7003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x48)
/* 5AA9590 8008D060 0000A38C */  lw         $v1, 0x0($a1)
/* 5AA9594 8008D064 00000000 */  nop
/* 5AA9598 8008D068 13006214 */  bne        $v1, $v0, .Llevel_23_8008D0B8
/* 5AA959C 8008D06C 21200000 */   addu      $a0, $zero, $zero
/* 5AA95A0 8008D070 21208002 */  addu       $a0, $s4, $zero
/* 5AA95A4 8008D074 5E3C010C */  jal        func_8004F178
/* 5AA95A8 8008D078 4400A524 */   addiu     $a1, $a1, 0x44
/* 5AA95AC 8008D07C 21208002 */  addu       $a0, $s4, $zero
/* 5AA95B0 8008D080 7A3B010C */  jal        func_8004EDE8
/* 5AA95B4 8008D084 21280000 */   addu      $a1, $zero, $zero
/* 5AA95B8 8008D088 21208002 */  addu       $a0, $s4, $zero
/* 5AA95BC 8008D08C 21284000 */  addu       $a1, $v0, $zero
/* 5AA95C0 8008D090 233C010C */  jal        func_8004F08C
/* 5AA95C4 8008D094 2C010624 */   addiu     $a2, $zero, 0x12C
/* 5AA95C8 8008D098 2000A38F */  lw         $v1, 0x20($sp)
/* 5AA95CC 8008D09C 00000296 */  lhu        $v0, 0x0($s0)
/* 5AA95D0 8008D0A0 00000000 */  nop
/* 5AA95D4 8008D0A4 21104300 */  addu       $v0, $v0, $v1
/* 5AA95D8 8008D0A8 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA95DC 8008D0AC 2400A38F */  lw         $v1, 0x24($sp)
/* 5AA95E0 8008D0B0 DC340208 */  j          .Llevel_23_8008D370
/* 5AA95E4 8008D0B4 00000000 */   nop
.Llevel_23_8008D0B8:
/* 5AA95E8 8008D0B8 21288002 */  addu       $a1, $s4, $zero
/* 5AA95EC 8008D0BC 21308002 */  addu       $a2, $s4, $zero
/* 5AA95F0 8008D0C0 8C000224 */  addiu      $v0, $zero, 0x8C
/* 5AA95F4 8008D0C4 2000A2AF */  sw         $v0, 0x20($sp)
/* 5AA95F8 8008D0C8 2400A0AF */  sw         $zero, 0x24($sp)
/* 5AA95FC 8008D0CC 5B3B010C */  jal        func_8004ED6C
/* 5AA9600 8008D0D0 2800A0AF */   sw        $zero, 0x28($sp)
/* 5AA9604 8008D0D4 2000A38F */  lw         $v1, 0x20($sp)
/* 5AA9608 8008D0D8 00000296 */  lhu        $v0, 0x0($s0)
/* 5AA960C 8008D0DC 00000000 */  nop
/* 5AA9610 8008D0E0 21104300 */  addu       $v0, $v0, $v1
/* 5AA9614 8008D0E4 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA9618 8008D0E8 2400A38F */  lw         $v1, 0x24($sp)
/* 5AA961C 8008D0EC 02000296 */  lhu        $v0, 0x2($s0)
/* 5AA9620 8008D0F0 00000000 */  nop
/* 5AA9624 8008D0F4 21104300 */  addu       $v0, $v0, $v1
/* 5AA9628 8008D0F8 020002A6 */  sh         $v0, 0x2($s0)
/* 5AA962C 8008D0FC 2800A38F */  lw         $v1, 0x28($sp)
/* 5AA9630 8008D100 04000296 */  lhu        $v0, 0x4($s0)
/* 5AA9634 8008D104 00000000 */  nop
/* 5AA9638 8008D108 21104300 */  addu       $v0, $v0, $v1
/* 5AA963C 8008D10C E0340208 */  j          .Llevel_23_8008D380
/* 5AA9640 8008D110 040002A6 */   sh        $v0, 0x4($s0)
.Llevel_23_8008D114:
/* 5AA9644 8008D114 51004492 */  lbu        $a0, 0x51($s2)
/* 5AA9648 8008D118 00000000 */  nop
/* 5AA964C 8008D11C 26008010 */  beqz       $a0, .Llevel_23_8008D1B8
/* 5AA9650 8008D120 1000033C */   lui       $v1, (0x100000 >> 16)
/* 5AA9654 8008D124 1800428E */  lw         $v0, 0x18($s2)
/* 5AA9658 8008D128 00000000 */  nop
/* 5AA965C 8008D12C 24104300 */  and        $v0, $v0, $v1
/* 5AA9660 8008D130 21004010 */  beqz       $v0, .Llevel_23_8008D1B8
/* 5AA9664 8008D134 40100400 */   sll       $v0, $a0, 1
/* 5AA9668 8008D138 21105E00 */  addu       $v0, $v0, $fp
/* 5AA966C 8008D13C 00004384 */  lh         $v1, 0x0($v0)
/* 5AA9670 8008D140 00000000 */  nop
/* 5AA9674 8008D144 80100300 */  sll        $v0, $v1, 2
/* 5AA9678 8008D148 21104300 */  addu       $v0, $v0, $v1
/* 5AA967C 8008D14C 00190200 */  sll        $v1, $v0, 4
/* 5AA9680 8008D150 23186200 */  subu       $v1, $v1, $v0
/* 5AA9684 8008D154 00000296 */  lhu        $v0, 0x0($s0)
/* 5AA9688 8008D158 C31A0300 */  sra        $v1, $v1, 11
/* 5AA968C 8008D15C 21104300 */  addu       $v0, $v0, $v1
/* 5AA9690 8008D160 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA9694 8008D164 51004292 */  lbu        $v0, 0x51($s2)
/* 5AA9698 8008D168 28000424 */  addiu      $a0, $zero, 0x28
/* 5AA969C 8008D16C 40100200 */  sll        $v0, $v0, 1
/* 5AA96A0 8008D170 21105700 */  addu       $v0, $v0, $s7
/* 5AA96A4 8008D174 00004384 */  lh         $v1, 0x0($v0)
/* 5AA96A8 8008D178 46000524 */  addiu      $a1, $zero, 0x46
/* 5AA96AC 8008D17C 80100300 */  sll        $v0, $v1, 2
/* 5AA96B0 8008D180 21104300 */  addu       $v0, $v0, $v1
/* 5AA96B4 8008D184 00190200 */  sll        $v1, $v0, 4
/* 5AA96B8 8008D188 23186200 */  subu       $v1, $v1, $v0
/* 5AA96BC 8008D18C 02000296 */  lhu        $v0, 0x2($s0)
/* 5AA96C0 8008D190 C31A0300 */  sra        $v1, $v1, 11
/* 5AA96C4 8008D194 21104300 */  addu       $v0, $v0, $v1
/* 5AA96C8 8008D198 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_23_8008D19C:
/* 5AA96CC 8008D19C DBD8000C */  jal        func_8003636C
/* 5AA96D0 8008D1A0 00000000 */   nop
/* 5AA96D4 8008D1A4 04000396 */  lhu        $v1, 0x4($s0)
/* 5AA96D8 8008D1A8 00000000 */  nop
/* 5AA96DC 8008D1AC 21186200 */  addu       $v1, $v1, $v0
/* 5AA96E0 8008D1B0 E0340208 */  j          .Llevel_23_8008D380
/* 5AA96E4 8008D1B4 040003A6 */   sh        $v1, 0x4($s0)
.Llevel_23_8008D1B8:
/* 5AA96E8 8008D1B8 1800438E */  lw         $v1, 0x18($s2)
/* 5AA96EC 8008D1BC 0400023C */  lui        $v0, (0x40000 >> 16)
/* 5AA96F0 8008D1C0 24106200 */  and        $v0, $v1, $v0
/* 5AA96F4 8008D1C4 0C004010 */  beqz       $v0, .Llevel_23_8008D1F8
/* 5AA96F8 8008D1C8 00000000 */   nop
/* 5AA96FC 8008D1CC 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 5AA9700 8008D1D0 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 5AA9704 8008D1D4 00000396 */  lhu        $v1, 0x0($s0)
/* 5AA9708 8008D1D8 43110200 */  sra        $v0, $v0, 5
/* 5AA970C 8008D1DC 21186200 */  addu       $v1, $v1, $v0
/* 5AA9710 8008D1E0 000003A6 */  sh         $v1, 0x0($s0)
/* 5AA9714 8008D1E4 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 5AA9718 8008D1E8 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 5AA971C 8008D1EC 02000396 */  lhu        $v1, 0x2($s0)
/* 5AA9720 8008D1F0 B2340208 */  j          .Llevel_23_8008D2C8
/* 5AA9724 8008D1F4 43110200 */   sra       $v0, $v0, 5
.Llevel_23_8008D1F8:
/* 5AA9728 8008D1F8 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 5AA972C 8008D1FC 24106200 */  and        $v0, $v1, $v0
/* 5AA9730 8008D200 1C004010 */  beqz       $v0, .Llevel_23_8008D274
/* 5AA9734 8008D204 21300000 */   addu      $a2, $zero, $zero
/* 5AA9738 8008D208 0C00238E */  lw         $v1, 0xC($s1)
/* 5AA973C 8008D20C 0000C48E */  lw         $a0, 0x0($s6)
/* 5AA9740 8008D210 1000228E */  lw         $v0, 0x10($s1)
/* 5AA9744 8008D214 0400C58E */  lw         $a1, 0x4($s6)
/* 5AA9748 8008D218 23206400 */  subu       $a0, $v1, $a0
/* 5AA974C 8008D21C 203A010C */  jal        func_8004E880
/* 5AA9750 8008D220 23284500 */   subu      $a1, $v0, $a1
/* 5AA9754 8008D224 40100200 */  sll        $v0, $v0, 1
/* 5AA9758 8008D228 21105E00 */  addu       $v0, $v0, $fp
/* 5AA975C 8008D22C 00004284 */  lh         $v0, 0x0($v0)
/* 5AA9760 8008D230 21300000 */  addu       $a2, $zero, $zero
/* 5AA9764 8008D234 03110200 */  sra        $v0, $v0, 4
/* 5AA9768 8008D238 3000A2AF */  sw         $v0, 0x30($sp)
/* 5AA976C 8008D23C 0C00238E */  lw         $v1, 0xC($s1)
/* 5AA9770 8008D240 0000C48E */  lw         $a0, 0x0($s6)
/* 5AA9774 8008D244 1000228E */  lw         $v0, 0x10($s1)
/* 5AA9778 8008D248 0400C58E */  lw         $a1, 0x4($s6)
/* 5AA977C 8008D24C 23206400 */  subu       $a0, $v1, $a0
/* 5AA9780 8008D250 203A010C */  jal        func_8004E880
/* 5AA9784 8008D254 23284500 */   subu      $a1, $v0, $a1
/* 5AA9788 8008D258 40100200 */  sll        $v0, $v0, 1
/* 5AA978C 8008D25C 21105700 */  addu       $v0, $v0, $s7
/* 5AA9790 8008D260 00004284 */  lh         $v0, 0x0($v0)
/* 5AA9794 8008D264 3000A38F */  lw         $v1, 0x30($sp)
/* 5AA9798 8008D268 3800A0AF */  sw         $zero, 0x38($sp)
/* 5AA979C 8008D26C D6340208 */  j          .Llevel_23_8008D358
/* 5AA97A0 8008D270 03110200 */   sra       $v0, $v0, 4
.Llevel_23_8008D274:
/* 5AA97A4 8008D274 0200023C */  lui        $v0, (0x20000 >> 16)
/* 5AA97A8 8008D278 24106200 */  and        $v0, $v1, $v0
/* 5AA97AC 8008D27C 15004010 */  beqz       $v0, .Llevel_23_8008D2D4
/* 5AA97B0 8008D280 04000224 */   addiu     $v0, $zero, 0x4
/* 5AA97B4 8008D284 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 5AA97B8 8008D288 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 5AA97BC 8008D28C 00000000 */  nop
/* 5AA97C0 8008D290 03006210 */  beq        $v1, $v0, .Llevel_23_8008D2A0
/* 5AA97C4 8008D294 0C000224 */   addiu     $v0, $zero, 0xC
/* 5AA97C8 8008D298 0E006214 */  bne        $v1, $v0, .Llevel_23_8008D2D4
/* 5AA97CC 8008D29C 00000000 */   nop
.Llevel_23_8008D2A0:
/* 5AA97D0 8008D2A0 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 5AA97D4 8008D2A4 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 5AA97D8 8008D2A8 00000396 */  lhu        $v1, 0x0($s0)
/* 5AA97DC 8008D2AC 83110200 */  sra        $v0, $v0, 6
/* 5AA97E0 8008D2B0 21186200 */  addu       $v1, $v1, $v0
/* 5AA97E4 8008D2B4 000003A6 */  sh         $v1, 0x0($s0)
/* 5AA97E8 8008D2B8 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 5AA97EC 8008D2BC B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 5AA97F0 8008D2C0 02000396 */  lhu        $v1, 0x2($s0)
/* 5AA97F4 8008D2C4 83110200 */  sra        $v0, $v0, 6
.Llevel_23_8008D2C8:
/* 5AA97F8 8008D2C8 21186200 */  addu       $v1, $v1, $v0
/* 5AA97FC 8008D2CC E0340208 */  j          .Llevel_23_8008D380
/* 5AA9800 8008D2D0 020003A6 */   sh        $v1, 0x2($s0)
.Llevel_23_8008D2D4:
/* 5AA9804 8008D2D4 36004386 */  lh         $v1, 0x36($s2)
/* 5AA9808 8008D2D8 84000224 */  addiu      $v0, $zero, 0x84
/* 5AA980C 8008D2DC 28006210 */  beq        $v1, $v0, .Llevel_23_8008D380
/* 5AA9810 8008D2E0 00000000 */   nop
/* 5AA9814 8008D2E4 51004292 */  lbu        $v0, 0x51($s2)
/* 5AA9818 8008D2E8 00000000 */  nop
/* 5AA981C 8008D2EC 0A004014 */  bnez       $v0, .Llevel_23_8008D318
/* 5AA9820 8008D2F0 40200200 */   sll       $a0, $v0, 1
/* 5AA9824 8008D2F4 21300000 */  addu       $a2, $zero, $zero
/* 5AA9828 8008D2F8 0C00238E */  lw         $v1, 0xC($s1)
/* 5AA982C 8008D2FC 0000C48E */  lw         $a0, 0x0($s6)
/* 5AA9830 8008D300 1000228E */  lw         $v0, 0x10($s1)
/* 5AA9834 8008D304 0400C58E */  lw         $a1, 0x4($s6)
/* 5AA9838 8008D308 23206400 */  subu       $a0, $v1, $a0
/* 5AA983C 8008D30C 203A010C */  jal        func_8004E880
/* 5AA9840 8008D310 23284500 */   subu      $a1, $v0, $a1
/* 5AA9844 8008D314 40200200 */  sll        $a0, $v0, 1
.Llevel_23_8008D318:
/* 5AA9848 8008D318 21109E00 */  addu       $v0, $a0, $fp
/* 5AA984C 8008D31C 00004284 */  lh         $v0, 0x0($v0)
/* 5AA9850 8008D320 21209700 */  addu       $a0, $a0, $s7
/* 5AA9854 8008D324 C0180200 */  sll        $v1, $v0, 3
/* 5AA9858 8008D328 21186200 */  addu       $v1, $v1, $v0
/* 5AA985C 8008D32C 80180300 */  sll        $v1, $v1, 2
/* 5AA9860 8008D330 23186200 */  subu       $v1, $v1, $v0
/* 5AA9864 8008D334 831A0300 */  sra        $v1, $v1, 10
/* 5AA9868 8008D338 3000A3AF */  sw         $v1, 0x30($sp)
/* 5AA986C 8008D33C 00008484 */  lh         $a0, 0x0($a0)
/* 5AA9870 8008D340 3800A0AF */  sw         $zero, 0x38($sp)
/* 5AA9874 8008D344 C0100400 */  sll        $v0, $a0, 3
/* 5AA9878 8008D348 21104400 */  addu       $v0, $v0, $a0
/* 5AA987C 8008D34C 80100200 */  sll        $v0, $v0, 2
/* 5AA9880 8008D350 23104400 */  subu       $v0, $v0, $a0
/* 5AA9884 8008D354 83120200 */  sra        $v0, $v0, 10
.Llevel_23_8008D358:
/* 5AA9888 8008D358 3400A2AF */  sw         $v0, 0x34($sp)
/* 5AA988C 8008D35C 00000296 */  lhu        $v0, 0x0($s0)
/* 5AA9890 8008D360 00000000 */  nop
/* 5AA9894 8008D364 21104300 */  addu       $v0, $v0, $v1
/* 5AA9898 8008D368 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA989C 8008D36C 3400A38F */  lw         $v1, 0x34($sp)
.Llevel_23_8008D370:
/* 5AA98A0 8008D370 02000296 */  lhu        $v0, 0x2($s0)
/* 5AA98A4 8008D374 00000000 */  nop
/* 5AA98A8 8008D378 21104300 */  addu       $v0, $v0, $v1
/* 5AA98AC 8008D37C 020002A6 */  sh         $v0, 0x2($s0)
.Llevel_23_8008D380:
/* 5AA98B0 8008D380 44004292 */  lbu        $v0, 0x44($s2)
/* 5AA98B4 8008D384 00000000 */  nop
/* 5AA98B8 8008D388 440022A2 */  sb         $v0, 0x44($s1)
/* 5AA98BC 8008D38C 45004292 */  lbu        $v0, 0x45($s2)
/* 5AA98C0 8008D390 00000000 */  nop
/* 5AA98C4 8008D394 450022A2 */  sb         $v0, 0x45($s1)
/* 5AA98C8 8008D398 46004292 */  lbu        $v0, 0x46($s2)
/* 5AA98CC 8008D39C 9171010C */  jal        rand
/* 5AA98D0 8008D3A0 460022A2 */   sb        $v0, 0x46($s1)
/* 5AA98D4 8008D3A4 06004230 */  andi       $v0, $v0, 0x6
/* 5AA98D8 8008D3A8 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 5AA98DC 8008D3AC 9171010C */  jal        rand
/* 5AA98E0 8008D3B0 060002A6 */   sh        $v0, 0x6($s0)
/* 5AA98E4 8008D3B4 06004230 */  andi       $v0, $v0, 0x6
/* 5AA98E8 8008D3B8 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 5AA98EC 8008D3BC 9171010C */  jal        rand
/* 5AA98F0 8008D3C0 080002A6 */   sh        $v0, 0x8($s0)
/* 5AA98F4 8008D3C4 1E000424 */  addiu      $a0, $zero, 0x1E
/* 5AA98F8 8008D3C8 06004230 */  andi       $v0, $v0, 0x6
/* 5AA98FC 8008D3CC FDFF4224 */  addiu      $v0, $v0, -0x3
/* 5AA9900 8008D3D0 0A0002A6 */  sh         $v0, 0xA($s0)
/* 5AA9904 8008D3D4 1400428E */  lw         $v0, 0x14($s2)
/* 5AA9908 8008D3D8 32000524 */  addiu      $a1, $zero, 0x32
/* 5AA990C 8008D3DC C0FF4224 */  addiu      $v0, $v0, -0x40
/* 5AA9910 8008D3E0 DBD8000C */  jal        func_8003636C
/* 5AA9914 8008D3E4 0E0002A6 */   sh        $v0, 0xE($s0)
/* 5AA9918 8008D3E8 9800A88F */  lw         $t0, 0x98($sp)
/* 5AA991C 8008D3EC 21202002 */  addu       $a0, $s1, $zero
/* 5AA9920 8008D3F0 0C0002A6 */  sh         $v0, 0xC($s0)
/* 5AA9924 8008D3F4 08000224 */  addiu      $v0, $zero, 0x8
/* 5AA9928 8008D3F8 100002A6 */  sh         $v0, 0x10($s0)
/* 5AA992C 8008D3FC 21281301 */  addu       $a1, $t0, $s3
/* 5AA9930 8008D400 9C00A897 */  lhu        $t0, 0x9C($sp)
/* 5AA9934 8008D404 E0D3000C */  jal        func_80034F80
/* 5AA9938 8008D408 120008A6 */   sh        $t0, 0x12($s0)
/* 5AA993C 8008D40C 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA9940 8008D410 140002AE */  sw         $v0, 0x14($s0)
/* 5AA9944 8008D414 080020AE */  sw         $zero, 0x8($s1)
.Llevel_23_8008D418:
/* 5AA9948 8008D418 01007326 */  addiu      $s3, $s3, 0x1
/* 5AA994C 8008D41C 2A107502 */  slt        $v0, $s3, $s5
/* 5AA9950 8008D420 A4FE4014 */  bnez       $v0, .Llevel_23_8008CEB4
/* 5AA9954 8008D424 00000000 */   nop
.Llevel_23_8008D428:
/* 5AA9958 8008D428 8400BF8F */  lw         $ra, 0x84($sp)
/* 5AA995C 8008D42C 8000BE8F */  lw         $fp, 0x80($sp)
/* 5AA9960 8008D430 7C00B78F */  lw         $s7, 0x7C($sp)
/* 5AA9964 8008D434 7800B68F */  lw         $s6, 0x78($sp)
/* 5AA9968 8008D438 7400B58F */  lw         $s5, 0x74($sp)
/* 5AA996C 8008D43C 7000B48F */  lw         $s4, 0x70($sp)
/* 5AA9970 8008D440 6C00B38F */  lw         $s3, 0x6C($sp)
/* 5AA9974 8008D444 6800B28F */  lw         $s2, 0x68($sp)
/* 5AA9978 8008D448 6400B18F */  lw         $s1, 0x64($sp)
/* 5AA997C 8008D44C 6000B08F */  lw         $s0, 0x60($sp)
/* 5AA9980 8008D450 8800BD27 */  addiu      $sp, $sp, 0x88
/* 5AA9984 8008D454 0800E003 */  jr         $ra
/* 5AA9988 8008D458 00000000 */   nop
.size func_level_23_8008CD6C, . - func_level_23_8008CD6C
