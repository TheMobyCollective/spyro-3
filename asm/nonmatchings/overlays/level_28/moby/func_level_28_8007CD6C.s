.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_577_level_28
/* 655D29C 8007CD6C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 655D2A0 8007CD70 1000B0AF */  sw         $s0, 0x10($sp)
/* 655D2A4 8007CD74 21808000 */  addu       $s0, $a0, $zero
/* 655D2A8 8007CD78 1800BFAF */  sw         $ra, 0x18($sp)
/* 655D2AC 8007CD7C 1400B1AF */  sw         $s1, 0x14($sp)
/* 655D2B0 8007CD80 1800028E */  lw         $v0, 0x18($s0)
/* 655D2B4 8007CD84 0000118E */  lw         $s1, 0x0($s0)
/* 655D2B8 8007CD88 09004010 */  beqz       $v0, .Llevel_28_8007CDB0
/* 655D2BC 8007CD8C 01000224 */   addiu     $v0, $zero, 0x1
/* 655D2C0 8007CD90 48000392 */  lbu        $v1, 0x48($s0)
/* 655D2C4 8007CD94 00000000 */  nop
/* 655D2C8 8007CD98 03006210 */  beq        $v1, $v0, .Llevel_28_8007CDA8
/* 655D2CC 8007CD9C 21280000 */   addu      $a1, $zero, $zero
/* 655D2D0 8007CDA0 AFEE000C */  jal        func_8003BABC
/* 655D2D4 8007CDA4 21300000 */   addu      $a2, $zero, $zero
.Llevel_28_8007CDA8:
/* 655D2D8 8007CDA8 000020AE */  sw         $zero, 0x0($s1)
/* 655D2DC 8007CDAC 180000AE */  sw         $zero, 0x18($s0)
.Llevel_28_8007CDB0:
/* 655D2E0 8007CDB0 0400258E */  lw         $a1, 0x4($s1)
/* 655D2E4 8007CDB4 F0EF000C */  jal        func_8003BFC0
/* 655D2E8 8007CDB8 21200002 */   addu      $a0, $s0, $zero
/* 655D2EC 8007CDBC 0A004014 */  bnez       $v0, .Llevel_28_8007CDE8
/* 655D2F0 8007CDC0 00000000 */   nop
/* 655D2F4 8007CDC4 0400258E */  lw         $a1, 0x4($s1)
/* 655D2F8 8007CDC8 F0EF000C */  jal        func_8003BFC0
/* 655D2FC 8007CDCC 21200002 */   addu      $a0, $s0, $zero
/* 655D300 8007CDD0 05004014 */  bnez       $v0, .Llevel_28_8007CDE8
/* 655D304 8007CDD4 21200002 */   addu      $a0, $s0, $zero
/* 655D308 8007CDD8 01000524 */  addiu      $a1, $zero, 0x1
/* 655D30C 8007CDDC AFEE000C */  jal        func_8003BABC
/* 655D310 8007CDE0 04000624 */   addiu     $a2, $zero, 0x4
/* 655D314 8007CDE4 040022AE */  sw         $v0, 0x4($s1)
.Llevel_28_8007CDE8:
/* 655D318 8007CDE8 0000238E */  lw         $v1, 0x0($s1)
/* 655D31C 8007CDEC 00000000 */  nop
/* 655D320 8007CDF0 0F006228 */  slti       $v0, $v1, 0xF
/* 655D324 8007CDF4 03004014 */  bnez       $v0, .Llevel_28_8007CE04
/* 655D328 8007CDF8 03006228 */   slti      $v0, $v1, 0x3
/* 655D32C 8007CDFC 85F30108 */  j          .Llevel_28_8007CE14
/* 655D330 8007CE00 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_28_8007CE04:
/* 655D334 8007CE04 02004014 */  bnez       $v0, .Llevel_28_8007CE10
/* 655D338 8007CE08 01000224 */   addiu     $v0, $zero, 0x1
/* 655D33C 8007CE0C 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_28_8007CE10:
/* 655D340 8007CE10 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_28_8007CE14:
/* 655D344 8007CE14 48000392 */  lbu        $v1, 0x48($s0)
/* 655D348 8007CE18 01000224 */  addiu      $v0, $zero, 0x1
/* 655D34C 8007CE1C 11006210 */  beq        $v1, $v0, .Llevel_28_8007CE64
/* 655D350 8007CE20 02006228 */   slti      $v0, $v1, 0x2
/* 655D354 8007CE24 05004010 */  beqz       $v0, .Llevel_28_8007CE3C
/* 655D358 8007CE28 00000000 */   nop
/* 655D35C 8007CE2C 08006010 */  beqz       $v1, .Llevel_28_8007CE50
/* 655D360 8007CE30 00000000 */   nop
/* 655D364 8007CE34 FBF30108 */  j          .Llevel_28_8007CFEC
/* 655D368 8007CE38 00000000 */   nop
.Llevel_28_8007CE3C:
/* 655D36C 8007CE3C 02000224 */  addiu      $v0, $zero, 0x2
/* 655D370 8007CE40 30006210 */  beq        $v1, $v0, .Llevel_28_8007CF04
/* 655D374 8007CE44 00000000 */   nop
/* 655D378 8007CE48 FBF30108 */  j          .Llevel_28_8007CFEC
/* 655D37C 8007CE4C 00000000 */   nop
.Llevel_28_8007CE50:
/* 655D380 8007CE50 540000A2 */  sb         $zero, 0x54($s0)
/* 655D384 8007CE54 550000A2 */  sb         $zero, 0x55($s0)
/* 655D388 8007CE58 560000A2 */  sb         $zero, 0x56($s0)
/* 655D38C 8007CE5C FBF30108 */  j          .Llevel_28_8007CFEC
/* 655D390 8007CE60 570000A2 */   sb        $zero, 0x57($s0)
.Llevel_28_8007CE64:
/* 655D394 8007CE64 0000238E */  lw         $v1, 0x0($s1)
/* 655D398 8007CE68 00000000 */  nop
/* 655D39C 8007CE6C 80100300 */  sll        $v0, $v1, 2
/* 655D3A0 8007CE70 21104300 */  addu       $v0, $v0, $v1
/* 655D3A4 8007CE74 00190200 */  sll        $v1, $v0, 4
/* 655D3A8 8007CE78 21304300 */  addu       $a2, $v0, $v1
/* 655D3AC 8007CE7C 0001C228 */  slti       $v0, $a2, 0x100
/* 655D3B0 8007CE80 03004014 */  bnez       $v0, .Llevel_28_8007CE90
/* 655D3B4 8007CE84 00000000 */   nop
/* 655D3B8 8007CE88 A7F30108 */  j          .Llevel_28_8007CE9C
/* 655D3BC 8007CE8C FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_28_8007CE90:
/* 655D3C0 8007CE90 0300C104 */  bgez       $a2, .Llevel_28_8007CEA0
/* 655D3C4 8007CE94 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 655D3C8 8007CE98 21300000 */  addu       $a2, $zero, $zero
.Llevel_28_8007CE9C:
/* 655D3CC 8007CE9C 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_28_8007CEA0:
/* 655D3D0 8007CEA0 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 655D3D4 8007CEA4 0000238E */  lw         $v1, 0x0($s1)
/* 655D3D8 8007CEA8 0F000224 */  addiu      $v0, $zero, 0xF
/* 655D3DC 8007CEAC 23104300 */  subu       $v0, $v0, $v1
/* 655D3E0 8007CEB0 C0100200 */  sll        $v0, $v0, 3
/* 655D3E4 8007CEB4 18004400 */  mult       $v0, $a0
/* 655D3E8 8007CEB8 10380000 */  mfhi       $a3
/* 655D3EC 8007CEBC 2118E200 */  addu       $v1, $a3, $v0
/* 655D3F0 8007CEC0 C3180300 */  sra        $v1, $v1, 3
/* 655D3F4 8007CEC4 C3170200 */  sra        $v0, $v0, 31
/* 655D3F8 8007CEC8 23286200 */  subu       $a1, $v1, $v0
/* 655D3FC 8007CECC 1000A228 */  slti       $v0, $a1, 0x10
/* 655D400 8007CED0 03004014 */  bnez       $v0, .Llevel_28_8007CEE0
/* 655D404 8007CED4 00000000 */   nop
/* 655D408 8007CED8 BBF30108 */  j          .Llevel_28_8007CEEC
/* 655D40C 8007CEDC 0F000524 */   addiu     $a1, $zero, 0xF
.Llevel_28_8007CEE0:
/* 655D410 8007CEE0 0300A104 */  bgez       $a1, .Llevel_28_8007CEF0
/* 655D414 8007CEE4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 655D418 8007CEE8 21280000 */  addu       $a1, $zero, $zero
.Llevel_28_8007CEEC:
/* 655D41C 8007CEEC FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_28_8007CEF0:
/* 655D420 8007CEF0 540002A2 */  sb         $v0, 0x54($s0)
/* 655D424 8007CEF4 3000A234 */  ori        $v0, $a1, 0x30
/* 655D428 8007CEF8 550000A2 */  sb         $zero, 0x55($s0)
/* 655D42C 8007CEFC F6F30108 */  j          .Llevel_28_8007CFD8
/* 655D430 8007CF00 560006A2 */   sb        $a2, 0x56($s0)
.Llevel_28_8007CF04:
/* 655D434 8007CF04 0000238E */  lw         $v1, 0x0($s1)
/* 655D438 8007CF08 00000000 */  nop
/* 655D43C 8007CF0C 80100300 */  sll        $v0, $v1, 2
/* 655D440 8007CF10 21104300 */  addu       $v0, $v0, $v1
/* 655D444 8007CF14 00190200 */  sll        $v1, $v0, 4
/* 655D448 8007CF18 21104300 */  addu       $v0, $v0, $v1
/* 655D44C 8007CF1C 40300200 */  sll        $a2, $v0, 1
/* 655D450 8007CF20 0001C228 */  slti       $v0, $a2, 0x100
/* 655D454 8007CF24 03004014 */  bnez       $v0, .Llevel_28_8007CF34
/* 655D458 8007CF28 00000000 */   nop
/* 655D45C 8007CF2C D0F30108 */  j          .Llevel_28_8007CF40
/* 655D460 8007CF30 FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_28_8007CF34:
/* 655D464 8007CF34 0200C104 */  bgez       $a2, .Llevel_28_8007CF40
/* 655D468 8007CF38 00000000 */   nop
/* 655D46C 8007CF3C 21300000 */  addu       $a2, $zero, $zero
.Llevel_28_8007CF40:
/* 655D470 8007CF40 0000238E */  lw         $v1, 0x0($s1)
/* 655D474 8007CF44 00000000 */  nop
/* 655D478 8007CF48 80100300 */  sll        $v0, $v1, 2
/* 655D47C 8007CF4C 21104300 */  addu       $v0, $v0, $v1
/* 655D480 8007CF50 00190200 */  sll        $v1, $v0, 4
/* 655D484 8007CF54 21284300 */  addu       $a1, $v0, $v1
/* 655D488 8007CF58 0001A228 */  slti       $v0, $a1, 0x100
/* 655D48C 8007CF5C 03004014 */  bnez       $v0, .Llevel_28_8007CF6C
/* 655D490 8007CF60 00000000 */   nop
/* 655D494 8007CF64 DEF30108 */  j          .Llevel_28_8007CF78
/* 655D498 8007CF68 FF000524 */   addiu     $a1, $zero, 0xFF
.Llevel_28_8007CF6C:
/* 655D49C 8007CF6C 0300A104 */  bgez       $a1, .Llevel_28_8007CF7C
/* 655D4A0 8007CF70 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 655D4A4 8007CF74 21280000 */  addu       $a1, $zero, $zero
.Llevel_28_8007CF78:
/* 655D4A8 8007CF78 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_28_8007CF7C:
/* 655D4AC 8007CF7C 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 655D4B0 8007CF80 0000238E */  lw         $v1, 0x0($s1)
/* 655D4B4 8007CF84 0F000224 */  addiu      $v0, $zero, 0xF
/* 655D4B8 8007CF88 23104300 */  subu       $v0, $v0, $v1
/* 655D4BC 8007CF8C C0100200 */  sll        $v0, $v0, 3
/* 655D4C0 8007CF90 18004400 */  mult       $v0, $a0
/* 655D4C4 8007CF94 10380000 */  mfhi       $a3
/* 655D4C8 8007CF98 2118E200 */  addu       $v1, $a3, $v0
/* 655D4CC 8007CF9C C3180300 */  sra        $v1, $v1, 3
/* 655D4D0 8007CFA0 C3170200 */  sra        $v0, $v0, 31
/* 655D4D4 8007CFA4 23186200 */  subu       $v1, $v1, $v0
/* 655D4D8 8007CFA8 10006228 */  slti       $v0, $v1, 0x10
/* 655D4DC 8007CFAC 03004014 */  bnez       $v0, .Llevel_28_8007CFBC
/* 655D4E0 8007CFB0 00000000 */   nop
/* 655D4E4 8007CFB4 F2F30108 */  j          .Llevel_28_8007CFC8
/* 655D4E8 8007CFB8 0F000324 */   addiu     $v1, $zero, 0xF
.Llevel_28_8007CFBC:
/* 655D4EC 8007CFBC 03006104 */  bgez       $v1, .Llevel_28_8007CFCC
/* 655D4F0 8007CFC0 30006234 */   ori       $v0, $v1, 0x30
/* 655D4F4 8007CFC4 21180000 */  addu       $v1, $zero, $zero
.Llevel_28_8007CFC8:
/* 655D4F8 8007CFC8 30006234 */  ori        $v0, $v1, 0x30
.Llevel_28_8007CFCC:
/* 655D4FC 8007CFCC 540006A2 */  sb         $a2, 0x54($s0)
/* 655D500 8007CFD0 550000A2 */  sb         $zero, 0x55($s0)
/* 655D504 8007CFD4 560005A2 */  sb         $a1, 0x56($s0)
.Llevel_28_8007CFD8:
/* 655D508 8007CFD8 570002A2 */  sb         $v0, 0x57($s0)
/* 655D50C 8007CFDC 0000228E */  lw         $v0, 0x0($s1)
/* 655D510 8007CFE0 00000000 */  nop
/* 655D514 8007CFE4 01004224 */  addiu      $v0, $v0, 0x1
/* 655D518 8007CFE8 000022AE */  sw         $v0, 0x0($s1)
.Llevel_28_8007CFEC:
/* 655D51C 8007CFEC 1800BF8F */  lw         $ra, 0x18($sp)
/* 655D520 8007CFF0 1400B18F */  lw         $s1, 0x14($sp)
/* 655D524 8007CFF4 1000B08F */  lw         $s0, 0x10($sp)
/* 655D528 8007CFF8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 655D52C 8007CFFC 0800E003 */  jr         $ra
/* 655D530 8007D000 00000000 */   nop
.size MobyUpdate_577_level_28, . - MobyUpdate_577_level_28
