.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002B31C
/* 1BB1C 8002B31C 0780023C */  lui        $v0, %hi(D_800720AC)
/* 1BB20 8002B320 AC20428C */  lw         $v0, %lo(D_800720AC)($v0)
/* 1BB24 8002B324 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 1BB28 8002B328 2400B3AF */  sw         $s3, 0x24($sp)
/* 1BB2C 8002B32C 21988000 */  addu       $s3, $a0, $zero
/* 1BB30 8002B330 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 1BB34 8002B334 21A8A000 */  addu       $s5, $a1, $zero
/* 1BB38 8002B338 3400BFAF */  sw         $ra, 0x34($sp)
/* 1BB3C 8002B33C 3000B6AF */  sw         $s6, 0x30($sp)
/* 1BB40 8002B340 2800B4AF */  sw         $s4, 0x28($sp)
/* 1BB44 8002B344 2000B2AF */  sw         $s2, 0x20($sp)
/* 1BB48 8002B348 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1BB4C 8002B34C 1800B0AF */  sw         $s0, 0x18($sp)
/* 1BB50 8002B350 0000638E */  lw         $v1, 0x0($s3)
/* 1BB54 8002B354 21B06202 */  addu       $s6, $s3, $v0
/* 1BB58 8002B358 21106302 */  addu       $v0, $s3, $v1
/* 1BB5C 8002B35C 0000468C */  lw         $a2, 0x0($v0)
/* 1BB60 8002B360 0400478C */  lw         $a3, 0x4($v0)
/* 1BB64 8002B364 0800438C */  lw         $v1, 0x8($v0)
/* 1BB68 8002B368 0C00458C */  lw         $a1, 0xC($v0)
/* 1BB6C 8002B36C 0D006010 */  beqz       $v1, .L8002B3A4
/* 1BB70 8002B370 00000000 */   nop
/* 1BB74 8002B374 0B00A010 */  beqz       $a1, .L8002B3A4
/* 1BB78 8002B378 1000A427 */   addiu     $a0, $sp, 0x10
/* 1BB7C 8002B37C 1000508C */  lw         $s0, 0x10($v0)
/* 1BB80 8002B380 1000A6A7 */  sh         $a2, 0x10($sp)
/* 1BB84 8002B384 1200A7A7 */  sh         $a3, 0x12($sp)
/* 1BB88 8002B388 1400A3A7 */  sh         $v1, 0x14($sp)
/* 1BB8C 8002B38C 1600A5A7 */  sh         $a1, 0x16($sp)
/* 1BB90 8002B390 10001026 */  addiu      $s0, $s0, 0x10
/* 1BB94 8002B394 21805000 */  addu       $s0, $v0, $s0
/* 1BB98 8002B398 1E69010C */  jal        LoadImage
/* 1BB9C 8002B39C 21280002 */   addu      $a1, $s0, $zero
/* 1BBA0 8002B3A0 21B00002 */  addu       $s6, $s0, $zero
.L8002B3A4:
/* 1BBA4 8002B3A4 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 1BBA8 8002B3A8 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 1BBAC 8002B3AC 00000000 */  nop
/* 1BBB0 8002B3B0 5B004014 */  bnez       $v0, .L8002B520
/* 1BBB4 8002B3B4 00000000 */   nop
/* 1BBB8 8002B3B8 04006426 */  addiu      $a0, $s3, 0x4
/* 1BBBC 8002B3BC 0400628E */  lw         $v0, 0x4($s3)
/* 1BBC0 8002B3C0 21288000 */  addu       $a1, $a0, $zero
/* 1BBC4 8002B3C4 21208200 */  addu       $a0, $a0, $v0
/* 1BBC8 8002B3C8 09004228 */  slti       $v0, $v0, 0x9
/* 1BBCC 8002B3CC 0A004010 */  beqz       $v0, .L8002B3F8
/* 1BBD0 8002B3D0 0100023C */   lui       $v0, (0x18000 >> 16)
/* 1BBD4 8002B3D4 00804234 */  ori        $v0, $v0, (0x18000 & 0xFFFF)
/* 1BBD8 8002B3D8 0780013C */  lui        $at, %hi(D_8006D050)
/* 1BBDC 8002B3DC 50D025AC */  sw         $a1, %lo(D_8006D050)($at)
/* 1BBE0 8002B3E0 0780013C */  lui        $at, %hi(D_8006D074)
/* 1BBE4 8002B3E4 74D022AC */  sw         $v0, %lo(D_8006D074)($at)
/* 1BBE8 8002B3E8 0780013C */  lui        $at, %hi(D_8006D058)
/* 1BBEC 8002B3EC 58D020AC */  sw         $zero, %lo(D_8006D058)($at)
/* 1BBF0 8002B3F0 09AD0008 */  j          .L8002B424
/* 1BBF4 8002B3F4 21288000 */   addu      $a1, $a0, $zero
.L8002B3F8:
/* 1BBF8 8002B3F8 0200023C */  lui        $v0, (0x2C000 >> 16)
/* 1BBFC 8002B3FC 00C04234 */  ori        $v0, $v0, (0x2C000 & 0xFFFF)
/* 1BC00 8002B400 0780013C */  lui        $at, %hi(D_8006D074)
/* 1BC04 8002B404 74D022AC */  sw         $v0, %lo(D_8006D074)($at)
/* 1BC08 8002B408 08006226 */  addiu      $v0, $s3, 0x8
/* 1BC0C 8002B40C 0780013C */  lui        $at, %hi(D_8006D050)
/* 1BC10 8002B410 50D022AC */  sw         $v0, %lo(D_8006D050)($at)
/* 1BC14 8002B414 01000224 */  addiu      $v0, $zero, 0x1
/* 1BC18 8002B418 0780013C */  lui        $at, %hi(D_8006D058)
/* 1BC1C 8002B41C 58D022AC */  sw         $v0, %lo(D_8006D058)($at)
/* 1BC20 8002B420 21288000 */  addu       $a1, $a0, $zero
.L8002B424:
/* 1BC24 8002B424 0000838C */  lw         $v1, 0x0($a0)
/* 1BC28 8002B428 0000A28C */  lw         $v0, 0x0($a1)
/* 1BC2C 8002B42C 00000000 */  nop
/* 1BC30 8002B430 09004228 */  slti       $v0, $v0, 0x9
/* 1BC34 8002B434 06004010 */  beqz       $v0, .L8002B450
/* 1BC38 8002B438 21208300 */   addu      $a0, $a0, $v1
/* 1BC3C 8002B43C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1BC40 8002B440 0780013C */  lui        $at, %hi(D_8006D054)
/* 1BC44 8002B444 54D025AC */  sw         $a1, %lo(D_8006D054)($at)
/* 1BC48 8002B448 17AD0008 */  j          .L8002B45C
/* 1BC4C 8002B44C 0000A2AC */   sw        $v0, 0x0($a1)
.L8002B450:
/* 1BC50 8002B450 0400A224 */  addiu      $v0, $a1, 0x4
/* 1BC54 8002B454 0780013C */  lui        $at, %hi(D_8006D054)
/* 1BC58 8002B458 54D022AC */  sw         $v0, %lo(D_8006D054)($at)
.L8002B45C:
/* 1BC5C 8002B45C 0000838C */  lw         $v1, 0x0($a0)
/* 1BC60 8002B460 FEFF0224 */  addiu      $v0, $zero, -0x2
/* 1BC64 8002B464 2E006214 */  bne        $v1, $v0, .L8002B520
/* 1BC68 8002B468 00000000 */   nop
/* 1BC6C 8002B46C 08008424 */  addiu      $a0, $a0, 0x8
/* 1BC70 8002B470 0780013C */  lui        $at, %hi(D_8006D070)
/* 1BC74 8002B474 70D024AC */  sw         $a0, %lo(D_8006D070)($at)
/* 1BC78 8002B478 0780033C */  lui        $v1, %hi(D_8006D070)
/* 1BC7C 8002B47C 70D0638C */  lw         $v1, %lo(D_8006D070)($v1)
/* 1BC80 8002B480 00000000 */  nop
/* 1BC84 8002B484 0C00628C */  lw         $v0, 0xC($v1)
/* 1BC88 8002B488 00000000 */  nop
/* 1BC8C 8002B48C 21108200 */  addu       $v0, $a0, $v0
/* 1BC90 8002B490 0C0062AC */  sw         $v0, 0xC($v1)
/* 1BC94 8002B494 0780033C */  lui        $v1, %hi(D_8006D070)
/* 1BC98 8002B498 70D0638C */  lw         $v1, %lo(D_8006D070)($v1)
/* 1BC9C 8002B49C 00000000 */  nop
/* 1BCA0 8002B4A0 1000628C */  lw         $v0, 0x10($v1)
/* 1BCA4 8002B4A4 00000000 */  nop
/* 1BCA8 8002B4A8 21108200 */  addu       $v0, $a0, $v0
/* 1BCAC 8002B4AC 100062AC */  sw         $v0, 0x10($v1)
/* 1BCB0 8002B4B0 0780033C */  lui        $v1, %hi(D_8006D070)
/* 1BCB4 8002B4B4 70D0638C */  lw         $v1, %lo(D_8006D070)($v1)
/* 1BCB8 8002B4B8 00000000 */  nop
/* 1BCBC 8002B4BC 1400628C */  lw         $v0, 0x14($v1)
/* 1BCC0 8002B4C0 00000000 */  nop
/* 1BCC4 8002B4C4 21108200 */  addu       $v0, $a0, $v0
/* 1BCC8 8002B4C8 140062AC */  sw         $v0, 0x14($v1)
/* 1BCCC 8002B4CC 0780033C */  lui        $v1, %hi(D_8006D070)
/* 1BCD0 8002B4D0 70D0638C */  lw         $v1, %lo(D_8006D070)($v1)
/* 1BCD4 8002B4D4 00000000 */  nop
/* 1BCD8 8002B4D8 1800628C */  lw         $v0, 0x18($v1)
/* 1BCDC 8002B4DC 00000000 */  nop
/* 1BCE0 8002B4E0 21108200 */  addu       $v0, $a0, $v0
/* 1BCE4 8002B4E4 180062AC */  sw         $v0, 0x18($v1)
/* 1BCE8 8002B4E8 0780033C */  lui        $v1, %hi(D_8006D070)
/* 1BCEC 8002B4EC 70D0638C */  lw         $v1, %lo(D_8006D070)($v1)
/* 1BCF0 8002B4F0 00000000 */  nop
/* 1BCF4 8002B4F4 1C00628C */  lw         $v0, 0x1C($v1)
/* 1BCF8 8002B4F8 00000000 */  nop
/* 1BCFC 8002B4FC 21108200 */  addu       $v0, $a0, $v0
/* 1BD00 8002B500 1C0062AC */  sw         $v0, 0x1C($v1)
/* 1BD04 8002B504 0780033C */  lui        $v1, %hi(D_8006D070)
/* 1BD08 8002B508 70D0638C */  lw         $v1, %lo(D_8006D070)($v1)
/* 1BD0C 8002B50C 00000000 */  nop
/* 1BD10 8002B510 2000628C */  lw         $v0, 0x20($v1)
/* 1BD14 8002B514 00000000 */  nop
/* 1BD18 8002B518 21108200 */  addu       $v0, $a0, $v0
/* 1BD1C 8002B51C 200062AC */  sw         $v0, 0x20($v1)
.L8002B520:
/* 1BD20 8002B520 0780043C */  lui        $a0, %hi(D_80072138)
/* 1BD24 8002B524 3821848C */  lw         $a0, %lo(D_80072138)($a0)
/* 1BD28 8002B528 0780023C */  lui        $v0, %hi(D_800720A8)
/* 1BD2C 8002B52C A820428C */  lw         $v0, %lo(D_800720A8)($v0)
/* 1BD30 8002B530 2128A002 */  addu       $a1, $s5, $zero
/* 1BD34 8002B534 23208200 */  subu       $a0, $a0, $v0
/* 1BD38 8002B538 8DAB000C */  jal        func_8002AE34
/* 1BD3C 8002B53C 21206402 */   addu      $a0, $s3, $a0
/* 1BD40 8002B540 F5010424 */  addiu      $a0, $zero, 0x1F5
/* 1BD44 8002B544 0780033C */  lui        $v1, %hi(D_8006F600)
/* 1BD48 8002B548 00F66324 */  addiu      $v1, $v1, %lo(D_8006F600)
.L8002B54C:
/* 1BD4C 8002B54C 000060AC */  sw         $zero, 0x0($v1)
/* 1BD50 8002B550 01008424 */  addiu      $a0, $a0, 0x1
/* 1BD54 8002B554 FA018228 */  slti       $v0, $a0, 0x1FA
/* 1BD58 8002B558 FCFF4014 */  bnez       $v0, .L8002B54C
/* 1BD5C 8002B55C 04006324 */   addiu     $v1, $v1, 0x4
/* 1BD60 8002B560 0780023C */  lui        $v0, %hi(D_80072140)
/* 1BD64 8002B564 4021428C */  lw         $v0, %lo(D_80072140)($v0)
/* 1BD68 8002B568 0780043C */  lui        $a0, %hi(D_8007213C)
/* 1BD6C 8002B56C 3C218424 */  addiu      $a0, $a0, %lo(D_8007213C)
/* 1BD70 8002B570 13004018 */  blez       $v0, .L8002B5C0
/* 1BD74 8002B574 2110C002 */   addu      $v0, $s6, $zero
/* 1BD78 8002B578 FCFF9424 */  addiu      $s4, $a0, -0x4
/* 1BD7C 8002B57C 04009224 */  addiu      $s2, $a0, 0x4
/* 1BD80 8002B580 FE009124 */  addiu      $s1, $a0, 0xFE
/* 1BD84 8002B584 21808000 */  addu       $s0, $a0, $zero
.L8002B588:
/* 1BD88 8002B588 04005226 */  addiu      $s2, $s2, 0x4
/* 1BD8C 8002B58C 00002586 */  lh         $a1, 0x0($s1)
/* 1BD90 8002B590 02003126 */  addiu      $s1, $s1, 0x2
/* 1BD94 8002B594 0000048E */  lw         $a0, 0x0($s0)
/* 1BD98 8002B598 70FF828E */  lw         $v0, -0x90($s4)
/* 1BD9C 8002B59C 2130A002 */  addu       $a2, $s5, $zero
/* 1BDA0 8002B5A0 23208200 */  subu       $a0, $a0, $v0
/* 1BDA4 8002B5A4 E7AB000C */  jal        func_8002AF9C
/* 1BDA8 8002B5A8 21206402 */   addu      $a0, $s3, $a0
/* 1BDAC 8002B5AC 0000428E */  lw         $v0, 0x0($s2)
/* 1BDB0 8002B5B0 00000000 */  nop
/* 1BDB4 8002B5B4 F4FF401C */  bgtz       $v0, .L8002B588
/* 1BDB8 8002B5B8 04001026 */   addiu     $s0, $s0, 0x4
/* 1BDBC 8002B5BC 2110C002 */  addu       $v0, $s6, $zero
.L8002B5C0:
/* 1BDC0 8002B5C0 3400BF8F */  lw         $ra, 0x34($sp)
/* 1BDC4 8002B5C4 3000B68F */  lw         $s6, 0x30($sp)
/* 1BDC8 8002B5C8 2C00B58F */  lw         $s5, 0x2C($sp)
/* 1BDCC 8002B5CC 2800B48F */  lw         $s4, 0x28($sp)
/* 1BDD0 8002B5D0 2400B38F */  lw         $s3, 0x24($sp)
/* 1BDD4 8002B5D4 2000B28F */  lw         $s2, 0x20($sp)
/* 1BDD8 8002B5D8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1BDDC 8002B5DC 1800B08F */  lw         $s0, 0x18($sp)
/* 1BDE0 8002B5E0 3800BD27 */  addiu      $sp, $sp, 0x38
/* 1BDE4 8002B5E4 0800E003 */  jr         $ra
/* 1BDE8 8002B5E8 00000000 */   nop
.size func_8002B31C, . - func_8002B31C
