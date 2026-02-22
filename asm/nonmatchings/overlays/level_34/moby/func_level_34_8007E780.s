.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007E780
/* 74DA4B0 8007E780 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 74DA4B4 8007E784 1800B2AF */  sw         $s2, 0x18($sp)
/* 74DA4B8 8007E788 21908000 */  addu       $s2, $a0, $zero
/* 74DA4BC 8007E78C 1000B0AF */  sw         $s0, 0x10($sp)
/* 74DA4C0 8007E790 01001024 */  addiu      $s0, $zero, 0x1
/* 74DA4C4 8007E794 2000BFAF */  sw         $ra, 0x20($sp)
/* 74DA4C8 8007E798 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 74DA4CC 8007E79C 1400B1AF */  sw         $s1, 0x14($sp)
/* 74DA4D0 8007E7A0 48004392 */  lbu        $v1, 0x48($s2)
/* 74DA4D4 8007E7A4 0000518E */  lw         $s1, 0x0($s2)
/* 74DA4D8 8007E7A8 58007010 */  beq        $v1, $s0, .Llevel_34_8007E90C
/* 74DA4DC 8007E7AC 02006228 */   slti      $v0, $v1, 0x2
/* 74DA4E0 8007E7B0 05004010 */  beqz       $v0, .Llevel_34_8007E7C8
/* 74DA4E4 8007E7B4 00000000 */   nop
/* 74DA4E8 8007E7B8 0A006010 */  beqz       $v1, .Llevel_34_8007E7E4
/* 74DA4EC 8007E7BC 00000000 */   nop
/* 74DA4F0 8007E7C0 A4FA0108 */  j          .Llevel_34_8007EA90
/* 74DA4F4 8007E7C4 00000000 */   nop
.Llevel_34_8007E7C8:
/* 74DA4F8 8007E7C8 02000224 */  addiu      $v0, $zero, 0x2
/* 74DA4FC 8007E7CC 70006210 */  beq        $v1, $v0, .Llevel_34_8007E990
/* 74DA500 8007E7D0 03000224 */   addiu     $v0, $zero, 0x3
/* 74DA504 8007E7D4 75006210 */  beq        $v1, $v0, .Llevel_34_8007E9AC
/* 74DA508 8007E7D8 00000000 */   nop
/* 74DA50C 8007E7DC A4FA0108 */  j          .Llevel_34_8007EA90
/* 74DA510 8007E7E0 00000000 */   nop
.Llevel_34_8007E7E4:
/* 74DA514 8007E7E4 0000238E */  lw         $v1, 0x0($s1)
/* 74DA518 8007E7E8 00000000 */  nop
/* 74DA51C 8007E7EC 40100300 */  sll        $v0, $v1, 1
/* 74DA520 8007E7F0 21104300 */  addu       $v0, $v0, $v1
/* 74DA524 8007E7F4 80100200 */  sll        $v0, $v0, 2
/* 74DA528 8007E7F8 23104300 */  subu       $v0, $v0, $v1
/* 74DA52C 8007E7FC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 74DA530 8007E800 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 74DA534 8007E804 C0100200 */  sll        $v0, $v0, 3
/* 74DA538 8007E808 21284300 */  addu       $a1, $v0, $v1
/* 74DA53C 8007E80C 4800A290 */  lbu        $v0, 0x48($a1)
/* 74DA540 8007E810 00000000 */  nop
/* 74DA544 8007E814 80004230 */  andi       $v0, $v0, 0x80
/* 74DA548 8007E818 1B004010 */  beqz       $v0, .Llevel_34_8007E888
/* 74DA54C 8007E81C 04003026 */   addiu     $s0, $s1, 0x4
/* 74DA550 8007E820 21200002 */  addu       $a0, $s0, $zero
/* 74DA554 8007E824 5E3C010C */  jal        func_8004F178
/* 74DA558 8007E828 0C00A524 */   addiu     $a1, $a1, 0xC
/* 74DA55C 8007E82C 21204002 */  addu       $a0, $s2, $zero
/* 74DA560 8007E830 01000524 */  addiu      $a1, $zero, 0x1
/* 74DA564 8007E834 21300002 */  addu       $a2, $s0, $zero
/* 74DA568 8007E838 0C005326 */  addiu      $s3, $s2, 0xC
/* 74DA56C 8007E83C 9ADA000C */  jal        func_80036A68
/* 74DA570 8007E840 21386002 */   addu      $a3, $s3, $zero
/* 74DA574 8007E844 21884000 */  addu       $s1, $v0, $zero
/* 74DA578 8007E848 91002012 */  beqz       $s1, .Llevel_34_8007EA90
/* 74DA57C 8007E84C 0C003026 */   addiu     $s0, $s1, 0xC
/* 74DA580 8007E850 21200002 */  addu       $a0, $s0, $zero
/* 74DA584 8007E854 5E3C010C */  jal        func_8004F178
/* 74DA588 8007E858 21286002 */   addu      $a1, $s3, $zero
/* 74DA58C 8007E85C 21200002 */  addu       $a0, $s0, $zero
/* 74DA590 8007E860 D668000C */  jal        func_8001A358
/* 74DA594 8007E864 00040524 */   addiu     $a1, $zero, 0x400
/* 74DA598 8007E868 02004010 */  beqz       $v0, .Llevel_34_8007E874
/* 74DA59C 8007E86C 00000000 */   nop
/* 74DA5A0 8007E870 140022AE */  sw         $v0, 0x14($s1)
.Llevel_34_8007E874:
/* 74DA5A4 8007E874 50004292 */  lbu        $v0, 0x50($s2)
/* 74DA5A8 8007E878 21204002 */  addu       $a0, $s2, $zero
/* 74DA5AC 8007E87C 480020A2 */  sb         $zero, 0x48($s1)
/* 74DA5B0 8007E880 A2FA0108 */  j          .Llevel_34_8007EA88
/* 74DA5B4 8007E884 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_34_8007E888:
/* 74DA5B8 8007E888 04002426 */  addiu      $a0, $s1, 0x4
/* 74DA5BC 8007E88C 0C005026 */  addiu      $s0, $s2, 0xC
/* 74DA5C0 8007E890 5E3C010C */  jal        func_8004F178
/* 74DA5C4 8007E894 21280002 */   addu      $a1, $s0, $zero
/* 74DA5C8 8007E898 21200002 */  addu       $a0, $s0, $zero
/* 74DA5CC 8007E89C 0000238E */  lw         $v1, 0x0($s1)
/* 74DA5D0 8007E8A0 0780053C */  lui        $a1, %hi(D_8006C550)
/* 74DA5D4 8007E8A4 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 74DA5D8 8007E8A8 40100300 */  sll        $v0, $v1, 1
/* 74DA5DC 8007E8AC 21104300 */  addu       $v0, $v0, $v1
/* 74DA5E0 8007E8B0 80100200 */  sll        $v0, $v0, 2
/* 74DA5E4 8007E8B4 23104300 */  subu       $v0, $v0, $v1
/* 74DA5E8 8007E8B8 C0100200 */  sll        $v0, $v0, 3
/* 74DA5EC 8007E8BC 2128A200 */  addu       $a1, $a1, $v0
/* 74DA5F0 8007E8C0 5E3C010C */  jal        func_8004F178
/* 74DA5F4 8007E8C4 0C00A524 */   addiu     $a1, $a1, 0xC
/* 74DA5F8 8007E8C8 1400228E */  lw         $v0, 0x14($s1)
/* 74DA5FC 8007E8CC 00000000 */  nop
/* 74DA600 8007E8D0 0000438C */  lw         $v1, 0x0($v0)
/* 74DA604 8007E8D4 00000000 */  nop
/* 74DA608 8007E8D8 490043A2 */  sb         $v1, 0x49($s2)
/* 74DA60C 8007E8DC FF006330 */  andi       $v1, $v1, 0xFF
/* 74DA610 8007E8E0 00110300 */  sll        $v0, $v1, 4
/* 74DA614 8007E8E4 1400248E */  lw         $a0, 0x14($s1)
/* 74DA618 8007E8E8 23104300 */  subu       $v0, $v0, $v1
/* 74DA61C 8007E8EC 100022AE */  sw         $v0, 0x10($s1)
/* 74DA620 8007E8F0 0000828C */  lw         $v0, 0x0($a0)
/* 74DA624 8007E8F4 00000000 */  nop
/* 74DA628 8007E8F8 01004224 */  addiu      $v0, $v0, 0x1
/* 74DA62C 8007E8FC 000082AC */  sw         $v0, 0x0($a0)
/* 74DA630 8007E900 01000224 */  addiu      $v0, $zero, 0x1
/* 74DA634 8007E904 A4FA0108 */  j          .Llevel_34_8007EA90
/* 74DA638 8007E908 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_34_8007E90C:
/* 74DA63C 8007E90C 0000238E */  lw         $v1, 0x0($s1)
/* 74DA640 8007E910 00000000 */  nop
/* 74DA644 8007E914 40100300 */  sll        $v0, $v1, 1
/* 74DA648 8007E918 21104300 */  addu       $v0, $v0, $v1
/* 74DA64C 8007E91C 80100200 */  sll        $v0, $v0, 2
/* 74DA650 8007E920 23104300 */  subu       $v0, $v0, $v1
/* 74DA654 8007E924 0780033C */  lui        $v1, %hi(D_8006C550)
/* 74DA658 8007E928 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 74DA65C 8007E92C C0100200 */  sll        $v0, $v0, 3
/* 74DA660 8007E930 21284300 */  addu       $a1, $v0, $v1
/* 74DA664 8007E934 3600A384 */  lh         $v1, 0x36($a1)
/* 74DA668 8007E938 CE000224 */  addiu      $v0, $zero, 0xCE
/* 74DA66C 8007E93C 03006214 */  bne        $v1, $v0, .Llevel_34_8007E94C
/* 74DA670 8007E940 0C004426 */   addiu     $a0, $s2, 0xC
/* 74DA674 8007E944 5E3C010C */  jal        func_8004F178
/* 74DA678 8007E948 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_34_8007E94C:
/* 74DA67C 8007E94C 0000238E */  lw         $v1, 0x0($s1)
/* 74DA680 8007E950 00000000 */  nop
/* 74DA684 8007E954 40100300 */  sll        $v0, $v1, 1
/* 74DA688 8007E958 21104300 */  addu       $v0, $v0, $v1
/* 74DA68C 8007E95C 80100200 */  sll        $v0, $v0, 2
/* 74DA690 8007E960 23104300 */  subu       $v0, $v0, $v1
/* 74DA694 8007E964 0780033C */  lui        $v1, %hi(D_8006C550)
/* 74DA698 8007E968 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 74DA69C 8007E96C C0100200 */  sll        $v0, $v0, 3
/* 74DA6A0 8007E970 21104300 */  addu       $v0, $v0, $v1
/* 74DA6A4 8007E974 48004290 */  lbu        $v0, 0x48($v0)
/* 74DA6A8 8007E978 00000000 */  nop
/* 74DA6AC 8007E97C 80004230 */  andi       $v0, $v0, 0x80
/* 74DA6B0 8007E980 43004010 */  beqz       $v0, .Llevel_34_8007EA90
/* 74DA6B4 8007E984 02000224 */   addiu     $v0, $zero, 0x2
/* 74DA6B8 8007E988 A4FA0108 */  j          .Llevel_34_8007EA90
/* 74DA6BC 8007E98C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_34_8007E990:
/* 74DA6C0 8007E990 10002426 */  addiu      $a0, $s1, 0x10
/* 74DA6C4 8007E994 69D6000C */  jal        func_800359A4
/* 74DA6C8 8007E998 04000524 */   addiu     $a1, $zero, 0x4
/* 74DA6CC 8007E99C 3C004010 */  beqz       $v0, .Llevel_34_8007EA90
/* 74DA6D0 8007E9A0 03000224 */   addiu     $v0, $zero, 0x3
/* 74DA6D4 8007E9A4 A4FA0108 */  j          .Llevel_34_8007EA90
/* 74DA6D8 8007E9A8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_34_8007E9AC:
/* 74DA6DC 8007E9AC 0000238E */  lw         $v1, 0x0($s1)
/* 74DA6E0 8007E9B0 00000000 */  nop
/* 74DA6E4 8007E9B4 40100300 */  sll        $v0, $v1, 1
/* 74DA6E8 8007E9B8 21104300 */  addu       $v0, $v0, $v1
/* 74DA6EC 8007E9BC 80100200 */  sll        $v0, $v0, 2
/* 74DA6F0 8007E9C0 23104300 */  subu       $v0, $v0, $v1
/* 74DA6F4 8007E9C4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 74DA6F8 8007E9C8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 74DA6FC 8007E9CC C0100200 */  sll        $v0, $v0, 3
/* 74DA700 8007E9D0 21204300 */  addu       $a0, $v0, $v1
/* 74DA704 8007E9D4 50008390 */  lbu        $v1, 0x50($a0)
/* 74DA708 8007E9D8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 74DA70C 8007E9DC 15006214 */  bne        $v1, $v0, .Llevel_34_8007EA34
/* 74DA710 8007E9E0 00000000 */   nop
/* 74DA714 8007E9E4 80EE000C */  jal        func_8003BA00
/* 74DA718 8007E9E8 00000000 */   nop
/* 74DA71C 8007E9EC 0000238E */  lw         $v1, 0x0($s1)
/* 74DA720 8007E9F0 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 74DA724 8007E9F4 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 74DA728 8007E9F8 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 74DA72C 8007E9FC B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 74DA730 8007EA00 21186200 */  addu       $v1, $v1, $v0
/* 74DA734 8007EA04 1F006530 */  andi       $a1, $v1, 0x1F
/* 74DA738 8007EA08 43190300 */  sra        $v1, $v1, 5
/* 74DA73C 8007EA0C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 74DA740 8007EA10 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 74DA744 8007EA14 80180300 */  sll        $v1, $v1, 2
/* 74DA748 8007EA18 40110200 */  sll        $v0, $v0, 5
/* 74DA74C 8007EA1C 21104400 */  addu       $v0, $v0, $a0
/* 74DA750 8007EA20 21186200 */  addu       $v1, $v1, $v0
/* 74DA754 8007EA24 0000628C */  lw         $v0, 0x0($v1)
/* 74DA758 8007EA28 0428B000 */  sllv       $a1, $s0, $a1
/* 74DA75C 8007EA2C 25104500 */  or         $v0, $v0, $a1
/* 74DA760 8007EA30 000062AC */  sw         $v0, 0x0($v1)
.Llevel_34_8007EA34:
/* 74DA764 8007EA34 21204002 */  addu       $a0, $s2, $zero
/* 74DA768 8007EA38 01000524 */  addiu      $a1, $zero, 0x1
/* 74DA76C 8007EA3C 0C004626 */  addiu      $a2, $s2, 0xC
/* 74DA770 8007EA40 9ADA000C */  jal        func_80036A68
/* 74DA774 8007EA44 04002726 */   addiu     $a3, $s1, 0x4
/* 74DA778 8007EA48 11004010 */  beqz       $v0, .Llevel_34_8007EA90
/* 74DA77C 8007EA4C 21284002 */   addu      $a1, $s2, $zero
/* 74DA780 8007EA50 0780023C */  lui        $v0, %hi(D_8006C654)
/* 74DA784 8007EA54 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 74DA788 8007EA58 00000000 */  nop
/* 74DA78C 8007EA5C 1A004490 */  lbu        $a0, 0x1A($v0)
/* 74DA790 8007EA60 D4EE000C */  jal        PlaySound
/* 74DA794 8007EA64 21300000 */   addu      $a2, $zero, $zero
/* 74DA798 8007EA68 06004004 */  bltz       $v0, .Llevel_34_8007EA84
/* 74DA79C 8007EA6C 21204000 */   addu      $a0, $v0, $zero
/* 74DA7A0 8007EA70 49004592 */  lbu        $a1, 0x49($s2)
/* 74DA7A4 8007EA74 00000000 */  nop
/* 74DA7A8 8007EA78 002A0500 */  sll        $a1, $a1, 8
/* 74DA7AC 8007EA7C 2CF0000C */  jal        func_8003C0B0
/* 74DA7B0 8007EA80 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_34_8007EA84:
/* 74DA7B4 8007EA84 21204002 */  addu       $a0, $s2, $zero
.Llevel_34_8007EA88:
/* 74DA7B8 8007EA88 C656010C */  jal        func_80055B18
/* 74DA7BC 8007EA8C 00000000 */   nop
.Llevel_34_8007EA90:
/* 74DA7C0 8007EA90 2000BF8F */  lw         $ra, 0x20($sp)
/* 74DA7C4 8007EA94 1C00B38F */  lw         $s3, 0x1C($sp)
/* 74DA7C8 8007EA98 1800B28F */  lw         $s2, 0x18($sp)
/* 74DA7CC 8007EA9C 1400B18F */  lw         $s1, 0x14($sp)
/* 74DA7D0 8007EAA0 1000B08F */  lw         $s0, 0x10($sp)
/* 74DA7D4 8007EAA4 2800BD27 */  addiu      $sp, $sp, 0x28
/* 74DA7D8 8007EAA8 0800E003 */  jr         $ra
/* 74DA7DC 8007EAAC 00000000 */   nop
.size func_level_34_8007E780, . - func_level_34_8007E780
