.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_36_8007F52C
/* 78DFA5C 8007F52C A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 78DFA60 8007F530 4400B1AF */  sw         $s1, 0x44($sp)
/* 78DFA64 8007F534 21888000 */  addu       $s1, $a0, $zero
/* 78DFA68 8007F538 5400B5AF */  sw         $s5, 0x54($sp)
/* 78DFA6C 8007F53C 21A8A000 */  addu       $s5, $a1, $zero
/* 78DFA70 8007F540 5800BFAF */  sw         $ra, 0x58($sp)
/* 78DFA74 8007F544 5000B4AF */  sw         $s4, 0x50($sp)
/* 78DFA78 8007F548 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 78DFA7C 8007F54C 4800B2AF */  sw         $s2, 0x48($sp)
/* 78DFA80 8007F550 9F56010C */  jal        func_80055A7C
/* 78DFA84 8007F554 4000B0AF */   sw        $s0, 0x40($sp)
/* 78DFA88 8007F558 21984000 */  addu       $s3, $v0, $zero
/* 78DFA8C 8007F55C 03006016 */  bnez       $s3, .Llevel_36_8007F56C
/* 78DFA90 8007F560 21206002 */   addu      $a0, $s3, $zero
/* 78DFA94 8007F564 CFFF0108 */  j          .Llevel_36_8007FF3C
/* 78DFA98 8007F568 21100000 */   addu      $v0, $zero, $zero
.Llevel_36_8007F56C:
/* 78DFA9C 8007F56C 21280000 */  addu       $a1, $zero, $zero
/* 78DFAA0 8007F570 0000708E */  lw         $s0, 0x0($s3)
/* 78DFAA4 8007F574 E439010C */  jal        func_8004E790
/* 78DFAA8 8007F578 58000624 */   addiu     $a2, $zero, 0x58
/* 78DFAAC 8007F57C 21280000 */  addu       $a1, $zero, $zero
/* 78DFAB0 8007F580 18000624 */  addiu      $a2, $zero, 0x18
/* 78DFAB4 8007F584 21200002 */  addu       $a0, $s0, $zero
/* 78DFAB8 8007F588 E439010C */  jal        func_8004E790
/* 78DFABC 8007F58C 000064AE */   sw        $a0, 0x0($s3)
/* 78DFAC0 8007F590 1600A012 */  beqz       $s5, .Llevel_36_8007F5EC
/* 78DFAC4 8007F594 360071A6 */   sh        $s1, 0x36($s3)
/* 78DFAC8 8007F598 0780043C */  lui        $a0, %hi(D_8006C550)
/* 78DFACC 8007F59C 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 78DFAD0 8007F5A0 00000000 */  nop
/* 78DFAD4 8007F5A4 2320A402 */  subu       $a0, $s5, $a0
/* 78DFAD8 8007F5A8 40190400 */  sll        $v1, $a0, 5
/* 78DFADC 8007F5AC 23186400 */  subu       $v1, $v1, $a0
/* 78DFAE0 8007F5B0 40190300 */  sll        $v1, $v1, 5
/* 78DFAE4 8007F5B4 21186400 */  addu       $v1, $v1, $a0
/* 78DFAE8 8007F5B8 C0100300 */  sll        $v0, $v1, 3
/* 78DFAEC 8007F5BC 21186200 */  addu       $v1, $v1, $v0
/* 78DFAF0 8007F5C0 C0130300 */  sll        $v0, $v1, 15
/* 78DFAF4 8007F5C4 23104300 */  subu       $v0, $v0, $v1
/* 78DFAF8 8007F5C8 80100200 */  sll        $v0, $v0, 2
/* 78DFAFC 8007F5CC 21104400 */  addu       $v0, $v0, $a0
/* 78DFB00 8007F5D0 23100200 */  negu       $v0, $v0
/* 78DFB04 8007F5D4 C3180200 */  sra        $v1, $v0, 3
/* 78DFB08 8007F5D8 0001622C */  sltiu      $v0, $v1, 0x100
/* 78DFB0C 8007F5DC 04004010 */  beqz       $v0, .Llevel_36_8007F5F0
/* 78DFB10 8007F5E0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 78DFB14 8007F5E4 7DFD0108 */  j          .Llevel_36_8007F5F4
/* 78DFB18 8007F5E8 3A0063A2 */   sb        $v1, 0x3A($s3)
.Llevel_36_8007F5EC:
/* 78DFB1C 8007F5EC FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_36_8007F5F0:
/* 78DFB20 8007F5F0 3A0062A2 */  sb         $v0, 0x3A($s3)
.Llevel_36_8007F5F4:
/* 78DFB24 8007F5F4 FBD3000C */  jal        func_80034FEC
/* 78DFB28 8007F5F8 21206002 */   addu      $a0, $s3, $zero
/* 78DFB2C 8007F5FC 84000224 */  addiu      $v0, $zero, 0x84
/* 78DFB30 8007F600 26012212 */  beq        $s1, $v0, .Llevel_36_8007FA9C
/* 78DFB34 8007F604 8500222A */   slti      $v0, $s1, 0x85
/* 78DFB38 8007F608 19004010 */  beqz       $v0, .Llevel_36_8007F670
/* 78DFB3C 8007F60C 41000224 */   addiu     $v0, $zero, 0x41
/* 78DFB40 8007F610 66002212 */  beq        $s1, $v0, .Llevel_36_8007F7AC
/* 78DFB44 8007F614 4200222A */   slti      $v0, $s1, 0x42
/* 78DFB48 8007F618 07004010 */  beqz       $v0, .Llevel_36_8007F638
/* 78DFB4C 8007F61C 01000224 */   addiu     $v0, $zero, 0x1
/* 78DFB50 8007F620 29002212 */  beq        $s1, $v0, .Llevel_36_8007F6C8
/* 78DFB54 8007F624 10000224 */   addiu     $v0, $zero, 0x10
/* 78DFB58 8007F628 2E002212 */  beq        $s1, $v0, .Llevel_36_8007F6E4
/* 78DFB5C 8007F62C 10000324 */   addiu     $v1, $zero, 0x10
/* 78DFB60 8007F630 C3FF0108 */  j          .Llevel_36_8007FF0C
/* 78DFB64 8007F634 00000000 */   nop
.Llevel_36_8007F638:
/* 78DFB68 8007F638 74000224 */  addiu      $v0, $zero, 0x74
/* 78DFB6C 8007F63C 83002212 */  beq        $s1, $v0, .Llevel_36_8007F84C
/* 78DFB70 8007F640 7500222A */   slti      $v0, $s1, 0x75
/* 78DFB74 8007F644 05004010 */  beqz       $v0, .Llevel_36_8007F65C
/* 78DFB78 8007F648 45000224 */   addiu     $v0, $zero, 0x45
/* 78DFB7C 8007F64C 64002212 */  beq        $s1, $v0, .Llevel_36_8007F7E0
/* 78DFB80 8007F650 0C006426 */   addiu     $a0, $s3, 0xC
/* 78DFB84 8007F654 C3FF0108 */  j          .Llevel_36_8007FF0C
/* 78DFB88 8007F658 00000000 */   nop
.Llevel_36_8007F65C:
/* 78DFB8C 8007F65C 78000224 */  addiu      $v0, $zero, 0x78
/* 78DFB90 8007F660 D2002212 */  beq        $s1, $v0, .Llevel_36_8007F9AC
/* 78DFB94 8007F664 00000000 */   nop
/* 78DFB98 8007F668 C3FF0108 */  j          .Llevel_36_8007FF0C
/* 78DFB9C 8007F66C 00000000 */   nop
.Llevel_36_8007F670:
/* 78DFBA0 8007F670 04010224 */  addiu      $v0, $zero, 0x104
/* 78DFBA4 8007F674 2E012212 */  beq        $s1, $v0, .Llevel_36_8007FB30
/* 78DFBA8 8007F678 0501222A */   slti      $v0, $s1, 0x105
/* 78DFBAC 8007F67C 07004010 */  beqz       $v0, .Llevel_36_8007F69C
/* 78DFBB0 8007F680 93000224 */   addiu     $v0, $zero, 0x93
/* 78DFBB4 8007F684 14012212 */  beq        $s1, $v0, .Llevel_36_8007FAD8
/* 78DFBB8 8007F688 D3000224 */   addiu     $v0, $zero, 0xD3
/* 78DFBBC 8007F68C 15002212 */  beq        $s1, $v0, .Llevel_36_8007F6E4
/* 78DFBC0 8007F690 10000324 */   addiu     $v1, $zero, 0x10
/* 78DFBC4 8007F694 C3FF0108 */  j          .Llevel_36_8007FF0C
/* 78DFBC8 8007F698 00000000 */   nop
.Llevel_36_8007F69C:
/* 78DFBCC 8007F69C 10010224 */  addiu      $v0, $zero, 0x110
/* 78DFBD0 8007F6A0 38012212 */  beq        $s1, $v0, .Llevel_36_8007FB84
/* 78DFBD4 8007F6A4 1001222A */   slti      $v0, $s1, 0x110
/* 78DFBD8 8007F6A8 18024014 */  bnez       $v0, .Llevel_36_8007FF0C
/* 78DFBDC 8007F6AC 3501222A */   slti      $v0, $s1, 0x135
/* 78DFBE0 8007F6B0 16024010 */  beqz       $v0, .Llevel_36_8007FF0C
/* 78DFBE4 8007F6B4 3201222A */   slti      $v0, $s1, 0x132
/* 78DFBE8 8007F6B8 14024014 */  bnez       $v0, .Llevel_36_8007FF0C
/* 78DFBEC 8007F6BC 0C006426 */   addiu     $a0, $s3, 0xC
/* 78DFBF0 8007F6C0 FEFE0108 */  j          .Llevel_36_8007FBF8
/* 78DFBF4 8007F6C4 00000000 */   nop
.Llevel_36_8007F6C8:
/* 78DFBF8 8007F6C8 0957010C */  jal        func_80055C24
/* 78DFBFC 8007F6CC 21206002 */   addu      $a0, $s3, $zero
/* 78DFC00 8007F6D0 18000224 */  addiu      $v0, $zero, 0x18
/* 78DFC04 8007F6D4 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 78DFC08 8007F6D8 40000224 */  addiu      $v0, $zero, 0x40
/* 78DFC0C 8007F6DC DEFE0108 */  j          .Llevel_36_8007FB78
/* 78DFC10 8007F6E0 4A0062A2 */   sb        $v0, 0x4A($s3)
.Llevel_36_8007F6E4:
/* 78DFC14 8007F6E4 36006286 */  lh         $v0, 0x36($s3)
/* 78DFC18 8007F6E8 0000718E */  lw         $s1, 0x0($s3)
/* 78DFC1C 8007F6EC 19004314 */  bne        $v0, $v1, .Llevel_36_8007F754
/* 78DFC20 8007F6F0 0C007026 */   addiu     $s0, $s3, 0xC
/* 78DFC24 8007F6F4 0780043C */  lui        $a0, %hi(D_8006C784)
/* 78DFC28 8007F6F8 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 78DFC2C 8007F6FC 00000000 */  nop
/* 78DFC30 8007F700 04008228 */  slti       $v0, $a0, 0x4
/* 78DFC34 8007F704 03004010 */  beqz       $v0, .Llevel_36_8007F714
/* 78DFC38 8007F708 0A000324 */   addiu     $v1, $zero, 0xA
/* 78DFC3C 8007F70C C9FD0108 */  j          .Llevel_36_8007F724
/* 78DFC40 8007F710 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_36_8007F714:
/* 78DFC44 8007F714 07008228 */  slti       $v0, $a0, 0x7
/* 78DFC48 8007F718 02004010 */  beqz       $v0, .Llevel_36_8007F724
/* 78DFC4C 8007F71C 00000000 */   nop
/* 78DFC50 8007F720 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_36_8007F724:
/* 78DFC54 8007F724 0680043C */  lui        $a0, %hi(D_8006582C)
/* 78DFC58 8007F728 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 78DFC5C 8007F72C 0000828C */  lw         $v0, 0x0($a0)
/* 78DFC60 8007F730 00000000 */  nop
/* 78DFC64 8007F734 01004224 */  addiu      $v0, $v0, 0x1
/* 78DFC68 8007F738 000082AC */  sw         $v0, 0x0($a0)
/* 78DFC6C 8007F73C 2A104300 */  slt        $v0, $v0, $v1
/* 78DFC70 8007F740 04004014 */  bnez       $v0, .Llevel_36_8007F754
/* 78DFC74 8007F744 0C007026 */   addiu     $s0, $s3, 0xC
/* 78DFC78 8007F748 D3000224 */  addiu      $v0, $zero, 0xD3
/* 78DFC7C 8007F74C 000080AC */  sw         $zero, 0x0($a0)
/* 78DFC80 8007F750 360062A6 */  sh         $v0, 0x36($s3)
.Llevel_36_8007F754:
/* 78DFC84 8007F754 21200002 */  addu       $a0, $s0, $zero
/* 78DFC88 8007F758 5E3C010C */  jal        func_8004F178
/* 78DFC8C 8007F75C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 78DFC90 8007F760 0957010C */  jal        func_80055C24
/* 78DFC94 8007F764 21206002 */   addu      $a0, $s3, $zero
/* 78DFC98 8007F768 21202002 */  addu       $a0, $s1, $zero
/* 78DFC9C 8007F76C 1400628E */  lw         $v0, 0x14($s3)
/* 78DFCA0 8007F770 21280002 */  addu       $a1, $s0, $zero
/* 78DFCA4 8007F774 00024224 */  addiu      $v0, $v0, 0x200
/* 78DFCA8 8007F778 5E3C010C */  jal        func_8004F178
/* 78DFCAC 8007F77C 140062AE */   sw        $v0, 0x14($s3)
/* 78DFCB0 8007F780 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 78DFCB4 8007F784 1C0062AE */  sw         $v0, 0x1C($s3)
/* 78DFCB8 8007F788 02000224 */  addiu      $v0, $zero, 0x2
/* 78DFCBC 8007F78C 470062A2 */  sb         $v0, 0x47($s3)
/* 78DFCC0 8007F790 08070224 */  addiu      $v0, $zero, 0x708
/* 78DFCC4 8007F794 0E0022A6 */  sh         $v0, 0xE($s1)
/* 78DFCC8 8007F798 9171010C */  jal        rand
/* 78DFCCC 8007F79C 110020A2 */   sb        $zero, 0x11($s1)
/* 78DFCD0 8007F7A0 FC004230 */  andi       $v0, $v0, 0xFC
/* 78DFCD4 8007F7A4 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78DFCD8 8007F7A8 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_36_8007F7AC:
/* 78DFCDC 8007F7AC 0C006426 */  addiu      $a0, $s3, 0xC
/* 78DFCE0 8007F7B0 5E3C010C */  jal        func_8004F178
/* 78DFCE4 8007F7B4 0C00A526 */   addiu     $a1, $s5, 0xC
/* 78DFCE8 8007F7B8 4400A292 */  lbu        $v0, 0x44($s5)
/* 78DFCEC 8007F7BC 00000000 */  nop
/* 78DFCF0 8007F7C0 440062A2 */  sb         $v0, 0x44($s3)
/* 78DFCF4 8007F7C4 4500A292 */  lbu        $v0, 0x45($s5)
/* 78DFCF8 8007F7C8 00000000 */  nop
/* 78DFCFC 8007F7CC 450062A2 */  sb         $v0, 0x45($s3)
/* 78DFD00 8007F7D0 4600A292 */  lbu        $v0, 0x46($s5)
/* 78DFD04 8007F7D4 21206002 */  addu       $a0, $s3, $zero
/* 78DFD08 8007F7D8 CCFF0108 */  j          .Llevel_36_8007FF30
/* 78DFD0C 8007F7DC 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_36_8007F7E0:
/* 78DFD10 8007F7E0 0000708E */  lw         $s0, 0x0($s3)
/* 78DFD14 8007F7E4 0000B18E */  lw         $s1, 0x0($s5)
/* 78DFD18 8007F7E8 5E3C010C */  jal        func_8004F178
/* 78DFD1C 8007F7EC 0C00A526 */   addiu     $a1, $s5, 0xC
/* 78DFD20 8007F7F0 1400628E */  lw         $v0, 0x14($s3)
/* 78DFD24 8007F7F4 00000000 */  nop
/* 78DFD28 8007F7F8 00064224 */  addiu      $v0, $v0, 0x600
/* 78DFD2C 8007F7FC 140062AE */  sw         $v0, 0x14($s3)
/* 78DFD30 8007F800 4600A292 */  lbu        $v0, 0x46($s5)
/* 78DFD34 8007F804 00000000 */  nop
/* 78DFD38 8007F808 460062A2 */  sb         $v0, 0x46($s3)
/* 78DFD3C 8007F80C 4C00A292 */  lbu        $v0, 0x4C($s5)
/* 78DFD40 8007F810 00000000 */  nop
/* 78DFD44 8007F814 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 78DFD48 8007F818 4E00A292 */  lbu        $v0, 0x4E($s5)
/* 78DFD4C 8007F81C 00000000 */  nop
/* 78DFD50 8007F820 4E0062A2 */  sb         $v0, 0x4E($s3)
/* 78DFD54 8007F824 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 78DFD58 8007F828 000015AE */  sw         $s5, 0x0($s0)
/* 78DFD5C 8007F82C 040002AE */  sw         $v0, 0x4($s0)
/* 78DFD60 8007F830 1000228E */  lw         $v0, 0x10($s1)
/* 78DFD64 8007F834 21206002 */  addu       $a0, $s3, $zero
/* 78DFD68 8007F838 0957010C */  jal        func_80055C24
/* 78DFD6C 8007F83C 100002AE */   sw        $v0, 0x10($s0)
/* 78DFD70 8007F840 02000224 */  addiu      $v0, $zero, 0x2
/* 78DFD74 8007F844 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78DFD78 8007F848 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_36_8007F84C:
/* 78DFD7C 8007F84C 2120A002 */  addu       $a0, $s5, $zero
/* 78DFD80 8007F850 21280000 */  addu       $a1, $zero, $zero
/* 78DFD84 8007F854 0000728E */  lw         $s2, 0x0($s3)
/* 78DFD88 8007F858 C557010C */  jal        func_80055F14
/* 78DFD8C 8007F85C 1000A627 */   addiu     $a2, $sp, 0x10
/* 78DFD90 8007F860 2120A002 */  addu       $a0, $s5, $zero
/* 78DFD94 8007F864 21280000 */  addu       $a1, $zero, $zero
/* 78DFD98 8007F868 2000B027 */  addiu      $s0, $sp, 0x20
/* 78DFD9C 8007F86C C557010C */  jal        func_80055F14
/* 78DFDA0 8007F870 21300002 */   addu      $a2, $s0, $zero
/* 78DFDA4 8007F874 0C007126 */  addiu      $s1, $s3, 0xC
/* 78DFDA8 8007F878 21202002 */  addu       $a0, $s1, $zero
/* 78DFDAC 8007F87C 1000A527 */  addiu      $a1, $sp, 0x10
/* 78DFDB0 8007F880 653C010C */  jal        func_8004F194
/* 78DFDB4 8007F884 21300002 */   addu      $a2, $s0, $zero
/* 78DFDB8 8007F888 21202002 */  addu       $a0, $s1, $zero
/* 78DFDBC 8007F88C 443C010C */  jal        func_8004F110
/* 78DFDC0 8007F890 01000524 */   addiu     $a1, $zero, 0x1
/* 78DFDC4 8007F894 1000A427 */  addiu      $a0, $sp, 0x10
/* 78DFDC8 8007F898 0780143C */  lui        $s4, %hi(D_80070328)
/* 78DFDCC 8007F89C 28039426 */  addiu      $s4, $s4, %lo(D_80070328)
/* 78DFDD0 8007F8A0 21288002 */  addu       $a1, $s4, $zero
/* 78DFDD4 8007F8A4 1400628E */  lw         $v0, 0x14($s3)
/* 78DFDD8 8007F8A8 21302002 */  addu       $a2, $s1, $zero
/* 78DFDDC 8007F8AC 00FF4224 */  addiu      $v0, $v0, -0x100
/* 78DFDE0 8007F8B0 723C010C */  jal        func_8004F1C8
/* 78DFDE4 8007F8B4 140062AE */   sw        $v0, 0x14($s3)
/* 78DFDE8 8007F8B8 1000A48F */  lw         $a0, 0x10($sp)
/* 78DFDEC 8007F8BC 1400A58F */  lw         $a1, 0x14($sp)
/* 78DFDF0 8007F8C0 203A010C */  jal        func_8004E880
/* 78DFDF4 8007F8C4 21300000 */   addu      $a2, $zero, $zero
/* 78DFDF8 8007F8C8 4600A392 */  lbu        $v1, 0x46($s5)
/* 78DFDFC 8007F8CC 00000000 */  nop
/* 78DFE00 8007F8D0 23104300 */  subu       $v0, $v0, $v1
/* 78DFE04 8007F8D4 FF005030 */  andi       $s0, $v0, 0xFF
/* 78DFE08 8007F8D8 8100022A */  slti       $v0, $s0, 0x81
/* 78DFE0C 8007F8DC 02004014 */  bnez       $v0, .Llevel_36_8007F8E8
/* 78DFE10 8007F8E0 00000000 */   nop
/* 78DFE14 8007F8E4 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_36_8007F8E8:
/* 78DFE18 8007F8E8 02000106 */  bgez       $s0, .Llevel_36_8007F8F4
/* 78DFE1C 8007F8EC 21100002 */   addu      $v0, $s0, $zero
/* 78DFE20 8007F8F0 23100200 */  negu       $v0, $v0
.Llevel_36_8007F8F4:
/* 78DFE24 8007F8F4 20004228 */  slti       $v0, $v0, 0x20
/* 78DFE28 8007F8F8 0C004010 */  beqz       $v0, .Llevel_36_8007F92C
/* 78DFE2C 8007F8FC 21202002 */   addu      $a0, $s1, $zero
/* 78DFE30 8007F900 CD3C010C */  jal        func_8004F334
/* 78DFE34 8007F904 21288002 */   addu      $a1, $s4, $zero
/* 78DFE38 8007F908 21204000 */  addu       $a0, $v0, $zero
/* 78DFE3C 8007F90C 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 78DFE40 8007F910 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 78DFE44 8007F914 1400658E */  lw         $a1, 0x14($s3)
/* 78DFE48 8007F918 21300000 */  addu       $a2, $zero, $zero
/* 78DFE4C 8007F91C 203A010C */  jal        func_8004E880
/* 78DFE50 8007F920 23284500 */   subu      $a1, $v0, $a1
/* 78DFE54 8007F924 4DFE0108 */  j          .Llevel_36_8007F934
/* 78DFE58 8007F928 450062A2 */   sb        $v0, 0x45($s3)
.Llevel_36_8007F92C:
/* 78DFE5C 8007F92C FB000224 */  addiu      $v0, $zero, 0xFB
/* 78DFE60 8007F930 450062A2 */  sb         $v0, 0x45($s3)
.Llevel_36_8007F934:
/* 78DFE64 8007F934 F8FF022A */  slti       $v0, $s0, -0x8
/* 78DFE68 8007F938 03004010 */  beqz       $v0, .Llevel_36_8007F948
/* 78DFE6C 8007F93C 0900022A */   slti      $v0, $s0, 0x9
/* 78DFE70 8007F940 F8FF1024 */  addiu      $s0, $zero, -0x8
/* 78DFE74 8007F944 0900022A */  slti       $v0, $s0, 0x9
.Llevel_36_8007F948:
/* 78DFE78 8007F948 02004014 */  bnez       $v0, .Llevel_36_8007F954
/* 78DFE7C 8007F94C 00000000 */   nop
/* 78DFE80 8007F950 08001024 */  addiu      $s0, $zero, 0x8
.Llevel_36_8007F954:
/* 78DFE84 8007F954 4600A292 */  lbu        $v0, 0x46($s5)
/* 78DFE88 8007F958 00000000 */  nop
/* 78DFE8C 8007F95C 21105000 */  addu       $v0, $v0, $s0
/* 78DFE90 8007F960 460062A2 */  sb         $v0, 0x46($s3)
/* 78DFE94 8007F964 4C00A292 */  lbu        $v0, 0x4C($s5)
/* 78DFE98 8007F968 00000000 */  nop
/* 78DFE9C 8007F96C 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 78DFEA0 8007F970 4E00A292 */  lbu        $v0, 0x4E($s5)
/* 78DFEA4 8007F974 21206002 */  addu       $a0, $s3, $zero
/* 78DFEA8 8007F978 0957010C */  jal        func_80055C24
/* 78DFEAC 8007F97C 4E0062A2 */   sb        $v0, 0x4E($s3)
/* 78DFEB0 8007F980 20006426 */  addiu      $a0, $s3, 0x20
/* 78DFEB4 8007F984 21284002 */  addu       $a1, $s2, $zero
/* 78DFEB8 8007F988 21304002 */  addu       $a2, $s2, $zero
/* 78DFEBC 8007F98C 00010224 */  addiu      $v0, $zero, 0x100
/* 78DFEC0 8007F990 000042AE */  sw         $v0, 0x0($s2)
/* 78DFEC4 8007F994 040040AE */  sw         $zero, 0x4($s2)
/* 78DFEC8 8007F998 5B3B010C */  jal        func_8004ED6C
/* 78DFECC 8007F99C 080040AE */   sw        $zero, 0x8($s2)
/* 78DFED0 8007F9A0 78000224 */  addiu      $v0, $zero, 0x78
/* 78DFED4 8007F9A4 DEFE0108 */  j          .Llevel_36_8007FB78
/* 78DFED8 8007F9A8 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_36_8007F9AC:
/* 78DFEDC 8007F9AC 3600A286 */  lh         $v0, 0x36($s5)
/* 78DFEE0 8007F9B0 00000000 */  nop
/* 78DFEE4 8007F9B4 06005110 */  beq        $v0, $s1, .Llevel_36_8007F9D0
/* 78DFEE8 8007F9B8 21280000 */   addu      $a1, $zero, $zero
/* 78DFEEC 8007F9BC 0780043C */  lui        $a0, %hi(D_8006E394)
/* 78DFEF0 8007F9C0 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 78DFEF4 8007F9C4 000064AE */  sw         $a0, 0x0($s3)
/* 78DFEF8 8007F9C8 E439010C */  jal        func_8004E790
/* 78DFEFC 8007F9CC 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_36_8007F9D0:
/* 78DFF00 8007F9D0 0000708E */  lw         $s0, 0x0($s3)
/* 78DFF04 8007F9D4 0957010C */  jal        func_80055C24
/* 78DFF08 8007F9D8 21206002 */   addu      $a0, $s3, $zero
/* 78DFF0C 8007F9DC 78000224 */  addiu      $v0, $zero, 0x78
/* 78DFF10 8007F9E0 490060A2 */  sb         $zero, 0x49($s3)
/* 78DFF14 8007F9E4 000000A6 */  sh         $zero, 0x0($s0)
/* 78DFF18 8007F9E8 080000A6 */  sh         $zero, 0x8($s0)
/* 78DFF1C 8007F9EC 060000A6 */  sh         $zero, 0x6($s0)
/* 78DFF20 8007F9F0 040000A6 */  sh         $zero, 0x4($s0)
/* 78DFF24 8007F9F4 0D0002A2 */  sb         $v0, 0xD($s0)
/* 78DFF28 8007F9F8 100000AE */  sw         $zero, 0x10($s0)
/* 78DFF2C 8007F9FC 0600A012 */  beqz       $s5, .Llevel_36_8007FA18
/* 78DFF30 8007FA00 140000AE */   sw        $zero, 0x14($s0)
/* 78DFF34 8007FA04 0C006426 */  addiu      $a0, $s3, 0xC
/* 78DFF38 8007FA08 5E3C010C */  jal        func_8004F178
/* 78DFF3C 8007FA0C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 78DFF40 8007FA10 A5FE0108 */  j          .Llevel_36_8007FA94
/* 78DFF44 8007FA14 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_36_8007FA18:
/* 78DFF48 8007FA18 0C006426 */  addiu      $a0, $s3, 0xC
/* 78DFF4C 8007FA1C 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 78DFF50 8007FA20 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 78DFF54 8007FA24 0000A390 */  lbu        $v1, 0x0($a1)
/* 78DFF58 8007FA28 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 78DFF5C 8007FA2C 80FF6324 */  addiu      $v1, $v1, -0x80
/* 78DFF60 8007FA30 FF006330 */  andi       $v1, $v1, 0xFF
/* 78DFF64 8007FA34 40180300 */  sll        $v1, $v1, 1
/* 78DFF68 8007FA38 0680013C */  lui        $at, %hi(D_80065920)
/* 78DFF6C 8007FA3C 21082300 */  addu       $at, $at, $v1
/* 78DFF70 8007FA40 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 78DFF74 8007FA44 3000A627 */  addiu      $a2, $sp, 0x30
/* 78DFF78 8007FA48 40110700 */  sll        $v0, $a3, 5
/* 78DFF7C 8007FA4C 23104700 */  subu       $v0, $v0, $a3
/* 78DFF80 8007FA50 80100200 */  sll        $v0, $v0, 2
/* 78DFF84 8007FA54 21104700 */  addu       $v0, $v0, $a3
/* 78DFF88 8007FA58 43120200 */  sra        $v0, $v0, 9
/* 78DFF8C 8007FA5C 3000A2AF */  sw         $v0, 0x30($sp)
/* 78DFF90 8007FA60 0680013C */  lui        $at, %hi(D_800658A0)
/* 78DFF94 8007FA64 21082300 */  addu       $at, $at, $v1
/* 78DFF98 8007FA68 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 78DFF9C 8007FA6C E8030224 */  addiu      $v0, $zero, 0x3E8
/* 78DFFA0 8007FA70 3800A2AF */  sw         $v0, 0x38($sp)
/* 78DFFA4 8007FA74 40110300 */  sll        $v0, $v1, 5
/* 78DFFA8 8007FA78 23104300 */  subu       $v0, $v0, $v1
/* 78DFFAC 8007FA7C 80100200 */  sll        $v0, $v0, 2
/* 78DFFB0 8007FA80 21104300 */  addu       $v0, $v0, $v1
/* 78DFFB4 8007FA84 43120200 */  sra        $v0, $v0, 9
/* 78DFFB8 8007FA88 653C010C */  jal        func_8004F194
/* 78DFFBC 8007FA8C 3400A2AF */   sw        $v0, 0x34($sp)
/* 78DFFC0 8007FA90 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_36_8007FA94:
/* 78DFFC4 8007FA94 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78DFFC8 8007FA98 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_36_8007FA9C:
/* 78DFFCC 8007FA9C 0C006426 */  addiu      $a0, $s3, 0xC
/* 78DFFD0 8007FAA0 4600A292 */  lbu        $v0, 0x46($s5)
/* 78DFFD4 8007FAA4 0C00A526 */  addiu      $a1, $s5, 0xC
/* 78DFFD8 8007FAA8 5E3C010C */  jal        func_8004F178
/* 78DFFDC 8007FAAC 460062A2 */   sb        $v0, 0x46($s3)
/* 78DFFE0 8007FAB0 0957010C */  jal        func_80055C24
/* 78DFFE4 8007FAB4 21206002 */   addu      $a0, $s3, $zero
/* 78DFFE8 8007FAB8 4ED7000C */  jal        func_80035D38
/* 78DFFEC 8007FABC 21206002 */   addu      $a0, $s3, $zero
/* 78DFFF0 8007FAC0 02004010 */  beqz       $v0, .Llevel_36_8007FACC
/* 78DFFF4 8007FAC4 00000000 */   nop
/* 78DFFF8 8007FAC8 140062AE */  sw         $v0, 0x14($s3)
.Llevel_36_8007FACC:
/* 78DFFFC 8007FACC 06000224 */  addiu      $v0, $zero, 0x6
/* 78E0000 8007FAD0 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78E0004 8007FAD4 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_36_8007FAD8:
/* 78E0008 8007FAD8 2120A002 */  addu       $a0, $s5, $zero
/* 78E000C 8007FADC 21280000 */  addu       $a1, $zero, $zero
/* 78E0010 8007FAE0 0000708E */  lw         $s0, 0x0($s3)
/* 78E0014 8007FAE4 C557010C */  jal        func_80055F14
/* 78E0018 8007FAE8 0C006626 */   addiu     $a2, $s3, 0xC
/* 78E001C 8007FAEC 4600A292 */  lbu        $v0, 0x46($s5)
/* 78E0020 8007FAF0 21206002 */  addu       $a0, $s3, $zero
/* 78E0024 8007FAF4 0957010C */  jal        func_80055C24
/* 78E0028 8007FAF8 460062A2 */   sb        $v0, 0x46($s3)
/* 78E002C 8007FAFC 20006426 */  addiu      $a0, $s3, 0x20
/* 78E0030 8007FB00 21280002 */  addu       $a1, $s0, $zero
/* 78E0034 8007FB04 21300002 */  addu       $a2, $s0, $zero
/* 78E0038 8007FB08 80000224 */  addiu      $v0, $zero, 0x80
/* 78E003C 8007FB0C 000002AE */  sw         $v0, 0x0($s0)
/* 78E0040 8007FB10 60000224 */  addiu      $v0, $zero, 0x60
/* 78E0044 8007FB14 040000AE */  sw         $zero, 0x4($s0)
/* 78E0048 8007FB18 5B3B010C */  jal        func_8004ED6C
/* 78E004C 8007FB1C 080002AE */   sw        $v0, 0x8($s0)
/* 78E0050 8007FB20 78000224 */  addiu      $v0, $zero, 0x78
/* 78E0054 8007FB24 0C0002AE */  sw         $v0, 0xC($s0)
/* 78E0058 8007FB28 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78E005C 8007FB2C 100015AE */   sw        $s5, 0x10($s0)
.Llevel_36_8007FB30:
/* 78E0060 8007FB30 0957010C */  jal        func_80055C24
/* 78E0064 8007FB34 21206002 */   addu      $a0, $s3, $zero
/* 78E0068 8007FB38 02000224 */  addiu      $v0, $zero, 0x2
/* 78E006C 8007FB3C 0E00A012 */  beqz       $s5, .Llevel_36_8007FB78
/* 78E0070 8007FB40 540062A2 */   sb        $v0, 0x54($s3)
/* 78E0074 8007FB44 0C006426 */  addiu      $a0, $s3, 0xC
/* 78E0078 8007FB48 0000628E */  lw         $v0, 0x0($s3)
/* 78E007C 8007FB4C 0C00A526 */  addiu      $a1, $s5, 0xC
/* 78E0080 8007FB50 5E3C010C */  jal        func_8004F178
/* 78E0084 8007FB54 000055AC */   sw        $s5, 0x0($v0)
/* 78E0088 8007FB58 0A000224 */  addiu      $v0, $zero, 0xA
/* 78E008C 8007FB5C 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 78E0090 8007FB60 1400628E */  lw         $v0, 0x14($s3)
/* 78E0094 8007FB64 08000324 */  addiu      $v1, $zero, 0x8
/* 78E0098 8007FB68 4C0063A2 */  sb         $v1, 0x4C($s3)
/* 78E009C 8007FB6C 00044224 */  addiu      $v0, $v0, 0x400
/* 78E00A0 8007FB70 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78E00A4 8007FB74 140062AE */   sw        $v0, 0x14($s3)
.Llevel_36_8007FB78:
/* 78E00A8 8007FB78 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 78E00AC 8007FB7C CEFF0108 */  j          .Llevel_36_8007FF38
/* 78E00B0 8007FB80 1C0062AE */   sw        $v0, 0x1C($s3)
.Llevel_36_8007FB84:
/* 78E00B4 8007FB84 0780053C */  lui        $a1, %hi(D_80070328)
/* 78E00B8 8007FB88 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 78E00BC 8007FB8C 0000708E */  lw         $s0, 0x0($s3)
/* 78E00C0 8007FB90 5E3C010C */  jal        func_8004F178
/* 78E00C4 8007FB94 0C006426 */   addiu     $a0, $s3, 0xC
/* 78E00C8 8007FB98 1400628E */  lw         $v0, 0x14($s3)
/* 78E00CC 8007FB9C 00000000 */  nop
/* 78E00D0 8007FBA0 00044224 */  addiu      $v0, $v0, 0x400
/* 78E00D4 8007FBA4 140062AE */  sw         $v0, 0x14($s3)
/* 78E00D8 8007FBA8 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 78E00DC 8007FBAC 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 78E00E0 8007FBB0 21206002 */  addu       $a0, $s3, $zero
/* 78E00E4 8007FBB4 0957010C */  jal        func_80055C24
/* 78E00E8 8007FBB8 460062A2 */   sb        $v0, 0x46($s3)
/* 78E00EC 8007FBBC 02000224 */  addiu      $v0, $zero, 0x2
/* 78E00F0 8007FBC0 020002A2 */  sb         $v0, 0x2($s0)
/* 78E00F4 8007FBC4 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 78E00F8 8007FBC8 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 78E00FC 8007FBCC 00000000 */  nop
/* 78E0100 8007FBD0 030002A2 */  sb         $v0, 0x3($s0)
/* 78E0104 8007FBD4 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 78E0108 8007FBD8 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 78E010C 8007FBDC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 78E0110 8007FBE0 100002AE */  sw         $v0, 0x10($s0)
/* 78E0114 8007FBE4 040003A2 */  sb         $v1, 0x4($s0)
/* 78E0118 8007FBE8 410060A2 */  sb         $zero, 0x41($s3)
/* 78E011C 8007FBEC 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 78E0120 8007FBF0 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78E0124 8007FBF4 4D0060A2 */   sb        $zero, 0x4D($s3)
.Llevel_36_8007FBF8:
/* 78E0128 8007FBF8 0C00A526 */  addiu      $a1, $s5, 0xC
/* 78E012C 8007FBFC 0000748E */  lw         $s4, 0x0($s3)
/* 78E0130 8007FC00 20000224 */  addiu      $v0, $zero, 0x20
/* 78E0134 8007FC04 5E3C010C */  jal        func_8004F178
/* 78E0138 8007FC08 4C0062A2 */   sb        $v0, 0x4C($s3)
/* 78E013C 8007FC0C 0957010C */  jal        func_80055C24
/* 78E0140 8007FC10 21206002 */   addu      $a0, $s3, $zero
/* 78E0144 8007FC14 9171010C */  jal        rand
/* 78E0148 8007FC18 00000000 */   nop
/* 78E014C 8007FC1C 9171010C */  jal        rand
/* 78E0150 8007FC20 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 78E0154 8007FC24 FF075130 */  andi       $s1, $v0, 0x7FF
/* 78E0158 8007FC28 8B3A010C */  jal        func_8004EA2C
/* 78E015C 8007FC2C 21202002 */   addu      $a0, $s1, $zero
/* 78E0160 8007FC30 21204002 */  addu       $a0, $s2, $zero
/* 78E0164 8007FC34 8B3A010C */  jal        func_8004EA2C
/* 78E0168 8007FC38 21804000 */   addu      $s0, $v0, $zero
/* 78E016C 8007FC3C 18000202 */  mult       $s0, $v0
/* 78E0170 8007FC40 12400000 */  mflo       $t0
/* 78E0174 8007FC44 4900A292 */  lbu        $v0, 0x49($s5)
/* 78E0178 8007FC48 00000000 */  nop
/* 78E017C 8007FC4C 18000201 */  mult       $t0, $v0
/* 78E0180 8007FC50 21202002 */  addu       $a0, $s1, $zero
/* 78E0184 8007FC54 12400000 */  mflo       $t0
/* 78E0188 8007FC58 03160800 */  sra        $v0, $t0, 24
/* 78E018C 8007FC5C 8B3A010C */  jal        func_8004EA2C
/* 78E0190 8007FC60 000082A6 */   sh        $v0, 0x0($s4)
/* 78E0194 8007FC64 21204002 */  addu       $a0, $s2, $zero
/* 78E0198 8007FC68 793A010C */  jal        func_8004E9E4
/* 78E019C 8007FC6C 21804000 */   addu      $s0, $v0, $zero
/* 78E01A0 8007FC70 18000202 */  mult       $s0, $v0
/* 78E01A4 8007FC74 12400000 */  mflo       $t0
/* 78E01A8 8007FC78 4900A292 */  lbu        $v0, 0x49($s5)
/* 78E01AC 8007FC7C 00000000 */  nop
/* 78E01B0 8007FC80 18000201 */  mult       $t0, $v0
/* 78E01B4 8007FC84 21202002 */  addu       $a0, $s1, $zero
/* 78E01B8 8007FC88 12400000 */  mflo       $t0
/* 78E01BC 8007FC8C 03160800 */  sra        $v0, $t0, 24
/* 78E01C0 8007FC90 793A010C */  jal        func_8004E9E4
/* 78E01C4 8007FC94 020082A6 */   sh        $v0, 0x2($s4)
/* 78E01C8 8007FC98 4900A392 */  lbu        $v1, 0x49($s5)
/* 78E01CC 8007FC9C 00000000 */  nop
/* 78E01D0 8007FCA0 18004300 */  mult       $v0, $v1
/* 78E01D4 8007FCA4 12400000 */  mflo       $t0
/* 78E01D8 8007FCA8 03130800 */  sra        $v0, $t0, 12
/* 78E01DC 8007FCAC 040082A6 */  sh         $v0, 0x4($s4)
/* 78E01E0 8007FCB0 1800A38E */  lw         $v1, 0x18($s5)
/* 78E01E4 8007FCB4 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 78E01E8 8007FCB8 24106200 */  and        $v0, $v1, $v0
/* 78E01EC 8007FCBC 2C004010 */  beqz       $v0, .Llevel_36_8007FD70
/* 78E01F0 8007FCC0 21300000 */   addu      $a2, $zero, $zero
/* 78E01F4 8007FCC4 0780103C */  lui        $s0, %hi(D_80070328)
/* 78E01F8 8007FCC8 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 78E01FC 8007FCCC 0C00638E */  lw         $v1, 0xC($s3)
/* 78E0200 8007FCD0 0000048E */  lw         $a0, 0x0($s0)
/* 78E0204 8007FCD4 1000628E */  lw         $v0, 0x10($s3)
/* 78E0208 8007FCD8 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 78E020C 8007FCDC 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 78E0210 8007FCE0 23206400 */  subu       $a0, $v1, $a0
/* 78E0214 8007FCE4 203A010C */  jal        func_8004E880
/* 78E0218 8007FCE8 23284500 */   subu      $a1, $v0, $a1
/* 78E021C 8007FCEC 40100200 */  sll        $v0, $v0, 1
/* 78E0220 8007FCF0 21300000 */  addu       $a2, $zero, $zero
/* 78E0224 8007FCF4 0680013C */  lui        $at, %hi(D_80065920)
/* 78E0228 8007FCF8 21082200 */  addu       $at, $at, $v0
/* 78E022C 8007FCFC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 78E0230 8007FD00 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 78E0234 8007FD04 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 78E0238 8007FD08 03110200 */  sra        $v0, $v0, 4
/* 78E023C 8007FD0C 3000A2AF */  sw         $v0, 0x30($sp)
/* 78E0240 8007FD10 0C00638E */  lw         $v1, 0xC($s3)
/* 78E0244 8007FD14 0000048E */  lw         $a0, 0x0($s0)
/* 78E0248 8007FD18 1000628E */  lw         $v0, 0x10($s3)
/* 78E024C 8007FD1C 23206400 */  subu       $a0, $v1, $a0
/* 78E0250 8007FD20 203A010C */  jal        func_8004E880
/* 78E0254 8007FD24 23284500 */   subu      $a1, $v0, $a1
/* 78E0258 8007FD28 40100200 */  sll        $v0, $v0, 1
/* 78E025C 8007FD2C 0680013C */  lui        $at, %hi(D_800658A0)
/* 78E0260 8007FD30 21082200 */  addu       $at, $at, $v0
/* 78E0264 8007FD34 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 78E0268 8007FD38 3000A38F */  lw         $v1, 0x30($sp)
/* 78E026C 8007FD3C 3800A0AF */  sw         $zero, 0x38($sp)
/* 78E0270 8007FD40 03110200 */  sra        $v0, $v0, 4
/* 78E0274 8007FD44 3400A2AF */  sw         $v0, 0x34($sp)
/* 78E0278 8007FD48 00008296 */  lhu        $v0, 0x0($s4)
/* 78E027C 8007FD4C 00000000 */  nop
/* 78E0280 8007FD50 21104300 */  addu       $v0, $v0, $v1
/* 78E0284 8007FD54 000082A6 */  sh         $v0, 0x0($s4)
/* 78E0288 8007FD58 3400A38F */  lw         $v1, 0x34($sp)
/* 78E028C 8007FD5C 02008296 */  lhu        $v0, 0x2($s4)
/* 78E0290 8007FD60 00000000 */  nop
/* 78E0294 8007FD64 21104300 */  addu       $v0, $v0, $v1
/* 78E0298 8007FD68 73FF0108 */  j          .Llevel_36_8007FDCC
/* 78E029C 8007FD6C 020082A6 */   sh        $v0, 0x2($s4)
.Llevel_36_8007FD70:
/* 78E02A0 8007FD70 0200023C */  lui        $v0, (0x20000 >> 16)
/* 78E02A4 8007FD74 24106200 */  and        $v0, $v1, $v0
/* 78E02A8 8007FD78 14004010 */  beqz       $v0, .Llevel_36_8007FDCC
/* 78E02AC 8007FD7C 04000224 */   addiu     $v0, $zero, 0x4
/* 78E02B0 8007FD80 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 78E02B4 8007FD84 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 78E02B8 8007FD88 00000000 */  nop
/* 78E02BC 8007FD8C 03006210 */  beq        $v1, $v0, .Llevel_36_8007FD9C
/* 78E02C0 8007FD90 0C000224 */   addiu     $v0, $zero, 0xC
/* 78E02C4 8007FD94 0D006214 */  bne        $v1, $v0, .Llevel_36_8007FDCC
/* 78E02C8 8007FD98 00000000 */   nop
.Llevel_36_8007FD9C:
/* 78E02CC 8007FD9C 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 78E02D0 8007FDA0 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 78E02D4 8007FDA4 00008396 */  lhu        $v1, 0x0($s4)
/* 78E02D8 8007FDA8 83110200 */  sra        $v0, $v0, 6
/* 78E02DC 8007FDAC 21186200 */  addu       $v1, $v1, $v0
/* 78E02E0 8007FDB0 000083A6 */  sh         $v1, 0x0($s4)
/* 78E02E4 8007FDB4 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 78E02E8 8007FDB8 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 78E02EC 8007FDBC 02008396 */  lhu        $v1, 0x2($s4)
/* 78E02F0 8007FDC0 83110200 */  sra        $v0, $v0, 6
/* 78E02F4 8007FDC4 21186200 */  addu       $v1, $v1, $v0
/* 78E02F8 8007FDC8 020083A6 */  sh         $v1, 0x2($s4)
.Llevel_36_8007FDCC:
/* 78E02FC 8007FDCC 5100A492 */  lbu        $a0, 0x51($s5)
/* 78E0300 8007FDD0 00000000 */  nop
/* 78E0304 8007FDD4 26008010 */  beqz       $a0, .Llevel_36_8007FE70
/* 78E0308 8007FDD8 1000033C */   lui       $v1, (0x100000 >> 16)
/* 78E030C 8007FDDC 1800A28E */  lw         $v0, 0x18($s5)
/* 78E0310 8007FDE0 00000000 */  nop
/* 78E0314 8007FDE4 24104300 */  and        $v0, $v0, $v1
/* 78E0318 8007FDE8 21004010 */  beqz       $v0, .Llevel_36_8007FE70
/* 78E031C 8007FDEC 40100400 */   sll       $v0, $a0, 1
/* 78E0320 8007FDF0 0680013C */  lui        $at, %hi(D_80065920)
/* 78E0324 8007FDF4 21082200 */  addu       $at, $at, $v0
/* 78E0328 8007FDF8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 78E032C 8007FDFC 00000000 */  nop
/* 78E0330 8007FE00 80100300 */  sll        $v0, $v1, 2
/* 78E0334 8007FE04 21104300 */  addu       $v0, $v0, $v1
/* 78E0338 8007FE08 00190200 */  sll        $v1, $v0, 4
/* 78E033C 8007FE0C 23186200 */  subu       $v1, $v1, $v0
/* 78E0340 8007FE10 00008296 */  lhu        $v0, 0x0($s4)
/* 78E0344 8007FE14 C31A0300 */  sra        $v1, $v1, 11
/* 78E0348 8007FE18 21104300 */  addu       $v0, $v0, $v1
/* 78E034C 8007FE1C 000082A6 */  sh         $v0, 0x0($s4)
/* 78E0350 8007FE20 5100A292 */  lbu        $v0, 0x51($s5)
/* 78E0354 8007FE24 28000424 */  addiu      $a0, $zero, 0x28
/* 78E0358 8007FE28 40100200 */  sll        $v0, $v0, 1
/* 78E035C 8007FE2C 0680013C */  lui        $at, %hi(D_800658A0)
/* 78E0360 8007FE30 21082200 */  addu       $at, $at, $v0
/* 78E0364 8007FE34 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 78E0368 8007FE38 46000524 */  addiu      $a1, $zero, 0x46
/* 78E036C 8007FE3C 80100300 */  sll        $v0, $v1, 2
/* 78E0370 8007FE40 21104300 */  addu       $v0, $v0, $v1
/* 78E0374 8007FE44 00190200 */  sll        $v1, $v0, 4
/* 78E0378 8007FE48 23186200 */  subu       $v1, $v1, $v0
/* 78E037C 8007FE4C 02008296 */  lhu        $v0, 0x2($s4)
/* 78E0380 8007FE50 C31A0300 */  sra        $v1, $v1, 11
/* 78E0384 8007FE54 21104300 */  addu       $v0, $v0, $v1
/* 78E0388 8007FE58 DBD8000C */  jal        func_8003636C
/* 78E038C 8007FE5C 020082A6 */   sh        $v0, 0x2($s4)
/* 78E0390 8007FE60 04008396 */  lhu        $v1, 0x4($s4)
/* 78E0394 8007FE64 00000000 */  nop
/* 78E0398 8007FE68 21186200 */  addu       $v1, $v1, $v0
/* 78E039C 8007FE6C 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_36_8007FE70:
/* 78E03A0 8007FE70 00008286 */  lh         $v0, 0x0($s4)
/* 78E03A4 8007FE74 0C00638E */  lw         $v1, 0xC($s3)
/* 78E03A8 8007FE78 80100200 */  sll        $v0, $v0, 2
/* 78E03AC 8007FE7C 21186200 */  addu       $v1, $v1, $v0
/* 78E03B0 8007FE80 0C0063AE */  sw         $v1, 0xC($s3)
/* 78E03B4 8007FE84 02008286 */  lh         $v0, 0x2($s4)
/* 78E03B8 8007FE88 1000638E */  lw         $v1, 0x10($s3)
/* 78E03BC 8007FE8C 80100200 */  sll        $v0, $v0, 2
/* 78E03C0 8007FE90 21186200 */  addu       $v1, $v1, $v0
/* 78E03C4 8007FE94 100063AE */  sw         $v1, 0x10($s3)
/* 78E03C8 8007FE98 04008286 */  lh         $v0, 0x4($s4)
/* 78E03CC 8007FE9C 1400638E */  lw         $v1, 0x14($s3)
/* 78E03D0 8007FEA0 80100200 */  sll        $v0, $v0, 2
/* 78E03D4 8007FEA4 21186200 */  addu       $v1, $v1, $v0
/* 78E03D8 8007FEA8 9171010C */  jal        rand
/* 78E03DC 8007FEAC 140063AE */   sw        $v1, 0x14($s3)
/* 78E03E0 8007FEB0 9171010C */  jal        rand
/* 78E03E4 8007FEB4 450062A2 */   sb        $v0, 0x45($s3)
/* 78E03E8 8007FEB8 9171010C */  jal        rand
/* 78E03EC 8007FEBC 460062A2 */   sb        $v0, 0x46($s3)
/* 78E03F0 8007FEC0 1F004230 */  andi       $v0, $v0, 0x1F
/* 78E03F4 8007FEC4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 78E03F8 8007FEC8 9171010C */  jal        rand
/* 78E03FC 8007FECC 060082A6 */   sh        $v0, 0x6($s4)
/* 78E0400 8007FED0 1F004230 */  andi       $v0, $v0, 0x1F
/* 78E0404 8007FED4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 78E0408 8007FED8 9171010C */  jal        rand
/* 78E040C 8007FEDC 080082A6 */   sh        $v0, 0x8($s4)
/* 78E0410 8007FEE0 32000424 */  addiu      $a0, $zero, 0x32
/* 78E0414 8007FEE4 1F004230 */  andi       $v0, $v0, 0x1F
/* 78E0418 8007FEE8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 78E041C 8007FEEC 0A0082A6 */  sh         $v0, 0xA($s4)
/* 78E0420 8007FEF0 1400A28E */  lw         $v0, 0x14($s5)
/* 78E0424 8007FEF4 50000524 */  addiu      $a1, $zero, 0x50
/* 78E0428 8007FEF8 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 78E042C 8007FEFC DBD8000C */  jal        func_8003636C
/* 78E0430 8007FF00 100082AE */   sw        $v0, 0x10($s4)
/* 78E0434 8007FF04 CEFF0108 */  j          .Llevel_36_8007FF38
/* 78E0438 8007FF08 0C0082AE */   sw        $v0, 0xC($s4)
.Llevel_36_8007FF0C:
/* 78E043C 8007FF0C 0300A012 */  beqz       $s5, .Llevel_36_8007FF1C
/* 78E0440 8007FF10 0C006426 */   addiu     $a0, $s3, 0xC
/* 78E0444 8007FF14 C9FF0108 */  j          .Llevel_36_8007FF24
/* 78E0448 8007FF18 0C00A526 */   addiu     $a1, $s5, 0xC
.Llevel_36_8007FF1C:
/* 78E044C 8007FF1C 0780053C */  lui        $a1, %hi(D_80070328)
/* 78E0450 8007FF20 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_36_8007FF24:
/* 78E0454 8007FF24 5E3C010C */  jal        func_8004F178
/* 78E0458 8007FF28 00000000 */   nop
/* 78E045C 8007FF2C 21206002 */  addu       $a0, $s3, $zero
.Llevel_36_8007FF30:
/* 78E0460 8007FF30 0957010C */  jal        func_80055C24
/* 78E0464 8007FF34 00000000 */   nop
.Llevel_36_8007FF38:
/* 78E0468 8007FF38 21106002 */  addu       $v0, $s3, $zero
.Llevel_36_8007FF3C:
/* 78E046C 8007FF3C 5800BF8F */  lw         $ra, 0x58($sp)
/* 78E0470 8007FF40 5400B58F */  lw         $s5, 0x54($sp)
/* 78E0474 8007FF44 5000B48F */  lw         $s4, 0x50($sp)
/* 78E0478 8007FF48 4C00B38F */  lw         $s3, 0x4C($sp)
/* 78E047C 8007FF4C 4800B28F */  lw         $s2, 0x48($sp)
/* 78E0480 8007FF50 4400B18F */  lw         $s1, 0x44($sp)
/* 78E0484 8007FF54 4000B08F */  lw         $s0, 0x40($sp)
/* 78E0488 8007FF58 6000BD27 */  addiu      $sp, $sp, 0x60
/* 78E048C 8007FF5C 0800E003 */  jr         $ra
/* 78E0490 8007FF60 00000000 */   nop
.size func_level_36_8007F52C, . - func_level_36_8007F52C
