.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8008B7B0
/* 5AA7CE0 8008B7B0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 5AA7CE4 8008B7B4 2400B1AF */  sw         $s1, 0x24($sp)
/* 5AA7CE8 8008B7B8 21888000 */  addu       $s1, $a0, $zero
/* 5AA7CEC 8008B7BC 3800B6AF */  sw         $s6, 0x38($sp)
/* 5AA7CF0 8008B7C0 21B0A000 */  addu       $s6, $a1, $zero
/* 5AA7CF4 8008B7C4 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 5AA7CF8 8008B7C8 3400B5AF */  sw         $s5, 0x34($sp)
/* 5AA7CFC 8008B7CC 3000B4AF */  sw         $s4, 0x30($sp)
/* 5AA7D00 8008B7D0 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 5AA7D04 8008B7D4 2800B2AF */  sw         $s2, 0x28($sp)
/* 5AA7D08 8008B7D8 9F56010C */  jal        func_80055A7C
/* 5AA7D0C 8008B7DC 2000B0AF */   sw        $s0, 0x20($sp)
/* 5AA7D10 8008B7E0 21A04000 */  addu       $s4, $v0, $zero
/* 5AA7D14 8008B7E4 03008016 */  bnez       $s4, .Llevel_23_8008B7F4
/* 5AA7D18 8008B7E8 21208002 */   addu      $a0, $s4, $zero
/* 5AA7D1C 8008B7EC 2D310208 */  j          .Llevel_23_8008C4B4
/* 5AA7D20 8008B7F0 21100000 */   addu      $v0, $zero, $zero
.Llevel_23_8008B7F4:
/* 5AA7D24 8008B7F4 21280000 */  addu       $a1, $zero, $zero
/* 5AA7D28 8008B7F8 0000908E */  lw         $s0, 0x0($s4)
/* 5AA7D2C 8008B7FC E439010C */  jal        func_8004E790
/* 5AA7D30 8008B800 58000624 */   addiu     $a2, $zero, 0x58
/* 5AA7D34 8008B804 21280000 */  addu       $a1, $zero, $zero
/* 5AA7D38 8008B808 18000624 */  addiu      $a2, $zero, 0x18
/* 5AA7D3C 8008B80C 21200002 */  addu       $a0, $s0, $zero
/* 5AA7D40 8008B810 E439010C */  jal        func_8004E790
/* 5AA7D44 8008B814 000084AE */   sw        $a0, 0x0($s4)
/* 5AA7D48 8008B818 1600C012 */  beqz       $s6, .Llevel_23_8008B874
/* 5AA7D4C 8008B81C 360091A6 */   sh        $s1, 0x36($s4)
/* 5AA7D50 8008B820 0780043C */  lui        $a0, %hi(D_8006C550)
/* 5AA7D54 8008B824 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 5AA7D58 8008B828 00000000 */  nop
/* 5AA7D5C 8008B82C 2320C402 */  subu       $a0, $s6, $a0
/* 5AA7D60 8008B830 40190400 */  sll        $v1, $a0, 5
/* 5AA7D64 8008B834 23186400 */  subu       $v1, $v1, $a0
/* 5AA7D68 8008B838 40190300 */  sll        $v1, $v1, 5
/* 5AA7D6C 8008B83C 21186400 */  addu       $v1, $v1, $a0
/* 5AA7D70 8008B840 C0100300 */  sll        $v0, $v1, 3
/* 5AA7D74 8008B844 21186200 */  addu       $v1, $v1, $v0
/* 5AA7D78 8008B848 C0130300 */  sll        $v0, $v1, 15
/* 5AA7D7C 8008B84C 23104300 */  subu       $v0, $v0, $v1
/* 5AA7D80 8008B850 80100200 */  sll        $v0, $v0, 2
/* 5AA7D84 8008B854 21104400 */  addu       $v0, $v0, $a0
/* 5AA7D88 8008B858 23100200 */  negu       $v0, $v0
/* 5AA7D8C 8008B85C C3180200 */  sra        $v1, $v0, 3
/* 5AA7D90 8008B860 0001622C */  sltiu      $v0, $v1, 0x100
/* 5AA7D94 8008B864 04004010 */  beqz       $v0, .Llevel_23_8008B878
/* 5AA7D98 8008B868 FF000224 */   addiu     $v0, $zero, 0xFF
/* 5AA7D9C 8008B86C 1F2E0208 */  j          .Llevel_23_8008B87C
/* 5AA7DA0 8008B870 3A0083A2 */   sb        $v1, 0x3A($s4)
.Llevel_23_8008B874:
/* 5AA7DA4 8008B874 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_23_8008B878:
/* 5AA7DA8 8008B878 3A0082A2 */  sb         $v0, 0x3A($s4)
.Llevel_23_8008B87C:
/* 5AA7DAC 8008B87C FBD3000C */  jal        func_80034FEC
/* 5AA7DB0 8008B880 21208002 */   addu      $a0, $s4, $zero
/* 5AA7DB4 8008B884 84000224 */  addiu      $v0, $zero, 0x84
/* 5AA7DB8 8008B888 91012212 */  beq        $s1, $v0, .Llevel_23_8008BED0
/* 5AA7DBC 8008B88C 8500222A */   slti      $v0, $s1, 0x85
/* 5AA7DC0 8008B890 19004010 */  beqz       $v0, .Llevel_23_8008B8F8
/* 5AA7DC4 8008B894 10000224 */   addiu     $v0, $zero, 0x10
/* 5AA7DC8 8008B898 1E012212 */  beq        $s1, $v0, .Llevel_23_8008BD14
/* 5AA7DCC 8008B89C 1100222A */   slti      $v0, $s1, 0x11
/* 5AA7DD0 8008B8A0 07004010 */  beqz       $v0, .Llevel_23_8008B8C0
/* 5AA7DD4 8008B8A4 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA7DD8 8008B8A8 2C002212 */  beq        $s1, $v0, .Llevel_23_8008B95C
/* 5AA7DDC 8008B8AC 08000224 */   addiu     $v0, $zero, 0x8
/* 5AA7DE0 8008B8B0 32002212 */  beq        $s1, $v0, .Llevel_23_8008B97C
/* 5AA7DE4 8008B8B4 0C008426 */   addiu     $a0, $s4, 0xC
/* 5AA7DE8 8008B8B8 21310208 */  j          .Llevel_23_8008C484
/* 5AA7DEC 8008B8BC 00000000 */   nop
.Llevel_23_8008B8C0:
/* 5AA7DF0 8008B8C0 54000224 */  addiu      $v0, $zero, 0x54
/* 5AA7DF4 8008B8C4 2C002212 */  beq        $s1, $v0, .Llevel_23_8008B978
/* 5AA7DF8 8008B8C8 5500222A */   slti      $v0, $s1, 0x55
/* 5AA7DFC 8008B8CC 05004010 */  beqz       $v0, .Llevel_23_8008B8E4
/* 5AA7E00 8008B8D0 50000224 */   addiu     $v0, $zero, 0x50
/* 5AA7E04 8008B8D4 FE002212 */  beq        $s1, $v0, .Llevel_23_8008BCD0
/* 5AA7E08 8008B8D8 00000000 */   nop
/* 5AA7E0C 8008B8DC 21310208 */  j          .Llevel_23_8008C484
/* 5AA7E10 8008B8E0 00000000 */   nop
.Llevel_23_8008B8E4:
/* 5AA7E14 8008B8E4 78000224 */  addiu      $v0, $zero, 0x78
/* 5AA7E18 8008B8E8 3D012212 */  beq        $s1, $v0, .Llevel_23_8008BDE0
/* 5AA7E1C 8008B8EC 00000000 */   nop
/* 5AA7E20 8008B8F0 21310208 */  j          .Llevel_23_8008C484
/* 5AA7E24 8008B8F4 00000000 */   nop
.Llevel_23_8008B8F8:
/* 5AA7E28 8008B8F8 3501222A */  slti       $v0, $s1, 0x135
/* 5AA7E2C 8008B8FC 10004010 */  beqz       $v0, .Llevel_23_8008B940
/* 5AA7E30 8008B900 3201222A */   slti      $v0, $s1, 0x132
/* 5AA7E34 8008B904 B3014010 */  beqz       $v0, .Llevel_23_8008BFD4
/* 5AA7E38 8008B908 04010224 */   addiu     $v0, $zero, 0x104
/* 5AA7E3C 8008B90C 7F012212 */  beq        $s1, $v0, .Llevel_23_8008BF0C
/* 5AA7E40 8008B910 0501222A */   slti      $v0, $s1, 0x105
/* 5AA7E44 8008B914 05004010 */  beqz       $v0, .Llevel_23_8008B92C
/* 5AA7E48 8008B918 D3000224 */   addiu     $v0, $zero, 0xD3
/* 5AA7E4C 8008B91C FE002212 */  beq        $s1, $v0, .Llevel_23_8008BD18
/* 5AA7E50 8008B920 10000324 */   addiu     $v1, $zero, 0x10
/* 5AA7E54 8008B924 21310208 */  j          .Llevel_23_8008C484
/* 5AA7E58 8008B928 00000000 */   nop
.Llevel_23_8008B92C:
/* 5AA7E5C 8008B92C 10010224 */  addiu      $v0, $zero, 0x110
/* 5AA7E60 8008B930 8B012212 */  beq        $s1, $v0, .Llevel_23_8008BF60
/* 5AA7E64 8008B934 00000000 */   nop
/* 5AA7E68 8008B938 21310208 */  j          .Llevel_23_8008C484
/* 5AA7E6C 8008B93C 00000000 */   nop
.Llevel_23_8008B940:
/* 5AA7E70 8008B940 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 5AA7E74 8008B944 69022212 */  beq        $s1, $v0, .Llevel_23_8008C2EC
/* 5AA7E78 8008B948 F7030224 */   addiu     $v0, $zero, 0x3F7
/* 5AA7E7C 8008B94C A2022212 */  beq        $s1, $v0, .Llevel_23_8008C3D8
/* 5AA7E80 8008B950 0C008426 */   addiu     $a0, $s4, 0xC
/* 5AA7E84 8008B954 21310208 */  j          .Llevel_23_8008C484
/* 5AA7E88 8008B958 00000000 */   nop
.Llevel_23_8008B95C:
/* 5AA7E8C 8008B95C 0957010C */  jal        func_80055C24
/* 5AA7E90 8008B960 21208002 */   addu      $a0, $s4, $zero
/* 5AA7E94 8008B964 18000224 */  addiu      $v0, $zero, 0x18
/* 5AA7E98 8008B968 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 5AA7E9C 8008B96C 40000224 */  addiu      $v0, $zero, 0x40
/* 5AA7EA0 8008B970 D52F0208 */  j          .Llevel_23_8008BF54
/* 5AA7EA4 8008B974 4A0082A2 */   sb        $v0, 0x4A($s4)
.Llevel_23_8008B978:
/* 5AA7EA8 8008B978 0C008426 */  addiu      $a0, $s4, 0xC
.Llevel_23_8008B97C:
/* 5AA7EAC 8008B97C 0C00C526 */  addiu      $a1, $s6, 0xC
/* 5AA7EB0 8008B980 0000958E */  lw         $s5, 0x0($s4)
/* 5AA7EB4 8008B984 20000224 */  addiu      $v0, $zero, 0x20
/* 5AA7EB8 8008B988 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 5AA7EBC 8008B98C 5E3C010C */  jal        func_8004F178
/* 5AA7EC0 8008B990 4E0082A2 */   sb        $v0, 0x4E($s4)
/* 5AA7EC4 8008B994 0957010C */  jal        func_80055C24
/* 5AA7EC8 8008B998 21208002 */   addu      $a0, $s4, $zero
/* 5AA7ECC 8008B99C 2C010424 */  addiu      $a0, $zero, 0x12C
/* 5AA7ED0 8008B9A0 DBD8000C */  jal        func_8003636C
/* 5AA7ED4 8008B9A4 34080524 */   addiu     $a1, $zero, 0x834
/* 5AA7ED8 8008B9A8 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 5AA7EDC 8008B9AC DC050524 */  addiu      $a1, $zero, 0x5DC
/* 5AA7EE0 8008B9B0 DBD8000C */  jal        func_8003636C
/* 5AA7EE4 8008B9B4 21904000 */   addu      $s2, $v0, $zero
/* 5AA7EE8 8008B9B8 4600D192 */  lbu        $s1, 0x46($s6)
/* 5AA7EEC 8008B9BC 21204002 */  addu       $a0, $s2, $zero
/* 5AA7EF0 8008B9C0 21882202 */  addu       $s1, $s1, $v0
/* 5AA7EF4 8008B9C4 8B3A010C */  jal        func_8004EA2C
/* 5AA7EF8 8008B9C8 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 5AA7EFC 8008B9CC 21202002 */  addu       $a0, $s1, $zero
/* 5AA7F00 8008B9D0 8B3A010C */  jal        func_8004EA2C
/* 5AA7F04 8008B9D4 21804000 */   addu      $s0, $v0, $zero
/* 5AA7F08 8008B9D8 78001324 */  addiu      $s3, $zero, 0x78
/* 5AA7F0C 8008B9DC 18005300 */  mult       $v0, $s3
/* 5AA7F10 8008B9E0 12400000 */  mflo       $t0
/* 5AA7F14 8008B9E4 83811000 */  sra        $s0, $s0, 6
/* 5AA7F18 8008B9E8 00000000 */  nop
/* 5AA7F1C 8008B9EC 18000802 */  mult       $s0, $t0
/* 5AA7F20 8008B9F0 21204002 */  addu       $a0, $s2, $zero
/* 5AA7F24 8008B9F4 12400000 */  mflo       $t0
/* 5AA7F28 8008B9F8 83140800 */  sra        $v0, $t0, 18
/* 5AA7F2C 8008B9FC 8B3A010C */  jal        func_8004EA2C
/* 5AA7F30 8008BA00 0000A2A6 */   sh        $v0, 0x0($s5)
/* 5AA7F34 8008BA04 21202002 */  addu       $a0, $s1, $zero
/* 5AA7F38 8008BA08 793A010C */  jal        func_8004E9E4
/* 5AA7F3C 8008BA0C 21804000 */   addu      $s0, $v0, $zero
/* 5AA7F40 8008BA10 18005300 */  mult       $v0, $s3
/* 5AA7F44 8008BA14 12400000 */  mflo       $t0
/* 5AA7F48 8008BA18 83811000 */  sra        $s0, $s0, 6
/* 5AA7F4C 8008BA1C 00000000 */  nop
/* 5AA7F50 8008BA20 18000802 */  mult       $s0, $t0
/* 5AA7F54 8008BA24 21204002 */  addu       $a0, $s2, $zero
/* 5AA7F58 8008BA28 12400000 */  mflo       $t0
/* 5AA7F5C 8008BA2C 83140800 */  sra        $v0, $t0, 18
/* 5AA7F60 8008BA30 793A010C */  jal        func_8004E9E4
/* 5AA7F64 8008BA34 0200A2A6 */   sh        $v0, 0x2($s5)
/* 5AA7F68 8008BA38 96000324 */  addiu      $v1, $zero, 0x96
/* 5AA7F6C 8008BA3C 18004300 */  mult       $v0, $v1
/* 5AA7F70 8008BA40 12400000 */  mflo       $t0
/* 5AA7F74 8008BA44 03130800 */  sra        $v0, $t0, 12
/* 5AA7F78 8008BA48 0400A2A6 */  sh         $v0, 0x4($s5)
/* 5AA7F7C 8008BA4C 5100C492 */  lbu        $a0, 0x51($s6)
/* 5AA7F80 8008BA50 00000000 */  nop
/* 5AA7F84 8008BA54 26008010 */  beqz       $a0, .Llevel_23_8008BAF0
/* 5AA7F88 8008BA58 1000033C */   lui       $v1, (0x100000 >> 16)
/* 5AA7F8C 8008BA5C 1800C28E */  lw         $v0, 0x18($s6)
/* 5AA7F90 8008BA60 00000000 */  nop
/* 5AA7F94 8008BA64 24104300 */  and        $v0, $v0, $v1
/* 5AA7F98 8008BA68 21004010 */  beqz       $v0, .Llevel_23_8008BAF0
/* 5AA7F9C 8008BA6C 40100400 */   sll       $v0, $a0, 1
/* 5AA7FA0 8008BA70 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA7FA4 8008BA74 21082200 */  addu       $at, $at, $v0
/* 5AA7FA8 8008BA78 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5AA7FAC 8008BA7C 00000000 */  nop
/* 5AA7FB0 8008BA80 80100300 */  sll        $v0, $v1, 2
/* 5AA7FB4 8008BA84 21104300 */  addu       $v0, $v0, $v1
/* 5AA7FB8 8008BA88 00190200 */  sll        $v1, $v0, 4
/* 5AA7FBC 8008BA8C 23186200 */  subu       $v1, $v1, $v0
/* 5AA7FC0 8008BA90 0000A296 */  lhu        $v0, 0x0($s5)
/* 5AA7FC4 8008BA94 C31A0300 */  sra        $v1, $v1, 11
/* 5AA7FC8 8008BA98 21104300 */  addu       $v0, $v0, $v1
/* 5AA7FCC 8008BA9C 0000A2A6 */  sh         $v0, 0x0($s5)
/* 5AA7FD0 8008BAA0 5100C292 */  lbu        $v0, 0x51($s6)
/* 5AA7FD4 8008BAA4 28000424 */  addiu      $a0, $zero, 0x28
/* 5AA7FD8 8008BAA8 40100200 */  sll        $v0, $v0, 1
/* 5AA7FDC 8008BAAC 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA7FE0 8008BAB0 21082200 */  addu       $at, $at, $v0
/* 5AA7FE4 8008BAB4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5AA7FE8 8008BAB8 46000524 */  addiu      $a1, $zero, 0x46
/* 5AA7FEC 8008BABC 80100300 */  sll        $v0, $v1, 2
/* 5AA7FF0 8008BAC0 21104300 */  addu       $v0, $v0, $v1
/* 5AA7FF4 8008BAC4 00190200 */  sll        $v1, $v0, 4
/* 5AA7FF8 8008BAC8 23186200 */  subu       $v1, $v1, $v0
/* 5AA7FFC 8008BACC 0200A296 */  lhu        $v0, 0x2($s5)
/* 5AA8000 8008BAD0 C31A0300 */  sra        $v1, $v1, 11
/* 5AA8004 8008BAD4 21104300 */  addu       $v0, $v0, $v1
/* 5AA8008 8008BAD8 DBD8000C */  jal        func_8003636C
/* 5AA800C 8008BADC 0200A2A6 */   sh        $v0, 0x2($s5)
/* 5AA8010 8008BAE0 0400A396 */  lhu        $v1, 0x4($s5)
/* 5AA8014 8008BAE4 00000000 */  nop
/* 5AA8018 8008BAE8 21186200 */  addu       $v1, $v1, $v0
/* 5AA801C 8008BAEC 0400A3A6 */  sh         $v1, 0x4($s5)
.Llevel_23_8008BAF0:
/* 5AA8020 8008BAF0 1800C28E */  lw         $v0, 0x18($s6)
/* 5AA8024 8008BAF4 0200033C */  lui        $v1, (0x20000 >> 16)
/* 5AA8028 8008BAF8 24104300 */  and        $v0, $v0, $v1
/* 5AA802C 8008BAFC 1B004010 */  beqz       $v0, .Llevel_23_8008BB6C
/* 5AA8030 8008BB00 00000000 */   nop
/* 5AA8034 8008BB04 4600C292 */  lbu        $v0, 0x46($s6)
/* 5AA8038 8008BB08 00000000 */  nop
/* 5AA803C 8008BB0C 40100200 */  sll        $v0, $v0, 1
/* 5AA8040 8008BB10 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA8044 8008BB14 21082200 */  addu       $at, $at, $v0
/* 5AA8048 8008BB18 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5AA804C 8008BB1C 00000000 */  nop
/* 5AA8050 8008BB20 C0100300 */  sll        $v0, $v1, 3
/* 5AA8054 8008BB24 23104300 */  subu       $v0, $v0, $v1
/* 5AA8058 8008BB28 C0100200 */  sll        $v0, $v0, 3
/* 5AA805C 8008BB2C 23104300 */  subu       $v0, $v0, $v1
/* 5AA8060 8008BB30 0000A396 */  lhu        $v1, 0x0($s5)
/* 5AA8064 8008BB34 83120200 */  sra        $v0, $v0, 10
/* 5AA8068 8008BB38 21186200 */  addu       $v1, $v1, $v0
/* 5AA806C 8008BB3C 0000A3A6 */  sh         $v1, 0x0($s5)
/* 5AA8070 8008BB40 4600C292 */  lbu        $v0, 0x46($s6)
/* 5AA8074 8008BB44 00000000 */  nop
/* 5AA8078 8008BB48 40100200 */  sll        $v0, $v0, 1
/* 5AA807C 8008BB4C 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA8080 8008BB50 21082200 */  addu       $at, $at, $v0
/* 5AA8084 8008BB54 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5AA8088 8008BB58 00000000 */  nop
/* 5AA808C 8008BB5C C0100300 */  sll        $v0, $v1, 3
/* 5AA8090 8008BB60 23104300 */  subu       $v0, $v0, $v1
/* 5AA8094 8008BB64 F42E0208 */  j          .Llevel_23_8008BBD0
/* 5AA8098 8008BB68 C0100200 */   sll       $v0, $v0, 3
.Llevel_23_8008BB6C:
/* 5AA809C 8008BB6C 4600C292 */  lbu        $v0, 0x46($s6)
/* 5AA80A0 8008BB70 00000000 */  nop
/* 5AA80A4 8008BB74 40100200 */  sll        $v0, $v0, 1
/* 5AA80A8 8008BB78 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA80AC 8008BB7C 21082200 */  addu       $at, $at, $v0
/* 5AA80B0 8008BB80 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5AA80B4 8008BB84 00000000 */  nop
/* 5AA80B8 8008BB88 C0100300 */  sll        $v0, $v1, 3
/* 5AA80BC 8008BB8C 21104300 */  addu       $v0, $v0, $v1
/* 5AA80C0 8008BB90 80100200 */  sll        $v0, $v0, 2
/* 5AA80C4 8008BB94 23104300 */  subu       $v0, $v0, $v1
/* 5AA80C8 8008BB98 0000A396 */  lhu        $v1, 0x0($s5)
/* 5AA80CC 8008BB9C 83120200 */  sra        $v0, $v0, 10
/* 5AA80D0 8008BBA0 21186200 */  addu       $v1, $v1, $v0
/* 5AA80D4 8008BBA4 0000A3A6 */  sh         $v1, 0x0($s5)
/* 5AA80D8 8008BBA8 4600C292 */  lbu        $v0, 0x46($s6)
/* 5AA80DC 8008BBAC 00000000 */  nop
/* 5AA80E0 8008BBB0 40100200 */  sll        $v0, $v0, 1
/* 5AA80E4 8008BBB4 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA80E8 8008BBB8 21082200 */  addu       $at, $at, $v0
/* 5AA80EC 8008BBBC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5AA80F0 8008BBC0 00000000 */  nop
/* 5AA80F4 8008BBC4 C0100300 */  sll        $v0, $v1, 3
/* 5AA80F8 8008BBC8 21104300 */  addu       $v0, $v0, $v1
/* 5AA80FC 8008BBCC 80100200 */  sll        $v0, $v0, 2
.Llevel_23_8008BBD0:
/* 5AA8100 8008BBD0 23104300 */  subu       $v0, $v0, $v1
/* 5AA8104 8008BBD4 0200A396 */  lhu        $v1, 0x2($s5)
/* 5AA8108 8008BBD8 83120200 */  sra        $v0, $v0, 10
/* 5AA810C 8008BBDC 21186200 */  addu       $v1, $v1, $v0
/* 5AA8110 8008BBE0 0200A3A6 */  sh         $v1, 0x2($s5)
/* 5AA8114 8008BBE4 36008386 */  lh         $v1, 0x36($s4)
/* 5AA8118 8008BBE8 0A000224 */  addiu      $v0, $zero, 0xA
/* 5AA811C 8008BBEC 1A006210 */  beq        $v1, $v0, .Llevel_23_8008BC58
/* 5AA8120 8008BBF0 1D000224 */   addiu     $v0, $zero, 0x1D
/* 5AA8124 8008BBF4 18006210 */  beq        $v1, $v0, .Llevel_23_8008BC58
/* 5AA8128 8008BBF8 00000000 */   nop
/* 5AA812C 8008BBFC 9171010C */  jal        rand
/* 5AA8130 8008BC00 00000000 */   nop
/* 5AA8134 8008BC04 9171010C */  jal        rand
/* 5AA8138 8008BC08 440082A2 */   sb        $v0, 0x44($s4)
/* 5AA813C 8008BC0C 9171010C */  jal        rand
/* 5AA8140 8008BC10 450082A2 */   sb        $v0, 0x45($s4)
/* 5AA8144 8008BC14 460082A2 */  sb         $v0, 0x46($s4)
/* 5AA8148 8008BC18 0000A286 */  lh         $v0, 0x0($s5)
/* 5AA814C 8008BC1C 0C00838E */  lw         $v1, 0xC($s4)
/* 5AA8150 8008BC20 40100200 */  sll        $v0, $v0, 1
/* 5AA8154 8008BC24 21186200 */  addu       $v1, $v1, $v0
/* 5AA8158 8008BC28 0C0083AE */  sw         $v1, 0xC($s4)
/* 5AA815C 8008BC2C 0200A286 */  lh         $v0, 0x2($s5)
/* 5AA8160 8008BC30 1000838E */  lw         $v1, 0x10($s4)
/* 5AA8164 8008BC34 40100200 */  sll        $v0, $v0, 1
/* 5AA8168 8008BC38 21186200 */  addu       $v1, $v1, $v0
/* 5AA816C 8008BC3C 100083AE */  sw         $v1, 0x10($s4)
/* 5AA8170 8008BC40 0400A286 */  lh         $v0, 0x4($s5)
/* 5AA8174 8008BC44 1400838E */  lw         $v1, 0x14($s4)
/* 5AA8178 8008BC48 40100200 */  sll        $v0, $v0, 1
/* 5AA817C 8008BC4C 21186200 */  addu       $v1, $v1, $v0
/* 5AA8180 8008BC50 1F2F0208 */  j          .Llevel_23_8008BC7C
/* 5AA8184 8008BC54 140083AE */   sw        $v1, 0x14($s4)
.Llevel_23_8008BC58:
/* 5AA8188 8008BC58 4400C292 */  lbu        $v0, 0x44($s6)
/* 5AA818C 8008BC5C 00000000 */  nop
/* 5AA8190 8008BC60 440082A2 */  sb         $v0, 0x44($s4)
/* 5AA8194 8008BC64 4500C292 */  lbu        $v0, 0x45($s6)
/* 5AA8198 8008BC68 00000000 */  nop
/* 5AA819C 8008BC6C 450082A2 */  sb         $v0, 0x45($s4)
/* 5AA81A0 8008BC70 4600C292 */  lbu        $v0, 0x46($s6)
/* 5AA81A4 8008BC74 00000000 */  nop
/* 5AA81A8 8008BC78 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_23_8008BC7C:
/* 5AA81AC 8008BC7C 9171010C */  jal        rand
/* 5AA81B0 8008BC80 00000000 */   nop
/* 5AA81B4 8008BC84 1F004230 */  andi       $v0, $v0, 0x1F
/* 5AA81B8 8008BC88 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 5AA81BC 8008BC8C 9171010C */  jal        rand
/* 5AA81C0 8008BC90 0600A2A6 */   sh        $v0, 0x6($s5)
/* 5AA81C4 8008BC94 1F004230 */  andi       $v0, $v0, 0x1F
/* 5AA81C8 8008BC98 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 5AA81CC 8008BC9C 9171010C */  jal        rand
/* 5AA81D0 8008BCA0 0800A2A6 */   sh        $v0, 0x8($s5)
/* 5AA81D4 8008BCA4 78000424 */  addiu      $a0, $zero, 0x78
/* 5AA81D8 8008BCA8 96000524 */  addiu      $a1, $zero, 0x96
/* 5AA81DC 8008BCAC 1F004230 */  andi       $v0, $v0, 0x1F
/* 5AA81E0 8008BCB0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 5AA81E4 8008BCB4 DBD8000C */  jal        func_8003636C
/* 5AA81E8 8008BCB8 0A00A2A6 */   sh        $v0, 0xA($s5)
/* 5AA81EC 8008BCBC 0C00A2A6 */  sh         $v0, 0xC($s5)
/* 5AA81F0 8008BCC0 01000224 */  addiu      $v0, $zero, 0x1
/* 5AA81F4 8008BCC4 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 5AA81F8 8008BCC8 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA81FC 8008BCCC 1200A0A6 */   sh        $zero, 0x12($s5)
.Llevel_23_8008BCD0:
/* 5AA8200 8008BCD0 0000908E */  lw         $s0, 0x0($s4)
/* 5AA8204 8008BCD4 0300C012 */  beqz       $s6, .Llevel_23_8008BCE4
/* 5AA8208 8008BCD8 0C00C526 */   addiu     $a1, $s6, 0xC
/* 5AA820C 8008BCDC 3C2F0208 */  j          .Llevel_23_8008BCF0
/* 5AA8210 8008BCE0 0C008426 */   addiu     $a0, $s4, 0xC
.Llevel_23_8008BCE4:
/* 5AA8214 8008BCE4 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA8218 8008BCE8 0780053C */  lui        $a1, %hi(D_80070328)
/* 5AA821C 8008BCEC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_23_8008BCF0:
/* 5AA8220 8008BCF0 5E3C010C */  jal        func_8004F178
/* 5AA8224 8008BCF4 00000000 */   nop
/* 5AA8228 8008BCF8 0957010C */  jal        func_80055C24
/* 5AA822C 8008BCFC 21208002 */   addu      $a0, $s4, $zero
/* 5AA8230 8008BD00 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA8234 8008BD04 100002AE */  sw         $v0, 0x10($s0)
/* 5AA8238 8008BD08 06000224 */  addiu      $v0, $zero, 0x6
/* 5AA823C 8008BD0C 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA8240 8008BD10 0C0002A2 */   sb        $v0, 0xC($s0)
.Llevel_23_8008BD14:
/* 5AA8244 8008BD14 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_23_8008BD18:
/* 5AA8248 8008BD18 36008286 */  lh         $v0, 0x36($s4)
/* 5AA824C 8008BD1C 0000918E */  lw         $s1, 0x0($s4)
/* 5AA8250 8008BD20 19004314 */  bne        $v0, $v1, .Llevel_23_8008BD88
/* 5AA8254 8008BD24 0C009026 */   addiu     $s0, $s4, 0xC
/* 5AA8258 8008BD28 0780043C */  lui        $a0, %hi(D_8006C784)
/* 5AA825C 8008BD2C 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 5AA8260 8008BD30 00000000 */  nop
/* 5AA8264 8008BD34 04008228 */  slti       $v0, $a0, 0x4
/* 5AA8268 8008BD38 03004010 */  beqz       $v0, .Llevel_23_8008BD48
/* 5AA826C 8008BD3C 0A000324 */   addiu     $v1, $zero, 0xA
/* 5AA8270 8008BD40 562F0208 */  j          .Llevel_23_8008BD58
/* 5AA8274 8008BD44 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_23_8008BD48:
/* 5AA8278 8008BD48 07008228 */  slti       $v0, $a0, 0x7
/* 5AA827C 8008BD4C 02004010 */  beqz       $v0, .Llevel_23_8008BD58
/* 5AA8280 8008BD50 00000000 */   nop
/* 5AA8284 8008BD54 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_23_8008BD58:
/* 5AA8288 8008BD58 0680043C */  lui        $a0, %hi(D_8006582C)
/* 5AA828C 8008BD5C 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 5AA8290 8008BD60 0000828C */  lw         $v0, 0x0($a0)
/* 5AA8294 8008BD64 00000000 */  nop
/* 5AA8298 8008BD68 01004224 */  addiu      $v0, $v0, 0x1
/* 5AA829C 8008BD6C 000082AC */  sw         $v0, 0x0($a0)
/* 5AA82A0 8008BD70 2A104300 */  slt        $v0, $v0, $v1
/* 5AA82A4 8008BD74 04004014 */  bnez       $v0, .Llevel_23_8008BD88
/* 5AA82A8 8008BD78 0C009026 */   addiu     $s0, $s4, 0xC
/* 5AA82AC 8008BD7C D3000224 */  addiu      $v0, $zero, 0xD3
/* 5AA82B0 8008BD80 000080AC */  sw         $zero, 0x0($a0)
/* 5AA82B4 8008BD84 360082A6 */  sh         $v0, 0x36($s4)
.Llevel_23_8008BD88:
/* 5AA82B8 8008BD88 21200002 */  addu       $a0, $s0, $zero
/* 5AA82BC 8008BD8C 5E3C010C */  jal        func_8004F178
/* 5AA82C0 8008BD90 0C00C526 */   addiu     $a1, $s6, 0xC
/* 5AA82C4 8008BD94 0957010C */  jal        func_80055C24
/* 5AA82C8 8008BD98 21208002 */   addu      $a0, $s4, $zero
/* 5AA82CC 8008BD9C 21202002 */  addu       $a0, $s1, $zero
/* 5AA82D0 8008BDA0 1400828E */  lw         $v0, 0x14($s4)
/* 5AA82D4 8008BDA4 21280002 */  addu       $a1, $s0, $zero
/* 5AA82D8 8008BDA8 00024224 */  addiu      $v0, $v0, 0x200
/* 5AA82DC 8008BDAC 5E3C010C */  jal        func_8004F178
/* 5AA82E0 8008BDB0 140082AE */   sw        $v0, 0x14($s4)
/* 5AA82E4 8008BDB4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA82E8 8008BDB8 1C0082AE */  sw         $v0, 0x1C($s4)
/* 5AA82EC 8008BDBC 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA82F0 8008BDC0 470082A2 */  sb         $v0, 0x47($s4)
/* 5AA82F4 8008BDC4 08070224 */  addiu      $v0, $zero, 0x708
/* 5AA82F8 8008BDC8 0E0022A6 */  sh         $v0, 0xE($s1)
/* 5AA82FC 8008BDCC 9171010C */  jal        rand
/* 5AA8300 8008BDD0 110020A2 */   sb        $zero, 0x11($s1)
/* 5AA8304 8008BDD4 FC004230 */  andi       $v0, $v0, 0xFC
/* 5AA8308 8008BDD8 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA830C 8008BDDC 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_23_8008BDE0:
/* 5AA8310 8008BDE0 3600C286 */  lh         $v0, 0x36($s6)
/* 5AA8314 8008BDE4 00000000 */  nop
/* 5AA8318 8008BDE8 06005110 */  beq        $v0, $s1, .Llevel_23_8008BE04
/* 5AA831C 8008BDEC 21280000 */   addu      $a1, $zero, $zero
/* 5AA8320 8008BDF0 0780043C */  lui        $a0, %hi(D_8006E394)
/* 5AA8324 8008BDF4 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 5AA8328 8008BDF8 000084AE */  sw         $a0, 0x0($s4)
/* 5AA832C 8008BDFC E439010C */  jal        func_8004E790
/* 5AA8330 8008BE00 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_23_8008BE04:
/* 5AA8334 8008BE04 0000908E */  lw         $s0, 0x0($s4)
/* 5AA8338 8008BE08 0957010C */  jal        func_80055C24
/* 5AA833C 8008BE0C 21208002 */   addu      $a0, $s4, $zero
/* 5AA8340 8008BE10 78000224 */  addiu      $v0, $zero, 0x78
/* 5AA8344 8008BE14 490080A2 */  sb         $zero, 0x49($s4)
/* 5AA8348 8008BE18 000000A6 */  sh         $zero, 0x0($s0)
/* 5AA834C 8008BE1C 080000A6 */  sh         $zero, 0x8($s0)
/* 5AA8350 8008BE20 060000A6 */  sh         $zero, 0x6($s0)
/* 5AA8354 8008BE24 040000A6 */  sh         $zero, 0x4($s0)
/* 5AA8358 8008BE28 0D0002A2 */  sb         $v0, 0xD($s0)
/* 5AA835C 8008BE2C 100000AE */  sw         $zero, 0x10($s0)
/* 5AA8360 8008BE30 0600C012 */  beqz       $s6, .Llevel_23_8008BE4C
/* 5AA8364 8008BE34 140000AE */   sw        $zero, 0x14($s0)
/* 5AA8368 8008BE38 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA836C 8008BE3C 5E3C010C */  jal        func_8004F178
/* 5AA8370 8008BE40 0C00C526 */   addiu     $a1, $s6, 0xC
/* 5AA8374 8008BE44 B22F0208 */  j          .Llevel_23_8008BEC8
/* 5AA8378 8008BE48 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_23_8008BE4C:
/* 5AA837C 8008BE4C 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA8380 8008BE50 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 5AA8384 8008BE54 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 5AA8388 8008BE58 0000A390 */  lbu        $v1, 0x0($a1)
/* 5AA838C 8008BE5C F2FFA524 */  addiu      $a1, $a1, -0xE
/* 5AA8390 8008BE60 80FF6324 */  addiu      $v1, $v1, -0x80
/* 5AA8394 8008BE64 FF006330 */  andi       $v1, $v1, 0xFF
/* 5AA8398 8008BE68 40180300 */  sll        $v1, $v1, 1
/* 5AA839C 8008BE6C 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA83A0 8008BE70 21082300 */  addu       $at, $at, $v1
/* 5AA83A4 8008BE74 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 5AA83A8 8008BE78 1000A627 */  addiu      $a2, $sp, 0x10
/* 5AA83AC 8008BE7C 40110700 */  sll        $v0, $a3, 5
/* 5AA83B0 8008BE80 23104700 */  subu       $v0, $v0, $a3
/* 5AA83B4 8008BE84 80100200 */  sll        $v0, $v0, 2
/* 5AA83B8 8008BE88 21104700 */  addu       $v0, $v0, $a3
/* 5AA83BC 8008BE8C 43120200 */  sra        $v0, $v0, 9
/* 5AA83C0 8008BE90 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA83C4 8008BE94 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA83C8 8008BE98 21082300 */  addu       $at, $at, $v1
/* 5AA83CC 8008BE9C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5AA83D0 8008BEA0 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 5AA83D4 8008BEA4 1800A2AF */  sw         $v0, 0x18($sp)
/* 5AA83D8 8008BEA8 40110300 */  sll        $v0, $v1, 5
/* 5AA83DC 8008BEAC 23104300 */  subu       $v0, $v0, $v1
/* 5AA83E0 8008BEB0 80100200 */  sll        $v0, $v0, 2
/* 5AA83E4 8008BEB4 21104300 */  addu       $v0, $v0, $v1
/* 5AA83E8 8008BEB8 43120200 */  sra        $v0, $v0, 9
/* 5AA83EC 8008BEBC 653C010C */  jal        func_8004F194
/* 5AA83F0 8008BEC0 1400A2AF */   sw        $v0, 0x14($sp)
/* 5AA83F4 8008BEC4 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_23_8008BEC8:
/* 5AA83F8 8008BEC8 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA83FC 8008BECC 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_23_8008BED0:
/* 5AA8400 8008BED0 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA8404 8008BED4 4600C292 */  lbu        $v0, 0x46($s6)
/* 5AA8408 8008BED8 0C00C526 */  addiu      $a1, $s6, 0xC
/* 5AA840C 8008BEDC 5E3C010C */  jal        func_8004F178
/* 5AA8410 8008BEE0 460082A2 */   sb        $v0, 0x46($s4)
/* 5AA8414 8008BEE4 0957010C */  jal        func_80055C24
/* 5AA8418 8008BEE8 21208002 */   addu      $a0, $s4, $zero
/* 5AA841C 8008BEEC 4ED7000C */  jal        func_80035D38
/* 5AA8420 8008BEF0 21208002 */   addu      $a0, $s4, $zero
/* 5AA8424 8008BEF4 02004010 */  beqz       $v0, .Llevel_23_8008BF00
/* 5AA8428 8008BEF8 00000000 */   nop
/* 5AA842C 8008BEFC 140082AE */  sw         $v0, 0x14($s4)
.Llevel_23_8008BF00:
/* 5AA8430 8008BF00 06000224 */  addiu      $v0, $zero, 0x6
/* 5AA8434 8008BF04 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA8438 8008BF08 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_23_8008BF0C:
/* 5AA843C 8008BF0C 0957010C */  jal        func_80055C24
/* 5AA8440 8008BF10 21208002 */   addu      $a0, $s4, $zero
/* 5AA8444 8008BF14 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA8448 8008BF18 0E00C012 */  beqz       $s6, .Llevel_23_8008BF54
/* 5AA844C 8008BF1C 540082A2 */   sb        $v0, 0x54($s4)
/* 5AA8450 8008BF20 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA8454 8008BF24 0000828E */  lw         $v0, 0x0($s4)
/* 5AA8458 8008BF28 0C00C526 */  addiu      $a1, $s6, 0xC
/* 5AA845C 8008BF2C 5E3C010C */  jal        func_8004F178
/* 5AA8460 8008BF30 000056AC */   sw        $s6, 0x0($v0)
/* 5AA8464 8008BF34 0A000224 */  addiu      $v0, $zero, 0xA
/* 5AA8468 8008BF38 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 5AA846C 8008BF3C 1400828E */  lw         $v0, 0x14($s4)
/* 5AA8470 8008BF40 08000324 */  addiu      $v1, $zero, 0x8
/* 5AA8474 8008BF44 4C0083A2 */  sb         $v1, 0x4C($s4)
/* 5AA8478 8008BF48 00044224 */  addiu      $v0, $v0, 0x400
/* 5AA847C 8008BF4C 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA8480 8008BF50 140082AE */   sw        $v0, 0x14($s4)
.Llevel_23_8008BF54:
/* 5AA8484 8008BF54 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA8488 8008BF58 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA848C 8008BF5C 1C0082AE */   sw        $v0, 0x1C($s4)
.Llevel_23_8008BF60:
/* 5AA8490 8008BF60 0780053C */  lui        $a1, %hi(D_80070328)
/* 5AA8494 8008BF64 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5AA8498 8008BF68 0000908E */  lw         $s0, 0x0($s4)
/* 5AA849C 8008BF6C 5E3C010C */  jal        func_8004F178
/* 5AA84A0 8008BF70 0C008426 */   addiu     $a0, $s4, 0xC
/* 5AA84A4 8008BF74 1400828E */  lw         $v0, 0x14($s4)
/* 5AA84A8 8008BF78 00000000 */  nop
/* 5AA84AC 8008BF7C 00044224 */  addiu      $v0, $v0, 0x400
/* 5AA84B0 8008BF80 140082AE */  sw         $v0, 0x14($s4)
/* 5AA84B4 8008BF84 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5AA84B8 8008BF88 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5AA84BC 8008BF8C 21208002 */  addu       $a0, $s4, $zero
/* 5AA84C0 8008BF90 0957010C */  jal        func_80055C24
/* 5AA84C4 8008BF94 460082A2 */   sb        $v0, 0x46($s4)
/* 5AA84C8 8008BF98 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA84CC 8008BF9C 020002A2 */  sb         $v0, 0x2($s0)
/* 5AA84D0 8008BFA0 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5AA84D4 8008BFA4 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5AA84D8 8008BFA8 00000000 */  nop
/* 5AA84DC 8008BFAC 030002A2 */  sb         $v0, 0x3($s0)
/* 5AA84E0 8008BFB0 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 5AA84E4 8008BFB4 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 5AA84E8 8008BFB8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5AA84EC 8008BFBC 100002AE */  sw         $v0, 0x10($s0)
/* 5AA84F0 8008BFC0 040003A2 */  sb         $v1, 0x4($s0)
/* 5AA84F4 8008BFC4 410080A2 */  sb         $zero, 0x41($s4)
/* 5AA84F8 8008BFC8 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 5AA84FC 8008BFCC 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA8500 8008BFD0 4D0080A2 */   sb        $zero, 0x4D($s4)
.Llevel_23_8008BFD4:
/* 5AA8504 8008BFD4 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA8508 8008BFD8 0C00C526 */  addiu      $a1, $s6, 0xC
/* 5AA850C 8008BFDC 0000938E */  lw         $s3, 0x0($s4)
/* 5AA8510 8008BFE0 20000224 */  addiu      $v0, $zero, 0x20
/* 5AA8514 8008BFE4 5E3C010C */  jal        func_8004F178
/* 5AA8518 8008BFE8 4C0082A2 */   sb        $v0, 0x4C($s4)
/* 5AA851C 8008BFEC 0957010C */  jal        func_80055C24
/* 5AA8520 8008BFF0 21208002 */   addu      $a0, $s4, $zero
/* 5AA8524 8008BFF4 9171010C */  jal        rand
/* 5AA8528 8008BFF8 00000000 */   nop
/* 5AA852C 8008BFFC 9171010C */  jal        rand
/* 5AA8530 8008C000 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 5AA8534 8008C004 FF075130 */  andi       $s1, $v0, 0x7FF
/* 5AA8538 8008C008 8B3A010C */  jal        func_8004EA2C
/* 5AA853C 8008C00C 21202002 */   addu      $a0, $s1, $zero
/* 5AA8540 8008C010 21204002 */  addu       $a0, $s2, $zero
/* 5AA8544 8008C014 8B3A010C */  jal        func_8004EA2C
/* 5AA8548 8008C018 21804000 */   addu      $s0, $v0, $zero
/* 5AA854C 8008C01C 18000202 */  mult       $s0, $v0
/* 5AA8550 8008C020 12400000 */  mflo       $t0
/* 5AA8554 8008C024 4900C292 */  lbu        $v0, 0x49($s6)
/* 5AA8558 8008C028 00000000 */  nop
/* 5AA855C 8008C02C 18000201 */  mult       $t0, $v0
/* 5AA8560 8008C030 21202002 */  addu       $a0, $s1, $zero
/* 5AA8564 8008C034 12400000 */  mflo       $t0
/* 5AA8568 8008C038 03160800 */  sra        $v0, $t0, 24
/* 5AA856C 8008C03C 8B3A010C */  jal        func_8004EA2C
/* 5AA8570 8008C040 000062A6 */   sh        $v0, 0x0($s3)
/* 5AA8574 8008C044 21204002 */  addu       $a0, $s2, $zero
/* 5AA8578 8008C048 793A010C */  jal        func_8004E9E4
/* 5AA857C 8008C04C 21804000 */   addu      $s0, $v0, $zero
/* 5AA8580 8008C050 18000202 */  mult       $s0, $v0
/* 5AA8584 8008C054 12400000 */  mflo       $t0
/* 5AA8588 8008C058 4900C292 */  lbu        $v0, 0x49($s6)
/* 5AA858C 8008C05C 00000000 */  nop
/* 5AA8590 8008C060 18000201 */  mult       $t0, $v0
/* 5AA8594 8008C064 21202002 */  addu       $a0, $s1, $zero
/* 5AA8598 8008C068 12400000 */  mflo       $t0
/* 5AA859C 8008C06C 03160800 */  sra        $v0, $t0, 24
/* 5AA85A0 8008C070 793A010C */  jal        func_8004E9E4
/* 5AA85A4 8008C074 020062A6 */   sh        $v0, 0x2($s3)
/* 5AA85A8 8008C078 4900C392 */  lbu        $v1, 0x49($s6)
/* 5AA85AC 8008C07C 00000000 */  nop
/* 5AA85B0 8008C080 18004300 */  mult       $v0, $v1
/* 5AA85B4 8008C084 12400000 */  mflo       $t0
/* 5AA85B8 8008C088 03130800 */  sra        $v0, $t0, 12
/* 5AA85BC 8008C08C 040062A6 */  sh         $v0, 0x4($s3)
/* 5AA85C0 8008C090 1800C38E */  lw         $v1, 0x18($s6)
/* 5AA85C4 8008C094 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 5AA85C8 8008C098 24106200 */  and        $v0, $v1, $v0
/* 5AA85CC 8008C09C 2C004010 */  beqz       $v0, .Llevel_23_8008C150
/* 5AA85D0 8008C0A0 21300000 */   addu      $a2, $zero, $zero
/* 5AA85D4 8008C0A4 0780103C */  lui        $s0, %hi(D_80070328)
/* 5AA85D8 8008C0A8 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 5AA85DC 8008C0AC 0C00838E */  lw         $v1, 0xC($s4)
/* 5AA85E0 8008C0B0 0000048E */  lw         $a0, 0x0($s0)
/* 5AA85E4 8008C0B4 1000828E */  lw         $v0, 0x10($s4)
/* 5AA85E8 8008C0B8 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 5AA85EC 8008C0BC 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 5AA85F0 8008C0C0 23206400 */  subu       $a0, $v1, $a0
/* 5AA85F4 8008C0C4 203A010C */  jal        func_8004E880
/* 5AA85F8 8008C0C8 23284500 */   subu      $a1, $v0, $a1
/* 5AA85FC 8008C0CC 40100200 */  sll        $v0, $v0, 1
/* 5AA8600 8008C0D0 21300000 */  addu       $a2, $zero, $zero
/* 5AA8604 8008C0D4 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA8608 8008C0D8 21082200 */  addu       $at, $at, $v0
/* 5AA860C 8008C0DC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 5AA8610 8008C0E0 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 5AA8614 8008C0E4 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 5AA8618 8008C0E8 03110200 */  sra        $v0, $v0, 4
/* 5AA861C 8008C0EC 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA8620 8008C0F0 0C00838E */  lw         $v1, 0xC($s4)
/* 5AA8624 8008C0F4 0000048E */  lw         $a0, 0x0($s0)
/* 5AA8628 8008C0F8 1000828E */  lw         $v0, 0x10($s4)
/* 5AA862C 8008C0FC 23206400 */  subu       $a0, $v1, $a0
/* 5AA8630 8008C100 203A010C */  jal        func_8004E880
/* 5AA8634 8008C104 23284500 */   subu      $a1, $v0, $a1
/* 5AA8638 8008C108 40100200 */  sll        $v0, $v0, 1
/* 5AA863C 8008C10C 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA8640 8008C110 21082200 */  addu       $at, $at, $v0
/* 5AA8644 8008C114 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 5AA8648 8008C118 1000A38F */  lw         $v1, 0x10($sp)
/* 5AA864C 8008C11C 1800A0AF */  sw         $zero, 0x18($sp)
/* 5AA8650 8008C120 03110200 */  sra        $v0, $v0, 4
/* 5AA8654 8008C124 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AA8658 8008C128 00006296 */  lhu        $v0, 0x0($s3)
/* 5AA865C 8008C12C 00000000 */  nop
/* 5AA8660 8008C130 21104300 */  addu       $v0, $v0, $v1
/* 5AA8664 8008C134 000062A6 */  sh         $v0, 0x0($s3)
/* 5AA8668 8008C138 1400A38F */  lw         $v1, 0x14($sp)
/* 5AA866C 8008C13C 02006296 */  lhu        $v0, 0x2($s3)
/* 5AA8670 8008C140 00000000 */  nop
/* 5AA8674 8008C144 21104300 */  addu       $v0, $v0, $v1
/* 5AA8678 8008C148 6B300208 */  j          .Llevel_23_8008C1AC
/* 5AA867C 8008C14C 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_23_8008C150:
/* 5AA8680 8008C150 0200023C */  lui        $v0, (0x20000 >> 16)
/* 5AA8684 8008C154 24106200 */  and        $v0, $v1, $v0
/* 5AA8688 8008C158 14004010 */  beqz       $v0, .Llevel_23_8008C1AC
/* 5AA868C 8008C15C 04000224 */   addiu     $v0, $zero, 0x4
/* 5AA8690 8008C160 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 5AA8694 8008C164 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 5AA8698 8008C168 00000000 */  nop
/* 5AA869C 8008C16C 03006210 */  beq        $v1, $v0, .Llevel_23_8008C17C
/* 5AA86A0 8008C170 0C000224 */   addiu     $v0, $zero, 0xC
/* 5AA86A4 8008C174 0D006214 */  bne        $v1, $v0, .Llevel_23_8008C1AC
/* 5AA86A8 8008C178 00000000 */   nop
.Llevel_23_8008C17C:
/* 5AA86AC 8008C17C 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 5AA86B0 8008C180 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 5AA86B4 8008C184 00006396 */  lhu        $v1, 0x0($s3)
/* 5AA86B8 8008C188 83110200 */  sra        $v0, $v0, 6
/* 5AA86BC 8008C18C 21186200 */  addu       $v1, $v1, $v0
/* 5AA86C0 8008C190 000063A6 */  sh         $v1, 0x0($s3)
/* 5AA86C4 8008C194 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 5AA86C8 8008C198 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 5AA86CC 8008C19C 02006396 */  lhu        $v1, 0x2($s3)
/* 5AA86D0 8008C1A0 83110200 */  sra        $v0, $v0, 6
/* 5AA86D4 8008C1A4 21186200 */  addu       $v1, $v1, $v0
/* 5AA86D8 8008C1A8 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_23_8008C1AC:
/* 5AA86DC 8008C1AC 5100C492 */  lbu        $a0, 0x51($s6)
/* 5AA86E0 8008C1B0 00000000 */  nop
/* 5AA86E4 8008C1B4 26008010 */  beqz       $a0, .Llevel_23_8008C250
/* 5AA86E8 8008C1B8 1000033C */   lui       $v1, (0x100000 >> 16)
/* 5AA86EC 8008C1BC 1800C28E */  lw         $v0, 0x18($s6)
/* 5AA86F0 8008C1C0 00000000 */  nop
/* 5AA86F4 8008C1C4 24104300 */  and        $v0, $v0, $v1
/* 5AA86F8 8008C1C8 21004010 */  beqz       $v0, .Llevel_23_8008C250
/* 5AA86FC 8008C1CC 40100400 */   sll       $v0, $a0, 1
/* 5AA8700 8008C1D0 0680013C */  lui        $at, %hi(D_80065920)
/* 5AA8704 8008C1D4 21082200 */  addu       $at, $at, $v0
/* 5AA8708 8008C1D8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5AA870C 8008C1DC 00000000 */  nop
/* 5AA8710 8008C1E0 80100300 */  sll        $v0, $v1, 2
/* 5AA8714 8008C1E4 21104300 */  addu       $v0, $v0, $v1
/* 5AA8718 8008C1E8 00190200 */  sll        $v1, $v0, 4
/* 5AA871C 8008C1EC 23186200 */  subu       $v1, $v1, $v0
/* 5AA8720 8008C1F0 00006296 */  lhu        $v0, 0x0($s3)
/* 5AA8724 8008C1F4 C31A0300 */  sra        $v1, $v1, 11
/* 5AA8728 8008C1F8 21104300 */  addu       $v0, $v0, $v1
/* 5AA872C 8008C1FC 000062A6 */  sh         $v0, 0x0($s3)
/* 5AA8730 8008C200 5100C292 */  lbu        $v0, 0x51($s6)
/* 5AA8734 8008C204 28000424 */  addiu      $a0, $zero, 0x28
/* 5AA8738 8008C208 40100200 */  sll        $v0, $v0, 1
/* 5AA873C 8008C20C 0680013C */  lui        $at, %hi(D_800658A0)
/* 5AA8740 8008C210 21082200 */  addu       $at, $at, $v0
/* 5AA8744 8008C214 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5AA8748 8008C218 46000524 */  addiu      $a1, $zero, 0x46
/* 5AA874C 8008C21C 80100300 */  sll        $v0, $v1, 2
/* 5AA8750 8008C220 21104300 */  addu       $v0, $v0, $v1
/* 5AA8754 8008C224 00190200 */  sll        $v1, $v0, 4
/* 5AA8758 8008C228 23186200 */  subu       $v1, $v1, $v0
/* 5AA875C 8008C22C 02006296 */  lhu        $v0, 0x2($s3)
/* 5AA8760 8008C230 C31A0300 */  sra        $v1, $v1, 11
/* 5AA8764 8008C234 21104300 */  addu       $v0, $v0, $v1
/* 5AA8768 8008C238 DBD8000C */  jal        func_8003636C
/* 5AA876C 8008C23C 020062A6 */   sh        $v0, 0x2($s3)
/* 5AA8770 8008C240 04006396 */  lhu        $v1, 0x4($s3)
/* 5AA8774 8008C244 00000000 */  nop
/* 5AA8778 8008C248 21186200 */  addu       $v1, $v1, $v0
/* 5AA877C 8008C24C 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_23_8008C250:
/* 5AA8780 8008C250 00006286 */  lh         $v0, 0x0($s3)
/* 5AA8784 8008C254 0C00838E */  lw         $v1, 0xC($s4)
/* 5AA8788 8008C258 80100200 */  sll        $v0, $v0, 2
/* 5AA878C 8008C25C 21186200 */  addu       $v1, $v1, $v0
/* 5AA8790 8008C260 0C0083AE */  sw         $v1, 0xC($s4)
/* 5AA8794 8008C264 02006286 */  lh         $v0, 0x2($s3)
/* 5AA8798 8008C268 1000838E */  lw         $v1, 0x10($s4)
/* 5AA879C 8008C26C 80100200 */  sll        $v0, $v0, 2
/* 5AA87A0 8008C270 21186200 */  addu       $v1, $v1, $v0
/* 5AA87A4 8008C274 100083AE */  sw         $v1, 0x10($s4)
/* 5AA87A8 8008C278 04006286 */  lh         $v0, 0x4($s3)
/* 5AA87AC 8008C27C 1400838E */  lw         $v1, 0x14($s4)
/* 5AA87B0 8008C280 80100200 */  sll        $v0, $v0, 2
/* 5AA87B4 8008C284 21186200 */  addu       $v1, $v1, $v0
/* 5AA87B8 8008C288 9171010C */  jal        rand
/* 5AA87BC 8008C28C 140083AE */   sw        $v1, 0x14($s4)
/* 5AA87C0 8008C290 9171010C */  jal        rand
/* 5AA87C4 8008C294 450082A2 */   sb        $v0, 0x45($s4)
/* 5AA87C8 8008C298 9171010C */  jal        rand
/* 5AA87CC 8008C29C 460082A2 */   sb        $v0, 0x46($s4)
/* 5AA87D0 8008C2A0 1F004230 */  andi       $v0, $v0, 0x1F
/* 5AA87D4 8008C2A4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 5AA87D8 8008C2A8 9171010C */  jal        rand
/* 5AA87DC 8008C2AC 060062A6 */   sh        $v0, 0x6($s3)
/* 5AA87E0 8008C2B0 1F004230 */  andi       $v0, $v0, 0x1F
/* 5AA87E4 8008C2B4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 5AA87E8 8008C2B8 9171010C */  jal        rand
/* 5AA87EC 8008C2BC 080062A6 */   sh        $v0, 0x8($s3)
/* 5AA87F0 8008C2C0 32000424 */  addiu      $a0, $zero, 0x32
/* 5AA87F4 8008C2C4 1F004230 */  andi       $v0, $v0, 0x1F
/* 5AA87F8 8008C2C8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 5AA87FC 8008C2CC 0A0062A6 */  sh         $v0, 0xA($s3)
/* 5AA8800 8008C2D0 1400C28E */  lw         $v0, 0x14($s6)
/* 5AA8804 8008C2D4 50000524 */  addiu      $a1, $zero, 0x50
/* 5AA8808 8008C2D8 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 5AA880C 8008C2DC DBD8000C */  jal        func_8003636C
/* 5AA8810 8008C2E0 100062AE */   sw        $v0, 0x10($s3)
/* 5AA8814 8008C2E4 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA8818 8008C2E8 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_23_8008C2EC:
/* 5AA881C 8008C2EC 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA8820 8008C2F0 0000908E */  lw         $s0, 0x0($s4)
/* 5AA8824 8008C2F4 5E3C010C */  jal        func_8004F178
/* 5AA8828 8008C2F8 0C00C526 */   addiu     $a1, $s6, 0xC
/* 5AA882C 8008C2FC 21208002 */  addu       $a0, $s4, $zero
/* 5AA8830 8008C300 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 5AA8834 8008C304 4457010C */  jal        func_80055D10
/* 5AA8838 8008C308 4D0080A2 */   sb        $zero, 0x4D($s4)
/* 5AA883C 8008C30C FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA8840 8008C310 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 5AA8844 8008C314 1400828E */  lw         $v0, 0x14($s4)
/* 5AA8848 8008C318 410080A2 */  sb         $zero, 0x41($s4)
/* 5AA884C 8008C31C 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 5AA8850 8008C320 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 5AA8854 8008C324 4600C392 */  lbu        $v1, 0x46($s6)
/* 5AA8858 8008C328 00014224 */  addiu      $v0, $v0, 0x100
/* 5AA885C 8008C32C 460083A2 */  sb         $v1, 0x46($s4)
/* 5AA8860 8008C330 140082AE */  sw         $v0, 0x14($s4)
/* 5AA8864 8008C334 0000C28E */  lw         $v0, 0x0($s6)
/* 5AA8868 8008C338 00000000 */  nop
/* 5AA886C 8008C33C 1000438C */  lw         $v1, 0x10($v0)
/* 5AA8870 8008C340 00000000 */  nop
/* 5AA8874 8008C344 5A006004 */  bltz       $v1, .Llevel_23_8008C4B0
/* 5AA8878 8008C348 40100300 */   sll       $v0, $v1, 1
/* 5AA887C 8008C34C 21104300 */  addu       $v0, $v0, $v1
/* 5AA8880 8008C350 80100200 */  sll        $v0, $v0, 2
/* 5AA8884 8008C354 23104300 */  subu       $v0, $v0, $v1
/* 5AA8888 8008C358 0780033C */  lui        $v1, %hi(D_8006C550)
/* 5AA888C 8008C35C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 5AA8890 8008C360 C0100200 */  sll        $v0, $v0, 3
/* 5AA8894 8008C364 21886200 */  addu       $s1, $v1, $v0
/* 5AA8898 8008C368 0000238E */  lw         $v1, 0x0($s1)
/* 5AA889C 8008C36C 00000000 */  nop
/* 5AA88A0 8008C370 0000628C */  lw         $v0, 0x0($v1)
/* 5AA88A4 8008C374 00000000 */  nop
/* 5AA88A8 8008C378 14004224 */  addiu      $v0, $v0, 0x14
/* 5AA88AC 8008C37C 21106200 */  addu       $v0, $v1, $v0
/* 5AA88B0 8008C380 040002AE */  sw         $v0, 0x4($s0)
/* 5AA88B4 8008C384 0000628C */  lw         $v0, 0x0($v1)
/* 5AA88B8 8008C388 00000000 */  nop
/* 5AA88BC 8008C38C B00E4224 */  addiu      $v0, $v0, 0xEB0
/* 5AA88C0 8008C390 000062AC */  sw         $v0, 0x0($v1)
/* 5AA88C4 8008C394 102C4228 */  slti       $v0, $v0, 0x2C10
/* 5AA88C8 8008C398 02004014 */  bnez       $v0, .Llevel_23_8008C3A4
/* 5AA88CC 8008C39C 21280000 */   addu      $a1, $zero, $zero
/* 5AA88D0 8008C3A0 000060AC */  sw         $zero, 0x0($v1)
.Llevel_23_8008C3A4:
/* 5AA88D4 8008C3A4 0400048E */  lw         $a0, 0x4($s0)
/* 5AA88D8 8008C3A8 EB39010C */  jal        func_8004E7AC
/* 5AA88DC 8008C3AC B00E0624 */   addiu     $a2, $zero, 0xEB0
/* 5AA88E0 8008C3B0 20000224 */  addiu      $v0, $zero, 0x20
/* 5AA88E4 8008C3B4 000002A6 */  sh         $v0, 0x0($s0)
/* 5AA88E8 8008C3B8 19000224 */  addiu      $v0, $zero, 0x19
/* 5AA88EC 8008C3BC 020002A6 */  sh         $v0, 0x2($s0)
/* 5AA88F0 8008C3C0 0F000224 */  addiu      $v0, $zero, 0xF
/* 5AA88F4 8008C3C4 140002A6 */  sh         $v0, 0x14($s0)
/* 5AA88F8 8008C3C8 1E000224 */  addiu      $v0, $zero, 0x1E
/* 5AA88FC 8008C3CC 160002A6 */  sh         $v0, 0x16($s0)
/* 5AA8900 8008C3D0 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA8904 8008C3D4 100011AE */   sw        $s1, 0x10($s0)
.Llevel_23_8008C3D8:
/* 5AA8908 8008C3D8 0000918E */  lw         $s1, 0x0($s4)
/* 5AA890C 8008C3DC 5E3C010C */  jal        func_8004F178
/* 5AA8910 8008C3E0 0C00C526 */   addiu     $a1, $s6, 0xC
/* 5AA8914 8008C3E4 21208002 */  addu       $a0, $s4, $zero
/* 5AA8918 8008C3E8 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 5AA891C 8008C3EC 4457010C */  jal        func_80055D10
/* 5AA8920 8008C3F0 4D0080A2 */   sb        $zero, 0x4D($s4)
/* 5AA8924 8008C3F4 410080A2 */  sb         $zero, 0x41($s4)
/* 5AA8928 8008C3F8 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 5AA892C 8008C3FC 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 5AA8930 8008C400 4900C392 */  lbu        $v1, 0x49($s6)
/* 5AA8934 8008C404 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA8938 8008C408 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 5AA893C 8008C40C 1400828E */  lw         $v0, 0x14($s4)
/* 5AA8940 8008C410 480083A2 */  sb         $v1, 0x48($s4)
/* 5AA8944 8008C414 4600C392 */  lbu        $v1, 0x46($s6)
/* 5AA8948 8008C418 00014224 */  addiu      $v0, $v0, 0x100
/* 5AA894C 8008C41C 140082AE */  sw         $v0, 0x14($s4)
/* 5AA8950 8008C420 460083A2 */  sb         $v1, 0x46($s4)
/* 5AA8954 8008C424 0000C28E */  lw         $v0, 0x0($s6)
/* 5AA8958 8008C428 00000000 */  nop
/* 5AA895C 8008C42C 1400438C */  lw         $v1, 0x14($v0)
/* 5AA8960 8008C430 00000000 */  nop
/* 5AA8964 8008C434 1E006004 */  bltz       $v1, .Llevel_23_8008C4B0
/* 5AA8968 8008C438 21280000 */   addu      $a1, $zero, $zero
/* 5AA896C 8008C43C 40100300 */  sll        $v0, $v1, 1
/* 5AA8970 8008C440 21104300 */  addu       $v0, $v0, $v1
/* 5AA8974 8008C444 80100200 */  sll        $v0, $v0, 2
/* 5AA8978 8008C448 23104300 */  subu       $v0, $v0, $v1
/* 5AA897C 8008C44C 0780103C */  lui        $s0, %hi(D_8006C550)
/* 5AA8980 8008C450 50C5108E */  lw         $s0, %lo(D_8006C550)($s0)
/* 5AA8984 8008C454 C0100200 */  sll        $v0, $v0, 3
/* 5AA8988 8008C458 21800202 */  addu       $s0, $s0, $v0
/* 5AA898C 8008C45C 0000048E */  lw         $a0, 0x0($s0)
/* 5AA8990 8008C460 C0090624 */  addiu      $a2, $zero, 0x9C0
/* 5AA8994 8008C464 14008424 */  addiu      $a0, $a0, 0x14
/* 5AA8998 8008C468 EB39010C */  jal        func_8004E7AC
/* 5AA899C 8008C46C 040024AE */   sw        $a0, 0x4($s1)
/* 5AA89A0 8008C470 C8000224 */  addiu      $v0, $zero, 0xC8
/* 5AA89A4 8008C474 000022A6 */  sh         $v0, 0x0($s1)
/* 5AA89A8 8008C478 020022A6 */  sh         $v0, 0x2($s1)
/* 5AA89AC 8008C47C 2C310208 */  j          .Llevel_23_8008C4B0
/* 5AA89B0 8008C480 100030AE */   sw        $s0, 0x10($s1)
.Llevel_23_8008C484:
/* 5AA89B4 8008C484 0300C012 */  beqz       $s6, .Llevel_23_8008C494
/* 5AA89B8 8008C488 0C00C526 */   addiu     $a1, $s6, 0xC
/* 5AA89BC 8008C48C 28310208 */  j          .Llevel_23_8008C4A0
/* 5AA89C0 8008C490 0C008426 */   addiu     $a0, $s4, 0xC
.Llevel_23_8008C494:
/* 5AA89C4 8008C494 0C008426 */  addiu      $a0, $s4, 0xC
/* 5AA89C8 8008C498 0780053C */  lui        $a1, %hi(D_80070328)
/* 5AA89CC 8008C49C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_23_8008C4A0:
/* 5AA89D0 8008C4A0 5E3C010C */  jal        func_8004F178
/* 5AA89D4 8008C4A4 00000000 */   nop
/* 5AA89D8 8008C4A8 0957010C */  jal        func_80055C24
/* 5AA89DC 8008C4AC 21208002 */   addu      $a0, $s4, $zero
.Llevel_23_8008C4B0:
/* 5AA89E0 8008C4B0 21108002 */  addu       $v0, $s4, $zero
.Llevel_23_8008C4B4:
/* 5AA89E4 8008C4B4 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 5AA89E8 8008C4B8 3800B68F */  lw         $s6, 0x38($sp)
/* 5AA89EC 8008C4BC 3400B58F */  lw         $s5, 0x34($sp)
/* 5AA89F0 8008C4C0 3000B48F */  lw         $s4, 0x30($sp)
/* 5AA89F4 8008C4C4 2C00B38F */  lw         $s3, 0x2C($sp)
/* 5AA89F8 8008C4C8 2800B28F */  lw         $s2, 0x28($sp)
/* 5AA89FC 8008C4CC 2400B18F */  lw         $s1, 0x24($sp)
/* 5AA8A00 8008C4D0 2000B08F */  lw         $s0, 0x20($sp)
/* 5AA8A04 8008C4D4 4000BD27 */  addiu      $sp, $sp, 0x40
/* 5AA8A08 8008C4D8 0800E003 */  jr         $ra
/* 5AA8A0C 8008C4DC 00000000 */   nop
.size func_level_23_8008B7B0, . - func_level_23_8008B7B0
