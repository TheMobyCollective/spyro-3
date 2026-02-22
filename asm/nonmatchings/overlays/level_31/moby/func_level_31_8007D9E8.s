.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_31_8007D9E8
/* 6A98718 8007D9E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6A9871C 8007D9EC 1800B2AF */  sw         $s2, 0x18($sp)
/* 6A98720 8007D9F0 21908000 */  addu       $s2, $a0, $zero
/* 6A98724 8007D9F4 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A98728 8007D9F8 01001024 */  addiu      $s0, $zero, 0x1
/* 6A9872C 8007D9FC 2000BFAF */  sw         $ra, 0x20($sp)
/* 6A98730 8007DA00 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 6A98734 8007DA04 1400B1AF */  sw         $s1, 0x14($sp)
/* 6A98738 8007DA08 48004392 */  lbu        $v1, 0x48($s2)
/* 6A9873C 8007DA0C 0000518E */  lw         $s1, 0x0($s2)
/* 6A98740 8007DA10 58007010 */  beq        $v1, $s0, .Llevel_31_8007DB74
/* 6A98744 8007DA14 02006228 */   slti      $v0, $v1, 0x2
/* 6A98748 8007DA18 05004010 */  beqz       $v0, .Llevel_31_8007DA30
/* 6A9874C 8007DA1C 00000000 */   nop
/* 6A98750 8007DA20 0A006010 */  beqz       $v1, .Llevel_31_8007DA4C
/* 6A98754 8007DA24 00000000 */   nop
/* 6A98758 8007DA28 3EF70108 */  j          .Llevel_31_8007DCF8
/* 6A9875C 8007DA2C 00000000 */   nop
.Llevel_31_8007DA30:
/* 6A98760 8007DA30 02000224 */  addiu      $v0, $zero, 0x2
/* 6A98764 8007DA34 70006210 */  beq        $v1, $v0, .Llevel_31_8007DBF8
/* 6A98768 8007DA38 03000224 */   addiu     $v0, $zero, 0x3
/* 6A9876C 8007DA3C 75006210 */  beq        $v1, $v0, .Llevel_31_8007DC14
/* 6A98770 8007DA40 00000000 */   nop
/* 6A98774 8007DA44 3EF70108 */  j          .Llevel_31_8007DCF8
/* 6A98778 8007DA48 00000000 */   nop
.Llevel_31_8007DA4C:
/* 6A9877C 8007DA4C 0000238E */  lw         $v1, 0x0($s1)
/* 6A98780 8007DA50 00000000 */  nop
/* 6A98784 8007DA54 40100300 */  sll        $v0, $v1, 1
/* 6A98788 8007DA58 21104300 */  addu       $v0, $v0, $v1
/* 6A9878C 8007DA5C 80100200 */  sll        $v0, $v0, 2
/* 6A98790 8007DA60 23104300 */  subu       $v0, $v0, $v1
/* 6A98794 8007DA64 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A98798 8007DA68 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A9879C 8007DA6C C0100200 */  sll        $v0, $v0, 3
/* 6A987A0 8007DA70 21284300 */  addu       $a1, $v0, $v1
/* 6A987A4 8007DA74 4800A290 */  lbu        $v0, 0x48($a1)
/* 6A987A8 8007DA78 00000000 */  nop
/* 6A987AC 8007DA7C 80004230 */  andi       $v0, $v0, 0x80
/* 6A987B0 8007DA80 1B004010 */  beqz       $v0, .Llevel_31_8007DAF0
/* 6A987B4 8007DA84 04003026 */   addiu     $s0, $s1, 0x4
/* 6A987B8 8007DA88 21200002 */  addu       $a0, $s0, $zero
/* 6A987BC 8007DA8C 5E3C010C */  jal        func_8004F178
/* 6A987C0 8007DA90 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6A987C4 8007DA94 21204002 */  addu       $a0, $s2, $zero
/* 6A987C8 8007DA98 01000524 */  addiu      $a1, $zero, 0x1
/* 6A987CC 8007DA9C 21300002 */  addu       $a2, $s0, $zero
/* 6A987D0 8007DAA0 0C005326 */  addiu      $s3, $s2, 0xC
/* 6A987D4 8007DAA4 9ADA000C */  jal        func_80036A68
/* 6A987D8 8007DAA8 21386002 */   addu      $a3, $s3, $zero
/* 6A987DC 8007DAAC 21884000 */  addu       $s1, $v0, $zero
/* 6A987E0 8007DAB0 91002012 */  beqz       $s1, .Llevel_31_8007DCF8
/* 6A987E4 8007DAB4 0C003026 */   addiu     $s0, $s1, 0xC
/* 6A987E8 8007DAB8 21200002 */  addu       $a0, $s0, $zero
/* 6A987EC 8007DABC 5E3C010C */  jal        func_8004F178
/* 6A987F0 8007DAC0 21286002 */   addu      $a1, $s3, $zero
/* 6A987F4 8007DAC4 21200002 */  addu       $a0, $s0, $zero
/* 6A987F8 8007DAC8 D668000C */  jal        func_8001A358
/* 6A987FC 8007DACC 00040524 */   addiu     $a1, $zero, 0x400
/* 6A98800 8007DAD0 02004010 */  beqz       $v0, .Llevel_31_8007DADC
/* 6A98804 8007DAD4 00000000 */   nop
/* 6A98808 8007DAD8 140022AE */  sw         $v0, 0x14($s1)
.Llevel_31_8007DADC:
/* 6A9880C 8007DADC 50004292 */  lbu        $v0, 0x50($s2)
/* 6A98810 8007DAE0 21204002 */  addu       $a0, $s2, $zero
/* 6A98814 8007DAE4 480020A2 */  sb         $zero, 0x48($s1)
/* 6A98818 8007DAE8 3CF70108 */  j          .Llevel_31_8007DCF0
/* 6A9881C 8007DAEC 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_31_8007DAF0:
/* 6A98820 8007DAF0 04002426 */  addiu      $a0, $s1, 0x4
/* 6A98824 8007DAF4 0C005026 */  addiu      $s0, $s2, 0xC
/* 6A98828 8007DAF8 5E3C010C */  jal        func_8004F178
/* 6A9882C 8007DAFC 21280002 */   addu      $a1, $s0, $zero
/* 6A98830 8007DB00 21200002 */  addu       $a0, $s0, $zero
/* 6A98834 8007DB04 0000238E */  lw         $v1, 0x0($s1)
/* 6A98838 8007DB08 0780053C */  lui        $a1, %hi(D_8006C550)
/* 6A9883C 8007DB0C 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 6A98840 8007DB10 40100300 */  sll        $v0, $v1, 1
/* 6A98844 8007DB14 21104300 */  addu       $v0, $v0, $v1
/* 6A98848 8007DB18 80100200 */  sll        $v0, $v0, 2
/* 6A9884C 8007DB1C 23104300 */  subu       $v0, $v0, $v1
/* 6A98850 8007DB20 C0100200 */  sll        $v0, $v0, 3
/* 6A98854 8007DB24 2128A200 */  addu       $a1, $a1, $v0
/* 6A98858 8007DB28 5E3C010C */  jal        func_8004F178
/* 6A9885C 8007DB2C 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6A98860 8007DB30 1400228E */  lw         $v0, 0x14($s1)
/* 6A98864 8007DB34 00000000 */  nop
/* 6A98868 8007DB38 0000438C */  lw         $v1, 0x0($v0)
/* 6A9886C 8007DB3C 00000000 */  nop
/* 6A98870 8007DB40 490043A2 */  sb         $v1, 0x49($s2)
/* 6A98874 8007DB44 FF006330 */  andi       $v1, $v1, 0xFF
/* 6A98878 8007DB48 00110300 */  sll        $v0, $v1, 4
/* 6A9887C 8007DB4C 1400248E */  lw         $a0, 0x14($s1)
/* 6A98880 8007DB50 23104300 */  subu       $v0, $v0, $v1
/* 6A98884 8007DB54 100022AE */  sw         $v0, 0x10($s1)
/* 6A98888 8007DB58 0000828C */  lw         $v0, 0x0($a0)
/* 6A9888C 8007DB5C 00000000 */  nop
/* 6A98890 8007DB60 01004224 */  addiu      $v0, $v0, 0x1
/* 6A98894 8007DB64 000082AC */  sw         $v0, 0x0($a0)
/* 6A98898 8007DB68 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9889C 8007DB6C 3EF70108 */  j          .Llevel_31_8007DCF8
/* 6A988A0 8007DB70 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_31_8007DB74:
/* 6A988A4 8007DB74 0000238E */  lw         $v1, 0x0($s1)
/* 6A988A8 8007DB78 00000000 */  nop
/* 6A988AC 8007DB7C 40100300 */  sll        $v0, $v1, 1
/* 6A988B0 8007DB80 21104300 */  addu       $v0, $v0, $v1
/* 6A988B4 8007DB84 80100200 */  sll        $v0, $v0, 2
/* 6A988B8 8007DB88 23104300 */  subu       $v0, $v0, $v1
/* 6A988BC 8007DB8C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A988C0 8007DB90 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A988C4 8007DB94 C0100200 */  sll        $v0, $v0, 3
/* 6A988C8 8007DB98 21284300 */  addu       $a1, $v0, $v1
/* 6A988CC 8007DB9C 3600A384 */  lh         $v1, 0x36($a1)
/* 6A988D0 8007DBA0 CE000224 */  addiu      $v0, $zero, 0xCE
/* 6A988D4 8007DBA4 03006214 */  bne        $v1, $v0, .Llevel_31_8007DBB4
/* 6A988D8 8007DBA8 0C004426 */   addiu     $a0, $s2, 0xC
/* 6A988DC 8007DBAC 5E3C010C */  jal        func_8004F178
/* 6A988E0 8007DBB0 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_31_8007DBB4:
/* 6A988E4 8007DBB4 0000238E */  lw         $v1, 0x0($s1)
/* 6A988E8 8007DBB8 00000000 */  nop
/* 6A988EC 8007DBBC 40100300 */  sll        $v0, $v1, 1
/* 6A988F0 8007DBC0 21104300 */  addu       $v0, $v0, $v1
/* 6A988F4 8007DBC4 80100200 */  sll        $v0, $v0, 2
/* 6A988F8 8007DBC8 23104300 */  subu       $v0, $v0, $v1
/* 6A988FC 8007DBCC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A98900 8007DBD0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A98904 8007DBD4 C0100200 */  sll        $v0, $v0, 3
/* 6A98908 8007DBD8 21104300 */  addu       $v0, $v0, $v1
/* 6A9890C 8007DBDC 48004290 */  lbu        $v0, 0x48($v0)
/* 6A98910 8007DBE0 00000000 */  nop
/* 6A98914 8007DBE4 80004230 */  andi       $v0, $v0, 0x80
/* 6A98918 8007DBE8 43004010 */  beqz       $v0, .Llevel_31_8007DCF8
/* 6A9891C 8007DBEC 02000224 */   addiu     $v0, $zero, 0x2
/* 6A98920 8007DBF0 3EF70108 */  j          .Llevel_31_8007DCF8
/* 6A98924 8007DBF4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_31_8007DBF8:
/* 6A98928 8007DBF8 10002426 */  addiu      $a0, $s1, 0x10
/* 6A9892C 8007DBFC 69D6000C */  jal        func_800359A4
/* 6A98930 8007DC00 04000524 */   addiu     $a1, $zero, 0x4
/* 6A98934 8007DC04 3C004010 */  beqz       $v0, .Llevel_31_8007DCF8
/* 6A98938 8007DC08 03000224 */   addiu     $v0, $zero, 0x3
/* 6A9893C 8007DC0C 3EF70108 */  j          .Llevel_31_8007DCF8
/* 6A98940 8007DC10 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_31_8007DC14:
/* 6A98944 8007DC14 0000238E */  lw         $v1, 0x0($s1)
/* 6A98948 8007DC18 00000000 */  nop
/* 6A9894C 8007DC1C 40100300 */  sll        $v0, $v1, 1
/* 6A98950 8007DC20 21104300 */  addu       $v0, $v0, $v1
/* 6A98954 8007DC24 80100200 */  sll        $v0, $v0, 2
/* 6A98958 8007DC28 23104300 */  subu       $v0, $v0, $v1
/* 6A9895C 8007DC2C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A98960 8007DC30 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A98964 8007DC34 C0100200 */  sll        $v0, $v0, 3
/* 6A98968 8007DC38 21204300 */  addu       $a0, $v0, $v1
/* 6A9896C 8007DC3C 50008390 */  lbu        $v1, 0x50($a0)
/* 6A98970 8007DC40 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6A98974 8007DC44 15006214 */  bne        $v1, $v0, .Llevel_31_8007DC9C
/* 6A98978 8007DC48 00000000 */   nop
/* 6A9897C 8007DC4C 80EE000C */  jal        func_8003BA00
/* 6A98980 8007DC50 00000000 */   nop
/* 6A98984 8007DC54 0000238E */  lw         $v1, 0x0($s1)
/* 6A98988 8007DC58 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 6A9898C 8007DC5C 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 6A98990 8007DC60 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 6A98994 8007DC64 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 6A98998 8007DC68 21186200 */  addu       $v1, $v1, $v0
/* 6A9899C 8007DC6C 1F006530 */  andi       $a1, $v1, 0x1F
/* 6A989A0 8007DC70 43190300 */  sra        $v1, $v1, 5
/* 6A989A4 8007DC74 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6A989A8 8007DC78 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6A989AC 8007DC7C 80180300 */  sll        $v1, $v1, 2
/* 6A989B0 8007DC80 40110200 */  sll        $v0, $v0, 5
/* 6A989B4 8007DC84 21104400 */  addu       $v0, $v0, $a0
/* 6A989B8 8007DC88 21186200 */  addu       $v1, $v1, $v0
/* 6A989BC 8007DC8C 0000628C */  lw         $v0, 0x0($v1)
/* 6A989C0 8007DC90 0428B000 */  sllv       $a1, $s0, $a1
/* 6A989C4 8007DC94 25104500 */  or         $v0, $v0, $a1
/* 6A989C8 8007DC98 000062AC */  sw         $v0, 0x0($v1)
.Llevel_31_8007DC9C:
/* 6A989CC 8007DC9C 21204002 */  addu       $a0, $s2, $zero
/* 6A989D0 8007DCA0 01000524 */  addiu      $a1, $zero, 0x1
/* 6A989D4 8007DCA4 0C004626 */  addiu      $a2, $s2, 0xC
/* 6A989D8 8007DCA8 9ADA000C */  jal        func_80036A68
/* 6A989DC 8007DCAC 04002726 */   addiu     $a3, $s1, 0x4
/* 6A989E0 8007DCB0 11004010 */  beqz       $v0, .Llevel_31_8007DCF8
/* 6A989E4 8007DCB4 21284002 */   addu      $a1, $s2, $zero
/* 6A989E8 8007DCB8 0780023C */  lui        $v0, %hi(D_8006C654)
/* 6A989EC 8007DCBC 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 6A989F0 8007DCC0 00000000 */  nop
/* 6A989F4 8007DCC4 1A004490 */  lbu        $a0, 0x1A($v0)
/* 6A989F8 8007DCC8 D4EE000C */  jal        PlaySound
/* 6A989FC 8007DCCC 21300000 */   addu      $a2, $zero, $zero
/* 6A98A00 8007DCD0 06004004 */  bltz       $v0, .Llevel_31_8007DCEC
/* 6A98A04 8007DCD4 21204000 */   addu      $a0, $v0, $zero
/* 6A98A08 8007DCD8 49004592 */  lbu        $a1, 0x49($s2)
/* 6A98A0C 8007DCDC 00000000 */  nop
/* 6A98A10 8007DCE0 002A0500 */  sll        $a1, $a1, 8
/* 6A98A14 8007DCE4 2CF0000C */  jal        func_8003C0B0
/* 6A98A18 8007DCE8 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_31_8007DCEC:
/* 6A98A1C 8007DCEC 21204002 */  addu       $a0, $s2, $zero
.Llevel_31_8007DCF0:
/* 6A98A20 8007DCF0 C656010C */  jal        func_80055B18
/* 6A98A24 8007DCF4 00000000 */   nop
.Llevel_31_8007DCF8:
/* 6A98A28 8007DCF8 2000BF8F */  lw         $ra, 0x20($sp)
/* 6A98A2C 8007DCFC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 6A98A30 8007DD00 1800B28F */  lw         $s2, 0x18($sp)
/* 6A98A34 8007DD04 1400B18F */  lw         $s1, 0x14($sp)
/* 6A98A38 8007DD08 1000B08F */  lw         $s0, 0x10($sp)
/* 6A98A3C 8007DD0C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 6A98A40 8007DD10 0800E003 */  jr         $ra
/* 6A98A44 8007DD14 00000000 */   nop
.size func_level_31_8007D9E8, . - func_level_31_8007D9E8
