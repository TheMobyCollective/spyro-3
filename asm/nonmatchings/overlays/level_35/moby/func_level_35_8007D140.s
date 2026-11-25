.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_35
/* 76FFE70 8007D140 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 76FFE74 8007D144 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 76FFE78 8007D148 21888000 */  addu       $s1, $a0, $zero
/* 76FFE7C 8007D14C 2400BFAF */  sw         $ra, 0x24($sp)
/* 76FFE80 8007D150 2000B2AF */  sw         $s2, 0x20($sp)
/* 76FFE84 8007D154 1800B0AF */  sw         $s0, 0x18($sp)
/* 76FFE88 8007D158 0000308E */  lw         $s0, 0x0($s1)
/* 76FFE8C 8007D15C 0780023C */  lui        $v0, %hi(D_8006C708)
/* 76FFE90 8007D160 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 76FFE94 8007D164 0000038E */  lw         $v1, 0x0($s0)
/* 76FFE98 8007D168 00000000 */  nop
/* 76FFE9C 8007D16C 21104300 */  addu       $v0, $v0, $v1
/* 76FFEA0 8007D170 00004390 */  lbu        $v1, 0x0($v0)
/* 76FFEA4 8007D174 00000000 */  nop
/* 76FFEA8 8007D178 80100300 */  sll        $v0, $v1, 2
/* 76FFEAC 8007D17C 21104300 */  addu       $v0, $v0, $v1
/* 76FFEB0 8007D180 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 76FFEB4 8007D184 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 76FFEB8 8007D188 80100200 */  sll        $v0, $v0, 2
/* 76FFEBC 8007D18C 21104300 */  addu       $v0, $v0, $v1
/* 76FFEC0 8007D190 10004290 */  lbu        $v0, 0x10($v0)
/* 76FFEC4 8007D194 00000000 */  nop
/* 76FFEC8 8007D198 39004010 */  beqz       $v0, .Llevel_35_8007D280
/* 76FFECC 8007D19C 00000000 */   nop
/* 76FFED0 8007D1A0 0780053C */  lui        $a1, %hi(D_8006E044)
/* 76FFED4 8007D1A4 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 76FFED8 8007D1A8 0000A28C */  lw         $v0, 0x0($a1)
/* 76FFEDC 8007D1AC 00000000 */  nop
/* 76FFEE0 8007D1B0 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 76FFEE4 8007D1B4 0200422C */  sltiu      $v0, $v0, 0x2
/* 76FFEE8 8007D1B8 08004010 */  beqz       $v0, .Llevel_35_8007D1DC
/* 76FFEEC 8007D1BC 0C002426 */   addiu     $a0, $s1, 0xC
/* 76FFEF0 8007D1C0 CD3C010C */  jal        func_8004F334
/* 76FFEF4 8007D1C4 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 76FFEF8 8007D1C8 1400238E */  lw         $v1, 0x14($s1)
/* 76FFEFC 8007D1CC 0780043C */  lui        $a0, %hi(D_8006E028)
/* 76FFF00 8007D1D0 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 76FFF04 8007D1D4 80F40108 */  j          .Llevel_35_8007D200
/* 76FFF08 8007D1D8 23186400 */   subu      $v1, $v1, $a0
.Llevel_35_8007D1DC:
/* 76FFF0C 8007D1DC 0780053C */  lui        $a1, %hi(D_80070328)
/* 76FFF10 8007D1E0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 76FFF14 8007D1E4 CD3C010C */  jal        func_8004F334
/* 76FFF18 8007D1E8 0C002426 */   addiu     $a0, $s1, 0xC
/* 76FFF1C 8007D1EC 1400238E */  lw         $v1, 0x14($s1)
/* 76FFF20 8007D1F0 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 76FFF24 8007D1F4 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 76FFF28 8007D1F8 00000000 */  nop
/* 76FFF2C 8007D1FC 23186400 */  subu       $v1, $v1, $a0
.Llevel_35_8007D200:
/* 76FFF30 8007D200 02006104 */  bgez       $v1, .Llevel_35_8007D20C
/* 76FFF34 8007D204 00000000 */   nop
/* 76FFF38 8007D208 23180300 */  negu       $v1, $v1
.Llevel_35_8007D20C:
/* 76FFF3C 8007D20C 21286200 */  addu       $a1, $v1, $v0
/* 76FFF40 8007D210 0780023C */  lui        $v0, %hi(D_8006C708)
/* 76FFF44 8007D214 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 76FFF48 8007D218 0000038E */  lw         $v1, 0x0($s0)
/* 76FFF4C 8007D21C 80200500 */  sll        $a0, $a1, 2
/* 76FFF50 8007D220 21104300 */  addu       $v0, $v0, $v1
/* 76FFF54 8007D224 00004390 */  lbu        $v1, 0x0($v0)
/* 76FFF58 8007D228 23208500 */  subu       $a0, $a0, $a1
/* 76FFF5C 8007D22C 80100300 */  sll        $v0, $v1, 2
/* 76FFF60 8007D230 21104300 */  addu       $v0, $v0, $v1
/* 76FFF64 8007D234 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 76FFF68 8007D238 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 76FFF6C 8007D23C 80100200 */  sll        $v0, $v0, 2
/* 76FFF70 8007D240 21104300 */  addu       $v0, $v0, $v1
/* 76FFF74 8007D244 0A004294 */  lhu        $v0, 0xA($v0)
/* 76FFF78 8007D248 03290400 */  sra        $a1, $a0, 4
/* 76FFF7C 8007D24C 2A10A200 */  slt        $v0, $a1, $v0
/* 76FFF80 8007D250 28004010 */  beqz       $v0, .Llevel_35_8007D2F4
/* 76FFF84 8007D254 00000000 */   nop
/* 76FFF88 8007D258 1800058E */  lw         $a1, 0x18($s0)
/* 76FFF8C 8007D25C F0EF000C */  jal        func_8003BFC0
/* 76FFF90 8007D260 21202002 */   addu      $a0, $s1, $zero
/* 76FFF94 8007D264 23004014 */  bnez       $v0, .Llevel_35_8007D2F4
/* 76FFF98 8007D268 21202002 */   addu      $a0, $s1, $zero
/* 76FFF9C 8007D26C 0000058E */  lw         $a1, 0x0($s0)
/* 76FFFA0 8007D270 C4EE000C */  jal        func_8003BB10
/* 76FFFA4 8007D274 04000624 */   addiu     $a2, $zero, 0x4
/* 76FFFA8 8007D278 BDF40108 */  j          .Llevel_35_8007D2F4
/* 76FFFAC 8007D27C 180002AE */   sw        $v0, 0x18($s0)
.Llevel_35_8007D280:
/* 76FFFB0 8007D280 14000426 */  addiu      $a0, $s0, 0x14
/* 76FFFB4 8007D284 69D6000C */  jal        func_800359A4
/* 76FFFB8 8007D288 04000524 */   addiu     $a1, $zero, 0x4
/* 76FFFBC 8007D28C 19004010 */  beqz       $v0, .Llevel_35_8007D2F4
/* 76FFFC0 8007D290 00000000 */   nop
/* 76FFFC4 8007D294 0000048E */  lw         $a0, 0x0($s0)
/* 76FFFC8 8007D298 0400058E */  lw         $a1, 0x4($s0)
/* 76FFFCC 8007D29C 00000000 */  nop
/* 76FFFD0 8007D2A0 2A108500 */  slt        $v0, $a0, $a1
/* 76FFFD4 8007D2A4 04004010 */  beqz       $v0, .Llevel_35_8007D2B8
/* 76FFFD8 8007D2A8 21908000 */   addu      $s2, $a0, $zero
/* 76FFFDC 8007D2AC DBD8000C */  jal        func_8003636C
/* 76FFFE0 8007D2B0 00000000 */   nop
/* 76FFFE4 8007D2B4 21904000 */  addu       $s2, $v0, $zero
.Llevel_35_8007D2B8:
/* 76FFFE8 8007D2B8 0800048E */  lw         $a0, 0x8($s0)
/* 76FFFEC 8007D2BC 0C00058E */  lw         $a1, 0xC($s0)
/* 76FFFF0 8007D2C0 00000000 */  nop
/* 76FFFF4 8007D2C4 2A108500 */  slt        $v0, $a0, $a1
/* 76FFFF8 8007D2C8 05004010 */  beqz       $v0, .Llevel_35_8007D2E0
/* 76FFFFC 8007D2CC 00000000 */   nop
/* 7700000 8007D2D0 DBD8000C */  jal        func_8003636C
/* 7700004 8007D2D4 00000000 */   nop
/* 7700008 8007D2D8 B9F40108 */  j          .Llevel_35_8007D2E4
/* 770000C 8007D2DC 140002AE */   sw        $v0, 0x14($s0)
.Llevel_35_8007D2E0:
/* 7700010 8007D2E0 140004AE */  sw         $a0, 0x14($s0)
.Llevel_35_8007D2E4:
/* 7700014 8007D2E4 21202002 */  addu       $a0, $s1, $zero
/* 7700018 8007D2E8 21284002 */  addu       $a1, $s2, $zero
/* 770001C 8007D2EC C4EE000C */  jal        func_8003BB10
/* 7700020 8007D2F0 21300000 */   addu      $a2, $zero, $zero
.Llevel_35_8007D2F4:
/* 7700024 8007D2F4 1000058E */  lw         $a1, 0x10($s0)
/* 7700028 8007D2F8 00000000 */  nop
/* 770002C 8007D2FC 0C00A010 */  beqz       $a1, .Llevel_35_8007D330
/* 7700030 8007D300 00000000 */   nop
/* 7700034 8007D304 0780043C */  lui        $a0, %hi(D_80070328)
/* 7700038 8007D308 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 770003C 8007D30C 46D9000C */  jal        func_80036518
/* 7700040 8007D310 1000A627 */   addiu     $a2, $sp, 0x10
/* 7700044 8007D314 0C002426 */  addiu      $a0, $s1, 0xC
/* 7700048 8007D318 1000028E */  lw         $v0, 0x10($s0)
/* 770004C 8007D31C 1000A58F */  lw         $a1, 0x10($sp)
/* 7700050 8007D320 0C00428C */  lw         $v0, 0xC($v0)
/* 7700054 8007D324 00290500 */  sll        $a1, $a1, 4
/* 7700058 8007D328 5E3C010C */  jal        func_8004F178
/* 770005C 8007D32C 21284500 */   addu      $a1, $v0, $a1
.Llevel_35_8007D330:
/* 7700060 8007D330 2400BF8F */  lw         $ra, 0x24($sp)
/* 7700064 8007D334 2000B28F */  lw         $s2, 0x20($sp)
/* 7700068 8007D338 1C00B18F */  lw         $s1, 0x1C($sp)
/* 770006C 8007D33C 1800B08F */  lw         $s0, 0x18($sp)
/* 7700070 8007D340 2800BD27 */  addiu      $sp, $sp, 0x28
/* 7700074 8007D344 0800E003 */  jr         $ra
/* 7700078 8007D348 00000000 */   nop
.size MobyUpdate_1016_level_35, . - MobyUpdate_1016_level_35
