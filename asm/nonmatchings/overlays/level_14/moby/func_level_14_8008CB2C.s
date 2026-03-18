.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8008CB2C
/* 47CC05C 8008CB2C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 47CC060 8008CB30 2400B1AF */  sw         $s1, 0x24($sp)
/* 47CC064 8008CB34 21888000 */  addu       $s1, $a0, $zero
/* 47CC068 8008CB38 3800B6AF */  sw         $s6, 0x38($sp)
/* 47CC06C 8008CB3C 21B0A000 */  addu       $s6, $a1, $zero
/* 47CC070 8008CB40 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 47CC074 8008CB44 3400B5AF */  sw         $s5, 0x34($sp)
/* 47CC078 8008CB48 3000B4AF */  sw         $s4, 0x30($sp)
/* 47CC07C 8008CB4C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 47CC080 8008CB50 2800B2AF */  sw         $s2, 0x28($sp)
/* 47CC084 8008CB54 9F56010C */  jal        func_80055A7C
/* 47CC088 8008CB58 2000B0AF */   sw        $s0, 0x20($sp)
/* 47CC08C 8008CB5C 21A04000 */  addu       $s4, $v0, $zero
/* 47CC090 8008CB60 03008016 */  bnez       $s4, .Llevel_14_8008CB70
/* 47CC094 8008CB64 21208002 */   addu      $a0, $s4, $zero
/* 47CC098 8008CB68 5E360208 */  j          .Llevel_14_8008D978
/* 47CC09C 8008CB6C 21100000 */   addu      $v0, $zero, $zero
.Llevel_14_8008CB70:
/* 47CC0A0 8008CB70 21280000 */  addu       $a1, $zero, $zero
/* 47CC0A4 8008CB74 0000908E */  lw         $s0, 0x0($s4)
/* 47CC0A8 8008CB78 E439010C */  jal        func_8004E790
/* 47CC0AC 8008CB7C 58000624 */   addiu     $a2, $zero, 0x58
/* 47CC0B0 8008CB80 21280000 */  addu       $a1, $zero, $zero
/* 47CC0B4 8008CB84 18000624 */  addiu      $a2, $zero, 0x18
/* 47CC0B8 8008CB88 21200002 */  addu       $a0, $s0, $zero
/* 47CC0BC 8008CB8C E439010C */  jal        func_8004E790
/* 47CC0C0 8008CB90 000084AE */   sw        $a0, 0x0($s4)
/* 47CC0C4 8008CB94 1600C012 */  beqz       $s6, .Llevel_14_8008CBF0
/* 47CC0C8 8008CB98 360091A6 */   sh        $s1, 0x36($s4)
/* 47CC0CC 8008CB9C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 47CC0D0 8008CBA0 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 47CC0D4 8008CBA4 00000000 */  nop
/* 47CC0D8 8008CBA8 2320C402 */  subu       $a0, $s6, $a0
/* 47CC0DC 8008CBAC 40190400 */  sll        $v1, $a0, 5
/* 47CC0E0 8008CBB0 23186400 */  subu       $v1, $v1, $a0
/* 47CC0E4 8008CBB4 40190300 */  sll        $v1, $v1, 5
/* 47CC0E8 8008CBB8 21186400 */  addu       $v1, $v1, $a0
/* 47CC0EC 8008CBBC C0100300 */  sll        $v0, $v1, 3
/* 47CC0F0 8008CBC0 21186200 */  addu       $v1, $v1, $v0
/* 47CC0F4 8008CBC4 C0130300 */  sll        $v0, $v1, 15
/* 47CC0F8 8008CBC8 23104300 */  subu       $v0, $v0, $v1
/* 47CC0FC 8008CBCC 80100200 */  sll        $v0, $v0, 2
/* 47CC100 8008CBD0 21104400 */  addu       $v0, $v0, $a0
/* 47CC104 8008CBD4 23100200 */  negu       $v0, $v0
/* 47CC108 8008CBD8 C3180200 */  sra        $v1, $v0, 3
/* 47CC10C 8008CBDC 0001622C */  sltiu      $v0, $v1, 0x100
/* 47CC110 8008CBE0 04004010 */  beqz       $v0, .Llevel_14_8008CBF4
/* 47CC114 8008CBE4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 47CC118 8008CBE8 FE320208 */  j          .Llevel_14_8008CBF8
/* 47CC11C 8008CBEC 3A0083A2 */   sb        $v1, 0x3A($s4)
.Llevel_14_8008CBF0:
/* 47CC120 8008CBF0 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_14_8008CBF4:
/* 47CC124 8008CBF4 3A0082A2 */  sb         $v0, 0x3A($s4)
.Llevel_14_8008CBF8:
/* 47CC128 8008CBF8 FBD3000C */  jal        func_80034FEC
/* 47CC12C 8008CBFC 21208002 */   addu      $a0, $s4, $zero
/* 47CC130 8008CC00 04010224 */  addiu      $v0, $zero, 0x104
/* 47CC134 8008CC04 D9012212 */  beq        $s1, $v0, .Llevel_14_8008D36C
/* 47CC138 8008CC08 0501222A */   slti      $v0, $s1, 0x105
/* 47CC13C 8008CC0C 22004010 */  beqz       $v0, .Llevel_14_8008CC98
/* 47CC140 8008CC10 64000224 */   addiu     $v0, $zero, 0x64
/* 47CC144 8008CC14 4F012212 */  beq        $s1, $v0, .Llevel_14_8008D154
/* 47CC148 8008CC18 6500222A */   slti      $v0, $s1, 0x65
/* 47CC14C 8008CC1C 0E004010 */  beqz       $v0, .Llevel_14_8008CC58
/* 47CC150 8008CC20 10000224 */   addiu     $v0, $zero, 0x10
/* 47CC154 8008CC24 18012212 */  beq        $s1, $v0, .Llevel_14_8008D088
/* 47CC158 8008CC28 1100222A */   slti      $v0, $s1, 0x11
/* 47CC15C 8008CC2C 05004010 */  beqz       $v0, .Llevel_14_8008CC44
/* 47CC160 8008CC30 01000224 */   addiu     $v0, $zero, 0x1
/* 47CC164 8008CC34 38002212 */  beq        $s1, $v0, .Llevel_14_8008CD18
/* 47CC168 8008CC38 00000000 */   nop
/* 47CC16C 8008CC3C 52360208 */  j          .Llevel_14_8008D948
/* 47CC170 8008CC40 00000000 */   nop
.Llevel_14_8008CC44:
/* 47CC174 8008CC44 54000224 */  addiu      $v0, $zero, 0x54
/* 47CC178 8008CC48 3A002212 */  beq        $s1, $v0, .Llevel_14_8008CD34
/* 47CC17C 8008CC4C 0C008426 */   addiu     $a0, $s4, 0xC
/* 47CC180 8008CC50 52360208 */  j          .Llevel_14_8008D948
/* 47CC184 8008CC54 00000000 */   nop
.Llevel_14_8008CC58:
/* 47CC188 8008CC58 84000224 */  addiu      $v0, $zero, 0x84
/* 47CC18C 8008CC5C A6012212 */  beq        $s1, $v0, .Llevel_14_8008D2F8
/* 47CC190 8008CC60 8500222A */   slti      $v0, $s1, 0x85
/* 47CC194 8008CC64 05004010 */  beqz       $v0, .Llevel_14_8008CC7C
/* 47CC198 8008CC68 78000224 */   addiu     $v0, $zero, 0x78
/* 47CC19C 8008CC6C 66012212 */  beq        $s1, $v0, .Llevel_14_8008D208
/* 47CC1A0 8008CC70 00000000 */   nop
/* 47CC1A4 8008CC74 52360208 */  j          .Llevel_14_8008D948
/* 47CC1A8 8008CC78 00000000 */   nop
.Llevel_14_8008CC7C:
/* 47CC1AC 8008CC7C AA000224 */  addiu      $v0, $zero, 0xAA
/* 47CC1B0 8008CC80 AC012212 */  beq        $s1, $v0, .Llevel_14_8008D334
/* 47CC1B4 8008CC84 D3000224 */   addiu     $v0, $zero, 0xD3
/* 47CC1B8 8008CC88 00012212 */  beq        $s1, $v0, .Llevel_14_8008D08C
/* 47CC1BC 8008CC8C 10000324 */   addiu     $v1, $zero, 0x10
/* 47CC1C0 8008CC90 52360208 */  j          .Llevel_14_8008D948
/* 47CC1C4 8008CC94 00000000 */   nop
.Llevel_14_8008CC98:
/* 47CC1C8 8008CC98 DA01222A */  slti       $v0, $s1, 0x1DA
/* 47CC1CC 8008CC9C 10004010 */  beqz       $v0, .Llevel_14_8008CCE0
/* 47CC1D0 8008CCA0 D601222A */   slti      $v0, $s1, 0x1D6
/* 47CC1D4 8008CCA4 A9024010 */  beqz       $v0, .Llevel_14_8008D74C
/* 47CC1D8 8008CCA8 3501222A */   slti      $v0, $s1, 0x135
/* 47CC1DC 8008CCAC 07004010 */  beqz       $v0, .Llevel_14_8008CCCC
/* 47CC1E0 8008CCB0 3201222A */   slti      $v0, $s1, 0x132
/* 47CC1E4 8008CCB4 DF014010 */  beqz       $v0, .Llevel_14_8008D434
/* 47CC1E8 8008CCB8 10010224 */   addiu     $v0, $zero, 0x110
/* 47CC1EC 8008CCBC C0012212 */  beq        $s1, $v0, .Llevel_14_8008D3C0
/* 47CC1F0 8008CCC0 00000000 */   nop
/* 47CC1F4 8008CCC4 52360208 */  j          .Llevel_14_8008D948
/* 47CC1F8 8008CCC8 00000000 */   nop
.Llevel_14_8008CCCC:
/* 47CC1FC 8008CCCC 36010224 */  addiu      $v0, $zero, 0x136
/* 47CC200 8008CCD0 D9012212 */  beq        $s1, $v0, .Llevel_14_8008D438
/* 47CC204 8008CCD4 0C008426 */   addiu     $a0, $s4, 0xC
/* 47CC208 8008CCD8 52360208 */  j          .Llevel_14_8008D948
/* 47CC20C 8008CCDC 00000000 */   nop
.Llevel_14_8008CCE0:
/* 47CC210 8008CCE0 38020224 */  addiu      $v0, $zero, 0x238
/* 47CC214 8008CCE4 D3012212 */  beq        $s1, $v0, .Llevel_14_8008D434
/* 47CC218 8008CCE8 3902222A */   slti      $v0, $s1, 0x239
/* 47CC21C 8008CCEC 05004010 */  beqz       $v0, .Llevel_14_8008CD04
/* 47CC220 8008CCF0 16020224 */   addiu     $v0, $zero, 0x216
/* 47CC224 8008CCF4 C8022212 */  beq        $s1, $v0, .Llevel_14_8008D818
/* 47CC228 8008CCF8 0C009226 */   addiu     $s2, $s4, 0xC
/* 47CC22C 8008CCFC 52360208 */  j          .Llevel_14_8008D948
/* 47CC230 8008CD00 00000000 */   nop
.Llevel_14_8008CD04:
/* 47CC234 8008CD04 F7030224 */  addiu      $v0, $zero, 0x3F7
/* 47CC238 8008CD08 E4022212 */  beq        $s1, $v0, .Llevel_14_8008D89C
/* 47CC23C 8008CD0C 0C008426 */   addiu     $a0, $s4, 0xC
/* 47CC240 8008CD10 52360208 */  j          .Llevel_14_8008D948
/* 47CC244 8008CD14 00000000 */   nop
.Llevel_14_8008CD18:
/* 47CC248 8008CD18 0957010C */  jal        func_80055C24
/* 47CC24C 8008CD1C 21208002 */   addu      $a0, $s4, $zero
/* 47CC250 8008CD20 18000224 */  addiu      $v0, $zero, 0x18
/* 47CC254 8008CD24 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 47CC258 8008CD28 40000224 */  addiu      $v0, $zero, 0x40
/* 47CC25C 8008CD2C ED340208 */  j          .Llevel_14_8008D3B4
/* 47CC260 8008CD30 4A0082A2 */   sb        $v0, 0x4A($s4)
.Llevel_14_8008CD34:
/* 47CC264 8008CD34 0C00C526 */  addiu      $a1, $s6, 0xC
/* 47CC268 8008CD38 0000958E */  lw         $s5, 0x0($s4)
/* 47CC26C 8008CD3C 20000224 */  addiu      $v0, $zero, 0x20
/* 47CC270 8008CD40 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 47CC274 8008CD44 5E3C010C */  jal        func_8004F178
/* 47CC278 8008CD48 4E0082A2 */   sb        $v0, 0x4E($s4)
/* 47CC27C 8008CD4C 0957010C */  jal        func_80055C24
/* 47CC280 8008CD50 21208002 */   addu      $a0, $s4, $zero
/* 47CC284 8008CD54 2C010424 */  addiu      $a0, $zero, 0x12C
/* 47CC288 8008CD58 DBD8000C */  jal        func_8003636C
/* 47CC28C 8008CD5C 34080524 */   addiu     $a1, $zero, 0x834
/* 47CC290 8008CD60 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 47CC294 8008CD64 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 47CC298 8008CD68 DBD8000C */  jal        func_8003636C
/* 47CC29C 8008CD6C 21904000 */   addu      $s2, $v0, $zero
/* 47CC2A0 8008CD70 4600D192 */  lbu        $s1, 0x46($s6)
/* 47CC2A4 8008CD74 21204002 */  addu       $a0, $s2, $zero
/* 47CC2A8 8008CD78 21882202 */  addu       $s1, $s1, $v0
/* 47CC2AC 8008CD7C 8B3A010C */  jal        func_8004EA2C
/* 47CC2B0 8008CD80 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 47CC2B4 8008CD84 21202002 */  addu       $a0, $s1, $zero
/* 47CC2B8 8008CD88 8B3A010C */  jal        func_8004EA2C
/* 47CC2BC 8008CD8C 21804000 */   addu      $s0, $v0, $zero
/* 47CC2C0 8008CD90 78001324 */  addiu      $s3, $zero, 0x78
/* 47CC2C4 8008CD94 18005300 */  mult       $v0, $s3
/* 47CC2C8 8008CD98 12480000 */  mflo       $t1
/* 47CC2CC 8008CD9C 83811000 */  sra        $s0, $s0, 6
/* 47CC2D0 8008CDA0 00000000 */  nop
/* 47CC2D4 8008CDA4 18000902 */  mult       $s0, $t1
/* 47CC2D8 8008CDA8 21204002 */  addu       $a0, $s2, $zero
/* 47CC2DC 8008CDAC 12480000 */  mflo       $t1
/* 47CC2E0 8008CDB0 83140900 */  sra        $v0, $t1, 18
/* 47CC2E4 8008CDB4 8B3A010C */  jal        func_8004EA2C
/* 47CC2E8 8008CDB8 0000A2A6 */   sh        $v0, 0x0($s5)
/* 47CC2EC 8008CDBC 21202002 */  addu       $a0, $s1, $zero
/* 47CC2F0 8008CDC0 793A010C */  jal        func_8004E9E4
/* 47CC2F4 8008CDC4 21804000 */   addu      $s0, $v0, $zero
/* 47CC2F8 8008CDC8 18005300 */  mult       $v0, $s3
/* 47CC2FC 8008CDCC 12480000 */  mflo       $t1
/* 47CC300 8008CDD0 83811000 */  sra        $s0, $s0, 6
/* 47CC304 8008CDD4 00000000 */  nop
/* 47CC308 8008CDD8 18000902 */  mult       $s0, $t1
/* 47CC30C 8008CDDC 21204002 */  addu       $a0, $s2, $zero
/* 47CC310 8008CDE0 12480000 */  mflo       $t1
/* 47CC314 8008CDE4 83140900 */  sra        $v0, $t1, 18
/* 47CC318 8008CDE8 793A010C */  jal        func_8004E9E4
/* 47CC31C 8008CDEC 0200A2A6 */   sh        $v0, 0x2($s5)
/* 47CC320 8008CDF0 96000324 */  addiu      $v1, $zero, 0x96
/* 47CC324 8008CDF4 18004300 */  mult       $v0, $v1
/* 47CC328 8008CDF8 12480000 */  mflo       $t1
/* 47CC32C 8008CDFC 03130900 */  sra        $v0, $t1, 12
/* 47CC330 8008CE00 0400A2A6 */  sh         $v0, 0x4($s5)
/* 47CC334 8008CE04 5100C492 */  lbu        $a0, 0x51($s6)
/* 47CC338 8008CE08 00000000 */  nop
/* 47CC33C 8008CE0C 26008010 */  beqz       $a0, .Llevel_14_8008CEA8
/* 47CC340 8008CE10 1000033C */   lui       $v1, (0x100000 >> 16)
/* 47CC344 8008CE14 1800C28E */  lw         $v0, 0x18($s6)
/* 47CC348 8008CE18 00000000 */  nop
/* 47CC34C 8008CE1C 24104300 */  and        $v0, $v0, $v1
/* 47CC350 8008CE20 21004010 */  beqz       $v0, .Llevel_14_8008CEA8
/* 47CC354 8008CE24 40100400 */   sll       $v0, $a0, 1
/* 47CC358 8008CE28 0680013C */  lui        $at, %hi(D_80065920)
/* 47CC35C 8008CE2C 21082200 */  addu       $at, $at, $v0
/* 47CC360 8008CE30 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47CC364 8008CE34 00000000 */  nop
/* 47CC368 8008CE38 80100300 */  sll        $v0, $v1, 2
/* 47CC36C 8008CE3C 21104300 */  addu       $v0, $v0, $v1
/* 47CC370 8008CE40 00190200 */  sll        $v1, $v0, 4
/* 47CC374 8008CE44 23186200 */  subu       $v1, $v1, $v0
/* 47CC378 8008CE48 0000A296 */  lhu        $v0, 0x0($s5)
/* 47CC37C 8008CE4C C31A0300 */  sra        $v1, $v1, 11
/* 47CC380 8008CE50 21104300 */  addu       $v0, $v0, $v1
/* 47CC384 8008CE54 0000A2A6 */  sh         $v0, 0x0($s5)
/* 47CC388 8008CE58 5100C292 */  lbu        $v0, 0x51($s6)
/* 47CC38C 8008CE5C 28000424 */  addiu      $a0, $zero, 0x28
/* 47CC390 8008CE60 40100200 */  sll        $v0, $v0, 1
/* 47CC394 8008CE64 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CC398 8008CE68 21082200 */  addu       $at, $at, $v0
/* 47CC39C 8008CE6C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47CC3A0 8008CE70 46000524 */  addiu      $a1, $zero, 0x46
/* 47CC3A4 8008CE74 80100300 */  sll        $v0, $v1, 2
/* 47CC3A8 8008CE78 21104300 */  addu       $v0, $v0, $v1
/* 47CC3AC 8008CE7C 00190200 */  sll        $v1, $v0, 4
/* 47CC3B0 8008CE80 23186200 */  subu       $v1, $v1, $v0
/* 47CC3B4 8008CE84 0200A296 */  lhu        $v0, 0x2($s5)
/* 47CC3B8 8008CE88 C31A0300 */  sra        $v1, $v1, 11
/* 47CC3BC 8008CE8C 21104300 */  addu       $v0, $v0, $v1
/* 47CC3C0 8008CE90 DBD8000C */  jal        func_8003636C
/* 47CC3C4 8008CE94 0200A2A6 */   sh        $v0, 0x2($s5)
/* 47CC3C8 8008CE98 0400A396 */  lhu        $v1, 0x4($s5)
/* 47CC3CC 8008CE9C 00000000 */  nop
/* 47CC3D0 8008CEA0 21186200 */  addu       $v1, $v1, $v0
/* 47CC3D4 8008CEA4 0400A3A6 */  sh         $v1, 0x4($s5)
.Llevel_14_8008CEA8:
/* 47CC3D8 8008CEA8 1800C28E */  lw         $v0, 0x18($s6)
/* 47CC3DC 8008CEAC 0200033C */  lui        $v1, (0x20000 >> 16)
/* 47CC3E0 8008CEB0 24104300 */  and        $v0, $v0, $v1
/* 47CC3E4 8008CEB4 1B004010 */  beqz       $v0, .Llevel_14_8008CF24
/* 47CC3E8 8008CEB8 00000000 */   nop
/* 47CC3EC 8008CEBC 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CC3F0 8008CEC0 00000000 */  nop
/* 47CC3F4 8008CEC4 40100200 */  sll        $v0, $v0, 1
/* 47CC3F8 8008CEC8 0680013C */  lui        $at, %hi(D_80065920)
/* 47CC3FC 8008CECC 21082200 */  addu       $at, $at, $v0
/* 47CC400 8008CED0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47CC404 8008CED4 00000000 */  nop
/* 47CC408 8008CED8 C0100300 */  sll        $v0, $v1, 3
/* 47CC40C 8008CEDC 23104300 */  subu       $v0, $v0, $v1
/* 47CC410 8008CEE0 C0100200 */  sll        $v0, $v0, 3
/* 47CC414 8008CEE4 23104300 */  subu       $v0, $v0, $v1
/* 47CC418 8008CEE8 0000A396 */  lhu        $v1, 0x0($s5)
/* 47CC41C 8008CEEC 83120200 */  sra        $v0, $v0, 10
/* 47CC420 8008CEF0 21186200 */  addu       $v1, $v1, $v0
/* 47CC424 8008CEF4 0000A3A6 */  sh         $v1, 0x0($s5)
/* 47CC428 8008CEF8 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CC42C 8008CEFC 00000000 */  nop
/* 47CC430 8008CF00 40100200 */  sll        $v0, $v0, 1
/* 47CC434 8008CF04 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CC438 8008CF08 21082200 */  addu       $at, $at, $v0
/* 47CC43C 8008CF0C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47CC440 8008CF10 00000000 */  nop
/* 47CC444 8008CF14 C0100300 */  sll        $v0, $v1, 3
/* 47CC448 8008CF18 23104300 */  subu       $v0, $v0, $v1
/* 47CC44C 8008CF1C E2330208 */  j          .Llevel_14_8008CF88
/* 47CC450 8008CF20 C0100200 */   sll       $v0, $v0, 3
.Llevel_14_8008CF24:
/* 47CC454 8008CF24 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CC458 8008CF28 00000000 */  nop
/* 47CC45C 8008CF2C 40100200 */  sll        $v0, $v0, 1
/* 47CC460 8008CF30 0680013C */  lui        $at, %hi(D_80065920)
/* 47CC464 8008CF34 21082200 */  addu       $at, $at, $v0
/* 47CC468 8008CF38 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47CC46C 8008CF3C 00000000 */  nop
/* 47CC470 8008CF40 C0100300 */  sll        $v0, $v1, 3
/* 47CC474 8008CF44 21104300 */  addu       $v0, $v0, $v1
/* 47CC478 8008CF48 80100200 */  sll        $v0, $v0, 2
/* 47CC47C 8008CF4C 23104300 */  subu       $v0, $v0, $v1
/* 47CC480 8008CF50 0000A396 */  lhu        $v1, 0x0($s5)
/* 47CC484 8008CF54 83120200 */  sra        $v0, $v0, 10
/* 47CC488 8008CF58 21186200 */  addu       $v1, $v1, $v0
/* 47CC48C 8008CF5C 0000A3A6 */  sh         $v1, 0x0($s5)
/* 47CC490 8008CF60 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CC494 8008CF64 00000000 */  nop
/* 47CC498 8008CF68 40100200 */  sll        $v0, $v0, 1
/* 47CC49C 8008CF6C 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CC4A0 8008CF70 21082200 */  addu       $at, $at, $v0
/* 47CC4A4 8008CF74 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47CC4A8 8008CF78 00000000 */  nop
/* 47CC4AC 8008CF7C C0100300 */  sll        $v0, $v1, 3
/* 47CC4B0 8008CF80 21104300 */  addu       $v0, $v0, $v1
/* 47CC4B4 8008CF84 80100200 */  sll        $v0, $v0, 2
.Llevel_14_8008CF88:
/* 47CC4B8 8008CF88 23104300 */  subu       $v0, $v0, $v1
/* 47CC4BC 8008CF8C 0200A396 */  lhu        $v1, 0x2($s5)
/* 47CC4C0 8008CF90 83120200 */  sra        $v0, $v0, 10
/* 47CC4C4 8008CF94 21186200 */  addu       $v1, $v1, $v0
/* 47CC4C8 8008CF98 0200A3A6 */  sh         $v1, 0x2($s5)
/* 47CC4CC 8008CF9C 36008386 */  lh         $v1, 0x36($s4)
/* 47CC4D0 8008CFA0 0A000224 */  addiu      $v0, $zero, 0xA
/* 47CC4D4 8008CFA4 1A006210 */  beq        $v1, $v0, .Llevel_14_8008D010
/* 47CC4D8 8008CFA8 1D000224 */   addiu     $v0, $zero, 0x1D
/* 47CC4DC 8008CFAC 18006210 */  beq        $v1, $v0, .Llevel_14_8008D010
/* 47CC4E0 8008CFB0 00000000 */   nop
/* 47CC4E4 8008CFB4 9171010C */  jal        rand
/* 47CC4E8 8008CFB8 00000000 */   nop
/* 47CC4EC 8008CFBC 9171010C */  jal        rand
/* 47CC4F0 8008CFC0 440082A2 */   sb        $v0, 0x44($s4)
/* 47CC4F4 8008CFC4 9171010C */  jal        rand
/* 47CC4F8 8008CFC8 450082A2 */   sb        $v0, 0x45($s4)
/* 47CC4FC 8008CFCC 460082A2 */  sb         $v0, 0x46($s4)
/* 47CC500 8008CFD0 0000A286 */  lh         $v0, 0x0($s5)
/* 47CC504 8008CFD4 0C00838E */  lw         $v1, 0xC($s4)
/* 47CC508 8008CFD8 40100200 */  sll        $v0, $v0, 1
/* 47CC50C 8008CFDC 21186200 */  addu       $v1, $v1, $v0
/* 47CC510 8008CFE0 0C0083AE */  sw         $v1, 0xC($s4)
/* 47CC514 8008CFE4 0200A286 */  lh         $v0, 0x2($s5)
/* 47CC518 8008CFE8 1000838E */  lw         $v1, 0x10($s4)
/* 47CC51C 8008CFEC 40100200 */  sll        $v0, $v0, 1
/* 47CC520 8008CFF0 21186200 */  addu       $v1, $v1, $v0
/* 47CC524 8008CFF4 100083AE */  sw         $v1, 0x10($s4)
/* 47CC528 8008CFF8 0400A286 */  lh         $v0, 0x4($s5)
/* 47CC52C 8008CFFC 1400838E */  lw         $v1, 0x14($s4)
/* 47CC530 8008D000 40100200 */  sll        $v0, $v0, 1
/* 47CC534 8008D004 21186200 */  addu       $v1, $v1, $v0
/* 47CC538 8008D008 0D340208 */  j          .Llevel_14_8008D034
/* 47CC53C 8008D00C 140083AE */   sw        $v1, 0x14($s4)
.Llevel_14_8008D010:
/* 47CC540 8008D010 4400C292 */  lbu        $v0, 0x44($s6)
/* 47CC544 8008D014 00000000 */  nop
/* 47CC548 8008D018 440082A2 */  sb         $v0, 0x44($s4)
/* 47CC54C 8008D01C 4500C292 */  lbu        $v0, 0x45($s6)
/* 47CC550 8008D020 00000000 */  nop
/* 47CC554 8008D024 450082A2 */  sb         $v0, 0x45($s4)
/* 47CC558 8008D028 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CC55C 8008D02C 00000000 */  nop
/* 47CC560 8008D030 460082A2 */  sb         $v0, 0x46($s4)
.Llevel_14_8008D034:
/* 47CC564 8008D034 9171010C */  jal        rand
/* 47CC568 8008D038 00000000 */   nop
/* 47CC56C 8008D03C 1F004230 */  andi       $v0, $v0, 0x1F
/* 47CC570 8008D040 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 47CC574 8008D044 9171010C */  jal        rand
/* 47CC578 8008D048 0600A2A6 */   sh        $v0, 0x6($s5)
/* 47CC57C 8008D04C 1F004230 */  andi       $v0, $v0, 0x1F
/* 47CC580 8008D050 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 47CC584 8008D054 9171010C */  jal        rand
/* 47CC588 8008D058 0800A2A6 */   sh        $v0, 0x8($s5)
/* 47CC58C 8008D05C 78000424 */  addiu      $a0, $zero, 0x78
/* 47CC590 8008D060 96000524 */  addiu      $a1, $zero, 0x96
/* 47CC594 8008D064 1F004230 */  andi       $v0, $v0, 0x1F
/* 47CC598 8008D068 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 47CC59C 8008D06C DBD8000C */  jal        func_8003636C
/* 47CC5A0 8008D070 0A00A2A6 */   sh        $v0, 0xA($s5)
/* 47CC5A4 8008D074 0C00A2A6 */  sh         $v0, 0xC($s5)
/* 47CC5A8 8008D078 01000224 */  addiu      $v0, $zero, 0x1
/* 47CC5AC 8008D07C 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 47CC5B0 8008D080 5D360208 */  j          .Llevel_14_8008D974
/* 47CC5B4 8008D084 1200A0A6 */   sh        $zero, 0x12($s5)
.Llevel_14_8008D088:
/* 47CC5B8 8008D088 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_14_8008D08C:
/* 47CC5BC 8008D08C 36008286 */  lh         $v0, 0x36($s4)
/* 47CC5C0 8008D090 0000918E */  lw         $s1, 0x0($s4)
/* 47CC5C4 8008D094 19004314 */  bne        $v0, $v1, .Llevel_14_8008D0FC
/* 47CC5C8 8008D098 0C009026 */   addiu     $s0, $s4, 0xC
/* 47CC5CC 8008D09C 0780043C */  lui        $a0, %hi(D_8006C784)
/* 47CC5D0 8008D0A0 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 47CC5D4 8008D0A4 00000000 */  nop
/* 47CC5D8 8008D0A8 04008228 */  slti       $v0, $a0, 0x4
/* 47CC5DC 8008D0AC 03004010 */  beqz       $v0, .Llevel_14_8008D0BC
/* 47CC5E0 8008D0B0 0A000324 */   addiu     $v1, $zero, 0xA
/* 47CC5E4 8008D0B4 33340208 */  j          .Llevel_14_8008D0CC
/* 47CC5E8 8008D0B8 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_14_8008D0BC:
/* 47CC5EC 8008D0BC 07008228 */  slti       $v0, $a0, 0x7
/* 47CC5F0 8008D0C0 02004010 */  beqz       $v0, .Llevel_14_8008D0CC
/* 47CC5F4 8008D0C4 00000000 */   nop
/* 47CC5F8 8008D0C8 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_14_8008D0CC:
/* 47CC5FC 8008D0CC 0680043C */  lui        $a0, %hi(D_8006582C)
/* 47CC600 8008D0D0 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 47CC604 8008D0D4 0000828C */  lw         $v0, 0x0($a0)
/* 47CC608 8008D0D8 00000000 */  nop
/* 47CC60C 8008D0DC 01004224 */  addiu      $v0, $v0, 0x1
/* 47CC610 8008D0E0 000082AC */  sw         $v0, 0x0($a0)
/* 47CC614 8008D0E4 2A104300 */  slt        $v0, $v0, $v1
/* 47CC618 8008D0E8 04004014 */  bnez       $v0, .Llevel_14_8008D0FC
/* 47CC61C 8008D0EC 0C009026 */   addiu     $s0, $s4, 0xC
/* 47CC620 8008D0F0 D3000224 */  addiu      $v0, $zero, 0xD3
/* 47CC624 8008D0F4 000080AC */  sw         $zero, 0x0($a0)
/* 47CC628 8008D0F8 360082A6 */  sh         $v0, 0x36($s4)
.Llevel_14_8008D0FC:
/* 47CC62C 8008D0FC 21200002 */  addu       $a0, $s0, $zero
/* 47CC630 8008D100 5E3C010C */  jal        func_8004F178
/* 47CC634 8008D104 0C00C526 */   addiu     $a1, $s6, 0xC
/* 47CC638 8008D108 0957010C */  jal        func_80055C24
/* 47CC63C 8008D10C 21208002 */   addu      $a0, $s4, $zero
/* 47CC640 8008D110 21202002 */  addu       $a0, $s1, $zero
/* 47CC644 8008D114 1400828E */  lw         $v0, 0x14($s4)
/* 47CC648 8008D118 21280002 */  addu       $a1, $s0, $zero
/* 47CC64C 8008D11C 00024224 */  addiu      $v0, $v0, 0x200
/* 47CC650 8008D120 5E3C010C */  jal        func_8004F178
/* 47CC654 8008D124 140082AE */   sw        $v0, 0x14($s4)
/* 47CC658 8008D128 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 47CC65C 8008D12C 1C0082AE */  sw         $v0, 0x1C($s4)
/* 47CC660 8008D130 02000224 */  addiu      $v0, $zero, 0x2
/* 47CC664 8008D134 470082A2 */  sb         $v0, 0x47($s4)
/* 47CC668 8008D138 08070224 */  addiu      $v0, $zero, 0x708
/* 47CC66C 8008D13C 0E0022A6 */  sh         $v0, 0xE($s1)
/* 47CC670 8008D140 9171010C */  jal        rand
/* 47CC674 8008D144 110020A2 */   sb        $zero, 0x11($s1)
/* 47CC678 8008D148 FC004230 */  andi       $v0, $v0, 0xFC
/* 47CC67C 8008D14C 5D360208 */  j          .Llevel_14_8008D974
/* 47CC680 8008D150 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_14_8008D154:
/* 47CC684 8008D154 0C009026 */  addiu      $s0, $s4, 0xC
/* 47CC688 8008D158 21200002 */  addu       $a0, $s0, $zero
/* 47CC68C 8008D15C 0000918E */  lw         $s1, 0x0($s4)
/* 47CC690 8008D160 5E3C010C */  jal        func_8004F178
/* 47CC694 8008D164 0C00C526 */   addiu     $a1, $s6, 0xC
/* 47CC698 8008D168 0957010C */  jal        func_80055C24
/* 47CC69C 8008D16C 21208002 */   addu      $a0, $s4, $zero
/* 47CC6A0 8008D170 21200002 */  addu       $a0, $s0, $zero
/* 47CC6A4 8008D174 0780103C */  lui        $s0, %hi(D_8006E020)
/* 47CC6A8 8008D178 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 47CC6AC 8008D17C 21280002 */  addu       $a1, $s0, $zero
/* 47CC6B0 8008D180 14000224 */  addiu      $v0, $zero, 0x14
/* 47CC6B4 8008D184 000022AE */  sw         $v0, 0x0($s1)
/* 47CC6B8 8008D188 3B000224 */  addiu      $v0, $zero, 0x3B
/* 47CC6BC 8008D18C 570082A2 */  sb         $v0, 0x57($s4)
/* 47CC6C0 8008D190 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47CC6C4 8008D194 540082A2 */  sb         $v0, 0x54($s4)
/* 47CC6C8 8008D198 550082A2 */  sb         $v0, 0x55($s4)
/* 47CC6CC 8008D19C 40000224 */  addiu      $v0, $zero, 0x40
/* 47CC6D0 8008D1A0 560082A2 */  sb         $v0, 0x56($s4)
/* 47CC6D4 8008D1A4 60000224 */  addiu      $v0, $zero, 0x60
/* 47CC6D8 8008D1A8 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 47CC6DC 8008D1AC FE000224 */  addiu      $v0, $zero, 0xFE
/* 47CC6E0 8008D1B0 CD3C010C */  jal        func_8004F334
/* 47CC6E4 8008D1B4 470082A2 */   sb        $v0, 0x47($s4)
/* 47CC6E8 8008D1B8 21204000 */  addu       $a0, $v0, $zero
/* 47CC6EC 8008D1BC 0780023C */  lui        $v0, %hi(D_8006E028)
/* 47CC6F0 8008D1C0 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 47CC6F4 8008D1C4 1400858E */  lw         $a1, 0x14($s4)
/* 47CC6F8 8008D1C8 21300000 */  addu       $a2, $zero, $zero
/* 47CC6FC 8008D1CC 203A010C */  jal        func_8004E880
/* 47CC700 8008D1D0 23284500 */   subu      $a1, $v0, $a1
/* 47CC704 8008D1D4 21300000 */  addu       $a2, $zero, $zero
/* 47CC708 8008D1D8 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 47CC70C 8008D1DC 450082A2 */  sb         $v0, 0x45($s4)
/* 47CC710 8008D1E0 0000038E */  lw         $v1, 0x0($s0)
/* 47CC714 8008D1E4 0C00848E */  lw         $a0, 0xC($s4)
/* 47CC718 8008D1E8 0780023C */  lui        $v0, %hi(D_8006E024)
/* 47CC71C 8008D1EC 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 47CC720 8008D1F0 1000858E */  lw         $a1, 0x10($s4)
/* 47CC724 8008D1F4 23206400 */  subu       $a0, $v1, $a0
/* 47CC728 8008D1F8 203A010C */  jal        func_8004E880
/* 47CC72C 8008D1FC 23284500 */   subu      $a1, $v0, $a1
/* 47CC730 8008D200 5D360208 */  j          .Llevel_14_8008D974
/* 47CC734 8008D204 460082A2 */   sb        $v0, 0x46($s4)
.Llevel_14_8008D208:
/* 47CC738 8008D208 3600C286 */  lh         $v0, 0x36($s6)
/* 47CC73C 8008D20C 00000000 */  nop
/* 47CC740 8008D210 06005110 */  beq        $v0, $s1, .Llevel_14_8008D22C
/* 47CC744 8008D214 21280000 */   addu      $a1, $zero, $zero
/* 47CC748 8008D218 0780043C */  lui        $a0, %hi(D_8006E394)
/* 47CC74C 8008D21C 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 47CC750 8008D220 000084AE */  sw         $a0, 0x0($s4)
/* 47CC754 8008D224 E439010C */  jal        func_8004E790
/* 47CC758 8008D228 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_14_8008D22C:
/* 47CC75C 8008D22C 0000908E */  lw         $s0, 0x0($s4)
/* 47CC760 8008D230 0957010C */  jal        func_80055C24
/* 47CC764 8008D234 21208002 */   addu      $a0, $s4, $zero
/* 47CC768 8008D238 78000224 */  addiu      $v0, $zero, 0x78
/* 47CC76C 8008D23C 490080A2 */  sb         $zero, 0x49($s4)
/* 47CC770 8008D240 000000A6 */  sh         $zero, 0x0($s0)
/* 47CC774 8008D244 080000A6 */  sh         $zero, 0x8($s0)
/* 47CC778 8008D248 060000A6 */  sh         $zero, 0x6($s0)
/* 47CC77C 8008D24C 040000A6 */  sh         $zero, 0x4($s0)
/* 47CC780 8008D250 0D0002A2 */  sb         $v0, 0xD($s0)
/* 47CC784 8008D254 100000AE */  sw         $zero, 0x10($s0)
/* 47CC788 8008D258 0600C012 */  beqz       $s6, .Llevel_14_8008D274
/* 47CC78C 8008D25C 140000AE */   sw        $zero, 0x14($s0)
/* 47CC790 8008D260 0C008426 */  addiu      $a0, $s4, 0xC
/* 47CC794 8008D264 5E3C010C */  jal        func_8004F178
/* 47CC798 8008D268 0C00C526 */   addiu     $a1, $s6, 0xC
/* 47CC79C 8008D26C BC340208 */  j          .Llevel_14_8008D2F0
/* 47CC7A0 8008D270 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_14_8008D274:
/* 47CC7A4 8008D274 0C008426 */  addiu      $a0, $s4, 0xC
/* 47CC7A8 8008D278 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 47CC7AC 8008D27C 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 47CC7B0 8008D280 0000A390 */  lbu        $v1, 0x0($a1)
/* 47CC7B4 8008D284 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 47CC7B8 8008D288 80FF6324 */  addiu      $v1, $v1, -0x80
/* 47CC7BC 8008D28C FF006330 */  andi       $v1, $v1, 0xFF
/* 47CC7C0 8008D290 40180300 */  sll        $v1, $v1, 1
/* 47CC7C4 8008D294 0680013C */  lui        $at, %hi(D_80065920)
/* 47CC7C8 8008D298 21082300 */  addu       $at, $at, $v1
/* 47CC7CC 8008D29C 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 47CC7D0 8008D2A0 1000A627 */  addiu      $a2, $sp, 0x10
/* 47CC7D4 8008D2A4 40110700 */  sll        $v0, $a3, 5
/* 47CC7D8 8008D2A8 23104700 */  subu       $v0, $v0, $a3
/* 47CC7DC 8008D2AC 80100200 */  sll        $v0, $v0, 2
/* 47CC7E0 8008D2B0 21104700 */  addu       $v0, $v0, $a3
/* 47CC7E4 8008D2B4 43120200 */  sra        $v0, $v0, 9
/* 47CC7E8 8008D2B8 1000A2AF */  sw         $v0, 0x10($sp)
/* 47CC7EC 8008D2BC 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CC7F0 8008D2C0 21082300 */  addu       $at, $at, $v1
/* 47CC7F4 8008D2C4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47CC7F8 8008D2C8 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 47CC7FC 8008D2CC 1800A2AF */  sw         $v0, 0x18($sp)
/* 47CC800 8008D2D0 40110300 */  sll        $v0, $v1, 5
/* 47CC804 8008D2D4 23104300 */  subu       $v0, $v0, $v1
/* 47CC808 8008D2D8 80100200 */  sll        $v0, $v0, 2
/* 47CC80C 8008D2DC 21104300 */  addu       $v0, $v0, $v1
/* 47CC810 8008D2E0 43120200 */  sra        $v0, $v0, 9
/* 47CC814 8008D2E4 653C010C */  jal        func_8004F194
/* 47CC818 8008D2E8 1400A2AF */   sw        $v0, 0x14($sp)
/* 47CC81C 8008D2EC FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_14_8008D2F0:
/* 47CC820 8008D2F0 5D360208 */  j          .Llevel_14_8008D974
/* 47CC824 8008D2F4 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_14_8008D2F8:
/* 47CC828 8008D2F8 0C008426 */  addiu      $a0, $s4, 0xC
/* 47CC82C 8008D2FC 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CC830 8008D300 0C00C526 */  addiu      $a1, $s6, 0xC
/* 47CC834 8008D304 5E3C010C */  jal        func_8004F178
/* 47CC838 8008D308 460082A2 */   sb        $v0, 0x46($s4)
/* 47CC83C 8008D30C 0957010C */  jal        func_80055C24
/* 47CC840 8008D310 21208002 */   addu      $a0, $s4, $zero
/* 47CC844 8008D314 4ED7000C */  jal        func_80035D38
/* 47CC848 8008D318 21208002 */   addu      $a0, $s4, $zero
/* 47CC84C 8008D31C 02004010 */  beqz       $v0, .Llevel_14_8008D328
/* 47CC850 8008D320 00000000 */   nop
/* 47CC854 8008D324 140082AE */  sw         $v0, 0x14($s4)
.Llevel_14_8008D328:
/* 47CC858 8008D328 06000224 */  addiu      $v0, $zero, 0x6
/* 47CC85C 8008D32C 5D360208 */  j          .Llevel_14_8008D974
/* 47CC860 8008D330 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_14_8008D334:
/* 47CC864 8008D334 410080A2 */  sb         $zero, 0x41($s4)
/* 47CC868 8008D338 400080A2 */  sb         $zero, 0x40($s4)
/* 47CC86C 8008D33C 3E0080A2 */  sb         $zero, 0x3E($s4)
/* 47CC870 8008D340 0400C012 */  beqz       $s6, .Llevel_14_8008D354
/* 47CC874 8008D344 3F0080A2 */   sb        $zero, 0x3F($s4)
/* 47CC878 8008D348 0C008426 */  addiu      $a0, $s4, 0xC
/* 47CC87C 8008D34C 5E3C010C */  jal        func_8004F178
/* 47CC880 8008D350 0C00C526 */   addiu     $a1, $s6, 0xC
.Llevel_14_8008D354:
/* 47CC884 8008D354 21208002 */  addu       $a0, $s4, $zero
/* 47CC888 8008D358 18000224 */  addiu      $v0, $zero, 0x18
/* 47CC88C 8008D35C 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 47CC890 8008D360 28000224 */  addiu      $v0, $zero, 0x28
/* 47CC894 8008D364 5B360208 */  j          .Llevel_14_8008D96C
/* 47CC898 8008D368 4C0082A2 */   sb        $v0, 0x4C($s4)
.Llevel_14_8008D36C:
/* 47CC89C 8008D36C 0957010C */  jal        func_80055C24
/* 47CC8A0 8008D370 21208002 */   addu      $a0, $s4, $zero
/* 47CC8A4 8008D374 02000224 */  addiu      $v0, $zero, 0x2
/* 47CC8A8 8008D378 0E00C012 */  beqz       $s6, .Llevel_14_8008D3B4
/* 47CC8AC 8008D37C 540082A2 */   sb        $v0, 0x54($s4)
/* 47CC8B0 8008D380 0C008426 */  addiu      $a0, $s4, 0xC
/* 47CC8B4 8008D384 0000828E */  lw         $v0, 0x0($s4)
/* 47CC8B8 8008D388 0C00C526 */  addiu      $a1, $s6, 0xC
/* 47CC8BC 8008D38C 5E3C010C */  jal        func_8004F178
/* 47CC8C0 8008D390 000056AC */   sw        $s6, 0x0($v0)
/* 47CC8C4 8008D394 0A000224 */  addiu      $v0, $zero, 0xA
/* 47CC8C8 8008D398 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 47CC8CC 8008D39C 1400828E */  lw         $v0, 0x14($s4)
/* 47CC8D0 8008D3A0 08000324 */  addiu      $v1, $zero, 0x8
/* 47CC8D4 8008D3A4 4C0083A2 */  sb         $v1, 0x4C($s4)
/* 47CC8D8 8008D3A8 00044224 */  addiu      $v0, $v0, 0x400
/* 47CC8DC 8008D3AC 5D360208 */  j          .Llevel_14_8008D974
/* 47CC8E0 8008D3B0 140082AE */   sw        $v0, 0x14($s4)
.Llevel_14_8008D3B4:
/* 47CC8E4 8008D3B4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 47CC8E8 8008D3B8 5D360208 */  j          .Llevel_14_8008D974
/* 47CC8EC 8008D3BC 1C0082AE */   sw        $v0, 0x1C($s4)
.Llevel_14_8008D3C0:
/* 47CC8F0 8008D3C0 0780053C */  lui        $a1, %hi(D_80070328)
/* 47CC8F4 8008D3C4 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 47CC8F8 8008D3C8 0000908E */  lw         $s0, 0x0($s4)
/* 47CC8FC 8008D3CC 5E3C010C */  jal        func_8004F178
/* 47CC900 8008D3D0 0C008426 */   addiu     $a0, $s4, 0xC
/* 47CC904 8008D3D4 1400828E */  lw         $v0, 0x14($s4)
/* 47CC908 8008D3D8 00000000 */  nop
/* 47CC90C 8008D3DC 00044224 */  addiu      $v0, $v0, 0x400
/* 47CC910 8008D3E0 140082AE */  sw         $v0, 0x14($s4)
/* 47CC914 8008D3E4 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 47CC918 8008D3E8 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 47CC91C 8008D3EC 21208002 */  addu       $a0, $s4, $zero
/* 47CC920 8008D3F0 0957010C */  jal        func_80055C24
/* 47CC924 8008D3F4 460082A2 */   sb        $v0, 0x46($s4)
/* 47CC928 8008D3F8 02000224 */  addiu      $v0, $zero, 0x2
/* 47CC92C 8008D3FC 020002A2 */  sb         $v0, 0x2($s0)
/* 47CC930 8008D400 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 47CC934 8008D404 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 47CC938 8008D408 00000000 */  nop
/* 47CC93C 8008D40C 030002A2 */  sb         $v0, 0x3($s0)
/* 47CC940 8008D410 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 47CC944 8008D414 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 47CC948 8008D418 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 47CC94C 8008D41C 100002AE */  sw         $v0, 0x10($s0)
/* 47CC950 8008D420 040003A2 */  sb         $v1, 0x4($s0)
/* 47CC954 8008D424 410080A2 */  sb         $zero, 0x41($s4)
/* 47CC958 8008D428 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 47CC95C 8008D42C 5D360208 */  j          .Llevel_14_8008D974
/* 47CC960 8008D430 4D0080A2 */   sb        $zero, 0x4D($s4)
.Llevel_14_8008D434:
/* 47CC964 8008D434 0C008426 */  addiu      $a0, $s4, 0xC
.Llevel_14_8008D438:
/* 47CC968 8008D438 0C00C526 */  addiu      $a1, $s6, 0xC
/* 47CC96C 8008D43C 0000938E */  lw         $s3, 0x0($s4)
/* 47CC970 8008D440 20000224 */  addiu      $v0, $zero, 0x20
/* 47CC974 8008D444 5E3C010C */  jal        func_8004F178
/* 47CC978 8008D448 4C0082A2 */   sb        $v0, 0x4C($s4)
/* 47CC97C 8008D44C 0957010C */  jal        func_80055C24
/* 47CC980 8008D450 21208002 */   addu      $a0, $s4, $zero
/* 47CC984 8008D454 9171010C */  jal        rand
/* 47CC988 8008D458 00000000 */   nop
/* 47CC98C 8008D45C 9171010C */  jal        rand
/* 47CC990 8008D460 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 47CC994 8008D464 FF075130 */  andi       $s1, $v0, 0x7FF
/* 47CC998 8008D468 8B3A010C */  jal        func_8004EA2C
/* 47CC99C 8008D46C 21202002 */   addu      $a0, $s1, $zero
/* 47CC9A0 8008D470 21204002 */  addu       $a0, $s2, $zero
/* 47CC9A4 8008D474 8B3A010C */  jal        func_8004EA2C
/* 47CC9A8 8008D478 21804000 */   addu      $s0, $v0, $zero
/* 47CC9AC 8008D47C 18000202 */  mult       $s0, $v0
/* 47CC9B0 8008D480 12480000 */  mflo       $t1
/* 47CC9B4 8008D484 4900C292 */  lbu        $v0, 0x49($s6)
/* 47CC9B8 8008D488 00000000 */  nop
/* 47CC9BC 8008D48C 18002201 */  mult       $t1, $v0
/* 47CC9C0 8008D490 21202002 */  addu       $a0, $s1, $zero
/* 47CC9C4 8008D494 12480000 */  mflo       $t1
/* 47CC9C8 8008D498 03160900 */  sra        $v0, $t1, 24
/* 47CC9CC 8008D49C 8B3A010C */  jal        func_8004EA2C
/* 47CC9D0 8008D4A0 000062A6 */   sh        $v0, 0x0($s3)
/* 47CC9D4 8008D4A4 21204002 */  addu       $a0, $s2, $zero
/* 47CC9D8 8008D4A8 793A010C */  jal        func_8004E9E4
/* 47CC9DC 8008D4AC 21804000 */   addu      $s0, $v0, $zero
/* 47CC9E0 8008D4B0 18000202 */  mult       $s0, $v0
/* 47CC9E4 8008D4B4 12480000 */  mflo       $t1
/* 47CC9E8 8008D4B8 4900C292 */  lbu        $v0, 0x49($s6)
/* 47CC9EC 8008D4BC 00000000 */  nop
/* 47CC9F0 8008D4C0 18002201 */  mult       $t1, $v0
/* 47CC9F4 8008D4C4 21202002 */  addu       $a0, $s1, $zero
/* 47CC9F8 8008D4C8 12480000 */  mflo       $t1
/* 47CC9FC 8008D4CC 03160900 */  sra        $v0, $t1, 24
/* 47CCA00 8008D4D0 793A010C */  jal        func_8004E9E4
/* 47CCA04 8008D4D4 020062A6 */   sh        $v0, 0x2($s3)
/* 47CCA08 8008D4D8 4900C392 */  lbu        $v1, 0x49($s6)
/* 47CCA0C 8008D4DC 00000000 */  nop
/* 47CCA10 8008D4E0 18004300 */  mult       $v0, $v1
/* 47CCA14 8008D4E4 12480000 */  mflo       $t1
/* 47CCA18 8008D4E8 03130900 */  sra        $v0, $t1, 12
/* 47CCA1C 8008D4EC 040062A6 */  sh         $v0, 0x4($s3)
/* 47CCA20 8008D4F0 1800C38E */  lw         $v1, 0x18($s6)
/* 47CCA24 8008D4F4 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 47CCA28 8008D4F8 24106200 */  and        $v0, $v1, $v0
/* 47CCA2C 8008D4FC 2C004010 */  beqz       $v0, .Llevel_14_8008D5B0
/* 47CCA30 8008D500 21300000 */   addu      $a2, $zero, $zero
/* 47CCA34 8008D504 0780103C */  lui        $s0, %hi(D_80070328)
/* 47CCA38 8008D508 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 47CCA3C 8008D50C 0C00838E */  lw         $v1, 0xC($s4)
/* 47CCA40 8008D510 0000048E */  lw         $a0, 0x0($s0)
/* 47CCA44 8008D514 1000828E */  lw         $v0, 0x10($s4)
/* 47CCA48 8008D518 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 47CCA4C 8008D51C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 47CCA50 8008D520 23206400 */  subu       $a0, $v1, $a0
/* 47CCA54 8008D524 203A010C */  jal        func_8004E880
/* 47CCA58 8008D528 23284500 */   subu      $a1, $v0, $a1
/* 47CCA5C 8008D52C 40100200 */  sll        $v0, $v0, 1
/* 47CCA60 8008D530 21300000 */  addu       $a2, $zero, $zero
/* 47CCA64 8008D534 0680013C */  lui        $at, %hi(D_80065920)
/* 47CCA68 8008D538 21082200 */  addu       $at, $at, $v0
/* 47CCA6C 8008D53C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 47CCA70 8008D540 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 47CCA74 8008D544 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 47CCA78 8008D548 03110200 */  sra        $v0, $v0, 4
/* 47CCA7C 8008D54C 1000A2AF */  sw         $v0, 0x10($sp)
/* 47CCA80 8008D550 0C00838E */  lw         $v1, 0xC($s4)
/* 47CCA84 8008D554 0000048E */  lw         $a0, 0x0($s0)
/* 47CCA88 8008D558 1000828E */  lw         $v0, 0x10($s4)
/* 47CCA8C 8008D55C 23206400 */  subu       $a0, $v1, $a0
/* 47CCA90 8008D560 203A010C */  jal        func_8004E880
/* 47CCA94 8008D564 23284500 */   subu      $a1, $v0, $a1
/* 47CCA98 8008D568 40100200 */  sll        $v0, $v0, 1
/* 47CCA9C 8008D56C 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CCAA0 8008D570 21082200 */  addu       $at, $at, $v0
/* 47CCAA4 8008D574 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 47CCAA8 8008D578 1000A38F */  lw         $v1, 0x10($sp)
/* 47CCAAC 8008D57C 1800A0AF */  sw         $zero, 0x18($sp)
/* 47CCAB0 8008D580 03110200 */  sra        $v0, $v0, 4
/* 47CCAB4 8008D584 1400A2AF */  sw         $v0, 0x14($sp)
/* 47CCAB8 8008D588 00006296 */  lhu        $v0, 0x0($s3)
/* 47CCABC 8008D58C 00000000 */  nop
/* 47CCAC0 8008D590 21104300 */  addu       $v0, $v0, $v1
/* 47CCAC4 8008D594 000062A6 */  sh         $v0, 0x0($s3)
/* 47CCAC8 8008D598 1400A38F */  lw         $v1, 0x14($sp)
/* 47CCACC 8008D59C 02006296 */  lhu        $v0, 0x2($s3)
/* 47CCAD0 8008D5A0 00000000 */  nop
/* 47CCAD4 8008D5A4 21104300 */  addu       $v0, $v0, $v1
/* 47CCAD8 8008D5A8 83350208 */  j          .Llevel_14_8008D60C
/* 47CCADC 8008D5AC 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_14_8008D5B0:
/* 47CCAE0 8008D5B0 0200023C */  lui        $v0, (0x20000 >> 16)
/* 47CCAE4 8008D5B4 24106200 */  and        $v0, $v1, $v0
/* 47CCAE8 8008D5B8 14004010 */  beqz       $v0, .Llevel_14_8008D60C
/* 47CCAEC 8008D5BC 04000224 */   addiu     $v0, $zero, 0x4
/* 47CCAF0 8008D5C0 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 47CCAF4 8008D5C4 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 47CCAF8 8008D5C8 00000000 */  nop
/* 47CCAFC 8008D5CC 03006210 */  beq        $v1, $v0, .Llevel_14_8008D5DC
/* 47CCB00 8008D5D0 0C000224 */   addiu     $v0, $zero, 0xC
/* 47CCB04 8008D5D4 0D006214 */  bne        $v1, $v0, .Llevel_14_8008D60C
/* 47CCB08 8008D5D8 00000000 */   nop
.Llevel_14_8008D5DC:
/* 47CCB0C 8008D5DC 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 47CCB10 8008D5E0 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 47CCB14 8008D5E4 00006396 */  lhu        $v1, 0x0($s3)
/* 47CCB18 8008D5E8 83110200 */  sra        $v0, $v0, 6
/* 47CCB1C 8008D5EC 21186200 */  addu       $v1, $v1, $v0
/* 47CCB20 8008D5F0 000063A6 */  sh         $v1, 0x0($s3)
/* 47CCB24 8008D5F4 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 47CCB28 8008D5F8 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 47CCB2C 8008D5FC 02006396 */  lhu        $v1, 0x2($s3)
/* 47CCB30 8008D600 83110200 */  sra        $v0, $v0, 6
/* 47CCB34 8008D604 21186200 */  addu       $v1, $v1, $v0
/* 47CCB38 8008D608 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_14_8008D60C:
/* 47CCB3C 8008D60C 5100C492 */  lbu        $a0, 0x51($s6)
/* 47CCB40 8008D610 00000000 */  nop
/* 47CCB44 8008D614 26008010 */  beqz       $a0, .Llevel_14_8008D6B0
/* 47CCB48 8008D618 1000033C */   lui       $v1, (0x100000 >> 16)
/* 47CCB4C 8008D61C 1800C28E */  lw         $v0, 0x18($s6)
/* 47CCB50 8008D620 00000000 */  nop
/* 47CCB54 8008D624 24104300 */  and        $v0, $v0, $v1
/* 47CCB58 8008D628 21004010 */  beqz       $v0, .Llevel_14_8008D6B0
/* 47CCB5C 8008D62C 40100400 */   sll       $v0, $a0, 1
/* 47CCB60 8008D630 0680013C */  lui        $at, %hi(D_80065920)
/* 47CCB64 8008D634 21082200 */  addu       $at, $at, $v0
/* 47CCB68 8008D638 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47CCB6C 8008D63C 00000000 */  nop
/* 47CCB70 8008D640 80100300 */  sll        $v0, $v1, 2
/* 47CCB74 8008D644 21104300 */  addu       $v0, $v0, $v1
/* 47CCB78 8008D648 00190200 */  sll        $v1, $v0, 4
/* 47CCB7C 8008D64C 23186200 */  subu       $v1, $v1, $v0
/* 47CCB80 8008D650 00006296 */  lhu        $v0, 0x0($s3)
/* 47CCB84 8008D654 C31A0300 */  sra        $v1, $v1, 11
/* 47CCB88 8008D658 21104300 */  addu       $v0, $v0, $v1
/* 47CCB8C 8008D65C 000062A6 */  sh         $v0, 0x0($s3)
/* 47CCB90 8008D660 5100C292 */  lbu        $v0, 0x51($s6)
/* 47CCB94 8008D664 28000424 */  addiu      $a0, $zero, 0x28
/* 47CCB98 8008D668 40100200 */  sll        $v0, $v0, 1
/* 47CCB9C 8008D66C 0680013C */  lui        $at, %hi(D_800658A0)
/* 47CCBA0 8008D670 21082200 */  addu       $at, $at, $v0
/* 47CCBA4 8008D674 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47CCBA8 8008D678 46000524 */  addiu      $a1, $zero, 0x46
/* 47CCBAC 8008D67C 80100300 */  sll        $v0, $v1, 2
/* 47CCBB0 8008D680 21104300 */  addu       $v0, $v0, $v1
/* 47CCBB4 8008D684 00190200 */  sll        $v1, $v0, 4
/* 47CCBB8 8008D688 23186200 */  subu       $v1, $v1, $v0
/* 47CCBBC 8008D68C 02006296 */  lhu        $v0, 0x2($s3)
/* 47CCBC0 8008D690 C31A0300 */  sra        $v1, $v1, 11
/* 47CCBC4 8008D694 21104300 */  addu       $v0, $v0, $v1
/* 47CCBC8 8008D698 DBD8000C */  jal        func_8003636C
/* 47CCBCC 8008D69C 020062A6 */   sh        $v0, 0x2($s3)
/* 47CCBD0 8008D6A0 04006396 */  lhu        $v1, 0x4($s3)
/* 47CCBD4 8008D6A4 00000000 */  nop
/* 47CCBD8 8008D6A8 21186200 */  addu       $v1, $v1, $v0
/* 47CCBDC 8008D6AC 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_14_8008D6B0:
/* 47CCBE0 8008D6B0 00006286 */  lh         $v0, 0x0($s3)
/* 47CCBE4 8008D6B4 0C00838E */  lw         $v1, 0xC($s4)
/* 47CCBE8 8008D6B8 80100200 */  sll        $v0, $v0, 2
/* 47CCBEC 8008D6BC 21186200 */  addu       $v1, $v1, $v0
/* 47CCBF0 8008D6C0 0C0083AE */  sw         $v1, 0xC($s4)
/* 47CCBF4 8008D6C4 02006286 */  lh         $v0, 0x2($s3)
/* 47CCBF8 8008D6C8 1000838E */  lw         $v1, 0x10($s4)
/* 47CCBFC 8008D6CC 80100200 */  sll        $v0, $v0, 2
/* 47CCC00 8008D6D0 21186200 */  addu       $v1, $v1, $v0
/* 47CCC04 8008D6D4 100083AE */  sw         $v1, 0x10($s4)
/* 47CCC08 8008D6D8 04006286 */  lh         $v0, 0x4($s3)
/* 47CCC0C 8008D6DC 1400838E */  lw         $v1, 0x14($s4)
/* 47CCC10 8008D6E0 80100200 */  sll        $v0, $v0, 2
/* 47CCC14 8008D6E4 21186200 */  addu       $v1, $v1, $v0
/* 47CCC18 8008D6E8 9171010C */  jal        rand
/* 47CCC1C 8008D6EC 140083AE */   sw        $v1, 0x14($s4)
/* 47CCC20 8008D6F0 9171010C */  jal        rand
/* 47CCC24 8008D6F4 450082A2 */   sb        $v0, 0x45($s4)
/* 47CCC28 8008D6F8 9171010C */  jal        rand
/* 47CCC2C 8008D6FC 460082A2 */   sb        $v0, 0x46($s4)
/* 47CCC30 8008D700 1F004230 */  andi       $v0, $v0, 0x1F
/* 47CCC34 8008D704 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 47CCC38 8008D708 9171010C */  jal        rand
/* 47CCC3C 8008D70C 060062A6 */   sh        $v0, 0x6($s3)
/* 47CCC40 8008D710 1F004230 */  andi       $v0, $v0, 0x1F
/* 47CCC44 8008D714 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 47CCC48 8008D718 9171010C */  jal        rand
/* 47CCC4C 8008D71C 080062A6 */   sh        $v0, 0x8($s3)
/* 47CCC50 8008D720 32000424 */  addiu      $a0, $zero, 0x32
/* 47CCC54 8008D724 1F004230 */  andi       $v0, $v0, 0x1F
/* 47CCC58 8008D728 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 47CCC5C 8008D72C 0A0062A6 */  sh         $v0, 0xA($s3)
/* 47CCC60 8008D730 1400C28E */  lw         $v0, 0x14($s6)
/* 47CCC64 8008D734 50000524 */  addiu      $a1, $zero, 0x50
/* 47CCC68 8008D738 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 47CCC6C 8008D73C DBD8000C */  jal        func_8003636C
/* 47CCC70 8008D740 100062AE */   sw        $v0, 0x10($s3)
/* 47CCC74 8008D744 5D360208 */  j          .Llevel_14_8008D974
/* 47CCC78 8008D748 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_14_8008D74C:
/* 47CCC7C 8008D74C 0C008426 */  addiu      $a0, $s4, 0xC
/* 47CCC80 8008D750 0000918E */  lw         $s1, 0x0($s4)
/* 47CCC84 8008D754 0000D08E */  lw         $s0, 0x0($s6)
/* 47CCC88 8008D758 5E3C010C */  jal        func_8004F178
/* 47CCC8C 8008D75C 0C00C526 */   addiu     $a1, $s6, 0xC
/* 47CCC90 8008D760 0957010C */  jal        func_80055C24
/* 47CCC94 8008D764 21208002 */   addu      $a0, $s4, $zero
/* 47CCC98 8008D768 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CCC9C 8008D76C 00000000 */  nop
/* 47CCCA0 8008D770 460082A2 */  sb         $v0, 0x46($s4)
/* 47CCCA4 8008D774 4800C392 */  lbu        $v1, 0x48($s6)
/* 47CCCA8 8008D778 20000224 */  addiu      $v0, $zero, 0x20
/* 47CCCAC 8008D77C 470080A2 */  sb         $zero, 0x47($s4)
/* 47CCCB0 8008D780 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 47CCCB4 8008D784 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 47CCCB8 8008D788 480083A2 */  sb         $v1, 0x48($s4)
/* 47CCCBC 8008D78C 00000296 */  lhu        $v0, 0x0($s0)
/* 47CCCC0 8008D790 00000000 */  nop
/* 47CCCC4 8008D794 000022A6 */  sh         $v0, 0x0($s1)
/* 47CCCC8 8008D798 02000296 */  lhu        $v0, 0x2($s0)
/* 47CCCCC 8008D79C 21208002 */  addu       $a0, $s4, $zero
/* 47CCCD0 8008D7A0 020022A6 */  sh         $v0, 0x2($s1)
/* 47CCCD4 8008D7A4 0400028E */  lw         $v0, 0x4($s0)
/* 47CCCD8 8008D7A8 21280000 */  addu       $a1, $zero, $zero
/* 47CCCDC 8008D7AC 040022AE */  sw         $v0, 0x4($s1)
/* 47CCCE0 8008D7B0 0E000292 */  lbu        $v0, 0xE($s0)
/* 47CCCE4 8008D7B4 21300000 */  addu       $a2, $zero, $zero
/* 47CCCE8 8008D7B8 0E0022A2 */  sb         $v0, 0xE($s1)
/* 47CCCEC 8008D7BC 0780083C */  lui        $t0, %hi(D_8006C550)
/* 47CCCF0 8008D7C0 50C5088D */  lw         $t0, %lo(D_8006C550)($t0)
/* 47CCCF4 8008D7C4 1400028E */  lw         $v0, 0x14($s0)
/* 47CCCF8 8008D7C8 23408802 */  subu       $t0, $s4, $t0
/* 47CCCFC 8008D7CC 140022AE */  sw         $v0, 0x14($s1)
/* 47CCD00 8008D7D0 40110800 */  sll        $v0, $t0, 5
/* 47CCD04 8008D7D4 23104800 */  subu       $v0, $v0, $t0
/* 47CCD08 8008D7D8 40110200 */  sll        $v0, $v0, 5
/* 47CCD0C 8008D7DC 21104800 */  addu       $v0, $v0, $t0
/* 47CCD10 8008D7E0 C0180200 */  sll        $v1, $v0, 3
/* 47CCD14 8008D7E4 21104300 */  addu       $v0, $v0, $v1
/* 47CCD18 8008D7E8 C03B0200 */  sll        $a3, $v0, 15
/* 47CCD1C 8008D7EC 2338E200 */  subu       $a3, $a3, $v0
/* 47CCD20 8008D7F0 80380700 */  sll        $a3, $a3, 2
/* 47CCD24 8008D7F4 2138E800 */  addu       $a3, $a3, $t0
/* 47CCD28 8008D7F8 23380700 */  negu       $a3, $a3
/* 47CCD2C 8008D7FC 0780023C */  lui        $v0, %hi(unk_ovlheader_800743B0)
/* 47CCD30 8008D800 B043428C */  lw         $v0, %lo(unk_ovlheader_800743B0)($v0)
/* 47CCD34 8008D804 00000000 */  nop
/* 47CCD38 8008D808 09F84000 */  jalr       $v0
/* 47CCD3C 8008D80C C3380700 */   sra       $a3, $a3, 3
/* 47CCD40 8008D810 5E360208 */  j          .Llevel_14_8008D978
/* 47CCD44 8008D814 21108002 */   addu      $v0, $s4, $zero
.Llevel_14_8008D818:
/* 47CCD48 8008D818 21204002 */  addu       $a0, $s2, $zero
/* 47CCD4C 8008D81C 0C00D126 */  addiu      $s1, $s6, 0xC
/* 47CCD50 8008D820 0000908E */  lw         $s0, 0x0($s4)
/* 47CCD54 8008D824 5E3C010C */  jal        func_8004F178
/* 47CCD58 8008D828 21282002 */   addu      $a1, $s1, $zero
/* 47CCD5C 8008D82C 0957010C */  jal        func_80055C24
/* 47CCD60 8008D830 21208002 */   addu      $a0, $s4, $zero
/* 47CCD64 8008D834 2120C002 */  addu       $a0, $s6, $zero
/* 47CCD68 8008D838 40000224 */  addiu      $v0, $zero, 0x40
/* 47CCD6C 8008D83C 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 47CCD70 8008D840 C8000224 */  addiu      $v0, $zero, 0xC8
/* 47CCD74 8008D844 000002AE */  sw         $v0, 0x0($s0)
/* 47CCD78 8008D848 23000224 */  addiu      $v0, $zero, 0x23
/* 47CCD7C 8008D84C 040002AE */  sw         $v0, 0x4($s0)
/* 47CCD80 8008D850 4600C292 */  lbu        $v0, 0x46($s6)
/* 47CCD84 8008D854 04000524 */  addiu      $a1, $zero, 0x4
/* 47CCD88 8008D858 4957010C */  jal        func_80055D24
/* 47CCD8C 8008D85C 460082A2 */   sb        $v0, 0x46($s4)
/* 47CCD90 8008D860 2000C426 */  addiu      $a0, $s6, 0x20
/* 47CCD94 8008D864 1000A527 */  addiu      $a1, $sp, 0x10
/* 47CCD98 8008D868 2130A000 */  addu       $a2, $a1, $zero
/* 47CCD9C 8008D86C 08070224 */  addiu      $v0, $zero, 0x708
/* 47CCDA0 8008D870 1000A2AF */  sw         $v0, 0x10($sp)
/* 47CCDA4 8008D874 2C010224 */  addiu      $v0, $zero, 0x12C
/* 47CCDA8 8008D878 1400A0AF */  sw         $zero, 0x14($sp)
/* 47CCDAC 8008D87C 5B3B010C */  jal        func_8004ED6C
/* 47CCDB0 8008D880 1800A2AF */   sw        $v0, 0x18($sp)
/* 47CCDB4 8008D884 21204002 */  addu       $a0, $s2, $zero
/* 47CCDB8 8008D888 21282002 */  addu       $a1, $s1, $zero
/* 47CCDBC 8008D88C 653C010C */  jal        func_8004F194
/* 47CCDC0 8008D890 1000A627 */   addiu     $a2, $sp, 0x10
/* 47CCDC4 8008D894 5E360208 */  j          .Llevel_14_8008D978
/* 47CCDC8 8008D898 21108002 */   addu      $v0, $s4, $zero
.Llevel_14_8008D89C:
/* 47CCDCC 8008D89C 0000918E */  lw         $s1, 0x0($s4)
/* 47CCDD0 8008D8A0 5E3C010C */  jal        func_8004F178
/* 47CCDD4 8008D8A4 0C00C526 */   addiu     $a1, $s6, 0xC
/* 47CCDD8 8008D8A8 21208002 */  addu       $a0, $s4, $zero
/* 47CCDDC 8008D8AC 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 47CCDE0 8008D8B0 4457010C */  jal        func_80055D10
/* 47CCDE4 8008D8B4 4D0080A2 */   sb        $zero, 0x4D($s4)
/* 47CCDE8 8008D8B8 410080A2 */  sb         $zero, 0x41($s4)
/* 47CCDEC 8008D8BC 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 47CCDF0 8008D8C0 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 47CCDF4 8008D8C4 4900C392 */  lbu        $v1, 0x49($s6)
/* 47CCDF8 8008D8C8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47CCDFC 8008D8CC 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 47CCE00 8008D8D0 1400828E */  lw         $v0, 0x14($s4)
/* 47CCE04 8008D8D4 480083A2 */  sb         $v1, 0x48($s4)
/* 47CCE08 8008D8D8 4600C392 */  lbu        $v1, 0x46($s6)
/* 47CCE0C 8008D8DC 00014224 */  addiu      $v0, $v0, 0x100
/* 47CCE10 8008D8E0 140082AE */  sw         $v0, 0x14($s4)
/* 47CCE14 8008D8E4 460083A2 */  sb         $v1, 0x46($s4)
/* 47CCE18 8008D8E8 0000C28E */  lw         $v0, 0x0($s6)
/* 47CCE1C 8008D8EC 00000000 */  nop
/* 47CCE20 8008D8F0 0C00438C */  lw         $v1, 0xC($v0)
/* 47CCE24 8008D8F4 00000000 */  nop
/* 47CCE28 8008D8F8 1E006004 */  bltz       $v1, .Llevel_14_8008D974
/* 47CCE2C 8008D8FC 21280000 */   addu      $a1, $zero, $zero
/* 47CCE30 8008D900 40100300 */  sll        $v0, $v1, 1
/* 47CCE34 8008D904 21104300 */  addu       $v0, $v0, $v1
/* 47CCE38 8008D908 80100200 */  sll        $v0, $v0, 2
/* 47CCE3C 8008D90C 23104300 */  subu       $v0, $v0, $v1
/* 47CCE40 8008D910 0780103C */  lui        $s0, %hi(D_8006C550)
/* 47CCE44 8008D914 50C5108E */  lw         $s0, %lo(D_8006C550)($s0)
/* 47CCE48 8008D918 C0100200 */  sll        $v0, $v0, 3
/* 47CCE4C 8008D91C 21800202 */  addu       $s0, $s0, $v0
/* 47CCE50 8008D920 0000048E */  lw         $a0, 0x0($s0)
/* 47CCE54 8008D924 C0090624 */  addiu      $a2, $zero, 0x9C0
/* 47CCE58 8008D928 14008424 */  addiu      $a0, $a0, 0x14
/* 47CCE5C 8008D92C EB39010C */  jal        func_8004E7AC
/* 47CCE60 8008D930 040024AE */   sw        $a0, 0x4($s1)
/* 47CCE64 8008D934 C8000224 */  addiu      $v0, $zero, 0xC8
/* 47CCE68 8008D938 000022A6 */  sh         $v0, 0x0($s1)
/* 47CCE6C 8008D93C 020022A6 */  sh         $v0, 0x2($s1)
/* 47CCE70 8008D940 5D360208 */  j          .Llevel_14_8008D974
/* 47CCE74 8008D944 100030AE */   sw        $s0, 0x10($s1)
.Llevel_14_8008D948:
/* 47CCE78 8008D948 0300C012 */  beqz       $s6, .Llevel_14_8008D958
/* 47CCE7C 8008D94C 0C008426 */   addiu     $a0, $s4, 0xC
/* 47CCE80 8008D950 58360208 */  j          .Llevel_14_8008D960
/* 47CCE84 8008D954 0C00C526 */   addiu     $a1, $s6, 0xC
.Llevel_14_8008D958:
/* 47CCE88 8008D958 0780053C */  lui        $a1, %hi(D_80070328)
/* 47CCE8C 8008D95C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_14_8008D960:
/* 47CCE90 8008D960 5E3C010C */  jal        func_8004F178
/* 47CCE94 8008D964 00000000 */   nop
/* 47CCE98 8008D968 21208002 */  addu       $a0, $s4, $zero
.Llevel_14_8008D96C:
/* 47CCE9C 8008D96C 0957010C */  jal        func_80055C24
/* 47CCEA0 8008D970 00000000 */   nop
.Llevel_14_8008D974:
/* 47CCEA4 8008D974 21108002 */  addu       $v0, $s4, $zero
.Llevel_14_8008D978:
/* 47CCEA8 8008D978 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 47CCEAC 8008D97C 3800B68F */  lw         $s6, 0x38($sp)
/* 47CCEB0 8008D980 3400B58F */  lw         $s5, 0x34($sp)
/* 47CCEB4 8008D984 3000B48F */  lw         $s4, 0x30($sp)
/* 47CCEB8 8008D988 2C00B38F */  lw         $s3, 0x2C($sp)
/* 47CCEBC 8008D98C 2800B28F */  lw         $s2, 0x28($sp)
/* 47CCEC0 8008D990 2400B18F */  lw         $s1, 0x24($sp)
/* 47CCEC4 8008D994 2000B08F */  lw         $s0, 0x20($sp)
/* 47CCEC8 8008D998 4000BD27 */  addiu      $sp, $sp, 0x40
/* 47CCECC 8008D99C 0800E003 */  jr         $ra
/* 47CCED0 8008D9A0 00000000 */   nop
.size func_level_14_8008CB2C, . - func_level_14_8008CB2C
