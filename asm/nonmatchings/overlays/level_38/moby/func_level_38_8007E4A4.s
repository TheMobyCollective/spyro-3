.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_577_level_38
/* 7C3D1D4 8007E4A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7C3D1D8 8007E4A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 7C3D1DC 8007E4AC 21808000 */  addu       $s0, $a0, $zero
/* 7C3D1E0 8007E4B0 1800BFAF */  sw         $ra, 0x18($sp)
/* 7C3D1E4 8007E4B4 1400B1AF */  sw         $s1, 0x14($sp)
/* 7C3D1E8 8007E4B8 1800028E */  lw         $v0, 0x18($s0)
/* 7C3D1EC 8007E4BC 0000118E */  lw         $s1, 0x0($s0)
/* 7C3D1F0 8007E4C0 09004010 */  beqz       $v0, .Llevel_38_8007E4E8
/* 7C3D1F4 8007E4C4 01000224 */   addiu     $v0, $zero, 0x1
/* 7C3D1F8 8007E4C8 48000392 */  lbu        $v1, 0x48($s0)
/* 7C3D1FC 8007E4CC 00000000 */  nop
/* 7C3D200 8007E4D0 03006210 */  beq        $v1, $v0, .Llevel_38_8007E4E0
/* 7C3D204 8007E4D4 21280000 */   addu      $a1, $zero, $zero
/* 7C3D208 8007E4D8 AFEE000C */  jal        func_8003BABC
/* 7C3D20C 8007E4DC 21300000 */   addu      $a2, $zero, $zero
.Llevel_38_8007E4E0:
/* 7C3D210 8007E4E0 000020AE */  sw         $zero, 0x0($s1)
/* 7C3D214 8007E4E4 180000AE */  sw         $zero, 0x18($s0)
.Llevel_38_8007E4E8:
/* 7C3D218 8007E4E8 0400258E */  lw         $a1, 0x4($s1)
/* 7C3D21C 8007E4EC F0EF000C */  jal        func_8003BFC0
/* 7C3D220 8007E4F0 21200002 */   addu      $a0, $s0, $zero
/* 7C3D224 8007E4F4 0A004014 */  bnez       $v0, .Llevel_38_8007E520
/* 7C3D228 8007E4F8 00000000 */   nop
/* 7C3D22C 8007E4FC 0400258E */  lw         $a1, 0x4($s1)
/* 7C3D230 8007E500 F0EF000C */  jal        func_8003BFC0
/* 7C3D234 8007E504 21200002 */   addu      $a0, $s0, $zero
/* 7C3D238 8007E508 05004014 */  bnez       $v0, .Llevel_38_8007E520
/* 7C3D23C 8007E50C 21200002 */   addu      $a0, $s0, $zero
/* 7C3D240 8007E510 01000524 */  addiu      $a1, $zero, 0x1
/* 7C3D244 8007E514 AFEE000C */  jal        func_8003BABC
/* 7C3D248 8007E518 04000624 */   addiu     $a2, $zero, 0x4
/* 7C3D24C 8007E51C 040022AE */  sw         $v0, 0x4($s1)
.Llevel_38_8007E520:
/* 7C3D250 8007E520 0000238E */  lw         $v1, 0x0($s1)
/* 7C3D254 8007E524 00000000 */  nop
/* 7C3D258 8007E528 0F006228 */  slti       $v0, $v1, 0xF
/* 7C3D25C 8007E52C 03004014 */  bnez       $v0, .Llevel_38_8007E53C
/* 7C3D260 8007E530 03006228 */   slti      $v0, $v1, 0x3
/* 7C3D264 8007E534 53F90108 */  j          .Llevel_38_8007E54C
/* 7C3D268 8007E538 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_38_8007E53C:
/* 7C3D26C 8007E53C 02004014 */  bnez       $v0, .Llevel_38_8007E548
/* 7C3D270 8007E540 01000224 */   addiu     $v0, $zero, 0x1
/* 7C3D274 8007E544 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_38_8007E548:
/* 7C3D278 8007E548 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_38_8007E54C:
/* 7C3D27C 8007E54C 48000392 */  lbu        $v1, 0x48($s0)
/* 7C3D280 8007E550 01000224 */  addiu      $v0, $zero, 0x1
/* 7C3D284 8007E554 11006210 */  beq        $v1, $v0, .Llevel_38_8007E59C
/* 7C3D288 8007E558 02006228 */   slti      $v0, $v1, 0x2
/* 7C3D28C 8007E55C 05004010 */  beqz       $v0, .Llevel_38_8007E574
/* 7C3D290 8007E560 00000000 */   nop
/* 7C3D294 8007E564 08006010 */  beqz       $v1, .Llevel_38_8007E588
/* 7C3D298 8007E568 00000000 */   nop
/* 7C3D29C 8007E56C C9F90108 */  j          .Llevel_38_8007E724
/* 7C3D2A0 8007E570 00000000 */   nop
.Llevel_38_8007E574:
/* 7C3D2A4 8007E574 02000224 */  addiu      $v0, $zero, 0x2
/* 7C3D2A8 8007E578 30006210 */  beq        $v1, $v0, .Llevel_38_8007E63C
/* 7C3D2AC 8007E57C 00000000 */   nop
/* 7C3D2B0 8007E580 C9F90108 */  j          .Llevel_38_8007E724
/* 7C3D2B4 8007E584 00000000 */   nop
.Llevel_38_8007E588:
/* 7C3D2B8 8007E588 540000A2 */  sb         $zero, 0x54($s0)
/* 7C3D2BC 8007E58C 550000A2 */  sb         $zero, 0x55($s0)
/* 7C3D2C0 8007E590 560000A2 */  sb         $zero, 0x56($s0)
/* 7C3D2C4 8007E594 C9F90108 */  j          .Llevel_38_8007E724
/* 7C3D2C8 8007E598 570000A2 */   sb        $zero, 0x57($s0)
.Llevel_38_8007E59C:
/* 7C3D2CC 8007E59C 0000238E */  lw         $v1, 0x0($s1)
/* 7C3D2D0 8007E5A0 00000000 */  nop
/* 7C3D2D4 8007E5A4 80100300 */  sll        $v0, $v1, 2
/* 7C3D2D8 8007E5A8 21104300 */  addu       $v0, $v0, $v1
/* 7C3D2DC 8007E5AC 00190200 */  sll        $v1, $v0, 4
/* 7C3D2E0 8007E5B0 21304300 */  addu       $a2, $v0, $v1
/* 7C3D2E4 8007E5B4 0001C228 */  slti       $v0, $a2, 0x100
/* 7C3D2E8 8007E5B8 03004014 */  bnez       $v0, .Llevel_38_8007E5C8
/* 7C3D2EC 8007E5BC 00000000 */   nop
/* 7C3D2F0 8007E5C0 75F90108 */  j          .Llevel_38_8007E5D4
/* 7C3D2F4 8007E5C4 FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_38_8007E5C8:
/* 7C3D2F8 8007E5C8 0300C104 */  bgez       $a2, .Llevel_38_8007E5D8
/* 7C3D2FC 8007E5CC 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 7C3D300 8007E5D0 21300000 */  addu       $a2, $zero, $zero
.Llevel_38_8007E5D4:
/* 7C3D304 8007E5D4 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_38_8007E5D8:
/* 7C3D308 8007E5D8 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 7C3D30C 8007E5DC 0000238E */  lw         $v1, 0x0($s1)
/* 7C3D310 8007E5E0 0F000224 */  addiu      $v0, $zero, 0xF
/* 7C3D314 8007E5E4 23104300 */  subu       $v0, $v0, $v1
/* 7C3D318 8007E5E8 C0100200 */  sll        $v0, $v0, 3
/* 7C3D31C 8007E5EC 18004400 */  mult       $v0, $a0
/* 7C3D320 8007E5F0 10380000 */  mfhi       $a3
/* 7C3D324 8007E5F4 2118E200 */  addu       $v1, $a3, $v0
/* 7C3D328 8007E5F8 C3180300 */  sra        $v1, $v1, 3
/* 7C3D32C 8007E5FC C3170200 */  sra        $v0, $v0, 31
/* 7C3D330 8007E600 23286200 */  subu       $a1, $v1, $v0
/* 7C3D334 8007E604 1000A228 */  slti       $v0, $a1, 0x10
/* 7C3D338 8007E608 03004014 */  bnez       $v0, .Llevel_38_8007E618
/* 7C3D33C 8007E60C 00000000 */   nop
/* 7C3D340 8007E610 89F90108 */  j          .Llevel_38_8007E624
/* 7C3D344 8007E614 0F000524 */   addiu     $a1, $zero, 0xF
.Llevel_38_8007E618:
/* 7C3D348 8007E618 0300A104 */  bgez       $a1, .Llevel_38_8007E628
/* 7C3D34C 8007E61C FF000224 */   addiu     $v0, $zero, 0xFF
/* 7C3D350 8007E620 21280000 */  addu       $a1, $zero, $zero
.Llevel_38_8007E624:
/* 7C3D354 8007E624 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_38_8007E628:
/* 7C3D358 8007E628 540002A2 */  sb         $v0, 0x54($s0)
/* 7C3D35C 8007E62C 3000A234 */  ori        $v0, $a1, 0x30
/* 7C3D360 8007E630 550000A2 */  sb         $zero, 0x55($s0)
/* 7C3D364 8007E634 C4F90108 */  j          .Llevel_38_8007E710
/* 7C3D368 8007E638 560006A2 */   sb        $a2, 0x56($s0)
.Llevel_38_8007E63C:
/* 7C3D36C 8007E63C 0000238E */  lw         $v1, 0x0($s1)
/* 7C3D370 8007E640 00000000 */  nop
/* 7C3D374 8007E644 80100300 */  sll        $v0, $v1, 2
/* 7C3D378 8007E648 21104300 */  addu       $v0, $v0, $v1
/* 7C3D37C 8007E64C 00190200 */  sll        $v1, $v0, 4
/* 7C3D380 8007E650 21104300 */  addu       $v0, $v0, $v1
/* 7C3D384 8007E654 40300200 */  sll        $a2, $v0, 1
/* 7C3D388 8007E658 0001C228 */  slti       $v0, $a2, 0x100
/* 7C3D38C 8007E65C 03004014 */  bnez       $v0, .Llevel_38_8007E66C
/* 7C3D390 8007E660 00000000 */   nop
/* 7C3D394 8007E664 9EF90108 */  j          .Llevel_38_8007E678
/* 7C3D398 8007E668 FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_38_8007E66C:
/* 7C3D39C 8007E66C 0200C104 */  bgez       $a2, .Llevel_38_8007E678
/* 7C3D3A0 8007E670 00000000 */   nop
/* 7C3D3A4 8007E674 21300000 */  addu       $a2, $zero, $zero
.Llevel_38_8007E678:
/* 7C3D3A8 8007E678 0000238E */  lw         $v1, 0x0($s1)
/* 7C3D3AC 8007E67C 00000000 */  nop
/* 7C3D3B0 8007E680 80100300 */  sll        $v0, $v1, 2
/* 7C3D3B4 8007E684 21104300 */  addu       $v0, $v0, $v1
/* 7C3D3B8 8007E688 00190200 */  sll        $v1, $v0, 4
/* 7C3D3BC 8007E68C 21284300 */  addu       $a1, $v0, $v1
/* 7C3D3C0 8007E690 0001A228 */  slti       $v0, $a1, 0x100
/* 7C3D3C4 8007E694 03004014 */  bnez       $v0, .Llevel_38_8007E6A4
/* 7C3D3C8 8007E698 00000000 */   nop
/* 7C3D3CC 8007E69C ACF90108 */  j          .Llevel_38_8007E6B0
/* 7C3D3D0 8007E6A0 FF000524 */   addiu     $a1, $zero, 0xFF
.Llevel_38_8007E6A4:
/* 7C3D3D4 8007E6A4 0300A104 */  bgez       $a1, .Llevel_38_8007E6B4
/* 7C3D3D8 8007E6A8 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 7C3D3DC 8007E6AC 21280000 */  addu       $a1, $zero, $zero
.Llevel_38_8007E6B0:
/* 7C3D3E0 8007E6B0 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_38_8007E6B4:
/* 7C3D3E4 8007E6B4 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 7C3D3E8 8007E6B8 0000238E */  lw         $v1, 0x0($s1)
/* 7C3D3EC 8007E6BC 0F000224 */  addiu      $v0, $zero, 0xF
/* 7C3D3F0 8007E6C0 23104300 */  subu       $v0, $v0, $v1
/* 7C3D3F4 8007E6C4 C0100200 */  sll        $v0, $v0, 3
/* 7C3D3F8 8007E6C8 18004400 */  mult       $v0, $a0
/* 7C3D3FC 8007E6CC 10380000 */  mfhi       $a3
/* 7C3D400 8007E6D0 2118E200 */  addu       $v1, $a3, $v0
/* 7C3D404 8007E6D4 C3180300 */  sra        $v1, $v1, 3
/* 7C3D408 8007E6D8 C3170200 */  sra        $v0, $v0, 31
/* 7C3D40C 8007E6DC 23186200 */  subu       $v1, $v1, $v0
/* 7C3D410 8007E6E0 10006228 */  slti       $v0, $v1, 0x10
/* 7C3D414 8007E6E4 03004014 */  bnez       $v0, .Llevel_38_8007E6F4
/* 7C3D418 8007E6E8 00000000 */   nop
/* 7C3D41C 8007E6EC C0F90108 */  j          .Llevel_38_8007E700
/* 7C3D420 8007E6F0 0F000324 */   addiu     $v1, $zero, 0xF
.Llevel_38_8007E6F4:
/* 7C3D424 8007E6F4 03006104 */  bgez       $v1, .Llevel_38_8007E704
/* 7C3D428 8007E6F8 30006234 */   ori       $v0, $v1, 0x30
/* 7C3D42C 8007E6FC 21180000 */  addu       $v1, $zero, $zero
.Llevel_38_8007E700:
/* 7C3D430 8007E700 30006234 */  ori        $v0, $v1, 0x30
.Llevel_38_8007E704:
/* 7C3D434 8007E704 540006A2 */  sb         $a2, 0x54($s0)
/* 7C3D438 8007E708 550000A2 */  sb         $zero, 0x55($s0)
/* 7C3D43C 8007E70C 560005A2 */  sb         $a1, 0x56($s0)
.Llevel_38_8007E710:
/* 7C3D440 8007E710 570002A2 */  sb         $v0, 0x57($s0)
/* 7C3D444 8007E714 0000228E */  lw         $v0, 0x0($s1)
/* 7C3D448 8007E718 00000000 */  nop
/* 7C3D44C 8007E71C 01004224 */  addiu      $v0, $v0, 0x1
/* 7C3D450 8007E720 000022AE */  sw         $v0, 0x0($s1)
.Llevel_38_8007E724:
/* 7C3D454 8007E724 1800BF8F */  lw         $ra, 0x18($sp)
/* 7C3D458 8007E728 1400B18F */  lw         $s1, 0x14($sp)
/* 7C3D45C 8007E72C 1000B08F */  lw         $s0, 0x10($sp)
/* 7C3D460 8007E730 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7C3D464 8007E734 0800E003 */  jr         $ra
/* 7C3D468 8007E738 00000000 */   nop
.size MobyUpdate_577_level_38, . - MobyUpdate_577_level_38
