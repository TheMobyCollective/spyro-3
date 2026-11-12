.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_6_level_24
/* 5E05A30 8008AD00 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 5E05A34 8008AD04 6400B3AF */  sw         $s3, 0x64($sp)
/* 5E05A38 8008AD08 21988000 */  addu       $s3, $a0, $zero
/* 5E05A3C 8008AD0C 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 5E05A40 8008AD10 21A80000 */  addu       $s5, $zero, $zero
/* 5E05A44 8008AD14 7000BFAF */  sw         $ra, 0x70($sp)
/* 5E05A48 8008AD18 6800B4AF */  sw         $s4, 0x68($sp)
/* 5E05A4C 8008AD1C 6000B2AF */  sw         $s2, 0x60($sp)
/* 5E05A50 8008AD20 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 5E05A54 8008AD24 5800B0AF */  sw         $s0, 0x58($sp)
/* 5E05A58 8008AD28 0000728E */  lw         $s2, 0x0($s3)
/* 5E05A5C 8008AD2C 1A006396 */  lhu        $v1, 0x1A($s3)
/* 5E05A60 8008AD30 03004292 */  lbu        $v0, 0x3($s2)
/* 5E05A64 8008AD34 00000000 */  nop
/* 5E05A68 8008AD38 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 5E05A6C 8008AD3C 0200422C */  sltiu      $v0, $v0, 0x2
/* 5E05A70 8008AD40 40004010 */  beqz       $v0, .Llevel_24_8008AE44
/* 5E05A74 8008AD44 01007430 */   andi      $s4, $v1, 0x1
/* 5E05A78 8008AD48 00004292 */  lbu        $v0, 0x0($s2)
/* 5E05A7C 8008AD4C 00000000 */  nop
/* 5E05A80 8008AD50 40100200 */  sll        $v0, $v0, 1
/* 5E05A84 8008AD54 0680013C */  lui        $at, %hi(D_80065920)
/* 5E05A88 8008AD58 21082200 */  addu       $at, $at, $v0
/* 5E05A8C 8008AD5C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 5E05A90 8008AD60 02004392 */  lbu        $v1, 0x2($s2)
/* 5E05A94 8008AD64 00140200 */  sll        $v0, $v0, 16
/* 5E05A98 8008AD68 C3150200 */  sra        $v0, $v0, 23
/* 5E05A9C 8008AD6C 21104300 */  addu       $v0, $v0, $v1
/* 5E05AA0 8008AD70 460062A2 */  sb         $v0, 0x46($s3)
/* 5E05AA4 8008AD74 00004292 */  lbu        $v0, 0x0($s2)
/* 5E05AA8 8008AD78 00000000 */  nop
/* 5E05AAC 8008AD7C 40100200 */  sll        $v0, $v0, 1
/* 5E05AB0 8008AD80 0680013C */  lui        $at, %hi(D_800658A0)
/* 5E05AB4 8008AD84 21082200 */  addu       $at, $at, $v0
/* 5E05AB8 8008AD88 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 5E05ABC 8008AD8C 01004392 */  lbu        $v1, 0x1($s2)
/* 5E05AC0 8008AD90 00140200 */  sll        $v0, $v0, 16
/* 5E05AC4 8008AD94 C3150200 */  sra        $v0, $v0, 23
/* 5E05AC8 8008AD98 21104300 */  addu       $v0, $v0, $v1
/* 5E05ACC 8008AD9C 450062A2 */  sb         $v0, 0x45($s3)
/* 5E05AD0 8008ADA0 0800438E */  lw         $v1, 0x8($s2)
/* 5E05AD4 8008ADA4 00000000 */  nop
/* 5E05AD8 8008ADA8 95006228 */  slti       $v0, $v1, 0x95
/* 5E05ADC 8008ADAC 08004014 */  bnez       $v0, .Llevel_24_8008ADD0
/* 5E05AE0 8008ADB0 75006228 */   slti      $v0, $v1, 0x75
/* 5E05AE4 8008ADB4 44006292 */  lbu        $v0, 0x44($s3)
/* 5E05AE8 8008ADB8 01004392 */  lbu        $v1, 0x1($s2)
/* 5E05AEC 8008ADBC 000042A2 */  sb         $v0, 0x0($s2)
/* 5E05AF0 8008ADC0 450063A2 */  sb         $v1, 0x45($s3)
/* 5E05AF4 8008ADC4 02004292 */  lbu        $v0, 0x2($s2)
/* 5E05AF8 8008ADC8 912B0208 */  j          .Llevel_24_8008AE44
/* 5E05AFC 8008ADCC 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_24_8008ADD0:
/* 5E05B00 8008ADD0 06004014 */  bnez       $v0, .Llevel_24_8008ADEC
/* 5E05B04 8008ADD4 00000000 */   nop
/* 5E05B08 8008ADD8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05B0C 8008ADDC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E05B10 8008ADE0 00004392 */  lbu        $v1, 0x0($s2)
/* 5E05B14 8008ADE4 8F2B0208 */  j          .Llevel_24_8008AE3C
/* 5E05B18 8008ADE8 00110200 */   sll       $v0, $v0, 4
.Llevel_24_8008ADEC:
/* 5E05B1C 8008ADEC 55006228 */  slti       $v0, $v1, 0x55
/* 5E05B20 8008ADF0 06004014 */  bnez       $v0, .Llevel_24_8008AE0C
/* 5E05B24 8008ADF4 00000000 */   nop
/* 5E05B28 8008ADF8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05B2C 8008ADFC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E05B30 8008AE00 00004392 */  lbu        $v1, 0x0($s2)
/* 5E05B34 8008AE04 8F2B0208 */  j          .Llevel_24_8008AE3C
/* 5E05B38 8008AE08 C0100200 */   sll       $v0, $v0, 3
.Llevel_24_8008AE0C:
/* 5E05B3C 8008AE0C 15006228 */  slti       $v0, $v1, 0x15
/* 5E05B40 8008AE10 06004014 */  bnez       $v0, .Llevel_24_8008AE2C
/* 5E05B44 8008AE14 00000000 */   nop
/* 5E05B48 8008AE18 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05B4C 8008AE1C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E05B50 8008AE20 00004392 */  lbu        $v1, 0x0($s2)
/* 5E05B54 8008AE24 8F2B0208 */  j          .Llevel_24_8008AE3C
/* 5E05B58 8008AE28 80100200 */   sll       $v0, $v0, 2
.Llevel_24_8008AE2C:
/* 5E05B5C 8008AE2C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5E05B60 8008AE30 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5E05B64 8008AE34 00004392 */  lbu        $v1, 0x0($s2)
/* 5E05B68 8008AE38 40100200 */  sll        $v0, $v0, 1
.Llevel_24_8008AE3C:
/* 5E05B6C 8008AE3C 21186200 */  addu       $v1, $v1, $v0
/* 5E05B70 8008AE40 000043A2 */  sb         $v1, 0x0($s2)
.Llevel_24_8008AE44:
/* 5E05B74 8008AE44 21206002 */  addu       $a0, $s3, $zero
/* 5E05B78 8008AE48 4957010C */  jal        func_80055D24
/* 5E05B7C 8008AE4C 04000524 */   addiu     $a1, $zero, 0x4
/* 5E05B80 8008AE50 2800B127 */  addiu      $s1, $sp, 0x28
/* 5E05B84 8008AE54 21202002 */  addu       $a0, $s1, $zero
/* 5E05B88 8008AE58 0C007026 */  addiu      $s0, $s3, 0xC
/* 5E05B8C 8008AE5C 21280002 */  addu       $a1, $s0, $zero
/* 5E05B90 8008AE60 2C010224 */  addiu      $v0, $zero, 0x12C
/* 5E05B94 8008AE64 1800A2AF */  sw         $v0, 0x18($sp)
/* 5E05B98 8008AE68 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5E05B9C 8008AE6C 5E3C010C */  jal        func_8004F178
/* 5E05BA0 8008AE70 2000A0AF */   sw        $zero, 0x20($sp)
/* 5E05BA4 8008AE74 20006426 */  addiu      $a0, $s3, 0x20
/* 5E05BA8 8008AE78 1800A527 */  addiu      $a1, $sp, 0x18
/* 5E05BAC 8008AE7C 5B3B010C */  jal        func_8004ED6C
/* 5E05BB0 8008AE80 2130A000 */   addu      $a2, $a1, $zero
/* 5E05BB4 8008AE84 21200002 */  addu       $a0, $s0, $zero
/* 5E05BB8 8008AE88 21288000 */  addu       $a1, $a0, $zero
/* 5E05BBC 8008AE8C 653C010C */  jal        func_8004F194
/* 5E05BC0 8008AE90 1800A627 */   addiu     $a2, $sp, 0x18
/* 5E05BC4 8008AE94 03004292 */  lbu        $v0, 0x3($s2)
/* 5E05BC8 8008AE98 00000000 */  nop
/* 5E05BCC 8008AE9C 15004014 */  bnez       $v0, .Llevel_24_8008AEF4
/* 5E05BD0 8008AEA0 3800A427 */   addiu     $a0, $sp, 0x38
/* 5E05BD4 8008AEA4 0780053C */  lui        $a1, %hi(D_80070328)
/* 5E05BD8 8008AEA8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5E05BDC 8008AEAC 723C010C */  jal        func_8004F1C8
/* 5E05BE0 8008AEB0 21302002 */   addu      $a2, $s1, $zero
/* 5E05BE4 8008AEB4 3800A38F */  lw         $v1, 0x38($sp)
/* 5E05BE8 8008AEB8 1800A28F */  lw         $v0, 0x18($sp)
/* 5E05BEC 8008AEBC 00000000 */  nop
/* 5E05BF0 8008AEC0 18006200 */  mult       $v1, $v0
/* 5E05BF4 8008AEC4 3C00A38F */  lw         $v1, 0x3C($sp)
/* 5E05BF8 8008AEC8 12200000 */  mflo       $a0
/* 5E05BFC 8008AECC 1C00A28F */  lw         $v0, 0x1C($sp)
/* 5E05C00 8008AED0 00000000 */  nop
/* 5E05C04 8008AED4 18006200 */  mult       $v1, $v0
/* 5E05C08 8008AED8 12180000 */  mflo       $v1
/* 5E05C0C 8008AEDC 21108300 */  addu       $v0, $a0, $v1
/* 5E05C10 8008AEE0 04004104 */  bgez       $v0, .Llevel_24_8008AEF4
/* 5E05C14 8008AEE4 01000224 */   addiu     $v0, $zero, 0x1
/* 5E05C18 8008AEE8 030042A2 */  sb         $v0, 0x3($s2)
/* 5E05C1C 8008AEEC 94000224 */  addiu      $v0, $zero, 0x94
/* 5E05C20 8008AEF0 080042AE */  sw         $v0, 0x8($s2)
.Llevel_24_8008AEF4:
/* 5E05C24 8008AEF4 1000A0AF */  sw         $zero, 0x10($sp)
/* 5E05C28 8008AEF8 2800A427 */  addiu      $a0, $sp, 0x28
/* 5E05C2C 8008AEFC 0C007026 */  addiu      $s0, $s3, 0xC
/* 5E05C30 8008AF00 21280002 */  addu       $a1, $s0, $zero
/* 5E05C34 8008AF04 03000624 */  addiu      $a2, $zero, 0x3
/* 5E05C38 8008AF08 C360000C */  jal        func_8001830C
/* 5E05C3C 8008AF0C 21380000 */   addu      $a3, $zero, $zero
/* 5E05C40 8008AF10 03004010 */  beqz       $v0, .Llevel_24_8008AF20
/* 5E05C44 8008AF14 01000424 */   addiu     $a0, $zero, 0x1
/* 5E05C48 8008AF18 01001424 */  addiu      $s4, $zero, 0x1
/* 5E05C4C 8008AF1C 02001524 */  addiu      $s5, $zero, 0x2
.Llevel_24_8008AF20:
/* 5E05C50 8008AF20 0D000524 */  addiu      $a1, $zero, 0xD
/* 5E05C54 8008AF24 21300002 */  addu       $a2, $s0, $zero
/* 5E05C58 8008AF28 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5E05C5C 8008AF2C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5E05C60 8008AF30 1800A727 */  addiu      $a3, $sp, 0x18
/* 5E05C64 8008AF34 1800A0AF */  sw         $zero, 0x18($sp)
/* 5E05C68 8008AF38 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 5E05C6C 8008AF3C 09F84000 */  jalr       $v0
/* 5E05C70 8008AF40 2000A0AF */   sw        $zero, 0x20($sp)
/* 5E05C74 8008AF44 03004292 */  lbu        $v0, 0x3($s2)
/* 5E05C78 8008AF48 00000000 */  nop
/* 5E05C7C 8008AF4C 18004014 */  bnez       $v0, .Llevel_24_8008AFB0
/* 5E05C80 8008AF50 0C006426 */   addiu     $a0, $s3, 0xC
/* 5E05C84 8008AF54 0780033C */  lui        $v1, %hi(D_8006E044)
/* 5E05C88 8008AF58 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 5E05C8C 8008AF5C 09000224 */  addiu      $v0, $zero, 0x9
/* 5E05C90 8008AF60 13006210 */  beq        $v1, $v0, .Llevel_24_8008AFB0
/* 5E05C94 8008AF64 0B000224 */   addiu     $v0, $zero, 0xB
/* 5E05C98 8008AF68 12006210 */  beq        $v1, $v0, .Llevel_24_8008AFB4
/* 5E05C9C 8008AF6C C8000524 */   addiu     $a1, $zero, 0xC8
/* 5E05CA0 8008AF70 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 5E05CA4 8008AF74 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 5E05CA8 8008AF78 00000000 */  nop
/* 5E05CAC 8008AF7C 0E004014 */  bnez       $v0, .Llevel_24_8008AFB8
/* 5E05CB0 8008AF80 02000624 */   addiu     $a2, $zero, 0x2
/* 5E05CB4 8008AF84 21200002 */  addu       $a0, $s0, $zero
/* 5E05CB8 8008AF88 00010524 */  addiu      $a1, $zero, 0x100
/* 5E05CBC 8008AF8C A270000C */  jal        func_8001C288
/* 5E05CC0 8008AF90 07000624 */   addiu     $a2, $zero, 0x7
/* 5E05CC4 8008AF94 06004010 */  beqz       $v0, .Llevel_24_8008AFB0
/* 5E05CC8 8008AF98 0C006426 */   addiu     $a0, $s3, 0xC
/* 5E05CCC 8008AF9C 46006292 */  lbu        $v0, 0x46($s3)
/* 5E05CD0 8008AFA0 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 5E05CD4 8008AFA4 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 5E05CD8 8008AFA8 082C0208 */  j          .Llevel_24_8008B020
/* 5E05CDC 8008AFAC 02001524 */   addiu     $s5, $zero, 0x2
.Llevel_24_8008AFB0:
/* 5E05CE0 8008AFB0 C8000524 */  addiu      $a1, $zero, 0xC8
.Llevel_24_8008AFB4:
/* 5E05CE4 8008AFB4 02000624 */  addiu      $a2, $zero, 0x2
.Llevel_24_8008AFB8:
/* 5E05CE8 8008AFB8 1000A0AF */  sw         $zero, 0x10($sp)
/* 5E05CEC 8008AFBC 3A006292 */  lbu        $v0, 0x3A($s3)
/* 5E05CF0 8008AFC0 21380000 */  addu       $a3, $zero, $zero
/* 5E05CF4 8008AFC4 40180200 */  sll        $v1, $v0, 1
/* 5E05CF8 8008AFC8 21186200 */  addu       $v1, $v1, $v0
/* 5E05CFC 8008AFCC 80180300 */  sll        $v1, $v1, 2
/* 5E05D00 8008AFD0 23186200 */  subu       $v1, $v1, $v0
/* 5E05D04 8008AFD4 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5E05D08 8008AFD8 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5E05D0C 8008AFDC C0180300 */  sll        $v1, $v1, 3
/* 5E05D10 8008AFE0 21104300 */  addu       $v0, $v0, $v1
/* 5E05D14 8008AFE4 8C6E000C */  jal        func_8001BA30
/* 5E05D18 8008AFE8 1400A2AF */   sw        $v0, 0x14($sp)
/* 5E05D1C 8008AFEC 21204000 */  addu       $a0, $v0, $zero
/* 5E05D20 8008AFF0 0B008010 */  beqz       $a0, .Llevel_24_8008B020
/* 5E05D24 8008AFF4 09000224 */   addiu     $v0, $zero, 0x9
/* 5E05D28 8008AFF8 36008384 */  lh         $v1, 0x36($a0)
/* 5E05D2C 8008AFFC 00000000 */  nop
/* 5E05D30 8008B000 07006210 */  beq        $v1, $v0, .Llevel_24_8008B020
/* 5E05D34 8008B004 0310033C */   lui       $v1, (0x10030000 >> 16)
/* 5E05D38 8008B008 02001524 */  addiu      $s5, $zero, 0x2
/* 5E05D3C 8008B00C 01001424 */  addiu      $s4, $zero, 0x1
/* 5E05D40 8008B010 1800828C */  lw         $v0, 0x18($a0)
/* 5E05D44 8008B014 00000000 */  nop
/* 5E05D48 8008B018 25104300 */  or         $v0, $v0, $v1
/* 5E05D4C 8008B01C 180082AC */  sw         $v0, 0x18($a0)
.Llevel_24_8008B020:
/* 5E05D50 8008B020 53008012 */  beqz       $s4, .Llevel_24_8008B170
/* 5E05D54 8008B024 21300000 */   addu      $a2, $zero, $zero
/* 5E05D58 8008B028 0C00638E */  lw         $v1, 0xC($s3)
/* 5E05D5C 8008B02C 0780043C */  lui        $a0, %hi(D_8006E020)
/* 5E05D60 8008B030 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 5E05D64 8008B034 1000628E */  lw         $v0, 0x10($s3)
/* 5E05D68 8008B038 0780053C */  lui        $a1, %hi(D_8006E024)
/* 5E05D6C 8008B03C 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 5E05D70 8008B040 23206400 */  subu       $a0, $v1, $a0
/* 5E05D74 8008B044 203A010C */  jal        func_8004E880
/* 5E05D78 8008B048 23284500 */   subu      $a1, $v0, $a1
/* 5E05D7C 8008B04C 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5E05D80 8008B050 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5E05D84 8008B054 21284000 */  addu       $a1, $v0, $zero
/* 5E05D88 8008B058 00240400 */  sll        $a0, $a0, 16
/* 5E05D8C 8008B05C 993C010C */  jal        func_8004F264
/* 5E05D90 8008B060 03250400 */   sra       $a0, $a0, 20
/* 5E05D94 8008B064 0A004228 */  slti       $v0, $v0, 0xA
/* 5E05D98 8008B068 06004010 */  beqz       $v0, .Llevel_24_8008B084
/* 5E05D9C 8008B06C 14000224 */   addiu     $v0, $zero, 0x14
/* 5E05DA0 8008B070 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 5E05DA4 8008B074 D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 5E05DA8 8008B078 00100224 */  addiu      $v0, $zero, 0x1000
/* 5E05DAC 8008B07C 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 5E05DB0 8008B080 D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
.Llevel_24_8008B084:
/* 5E05DB4 8008B084 21A00000 */  addu       $s4, $zero, $zero
.Llevel_24_8008B088:
/* 5E05DB8 8008B088 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5E05DBC 8008B08C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5E05DC0 8008B090 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5E05DC4 8008B094 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5E05DC8 8008B098 00000000 */  nop
/* 5E05DCC 8008B09C 23104300 */  subu       $v0, $v0, $v1
/* 5E05DD0 8008B0A0 15004228 */  slti       $v0, $v0, 0x15
/* 5E05DD4 8008B0A4 32004014 */  bnez       $v0, .Llevel_24_8008B170
/* 5E05DD8 8008B0A8 64000424 */   addiu     $a0, $zero, 0x64
/* 5E05DDC 8008B0AC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5E05DE0 8008B0B0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5E05DE4 8008B0B4 00000000 */  nop
/* 5E05DE8 8008B0B8 09F84000 */  jalr       $v0
/* 5E05DEC 8008B0BC 21286002 */   addu      $a1, $s3, $zero
/* 5E05DF0 8008B0C0 21884000 */  addu       $s1, $v0, $zero
/* 5E05DF4 8008B0C4 26002012 */  beqz       $s1, .Llevel_24_8008B160
/* 5E05DF8 8008B0C8 21200000 */   addu      $a0, $zero, $zero
/* 5E05DFC 8008B0CC 50000524 */  addiu      $a1, $zero, 0x50
/* 5E05E00 8008B0D0 0000308E */  lw         $s0, 0x0($s1)
/* 5E05E04 8008B0D4 01000224 */  addiu      $v0, $zero, 0x1
/* 5E05E08 8008B0D8 480022A2 */  sb         $v0, 0x48($s1)
/* 5E05E0C 8008B0DC 410020A2 */  sb         $zero, 0x41($s1)
/* 5E05E10 8008B0E0 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 5E05E14 8008B0E4 DBD8000C */  jal        func_8003636C
/* 5E05E18 8008B0E8 4D0020A2 */   sb        $zero, 0x4D($s1)
/* 5E05E1C 8008B0EC 21200000 */  addu       $a0, $zero, $zero
/* 5E05E20 8008B0F0 50000524 */  addiu      $a1, $zero, 0x50
/* 5E05E24 8008B0F4 D8FF4224 */  addiu      $v0, $v0, -0x28
/* 5E05E28 8008B0F8 DBD8000C */  jal        func_8003636C
/* 5E05E2C 8008B0FC 4800A2AF */   sw        $v0, 0x48($sp)
/* 5E05E30 8008B100 32000424 */  addiu      $a0, $zero, 0x32
/* 5E05E34 8008B104 C8000524 */  addiu      $a1, $zero, 0xC8
/* 5E05E38 8008B108 D8FF4224 */  addiu      $v0, $v0, -0x28
/* 5E05E3C 8008B10C DBD8000C */  jal        func_8003636C
/* 5E05E40 8008B110 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 5E05E44 8008B114 4800A48F */  lw         $a0, 0x48($sp)
/* 5E05E48 8008B118 4800A527 */  addiu      $a1, $sp, 0x48
/* 5E05E4C 8008B11C 5000A2AF */  sw         $v0, 0x50($sp)
/* 5E05E50 8008B120 0C00238E */  lw         $v1, 0xC($s1)
/* 5E05E54 8008B124 40100400 */  sll        $v0, $a0, 1
/* 5E05E58 8008B128 21104400 */  addu       $v0, $v0, $a0
/* 5E05E5C 8008B12C 21186200 */  addu       $v1, $v1, $v0
/* 5E05E60 8008B130 04000426 */  addiu      $a0, $s0, 0x4
/* 5E05E64 8008B134 0C0023AE */  sw         $v1, 0xC($s1)
/* 5E05E68 8008B138 4C00A68F */  lw         $a2, 0x4C($sp)
/* 5E05E6C 8008B13C 1000238E */  lw         $v1, 0x10($s1)
/* 5E05E70 8008B140 40100600 */  sll        $v0, $a2, 1
/* 5E05E74 8008B144 21104600 */  addu       $v0, $v0, $a2
/* 5E05E78 8008B148 21186200 */  addu       $v1, $v1, $v0
/* 5E05E7C 8008B14C 5E3C010C */  jal        func_8004F178
/* 5E05E80 8008B150 100023AE */   sw        $v1, 0x10($s1)
/* 5E05E84 8008B154 C8000224 */  addiu      $v0, $zero, 0xC8
/* 5E05E88 8008B158 100000AE */  sw         $zero, 0x10($s0)
/* 5E05E8C 8008B15C 000002AE */  sw         $v0, 0x0($s0)
.Llevel_24_8008B160:
/* 5E05E90 8008B160 01009426 */  addiu      $s4, $s4, 0x1
/* 5E05E94 8008B164 0800822A */  slti       $v0, $s4, 0x8
/* 5E05E98 8008B168 C7FF4014 */  bnez       $v0, .Llevel_24_8008B088
/* 5E05E9C 8008B16C 00000000 */   nop
.Llevel_24_8008B170:
/* 5E05EA0 8008B170 0500A016 */  bnez       $s5, .Llevel_24_8008B188
/* 5E05EA4 8008B174 08004426 */   addiu     $a0, $s2, 0x8
/* 5E05EA8 8008B178 69D6000C */  jal        func_800359A4
/* 5E05EAC 8008B17C 04000524 */   addiu     $a1, $zero, 0x4
/* 5E05EB0 8008B180 14004010 */  beqz       $v0, .Llevel_24_8008B1D4
/* 5E05EB4 8008B184 00000000 */   nop
.Llevel_24_8008B188:
/* 5E05EB8 8008B188 04004592 */  lbu        $a1, 0x4($s2)
/* 5E05EBC 8008B18C F0EF000C */  jal        func_8003BFC0
/* 5E05EC0 8008B190 21206002 */   addu      $a0, $s3, $zero
/* 5E05EC4 8008B194 05004010 */  beqz       $v0, .Llevel_24_8008B1AC
/* 5E05EC8 8008B198 21206002 */   addu      $a0, $s3, $zero
/* 5E05ECC 8008B19C 04004492 */  lbu        $a0, 0x4($s2)
/* 5E05ED0 8008B1A0 9CEF000C */  jal        func_8003BE70
/* 5E05ED4 8008B1A4 00000000 */   nop
/* 5E05ED8 8008B1A8 21206002 */  addu       $a0, $s3, $zero
.Llevel_24_8008B1AC:
/* 5E05EDC 8008B1AC 01000524 */  addiu      $a1, $zero, 0x1
/* 5E05EE0 8008B1B0 AFEE000C */  jal        func_8003BABC
/* 5E05EE4 8008B1B4 21300000 */   addu      $a2, $zero, $zero
/* 5E05EE8 8008B1B8 21206002 */  addu       $a0, $s3, $zero
/* 5E05EEC 8008B1BC 6EDA000C */  jal        func_800369B8
/* 5E05EF0 8008B1C0 14000524 */   addiu     $a1, $zero, 0x14
/* 5E05EF4 8008B1C4 C656010C */  jal        func_80055B18
/* 5E05EF8 8008B1C8 21206002 */   addu      $a0, $s3, $zero
/* 5E05EFC 8008B1CC 7E2C0208 */  j          .Llevel_24_8008B1F8
/* 5E05F00 8008B1D0 00000000 */   nop
.Llevel_24_8008B1D4:
/* 5E05F04 8008B1D4 04004592 */  lbu        $a1, 0x4($s2)
/* 5E05F08 8008B1D8 F0EF000C */  jal        func_8003BFC0
/* 5E05F0C 8008B1DC 21206002 */   addu      $a0, $s3, $zero
/* 5E05F10 8008B1E0 05004014 */  bnez       $v0, .Llevel_24_8008B1F8
/* 5E05F14 8008B1E4 21206002 */   addu      $a0, $s3, $zero
/* 5E05F18 8008B1E8 21280000 */  addu       $a1, $zero, $zero
/* 5E05F1C 8008B1EC AFEE000C */  jal        func_8003BABC
/* 5E05F20 8008B1F0 04000624 */   addiu     $a2, $zero, 0x4
/* 5E05F24 8008B1F4 040042A2 */  sb         $v0, 0x4($s2)
.Llevel_24_8008B1F8:
/* 5E05F28 8008B1F8 7000BF8F */  lw         $ra, 0x70($sp)
/* 5E05F2C 8008B1FC 6C00B58F */  lw         $s5, 0x6C($sp)
/* 5E05F30 8008B200 6800B48F */  lw         $s4, 0x68($sp)
/* 5E05F34 8008B204 6400B38F */  lw         $s3, 0x64($sp)
/* 5E05F38 8008B208 6000B28F */  lw         $s2, 0x60($sp)
/* 5E05F3C 8008B20C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 5E05F40 8008B210 5800B08F */  lw         $s0, 0x58($sp)
/* 5E05F44 8008B214 7800BD27 */  addiu      $sp, $sp, 0x78
/* 5E05F48 8008B218 0800E003 */  jr         $ra
/* 5E05F4C 8008B21C 00000000 */   nop
.size MobyUpdate_6_level_24, . - MobyUpdate_6_level_24
