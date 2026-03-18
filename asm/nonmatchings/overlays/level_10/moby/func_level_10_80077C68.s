.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80077C68
/* 3ADC998 80077C68 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 3ADC99C 80077C6C 3400B1AF */  sw         $s1, 0x34($sp)
/* 3ADC9A0 80077C70 21888000 */  addu       $s1, $a0, $zero
/* 3ADC9A4 80077C74 4000BFAF */  sw         $ra, 0x40($sp)
/* 3ADC9A8 80077C78 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 3ADC9AC 80077C7C 3800B2AF */  sw         $s2, 0x38($sp)
/* 3ADC9B0 80077C80 3000B0AF */  sw         $s0, 0x30($sp)
/* 3ADC9B4 80077C84 49002292 */  lbu        $v0, 0x49($s1)
/* 3ADC9B8 80077C88 00000000 */  nop
/* 3ADC9BC 80077C8C 04004014 */  bnez       $v0, .Llevel_10_80077CA0
/* 3ADC9C0 80077C90 00000000 */   nop
/* 3ADC9C4 80077C94 9171010C */  jal        rand
/* 3ADC9C8 80077C98 00000000 */   nop
/* 3ADC9CC 80077C9C 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_10_80077CA0:
/* 3ADC9D0 80077CA0 0680023C */  lui        $v0, %hi(D_8006581C)
/* 3ADC9D4 80077CA4 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 3ADC9D8 80077CA8 00000000 */  nop
/* 3ADC9DC 80077CAC 02004228 */  slti       $v0, $v0, 0x2
/* 3ADC9E0 80077CB0 42004014 */  bnez       $v0, .Llevel_10_80077DBC
/* 3ADC9E4 80077CB4 0C003026 */   addiu     $s0, $s1, 0xC
/* 3ADC9E8 80077CB8 0780053C */  lui        $a1, %hi(D_80070328)
/* 3ADC9EC 80077CBC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3ADC9F0 80077CC0 CD3C010C */  jal        func_8004F334
/* 3ADC9F4 80077CC4 21200002 */   addu      $a0, $s0, $zero
/* 3ADC9F8 80077CC8 0680033C */  lui        $v1, %hi(D_80065810)
/* 3ADC9FC 80077CCC 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 3ADCA00 80077CD0 00000000 */  nop
/* 3ADCA04 80077CD4 2A104300 */  slt        $v0, $v0, $v1
/* 3ADCA08 80077CD8 38004010 */  beqz       $v0, .Llevel_10_80077DBC
/* 3ADCA0C 80077CDC 00000000 */   nop
/* 3ADCA10 80077CE0 1400228E */  lw         $v0, 0x14($s1)
/* 3ADCA14 80077CE4 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 3ADCA18 80077CE8 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 3ADCA1C 80077CEC 64014224 */  addiu      $v0, $v0, 0x164
/* 3ADCA20 80077CF0 23186200 */  subu       $v1, $v1, $v0
/* 3ADCA24 80077CF4 0680023C */  lui        $v0, %hi(D_80065818)
/* 3ADCA28 80077CF8 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 3ADCA2C 80077CFC 02006104 */  bgez       $v1, .Llevel_10_80077D08
/* 3ADCA30 80077D00 00000000 */   nop
/* 3ADCA34 80077D04 23180300 */  negu       $v1, $v1
.Llevel_10_80077D08:
/* 3ADCA38 80077D08 2A186200 */  slt        $v1, $v1, $v0
/* 3ADCA3C 80077D0C 2B006010 */  beqz       $v1, .Llevel_10_80077DBC
/* 3ADCA40 80077D10 00000000 */   nop
/* 3ADCA44 80077D14 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADCA48 80077D18 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADCA4C 80077D1C 00000000 */  nop
/* 3ADCA50 80077D20 26008010 */  beqz       $a0, .Llevel_10_80077DBC
/* 3ADCA54 80077D24 0C008424 */   addiu     $a0, $a0, 0xC
/* 3ADCA58 80077D28 21280002 */  addu       $a1, $s0, $zero
/* 3ADCA5C 80077D2C 8E4F000C */  jal        func_80013E38
/* 3ADCA60 80077D30 21300000 */   addu      $a2, $zero, $zero
/* 3ADCA64 80077D34 21004010 */  beqz       $v0, .Llevel_10_80077DBC
/* 3ADCA68 80077D38 00000000 */   nop
/* 3ADCA6C 80077D3C 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 3ADCA70 80077D40 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 3ADCA74 80077D44 00000000 */  nop
/* 3ADCA78 80077D48 0000708C */  lw         $s0, 0x0($v1)
/* 3ADCA7C 80077D4C 00000000 */  nop
/* 3ADCA80 80077D50 1400028E */  lw         $v0, 0x14($s0)
/* 3ADCA84 80077D54 00000000 */  nop
/* 3ADCA88 80077D58 09004010 */  beqz       $v0, .Llevel_10_80077D80
/* 3ADCA8C 80077D5C 00000000 */   nop
/* 3ADCA90 80077D60 16005110 */  beq        $v0, $s1, .Llevel_10_80077DBC
/* 3ADCA94 80077D64 00000000 */   nop
/* 3ADCA98 80077D68 00000286 */  lh         $v0, 0x0($s0)
/* 3ADCA9C 80077D6C 00000000 */  nop
/* 3ADCAA0 80077D70 12004018 */  blez       $v0, .Llevel_10_80077DBC
/* 3ADCAA4 80077D74 00000000 */   nop
/* 3ADCAA8 80077D78 6FDF0108 */  j          .Llevel_10_80077DBC
/* 3ADCAAC 80077D7C 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_10_80077D80:
/* 3ADCAB0 80077D80 09000224 */  addiu      $v0, $zero, 0x9
/* 3ADCAB4 80077D84 490062A0 */  sb         $v0, 0x49($v1)
/* 3ADCAB8 80077D88 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADCABC 80077D8C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADCAC0 80077D90 02000592 */  lbu        $a1, 0x2($s0)
/* 3ADCAC4 80077D94 140011AE */  sw         $s1, 0x14($s0)
/* 3ADCAC8 80077D98 F0EF000C */  jal        func_8003BFC0
/* 3ADCACC 80077D9C 000000A6 */   sh        $zero, 0x0($s0)
/* 3ADCAD0 80077DA0 06004014 */  bnez       $v0, .Llevel_10_80077DBC
/* 3ADCAD4 80077DA4 21280000 */   addu      $a1, $zero, $zero
/* 3ADCAD8 80077DA8 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 3ADCADC 80077DAC 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 3ADCAE0 80077DB0 AFEE000C */  jal        func_8003BABC
/* 3ADCAE4 80077DB4 21300000 */   addu      $a2, $zero, $zero
/* 3ADCAE8 80077DB8 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_10_80077DBC:
/* 3ADCAEC 80077DBC 1800228E */  lw         $v0, 0x18($s1)
/* 3ADCAF0 80077DC0 1B10033C */  lui        $v1, (0x101B0000 >> 16)
/* 3ADCAF4 80077DC4 24104300 */  and        $v0, $v0, $v1
/* 3ADCAF8 80077DC8 63004010 */  beqz       $v0, .Llevel_10_80077F58
/* 3ADCAFC 80077DCC 21202002 */   addu      $a0, $s1, $zero
/* 3ADCB00 80077DD0 21280000 */  addu       $a1, $zero, $zero
/* 3ADCB04 80077DD4 AFEE000C */  jal        func_8003BABC
/* 3ADCB08 80077DD8 21300000 */   addu      $a2, $zero, $zero
/* 3ADCB0C 80077DDC 64000224 */  addiu      $v0, $zero, 0x64
/* 3ADCB10 80077DE0 490022A2 */  sb         $v0, 0x49($s1)
/* 3ADCB14 80077DE4 21800000 */  addu       $s0, $zero, $zero
/* 3ADCB18 80077DE8 01001324 */  addiu      $s3, $zero, 0x1
/* 3ADCB1C 80077DEC 09001224 */  addiu      $s2, $zero, 0x9
.Llevel_10_80077DF0:
/* 3ADCB20 80077DF0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 3ADCB24 80077DF4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 3ADCB28 80077DF8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 3ADCB2C 80077DFC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 3ADCB30 80077E00 00000000 */  nop
/* 3ADCB34 80077E04 23104300 */  subu       $v0, $v0, $v1
/* 3ADCB38 80077E08 15004228 */  slti       $v0, $v0, 0x15
/* 3ADCB3C 80077E0C 13004014 */  bnez       $v0, .Llevel_10_80077E5C
/* 3ADCB40 80077E10 36010424 */   addiu     $a0, $zero, 0x136
/* 3ADCB44 80077E14 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3ADCB48 80077E18 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3ADCB4C 80077E1C 00000000 */  nop
/* 3ADCB50 80077E20 09F84000 */  jalr       $v0
/* 3ADCB54 80077E24 21282002 */   addu      $a1, $s1, $zero
/* 3ADCB58 80077E28 21184000 */  addu       $v1, $v0, $zero
/* 3ADCB5C 80077E2C 07006010 */  beqz       $v1, .Llevel_10_80077E4C
/* 3ADCB60 80077E30 0600022A */   slti      $v0, $s0, 0x6
/* 3ADCB64 80077E34 03004010 */  beqz       $v0, .Llevel_10_80077E44
/* 3ADCB68 80077E38 00000000 */   nop
/* 3ADCB6C 80077E3C 93DF0108 */  j          .Llevel_10_80077E4C
/* 3ADCB70 80077E40 490072A0 */   sb        $s2, 0x49($v1)
.Llevel_10_80077E44:
/* 3ADCB74 80077E44 3C0073A0 */  sb         $s3, 0x3C($v1)
/* 3ADCB78 80077E48 490060A0 */  sb         $zero, 0x49($v1)
.Llevel_10_80077E4C:
/* 3ADCB7C 80077E4C 01001026 */  addiu      $s0, $s0, 0x1
/* 3ADCB80 80077E50 0C00022A */  slti       $v0, $s0, 0xC
/* 3ADCB84 80077E54 E6FF4014 */  bnez       $v0, .Llevel_10_80077DF0
/* 3ADCB88 80077E58 00000000 */   nop
.Llevel_10_80077E5C:
/* 3ADCB8C 80077E5C 21800000 */  addu       $s0, $zero, $zero
/* 3ADCB90 80077E60 40001224 */  addiu      $s2, $zero, 0x40
/* 3ADCB94 80077E64 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_10_80077E68:
/* 3ADCB98 80077E68 5E3C010C */  jal        func_8004F178
/* 3ADCB9C 80077E6C 0C002526 */   addiu     $a1, $s1, 0xC
/* 3ADCBA0 80077E70 9171010C */  jal        rand
/* 3ADCBA4 80077E74 01001026 */   addiu     $s0, $s0, 0x1
/* 3ADCBA8 80077E78 1000A38F */  lw         $v1, 0x10($sp)
/* 3ADCBAC 80077E7C FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADCBB0 80077E80 80006324 */  addiu      $v1, $v1, 0x80
/* 3ADCBB4 80077E84 23186200 */  subu       $v1, $v1, $v0
/* 3ADCBB8 80077E88 9171010C */  jal        rand
/* 3ADCBBC 80077E8C 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ADCBC0 80077E90 1400A38F */  lw         $v1, 0x14($sp)
/* 3ADCBC4 80077E94 FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADCBC8 80077E98 80006324 */  addiu      $v1, $v1, 0x80
/* 3ADCBCC 80077E9C 23186200 */  subu       $v1, $v1, $v0
/* 3ADCBD0 80077EA0 9171010C */  jal        rand
/* 3ADCBD4 80077EA4 1400A3AF */   sw        $v1, 0x14($sp)
/* 3ADCBD8 80077EA8 1800A38F */  lw         $v1, 0x18($sp)
/* 3ADCBDC 80077EAC FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADCBE0 80077EB0 21186200 */  addu       $v1, $v1, $v0
/* 3ADCBE4 80077EB4 9171010C */  jal        rand
/* 3ADCBE8 80077EB8 1800A3AF */   sw        $v1, 0x18($sp)
/* 3ADCBEC 80077EBC 7F004230 */  andi       $v0, $v0, 0x7F
/* 3ADCBF0 80077EC0 23104202 */  subu       $v0, $s2, $v0
/* 3ADCBF4 80077EC4 9171010C */  jal        rand
/* 3ADCBF8 80077EC8 2000A2AF */   sw        $v0, 0x20($sp)
/* 3ADCBFC 80077ECC 7F004230 */  andi       $v0, $v0, 0x7F
/* 3ADCC00 80077ED0 23104202 */  subu       $v0, $s2, $v0
/* 3ADCC04 80077ED4 9171010C */  jal        rand
/* 3ADCC08 80077ED8 2400A2AF */   sw        $v0, 0x24($sp)
/* 3ADCC0C 80077EDC 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADCC10 80077EE0 27000524 */  addiu      $a1, $zero, 0x27
/* 3ADCC14 80077EE4 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADCC18 80077EE8 2000A727 */  addiu      $a3, $sp, 0x20
/* 3ADCC1C 80077EEC 1F004230 */  andi       $v0, $v0, 0x1F
/* 3ADCC20 80077EF0 10000324 */  addiu      $v1, $zero, 0x10
/* 3ADCC24 80077EF4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3ADCC28 80077EF8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3ADCC2C 80077EFC 23186200 */  subu       $v1, $v1, $v0
/* 3ADCC30 80077F00 09F80001 */  jalr       $t0
/* 3ADCC34 80077F04 2800A3AF */   sw        $v1, 0x28($sp)
/* 3ADCC38 80077F08 02000424 */  addiu      $a0, $zero, 0x2
/* 3ADCC3C 80077F0C 46000524 */  addiu      $a1, $zero, 0x46
/* 3ADCC40 80077F10 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADCC44 80077F14 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADCC48 80077F18 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADCC4C 80077F1C 00000000 */  nop
/* 3ADCC50 80077F20 09F84000 */  jalr       $v0
/* 3ADCC54 80077F24 18000724 */   addiu     $a3, $zero, 0x18
/* 3ADCC58 80077F28 0800022A */  slti       $v0, $s0, 0x8
/* 3ADCC5C 80077F2C CEFF4014 */  bnez       $v0, .Llevel_10_80077E68
/* 3ADCC60 80077F30 1000A427 */   addiu     $a0, $sp, 0x10
/* 3ADCC64 80077F34 21202002 */  addu       $a0, $s1, $zero
/* 3ADCC68 80077F38 21280000 */  addu       $a1, $zero, $zero
/* 3ADCC6C 80077F3C 21300000 */  addu       $a2, $zero, $zero
/* 3ADCC70 80077F40 9ADA000C */  jal        func_80036A68
/* 3ADCC74 80077F44 21380000 */   addu      $a3, $zero, $zero
/* 3ADCC78 80077F48 C656010C */  jal        func_80055B18
/* 3ADCC7C 80077F4C 21202002 */   addu      $a0, $s1, $zero
/* 3ADCC80 80077F50 F2DF0108 */  j          .Llevel_10_80077FC8
/* 3ADCC84 80077F54 00000000 */   nop
.Llevel_10_80077F58:
/* 3ADCC88 80077F58 0780023C */  lui        $v0, %hi(D_8006C644)
/* 3ADCC8C 80077F5C 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 3ADCC90 80077F60 49002392 */  lbu        $v1, 0x49($s1)
/* 3ADCC94 80077F64 40100200 */  sll        $v0, $v0, 1
/* 3ADCC98 80077F68 21104300 */  addu       $v0, $v0, $v1
/* 3ADCC9C 80077F6C FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADCCA0 80077F70 40100200 */  sll        $v0, $v0, 1
/* 3ADCCA4 80077F74 0680013C */  lui        $at, %hi(D_80065920)
/* 3ADCCA8 80077F78 21082200 */  addu       $at, $at, $v0
/* 3ADCCAC 80077F7C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 3ADCCB0 80077F80 00000000 */  nop
/* 3ADCCB4 80077F84 00140200 */  sll        $v0, $v0, 16
/* 3ADCCB8 80077F88 43160200 */  sra        $v0, $v0, 25
/* 3ADCCBC 80077F8C 440022A2 */  sb         $v0, 0x44($s1)
/* 3ADCCC0 80077F90 0780023C */  lui        $v0, %hi(D_8006C644)
/* 3ADCCC4 80077F94 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 3ADCCC8 80077F98 49002392 */  lbu        $v1, 0x49($s1)
/* 3ADCCCC 80077F9C 40100200 */  sll        $v0, $v0, 1
/* 3ADCCD0 80077FA0 21104300 */  addu       $v0, $v0, $v1
/* 3ADCCD4 80077FA4 FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADCCD8 80077FA8 40100200 */  sll        $v0, $v0, 1
/* 3ADCCDC 80077FAC 0680013C */  lui        $at, %hi(D_800658A0)
/* 3ADCCE0 80077FB0 21082200 */  addu       $at, $at, $v0
/* 3ADCCE4 80077FB4 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 3ADCCE8 80077FB8 00000000 */  nop
/* 3ADCCEC 80077FBC 00140200 */  sll        $v0, $v0, 16
/* 3ADCCF0 80077FC0 43160200 */  sra        $v0, $v0, 25
/* 3ADCCF4 80077FC4 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_10_80077FC8:
/* 3ADCCF8 80077FC8 4000BF8F */  lw         $ra, 0x40($sp)
/* 3ADCCFC 80077FCC 3C00B38F */  lw         $s3, 0x3C($sp)
/* 3ADCD00 80077FD0 3800B28F */  lw         $s2, 0x38($sp)
/* 3ADCD04 80077FD4 3400B18F */  lw         $s1, 0x34($sp)
/* 3ADCD08 80077FD8 3000B08F */  lw         $s0, 0x30($sp)
/* 3ADCD0C 80077FDC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 3ADCD10 80077FE0 0800E003 */  jr         $ra
/* 3ADCD14 80077FE4 00000000 */   nop
.size func_level_10_80077C68, . - func_level_10_80077C68
