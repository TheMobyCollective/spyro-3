.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_383_level_35
/* 76FD9D4 8007ACA4 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 76FD9D8 8007ACA8 3800B2AF */  sw         $s2, 0x38($sp)
/* 76FD9DC 8007ACAC 21908000 */  addu       $s2, $a0, $zero
/* 76FD9E0 8007ACB0 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 76FD9E4 8007ACB4 3400B1AF */  sw         $s1, 0x34($sp)
/* 76FD9E8 8007ACB8 3000B0AF */  sw         $s0, 0x30($sp)
/* 76FD9EC 8007ACBC 48004392 */  lbu        $v1, 0x48($s2)
/* 76FD9F0 8007ACC0 0000448E */  lw         $a0, 0x0($s2)
/* 76FD9F4 8007ACC4 6A006004 */  bltz       $v1, .Llevel_35_8007AE70
/* 76FD9F8 8007ACC8 02006228 */   slti      $v0, $v1, 0x2
/* 76FD9FC 8007ACCC 05004014 */  bnez       $v0, .Llevel_35_8007ACE4
/* 76FDA00 8007ACD0 02000224 */   addiu     $v0, $zero, 0x2
/* 76FDA04 8007ACD4 0B006210 */  beq        $v1, $v0, .Llevel_35_8007AD04
/* 76FDA08 8007ACD8 00000000 */   nop
/* 76FDA0C 8007ACDC 9CEB0108 */  j          .Llevel_35_8007AE70
/* 76FDA10 8007ACE0 00000000 */   nop
.Llevel_35_8007ACE4:
/* 76FDA14 8007ACE4 0000828C */  lw         $v0, 0x0($a0)
/* 76FDA18 8007ACE8 00000000 */  nop
/* 76FDA1C 8007ACEC 4C004290 */  lbu        $v0, 0x4C($v0)
/* 76FDA20 8007ACF0 00000000 */  nop
/* 76FDA24 8007ACF4 5E004014 */  bnez       $v0, .Llevel_35_8007AE70
/* 76FDA28 8007ACF8 4C0042A2 */   sb        $v0, 0x4C($s2)
/* 76FDA2C 8007ACFC 9CEB0108 */  j          .Llevel_35_8007AE70
/* 76FDA30 8007AD00 4D0040A2 */   sb        $zero, 0x4D($s2)
.Llevel_35_8007AD04:
/* 76FDA34 8007AD04 49004492 */  lbu        $a0, 0x49($s2)
/* 76FDA38 8007AD08 00000000 */  nop
/* 76FDA3C 8007AD0C 05008010 */  beqz       $a0, .Llevel_35_8007AD24
/* 76FDA40 8007AD10 01000224 */   addiu     $v0, $zero, 0x1
/* 76FDA44 8007AD14 48008210 */  beq        $a0, $v0, .Llevel_35_8007AE38
/* 76FDA48 8007AD18 03000224 */   addiu     $v0, $zero, 0x3
/* 76FDA4C 8007AD1C 9CEB0108 */  j          .Llevel_35_8007AE70
/* 76FDA50 8007AD20 00000000 */   nop
.Llevel_35_8007AD24:
/* 76FDA54 8007AD24 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 76FDA58 8007AD28 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 76FDA5C 8007AD2C 00000000 */  nop
/* 76FDA60 8007AD30 05004310 */  beq        $v0, $v1, .Llevel_35_8007AD48
/* 76FDA64 8007AD34 7F010424 */   addiu     $a0, $zero, 0x17F
/* 76FDA68 8007AD38 C656010C */  jal        func_80055B18
/* 76FDA6C 8007AD3C 21204002 */   addu      $a0, $s2, $zero
/* 76FDA70 8007AD40 9CEB0108 */  j          .Llevel_35_8007AE70
/* 76FDA74 8007AD44 00000000 */   nop
.Llevel_35_8007AD48:
/* 76FDA78 8007AD48 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 76FDA7C 8007AD4C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 76FDA80 8007AD50 00000000 */  nop
/* 76FDA84 8007AD54 09F84000 */  jalr       $v0
/* 76FDA88 8007AD58 21284002 */   addu      $a1, $s2, $zero
/* 76FDA8C 8007AD5C 21884000 */  addu       $s1, $v0, $zero
/* 76FDA90 8007AD60 15002012 */  beqz       $s1, .Llevel_35_8007ADB8
/* 76FDA94 8007AD64 21202002 */   addu      $a0, $s1, $zero
/* 76FDA98 8007AD68 E0D3000C */  jal        func_80034F80
/* 76FDA9C 8007AD6C 21280000 */   addu      $a1, $zero, $zero
/* 76FDAA0 8007AD70 480020A2 */  sb         $zero, 0x48($s1)
/* 76FDAA4 8007AD74 21202002 */  addu       $a0, $s1, $zero
/* 76FDAA8 8007AD78 21280000 */  addu       $a1, $zero, $zero
/* 76FDAAC 8007AD7C C557010C */  jal        func_80055F14
/* 76FDAB0 8007AD80 1000A627 */   addiu     $a2, $sp, 0x10
/* 76FDAB4 8007AD84 21204002 */  addu       $a0, $s2, $zero
/* 76FDAB8 8007AD88 21280000 */  addu       $a1, $zero, $zero
/* 76FDABC 8007AD8C 2000B027 */  addiu      $s0, $sp, 0x20
/* 76FDAC0 8007AD90 C557010C */  jal        func_80055F14
/* 76FDAC4 8007AD94 21300002 */   addu      $a2, $s0, $zero
/* 76FDAC8 8007AD98 1000A427 */  addiu      $a0, $sp, 0x10
/* 76FDACC 8007AD9C 21280002 */  addu       $a1, $s0, $zero
/* 76FDAD0 8007ADA0 723C010C */  jal        func_8004F1C8
/* 76FDAD4 8007ADA4 21308000 */   addu      $a2, $a0, $zero
/* 76FDAD8 8007ADA8 0C002426 */  addiu      $a0, $s1, 0xC
/* 76FDADC 8007ADAC 21288000 */  addu       $a1, $a0, $zero
/* 76FDAE0 8007ADB0 653C010C */  jal        func_8004F194
/* 76FDAE4 8007ADB4 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_35_8007ADB8:
/* 76FDAE8 8007ADB8 7F010424 */  addiu      $a0, $zero, 0x17F
/* 76FDAEC 8007ADBC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 76FDAF0 8007ADC0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 76FDAF4 8007ADC4 00000000 */  nop
/* 76FDAF8 8007ADC8 09F84000 */  jalr       $v0
/* 76FDAFC 8007ADCC 21284002 */   addu      $a1, $s2, $zero
/* 76FDB00 8007ADD0 21884000 */  addu       $s1, $v0, $zero
/* 76FDB04 8007ADD4 16002012 */  beqz       $s1, .Llevel_35_8007AE30
/* 76FDB08 8007ADD8 21202002 */   addu      $a0, $s1, $zero
/* 76FDB0C 8007ADDC E0D3000C */  jal        func_80034F80
/* 76FDB10 8007ADE0 01000524 */   addiu     $a1, $zero, 0x1
/* 76FDB14 8007ADE4 01000224 */  addiu      $v0, $zero, 0x1
/* 76FDB18 8007ADE8 480022A2 */  sb         $v0, 0x48($s1)
/* 76FDB1C 8007ADEC 21202002 */  addu       $a0, $s1, $zero
/* 76FDB20 8007ADF0 01000524 */  addiu      $a1, $zero, 0x1
/* 76FDB24 8007ADF4 C557010C */  jal        func_80055F14
/* 76FDB28 8007ADF8 1000A627 */   addiu     $a2, $sp, 0x10
/* 76FDB2C 8007ADFC 21204002 */  addu       $a0, $s2, $zero
/* 76FDB30 8007AE00 01000524 */  addiu      $a1, $zero, 0x1
/* 76FDB34 8007AE04 2000B027 */  addiu      $s0, $sp, 0x20
/* 76FDB38 8007AE08 C557010C */  jal        func_80055F14
/* 76FDB3C 8007AE0C 21300002 */   addu      $a2, $s0, $zero
/* 76FDB40 8007AE10 1000A427 */  addiu      $a0, $sp, 0x10
/* 76FDB44 8007AE14 21280002 */  addu       $a1, $s0, $zero
/* 76FDB48 8007AE18 723C010C */  jal        func_8004F1C8
/* 76FDB4C 8007AE1C 21308000 */   addu      $a2, $a0, $zero
/* 76FDB50 8007AE20 0C002426 */  addiu      $a0, $s1, 0xC
/* 76FDB54 8007AE24 21288000 */  addu       $a1, $a0, $zero
/* 76FDB58 8007AE28 653C010C */  jal        func_8004F194
/* 76FDB5C 8007AE2C 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_35_8007AE30:
/* 76FDB60 8007AE30 9BEB0108 */  j          .Llevel_35_8007AE6C
/* 76FDB64 8007AE34 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_35_8007AE38:
/* 76FDB68 8007AE38 0780033C */  lui        $v1, %hi(D_8006FA78)
/* 76FDB6C 8007AE3C 78FA638C */  lw         $v1, %lo(D_8006FA78)($v1)
/* 76FDB70 8007AE40 00000000 */  nop
/* 76FDB74 8007AE44 0A006214 */  bne        $v1, $v0, .Llevel_35_8007AE70
/* 76FDB78 8007AE48 00000000 */   nop
/* 76FDB7C 8007AE4C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 76FDB80 8007AE50 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 76FDB84 8007AE54 00000000 */  nop
/* 76FDB88 8007AE58 0B004228 */  slti       $v0, $v0, 0xB
/* 76FDB8C 8007AE5C 04004014 */  bnez       $v0, .Llevel_35_8007AE70
/* 76FDB90 8007AE60 3F000224 */   addiu     $v0, $zero, 0x3F
/* 76FDB94 8007AE64 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 76FDB98 8007AE68 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_35_8007AE6C:
/* 76FDB9C 8007AE6C 490042A2 */  sb         $v0, 0x49($s2)
.Llevel_35_8007AE70:
/* 76FDBA0 8007AE70 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 76FDBA4 8007AE74 3800B28F */  lw         $s2, 0x38($sp)
/* 76FDBA8 8007AE78 3400B18F */  lw         $s1, 0x34($sp)
/* 76FDBAC 8007AE7C 3000B08F */  lw         $s0, 0x30($sp)
/* 76FDBB0 8007AE80 4000BD27 */  addiu      $sp, $sp, 0x40
/* 76FDBB4 8007AE84 0800E003 */  jr         $ra
/* 76FDBB8 8007AE88 00000000 */   nop
.size MobyUpdate_383_level_35, . - MobyUpdate_383_level_35
