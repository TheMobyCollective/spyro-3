.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_16_80078D74
/* 4B9A2A4 80078D74 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4B9A2A8 80078D78 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 4B9A2AC 80078D7C 21988000 */  addu       $s3, $a0, $zero
/* 4B9A2B0 80078D80 3000BFAF */  sw         $ra, 0x30($sp)
/* 4B9A2B4 80078D84 2800B2AF */  sw         $s2, 0x28($sp)
/* 4B9A2B8 80078D88 2400B1AF */  sw         $s1, 0x24($sp)
/* 4B9A2BC 80078D8C 2000B0AF */  sw         $s0, 0x20($sp)
/* 4B9A2C0 80078D90 0000728E */  lw         $s2, 0x0($s3)
/* 4B9A2C4 80078D94 00000000 */  nop
/* 4B9A2C8 80078D98 0000428E */  lw         $v0, 0x0($s2)
/* 4B9A2CC 80078D9C 00000000 */  nop
/* 4B9A2D0 80078DA0 13004014 */  bnez       $v0, .Llevel_16_80078DF0
/* 4B9A2D4 80078DA4 D3000424 */   addiu     $a0, $zero, 0xD3
/* 4B9A2D8 80078DA8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4B9A2DC 80078DAC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4B9A2E0 80078DB0 00000000 */  nop
/* 4B9A2E4 80078DB4 09F84000 */  jalr       $v0
/* 4B9A2E8 80078DB8 21286002 */   addu      $a1, $s3, $zero
/* 4B9A2EC 80078DBC 21184000 */  addu       $v1, $v0, $zero
/* 4B9A2F0 80078DC0 0B006010 */  beqz       $v1, .Llevel_16_80078DF0
/* 4B9A2F4 80078DC4 000043AE */   sw        $v1, 0x0($s2)
/* 4B9A2F8 80078DC8 1400628E */  lw         $v0, 0x14($s3)
/* 4B9A2FC 80078DCC 00000000 */  nop
/* 4B9A300 80078DD0 E0004224 */  addiu      $v0, $v0, 0xE0
/* 4B9A304 80078DD4 140062AC */  sw         $v0, 0x14($v1)
/* 4B9A308 80078DD8 0000438E */  lw         $v1, 0x0($s2)
/* 4B9A30C 80078DDC 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9A310 80078DE0 480062A0 */  sb         $v0, 0x48($v1)
/* 4B9A314 80078DE4 0000428E */  lw         $v0, 0x0($s2)
/* 4B9A318 80078DE8 00000000 */  nop
/* 4B9A31C 80078DEC 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_16_80078DF0:
/* 4B9A320 80078DF0 4D006292 */  lbu        $v0, 0x4D($s3)
/* 4B9A324 80078DF4 00000000 */  nop
/* 4B9A328 80078DF8 33004010 */  beqz       $v0, .Llevel_16_80078EC8
/* 4B9A32C 80078DFC 00000000 */   nop
/* 4B9A330 80078E00 0400438E */  lw         $v1, 0x4($s2)
/* 4B9A334 80078E04 00000000 */  nop
/* 4B9A338 80078E08 90016228 */  slti       $v0, $v1, 0x190
/* 4B9A33C 80078E0C 07004010 */  beqz       $v0, .Llevel_16_80078E2C
/* 4B9A340 80078E10 00000000 */   nop
/* 4B9A344 80078E14 0780023C */  lui        $v0, %hi(D_8006C648)
/* 4B9A348 80078E18 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 4B9A34C 80078E1C 00000000 */  nop
/* 4B9A350 80078E20 21106200 */  addu       $v0, $v1, $v0
/* 4B9A354 80078E24 B2E30108 */  j          .Llevel_16_80078EC8
/* 4B9A358 80078E28 040042AE */   sw        $v0, 0x4($s2)
.Llevel_16_80078E2C:
/* 4B9A35C 80078E2C 10BC000C */  jal        func_8002F040
/* 4B9A360 80078E30 05000424 */   addiu     $a0, $zero, 0x5
/* 4B9A364 80078E34 21884000 */  addu       $s1, $v0, $zero
/* 4B9A368 80078E38 1C002012 */  beqz       $s1, .Llevel_16_80078EAC
/* 4B9A36C 80078E3C 00000000 */   nop
/* 4B9A370 80078E40 9171010C */  jal        rand
/* 4B9A374 80078E44 00000000 */   nop
/* 4B9A378 80078E48 21202002 */  addu       $a0, $s1, $zero
/* 4B9A37C 80078E4C 0C006526 */  addiu      $a1, $s3, 0xC
/* 4B9A380 80078E50 5E3C010C */  jal        func_8004F178
/* 4B9A384 80078E54 21804000 */   addu      $s0, $v0, $zero
/* 4B9A388 80078E58 FF001032 */  andi       $s0, $s0, 0xFF
/* 4B9A38C 80078E5C 40801000 */  sll        $s0, $s0, 1
/* 4B9A390 80078E60 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9A394 80078E64 21083000 */  addu       $at, $at, $s0
/* 4B9A398 80078E68 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 4B9A39C 80078E6C 0000238E */  lw         $v1, 0x0($s1)
/* 4B9A3A0 80078E70 00140200 */  sll        $v0, $v0, 16
/* 4B9A3A4 80078E74 03150200 */  sra        $v0, $v0, 20
/* 4B9A3A8 80078E78 21186200 */  addu       $v1, $v1, $v0
/* 4B9A3AC 80078E7C 0800228E */  lw         $v0, 0x8($s1)
/* 4B9A3B0 80078E80 000023AE */  sw         $v1, 0x0($s1)
/* 4B9A3B4 80078E84 0680013C */  lui        $at, %hi(D_800658A0)
/* 4B9A3B8 80078E88 21083000 */  addu       $at, $at, $s0
/* 4B9A3BC 80078E8C A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 4B9A3C0 80078E90 80014224 */  addiu      $v0, $v0, 0x180
/* 4B9A3C4 80078E94 001C0300 */  sll        $v1, $v1, 16
/* 4B9A3C8 80078E98 080022AE */  sw         $v0, 0x8($s1)
/* 4B9A3CC 80078E9C 0400228E */  lw         $v0, 0x4($s1)
/* 4B9A3D0 80078EA0 031D0300 */  sra        $v1, $v1, 20
/* 4B9A3D4 80078EA4 21104300 */  addu       $v0, $v0, $v1
/* 4B9A3D8 80078EA8 040022AE */  sw         $v0, 0x4($s1)
.Llevel_16_80078EAC:
/* 4B9A3DC 80078EAC 9171010C */  jal        rand
/* 4B9A3E0 80078EB0 00000000 */   nop
/* 4B9A3E4 80078EB4 0400438E */  lw         $v1, 0x4($s2)
/* 4B9A3E8 80078EB8 FF004230 */  andi       $v0, $v0, 0xFF
/* 4B9A3EC 80078EBC 80FF6324 */  addiu      $v1, $v1, -0x80
/* 4B9A3F0 80078EC0 23186200 */  subu       $v1, $v1, $v0
/* 4B9A3F4 80078EC4 040043AE */  sw         $v1, 0x4($s2)
.Llevel_16_80078EC8:
/* 4B9A3F8 80078EC8 1800628E */  lw         $v0, 0x18($s3)
/* 4B9A3FC 80078ECC 00000000 */  nop
/* 4B9A400 80078ED0 7A004010 */  beqz       $v0, .Llevel_16_800790BC
/* 4B9A404 80078ED4 00000000 */   nop
/* 4B9A408 80078ED8 0000428E */  lw         $v0, 0x0($s2)
/* 4B9A40C 80078EDC 00000000 */  nop
/* 4B9A410 80078EE0 05004010 */  beqz       $v0, .Llevel_16_80078EF8
/* 4B9A414 80078EE4 00000000 */   nop
/* 4B9A418 80078EE8 480040A0 */  sb         $zero, 0x48($v0)
/* 4B9A41C 80078EEC 0000438E */  lw         $v1, 0x0($s2)
/* 4B9A420 80078EF0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4B9A424 80078EF4 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_16_80078EF8:
/* 4B9A428 80078EF8 70000224 */  addiu      $v0, $zero, 0x70
/* 4B9A42C 80078EFC 490062A2 */  sb         $v0, 0x49($s3)
/* 4B9A430 80078F00 21880000 */  addu       $s1, $zero, $zero
/* 4B9A434 80078F04 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 4B9A438 80078F08 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_16_80078F0C:
/* 4B9A43C 80078F0C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4B9A440 80078F10 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4B9A444 80078F14 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4B9A448 80078F18 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4B9A44C 80078F1C 00000000 */  nop
/* 4B9A450 80078F20 23104300 */  subu       $v0, $v0, $v1
/* 4B9A454 80078F24 15004228 */  slti       $v0, $v0, 0x15
/* 4B9A458 80078F28 14004014 */  bnez       $v0, .Llevel_16_80078F7C
/* 4B9A45C 80078F2C 38020424 */   addiu     $a0, $zero, 0x238
/* 4B9A460 80078F30 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4B9A464 80078F34 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4B9A468 80078F38 00000000 */  nop
/* 4B9A46C 80078F3C 09F84000 */  jalr       $v0
/* 4B9A470 80078F40 21286002 */   addu      $a1, $s3, $zero
/* 4B9A474 80078F44 9171010C */  jal        rand
/* 4B9A478 80078F48 21804000 */   addu      $s0, $v0, $zero
/* 4B9A47C 80078F4C 18005200 */  mult       $v0, $s2
/* 4B9A480 80078F50 01003126 */  addiu      $s1, $s1, 0x1
/* 4B9A484 80078F54 C3270200 */  sra        $a0, $v0, 31
/* 4B9A488 80078F58 10480000 */  mfhi       $t1
/* 4B9A48C 80078F5C 23202401 */  subu       $a0, $t1, $a0
/* 4B9A490 80078F60 40180400 */  sll        $v1, $a0, 1
/* 4B9A494 80078F64 21186400 */  addu       $v1, $v1, $a0
/* 4B9A498 80078F68 23104300 */  subu       $v0, $v0, $v1
/* 4B9A49C 80078F6C 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 4B9A4A0 80078F70 1000222A */  slti       $v0, $s1, 0x10
/* 4B9A4A4 80078F74 E5FF4014 */  bnez       $v0, .Llevel_16_80078F0C
/* 4B9A4A8 80078F78 00000000 */   nop
.Llevel_16_80078F7C:
/* 4B9A4AC 80078F7C 21880000 */  addu       $s1, $zero, $zero
.Llevel_16_80078F80:
/* 4B9A4B0 80078F80 1000A427 */  addiu      $a0, $sp, 0x10
/* 4B9A4B4 80078F84 5E3C010C */  jal        func_8004F178
/* 4B9A4B8 80078F88 0C006526 */   addiu     $a1, $s3, 0xC
/* 4B9A4BC 80078F8C 9171010C */  jal        rand
/* 4B9A4C0 80078F90 01003126 */   addiu     $s1, $s1, 0x1
/* 4B9A4C4 80078F94 1000A38F */  lw         $v1, 0x10($sp)
/* 4B9A4C8 80078F98 FF014230 */  andi       $v0, $v0, 0x1FF
/* 4B9A4CC 80078F9C 00016324 */  addiu      $v1, $v1, 0x100
/* 4B9A4D0 80078FA0 23186200 */  subu       $v1, $v1, $v0
/* 4B9A4D4 80078FA4 9171010C */  jal        rand
/* 4B9A4D8 80078FA8 1000A3AF */   sw        $v1, 0x10($sp)
/* 4B9A4DC 80078FAC 1400A38F */  lw         $v1, 0x14($sp)
/* 4B9A4E0 80078FB0 FF014230 */  andi       $v0, $v0, 0x1FF
/* 4B9A4E4 80078FB4 00016324 */  addiu      $v1, $v1, 0x100
/* 4B9A4E8 80078FB8 23186200 */  subu       $v1, $v1, $v0
/* 4B9A4EC 80078FBC 9171010C */  jal        rand
/* 4B9A4F0 80078FC0 1400A3AF */   sw        $v1, 0x14($sp)
/* 4B9A4F4 80078FC4 01000424 */  addiu      $a0, $zero, 0x1
/* 4B9A4F8 80078FC8 02000524 */  addiu      $a1, $zero, 0x2
/* 4B9A4FC 80078FCC 1000A627 */  addiu      $a2, $sp, 0x10
/* 4B9A500 80078FD0 21380000 */  addu       $a3, $zero, $zero
/* 4B9A504 80078FD4 FF014230 */  andi       $v0, $v0, 0x1FF
/* 4B9A508 80078FD8 1800A38F */  lw         $v1, 0x18($sp)
/* 4B9A50C 80078FDC 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 4B9A510 80078FE0 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 4B9A514 80078FE4 21186200 */  addu       $v1, $v1, $v0
/* 4B9A518 80078FE8 09F80001 */  jalr       $t0
/* 4B9A51C 80078FEC 1800A3AF */   sw        $v1, 0x18($sp)
/* 4B9A520 80078FF0 04000424 */  addiu      $a0, $zero, 0x4
/* 4B9A524 80078FF4 46000524 */  addiu      $a1, $zero, 0x46
/* 4B9A528 80078FF8 1000A627 */  addiu      $a2, $sp, 0x10
/* 4B9A52C 80078FFC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4B9A530 80079000 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4B9A534 80079004 00000000 */  nop
/* 4B9A538 80079008 09F84000 */  jalr       $v0
/* 4B9A53C 8007900C 18000724 */   addiu     $a3, $zero, 0x18
/* 4B9A540 80079010 0400222A */  slti       $v0, $s1, 0x4
/* 4B9A544 80079014 DAFF4014 */  bnez       $v0, .Llevel_16_80078F80
/* 4B9A548 80079018 21206002 */   addu      $a0, $s3, $zero
/* 4B9A54C 8007901C 21280000 */  addu       $a1, $zero, $zero
/* 4B9A550 80079020 AFEE000C */  jal        func_8003BABC
/* 4B9A554 80079024 21300000 */   addu      $a2, $zero, $zero
/* 4B9A558 80079028 80EE000C */  jal        func_8003BA00
/* 4B9A55C 8007902C 21206002 */   addu      $a0, $s3, $zero
/* 4B9A560 80079030 0780023C */  lui        $v0, %hi(D_8006C550)
/* 4B9A564 80079034 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 4B9A568 80079038 21206002 */  addu       $a0, $s3, $zero
/* 4B9A56C 8007903C 23288200 */  subu       $a1, $a0, $v0
/* 4B9A570 80079040 40110500 */  sll        $v0, $a1, 5
/* 4B9A574 80079044 23104500 */  subu       $v0, $v0, $a1
/* 4B9A578 80079048 40110200 */  sll        $v0, $v0, 5
/* 4B9A57C 8007904C 21104500 */  addu       $v0, $v0, $a1
/* 4B9A580 80079050 C0180200 */  sll        $v1, $v0, 3
/* 4B9A584 80079054 21104300 */  addu       $v0, $v0, $v1
/* 4B9A588 80079058 C01B0200 */  sll        $v1, $v0, 15
/* 4B9A58C 8007905C 23186200 */  subu       $v1, $v1, $v0
/* 4B9A590 80079060 80180300 */  sll        $v1, $v1, 2
/* 4B9A594 80079064 21186500 */  addu       $v1, $v1, $a1
/* 4B9A598 80079068 23180300 */  negu       $v1, $v1
/* 4B9A59C 8007906C C3180300 */  sra        $v1, $v1, 3
/* 4B9A5A0 80079070 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 4B9A5A4 80079074 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 4B9A5A8 80079078 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 4B9A5AC 8007907C B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 4B9A5B0 80079080 21186200 */  addu       $v1, $v1, $v0
/* 4B9A5B4 80079084 43310300 */  sra        $a2, $v1, 5
/* 4B9A5B8 80079088 80300600 */  sll        $a2, $a2, 2
/* 4B9A5BC 8007908C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 4B9A5C0 80079090 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 4B9A5C4 80079094 1F006330 */  andi       $v1, $v1, 0x1F
/* 4B9A5C8 80079098 40110200 */  sll        $v0, $v0, 5
/* 4B9A5CC 8007909C 21104500 */  addu       $v0, $v0, $a1
/* 4B9A5D0 800790A0 2130C200 */  addu       $a2, $a2, $v0
/* 4B9A5D4 800790A4 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9A5D8 800790A8 0000C58C */  lw         $a1, 0x0($a2)
/* 4B9A5DC 800790AC 04106200 */  sllv       $v0, $v0, $v1
/* 4B9A5E0 800790B0 2528A200 */  or         $a1, $a1, $v0
/* 4B9A5E4 800790B4 C656010C */  jal        func_80055B18
/* 4B9A5E8 800790B8 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_16_800790BC:
/* 4B9A5EC 800790BC 3000BF8F */  lw         $ra, 0x30($sp)
/* 4B9A5F0 800790C0 2C00B38F */  lw         $s3, 0x2C($sp)
/* 4B9A5F4 800790C4 2800B28F */  lw         $s2, 0x28($sp)
/* 4B9A5F8 800790C8 2400B18F */  lw         $s1, 0x24($sp)
/* 4B9A5FC 800790CC 2000B08F */  lw         $s0, 0x20($sp)
/* 4B9A600 800790D0 3800BD27 */  addiu      $sp, $sp, 0x38
/* 4B9A604 800790D4 0800E003 */  jr         $ra
/* 4B9A608 800790D8 00000000 */   nop
.size func_level_16_80078D74, . - func_level_16_80078D74
