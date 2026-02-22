.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007D8C0
/* 5DF85F0 8007D8C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5DF85F4 8007D8C4 1800B2AF */  sw         $s2, 0x18($sp)
/* 5DF85F8 8007D8C8 21908000 */  addu       $s2, $a0, $zero
/* 5DF85FC 8007D8CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF8600 8007D8D0 01001024 */  addiu      $s0, $zero, 0x1
/* 5DF8604 8007D8D4 2000BFAF */  sw         $ra, 0x20($sp)
/* 5DF8608 8007D8D8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 5DF860C 8007D8DC 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF8610 8007D8E0 48004392 */  lbu        $v1, 0x48($s2)
/* 5DF8614 8007D8E4 0000518E */  lw         $s1, 0x0($s2)
/* 5DF8618 8007D8E8 58007010 */  beq        $v1, $s0, .Llevel_24_8007DA4C
/* 5DF861C 8007D8EC 02006228 */   slti      $v0, $v1, 0x2
/* 5DF8620 8007D8F0 05004010 */  beqz       $v0, .Llevel_24_8007D908
/* 5DF8624 8007D8F4 00000000 */   nop
/* 5DF8628 8007D8F8 0A006010 */  beqz       $v1, .Llevel_24_8007D924
/* 5DF862C 8007D8FC 00000000 */   nop
/* 5DF8630 8007D900 F4F60108 */  j          .Llevel_24_8007DBD0
/* 5DF8634 8007D904 00000000 */   nop
.Llevel_24_8007D908:
/* 5DF8638 8007D908 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF863C 8007D90C 70006210 */  beq        $v1, $v0, .Llevel_24_8007DAD0
/* 5DF8640 8007D910 03000224 */   addiu     $v0, $zero, 0x3
/* 5DF8644 8007D914 75006210 */  beq        $v1, $v0, .Llevel_24_8007DAEC
/* 5DF8648 8007D918 00000000 */   nop
/* 5DF864C 8007D91C F4F60108 */  j          .Llevel_24_8007DBD0
/* 5DF8650 8007D920 00000000 */   nop
.Llevel_24_8007D924:
/* 5DF8654 8007D924 0000238E */  lw         $v1, 0x0($s1)
/* 5DF8658 8007D928 00000000 */  nop
/* 5DF865C 8007D92C 40100300 */  sll        $v0, $v1, 1
/* 5DF8660 8007D930 21104300 */  addu       $v0, $v0, $v1
/* 5DF8664 8007D934 80100200 */  sll        $v0, $v0, 2
/* 5DF8668 8007D938 23104300 */  subu       $v0, $v0, $v1
/* 5DF866C 8007D93C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DF8670 8007D940 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DF8674 8007D944 C0100200 */  sll        $v0, $v0, 3
/* 5DF8678 8007D948 21284300 */  addu       $a1, $v0, $v1
/* 5DF867C 8007D94C 4800A290 */  lbu        $v0, 0x48($a1)
/* 5DF8680 8007D950 00000000 */  nop
/* 5DF8684 8007D954 80004230 */  andi       $v0, $v0, 0x80
/* 5DF8688 8007D958 1B004010 */  beqz       $v0, .Llevel_24_8007D9C8
/* 5DF868C 8007D95C 04003026 */   addiu     $s0, $s1, 0x4
/* 5DF8690 8007D960 21200002 */  addu       $a0, $s0, $zero
/* 5DF8694 8007D964 5E3C010C */  jal        func_8004F178
/* 5DF8698 8007D968 0C00A524 */   addiu     $a1, $a1, 0xC
/* 5DF869C 8007D96C 21204002 */  addu       $a0, $s2, $zero
/* 5DF86A0 8007D970 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF86A4 8007D974 21300002 */  addu       $a2, $s0, $zero
/* 5DF86A8 8007D978 0C005326 */  addiu      $s3, $s2, 0xC
/* 5DF86AC 8007D97C 9ADA000C */  jal        func_80036A68
/* 5DF86B0 8007D980 21386002 */   addu      $a3, $s3, $zero
/* 5DF86B4 8007D984 21884000 */  addu       $s1, $v0, $zero
/* 5DF86B8 8007D988 91002012 */  beqz       $s1, .Llevel_24_8007DBD0
/* 5DF86BC 8007D98C 0C003026 */   addiu     $s0, $s1, 0xC
/* 5DF86C0 8007D990 21200002 */  addu       $a0, $s0, $zero
/* 5DF86C4 8007D994 5E3C010C */  jal        func_8004F178
/* 5DF86C8 8007D998 21286002 */   addu      $a1, $s3, $zero
/* 5DF86CC 8007D99C 21200002 */  addu       $a0, $s0, $zero
/* 5DF86D0 8007D9A0 D668000C */  jal        func_8001A358
/* 5DF86D4 8007D9A4 00040524 */   addiu     $a1, $zero, 0x400
/* 5DF86D8 8007D9A8 02004010 */  beqz       $v0, .Llevel_24_8007D9B4
/* 5DF86DC 8007D9AC 00000000 */   nop
/* 5DF86E0 8007D9B0 140022AE */  sw         $v0, 0x14($s1)
.Llevel_24_8007D9B4:
/* 5DF86E4 8007D9B4 50004292 */  lbu        $v0, 0x50($s2)
/* 5DF86E8 8007D9B8 21204002 */  addu       $a0, $s2, $zero
/* 5DF86EC 8007D9BC 480020A2 */  sb         $zero, 0x48($s1)
/* 5DF86F0 8007D9C0 F2F60108 */  j          .Llevel_24_8007DBC8
/* 5DF86F4 8007D9C4 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_24_8007D9C8:
/* 5DF86F8 8007D9C8 04002426 */  addiu      $a0, $s1, 0x4
/* 5DF86FC 8007D9CC 0C005026 */  addiu      $s0, $s2, 0xC
/* 5DF8700 8007D9D0 5E3C010C */  jal        func_8004F178
/* 5DF8704 8007D9D4 21280002 */   addu      $a1, $s0, $zero
/* 5DF8708 8007D9D8 21200002 */  addu       $a0, $s0, $zero
/* 5DF870C 8007D9DC 0000238E */  lw         $v1, 0x0($s1)
/* 5DF8710 8007D9E0 0780053C */  lui        $a1, %hi(D_8006C550)
/* 5DF8714 8007D9E4 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 5DF8718 8007D9E8 40100300 */  sll        $v0, $v1, 1
/* 5DF871C 8007D9EC 21104300 */  addu       $v0, $v0, $v1
/* 5DF8720 8007D9F0 80100200 */  sll        $v0, $v0, 2
/* 5DF8724 8007D9F4 23104300 */  subu       $v0, $v0, $v1
/* 5DF8728 8007D9F8 C0100200 */  sll        $v0, $v0, 3
/* 5DF872C 8007D9FC 2128A200 */  addu       $a1, $a1, $v0
/* 5DF8730 8007DA00 5E3C010C */  jal        func_8004F178
/* 5DF8734 8007DA04 0C00A524 */   addiu     $a1, $a1, 0xC
/* 5DF8738 8007DA08 1400228E */  lw         $v0, 0x14($s1)
/* 5DF873C 8007DA0C 00000000 */  nop
/* 5DF8740 8007DA10 0000438C */  lw         $v1, 0x0($v0)
/* 5DF8744 8007DA14 00000000 */  nop
/* 5DF8748 8007DA18 490043A2 */  sb         $v1, 0x49($s2)
/* 5DF874C 8007DA1C FF006330 */  andi       $v1, $v1, 0xFF
/* 5DF8750 8007DA20 00110300 */  sll        $v0, $v1, 4
/* 5DF8754 8007DA24 1400248E */  lw         $a0, 0x14($s1)
/* 5DF8758 8007DA28 23104300 */  subu       $v0, $v0, $v1
/* 5DF875C 8007DA2C 100022AE */  sw         $v0, 0x10($s1)
/* 5DF8760 8007DA30 0000828C */  lw         $v0, 0x0($a0)
/* 5DF8764 8007DA34 00000000 */  nop
/* 5DF8768 8007DA38 01004224 */  addiu      $v0, $v0, 0x1
/* 5DF876C 8007DA3C 000082AC */  sw         $v0, 0x0($a0)
/* 5DF8770 8007DA40 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF8774 8007DA44 F4F60108 */  j          .Llevel_24_8007DBD0
/* 5DF8778 8007DA48 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007DA4C:
/* 5DF877C 8007DA4C 0000238E */  lw         $v1, 0x0($s1)
/* 5DF8780 8007DA50 00000000 */  nop
/* 5DF8784 8007DA54 40100300 */  sll        $v0, $v1, 1
/* 5DF8788 8007DA58 21104300 */  addu       $v0, $v0, $v1
/* 5DF878C 8007DA5C 80100200 */  sll        $v0, $v0, 2
/* 5DF8790 8007DA60 23104300 */  subu       $v0, $v0, $v1
/* 5DF8794 8007DA64 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DF8798 8007DA68 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DF879C 8007DA6C C0100200 */  sll        $v0, $v0, 3
/* 5DF87A0 8007DA70 21284300 */  addu       $a1, $v0, $v1
/* 5DF87A4 8007DA74 3600A384 */  lh         $v1, 0x36($a1)
/* 5DF87A8 8007DA78 CE000224 */  addiu      $v0, $zero, 0xCE
/* 5DF87AC 8007DA7C 03006214 */  bne        $v1, $v0, .Llevel_24_8007DA8C
/* 5DF87B0 8007DA80 0C004426 */   addiu     $a0, $s2, 0xC
/* 5DF87B4 8007DA84 5E3C010C */  jal        func_8004F178
/* 5DF87B8 8007DA88 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_24_8007DA8C:
/* 5DF87BC 8007DA8C 0000238E */  lw         $v1, 0x0($s1)
/* 5DF87C0 8007DA90 00000000 */  nop
/* 5DF87C4 8007DA94 40100300 */  sll        $v0, $v1, 1
/* 5DF87C8 8007DA98 21104300 */  addu       $v0, $v0, $v1
/* 5DF87CC 8007DA9C 80100200 */  sll        $v0, $v0, 2
/* 5DF87D0 8007DAA0 23104300 */  subu       $v0, $v0, $v1
/* 5DF87D4 8007DAA4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DF87D8 8007DAA8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DF87DC 8007DAAC C0100200 */  sll        $v0, $v0, 3
/* 5DF87E0 8007DAB0 21104300 */  addu       $v0, $v0, $v1
/* 5DF87E4 8007DAB4 48004290 */  lbu        $v0, 0x48($v0)
/* 5DF87E8 8007DAB8 00000000 */  nop
/* 5DF87EC 8007DABC 80004230 */  andi       $v0, $v0, 0x80
/* 5DF87F0 8007DAC0 43004010 */  beqz       $v0, .Llevel_24_8007DBD0
/* 5DF87F4 8007DAC4 02000224 */   addiu     $v0, $zero, 0x2
/* 5DF87F8 8007DAC8 F4F60108 */  j          .Llevel_24_8007DBD0
/* 5DF87FC 8007DACC 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007DAD0:
/* 5DF8800 8007DAD0 10002426 */  addiu      $a0, $s1, 0x10
/* 5DF8804 8007DAD4 69D6000C */  jal        func_800359A4
/* 5DF8808 8007DAD8 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF880C 8007DADC 3C004010 */  beqz       $v0, .Llevel_24_8007DBD0
/* 5DF8810 8007DAE0 03000224 */   addiu     $v0, $zero, 0x3
/* 5DF8814 8007DAE4 F4F60108 */  j          .Llevel_24_8007DBD0
/* 5DF8818 8007DAE8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007DAEC:
/* 5DF881C 8007DAEC 0000238E */  lw         $v1, 0x0($s1)
/* 5DF8820 8007DAF0 00000000 */  nop
/* 5DF8824 8007DAF4 40100300 */  sll        $v0, $v1, 1
/* 5DF8828 8007DAF8 21104300 */  addu       $v0, $v0, $v1
/* 5DF882C 8007DAFC 80100200 */  sll        $v0, $v0, 2
/* 5DF8830 8007DB00 23104300 */  subu       $v0, $v0, $v1
/* 5DF8834 8007DB04 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5DF8838 8007DB08 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5DF883C 8007DB0C C0100200 */  sll        $v0, $v0, 3
/* 5DF8840 8007DB10 21204300 */  addu       $a0, $v0, $v1
/* 5DF8844 8007DB14 50008390 */  lbu        $v1, 0x50($a0)
/* 5DF8848 8007DB18 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5DF884C 8007DB1C 15006214 */  bne        $v1, $v0, .Llevel_24_8007DB74
/* 5DF8850 8007DB20 00000000 */   nop
/* 5DF8854 8007DB24 80EE000C */  jal        func_8003BA00
/* 5DF8858 8007DB28 00000000 */   nop
/* 5DF885C 8007DB2C 0000238E */  lw         $v1, 0x0($s1)
/* 5DF8860 8007DB30 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 5DF8864 8007DB34 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 5DF8868 8007DB38 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 5DF886C 8007DB3C B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 5DF8870 8007DB40 21186200 */  addu       $v1, $v1, $v0
/* 5DF8874 8007DB44 1F006530 */  andi       $a1, $v1, 0x1F
/* 5DF8878 8007DB48 43190300 */  sra        $v1, $v1, 5
/* 5DF887C 8007DB4C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5DF8880 8007DB50 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5DF8884 8007DB54 80180300 */  sll        $v1, $v1, 2
/* 5DF8888 8007DB58 40110200 */  sll        $v0, $v0, 5
/* 5DF888C 8007DB5C 21104400 */  addu       $v0, $v0, $a0
/* 5DF8890 8007DB60 21186200 */  addu       $v1, $v1, $v0
/* 5DF8894 8007DB64 0000628C */  lw         $v0, 0x0($v1)
/* 5DF8898 8007DB68 0428B000 */  sllv       $a1, $s0, $a1
/* 5DF889C 8007DB6C 25104500 */  or         $v0, $v0, $a1
/* 5DF88A0 8007DB70 000062AC */  sw         $v0, 0x0($v1)
.Llevel_24_8007DB74:
/* 5DF88A4 8007DB74 21204002 */  addu       $a0, $s2, $zero
/* 5DF88A8 8007DB78 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF88AC 8007DB7C 0C004626 */  addiu      $a2, $s2, 0xC
/* 5DF88B0 8007DB80 9ADA000C */  jal        func_80036A68
/* 5DF88B4 8007DB84 04002726 */   addiu     $a3, $s1, 0x4
/* 5DF88B8 8007DB88 11004010 */  beqz       $v0, .Llevel_24_8007DBD0
/* 5DF88BC 8007DB8C 21284002 */   addu      $a1, $s2, $zero
/* 5DF88C0 8007DB90 0780023C */  lui        $v0, %hi(D_8006C654)
/* 5DF88C4 8007DB94 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 5DF88C8 8007DB98 00000000 */  nop
/* 5DF88CC 8007DB9C 1A004490 */  lbu        $a0, 0x1A($v0)
/* 5DF88D0 8007DBA0 D4EE000C */  jal        PlaySound
/* 5DF88D4 8007DBA4 21300000 */   addu      $a2, $zero, $zero
/* 5DF88D8 8007DBA8 06004004 */  bltz       $v0, .Llevel_24_8007DBC4
/* 5DF88DC 8007DBAC 21204000 */   addu      $a0, $v0, $zero
/* 5DF88E0 8007DBB0 49004592 */  lbu        $a1, 0x49($s2)
/* 5DF88E4 8007DBB4 00000000 */  nop
/* 5DF88E8 8007DBB8 002A0500 */  sll        $a1, $a1, 8
/* 5DF88EC 8007DBBC 2CF0000C */  jal        func_8003C0B0
/* 5DF88F0 8007DBC0 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_24_8007DBC4:
/* 5DF88F4 8007DBC4 21204002 */  addu       $a0, $s2, $zero
.Llevel_24_8007DBC8:
/* 5DF88F8 8007DBC8 C656010C */  jal        func_80055B18
/* 5DF88FC 8007DBCC 00000000 */   nop
.Llevel_24_8007DBD0:
/* 5DF8900 8007DBD0 2000BF8F */  lw         $ra, 0x20($sp)
/* 5DF8904 8007DBD4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 5DF8908 8007DBD8 1800B28F */  lw         $s2, 0x18($sp)
/* 5DF890C 8007DBDC 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF8910 8007DBE0 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF8914 8007DBE4 2800BD27 */  addiu      $sp, $sp, 0x28
/* 5DF8918 8007DBE8 0800E003 */  jr         $ra
/* 5DF891C 8007DBEC 00000000 */   nop
.size func_level_24_8007D8C0, . - func_level_24_8007D8C0
