.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_21_8007F438
/* 53FB968 8007F438 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 53FB96C 8007F43C 7400B3AF */  sw         $s3, 0x74($sp)
/* 53FB970 8007F440 21988000 */  addu       $s3, $a0, $zero
/* 53FB974 8007F444 7D000324 */  addiu      $v1, $zero, 0x7D
/* 53FB978 8007F448 8000BFAF */  sw         $ra, 0x80($sp)
/* 53FB97C 8007F44C 7C00B5AF */  sw         $s5, 0x7C($sp)
/* 53FB980 8007F450 7800B4AF */  sw         $s4, 0x78($sp)
/* 53FB984 8007F454 7000B2AF */  sw         $s2, 0x70($sp)
/* 53FB988 8007F458 6C00B1AF */  sw         $s1, 0x6C($sp)
/* 53FB98C 8007F45C 6800B0AF */  sw         $s0, 0x68($sp)
/* 53FB990 8007F460 48006292 */  lbu        $v0, 0x48($s3)
/* 53FB994 8007F464 0000728E */  lw         $s2, 0x0($s3)
/* 53FB998 8007F468 F1014310 */  beq        $v0, $v1, .Llevel_21_8007FC30
/* 53FB99C 8007F46C 00000000 */   nop
/* 53FB9A0 8007F470 0C00428E */  lw         $v0, 0xC($s2)
/* 53FB9A4 8007F474 00000000 */  nop
/* 53FB9A8 8007F478 03004014 */  bnez       $v0, .Llevel_21_8007F488
/* 53FB9AC 8007F47C 00000000 */   nop
/* 53FB9B0 8007F480 7AE6000C */  jal        func_800399E8
/* 53FB9B4 8007F484 0C004526 */   addiu     $a1, $s2, 0xC
.Llevel_21_8007F488:
/* 53FB9B8 8007F488 1800A427 */  addiu      $a0, $sp, 0x18
/* 53FB9BC 8007F48C 0C006526 */  addiu      $a1, $s3, 0xC
/* 53FB9C0 8007F490 0780103C */  lui        $s0, %hi(D_80070328)
/* 53FB9C4 8007F494 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 53FB9C8 8007F498 723C010C */  jal        func_8004F1C8
/* 53FB9CC 8007F49C 21300002 */   addu      $a2, $s0, $zero
/* 53FB9D0 8007F4A0 1800A427 */  addiu      $a0, $sp, 0x18
/* 53FB9D4 8007F4A4 7A3B010C */  jal        func_8004EDE8
/* 53FB9D8 8007F4A8 21280000 */   addu      $a1, $zero, $zero
/* 53FB9DC 8007F4AC 49006426 */  addiu      $a0, $s3, 0x49
/* 53FB9E0 8007F4B0 01000524 */  addiu      $a1, $zero, 0x1
/* 53FB9E4 8007F4B4 69D6000C */  jal        func_800359A4
/* 53FB9E8 8007F4B8 21A84000 */   addu      $s5, $v0, $zero
/* 53FB9EC 8007F4BC 48006392 */  lbu        $v1, 0x48($s3)
/* 53FB9F0 8007F4C0 03000224 */  addiu      $v0, $zero, 0x3
/* 53FB9F4 8007F4C4 60006210 */  beq        $v1, $v0, .Llevel_21_8007F648
/* 53FB9F8 8007F4C8 04006228 */   slti      $v0, $v1, 0x4
/* 53FB9FC 8007F4CC 05004010 */  beqz       $v0, .Llevel_21_8007F4E4
/* 53FBA00 8007F4D0 00000000 */   nop
/* 53FBA04 8007F4D4 08006010 */  beqz       $v1, .Llevel_21_8007F4F8
/* 53FBA08 8007F4D8 01000224 */   addiu     $v0, $zero, 0x1
/* 53FBA0C 8007F4DC C4FE0108 */  j          .Llevel_21_8007FB10
/* 53FBA10 8007F4E0 00000000 */   nop
.Llevel_21_8007F4E4:
/* 53FBA14 8007F4E4 0A000224 */  addiu      $v0, $zero, 0xA
/* 53FBA18 8007F4E8 2F006210 */  beq        $v1, $v0, .Llevel_21_8007F5A8
/* 53FBA1C 8007F4EC 64000224 */   addiu     $v0, $zero, 0x64
/* 53FBA20 8007F4F0 C2FE0108 */  j          .Llevel_21_8007FB08
/* 53FBA24 8007F4F4 00000000 */   nop
.Llevel_21_8007F4F8:
/* 53FBA28 8007F4F8 0780023C */  lui        $v0, %hi(D_80070328 + 0x138)
/* 53FBA2C 8007F4FC 6004428C */  lw         $v0, %lo(D_80070328 + 0x138)($v0)
/* 53FBA30 8007F500 49006392 */  lbu        $v1, 0x49($s3)
/* 53FBA34 8007F504 26105300 */  xor        $v0, $v0, $s3
/* 53FBA38 8007F508 15006014 */  bnez       $v1, .Llevel_21_8007F560
/* 53FBA3C 8007F50C 0100502C */   sltiu     $s0, $v0, 0x1
/* 53FBA40 8007F510 2003A22A */  slti       $v0, $s5, 0x320
/* 53FBA44 8007F514 12004010 */  beqz       $v0, .Llevel_21_8007F560
/* 53FBA48 8007F518 00000000 */   nop
/* 53FBA4C 8007F51C 38006386 */  lh         $v1, 0x38($s3)
/* 53FBA50 8007F520 1400628E */  lw         $v0, 0x14($s3)
/* 53FBA54 8007F524 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 53FBA58 8007F528 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 53FBA5C 8007F52C 23184300 */  subu       $v1, $v0, $v1
/* 53FBA60 8007F530 23106400 */  subu       $v0, $v1, $a0
/* 53FBA64 8007F534 05004004 */  bltz       $v0, .Llevel_21_8007F54C
/* 53FBA68 8007F538 58024228 */   slti      $v0, $v0, 0x258
/* 53FBA6C 8007F53C 08004010 */  beqz       $v0, .Llevel_21_8007F560
/* 53FBA70 8007F540 00000000 */   nop
/* 53FBA74 8007F544 58FD0108 */  j          .Llevel_21_8007F560
/* 53FBA78 8007F548 01001024 */   addiu     $s0, $zero, 0x1
.Llevel_21_8007F54C:
/* 53FBA7C 8007F54C 23108300 */  subu       $v0, $a0, $v1
/* 53FBA80 8007F550 58024228 */  slti       $v0, $v0, 0x258
/* 53FBA84 8007F554 02004010 */  beqz       $v0, .Llevel_21_8007F560
/* 53FBA88 8007F558 00000000 */   nop
/* 53FBA8C 8007F55C 01001024 */  addiu      $s0, $zero, 0x1
.Llevel_21_8007F560:
/* 53FBA90 8007F560 1800638E */  lw         $v1, 0x18($s3)
/* 53FBA94 8007F564 1200023C */  lui        $v0, (0x120000 >> 16)
/* 53FBA98 8007F568 24106200 */  and        $v0, $v1, $v0
/* 53FBA9C 8007F56C 02004010 */  beqz       $v0, .Llevel_21_8007F578
/* 53FBAA0 8007F570 0100023C */   lui       $v0, (0x10000 >> 16)
/* 53FBAA4 8007F574 01001024 */  addiu      $s0, $zero, 0x1
.Llevel_21_8007F578:
/* 53FBAA8 8007F578 24106200 */  and        $v0, $v1, $v0
/* 53FBAAC 8007F57C 06004010 */  beqz       $v0, .Llevel_21_8007F598
/* 53FBAB0 8007F580 21206002 */   addu      $a0, $s3, $zero
/* 53FBAB4 8007F584 21280000 */  addu       $a1, $zero, $zero
/* 53FBAB8 8007F588 AFEE000C */  jal        func_8003BABC
/* 53FBABC 8007F58C 21300000 */   addu      $a2, $zero, $zero
/* 53FBAC0 8007F590 0A000224 */  addiu      $v0, $zero, 0xA
/* 53FBAC4 8007F594 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_21_8007F598:
/* 53FBAC8 8007F598 5B010012 */  beqz       $s0, .Llevel_21_8007FB08
/* 53FBACC 8007F59C 01000224 */   addiu     $v0, $zero, 0x1
/* 53FBAD0 8007F5A0 C1FE0108 */  j          .Llevel_21_8007FB04
/* 53FBAD4 8007F5A4 00000000 */   nop
.Llevel_21_8007F5A8:
/* 53FBAD8 8007F5A8 02004386 */  lh         $v1, 0x2($s2)
/* 53FBADC 8007F5AC 00000000 */  nop
/* 53FBAE0 8007F5B0 03006014 */  bnez       $v1, .Llevel_21_8007F5C0
/* 53FBAE4 8007F5B4 000042A2 */   sb        $v0, 0x0($s2)
/* 53FBAE8 8007F5B8 F0000224 */  addiu      $v0, $zero, 0xF0
/* 53FBAEC 8007F5BC 020042A6 */  sh         $v0, 0x2($s2)
.Llevel_21_8007F5C0:
/* 53FBAF0 8007F5C0 01004292 */  lbu        $v0, 0x1($s2)
/* 53FBAF4 8007F5C4 00000000 */  nop
/* 53FBAF8 8007F5C8 15004014 */  bnez       $v0, .Llevel_21_8007F620
/* 53FBAFC 8007F5CC 05000424 */   addiu     $a0, $zero, 0x5
/* 53FBB00 8007F5D0 51006292 */  lbu        $v0, 0x51($s3)
/* 53FBB04 8007F5D4 00000000 */  nop
/* 53FBB08 8007F5D8 0F004014 */  bnez       $v0, .Llevel_21_8007F618
/* 53FBB0C 8007F5DC 21300000 */   addu      $a2, $zero, $zero
/* 53FBB10 8007F5E0 0C00638E */  lw         $v1, 0xC($s3)
/* 53FBB14 8007F5E4 0000048E */  lw         $a0, 0x0($s0)
/* 53FBB18 8007F5E8 1000628E */  lw         $v0, 0x10($s3)
/* 53FBB1C 8007F5EC 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 53FBB20 8007F5F0 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 53FBB24 8007F5F4 23206400 */  subu       $a0, $v1, $a0
/* 53FBB28 8007F5F8 203A010C */  jal        func_8004E880
/* 53FBB2C 8007F5FC 23284500 */   subu      $a1, $v0, $a1
/* 53FBB30 8007F600 21204000 */  addu       $a0, $v0, $zero
/* 53FBB34 8007F604 20000624 */  addiu      $a2, $zero, 0x20
/* 53FBB38 8007F608 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 53FBB3C 8007F60C 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 53FBB40 8007F610 3ED8000C */  jal        func_800360F8
/* 53FBB44 8007F614 40000724 */   addiu     $a3, $zero, 0x40
.Llevel_21_8007F618:
/* 53FBB48 8007F618 010042A2 */  sb         $v0, 0x1($s2)
/* 53FBB4C 8007F61C 05000424 */  addiu      $a0, $zero, 0x5
.Llevel_21_8007F620:
/* 53FBB50 8007F620 F7D8000C */  jal        func_800363DC
/* 53FBB54 8007F624 0B000524 */   addiu     $a1, $zero, 0xB
/* 53FBB58 8007F628 04004386 */  lh         $v1, 0x4($s2)
/* 53FBB5C 8007F62C 00110200 */  sll        $v0, $v0, 4
/* 53FBB60 8007F630 03006014 */  bnez       $v1, .Llevel_21_8007F640
/* 53FBB64 8007F634 060042A6 */   sh        $v0, 0x6($s2)
/* 53FBB68 8007F638 32000224 */  addiu      $v0, $zero, 0x32
/* 53FBB6C 8007F63C 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_21_8007F640:
/* 53FBB70 8007F640 03000224 */  addiu      $v0, $zero, 0x3
/* 53FBB74 8007F644 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_21_8007F648:
/* 53FBB78 8007F648 03001424 */  addiu      $s4, $zero, 0x3
/* 53FBB7C 8007F64C 1800628E */  lw         $v0, 0x18($s3)
/* 53FBB80 8007F650 0100033C */  lui        $v1, (0x10000 >> 16)
/* 53FBB84 8007F654 24104300 */  and        $v0, $v0, $v1
/* 53FBB88 8007F658 1B004010 */  beqz       $v0, .Llevel_21_8007F6C8
/* 53FBB8C 8007F65C 04001124 */   addiu     $s1, $zero, 0x4
/* 53FBB90 8007F660 02004286 */  lh         $v0, 0x2($s2)
/* 53FBB94 8007F664 00000000 */  nop
/* 53FBB98 8007F668 C8004228 */  slti       $v0, $v0, 0xC8
/* 53FBB9C 8007F66C 02004010 */  beqz       $v0, .Llevel_21_8007F678
/* 53FBBA0 8007F670 C8000224 */   addiu     $v0, $zero, 0xC8
/* 53FBBA4 8007F674 020042A6 */  sh         $v0, 0x2($s2)
.Llevel_21_8007F678:
/* 53FBBA8 8007F678 51006292 */  lbu        $v0, 0x51($s3)
/* 53FBBAC 8007F67C 00000000 */  nop
/* 53FBBB0 8007F680 10004014 */  bnez       $v0, .Llevel_21_8007F6C4
/* 53FBBB4 8007F684 21300000 */   addu      $a2, $zero, $zero
/* 53FBBB8 8007F688 0C00638E */  lw         $v1, 0xC($s3)
/* 53FBBBC 8007F68C 0780043C */  lui        $a0, %hi(D_80070328)
/* 53FBBC0 8007F690 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 53FBBC4 8007F694 1000628E */  lw         $v0, 0x10($s3)
/* 53FBBC8 8007F698 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 53FBBCC 8007F69C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 53FBBD0 8007F6A0 23206400 */  subu       $a0, $v1, $a0
/* 53FBBD4 8007F6A4 203A010C */  jal        func_8004E880
/* 53FBBD8 8007F6A8 23284500 */   subu      $a1, $v0, $a1
/* 53FBBDC 8007F6AC 21204000 */  addu       $a0, $v0, $zero
/* 53FBBE0 8007F6B0 20000624 */  addiu      $a2, $zero, 0x20
/* 53FBBE4 8007F6B4 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 53FBBE8 8007F6B8 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 53FBBEC 8007F6BC 3ED8000C */  jal        func_800360F8
/* 53FBBF0 8007F6C0 40000724 */   addiu     $a3, $zero, 0x40
.Llevel_21_8007F6C4:
/* 53FBBF4 8007F6C4 010042A2 */  sb         $v0, 0x1($s2)
.Llevel_21_8007F6C8:
/* 53FBBF8 8007F6C8 1000458E */  lw         $a1, 0x10($s2)
/* 53FBBFC 8007F6CC F0EF000C */  jal        func_8003BFC0
/* 53FBC00 8007F6D0 21206002 */   addu      $a0, $s3, $zero
/* 53FBC04 8007F6D4 05004014 */  bnez       $v0, .Llevel_21_8007F6EC
/* 53FBC08 8007F6D8 21206002 */   addu      $a0, $s3, $zero
/* 53FBC0C 8007F6DC 01000524 */  addiu      $a1, $zero, 0x1
/* 53FBC10 8007F6E0 AFEE000C */  jal        func_8003BABC
/* 53FBC14 8007F6E4 04000624 */   addiu     $a2, $zero, 0x4
/* 53FBC18 8007F6E8 100042AE */  sw         $v0, 0x10($s2)
.Llevel_21_8007F6EC:
/* 53FBC1C 8007F6EC 49006292 */  lbu        $v0, 0x49($s3)
/* 53FBC20 8007F6F0 00000000 */  nop
/* 53FBC24 8007F6F4 16004014 */  bnez       $v0, .Llevel_21_8007F750
/* 53FBC28 8007F6F8 21206002 */   addu      $a0, $s3, $zero
/* 53FBC2C 8007F6FC 2003A22A */  slti       $v0, $s5, 0x320
/* 53FBC30 8007F700 14004010 */  beqz       $v0, .Llevel_21_8007F754
/* 53FBC34 8007F704 04004526 */   addiu     $a1, $s2, 0x4
/* 53FBC38 8007F708 38006386 */  lh         $v1, 0x38($s3)
/* 53FBC3C 8007F70C 1400628E */  lw         $v0, 0x14($s3)
/* 53FBC40 8007F710 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 53FBC44 8007F714 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 53FBC48 8007F718 23184300 */  subu       $v1, $v0, $v1
/* 53FBC4C 8007F71C 23106400 */  subu       $v0, $v1, $a0
/* 53FBC50 8007F720 05004004 */  bltz       $v0, .Llevel_21_8007F738
/* 53FBC54 8007F724 58024228 */   slti      $v0, $v0, 0x258
/* 53FBC58 8007F728 07004014 */  bnez       $v0, .Llevel_21_8007F748
/* 53FBC5C 8007F72C 01000224 */   addiu     $v0, $zero, 0x1
/* 53FBC60 8007F730 D5FD0108 */  j          .Llevel_21_8007F754
/* 53FBC64 8007F734 21206002 */   addu      $a0, $s3, $zero
.Llevel_21_8007F738:
/* 53FBC68 8007F738 23108300 */  subu       $v0, $a0, $v1
/* 53FBC6C 8007F73C 58024228 */  slti       $v0, $v0, 0x258
/* 53FBC70 8007F740 02004010 */  beqz       $v0, .Llevel_21_8007F74C
/* 53FBC74 8007F744 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_21_8007F748:
/* 53FBC78 8007F748 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_21_8007F74C:
/* 53FBC7C 8007F74C 21206002 */  addu       $a0, $s3, $zero
.Llevel_21_8007F750:
/* 53FBC80 8007F750 04004526 */  addiu      $a1, $s2, 0x4
.Llevel_21_8007F754:
/* 53FBC84 8007F754 02000624 */  addiu      $a2, $zero, 0x2
/* 53FBC88 8007F758 0E000724 */  addiu      $a3, $zero, 0xE
/* 53FBC8C 8007F75C 0780103C */  lui        $s0, %hi(D_80071924)
/* 53FBC90 8007F760 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 53FBC94 8007F764 FF000224 */  addiu      $v0, $zero, 0xFF
/* 53FBC98 8007F768 000002AE */  sw         $v0, 0x0($s0)
/* 53FBC9C 8007F76C 38FF0224 */  addiu      $v0, $zero, -0xC8
/* 53FBCA0 8007F770 98DE000C */  jal        func_80037A60
/* 53FBCA4 8007F774 1000A2AF */   sw        $v0, 0x10($sp)
/* 53FBCA8 8007F778 0000048E */  lw         $a0, 0x0($s0)
/* 53FBCAC 8007F77C 5502010C */  jal        func_80040954
/* 53FBCB0 8007F780 00000000 */   nop
/* 53FBCB4 8007F784 04000324 */  addiu      $v1, $zero, 0x4
/* 53FBCB8 8007F788 08004310 */  beq        $v0, $v1, .Llevel_21_8007F7AC
/* 53FBCBC 8007F78C 00000000 */   nop
/* 53FBCC0 8007F790 0C00438E */  lw         $v1, 0xC($s2)
/* 53FBCC4 8007F794 00000000 */  nop
/* 53FBCC8 8007F798 02006010 */  beqz       $v1, .Llevel_21_8007F7A4
/* 53FBCCC 8007F79C F8000224 */   addiu     $v0, $zero, 0xF8
/* 53FBCD0 8007F7A0 470062A0 */  sb         $v0, 0x47($v1)
.Llevel_21_8007F7A4:
/* 53FBCD4 8007F7A4 0E001424 */  addiu      $s4, $zero, 0xE
/* 53FBCD8 8007F7A8 18001124 */  addiu      $s1, $zero, 0x18
.Llevel_21_8007F7AC:
/* 53FBCDC 8007F7AC 06004486 */  lh         $a0, 0x6($s2)
/* 53FBCE0 8007F7B0 00000000 */  nop
/* 53FBCE4 8007F7B4 02008104 */  bgez       $a0, .Llevel_21_8007F7C0
/* 53FBCE8 8007F7B8 21108000 */   addu      $v0, $a0, $zero
/* 53FBCEC 8007F7BC 23100200 */  negu       $v0, $v0
.Llevel_21_8007F7C0:
/* 53FBCF0 8007F7C0 2A105100 */  slt        $v0, $v0, $s1
/* 53FBCF4 8007F7C4 03004010 */  beqz       $v0, .Llevel_21_8007F7D4
/* 53FBCF8 8007F7C8 21188000 */   addu      $v1, $a0, $zero
/* 53FBCFC 8007F7CC F9FD0108 */  j          .Llevel_21_8007F7E4
/* 53FBD00 8007F7D0 060040A6 */   sh        $zero, 0x6($s2)
.Llevel_21_8007F7D4:
/* 53FBD04 8007F7D4 02008104 */  bgez       $a0, .Llevel_21_8007F7E0
/* 53FBD08 8007F7D8 23107100 */   subu      $v0, $v1, $s1
/* 53FBD0C 8007F7DC 21107100 */  addu       $v0, $v1, $s1
.Llevel_21_8007F7E0:
/* 53FBD10 8007F7E0 060042A6 */  sh         $v0, 0x6($s2)
.Llevel_21_8007F7E4:
/* 53FBD14 8007F7E4 21206002 */  addu       $a0, $s3, $zero
/* 53FBD18 8007F7E8 F4010724 */  addiu      $a3, $zero, 0x1F4
/* 53FBD1C 8007F7EC 06004396 */  lhu        $v1, 0x6($s2)
/* 53FBD20 8007F7F0 46006292 */  lbu        $v0, 0x46($s3)
/* 53FBD24 8007F7F4 001C0300 */  sll        $v1, $v1, 16
/* 53FBD28 8007F7F8 031D0300 */  sra        $v1, $v1, 20
/* 53FBD2C 8007F7FC 21104300 */  addu       $v0, $v0, $v1
/* 53FBD30 8007F800 460062A2 */  sb         $v0, 0x46($s3)
/* 53FBD34 8007F804 01004592 */  lbu        $a1, 0x1($s2)
/* 53FBD38 8007F808 02004686 */  lh         $a2, 0x2($s2)
/* 53FBD3C 8007F80C C8000224 */  addiu      $v0, $zero, 0xC8
/* 53FBD40 8007F810 1000A2AF */  sw         $v0, 0x10($sp)
/* 53FBD44 8007F814 21000224 */  addiu      $v0, $zero, 0x21
/* 53FBD48 8007F818 B8D7000C */  jal        func_80035EE0
/* 53FBD4C 8007F81C 1400A2AF */   sw        $v0, 0x14($sp)
/* 53FBD50 8007F820 2800B127 */  addiu      $s1, $sp, 0x28
/* 53FBD54 8007F824 21202002 */  addu       $a0, $s1, $zero
/* 53FBD58 8007F828 0C007026 */  addiu      $s0, $s3, 0xC
/* 53FBD5C 8007F82C 21280002 */  addu       $a1, $s0, $zero
/* 53FBD60 8007F830 5E3C010C */  jal        func_8004F178
/* 53FBD64 8007F834 21A84000 */   addu      $s5, $v0, $zero
/* 53FBD68 8007F838 3000A28F */  lw         $v0, 0x30($sp)
/* 53FBD6C 8007F83C 00000000 */  nop
/* 53FBD70 8007F840 96004224 */  addiu      $v0, $v0, 0x96
/* 53FBD74 8007F844 3000A2AF */  sw         $v0, 0x30($sp)
/* 53FBD78 8007F848 01004292 */  lbu        $v0, 0x1($s2)
/* 53FBD7C 8007F84C 02004386 */  lh         $v1, 0x2($s2)
/* 53FBD80 8007F850 40100200 */  sll        $v0, $v0, 1
/* 53FBD84 8007F854 0680013C */  lui        $at, %hi(D_80065920)
/* 53FBD88 8007F858 21082200 */  addu       $at, $at, $v0
/* 53FBD8C 8007F85C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 53FBD90 8007F860 96006324 */  addiu      $v1, $v1, 0x96
/* 53FBD94 8007F864 18004300 */  mult       $v0, $v1
/* 53FBD98 8007F868 2800A28F */  lw         $v0, 0x28($sp)
/* 53FBD9C 8007F86C 12480000 */  mflo       $t1
/* 53FBDA0 8007F870 031B0900 */  sra        $v1, $t1, 12
/* 53FBDA4 8007F874 21104300 */  addu       $v0, $v0, $v1
/* 53FBDA8 8007F878 2800A2AF */  sw         $v0, 0x28($sp)
/* 53FBDAC 8007F87C 01004292 */  lbu        $v0, 0x1($s2)
/* 53FBDB0 8007F880 02004386 */  lh         $v1, 0x2($s2)
/* 53FBDB4 8007F884 40100200 */  sll        $v0, $v0, 1
/* 53FBDB8 8007F888 0680013C */  lui        $at, %hi(D_800658A0)
/* 53FBDBC 8007F88C 21082200 */  addu       $at, $at, $v0
/* 53FBDC0 8007F890 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 53FBDC4 8007F894 96006324 */  addiu      $v1, $v1, 0x96
/* 53FBDC8 8007F898 18004300 */  mult       $v0, $v1
/* 53FBDCC 8007F89C 21200002 */  addu       $a0, $s0, $zero
/* 53FBDD0 8007F8A0 21282002 */  addu       $a1, $s1, $zero
/* 53FBDD4 8007F8A4 21300000 */  addu       $a2, $zero, $zero
/* 53FBDD8 8007F8A8 21380000 */  addu       $a3, $zero, $zero
/* 53FBDDC 8007F8AC 2C00A28F */  lw         $v0, 0x2C($sp)
/* 53FBDE0 8007F8B0 12480000 */  mflo       $t1
/* 53FBDE4 8007F8B4 031B0900 */  sra        $v1, $t1, 12
/* 53FBDE8 8007F8B8 21104300 */  addu       $v0, $v0, $v1
/* 53FBDEC 8007F8BC 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 53FBDF0 8007F8C0 C360000C */  jal        func_8001830C
/* 53FBDF4 8007F8C4 1000B3AF */   sw        $s3, 0x10($sp)
/* 53FBDF8 8007F8C8 1F004010 */  beqz       $v0, .Llevel_21_8007F948
/* 53FBDFC 8007F8CC 2000A232 */   andi      $v0, $s5, 0x20
/* 53FBE00 8007F8D0 0780043C */  lui        $a0, %hi(D_80071918)
/* 53FBE04 8007F8D4 1819848C */  lw         $a0, %lo(D_80071918)($a0)
/* 53FBE08 8007F8D8 0780053C */  lui        $a1, %hi(D_8007191C)
/* 53FBE0C 8007F8DC 1C19A58C */  lw         $a1, %lo(D_8007191C)($a1)
/* 53FBE10 8007F8E0 203A010C */  jal        func_8004E880
/* 53FBE14 8007F8E4 21300000 */   addu      $a2, $zero, $zero
/* 53FBE18 8007F8E8 21884000 */  addu       $s1, $v0, $zero
/* 53FBE1C 8007F8EC 40003026 */  addiu      $s0, $s1, 0x40
/* 53FBE20 8007F8F0 01004592 */  lbu        $a1, 0x1($s2)
/* 53FBE24 8007F8F4 993C010C */  jal        func_8004F264
/* 53FBE28 8007F8F8 FF000432 */   andi      $a0, $s0, 0xFF
/* 53FBE2C 8007F8FC 41004228 */  slti       $v0, $v0, 0x41
/* 53FBE30 8007F900 02004014 */  bnez       $v0, .Llevel_21_8007F90C
/* 53FBE34 8007F904 00000000 */   nop
/* 53FBE38 8007F908 C0FF3026 */  addiu      $s0, $s1, -0x40
.Llevel_21_8007F90C:
/* 53FBE3C 8007F90C 01004492 */  lbu        $a0, 0x1($s2)
/* 53FBE40 8007F910 4FD8000C */  jal        func_8003613C
/* 53FBE44 8007F914 FF000532 */   andi      $a1, $s0, 0xFF
/* 53FBE48 8007F918 01004392 */  lbu        $v1, 0x1($s2)
/* 53FBE4C 8007F91C 40100200 */  sll        $v0, $v0, 1
/* 53FBE50 8007F920 21186200 */  addu       $v1, $v1, $v0
/* 53FBE54 8007F924 06004286 */  lh         $v0, 0x6($s2)
/* 53FBE58 8007F928 010043A2 */  sb         $v1, 0x1($s2)
/* 53FBE5C 8007F92C 02004386 */  lh         $v1, 0x2($s2)
/* 53FBE60 8007F930 23100200 */  negu       $v0, $v0
/* 53FBE64 8007F934 060042A6 */  sh         $v0, 0x6($s2)
/* 53FBE68 8007F938 40100300 */  sll        $v0, $v1, 1
/* 53FBE6C 8007F93C 21104300 */  addu       $v0, $v0, $v1
/* 53FBE70 8007F940 63FE0108 */  j          .Llevel_21_8007F98C
/* 53FBE74 8007F944 83100200 */   sra       $v0, $v0, 2
.Llevel_21_8007F948:
/* 53FBE78 8007F948 03004010 */  beqz       $v0, .Llevel_21_8007F958
/* 53FBE7C 8007F94C 00000000 */   nop
/* 53FBE80 8007F950 64FE0108 */  j          .Llevel_21_8007F990
/* 53FBE84 8007F954 000040A2 */   sb        $zero, 0x0($s2)
.Llevel_21_8007F958:
/* 53FBE88 8007F958 02004486 */  lh         $a0, 0x2($s2)
/* 53FBE8C 8007F95C 00000000 */  nop
/* 53FBE90 8007F960 02008104 */  bgez       $a0, .Llevel_21_8007F96C
/* 53FBE94 8007F964 21108000 */   addu      $v0, $a0, $zero
/* 53FBE98 8007F968 23100200 */  negu       $v0, $v0
.Llevel_21_8007F96C:
/* 53FBE9C 8007F96C 2A105400 */  slt        $v0, $v0, $s4
/* 53FBEA0 8007F970 03004010 */  beqz       $v0, .Llevel_21_8007F980
/* 53FBEA4 8007F974 21188000 */   addu      $v1, $a0, $zero
/* 53FBEA8 8007F978 64FE0108 */  j          .Llevel_21_8007F990
/* 53FBEAC 8007F97C 020040A6 */   sh        $zero, 0x2($s2)
.Llevel_21_8007F980:
/* 53FBEB0 8007F980 02008104 */  bgez       $a0, .Llevel_21_8007F98C
/* 53FBEB4 8007F984 23107400 */   subu      $v0, $v1, $s4
/* 53FBEB8 8007F988 21107400 */  addu       $v0, $v1, $s4
.Llevel_21_8007F98C:
/* 53FBEBC 8007F98C 020042A6 */  sh         $v0, 0x2($s2)
.Llevel_21_8007F990:
/* 53FBEC0 8007F990 3800B027 */  addiu      $s0, $sp, 0x38
/* 53FBEC4 8007F994 21200002 */  addu       $a0, $s0, $zero
/* 53FBEC8 8007F998 5E3C010C */  jal        func_8004F178
/* 53FBECC 8007F99C 0C006526 */   addiu     $a1, $s3, 0xC
/* 53FBED0 8007F9A0 21200000 */  addu       $a0, $zero, $zero
/* 53FBED4 8007F9A4 F7D8000C */  jal        func_800363DC
/* 53FBED8 8007F9A8 32000524 */   addiu     $a1, $zero, 0x32
/* 53FBEDC 8007F9AC 21200000 */  addu       $a0, $zero, $zero
/* 53FBEE0 8007F9B0 4000A38F */  lw         $v1, 0x40($sp)
/* 53FBEE4 8007F9B4 FA000524 */  addiu      $a1, $zero, 0xFA
/* 53FBEE8 8007F9B8 A3026324 */  addiu      $v1, $v1, 0x2A3
/* 53FBEEC 8007F9BC 21186200 */  addu       $v1, $v1, $v0
/* 53FBEF0 8007F9C0 DBD8000C */  jal        func_8003636C
/* 53FBEF4 8007F9C4 4000A3AF */   sw        $v1, 0x40($sp)
/* 53FBEF8 8007F9C8 21200000 */  addu       $a0, $zero, $zero
/* 53FBEFC 8007F9CC 3800A38F */  lw         $v1, 0x38($sp)
/* 53FBF00 8007F9D0 FA000524 */  addiu      $a1, $zero, 0xFA
/* 53FBF04 8007F9D4 21186200 */  addu       $v1, $v1, $v0
/* 53FBF08 8007F9D8 DBD8000C */  jal        func_8003636C
/* 53FBF0C 8007F9DC 3800A3AF */   sw        $v1, 0x38($sp)
/* 53FBF10 8007F9E0 3C00A38F */  lw         $v1, 0x3C($sp)
/* 53FBF14 8007F9E4 00000000 */  nop
/* 53FBF18 8007F9E8 21186200 */  addu       $v1, $v1, $v0
/* 53FBF1C 8007F9EC 9171010C */  jal        rand
/* 53FBF20 8007F9F0 3C00A3AF */   sw        $v1, 0x3C($sp)
/* 53FBF24 8007F9F4 1F004230 */  andi       $v0, $v0, 0x1F
/* 53FBF28 8007F9F8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 53FBF2C 8007F9FC 9171010C */  jal        rand
/* 53FBF30 8007FA00 4800A2AF */   sw        $v0, 0x48($sp)
/* 53FBF34 8007FA04 19000424 */  addiu      $a0, $zero, 0x19
/* 53FBF38 8007FA08 23000524 */  addiu      $a1, $zero, 0x23
/* 53FBF3C 8007FA0C 1F004230 */  andi       $v0, $v0, 0x1F
/* 53FBF40 8007FA10 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 53FBF44 8007FA14 DBD8000C */  jal        func_8003636C
/* 53FBF48 8007FA18 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 53FBF4C 8007FA1C 5555043C */  lui        $a0, (0x55555556 >> 16)
/* 53FBF50 8007FA20 5000A2AF */  sw         $v0, 0x50($sp)
/* 53FBF54 8007FA24 02004296 */  lhu        $v0, 0x2($s2)
/* 53FBF58 8007FA28 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 53FBF5C 8007FA2C 00140200 */  sll        $v0, $v0, 16
/* 53FBF60 8007FA30 031C0200 */  sra        $v1, $v0, 16
/* 53FBF64 8007FA34 18006400 */  mult       $v1, $a0
/* 53FBF68 8007FA38 01004392 */  lbu        $v1, 0x1($s2)
/* 53FBF6C 8007FA3C C3170200 */  sra        $v0, $v0, 31
/* 53FBF70 8007FA40 40180300 */  sll        $v1, $v1, 1
/* 53FBF74 8007FA44 0680013C */  lui        $at, %hi(D_80065920)
/* 53FBF78 8007FA48 21082300 */  addu       $at, $at, $v1
/* 53FBF7C 8007FA4C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 53FBF80 8007FA50 10480000 */  mfhi       $t1
/* 53FBF84 8007FA54 23102201 */  subu       $v0, $t1, $v0
/* 53FBF88 8007FA58 00140200 */  sll        $v0, $v0, 16
/* 53FBF8C 8007FA5C 03140200 */  sra        $v0, $v0, 16
/* 53FBF90 8007FA60 18006200 */  mult       $v1, $v0
/* 53FBF94 8007FA64 4800A28F */  lw         $v0, 0x48($sp)
/* 53FBF98 8007FA68 12480000 */  mflo       $t1
/* 53FBF9C 8007FA6C 031B0900 */  sra        $v1, $t1, 12
/* 53FBFA0 8007FA70 21104300 */  addu       $v0, $v0, $v1
/* 53FBFA4 8007FA74 4800A2AF */  sw         $v0, 0x48($sp)
/* 53FBFA8 8007FA78 02004296 */  lhu        $v0, 0x2($s2)
/* 53FBFAC 8007FA7C 00000000 */  nop
/* 53FBFB0 8007FA80 00140200 */  sll        $v0, $v0, 16
/* 53FBFB4 8007FA84 031C0200 */  sra        $v1, $v0, 16
/* 53FBFB8 8007FA88 18006400 */  mult       $v1, $a0
/* 53FBFBC 8007FA8C 01004392 */  lbu        $v1, 0x1($s2)
/* 53FBFC0 8007FA90 C3170200 */  sra        $v0, $v0, 31
/* 53FBFC4 8007FA94 40180300 */  sll        $v1, $v1, 1
/* 53FBFC8 8007FA98 0680013C */  lui        $at, %hi(D_800658A0)
/* 53FBFCC 8007FA9C 21082300 */  addu       $at, $at, $v1
/* 53FBFD0 8007FAA0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 53FBFD4 8007FAA4 10480000 */  mfhi       $t1
/* 53FBFD8 8007FAA8 23102201 */  subu       $v0, $t1, $v0
/* 53FBFDC 8007FAAC 00140200 */  sll        $v0, $v0, 16
/* 53FBFE0 8007FAB0 03140200 */  sra        $v0, $v0, 16
/* 53FBFE4 8007FAB4 18006200 */  mult       $v1, $v0
/* 53FBFE8 8007FAB8 0D000524 */  addiu      $a1, $zero, 0xD
/* 53FBFEC 8007FABC 21300002 */  addu       $a2, $s0, $zero
/* 53FBFF0 8007FAC0 4800A727 */  addiu      $a3, $sp, 0x48
/* 53FBFF4 8007FAC4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 53FBFF8 8007FAC8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 53FBFFC 8007FACC 01000424 */  addiu      $a0, $zero, 0x1
/* 53FC000 8007FAD0 4C00A28F */  lw         $v0, 0x4C($sp)
/* 53FC004 8007FAD4 12480000 */  mflo       $t1
/* 53FC008 8007FAD8 031B0900 */  sra        $v1, $t1, 12
/* 53FC00C 8007FADC 21104300 */  addu       $v0, $v0, $v1
/* 53FC010 8007FAE0 09F80001 */  jalr       $t0
/* 53FC014 8007FAE4 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 53FC018 8007FAE8 21204002 */  addu       $a0, $s2, $zero
/* 53FC01C 8007FAEC 01000524 */  addiu      $a1, $zero, 0x1
/* 53FC020 8007FAF0 04000324 */  addiu      $v1, $zero, 0x4
/* 53FC024 8007FAF4 69D6000C */  jal        func_800359A4
/* 53FC028 8007FAF8 020043A0 */   sb        $v1, 0x2($v0)
/* 53FC02C 8007FAFC 02004010 */  beqz       $v0, .Llevel_21_8007FB08
/* 53FC030 8007FB00 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_21_8007FB04:
/* 53FC034 8007FB04 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_21_8007FB08:
/* 53FC038 8007FB08 48006392 */  lbu        $v1, 0x48($s3)
/* 53FC03C 8007FB0C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_21_8007FB10:
/* 53FC040 8007FB10 41006214 */  bne        $v1, $v0, .Llevel_21_8007FC18
/* 53FC044 8007FB14 180060AE */   sw        $zero, 0x18($s3)
/* 53FC048 8007FB18 69010424 */  addiu      $a0, $zero, 0x169
/* 53FC04C 8007FB1C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 53FC050 8007FB20 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 53FC054 8007FB24 00000000 */  nop
/* 53FC058 8007FB28 09F84000 */  jalr       $v0
/* 53FC05C 8007FB2C 21286002 */   addu      $a1, $s3, $zero
/* 53FC060 8007FB30 21204000 */  addu       $a0, $v0, $zero
/* 53FC064 8007FB34 0C008010 */  beqz       $a0, .Llevel_21_8007FB68
/* 53FC068 8007FB38 00000000 */   nop
/* 53FC06C 8007FB3C 0000838C */  lw         $v1, 0x0($a0)
/* 53FC070 8007FB40 0800428E */  lw         $v0, 0x8($s2)
/* 53FC074 8007FB44 00000000 */  nop
/* 53FC078 8007FB48 0C0062AC */  sw         $v0, 0xC($v1)
/* 53FC07C 8007FB4C 0780023C */  lui        $v0, %hi(D_8006E040)
/* 53FC080 8007FB50 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 53FC084 8007FB54 00000000 */  nop
/* 53FC088 8007FB58 00140200 */  sll        $v0, $v0, 16
/* 53FC08C 8007FB5C 03150200 */  sra        $v0, $v0, 20
/* 53FC090 8007FB60 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 53FC094 8007FB64 460082A0 */  sb         $v0, 0x46($a0)
.Llevel_21_8007FB68:
/* 53FC098 8007FB68 50006392 */  lbu        $v1, 0x50($s3)
/* 53FC09C 8007FB6C FF000224 */  addiu      $v0, $zero, 0xFF
/* 53FC0A0 8007FB70 07006210 */  beq        $v1, $v0, .Llevel_21_8007FB90
/* 53FC0A4 8007FB74 21280000 */   addu      $a1, $zero, $zero
/* 53FC0A8 8007FB78 21206002 */  addu       $a0, $s3, $zero
/* 53FC0AC 8007FB7C 21300000 */  addu       $a2, $zero, $zero
/* 53FC0B0 8007FB80 9ADA000C */  jal        func_80036A68
/* 53FC0B4 8007FB84 21380000 */   addu      $a3, $zero, $zero
/* 53FC0B8 8007FB88 80EE000C */  jal        func_8003BA00
/* 53FC0BC 8007FB8C 21206002 */   addu      $a0, $s3, $zero
.Llevel_21_8007FB90:
/* 53FC0C0 8007FB90 1400428E */  lw         $v0, 0x14($s2)
/* 53FC0C4 8007FB94 00000000 */  nop
/* 53FC0C8 8007FB98 13004010 */  beqz       $v0, .Llevel_21_8007FBE8
/* 53FC0CC 8007FB9C 0C006426 */   addiu     $a0, $s3, 0xC
/* 53FC0D0 8007FBA0 18004526 */  addiu      $a1, $s2, 0x18
/* 53FC0D4 8007FBA4 21300000 */  addu       $a2, $zero, $zero
/* 53FC0D8 8007FBA8 88D8000C */  jal        func_80036220
/* 53FC0DC 8007FBAC 21380000 */   addu      $a3, $zero, $zero
/* 53FC0E0 8007FBB0 0D004010 */  beqz       $v0, .Llevel_21_8007FBE8
/* 53FC0E4 8007FBB4 00000000 */   nop
/* 53FC0E8 8007FBB8 3000438E */  lw         $v1, 0x30($s2)
/* 53FC0EC 8007FBBC 00000000 */  nop
/* 53FC0F0 8007FBC0 40100300 */  sll        $v0, $v1, 1
/* 53FC0F4 8007FBC4 21104300 */  addu       $v0, $v0, $v1
/* 53FC0F8 8007FBC8 80100200 */  sll        $v0, $v0, 2
/* 53FC0FC 8007FBCC 23104300 */  subu       $v0, $v0, $v1
/* 53FC100 8007FBD0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 53FC104 8007FBD4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 53FC108 8007FBD8 C0100200 */  sll        $v0, $v0, 3
/* 53FC10C 8007FBDC 21104300 */  addu       $v0, $v0, $v1
/* 53FC110 8007FBE0 01000324 */  addiu      $v1, $zero, 0x1
/* 53FC114 8007FBE4 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_21_8007FBE8:
/* 53FC118 8007FBE8 1000458E */  lw         $a1, 0x10($s2)
/* 53FC11C 8007FBEC F0EF000C */  jal        func_8003BFC0
/* 53FC120 8007FBF0 21206002 */   addu      $a0, $s3, $zero
/* 53FC124 8007FBF4 05004010 */  beqz       $v0, .Llevel_21_8007FC0C
/* 53FC128 8007FBF8 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 53FC12C 8007FBFC 1000448E */  lw         $a0, 0x10($s2)
/* 53FC130 8007FC00 9CEF000C */  jal        func_8003BE70
/* 53FC134 8007FC04 00000000 */   nop
/* 53FC138 8007FC08 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_21_8007FC0C:
/* 53FC13C 8007FC0C 100042AE */  sw         $v0, 0x10($s2)
/* 53FC140 8007FC10 C656010C */  jal        func_80055B18
/* 53FC144 8007FC14 21206002 */   addu      $a0, $s3, $zero
.Llevel_21_8007FC18:
/* 53FC148 8007FC18 0C00428E */  lw         $v0, 0xC($s2)
/* 53FC14C 8007FC1C 00000000 */  nop
/* 53FC150 8007FC20 03004010 */  beqz       $v0, .Llevel_21_8007FC30
/* 53FC154 8007FC24 21206002 */   addu      $a0, $s3, $zero
/* 53FC158 8007FC28 DBE6000C */  jal        func_80039B6C
/* 53FC15C 8007FC2C 0C004526 */   addiu     $a1, $s2, 0xC
.Llevel_21_8007FC30:
/* 53FC160 8007FC30 8000BF8F */  lw         $ra, 0x80($sp)
/* 53FC164 8007FC34 7C00B58F */  lw         $s5, 0x7C($sp)
/* 53FC168 8007FC38 7800B48F */  lw         $s4, 0x78($sp)
/* 53FC16C 8007FC3C 7400B38F */  lw         $s3, 0x74($sp)
/* 53FC170 8007FC40 7000B28F */  lw         $s2, 0x70($sp)
/* 53FC174 8007FC44 6C00B18F */  lw         $s1, 0x6C($sp)
/* 53FC178 8007FC48 6800B08F */  lw         $s0, 0x68($sp)
/* 53FC17C 8007FC4C 8800BD27 */  addiu      $sp, $sp, 0x88
/* 53FC180 8007FC50 0800E003 */  jr         $ra
/* 53FC184 8007FC54 00000000 */   nop
.size func_level_21_8007F438, . - func_level_21_8007F438
