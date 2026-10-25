.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_11
/* 3E1F6AC 8007B17C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3E1F6B0 8007B180 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3E1F6B4 8007B184 21888000 */  addu       $s1, $a0, $zero
/* 3E1F6B8 8007B188 2400BFAF */  sw         $ra, 0x24($sp)
/* 3E1F6BC 8007B18C 2000B2AF */  sw         $s2, 0x20($sp)
/* 3E1F6C0 8007B190 1800B0AF */  sw         $s0, 0x18($sp)
/* 3E1F6C4 8007B194 0000308E */  lw         $s0, 0x0($s1)
/* 3E1F6C8 8007B198 0780023C */  lui        $v0, %hi(D_8006C708)
/* 3E1F6CC 8007B19C 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 3E1F6D0 8007B1A0 0000038E */  lw         $v1, 0x0($s0)
/* 3E1F6D4 8007B1A4 00000000 */  nop
/* 3E1F6D8 8007B1A8 21104300 */  addu       $v0, $v0, $v1
/* 3E1F6DC 8007B1AC 00004390 */  lbu        $v1, 0x0($v0)
/* 3E1F6E0 8007B1B0 00000000 */  nop
/* 3E1F6E4 8007B1B4 80100300 */  sll        $v0, $v1, 2
/* 3E1F6E8 8007B1B8 21104300 */  addu       $v0, $v0, $v1
/* 3E1F6EC 8007B1BC 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 3E1F6F0 8007B1C0 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 3E1F6F4 8007B1C4 80100200 */  sll        $v0, $v0, 2
/* 3E1F6F8 8007B1C8 21104300 */  addu       $v0, $v0, $v1
/* 3E1F6FC 8007B1CC 10004290 */  lbu        $v0, 0x10($v0)
/* 3E1F700 8007B1D0 00000000 */  nop
/* 3E1F704 8007B1D4 39004010 */  beqz       $v0, .Llevel_11_8007B2BC
/* 3E1F708 8007B1D8 00000000 */   nop
/* 3E1F70C 8007B1DC 0780053C */  lui        $a1, %hi(D_8006E044)
/* 3E1F710 8007B1E0 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 3E1F714 8007B1E4 0000A28C */  lw         $v0, 0x0($a1)
/* 3E1F718 8007B1E8 00000000 */  nop
/* 3E1F71C 8007B1EC F7FF4224 */  addiu      $v0, $v0, -0x9
/* 3E1F720 8007B1F0 0200422C */  sltiu      $v0, $v0, 0x2
/* 3E1F724 8007B1F4 08004010 */  beqz       $v0, .Llevel_11_8007B218
/* 3E1F728 8007B1F8 0C002426 */   addiu     $a0, $s1, 0xC
/* 3E1F72C 8007B1FC CD3C010C */  jal        func_8004F334
/* 3E1F730 8007B200 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 3E1F734 8007B204 1400238E */  lw         $v1, 0x14($s1)
/* 3E1F738 8007B208 0780043C */  lui        $a0, %hi(D_8006E028)
/* 3E1F73C 8007B20C 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 3E1F740 8007B210 8FEC0108 */  j          .Llevel_11_8007B23C
/* 3E1F744 8007B214 23186400 */   subu      $v1, $v1, $a0
.Llevel_11_8007B218:
/* 3E1F748 8007B218 0780053C */  lui        $a1, %hi(D_80070328)
/* 3E1F74C 8007B21C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3E1F750 8007B220 CD3C010C */  jal        func_8004F334
/* 3E1F754 8007B224 0C002426 */   addiu     $a0, $s1, 0xC
/* 3E1F758 8007B228 1400238E */  lw         $v1, 0x14($s1)
/* 3E1F75C 8007B22C 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 3E1F760 8007B230 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 3E1F764 8007B234 00000000 */  nop
/* 3E1F768 8007B238 23186400 */  subu       $v1, $v1, $a0
.Llevel_11_8007B23C:
/* 3E1F76C 8007B23C 02006104 */  bgez       $v1, .Llevel_11_8007B248
/* 3E1F770 8007B240 00000000 */   nop
/* 3E1F774 8007B244 23180300 */  negu       $v1, $v1
.Llevel_11_8007B248:
/* 3E1F778 8007B248 21286200 */  addu       $a1, $v1, $v0
/* 3E1F77C 8007B24C 0780023C */  lui        $v0, %hi(D_8006C708)
/* 3E1F780 8007B250 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 3E1F784 8007B254 0000038E */  lw         $v1, 0x0($s0)
/* 3E1F788 8007B258 80200500 */  sll        $a0, $a1, 2
/* 3E1F78C 8007B25C 21104300 */  addu       $v0, $v0, $v1
/* 3E1F790 8007B260 00004390 */  lbu        $v1, 0x0($v0)
/* 3E1F794 8007B264 23208500 */  subu       $a0, $a0, $a1
/* 3E1F798 8007B268 80100300 */  sll        $v0, $v1, 2
/* 3E1F79C 8007B26C 21104300 */  addu       $v0, $v0, $v1
/* 3E1F7A0 8007B270 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 3E1F7A4 8007B274 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 3E1F7A8 8007B278 80100200 */  sll        $v0, $v0, 2
/* 3E1F7AC 8007B27C 21104300 */  addu       $v0, $v0, $v1
/* 3E1F7B0 8007B280 0A004294 */  lhu        $v0, 0xA($v0)
/* 3E1F7B4 8007B284 03290400 */  sra        $a1, $a0, 4
/* 3E1F7B8 8007B288 2A10A200 */  slt        $v0, $a1, $v0
/* 3E1F7BC 8007B28C 28004010 */  beqz       $v0, .Llevel_11_8007B330
/* 3E1F7C0 8007B290 00000000 */   nop
/* 3E1F7C4 8007B294 1800058E */  lw         $a1, 0x18($s0)
/* 3E1F7C8 8007B298 F0EF000C */  jal        func_8003BFC0
/* 3E1F7CC 8007B29C 21202002 */   addu      $a0, $s1, $zero
/* 3E1F7D0 8007B2A0 23004014 */  bnez       $v0, .Llevel_11_8007B330
/* 3E1F7D4 8007B2A4 21202002 */   addu      $a0, $s1, $zero
/* 3E1F7D8 8007B2A8 0000058E */  lw         $a1, 0x0($s0)
/* 3E1F7DC 8007B2AC C4EE000C */  jal        func_8003BB10
/* 3E1F7E0 8007B2B0 04000624 */   addiu     $a2, $zero, 0x4
/* 3E1F7E4 8007B2B4 CCEC0108 */  j          .Llevel_11_8007B330
/* 3E1F7E8 8007B2B8 180002AE */   sw        $v0, 0x18($s0)
.Llevel_11_8007B2BC:
/* 3E1F7EC 8007B2BC 14000426 */  addiu      $a0, $s0, 0x14
/* 3E1F7F0 8007B2C0 69D6000C */  jal        func_800359A4
/* 3E1F7F4 8007B2C4 04000524 */   addiu     $a1, $zero, 0x4
/* 3E1F7F8 8007B2C8 19004010 */  beqz       $v0, .Llevel_11_8007B330
/* 3E1F7FC 8007B2CC 00000000 */   nop
/* 3E1F800 8007B2D0 0000048E */  lw         $a0, 0x0($s0)
/* 3E1F804 8007B2D4 0400058E */  lw         $a1, 0x4($s0)
/* 3E1F808 8007B2D8 00000000 */  nop
/* 3E1F80C 8007B2DC 2A108500 */  slt        $v0, $a0, $a1
/* 3E1F810 8007B2E0 04004010 */  beqz       $v0, .Llevel_11_8007B2F4
/* 3E1F814 8007B2E4 21908000 */   addu      $s2, $a0, $zero
/* 3E1F818 8007B2E8 DBD8000C */  jal        func_8003636C
/* 3E1F81C 8007B2EC 00000000 */   nop
/* 3E1F820 8007B2F0 21904000 */  addu       $s2, $v0, $zero
.Llevel_11_8007B2F4:
/* 3E1F824 8007B2F4 0800048E */  lw         $a0, 0x8($s0)
/* 3E1F828 8007B2F8 0C00058E */  lw         $a1, 0xC($s0)
/* 3E1F82C 8007B2FC 00000000 */  nop
/* 3E1F830 8007B300 2A108500 */  slt        $v0, $a0, $a1
/* 3E1F834 8007B304 05004010 */  beqz       $v0, .Llevel_11_8007B31C
/* 3E1F838 8007B308 00000000 */   nop
/* 3E1F83C 8007B30C DBD8000C */  jal        func_8003636C
/* 3E1F840 8007B310 00000000 */   nop
/* 3E1F844 8007B314 C8EC0108 */  j          .Llevel_11_8007B320
/* 3E1F848 8007B318 140002AE */   sw        $v0, 0x14($s0)
.Llevel_11_8007B31C:
/* 3E1F84C 8007B31C 140004AE */  sw         $a0, 0x14($s0)
.Llevel_11_8007B320:
/* 3E1F850 8007B320 21202002 */  addu       $a0, $s1, $zero
/* 3E1F854 8007B324 21284002 */  addu       $a1, $s2, $zero
/* 3E1F858 8007B328 C4EE000C */  jal        func_8003BB10
/* 3E1F85C 8007B32C 21300000 */   addu      $a2, $zero, $zero
.Llevel_11_8007B330:
/* 3E1F860 8007B330 1000058E */  lw         $a1, 0x10($s0)
/* 3E1F864 8007B334 00000000 */  nop
/* 3E1F868 8007B338 0C00A010 */  beqz       $a1, .Llevel_11_8007B36C
/* 3E1F86C 8007B33C 00000000 */   nop
/* 3E1F870 8007B340 0780043C */  lui        $a0, %hi(D_80070328)
/* 3E1F874 8007B344 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 3E1F878 8007B348 46D9000C */  jal        func_80036518
/* 3E1F87C 8007B34C 1000A627 */   addiu     $a2, $sp, 0x10
/* 3E1F880 8007B350 0C002426 */  addiu      $a0, $s1, 0xC
/* 3E1F884 8007B354 1000028E */  lw         $v0, 0x10($s0)
/* 3E1F888 8007B358 1000A58F */  lw         $a1, 0x10($sp)
/* 3E1F88C 8007B35C 0C00428C */  lw         $v0, 0xC($v0)
/* 3E1F890 8007B360 00290500 */  sll        $a1, $a1, 4
/* 3E1F894 8007B364 5E3C010C */  jal        func_8004F178
/* 3E1F898 8007B368 21284500 */   addu      $a1, $v0, $a1
.Llevel_11_8007B36C:
/* 3E1F89C 8007B36C 2400BF8F */  lw         $ra, 0x24($sp)
/* 3E1F8A0 8007B370 2000B28F */  lw         $s2, 0x20($sp)
/* 3E1F8A4 8007B374 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3E1F8A8 8007B378 1800B08F */  lw         $s0, 0x18($sp)
/* 3E1F8AC 8007B37C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 3E1F8B0 8007B380 0800E003 */  jr         $ra
/* 3E1F8B4 8007B384 00000000 */   nop
.size MobyUpdate_1016_level_11, . - MobyUpdate_1016_level_11
