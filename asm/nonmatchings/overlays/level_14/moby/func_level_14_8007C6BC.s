.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_311_level_14
/* 47BBBEC 8007C6BC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 47BBBF0 8007C6C0 21508000 */  addu       $t2, $a0, $zero
/* 47BBBF4 8007C6C4 2800BFAF */  sw         $ra, 0x28($sp)
/* 47BBBF8 8007C6C8 00004E8D */  lw         $t6, 0x0($t2)
/* 47BBBFC 8007C6CC 00000000 */  nop
/* 47BBC00 8007C6D0 0000CB8D */  lw         $t3, 0x0($t6)
/* 47BBC04 8007C6D4 00000000 */  nop
/* 47BBC08 8007C6D8 0000628D */  lw         $v0, 0x0($t3)
/* 47BBC0C 8007C6DC 00000000 */  nop
/* 47BBC10 8007C6E0 07004290 */  lbu        $v0, 0x7($v0)
/* 47BBC14 8007C6E4 00000000 */  nop
/* 47BBC18 8007C6E8 05004014 */  bnez       $v0, .Llevel_14_8007C700
/* 47BBC1C 8007C6EC 6666063C */   lui       $a2, (0x66666667 >> 16)
/* 47BBC20 8007C6F0 C656010C */  jal        func_80055B18
/* 47BBC24 8007C6F4 00000000 */   nop
/* 47BBC28 8007C6F8 2BF20108 */  j          .Llevel_14_8007C8AC
/* 47BBC2C 8007C6FC 00000000 */   nop
.Llevel_14_8007C700:
/* 47BBC30 8007C700 46006791 */  lbu        $a3, 0x46($t3)
/* 47BBC34 8007C704 00000000 */  nop
/* 47BBC38 8007C708 40280700 */  sll        $a1, $a3, 1
/* 47BBC3C 8007C70C 0680013C */  lui        $at, %hi(D_80065920)
/* 47BBC40 8007C710 21082500 */  addu       $at, $at, $a1
/* 47BBC44 8007C714 20592494 */  lhu        $a0, %lo(D_80065920)($at)
/* 47BBC48 8007C718 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 47BBC4C 8007C71C 00240400 */  sll        $a0, $a0, 16
/* 47BBC50 8007C720 03140400 */  sra        $v0, $a0, 16
/* 47BBC54 8007C724 18004600 */  mult       $v0, $a2
/* 47BBC58 8007C728 49004291 */  lbu        $v0, 0x49($t2)
/* 47BBC5C 8007C72C 5555093C */  lui        $t1, (0x55555556 >> 16)
/* 47BBC60 8007C730 80100200 */  sll        $v0, $v0, 2
/* 47BBC64 8007C734 0680013C */  lui        $at, %hi(D_80067555)
/* 47BBC68 8007C738 21082200 */  addu       $at, $at, $v0
/* 47BBC6C 8007C73C 55752290 */  lbu        $v0, %lo(D_80067555)($at)
/* 47BBC70 8007C740 56552935 */  ori        $t1, $t1, (0x55555556 & 0xFFFF)
/* 47BBC74 8007C744 2138E200 */  addu       $a3, $a3, $v0
/* 47BBC78 8007C748 FF00E830 */  andi       $t0, $a3, 0xFF
/* 47BBC7C 8007C74C 40400800 */  sll        $t0, $t0, 1
/* 47BBC80 8007C750 0680013C */  lui        $at, %hi(D_80065920)
/* 47BBC84 8007C754 21082800 */  addu       $at, $at, $t0
/* 47BBC88 8007C758 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 47BBC8C 8007C75C 10600000 */  mfhi       $t4
/* 47BBC90 8007C760 001C0300 */  sll        $v1, $v1, 16
/* 47BBC94 8007C764 03140300 */  sra        $v0, $v1, 16
/* 47BBC98 8007C768 18004900 */  mult       $v0, $t1
/* 47BBC9C 8007C76C 0680013C */  lui        $at, %hi(D_800658A0)
/* 47BBCA0 8007C770 21082500 */  addu       $at, $at, $a1
/* 47BBCA4 8007C774 A0582594 */  lhu        $a1, %lo(D_800658A0)($at)
/* 47BBCA8 8007C778 C3270400 */  sra        $a0, $a0, 31
/* 47BBCAC 8007C77C 002C0500 */  sll        $a1, $a1, 16
/* 47BBCB0 8007C780 43100C00 */  sra        $v0, $t4, 1
/* 47BBCB4 8007C784 23104400 */  subu       $v0, $v0, $a0
/* 47BBCB8 8007C788 00140200 */  sll        $v0, $v0, 16
/* 47BBCBC 8007C78C 03140200 */  sra        $v0, $v0, 16
/* 47BBCC0 8007C790 0C00648D */  lw         $a0, 0xC($t3)
/* 47BBCC4 8007C794 10680000 */  mfhi       $t5
/* 47BBCC8 8007C798 23208200 */  subu       $a0, $a0, $v0
/* 47BBCCC 8007C79C 03140500 */  sra        $v0, $a1, 16
/* 47BBCD0 8007C7A0 18004600 */  mult       $v0, $a2
/* 47BBCD4 8007C7A4 C31F0300 */  sra        $v1, $v1, 31
/* 47BBCD8 8007C7A8 2318A301 */  subu       $v1, $t5, $v1
/* 47BBCDC 8007C7AC 001C0300 */  sll        $v1, $v1, 16
/* 47BBCE0 8007C7B0 031C0300 */  sra        $v1, $v1, 16
/* 47BBCE4 8007C7B4 1000668D */  lw         $a2, 0x10($t3)
/* 47BBCE8 8007C7B8 21208300 */  addu       $a0, $a0, $v1
/* 47BBCEC 8007C7BC 0C0044AD */  sw         $a0, 0xC($t2)
/* 47BBCF0 8007C7C0 0680013C */  lui        $at, %hi(D_800658A0)
/* 47BBCF4 8007C7C4 21082800 */  addu       $at, $at, $t0
/* 47BBCF8 8007C7C8 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 47BBCFC 8007C7CC 10600000 */  mfhi       $t4
/* 47BBD00 8007C7D0 001C0300 */  sll        $v1, $v1, 16
/* 47BBD04 8007C7D4 03140300 */  sra        $v0, $v1, 16
/* 47BBD08 8007C7D8 18004900 */  mult       $v0, $t1
/* 47BBD0C 8007C7DC C32F0500 */  sra        $a1, $a1, 31
/* 47BBD10 8007C7E0 C31F0300 */  sra        $v1, $v1, 31
/* 47BBD14 8007C7E4 43100C00 */  sra        $v0, $t4, 1
/* 47BBD18 8007C7E8 23104500 */  subu       $v0, $v0, $a1
/* 47BBD1C 8007C7EC 00140200 */  sll        $v0, $v0, 16
/* 47BBD20 8007C7F0 03140200 */  sra        $v0, $v0, 16
/* 47BBD24 8007C7F4 2330C200 */  subu       $a2, $a2, $v0
/* 47BBD28 8007C7F8 0780053C */  lui        $a1, %hi(D_8006C644)
/* 47BBD2C 8007C7FC 44C6A58C */  lw         $a1, %lo(D_8006C644)($a1)
/* 47BBD30 8007C800 10400000 */  mfhi       $t0
/* 47BBD34 8007C804 23180301 */  subu       $v1, $t0, $v1
/* 47BBD38 8007C808 001C0300 */  sll        $v1, $v1, 16
/* 47BBD3C 8007C80C 031C0300 */  sra        $v1, $v1, 16
/* 47BBD40 8007C810 2130C300 */  addu       $a2, $a2, $v1
/* 47BBD44 8007C814 100046AD */  sw         $a2, 0x10($t2)
/* 47BBD48 8007C818 0000C48D */  lw         $a0, 0x0($t6)
/* 47BBD4C 8007C81C 00000000 */  nop
/* 47BBD50 8007C820 0000828C */  lw         $v0, 0x0($a0)
/* 47BBD54 8007C824 1400848C */  lw         $a0, 0x14($a0)
/* 47BBD58 8007C828 06004380 */  lb         $v1, 0x6($v0)
/* 47BBD5C 8007C82C 49004291 */  lbu        $v0, 0x49($t2)
/* 47BBD60 8007C830 00190300 */  sll        $v1, $v1, 4
/* 47BBD64 8007C834 21208300 */  addu       $a0, $a0, $v1
/* 47BBD68 8007C838 80100200 */  sll        $v0, $v0, 2
/* 47BBD6C 8007C83C 0680013C */  lui        $at, %hi(D_80067556)
/* 47BBD70 8007C840 21082200 */  addu       $at, $at, $v0
/* 47BBD74 8007C844 56752390 */  lbu        $v1, %lo(D_80067556)($at)
/* 47BBD78 8007C848 49004291 */  lbu        $v0, 0x49($t2)
/* 47BBD7C 8007C84C 21208300 */  addu       $a0, $a0, $v1
/* 47BBD80 8007C850 21104500 */  addu       $v0, $v0, $a1
/* 47BBD84 8007C854 C0100200 */  sll        $v0, $v0, 3
/* 47BBD88 8007C858 F8014230 */  andi       $v0, $v0, 0x1F8
/* 47BBD8C 8007C85C 140044AD */  sw         $a0, 0x14($t2)
/* 47BBD90 8007C860 0680013C */  lui        $at, %hi(D_80065920)
/* 47BBD94 8007C864 21082200 */  addu       $at, $at, $v0
/* 47BBD98 8007C868 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47BBD9C 8007C86C 8000E724 */  addiu      $a3, $a3, 0x80
/* 47BBDA0 8007C870 40100300 */  sll        $v0, $v1, 1
/* 47BBDA4 8007C874 21104300 */  addu       $v0, $v0, $v1
/* 47BBDA8 8007C878 43120200 */  sra        $v0, $v0, 9
/* 47BBDAC 8007C87C 3C004391 */  lbu        $v1, 0x3C($t2)
/* 47BBDB0 8007C880 2138E200 */  addu       $a3, $a3, $v0
/* 47BBDB4 8007C884 09006014 */  bnez       $v1, .Llevel_14_8007C8AC
/* 47BBDB8 8007C888 460047A1 */   sb        $a3, 0x46($t2)
/* 47BBDBC 8007C88C 0000C28D */  lw         $v0, 0x0($t6)
/* 47BBDC0 8007C890 00000000 */  nop
/* 47BBDC4 8007C894 0000438C */  lw         $v1, 0x0($v0)
/* 47BBDC8 8007C898 00000000 */  nop
/* 47BBDCC 8007C89C 07006290 */  lbu        $v0, 0x7($v1)
/* 47BBDD0 8007C8A0 00000000 */  nop
/* 47BBDD4 8007C8A4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 47BBDD8 8007C8A8 070062A0 */  sb         $v0, 0x7($v1)
.Llevel_14_8007C8AC:
/* 47BBDDC 8007C8AC 2800BF8F */  lw         $ra, 0x28($sp)
/* 47BBDE0 8007C8B0 3000BD27 */  addiu      $sp, $sp, 0x30
/* 47BBDE4 8007C8B4 0800E003 */  jr         $ra
/* 47BBDE8 8007C8B8 00000000 */   nop
.size MobyUpdate_311_level_14, . - MobyUpdate_311_level_14
