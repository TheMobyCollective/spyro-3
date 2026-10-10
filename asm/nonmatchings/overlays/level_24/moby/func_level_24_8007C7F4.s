.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007C7F4
/* 5DF7524 8007C7F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5DF7528 8007C7F8 2000B2AF */  sw         $s2, 0x20($sp)
/* 5DF752C 8007C7FC 21908000 */  addu       $s2, $a0, $zero
/* 5DF7530 8007C800 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 5DF7534 8007C804 2800B4AF */  sw         $s4, 0x28($sp)
/* 5DF7538 8007C808 2400B3AF */  sw         $s3, 0x24($sp)
/* 5DF753C 8007C80C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 5DF7540 8007C810 1800B0AF */  sw         $s0, 0x18($sp)
/* 5DF7544 8007C814 0000508E */  lw         $s0, 0x0($s2)
/* 5DF7548 8007C818 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 5DF754C 8007C81C C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 5DF7550 8007C820 4000038E */  lw         $v1, 0x40($s0)
/* 5DF7554 8007C824 00000000 */  nop
/* 5DF7558 8007C828 94006214 */  bne        $v1, $v0, .Llevel_24_8007CA7C
/* 5DF755C 8007C82C 00000000 */   nop
/* 5DF7560 8007C830 0780143C */  lui        $s4, %hi(D_8006E480)
/* 5DF7564 8007C834 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 5DF7568 8007C838 0000828E */  lw         $v0, 0x0($s4)
/* 5DF756C 8007C83C 00000000 */  nop
/* 5DF7570 8007C840 8E004014 */  bnez       $v0, .Llevel_24_8007CA7C
/* 5DF7574 8007C844 01001324 */   addiu     $s3, $zero, 0x1
/* 5DF7578 8007C848 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5DF757C 8007C84C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5DF7580 8007C850 00000000 */  nop
/* 5DF7584 8007C854 89007310 */  beq        $v1, $s3, .Llevel_24_8007CA7C
/* 5DF7588 8007C858 0F000224 */   addiu     $v0, $zero, 0xF
/* 5DF758C 8007C85C 87006210 */  beq        $v1, $v0, .Llevel_24_8007CA7C
/* 5DF7590 8007C860 21280002 */   addu      $a1, $s0, $zero
/* 5DF7594 8007C864 0780113C */  lui        $s1, %hi(D_80070328)
/* 5DF7598 8007C868 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 5DF759C 8007C86C 21202002 */  addu       $a0, $s1, $zero
/* 5DF75A0 8007C870 3800078E */  lw         $a3, 0x38($s0)
/* 5DF75A4 8007C874 88D8000C */  jal        func_80036220
/* 5DF75A8 8007C878 21300000 */   addu      $a2, $zero, $zero
/* 5DF75AC 8007C87C 0E004010 */  beqz       $v0, .Llevel_24_8007C8B8
/* 5DF75B0 8007C880 00000000 */   nop
/* 5DF75B4 8007C884 3000028E */  lw         $v0, 0x30($s0)
/* 5DF75B8 8007C888 3400048E */  lw         $a0, 0x34($s0)
/* 5DF75BC 8007C88C 40280200 */  sll        $a1, $v0, 1
/* 5DF75C0 8007C890 2128A200 */  addu       $a1, $a1, $v0
/* 5DF75C4 8007C894 80280500 */  sll        $a1, $a1, 2
/* 5DF75C8 8007C898 2328A200 */  subu       $a1, $a1, $v0
/* 5DF75CC 8007C89C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5DF75D0 8007C8A0 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5DF75D4 8007C8A4 C0280500 */  sll        $a1, $a1, 3
/* 5DF75D8 8007C8A8 464A010C */  jal        func_80052918
/* 5DF75DC 8007C8AC 21284500 */   addu      $a1, $v0, $a1
/* 5DF75E0 8007C8B0 9FF20108 */  j          .Llevel_24_8007CA7C
/* 5DF75E4 8007C8B4 00000000 */   nop
.Llevel_24_8007C8B8:
/* 5DF75E8 8007C8B8 48004392 */  lbu        $v1, 0x48($s2)
/* 5DF75EC 8007C8BC 00000000 */  nop
/* 5DF75F0 8007C8C0 14007310 */  beq        $v1, $s3, .Llevel_24_8007C914
/* 5DF75F4 8007C8C4 02006228 */   slti      $v0, $v1, 0x2
/* 5DF75F8 8007C8C8 05004010 */  beqz       $v0, .Llevel_24_8007C8E0
/* 5DF75FC 8007C8CC 00000000 */   nop
/* 5DF7600 8007C8D0 0A006010 */  beqz       $v1, .Llevel_24_8007C8FC
/* 5DF7604 8007C8D4 21202002 */   addu      $a0, $s1, $zero
/* 5DF7608 8007C8D8 9FF20108 */  j          .Llevel_24_8007CA7C
/* 5DF760C 8007C8DC 00000000 */   nop
.Llevel_24_8007C8E0:
/* 5DF7610 8007C8E0 02001424 */  addiu      $s4, $zero, 0x2
/* 5DF7614 8007C8E4 43007410 */  beq        $v1, $s4, .Llevel_24_8007C9F4
/* 5DF7618 8007C8E8 03000224 */   addiu     $v0, $zero, 0x3
/* 5DF761C 8007C8EC 56006210 */  beq        $v1, $v0, .Llevel_24_8007CA48
/* 5DF7620 8007C8F0 00000000 */   nop
/* 5DF7624 8007C8F4 9FF20108 */  j          .Llevel_24_8007CA7C
/* 5DF7628 8007C8F8 00000000 */   nop
.Llevel_24_8007C8FC:
/* 5DF762C 8007C8FC 18000526 */  addiu      $a1, $s0, 0x18
/* 5DF7630 8007C900 3C00078E */  lw         $a3, 0x3C($s0)
/* 5DF7634 8007C904 88D8000C */  jal        func_80036220
/* 5DF7638 8007C908 21300000 */   addu      $a2, $zero, $zero
/* 5DF763C 8007C90C 8BF20108 */  j          .Llevel_24_8007CA2C
/* 5DF7640 8007C910 00000000 */   nop
.Llevel_24_8007C914:
/* 5DF7644 8007C914 21202002 */  addu       $a0, $s1, $zero
/* 5DF7648 8007C918 18000526 */  addiu      $a1, $s0, 0x18
/* 5DF764C 8007C91C 3C00078E */  lw         $a3, 0x3C($s0)
/* 5DF7650 8007C920 00040624 */  addiu      $a2, $zero, 0x400
/* 5DF7654 8007C924 88D8000C */  jal        func_80036220
/* 5DF7658 8007C928 0004E724 */   addiu     $a3, $a3, 0x400
/* 5DF765C 8007C92C 39004010 */  beqz       $v0, .Llevel_24_8007CA14
/* 5DF7660 8007C930 00000000 */   nop
/* 5DF7664 8007C934 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 5DF7668 8007C938 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 5DF766C 8007C93C 00000000 */  nop
/* 5DF7670 8007C940 4E004014 */  bnez       $v0, .Llevel_24_8007CA7C
/* 5DF7674 8007C944 02000324 */   addiu     $v1, $zero, 0x2
/* 5DF7678 8007C948 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 5DF767C 8007C94C C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 5DF7680 8007C950 80000224 */  addiu      $v0, $zero, 0x80
/* 5DF7684 8007C954 03008010 */  beqz       $a0, .Llevel_24_8007C964
/* 5DF7688 8007C958 1000A2A3 */   sb        $v0, 0x10($sp)
/* 5DF768C 8007C95C 40100400 */  sll        $v0, $a0, 1
/* 5DF7690 8007C960 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_24_8007C964:
/* 5DF7694 8007C964 0E000424 */  addiu      $a0, $zero, 0xE
/* 5DF7698 8007C968 1000A527 */  addiu      $a1, $sp, 0x10
/* 5DF769C 8007C96C C0180300 */  sll        $v1, $v1, 3
/* 5DF76A0 8007C970 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5DF76A4 8007C974 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5DF76A8 8007C978 0780013C */  lui        $at, %hi(D_80072098)
/* 5DF76AC 8007C97C 21082300 */  addu       $at, $at, $v1
/* 5DF76B0 8007C980 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 5DF76B4 8007C984 00110200 */  sll        $v0, $v0, 4
/* 5DF76B8 8007C988 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 5DF76BC 8007C98C 21082200 */  addu       $at, $at, $v0
/* 5DF76C0 8007C990 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 5DF76C4 8007C994 21300000 */  addu       $a2, $zero, $zero
/* 5DF76C8 8007C998 2F78010C */  jal        func_8005E0BC
/* 5DF76CC 8007C99C 21800202 */   addu      $s0, $s0, $v0
/* 5DF76D0 8007C9A0 21200002 */  addu       $a0, $s0, $zero
/* 5DF76D4 8007C9A4 02008104 */  bgez       $a0, .Llevel_24_8007C9B0
/* 5DF76D8 8007C9A8 F8FF9026 */   addiu     $s0, $s4, -0x8
/* 5DF76DC 8007C9AC FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_24_8007C9B0:
/* 5DF76E0 8007C9B0 21280002 */  addu       $a1, $s0, $zero
/* 5DF76E4 8007C9B4 0780023C */  lui        $v0, %hi(D_8006E470)
/* 5DF76E8 8007C9B8 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 5DF76EC 8007C9BC C3220400 */  sra        $a0, $a0, 11
/* 5DF76F0 8007C9C0 1B7D010C */  jal        CdIntToPos
/* 5DF76F4 8007C9C4 21204400 */   addu      $a0, $v0, $a0
/* 5DF76F8 8007C9C8 02000424 */  addiu      $a0, $zero, 0x2
/* 5DF76FC 8007C9CC 21280002 */  addu       $a1, $s0, $zero
/* 5DF7700 8007C9D0 2F78010C */  jal        func_8005E0BC
/* 5DF7704 8007C9D4 21300000 */   addu      $a2, $zero, $zero
/* 5DF7708 8007C9D8 16000424 */  addiu      $a0, $zero, 0x16
/* 5DF770C 8007C9DC 21280000 */  addu       $a1, $zero, $zero
/* 5DF7710 8007C9E0 2F78010C */  jal        func_8005E0BC
/* 5DF7714 8007C9E4 21300000 */   addu      $a2, $zero, $zero
/* 5DF7718 8007C9E8 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF771C 8007C9EC 9FF20108 */  j          .Llevel_24_8007CA7C
/* 5DF7720 8007C9F0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007C9F4:
/* 5DF7724 8007C9F4 21202002 */  addu       $a0, $s1, $zero
/* 5DF7728 8007C9F8 18000526 */  addiu      $a1, $s0, 0x18
/* 5DF772C 8007C9FC 3C00078E */  lw         $a3, 0x3C($s0)
/* 5DF7730 8007CA00 00040624 */  addiu      $a2, $zero, 0x400
/* 5DF7734 8007CA04 88D8000C */  jal        func_80036220
/* 5DF7738 8007CA08 0004E724 */   addiu     $a3, $a3, 0x400
/* 5DF773C 8007CA0C 05004014 */  bnez       $v0, .Llevel_24_8007CA24
/* 5DF7740 8007CA10 00000000 */   nop
.Llevel_24_8007CA14:
/* 5DF7744 8007CA14 0780013C */  lui        $at, %hi(D_8006E49C)
/* 5DF7748 8007CA18 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 5DF774C 8007CA1C 9FF20108 */  j          .Llevel_24_8007CA7C
/* 5DF7750 8007CA20 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_24_8007CA24:
/* 5DF7754 8007CA24 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 5DF7758 8007CA28 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_24_8007CA2C:
/* 5DF775C 8007CA2C 00000000 */  nop
/* 5DF7760 8007CA30 12004010 */  beqz       $v0, .Llevel_24_8007CA7C
/* 5DF7764 8007CA34 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF7768 8007CA38 0780013C */  lui        $at, %hi(D_8006E49C)
/* 5DF776C 8007CA3C 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 5DF7770 8007CA40 9FF20108 */  j          .Llevel_24_8007CA7C
/* 5DF7774 8007CA44 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007CA48:
/* 5DF7778 8007CA48 3000028E */  lw         $v0, 0x30($s0)
/* 5DF777C 8007CA4C 3400048E */  lw         $a0, 0x34($s0)
/* 5DF7780 8007CA50 40280200 */  sll        $a1, $v0, 1
/* 5DF7784 8007CA54 2128A200 */  addu       $a1, $a1, $v0
/* 5DF7788 8007CA58 80280500 */  sll        $a1, $a1, 2
/* 5DF778C 8007CA5C 2328A200 */  subu       $a1, $a1, $v0
/* 5DF7790 8007CA60 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5DF7794 8007CA64 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5DF7798 8007CA68 C0280500 */  sll        $a1, $a1, 3
/* 5DF779C 8007CA6C 464A010C */  jal        func_80052918
/* 5DF77A0 8007CA70 21284500 */   addu      $a1, $v0, $a1
/* 5DF77A4 8007CA74 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 5DF77A8 8007CA78 F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_24_8007CA7C:
/* 5DF77AC 8007CA7C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 5DF77B0 8007CA80 2800B48F */  lw         $s4, 0x28($sp)
/* 5DF77B4 8007CA84 2400B38F */  lw         $s3, 0x24($sp)
/* 5DF77B8 8007CA88 2000B28F */  lw         $s2, 0x20($sp)
/* 5DF77BC 8007CA8C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5DF77C0 8007CA90 1800B08F */  lw         $s0, 0x18($sp)
/* 5DF77C4 8007CA94 3000BD27 */  addiu      $sp, $sp, 0x30
/* 5DF77C8 8007CA98 0800E003 */  jr         $ra
/* 5DF77CC 8007CA9C 00000000 */   nop
.size func_level_24_8007C7F4, . - func_level_24_8007C7F4
