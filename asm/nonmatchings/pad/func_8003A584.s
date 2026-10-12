.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A584
/* 2AD84 8003A584 0780023C */  lui        $v0, %hi(D_8006C658)
/* 2AD88 8003A588 58C6428C */  lw         $v0, %lo(D_8006C658)($v0)
/* 2AD8C 8003A58C B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 2AD90 8003A590 4400BFAF */  sw         $ra, 0x44($sp)
/* 2AD94 8003A594 4000BEAF */  sw         $fp, 0x40($sp)
/* 2AD98 8003A598 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 2AD9C 8003A59C 3800B6AF */  sw         $s6, 0x38($sp)
/* 2ADA0 8003A5A0 3400B5AF */  sw         $s5, 0x34($sp)
/* 2ADA4 8003A5A4 3000B4AF */  sw         $s4, 0x30($sp)
/* 2ADA8 8003A5A8 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 2ADAC 8003A5AC 2800B2AF */  sw         $s2, 0x28($sp)
/* 2ADB0 8003A5B0 2400B1AF */  sw         $s1, 0x24($sp)
/* 2ADB4 8003A5B4 03004010 */  beqz       $v0, .L8003A5C4
/* 2ADB8 8003A5B8 2000B0AF */   sw        $s0, 0x20($sp)
/* 2ADBC 8003A5BC ACE8000C */  jal        func_8003A2B0
/* 2ADC0 8003A5C0 00000000 */   nop
.L8003A5C4:
/* 2ADC4 8003A5C4 0780023C */  lui        $v0, %hi(D_8006C7CC)
/* 2ADC8 8003A5C8 CCC7428C */  lw         $v0, %lo(D_8006C7CC)($v0)
/* 2ADCC 8003A5CC 0780013C */  lui        $at, %hi(D_8006C7CC)
/* 2ADD0 8003A5D0 CCC720AC */  sw         $zero, %lo(D_8006C7CC)($at)
/* 2ADD4 8003A5D4 0780013C */  lui        $at, %hi(D_8006C648)
/* 2ADD8 8003A5D8 48C622AC */  sw         $v0, %lo(D_8006C648)($at)
/* 2ADDC 8003A5DC 05004228 */  slti       $v0, $v0, 0x5
/* 2ADE0 8003A5E0 04004014 */  bnez       $v0, .L8003A5F4
/* 2ADE4 8003A5E4 21F00000 */   addu      $fp, $zero, $zero
/* 2ADE8 8003A5E8 04000224 */  addiu      $v0, $zero, 0x4
/* 2ADEC 8003A5EC 0780013C */  lui        $at, %hi(D_8006C648)
/* 2ADF0 8003A5F0 48C622AC */  sw         $v0, %lo(D_8006C648)($at)
.L8003A5F4:
/* 2ADF4 8003A5F4 01001724 */  addiu      $s7, $zero, 0x1
.L8003A5F8:
/* 2ADF8 8003A5F8 0900C013 */  beqz       $fp, .L8003A620
/* 2ADFC 8003A5FC 10001524 */   addiu     $s5, $zero, 0x10
/* 2AE00 8003A600 0780113C */  lui        $s1, %hi(D_80072018)
/* 2AE04 8003A604 18203126 */  addiu      $s1, $s1, %lo(D_80072018)
/* 2AE08 8003A608 0780163C */  lui        $s6, %hi(D_80071FD8)
/* 2AE0C 8003A60C D81FD626 */  addiu      $s6, $s6, %lo(D_80071FD8)
/* 2AE10 8003A610 0780073C */  lui        $a3, %hi(D_8006C5B4)
/* 2AE14 8003A614 B4C5E724 */  addiu      $a3, $a3, %lo(D_8006C5B4)
/* 2AE18 8003A618 90E90008 */  j          .L8003A640
/* 2AE1C 8003A61C 1000A7AF */   sw        $a3, 0x10($sp)
.L8003A620:
/* 2AE20 8003A620 0780113C */  lui        $s1, %hi(D_8006E508)
/* 2AE24 8003A624 08E53126 */  addiu      $s1, $s1, %lo(D_8006E508)
/* 2AE28 8003A628 0780163C */  lui        $s6, %hi(D_80071500)
/* 2AE2C 8003A62C 0015D626 */  addiu      $s6, $s6, %lo(D_80071500)
/* 2AE30 8003A630 21A80000 */  addu       $s5, $zero, $zero
/* 2AE34 8003A634 0780073C */  lui        $a3, %hi(D_8006C760)
/* 2AE38 8003A638 60C7E724 */  addiu      $a3, $a3, %lo(D_8006C760)
/* 2AE3C 8003A63C 1000A7AF */  sw         $a3, 0x10($sp)
.L8003A640:
/* 2AE40 8003A640 2C0037A2 */  sb         $s7, 0x2C($s1)
/* 2AE44 8003A644 2D0037A2 */  sb         $s7, 0x2D($s1)
/* 2AE48 8003A648 2E0020A2 */  sb         $zero, 0x2E($s1)
/* 2AE4C 8003A64C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 2AE50 8003A650 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 2AE54 8003A654 340020AE */  sw         $zero, 0x34($s1)
/* 2AE58 8003A658 04004228 */  slti       $v0, $v0, 0x4
/* 2AE5C 8003A65C 0B004014 */  bnez       $v0, .L8003A68C
/* 2AE60 8003A660 380020AE */   sw        $zero, 0x38($s1)
/* 2AE64 8003A664 3000228E */  lw         $v0, 0x30($s1)
/* 2AE68 8003A668 3000C38E */  lw         $v1, 0x30($s6)
/* 2AE6C 8003A66C 27100200 */  nor        $v0, $zero, $v0
/* 2AE70 8003A670 24104300 */  and        $v0, $v0, $v1
/* 2AE74 8003A674 340022AE */  sw         $v0, 0x34($s1)
/* 2AE78 8003A678 3000C28E */  lw         $v0, 0x30($s6)
/* 2AE7C 8003A67C 3000238E */  lw         $v1, 0x30($s1)
/* 2AE80 8003A680 27100200 */  nor        $v0, $zero, $v0
/* 2AE84 8003A684 24186200 */  and        $v1, $v1, $v0
/* 2AE88 8003A688 380023AE */  sw         $v1, 0x38($s1)
.L8003A68C:
/* 2AE8C 8003A68C 0780053C */  lui        $a1, %hi(D_8006C648)
/* 2AE90 8003A690 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 2AE94 8003A694 00000000 */  nop
/* 2AE98 8003A698 3600A018 */  blez       $a1, .L8003A774
/* 2AE9C 8003A69C 21900000 */   addu      $s2, $zero, $zero
/* 2AEA0 8003A6A0 21802002 */  addu       $s0, $s1, $zero
/* 2AEA4 8003A6A4 10001424 */  addiu      $s4, $zero, 0x10
/* 2AEA8 8003A6A8 40001324 */  addiu      $s3, $zero, 0x40
.L8003A6AC:
/* 2AEAC 8003A6AC 21203302 */  addu       $a0, $s1, $s3
/* 2AEB0 8003A6B0 00290500 */  sll        $a1, $a1, 4
/* 2AEB4 8003A6B4 2128C502 */  addu       $a1, $s6, $a1
/* 2AEB8 8003A6B8 2328B400 */  subu       $a1, $a1, $s4
/* 2AEBC 8003A6BC F539010C */  jal        func_8004E7D4
/* 2AEC0 8003A6C0 10000624 */   addiu     $a2, $zero, 0x10
/* 2AEC4 8003A6C4 3400228E */  lw         $v0, 0x34($s1)
/* 2AEC8 8003A6C8 4400038E */  lw         $v1, 0x44($s0)
/* 2AECC 8003A6CC 00000000 */  nop
/* 2AED0 8003A6D0 25104300 */  or         $v0, $v0, $v1
/* 2AED4 8003A6D4 340022AE */  sw         $v0, 0x34($s1)
/* 2AED8 8003A6D8 3800228E */  lw         $v0, 0x38($s1)
/* 2AEDC 8003A6DC 4800038E */  lw         $v1, 0x48($s0)
/* 2AEE0 8003A6E0 00000000 */  nop
/* 2AEE4 8003A6E4 25104300 */  or         $v0, $v0, $v1
/* 2AEE8 8003A6E8 380022AE */  sw         $v0, 0x38($s1)
/* 2AEEC 8003A6EC 4E000392 */  lbu        $v1, 0x4E($s0)
/* 2AEF0 8003A6F0 7F000224 */  addiu      $v0, $zero, 0x7F
/* 2AEF4 8003A6F4 05006214 */  bne        $v1, $v0, .L8003A70C
/* 2AEF8 8003A6F8 00000000 */   nop
/* 2AEFC 8003A6FC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 2AF00 8003A700 00000000 */  nop
/* 2AF04 8003A704 03004310 */  beq        $v0, $v1, .L8003A714
/* 2AF08 8003A708 00000000 */   nop
.L8003A70C:
/* 2AF0C 8003A70C CAE90008 */  j          .L8003A728
/* 2AF10 8003A710 2E0037A2 */   sb        $s7, 0x2E($s1)
.L8003A714:
/* 2AF14 8003A714 4000028E */  lw         $v0, 0x40($s0)
/* 2AF18 8003A718 00000000 */  nop
/* 2AF1C 8003A71C 00F04230 */  andi       $v0, $v0, 0xF000
/* 2AF20 8003A720 02004010 */  beqz       $v0, .L8003A72C
/* 2AF24 8003A724 00000000 */   nop
.L8003A728:
/* 2AF28 8003A728 2D0020A2 */  sb         $zero, 0x2D($s1)
.L8003A72C:
/* 2AF2C 8003A72C 2D002292 */  lbu        $v0, 0x2D($s1)
/* 2AF30 8003A730 00000000 */  nop
/* 2AF34 8003A734 06004010 */  beqz       $v0, .L8003A750
/* 2AF38 8003A738 00000000 */   nop
/* 2AF3C 8003A73C 4000028E */  lw         $v0, 0x40($s0)
/* 2AF40 8003A740 00000000 */  nop
/* 2AF44 8003A744 FFF04230 */  andi       $v0, $v0, 0xF0FF
/* 2AF48 8003A748 02004010 */  beqz       $v0, .L8003A754
/* 2AF4C 8003A74C 00000000 */   nop
.L8003A750:
/* 2AF50 8003A750 2C0020A2 */  sb         $zero, 0x2C($s1)
.L8003A754:
/* 2AF54 8003A754 10001026 */  addiu      $s0, $s0, 0x10
/* 2AF58 8003A758 10009426 */  addiu      $s4, $s4, 0x10
/* 2AF5C 8003A75C 0780053C */  lui        $a1, %hi(D_8006C648)
/* 2AF60 8003A760 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 2AF64 8003A764 01005226 */  addiu      $s2, $s2, 0x1
/* 2AF68 8003A768 2A104502 */  slt        $v0, $s2, $a1
/* 2AF6C 8003A76C CFFF4014 */  bnez       $v0, .L8003A6AC
/* 2AF70 8003A770 10007326 */   addiu     $s3, $s3, 0x10
.L8003A774:
/* 2AF74 8003A774 0000C28E */  lw         $v0, 0x0($s6)
/* 2AF78 8003A778 05002392 */  lbu        $v1, 0x5($s1)
/* 2AF7C 8003A77C 300022AE */  sw         $v0, 0x30($s1)
/* 2AF80 8003A780 0C00C28E */  lw         $v0, 0xC($s6)
/* 2AF84 8003A784 47006010 */  beqz       $v1, .L8003A8A4
/* 2AF88 8003A788 3C0022AE */   sw        $v0, 0x3C($s1)
/* 2AF8C 8003A78C 2B77010C */  jal        PadGetState
/* 2AF90 8003A790 2120A002 */   addu      $a0, $s5, $zero
/* 2AF94 8003A794 21184000 */  addu       $v1, $v0, $zero
/* 2AF98 8003A798 02000724 */  addiu      $a3, $zero, 0x2
/* 2AF9C 8003A79C 03006714 */  bne        $v1, $a3, .L8003A7AC
/* 2AFA0 8003A7A0 06000224 */   addiu     $v0, $zero, 0x6
/* 2AFA4 8003A7A4 28EA0008 */  j          .L8003A8A0
/* 2AFA8 8003A7A8 010037A2 */   sb        $s7, 0x1($s1)
.L8003A7AC:
/* 2AFAC 8003A7AC 3D006214 */  bne        $v1, $v0, .L8003A8A4
/* 2AFB0 8003A7B0 00000000 */   nop
/* 2AFB4 8003A7B4 02002292 */  lbu        $v0, 0x2($s1)
/* 2AFB8 8003A7B8 00000000 */  nop
/* 2AFBC 8003A7BC 05004010 */  beqz       $v0, .L8003A7D4
/* 2AFC0 8003A7C0 00000000 */   nop
/* 2AFC4 8003A7C4 01002292 */  lbu        $v0, 0x1($s1)
/* 2AFC8 8003A7C8 00000000 */  nop
/* 2AFCC 8003A7CC 34004014 */  bnez       $v0, .L8003A8A0
/* 2AFD0 8003A7D0 00000000 */   nop
.L8003A7D4:
/* 2AFD4 8003A7D4 030020A2 */  sb         $zero, 0x3($s1)
/* 2AFD8 8003A7D8 2120A002 */  addu       $a0, $s5, $zero
/* 2AFDC 8003A7DC 04000524 */  addiu      $a1, $zero, 0x4
/* 2AFE0 8003A7E0 5E77010C */  jal        PadInfoMode
/* 2AFE4 8003A7E4 01000624 */   addiu     $a2, $zero, 0x1
/* 2AFE8 8003A7E8 07000324 */  addiu      $v1, $zero, 0x7
/* 2AFEC 8003A7EC 2D004314 */  bne        $v0, $v1, .L8003A8A4
/* 2AFF0 8003A7F0 2120A002 */   addu      $a0, $s5, $zero
/* 2AFF4 8003A7F4 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 2AFF8 8003A7F8 9C77010C */  jal        PadInfoAct
/* 2AFFC 8003A7FC 21300000 */   addu      $a2, $zero, $zero
/* 2B000 8003A800 21984000 */  addu       $s3, $v0, $zero
/* 2B004 8003A804 02000724 */  addiu      $a3, $zero, 0x2
/* 2B008 8003A808 25006716 */  bne        $s3, $a3, .L8003A8A0
/* 2B00C 8003A80C 21900000 */   addu      $s2, $zero, $zero
/* 2B010 8003A810 21800000 */  addu       $s0, $zero, $zero
/* 2B014 8003A814 2120A002 */  addu       $a0, $s5, $zero
.L8003A818:
/* 2B018 8003A818 21280002 */  addu       $a1, $s0, $zero
/* 2B01C 8003A81C 9C77010C */  jal        PadInfoAct
/* 2B020 8003A820 04000624 */   addiu     $a2, $zero, 0x4
/* 2B024 8003A824 21904202 */  addu       $s2, $s2, $v0
/* 2B028 8003A828 01001026 */  addiu      $s0, $s0, 0x1
/* 2B02C 8003A82C 2A101302 */  slt        $v0, $s0, $s3
/* 2B030 8003A830 F9FF4014 */  bnez       $v0, .L8003A818
/* 2B034 8003A834 2120A002 */   addu      $a0, $s5, $zero
/* 2B038 8003A838 3C00422A */  slti       $v0, $s2, 0x3C
/* 2B03C 8003A83C 18004010 */  beqz       $v0, .L8003A8A0
/* 2B040 8003A840 00000000 */   nop
/* 2B044 8003A844 01002292 */  lbu        $v0, 0x1($s1)
/* 2B048 8003A848 00000000 */  nop
/* 2B04C 8003A84C 0B004014 */  bnez       $v0, .L8003A87C
/* 2B050 8003A850 00000000 */   nop
/* 2B054 8003A854 1000A58F */  lw         $a1, 0x10($sp)
/* 2B058 8003A858 F177010C */  jal        PadSetAct
/* 2B05C 8003A85C 02000624 */   addiu     $a2, $zero, 0x2
/* 2B060 8003A860 0680053C */  lui        $a1, %hi(D_80065870)
/* 2B064 8003A864 7058A524 */  addiu      $a1, $a1, %lo(D_80065870)
/* 2B068 8003A868 D177010C */  jal        PadSetActAlign
/* 2B06C 8003A86C 2120A002 */   addu      $a0, $s5, $zero
/* 2B070 8003A870 02004010 */  beqz       $v0, .L8003A87C
/* 2B074 8003A874 00000000 */   nop
/* 2B078 8003A878 010037A2 */  sb         $s7, 0x1($s1)
.L8003A87C:
/* 2B07C 8003A87C 030037A2 */  sb         $s7, 0x3($s1)
/* 2B080 8003A880 2120A002 */  addu       $a0, $s5, $zero
/* 2B084 8003A884 01000524 */  addiu      $a1, $zero, 0x1
/* 2B088 8003A888 DF77010C */  jal        PadSetMainMode
/* 2B08C 8003A88C 21300000 */   addu      $a2, $zero, $zero
/* 2B090 8003A890 04004010 */  beqz       $v0, .L8003A8A4
/* 2B094 8003A894 00000000 */   nop
/* 2B098 8003A898 29EA0008 */  j          .L8003A8A4
/* 2B09C 8003A89C 020037A2 */   sb        $s7, 0x2($s1)
.L8003A8A0:
/* 2B0A0 8003A8A0 050020A2 */  sb         $zero, 0x5($s1)
.L8003A8A4:
/* 2B0A4 8003A8A4 0100DE27 */  addiu      $fp, $fp, 0x1
/* 2B0A8 8003A8A8 0200C22B */  slti       $v0, $fp, 0x2
/* 2B0AC 8003A8AC 52FF4014 */  bnez       $v0, .L8003A5F8
/* 2B0B0 8003A8B0 00000000 */   nop
/* 2B0B4 8003A8B4 0780023C */  lui        $v0, %hi(D_8006C648)
/* 2B0B8 8003A8B8 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 2B0BC 8003A8BC 00000000 */  nop
/* 2B0C0 8003A8C0 02004228 */  slti       $v0, $v0, 0x2
/* 2B0C4 8003A8C4 03004010 */  beqz       $v0, .L8003A8D4
/* 2B0C8 8003A8C8 02000224 */   addiu     $v0, $zero, 0x2
/* 2B0CC 8003A8CC 0780013C */  lui        $at, %hi(D_8006C648)
/* 2B0D0 8003A8D0 48C622AC */  sw         $v0, %lo(D_8006C648)($at)
.L8003A8D4:
/* 2B0D4 8003A8D4 4400BF8F */  lw         $ra, 0x44($sp)
/* 2B0D8 8003A8D8 4000BE8F */  lw         $fp, 0x40($sp)
/* 2B0DC 8003A8DC 3C00B78F */  lw         $s7, 0x3C($sp)
/* 2B0E0 8003A8E0 3800B68F */  lw         $s6, 0x38($sp)
/* 2B0E4 8003A8E4 3400B58F */  lw         $s5, 0x34($sp)
/* 2B0E8 8003A8E8 3000B48F */  lw         $s4, 0x30($sp)
/* 2B0EC 8003A8EC 2C00B38F */  lw         $s3, 0x2C($sp)
/* 2B0F0 8003A8F0 2800B28F */  lw         $s2, 0x28($sp)
/* 2B0F4 8003A8F4 2400B18F */  lw         $s1, 0x24($sp)
/* 2B0F8 8003A8F8 2000B08F */  lw         $s0, 0x20($sp)
/* 2B0FC 8003A8FC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 2B100 8003A900 0800E003 */  jr         $ra
/* 2B104 8003A904 00000000 */   nop
.size func_8003A584, . - func_8003A584
