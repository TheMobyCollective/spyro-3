.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_16_8007CA90
/* 4B9DFC0 8007CA90 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4B9DFC4 8007CA94 1800B2AF */  sw         $s2, 0x18($sp)
/* 4B9DFC8 8007CA98 21908000 */  addu       $s2, $a0, $zero
/* 4B9DFCC 8007CA9C 1000B0AF */  sw         $s0, 0x10($sp)
/* 4B9DFD0 8007CAA0 01001024 */  addiu      $s0, $zero, 0x1
/* 4B9DFD4 8007CAA4 2000BFAF */  sw         $ra, 0x20($sp)
/* 4B9DFD8 8007CAA8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 4B9DFDC 8007CAAC 1400B1AF */  sw         $s1, 0x14($sp)
/* 4B9DFE0 8007CAB0 48004392 */  lbu        $v1, 0x48($s2)
/* 4B9DFE4 8007CAB4 0000518E */  lw         $s1, 0x0($s2)
/* 4B9DFE8 8007CAB8 58007010 */  beq        $v1, $s0, .Llevel_16_8007CC1C
/* 4B9DFEC 8007CABC 02006228 */   slti      $v0, $v1, 0x2
/* 4B9DFF0 8007CAC0 05004010 */  beqz       $v0, .Llevel_16_8007CAD8
/* 4B9DFF4 8007CAC4 00000000 */   nop
/* 4B9DFF8 8007CAC8 0A006010 */  beqz       $v1, .Llevel_16_8007CAF4
/* 4B9DFFC 8007CACC 00000000 */   nop
/* 4B9E000 8007CAD0 68F30108 */  j          .Llevel_16_8007CDA0
/* 4B9E004 8007CAD4 00000000 */   nop
.Llevel_16_8007CAD8:
/* 4B9E008 8007CAD8 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9E00C 8007CADC 70006210 */  beq        $v1, $v0, .Llevel_16_8007CCA0
/* 4B9E010 8007CAE0 03000224 */   addiu     $v0, $zero, 0x3
/* 4B9E014 8007CAE4 75006210 */  beq        $v1, $v0, .Llevel_16_8007CCBC
/* 4B9E018 8007CAE8 00000000 */   nop
/* 4B9E01C 8007CAEC 68F30108 */  j          .Llevel_16_8007CDA0
/* 4B9E020 8007CAF0 00000000 */   nop
.Llevel_16_8007CAF4:
/* 4B9E024 8007CAF4 0000238E */  lw         $v1, 0x0($s1)
/* 4B9E028 8007CAF8 00000000 */  nop
/* 4B9E02C 8007CAFC 40100300 */  sll        $v0, $v1, 1
/* 4B9E030 8007CB00 21104300 */  addu       $v0, $v0, $v1
/* 4B9E034 8007CB04 80100200 */  sll        $v0, $v0, 2
/* 4B9E038 8007CB08 23104300 */  subu       $v0, $v0, $v1
/* 4B9E03C 8007CB0C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4B9E040 8007CB10 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4B9E044 8007CB14 C0100200 */  sll        $v0, $v0, 3
/* 4B9E048 8007CB18 21284300 */  addu       $a1, $v0, $v1
/* 4B9E04C 8007CB1C 4800A290 */  lbu        $v0, 0x48($a1)
/* 4B9E050 8007CB20 00000000 */  nop
/* 4B9E054 8007CB24 80004230 */  andi       $v0, $v0, 0x80
/* 4B9E058 8007CB28 1B004010 */  beqz       $v0, .Llevel_16_8007CB98
/* 4B9E05C 8007CB2C 04003026 */   addiu     $s0, $s1, 0x4
/* 4B9E060 8007CB30 21200002 */  addu       $a0, $s0, $zero
/* 4B9E064 8007CB34 5E3C010C */  jal        func_8004F178
/* 4B9E068 8007CB38 0C00A524 */   addiu     $a1, $a1, 0xC
/* 4B9E06C 8007CB3C 21204002 */  addu       $a0, $s2, $zero
/* 4B9E070 8007CB40 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9E074 8007CB44 21300002 */  addu       $a2, $s0, $zero
/* 4B9E078 8007CB48 0C005326 */  addiu      $s3, $s2, 0xC
/* 4B9E07C 8007CB4C 9ADA000C */  jal        func_80036A68
/* 4B9E080 8007CB50 21386002 */   addu      $a3, $s3, $zero
/* 4B9E084 8007CB54 21884000 */  addu       $s1, $v0, $zero
/* 4B9E088 8007CB58 91002012 */  beqz       $s1, .Llevel_16_8007CDA0
/* 4B9E08C 8007CB5C 0C003026 */   addiu     $s0, $s1, 0xC
/* 4B9E090 8007CB60 21200002 */  addu       $a0, $s0, $zero
/* 4B9E094 8007CB64 5E3C010C */  jal        func_8004F178
/* 4B9E098 8007CB68 21286002 */   addu      $a1, $s3, $zero
/* 4B9E09C 8007CB6C 21200002 */  addu       $a0, $s0, $zero
/* 4B9E0A0 8007CB70 D668000C */  jal        func_8001A358
/* 4B9E0A4 8007CB74 00040524 */   addiu     $a1, $zero, 0x400
/* 4B9E0A8 8007CB78 02004010 */  beqz       $v0, .Llevel_16_8007CB84
/* 4B9E0AC 8007CB7C 00000000 */   nop
/* 4B9E0B0 8007CB80 140022AE */  sw         $v0, 0x14($s1)
.Llevel_16_8007CB84:
/* 4B9E0B4 8007CB84 50004292 */  lbu        $v0, 0x50($s2)
/* 4B9E0B8 8007CB88 21204002 */  addu       $a0, $s2, $zero
/* 4B9E0BC 8007CB8C 480020A2 */  sb         $zero, 0x48($s1)
/* 4B9E0C0 8007CB90 66F30108 */  j          .Llevel_16_8007CD98
/* 4B9E0C4 8007CB94 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_16_8007CB98:
/* 4B9E0C8 8007CB98 04002426 */  addiu      $a0, $s1, 0x4
/* 4B9E0CC 8007CB9C 0C005026 */  addiu      $s0, $s2, 0xC
/* 4B9E0D0 8007CBA0 5E3C010C */  jal        func_8004F178
/* 4B9E0D4 8007CBA4 21280002 */   addu      $a1, $s0, $zero
/* 4B9E0D8 8007CBA8 21200002 */  addu       $a0, $s0, $zero
/* 4B9E0DC 8007CBAC 0000238E */  lw         $v1, 0x0($s1)
/* 4B9E0E0 8007CBB0 0780053C */  lui        $a1, %hi(D_8006C550)
/* 4B9E0E4 8007CBB4 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 4B9E0E8 8007CBB8 40100300 */  sll        $v0, $v1, 1
/* 4B9E0EC 8007CBBC 21104300 */  addu       $v0, $v0, $v1
/* 4B9E0F0 8007CBC0 80100200 */  sll        $v0, $v0, 2
/* 4B9E0F4 8007CBC4 23104300 */  subu       $v0, $v0, $v1
/* 4B9E0F8 8007CBC8 C0100200 */  sll        $v0, $v0, 3
/* 4B9E0FC 8007CBCC 2128A200 */  addu       $a1, $a1, $v0
/* 4B9E100 8007CBD0 5E3C010C */  jal        func_8004F178
/* 4B9E104 8007CBD4 0C00A524 */   addiu     $a1, $a1, 0xC
/* 4B9E108 8007CBD8 1400228E */  lw         $v0, 0x14($s1)
/* 4B9E10C 8007CBDC 00000000 */  nop
/* 4B9E110 8007CBE0 0000438C */  lw         $v1, 0x0($v0)
/* 4B9E114 8007CBE4 00000000 */  nop
/* 4B9E118 8007CBE8 490043A2 */  sb         $v1, 0x49($s2)
/* 4B9E11C 8007CBEC FF006330 */  andi       $v1, $v1, 0xFF
/* 4B9E120 8007CBF0 00110300 */  sll        $v0, $v1, 4
/* 4B9E124 8007CBF4 1400248E */  lw         $a0, 0x14($s1)
/* 4B9E128 8007CBF8 23104300 */  subu       $v0, $v0, $v1
/* 4B9E12C 8007CBFC 100022AE */  sw         $v0, 0x10($s1)
/* 4B9E130 8007CC00 0000828C */  lw         $v0, 0x0($a0)
/* 4B9E134 8007CC04 00000000 */  nop
/* 4B9E138 8007CC08 01004224 */  addiu      $v0, $v0, 0x1
/* 4B9E13C 8007CC0C 000082AC */  sw         $v0, 0x0($a0)
/* 4B9E140 8007CC10 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9E144 8007CC14 68F30108 */  j          .Llevel_16_8007CDA0
/* 4B9E148 8007CC18 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_16_8007CC1C:
/* 4B9E14C 8007CC1C 0000238E */  lw         $v1, 0x0($s1)
/* 4B9E150 8007CC20 00000000 */  nop
/* 4B9E154 8007CC24 40100300 */  sll        $v0, $v1, 1
/* 4B9E158 8007CC28 21104300 */  addu       $v0, $v0, $v1
/* 4B9E15C 8007CC2C 80100200 */  sll        $v0, $v0, 2
/* 4B9E160 8007CC30 23104300 */  subu       $v0, $v0, $v1
/* 4B9E164 8007CC34 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4B9E168 8007CC38 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4B9E16C 8007CC3C C0100200 */  sll        $v0, $v0, 3
/* 4B9E170 8007CC40 21284300 */  addu       $a1, $v0, $v1
/* 4B9E174 8007CC44 3600A384 */  lh         $v1, 0x36($a1)
/* 4B9E178 8007CC48 CE000224 */  addiu      $v0, $zero, 0xCE
/* 4B9E17C 8007CC4C 03006214 */  bne        $v1, $v0, .Llevel_16_8007CC5C
/* 4B9E180 8007CC50 0C004426 */   addiu     $a0, $s2, 0xC
/* 4B9E184 8007CC54 5E3C010C */  jal        func_8004F178
/* 4B9E188 8007CC58 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_16_8007CC5C:
/* 4B9E18C 8007CC5C 0000238E */  lw         $v1, 0x0($s1)
/* 4B9E190 8007CC60 00000000 */  nop
/* 4B9E194 8007CC64 40100300 */  sll        $v0, $v1, 1
/* 4B9E198 8007CC68 21104300 */  addu       $v0, $v0, $v1
/* 4B9E19C 8007CC6C 80100200 */  sll        $v0, $v0, 2
/* 4B9E1A0 8007CC70 23104300 */  subu       $v0, $v0, $v1
/* 4B9E1A4 8007CC74 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4B9E1A8 8007CC78 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4B9E1AC 8007CC7C C0100200 */  sll        $v0, $v0, 3
/* 4B9E1B0 8007CC80 21104300 */  addu       $v0, $v0, $v1
/* 4B9E1B4 8007CC84 48004290 */  lbu        $v0, 0x48($v0)
/* 4B9E1B8 8007CC88 00000000 */  nop
/* 4B9E1BC 8007CC8C 80004230 */  andi       $v0, $v0, 0x80
/* 4B9E1C0 8007CC90 43004010 */  beqz       $v0, .Llevel_16_8007CDA0
/* 4B9E1C4 8007CC94 02000224 */   addiu     $v0, $zero, 0x2
/* 4B9E1C8 8007CC98 68F30108 */  j          .Llevel_16_8007CDA0
/* 4B9E1CC 8007CC9C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_16_8007CCA0:
/* 4B9E1D0 8007CCA0 10002426 */  addiu      $a0, $s1, 0x10
/* 4B9E1D4 8007CCA4 69D6000C */  jal        func_800359A4
/* 4B9E1D8 8007CCA8 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9E1DC 8007CCAC 3C004010 */  beqz       $v0, .Llevel_16_8007CDA0
/* 4B9E1E0 8007CCB0 03000224 */   addiu     $v0, $zero, 0x3
/* 4B9E1E4 8007CCB4 68F30108 */  j          .Llevel_16_8007CDA0
/* 4B9E1E8 8007CCB8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_16_8007CCBC:
/* 4B9E1EC 8007CCBC 0000238E */  lw         $v1, 0x0($s1)
/* 4B9E1F0 8007CCC0 00000000 */  nop
/* 4B9E1F4 8007CCC4 40100300 */  sll        $v0, $v1, 1
/* 4B9E1F8 8007CCC8 21104300 */  addu       $v0, $v0, $v1
/* 4B9E1FC 8007CCCC 80100200 */  sll        $v0, $v0, 2
/* 4B9E200 8007CCD0 23104300 */  subu       $v0, $v0, $v1
/* 4B9E204 8007CCD4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4B9E208 8007CCD8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4B9E20C 8007CCDC C0100200 */  sll        $v0, $v0, 3
/* 4B9E210 8007CCE0 21204300 */  addu       $a0, $v0, $v1
/* 4B9E214 8007CCE4 50008390 */  lbu        $v1, 0x50($a0)
/* 4B9E218 8007CCE8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4B9E21C 8007CCEC 15006214 */  bne        $v1, $v0, .Llevel_16_8007CD44
/* 4B9E220 8007CCF0 00000000 */   nop
/* 4B9E224 8007CCF4 80EE000C */  jal        func_8003BA00
/* 4B9E228 8007CCF8 00000000 */   nop
/* 4B9E22C 8007CCFC 0000238E */  lw         $v1, 0x0($s1)
/* 4B9E230 8007CD00 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 4B9E234 8007CD04 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 4B9E238 8007CD08 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 4B9E23C 8007CD0C B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 4B9E240 8007CD10 21186200 */  addu       $v1, $v1, $v0
/* 4B9E244 8007CD14 1F006530 */  andi       $a1, $v1, 0x1F
/* 4B9E248 8007CD18 43190300 */  sra        $v1, $v1, 5
/* 4B9E24C 8007CD1C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 4B9E250 8007CD20 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 4B9E254 8007CD24 80180300 */  sll        $v1, $v1, 2
/* 4B9E258 8007CD28 40110200 */  sll        $v0, $v0, 5
/* 4B9E25C 8007CD2C 21104400 */  addu       $v0, $v0, $a0
/* 4B9E260 8007CD30 21186200 */  addu       $v1, $v1, $v0
/* 4B9E264 8007CD34 0000628C */  lw         $v0, 0x0($v1)
/* 4B9E268 8007CD38 0428B000 */  sllv       $a1, $s0, $a1
/* 4B9E26C 8007CD3C 25104500 */  or         $v0, $v0, $a1
/* 4B9E270 8007CD40 000062AC */  sw         $v0, 0x0($v1)
.Llevel_16_8007CD44:
/* 4B9E274 8007CD44 21204002 */  addu       $a0, $s2, $zero
/* 4B9E278 8007CD48 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9E27C 8007CD4C 0C004626 */  addiu      $a2, $s2, 0xC
/* 4B9E280 8007CD50 9ADA000C */  jal        func_80036A68
/* 4B9E284 8007CD54 04002726 */   addiu     $a3, $s1, 0x4
/* 4B9E288 8007CD58 11004010 */  beqz       $v0, .Llevel_16_8007CDA0
/* 4B9E28C 8007CD5C 21284002 */   addu      $a1, $s2, $zero
/* 4B9E290 8007CD60 0780023C */  lui        $v0, %hi(D_8006C654)
/* 4B9E294 8007CD64 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 4B9E298 8007CD68 00000000 */  nop
/* 4B9E29C 8007CD6C 1A004490 */  lbu        $a0, 0x1A($v0)
/* 4B9E2A0 8007CD70 D4EE000C */  jal        PlaySound
/* 4B9E2A4 8007CD74 21300000 */   addu      $a2, $zero, $zero
/* 4B9E2A8 8007CD78 06004004 */  bltz       $v0, .Llevel_16_8007CD94
/* 4B9E2AC 8007CD7C 21204000 */   addu      $a0, $v0, $zero
/* 4B9E2B0 8007CD80 49004592 */  lbu        $a1, 0x49($s2)
/* 4B9E2B4 8007CD84 00000000 */  nop
/* 4B9E2B8 8007CD88 002A0500 */  sll        $a1, $a1, 8
/* 4B9E2BC 8007CD8C 2CF0000C */  jal        func_8003C0B0
/* 4B9E2C0 8007CD90 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_16_8007CD94:
/* 4B9E2C4 8007CD94 21204002 */  addu       $a0, $s2, $zero
.Llevel_16_8007CD98:
/* 4B9E2C8 8007CD98 C656010C */  jal        func_80055B18
/* 4B9E2CC 8007CD9C 00000000 */   nop
.Llevel_16_8007CDA0:
/* 4B9E2D0 8007CDA0 2000BF8F */  lw         $ra, 0x20($sp)
/* 4B9E2D4 8007CDA4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4B9E2D8 8007CDA8 1800B28F */  lw         $s2, 0x18($sp)
/* 4B9E2DC 8007CDAC 1400B18F */  lw         $s1, 0x14($sp)
/* 4B9E2E0 8007CDB0 1000B08F */  lw         $s0, 0x10($sp)
/* 4B9E2E4 8007CDB4 2800BD27 */  addiu      $sp, $sp, 0x28
/* 4B9E2E8 8007CDB8 0800E003 */  jr         $ra
/* 4B9E2EC 8007CDBC 00000000 */   nop
.size func_level_16_8007CA90, . - func_level_16_8007CA90
