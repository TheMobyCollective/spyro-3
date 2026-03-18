.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007AD88
/* 74D6AB8 8007AD88 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 74D6ABC 8007AD8C 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 74D6AC0 8007AD90 21888000 */  addu       $s1, $a0, $zero
/* 74D6AC4 8007AD94 4800BFAF */  sw         $ra, 0x48($sp)
/* 74D6AC8 8007AD98 4400B3AF */  sw         $s3, 0x44($sp)
/* 74D6ACC 8007AD9C 4000B2AF */  sw         $s2, 0x40($sp)
/* 74D6AD0 8007ADA0 3800B0AF */  sw         $s0, 0x38($sp)
/* 74D6AD4 8007ADA4 0000328E */  lw         $s2, 0x0($s1)
/* 74D6AD8 8007ADA8 00000000 */  nop
/* 74D6ADC 8007ADAC 0C00428E */  lw         $v0, 0xC($s2)
/* 74D6AE0 8007ADB0 00000000 */  nop
/* 74D6AE4 8007ADB4 E1004018 */  blez       $v0, .Llevel_34_8007B13C
/* 74D6AE8 8007ADB8 00000000 */   nop
/* 74D6AEC 8007ADBC 4D002292 */  lbu        $v0, 0x4D($s1)
/* 74D6AF0 8007ADC0 00000000 */  nop
/* 74D6AF4 8007ADC4 DD004010 */  beqz       $v0, .Llevel_34_8007B13C
/* 74D6AF8 8007ADC8 00000000 */   nop
/* 74D6AFC 8007ADCC 49002292 */  lbu        $v0, 0x49($s1)
/* 74D6B00 8007ADD0 00000000 */  nop
/* 74D6B04 8007ADD4 01004230 */  andi       $v0, $v0, 0x1
/* 74D6B08 8007ADD8 09004014 */  bnez       $v0, .Llevel_34_8007AE00
/* 74D6B0C 8007ADDC 00000000 */   nop
/* 74D6B10 8007ADE0 1400238E */  lw         $v1, 0x14($s1)
/* 74D6B14 8007ADE4 1000428E */  lw         $v0, 0x10($s2)
/* 74D6B18 8007ADE8 00000000 */  nop
/* 74D6B1C 8007ADEC 2A104300 */  slt        $v0, $v0, $v1
/* 74D6B20 8007ADF0 D2004010 */  beqz       $v0, .Llevel_34_8007B13C
/* 74D6B24 8007ADF4 00000000 */   nop
/* 74D6B28 8007ADF8 B5EB0108 */  j          .Llevel_34_8007AED4
/* 74D6B2C 8007ADFC 00000000 */   nop
.Llevel_34_8007AE00:
/* 74D6B30 8007AE00 0C002426 */  addiu      $a0, $s1, 0xC
/* 74D6B34 8007AE04 6564000C */  jal        func_80019194
/* 74D6B38 8007AE08 00010524 */   addiu     $a1, $zero, 0x100
/* 74D6B3C 8007AE0C 31004010 */  beqz       $v0, .Llevel_34_8007AED4
/* 74D6B40 8007AE10 00000000 */   nop
/* 74D6B44 8007AE14 0780133C */  lui        $s3, %hi(D_80071918)
/* 74D6B48 8007AE18 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 74D6B4C 8007AE1C 21206002 */  addu       $a0, $s3, $zero
/* 74D6B50 8007AE20 C13B010C */  jal        func_8004EF04
/* 74D6B54 8007AE24 00100524 */   addiu     $a1, $zero, 0x1000
/* 74D6B58 8007AE28 00004386 */  lh         $v1, 0x0($s2)
/* 74D6B5C 8007AE2C 0000628E */  lw         $v0, 0x0($s3)
/* 74D6B60 8007AE30 00000000 */  nop
/* 74D6B64 8007AE34 18006200 */  mult       $v1, $v0
/* 74D6B68 8007AE38 02004386 */  lh         $v1, 0x2($s2)
/* 74D6B6C 8007AE3C 12280000 */  mflo       $a1
/* 74D6B70 8007AE40 0780023C */  lui        $v0, %hi(D_8007191C)
/* 74D6B74 8007AE44 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 74D6B78 8007AE48 00000000 */  nop
/* 74D6B7C 8007AE4C 18006200 */  mult       $v1, $v0
/* 74D6B80 8007AE50 04004386 */  lh         $v1, 0x4($s2)
/* 74D6B84 8007AE54 12200000 */  mflo       $a0
/* 74D6B88 8007AE58 0780023C */  lui        $v0, %hi(D_80071920)
/* 74D6B8C 8007AE5C 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 74D6B90 8007AE60 00000000 */  nop
/* 74D6B94 8007AE64 18006200 */  mult       $v1, $v0
/* 74D6B98 8007AE68 2110A400 */  addu       $v0, $a1, $a0
/* 74D6B9C 8007AE6C 12180000 */  mflo       $v1
/* 74D6BA0 8007AE70 21104300 */  addu       $v0, $v0, $v1
/* 74D6BA4 8007AE74 C3820200 */  sra        $s0, $v0, 11
/* 74D6BA8 8007AE78 16000106 */  bgez       $s0, .Llevel_34_8007AED4
/* 74D6BAC 8007AE7C 21206002 */   addu      $a0, $s3, $zero
/* 74D6BB0 8007AE80 00100524 */  addiu      $a1, $zero, 0x1000
/* 74D6BB4 8007AE84 43330200 */  sra        $a2, $v0, 13
/* 74D6BB8 8007AE88 233C010C */  jal        func_8004F08C
/* 74D6BBC 8007AE8C 2330D000 */   subu      $a2, $a2, $s0
/* 74D6BC0 8007AE90 0000638E */  lw         $v1, 0x0($s3)
/* 74D6BC4 8007AE94 00004296 */  lhu        $v0, 0x0($s2)
/* 74D6BC8 8007AE98 00000000 */  nop
/* 74D6BCC 8007AE9C 21104300 */  addu       $v0, $v0, $v1
/* 74D6BD0 8007AEA0 000042A6 */  sh         $v0, 0x0($s2)
/* 74D6BD4 8007AEA4 0780033C */  lui        $v1, %hi(D_8007191C)
/* 74D6BD8 8007AEA8 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 74D6BDC 8007AEAC 02004296 */  lhu        $v0, 0x2($s2)
/* 74D6BE0 8007AEB0 00000000 */  nop
/* 74D6BE4 8007AEB4 21104300 */  addu       $v0, $v0, $v1
/* 74D6BE8 8007AEB8 020042A6 */  sh         $v0, 0x2($s2)
/* 74D6BEC 8007AEBC 0780033C */  lui        $v1, %hi(D_80071920)
/* 74D6BF0 8007AEC0 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 74D6BF4 8007AEC4 04004296 */  lhu        $v0, 0x4($s2)
/* 74D6BF8 8007AEC8 00000000 */  nop
/* 74D6BFC 8007AECC 21104300 */  addu       $v0, $v0, $v1
/* 74D6C00 8007AED0 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_34_8007AED4:
/* 74D6C04 8007AED4 00004386 */  lh         $v1, 0x0($s2)
/* 74D6C08 8007AED8 0C00228E */  lw         $v0, 0xC($s1)
/* 74D6C0C 8007AEDC 00000000 */  nop
/* 74D6C10 8007AEE0 21104300 */  addu       $v0, $v0, $v1
/* 74D6C14 8007AEE4 0C0022AE */  sw         $v0, 0xC($s1)
/* 74D6C18 8007AEE8 02004486 */  lh         $a0, 0x2($s2)
/* 74D6C1C 8007AEEC 1000228E */  lw         $v0, 0x10($s1)
/* 74D6C20 8007AEF0 49002392 */  lbu        $v1, 0x49($s1)
/* 74D6C24 8007AEF4 21104400 */  addu       $v0, $v0, $a0
/* 74D6C28 8007AEF8 08006330 */  andi       $v1, $v1, 0x8
/* 74D6C2C 8007AEFC 04006010 */  beqz       $v1, .Llevel_34_8007AF10
/* 74D6C30 8007AF00 100022AE */   sw        $v0, 0x10($s1)
/* 74D6C34 8007AF04 04004296 */  lhu        $v0, 0x4($s2)
/* 74D6C38 8007AF08 CEEB0108 */  j          .Llevel_34_8007AF38
/* 74D6C3C 8007AF0C FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_34_8007AF10:
/* 74D6C40 8007AF10 36002386 */  lh         $v1, 0x36($s1)
/* 74D6C44 8007AF14 2F010224 */  addiu      $v0, $zero, 0x12F
/* 74D6C48 8007AF18 04006214 */  bne        $v1, $v0, .Llevel_34_8007AF2C
/* 74D6C4C 8007AF1C 00000000 */   nop
/* 74D6C50 8007AF20 04004296 */  lhu        $v0, 0x4($s2)
/* 74D6C54 8007AF24 CEEB0108 */  j          .Llevel_34_8007AF38
/* 74D6C58 8007AF28 F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_34_8007AF2C:
/* 74D6C5C 8007AF2C 04004296 */  lhu        $v0, 0x4($s2)
/* 74D6C60 8007AF30 00000000 */  nop
/* 74D6C64 8007AF34 FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_34_8007AF38:
/* 74D6C68 8007AF38 040042A6 */  sh         $v0, 0x4($s2)
/* 74D6C6C 8007AF3C 04004286 */  lh         $v0, 0x4($s2)
/* 74D6C70 8007AF40 00000000 */  nop
/* 74D6C74 8007AF44 80FF4228 */  slti       $v0, $v0, -0x80
/* 74D6C78 8007AF48 02004010 */  beqz       $v0, .Llevel_34_8007AF54
/* 74D6C7C 8007AF4C 80FF0224 */   addiu     $v0, $zero, -0x80
/* 74D6C80 8007AF50 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_34_8007AF54:
/* 74D6C84 8007AF54 04004386 */  lh         $v1, 0x4($s2)
/* 74D6C88 8007AF58 1400228E */  lw         $v0, 0x14($s1)
/* 74D6C8C 8007AF5C 00000000 */  nop
/* 74D6C90 8007AF60 21104300 */  addu       $v0, $v0, $v1
/* 74D6C94 8007AF64 140022AE */  sw         $v0, 0x14($s1)
/* 74D6C98 8007AF68 44002292 */  lbu        $v0, 0x44($s1)
/* 74D6C9C 8007AF6C 06004392 */  lbu        $v1, 0x6($s2)
/* 74D6CA0 8007AF70 00000000 */  nop
/* 74D6CA4 8007AF74 21104300 */  addu       $v0, $v0, $v1
/* 74D6CA8 8007AF78 440022A2 */  sb         $v0, 0x44($s1)
/* 74D6CAC 8007AF7C 45002292 */  lbu        $v0, 0x45($s1)
/* 74D6CB0 8007AF80 08004392 */  lbu        $v1, 0x8($s2)
/* 74D6CB4 8007AF84 00000000 */  nop
/* 74D6CB8 8007AF88 21104300 */  addu       $v0, $v0, $v1
/* 74D6CBC 8007AF8C 450022A2 */  sb         $v0, 0x45($s1)
/* 74D6CC0 8007AF90 46002292 */  lbu        $v0, 0x46($s1)
/* 74D6CC4 8007AF94 0A004492 */  lbu        $a0, 0xA($s2)
/* 74D6CC8 8007AF98 49002392 */  lbu        $v1, 0x49($s1)
/* 74D6CCC 8007AF9C 21104400 */  addu       $v0, $v0, $a0
/* 74D6CD0 8007AFA0 02006330 */  andi       $v1, $v1, 0x2
/* 74D6CD4 8007AFA4 18006010 */  beqz       $v1, .Llevel_34_8007B008
/* 74D6CD8 8007AFA8 460022A2 */   sb        $v0, 0x46($s1)
/* 74D6CDC 8007AFAC 0C00428E */  lw         $v0, 0xC($s2)
/* 74D6CE0 8007AFB0 00000000 */  nop
/* 74D6CE4 8007AFB4 03004230 */  andi       $v0, $v0, 0x3
/* 74D6CE8 8007AFB8 13004014 */  bnez       $v0, .Llevel_34_8007B008
/* 74D6CEC 8007AFBC 00000000 */   nop
/* 74D6CF0 8007AFC0 9171010C */  jal        rand
/* 74D6CF4 8007AFC4 00000000 */   nop
/* 74D6CF8 8007AFC8 03004230 */  andi       $v0, $v0, 0x3
/* 74D6CFC 8007AFCC 9171010C */  jal        rand
/* 74D6D00 8007AFD0 1000A2AF */   sw        $v0, 0x10($sp)
/* 74D6D04 8007AFD4 01000424 */  addiu      $a0, $zero, 0x1
/* 74D6D08 8007AFD8 01000524 */  addiu      $a1, $zero, 0x1
/* 74D6D0C 8007AFDC 0C002626 */  addiu      $a2, $s1, 0xC
/* 74D6D10 8007AFE0 1000A727 */  addiu      $a3, $sp, 0x10
/* 74D6D14 8007AFE4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 74D6D18 8007AFE8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 74D6D1C 8007AFEC 03004230 */  andi       $v0, $v0, 0x3
/* 74D6D20 8007AFF0 1400A2AF */  sw         $v0, 0x14($sp)
/* 74D6D24 8007AFF4 14000224 */  addiu      $v0, $zero, 0x14
/* 74D6D28 8007AFF8 09F86000 */  jalr       $v1
/* 74D6D2C 8007AFFC 1800A2AF */   sw        $v0, 0x18($sp)
/* 74D6D30 8007B000 4AEC0108 */  j          .Llevel_34_8007B128
/* 74D6D34 8007B004 00000000 */   nop
.Llevel_34_8007B008:
/* 74D6D38 8007B008 49002392 */  lbu        $v1, 0x49($s1)
/* 74D6D3C 8007B00C 00000000 */  nop
/* 74D6D40 8007B010 04006230 */  andi       $v0, $v1, 0x4
/* 74D6D44 8007B014 27004010 */  beqz       $v0, .Llevel_34_8007B0B4
/* 74D6D48 8007B018 01000224 */   addiu     $v0, $zero, 0x1
/* 74D6D4C 8007B01C 42004010 */  beqz       $v0, .Llevel_34_8007B128
/* 74D6D50 8007B020 21800000 */   addu      $s0, $zero, $zero
/* 74D6D54 8007B024 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_34_8007B028:
/* 74D6D58 8007B028 9171010C */  jal        rand
/* 74D6D5C 8007B02C 01001026 */   addiu     $s0, $s0, 0x1
/* 74D6D60 8007B030 7F004230 */  andi       $v0, $v0, 0x7F
/* 74D6D64 8007B034 23106202 */  subu       $v0, $s3, $v0
/* 74D6D68 8007B038 9171010C */  jal        rand
/* 74D6D6C 8007B03C 1000A2AF */   sw        $v0, 0x10($sp)
/* 74D6D70 8007B040 7F004230 */  andi       $v0, $v0, 0x7F
/* 74D6D74 8007B044 23106202 */  subu       $v0, $s3, $v0
/* 74D6D78 8007B048 9171010C */  jal        rand
/* 74D6D7C 8007B04C 1400A2AF */   sw        $v0, 0x14($sp)
/* 74D6D80 8007B050 1000A427 */  addiu      $a0, $sp, 0x10
/* 74D6D84 8007B054 21288000 */  addu       $a1, $a0, $zero
/* 74D6D88 8007B058 0C002626 */  addiu      $a2, $s1, 0xC
/* 74D6D8C 8007B05C 7F004230 */  andi       $v0, $v0, 0x7F
/* 74D6D90 8007B060 23106202 */  subu       $v0, $s3, $v0
/* 74D6D94 8007B064 653C010C */  jal        func_8004F194
/* 74D6D98 8007B068 1800A2AF */   sw        $v0, 0x18($sp)
/* 74D6D9C 8007B06C 01000424 */  addiu      $a0, $zero, 0x1
/* 74D6DA0 8007B070 42000524 */  addiu      $a1, $zero, 0x42
/* 74D6DA4 8007B074 1000A627 */  addiu      $a2, $sp, 0x10
/* 74D6DA8 8007B078 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D6DAC 8007B07C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D6DB0 8007B080 00000000 */  nop
/* 74D6DB4 8007B084 09F84000 */  jalr       $v0
/* 74D6DB8 8007B088 01000724 */   addiu     $a3, $zero, 0x1
/* 74D6DBC 8007B08C 49002292 */  lbu        $v0, 0x49($s1)
/* 74D6DC0 8007B090 00000000 */  nop
/* 74D6DC4 8007B094 01004230 */  andi       $v0, $v0, 0x1
/* 74D6DC8 8007B098 40100200 */  sll        $v0, $v0, 1
/* 74D6DCC 8007B09C 01004224 */  addiu      $v0, $v0, 0x1
/* 74D6DD0 8007B0A0 2A100202 */  slt        $v0, $s0, $v0
/* 74D6DD4 8007B0A4 20004010 */  beqz       $v0, .Llevel_34_8007B128
/* 74D6DD8 8007B0A8 00000000 */   nop
/* 74D6DDC 8007B0AC 0AEC0108 */  j          .Llevel_34_8007B028
/* 74D6DE0 8007B0B0 00000000 */   nop
.Llevel_34_8007B0B4:
/* 74D6DE4 8007B0B4 08006230 */  andi       $v0, $v1, 0x8
/* 74D6DE8 8007B0B8 1B004010 */  beqz       $v0, .Llevel_34_8007B128
/* 74D6DEC 8007B0BC 00000000 */   nop
/* 74D6DF0 8007B0C0 0C00428E */  lw         $v0, 0xC($s2)
/* 74D6DF4 8007B0C4 00000000 */  nop
/* 74D6DF8 8007B0C8 07004230 */  andi       $v0, $v0, 0x7
/* 74D6DFC 8007B0CC 16004014 */  bnez       $v0, .Llevel_34_8007B128
/* 74D6E00 8007B0D0 00000000 */   nop
/* 74D6E04 8007B0D4 9171010C */  jal        rand
/* 74D6E08 8007B0D8 08001024 */   addiu     $s0, $zero, 0x8
/* 74D6E0C 8007B0DC 0F004230 */  andi       $v0, $v0, 0xF
/* 74D6E10 8007B0E0 23100202 */  subu       $v0, $s0, $v0
/* 74D6E14 8007B0E4 9171010C */  jal        rand
/* 74D6E18 8007B0E8 1000A2AF */   sw        $v0, 0x10($sp)
/* 74D6E1C 8007B0EC 0F004230 */  andi       $v0, $v0, 0xF
/* 74D6E20 8007B0F0 23800202 */  subu       $s0, $s0, $v0
/* 74D6E24 8007B0F4 9171010C */  jal        rand
/* 74D6E28 8007B0F8 1400B0AF */   sw        $s0, 0x14($sp)
/* 74D6E2C 8007B0FC 01000424 */  addiu      $a0, $zero, 0x1
/* 74D6E30 8007B100 27000524 */  addiu      $a1, $zero, 0x27
/* 74D6E34 8007B104 0C002626 */  addiu      $a2, $s1, 0xC
/* 74D6E38 8007B108 1000A727 */  addiu      $a3, $sp, 0x10
/* 74D6E3C 8007B10C 07004230 */  andi       $v0, $v0, 0x7
/* 74D6E40 8007B110 04000324 */  addiu      $v1, $zero, 0x4
/* 74D6E44 8007B114 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 74D6E48 8007B118 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 74D6E4C 8007B11C 23186200 */  subu       $v1, $v1, $v0
/* 74D6E50 8007B120 09F80001 */  jalr       $t0
/* 74D6E54 8007B124 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_34_8007B128:
/* 74D6E58 8007B128 0C00428E */  lw         $v0, 0xC($s2)
/* 74D6E5C 8007B12C 00000000 */  nop
/* 74D6E60 8007B130 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 74D6E64 8007B134 66EC0108 */  j          .Llevel_34_8007B198
/* 74D6E68 8007B138 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_34_8007B13C:
/* 74D6E6C 8007B13C 49002392 */  lbu        $v1, 0x49($s1)
/* 74D6E70 8007B140 00000000 */  nop
/* 74D6E74 8007B144 01006230 */  andi       $v0, $v1, 0x1
/* 74D6E78 8007B148 11004010 */  beqz       $v0, .Llevel_34_8007B190
/* 74D6E7C 8007B14C 10006230 */   andi      $v0, $v1, 0x10
/* 74D6E80 8007B150 07004010 */  beqz       $v0, .Llevel_34_8007B170
/* 74D6E84 8007B154 0F000524 */   addiu     $a1, $zero, 0xF
/* 74D6E88 8007B158 08000424 */  addiu      $a0, $zero, 0x8
/* 74D6E8C 8007B15C 0C002626 */  addiu      $a2, $s1, 0xC
/* 74D6E90 8007B160 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D6E94 8007B164 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D6E98 8007B168 62EC0108 */  j          .Llevel_34_8007B188
/* 74D6E9C 8007B16C 21380000 */   addu      $a3, $zero, $zero
.Llevel_34_8007B170:
/* 74D6EA0 8007B170 08000424 */  addiu      $a0, $zero, 0x8
/* 74D6EA4 8007B174 46000524 */  addiu      $a1, $zero, 0x46
/* 74D6EA8 8007B178 0C002626 */  addiu      $a2, $s1, 0xC
/* 74D6EAC 8007B17C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D6EB0 8007B180 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D6EB4 8007B184 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_34_8007B188:
/* 74D6EB8 8007B188 09F84000 */  jalr       $v0
/* 74D6EBC 8007B18C 00000000 */   nop
.Llevel_34_8007B190:
/* 74D6EC0 8007B190 C656010C */  jal        func_80055B18
/* 74D6EC4 8007B194 21202002 */   addu      $a0, $s1, $zero
.Llevel_34_8007B198:
/* 74D6EC8 8007B198 4800BF8F */  lw         $ra, 0x48($sp)
/* 74D6ECC 8007B19C 4400B38F */  lw         $s3, 0x44($sp)
/* 74D6ED0 8007B1A0 4000B28F */  lw         $s2, 0x40($sp)
/* 74D6ED4 8007B1A4 3C00B18F */  lw         $s1, 0x3C($sp)
/* 74D6ED8 8007B1A8 3800B08F */  lw         $s0, 0x38($sp)
/* 74D6EDC 8007B1AC 5000BD27 */  addiu      $sp, $sp, 0x50
/* 74D6EE0 8007B1B0 0800E003 */  jr         $ra
/* 74D6EE4 8007B1B4 00000000 */   nop
.size func_level_34_8007AD88, . - func_level_34_8007AD88
