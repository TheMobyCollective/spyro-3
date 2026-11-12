.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_413_level_27
/* 63EDF44 80079A14 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 63EDF48 80079A18 7000B2AF */  sw         $s2, 0x70($sp)
/* 63EDF4C 80079A1C 21908000 */  addu       $s2, $a0, $zero
/* 63EDF50 80079A20 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 63EDF54 80079A24 7800B4AF */  sw         $s4, 0x78($sp)
/* 63EDF58 80079A28 7400B3AF */  sw         $s3, 0x74($sp)
/* 63EDF5C 80079A2C 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 63EDF60 80079A30 6800B0AF */  sw         $s0, 0x68($sp)
/* 63EDF64 80079A34 0000538E */  lw         $s3, 0x0($s2)
/* 63EDF68 80079A38 01000324 */  addiu      $v1, $zero, 0x1
/* 63EDF6C 80079A3C 0000628E */  lw         $v0, 0x0($s3)
/* 63EDF70 80079A40 48004492 */  lbu        $a0, 0x48($s2)
/* 63EDF74 80079A44 0000548C */  lw         $s4, 0x0($v0)
/* 63EDF78 80079A48 EE008310 */  beq        $a0, $v1, .Llevel_27_80079E04
/* 63EDF7C 80079A4C 02008228 */   slti      $v0, $a0, 0x2
/* 63EDF80 80079A50 05004010 */  beqz       $v0, .Llevel_27_80079A68
/* 63EDF84 80079A54 00000000 */   nop
/* 63EDF88 80079A58 08008010 */  beqz       $a0, .Llevel_27_80079A7C
/* 63EDF8C 80079A5C 00000000 */   nop
/* 63EDF90 80079A60 ABE70108 */  j          .Llevel_27_80079EAC
/* 63EDF94 80079A64 00000000 */   nop
.Llevel_27_80079A68:
/* 63EDF98 80079A68 02000224 */  addiu      $v0, $zero, 0x2
/* 63EDF9C 80079A6C 06018210 */  beq        $a0, $v0, .Llevel_27_80079E88
/* 63EDFA0 80079A70 00000000 */   nop
/* 63EDFA4 80079A74 ABE70108 */  j          .Llevel_27_80079EAC
/* 63EDFA8 80079A78 00000000 */   nop
.Llevel_27_80079A7C:
/* 63EDFAC 80079A7C 0C00428E */  lw         $v0, 0xC($s2)
/* 63EDFB0 80079A80 00000000 */  nop
/* 63EDFB4 80079A84 00044228 */  slti       $v0, $v0, 0x400
/* 63EDFB8 80079A88 0B004014 */  bnez       $v0, .Llevel_27_80079AB8
/* 63EDFBC 80079A8C 02000224 */   addiu     $v0, $zero, 0x2
/* 63EDFC0 80079A90 1000428E */  lw         $v0, 0x10($s2)
/* 63EDFC4 80079A94 00000000 */  nop
/* 63EDFC8 80079A98 00044228 */  slti       $v0, $v0, 0x400
/* 63EDFCC 80079A9C 06004014 */  bnez       $v0, .Llevel_27_80079AB8
/* 63EDFD0 80079AA0 02000224 */   addiu     $v0, $zero, 0x2
/* 63EDFD4 80079AA4 1400428E */  lw         $v0, 0x14($s2)
/* 63EDFD8 80079AA8 00000000 */  nop
/* 63EDFDC 80079AAC 00044228 */  slti       $v0, $v0, 0x400
/* 63EDFE0 80079AB0 02004010 */  beqz       $v0, .Llevel_27_80079ABC
/* 63EDFE4 80079AB4 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_27_80079AB8:
/* 63EDFE8 80079AB8 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_27_80079ABC:
/* 63EDFEC 80079ABC 0C006292 */  lbu        $v0, 0xC($s3)
/* 63EDFF0 80079AC0 00000000 */  nop
/* 63EDFF4 80079AC4 63004010 */  beqz       $v0, .Llevel_27_80079C54
/* 63EDFF8 80079AC8 21300000 */   addu      $a2, $zero, $zero
/* 63EDFFC 80079ACC 0780033C */  lui        $v1, %hi(D_80070328)
/* 63EE000 80079AD0 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 63EE004 80079AD4 0C00448E */  lw         $a0, 0xC($s2)
/* 63EE008 80079AD8 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 63EE00C 80079ADC 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 63EE010 80079AE0 1000458E */  lw         $a1, 0x10($s2)
/* 63EE014 80079AE4 23206400 */  subu       $a0, $v1, $a0
/* 63EE018 80079AE8 203A010C */  jal        func_8004E880
/* 63EE01C 80079AEC 23284500 */   subu      $a1, $v0, $a1
/* 63EE020 80079AF0 46004492 */  lbu        $a0, 0x46($s2)
/* 63EE024 80079AF4 993C010C */  jal        func_8004F264
/* 63EE028 80079AF8 21284000 */   addu      $a1, $v0, $zero
/* 63EE02C 80079AFC 30004228 */  slti       $v0, $v0, 0x30
/* 63EE030 80079B00 3B004010 */  beqz       $v0, .Llevel_27_80079BF0
/* 63EE034 80079B04 21204002 */   addu      $a0, $s2, $zero
/* 63EE038 80079B08 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 63EE03C 80079B0C 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 63EE040 80079B10 1400438E */  lw         $v1, 0x14($s2)
/* 63EE044 80079B14 00028224 */  addiu      $v0, $a0, 0x200
/* 63EE048 80079B18 2A104300 */  slt        $v0, $v0, $v1
/* 63EE04C 80079B1C 06004010 */  beqz       $v0, .Llevel_27_80079B38
/* 63EE050 80079B20 2A108300 */   slt       $v0, $a0, $v1
/* 63EE054 80079B24 0800628E */  lw         $v0, 0x8($s3)
/* 63EE058 80079B28 00000000 */  nop
/* 63EE05C 80079B2C F1FF4224 */  addiu      $v0, $v0, -0xF
/* 63EE060 80079B30 EAE60108 */  j          .Llevel_27_80079BA8
/* 63EE064 80079B34 080062AE */   sw        $v0, 0x8($s3)
.Llevel_27_80079B38:
/* 63EE068 80079B38 0A004010 */  beqz       $v0, .Llevel_27_80079B64
/* 63EE06C 80079B3C 00FE8224 */   addiu     $v0, $a0, -0x200
/* 63EE070 80079B40 0800628E */  lw         $v0, 0x8($s3)
/* 63EE074 80079B44 00000000 */  nop
/* 63EE078 80079B48 18004104 */  bgez       $v0, .Llevel_27_80079BAC
/* 63EE07C 80079B4C 00000000 */   nop
/* 63EE080 80079B50 0F004224 */  addiu      $v0, $v0, 0xF
/* 63EE084 80079B54 14004018 */  blez       $v0, .Llevel_27_80079BA8
/* 63EE088 80079B58 080062AE */   sw        $v0, 0x8($s3)
/* 63EE08C 80079B5C EAE60108 */  j          .Llevel_27_80079BA8
/* 63EE090 80079B60 080060AE */   sw        $zero, 0x8($s3)
.Llevel_27_80079B64:
/* 63EE094 80079B64 2A106200 */  slt        $v0, $v1, $v0
/* 63EE098 80079B68 06004010 */  beqz       $v0, .Llevel_27_80079B84
/* 63EE09C 80079B6C 2A106400 */   slt       $v0, $v1, $a0
/* 63EE0A0 80079B70 0800628E */  lw         $v0, 0x8($s3)
/* 63EE0A4 80079B74 00000000 */  nop
/* 63EE0A8 80079B78 0F004224 */  addiu      $v0, $v0, 0xF
/* 63EE0AC 80079B7C EAE60108 */  j          .Llevel_27_80079BA8
/* 63EE0B0 80079B80 080062AE */   sw        $v0, 0x8($s3)
.Llevel_27_80079B84:
/* 63EE0B4 80079B84 08004010 */  beqz       $v0, .Llevel_27_80079BA8
/* 63EE0B8 80079B88 00000000 */   nop
/* 63EE0BC 80079B8C 0800628E */  lw         $v0, 0x8($s3)
/* 63EE0C0 80079B90 00000000 */  nop
/* 63EE0C4 80079B94 04004018 */  blez       $v0, .Llevel_27_80079BA8
/* 63EE0C8 80079B98 F1FF4224 */   addiu     $v0, $v0, -0xF
/* 63EE0CC 80079B9C 02004104 */  bgez       $v0, .Llevel_27_80079BA8
/* 63EE0D0 80079BA0 080062AE */   sw        $v0, 0x8($s3)
/* 63EE0D4 80079BA4 080060AE */  sw         $zero, 0x8($s3)
.Llevel_27_80079BA8:
/* 63EE0D8 80079BA8 0800628E */  lw         $v0, 0x8($s3)
.Llevel_27_80079BAC:
/* 63EE0DC 80079BAC 00000000 */  nop
/* 63EE0E0 80079BB0 79004228 */  slti       $v0, $v0, 0x79
/* 63EE0E4 80079BB4 02004014 */  bnez       $v0, .Llevel_27_80079BC0
/* 63EE0E8 80079BB8 78000224 */   addiu     $v0, $zero, 0x78
/* 63EE0EC 80079BBC 080062AE */  sw         $v0, 0x8($s3)
.Llevel_27_80079BC0:
/* 63EE0F0 80079BC0 0800628E */  lw         $v0, 0x8($s3)
/* 63EE0F4 80079BC4 00000000 */  nop
/* 63EE0F8 80079BC8 88FF4228 */  slti       $v0, $v0, -0x78
/* 63EE0FC 80079BCC 02004010 */  beqz       $v0, .Llevel_27_80079BD8
/* 63EE100 80079BD0 88FF0224 */   addiu     $v0, $zero, -0x78
/* 63EE104 80079BD4 080062AE */  sw         $v0, 0x8($s3)
.Llevel_27_80079BD8:
/* 63EE108 80079BD8 1400428E */  lw         $v0, 0x14($s2)
/* 63EE10C 80079BDC 0800638E */  lw         $v1, 0x8($s3)
/* 63EE110 80079BE0 00000000 */  nop
/* 63EE114 80079BE4 21104300 */  addu       $v0, $v0, $v1
/* 63EE118 80079BE8 140042AE */  sw         $v0, 0x14($s2)
/* 63EE11C 80079BEC 21204002 */  addu       $a0, $s2, $zero
.Llevel_27_80079BF0:
/* 63EE120 80079BF0 90010624 */  addiu      $a2, $zero, 0x190
/* 63EE124 80079BF4 0F006592 */  lbu        $a1, 0xF($s3)
/* 63EE128 80079BF8 21380000 */  addu       $a3, $zero, $zero
/* 63EE12C 80079BFC 1000A0AF */  sw         $zero, 0x10($sp)
/* 63EE130 80079C00 B8D7000C */  jal        func_80035EE0
/* 63EE134 80079C04 1400A0AF */   sw        $zero, 0x14($sp)
/* 63EE138 80079C08 1800A427 */  addiu      $a0, $sp, 0x18
/* 63EE13C 80079C0C 0780053C */  lui        $a1, %hi(D_8006E020)
/* 63EE140 80079C10 20E0A524 */  addiu      $a1, $a1, %lo(D_8006E020)
/* 63EE144 80079C14 723C010C */  jal        func_8004F1C8
/* 63EE148 80079C18 0C004626 */   addiu     $a2, $s2, 0xC
/* 63EE14C 80079C1C 1800A48F */  lw         $a0, 0x18($sp)
/* 63EE150 80079C20 1C00A58F */  lw         $a1, 0x1C($sp)
/* 63EE154 80079C24 203A010C */  jal        func_8004E880
/* 63EE158 80079C28 21300000 */   addu      $a2, $zero, $zero
/* 63EE15C 80079C2C 1800A427 */  addiu      $a0, $sp, 0x18
/* 63EE160 80079C30 21280000 */  addu       $a1, $zero, $zero
/* 63EE164 80079C34 7A3B010C */  jal        func_8004EDE8
/* 63EE168 80079C38 460042A2 */   sb        $v0, 0x46($s2)
/* 63EE16C 80079C3C 21204000 */  addu       $a0, $v0, $zero
/* 63EE170 80079C40 2000A58F */  lw         $a1, 0x20($sp)
/* 63EE174 80079C44 203A010C */  jal        func_8004E880
/* 63EE178 80079C48 21300000 */   addu      $a2, $zero, $zero
/* 63EE17C 80079C4C 2FE70108 */  j          .Llevel_27_80079CBC
/* 63EE180 80079C50 450042A2 */   sb        $v0, 0x45($s2)
.Llevel_27_80079C54:
/* 63EE184 80079C54 45004292 */  lbu        $v0, 0x45($s2)
/* 63EE188 80079C58 0D006392 */  lbu        $v1, 0xD($s3)
/* 63EE18C 80079C5C 21204002 */  addu       $a0, $s2, $zero
/* 63EE190 80079C60 21104300 */  addu       $v0, $v0, $v1
/* 63EE194 80079C64 450042A2 */  sb         $v0, 0x45($s2)
/* 63EE198 80079C68 46004292 */  lbu        $v0, 0x46($s2)
/* 63EE19C 80079C6C 0E006392 */  lbu        $v1, 0xE($s3)
/* 63EE1A0 80079C70 04000524 */  addiu      $a1, $zero, 0x4
/* 63EE1A4 80079C74 21104300 */  addu       $v0, $v0, $v1
/* 63EE1A8 80079C78 4957010C */  jal        func_80055D24
/* 63EE1AC 80079C7C 460042A2 */   sb        $v0, 0x46($s2)
/* 63EE1B0 80079C80 21204002 */  addu       $a0, $s2, $zero
/* 63EE1B4 80079C84 21280000 */  addu       $a1, $zero, $zero
/* 63EE1B8 80079C88 2800B027 */  addiu      $s0, $sp, 0x28
/* 63EE1BC 80079C8C C557010C */  jal        func_80055F14
/* 63EE1C0 80079C90 21300002 */   addu      $a2, $s0, $zero
/* 63EE1C4 80079C94 21200002 */  addu       $a0, $s0, $zero
/* 63EE1C8 80079C98 0C005126 */  addiu      $s1, $s2, 0xC
/* 63EE1CC 80079C9C 21282002 */  addu       $a1, $s1, $zero
/* 63EE1D0 80079CA0 723C010C */  jal        func_8004F1C8
/* 63EE1D4 80079CA4 21300002 */   addu      $a2, $s0, $zero
/* 63EE1D8 80079CA8 21202002 */  addu       $a0, $s1, $zero
/* 63EE1DC 80079CAC 0000658E */  lw         $a1, 0x0($s3)
/* 63EE1E0 80079CB0 21300002 */  addu       $a2, $s0, $zero
/* 63EE1E4 80079CB4 653C010C */  jal        func_8004F194
/* 63EE1E8 80079CB8 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_27_80079CBC:
/* 63EE1EC 80079CBC 3800B027 */  addiu      $s0, $sp, 0x38
/* 63EE1F0 80079CC0 21200002 */  addu       $a0, $s0, $zero
/* 63EE1F4 80079CC4 0C005126 */  addiu      $s1, $s2, 0xC
/* 63EE1F8 80079CC8 5E3C010C */  jal        func_8004F178
/* 63EE1FC 80079CCC 21282002 */   addu      $a1, $s1, $zero
/* 63EE200 80079CD0 21200002 */  addu       $a0, $s0, $zero
/* 63EE204 80079CD4 2C010524 */  addiu      $a1, $zero, 0x12C
/* 63EE208 80079CD8 21300000 */  addu       $a2, $zero, $zero
/* 63EE20C 80079CDC 0800828E */  lw         $v0, 0x8($s4)
/* 63EE210 80079CE0 21380000 */  addu       $a3, $zero, $zero
/* 63EE214 80079CE4 00024224 */  addiu      $v0, $v0, 0x200
/* 63EE218 80079CE8 4000A2AF */  sw         $v0, 0x40($sp)
/* 63EE21C 80079CEC 0010023C */  lui        $v0, (0x10000000 >> 16)
/* 63EE220 80079CF0 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EE224 80079CF4 8C6E000C */  jal        func_8001BA30
/* 63EE228 80079CF8 1400B2AF */   sw        $s2, 0x14($sp)
/* 63EE22C 80079CFC 06004010 */  beqz       $v0, .Llevel_27_80079D18
/* 63EE230 80079D00 21204002 */   addu      $a0, $s2, $zero
/* 63EE234 80079D04 04000524 */  addiu      $a1, $zero, 0x4
/* 63EE238 80079D08 C4EE000C */  jal        func_8003BB10
/* 63EE23C 80079D0C 21300000 */   addu      $a2, $zero, $zero
/* 63EE240 80079D10 7FE70108 */  j          .Llevel_27_80079DFC
/* 63EE244 80079D14 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_27_80079D18:
/* 63EE248 80079D18 21202002 */  addu       $a0, $s1, $zero
/* 63EE24C 80079D1C 90010524 */  addiu      $a1, $zero, 0x190
/* 63EE250 80079D20 A270000C */  jal        func_8001C288
/* 63EE254 80079D24 26000624 */   addiu     $a2, $zero, 0x26
/* 63EE258 80079D28 24004010 */  beqz       $v0, .Llevel_27_80079DBC
/* 63EE25C 80079D2C 04006426 */   addiu     $a0, $s3, 0x4
/* 63EE260 80079D30 0C006292 */  lbu        $v0, 0xC($s3)
/* 63EE264 80079D34 00000000 */  nop
/* 63EE268 80079D38 0B004010 */  beqz       $v0, .Llevel_27_80079D68
/* 63EE26C 80079D3C 21204002 */   addu      $a0, $s2, $zero
/* 63EE270 80079D40 0780053C */  lui        $a1, %hi(D_80070328)
/* 63EE274 80079D44 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 63EE278 80079D48 5E3C010C */  jal        func_8004F178
/* 63EE27C 80079D4C 21202002 */   addu      $a0, $s1, $zero
/* 63EE280 80079D50 21204002 */  addu       $a0, $s2, $zero
/* 63EE284 80079D54 04000524 */  addiu      $a1, $zero, 0x4
/* 63EE288 80079D58 C4EE000C */  jal        func_8003BB10
/* 63EE28C 80079D5C 21300000 */   addu      $a2, $zero, $zero
/* 63EE290 80079D60 7FE70108 */  j          .Llevel_27_80079DFC
/* 63EE294 80079D64 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_27_80079D68:
/* 63EE298 80079D68 21280000 */  addu       $a1, $zero, $zero
/* 63EE29C 80079D6C 4800B027 */  addiu      $s0, $sp, 0x48
/* 63EE2A0 80079D70 C557010C */  jal        func_80055F14
/* 63EE2A4 80079D74 21300002 */   addu      $a2, $s0, $zero
/* 63EE2A8 80079D78 21200002 */  addu       $a0, $s0, $zero
/* 63EE2AC 80079D7C 21282002 */  addu       $a1, $s1, $zero
/* 63EE2B0 80079D80 723C010C */  jal        func_8004F1C8
/* 63EE2B4 80079D84 21300002 */   addu      $a2, $s0, $zero
/* 63EE2B8 80079D88 21202002 */  addu       $a0, $s1, $zero
/* 63EE2BC 80079D8C 0780053C */  lui        $a1, %hi(D_80070328)
/* 63EE2C0 80079D90 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 63EE2C4 80079D94 653C010C */  jal        func_8004F194
/* 63EE2C8 80079D98 21300002 */   addu      $a2, $s0, $zero
/* 63EE2CC 80079D9C 21204002 */  addu       $a0, $s2, $zero
/* 63EE2D0 80079DA0 02000524 */  addiu      $a1, $zero, 0x2
/* 63EE2D4 80079DA4 2D000224 */  addiu      $v0, $zero, 0x2D
/* 63EE2D8 80079DA8 E0D3000C */  jal        func_80034F80
/* 63EE2DC 80079DAC 040062AE */   sw        $v0, 0x4($s3)
/* 63EE2E0 80079DB0 01000224 */  addiu      $v0, $zero, 0x1
/* 63EE2E4 80079DB4 ABE70108 */  j          .Llevel_27_80079EAC
/* 63EE2E8 80079DB8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_27_80079DBC:
/* 63EE2EC 80079DBC 69D6000C */  jal        func_800359A4
/* 63EE2F0 80079DC0 04000524 */   addiu     $a1, $zero, 0x4
/* 63EE2F4 80079DC4 0B004014 */  bnez       $v0, .Llevel_27_80079DF4
/* 63EE2F8 80079DC8 20000224 */   addiu     $v0, $zero, 0x20
/* 63EE2FC 80079DCC 0C006292 */  lbu        $v0, 0xC($s3)
/* 63EE300 80079DD0 00000000 */  nop
/* 63EE304 80079DD4 35004014 */  bnez       $v0, .Llevel_27_80079EAC
/* 63EE308 80079DD8 00000000 */   nop
/* 63EE30C 80079DDC 0000628E */  lw         $v0, 0x0($s3)
/* 63EE310 80079DE0 00000000 */  nop
/* 63EE314 80079DE4 48004390 */  lbu        $v1, 0x48($v0)
/* 63EE318 80079DE8 02000224 */  addiu      $v0, $zero, 0x2
/* 63EE31C 80079DEC 2F006214 */  bne        $v1, $v0, .Llevel_27_80079EAC
/* 63EE320 80079DF0 20000224 */   addiu     $v0, $zero, 0x20
.Llevel_27_80079DF4:
/* 63EE324 80079DF4 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 63EE328 80079DF8 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_27_80079DFC:
/* 63EE32C 80079DFC ABE70108 */  j          .Llevel_27_80079EAC
/* 63EE330 80079E00 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_27_80079E04:
/* 63EE334 80079E04 45004292 */  lbu        $v0, 0x45($s2)
/* 63EE338 80079E08 0D006392 */  lbu        $v1, 0xD($s3)
/* 63EE33C 80079E0C 21204002 */  addu       $a0, $s2, $zero
/* 63EE340 80079E10 21104300 */  addu       $v0, $v0, $v1
/* 63EE344 80079E14 450042A2 */  sb         $v0, 0x45($s2)
/* 63EE348 80079E18 46004292 */  lbu        $v0, 0x46($s2)
/* 63EE34C 80079E1C 0E006392 */  lbu        $v1, 0xE($s3)
/* 63EE350 80079E20 04000524 */  addiu      $a1, $zero, 0x4
/* 63EE354 80079E24 21104300 */  addu       $v0, $v0, $v1
/* 63EE358 80079E28 4957010C */  jal        func_80055D24
/* 63EE35C 80079E2C 460042A2 */   sb        $v0, 0x46($s2)
/* 63EE360 80079E30 21204002 */  addu       $a0, $s2, $zero
/* 63EE364 80079E34 21280000 */  addu       $a1, $zero, $zero
/* 63EE368 80079E38 5800B027 */  addiu      $s0, $sp, 0x58
/* 63EE36C 80079E3C C557010C */  jal        func_80055F14
/* 63EE370 80079E40 21300002 */   addu      $a2, $s0, $zero
/* 63EE374 80079E44 21200002 */  addu       $a0, $s0, $zero
/* 63EE378 80079E48 0C005126 */  addiu      $s1, $s2, 0xC
/* 63EE37C 80079E4C 21282002 */  addu       $a1, $s1, $zero
/* 63EE380 80079E50 723C010C */  jal        func_8004F1C8
/* 63EE384 80079E54 21300002 */   addu      $a2, $s0, $zero
/* 63EE388 80079E58 21202002 */  addu       $a0, $s1, $zero
/* 63EE38C 80079E5C 0780053C */  lui        $a1, %hi(D_80070328)
/* 63EE390 80079E60 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 63EE394 80079E64 653C010C */  jal        func_8004F194
/* 63EE398 80079E68 21300002 */   addu      $a2, $s0, $zero
/* 63EE39C 80079E6C 04006426 */  addiu      $a0, $s3, 0x4
/* 63EE3A0 80079E70 69D6000C */  jal        func_800359A4
/* 63EE3A4 80079E74 04000524 */   addiu     $a1, $zero, 0x4
/* 63EE3A8 80079E78 0C004010 */  beqz       $v0, .Llevel_27_80079EAC
/* 63EE3AC 80079E7C 00000000 */   nop
/* 63EE3B0 80079E80 A9E70108 */  j          .Llevel_27_80079EA4
/* 63EE3B4 80079E84 00000000 */   nop
.Llevel_27_80079E88:
/* 63EE3B8 80079E88 4F004392 */  lbu        $v1, 0x4F($s2)
/* 63EE3BC 80079E8C 00000000 */  nop
/* 63EE3C0 80079E90 7800622C */  sltiu      $v0, $v1, 0x78
/* 63EE3C4 80079E94 03004010 */  beqz       $v0, .Llevel_27_80079EA4
/* 63EE3C8 80079E98 08006224 */   addiu     $v0, $v1, 0x8
/* 63EE3CC 80079E9C ABE70108 */  j          .Llevel_27_80079EAC
/* 63EE3D0 80079EA0 4F0042A2 */   sb        $v0, 0x4F($s2)
.Llevel_27_80079EA4:
/* 63EE3D4 80079EA4 C656010C */  jal        func_80055B18
/* 63EE3D8 80079EA8 21204002 */   addu      $a0, $s2, $zero
.Llevel_27_80079EAC:
/* 63EE3DC 80079EAC 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 63EE3E0 80079EB0 7800B48F */  lw         $s4, 0x78($sp)
/* 63EE3E4 80079EB4 7400B38F */  lw         $s3, 0x74($sp)
/* 63EE3E8 80079EB8 7000B28F */  lw         $s2, 0x70($sp)
/* 63EE3EC 80079EBC 6C00B18F */  lw         $s1, 0x6C($sp)
/* 63EE3F0 80079EC0 6800B08F */  lw         $s0, 0x68($sp)
/* 63EE3F4 80079EC4 8000BD27 */  addiu      $sp, $sp, 0x80
/* 63EE3F8 80079EC8 0800E003 */  jr         $ra
/* 63EE3FC 80079ECC 00000000 */   nop
.size MobyUpdate_413_level_27, . - MobyUpdate_413_level_27
