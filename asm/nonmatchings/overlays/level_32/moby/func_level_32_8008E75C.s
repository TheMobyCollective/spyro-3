.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_311_level_32
/* 6DF5C8C 8008E75C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6DF5C90 8008E760 21508000 */  addu       $t2, $a0, $zero
/* 6DF5C94 8008E764 2800BFAF */  sw         $ra, 0x28($sp)
/* 6DF5C98 8008E768 00004E8D */  lw         $t6, 0x0($t2)
/* 6DF5C9C 8008E76C 00000000 */  nop
/* 6DF5CA0 8008E770 0000CB8D */  lw         $t3, 0x0($t6)
/* 6DF5CA4 8008E774 00000000 */  nop
/* 6DF5CA8 8008E778 0000628D */  lw         $v0, 0x0($t3)
/* 6DF5CAC 8008E77C 00000000 */  nop
/* 6DF5CB0 8008E780 07004290 */  lbu        $v0, 0x7($v0)
/* 6DF5CB4 8008E784 00000000 */  nop
/* 6DF5CB8 8008E788 05004014 */  bnez       $v0, .Llevel_32_8008E7A0
/* 6DF5CBC 8008E78C 6666063C */   lui       $a2, (0x66666667 >> 16)
/* 6DF5CC0 8008E790 C656010C */  jal        func_80055B18
/* 6DF5CC4 8008E794 00000000 */   nop
/* 6DF5CC8 8008E798 533A0208 */  j          .Llevel_32_8008E94C
/* 6DF5CCC 8008E79C 00000000 */   nop
.Llevel_32_8008E7A0:
/* 6DF5CD0 8008E7A0 46006791 */  lbu        $a3, 0x46($t3)
/* 6DF5CD4 8008E7A4 00000000 */  nop
/* 6DF5CD8 8008E7A8 40280700 */  sll        $a1, $a3, 1
/* 6DF5CDC 8008E7AC 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF5CE0 8008E7B0 21082500 */  addu       $at, $at, $a1
/* 6DF5CE4 8008E7B4 20592494 */  lhu        $a0, %lo(D_80065920)($at)
/* 6DF5CE8 8008E7B8 6766C634 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 6DF5CEC 8008E7BC 00240400 */  sll        $a0, $a0, 16
/* 6DF5CF0 8008E7C0 03140400 */  sra        $v0, $a0, 16
/* 6DF5CF4 8008E7C4 18004600 */  mult       $v0, $a2
/* 6DF5CF8 8008E7C8 49004291 */  lbu        $v0, 0x49($t2)
/* 6DF5CFC 8008E7CC 5555093C */  lui        $t1, (0x55555556 >> 16)
/* 6DF5D00 8008E7D0 80100200 */  sll        $v0, $v0, 2
/* 6DF5D04 8008E7D4 0680013C */  lui        $at, %hi(D_80067555)
/* 6DF5D08 8008E7D8 21082200 */  addu       $at, $at, $v0
/* 6DF5D0C 8008E7DC 55752290 */  lbu        $v0, %lo(D_80067555)($at)
/* 6DF5D10 8008E7E0 56552935 */  ori        $t1, $t1, (0x55555556 & 0xFFFF)
/* 6DF5D14 8008E7E4 2138E200 */  addu       $a3, $a3, $v0
/* 6DF5D18 8008E7E8 FF00E830 */  andi       $t0, $a3, 0xFF
/* 6DF5D1C 8008E7EC 40400800 */  sll        $t0, $t0, 1
/* 6DF5D20 8008E7F0 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF5D24 8008E7F4 21082800 */  addu       $at, $at, $t0
/* 6DF5D28 8008E7F8 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 6DF5D2C 8008E7FC 10600000 */  mfhi       $t4
/* 6DF5D30 8008E800 001C0300 */  sll        $v1, $v1, 16
/* 6DF5D34 8008E804 03140300 */  sra        $v0, $v1, 16
/* 6DF5D38 8008E808 18004900 */  mult       $v0, $t1
/* 6DF5D3C 8008E80C 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF5D40 8008E810 21082500 */  addu       $at, $at, $a1
/* 6DF5D44 8008E814 A0582594 */  lhu        $a1, %lo(D_800658A0)($at)
/* 6DF5D48 8008E818 C3270400 */  sra        $a0, $a0, 31
/* 6DF5D4C 8008E81C 002C0500 */  sll        $a1, $a1, 16
/* 6DF5D50 8008E820 43100C00 */  sra        $v0, $t4, 1
/* 6DF5D54 8008E824 23104400 */  subu       $v0, $v0, $a0
/* 6DF5D58 8008E828 00140200 */  sll        $v0, $v0, 16
/* 6DF5D5C 8008E82C 03140200 */  sra        $v0, $v0, 16
/* 6DF5D60 8008E830 0C00648D */  lw         $a0, 0xC($t3)
/* 6DF5D64 8008E834 10680000 */  mfhi       $t5
/* 6DF5D68 8008E838 23208200 */  subu       $a0, $a0, $v0
/* 6DF5D6C 8008E83C 03140500 */  sra        $v0, $a1, 16
/* 6DF5D70 8008E840 18004600 */  mult       $v0, $a2
/* 6DF5D74 8008E844 C31F0300 */  sra        $v1, $v1, 31
/* 6DF5D78 8008E848 2318A301 */  subu       $v1, $t5, $v1
/* 6DF5D7C 8008E84C 001C0300 */  sll        $v1, $v1, 16
/* 6DF5D80 8008E850 031C0300 */  sra        $v1, $v1, 16
/* 6DF5D84 8008E854 1000668D */  lw         $a2, 0x10($t3)
/* 6DF5D88 8008E858 21208300 */  addu       $a0, $a0, $v1
/* 6DF5D8C 8008E85C 0C0044AD */  sw         $a0, 0xC($t2)
/* 6DF5D90 8008E860 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF5D94 8008E864 21082800 */  addu       $at, $at, $t0
/* 6DF5D98 8008E868 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 6DF5D9C 8008E86C 10600000 */  mfhi       $t4
/* 6DF5DA0 8008E870 001C0300 */  sll        $v1, $v1, 16
/* 6DF5DA4 8008E874 03140300 */  sra        $v0, $v1, 16
/* 6DF5DA8 8008E878 18004900 */  mult       $v0, $t1
/* 6DF5DAC 8008E87C C32F0500 */  sra        $a1, $a1, 31
/* 6DF5DB0 8008E880 C31F0300 */  sra        $v1, $v1, 31
/* 6DF5DB4 8008E884 43100C00 */  sra        $v0, $t4, 1
/* 6DF5DB8 8008E888 23104500 */  subu       $v0, $v0, $a1
/* 6DF5DBC 8008E88C 00140200 */  sll        $v0, $v0, 16
/* 6DF5DC0 8008E890 03140200 */  sra        $v0, $v0, 16
/* 6DF5DC4 8008E894 2330C200 */  subu       $a2, $a2, $v0
/* 6DF5DC8 8008E898 0780053C */  lui        $a1, %hi(D_8006C644)
/* 6DF5DCC 8008E89C 44C6A58C */  lw         $a1, %lo(D_8006C644)($a1)
/* 6DF5DD0 8008E8A0 10400000 */  mfhi       $t0
/* 6DF5DD4 8008E8A4 23180301 */  subu       $v1, $t0, $v1
/* 6DF5DD8 8008E8A8 001C0300 */  sll        $v1, $v1, 16
/* 6DF5DDC 8008E8AC 031C0300 */  sra        $v1, $v1, 16
/* 6DF5DE0 8008E8B0 2130C300 */  addu       $a2, $a2, $v1
/* 6DF5DE4 8008E8B4 100046AD */  sw         $a2, 0x10($t2)
/* 6DF5DE8 8008E8B8 0000C48D */  lw         $a0, 0x0($t6)
/* 6DF5DEC 8008E8BC 00000000 */  nop
/* 6DF5DF0 8008E8C0 0000828C */  lw         $v0, 0x0($a0)
/* 6DF5DF4 8008E8C4 1400848C */  lw         $a0, 0x14($a0)
/* 6DF5DF8 8008E8C8 06004380 */  lb         $v1, 0x6($v0)
/* 6DF5DFC 8008E8CC 49004291 */  lbu        $v0, 0x49($t2)
/* 6DF5E00 8008E8D0 00190300 */  sll        $v1, $v1, 4
/* 6DF5E04 8008E8D4 21208300 */  addu       $a0, $a0, $v1
/* 6DF5E08 8008E8D8 80100200 */  sll        $v0, $v0, 2
/* 6DF5E0C 8008E8DC 0680013C */  lui        $at, %hi(D_80067556)
/* 6DF5E10 8008E8E0 21082200 */  addu       $at, $at, $v0
/* 6DF5E14 8008E8E4 56752390 */  lbu        $v1, %lo(D_80067556)($at)
/* 6DF5E18 8008E8E8 49004291 */  lbu        $v0, 0x49($t2)
/* 6DF5E1C 8008E8EC 21208300 */  addu       $a0, $a0, $v1
/* 6DF5E20 8008E8F0 21104500 */  addu       $v0, $v0, $a1
/* 6DF5E24 8008E8F4 C0100200 */  sll        $v0, $v0, 3
/* 6DF5E28 8008E8F8 F8014230 */  andi       $v0, $v0, 0x1F8
/* 6DF5E2C 8008E8FC 140044AD */  sw         $a0, 0x14($t2)
/* 6DF5E30 8008E900 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF5E34 8008E904 21082200 */  addu       $at, $at, $v0
/* 6DF5E38 8008E908 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF5E3C 8008E90C 8000E724 */  addiu      $a3, $a3, 0x80
/* 6DF5E40 8008E910 40100300 */  sll        $v0, $v1, 1
/* 6DF5E44 8008E914 21104300 */  addu       $v0, $v0, $v1
/* 6DF5E48 8008E918 43120200 */  sra        $v0, $v0, 9
/* 6DF5E4C 8008E91C 3C004391 */  lbu        $v1, 0x3C($t2)
/* 6DF5E50 8008E920 2138E200 */  addu       $a3, $a3, $v0
/* 6DF5E54 8008E924 09006014 */  bnez       $v1, .Llevel_32_8008E94C
/* 6DF5E58 8008E928 460047A1 */   sb        $a3, 0x46($t2)
/* 6DF5E5C 8008E92C 0000C28D */  lw         $v0, 0x0($t6)
/* 6DF5E60 8008E930 00000000 */  nop
/* 6DF5E64 8008E934 0000438C */  lw         $v1, 0x0($v0)
/* 6DF5E68 8008E938 00000000 */  nop
/* 6DF5E6C 8008E93C 07006290 */  lbu        $v0, 0x7($v1)
/* 6DF5E70 8008E940 00000000 */  nop
/* 6DF5E74 8008E944 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DF5E78 8008E948 070062A0 */  sb         $v0, 0x7($v1)
.Llevel_32_8008E94C:
/* 6DF5E7C 8008E94C 2800BF8F */  lw         $ra, 0x28($sp)
/* 6DF5E80 8008E950 3000BD27 */  addiu      $sp, $sp, 0x30
/* 6DF5E84 8008E954 0800E003 */  jr         $ra
/* 6DF5E88 8008E958 00000000 */   nop
.size MobyUpdate_311_level_32, . - MobyUpdate_311_level_32
