.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_100_level_14
/* 47BCFFC 8007DACC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 47BD000 8007DAD0 3400B1AF */  sw         $s1, 0x34($sp)
/* 47BD004 8007DAD4 21888000 */  addu       $s1, $a0, $zero
/* 47BD008 8007DAD8 3800B2AF */  sw         $s2, 0x38($sp)
/* 47BD00C 8007DADC 01001224 */  addiu      $s2, $zero, 0x1
/* 47BD010 8007DAE0 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 47BD014 8007DAE4 3000B0AF */  sw         $s0, 0x30($sp)
/* 47BD018 8007DAE8 0780013C */  lui        $at, %hi(D_8006C7C0)
/* 47BD01C 8007DAEC C0C720AC */  sw         $zero, %lo(D_8006C7C0)($at)
/* 47BD020 8007DAF0 48002392 */  lbu        $v1, 0x48($s1)
/* 47BD024 8007DAF4 0000308E */  lw         $s0, 0x0($s1)
/* 47BD028 8007DAF8 5E007210 */  beq        $v1, $s2, .Llevel_14_8007DC74
/* 47BD02C 8007DAFC 02006228 */   slti      $v0, $v1, 0x2
/* 47BD030 8007DB00 05004010 */  beqz       $v0, .Llevel_14_8007DB18
/* 47BD034 8007DB04 00000000 */   nop
/* 47BD038 8007DB08 0A006010 */  beqz       $v1, .Llevel_14_8007DB34
/* 47BD03C 8007DB0C 21200002 */   addu      $a0, $s0, $zero
/* 47BD040 8007DB10 82F70108 */  j          .Llevel_14_8007DE08
/* 47BD044 8007DB14 00000000 */   nop
.Llevel_14_8007DB18:
/* 47BD048 8007DB18 02000224 */  addiu      $v0, $zero, 0x2
/* 47BD04C 8007DB1C 7B006210 */  beq        $v1, $v0, .Llevel_14_8007DD0C
/* 47BD050 8007DB20 03000224 */   addiu     $v0, $zero, 0x3
/* 47BD054 8007DB24 54006210 */  beq        $v1, $v0, .Llevel_14_8007DC78
/* 47BD058 8007DB28 01000424 */   addiu     $a0, $zero, 0x1
/* 47BD05C 8007DB2C 82F70108 */  j          .Llevel_14_8007DE08
/* 47BD060 8007DB30 00000000 */   nop
.Llevel_14_8007DB34:
/* 47BD064 8007DB34 69D6000C */  jal        func_800359A4
/* 47BD068 8007DB38 04000524 */   addiu     $a1, $zero, 0x4
/* 47BD06C 8007DB3C 78004014 */  bnez       $v0, .Llevel_14_8007DD20
/* 47BD070 8007DB40 01000424 */   addiu     $a0, $zero, 0x1
/* 47BD074 8007DB44 0D000524 */  addiu      $a1, $zero, 0xD
/* 47BD078 8007DB48 0C003226 */  addiu      $s2, $s1, 0xC
/* 47BD07C 8007DB4C 21304002 */  addu       $a2, $s2, $zero
/* 47BD080 8007DB50 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47BD084 8007DB54 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47BD088 8007DB58 1000A727 */  addiu      $a3, $sp, 0x10
/* 47BD08C 8007DB5C 1000A0AF */  sw         $zero, 0x10($sp)
/* 47BD090 8007DB60 1400A0AF */  sw         $zero, 0x14($sp)
/* 47BD094 8007DB64 09F84000 */  jalr       $v0
/* 47BD098 8007DB68 1800A0AF */   sw        $zero, 0x18($sp)
/* 47BD09C 8007DB6C 21184000 */  addu       $v1, $v0, $zero
/* 47BD0A0 8007DB70 02006010 */  beqz       $v1, .Llevel_14_8007DB7C
/* 47BD0A4 8007DB74 FA000224 */   addiu     $v0, $zero, 0xFA
/* 47BD0A8 8007DB78 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_14_8007DB7C:
/* 47BD0AC 8007DB7C 0000038E */  lw         $v1, 0x0($s0)
/* 47BD0B0 8007DB80 00000000 */  nop
/* 47BD0B4 8007DB84 0A006228 */  slti       $v0, $v1, 0xA
/* 47BD0B8 8007DB88 17004010 */  beqz       $v0, .Llevel_14_8007DBE8
/* 47BD0BC 8007DB8C 5555043C */   lui       $a0, (0x55555556 >> 16)
/* 47BD0C0 8007DB90 C0100300 */  sll        $v0, $v1, 3
/* 47BD0C4 8007DB94 23104300 */  subu       $v0, $v0, $v1
/* 47BD0C8 8007DB98 80100200 */  sll        $v0, $v0, 2
/* 47BD0CC 8007DB9C 540022A2 */  sb         $v0, 0x54($s1)
/* 47BD0D0 8007DBA0 0000038E */  lw         $v1, 0x0($s0)
/* 47BD0D4 8007DBA4 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 47BD0D8 8007DBA8 C0100300 */  sll        $v0, $v1, 3
/* 47BD0DC 8007DBAC 23104300 */  subu       $v0, $v0, $v1
/* 47BD0E0 8007DBB0 C0100200 */  sll        $v0, $v0, 3
/* 47BD0E4 8007DBB4 18004400 */  mult       $v0, $a0
/* 47BD0E8 8007DBB8 C3170200 */  sra        $v0, $v0, 31
/* 47BD0EC 8007DBBC 10400000 */  mfhi       $t0
/* 47BD0F0 8007DBC0 23100201 */  subu       $v0, $t0, $v0
/* 47BD0F4 8007DBC4 550022A2 */  sb         $v0, 0x55($s1)
/* 47BD0F8 8007DBC8 0000038E */  lw         $v1, 0x0($s0)
/* 47BD0FC 8007DBCC 00000000 */  nop
/* 47BD100 8007DBD0 40100300 */  sll        $v0, $v1, 1
/* 47BD104 8007DBD4 21104300 */  addu       $v0, $v0, $v1
/* 47BD108 8007DBD8 C0100200 */  sll        $v0, $v0, 3
/* 47BD10C 8007DBDC 21104300 */  addu       $v0, $v0, $v1
/* 47BD110 8007DBE0 83100200 */  sra        $v0, $v0, 2
/* 47BD114 8007DBE4 560022A2 */  sb         $v0, 0x56($s1)
.Llevel_14_8007DBE8:
/* 47BD118 8007DBE8 0000028E */  lw         $v0, 0x0($s0)
/* 47BD11C 8007DBEC 00000000 */  nop
/* 47BD120 8007DBF0 40100200 */  sll        $v0, $v0, 1
/* 47BD124 8007DBF4 30004324 */  addiu      $v1, $v0, 0x30
/* 47BD128 8007DBF8 4F0023A2 */  sb         $v1, 0x4F($s1)
/* 47BD12C 8007DBFC 1400028E */  lw         $v0, 0x14($s0)
/* 47BD130 8007DC00 00000000 */  nop
/* 47BD134 8007DC04 02004010 */  beqz       $v0, .Llevel_14_8007DC10
/* 47BD138 8007DC08 23106200 */   subu      $v0, $v1, $v0
/* 47BD13C 8007DC0C 4F0022A2 */  sb         $v0, 0x4F($s1)
.Llevel_14_8007DC10:
/* 47BD140 8007DC10 21204002 */  addu       $a0, $s2, $zero
/* 47BD144 8007DC14 0780103C */  lui        $s0, %hi(D_8006E020)
/* 47BD148 8007DC18 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 47BD14C 8007DC1C CD3C010C */  jal        func_8004F334
/* 47BD150 8007DC20 21280002 */   addu      $a1, $s0, $zero
/* 47BD154 8007DC24 21204000 */  addu       $a0, $v0, $zero
/* 47BD158 8007DC28 0780023C */  lui        $v0, %hi(D_8006E028)
/* 47BD15C 8007DC2C 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 47BD160 8007DC30 1400258E */  lw         $a1, 0x14($s1)
/* 47BD164 8007DC34 21300000 */  addu       $a2, $zero, $zero
/* 47BD168 8007DC38 203A010C */  jal        func_8004E880
/* 47BD16C 8007DC3C 23284500 */   subu      $a1, $v0, $a1
/* 47BD170 8007DC40 21300000 */  addu       $a2, $zero, $zero
/* 47BD174 8007DC44 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 47BD178 8007DC48 450022A2 */  sb         $v0, 0x45($s1)
/* 47BD17C 8007DC4C 0000038E */  lw         $v1, 0x0($s0)
/* 47BD180 8007DC50 0C00248E */  lw         $a0, 0xC($s1)
/* 47BD184 8007DC54 0780023C */  lui        $v0, %hi(D_8006E024)
/* 47BD188 8007DC58 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 47BD18C 8007DC5C 1000258E */  lw         $a1, 0x10($s1)
/* 47BD190 8007DC60 23206400 */  subu       $a0, $v1, $a0
/* 47BD194 8007DC64 203A010C */  jal        func_8004E880
/* 47BD198 8007DC68 23284500 */   subu      $a1, $v0, $a1
/* 47BD19C 8007DC6C 82F70108 */  j          .Llevel_14_8007DE08
/* 47BD1A0 8007DC70 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_14_8007DC74:
/* 47BD1A4 8007DC74 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_14_8007DC78:
/* 47BD1A8 8007DC78 0D000524 */  addiu      $a1, $zero, 0xD
/* 47BD1AC 8007DC7C 0C002626 */  addiu      $a2, $s1, 0xC
/* 47BD1B0 8007DC80 410020A2 */  sb         $zero, 0x41($s1)
/* 47BD1B4 8007DC84 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 47BD1B8 8007DC88 4D0020A2 */  sb         $zero, 0x4D($s1)
/* 47BD1BC 8007DC8C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47BD1C0 8007DC90 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47BD1C4 8007DC94 2000A727 */  addiu      $a3, $sp, 0x20
/* 47BD1C8 8007DC98 2000A0AF */  sw         $zero, 0x20($sp)
/* 47BD1CC 8007DC9C 2400A0AF */  sw         $zero, 0x24($sp)
/* 47BD1D0 8007DCA0 09F84000 */  jalr       $v0
/* 47BD1D4 8007DCA4 2800A0AF */   sw        $zero, 0x28($sp)
/* 47BD1D8 8007DCA8 21204000 */  addu       $a0, $v0, $zero
/* 47BD1DC 8007DCAC 48002392 */  lbu        $v1, 0x48($s1)
/* 47BD1E0 8007DCB0 03000224 */  addiu      $v0, $zero, 0x3
/* 47BD1E4 8007DCB4 04006214 */  bne        $v1, $v0, .Llevel_14_8007DCC8
/* 47BD1E8 8007DCB8 00000000 */   nop
/* 47BD1EC 8007DCBC 02008010 */  beqz       $a0, .Llevel_14_8007DCC8
/* 47BD1F0 8007DCC0 DC000224 */   addiu     $v0, $zero, 0xDC
/* 47BD1F4 8007DCC4 0A0082A0 */  sb         $v0, 0xA($a0)
.Llevel_14_8007DCC8:
/* 47BD1F8 8007DCC8 0C002426 */  addiu      $a0, $s1, 0xC
/* 47BD1FC 8007DCCC 21288000 */  addu       $a1, $a0, $zero
/* 47BD200 8007DCD0 653C010C */  jal        func_8004F194
/* 47BD204 8007DCD4 04000626 */   addiu     $a2, $s0, 0x4
/* 47BD208 8007DCD8 1000038E */  lw         $v1, 0x10($s0)
/* 47BD20C 8007DCDC 21200002 */  addu       $a0, $s0, $zero
/* 47BD210 8007DCE0 05006324 */  addiu      $v1, $v1, 0x5
/* 47BD214 8007DCE4 100083AC */  sw         $v1, 0x10($a0)
/* 47BD218 8007DCE8 1400228E */  lw         $v0, 0x14($s1)
/* 47BD21C 8007DCEC 04000524 */  addiu      $a1, $zero, 0x4
/* 47BD220 8007DCF0 23104300 */  subu       $v0, $v0, $v1
/* 47BD224 8007DCF4 69D6000C */  jal        func_800359A4
/* 47BD228 8007DCF8 140022AE */   sw        $v0, 0x14($s1)
/* 47BD22C 8007DCFC 42004010 */  beqz       $v0, .Llevel_14_8007DE08
/* 47BD230 8007DD00 00000000 */   nop
/* 47BD234 8007DD04 48F70108 */  j          .Llevel_14_8007DD20
/* 47BD238 8007DD08 00000000 */   nop
.Llevel_14_8007DD0C:
/* 47BD23C 8007DD0C 21200002 */  addu       $a0, $s0, $zero
/* 47BD240 8007DD10 69D6000C */  jal        func_800359A4
/* 47BD244 8007DD14 04000524 */   addiu     $a1, $zero, 0x4
/* 47BD248 8007DD18 05004010 */  beqz       $v0, .Llevel_14_8007DD30
/* 47BD24C 8007DD1C 00000000 */   nop
.Llevel_14_8007DD20:
/* 47BD250 8007DD20 C656010C */  jal        func_80055B18
/* 47BD254 8007DD24 21202002 */   addu      $a0, $s1, $zero
/* 47BD258 8007DD28 82F70108 */  j          .Llevel_14_8007DE08
/* 47BD25C 8007DD2C 00000000 */   nop
.Llevel_14_8007DD30:
/* 47BD260 8007DD30 3D002292 */  lbu        $v0, 0x3D($s1)
/* 47BD264 8007DD34 00000000 */  nop
/* 47BD268 8007DD38 0B005214 */  bne        $v0, $s2, .Llevel_14_8007DD68
/* 47BD26C 8007DD3C 00000000 */   nop
/* 47BD270 8007DD40 0000028E */  lw         $v0, 0x0($s0)
/* 47BD274 8007DD44 00000000 */  nop
/* 47BD278 8007DD48 0A004228 */  slti       $v0, $v0, 0xA
/* 47BD27C 8007DD4C 05004010 */  beqz       $v0, .Llevel_14_8007DD64
/* 47BD280 8007DD50 21202002 */   addu      $a0, $s1, $zero
/* 47BD284 8007DD54 E0D3000C */  jal        func_80034F80
/* 47BD288 8007DD58 21280000 */   addu      $a1, $zero, $zero
/* 47BD28C 8007DD5C C0000224 */  addiu      $v0, $zero, 0xC0
/* 47BD290 8007DD60 4F0022A2 */  sb         $v0, 0x4F($s1)
.Llevel_14_8007DD64:
/* 47BD294 8007DD64 3D002292 */  lbu        $v0, 0x3D($s1)
.Llevel_14_8007DD68:
/* 47BD298 8007DD68 00000000 */  nop
/* 47BD29C 8007DD6C 1F004014 */  bnez       $v0, .Llevel_14_8007DDEC
/* 47BD2A0 8007DD70 5555043C */   lui       $a0, (0x55555556 >> 16)
/* 47BD2A4 8007DD74 0000038E */  lw         $v1, 0x0($s0)
/* 47BD2A8 8007DD78 00000000 */  nop
/* 47BD2AC 8007DD7C C0100300 */  sll        $v0, $v1, 3
/* 47BD2B0 8007DD80 23104300 */  subu       $v0, $v0, $v1
/* 47BD2B4 8007DD84 80100200 */  sll        $v0, $v0, 2
/* 47BD2B8 8007DD88 540022A2 */  sb         $v0, 0x54($s1)
/* 47BD2BC 8007DD8C 0000038E */  lw         $v1, 0x0($s0)
/* 47BD2C0 8007DD90 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 47BD2C4 8007DD94 C0100300 */  sll        $v0, $v1, 3
/* 47BD2C8 8007DD98 23104300 */  subu       $v0, $v0, $v1
/* 47BD2CC 8007DD9C C0100200 */  sll        $v0, $v0, 3
/* 47BD2D0 8007DDA0 18004400 */  mult       $v0, $a0
/* 47BD2D4 8007DDA4 C3170200 */  sra        $v0, $v0, 31
/* 47BD2D8 8007DDA8 10400000 */  mfhi       $t0
/* 47BD2DC 8007DDAC 23100201 */  subu       $v0, $t0, $v0
/* 47BD2E0 8007DDB0 550022A2 */  sb         $v0, 0x55($s1)
/* 47BD2E4 8007DDB4 0000038E */  lw         $v1, 0x0($s0)
/* 47BD2E8 8007DDB8 00000000 */  nop
/* 47BD2EC 8007DDBC 40100300 */  sll        $v0, $v1, 1
/* 47BD2F0 8007DDC0 21104300 */  addu       $v0, $v0, $v1
/* 47BD2F4 8007DDC4 C0100200 */  sll        $v0, $v0, 3
/* 47BD2F8 8007DDC8 21104300 */  addu       $v0, $v0, $v1
/* 47BD2FC 8007DDCC 83100200 */  sra        $v0, $v0, 2
/* 47BD300 8007DDD0 560022A2 */  sb         $v0, 0x56($s1)
/* 47BD304 8007DDD4 0000028E */  lw         $v0, 0x0($s0)
/* 47BD308 8007DDD8 00000000 */  nop
/* 47BD30C 8007DDDC 80100200 */  sll        $v0, $v0, 2
/* 47BD310 8007DDE0 60004224 */  addiu      $v0, $v0, 0x60
/* 47BD314 8007DDE4 82F70108 */  j          .Llevel_14_8007DE08
/* 47BD318 8007DDE8 4F0022A2 */   sb        $v0, 0x4F($s1)
.Llevel_14_8007DDEC:
/* 47BD31C 8007DDEC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 47BD320 8007DDF0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 47BD324 8007DDF4 4F002492 */  lbu        $a0, 0x4F($s1)
/* 47BD328 8007DDF8 40180200 */  sll        $v1, $v0, 1
/* 47BD32C 8007DDFC 21186200 */  addu       $v1, $v1, $v0
/* 47BD330 8007DE00 23208300 */  subu       $a0, $a0, $v1
/* 47BD334 8007DE04 4F0024A2 */  sb         $a0, 0x4F($s1)
.Llevel_14_8007DE08:
/* 47BD338 8007DE08 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 47BD33C 8007DE0C 3800B28F */  lw         $s2, 0x38($sp)
/* 47BD340 8007DE10 3400B18F */  lw         $s1, 0x34($sp)
/* 47BD344 8007DE14 3000B08F */  lw         $s0, 0x30($sp)
/* 47BD348 8007DE18 4000BD27 */  addiu      $sp, $sp, 0x40
/* 47BD34C 8007DE1C 0800E003 */  jr         $ra
/* 47BD350 8007DE20 00000000 */   nop
.size MobyUpdate_100_level_14, . - MobyUpdate_100_level_14
