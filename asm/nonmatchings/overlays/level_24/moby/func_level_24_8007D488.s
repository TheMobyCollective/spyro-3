.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007D488
/* 5DF81B8 8007D488 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 5DF81BC 8007D48C 5800B4AF */  sw         $s4, 0x58($sp)
/* 5DF81C0 8007D490 21A08000 */  addu       $s4, $a0, $zero
/* 5DF81C4 8007D494 6000BFAF */  sw         $ra, 0x60($sp)
/* 5DF81C8 8007D498 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 5DF81CC 8007D49C 5400B3AF */  sw         $s3, 0x54($sp)
/* 5DF81D0 8007D4A0 5000B2AF */  sw         $s2, 0x50($sp)
/* 5DF81D4 8007D4A4 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 5DF81D8 8007D4A8 4800B0AF */  sw         $s0, 0x48($sp)
/* 5DF81DC 8007D4AC 48009092 */  lbu        $s0, 0x48($s4)
/* 5DF81E0 8007D4B0 0000928E */  lw         $s2, 0x0($s4)
/* 5DF81E4 8007D4B4 05000012 */  beqz       $s0, .Llevel_24_8007D4CC
/* 5DF81E8 8007D4B8 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF81EC 8007D4BC 51000212 */  beq        $s0, $v0, .Llevel_24_8007D604
/* 5DF81F0 8007D4C0 00000000 */   nop
/* 5DF81F4 8007D4C4 26F60108 */  j          .Llevel_24_8007D898
/* 5DF81F8 8007D4C8 00000000 */   nop
.Llevel_24_8007D4CC:
/* 5DF81FC 8007D4CC 2400428E */  lw         $v0, 0x24($s2)
/* 5DF8200 8007D4D0 00000000 */  nop
/* 5DF8204 8007D4D4 1D004010 */  beqz       $v0, .Llevel_24_8007D54C
/* 5DF8208 8007D4D8 00000000 */   nop
/* 5DF820C 8007D4DC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5DF8210 8007D4E0 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5DF8214 8007D4E4 00000000 */  nop
/* 5DF8218 8007D4E8 18004014 */  bnez       $v0, .Llevel_24_8007D54C
/* 5DF821C 8007D4EC 00000000 */   nop
/* 5DF8220 8007D4F0 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 5DF8224 8007D4F4 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 5DF8228 8007D4F8 00000000 */  nop
/* 5DF822C 8007D4FC 01004230 */  andi       $v0, $v0, 0x1
/* 5DF8230 8007D500 0A004014 */  bnez       $v0, .Llevel_24_8007D52C
/* 5DF8234 8007D504 48008426 */   addiu     $a0, $s4, 0x48
/* 5DF8238 8007D508 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5DF823C 8007D50C 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5DF8240 8007D510 0780013C */  lui        $at, %hi(D_80070300)
/* 5DF8244 8007D514 21082200 */  addu       $at, $at, $v0
/* 5DF8248 8007D518 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5DF824C 8007D51C 00000000 */  nop
/* 5DF8250 8007D520 01004230 */  andi       $v0, $v0, 0x1
/* 5DF8254 8007D524 09004010 */  beqz       $v0, .Llevel_24_8007D54C
/* 5DF8258 8007D528 00000000 */   nop
.Llevel_24_8007D52C:
/* 5DF825C 8007D52C 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF8260 8007D530 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 5DF8264 8007D534 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 5DF8268 8007D538 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5DF826C 8007D53C 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 5DF8270 8007D540 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF8274 8007D544 EDED000C */  jal        func_8003B7B4
/* 5DF8278 8007D548 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_24_8007D54C:
/* 5DF827C 8007D54C 0000428E */  lw         $v0, 0x0($s2)
/* 5DF8280 8007D550 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 5DF8284 8007D554 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 5DF8288 8007D558 80100200 */  sll        $v0, $v0, 2
/* 5DF828C 8007D55C 21104300 */  addu       $v0, $v0, $v1
/* 5DF8290 8007D560 0780033C */  lui        $v1, %hi(D_8006C640)
/* 5DF8294 8007D564 40C6638C */  lw         $v1, %lo(D_8006C640)($v1)
/* 5DF8298 8007D568 0000448C */  lw         $a0, 0x0($v0)
/* 5DF829C 8007D56C 02006014 */  bnez       $v1, .Llevel_24_8007D578
/* 5DF82A0 8007D570 00000000 */   nop
/* 5DF82A4 8007D574 040080AC */  sw         $zero, 0x4($a0)
.Llevel_24_8007D578:
/* 5DF82A8 8007D578 0400828C */  lw         $v0, 0x4($a0)
/* 5DF82AC 8007D57C 0800438E */  lw         $v1, 0x8($s2)
/* 5DF82B0 8007D580 00000000 */  nop
/* 5DF82B4 8007D584 24104300 */  and        $v0, $v0, $v1
/* 5DF82B8 8007D588 C3004010 */  beqz       $v0, .Llevel_24_8007D898
/* 5DF82BC 8007D58C 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF82C0 8007D590 040080AC */  sw         $zero, 0x4($a0)
/* 5DF82C4 8007D594 480082A2 */  sb         $v0, 0x48($s4)
/* 5DF82C8 8007D598 0780043C */  lui        $a0, %hi(D_8006C5BC)
/* 5DF82CC 8007D59C BCC5848C */  lw         $a0, %lo(D_8006C5BC)($a0)
/* 5DF82D0 8007D5A0 15000224 */  addiu      $v0, $zero, 0x15
/* 5DF82D4 8007D5A4 06008214 */  bne        $a0, $v0, .Llevel_24_8007D5C0
/* 5DF82D8 8007D5A8 1A000224 */   addiu     $v0, $zero, 0x1A
/* 5DF82DC 8007D5AC 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 5DF82E0 8007D5B0 C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 5DF82E4 8007D5B4 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF82E8 8007D5B8 03006210 */  beq        $v1, $v0, .Llevel_24_8007D5C8
/* 5DF82EC 8007D5BC 1A000224 */   addiu     $v0, $zero, 0x1A
.Llevel_24_8007D5C0:
/* 5DF82F0 8007D5C0 09008214 */  bne        $a0, $v0, .Llevel_24_8007D5E8
/* 5DF82F4 8007D5C4 00000000 */   nop
.Llevel_24_8007D5C8:
/* 5DF82F8 8007D5C8 48009026 */  addiu      $s0, $s4, 0x48
/* 5DF82FC 8007D5CC 21200002 */  addu       $a0, $s0, $zero
/* 5DF8300 8007D5D0 0780063C */  lui        $a2, %hi(D_8006D088)
/* 5DF8304 8007D5D4 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 5DF8308 8007D5D8 EDED000C */  jal        func_8003B7B4
/* 5DF830C 8007D5DC 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF8310 8007D5E0 7BF50108 */  j          .Llevel_24_8007D5EC
/* 5DF8314 8007D5E4 21200002 */   addu      $a0, $s0, $zero
.Llevel_24_8007D5E8:
/* 5DF8318 8007D5E8 48008426 */  addiu      $a0, $s4, 0x48
.Llevel_24_8007D5EC:
/* 5DF831C 8007D5EC 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 5DF8320 8007D5F0 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 5DF8324 8007D5F4 EDED000C */  jal        func_8003B7B4
/* 5DF8328 8007D5F8 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF832C 8007D5FC 26F60108 */  j          .Llevel_24_8007D898
/* 5DF8330 8007D600 00000000 */   nop
.Llevel_24_8007D604:
/* 5DF8334 8007D604 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5DF8338 8007D608 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5DF833C 8007D60C 00000000 */  nop
/* 5DF8340 8007D610 05004228 */  slti       $v0, $v0, 0x5
/* 5DF8344 8007D614 9A004014 */  bnez       $v0, .Llevel_24_8007D880
/* 5DF8348 8007D618 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 5DF834C 8007D61C 2000458E */  lw         $a1, 0x20($s2)
/* 5DF8350 8007D620 00000000 */  nop
/* 5DF8354 8007D624 0300A210 */  beq        $a1, $v0, .Llevel_24_8007D634
/* 5DF8358 8007D628 21208002 */   addu      $a0, $s4, $zero
/* 5DF835C 8007D62C C4EE000C */  jal        func_8003BB10
/* 5DF8360 8007D630 21300000 */   addu      $a2, $zero, $zero
.Llevel_24_8007D634:
/* 5DF8364 8007D634 1000438E */  lw         $v1, 0x10($s2)
/* 5DF8368 8007D638 00000000 */  nop
/* 5DF836C 8007D63C 0F006014 */  bnez       $v1, .Llevel_24_8007D67C
/* 5DF8370 8007D640 00000000 */   nop
/* 5DF8374 8007D644 0C004586 */  lh         $a1, 0xC($s2)
/* 5DF8378 8007D648 00000000 */  nop
/* 5DF837C 8007D64C 8C00A004 */  bltz       $a1, .Llevel_24_8007D880
/* 5DF8380 8007D650 00020224 */   addiu     $v0, $zero, 0x200
/* 5DF8384 8007D654 0E004486 */  lh         $a0, 0xE($s2)
/* 5DF8388 8007D658 1400A2AF */  sw         $v0, 0x14($sp)
/* 5DF838C 8007D65C 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 5DF8390 8007D660 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 5DF8394 8007D664 1000A0AF */  sw         $zero, 0x10($sp)
/* 5DF8398 8007D668 1400478E */  lw         $a3, 0x14($s2)
/* 5DF839C 8007D66C 09F84000 */  jalr       $v0
/* 5DF83A0 8007D670 21308002 */   addu      $a2, $s4, $zero
/* 5DF83A4 8007D674 20F60108 */  j          .Llevel_24_8007D880
/* 5DF83A8 8007D678 00000000 */   nop
.Llevel_24_8007D67C:
/* 5DF83AC 8007D67C 2C007014 */  bne        $v1, $s0, .Llevel_24_8007D730
/* 5DF83B0 8007D680 02000224 */   addiu     $v0, $zero, 0x2
/* 5DF83B4 8007D684 0C004286 */  lh         $v0, 0xC($s2)
/* 5DF83B8 8007D688 00000000 */  nop
/* 5DF83BC 8007D68C 7C004004 */  bltz       $v0, .Llevel_24_8007D880
/* 5DF83C0 8007D690 00000000 */   nop
/* 5DF83C4 8007D694 0E004286 */  lh         $v0, 0xE($s2)
/* 5DF83C8 8007D698 00000000 */  nop
/* 5DF83CC 8007D69C 78004018 */  blez       $v0, .Llevel_24_8007D880
/* 5DF83D0 8007D6A0 00000000 */   nop
/* 5DF83D4 8007D6A4 21208002 */  addu       $a0, $s4, $zero
/* 5DF83D8 8007D6A8 4957010C */  jal        func_80055D24
/* 5DF83DC 8007D6AC 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF83E0 8007D6B0 0E004286 */  lh         $v0, 0xE($s2)
/* 5DF83E4 8007D6B4 00000000 */  nop
/* 5DF83E8 8007D6B8 71004018 */  blez       $v0, .Llevel_24_8007D880
/* 5DF83EC 8007D6BC 21880000 */   addu      $s1, $zero, $zero
/* 5DF83F0 8007D6C0 21980000 */  addu       $s3, $zero, $zero
.Llevel_24_8007D6C4:
/* 5DF83F4 8007D6C4 0C004486 */  lh         $a0, 0xC($s2)
/* 5DF83F8 8007D6C8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF83FC 8007D6CC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF8400 8007D6D0 00000000 */  nop
/* 5DF8404 8007D6D4 09F84000 */  jalr       $v0
/* 5DF8408 8007D6D8 21288002 */   addu      $a1, $s4, $zero
/* 5DF840C 8007D6DC 21804000 */  addu       $s0, $v0, $zero
/* 5DF8410 8007D6E0 0C000012 */  beqz       $s0, .Llevel_24_8007D714
/* 5DF8414 8007D6E4 1800A427 */   addiu     $a0, $sp, 0x18
/* 5DF8418 8007D6E8 1400458E */  lw         $a1, 0x14($s2)
/* 5DF841C 8007D6EC 5E3C010C */  jal        func_8004F178
/* 5DF8420 8007D6F0 2128B300 */   addu      $a1, $a1, $s3
/* 5DF8424 8007D6F4 20008426 */  addiu      $a0, $s4, 0x20
/* 5DF8428 8007D6F8 1800A527 */  addiu      $a1, $sp, 0x18
/* 5DF842C 8007D6FC 5B3B010C */  jal        func_8004ED6C
/* 5DF8430 8007D700 2130A000 */   addu      $a2, $a1, $zero
/* 5DF8434 8007D704 0C000426 */  addiu      $a0, $s0, 0xC
/* 5DF8438 8007D708 21288000 */  addu       $a1, $a0, $zero
/* 5DF843C 8007D70C 653C010C */  jal        func_8004F194
/* 5DF8440 8007D710 1800A627 */   addiu     $a2, $sp, 0x18
.Llevel_24_8007D714:
/* 5DF8444 8007D714 0E004286 */  lh         $v0, 0xE($s2)
/* 5DF8448 8007D718 01003126 */  addiu      $s1, $s1, 0x1
/* 5DF844C 8007D71C 2A102202 */  slt        $v0, $s1, $v0
/* 5DF8450 8007D720 E8FF4014 */  bnez       $v0, .Llevel_24_8007D6C4
/* 5DF8454 8007D724 0C007326 */   addiu     $s3, $s3, 0xC
/* 5DF8458 8007D728 20F60108 */  j          .Llevel_24_8007D880
/* 5DF845C 8007D72C 00000000 */   nop
.Llevel_24_8007D730:
/* 5DF8460 8007D730 53006214 */  bne        $v1, $v0, .Llevel_24_8007D880
/* 5DF8464 8007D734 00000000 */   nop
/* 5DF8468 8007D738 0C004286 */  lh         $v0, 0xC($s2)
/* 5DF846C 8007D73C 00000000 */  nop
/* 5DF8470 8007D740 4F004004 */  bltz       $v0, .Llevel_24_8007D880
/* 5DF8474 8007D744 00000000 */   nop
/* 5DF8478 8007D748 1C00428E */  lw         $v0, 0x1C($s2)
/* 5DF847C 8007D74C 00000000 */  nop
/* 5DF8480 8007D750 4B004010 */  beqz       $v0, .Llevel_24_8007D880
/* 5DF8484 8007D754 00000000 */   nop
/* 5DF8488 8007D758 00004284 */  lh         $v0, 0x0($v0)
/* 5DF848C 8007D75C 00000000 */  nop
/* 5DF8490 8007D760 47004018 */  blez       $v0, .Llevel_24_8007D880
/* 5DF8494 8007D764 21980000 */   addu      $s3, $zero, $zero
/* 5DF8498 8007D768 2800B527 */  addiu      $s5, $sp, 0x28
.Llevel_24_8007D76C:
/* 5DF849C 8007D76C 0C004486 */  lh         $a0, 0xC($s2)
/* 5DF84A0 8007D770 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF84A4 8007D774 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF84A8 8007D778 00000000 */  nop
/* 5DF84AC 8007D77C 09F84000 */  jalr       $v0
/* 5DF84B0 8007D780 21288002 */   addu      $a1, $s4, $zero
/* 5DF84B4 8007D784 21804000 */  addu       $s0, $v0, $zero
/* 5DF84B8 8007D788 36000012 */  beqz       $s0, .Llevel_24_8007D864
/* 5DF84BC 8007D78C 0C001126 */   addiu     $s1, $s0, 0xC
/* 5DF84C0 8007D790 21202002 */  addu       $a0, $s1, $zero
/* 5DF84C4 8007D794 1C00428E */  lw         $v0, 0x1C($s2)
/* 5DF84C8 8007D798 00291300 */  sll        $a1, $s3, 4
/* 5DF84CC 8007D79C 0C00428C */  lw         $v0, 0xC($v0)
/* 5DF84D0 8007D7A0 0000108E */  lw         $s0, 0x0($s0)
/* 5DF84D4 8007D7A4 5E3C010C */  jal        func_8004F178
/* 5DF84D8 8007D7A8 21284500 */   addu      $a1, $v0, $a1
/* 5DF84DC 8007D7AC 2120A002 */  addu       $a0, $s5, $zero
/* 5DF84E0 8007D7B0 21282002 */  addu       $a1, $s1, $zero
/* 5DF84E4 8007D7B4 723C010C */  jal        func_8004F1C8
/* 5DF84E8 8007D7B8 0C008626 */   addiu     $a2, $s4, 0xC
/* 5DF84EC 8007D7BC 2120A002 */  addu       $a0, $s5, $zero
/* 5DF84F0 8007D7C0 7A3B010C */  jal        func_8004EDE8
/* 5DF84F4 8007D7C4 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF84F8 8007D7C8 2120A002 */  addu       $a0, $s5, $zero
/* 5DF84FC 8007D7CC 21284000 */  addu       $a1, $v0, $zero
/* 5DF8500 8007D7D0 233C010C */  jal        func_8004F08C
/* 5DF8504 8007D7D4 5A000624 */   addiu     $a2, $zero, 0x5A
/* 5DF8508 8007D7D8 46008292 */  lbu        $v0, 0x46($s4)
/* 5DF850C 8007D7DC 00000000 */  nop
/* 5DF8510 8007D7E0 40100200 */  sll        $v0, $v0, 1
/* 5DF8514 8007D7E4 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF8518 8007D7E8 21082200 */  addu       $at, $at, $v0
/* 5DF851C 8007D7EC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5DF8520 8007D7F0 00000000 */  nop
/* 5DF8524 8007D7F4 00110300 */  sll        $v0, $v1, 4
/* 5DF8528 8007D7F8 23104300 */  subu       $v0, $v0, $v1
/* 5DF852C 8007D7FC 00000396 */  lhu        $v1, 0x0($s0)
/* 5DF8530 8007D800 43120200 */  sra        $v0, $v0, 9
/* 5DF8534 8007D804 21186200 */  addu       $v1, $v1, $v0
/* 5DF8538 8007D808 000003A6 */  sh         $v1, 0x0($s0)
/* 5DF853C 8007D80C 46008292 */  lbu        $v0, 0x46($s4)
/* 5DF8540 8007D810 00000000 */  nop
/* 5DF8544 8007D814 40100200 */  sll        $v0, $v0, 1
/* 5DF8548 8007D818 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF854C 8007D81C 21082200 */  addu       $at, $at, $v0
/* 5DF8550 8007D820 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5DF8554 8007D824 00000000 */  nop
/* 5DF8558 8007D828 00110300 */  sll        $v0, $v1, 4
/* 5DF855C 8007D82C 23104300 */  subu       $v0, $v0, $v1
/* 5DF8560 8007D830 02000396 */  lhu        $v1, 0x2($s0)
/* 5DF8564 8007D834 43120200 */  sra        $v0, $v0, 9
/* 5DF8568 8007D838 21186200 */  addu       $v1, $v1, $v0
/* 5DF856C 8007D83C 020003A6 */  sh         $v1, 0x2($s0)
/* 5DF8570 8007D840 2800A28F */  lw         $v0, 0x28($sp)
/* 5DF8574 8007D844 00000000 */  nop
/* 5DF8578 8007D848 000002A6 */  sh         $v0, 0x0($s0)
/* 5DF857C 8007D84C 2C00A28F */  lw         $v0, 0x2C($sp)
/* 5DF8580 8007D850 00000000 */  nop
/* 5DF8584 8007D854 020002A6 */  sh         $v0, 0x2($s0)
/* 5DF8588 8007D858 3000A28F */  lw         $v0, 0x30($sp)
/* 5DF858C 8007D85C 00000000 */  nop
/* 5DF8590 8007D860 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_24_8007D864:
/* 5DF8594 8007D864 1C00428E */  lw         $v0, 0x1C($s2)
/* 5DF8598 8007D868 00000000 */  nop
/* 5DF859C 8007D86C 00004284 */  lh         $v0, 0x0($v0)
/* 5DF85A0 8007D870 01007326 */  addiu      $s3, $s3, 0x1
/* 5DF85A4 8007D874 2A106202 */  slt        $v0, $s3, $v0
/* 5DF85A8 8007D878 BCFF4014 */  bnez       $v0, .Llevel_24_8007D76C
/* 5DF85AC 8007D87C 00000000 */   nop
.Llevel_24_8007D880:
/* 5DF85B0 8007D880 0400448E */  lw         $a0, 0x4($s2)
/* 5DF85B4 8007D884 FC000524 */  addiu      $a1, $zero, 0xFC
/* 5DF85B8 8007D888 B687000C */  jal        func_80021ED8
/* 5DF85BC 8007D88C 21300000 */   addu      $a2, $zero, $zero
/* 5DF85C0 8007D890 C656010C */  jal        func_80055B18
/* 5DF85C4 8007D894 21208002 */   addu      $a0, $s4, $zero
.Llevel_24_8007D898:
/* 5DF85C8 8007D898 6000BF8F */  lw         $ra, 0x60($sp)
/* 5DF85CC 8007D89C 5C00B58F */  lw         $s5, 0x5C($sp)
/* 5DF85D0 8007D8A0 5800B48F */  lw         $s4, 0x58($sp)
/* 5DF85D4 8007D8A4 5400B38F */  lw         $s3, 0x54($sp)
/* 5DF85D8 8007D8A8 5000B28F */  lw         $s2, 0x50($sp)
/* 5DF85DC 8007D8AC 4C00B18F */  lw         $s1, 0x4C($sp)
/* 5DF85E0 8007D8B0 4800B08F */  lw         $s0, 0x48($sp)
/* 5DF85E4 8007D8B4 6800BD27 */  addiu      $sp, $sp, 0x68
/* 5DF85E8 8007D8B8 0800E003 */  jr         $ra
/* 5DF85EC 8007D8BC 00000000 */   nop
.size func_level_24_8007D488, . - func_level_24_8007D488
