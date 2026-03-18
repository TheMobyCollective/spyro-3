.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_22_8008EB28
/* 577E858 8008EB28 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 577E85C 8008EB2C 3400B1AF */  sw         $s1, 0x34($sp)
/* 577E860 8008EB30 21888000 */  addu       $s1, $a0, $zero
/* 577E864 8008EB34 4800B6AF */  sw         $s6, 0x48($sp)
/* 577E868 8008EB38 21B0A000 */  addu       $s6, $a1, $zero
/* 577E86C 8008EB3C 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 577E870 8008EB40 4400B5AF */  sw         $s5, 0x44($sp)
/* 577E874 8008EB44 4000B4AF */  sw         $s4, 0x40($sp)
/* 577E878 8008EB48 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 577E87C 8008EB4C 3800B2AF */  sw         $s2, 0x38($sp)
/* 577E880 8008EB50 9F56010C */  jal        func_80055A7C
/* 577E884 8008EB54 3000B0AF */   sw        $s0, 0x30($sp)
/* 577E888 8008EB58 21A04000 */  addu       $s4, $v0, $zero
/* 577E88C 8008EB5C 03008016 */  bnez       $s4, .Llevel_22_8008EB6C
/* 577E890 8008EB60 21208002 */   addu      $a0, $s4, $zero
/* 577E894 8008EB64 3D3E0208 */  j          .Llevel_22_8008F8F4
/* 577E898 8008EB68 21100000 */   addu      $v0, $zero, $zero
.Llevel_22_8008EB6C:
/* 577E89C 8008EB6C 21280000 */  addu       $a1, $zero, $zero
/* 577E8A0 8008EB70 0000908E */  lw         $s0, 0x0($s4)
/* 577E8A4 8008EB74 E439010C */  jal        func_8004E790
/* 577E8A8 8008EB78 58000624 */   addiu     $a2, $zero, 0x58
/* 577E8AC 8008EB7C 21280000 */  addu       $a1, $zero, $zero
/* 577E8B0 8008EB80 18000624 */  addiu      $a2, $zero, 0x18
/* 577E8B4 8008EB84 21200002 */  addu       $a0, $s0, $zero
/* 577E8B8 8008EB88 E439010C */  jal        func_8004E790
/* 577E8BC 8008EB8C 000084AE */   sw        $a0, 0x0($s4)
/* 577E8C0 8008EB90 1600C012 */  beqz       $s6, .Llevel_22_8008EBEC
/* 577E8C4 8008EB94 360091A6 */   sh        $s1, 0x36($s4)
/* 577E8C8 8008EB98 0780043C */  lui        $a0, %hi(D_8006C550)
/* 577E8CC 8008EB9C 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 577E8D0 8008EBA0 00000000 */  nop
/* 577E8D4 8008EBA4 2320C402 */  subu       $a0, $s6, $a0
/* 577E8D8 8008EBA8 40190400 */  sll        $v1, $a0, 5
/* 577E8DC 8008EBAC 23186400 */  subu       $v1, $v1, $a0
/* 577E8E0 8008EBB0 40190300 */  sll        $v1, $v1, 5
/* 577E8E4 8008EBB4 21186400 */  addu       $v1, $v1, $a0
/* 577E8E8 8008EBB8 C0100300 */  sll        $v0, $v1, 3
/* 577E8EC 8008EBBC 21186200 */  addu       $v1, $v1, $v0
/* 577E8F0 8008EBC0 C0130300 */  sll        $v0, $v1, 15
/* 577E8F4 8008EBC4 23104300 */  subu       $v0, $v0, $v1
/* 577E8F8 8008EBC8 80100200 */  sll        $v0, $v0, 2
/* 577E8FC 8008EBCC 21104400 */  addu       $v0, $v0, $a0
/* 577E900 8008EBD0 23100200 */  negu       $v0, $v0
/* 577E904 8008EBD4 C3180200 */  sra        $v1, $v0, 3
/* 577E908 8008EBD8 0001622C */  sltiu      $v0, $v1, 0x100
/* 577E90C 8008EBDC 04004010 */  beqz       $v0, .Llevel_22_8008EBF0
/* 577E910 8008EBE0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 577E914 8008EBE4 FD3A0208 */  j          .Llevel_22_8008EBF4
/* 577E918 8008EBE8 3A0083A2 */   sb        $v1, 0x3A($s4)
.Llevel_22_8008EBEC:
/* 577E91C 8008EBEC FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_22_8008EBF0:
/* 577E920 8008EBF0 3A0082A2 */  sb         $v0, 0x3A($s4)
.Llevel_22_8008EBF4:
/* 577E924 8008EBF4 FBD3000C */  jal        func_80034FEC
/* 577E928 8008EBF8 21208002 */   addu      $a0, $s4, $zero
/* 577E92C 8008EBFC 04010224 */  addiu      $v0, $zero, 0x104
/* 577E930 8008EC00 F0012212 */  beq        $s1, $v0, .Llevel_22_8008F3C4
/* 577E934 8008EC04 0501222A */   slti      $v0, $s1, 0x105
/* 577E938 8008EC08 22004010 */  beqz       $v0, .Llevel_22_8008EC94
/* 577E93C 8008EC0C 5A000224 */   addiu     $v0, $zero, 0x5A
/* 577E940 8008EC10 1B012212 */  beq        $s1, $v0, .Llevel_22_8008F080
/* 577E944 8008EC14 5B00222A */   slti      $v0, $s1, 0x5B
/* 577E948 8008EC18 0E004010 */  beqz       $v0, .Llevel_22_8008EC54
/* 577E94C 8008EC1C 10000224 */   addiu     $v0, $zero, 0x10
/* 577E950 8008EC20 5C012212 */  beq        $s1, $v0, .Llevel_22_8008F194
/* 577E954 8008EC24 1100222A */   slti      $v0, $s1, 0x11
/* 577E958 8008EC28 05004010 */  beqz       $v0, .Llevel_22_8008EC40
/* 577E95C 8008EC2C 01000224 */   addiu     $v0, $zero, 0x1
/* 577E960 8008EC30 37002212 */  beq        $s1, $v0, .Llevel_22_8008ED10
/* 577E964 8008EC34 00000000 */   nop
/* 577E968 8008EC38 313E0208 */  j          .Llevel_22_8008F8C4
/* 577E96C 8008EC3C 00000000 */   nop
.Llevel_22_8008EC40:
/* 577E970 8008EC40 1D000224 */  addiu      $v0, $zero, 0x1D
/* 577E974 8008EC44 39002212 */  beq        $s1, $v0, .Llevel_22_8008ED2C
/* 577E978 8008EC48 0C008426 */   addiu     $a0, $s4, 0xC
/* 577E97C 8008EC4C 313E0208 */  j          .Llevel_22_8008F8C4
/* 577E980 8008EC50 00000000 */   nop
.Llevel_22_8008EC54:
/* 577E984 8008EC54 84000224 */  addiu      $v0, $zero, 0x84
/* 577E988 8008EC58 BD012212 */  beq        $s1, $v0, .Llevel_22_8008F350
/* 577E98C 8008EC5C 8500222A */   slti      $v0, $s1, 0x85
/* 577E990 8008EC60 05004010 */  beqz       $v0, .Llevel_22_8008EC78
/* 577E994 8008EC64 78000224 */   addiu     $v0, $zero, 0x78
/* 577E998 8008EC68 7D012212 */  beq        $s1, $v0, .Llevel_22_8008F260
/* 577E99C 8008EC6C 00000000 */   nop
/* 577E9A0 8008EC70 313E0208 */  j          .Llevel_22_8008F8C4
/* 577E9A4 8008EC74 00000000 */   nop
.Llevel_22_8008EC78:
/* 577E9A8 8008EC78 AA000224 */  addiu      $v0, $zero, 0xAA
/* 577E9AC 8008EC7C C3012212 */  beq        $s1, $v0, .Llevel_22_8008F38C
/* 577E9B0 8008EC80 D3000224 */   addiu     $v0, $zero, 0xD3
/* 577E9B4 8008EC84 44012212 */  beq        $s1, $v0, .Llevel_22_8008F198
/* 577E9B8 8008EC88 10000324 */   addiu     $v1, $zero, 0x10
/* 577E9BC 8008EC8C 313E0208 */  j          .Llevel_22_8008F8C4
/* 577E9C0 8008EC90 00000000 */   nop
.Llevel_22_8008EC94:
/* 577E9C4 8008EC94 46010224 */  addiu      $v0, $zero, 0x146
/* 577E9C8 8008EC98 C2022212 */  beq        $s1, $v0, .Llevel_22_8008F7A4
/* 577E9CC 8008EC9C 4701222A */   slti      $v0, $s1, 0x147
/* 577E9D0 8008ECA0 0B004010 */  beqz       $v0, .Llevel_22_8008ECD0
/* 577E9D4 8008ECA4 10010224 */   addiu     $v0, $zero, 0x110
/* 577E9D8 8008ECA8 DB012212 */  beq        $s1, $v0, .Llevel_22_8008F418
/* 577E9DC 8008ECAC 1001222A */   slti      $v0, $s1, 0x110
/* 577E9E0 8008ECB0 04034014 */  bnez       $v0, .Llevel_22_8008F8C4
/* 577E9E4 8008ECB4 3501222A */   slti      $v0, $s1, 0x135
/* 577E9E8 8008ECB8 02034010 */  beqz       $v0, .Llevel_22_8008F8C4
/* 577E9EC 8008ECBC 3201222A */   slti      $v0, $s1, 0x132
/* 577E9F0 8008ECC0 00034014 */  bnez       $v0, .Llevel_22_8008F8C4
/* 577E9F4 8008ECC4 0C008426 */   addiu     $a0, $s4, 0xC
/* 577E9F8 8008ECC8 243D0208 */  j          .Llevel_22_8008F490
/* 577E9FC 8008ECCC 00000000 */   nop
.Llevel_22_8008ECD0:
/* 577EA00 8008ECD0 38020224 */  addiu      $v0, $zero, 0x238
/* 577EA04 8008ECD4 ED012212 */  beq        $s1, $v0, .Llevel_22_8008F48C
/* 577EA08 8008ECD8 3902222A */   slti      $v0, $s1, 0x239
/* 577EA0C 8008ECDC 05004010 */  beqz       $v0, .Llevel_22_8008ECF4
/* 577EA10 8008ECE0 FC010224 */   addiu     $v0, $zero, 0x1FC
/* 577EA14 8008ECE4 F2022212 */  beq        $s1, $v0, .Llevel_22_8008F8B0
/* 577EA18 8008ECE8 0C008426 */   addiu     $a0, $s4, 0xC
/* 577EA1C 8008ECEC 313E0208 */  j          .Llevel_22_8008F8C4
/* 577EA20 8008ECF0 00000000 */   nop
.Llevel_22_8008ECF4:
/* 577EA24 8008ECF4 7802222A */  slti       $v0, $s1, 0x278
/* 577EA28 8008ECF8 F2024010 */  beqz       $v0, .Llevel_22_8008F8C4
/* 577EA2C 8008ECFC 7602222A */   slti      $v0, $s1, 0x276
/* 577EA30 8008ED00 F0024014 */  bnez       $v0, .Llevel_22_8008F8C4
/* 577EA34 8008ED04 0C008426 */   addiu     $a0, $s4, 0xC
/* 577EA38 8008ED08 243D0208 */  j          .Llevel_22_8008F490
/* 577EA3C 8008ED0C 00000000 */   nop
.Llevel_22_8008ED10:
/* 577EA40 8008ED10 0957010C */  jal        func_80055C24
/* 577EA44 8008ED14 21208002 */   addu      $a0, $s4, $zero
/* 577EA48 8008ED18 18000224 */  addiu      $v0, $zero, 0x18
/* 577EA4C 8008ED1C 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 577EA50 8008ED20 40000224 */  addiu      $v0, $zero, 0x40
/* 577EA54 8008ED24 033D0208 */  j          .Llevel_22_8008F40C
/* 577EA58 8008ED28 4A0082A2 */   sb        $v0, 0x4A($s4)
.Llevel_22_8008ED2C:
/* 577EA5C 8008ED2C 0C00C526 */  addiu      $a1, $s6, 0xC
/* 577EA60 8008ED30 0000958E */  lw         $s5, 0x0($s4)
/* 577EA64 8008ED34 20000224 */  addiu      $v0, $zero, 0x20
/* 577EA68 8008ED38 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 577EA6C 8008ED3C 5E3C010C */  jal        func_8004F178
/* 577EA70 8008ED40 4E0082A2 */   sb        $v0, 0x4E($s4)
/* 577EA74 8008ED44 0957010C */  jal        func_80055C24
/* 577EA78 8008ED48 21208002 */   addu      $a0, $s4, $zero
/* 577EA7C 8008ED4C 2C010424 */  addiu      $a0, $zero, 0x12C
/* 577EA80 8008ED50 DBD8000C */  jal        func_8003636C
/* 577EA84 8008ED54 34080524 */   addiu     $a1, $zero, 0x834
/* 577EA88 8008ED58 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 577EA8C 8008ED5C DC050524 */  addiu      $a1, $zero, 0x5DC
/* 577EA90 8008ED60 DBD8000C */  jal        func_8003636C
/* 577EA94 8008ED64 21904000 */   addu      $s2, $v0, $zero
/* 577EA98 8008ED68 4600D192 */  lbu        $s1, 0x46($s6)
/* 577EA9C 8008ED6C 21204002 */  addu       $a0, $s2, $zero
/* 577EAA0 8008ED70 21882202 */  addu       $s1, $s1, $v0
/* 577EAA4 8008ED74 8B3A010C */  jal        func_8004EA2C
/* 577EAA8 8008ED78 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 577EAAC 8008ED7C 21202002 */  addu       $a0, $s1, $zero
/* 577EAB0 8008ED80 8B3A010C */  jal        func_8004EA2C
/* 577EAB4 8008ED84 21804000 */   addu      $s0, $v0, $zero
/* 577EAB8 8008ED88 78001324 */  addiu      $s3, $zero, 0x78
/* 577EABC 8008ED8C 18005300 */  mult       $v0, $s3
/* 577EAC0 8008ED90 12400000 */  mflo       $t0
/* 577EAC4 8008ED94 83811000 */  sra        $s0, $s0, 6
/* 577EAC8 8008ED98 00000000 */  nop
/* 577EACC 8008ED9C 18000802 */  mult       $s0, $t0
/* 577EAD0 8008EDA0 21204002 */  addu       $a0, $s2, $zero
/* 577EAD4 8008EDA4 12400000 */  mflo       $t0
/* 577EAD8 8008EDA8 83140800 */  sra        $v0, $t0, 18
/* 577EADC 8008EDAC 8B3A010C */  jal        func_8004EA2C
/* 577EAE0 8008EDB0 0000A2A6 */   sh        $v0, 0x0($s5)
/* 577EAE4 8008EDB4 21202002 */  addu       $a0, $s1, $zero
/* 577EAE8 8008EDB8 793A010C */  jal        func_8004E9E4
/* 577EAEC 8008EDBC 21804000 */   addu      $s0, $v0, $zero
/* 577EAF0 8008EDC0 18005300 */  mult       $v0, $s3
/* 577EAF4 8008EDC4 12400000 */  mflo       $t0
/* 577EAF8 8008EDC8 83811000 */  sra        $s0, $s0, 6
/* 577EAFC 8008EDCC 00000000 */  nop
/* 577EB00 8008EDD0 18000802 */  mult       $s0, $t0
/* 577EB04 8008EDD4 21204002 */  addu       $a0, $s2, $zero
/* 577EB08 8008EDD8 12400000 */  mflo       $t0
/* 577EB0C 8008EDDC 83140800 */  sra        $v0, $t0, 18
/* 577EB10 8008EDE0 793A010C */  jal        func_8004E9E4
/* 577EB14 8008EDE4 0200A2A6 */   sh        $v0, 0x2($s5)
/* 577EB18 8008EDE8 96000324 */  addiu      $v1, $zero, 0x96
/* 577EB1C 8008EDEC 18004300 */  mult       $v0, $v1
/* 577EB20 8008EDF0 12400000 */  mflo       $t0
/* 577EB24 8008EDF4 03130800 */  sra        $v0, $t0, 12
/* 577EB28 8008EDF8 0400A2A6 */  sh         $v0, 0x4($s5)
/* 577EB2C 8008EDFC 5100C492 */  lbu        $a0, 0x51($s6)
/* 577EB30 8008EE00 00000000 */  nop
/* 577EB34 8008EE04 26008010 */  beqz       $a0, .Llevel_22_8008EEA0
/* 577EB38 8008EE08 1000033C */   lui       $v1, (0x100000 >> 16)
/* 577EB3C 8008EE0C 1800C28E */  lw         $v0, 0x18($s6)
/* 577EB40 8008EE10 00000000 */  nop
/* 577EB44 8008EE14 24104300 */  and        $v0, $v0, $v1
/* 577EB48 8008EE18 21004010 */  beqz       $v0, .Llevel_22_8008EEA0
/* 577EB4C 8008EE1C 40100400 */   sll       $v0, $a0, 1
/* 577EB50 8008EE20 0680013C */  lui        $at, %hi(D_80065920)
/* 577EB54 8008EE24 21082200 */  addu       $at, $at, $v0
/* 577EB58 8008EE28 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 577EB5C 8008EE2C 00000000 */  nop
/* 577EB60 8008EE30 80100300 */  sll        $v0, $v1, 2
/* 577EB64 8008EE34 21104300 */  addu       $v0, $v0, $v1
/* 577EB68 8008EE38 00190200 */  sll        $v1, $v0, 4
/* 577EB6C 8008EE3C 23186200 */  subu       $v1, $v1, $v0
/* 577EB70 8008EE40 0000A296 */  lhu        $v0, 0x0($s5)
/* 577EB74 8008EE44 C31A0300 */  sra        $v1, $v1, 11
/* 577EB78 8008EE48 21104300 */  addu       $v0, $v0, $v1
/* 577EB7C 8008EE4C 0000A2A6 */  sh         $v0, 0x0($s5)
/* 577EB80 8008EE50 5100C292 */  lbu        $v0, 0x51($s6)
/* 577EB84 8008EE54 28000424 */  addiu      $a0, $zero, 0x28
/* 577EB88 8008EE58 40100200 */  sll        $v0, $v0, 1
/* 577EB8C 8008EE5C 0680013C */  lui        $at, %hi(D_800658A0)
/* 577EB90 8008EE60 21082200 */  addu       $at, $at, $v0
/* 577EB94 8008EE64 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 577EB98 8008EE68 46000524 */  addiu      $a1, $zero, 0x46
/* 577EB9C 8008EE6C 80100300 */  sll        $v0, $v1, 2
/* 577EBA0 8008EE70 21104300 */  addu       $v0, $v0, $v1
/* 577EBA4 8008EE74 00190200 */  sll        $v1, $v0, 4
/* 577EBA8 8008EE78 23186200 */  subu       $v1, $v1, $v0
/* 577EBAC 8008EE7C 0200A296 */  lhu        $v0, 0x2($s5)
/* 577EBB0 8008EE80 C31A0300 */  sra        $v1, $v1, 11
/* 577EBB4 8008EE84 21104300 */  addu       $v0, $v0, $v1
/* 577EBB8 8008EE88 DBD8000C */  jal        func_8003636C
/* 577EBBC 8008EE8C 0200A2A6 */   sh        $v0, 0x2($s5)
/* 577EBC0 8008EE90 0400A396 */  lhu        $v1, 0x4($s5)
/* 577EBC4 8008EE94 00000000 */  nop
/* 577EBC8 8008EE98 21186200 */  addu       $v1, $v1, $v0
/* 577EBCC 8008EE9C 0400A3A6 */  sh         $v1, 0x4($s5)
.Llevel_22_8008EEA0:
/* 577EBD0 8008EEA0 1800C28E */  lw         $v0, 0x18($s6)
/* 577EBD4 8008EEA4 0200033C */  lui        $v1, (0x20000 >> 16)
/* 577EBD8 8008EEA8 24104300 */  and        $v0, $v0, $v1
/* 577EBDC 8008EEAC 1B004010 */  beqz       $v0, .Llevel_22_8008EF1C
/* 577EBE0 8008EEB0 00000000 */   nop
/* 577EBE4 8008EEB4 4600C292 */  lbu        $v0, 0x46($s6)
/* 577EBE8 8008EEB8 00000000 */  nop
/* 577EBEC 8008EEBC 40100200 */  sll        $v0, $v0, 1
/* 577EBF0 8008EEC0 0680013C */  lui        $at, %hi(D_80065920)
/* 577EBF4 8008EEC4 21082200 */  addu       $at, $at, $v0
/* 577EBF8 8008EEC8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 577EBFC 8008EECC 00000000 */  nop
/* 577EC00 8008EED0 C0100300 */  sll        $v0, $v1, 3
/* 577EC04 8008EED4 23104300 */  subu       $v0, $v0, $v1
/* 577EC08 8008EED8 C0100200 */  sll        $v0, $v0, 3
/* 577EC0C 8008EEDC 23104300 */  subu       $v0, $v0, $v1
/* 577EC10 8008EEE0 0000A396 */  lhu        $v1, 0x0($s5)
/* 577EC14 8008EEE4 83120200 */  sra        $v0, $v0, 10
/* 577EC18 8008EEE8 21186200 */  addu       $v1, $v1, $v0
/* 577EC1C 8008EEEC 0000A3A6 */  sh         $v1, 0x0($s5)
/* 577EC20 8008EEF0 4600C292 */  lbu        $v0, 0x46($s6)
/* 577EC24 8008EEF4 00000000 */  nop
/* 577EC28 8008EEF8 40100200 */  sll        $v0, $v0, 1
/* 577EC2C 8008EEFC 0680013C */  lui        $at, %hi(D_800658A0)
/* 577EC30 8008EF00 21082200 */  addu       $at, $at, $v0
/* 577EC34 8008EF04 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 577EC38 8008EF08 00000000 */  nop
/* 577EC3C 8008EF0C C0100300 */  sll        $v0, $v1, 3
/* 577EC40 8008EF10 23104300 */  subu       $v0, $v0, $v1
/* 577EC44 8008EF14 E03B0208 */  j          .Llevel_22_8008EF80
/* 577EC48 8008EF18 C0100200 */   sll       $v0, $v0, 3
.Llevel_22_8008EF1C:
/* 577EC4C 8008EF1C 4600C292 */  lbu        $v0, 0x46($s6)
/* 577EC50 8008EF20 00000000 */  nop
/* 577EC54 8008EF24 40100200 */  sll        $v0, $v0, 1
/* 577EC58 8008EF28 0680013C */  lui        $at, %hi(D_80065920)
/* 577EC5C 8008EF2C 21082200 */  addu       $at, $at, $v0
/* 577EC60 8008EF30 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 577EC64 8008EF34 00000000 */  nop
/* 577EC68 8008EF38 C0100300 */  sll        $v0, $v1, 3
/* 577EC6C 8008EF3C 21104300 */  addu       $v0, $v0, $v1
/* 577EC70 8008EF40 80100200 */  sll        $v0, $v0, 2
/* 577EC74 8008EF44 23104300 */  subu       $v0, $v0, $v1
/* 577EC78 8008EF48 0000A396 */  lhu        $v1, 0x0($s5)
/* 577EC7C 8008EF4C 83120200 */  sra        $v0, $v0, 10
/* 577EC80 8008EF50 21186200 */  addu       $v1, $v1, $v0
/* 577EC84 8008EF54 0000A3A6 */  sh         $v1, 0x0($s5)
/* 577EC88 8008EF58 4600C292 */  lbu        $v0, 0x46($s6)
/* 577EC8C 8008EF5C 00000000 */  nop
/* 577EC90 8008EF60 40100200 */  sll        $v0, $v0, 1
/* 577EC94 8008EF64 0680013C */  lui        $at, %hi(D_800658A0)
/* 577EC98 8008EF68 21082200 */  addu       $at, $at, $v0
/* 577EC9C 8008EF6C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 577ECA0 8008EF70 00000000 */  nop
/* 577ECA4 8008EF74 C0100300 */  sll        $v0, $v1, 3
/* 577ECA8 8008EF78 21104300 */  addu       $v0, $v0, $v1
/* 577ECAC 8008EF7C 80100200 */  sll        $v0, $v0, 2
.Llevel_22_8008EF80:
/* 577ECB0 8008EF80 23104300 */  subu       $v0, $v0, $v1
/* 577ECB4 8008EF84 0200A396 */  lhu        $v1, 0x2($s5)
/* 577ECB8 8008EF88 83120200 */  sra        $v0, $v0, 10
/* 577ECBC 8008EF8C 21186200 */  addu       $v1, $v1, $v0
/* 577ECC0 8008EF90 0200A3A6 */  sh         $v1, 0x2($s5)
/* 577ECC4 8008EF94 36008386 */  lh         $v1, 0x36($s4)
/* 577ECC8 8008EF98 0A000224 */  addiu      $v0, $zero, 0xA
/* 577ECCC 8008EF9C 1A006210 */  beq        $v1, $v0, .Llevel_22_8008F008
/* 577ECD0 8008EFA0 1D000224 */   addiu     $v0, $zero, 0x1D
/* 577ECD4 8008EFA4 18006210 */  beq        $v1, $v0, .Llevel_22_8008F008
/* 577ECD8 8008EFA8 00000000 */   nop
/* 577ECDC 8008EFAC 9171010C */  jal        rand
/* 577ECE0 8008EFB0 00000000 */   nop
/* 577ECE4 8008EFB4 9171010C */  jal        rand
/* 577ECE8 8008EFB8 440082A2 */   sb        $v0, 0x44($s4)
/* 577ECEC 8008EFBC 9171010C */  jal        rand
/* 577ECF0 8008EFC0 450082A2 */   sb        $v0, 0x45($s4)
/* 577ECF4 8008EFC4 460082A2 */  sb         $v0, 0x46($s4)
/* 577ECF8 8008EFC8 0000A286 */  lh         $v0, 0x0($s5)
/* 577ECFC 8008EFCC 0C00838E */  lw         $v1, 0xC($s4)
/* 577ED00 8008EFD0 40100200 */  sll        $v0, $v0, 1
/* 577ED04 8008EFD4 21186200 */  addu       $v1, $v1, $v0
/* 577ED08 8008EFD8 0C0083AE */  sw         $v1, 0xC($s4)
/* 577ED0C 8008EFDC 0200A286 */  lh         $v0, 0x2($s5)
/* 577ED10 8008EFE0 1000838E */  lw         $v1, 0x10($s4)
/* 577ED14 8008EFE4 40100200 */  sll        $v0, $v0, 1
/* 577ED18 8008EFE8 21186200 */  addu       $v1, $v1, $v0
/* 577ED1C 8008EFEC 100083AE */  sw         $v1, 0x10($s4)
/* 577ED20 8008EFF0 0400A286 */  lh         $v0, 0x4($s5)
/* 577ED24 8008EFF4 1400838E */  lw         $v1, 0x14($s4)
/* 577ED28 8008EFF8 40100200 */  sll        $v0, $v0, 1
/* 577ED2C 8008EFFC 21186200 */  addu       $v1, $v1, $v0
/* 577ED30 8008F000 0B3C0208 */  j          .Llevel_22_8008F02C
/* 577ED34 8008F004 140083AE */   sw        $v1, 0x14($s4)
.Llevel_22_8008F008:
/* 577ED38 8008F008 4400C292 */  lbu        $v0, 0x44($s6)
/* 577ED3C 8008F00C 00000000 */  nop
/* 577ED40 8008F010 440082A2 */  sb         $v0, 0x44($s4)
/* 577ED44 8008F014 4500C292 */  lbu        $v0, 0x45($s6)
/* 577ED48 8008F018 00000000 */  nop
/* 577ED4C 8008F01C 450082A2 */  sb         $v0, 0x45($s4)
/* 577ED50 8008F020 4600C292 */  lbu        $v0, 0x46($s6)
/* 577ED54 8008F024 00000000 */  nop
/* 577ED58 8008F028 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_22_8008F02C:
/* 577ED5C 8008F02C 9171010C */  jal        rand
/* 577ED60 8008F030 00000000 */   nop
/* 577ED64 8008F034 1F004230 */  andi       $v0, $v0, 0x1F
/* 577ED68 8008F038 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 577ED6C 8008F03C 9171010C */  jal        rand
/* 577ED70 8008F040 0600A2A6 */   sh        $v0, 0x6($s5)
/* 577ED74 8008F044 1F004230 */  andi       $v0, $v0, 0x1F
/* 577ED78 8008F048 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 577ED7C 8008F04C 9171010C */  jal        rand
/* 577ED80 8008F050 0800A2A6 */   sh        $v0, 0x8($s5)
/* 577ED84 8008F054 78000424 */  addiu      $a0, $zero, 0x78
/* 577ED88 8008F058 96000524 */  addiu      $a1, $zero, 0x96
/* 577ED8C 8008F05C 1F004230 */  andi       $v0, $v0, 0x1F
/* 577ED90 8008F060 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 577ED94 8008F064 DBD8000C */  jal        func_8003636C
/* 577ED98 8008F068 0A00A2A6 */   sh        $v0, 0xA($s5)
/* 577ED9C 8008F06C 0C00A2A6 */  sh         $v0, 0xC($s5)
/* 577EDA0 8008F070 01000224 */  addiu      $v0, $zero, 0x1
/* 577EDA4 8008F074 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 577EDA8 8008F078 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577EDAC 8008F07C 1200A0A6 */   sh        $zero, 0x12($s5)
.Llevel_22_8008F080:
/* 577EDB0 8008F080 0000D18E */  lw         $s1, 0x0($s6)
/* 577EDB4 8008F084 0000928E */  lw         $s2, 0x0($s4)
/* 577EDB8 8008F088 C0000224 */  addiu      $v0, $zero, 0xC0
/* 577EDBC 8008F08C 1000A0AF */  sw         $zero, 0x10($sp)
/* 577EDC0 8008F090 1400A2AF */  sw         $v0, 0x14($sp)
/* 577EDC4 8008F094 2800228E */  lw         $v0, 0x28($s1)
/* 577EDC8 8008F098 00000000 */  nop
/* 577EDCC 8008F09C 02004010 */  beqz       $v0, .Llevel_22_8008F0A8
/* 577EDD0 8008F0A0 40FF0224 */   addiu     $v0, $zero, -0xC0
/* 577EDD4 8008F0A4 1400A2AF */  sw         $v0, 0x14($sp)
.Llevel_22_8008F0A8:
/* 577EDD8 8008F0A8 0780103C */  lui        $s0, %hi(D_8006E044)
/* 577EDDC 8008F0AC 44E01026 */  addiu      $s0, $s0, %lo(D_8006E044)
/* 577EDE0 8008F0B0 0000038E */  lw         $v1, 0x0($s0)
/* 577EDE4 8008F0B4 07000224 */  addiu      $v0, $zero, 0x7
/* 577EDE8 8008F0B8 1E006214 */  bne        $v1, $v0, .Llevel_22_8008F134
/* 577EDEC 8008F0BC 2000C426 */   addiu     $a0, $s6, 0x20
/* 577EDF0 8008F0C0 0780033C */  lui        $v1, %hi(D_8006E048)
/* 577EDF4 8008F0C4 48E0638C */  lw         $v1, %lo(D_8006E048)($v1)
/* 577EDF8 8008F0C8 01000224 */  addiu      $v0, $zero, 0x1
/* 577EDFC 8008F0CC 18006210 */  beq        $v1, $v0, .Llevel_22_8008F130
/* 577EE00 8008F0D0 C8FF0426 */   addiu     $a0, $s0, -0x38
/* 577EE04 8008F0D4 1000A527 */  addiu      $a1, $sp, 0x10
/* 577EE08 8008F0D8 2130A000 */  addu       $a2, $a1, $zero
/* 577EE0C 8008F0DC 5B3B010C */  jal        func_8004ED6C
/* 577EE10 8008F0E0 1800A0AF */   sw        $zero, 0x18($sp)
/* 577EE14 8008F0E4 0C008426 */  addiu      $a0, $s4, 0xC
/* 577EE18 8008F0E8 DCFF0526 */  addiu      $a1, $s0, -0x24
/* 577EE1C 8008F0EC 653C010C */  jal        func_8004F194
/* 577EE20 8008F0F0 1000A627 */   addiu     $a2, $sp, 0x10
/* 577EE24 8008F0F4 0780023C */  lui        $v0, %hi(D_8006E03C)
/* 577EE28 8008F0F8 3CE04294 */  lhu        $v0, %lo(D_8006E03C)($v0)
/* 577EE2C 8008F0FC 00000000 */  nop
/* 577EE30 8008F100 02110200 */  srl        $v0, $v0, 4
/* 577EE34 8008F104 440082A2 */  sb         $v0, 0x44($s4)
/* 577EE38 8008F108 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 577EE3C 8008F10C 3EE04284 */  lh         $v0, %lo(D_8006E03E)($v0)
/* 577EE40 8008F110 00000000 */  nop
/* 577EE44 8008F114 23100200 */  negu       $v0, $v0
/* 577EE48 8008F118 03110200 */  sra        $v0, $v0, 4
/* 577EE4C 8008F11C 450082A2 */  sb         $v0, 0x45($s4)
/* 577EE50 8008F120 0780023C */  lui        $v0, %hi(D_8006E040)
/* 577EE54 8008F124 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 577EE58 8008F128 5D3C0208 */  j          .Llevel_22_8008F174
/* 577EE5C 8008F12C 02110200 */   srl       $v0, $v0, 4
.Llevel_22_8008F130:
/* 577EE60 8008F130 2000C426 */  addiu      $a0, $s6, 0x20
.Llevel_22_8008F134:
/* 577EE64 8008F134 1000A527 */  addiu      $a1, $sp, 0x10
/* 577EE68 8008F138 2130A000 */  addu       $a2, $a1, $zero
/* 577EE6C 8008F13C 80010224 */  addiu      $v0, $zero, 0x180
/* 577EE70 8008F140 5B3B010C */  jal        func_8004ED6C
/* 577EE74 8008F144 1800A2AF */   sw        $v0, 0x18($sp)
/* 577EE78 8008F148 0C008426 */  addiu      $a0, $s4, 0xC
/* 577EE7C 8008F14C 0C00C526 */  addiu      $a1, $s6, 0xC
/* 577EE80 8008F150 653C010C */  jal        func_8004F194
/* 577EE84 8008F154 1000A627 */   addiu     $a2, $sp, 0x10
/* 577EE88 8008F158 4400C292 */  lbu        $v0, 0x44($s6)
/* 577EE8C 8008F15C 00000000 */  nop
/* 577EE90 8008F160 440082A2 */  sb         $v0, 0x44($s4)
/* 577EE94 8008F164 4500C292 */  lbu        $v0, 0x45($s6)
/* 577EE98 8008F168 00000000 */  nop
/* 577EE9C 8008F16C 450082A2 */  sb         $v0, 0x45($s4)
/* 577EEA0 8008F170 4600C292 */  lbu        $v0, 0x46($s6)
.Llevel_22_8008F174:
/* 577EEA4 8008F174 00000000 */  nop
/* 577EEA8 8008F178 460082A2 */  sb         $v0, 0x46($s4)
/* 577EEAC 8008F17C 5C00228E */  lw         $v0, 0x5C($s1)
/* 577EEB0 8008F180 21208002 */  addu       $a0, $s4, $zero
/* 577EEB4 8008F184 0957010C */  jal        func_80055C24
/* 577EEB8 8008F188 140042AE */   sw        $v0, 0x14($s2)
/* 577EEBC 8008F18C 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577EEC0 8008F190 480080A2 */   sb        $zero, 0x48($s4)
.Llevel_22_8008F194:
/* 577EEC4 8008F194 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_22_8008F198:
/* 577EEC8 8008F198 36008286 */  lh         $v0, 0x36($s4)
/* 577EECC 8008F19C 0000918E */  lw         $s1, 0x0($s4)
/* 577EED0 8008F1A0 19004314 */  bne        $v0, $v1, .Llevel_22_8008F208
/* 577EED4 8008F1A4 0C009026 */   addiu     $s0, $s4, 0xC
/* 577EED8 8008F1A8 0780043C */  lui        $a0, %hi(D_8006C784)
/* 577EEDC 8008F1AC 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 577EEE0 8008F1B0 00000000 */  nop
/* 577EEE4 8008F1B4 04008228 */  slti       $v0, $a0, 0x4
/* 577EEE8 8008F1B8 03004010 */  beqz       $v0, .Llevel_22_8008F1C8
/* 577EEEC 8008F1BC 0A000324 */   addiu     $v1, $zero, 0xA
/* 577EEF0 8008F1C0 763C0208 */  j          .Llevel_22_8008F1D8
/* 577EEF4 8008F1C4 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_22_8008F1C8:
/* 577EEF8 8008F1C8 07008228 */  slti       $v0, $a0, 0x7
/* 577EEFC 8008F1CC 02004010 */  beqz       $v0, .Llevel_22_8008F1D8
/* 577EF00 8008F1D0 00000000 */   nop
/* 577EF04 8008F1D4 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_22_8008F1D8:
/* 577EF08 8008F1D8 0680043C */  lui        $a0, %hi(D_8006582C)
/* 577EF0C 8008F1DC 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 577EF10 8008F1E0 0000828C */  lw         $v0, 0x0($a0)
/* 577EF14 8008F1E4 00000000 */  nop
/* 577EF18 8008F1E8 01004224 */  addiu      $v0, $v0, 0x1
/* 577EF1C 8008F1EC 000082AC */  sw         $v0, 0x0($a0)
/* 577EF20 8008F1F0 2A104300 */  slt        $v0, $v0, $v1
/* 577EF24 8008F1F4 04004014 */  bnez       $v0, .Llevel_22_8008F208
/* 577EF28 8008F1F8 0C009026 */   addiu     $s0, $s4, 0xC
/* 577EF2C 8008F1FC D3000224 */  addiu      $v0, $zero, 0xD3
/* 577EF30 8008F200 000080AC */  sw         $zero, 0x0($a0)
/* 577EF34 8008F204 360082A6 */  sh         $v0, 0x36($s4)
.Llevel_22_8008F208:
/* 577EF38 8008F208 21200002 */  addu       $a0, $s0, $zero
/* 577EF3C 8008F20C 5E3C010C */  jal        func_8004F178
/* 577EF40 8008F210 0C00C526 */   addiu     $a1, $s6, 0xC
/* 577EF44 8008F214 0957010C */  jal        func_80055C24
/* 577EF48 8008F218 21208002 */   addu      $a0, $s4, $zero
/* 577EF4C 8008F21C 21202002 */  addu       $a0, $s1, $zero
/* 577EF50 8008F220 1400828E */  lw         $v0, 0x14($s4)
/* 577EF54 8008F224 21280002 */  addu       $a1, $s0, $zero
/* 577EF58 8008F228 00024224 */  addiu      $v0, $v0, 0x200
/* 577EF5C 8008F22C 5E3C010C */  jal        func_8004F178
/* 577EF60 8008F230 140082AE */   sw        $v0, 0x14($s4)
/* 577EF64 8008F234 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 577EF68 8008F238 1C0082AE */  sw         $v0, 0x1C($s4)
/* 577EF6C 8008F23C 02000224 */  addiu      $v0, $zero, 0x2
/* 577EF70 8008F240 470082A2 */  sb         $v0, 0x47($s4)
/* 577EF74 8008F244 08070224 */  addiu      $v0, $zero, 0x708
/* 577EF78 8008F248 0E0022A6 */  sh         $v0, 0xE($s1)
/* 577EF7C 8008F24C 9171010C */  jal        rand
/* 577EF80 8008F250 110020A2 */   sb        $zero, 0x11($s1)
/* 577EF84 8008F254 FC004230 */  andi       $v0, $v0, 0xFC
/* 577EF88 8008F258 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577EF8C 8008F25C 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_22_8008F260:
/* 577EF90 8008F260 3600C286 */  lh         $v0, 0x36($s6)
/* 577EF94 8008F264 00000000 */  nop
/* 577EF98 8008F268 06005110 */  beq        $v0, $s1, .Llevel_22_8008F284
/* 577EF9C 8008F26C 21280000 */   addu      $a1, $zero, $zero
/* 577EFA0 8008F270 0780043C */  lui        $a0, %hi(D_8006E394)
/* 577EFA4 8008F274 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 577EFA8 8008F278 000084AE */  sw         $a0, 0x0($s4)
/* 577EFAC 8008F27C E439010C */  jal        func_8004E790
/* 577EFB0 8008F280 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_22_8008F284:
/* 577EFB4 8008F284 0000908E */  lw         $s0, 0x0($s4)
/* 577EFB8 8008F288 0957010C */  jal        func_80055C24
/* 577EFBC 8008F28C 21208002 */   addu      $a0, $s4, $zero
/* 577EFC0 8008F290 78000224 */  addiu      $v0, $zero, 0x78
/* 577EFC4 8008F294 490080A2 */  sb         $zero, 0x49($s4)
/* 577EFC8 8008F298 000000A6 */  sh         $zero, 0x0($s0)
/* 577EFCC 8008F29C 080000A6 */  sh         $zero, 0x8($s0)
/* 577EFD0 8008F2A0 060000A6 */  sh         $zero, 0x6($s0)
/* 577EFD4 8008F2A4 040000A6 */  sh         $zero, 0x4($s0)
/* 577EFD8 8008F2A8 0D0002A2 */  sb         $v0, 0xD($s0)
/* 577EFDC 8008F2AC 100000AE */  sw         $zero, 0x10($s0)
/* 577EFE0 8008F2B0 0600C012 */  beqz       $s6, .Llevel_22_8008F2CC
/* 577EFE4 8008F2B4 140000AE */   sw        $zero, 0x14($s0)
/* 577EFE8 8008F2B8 0C008426 */  addiu      $a0, $s4, 0xC
/* 577EFEC 8008F2BC 5E3C010C */  jal        func_8004F178
/* 577EFF0 8008F2C0 0C00C526 */   addiu     $a1, $s6, 0xC
/* 577EFF4 8008F2C4 D23C0208 */  j          .Llevel_22_8008F348
/* 577EFF8 8008F2C8 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_22_8008F2CC:
/* 577EFFC 8008F2CC 0C008426 */  addiu      $a0, $s4, 0xC
/* 577F000 8008F2D0 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 577F004 8008F2D4 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 577F008 8008F2D8 0000A390 */  lbu        $v1, 0x0($a1)
/* 577F00C 8008F2DC F2FFA524 */  addiu      $a1, $a1, -0xE
/* 577F010 8008F2E0 80FF6324 */  addiu      $v1, $v1, -0x80
/* 577F014 8008F2E4 FF006330 */  andi       $v1, $v1, 0xFF
/* 577F018 8008F2E8 40180300 */  sll        $v1, $v1, 1
/* 577F01C 8008F2EC 0680013C */  lui        $at, %hi(D_80065920)
/* 577F020 8008F2F0 21082300 */  addu       $at, $at, $v1
/* 577F024 8008F2F4 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 577F028 8008F2F8 2000A627 */  addiu      $a2, $sp, 0x20
/* 577F02C 8008F2FC 40110700 */  sll        $v0, $a3, 5
/* 577F030 8008F300 23104700 */  subu       $v0, $v0, $a3
/* 577F034 8008F304 80100200 */  sll        $v0, $v0, 2
/* 577F038 8008F308 21104700 */  addu       $v0, $v0, $a3
/* 577F03C 8008F30C 43120200 */  sra        $v0, $v0, 9
/* 577F040 8008F310 2000A2AF */  sw         $v0, 0x20($sp)
/* 577F044 8008F314 0680013C */  lui        $at, %hi(D_800658A0)
/* 577F048 8008F318 21082300 */  addu       $at, $at, $v1
/* 577F04C 8008F31C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 577F050 8008F320 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 577F054 8008F324 2800A2AF */  sw         $v0, 0x28($sp)
/* 577F058 8008F328 40110300 */  sll        $v0, $v1, 5
/* 577F05C 8008F32C 23104300 */  subu       $v0, $v0, $v1
/* 577F060 8008F330 80100200 */  sll        $v0, $v0, 2
/* 577F064 8008F334 21104300 */  addu       $v0, $v0, $v1
/* 577F068 8008F338 43120200 */  sra        $v0, $v0, 9
/* 577F06C 8008F33C 653C010C */  jal        func_8004F194
/* 577F070 8008F340 2400A2AF */   sw        $v0, 0x24($sp)
/* 577F074 8008F344 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_22_8008F348:
/* 577F078 8008F348 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F07C 8008F34C 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_22_8008F350:
/* 577F080 8008F350 0C008426 */  addiu      $a0, $s4, 0xC
/* 577F084 8008F354 4600C292 */  lbu        $v0, 0x46($s6)
/* 577F088 8008F358 0C00C526 */  addiu      $a1, $s6, 0xC
/* 577F08C 8008F35C 5E3C010C */  jal        func_8004F178
/* 577F090 8008F360 460082A2 */   sb        $v0, 0x46($s4)
/* 577F094 8008F364 0957010C */  jal        func_80055C24
/* 577F098 8008F368 21208002 */   addu      $a0, $s4, $zero
/* 577F09C 8008F36C 4ED7000C */  jal        func_80035D38
/* 577F0A0 8008F370 21208002 */   addu      $a0, $s4, $zero
/* 577F0A4 8008F374 02004010 */  beqz       $v0, .Llevel_22_8008F380
/* 577F0A8 8008F378 00000000 */   nop
/* 577F0AC 8008F37C 140082AE */  sw         $v0, 0x14($s4)
.Llevel_22_8008F380:
/* 577F0B0 8008F380 06000224 */  addiu      $v0, $zero, 0x6
/* 577F0B4 8008F384 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F0B8 8008F388 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_22_8008F38C:
/* 577F0BC 8008F38C 410080A2 */  sb         $zero, 0x41($s4)
/* 577F0C0 8008F390 400080A2 */  sb         $zero, 0x40($s4)
/* 577F0C4 8008F394 3E0080A2 */  sb         $zero, 0x3E($s4)
/* 577F0C8 8008F398 0400C012 */  beqz       $s6, .Llevel_22_8008F3AC
/* 577F0CC 8008F39C 3F0080A2 */   sb        $zero, 0x3F($s4)
/* 577F0D0 8008F3A0 0C008426 */  addiu      $a0, $s4, 0xC
/* 577F0D4 8008F3A4 5E3C010C */  jal        func_8004F178
/* 577F0D8 8008F3A8 0C00C526 */   addiu     $a1, $s6, 0xC
.Llevel_22_8008F3AC:
/* 577F0DC 8008F3AC 21208002 */  addu       $a0, $s4, $zero
/* 577F0E0 8008F3B0 18000224 */  addiu      $v0, $zero, 0x18
/* 577F0E4 8008F3B4 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 577F0E8 8008F3B8 28000224 */  addiu      $v0, $zero, 0x28
/* 577F0EC 8008F3BC 3A3E0208 */  j          .Llevel_22_8008F8E8
/* 577F0F0 8008F3C0 4C0082A2 */   sb        $v0, 0x4C($s4)
.Llevel_22_8008F3C4:
/* 577F0F4 8008F3C4 0957010C */  jal        func_80055C24
/* 577F0F8 8008F3C8 21208002 */   addu      $a0, $s4, $zero
/* 577F0FC 8008F3CC 02000224 */  addiu      $v0, $zero, 0x2
/* 577F100 8008F3D0 0E00C012 */  beqz       $s6, .Llevel_22_8008F40C
/* 577F104 8008F3D4 540082A2 */   sb        $v0, 0x54($s4)
/* 577F108 8008F3D8 0C008426 */  addiu      $a0, $s4, 0xC
/* 577F10C 8008F3DC 0000828E */  lw         $v0, 0x0($s4)
/* 577F110 8008F3E0 0C00C526 */  addiu      $a1, $s6, 0xC
/* 577F114 8008F3E4 5E3C010C */  jal        func_8004F178
/* 577F118 8008F3E8 000056AC */   sw        $s6, 0x0($v0)
/* 577F11C 8008F3EC 0A000224 */  addiu      $v0, $zero, 0xA
/* 577F120 8008F3F0 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 577F124 8008F3F4 1400828E */  lw         $v0, 0x14($s4)
/* 577F128 8008F3F8 08000324 */  addiu      $v1, $zero, 0x8
/* 577F12C 8008F3FC 4C0083A2 */  sb         $v1, 0x4C($s4)
/* 577F130 8008F400 00044224 */  addiu      $v0, $v0, 0x400
/* 577F134 8008F404 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F138 8008F408 140082AE */   sw        $v0, 0x14($s4)
.Llevel_22_8008F40C:
/* 577F13C 8008F40C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 577F140 8008F410 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F144 8008F414 1C0082AE */   sw        $v0, 0x1C($s4)
.Llevel_22_8008F418:
/* 577F148 8008F418 0780053C */  lui        $a1, %hi(D_80070328)
/* 577F14C 8008F41C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 577F150 8008F420 0000908E */  lw         $s0, 0x0($s4)
/* 577F154 8008F424 5E3C010C */  jal        func_8004F178
/* 577F158 8008F428 0C008426 */   addiu     $a0, $s4, 0xC
/* 577F15C 8008F42C 1400828E */  lw         $v0, 0x14($s4)
/* 577F160 8008F430 00000000 */  nop
/* 577F164 8008F434 00044224 */  addiu      $v0, $v0, 0x400
/* 577F168 8008F438 140082AE */  sw         $v0, 0x14($s4)
/* 577F16C 8008F43C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 577F170 8008F440 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 577F174 8008F444 21208002 */  addu       $a0, $s4, $zero
/* 577F178 8008F448 0957010C */  jal        func_80055C24
/* 577F17C 8008F44C 460082A2 */   sb        $v0, 0x46($s4)
/* 577F180 8008F450 02000224 */  addiu      $v0, $zero, 0x2
/* 577F184 8008F454 020002A2 */  sb         $v0, 0x2($s0)
/* 577F188 8008F458 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 577F18C 8008F45C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 577F190 8008F460 00000000 */  nop
/* 577F194 8008F464 030002A2 */  sb         $v0, 0x3($s0)
/* 577F198 8008F468 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 577F19C 8008F46C 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 577F1A0 8008F470 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 577F1A4 8008F474 100002AE */  sw         $v0, 0x10($s0)
/* 577F1A8 8008F478 040003A2 */  sb         $v1, 0x4($s0)
/* 577F1AC 8008F47C 410080A2 */  sb         $zero, 0x41($s4)
/* 577F1B0 8008F480 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 577F1B4 8008F484 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F1B8 8008F488 4D0080A2 */   sb        $zero, 0x4D($s4)
.Llevel_22_8008F48C:
/* 577F1BC 8008F48C 0C008426 */  addiu      $a0, $s4, 0xC
.Llevel_22_8008F490:
/* 577F1C0 8008F490 0C00C526 */  addiu      $a1, $s6, 0xC
/* 577F1C4 8008F494 0000938E */  lw         $s3, 0x0($s4)
/* 577F1C8 8008F498 20000224 */  addiu      $v0, $zero, 0x20
/* 577F1CC 8008F49C 5E3C010C */  jal        func_8004F178
/* 577F1D0 8008F4A0 4C0082A2 */   sb        $v0, 0x4C($s4)
/* 577F1D4 8008F4A4 0957010C */  jal        func_80055C24
/* 577F1D8 8008F4A8 21208002 */   addu      $a0, $s4, $zero
/* 577F1DC 8008F4AC 9171010C */  jal        rand
/* 577F1E0 8008F4B0 00000000 */   nop
/* 577F1E4 8008F4B4 9171010C */  jal        rand
/* 577F1E8 8008F4B8 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 577F1EC 8008F4BC FF075130 */  andi       $s1, $v0, 0x7FF
/* 577F1F0 8008F4C0 8B3A010C */  jal        func_8004EA2C
/* 577F1F4 8008F4C4 21202002 */   addu      $a0, $s1, $zero
/* 577F1F8 8008F4C8 21204002 */  addu       $a0, $s2, $zero
/* 577F1FC 8008F4CC 8B3A010C */  jal        func_8004EA2C
/* 577F200 8008F4D0 21804000 */   addu      $s0, $v0, $zero
/* 577F204 8008F4D4 18000202 */  mult       $s0, $v0
/* 577F208 8008F4D8 12400000 */  mflo       $t0
/* 577F20C 8008F4DC 4900C292 */  lbu        $v0, 0x49($s6)
/* 577F210 8008F4E0 00000000 */  nop
/* 577F214 8008F4E4 18000201 */  mult       $t0, $v0
/* 577F218 8008F4E8 21202002 */  addu       $a0, $s1, $zero
/* 577F21C 8008F4EC 12400000 */  mflo       $t0
/* 577F220 8008F4F0 03160800 */  sra        $v0, $t0, 24
/* 577F224 8008F4F4 8B3A010C */  jal        func_8004EA2C
/* 577F228 8008F4F8 000062A6 */   sh        $v0, 0x0($s3)
/* 577F22C 8008F4FC 21204002 */  addu       $a0, $s2, $zero
/* 577F230 8008F500 793A010C */  jal        func_8004E9E4
/* 577F234 8008F504 21804000 */   addu      $s0, $v0, $zero
/* 577F238 8008F508 18000202 */  mult       $s0, $v0
/* 577F23C 8008F50C 12400000 */  mflo       $t0
/* 577F240 8008F510 4900C292 */  lbu        $v0, 0x49($s6)
/* 577F244 8008F514 00000000 */  nop
/* 577F248 8008F518 18000201 */  mult       $t0, $v0
/* 577F24C 8008F51C 21202002 */  addu       $a0, $s1, $zero
/* 577F250 8008F520 12400000 */  mflo       $t0
/* 577F254 8008F524 03160800 */  sra        $v0, $t0, 24
/* 577F258 8008F528 793A010C */  jal        func_8004E9E4
/* 577F25C 8008F52C 020062A6 */   sh        $v0, 0x2($s3)
/* 577F260 8008F530 4900C392 */  lbu        $v1, 0x49($s6)
/* 577F264 8008F534 00000000 */  nop
/* 577F268 8008F538 18004300 */  mult       $v0, $v1
/* 577F26C 8008F53C 12400000 */  mflo       $t0
/* 577F270 8008F540 03130800 */  sra        $v0, $t0, 12
/* 577F274 8008F544 040062A6 */  sh         $v0, 0x4($s3)
/* 577F278 8008F548 1800C38E */  lw         $v1, 0x18($s6)
/* 577F27C 8008F54C 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 577F280 8008F550 24106200 */  and        $v0, $v1, $v0
/* 577F284 8008F554 2C004010 */  beqz       $v0, .Llevel_22_8008F608
/* 577F288 8008F558 21300000 */   addu      $a2, $zero, $zero
/* 577F28C 8008F55C 0780103C */  lui        $s0, %hi(D_80070328)
/* 577F290 8008F560 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 577F294 8008F564 0C00838E */  lw         $v1, 0xC($s4)
/* 577F298 8008F568 0000048E */  lw         $a0, 0x0($s0)
/* 577F29C 8008F56C 1000828E */  lw         $v0, 0x10($s4)
/* 577F2A0 8008F570 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 577F2A4 8008F574 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 577F2A8 8008F578 23206400 */  subu       $a0, $v1, $a0
/* 577F2AC 8008F57C 203A010C */  jal        func_8004E880
/* 577F2B0 8008F580 23284500 */   subu      $a1, $v0, $a1
/* 577F2B4 8008F584 40100200 */  sll        $v0, $v0, 1
/* 577F2B8 8008F588 21300000 */  addu       $a2, $zero, $zero
/* 577F2BC 8008F58C 0680013C */  lui        $at, %hi(D_80065920)
/* 577F2C0 8008F590 21082200 */  addu       $at, $at, $v0
/* 577F2C4 8008F594 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 577F2C8 8008F598 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 577F2CC 8008F59C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 577F2D0 8008F5A0 03110200 */  sra        $v0, $v0, 4
/* 577F2D4 8008F5A4 2000A2AF */  sw         $v0, 0x20($sp)
/* 577F2D8 8008F5A8 0C00838E */  lw         $v1, 0xC($s4)
/* 577F2DC 8008F5AC 0000048E */  lw         $a0, 0x0($s0)
/* 577F2E0 8008F5B0 1000828E */  lw         $v0, 0x10($s4)
/* 577F2E4 8008F5B4 23206400 */  subu       $a0, $v1, $a0
/* 577F2E8 8008F5B8 203A010C */  jal        func_8004E880
/* 577F2EC 8008F5BC 23284500 */   subu      $a1, $v0, $a1
/* 577F2F0 8008F5C0 40100200 */  sll        $v0, $v0, 1
/* 577F2F4 8008F5C4 0680013C */  lui        $at, %hi(D_800658A0)
/* 577F2F8 8008F5C8 21082200 */  addu       $at, $at, $v0
/* 577F2FC 8008F5CC A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 577F300 8008F5D0 2000A38F */  lw         $v1, 0x20($sp)
/* 577F304 8008F5D4 2800A0AF */  sw         $zero, 0x28($sp)
/* 577F308 8008F5D8 03110200 */  sra        $v0, $v0, 4
/* 577F30C 8008F5DC 2400A2AF */  sw         $v0, 0x24($sp)
/* 577F310 8008F5E0 00006296 */  lhu        $v0, 0x0($s3)
/* 577F314 8008F5E4 00000000 */  nop
/* 577F318 8008F5E8 21104300 */  addu       $v0, $v0, $v1
/* 577F31C 8008F5EC 000062A6 */  sh         $v0, 0x0($s3)
/* 577F320 8008F5F0 2400A38F */  lw         $v1, 0x24($sp)
/* 577F324 8008F5F4 02006296 */  lhu        $v0, 0x2($s3)
/* 577F328 8008F5F8 00000000 */  nop
/* 577F32C 8008F5FC 21104300 */  addu       $v0, $v0, $v1
/* 577F330 8008F600 993D0208 */  j          .Llevel_22_8008F664
/* 577F334 8008F604 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_22_8008F608:
/* 577F338 8008F608 0200023C */  lui        $v0, (0x20000 >> 16)
/* 577F33C 8008F60C 24106200 */  and        $v0, $v1, $v0
/* 577F340 8008F610 14004010 */  beqz       $v0, .Llevel_22_8008F664
/* 577F344 8008F614 04000224 */   addiu     $v0, $zero, 0x4
/* 577F348 8008F618 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 577F34C 8008F61C 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 577F350 8008F620 00000000 */  nop
/* 577F354 8008F624 03006210 */  beq        $v1, $v0, .Llevel_22_8008F634
/* 577F358 8008F628 0C000224 */   addiu     $v0, $zero, 0xC
/* 577F35C 8008F62C 0D006214 */  bne        $v1, $v0, .Llevel_22_8008F664
/* 577F360 8008F630 00000000 */   nop
.Llevel_22_8008F634:
/* 577F364 8008F634 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 577F368 8008F638 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 577F36C 8008F63C 00006396 */  lhu        $v1, 0x0($s3)
/* 577F370 8008F640 83110200 */  sra        $v0, $v0, 6
/* 577F374 8008F644 21186200 */  addu       $v1, $v1, $v0
/* 577F378 8008F648 000063A6 */  sh         $v1, 0x0($s3)
/* 577F37C 8008F64C 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 577F380 8008F650 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 577F384 8008F654 02006396 */  lhu        $v1, 0x2($s3)
/* 577F388 8008F658 83110200 */  sra        $v0, $v0, 6
/* 577F38C 8008F65C 21186200 */  addu       $v1, $v1, $v0
/* 577F390 8008F660 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_22_8008F664:
/* 577F394 8008F664 5100C492 */  lbu        $a0, 0x51($s6)
/* 577F398 8008F668 00000000 */  nop
/* 577F39C 8008F66C 26008010 */  beqz       $a0, .Llevel_22_8008F708
/* 577F3A0 8008F670 1000033C */   lui       $v1, (0x100000 >> 16)
/* 577F3A4 8008F674 1800C28E */  lw         $v0, 0x18($s6)
/* 577F3A8 8008F678 00000000 */  nop
/* 577F3AC 8008F67C 24104300 */  and        $v0, $v0, $v1
/* 577F3B0 8008F680 21004010 */  beqz       $v0, .Llevel_22_8008F708
/* 577F3B4 8008F684 40100400 */   sll       $v0, $a0, 1
/* 577F3B8 8008F688 0680013C */  lui        $at, %hi(D_80065920)
/* 577F3BC 8008F68C 21082200 */  addu       $at, $at, $v0
/* 577F3C0 8008F690 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 577F3C4 8008F694 00000000 */  nop
/* 577F3C8 8008F698 80100300 */  sll        $v0, $v1, 2
/* 577F3CC 8008F69C 21104300 */  addu       $v0, $v0, $v1
/* 577F3D0 8008F6A0 00190200 */  sll        $v1, $v0, 4
/* 577F3D4 8008F6A4 23186200 */  subu       $v1, $v1, $v0
/* 577F3D8 8008F6A8 00006296 */  lhu        $v0, 0x0($s3)
/* 577F3DC 8008F6AC C31A0300 */  sra        $v1, $v1, 11
/* 577F3E0 8008F6B0 21104300 */  addu       $v0, $v0, $v1
/* 577F3E4 8008F6B4 000062A6 */  sh         $v0, 0x0($s3)
/* 577F3E8 8008F6B8 5100C292 */  lbu        $v0, 0x51($s6)
/* 577F3EC 8008F6BC 28000424 */  addiu      $a0, $zero, 0x28
/* 577F3F0 8008F6C0 40100200 */  sll        $v0, $v0, 1
/* 577F3F4 8008F6C4 0680013C */  lui        $at, %hi(D_800658A0)
/* 577F3F8 8008F6C8 21082200 */  addu       $at, $at, $v0
/* 577F3FC 8008F6CC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 577F400 8008F6D0 46000524 */  addiu      $a1, $zero, 0x46
/* 577F404 8008F6D4 80100300 */  sll        $v0, $v1, 2
/* 577F408 8008F6D8 21104300 */  addu       $v0, $v0, $v1
/* 577F40C 8008F6DC 00190200 */  sll        $v1, $v0, 4
/* 577F410 8008F6E0 23186200 */  subu       $v1, $v1, $v0
/* 577F414 8008F6E4 02006296 */  lhu        $v0, 0x2($s3)
/* 577F418 8008F6E8 C31A0300 */  sra        $v1, $v1, 11
/* 577F41C 8008F6EC 21104300 */  addu       $v0, $v0, $v1
/* 577F420 8008F6F0 DBD8000C */  jal        func_8003636C
/* 577F424 8008F6F4 020062A6 */   sh        $v0, 0x2($s3)
/* 577F428 8008F6F8 04006396 */  lhu        $v1, 0x4($s3)
/* 577F42C 8008F6FC 00000000 */  nop
/* 577F430 8008F700 21186200 */  addu       $v1, $v1, $v0
/* 577F434 8008F704 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_22_8008F708:
/* 577F438 8008F708 00006286 */  lh         $v0, 0x0($s3)
/* 577F43C 8008F70C 0C00838E */  lw         $v1, 0xC($s4)
/* 577F440 8008F710 80100200 */  sll        $v0, $v0, 2
/* 577F444 8008F714 21186200 */  addu       $v1, $v1, $v0
/* 577F448 8008F718 0C0083AE */  sw         $v1, 0xC($s4)
/* 577F44C 8008F71C 02006286 */  lh         $v0, 0x2($s3)
/* 577F450 8008F720 1000838E */  lw         $v1, 0x10($s4)
/* 577F454 8008F724 80100200 */  sll        $v0, $v0, 2
/* 577F458 8008F728 21186200 */  addu       $v1, $v1, $v0
/* 577F45C 8008F72C 100083AE */  sw         $v1, 0x10($s4)
/* 577F460 8008F730 04006286 */  lh         $v0, 0x4($s3)
/* 577F464 8008F734 1400838E */  lw         $v1, 0x14($s4)
/* 577F468 8008F738 80100200 */  sll        $v0, $v0, 2
/* 577F46C 8008F73C 21186200 */  addu       $v1, $v1, $v0
/* 577F470 8008F740 9171010C */  jal        rand
/* 577F474 8008F744 140083AE */   sw        $v1, 0x14($s4)
/* 577F478 8008F748 9171010C */  jal        rand
/* 577F47C 8008F74C 450082A2 */   sb        $v0, 0x45($s4)
/* 577F480 8008F750 9171010C */  jal        rand
/* 577F484 8008F754 460082A2 */   sb        $v0, 0x46($s4)
/* 577F488 8008F758 1F004230 */  andi       $v0, $v0, 0x1F
/* 577F48C 8008F75C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 577F490 8008F760 9171010C */  jal        rand
/* 577F494 8008F764 060062A6 */   sh        $v0, 0x6($s3)
/* 577F498 8008F768 1F004230 */  andi       $v0, $v0, 0x1F
/* 577F49C 8008F76C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 577F4A0 8008F770 9171010C */  jal        rand
/* 577F4A4 8008F774 080062A6 */   sh        $v0, 0x8($s3)
/* 577F4A8 8008F778 32000424 */  addiu      $a0, $zero, 0x32
/* 577F4AC 8008F77C 1F004230 */  andi       $v0, $v0, 0x1F
/* 577F4B0 8008F780 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 577F4B4 8008F784 0A0062A6 */  sh         $v0, 0xA($s3)
/* 577F4B8 8008F788 1400C28E */  lw         $v0, 0x14($s6)
/* 577F4BC 8008F78C 50000524 */  addiu      $a1, $zero, 0x50
/* 577F4C0 8008F790 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 577F4C4 8008F794 DBD8000C */  jal        func_8003636C
/* 577F4C8 8008F798 100062AE */   sw        $v0, 0x10($s3)
/* 577F4CC 8008F79C 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F4D0 8008F7A0 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_22_8008F7A4:
/* 577F4D4 8008F7A4 0C008426 */  addiu      $a0, $s4, 0xC
/* 577F4D8 8008F7A8 0000908E */  lw         $s0, 0x0($s4)
/* 577F4DC 8008F7AC 5E3C010C */  jal        func_8004F178
/* 577F4E0 8008F7B0 0C00C526 */   addiu     $a1, $s6, 0xC
/* 577F4E4 8008F7B4 0957010C */  jal        func_80055C24
/* 577F4E8 8008F7B8 21208002 */   addu      $a0, $s4, $zero
/* 577F4EC 8008F7BC 10000224 */  addiu      $v0, $zero, 0x10
/* 577F4F0 8008F7C0 3B000324 */  addiu      $v1, $zero, 0x3B
/* 577F4F4 8008F7C4 000002A6 */  sh         $v0, 0x0($s0)
/* 577F4F8 8008F7C8 80000224 */  addiu      $v0, $zero, 0x80
/* 577F4FC 8008F7CC 570083A2 */  sb         $v1, 0x57($s4)
/* 577F500 8008F7D0 540082A2 */  sb         $v0, 0x54($s4)
/* 577F504 8008F7D4 550082A2 */  sb         $v0, 0x55($s4)
/* 577F508 8008F7D8 560080A2 */  sb         $zero, 0x56($s4)
/* 577F50C 8008F7DC 3600C486 */  lh         $a0, 0x36($s6)
/* 577F510 8008F7E0 98010224 */  addiu      $v0, $zero, 0x198
/* 577F514 8008F7E4 04008210 */  beq        $a0, $v0, .Llevel_22_8008F7F8
/* 577F518 8008F7E8 01000224 */   addiu     $v0, $zero, 0x1
/* 577F51C 8008F7EC C2020224 */  addiu      $v0, $zero, 0x2C2
/* 577F520 8008F7F0 05008214 */  bne        $a0, $v0, .Llevel_22_8008F808
/* 577F524 8008F7F4 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_22_8008F7F8:
/* 577F528 8008F7F8 020002A2 */  sb         $v0, 0x2($s0)
/* 577F52C 8008F7FC 030002A2 */  sb         $v0, 0x3($s0)
/* 577F530 8008F800 103E0208 */  j          .Llevel_22_8008F840
/* 577F534 8008F804 7F000224 */   addiu     $v0, $zero, 0x7F
.Llevel_22_8008F808:
/* 577F538 8008F808 70020224 */  addiu      $v0, $zero, 0x270
/* 577F53C 8008F80C 0A008214 */  bne        $a0, $v0, .Llevel_22_8008F838
/* 577F540 8008F810 60000224 */   addiu     $v0, $zero, 0x60
/* 577F544 8008F814 02000224 */  addiu      $v0, $zero, 0x2
/* 577F548 8008F818 020002A2 */  sb         $v0, 0x2($s0)
/* 577F54C 8008F81C E0000224 */  addiu      $v0, $zero, 0xE0
/* 577F550 8008F820 540082A2 */  sb         $v0, 0x54($s4)
/* 577F554 8008F824 550082A2 */  sb         $v0, 0x55($s4)
/* 577F558 8008F828 560082A2 */  sb         $v0, 0x56($s4)
/* 577F55C 8008F82C 60000224 */  addiu      $v0, $zero, 0x60
/* 577F560 8008F830 0F3E0208 */  j          .Llevel_22_8008F83C
/* 577F564 8008F834 570083A2 */   sb        $v1, 0x57($s4)
.Llevel_22_8008F838:
/* 577F568 8008F838 020000A2 */  sb         $zero, 0x2($s0)
.Llevel_22_8008F83C:
/* 577F56C 8008F83C 030000A2 */  sb         $zero, 0x3($s0)
.Llevel_22_8008F840:
/* 577F570 8008F840 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 577F574 8008F844 0C008426 */  addiu      $a0, $s4, 0xC
/* 577F578 8008F848 0780103C */  lui        $s0, %hi(D_8006E020)
/* 577F57C 8008F84C 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 577F580 8008F850 21280002 */  addu       $a1, $s0, $zero
/* 577F584 8008F854 FE000224 */  addiu      $v0, $zero, 0xFE
/* 577F588 8008F858 CD3C010C */  jal        func_8004F334
/* 577F58C 8008F85C 470082A2 */   sb        $v0, 0x47($s4)
/* 577F590 8008F860 21204000 */  addu       $a0, $v0, $zero
/* 577F594 8008F864 0780023C */  lui        $v0, %hi(D_8006E028)
/* 577F598 8008F868 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 577F59C 8008F86C 1400858E */  lw         $a1, 0x14($s4)
/* 577F5A0 8008F870 21300000 */  addu       $a2, $zero, $zero
/* 577F5A4 8008F874 203A010C */  jal        func_8004E880
/* 577F5A8 8008F878 23284500 */   subu      $a1, $v0, $a1
/* 577F5AC 8008F87C 21300000 */  addu       $a2, $zero, $zero
/* 577F5B0 8008F880 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 577F5B4 8008F884 450082A2 */  sb         $v0, 0x45($s4)
/* 577F5B8 8008F888 0000038E */  lw         $v1, 0x0($s0)
/* 577F5BC 8008F88C 0C00848E */  lw         $a0, 0xC($s4)
/* 577F5C0 8008F890 0780023C */  lui        $v0, %hi(D_8006E024)
/* 577F5C4 8008F894 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 577F5C8 8008F898 1000858E */  lw         $a1, 0x10($s4)
/* 577F5CC 8008F89C 23206400 */  subu       $a0, $v1, $a0
/* 577F5D0 8008F8A0 203A010C */  jal        func_8004E880
/* 577F5D4 8008F8A4 23284500 */   subu      $a1, $v0, $a1
/* 577F5D8 8008F8A8 3C3E0208 */  j          .Llevel_22_8008F8F0
/* 577F5DC 8008F8AC 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_22_8008F8B0:
/* 577F5E0 8008F8B0 0C00C526 */  addiu      $a1, $s6, 0xC
/* 577F5E4 8008F8B4 0000838E */  lw         $v1, 0x0($s4)
/* 577F5E8 8008F8B8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 577F5EC 8008F8BC 373E0208 */  j          .Llevel_22_8008F8DC
/* 577F5F0 8008F8C0 100062AC */   sw        $v0, 0x10($v1)
.Llevel_22_8008F8C4:
/* 577F5F4 8008F8C4 0300C012 */  beqz       $s6, .Llevel_22_8008F8D4
/* 577F5F8 8008F8C8 0C008426 */   addiu     $a0, $s4, 0xC
/* 577F5FC 8008F8CC 373E0208 */  j          .Llevel_22_8008F8DC
/* 577F600 8008F8D0 0C00C526 */   addiu     $a1, $s6, 0xC
.Llevel_22_8008F8D4:
/* 577F604 8008F8D4 0780053C */  lui        $a1, %hi(D_80070328)
/* 577F608 8008F8D8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_22_8008F8DC:
/* 577F60C 8008F8DC 5E3C010C */  jal        func_8004F178
/* 577F610 8008F8E0 00000000 */   nop
/* 577F614 8008F8E4 21208002 */  addu       $a0, $s4, $zero
.Llevel_22_8008F8E8:
/* 577F618 8008F8E8 0957010C */  jal        func_80055C24
/* 577F61C 8008F8EC 00000000 */   nop
.Llevel_22_8008F8F0:
/* 577F620 8008F8F0 21108002 */  addu       $v0, $s4, $zero
.Llevel_22_8008F8F4:
/* 577F624 8008F8F4 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 577F628 8008F8F8 4800B68F */  lw         $s6, 0x48($sp)
/* 577F62C 8008F8FC 4400B58F */  lw         $s5, 0x44($sp)
/* 577F630 8008F900 4000B48F */  lw         $s4, 0x40($sp)
/* 577F634 8008F904 3C00B38F */  lw         $s3, 0x3C($sp)
/* 577F638 8008F908 3800B28F */  lw         $s2, 0x38($sp)
/* 577F63C 8008F90C 3400B18F */  lw         $s1, 0x34($sp)
/* 577F640 8008F910 3000B08F */  lw         $s0, 0x30($sp)
/* 577F644 8008F914 5000BD27 */  addiu      $sp, $sp, 0x50
/* 577F648 8008F918 0800E003 */  jr         $ra
/* 577F64C 8008F91C 00000000 */   nop
.size func_level_22_8008EB28, . - func_level_22_8008EB28
