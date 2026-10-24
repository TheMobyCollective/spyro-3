.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_304_level_21
/* 53F90BC 8007CB8C 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 53F90C0 8007CB90 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 53F90C4 8007CB94 21A88000 */  addu       $s5, $a0, $zero
/* 53F90C8 8007CB98 01000224 */  addiu      $v0, $zero, 0x1
/* 53F90CC 8007CB9C 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 53F90D0 8007CBA0 6800BEAF */  sw         $fp, 0x68($sp)
/* 53F90D4 8007CBA4 6400B7AF */  sw         $s7, 0x64($sp)
/* 53F90D8 8007CBA8 6000B6AF */  sw         $s6, 0x60($sp)
/* 53F90DC 8007CBAC 5800B4AF */  sw         $s4, 0x58($sp)
/* 53F90E0 8007CBB0 5400B3AF */  sw         $s3, 0x54($sp)
/* 53F90E4 8007CBB4 5000B2AF */  sw         $s2, 0x50($sp)
/* 53F90E8 8007CBB8 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 53F90EC 8007CBBC 4800B0AF */  sw         $s0, 0x48($sp)
/* 53F90F0 8007CBC0 4800A392 */  lbu        $v1, 0x48($s5)
/* 53F90F4 8007CBC4 0000B68E */  lw         $s6, 0x0($s5)
/* 53F90F8 8007CBC8 73006210 */  beq        $v1, $v0, .Llevel_21_8007CD98
/* 53F90FC 8007CBCC 02006228 */   slti      $v0, $v1, 0x2
/* 53F9100 8007CBD0 05004010 */  beqz       $v0, .Llevel_21_8007CBE8
/* 53F9104 8007CBD4 00000000 */   nop
/* 53F9108 8007CBD8 08006010 */  beqz       $v1, .Llevel_21_8007CBFC
/* 53F910C 8007CBDC 00000000 */   nop
/* 53F9110 8007CBE0 47F40108 */  j          .Llevel_21_8007D11C
/* 53F9114 8007CBE4 00000000 */   nop
.Llevel_21_8007CBE8:
/* 53F9118 8007CBE8 0A000224 */  addiu      $v0, $zero, 0xA
/* 53F911C 8007CBEC F7006210 */  beq        $v1, $v0, .Llevel_21_8007CFCC
/* 53F9120 8007CBF0 00000000 */   nop
/* 53F9124 8007CBF4 47F40108 */  j          .Llevel_21_8007D11C
/* 53F9128 8007CBF8 00000000 */   nop
.Llevel_21_8007CBFC:
/* 53F912C 8007CBFC 0C00A28E */  lw         $v0, 0xC($s5)
/* 53F9130 8007CC00 00000000 */  nop
/* 53F9134 8007CC04 00044228 */  slti       $v0, $v0, 0x400
/* 53F9138 8007CC08 42014014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F913C 8007CC0C 00000000 */   nop
/* 53F9140 8007CC10 1000A28E */  lw         $v0, 0x10($s5)
/* 53F9144 8007CC14 00000000 */  nop
/* 53F9148 8007CC18 00044228 */  slti       $v0, $v0, 0x400
/* 53F914C 8007CC1C 3D014014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F9150 8007CC20 00000000 */   nop
/* 53F9154 8007CC24 1400A28E */  lw         $v0, 0x14($s5)
/* 53F9158 8007CC28 00000000 */  nop
/* 53F915C 8007CC2C 00044228 */  slti       $v0, $v0, 0x400
/* 53F9160 8007CC30 38014014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F9164 8007CC34 1800A427 */   addiu     $a0, $sp, 0x18
/* 53F9168 8007CC38 0C00B026 */  addiu      $s0, $s5, 0xC
/* 53F916C 8007CC3C 5E3C010C */  jal        func_8004F178
/* 53F9170 8007CC40 21280002 */   addu      $a1, $s0, $zero
/* 53F9174 8007CC44 21200002 */  addu       $a0, $s0, $zero
/* 53F9178 8007CC48 21280002 */  addu       $a1, $s0, $zero
/* 53F917C 8007CC4C 653C010C */  jal        func_8004F194
/* 53F9180 8007CC50 2130C002 */   addu      $a2, $s6, $zero
/* 53F9184 8007CC54 21200002 */  addu       $a0, $s0, $zero
/* 53F9188 8007CC58 96000524 */  addiu      $a1, $zero, 0x96
/* 53F918C 8007CC5C A270000C */  jal        func_8001C288
/* 53F9190 8007CC60 07000624 */   addiu     $a2, $zero, 0x7
/* 53F9194 8007CC64 24004010 */  beqz       $v0, .Llevel_21_8007CCF8
/* 53F9198 8007CC68 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 53F919C 8007CC6C 00044234 */  ori        $v0, $v0, (0x10000400 & 0xFFFF)
/* 53F91A0 8007CC70 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 53F91A4 8007CC74 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 53F91A8 8007CC78 4600A292 */  lbu        $v0, 0x46($s5)
/* 53F91AC 8007CC7C 00000000 */  nop
/* 53F91B0 8007CC80 40100200 */  sll        $v0, $v0, 1
/* 53F91B4 8007CC84 0680013C */  lui        $at, %hi(D_80065920)
/* 53F91B8 8007CC88 21082200 */  addu       $at, $at, $v0
/* 53F91BC 8007CC8C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 53F91C0 8007CC90 00000000 */  nop
/* 53F91C4 8007CC94 40100300 */  sll        $v0, $v1, 1
/* 53F91C8 8007CC98 21104300 */  addu       $v0, $v0, $v1
/* 53F91CC 8007CC9C C0100200 */  sll        $v0, $v0, 3
/* 53F91D0 8007CCA0 21104300 */  addu       $v0, $v0, $v1
/* 53F91D4 8007CCA4 83120200 */  sra        $v0, $v0, 10
/* 53F91D8 8007CCA8 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 53F91DC 8007CCAC 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 53F91E0 8007CCB0 4600A292 */  lbu        $v0, 0x46($s5)
/* 53F91E4 8007CCB4 00000000 */  nop
/* 53F91E8 8007CCB8 40100200 */  sll        $v0, $v0, 1
/* 53F91EC 8007CCBC 0680013C */  lui        $at, %hi(D_800658A0)
/* 53F91F0 8007CCC0 21082200 */  addu       $at, $at, $v0
/* 53F91F4 8007CCC4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 53F91F8 8007CCC8 14000224 */  addiu      $v0, $zero, 0x14
/* 53F91FC 8007CCCC 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 53F9200 8007CCD0 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 53F9204 8007CCD4 40100300 */  sll        $v0, $v1, 1
/* 53F9208 8007CCD8 21104300 */  addu       $v0, $v0, $v1
/* 53F920C 8007CCDC C0100200 */  sll        $v0, $v0, 3
/* 53F9210 8007CCE0 21104300 */  addu       $v0, $v0, $v1
/* 53F9214 8007CCE4 83120200 */  sra        $v0, $v0, 10
/* 53F9218 8007CCE8 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 53F921C 8007CCEC 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 53F9220 8007CCF0 01000224 */  addiu      $v0, $zero, 0x1
/* 53F9224 8007CCF4 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_21_8007CCF8:
/* 53F9228 8007CCF8 0E00C426 */  addiu      $a0, $s6, 0xE
/* 53F922C 8007CCFC 69D6000C */  jal        func_800359A4
/* 53F9230 8007CD00 02000524 */   addiu     $a1, $zero, 0x2
/* 53F9234 8007CD04 0B004010 */  beqz       $v0, .Llevel_21_8007CD34
/* 53F9238 8007CD08 21200002 */   addu      $a0, $s0, $zero
/* 53F923C 8007CD0C 96000524 */  addiu      $a1, $zero, 0x96
/* 53F9240 8007CD10 21300000 */  addu       $a2, $zero, $zero
/* 53F9244 8007CD14 21380000 */  addu       $a3, $zero, $zero
/* 53F9248 8007CD18 0010023C */  lui        $v0, (0x10000000 >> 16)
/* 53F924C 8007CD1C 1000A2AF */  sw         $v0, 0x10($sp)
/* 53F9250 8007CD20 8C6E000C */  jal        func_8001BA30
/* 53F9254 8007CD24 1400B5AF */   sw        $s5, 0x14($sp)
/* 53F9258 8007CD28 02004010 */  beqz       $v0, .Llevel_21_8007CD34
/* 53F925C 8007CD2C 01000224 */   addiu     $v0, $zero, 0x1
/* 53F9260 8007CD30 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_21_8007CD34:
/* 53F9264 8007CD34 0C00C426 */  addiu      $a0, $s6, 0xC
/* 53F9268 8007CD38 69D6000C */  jal        func_800359A4
/* 53F926C 8007CD3C 02000524 */   addiu     $a1, $zero, 0x2
/* 53F9270 8007CD40 F4004014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F9274 8007CD44 1800A427 */   addiu     $a0, $sp, 0x18
/* 53F9278 8007CD48 0C00B026 */  addiu      $s0, $s5, 0xC
/* 53F927C 8007CD4C DA60000C */  jal        func_80018368
/* 53F9280 8007CD50 21280002 */   addu      $a1, $s0, $zero
/* 53F9284 8007CD54 02004010 */  beqz       $v0, .Llevel_21_8007CD60
/* 53F9288 8007CD58 01000224 */   addiu     $v0, $zero, 0x1
/* 53F928C 8007CD5C 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_21_8007CD60:
/* 53F9290 8007CD60 01000424 */  addiu      $a0, $zero, 0x1
/* 53F9294 8007CD64 05000524 */  addiu      $a1, $zero, 0x5
/* 53F9298 8007CD68 21300002 */  addu       $a2, $s0, $zero
/* 53F929C 8007CD6C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 53F92A0 8007CD70 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 53F92A4 8007CD74 00000000 */  nop
/* 53F92A8 8007CD78 09F84000 */  jalr       $v0
/* 53F92AC 8007CD7C 21380000 */   addu      $a3, $zero, $zero
/* 53F92B0 8007CD80 4ED7000C */  jal        func_80035D38
/* 53F92B4 8007CD84 2120A002 */   addu      $a0, $s5, $zero
/* 53F92B8 8007CD88 A758010C */  jal        func_8005629C
/* 53F92BC 8007CD8C 2120A002 */   addu      $a0, $s5, $zero
/* 53F92C0 8007CD90 47F40108 */  j          .Llevel_21_8007D11C
/* 53F92C4 8007CD94 00000000 */   nop
.Llevel_21_8007CD98:
/* 53F92C8 8007CD98 21B80000 */  addu       $s7, $zero, $zero
/* 53F92CC 8007CD9C 2800B027 */  addiu      $s0, $sp, 0x28
/* 53F92D0 8007CDA0 21200002 */  addu       $a0, $s0, $zero
.Llevel_21_8007CDA4:
/* 53F92D4 8007CDA4 5E3C010C */  jal        func_8004F178
/* 53F92D8 8007CDA8 0C00A526 */   addiu     $a1, $s5, 0xC
/* 53F92DC 8007CDAC 21200000 */  addu       $a0, $zero, $zero
/* 53F92E0 8007CDB0 F7D8000C */  jal        func_800363DC
/* 53F92E4 8007CDB4 2C010524 */   addiu     $a1, $zero, 0x12C
/* 53F92E8 8007CDB8 21200000 */  addu       $a0, $zero, $zero
/* 53F92EC 8007CDBC 2C010524 */  addiu      $a1, $zero, 0x12C
/* 53F92F0 8007CDC0 2800A38F */  lw         $v1, 0x28($sp)
/* 53F92F4 8007CDC4 0100F726 */  addiu      $s7, $s7, 0x1
/* 53F92F8 8007CDC8 21186200 */  addu       $v1, $v1, $v0
/* 53F92FC 8007CDCC F7D8000C */  jal        func_800363DC
/* 53F9300 8007CDD0 2800A3AF */   sw        $v1, 0x28($sp)
/* 53F9304 8007CDD4 21200000 */  addu       $a0, $zero, $zero
/* 53F9308 8007CDD8 2C00A38F */  lw         $v1, 0x2C($sp)
/* 53F930C 8007CDDC 2C010524 */  addiu      $a1, $zero, 0x12C
/* 53F9310 8007CDE0 21186200 */  addu       $v1, $v1, $v0
/* 53F9314 8007CDE4 F7D8000C */  jal        func_800363DC
/* 53F9318 8007CDE8 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 53F931C 8007CDEC 01000424 */  addiu      $a0, $zero, 0x1
/* 53F9320 8007CDF0 0F000524 */  addiu      $a1, $zero, 0xF
/* 53F9324 8007CDF4 21300002 */  addu       $a2, $s0, $zero
/* 53F9328 8007CDF8 21380000 */  addu       $a3, $zero, $zero
/* 53F932C 8007CDFC 3000A38F */  lw         $v1, 0x30($sp)
/* 53F9330 8007CE00 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 53F9334 8007CE04 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 53F9338 8007CE08 21186200 */  addu       $v1, $v1, $v0
/* 53F933C 8007CE0C 09F80001 */  jalr       $t0
/* 53F9340 8007CE10 3000A3AF */   sw        $v1, 0x30($sp)
/* 53F9344 8007CE14 1800E22A */  slti       $v0, $s7, 0x18
/* 53F9348 8007CE18 E2FF4014 */  bnez       $v0, .Llevel_21_8007CDA4
/* 53F934C 8007CE1C 21200002 */   addu      $a0, $s0, $zero
/* 53F9350 8007CE20 21B80000 */  addu       $s7, $zero, $zero
/* 53F9354 8007CE24 06801E3C */  lui        $fp, %hi(D_800658A0)
/* 53F9358 8007CE28 A058DE27 */  addiu      $fp, $fp, %lo(D_800658A0)
.Llevel_21_8007CE2C:
/* 53F935C 8007CE2C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 53F9360 8007CE30 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 53F9364 8007CE34 0780033C */  lui        $v1, %hi(D_8006C574)
/* 53F9368 8007CE38 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 53F936C 8007CE3C 00000000 */  nop
/* 53F9370 8007CE40 23104300 */  subu       $v0, $v0, $v1
/* 53F9374 8007CE44 15004228 */  slti       $v0, $v0, 0x15
/* 53F9378 8007CE48 5B004014 */  bnez       $v0, .Llevel_21_8007CFB8
/* 53F937C 8007CE4C 2120A002 */   addu      $a0, $s5, $zero
/* 53F9380 8007CE50 3600A486 */  lh         $a0, 0x36($s5)
/* 53F9384 8007CE54 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 53F9388 8007CE58 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 53F938C 8007CE5C 00000000 */  nop
/* 53F9390 8007CE60 09F84000 */  jalr       $v0
/* 53F9394 8007CE64 2128A002 */   addu      $a1, $s5, $zero
/* 53F9398 8007CE68 21A04000 */  addu       $s4, $v0, $zero
/* 53F939C 8007CE6C 4E008012 */  beqz       $s4, .Llevel_21_8007CFA8
/* 53F93A0 8007CE70 00000000 */   nop
/* 53F93A4 8007CE74 0000C48E */  lw         $a0, 0x0($s6)
/* 53F93A8 8007CE78 0400C58E */  lw         $a1, 0x4($s6)
/* 53F93AC 8007CE7C 0000938E */  lw         $s3, 0x0($s4)
/* 53F93B0 8007CE80 203A010C */  jal        func_8004E880
/* 53F93B4 8007CE84 21300000 */   addu      $a2, $zero, $zero
/* 53F93B8 8007CE88 DAFF0424 */  addiu      $a0, $zero, -0x26
/* 53F93BC 8007CE8C 26000524 */  addiu      $a1, $zero, 0x26
/* 53F93C0 8007CE90 F7D8000C */  jal        func_800363DC
/* 53F93C4 8007CE94 21804000 */   addu      $s0, $v0, $zero
/* 53F93C8 8007CE98 80FF1026 */  addiu      $s0, $s0, -0x80
/* 53F93CC 8007CE9C 21800202 */  addu       $s0, $s0, $v0
/* 53F93D0 8007CEA0 D8FF0424 */  addiu      $a0, $zero, -0x28
/* 53F93D4 8007CEA4 DBD8000C */  jal        func_8003636C
/* 53F93D8 8007CEA8 28000524 */   addiu     $a1, $zero, 0x28
/* 53F93DC 8007CEAC 50000424 */  addiu      $a0, $zero, 0x50
/* 53F93E0 8007CEB0 8C000524 */  addiu      $a1, $zero, 0x8C
/* 53F93E4 8007CEB4 DBD8000C */  jal        func_8003636C
/* 53F93E8 8007CEB8 21884000 */   addu      $s1, $v0, $zero
/* 53F93EC 8007CEBC 0C008426 */  addiu      $a0, $s4, 0xC
/* 53F93F0 8007CEC0 0C00A526 */  addiu      $a1, $s5, 0xC
/* 53F93F4 8007CEC4 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 53F93F8 8007CEC8 21904000 */  addu       $s2, $v0, $zero
/* 53F93FC 8007CECC 080080AE */  sw         $zero, 0x8($s4)
/* 53F9400 8007CED0 5E3C010C */  jal        func_8004F178
/* 53F9404 8007CED4 1C0083AE */   sw        $v1, 0x1C($s4)
/* 53F9408 8007CED8 FF001032 */  andi       $s0, $s0, 0xFF
/* 53F940C 8007CEDC 40801000 */  sll        $s0, $s0, 1
/* 53F9410 8007CEE0 0680093C */  lui        $t1, %hi(D_80065920)
/* 53F9414 8007CEE4 20592925 */  addiu      $t1, $t1, %lo(D_80065920)
/* 53F9418 8007CEE8 21100902 */  addu       $v0, $s0, $t1
/* 53F941C 8007CEEC 00004284 */  lh         $v0, 0x0($v0)
/* 53F9420 8007CEF0 00000000 */  nop
/* 53F9424 8007CEF4 18005200 */  mult       $v0, $s2
/* 53F9428 8007CEF8 FF003132 */  andi       $s1, $s1, 0xFF
/* 53F942C 8007CEFC 40881100 */  sll        $s1, $s1, 1
/* 53F9430 8007CF00 21202902 */  addu       $a0, $s1, $t1
/* 53F9434 8007CF04 12480000 */  mflo       $t1
/* 53F9438 8007CF08 00008384 */  lh         $v1, 0x0($a0)
/* 53F943C 8007CF0C 03130900 */  sra        $v0, $t1, 12
/* 53F9440 8007CF10 18004300 */  mult       $v0, $v1
/* 53F9444 8007CF14 21801E02 */  addu       $s0, $s0, $fp
/* 53F9448 8007CF18 12480000 */  mflo       $t1
/* 53F944C 8007CF1C 03130900 */  sra        $v0, $t1, 12
/* 53F9450 8007CF20 3800A2AF */  sw         $v0, 0x38($sp)
/* 53F9454 8007CF24 00000286 */  lh         $v0, 0x0($s0)
/* 53F9458 8007CF28 00000000 */  nop
/* 53F945C 8007CF2C 18005200 */  mult       $v0, $s2
/* 53F9460 8007CF30 12480000 */  mflo       $t1
/* 53F9464 8007CF34 00008384 */  lh         $v1, 0x0($a0)
/* 53F9468 8007CF38 03130900 */  sra        $v0, $t1, 12
/* 53F946C 8007CF3C 18004300 */  mult       $v0, $v1
/* 53F9470 8007CF40 21883E02 */  addu       $s1, $s1, $fp
/* 53F9474 8007CF44 12480000 */  mflo       $t1
/* 53F9478 8007CF48 03130900 */  sra        $v0, $t1, 12
/* 53F947C 8007CF4C 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 53F9480 8007CF50 00002286 */  lh         $v0, 0x0($s1)
/* 53F9484 8007CF54 00000000 */  nop
/* 53F9488 8007CF58 18005200 */  mult       $v0, $s2
/* 53F948C 8007CF5C 3800A527 */  addiu      $a1, $sp, 0x38
/* 53F9490 8007CF60 21206002 */  addu       $a0, $s3, $zero
/* 53F9494 8007CF64 12480000 */  mflo       $t1
/* 53F9498 8007CF68 03130900 */  sra        $v0, $t1, 12
/* 53F949C 8007CF6C 5E3C010C */  jal        func_8004F178
/* 53F94A0 8007CF70 4000A2AF */   sw        $v0, 0x40($sp)
/* 53F94A4 8007CF74 1E000424 */  addiu      $a0, $zero, 0x1E
/* 53F94A8 8007CF78 DBD8000C */  jal        func_8003636C
/* 53F94AC 8007CF7C 46000524 */   addiu     $a1, $zero, 0x46
/* 53F94B0 8007CF80 46000424 */  addiu      $a0, $zero, 0x46
/* 53F94B4 8007CF84 5A000524 */  addiu      $a1, $zero, 0x5A
/* 53F94B8 8007CF88 0C0062A6 */  sh         $v0, 0xC($s3)
/* 53F94BC 8007CF8C 0A000224 */  addiu      $v0, $zero, 0xA
/* 53F94C0 8007CF90 DBD8000C */  jal        func_8003636C
/* 53F94C4 8007CF94 480082A2 */   sb        $v0, 0x48($s4)
/* 53F94C8 8007CF98 4F0082A2 */  sb         $v0, 0x4F($s4)
/* 53F94CC 8007CF9C 50000224 */  addiu      $v0, $zero, 0x50
/* 53F94D0 8007CFA0 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 53F94D4 8007CFA4 4E0082A2 */  sb         $v0, 0x4E($s4)
.Llevel_21_8007CFA8:
/* 53F94D8 8007CFA8 0100F726 */  addiu      $s7, $s7, 0x1
/* 53F94DC 8007CFAC 0800E22A */  slti       $v0, $s7, 0x8
/* 53F94E0 8007CFB0 9EFF4014 */  bnez       $v0, .Llevel_21_8007CE2C
/* 53F94E4 8007CFB4 2120A002 */   addu      $a0, $s5, $zero
.Llevel_21_8007CFB8:
/* 53F94E8 8007CFB8 21280000 */  addu       $a1, $zero, $zero
/* 53F94EC 8007CFBC AFEE000C */  jal        func_8003BABC
/* 53F94F0 8007CFC0 21300000 */   addu      $a2, $zero, $zero
/* 53F94F4 8007CFC4 45F40108 */  j          .Llevel_21_8007D114
/* 53F94F8 8007CFC8 00000000 */   nop
.Llevel_21_8007CFCC:
/* 53F94FC 8007CFCC 0C00A28E */  lw         $v0, 0xC($s5)
/* 53F9500 8007CFD0 00000000 */  nop
/* 53F9504 8007CFD4 00044228 */  slti       $v0, $v0, 0x400
/* 53F9508 8007CFD8 4E004014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F950C 8007CFDC 00000000 */   nop
/* 53F9510 8007CFE0 1000A28E */  lw         $v0, 0x10($s5)
/* 53F9514 8007CFE4 00000000 */  nop
/* 53F9518 8007CFE8 00044228 */  slti       $v0, $v0, 0x400
/* 53F951C 8007CFEC 49004014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F9520 8007CFF0 00000000 */   nop
/* 53F9524 8007CFF4 1400A28E */  lw         $v0, 0x14($s5)
/* 53F9528 8007CFF8 00000000 */  nop
/* 53F952C 8007CFFC 00044228 */  slti       $v0, $v0, 0x400
/* 53F9530 8007D000 44004014 */  bnez       $v0, .Llevel_21_8007D114
/* 53F9534 8007D004 0C00A426 */   addiu     $a0, $s5, 0xC
/* 53F9538 8007D008 6564000C */  jal        func_80019194
/* 53F953C 8007D00C 50000524 */   addiu     $a1, $zero, 0x50
/* 53F9540 8007D010 30004010 */  beqz       $v0, .Llevel_21_8007D0D4
/* 53F9544 8007D014 0C00A426 */   addiu     $a0, $s5, 0xC
/* 53F9548 8007D018 0780053C */  lui        $a1, %hi(D_80071918)
/* 53F954C 8007D01C 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 53F9550 8007D020 0000C38E */  lw         $v1, 0x0($s6)
/* 53F9554 8007D024 0000A28C */  lw         $v0, 0x0($a1)
/* 53F9558 8007D028 00000000 */  nop
/* 53F955C 8007D02C 18006200 */  mult       $v1, $v0
/* 53F9560 8007D030 0400C38E */  lw         $v1, 0x4($s6)
/* 53F9564 8007D034 12300000 */  mflo       $a2
/* 53F9568 8007D038 0780023C */  lui        $v0, %hi(D_8007191C)
/* 53F956C 8007D03C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 53F9570 8007D040 00000000 */  nop
/* 53F9574 8007D044 18006200 */  mult       $v1, $v0
/* 53F9578 8007D048 0800C38E */  lw         $v1, 0x8($s6)
/* 53F957C 8007D04C 12200000 */  mflo       $a0
/* 53F9580 8007D050 0780023C */  lui        $v0, %hi(D_80071920)
/* 53F9584 8007D054 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 53F9588 8007D058 00000000 */  nop
/* 53F958C 8007D05C 18006200 */  mult       $v1, $v0
/* 53F9590 8007D060 2110C400 */  addu       $v0, $a2, $a0
/* 53F9594 8007D064 12180000 */  mflo       $v1
/* 53F9598 8007D068 21104300 */  addu       $v0, $v0, $v1
/* 53F959C 8007D06C 19004104 */  bgez       $v0, .Llevel_21_8007D0D4
/* 53F95A0 8007D070 0C00A426 */   addiu     $a0, $s5, 0xC
/* 53F95A4 8007D074 2120C002 */  addu       $a0, $s6, $zero
/* 53F95A8 8007D078 DD3B010C */  jal        func_8004EF74
/* 53F95AC 8007D07C 2130C002 */   addu      $a2, $s6, $zero
/* 53F95B0 8007D080 14004010 */  beqz       $v0, .Llevel_21_8007D0D4
/* 53F95B4 8007D084 0C00A426 */   addiu     $a0, $s5, 0xC
/* 53F95B8 8007D088 0000C38E */  lw         $v1, 0x0($s6)
/* 53F95BC 8007D08C 00000000 */  nop
/* 53F95C0 8007D090 40100300 */  sll        $v0, $v1, 1
/* 53F95C4 8007D094 21104300 */  addu       $v0, $v0, $v1
/* 53F95C8 8007D098 40100200 */  sll        $v0, $v0, 1
/* 53F95CC 8007D09C 0400C38E */  lw         $v1, 0x4($s6)
/* 53F95D0 8007D0A0 C3100200 */  sra        $v0, $v0, 3
/* 53F95D4 8007D0A4 0000C2AE */  sw         $v0, 0x0($s6)
/* 53F95D8 8007D0A8 40100300 */  sll        $v0, $v1, 1
/* 53F95DC 8007D0AC 21104300 */  addu       $v0, $v0, $v1
/* 53F95E0 8007D0B0 40100200 */  sll        $v0, $v0, 1
/* 53F95E4 8007D0B4 0800C38E */  lw         $v1, 0x8($s6)
/* 53F95E8 8007D0B8 C3100200 */  sra        $v0, $v0, 3
/* 53F95EC 8007D0BC 0400C2AE */  sw         $v0, 0x4($s6)
/* 53F95F0 8007D0C0 40100300 */  sll        $v0, $v1, 1
/* 53F95F4 8007D0C4 21104300 */  addu       $v0, $v0, $v1
/* 53F95F8 8007D0C8 40100200 */  sll        $v0, $v0, 1
/* 53F95FC 8007D0CC C3100200 */  sra        $v0, $v0, 3
/* 53F9600 8007D0D0 0800C2AE */  sw         $v0, 0x8($s6)
.Llevel_21_8007D0D4:
/* 53F9604 8007D0D4 21288000 */  addu       $a1, $a0, $zero
/* 53F9608 8007D0D8 653C010C */  jal        func_8004F194
/* 53F960C 8007D0DC 2130C002 */   addu      $a2, $s6, $zero
/* 53F9610 8007D0E0 0800C28E */  lw         $v0, 0x8($s6)
/* 53F9614 8007D0E4 00000000 */  nop
/* 53F9618 8007D0E8 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 53F961C 8007D0EC 0800C2AE */  sw         $v0, 0x8($s6)
/* 53F9620 8007D0F0 80FF4228 */  slti       $v0, $v0, -0x80
/* 53F9624 8007D0F4 02004010 */  beqz       $v0, .Llevel_21_8007D100
/* 53F9628 8007D0F8 80FF0224 */   addiu     $v0, $zero, -0x80
/* 53F962C 8007D0FC 0800C2AE */  sw         $v0, 0x8($s6)
.Llevel_21_8007D100:
/* 53F9630 8007D100 0C00C426 */  addiu      $a0, $s6, 0xC
/* 53F9634 8007D104 69D6000C */  jal        func_800359A4
/* 53F9638 8007D108 02000524 */   addiu     $a1, $zero, 0x2
/* 53F963C 8007D10C 03004010 */  beqz       $v0, .Llevel_21_8007D11C
/* 53F9640 8007D110 00000000 */   nop
.Llevel_21_8007D114:
/* 53F9644 8007D114 C656010C */  jal        func_80055B18
/* 53F9648 8007D118 2120A002 */   addu      $a0, $s5, $zero
.Llevel_21_8007D11C:
/* 53F964C 8007D11C 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 53F9650 8007D120 6800BE8F */  lw         $fp, 0x68($sp)
/* 53F9654 8007D124 6400B78F */  lw         $s7, 0x64($sp)
/* 53F9658 8007D128 6000B68F */  lw         $s6, 0x60($sp)
/* 53F965C 8007D12C 5C00B58F */  lw         $s5, 0x5C($sp)
/* 53F9660 8007D130 5800B48F */  lw         $s4, 0x58($sp)
/* 53F9664 8007D134 5400B38F */  lw         $s3, 0x54($sp)
/* 53F9668 8007D138 5000B28F */  lw         $s2, 0x50($sp)
/* 53F966C 8007D13C 4C00B18F */  lw         $s1, 0x4C($sp)
/* 53F9670 8007D140 4800B08F */  lw         $s0, 0x48($sp)
/* 53F9674 8007D144 7000BD27 */  addiu      $sp, $sp, 0x70
/* 53F9678 8007D148 0800E003 */  jr         $ra
/* 53F967C 8007D14C 00000000 */   nop
.size MobyUpdate_304_level_21, . - MobyUpdate_304_level_21
