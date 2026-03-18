.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_22_8007AD10
/* 576AA40 8007AD10 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 576AA44 8007AD14 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 576AA48 8007AD18 21888000 */  addu       $s1, $a0, $zero
/* 576AA4C 8007AD1C 3000BFAF */  sw         $ra, 0x30($sp)
/* 576AA50 8007AD20 2800B0AF */  sw         $s0, 0x28($sp)
/* 576AA54 8007AD24 0000308E */  lw         $s0, 0x0($s1)
/* 576AA58 8007AD28 00000000 */  nop
/* 576AA5C 8007AD2C 0E000286 */  lh         $v0, 0xE($s0)
/* 576AA60 8007AD30 00000000 */  nop
/* 576AA64 8007AD34 B7004010 */  beqz       $v0, .Llevel_22_8007B014
/* 576AA68 8007AD38 21184000 */   addu      $v1, $v0, $zero
/* 576AA6C 8007AD3C 02004228 */  slti       $v0, $v0, 0x2
/* 576AA70 8007AD40 0B004014 */  bnez       $v0, .Llevel_22_8007AD70
/* 576AA74 8007AD44 00000000 */   nop
/* 576AA78 8007AD48 0780023C */  lui        $v0, %hi(D_8006C648)
/* 576AA7C 8007AD4C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 576AA80 8007AD50 00000000 */  nop
/* 576AA84 8007AD54 23106200 */  subu       $v0, $v1, $v0
/* 576AA88 8007AD58 0E0002A6 */  sh         $v0, 0xE($s0)
/* 576AA8C 8007AD5C 00140200 */  sll        $v0, $v0, 16
/* 576AA90 8007AD60 0400401C */  bgtz       $v0, .Llevel_22_8007AD74
/* 576AA94 8007AD64 0C000426 */   addiu     $a0, $s0, 0xC
/* 576AA98 8007AD68 01000224 */  addiu      $v0, $zero, 0x1
/* 576AA9C 8007AD6C 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_22_8007AD70:
/* 576AAA0 8007AD70 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_22_8007AD74:
/* 576AAA4 8007AD74 69D6000C */  jal        func_800359A4
/* 576AAA8 8007AD78 02000524 */   addiu     $a1, $zero, 0x2
/* 576AAAC 8007AD7C 0A004014 */  bnez       $v0, .Llevel_22_8007ADA8
/* 576AAB0 8007AD80 08000424 */   addiu     $a0, $zero, 0x8
/* 576AAB4 8007AD84 4D002292 */  lbu        $v0, 0x4D($s1)
/* 576AAB8 8007AD88 00000000 */  nop
/* 576AABC 8007AD8C 11004014 */  bnez       $v0, .Llevel_22_8007ADD4
/* 576AAC0 8007AD90 0C002426 */   addiu     $a0, $s1, 0xC
/* 576AAC4 8007AD94 0E000386 */  lh         $v1, 0xE($s0)
/* 576AAC8 8007AD98 01000224 */  addiu      $v0, $zero, 0x1
/* 576AACC 8007AD9C 0D006214 */  bne        $v1, $v0, .Llevel_22_8007ADD4
/* 576AAD0 8007ADA0 00000000 */   nop
/* 576AAD4 8007ADA4 08000424 */  addiu      $a0, $zero, 0x8
.Llevel_22_8007ADA8:
/* 576AAD8 8007ADA8 46000524 */  addiu      $a1, $zero, 0x46
/* 576AADC 8007ADAC 0C002626 */  addiu      $a2, $s1, 0xC
/* 576AAE0 8007ADB0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 576AAE4 8007ADB4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 576AAE8 8007ADB8 00000000 */  nop
/* 576AAEC 8007ADBC 09F84000 */  jalr       $v0
/* 576AAF0 8007ADC0 10000724 */   addiu     $a3, $zero, 0x10
/* 576AAF4 8007ADC4 C656010C */  jal        func_80055B18
/* 576AAF8 8007ADC8 21202002 */   addu      $a0, $s1, $zero
/* 576AAFC 8007ADCC 05EC0108 */  j          .Llevel_22_8007B014
/* 576AB00 8007ADD0 00000000 */   nop
.Llevel_22_8007ADD4:
/* 576AB04 8007ADD4 6564000C */  jal        func_80019194
/* 576AB08 8007ADD8 2C010524 */   addiu     $a1, $zero, 0x12C
/* 576AB0C 8007ADDC 17004010 */  beqz       $v0, .Llevel_22_8007AE3C
/* 576AB10 8007ADE0 1000A427 */   addiu     $a0, $sp, 0x10
/* 576AB14 8007ADE4 00000286 */  lh         $v0, 0x0($s0)
/* 576AB18 8007ADE8 00000000 */  nop
/* 576AB1C 8007ADEC 1000A2AF */  sw         $v0, 0x10($sp)
/* 576AB20 8007ADF0 02000286 */  lh         $v0, 0x2($s0)
/* 576AB24 8007ADF4 0780053C */  lui        $a1, %hi(D_80071918)
/* 576AB28 8007ADF8 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 576AB2C 8007ADFC 1400A2AF */  sw         $v0, 0x14($sp)
/* 576AB30 8007AE00 04000286 */  lh         $v0, 0x4($s0)
/* 576AB34 8007AE04 21308000 */  addu       $a2, $a0, $zero
/* 576AB38 8007AE08 DD3B010C */  jal        func_8004EF74
/* 576AB3C 8007AE0C 1800A2AF */   sw        $v0, 0x18($sp)
/* 576AB40 8007AE10 0A004010 */  beqz       $v0, .Llevel_22_8007AE3C
/* 576AB44 8007AE14 00000000 */   nop
/* 576AB48 8007AE18 1000A28F */  lw         $v0, 0x10($sp)
/* 576AB4C 8007AE1C 00000000 */  nop
/* 576AB50 8007AE20 000002A6 */  sh         $v0, 0x0($s0)
/* 576AB54 8007AE24 1400A28F */  lw         $v0, 0x14($sp)
/* 576AB58 8007AE28 00000000 */  nop
/* 576AB5C 8007AE2C 020002A6 */  sh         $v0, 0x2($s0)
/* 576AB60 8007AE30 1800A28F */  lw         $v0, 0x18($sp)
/* 576AB64 8007AE34 00000000 */  nop
/* 576AB68 8007AE38 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_22_8007AE3C:
/* 576AB6C 8007AE3C 00000386 */  lh         $v1, 0x0($s0)
/* 576AB70 8007AE40 0C00228E */  lw         $v0, 0xC($s1)
/* 576AB74 8007AE44 00000000 */  nop
/* 576AB78 8007AE48 21104300 */  addu       $v0, $v0, $v1
/* 576AB7C 8007AE4C 0C0022AE */  sw         $v0, 0xC($s1)
/* 576AB80 8007AE50 02000386 */  lh         $v1, 0x2($s0)
/* 576AB84 8007AE54 1000228E */  lw         $v0, 0x10($s1)
/* 576AB88 8007AE58 00000000 */  nop
/* 576AB8C 8007AE5C 21104300 */  addu       $v0, $v0, $v1
/* 576AB90 8007AE60 100022AE */  sw         $v0, 0x10($s1)
/* 576AB94 8007AE64 12000386 */  lh         $v1, 0x12($s0)
/* 576AB98 8007AE68 03000224 */  addiu      $v0, $zero, 0x3
/* 576AB9C 8007AE6C 04006214 */  bne        $v1, $v0, .Llevel_22_8007AE80
/* 576ABA0 8007AE70 00000000 */   nop
/* 576ABA4 8007AE74 04000296 */  lhu        $v0, 0x4($s0)
/* 576ABA8 8007AE78 A3EB0108 */  j          .Llevel_22_8007AE8C
/* 576ABAC 8007AE7C FBFF4224 */   addiu     $v0, $v0, -0x5
.Llevel_22_8007AE80:
/* 576ABB0 8007AE80 04000296 */  lhu        $v0, 0x4($s0)
/* 576ABB4 8007AE84 00000000 */  nop
/* 576ABB8 8007AE88 F6FF4224 */  addiu      $v0, $v0, -0xA
.Llevel_22_8007AE8C:
/* 576ABBC 8007AE8C 040002A6 */  sh         $v0, 0x4($s0)
/* 576ABC0 8007AE90 04000286 */  lh         $v0, 0x4($s0)
/* 576ABC4 8007AE94 00000000 */  nop
/* 576ABC8 8007AE98 38FF4228 */  slti       $v0, $v0, -0xC8
/* 576ABCC 8007AE9C 02004010 */  beqz       $v0, .Llevel_22_8007AEA8
/* 576ABD0 8007AEA0 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 576ABD4 8007AEA4 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_22_8007AEA8:
/* 576ABD8 8007AEA8 04000386 */  lh         $v1, 0x4($s0)
/* 576ABDC 8007AEAC 1400228E */  lw         $v0, 0x14($s1)
/* 576ABE0 8007AEB0 00000000 */  nop
/* 576ABE4 8007AEB4 21104300 */  addu       $v0, $v0, $v1
/* 576ABE8 8007AEB8 140022AE */  sw         $v0, 0x14($s1)
/* 576ABEC 8007AEBC 44002292 */  lbu        $v0, 0x44($s1)
/* 576ABF0 8007AEC0 06000392 */  lbu        $v1, 0x6($s0)
/* 576ABF4 8007AEC4 00000000 */  nop
/* 576ABF8 8007AEC8 21104300 */  addu       $v0, $v0, $v1
/* 576ABFC 8007AECC 440022A2 */  sb         $v0, 0x44($s1)
/* 576AC00 8007AED0 45002292 */  lbu        $v0, 0x45($s1)
/* 576AC04 8007AED4 08000392 */  lbu        $v1, 0x8($s0)
/* 576AC08 8007AED8 00000000 */  nop
/* 576AC0C 8007AEDC 21104300 */  addu       $v0, $v0, $v1
/* 576AC10 8007AEE0 450022A2 */  sb         $v0, 0x45($s1)
/* 576AC14 8007AEE4 46002292 */  lbu        $v0, 0x46($s1)
/* 576AC18 8007AEE8 0A000392 */  lbu        $v1, 0xA($s0)
/* 576AC1C 8007AEEC 00000000 */  nop
/* 576AC20 8007AEF0 21104300 */  addu       $v0, $v0, $v1
/* 576AC24 8007AEF4 460022A2 */  sb         $v0, 0x46($s1)
/* 576AC28 8007AEF8 12000386 */  lh         $v1, 0x12($s0)
/* 576AC2C 8007AEFC 02000224 */  addiu      $v0, $zero, 0x2
/* 576AC30 8007AF00 44006210 */  beq        $v1, $v0, .Llevel_22_8007B014
/* 576AC34 8007AF04 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 576AC38 8007AF08 0780043C */  lui        $a0, %hi(D_8006C640)
/* 576AC3C 8007AF0C 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 576AC40 8007AF10 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 576AC44 8007AF14 18008200 */  mult       $a0, $v0
/* 576AC48 8007AF18 C3170400 */  sra        $v0, $a0, 31
/* 576AC4C 8007AF1C 10480000 */  mfhi       $t1
/* 576AC50 8007AF20 43180900 */  sra        $v1, $t1, 1
/* 576AC54 8007AF24 23186200 */  subu       $v1, $v1, $v0
/* 576AC58 8007AF28 80100300 */  sll        $v0, $v1, 2
/* 576AC5C 8007AF2C 21104300 */  addu       $v0, $v0, $v1
/* 576AC60 8007AF30 38008214 */  bne        $a0, $v0, .Llevel_22_8007B014
/* 576AC64 8007AF34 00000000 */   nop
/* 576AC68 8007AF38 9171010C */  jal        rand
/* 576AC6C 8007AF3C 00000000 */   nop
/* 576AC70 8007AF40 03004230 */  andi       $v0, $v0, 0x3
/* 576AC74 8007AF44 9171010C */  jal        rand
/* 576AC78 8007AF48 1000A2AF */   sw        $v0, 0x10($sp)
/* 576AC7C 8007AF4C 03004230 */  andi       $v0, $v0, 0x3
/* 576AC80 8007AF50 1400A2AF */  sw         $v0, 0x14($sp)
/* 576AC84 8007AF54 14000224 */  addiu      $v0, $zero, 0x14
/* 576AC88 8007AF58 1800A2AF */  sw         $v0, 0x18($sp)
/* 576AC8C 8007AF5C 12000386 */  lh         $v1, 0x12($s0)
/* 576AC90 8007AF60 01000224 */  addiu      $v0, $zero, 0x1
/* 576AC94 8007AF64 03006214 */  bne        $v1, $v0, .Llevel_22_8007AF74
/* 576AC98 8007AF68 01000424 */   addiu     $a0, $zero, 0x1
/* 576AC9C 8007AF6C E1EB0108 */  j          .Llevel_22_8007AF84
/* 576ACA0 8007AF70 21280000 */   addu      $a1, $zero, $zero
.Llevel_22_8007AF74:
/* 576ACA4 8007AF74 0B006014 */  bnez       $v1, .Llevel_22_8007AFA4
/* 576ACA8 8007AF78 03000224 */   addiu     $v0, $zero, 0x3
/* 576ACAC 8007AF7C 01000424 */  addiu      $a0, $zero, 0x1
/* 576ACB0 8007AF80 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_22_8007AF84:
/* 576ACB4 8007AF84 0C002626 */  addiu      $a2, $s1, 0xC
/* 576ACB8 8007AF88 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 576ACBC 8007AF8C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 576ACC0 8007AF90 00000000 */  nop
/* 576ACC4 8007AF94 09F84000 */  jalr       $v0
/* 576ACC8 8007AF98 1000A727 */   addiu     $a3, $sp, 0x10
/* 576ACCC 8007AF9C 05EC0108 */  j          .Llevel_22_8007B014
/* 576ACD0 8007AFA0 00000000 */   nop
.Llevel_22_8007AFA4:
/* 576ACD4 8007AFA4 1B006214 */  bne        $v1, $v0, .Llevel_22_8007B014
/* 576ACD8 8007AFA8 0A000424 */   addiu     $a0, $zero, 0xA
/* 576ACDC 8007AFAC 00000296 */  lhu        $v0, 0x0($s0)
/* 576ACE0 8007AFB0 00000000 */  nop
/* 576ACE4 8007AFB4 00140200 */  sll        $v0, $v0, 16
/* 576ACE8 8007AFB8 83140200 */  sra        $v0, $v0, 18
/* 576ACEC 8007AFBC 1000A2AF */  sw         $v0, 0x10($sp)
/* 576ACF0 8007AFC0 00000296 */  lhu        $v0, 0x0($s0)
/* 576ACF4 8007AFC4 00000000 */  nop
/* 576ACF8 8007AFC8 00140200 */  sll        $v0, $v0, 16
/* 576ACFC 8007AFCC 83140200 */  sra        $v0, $v0, 18
/* 576AD00 8007AFD0 1400A2AF */  sw         $v0, 0x14($sp)
/* 576AD04 8007AFD4 04000296 */  lhu        $v0, 0x4($s0)
/* 576AD08 8007AFD8 14000524 */  addiu      $a1, $zero, 0x14
/* 576AD0C 8007AFDC 00140200 */  sll        $v0, $v0, 16
/* 576AD10 8007AFE0 83140200 */  sra        $v0, $v0, 18
/* 576AD14 8007AFE4 DBD8000C */  jal        func_8003636C
/* 576AD18 8007AFE8 1800A2AF */   sw        $v0, 0x18($sp)
/* 576AD1C 8007AFEC 01000424 */  addiu      $a0, $zero, 0x1
/* 576AD20 8007AFF0 27000524 */  addiu      $a1, $zero, 0x27
/* 576AD24 8007AFF4 0C002626 */  addiu      $a2, $s1, 0xC
/* 576AD28 8007AFF8 1000A727 */  addiu      $a3, $sp, 0x10
/* 576AD2C 8007AFFC 1800A38F */  lw         $v1, 0x18($sp)
/* 576AD30 8007B000 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 576AD34 8007B004 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 576AD38 8007B008 21186200 */  addu       $v1, $v1, $v0
/* 576AD3C 8007B00C 09F80001 */  jalr       $t0
/* 576AD40 8007B010 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_22_8007B014:
/* 576AD44 8007B014 3000BF8F */  lw         $ra, 0x30($sp)
/* 576AD48 8007B018 2C00B18F */  lw         $s1, 0x2C($sp)
/* 576AD4C 8007B01C 2800B08F */  lw         $s0, 0x28($sp)
/* 576AD50 8007B020 3800BD27 */  addiu      $sp, $sp, 0x38
/* 576AD54 8007B024 0800E003 */  jr         $ra
/* 576AD58 8007B028 00000000 */   nop
.size func_level_22_8007AD10, . - func_level_22_8007AD10
