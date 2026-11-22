.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1015_level_50
/* 95E3F7C 8008FA4C 48FFBD27 */  addiu      $sp, $sp, -0xB8
/* 95E3F80 8008FA50 B400BFAF */  sw         $ra, 0xB4($sp)
/* 95E3F84 8008FA54 B000BEAF */  sw         $fp, 0xB0($sp)
/* 95E3F88 8008FA58 AC00B7AF */  sw         $s7, 0xAC($sp)
/* 95E3F8C 8008FA5C A800B6AF */  sw         $s6, 0xA8($sp)
/* 95E3F90 8008FA60 A400B5AF */  sw         $s5, 0xA4($sp)
/* 95E3F94 8008FA64 A000B4AF */  sw         $s4, 0xA0($sp)
/* 95E3F98 8008FA68 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 95E3F9C 8008FA6C 9800B2AF */  sw         $s2, 0x98($sp)
/* 95E3FA0 8008FA70 9400B1AF */  sw         $s1, 0x94($sp)
/* 95E3FA4 8008FA74 9000B0AF */  sw         $s0, 0x90($sp)
/* 95E3FA8 8008FA78 3800A4AF */  sw         $a0, 0x38($sp)
/* 95E3FAC 8008FA7C 0000978C */  lw         $s7, 0x0($a0)
/* 95E3FB0 8008FA80 21A80000 */  addu       $s5, $zero, $zero
/* 95E3FB4 8008FA84 1000E28E */  lw         $v0, 0x10($s7)
/* 95E3FB8 8008FA88 21980000 */  addu       $s3, $zero, $zero
/* 95E3FBC 8008FA8C 0000428C */  lw         $v0, 0x0($v0)
/* 95E3FC0 8008FA90 01001224 */  addiu      $s2, $zero, 0x1
/* 95E3FC4 8008FA94 4000A2AF */  sw         $v0, 0x40($sp)
/* 95E3FC8 8008FA98 410080A0 */  sb         $zero, 0x41($a0)
/* 95E3FCC 8008FA9C 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E3FD0 8008FAA0 14000424 */  addiu      $a0, $zero, 0x14
/* 95E3FD4 8008FAA4 4C00E0A1 */  sb         $zero, 0x4C($t7)
/* 95E3FD8 8008FAA8 4D00E0A1 */  sb         $zero, 0x4D($t7)
/* 95E3FDC 8008FAAC 0400EE8E */  lw         $t6, 0x4($s7)
/* 95E3FE0 8008FAB0 0200EF86 */  lh         $t7, 0x2($s7)
/* 95E3FE4 8008FAB4 0406DE25 */  addiu      $fp, $t6, 0x604
/* 95E3FE8 8008FAB8 5800AFAF */  sw         $t7, 0x58($sp)
/* 95E3FEC 8008FABC 4406CF25 */  addiu      $t7, $t6, 0x644
/* 95E3FF0 8008FAC0 4800AFAF */  sw         $t7, 0x48($sp)
/* 95E3FF4 8008FAC4 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E3FF8 8008FAC8 5800A397 */  lhu        $v1, 0x58($sp)
/* 95E3FFC 8008FACC 4800E291 */  lbu        $v0, 0x48($t7)
/* 95E4000 8008FAD0 0000EF86 */  lh         $t7, 0x0($s7)
/* 95E4004 8008FAD4 10004410 */  beq        $v0, $a0, .Llevel_50_8008FB18
/* 95E4008 8008FAD8 5000AFAF */   sw        $t7, 0x50($sp)
/* 95E400C 8008FADC 5E016224 */  addiu      $v0, $v1, 0x15E
/* 95E4010 8008FAE0 0200E2A6 */  sh         $v0, 0x2($s7)
/* 95E4014 8008FAE4 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E4018 8008FAE8 00000000 */  nop
/* 95E401C 8008FAEC 4800E291 */  lbu        $v0, 0x48($t7)
/* 95E4020 8008FAF0 00000000 */  nop
/* 95E4024 8008FAF4 09004410 */  beq        $v0, $a0, .Llevel_50_8008FB1C
/* 95E4028 8008FAF8 21B00000 */   addu      $s6, $zero, $zero
/* 95E402C 8008FAFC 1600E286 */  lh         $v0, 0x16($s7)
/* 95E4030 8008FB00 00000000 */  nop
/* 95E4034 8008FB04 21184000 */  addu       $v1, $v0, $zero
/* 95E4038 8008FB08 3A074228 */  slti       $v0, $v0, 0x73A
/* 95E403C 8008FB0C 03004010 */  beqz       $v0, .Llevel_50_8008FB1C
/* 95E4040 8008FB10 FA006224 */   addiu     $v0, $v1, 0xFA
/* 95E4044 8008FB14 1600E2A6 */  sh         $v0, 0x16($s7)
.Llevel_50_8008FB18:
/* 95E4048 8008FB18 21B00000 */  addu       $s6, $zero, $zero
.Llevel_50_8008FB1C:
/* 95E404C 8008FB1C 06800D3C */  lui        $t5, %hi(D_80065920)
/* 95E4050 8008FB20 2059AD25 */  addiu      $t5, $t5, %lo(D_80065920)
/* 95E4054 8008FB24 06800C3C */  lui        $t4, %hi(D_800658A0)
/* 95E4058 8008FB28 A0588C25 */  addiu      $t4, $t4, %lo(D_800658A0)
.Llevel_50_8008FB2C:
/* 95E405C 8008FB2C 21800000 */  addu       $s0, $zero, $zero
/* 95E4060 8008FB30 80001424 */  addiu      $s4, $zero, 0x80
/* 95E4064 8008FB34 40101500 */  sll        $v0, $s5, 1
/* 95E4068 8008FB38 21105500 */  addu       $v0, $v0, $s5
/* 95E406C 8008FB3C 80100200 */  sll        $v0, $v0, 2
/* 95E4070 8008FB40 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E4074 8008FB44 21884E00 */  addu       $s1, $v0, $t6
/* 95E4078 8008FB48 4600E291 */  lbu        $v0, 0x46($t7)
/* 95E407C 8008FB4C C0181600 */  sll        $v1, $s6, 3
/* 95E4080 8008FB50 21104300 */  addu       $v0, $v0, $v1
/* 95E4084 8008FB54 FF004230 */  andi       $v0, $v0, 0xFF
/* 95E4088 8008FB58 40100200 */  sll        $v0, $v0, 1
/* 95E408C 8008FB5C 21584D00 */  addu       $t3, $v0, $t5
/* 95E4090 8008FB60 21504C00 */  addu       $t2, $v0, $t4
.Llevel_50_8008FB64:
/* 95E4094 8008FB64 5000A48F */  lw         $a0, 0x50($sp)
/* 95E4098 8008FB68 02006016 */  bnez       $s3, .Llevel_50_8008FB74
/* 95E409C 8008FB6C 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 95E40A0 8008FB70 5800A48F */  lw         $a0, 0x58($sp)
.Llevel_50_8008FB74:
/* 95E40A4 8008FB74 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 95E40A8 8008FB78 01006326 */  addiu      $v1, $s3, 0x1
/* 95E40AC 8008FB7C 18006200 */  mult       $v1, $v0
/* 95E40B0 8008FB80 C3170300 */  sra        $v0, $v1, 31
/* 95E40B4 8008FB84 10780000 */  mfhi       $t7
/* 95E40B8 8008FB88 2398E201 */  subu       $s3, $t7, $v0
/* 95E40BC 8008FB8C 40101300 */  sll        $v0, $s3, 1
/* 95E40C0 8008FB90 21105300 */  addu       $v0, $v0, $s3
/* 95E40C4 8008FB94 02004016 */  bnez       $s2, .Llevel_50_8008FBA0
/* 95E40C8 8008FB98 23986200 */   subu      $s3, $v1, $v0
/* 95E40CC 8008FB9C 1600E486 */  lh         $a0, 0x16($s7)
.Llevel_50_8008FBA0:
/* 95E40D0 8008FBA0 21108D02 */  addu       $v0, $s4, $t5
/* 95E40D4 8008FBA4 1800A0AF */  sw         $zero, 0x18($sp)
/* 95E40D8 8008FBA8 00004284 */  lh         $v0, 0x0($v0)
/* 95E40DC 8008FBAC 00000000 */  nop
/* 95E40E0 8008FBB0 18004400 */  mult       $v0, $a0
/* 95E40E4 8008FBB4 21108C02 */  addu       $v0, $s4, $t4
/* 95E40E8 8008FBB8 12180000 */  mflo       $v1
/* 95E40EC 8008FBBC 031B0300 */  sra        $v1, $v1, 12
/* 95E40F0 8008FBC0 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 95E40F4 8008FBC4 00004284 */  lh         $v0, 0x0($v0)
/* 95E40F8 8008FBC8 00000000 */  nop
/* 95E40FC 8008FBCC 18004400 */  mult       $v0, $a0
/* 95E4100 8008FBD0 12400000 */  mflo       $t0
/* 95E4104 8008FBD4 03130800 */  sra        $v0, $t0, 12
/* 95E4108 8008FBD8 2000A2AF */  sw         $v0, 0x20($sp)
/* 95E410C 8008FBDC 00004485 */  lh         $a0, 0x0($t2)
/* 95E4110 8008FBE0 00000000 */  nop
/* 95E4114 8008FBE4 18006400 */  mult       $v1, $a0
/* 95E4118 8008FBE8 01004726 */  addiu      $a3, $s2, 0x1
/* 95E411C 8008FBEC 12180000 */  mflo       $v1
/* 95E4120 8008FBF0 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 95E4124 8008FBF4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 95E4128 8008FBF8 1800E200 */  mult       $a3, $v0
/* 95E412C 8008FBFC 03430300 */  sra        $t0, $v1, 12
/* 95E4130 8008FC00 00006385 */  lh         $v1, 0x0($t3)
/* 95E4134 8008FC04 23100800 */  negu       $v0, $t0
/* 95E4138 8008FC08 000022AE */  sw         $v0, 0x0($s1)
/* 95E413C 8008FC0C 10480000 */  mfhi       $t1
/* 95E4140 8008FC10 1C00A28F */  lw         $v0, 0x1C($sp)
/* 95E4144 8008FC14 00000000 */  nop
/* 95E4148 8008FC18 18004300 */  mult       $v0, $v1
/* 95E414C 8008FC1C 12400000 */  mflo       $t0
/* 95E4150 8008FC20 1800A28F */  lw         $v0, 0x18($sp)
/* 95E4154 8008FC24 00000000 */  nop
/* 95E4158 8008FC28 18004400 */  mult       $v0, $a0
/* 95E415C 8008FC2C 21302002 */  addu       $a2, $s1, $zero
/* 95E4160 8008FC30 0100B526 */  addiu      $s5, $s5, 0x1
/* 95E4164 8008FC34 01001026 */  addiu      $s0, $s0, 0x1
/* 95E4168 8008FC38 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E416C 8008FC3C 20009426 */  addiu      $s4, $s4, 0x20
/* 95E4170 8008FC40 0C00E525 */  addiu      $a1, $t7, 0xC
/* 95E4174 8008FC44 83180900 */  sra        $v1, $t1, 2
/* 95E4178 8008FC48 21202002 */  addu       $a0, $s1, $zero
/* 95E417C 8008FC4C C3170700 */  sra        $v0, $a3, 31
/* 95E4180 8008FC50 23906200 */  subu       $s2, $v1, $v0
/* 95E4184 8008FC54 03430800 */  sra        $t0, $t0, 12
/* 95E4188 8008FC58 12C00000 */  mflo       $t8
/* 95E418C 8008FC5C 03131800 */  sra        $v0, $t8, 12
/* 95E4190 8008FC60 21104800 */  addu       $v0, $v0, $t0
/* 95E4194 8008FC64 040022AE */  sw         $v0, 0x4($s1)
/* 95E4198 8008FC68 80101200 */  sll        $v0, $s2, 2
/* 95E419C 8008FC6C 21105200 */  addu       $v0, $v0, $s2
/* 95E41A0 8008FC70 40100200 */  sll        $v0, $v0, 1
/* 95E41A4 8008FC74 2000A38F */  lw         $v1, 0x20($sp)
/* 95E41A8 8008FC78 2390E200 */  subu       $s2, $a3, $v0
/* 95E41AC 8008FC7C 080023AE */  sw         $v1, 0x8($s1)
/* 95E41B0 8008FC80 7800AAAF */  sw         $t2, 0x78($sp)
/* 95E41B4 8008FC84 7C00ABAF */  sw         $t3, 0x7C($sp)
/* 95E41B8 8008FC88 8000ACAF */  sw         $t4, 0x80($sp)
/* 95E41BC 8008FC8C 8400ADAF */  sw         $t5, 0x84($sp)
/* 95E41C0 8008FC90 653C010C */  jal        func_8004F194
/* 95E41C4 8008FC94 8800AEAF */   sw        $t6, 0x88($sp)
/* 95E41C8 8008FC98 0800022A */  slti       $v0, $s0, 0x8
/* 95E41CC 8008FC9C 7800AA8F */  lw         $t2, 0x78($sp)
/* 95E41D0 8008FCA0 7C00AB8F */  lw         $t3, 0x7C($sp)
/* 95E41D4 8008FCA4 8000AC8F */  lw         $t4, 0x80($sp)
/* 95E41D8 8008FCA8 8400AD8F */  lw         $t5, 0x84($sp)
/* 95E41DC 8008FCAC 8800AE8F */  lw         $t6, 0x88($sp)
/* 95E41E0 8008FCB0 ACFF4014 */  bnez       $v0, .Llevel_50_8008FB64
/* 95E41E4 8008FCB4 0C003126 */   addiu     $s1, $s1, 0xC
/* 95E41E8 8008FCB8 0100D626 */  addiu      $s6, $s6, 0x1
/* 95E41EC 8008FCBC 1000C22A */  slti       $v0, $s6, 0x10
/* 95E41F0 8008FCC0 9AFF4014 */  bnez       $v0, .Llevel_50_8008FB2C
/* 95E41F4 8008FCC4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 95E41F8 8008FCC8 0006C2AD */  sw         $v0, 0x600($t6)
/* 95E41FC 8008FCCC 1400E386 */  lh         $v1, 0x14($s7)
/* 95E4200 8008FCD0 00000000 */  nop
/* 95E4204 8008FCD4 07006228 */  slti       $v0, $v1, 0x7
/* 95E4208 8008FCD8 10004014 */  bnez       $v0, .Llevel_50_8008FD1C
/* 95E420C 8008FCDC 04006228 */   slti      $v0, $v1, 0x4
/* 95E4210 8008FCE0 FAFF6224 */  addiu      $v0, $v1, -0x6
/* 95E4214 8008FCE4 80180200 */  sll        $v1, $v0, 2
/* 95E4218 8008FCE8 21186200 */  addu       $v1, $v1, $v0
/* 95E421C 8008FCEC 40180300 */  sll        $v1, $v1, 1
/* 95E4220 8008FCF0 40000224 */  addiu      $v0, $zero, 0x40
/* 95E4224 8008FCF4 23104300 */  subu       $v0, $v0, $v1
/* 95E4228 8008FCF8 02004104 */  bgez       $v0, .Llevel_50_8008FD04
/* 95E422C 8008FCFC 00000000 */   nop
/* 95E4230 8008FD00 21100000 */  addu       $v0, $zero, $zero
.Llevel_50_8008FD04:
/* 95E4234 8008FD04 0000C2A3 */  sb         $v0, 0x0($fp)
/* 95E4238 8008FD08 43100200 */  sra        $v0, $v0, 1
/* 95E423C 8008FD0C 0100C2A3 */  sb         $v0, 0x1($fp)
/* 95E4240 8008FD10 FF004230 */  andi       $v0, $v0, 0xFF
/* 95E4244 8008FD14 5A3F0208 */  j          .Llevel_50_8008FD68
/* 95E4248 8008FD18 42100200 */   srl       $v0, $v0, 1
.Llevel_50_8008FD1C:
/* 95E424C 8008FD1C 09004014 */  bnez       $v0, .Llevel_50_8008FD44
/* 95E4250 8008FD20 80000224 */   addiu     $v0, $zero, 0x80
/* 95E4254 8008FD24 FDFF6224 */  addiu      $v0, $v1, -0x3
/* 95E4258 8008FD28 00110200 */  sll        $v0, $v0, 4
/* 95E425C 8008FD2C 80000324 */  addiu      $v1, $zero, 0x80
/* 95E4260 8008FD30 23106200 */  subu       $v0, $v1, $v0
/* 95E4264 8008FD34 0000C2A3 */  sb         $v0, 0x0($fp)
/* 95E4268 8008FD38 0100C2A3 */  sb         $v0, 0x1($fp)
/* 95E426C 8008FD3C 5B3F0208 */  j          .Llevel_50_8008FD6C
/* 95E4270 8008FD40 0200C0A3 */   sb        $zero, 0x2($fp)
.Llevel_50_8008FD44:
/* 95E4274 8008FD44 0000C2A3 */  sb         $v0, 0x0($fp)
/* 95E4278 8008FD48 0100C2A3 */  sb         $v0, 0x1($fp)
/* 95E427C 8008FD4C 1400E286 */  lh         $v0, 0x14($s7)
/* 95E4280 8008FD50 80000324 */  addiu      $v1, $zero, 0x80
/* 95E4284 8008FD54 40110200 */  sll        $v0, $v0, 5
/* 95E4288 8008FD58 23106200 */  subu       $v0, $v1, $v0
/* 95E428C 8008FD5C 02004104 */  bgez       $v0, .Llevel_50_8008FD68
/* 95E4290 8008FD60 00000000 */   nop
/* 95E4294 8008FD64 21100000 */  addu       $v0, $zero, $zero
.Llevel_50_8008FD68:
/* 95E4298 8008FD68 0200C2A3 */  sb         $v0, 0x2($fp)
.Llevel_50_8008FD6C:
/* 95E429C 8008FD6C 1400E386 */  lh         $v1, 0x14($s7)
/* 95E42A0 8008FD70 00000000 */  nop
/* 95E42A4 8008FD74 06006228 */  slti       $v0, $v1, 0x6
/* 95E42A8 8008FD78 04004014 */  bnez       $v0, .Llevel_50_8008FD8C
/* 95E42AC 8008FD7C FF000224 */   addiu     $v0, $zero, 0xFF
/* 95E42B0 8008FD80 10000224 */  addiu      $v0, $zero, 0x10
/* 95E42B4 8008FD84 23104300 */  subu       $v0, $v0, $v1
/* 95E42B8 8008FD88 C0100200 */  sll        $v0, $v0, 3
.Llevel_50_8008FD8C:
/* 95E42BC 8008FD8C 0400C2A3 */  sb         $v0, 0x4($fp)
/* 95E42C0 8008FD90 0500C2A3 */  sb         $v0, 0x5($fp)
/* 95E42C4 8008FD94 0600C0A3 */  sb         $zero, 0x6($fp)
/* 95E42C8 8008FD98 21800000 */  addu       $s0, $zero, $zero
/* 95E42CC 8008FD9C 21A80000 */  addu       $s5, $zero, $zero
/* 95E42D0 8008FDA0 21B00000 */  addu       $s6, $zero, $zero
/* 95E42D4 8008FDA4 5555083C */  lui        $t0, (0x55555556 >> 16)
/* 95E42D8 8008FDA8 56550835 */  ori        $t0, $t0, (0x55555556 & 0xFFFF)
/* 95E42DC 8008FDAC 4800A78F */  lw         $a3, 0x48($sp)
.Llevel_50_8008FDB0:
/* 95E42E0 8008FDB0 18000802 */  mult       $s0, $t0
/* 95E42E4 8008FDB4 10580000 */  mfhi       $t3
/* 95E42E8 8008FDB8 01000626 */  addiu      $a2, $s0, 0x1
/* 95E42EC 8008FDBC 00000000 */  nop
/* 95E42F0 8008FDC0 1800C800 */  mult       $a2, $t0
/* 95E42F4 8008FDC4 0100B526 */  addiu      $s5, $s5, 0x1
/* 95E42F8 8008FDC8 09000426 */  addiu      $a0, $s0, 0x9
/* 95E42FC 8008FDCC 08000526 */  addiu      $a1, $s0, 0x8
/* 95E4300 8008FDD0 C31F1000 */  sra        $v1, $s0, 31
/* 95E4304 8008FDD4 10500000 */  mfhi       $t2
/* 95E4308 8008FDD8 0000F0A0 */  sb         $s0, 0x0($a3)
/* 95E430C 8008FDDC 0100E6A0 */  sb         $a2, 0x1($a3)
/* 95E4310 8008FDE0 18008800 */  mult       $a0, $t0
/* 95E4314 8008FDE4 0200E4A0 */  sb         $a0, 0x2($a3)
/* 95E4318 8008FDE8 0300E5A0 */  sb         $a1, 0x3($a3)
/* 95E431C 8008FDEC 23186301 */  subu       $v1, $t3, $v1
/* 95E4320 8008FDF0 40100300 */  sll        $v0, $v1, 1
/* 95E4324 8008FDF4 21104300 */  addu       $v0, $v0, $v1
/* 95E4328 8008FDF8 23100202 */  subu       $v0, $s0, $v0
/* 95E432C 8008FDFC 2180C000 */  addu       $s0, $a2, $zero
/* 95E4330 8008FE00 0100422C */  sltiu      $v0, $v0, 0x1
/* 95E4334 8008FE04 C31F1000 */  sra        $v1, $s0, 31
/* 95E4338 8008FE08 0400E2A0 */  sb         $v0, 0x4($a3)
/* 95E433C 8008FE0C 23184301 */  subu       $v1, $t2, $v1
/* 95E4340 8008FE10 10480000 */  mfhi       $t1
/* 95E4344 8008FE14 40100300 */  sll        $v0, $v1, 1
/* 95E4348 8008FE18 21104300 */  addu       $v0, $v0, $v1
/* 95E434C 8008FE1C 1800A800 */  mult       $a1, $t0
/* 95E4350 8008FE20 23100202 */  subu       $v0, $s0, $v0
/* 95E4354 8008FE24 0100422C */  sltiu      $v0, $v0, 0x1
/* 95E4358 8008FE28 C31F0400 */  sra        $v1, $a0, 31
/* 95E435C 8008FE2C 0500E2A0 */  sb         $v0, 0x5($a3)
/* 95E4360 8008FE30 23182301 */  subu       $v1, $t1, $v1
/* 95E4364 8008FE34 40100300 */  sll        $v0, $v1, 1
/* 95E4368 8008FE38 21104300 */  addu       $v0, $v0, $v1
/* 95E436C 8008FE3C 23208200 */  subu       $a0, $a0, $v0
/* 95E4370 8008FE40 0100842C */  sltiu      $a0, $a0, 0x1
/* 95E4374 8008FE44 C31F0500 */  sra        $v1, $a1, 31
/* 95E4378 8008FE48 0600E4A0 */  sb         $a0, 0x6($a3)
/* 95E437C 8008FE4C 10500000 */  mfhi       $t2
/* 95E4380 8008FE50 23184301 */  subu       $v1, $t2, $v1
/* 95E4384 8008FE54 40100300 */  sll        $v0, $v1, 1
/* 95E4388 8008FE58 21104300 */  addu       $v0, $v0, $v1
/* 95E438C 8008FE5C 2328A200 */  subu       $a1, $a1, $v0
/* 95E4390 8008FE60 0100A52C */  sltiu      $a1, $a1, 0x1
/* 95E4394 8008FE64 0700A22A */  slti       $v0, $s5, 0x7
/* 95E4398 8008FE68 03004014 */  bnez       $v0, .Llevel_50_8008FE78
/* 95E439C 8008FE6C 0700E5A0 */   sb        $a1, 0x7($a3)
/* 95E43A0 8008FE70 01001026 */  addiu      $s0, $s0, 0x1
/* 95E43A4 8008FE74 21A80000 */  addu       $s5, $zero, $zero
.Llevel_50_8008FE78:
/* 95E43A8 8008FE78 0100D626 */  addiu      $s6, $s6, 0x1
/* 95E43AC 8008FE7C 6900C22A */  slti       $v0, $s6, 0x69
/* 95E43B0 8008FE80 CBFF4014 */  bnez       $v0, .Llevel_50_8008FDB0
/* 95E43B4 8008FE84 0800E724 */   addiu     $a3, $a3, 0x8
/* 95E43B8 8008FE88 4800AF8F */  lw         $t7, 0x48($sp)
/* 95E43BC 8008FE8C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 95E43C0 8008FE90 4803E2AD */  sw         $v0, 0x348($t7)
/* 95E43C4 8008FE94 0800E28E */  lw         $v0, 0x8($s7)
/* 95E43C8 8008FE98 00000000 */  nop
/* 95E43CC 8008FE9C 09004014 */  bnez       $v0, .Llevel_50_8008FEC4
/* 95E43D0 8008FEA0 2120C001 */   addu      $a0, $t6, $zero
/* 95E43D4 8008FEA4 2128C003 */  addu       $a1, $fp, $zero
/* 95E43D8 8008FEA8 4800A68F */  lw         $a2, 0x48($sp)
/* 95E43DC 8008FEAC 4000AF8F */  lw         $t7, 0x40($sp)
/* 95E43E0 8008FEB0 01000224 */  addiu      $v0, $zero, 0x1
/* 95E43E4 8008FEB4 1000A2AF */  sw         $v0, 0x10($sp)
/* 95E43E8 8008FEB8 C042010C */  jal        func_80050B00
/* 95E43EC 8008FEBC 0C00E725 */   addiu     $a3, $t7, 0xC
/* 95E43F0 8008FEC0 0800E2AE */  sw         $v0, 0x8($s7)
.Llevel_50_8008FEC4:
/* 95E43F4 8008FEC4 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E43F8 8008FEC8 00000000 */  nop
/* 95E43FC 8008FECC 4800E391 */  lbu        $v1, 0x48($t7)
/* 95E4400 8008FED0 14000224 */  addiu      $v0, $zero, 0x14
/* 95E4404 8008FED4 40006210 */  beq        $v1, $v0, .Llevel_50_8008FFD8
/* 95E4408 8008FED8 00000000 */   nop
/* 95E440C 8008FEDC 1400E286 */  lh         $v0, 0x14($s7)
/* 95E4410 8008FEE0 00000000 */  nop
/* 95E4414 8008FEE4 80180200 */  sll        $v1, $v0, 2
/* 95E4418 8008FEE8 21206200 */  addu       $a0, $v1, $v0
/* 95E441C 8008FEEC 07004228 */  slti       $v0, $v0, 0x7
/* 95E4420 8008FEF0 03004014 */  bnez       $v0, .Llevel_50_8008FF00
/* 95E4424 8008FEF4 50000324 */   addiu     $v1, $zero, 0x50
/* 95E4428 8008FEF8 F63F0208 */  j          .Llevel_50_8008FFD8
/* 95E442C 8008FEFC 0C00E0AE */   sw        $zero, 0xC($s7)
.Llevel_50_8008FF00:
/* 95E4430 8008FF00 C0200400 */  sll        $a0, $a0, 3
/* 95E4434 8008FF04 1800A0AF */  sw         $zero, 0x18($sp)
/* 95E4438 8008FF08 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 95E443C 8008FF0C 2000A3AF */  sw         $v1, 0x20($sp)
/* 95E4440 8008FF10 0680013C */  lui        $at, %hi(D_800658A0)
/* 95E4444 8008FF14 21082400 */  addu       $at, $at, $a0
/* 95E4448 8008FF18 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 95E444C 8008FF1C 00000000 */  nop
/* 95E4450 8008FF20 18004300 */  mult       $v0, $v1
/* 95E4454 8008FF24 12400000 */  mflo       $t0
/* 95E4458 8008FF28 0680013C */  lui        $at, %hi(D_80065920)
/* 95E445C 8008FF2C 21082400 */  addu       $at, $at, $a0
/* 95E4460 8008FF30 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 95E4464 8008FF34 00000000 */  nop
/* 95E4468 8008FF38 18004300 */  mult       $v0, $v1
/* 95E446C 8008FF3C 3800A48F */  lw         $a0, 0x38($sp)
/* 95E4470 8008FF40 04000524 */  addiu      $a1, $zero, 0x4
/* 95E4474 8008FF44 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 95E4478 8008FF48 031B0800 */  sra        $v1, $t0, 12
/* 95E447C 8008FF4C 23100300 */  negu       $v0, $v1
/* 95E4480 8008FF50 2800A2AF */  sw         $v0, 0x28($sp)
/* 95E4484 8008FF54 12300000 */  mflo       $a2
/* 95E4488 8008FF58 031B0600 */  sra        $v1, $a2, 12
/* 95E448C 8008FF5C 4957010C */  jal        func_80055D24
/* 95E4490 8008FF60 3000A3AF */   sw        $v1, 0x30($sp)
/* 95E4494 8008FF64 2800B027 */  addiu      $s0, $sp, 0x28
/* 95E4498 8008FF68 21280002 */  addu       $a1, $s0, $zero
/* 95E449C 8008FF6C 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E44A0 8008FF70 21300002 */  addu       $a2, $s0, $zero
/* 95E44A4 8008FF74 5B3B010C */  jal        func_8004ED6C
/* 95E44A8 8008FF78 2000E425 */   addiu     $a0, $t7, 0x20
/* 95E44AC 8008FF7C 01000424 */  addiu      $a0, $zero, 0x1
/* 95E44B0 8008FF80 0D000524 */  addiu      $a1, $zero, 0xD
/* 95E44B4 8008FF84 21380002 */  addu       $a3, $s0, $zero
/* 95E44B8 8008FF88 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E44BC 8008FF8C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95E44C0 8008FF90 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95E44C4 8008FF94 00000000 */  nop
/* 95E44C8 8008FF98 09F84000 */  jalr       $v0
/* 95E44CC 8008FF9C 0C00E625 */   addiu     $a2, $t7, 0xC
/* 95E44D0 8008FFA0 0C00E38E */  lw         $v1, 0xC($s7)
/* 95E44D4 8008FFA4 00000000 */  nop
/* 95E44D8 8008FFA8 05006010 */  beqz       $v1, .Llevel_50_8008FFC0
/* 95E44DC 8008FFAC 21204000 */   addu      $a0, $v0, $zero
/* 95E44E0 8008FFB0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 95E44E4 8008FFB4 0C0082A0 */  sb         $v0, 0xC($a0)
/* 95E44E8 8008FFB8 0D0082A0 */  sb         $v0, 0xD($a0)
/* 95E44EC 8008FFBC 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_50_8008FFC0:
/* 95E44F0 8008FFC0 05008010 */  beqz       $a0, .Llevel_50_8008FFD8
/* 95E44F4 8008FFC4 BE000224 */   addiu     $v0, $zero, 0xBE
/* 95E44F8 8008FFC8 0C00E4AE */  sw         $a0, 0xC($s7)
/* 95E44FC 8008FFCC 0A0082A0 */  sb         $v0, 0xA($a0)
/* 95E4500 8008FFD0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 95E4504 8008FFD4 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_50_8008FFD8:
/* 95E4508 8008FFD8 1400E296 */  lhu        $v0, 0x14($s7)
/* 95E450C 8008FFDC 00000000 */  nop
/* 95E4510 8008FFE0 01004224 */  addiu      $v0, $v0, 0x1
/* 95E4514 8008FFE4 1400E2A6 */  sh         $v0, 0x14($s7)
/* 95E4518 8008FFE8 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E451C 8008FFEC 00000000 */  nop
/* 95E4520 8008FFF0 4800E391 */  lbu        $v1, 0x48($t7)
/* 95E4524 8008FFF4 14000224 */  addiu      $v0, $zero, 0x14
/* 95E4528 8008FFF8 08006210 */  beq        $v1, $v0, .Llevel_50_8009001C
/* 95E452C 8008FFFC 00000000 */   nop
/* 95E4530 80090000 0000E286 */  lh         $v0, 0x0($s7)
/* 95E4534 80090004 00000000 */  nop
/* 95E4538 80090008 21184000 */  addu       $v1, $v0, $zero
/* 95E453C 8009000C 58024228 */  slti       $v0, $v0, 0x258
/* 95E4540 80090010 02004010 */  beqz       $v0, .Llevel_50_8009001C
/* 95E4544 80090014 64006224 */   addiu     $v0, $v1, 0x64
/* 95E4548 80090018 0000E2A6 */  sh         $v0, 0x0($s7)
.Llevel_50_8009001C:
/* 95E454C 8009001C 1400E486 */  lh         $a0, 0x14($s7)
/* 95E4550 80090020 00000000 */  nop
/* 95E4554 80090024 0B008228 */  slti       $v0, $a0, 0xB
/* 95E4558 80090028 07004014 */  bnez       $v0, .Llevel_50_80090048
/* 95E455C 8009002C 10008228 */   slti      $v0, $a0, 0x10
/* 95E4560 80090030 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E4564 80090034 00000000 */  nop
/* 95E4568 80090038 4800E391 */  lbu        $v1, 0x48($t7)
/* 95E456C 8009003C 14000224 */  addiu      $v0, $zero, 0x14
/* 95E4570 80090040 12006210 */  beq        $v1, $v0, .Llevel_50_8009008C
/* 95E4574 80090044 10008228 */   slti      $v0, $a0, 0x10
.Llevel_50_80090048:
/* 95E4578 80090048 08004014 */  bnez       $v0, .Llevel_50_8009006C
/* 95E457C 8009004C 21780000 */   addu      $t7, $zero, $zero
/* 95E4580 80090050 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E4584 80090054 00000000 */  nop
/* 95E4588 80090058 4800E391 */  lbu        $v1, 0x48($t7)
/* 95E458C 8009005C 14000224 */  addiu      $v0, $zero, 0x14
/* 95E4590 80090060 16006214 */  bne        $v1, $v0, .Llevel_50_800900BC
/* 95E4594 80090064 00000000 */   nop
/* 95E4598 80090068 21780000 */  addu       $t7, $zero, $zero
.Llevel_50_8009006C:
/* 95E459C 8009006C 2200E011 */  beqz       $t7, .Llevel_50_800900F8
/* 95E45A0 80090070 14000224 */   addiu     $v0, $zero, 0x14
/* 95E45A4 80090074 3800AF8F */  lw         $t7, 0x38($sp)
/* 95E45A8 80090078 00000000 */  nop
/* 95E45AC 8009007C 4800E391 */  lbu        $v1, 0x48($t7)
/* 95E45B0 80090080 00000000 */  nop
/* 95E45B4 80090084 0D006214 */  bne        $v1, $v0, .Llevel_50_800900BC
/* 95E45B8 80090088 00000000 */   nop
.Llevel_50_8009008C:
/* 95E45BC 8009008C 3A00E391 */  lbu        $v1, 0x3A($t7)
/* 95E45C0 80090090 00000000 */  nop
/* 95E45C4 80090094 40100300 */  sll        $v0, $v1, 1
/* 95E45C8 80090098 21104300 */  addu       $v0, $v0, $v1
/* 95E45CC 8009009C 80100200 */  sll        $v0, $v0, 2
/* 95E45D0 800900A0 23104300 */  subu       $v0, $v0, $v1
/* 95E45D4 800900A4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 95E45D8 800900A8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 95E45DC 800900AC C0100200 */  sll        $v0, $v0, 3
/* 95E45E0 800900B0 21104300 */  addu       $v0, $v0, $v1
/* 95E45E4 800900B4 0A000324 */  addiu      $v1, $zero, 0xA
/* 95E45E8 800900B8 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_50_800900BC:
/* 95E45EC 800900BC 0800E48E */  lw         $a0, 0x8($s7)
/* 95E45F0 800900C0 00000000 */  nop
/* 95E45F4 800900C4 03008010 */  beqz       $a0, .Llevel_50_800900D4
/* 95E45F8 800900C8 00000000 */   nop
/* 95E45FC 800900CC E242010C */  jal        func_80050B88
/* 95E4600 800900D0 00000000 */   nop
.Llevel_50_800900D4:
/* 95E4604 800900D4 0C00E48E */  lw         $a0, 0xC($s7)
/* 95E4608 800900D8 00000000 */  nop
/* 95E460C 800900DC 03008010 */  beqz       $a0, .Llevel_50_800900EC
/* 95E4610 800900E0 00000000 */   nop
/* 95E4614 800900E4 E242010C */  jal        func_80050B88
/* 95E4618 800900E8 00000000 */   nop
.Llevel_50_800900EC:
/* 95E461C 800900EC 3800A48F */  lw         $a0, 0x38($sp)
/* 95E4620 800900F0 C656010C */  jal        func_80055B18
/* 95E4624 800900F4 00000000 */   nop
.Llevel_50_800900F8:
/* 95E4628 800900F8 B400BF8F */  lw         $ra, 0xB4($sp)
/* 95E462C 800900FC B000BE8F */  lw         $fp, 0xB0($sp)
/* 95E4630 80090100 AC00B78F */  lw         $s7, 0xAC($sp)
/* 95E4634 80090104 A800B68F */  lw         $s6, 0xA8($sp)
/* 95E4638 80090108 A400B58F */  lw         $s5, 0xA4($sp)
/* 95E463C 8009010C A000B48F */  lw         $s4, 0xA0($sp)
/* 95E4640 80090110 9C00B38F */  lw         $s3, 0x9C($sp)
/* 95E4644 80090114 9800B28F */  lw         $s2, 0x98($sp)
/* 95E4648 80090118 9400B18F */  lw         $s1, 0x94($sp)
/* 95E464C 8009011C 9000B08F */  lw         $s0, 0x90($sp)
/* 95E4650 80090120 B800BD27 */  addiu      $sp, $sp, 0xB8
/* 95E4654 80090124 0800E003 */  jr         $ra
/* 95E4658 80090128 00000000 */   nop
.size MobyUpdate_1015_level_50, . - MobyUpdate_1015_level_50
