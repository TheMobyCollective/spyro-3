.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_45_8007EBE8
/* 8D3B118 8007EBE8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 8D3B11C 8007EBEC 2400B1AF */  sw         $s1, 0x24($sp)
/* 8D3B120 8007EBF0 21888000 */  addu       $s1, $a0, $zero
/* 8D3B124 8007EBF4 3400B5AF */  sw         $s5, 0x34($sp)
/* 8D3B128 8007EBF8 21A8A000 */  addu       $s5, $a1, $zero
/* 8D3B12C 8007EBFC 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 8D3B130 8007EC00 3800B6AF */  sw         $s6, 0x38($sp)
/* 8D3B134 8007EC04 3000B4AF */  sw         $s4, 0x30($sp)
/* 8D3B138 8007EC08 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 8D3B13C 8007EC0C 2800B2AF */  sw         $s2, 0x28($sp)
/* 8D3B140 8007EC10 9F56010C */  jal        func_80055A7C
/* 8D3B144 8007EC14 2000B0AF */   sw        $s0, 0x20($sp)
/* 8D3B148 8007EC18 21A04000 */  addu       $s4, $v0, $zero
/* 8D3B14C 8007EC1C 03008016 */  bnez       $s4, .Llevel_45_8007EC2C
/* 8D3B150 8007EC20 21208002 */   addu      $a0, $s4, $zero
/* 8D3B154 8007EC24 95FD0108 */  j          .Llevel_45_8007F654
/* 8D3B158 8007EC28 21100000 */   addu      $v0, $zero, $zero
.Llevel_45_8007EC2C:
/* 8D3B15C 8007EC2C 21280000 */  addu       $a1, $zero, $zero
/* 8D3B160 8007EC30 0000908E */  lw         $s0, 0x0($s4)
/* 8D3B164 8007EC34 E439010C */  jal        func_8004E790
/* 8D3B168 8007EC38 58000624 */   addiu     $a2, $zero, 0x58
/* 8D3B16C 8007EC3C 21280000 */  addu       $a1, $zero, $zero
/* 8D3B170 8007EC40 18000624 */  addiu      $a2, $zero, 0x18
/* 8D3B174 8007EC44 21200002 */  addu       $a0, $s0, $zero
/* 8D3B178 8007EC48 E439010C */  jal        func_8004E790
/* 8D3B17C 8007EC4C 000084AE */   sw        $a0, 0x0($s4)
/* 8D3B180 8007EC50 1600A012 */  beqz       $s5, .Llevel_45_8007ECAC
/* 8D3B184 8007EC54 360091A6 */   sh        $s1, 0x36($s4)
/* 8D3B188 8007EC58 0780043C */  lui        $a0, %hi(D_8006C550)
/* 8D3B18C 8007EC5C 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 8D3B190 8007EC60 00000000 */  nop
/* 8D3B194 8007EC64 2320A402 */  subu       $a0, $s5, $a0
/* 8D3B198 8007EC68 40190400 */  sll        $v1, $a0, 5
/* 8D3B19C 8007EC6C 23186400 */  subu       $v1, $v1, $a0
/* 8D3B1A0 8007EC70 40190300 */  sll        $v1, $v1, 5
/* 8D3B1A4 8007EC74 21186400 */  addu       $v1, $v1, $a0
/* 8D3B1A8 8007EC78 C0100300 */  sll        $v0, $v1, 3
/* 8D3B1AC 8007EC7C 21186200 */  addu       $v1, $v1, $v0
/* 8D3B1B0 8007EC80 C0130300 */  sll        $v0, $v1, 15
/* 8D3B1B4 8007EC84 23104300 */  subu       $v0, $v0, $v1
/* 8D3B1B8 8007EC88 80100200 */  sll        $v0, $v0, 2
/* 8D3B1BC 8007EC8C 21104400 */  addu       $v0, $v0, $a0
/* 8D3B1C0 8007EC90 23100200 */  negu       $v0, $v0
/* 8D3B1C4 8007EC94 C3180200 */  sra        $v1, $v0, 3
/* 8D3B1C8 8007EC98 0001622C */  sltiu      $v0, $v1, 0x100
/* 8D3B1CC 8007EC9C 04004010 */  beqz       $v0, .Llevel_45_8007ECB0
/* 8D3B1D0 8007ECA0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8D3B1D4 8007ECA4 2DFB0108 */  j          .Llevel_45_8007ECB4
/* 8D3B1D8 8007ECA8 3A0083A2 */   sb        $v1, 0x3A($s4)
.Llevel_45_8007ECAC:
/* 8D3B1DC 8007ECAC FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_45_8007ECB0:
/* 8D3B1E0 8007ECB0 3A0082A2 */  sb         $v0, 0x3A($s4)
.Llevel_45_8007ECB4:
/* 8D3B1E4 8007ECB4 FBD3000C */  jal        func_80034FEC
/* 8D3B1E8 8007ECB8 21208002 */   addu      $a0, $s4, $zero
/* 8D3B1EC 8007ECBC 46010224 */  addiu      $v0, $zero, 0x146
/* 8D3B1F0 8007ECC0 A5012212 */  beq        $s1, $v0, .Llevel_45_8007F358
/* 8D3B1F4 8007ECC4 4701222A */   slti      $v0, $s1, 0x147
/* 8D3B1F8 8007ECC8 19004010 */  beqz       $v0, .Llevel_45_8007ED30
/* 8D3B1FC 8007ECCC 78000224 */   addiu     $v0, $zero, 0x78
/* 8D3B200 8007ECD0 25012212 */  beq        $s1, $v0, .Llevel_45_8007F168
/* 8D3B204 8007ECD4 7900222A */   slti      $v0, $s1, 0x79
/* 8D3B208 8007ECD8 07004010 */  beqz       $v0, .Llevel_45_8007ECF8
/* 8D3B20C 8007ECDC 01000224 */   addiu     $v0, $zero, 0x1
/* 8D3B210 8007ECE0 2C002212 */  beq        $s1, $v0, .Llevel_45_8007ED94
/* 8D3B214 8007ECE4 5C000224 */   addiu     $v0, $zero, 0x5C
/* 8D3B218 8007ECE8 07012212 */  beq        $s1, $v0, .Llevel_45_8007F108
/* 8D3B21C 8007ECEC 0C008426 */   addiu     $a0, $s4, 0xC
/* 8D3B220 8007ECF0 89FD0108 */  j          .Llevel_45_8007F624
/* 8D3B224 8007ECF4 00000000 */   nop
.Llevel_45_8007ECF8:
/* 8D3B228 8007ECF8 04010224 */  addiu      $v0, $zero, 0x104
/* 8D3B22C 8007ECFC 64012212 */  beq        $s1, $v0, .Llevel_45_8007F290
/* 8D3B230 8007ED00 0501222A */   slti      $v0, $s1, 0x105
/* 8D3B234 8007ED04 05004010 */  beqz       $v0, .Llevel_45_8007ED1C
/* 8D3B238 8007ED08 84000224 */   addiu     $v0, $zero, 0x84
/* 8D3B23C 8007ED0C 52012212 */  beq        $s1, $v0, .Llevel_45_8007F258
/* 8D3B240 8007ED10 0C008426 */   addiu     $a0, $s4, 0xC
/* 8D3B244 8007ED14 89FD0108 */  j          .Llevel_45_8007F624
/* 8D3B248 8007ED18 00000000 */   nop
.Llevel_45_8007ED1C:
/* 8D3B24C 8007ED1C 10010224 */  addiu      $v0, $zero, 0x110
/* 8D3B250 8007ED20 70012212 */  beq        $s1, $v0, .Llevel_45_8007F2E4
/* 8D3B254 8007ED24 00000000 */   nop
/* 8D3B258 8007ED28 89FD0108 */  j          .Llevel_45_8007F624
/* 8D3B25C 8007ED2C 00000000 */   nop
.Llevel_45_8007ED30:
/* 8D3B260 8007ED30 E2010224 */  addiu      $v0, $zero, 0x1E2
/* 8D3B264 8007ED34 EA012212 */  beq        $s1, $v0, .Llevel_45_8007F4E0
/* 8D3B268 8007ED38 E301222A */   slti      $v0, $s1, 0x1E3
/* 8D3B26C 8007ED3C 07004010 */  beqz       $v0, .Llevel_45_8007ED5C
/* 8D3B270 8007ED40 6C010224 */   addiu     $v0, $zero, 0x16C
/* 8D3B274 8007ED44 C5012212 */  beq        $s1, $v0, .Llevel_45_8007F45C
/* 8D3B278 8007ED48 7F010224 */   addiu     $v0, $zero, 0x17F
/* 8D3B27C 8007ED4C D6012212 */  beq        $s1, $v0, .Llevel_45_8007F4A8
/* 8D3B280 8007ED50 0C008426 */   addiu     $a0, $s4, 0xC
/* 8D3B284 8007ED54 89FD0108 */  j          .Llevel_45_8007F624
/* 8D3B288 8007ED58 00000000 */   nop
.Llevel_45_8007ED5C:
/* 8D3B28C 8007ED5C CB020224 */  addiu      $v0, $zero, 0x2CB
/* 8D3B290 8007ED60 13002212 */  beq        $s1, $v0, .Llevel_45_8007EDB0
/* 8D3B294 8007ED64 CC02222A */   slti      $v0, $s1, 0x2CC
/* 8D3B298 8007ED68 05004010 */  beqz       $v0, .Llevel_45_8007ED80
/* 8D3B29C 8007ED6C 1D020224 */   addiu     $v0, $zero, 0x21D
/* 8D3B2A0 8007ED70 F3012212 */  beq        $s1, $v0, .Llevel_45_8007F540
/* 8D3B2A4 8007ED74 0C008426 */   addiu     $a0, $s4, 0xC
/* 8D3B2A8 8007ED78 89FD0108 */  j          .Llevel_45_8007F624
/* 8D3B2AC 8007ED7C 00000000 */   nop
.Llevel_45_8007ED80:
/* 8D3B2B0 8007ED80 BA030224 */  addiu      $v0, $zero, 0x3BA
/* 8D3B2B4 8007ED84 02022212 */  beq        $s1, $v0, .Llevel_45_8007F590
/* 8D3B2B8 8007ED88 0C009126 */   addiu     $s1, $s4, 0xC
/* 8D3B2BC 8007ED8C 89FD0108 */  j          .Llevel_45_8007F624
/* 8D3B2C0 8007ED90 00000000 */   nop
.Llevel_45_8007ED94:
/* 8D3B2C4 8007ED94 0957010C */  jal        func_80055C24
/* 8D3B2C8 8007ED98 21208002 */   addu      $a0, $s4, $zero
/* 8D3B2CC 8007ED9C 18000224 */  addiu      $v0, $zero, 0x18
/* 8D3B2D0 8007EDA0 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 8D3B2D4 8007EDA4 40000224 */  addiu      $v0, $zero, 0x40
/* 8D3B2D8 8007EDA8 B6FC0108 */  j          .Llevel_45_8007F2D8
/* 8D3B2DC 8007EDAC 4A0082A2 */   sb        $v0, 0x4A($s4)
.Llevel_45_8007EDB0:
/* 8D3B2E0 8007EDB0 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B2E4 8007EDB4 0C00A526 */  addiu      $a1, $s5, 0xC
/* 8D3B2E8 8007EDB8 0000968E */  lw         $s6, 0x0($s4)
/* 8D3B2EC 8007EDBC 20000224 */  addiu      $v0, $zero, 0x20
/* 8D3B2F0 8007EDC0 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 8D3B2F4 8007EDC4 5E3C010C */  jal        func_8004F178
/* 8D3B2F8 8007EDC8 4E0082A2 */   sb        $v0, 0x4E($s4)
/* 8D3B2FC 8007EDCC 0957010C */  jal        func_80055C24
/* 8D3B300 8007EDD0 21208002 */   addu      $a0, $s4, $zero
/* 8D3B304 8007EDD4 2C010424 */  addiu      $a0, $zero, 0x12C
/* 8D3B308 8007EDD8 DBD8000C */  jal        func_8003636C
/* 8D3B30C 8007EDDC 34080524 */   addiu     $a1, $zero, 0x834
/* 8D3B310 8007EDE0 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 8D3B314 8007EDE4 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 8D3B318 8007EDE8 DBD8000C */  jal        func_8003636C
/* 8D3B31C 8007EDEC 21904000 */   addu      $s2, $v0, $zero
/* 8D3B320 8007EDF0 4600B192 */  lbu        $s1, 0x46($s5)
/* 8D3B324 8007EDF4 21204002 */  addu       $a0, $s2, $zero
/* 8D3B328 8007EDF8 21882202 */  addu       $s1, $s1, $v0
/* 8D3B32C 8007EDFC 8B3A010C */  jal        func_8004EA2C
/* 8D3B330 8007EE00 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 8D3B334 8007EE04 21202002 */  addu       $a0, $s1, $zero
/* 8D3B338 8007EE08 8B3A010C */  jal        func_8004EA2C
/* 8D3B33C 8007EE0C 21804000 */   addu      $s0, $v0, $zero
/* 8D3B340 8007EE10 78001324 */  addiu      $s3, $zero, 0x78
/* 8D3B344 8007EE14 18005300 */  mult       $v0, $s3
/* 8D3B348 8007EE18 12400000 */  mflo       $t0
/* 8D3B34C 8007EE1C 83811000 */  sra        $s0, $s0, 6
/* 8D3B350 8007EE20 00000000 */  nop
/* 8D3B354 8007EE24 18000802 */  mult       $s0, $t0
/* 8D3B358 8007EE28 21204002 */  addu       $a0, $s2, $zero
/* 8D3B35C 8007EE2C 12400000 */  mflo       $t0
/* 8D3B360 8007EE30 83140800 */  sra        $v0, $t0, 18
/* 8D3B364 8007EE34 8B3A010C */  jal        func_8004EA2C
/* 8D3B368 8007EE38 0000C2A6 */   sh        $v0, 0x0($s6)
/* 8D3B36C 8007EE3C 21202002 */  addu       $a0, $s1, $zero
/* 8D3B370 8007EE40 793A010C */  jal        func_8004E9E4
/* 8D3B374 8007EE44 21804000 */   addu      $s0, $v0, $zero
/* 8D3B378 8007EE48 18005300 */  mult       $v0, $s3
/* 8D3B37C 8007EE4C 12400000 */  mflo       $t0
/* 8D3B380 8007EE50 83811000 */  sra        $s0, $s0, 6
/* 8D3B384 8007EE54 00000000 */  nop
/* 8D3B388 8007EE58 18000802 */  mult       $s0, $t0
/* 8D3B38C 8007EE5C 21204002 */  addu       $a0, $s2, $zero
/* 8D3B390 8007EE60 12400000 */  mflo       $t0
/* 8D3B394 8007EE64 83140800 */  sra        $v0, $t0, 18
/* 8D3B398 8007EE68 793A010C */  jal        func_8004E9E4
/* 8D3B39C 8007EE6C 0200C2A6 */   sh        $v0, 0x2($s6)
/* 8D3B3A0 8007EE70 96000324 */  addiu      $v1, $zero, 0x96
/* 8D3B3A4 8007EE74 18004300 */  mult       $v0, $v1
/* 8D3B3A8 8007EE78 12400000 */  mflo       $t0
/* 8D3B3AC 8007EE7C 03130800 */  sra        $v0, $t0, 12
/* 8D3B3B0 8007EE80 0400C2A6 */  sh         $v0, 0x4($s6)
/* 8D3B3B4 8007EE84 5100A492 */  lbu        $a0, 0x51($s5)
/* 8D3B3B8 8007EE88 00000000 */  nop
/* 8D3B3BC 8007EE8C 26008010 */  beqz       $a0, .Llevel_45_8007EF28
/* 8D3B3C0 8007EE90 1000033C */   lui       $v1, (0x100000 >> 16)
/* 8D3B3C4 8007EE94 1800A28E */  lw         $v0, 0x18($s5)
/* 8D3B3C8 8007EE98 00000000 */  nop
/* 8D3B3CC 8007EE9C 24104300 */  and        $v0, $v0, $v1
/* 8D3B3D0 8007EEA0 21004010 */  beqz       $v0, .Llevel_45_8007EF28
/* 8D3B3D4 8007EEA4 40100400 */   sll       $v0, $a0, 1
/* 8D3B3D8 8007EEA8 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3B3DC 8007EEAC 21082200 */  addu       $at, $at, $v0
/* 8D3B3E0 8007EEB0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8D3B3E4 8007EEB4 00000000 */  nop
/* 8D3B3E8 8007EEB8 80100300 */  sll        $v0, $v1, 2
/* 8D3B3EC 8007EEBC 21104300 */  addu       $v0, $v0, $v1
/* 8D3B3F0 8007EEC0 00190200 */  sll        $v1, $v0, 4
/* 8D3B3F4 8007EEC4 23186200 */  subu       $v1, $v1, $v0
/* 8D3B3F8 8007EEC8 0000C296 */  lhu        $v0, 0x0($s6)
/* 8D3B3FC 8007EECC C31A0300 */  sra        $v1, $v1, 11
/* 8D3B400 8007EED0 21104300 */  addu       $v0, $v0, $v1
/* 8D3B404 8007EED4 0000C2A6 */  sh         $v0, 0x0($s6)
/* 8D3B408 8007EED8 5100A292 */  lbu        $v0, 0x51($s5)
/* 8D3B40C 8007EEDC 28000424 */  addiu      $a0, $zero, 0x28
/* 8D3B410 8007EEE0 40100200 */  sll        $v0, $v0, 1
/* 8D3B414 8007EEE4 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3B418 8007EEE8 21082200 */  addu       $at, $at, $v0
/* 8D3B41C 8007EEEC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8D3B420 8007EEF0 46000524 */  addiu      $a1, $zero, 0x46
/* 8D3B424 8007EEF4 80100300 */  sll        $v0, $v1, 2
/* 8D3B428 8007EEF8 21104300 */  addu       $v0, $v0, $v1
/* 8D3B42C 8007EEFC 00190200 */  sll        $v1, $v0, 4
/* 8D3B430 8007EF00 23186200 */  subu       $v1, $v1, $v0
/* 8D3B434 8007EF04 0200C296 */  lhu        $v0, 0x2($s6)
/* 8D3B438 8007EF08 C31A0300 */  sra        $v1, $v1, 11
/* 8D3B43C 8007EF0C 21104300 */  addu       $v0, $v0, $v1
/* 8D3B440 8007EF10 DBD8000C */  jal        func_8003636C
/* 8D3B444 8007EF14 0200C2A6 */   sh        $v0, 0x2($s6)
/* 8D3B448 8007EF18 0400C396 */  lhu        $v1, 0x4($s6)
/* 8D3B44C 8007EF1C 00000000 */  nop
/* 8D3B450 8007EF20 21186200 */  addu       $v1, $v1, $v0
/* 8D3B454 8007EF24 0400C3A6 */  sh         $v1, 0x4($s6)
.Llevel_45_8007EF28:
/* 8D3B458 8007EF28 1800A28E */  lw         $v0, 0x18($s5)
/* 8D3B45C 8007EF2C 0200033C */  lui        $v1, (0x20000 >> 16)
/* 8D3B460 8007EF30 24104300 */  and        $v0, $v0, $v1
/* 8D3B464 8007EF34 1B004010 */  beqz       $v0, .Llevel_45_8007EFA4
/* 8D3B468 8007EF38 00000000 */   nop
/* 8D3B46C 8007EF3C 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B470 8007EF40 00000000 */  nop
/* 8D3B474 8007EF44 40100200 */  sll        $v0, $v0, 1
/* 8D3B478 8007EF48 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3B47C 8007EF4C 21082200 */  addu       $at, $at, $v0
/* 8D3B480 8007EF50 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8D3B484 8007EF54 00000000 */  nop
/* 8D3B488 8007EF58 C0100300 */  sll        $v0, $v1, 3
/* 8D3B48C 8007EF5C 23104300 */  subu       $v0, $v0, $v1
/* 8D3B490 8007EF60 C0100200 */  sll        $v0, $v0, 3
/* 8D3B494 8007EF64 23104300 */  subu       $v0, $v0, $v1
/* 8D3B498 8007EF68 0000C396 */  lhu        $v1, 0x0($s6)
/* 8D3B49C 8007EF6C 83120200 */  sra        $v0, $v0, 10
/* 8D3B4A0 8007EF70 21186200 */  addu       $v1, $v1, $v0
/* 8D3B4A4 8007EF74 0000C3A6 */  sh         $v1, 0x0($s6)
/* 8D3B4A8 8007EF78 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B4AC 8007EF7C 00000000 */  nop
/* 8D3B4B0 8007EF80 40100200 */  sll        $v0, $v0, 1
/* 8D3B4B4 8007EF84 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3B4B8 8007EF88 21082200 */  addu       $at, $at, $v0
/* 8D3B4BC 8007EF8C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8D3B4C0 8007EF90 00000000 */  nop
/* 8D3B4C4 8007EF94 C0100300 */  sll        $v0, $v1, 3
/* 8D3B4C8 8007EF98 23104300 */  subu       $v0, $v0, $v1
/* 8D3B4CC 8007EF9C 02FC0108 */  j          .Llevel_45_8007F008
/* 8D3B4D0 8007EFA0 C0100200 */   sll       $v0, $v0, 3
.Llevel_45_8007EFA4:
/* 8D3B4D4 8007EFA4 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B4D8 8007EFA8 00000000 */  nop
/* 8D3B4DC 8007EFAC 40100200 */  sll        $v0, $v0, 1
/* 8D3B4E0 8007EFB0 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3B4E4 8007EFB4 21082200 */  addu       $at, $at, $v0
/* 8D3B4E8 8007EFB8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8D3B4EC 8007EFBC 00000000 */  nop
/* 8D3B4F0 8007EFC0 C0100300 */  sll        $v0, $v1, 3
/* 8D3B4F4 8007EFC4 21104300 */  addu       $v0, $v0, $v1
/* 8D3B4F8 8007EFC8 80100200 */  sll        $v0, $v0, 2
/* 8D3B4FC 8007EFCC 23104300 */  subu       $v0, $v0, $v1
/* 8D3B500 8007EFD0 0000C396 */  lhu        $v1, 0x0($s6)
/* 8D3B504 8007EFD4 83120200 */  sra        $v0, $v0, 10
/* 8D3B508 8007EFD8 21186200 */  addu       $v1, $v1, $v0
/* 8D3B50C 8007EFDC 0000C3A6 */  sh         $v1, 0x0($s6)
/* 8D3B510 8007EFE0 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B514 8007EFE4 00000000 */  nop
/* 8D3B518 8007EFE8 40100200 */  sll        $v0, $v0, 1
/* 8D3B51C 8007EFEC 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3B520 8007EFF0 21082200 */  addu       $at, $at, $v0
/* 8D3B524 8007EFF4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8D3B528 8007EFF8 00000000 */  nop
/* 8D3B52C 8007EFFC C0100300 */  sll        $v0, $v1, 3
/* 8D3B530 8007F000 21104300 */  addu       $v0, $v0, $v1
/* 8D3B534 8007F004 80100200 */  sll        $v0, $v0, 2
.Llevel_45_8007F008:
/* 8D3B538 8007F008 23104300 */  subu       $v0, $v0, $v1
/* 8D3B53C 8007F00C 0200C396 */  lhu        $v1, 0x2($s6)
/* 8D3B540 8007F010 83120200 */  sra        $v0, $v0, 10
/* 8D3B544 8007F014 21186200 */  addu       $v1, $v1, $v0
/* 8D3B548 8007F018 0200C3A6 */  sh         $v1, 0x2($s6)
/* 8D3B54C 8007F01C 36008386 */  lh         $v1, 0x36($s4)
/* 8D3B550 8007F020 0A000224 */  addiu      $v0, $zero, 0xA
/* 8D3B554 8007F024 1A006210 */  beq        $v1, $v0, .Llevel_45_8007F090
/* 8D3B558 8007F028 1D000224 */   addiu     $v0, $zero, 0x1D
/* 8D3B55C 8007F02C 18006210 */  beq        $v1, $v0, .Llevel_45_8007F090
/* 8D3B560 8007F030 00000000 */   nop
/* 8D3B564 8007F034 9171010C */  jal        rand
/* 8D3B568 8007F038 00000000 */   nop
/* 8D3B56C 8007F03C 9171010C */  jal        rand
/* 8D3B570 8007F040 440082A2 */   sb        $v0, 0x44($s4)
/* 8D3B574 8007F044 9171010C */  jal        rand
/* 8D3B578 8007F048 450082A2 */   sb        $v0, 0x45($s4)
/* 8D3B57C 8007F04C 460082A2 */  sb         $v0, 0x46($s4)
/* 8D3B580 8007F050 0000C286 */  lh         $v0, 0x0($s6)
/* 8D3B584 8007F054 0C00838E */  lw         $v1, 0xC($s4)
/* 8D3B588 8007F058 40100200 */  sll        $v0, $v0, 1
/* 8D3B58C 8007F05C 21186200 */  addu       $v1, $v1, $v0
/* 8D3B590 8007F060 0C0083AE */  sw         $v1, 0xC($s4)
/* 8D3B594 8007F064 0200C286 */  lh         $v0, 0x2($s6)
/* 8D3B598 8007F068 1000838E */  lw         $v1, 0x10($s4)
/* 8D3B59C 8007F06C 40100200 */  sll        $v0, $v0, 1
/* 8D3B5A0 8007F070 21186200 */  addu       $v1, $v1, $v0
/* 8D3B5A4 8007F074 100083AE */  sw         $v1, 0x10($s4)
/* 8D3B5A8 8007F078 0400C286 */  lh         $v0, 0x4($s6)
/* 8D3B5AC 8007F07C 1400838E */  lw         $v1, 0x14($s4)
/* 8D3B5B0 8007F080 40100200 */  sll        $v0, $v0, 1
/* 8D3B5B4 8007F084 21186200 */  addu       $v1, $v1, $v0
/* 8D3B5B8 8007F088 2DFC0108 */  j          .Llevel_45_8007F0B4
/* 8D3B5BC 8007F08C 140083AE */   sw        $v1, 0x14($s4)
.Llevel_45_8007F090:
/* 8D3B5C0 8007F090 4400A292 */  lbu        $v0, 0x44($s5)
/* 8D3B5C4 8007F094 00000000 */  nop
/* 8D3B5C8 8007F098 440082A2 */  sb         $v0, 0x44($s4)
/* 8D3B5CC 8007F09C 4500A292 */  lbu        $v0, 0x45($s5)
/* 8D3B5D0 8007F0A0 00000000 */  nop
/* 8D3B5D4 8007F0A4 450082A2 */  sb         $v0, 0x45($s4)
/* 8D3B5D8 8007F0A8 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B5DC 8007F0AC 00000000 */  nop
/* 8D3B5E0 8007F0B0 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_45_8007F0B4:
/* 8D3B5E4 8007F0B4 9171010C */  jal        rand
/* 8D3B5E8 8007F0B8 00000000 */   nop
/* 8D3B5EC 8007F0BC 1F004230 */  andi       $v0, $v0, 0x1F
/* 8D3B5F0 8007F0C0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8D3B5F4 8007F0C4 9171010C */  jal        rand
/* 8D3B5F8 8007F0C8 0600C2A6 */   sh        $v0, 0x6($s6)
/* 8D3B5FC 8007F0CC 1F004230 */  andi       $v0, $v0, 0x1F
/* 8D3B600 8007F0D0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8D3B604 8007F0D4 9171010C */  jal        rand
/* 8D3B608 8007F0D8 0800C2A6 */   sh        $v0, 0x8($s6)
/* 8D3B60C 8007F0DC 78000424 */  addiu      $a0, $zero, 0x78
/* 8D3B610 8007F0E0 96000524 */  addiu      $a1, $zero, 0x96
/* 8D3B614 8007F0E4 1F004230 */  andi       $v0, $v0, 0x1F
/* 8D3B618 8007F0E8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 8D3B61C 8007F0EC DBD8000C */  jal        func_8003636C
/* 8D3B620 8007F0F0 0A00C2A6 */   sh        $v0, 0xA($s6)
/* 8D3B624 8007F0F4 0C00C2A6 */  sh         $v0, 0xC($s6)
/* 8D3B628 8007F0F8 01000224 */  addiu      $v0, $zero, 0x1
/* 8D3B62C 8007F0FC 0E00C2A6 */  sh         $v0, 0xE($s6)
/* 8D3B630 8007F100 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B634 8007F104 1200C0A6 */   sh        $zero, 0x12($s6)
.Llevel_45_8007F108:
/* 8D3B638 8007F108 0000908E */  lw         $s0, 0x0($s4)
/* 8D3B63C 8007F10C 5E3C010C */  jal        func_8004F178
/* 8D3B640 8007F110 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3B644 8007F114 9171010C */  jal        rand
/* 8D3B648 8007F118 00000000 */   nop
/* 8D3B64C 8007F11C 9171010C */  jal        rand
/* 8D3B650 8007F120 450082A2 */   sb        $v0, 0x45($s4)
/* 8D3B654 8007F124 21208002 */  addu       $a0, $s4, $zero
/* 8D3B658 8007F128 0957010C */  jal        func_80055C24
/* 8D3B65C 8007F12C 460082A2 */   sb        $v0, 0x46($s4)
/* 8D3B660 8007F130 20008426 */  addiu      $a0, $s4, 0x20
/* 8D3B664 8007F134 7F000224 */  addiu      $v0, $zero, 0x7F
/* 8D3B668 8007F138 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 8D3B66C 8007F13C 4E0082A2 */  sb         $v0, 0x4E($s4)
/* 8D3B670 8007F140 40000224 */  addiu      $v0, $zero, 0x40
/* 8D3B674 8007F144 21280002 */  addu       $a1, $s0, $zero
/* 8D3B678 8007F148 2130A000 */  addu       $a2, $a1, $zero
/* 8D3B67C 8007F14C 1000A2AC */  sw         $v0, 0x10($a1)
/* 8D3B680 8007F150 0000A2AC */  sw         $v0, 0x0($a1)
/* 8D3B684 8007F154 0400A0AC */  sw         $zero, 0x4($a1)
/* 8D3B688 8007F158 5B3B010C */  jal        func_8004ED6C
/* 8D3B68C 8007F15C 0800A0AC */   sw        $zero, 0x8($a1)
/* 8D3B690 8007F160 95FD0108 */  j          .Llevel_45_8007F654
/* 8D3B694 8007F164 21108002 */   addu      $v0, $s4, $zero
.Llevel_45_8007F168:
/* 8D3B698 8007F168 3600A286 */  lh         $v0, 0x36($s5)
/* 8D3B69C 8007F16C 00000000 */  nop
/* 8D3B6A0 8007F170 06005110 */  beq        $v0, $s1, .Llevel_45_8007F18C
/* 8D3B6A4 8007F174 21280000 */   addu      $a1, $zero, $zero
/* 8D3B6A8 8007F178 0780043C */  lui        $a0, %hi(D_8006E394)
/* 8D3B6AC 8007F17C 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 8D3B6B0 8007F180 000084AE */  sw         $a0, 0x0($s4)
/* 8D3B6B4 8007F184 E439010C */  jal        func_8004E790
/* 8D3B6B8 8007F188 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_45_8007F18C:
/* 8D3B6BC 8007F18C 0000908E */  lw         $s0, 0x0($s4)
/* 8D3B6C0 8007F190 0957010C */  jal        func_80055C24
/* 8D3B6C4 8007F194 21208002 */   addu      $a0, $s4, $zero
/* 8D3B6C8 8007F198 78000224 */  addiu      $v0, $zero, 0x78
/* 8D3B6CC 8007F19C 490080A2 */  sb         $zero, 0x49($s4)
/* 8D3B6D0 8007F1A0 000000A6 */  sh         $zero, 0x0($s0)
/* 8D3B6D4 8007F1A4 080000A6 */  sh         $zero, 0x8($s0)
/* 8D3B6D8 8007F1A8 060000A6 */  sh         $zero, 0x6($s0)
/* 8D3B6DC 8007F1AC 040000A6 */  sh         $zero, 0x4($s0)
/* 8D3B6E0 8007F1B0 0D0002A2 */  sb         $v0, 0xD($s0)
/* 8D3B6E4 8007F1B4 100000AE */  sw         $zero, 0x10($s0)
/* 8D3B6E8 8007F1B8 0600A012 */  beqz       $s5, .Llevel_45_8007F1D4
/* 8D3B6EC 8007F1BC 140000AE */   sw        $zero, 0x14($s0)
/* 8D3B6F0 8007F1C0 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B6F4 8007F1C4 5E3C010C */  jal        func_8004F178
/* 8D3B6F8 8007F1C8 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3B6FC 8007F1CC 94FC0108 */  j          .Llevel_45_8007F250
/* 8D3B700 8007F1D0 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_45_8007F1D4:
/* 8D3B704 8007F1D4 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B708 8007F1D8 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 8D3B70C 8007F1DC 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 8D3B710 8007F1E0 0000A390 */  lbu        $v1, 0x0($a1)
/* 8D3B714 8007F1E4 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 8D3B718 8007F1E8 80FF6324 */  addiu      $v1, $v1, -0x80
/* 8D3B71C 8007F1EC FF006330 */  andi       $v1, $v1, 0xFF
/* 8D3B720 8007F1F0 40180300 */  sll        $v1, $v1, 1
/* 8D3B724 8007F1F4 0680013C */  lui        $at, %hi(D_80065920)
/* 8D3B728 8007F1F8 21082300 */  addu       $at, $at, $v1
/* 8D3B72C 8007F1FC 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 8D3B730 8007F200 1000A627 */  addiu      $a2, $sp, 0x10
/* 8D3B734 8007F204 40110700 */  sll        $v0, $a3, 5
/* 8D3B738 8007F208 23104700 */  subu       $v0, $v0, $a3
/* 8D3B73C 8007F20C 80100200 */  sll        $v0, $v0, 2
/* 8D3B740 8007F210 21104700 */  addu       $v0, $v0, $a3
/* 8D3B744 8007F214 43120200 */  sra        $v0, $v0, 9
/* 8D3B748 8007F218 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D3B74C 8007F21C 0680013C */  lui        $at, %hi(D_800658A0)
/* 8D3B750 8007F220 21082300 */  addu       $at, $at, $v1
/* 8D3B754 8007F224 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8D3B758 8007F228 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 8D3B75C 8007F22C 1800A2AF */  sw         $v0, 0x18($sp)
/* 8D3B760 8007F230 40110300 */  sll        $v0, $v1, 5
/* 8D3B764 8007F234 23104300 */  subu       $v0, $v0, $v1
/* 8D3B768 8007F238 80100200 */  sll        $v0, $v0, 2
/* 8D3B76C 8007F23C 21104300 */  addu       $v0, $v0, $v1
/* 8D3B770 8007F240 43120200 */  sra        $v0, $v0, 9
/* 8D3B774 8007F244 653C010C */  jal        func_8004F194
/* 8D3B778 8007F248 1400A2AF */   sw        $v0, 0x14($sp)
/* 8D3B77C 8007F24C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_45_8007F250:
/* 8D3B780 8007F250 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B784 8007F254 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_45_8007F258:
/* 8D3B788 8007F258 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B78C 8007F25C 0C00A526 */  addiu      $a1, $s5, 0xC
/* 8D3B790 8007F260 5E3C010C */  jal        func_8004F178
/* 8D3B794 8007F264 460082A2 */   sb        $v0, 0x46($s4)
/* 8D3B798 8007F268 0957010C */  jal        func_80055C24
/* 8D3B79C 8007F26C 21208002 */   addu      $a0, $s4, $zero
/* 8D3B7A0 8007F270 4ED7000C */  jal        func_80035D38
/* 8D3B7A4 8007F274 21208002 */   addu      $a0, $s4, $zero
/* 8D3B7A8 8007F278 02004010 */  beqz       $v0, .Llevel_45_8007F284
/* 8D3B7AC 8007F27C 00000000 */   nop
/* 8D3B7B0 8007F280 140082AE */  sw         $v0, 0x14($s4)
.Llevel_45_8007F284:
/* 8D3B7B4 8007F284 06000224 */  addiu      $v0, $zero, 0x6
/* 8D3B7B8 8007F288 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B7BC 8007F28C 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_45_8007F290:
/* 8D3B7C0 8007F290 0957010C */  jal        func_80055C24
/* 8D3B7C4 8007F294 21208002 */   addu      $a0, $s4, $zero
/* 8D3B7C8 8007F298 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3B7CC 8007F29C 0E00A012 */  beqz       $s5, .Llevel_45_8007F2D8
/* 8D3B7D0 8007F2A0 540082A2 */   sb        $v0, 0x54($s4)
/* 8D3B7D4 8007F2A4 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B7D8 8007F2A8 0000828E */  lw         $v0, 0x0($s4)
/* 8D3B7DC 8007F2AC 0C00A526 */  addiu      $a1, $s5, 0xC
/* 8D3B7E0 8007F2B0 5E3C010C */  jal        func_8004F178
/* 8D3B7E4 8007F2B4 000055AC */   sw        $s5, 0x0($v0)
/* 8D3B7E8 8007F2B8 0A000224 */  addiu      $v0, $zero, 0xA
/* 8D3B7EC 8007F2BC 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 8D3B7F0 8007F2C0 1400828E */  lw         $v0, 0x14($s4)
/* 8D3B7F4 8007F2C4 08000324 */  addiu      $v1, $zero, 0x8
/* 8D3B7F8 8007F2C8 4C0083A2 */  sb         $v1, 0x4C($s4)
/* 8D3B7FC 8007F2CC 00044224 */  addiu      $v0, $v0, 0x400
/* 8D3B800 8007F2D0 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B804 8007F2D4 140082AE */   sw        $v0, 0x14($s4)
.Llevel_45_8007F2D8:
/* 8D3B808 8007F2D8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8D3B80C 8007F2DC 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B810 8007F2E0 1C0082AE */   sw        $v0, 0x1C($s4)
.Llevel_45_8007F2E4:
/* 8D3B814 8007F2E4 0780053C */  lui        $a1, %hi(D_80070328)
/* 8D3B818 8007F2E8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8D3B81C 8007F2EC 0000908E */  lw         $s0, 0x0($s4)
/* 8D3B820 8007F2F0 5E3C010C */  jal        func_8004F178
/* 8D3B824 8007F2F4 0C008426 */   addiu     $a0, $s4, 0xC
/* 8D3B828 8007F2F8 1400828E */  lw         $v0, 0x14($s4)
/* 8D3B82C 8007F2FC 00000000 */  nop
/* 8D3B830 8007F300 00044224 */  addiu      $v0, $v0, 0x400
/* 8D3B834 8007F304 140082AE */  sw         $v0, 0x14($s4)
/* 8D3B838 8007F308 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 8D3B83C 8007F30C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 8D3B840 8007F310 21208002 */  addu       $a0, $s4, $zero
/* 8D3B844 8007F314 0957010C */  jal        func_80055C24
/* 8D3B848 8007F318 460082A2 */   sb        $v0, 0x46($s4)
/* 8D3B84C 8007F31C 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3B850 8007F320 020002A2 */  sb         $v0, 0x2($s0)
/* 8D3B854 8007F324 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 8D3B858 8007F328 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 8D3B85C 8007F32C 00000000 */  nop
/* 8D3B860 8007F330 030002A2 */  sb         $v0, 0x3($s0)
/* 8D3B864 8007F334 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 8D3B868 8007F338 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 8D3B86C 8007F33C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8D3B870 8007F340 100002AE */  sw         $v0, 0x10($s0)
/* 8D3B874 8007F344 040003A2 */  sb         $v1, 0x4($s0)
/* 8D3B878 8007F348 410080A2 */  sb         $zero, 0x41($s4)
/* 8D3B87C 8007F34C 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 8D3B880 8007F350 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B884 8007F354 4D0080A2 */   sb        $zero, 0x4D($s4)
.Llevel_45_8007F358:
/* 8D3B888 8007F358 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B88C 8007F35C 0000908E */  lw         $s0, 0x0($s4)
/* 8D3B890 8007F360 5E3C010C */  jal        func_8004F178
/* 8D3B894 8007F364 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3B898 8007F368 0957010C */  jal        func_80055C24
/* 8D3B89C 8007F36C 21208002 */   addu      $a0, $s4, $zero
/* 8D3B8A0 8007F370 10000224 */  addiu      $v0, $zero, 0x10
/* 8D3B8A4 8007F374 3B000324 */  addiu      $v1, $zero, 0x3B
/* 8D3B8A8 8007F378 000002A6 */  sh         $v0, 0x0($s0)
/* 8D3B8AC 8007F37C 80000224 */  addiu      $v0, $zero, 0x80
/* 8D3B8B0 8007F380 570083A2 */  sb         $v1, 0x57($s4)
/* 8D3B8B4 8007F384 540082A2 */  sb         $v0, 0x54($s4)
/* 8D3B8B8 8007F388 550082A2 */  sb         $v0, 0x55($s4)
/* 8D3B8BC 8007F38C 560080A2 */  sb         $zero, 0x56($s4)
/* 8D3B8C0 8007F390 3600A486 */  lh         $a0, 0x36($s5)
/* 8D3B8C4 8007F394 98010224 */  addiu      $v0, $zero, 0x198
/* 8D3B8C8 8007F398 04008210 */  beq        $a0, $v0, .Llevel_45_8007F3AC
/* 8D3B8CC 8007F39C 01000224 */   addiu     $v0, $zero, 0x1
/* 8D3B8D0 8007F3A0 C2020224 */  addiu      $v0, $zero, 0x2C2
/* 8D3B8D4 8007F3A4 05008214 */  bne        $a0, $v0, .Llevel_45_8007F3BC
/* 8D3B8D8 8007F3A8 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_45_8007F3AC:
/* 8D3B8DC 8007F3AC 020002A2 */  sb         $v0, 0x2($s0)
/* 8D3B8E0 8007F3B0 030002A2 */  sb         $v0, 0x3($s0)
/* 8D3B8E4 8007F3B4 FDFC0108 */  j          .Llevel_45_8007F3F4
/* 8D3B8E8 8007F3B8 7F000224 */   addiu     $v0, $zero, 0x7F
.Llevel_45_8007F3BC:
/* 8D3B8EC 8007F3BC 70020224 */  addiu      $v0, $zero, 0x270
/* 8D3B8F0 8007F3C0 0A008214 */  bne        $a0, $v0, .Llevel_45_8007F3EC
/* 8D3B8F4 8007F3C4 60000224 */   addiu     $v0, $zero, 0x60
/* 8D3B8F8 8007F3C8 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3B8FC 8007F3CC 020002A2 */  sb         $v0, 0x2($s0)
/* 8D3B900 8007F3D0 E0000224 */  addiu      $v0, $zero, 0xE0
/* 8D3B904 8007F3D4 540082A2 */  sb         $v0, 0x54($s4)
/* 8D3B908 8007F3D8 550082A2 */  sb         $v0, 0x55($s4)
/* 8D3B90C 8007F3DC 560082A2 */  sb         $v0, 0x56($s4)
/* 8D3B910 8007F3E0 60000224 */  addiu      $v0, $zero, 0x60
/* 8D3B914 8007F3E4 FCFC0108 */  j          .Llevel_45_8007F3F0
/* 8D3B918 8007F3E8 570083A2 */   sb        $v1, 0x57($s4)
.Llevel_45_8007F3EC:
/* 8D3B91C 8007F3EC 020000A2 */  sb         $zero, 0x2($s0)
.Llevel_45_8007F3F0:
/* 8D3B920 8007F3F0 030000A2 */  sb         $zero, 0x3($s0)
.Llevel_45_8007F3F4:
/* 8D3B924 8007F3F4 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 8D3B928 8007F3F8 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B92C 8007F3FC 0780103C */  lui        $s0, %hi(D_8006E020)
/* 8D3B930 8007F400 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 8D3B934 8007F404 21280002 */  addu       $a1, $s0, $zero
/* 8D3B938 8007F408 FE000224 */  addiu      $v0, $zero, 0xFE
/* 8D3B93C 8007F40C CD3C010C */  jal        func_8004F334
/* 8D3B940 8007F410 470082A2 */   sb        $v0, 0x47($s4)
/* 8D3B944 8007F414 21204000 */  addu       $a0, $v0, $zero
/* 8D3B948 8007F418 0780023C */  lui        $v0, %hi(D_8006E028)
/* 8D3B94C 8007F41C 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 8D3B950 8007F420 1400858E */  lw         $a1, 0x14($s4)
/* 8D3B954 8007F424 21300000 */  addu       $a2, $zero, $zero
/* 8D3B958 8007F428 203A010C */  jal        func_8004E880
/* 8D3B95C 8007F42C 23284500 */   subu      $a1, $v0, $a1
/* 8D3B960 8007F430 21300000 */  addu       $a2, $zero, $zero
/* 8D3B964 8007F434 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 8D3B968 8007F438 450082A2 */  sb         $v0, 0x45($s4)
/* 8D3B96C 8007F43C 0000038E */  lw         $v1, 0x0($s0)
/* 8D3B970 8007F440 0C00848E */  lw         $a0, 0xC($s4)
/* 8D3B974 8007F444 0780023C */  lui        $v0, %hi(D_8006E024)
/* 8D3B978 8007F448 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 8D3B97C 8007F44C 1000858E */  lw         $a1, 0x10($s4)
/* 8D3B980 8007F450 23206400 */  subu       $a0, $v1, $a0
/* 8D3B984 8007F454 85FD0108 */  j          .Llevel_45_8007F614
/* 8D3B988 8007F458 23284500 */   subu      $a1, $v0, $a1
.Llevel_45_8007F45C:
/* 8D3B98C 8007F45C 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3B990 8007F460 5E3C010C */  jal        func_8004F178
/* 8D3B994 8007F464 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3B998 8007F468 4400A292 */  lbu        $v0, 0x44($s5)
/* 8D3B99C 8007F46C 00000000 */  nop
/* 8D3B9A0 8007F470 440082A2 */  sb         $v0, 0x44($s4)
/* 8D3B9A4 8007F474 4500A292 */  lbu        $v0, 0x45($s5)
/* 8D3B9A8 8007F478 00000000 */  nop
/* 8D3B9AC 8007F47C 450082A2 */  sb         $v0, 0x45($s4)
/* 8D3B9B0 8007F480 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B9B4 8007F484 21208002 */  addu       $a0, $s4, $zero
/* 8D3B9B8 8007F488 0957010C */  jal        func_80055C24
/* 8D3B9BC 8007F48C 460082A2 */   sb        $v0, 0x46($s4)
/* 8D3B9C0 8007F490 21208002 */  addu       $a0, $s4, $zero
/* 8D3B9C4 8007F494 E0D3000C */  jal        func_80034F80
/* 8D3B9C8 8007F498 01000524 */   addiu     $a1, $zero, 0x1
/* 8D3B9CC 8007F49C 04000224 */  addiu      $v0, $zero, 0x4
/* 8D3B9D0 8007F4A0 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3B9D4 8007F4A4 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_45_8007F4A8:
/* 8D3B9D8 8007F4A8 4600A292 */  lbu        $v0, 0x46($s5)
/* 8D3B9DC 8007F4AC 0000908E */  lw         $s0, 0x0($s4)
/* 8D3B9E0 8007F4B0 0C00A526 */  addiu      $a1, $s5, 0xC
/* 8D3B9E4 8007F4B4 5E3C010C */  jal        func_8004F178
/* 8D3B9E8 8007F4B8 460082A2 */   sb        $v0, 0x46($s4)
/* 8D3B9EC 8007F4BC 0957010C */  jal        func_80055C24
/* 8D3B9F0 8007F4C0 21208002 */   addu      $a0, $s4, $zero
/* 8D3B9F4 8007F4C4 000015AE */  sw         $s5, 0x0($s0)
/* 8D3B9F8 8007F4C8 4C00A292 */  lbu        $v0, 0x4C($s5)
/* 8D3B9FC 8007F4CC 00000000 */  nop
/* 8D3BA00 8007F4D0 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 8D3BA04 8007F4D4 4E00A292 */  lbu        $v0, 0x4E($s5)
/* 8D3BA08 8007F4D8 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3BA0C 8007F4DC 4E0082A2 */   sb        $v0, 0x4E($s4)
.Llevel_45_8007F4E0:
/* 8D3BA10 8007F4E0 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3BA14 8007F4E4 0000908E */  lw         $s0, 0x0($s4)
/* 8D3BA18 8007F4E8 5E3C010C */  jal        func_8004F178
/* 8D3BA1C 8007F4EC 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3BA20 8007F4F0 0957010C */  jal        func_80055C24
/* 8D3BA24 8007F4F4 21208002 */   addu      $a0, $s4, $zero
/* 8D3BA28 8007F4F8 10000224 */  addiu      $v0, $zero, 0x10
/* 8D3BA2C 8007F4FC 000002AE */  sw         $v0, 0x0($s0)
/* 8D3BA30 8007F500 3F000224 */  addiu      $v0, $zero, 0x3F
/* 8D3BA34 8007F504 570082A2 */  sb         $v0, 0x57($s4)
/* 8D3BA38 8007F508 80000224 */  addiu      $v0, $zero, 0x80
/* 8D3BA3C 8007F50C 540082A2 */  sb         $v0, 0x54($s4)
/* 8D3BA40 8007F510 40000224 */  addiu      $v0, $zero, 0x40
/* 8D3BA44 8007F514 550082A2 */  sb         $v0, 0x55($s4)
/* 8D3BA48 8007F518 9171010C */  jal        rand
/* 8D3BA4C 8007F51C 560080A2 */   sb        $zero, 0x56($s4)
/* 8D3BA50 8007F520 9171010C */  jal        rand
/* 8D3BA54 8007F524 450082A2 */   sb        $v0, 0x45($s4)
/* 8D3BA58 8007F528 460082A2 */  sb         $v0, 0x46($s4)
/* 8D3BA5C 8007F52C 46000224 */  addiu      $v0, $zero, 0x46
/* 8D3BA60 8007F530 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 8D3BA64 8007F534 04000224 */  addiu      $v0, $zero, 0x4
/* 8D3BA68 8007F538 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3BA6C 8007F53C 470082A2 */   sb        $v0, 0x47($s4)
.Llevel_45_8007F540:
/* 8D3BA70 8007F540 0000908E */  lw         $s0, 0x0($s4)
/* 8D3BA74 8007F544 5E3C010C */  jal        func_8004F178
/* 8D3BA78 8007F548 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3BA7C 8007F54C 0957010C */  jal        func_80055C24
/* 8D3BA80 8007F550 21208002 */   addu      $a0, $s4, $zero
/* 8D3BA84 8007F554 18000224 */  addiu      $v0, $zero, 0x18
/* 8D3BA88 8007F558 000002AE */  sw         $v0, 0x0($s0)
/* 8D3BA8C 8007F55C 30000224 */  addiu      $v0, $zero, 0x30
/* 8D3BA90 8007F560 570082A2 */  sb         $v0, 0x57($s4)
/* 8D3BA94 8007F564 64000224 */  addiu      $v0, $zero, 0x64
/* 8D3BA98 8007F568 540080A2 */  sb         $zero, 0x54($s4)
/* 8D3BA9C 8007F56C 550080A2 */  sb         $zero, 0x55($s4)
/* 8D3BAA0 8007F570 560080A2 */  sb         $zero, 0x56($s4)
/* 8D3BAA4 8007F574 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 8D3BAA8 8007F578 9171010C */  jal        rand
/* 8D3BAAC 8007F57C 470080A2 */   sb        $zero, 0x47($s4)
/* 8D3BAB0 8007F580 9171010C */  jal        rand
/* 8D3BAB4 8007F584 450082A2 */   sb        $v0, 0x45($s4)
/* 8D3BAB8 8007F588 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3BABC 8007F58C 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_45_8007F590:
/* 8D3BAC0 8007F590 21202002 */  addu       $a0, $s1, $zero
/* 8D3BAC4 8007F594 0000908E */  lw         $s0, 0x0($s4)
/* 8D3BAC8 8007F598 0000B28E */  lw         $s2, 0x0($s5)
/* 8D3BACC 8007F59C 5E3C010C */  jal        func_8004F178
/* 8D3BAD0 8007F5A0 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3BAD4 8007F5A4 4457010C */  jal        func_80055D10
/* 8D3BAD8 8007F5A8 21208002 */   addu      $a0, $s4, $zero
/* 8D3BADC 8007F5AC 410080A2 */  sb         $zero, 0x41($s4)
/* 8D3BAE0 8007F5B0 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 8D3BAE4 8007F5B4 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 8D3BAE8 8007F5B8 000000AE */  sw         $zero, 0x0($s0)
/* 8D3BAEC 8007F5BC 0400428E */  lw         $v0, 0x4($s2)
/* 8D3BAF0 8007F5C0 21202002 */  addu       $a0, $s1, $zero
/* 8D3BAF4 8007F5C4 02004584 */  lh         $a1, 0x2($v0)
/* 8D3BAF8 8007F5C8 0C00428C */  lw         $v0, 0xC($v0)
/* 8D3BAFC 8007F5CC 00290500 */  sll        $a1, $a1, 4
/* 8D3BB00 8007F5D0 F0FFA524 */  addiu      $a1, $a1, -0x10
/* 8D3BB04 8007F5D4 5E3C010C */  jal        func_8004F178
/* 8D3BB08 8007F5D8 21284500 */   addu      $a1, $v0, $a1
/* 8D3BB0C 8007F5DC 0400428E */  lw         $v0, 0x4($s2)
/* 8D3BB10 8007F5E0 1000A427 */  addiu      $a0, $sp, 0x10
/* 8D3BB14 8007F5E4 02004684 */  lh         $a2, 0x2($v0)
/* 8D3BB18 8007F5E8 0C00428C */  lw         $v0, 0xC($v0)
/* 8D3BB1C 8007F5EC 00310600 */  sll        $a2, $a2, 4
/* 8D3BB20 8007F5F0 21284600 */  addu       $a1, $v0, $a2
/* 8D3BB24 8007F5F4 F0FFC624 */  addiu      $a2, $a2, -0x10
/* 8D3BB28 8007F5F8 723C010C */  jal        func_8004F1C8
/* 8D3BB2C 8007F5FC 21304600 */   addu      $a2, $v0, $a2
/* 8D3BB30 8007F600 440080A2 */  sb         $zero, 0x44($s4)
/* 8D3BB34 8007F604 450080A2 */  sb         $zero, 0x45($s4)
/* 8D3BB38 8007F608 1000A48F */  lw         $a0, 0x10($sp)
/* 8D3BB3C 8007F60C 1400A58F */  lw         $a1, 0x14($sp)
/* 8D3BB40 8007F610 21300000 */  addu       $a2, $zero, $zero
.Llevel_45_8007F614:
/* 8D3BB44 8007F614 203A010C */  jal        func_8004E880
/* 8D3BB48 8007F618 00000000 */   nop
/* 8D3BB4C 8007F61C 94FD0108 */  j          .Llevel_45_8007F650
/* 8D3BB50 8007F620 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_45_8007F624:
/* 8D3BB54 8007F624 0300A012 */  beqz       $s5, .Llevel_45_8007F634
/* 8D3BB58 8007F628 0C00A526 */   addiu     $a1, $s5, 0xC
/* 8D3BB5C 8007F62C 90FD0108 */  j          .Llevel_45_8007F640
/* 8D3BB60 8007F630 0C008426 */   addiu     $a0, $s4, 0xC
.Llevel_45_8007F634:
/* 8D3BB64 8007F634 0C008426 */  addiu      $a0, $s4, 0xC
/* 8D3BB68 8007F638 0780053C */  lui        $a1, %hi(D_80070328)
/* 8D3BB6C 8007F63C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_45_8007F640:
/* 8D3BB70 8007F640 5E3C010C */  jal        func_8004F178
/* 8D3BB74 8007F644 00000000 */   nop
/* 8D3BB78 8007F648 0957010C */  jal        func_80055C24
/* 8D3BB7C 8007F64C 21208002 */   addu      $a0, $s4, $zero
.Llevel_45_8007F650:
/* 8D3BB80 8007F650 21108002 */  addu       $v0, $s4, $zero
.Llevel_45_8007F654:
/* 8D3BB84 8007F654 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 8D3BB88 8007F658 3800B68F */  lw         $s6, 0x38($sp)
/* 8D3BB8C 8007F65C 3400B58F */  lw         $s5, 0x34($sp)
/* 8D3BB90 8007F660 3000B48F */  lw         $s4, 0x30($sp)
/* 8D3BB94 8007F664 2C00B38F */  lw         $s3, 0x2C($sp)
/* 8D3BB98 8007F668 2800B28F */  lw         $s2, 0x28($sp)
/* 8D3BB9C 8007F66C 2400B18F */  lw         $s1, 0x24($sp)
/* 8D3BBA0 8007F670 2000B08F */  lw         $s0, 0x20($sp)
/* 8D3BBA4 8007F674 4000BD27 */  addiu      $sp, $sp, 0x40
/* 8D3BBA8 8007F678 0800E003 */  jr         $ra
/* 8D3BBAC 8007F67C 00000000 */   nop
.size func_level_45_8007EBE8, . - func_level_45_8007EBE8
