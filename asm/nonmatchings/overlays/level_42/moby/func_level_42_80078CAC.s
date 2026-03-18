.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_42_80078CAC
/* 847D9DC 80078CAC B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 847D9E0 80078CB0 3400B1AF */  sw         $s1, 0x34($sp)
/* 847D9E4 80078CB4 21888000 */  addu       $s1, $a0, $zero
/* 847D9E8 80078CB8 4000BFAF */  sw         $ra, 0x40($sp)
/* 847D9EC 80078CBC 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 847D9F0 80078CC0 3800B2AF */  sw         $s2, 0x38($sp)
/* 847D9F4 80078CC4 3000B0AF */  sw         $s0, 0x30($sp)
/* 847D9F8 80078CC8 49002292 */  lbu        $v0, 0x49($s1)
/* 847D9FC 80078CCC 00000000 */  nop
/* 847DA00 80078CD0 04004014 */  bnez       $v0, .Llevel_42_80078CE4
/* 847DA04 80078CD4 00000000 */   nop
/* 847DA08 80078CD8 9171010C */  jal        rand
/* 847DA0C 80078CDC 00000000 */   nop
/* 847DA10 80078CE0 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_42_80078CE4:
/* 847DA14 80078CE4 0680023C */  lui        $v0, %hi(D_8006581C)
/* 847DA18 80078CE8 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 847DA1C 80078CEC 00000000 */  nop
/* 847DA20 80078CF0 02004228 */  slti       $v0, $v0, 0x2
/* 847DA24 80078CF4 42004014 */  bnez       $v0, .Llevel_42_80078E00
/* 847DA28 80078CF8 0C003026 */   addiu     $s0, $s1, 0xC
/* 847DA2C 80078CFC 0780053C */  lui        $a1, %hi(D_80070328)
/* 847DA30 80078D00 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 847DA34 80078D04 CD3C010C */  jal        func_8004F334
/* 847DA38 80078D08 21200002 */   addu      $a0, $s0, $zero
/* 847DA3C 80078D0C 0680033C */  lui        $v1, %hi(D_80065810)
/* 847DA40 80078D10 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 847DA44 80078D14 00000000 */  nop
/* 847DA48 80078D18 2A104300 */  slt        $v0, $v0, $v1
/* 847DA4C 80078D1C 38004010 */  beqz       $v0, .Llevel_42_80078E00
/* 847DA50 80078D20 00000000 */   nop
/* 847DA54 80078D24 1400228E */  lw         $v0, 0x14($s1)
/* 847DA58 80078D28 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 847DA5C 80078D2C 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 847DA60 80078D30 64014224 */  addiu      $v0, $v0, 0x164
/* 847DA64 80078D34 23186200 */  subu       $v1, $v1, $v0
/* 847DA68 80078D38 0680023C */  lui        $v0, %hi(D_80065818)
/* 847DA6C 80078D3C 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 847DA70 80078D40 02006104 */  bgez       $v1, .Llevel_42_80078D4C
/* 847DA74 80078D44 00000000 */   nop
/* 847DA78 80078D48 23180300 */  negu       $v1, $v1
.Llevel_42_80078D4C:
/* 847DA7C 80078D4C 2A186200 */  slt        $v1, $v1, $v0
/* 847DA80 80078D50 2B006010 */  beqz       $v1, .Llevel_42_80078E00
/* 847DA84 80078D54 00000000 */   nop
/* 847DA88 80078D58 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 847DA8C 80078D5C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 847DA90 80078D60 00000000 */  nop
/* 847DA94 80078D64 26008010 */  beqz       $a0, .Llevel_42_80078E00
/* 847DA98 80078D68 0C008424 */   addiu     $a0, $a0, 0xC
/* 847DA9C 80078D6C 21280002 */  addu       $a1, $s0, $zero
/* 847DAA0 80078D70 8E4F000C */  jal        func_80013E38
/* 847DAA4 80078D74 21300000 */   addu      $a2, $zero, $zero
/* 847DAA8 80078D78 21004010 */  beqz       $v0, .Llevel_42_80078E00
/* 847DAAC 80078D7C 00000000 */   nop
/* 847DAB0 80078D80 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 847DAB4 80078D84 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 847DAB8 80078D88 00000000 */  nop
/* 847DABC 80078D8C 0000708C */  lw         $s0, 0x0($v1)
/* 847DAC0 80078D90 00000000 */  nop
/* 847DAC4 80078D94 1400028E */  lw         $v0, 0x14($s0)
/* 847DAC8 80078D98 00000000 */  nop
/* 847DACC 80078D9C 09004010 */  beqz       $v0, .Llevel_42_80078DC4
/* 847DAD0 80078DA0 00000000 */   nop
/* 847DAD4 80078DA4 16005110 */  beq        $v0, $s1, .Llevel_42_80078E00
/* 847DAD8 80078DA8 00000000 */   nop
/* 847DADC 80078DAC 00000286 */  lh         $v0, 0x0($s0)
/* 847DAE0 80078DB0 00000000 */  nop
/* 847DAE4 80078DB4 12004018 */  blez       $v0, .Llevel_42_80078E00
/* 847DAE8 80078DB8 00000000 */   nop
/* 847DAEC 80078DBC 80E30108 */  j          .Llevel_42_80078E00
/* 847DAF0 80078DC0 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_42_80078DC4:
/* 847DAF4 80078DC4 09000224 */  addiu      $v0, $zero, 0x9
/* 847DAF8 80078DC8 490062A0 */  sb         $v0, 0x49($v1)
/* 847DAFC 80078DCC 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 847DB00 80078DD0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 847DB04 80078DD4 02000592 */  lbu        $a1, 0x2($s0)
/* 847DB08 80078DD8 140011AE */  sw         $s1, 0x14($s0)
/* 847DB0C 80078DDC F0EF000C */  jal        func_8003BFC0
/* 847DB10 80078DE0 000000A6 */   sh        $zero, 0x0($s0)
/* 847DB14 80078DE4 06004014 */  bnez       $v0, .Llevel_42_80078E00
/* 847DB18 80078DE8 21280000 */   addu      $a1, $zero, $zero
/* 847DB1C 80078DEC 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 847DB20 80078DF0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 847DB24 80078DF4 AFEE000C */  jal        func_8003BABC
/* 847DB28 80078DF8 21300000 */   addu      $a2, $zero, $zero
/* 847DB2C 80078DFC 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_42_80078E00:
/* 847DB30 80078E00 1800228E */  lw         $v0, 0x18($s1)
/* 847DB34 80078E04 1B10033C */  lui        $v1, (0x101B0000 >> 16)
/* 847DB38 80078E08 24104300 */  and        $v0, $v0, $v1
/* 847DB3C 80078E0C 63004010 */  beqz       $v0, .Llevel_42_80078F9C
/* 847DB40 80078E10 21202002 */   addu      $a0, $s1, $zero
/* 847DB44 80078E14 21280000 */  addu       $a1, $zero, $zero
/* 847DB48 80078E18 AFEE000C */  jal        func_8003BABC
/* 847DB4C 80078E1C 21300000 */   addu      $a2, $zero, $zero
/* 847DB50 80078E20 64000224 */  addiu      $v0, $zero, 0x64
/* 847DB54 80078E24 490022A2 */  sb         $v0, 0x49($s1)
/* 847DB58 80078E28 21800000 */  addu       $s0, $zero, $zero
/* 847DB5C 80078E2C 01001324 */  addiu      $s3, $zero, 0x1
/* 847DB60 80078E30 09001224 */  addiu      $s2, $zero, 0x9
.Llevel_42_80078E34:
/* 847DB64 80078E34 0780023C */  lui        $v0, %hi(D_8006C578)
/* 847DB68 80078E38 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 847DB6C 80078E3C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 847DB70 80078E40 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 847DB74 80078E44 00000000 */  nop
/* 847DB78 80078E48 23104300 */  subu       $v0, $v0, $v1
/* 847DB7C 80078E4C 15004228 */  slti       $v0, $v0, 0x15
/* 847DB80 80078E50 13004014 */  bnez       $v0, .Llevel_42_80078EA0
/* 847DB84 80078E54 36010424 */   addiu     $a0, $zero, 0x136
/* 847DB88 80078E58 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 847DB8C 80078E5C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 847DB90 80078E60 00000000 */  nop
/* 847DB94 80078E64 09F84000 */  jalr       $v0
/* 847DB98 80078E68 21282002 */   addu      $a1, $s1, $zero
/* 847DB9C 80078E6C 21184000 */  addu       $v1, $v0, $zero
/* 847DBA0 80078E70 07006010 */  beqz       $v1, .Llevel_42_80078E90
/* 847DBA4 80078E74 0600022A */   slti      $v0, $s0, 0x6
/* 847DBA8 80078E78 03004010 */  beqz       $v0, .Llevel_42_80078E88
/* 847DBAC 80078E7C 00000000 */   nop
/* 847DBB0 80078E80 A4E30108 */  j          .Llevel_42_80078E90
/* 847DBB4 80078E84 490072A0 */   sb        $s2, 0x49($v1)
.Llevel_42_80078E88:
/* 847DBB8 80078E88 3C0073A0 */  sb         $s3, 0x3C($v1)
/* 847DBBC 80078E8C 490060A0 */  sb         $zero, 0x49($v1)
.Llevel_42_80078E90:
/* 847DBC0 80078E90 01001026 */  addiu      $s0, $s0, 0x1
/* 847DBC4 80078E94 0C00022A */  slti       $v0, $s0, 0xC
/* 847DBC8 80078E98 E6FF4014 */  bnez       $v0, .Llevel_42_80078E34
/* 847DBCC 80078E9C 00000000 */   nop
.Llevel_42_80078EA0:
/* 847DBD0 80078EA0 21800000 */  addu       $s0, $zero, $zero
/* 847DBD4 80078EA4 40001224 */  addiu      $s2, $zero, 0x40
/* 847DBD8 80078EA8 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_42_80078EAC:
/* 847DBDC 80078EAC 5E3C010C */  jal        func_8004F178
/* 847DBE0 80078EB0 0C002526 */   addiu     $a1, $s1, 0xC
/* 847DBE4 80078EB4 9171010C */  jal        rand
/* 847DBE8 80078EB8 01001026 */   addiu     $s0, $s0, 0x1
/* 847DBEC 80078EBC 1000A38F */  lw         $v1, 0x10($sp)
/* 847DBF0 80078EC0 FF004230 */  andi       $v0, $v0, 0xFF
/* 847DBF4 80078EC4 80006324 */  addiu      $v1, $v1, 0x80
/* 847DBF8 80078EC8 23186200 */  subu       $v1, $v1, $v0
/* 847DBFC 80078ECC 9171010C */  jal        rand
/* 847DC00 80078ED0 1000A3AF */   sw        $v1, 0x10($sp)
/* 847DC04 80078ED4 1400A38F */  lw         $v1, 0x14($sp)
/* 847DC08 80078ED8 FF004230 */  andi       $v0, $v0, 0xFF
/* 847DC0C 80078EDC 80006324 */  addiu      $v1, $v1, 0x80
/* 847DC10 80078EE0 23186200 */  subu       $v1, $v1, $v0
/* 847DC14 80078EE4 9171010C */  jal        rand
/* 847DC18 80078EE8 1400A3AF */   sw        $v1, 0x14($sp)
/* 847DC1C 80078EEC 1800A38F */  lw         $v1, 0x18($sp)
/* 847DC20 80078EF0 FF014230 */  andi       $v0, $v0, 0x1FF
/* 847DC24 80078EF4 21186200 */  addu       $v1, $v1, $v0
/* 847DC28 80078EF8 9171010C */  jal        rand
/* 847DC2C 80078EFC 1800A3AF */   sw        $v1, 0x18($sp)
/* 847DC30 80078F00 7F004230 */  andi       $v0, $v0, 0x7F
/* 847DC34 80078F04 23104202 */  subu       $v0, $s2, $v0
/* 847DC38 80078F08 9171010C */  jal        rand
/* 847DC3C 80078F0C 2000A2AF */   sw        $v0, 0x20($sp)
/* 847DC40 80078F10 7F004230 */  andi       $v0, $v0, 0x7F
/* 847DC44 80078F14 23104202 */  subu       $v0, $s2, $v0
/* 847DC48 80078F18 9171010C */  jal        rand
/* 847DC4C 80078F1C 2400A2AF */   sw        $v0, 0x24($sp)
/* 847DC50 80078F20 01000424 */  addiu      $a0, $zero, 0x1
/* 847DC54 80078F24 27000524 */  addiu      $a1, $zero, 0x27
/* 847DC58 80078F28 1000A627 */  addiu      $a2, $sp, 0x10
/* 847DC5C 80078F2C 2000A727 */  addiu      $a3, $sp, 0x20
/* 847DC60 80078F30 1F004230 */  andi       $v0, $v0, 0x1F
/* 847DC64 80078F34 10000324 */  addiu      $v1, $zero, 0x10
/* 847DC68 80078F38 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 847DC6C 80078F3C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 847DC70 80078F40 23186200 */  subu       $v1, $v1, $v0
/* 847DC74 80078F44 09F80001 */  jalr       $t0
/* 847DC78 80078F48 2800A3AF */   sw        $v1, 0x28($sp)
/* 847DC7C 80078F4C 02000424 */  addiu      $a0, $zero, 0x2
/* 847DC80 80078F50 46000524 */  addiu      $a1, $zero, 0x46
/* 847DC84 80078F54 1000A627 */  addiu      $a2, $sp, 0x10
/* 847DC88 80078F58 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 847DC8C 80078F5C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 847DC90 80078F60 00000000 */  nop
/* 847DC94 80078F64 09F84000 */  jalr       $v0
/* 847DC98 80078F68 18000724 */   addiu     $a3, $zero, 0x18
/* 847DC9C 80078F6C 0800022A */  slti       $v0, $s0, 0x8
/* 847DCA0 80078F70 CEFF4014 */  bnez       $v0, .Llevel_42_80078EAC
/* 847DCA4 80078F74 1000A427 */   addiu     $a0, $sp, 0x10
/* 847DCA8 80078F78 21202002 */  addu       $a0, $s1, $zero
/* 847DCAC 80078F7C 21280000 */  addu       $a1, $zero, $zero
/* 847DCB0 80078F80 21300000 */  addu       $a2, $zero, $zero
/* 847DCB4 80078F84 9ADA000C */  jal        func_80036A68
/* 847DCB8 80078F88 21380000 */   addu      $a3, $zero, $zero
/* 847DCBC 80078F8C C656010C */  jal        func_80055B18
/* 847DCC0 80078F90 21202002 */   addu      $a0, $s1, $zero
/* 847DCC4 80078F94 03E40108 */  j          .Llevel_42_8007900C
/* 847DCC8 80078F98 00000000 */   nop
.Llevel_42_80078F9C:
/* 847DCCC 80078F9C 0780023C */  lui        $v0, %hi(D_8006C644)
/* 847DCD0 80078FA0 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 847DCD4 80078FA4 49002392 */  lbu        $v1, 0x49($s1)
/* 847DCD8 80078FA8 40100200 */  sll        $v0, $v0, 1
/* 847DCDC 80078FAC 21104300 */  addu       $v0, $v0, $v1
/* 847DCE0 80078FB0 FF004230 */  andi       $v0, $v0, 0xFF
/* 847DCE4 80078FB4 40100200 */  sll        $v0, $v0, 1
/* 847DCE8 80078FB8 0680013C */  lui        $at, %hi(D_80065920)
/* 847DCEC 80078FBC 21082200 */  addu       $at, $at, $v0
/* 847DCF0 80078FC0 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 847DCF4 80078FC4 00000000 */  nop
/* 847DCF8 80078FC8 00140200 */  sll        $v0, $v0, 16
/* 847DCFC 80078FCC 43160200 */  sra        $v0, $v0, 25
/* 847DD00 80078FD0 440022A2 */  sb         $v0, 0x44($s1)
/* 847DD04 80078FD4 0780023C */  lui        $v0, %hi(D_8006C644)
/* 847DD08 80078FD8 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 847DD0C 80078FDC 49002392 */  lbu        $v1, 0x49($s1)
/* 847DD10 80078FE0 40100200 */  sll        $v0, $v0, 1
/* 847DD14 80078FE4 21104300 */  addu       $v0, $v0, $v1
/* 847DD18 80078FE8 FF004230 */  andi       $v0, $v0, 0xFF
/* 847DD1C 80078FEC 40100200 */  sll        $v0, $v0, 1
/* 847DD20 80078FF0 0680013C */  lui        $at, %hi(D_800658A0)
/* 847DD24 80078FF4 21082200 */  addu       $at, $at, $v0
/* 847DD28 80078FF8 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 847DD2C 80078FFC 00000000 */  nop
/* 847DD30 80079000 00140200 */  sll        $v0, $v0, 16
/* 847DD34 80079004 43160200 */  sra        $v0, $v0, 25
/* 847DD38 80079008 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_42_8007900C:
/* 847DD3C 8007900C 4000BF8F */  lw         $ra, 0x40($sp)
/* 847DD40 80079010 3C00B38F */  lw         $s3, 0x3C($sp)
/* 847DD44 80079014 3800B28F */  lw         $s2, 0x38($sp)
/* 847DD48 80079018 3400B18F */  lw         $s1, 0x34($sp)
/* 847DD4C 8007901C 3000B08F */  lw         $s0, 0x30($sp)
/* 847DD50 80079020 4800BD27 */  addiu      $sp, $sp, 0x48
/* 847DD54 80079024 0800E003 */  jr         $ra
/* 847DD58 80079028 00000000 */   nop
.size func_level_42_80078CAC, . - func_level_42_80078CAC
