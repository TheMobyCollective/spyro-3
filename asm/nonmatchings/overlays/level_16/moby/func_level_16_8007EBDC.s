.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_16_8007EBDC
/* 4BA010C 8007EBDC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4BA0110 8007EBE0 2400B1AF */  sw         $s1, 0x24($sp)
/* 4BA0114 8007EBE4 21888000 */  addu       $s1, $a0, $zero
/* 4BA0118 8007EBE8 3800B6AF */  sw         $s6, 0x38($sp)
/* 4BA011C 8007EBEC 21B0A000 */  addu       $s6, $a1, $zero
/* 4BA0120 8007EBF0 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 4BA0124 8007EBF4 3400B5AF */  sw         $s5, 0x34($sp)
/* 4BA0128 8007EBF8 3000B4AF */  sw         $s4, 0x30($sp)
/* 4BA012C 8007EBFC 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 4BA0130 8007EC00 2800B2AF */  sw         $s2, 0x28($sp)
/* 4BA0134 8007EC04 9F56010C */  jal        func_80055A7C
/* 4BA0138 8007EC08 2000B0AF */   sw        $s0, 0x20($sp)
/* 4BA013C 8007EC0C 21A84000 */  addu       $s5, $v0, $zero
/* 4BA0140 8007EC10 0300A016 */  bnez       $s5, .Llevel_16_8007EC20
/* 4BA0144 8007EC14 2120A002 */   addu      $a0, $s5, $zero
/* 4BA0148 8007EC18 20FE0108 */  j          .Llevel_16_8007F880
/* 4BA014C 8007EC1C 21100000 */   addu      $v0, $zero, $zero
.Llevel_16_8007EC20:
/* 4BA0150 8007EC20 21280000 */  addu       $a1, $zero, $zero
/* 4BA0154 8007EC24 0000B08E */  lw         $s0, 0x0($s5)
/* 4BA0158 8007EC28 E439010C */  jal        func_8004E790
/* 4BA015C 8007EC2C 58000624 */   addiu     $a2, $zero, 0x58
/* 4BA0160 8007EC30 21280000 */  addu       $a1, $zero, $zero
/* 4BA0164 8007EC34 18000624 */  addiu      $a2, $zero, 0x18
/* 4BA0168 8007EC38 21200002 */  addu       $a0, $s0, $zero
/* 4BA016C 8007EC3C E439010C */  jal        func_8004E790
/* 4BA0170 8007EC40 0000A4AE */   sw        $a0, 0x0($s5)
/* 4BA0174 8007EC44 1600C012 */  beqz       $s6, .Llevel_16_8007ECA0
/* 4BA0178 8007EC48 3600B1A6 */   sh        $s1, 0x36($s5)
/* 4BA017C 8007EC4C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 4BA0180 8007EC50 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 4BA0184 8007EC54 00000000 */  nop
/* 4BA0188 8007EC58 2320C402 */  subu       $a0, $s6, $a0
/* 4BA018C 8007EC5C 40190400 */  sll        $v1, $a0, 5
/* 4BA0190 8007EC60 23186400 */  subu       $v1, $v1, $a0
/* 4BA0194 8007EC64 40190300 */  sll        $v1, $v1, 5
/* 4BA0198 8007EC68 21186400 */  addu       $v1, $v1, $a0
/* 4BA019C 8007EC6C C0100300 */  sll        $v0, $v1, 3
/* 4BA01A0 8007EC70 21186200 */  addu       $v1, $v1, $v0
/* 4BA01A4 8007EC74 C0130300 */  sll        $v0, $v1, 15
/* 4BA01A8 8007EC78 23104300 */  subu       $v0, $v0, $v1
/* 4BA01AC 8007EC7C 80100200 */  sll        $v0, $v0, 2
/* 4BA01B0 8007EC80 21104400 */  addu       $v0, $v0, $a0
/* 4BA01B4 8007EC84 23100200 */  negu       $v0, $v0
/* 4BA01B8 8007EC88 C3180200 */  sra        $v1, $v0, 3
/* 4BA01BC 8007EC8C 0001622C */  sltiu      $v0, $v1, 0x100
/* 4BA01C0 8007EC90 04004010 */  beqz       $v0, .Llevel_16_8007ECA4
/* 4BA01C4 8007EC94 FF000224 */   addiu     $v0, $zero, 0xFF
/* 4BA01C8 8007EC98 2AFB0108 */  j          .Llevel_16_8007ECA8
/* 4BA01CC 8007EC9C 3A00A3A2 */   sb        $v1, 0x3A($s5)
.Llevel_16_8007ECA0:
/* 4BA01D0 8007ECA0 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_16_8007ECA4:
/* 4BA01D4 8007ECA4 3A00A2A2 */  sb         $v0, 0x3A($s5)
.Llevel_16_8007ECA8:
/* 4BA01D8 8007ECA8 FBD3000C */  jal        func_80034FEC
/* 4BA01DC 8007ECAC 2120A002 */   addu      $a0, $s5, $zero
/* 4BA01E0 8007ECB0 A2000224 */  addiu      $v0, $zero, 0xA2
/* 4BA01E4 8007ECB4 82012212 */  beq        $s1, $v0, .Llevel_16_8007F2C0
/* 4BA01E8 8007ECB8 A300222A */   slti      $v0, $s1, 0xA3
/* 4BA01EC 8007ECBC 12004010 */  beqz       $v0, .Llevel_16_8007ED08
/* 4BA01F0 8007ECC0 10000224 */   addiu     $v0, $zero, 0x10
/* 4BA01F4 8007ECC4 01012212 */  beq        $s1, $v0, .Llevel_16_8007F0CC
/* 4BA01F8 8007ECC8 1100222A */   slti      $v0, $s1, 0x11
/* 4BA01FC 8007ECCC 07004010 */  beqz       $v0, .Llevel_16_8007ECEC
/* 4BA0200 8007ECD0 01000224 */   addiu     $v0, $zero, 0x1
/* 4BA0204 8007ECD4 21002212 */  beq        $s1, $v0, .Llevel_16_8007ED5C
/* 4BA0208 8007ECD8 08000224 */   addiu     $v0, $zero, 0x8
/* 4BA020C 8007ECDC 26002212 */  beq        $s1, $v0, .Llevel_16_8007ED78
/* 4BA0210 8007ECE0 0C00A426 */   addiu     $a0, $s5, 0xC
/* 4BA0214 8007ECE4 14FE0108 */  j          .Llevel_16_8007F850
/* 4BA0218 8007ECE8 00000000 */   nop
.Llevel_16_8007ECEC:
/* 4BA021C 8007ECEC 78000224 */  addiu      $v0, $zero, 0x78
/* 4BA0220 8007ECF0 29012212 */  beq        $s1, $v0, .Llevel_16_8007F198
/* 4BA0224 8007ECF4 84000224 */   addiu     $v0, $zero, 0x84
/* 4BA0228 8007ECF8 63012212 */  beq        $s1, $v0, .Llevel_16_8007F288
/* 4BA022C 8007ECFC 0C00A426 */   addiu     $a0, $s5, 0xC
/* 4BA0230 8007ED00 14FE0108 */  j          .Llevel_16_8007F850
/* 4BA0234 8007ED04 00000000 */   nop
.Llevel_16_8007ED08:
/* 4BA0238 8007ED08 10010224 */  addiu      $v0, $zero, 0x110
/* 4BA023C 8007ED0C EE012212 */  beq        $s1, $v0, .Llevel_16_8007F4C8
/* 4BA0240 8007ED10 1101222A */   slti      $v0, $s1, 0x111
/* 4BA0244 8007ED14 07004010 */  beqz       $v0, .Llevel_16_8007ED34
/* 4BA0248 8007ED18 D3000224 */   addiu     $v0, $zero, 0xD3
/* 4BA024C 8007ED1C EB002212 */  beq        $s1, $v0, .Llevel_16_8007F0CC
/* 4BA0250 8007ED20 04010224 */   addiu     $v0, $zero, 0x104
/* 4BA0254 8007ED24 D3012212 */  beq        $s1, $v0, .Llevel_16_8007F474
/* 4BA0258 8007ED28 00000000 */   nop
/* 4BA025C 8007ED2C 14FE0108 */  j          .Llevel_16_8007F850
/* 4BA0260 8007ED30 00000000 */   nop
.Llevel_16_8007ED34:
/* 4BA0264 8007ED34 3201222A */  slti       $v0, $s1, 0x132
/* 4BA0268 8007ED38 C5024014 */  bnez       $v0, .Llevel_16_8007F850
/* 4BA026C 8007ED3C 3501222A */   slti      $v0, $s1, 0x135
/* 4BA0270 8007ED40 FE014014 */  bnez       $v0, .Llevel_16_8007F53C
/* 4BA0274 8007ED44 0C00A426 */   addiu     $a0, $s5, 0xC
/* 4BA0278 8007ED48 38020224 */  addiu      $v0, $zero, 0x238
/* 4BA027C 8007ED4C FC012212 */  beq        $s1, $v0, .Llevel_16_8007F540
/* 4BA0280 8007ED50 0C00C526 */   addiu     $a1, $s6, 0xC
/* 4BA0284 8007ED54 14FE0108 */  j          .Llevel_16_8007F850
/* 4BA0288 8007ED58 00000000 */   nop
.Llevel_16_8007ED5C:
/* 4BA028C 8007ED5C 0957010C */  jal        func_80055C24
/* 4BA0290 8007ED60 2120A002 */   addu      $a0, $s5, $zero
/* 4BA0294 8007ED64 18000224 */  addiu      $v0, $zero, 0x18
/* 4BA0298 8007ED68 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 4BA029C 8007ED6C 40000224 */  addiu      $v0, $zero, 0x40
/* 4BA02A0 8007ED70 2FFD0108 */  j          .Llevel_16_8007F4BC
/* 4BA02A4 8007ED74 4A00A2A2 */   sb        $v0, 0x4A($s5)
.Llevel_16_8007ED78:
/* 4BA02A8 8007ED78 0C00C526 */  addiu      $a1, $s6, 0xC
/* 4BA02AC 8007ED7C 0000B48E */  lw         $s4, 0x0($s5)
/* 4BA02B0 8007ED80 20000224 */  addiu      $v0, $zero, 0x20
/* 4BA02B4 8007ED84 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 4BA02B8 8007ED88 5E3C010C */  jal        func_8004F178
/* 4BA02BC 8007ED8C 4E00A2A2 */   sb        $v0, 0x4E($s5)
/* 4BA02C0 8007ED90 0957010C */  jal        func_80055C24
/* 4BA02C4 8007ED94 2120A002 */   addu      $a0, $s5, $zero
/* 4BA02C8 8007ED98 2C010424 */  addiu      $a0, $zero, 0x12C
/* 4BA02CC 8007ED9C DBD8000C */  jal        func_8003636C
/* 4BA02D0 8007EDA0 34080524 */   addiu     $a1, $zero, 0x834
/* 4BA02D4 8007EDA4 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 4BA02D8 8007EDA8 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 4BA02DC 8007EDAC DBD8000C */  jal        func_8003636C
/* 4BA02E0 8007EDB0 21904000 */   addu      $s2, $v0, $zero
/* 4BA02E4 8007EDB4 4600D192 */  lbu        $s1, 0x46($s6)
/* 4BA02E8 8007EDB8 21204002 */  addu       $a0, $s2, $zero
/* 4BA02EC 8007EDBC 21882202 */  addu       $s1, $s1, $v0
/* 4BA02F0 8007EDC0 8B3A010C */  jal        func_8004EA2C
/* 4BA02F4 8007EDC4 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 4BA02F8 8007EDC8 21202002 */  addu       $a0, $s1, $zero
/* 4BA02FC 8007EDCC 8B3A010C */  jal        func_8004EA2C
/* 4BA0300 8007EDD0 21804000 */   addu      $s0, $v0, $zero
/* 4BA0304 8007EDD4 78001324 */  addiu      $s3, $zero, 0x78
/* 4BA0308 8007EDD8 18005300 */  mult       $v0, $s3
/* 4BA030C 8007EDDC 12400000 */  mflo       $t0
/* 4BA0310 8007EDE0 83811000 */  sra        $s0, $s0, 6
/* 4BA0314 8007EDE4 00000000 */  nop
/* 4BA0318 8007EDE8 18000802 */  mult       $s0, $t0
/* 4BA031C 8007EDEC 21204002 */  addu       $a0, $s2, $zero
/* 4BA0320 8007EDF0 12400000 */  mflo       $t0
/* 4BA0324 8007EDF4 83140800 */  sra        $v0, $t0, 18
/* 4BA0328 8007EDF8 8B3A010C */  jal        func_8004EA2C
/* 4BA032C 8007EDFC 000082A6 */   sh        $v0, 0x0($s4)
/* 4BA0330 8007EE00 21202002 */  addu       $a0, $s1, $zero
/* 4BA0334 8007EE04 793A010C */  jal        func_8004E9E4
/* 4BA0338 8007EE08 21804000 */   addu      $s0, $v0, $zero
/* 4BA033C 8007EE0C 18005300 */  mult       $v0, $s3
/* 4BA0340 8007EE10 12400000 */  mflo       $t0
/* 4BA0344 8007EE14 83811000 */  sra        $s0, $s0, 6
/* 4BA0348 8007EE18 00000000 */  nop
/* 4BA034C 8007EE1C 18000802 */  mult       $s0, $t0
/* 4BA0350 8007EE20 21204002 */  addu       $a0, $s2, $zero
/* 4BA0354 8007EE24 12400000 */  mflo       $t0
/* 4BA0358 8007EE28 83140800 */  sra        $v0, $t0, 18
/* 4BA035C 8007EE2C 793A010C */  jal        func_8004E9E4
/* 4BA0360 8007EE30 020082A6 */   sh        $v0, 0x2($s4)
/* 4BA0364 8007EE34 96000324 */  addiu      $v1, $zero, 0x96
/* 4BA0368 8007EE38 18004300 */  mult       $v0, $v1
/* 4BA036C 8007EE3C 12400000 */  mflo       $t0
/* 4BA0370 8007EE40 03130800 */  sra        $v0, $t0, 12
/* 4BA0374 8007EE44 040082A6 */  sh         $v0, 0x4($s4)
/* 4BA0378 8007EE48 5100C492 */  lbu        $a0, 0x51($s6)
/* 4BA037C 8007EE4C 00000000 */  nop
/* 4BA0380 8007EE50 26008010 */  beqz       $a0, .Llevel_16_8007EEEC
/* 4BA0384 8007EE54 1000033C */   lui       $v1, (0x100000 >> 16)
/* 4BA0388 8007EE58 1800C28E */  lw         $v0, 0x18($s6)
/* 4BA038C 8007EE5C 00000000 */  nop
/* 4BA0390 8007EE60 24104300 */  and        $v0, $v0, $v1
/* 4BA0394 8007EE64 21004010 */  beqz       $v0, .Llevel_16_8007EEEC
/* 4BA0398 8007EE68 40100400 */   sll       $v0, $a0, 1
/* 4BA039C 8007EE6C 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA03A0 8007EE70 21082200 */  addu       $at, $at, $v0
/* 4BA03A4 8007EE74 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4BA03A8 8007EE78 00000000 */  nop
/* 4BA03AC 8007EE7C 80100300 */  sll        $v0, $v1, 2
/* 4BA03B0 8007EE80 21104300 */  addu       $v0, $v0, $v1
/* 4BA03B4 8007EE84 00190200 */  sll        $v1, $v0, 4
/* 4BA03B8 8007EE88 23186200 */  subu       $v1, $v1, $v0
/* 4BA03BC 8007EE8C 00008296 */  lhu        $v0, 0x0($s4)
/* 4BA03C0 8007EE90 C31A0300 */  sra        $v1, $v1, 11
/* 4BA03C4 8007EE94 21104300 */  addu       $v0, $v0, $v1
/* 4BA03C8 8007EE98 000082A6 */  sh         $v0, 0x0($s4)
/* 4BA03CC 8007EE9C 5100C292 */  lbu        $v0, 0x51($s6)
/* 4BA03D0 8007EEA0 28000424 */  addiu      $a0, $zero, 0x28
/* 4BA03D4 8007EEA4 40100200 */  sll        $v0, $v0, 1
/* 4BA03D8 8007EEA8 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA03DC 8007EEAC 21082200 */  addu       $at, $at, $v0
/* 4BA03E0 8007EEB0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4BA03E4 8007EEB4 46000524 */  addiu      $a1, $zero, 0x46
/* 4BA03E8 8007EEB8 80100300 */  sll        $v0, $v1, 2
/* 4BA03EC 8007EEBC 21104300 */  addu       $v0, $v0, $v1
/* 4BA03F0 8007EEC0 00190200 */  sll        $v1, $v0, 4
/* 4BA03F4 8007EEC4 23186200 */  subu       $v1, $v1, $v0
/* 4BA03F8 8007EEC8 02008296 */  lhu        $v0, 0x2($s4)
/* 4BA03FC 8007EECC C31A0300 */  sra        $v1, $v1, 11
/* 4BA0400 8007EED0 21104300 */  addu       $v0, $v0, $v1
/* 4BA0404 8007EED4 DBD8000C */  jal        func_8003636C
/* 4BA0408 8007EED8 020082A6 */   sh        $v0, 0x2($s4)
/* 4BA040C 8007EEDC 04008396 */  lhu        $v1, 0x4($s4)
/* 4BA0410 8007EEE0 00000000 */  nop
/* 4BA0414 8007EEE4 21186200 */  addu       $v1, $v1, $v0
/* 4BA0418 8007EEE8 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_16_8007EEEC:
/* 4BA041C 8007EEEC 1800C28E */  lw         $v0, 0x18($s6)
/* 4BA0420 8007EEF0 0200033C */  lui        $v1, (0x20000 >> 16)
/* 4BA0424 8007EEF4 24104300 */  and        $v0, $v0, $v1
/* 4BA0428 8007EEF8 1B004010 */  beqz       $v0, .Llevel_16_8007EF68
/* 4BA042C 8007EEFC 00000000 */   nop
/* 4BA0430 8007EF00 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA0434 8007EF04 00000000 */  nop
/* 4BA0438 8007EF08 40100200 */  sll        $v0, $v0, 1
/* 4BA043C 8007EF0C 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA0440 8007EF10 21082200 */  addu       $at, $at, $v0
/* 4BA0444 8007EF14 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4BA0448 8007EF18 00000000 */  nop
/* 4BA044C 8007EF1C C0100300 */  sll        $v0, $v1, 3
/* 4BA0450 8007EF20 23104300 */  subu       $v0, $v0, $v1
/* 4BA0454 8007EF24 C0100200 */  sll        $v0, $v0, 3
/* 4BA0458 8007EF28 23104300 */  subu       $v0, $v0, $v1
/* 4BA045C 8007EF2C 00008396 */  lhu        $v1, 0x0($s4)
/* 4BA0460 8007EF30 83120200 */  sra        $v0, $v0, 10
/* 4BA0464 8007EF34 21186200 */  addu       $v1, $v1, $v0
/* 4BA0468 8007EF38 000083A6 */  sh         $v1, 0x0($s4)
/* 4BA046C 8007EF3C 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA0470 8007EF40 00000000 */  nop
/* 4BA0474 8007EF44 40100200 */  sll        $v0, $v0, 1
/* 4BA0478 8007EF48 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA047C 8007EF4C 21082200 */  addu       $at, $at, $v0
/* 4BA0480 8007EF50 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4BA0484 8007EF54 00000000 */  nop
/* 4BA0488 8007EF58 C0100300 */  sll        $v0, $v1, 3
/* 4BA048C 8007EF5C 23104300 */  subu       $v0, $v0, $v1
/* 4BA0490 8007EF60 F3FB0108 */  j          .Llevel_16_8007EFCC
/* 4BA0494 8007EF64 C0100200 */   sll       $v0, $v0, 3
.Llevel_16_8007EF68:
/* 4BA0498 8007EF68 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA049C 8007EF6C 00000000 */  nop
/* 4BA04A0 8007EF70 40100200 */  sll        $v0, $v0, 1
/* 4BA04A4 8007EF74 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA04A8 8007EF78 21082200 */  addu       $at, $at, $v0
/* 4BA04AC 8007EF7C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4BA04B0 8007EF80 00000000 */  nop
/* 4BA04B4 8007EF84 C0100300 */  sll        $v0, $v1, 3
/* 4BA04B8 8007EF88 21104300 */  addu       $v0, $v0, $v1
/* 4BA04BC 8007EF8C 80100200 */  sll        $v0, $v0, 2
/* 4BA04C0 8007EF90 23104300 */  subu       $v0, $v0, $v1
/* 4BA04C4 8007EF94 00008396 */  lhu        $v1, 0x0($s4)
/* 4BA04C8 8007EF98 83120200 */  sra        $v0, $v0, 10
/* 4BA04CC 8007EF9C 21186200 */  addu       $v1, $v1, $v0
/* 4BA04D0 8007EFA0 000083A6 */  sh         $v1, 0x0($s4)
/* 4BA04D4 8007EFA4 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA04D8 8007EFA8 00000000 */  nop
/* 4BA04DC 8007EFAC 40100200 */  sll        $v0, $v0, 1
/* 4BA04E0 8007EFB0 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA04E4 8007EFB4 21082200 */  addu       $at, $at, $v0
/* 4BA04E8 8007EFB8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4BA04EC 8007EFBC 00000000 */  nop
/* 4BA04F0 8007EFC0 C0100300 */  sll        $v0, $v1, 3
/* 4BA04F4 8007EFC4 21104300 */  addu       $v0, $v0, $v1
/* 4BA04F8 8007EFC8 80100200 */  sll        $v0, $v0, 2
.Llevel_16_8007EFCC:
/* 4BA04FC 8007EFCC 23104300 */  subu       $v0, $v0, $v1
/* 4BA0500 8007EFD0 02008396 */  lhu        $v1, 0x2($s4)
/* 4BA0504 8007EFD4 83120200 */  sra        $v0, $v0, 10
/* 4BA0508 8007EFD8 21186200 */  addu       $v1, $v1, $v0
/* 4BA050C 8007EFDC 020083A6 */  sh         $v1, 0x2($s4)
/* 4BA0510 8007EFE0 3600A386 */  lh         $v1, 0x36($s5)
/* 4BA0514 8007EFE4 0A000224 */  addiu      $v0, $zero, 0xA
/* 4BA0518 8007EFE8 1A006210 */  beq        $v1, $v0, .Llevel_16_8007F054
/* 4BA051C 8007EFEC 1D000224 */   addiu     $v0, $zero, 0x1D
/* 4BA0520 8007EFF0 18006210 */  beq        $v1, $v0, .Llevel_16_8007F054
/* 4BA0524 8007EFF4 00000000 */   nop
/* 4BA0528 8007EFF8 9171010C */  jal        rand
/* 4BA052C 8007EFFC 00000000 */   nop
/* 4BA0530 8007F000 9171010C */  jal        rand
/* 4BA0534 8007F004 4400A2A2 */   sb        $v0, 0x44($s5)
/* 4BA0538 8007F008 9171010C */  jal        rand
/* 4BA053C 8007F00C 4500A2A2 */   sb        $v0, 0x45($s5)
/* 4BA0540 8007F010 4600A2A2 */  sb         $v0, 0x46($s5)
/* 4BA0544 8007F014 00008286 */  lh         $v0, 0x0($s4)
/* 4BA0548 8007F018 0C00A38E */  lw         $v1, 0xC($s5)
/* 4BA054C 8007F01C 40100200 */  sll        $v0, $v0, 1
/* 4BA0550 8007F020 21186200 */  addu       $v1, $v1, $v0
/* 4BA0554 8007F024 0C00A3AE */  sw         $v1, 0xC($s5)
/* 4BA0558 8007F028 02008286 */  lh         $v0, 0x2($s4)
/* 4BA055C 8007F02C 1000A38E */  lw         $v1, 0x10($s5)
/* 4BA0560 8007F030 40100200 */  sll        $v0, $v0, 1
/* 4BA0564 8007F034 21186200 */  addu       $v1, $v1, $v0
/* 4BA0568 8007F038 1000A3AE */  sw         $v1, 0x10($s5)
/* 4BA056C 8007F03C 04008286 */  lh         $v0, 0x4($s4)
/* 4BA0570 8007F040 1400A38E */  lw         $v1, 0x14($s5)
/* 4BA0574 8007F044 40100200 */  sll        $v0, $v0, 1
/* 4BA0578 8007F048 21186200 */  addu       $v1, $v1, $v0
/* 4BA057C 8007F04C 1EFC0108 */  j          .Llevel_16_8007F078
/* 4BA0580 8007F050 1400A3AE */   sw        $v1, 0x14($s5)
.Llevel_16_8007F054:
/* 4BA0584 8007F054 4400C292 */  lbu        $v0, 0x44($s6)
/* 4BA0588 8007F058 00000000 */  nop
/* 4BA058C 8007F05C 4400A2A2 */  sb         $v0, 0x44($s5)
/* 4BA0590 8007F060 4500C292 */  lbu        $v0, 0x45($s6)
/* 4BA0594 8007F064 00000000 */  nop
/* 4BA0598 8007F068 4500A2A2 */  sb         $v0, 0x45($s5)
/* 4BA059C 8007F06C 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA05A0 8007F070 00000000 */  nop
/* 4BA05A4 8007F074 4600A2A2 */  sb         $v0, 0x46($s5)
.Llevel_16_8007F078:
/* 4BA05A8 8007F078 9171010C */  jal        rand
/* 4BA05AC 8007F07C 00000000 */   nop
/* 4BA05B0 8007F080 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA05B4 8007F084 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA05B8 8007F088 9171010C */  jal        rand
/* 4BA05BC 8007F08C 060082A6 */   sh        $v0, 0x6($s4)
/* 4BA05C0 8007F090 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA05C4 8007F094 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA05C8 8007F098 9171010C */  jal        rand
/* 4BA05CC 8007F09C 080082A6 */   sh        $v0, 0x8($s4)
/* 4BA05D0 8007F0A0 78000424 */  addiu      $a0, $zero, 0x78
/* 4BA05D4 8007F0A4 96000524 */  addiu      $a1, $zero, 0x96
/* 4BA05D8 8007F0A8 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA05DC 8007F0AC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA05E0 8007F0B0 DBD8000C */  jal        func_8003636C
/* 4BA05E4 8007F0B4 0A0082A6 */   sh        $v0, 0xA($s4)
/* 4BA05E8 8007F0B8 0C0082A6 */  sh         $v0, 0xC($s4)
/* 4BA05EC 8007F0BC 01000224 */  addiu      $v0, $zero, 0x1
/* 4BA05F0 8007F0C0 0E0082A6 */  sh         $v0, 0xE($s4)
/* 4BA05F4 8007F0C4 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA05F8 8007F0C8 120080A6 */   sh        $zero, 0x12($s4)
.Llevel_16_8007F0CC:
/* 4BA05FC 8007F0CC 10000324 */  addiu      $v1, $zero, 0x10
/* 4BA0600 8007F0D0 3600A286 */  lh         $v0, 0x36($s5)
/* 4BA0604 8007F0D4 0000B18E */  lw         $s1, 0x0($s5)
/* 4BA0608 8007F0D8 19004314 */  bne        $v0, $v1, .Llevel_16_8007F140
/* 4BA060C 8007F0DC 0C00B026 */   addiu     $s0, $s5, 0xC
/* 4BA0610 8007F0E0 0780043C */  lui        $a0, %hi(D_8006C784)
/* 4BA0614 8007F0E4 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 4BA0618 8007F0E8 00000000 */  nop
/* 4BA061C 8007F0EC 04008228 */  slti       $v0, $a0, 0x4
/* 4BA0620 8007F0F0 03004010 */  beqz       $v0, .Llevel_16_8007F100
/* 4BA0624 8007F0F4 0A000324 */   addiu     $v1, $zero, 0xA
/* 4BA0628 8007F0F8 44FC0108 */  j          .Llevel_16_8007F110
/* 4BA062C 8007F0FC 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_16_8007F100:
/* 4BA0630 8007F100 07008228 */  slti       $v0, $a0, 0x7
/* 4BA0634 8007F104 02004010 */  beqz       $v0, .Llevel_16_8007F110
/* 4BA0638 8007F108 00000000 */   nop
/* 4BA063C 8007F10C 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_16_8007F110:
/* 4BA0640 8007F110 0680043C */  lui        $a0, %hi(D_8006582C)
/* 4BA0644 8007F114 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 4BA0648 8007F118 0000828C */  lw         $v0, 0x0($a0)
/* 4BA064C 8007F11C 00000000 */  nop
/* 4BA0650 8007F120 01004224 */  addiu      $v0, $v0, 0x1
/* 4BA0654 8007F124 000082AC */  sw         $v0, 0x0($a0)
/* 4BA0658 8007F128 2A104300 */  slt        $v0, $v0, $v1
/* 4BA065C 8007F12C 04004014 */  bnez       $v0, .Llevel_16_8007F140
/* 4BA0660 8007F130 0C00B026 */   addiu     $s0, $s5, 0xC
/* 4BA0664 8007F134 D3000224 */  addiu      $v0, $zero, 0xD3
/* 4BA0668 8007F138 000080AC */  sw         $zero, 0x0($a0)
/* 4BA066C 8007F13C 3600A2A6 */  sh         $v0, 0x36($s5)
.Llevel_16_8007F140:
/* 4BA0670 8007F140 21200002 */  addu       $a0, $s0, $zero
/* 4BA0674 8007F144 5E3C010C */  jal        func_8004F178
/* 4BA0678 8007F148 0C00C526 */   addiu     $a1, $s6, 0xC
/* 4BA067C 8007F14C 0957010C */  jal        func_80055C24
/* 4BA0680 8007F150 2120A002 */   addu      $a0, $s5, $zero
/* 4BA0684 8007F154 21202002 */  addu       $a0, $s1, $zero
/* 4BA0688 8007F158 1400A28E */  lw         $v0, 0x14($s5)
/* 4BA068C 8007F15C 21280002 */  addu       $a1, $s0, $zero
/* 4BA0690 8007F160 00024224 */  addiu      $v0, $v0, 0x200
/* 4BA0694 8007F164 5E3C010C */  jal        func_8004F178
/* 4BA0698 8007F168 1400A2AE */   sw        $v0, 0x14($s5)
/* 4BA069C 8007F16C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4BA06A0 8007F170 1C00A2AE */  sw         $v0, 0x1C($s5)
/* 4BA06A4 8007F174 02000224 */  addiu      $v0, $zero, 0x2
/* 4BA06A8 8007F178 4700A2A2 */  sb         $v0, 0x47($s5)
/* 4BA06AC 8007F17C 08070224 */  addiu      $v0, $zero, 0x708
/* 4BA06B0 8007F180 0E0022A6 */  sh         $v0, 0xE($s1)
/* 4BA06B4 8007F184 9171010C */  jal        rand
/* 4BA06B8 8007F188 110020A2 */   sb        $zero, 0x11($s1)
/* 4BA06BC 8007F18C FC004230 */  andi       $v0, $v0, 0xFC
/* 4BA06C0 8007F190 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA06C4 8007F194 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_16_8007F198:
/* 4BA06C8 8007F198 3600C286 */  lh         $v0, 0x36($s6)
/* 4BA06CC 8007F19C 00000000 */  nop
/* 4BA06D0 8007F1A0 06005110 */  beq        $v0, $s1, .Llevel_16_8007F1BC
/* 4BA06D4 8007F1A4 21280000 */   addu      $a1, $zero, $zero
/* 4BA06D8 8007F1A8 0780043C */  lui        $a0, %hi(D_8006E394)
/* 4BA06DC 8007F1AC 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 4BA06E0 8007F1B0 0000A4AE */  sw         $a0, 0x0($s5)
/* 4BA06E4 8007F1B4 E439010C */  jal        func_8004E790
/* 4BA06E8 8007F1B8 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_16_8007F1BC:
/* 4BA06EC 8007F1BC 0000B08E */  lw         $s0, 0x0($s5)
/* 4BA06F0 8007F1C0 0957010C */  jal        func_80055C24
/* 4BA06F4 8007F1C4 2120A002 */   addu      $a0, $s5, $zero
/* 4BA06F8 8007F1C8 78000224 */  addiu      $v0, $zero, 0x78
/* 4BA06FC 8007F1CC 4900A0A2 */  sb         $zero, 0x49($s5)
/* 4BA0700 8007F1D0 000000A6 */  sh         $zero, 0x0($s0)
/* 4BA0704 8007F1D4 080000A6 */  sh         $zero, 0x8($s0)
/* 4BA0708 8007F1D8 060000A6 */  sh         $zero, 0x6($s0)
/* 4BA070C 8007F1DC 040000A6 */  sh         $zero, 0x4($s0)
/* 4BA0710 8007F1E0 0D0002A2 */  sb         $v0, 0xD($s0)
/* 4BA0714 8007F1E4 100000AE */  sw         $zero, 0x10($s0)
/* 4BA0718 8007F1E8 0600C012 */  beqz       $s6, .Llevel_16_8007F204
/* 4BA071C 8007F1EC 140000AE */   sw        $zero, 0x14($s0)
/* 4BA0720 8007F1F0 0C00A426 */  addiu      $a0, $s5, 0xC
/* 4BA0724 8007F1F4 5E3C010C */  jal        func_8004F178
/* 4BA0728 8007F1F8 0C00C526 */   addiu     $a1, $s6, 0xC
/* 4BA072C 8007F1FC A0FC0108 */  j          .Llevel_16_8007F280
/* 4BA0730 8007F200 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_16_8007F204:
/* 4BA0734 8007F204 0C00A426 */  addiu      $a0, $s5, 0xC
/* 4BA0738 8007F208 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 4BA073C 8007F20C 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 4BA0740 8007F210 0000A390 */  lbu        $v1, 0x0($a1)
/* 4BA0744 8007F214 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 4BA0748 8007F218 80FF6324 */  addiu      $v1, $v1, -0x80
/* 4BA074C 8007F21C FF006330 */  andi       $v1, $v1, 0xFF
/* 4BA0750 8007F220 40180300 */  sll        $v1, $v1, 1
/* 4BA0754 8007F224 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA0758 8007F228 21082300 */  addu       $at, $at, $v1
/* 4BA075C 8007F22C 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 4BA0760 8007F230 1000A627 */  addiu      $a2, $sp, 0x10
/* 4BA0764 8007F234 40110700 */  sll        $v0, $a3, 5
/* 4BA0768 8007F238 23104700 */  subu       $v0, $v0, $a3
/* 4BA076C 8007F23C 80100200 */  sll        $v0, $v0, 2
/* 4BA0770 8007F240 21104700 */  addu       $v0, $v0, $a3
/* 4BA0774 8007F244 43120200 */  sra        $v0, $v0, 9
/* 4BA0778 8007F248 1000A2AF */  sw         $v0, 0x10($sp)
/* 4BA077C 8007F24C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA0780 8007F250 21082300 */  addu       $at, $at, $v1
/* 4BA0784 8007F254 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4BA0788 8007F258 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 4BA078C 8007F25C 1800A2AF */  sw         $v0, 0x18($sp)
/* 4BA0790 8007F260 40110300 */  sll        $v0, $v1, 5
/* 4BA0794 8007F264 23104300 */  subu       $v0, $v0, $v1
/* 4BA0798 8007F268 80100200 */  sll        $v0, $v0, 2
/* 4BA079C 8007F26C 21104300 */  addu       $v0, $v0, $v1
/* 4BA07A0 8007F270 43120200 */  sra        $v0, $v0, 9
/* 4BA07A4 8007F274 653C010C */  jal        func_8004F194
/* 4BA07A8 8007F278 1400A2AF */   sw        $v0, 0x14($sp)
/* 4BA07AC 8007F27C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_16_8007F280:
/* 4BA07B0 8007F280 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA07B4 8007F284 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_16_8007F288:
/* 4BA07B8 8007F288 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA07BC 8007F28C 0C00C526 */  addiu      $a1, $s6, 0xC
/* 4BA07C0 8007F290 5E3C010C */  jal        func_8004F178
/* 4BA07C4 8007F294 4600A2A2 */   sb        $v0, 0x46($s5)
/* 4BA07C8 8007F298 0957010C */  jal        func_80055C24
/* 4BA07CC 8007F29C 2120A002 */   addu      $a0, $s5, $zero
/* 4BA07D0 8007F2A0 4ED7000C */  jal        func_80035D38
/* 4BA07D4 8007F2A4 2120A002 */   addu      $a0, $s5, $zero
/* 4BA07D8 8007F2A8 02004010 */  beqz       $v0, .Llevel_16_8007F2B4
/* 4BA07DC 8007F2AC 00000000 */   nop
/* 4BA07E0 8007F2B0 1400A2AE */  sw         $v0, 0x14($s5)
.Llevel_16_8007F2B4:
/* 4BA07E4 8007F2B4 06000224 */  addiu      $v0, $zero, 0x6
/* 4BA07E8 8007F2B8 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA07EC 8007F2BC 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_16_8007F2C0:
/* 4BA07F0 8007F2C0 0C00A426 */  addiu      $a0, $s5, 0xC
/* 4BA07F4 8007F2C4 0C00C526 */  addiu      $a1, $s6, 0xC
/* 4BA07F8 8007F2C8 0000B28E */  lw         $s2, 0x0($s5)
/* 4BA07FC 8007F2CC 20000224 */  addiu      $v0, $zero, 0x20
/* 4BA0800 8007F2D0 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 4BA0804 8007F2D4 5E3C010C */  jal        func_8004F178
/* 4BA0808 8007F2D8 4E00A2A2 */   sb        $v0, 0x4E($s5)
/* 4BA080C 8007F2DC 0957010C */  jal        func_80055C24
/* 4BA0810 8007F2E0 2120A002 */   addu      $a0, $s5, $zero
/* 4BA0814 8007F2E4 9171010C */  jal        rand
/* 4BA0818 8007F2E8 96001424 */   addiu     $s4, $zero, 0x96
/* 4BA081C 8007F2EC 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 4BA0820 8007F2F0 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 4BA0824 8007F2F4 DBD8000C */  jal        func_8003636C
/* 4BA0828 8007F2F8 FF0F5330 */   andi      $s3, $v0, 0xFFF
/* 4BA082C 8007F2FC 5100D192 */  lbu        $s1, 0x51($s6)
/* 4BA0830 8007F300 21206002 */  addu       $a0, $s3, $zero
/* 4BA0834 8007F304 21882202 */  addu       $s1, $s1, $v0
/* 4BA0838 8007F308 8B3A010C */  jal        func_8004EA2C
/* 4BA083C 8007F30C FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 4BA0840 8007F310 21202002 */  addu       $a0, $s1, $zero
/* 4BA0844 8007F314 8B3A010C */  jal        func_8004EA2C
/* 4BA0848 8007F318 21804000 */   addu      $s0, $v0, $zero
/* 4BA084C 8007F31C 18005400 */  mult       $v0, $s4
/* 4BA0850 8007F320 12400000 */  mflo       $t0
/* 4BA0854 8007F324 83811000 */  sra        $s0, $s0, 6
/* 4BA0858 8007F328 00000000 */  nop
/* 4BA085C 8007F32C 18000802 */  mult       $s0, $t0
/* 4BA0860 8007F330 21206002 */  addu       $a0, $s3, $zero
/* 4BA0864 8007F334 12400000 */  mflo       $t0
/* 4BA0868 8007F338 83140800 */  sra        $v0, $t0, 18
/* 4BA086C 8007F33C 8B3A010C */  jal        func_8004EA2C
/* 4BA0870 8007F340 000042A6 */   sh        $v0, 0x0($s2)
/* 4BA0874 8007F344 21202002 */  addu       $a0, $s1, $zero
/* 4BA0878 8007F348 793A010C */  jal        func_8004E9E4
/* 4BA087C 8007F34C 21804000 */   addu      $s0, $v0, $zero
/* 4BA0880 8007F350 18005400 */  mult       $v0, $s4
/* 4BA0884 8007F354 12400000 */  mflo       $t0
/* 4BA0888 8007F358 83811000 */  sra        $s0, $s0, 6
/* 4BA088C 8007F35C 00000000 */  nop
/* 4BA0890 8007F360 18000802 */  mult       $s0, $t0
/* 4BA0894 8007F364 21206002 */  addu       $a0, $s3, $zero
/* 4BA0898 8007F368 12400000 */  mflo       $t0
/* 4BA089C 8007F36C 83140800 */  sra        $v0, $t0, 18
/* 4BA08A0 8007F370 793A010C */  jal        func_8004E9E4
/* 4BA08A4 8007F374 020042A6 */   sh        $v0, 0x2($s2)
/* 4BA08A8 8007F378 B4000324 */  addiu      $v1, $zero, 0xB4
/* 4BA08AC 8007F37C 18004300 */  mult       $v0, $v1
/* 4BA08B0 8007F380 12400000 */  mflo       $t0
/* 4BA08B4 8007F384 03130800 */  sra        $v0, $t0, 12
/* 4BA08B8 8007F388 040042A6 */  sh         $v0, 0x4($s2)
/* 4BA08BC 8007F38C 5100C292 */  lbu        $v0, 0x51($s6)
/* 4BA08C0 8007F390 00000000 */  nop
/* 4BA08C4 8007F394 40100200 */  sll        $v0, $v0, 1
/* 4BA08C8 8007F398 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA08CC 8007F39C 21082200 */  addu       $at, $at, $v0
/* 4BA08D0 8007F3A0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4BA08D4 8007F3A4 00000000 */  nop
/* 4BA08D8 8007F3A8 C0100300 */  sll        $v0, $v1, 3
/* 4BA08DC 8007F3AC 21104300 */  addu       $v0, $v0, $v1
/* 4BA08E0 8007F3B0 80100200 */  sll        $v0, $v0, 2
/* 4BA08E4 8007F3B4 23104300 */  subu       $v0, $v0, $v1
/* 4BA08E8 8007F3B8 00004396 */  lhu        $v1, 0x0($s2)
/* 4BA08EC 8007F3BC 83120200 */  sra        $v0, $v0, 10
/* 4BA08F0 8007F3C0 21186200 */  addu       $v1, $v1, $v0
/* 4BA08F4 8007F3C4 000043A6 */  sh         $v1, 0x0($s2)
/* 4BA08F8 8007F3C8 5100C292 */  lbu        $v0, 0x51($s6)
/* 4BA08FC 8007F3CC 00000000 */  nop
/* 4BA0900 8007F3D0 40100200 */  sll        $v0, $v0, 1
/* 4BA0904 8007F3D4 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA0908 8007F3D8 21082200 */  addu       $at, $at, $v0
/* 4BA090C 8007F3DC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4BA0910 8007F3E0 00000000 */  nop
/* 4BA0914 8007F3E4 C0100300 */  sll        $v0, $v1, 3
/* 4BA0918 8007F3E8 21104300 */  addu       $v0, $v0, $v1
/* 4BA091C 8007F3EC 80100200 */  sll        $v0, $v0, 2
/* 4BA0920 8007F3F0 23104300 */  subu       $v0, $v0, $v1
/* 4BA0924 8007F3F4 02004396 */  lhu        $v1, 0x2($s2)
/* 4BA0928 8007F3F8 83120200 */  sra        $v0, $v0, 10
/* 4BA092C 8007F3FC 21186200 */  addu       $v1, $v1, $v0
/* 4BA0930 8007F400 020043A6 */  sh         $v1, 0x2($s2)
/* 4BA0934 8007F404 4400C292 */  lbu        $v0, 0x44($s6)
/* 4BA0938 8007F408 00000000 */  nop
/* 4BA093C 8007F40C 4400A2A2 */  sb         $v0, 0x44($s5)
/* 4BA0940 8007F410 4500C292 */  lbu        $v0, 0x45($s6)
/* 4BA0944 8007F414 00000000 */  nop
/* 4BA0948 8007F418 4500A2A2 */  sb         $v0, 0x45($s5)
/* 4BA094C 8007F41C 4600C292 */  lbu        $v0, 0x46($s6)
/* 4BA0950 8007F420 9171010C */  jal        rand
/* 4BA0954 8007F424 4600A2A2 */   sb        $v0, 0x46($s5)
/* 4BA0958 8007F428 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA095C 8007F42C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA0960 8007F430 9171010C */  jal        rand
/* 4BA0964 8007F434 060042A6 */   sh        $v0, 0x6($s2)
/* 4BA0968 8007F438 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA096C 8007F43C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA0970 8007F440 9171010C */  jal        rand
/* 4BA0974 8007F444 080042A6 */   sh        $v0, 0x8($s2)
/* 4BA0978 8007F448 78000424 */  addiu      $a0, $zero, 0x78
/* 4BA097C 8007F44C 96000524 */  addiu      $a1, $zero, 0x96
/* 4BA0980 8007F450 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA0984 8007F454 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA0988 8007F458 DBD8000C */  jal        func_8003636C
/* 4BA098C 8007F45C 0A0042A6 */   sh        $v0, 0xA($s2)
/* 4BA0990 8007F460 0C0042A6 */  sh         $v0, 0xC($s2)
/* 4BA0994 8007F464 01000224 */  addiu      $v0, $zero, 0x1
/* 4BA0998 8007F468 0E0042A6 */  sh         $v0, 0xE($s2)
/* 4BA099C 8007F46C 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA09A0 8007F470 120040A6 */   sh        $zero, 0x12($s2)
.Llevel_16_8007F474:
/* 4BA09A4 8007F474 0957010C */  jal        func_80055C24
/* 4BA09A8 8007F478 2120A002 */   addu      $a0, $s5, $zero
/* 4BA09AC 8007F47C 02000224 */  addiu      $v0, $zero, 0x2
/* 4BA09B0 8007F480 0E00C012 */  beqz       $s6, .Llevel_16_8007F4BC
/* 4BA09B4 8007F484 5400A2A2 */   sb        $v0, 0x54($s5)
/* 4BA09B8 8007F488 0C00A426 */  addiu      $a0, $s5, 0xC
/* 4BA09BC 8007F48C 0000A28E */  lw         $v0, 0x0($s5)
/* 4BA09C0 8007F490 0C00C526 */  addiu      $a1, $s6, 0xC
/* 4BA09C4 8007F494 5E3C010C */  jal        func_8004F178
/* 4BA09C8 8007F498 000056AC */   sw        $s6, 0x0($v0)
/* 4BA09CC 8007F49C 0A000224 */  addiu      $v0, $zero, 0xA
/* 4BA09D0 8007F4A0 4A00A2A2 */  sb         $v0, 0x4A($s5)
/* 4BA09D4 8007F4A4 1400A28E */  lw         $v0, 0x14($s5)
/* 4BA09D8 8007F4A8 08000324 */  addiu      $v1, $zero, 0x8
/* 4BA09DC 8007F4AC 4C00A3A2 */  sb         $v1, 0x4C($s5)
/* 4BA09E0 8007F4B0 00044224 */  addiu      $v0, $v0, 0x400
/* 4BA09E4 8007F4B4 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA09E8 8007F4B8 1400A2AE */   sw        $v0, 0x14($s5)
.Llevel_16_8007F4BC:
/* 4BA09EC 8007F4BC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4BA09F0 8007F4C0 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA09F4 8007F4C4 1C00A2AE */   sw        $v0, 0x1C($s5)
.Llevel_16_8007F4C8:
/* 4BA09F8 8007F4C8 0780053C */  lui        $a1, %hi(D_80070328)
/* 4BA09FC 8007F4CC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4BA0A00 8007F4D0 0000B08E */  lw         $s0, 0x0($s5)
/* 4BA0A04 8007F4D4 5E3C010C */  jal        func_8004F178
/* 4BA0A08 8007F4D8 0C00A426 */   addiu     $a0, $s5, 0xC
/* 4BA0A0C 8007F4DC 1400A28E */  lw         $v0, 0x14($s5)
/* 4BA0A10 8007F4E0 00000000 */  nop
/* 4BA0A14 8007F4E4 00044224 */  addiu      $v0, $v0, 0x400
/* 4BA0A18 8007F4E8 1400A2AE */  sw         $v0, 0x14($s5)
/* 4BA0A1C 8007F4EC 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 4BA0A20 8007F4F0 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 4BA0A24 8007F4F4 2120A002 */  addu       $a0, $s5, $zero
/* 4BA0A28 8007F4F8 0957010C */  jal        func_80055C24
/* 4BA0A2C 8007F4FC 4600A2A2 */   sb        $v0, 0x46($s5)
/* 4BA0A30 8007F500 02000224 */  addiu      $v0, $zero, 0x2
/* 4BA0A34 8007F504 020002A2 */  sb         $v0, 0x2($s0)
/* 4BA0A38 8007F508 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 4BA0A3C 8007F50C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 4BA0A40 8007F510 00000000 */  nop
/* 4BA0A44 8007F514 030002A2 */  sb         $v0, 0x3($s0)
/* 4BA0A48 8007F518 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 4BA0A4C 8007F51C 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 4BA0A50 8007F520 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4BA0A54 8007F524 100002AE */  sw         $v0, 0x10($s0)
/* 4BA0A58 8007F528 040003A2 */  sb         $v1, 0x4($s0)
/* 4BA0A5C 8007F52C 4100A0A2 */  sb         $zero, 0x41($s5)
/* 4BA0A60 8007F530 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 4BA0A64 8007F534 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA0A68 8007F538 4D00A0A2 */   sb        $zero, 0x4D($s5)
.Llevel_16_8007F53C:
/* 4BA0A6C 8007F53C 0C00C526 */  addiu      $a1, $s6, 0xC
.Llevel_16_8007F540:
/* 4BA0A70 8007F540 0000B38E */  lw         $s3, 0x0($s5)
/* 4BA0A74 8007F544 20000224 */  addiu      $v0, $zero, 0x20
/* 4BA0A78 8007F548 5E3C010C */  jal        func_8004F178
/* 4BA0A7C 8007F54C 4C00A2A2 */   sb        $v0, 0x4C($s5)
/* 4BA0A80 8007F550 0957010C */  jal        func_80055C24
/* 4BA0A84 8007F554 2120A002 */   addu      $a0, $s5, $zero
/* 4BA0A88 8007F558 9171010C */  jal        rand
/* 4BA0A8C 8007F55C 00000000 */   nop
/* 4BA0A90 8007F560 9171010C */  jal        rand
/* 4BA0A94 8007F564 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 4BA0A98 8007F568 FF075130 */  andi       $s1, $v0, 0x7FF
/* 4BA0A9C 8007F56C 8B3A010C */  jal        func_8004EA2C
/* 4BA0AA0 8007F570 21202002 */   addu      $a0, $s1, $zero
/* 4BA0AA4 8007F574 21204002 */  addu       $a0, $s2, $zero
/* 4BA0AA8 8007F578 8B3A010C */  jal        func_8004EA2C
/* 4BA0AAC 8007F57C 21804000 */   addu      $s0, $v0, $zero
/* 4BA0AB0 8007F580 18000202 */  mult       $s0, $v0
/* 4BA0AB4 8007F584 12400000 */  mflo       $t0
/* 4BA0AB8 8007F588 4900C292 */  lbu        $v0, 0x49($s6)
/* 4BA0ABC 8007F58C 00000000 */  nop
/* 4BA0AC0 8007F590 18000201 */  mult       $t0, $v0
/* 4BA0AC4 8007F594 21202002 */  addu       $a0, $s1, $zero
/* 4BA0AC8 8007F598 12400000 */  mflo       $t0
/* 4BA0ACC 8007F59C 03160800 */  sra        $v0, $t0, 24
/* 4BA0AD0 8007F5A0 8B3A010C */  jal        func_8004EA2C
/* 4BA0AD4 8007F5A4 000062A6 */   sh        $v0, 0x0($s3)
/* 4BA0AD8 8007F5A8 21204002 */  addu       $a0, $s2, $zero
/* 4BA0ADC 8007F5AC 793A010C */  jal        func_8004E9E4
/* 4BA0AE0 8007F5B0 21804000 */   addu      $s0, $v0, $zero
/* 4BA0AE4 8007F5B4 18000202 */  mult       $s0, $v0
/* 4BA0AE8 8007F5B8 12400000 */  mflo       $t0
/* 4BA0AEC 8007F5BC 4900C292 */  lbu        $v0, 0x49($s6)
/* 4BA0AF0 8007F5C0 00000000 */  nop
/* 4BA0AF4 8007F5C4 18000201 */  mult       $t0, $v0
/* 4BA0AF8 8007F5C8 21202002 */  addu       $a0, $s1, $zero
/* 4BA0AFC 8007F5CC 12400000 */  mflo       $t0
/* 4BA0B00 8007F5D0 03160800 */  sra        $v0, $t0, 24
/* 4BA0B04 8007F5D4 793A010C */  jal        func_8004E9E4
/* 4BA0B08 8007F5D8 020062A6 */   sh        $v0, 0x2($s3)
/* 4BA0B0C 8007F5DC 4900C392 */  lbu        $v1, 0x49($s6)
/* 4BA0B10 8007F5E0 00000000 */  nop
/* 4BA0B14 8007F5E4 18004300 */  mult       $v0, $v1
/* 4BA0B18 8007F5E8 12400000 */  mflo       $t0
/* 4BA0B1C 8007F5EC 03130800 */  sra        $v0, $t0, 12
/* 4BA0B20 8007F5F0 040062A6 */  sh         $v0, 0x4($s3)
/* 4BA0B24 8007F5F4 1800C38E */  lw         $v1, 0x18($s6)
/* 4BA0B28 8007F5F8 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 4BA0B2C 8007F5FC 24106200 */  and        $v0, $v1, $v0
/* 4BA0B30 8007F600 2C004010 */  beqz       $v0, .Llevel_16_8007F6B4
/* 4BA0B34 8007F604 21300000 */   addu      $a2, $zero, $zero
/* 4BA0B38 8007F608 0780103C */  lui        $s0, %hi(D_80070328)
/* 4BA0B3C 8007F60C 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 4BA0B40 8007F610 0C00A38E */  lw         $v1, 0xC($s5)
/* 4BA0B44 8007F614 0000048E */  lw         $a0, 0x0($s0)
/* 4BA0B48 8007F618 1000A28E */  lw         $v0, 0x10($s5)
/* 4BA0B4C 8007F61C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 4BA0B50 8007F620 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 4BA0B54 8007F624 23206400 */  subu       $a0, $v1, $a0
/* 4BA0B58 8007F628 203A010C */  jal        func_8004E880
/* 4BA0B5C 8007F62C 23284500 */   subu      $a1, $v0, $a1
/* 4BA0B60 8007F630 40100200 */  sll        $v0, $v0, 1
/* 4BA0B64 8007F634 21300000 */  addu       $a2, $zero, $zero
/* 4BA0B68 8007F638 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA0B6C 8007F63C 21082200 */  addu       $at, $at, $v0
/* 4BA0B70 8007F640 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 4BA0B74 8007F644 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 4BA0B78 8007F648 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 4BA0B7C 8007F64C 03110200 */  sra        $v0, $v0, 4
/* 4BA0B80 8007F650 1000A2AF */  sw         $v0, 0x10($sp)
/* 4BA0B84 8007F654 0C00A38E */  lw         $v1, 0xC($s5)
/* 4BA0B88 8007F658 0000048E */  lw         $a0, 0x0($s0)
/* 4BA0B8C 8007F65C 1000A28E */  lw         $v0, 0x10($s5)
/* 4BA0B90 8007F660 23206400 */  subu       $a0, $v1, $a0
/* 4BA0B94 8007F664 203A010C */  jal        func_8004E880
/* 4BA0B98 8007F668 23284500 */   subu      $a1, $v0, $a1
/* 4BA0B9C 8007F66C 40100200 */  sll        $v0, $v0, 1
/* 4BA0BA0 8007F670 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA0BA4 8007F674 21082200 */  addu       $at, $at, $v0
/* 4BA0BA8 8007F678 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4BA0BAC 8007F67C 1000A38F */  lw         $v1, 0x10($sp)
/* 4BA0BB0 8007F680 1800A0AF */  sw         $zero, 0x18($sp)
/* 4BA0BB4 8007F684 03110200 */  sra        $v0, $v0, 4
/* 4BA0BB8 8007F688 1400A2AF */  sw         $v0, 0x14($sp)
/* 4BA0BBC 8007F68C 00006296 */  lhu        $v0, 0x0($s3)
/* 4BA0BC0 8007F690 00000000 */  nop
/* 4BA0BC4 8007F694 21104300 */  addu       $v0, $v0, $v1
/* 4BA0BC8 8007F698 000062A6 */  sh         $v0, 0x0($s3)
/* 4BA0BCC 8007F69C 1400A38F */  lw         $v1, 0x14($sp)
/* 4BA0BD0 8007F6A0 02006296 */  lhu        $v0, 0x2($s3)
/* 4BA0BD4 8007F6A4 00000000 */  nop
/* 4BA0BD8 8007F6A8 21104300 */  addu       $v0, $v0, $v1
/* 4BA0BDC 8007F6AC C4FD0108 */  j          .Llevel_16_8007F710
/* 4BA0BE0 8007F6B0 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_16_8007F6B4:
/* 4BA0BE4 8007F6B4 0200023C */  lui        $v0, (0x20000 >> 16)
/* 4BA0BE8 8007F6B8 24106200 */  and        $v0, $v1, $v0
/* 4BA0BEC 8007F6BC 14004010 */  beqz       $v0, .Llevel_16_8007F710
/* 4BA0BF0 8007F6C0 04000224 */   addiu     $v0, $zero, 0x4
/* 4BA0BF4 8007F6C4 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 4BA0BF8 8007F6C8 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 4BA0BFC 8007F6CC 00000000 */  nop
/* 4BA0C00 8007F6D0 03006210 */  beq        $v1, $v0, .Llevel_16_8007F6E0
/* 4BA0C04 8007F6D4 0C000224 */   addiu     $v0, $zero, 0xC
/* 4BA0C08 8007F6D8 0D006214 */  bne        $v1, $v0, .Llevel_16_8007F710
/* 4BA0C0C 8007F6DC 00000000 */   nop
.Llevel_16_8007F6E0:
/* 4BA0C10 8007F6E0 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 4BA0C14 8007F6E4 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 4BA0C18 8007F6E8 00006396 */  lhu        $v1, 0x0($s3)
/* 4BA0C1C 8007F6EC 83110200 */  sra        $v0, $v0, 6
/* 4BA0C20 8007F6F0 21186200 */  addu       $v1, $v1, $v0
/* 4BA0C24 8007F6F4 000063A6 */  sh         $v1, 0x0($s3)
/* 4BA0C28 8007F6F8 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 4BA0C2C 8007F6FC B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 4BA0C30 8007F700 02006396 */  lhu        $v1, 0x2($s3)
/* 4BA0C34 8007F704 83110200 */  sra        $v0, $v0, 6
/* 4BA0C38 8007F708 21186200 */  addu       $v1, $v1, $v0
/* 4BA0C3C 8007F70C 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_16_8007F710:
/* 4BA0C40 8007F710 5100C492 */  lbu        $a0, 0x51($s6)
/* 4BA0C44 8007F714 00000000 */  nop
/* 4BA0C48 8007F718 26008010 */  beqz       $a0, .Llevel_16_8007F7B4
/* 4BA0C4C 8007F71C 1000033C */   lui       $v1, (0x100000 >> 16)
/* 4BA0C50 8007F720 1800C28E */  lw         $v0, 0x18($s6)
/* 4BA0C54 8007F724 00000000 */  nop
/* 4BA0C58 8007F728 24104300 */  and        $v0, $v0, $v1
/* 4BA0C5C 8007F72C 21004010 */  beqz       $v0, .Llevel_16_8007F7B4
/* 4BA0C60 8007F730 40100400 */   sll       $v0, $a0, 1
/* 4BA0C64 8007F734 0680013C */  lui        $at, %hi(D_80065920)
/* 4BA0C68 8007F738 21082200 */  addu       $at, $at, $v0
/* 4BA0C6C 8007F73C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4BA0C70 8007F740 00000000 */  nop
/* 4BA0C74 8007F744 80100300 */  sll        $v0, $v1, 2
/* 4BA0C78 8007F748 21104300 */  addu       $v0, $v0, $v1
/* 4BA0C7C 8007F74C 00190200 */  sll        $v1, $v0, 4
/* 4BA0C80 8007F750 23186200 */  subu       $v1, $v1, $v0
/* 4BA0C84 8007F754 00006296 */  lhu        $v0, 0x0($s3)
/* 4BA0C88 8007F758 C31A0300 */  sra        $v1, $v1, 11
/* 4BA0C8C 8007F75C 21104300 */  addu       $v0, $v0, $v1
/* 4BA0C90 8007F760 000062A6 */  sh         $v0, 0x0($s3)
/* 4BA0C94 8007F764 5100C292 */  lbu        $v0, 0x51($s6)
/* 4BA0C98 8007F768 28000424 */  addiu      $a0, $zero, 0x28
/* 4BA0C9C 8007F76C 40100200 */  sll        $v0, $v0, 1
/* 4BA0CA0 8007F770 0680013C */  lui        $at, %hi(D_800658A0)
/* 4BA0CA4 8007F774 21082200 */  addu       $at, $at, $v0
/* 4BA0CA8 8007F778 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4BA0CAC 8007F77C 46000524 */  addiu      $a1, $zero, 0x46
/* 4BA0CB0 8007F780 80100300 */  sll        $v0, $v1, 2
/* 4BA0CB4 8007F784 21104300 */  addu       $v0, $v0, $v1
/* 4BA0CB8 8007F788 00190200 */  sll        $v1, $v0, 4
/* 4BA0CBC 8007F78C 23186200 */  subu       $v1, $v1, $v0
/* 4BA0CC0 8007F790 02006296 */  lhu        $v0, 0x2($s3)
/* 4BA0CC4 8007F794 C31A0300 */  sra        $v1, $v1, 11
/* 4BA0CC8 8007F798 21104300 */  addu       $v0, $v0, $v1
/* 4BA0CCC 8007F79C DBD8000C */  jal        func_8003636C
/* 4BA0CD0 8007F7A0 020062A6 */   sh        $v0, 0x2($s3)
/* 4BA0CD4 8007F7A4 04006396 */  lhu        $v1, 0x4($s3)
/* 4BA0CD8 8007F7A8 00000000 */  nop
/* 4BA0CDC 8007F7AC 21186200 */  addu       $v1, $v1, $v0
/* 4BA0CE0 8007F7B0 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_16_8007F7B4:
/* 4BA0CE4 8007F7B4 00006286 */  lh         $v0, 0x0($s3)
/* 4BA0CE8 8007F7B8 0C00A38E */  lw         $v1, 0xC($s5)
/* 4BA0CEC 8007F7BC 80100200 */  sll        $v0, $v0, 2
/* 4BA0CF0 8007F7C0 21186200 */  addu       $v1, $v1, $v0
/* 4BA0CF4 8007F7C4 0C00A3AE */  sw         $v1, 0xC($s5)
/* 4BA0CF8 8007F7C8 02006286 */  lh         $v0, 0x2($s3)
/* 4BA0CFC 8007F7CC 1000A38E */  lw         $v1, 0x10($s5)
/* 4BA0D00 8007F7D0 80100200 */  sll        $v0, $v0, 2
/* 4BA0D04 8007F7D4 21186200 */  addu       $v1, $v1, $v0
/* 4BA0D08 8007F7D8 1000A3AE */  sw         $v1, 0x10($s5)
/* 4BA0D0C 8007F7DC 04006286 */  lh         $v0, 0x4($s3)
/* 4BA0D10 8007F7E0 1400A38E */  lw         $v1, 0x14($s5)
/* 4BA0D14 8007F7E4 80100200 */  sll        $v0, $v0, 2
/* 4BA0D18 8007F7E8 21186200 */  addu       $v1, $v1, $v0
/* 4BA0D1C 8007F7EC 9171010C */  jal        rand
/* 4BA0D20 8007F7F0 1400A3AE */   sw        $v1, 0x14($s5)
/* 4BA0D24 8007F7F4 9171010C */  jal        rand
/* 4BA0D28 8007F7F8 4500A2A2 */   sb        $v0, 0x45($s5)
/* 4BA0D2C 8007F7FC 9171010C */  jal        rand
/* 4BA0D30 8007F800 4600A2A2 */   sb        $v0, 0x46($s5)
/* 4BA0D34 8007F804 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA0D38 8007F808 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA0D3C 8007F80C 9171010C */  jal        rand
/* 4BA0D40 8007F810 060062A6 */   sh        $v0, 0x6($s3)
/* 4BA0D44 8007F814 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA0D48 8007F818 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA0D4C 8007F81C 9171010C */  jal        rand
/* 4BA0D50 8007F820 080062A6 */   sh        $v0, 0x8($s3)
/* 4BA0D54 8007F824 32000424 */  addiu      $a0, $zero, 0x32
/* 4BA0D58 8007F828 1F004230 */  andi       $v0, $v0, 0x1F
/* 4BA0D5C 8007F82C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4BA0D60 8007F830 0A0062A6 */  sh         $v0, 0xA($s3)
/* 4BA0D64 8007F834 1400C28E */  lw         $v0, 0x14($s6)
/* 4BA0D68 8007F838 50000524 */  addiu      $a1, $zero, 0x50
/* 4BA0D6C 8007F83C C0FF4224 */  addiu      $v0, $v0, -0x40
/* 4BA0D70 8007F840 DBD8000C */  jal        func_8003636C
/* 4BA0D74 8007F844 100062AE */   sw        $v0, 0x10($s3)
/* 4BA0D78 8007F848 1FFE0108 */  j          .Llevel_16_8007F87C
/* 4BA0D7C 8007F84C 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_16_8007F850:
/* 4BA0D80 8007F850 0300C012 */  beqz       $s6, .Llevel_16_8007F860
/* 4BA0D84 8007F854 0C00C526 */   addiu     $a1, $s6, 0xC
/* 4BA0D88 8007F858 1BFE0108 */  j          .Llevel_16_8007F86C
/* 4BA0D8C 8007F85C 0C00A426 */   addiu     $a0, $s5, 0xC
.Llevel_16_8007F860:
/* 4BA0D90 8007F860 0C00A426 */  addiu      $a0, $s5, 0xC
/* 4BA0D94 8007F864 0780053C */  lui        $a1, %hi(D_80070328)
/* 4BA0D98 8007F868 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_16_8007F86C:
/* 4BA0D9C 8007F86C 5E3C010C */  jal        func_8004F178
/* 4BA0DA0 8007F870 00000000 */   nop
/* 4BA0DA4 8007F874 0957010C */  jal        func_80055C24
/* 4BA0DA8 8007F878 2120A002 */   addu      $a0, $s5, $zero
.Llevel_16_8007F87C:
/* 4BA0DAC 8007F87C 2110A002 */  addu       $v0, $s5, $zero
.Llevel_16_8007F880:
/* 4BA0DB0 8007F880 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 4BA0DB4 8007F884 3800B68F */  lw         $s6, 0x38($sp)
/* 4BA0DB8 8007F888 3400B58F */  lw         $s5, 0x34($sp)
/* 4BA0DBC 8007F88C 3000B48F */  lw         $s4, 0x30($sp)
/* 4BA0DC0 8007F890 2C00B38F */  lw         $s3, 0x2C($sp)
/* 4BA0DC4 8007F894 2800B28F */  lw         $s2, 0x28($sp)
/* 4BA0DC8 8007F898 2400B18F */  lw         $s1, 0x24($sp)
/* 4BA0DCC 8007F89C 2000B08F */  lw         $s0, 0x20($sp)
/* 4BA0DD0 8007F8A0 4000BD27 */  addiu      $sp, $sp, 0x40
/* 4BA0DD4 8007F8A4 0800E003 */  jr         $ra
/* 4BA0DD8 8007F8A8 00000000 */   nop
.size func_level_16_8007EBDC, . - func_level_16_8007EBDC
