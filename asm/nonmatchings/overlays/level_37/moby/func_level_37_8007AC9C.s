.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007AC9C
/* 7AA69CC 8007AC9C 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 7AA69D0 8007ACA0 7400B3AF */  sw         $s3, 0x74($sp)
/* 7AA69D4 8007ACA4 21988000 */  addu       $s3, $a0, $zero
/* 7AA69D8 8007ACA8 7D000324 */  addiu      $v1, $zero, 0x7D
/* 7AA69DC 8007ACAC 8000BFAF */  sw         $ra, 0x80($sp)
/* 7AA69E0 8007ACB0 7C00B5AF */  sw         $s5, 0x7C($sp)
/* 7AA69E4 8007ACB4 7800B4AF */  sw         $s4, 0x78($sp)
/* 7AA69E8 8007ACB8 7000B2AF */  sw         $s2, 0x70($sp)
/* 7AA69EC 8007ACBC 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 7AA69F0 8007ACC0 6800B0AF */  sw         $s0, 0x68($sp)
/* 7AA69F4 8007ACC4 48006292 */  lbu        $v0, 0x48($s3)
/* 7AA69F8 8007ACC8 0000728E */  lw         $s2, 0x0($s3)
/* 7AA69FC 8007ACCC F5014310 */  beq        $v0, $v1, .Llevel_37_8007B4A4
/* 7AA6A00 8007ACD0 00000000 */   nop
/* 7AA6A04 8007ACD4 0C00428E */  lw         $v0, 0xC($s2)
/* 7AA6A08 8007ACD8 00000000 */  nop
/* 7AA6A0C 8007ACDC 03004014 */  bnez       $v0, .Llevel_37_8007ACEC
/* 7AA6A10 8007ACE0 00000000 */   nop
/* 7AA6A14 8007ACE4 7AE6000C */  jal        func_800399E8
/* 7AA6A18 8007ACE8 0C004526 */   addiu     $a1, $s2, 0xC
.Llevel_37_8007ACEC:
/* 7AA6A1C 8007ACEC 1800A427 */  addiu      $a0, $sp, 0x18
/* 7AA6A20 8007ACF0 0C006526 */  addiu      $a1, $s3, 0xC
/* 7AA6A24 8007ACF4 0780103C */  lui        $s0, %hi(D_80070328)
/* 7AA6A28 8007ACF8 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 7AA6A2C 8007ACFC 723C010C */  jal        func_8004F1C8
/* 7AA6A30 8007AD00 21300002 */   addu      $a2, $s0, $zero
/* 7AA6A34 8007AD04 1800A427 */  addiu      $a0, $sp, 0x18
/* 7AA6A38 8007AD08 7A3B010C */  jal        func_8004EDE8
/* 7AA6A3C 8007AD0C 21280000 */   addu      $a1, $zero, $zero
/* 7AA6A40 8007AD10 49006426 */  addiu      $a0, $s3, 0x49
/* 7AA6A44 8007AD14 01000524 */  addiu      $a1, $zero, 0x1
/* 7AA6A48 8007AD18 69D6000C */  jal        func_800359A4
/* 7AA6A4C 8007AD1C 21A84000 */   addu      $s5, $v0, $zero
/* 7AA6A50 8007AD20 48006392 */  lbu        $v1, 0x48($s3)
/* 7AA6A54 8007AD24 03000224 */  addiu      $v0, $zero, 0x3
/* 7AA6A58 8007AD28 60006210 */  beq        $v1, $v0, .Llevel_37_8007AEAC
/* 7AA6A5C 8007AD2C 04006228 */   slti      $v0, $v1, 0x4
/* 7AA6A60 8007AD30 05004010 */  beqz       $v0, .Llevel_37_8007AD48
/* 7AA6A64 8007AD34 00000000 */   nop
/* 7AA6A68 8007AD38 08006010 */  beqz       $v1, .Llevel_37_8007AD5C
/* 7AA6A6C 8007AD3C 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA6A70 8007AD40 DDEC0108 */  j          .Llevel_37_8007B374
/* 7AA6A74 8007AD44 00000000 */   nop
.Llevel_37_8007AD48:
/* 7AA6A78 8007AD48 0A000224 */  addiu      $v0, $zero, 0xA
/* 7AA6A7C 8007AD4C 2F006210 */  beq        $v1, $v0, .Llevel_37_8007AE0C
/* 7AA6A80 8007AD50 64000224 */   addiu     $v0, $zero, 0x64
/* 7AA6A84 8007AD54 DBEC0108 */  j          .Llevel_37_8007B36C
/* 7AA6A88 8007AD58 00000000 */   nop
.Llevel_37_8007AD5C:
/* 7AA6A8C 8007AD5C 0780023C */  lui        $v0, %hi(D_80070328 + 0x138)
/* 7AA6A90 8007AD60 6004428C */  lw         $v0, %lo(D_80070328 + 0x138)($v0)
/* 7AA6A94 8007AD64 49006392 */  lbu        $v1, 0x49($s3)
/* 7AA6A98 8007AD68 26105300 */  xor        $v0, $v0, $s3
/* 7AA6A9C 8007AD6C 15006014 */  bnez       $v1, .Llevel_37_8007ADC4
/* 7AA6AA0 8007AD70 0100502C */   sltiu     $s0, $v0, 0x1
/* 7AA6AA4 8007AD74 2003A22A */  slti       $v0, $s5, 0x320
/* 7AA6AA8 8007AD78 12004010 */  beqz       $v0, .Llevel_37_8007ADC4
/* 7AA6AAC 8007AD7C 00000000 */   nop
/* 7AA6AB0 8007AD80 38006386 */  lh         $v1, 0x38($s3)
/* 7AA6AB4 8007AD84 1400628E */  lw         $v0, 0x14($s3)
/* 7AA6AB8 8007AD88 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 7AA6ABC 8007AD8C 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 7AA6AC0 8007AD90 23184300 */  subu       $v1, $v0, $v1
/* 7AA6AC4 8007AD94 23106400 */  subu       $v0, $v1, $a0
/* 7AA6AC8 8007AD98 05004004 */  bltz       $v0, .Llevel_37_8007ADB0
/* 7AA6ACC 8007AD9C 58024228 */   slti      $v0, $v0, 0x258
/* 7AA6AD0 8007ADA0 08004010 */  beqz       $v0, .Llevel_37_8007ADC4
/* 7AA6AD4 8007ADA4 00000000 */   nop
/* 7AA6AD8 8007ADA8 71EB0108 */  j          .Llevel_37_8007ADC4
/* 7AA6ADC 8007ADAC 01001024 */   addiu     $s0, $zero, 0x1
.Llevel_37_8007ADB0:
/* 7AA6AE0 8007ADB0 23108300 */  subu       $v0, $a0, $v1
/* 7AA6AE4 8007ADB4 58024228 */  slti       $v0, $v0, 0x258
/* 7AA6AE8 8007ADB8 02004010 */  beqz       $v0, .Llevel_37_8007ADC4
/* 7AA6AEC 8007ADBC 00000000 */   nop
/* 7AA6AF0 8007ADC0 01001024 */  addiu      $s0, $zero, 0x1
.Llevel_37_8007ADC4:
/* 7AA6AF4 8007ADC4 1800638E */  lw         $v1, 0x18($s3)
/* 7AA6AF8 8007ADC8 1200023C */  lui        $v0, (0x120000 >> 16)
/* 7AA6AFC 8007ADCC 24106200 */  and        $v0, $v1, $v0
/* 7AA6B00 8007ADD0 02004010 */  beqz       $v0, .Llevel_37_8007ADDC
/* 7AA6B04 8007ADD4 0100023C */   lui       $v0, (0x10000 >> 16)
/* 7AA6B08 8007ADD8 01001024 */  addiu      $s0, $zero, 0x1
.Llevel_37_8007ADDC:
/* 7AA6B0C 8007ADDC 24106200 */  and        $v0, $v1, $v0
/* 7AA6B10 8007ADE0 06004010 */  beqz       $v0, .Llevel_37_8007ADFC
/* 7AA6B14 8007ADE4 21206002 */   addu      $a0, $s3, $zero
/* 7AA6B18 8007ADE8 21280000 */  addu       $a1, $zero, $zero
/* 7AA6B1C 8007ADEC AFEE000C */  jal        func_8003BABC
/* 7AA6B20 8007ADF0 21300000 */   addu      $a2, $zero, $zero
/* 7AA6B24 8007ADF4 0A000224 */  addiu      $v0, $zero, 0xA
/* 7AA6B28 8007ADF8 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_37_8007ADFC:
/* 7AA6B2C 8007ADFC 5B010012 */  beqz       $s0, .Llevel_37_8007B36C
/* 7AA6B30 8007AE00 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA6B34 8007AE04 DAEC0108 */  j          .Llevel_37_8007B368
/* 7AA6B38 8007AE08 00000000 */   nop
.Llevel_37_8007AE0C:
/* 7AA6B3C 8007AE0C 02004386 */  lh         $v1, 0x2($s2)
/* 7AA6B40 8007AE10 00000000 */  nop
/* 7AA6B44 8007AE14 03006014 */  bnez       $v1, .Llevel_37_8007AE24
/* 7AA6B48 8007AE18 000042A2 */   sb        $v0, 0x0($s2)
/* 7AA6B4C 8007AE1C F0000224 */  addiu      $v0, $zero, 0xF0
/* 7AA6B50 8007AE20 020042A6 */  sh         $v0, 0x2($s2)
.Llevel_37_8007AE24:
/* 7AA6B54 8007AE24 01004292 */  lbu        $v0, 0x1($s2)
/* 7AA6B58 8007AE28 00000000 */  nop
/* 7AA6B5C 8007AE2C 15004014 */  bnez       $v0, .Llevel_37_8007AE84
/* 7AA6B60 8007AE30 05000424 */   addiu     $a0, $zero, 0x5
/* 7AA6B64 8007AE34 51006292 */  lbu        $v0, 0x51($s3)
/* 7AA6B68 8007AE38 00000000 */  nop
/* 7AA6B6C 8007AE3C 0F004014 */  bnez       $v0, .Llevel_37_8007AE7C
/* 7AA6B70 8007AE40 21300000 */   addu      $a2, $zero, $zero
/* 7AA6B74 8007AE44 0C00638E */  lw         $v1, 0xC($s3)
/* 7AA6B78 8007AE48 0000048E */  lw         $a0, 0x0($s0)
/* 7AA6B7C 8007AE4C 1000628E */  lw         $v0, 0x10($s3)
/* 7AA6B80 8007AE50 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7AA6B84 8007AE54 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7AA6B88 8007AE58 23206400 */  subu       $a0, $v1, $a0
/* 7AA6B8C 8007AE5C 203A010C */  jal        func_8004E880
/* 7AA6B90 8007AE60 23284500 */   subu      $a1, $v0, $a1
/* 7AA6B94 8007AE64 21204000 */  addu       $a0, $v0, $zero
/* 7AA6B98 8007AE68 20000624 */  addiu      $a2, $zero, 0x20
/* 7AA6B9C 8007AE6C 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 7AA6BA0 8007AE70 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 7AA6BA4 8007AE74 3ED8000C */  jal        func_800360F8
/* 7AA6BA8 8007AE78 40000724 */   addiu     $a3, $zero, 0x40
.Llevel_37_8007AE7C:
/* 7AA6BAC 8007AE7C 010042A2 */  sb         $v0, 0x1($s2)
/* 7AA6BB0 8007AE80 05000424 */  addiu      $a0, $zero, 0x5
.Llevel_37_8007AE84:
/* 7AA6BB4 8007AE84 F7D8000C */  jal        func_800363DC
/* 7AA6BB8 8007AE88 0B000524 */   addiu     $a1, $zero, 0xB
/* 7AA6BBC 8007AE8C 04004386 */  lh         $v1, 0x4($s2)
/* 7AA6BC0 8007AE90 00110200 */  sll        $v0, $v0, 4
/* 7AA6BC4 8007AE94 03006014 */  bnez       $v1, .Llevel_37_8007AEA4
/* 7AA6BC8 8007AE98 060042A6 */   sh        $v0, 0x6($s2)
/* 7AA6BCC 8007AE9C 32000224 */  addiu      $v0, $zero, 0x32
/* 7AA6BD0 8007AEA0 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_37_8007AEA4:
/* 7AA6BD4 8007AEA4 03000224 */  addiu      $v0, $zero, 0x3
/* 7AA6BD8 8007AEA8 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_37_8007AEAC:
/* 7AA6BDC 8007AEAC 03001424 */  addiu      $s4, $zero, 0x3
/* 7AA6BE0 8007AEB0 1800628E */  lw         $v0, 0x18($s3)
/* 7AA6BE4 8007AEB4 0100033C */  lui        $v1, (0x10000 >> 16)
/* 7AA6BE8 8007AEB8 24104300 */  and        $v0, $v0, $v1
/* 7AA6BEC 8007AEBC 1B004010 */  beqz       $v0, .Llevel_37_8007AF2C
/* 7AA6BF0 8007AEC0 04001124 */   addiu     $s1, $zero, 0x4
/* 7AA6BF4 8007AEC4 02004286 */  lh         $v0, 0x2($s2)
/* 7AA6BF8 8007AEC8 00000000 */  nop
/* 7AA6BFC 8007AECC C8004228 */  slti       $v0, $v0, 0xC8
/* 7AA6C00 8007AED0 02004010 */  beqz       $v0, .Llevel_37_8007AEDC
/* 7AA6C04 8007AED4 C8000224 */   addiu     $v0, $zero, 0xC8
/* 7AA6C08 8007AED8 020042A6 */  sh         $v0, 0x2($s2)
.Llevel_37_8007AEDC:
/* 7AA6C0C 8007AEDC 51006292 */  lbu        $v0, 0x51($s3)
/* 7AA6C10 8007AEE0 00000000 */  nop
/* 7AA6C14 8007AEE4 10004014 */  bnez       $v0, .Llevel_37_8007AF28
/* 7AA6C18 8007AEE8 21300000 */   addu      $a2, $zero, $zero
/* 7AA6C1C 8007AEEC 0C00638E */  lw         $v1, 0xC($s3)
/* 7AA6C20 8007AEF0 0780043C */  lui        $a0, %hi(D_80070328)
/* 7AA6C24 8007AEF4 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 7AA6C28 8007AEF8 1000628E */  lw         $v0, 0x10($s3)
/* 7AA6C2C 8007AEFC 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7AA6C30 8007AF00 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7AA6C34 8007AF04 23206400 */  subu       $a0, $v1, $a0
/* 7AA6C38 8007AF08 203A010C */  jal        func_8004E880
/* 7AA6C3C 8007AF0C 23284500 */   subu      $a1, $v0, $a1
/* 7AA6C40 8007AF10 21204000 */  addu       $a0, $v0, $zero
/* 7AA6C44 8007AF14 20000624 */  addiu      $a2, $zero, 0x20
/* 7AA6C48 8007AF18 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 7AA6C4C 8007AF1C 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 7AA6C50 8007AF20 3ED8000C */  jal        func_800360F8
/* 7AA6C54 8007AF24 40000724 */   addiu     $a3, $zero, 0x40
.Llevel_37_8007AF28:
/* 7AA6C58 8007AF28 010042A2 */  sb         $v0, 0x1($s2)
.Llevel_37_8007AF2C:
/* 7AA6C5C 8007AF2C 1000458E */  lw         $a1, 0x10($s2)
/* 7AA6C60 8007AF30 F0EF000C */  jal        func_8003BFC0
/* 7AA6C64 8007AF34 21206002 */   addu      $a0, $s3, $zero
/* 7AA6C68 8007AF38 05004014 */  bnez       $v0, .Llevel_37_8007AF50
/* 7AA6C6C 8007AF3C 21206002 */   addu      $a0, $s3, $zero
/* 7AA6C70 8007AF40 01000524 */  addiu      $a1, $zero, 0x1
/* 7AA6C74 8007AF44 AFEE000C */  jal        func_8003BABC
/* 7AA6C78 8007AF48 04000624 */   addiu     $a2, $zero, 0x4
/* 7AA6C7C 8007AF4C 100042AE */  sw         $v0, 0x10($s2)
.Llevel_37_8007AF50:
/* 7AA6C80 8007AF50 49006292 */  lbu        $v0, 0x49($s3)
/* 7AA6C84 8007AF54 00000000 */  nop
/* 7AA6C88 8007AF58 16004014 */  bnez       $v0, .Llevel_37_8007AFB4
/* 7AA6C8C 8007AF5C 21206002 */   addu      $a0, $s3, $zero
/* 7AA6C90 8007AF60 2003A22A */  slti       $v0, $s5, 0x320
/* 7AA6C94 8007AF64 14004010 */  beqz       $v0, .Llevel_37_8007AFB8
/* 7AA6C98 8007AF68 04004526 */   addiu     $a1, $s2, 0x4
/* 7AA6C9C 8007AF6C 38006386 */  lh         $v1, 0x38($s3)
/* 7AA6CA0 8007AF70 1400628E */  lw         $v0, 0x14($s3)
/* 7AA6CA4 8007AF74 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 7AA6CA8 8007AF78 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 7AA6CAC 8007AF7C 23184300 */  subu       $v1, $v0, $v1
/* 7AA6CB0 8007AF80 23106400 */  subu       $v0, $v1, $a0
/* 7AA6CB4 8007AF84 05004004 */  bltz       $v0, .Llevel_37_8007AF9C
/* 7AA6CB8 8007AF88 58024228 */   slti      $v0, $v0, 0x258
/* 7AA6CBC 8007AF8C 07004014 */  bnez       $v0, .Llevel_37_8007AFAC
/* 7AA6CC0 8007AF90 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA6CC4 8007AF94 EEEB0108 */  j          .Llevel_37_8007AFB8
/* 7AA6CC8 8007AF98 21206002 */   addu      $a0, $s3, $zero
.Llevel_37_8007AF9C:
/* 7AA6CCC 8007AF9C 23108300 */  subu       $v0, $a0, $v1
/* 7AA6CD0 8007AFA0 58024228 */  slti       $v0, $v0, 0x258
/* 7AA6CD4 8007AFA4 02004010 */  beqz       $v0, .Llevel_37_8007AFB0
/* 7AA6CD8 8007AFA8 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_37_8007AFAC:
/* 7AA6CDC 8007AFAC 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_37_8007AFB0:
/* 7AA6CE0 8007AFB0 21206002 */  addu       $a0, $s3, $zero
.Llevel_37_8007AFB4:
/* 7AA6CE4 8007AFB4 04004526 */  addiu      $a1, $s2, 0x4
.Llevel_37_8007AFB8:
/* 7AA6CE8 8007AFB8 02000624 */  addiu      $a2, $zero, 0x2
/* 7AA6CEC 8007AFBC 0E000724 */  addiu      $a3, $zero, 0xE
/* 7AA6CF0 8007AFC0 0780103C */  lui        $s0, %hi(D_80071924)
/* 7AA6CF4 8007AFC4 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 7AA6CF8 8007AFC8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7AA6CFC 8007AFCC 000002AE */  sw         $v0, 0x0($s0)
/* 7AA6D00 8007AFD0 38FF0224 */  addiu      $v0, $zero, -0xC8
/* 7AA6D04 8007AFD4 98DE000C */  jal        func_80037A60
/* 7AA6D08 8007AFD8 1000A2AF */   sw        $v0, 0x10($sp)
/* 7AA6D0C 8007AFDC 0000048E */  lw         $a0, 0x0($s0)
/* 7AA6D10 8007AFE0 5502010C */  jal        func_80040954
/* 7AA6D14 8007AFE4 00000000 */   nop
/* 7AA6D18 8007AFE8 04000324 */  addiu      $v1, $zero, 0x4
/* 7AA6D1C 8007AFEC 08004310 */  beq        $v0, $v1, .Llevel_37_8007B010
/* 7AA6D20 8007AFF0 00000000 */   nop
/* 7AA6D24 8007AFF4 0C00438E */  lw         $v1, 0xC($s2)
/* 7AA6D28 8007AFF8 00000000 */  nop
/* 7AA6D2C 8007AFFC 02006010 */  beqz       $v1, .Llevel_37_8007B008
/* 7AA6D30 8007B000 F8000224 */   addiu     $v0, $zero, 0xF8
/* 7AA6D34 8007B004 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_37_8007B008:
/* 7AA6D38 8007B008 0E001424 */  addiu      $s4, $zero, 0xE
/* 7AA6D3C 8007B00C 18001124 */  addiu      $s1, $zero, 0x18
.Llevel_37_8007B010:
/* 7AA6D40 8007B010 06004486 */  lh         $a0, 0x6($s2)
/* 7AA6D44 8007B014 00000000 */  nop
/* 7AA6D48 8007B018 02008104 */  bgez       $a0, .Llevel_37_8007B024
/* 7AA6D4C 8007B01C 21108000 */   addu      $v0, $a0, $zero
/* 7AA6D50 8007B020 23100200 */  negu       $v0, $v0
.Llevel_37_8007B024:
/* 7AA6D54 8007B024 2A105100 */  slt        $v0, $v0, $s1
/* 7AA6D58 8007B028 03004010 */  beqz       $v0, .Llevel_37_8007B038
/* 7AA6D5C 8007B02C 21188000 */   addu      $v1, $a0, $zero
/* 7AA6D60 8007B030 12EC0108 */  j          .Llevel_37_8007B048
/* 7AA6D64 8007B034 060040A6 */   sh        $zero, 0x6($s2)
.Llevel_37_8007B038:
/* 7AA6D68 8007B038 02008104 */  bgez       $a0, .Llevel_37_8007B044
/* 7AA6D6C 8007B03C 23107100 */   subu      $v0, $v1, $s1
/* 7AA6D70 8007B040 21107100 */  addu       $v0, $v1, $s1
.Llevel_37_8007B044:
/* 7AA6D74 8007B044 060042A6 */  sh         $v0, 0x6($s2)
.Llevel_37_8007B048:
/* 7AA6D78 8007B048 21206002 */  addu       $a0, $s3, $zero
/* 7AA6D7C 8007B04C F4010724 */  addiu      $a3, $zero, 0x1F4
/* 7AA6D80 8007B050 06004396 */  lhu        $v1, 0x6($s2)
/* 7AA6D84 8007B054 46006292 */  lbu        $v0, 0x46($s3)
/* 7AA6D88 8007B058 001C0300 */  sll        $v1, $v1, 16
/* 7AA6D8C 8007B05C 031D0300 */  sra        $v1, $v1, 20
/* 7AA6D90 8007B060 21104300 */  addu       $v0, $v0, $v1
/* 7AA6D94 8007B064 460062A2 */  sb         $v0, 0x46($s3)
/* 7AA6D98 8007B068 01004592 */  lbu        $a1, 0x1($s2)
/* 7AA6D9C 8007B06C 02004686 */  lh         $a2, 0x2($s2)
/* 7AA6DA0 8007B070 C8000224 */  addiu      $v0, $zero, 0xC8
/* 7AA6DA4 8007B074 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA6DA8 8007B078 21000224 */  addiu      $v0, $zero, 0x21
/* 7AA6DAC 8007B07C B8D7000C */  jal        func_80035EE0
/* 7AA6DB0 8007B080 1400A2AF */   sw        $v0, 0x14($sp)
/* 7AA6DB4 8007B084 2800B127 */  addiu      $s1, $sp, 0x28
/* 7AA6DB8 8007B088 21202002 */  addu       $a0, $s1, $zero
/* 7AA6DBC 8007B08C 0C007026 */  addiu      $s0, $s3, 0xC
/* 7AA6DC0 8007B090 21280002 */  addu       $a1, $s0, $zero
/* 7AA6DC4 8007B094 5E3C010C */  jal        func_8004F178
/* 7AA6DC8 8007B098 21A84000 */   addu      $s5, $v0, $zero
/* 7AA6DCC 8007B09C 3000A28F */  lw         $v0, 0x30($sp)
/* 7AA6DD0 8007B0A0 00000000 */  nop
/* 7AA6DD4 8007B0A4 96004224 */  addiu      $v0, $v0, 0x96
/* 7AA6DD8 8007B0A8 3000A2AF */  sw         $v0, 0x30($sp)
/* 7AA6DDC 8007B0AC 01004292 */  lbu        $v0, 0x1($s2)
/* 7AA6DE0 8007B0B0 02004386 */  lh         $v1, 0x2($s2)
/* 7AA6DE4 8007B0B4 40100200 */  sll        $v0, $v0, 1
/* 7AA6DE8 8007B0B8 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA6DEC 8007B0BC 21082200 */  addu       $at, $at, $v0
/* 7AA6DF0 8007B0C0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7AA6DF4 8007B0C4 96006324 */  addiu      $v1, $v1, 0x96
/* 7AA6DF8 8007B0C8 18004300 */  mult       $v0, $v1
/* 7AA6DFC 8007B0CC 2800A28F */  lw         $v0, 0x28($sp)
/* 7AA6E00 8007B0D0 12480000 */  mflo       $t1
/* 7AA6E04 8007B0D4 031B0900 */  sra        $v1, $t1, 12
/* 7AA6E08 8007B0D8 21104300 */  addu       $v0, $v0, $v1
/* 7AA6E0C 8007B0DC 2800A2AF */  sw         $v0, 0x28($sp)
/* 7AA6E10 8007B0E0 01004292 */  lbu        $v0, 0x1($s2)
/* 7AA6E14 8007B0E4 02004386 */  lh         $v1, 0x2($s2)
/* 7AA6E18 8007B0E8 40100200 */  sll        $v0, $v0, 1
/* 7AA6E1C 8007B0EC 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA6E20 8007B0F0 21082200 */  addu       $at, $at, $v0
/* 7AA6E24 8007B0F4 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7AA6E28 8007B0F8 96006324 */  addiu      $v1, $v1, 0x96
/* 7AA6E2C 8007B0FC 18004300 */  mult       $v0, $v1
/* 7AA6E30 8007B100 21200002 */  addu       $a0, $s0, $zero
/* 7AA6E34 8007B104 21282002 */  addu       $a1, $s1, $zero
/* 7AA6E38 8007B108 21300000 */  addu       $a2, $zero, $zero
/* 7AA6E3C 8007B10C 21380000 */  addu       $a3, $zero, $zero
/* 7AA6E40 8007B110 2C00A28F */  lw         $v0, 0x2C($sp)
/* 7AA6E44 8007B114 12480000 */  mflo       $t1
/* 7AA6E48 8007B118 031B0900 */  sra        $v1, $t1, 12
/* 7AA6E4C 8007B11C 21104300 */  addu       $v0, $v0, $v1
/* 7AA6E50 8007B120 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 7AA6E54 8007B124 C360000C */  jal        func_8001830C
/* 7AA6E58 8007B128 1000B3AF */   sw        $s3, 0x10($sp)
/* 7AA6E5C 8007B12C 1F004010 */  beqz       $v0, .Llevel_37_8007B1AC
/* 7AA6E60 8007B130 2000A232 */   andi      $v0, $s5, 0x20
/* 7AA6E64 8007B134 0780043C */  lui        $a0, %hi(D_80071918)
/* 7AA6E68 8007B138 1819848C */  lw         $a0, %lo(D_80071918)($a0)
/* 7AA6E6C 8007B13C 0780053C */  lui        $a1, %hi(D_8007191C)
/* 7AA6E70 8007B140 1C19A58C */  lw         $a1, %lo(D_8007191C)($a1)
/* 7AA6E74 8007B144 203A010C */  jal        func_8004E880
/* 7AA6E78 8007B148 21300000 */   addu      $a2, $zero, $zero
/* 7AA6E7C 8007B14C 21884000 */  addu       $s1, $v0, $zero
/* 7AA6E80 8007B150 40003026 */  addiu      $s0, $s1, 0x40
/* 7AA6E84 8007B154 01004592 */  lbu        $a1, 0x1($s2)
/* 7AA6E88 8007B158 993C010C */  jal        func_8004F264
/* 7AA6E8C 8007B15C FF000432 */   andi      $a0, $s0, 0xFF
/* 7AA6E90 8007B160 41004228 */  slti       $v0, $v0, 0x41
/* 7AA6E94 8007B164 02004014 */  bnez       $v0, .Llevel_37_8007B170
/* 7AA6E98 8007B168 00000000 */   nop
/* 7AA6E9C 8007B16C C0FF3026 */  addiu      $s0, $s1, -0x40
.Llevel_37_8007B170:
/* 7AA6EA0 8007B170 01004492 */  lbu        $a0, 0x1($s2)
/* 7AA6EA4 8007B174 4FD8000C */  jal        func_8003613C
/* 7AA6EA8 8007B178 FF000532 */   andi      $a1, $s0, 0xFF
/* 7AA6EAC 8007B17C 01004392 */  lbu        $v1, 0x1($s2)
/* 7AA6EB0 8007B180 40100200 */  sll        $v0, $v0, 1
/* 7AA6EB4 8007B184 21186200 */  addu       $v1, $v1, $v0
/* 7AA6EB8 8007B188 06004286 */  lh         $v0, 0x6($s2)
/* 7AA6EBC 8007B18C 010043A2 */  sb         $v1, 0x1($s2)
/* 7AA6EC0 8007B190 02004386 */  lh         $v1, 0x2($s2)
/* 7AA6EC4 8007B194 23100200 */  negu       $v0, $v0
/* 7AA6EC8 8007B198 060042A6 */  sh         $v0, 0x6($s2)
/* 7AA6ECC 8007B19C 40100300 */  sll        $v0, $v1, 1
/* 7AA6ED0 8007B1A0 21104300 */  addu       $v0, $v0, $v1
/* 7AA6ED4 8007B1A4 7CEC0108 */  j          .Llevel_37_8007B1F0
/* 7AA6ED8 8007B1A8 83100200 */   sra       $v0, $v0, 2
.Llevel_37_8007B1AC:
/* 7AA6EDC 8007B1AC 03004010 */  beqz       $v0, .Llevel_37_8007B1BC
/* 7AA6EE0 8007B1B0 00000000 */   nop
/* 7AA6EE4 8007B1B4 7DEC0108 */  j          .Llevel_37_8007B1F4
/* 7AA6EE8 8007B1B8 000040A2 */   sb        $zero, 0x0($s2)
.Llevel_37_8007B1BC:
/* 7AA6EEC 8007B1BC 02004486 */  lh         $a0, 0x2($s2)
/* 7AA6EF0 8007B1C0 00000000 */  nop
/* 7AA6EF4 8007B1C4 02008104 */  bgez       $a0, .Llevel_37_8007B1D0
/* 7AA6EF8 8007B1C8 21108000 */   addu      $v0, $a0, $zero
/* 7AA6EFC 8007B1CC 23100200 */  negu       $v0, $v0
.Llevel_37_8007B1D0:
/* 7AA6F00 8007B1D0 2A105400 */  slt        $v0, $v0, $s4
/* 7AA6F04 8007B1D4 03004010 */  beqz       $v0, .Llevel_37_8007B1E4
/* 7AA6F08 8007B1D8 21188000 */   addu      $v1, $a0, $zero
/* 7AA6F0C 8007B1DC 7DEC0108 */  j          .Llevel_37_8007B1F4
/* 7AA6F10 8007B1E0 020040A6 */   sh        $zero, 0x2($s2)
.Llevel_37_8007B1E4:
/* 7AA6F14 8007B1E4 02008104 */  bgez       $a0, .Llevel_37_8007B1F0
/* 7AA6F18 8007B1E8 23107400 */   subu      $v0, $v1, $s4
/* 7AA6F1C 8007B1EC 21107400 */  addu       $v0, $v1, $s4
.Llevel_37_8007B1F0:
/* 7AA6F20 8007B1F0 020042A6 */  sh         $v0, 0x2($s2)
.Llevel_37_8007B1F4:
/* 7AA6F24 8007B1F4 3800B027 */  addiu      $s0, $sp, 0x38
/* 7AA6F28 8007B1F8 21200002 */  addu       $a0, $s0, $zero
/* 7AA6F2C 8007B1FC 5E3C010C */  jal        func_8004F178
/* 7AA6F30 8007B200 0C006526 */   addiu     $a1, $s3, 0xC
/* 7AA6F34 8007B204 21200000 */  addu       $a0, $zero, $zero
/* 7AA6F38 8007B208 F7D8000C */  jal        func_800363DC
/* 7AA6F3C 8007B20C 32000524 */   addiu     $a1, $zero, 0x32
/* 7AA6F40 8007B210 21200000 */  addu       $a0, $zero, $zero
/* 7AA6F44 8007B214 4000A38F */  lw         $v1, 0x40($sp)
/* 7AA6F48 8007B218 FA000524 */  addiu      $a1, $zero, 0xFA
/* 7AA6F4C 8007B21C A3026324 */  addiu      $v1, $v1, 0x2A3
/* 7AA6F50 8007B220 21186200 */  addu       $v1, $v1, $v0
/* 7AA6F54 8007B224 DBD8000C */  jal        func_8003636C
/* 7AA6F58 8007B228 4000A3AF */   sw        $v1, 0x40($sp)
/* 7AA6F5C 8007B22C 21200000 */  addu       $a0, $zero, $zero
/* 7AA6F60 8007B230 3800A38F */  lw         $v1, 0x38($sp)
/* 7AA6F64 8007B234 FA000524 */  addiu      $a1, $zero, 0xFA
/* 7AA6F68 8007B238 21186200 */  addu       $v1, $v1, $v0
/* 7AA6F6C 8007B23C DBD8000C */  jal        func_8003636C
/* 7AA6F70 8007B240 3800A3AF */   sw        $v1, 0x38($sp)
/* 7AA6F74 8007B244 3C00A38F */  lw         $v1, 0x3C($sp)
/* 7AA6F78 8007B248 00000000 */  nop
/* 7AA6F7C 8007B24C 21186200 */  addu       $v1, $v1, $v0
/* 7AA6F80 8007B250 9171010C */  jal        rand
/* 7AA6F84 8007B254 3C00A3AF */   sw        $v1, 0x3C($sp)
/* 7AA6F88 8007B258 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA6F8C 8007B25C F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7AA6F90 8007B260 9171010C */  jal        rand
/* 7AA6F94 8007B264 4800A2AF */   sw        $v0, 0x48($sp)
/* 7AA6F98 8007B268 19000424 */  addiu      $a0, $zero, 0x19
/* 7AA6F9C 8007B26C 23000524 */  addiu      $a1, $zero, 0x23
/* 7AA6FA0 8007B270 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA6FA4 8007B274 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7AA6FA8 8007B278 DBD8000C */  jal        func_8003636C
/* 7AA6FAC 8007B27C 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 7AA6FB0 8007B280 5555043C */  lui        $a0, (0x55555556 >> 16)
/* 7AA6FB4 8007B284 5000A2AF */  sw         $v0, 0x50($sp)
/* 7AA6FB8 8007B288 02004296 */  lhu        $v0, 0x2($s2)
/* 7AA6FBC 8007B28C 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 7AA6FC0 8007B290 00140200 */  sll        $v0, $v0, 16
/* 7AA6FC4 8007B294 031C0200 */  sra        $v1, $v0, 16
/* 7AA6FC8 8007B298 18006400 */  mult       $v1, $a0
/* 7AA6FCC 8007B29C 01004392 */  lbu        $v1, 0x1($s2)
/* 7AA6FD0 8007B2A0 C3170200 */  sra        $v0, $v0, 31
/* 7AA6FD4 8007B2A4 40180300 */  sll        $v1, $v1, 1
/* 7AA6FD8 8007B2A8 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA6FDC 8007B2AC 21082300 */  addu       $at, $at, $v1
/* 7AA6FE0 8007B2B0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AA6FE4 8007B2B4 10480000 */  mfhi       $t1
/* 7AA6FE8 8007B2B8 23102201 */  subu       $v0, $t1, $v0
/* 7AA6FEC 8007B2BC 00140200 */  sll        $v0, $v0, 16
/* 7AA6FF0 8007B2C0 03140200 */  sra        $v0, $v0, 16
/* 7AA6FF4 8007B2C4 18006200 */  mult       $v1, $v0
/* 7AA6FF8 8007B2C8 4800A28F */  lw         $v0, 0x48($sp)
/* 7AA6FFC 8007B2CC 12480000 */  mflo       $t1
/* 7AA7000 8007B2D0 031B0900 */  sra        $v1, $t1, 12
/* 7AA7004 8007B2D4 21104300 */  addu       $v0, $v0, $v1
/* 7AA7008 8007B2D8 4800A2AF */  sw         $v0, 0x48($sp)
/* 7AA700C 8007B2DC 02004296 */  lhu        $v0, 0x2($s2)
/* 7AA7010 8007B2E0 00000000 */  nop
/* 7AA7014 8007B2E4 00140200 */  sll        $v0, $v0, 16
/* 7AA7018 8007B2E8 031C0200 */  sra        $v1, $v0, 16
/* 7AA701C 8007B2EC 18006400 */  mult       $v1, $a0
/* 7AA7020 8007B2F0 01004392 */  lbu        $v1, 0x1($s2)
/* 7AA7024 8007B2F4 C3170200 */  sra        $v0, $v0, 31
/* 7AA7028 8007B2F8 40180300 */  sll        $v1, $v1, 1
/* 7AA702C 8007B2FC 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA7030 8007B300 21082300 */  addu       $at, $at, $v1
/* 7AA7034 8007B304 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AA7038 8007B308 10480000 */  mfhi       $t1
/* 7AA703C 8007B30C 23102201 */  subu       $v0, $t1, $v0
/* 7AA7040 8007B310 00140200 */  sll        $v0, $v0, 16
/* 7AA7044 8007B314 03140200 */  sra        $v0, $v0, 16
/* 7AA7048 8007B318 18006200 */  mult       $v1, $v0
/* 7AA704C 8007B31C 0D000524 */  addiu      $a1, $zero, 0xD
/* 7AA7050 8007B320 21300002 */  addu       $a2, $s0, $zero
/* 7AA7054 8007B324 4800A727 */  addiu      $a3, $sp, 0x48
/* 7AA7058 8007B328 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 7AA705C 8007B32C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 7AA7060 8007B330 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA7064 8007B334 4C00A28F */  lw         $v0, 0x4C($sp)
/* 7AA7068 8007B338 12480000 */  mflo       $t1
/* 7AA706C 8007B33C 031B0900 */  sra        $v1, $t1, 12
/* 7AA7070 8007B340 21104300 */  addu       $v0, $v0, $v1
/* 7AA7074 8007B344 09F80001 */  jalr       $t0
/* 7AA7078 8007B348 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 7AA707C 8007B34C 21204002 */  addu       $a0, $s2, $zero
/* 7AA7080 8007B350 01000524 */  addiu      $a1, $zero, 0x1
/* 7AA7084 8007B354 04000324 */  addiu      $v1, $zero, 0x4
/* 7AA7088 8007B358 69D6000C */  jal        func_800359A4
/* 7AA708C 8007B35C 020043A0 */   sb        $v1, 0x2($v0)
/* 7AA7090 8007B360 02004010 */  beqz       $v0, .Llevel_37_8007B36C
/* 7AA7094 8007B364 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_37_8007B368:
/* 7AA7098 8007B368 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_37_8007B36C:
/* 7AA709C 8007B36C 48006392 */  lbu        $v1, 0x48($s3)
/* 7AA70A0 8007B370 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_37_8007B374:
/* 7AA70A4 8007B374 45006214 */  bne        $v1, $v0, .Llevel_37_8007B48C
/* 7AA70A8 8007B378 180060AE */   sw        $zero, 0x18($s3)
/* 7AA70AC 8007B37C 69010424 */  addiu      $a0, $zero, 0x169
/* 7AA70B0 8007B380 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA70B4 8007B384 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA70B8 8007B388 00000000 */  nop
/* 7AA70BC 8007B38C 09F84000 */  jalr       $v0
/* 7AA70C0 8007B390 21286002 */   addu      $a1, $s3, $zero
/* 7AA70C4 8007B394 21204000 */  addu       $a0, $v0, $zero
/* 7AA70C8 8007B398 10008010 */  beqz       $a0, .Llevel_37_8007B3DC
/* 7AA70CC 8007B39C 00000000 */   nop
/* 7AA70D0 8007B3A0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 7AA70D4 8007B3A4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 7AA70D8 8007B3A8 00000000 */  nop
/* 7AA70DC 8007B3AC 0000428C */  lw         $v0, 0x0($v0)
/* 7AA70E0 8007B3B0 0000838C */  lw         $v1, 0x0($a0)
/* 7AA70E4 8007B3B4 B800428C */  lw         $v0, 0xB8($v0)
/* 7AA70E8 8007B3B8 00000000 */  nop
/* 7AA70EC 8007B3BC 0C0062AC */  sw         $v0, 0xC($v1)
/* 7AA70F0 8007B3C0 0780023C */  lui        $v0, %hi(D_8006E040)
/* 7AA70F4 8007B3C4 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 7AA70F8 8007B3C8 00000000 */  nop
/* 7AA70FC 8007B3CC 00140200 */  sll        $v0, $v0, 16
/* 7AA7100 8007B3D0 03150200 */  sra        $v0, $v0, 20
/* 7AA7104 8007B3D4 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 7AA7108 8007B3D8 460082A0 */  sb         $v0, 0x46($a0)
.Llevel_37_8007B3DC:
/* 7AA710C 8007B3DC 50006392 */  lbu        $v1, 0x50($s3)
/* 7AA7110 8007B3E0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7AA7114 8007B3E4 07006210 */  beq        $v1, $v0, .Llevel_37_8007B404
/* 7AA7118 8007B3E8 21280000 */   addu      $a1, $zero, $zero
/* 7AA711C 8007B3EC 21206002 */  addu       $a0, $s3, $zero
/* 7AA7120 8007B3F0 21300000 */  addu       $a2, $zero, $zero
/* 7AA7124 8007B3F4 9ADA000C */  jal        func_80036A68
/* 7AA7128 8007B3F8 21380000 */   addu      $a3, $zero, $zero
/* 7AA712C 8007B3FC 80EE000C */  jal        func_8003BA00
/* 7AA7130 8007B400 21206002 */   addu      $a0, $s3, $zero
.Llevel_37_8007B404:
/* 7AA7134 8007B404 1400428E */  lw         $v0, 0x14($s2)
/* 7AA7138 8007B408 00000000 */  nop
/* 7AA713C 8007B40C 13004010 */  beqz       $v0, .Llevel_37_8007B45C
/* 7AA7140 8007B410 0C006426 */   addiu     $a0, $s3, 0xC
/* 7AA7144 8007B414 18004526 */  addiu      $a1, $s2, 0x18
/* 7AA7148 8007B418 21300000 */  addu       $a2, $zero, $zero
/* 7AA714C 8007B41C 88D8000C */  jal        func_80036220
/* 7AA7150 8007B420 21380000 */   addu      $a3, $zero, $zero
/* 7AA7154 8007B424 0D004010 */  beqz       $v0, .Llevel_37_8007B45C
/* 7AA7158 8007B428 00000000 */   nop
/* 7AA715C 8007B42C 3000438E */  lw         $v1, 0x30($s2)
/* 7AA7160 8007B430 00000000 */  nop
/* 7AA7164 8007B434 40100300 */  sll        $v0, $v1, 1
/* 7AA7168 8007B438 21104300 */  addu       $v0, $v0, $v1
/* 7AA716C 8007B43C 80100200 */  sll        $v0, $v0, 2
/* 7AA7170 8007B440 23104300 */  subu       $v0, $v0, $v1
/* 7AA7174 8007B444 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7AA7178 8007B448 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7AA717C 8007B44C C0100200 */  sll        $v0, $v0, 3
/* 7AA7180 8007B450 21104300 */  addu       $v0, $v0, $v1
/* 7AA7184 8007B454 01000324 */  addiu      $v1, $zero, 0x1
/* 7AA7188 8007B458 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_37_8007B45C:
/* 7AA718C 8007B45C 1000458E */  lw         $a1, 0x10($s2)
/* 7AA7190 8007B460 F0EF000C */  jal        func_8003BFC0
/* 7AA7194 8007B464 21206002 */   addu      $a0, $s3, $zero
/* 7AA7198 8007B468 05004010 */  beqz       $v0, .Llevel_37_8007B480
/* 7AA719C 8007B46C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 7AA71A0 8007B470 1000448E */  lw         $a0, 0x10($s2)
/* 7AA71A4 8007B474 9CEF000C */  jal        func_8003BE70
/* 7AA71A8 8007B478 00000000 */   nop
/* 7AA71AC 8007B47C FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_37_8007B480:
/* 7AA71B0 8007B480 100042AE */  sw         $v0, 0x10($s2)
/* 7AA71B4 8007B484 C656010C */  jal        func_80055B18
/* 7AA71B8 8007B488 21206002 */   addu      $a0, $s3, $zero
.Llevel_37_8007B48C:
/* 7AA71BC 8007B48C 0C00428E */  lw         $v0, 0xC($s2)
/* 7AA71C0 8007B490 00000000 */  nop
/* 7AA71C4 8007B494 03004010 */  beqz       $v0, .Llevel_37_8007B4A4
/* 7AA71C8 8007B498 21206002 */   addu      $a0, $s3, $zero
/* 7AA71CC 8007B49C DBE6000C */  jal        func_80039B6C
/* 7AA71D0 8007B4A0 0C004526 */   addiu     $a1, $s2, 0xC
.Llevel_37_8007B4A4:
/* 7AA71D4 8007B4A4 8000BF8F */  lw         $ra, 0x80($sp)
/* 7AA71D8 8007B4A8 7C00B58F */  lw         $s5, 0x7C($sp)
/* 7AA71DC 8007B4AC 7800B48F */  lw         $s4, 0x78($sp)
/* 7AA71E0 8007B4B0 7400B38F */  lw         $s3, 0x74($sp)
/* 7AA71E4 8007B4B4 7000B28F */  lw         $s2, 0x70($sp)
/* 7AA71E8 8007B4B8 6C00B18F */  lw         $s1, 0x6C($sp)
/* 7AA71EC 8007B4BC 6800B08F */  lw         $s0, 0x68($sp)
/* 7AA71F0 8007B4C0 8800BD27 */  addiu      $sp, $sp, 0x88
/* 7AA71F4 8007B4C4 0800E003 */  jr         $ra
/* 7AA71F8 8007B4C8 00000000 */   nop
.size func_level_37_8007AC9C, . - func_level_37_8007AC9C
