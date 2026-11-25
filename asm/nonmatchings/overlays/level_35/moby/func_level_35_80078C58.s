.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_144_level_35
/* 76FB988 80078C58 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 76FB98C 80078C5C 4800B0AF */  sw         $s0, 0x48($sp)
/* 76FB990 80078C60 21808000 */  addu       $s0, $a0, $zero
/* 76FB994 80078C64 5000BFAF */  sw         $ra, 0x50($sp)
/* 76FB998 80078C68 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 76FB99C 80078C6C 0000118E */  lw         $s1, 0x0($s0)
/* 76FB9A0 80078C70 00000000 */  nop
/* 76FB9A4 80078C74 3800228E */  lw         $v0, 0x38($s1)
/* 76FB9A8 80078C78 00000000 */  nop
/* 76FB9AC 80078C7C 0B004014 */  bnez       $v0, .Llevel_35_80078CAC
/* 76FB9B0 80078C80 21200002 */   addu      $a0, $s0, $zero
/* 76FB9B4 80078C84 01000424 */  addiu      $a0, $zero, 0x1
/* 76FB9B8 80078C88 80000524 */  addiu      $a1, $zero, 0x80
/* 76FB9BC 80078C8C 4800063C */  lui        $a2, (0x489090 >> 16)
/* 76FB9C0 80078C90 14BB000C */  jal        func_8002EC50
/* 76FB9C4 80078C94 9090C634 */   ori       $a2, $a2, (0x489090 & 0xFFFF)
/* 76FB9C8 80078C98 380022AE */  sw         $v0, 0x38($s1)
/* 76FB9CC 80078C9C 0680023C */  lui        $v0, %hi(D_8006586C)
/* 76FB9D0 80078CA0 6C58428C */  lw         $v0, %lo(D_8006586C)($v0)
/* 76FB9D4 80078CA4 51E30108 */  j          .Llevel_35_80078D44
/* 76FB9D8 80078CA8 540002AE */   sw        $v0, 0x54($s0)
.Llevel_35_80078CAC:
/* 76FB9DC 80078CAC 01000524 */  addiu      $a1, $zero, 0x1
/* 76FB9E0 80078CB0 C557010C */  jal        func_80055F14
/* 76FB9E4 80078CB4 1800A627 */   addiu     $a2, $sp, 0x18
/* 76FB9E8 80078CB8 02000424 */  addiu      $a0, $zero, 0x2
/* 76FB9EC 80078CBC 42000524 */  addiu      $a1, $zero, 0x42
/* 76FB9F0 80078CC0 1800A627 */  addiu      $a2, $sp, 0x18
/* 76FB9F4 80078CC4 2000A28F */  lw         $v0, 0x20($sp)
/* 76FB9F8 80078CC8 1400038E */  lw         $v1, 0x14($s0)
/* 76FB9FC 80078CCC 21380000 */  addu       $a3, $zero, $zero
/* 76FBA00 80078CD0 21104300 */  addu       $v0, $v0, $v1
/* 76FBA04 80078CD4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 76FBA08 80078CD8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 76FBA0C 80078CDC 43100200 */  sra        $v0, $v0, 1
/* 76FBA10 80078CE0 09F86000 */  jalr       $v1
/* 76FBA14 80078CE4 2000A2AF */   sw        $v0, 0x20($sp)
/* 76FBA18 80078CE8 21200002 */  addu       $a0, $s0, $zero
/* 76FBA1C 80078CEC 02000524 */  addiu      $a1, $zero, 0x2
/* 76FBA20 80078CF0 C557010C */  jal        func_80055F14
/* 76FBA24 80078CF4 1800A627 */   addiu     $a2, $sp, 0x18
/* 76FBA28 80078CF8 02000424 */  addiu      $a0, $zero, 0x2
/* 76FBA2C 80078CFC 42000524 */  addiu      $a1, $zero, 0x42
/* 76FBA30 80078D00 1800A627 */  addiu      $a2, $sp, 0x18
/* 76FBA34 80078D04 2000A28F */  lw         $v0, 0x20($sp)
/* 76FBA38 80078D08 1400038E */  lw         $v1, 0x14($s0)
/* 76FBA3C 80078D0C 21380000 */  addu       $a3, $zero, $zero
/* 76FBA40 80078D10 21104300 */  addu       $v0, $v0, $v1
/* 76FBA44 80078D14 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 76FBA48 80078D18 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 76FBA4C 80078D1C 43100200 */  sra        $v0, $v0, 1
/* 76FBA50 80078D20 09F86000 */  jalr       $v1
/* 76FBA54 80078D24 2000A2AF */   sw        $v0, 0x20($sp)
/* 76FBA58 80078D28 21200002 */  addu       $a0, $s0, $zero
/* 76FBA5C 80078D2C 3800238E */  lw         $v1, 0x38($s1)
/* 76FBA60 80078D30 01000224 */  addiu      $v0, $zero, 0x1
/* 76FBA64 80078D34 100062A0 */  sb         $v0, 0x10($v1)
/* 76FBA68 80078D38 3800268E */  lw         $a2, 0x38($s1)
/* 76FBA6C 80078D3C C557010C */  jal        func_80055F14
/* 76FBA70 80078D40 21280000 */   addu      $a1, $zero, $zero
.Llevel_35_80078D44:
/* 76FBA74 80078D44 48000392 */  lbu        $v1, 0x48($s0)
/* 76FBA78 80078D48 00000000 */  nop
/* 76FBA7C 80078D4C 05006010 */  beqz       $v1, .Llevel_35_80078D64
/* 76FBA80 80078D50 01000224 */   addiu     $v0, $zero, 0x1
/* 76FBA84 80078D54 AF006210 */  beq        $v1, $v0, .Llevel_35_80079014
/* 76FBA88 80078D58 00000000 */   nop
/* 76FBA8C 80078D5C 44E40108 */  j          .Llevel_35_80079110
/* 76FBA90 80078D60 00000000 */   nop
.Llevel_35_80078D64:
/* 76FBA94 80078D64 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 76FBA98 80078D68 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 76FBA9C 80078D6C 00000000 */  nop
/* 76FBAA0 80078D70 9A004014 */  bnez       $v0, .Llevel_35_80078FDC
/* 76FBAA4 80078D74 0010043C */   lui       $a0, (0x10000002 >> 16)
/* 76FBAA8 80078D78 0780033C */  lui        $v1, %hi(D_80070328 + 0x20C)
/* 76FBAAC 80078D7C 34056324 */  addiu      $v1, $v1, %lo(D_80070328 + 0x20C)
/* 76FBAB0 80078D80 0000628C */  lw         $v0, 0x0($v1)
/* 76FBAB4 80078D84 02008434 */  ori        $a0, $a0, (0x10000002 & 0xFFFF)
/* 76FBAB8 80078D88 25104400 */  or         $v0, $v0, $a0
/* 76FBABC 80078D8C 000062AC */  sw         $v0, 0x0($v1)
/* 76FBAC0 80078D90 49000392 */  lbu        $v1, 0x49($s0)
/* 76FBAC4 80078D94 01000224 */  addiu      $v0, $zero, 0x1
/* 76FBAC8 80078D98 7F006210 */  beq        $v1, $v0, .Llevel_35_80078F98
/* 76FBACC 80078D9C 02006228 */   slti      $v0, $v1, 0x2
/* 76FBAD0 80078DA0 05004010 */  beqz       $v0, .Llevel_35_80078DB8
/* 76FBAD4 80078DA4 00000000 */   nop
/* 76FBAD8 80078DA8 08006010 */  beqz       $v1, .Llevel_35_80078DCC
/* 76FBADC 80078DAC 21200002 */   addu      $a0, $s0, $zero
/* 76FBAE0 80078DB0 01E40108 */  j          .Llevel_35_80079004
/* 76FBAE4 80078DB4 00000000 */   nop
.Llevel_35_80078DB8:
/* 76FBAE8 80078DB8 02000224 */  addiu      $v0, $zero, 0x2
/* 76FBAEC 80078DBC 81006210 */  beq        $v1, $v0, .Llevel_35_80078FC4
/* 76FBAF0 80078DC0 21200002 */   addu      $a0, $s0, $zero
/* 76FBAF4 80078DC4 00E40108 */  j          .Llevel_35_80079000
/* 76FBAF8 80078DC8 00000000 */   nop
.Llevel_35_80078DCC:
/* 76FBAFC 80078DCC 0780033C */  lui        $v1, %hi(D_8006C7B4)
/* 76FBB00 80078DD0 B4C76390 */  lbu        $v1, %lo(D_8006C7B4)($v1)
/* 76FBB04 80078DD4 00000000 */  nop
/* 76FBB08 80078DD8 01006230 */  andi       $v0, $v1, 0x1
/* 76FBB0C 80078DDC 08004010 */  beqz       $v0, .Llevel_35_80078E00
/* 76FBB10 80078DE0 02006230 */   andi      $v0, $v1, 0x2
/* 76FBB14 80078DE4 0780023C */  lui        $v0, %hi(D_8006C62C)
/* 76FBB18 80078DE8 2CC64290 */  lbu        $v0, %lo(D_8006C62C)($v0)
/* 76FBB1C 80078DEC 00000000 */  nop
/* 76FBB20 80078DF0 01004230 */  andi       $v0, $v0, 0x1
/* 76FBB24 80078DF4 13004010 */  beqz       $v0, .Llevel_35_80078E44
/* 76FBB28 80078DF8 00000000 */   nop
/* 76FBB2C 80078DFC 02006230 */  andi       $v0, $v1, 0x2
.Llevel_35_80078E00:
/* 76FBB30 80078E00 08004010 */  beqz       $v0, .Llevel_35_80078E24
/* 76FBB34 80078E04 04006230 */   andi      $v0, $v1, 0x4
/* 76FBB38 80078E08 0780023C */  lui        $v0, %hi(D_8006C62C)
/* 76FBB3C 80078E0C 2CC64290 */  lbu        $v0, %lo(D_8006C62C)($v0)
/* 76FBB40 80078E10 00000000 */  nop
/* 76FBB44 80078E14 02004230 */  andi       $v0, $v0, 0x2
/* 76FBB48 80078E18 0A004010 */  beqz       $v0, .Llevel_35_80078E44
/* 76FBB4C 80078E1C 00000000 */   nop
/* 76FBB50 80078E20 04006230 */  andi       $v0, $v1, 0x4
.Llevel_35_80078E24:
/* 76FBB54 80078E24 1F004010 */  beqz       $v0, .Llevel_35_80078EA4
/* 76FBB58 80078E28 00000000 */   nop
/* 76FBB5C 80078E2C 0780023C */  lui        $v0, %hi(D_8006C62C)
/* 76FBB60 80078E30 2CC64290 */  lbu        $v0, %lo(D_8006C62C)($v0)
/* 76FBB64 80078E34 00000000 */  nop
/* 76FBB68 80078E38 04004230 */  andi       $v0, $v0, 0x4
/* 76FBB6C 80078E3C 19004014 */  bnez       $v0, .Llevel_35_80078EA4
/* 76FBB70 80078E40 00000000 */   nop
.Llevel_35_80078E44:
/* 76FBB74 80078E44 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 76FBB78 80078E48 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 76FBB7C 80078E4C 00000000 */  nop
/* 76FBB80 80078E50 40200400 */  sll        $a0, $a0, 1
/* 76FBB84 80078E54 0680013C */  lui        $at, %hi(D_80065920)
/* 76FBB88 80078E58 21082400 */  addu       $at, $at, $a0
/* 76FBB8C 80078E5C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 76FBB90 80078E60 00000000 */  nop
/* 76FBB94 80078E64 80100300 */  sll        $v0, $v1, 2
/* 76FBB98 80078E68 21104300 */  addu       $v0, $v0, $v1
/* 76FBB9C 80078E6C C0100200 */  sll        $v0, $v0, 3
/* 76FBBA0 80078E70 23104300 */  subu       $v0, $v0, $v1
/* 76FBBA4 80078E74 83110200 */  sra        $v0, $v0, 6
/* 76FBBA8 80078E78 2800A2AF */  sw         $v0, 0x28($sp)
/* 76FBBAC 80078E7C 0680013C */  lui        $at, %hi(D_800658A0)
/* 76FBBB0 80078E80 21082400 */  addu       $at, $at, $a0
/* 76FBBB4 80078E84 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 76FBBB8 80078E88 3000A0AF */  sw         $zero, 0x30($sp)
/* 76FBBBC 80078E8C 80100300 */  sll        $v0, $v1, 2
/* 76FBBC0 80078E90 21104300 */  addu       $v0, $v0, $v1
/* 76FBBC4 80078E94 C0100200 */  sll        $v0, $v0, 3
/* 76FBBC8 80078E98 23104300 */  subu       $v0, $v0, $v1
/* 76FBBCC 80078E9C C0E30108 */  j          .Llevel_35_80078F00
/* 76FBBD0 80078EA0 83110200 */   sra       $v0, $v0, 6
.Llevel_35_80078EA4:
/* 76FBBD4 80078EA4 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 76FBBD8 80078EA8 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 76FBBDC 80078EAC 00000000 */  nop
/* 76FBBE0 80078EB0 40200400 */  sll        $a0, $a0, 1
/* 76FBBE4 80078EB4 0680013C */  lui        $at, %hi(D_80065920)
/* 76FBBE8 80078EB8 21082400 */  addu       $at, $at, $a0
/* 76FBBEC 80078EBC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 76FBBF0 80078EC0 00000000 */  nop
/* 76FBBF4 80078EC4 40100300 */  sll        $v0, $v1, 1
/* 76FBBF8 80078EC8 21104300 */  addu       $v0, $v0, $v1
/* 76FBBFC 80078ECC 80100200 */  sll        $v0, $v0, 2
/* 76FBC00 80078ED0 21104300 */  addu       $v0, $v0, $v1
/* 76FBC04 80078ED4 43110200 */  sra        $v0, $v0, 5
/* 76FBC08 80078ED8 2800A2AF */  sw         $v0, 0x28($sp)
/* 76FBC0C 80078EDC 0680013C */  lui        $at, %hi(D_800658A0)
/* 76FBC10 80078EE0 21082400 */  addu       $at, $at, $a0
/* 76FBC14 80078EE4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 76FBC18 80078EE8 3000A0AF */  sw         $zero, 0x30($sp)
/* 76FBC1C 80078EEC 40100300 */  sll        $v0, $v1, 1
/* 76FBC20 80078EF0 21104300 */  addu       $v0, $v0, $v1
/* 76FBC24 80078EF4 80100200 */  sll        $v0, $v0, 2
/* 76FBC28 80078EF8 21104300 */  addu       $v0, $v0, $v1
/* 76FBC2C 80078EFC 43110200 */  sra        $v0, $v0, 5
.Llevel_35_80078F00:
/* 76FBC30 80078F00 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 76FBC34 80078F04 2800B127 */  addiu      $s1, $sp, 0x28
/* 76FBC38 80078F08 21202002 */  addu       $a0, $s1, $zero
/* 76FBC3C 80078F0C 0780053C */  lui        $a1, %hi(D_80070328)
/* 76FBC40 80078F10 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 76FBC44 80078F14 653C010C */  jal        func_8004F194
/* 76FBC48 80078F18 21302002 */   addu      $a2, $s1, $zero
/* 76FBC4C 80078F1C 21300000 */  addu       $a2, $zero, $zero
/* 76FBC50 80078F20 2800A38F */  lw         $v1, 0x28($sp)
/* 76FBC54 80078F24 0C00048E */  lw         $a0, 0xC($s0)
/* 76FBC58 80078F28 2C00A28F */  lw         $v0, 0x2C($sp)
/* 76FBC5C 80078F2C 1000058E */  lw         $a1, 0x10($s0)
/* 76FBC60 80078F30 23206400 */  subu       $a0, $v1, $a0
/* 76FBC64 80078F34 203A010C */  jal        func_8004E880
/* 76FBC68 80078F38 23284500 */   subu      $a1, $v0, $a1
/* 76FBC6C 80078F3C 21200002 */  addu       $a0, $s0, $zero
/* 76FBC70 80078F40 21284000 */  addu       $a1, $v0, $zero
/* 76FBC74 80078F44 08000624 */  addiu      $a2, $zero, 0x8
/* 76FBC78 80078F48 10000724 */  addiu      $a3, $zero, 0x10
/* 76FBC7C 80078F4C 01000224 */  addiu      $v0, $zero, 0x1
/* 76FBC80 80078F50 1000A2AF */  sw         $v0, 0x10($sp)
/* 76FBC84 80078F54 17D6000C */  jal        func_8003585C
/* 76FBC88 80078F58 1400A0AF */   sw        $zero, 0x14($sp)
/* 76FBC8C 80078F5C 28004010 */  beqz       $v0, .Llevel_35_80079000
/* 76FBC90 80078F60 21200002 */   addu      $a0, $s0, $zero
/* 76FBC94 80078F64 1000A0AF */  sw         $zero, 0x10($sp)
/* 76FBC98 80078F68 C0000524 */  addiu      $a1, $zero, 0xC0
/* 76FBC9C 80078F6C 21300000 */  addu       $a2, $zero, $zero
/* 76FBCA0 80078F70 77D7000C */  jal        func_80035DDC
/* 76FBCA4 80078F74 21380000 */   addu      $a3, $zero, $zero
/* 76FBCA8 80078F78 21202002 */  addu       $a0, $s1, $zero
/* 76FBCAC 80078F7C CD3C010C */  jal        func_8004F334
/* 76FBCB0 80078F80 0C000526 */   addiu     $a1, $s0, 0xC
/* 76FBCB4 80078F84 00014228 */  slti       $v0, $v0, 0x100
/* 76FBCB8 80078F88 1D004010 */  beqz       $v0, .Llevel_35_80079000
/* 76FBCBC 80078F8C 01000224 */   addiu     $v0, $zero, 0x1
/* 76FBCC0 80078F90 00E40108 */  j          .Llevel_35_80079000
/* 76FBCC4 80078F94 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_35_80078F98:
/* 76FBCC8 80078F98 21200002 */  addu       $a0, $s0, $zero
/* 76FBCCC 80078F9C 08000524 */  addiu      $a1, $zero, 0x8
/* 76FBCD0 80078FA0 04000624 */  addiu      $a2, $zero, 0x4
/* 76FBCD4 80078FA4 CFD5000C */  jal        func_8003573C
/* 76FBCD8 80078FA8 01000724 */   addiu     $a3, $zero, 0x1
/* 76FBCDC 80078FAC 14004010 */  beqz       $v0, .Llevel_35_80079000
/* 76FBCE0 80078FB0 01000224 */   addiu     $v0, $zero, 0x1
/* 76FBCE4 80078FB4 050022A2 */  sb         $v0, 0x5($s1)
/* 76FBCE8 80078FB8 02000224 */  addiu      $v0, $zero, 0x2
/* 76FBCEC 80078FBC 00E40108 */  j          .Llevel_35_80079000
/* 76FBCF0 80078FC0 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_35_80078FC4:
/* 76FBCF4 80078FC4 21280000 */  addu       $a1, $zero, $zero
/* 76FBCF8 80078FC8 B944010C */  jal        func_800512E4
/* 76FBCFC 80078FCC 21300000 */   addu      $a2, $zero, $zero
/* 76FBD00 80078FD0 01000224 */  addiu      $v0, $zero, 0x1
/* 76FBD04 80078FD4 00E40108 */  j          .Llevel_35_80079000
/* 76FBD08 80078FD8 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_35_80078FDC:
/* 76FBD0C 80078FDC 3800228E */  lw         $v0, 0x38($s1)
/* 76FBD10 80078FE0 00000000 */  nop
/* 76FBD14 80078FE4 02004010 */  beqz       $v0, .Llevel_35_80078FF0
/* 76FBD18 80078FE8 00000000 */   nop
/* 76FBD1C 80078FEC 100040A0 */  sb         $zero, 0x10($v0)
.Llevel_35_80078FF0:
/* 76FBD20 80078FF0 C656010C */  jal        func_80055B18
/* 76FBD24 80078FF4 21200002 */   addu      $a0, $s0, $zero
/* 76FBD28 80078FF8 44E40108 */  j          .Llevel_35_80079110
/* 76FBD2C 80078FFC 00000000 */   nop
.Llevel_35_80079000:
/* 76FBD30 80079000 21200002 */  addu       $a0, $s0, $zero
.Llevel_35_80079004:
/* 76FBD34 80079004 4957010C */  jal        func_80055D24
/* 76FBD38 80079008 04000524 */   addiu     $a1, $zero, 0x4
/* 76FBD3C 8007900C 44E40108 */  j          .Llevel_35_80079110
/* 76FBD40 80079010 00000000 */   nop
.Llevel_35_80079014:
/* 76FBD44 80079014 0780023C */  lui        $v0, %hi(D_8006E344)
/* 76FBD48 80079018 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 76FBD4C 8007901C 00000000 */  nop
/* 76FBD50 80079020 3B004310 */  beq        $v0, $v1, .Llevel_35_80079110
/* 76FBD54 80079024 00000000 */   nop
/* 76FBD58 80079028 04002592 */  lbu        $a1, 0x4($s1)
/* 76FBD5C 8007902C 00000000 */  nop
/* 76FBD60 80079030 1300A314 */  bne        $a1, $v1, .Llevel_35_80079080
/* 76FBD64 80079034 02000224 */   addiu     $v0, $zero, 0x2
/* 76FBD68 80079038 0780043C */  lui        $a0, %hi(D_8006FA40)
/* 76FBD6C 8007903C 40FA8424 */  addiu      $a0, $a0, %lo(D_8006FA40)
/* 76FBD70 80079040 000085AC */  sw         $a1, 0x0($a0)
/* 76FBD74 80079044 3C00228E */  lw         $v0, 0x3C($s1)
/* 76FBD78 80079048 00000000 */  nop
/* 76FBD7C 8007904C 0C00458C */  lw         $a1, 0xC($v0)
/* 76FBD80 80079050 5E3C010C */  jal        func_8004F178
/* 76FBD84 80079054 08008424 */   addiu     $a0, $a0, 0x8
/* 76FBD88 80079058 3C00228E */  lw         $v0, 0x3C($s1)
/* 76FBD8C 8007905C 00000000 */  nop
/* 76FBD90 80079060 0C00468C */  lw         $a2, 0xC($v0)
/* 76FBD94 80079064 2800A427 */  addiu      $a0, $sp, 0x28
/* 76FBD98 80079068 723C010C */  jal        func_8004F1C8
/* 76FBD9C 8007906C 1000C524 */   addiu     $a1, $a2, 0x10
/* 76FBDA0 80079070 2800A48F */  lw         $a0, 0x28($sp)
/* 76FBDA4 80079074 2C00A58F */  lw         $a1, 0x2C($sp)
/* 76FBDA8 80079078 32E40108 */  j          .Llevel_35_800790C8
/* 76FBDAC 8007907C 00000000 */   nop
.Llevel_35_80079080:
/* 76FBDB0 80079080 1B00A214 */  bne        $a1, $v0, .Llevel_35_800790F0
/* 76FBDB4 80079084 03000224 */   addiu     $v0, $zero, 0x3
/* 76FBDB8 80079088 0780043C */  lui        $a0, %hi(D_8006FA40)
/* 76FBDBC 8007908C 40FA8424 */  addiu      $a0, $a0, %lo(D_8006FA40)
/* 76FBDC0 80079090 000085AC */  sw         $a1, 0x0($a0)
/* 76FBDC4 80079094 4000228E */  lw         $v0, 0x40($s1)
/* 76FBDC8 80079098 00000000 */  nop
/* 76FBDCC 8007909C 0C00458C */  lw         $a1, 0xC($v0)
/* 76FBDD0 800790A0 5E3C010C */  jal        func_8004F178
/* 76FBDD4 800790A4 08008424 */   addiu     $a0, $a0, 0x8
/* 76FBDD8 800790A8 4000228E */  lw         $v0, 0x40($s1)
/* 76FBDDC 800790AC 00000000 */  nop
/* 76FBDE0 800790B0 0C00468C */  lw         $a2, 0xC($v0)
/* 76FBDE4 800790B4 3800A427 */  addiu      $a0, $sp, 0x38
/* 76FBDE8 800790B8 723C010C */  jal        func_8004F1C8
/* 76FBDEC 800790BC 1000C524 */   addiu     $a1, $a2, 0x10
/* 76FBDF0 800790C0 3800A48F */  lw         $a0, 0x38($sp)
/* 76FBDF4 800790C4 3C00A58F */  lw         $a1, 0x3C($sp)
.Llevel_35_800790C8:
/* 76FBDF8 800790C8 203A010C */  jal        func_8004E880
/* 76FBDFC 800790CC 21300000 */   addu      $a2, $zero, $zero
/* 76FBE00 800790D0 0780043C */  lui        $a0, %hi(D_8006D088)
/* 76FBE04 800790D4 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 76FBE08 800790D8 0780013C */  lui        $at, %hi(D_8006FA54)
/* 76FBE0C 800790DC 54FA22AC */  sw         $v0, %lo(D_8006FA54)($at)
/* 76FBE10 800790E0 D3ED000C */  jal        func_8003B74C
/* 76FBE14 800790E4 00000000 */   nop
/* 76FBE18 800790E8 44E40108 */  j          .Llevel_35_80079110
/* 76FBE1C 800790EC 00000000 */   nop
.Llevel_35_800790F0:
/* 76FBE20 800790F0 0500A214 */  bne        $a1, $v0, .Llevel_35_80079108
/* 76FBE24 800790F4 01000224 */   addiu     $v0, $zero, 0x1
/* 76FBE28 800790F8 D44F010C */  jal        func_80053F50
/* 76FBE2C 800790FC FFFF0424 */   addiu     $a0, $zero, -0x1
/* 76FBE30 80079100 44E40108 */  j          .Llevel_35_80079110
/* 76FBE34 80079104 00000000 */   nop
.Llevel_35_80079108:
/* 76FBE38 80079108 050022A2 */  sb         $v0, 0x5($s1)
/* 76FBE3C 8007910C 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_35_80079110:
/* 76FBE40 80079110 5000BF8F */  lw         $ra, 0x50($sp)
/* 76FBE44 80079114 4C00B18F */  lw         $s1, 0x4C($sp)
/* 76FBE48 80079118 4800B08F */  lw         $s0, 0x48($sp)
/* 76FBE4C 8007911C 5800BD27 */  addiu      $sp, $sp, 0x58
/* 76FBE50 80079120 0800E003 */  jr         $ra
/* 76FBE54 80079124 00000000 */   nop
.size MobyUpdate_144_level_35, . - MobyUpdate_144_level_35
