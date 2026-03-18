.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007DB84
/* 7AA98B4 8007DB84 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 7AA98B8 8007DB88 7000B2AF */  sw         $s2, 0x70($sp)
/* 7AA98BC 8007DB8C 21908000 */  addu       $s2, $a0, $zero
/* 7AA98C0 8007DB90 8800BFAF */  sw         $ra, 0x88($sp)
/* 7AA98C4 8007DB94 8400B7AF */  sw         $s7, 0x84($sp)
/* 7AA98C8 8007DB98 8000B6AF */  sw         $s6, 0x80($sp)
/* 7AA98CC 8007DB9C 7C00B5AF */  sw         $s5, 0x7C($sp)
/* 7AA98D0 8007DBA0 7800B4AF */  sw         $s4, 0x78($sp)
/* 7AA98D4 8007DBA4 7400B3AF */  sw         $s3, 0x74($sp)
/* 7AA98D8 8007DBA8 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 7AA98DC 8007DBAC 6800B0AF */  sw         $s0, 0x68($sp)
/* 7AA98E0 8007DBB0 1800428E */  lw         $v0, 0x18($s2)
/* 7AA98E4 8007DBB4 0000578E */  lw         $s7, 0x0($s2)
/* 7AA98E8 8007DBB8 08004010 */  beqz       $v0, .Llevel_37_8007DBDC
/* 7AA98EC 8007DBBC 00000000 */   nop
/* 7AA98F0 8007DBC0 48004292 */  lbu        $v0, 0x48($s2)
/* 7AA98F4 8007DBC4 00000000 */  nop
/* 7AA98F8 8007DBC8 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 7AA98FC 8007DBCC 0200422C */  sltiu      $v0, $v0, 0x2
/* 7AA9900 8007DBD0 02004014 */  bnez       $v0, .Llevel_37_8007DBDC
/* 7AA9904 8007DBD4 0A000224 */   addiu     $v0, $zero, 0xA
/* 7AA9908 8007DBD8 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_37_8007DBDC:
/* 7AA990C 8007DBDC 48004392 */  lbu        $v1, 0x48($s2)
/* 7AA9910 8007DBE0 00000000 */  nop
/* 7AA9914 8007DBE4 09006010 */  beqz       $v1, .Llevel_37_8007DC0C
/* 7AA9918 8007DBE8 09000224 */   addiu     $v0, $zero, 0x9
/* 7AA991C 8007DBEC 67016004 */  bltz       $v1, .Llevel_37_8007E18C
/* 7AA9920 8007DBF0 0A000224 */   addiu     $v0, $zero, 0xA
/* 7AA9924 8007DBF4 8D006210 */  beq        $v1, $v0, .Llevel_37_8007DE2C
/* 7AA9928 8007DBF8 0B000224 */   addiu     $v0, $zero, 0xB
/* 7AA992C 8007DBFC A4006210 */  beq        $v1, $v0, .Llevel_37_8007DE90
/* 7AA9930 8007DC00 78051424 */   addiu     $s4, $zero, 0x578
/* 7AA9934 8007DC04 64F80108 */  j          .Llevel_37_8007E190
/* 7AA9938 8007DC08 21204002 */   addu      $a0, $s2, $zero
.Llevel_37_8007DC0C:
/* 7AA993C 8007DC0C 0780033C */  lui        $v1, %hi(D_8006E160)
/* 7AA9940 8007DC10 60E1638C */  lw         $v1, %lo(D_8006E160)($v1)
/* 7AA9944 8007DC14 00000000 */  nop
/* 7AA9948 8007DC18 04006210 */  beq        $v1, $v0, .Llevel_37_8007DC2C
/* 7AA994C 8007DC1C E6001124 */   addiu     $s1, $zero, 0xE6
/* 7AA9950 8007DC20 21204002 */  addu       $a0, $s2, $zero
/* 7AA9954 8007DC24 B34E000C */  jal        func_80013ACC
/* 7AA9958 8007DC28 0D000524 */   addiu     $a1, $zero, 0xD
.Llevel_37_8007DC2C:
/* 7AA995C 8007DC2C 1800A427 */  addiu      $a0, $sp, 0x18
/* 7AA9960 8007DC30 0C005026 */  addiu      $s0, $s2, 0xC
/* 7AA9964 8007DC34 5E3C010C */  jal        func_8004F178
/* 7AA9968 8007DC38 21280002 */   addu      $a1, $s0, $zero
/* 7AA996C 8007DC3C 21200000 */  addu       $a0, $zero, $zero
/* 7AA9970 8007DC40 F7D8000C */  jal        func_800363DC
/* 7AA9974 8007DC44 32000524 */   addiu     $a1, $zero, 0x32
/* 7AA9978 8007DC48 21200000 */  addu       $a0, $zero, $zero
/* 7AA997C 8007DC4C 2000A38F */  lw         $v1, 0x20($sp)
/* 7AA9980 8007DC50 FA000524 */  addiu      $a1, $zero, 0xFA
/* 7AA9984 8007DC54 B6036324 */  addiu      $v1, $v1, 0x3B6
/* 7AA9988 8007DC58 21186200 */  addu       $v1, $v1, $v0
/* 7AA998C 8007DC5C DBD8000C */  jal        func_8003636C
/* 7AA9990 8007DC60 2000A3AF */   sw        $v1, 0x20($sp)
/* 7AA9994 8007DC64 21200000 */  addu       $a0, $zero, $zero
/* 7AA9998 8007DC68 1800A38F */  lw         $v1, 0x18($sp)
/* 7AA999C 8007DC6C FA000524 */  addiu      $a1, $zero, 0xFA
/* 7AA99A0 8007DC70 21186200 */  addu       $v1, $v1, $v0
/* 7AA99A4 8007DC74 DBD8000C */  jal        func_8003636C
/* 7AA99A8 8007DC78 1800A3AF */   sw        $v1, 0x18($sp)
/* 7AA99AC 8007DC7C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 7AA99B0 8007DC80 00000000 */  nop
/* 7AA99B4 8007DC84 21186200 */  addu       $v1, $v1, $v0
/* 7AA99B8 8007DC88 9171010C */  jal        rand
/* 7AA99BC 8007DC8C 1C00A3AF */   sw        $v1, 0x1C($sp)
/* 7AA99C0 8007DC90 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA99C4 8007DC94 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7AA99C8 8007DC98 9171010C */  jal        rand
/* 7AA99CC 8007DC9C 2800A2AF */   sw        $v0, 0x28($sp)
/* 7AA99D0 8007DCA0 19000424 */  addiu      $a0, $zero, 0x19
/* 7AA99D4 8007DCA4 23000524 */  addiu      $a1, $zero, 0x23
/* 7AA99D8 8007DCA8 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA99DC 8007DCAC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 7AA99E0 8007DCB0 DBD8000C */  jal        func_8003636C
/* 7AA99E4 8007DCB4 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 7AA99E8 8007DCB8 5555043C */  lui        $a0, (0x55555556 >> 16)
/* 7AA99EC 8007DCBC 3000A2AF */  sw         $v0, 0x30($sp)
/* 7AA99F0 8007DCC0 0400E38E */  lw         $v1, 0x4($s7)
/* 7AA99F4 8007DCC4 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 7AA99F8 8007DCC8 18006400 */  mult       $v1, $a0
/* 7AA99FC 8007DCCC 46004292 */  lbu        $v0, 0x46($s2)
/* 7AA9A00 8007DCD0 00000000 */  nop
/* 7AA9A04 8007DCD4 40100200 */  sll        $v0, $v0, 1
/* 7AA9A08 8007DCD8 C31F0300 */  sra        $v1, $v1, 31
/* 7AA9A0C 8007DCDC 10480000 */  mfhi       $t1
/* 7AA9A10 8007DCE0 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA9A14 8007DCE4 21082200 */  addu       $at, $at, $v0
/* 7AA9A18 8007DCE8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7AA9A1C 8007DCEC 23182301 */  subu       $v1, $t1, $v1
/* 7AA9A20 8007DCF0 18004300 */  mult       $v0, $v1
/* 7AA9A24 8007DCF4 2800A28F */  lw         $v0, 0x28($sp)
/* 7AA9A28 8007DCF8 12480000 */  mflo       $t1
/* 7AA9A2C 8007DCFC 031B0900 */  sra        $v1, $t1, 12
/* 7AA9A30 8007DD00 21104300 */  addu       $v0, $v0, $v1
/* 7AA9A34 8007DD04 2800A2AF */  sw         $v0, 0x28($sp)
/* 7AA9A38 8007DD08 0400E38E */  lw         $v1, 0x4($s7)
/* 7AA9A3C 8007DD0C 00000000 */  nop
/* 7AA9A40 8007DD10 18006400 */  mult       $v1, $a0
/* 7AA9A44 8007DD14 46004292 */  lbu        $v0, 0x46($s2)
/* 7AA9A48 8007DD18 00000000 */  nop
/* 7AA9A4C 8007DD1C 40100200 */  sll        $v0, $v0, 1
/* 7AA9A50 8007DD20 C31F0300 */  sra        $v1, $v1, 31
/* 7AA9A54 8007DD24 10480000 */  mfhi       $t1
/* 7AA9A58 8007DD28 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA9A5C 8007DD2C 21082200 */  addu       $at, $at, $v0
/* 7AA9A60 8007DD30 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7AA9A64 8007DD34 23182301 */  subu       $v1, $t1, $v1
/* 7AA9A68 8007DD38 18004300 */  mult       $v0, $v1
/* 7AA9A6C 8007DD3C 0D000524 */  addiu      $a1, $zero, 0xD
/* 7AA9A70 8007DD40 1800A627 */  addiu      $a2, $sp, 0x18
/* 7AA9A74 8007DD44 2800A727 */  addiu      $a3, $sp, 0x28
/* 7AA9A78 8007DD48 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 7AA9A7C 8007DD4C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 7AA9A80 8007DD50 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA9A84 8007DD54 2C00A28F */  lw         $v0, 0x2C($sp)
/* 7AA9A88 8007DD58 12480000 */  mflo       $t1
/* 7AA9A8C 8007DD5C 031B0900 */  sra        $v1, $t1, 12
/* 7AA9A90 8007DD60 21104300 */  addu       $v0, $v0, $v1
/* 7AA9A94 8007DD64 09F80001 */  jalr       $t0
/* 7AA9A98 8007DD68 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 7AA9A9C 8007DD6C 21204002 */  addu       $a0, $s2, $zero
/* 7AA9AA0 8007DD70 03000524 */  addiu      $a1, $zero, 0x3
/* 7AA9AA4 8007DD74 21300000 */  addu       $a2, $zero, $zero
/* 7AA9AA8 8007DD78 21380000 */  addu       $a3, $zero, $zero
/* 7AA9AAC 8007DD7C 04000324 */  addiu      $v1, $zero, 0x4
/* 7AA9AB0 8007DD80 CFD5000C */  jal        func_8003573C
/* 7AA9AB4 8007DD84 020043A0 */   sb        $v1, 0x2($v0)
/* 7AA9AB8 8007DD88 0400E28E */  lw         $v0, 0x4($s7)
/* 7AA9ABC 8007DD8C 00000000 */  nop
/* 7AA9AC0 8007DD90 14004224 */  addiu      $v0, $v0, 0x14
/* 7AA9AC4 8007DD94 0400E2AE */  sw         $v0, 0x4($s7)
/* 7AA9AC8 8007DD98 2A102202 */  slt        $v0, $s1, $v0
/* 7AA9ACC 8007DD9C 02004010 */  beqz       $v0, .Llevel_37_8007DDA8
/* 7AA9AD0 8007DDA0 21204002 */   addu      $a0, $s2, $zero
/* 7AA9AD4 8007DDA4 0400F1AE */  sw         $s1, 0x4($s7)
.Llevel_37_8007DDA8:
/* 7AA9AD8 8007DDA8 2C010624 */  addiu      $a2, $zero, 0x12C
/* 7AA9ADC 8007DDAC 05000224 */  addiu      $v0, $zero, 0x5
/* 7AA9AE0 8007DDB0 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA9AE4 8007DDB4 0400E58E */  lw         $a1, 0x4($s7)
/* 7AA9AE8 8007DDB8 77D7000C */  jal        func_80035DDC
/* 7AA9AEC 8007DDBC 21380000 */   addu      $a3, $zero, $zero
/* 7AA9AF0 8007DDC0 07004010 */  beqz       $v0, .Llevel_37_8007DDE0
/* 7AA9AF4 8007DDC4 0200023C */   lui       $v0, (0x20000 >> 16)
/* 7AA9AF8 8007DDC8 1800438E */  lw         $v1, 0x18($s2)
/* 7AA9AFC 8007DDCC 46004492 */  lbu        $a0, 0x46($s2)
/* 7AA9B00 8007DDD0 25186200 */  or         $v1, $v1, $v0
/* 7AA9B04 8007DDD4 80008424 */  addiu      $a0, $a0, 0x80
/* 7AA9B08 8007DDD8 180043AE */  sw         $v1, 0x18($s2)
/* 7AA9B0C 8007DDDC 510044A2 */  sb         $a0, 0x51($s2)
.Llevel_37_8007DDE0:
/* 7AA9B10 8007DDE0 2120E002 */  addu       $a0, $s7, $zero
/* 7AA9B14 8007DDE4 69D6000C */  jal        func_800359A4
/* 7AA9B18 8007DDE8 04000524 */   addiu     $a1, $zero, 0x4
/* 7AA9B1C 8007DDEC 08004014 */  bnez       $v0, .Llevel_37_8007DE10
/* 7AA9B20 8007DDF0 0200023C */   lui       $v0, (0x20000 >> 16)
/* 7AA9B24 8007DDF4 0780053C */  lui        $a1, %hi(D_80070328)
/* 7AA9B28 8007DDF8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7AA9B2C 8007DDFC CD3C010C */  jal        func_8004F334
/* 7AA9B30 8007DE00 21200002 */   addu      $a0, $s0, $zero
/* 7AA9B34 8007DE04 20034228 */  slti       $v0, $v0, 0x320
/* 7AA9B38 8007DE08 E0004010 */  beqz       $v0, .Llevel_37_8007E18C
/* 7AA9B3C 8007DE0C 0200023C */   lui       $v0, (0x20000 >> 16)
.Llevel_37_8007DE10:
/* 7AA9B40 8007DE10 1800438E */  lw         $v1, 0x18($s2)
/* 7AA9B44 8007DE14 46004492 */  lbu        $a0, 0x46($s2)
/* 7AA9B48 8007DE18 25186200 */  or         $v1, $v1, $v0
/* 7AA9B4C 8007DE1C 80008424 */  addiu      $a0, $a0, 0x80
/* 7AA9B50 8007DE20 180043AE */  sw         $v1, 0x18($s2)
/* 7AA9B54 8007DE24 63F80108 */  j          .Llevel_37_8007E18C
/* 7AA9B58 8007DE28 510044A2 */   sb        $a0, 0x51($s2)
.Llevel_37_8007DE2C:
/* 7AA9B5C 8007DE2C 21204002 */  addu       $a0, $s2, $zero
/* 7AA9B60 8007DE30 21280000 */  addu       $a1, $zero, $zero
/* 7AA9B64 8007DE34 AFEE000C */  jal        func_8003BABC
/* 7AA9B68 8007DE38 21300000 */   addu      $a2, $zero, $zero
/* 7AA9B6C 8007DE3C 0780043C */  lui        $a0, %hi(D_8006E160)
/* 7AA9B70 8007DE40 60E18424 */  addiu      $a0, $a0, %lo(D_8006E160)
/* 7AA9B74 8007DE44 0000838C */  lw         $v1, 0x0($a0)
/* 7AA9B78 8007DE48 09000224 */  addiu      $v0, $zero, 0x9
/* 7AA9B7C 8007DE4C 09006210 */  beq        $v1, $v0, .Llevel_37_8007DE74
/* 7AA9B80 8007DE50 3C000224 */   addiu     $v0, $zero, 0x3C
/* 7AA9B84 8007DE54 0780023C */  lui        $v0, %hi(D_8006E164)
/* 7AA9B88 8007DE58 64E1428C */  lw         $v0, %lo(D_8006E164)($v0)
/* 7AA9B8C 8007DE5C 00000000 */  nop
/* 7AA9B90 8007DE60 04005214 */  bne        $v0, $s2, .Llevel_37_8007DE74
/* 7AA9B94 8007DE64 3C000224 */   addiu     $v0, $zero, 0x3C
/* 7AA9B98 8007DE68 000080AC */  sw         $zero, 0x0($a0)
/* 7AA9B9C 8007DE6C 0780013C */  lui        $at, %hi(D_8006E164)
/* 7AA9BA0 8007DE70 64E120AC */  sw         $zero, %lo(D_8006E164)($at)
.Llevel_37_8007DE74:
/* 7AA9BA4 8007DE74 0000E2AE */  sw         $v0, 0x0($s7)
/* 7AA9BA8 8007DE78 0B000224 */  addiu      $v0, $zero, 0xB
/* 7AA9BAC 8007DE7C 410040A2 */  sb         $zero, 0x41($s2)
/* 7AA9BB0 8007DE80 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 7AA9BB4 8007DE84 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 7AA9BB8 8007DE88 480042A2 */  sb         $v0, 0x48($s2)
/* 7AA9BBC 8007DE8C 78051424 */  addiu      $s4, $zero, 0x578
.Llevel_37_8007DE90:
/* 7AA9BC0 8007DE90 0000E48E */  lw         $a0, 0x0($s7)
/* 7AA9BC4 8007DE94 00000000 */  nop
/* 7AA9BC8 8007DE98 1F008228 */  slti       $v0, $a0, 0x1F
/* 7AA9BCC 8007DE9C 1B004014 */  bnez       $v0, .Llevel_37_8007DF0C
/* 7AA9BD0 8007DEA0 BC021624 */   addiu     $s6, $zero, 0x2BC
/* 7AA9BD4 8007DEA4 3C000324 */  addiu      $v1, $zero, 0x3C
/* 7AA9BD8 8007DEA8 23186400 */  subu       $v1, $v1, $a0
/* 7AA9BDC 8007DEAC 18007400 */  mult       $v1, $s4
/* 7AA9BE0 8007DEB0 12200000 */  mflo       $a0
/* 7AA9BE4 8007DEB4 00000000 */  nop
/* 7AA9BE8 8007DEB8 00000000 */  nop
/* 7AA9BEC 8007DEBC 18007600 */  mult       $v1, $s6
/* 7AA9BF0 8007DEC0 12180000 */  mflo       $v1
/* 7AA9BF4 8007DEC4 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 7AA9BF8 8007DEC8 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 7AA9BFC 8007DECC 18008200 */  mult       $a0, $v0
/* 7AA9C00 8007DED0 10400000 */  mfhi       $t0
/* 7AA9C04 8007DED4 00000000 */  nop
/* 7AA9C08 8007DED8 00000000 */  nop
/* 7AA9C0C 8007DEDC 18006200 */  mult       $v1, $v0
/* 7AA9C10 8007DEE0 21100401 */  addu       $v0, $t0, $a0
/* 7AA9C14 8007DEE4 43110200 */  sra        $v0, $v0, 5
/* 7AA9C18 8007DEE8 C3270400 */  sra        $a0, $a0, 31
/* 7AA9C1C 8007DEEC 23104400 */  subu       $v0, $v0, $a0
/* 7AA9C20 8007DEF0 BC025424 */  addiu      $s4, $v0, 0x2BC
/* 7AA9C24 8007DEF4 10280000 */  mfhi       $a1
/* 7AA9C28 8007DEF8 2110A300 */  addu       $v0, $a1, $v1
/* 7AA9C2C 8007DEFC 43110200 */  sra        $v0, $v0, 5
/* 7AA9C30 8007DF00 C31F0300 */  sra        $v1, $v1, 31
/* 7AA9C34 8007DF04 DAF70108 */  j          .Llevel_37_8007DF68
/* 7AA9C38 8007DF08 23104300 */   subu      $v0, $v0, $v1
.Llevel_37_8007DF0C:
/* 7AA9C3C 8007DF0C 18009400 */  mult       $a0, $s4
/* 7AA9C40 8007DF10 12180000 */  mflo       $v1
/* 7AA9C44 8007DF14 00000000 */  nop
/* 7AA9C48 8007DF18 00000000 */  nop
/* 7AA9C4C 8007DF1C 18009600 */  mult       $a0, $s6
/* 7AA9C50 8007DF20 12200000 */  mflo       $a0
/* 7AA9C54 8007DF24 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 7AA9C58 8007DF28 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 7AA9C5C 8007DF2C 18006200 */  mult       $v1, $v0
/* 7AA9C60 8007DF30 10400000 */  mfhi       $t0
/* 7AA9C64 8007DF34 00000000 */  nop
/* 7AA9C68 8007DF38 00000000 */  nop
/* 7AA9C6C 8007DF3C 18008200 */  mult       $a0, $v0
/* 7AA9C70 8007DF40 21100301 */  addu       $v0, $t0, $v1
/* 7AA9C74 8007DF44 43110200 */  sra        $v0, $v0, 5
/* 7AA9C78 8007DF48 C31F0300 */  sra        $v1, $v1, 31
/* 7AA9C7C 8007DF4C 23104300 */  subu       $v0, $v0, $v1
/* 7AA9C80 8007DF50 BC025424 */  addiu      $s4, $v0, 0x2BC
/* 7AA9C84 8007DF54 10280000 */  mfhi       $a1
/* 7AA9C88 8007DF58 2110A400 */  addu       $v0, $a1, $a0
/* 7AA9C8C 8007DF5C 43110200 */  sra        $v0, $v0, 5
/* 7AA9C90 8007DF60 C3270400 */  sra        $a0, $a0, 31
/* 7AA9C94 8007DF64 23104400 */  subu       $v0, $v0, $a0
.Llevel_37_8007DF68:
/* 7AA9C98 8007DF68 5E015624 */  addiu      $s6, $v0, 0x15E
/* 7AA9C9C 8007DF6C 0000E28E */  lw         $v0, 0x0($s7)
/* 7AA9CA0 8007DF70 00000000 */  nop
/* 7AA9CA4 8007DF74 0B004228 */  slti       $v0, $v0, 0xB
/* 7AA9CA8 8007DF78 34004014 */  bnez       $v0, .Llevel_37_8007E04C
/* 7AA9CAC 8007DF7C 21980000 */   addu      $s3, $zero, $zero
/* 7AA9CB0 8007DF80 4800B527 */  addiu      $s5, $sp, 0x48
/* 7AA9CB4 8007DF84 2800B127 */  addiu      $s1, $sp, 0x28
/* 7AA9CB8 8007DF88 3800B027 */  addiu      $s0, $sp, 0x38
.Llevel_37_8007DF8C:
/* 7AA9CBC 8007DF8C 9171010C */  jal        rand
/* 7AA9CC0 8007DF90 6000A0A3 */   sb        $zero, 0x60($sp)
/* 7AA9CC4 8007DF94 9171010C */  jal        rand
/* 7AA9CC8 8007DF98 6100A2A3 */   sb        $v0, 0x61($sp)
/* 7AA9CCC 8007DF9C 6000A427 */  addiu      $a0, $sp, 0x60
/* 7AA9CD0 8007DFA0 2128A002 */  addu       $a1, $s5, $zero
/* 7AA9CD4 8007DFA4 21300000 */  addu       $a2, $zero, $zero
/* 7AA9CD8 8007DFA8 A43A010C */  jal        func_8004EA90
/* 7AA9CDC 8007DFAC 6200A2A3 */   sb        $v0, 0x62($sp)
/* 7AA9CE0 8007DFB0 3C000424 */  addiu      $a0, $zero, 0x3C
/* 7AA9CE4 8007DFB4 DBD8000C */  jal        func_8003636C
/* 7AA9CE8 8007DFB8 64000524 */   addiu     $a1, $zero, 0x64
/* 7AA9CEC 8007DFBC 2120A002 */  addu       $a0, $s5, $zero
/* 7AA9CF0 8007DFC0 21282002 */  addu       $a1, $s1, $zero
/* 7AA9CF4 8007DFC4 21302002 */  addu       $a2, $s1, $zero
/* 7AA9CF8 8007DFC8 2800A2AF */  sw         $v0, 0x28($sp)
/* 7AA9CFC 8007DFCC 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 7AA9D00 8007DFD0 5B3B010C */  jal        func_8004ED6C
/* 7AA9D04 8007DFD4 3000A0AF */   sw        $zero, 0x30($sp)
/* 7AA9D08 8007DFD8 21200002 */  addu       $a0, $s0, $zero
/* 7AA9D0C 8007DFDC 5E3C010C */  jal        func_8004F178
/* 7AA9D10 8007DFE0 21282002 */   addu      $a1, $s1, $zero
/* 7AA9D14 8007DFE4 21200002 */  addu       $a0, $s0, $zero
/* 7AA9D18 8007DFE8 3A3C010C */  jal        func_8004F0E8
/* 7AA9D1C 8007DFEC 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA9D20 8007DFF0 21200002 */  addu       $a0, $s0, $zero
/* 7AA9D24 8007DFF4 21280002 */  addu       $a1, $s0, $zero
/* 7AA9D28 8007DFF8 653C010C */  jal        func_8004F194
/* 7AA9D2C 8007DFFC 0C004626 */   addiu     $a2, $s2, 0xC
/* 7AA9D30 8007E000 01000424 */  addiu      $a0, $zero, 0x1
/* 7AA9D34 8007E004 0D000524 */  addiu      $a1, $zero, 0xD
/* 7AA9D38 8007E008 21300002 */  addu       $a2, $s0, $zero
/* 7AA9D3C 8007E00C 21382002 */  addu       $a3, $s1, $zero
/* 7AA9D40 8007E010 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA9D44 8007E014 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA9D48 8007E018 00000000 */  nop
/* 7AA9D4C 8007E01C 09F84000 */  jalr       $v0
/* 7AA9D50 8007E020 01007326 */   addiu     $s3, $s3, 0x1
/* 7AA9D54 8007E024 0C00622A */  slti       $v0, $s3, 0xC
/* 7AA9D58 8007E028 D8FF4014 */  bnez       $v0, .Llevel_37_8007DF8C
/* 7AA9D5C 8007E02C 04000424 */   addiu     $a0, $zero, 0x4
/* 7AA9D60 8007E030 46000524 */  addiu      $a1, $zero, 0x46
/* 7AA9D64 8007E034 0C004626 */  addiu      $a2, $s2, 0xC
/* 7AA9D68 8007E038 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA9D6C 8007E03C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA9D70 8007E040 00000000 */  nop
/* 7AA9D74 8007E044 09F84000 */  jalr       $v0
/* 7AA9D78 8007E048 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_37_8007E04C:
/* 7AA9D7C 8007E04C 21980000 */  addu       $s3, $zero, $zero
/* 7AA9D80 8007E050 40001124 */  addiu      $s1, $zero, 0x40
.Llevel_37_8007E054:
/* 7AA9D84 8007E054 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA9D88 8007E058 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA9D8C 8007E05C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA9D90 8007E060 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA9D94 8007E064 00000000 */  nop
/* 7AA9D98 8007E068 23104300 */  subu       $v0, $v0, $v1
/* 7AA9D9C 8007E06C 15004228 */  slti       $v0, $v0, 0x15
/* 7AA9DA0 8007E070 22004014 */  bnez       $v0, .Llevel_37_8007E0FC
/* 7AA9DA4 8007E074 46010424 */   addiu     $a0, $zero, 0x146
/* 7AA9DA8 8007E078 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA9DAC 8007E07C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA9DB0 8007E080 00000000 */  nop
/* 7AA9DB4 8007E084 09F84000 */  jalr       $v0
/* 7AA9DB8 8007E088 21284002 */   addu      $a1, $s2, $zero
/* 7AA9DBC 8007E08C 21804000 */  addu       $s0, $v0, $zero
/* 7AA9DC0 8007E090 16000012 */  beqz       $s0, .Llevel_37_8007E0EC
/* 7AA9DC4 8007E094 21200000 */   addu      $a0, $zero, $zero
/* 7AA9DC8 8007E098 21288002 */  addu       $a1, $s4, $zero
/* 7AA9DCC 8007E09C 4C0011A2 */  sb         $s1, 0x4C($s0)
/* 7AA9DD0 8007E0A0 F7D8000C */  jal        func_800363DC
/* 7AA9DD4 8007E0A4 4E0011A2 */   sb        $s1, 0x4E($s0)
/* 7AA9DD8 8007E0A8 21200000 */  addu       $a0, $zero, $zero
/* 7AA9DDC 8007E0AC 0C00038E */  lw         $v1, 0xC($s0)
/* 7AA9DE0 8007E0B0 21288002 */  addu       $a1, $s4, $zero
/* 7AA9DE4 8007E0B4 21186200 */  addu       $v1, $v1, $v0
/* 7AA9DE8 8007E0B8 F7D8000C */  jal        func_800363DC
/* 7AA9DEC 8007E0BC 0C0003AE */   sw        $v1, 0xC($s0)
/* 7AA9DF0 8007E0C0 21200000 */  addu       $a0, $zero, $zero
/* 7AA9DF4 8007E0C4 1000038E */  lw         $v1, 0x10($s0)
/* 7AA9DF8 8007E0C8 2128C002 */  addu       $a1, $s6, $zero
/* 7AA9DFC 8007E0CC 21186200 */  addu       $v1, $v1, $v0
/* 7AA9E00 8007E0D0 F7D8000C */  jal        func_800363DC
/* 7AA9E04 8007E0D4 100003AE */   sw        $v1, 0x10($s0)
/* 7AA9E08 8007E0D8 1400038E */  lw         $v1, 0x14($s0)
/* 7AA9E0C 8007E0DC 00000000 */  nop
/* 7AA9E10 8007E0E0 BC026324 */  addiu      $v1, $v1, 0x2BC
/* 7AA9E14 8007E0E4 21186200 */  addu       $v1, $v1, $v0
/* 7AA9E18 8007E0E8 140003AE */  sw         $v1, 0x14($s0)
.Llevel_37_8007E0EC:
/* 7AA9E1C 8007E0EC 01007326 */  addiu      $s3, $s3, 0x1
/* 7AA9E20 8007E0F0 0200622A */  slti       $v0, $s3, 0x2
/* 7AA9E24 8007E0F4 D7FF4014 */  bnez       $v0, .Llevel_37_8007E054
/* 7AA9E28 8007E0F8 00000000 */   nop
.Llevel_37_8007E0FC:
/* 7AA9E2C 8007E0FC 0C005126 */  addiu      $s1, $s2, 0xC
/* 7AA9E30 8007E100 21202002 */  addu       $a0, $s1, $zero
/* 7AA9E34 8007E104 E8038526 */  addiu      $a1, $s4, 0x3E8
/* 7AA9E38 8007E108 01000624 */  addiu      $a2, $zero, 0x1
/* 7AA9E3C 8007E10C 21380000 */  addu       $a3, $zero, $zero
/* 7AA9E40 8007E110 1000023C */  lui        $v0, (0x100000 >> 16)
/* 7AA9E44 8007E114 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA9E48 8007E118 8C6E000C */  jal        func_8001BA30
/* 7AA9E4C 8007E11C 1400B2AF */   sw        $s2, 0x14($sp)
/* 7AA9E50 8007E120 21804000 */  addu       $s0, $v0, $zero
/* 7AA9E54 8007E124 09000012 */  beqz       $s0, .Llevel_37_8007E14C
/* 7AA9E58 8007E128 21300000 */   addu      $a2, $zero, $zero
/* 7AA9E5C 8007E12C 0C00038E */  lw         $v1, 0xC($s0)
/* 7AA9E60 8007E130 0C00448E */  lw         $a0, 0xC($s2)
/* 7AA9E64 8007E134 1000028E */  lw         $v0, 0x10($s0)
/* 7AA9E68 8007E138 1000458E */  lw         $a1, 0x10($s2)
/* 7AA9E6C 8007E13C 23206400 */  subu       $a0, $v1, $a0
/* 7AA9E70 8007E140 203A010C */  jal        func_8004E880
/* 7AA9E74 8007E144 23284500 */   subu      $a1, $v0, $a1
/* 7AA9E78 8007E148 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_37_8007E14C:
/* 7AA9E7C 8007E14C 21202002 */  addu       $a0, $s1, $zero
/* 7AA9E80 8007E150 90018526 */  addiu      $a1, $s4, 0x190
/* 7AA9E84 8007E154 C2170500 */  srl        $v0, $a1, 31
/* 7AA9E88 8007E158 2128A200 */  addu       $a1, $a1, $v0
/* 7AA9E8C 8007E15C 43280500 */  sra        $a1, $a1, 1
/* 7AA9E90 8007E160 A270000C */  jal        func_8001C288
/* 7AA9E94 8007E164 07000624 */   addiu     $a2, $zero, 0x7
/* 7AA9E98 8007E168 2120E002 */  addu       $a0, $s7, $zero
/* 7AA9E9C 8007E16C 69D6000C */  jal        func_800359A4
/* 7AA9EA0 8007E170 04000524 */   addiu     $a1, $zero, 0x4
/* 7AA9EA4 8007E174 06004010 */  beqz       $v0, .Llevel_37_8007E190
/* 7AA9EA8 8007E178 21204002 */   addu      $a0, $s2, $zero
/* 7AA9EAC 8007E17C C656010C */  jal        func_80055B18
/* 7AA9EB0 8007E180 21204002 */   addu      $a0, $s2, $zero
/* 7AA9EB4 8007E184 66F80108 */  j          .Llevel_37_8007E198
/* 7AA9EB8 8007E188 00000000 */   nop
.Llevel_37_8007E18C:
/* 7AA9EBC 8007E18C 21204002 */  addu       $a0, $s2, $zero
.Llevel_37_8007E190:
/* 7AA9EC0 8007E190 4957010C */  jal        func_80055D24
/* 7AA9EC4 8007E194 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_37_8007E198:
/* 7AA9EC8 8007E198 8800BF8F */  lw         $ra, 0x88($sp)
/* 7AA9ECC 8007E19C 8400B78F */  lw         $s7, 0x84($sp)
/* 7AA9ED0 8007E1A0 8000B68F */  lw         $s6, 0x80($sp)
/* 7AA9ED4 8007E1A4 7C00B58F */  lw         $s5, 0x7C($sp)
/* 7AA9ED8 8007E1A8 7800B48F */  lw         $s4, 0x78($sp)
/* 7AA9EDC 8007E1AC 7400B38F */  lw         $s3, 0x74($sp)
/* 7AA9EE0 8007E1B0 7000B28F */  lw         $s2, 0x70($sp)
/* 7AA9EE4 8007E1B4 6C00B18F */  lw         $s1, 0x6C($sp)
/* 7AA9EE8 8007E1B8 6800B08F */  lw         $s0, 0x68($sp)
/* 7AA9EEC 8007E1BC 9000BD27 */  addiu      $sp, $sp, 0x90
/* 7AA9EF0 8007E1C0 0800E003 */  jr         $ra
/* 7AA9EF4 8007E1C4 00000000 */   nop
.size func_level_37_8007DB84, . - func_level_37_8007DB84
