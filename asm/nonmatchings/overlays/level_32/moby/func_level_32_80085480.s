.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_270_level_32
/* 6DEC9B0 80085480 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6DEC9B4 80085484 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 6DEC9B8 80085488 21888000 */  addu       $s1, $a0, $zero
/* 6DEC9BC 8008548C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEC9C0 80085490 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 6DEC9C4 80085494 2800B4AF */  sw         $s4, 0x28($sp)
/* 6DEC9C8 80085498 2400B3AF */  sw         $s3, 0x24($sp)
/* 6DEC9CC 8008549C 2000B2AF */  sw         $s2, 0x20($sp)
/* 6DEC9D0 800854A0 1800B0AF */  sw         $s0, 0x18($sp)
/* 6DEC9D4 800854A4 49002392 */  lbu        $v1, 0x49($s1)
/* 6DEC9D8 800854A8 0000308E */  lw         $s0, 0x0($s1)
/* 6DEC9DC 800854AC 9B006210 */  beq        $v1, $v0, .Llevel_32_8008571C
/* 6DEC9E0 800854B0 02006228 */   slti      $v0, $v1, 0x2
/* 6DEC9E4 800854B4 05004010 */  beqz       $v0, .Llevel_32_800854CC
/* 6DEC9E8 800854B8 00000000 */   nop
/* 6DEC9EC 800854BC 08006010 */  beqz       $v1, .Llevel_32_800854E0
/* 6DEC9F0 800854C0 00000000 */   nop
/* 6DEC9F4 800854C4 6E160208 */  j          .Llevel_32_800859B8
/* 6DEC9F8 800854C8 00000000 */   nop
.Llevel_32_800854CC:
/* 6DEC9FC 800854CC 02000224 */  addiu      $v0, $zero, 0x2
/* 6DECA00 800854D0 C6006210 */  beq        $v1, $v0, .Llevel_32_800857EC
/* 6DECA04 800854D4 00000000 */   nop
/* 6DECA08 800854D8 6E160208 */  j          .Llevel_32_800859B8
/* 6DECA0C 800854DC 00000000 */   nop
.Llevel_32_800854E0:
/* 6DECA10 800854E0 5A3C010C */  jal        func_8004F168
/* 6DECA14 800854E4 21200002 */   addu      $a0, $s0, $zero
/* 6DECA18 800854E8 0780123C */  lui        $s2, %hi(D_80070328 + 0x13C)
/* 6DECA1C 800854EC 64045226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x13C)
/* 6DECA20 800854F0 0000428E */  lw         $v0, 0x0($s2)
/* 6DECA24 800854F4 00000000 */  nop
/* 6DECA28 800854F8 4E005114 */  bne        $v0, $s1, .Llevel_32_80085634
/* 6DECA2C 800854FC 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DECA30 80085500 CD3C010C */  jal        func_8004F334
/* 6DECA34 80085504 C4FE4526 */   addiu     $a1, $s2, -0x13C
/* 6DECA38 80085508 00034228 */  slti       $v0, $v0, 0x300
/* 6DECA3C 8008550C 1B004010 */  beqz       $v0, .Llevel_32_8008557C
/* 6DECA40 80085510 01000224 */   addiu     $v0, $zero, 0x1
/* 6DECA44 80085514 490022A2 */  sb         $v0, 0x49($s1)
/* 6DECA48 80085518 2400028E */  lw         $v0, 0x24($s0)
/* 6DECA4C 8008551C 00000000 */  nop
/* 6DECA50 80085520 0C004014 */  bnez       $v0, .Llevel_32_80085554
/* 6DECA54 80085524 36010224 */   addiu     $v0, $zero, 0x136
/* 6DECA58 80085528 46000224 */  addiu      $v0, $zero, 0x46
/* 6DECA5C 8008552C 0780013C */  lui        $at, %hi(D_80069020)
/* 6DECA60 80085530 209022AC */  sw         $v0, %lo(D_80069020)($at)
/* 6DECA64 80085534 540B0224 */  addiu      $v0, $zero, 0xB54
/* 6DECA68 80085538 0780013C */  lui        $at, %hi(D_80069024)
/* 6DECA6C 8008553C 249022AC */  sw         $v0, %lo(D_80069024)($at)
/* 6DECA70 80085540 38FF0224 */  addiu      $v0, $zero, -0xC8
/* 6DECA74 80085544 0780013C */  lui        $at, %hi(D_80069028)
/* 6DECA78 80085548 289022AC */  sw         $v0, %lo(D_80069028)($at)
/* 6DECA7C 8008554C 8D150208 */  j          .Llevel_32_80085634
/* 6DECA80 80085550 00000000 */   nop
.Llevel_32_80085554:
/* 6DECA84 80085554 0780013C */  lui        $at, %hi(D_80069020)
/* 6DECA88 80085558 209022AC */  sw         $v0, %lo(D_80069020)($at)
/* 6DECA8C 8008555C D0070224 */  addiu      $v0, $zero, 0x7D0
/* 6DECA90 80085560 0780013C */  lui        $at, %hi(D_80069024)
/* 6DECA94 80085564 249022AC */  sw         $v0, %lo(D_80069024)($at)
/* 6DECA98 80085568 3CFF0224 */  addiu      $v0, $zero, -0xC4
/* 6DECA9C 8008556C 0780013C */  lui        $at, %hi(D_80069028)
/* 6DECAA0 80085570 289022AC */  sw         $v0, %lo(D_80069028)($at)
/* 6DECAA4 80085574 8D150208 */  j          .Llevel_32_80085634
/* 6DECAA8 80085578 00000000 */   nop
.Llevel_32_8008557C:
/* 6DECAAC 8008557C 21300000 */  addu       $a2, $zero, $zero
/* 6DECAB0 80085580 C4FE438E */  lw         $v1, -0x13C($s2)
/* 6DECAB4 80085584 0C00248E */  lw         $a0, 0xC($s1)
/* 6DECAB8 80085588 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 6DECABC 8008558C 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 6DECAC0 80085590 1000258E */  lw         $a1, 0x10($s1)
/* 6DECAC4 80085594 23206400 */  subu       $a0, $v1, $a0
/* 6DECAC8 80085598 203A010C */  jal        func_8004E880
/* 6DECACC 8008559C 23284500 */   subu      $a1, $v0, $a1
/* 6DECAD0 800855A0 46002492 */  lbu        $a0, 0x46($s1)
/* 6DECAD4 800855A4 993C010C */  jal        func_8004F264
/* 6DECAD8 800855A8 21284000 */   addu      $a1, $v0, $zero
/* 6DECADC 800855AC 80004228 */  slti       $v0, $v0, 0x80
/* 6DECAE0 800855B0 04004010 */  beqz       $v0, .Llevel_32_800855C4
/* 6DECAE4 800855B4 00000000 */   nop
/* 6DECAE8 800855B8 46002292 */  lbu        $v0, 0x46($s1)
/* 6DECAEC 800855BC 74150208 */  j          .Llevel_32_800855D0
/* 6DECAF0 800855C0 40004224 */   addiu     $v0, $v0, 0x40
.Llevel_32_800855C4:
/* 6DECAF4 800855C4 46002292 */  lbu        $v0, 0x46($s1)
/* 6DECAF8 800855C8 00000000 */  nop
/* 6DECAFC 800855CC C0004224 */  addiu      $v0, $v0, 0xC0
.Llevel_32_800855D0:
/* 6DECB00 800855D0 FF004330 */  andi       $v1, $v0, 0xFF
/* 6DECB04 800855D4 0010023C */  lui        $v0, (0x10000480 >> 16)
/* 6DECB08 800855D8 80044234 */  ori        $v0, $v0, (0x10000480 & 0xFFFF)
/* 6DECB0C 800855DC 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 6DECB10 800855E0 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 6DECB14 800855E4 07000224 */  addiu      $v0, $zero, 0x7
/* 6DECB18 800855E8 40180300 */  sll        $v1, $v1, 1
/* 6DECB1C 800855EC 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 6DECB20 800855F0 640522AC */  sw         $v0, %lo(D_80070328 + 0x23C)($at)
/* 6DECB24 800855F4 0680013C */  lui        $at, %hi(D_80065920)
/* 6DECB28 800855F8 21082300 */  addu       $at, $at, $v1
/* 6DECB2C 800855FC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DECB30 80085600 00000000 */  nop
/* 6DECB34 80085604 83110200 */  sra        $v0, $v0, 6
/* 6DECB38 80085608 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 6DECB3C 8008560C 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 6DECB40 80085610 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DECB44 80085614 21082300 */  addu       $at, $at, $v1
/* 6DECB48 80085618 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 6DECB4C 8008561C 10000324 */  addiu      $v1, $zero, 0x10
/* 6DECB50 80085620 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 6DECB54 80085624 4C0523AC */  sw         $v1, %lo(D_80070328 + 0x224)($at)
/* 6DECB58 80085628 83110200 */  sra        $v0, $v0, 6
/* 6DECB5C 8008562C 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 6DECB60 80085630 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
.Llevel_32_80085634:
/* 6DECB64 80085634 1400228E */  lw         $v0, 0x14($s1)
/* 6DECB68 80085638 00000000 */  nop
/* 6DECB6C 8008563C 31754228 */  slti       $v0, $v0, 0x7531
/* 6DECB70 80085640 DD004014 */  bnez       $v0, .Llevel_32_800859B8
/* 6DECB74 80085644 00000000 */   nop
/* 6DECB78 80085648 2800038E */  lw         $v1, 0x28($s0)
/* 6DECB7C 8008564C 0680043C */  lui        $a0, %hi(main_TEXT_END)
/* 6DECB80 80085650 9C4F8424 */  addiu      $a0, $a0, %lo(main_TEXT_END)
/* 6DECB84 80085654 2B106400 */  sltu       $v0, $v1, $a0
/* 6DECB88 80085658 D7004010 */  beqz       $v0, .Llevel_32_800859B8
/* 6DECB8C 8008565C FF7F0224 */   addiu     $v0, $zero, 0x7FFF
/* 6DECB90 80085660 2B104300 */  sltu       $v0, $v0, $v1
/* 6DECB94 80085664 07004014 */  bnez       $v0, .Llevel_32_80085684
/* 6DECB98 80085668 21280000 */   addu      $a1, $zero, $zero
/* 6DECB9C 8008566C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6DECBA0 80085670 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6DECBA4 80085674 0180033C */  lui        $v1, %hi(main_TEXT_START + 0x2)
/* 6DECBA8 80085678 0E206324 */  addiu      $v1, $v1, %lo(main_TEXT_START + 0x2)
/* 6DECBAC 8008567C 21104300 */  addu       $v0, $v0, $v1
/* 6DECBB0 80085680 280002AE */  sw         $v0, 0x28($s0)
.Llevel_32_80085684:
/* 6DECBB4 80085684 21388000 */  addu       $a3, $a0, $zero
/* 6DECBB8 80085688 0780063C */  lui        $a2, %hi(func_level_32_80075B98)
/* 6DECBBC 8008568C 985BC624 */  addiu      $a2, $a2, %lo(func_level_32_80075B98)
.Llevel_32_80085690:
/* 6DECBC0 80085690 2800028E */  lw         $v0, 0x28($s0)
/* 6DECBC4 80085694 21200000 */  addu       $a0, $zero, $zero
/* 6DECBC8 80085698 00004290 */  lbu        $v0, 0x0($v0)
/* 6DECBCC 8008569C 1800038E */  lw         $v1, 0x18($s0)
/* 6DECBD0 800856A0 00120200 */  sll        $v0, $v0, 8
/* 6DECBD4 800856A4 26186200 */  xor        $v1, $v1, $v0
/* 6DECBD8 800856A8 180003AE */  sw         $v1, 0x18($s0)
.Llevel_32_800856AC:
/* 6DECBDC 800856AC 1800038E */  lw         $v1, 0x18($s0)
/* 6DECBE0 800856B0 00000000 */  nop
/* 6DECBE4 800856B4 00806230 */  andi       $v0, $v1, 0x8000
/* 6DECBE8 800856B8 02004010 */  beqz       $v0, .Llevel_32_800856C4
/* 6DECBEC 800856BC 40100300 */   sll       $v0, $v1, 1
/* 6DECBF0 800856C0 05804238 */  xori       $v0, $v0, 0x8005
.Llevel_32_800856C4:
/* 6DECBF4 800856C4 180002AE */  sw         $v0, 0x18($s0)
/* 6DECBF8 800856C8 01008424 */  addiu      $a0, $a0, 0x1
/* 6DECBFC 800856CC 08008228 */  slti       $v0, $a0, 0x8
/* 6DECC00 800856D0 F6FF4014 */  bnez       $v0, .Llevel_32_800856AC
/* 6DECC04 800856D4 00000000 */   nop
/* 6DECC08 800856D8 1800028E */  lw         $v0, 0x18($s0)
/* 6DECC0C 800856DC 2800038E */  lw         $v1, 0x28($s0)
/* 6DECC10 800856E0 03004230 */  andi       $v0, $v0, 0x3
/* 6DECC14 800856E4 01004224 */  addiu      $v0, $v0, 0x1
/* 6DECC18 800856E8 21186200 */  addu       $v1, $v1, $v0
/* 6DECC1C 800856EC 280003AE */  sw         $v1, 0x28($s0)
/* 6DECC20 800856F0 2B186700 */  sltu       $v1, $v1, $a3
/* 6DECC24 800856F4 04006014 */  bnez       $v1, .Llevel_32_80085708
/* 6DECC28 800856F8 0100A524 */   addiu     $a1, $a1, 0x1
/* 6DECC2C 800856FC 280006AE */  sw         $a2, 0x28($s0)
/* 6DECC30 80085700 40000524 */  addiu      $a1, $zero, 0x40
/* 6DECC34 80085704 0100A524 */  addiu      $a1, $a1, 0x1
.Llevel_32_80085708:
/* 6DECC38 80085708 4000A228 */  slti       $v0, $a1, 0x40
/* 6DECC3C 8008570C AA004010 */  beqz       $v0, .Llevel_32_800859B8
/* 6DECC40 80085710 00000000 */   nop
/* 6DECC44 80085714 A4150208 */  j          .Llevel_32_80085690
/* 6DECC48 80085718 00000000 */   nop
.Llevel_32_8008571C:
/* 6DECC4C 8008571C 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 6DECC50 80085720 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 6DECC54 80085724 00000000 */  nop
/* 6DECC58 80085728 40004230 */  andi       $v0, $v0, 0x40
/* 6DECC5C 8008572C 07004014 */  bnez       $v0, .Llevel_32_8008574C
/* 6DECC60 80085730 00000000 */   nop
/* 6DECC64 80085734 0780133C */  lui        $s3, %hi(D_80070328 + 0x13C)
/* 6DECC68 80085738 64047326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x13C)
/* 6DECC6C 8008573C 0000628E */  lw         $v0, 0x0($s3)
/* 6DECC70 80085740 00000000 */  nop
/* 6DECC74 80085744 0A005110 */  beq        $v0, $s1, .Llevel_32_80085770
/* 6DECC78 80085748 00000000 */   nop
.Llevel_32_8008574C:
/* 6DECC7C 8008574C 0780043C */  lui        $a0, %hi(D_8006E160)
/* 6DECC80 80085750 60E18424 */  addiu      $a0, $a0, %lo(D_8006E160)
/* 6DECC84 80085754 490020A2 */  sb         $zero, 0x49($s1)
/* 6DECC88 80085758 0000838C */  lw         $v1, 0x0($a0)
/* 6DECC8C 8008575C 0E000224 */  addiu      $v0, $zero, 0xE
/* 6DECC90 80085760 95006214 */  bne        $v1, $v0, .Llevel_32_800859B8
/* 6DECC94 80085764 00000000 */   nop
/* 6DECC98 80085768 6E160208 */  j          .Llevel_32_800859B8
/* 6DECC9C 8008576C 000080AC */   sw        $zero, 0x0($a0)
.Llevel_32_80085770:
/* 6DECCA0 80085770 0780123C */  lui        $s2, %hi(D_8006E160)
/* 6DECCA4 80085774 60E15226 */  addiu      $s2, $s2, %lo(D_8006E160)
/* 6DECCA8 80085778 0000428E */  lw         $v0, 0x0($s2)
/* 6DECCAC 8008577C 00000000 */  nop
/* 6DECCB0 80085780 03004014 */  bnez       $v0, .Llevel_32_80085790
/* 6DECCB4 80085784 21202002 */   addu      $a0, $s1, $zero
/* 6DECCB8 80085788 B34E000C */  jal        func_80013ACC
/* 6DECCBC 8008578C 0E000524 */   addiu     $a1, $zero, 0xE
.Llevel_32_80085790:
/* 6DECCC0 80085790 0000438E */  lw         $v1, 0x0($s2)
/* 6DECCC4 80085794 0E000224 */  addiu      $v0, $zero, 0xE
/* 6DECCC8 80085798 87006214 */  bne        $v1, $v0, .Llevel_32_800859B8
/* 6DECCCC 8008579C 0010023C */   lui       $v0, (0x10000040 >> 16)
/* 6DECCD0 800857A0 40004234 */  ori        $v0, $v0, (0x10000040 & 0xFFFF)
/* 6DECCD4 800857A4 F0006426 */  addiu      $a0, $s3, 0xF0
/* 6DECCD8 800857A8 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 6DECCDC 800857AC 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 6DECCE0 800857B0 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 6DECCE4 800857B4 400531AC */  sw         $s1, %lo(D_80070328 + 0x218)($at)
/* 6DECCE8 800857B8 5E3C010C */  jal        func_8004F178
/* 6DECCEC 800857BC 0C002526 */   addiu     $a1, $s1, 0xC
/* 6DECCF0 800857C0 46002292 */  lbu        $v0, 0x46($s1)
/* 6DECCF4 800857C4 0780033C */  lui        $v1, %hi(D_80070328 + 0x214)
/* 6DECCF8 800857C8 3C05638C */  lw         $v1, %lo(D_80070328 + 0x214)($v1)
/* 6DECCFC 800857CC 0780013C */  lui        $at, %hi(D_80070328 + 0x238)
/* 6DECD00 800857D0 600522AC */  sw         $v0, %lo(D_80070328 + 0x238)($at)
/* 6DECD04 800857D4 02000224 */  addiu      $v0, $zero, 0x2
/* 6DECD08 800857D8 77006214 */  bne        $v1, $v0, .Llevel_32_800859B8
/* 6DECD0C 800857DC 02000224 */   addiu     $v0, $zero, 0x2
/* 6DECD10 800857E0 0C0000AE */  sw         $zero, 0xC($s0)
/* 6DECD14 800857E4 6E160208 */  j          .Llevel_32_800859B8
/* 6DECD18 800857E8 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_32_800857EC:
/* 6DECD1C 800857EC 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 6DECD20 800857F0 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 6DECD24 800857F4 00000000 */  nop
/* 6DECD28 800857F8 40004230 */  andi       $v0, $v0, 0x40
/* 6DECD2C 800857FC 07004014 */  bnez       $v0, .Llevel_32_8008581C
/* 6DECD30 80085800 00000000 */   nop
/* 6DECD34 80085804 0780133C */  lui        $s3, %hi(D_80070328 + 0x13C)
/* 6DECD38 80085808 64047326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x13C)
/* 6DECD3C 8008580C 0000628E */  lw         $v0, 0x0($s3)
/* 6DECD40 80085810 00000000 */  nop
/* 6DECD44 80085814 0A005110 */  beq        $v0, $s1, .Llevel_32_80085840
/* 6DECD48 80085818 00000000 */   nop
.Llevel_32_8008581C:
/* 6DECD4C 8008581C 0780043C */  lui        $a0, %hi(D_8006E160)
/* 6DECD50 80085820 60E18424 */  addiu      $a0, $a0, %lo(D_8006E160)
/* 6DECD54 80085824 490020A2 */  sb         $zero, 0x49($s1)
/* 6DECD58 80085828 0000838C */  lw         $v1, 0x0($a0)
/* 6DECD5C 8008582C 0E000224 */  addiu      $v0, $zero, 0xE
/* 6DECD60 80085830 5E006214 */  bne        $v1, $v0, .Llevel_32_800859AC
/* 6DECD64 80085834 00000000 */   nop
/* 6DECD68 80085838 6B160208 */  j          .Llevel_32_800859AC
/* 6DECD6C 8008583C 000080AC */   sw        $zero, 0x0($a0)
.Llevel_32_80085840:
/* 6DECD70 80085840 0780123C */  lui        $s2, %hi(D_8006E160)
/* 6DECD74 80085844 60E15226 */  addiu      $s2, $s2, %lo(D_8006E160)
/* 6DECD78 80085848 0000428E */  lw         $v0, 0x0($s2)
/* 6DECD7C 8008584C 1400148E */  lw         $s4, 0x14($s0)
/* 6DECD80 80085850 03004014 */  bnez       $v0, .Llevel_32_80085860
/* 6DECD84 80085854 21202002 */   addu      $a0, $s1, $zero
/* 6DECD88 80085858 B34E000C */  jal        func_80013ACC
/* 6DECD8C 8008585C 0E000524 */   addiu     $a1, $zero, 0xE
.Llevel_32_80085860:
/* 6DECD90 80085860 0000438E */  lw         $v1, 0x0($s2)
/* 6DECD94 80085864 0E000224 */  addiu      $v0, $zero, 0xE
/* 6DECD98 80085868 32006214 */  bne        $v1, $v0, .Llevel_32_80085934
/* 6DECD9C 8008586C F8FF0224 */   addiu     $v0, $zero, -0x8
/* 6DECDA0 80085870 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DECDA4 80085874 21280002 */  addu       $a1, $s0, $zero
/* 6DECDA8 80085878 3E04010C */  jal        func_800410F8
/* 6DECDAC 8008587C 01000624 */   addiu     $a2, $zero, 0x1
/* 6DECDB0 80085880 0110063C */  lui        $a2, (0x10018000 >> 16)
/* 6DECDB4 80085884 0080C634 */  ori        $a2, $a2, (0x10018000 & 0xFFFF)
/* 6DECDB8 80085888 F0006426 */  addiu      $a0, $s3, 0xF0
/* 6DECDBC 8008588C 1000A38F */  lw         $v1, 0x10($sp)
/* 6DECDC0 80085890 46002292 */  lbu        $v0, 0x46($s1)
/* 6DECDC4 80085894 0A006324 */  addiu      $v1, $v1, 0xA
/* 6DECDC8 80085898 43190300 */  sra        $v1, $v1, 5
/* 6DECDCC 8008589C 21104300 */  addu       $v0, $v0, $v1
/* 6DECDD0 800858A0 460022A2 */  sb         $v0, 0x46($s1)
/* 6DECDD4 800858A4 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 6DECDD8 800858A8 340526AC */  sw         $a2, %lo(D_80070328 + 0x20C)($at)
/* 6DECDDC 800858AC 5E3C010C */  jal        func_8004F178
/* 6DECDE0 800858B0 0C002526 */   addiu     $a1, $s1, 0xC
/* 6DECDE4 800858B4 0780023C */  lui        $v0, %hi(D_80070328 + 0x234)
/* 6DECDE8 800858B8 5C05428C */  lw         $v0, %lo(D_80070328 + 0x234)($v0)
/* 6DECDEC 800858BC 00000000 */  nop
/* 6DECDF0 800858C0 83024224 */  addiu      $v0, $v0, 0x283
/* 6DECDF4 800858C4 0780013C */  lui        $at, %hi(D_80070328 + 0x234)
/* 6DECDF8 800858C8 5C0522AC */  sw         $v0, %lo(D_80070328 + 0x234)($at)
/* 6DECDFC 800858CC 44002292 */  lbu        $v0, 0x44($s1)
/* 6DECE00 800858D0 0780013C */  lui        $at, %hi(D_80070328 + 0x228)
/* 6DECE04 800858D4 500522A0 */  sb         $v0, %lo(D_80070328 + 0x228)($at)
/* 6DECE08 800858D8 45002292 */  lbu        $v0, 0x45($s1)
/* 6DECE0C 800858DC 0780013C */  lui        $at, %hi(D_80070328 + 0x229)
/* 6DECE10 800858E0 510522A0 */  sb         $v0, %lo(D_80070328 + 0x229)($at)
/* 6DECE14 800858E4 46002292 */  lbu        $v0, 0x46($s1)
/* 6DECE18 800858E8 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 6DECE1C 800858EC 640520AC */  sw         $zero, %lo(D_80070328 + 0x23C)($at)
/* 6DECE20 800858F0 0780013C */  lui        $at, %hi(D_80070328 + 0x22A)
/* 6DECE24 800858F4 520522A0 */  sb         $v0, %lo(D_80070328 + 0x22A)($at)
/* 6DECE28 800858F8 1400A28F */  lw         $v0, 0x14($sp)
/* 6DECE2C 800858FC 1400038E */  lw         $v1, 0x14($s0)
/* 6DECE30 80085900 43110200 */  sra        $v0, $v0, 5
/* 6DECE34 80085904 23186200 */  subu       $v1, $v1, $v0
/* 6DECE38 80085908 02006104 */  bgez       $v1, .Llevel_32_80085914
/* 6DECE3C 8008590C 140003AE */   sw        $v1, 0x14($s0)
/* 6DECE40 80085910 140000AE */  sw         $zero, 0x14($s0)
.Llevel_32_80085914:
/* 6DECE44 80085914 1400028E */  lw         $v0, 0x14($s0)
/* 6DECE48 80085918 00000000 */  nop
/* 6DECE4C 8008591C 79004228 */  slti       $v0, $v0, 0x79
/* 6DECE50 80085920 04004014 */  bnez       $v0, .Llevel_32_80085934
/* 6DECE54 80085924 F8FF0224 */   addiu     $v0, $zero, -0x8
/* 6DECE58 80085928 78000224 */  addiu      $v0, $zero, 0x78
/* 6DECE5C 8008592C 140002AE */  sw         $v0, 0x14($s0)
/* 6DECE60 80085930 F8FF0224 */  addiu      $v0, $zero, -0x8
.Llevel_32_80085934:
/* 6DECE64 80085934 1400038E */  lw         $v1, 0x14($s0)
/* 6DECE68 80085938 24208202 */  and        $a0, $s4, $v0
/* 6DECE6C 8008593C 24186200 */  and        $v1, $v1, $v0
/* 6DECE70 80085940 0F008310 */  beq        $a0, $v1, .Llevel_32_80085980
/* 6DECE74 80085944 0C000426 */   addiu     $a0, $s0, 0xC
/* 6DECE78 80085948 1C00058E */  lw         $a1, 0x1C($s0)
/* 6DECE7C 8008594C F0EF000C */  jal        func_8003BFC0
/* 6DECE80 80085950 21202002 */   addu      $a0, $s1, $zero
/* 6DECE84 80085954 05004010 */  beqz       $v0, .Llevel_32_8008596C
/* 6DECE88 80085958 21202002 */   addu      $a0, $s1, $zero
/* 6DECE8C 8008595C 1C00048E */  lw         $a0, 0x1C($s0)
/* 6DECE90 80085960 9CEF000C */  jal        func_8003BE70
/* 6DECE94 80085964 00000000 */   nop
/* 6DECE98 80085968 21202002 */  addu       $a0, $s1, $zero
.Llevel_32_8008596C:
/* 6DECE9C 8008596C 21280000 */  addu       $a1, $zero, $zero
/* 6DECEA0 80085970 AFEE000C */  jal        func_8003BABC
/* 6DECEA4 80085974 21300000 */   addu      $a2, $zero, $zero
/* 6DECEA8 80085978 1C0002AE */  sw         $v0, 0x1C($s0)
/* 6DECEAC 8008597C 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_32_80085980:
/* 6DECEB0 80085980 69D6000C */  jal        func_800359A4
/* 6DECEB4 80085984 04000524 */   addiu     $a1, $zero, 0x4
/* 6DECEB8 80085988 09004010 */  beqz       $v0, .Llevel_32_800859B0
/* 6DECEBC 8008598C 21202002 */   addu      $a0, $s1, $zero
/* 6DECEC0 80085990 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 6DECEC4 80085994 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 6DECEC8 80085998 00000000 */  nop
/* 6DECECC 8008599C 20004230 */  andi       $v0, $v0, 0x20
/* 6DECED0 800859A0 03004010 */  beqz       $v0, .Llevel_32_800859B0
/* 6DECED4 800859A4 01000224 */   addiu     $v0, $zero, 0x1
/* 6DECED8 800859A8 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_32_800859AC:
/* 6DECEDC 800859AC 21202002 */  addu       $a0, $s1, $zero
.Llevel_32_800859B0:
/* 6DECEE0 800859B0 4957010C */  jal        func_80055D24
/* 6DECEE4 800859B4 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_32_800859B8:
/* 6DECEE8 800859B8 2800028E */  lw         $v0, 0x28($s0)
/* 6DECEEC 800859BC 0780033C */  lui        $v1, %hi(func_level_32_80075B98)
/* 6DECEF0 800859C0 985B6324 */  addiu      $v1, $v1, %lo(func_level_32_80075B98)
/* 6DECEF4 800859C4 2B104300 */  sltu       $v0, $v0, $v1
/* 6DECEF8 800859C8 21004014 */  bnez       $v0, .Llevel_32_80085A50
/* 6DECEFC 800859CC 00000000 */   nop
/* 6DECF00 800859D0 21280000 */  addu       $a1, $zero, $zero
/* 6DECF04 800859D4 0A80063C */  lui        $a2, %hi(level_32_data_start)
/* 6DECF08 800859D8 30D0C624 */  addiu      $a2, $a2, %lo(level_32_data_start)
.Llevel_32_800859DC:
/* 6DECF0C 800859DC 2800038E */  lw         $v1, 0x28($s0)
/* 6DECF10 800859E0 00000000 */  nop
/* 6DECF14 800859E4 2B106600 */  sltu       $v0, $v1, $a2
/* 6DECF18 800859E8 19004010 */  beqz       $v0, .Llevel_32_80085A50
/* 6DECF1C 800859EC 00000000 */   nop
/* 6DECF20 800859F0 21200000 */  addu       $a0, $zero, $zero
/* 6DECF24 800859F4 00006290 */  lbu        $v0, 0x0($v1)
/* 6DECF28 800859F8 1800038E */  lw         $v1, 0x18($s0)
/* 6DECF2C 800859FC 00120200 */  sll        $v0, $v0, 8
/* 6DECF30 80085A00 26186200 */  xor        $v1, $v1, $v0
/* 6DECF34 80085A04 180003AE */  sw         $v1, 0x18($s0)
.Llevel_32_80085A08:
/* 6DECF38 80085A08 1800038E */  lw         $v1, 0x18($s0)
/* 6DECF3C 80085A0C 00000000 */  nop
/* 6DECF40 80085A10 00806230 */  andi       $v0, $v1, 0x8000
/* 6DECF44 80085A14 02004010 */  beqz       $v0, .Llevel_32_80085A20
/* 6DECF48 80085A18 40100300 */   sll       $v0, $v1, 1
/* 6DECF4C 80085A1C 05804238 */  xori       $v0, $v0, 0x8005
.Llevel_32_80085A20:
/* 6DECF50 80085A20 180002AE */  sw         $v0, 0x18($s0)
/* 6DECF54 80085A24 01008424 */  addiu      $a0, $a0, 0x1
/* 6DECF58 80085A28 08008228 */  slti       $v0, $a0, 0x8
/* 6DECF5C 80085A2C F6FF4014 */  bnez       $v0, .Llevel_32_80085A08
/* 6DECF60 80085A30 00000000 */   nop
/* 6DECF64 80085A34 2800028E */  lw         $v0, 0x28($s0)
/* 6DECF68 80085A38 0100A524 */  addiu      $a1, $a1, 0x1
/* 6DECF6C 80085A3C 01004224 */  addiu      $v0, $v0, 0x1
/* 6DECF70 80085A40 280002AE */  sw         $v0, 0x28($s0)
/* 6DECF74 80085A44 4000A228 */  slti       $v0, $a1, 0x40
/* 6DECF78 80085A48 E4FF4014 */  bnez       $v0, .Llevel_32_800859DC
/* 6DECF7C 80085A4C 00000000 */   nop
.Llevel_32_80085A50:
/* 6DECF80 80085A50 48002392 */  lbu        $v1, 0x48($s1)
/* 6DECF84 80085A54 01000224 */  addiu      $v0, $zero, 0x1
/* 6DECF88 80085A58 11006210 */  beq        $v1, $v0, .Llevel_32_80085AA0
/* 6DECF8C 80085A5C 02006228 */   slti      $v0, $v1, 0x2
/* 6DECF90 80085A60 05004010 */  beqz       $v0, .Llevel_32_80085A78
/* 6DECF94 80085A64 00000000 */   nop
/* 6DECF98 80085A68 08006010 */  beqz       $v1, .Llevel_32_80085A8C
/* 6DECF9C 80085A6C 02000224 */   addiu     $v0, $zero, 0x2
/* 6DECFA0 80085A70 D4160208 */  j          .Llevel_32_80085B50
/* 6DECFA4 80085A74 00000000 */   nop
.Llevel_32_80085A78:
/* 6DECFA8 80085A78 02000224 */  addiu      $v0, $zero, 0x2
/* 6DECFAC 80085A7C 21006210 */  beq        $v1, $v0, .Llevel_32_80085B04
/* 6DECFB0 80085A80 01000224 */   addiu     $v0, $zero, 0x1
/* 6DECFB4 80085A84 D4160208 */  j          .Llevel_32_80085B50
/* 6DECFB8 80085A88 00000000 */   nop
.Llevel_32_80085A8C:
/* 6DECFBC 80085A8C 3C0020A2 */  sb         $zero, 0x3C($s1)
/* 6DECFC0 80085A90 3D0022A2 */  sb         $v0, 0x3D($s1)
/* 6DECFC4 80085A94 3E0020A2 */  sb         $zero, 0x3E($s1)
/* 6DECFC8 80085A98 D0160208 */  j          .Llevel_32_80085B40
/* 6DECFCC 80085A9C 3F0020A2 */   sb        $zero, 0x3F($s1)
.Llevel_32_80085AA0:
/* 6DECFD0 80085AA0 21202002 */  addu       $a0, $s1, $zero
/* 6DECFD4 80085AA4 01000524 */  addiu      $a1, $zero, 0x1
/* 6DECFD8 80085AA8 AFEE000C */  jal        func_8003BABC
/* 6DECFDC 80085AAC 21300000 */   addu      $a2, $zero, $zero
/* 6DECFE0 80085AB0 21202002 */  addu       $a0, $s1, $zero
/* 6DECFE4 80085AB4 4957010C */  jal        func_80055D24
/* 6DECFE8 80085AB8 04000524 */   addiu     $a1, $zero, 0x4
/* 6DECFEC 80085ABC C2000424 */  addiu      $a0, $zero, 0xC2
/* 6DECFF0 80085AC0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DECFF4 80085AC4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DECFF8 80085AC8 00000000 */  nop
/* 6DECFFC 80085ACC 09F84000 */  jalr       $v0
/* 6DED000 80085AD0 21282002 */   addu      $a1, $s1, $zero
/* 6DED004 80085AD4 1E000224 */  addiu      $v0, $zero, 0x1E
/* 6DED008 80085AD8 0C0002AE */  sw         $v0, 0xC($s0)
/* 6DED00C 80085ADC 01000224 */  addiu      $v0, $zero, 0x1
/* 6DED010 80085AE0 3C0022A2 */  sb         $v0, 0x3C($s1)
/* 6DED014 80085AE4 03000224 */  addiu      $v0, $zero, 0x3
/* 6DED018 80085AE8 3D0022A2 */  sb         $v0, 0x3D($s1)
/* 6DED01C 80085AEC 3E0020A2 */  sb         $zero, 0x3E($s1)
/* 6DED020 80085AF0 3F0020A2 */  sb         $zero, 0x3F($s1)
/* 6DED024 80085AF4 1400028E */  lw         $v0, 0x14($s0)
/* 6DED028 80085AF8 02000324 */  addiu      $v1, $zero, 0x2
/* 6DED02C 80085AFC D1160208 */  j          .Llevel_32_80085B44
/* 6DED030 80085B00 480023A2 */   sb        $v1, 0x48($s1)
.Llevel_32_80085B04:
/* 6DED034 80085B04 3C0022A2 */  sb         $v0, 0x3C($s1)
/* 6DED038 80085B08 3E002292 */  lbu        $v0, 0x3E($s1)
/* 6DED03C 80085B0C 03000324 */  addiu      $v1, $zero, 0x3
/* 6DED040 80085B10 3D0023A2 */  sb         $v1, 0x3D($s1)
/* 6DED044 80085B14 01004224 */  addiu      $v0, $v0, 0x1
/* 6DED048 80085B18 3E0022A2 */  sb         $v0, 0x3E($s1)
/* 6DED04C 80085B1C FF004230 */  andi       $v0, $v0, 0xFF
/* 6DED050 80085B20 0E00422C */  sltiu      $v0, $v0, 0xE
/* 6DED054 80085B24 03004014 */  bnez       $v0, .Llevel_32_80085B34
/* 6DED058 80085B28 0E000224 */   addiu     $v0, $zero, 0xE
/* 6DED05C 80085B2C 3E0022A2 */  sb         $v0, 0x3E($s1)
/* 6DED060 80085B30 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_32_80085B34:
/* 6DED064 80085B34 3E002292 */  lbu        $v0, 0x3E($s1)
/* 6DED068 80085B38 00000000 */  nop
/* 6DED06C 80085B3C 3F0022A2 */  sb         $v0, 0x3F($s1)
.Llevel_32_80085B40:
/* 6DED070 80085B40 1400028E */  lw         $v0, 0x14($s0)
.Llevel_32_80085B44:
/* 6DED074 80085B44 00000000 */  nop
/* 6DED078 80085B48 C3100200 */  sra        $v0, $v0, 3
/* 6DED07C 80085B4C 400022A2 */  sb         $v0, 0x40($s1)
.Llevel_32_80085B50:
/* 6DED080 80085B50 2800038E */  lw         $v1, 0x28($s0)
/* 6DED084 80085B54 0A80023C */  lui        $v0, %hi(level_32_data_start)
/* 6DED088 80085B58 30D04224 */  addiu      $v0, $v0, %lo(level_32_data_start)
/* 6DED08C 80085B5C 08006214 */  bne        $v1, $v0, .Llevel_32_80085B80
/* 6DED090 80085B60 00000000 */   nop
/* 6DED094 80085B64 1800028E */  lw         $v0, 0x18($s0)
/* 6DED098 80085B68 00000000 */  nop
/* 6DED09C 80085B6C 04004010 */  beqz       $v0, .Llevel_32_80085B80
/* 6DED0A0 80085B70 01000224 */   addiu     $v0, $zero, 0x1
/* 6DED0A4 80085B74 0780013C */  lui        $at, %hi(D_80071573)
/* 6DED0A8 80085B78 731522A0 */  sb         $v0, %lo(D_80071573)($at)
/* 6DED0AC 80085B7C 180000AE */  sw         $zero, 0x18($s0)
.Llevel_32_80085B80:
/* 6DED0B0 80085B80 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 6DED0B4 80085B84 2800B48F */  lw         $s4, 0x28($sp)
/* 6DED0B8 80085B88 2400B38F */  lw         $s3, 0x24($sp)
/* 6DED0BC 80085B8C 2000B28F */  lw         $s2, 0x20($sp)
/* 6DED0C0 80085B90 1C00B18F */  lw         $s1, 0x1C($sp)
/* 6DED0C4 80085B94 1800B08F */  lw         $s0, 0x18($sp)
/* 6DED0C8 80085B98 3000BD27 */  addiu      $sp, $sp, 0x30
/* 6DED0CC 80085B9C 0800E003 */  jr         $ra
/* 6DED0D0 80085BA0 00000000 */   nop
.size MobyUpdate_270_level_32, . - MobyUpdate_270_level_32
