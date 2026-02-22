.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_46_8007ABF0
/* 8F4D120 8007ABF0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8F4D124 8007ABF4 1800B2AF */  sw         $s2, 0x18($sp)
/* 8F4D128 8007ABF8 21908000 */  addu       $s2, $a0, $zero
/* 8F4D12C 8007ABFC 1000B0AF */  sw         $s0, 0x10($sp)
/* 8F4D130 8007AC00 01001024 */  addiu      $s0, $zero, 0x1
/* 8F4D134 8007AC04 2000BFAF */  sw         $ra, 0x20($sp)
/* 8F4D138 8007AC08 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 8F4D13C 8007AC0C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8F4D140 8007AC10 48004392 */  lbu        $v1, 0x48($s2)
/* 8F4D144 8007AC14 0000518E */  lw         $s1, 0x0($s2)
/* 8F4D148 8007AC18 58007010 */  beq        $v1, $s0, .Llevel_46_8007AD7C
/* 8F4D14C 8007AC1C 02006228 */   slti      $v0, $v1, 0x2
/* 8F4D150 8007AC20 05004010 */  beqz       $v0, .Llevel_46_8007AC38
/* 8F4D154 8007AC24 00000000 */   nop
/* 8F4D158 8007AC28 0A006010 */  beqz       $v1, .Llevel_46_8007AC54
/* 8F4D15C 8007AC2C 00000000 */   nop
/* 8F4D160 8007AC30 C0EB0108 */  j          .Llevel_46_8007AF00
/* 8F4D164 8007AC34 00000000 */   nop
.Llevel_46_8007AC38:
/* 8F4D168 8007AC38 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4D16C 8007AC3C 70006210 */  beq        $v1, $v0, .Llevel_46_8007AE00
/* 8F4D170 8007AC40 03000224 */   addiu     $v0, $zero, 0x3
/* 8F4D174 8007AC44 75006210 */  beq        $v1, $v0, .Llevel_46_8007AE1C
/* 8F4D178 8007AC48 00000000 */   nop
/* 8F4D17C 8007AC4C C0EB0108 */  j          .Llevel_46_8007AF00
/* 8F4D180 8007AC50 00000000 */   nop
.Llevel_46_8007AC54:
/* 8F4D184 8007AC54 0000238E */  lw         $v1, 0x0($s1)
/* 8F4D188 8007AC58 00000000 */  nop
/* 8F4D18C 8007AC5C 40100300 */  sll        $v0, $v1, 1
/* 8F4D190 8007AC60 21104300 */  addu       $v0, $v0, $v1
/* 8F4D194 8007AC64 80100200 */  sll        $v0, $v0, 2
/* 8F4D198 8007AC68 23104300 */  subu       $v0, $v0, $v1
/* 8F4D19C 8007AC6C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8F4D1A0 8007AC70 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8F4D1A4 8007AC74 C0100200 */  sll        $v0, $v0, 3
/* 8F4D1A8 8007AC78 21284300 */  addu       $a1, $v0, $v1
/* 8F4D1AC 8007AC7C 4800A290 */  lbu        $v0, 0x48($a1)
/* 8F4D1B0 8007AC80 00000000 */  nop
/* 8F4D1B4 8007AC84 80004230 */  andi       $v0, $v0, 0x80
/* 8F4D1B8 8007AC88 1B004010 */  beqz       $v0, .Llevel_46_8007ACF8
/* 8F4D1BC 8007AC8C 04003026 */   addiu     $s0, $s1, 0x4
/* 8F4D1C0 8007AC90 21200002 */  addu       $a0, $s0, $zero
/* 8F4D1C4 8007AC94 5E3C010C */  jal        func_8004F178
/* 8F4D1C8 8007AC98 0C00A524 */   addiu     $a1, $a1, 0xC
/* 8F4D1CC 8007AC9C 21204002 */  addu       $a0, $s2, $zero
/* 8F4D1D0 8007ACA0 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4D1D4 8007ACA4 21300002 */  addu       $a2, $s0, $zero
/* 8F4D1D8 8007ACA8 0C005326 */  addiu      $s3, $s2, 0xC
/* 8F4D1DC 8007ACAC 9ADA000C */  jal        func_80036A68
/* 8F4D1E0 8007ACB0 21386002 */   addu      $a3, $s3, $zero
/* 8F4D1E4 8007ACB4 21884000 */  addu       $s1, $v0, $zero
/* 8F4D1E8 8007ACB8 91002012 */  beqz       $s1, .Llevel_46_8007AF00
/* 8F4D1EC 8007ACBC 0C003026 */   addiu     $s0, $s1, 0xC
/* 8F4D1F0 8007ACC0 21200002 */  addu       $a0, $s0, $zero
/* 8F4D1F4 8007ACC4 5E3C010C */  jal        func_8004F178
/* 8F4D1F8 8007ACC8 21286002 */   addu      $a1, $s3, $zero
/* 8F4D1FC 8007ACCC 21200002 */  addu       $a0, $s0, $zero
/* 8F4D200 8007ACD0 D668000C */  jal        func_8001A358
/* 8F4D204 8007ACD4 00040524 */   addiu     $a1, $zero, 0x400
/* 8F4D208 8007ACD8 02004010 */  beqz       $v0, .Llevel_46_8007ACE4
/* 8F4D20C 8007ACDC 00000000 */   nop
/* 8F4D210 8007ACE0 140022AE */  sw         $v0, 0x14($s1)
.Llevel_46_8007ACE4:
/* 8F4D214 8007ACE4 50004292 */  lbu        $v0, 0x50($s2)
/* 8F4D218 8007ACE8 21204002 */  addu       $a0, $s2, $zero
/* 8F4D21C 8007ACEC 480020A2 */  sb         $zero, 0x48($s1)
/* 8F4D220 8007ACF0 BEEB0108 */  j          .Llevel_46_8007AEF8
/* 8F4D224 8007ACF4 500022A2 */   sb        $v0, 0x50($s1)
.Llevel_46_8007ACF8:
/* 8F4D228 8007ACF8 04002426 */  addiu      $a0, $s1, 0x4
/* 8F4D22C 8007ACFC 0C005026 */  addiu      $s0, $s2, 0xC
/* 8F4D230 8007AD00 5E3C010C */  jal        func_8004F178
/* 8F4D234 8007AD04 21280002 */   addu      $a1, $s0, $zero
/* 8F4D238 8007AD08 21200002 */  addu       $a0, $s0, $zero
/* 8F4D23C 8007AD0C 0000238E */  lw         $v1, 0x0($s1)
/* 8F4D240 8007AD10 0780053C */  lui        $a1, %hi(D_8006C550)
/* 8F4D244 8007AD14 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 8F4D248 8007AD18 40100300 */  sll        $v0, $v1, 1
/* 8F4D24C 8007AD1C 21104300 */  addu       $v0, $v0, $v1
/* 8F4D250 8007AD20 80100200 */  sll        $v0, $v0, 2
/* 8F4D254 8007AD24 23104300 */  subu       $v0, $v0, $v1
/* 8F4D258 8007AD28 C0100200 */  sll        $v0, $v0, 3
/* 8F4D25C 8007AD2C 2128A200 */  addu       $a1, $a1, $v0
/* 8F4D260 8007AD30 5E3C010C */  jal        func_8004F178
/* 8F4D264 8007AD34 0C00A524 */   addiu     $a1, $a1, 0xC
/* 8F4D268 8007AD38 1400228E */  lw         $v0, 0x14($s1)
/* 8F4D26C 8007AD3C 00000000 */  nop
/* 8F4D270 8007AD40 0000438C */  lw         $v1, 0x0($v0)
/* 8F4D274 8007AD44 00000000 */  nop
/* 8F4D278 8007AD48 490043A2 */  sb         $v1, 0x49($s2)
/* 8F4D27C 8007AD4C FF006330 */  andi       $v1, $v1, 0xFF
/* 8F4D280 8007AD50 00110300 */  sll        $v0, $v1, 4
/* 8F4D284 8007AD54 1400248E */  lw         $a0, 0x14($s1)
/* 8F4D288 8007AD58 23104300 */  subu       $v0, $v0, $v1
/* 8F4D28C 8007AD5C 100022AE */  sw         $v0, 0x10($s1)
/* 8F4D290 8007AD60 0000828C */  lw         $v0, 0x0($a0)
/* 8F4D294 8007AD64 00000000 */  nop
/* 8F4D298 8007AD68 01004224 */  addiu      $v0, $v0, 0x1
/* 8F4D29C 8007AD6C 000082AC */  sw         $v0, 0x0($a0)
/* 8F4D2A0 8007AD70 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4D2A4 8007AD74 C0EB0108 */  j          .Llevel_46_8007AF00
/* 8F4D2A8 8007AD78 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_46_8007AD7C:
/* 8F4D2AC 8007AD7C 0000238E */  lw         $v1, 0x0($s1)
/* 8F4D2B0 8007AD80 00000000 */  nop
/* 8F4D2B4 8007AD84 40100300 */  sll        $v0, $v1, 1
/* 8F4D2B8 8007AD88 21104300 */  addu       $v0, $v0, $v1
/* 8F4D2BC 8007AD8C 80100200 */  sll        $v0, $v0, 2
/* 8F4D2C0 8007AD90 23104300 */  subu       $v0, $v0, $v1
/* 8F4D2C4 8007AD94 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8F4D2C8 8007AD98 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8F4D2CC 8007AD9C C0100200 */  sll        $v0, $v0, 3
/* 8F4D2D0 8007ADA0 21284300 */  addu       $a1, $v0, $v1
/* 8F4D2D4 8007ADA4 3600A384 */  lh         $v1, 0x36($a1)
/* 8F4D2D8 8007ADA8 CE000224 */  addiu      $v0, $zero, 0xCE
/* 8F4D2DC 8007ADAC 03006214 */  bne        $v1, $v0, .Llevel_46_8007ADBC
/* 8F4D2E0 8007ADB0 0C004426 */   addiu     $a0, $s2, 0xC
/* 8F4D2E4 8007ADB4 5E3C010C */  jal        func_8004F178
/* 8F4D2E8 8007ADB8 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_46_8007ADBC:
/* 8F4D2EC 8007ADBC 0000238E */  lw         $v1, 0x0($s1)
/* 8F4D2F0 8007ADC0 00000000 */  nop
/* 8F4D2F4 8007ADC4 40100300 */  sll        $v0, $v1, 1
/* 8F4D2F8 8007ADC8 21104300 */  addu       $v0, $v0, $v1
/* 8F4D2FC 8007ADCC 80100200 */  sll        $v0, $v0, 2
/* 8F4D300 8007ADD0 23104300 */  subu       $v0, $v0, $v1
/* 8F4D304 8007ADD4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8F4D308 8007ADD8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8F4D30C 8007ADDC C0100200 */  sll        $v0, $v0, 3
/* 8F4D310 8007ADE0 21104300 */  addu       $v0, $v0, $v1
/* 8F4D314 8007ADE4 48004290 */  lbu        $v0, 0x48($v0)
/* 8F4D318 8007ADE8 00000000 */  nop
/* 8F4D31C 8007ADEC 80004230 */  andi       $v0, $v0, 0x80
/* 8F4D320 8007ADF0 43004010 */  beqz       $v0, .Llevel_46_8007AF00
/* 8F4D324 8007ADF4 02000224 */   addiu     $v0, $zero, 0x2
/* 8F4D328 8007ADF8 C0EB0108 */  j          .Llevel_46_8007AF00
/* 8F4D32C 8007ADFC 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_46_8007AE00:
/* 8F4D330 8007AE00 10002426 */  addiu      $a0, $s1, 0x10
/* 8F4D334 8007AE04 69D6000C */  jal        func_800359A4
/* 8F4D338 8007AE08 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4D33C 8007AE0C 3C004010 */  beqz       $v0, .Llevel_46_8007AF00
/* 8F4D340 8007AE10 03000224 */   addiu     $v0, $zero, 0x3
/* 8F4D344 8007AE14 C0EB0108 */  j          .Llevel_46_8007AF00
/* 8F4D348 8007AE18 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_46_8007AE1C:
/* 8F4D34C 8007AE1C 0000238E */  lw         $v1, 0x0($s1)
/* 8F4D350 8007AE20 00000000 */  nop
/* 8F4D354 8007AE24 40100300 */  sll        $v0, $v1, 1
/* 8F4D358 8007AE28 21104300 */  addu       $v0, $v0, $v1
/* 8F4D35C 8007AE2C 80100200 */  sll        $v0, $v0, 2
/* 8F4D360 8007AE30 23104300 */  subu       $v0, $v0, $v1
/* 8F4D364 8007AE34 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8F4D368 8007AE38 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8F4D36C 8007AE3C C0100200 */  sll        $v0, $v0, 3
/* 8F4D370 8007AE40 21204300 */  addu       $a0, $v0, $v1
/* 8F4D374 8007AE44 50008390 */  lbu        $v1, 0x50($a0)
/* 8F4D378 8007AE48 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F4D37C 8007AE4C 15006214 */  bne        $v1, $v0, .Llevel_46_8007AEA4
/* 8F4D380 8007AE50 00000000 */   nop
/* 8F4D384 8007AE54 80EE000C */  jal        func_8003BA00
/* 8F4D388 8007AE58 00000000 */   nop
/* 8F4D38C 8007AE5C 0000238E */  lw         $v1, 0x0($s1)
/* 8F4D390 8007AE60 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 8F4D394 8007AE64 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 8F4D398 8007AE68 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 8F4D39C 8007AE6C B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 8F4D3A0 8007AE70 21186200 */  addu       $v1, $v1, $v0
/* 8F4D3A4 8007AE74 1F006530 */  andi       $a1, $v1, 0x1F
/* 8F4D3A8 8007AE78 43190300 */  sra        $v1, $v1, 5
/* 8F4D3AC 8007AE7C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 8F4D3B0 8007AE80 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 8F4D3B4 8007AE84 80180300 */  sll        $v1, $v1, 2
/* 8F4D3B8 8007AE88 40110200 */  sll        $v0, $v0, 5
/* 8F4D3BC 8007AE8C 21104400 */  addu       $v0, $v0, $a0
/* 8F4D3C0 8007AE90 21186200 */  addu       $v1, $v1, $v0
/* 8F4D3C4 8007AE94 0000628C */  lw         $v0, 0x0($v1)
/* 8F4D3C8 8007AE98 0428B000 */  sllv       $a1, $s0, $a1
/* 8F4D3CC 8007AE9C 25104500 */  or         $v0, $v0, $a1
/* 8F4D3D0 8007AEA0 000062AC */  sw         $v0, 0x0($v1)
.Llevel_46_8007AEA4:
/* 8F4D3D4 8007AEA4 21204002 */  addu       $a0, $s2, $zero
/* 8F4D3D8 8007AEA8 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4D3DC 8007AEAC 0C004626 */  addiu      $a2, $s2, 0xC
/* 8F4D3E0 8007AEB0 9ADA000C */  jal        func_80036A68
/* 8F4D3E4 8007AEB4 04002726 */   addiu     $a3, $s1, 0x4
/* 8F4D3E8 8007AEB8 11004010 */  beqz       $v0, .Llevel_46_8007AF00
/* 8F4D3EC 8007AEBC 21284002 */   addu      $a1, $s2, $zero
/* 8F4D3F0 8007AEC0 0780023C */  lui        $v0, %hi(D_8006C654)
/* 8F4D3F4 8007AEC4 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 8F4D3F8 8007AEC8 00000000 */  nop
/* 8F4D3FC 8007AECC 1A004490 */  lbu        $a0, 0x1A($v0)
/* 8F4D400 8007AED0 D4EE000C */  jal        PlaySound
/* 8F4D404 8007AED4 21300000 */   addu      $a2, $zero, $zero
/* 8F4D408 8007AED8 06004004 */  bltz       $v0, .Llevel_46_8007AEF4
/* 8F4D40C 8007AEDC 21204000 */   addu      $a0, $v0, $zero
/* 8F4D410 8007AEE0 49004592 */  lbu        $a1, 0x49($s2)
/* 8F4D414 8007AEE4 00000000 */  nop
/* 8F4D418 8007AEE8 002A0500 */  sll        $a1, $a1, 8
/* 8F4D41C 8007AEEC 2CF0000C */  jal        func_8003C0B0
/* 8F4D420 8007AEF0 0010A524 */   addiu     $a1, $a1, 0x1000
.Llevel_46_8007AEF4:
/* 8F4D424 8007AEF4 21204002 */  addu       $a0, $s2, $zero
.Llevel_46_8007AEF8:
/* 8F4D428 8007AEF8 C656010C */  jal        func_80055B18
/* 8F4D42C 8007AEFC 00000000 */   nop
.Llevel_46_8007AF00:
/* 8F4D430 8007AF00 2000BF8F */  lw         $ra, 0x20($sp)
/* 8F4D434 8007AF04 1C00B38F */  lw         $s3, 0x1C($sp)
/* 8F4D438 8007AF08 1800B28F */  lw         $s2, 0x18($sp)
/* 8F4D43C 8007AF0C 1400B18F */  lw         $s1, 0x14($sp)
/* 8F4D440 8007AF10 1000B08F */  lw         $s0, 0x10($sp)
/* 8F4D444 8007AF14 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8F4D448 8007AF18 0800E003 */  jr         $ra
/* 8F4D44C 8007AF1C 00000000 */   nop
.size func_level_46_8007ABF0, . - func_level_46_8007ABF0
