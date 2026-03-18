.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007A4B0
/* 5DF51E0 8007A4B0 38FFBD27 */  addiu      $sp, $sp, -0xC8
/* 5DF51E4 8007A4B4 A800B2AF */  sw         $s2, 0xA8($sp)
/* 5DF51E8 8007A4B8 21908000 */  addu       $s2, $a0, $zero
/* 5DF51EC 8007A4BC C400BFAF */  sw         $ra, 0xC4($sp)
/* 5DF51F0 8007A4C0 C000BEAF */  sw         $fp, 0xC0($sp)
/* 5DF51F4 8007A4C4 BC00B7AF */  sw         $s7, 0xBC($sp)
/* 5DF51F8 8007A4C8 B800B6AF */  sw         $s6, 0xB8($sp)
/* 5DF51FC 8007A4CC B400B5AF */  sw         $s5, 0xB4($sp)
/* 5DF5200 8007A4D0 B000B4AF */  sw         $s4, 0xB0($sp)
/* 5DF5204 8007A4D4 AC00B3AF */  sw         $s3, 0xAC($sp)
/* 5DF5208 8007A4D8 A400B1AF */  sw         $s1, 0xA4($sp)
/* 5DF520C 8007A4DC A000B0AF */  sw         $s0, 0xA0($sp)
/* 5DF5210 8007A4E0 0C00458E */  lw         $a1, 0xC($s2)
/* 5DF5214 8007A4E4 0000568E */  lw         $s6, 0x0($s2)
/* 5DF5218 8007A4E8 0004A228 */  slti       $v0, $a1, 0x400
/* 5DF521C 8007A4EC 11004014 */  bnez       $v0, .Llevel_24_8007A534
/* 5DF5220 8007A4F0 00000000 */   nop
/* 5DF5224 8007A4F4 1000448E */  lw         $a0, 0x10($s2)
/* 5DF5228 8007A4F8 00000000 */  nop
/* 5DF522C 8007A4FC 00048228 */  slti       $v0, $a0, 0x400
/* 5DF5230 8007A500 0C004014 */  bnez       $v0, .Llevel_24_8007A534
/* 5DF5234 8007A504 00000000 */   nop
/* 5DF5238 8007A508 1400428E */  lw         $v0, 0x14($s2)
/* 5DF523C 8007A50C 00000000 */  nop
/* 5DF5240 8007A510 00044228 */  slti       $v0, $v0, 0x400
/* 5DF5244 8007A514 07004014 */  bnez       $v0, .Llevel_24_8007A534
/* 5DF5248 8007A518 0300033C */   lui       $v1, (0x3C000 >> 16)
/* 5DF524C 8007A51C 00C06334 */  ori        $v1, $v1, (0x3C000 & 0xFFFF)
/* 5DF5250 8007A520 2A106500 */  slt        $v0, $v1, $a1
/* 5DF5254 8007A524 03004014 */  bnez       $v0, .Llevel_24_8007A534
/* 5DF5258 8007A528 2A106400 */   slt       $v0, $v1, $a0
/* 5DF525C 8007A52C 09004010 */  beqz       $v0, .Llevel_24_8007A554
/* 5DF5260 8007A530 00000000 */   nop
.Llevel_24_8007A534:
/* 5DF5264 8007A534 0C00C48E */  lw         $a0, 0xC($s6)
/* 5DF5268 8007A538 00000000 */  nop
/* 5DF526C 8007A53C 03008010 */  beqz       $a0, .Llevel_24_8007A54C
/* 5DF5270 8007A540 00000000 */   nop
/* 5DF5274 8007A544 E242010C */  jal        func_80050B88
/* 5DF5278 8007A548 00000000 */   nop
.Llevel_24_8007A54C:
/* 5DF527C 8007A54C C656010C */  jal        func_80055B18
/* 5DF5280 8007A550 21204002 */   addu      $a0, $s2, $zero
.Llevel_24_8007A554:
/* 5DF5284 8007A554 48004392 */  lbu        $v1, 0x48($s2)
/* 5DF5288 8007A558 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF528C 8007A55C 30006210 */  beq        $v1, $v0, .Llevel_24_8007A620
/* 5DF5290 8007A560 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF5294 8007A564 49004292 */  lbu        $v0, 0x49($s2)
/* 5DF5298 8007A568 00000000 */  nop
/* 5DF529C 8007A56C 2C004014 */  bnez       $v0, .Llevel_24_8007A620
/* 5DF52A0 8007A570 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF52A4 8007A574 0C005126 */  addiu      $s1, $s2, 0xC
/* 5DF52A8 8007A578 21282002 */  addu       $a1, $s1, $zero
/* 5DF52AC 8007A57C 0800D08E */  lw         $s0, 0x8($s6)
/* 5DF52B0 8007A580 01001324 */  addiu      $s3, $zero, 0x1
/* 5DF52B4 8007A584 490053A2 */  sb         $s3, 0x49($s2)
/* 5DF52B8 8007A588 5E3C010C */  jal        func_8004F178
/* 5DF52BC 8007A58C 04000426 */   addiu     $a0, $s0, 0x4
/* 5DF52C0 8007A590 21202002 */  addu       $a0, $s1, $zero
/* 5DF52C4 8007A594 58020524 */  addiu      $a1, $zero, 0x258
/* 5DF52C8 8007A598 21300000 */  addu       $a2, $zero, $zero
/* 5DF52CC 8007A59C 21380000 */  addu       $a3, $zero, $zero
/* 5DF52D0 8007A5A0 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF52D4 8007A5A4 000002A6 */  sh         $v0, 0x0($s0)
/* 5DF52D8 8007A5A8 020002A6 */  sh         $v0, 0x2($s0)
/* 5DF52DC 8007A5AC 9500023C */  lui        $v0, (0x950000 >> 16)
/* 5DF52E0 8007A5B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DF52E4 8007A5B4 8C6E000C */  jal        func_8001BA30
/* 5DF52E8 8007A5B8 1400B2AF */   sw        $s2, 0x14($sp)
/* 5DF52EC 8007A5BC 21804000 */  addu       $s0, $v0, $zero
/* 5DF52F0 8007A5C0 0B000012 */  beqz       $s0, .Llevel_24_8007A5F0
/* 5DF52F4 8007A5C4 00000000 */   nop
/* 5DF52F8 8007A5C8 0000C486 */  lh         $a0, 0x0($s6)
/* 5DF52FC 8007A5CC 0200C586 */  lh         $a1, 0x2($s6)
/* 5DF5300 8007A5D0 203A010C */  jal        func_8004E880
/* 5DF5304 8007A5D4 21300000 */   addu      $a2, $zero, $zero
/* 5DF5308 8007A5D8 510002A2 */  sb         $v0, 0x51($s0)
/* 5DF530C 8007A5DC FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF5310 8007A5E0 02004014 */  bnez       $v0, .Llevel_24_8007A5EC
/* 5DF5314 8007A5E4 00000000 */   nop
/* 5DF5318 8007A5E8 510013A2 */  sb         $s3, 0x51($s0)
.Llevel_24_8007A5EC:
/* 5DF531C 8007A5EC 480053A2 */  sb         $s3, 0x48($s2)
.Llevel_24_8007A5F0:
/* 5DF5320 8007A5F0 1000A0AF */  sw         $zero, 0x10($sp)
/* 5DF5324 8007A5F4 0C004426 */  addiu      $a0, $s2, 0xC
/* 5DF5328 8007A5F8 0780053C */  lui        $a1, %hi(D_80070328)
/* 5DF532C 8007A5FC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5DF5330 8007A600 02000624 */  addiu      $a2, $zero, 0x2
/* 5DF5334 8007A604 C360000C */  jal        func_8001830C
/* 5DF5338 8007A608 21380000 */   addu      $a3, $zero, $zero
/* 5DF533C 8007A60C 02004010 */  beqz       $v0, .Llevel_24_8007A618
/* 5DF5340 8007A610 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF5344 8007A614 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_24_8007A618:
/* 5DF5348 8007A618 48004392 */  lbu        $v1, 0x48($s2)
/* 5DF534C 8007A61C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_8007A620:
/* 5DF5350 8007A620 AC006210 */  beq        $v1, $v0, .Llevel_24_8007A8D4
/* 5DF5354 8007A624 02006228 */   slti      $v0, $v1, 0x2
/* 5DF5358 8007A628 05004010 */  beqz       $v0, .Llevel_24_8007A640
/* 5DF535C 8007A62C 00000000 */   nop
/* 5DF5360 8007A630 0A006010 */  beqz       $v1, .Llevel_24_8007A65C
/* 5DF5364 8007A634 1800A427 */   addiu     $a0, $sp, 0x18
/* 5DF5368 8007A638 A0EB0108 */  j          .Llevel_24_8007AE80
/* 5DF536C 8007A63C 00000000 */   nop
.Llevel_24_8007A640:
/* 5DF5370 8007A640 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF5374 8007A644 DD016210 */  beq        $v1, $v0, .Llevel_24_8007ADBC
/* 5DF5378 8007A648 03000224 */   addiu     $v0, $zero, 0x3
/* 5DF537C 8007A64C 11016210 */  beq        $v1, $v0, .Llevel_24_8007AA94
/* 5DF5380 8007A650 00000000 */   nop
/* 5DF5384 8007A654 A0EB0108 */  j          .Llevel_24_8007AE80
/* 5DF5388 8007A658 00000000 */   nop
.Llevel_24_8007A65C:
/* 5DF538C 8007A65C 0C005026 */  addiu      $s0, $s2, 0xC
/* 5DF5390 8007A660 5E3C010C */  jal        func_8004F178
/* 5DF5394 8007A664 21280002 */   addu      $a1, $s0, $zero
/* 5DF5398 8007A668 1800A427 */  addiu      $a0, $sp, 0x18
/* 5DF539C 8007A66C 0000C386 */  lh         $v1, 0x0($s6)
/* 5DF53A0 8007A670 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF53A4 8007A674 21280002 */  addu       $a1, $s0, $zero
/* 5DF53A8 8007A678 21104300 */  addu       $v0, $v0, $v1
/* 5DF53AC 8007A67C 0C0042AE */  sw         $v0, 0xC($s2)
/* 5DF53B0 8007A680 0200C386 */  lh         $v1, 0x2($s6)
/* 5DF53B4 8007A684 1000428E */  lw         $v0, 0x10($s2)
/* 5DF53B8 8007A688 02000624 */  addiu      $a2, $zero, 0x2
/* 5DF53BC 8007A68C 21104300 */  addu       $v0, $v0, $v1
/* 5DF53C0 8007A690 100042AE */  sw         $v0, 0x10($s2)
/* 5DF53C4 8007A694 0400C386 */  lh         $v1, 0x4($s6)
/* 5DF53C8 8007A698 1400428E */  lw         $v0, 0x14($s2)
/* 5DF53CC 8007A69C 9500073C */  lui        $a3, (0x950000 >> 16)
/* 5DF53D0 8007A6A0 21104300 */  addu       $v0, $v0, $v1
/* 5DF53D4 8007A6A4 140042AE */  sw         $v0, 0x14($s2)
/* 5DF53D8 8007A6A8 0780013C */  lui        $at, %hi(D_80071934)
/* 5DF53DC 8007A6AC 341920AC */  sw         $zero, %lo(D_80071934)($at)
/* 5DF53E0 8007A6B0 C360000C */  jal        func_8001830C
/* 5DF53E4 8007A6B4 1000A0AF */   sw        $zero, 0x10($sp)
/* 5DF53E8 8007A6B8 05004010 */  beqz       $v0, .Llevel_24_8007A6D0
/* 5DF53EC 8007A6BC 21200002 */   addu      $a0, $s0, $zero
/* 5DF53F0 8007A6C0 5E3C010C */  jal        func_8004F178
/* 5DF53F4 8007A6C4 1800A527 */   addiu     $a1, $sp, 0x18
/* 5DF53F8 8007A6C8 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF53FC 8007A6CC 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_24_8007A6D0:
/* 5DF5400 8007A6D0 21200002 */  addu       $a0, $s0, $zero
/* 5DF5404 8007A6D4 90010524 */  addiu      $a1, $zero, 0x190
/* 5DF5408 8007A6D8 21300000 */  addu       $a2, $zero, $zero
/* 5DF540C 8007A6DC 21380000 */  addu       $a3, $zero, $zero
/* 5DF5410 8007A6E0 9500023C */  lui        $v0, (0x950000 >> 16)
/* 5DF5414 8007A6E4 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DF5418 8007A6E8 8C6E000C */  jal        func_8001BA30
/* 5DF541C 8007A6EC 1400B2AF */   sw        $s2, 0x14($sp)
/* 5DF5420 8007A6F0 21804000 */  addu       $s0, $v0, $zero
/* 5DF5424 8007A6F4 1F000012 */  beqz       $s0, .Llevel_24_8007A774
/* 5DF5428 8007A6F8 0C004426 */   addiu     $a0, $s2, 0xC
/* 5DF542C 8007A6FC 0000C486 */  lh         $a0, 0x0($s6)
/* 5DF5430 8007A700 0200C586 */  lh         $a1, 0x2($s6)
/* 5DF5434 8007A704 203A010C */  jal        func_8004E880
/* 5DF5438 8007A708 21300000 */   addu      $a2, $zero, $zero
/* 5DF543C 8007A70C 510002A2 */  sb         $v0, 0x51($s0)
/* 5DF5440 8007A710 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF5444 8007A714 02004014 */  bnez       $v0, .Llevel_24_8007A720
/* 5DF5448 8007A718 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF544C 8007A71C 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_24_8007A720:
/* 5DF5450 8007A720 36000396 */  lhu        $v1, 0x36($s0)
/* 5DF5454 8007A724 00000000 */  nop
/* 5DF5458 8007A728 38FF6224 */  addiu      $v0, $v1, -0xC8
/* 5DF545C 8007A72C 0200422C */  sltiu      $v0, $v0, 0x2
/* 5DF5460 8007A730 10004014 */  bnez       $v0, .Llevel_24_8007A774
/* 5DF5464 8007A734 0C004426 */   addiu     $a0, $s2, 0xC
/* 5DF5468 8007A738 00140300 */  sll        $v0, $v1, 16
/* 5DF546C 8007A73C 031C0200 */  sra        $v1, $v0, 16
/* 5DF5470 8007A740 D1000224 */  addiu      $v0, $zero, 0xD1
/* 5DF5474 8007A744 0B006210 */  beq        $v1, $v0, .Llevel_24_8007A774
/* 5DF5478 8007A748 10010224 */   addiu     $v0, $zero, 0x110
/* 5DF547C 8007A74C 09006210 */  beq        $v1, $v0, .Llevel_24_8007A774
/* 5DF5480 8007A750 33020224 */   addiu     $v0, $zero, 0x233
/* 5DF5484 8007A754 07006210 */  beq        $v1, $v0, .Llevel_24_8007A774
/* 5DF5488 8007A758 D0000224 */   addiu     $v0, $zero, 0xD0
/* 5DF548C 8007A75C 36004386 */  lh         $v1, 0x36($s2)
/* 5DF5490 8007A760 00000000 */  nop
/* 5DF5494 8007A764 03006210 */  beq        $v1, $v0, .Llevel_24_8007A774
/* 5DF5498 8007A768 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF549C 8007A76C 480042A2 */  sb         $v0, 0x48($s2)
/* 5DF54A0 8007A770 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_24_8007A774:
/* 5DF54A4 8007A774 2C010524 */  addiu      $a1, $zero, 0x12C
/* 5DF54A8 8007A778 02000624 */  addiu      $a2, $zero, 0x2
/* 5DF54AC 8007A77C 21380000 */  addu       $a3, $zero, $zero
/* 5DF54B0 8007A780 9500023C */  lui        $v0, (0x950000 >> 16)
/* 5DF54B4 8007A784 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DF54B8 8007A788 4E64000C */  jal        func_80019138
/* 5DF54BC 8007A78C 1400B2AF */   sw        $s2, 0x14($sp)
/* 5DF54C0 8007A790 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5DF54C4 8007A794 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5DF54C8 8007A798 00000000 */  nop
/* 5DF54CC 8007A79C 03004230 */  andi       $v0, $v0, 0x3
/* 5DF54D0 8007A7A0 3A004014 */  bnez       $v0, .Llevel_24_8007A88C
/* 5DF54D4 8007A7A4 00000000 */   nop
/* 5DF54D8 8007A7A8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF54DC 8007A7AC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF54E0 8007A7B0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF54E4 8007A7B4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF54E8 8007A7B8 00000000 */  nop
/* 5DF54EC 8007A7BC 23104300 */  subu       $v0, $v0, $v1
/* 5DF54F0 8007A7C0 15004228 */  slti       $v0, $v0, 0x15
/* 5DF54F4 8007A7C4 31004014 */  bnez       $v0, .Llevel_24_8007A88C
/* 5DF54F8 8007A7C8 E3010424 */   addiu     $a0, $zero, 0x1E3
/* 5DF54FC 8007A7CC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF5500 8007A7D0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF5504 8007A7D4 00000000 */  nop
/* 5DF5508 8007A7D8 09F84000 */  jalr       $v0
/* 5DF550C 8007A7DC 21284002 */   addu      $a1, $s2, $zero
/* 5DF5510 8007A7E0 21804000 */  addu       $s0, $v0, $zero
/* 5DF5514 8007A7E4 29000012 */  beqz       $s0, .Llevel_24_8007A88C
/* 5DF5518 8007A7E8 2800A427 */   addiu     $a0, $sp, 0x28
/* 5DF551C 8007A7EC 0000C286 */  lh         $v0, 0x0($s6)
/* 5DF5520 8007A7F0 00000000 */  nop
/* 5DF5524 8007A7F4 2800A2AF */  sw         $v0, 0x28($sp)
/* 5DF5528 8007A7F8 0200C286 */  lh         $v0, 0x2($s6)
/* 5DF552C 8007A7FC 21280000 */  addu       $a1, $zero, $zero
/* 5DF5530 8007A800 7A3B010C */  jal        func_8004EDE8
/* 5DF5534 8007A804 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 5DF5538 8007A808 21204000 */  addu       $a0, $v0, $zero
/* 5DF553C 8007A80C 0400C586 */  lh         $a1, 0x4($s6)
/* 5DF5540 8007A810 203A010C */  jal        func_8004E880
/* 5DF5544 8007A814 21300000 */   addu      $a2, $zero, $zero
/* 5DF5548 8007A818 450002A2 */  sb         $v0, 0x45($s0)
/* 5DF554C 8007A81C 0000C486 */  lh         $a0, 0x0($s6)
/* 5DF5550 8007A820 0200C586 */  lh         $a1, 0x2($s6)
/* 5DF5554 8007A824 203A010C */  jal        func_8004E880
/* 5DF5558 8007A828 21300000 */   addu      $a2, $zero, $zero
/* 5DF555C 8007A82C 460002A2 */  sb         $v0, 0x46($s0)
/* 5DF5560 8007A830 36000286 */  lh         $v0, 0x36($s0)
/* 5DF5564 8007A834 01000324 */  addiu      $v1, $zero, 0x1
/* 5DF5568 8007A838 480003A2 */  sb         $v1, 0x48($s0)
/* 5DF556C 8007A83C 420000A2 */  sb         $zero, 0x42($s0)
/* 5DF5570 8007A840 80100200 */  sll        $v0, $v0, 2
/* 5DF5574 8007A844 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 5DF5578 8007A848 21082200 */  addu       $at, $at, $v0
/* 5DF557C 8007A84C 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 5DF5580 8007A850 00000000 */  nop
/* 5DF5584 8007A854 4000428C */  lw         $v0, 0x40($v0)
/* 5DF5588 8007A858 00000000 */  nop
/* 5DF558C 8007A85C 00004290 */  lbu        $v0, 0x0($v0)
/* 5DF5590 8007A860 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 5DF5594 8007A864 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 5DF5598 8007A868 3F0003A2 */  sb         $v1, 0x3F($s0)
/* 5DF559C 8007A86C 02000324 */  addiu      $v1, $zero, 0x2
/* 5DF55A0 8007A870 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 5DF55A4 8007A874 480003A2 */  sb         $v1, 0x48($s0)
/* 5DF55A8 8007A878 0200422C */  sltiu      $v0, $v0, 0x2
/* 5DF55AC 8007A87C 01004238 */  xori       $v0, $v0, 0x1
/* 5DF55B0 8007A880 23100200 */  negu       $v0, $v0
/* 5DF55B4 8007A884 30004230 */  andi       $v0, $v0, 0x30
/* 5DF55B8 8007A888 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_24_8007A88C:
/* 5DF55BC 8007A88C 48004292 */  lbu        $v0, 0x48($s2)
/* 5DF55C0 8007A890 00000000 */  nop
/* 5DF55C4 8007A894 7A014014 */  bnez       $v0, .Llevel_24_8007AE80
/* 5DF55C8 8007A898 0700C426 */   addiu     $a0, $s6, 0x7
/* 5DF55CC 8007A89C 69D6000C */  jal        func_800359A4
/* 5DF55D0 8007A8A0 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF55D4 8007A8A4 76014010 */  beqz       $v0, .Llevel_24_8007AE80
/* 5DF55D8 8007A8A8 00000000 */   nop
/* 5DF55DC 8007A8AC 0C00C48E */  lw         $a0, 0xC($s6)
/* 5DF55E0 8007A8B0 00000000 */  nop
/* 5DF55E4 8007A8B4 04008010 */  beqz       $a0, .Llevel_24_8007A8C8
/* 5DF55E8 8007A8B8 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF55EC 8007A8BC E242010C */  jal        func_80050B88
/* 5DF55F0 8007A8C0 00000000 */   nop
/* 5DF55F4 8007A8C4 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_8007A8C8:
/* 5DF55F8 8007A8C8 0C00C0AE */  sw         $zero, 0xC($s6)
/* 5DF55FC 8007A8CC A0EB0108 */  j          .Llevel_24_8007AE80
/* 5DF5600 8007A8D0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007A8D4:
/* 5DF5604 8007A8D4 21204002 */  addu       $a0, $s2, $zero
/* 5DF5608 8007A8D8 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF560C 8007A8DC AFEE000C */  jal        func_8003BABC
/* 5DF5610 8007A8E0 21300000 */   addu      $a2, $zero, $zero
/* 5DF5614 8007A8E4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF5618 8007A8E8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF561C 8007A8EC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF5620 8007A8F0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF5624 8007A8F4 00000000 */  nop
/* 5DF5628 8007A8F8 23104300 */  subu       $v0, $v0, $v1
/* 5DF562C 8007A8FC 15004228 */  slti       $v0, $v0, 0x15
/* 5DF5630 8007A900 17004014 */  bnez       $v0, .Llevel_24_8007A960
/* 5DF5634 8007A904 00000000 */   nop
/* 5DF5638 8007A908 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 5DF563C 8007A90C E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 5DF5640 8007A910 00000000 */  nop
/* 5DF5644 8007A914 31754228 */  slti       $v0, $v0, 0x7531
/* 5DF5648 8007A918 11004014 */  bnez       $v0, .Llevel_24_8007A960
/* 5DF564C 8007A91C 46010424 */   addiu     $a0, $zero, 0x146
/* 5DF5650 8007A920 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF5654 8007A924 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF5658 8007A928 00000000 */  nop
/* 5DF565C 8007A92C 09F84000 */  jalr       $v0
/* 5DF5660 8007A930 21284002 */   addu      $a1, $s2, $zero
/* 5DF5664 8007A934 21184000 */  addu       $v1, $v0, $zero
/* 5DF5668 8007A938 09006010 */  beqz       $v1, .Llevel_24_8007A960
/* 5DF566C 8007A93C 00000000 */   nop
/* 5DF5670 8007A940 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 5DF5674 8007A944 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 5DF5678 8007A948 00000000 */  nop
/* 5DF567C 8007A94C 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 5DF5680 8007A950 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 5DF5684 8007A954 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 5DF5688 8007A958 07000224 */  addiu      $v0, $zero, 0x7
/* 5DF568C 8007A95C 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_24_8007A960:
/* 5DF5690 8007A960 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF5694 8007A964 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF5698 8007A968 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF569C 8007A96C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF56A0 8007A970 00000000 */  nop
/* 5DF56A4 8007A974 23104300 */  subu       $v0, $v0, $v1
/* 5DF56A8 8007A978 15004228 */  slti       $v0, $v0, 0x15
/* 5DF56AC 8007A97C 3B004014 */  bnez       $v0, .Llevel_24_8007AA6C
/* 5DF56B0 8007A980 21A00000 */   addu      $s4, $zero, $zero
/* 5DF56B4 8007A984 0780153C */  lui        $s5, %hi(D_8006E020)
/* 5DF56B8 8007A988 20E0B526 */  addiu      $s5, $s5, %lo(D_8006E020)
/* 5DF56BC 8007A98C 21980000 */  addu       $s3, $zero, $zero
.Llevel_24_8007A990:
/* 5DF56C0 8007A990 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 5DF56C4 8007A994 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 5DF56C8 8007A998 00000000 */  nop
/* 5DF56CC 8007A99C 31754228 */  slti       $v0, $v0, 0x7531
/* 5DF56D0 8007A9A0 32004014 */  bnez       $v0, .Llevel_24_8007AA6C
/* 5DF56D4 8007A9A4 1D020424 */   addiu     $a0, $zero, 0x21D
/* 5DF56D8 8007A9A8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF56DC 8007A9AC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF56E0 8007A9B0 00000000 */  nop
/* 5DF56E4 8007A9B4 09F84000 */  jalr       $v0
/* 5DF56E8 8007A9B8 21284002 */   addu      $a1, $s2, $zero
/* 5DF56EC 8007A9BC 21884000 */  addu       $s1, $v0, $zero
/* 5DF56F0 8007A9C0 1D002012 */  beqz       $s1, .Llevel_24_8007AA38
/* 5DF56F4 8007A9C4 21300000 */   addu      $a2, $zero, $zero
/* 5DF56F8 8007A9C8 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF56FC 8007A9CC 0000A48E */  lw         $a0, 0x0($s5)
/* 5DF5700 8007A9D0 1000438E */  lw         $v1, 0x10($s2)
/* 5DF5704 8007A9D4 0400A58E */  lw         $a1, 0x4($s5)
/* 5DF5708 8007A9D8 23204400 */  subu       $a0, $v0, $a0
/* 5DF570C 8007A9DC 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 5DF5710 8007A9E0 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 5DF5714 8007A9E4 00000000 */  nop
/* 5DF5718 8007A9E8 18FC4224 */  addiu      $v0, $v0, -0x3E8
/* 5DF571C 8007A9EC 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 5DF5720 8007A9F0 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 5DF5724 8007A9F4 203A010C */  jal        func_8004E880
/* 5DF5728 8007A9F8 23286500 */   subu      $a1, $v1, $a1
/* 5DF572C 8007A9FC 9171010C */  jal        rand
/* 5DF5730 8007AA00 21804000 */   addu      $s0, $v0, $zero
/* 5DF5734 8007AA04 40001026 */  addiu      $s0, $s0, 0x40
/* 5DF5738 8007AA08 1F004230 */  andi       $v0, $v0, 0x1F
/* 5DF573C 8007AA0C 21800202 */  addu       $s0, $s0, $v0
/* 5DF5740 8007AA10 9171010C */  jal        rand
/* 5DF5744 8007AA14 460030A2 */   sb        $s0, 0x46($s1)
/* 5DF5748 8007AA18 1E004230 */  andi       $v0, $v0, 0x1E
/* 5DF574C 8007AA1C 21106202 */  addu       $v0, $s3, $v0
/* 5DF5750 8007AA20 F1FF4224 */  addiu      $v0, $v0, -0xF
/* 5DF5754 8007AA24 450022A2 */  sb         $v0, 0x45($s1)
/* 5DF5758 8007AA28 08000224 */  addiu      $v0, $zero, 0x8
/* 5DF575C 8007AA2C 470022A2 */  sb         $v0, 0x47($s1)
/* 5DF5760 8007AA30 2A000224 */  addiu      $v0, $zero, 0x2A
/* 5DF5764 8007AA34 4C0022A2 */  sb         $v0, 0x4C($s1)
.Llevel_24_8007AA38:
/* 5DF5768 8007AA38 01009426 */  addiu      $s4, $s4, 0x1
/* 5DF576C 8007AA3C 0500822A */  slti       $v0, $s4, 0x5
/* 5DF5770 8007AA40 0A004010 */  beqz       $v0, .Llevel_24_8007AA6C
/* 5DF5774 8007AA44 33007326 */   addiu     $s3, $s3, 0x33
/* 5DF5778 8007AA48 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF577C 8007AA4C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF5780 8007AA50 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF5784 8007AA54 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF5788 8007AA58 00000000 */  nop
/* 5DF578C 8007AA5C 23104300 */  subu       $v0, $v0, $v1
/* 5DF5790 8007AA60 15004228 */  slti       $v0, $v0, 0x15
/* 5DF5794 8007AA64 CAFF4010 */  beqz       $v0, .Llevel_24_8007A990
/* 5DF5798 8007AA68 00000000 */   nop
.Llevel_24_8007AA6C:
/* 5DF579C 8007AA6C 21204002 */  addu       $a0, $s2, $zero
/* 5DF57A0 8007AA70 4957010C */  jal        func_80055D24
/* 5DF57A4 8007AA74 02000524 */   addiu     $a1, $zero, 0x2
/* 5DF57A8 8007AA78 14000224 */  addiu      $v0, $zero, 0x14
/* 5DF57AC 8007AA7C 410040A2 */  sb         $zero, 0x41($s2)
/* 5DF57B0 8007AA80 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 5DF57B4 8007AA84 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 5DF57B8 8007AA88 0700C2A2 */  sb         $v0, 0x7($s6)
/* 5DF57BC 8007AA8C 03000224 */  addiu      $v0, $zero, 0x3
/* 5DF57C0 8007AA90 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_24_8007AA94:
/* 5DF57C4 8007AA94 0700C292 */  lbu        $v0, 0x7($s6)
/* 5DF57C8 8007AA98 00000000 */  nop
/* 5DF57CC 8007AA9C 0600422C */  sltiu      $v0, $v0, 0x6
/* 5DF57D0 8007AAA0 35004014 */  bnez       $v0, .Llevel_24_8007AB78
/* 5DF57D4 8007AAA4 58021524 */   addiu     $s5, $zero, 0x258
/* 5DF57D8 8007AAA8 21980000 */  addu       $s3, $zero, $zero
/* 5DF57DC 8007AAAC 4800B427 */  addiu      $s4, $sp, 0x48
/* 5DF57E0 8007AAB0 2800B127 */  addiu      $s1, $sp, 0x28
/* 5DF57E4 8007AAB4 3800B027 */  addiu      $s0, $sp, 0x38
.Llevel_24_8007AAB8:
/* 5DF57E8 8007AAB8 9171010C */  jal        rand
/* 5DF57EC 8007AABC 6000A0A3 */   sb        $zero, 0x60($sp)
/* 5DF57F0 8007AAC0 9171010C */  jal        rand
/* 5DF57F4 8007AAC4 6100A2A3 */   sb        $v0, 0x61($sp)
/* 5DF57F8 8007AAC8 6000A427 */  addiu      $a0, $sp, 0x60
/* 5DF57FC 8007AACC 21288002 */  addu       $a1, $s4, $zero
/* 5DF5800 8007AAD0 21300000 */  addu       $a2, $zero, $zero
/* 5DF5804 8007AAD4 A43A010C */  jal        func_8004EA90
/* 5DF5808 8007AAD8 6200A2A3 */   sb        $v0, 0x62($sp)
/* 5DF580C 8007AADC 9171010C */  jal        rand
/* 5DF5810 8007AAE0 01007326 */   addiu     $s3, $s3, 0x1
/* 5DF5814 8007AAE4 21208002 */  addu       $a0, $s4, $zero
/* 5DF5818 8007AAE8 21282002 */  addu       $a1, $s1, $zero
/* 5DF581C 8007AAEC 21302002 */  addu       $a2, $s1, $zero
/* 5DF5820 8007AAF0 1F004230 */  andi       $v0, $v0, 0x1F
/* 5DF5824 8007AAF4 30004224 */  addiu      $v0, $v0, 0x30
/* 5DF5828 8007AAF8 2800A2AF */  sw         $v0, 0x28($sp)
/* 5DF582C 8007AAFC 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 5DF5830 8007AB00 5B3B010C */  jal        func_8004ED6C
/* 5DF5834 8007AB04 3000A0AF */   sw        $zero, 0x30($sp)
/* 5DF5838 8007AB08 21200002 */  addu       $a0, $s0, $zero
/* 5DF583C 8007AB0C 5E3C010C */  jal        func_8004F178
/* 5DF5840 8007AB10 21282002 */   addu      $a1, $s1, $zero
/* 5DF5844 8007AB14 21200002 */  addu       $a0, $s0, $zero
/* 5DF5848 8007AB18 3A3C010C */  jal        func_8004F0E8
/* 5DF584C 8007AB1C 02000524 */   addiu     $a1, $zero, 0x2
/* 5DF5850 8007AB20 21200002 */  addu       $a0, $s0, $zero
/* 5DF5854 8007AB24 21280002 */  addu       $a1, $s0, $zero
/* 5DF5858 8007AB28 653C010C */  jal        func_8004F194
/* 5DF585C 8007AB2C 0C004626 */   addiu     $a2, $s2, 0xC
/* 5DF5860 8007AB30 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF5864 8007AB34 0D000524 */  addiu      $a1, $zero, 0xD
/* 5DF5868 8007AB38 21300002 */  addu       $a2, $s0, $zero
/* 5DF586C 8007AB3C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF5870 8007AB40 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF5874 8007AB44 00000000 */  nop
/* 5DF5878 8007AB48 09F84000 */  jalr       $v0
/* 5DF587C 8007AB4C 21382002 */   addu      $a3, $s1, $zero
/* 5DF5880 8007AB50 0400622A */  slti       $v0, $s3, 0x4
/* 5DF5884 8007AB54 D8FF4014 */  bnez       $v0, .Llevel_24_8007AAB8
/* 5DF5888 8007AB58 06000424 */   addiu     $a0, $zero, 0x6
/* 5DF588C 8007AB5C 46000524 */  addiu      $a1, $zero, 0x46
/* 5DF5890 8007AB60 0C004626 */  addiu      $a2, $s2, 0xC
/* 5DF5894 8007AB64 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF5898 8007AB68 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF589C 8007AB6C 00000000 */  nop
/* 5DF58A0 8007AB70 09F84000 */  jalr       $v0
/* 5DF58A4 8007AB74 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_24_8007AB78:
/* 5DF58A8 8007AB78 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5DF58AC 8007AB7C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5DF58B0 8007AB80 00000000 */  nop
/* 5DF58B4 8007AB84 01004230 */  andi       $v0, $v0, 0x1
/* 5DF58B8 8007AB88 22004014 */  bnez       $v0, .Llevel_24_8007AC14
/* 5DF58BC 8007AB8C 00000000 */   nop
/* 5DF58C0 8007AB90 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF58C4 8007AB94 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF58C8 8007AB98 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF58CC 8007AB9C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF58D0 8007ABA0 00000000 */  nop
/* 5DF58D4 8007ABA4 23104300 */  subu       $v0, $v0, $v1
/* 5DF58D8 8007ABA8 15004228 */  slti       $v0, $v0, 0x15
/* 5DF58DC 8007ABAC 19004014 */  bnez       $v0, .Llevel_24_8007AC14
/* 5DF58E0 8007ABB0 00000000 */   nop
/* 5DF58E4 8007ABB4 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 5DF58E8 8007ABB8 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 5DF58EC 8007ABBC 00000000 */  nop
/* 5DF58F0 8007ABC0 31754228 */  slti       $v0, $v0, 0x7531
/* 5DF58F4 8007ABC4 13004014 */  bnez       $v0, .Llevel_24_8007AC14
/* 5DF58F8 8007ABC8 E2010424 */   addiu     $a0, $zero, 0x1E2
/* 5DF58FC 8007ABCC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF5900 8007ABD0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF5904 8007ABD4 00000000 */  nop
/* 5DF5908 8007ABD8 09F84000 */  jalr       $v0
/* 5DF590C 8007ABDC 21284002 */   addu      $a1, $s2, $zero
/* 5DF5910 8007ABE0 21184000 */  addu       $v1, $v0, $zero
/* 5DF5914 8007ABE4 0B006010 */  beqz       $v1, .Llevel_24_8007AC14
/* 5DF5918 8007ABE8 00000000 */   nop
/* 5DF591C 8007ABEC 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 5DF5920 8007ABF0 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 5DF5924 8007ABF4 00000000 */  nop
/* 5DF5928 8007ABF8 24FA4224 */  addiu      $v0, $v0, -0x5DC
/* 5DF592C 8007ABFC 0780013C */  lui        $at, %hi(D_8006C7E8)
/* 5DF5930 8007AC00 E8C722AC */  sw         $v0, %lo(D_8006C7E8)($at)
/* 5DF5934 8007AC04 2A000224 */  addiu      $v0, $zero, 0x2A
/* 5DF5938 8007AC08 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 5DF593C 8007AC0C 0A000224 */  addiu      $v0, $zero, 0xA
/* 5DF5940 8007AC10 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_24_8007AC14:
/* 5DF5944 8007AC14 0700C392 */  lbu        $v1, 0x7($s6)
/* 5DF5948 8007AC18 00000000 */  nop
/* 5DF594C 8007AC1C 0B00622C */  sltiu      $v0, $v1, 0xB
/* 5DF5950 8007AC20 0F004014 */  bnez       $v0, .Llevel_24_8007AC60
/* 5DF5954 8007AC24 1800A302 */   mult      $s5, $v1
/* 5DF5958 8007AC28 14000224 */  addiu      $v0, $zero, 0x14
/* 5DF595C 8007AC2C 23104300 */  subu       $v0, $v0, $v1
/* 5DF5960 8007AC30 1800A202 */  mult       $s5, $v0
/* 5DF5964 8007AC34 12100000 */  mflo       $v0
/* 5DF5968 8007AC38 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 5DF596C 8007AC3C 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 5DF5970 8007AC40 18004300 */  mult       $v0, $v1
/* 5DF5974 8007AC44 43201500 */  sra        $a0, $s5, 1
/* 5DF5978 8007AC48 C3170200 */  sra        $v0, $v0, 31
/* 5DF597C 8007AC4C 10400000 */  mfhi       $t0
/* 5DF5980 8007AC50 C3180800 */  sra        $v1, $t0, 3
/* 5DF5984 8007AC54 23186200 */  subu       $v1, $v1, $v0
/* 5DF5988 8007AC58 22EB0108 */  j          .Llevel_24_8007AC88
/* 5DF598C 8007AC5C 21A88300 */   addu      $s5, $a0, $v1
.Llevel_24_8007AC60:
/* 5DF5990 8007AC60 12180000 */  mflo       $v1
/* 5DF5994 8007AC64 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 5DF5998 8007AC68 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 5DF599C 8007AC6C 18006200 */  mult       $v1, $v0
/* 5DF59A0 8007AC70 43201500 */  sra        $a0, $s5, 1
/* 5DF59A4 8007AC74 C31F0300 */  sra        $v1, $v1, 31
/* 5DF59A8 8007AC78 10400000 */  mfhi       $t0
/* 5DF59AC 8007AC7C C3100800 */  sra        $v0, $t0, 3
/* 5DF59B0 8007AC80 23104300 */  subu       $v0, $v0, $v1
/* 5DF59B4 8007AC84 21A88200 */  addu       $s5, $a0, $v0
.Llevel_24_8007AC88:
/* 5DF59B8 8007AC88 0C005026 */  addiu      $s0, $s2, 0xC
/* 5DF59BC 8007AC8C 21200002 */  addu       $a0, $s0, $zero
/* 5DF59C0 8007AC90 2128A002 */  addu       $a1, $s5, $zero
/* 5DF59C4 8007AC94 21300000 */  addu       $a2, $zero, $zero
/* 5DF59C8 8007AC98 21380000 */  addu       $a3, $zero, $zero
/* 5DF59CC 8007AC9C 0010023C */  lui        $v0, (0x10000000 >> 16)
/* 5DF59D0 8007ACA0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DF59D4 8007ACA4 8C6E000C */  jal        func_8001BA30
/* 5DF59D8 8007ACA8 1400B2AF */   sw        $s2, 0x14($sp)
/* 5DF59DC 8007ACAC 21200002 */  addu       $a0, $s0, $zero
/* 5DF59E0 8007ACB0 E803A526 */  addiu      $a1, $s5, 0x3E8
/* 5DF59E4 8007ACB4 21300000 */  addu       $a2, $zero, $zero
/* 5DF59E8 8007ACB8 21380000 */  addu       $a3, $zero, $zero
/* 5DF59EC 8007ACBC 9500023C */  lui        $v0, (0x950000 >> 16)
/* 5DF59F0 8007ACC0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5DF59F4 8007ACC4 8C6E000C */  jal        func_8001BA30
/* 5DF59F8 8007ACC8 1400B2AF */   sw        $s2, 0x14($sp)
/* 5DF59FC 8007ACCC 21804000 */  addu       $s0, $v0, $zero
/* 5DF5A00 8007ACD0 0E000012 */  beqz       $s0, .Llevel_24_8007AD0C
/* 5DF5A04 8007ACD4 21300000 */   addu      $a2, $zero, $zero
/* 5DF5A08 8007ACD8 0C00038E */  lw         $v1, 0xC($s0)
/* 5DF5A0C 8007ACDC 0C00448E */  lw         $a0, 0xC($s2)
/* 5DF5A10 8007ACE0 1000028E */  lw         $v0, 0x10($s0)
/* 5DF5A14 8007ACE4 1000458E */  lw         $a1, 0x10($s2)
/* 5DF5A18 8007ACE8 23206400 */  subu       $a0, $v1, $a0
/* 5DF5A1C 8007ACEC 203A010C */  jal        func_8004E880
/* 5DF5A20 8007ACF0 23284500 */   subu      $a1, $v0, $a1
/* 5DF5A24 8007ACF4 510002A2 */  sb         $v0, 0x51($s0)
/* 5DF5A28 8007ACF8 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF5A2C 8007ACFC 04004014 */  bnez       $v0, .Llevel_24_8007AD10
/* 5DF5A30 8007AD00 0C004426 */   addiu     $a0, $s2, 0xC
/* 5DF5A34 8007AD04 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF5A38 8007AD08 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_24_8007AD0C:
/* 5DF5A3C 8007AD0C 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_24_8007AD10:
/* 5DF5A40 8007AD10 BC02A526 */  addiu      $a1, $s5, 0x2BC
/* 5DF5A44 8007AD14 02000624 */  addiu      $a2, $zero, 0x2
/* 5DF5A48 8007AD18 21380000 */  addu       $a3, $zero, $zero
/* 5DF5A4C 8007AD1C 9500113C */  lui        $s1, (0x950000 >> 16)
/* 5DF5A50 8007AD20 1000B1AF */  sw         $s1, 0x10($sp)
/* 5DF5A54 8007AD24 4E64000C */  jal        func_80019138
/* 5DF5A58 8007AD28 1400B2AF */   sw        $s2, 0x14($sp)
/* 5DF5A5C 8007AD2C 15004010 */  beqz       $v0, .Llevel_24_8007AD84
/* 5DF5A60 8007AD30 0700C426 */   addiu     $a0, $s6, 0x7
/* 5DF5A64 8007AD34 0780103C */  lui        $s0, %hi(D_80071924)
/* 5DF5A68 8007AD38 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 5DF5A6C 8007AD3C 0000048E */  lw         $a0, 0x0($s0)
/* 5DF5A70 8007AD40 5502010C */  jal        func_80040954
/* 5DF5A74 8007AD44 00000000 */   nop
/* 5DF5A78 8007AD48 03000324 */  addiu      $v1, $zero, 0x3
/* 5DF5A7C 8007AD4C 0D004314 */  bne        $v0, $v1, .Llevel_24_8007AD84
/* 5DF5A80 8007AD50 0700C426 */   addiu     $a0, $s6, 0x7
/* 5DF5A84 8007AD54 0000028E */  lw         $v0, 0x0($s0)
/* 5DF5A88 8007AD58 0780033C */  lui        $v1, %hi(D_8006D05C)
/* 5DF5A8C 8007AD5C 5CD0638C */  lw         $v1, %lo(D_8006D05C)($v1)
/* 5DF5A90 8007AD60 3F004230 */  andi       $v0, $v0, 0x3F
/* 5DF5A94 8007AD64 80100200 */  sll        $v0, $v0, 2
/* 5DF5A98 8007AD68 21104300 */  addu       $v0, $v0, $v1
/* 5DF5A9C 8007AD6C 0000438C */  lw         $v1, 0x0($v0)
/* 5DF5AA0 8007AD70 00000000 */  nop
/* 5DF5AA4 8007AD74 0400628C */  lw         $v0, 0x4($v1)
/* 5DF5AA8 8007AD78 00000000 */  nop
/* 5DF5AAC 8007AD7C 25105100 */  or         $v0, $v0, $s1
/* 5DF5AB0 8007AD80 040062AC */  sw         $v0, 0x4($v1)
.Llevel_24_8007AD84:
/* 5DF5AB4 8007AD84 69D6000C */  jal        func_800359A4
/* 5DF5AB8 8007AD88 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF5ABC 8007AD8C 3C004010 */  beqz       $v0, .Llevel_24_8007AE80
/* 5DF5AC0 8007AD90 00000000 */   nop
/* 5DF5AC4 8007AD94 0C00C48E */  lw         $a0, 0xC($s6)
/* 5DF5AC8 8007AD98 00000000 */  nop
/* 5DF5ACC 8007AD9C 03008010 */  beqz       $a0, .Llevel_24_8007ADAC
/* 5DF5AD0 8007ADA0 00000000 */   nop
/* 5DF5AD4 8007ADA4 E242010C */  jal        func_80050B88
/* 5DF5AD8 8007ADA8 00000000 */   nop
.Llevel_24_8007ADAC:
/* 5DF5ADC 8007ADAC C656010C */  jal        func_80055B18
/* 5DF5AE0 8007ADB0 21204002 */   addu      $a0, $s2, $zero
/* 5DF5AE4 8007ADB4 A0EB0108 */  j          .Llevel_24_8007AE80
/* 5DF5AE8 8007ADB8 00000000 */   nop
.Llevel_24_8007ADBC:
/* 5DF5AEC 8007ADBC 0700C426 */  addiu      $a0, $s6, 0x7
/* 5DF5AF0 8007ADC0 69D6000C */  jal        func_800359A4
/* 5DF5AF4 8007ADC4 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF5AF8 8007ADC8 05004010 */  beqz       $v0, .Llevel_24_8007ADE0
/* 5DF5AFC 8007ADCC 00000000 */   nop
/* 5DF5B00 8007ADD0 C656010C */  jal        func_80055B18
/* 5DF5B04 8007ADD4 21204002 */   addu      $a0, $s2, $zero
/* 5DF5B08 8007ADD8 ABEC0108 */  j          .Llevel_24_8007B2AC
/* 5DF5B0C 8007ADDC 00000000 */   nop
.Llevel_24_8007ADE0:
/* 5DF5B10 8007ADE0 0700C392 */  lbu        $v1, 0x7($s6)
/* 5DF5B14 8007ADE4 00000000 */  nop
/* 5DF5B18 8007ADE8 80100300 */  sll        $v0, $v1, 2
/* 5DF5B1C 8007ADEC 21104300 */  addu       $v0, $v0, $v1
/* 5DF5B20 8007ADF0 80100200 */  sll        $v0, $v0, 2
/* 5DF5B24 8007ADF4 00040324 */  addiu      $v1, $zero, 0x400
/* 5DF5B28 8007ADF8 23186200 */  subu       $v1, $v1, $v0
/* 5DF5B2C 8007ADFC 00400224 */  addiu      $v0, $zero, 0x4000
/* 5DF5B30 8007AE00 1A004300 */  div        $zero, $v0, $v1
/* 5DF5B34 8007AE04 02006014 */  bnez       $v1, .Llevel_24_8007AE10
/* 5DF5B38 8007AE08 00000000 */   nop
/* 5DF5B3C 8007AE0C 0D000700 */  break      7
.Llevel_24_8007AE10:
/* 5DF5B40 8007AE10 FFFF0124 */  addiu      $at, $zero, -0x1
/* 5DF5B44 8007AE14 04006114 */  bne        $v1, $at, .Llevel_24_8007AE28
/* 5DF5B48 8007AE18 0080013C */   lui       $at, (0x80000000 >> 16)
/* 5DF5B4C 8007AE1C 02004114 */  bne        $v0, $at, .Llevel_24_8007AE28
/* 5DF5B50 8007AE20 00000000 */   nop
/* 5DF5B54 8007AE24 0D000600 */  break      6
.Llevel_24_8007AE28:
/* 5DF5B58 8007AE28 12100000 */  mflo       $v0
/* 5DF5B5C 8007AE2C 00000000 */  nop
/* 5DF5B60 8007AE30 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 5DF5B64 8007AE34 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF5B68 8007AE38 8000422C */  sltiu      $v0, $v0, 0x80
/* 5DF5B6C 8007AE3C 02004014 */  bnez       $v0, .Llevel_24_8007AE48
/* 5DF5B70 8007AE40 7F000224 */   addiu     $v0, $zero, 0x7F
/* 5DF5B74 8007AE44 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_24_8007AE48:
/* 5DF5B78 8007AE48 4F004292 */  lbu        $v0, 0x4F($s2)
/* 5DF5B7C 8007AE4C 00000000 */  nop
/* 5DF5B80 8007AE50 1200422C */  sltiu      $v0, $v0, 0x12
/* 5DF5B84 8007AE54 02004010 */  beqz       $v0, .Llevel_24_8007AE60
/* 5DF5B88 8007AE58 12000224 */   addiu     $v0, $zero, 0x12
/* 5DF5B8C 8007AE5C 4F0042A2 */  sb         $v0, 0x4F($s2)
.Llevel_24_8007AE60:
/* 5DF5B90 8007AE60 0700C292 */  lbu        $v0, 0x7($s6)
/* 5DF5B94 8007AE64 00000000 */  nop
/* 5DF5B98 8007AE68 80100200 */  sll        $v0, $v0, 2
/* 5DF5B9C 8007AE6C 540042A2 */  sb         $v0, 0x54($s2)
/* 5DF5BA0 8007AE70 0700C292 */  lbu        $v0, 0x7($s6)
/* 5DF5BA4 8007AE74 00000000 */  nop
/* 5DF5BA8 8007AE78 40100200 */  sll        $v0, $v0, 1
/* 5DF5BAC 8007AE7C 550042A2 */  sb         $v0, 0x55($s2)
.Llevel_24_8007AE80:
/* 5DF5BB0 8007AE80 48004392 */  lbu        $v1, 0x48($s2)
/* 5DF5BB4 8007AE84 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF5BB8 8007AE88 08016210 */  beq        $v1, $v0, .Llevel_24_8007B2AC
/* 5DF5BBC 8007AE8C AA2A103C */   lui       $s0, (0x2AAAAAAB >> 16)
/* 5DF5BC0 8007AE90 0800D38E */  lw         $s3, 0x8($s6)
/* 5DF5BC4 8007AE94 00000000 */  nop
/* 5DF5BC8 8007AE98 00006386 */  lh         $v1, 0x0($s3)
/* 5DF5BCC 8007AE9C ABAA1036 */  ori        $s0, $s0, (0x2AAAAAAB & 0xFFFF)
/* 5DF5BD0 8007AEA0 01006624 */  addiu      $a2, $v1, 0x1
/* 5DF5BD4 8007AEA4 1800D000 */  mult       $a2, $s0
/* 5DF5BD8 8007AEA8 0C004526 */  addiu      $a1, $s2, 0xC
/* 5DF5BDC 8007AEAC 40100300 */  sll        $v0, $v1, 1
/* 5DF5BE0 8007AEB0 21104300 */  addu       $v0, $v0, $v1
/* 5DF5BE4 8007AEB4 80100200 */  sll        $v0, $v0, 2
/* 5DF5BE8 8007AEB8 04005424 */  addiu      $s4, $v0, 0x4
/* 5DF5BEC 8007AEBC 21207402 */  addu       $a0, $s3, $s4
/* 5DF5BF0 8007AEC0 C3170600 */  sra        $v0, $a2, 31
/* 5DF5BF4 8007AEC4 10400000 */  mfhi       $t0
/* 5DF5BF8 8007AEC8 43180800 */  sra        $v1, $t0, 1
/* 5DF5BFC 8007AECC 23B86200 */  subu       $s7, $v1, $v0
/* 5DF5C00 8007AED0 40101700 */  sll        $v0, $s7, 1
/* 5DF5C04 8007AED4 21105700 */  addu       $v0, $v0, $s7
/* 5DF5C08 8007AED8 80100200 */  sll        $v0, $v0, 2
/* 5DF5C0C 8007AEDC 5E3C010C */  jal        func_8004F178
/* 5DF5C10 8007AEE0 23B8C200 */   subu      $s7, $a2, $v0
/* 5DF5C14 8007AEE4 00006586 */  lh         $a1, 0x0($s3)
/* 5DF5C18 8007AEE8 00000000 */  nop
/* 5DF5C1C 8007AEEC 0100A524 */  addiu      $a1, $a1, 0x1
/* 5DF5C20 8007AEF0 1800B000 */  mult       $a1, $s0
/* 5DF5C24 8007AEF4 02006496 */  lhu        $a0, 0x2($s3)
/* 5DF5C28 8007AEF8 10017526 */  addiu      $s5, $s3, 0x110
/* 5DF5C2C 8007AEFC 01008424 */  addiu      $a0, $a0, 0x1
/* 5DF5C30 8007AF00 C3170500 */  sra        $v0, $a1, 31
/* 5DF5C34 8007AF04 020064A6 */  sh         $a0, 0x2($s3)
/* 5DF5C38 8007AF08 00240400 */  sll        $a0, $a0, 16
/* 5DF5C3C 8007AF0C 03240400 */  sra        $a0, $a0, 16
/* 5DF5C40 8007AF10 0D008428 */  slti       $a0, $a0, 0xD
/* 5DF5C44 8007AF14 10400000 */  mfhi       $t0
/* 5DF5C48 8007AF18 43180800 */  sra        $v1, $t0, 1
/* 5DF5C4C 8007AF1C 23186200 */  subu       $v1, $v1, $v0
/* 5DF5C50 8007AF20 40100300 */  sll        $v0, $v1, 1
/* 5DF5C54 8007AF24 21104300 */  addu       $v0, $v0, $v1
/* 5DF5C58 8007AF28 80100200 */  sll        $v0, $v0, 2
/* 5DF5C5C 8007AF2C 2328A200 */  subu       $a1, $a1, $v0
/* 5DF5C60 8007AF30 94006826 */  addiu      $t0, $s3, 0x94
/* 5DF5C64 8007AF34 000065A6 */  sh         $a1, 0x0($s3)
/* 5DF5C68 8007AF38 9000A8AF */  sw         $t0, 0x90($sp)
/* 5DF5C6C 8007AF3C 18016826 */  addiu      $t0, $s3, 0x118
/* 5DF5C70 8007AF40 03008014 */  bnez       $a0, .Llevel_24_8007AF50
/* 5DF5C74 8007AF44 9800A8AF */   sw        $t0, 0x98($sp)
/* 5DF5C78 8007AF48 0C000224 */  addiu      $v0, $zero, 0xC
/* 5DF5C7C 8007AF4C 020062A6 */  sh         $v0, 0x2($s3)
.Llevel_24_8007AF50:
/* 5DF5C80 8007AF50 02006286 */  lh         $v0, 0x2($s3)
/* 5DF5C84 8007AF54 00000000 */  nop
/* 5DF5C88 8007AF58 0C004228 */  slti       $v0, $v0, 0xC
/* 5DF5C8C 8007AF5C 02004010 */  beqz       $v0, .Llevel_24_8007AF68
/* 5DF5C90 8007AF60 6000A427 */   addiu     $a0, $sp, 0x60
/* 5DF5C94 8007AF64 21B80000 */  addu       $s7, $zero, $zero
.Llevel_24_8007AF68:
/* 5DF5C98 8007AF68 7800A527 */  addiu      $a1, $sp, 0x78
/* 5DF5C9C 8007AF6C 21300000 */  addu       $a2, $zero, $zero
/* 5DF5CA0 8007AF70 21F08002 */  addu       $fp, $s4, $zero
/* 5DF5CA4 8007AF74 0780033C */  lui        $v1, %hi(D_8006C640)
/* 5DF5CA8 8007AF78 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 5DF5CAC 8007AF7C 9000B48F */  lw         $s4, 0x90($sp)
/* 5DF5CB0 8007AF80 C0100300 */  sll        $v0, $v1, 3
/* 5DF5CB4 8007AF84 23104300 */  subu       $v0, $v0, $v1
/* 5DF5CB8 8007AF88 6000A2A3 */  sb         $v0, 0x60($sp)
/* 5DF5CBC 8007AF8C 45004292 */  lbu        $v0, 0x45($s2)
/* 5DF5CC0 8007AF90 21800000 */  addu       $s0, $zero, $zero
/* 5DF5CC4 8007AF94 6100A2A3 */  sb         $v0, 0x61($sp)
/* 5DF5CC8 8007AF98 46004292 */  lbu        $v0, 0x46($s2)
/* 5DF5CCC 8007AF9C 6800B127 */  addiu      $s1, $sp, 0x68
/* 5DF5CD0 8007AFA0 A43A010C */  jal        func_8004EA90
/* 5DF5CD4 8007AFA4 6200A2A3 */   sb        $v0, 0x62($sp)
/* 5DF5CD8 8007AFA8 21204002 */  addu       $a0, $s2, $zero
/* 5DF5CDC 8007AFAC 4957010C */  jal        func_80055D24
/* 5DF5CE0 8007AFB0 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_24_8007AFB4:
/* 5DF5CE4 8007AFB4 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 5DF5CE8 8007AFB8 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 5DF5CEC 8007AFBC 00121000 */  sll        $v0, $s0, 8
/* 5DF5CF0 8007AFC0 18004300 */  mult       $v0, $v1
/* 5DF5CF4 8007AFC4 7800A427 */  addiu      $a0, $sp, 0x78
/* 5DF5CF8 8007AFC8 21282002 */  addu       $a1, $s1, $zero
/* 5DF5CFC 8007AFCC C3170200 */  sra        $v0, $v0, 31
/* 5DF5D00 8007AFD0 6800A0AF */  sw         $zero, 0x68($sp)
/* 5DF5D04 8007AFD4 10400000 */  mfhi       $t0
/* 5DF5D08 8007AFD8 43380800 */  sra        $a3, $t0, 1
/* 5DF5D0C 8007AFDC 2338E200 */  subu       $a3, $a3, $v0
/* 5DF5D10 8007AFE0 40380700 */  sll        $a3, $a3, 1
/* 5DF5D14 8007AFE4 0680083C */  lui        $t0, %hi(D_80065920)
/* 5DF5D18 8007AFE8 20590825 */  addiu      $t0, $t0, %lo(D_80065920)
/* 5DF5D1C 8007AFEC 2110E800 */  addu       $v0, $a3, $t0
/* 5DF5D20 8007AFF0 00004284 */  lh         $v0, 0x0($v0)
/* 5DF5D24 8007AFF4 21302002 */  addu       $a2, $s1, $zero
/* 5DF5D28 8007AFF8 80180200 */  sll        $v1, $v0, 2
/* 5DF5D2C 8007AFFC 21186200 */  addu       $v1, $v1, $v0
/* 5DF5D30 8007B000 00110300 */  sll        $v0, $v1, 4
/* 5DF5D34 8007B004 23104300 */  subu       $v0, $v0, $v1
/* 5DF5D38 8007B008 C3120200 */  sra        $v0, $v0, 11
/* 5DF5D3C 8007B00C 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 5DF5D40 8007B010 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF5D44 8007B014 21082700 */  addu       $at, $at, $a3
/* 5DF5D48 8007B018 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 5DF5D4C 8007B01C 01001026 */  addiu      $s0, $s0, 0x1
/* 5DF5D50 8007B020 80180200 */  sll        $v1, $v0, 2
/* 5DF5D54 8007B024 21186200 */  addu       $v1, $v1, $v0
/* 5DF5D58 8007B028 00110300 */  sll        $v0, $v1, 4
/* 5DF5D5C 8007B02C 23104300 */  subu       $v0, $v0, $v1
/* 5DF5D60 8007B030 C3120200 */  sra        $v0, $v0, 11
/* 5DF5D64 8007B034 5B3B010C */  jal        func_8004ED6C
/* 5DF5D68 8007B038 7000A2AF */   sw        $v0, 0x70($sp)
/* 5DF5D6C 8007B03C 21208002 */  addu       $a0, $s4, $zero
/* 5DF5D70 8007B040 21287E02 */  addu       $a1, $s3, $fp
/* 5DF5D74 8007B044 653C010C */  jal        func_8004F194
/* 5DF5D78 8007B048 21302002 */   addu      $a2, $s1, $zero
/* 5DF5D7C 8007B04C 0500022A */  slti       $v0, $s0, 0x5
/* 5DF5D80 8007B050 D8FF4014 */  bnez       $v0, .Llevel_24_8007AFB4
/* 5DF5D84 8007B054 0C009426 */   addiu     $s4, $s4, 0xC
/* 5DF5D88 8007B058 21800000 */  addu       $s0, $zero, $zero
/* 5DF5D8C 8007B05C 06801E3C */  lui        $fp, %hi(D_80065920)
/* 5DF5D90 8007B060 2059DE27 */  addiu      $fp, $fp, %lo(D_80065920)
/* 5DF5D94 8007B064 21902002 */  addu       $s2, $s1, $zero
/* 5DF5D98 8007B068 40101700 */  sll        $v0, $s7, 1
/* 5DF5D9C 8007B06C 21105700 */  addu       $v0, $v0, $s7
/* 5DF5DA0 8007B070 80100200 */  sll        $v0, $v0, 2
/* 5DF5DA4 8007B074 04005424 */  addiu      $s4, $v0, 0x4
/* 5DF5DA8 8007B078 3C001124 */  addiu      $s1, $zero, 0x3C
.Llevel_24_8007B07C:
/* 5DF5DAC 8007B07C 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 5DF5DB0 8007B080 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 5DF5DB4 8007B084 00121000 */  sll        $v0, $s0, 8
/* 5DF5DB8 8007B088 18004300 */  mult       $v0, $v1
/* 5DF5DBC 8007B08C 7800A427 */  addiu      $a0, $sp, 0x78
/* 5DF5DC0 8007B090 21284002 */  addu       $a1, $s2, $zero
/* 5DF5DC4 8007B094 C3170200 */  sra        $v0, $v0, 31
/* 5DF5DC8 8007B098 6800A0AF */  sw         $zero, 0x68($sp)
/* 5DF5DCC 8007B09C 10400000 */  mfhi       $t0
/* 5DF5DD0 8007B0A0 43380800 */  sra        $a3, $t0, 1
/* 5DF5DD4 8007B0A4 2338E200 */  subu       $a3, $a3, $v0
/* 5DF5DD8 8007B0A8 40380700 */  sll        $a3, $a3, 1
/* 5DF5DDC 8007B0AC 2110FE00 */  addu       $v0, $a3, $fp
/* 5DF5DE0 8007B0B0 00004384 */  lh         $v1, 0x0($v0)
/* 5DF5DE4 8007B0B4 21304002 */  addu       $a2, $s2, $zero
/* 5DF5DE8 8007B0B8 40100300 */  sll        $v0, $v1, 1
/* 5DF5DEC 8007B0BC 21104300 */  addu       $v0, $v0, $v1
/* 5DF5DF0 8007B0C0 C0100200 */  sll        $v0, $v0, 3
/* 5DF5DF4 8007B0C4 21104300 */  addu       $v0, $v0, $v1
/* 5DF5DF8 8007B0C8 83120200 */  sra        $v0, $v0, 10
/* 5DF5DFC 8007B0CC 6C00A2AF */  sw         $v0, 0x6C($sp)
/* 5DF5E00 8007B0D0 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF5E04 8007B0D4 21082700 */  addu       $at, $at, $a3
/* 5DF5E08 8007B0D8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5DF5E0C 8007B0DC 01001026 */  addiu      $s0, $s0, 0x1
/* 5DF5E10 8007B0E0 40100300 */  sll        $v0, $v1, 1
/* 5DF5E14 8007B0E4 21104300 */  addu       $v0, $v0, $v1
/* 5DF5E18 8007B0E8 C0100200 */  sll        $v0, $v0, 3
/* 5DF5E1C 8007B0EC 21104300 */  addu       $v0, $v0, $v1
/* 5DF5E20 8007B0F0 83120200 */  sra        $v0, $v0, 10
/* 5DF5E24 8007B0F4 5B3B010C */  jal        func_8004ED6C
/* 5DF5E28 8007B0F8 7000A2AF */   sw        $v0, 0x70($sp)
/* 5DF5E2C 8007B0FC 21287402 */  addu       $a1, $s3, $s4
/* 5DF5E30 8007B100 9000A88F */  lw         $t0, 0x90($sp)
/* 5DF5E34 8007B104 21304002 */  addu       $a2, $s2, $zero
/* 5DF5E38 8007B108 653C010C */  jal        func_8004F194
/* 5DF5E3C 8007B10C 21201101 */   addu      $a0, $t0, $s1
/* 5DF5E40 8007B110 0500022A */  slti       $v0, $s0, 0x5
/* 5DF5E44 8007B114 D9FF4014 */  bnez       $v0, .Llevel_24_8007B07C
/* 5DF5E48 8007B118 0C003126 */   addiu     $s1, $s1, 0xC
/* 5DF5E4C 8007B11C 9000A88F */  lw         $t0, 0x90($sp)
/* 5DF5E50 8007B120 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5DF5E54 8007B124 780002AD */  sw         $v0, 0x78($t0)
/* 5DF5E58 8007B128 8C000224 */  addiu      $v0, $zero, 0x8C
/* 5DF5E5C 8007B12C 0000A2A2 */  sb         $v0, 0x0($s5)
/* 5DF5E60 8007B130 64000224 */  addiu      $v0, $zero, 0x64
/* 5DF5E64 8007B134 0100A2A2 */  sb         $v0, 0x1($s5)
/* 5DF5E68 8007B138 28000224 */  addiu      $v0, $zero, 0x28
/* 5DF5E6C 8007B13C 0200A2A2 */  sb         $v0, 0x2($s5)
/* 5DF5E70 8007B140 02006586 */  lh         $a1, 0x2($s3)
/* 5DF5E74 8007B144 00000000 */  nop
/* 5DF5E78 8007B148 0C00A228 */  slti       $v0, $a1, 0xC
/* 5DF5E7C 8007B14C 28004010 */  beqz       $v0, .Llevel_24_8007B1F0
/* 5DF5E80 8007B150 0C000424 */   addiu     $a0, $zero, 0xC
/* 5DF5E84 8007B154 0000A392 */  lbu        $v1, 0x0($s5)
/* 5DF5E88 8007B158 23108500 */  subu       $v0, $a0, $a1
/* 5DF5E8C 8007B15C 18006200 */  mult       $v1, $v0
/* 5DF5E90 8007B160 12180000 */  mflo       $v1
/* 5DF5E94 8007B164 AA2A053C */  lui        $a1, (0x2AAAAAAB >> 16)
/* 5DF5E98 8007B168 ABAAA534 */  ori        $a1, $a1, (0x2AAAAAAB & 0xFFFF)
/* 5DF5E9C 8007B16C 18006500 */  mult       $v1, $a1
/* 5DF5EA0 8007B170 C31F0300 */  sra        $v1, $v1, 31
/* 5DF5EA4 8007B174 10400000 */  mfhi       $t0
/* 5DF5EA8 8007B178 43100800 */  sra        $v0, $t0, 1
/* 5DF5EAC 8007B17C 23104300 */  subu       $v0, $v0, $v1
/* 5DF5EB0 8007B180 0400A2A2 */  sb         $v0, 0x4($s5)
/* 5DF5EB4 8007B184 02006286 */  lh         $v0, 0x2($s3)
/* 5DF5EB8 8007B188 0100A392 */  lbu        $v1, 0x1($s5)
/* 5DF5EBC 8007B18C 23108200 */  subu       $v0, $a0, $v0
/* 5DF5EC0 8007B190 18006200 */  mult       $v1, $v0
/* 5DF5EC4 8007B194 12180000 */  mflo       $v1
/* 5DF5EC8 8007B198 00000000 */  nop
/* 5DF5ECC 8007B19C 00000000 */  nop
/* 5DF5ED0 8007B1A0 18006500 */  mult       $v1, $a1
/* 5DF5ED4 8007B1A4 C31F0300 */  sra        $v1, $v1, 31
/* 5DF5ED8 8007B1A8 10400000 */  mfhi       $t0
/* 5DF5EDC 8007B1AC 43100800 */  sra        $v0, $t0, 1
/* 5DF5EE0 8007B1B0 23104300 */  subu       $v0, $v0, $v1
/* 5DF5EE4 8007B1B4 0500A2A2 */  sb         $v0, 0x5($s5)
/* 5DF5EE8 8007B1B8 02006286 */  lh         $v0, 0x2($s3)
/* 5DF5EEC 8007B1BC 0200A392 */  lbu        $v1, 0x2($s5)
/* 5DF5EF0 8007B1C0 23208200 */  subu       $a0, $a0, $v0
/* 5DF5EF4 8007B1C4 18006400 */  mult       $v1, $a0
/* 5DF5EF8 8007B1C8 12180000 */  mflo       $v1
/* 5DF5EFC 8007B1CC 00000000 */  nop
/* 5DF5F00 8007B1D0 00000000 */  nop
/* 5DF5F04 8007B1D4 18006500 */  mult       $v1, $a1
/* 5DF5F08 8007B1D8 C31F0300 */  sra        $v1, $v1, 31
/* 5DF5F0C 8007B1DC 10400000 */  mfhi       $t0
/* 5DF5F10 8007B1E0 43100800 */  sra        $v0, $t0, 1
/* 5DF5F14 8007B1E4 23104300 */  subu       $v0, $v0, $v1
/* 5DF5F18 8007B1E8 7FEC0108 */  j          .Llevel_24_8007B1FC
/* 5DF5F1C 8007B1EC 0600A2A2 */   sb        $v0, 0x6($s5)
.Llevel_24_8007B1F0:
/* 5DF5F20 8007B1F0 0400A0A2 */  sb         $zero, 0x4($s5)
/* 5DF5F24 8007B1F4 0500A0A2 */  sb         $zero, 0x5($s5)
/* 5DF5F28 8007B1F8 0600A0A2 */  sb         $zero, 0x6($s5)
.Llevel_24_8007B1FC:
/* 5DF5F2C 8007B1FC 21800000 */  addu       $s0, $zero, $zero
/* 5DF5F30 8007B200 6666063C */  lui        $a2, (0x66666667 >> 16)
/* 5DF5F34 8007B204 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 5DF5F38 8007B208 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_24_8007B20C:
/* 5DF5F3C 8007B20C 01000326 */  addiu      $v1, $s0, 0x1
/* 5DF5F40 8007B210 C0201000 */  sll        $a0, $s0, 3
/* 5DF5F44 8007B214 18006600 */  mult       $v1, $a2
/* 5DF5F48 8007B218 9800A88F */  lw         $t0, 0x98($sp)
/* 5DF5F4C 8007B21C 05000226 */  addiu      $v0, $s0, 0x5
/* 5DF5F50 8007B220 21208800 */  addu       $a0, $a0, $t0
/* 5DF5F54 8007B224 000090A0 */  sb         $s0, 0x0($a0)
/* 5DF5F58 8007B228 21806000 */  addu       $s0, $v1, $zero
/* 5DF5F5C 8007B22C 020082A0 */  sb         $v0, 0x2($a0)
/* 5DF5F60 8007B230 C3171000 */  sra        $v0, $s0, 31
/* 5DF5F64 8007B234 040080A0 */  sb         $zero, 0x4($a0)
/* 5DF5F68 8007B238 050080A0 */  sb         $zero, 0x5($a0)
/* 5DF5F6C 8007B23C 060085A0 */  sb         $a1, 0x6($a0)
/* 5DF5F70 8007B240 070085A0 */  sb         $a1, 0x7($a0)
/* 5DF5F74 8007B244 10400000 */  mfhi       $t0
/* 5DF5F78 8007B248 43180800 */  sra        $v1, $t0, 1
/* 5DF5F7C 8007B24C 23186200 */  subu       $v1, $v1, $v0
/* 5DF5F80 8007B250 80100300 */  sll        $v0, $v1, 2
/* 5DF5F84 8007B254 21104300 */  addu       $v0, $v0, $v1
/* 5DF5F88 8007B258 23100202 */  subu       $v0, $s0, $v0
/* 5DF5F8C 8007B25C 010082A0 */  sb         $v0, 0x1($a0)
/* 5DF5F90 8007B260 05004224 */  addiu      $v0, $v0, 0x5
/* 5DF5F94 8007B264 030082A0 */  sb         $v0, 0x3($a0)
/* 5DF5F98 8007B268 0500022A */  slti       $v0, $s0, 0x5
/* 5DF5F9C 8007B26C E7FF4014 */  bnez       $v0, .Llevel_24_8007B20C
/* 5DF5FA0 8007B270 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 5DF5FA4 8007B274 9800A88F */  lw         $t0, 0x98($sp)
/* 5DF5FA8 8007B278 00000000 */  nop
/* 5DF5FAC 8007B27C 280002AD */  sw         $v0, 0x28($t0)
/* 5DF5FB0 8007B280 0C00C28E */  lw         $v0, 0xC($s6)
/* 5DF5FB4 8007B284 00000000 */  nop
/* 5DF5FB8 8007B288 08004014 */  bnez       $v0, .Llevel_24_8007B2AC
/* 5DF5FBC 8007B28C 2128A002 */   addu      $a1, $s5, $zero
/* 5DF5FC0 8007B290 1000C726 */  addiu      $a3, $s6, 0x10
/* 5DF5FC4 8007B294 9000A48F */  lw         $a0, 0x90($sp)
/* 5DF5FC8 8007B298 9800A68F */  lw         $a2, 0x98($sp)
/* 5DF5FCC 8007B29C 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF5FD0 8007B2A0 C042010C */  jal        func_80050B00
/* 5DF5FD4 8007B2A4 1000A2AF */   sw        $v0, 0x10($sp)
/* 5DF5FD8 8007B2A8 0C00C2AE */  sw         $v0, 0xC($s6)
.Llevel_24_8007B2AC:
/* 5DF5FDC 8007B2AC C400BF8F */  lw         $ra, 0xC4($sp)
/* 5DF5FE0 8007B2B0 C000BE8F */  lw         $fp, 0xC0($sp)
/* 5DF5FE4 8007B2B4 BC00B78F */  lw         $s7, 0xBC($sp)
/* 5DF5FE8 8007B2B8 B800B68F */  lw         $s6, 0xB8($sp)
/* 5DF5FEC 8007B2BC B400B58F */  lw         $s5, 0xB4($sp)
/* 5DF5FF0 8007B2C0 B000B48F */  lw         $s4, 0xB0($sp)
/* 5DF5FF4 8007B2C4 AC00B38F */  lw         $s3, 0xAC($sp)
/* 5DF5FF8 8007B2C8 A800B28F */  lw         $s2, 0xA8($sp)
/* 5DF5FFC 8007B2CC A400B18F */  lw         $s1, 0xA4($sp)
/* 5DF6000 8007B2D0 A000B08F */  lw         $s0, 0xA0($sp)
/* 5DF6004 8007B2D4 C800BD27 */  addiu      $sp, $sp, 0xC8
/* 5DF6008 8007B2D8 0800E003 */  jr         $ra
/* 5DF600C 8007B2DC 00000000 */   nop
.size func_level_24_8007A4B0, . - func_level_24_8007A4B0
