.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlaySound
/* 2C350 8003BB50 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2C354 8003BB54 1800B2AF */  sw         $s2, 0x18($sp)
/* 2C358 8003BB58 21908000 */  addu       $s2, $a0, $zero
/* 2C35C 8003BB5C 2000B4AF */  sw         $s4, 0x20($sp)
/* 2C360 8003BB60 21A0A000 */  addu       $s4, $a1, $zero
/* 2C364 8003BB64 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2C368 8003BB68 2198C000 */  addu       $s3, $a2, $zero
/* 2C36C 8003BB6C FF000224 */  addiu      $v0, $zero, 0xFF
/* 2C370 8003BB70 2400BFAF */  sw         $ra, 0x24($sp)
/* 2C374 8003BB74 1400B1AF */  sw         $s1, 0x14($sp)
/* 2C378 8003BB78 4E004212 */  beq        $s2, $v0, .L8003BCB4
/* 2C37C 8003BB7C 1000B0AF */   sw        $s0, 0x10($sp)
/* 2C380 8003BB80 80101200 */  sll        $v0, $s2, 2
/* 2C384 8003BB84 21105200 */  addu       $v0, $v0, $s2
/* 2C388 8003BB88 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 2C38C 8003BB8C A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 2C390 8003BB90 80100200 */  sll        $v0, $v0, 2
/* 2C394 8003BB94 21104300 */  addu       $v0, $v0, $v1
/* 2C398 8003BB98 10004290 */  lbu        $v0, 0x10($v0)
/* 2C39C 8003BB9C 00000000 */  nop
/* 2C3A0 8003BBA0 03004010 */  beqz       $v0, .L8003BBB0
/* 2C3A4 8003BBA4 04006232 */   andi      $v0, $s3, 0x4
/* 2C3A8 8003BBA8 A8004010 */  beqz       $v0, .L8003BE4C
/* 2C3AC 8003BBAC FFFF0224 */   addiu     $v0, $zero, -0x1
.L8003BBB0:
/* 2C3B0 8003BBB0 0780023C */  lui        $v0, %hi(D_8006C3F8)
/* 2C3B4 8003BBB4 F8C3428C */  lw         $v0, %lo(D_8006C3F8)($v0)
/* 2C3B8 8003BBB8 00000000 */  nop
/* 2C3BC 8003BBBC A3004010 */  beqz       $v0, .L8003BE4C
/* 2C3C0 8003BBC0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2C3C4 8003BBC4 0780023C */  lui        $v0, %hi(D_8006C630)
/* 2C3C8 8003BBC8 30C6428C */  lw         $v0, %lo(D_8006C630)($v0)
/* 2C3CC 8003BBCC 00000000 */  nop
/* 2C3D0 8003BBD0 03004010 */  beqz       $v0, .L8003BBE0
/* 2C3D4 8003BBD4 40006232 */   andi      $v0, $s3, 0x40
/* 2C3D8 8003BBD8 9C004010 */  beqz       $v0, .L8003BE4C
/* 2C3DC 8003BBDC FFFF0224 */   addiu     $v0, $zero, -0x1
.L8003BBE0:
/* 2C3E0 8003BBE0 01006232 */  andi       $v0, $s3, 0x1
/* 2C3E4 8003BBE4 08004014 */  bnez       $v0, .L8003BC08
/* 2C3E8 8003BBE8 21800000 */   addu      $s0, $zero, $zero
/* 2C3EC 8003BBEC 06008012 */  beqz       $s4, .L8003BC08
/* 2C3F0 8003BBF0 21204002 */   addu      $a0, $s2, $zero
/* 2C3F4 8003BBF4 65F2000C */  jal        func_8003C994
/* 2C3F8 8003BBF8 0C008526 */   addiu     $a1, $s4, 0xC
/* 2C3FC 8003BBFC 93004010 */  beqz       $v0, .L8003BE4C
/* 2C400 8003BC00 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2C404 8003BC04 21800000 */  addu       $s0, $zero, $zero
.L8003BC08:
/* 2C408 8003BC08 21180000 */  addu       $v1, $zero, $zero
.L8003BC0C:
/* 2C40C 8003BC0C 0780013C */  lui        $at, %hi(D_8006FCE4)
/* 2C410 8003BC10 21082300 */  addu       $at, $at, $v1
/* 2C414 8003BC14 E4FC2290 */  lbu        $v0, %lo(D_8006FCE4)($at)
/* 2C418 8003BC18 00000000 */  nop
/* 2C41C 8003BC1C 06004010 */  beqz       $v0, .L8003BC38
/* 2C420 8003BC20 18000224 */   addiu     $v0, $zero, 0x18
/* 2C424 8003BC24 01001026 */  addiu      $s0, $s0, 0x1
/* 2C428 8003BC28 1800022A */  slti       $v0, $s0, 0x18
/* 2C42C 8003BC2C F7FF4014 */  bnez       $v0, .L8003BC0C
/* 2C430 8003BC30 2C006324 */   addiu     $v1, $v1, 0x2C
/* 2C434 8003BC34 18000224 */  addiu      $v0, $zero, 0x18
.L8003BC38:
/* 2C438 8003BC38 21000216 */  bne        $s0, $v0, .L8003BCC0
/* 2C43C 8003BC3C 40101000 */   sll       $v0, $s0, 1
/* 2C440 8003BC40 FE000524 */  addiu      $a1, $zero, 0xFE
/* 2C444 8003BC44 FFFF0624 */  addiu      $a2, $zero, -0x1
/* 2C448 8003BC48 21800000 */  addu       $s0, $zero, $zero
/* 2C44C 8003BC4C 21200000 */  addu       $a0, $zero, $zero
.L8003BC50:
/* 2C450 8003BC50 0780013C */  lui        $at, %hi(D_8006FCE8)
/* 2C454 8003BC54 21082400 */  addu       $at, $at, $a0
/* 2C458 8003BC58 E8FC238C */  lw         $v1, %lo(D_8006FCE8)($at)
/* 2C45C 8003BC5C 00000000 */  nop
/* 2C460 8003BC60 2A106500 */  slt        $v0, $v1, $a1
/* 2C464 8003BC64 03004010 */  beqz       $v0, .L8003BC74
/* 2C468 8003BC68 00000000 */   nop
/* 2C46C 8003BC6C 21286000 */  addu       $a1, $v1, $zero
/* 2C470 8003BC70 21300002 */  addu       $a2, $s0, $zero
.L8003BC74:
/* 2C474 8003BC74 01001026 */  addiu      $s0, $s0, 0x1
/* 2C478 8003BC78 1800022A */  slti       $v0, $s0, 0x18
/* 2C47C 8003BC7C F4FF4014 */  bnez       $v0, .L8003BC50
/* 2C480 8003BC80 2C008424 */   addiu     $a0, $a0, 0x2C
/* 2C484 8003BC84 0B00C004 */  bltz       $a2, .L8003BCB4
/* 2C488 8003BC88 80101200 */   sll       $v0, $s2, 2
/* 2C48C 8003BC8C 21105200 */  addu       $v0, $v0, $s2
/* 2C490 8003BC90 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 2C494 8003BC94 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 2C498 8003BC98 80100200 */  sll        $v0, $v0, 2
/* 2C49C 8003BC9C 21104300 */  addu       $v0, $v0, $v1
/* 2C4A0 8003BCA0 11004290 */  lbu        $v0, 0x11($v0)
/* 2C4A4 8003BCA4 00000000 */  nop
/* 2C4A8 8003BCA8 2A10A200 */  slt        $v0, $a1, $v0
/* 2C4AC 8003BCAC 03004014 */  bnez       $v0, .L8003BCBC
/* 2C4B0 8003BCB0 2180C000 */   addu      $s0, $a2, $zero
.L8003BCB4:
/* 2C4B4 8003BCB4 93EF0008 */  j          .L8003BE4C
/* 2C4B8 8003BCB8 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8003BCBC:
/* 2C4BC 8003BCBC 40101000 */  sll        $v0, $s0, 1
.L8003BCC0:
/* 2C4C0 8003BCC0 21105000 */  addu       $v0, $v0, $s0
/* 2C4C4 8003BCC4 80100200 */  sll        $v0, $v0, 2
/* 2C4C8 8003BCC8 23105000 */  subu       $v0, $v0, $s0
/* 2C4CC 8003BCCC 80880200 */  sll        $s1, $v0, 2
/* 2C4D0 8003BCD0 01000224 */  addiu      $v0, $zero, 0x1
/* 2C4D4 8003BCD4 80201200 */  sll        $a0, $s2, 2
/* 2C4D8 8003BCD8 21209200 */  addu       $a0, $a0, $s2
/* 2C4DC 8003BCDC 80200400 */  sll        $a0, $a0, 2
/* 2C4E0 8003BCE0 0780013C */  lui        $at, %hi(D_8006FCE4)
/* 2C4E4 8003BCE4 21083100 */  addu       $at, $at, $s1
/* 2C4E8 8003BCE8 E4FC22A0 */  sb         $v0, %lo(D_8006FCE4)($at)
/* 2C4EC 8003BCEC 0780013C */  lui        $at, %hi(D_8006FCE5)
/* 2C4F0 8003BCF0 21083100 */  addu       $at, $at, $s1
/* 2C4F4 8003BCF4 E5FC32A0 */  sb         $s2, %lo(D_8006FCE5)($at)
/* 2C4F8 8003BCF8 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2C4FC 8003BCFC 21083100 */  addu       $at, $at, $s1
/* 2C500 8003BD00 E6FC33A0 */  sb         $s3, %lo(D_8006FCE6)($at)
/* 2C504 8003BD04 0780053C */  lui        $a1, %hi(D_8006C6A0)
/* 2C508 8003BD08 A0C6A58C */  lw         $a1, %lo(D_8006C6A0)($a1)
/* 2C50C 8003BD0C 0780073C */  lui        $a3, %hi(D_8006C3F8)
/* 2C510 8003BD10 F8C3E78C */  lw         $a3, %lo(D_8006C3F8)($a3)
/* 2C514 8003BD14 21288500 */  addu       $a1, $a0, $a1
/* 2C518 8003BD18 0600A394 */  lhu        $v1, 0x6($a1)
/* 2C51C 8003BD1C 00000000 */  nop
/* 2C520 8003BD20 18006700 */  mult       $v1, $a3
/* 2C524 8003BD24 12180000 */  mflo       $v1
/* 2C528 8003BD28 6666063C */  lui        $a2, (0x66666667 >> 16)
/* 2C52C 8003BD2C 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 2C530 8003BD30 18006600 */  mult       $v1, $a2
/* 2C534 8003BD34 00100224 */  addiu      $v0, $zero, 0x1000
/* 2C538 8003BD38 0780013C */  lui        $at, %hi(D_8006FCF0)
/* 2C53C 8003BD3C 21083100 */  addu       $at, $at, $s1
/* 2C540 8003BD40 F0FC22AC */  sw         $v0, %lo(D_8006FCF0)($at)
/* 2C544 8003BD44 C31F0300 */  sra        $v1, $v1, 31
/* 2C548 8003BD48 10400000 */  mfhi       $t0
/* 2C54C 8003BD4C 83100800 */  sra        $v0, $t0, 2
/* 2C550 8003BD50 23104300 */  subu       $v0, $v0, $v1
/* 2C554 8003BD54 0780013C */  lui        $at, %hi(D_8006FCEC)
/* 2C558 8003BD58 21083100 */  addu       $at, $at, $s1
/* 2C55C 8003BD5C ECFC22AC */  sw         $v0, %lo(D_8006FCEC)($at)
/* 2C560 8003BD60 0600A294 */  lhu        $v0, 0x6($a1)
/* 2C564 8003BD64 00000000 */  nop
/* 2C568 8003BD68 18004700 */  mult       $v0, $a3
/* 2C56C 8003BD6C 12100000 */  mflo       $v0
/* 2C570 8003BD70 00000000 */  nop
/* 2C574 8003BD74 00000000 */  nop
/* 2C578 8003BD78 18004600 */  mult       $v0, $a2
/* 2C57C 8003BD7C C3170200 */  sra        $v0, $v0, 31
/* 2C580 8003BD80 10400000 */  mfhi       $t0
/* 2C584 8003BD84 83180800 */  sra        $v1, $t0, 2
/* 2C588 8003BD88 23186200 */  subu       $v1, $v1, $v0
/* 2C58C 8003BD8C 0780013C */  lui        $at, %hi(D_8006FCF4)
/* 2C590 8003BD90 21083100 */  addu       $at, $at, $s1
/* 2C594 8003BD94 F4FC23AC */  sw         $v1, %lo(D_8006FCF4)($at)
/* 2C598 8003BD98 0600A394 */  lhu        $v1, 0x6($a1)
/* 2C59C 8003BD9C 00000000 */  nop
/* 2C5A0 8003BDA0 18006700 */  mult       $v1, $a3
/* 2C5A4 8003BDA4 12180000 */  mflo       $v1
/* 2C5A8 8003BDA8 00000000 */  nop
/* 2C5AC 8003BDAC 00000000 */  nop
/* 2C5B0 8003BDB0 18006600 */  mult       $v1, $a2
/* 2C5B4 8003BDB4 0780013C */  lui        $at, %hi(D_8006FD0C)
/* 2C5B8 8003BDB8 21083100 */  addu       $at, $at, $s1
/* 2C5BC 8003BDBC 0CFD34AC */  sw         $s4, %lo(D_8006FD0C)($at)
/* 2C5C0 8003BDC0 C31F0300 */  sra        $v1, $v1, 31
/* 2C5C4 8003BDC4 10400000 */  mfhi       $t0
/* 2C5C8 8003BDC8 83100800 */  sra        $v0, $t0, 2
/* 2C5CC 8003BDCC 23104300 */  subu       $v0, $v0, $v1
/* 2C5D0 8003BDD0 0780013C */  lui        $at, %hi(D_8006FCF8)
/* 2C5D4 8003BDD4 21083100 */  addu       $at, $at, $s1
/* 2C5D8 8003BDD8 F8FC22AC */  sw         $v0, %lo(D_8006FCF8)($at)
/* 2C5DC 8003BDDC 1000A290 */  lbu        $v0, 0x10($a1)
/* 2C5E0 8003BDE0 0780013C */  lui        $at, %hi(D_8006FCE7)
/* 2C5E4 8003BDE4 21083100 */  addu       $at, $at, $s1
/* 2C5E8 8003BDE8 E7FC22A0 */  sb         $v0, %lo(D_8006FCE7)($at)
/* 2C5EC 8003BDEC 0780023C */  lui        $v0, %hi(D_8006C6A0)
/* 2C5F0 8003BDF0 A0C6428C */  lw         $v0, %lo(D_8006C6A0)($v0)
/* 2C5F4 8003BDF4 00000000 */  nop
/* 2C5F8 8003BDF8 21208200 */  addu       $a0, $a0, $v0
/* 2C5FC 8003BDFC 11008290 */  lbu        $v0, 0x11($a0)
/* 2C600 8003BE00 0780013C */  lui        $at, %hi(D_8006FCE8)
/* 2C604 8003BE04 21083100 */  addu       $at, $at, $s1
/* 2C608 8003BE08 E8FC22AC */  sw         $v0, %lo(D_8006FCE8)($at)
/* 2C60C 8003BE0C 0C008294 */  lhu        $v0, 0xC($a0)
/* 2C610 8003BE10 0E008594 */  lhu        $a1, 0xE($a0)
/* 2C614 8003BE14 00000000 */  nop
/* 2C618 8003BE18 06004514 */  bne        $v0, $a1, .L8003BE34
/* 2C61C 8003BE1C 00000000 */   nop
/* 2C620 8003BE20 0780013C */  lui        $at, %hi(D_8006FCFC)
/* 2C624 8003BE24 21083100 */  addu       $at, $at, $s1
/* 2C628 8003BE28 FCFC25AC */  sw         $a1, %lo(D_8006FCFC)($at)
/* 2C62C 8003BE2C 93EF0008 */  j          .L8003BE4C
/* 2C630 8003BE30 21100002 */   addu      $v0, $s0, $zero
.L8003BE34:
/* 2C634 8003BE34 DBD8000C */  jal        func_8003636C
/* 2C638 8003BE38 21204000 */   addu      $a0, $v0, $zero
/* 2C63C 8003BE3C 0780013C */  lui        $at, %hi(D_8006FCFC)
/* 2C640 8003BE40 21083100 */  addu       $at, $at, $s1
/* 2C644 8003BE44 FCFC22AC */  sw         $v0, %lo(D_8006FCFC)($at)
/* 2C648 8003BE48 21100002 */  addu       $v0, $s0, $zero
.L8003BE4C:
/* 2C64C 8003BE4C 2400BF8F */  lw         $ra, 0x24($sp)
/* 2C650 8003BE50 2000B48F */  lw         $s4, 0x20($sp)
/* 2C654 8003BE54 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2C658 8003BE58 1800B28F */  lw         $s2, 0x18($sp)
/* 2C65C 8003BE5C 1400B18F */  lw         $s1, 0x14($sp)
/* 2C660 8003BE60 1000B08F */  lw         $s0, 0x10($sp)
/* 2C664 8003BE64 2800BD27 */  addiu      $sp, $sp, 0x28
/* 2C668 8003BE68 0800E003 */  jr         $ra
/* 2C66C 8003BE6C 00000000 */   nop
.size PlaySound, . - PlaySound
