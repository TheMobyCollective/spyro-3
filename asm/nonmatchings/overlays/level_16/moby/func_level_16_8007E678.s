.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_311_level_16
/* 4B9FBA8 8007E678 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4B9FBAC 8007E67C 21508000 */  addu       $t2, $a0, $zero
/* 4B9FBB0 8007E680 2800BFAF */  sw         $ra, 0x28($sp)
/* 4B9FBB4 8007E684 00004E8D */  lw         $t6, 0x0($t2)
/* 4B9FBB8 8007E688 00000000 */  nop
/* 4B9FBBC 8007E68C 0000CB8D */  lw         $t3, 0x0($t6)
/* 4B9FBC0 8007E690 00000000 */  nop
/* 4B9FBC4 8007E694 0000628D */  lw         $v0, 0x0($t3)
/* 4B9FBC8 8007E698 00000000 */  nop
/* 4B9FBCC 8007E69C 07004290 */  lbu        $v0, 0x7($v0)
/* 4B9FBD0 8007E6A0 00000000 */  nop
/* 4B9FBD4 8007E6A4 05004014 */  bnez       $v0, .Llevel_16_8007E6BC
/* 4B9FBD8 8007E6A8 6666063C */   lui       $a2, (0x66666667 >> 16)
/* 4B9FBDC 8007E6AC C656010C */  jal        func_80055B18
/* 4B9FBE0 8007E6B0 00000000 */   nop
/* 4B9FBE4 8007E6B4 1AFA0108 */  j          .Llevel_16_8007E868
/* 4B9FBE8 8007E6B8 00000000 */   nop
.Llevel_16_8007E6BC:
/* 4B9FBEC 8007E6BC 46006791 */  lbu        $a3, 0x46($t3)
/* 4B9FBF0 8007E6C0 00000000 */  nop
/* 4B9FBF4 8007E6C4 40280700 */  sll        $a1, $a3, 1
/* 4B9FBF8 8007E6C8 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9FBFC 8007E6CC 21082500 */  addu       $at, $at, $a1
/* 4B9FC00 8007E6D0 20592494 */  lhu        $a0, %lo(D_80065920)($at)
/* 4B9FC04 8007E6D4 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 4B9FC08 8007E6D8 00240400 */  sll        $a0, $a0, 16
/* 4B9FC0C 8007E6DC 03140400 */  sra        $v0, $a0, 16
/* 4B9FC10 8007E6E0 18004600 */  mult       $v0, $a2
/* 4B9FC14 8007E6E4 49004291 */  lbu        $v0, 0x49($t2)
/* 4B9FC18 8007E6E8 5555093C */  lui        $t1, (0x55555556 >> 16)
/* 4B9FC1C 8007E6EC 80100200 */  sll        $v0, $v0, 2
/* 4B9FC20 8007E6F0 0680013C */  lui        $at, %hi(D_80067555)
/* 4B9FC24 8007E6F4 21082200 */  addu       $at, $at, $v0
/* 4B9FC28 8007E6F8 55752290 */  lbu        $v0, %lo(D_80067555)($at)
/* 4B9FC2C 8007E6FC 56552935 */  ori        $t1, $t1, (0x55555556 & 0xFFFF)
/* 4B9FC30 8007E700 2138E200 */  addu       $a3, $a3, $v0
/* 4B9FC34 8007E704 FF00E830 */  andi       $t0, $a3, 0xFF
/* 4B9FC38 8007E708 40400800 */  sll        $t0, $t0, 1
/* 4B9FC3C 8007E70C 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9FC40 8007E710 21082800 */  addu       $at, $at, $t0
/* 4B9FC44 8007E714 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 4B9FC48 8007E718 10600000 */  mfhi       $t4
/* 4B9FC4C 8007E71C 001C0300 */  sll        $v1, $v1, 16
/* 4B9FC50 8007E720 03140300 */  sra        $v0, $v1, 16
/* 4B9FC54 8007E724 18004900 */  mult       $v0, $t1
/* 4B9FC58 8007E728 0680013C */  lui        $at, %hi(D_800658A0)
/* 4B9FC5C 8007E72C 21082500 */  addu       $at, $at, $a1
/* 4B9FC60 8007E730 A0582594 */  lhu        $a1, %lo(D_800658A0)($at)
/* 4B9FC64 8007E734 C3270400 */  sra        $a0, $a0, 31
/* 4B9FC68 8007E738 002C0500 */  sll        $a1, $a1, 16
/* 4B9FC6C 8007E73C 43100C00 */  sra        $v0, $t4, 1
/* 4B9FC70 8007E740 23104400 */  subu       $v0, $v0, $a0
/* 4B9FC74 8007E744 00140200 */  sll        $v0, $v0, 16
/* 4B9FC78 8007E748 03140200 */  sra        $v0, $v0, 16
/* 4B9FC7C 8007E74C 0C00648D */  lw         $a0, 0xC($t3)
/* 4B9FC80 8007E750 10680000 */  mfhi       $t5
/* 4B9FC84 8007E754 23208200 */  subu       $a0, $a0, $v0
/* 4B9FC88 8007E758 03140500 */  sra        $v0, $a1, 16
/* 4B9FC8C 8007E75C 18004600 */  mult       $v0, $a2
/* 4B9FC90 8007E760 C31F0300 */  sra        $v1, $v1, 31
/* 4B9FC94 8007E764 2318A301 */  subu       $v1, $t5, $v1
/* 4B9FC98 8007E768 001C0300 */  sll        $v1, $v1, 16
/* 4B9FC9C 8007E76C 031C0300 */  sra        $v1, $v1, 16
/* 4B9FCA0 8007E770 1000668D */  lw         $a2, 0x10($t3)
/* 4B9FCA4 8007E774 21208300 */  addu       $a0, $a0, $v1
/* 4B9FCA8 8007E778 0C0044AD */  sw         $a0, 0xC($t2)
/* 4B9FCAC 8007E77C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4B9FCB0 8007E780 21082800 */  addu       $at, $at, $t0
/* 4B9FCB4 8007E784 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 4B9FCB8 8007E788 10600000 */  mfhi       $t4
/* 4B9FCBC 8007E78C 001C0300 */  sll        $v1, $v1, 16
/* 4B9FCC0 8007E790 03140300 */  sra        $v0, $v1, 16
/* 4B9FCC4 8007E794 18004900 */  mult       $v0, $t1
/* 4B9FCC8 8007E798 C32F0500 */  sra        $a1, $a1, 31
/* 4B9FCCC 8007E79C C31F0300 */  sra        $v1, $v1, 31
/* 4B9FCD0 8007E7A0 43100C00 */  sra        $v0, $t4, 1
/* 4B9FCD4 8007E7A4 23104500 */  subu       $v0, $v0, $a1
/* 4B9FCD8 8007E7A8 00140200 */  sll        $v0, $v0, 16
/* 4B9FCDC 8007E7AC 03140200 */  sra        $v0, $v0, 16
/* 4B9FCE0 8007E7B0 2330C200 */  subu       $a2, $a2, $v0
/* 4B9FCE4 8007E7B4 0780053C */  lui        $a1, %hi(D_8006C644)
/* 4B9FCE8 8007E7B8 44C6A58C */  lw         $a1, %lo(D_8006C644)($a1)
/* 4B9FCEC 8007E7BC 10400000 */  mfhi       $t0
/* 4B9FCF0 8007E7C0 23180301 */  subu       $v1, $t0, $v1
/* 4B9FCF4 8007E7C4 001C0300 */  sll        $v1, $v1, 16
/* 4B9FCF8 8007E7C8 031C0300 */  sra        $v1, $v1, 16
/* 4B9FCFC 8007E7CC 2130C300 */  addu       $a2, $a2, $v1
/* 4B9FD00 8007E7D0 100046AD */  sw         $a2, 0x10($t2)
/* 4B9FD04 8007E7D4 0000C48D */  lw         $a0, 0x0($t6)
/* 4B9FD08 8007E7D8 00000000 */  nop
/* 4B9FD0C 8007E7DC 0000828C */  lw         $v0, 0x0($a0)
/* 4B9FD10 8007E7E0 1400848C */  lw         $a0, 0x14($a0)
/* 4B9FD14 8007E7E4 06004380 */  lb         $v1, 0x6($v0)
/* 4B9FD18 8007E7E8 49004291 */  lbu        $v0, 0x49($t2)
/* 4B9FD1C 8007E7EC 00190300 */  sll        $v1, $v1, 4
/* 4B9FD20 8007E7F0 21208300 */  addu       $a0, $a0, $v1
/* 4B9FD24 8007E7F4 80100200 */  sll        $v0, $v0, 2
/* 4B9FD28 8007E7F8 0680013C */  lui        $at, %hi(D_80067556)
/* 4B9FD2C 8007E7FC 21082200 */  addu       $at, $at, $v0
/* 4B9FD30 8007E800 56752390 */  lbu        $v1, %lo(D_80067556)($at)
/* 4B9FD34 8007E804 49004291 */  lbu        $v0, 0x49($t2)
/* 4B9FD38 8007E808 21208300 */  addu       $a0, $a0, $v1
/* 4B9FD3C 8007E80C 21104500 */  addu       $v0, $v0, $a1
/* 4B9FD40 8007E810 C0100200 */  sll        $v0, $v0, 3
/* 4B9FD44 8007E814 F8014230 */  andi       $v0, $v0, 0x1F8
/* 4B9FD48 8007E818 140044AD */  sw         $a0, 0x14($t2)
/* 4B9FD4C 8007E81C 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9FD50 8007E820 21082200 */  addu       $at, $at, $v0
/* 4B9FD54 8007E824 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4B9FD58 8007E828 8000E724 */  addiu      $a3, $a3, 0x80
/* 4B9FD5C 8007E82C 40100300 */  sll        $v0, $v1, 1
/* 4B9FD60 8007E830 21104300 */  addu       $v0, $v0, $v1
/* 4B9FD64 8007E834 43120200 */  sra        $v0, $v0, 9
/* 4B9FD68 8007E838 3C004391 */  lbu        $v1, 0x3C($t2)
/* 4B9FD6C 8007E83C 2138E200 */  addu       $a3, $a3, $v0
/* 4B9FD70 8007E840 09006014 */  bnez       $v1, .Llevel_16_8007E868
/* 4B9FD74 8007E844 460047A1 */   sb        $a3, 0x46($t2)
/* 4B9FD78 8007E848 0000C28D */  lw         $v0, 0x0($t6)
/* 4B9FD7C 8007E84C 00000000 */  nop
/* 4B9FD80 8007E850 0000438C */  lw         $v1, 0x0($v0)
/* 4B9FD84 8007E854 00000000 */  nop
/* 4B9FD88 8007E858 07006290 */  lbu        $v0, 0x7($v1)
/* 4B9FD8C 8007E85C 00000000 */  nop
/* 4B9FD90 8007E860 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4B9FD94 8007E864 070062A0 */  sb         $v0, 0x7($v1)
.Llevel_16_8007E868:
/* 4B9FD98 8007E868 2800BF8F */  lw         $ra, 0x28($sp)
/* 4B9FD9C 8007E86C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4B9FDA0 8007E870 0800E003 */  jr         $ra
/* 4B9FDA4 8007E874 00000000 */   nop
.size MobyUpdate_311_level_16, . - MobyUpdate_311_level_16
