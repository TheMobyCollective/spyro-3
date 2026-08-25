.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_8007B340
/* 8B4E870 8007B340 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 8B4E874 8007B344 5800B4AF */  sw         $s4, 0x58($sp)
/* 8B4E878 8007B348 21A08000 */  addu       $s4, $a0, $zero
/* 8B4E87C 8007B34C 6000BFAF */  sw         $ra, 0x60($sp)
/* 8B4E880 8007B350 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 8B4E884 8007B354 5400B3AF */  sw         $s3, 0x54($sp)
/* 8B4E888 8007B358 5000B2AF */  sw         $s2, 0x50($sp)
/* 8B4E88C 8007B35C 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 8B4E890 8007B360 4800B0AF */  sw         $s0, 0x48($sp)
/* 8B4E894 8007B364 48009092 */  lbu        $s0, 0x48($s4)
/* 8B4E898 8007B368 0000928E */  lw         $s2, 0x0($s4)
/* 8B4E89C 8007B36C 05000012 */  beqz       $s0, .Llevel_44_8007B384
/* 8B4E8A0 8007B370 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4E8A4 8007B374 51000212 */  beq        $s0, $v0, .Llevel_44_8007B4BC
/* 8B4E8A8 8007B378 00000000 */   nop
/* 8B4E8AC 8007B37C D4ED0108 */  j          .Llevel_44_8007B750
/* 8B4E8B0 8007B380 00000000 */   nop
.Llevel_44_8007B384:
/* 8B4E8B4 8007B384 2400428E */  lw         $v0, 0x24($s2)
/* 8B4E8B8 8007B388 00000000 */  nop
/* 8B4E8BC 8007B38C 1D004010 */  beqz       $v0, .Llevel_44_8007B404
/* 8B4E8C0 8007B390 00000000 */   nop
/* 8B4E8C4 8007B394 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8B4E8C8 8007B398 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8B4E8CC 8007B39C 00000000 */  nop
/* 8B4E8D0 8007B3A0 18004014 */  bnez       $v0, .Llevel_44_8007B404
/* 8B4E8D4 8007B3A4 00000000 */   nop
/* 8B4E8D8 8007B3A8 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 8B4E8DC 8007B3AC B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 8B4E8E0 8007B3B0 00000000 */  nop
/* 8B4E8E4 8007B3B4 01004230 */  andi       $v0, $v0, 0x1
/* 8B4E8E8 8007B3B8 0A004014 */  bnez       $v0, .Llevel_44_8007B3E4
/* 8B4E8EC 8007B3BC 48008426 */   addiu     $a0, $s4, 0x48
/* 8B4E8F0 8007B3C0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 8B4E8F4 8007B3C4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 8B4E8F8 8007B3C8 0780013C */  lui        $at, %hi(D_80070300)
/* 8B4E8FC 8007B3CC 21082200 */  addu       $at, $at, $v0
/* 8B4E900 8007B3D0 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 8B4E904 8007B3D4 00000000 */  nop
/* 8B4E908 8007B3D8 01004230 */  andi       $v0, $v0, 0x1
/* 8B4E90C 8007B3DC 09004010 */  beqz       $v0, .Llevel_44_8007B404
/* 8B4E910 8007B3E0 00000000 */   nop
.Llevel_44_8007B3E4:
/* 8B4E914 8007B3E4 01000524 */  addiu      $a1, $zero, 0x1
/* 8B4E918 8007B3E8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8B4E91C 8007B3EC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8B4E920 8007B3F0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B4E924 8007B3F4 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 8B4E928 8007B3F8 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4E92C 8007B3FC EDED000C */  jal        func_8003B7B4
/* 8B4E930 8007B400 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_44_8007B404:
/* 8B4E934 8007B404 0000428E */  lw         $v0, 0x0($s2)
/* 8B4E938 8007B408 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 8B4E93C 8007B40C 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 8B4E940 8007B410 80100200 */  sll        $v0, $v0, 2
/* 8B4E944 8007B414 21104300 */  addu       $v0, $v0, $v1
/* 8B4E948 8007B418 0780033C */  lui        $v1, %hi(D_8006C640)
/* 8B4E94C 8007B41C 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 8B4E950 8007B420 0000448C */  lw         $a0, 0x0($v0)
/* 8B4E954 8007B424 02006014 */  bnez       $v1, .Llevel_44_8007B430
/* 8B4E958 8007B428 00000000 */   nop
/* 8B4E95C 8007B42C 040080AC */  sw         $zero, 0x4($a0)
.Llevel_44_8007B430:
/* 8B4E960 8007B430 0400828C */  lw         $v0, 0x4($a0)
/* 8B4E964 8007B434 0800438E */  lw         $v1, 0x8($s2)
/* 8B4E968 8007B438 00000000 */  nop
/* 8B4E96C 8007B43C 24104300 */  and        $v0, $v0, $v1
/* 8B4E970 8007B440 C3004010 */  beqz       $v0, .Llevel_44_8007B750
/* 8B4E974 8007B444 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4E978 8007B448 040080AC */  sw         $zero, 0x4($a0)
/* 8B4E97C 8007B44C 480082A2 */  sb         $v0, 0x48($s4)
/* 8B4E980 8007B450 0780043C */  lui        $a0, %hi(D_8006C5BC)
/* 8B4E984 8007B454 BCC5848C */  lw         $a0, %lo(D_8006C5BC)($a0)
/* 8B4E988 8007B458 15000224 */  addiu      $v0, $zero, 0x15
/* 8B4E98C 8007B45C 06008214 */  bne        $a0, $v0, .Llevel_44_8007B478
/* 8B4E990 8007B460 1A000224 */   addiu     $v0, $zero, 0x1A
/* 8B4E994 8007B464 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 8B4E998 8007B468 C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 8B4E99C 8007B46C 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4E9A0 8007B470 03006210 */  beq        $v1, $v0, .Llevel_44_8007B480
/* 8B4E9A4 8007B474 1A000224 */   addiu     $v0, $zero, 0x1A
.Llevel_44_8007B478:
/* 8B4E9A8 8007B478 09008214 */  bne        $a0, $v0, .Llevel_44_8007B4A0
/* 8B4E9AC 8007B47C 00000000 */   nop
.Llevel_44_8007B480:
/* 8B4E9B0 8007B480 48009026 */  addiu      $s0, $s4, 0x48
/* 8B4E9B4 8007B484 21200002 */  addu       $a0, $s0, $zero
/* 8B4E9B8 8007B488 0780063C */  lui        $a2, %hi(D_8006D088)
/* 8B4E9BC 8007B48C 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 8B4E9C0 8007B490 EDED000C */  jal        func_8003B7B4
/* 8B4E9C4 8007B494 01000524 */   addiu     $a1, $zero, 0x1
/* 8B4E9C8 8007B498 29ED0108 */  j          .Llevel_44_8007B4A4
/* 8B4E9CC 8007B49C 21200002 */   addu      $a0, $s0, $zero
.Llevel_44_8007B4A0:
/* 8B4E9D0 8007B4A0 48008426 */  addiu      $a0, $s4, 0x48
.Llevel_44_8007B4A4:
/* 8B4E9D4 8007B4A4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8B4E9D8 8007B4A8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8B4E9DC 8007B4AC EDED000C */  jal        func_8003B7B4
/* 8B4E9E0 8007B4B0 01000524 */   addiu     $a1, $zero, 0x1
/* 8B4E9E4 8007B4B4 D4ED0108 */  j          .Llevel_44_8007B750
/* 8B4E9E8 8007B4B8 00000000 */   nop
.Llevel_44_8007B4BC:
/* 8B4E9EC 8007B4BC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8B4E9F0 8007B4C0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8B4E9F4 8007B4C4 00000000 */  nop
/* 8B4E9F8 8007B4C8 05004228 */  slti       $v0, $v0, 0x5
/* 8B4E9FC 8007B4CC 9A004014 */  bnez       $v0, .Llevel_44_8007B738
/* 8B4EA00 8007B4D0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8B4EA04 8007B4D4 2000458E */  lw         $a1, 0x20($s2)
/* 8B4EA08 8007B4D8 00000000 */  nop
/* 8B4EA0C 8007B4DC 0300A210 */  beq        $a1, $v0, .Llevel_44_8007B4EC
/* 8B4EA10 8007B4E0 21208002 */   addu      $a0, $s4, $zero
/* 8B4EA14 8007B4E4 C4EE000C */  jal        func_8003BB10
/* 8B4EA18 8007B4E8 21300000 */   addu      $a2, $zero, $zero
.Llevel_44_8007B4EC:
/* 8B4EA1C 8007B4EC 1000438E */  lw         $v1, 0x10($s2)
/* 8B4EA20 8007B4F0 00000000 */  nop
/* 8B4EA24 8007B4F4 0F006014 */  bnez       $v1, .Llevel_44_8007B534
/* 8B4EA28 8007B4F8 00000000 */   nop
/* 8B4EA2C 8007B4FC 0C004586 */  lh         $a1, 0xC($s2)
/* 8B4EA30 8007B500 00000000 */  nop
/* 8B4EA34 8007B504 8C00A004 */  bltz       $a1, .Llevel_44_8007B738
/* 8B4EA38 8007B508 00020224 */   addiu     $v0, $zero, 0x200
/* 8B4EA3C 8007B50C 0E004486 */  lh         $a0, 0xE($s2)
/* 8B4EA40 8007B510 1400A2AF */  sw         $v0, 0x14($sp)
/* 8B4EA44 8007B514 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 8B4EA48 8007B518 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 8B4EA4C 8007B51C 1000A0AF */  sw         $zero, 0x10($sp)
/* 8B4EA50 8007B520 1400478E */  lw         $a3, 0x14($s2)
/* 8B4EA54 8007B524 09F84000 */  jalr       $v0
/* 8B4EA58 8007B528 21308002 */   addu      $a2, $s4, $zero
/* 8B4EA5C 8007B52C CEED0108 */  j          .Llevel_44_8007B738
/* 8B4EA60 8007B530 00000000 */   nop
.Llevel_44_8007B534:
/* 8B4EA64 8007B534 2C007014 */  bne        $v1, $s0, .Llevel_44_8007B5E8
/* 8B4EA68 8007B538 02000224 */   addiu     $v0, $zero, 0x2
/* 8B4EA6C 8007B53C 0C004286 */  lh         $v0, 0xC($s2)
/* 8B4EA70 8007B540 00000000 */  nop
/* 8B4EA74 8007B544 7C004004 */  bltz       $v0, .Llevel_44_8007B738
/* 8B4EA78 8007B548 00000000 */   nop
/* 8B4EA7C 8007B54C 0E004286 */  lh         $v0, 0xE($s2)
/* 8B4EA80 8007B550 00000000 */  nop
/* 8B4EA84 8007B554 78004018 */  blez       $v0, .Llevel_44_8007B738
/* 8B4EA88 8007B558 00000000 */   nop
/* 8B4EA8C 8007B55C 21208002 */  addu       $a0, $s4, $zero
/* 8B4EA90 8007B560 4957010C */  jal        func_80055D24
/* 8B4EA94 8007B564 04000524 */   addiu     $a1, $zero, 0x4
/* 8B4EA98 8007B568 0E004286 */  lh         $v0, 0xE($s2)
/* 8B4EA9C 8007B56C 00000000 */  nop
/* 8B4EAA0 8007B570 71004018 */  blez       $v0, .Llevel_44_8007B738
/* 8B4EAA4 8007B574 21880000 */   addu      $s1, $zero, $zero
/* 8B4EAA8 8007B578 21980000 */  addu       $s3, $zero, $zero
.Llevel_44_8007B57C:
/* 8B4EAAC 8007B57C 0C004486 */  lh         $a0, 0xC($s2)
/* 8B4EAB0 8007B580 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4EAB4 8007B584 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4EAB8 8007B588 00000000 */  nop
/* 8B4EABC 8007B58C 09F84000 */  jalr       $v0
/* 8B4EAC0 8007B590 21288002 */   addu      $a1, $s4, $zero
/* 8B4EAC4 8007B594 21804000 */  addu       $s0, $v0, $zero
/* 8B4EAC8 8007B598 0C000012 */  beqz       $s0, .Llevel_44_8007B5CC
/* 8B4EACC 8007B59C 1800A427 */   addiu     $a0, $sp, 0x18
/* 8B4EAD0 8007B5A0 1400458E */  lw         $a1, 0x14($s2)
/* 8B4EAD4 8007B5A4 5E3C010C */  jal        func_8004F178
/* 8B4EAD8 8007B5A8 2128B300 */   addu      $a1, $a1, $s3
/* 8B4EADC 8007B5AC 20008426 */  addiu      $a0, $s4, 0x20
/* 8B4EAE0 8007B5B0 1800A527 */  addiu      $a1, $sp, 0x18
/* 8B4EAE4 8007B5B4 5B3B010C */  jal        func_8004ED6C
/* 8B4EAE8 8007B5B8 2130A000 */   addu      $a2, $a1, $zero
/* 8B4EAEC 8007B5BC 0C000426 */  addiu      $a0, $s0, 0xC
/* 8B4EAF0 8007B5C0 21288000 */  addu       $a1, $a0, $zero
/* 8B4EAF4 8007B5C4 653C010C */  jal        func_8004F194
/* 8B4EAF8 8007B5C8 1800A627 */   addiu     $a2, $sp, 0x18
.Llevel_44_8007B5CC:
/* 8B4EAFC 8007B5CC 0E004286 */  lh         $v0, 0xE($s2)
/* 8B4EB00 8007B5D0 01003126 */  addiu      $s1, $s1, 0x1
/* 8B4EB04 8007B5D4 2A102202 */  slt        $v0, $s1, $v0
/* 8B4EB08 8007B5D8 E8FF4014 */  bnez       $v0, .Llevel_44_8007B57C
/* 8B4EB0C 8007B5DC 0C007326 */   addiu     $s3, $s3, 0xC
/* 8B4EB10 8007B5E0 CEED0108 */  j          .Llevel_44_8007B738
/* 8B4EB14 8007B5E4 00000000 */   nop
.Llevel_44_8007B5E8:
/* 8B4EB18 8007B5E8 53006214 */  bne        $v1, $v0, .Llevel_44_8007B738
/* 8B4EB1C 8007B5EC 00000000 */   nop
/* 8B4EB20 8007B5F0 0C004286 */  lh         $v0, 0xC($s2)
/* 8B4EB24 8007B5F4 00000000 */  nop
/* 8B4EB28 8007B5F8 4F004004 */  bltz       $v0, .Llevel_44_8007B738
/* 8B4EB2C 8007B5FC 00000000 */   nop
/* 8B4EB30 8007B600 1C00428E */  lw         $v0, 0x1C($s2)
/* 8B4EB34 8007B604 00000000 */  nop
/* 8B4EB38 8007B608 4B004010 */  beqz       $v0, .Llevel_44_8007B738
/* 8B4EB3C 8007B60C 00000000 */   nop
/* 8B4EB40 8007B610 00004284 */  lh         $v0, 0x0($v0)
/* 8B4EB44 8007B614 00000000 */  nop
/* 8B4EB48 8007B618 47004018 */  blez       $v0, .Llevel_44_8007B738
/* 8B4EB4C 8007B61C 21980000 */   addu      $s3, $zero, $zero
/* 8B4EB50 8007B620 2800B527 */  addiu      $s5, $sp, 0x28
.Llevel_44_8007B624:
/* 8B4EB54 8007B624 0C004486 */  lh         $a0, 0xC($s2)
/* 8B4EB58 8007B628 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4EB5C 8007B62C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4EB60 8007B630 00000000 */  nop
/* 8B4EB64 8007B634 09F84000 */  jalr       $v0
/* 8B4EB68 8007B638 21288002 */   addu      $a1, $s4, $zero
/* 8B4EB6C 8007B63C 21804000 */  addu       $s0, $v0, $zero
/* 8B4EB70 8007B640 36000012 */  beqz       $s0, .Llevel_44_8007B71C
/* 8B4EB74 8007B644 0C001126 */   addiu     $s1, $s0, 0xC
/* 8B4EB78 8007B648 21202002 */  addu       $a0, $s1, $zero
/* 8B4EB7C 8007B64C 1C00428E */  lw         $v0, 0x1C($s2)
/* 8B4EB80 8007B650 00291300 */  sll        $a1, $s3, 4
/* 8B4EB84 8007B654 0C00428C */  lw         $v0, 0xC($v0)
/* 8B4EB88 8007B658 0000108E */  lw         $s0, 0x0($s0)
/* 8B4EB8C 8007B65C 5E3C010C */  jal        func_8004F178
/* 8B4EB90 8007B660 21284500 */   addu      $a1, $v0, $a1
/* 8B4EB94 8007B664 2120A002 */  addu       $a0, $s5, $zero
/* 8B4EB98 8007B668 21282002 */  addu       $a1, $s1, $zero
/* 8B4EB9C 8007B66C 723C010C */  jal        func_8004F1C8
/* 8B4EBA0 8007B670 0C008626 */   addiu     $a2, $s4, 0xC
/* 8B4EBA4 8007B674 2120A002 */  addu       $a0, $s5, $zero
/* 8B4EBA8 8007B678 7A3B010C */  jal        func_8004EDE8
/* 8B4EBAC 8007B67C 01000524 */   addiu     $a1, $zero, 0x1
/* 8B4EBB0 8007B680 2120A002 */  addu       $a0, $s5, $zero
/* 8B4EBB4 8007B684 21284000 */  addu       $a1, $v0, $zero
/* 8B4EBB8 8007B688 233C010C */  jal        func_8004F08C
/* 8B4EBBC 8007B68C 5A000624 */   addiu     $a2, $zero, 0x5A
/* 8B4EBC0 8007B690 46008292 */  lbu        $v0, 0x46($s4)
/* 8B4EBC4 8007B694 00000000 */  nop
/* 8B4EBC8 8007B698 40100200 */  sll        $v0, $v0, 1
/* 8B4EBCC 8007B69C 0680013C */  lui        $at, %hi(D_80065920)
/* 8B4EBD0 8007B6A0 21082200 */  addu       $at, $at, $v0
/* 8B4EBD4 8007B6A4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8B4EBD8 8007B6A8 00000000 */  nop
/* 8B4EBDC 8007B6AC 00110300 */  sll        $v0, $v1, 4
/* 8B4EBE0 8007B6B0 23104300 */  subu       $v0, $v0, $v1
/* 8B4EBE4 8007B6B4 00000396 */  lhu        $v1, 0x0($s0)
/* 8B4EBE8 8007B6B8 43120200 */  sra        $v0, $v0, 9
/* 8B4EBEC 8007B6BC 21186200 */  addu       $v1, $v1, $v0
/* 8B4EBF0 8007B6C0 000003A6 */  sh         $v1, 0x0($s0)
/* 8B4EBF4 8007B6C4 46008292 */  lbu        $v0, 0x46($s4)
/* 8B4EBF8 8007B6C8 00000000 */  nop
/* 8B4EBFC 8007B6CC 40100200 */  sll        $v0, $v0, 1
/* 8B4EC00 8007B6D0 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B4EC04 8007B6D4 21082200 */  addu       $at, $at, $v0
/* 8B4EC08 8007B6D8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8B4EC0C 8007B6DC 00000000 */  nop
/* 8B4EC10 8007B6E0 00110300 */  sll        $v0, $v1, 4
/* 8B4EC14 8007B6E4 23104300 */  subu       $v0, $v0, $v1
/* 8B4EC18 8007B6E8 02000396 */  lhu        $v1, 0x2($s0)
/* 8B4EC1C 8007B6EC 43120200 */  sra        $v0, $v0, 9
/* 8B4EC20 8007B6F0 21186200 */  addu       $v1, $v1, $v0
/* 8B4EC24 8007B6F4 020003A6 */  sh         $v1, 0x2($s0)
/* 8B4EC28 8007B6F8 2800A28F */  lw         $v0, 0x28($sp)
/* 8B4EC2C 8007B6FC 00000000 */  nop
/* 8B4EC30 8007B700 000002A6 */  sh         $v0, 0x0($s0)
/* 8B4EC34 8007B704 2C00A28F */  lw         $v0, 0x2C($sp)
/* 8B4EC38 8007B708 00000000 */  nop
/* 8B4EC3C 8007B70C 020002A6 */  sh         $v0, 0x2($s0)
/* 8B4EC40 8007B710 3000A28F */  lw         $v0, 0x30($sp)
/* 8B4EC44 8007B714 00000000 */  nop
/* 8B4EC48 8007B718 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_44_8007B71C:
/* 8B4EC4C 8007B71C 1C00428E */  lw         $v0, 0x1C($s2)
/* 8B4EC50 8007B720 00000000 */  nop
/* 8B4EC54 8007B724 00004284 */  lh         $v0, 0x0($v0)
/* 8B4EC58 8007B728 01007326 */  addiu      $s3, $s3, 0x1
/* 8B4EC5C 8007B72C 2A106202 */  slt        $v0, $s3, $v0
/* 8B4EC60 8007B730 BCFF4014 */  bnez       $v0, .Llevel_44_8007B624
/* 8B4EC64 8007B734 00000000 */   nop
.Llevel_44_8007B738:
/* 8B4EC68 8007B738 0400448E */  lw         $a0, 0x4($s2)
/* 8B4EC6C 8007B73C FC000524 */  addiu      $a1, $zero, 0xFC
/* 8B4EC70 8007B740 B687000C */  jal        func_80021ED8
/* 8B4EC74 8007B744 21300000 */   addu      $a2, $zero, $zero
/* 8B4EC78 8007B748 C656010C */  jal        func_80055B18
/* 8B4EC7C 8007B74C 21208002 */   addu      $a0, $s4, $zero
.Llevel_44_8007B750:
/* 8B4EC80 8007B750 6000BF8F */  lw         $ra, 0x60($sp)
/* 8B4EC84 8007B754 5C00B58F */  lw         $s5, 0x5C($sp)
/* 8B4EC88 8007B758 5800B48F */  lw         $s4, 0x58($sp)
/* 8B4EC8C 8007B75C 5400B38F */  lw         $s3, 0x54($sp)
/* 8B4EC90 8007B760 5000B28F */  lw         $s2, 0x50($sp)
/* 8B4EC94 8007B764 4C00B18F */  lw         $s1, 0x4C($sp)
/* 8B4EC98 8007B768 4800B08F */  lw         $s0, 0x48($sp)
/* 8B4EC9C 8007B76C 6800BD27 */  addiu      $sp, $sp, 0x68
/* 8B4ECA0 8007B770 0800E003 */  jr         $ra
/* 8B4ECA4 8007B774 00000000 */   nop
.size func_level_44_8007B340, . - func_level_44_8007B340
