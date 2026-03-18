.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007B2E0
/* 5DF6010 8007B2E0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5DF6014 8007B2E4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 5DF6018 8007B2E8 21988000 */  addu       $s3, $a0, $zero
/* 5DF601C 8007B2EC 3000BFAF */  sw         $ra, 0x30($sp)
/* 5DF6020 8007B2F0 2800B2AF */  sw         $s2, 0x28($sp)
/* 5DF6024 8007B2F4 2400B1AF */  sw         $s1, 0x24($sp)
/* 5DF6028 8007B2F8 2000B0AF */  sw         $s0, 0x20($sp)
/* 5DF602C 8007B2FC 0000728E */  lw         $s2, 0x0($s3)
/* 5DF6030 8007B300 00000000 */  nop
/* 5DF6034 8007B304 0000428E */  lw         $v0, 0x0($s2)
/* 5DF6038 8007B308 00000000 */  nop
/* 5DF603C 8007B30C 13004014 */  bnez       $v0, .Llevel_24_8007B35C
/* 5DF6040 8007B310 D3000424 */   addiu     $a0, $zero, 0xD3
/* 5DF6044 8007B314 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF6048 8007B318 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF604C 8007B31C 00000000 */  nop
/* 5DF6050 8007B320 09F84000 */  jalr       $v0
/* 5DF6054 8007B324 21286002 */   addu      $a1, $s3, $zero
/* 5DF6058 8007B328 21184000 */  addu       $v1, $v0, $zero
/* 5DF605C 8007B32C 0B006010 */  beqz       $v1, .Llevel_24_8007B35C
/* 5DF6060 8007B330 000043AE */   sw        $v1, 0x0($s2)
/* 5DF6064 8007B334 1400628E */  lw         $v0, 0x14($s3)
/* 5DF6068 8007B338 00000000 */  nop
/* 5DF606C 8007B33C E0004224 */  addiu      $v0, $v0, 0xE0
/* 5DF6070 8007B340 140062AC */  sw         $v0, 0x14($v1)
/* 5DF6074 8007B344 0000438E */  lw         $v1, 0x0($s2)
/* 5DF6078 8007B348 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF607C 8007B34C 480062A0 */  sb         $v0, 0x48($v1)
/* 5DF6080 8007B350 0000428E */  lw         $v0, 0x0($s2)
/* 5DF6084 8007B354 00000000 */  nop
/* 5DF6088 8007B358 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_24_8007B35C:
/* 5DF608C 8007B35C 4D006292 */  lbu        $v0, 0x4D($s3)
/* 5DF6090 8007B360 00000000 */  nop
/* 5DF6094 8007B364 33004010 */  beqz       $v0, .Llevel_24_8007B434
/* 5DF6098 8007B368 00000000 */   nop
/* 5DF609C 8007B36C 0400438E */  lw         $v1, 0x4($s2)
/* 5DF60A0 8007B370 00000000 */  nop
/* 5DF60A4 8007B374 90016228 */  slti       $v0, $v1, 0x190
/* 5DF60A8 8007B378 07004010 */  beqz       $v0, .Llevel_24_8007B398
/* 5DF60AC 8007B37C 00000000 */   nop
/* 5DF60B0 8007B380 0780023C */  lui        $v0, %hi(D_8006C648)
/* 5DF60B4 8007B384 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 5DF60B8 8007B388 00000000 */  nop
/* 5DF60BC 8007B38C 21106200 */  addu       $v0, $v1, $v0
/* 5DF60C0 8007B390 0DED0108 */  j          .Llevel_24_8007B434
/* 5DF60C4 8007B394 040042AE */   sw        $v0, 0x4($s2)
.Llevel_24_8007B398:
/* 5DF60C8 8007B398 10BC000C */  jal        func_8002F040
/* 5DF60CC 8007B39C 05000424 */   addiu     $a0, $zero, 0x5
/* 5DF60D0 8007B3A0 21884000 */  addu       $s1, $v0, $zero
/* 5DF60D4 8007B3A4 1C002012 */  beqz       $s1, .Llevel_24_8007B418
/* 5DF60D8 8007B3A8 00000000 */   nop
/* 5DF60DC 8007B3AC 9171010C */  jal        rand
/* 5DF60E0 8007B3B0 00000000 */   nop
/* 5DF60E4 8007B3B4 21202002 */  addu       $a0, $s1, $zero
/* 5DF60E8 8007B3B8 0C006526 */  addiu      $a1, $s3, 0xC
/* 5DF60EC 8007B3BC 5E3C010C */  jal        func_8004F178
/* 5DF60F0 8007B3C0 21804000 */   addu      $s0, $v0, $zero
/* 5DF60F4 8007B3C4 FF001032 */  andi       $s0, $s0, 0xFF
/* 5DF60F8 8007B3C8 40801000 */  sll        $s0, $s0, 1
/* 5DF60FC 8007B3CC 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF6100 8007B3D0 21083000 */  addu       $at, $at, $s0
/* 5DF6104 8007B3D4 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 5DF6108 8007B3D8 0000238E */  lw         $v1, 0x0($s1)
/* 5DF610C 8007B3DC 00140200 */  sll        $v0, $v0, 16
/* 5DF6110 8007B3E0 03150200 */  sra        $v0, $v0, 20
/* 5DF6114 8007B3E4 21186200 */  addu       $v1, $v1, $v0
/* 5DF6118 8007B3E8 0800228E */  lw         $v0, 0x8($s1)
/* 5DF611C 8007B3EC 000023AE */  sw         $v1, 0x0($s1)
/* 5DF6120 8007B3F0 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF6124 8007B3F4 21083000 */  addu       $at, $at, $s0
/* 5DF6128 8007B3F8 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 5DF612C 8007B3FC 80014224 */  addiu      $v0, $v0, 0x180
/* 5DF6130 8007B400 001C0300 */  sll        $v1, $v1, 16
/* 5DF6134 8007B404 080022AE */  sw         $v0, 0x8($s1)
/* 5DF6138 8007B408 0400228E */  lw         $v0, 0x4($s1)
/* 5DF613C 8007B40C 031D0300 */  sra        $v1, $v1, 20
/* 5DF6140 8007B410 21104300 */  addu       $v0, $v0, $v1
/* 5DF6144 8007B414 040022AE */  sw         $v0, 0x4($s1)
.Llevel_24_8007B418:
/* 5DF6148 8007B418 9171010C */  jal        rand
/* 5DF614C 8007B41C 00000000 */   nop
/* 5DF6150 8007B420 0400438E */  lw         $v1, 0x4($s2)
/* 5DF6154 8007B424 FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF6158 8007B428 80FF6324 */  addiu      $v1, $v1, -0x80
/* 5DF615C 8007B42C 23186200 */  subu       $v1, $v1, $v0
/* 5DF6160 8007B430 040043AE */  sw         $v1, 0x4($s2)
.Llevel_24_8007B434:
/* 5DF6164 8007B434 1800628E */  lw         $v0, 0x18($s3)
/* 5DF6168 8007B438 00000000 */  nop
/* 5DF616C 8007B43C 7A004010 */  beqz       $v0, .Llevel_24_8007B628
/* 5DF6170 8007B440 00000000 */   nop
/* 5DF6174 8007B444 0000428E */  lw         $v0, 0x0($s2)
/* 5DF6178 8007B448 00000000 */  nop
/* 5DF617C 8007B44C 05004010 */  beqz       $v0, .Llevel_24_8007B464
/* 5DF6180 8007B450 00000000 */   nop
/* 5DF6184 8007B454 480040A0 */  sb         $zero, 0x48($v0)
/* 5DF6188 8007B458 0000438E */  lw         $v1, 0x0($s2)
/* 5DF618C 8007B45C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 5DF6190 8007B460 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_24_8007B464:
/* 5DF6194 8007B464 70000224 */  addiu      $v0, $zero, 0x70
/* 5DF6198 8007B468 490062A2 */  sb         $v0, 0x49($s3)
/* 5DF619C 8007B46C 21880000 */  addu       $s1, $zero, $zero
/* 5DF61A0 8007B470 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 5DF61A4 8007B474 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_24_8007B478:
/* 5DF61A8 8007B478 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5DF61AC 8007B47C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5DF61B0 8007B480 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5DF61B4 8007B484 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5DF61B8 8007B488 00000000 */  nop
/* 5DF61BC 8007B48C 23104300 */  subu       $v0, $v0, $v1
/* 5DF61C0 8007B490 15004228 */  slti       $v0, $v0, 0x15
/* 5DF61C4 8007B494 14004014 */  bnez       $v0, .Llevel_24_8007B4E8
/* 5DF61C8 8007B498 38020424 */   addiu     $a0, $zero, 0x238
/* 5DF61CC 8007B49C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF61D0 8007B4A0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF61D4 8007B4A4 00000000 */  nop
/* 5DF61D8 8007B4A8 09F84000 */  jalr       $v0
/* 5DF61DC 8007B4AC 21286002 */   addu      $a1, $s3, $zero
/* 5DF61E0 8007B4B0 9171010C */  jal        rand
/* 5DF61E4 8007B4B4 21804000 */   addu      $s0, $v0, $zero
/* 5DF61E8 8007B4B8 18005200 */  mult       $v0, $s2
/* 5DF61EC 8007B4BC 01003126 */  addiu      $s1, $s1, 0x1
/* 5DF61F0 8007B4C0 C3270200 */  sra        $a0, $v0, 31
/* 5DF61F4 8007B4C4 10480000 */  mfhi       $t1
/* 5DF61F8 8007B4C8 23202401 */  subu       $a0, $t1, $a0
/* 5DF61FC 8007B4CC 40180400 */  sll        $v1, $a0, 1
/* 5DF6200 8007B4D0 21186400 */  addu       $v1, $v1, $a0
/* 5DF6204 8007B4D4 23104300 */  subu       $v0, $v0, $v1
/* 5DF6208 8007B4D8 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 5DF620C 8007B4DC 1000222A */  slti       $v0, $s1, 0x10
/* 5DF6210 8007B4E0 E5FF4014 */  bnez       $v0, .Llevel_24_8007B478
/* 5DF6214 8007B4E4 00000000 */   nop
.Llevel_24_8007B4E8:
/* 5DF6218 8007B4E8 21880000 */  addu       $s1, $zero, $zero
.Llevel_24_8007B4EC:
/* 5DF621C 8007B4EC 1000A427 */  addiu      $a0, $sp, 0x10
/* 5DF6220 8007B4F0 5E3C010C */  jal        func_8004F178
/* 5DF6224 8007B4F4 0C006526 */   addiu     $a1, $s3, 0xC
/* 5DF6228 8007B4F8 9171010C */  jal        rand
/* 5DF622C 8007B4FC 01003126 */   addiu     $s1, $s1, 0x1
/* 5DF6230 8007B500 1000A38F */  lw         $v1, 0x10($sp)
/* 5DF6234 8007B504 FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF6238 8007B508 00016324 */  addiu      $v1, $v1, 0x100
/* 5DF623C 8007B50C 23186200 */  subu       $v1, $v1, $v0
/* 5DF6240 8007B510 9171010C */  jal        rand
/* 5DF6244 8007B514 1000A3AF */   sw        $v1, 0x10($sp)
/* 5DF6248 8007B518 1400A38F */  lw         $v1, 0x14($sp)
/* 5DF624C 8007B51C FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF6250 8007B520 00016324 */  addiu      $v1, $v1, 0x100
/* 5DF6254 8007B524 23186200 */  subu       $v1, $v1, $v0
/* 5DF6258 8007B528 9171010C */  jal        rand
/* 5DF625C 8007B52C 1400A3AF */   sw        $v1, 0x14($sp)
/* 5DF6260 8007B530 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF6264 8007B534 02000524 */  addiu      $a1, $zero, 0x2
/* 5DF6268 8007B538 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF626C 8007B53C 21380000 */  addu       $a3, $zero, $zero
/* 5DF6270 8007B540 FF014230 */  andi       $v0, $v0, 0x1FF
/* 5DF6274 8007B544 1800A38F */  lw         $v1, 0x18($sp)
/* 5DF6278 8007B548 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 5DF627C 8007B54C E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 5DF6280 8007B550 21186200 */  addu       $v1, $v1, $v0
/* 5DF6284 8007B554 09F80001 */  jalr       $t0
/* 5DF6288 8007B558 1800A3AF */   sw        $v1, 0x18($sp)
/* 5DF628C 8007B55C 04000424 */  addiu      $a0, $zero, 0x4
/* 5DF6290 8007B560 46000524 */  addiu      $a1, $zero, 0x46
/* 5DF6294 8007B564 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF6298 8007B568 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF629C 8007B56C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF62A0 8007B570 00000000 */  nop
/* 5DF62A4 8007B574 09F84000 */  jalr       $v0
/* 5DF62A8 8007B578 18000724 */   addiu     $a3, $zero, 0x18
/* 5DF62AC 8007B57C 0400222A */  slti       $v0, $s1, 0x4
/* 5DF62B0 8007B580 DAFF4014 */  bnez       $v0, .Llevel_24_8007B4EC
/* 5DF62B4 8007B584 21206002 */   addu      $a0, $s3, $zero
/* 5DF62B8 8007B588 21280000 */  addu       $a1, $zero, $zero
/* 5DF62BC 8007B58C AFEE000C */  jal        func_8003BABC
/* 5DF62C0 8007B590 21300000 */   addu      $a2, $zero, $zero
/* 5DF62C4 8007B594 80EE000C */  jal        func_8003BA00
/* 5DF62C8 8007B598 21206002 */   addu      $a0, $s3, $zero
/* 5DF62CC 8007B59C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5DF62D0 8007B5A0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5DF62D4 8007B5A4 21206002 */  addu       $a0, $s3, $zero
/* 5DF62D8 8007B5A8 23288200 */  subu       $a1, $a0, $v0
/* 5DF62DC 8007B5AC 40110500 */  sll        $v0, $a1, 5
/* 5DF62E0 8007B5B0 23104500 */  subu       $v0, $v0, $a1
/* 5DF62E4 8007B5B4 40110200 */  sll        $v0, $v0, 5
/* 5DF62E8 8007B5B8 21104500 */  addu       $v0, $v0, $a1
/* 5DF62EC 8007B5BC C0180200 */  sll        $v1, $v0, 3
/* 5DF62F0 8007B5C0 21104300 */  addu       $v0, $v0, $v1
/* 5DF62F4 8007B5C4 C01B0200 */  sll        $v1, $v0, 15
/* 5DF62F8 8007B5C8 23186200 */  subu       $v1, $v1, $v0
/* 5DF62FC 8007B5CC 80180300 */  sll        $v1, $v1, 2
/* 5DF6300 8007B5D0 21186500 */  addu       $v1, $v1, $a1
/* 5DF6304 8007B5D4 23180300 */  negu       $v1, $v1
/* 5DF6308 8007B5D8 C3180300 */  sra        $v1, $v1, 3
/* 5DF630C 8007B5DC 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 5DF6310 8007B5E0 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 5DF6314 8007B5E4 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 5DF6318 8007B5E8 B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 5DF631C 8007B5EC 21186200 */  addu       $v1, $v1, $v0
/* 5DF6320 8007B5F0 43310300 */  sra        $a2, $v1, 5
/* 5DF6324 8007B5F4 80300600 */  sll        $a2, $a2, 2
/* 5DF6328 8007B5F8 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5DF632C 8007B5FC 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5DF6330 8007B600 1F006330 */  andi       $v1, $v1, 0x1F
/* 5DF6334 8007B604 40110200 */  sll        $v0, $v0, 5
/* 5DF6338 8007B608 21104500 */  addu       $v0, $v0, $a1
/* 5DF633C 8007B60C 2130C200 */  addu       $a2, $a2, $v0
/* 5DF6340 8007B610 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF6344 8007B614 0000C58C */  lw         $a1, 0x0($a2)
/* 5DF6348 8007B618 04106200 */  sllv       $v0, $v0, $v1
/* 5DF634C 8007B61C 2528A200 */  or         $a1, $a1, $v0
/* 5DF6350 8007B620 C656010C */  jal        func_80055B18
/* 5DF6354 8007B624 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_24_8007B628:
/* 5DF6358 8007B628 3000BF8F */  lw         $ra, 0x30($sp)
/* 5DF635C 8007B62C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 5DF6360 8007B630 2800B28F */  lw         $s2, 0x28($sp)
/* 5DF6364 8007B634 2400B18F */  lw         $s1, 0x24($sp)
/* 5DF6368 8007B638 2000B08F */  lw         $s0, 0x20($sp)
/* 5DF636C 8007B63C 3800BD27 */  addiu      $sp, $sp, 0x38
/* 5DF6370 8007B640 0800E003 */  jr         $ra
/* 5DF6374 8007B644 00000000 */   nop
.size func_level_24_8007B2E0, . - func_level_24_8007B2E0
