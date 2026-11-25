.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_601_level_38
/* 7C3DAB8 8007ED88 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 7C3DABC 8007ED8C 6000B2AF */  sw         $s2, 0x60($sp)
/* 7C3DAC0 8007ED90 21908000 */  addu       $s2, $a0, $zero
/* 7C3DAC4 8007ED94 6800BFAF */  sw         $ra, 0x68($sp)
/* 7C3DAC8 8007ED98 6400B3AF */  sw         $s3, 0x64($sp)
/* 7C3DACC 8007ED9C 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 7C3DAD0 8007EDA0 5800B0AF */  sw         $s0, 0x58($sp)
/* 7C3DAD4 8007EDA4 0C00468E */  lw         $a2, 0xC($s2)
/* 7C3DAD8 8007EDA8 0000508E */  lw         $s0, 0x0($s2)
/* 7C3DADC 8007EDAC 20000224 */  addiu      $v0, $zero, 0x20
/* 7C3DAE0 8007EDB0 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 7C3DAE4 8007EDB4 0004C228 */  slti       $v0, $a2, 0x400
/* 7C3DAE8 8007EDB8 C0004014 */  bnez       $v0, .Llevel_38_8007F0BC
/* 7C3DAEC 8007EDBC 00000000 */   nop
/* 7C3DAF0 8007EDC0 1000458E */  lw         $a1, 0x10($s2)
/* 7C3DAF4 8007EDC4 00000000 */  nop
/* 7C3DAF8 8007EDC8 0004A228 */  slti       $v0, $a1, 0x400
/* 7C3DAFC 8007EDCC BB004014 */  bnez       $v0, .Llevel_38_8007F0BC
/* 7C3DB00 8007EDD0 00000000 */   nop
/* 7C3DB04 8007EDD4 1400448E */  lw         $a0, 0x14($s2)
/* 7C3DB08 8007EDD8 00000000 */  nop
/* 7C3DB0C 8007EDDC 00048228 */  slti       $v0, $a0, 0x400
/* 7C3DB10 8007EDE0 B6004014 */  bnez       $v0, .Llevel_38_8007F0BC
/* 7C3DB14 8007EDE4 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 7C3DB18 8007EDE8 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 7C3DB1C 8007EDEC 2A106600 */  slt        $v0, $v1, $a2
/* 7C3DB20 8007EDF0 B2004014 */  bnez       $v0, .Llevel_38_8007F0BC
/* 7C3DB24 8007EDF4 2A106500 */   slt       $v0, $v1, $a1
/* 7C3DB28 8007EDF8 B0004014 */  bnez       $v0, .Llevel_38_8007F0BC
/* 7C3DB2C 8007EDFC 2A106400 */   slt       $v0, $v1, $a0
/* 7C3DB30 8007EE00 AE004014 */  bnez       $v0, .Llevel_38_8007F0BC
/* 7C3DB34 8007EE04 0EEA043C */   lui       $a0, (0xEA0EA0EB >> 16)
/* 7C3DB38 8007EE08 0C00038E */  lw         $v1, 0xC($s0)
/* 7C3DB3C 8007EE0C EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
/* 7C3DB40 8007EE10 00120300 */  sll        $v0, $v1, 8
/* 7C3DB44 8007EE14 23104300 */  subu       $v0, $v0, $v1
/* 7C3DB48 8007EE18 18004400 */  mult       $v0, $a0
/* 7C3DB4C 8007EE1C 10480000 */  mfhi       $t1
/* 7C3DB50 8007EE20 21182201 */  addu       $v1, $t1, $v0
/* 7C3DB54 8007EE24 43190300 */  sra        $v1, $v1, 5
/* 7C3DB58 8007EE28 C3170200 */  sra        $v0, $v0, 31
/* 7C3DB5C 8007EE2C 23386200 */  subu       $a3, $v1, $v0
/* 7C3DB60 8007EE30 0001E228 */  slti       $v0, $a3, 0x100
/* 7C3DB64 8007EE34 03004014 */  bnez       $v0, .Llevel_38_8007EE44
/* 7C3DB68 8007EE38 00000000 */   nop
/* 7C3DB6C 8007EE3C 94FB0108 */  j          .Llevel_38_8007EE50
/* 7C3DB70 8007EE40 FF000724 */   addiu     $a3, $zero, 0xFF
.Llevel_38_8007EE44:
/* 7C3DB74 8007EE44 0300E104 */  bgez       $a3, .Llevel_38_8007EE54
/* 7C3DB78 8007EE48 0EEA043C */   lui       $a0, (0xEA0EA0EB >> 16)
/* 7C3DB7C 8007EE4C 21380000 */  addu       $a3, $zero, $zero
.Llevel_38_8007EE50:
/* 7C3DB80 8007EE50 0EEA043C */  lui        $a0, (0xEA0EA0EB >> 16)
.Llevel_38_8007EE54:
/* 7C3DB84 8007EE54 0C00038E */  lw         $v1, 0xC($s0)
/* 7C3DB88 8007EE58 EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
/* 7C3DB8C 8007EE5C 00110300 */  sll        $v0, $v1, 4
/* 7C3DB90 8007EE60 23104300 */  subu       $v0, $v0, $v1
/* 7C3DB94 8007EE64 18004400 */  mult       $v0, $a0
/* 7C3DB98 8007EE68 10480000 */  mfhi       $t1
/* 7C3DB9C 8007EE6C 21182201 */  addu       $v1, $t1, $v0
/* 7C3DBA0 8007EE70 43190300 */  sra        $v1, $v1, 5
/* 7C3DBA4 8007EE74 C3170200 */  sra        $v0, $v0, 31
/* 7C3DBA8 8007EE78 23186200 */  subu       $v1, $v1, $v0
/* 7C3DBAC 8007EE7C 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3DBB0 8007EE80 0C000524 */  addiu      $a1, $zero, 0xC
/* 7C3DBB4 8007EE84 21304002 */  addu       $a2, $s2, $zero
/* 7C3DBB8 8007EE88 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7C3DBBC 8007EE8C 540047A2 */  sb         $a3, 0x54($s2)
/* 7C3DBC0 8007EE90 550040A2 */  sb         $zero, 0x55($s2)
/* 7C3DBC4 8007EE94 560040A2 */  sb         $zero, 0x56($s2)
/* 7C3DBC8 8007EE98 570042A2 */  sb         $v0, 0x57($s2)
/* 7C3DBCC 8007EE9C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C3DBD0 8007EEA0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3DBD4 8007EEA4 00000000 */  nop
/* 7C3DBD8 8007EEA8 09F84000 */  jalr       $v0
/* 7C3DBDC 8007EEAC 04000724 */   addiu     $a3, $zero, 0x4
/* 7C3DBE0 8007EEB0 1800A427 */  addiu      $a0, $sp, 0x18
/* 7C3DBE4 8007EEB4 0C005126 */  addiu      $s1, $s2, 0xC
/* 7C3DBE8 8007EEB8 5E3C010C */  jal        func_8004F178
/* 7C3DBEC 8007EEBC 21282002 */   addu      $a1, $s1, $zero
/* 7C3DBF0 8007EEC0 0C00428E */  lw         $v0, 0xC($s2)
/* 7C3DBF4 8007EEC4 0000038E */  lw         $v1, 0x0($s0)
/* 7C3DBF8 8007EEC8 00000000 */  nop
/* 7C3DBFC 8007EECC 21104300 */  addu       $v0, $v0, $v1
/* 7C3DC00 8007EED0 0C0042AE */  sw         $v0, 0xC($s2)
/* 7C3DC04 8007EED4 1000428E */  lw         $v0, 0x10($s2)
/* 7C3DC08 8007EED8 0400038E */  lw         $v1, 0x4($s0)
/* 7C3DC0C 8007EEDC 00000000 */  nop
/* 7C3DC10 8007EEE0 21104300 */  addu       $v0, $v0, $v1
/* 7C3DC14 8007EEE4 100042AE */  sw         $v0, 0x10($s2)
/* 7C3DC18 8007EEE8 1400428E */  lw         $v0, 0x14($s2)
/* 7C3DC1C 8007EEEC 0800038E */  lw         $v1, 0x8($s0)
/* 7C3DC20 8007EEF0 48004492 */  lbu        $a0, 0x48($s2)
/* 7C3DC24 8007EEF4 21104300 */  addu       $v0, $v0, $v1
/* 7C3DC28 8007EEF8 6C008014 */  bnez       $a0, .Llevel_38_8007F0AC
/* 7C3DC2C 8007EEFC 140042AE */   sw        $v0, 0x14($s2)
/* 7C3DC30 8007EF00 21202002 */  addu       $a0, $s1, $zero
/* 7C3DC34 8007EF04 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 7C3DC38 8007EF08 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 7C3DC3C 8007EF0C 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C3DC40 8007EF10 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C3DC44 8007EF14 0000518C */  lw         $s1, 0x0($v0)
/* 7C3DC48 8007EF18 CD3C010C */  jal        func_8004F334
/* 7C3DC4C 8007EF1C 00000000 */   nop
/* 7C3DC50 8007EF20 21204000 */  addu       $a0, $v0, $zero
/* 7C3DC54 8007EF24 48004392 */  lbu        $v1, 0x48($s2)
/* 7C3DC58 8007EF28 62000224 */  addiu      $v0, $zero, 0x62
/* 7C3DC5C 8007EF2C 11006210 */  beq        $v1, $v0, .Llevel_38_8007EF74
/* 7C3DC60 8007EF30 00028228 */   slti      $v0, $a0, 0x200
/* 7C3DC64 8007EF34 0F004010 */  beqz       $v0, .Llevel_38_8007EF74
/* 7C3DC68 8007EF38 00000000 */   nop
/* 7C3DC6C 8007EF3C 1C00228E */  lw         $v0, 0x1C($s1)
/* 7C3DC70 8007EF40 00000000 */  nop
/* 7C3DC74 8007EF44 01004230 */  andi       $v0, $v0, 0x1
/* 7C3DC78 8007EF48 08004014 */  bnez       $v0, .Llevel_38_8007EF6C
/* 7C3DC7C 8007EF4C 62000224 */   addiu     $v0, $zero, 0x62
/* 7C3DC80 8007EF50 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 7C3DC84 8007EF54 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 7C3DC88 8007EF58 00000000 */  nop
/* 7C3DC8C 8007EF5C 01004234 */  ori        $v0, $v0, 0x1
/* 7C3DC90 8007EF60 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 7C3DC94 8007EF64 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 7C3DC98 8007EF68 62000224 */  addiu      $v0, $zero, 0x62
.Llevel_38_8007EF6C:
/* 7C3DC9C 8007EF6C 2BFC0108 */  j          .Llevel_38_8007F0AC
/* 7C3DCA0 8007EF70 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_38_8007EF74:
/* 7C3DCA4 8007EF74 0C000426 */  addiu      $a0, $s0, 0xC
/* 7C3DCA8 8007EF78 69D6000C */  jal        func_800359A4
/* 7C3DCAC 8007EF7C 04000524 */   addiu     $a1, $zero, 0x4
/* 7C3DCB0 8007EF80 09004014 */  bnez       $v0, .Llevel_38_8007EFA8
/* 7C3DCB4 8007EF84 62000224 */   addiu     $v0, $zero, 0x62
/* 7C3DCB8 8007EF88 1000B2AF */  sw         $s2, 0x10($sp)
/* 7C3DCBC 8007EF8C 1800A427 */  addiu      $a0, $sp, 0x18
/* 7C3DCC0 8007EF90 0C004526 */  addiu      $a1, $s2, 0xC
/* 7C3DCC4 8007EF94 21300000 */  addu       $a2, $zero, $zero
/* 7C3DCC8 8007EF98 C360000C */  jal        func_8001830C
/* 7C3DCCC 8007EF9C 21380000 */   addu      $a3, $zero, $zero
/* 7C3DCD0 8007EFA0 02004010 */  beqz       $v0, .Llevel_38_8007EFAC
/* 7C3DCD4 8007EFA4 62000224 */   addiu     $v0, $zero, 0x62
.Llevel_38_8007EFA8:
/* 7C3DCD8 8007EFA8 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_38_8007EFAC:
/* 7C3DCDC 8007EFAC 0000048E */  lw         $a0, 0x0($s0)
/* 7C3DCE0 8007EFB0 0400058E */  lw         $a1, 0x4($s0)
/* 7C3DCE4 8007EFB4 203A010C */  jal        func_8004E880
/* 7C3DCE8 8007EFB8 21300000 */   addu      $a2, $zero, $zero
/* 7C3DCEC 8007EFBC 21200000 */  addu       $a0, $zero, $zero
/* 7C3DCF0 8007EFC0 0E000524 */  addiu      $a1, $zero, 0xE
/* 7C3DCF4 8007EFC4 F7D8000C */  jal        func_800363DC
/* 7C3DCF8 8007EFC8 21804000 */   addu      $s0, $v0, $zero
/* 7C3DCFC 8007EFCC 21800202 */  addu       $s0, $s0, $v0
/* 7C3DD00 8007EFD0 21980002 */  addu       $s3, $s0, $zero
/* 7C3DD04 8007EFD4 2800B127 */  addiu      $s1, $sp, 0x28
/* 7C3DD08 8007EFD8 21202002 */  addu       $a0, $s1, $zero
/* 7C3DD0C 8007EFDC 5E3C010C */  jal        func_8004F178
/* 7C3DD10 8007EFE0 0C004526 */   addiu     $a1, $s2, 0xC
/* 7C3DD14 8007EFE4 FF006332 */  andi       $v1, $s3, 0xFF
/* 7C3DD18 8007EFE8 80FF1326 */  addiu      $s3, $s0, -0x80
/* 7C3DD1C 8007EFEC 40180300 */  sll        $v1, $v1, 1
/* 7C3DD20 8007EFF0 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3DD24 8007EFF4 FF006732 */  andi       $a3, $s3, 0xFF
/* 7C3DD28 8007EFF8 40380700 */  sll        $a3, $a3, 1
/* 7C3DD2C 8007EFFC 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3DD30 8007F000 21082300 */  addu       $at, $at, $v1
/* 7C3DD34 8007F004 20592584 */  lh         $a1, %lo(D_80065920)($at)
/* 7C3DD38 8007F008 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 7C3DD3C 8007F00C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 7C3DD40 8007F010 00110500 */  sll        $v0, $a1, 4
/* 7C3DD44 8007F014 23104500 */  subu       $v0, $v0, $a1
/* 7C3DD48 8007F018 C3120200 */  sra        $v0, $v0, 11
/* 7C3DD4C 8007F01C 3800A2AF */  sw         $v0, 0x38($sp)
/* 7C3DD50 8007F020 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3DD54 8007F024 21082300 */  addu       $at, $at, $v1
/* 7C3DD58 8007F028 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7C3DD5C 8007F02C 21302002 */  addu       $a2, $s1, $zero
/* 7C3DD60 8007F030 4000A0AF */  sw         $zero, 0x40($sp)
/* 7C3DD64 8007F034 00110300 */  sll        $v0, $v1, 4
/* 7C3DD68 8007F038 23104300 */  subu       $v0, $v0, $v1
/* 7C3DD6C 8007F03C C3120200 */  sra        $v0, $v0, 11
/* 7C3DD70 8007F040 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 7C3DD74 8007F044 0680013C */  lui        $at, %hi(D_80065920)
/* 7C3DD78 8007F048 21082700 */  addu       $at, $at, $a3
/* 7C3DD7C 8007F04C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7C3DD80 8007F050 0D000524 */  addiu      $a1, $zero, 0xD
/* 7C3DD84 8007F054 80100300 */  sll        $v0, $v1, 2
/* 7C3DD88 8007F058 21104300 */  addu       $v0, $v0, $v1
/* 7C3DD8C 8007F05C 2800A38F */  lw         $v1, 0x28($sp)
/* 7C3DD90 8007F060 43120200 */  sra        $v0, $v0, 9
/* 7C3DD94 8007F064 21186200 */  addu       $v1, $v1, $v0
/* 7C3DD98 8007F068 2800A3AF */  sw         $v1, 0x28($sp)
/* 7C3DD9C 8007F06C 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C3DDA0 8007F070 21082700 */  addu       $at, $at, $a3
/* 7C3DDA4 8007F074 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7C3DDA8 8007F078 3800A727 */  addiu      $a3, $sp, 0x38
/* 7C3DDAC 8007F07C 80180200 */  sll        $v1, $v0, 2
/* 7C3DDB0 8007F080 21186200 */  addu       $v1, $v1, $v0
/* 7C3DDB4 8007F084 2C00A28F */  lw         $v0, 0x2C($sp)
/* 7C3DDB8 8007F088 431A0300 */  sra        $v1, $v1, 9
/* 7C3DDBC 8007F08C 21104300 */  addu       $v0, $v0, $v1
/* 7C3DDC0 8007F090 09F80001 */  jalr       $t0
/* 7C3DDC4 8007F094 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 7C3DDC8 8007F098 0A004390 */  lbu        $v1, 0xA($v0)
/* 7C3DDCC 8007F09C 0E000424 */  addiu      $a0, $zero, 0xE
/* 7C3DDD0 8007F0A0 020044A0 */  sb         $a0, 0x2($v0)
/* 7C3DDD4 8007F0A4 38006324 */  addiu      $v1, $v1, 0x38
/* 7C3DDD8 8007F0A8 0A0043A0 */  sb         $v1, 0xA($v0)
.Llevel_38_8007F0AC:
/* 7C3DDDC 8007F0AC 48004392 */  lbu        $v1, 0x48($s2)
/* 7C3DDE0 8007F0B0 62000224 */  addiu      $v0, $zero, 0x62
/* 7C3DDE4 8007F0B4 14006214 */  bne        $v1, $v0, .Llevel_38_8007F108
/* 7C3DDE8 8007F0B8 00000000 */   nop
.Llevel_38_8007F0BC:
/* 7C3DDEC 8007F0BC 3A004392 */  lbu        $v1, 0x3A($s2)
/* 7C3DDF0 8007F0C0 00000000 */  nop
/* 7C3DDF4 8007F0C4 40100300 */  sll        $v0, $v1, 1
/* 7C3DDF8 8007F0C8 21104300 */  addu       $v0, $v0, $v1
/* 7C3DDFC 8007F0CC 80100200 */  sll        $v0, $v0, 2
/* 7C3DE00 8007F0D0 23104300 */  subu       $v0, $v0, $v1
/* 7C3DE04 8007F0D4 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7C3DE08 8007F0D8 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7C3DE0C 8007F0DC C0100200 */  sll        $v0, $v0, 3
/* 7C3DE10 8007F0E0 21104300 */  addu       $v0, $v0, $v1
/* 7C3DE14 8007F0E4 0000438C */  lw         $v1, 0x0($v0)
/* 7C3DE18 8007F0E8 00000000 */  nop
/* 7C3DE1C 8007F0EC 0000628C */  lw         $v0, 0x0($v1)
/* 7C3DE20 8007F0F0 00000000 */  nop
/* 7C3DE24 8007F0F4 02005214 */  bne        $v0, $s2, .Llevel_38_8007F100
/* 7C3DE28 8007F0F8 00000000 */   nop
/* 7C3DE2C 8007F0FC 000060AC */  sw         $zero, 0x0($v1)
.Llevel_38_8007F100:
/* 7C3DE30 8007F100 C656010C */  jal        func_80055B18
/* 7C3DE34 8007F104 21204002 */   addu      $a0, $s2, $zero
.Llevel_38_8007F108:
/* 7C3DE38 8007F108 6800BF8F */  lw         $ra, 0x68($sp)
/* 7C3DE3C 8007F10C 6400B38F */  lw         $s3, 0x64($sp)
/* 7C3DE40 8007F110 6000B28F */  lw         $s2, 0x60($sp)
/* 7C3DE44 8007F114 5C00B18F */  lw         $s1, 0x5C($sp)
/* 7C3DE48 8007F118 5800B08F */  lw         $s0, 0x58($sp)
/* 7C3DE4C 8007F11C 7000BD27 */  addiu      $sp, $sp, 0x70
/* 7C3DE50 8007F120 0800E003 */  jr         $ra
/* 7C3DE54 8007F124 00000000 */   nop
.size MobyUpdate_601_level_38, . - MobyUpdate_601_level_38
