.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80084D60
/* 6DEC290 80084D60 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 6DEC294 80084D64 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 6DEC298 80084D68 21888000 */  addu       $s1, $a0, $zero
/* 6DEC29C 80084D6C 9000BFAF */  sw         $ra, 0x90($sp)
/* 6DEC2A0 80084D70 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 6DEC2A4 80084D74 8800B4AF */  sw         $s4, 0x88($sp)
/* 6DEC2A8 80084D78 8400B3AF */  sw         $s3, 0x84($sp)
/* 6DEC2AC 80084D7C 8000B2AF */  sw         $s2, 0x80($sp)
/* 6DEC2B0 80084D80 7800B0AF */  sw         $s0, 0x78($sp)
/* 6DEC2B4 80084D84 0C00268E */  lw         $a2, 0xC($s1)
/* 6DEC2B8 80084D88 0000338E */  lw         $s3, 0x0($s1)
/* 6DEC2BC 80084D8C 0004C228 */  slti       $v0, $a2, 0x400
/* 6DEC2C0 80084D90 39014014 */  bnez       $v0, .Llevel_32_80085278
/* 6DEC2C4 80084D94 00000000 */   nop
/* 6DEC2C8 80084D98 1000258E */  lw         $a1, 0x10($s1)
/* 6DEC2CC 80084D9C 00000000 */  nop
/* 6DEC2D0 80084DA0 0004A228 */  slti       $v0, $a1, 0x400
/* 6DEC2D4 80084DA4 34014014 */  bnez       $v0, .Llevel_32_80085278
/* 6DEC2D8 80084DA8 00000000 */   nop
/* 6DEC2DC 80084DAC 1400248E */  lw         $a0, 0x14($s1)
/* 6DEC2E0 80084DB0 00000000 */  nop
/* 6DEC2E4 80084DB4 00048228 */  slti       $v0, $a0, 0x400
/* 6DEC2E8 80084DB8 2F014014 */  bnez       $v0, .Llevel_32_80085278
/* 6DEC2EC 80084DBC 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 6DEC2F0 80084DC0 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 6DEC2F4 80084DC4 2A106600 */  slt        $v0, $v1, $a2
/* 6DEC2F8 80084DC8 2B014014 */  bnez       $v0, .Llevel_32_80085278
/* 6DEC2FC 80084DCC 2A106500 */   slt       $v0, $v1, $a1
/* 6DEC300 80084DD0 29014014 */  bnez       $v0, .Llevel_32_80085278
/* 6DEC304 80084DD4 2A106400 */   slt       $v0, $v1, $a0
/* 6DEC308 80084DD8 27014014 */  bnez       $v0, .Llevel_32_80085278
/* 6DEC30C 80084DDC 1800A427 */   addiu     $a0, $sp, 0x18
/* 6DEC310 80084DE0 5E3C010C */  jal        func_8004F178
/* 6DEC314 80084DE4 0C002526 */   addiu     $a1, $s1, 0xC
/* 6DEC318 80084DE8 0C00228E */  lw         $v0, 0xC($s1)
/* 6DEC31C 80084DEC 0000638E */  lw         $v1, 0x0($s3)
/* 6DEC320 80084DF0 00000000 */  nop
/* 6DEC324 80084DF4 21104300 */  addu       $v0, $v0, $v1
/* 6DEC328 80084DF8 0C0022AE */  sw         $v0, 0xC($s1)
/* 6DEC32C 80084DFC 1000228E */  lw         $v0, 0x10($s1)
/* 6DEC330 80084E00 0400638E */  lw         $v1, 0x4($s3)
/* 6DEC334 80084E04 00000000 */  nop
/* 6DEC338 80084E08 21104300 */  addu       $v0, $v0, $v1
/* 6DEC33C 80084E0C 100022AE */  sw         $v0, 0x10($s1)
/* 6DEC340 80084E10 1400228E */  lw         $v0, 0x14($s1)
/* 6DEC344 80084E14 0800638E */  lw         $v1, 0x8($s3)
/* 6DEC348 80084E18 00000000 */  nop
/* 6DEC34C 80084E1C 21104300 */  addu       $v0, $v0, $v1
/* 6DEC350 80084E20 140022AE */  sw         $v0, 0x14($s1)
/* 6DEC354 80084E24 0C006386 */  lh         $v1, 0xC($s3)
/* 6DEC358 80084E28 0800628E */  lw         $v0, 0x8($s3)
/* 6DEC35C 80084E2C 0780043C */  lui        $a0, %hi(D_8006C640)
/* 6DEC360 80084E30 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 6DEC364 80084E34 21104300 */  addu       $v0, $v0, $v1
/* 6DEC368 80084E38 0A008010 */  beqz       $a0, .Llevel_32_80084E64
/* 6DEC36C 80084E3C 080062AE */   sw        $v0, 0x8($s3)
/* 6DEC370 80084E40 0780023C */  lui        $v0, %hi(D_8006C54C)
/* 6DEC374 80084E44 4CC5428C */  lw         $v0, %lo(D_8006C54C)($v0)
/* 6DEC378 80084E48 00000000 */  nop
/* 6DEC37C 80084E4C 05004014 */  bnez       $v0, .Llevel_32_80084E64
/* 6DEC380 80084E50 01000224 */   addiu     $v0, $zero, 0x1
/* 6DEC384 80084E54 0680013C */  lui        $at, %hi(D_8006580C)
/* 6DEC388 80084E58 0C5822AC */  sw         $v0, %lo(D_8006580C)($at)
/* 6DEC38C 80084E5C 0680013C */  lui        $at, %hi(D_80065834)
/* 6DEC390 80084E60 345822AC */  sw         $v0, %lo(D_80065834)($at)
.Llevel_32_80084E64:
/* 6DEC394 80084E64 48002392 */  lbu        $v1, 0x48($s1)
/* 6DEC398 80084E68 62000224 */  addiu      $v0, $zero, 0x62
/* 6DEC39C 80084E6C 72006210 */  beq        $v1, $v0, .Llevel_32_80085038
/* 6DEC3A0 80084E70 63006228 */   slti      $v0, $v1, 0x63
/* 6DEC3A4 80084E74 05004010 */  beqz       $v0, .Llevel_32_80084E8C
/* 6DEC3A8 80084E78 00000000 */   nop
/* 6DEC3AC 80084E7C 08006010 */  beqz       $v1, .Llevel_32_80084EA0
/* 6DEC3B0 80084E80 0E006426 */   addiu     $a0, $s3, 0xE
/* 6DEC3B4 80084E84 A0140208 */  j          .Llevel_32_80085280
/* 6DEC3B8 80084E88 00000000 */   nop
.Llevel_32_80084E8C:
/* 6DEC3BC 80084E8C 63000224 */  addiu      $v0, $zero, 0x63
/* 6DEC3C0 80084E90 97006210 */  beq        $v1, $v0, .Llevel_32_800850F0
/* 6DEC3C4 80084E94 21A00000 */   addu      $s4, $zero, $zero
/* 6DEC3C8 80084E98 A0140208 */  j          .Llevel_32_80085280
/* 6DEC3CC 80084E9C 00000000 */   nop
.Llevel_32_80084EA0:
/* 6DEC3D0 80084EA0 44002292 */  lbu        $v0, 0x44($s1)
/* 6DEC3D4 80084EA4 02000524 */  addiu      $a1, $zero, 0x2
/* 6DEC3D8 80084EA8 04004224 */  addiu      $v0, $v0, 0x4
/* 6DEC3DC 80084EAC 69D6000C */  jal        func_800359A4
/* 6DEC3E0 80084EB0 440022A2 */   sb        $v0, 0x44($s1)
/* 6DEC3E4 80084EB4 12006292 */  lbu        $v0, 0x12($s3)
/* 6DEC3E8 80084EB8 00000000 */  nop
/* 6DEC3EC 80084EBC 03004014 */  bnez       $v0, .Llevel_32_80084ECC
/* 6DEC3F0 80084EC0 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DEC3F4 80084EC4 CF130208 */  j          .Llevel_32_80084F3C
/* 6DEC3F8 80084EC8 21900000 */   addu      $s2, $zero, $zero
.Llevel_32_80084ECC:
/* 6DEC3FC 80084ECC 00020524 */  addiu      $a1, $zero, 0x200
/* 6DEC400 80084ED0 01000624 */  addiu      $a2, $zero, 0x1
/* 6DEC404 80084ED4 21380000 */  addu       $a3, $zero, $zero
/* 6DEC408 80084ED8 1710023C */  lui        $v0, (0x10170000 >> 16)
/* 6DEC40C 80084EDC 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEC410 80084EE0 8C6E000C */  jal        func_8001BA30
/* 6DEC414 80084EE4 1400B1AF */   sw        $s1, 0x14($sp)
/* 6DEC418 80084EE8 21904000 */  addu       $s2, $v0, $zero
/* 6DEC41C 80084EEC 13004012 */  beqz       $s2, .Llevel_32_80084F3C
/* 6DEC420 80084EF0 21300000 */   addu      $a2, $zero, $zero
/* 6DEC424 80084EF4 0C00438E */  lw         $v1, 0xC($s2)
/* 6DEC428 80084EF8 0C00248E */  lw         $a0, 0xC($s1)
/* 6DEC42C 80084EFC 1000428E */  lw         $v0, 0x10($s2)
/* 6DEC430 80084F00 1000258E */  lw         $a1, 0x10($s1)
/* 6DEC434 80084F04 23206400 */  subu       $a0, $v1, $a0
/* 6DEC438 80084F08 203A010C */  jal        func_8004E880
/* 6DEC43C 80084F0C 23284500 */   subu      $a1, $v0, $a1
/* 6DEC440 80084F10 21300000 */  addu       $a2, $zero, $zero
/* 6DEC444 80084F14 0000648E */  lw         $a0, 0x0($s3)
/* 6DEC448 80084F18 0400658E */  lw         $a1, 0x4($s3)
/* 6DEC44C 80084F1C 203A010C */  jal        func_8004E880
/* 6DEC450 80084F20 21804000 */   addu      $s0, $v0, $zero
/* 6DEC454 80084F24 21200002 */  addu       $a0, $s0, $zero
/* 6DEC458 80084F28 21284000 */  addu       $a1, $v0, $zero
/* 6DEC45C 80084F2C 20000624 */  addiu      $a2, $zero, 0x20
/* 6DEC460 80084F30 3ED8000C */  jal        func_800360F8
/* 6DEC464 80084F34 40000724 */   addiu     $a3, $zero, 0x40
/* 6DEC468 80084F38 510042A2 */  sb         $v0, 0x51($s2)
.Llevel_32_80084F3C:
/* 6DEC46C 80084F3C 10006426 */  addiu      $a0, $s3, 0x10
/* 6DEC470 80084F40 69D6000C */  jal        func_800359A4
/* 6DEC474 80084F44 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEC478 80084F48 15004014 */  bnez       $v0, .Llevel_32_80084FA0
/* 6DEC47C 80084F4C 00000000 */   nop
/* 6DEC480 80084F50 13004016 */  bnez       $s2, .Llevel_32_80084FA0
/* 6DEC484 80084F54 1800A427 */   addiu     $a0, $sp, 0x18
/* 6DEC488 80084F58 0C003226 */  addiu      $s2, $s1, 0xC
/* 6DEC48C 80084F5C 21284002 */  addu       $a1, $s2, $zero
/* 6DEC490 80084F60 21300000 */  addu       $a2, $zero, $zero
/* 6DEC494 80084F64 1400628E */  lw         $v0, 0x14($s3)
/* 6DEC498 80084F68 21380000 */  addu       $a3, $zero, $zero
/* 6DEC49C 80084F6C C360000C */  jal        func_8001830C
/* 6DEC4A0 80084F70 1000A2AF */   sw        $v0, 0x10($sp)
/* 6DEC4A4 80084F74 0A004014 */  bnez       $v0, .Llevel_32_80084FA0
/* 6DEC4A8 80084F78 21204002 */   addu      $a0, $s2, $zero
/* 6DEC4AC 80084F7C 00010524 */  addiu      $a1, $zero, 0x100
/* 6DEC4B0 80084F80 21300000 */  addu       $a2, $zero, $zero
/* 6DEC4B4 80084F84 1000A0AF */  sw         $zero, 0x10($sp)
/* 6DEC4B8 80084F88 1400628E */  lw         $v0, 0x14($s3)
/* 6DEC4BC 80084F8C 21380000 */  addu       $a3, $zero, $zero
/* 6DEC4C0 80084F90 4E64000C */  jal        func_80019138
/* 6DEC4C4 80084F94 1400A2AF */   sw        $v0, 0x14($sp)
/* 6DEC4C8 80084F98 0D004010 */  beqz       $v0, .Llevel_32_80084FD0
/* 6DEC4CC 80084F9C 00000000 */   nop
.Llevel_32_80084FA0:
/* 6DEC4D0 80084FA0 0E006286 */  lh         $v0, 0xE($s3)
/* 6DEC4D4 80084FA4 00000000 */  nop
/* 6DEC4D8 80084FA8 1A004014 */  bnez       $v0, .Llevel_32_80085014
/* 6DEC4DC 80084FAC 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DEC4E0 80084FB0 1800A527 */  addiu      $a1, $sp, 0x18
/* 6DEC4E4 80084FB4 000060AE */  sw         $zero, 0x0($s3)
/* 6DEC4E8 80084FB8 040060AE */  sw         $zero, 0x4($s3)
/* 6DEC4EC 80084FBC 5E3C010C */  jal        func_8004F178
/* 6DEC4F0 80084FC0 080060AE */   sw        $zero, 0x8($s3)
/* 6DEC4F4 80084FC4 62000224 */  addiu      $v0, $zero, 0x62
/* 6DEC4F8 80084FC8 04140208 */  j          .Llevel_32_80085010
/* 6DEC4FC 80084FCC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_32_80084FD0:
/* 6DEC500 80084FD0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 6DEC504 80084FD4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 6DEC508 80084FD8 00000000 */  nop
/* 6DEC50C 80084FDC 01004230 */  andi       $v0, $v0, 0x1
/* 6DEC510 80084FE0 0B004010 */  beqz       $v0, .Llevel_32_80085010
/* 6DEC514 80084FE4 2800B027 */   addiu     $s0, $sp, 0x28
/* 6DEC518 80084FE8 5A3C010C */  jal        func_8004F168
/* 6DEC51C 80084FEC 21200002 */   addu      $a0, $s0, $zero
/* 6DEC520 80084FF0 01000424 */  addiu      $a0, $zero, 0x1
/* 6DEC524 80084FF4 31000524 */  addiu      $a1, $zero, 0x31
/* 6DEC528 80084FF8 21304002 */  addu       $a2, $s2, $zero
/* 6DEC52C 80084FFC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEC530 80085000 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEC534 80085004 00000000 */  nop
/* 6DEC538 80085008 09F84000 */  jalr       $v0
/* 6DEC53C 8008500C 21380002 */   addu      $a3, $s0, $zero
.Llevel_32_80085010:
/* 6DEC540 80085010 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_32_80085014:
/* 6DEC544 80085014 D668000C */  jal        func_8001A358
/* 6DEC548 80085018 00200524 */   addiu     $a1, $zero, 0x2000
/* 6DEC54C 8008501C A758010C */  jal        func_8005629C
/* 6DEC550 80085020 21202002 */   addu      $a0, $s1, $zero
/* 6DEC554 80085024 21202002 */  addu       $a0, $s1, $zero
/* 6DEC558 80085028 4957010C */  jal        func_80055D24
/* 6DEC55C 8008502C 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEC560 80085030 A0140208 */  j          .Llevel_32_80085280
/* 6DEC564 80085034 00000000 */   nop
.Llevel_32_80085038:
/* 6DEC568 80085038 12006292 */  lbu        $v0, 0x12($s3)
/* 6DEC56C 8008503C 00000000 */  nop
/* 6DEC570 80085040 1C004010 */  beqz       $v0, .Llevel_32_800850B4
/* 6DEC574 80085044 0C003226 */   addiu     $s2, $s1, 0xC
/* 6DEC578 80085048 21204002 */  addu       $a0, $s2, $zero
/* 6DEC57C 8008504C 00040524 */  addiu      $a1, $zero, 0x400
/* 6DEC580 80085050 01000624 */  addiu      $a2, $zero, 0x1
/* 6DEC584 80085054 21380000 */  addu       $a3, $zero, $zero
/* 6DEC588 80085058 1710023C */  lui        $v0, (0x10170000 >> 16)
/* 6DEC58C 8008505C 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEC590 80085060 8C6E000C */  jal        func_8001BA30
/* 6DEC594 80085064 1400B1AF */   sw        $s1, 0x14($sp)
/* 6DEC598 80085068 21804000 */  addu       $s0, $v0, $zero
/* 6DEC59C 8008506C 09000012 */  beqz       $s0, .Llevel_32_80085094
/* 6DEC5A0 80085070 21300000 */   addu      $a2, $zero, $zero
/* 6DEC5A4 80085074 0C00038E */  lw         $v1, 0xC($s0)
/* 6DEC5A8 80085078 0C00248E */  lw         $a0, 0xC($s1)
/* 6DEC5AC 8008507C 1000028E */  lw         $v0, 0x10($s0)
/* 6DEC5B0 80085080 1000258E */  lw         $a1, 0x10($s1)
/* 6DEC5B4 80085084 23206400 */  subu       $a0, $v1, $a0
/* 6DEC5B8 80085088 203A010C */  jal        func_8004E880
/* 6DEC5BC 8008508C 23284500 */   subu      $a1, $v0, $a1
/* 6DEC5C0 80085090 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_32_80085094:
/* 6DEC5C4 80085094 21204002 */  addu       $a0, $s2, $zero
/* 6DEC5C8 80085098 00040524 */  addiu      $a1, $zero, 0x400
/* 6DEC5CC 8008509C 21300000 */  addu       $a2, $zero, $zero
/* 6DEC5D0 800850A0 21380000 */  addu       $a3, $zero, $zero
/* 6DEC5D4 800850A4 0410023C */  lui        $v0, (0x10040000 >> 16)
/* 6DEC5D8 800850A8 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEC5DC 800850AC 4E64000C */  jal        func_80019138
/* 6DEC5E0 800850B0 1400B1AF */   sw        $s1, 0x14($sp)
.Llevel_32_800850B4:
/* 6DEC5E4 800850B4 13006292 */  lbu        $v0, 0x13($s3)
/* 6DEC5E8 800850B8 00000000 */  nop
/* 6DEC5EC 800850BC 04004010 */  beqz       $v0, .Llevel_32_800850D0
/* 6DEC5F0 800850C0 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DEC5F4 800850C4 00040524 */  addiu      $a1, $zero, 0x400
/* 6DEC5F8 800850C8 A270000C */  jal        func_8001C288
/* 6DEC5FC 800850CC 07000624 */   addiu     $a2, $zero, 0x7
.Llevel_32_800850D0:
/* 6DEC600 800850D0 21202002 */  addu       $a0, $s1, $zero
/* 6DEC604 800850D4 21280000 */  addu       $a1, $zero, $zero
/* 6DEC608 800850D8 AFEE000C */  jal        func_8003BABC
/* 6DEC60C 800850DC 21300000 */   addu      $a2, $zero, $zero
/* 6DEC610 800850E0 63000224 */  addiu      $v0, $zero, 0x63
/* 6DEC614 800850E4 100060A6 */  sh         $zero, 0x10($s3)
/* 6DEC618 800850E8 480022A2 */  sb         $v0, 0x48($s1)
/* 6DEC61C 800850EC 21A00000 */  addu       $s4, $zero, $zero
.Llevel_32_800850F0:
/* 6DEC620 800850F0 5800B527 */  addiu      $s5, $sp, 0x58
/* 6DEC624 800850F4 3800B227 */  addiu      $s2, $sp, 0x38
/* 6DEC628 800850F8 4800B027 */  addiu      $s0, $sp, 0x48
.Llevel_32_800850FC:
/* 6DEC62C 800850FC 9171010C */  jal        rand
/* 6DEC630 80085100 7000A0A3 */   sb        $zero, 0x70($sp)
/* 6DEC634 80085104 9171010C */  jal        rand
/* 6DEC638 80085108 7100A2A3 */   sb        $v0, 0x71($sp)
/* 6DEC63C 8008510C 7000A427 */  addiu      $a0, $sp, 0x70
/* 6DEC640 80085110 2128A002 */  addu       $a1, $s5, $zero
/* 6DEC644 80085114 21300000 */  addu       $a2, $zero, $zero
/* 6DEC648 80085118 A43A010C */  jal        func_8004EA90
/* 6DEC64C 8008511C 7200A2A3 */   sb        $v0, 0x72($sp)
/* 6DEC650 80085120 9171010C */  jal        rand
/* 6DEC654 80085124 01009426 */   addiu     $s4, $s4, 0x1
/* 6DEC658 80085128 2120A002 */  addu       $a0, $s5, $zero
/* 6DEC65C 8008512C 21284002 */  addu       $a1, $s2, $zero
/* 6DEC660 80085130 21304002 */  addu       $a2, $s2, $zero
/* 6DEC664 80085134 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DEC668 80085138 30004224 */  addiu      $v0, $v0, 0x30
/* 6DEC66C 8008513C 3800A2AF */  sw         $v0, 0x38($sp)
/* 6DEC670 80085140 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 6DEC674 80085144 5B3B010C */  jal        func_8004ED6C
/* 6DEC678 80085148 4000A0AF */   sw        $zero, 0x40($sp)
/* 6DEC67C 8008514C 21200002 */  addu       $a0, $s0, $zero
/* 6DEC680 80085150 5E3C010C */  jal        func_8004F178
/* 6DEC684 80085154 21284002 */   addu      $a1, $s2, $zero
/* 6DEC688 80085158 21200002 */  addu       $a0, $s0, $zero
/* 6DEC68C 8008515C 3A3C010C */  jal        func_8004F0E8
/* 6DEC690 80085160 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEC694 80085164 21200002 */  addu       $a0, $s0, $zero
/* 6DEC698 80085168 21280002 */  addu       $a1, $s0, $zero
/* 6DEC69C 8008516C 653C010C */  jal        func_8004F194
/* 6DEC6A0 80085170 0C002626 */   addiu     $a2, $s1, 0xC
/* 6DEC6A4 80085174 01000424 */  addiu      $a0, $zero, 0x1
/* 6DEC6A8 80085178 0D000524 */  addiu      $a1, $zero, 0xD
/* 6DEC6AC 8008517C 21300002 */  addu       $a2, $s0, $zero
/* 6DEC6B0 80085180 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEC6B4 80085184 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEC6B8 80085188 00000000 */  nop
/* 6DEC6BC 8008518C 09F84000 */  jalr       $v0
/* 6DEC6C0 80085190 21384002 */   addu      $a3, $s2, $zero
/* 6DEC6C4 80085194 0400822A */  slti       $v0, $s4, 0x4
/* 6DEC6C8 80085198 D8FF4014 */  bnez       $v0, .Llevel_32_800850FC
/* 6DEC6CC 8008519C 08000424 */   addiu     $a0, $zero, 0x8
/* 6DEC6D0 800851A0 46000524 */  addiu      $a1, $zero, 0x46
/* 6DEC6D4 800851A4 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DEC6D8 800851A8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DEC6DC 800851AC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DEC6E0 800851B0 00000000 */  nop
/* 6DEC6E4 800851B4 09F84000 */  jalr       $v0
/* 6DEC6E8 800851B8 10000724 */   addiu     $a3, $zero, 0x10
/* 6DEC6EC 800851BC 46010424 */  addiu      $a0, $zero, 0x146
/* 6DEC6F0 800851C0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DEC6F4 800851C4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DEC6F8 800851C8 00000000 */  nop
/* 6DEC6FC 800851CC 09F84000 */  jalr       $v0
/* 6DEC700 800851D0 21282002 */   addu      $a1, $s1, $zero
/* 6DEC704 800851D4 21804000 */  addu       $s0, $v0, $zero
/* 6DEC708 800851D8 1E000012 */  beqz       $s0, .Llevel_32_80085254
/* 6DEC70C 800851DC 04000224 */   addiu     $v0, $zero, 0x4
/* 6DEC710 800851E0 470002A2 */  sb         $v0, 0x47($s0)
/* 6DEC714 800851E4 10006286 */  lh         $v0, 0x10($s3)
/* 6DEC718 800851E8 00000000 */  nop
/* 6DEC71C 800851EC 19004010 */  beqz       $v0, .Llevel_32_80085254
/* 6DEC720 800851F0 00000000 */   nop
/* 6DEC724 800851F4 9171010C */  jal        rand
/* 6DEC728 800851F8 7000A0A3 */   sb        $zero, 0x70($sp)
/* 6DEC72C 800851FC 9171010C */  jal        rand
/* 6DEC730 80085200 7100A2A3 */   sb        $v0, 0x71($sp)
/* 6DEC734 80085204 7000A427 */  addiu      $a0, $sp, 0x70
/* 6DEC738 80085208 2128A002 */  addu       $a1, $s5, $zero
/* 6DEC73C 8008520C 21300000 */  addu       $a2, $zero, $zero
/* 6DEC740 80085210 A43A010C */  jal        func_8004EA90
/* 6DEC744 80085214 7200A2A3 */   sb        $v0, 0x72($sp)
/* 6DEC748 80085218 9171010C */  jal        rand
/* 6DEC74C 8008521C 00000000 */   nop
/* 6DEC750 80085220 2120A002 */  addu       $a0, $s5, $zero
/* 6DEC754 80085224 21284002 */  addu       $a1, $s2, $zero
/* 6DEC758 80085228 21304002 */  addu       $a2, $s2, $zero
/* 6DEC75C 8008522C FF004230 */  andi       $v0, $v0, 0xFF
/* 6DEC760 80085230 00014224 */  addiu      $v0, $v0, 0x100
/* 6DEC764 80085234 3800A2AF */  sw         $v0, 0x38($sp)
/* 6DEC768 80085238 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 6DEC76C 8008523C 5B3B010C */  jal        func_8004ED6C
/* 6DEC770 80085240 4000A0AF */   sw        $zero, 0x40($sp)
/* 6DEC774 80085244 0C000426 */  addiu      $a0, $s0, 0xC
/* 6DEC778 80085248 21288000 */  addu       $a1, $a0, $zero
/* 6DEC77C 8008524C 653C010C */  jal        func_8004F194
/* 6DEC780 80085250 21304002 */   addu      $a2, $s2, $zero
.Llevel_32_80085254:
/* 6DEC784 80085254 10006296 */  lhu        $v0, 0x10($s3)
/* 6DEC788 80085258 00000000 */  nop
/* 6DEC78C 8008525C 01004224 */  addiu      $v0, $v0, 0x1
/* 6DEC790 80085260 100062A6 */  sh         $v0, 0x10($s3)
/* 6DEC794 80085264 00140200 */  sll        $v0, $v0, 16
/* 6DEC798 80085268 03140200 */  sra        $v0, $v0, 16
/* 6DEC79C 8008526C 05004228 */  slti       $v0, $v0, 0x5
/* 6DEC7A0 80085270 03004014 */  bnez       $v0, .Llevel_32_80085280
/* 6DEC7A4 80085274 00000000 */   nop
.Llevel_32_80085278:
/* 6DEC7A8 80085278 C656010C */  jal        func_80055B18
/* 6DEC7AC 8008527C 21202002 */   addu      $a0, $s1, $zero
.Llevel_32_80085280:
/* 6DEC7B0 80085280 9000BF8F */  lw         $ra, 0x90($sp)
/* 6DEC7B4 80085284 8C00B58F */  lw         $s5, 0x8C($sp)
/* 6DEC7B8 80085288 8800B48F */  lw         $s4, 0x88($sp)
/* 6DEC7BC 8008528C 8400B38F */  lw         $s3, 0x84($sp)
/* 6DEC7C0 80085290 8000B28F */  lw         $s2, 0x80($sp)
/* 6DEC7C4 80085294 7C00B18F */  lw         $s1, 0x7C($sp)
/* 6DEC7C8 80085298 7800B08F */  lw         $s0, 0x78($sp)
/* 6DEC7CC 8008529C 9800BD27 */  addiu      $sp, $sp, 0x98
/* 6DEC7D0 800852A0 0800E003 */  jr         $ra
/* 6DEC7D4 800852A4 00000000 */   nop
.size func_level_32_80084D60, . - func_level_32_80084D60
