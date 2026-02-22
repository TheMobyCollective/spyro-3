.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_8007B778
/* 8B4ECA8 8007B778 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8B4ECAC 8007B77C 1800B2AF */  sw         $s2, 0x18($sp)
/* 8B4ECB0 8007B780 21908000 */  addu       $s2, $a0, $zero
/* 8B4ECB4 8007B784 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B4ECB8 8007B788 01001024 */  addiu      $s0, $zero, 0x1
/* 8B4ECBC 8007B78C 2000BFAF */  sw         $ra, 0x20($sp)
/* 8B4ECC0 8007B790 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 8B4ECC4 8007B794 1400B1AF */  sw         $s1, 0x14($sp)
/* 8B4ECC8 8007B798 48004392 */  lbu        $v1, 0x48($s2)
/* 8B4ECCC 8007B79C 0000518E */  lw         $s1, 0x0($s2)
/* 8B4ECD0 8007B7A0 58007010 */  beq        $v1, $s0, .Llevel_44_8007B904
/* 8B4ECD4 8007B7A4 02006228 */   slti      $v0, $v1, 0x2
/* 8B4ECD8 8007B7A8 05004010 */  beqz       $v0, .Llevel_44_8007B7C0
/* 8B4ECDC 8007B7AC 00000000 */   nop
/* 8B4ECE0 8007B7B0 0A006010 */  beqz       $v1, .Llevel_44_8007B7DC
/* 8B4ECE4 8007B7B4 00000000 */   nop
/* 8B4ECE8 8007B7B8 A2EE0108 */  j          .Llevel_44_8007BA88
/* 8B4ECEC 8007B7BC 00000000 */   nop
.Llevel_44_8007B7C0:
/* 8B4ECF0 8007B7C0 02000224 */  addiu      $v0, $zero, 0x2
/* 8B4ECF4 8007B7C4 70006210 */  beq        $v1, $v0, .Llevel_44_8007B988
/* 8B4ECF8 8007B7C8 03000224 */   addiu     $v0, $zero, 0x3
/* 8B4ECFC 8007B7CC 75006210 */  beq        $v1, $v0, .Llevel_44_8007B9A4
/* 8B4ED00 8007B7D0 00000000 */   nop
/* 8B4ED04 8007B7D4 A2EE0108 */  j          .Llevel_44_8007BA88
/* 8B4ED08 8007B7D8 00000000 */   nop
.Llevel_44_8007B7DC:
/* 8B4ED0C 8007B7DC 0000238E */  lw         $v1, 0x0($s1)
/* 8B4ED10 8007B7E0 00000000 */  nop
/* 8B4ED14 8007B7E4 40100300 */  sll        $v0, $v1, 1
/* 8B4ED18 8007B7E8 21104300 */  addu       $v0, $v0, $v1
/* 8B4ED1C 8007B7EC 80100200 */  sll        $v0, $v0, 2
/* 8B4ED20 8007B7F0 23104300 */  subu       $v0, $v0, $v1
/* 8B4ED24 8007B7F4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8B4ED28 8007B7F8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8B4ED2C 8007B7FC C0100200 */  sll        $v0, $v0, 3
/* 8B4ED30 8007B800 21284300 */  addu       $a1, $v0, $v1
/* 8B4ED34 8007B804 4800A290 */  lbu        $v0, 0x48($a1)
/* 8B4ED38 8007B808 00000000 */  nop
/* 8B4ED3C 8007B80C 80004230 */  andi       $v0, $v0, 0x80
/* 8B4ED40 8007B810 1B004010 */  beqz       $v0, .Llevel_44_8007B880
/* 8B4ED44 8007B814 04003026 */   addiu     $s0, $s1, 0x4
/* 8B4ED48 8007B818 21200002 */  addu       $a0, $s0, $zero
/* 8B4ED4C 8007B81C 5E3C010C */  jal        func_8004F178
/* 8B4ED50 8007B820 0C00A524 */   addiu     $a1, $a1, 0xC
/* 8B4ED54 8007B824 21204002 */  addu       $a0, $s2, $zero
/* 8B4ED58 8007B828 01000524 */  addiu      $a1, $zero, 0x1
/* 8B4ED5C 8007B82C 21300002 */  addu       $a2, $s0, $zero
/* 8B4ED60 8007B830 0C005326 */  addiu      $s3, $s2, 0xC
/* 8B4ED64 8007B834 9ADA000C */  jal        func_80036A68
/* 8B4ED68 8007B838 21386002 */   addu      $a3, $s3, $zero
/* 8B4ED6C 8007B83C 21884000 */  addu       $s1, $v0, $zero
/* 8B4ED70 8007B840 91002012 */  beqz       $s1, .Llevel_44_8007BA88
/* 8B4ED74 8007B844 0C003026 */   addiu     $s0, $s1, 0xC
/* 8B4ED78 8007B848 21200002 */  addu       $a0, $s0, $zero
/* 8B4ED7C 8007B84C 5E3C010C */  jal        func_8004F178
/* 8B4ED80 8007B850 21286002 */   addu      $a1, $s3, $zero
/* 8B4ED84 8007B854 21200002 */  addu       $a0, $s0, $zero
/* 8B4ED88 8007B858 D668000C */  jal        func_8001A358
/* 8B4ED8C 8007B85C 00040524 */   addiu     $a1, $zero, 0x400
/* 8B4ED90 8007B860 02004010 */  beqz       $v0, .Llevel_44_8007B86C
/* 8B4ED94 8007B864 00000000 */   nop
/* 8B4ED98 8007B868 140022AE */  sw         $v0, 0x14($s1)
.Llevel_44_8007B86C:
/* 8B4ED9C 8007B86C 50004292 */  lbu        $v0, 0x50($s2)
/* 8B4EDA0 8007B870 21204002 */  addu       $a0, $s2, $zero
/* 8B4EDA4 8007B874 480020A2 */  sb         $zero, 0x48($s1)
/* 8B4EDA8 8007B878 A0EE0108 */  j          .Llevel_44_8007BA80
/* 8B4EDAC 8007B87C 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_44_8007B880:
/* 8B4EDB0 8007B880 04002426 */  addiu      $a0, $s1, 0x4
/* 8B4EDB4 8007B884 0C005026 */  addiu      $s0, $s2, 0xC
/* 8B4EDB8 8007B888 5E3C010C */  jal        func_8004F178
/* 8B4EDBC 8007B88C 21280002 */   addu      $a1, $s0, $zero
/* 8B4EDC0 8007B890 21200002 */  addu       $a0, $s0, $zero
/* 8B4EDC4 8007B894 0000238E */  lw         $v1, 0x0($s1)
/* 8B4EDC8 8007B898 0780053C */  lui        $a1, %hi(D_8006C550)
/* 8B4EDCC 8007B89C 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 8B4EDD0 8007B8A0 40100300 */  sll        $v0, $v1, 1
/* 8B4EDD4 8007B8A4 21104300 */  addu       $v0, $v0, $v1
/* 8B4EDD8 8007B8A8 80100200 */  sll        $v0, $v0, 2
/* 8B4EDDC 8007B8AC 23104300 */  subu       $v0, $v0, $v1
/* 8B4EDE0 8007B8B0 C0100200 */  sll        $v0, $v0, 3
/* 8B4EDE4 8007B8B4 2128A200 */  addu       $a1, $a1, $v0
/* 8B4EDE8 8007B8B8 5E3C010C */  jal        func_8004F178
/* 8B4EDEC 8007B8BC 0C00A524 */   addiu     $a1, $a1, 0xC
/* 8B4EDF0 8007B8C0 1400228E */  lw         $v0, 0x14($s1)
/* 8B4EDF4 8007B8C4 00000000 */  nop
/* 8B4EDF8 8007B8C8 0000438C */  lw         $v1, 0x0($v0)
/* 8B4EDFC 8007B8CC 00000000 */  nop
/* 8B4EE00 8007B8D0 490043A2 */  sb         $v1, 0x49($s2)
/* 8B4EE04 8007B8D4 FF006330 */  andi       $v1, $v1, 0xFF
/* 8B4EE08 8007B8D8 00110300 */  sll        $v0, $v1, 4
/* 8B4EE0C 8007B8DC 1400248E */  lw         $a0, 0x14($s1)
/* 8B4EE10 8007B8E0 23104300 */  subu       $v0, $v0, $v1
/* 8B4EE14 8007B8E4 100022AE */  sw         $v0, 0x10($s1)
/* 8B4EE18 8007B8E8 0000828C */  lw         $v0, 0x0($a0)
/* 8B4EE1C 8007B8EC 00000000 */  nop
/* 8B4EE20 8007B8F0 01004224 */  addiu      $v0, $v0, 0x1
/* 8B4EE24 8007B8F4 000082AC */  sw         $v0, 0x0($a0)
/* 8B4EE28 8007B8F8 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4EE2C 8007B8FC A2EE0108 */  j          .Llevel_44_8007BA88
/* 8B4EE30 8007B900 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007B904:
/* 8B4EE34 8007B904 0000238E */  lw         $v1, 0x0($s1)
/* 8B4EE38 8007B908 00000000 */  nop
/* 8B4EE3C 8007B90C 40100300 */  sll        $v0, $v1, 1
/* 8B4EE40 8007B910 21104300 */  addu       $v0, $v0, $v1
/* 8B4EE44 8007B914 80100200 */  sll        $v0, $v0, 2
/* 8B4EE48 8007B918 23104300 */  subu       $v0, $v0, $v1
/* 8B4EE4C 8007B91C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8B4EE50 8007B920 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8B4EE54 8007B924 C0100200 */  sll        $v0, $v0, 3
/* 8B4EE58 8007B928 21284300 */  addu       $a1, $v0, $v1
/* 8B4EE5C 8007B92C 3600A384 */  lh         $v1, 0x36($a1)
/* 8B4EE60 8007B930 CE000224 */  addiu      $v0, $zero, 0xCE
/* 8B4EE64 8007B934 03006214 */  bne        $v1, $v0, .Llevel_44_8007B944
/* 8B4EE68 8007B938 0C004426 */   addiu     $a0, $s2, 0xC
/* 8B4EE6C 8007B93C 5E3C010C */  jal        func_8004F178
/* 8B4EE70 8007B940 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_44_8007B944:
/* 8B4EE74 8007B944 0000238E */  lw         $v1, 0x0($s1)
/* 8B4EE78 8007B948 00000000 */  nop
/* 8B4EE7C 8007B94C 40100300 */  sll        $v0, $v1, 1
/* 8B4EE80 8007B950 21104300 */  addu       $v0, $v0, $v1
/* 8B4EE84 8007B954 80100200 */  sll        $v0, $v0, 2
/* 8B4EE88 8007B958 23104300 */  subu       $v0, $v0, $v1
/* 8B4EE8C 8007B95C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8B4EE90 8007B960 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8B4EE94 8007B964 C0100200 */  sll        $v0, $v0, 3
/* 8B4EE98 8007B968 21104300 */  addu       $v0, $v0, $v1
/* 8B4EE9C 8007B96C 48004290 */  lbu        $v0, 0x48($v0)
/* 8B4EEA0 8007B970 00000000 */  nop
/* 8B4EEA4 8007B974 80004230 */  andi       $v0, $v0, 0x80
/* 8B4EEA8 8007B978 43004010 */  beqz       $v0, .Llevel_44_8007BA88
/* 8B4EEAC 8007B97C 02000224 */   addiu     $v0, $zero, 0x2
/* 8B4EEB0 8007B980 A2EE0108 */  j          .Llevel_44_8007BA88
/* 8B4EEB4 8007B984 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007B988:
/* 8B4EEB8 8007B988 10002426 */  addiu      $a0, $s1, 0x10
/* 8B4EEBC 8007B98C 69D6000C */  jal        func_800359A4
/* 8B4EEC0 8007B990 04000524 */   addiu     $a1, $zero, 0x4
/* 8B4EEC4 8007B994 3C004010 */  beqz       $v0, .Llevel_44_8007BA88
/* 8B4EEC8 8007B998 03000224 */   addiu     $v0, $zero, 0x3
/* 8B4EECC 8007B99C A2EE0108 */  j          .Llevel_44_8007BA88
/* 8B4EED0 8007B9A0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007B9A4:
/* 8B4EED4 8007B9A4 0000238E */  lw         $v1, 0x0($s1)
/* 8B4EED8 8007B9A8 00000000 */  nop
/* 8B4EEDC 8007B9AC 40100300 */  sll        $v0, $v1, 1
/* 8B4EEE0 8007B9B0 21104300 */  addu       $v0, $v0, $v1
/* 8B4EEE4 8007B9B4 80100200 */  sll        $v0, $v0, 2
/* 8B4EEE8 8007B9B8 23104300 */  subu       $v0, $v0, $v1
/* 8B4EEEC 8007B9BC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8B4EEF0 8007B9C0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8B4EEF4 8007B9C4 C0100200 */  sll        $v0, $v0, 3
/* 8B4EEF8 8007B9C8 21204300 */  addu       $a0, $v0, $v1
/* 8B4EEFC 8007B9CC 50008390 */  lbu        $v1, 0x50($a0)
/* 8B4EF00 8007B9D0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B4EF04 8007B9D4 15006214 */  bne        $v1, $v0, .Llevel_44_8007BA2C
/* 8B4EF08 8007B9D8 00000000 */   nop
/* 8B4EF0C 8007B9DC 80EE000C */  jal        func_8003BA00
/* 8B4EF10 8007B9E0 00000000 */   nop
/* 8B4EF14 8007B9E4 0000238E */  lw         $v1, 0x0($s1)
/* 8B4EF18 8007B9E8 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 8B4EF1C 8007B9EC 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 8B4EF20 8007B9F0 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 8B4EF24 8007B9F4 B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 8B4EF28 8007B9F8 21186200 */  addu       $v1, $v1, $v0
/* 8B4EF2C 8007B9FC 1F006530 */  andi       $a1, $v1, 0x1F
/* 8B4EF30 8007BA00 43190300 */  sra        $v1, $v1, 5
/* 8B4EF34 8007BA04 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 8B4EF38 8007BA08 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 8B4EF3C 8007BA0C 80180300 */  sll        $v1, $v1, 2
/* 8B4EF40 8007BA10 40110200 */  sll        $v0, $v0, 5
/* 8B4EF44 8007BA14 21104400 */  addu       $v0, $v0, $a0
/* 8B4EF48 8007BA18 21186200 */  addu       $v1, $v1, $v0
/* 8B4EF4C 8007BA1C 0000628C */  lw         $v0, 0x0($v1)
/* 8B4EF50 8007BA20 0428B000 */  sllv       $a1, $s0, $a1
/* 8B4EF54 8007BA24 25104500 */  or         $v0, $v0, $a1
/* 8B4EF58 8007BA28 000062AC */  sw         $v0, 0x0($v1)
.Llevel_44_8007BA2C:
/* 8B4EF5C 8007BA2C 21204002 */  addu       $a0, $s2, $zero
/* 8B4EF60 8007BA30 01000524 */  addiu      $a1, $zero, 0x1
/* 8B4EF64 8007BA34 0C004626 */  addiu      $a2, $s2, 0xC
/* 8B4EF68 8007BA38 9ADA000C */  jal        func_80036A68
/* 8B4EF6C 8007BA3C 04002726 */   addiu     $a3, $s1, 0x4
/* 8B4EF70 8007BA40 11004010 */  beqz       $v0, .Llevel_44_8007BA88
/* 8B4EF74 8007BA44 21284002 */   addu      $a1, $s2, $zero
/* 8B4EF78 8007BA48 0780023C */  lui        $v0, %hi(D_8006C654)
/* 8B4EF7C 8007BA4C 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 8B4EF80 8007BA50 00000000 */  nop
/* 8B4EF84 8007BA54 1A004490 */  lbu        $a0, 0x1A($v0)
/* 8B4EF88 8007BA58 D4EE000C */  jal        PlaySound
/* 8B4EF8C 8007BA5C 21300000 */   addu      $a2, $zero, $zero
/* 8B4EF90 8007BA60 06004004 */  bltz       $v0, .Llevel_44_8007BA7C
/* 8B4EF94 8007BA64 21204000 */   addu      $a0, $v0, $zero
/* 8B4EF98 8007BA68 49004592 */  lbu        $a1, 0x49($s2)
/* 8B4EF9C 8007BA6C 00000000 */  nop
/* 8B4EFA0 8007BA70 002A0500 */  sll        $a1, $a1, 8
/* 8B4EFA4 8007BA74 2CF0000C */  jal        func_8003C0B0
/* 8B4EFA8 8007BA78 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_44_8007BA7C:
/* 8B4EFAC 8007BA7C 21204002 */  addu       $a0, $s2, $zero
.Llevel_44_8007BA80:
/* 8B4EFB0 8007BA80 C656010C */  jal        func_80055B18
/* 8B4EFB4 8007BA84 00000000 */   nop
.Llevel_44_8007BA88:
/* 8B4EFB8 8007BA88 2000BF8F */  lw         $ra, 0x20($sp)
/* 8B4EFBC 8007BA8C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 8B4EFC0 8007BA90 1800B28F */  lw         $s2, 0x18($sp)
/* 8B4EFC4 8007BA94 1400B18F */  lw         $s1, 0x14($sp)
/* 8B4EFC8 8007BA98 1000B08F */  lw         $s0, 0x10($sp)
/* 8B4EFCC 8007BA9C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8B4EFD0 8007BAA0 0800E003 */  jr         $ra
/* 8B4EFD4 8007BAA4 00000000 */   nop
.size func_level_44_8007B778, . - func_level_44_8007B778
