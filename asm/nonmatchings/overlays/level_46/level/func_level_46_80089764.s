.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_46_80089764
/* 8F5BC94 80089764 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8F5BC98 80089768 3400B3AF */  sw         $s3, 0x34($sp)
/* 8F5BC9C 8008976C 21988000 */  addu       $s3, $a0, $zero
/* 8F5BCA0 80089770 3800B4AF */  sw         $s4, 0x38($sp)
/* 8F5BCA4 80089774 21A0A000 */  addu       $s4, $a1, $zero
/* 8F5BCA8 80089778 4400B7AF */  sw         $s7, 0x44($sp)
/* 8F5BCAC 8008977C 21B8C000 */  addu       $s7, $a2, $zero
/* 8F5BCB0 80089780 2800B0AF */  sw         $s0, 0x28($sp)
/* 8F5BCB4 80089784 2180E000 */  addu       $s0, $a3, $zero
/* 8F5BCB8 80089788 4000B6AF */  sw         $s6, 0x40($sp)
/* 8F5BCBC 8008978C 6400B68F */  lw         $s6, 0x64($sp)
/* 8F5BCC0 80089790 21300000 */  addu       $a2, $zero, $zero
/* 8F5BCC4 80089794 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 8F5BCC8 80089798 4800BEAF */  sw         $fp, 0x48($sp)
/* 8F5BCCC 8008979C 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 8F5BCD0 800897A0 3000B2AF */  sw         $s2, 0x30($sp)
/* 8F5BCD4 800897A4 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8F5BCD8 800897A8 0C00638E */  lw         $v1, 0xC($s3)
/* 8F5BCDC 800897AC 0000848E */  lw         $a0, 0x0($s4)
/* 8F5BCE0 800897B0 1000628E */  lw         $v0, 0x10($s3)
/* 8F5BCE4 800897B4 0400858E */  lw         $a1, 0x4($s4)
/* 8F5BCE8 800897B8 6000B18F */  lw         $s1, 0x60($sp)
/* 8F5BCEC 800897BC 7000BE8F */  lw         $fp, 0x70($sp)
/* 8F5BCF0 800897C0 23206400 */  subu       $a0, $v1, $a0
/* 8F5BCF4 800897C4 203A010C */  jal        func_8004E880
/* 8F5BCF8 800897C8 23284500 */   subu      $a1, $v0, $a1
/* 8F5BCFC 800897CC 21904000 */  addu       $s2, $v0, $zero
/* 8F5BD00 800897D0 21200002 */  addu       $a0, $s0, $zero
/* 8F5BD04 800897D4 4FD8000C */  jal        SubAngle8
/* 8F5BD08 800897D8 FF004532 */   andi      $a1, $s2, 0xFF
/* 8F5BD0C 800897DC 0C006426 */  addiu      $a0, $s3, 0xC
/* 8F5BD10 800897E0 21288002 */  addu       $a1, $s4, $zero
/* 8F5BD14 800897E4 CD3C010C */  jal        func_8004F334
/* 8F5BD18 800897E8 21A84000 */   addu      $s5, $v0, $zero
/* 8F5BD1C 800897EC 21184000 */  addu       $v1, $v0, $zero
/* 8F5BD20 800897F0 0200A106 */  bgez       $s5, .Llevel_46_800897FC
/* 8F5BD24 800897F4 2110A002 */   addu      $v0, $s5, $zero
/* 8F5BD28 800897F8 23100200 */  negu       $v0, $v0
.Llevel_46_800897FC:
/* 8F5BD2C 800897FC 2A105100 */  slt        $v0, $v0, $s1
/* 8F5BD30 80089800 07004010 */  beqz       $v0, .Llevel_46_80089820
/* 8F5BD34 80089804 23107700 */   subu      $v0, $v1, $s7
/* 8F5BD38 80089808 03004104 */  bgez       $v0, .Llevel_46_80089818
/* 8F5BD3C 8008980C C8004228 */   slti      $v0, $v0, 0xC8
/* 8F5BD40 80089810 2310E302 */  subu       $v0, $s7, $v1
/* 8F5BD44 80089814 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_46_80089818:
/* 8F5BD48 80089818 89004014 */  bnez       $v0, .Llevel_46_80089A40
/* 8F5BD4C 8008981C 00000000 */   nop
.Llevel_46_80089820:
/* 8F5BD50 80089820 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5BD54 80089824 1200C213 */  beq        $fp, $v0, .Llevel_46_80089870
/* 8F5BD58 80089828 00000000 */   nop
/* 8F5BD5C 8008982C FF005032 */  andi       $s0, $s2, 0xFF
/* 8F5BD60 80089830 21200002 */  addu       $a0, $s0, $zero
/* 8F5BD64 80089834 993C010C */  jal        func_8004F264
/* 8F5BD68 80089838 2128C003 */   addu      $a1, $fp, $zero
/* 8F5BD6C 8008983C 05004228 */  slti       $v0, $v0, 0x5
/* 8F5BD70 80089840 0B004010 */  beqz       $v0, .Llevel_46_80089870
/* 8F5BD74 80089844 2120C003 */   addu      $a0, $fp, $zero
/* 8F5BD78 80089848 4FD8000C */  jal        SubAngle8
/* 8F5BD7C 8008984C 21280002 */   addu      $a1, $s0, $zero
/* 8F5BD80 80089850 0300A106 */  bgez       $s5, .Llevel_46_80089860
/* 8F5BD84 80089854 00000000 */   nop
/* 8F5BD88 80089858 1A004004 */  bltz       $v0, .Llevel_46_800898C4
/* 8F5BD8C 8008985C 00000000 */   nop
.Llevel_46_80089860:
/* 8F5BD90 80089860 0300A01A */  blez       $s5, .Llevel_46_80089870
/* 8F5BD94 80089864 00000000 */   nop
/* 8F5BD98 80089868 7800401C */  bgtz       $v0, .Llevel_46_80089A4C
/* 8F5BD9C 8008986C 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_46_80089870:
/* 8F5BDA0 80089870 7400A88F */  lw         $t0, 0x74($sp)
/* 8F5BDA4 80089874 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F5BDA8 80089878 14000211 */  beq        $t0, $v0, .Llevel_46_800898CC
/* 8F5BDAC 8008987C FF005032 */   andi      $s0, $s2, 0xFF
/* 8F5BDB0 80089880 7400A58F */  lw         $a1, 0x74($sp)
/* 8F5BDB4 80089884 993C010C */  jal        func_8004F264
/* 8F5BDB8 80089888 21200002 */   addu      $a0, $s0, $zero
/* 8F5BDBC 8008988C 05004228 */  slti       $v0, $v0, 0x5
/* 8F5BDC0 80089890 0E004010 */  beqz       $v0, .Llevel_46_800898CC
/* 8F5BDC4 80089894 00000000 */   nop
/* 8F5BDC8 80089898 7400A48F */  lw         $a0, 0x74($sp)
/* 8F5BDCC 8008989C 4FD8000C */  jal        SubAngle8
/* 8F5BDD0 800898A0 21280002 */   addu      $a1, $s0, $zero
/* 8F5BDD4 800898A4 0300A106 */  bgez       $s5, .Llevel_46_800898B4
/* 8F5BDD8 800898A8 00000000 */   nop
/* 8F5BDDC 800898AC 05004004 */  bltz       $v0, .Llevel_46_800898C4
/* 8F5BDE0 800898B0 00000000 */   nop
.Llevel_46_800898B4:
/* 8F5BDE4 800898B4 0500A01A */  blez       $s5, .Llevel_46_800898CC
/* 8F5BDE8 800898B8 00000000 */   nop
/* 8F5BDEC 800898BC 03004018 */  blez       $v0, .Llevel_46_800898CC
/* 8F5BDF0 800898C0 00000000 */   nop
.Llevel_46_800898C4:
/* 8F5BDF4 800898C4 93260208 */  j          .Llevel_46_80089A4C
/* 8F5BDF8 800898C8 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_46_800898CC:
/* 8F5BDFC 800898CC 0300A106 */  bgez       $s5, .Llevel_46_800898DC
/* 8F5BE00 800898D0 00000000 */   nop
/* 8F5BE04 800898D4 38260208 */  j          .Llevel_46_800898E0
/* 8F5BE08 800898D8 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_46_800898DC:
/* 8F5BE0C 800898DC FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_46_800898E0:
/* 8F5BE10 800898E0 FF004332 */  andi       $v1, $s2, 0xFF
/* 8F5BE14 800898E4 40180300 */  sll        $v1, $v1, 1
/* 8F5BE18 800898E8 0680013C */  lui        $at, %hi(D_80065920)
/* 8F5BE1C 800898EC 21082300 */  addu       $at, $at, $v1
/* 8F5BE20 800898F0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8F5BE24 800898F4 00000000 */  nop
/* 8F5BE28 800898F8 18005700 */  mult       $v0, $s7
/* 8F5BE2C 800898FC 0000878E */  lw         $a3, 0x0($s4)
/* 8F5BE30 80089900 12400000 */  mflo       $t0
/* 8F5BE34 80089904 03130800 */  sra        $v0, $t0, 12
/* 8F5BE38 80089908 2138E200 */  addu       $a3, $a3, $v0
/* 8F5BE3C 8008990C 1800A7AF */  sw         $a3, 0x18($sp)
/* 8F5BE40 80089910 0680013C */  lui        $at, %hi(D_800658A0)
/* 8F5BE44 80089914 21082300 */  addu       $at, $at, $v1
/* 8F5BE48 80089918 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8F5BE4C 8008991C 00000000 */  nop
/* 8F5BE50 80089920 18005700 */  mult       $v0, $s7
/* 8F5BE54 80089924 21300000 */  addu       $a2, $zero, $zero
/* 8F5BE58 80089928 0400858E */  lw         $a1, 0x4($s4)
/* 8F5BE5C 8008992C 12400000 */  mflo       $t0
/* 8F5BE60 80089930 03130800 */  sra        $v0, $t0, 12
/* 8F5BE64 80089934 2128A200 */  addu       $a1, $a1, $v0
/* 8F5BE68 80089938 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 8F5BE6C 8008993C 0C00648E */  lw         $a0, 0xC($s3)
/* 8F5BE70 80089940 1000628E */  lw         $v0, 0x10($s3)
/* 8F5BE74 80089944 2320E400 */  subu       $a0, $a3, $a0
/* 8F5BE78 80089948 203A010C */  jal        func_8004E880
/* 8F5BE7C 8008994C 2328A200 */   subu      $a1, $a1, $v0
/* 8F5BE80 80089950 21804000 */  addu       $s0, $v0, $zero
/* 8F5BE84 80089954 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8F5BE88 80089958 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8F5BE8C 8008995C 03000224 */  addiu      $v0, $zero, 0x3
/* 8F5BE90 80089960 04006214 */  bne        $v1, $v0, .Llevel_46_80089974
/* 8F5BE94 80089964 04000224 */   addiu     $v0, $zero, 0x4
/* 8F5BE98 80089968 43101600 */  sra        $v0, $s6, 1
/* 8F5BE9C 8008996C 60260208 */  j          .Llevel_46_80089980
/* 8F5BEA0 80089970 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_46_80089974:
/* 8F5BEA4 80089974 02006214 */  bne        $v1, $v0, .Llevel_46_80089980
/* 8F5BEA8 80089978 00000000 */   nop
/* 8F5BEAC 8008997C 40B01600 */  sll        $s6, $s6, 1
.Llevel_46_80089980:
/* 8F5BEB0 80089980 8000A88F */  lw         $t0, 0x80($sp)
/* 8F5BEB4 80089984 00000000 */  nop
/* 8F5BEB8 80089988 08000231 */  andi       $v0, $t0, 0x8
/* 8F5BEBC 8008998C 1A004010 */  beqz       $v0, .Llevel_46_800899F8
/* 8F5BEC0 80089990 21300000 */   addu      $a2, $zero, $zero
/* 8F5BEC4 80089994 0000838E */  lw         $v1, 0x0($s4)
/* 8F5BEC8 80089998 0C00648E */  lw         $a0, 0xC($s3)
/* 8F5BECC 8008999C 0400828E */  lw         $v0, 0x4($s4)
/* 8F5BED0 800899A0 1000658E */  lw         $a1, 0x10($s3)
/* 8F5BED4 800899A4 23206400 */  subu       $a0, $v1, $a0
/* 8F5BED8 800899A8 203A010C */  jal        func_8004E880
/* 8F5BEDC 800899AC 23284500 */   subu      $a1, $v0, $a1
/* 8F5BEE0 800899B0 21206002 */  addu       $a0, $s3, $zero
/* 8F5BEE4 800899B4 21284000 */  addu       $a1, $v0, $zero
/* 8F5BEE8 800899B8 6800A68F */  lw         $a2, 0x68($sp)
/* 8F5BEEC 800899BC 21380000 */  addu       $a3, $zero, $zero
/* 8F5BEF0 800899C0 1000A0AF */  sw         $zero, 0x10($sp)
/* 8F5BEF4 800899C4 17D6000C */  jal        func_8003585C
/* 8F5BEF8 800899C8 1400A0AF */   sw        $zero, 0x14($sp)
/* 8F5BEFC 800899CC 21206002 */  addu       $a0, $s3, $zero
/* 8F5BF00 800899D0 7800A78F */  lw         $a3, 0x78($sp)
/* 8F5BF04 800899D4 7C00A88F */  lw         $t0, 0x7C($sp)
/* 8F5BF08 800899D8 21280002 */  addu       $a1, $s0, $zero
/* 8F5BF0C 800899DC 1000A8AF */  sw         $t0, 0x10($sp)
/* 8F5BF10 800899E0 8000A88F */  lw         $t0, 0x80($sp)
/* 8F5BF14 800899E4 2130C002 */  addu       $a2, $s6, $zero
/* 8F5BF18 800899E8 B8D7000C */  jal        func_80035EE0
/* 8F5BF1C 800899EC 1400A8AF */   sw        $t0, 0x14($sp)
/* 8F5BF20 800899F0 8E260208 */  j          .Llevel_46_80089A38
/* 8F5BF24 800899F4 00000000 */   nop
.Llevel_46_800899F8:
/* 8F5BF28 800899F8 21206002 */  addu       $a0, $s3, $zero
/* 8F5BF2C 800899FC 21280002 */  addu       $a1, $s0, $zero
/* 8F5BF30 80089A00 6800A68F */  lw         $a2, 0x68($sp)
/* 8F5BF34 80089A04 6C00A78F */  lw         $a3, 0x6C($sp)
/* 8F5BF38 80089A08 01000224 */  addiu      $v0, $zero, 0x1
/* 8F5BF3C 80089A0C 1000A2AF */  sw         $v0, 0x10($sp)
/* 8F5BF40 80089A10 17D6000C */  jal        func_8003585C
/* 8F5BF44 80089A14 1400A0AF */   sw        $zero, 0x14($sp)
/* 8F5BF48 80089A18 09004010 */  beqz       $v0, .Llevel_46_80089A40
/* 8F5BF4C 80089A1C 21206002 */   addu      $a0, $s3, $zero
/* 8F5BF50 80089A20 8000A88F */  lw         $t0, 0x80($sp)
/* 8F5BF54 80089A24 7800A68F */  lw         $a2, 0x78($sp)
/* 8F5BF58 80089A28 7C00A78F */  lw         $a3, 0x7C($sp)
/* 8F5BF5C 80089A2C 2128C002 */  addu       $a1, $s6, $zero
/* 8F5BF60 80089A30 77D7000C */  jal        func_80035DDC
/* 8F5BF64 80089A34 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_46_80089A38:
/* 8F5BF68 80089A38 04004014 */  bnez       $v0, .Llevel_46_80089A4C
/* 8F5BF6C 80089A3C 23100200 */   negu      $v0, $v0
.Llevel_46_80089A40:
/* 8F5BF70 80089A40 0200A106 */  bgez       $s5, .Llevel_46_80089A4C
/* 8F5BF74 80089A44 2110A002 */   addu      $v0, $s5, $zero
/* 8F5BF78 80089A48 23100200 */  negu       $v0, $v0
.Llevel_46_80089A4C:
/* 8F5BF7C 80089A4C 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 8F5BF80 80089A50 4800BE8F */  lw         $fp, 0x48($sp)
/* 8F5BF84 80089A54 4400B78F */  lw         $s7, 0x44($sp)
/* 8F5BF88 80089A58 4000B68F */  lw         $s6, 0x40($sp)
/* 8F5BF8C 80089A5C 3C00B58F */  lw         $s5, 0x3C($sp)
/* 8F5BF90 80089A60 3800B48F */  lw         $s4, 0x38($sp)
/* 8F5BF94 80089A64 3400B38F */  lw         $s3, 0x34($sp)
/* 8F5BF98 80089A68 3000B28F */  lw         $s2, 0x30($sp)
/* 8F5BF9C 80089A6C 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8F5BFA0 80089A70 2800B08F */  lw         $s0, 0x28($sp)
/* 8F5BFA4 80089A74 5000BD27 */  addiu      $sp, $sp, 0x50
/* 8F5BFA8 80089A78 0800E003 */  jr         $ra
/* 8F5BFAC 80089A7C 00000000 */   nop
.size func_level_46_80089764, . - func_level_46_80089764
