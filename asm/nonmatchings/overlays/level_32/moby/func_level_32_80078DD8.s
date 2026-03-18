.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80078DD8
/* 6DE0308 80078DD8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6DE030C 80078DDC 3400B1AF */  sw         $s1, 0x34($sp)
/* 6DE0310 80078DE0 21888000 */  addu       $s1, $a0, $zero
/* 6DE0314 80078DE4 4000BFAF */  sw         $ra, 0x40($sp)
/* 6DE0318 80078DE8 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 6DE031C 80078DEC 3800B2AF */  sw         $s2, 0x38($sp)
/* 6DE0320 80078DF0 3000B0AF */  sw         $s0, 0x30($sp)
/* 6DE0324 80078DF4 49002292 */  lbu        $v0, 0x49($s1)
/* 6DE0328 80078DF8 00000000 */  nop
/* 6DE032C 80078DFC 04004014 */  bnez       $v0, .Llevel_32_80078E10
/* 6DE0330 80078E00 00000000 */   nop
/* 6DE0334 80078E04 9171010C */  jal        rand
/* 6DE0338 80078E08 00000000 */   nop
/* 6DE033C 80078E0C 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_32_80078E10:
/* 6DE0340 80078E10 0680023C */  lui        $v0, %hi(D_8006581C)
/* 6DE0344 80078E14 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 6DE0348 80078E18 00000000 */  nop
/* 6DE034C 80078E1C 02004228 */  slti       $v0, $v0, 0x2
/* 6DE0350 80078E20 42004014 */  bnez       $v0, .Llevel_32_80078F2C
/* 6DE0354 80078E24 0C003026 */   addiu     $s0, $s1, 0xC
/* 6DE0358 80078E28 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DE035C 80078E2C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DE0360 80078E30 CD3C010C */  jal        func_8004F334
/* 6DE0364 80078E34 21200002 */   addu      $a0, $s0, $zero
/* 6DE0368 80078E38 0680033C */  lui        $v1, %hi(D_80065810)
/* 6DE036C 80078E3C 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 6DE0370 80078E40 00000000 */  nop
/* 6DE0374 80078E44 2A104300 */  slt        $v0, $v0, $v1
/* 6DE0378 80078E48 38004010 */  beqz       $v0, .Llevel_32_80078F2C
/* 6DE037C 80078E4C 00000000 */   nop
/* 6DE0380 80078E50 1400228E */  lw         $v0, 0x14($s1)
/* 6DE0384 80078E54 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 6DE0388 80078E58 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 6DE038C 80078E5C 64014224 */  addiu      $v0, $v0, 0x164
/* 6DE0390 80078E60 23186200 */  subu       $v1, $v1, $v0
/* 6DE0394 80078E64 0680023C */  lui        $v0, %hi(D_80065818)
/* 6DE0398 80078E68 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 6DE039C 80078E6C 02006104 */  bgez       $v1, .Llevel_32_80078E78
/* 6DE03A0 80078E70 00000000 */   nop
/* 6DE03A4 80078E74 23180300 */  negu       $v1, $v1
.Llevel_32_80078E78:
/* 6DE03A8 80078E78 2A186200 */  slt        $v1, $v1, $v0
/* 6DE03AC 80078E7C 2B006010 */  beqz       $v1, .Llevel_32_80078F2C
/* 6DE03B0 80078E80 00000000 */   nop
/* 6DE03B4 80078E84 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DE03B8 80078E88 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DE03BC 80078E8C 00000000 */  nop
/* 6DE03C0 80078E90 26008010 */  beqz       $a0, .Llevel_32_80078F2C
/* 6DE03C4 80078E94 0C008424 */   addiu     $a0, $a0, 0xC
/* 6DE03C8 80078E98 21280002 */  addu       $a1, $s0, $zero
/* 6DE03CC 80078E9C 8E4F000C */  jal        func_80013E38
/* 6DE03D0 80078EA0 21300000 */   addu      $a2, $zero, $zero
/* 6DE03D4 80078EA4 21004010 */  beqz       $v0, .Llevel_32_80078F2C
/* 6DE03D8 80078EA8 00000000 */   nop
/* 6DE03DC 80078EAC 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 6DE03E0 80078EB0 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 6DE03E4 80078EB4 00000000 */  nop
/* 6DE03E8 80078EB8 0000708C */  lw         $s0, 0x0($v1)
/* 6DE03EC 80078EBC 00000000 */  nop
/* 6DE03F0 80078EC0 1400028E */  lw         $v0, 0x14($s0)
/* 6DE03F4 80078EC4 00000000 */  nop
/* 6DE03F8 80078EC8 09004010 */  beqz       $v0, .Llevel_32_80078EF0
/* 6DE03FC 80078ECC 00000000 */   nop
/* 6DE0400 80078ED0 16005110 */  beq        $v0, $s1, .Llevel_32_80078F2C
/* 6DE0404 80078ED4 00000000 */   nop
/* 6DE0408 80078ED8 00000286 */  lh         $v0, 0x0($s0)
/* 6DE040C 80078EDC 00000000 */  nop
/* 6DE0410 80078EE0 12004018 */  blez       $v0, .Llevel_32_80078F2C
/* 6DE0414 80078EE4 00000000 */   nop
/* 6DE0418 80078EE8 CBE30108 */  j          .Llevel_32_80078F2C
/* 6DE041C 80078EEC 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_32_80078EF0:
/* 6DE0420 80078EF0 09000224 */  addiu      $v0, $zero, 0x9
/* 6DE0424 80078EF4 490062A0 */  sb         $v0, 0x49($v1)
/* 6DE0428 80078EF8 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DE042C 80078EFC 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DE0430 80078F00 02000592 */  lbu        $a1, 0x2($s0)
/* 6DE0434 80078F04 140011AE */  sw         $s1, 0x14($s0)
/* 6DE0438 80078F08 F0EF000C */  jal        func_8003BFC0
/* 6DE043C 80078F0C 000000A6 */   sh        $zero, 0x0($s0)
/* 6DE0440 80078F10 06004014 */  bnez       $v0, .Llevel_32_80078F2C
/* 6DE0444 80078F14 21280000 */   addu      $a1, $zero, $zero
/* 6DE0448 80078F18 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DE044C 80078F1C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DE0450 80078F20 AFEE000C */  jal        func_8003BABC
/* 6DE0454 80078F24 21300000 */   addu      $a2, $zero, $zero
/* 6DE0458 80078F28 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_32_80078F2C:
/* 6DE045C 80078F2C 1800228E */  lw         $v0, 0x18($s1)
/* 6DE0460 80078F30 1B10033C */  lui        $v1, (0x101B0000 >> 16)
/* 6DE0464 80078F34 24104300 */  and        $v0, $v0, $v1
/* 6DE0468 80078F38 63004010 */  beqz       $v0, .Llevel_32_800790C8
/* 6DE046C 80078F3C 21202002 */   addu      $a0, $s1, $zero
/* 6DE0470 80078F40 21280000 */  addu       $a1, $zero, $zero
/* 6DE0474 80078F44 AFEE000C */  jal        func_8003BABC
/* 6DE0478 80078F48 21300000 */   addu      $a2, $zero, $zero
/* 6DE047C 80078F4C 64000224 */  addiu      $v0, $zero, 0x64
/* 6DE0480 80078F50 490022A2 */  sb         $v0, 0x49($s1)
/* 6DE0484 80078F54 21800000 */  addu       $s0, $zero, $zero
/* 6DE0488 80078F58 01001324 */  addiu      $s3, $zero, 0x1
/* 6DE048C 80078F5C 09001224 */  addiu      $s2, $zero, 0x9
.Llevel_32_80078F60:
/* 6DE0490 80078F60 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DE0494 80078F64 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DE0498 80078F68 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DE049C 80078F6C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DE04A0 80078F70 00000000 */  nop
/* 6DE04A4 80078F74 23104300 */  subu       $v0, $v0, $v1
/* 6DE04A8 80078F78 15004228 */  slti       $v0, $v0, 0x15
/* 6DE04AC 80078F7C 13004014 */  bnez       $v0, .Llevel_32_80078FCC
/* 6DE04B0 80078F80 36010424 */   addiu     $a0, $zero, 0x136
/* 6DE04B4 80078F84 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DE04B8 80078F88 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DE04BC 80078F8C 00000000 */  nop
/* 6DE04C0 80078F90 09F84000 */  jalr       $v0
/* 6DE04C4 80078F94 21282002 */   addu      $a1, $s1, $zero
/* 6DE04C8 80078F98 21184000 */  addu       $v1, $v0, $zero
/* 6DE04CC 80078F9C 07006010 */  beqz       $v1, .Llevel_32_80078FBC
/* 6DE04D0 80078FA0 0600022A */   slti      $v0, $s0, 0x6
/* 6DE04D4 80078FA4 03004010 */  beqz       $v0, .Llevel_32_80078FB4
/* 6DE04D8 80078FA8 00000000 */   nop
/* 6DE04DC 80078FAC EFE30108 */  j          .Llevel_32_80078FBC
/* 6DE04E0 80078FB0 490072A0 */   sb        $s2, 0x49($v1)
.Llevel_32_80078FB4:
/* 6DE04E4 80078FB4 3C0073A0 */  sb         $s3, 0x3C($v1)
/* 6DE04E8 80078FB8 490060A0 */  sb         $zero, 0x49($v1)
.Llevel_32_80078FBC:
/* 6DE04EC 80078FBC 01001026 */  addiu      $s0, $s0, 0x1
/* 6DE04F0 80078FC0 0C00022A */  slti       $v0, $s0, 0xC
/* 6DE04F4 80078FC4 E6FF4014 */  bnez       $v0, .Llevel_32_80078F60
/* 6DE04F8 80078FC8 00000000 */   nop
.Llevel_32_80078FCC:
/* 6DE04FC 80078FCC 21800000 */  addu       $s0, $zero, $zero
/* 6DE0500 80078FD0 40001224 */  addiu      $s2, $zero, 0x40
/* 6DE0504 80078FD4 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_32_80078FD8:
/* 6DE0508 80078FD8 5E3C010C */  jal        func_8004F178
/* 6DE050C 80078FDC 0C002526 */   addiu     $a1, $s1, 0xC
/* 6DE0510 80078FE0 9171010C */  jal        rand
/* 6DE0514 80078FE4 01001026 */   addiu     $s0, $s0, 0x1
/* 6DE0518 80078FE8 1000A38F */  lw         $v1, 0x10($sp)
/* 6DE051C 80078FEC FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE0520 80078FF0 80006324 */  addiu      $v1, $v1, 0x80
/* 6DE0524 80078FF4 23186200 */  subu       $v1, $v1, $v0
/* 6DE0528 80078FF8 9171010C */  jal        rand
/* 6DE052C 80078FFC 1000A3AF */   sw        $v1, 0x10($sp)
/* 6DE0530 80079000 1400A38F */  lw         $v1, 0x14($sp)
/* 6DE0534 80079004 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE0538 80079008 80006324 */  addiu      $v1, $v1, 0x80
/* 6DE053C 8007900C 23186200 */  subu       $v1, $v1, $v0
/* 6DE0540 80079010 9171010C */  jal        rand
/* 6DE0544 80079014 1400A3AF */   sw        $v1, 0x14($sp)
/* 6DE0548 80079018 1800A38F */  lw         $v1, 0x18($sp)
/* 6DE054C 8007901C FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DE0550 80079020 21186200 */  addu       $v1, $v1, $v0
/* 6DE0554 80079024 9171010C */  jal        rand
/* 6DE0558 80079028 1800A3AF */   sw        $v1, 0x18($sp)
/* 6DE055C 8007902C 7F004230 */  andi       $v0, $v0, 0x7F
/* 6DE0560 80079030 23104202 */  subu       $v0, $s2, $v0
/* 6DE0564 80079034 9171010C */  jal        rand
/* 6DE0568 80079038 2000A2AF */   sw        $v0, 0x20($sp)
/* 6DE056C 8007903C 7F004230 */  andi       $v0, $v0, 0x7F
/* 6DE0570 80079040 23104202 */  subu       $v0, $s2, $v0
/* 6DE0574 80079044 9171010C */  jal        rand
/* 6DE0578 80079048 2400A2AF */   sw        $v0, 0x24($sp)
/* 6DE057C 8007904C 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE0580 80079050 27000524 */  addiu      $a1, $zero, 0x27
/* 6DE0584 80079054 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE0588 80079058 2000A727 */  addiu      $a3, $sp, 0x20
/* 6DE058C 8007905C 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DE0590 80079060 10000324 */  addiu      $v1, $zero, 0x10
/* 6DE0594 80079064 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DE0598 80079068 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DE059C 8007906C 23186200 */  subu       $v1, $v1, $v0
/* 6DE05A0 80079070 09F80001 */  jalr       $t0
/* 6DE05A4 80079074 2800A3AF */   sw        $v1, 0x28($sp)
/* 6DE05A8 80079078 02000424 */  addiu      $a0, $zero, 0x2
/* 6DE05AC 8007907C 46000524 */  addiu      $a1, $zero, 0x46
/* 6DE05B0 80079080 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE05B4 80079084 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE05B8 80079088 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE05BC 8007908C 00000000 */  nop
/* 6DE05C0 80079090 09F84000 */  jalr       $v0
/* 6DE05C4 80079094 18000724 */   addiu     $a3, $zero, 0x18
/* 6DE05C8 80079098 0800022A */  slti       $v0, $s0, 0x8
/* 6DE05CC 8007909C CEFF4014 */  bnez       $v0, .Llevel_32_80078FD8
/* 6DE05D0 800790A0 1000A427 */   addiu     $a0, $sp, 0x10
/* 6DE05D4 800790A4 21202002 */  addu       $a0, $s1, $zero
/* 6DE05D8 800790A8 21280000 */  addu       $a1, $zero, $zero
/* 6DE05DC 800790AC 21300000 */  addu       $a2, $zero, $zero
/* 6DE05E0 800790B0 9ADA000C */  jal        func_80036A68
/* 6DE05E4 800790B4 21380000 */   addu      $a3, $zero, $zero
/* 6DE05E8 800790B8 C656010C */  jal        func_80055B18
/* 6DE05EC 800790BC 21202002 */   addu      $a0, $s1, $zero
/* 6DE05F0 800790C0 4EE40108 */  j          .Llevel_32_80079138
/* 6DE05F4 800790C4 00000000 */   nop
.Llevel_32_800790C8:
/* 6DE05F8 800790C8 0780023C */  lui        $v0, %hi(D_8006C644)
/* 6DE05FC 800790CC 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 6DE0600 800790D0 49002392 */  lbu        $v1, 0x49($s1)
/* 6DE0604 800790D4 40100200 */  sll        $v0, $v0, 1
/* 6DE0608 800790D8 21104300 */  addu       $v0, $v0, $v1
/* 6DE060C 800790DC FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE0610 800790E0 40100200 */  sll        $v0, $v0, 1
/* 6DE0614 800790E4 0680013C */  lui        $at, %hi(D_80065920)
/* 6DE0618 800790E8 21082200 */  addu       $at, $at, $v0
/* 6DE061C 800790EC 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 6DE0620 800790F0 00000000 */  nop
/* 6DE0624 800790F4 00140200 */  sll        $v0, $v0, 16
/* 6DE0628 800790F8 43160200 */  sra        $v0, $v0, 25
/* 6DE062C 800790FC 440022A2 */  sb         $v0, 0x44($s1)
/* 6DE0630 80079100 0780023C */  lui        $v0, %hi(D_8006C644)
/* 6DE0634 80079104 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 6DE0638 80079108 49002392 */  lbu        $v1, 0x49($s1)
/* 6DE063C 8007910C 40100200 */  sll        $v0, $v0, 1
/* 6DE0640 80079110 21104300 */  addu       $v0, $v0, $v1
/* 6DE0644 80079114 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE0648 80079118 40100200 */  sll        $v0, $v0, 1
/* 6DE064C 8007911C 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DE0650 80079120 21082200 */  addu       $at, $at, $v0
/* 6DE0654 80079124 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 6DE0658 80079128 00000000 */  nop
/* 6DE065C 8007912C 00140200 */  sll        $v0, $v0, 16
/* 6DE0660 80079130 43160200 */  sra        $v0, $v0, 25
/* 6DE0664 80079134 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_32_80079138:
/* 6DE0668 80079138 4000BF8F */  lw         $ra, 0x40($sp)
/* 6DE066C 8007913C 3C00B38F */  lw         $s3, 0x3C($sp)
/* 6DE0670 80079140 3800B28F */  lw         $s2, 0x38($sp)
/* 6DE0674 80079144 3400B18F */  lw         $s1, 0x34($sp)
/* 6DE0678 80079148 3000B08F */  lw         $s0, 0x30($sp)
/* 6DE067C 8007914C 4800BD27 */  addiu      $sp, $sp, 0x48
/* 6DE0680 80079150 0800E003 */  jr         $ra
/* 6DE0684 80079154 00000000 */   nop
.size func_level_32_80078DD8, . - func_level_32_80078DD8
