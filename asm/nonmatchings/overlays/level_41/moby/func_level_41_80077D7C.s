.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_41_80077D7C
/* 813DAAC 80077D7C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 813DAB0 80077D80 2400B1AF */  sw         $s1, 0x24($sp)
/* 813DAB4 80077D84 21888000 */  addu       $s1, $a0, $zero
/* 813DAB8 80077D88 3000BFAF */  sw         $ra, 0x30($sp)
/* 813DABC 80077D8C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 813DAC0 80077D90 2800B2AF */  sw         $s2, 0x28($sp)
/* 813DAC4 80077D94 2000B0AF */  sw         $s0, 0x20($sp)
/* 813DAC8 80077D98 0000228E */  lw         $v0, 0x0($s1)
/* 813DACC 80077D9C 00000000 */  nop
/* 813DAD0 80077DA0 0000428C */  lw         $v0, 0x0($v0)
/* 813DAD4 80077DA4 00000000 */  nop
/* 813DAD8 80077DA8 03004010 */  beqz       $v0, .Llevel_41_80077DB8
/* 813DADC 80077DAC 00000000 */   nop
/* 813DAE0 80077DB0 05DC000C */  jal        func_80037014
/* 813DAE4 80077DB4 00000000 */   nop
.Llevel_41_80077DB8:
/* 813DAE8 80077DB8 0680023C */  lui        $v0, %hi(D_8006581C)
/* 813DAEC 80077DBC 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 813DAF0 80077DC0 00000000 */  nop
/* 813DAF4 80077DC4 42004018 */  blez       $v0, .Llevel_41_80077ED0
/* 813DAF8 80077DC8 0C003026 */   addiu     $s0, $s1, 0xC
/* 813DAFC 80077DCC 0780053C */  lui        $a1, %hi(D_80070328)
/* 813DB00 80077DD0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 813DB04 80077DD4 CD3C010C */  jal        func_8004F334
/* 813DB08 80077DD8 21200002 */   addu      $a0, $s0, $zero
/* 813DB0C 80077DDC 0680033C */  lui        $v1, %hi(D_80065810)
/* 813DB10 80077DE0 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 813DB14 80077DE4 00000000 */  nop
/* 813DB18 80077DE8 2A104300 */  slt        $v0, $v0, $v1
/* 813DB1C 80077DEC 38004010 */  beqz       $v0, .Llevel_41_80077ED0
/* 813DB20 80077DF0 00000000 */   nop
/* 813DB24 80077DF4 1400228E */  lw         $v0, 0x14($s1)
/* 813DB28 80077DF8 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 813DB2C 80077DFC 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 813DB30 80077E00 64014224 */  addiu      $v0, $v0, 0x164
/* 813DB34 80077E04 23186200 */  subu       $v1, $v1, $v0
/* 813DB38 80077E08 0680023C */  lui        $v0, %hi(D_80065818)
/* 813DB3C 80077E0C 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 813DB40 80077E10 02006104 */  bgez       $v1, .Llevel_41_80077E1C
/* 813DB44 80077E14 00000000 */   nop
/* 813DB48 80077E18 23180300 */  negu       $v1, $v1
.Llevel_41_80077E1C:
/* 813DB4C 80077E1C 2A186200 */  slt        $v1, $v1, $v0
/* 813DB50 80077E20 2B006010 */  beqz       $v1, .Llevel_41_80077ED0
/* 813DB54 80077E24 00000000 */   nop
/* 813DB58 80077E28 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 813DB5C 80077E2C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 813DB60 80077E30 00000000 */  nop
/* 813DB64 80077E34 26008010 */  beqz       $a0, .Llevel_41_80077ED0
/* 813DB68 80077E38 0C008424 */   addiu     $a0, $a0, 0xC
/* 813DB6C 80077E3C 21280002 */  addu       $a1, $s0, $zero
/* 813DB70 80077E40 8E4F000C */  jal        func_80013E38
/* 813DB74 80077E44 04000624 */   addiu     $a2, $zero, 0x4
/* 813DB78 80077E48 21004010 */  beqz       $v0, .Llevel_41_80077ED0
/* 813DB7C 80077E4C 00000000 */   nop
/* 813DB80 80077E50 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 813DB84 80077E54 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 813DB88 80077E58 00000000 */  nop
/* 813DB8C 80077E5C 0000708C */  lw         $s0, 0x0($v1)
/* 813DB90 80077E60 00000000 */  nop
/* 813DB94 80077E64 1400028E */  lw         $v0, 0x14($s0)
/* 813DB98 80077E68 00000000 */  nop
/* 813DB9C 80077E6C 09004010 */  beqz       $v0, .Llevel_41_80077E94
/* 813DBA0 80077E70 00000000 */   nop
/* 813DBA4 80077E74 16005110 */  beq        $v0, $s1, .Llevel_41_80077ED0
/* 813DBA8 80077E78 00000000 */   nop
/* 813DBAC 80077E7C 00000286 */  lh         $v0, 0x0($s0)
/* 813DBB0 80077E80 00000000 */  nop
/* 813DBB4 80077E84 12004018 */  blez       $v0, .Llevel_41_80077ED0
/* 813DBB8 80077E88 00000000 */   nop
/* 813DBBC 80077E8C B4DF0108 */  j          .Llevel_41_80077ED0
/* 813DBC0 80077E90 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_41_80077E94:
/* 813DBC4 80077E94 09000224 */  addiu      $v0, $zero, 0x9
/* 813DBC8 80077E98 490062A0 */  sb         $v0, 0x49($v1)
/* 813DBCC 80077E9C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 813DBD0 80077EA0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 813DBD4 80077EA4 02000592 */  lbu        $a1, 0x2($s0)
/* 813DBD8 80077EA8 140011AE */  sw         $s1, 0x14($s0)
/* 813DBDC 80077EAC F0EF000C */  jal        func_8003BFC0
/* 813DBE0 80077EB0 000000A6 */   sh        $zero, 0x0($s0)
/* 813DBE4 80077EB4 06004014 */  bnez       $v0, .Llevel_41_80077ED0
/* 813DBE8 80077EB8 21280000 */   addu      $a1, $zero, $zero
/* 813DBEC 80077EBC 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 813DBF0 80077EC0 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 813DBF4 80077EC4 AFEE000C */  jal        func_8003BABC
/* 813DBF8 80077EC8 21300000 */   addu      $a2, $zero, $zero
/* 813DBFC 80077ECC 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_41_80077ED0:
/* 813DC00 80077ED0 1800228E */  lw         $v0, 0x18($s1)
/* 813DC04 80077ED4 00000000 */  nop
/* 813DC08 80077ED8 50004010 */  beqz       $v0, .Llevel_41_8007801C
/* 813DC0C 80077EDC 21202002 */   addu      $a0, $s1, $zero
/* 813DC10 80077EE0 21280000 */  addu       $a1, $zero, $zero
/* 813DC14 80077EE4 AFEE000C */  jal        func_8003BABC
/* 813DC18 80077EE8 21300000 */   addu      $a2, $zero, $zero
/* 813DC1C 80077EEC 70000224 */  addiu      $v0, $zero, 0x70
/* 813DC20 80077EF0 490022A2 */  sb         $v0, 0x49($s1)
/* 813DC24 80077EF4 21800000 */  addu       $s0, $zero, $zero
/* 813DC28 80077EF8 03001324 */  addiu      $s3, $zero, 0x3
/* 813DC2C 80077EFC 01001224 */  addiu      $s2, $zero, 0x1
.Llevel_41_80077F00:
/* 813DC30 80077F00 0780023C */  lui        $v0, %hi(D_8006C578)
/* 813DC34 80077F04 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 813DC38 80077F08 0780033C */  lui        $v1, %hi(D_8006C574)
/* 813DC3C 80077F0C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 813DC40 80077F10 00000000 */  nop
/* 813DC44 80077F14 23104300 */  subu       $v0, $v0, $v1
/* 813DC48 80077F18 15004228 */  slti       $v0, $v0, 0x15
/* 813DC4C 80077F1C 11004014 */  bnez       $v0, .Llevel_41_80077F64
/* 813DC50 80077F20 32010424 */   addiu     $a0, $zero, 0x132
/* 813DC54 80077F24 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 813DC58 80077F28 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 813DC5C 80077F2C 00000000 */  nop
/* 813DC60 80077F30 09F84000 */  jalr       $v0
/* 813DC64 80077F34 21282002 */   addu      $a1, $s1, $zero
/* 813DC68 80077F38 21184000 */  addu       $v1, $v0, $zero
/* 813DC6C 80077F3C 0500022A */  slti       $v0, $s0, 0x5
/* 813DC70 80077F40 03004010 */  beqz       $v0, .Llevel_41_80077F50
/* 813DC74 80077F44 00000000 */   nop
/* 813DC78 80077F48 D5DF0108 */  j          .Llevel_41_80077F54
/* 813DC7C 80077F4C 490073A0 */   sb        $s3, 0x49($v1)
.Llevel_41_80077F50:
/* 813DC80 80077F50 3C0072A0 */  sb         $s2, 0x3C($v1)
.Llevel_41_80077F54:
/* 813DC84 80077F54 01001026 */  addiu      $s0, $s0, 0x1
/* 813DC88 80077F58 0C00022A */  slti       $v0, $s0, 0xC
/* 813DC8C 80077F5C E8FF4014 */  bnez       $v0, .Llevel_41_80077F00
/* 813DC90 80077F60 00000000 */   nop
.Llevel_41_80077F64:
/* 813DC94 80077F64 21800000 */  addu       $s0, $zero, $zero
.Llevel_41_80077F68:
/* 813DC98 80077F68 1000A427 */  addiu      $a0, $sp, 0x10
/* 813DC9C 80077F6C 5E3C010C */  jal        func_8004F178
/* 813DCA0 80077F70 0C002526 */   addiu     $a1, $s1, 0xC
/* 813DCA4 80077F74 9171010C */  jal        rand
/* 813DCA8 80077F78 01001026 */   addiu     $s0, $s0, 0x1
/* 813DCAC 80077F7C 1000A38F */  lw         $v1, 0x10($sp)
/* 813DCB0 80077F80 FF014230 */  andi       $v0, $v0, 0x1FF
/* 813DCB4 80077F84 00016324 */  addiu      $v1, $v1, 0x100
/* 813DCB8 80077F88 23186200 */  subu       $v1, $v1, $v0
/* 813DCBC 80077F8C 9171010C */  jal        rand
/* 813DCC0 80077F90 1000A3AF */   sw        $v1, 0x10($sp)
/* 813DCC4 80077F94 1400A38F */  lw         $v1, 0x14($sp)
/* 813DCC8 80077F98 FF014230 */  andi       $v0, $v0, 0x1FF
/* 813DCCC 80077F9C 00016324 */  addiu      $v1, $v1, 0x100
/* 813DCD0 80077FA0 23186200 */  subu       $v1, $v1, $v0
/* 813DCD4 80077FA4 9171010C */  jal        rand
/* 813DCD8 80077FA8 1400A3AF */   sw        $v1, 0x14($sp)
/* 813DCDC 80077FAC 01000424 */  addiu      $a0, $zero, 0x1
/* 813DCE0 80077FB0 02000524 */  addiu      $a1, $zero, 0x2
/* 813DCE4 80077FB4 1000A627 */  addiu      $a2, $sp, 0x10
/* 813DCE8 80077FB8 21380000 */  addu       $a3, $zero, $zero
/* 813DCEC 80077FBC FF014230 */  andi       $v0, $v0, 0x1FF
/* 813DCF0 80077FC0 1800A38F */  lw         $v1, 0x18($sp)
/* 813DCF4 80077FC4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 813DCF8 80077FC8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 813DCFC 80077FCC 21186200 */  addu       $v1, $v1, $v0
/* 813DD00 80077FD0 09F80001 */  jalr       $t0
/* 813DD04 80077FD4 1800A3AF */   sw        $v1, 0x18($sp)
/* 813DD08 80077FD8 04000424 */  addiu      $a0, $zero, 0x4
/* 813DD0C 80077FDC 46000524 */  addiu      $a1, $zero, 0x46
/* 813DD10 80077FE0 1000A627 */  addiu      $a2, $sp, 0x10
/* 813DD14 80077FE4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 813DD18 80077FE8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 813DD1C 80077FEC 00000000 */  nop
/* 813DD20 80077FF0 09F84000 */  jalr       $v0
/* 813DD24 80077FF4 18000724 */   addiu     $a3, $zero, 0x18
/* 813DD28 80077FF8 0400022A */  slti       $v0, $s0, 0x4
/* 813DD2C 80077FFC DAFF4014 */  bnez       $v0, .Llevel_41_80077F68
/* 813DD30 80078000 21202002 */   addu      $a0, $s1, $zero
/* 813DD34 80078004 21280000 */  addu       $a1, $zero, $zero
/* 813DD38 80078008 21300000 */  addu       $a2, $zero, $zero
/* 813DD3C 8007800C 9ADA000C */  jal        func_80036A68
/* 813DD40 80078010 21380000 */   addu      $a3, $zero, $zero
/* 813DD44 80078014 C656010C */  jal        func_80055B18
/* 813DD48 80078018 21202002 */   addu      $a0, $s1, $zero
.Llevel_41_8007801C:
/* 813DD4C 8007801C 3000BF8F */  lw         $ra, 0x30($sp)
/* 813DD50 80078020 2C00B38F */  lw         $s3, 0x2C($sp)
/* 813DD54 80078024 2800B28F */  lw         $s2, 0x28($sp)
/* 813DD58 80078028 2400B18F */  lw         $s1, 0x24($sp)
/* 813DD5C 8007802C 2000B08F */  lw         $s0, 0x20($sp)
/* 813DD60 80078030 3800BD27 */  addiu      $sp, $sp, 0x38
/* 813DD64 80078034 0800E003 */  jr         $ra
/* 813DD68 80078038 00000000 */   nop
.size func_level_41_80077D7C, . - func_level_41_80077D7C
