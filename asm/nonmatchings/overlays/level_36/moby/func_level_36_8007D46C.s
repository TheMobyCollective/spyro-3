.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_36_8007D46C
/* 78DD99C 8007D46C A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 78DD9A0 8007D470 4400B1AF */  sw         $s1, 0x44($sp)
/* 78DD9A4 8007D474 21888000 */  addu       $s1, $a0, $zero
/* 78DD9A8 8007D478 01000224 */  addiu      $v0, $zero, 0x1
/* 78DD9AC 8007D47C 5000BFAF */  sw         $ra, 0x50($sp)
/* 78DD9B0 8007D480 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 78DD9B4 8007D484 4800B2AF */  sw         $s2, 0x48($sp)
/* 78DD9B8 8007D488 4000B0AF */  sw         $s0, 0x40($sp)
/* 78DD9BC 8007D48C 48002392 */  lbu        $v1, 0x48($s1)
/* 78DD9C0 8007D490 0000338E */  lw         $s3, 0x0($s1)
/* 78DD9C4 8007D494 07006210 */  beq        $v1, $v0, .Llevel_36_8007D4B4
/* 78DD9C8 8007D498 02006228 */   slti      $v0, $v1, 0x2
/* 78DD9CC 8007D49C 0F014014 */  bnez       $v0, .Llevel_36_8007D8DC
/* 78DD9D0 8007D4A0 02000224 */   addiu     $v0, $zero, 0x2
/* 78DD9D4 8007D4A4 06006210 */  beq        $v1, $v0, .Llevel_36_8007D4C0
/* 78DD9D8 8007D4A8 2000A427 */   addiu     $a0, $sp, 0x20
/* 78DD9DC 8007D4AC 37F60108 */  j          .Llevel_36_8007D8DC
/* 78DD9E0 8007D4B0 00000000 */   nop
.Llevel_36_8007D4B4:
/* 78DD9E4 8007D4B4 02000224 */  addiu      $v0, $zero, 0x2
/* 78DD9E8 8007D4B8 37F60108 */  j          .Llevel_36_8007D8DC
/* 78DD9EC 8007D4BC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_36_8007D4C0:
/* 78DD9F0 8007D4C0 0C003026 */  addiu      $s0, $s1, 0xC
/* 78DD9F4 8007D4C4 5E3C010C */  jal        func_8004F178
/* 78DD9F8 8007D4C8 21280002 */   addu      $a1, $s0, $zero
/* 78DD9FC 8007D4CC 49002292 */  lbu        $v0, 0x49($s1)
/* 78DDA00 8007D4D0 00000000 */  nop
/* 78DDA04 8007D4D4 11004010 */  beqz       $v0, .Llevel_36_8007D51C
/* 78DDA08 8007D4D8 81000224 */   addiu     $v0, $zero, 0x81
/* 78DDA0C 8007D4DC 0780033C */  lui        $v1, %hi(D_8006E048)
/* 78DDA10 8007D4E0 48E0638C */  lw         $v1, %lo(D_8006E048)($v1)
/* 78DDA14 8007D4E4 00000000 */  nop
/* 78DDA18 8007D4E8 0C006214 */  bne        $v1, $v0, .Llevel_36_8007D51C
/* 78DDA1C 8007D4EC 21200002 */   addu      $a0, $s0, $zero
/* 78DDA20 8007D4F0 0000628E */  lw         $v0, 0x0($s3)
/* 78DDA24 8007D4F4 00000000 */  nop
/* 78DDA28 8007D4F8 00004584 */  lh         $a1, 0x0($v0)
/* 78DDA2C 8007D4FC 0C00428C */  lw         $v0, 0xC($v0)
/* 78DDA30 8007D500 00290500 */  sll        $a1, $a1, 4
/* 78DDA34 8007D504 F0FFA524 */  addiu      $a1, $a1, -0x10
/* 78DDA38 8007D508 5E3C010C */  jal        func_8004F178
/* 78DDA3C 8007D50C 21284500 */   addu      $a1, $v0, $a1
/* 78DDA40 8007D510 0000628E */  lw         $v0, 0x0($s3)
/* 78DDA44 8007D514 5AF50108 */  j          .Llevel_36_8007D568
/* 78DDA48 8007D518 020040A4 */   sh        $zero, 0x2($v0)
.Llevel_36_8007D51C:
/* 78DDA4C 8007D51C 0000658E */  lw         $a1, 0x0($s3)
/* 78DDA50 8007D520 00000000 */  nop
/* 78DDA54 8007D524 0000A384 */  lh         $v1, 0x0($a1)
/* 78DDA58 8007D528 0200A284 */  lh         $v0, 0x2($a1)
/* 78DDA5C 8007D52C 01006424 */  addiu      $a0, $v1, 0x1
/* 78DDA60 8007D530 21104400 */  addu       $v0, $v0, $a0
/* 78DDA64 8007D534 1A004300 */  div        $zero, $v0, $v1
/* 78DDA68 8007D538 02006014 */  bnez       $v1, .Llevel_36_8007D544
/* 78DDA6C 8007D53C 00000000 */   nop
/* 78DDA70 8007D540 0D000700 */  break      7
.Llevel_36_8007D544:
/* 78DDA74 8007D544 FFFF0124 */  addiu      $at, $zero, -0x1
/* 78DDA78 8007D548 04006114 */  bne        $v1, $at, .Llevel_36_8007D55C
/* 78DDA7C 8007D54C 0080013C */   lui       $at, (0x80000000 >> 16)
/* 78DDA80 8007D550 02004114 */  bne        $v0, $at, .Llevel_36_8007D55C
/* 78DDA84 8007D554 00000000 */   nop
/* 78DDA88 8007D558 0D000600 */  break      6
.Llevel_36_8007D55C:
/* 78DDA8C 8007D55C 10180000 */  mfhi       $v1
/* 78DDA90 8007D560 00000000 */  nop
/* 78DDA94 8007D564 0200A3A4 */  sh         $v1, 0x2($a1)
.Llevel_36_8007D568:
/* 78DDA98 8007D568 0000628E */  lw         $v0, 0x0($s3)
/* 78DDA9C 8007D56C 00000000 */  nop
/* 78DDAA0 8007D570 02004584 */  lh         $a1, 0x2($v0)
/* 78DDAA4 8007D574 00000000 */  nop
/* 78DDAA8 8007D578 6700A014 */  bnez       $a1, .Llevel_36_8007D718
/* 78DDAAC 8007D57C 0C003226 */   addiu     $s2, $s1, 0xC
/* 78DDAB0 8007D580 21800000 */  addu       $s0, $zero, $zero
/* 78DDAB4 8007D584 3000B227 */  addiu      $s2, $sp, 0x30
.Llevel_36_8007D588:
/* 78DDAB8 8007D588 9171010C */  jal        rand
/* 78DDABC 8007D58C 01001026 */   addiu     $s0, $s0, 0x1
/* 78DDAC0 8007D590 FE074230 */  andi       $v0, $v0, 0x7FE
/* 78DDAC4 8007D594 01FC4224 */  addiu      $v0, $v0, -0x3FF
/* 78DDAC8 8007D598 9171010C */  jal        rand
/* 78DDACC 8007D59C 3000A2AF */   sw        $v0, 0x30($sp)
/* 78DDAD0 8007D5A0 FE074230 */  andi       $v0, $v0, 0x7FE
/* 78DDAD4 8007D5A4 01FC4224 */  addiu      $v0, $v0, -0x3FF
/* 78DDAD8 8007D5A8 9171010C */  jal        rand
/* 78DDADC 8007D5AC 3400A2AF */   sw        $v0, 0x34($sp)
/* 78DDAE0 8007D5B0 21204002 */  addu       $a0, $s2, $zero
/* 78DDAE4 8007D5B4 21284002 */  addu       $a1, $s2, $zero
/* 78DDAE8 8007D5B8 0C002626 */  addiu      $a2, $s1, 0xC
/* 78DDAEC 8007D5BC FE074230 */  andi       $v0, $v0, 0x7FE
/* 78DDAF0 8007D5C0 01FC4224 */  addiu      $v0, $v0, -0x3FF
/* 78DDAF4 8007D5C4 653C010C */  jal        func_8004F194
/* 78DDAF8 8007D5C8 3800A2AF */   sw        $v0, 0x38($sp)
/* 78DDAFC 8007D5CC 04000424 */  addiu      $a0, $zero, 0x4
/* 78DDB00 8007D5D0 0F000524 */  addiu      $a1, $zero, 0xF
/* 78DDB04 8007D5D4 21304002 */  addu       $a2, $s2, $zero
/* 78DDB08 8007D5D8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DDB0C 8007D5DC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DDB10 8007D5E0 00000000 */  nop
/* 78DDB14 8007D5E4 09F84000 */  jalr       $v0
/* 78DDB18 8007D5E8 21380000 */   addu      $a3, $zero, $zero
/* 78DDB1C 8007D5EC 0800022A */  slti       $v0, $s0, 0x8
/* 78DDB20 8007D5F0 E5FF4014 */  bnez       $v0, .Llevel_36_8007D588
/* 78DDB24 8007D5F4 01000424 */   addiu     $a0, $zero, 0x1
/* 78DDB28 8007D5F8 21800000 */  addu       $s0, $zero, $zero
/* 78DDB2C 8007D5FC 00011224 */  addiu      $s2, $zero, 0x100
.Llevel_36_8007D600:
/* 78DDB30 8007D600 4A000524 */  addiu      $a1, $zero, 0x4A
/* 78DDB34 8007D604 21302002 */  addu       $a2, $s1, $zero
/* 78DDB38 8007D608 01000724 */  addiu      $a3, $zero, 0x1
/* 78DDB3C 8007D60C 03000224 */  addiu      $v0, $zero, 0x3
/* 78DDB40 8007D610 1000A2AF */  sw         $v0, 0x10($sp)
/* 78DDB44 8007D614 1400B2AF */  sw         $s2, 0x14($sp)
/* 78DDB48 8007D618 7AE4000C */  jal        func_800391E8
/* 78DDB4C 8007D61C 1800B2AF */   sw        $s2, 0x18($sp)
/* 78DDB50 8007D620 21284000 */  addu       $a1, $v0, $zero
/* 78DDB54 8007D624 1200A010 */  beqz       $a1, .Llevel_36_8007D670
/* 78DDB58 8007D628 00000000 */   nop
/* 78DDB5C 8007D62C 0000A48C */  lw         $a0, 0x0($a1)
/* 78DDB60 8007D630 00000000 */  nop
/* 78DDB64 8007D634 00008284 */  lh         $v0, 0x0($a0)
/* 78DDB68 8007D638 0C00A38C */  lw         $v1, 0xC($a1)
/* 78DDB6C 8007D63C 80100200 */  sll        $v0, $v0, 2
/* 78DDB70 8007D640 21186200 */  addu       $v1, $v1, $v0
/* 78DDB74 8007D644 0C00A3AC */  sw         $v1, 0xC($a1)
/* 78DDB78 8007D648 02008284 */  lh         $v0, 0x2($a0)
/* 78DDB7C 8007D64C 1000A38C */  lw         $v1, 0x10($a1)
/* 78DDB80 8007D650 80100200 */  sll        $v0, $v0, 2
/* 78DDB84 8007D654 21186200 */  addu       $v1, $v1, $v0
/* 78DDB88 8007D658 1000A3AC */  sw         $v1, 0x10($a1)
/* 78DDB8C 8007D65C 04008284 */  lh         $v0, 0x4($a0)
/* 78DDB90 8007D660 1400A38C */  lw         $v1, 0x14($a1)
/* 78DDB94 8007D664 80100200 */  sll        $v0, $v0, 2
/* 78DDB98 8007D668 21186200 */  addu       $v1, $v1, $v0
/* 78DDB9C 8007D66C 1400A3AC */  sw         $v1, 0x14($a1)
.Llevel_36_8007D670:
/* 78DDBA0 8007D670 01001026 */  addiu      $s0, $s0, 0x1
/* 78DDBA4 8007D674 0C00022A */  slti       $v0, $s0, 0xC
/* 78DDBA8 8007D678 E1FF4014 */  bnez       $v0, .Llevel_36_8007D600
/* 78DDBAC 8007D67C 01000424 */   addiu     $a0, $zero, 0x1
/* 78DDBB0 8007D680 0780043C */  lui        $a0, %hi(D_8006E020)
/* 78DDBB4 8007D684 20E08424 */  addiu      $a0, $a0, %lo(D_8006E020)
/* 78DDBB8 8007D688 CD3C010C */  jal        func_8004F334
/* 78DDBBC 8007D68C 0C002526 */   addiu     $a1, $s1, 0xC
/* 78DDBC0 8007D690 21184000 */  addu       $v1, $v0, $zero
/* 78DDBC4 8007D694 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
/* 78DDBC8 8007D698 2A104300 */  slt        $v0, $v0, $v1
/* 78DDBCC 8007D69C 02004010 */  beqz       $v0, .Llevel_36_8007D6A8
/* 78DDBD0 8007D6A0 00800234 */   ori       $v0, $zero, 0x8000
/* 78DDBD4 8007D6A4 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
.Llevel_36_8007D6A8:
/* 78DDBD8 8007D6A8 23104300 */  subu       $v0, $v0, $v1
/* 78DDBDC 8007D6AC 40130200 */  sll        $v0, $v0, 13
/* 78DDBE0 8007D6B0 C3130200 */  sra        $v0, $v0, 15
/* 78DDBE4 8007D6B4 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 78DDBE8 8007D6B8 D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
/* 78DDBEC 8007D6BC 1E000224 */  addiu      $v0, $zero, 0x1E
/* 78DDBF0 8007D6C0 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 78DDBF4 8007D6C4 D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 78DDBF8 8007D6C8 0400658E */  lw         $a1, 0x4($s3)
/* 78DDBFC 8007D6CC F0EF000C */  jal        func_8003BFC0
/* 78DDC00 8007D6D0 21202002 */   addu      $a0, $s1, $zero
/* 78DDC04 8007D6D4 05004010 */  beqz       $v0, .Llevel_36_8007D6EC
/* 78DDC08 8007D6D8 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 78DDC0C 8007D6DC 0400648E */  lw         $a0, 0x4($s3)
/* 78DDC10 8007D6E0 9CEF000C */  jal        func_8003BE70
/* 78DDC14 8007D6E4 00000000 */   nop
/* 78DDC18 8007D6E8 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_36_8007D6EC:
/* 78DDC1C 8007D6EC 040062AE */  sw         $v0, 0x4($s3)
/* 78DDC20 8007D6F0 21202002 */  addu       $a0, $s1, $zero
/* 78DDC24 8007D6F4 02000524 */  addiu      $a1, $zero, 0x2
/* 78DDC28 8007D6F8 AFEE000C */  jal        func_8003BABC
/* 78DDC2C 8007D6FC 21300000 */   addu      $a2, $zero, $zero
/* 78DDC30 8007D700 80EE000C */  jal        func_8003BA00
/* 78DDC34 8007D704 21202002 */   addu      $a0, $s1, $zero
/* 78DDC38 8007D708 C656010C */  jal        func_80055B18
/* 78DDC3C 8007D70C 21202002 */   addu      $a0, $s1, $zero
/* 78DDC40 8007D710 37F60108 */  j          .Llevel_36_8007D8DC
/* 78DDC44 8007D714 00000000 */   nop
.Llevel_36_8007D718:
/* 78DDC48 8007D718 21204002 */  addu       $a0, $s2, $zero
/* 78DDC4C 8007D71C 0C00428C */  lw         $v0, 0xC($v0)
/* 78DDC50 8007D720 00290500 */  sll        $a1, $a1, 4
/* 78DDC54 8007D724 5E3C010C */  jal        func_8004F178
/* 78DDC58 8007D728 21284500 */   addu      $a1, $v0, $a1
/* 78DDC5C 8007D72C 2000A427 */  addiu      $a0, $sp, 0x20
/* 78DDC60 8007D730 21284002 */  addu       $a1, $s2, $zero
/* 78DDC64 8007D734 723C010C */  jal        func_8004F1C8
/* 78DDC68 8007D738 21308000 */   addu      $a2, $a0, $zero
/* 78DDC6C 8007D73C 2000A427 */  addiu      $a0, $sp, 0x20
/* 78DDC70 8007D740 7A3B010C */  jal        func_8004EDE8
/* 78DDC74 8007D744 01000524 */   addiu     $a1, $zero, 0x1
/* 78DDC78 8007D748 21300000 */  addu       $a2, $zero, $zero
/* 78DDC7C 8007D74C 2000A48F */  lw         $a0, 0x20($sp)
/* 78DDC80 8007D750 2400A58F */  lw         $a1, 0x24($sp)
/* 78DDC84 8007D754 203A010C */  jal        func_8004E880
/* 78DDC88 8007D758 21804000 */   addu      $s0, $v0, $zero
/* 78DDC8C 8007D75C 460022A2 */  sb         $v0, 0x46($s1)
/* 78DDC90 8007D760 45002292 */  lbu        $v0, 0x45($s1)
/* 78DDC94 8007D764 83811000 */  sra        $s0, $s0, 6
/* 78DDC98 8007D768 23105000 */  subu       $v0, $v0, $s0
/* 78DDC9C 8007D76C 450022A2 */  sb         $v0, 0x45($s1)
/* 78DDCA0 8007D770 0000638E */  lw         $v1, 0x0($s3)
/* 78DDCA4 8007D774 00000000 */  nop
/* 78DDCA8 8007D778 02006284 */  lh         $v0, 0x2($v1)
/* 78DDCAC 8007D77C 0C00638C */  lw         $v1, 0xC($v1)
/* 78DDCB0 8007D780 00110200 */  sll        $v0, $v0, 4
/* 78DDCB4 8007D784 21104300 */  addu       $v0, $v0, $v1
/* 78DDCB8 8007D788 0C00438C */  lw         $v1, 0xC($v0)
/* 78DDCBC 8007D78C 01000224 */  addiu      $v0, $zero, 0x1
/* 78DDCC0 8007D790 24006214 */  bne        $v1, $v0, .Llevel_36_8007D824
/* 78DDCC4 8007D794 02000224 */   addiu     $v0, $zero, 0x2
/* 78DDCC8 8007D798 0400658E */  lw         $a1, 0x4($s3)
/* 78DDCCC 8007D79C F0EF000C */  jal        func_8003BFC0
/* 78DDCD0 8007D7A0 21202002 */   addu      $a0, $s1, $zero
/* 78DDCD4 8007D7A4 05004014 */  bnez       $v0, .Llevel_36_8007D7BC
/* 78DDCD8 8007D7A8 21202002 */   addu      $a0, $s1, $zero
/* 78DDCDC 8007D7AC 21280000 */  addu       $a1, $zero, $zero
/* 78DDCE0 8007D7B0 AFEE000C */  jal        func_8003BABC
/* 78DDCE4 8007D7B4 04000624 */   addiu     $a2, $zero, 0x4
/* 78DDCE8 8007D7B8 040062AE */  sw         $v0, 0x4($s3)
.Llevel_36_8007D7BC:
/* 78DDCEC 8007D7BC 0400648E */  lw         $a0, 0x4($s3)
/* 78DDCF0 8007D7C0 00000000 */  nop
/* 78DDCF4 8007D7C4 03008004 */  bltz       $a0, .Llevel_36_8007D7D4
/* 78DDCF8 8007D7C8 00000000 */   nop
/* 78DDCFC 8007D7CC 05F0000C */  jal        func_8003C014
/* 78DDD00 8007D7D0 2000A527 */   addiu     $a1, $sp, 0x20
.Llevel_36_8007D7D4:
/* 78DDD04 8007D7D4 0780043C */  lui        $a0, %hi(D_8006E020)
/* 78DDD08 8007D7D8 20E08424 */  addiu      $a0, $a0, %lo(D_8006E020)
/* 78DDD0C 8007D7DC CD3C010C */  jal        func_8004F334
/* 78DDD10 8007D7E0 21284002 */   addu      $a1, $s2, $zero
/* 78DDD14 8007D7E4 21184000 */  addu       $v1, $v0, $zero
/* 78DDD18 8007D7E8 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
/* 78DDD1C 8007D7EC 2A104300 */  slt        $v0, $v0, $v1
/* 78DDD20 8007D7F0 02004010 */  beqz       $v0, .Llevel_36_8007D7FC
/* 78DDD24 8007D7F4 00800234 */   ori       $v0, $zero, 0x8000
/* 78DDD28 8007D7F8 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
.Llevel_36_8007D7FC:
/* 78DDD2C 8007D7FC 23104300 */  subu       $v0, $v0, $v1
/* 78DDD30 8007D800 00130200 */  sll        $v0, $v0, 12
/* 78DDD34 8007D804 C3130200 */  sra        $v0, $v0, 15
/* 78DDD38 8007D808 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 78DDD3C 8007D80C D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
/* 78DDD40 8007D810 0A000224 */  addiu      $v0, $zero, 0xA
/* 78DDD44 8007D814 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 78DDD48 8007D818 D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 78DDD4C 8007D81C 37F60108 */  j          .Llevel_36_8007D8DC
/* 78DDD50 8007D820 00000000 */   nop
.Llevel_36_8007D824:
/* 78DDD54 8007D824 23006214 */  bne        $v1, $v0, .Llevel_36_8007D8B4
/* 78DDD58 8007D828 00000000 */   nop
/* 78DDD5C 8007D82C 0400658E */  lw         $a1, 0x4($s3)
/* 78DDD60 8007D830 F0EF000C */  jal        func_8003BFC0
/* 78DDD64 8007D834 21202002 */   addu      $a0, $s1, $zero
/* 78DDD68 8007D838 05004010 */  beqz       $v0, .Llevel_36_8007D850
/* 78DDD6C 8007D83C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 78DDD70 8007D840 0400648E */  lw         $a0, 0x4($s3)
/* 78DDD74 8007D844 9CEF000C */  jal        func_8003BE70
/* 78DDD78 8007D848 00000000 */   nop
/* 78DDD7C 8007D84C FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_36_8007D850:
/* 78DDD80 8007D850 040062AE */  sw         $v0, 0x4($s3)
/* 78DDD84 8007D854 21202002 */  addu       $a0, $s1, $zero
/* 78DDD88 8007D858 01000524 */  addiu      $a1, $zero, 0x1
/* 78DDD8C 8007D85C AFEE000C */  jal        func_8003BABC
/* 78DDD90 8007D860 21300000 */   addu      $a2, $zero, $zero
/* 78DDD94 8007D864 0780043C */  lui        $a0, %hi(D_8006E020)
/* 78DDD98 8007D868 20E08424 */  addiu      $a0, $a0, %lo(D_8006E020)
/* 78DDD9C 8007D86C CD3C010C */  jal        func_8004F334
/* 78DDDA0 8007D870 21284002 */   addu      $a1, $s2, $zero
/* 78DDDA4 8007D874 21184000 */  addu       $v1, $v0, $zero
/* 78DDDA8 8007D878 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
/* 78DDDAC 8007D87C 2A104300 */  slt        $v0, $v0, $v1
/* 78DDDB0 8007D880 02004010 */  beqz       $v0, .Llevel_36_8007D88C
/* 78DDDB4 8007D884 00800234 */   ori       $v0, $zero, 0x8000
/* 78DDDB8 8007D888 FF7F0324 */  addiu      $v1, $zero, 0x7FFF
.Llevel_36_8007D88C:
/* 78DDDBC 8007D88C 23104300 */  subu       $v0, $v0, $v1
/* 78DDDC0 8007D890 40130200 */  sll        $v0, $v0, 13
/* 78DDDC4 8007D894 C3130200 */  sra        $v0, $v0, 15
/* 78DDDC8 8007D898 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 78DDDCC 8007D89C D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
/* 78DDDD0 8007D8A0 1E000224 */  addiu      $v0, $zero, 0x1E
/* 78DDDD4 8007D8A4 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 78DDDD8 8007D8A8 D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 78DDDDC 8007D8AC 37F60108 */  j          .Llevel_36_8007D8DC
/* 78DDDE0 8007D8B0 00000000 */   nop
.Llevel_36_8007D8B4:
/* 78DDDE4 8007D8B4 0400658E */  lw         $a1, 0x4($s3)
/* 78DDDE8 8007D8B8 F0EF000C */  jal        func_8003BFC0
/* 78DDDEC 8007D8BC 21202002 */   addu      $a0, $s1, $zero
/* 78DDDF0 8007D8C0 05004010 */  beqz       $v0, .Llevel_36_8007D8D8
/* 78DDDF4 8007D8C4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 78DDDF8 8007D8C8 0400648E */  lw         $a0, 0x4($s3)
/* 78DDDFC 8007D8CC 9CEF000C */  jal        func_8003BE70
/* 78DDE00 8007D8D0 00000000 */   nop
/* 78DDE04 8007D8D4 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_36_8007D8D8:
/* 78DDE08 8007D8D8 040062AE */  sw         $v0, 0x4($s3)
.Llevel_36_8007D8DC:
/* 78DDE0C 8007D8DC 5000BF8F */  lw         $ra, 0x50($sp)
/* 78DDE10 8007D8E0 4C00B38F */  lw         $s3, 0x4C($sp)
/* 78DDE14 8007D8E4 4800B28F */  lw         $s2, 0x48($sp)
/* 78DDE18 8007D8E8 4400B18F */  lw         $s1, 0x44($sp)
/* 78DDE1C 8007D8EC 4000B08F */  lw         $s0, 0x40($sp)
/* 78DDE20 8007D8F0 5800BD27 */  addiu      $sp, $sp, 0x58
/* 78DDE24 8007D8F4 0800E003 */  jr         $ra
/* 78DDE28 8007D8F8 00000000 */   nop
.size func_level_36_8007D46C, . - func_level_36_8007D46C
