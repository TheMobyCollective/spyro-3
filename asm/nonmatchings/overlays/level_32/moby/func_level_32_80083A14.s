.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80083A14
/* 6DEAF44 80083A14 58FFBD27 */  addiu      $sp, $sp, -0xA8
/* 6DEAF48 80083A18 9400B5AF */  sw         $s5, 0x94($sp)
/* 6DEAF4C 80083A1C 21A88000 */  addu       $s5, $a0, $zero
/* 6DEAF50 80083A20 A400BFAF */  sw         $ra, 0xA4($sp)
/* 6DEAF54 80083A24 A000BEAF */  sw         $fp, 0xA0($sp)
/* 6DEAF58 80083A28 9C00B7AF */  sw         $s7, 0x9C($sp)
/* 6DEAF5C 80083A2C 9800B6AF */  sw         $s6, 0x98($sp)
/* 6DEAF60 80083A30 9000B4AF */  sw         $s4, 0x90($sp)
/* 6DEAF64 80083A34 8C00B3AF */  sw         $s3, 0x8C($sp)
/* 6DEAF68 80083A38 8800B2AF */  sw         $s2, 0x88($sp)
/* 6DEAF6C 80083A3C 8400B1AF */  sw         $s1, 0x84($sp)
/* 6DEAF70 80083A40 8000B0AF */  sw         $s0, 0x80($sp)
/* 6DEAF74 80083A44 4800A392 */  lbu        $v1, 0x48($s5)
/* 6DEAF78 80083A48 0000B08E */  lw         $s0, 0x0($s5)
/* 6DEAF7C 80083A4C 05006010 */  beqz       $v1, .Llevel_32_80083A64
/* 6DEAF80 80083A50 01000224 */   addiu     $v0, $zero, 0x1
/* 6DEAF84 80083A54 FB006210 */  beq        $v1, $v0, .Llevel_32_80083E44
/* 6DEAF88 80083A58 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DEAF8C 80083A5C FC0F0208 */  j          .Llevel_32_80083FF0
/* 6DEAF90 80083A60 00000000 */   nop
.Llevel_32_80083A64:
/* 6DEAF94 80083A64 0C00A28E */  lw         $v0, 0xC($s5)
/* 6DEAF98 80083A68 00000000 */  nop
/* 6DEAF9C 80083A6C 00044228 */  slti       $v0, $v0, 0x400
/* 6DEAFA0 80083A70 5D014014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEAFA4 80083A74 00000000 */   nop
/* 6DEAFA8 80083A78 1000A28E */  lw         $v0, 0x10($s5)
/* 6DEAFAC 80083A7C 00000000 */  nop
/* 6DEAFB0 80083A80 00044228 */  slti       $v0, $v0, 0x400
/* 6DEAFB4 80083A84 58014014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEAFB8 80083A88 00000000 */   nop
/* 6DEAFBC 80083A8C 1400A28E */  lw         $v0, 0x14($s5)
/* 6DEAFC0 80083A90 00000000 */  nop
/* 6DEAFC4 80083A94 00044228 */  slti       $v0, $v0, 0x400
/* 6DEAFC8 80083A98 53014014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEAFCC 80083A9C 00000000 */   nop
/* 6DEAFD0 80083AA0 0800028E */  lw         $v0, 0x8($s0)
/* 6DEAFD4 80083AA4 00000000 */  nop
/* 6DEAFD8 80083AA8 3D004010 */  beqz       $v0, .Llevel_32_80083BA0
/* 6DEAFDC 80083AAC 00000000 */   nop
/* 6DEAFE0 80083AB0 48004290 */  lbu        $v0, 0x48($v0)
/* 6DEAFE4 80083AB4 00000000 */  nop
/* 6DEAFE8 80083AB8 8000422C */  sltiu      $v0, $v0, 0x80
/* 6DEAFEC 80083ABC 02004014 */  bnez       $v0, .Llevel_32_80083AC8
/* 6DEAFF0 80083AC0 00000000 */   nop
/* 6DEAFF4 80083AC4 080000AE */  sw         $zero, 0x8($s0)
.Llevel_32_80083AC8:
/* 6DEAFF8 80083AC8 0800028E */  lw         $v0, 0x8($s0)
/* 6DEAFFC 80083ACC 00000000 */  nop
/* 6DEB000 80083AD0 33004010 */  beqz       $v0, .Llevel_32_80083BA0
/* 6DEB004 80083AD4 21300000 */   addu      $a2, $zero, $zero
/* 6DEB008 80083AD8 0C00438C */  lw         $v1, 0xC($v0)
/* 6DEB00C 80083ADC 0C00A48E */  lw         $a0, 0xC($s5)
/* 6DEB010 80083AE0 1000428C */  lw         $v0, 0x10($v0)
/* 6DEB014 80083AE4 1000A58E */  lw         $a1, 0x10($s5)
/* 6DEB018 80083AE8 23206400 */  subu       $a0, $v1, $a0
/* 6DEB01C 80083AEC 203A010C */  jal        func_8004E880
/* 6DEB020 80083AF0 23284500 */   subu      $a1, $v0, $a1
/* 6DEB024 80083AF4 4600A492 */  lbu        $a0, 0x46($s5)
/* 6DEB028 80083AF8 4FD8000C */  jal        func_8003613C
/* 6DEB02C 80083AFC 21284000 */   addu      $a1, $v0, $zero
/* 6DEB030 80083B00 21184000 */  addu       $v1, $v0, $zero
/* 6DEB034 80083B04 04006228 */  slti       $v0, $v1, 0x4
/* 6DEB038 80083B08 03004014 */  bnez       $v0, .Llevel_32_80083B18
/* 6DEB03C 80083B0C FDFF6228 */   slti      $v0, $v1, -0x3
/* 6DEB040 80083B10 03000324 */  addiu      $v1, $zero, 0x3
/* 6DEB044 80083B14 FDFF6228 */  slti       $v0, $v1, -0x3
.Llevel_32_80083B18:
/* 6DEB048 80083B18 02004010 */  beqz       $v0, .Llevel_32_80083B24
/* 6DEB04C 80083B1C 00000000 */   nop
/* 6DEB050 80083B20 FDFF0324 */  addiu      $v1, $zero, -0x3
.Llevel_32_80083B24:
/* 6DEB054 80083B24 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DEB058 80083B28 00000000 */  nop
/* 6DEB05C 80083B2C 21104300 */  addu       $v0, $v0, $v1
/* 6DEB060 80083B30 4600A2A2 */  sb         $v0, 0x46($s5)
/* 6DEB064 80083B34 0800058E */  lw         $a1, 0x8($s0)
/* 6DEB068 80083B38 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DEB06C 80083B3C CD3C010C */  jal        func_8004F334
/* 6DEB070 80083B40 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6DEB074 80083B44 21204000 */  addu       $a0, $v0, $zero
/* 6DEB078 80083B48 0800038E */  lw         $v1, 0x8($s0)
/* 6DEB07C 80083B4C 1400A58E */  lw         $a1, 0x14($s5)
/* 6DEB080 80083B50 1400628C */  lw         $v0, 0x14($v1)
/* 6DEB084 80083B54 21300000 */  addu       $a2, $zero, $zero
/* 6DEB088 80083B58 203A010C */  jal        func_8004E880
/* 6DEB08C 80083B5C 23284500 */   subu      $a1, $v0, $a1
/* 6DEB090 80083B60 4500A492 */  lbu        $a0, 0x45($s5)
/* 6DEB094 80083B64 4FD8000C */  jal        func_8003613C
/* 6DEB098 80083B68 21284000 */   addu      $a1, $v0, $zero
/* 6DEB09C 80083B6C 21184000 */  addu       $v1, $v0, $zero
/* 6DEB0A0 80083B70 04006228 */  slti       $v0, $v1, 0x4
/* 6DEB0A4 80083B74 03004014 */  bnez       $v0, .Llevel_32_80083B84
/* 6DEB0A8 80083B78 FDFF6228 */   slti      $v0, $v1, -0x3
/* 6DEB0AC 80083B7C 03000324 */  addiu      $v1, $zero, 0x3
/* 6DEB0B0 80083B80 FDFF6228 */  slti       $v0, $v1, -0x3
.Llevel_32_80083B84:
/* 6DEB0B4 80083B84 02004010 */  beqz       $v0, .Llevel_32_80083B90
/* 6DEB0B8 80083B88 00000000 */   nop
/* 6DEB0BC 80083B8C FDFF0324 */  addiu      $v1, $zero, -0x3
.Llevel_32_80083B90:
/* 6DEB0C0 80083B90 4500A292 */  lbu        $v0, 0x45($s5)
/* 6DEB0C4 80083B94 00000000 */  nop
/* 6DEB0C8 80083B98 21104300 */  addu       $v0, $v0, $v1
/* 6DEB0CC 80083B9C 4500A2A2 */  sb         $v0, 0x45($s5)
.Llevel_32_80083BA0:
/* 6DEB0D0 80083BA0 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DEB0D4 80083BA4 00000000 */  nop
/* 6DEB0D8 80083BA8 40100200 */  sll        $v0, $v0, 1
/* 6DEB0DC 80083BAC 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEB0E0 80083BB0 21082200 */  addu       $at, $at, $v0
/* 6DEB0E4 80083BB4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEB0E8 80083BB8 0000028E */  lw         $v0, 0x0($s0)
/* 6DEB0EC 80083BBC 00000000 */  nop
/* 6DEB0F0 80083BC0 18006200 */  mult       $v1, $v0
/* 6DEB0F4 80083BC4 4500A292 */  lbu        $v0, 0x45($s5)
/* 6DEB0F8 80083BC8 00000000 */  nop
/* 6DEB0FC 80083BCC 40100200 */  sll        $v0, $v0, 1
/* 6DEB100 80083BD0 12400000 */  mflo       $t0
/* 6DEB104 80083BD4 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEB108 80083BD8 21082200 */  addu       $at, $at, $v0
/* 6DEB10C 80083BDC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEB110 80083BE0 03130800 */  sra        $v0, $t0, 12
/* 6DEB114 80083BE4 18004300 */  mult       $v0, $v1
/* 6DEB118 80083BE8 12400000 */  mflo       $t0
/* 6DEB11C 80083BEC 03130800 */  sra        $v0, $t0, 12
/* 6DEB120 80083BF0 2800A2AF */  sw         $v0, 0x28($sp)
/* 6DEB124 80083BF4 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DEB128 80083BF8 00000000 */  nop
/* 6DEB12C 80083BFC 40100200 */  sll        $v0, $v0, 1
/* 6DEB130 80083C00 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DEB134 80083C04 21082200 */  addu       $at, $at, $v0
/* 6DEB138 80083C08 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DEB13C 80083C0C 0000028E */  lw         $v0, 0x0($s0)
/* 6DEB140 80083C10 00000000 */  nop
/* 6DEB144 80083C14 18006200 */  mult       $v1, $v0
/* 6DEB148 80083C18 4500A292 */  lbu        $v0, 0x45($s5)
/* 6DEB14C 80083C1C 00000000 */  nop
/* 6DEB150 80083C20 40100200 */  sll        $v0, $v0, 1
/* 6DEB154 80083C24 12400000 */  mflo       $t0
/* 6DEB158 80083C28 0680013C */  lui        $at, %hi(D_80065920)
/* 6DEB15C 80083C2C 21082200 */  addu       $at, $at, $v0
/* 6DEB160 80083C30 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DEB164 80083C34 03130800 */  sra        $v0, $t0, 12
/* 6DEB168 80083C38 18004300 */  mult       $v0, $v1
/* 6DEB16C 80083C3C 12400000 */  mflo       $t0
/* 6DEB170 80083C40 03130800 */  sra        $v0, $t0, 12
/* 6DEB174 80083C44 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 6DEB178 80083C48 4500A292 */  lbu        $v0, 0x45($s5)
/* 6DEB17C 80083C4C 00000000 */  nop
/* 6DEB180 80083C50 40100200 */  sll        $v0, $v0, 1
/* 6DEB184 80083C54 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DEB188 80083C58 21082200 */  addu       $at, $at, $v0
/* 6DEB18C 80083C5C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DEB190 80083C60 0000028E */  lw         $v0, 0x0($s0)
/* 6DEB194 80083C64 00000000 */  nop
/* 6DEB198 80083C68 18006200 */  mult       $v1, $v0
/* 6DEB19C 80083C6C 1800A427 */  addiu      $a0, $sp, 0x18
/* 6DEB1A0 80083C70 0C00B126 */  addiu      $s1, $s5, 0xC
/* 6DEB1A4 80083C74 21282002 */  addu       $a1, $s1, $zero
/* 6DEB1A8 80083C78 12400000 */  mflo       $t0
/* 6DEB1AC 80083C7C 03130800 */  sra        $v0, $t0, 12
/* 6DEB1B0 80083C80 5E3C010C */  jal        func_8004F178
/* 6DEB1B4 80083C84 3000A2AF */   sw        $v0, 0x30($sp)
/* 6DEB1B8 80083C88 21202002 */  addu       $a0, $s1, $zero
/* 6DEB1BC 80083C8C 21282002 */  addu       $a1, $s1, $zero
/* 6DEB1C0 80083C90 653C010C */  jal        func_8004F194
/* 6DEB1C4 80083C94 2800A627 */   addiu     $a2, $sp, 0x28
/* 6DEB1C8 80083C98 0C00A68E */  lw         $a2, 0xC($s5)
/* 6DEB1CC 80083C9C 00000000 */  nop
/* 6DEB1D0 80083CA0 0004C228 */  slti       $v0, $a2, 0x400
/* 6DEB1D4 80083CA4 D0004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB1D8 80083CA8 00000000 */   nop
/* 6DEB1DC 80083CAC 1000A58E */  lw         $a1, 0x10($s5)
/* 6DEB1E0 80083CB0 00000000 */  nop
/* 6DEB1E4 80083CB4 0004A228 */  slti       $v0, $a1, 0x400
/* 6DEB1E8 80083CB8 CB004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB1EC 80083CBC 00000000 */   nop
/* 6DEB1F0 80083CC0 1400A48E */  lw         $a0, 0x14($s5)
/* 6DEB1F4 80083CC4 00000000 */  nop
/* 6DEB1F8 80083CC8 00048228 */  slti       $v0, $a0, 0x400
/* 6DEB1FC 80083CCC C6004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB200 80083CD0 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 6DEB204 80083CD4 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 6DEB208 80083CD8 2A106600 */  slt        $v0, $v1, $a2
/* 6DEB20C 80083CDC C2004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB210 80083CE0 2A106500 */   slt       $v0, $v1, $a1
/* 6DEB214 80083CE4 C0004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB218 80083CE8 2A106400 */   slt       $v0, $v1, $a0
/* 6DEB21C 80083CEC BE004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB220 80083CF0 1800A427 */   addiu     $a0, $sp, 0x18
/* 6DEB224 80083CF4 DA60000C */  jal        func_80018368
/* 6DEB228 80083CF8 21282002 */   addu      $a1, $s1, $zero
/* 6DEB22C 80083CFC 1E004014 */  bnez       $v0, .Llevel_32_80083D78
/* 6DEB230 80083D00 01000224 */   addiu     $v0, $zero, 0x1
/* 6DEB234 80083D04 21202002 */  addu       $a0, $s1, $zero
/* 6DEB238 80083D08 2C010524 */  addiu      $a1, $zero, 0x12C
/* 6DEB23C 80083D0C 21300000 */  addu       $a2, $zero, $zero
/* 6DEB240 80083D10 1300023C */  lui        $v0, (0x130000 >> 16)
/* 6DEB244 80083D14 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEB248 80083D18 3A00A392 */  lbu        $v1, 0x3A($s5)
/* 6DEB24C 80083D1C 21380000 */  addu       $a3, $zero, $zero
/* 6DEB250 80083D20 40100300 */  sll        $v0, $v1, 1
/* 6DEB254 80083D24 21104300 */  addu       $v0, $v0, $v1
/* 6DEB258 80083D28 80100200 */  sll        $v0, $v0, 2
/* 6DEB25C 80083D2C 23104300 */  subu       $v0, $v0, $v1
/* 6DEB260 80083D30 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DEB264 80083D34 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DEB268 80083D38 C0100200 */  sll        $v0, $v0, 3
/* 6DEB26C 80083D3C 21186200 */  addu       $v1, $v1, $v0
/* 6DEB270 80083D40 8C6E000C */  jal        func_8001BA30
/* 6DEB274 80083D44 1400A3AF */   sw        $v1, 0x14($sp)
/* 6DEB278 80083D48 21184000 */  addu       $v1, $v0, $zero
/* 6DEB27C 80083D4C 0C006010 */  beqz       $v1, .Llevel_32_80083D80
/* 6DEB280 80083D50 04000426 */   addiu     $a0, $s0, 0x4
/* 6DEB284 80083D54 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DEB288 80083D58 00000000 */  nop
/* 6DEB28C 80083D5C 03004014 */  bnez       $v0, .Llevel_32_80083D6C
/* 6DEB290 80083D60 510062A0 */   sb        $v0, 0x51($v1)
/* 6DEB294 80083D64 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEB298 80083D68 510062A0 */  sb         $v0, 0x51($v1)
.Llevel_32_80083D6C:
/* 6DEB29C 80083D6C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEB2A0 80083D70 0C0002AE */  sw         $v0, 0xC($s0)
/* 6DEB2A4 80083D74 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_32_80083D78:
/* 6DEB2A8 80083D78 FC0F0208 */  j          .Llevel_32_80083FF0
/* 6DEB2AC 80083D7C 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_32_80083D80:
/* 6DEB2B0 80083D80 69D6000C */  jal        func_800359A4
/* 6DEB2B4 80083D84 04000524 */   addiu     $a1, $zero, 0x4
/* 6DEB2B8 80083D88 97004014 */  bnez       $v0, .Llevel_32_80083FE8
/* 6DEB2BC 80083D8C 3800B027 */   addiu     $s0, $sp, 0x38
/* 6DEB2C0 80083D90 21200002 */  addu       $a0, $s0, $zero
/* 6DEB2C4 80083D94 4400A292 */  lbu        $v0, 0x44($s5)
/* 6DEB2C8 80083D98 21282002 */  addu       $a1, $s1, $zero
/* 6DEB2CC 80083D9C F4004224 */  addiu      $v0, $v0, 0xF4
/* 6DEB2D0 80083DA0 5E3C010C */  jal        func_8004F178
/* 6DEB2D4 80083DA4 4400A2A2 */   sb        $v0, 0x44($s5)
/* 6DEB2D8 80083DA8 21200000 */  addu       $a0, $zero, $zero
/* 6DEB2DC 80083DAC F7D8000C */  jal        func_800363DC
/* 6DEB2E0 80083DB0 32000524 */   addiu     $a1, $zero, 0x32
/* 6DEB2E4 80083DB4 21200000 */  addu       $a0, $zero, $zero
/* 6DEB2E8 80083DB8 3800A38F */  lw         $v1, 0x38($sp)
/* 6DEB2EC 80083DBC 32000524 */  addiu      $a1, $zero, 0x32
/* 6DEB2F0 80083DC0 21186200 */  addu       $v1, $v1, $v0
/* 6DEB2F4 80083DC4 F7D8000C */  jal        func_800363DC
/* 6DEB2F8 80083DC8 3800A3AF */   sw        $v1, 0x38($sp)
/* 6DEB2FC 80083DCC 21200000 */  addu       $a0, $zero, $zero
/* 6DEB300 80083DD0 3C00A38F */  lw         $v1, 0x3C($sp)
/* 6DEB304 80083DD4 32000524 */  addiu      $a1, $zero, 0x32
/* 6DEB308 80083DD8 21186200 */  addu       $v1, $v1, $v0
/* 6DEB30C 80083DDC F7D8000C */  jal        func_800363DC
/* 6DEB310 80083DE0 3C00A3AF */   sw        $v1, 0x3C($sp)
/* 6DEB314 80083DE4 21200000 */  addu       $a0, $zero, $zero
/* 6DEB318 80083DE8 4000A38F */  lw         $v1, 0x40($sp)
/* 6DEB31C 80083DEC 0A000524 */  addiu      $a1, $zero, 0xA
/* 6DEB320 80083DF0 21186200 */  addu       $v1, $v1, $v0
/* 6DEB324 80083DF4 F7D8000C */  jal        func_800363DC
/* 6DEB328 80083DF8 4000A3AF */   sw        $v1, 0x40($sp)
/* 6DEB32C 80083DFC 21200000 */  addu       $a0, $zero, $zero
/* 6DEB330 80083E00 0A000524 */  addiu      $a1, $zero, 0xA
/* 6DEB334 80083E04 F7D8000C */  jal        func_800363DC
/* 6DEB338 80083E08 4800A2AF */   sw        $v0, 0x48($sp)
/* 6DEB33C 80083E0C 0A000424 */  addiu      $a0, $zero, 0xA
/* 6DEB340 80083E10 0F000524 */  addiu      $a1, $zero, 0xF
/* 6DEB344 80083E14 DBD8000C */  jal        func_8003636C
/* 6DEB348 80083E18 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 6DEB34C 80083E1C 01000424 */  addiu      $a0, $zero, 0x1
/* 6DEB350 80083E20 27000524 */  addiu      $a1, $zero, 0x27
/* 6DEB354 80083E24 21300002 */  addu       $a2, $s0, $zero
/* 6DEB358 80083E28 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 6DEB35C 80083E2C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 6DEB360 80083E30 4800A727 */  addiu      $a3, $sp, 0x48
/* 6DEB364 80083E34 09F86000 */  jalr       $v1
/* 6DEB368 80083E38 5000A2AF */   sw        $v0, 0x50($sp)
/* 6DEB36C 80083E3C FC0F0208 */  j          .Llevel_32_80083FF0
/* 6DEB370 80083E40 00000000 */   nop
.Llevel_32_80083E44:
/* 6DEB374 80083E44 E8030524 */  addiu      $a1, $zero, 0x3E8
/* 6DEB378 80083E48 21300000 */  addu       $a2, $zero, $zero
/* 6DEB37C 80083E4C 1300023C */  lui        $v0, (0x130000 >> 16)
/* 6DEB380 80083E50 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEB384 80083E54 3A00A392 */  lbu        $v1, 0x3A($s5)
/* 6DEB388 80083E58 21380000 */  addu       $a3, $zero, $zero
/* 6DEB38C 80083E5C 40100300 */  sll        $v0, $v1, 1
/* 6DEB390 80083E60 21104300 */  addu       $v0, $v0, $v1
/* 6DEB394 80083E64 80100200 */  sll        $v0, $v0, 2
/* 6DEB398 80083E68 23104300 */  subu       $v0, $v0, $v1
/* 6DEB39C 80083E6C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DEB3A0 80083E70 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DEB3A4 80083E74 C0100200 */  sll        $v0, $v0, 3
/* 6DEB3A8 80083E78 21186200 */  addu       $v1, $v1, $v0
/* 6DEB3AC 80083E7C 8C6E000C */  jal        func_8001BA30
/* 6DEB3B0 80083E80 1400A3AF */   sw        $v1, 0x14($sp)
/* 6DEB3B4 80083E84 0C00028E */  lw         $v0, 0xC($s0)
/* 6DEB3B8 80083E88 00000000 */  nop
/* 6DEB3BC 80083E8C 04004010 */  beqz       $v0, .Llevel_32_80083EA0
/* 6DEB3C0 80083E90 00000000 */   nop
/* 6DEB3C4 80083E94 2120A002 */  addu       $a0, $s5, $zero
/* 6DEB3C8 80083E98 AA0F0208 */  j          .Llevel_32_80083EA8
/* 6DEB3CC 80083E9C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_32_80083EA0:
/* 6DEB3D0 80083EA0 2120A002 */  addu       $a0, $s5, $zero
/* 6DEB3D4 80083EA4 21280000 */  addu       $a1, $zero, $zero
.Llevel_32_80083EA8:
/* 6DEB3D8 80083EA8 AFEE000C */  jal        func_8003BABC
/* 6DEB3DC 80083EAC 21300000 */   addu      $a2, $zero, $zero
/* 6DEB3E0 80083EB0 21B80000 */  addu       $s7, $zero, $zero
/* 6DEB3E4 80083EB4 5800B627 */  addiu      $s6, $sp, 0x58
/* 6DEB3E8 80083EB8 4800BE27 */  addiu      $fp, $sp, 0x48
.Llevel_32_80083EBC:
/* 6DEB3EC 80083EBC 28000424 */  addiu      $a0, $zero, 0x28
/* 6DEB3F0 80083EC0 DBD8000C */  jal        func_8003636C
/* 6DEB3F4 80083EC4 3C000524 */   addiu     $a1, $zero, 0x3C
/* 6DEB3F8 80083EC8 28000424 */  addiu      $a0, $zero, 0x28
/* 6DEB3FC 80083ECC 3C000524 */  addiu      $a1, $zero, 0x3C
/* 6DEB400 80083ED0 DBD8000C */  jal        func_8003636C
/* 6DEB404 80083ED4 21984000 */   addu      $s3, $v0, $zero
/* 6DEB408 80083ED8 9171010C */  jal        rand
/* 6DEB40C 80083EDC 21A04000 */   addu      $s4, $v0, $zero
/* 6DEB410 80083EE0 21200000 */  addu       $a0, $zero, $zero
/* 6DEB414 80083EE4 00080524 */  addiu      $a1, $zero, 0x800
/* 6DEB418 80083EE8 DBD8000C */  jal        func_8003636C
/* 6DEB41C 80083EEC FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 6DEB420 80083EF0 21884000 */  addu       $s1, $v0, $zero
/* 6DEB424 80083EF4 8B3A010C */  jal        func_8004EA2C
/* 6DEB428 80083EF8 21202002 */   addu      $a0, $s1, $zero
/* 6DEB42C 80083EFC 21204002 */  addu       $a0, $s2, $zero
/* 6DEB430 80083F00 8B3A010C */  jal        func_8004EA2C
/* 6DEB434 80083F04 21804000 */   addu      $s0, $v0, $zero
/* 6DEB438 80083F08 18005300 */  mult       $v0, $s3
/* 6DEB43C 80083F0C 12400000 */  mflo       $t0
/* 6DEB440 80083F10 83811000 */  sra        $s0, $s0, 6
/* 6DEB444 80083F14 00000000 */  nop
/* 6DEB448 80083F18 18000802 */  mult       $s0, $t0
/* 6DEB44C 80083F1C 21202002 */  addu       $a0, $s1, $zero
/* 6DEB450 80083F20 12400000 */  mflo       $t0
/* 6DEB454 80083F24 83140800 */  sra        $v0, $t0, 18
/* 6DEB458 80083F28 8B3A010C */  jal        func_8004EA2C
/* 6DEB45C 80083F2C 4800A2AF */   sw        $v0, 0x48($sp)
/* 6DEB460 80083F30 21204002 */  addu       $a0, $s2, $zero
/* 6DEB464 80083F34 793A010C */  jal        func_8004E9E4
/* 6DEB468 80083F38 21804000 */   addu      $s0, $v0, $zero
/* 6DEB46C 80083F3C 18005300 */  mult       $v0, $s3
/* 6DEB470 80083F40 12400000 */  mflo       $t0
/* 6DEB474 80083F44 83811000 */  sra        $s0, $s0, 6
/* 6DEB478 80083F48 00000000 */  nop
/* 6DEB47C 80083F4C 18000802 */  mult       $s0, $t0
/* 6DEB480 80083F50 21202002 */  addu       $a0, $s1, $zero
/* 6DEB484 80083F54 12400000 */  mflo       $t0
/* 6DEB488 80083F58 83140800 */  sra        $v0, $t0, 18
/* 6DEB48C 80083F5C 793A010C */  jal        func_8004E9E4
/* 6DEB490 80083F60 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 6DEB494 80083F64 18005400 */  mult       $v0, $s4
/* 6DEB498 80083F68 0100F726 */  addiu      $s7, $s7, 0x1
/* 6DEB49C 80083F6C 2120C002 */  addu       $a0, $s6, $zero
/* 6DEB4A0 80083F70 2128C003 */  addu       $a1, $fp, $zero
/* 6DEB4A4 80083F74 12400000 */  mflo       $t0
/* 6DEB4A8 80083F78 03130800 */  sra        $v0, $t0, 12
/* 6DEB4AC 80083F7C 5E3C010C */  jal        func_8004F178
/* 6DEB4B0 80083F80 5000A2AF */   sw        $v0, 0x50($sp)
/* 6DEB4B4 80083F84 2120C002 */  addu       $a0, $s6, $zero
/* 6DEB4B8 80083F88 3A3C010C */  jal        func_8004F0E8
/* 6DEB4BC 80083F8C 01000524 */   addiu     $a1, $zero, 0x1
/* 6DEB4C0 80083F90 2120C002 */  addu       $a0, $s6, $zero
/* 6DEB4C4 80083F94 2128C002 */  addu       $a1, $s6, $zero
/* 6DEB4C8 80083F98 653C010C */  jal        func_8004F194
/* 6DEB4CC 80083F9C 0C00A626 */   addiu     $a2, $s5, 0xC
/* 6DEB4D0 80083FA0 01000424 */  addiu      $a0, $zero, 0x1
/* 6DEB4D4 80083FA4 21280000 */  addu       $a1, $zero, $zero
/* 6DEB4D8 80083FA8 2130C002 */  addu       $a2, $s6, $zero
/* 6DEB4DC 80083FAC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEB4E0 80083FB0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEB4E4 80083FB4 00000000 */  nop
/* 6DEB4E8 80083FB8 09F84000 */  jalr       $v0
/* 6DEB4EC 80083FBC 2138C003 */   addu      $a3, $fp, $zero
/* 6DEB4F0 80083FC0 0800E22A */  slti       $v0, $s7, 0x8
/* 6DEB4F4 80083FC4 BDFF4014 */  bnez       $v0, .Llevel_32_80083EBC
/* 6DEB4F8 80083FC8 0C00A626 */   addiu     $a2, $s5, 0xC
/* 6DEB4FC 80083FCC 08000424 */  addiu      $a0, $zero, 0x8
/* 6DEB500 80083FD0 46000524 */  addiu      $a1, $zero, 0x46
/* 6DEB504 80083FD4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEB508 80083FD8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEB50C 80083FDC 00000000 */  nop
/* 6DEB510 80083FE0 09F84000 */  jalr       $v0
/* 6DEB514 80083FE4 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_32_80083FE8:
/* 6DEB518 80083FE8 C656010C */  jal        func_80055B18
/* 6DEB51C 80083FEC 2120A002 */   addu      $a0, $s5, $zero
.Llevel_32_80083FF0:
/* 6DEB520 80083FF0 A400BF8F */  lw         $ra, 0xA4($sp)
/* 6DEB524 80083FF4 A000BE8F */  lw         $fp, 0xA0($sp)
/* 6DEB528 80083FF8 9C00B78F */  lw         $s7, 0x9C($sp)
/* 6DEB52C 80083FFC 9800B68F */  lw         $s6, 0x98($sp)
/* 6DEB530 80084000 9400B58F */  lw         $s5, 0x94($sp)
/* 6DEB534 80084004 9000B48F */  lw         $s4, 0x90($sp)
/* 6DEB538 80084008 8C00B38F */  lw         $s3, 0x8C($sp)
/* 6DEB53C 8008400C 8800B28F */  lw         $s2, 0x88($sp)
/* 6DEB540 80084010 8400B18F */  lw         $s1, 0x84($sp)
/* 6DEB544 80084014 8000B08F */  lw         $s0, 0x80($sp)
/* 6DEB548 80084018 A800BD27 */  addiu      $sp, $sp, 0xA8
/* 6DEB54C 8008401C 0800E003 */  jr         $ra
/* 6DEB550 80084020 00000000 */   nop
.size func_level_32_80083A14, . - func_level_32_80083A14
