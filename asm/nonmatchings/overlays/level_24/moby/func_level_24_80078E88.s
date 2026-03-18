.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_80078E88
/* 5DF3BB8 80078E88 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5DF3BBC 80078E8C 3400B1AF */  sw         $s1, 0x34($sp)
/* 5DF3BC0 80078E90 21888000 */  addu       $s1, $a0, $zero
/* 5DF3BC4 80078E94 4000BFAF */  sw         $ra, 0x40($sp)
/* 5DF3BC8 80078E98 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 5DF3BCC 80078E9C 3800B2AF */  sw         $s2, 0x38($sp)
/* 5DF3BD0 80078EA0 3000B0AF */  sw         $s0, 0x30($sp)
/* 5DF3BD4 80078EA4 49002292 */  lbu        $v0, 0x49($s1)
/* 5DF3BD8 80078EA8 00000000 */  nop
/* 5DF3BDC 80078EAC 04004014 */  bnez       $v0, .Llevel_24_80078EC0
/* 5DF3BE0 80078EB0 00000000 */   nop
/* 5DF3BE4 80078EB4 9171010C */  jal        rand
/* 5DF3BE8 80078EB8 00000000 */   nop
/* 5DF3BEC 80078EBC 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_24_80078EC0:
/* 5DF3BF0 80078EC0 0680023C */  lui        $v0, %hi(D_8006581C)
/* 5DF3BF4 80078EC4 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 5DF3BF8 80078EC8 00000000 */  nop
/* 5DF3BFC 80078ECC 02004228 */  slti       $v0, $v0, 0x2
/* 5DF3C00 80078ED0 42004014 */  bnez       $v0, .Llevel_24_80078FDC
/* 5DF3C04 80078ED4 0C003026 */   addiu     $s0, $s1, 0xC
/* 5DF3C08 80078ED8 0780053C */  lui        $a1, %hi(D_80070328)
/* 5DF3C0C 80078EDC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5DF3C10 80078EE0 CD3C010C */  jal        func_8004F334
/* 5DF3C14 80078EE4 21200002 */   addu      $a0, $s0, $zero
/* 5DF3C18 80078EE8 0680033C */  lui        $v1, %hi(D_80065810)
/* 5DF3C1C 80078EEC 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 5DF3C20 80078EF0 00000000 */  nop
/* 5DF3C24 80078EF4 2A104300 */  slt        $v0, $v0, $v1
/* 5DF3C28 80078EF8 38004010 */  beqz       $v0, .Llevel_24_80078FDC
/* 5DF3C2C 80078EFC 00000000 */   nop
/* 5DF3C30 80078F00 1400228E */  lw         $v0, 0x14($s1)
/* 5DF3C34 80078F04 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 5DF3C38 80078F08 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 5DF3C3C 80078F0C 64014224 */  addiu      $v0, $v0, 0x164
/* 5DF3C40 80078F10 23186200 */  subu       $v1, $v1, $v0
/* 5DF3C44 80078F14 0680023C */  lui        $v0, %hi(D_80065818)
/* 5DF3C48 80078F18 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 5DF3C4C 80078F1C 02006104 */  bgez       $v1, .Llevel_24_80078F28
/* 5DF3C50 80078F20 00000000 */   nop
/* 5DF3C54 80078F24 23180300 */  negu       $v1, $v1
.Llevel_24_80078F28:
/* 5DF3C58 80078F28 2A186200 */  slt        $v1, $v1, $v0
/* 5DF3C5C 80078F2C 2B006010 */  beqz       $v1, .Llevel_24_80078FDC
/* 5DF3C60 80078F30 00000000 */   nop
/* 5DF3C64 80078F34 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 5DF3C68 80078F38 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 5DF3C6C 80078F3C 00000000 */  nop
/* 5DF3C70 80078F40 26008010 */  beqz       $a0, .Llevel_24_80078FDC
/* 5DF3C74 80078F44 0C008424 */   addiu     $a0, $a0, 0xC
/* 5DF3C78 80078F48 21280002 */  addu       $a1, $s0, $zero
/* 5DF3C7C 80078F4C 8E4F000C */  jal        func_80013E38
/* 5DF3C80 80078F50 21300000 */   addu      $a2, $zero, $zero
/* 5DF3C84 80078F54 21004010 */  beqz       $v0, .Llevel_24_80078FDC
/* 5DF3C88 80078F58 00000000 */   nop
/* 5DF3C8C 80078F5C 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 5DF3C90 80078F60 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 5DF3C94 80078F64 00000000 */  nop
/* 5DF3C98 80078F68 0000708C */  lw         $s0, 0x0($v1)
/* 5DF3C9C 80078F6C 00000000 */  nop
/* 5DF3CA0 80078F70 1400028E */  lw         $v0, 0x14($s0)
/* 5DF3CA4 80078F74 00000000 */  nop
/* 5DF3CA8 80078F78 09004010 */  beqz       $v0, .Llevel_24_80078FA0
/* 5DF3CAC 80078F7C 00000000 */   nop
/* 5DF3CB0 80078F80 16005110 */  beq        $v0, $s1, .Llevel_24_80078FDC
/* 5DF3CB4 80078F84 00000000 */   nop
/* 5DF3CB8 80078F88 00000286 */  lh         $v0, 0x0($s0)
/* 5DF3CBC 80078F8C 00000000 */  nop
/* 5DF3CC0 80078F90 12004018 */  blez       $v0, .Llevel_24_80078FDC
/* 5DF3CC4 80078F94 00000000 */   nop
/* 5DF3CC8 80078F98 F7E30108 */  j          .Llevel_24_80078FDC
/* 5DF3CCC 80078F9C 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_24_80078FA0:
/* 5DF3CD0 80078FA0 09000224 */  addiu      $v0, $zero, 0x9
/* 5DF3CD4 80078FA4 490062A0 */  sb         $v0, 0x49($v1)
/* 5DF3CD8 80078FA8 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 5DF3CDC 80078FAC 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 5DF3CE0 80078FB0 02000592 */  lbu        $a1, 0x2($s0)
/* 5DF3CE4 80078FB4 140011AE */  sw         $s1, 0x14($s0)
/* 5DF3CE8 80078FB8 F0EF000C */  jal        func_8003BFC0
/* 5DF3CEC 80078FBC 000000A6 */   sh        $zero, 0x0($s0)
/* 5DF3CF0 80078FC0 06004014 */  bnez       $v0, .Llevel_24_80078FDC
/* 5DF3CF4 80078FC4 21280000 */   addu      $a1, $zero, $zero
/* 5DF3CF8 80078FC8 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 5DF3CFC 80078FCC 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 5DF3D00 80078FD0 AFEE000C */  jal        func_8003BABC
/* 5DF3D04 80078FD4 21300000 */   addu      $a2, $zero, $zero
/* 5DF3D08 80078FD8 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_24_80078FDC:
/* 5DF3D0C 80078FDC 1800228E */  lw         $v0, 0x18($s1)
/* 5DF3D10 80078FE0 1B10033C */  lui        $v1, (0x101B0000 >> 16)
/* 5DF3D14 80078FE4 24104300 */  and        $v0, $v0, $v1
/* 5DF3D18 80078FE8 63004010 */  beqz       $v0, .Llevel_24_80079178
/* 5DF3D1C 80078FEC 21202002 */   addu      $a0, $s1, $zero
/* 5DF3D20 80078FF0 21280000 */  addu       $a1, $zero, $zero
/* 5DF3D24 80078FF4 AFEE000C */  jal        func_8003BABC
/* 5DF3D28 80078FF8 21300000 */   addu      $a2, $zero, $zero
/* 5DF3D2C 80078FFC 64000224 */  addiu      $v0, $zero, 0x64
/* 5DF3D30 80079000 490022A2 */  sb         $v0, 0x49($s1)
/* 5DF3D34 80079004 21800000 */  addu       $s0, $zero, $zero
/* 5DF3D38 80079008 01001324 */  addiu      $s3, $zero, 0x1
/* 5DF3D3C 8007900C 09001224 */  addiu      $s2, $zero, 0x9
.Llevel_24_80079010:
/* 5DF3D40 80079010 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF3D44 80079014 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF3D48 80079018 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF3D4C 8007901C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF3D50 80079020 00000000 */  nop
/* 5DF3D54 80079024 23104300 */  subu       $v0, $v0, $v1
/* 5DF3D58 80079028 15004228 */  slti       $v0, $v0, 0x15
/* 5DF3D5C 8007902C 13004014 */  bnez       $v0, .Llevel_24_8007907C
/* 5DF3D60 80079030 36010424 */   addiu     $a0, $zero, 0x136
/* 5DF3D64 80079034 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF3D68 80079038 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF3D6C 8007903C 00000000 */  nop
/* 5DF3D70 80079040 09F84000 */  jalr       $v0
/* 5DF3D74 80079044 21282002 */   addu      $a1, $s1, $zero
/* 5DF3D78 80079048 21184000 */  addu       $v1, $v0, $zero
/* 5DF3D7C 8007904C 07006010 */  beqz       $v1, .Llevel_24_8007906C
/* 5DF3D80 80079050 0600022A */   slti      $v0, $s0, 0x6
/* 5DF3D84 80079054 03004010 */  beqz       $v0, .Llevel_24_80079064
/* 5DF3D88 80079058 00000000 */   nop
/* 5DF3D8C 8007905C 1BE40108 */  j          .Llevel_24_8007906C
/* 5DF3D90 80079060 490072A0 */   sb        $s2, 0x49($v1)
.Llevel_24_80079064:
/* 5DF3D94 80079064 3C0073A0 */  sb         $s3, 0x3C($v1)
/* 5DF3D98 80079068 490060A0 */  sb         $zero, 0x49($v1)
.Llevel_24_8007906C:
/* 5DF3D9C 8007906C 01001026 */  addiu      $s0, $s0, 0x1
/* 5DF3DA0 80079070 0C00022A */  slti       $v0, $s0, 0xC
/* 5DF3DA4 80079074 E6FF4014 */  bnez       $v0, .Llevel_24_80079010
/* 5DF3DA8 80079078 00000000 */   nop
.Llevel_24_8007907C:
/* 5DF3DAC 8007907C 21800000 */  addu       $s0, $zero, $zero
/* 5DF3DB0 80079080 40001224 */  addiu      $s2, $zero, 0x40
/* 5DF3DB4 80079084 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_24_80079088:
/* 5DF3DB8 80079088 5E3C010C */  jal        func_8004F178
/* 5DF3DBC 8007908C 0C002526 */   addiu     $a1, $s1, 0xC
/* 5DF3DC0 80079090 9171010C */  jal        rand
/* 5DF3DC4 80079094 01001026 */   addiu     $s0, $s0, 0x1
/* 5DF3DC8 80079098 1000A38F */  lw         $v1, 0x10($sp)
/* 5DF3DCC 8007909C FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF3DD0 800790A0 80006324 */  addiu      $v1, $v1, 0x80
/* 5DF3DD4 800790A4 23186200 */  subu       $v1, $v1, $v0
/* 5DF3DD8 800790A8 9171010C */  jal        rand
/* 5DF3DDC 800790AC 1000A3AF */   sw        $v1, 0x10($sp)
/* 5DF3DE0 800790B0 1400A38F */  lw         $v1, 0x14($sp)
/* 5DF3DE4 800790B4 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF3DE8 800790B8 80006324 */  addiu      $v1, $v1, 0x80
/* 5DF3DEC 800790BC 23186200 */  subu       $v1, $v1, $v0
/* 5DF3DF0 800790C0 9171010C */  jal        rand
/* 5DF3DF4 800790C4 1400A3AF */   sw        $v1, 0x14($sp)
/* 5DF3DF8 800790C8 1800A38F */  lw         $v1, 0x18($sp)
/* 5DF3DFC 800790CC FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF3E00 800790D0 21186200 */  addu       $v1, $v1, $v0
/* 5DF3E04 800790D4 9171010C */  jal        rand
/* 5DF3E08 800790D8 1800A3AF */   sw        $v1, 0x18($sp)
/* 5DF3E0C 800790DC 7F004230 */  andi       $v0, $v0, 0x7F
/* 5DF3E10 800790E0 23104202 */  subu       $v0, $s2, $v0
/* 5DF3E14 800790E4 9171010C */  jal        rand
/* 5DF3E18 800790E8 2000A2AF */   sw        $v0, 0x20($sp)
/* 5DF3E1C 800790EC 7F004230 */  andi       $v0, $v0, 0x7F
/* 5DF3E20 800790F0 23104202 */  subu       $v0, $s2, $v0
/* 5DF3E24 800790F4 9171010C */  jal        rand
/* 5DF3E28 800790F8 2400A2AF */   sw        $v0, 0x24($sp)
/* 5DF3E2C 800790FC 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF3E30 80079100 27000524 */  addiu      $a1, $zero, 0x27
/* 5DF3E34 80079104 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF3E38 80079108 2000A727 */  addiu      $a3, $sp, 0x20
/* 5DF3E3C 8007910C 1F004230 */  andi       $v0, $v0, 0x1F
/* 5DF3E40 80079110 10000324 */  addiu      $v1, $zero, 0x10
/* 5DF3E44 80079114 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 5DF3E48 80079118 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 5DF3E4C 8007911C 23186200 */  subu       $v1, $v1, $v0
/* 5DF3E50 80079120 09F80001 */  jalr       $t0
/* 5DF3E54 80079124 2800A3AF */   sw        $v1, 0x28($sp)
/* 5DF3E58 80079128 02000424 */  addiu      $a0, $zero, 0x2
/* 5DF3E5C 8007912C 46000524 */  addiu      $a1, $zero, 0x46
/* 5DF3E60 80079130 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF3E64 80079134 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF3E68 80079138 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF3E6C 8007913C 00000000 */  nop
/* 5DF3E70 80079140 09F84000 */  jalr       $v0
/* 5DF3E74 80079144 18000724 */   addiu     $a3, $zero, 0x18
/* 5DF3E78 80079148 0800022A */  slti       $v0, $s0, 0x8
/* 5DF3E7C 8007914C CEFF4014 */  bnez       $v0, .Llevel_24_80079088
/* 5DF3E80 80079150 1000A427 */   addiu     $a0, $sp, 0x10
/* 5DF3E84 80079154 21202002 */  addu       $a0, $s1, $zero
/* 5DF3E88 80079158 21280000 */  addu       $a1, $zero, $zero
/* 5DF3E8C 8007915C 21300000 */  addu       $a2, $zero, $zero
/* 5DF3E90 80079160 9ADA000C */  jal        func_80036A68
/* 5DF3E94 80079164 21380000 */   addu      $a3, $zero, $zero
/* 5DF3E98 80079168 C656010C */  jal        func_80055B18
/* 5DF3E9C 8007916C 21202002 */   addu      $a0, $s1, $zero
/* 5DF3EA0 80079170 7AE40108 */  j          .Llevel_24_800791E8
/* 5DF3EA4 80079174 00000000 */   nop
.Llevel_24_80079178:
/* 5DF3EA8 80079178 0780023C */  lui        $v0, %hi(D_8006C644)
/* 5DF3EAC 8007917C 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 5DF3EB0 80079180 49002392 */  lbu        $v1, 0x49($s1)
/* 5DF3EB4 80079184 40100200 */  sll        $v0, $v0, 1
/* 5DF3EB8 80079188 21104300 */  addu       $v0, $v0, $v1
/* 5DF3EBC 8007918C FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF3EC0 80079190 40100200 */  sll        $v0, $v0, 1
/* 5DF3EC4 80079194 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF3EC8 80079198 21082200 */  addu       $at, $at, $v0
/* 5DF3ECC 8007919C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 5DF3ED0 800791A0 00000000 */  nop
/* 5DF3ED4 800791A4 00140200 */  sll        $v0, $v0, 16
/* 5DF3ED8 800791A8 43160200 */  sra        $v0, $v0, 25
/* 5DF3EDC 800791AC 440022A2 */  sb         $v0, 0x44($s1)
/* 5DF3EE0 800791B0 0780023C */  lui        $v0, %hi(D_8006C644)
/* 5DF3EE4 800791B4 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 5DF3EE8 800791B8 49002392 */  lbu        $v1, 0x49($s1)
/* 5DF3EEC 800791BC 40100200 */  sll        $v0, $v0, 1
/* 5DF3EF0 800791C0 21104300 */  addu       $v0, $v0, $v1
/* 5DF3EF4 800791C4 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF3EF8 800791C8 40100200 */  sll        $v0, $v0, 1
/* 5DF3EFC 800791CC 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF3F00 800791D0 21082200 */  addu       $at, $at, $v0
/* 5DF3F04 800791D4 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 5DF3F08 800791D8 00000000 */  nop
/* 5DF3F0C 800791DC 00140200 */  sll        $v0, $v0, 16
/* 5DF3F10 800791E0 43160200 */  sra        $v0, $v0, 25
/* 5DF3F14 800791E4 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_24_800791E8:
/* 5DF3F18 800791E8 4000BF8F */  lw         $ra, 0x40($sp)
/* 5DF3F1C 800791EC 3C00B38F */  lw         $s3, 0x3C($sp)
/* 5DF3F20 800791F0 3800B28F */  lw         $s2, 0x38($sp)
/* 5DF3F24 800791F4 3400B18F */  lw         $s1, 0x34($sp)
/* 5DF3F28 800791F8 3000B08F */  lw         $s0, 0x30($sp)
/* 5DF3F2C 800791FC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 5DF3F30 80079200 0800E003 */  jr         $ra
/* 5DF3F34 80079204 00000000 */   nop
.size func_level_24_80078E88, . - func_level_24_80078E88
