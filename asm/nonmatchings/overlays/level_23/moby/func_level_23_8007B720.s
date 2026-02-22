.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8007B720
/* 5A97C50 8007B720 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5A97C54 8007B724 1800B2AF */  sw         $s2, 0x18($sp)
/* 5A97C58 8007B728 21908000 */  addu       $s2, $a0, $zero
/* 5A97C5C 8007B72C 1000B0AF */  sw         $s0, 0x10($sp)
/* 5A97C60 8007B730 01001024 */  addiu      $s0, $zero, 0x1
/* 5A97C64 8007B734 2000BFAF */  sw         $ra, 0x20($sp)
/* 5A97C68 8007B738 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 5A97C6C 8007B73C 1400B1AF */  sw         $s1, 0x14($sp)
/* 5A97C70 8007B740 48004392 */  lbu        $v1, 0x48($s2)
/* 5A97C74 8007B744 0000518E */  lw         $s1, 0x0($s2)
/* 5A97C78 8007B748 58007010 */  beq        $v1, $s0, .Llevel_23_8007B8AC
/* 5A97C7C 8007B74C 02006228 */   slti      $v0, $v1, 0x2
/* 5A97C80 8007B750 05004010 */  beqz       $v0, .Llevel_23_8007B768
/* 5A97C84 8007B754 00000000 */   nop
/* 5A97C88 8007B758 0A006010 */  beqz       $v1, .Llevel_23_8007B784
/* 5A97C8C 8007B75C 00000000 */   nop
/* 5A97C90 8007B760 8CEE0108 */  j          .Llevel_23_8007BA30
/* 5A97C94 8007B764 00000000 */   nop
.Llevel_23_8007B768:
/* 5A97C98 8007B768 02000224 */  addiu      $v0, $zero, 0x2
/* 5A97C9C 8007B76C 70006210 */  beq        $v1, $v0, .Llevel_23_8007B930
/* 5A97CA0 8007B770 03000224 */   addiu     $v0, $zero, 0x3
/* 5A97CA4 8007B774 75006210 */  beq        $v1, $v0, .Llevel_23_8007B94C
/* 5A97CA8 8007B778 00000000 */   nop
/* 5A97CAC 8007B77C 8CEE0108 */  j          .Llevel_23_8007BA30
/* 5A97CB0 8007B780 00000000 */   nop
.Llevel_23_8007B784:
/* 5A97CB4 8007B784 0000238E */  lw         $v1, 0x0($s1)
/* 5A97CB8 8007B788 00000000 */  nop
/* 5A97CBC 8007B78C 40100300 */  sll        $v0, $v1, 1
/* 5A97CC0 8007B790 21104300 */  addu       $v0, $v0, $v1
/* 5A97CC4 8007B794 80100200 */  sll        $v0, $v0, 2
/* 5A97CC8 8007B798 23104300 */  subu       $v0, $v0, $v1
/* 5A97CCC 8007B79C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5A97CD0 8007B7A0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5A97CD4 8007B7A4 C0100200 */  sll        $v0, $v0, 3
/* 5A97CD8 8007B7A8 21284300 */  addu       $a1, $v0, $v1
/* 5A97CDC 8007B7AC 4800A290 */  lbu        $v0, 0x48($a1)
/* 5A97CE0 8007B7B0 00000000 */  nop
/* 5A97CE4 8007B7B4 80004230 */  andi       $v0, $v0, 0x80
/* 5A97CE8 8007B7B8 1B004010 */  beqz       $v0, .Llevel_23_8007B828
/* 5A97CEC 8007B7BC 04003026 */   addiu     $s0, $s1, 0x4
/* 5A97CF0 8007B7C0 21200002 */  addu       $a0, $s0, $zero
/* 5A97CF4 8007B7C4 5E3C010C */  jal        func_8004F178
/* 5A97CF8 8007B7C8 0C00A524 */   addiu     $a1, $a1, 0xC
/* 5A97CFC 8007B7CC 21204002 */  addu       $a0, $s2, $zero
/* 5A97D00 8007B7D0 01000524 */  addiu      $a1, $zero, 0x1
/* 5A97D04 8007B7D4 21300002 */  addu       $a2, $s0, $zero
/* 5A97D08 8007B7D8 0C005326 */  addiu      $s3, $s2, 0xC
/* 5A97D0C 8007B7DC 9ADA000C */  jal        func_80036A68
/* 5A97D10 8007B7E0 21386002 */   addu      $a3, $s3, $zero
/* 5A97D14 8007B7E4 21884000 */  addu       $s1, $v0, $zero
/* 5A97D18 8007B7E8 91002012 */  beqz       $s1, .Llevel_23_8007BA30
/* 5A97D1C 8007B7EC 0C003026 */   addiu     $s0, $s1, 0xC
/* 5A97D20 8007B7F0 21200002 */  addu       $a0, $s0, $zero
/* 5A97D24 8007B7F4 5E3C010C */  jal        func_8004F178
/* 5A97D28 8007B7F8 21286002 */   addu      $a1, $s3, $zero
/* 5A97D2C 8007B7FC 21200002 */  addu       $a0, $s0, $zero
/* 5A97D30 8007B800 D668000C */  jal        func_8001A358
/* 5A97D34 8007B804 00040524 */   addiu     $a1, $zero, 0x400
/* 5A97D38 8007B808 02004010 */  beqz       $v0, .Llevel_23_8007B814
/* 5A97D3C 8007B80C 00000000 */   nop
/* 5A97D40 8007B810 140022AE */  sw         $v0, 0x14($s1)
.Llevel_23_8007B814:
/* 5A97D44 8007B814 50004292 */  lbu        $v0, 0x50($s2)
/* 5A97D48 8007B818 21204002 */  addu       $a0, $s2, $zero
/* 5A97D4C 8007B81C 480020A2 */  sb         $zero, 0x48($s1)
/* 5A97D50 8007B820 8AEE0108 */  j          .Llevel_23_8007BA28
/* 5A97D54 8007B824 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_23_8007B828:
/* 5A97D58 8007B828 04002426 */  addiu      $a0, $s1, 0x4
/* 5A97D5C 8007B82C 0C005026 */  addiu      $s0, $s2, 0xC
/* 5A97D60 8007B830 5E3C010C */  jal        func_8004F178
/* 5A97D64 8007B834 21280002 */   addu      $a1, $s0, $zero
/* 5A97D68 8007B838 21200002 */  addu       $a0, $s0, $zero
/* 5A97D6C 8007B83C 0000238E */  lw         $v1, 0x0($s1)
/* 5A97D70 8007B840 0780053C */  lui        $a1, %hi(D_8006C550)
/* 5A97D74 8007B844 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 5A97D78 8007B848 40100300 */  sll        $v0, $v1, 1
/* 5A97D7C 8007B84C 21104300 */  addu       $v0, $v0, $v1
/* 5A97D80 8007B850 80100200 */  sll        $v0, $v0, 2
/* 5A97D84 8007B854 23104300 */  subu       $v0, $v0, $v1
/* 5A97D88 8007B858 C0100200 */  sll        $v0, $v0, 3
/* 5A97D8C 8007B85C 2128A200 */  addu       $a1, $a1, $v0
/* 5A97D90 8007B860 5E3C010C */  jal        func_8004F178
/* 5A97D94 8007B864 0C00A524 */   addiu     $a1, $a1, 0xC
/* 5A97D98 8007B868 1400228E */  lw         $v0, 0x14($s1)
/* 5A97D9C 8007B86C 00000000 */  nop
/* 5A97DA0 8007B870 0000438C */  lw         $v1, 0x0($v0)
/* 5A97DA4 8007B874 00000000 */  nop
/* 5A97DA8 8007B878 490043A2 */  sb         $v1, 0x49($s2)
/* 5A97DAC 8007B87C FF006330 */  andi       $v1, $v1, 0xFF
/* 5A97DB0 8007B880 00110300 */  sll        $v0, $v1, 4
/* 5A97DB4 8007B884 1400248E */  lw         $a0, 0x14($s1)
/* 5A97DB8 8007B888 23104300 */  subu       $v0, $v0, $v1
/* 5A97DBC 8007B88C 100022AE */  sw         $v0, 0x10($s1)
/* 5A97DC0 8007B890 0000828C */  lw         $v0, 0x0($a0)
/* 5A97DC4 8007B894 00000000 */  nop
/* 5A97DC8 8007B898 01004224 */  addiu      $v0, $v0, 0x1
/* 5A97DCC 8007B89C 000082AC */  sw         $v0, 0x0($a0)
/* 5A97DD0 8007B8A0 01000224 */  addiu      $v0, $zero, 0x1
/* 5A97DD4 8007B8A4 8CEE0108 */  j          .Llevel_23_8007BA30
/* 5A97DD8 8007B8A8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_23_8007B8AC:
/* 5A97DDC 8007B8AC 0000238E */  lw         $v1, 0x0($s1)
/* 5A97DE0 8007B8B0 00000000 */  nop
/* 5A97DE4 8007B8B4 40100300 */  sll        $v0, $v1, 1
/* 5A97DE8 8007B8B8 21104300 */  addu       $v0, $v0, $v1
/* 5A97DEC 8007B8BC 80100200 */  sll        $v0, $v0, 2
/* 5A97DF0 8007B8C0 23104300 */  subu       $v0, $v0, $v1
/* 5A97DF4 8007B8C4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5A97DF8 8007B8C8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5A97DFC 8007B8CC C0100200 */  sll        $v0, $v0, 3
/* 5A97E00 8007B8D0 21284300 */  addu       $a1, $v0, $v1
/* 5A97E04 8007B8D4 3600A384 */  lh         $v1, 0x36($a1)
/* 5A97E08 8007B8D8 CE000224 */  addiu      $v0, $zero, 0xCE
/* 5A97E0C 8007B8DC 03006214 */  bne        $v1, $v0, .Llevel_23_8007B8EC
/* 5A97E10 8007B8E0 0C004426 */   addiu     $a0, $s2, 0xC
/* 5A97E14 8007B8E4 5E3C010C */  jal        func_8004F178
/* 5A97E18 8007B8E8 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_23_8007B8EC:
/* 5A97E1C 8007B8EC 0000238E */  lw         $v1, 0x0($s1)
/* 5A97E20 8007B8F0 00000000 */  nop
/* 5A97E24 8007B8F4 40100300 */  sll        $v0, $v1, 1
/* 5A97E28 8007B8F8 21104300 */  addu       $v0, $v0, $v1
/* 5A97E2C 8007B8FC 80100200 */  sll        $v0, $v0, 2
/* 5A97E30 8007B900 23104300 */  subu       $v0, $v0, $v1
/* 5A97E34 8007B904 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5A97E38 8007B908 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5A97E3C 8007B90C C0100200 */  sll        $v0, $v0, 3
/* 5A97E40 8007B910 21104300 */  addu       $v0, $v0, $v1
/* 5A97E44 8007B914 48004290 */  lbu        $v0, 0x48($v0)
/* 5A97E48 8007B918 00000000 */  nop
/* 5A97E4C 8007B91C 80004230 */  andi       $v0, $v0, 0x80
/* 5A97E50 8007B920 43004010 */  beqz       $v0, .Llevel_23_8007BA30
/* 5A97E54 8007B924 02000224 */   addiu     $v0, $zero, 0x2
/* 5A97E58 8007B928 8CEE0108 */  j          .Llevel_23_8007BA30
/* 5A97E5C 8007B92C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_23_8007B930:
/* 5A97E60 8007B930 10002426 */  addiu      $a0, $s1, 0x10
/* 5A97E64 8007B934 69D6000C */  jal        func_800359A4
/* 5A97E68 8007B938 04000524 */   addiu     $a1, $zero, 0x4
/* 5A97E6C 8007B93C 3C004010 */  beqz       $v0, .Llevel_23_8007BA30
/* 5A97E70 8007B940 03000224 */   addiu     $v0, $zero, 0x3
/* 5A97E74 8007B944 8CEE0108 */  j          .Llevel_23_8007BA30
/* 5A97E78 8007B948 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_23_8007B94C:
/* 5A97E7C 8007B94C 0000238E */  lw         $v1, 0x0($s1)
/* 5A97E80 8007B950 00000000 */  nop
/* 5A97E84 8007B954 40100300 */  sll        $v0, $v1, 1
/* 5A97E88 8007B958 21104300 */  addu       $v0, $v0, $v1
/* 5A97E8C 8007B95C 80100200 */  sll        $v0, $v0, 2
/* 5A97E90 8007B960 23104300 */  subu       $v0, $v0, $v1
/* 5A97E94 8007B964 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5A97E98 8007B968 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5A97E9C 8007B96C C0100200 */  sll        $v0, $v0, 3
/* 5A97EA0 8007B970 21204300 */  addu       $a0, $v0, $v1
/* 5A97EA4 8007B974 50008390 */  lbu        $v1, 0x50($a0)
/* 5A97EA8 8007B978 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5A97EAC 8007B97C 15006214 */  bne        $v1, $v0, .Llevel_23_8007B9D4
/* 5A97EB0 8007B980 00000000 */   nop
/* 5A97EB4 8007B984 80EE000C */  jal        func_8003BA00
/* 5A97EB8 8007B988 00000000 */   nop
/* 5A97EBC 8007B98C 0000238E */  lw         $v1, 0x0($s1)
/* 5A97EC0 8007B990 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 5A97EC4 8007B994 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 5A97EC8 8007B998 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 5A97ECC 8007B99C B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 5A97ED0 8007B9A0 21186200 */  addu       $v1, $v1, $v0
/* 5A97ED4 8007B9A4 1F006530 */  andi       $a1, $v1, 0x1F
/* 5A97ED8 8007B9A8 43190300 */  sra        $v1, $v1, 5
/* 5A97EDC 8007B9AC 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5A97EE0 8007B9B0 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5A97EE4 8007B9B4 80180300 */  sll        $v1, $v1, 2
/* 5A97EE8 8007B9B8 40110200 */  sll        $v0, $v0, 5
/* 5A97EEC 8007B9BC 21104400 */  addu       $v0, $v0, $a0
/* 5A97EF0 8007B9C0 21186200 */  addu       $v1, $v1, $v0
/* 5A97EF4 8007B9C4 0000628C */  lw         $v0, 0x0($v1)
/* 5A97EF8 8007B9C8 0428B000 */  sllv       $a1, $s0, $a1
/* 5A97EFC 8007B9CC 25104500 */  or         $v0, $v0, $a1
/* 5A97F00 8007B9D0 000062AC */  sw         $v0, 0x0($v1)
.Llevel_23_8007B9D4:
/* 5A97F04 8007B9D4 21204002 */  addu       $a0, $s2, $zero
/* 5A97F08 8007B9D8 01000524 */  addiu      $a1, $zero, 0x1
/* 5A97F0C 8007B9DC 0C004626 */  addiu      $a2, $s2, 0xC
/* 5A97F10 8007B9E0 9ADA000C */  jal        func_80036A68
/* 5A97F14 8007B9E4 04002726 */   addiu     $a3, $s1, 0x4
/* 5A97F18 8007B9E8 11004010 */  beqz       $v0, .Llevel_23_8007BA30
/* 5A97F1C 8007B9EC 21284002 */   addu      $a1, $s2, $zero
/* 5A97F20 8007B9F0 0780023C */  lui        $v0, %hi(D_8006C654)
/* 5A97F24 8007B9F4 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 5A97F28 8007B9F8 00000000 */  nop
/* 5A97F2C 8007B9FC 1A004490 */  lbu        $a0, 0x1A($v0)
/* 5A97F30 8007BA00 D4EE000C */  jal        PlaySound
/* 5A97F34 8007BA04 21300000 */   addu      $a2, $zero, $zero
/* 5A97F38 8007BA08 06004004 */  bltz       $v0, .Llevel_23_8007BA24
/* 5A97F3C 8007BA0C 21204000 */   addu      $a0, $v0, $zero
/* 5A97F40 8007BA10 49004592 */  lbu        $a1, 0x49($s2)
/* 5A97F44 8007BA14 00000000 */  nop
/* 5A97F48 8007BA18 002A0500 */  sll        $a1, $a1, 8
/* 5A97F4C 8007BA1C 2CF0000C */  jal        func_8003C0B0
/* 5A97F50 8007BA20 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_23_8007BA24:
/* 5A97F54 8007BA24 21204002 */  addu       $a0, $s2, $zero
.Llevel_23_8007BA28:
/* 5A97F58 8007BA28 C656010C */  jal        func_80055B18
/* 5A97F5C 8007BA2C 00000000 */   nop
.Llevel_23_8007BA30:
/* 5A97F60 8007BA30 2000BF8F */  lw         $ra, 0x20($sp)
/* 5A97F64 8007BA34 1C00B38F */  lw         $s3, 0x1C($sp)
/* 5A97F68 8007BA38 1800B28F */  lw         $s2, 0x18($sp)
/* 5A97F6C 8007BA3C 1400B18F */  lw         $s1, 0x14($sp)
/* 5A97F70 8007BA40 1000B08F */  lw         $s0, 0x10($sp)
/* 5A97F74 8007BA44 2800BD27 */  addiu      $sp, $sp, 0x28
/* 5A97F78 8007BA48 0800E003 */  jr         $ra
/* 5A97F7C 8007BA4C 00000000 */   nop
.size func_level_23_8007B720, . - func_level_23_8007B720
