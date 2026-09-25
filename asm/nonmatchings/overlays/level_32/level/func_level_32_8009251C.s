.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8009251C
/* 6DF9A4C 8009251C 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 6DF9A50 80092520 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 6DF9A54 80092524 21988000 */  addu       $s3, $a0, $zero
/* 6DF9A58 80092528 8000B4AF */  sw         $s4, 0x80($sp)
/* 6DF9A5C 8009252C 21A0A000 */  addu       $s4, $a1, $zero
/* 6DF9A60 80092530 7400B1AF */  sw         $s1, 0x74($sp)
/* 6DF9A64 80092534 2188C000 */  addu       $s1, $a2, $zero
/* 6DF9A68 80092538 8C00B7AF */  sw         $s7, 0x8C($sp)
/* 6DF9A6C 8009253C 21B80000 */  addu       $s7, $zero, $zero
/* 6DF9A70 80092540 8800B6AF */  sw         $s6, 0x88($sp)
/* 6DF9A74 80092544 9000BFAF */  sw         $ra, 0x90($sp)
/* 6DF9A78 80092548 8400B5AF */  sw         $s5, 0x84($sp)
/* 6DF9A7C 8009254C 7800B2AF */  sw         $s2, 0x78($sp)
/* 6DF9A80 80092550 7000B0AF */  sw         $s0, 0x70($sp)
/* 6DF9A84 80092554 02008286 */  lh         $v0, 0x2($s4)
/* 6DF9A88 80092558 0C00838E */  lw         $v1, 0xC($s4)
/* 6DF9A8C 8009255C 00110200 */  sll        $v0, $v0, 4
/* 6DF9A90 80092560 21A86200 */  addu       $s5, $v1, $v0
/* 6DF9A94 80092564 00002386 */  lh         $v1, 0x0($s1)
/* 6DF9A98 80092568 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF9A9C 8009256C 09006214 */  bne        $v1, $v0, .Llevel_32_80092594
/* 6DF9AA0 80092570 21B00000 */   addu      $s6, $zero, $zero
/* 6DF9AA4 80092574 45006292 */  lbu        $v0, 0x45($s3)
/* 6DF9AA8 80092578 00000000 */  nop
/* 6DF9AAC 8009257C 00110200 */  sll        $v0, $v0, 4
/* 6DF9AB0 80092580 000022A6 */  sh         $v0, 0x0($s1)
/* 6DF9AB4 80092584 46006292 */  lbu        $v0, 0x46($s3)
/* 6DF9AB8 80092588 00000000 */  nop
/* 6DF9ABC 8009258C 00110200 */  sll        $v0, $v0, 4
/* 6DF9AC0 80092590 020022A6 */  sh         $v0, 0x2($s1)
.Llevel_32_80092594:
/* 6DF9AC4 80092594 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DF9AC8 80092598 5E3C010C */  jal        func_8004F178
/* 6DF9ACC 8009259C 0C006526 */   addiu     $a1, $s3, 0xC
/* 6DF9AD0 800925A0 38006286 */  lh         $v0, 0x38($s3)
/* 6DF9AD4 800925A4 00000000 */  nop
/* 6DF9AD8 800925A8 1A004010 */  beqz       $v0, .Llevel_32_80092614
/* 6DF9ADC 800925AC 5800A427 */   addiu     $a0, $sp, 0x58
/* 6DF9AE0 800925B0 4000B027 */  addiu      $s0, $sp, 0x40
/* 6DF9AE4 800925B4 5800A0A3 */  sb         $zero, 0x58($sp)
/* 6DF9AE8 800925B8 00002296 */  lhu        $v0, 0x0($s1)
/* 6DF9AEC 800925BC 21280002 */  addu       $a1, $s0, $zero
/* 6DF9AF0 800925C0 02110200 */  srl        $v0, $v0, 4
/* 6DF9AF4 800925C4 5900A2A3 */  sb         $v0, 0x59($sp)
/* 6DF9AF8 800925C8 02002296 */  lhu        $v0, 0x2($s1)
/* 6DF9AFC 800925CC 21300000 */  addu       $a2, $zero, $zero
/* 6DF9B00 800925D0 02110200 */  srl        $v0, $v0, 4
/* 6DF9B04 800925D4 A43A010C */  jal        func_8004EA90
/* 6DF9B08 800925D8 5A00A2A3 */   sb        $v0, 0x5A($sp)
/* 6DF9B0C 800925DC 21200002 */  addu       $a0, $s0, $zero
/* 6DF9B10 800925E0 3000B027 */  addiu      $s0, $sp, 0x30
/* 6DF9B14 800925E4 21280002 */  addu       $a1, $s0, $zero
/* 6DF9B18 800925E8 3000A0AF */  sw         $zero, 0x30($sp)
/* 6DF9B1C 800925EC 3400A0AF */  sw         $zero, 0x34($sp)
/* 6DF9B20 800925F0 38006286 */  lh         $v0, 0x38($s3)
/* 6DF9B24 800925F4 21300002 */  addu       $a2, $s0, $zero
/* 6DF9B28 800925F8 23100200 */  negu       $v0, $v0
/* 6DF9B2C 800925FC 5B3B010C */  jal        func_8004ED6C
/* 6DF9B30 80092600 3800A2AF */   sw        $v0, 0x38($sp)
/* 6DF9B34 80092604 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DF9B38 80092608 21288000 */  addu       $a1, $a0, $zero
/* 6DF9B3C 8009260C 653C010C */  jal        func_8004F194
/* 6DF9B40 80092610 21300002 */   addu      $a2, $s0, $zero
.Llevel_32_80092614:
/* 6DF9B44 80092614 01000624 */  addiu      $a2, $zero, 0x1
/* 6DF9B48 80092618 0000A38E */  lw         $v1, 0x0($s5)
/* 6DF9B4C 8009261C 1000A48F */  lw         $a0, 0x10($sp)
/* 6DF9B50 80092620 0400A28E */  lw         $v0, 0x4($s5)
/* 6DF9B54 80092624 1400A58F */  lw         $a1, 0x14($sp)
/* 6DF9B58 80092628 23206400 */  subu       $a0, $v1, $a0
/* 6DF9B5C 8009262C 203A010C */  jal        func_8004E880
/* 6DF9B60 80092630 23284500 */   subu      $a1, $v0, $a1
/* 6DF9B64 80092634 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DF9B68 80092638 2128A002 */  addu       $a1, $s5, $zero
/* 6DF9B6C 8009263C CD3C010C */  jal        func_8004F334
/* 6DF9B70 80092640 21804000 */   addu      $s0, $v0, $zero
/* 6DF9B74 80092644 21204000 */  addu       $a0, $v0, $zero
/* 6DF9B78 80092648 0800A28E */  lw         $v0, 0x8($s5)
/* 6DF9B7C 8009264C 1800A58F */  lw         $a1, 0x18($sp)
/* 6DF9B80 80092650 01000624 */  addiu      $a2, $zero, 0x1
/* 6DF9B84 80092654 203A010C */  jal        func_8004E880
/* 6DF9B88 80092658 23284500 */   subu      $a1, $v0, $a1
/* 6DF9B8C 8009265C 21280002 */  addu       $a1, $s0, $zero
/* 6DF9B90 80092660 02002486 */  lh         $a0, 0x2($s1)
/* 6DF9B94 80092664 57D8000C */  jal        SubAngle12
/* 6DF9B98 80092668 21804000 */   addu      $s0, $v0, $zero
/* 6DF9B9C 8009266C 21904000 */  addu       $s2, $v0, $zero
/* 6DF9BA0 80092670 00002486 */  lh         $a0, 0x0($s1)
/* 6DF9BA4 80092674 57D8000C */  jal        SubAngle12
/* 6DF9BA8 80092678 21280002 */   addu      $a1, $s0, $zero
/* 6DF9BAC 8009267C 0E002386 */  lh         $v1, 0xE($s1)
/* 6DF9BB0 80092680 00000000 */  nop
/* 6DF9BB4 80092684 0E006010 */  beqz       $v1, .Llevel_32_800926C0
/* 6DF9BB8 80092688 21284000 */   addu      $a1, $v0, $zero
/* 6DF9BBC 8009268C 02004106 */  bgez       $s2, .Llevel_32_80092698
/* 6DF9BC0 80092690 21104002 */   addu      $v0, $s2, $zero
/* 6DF9BC4 80092694 23100200 */  negu       $v0, $v0
.Llevel_32_80092698:
/* 6DF9BC8 80092698 01044228 */  slti       $v0, $v0, 0x401
/* 6DF9BCC 8009269C 07004010 */  beqz       $v0, .Llevel_32_800926BC
/* 6DF9BD0 800926A0 00000000 */   nop
/* 6DF9BD4 800926A4 0200A104 */  bgez       $a1, .Llevel_32_800926B0
/* 6DF9BD8 800926A8 2110A000 */   addu      $v0, $a1, $zero
/* 6DF9BDC 800926AC 23100200 */  negu       $v0, $v0
.Llevel_32_800926B0:
/* 6DF9BE0 800926B0 01044228 */  slti       $v0, $v0, 0x401
/* 6DF9BE4 800926B4 02004014 */  bnez       $v0, .Llevel_32_800926C0
/* 6DF9BE8 800926B8 00000000 */   nop
.Llevel_32_800926BC:
/* 6DF9BEC 800926BC 01001624 */  addiu      $s6, $zero, 0x1
.Llevel_32_800926C0:
/* 6DF9BF0 800926C0 06002386 */  lh         $v1, 0x6($s1)
/* 6DF9BF4 800926C4 00000000 */  nop
/* 6DF9BF8 800926C8 2A107200 */  slt        $v0, $v1, $s2
/* 6DF9BFC 800926CC 02004010 */  beqz       $v0, .Llevel_32_800926D8
/* 6DF9C00 800926D0 23200300 */   negu      $a0, $v1
/* 6DF9C04 800926D4 21906000 */  addu       $s2, $v1, $zero
.Llevel_32_800926D8:
/* 6DF9C08 800926D8 2A104402 */  slt        $v0, $s2, $a0
/* 6DF9C0C 800926DC 02004010 */  beqz       $v0, .Llevel_32_800926E8
/* 6DF9C10 800926E0 2A106500 */   slt       $v0, $v1, $a1
/* 6DF9C14 800926E4 21908000 */  addu       $s2, $a0, $zero
.Llevel_32_800926E8:
/* 6DF9C18 800926E8 03004010 */  beqz       $v0, .Llevel_32_800926F8
/* 6DF9C1C 800926EC 2A10A400 */   slt       $v0, $a1, $a0
/* 6DF9C20 800926F0 21286000 */  addu       $a1, $v1, $zero
/* 6DF9C24 800926F4 2A10A400 */  slt        $v0, $a1, $a0
.Llevel_32_800926F8:
/* 6DF9C28 800926F8 02004010 */  beqz       $v0, .Llevel_32_80092704
/* 6DF9C2C 800926FC 00000000 */   nop
/* 6DF9C30 80092700 21288000 */  addu       $a1, $a0, $zero
.Llevel_32_80092704:
/* 6DF9C34 80092704 0A002296 */  lhu        $v0, 0xA($s1)
/* 6DF9C38 80092708 08002396 */  lhu        $v1, 0x8($s1)
/* 6DF9C3C 8009270C 21105200 */  addu       $v0, $v0, $s2
/* 6DF9C40 80092710 02004106 */  bgez       $s2, .Llevel_32_8009271C
/* 6DF9C44 80092714 00000000 */   nop
/* 6DF9C48 80092718 23901200 */  negu       $s2, $s2
.Llevel_32_8009271C:
/* 6DF9C4C 8009271C 21186500 */  addu       $v1, $v1, $a1
/* 6DF9C50 80092720 0A0022A6 */  sh         $v0, 0xA($s1)
/* 6DF9C54 80092724 0A002286 */  lh         $v0, 0xA($s1)
/* 6DF9C58 80092728 0200A104 */  bgez       $a1, .Llevel_32_80092734
/* 6DF9C5C 8009272C 00000000 */   nop
/* 6DF9C60 80092730 23280500 */  negu       $a1, $a1
.Llevel_32_80092734:
/* 6DF9C64 80092734 2A104202 */  slt        $v0, $s2, $v0
/* 6DF9C68 80092738 02004010 */  beqz       $v0, .Llevel_32_80092744
/* 6DF9C6C 8009273C 080023A6 */   sh        $v1, 0x8($s1)
/* 6DF9C70 80092740 0A0032A6 */  sh         $s2, 0xA($s1)
.Llevel_32_80092744:
/* 6DF9C74 80092744 0A002286 */  lh         $v0, 0xA($s1)
/* 6DF9C78 80092748 23181200 */  negu       $v1, $s2
/* 6DF9C7C 8009274C 2A104300 */  slt        $v0, $v0, $v1
/* 6DF9C80 80092750 02004010 */  beqz       $v0, .Llevel_32_8009275C
/* 6DF9C84 80092754 00000000 */   nop
/* 6DF9C88 80092758 0A0023A6 */  sh         $v1, 0xA($s1)
.Llevel_32_8009275C:
/* 6DF9C8C 8009275C 08002286 */  lh         $v0, 0x8($s1)
/* 6DF9C90 80092760 00000000 */  nop
/* 6DF9C94 80092764 2A10A200 */  slt        $v0, $a1, $v0
/* 6DF9C98 80092768 02004010 */  beqz       $v0, .Llevel_32_80092774
/* 6DF9C9C 8009276C 00000000 */   nop
/* 6DF9CA0 80092770 080025A6 */  sh         $a1, 0x8($s1)
.Llevel_32_80092774:
/* 6DF9CA4 80092774 08002286 */  lh         $v0, 0x8($s1)
/* 6DF9CA8 80092778 23180500 */  negu       $v1, $a1
/* 6DF9CAC 8009277C 2A104300 */  slt        $v0, $v0, $v1
/* 6DF9CB0 80092780 02004010 */  beqz       $v0, .Llevel_32_8009278C
/* 6DF9CB4 80092784 00000000 */   nop
/* 6DF9CB8 80092788 080023A6 */  sh         $v1, 0x8($s1)
.Llevel_32_8009278C:
/* 6DF9CBC 8009278C 00002396 */  lhu        $v1, 0x0($s1)
/* 6DF9CC0 80092790 08002296 */  lhu        $v0, 0x8($s1)
/* 6DF9CC4 80092794 0A002496 */  lhu        $a0, 0xA($s1)
/* 6DF9CC8 80092798 21186200 */  addu       $v1, $v1, $v0
/* 6DF9CCC 8009279C FF0F6330 */  andi       $v1, $v1, 0xFFF
/* 6DF9CD0 800927A0 02002296 */  lhu        $v0, 0x2($s1)
/* 6DF9CD4 800927A4 02290300 */  srl        $a1, $v1, 4
/* 6DF9CD8 800927A8 000023A6 */  sh         $v1, 0x0($s1)
/* 6DF9CDC 800927AC 21104400 */  addu       $v0, $v0, $a0
/* 6DF9CE0 800927B0 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 6DF9CE4 800927B4 020022A6 */  sh         $v0, 0x2($s1)
/* 6DF9CE8 800927B8 450065A2 */  sb         $a1, 0x45($s3)
/* 6DF9CEC 800927BC 02002296 */  lhu        $v0, 0x2($s1)
/* 6DF9CF0 800927C0 00000000 */  nop
/* 6DF9CF4 800927C4 02110200 */  srl        $v0, $v0, 4
/* 6DF9CF8 800927C8 460062A2 */  sb         $v0, 0x46($s3)
/* 6DF9CFC 800927CC 02002486 */  lh         $a0, 0x2($s1)
/* 6DF9D00 800927D0 8B3A010C */  jal        func_8004EA2C
/* 6DF9D04 800927D4 00000000 */   nop
/* 6DF9D08 800927D8 00002486 */  lh         $a0, 0x0($s1)
/* 6DF9D0C 800927DC 8B3A010C */  jal        func_8004EA2C
/* 6DF9D10 800927E0 21804000 */   addu      $s0, $v0, $zero
/* 6DF9D14 800927E4 04002386 */  lh         $v1, 0x4($s1)
/* 6DF9D18 800927E8 00000000 */  nop
/* 6DF9D1C 800927EC 18000302 */  mult       $s0, $v1
/* 6DF9D20 800927F0 12380000 */  mflo       $a3
/* 6DF9D24 800927F4 031B0700 */  sra        $v1, $a3, 12
/* 6DF9D28 800927F8 00000000 */  nop
/* 6DF9D2C 800927FC 18006200 */  mult       $v1, $v0
/* 6DF9D30 80092800 12380000 */  mflo       $a3
/* 6DF9D34 80092804 03130700 */  sra        $v0, $a3, 12
/* 6DF9D38 80092808 2000A2AF */  sw         $v0, 0x20($sp)
/* 6DF9D3C 8009280C 02002486 */  lh         $a0, 0x2($s1)
/* 6DF9D40 80092810 793A010C */  jal        func_8004E9E4
/* 6DF9D44 80092814 00000000 */   nop
/* 6DF9D48 80092818 00002486 */  lh         $a0, 0x0($s1)
/* 6DF9D4C 8009281C 8B3A010C */  jal        func_8004EA2C
/* 6DF9D50 80092820 21804000 */   addu      $s0, $v0, $zero
/* 6DF9D54 80092824 04002386 */  lh         $v1, 0x4($s1)
/* 6DF9D58 80092828 00000000 */  nop
/* 6DF9D5C 8009282C 18000302 */  mult       $s0, $v1
/* 6DF9D60 80092830 12380000 */  mflo       $a3
/* 6DF9D64 80092834 031B0700 */  sra        $v1, $a3, 12
/* 6DF9D68 80092838 00000000 */  nop
/* 6DF9D6C 8009283C 18006200 */  mult       $v1, $v0
/* 6DF9D70 80092840 12380000 */  mflo       $a3
/* 6DF9D74 80092844 03130700 */  sra        $v0, $a3, 12
/* 6DF9D78 80092848 2400A2AF */  sw         $v0, 0x24($sp)
/* 6DF9D7C 8009284C 00002486 */  lh         $a0, 0x0($s1)
/* 6DF9D80 80092850 793A010C */  jal        func_8004E9E4
/* 6DF9D84 80092854 00000000 */   nop
/* 6DF9D88 80092858 04002386 */  lh         $v1, 0x4($s1)
/* 6DF9D8C 8009285C 00000000 */  nop
/* 6DF9D90 80092860 18004300 */  mult       $v0, $v1
/* 6DF9D94 80092864 0C006426 */  addiu      $a0, $s3, 0xC
/* 6DF9D98 80092868 21288000 */  addu       $a1, $a0, $zero
/* 6DF9D9C 8009286C 2000B027 */  addiu      $s0, $sp, 0x20
/* 6DF9DA0 80092870 21300002 */  addu       $a2, $s0, $zero
/* 6DF9DA4 80092874 12380000 */  mflo       $a3
/* 6DF9DA8 80092878 03130700 */  sra        $v0, $a3, 12
/* 6DF9DAC 8009287C 653C010C */  jal        func_8004F194
/* 6DF9DB0 80092880 2800A2AF */   sw        $v0, 0x28($sp)
/* 6DF9DB4 80092884 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DF9DB8 80092888 21288000 */  addu       $a1, $a0, $zero
/* 6DF9DBC 8009288C 653C010C */  jal        func_8004F194
/* 6DF9DC0 80092890 21300002 */   addu      $a2, $s0, $zero
/* 6DF9DC4 80092894 21206002 */  addu       $a0, $s3, $zero
/* 6DF9DC8 80092898 4957010C */  jal        func_80055D24
/* 6DF9DCC 8009289C 02000524 */   addiu     $a1, $zero, 0x2
/* 6DF9DD0 800928A0 6000B027 */  addiu      $s0, $sp, 0x60
/* 6DF9DD4 800928A4 21200002 */  addu       $a0, $s0, $zero
/* 6DF9DD8 800928A8 1000A527 */  addiu      $a1, $sp, 0x10
/* 6DF9DDC 800928AC 723C010C */  jal        func_8004F1C8
/* 6DF9DE0 800928B0 2130A002 */   addu      $a2, $s5, $zero
/* 6DF9DE4 800928B4 21200002 */  addu       $a0, $s0, $zero
/* 6DF9DE8 800928B8 7A3B010C */  jal        func_8004EDE8
/* 6DF9DEC 800928BC 01000524 */   addiu     $a1, $zero, 0x1
/* 6DF9DF0 800928C0 0C002386 */  lh         $v1, 0xC($s1)
/* 6DF9DF4 800928C4 00000000 */  nop
/* 6DF9DF8 800928C8 2A104300 */  slt        $v0, $v0, $v1
/* 6DF9DFC 800928CC 03004014 */  bnez       $v0, .Llevel_32_800928DC
/* 6DF9E00 800928D0 00000000 */   nop
/* 6DF9E04 800928D4 1400C012 */  beqz       $s6, .Llevel_32_80092928
/* 6DF9E08 800928D8 2110E002 */   addu      $v0, $s7, $zero
.Llevel_32_800928DC:
/* 6DF9E0C 800928DC 02008286 */  lh         $v0, 0x2($s4)
/* 6DF9E10 800928E0 0A008486 */  lh         $a0, 0xA($s4)
/* 6DF9E14 800928E4 00008386 */  lh         $v1, 0x0($s4)
/* 6DF9E18 800928E8 21104400 */  addu       $v0, $v0, $a0
/* 6DF9E1C 800928EC 21104300 */  addu       $v0, $v0, $v1
/* 6DF9E20 800928F0 1A004300 */  div        $zero, $v0, $v1
/* 6DF9E24 800928F4 02006014 */  bnez       $v1, .Llevel_32_80092900
/* 6DF9E28 800928F8 00000000 */   nop
/* 6DF9E2C 800928FC 0D000700 */  break      7
.Llevel_32_80092900:
/* 6DF9E30 80092900 FFFF0124 */  addiu      $at, $zero, -0x1
/* 6DF9E34 80092904 04006114 */  bne        $v1, $at, .Llevel_32_80092918
/* 6DF9E38 80092908 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6DF9E3C 8009290C 02004114 */  bne        $v0, $at, .Llevel_32_80092918
/* 6DF9E40 80092910 00000000 */   nop
/* 6DF9E44 80092914 0D000600 */  break      6
.Llevel_32_80092918:
/* 6DF9E48 80092918 10180000 */  mfhi       $v1
/* 6DF9E4C 8009291C 01001724 */  addiu      $s7, $zero, 0x1
/* 6DF9E50 80092920 020083A6 */  sh         $v1, 0x2($s4)
/* 6DF9E54 80092924 2110E002 */  addu       $v0, $s7, $zero
.Llevel_32_80092928:
/* 6DF9E58 80092928 9000BF8F */  lw         $ra, 0x90($sp)
/* 6DF9E5C 8009292C 8C00B78F */  lw         $s7, 0x8C($sp)
/* 6DF9E60 80092930 8800B68F */  lw         $s6, 0x88($sp)
/* 6DF9E64 80092934 8400B58F */  lw         $s5, 0x84($sp)
/* 6DF9E68 80092938 8000B48F */  lw         $s4, 0x80($sp)
/* 6DF9E6C 8009293C 7C00B38F */  lw         $s3, 0x7C($sp)
/* 6DF9E70 80092940 7800B28F */  lw         $s2, 0x78($sp)
/* 6DF9E74 80092944 7400B18F */  lw         $s1, 0x74($sp)
/* 6DF9E78 80092948 7000B08F */  lw         $s0, 0x70($sp)
/* 6DF9E7C 8009294C 9800BD27 */  addiu      $sp, $sp, 0x98
/* 6DF9E80 80092950 0800E003 */  jr         $ra
/* 6DF9E84 80092954 00000000 */   nop
.size func_level_32_8009251C, . - func_level_32_8009251C
