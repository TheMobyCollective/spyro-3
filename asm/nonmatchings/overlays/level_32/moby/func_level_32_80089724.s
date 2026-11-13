.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_728_level_32
/* 6DF0C54 80089724 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 6DF0C58 80089728 4800B2AF */  sw         $s2, 0x48($sp)
/* 6DF0C5C 8008972C 21908000 */  addu       $s2, $a0, $zero
/* 6DF0C60 80089730 5000BFAF */  sw         $ra, 0x50($sp)
/* 6DF0C64 80089734 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 6DF0C68 80089738 4400B1AF */  sw         $s1, 0x44($sp)
/* 6DF0C6C 8008973C 4000B0AF */  sw         $s0, 0x40($sp)
/* 6DF0C70 80089740 0000448E */  lw         $a0, 0x0($s2)
/* 6DF0C74 80089744 00000000 */  nop
/* 6DF0C78 80089748 0000838C */  lw         $v1, 0x0($a0)
/* 6DF0C7C 8008974C 00000000 */  nop
/* 6DF0C80 80089750 40100300 */  sll        $v0, $v1, 1
/* 6DF0C84 80089754 21104300 */  addu       $v0, $v0, $v1
/* 6DF0C88 80089758 80100200 */  sll        $v0, $v0, 2
/* 6DF0C8C 8008975C 23104300 */  subu       $v0, $v0, $v1
/* 6DF0C90 80089760 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DF0C94 80089764 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DF0C98 80089768 C0100200 */  sll        $v0, $v0, 3
/* 6DF0C9C 8008976C 21986200 */  addu       $s3, $v1, $v0
/* 6DF0CA0 80089770 48006292 */  lbu        $v0, 0x48($s3)
/* 6DF0CA4 80089774 00000000 */  nop
/* 6DF0CA8 80089778 8000422C */  sltiu      $v0, $v0, 0x80
/* 6DF0CAC 8008977C 0D004010 */  beqz       $v0, .Llevel_32_800897B4
/* 6DF0CB0 80089780 00000000 */   nop
/* 6DF0CB4 80089784 48004392 */  lbu        $v1, 0x48($s2)
/* 6DF0CB8 80089788 00000000 */  nop
/* 6DF0CBC 8008978C 05006010 */  beqz       $v1, .Llevel_32_800897A4
/* 6DF0CC0 80089790 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF0CC4 80089794 68006210 */  beq        $v1, $v0, .Llevel_32_80089938
/* 6DF0CC8 80089798 00000000 */   nop
/* 6DF0CCC 8008979C 60260208 */  j          .Llevel_32_80089980
/* 6DF0CD0 800897A0 00000000 */   nop
.Llevel_32_800897A4:
/* 6DF0CD4 800897A4 4C006292 */  lbu        $v0, 0x4C($s3)
/* 6DF0CD8 800897A8 00000000 */  nop
/* 6DF0CDC 800897AC 05004014 */  bnez       $v0, .Llevel_32_800897C4
/* 6DF0CE0 800897B0 00000000 */   nop
.Llevel_32_800897B4:
/* 6DF0CE4 800897B4 C656010C */  jal        func_80055B18
/* 6DF0CE8 800897B8 21204002 */   addu      $a0, $s2, $zero
/* 6DF0CEC 800897BC 60260208 */  j          .Llevel_32_80089980
/* 6DF0CF0 800897C0 00000000 */   nop
.Llevel_32_800897C4:
/* 6DF0CF4 800897C4 3D006392 */  lbu        $v1, 0x3D($s3)
/* 6DF0CF8 800897C8 0400828C */  lw         $v0, 0x4($a0)
/* 6DF0CFC 800897CC 00000000 */  nop
/* 6DF0D00 800897D0 0B006210 */  beq        $v1, $v0, .Llevel_32_80089800
/* 6DF0D04 800897D4 2000B127 */   addiu     $s1, $sp, 0x20
/* 6DF0D08 800897D8 0800828C */  lw         $v0, 0x8($a0)
/* 6DF0D0C 800897DC 00000000 */  nop
/* 6DF0D10 800897E0 07006210 */  beq        $v1, $v0, .Llevel_32_80089800
/* 6DF0D14 800897E4 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF0D18 800897E8 080040AE */  sw         $zero, 0x8($s2)
/* 6DF0D1C 800897EC 410040A2 */  sb         $zero, 0x41($s2)
/* 6DF0D20 800897F0 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 6DF0D24 800897F4 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 6DF0D28 800897F8 60260208 */  j          .Llevel_32_80089980
/* 6DF0D2C 800897FC 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_80089800:
/* 6DF0D30 80089800 21202002 */  addu       $a0, $s1, $zero
/* 6DF0D34 80089804 46007092 */  lbu        $s0, 0x46($s3)
/* 6DF0D38 80089808 0C006526 */  addiu      $a1, $s3, 0xC
/* 6DF0D3C 8008980C 5E3C010C */  jal        func_8004F178
/* 6DF0D40 80089810 C0FF1026 */   addiu     $s0, $s0, -0x40
/* 6DF0D44 80089814 FF001032 */  andi       $s0, $s0, 0xFF
/* 6DF0D48 80089818 40801000 */  sll        $s0, $s0, 1
/* 6DF0D4C 8008981C 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF0D50 80089820 21083000 */  addu       $at, $at, $s0
/* 6DF0D54 80089824 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF0D58 80089828 00000000 */  nop
/* 6DF0D5C 8008982C 00110300 */  sll        $v0, $v1, 4
/* 6DF0D60 80089830 21104300 */  addu       $v0, $v0, $v1
/* 6DF0D64 80089834 80100200 */  sll        $v0, $v0, 2
/* 6DF0D68 80089838 21104300 */  addu       $v0, $v0, $v1
/* 6DF0D6C 8008983C 80100200 */  sll        $v0, $v0, 2
/* 6DF0D70 80089840 23104300 */  subu       $v0, $v0, $v1
/* 6DF0D74 80089844 2000A38F */  lw         $v1, 0x20($sp)
/* 6DF0D78 80089848 C3120200 */  sra        $v0, $v0, 11
/* 6DF0D7C 8008984C 21186200 */  addu       $v1, $v1, $v0
/* 6DF0D80 80089850 2000A3AF */  sw         $v1, 0x20($sp)
/* 6DF0D84 80089854 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF0D88 80089858 21083000 */  addu       $at, $at, $s0
/* 6DF0D8C 8008985C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF0D90 80089860 21206002 */  addu       $a0, $s3, $zero
/* 6DF0D94 80089864 00110300 */  sll        $v0, $v1, 4
/* 6DF0D98 80089868 21104300 */  addu       $v0, $v0, $v1
/* 6DF0D9C 8008986C 80100200 */  sll        $v0, $v0, 2
/* 6DF0DA0 80089870 21104300 */  addu       $v0, $v0, $v1
/* 6DF0DA4 80089874 80100200 */  sll        $v0, $v0, 2
/* 6DF0DA8 80089878 23104300 */  subu       $v0, $v0, $v1
/* 6DF0DAC 8008987C 2400A38F */  lw         $v1, 0x24($sp)
/* 6DF0DB0 80089880 C3120200 */  sra        $v0, $v0, 11
/* 6DF0DB4 80089884 21186200 */  addu       $v1, $v1, $v0
/* 6DF0DB8 80089888 2400A3AF */  sw         $v1, 0x24($sp)
/* 6DF0DBC 8008988C 38006386 */  lh         $v1, 0x38($s3)
/* 6DF0DC0 80089890 1400628E */  lw         $v0, 0x14($s3)
/* 6DF0DC4 80089894 04000524 */  addiu      $a1, $zero, 0x4
/* 6DF0DC8 80089898 23104300 */  subu       $v0, $v0, $v1
/* 6DF0DCC 8008989C 4957010C */  jal        func_80055D24
/* 6DF0DD0 800898A0 2800A2AF */   sw        $v0, 0x28($sp)
/* 6DF0DD4 800898A4 21206002 */  addu       $a0, $s3, $zero
/* 6DF0DD8 800898A8 02000524 */  addiu      $a1, $zero, 0x2
/* 6DF0DDC 800898AC C557010C */  jal        func_80055F14
/* 6DF0DE0 800898B0 1000A627 */   addiu     $a2, $sp, 0x10
/* 6DF0DE4 800898B4 0C004426 */  addiu      $a0, $s2, 0xC
/* 6DF0DE8 800898B8 5E3C010C */  jal        func_8004F178
/* 6DF0DEC 800898BC 21282002 */   addu      $a1, $s1, $zero
/* 6DF0DF0 800898C0 3000B027 */  addiu      $s0, $sp, 0x30
/* 6DF0DF4 800898C4 21200002 */  addu       $a0, $s0, $zero
/* 6DF0DF8 800898C8 21282002 */  addu       $a1, $s1, $zero
/* 6DF0DFC 800898CC 723C010C */  jal        func_8004F1C8
/* 6DF0E00 800898D0 1000A627 */   addiu     $a2, $sp, 0x10
/* 6DF0E04 800898D4 21200002 */  addu       $a0, $s0, $zero
/* 6DF0E08 800898D8 46006292 */  lbu        $v0, 0x46($s3)
/* 6DF0E0C 800898DC 21280000 */  addu       $a1, $zero, $zero
/* 6DF0E10 800898E0 7A004224 */  addiu      $v0, $v0, 0x7A
/* 6DF0E14 800898E4 7A3B010C */  jal        func_8004EDE8
/* 6DF0E18 800898E8 460042A2 */   sb        $v0, 0x46($s2)
/* 6DF0E1C 800898EC 21804000 */  addu       $s0, $v0, $zero
/* 6DF0E20 800898F0 3000A48F */  lw         $a0, 0x30($sp)
/* 6DF0E24 800898F4 3400A58F */  lw         $a1, 0x34($sp)
/* 6DF0E28 800898F8 203A010C */  jal        func_8004E880
/* 6DF0E2C 800898FC 21300000 */   addu      $a2, $zero, $zero
/* 6DF0E30 80089900 46006592 */  lbu        $a1, 0x46($s3)
/* 6DF0E34 80089904 993C010C */  jal        func_8004F264
/* 6DF0E38 80089908 21204000 */   addu      $a0, $v0, $zero
/* 6DF0E3C 8008990C 40004228 */  slti       $v0, $v0, 0x40
/* 6DF0E40 80089910 03004010 */  beqz       $v0, .Llevel_32_80089920
/* 6DF0E44 80089914 21200002 */   addu      $a0, $s0, $zero
/* 6DF0E48 80089918 23801000 */  negu       $s0, $s0
/* 6DF0E4C 8008991C 21200002 */  addu       $a0, $s0, $zero
.Llevel_32_80089920:
/* 6DF0E50 80089920 3800A58F */  lw         $a1, 0x38($sp)
/* 6DF0E54 80089924 203A010C */  jal        func_8004E880
/* 6DF0E58 80089928 21300000 */   addu      $a2, $zero, $zero
/* 6DF0E5C 8008992C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DF0E60 80089930 60260208 */  j          .Llevel_32_80089980
/* 6DF0E64 80089934 450042A2 */   sb        $v0, 0x45($s2)
.Llevel_32_80089938:
/* 6DF0E68 80089938 3D006392 */  lbu        $v1, 0x3D($s3)
/* 6DF0E6C 8008993C 0400828C */  lw         $v0, 0x4($a0)
/* 6DF0E70 80089940 00000000 */  nop
/* 6DF0E74 80089944 05006210 */  beq        $v1, $v0, .Llevel_32_8008995C
/* 6DF0E78 80089948 00000000 */   nop
/* 6DF0E7C 8008994C 0800828C */  lw         $v0, 0x8($a0)
/* 6DF0E80 80089950 00000000 */  nop
/* 6DF0E84 80089954 0A006214 */  bne        $v1, $v0, .Llevel_32_80089980
/* 6DF0E88 80089958 00000000 */   nop
.Llevel_32_8008995C:
/* 6DF0E8C 8008995C 21204002 */  addu       $a0, $s2, $zero
/* 6DF0E90 80089960 01000524 */  addiu      $a1, $zero, 0x1
/* 6DF0E94 80089964 01000324 */  addiu      $v1, $zero, 0x1
/* 6DF0E98 80089968 28000224 */  addiu      $v0, $zero, 0x28
/* 6DF0E9C 8008996C 410043A2 */  sb         $v1, 0x41($s2)
/* 6DF0EA0 80089970 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 6DF0EA4 80089974 4957010C */  jal        func_80055D24
/* 6DF0EA8 80089978 4D0043A2 */   sb        $v1, 0x4D($s2)
/* 6DF0EAC 8008997C 480040A2 */  sb         $zero, 0x48($s2)
.Llevel_32_80089980:
/* 6DF0EB0 80089980 5000BF8F */  lw         $ra, 0x50($sp)
/* 6DF0EB4 80089984 4C00B38F */  lw         $s3, 0x4C($sp)
/* 6DF0EB8 80089988 4800B28F */  lw         $s2, 0x48($sp)
/* 6DF0EBC 8008998C 4400B18F */  lw         $s1, 0x44($sp)
/* 6DF0EC0 80089990 4000B08F */  lw         $s0, 0x40($sp)
/* 6DF0EC4 80089994 5800BD27 */  addiu      $sp, $sp, 0x58
/* 6DF0EC8 80089998 0800E003 */  jr         $ra
/* 6DF0ECC 8008999C 00000000 */   nop
.size MobyUpdate_728_level_32, . - MobyUpdate_728_level_32
