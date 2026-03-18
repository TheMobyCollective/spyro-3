.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_33_8007DB18
/* 71B5848 8007DB18 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 71B584C 8007DB1C 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 71B5850 8007DB20 21A88000 */  addu       $s5, $a0, $zero
/* 71B5854 8007DB24 0100033C */  lui        $v1, (0x10000 >> 16)
/* 71B5858 8007DB28 5800BFAF */  sw         $ra, 0x58($sp)
/* 71B585C 8007DB2C 5400B7AF */  sw         $s7, 0x54($sp)
/* 71B5860 8007DB30 5000B6AF */  sw         $s6, 0x50($sp)
/* 71B5864 8007DB34 4800B4AF */  sw         $s4, 0x48($sp)
/* 71B5868 8007DB38 4400B3AF */  sw         $s3, 0x44($sp)
/* 71B586C 8007DB3C 4000B2AF */  sw         $s2, 0x40($sp)
/* 71B5870 8007DB40 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 71B5874 8007DB44 3800B0AF */  sw         $s0, 0x38($sp)
/* 71B5878 8007DB48 1800A28E */  lw         $v0, 0x18($s5)
/* 71B587C 8007DB4C 0000B08E */  lw         $s0, 0x0($s5)
/* 71B5880 8007DB50 24104300 */  and        $v0, $v0, $v1
/* 71B5884 8007DB54 30004010 */  beqz       $v0, .Llevel_33_8007DC18
/* 71B5888 8007DB58 01000224 */   addiu     $v0, $zero, 0x1
/* 71B588C 8007DB5C 4800A392 */  lbu        $v1, 0x48($s5)
/* 71B5890 8007DB60 00000000 */  nop
/* 71B5894 8007DB64 2D006210 */  beq        $v1, $v0, .Llevel_33_8007DC1C
/* 71B5898 8007DB68 62000224 */   addiu     $v0, $zero, 0x62
/* 71B589C 8007DB6C 2C006210 */  beq        $v1, $v0, .Llevel_33_8007DC20
/* 71B58A0 8007DB70 21300000 */   addu      $a2, $zero, $zero
/* 71B58A4 8007DB74 0C00A38E */  lw         $v1, 0xC($s5)
/* 71B58A8 8007DB78 F0000224 */  addiu      $v0, $zero, 0xF0
/* 71B58AC 8007DB7C 5400A2A2 */  sb         $v0, 0x54($s5)
/* 71B58B0 8007DB80 5500A2A2 */  sb         $v0, 0x55($s5)
/* 71B58B4 8007DB84 5600A2A2 */  sb         $v0, 0x56($s5)
/* 71B58B8 8007DB88 3E000224 */  addiu      $v0, $zero, 0x3E
/* 71B58BC 8007DB8C 5700A2A2 */  sb         $v0, 0x57($s5)
/* 71B58C0 8007DB90 0780043C */  lui        $a0, %hi(D_80070328)
/* 71B58C4 8007DB94 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 71B58C8 8007DB98 1000A28E */  lw         $v0, 0x10($s5)
/* 71B58CC 8007DB9C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 71B58D0 8007DBA0 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 71B58D4 8007DBA4 23206400 */  subu       $a0, $v1, $a0
/* 71B58D8 8007DBA8 203A010C */  jal        func_8004E880
/* 71B58DC 8007DBAC 23284500 */   subu      $a1, $v0, $a1
/* 71B58E0 8007DBB0 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 71B58E4 8007DBB4 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 71B58E8 8007DBB8 00000000 */  nop
/* 71B58EC 8007DBBC 23106200 */  subu       $v0, $v1, $v0
/* 71B58F0 8007DBC0 21186200 */  addu       $v1, $v1, $v0
/* 71B58F4 8007DBC4 FF006330 */  andi       $v1, $v1, 0xFF
/* 71B58F8 8007DBC8 40180300 */  sll        $v1, $v1, 1
/* 71B58FC 8007DBCC 0680013C */  lui        $at, %hi(D_80065920)
/* 71B5900 8007DBD0 21082300 */  addu       $at, $at, $v1
/* 71B5904 8007DBD4 20592484 */  lh         $a0, %lo(D_80065920)($at)
/* 71B5908 8007DBD8 00000000 */  nop
/* 71B590C 8007DBDC 00110400 */  sll        $v0, $a0, 4
/* 71B5910 8007DBE0 23104400 */  subu       $v0, $v0, $a0
/* 71B5914 8007DBE4 43120200 */  sra        $v0, $v0, 9
/* 71B5918 8007DBE8 000002AE */  sw         $v0, 0x0($s0)
/* 71B591C 8007DBEC 0680013C */  lui        $at, %hi(D_800658A0)
/* 71B5920 8007DBF0 21082300 */  addu       $at, $at, $v1
/* 71B5924 8007DBF4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 71B5928 8007DBF8 64000224 */  addiu      $v0, $zero, 0x64
/* 71B592C 8007DBFC 080002AE */  sw         $v0, 0x8($s0)
/* 71B5930 8007DC00 00110300 */  sll        $v0, $v1, 4
/* 71B5934 8007DC04 23104300 */  subu       $v0, $v0, $v1
/* 71B5938 8007DC08 43120200 */  sra        $v0, $v0, 9
/* 71B593C 8007DC0C 040002AE */  sw         $v0, 0x4($s0)
/* 71B5940 8007DC10 62000224 */  addiu      $v0, $zero, 0x62
/* 71B5944 8007DC14 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_33_8007DC18:
/* 71B5948 8007DC18 4800A392 */  lbu        $v1, 0x48($s5)
.Llevel_33_8007DC1C:
/* 71B594C 8007DC1C 62000224 */  addiu      $v0, $zero, 0x62
.Llevel_33_8007DC20:
/* 71B5950 8007DC20 B6006210 */  beq        $v1, $v0, .Llevel_33_8007DEFC
/* 71B5954 8007DC24 63006228 */   slti      $v0, $v1, 0x63
/* 71B5958 8007DC28 07004010 */  beqz       $v0, .Llevel_33_8007DC48
/* 71B595C 8007DC2C 01000224 */   addiu     $v0, $zero, 0x1
/* 71B5960 8007DC30 0A006210 */  beq        $v1, $v0, .Llevel_33_8007DC5C
/* 71B5964 8007DC34 03000224 */   addiu     $v0, $zero, 0x3
/* 71B5968 8007DC38 5C006210 */  beq        $v1, $v0, .Llevel_33_8007DDAC
/* 71B596C 8007DC3C 00000000 */   nop
/* 71B5970 8007DC40 2BF80108 */  j          .Llevel_33_8007E0AC
/* 71B5974 8007DC44 00000000 */   nop
.Llevel_33_8007DC48:
/* 71B5978 8007DC48 63000224 */  addiu      $v0, $zero, 0x63
/* 71B597C 8007DC4C AF006210 */  beq        $v1, $v0, .Llevel_33_8007DF0C
/* 71B5980 8007DC50 00000000 */   nop
/* 71B5984 8007DC54 2BF80108 */  j          .Llevel_33_8007E0AC
/* 71B5988 8007DC58 00000000 */   nop
.Llevel_33_8007DC5C:
/* 71B598C 8007DC5C 21B00000 */  addu       $s6, $zero, $zero
/* 71B5990 8007DC60 50001724 */  addiu      $s7, $zero, 0x50
.Llevel_33_8007DC64:
/* 71B5994 8007DC64 0780023C */  lui        $v0, %hi(D_8006C578)
/* 71B5998 8007DC68 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 71B599C 8007DC6C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 71B59A0 8007DC70 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 71B59A4 8007DC74 00000000 */  nop
/* 71B59A8 8007DC78 23104300 */  subu       $v0, $v0, $v1
/* 71B59AC 8007DC7C 15004228 */  slti       $v0, $v0, 0x15
/* 71B59B0 8007DC80 FD004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B59B4 8007DC84 00000000 */   nop
/* 71B59B8 8007DC88 3600A486 */  lh         $a0, 0x36($s5)
/* 71B59BC 8007DC8C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71B59C0 8007DC90 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71B59C4 8007DC94 00000000 */  nop
/* 71B59C8 8007DC98 09F84000 */  jalr       $v0
/* 71B59CC 8007DC9C 2128A002 */   addu      $a1, $s5, $zero
/* 71B59D0 8007DCA0 21A04000 */  addu       $s4, $v0, $zero
/* 71B59D4 8007DCA4 3B008012 */  beqz       $s4, .Llevel_33_8007DD94
/* 71B59D8 8007DCA8 00000000 */   nop
/* 71B59DC 8007DCAC 0000928E */  lw         $s2, 0x0($s4)
/* 71B59E0 8007DCB0 9171010C */  jal        rand
/* 71B59E4 8007DCB4 00000000 */   nop
/* 71B59E8 8007DCB8 9171010C */  jal        rand
/* 71B59EC 8007DCBC FF0F5330 */   andi      $s3, $v0, 0xFFF
/* 71B59F0 8007DCC0 0C008426 */  addiu      $a0, $s4, 0xC
/* 71B59F4 8007DCC4 0C00A526 */  addiu      $a1, $s5, 0xC
/* 71B59F8 8007DCC8 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 71B59FC 8007DCCC FF0F5130 */  andi       $s1, $v0, 0xFFF
/* 71B5A00 8007DCD0 080080AE */  sw         $zero, 0x8($s4)
/* 71B5A04 8007DCD4 5E3C010C */  jal        func_8004F178
/* 71B5A08 8007DCD8 1C0083AE */   sw        $v1, 0x1C($s4)
/* 71B5A0C 8007DCDC 8B3A010C */  jal        func_8004EA2C
/* 71B5A10 8007DCE0 21202002 */   addu      $a0, $s1, $zero
/* 71B5A14 8007DCE4 21206002 */  addu       $a0, $s3, $zero
/* 71B5A18 8007DCE8 8B3A010C */  jal        func_8004EA2C
/* 71B5A1C 8007DCEC 21804000 */   addu      $s0, $v0, $zero
/* 71B5A20 8007DCF0 83811000 */  sra        $s0, $s0, 6
/* 71B5A24 8007DCF4 18000202 */  mult       $s0, $v0
/* 71B5A28 8007DCF8 21202002 */  addu       $a0, $s1, $zero
/* 71B5A2C 8007DCFC 12400000 */  mflo       $t0
/* 71B5A30 8007DD00 03130800 */  sra        $v0, $t0, 12
/* 71B5A34 8007DD04 8B3A010C */  jal        func_8004EA2C
/* 71B5A38 8007DD08 000042AE */   sw        $v0, 0x0($s2)
/* 71B5A3C 8007DD0C 21206002 */  addu       $a0, $s3, $zero
/* 71B5A40 8007DD10 793A010C */  jal        func_8004E9E4
/* 71B5A44 8007DD14 21804000 */   addu      $s0, $v0, $zero
/* 71B5A48 8007DD18 83811000 */  sra        $s0, $s0, 6
/* 71B5A4C 8007DD1C 18000202 */  mult       $s0, $v0
/* 71B5A50 8007DD20 21202002 */  addu       $a0, $s1, $zero
/* 71B5A54 8007DD24 12400000 */  mflo       $t0
/* 71B5A58 8007DD28 03130800 */  sra        $v0, $t0, 12
/* 71B5A5C 8007DD2C 793A010C */  jal        func_8004E9E4
/* 71B5A60 8007DD30 040042AE */   sw        $v0, 0x4($s2)
/* 71B5A64 8007DD34 1E000424 */  addiu      $a0, $zero, 0x1E
/* 71B5A68 8007DD38 32000524 */  addiu      $a1, $zero, 0x32
/* 71B5A6C 8007DD3C 83110200 */  sra        $v0, $v0, 6
/* 71B5A70 8007DD40 DBD8000C */  jal        func_8003636C
/* 71B5A74 8007DD44 080042AE */   sw        $v0, 0x8($s2)
/* 71B5A78 8007DD48 0C0042A6 */  sh         $v0, 0xC($s2)
/* 71B5A7C 8007DD4C 03000224 */  addiu      $v0, $zero, 0x3
/* 71B5A80 8007DD50 100040A2 */  sb         $zero, 0x10($s2)
/* 71B5A84 8007DD54 480082A2 */  sb         $v0, 0x48($s4)
/* 71B5A88 8007DD58 4F0097A2 */  sb         $s7, 0x4F($s4)
/* 71B5A8C 8007DD5C 4C0097A2 */  sb         $s7, 0x4C($s4)
/* 71B5A90 8007DD60 4E0097A2 */  sb         $s7, 0x4E($s4)
/* 71B5A94 8007DD64 5400A292 */  lbu        $v0, 0x54($s5)
/* 71B5A98 8007DD68 00000000 */  nop
/* 71B5A9C 8007DD6C 540082A2 */  sb         $v0, 0x54($s4)
/* 71B5AA0 8007DD70 5500A292 */  lbu        $v0, 0x55($s5)
/* 71B5AA4 8007DD74 00000000 */  nop
/* 71B5AA8 8007DD78 550082A2 */  sb         $v0, 0x55($s4)
/* 71B5AAC 8007DD7C 5600A292 */  lbu        $v0, 0x56($s5)
/* 71B5AB0 8007DD80 00000000 */  nop
/* 71B5AB4 8007DD84 560082A2 */  sb         $v0, 0x56($s4)
/* 71B5AB8 8007DD88 5700A292 */  lbu        $v0, 0x57($s5)
/* 71B5ABC 8007DD8C 00000000 */  nop
/* 71B5AC0 8007DD90 570082A2 */  sb         $v0, 0x57($s4)
.Llevel_33_8007DD94:
/* 71B5AC4 8007DD94 0100D626 */  addiu      $s6, $s6, 0x1
/* 71B5AC8 8007DD98 0800C22A */  slti       $v0, $s6, 0x8
/* 71B5ACC 8007DD9C B6004010 */  beqz       $v0, .Llevel_33_8007E078
/* 71B5AD0 8007DDA0 00000000 */   nop
/* 71B5AD4 8007DDA4 19F70108 */  j          .Llevel_33_8007DC64
/* 71B5AD8 8007DDA8 00000000 */   nop
.Llevel_33_8007DDAC:
/* 71B5ADC 8007DDAC 0C00A28E */  lw         $v0, 0xC($s5)
/* 71B5AE0 8007DDB0 00000000 */  nop
/* 71B5AE4 8007DDB4 00044228 */  slti       $v0, $v0, 0x400
/* 71B5AE8 8007DDB8 AF004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B5AEC 8007DDBC 00000000 */   nop
/* 71B5AF0 8007DDC0 1000A28E */  lw         $v0, 0x10($s5)
/* 71B5AF4 8007DDC4 00000000 */  nop
/* 71B5AF8 8007DDC8 00044228 */  slti       $v0, $v0, 0x400
/* 71B5AFC 8007DDCC AA004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B5B00 8007DDD0 00000000 */   nop
/* 71B5B04 8007DDD4 1400A28E */  lw         $v0, 0x14($s5)
/* 71B5B08 8007DDD8 00000000 */  nop
/* 71B5B0C 8007DDDC 00044228 */  slti       $v0, $v0, 0x400
/* 71B5B10 8007DDE0 A5004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B5B14 8007DDE4 0C00A426 */   addiu     $a0, $s5, 0xC
/* 71B5B18 8007DDE8 6564000C */  jal        func_80019194
/* 71B5B1C 8007DDEC 96000524 */   addiu     $a1, $zero, 0x96
/* 71B5B20 8007DDF0 30004010 */  beqz       $v0, .Llevel_33_8007DEB4
/* 71B5B24 8007DDF4 0C00A426 */   addiu     $a0, $s5, 0xC
/* 71B5B28 8007DDF8 0780053C */  lui        $a1, %hi(D_80071918)
/* 71B5B2C 8007DDFC 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 71B5B30 8007DE00 0000038E */  lw         $v1, 0x0($s0)
/* 71B5B34 8007DE04 0000A28C */  lw         $v0, 0x0($a1)
/* 71B5B38 8007DE08 00000000 */  nop
/* 71B5B3C 8007DE0C 18006200 */  mult       $v1, $v0
/* 71B5B40 8007DE10 0400038E */  lw         $v1, 0x4($s0)
/* 71B5B44 8007DE14 12300000 */  mflo       $a2
/* 71B5B48 8007DE18 0780023C */  lui        $v0, %hi(D_8007191C)
/* 71B5B4C 8007DE1C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 71B5B50 8007DE20 00000000 */  nop
/* 71B5B54 8007DE24 18006200 */  mult       $v1, $v0
/* 71B5B58 8007DE28 0800038E */  lw         $v1, 0x8($s0)
/* 71B5B5C 8007DE2C 12200000 */  mflo       $a0
/* 71B5B60 8007DE30 0780023C */  lui        $v0, %hi(D_80071920)
/* 71B5B64 8007DE34 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 71B5B68 8007DE38 00000000 */  nop
/* 71B5B6C 8007DE3C 18006200 */  mult       $v1, $v0
/* 71B5B70 8007DE40 2110C400 */  addu       $v0, $a2, $a0
/* 71B5B74 8007DE44 12180000 */  mflo       $v1
/* 71B5B78 8007DE48 21104300 */  addu       $v0, $v0, $v1
/* 71B5B7C 8007DE4C 19004104 */  bgez       $v0, .Llevel_33_8007DEB4
/* 71B5B80 8007DE50 0C00A426 */   addiu     $a0, $s5, 0xC
/* 71B5B84 8007DE54 21200002 */  addu       $a0, $s0, $zero
/* 71B5B88 8007DE58 DD3B010C */  jal        func_8004EF74
/* 71B5B8C 8007DE5C 21300002 */   addu      $a2, $s0, $zero
/* 71B5B90 8007DE60 14004010 */  beqz       $v0, .Llevel_33_8007DEB4
/* 71B5B94 8007DE64 0C00A426 */   addiu     $a0, $s5, 0xC
/* 71B5B98 8007DE68 0000038E */  lw         $v1, 0x0($s0)
/* 71B5B9C 8007DE6C 00000000 */  nop
/* 71B5BA0 8007DE70 40100300 */  sll        $v0, $v1, 1
/* 71B5BA4 8007DE74 21104300 */  addu       $v0, $v0, $v1
/* 71B5BA8 8007DE78 40100200 */  sll        $v0, $v0, 1
/* 71B5BAC 8007DE7C 0400038E */  lw         $v1, 0x4($s0)
/* 71B5BB0 8007DE80 C3100200 */  sra        $v0, $v0, 3
/* 71B5BB4 8007DE84 000002AE */  sw         $v0, 0x0($s0)
/* 71B5BB8 8007DE88 40100300 */  sll        $v0, $v1, 1
/* 71B5BBC 8007DE8C 21104300 */  addu       $v0, $v0, $v1
/* 71B5BC0 8007DE90 40100200 */  sll        $v0, $v0, 1
/* 71B5BC4 8007DE94 0800038E */  lw         $v1, 0x8($s0)
/* 71B5BC8 8007DE98 C3100200 */  sra        $v0, $v0, 3
/* 71B5BCC 8007DE9C 040002AE */  sw         $v0, 0x4($s0)
/* 71B5BD0 8007DEA0 40100300 */  sll        $v0, $v1, 1
/* 71B5BD4 8007DEA4 21104300 */  addu       $v0, $v0, $v1
/* 71B5BD8 8007DEA8 40100200 */  sll        $v0, $v0, 1
/* 71B5BDC 8007DEAC C3100200 */  sra        $v0, $v0, 3
/* 71B5BE0 8007DEB0 080002AE */  sw         $v0, 0x8($s0)
.Llevel_33_8007DEB4:
/* 71B5BE4 8007DEB4 21288000 */  addu       $a1, $a0, $zero
/* 71B5BE8 8007DEB8 653C010C */  jal        func_8004F194
/* 71B5BEC 8007DEBC 21300002 */   addu      $a2, $s0, $zero
/* 71B5BF0 8007DEC0 0800028E */  lw         $v0, 0x8($s0)
/* 71B5BF4 8007DEC4 00000000 */  nop
/* 71B5BF8 8007DEC8 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 71B5BFC 8007DECC 080002AE */  sw         $v0, 0x8($s0)
/* 71B5C00 8007DED0 80FF4228 */  slti       $v0, $v0, -0x80
/* 71B5C04 8007DED4 02004010 */  beqz       $v0, .Llevel_33_8007DEE0
/* 71B5C08 8007DED8 80FF0224 */   addiu     $v0, $zero, -0x80
/* 71B5C0C 8007DEDC 080002AE */  sw         $v0, 0x8($s0)
.Llevel_33_8007DEE0:
/* 71B5C10 8007DEE0 0C000426 */  addiu      $a0, $s0, 0xC
/* 71B5C14 8007DEE4 69D6000C */  jal        func_800359A4
/* 71B5C18 8007DEE8 02000524 */   addiu     $a1, $zero, 0x2
/* 71B5C1C 8007DEEC 6F004010 */  beqz       $v0, .Llevel_33_8007E0AC
/* 71B5C20 8007DEF0 00000000 */   nop
/* 71B5C24 8007DEF4 1EF80108 */  j          .Llevel_33_8007E078
/* 71B5C28 8007DEF8 00000000 */   nop
.Llevel_33_8007DEFC:
/* 71B5C2C 8007DEFC 0800028E */  lw         $v0, 0x8($s0)
/* 71B5C30 8007DF00 00000000 */  nop
/* 71B5C34 8007DF04 F4FF4224 */  addiu      $v0, $v0, -0xC
/* 71B5C38 8007DF08 080002AE */  sw         $v0, 0x8($s0)
.Llevel_33_8007DF0C:
/* 71B5C3C 8007DF0C 0C00A28E */  lw         $v0, 0xC($s5)
/* 71B5C40 8007DF10 00000000 */  nop
/* 71B5C44 8007DF14 00044228 */  slti       $v0, $v0, 0x400
/* 71B5C48 8007DF18 57004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B5C4C 8007DF1C 00000000 */   nop
/* 71B5C50 8007DF20 1000A28E */  lw         $v0, 0x10($s5)
/* 71B5C54 8007DF24 00000000 */  nop
/* 71B5C58 8007DF28 00044228 */  slti       $v0, $v0, 0x400
/* 71B5C5C 8007DF2C 52004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B5C60 8007DF30 00000000 */   nop
/* 71B5C64 8007DF34 1400A28E */  lw         $v0, 0x14($s5)
/* 71B5C68 8007DF38 00000000 */  nop
/* 71B5C6C 8007DF3C 00044228 */  slti       $v0, $v0, 0x400
/* 71B5C70 8007DF40 4D004014 */  bnez       $v0, .Llevel_33_8007E078
/* 71B5C74 8007DF44 1800A427 */   addiu     $a0, $sp, 0x18
/* 71B5C78 8007DF48 0C00B126 */  addiu      $s1, $s5, 0xC
/* 71B5C7C 8007DF4C 5E3C010C */  jal        func_8004F178
/* 71B5C80 8007DF50 21282002 */   addu      $a1, $s1, $zero
/* 71B5C84 8007DF54 21202002 */  addu       $a0, $s1, $zero
/* 71B5C88 8007DF58 21282002 */  addu       $a1, $s1, $zero
/* 71B5C8C 8007DF5C 653C010C */  jal        func_8004F194
/* 71B5C90 8007DF60 21300002 */   addu      $a2, $s0, $zero
/* 71B5C94 8007DF64 4800A292 */  lbu        $v0, 0x48($s5)
/* 71B5C98 8007DF68 62001224 */  addiu      $s2, $zero, 0x62
/* 71B5C9C 8007DF6C 27005210 */  beq        $v0, $s2, .Llevel_33_8007E00C
/* 71B5CA0 8007DF70 21200000 */   addu      $a0, $zero, $zero
/* 71B5CA4 8007DF74 F7D8000C */  jal        func_800363DC
/* 71B5CA8 8007DF78 07000524 */   addiu     $a1, $zero, 0x7
/* 71B5CAC 8007DF7C 21200000 */  addu       $a0, $zero, $zero
/* 71B5CB0 8007DF80 07000524 */  addiu      $a1, $zero, 0x7
/* 71B5CB4 8007DF84 F7D8000C */  jal        func_800363DC
/* 71B5CB8 8007DF88 2800A2AF */   sw        $v0, 0x28($sp)
/* 71B5CBC 8007DF8C 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 71B5CC0 8007DF90 0780023C */  lui        $v0, %hi(D_8006C640)
/* 71B5CC4 8007DF94 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 71B5CC8 8007DF98 0F000324 */  addiu      $v1, $zero, 0xF
/* 71B5CCC 8007DF9C 01004230 */  andi       $v0, $v0, 0x1
/* 71B5CD0 8007DFA0 09004014 */  bnez       $v0, .Llevel_33_8007DFC8
/* 71B5CD4 8007DFA4 3000A3AF */   sw        $v1, 0x30($sp)
/* 71B5CD8 8007DFA8 01000424 */  addiu      $a0, $zero, 0x1
/* 71B5CDC 8007DFAC 0D000524 */  addiu      $a1, $zero, 0xD
/* 71B5CE0 8007DFB0 21302002 */  addu       $a2, $s1, $zero
/* 71B5CE4 8007DFB4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B5CE8 8007DFB8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B5CEC 8007DFBC 00000000 */  nop
/* 71B5CF0 8007DFC0 09F84000 */  jalr       $v0
/* 71B5CF4 8007DFC4 2800A727 */   addiu     $a3, $sp, 0x28
.Llevel_33_8007DFC8:
/* 71B5CF8 8007DFC8 4800A292 */  lbu        $v0, 0x48($s5)
/* 71B5CFC 8007DFCC 00000000 */  nop
/* 71B5D00 8007DFD0 0E005210 */  beq        $v0, $s2, .Llevel_33_8007E00C
/* 71B5D04 8007DFD4 21202002 */   addu      $a0, $s1, $zero
/* 71B5D08 8007DFD8 64000524 */  addiu      $a1, $zero, 0x64
/* 71B5D0C 8007DFDC A270000C */  jal        func_8001C288
/* 71B5D10 8007DFE0 07000624 */   addiu     $a2, $zero, 0x7
/* 71B5D14 8007DFE4 11004010 */  beqz       $v0, .Llevel_33_8007E02C
/* 71B5D18 8007DFE8 11000426 */   addiu     $a0, $s0, 0x11
/* 71B5D1C 8007DFEC 0000048E */  lw         $a0, 0x0($s0)
/* 71B5D20 8007DFF0 0400058E */  lw         $a1, 0x4($s0)
/* 71B5D24 8007DFF4 203A010C */  jal        func_8004E880
/* 71B5D28 8007DFF8 21300000 */   addu      $a2, $zero, $zero
/* 71B5D2C 8007DFFC 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 71B5D30 8007E000 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 71B5D34 8007E004 09F80108 */  j          .Llevel_33_8007E024
/* 71B5D38 8007E008 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_33_8007E00C:
/* 71B5D3C 8007E00C 0C00A426 */  addiu      $a0, $s5, 0xC
/* 71B5D40 8007E010 64000524 */  addiu      $a1, $zero, 0x64
/* 71B5D44 8007E014 A270000C */  jal        func_8001C288
/* 71B5D48 8007E018 21300000 */   addu      $a2, $zero, $zero
/* 71B5D4C 8007E01C 02004010 */  beqz       $v0, .Llevel_33_8007E028
/* 71B5D50 8007E020 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_33_8007E024:
/* 71B5D54 8007E024 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_33_8007E028:
/* 71B5D58 8007E028 11000426 */  addiu      $a0, $s0, 0x11
.Llevel_33_8007E02C:
/* 71B5D5C 8007E02C 69D6000C */  jal        func_800359A4
/* 71B5D60 8007E030 01000524 */   addiu     $a1, $zero, 0x1
/* 71B5D64 8007E034 0B004010 */  beqz       $v0, .Llevel_33_8007E064
/* 71B5D68 8007E038 0C00A426 */   addiu     $a0, $s5, 0xC
/* 71B5D6C 8007E03C 96000524 */  addiu      $a1, $zero, 0x96
/* 71B5D70 8007E040 01000624 */  addiu      $a2, $zero, 0x1
/* 71B5D74 8007E044 21380000 */  addu       $a3, $zero, $zero
/* 71B5D78 8007E048 0200023C */  lui        $v0, (0x20000 >> 16)
/* 71B5D7C 8007E04C 1000A2AF */  sw         $v0, 0x10($sp)
/* 71B5D80 8007E050 8C6E000C */  jal        func_8001BA30
/* 71B5D84 8007E054 1400B5AF */   sw        $s5, 0x14($sp)
/* 71B5D88 8007E058 02004010 */  beqz       $v0, .Llevel_33_8007E064
/* 71B5D8C 8007E05C 01000224 */   addiu     $v0, $zero, 0x1
/* 71B5D90 8007E060 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_33_8007E064:
/* 71B5D94 8007E064 0C000426 */  addiu      $a0, $s0, 0xC
/* 71B5D98 8007E068 69D6000C */  jal        func_800359A4
/* 71B5D9C 8007E06C 02000524 */   addiu     $a1, $zero, 0x2
/* 71B5DA0 8007E070 05004010 */  beqz       $v0, .Llevel_33_8007E088
/* 71B5DA4 8007E074 1800A427 */   addiu     $a0, $sp, 0x18
.Llevel_33_8007E078:
/* 71B5DA8 8007E078 C656010C */  jal        func_80055B18
/* 71B5DAC 8007E07C 2120A002 */   addu      $a0, $s5, $zero
/* 71B5DB0 8007E080 2BF80108 */  j          .Llevel_33_8007E0AC
/* 71B5DB4 8007E084 00000000 */   nop
.Llevel_33_8007E088:
/* 71B5DB8 8007E088 DA60000C */  jal        func_80018368
/* 71B5DBC 8007E08C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 71B5DC0 8007E090 02004010 */  beqz       $v0, .Llevel_33_8007E09C
/* 71B5DC4 8007E094 01000224 */   addiu     $v0, $zero, 0x1
/* 71B5DC8 8007E098 4800A2A2 */  sb         $v0, 0x48($s5)
.Llevel_33_8007E09C:
/* 71B5DCC 8007E09C 4ED7000C */  jal        func_80035D38
/* 71B5DD0 8007E0A0 2120A002 */   addu      $a0, $s5, $zero
/* 71B5DD4 8007E0A4 A758010C */  jal        func_8005629C
/* 71B5DD8 8007E0A8 2120A002 */   addu      $a0, $s5, $zero
.Llevel_33_8007E0AC:
/* 71B5DDC 8007E0AC 5800BF8F */  lw         $ra, 0x58($sp)
/* 71B5DE0 8007E0B0 5400B78F */  lw         $s7, 0x54($sp)
/* 71B5DE4 8007E0B4 5000B68F */  lw         $s6, 0x50($sp)
/* 71B5DE8 8007E0B8 4C00B58F */  lw         $s5, 0x4C($sp)
/* 71B5DEC 8007E0BC 4800B48F */  lw         $s4, 0x48($sp)
/* 71B5DF0 8007E0C0 4400B38F */  lw         $s3, 0x44($sp)
/* 71B5DF4 8007E0C4 4000B28F */  lw         $s2, 0x40($sp)
/* 71B5DF8 8007E0C8 3C00B18F */  lw         $s1, 0x3C($sp)
/* 71B5DFC 8007E0CC 3800B08F */  lw         $s0, 0x38($sp)
/* 71B5E00 8007E0D0 6000BD27 */  addiu      $sp, $sp, 0x60
/* 71B5E04 8007E0D4 0800E003 */  jr         $ra
/* 71B5E08 8007E0D8 00000000 */   nop
.size func_level_33_8007DB18, . - func_level_33_8007DB18
