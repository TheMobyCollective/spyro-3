.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_10
/* 3AE67D0 80081AA0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3AE67D4 80081AA4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3AE67D8 80081AA8 21888000 */  addu       $s1, $a0, $zero
/* 3AE67DC 80081AAC 2400BFAF */  sw         $ra, 0x24($sp)
/* 3AE67E0 80081AB0 2000B2AF */  sw         $s2, 0x20($sp)
/* 3AE67E4 80081AB4 1800B0AF */  sw         $s0, 0x18($sp)
/* 3AE67E8 80081AB8 0000308E */  lw         $s0, 0x0($s1)
/* 3AE67EC 80081ABC 0780023C */  lui        $v0, %hi(D_8006C708)
/* 3AE67F0 80081AC0 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 3AE67F4 80081AC4 0000038E */  lw         $v1, 0x0($s0)
/* 3AE67F8 80081AC8 00000000 */  nop
/* 3AE67FC 80081ACC 21104300 */  addu       $v0, $v0, $v1
/* 3AE6800 80081AD0 00004390 */  lbu        $v1, 0x0($v0)
/* 3AE6804 80081AD4 00000000 */  nop
/* 3AE6808 80081AD8 80100300 */  sll        $v0, $v1, 2
/* 3AE680C 80081ADC 21104300 */  addu       $v0, $v0, $v1
/* 3AE6810 80081AE0 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 3AE6814 80081AE4 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 3AE6818 80081AE8 80100200 */  sll        $v0, $v0, 2
/* 3AE681C 80081AEC 21104300 */  addu       $v0, $v0, $v1
/* 3AE6820 80081AF0 10004290 */  lbu        $v0, 0x10($v0)
/* 3AE6824 80081AF4 00000000 */  nop
/* 3AE6828 80081AF8 39004010 */  beqz       $v0, .Llevel_10_80081BE0
/* 3AE682C 80081AFC 00000000 */   nop
/* 3AE6830 80081B00 0780053C */  lui        $a1, %hi(D_8006E044)
/* 3AE6834 80081B04 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 3AE6838 80081B08 0000A28C */  lw         $v0, 0x0($a1)
/* 3AE683C 80081B0C 00000000 */  nop
/* 3AE6840 80081B10 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 3AE6844 80081B14 0200422C */  sltiu      $v0, $v0, 0x2
/* 3AE6848 80081B18 08004010 */  beqz       $v0, .Llevel_10_80081B3C
/* 3AE684C 80081B1C 0C002426 */   addiu     $a0, $s1, 0xC
/* 3AE6850 80081B20 CD3C010C */  jal        func_8004F334
/* 3AE6854 80081B24 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 3AE6858 80081B28 1400238E */  lw         $v1, 0x14($s1)
/* 3AE685C 80081B2C 0780043C */  lui        $a0, %hi(D_8006E028)
/* 3AE6860 80081B30 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 3AE6864 80081B34 D8060208 */  j          .Llevel_10_80081B60
/* 3AE6868 80081B38 23186400 */   subu      $v1, $v1, $a0
.Llevel_10_80081B3C:
/* 3AE686C 80081B3C 0780053C */  lui        $a1, %hi(D_80070328)
/* 3AE6870 80081B40 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3AE6874 80081B44 CD3C010C */  jal        func_8004F334
/* 3AE6878 80081B48 0C002426 */   addiu     $a0, $s1, 0xC
/* 3AE687C 80081B4C 1400238E */  lw         $v1, 0x14($s1)
/* 3AE6880 80081B50 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 3AE6884 80081B54 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 3AE6888 80081B58 00000000 */  nop
/* 3AE688C 80081B5C 23186400 */  subu       $v1, $v1, $a0
.Llevel_10_80081B60:
/* 3AE6890 80081B60 02006104 */  bgez       $v1, .Llevel_10_80081B6C
/* 3AE6894 80081B64 00000000 */   nop
/* 3AE6898 80081B68 23180300 */  negu       $v1, $v1
.Llevel_10_80081B6C:
/* 3AE689C 80081B6C 21286200 */  addu       $a1, $v1, $v0
/* 3AE68A0 80081B70 0780023C */  lui        $v0, %hi(D_8006C708)
/* 3AE68A4 80081B74 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 3AE68A8 80081B78 0000038E */  lw         $v1, 0x0($s0)
/* 3AE68AC 80081B7C 80200500 */  sll        $a0, $a1, 2
/* 3AE68B0 80081B80 21104300 */  addu       $v0, $v0, $v1
/* 3AE68B4 80081B84 00004390 */  lbu        $v1, 0x0($v0)
/* 3AE68B8 80081B88 23208500 */  subu       $a0, $a0, $a1
/* 3AE68BC 80081B8C 80100300 */  sll        $v0, $v1, 2
/* 3AE68C0 80081B90 21104300 */  addu       $v0, $v0, $v1
/* 3AE68C4 80081B94 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 3AE68C8 80081B98 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 3AE68CC 80081B9C 80100200 */  sll        $v0, $v0, 2
/* 3AE68D0 80081BA0 21104300 */  addu       $v0, $v0, $v1
/* 3AE68D4 80081BA4 0A004294 */  lhu        $v0, 0xA($v0)
/* 3AE68D8 80081BA8 03290400 */  sra        $a1, $a0, 4
/* 3AE68DC 80081BAC 2A10A200 */  slt        $v0, $a1, $v0
/* 3AE68E0 80081BB0 28004010 */  beqz       $v0, .Llevel_10_80081C54
/* 3AE68E4 80081BB4 00000000 */   nop
/* 3AE68E8 80081BB8 1800058E */  lw         $a1, 0x18($s0)
/* 3AE68EC 80081BBC F0EF000C */  jal        func_8003BFC0
/* 3AE68F0 80081BC0 21202002 */   addu      $a0, $s1, $zero
/* 3AE68F4 80081BC4 23004014 */  bnez       $v0, .Llevel_10_80081C54
/* 3AE68F8 80081BC8 21202002 */   addu      $a0, $s1, $zero
/* 3AE68FC 80081BCC 0000058E */  lw         $a1, 0x0($s0)
/* 3AE6900 80081BD0 C4EE000C */  jal        func_8003BB10
/* 3AE6904 80081BD4 04000624 */   addiu     $a2, $zero, 0x4
/* 3AE6908 80081BD8 15070208 */  j          .Llevel_10_80081C54
/* 3AE690C 80081BDC 180002AE */   sw        $v0, 0x18($s0)
.Llevel_10_80081BE0:
/* 3AE6910 80081BE0 14000426 */  addiu      $a0, $s0, 0x14
/* 3AE6914 80081BE4 69D6000C */  jal        func_800359A4
/* 3AE6918 80081BE8 04000524 */   addiu     $a1, $zero, 0x4
/* 3AE691C 80081BEC 19004010 */  beqz       $v0, .Llevel_10_80081C54
/* 3AE6920 80081BF0 00000000 */   nop
/* 3AE6924 80081BF4 0000048E */  lw         $a0, 0x0($s0)
/* 3AE6928 80081BF8 0400058E */  lw         $a1, 0x4($s0)
/* 3AE692C 80081BFC 00000000 */  nop
/* 3AE6930 80081C00 2A108500 */  slt        $v0, $a0, $a1
/* 3AE6934 80081C04 04004010 */  beqz       $v0, .Llevel_10_80081C18
/* 3AE6938 80081C08 21908000 */   addu      $s2, $a0, $zero
/* 3AE693C 80081C0C DBD8000C */  jal        func_8003636C
/* 3AE6940 80081C10 00000000 */   nop
/* 3AE6944 80081C14 21904000 */  addu       $s2, $v0, $zero
.Llevel_10_80081C18:
/* 3AE6948 80081C18 0800048E */  lw         $a0, 0x8($s0)
/* 3AE694C 80081C1C 0C00058E */  lw         $a1, 0xC($s0)
/* 3AE6950 80081C20 00000000 */  nop
/* 3AE6954 80081C24 2A108500 */  slt        $v0, $a0, $a1
/* 3AE6958 80081C28 05004010 */  beqz       $v0, .Llevel_10_80081C40
/* 3AE695C 80081C2C 00000000 */   nop
/* 3AE6960 80081C30 DBD8000C */  jal        func_8003636C
/* 3AE6964 80081C34 00000000 */   nop
/* 3AE6968 80081C38 11070208 */  j          .Llevel_10_80081C44
/* 3AE696C 80081C3C 140002AE */   sw        $v0, 0x14($s0)
.Llevel_10_80081C40:
/* 3AE6970 80081C40 140004AE */  sw         $a0, 0x14($s0)
.Llevel_10_80081C44:
/* 3AE6974 80081C44 21202002 */  addu       $a0, $s1, $zero
/* 3AE6978 80081C48 21284002 */  addu       $a1, $s2, $zero
/* 3AE697C 80081C4C C4EE000C */  jal        func_8003BB10
/* 3AE6980 80081C50 21300000 */   addu      $a2, $zero, $zero
.Llevel_10_80081C54:
/* 3AE6984 80081C54 1000058E */  lw         $a1, 0x10($s0)
/* 3AE6988 80081C58 00000000 */  nop
/* 3AE698C 80081C5C 0C00A010 */  beqz       $a1, .Llevel_10_80081C90
/* 3AE6990 80081C60 00000000 */   nop
/* 3AE6994 80081C64 0780043C */  lui        $a0, %hi(D_80070328)
/* 3AE6998 80081C68 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 3AE699C 80081C6C 46D9000C */  jal        func_80036518
/* 3AE69A0 80081C70 1000A627 */   addiu     $a2, $sp, 0x10
/* 3AE69A4 80081C74 0C002426 */  addiu      $a0, $s1, 0xC
/* 3AE69A8 80081C78 1000028E */  lw         $v0, 0x10($s0)
/* 3AE69AC 80081C7C 1000A58F */  lw         $a1, 0x10($sp)
/* 3AE69B0 80081C80 0C00428C */  lw         $v0, 0xC($v0)
/* 3AE69B4 80081C84 00290500 */  sll        $a1, $a1, 4
/* 3AE69B8 80081C88 5E3C010C */  jal        func_8004F178
/* 3AE69BC 80081C8C 21284500 */   addu      $a1, $v0, $a1
.Llevel_10_80081C90:
/* 3AE69C0 80081C90 2400BF8F */  lw         $ra, 0x24($sp)
/* 3AE69C4 80081C94 2000B28F */  lw         $s2, 0x20($sp)
/* 3AE69C8 80081C98 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3AE69CC 80081C9C 1800B08F */  lw         $s0, 0x18($sp)
/* 3AE69D0 80081CA0 2800BD27 */  addiu      $sp, $sp, 0x28
/* 3AE69D4 80081CA4 0800E003 */  jr         $ra
/* 3AE69D8 80081CA8 00000000 */   nop
.size MobyUpdate_1016_level_10, . - MobyUpdate_1016_level_10
