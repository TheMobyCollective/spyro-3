.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1016_level_16
/* 4B9E2F0 8007CDC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4B9E2F4 8007CDC4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4B9E2F8 8007CDC8 21888000 */  addu       $s1, $a0, $zero
/* 4B9E2FC 8007CDCC 2400BFAF */  sw         $ra, 0x24($sp)
/* 4B9E300 8007CDD0 2000B2AF */  sw         $s2, 0x20($sp)
/* 4B9E304 8007CDD4 1800B0AF */  sw         $s0, 0x18($sp)
/* 4B9E308 8007CDD8 0000308E */  lw         $s0, 0x0($s1)
/* 4B9E30C 8007CDDC 0780023C */  lui        $v0, %hi(D_8006C708)
/* 4B9E310 8007CDE0 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 4B9E314 8007CDE4 0000038E */  lw         $v1, 0x0($s0)
/* 4B9E318 8007CDE8 00000000 */  nop
/* 4B9E31C 8007CDEC 21104300 */  addu       $v0, $v0, $v1
/* 4B9E320 8007CDF0 00004390 */  lbu        $v1, 0x0($v0)
/* 4B9E324 8007CDF4 00000000 */  nop
/* 4B9E328 8007CDF8 80100300 */  sll        $v0, $v1, 2
/* 4B9E32C 8007CDFC 21104300 */  addu       $v0, $v0, $v1
/* 4B9E330 8007CE00 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 4B9E334 8007CE04 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 4B9E338 8007CE08 80100200 */  sll        $v0, $v0, 2
/* 4B9E33C 8007CE0C 21104300 */  addu       $v0, $v0, $v1
/* 4B9E340 8007CE10 10004290 */  lbu        $v0, 0x10($v0)
/* 4B9E344 8007CE14 00000000 */  nop
/* 4B9E348 8007CE18 39004010 */  beqz       $v0, .Llevel_16_8007CF00
/* 4B9E34C 8007CE1C 00000000 */   nop
/* 4B9E350 8007CE20 0780053C */  lui        $a1, %hi(D_8006E044)
/* 4B9E354 8007CE24 44E0A524 */  addiu      $a1, $a1, %lo(D_8006E044)
/* 4B9E358 8007CE28 0000A28C */  lw         $v0, 0x0($a1)
/* 4B9E35C 8007CE2C 00000000 */  nop
/* 4B9E360 8007CE30 F7FF4224 */  addiu      $v0, $v0, -0x9
/* 4B9E364 8007CE34 0200422C */  sltiu      $v0, $v0, 0x2
/* 4B9E368 8007CE38 08004010 */  beqz       $v0, .Llevel_16_8007CE5C
/* 4B9E36C 8007CE3C 0C002426 */   addiu     $a0, $s1, 0xC
/* 4B9E370 8007CE40 CD3C010C */  jal        func_8004F334
/* 4B9E374 8007CE44 DCFFA524 */   addiu     $a1, $a1, -0x24
/* 4B9E378 8007CE48 1400238E */  lw         $v1, 0x14($s1)
/* 4B9E37C 8007CE4C 0780043C */  lui        $a0, %hi(D_8006E028)
/* 4B9E380 8007CE50 28E0848C */  lw         $a0, %lo(D_8006E028)($a0)
/* 4B9E384 8007CE54 A0F30108 */  j          .Llevel_16_8007CE80
/* 4B9E388 8007CE58 23186400 */   subu      $v1, $v1, $a0
.Llevel_16_8007CE5C:
/* 4B9E38C 8007CE5C 0780053C */  lui        $a1, %hi(D_80070328)
/* 4B9E390 8007CE60 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4B9E394 8007CE64 CD3C010C */  jal        func_8004F334
/* 4B9E398 8007CE68 0C002426 */   addiu     $a0, $s1, 0xC
/* 4B9E39C 8007CE6C 1400238E */  lw         $v1, 0x14($s1)
/* 4B9E3A0 8007CE70 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 4B9E3A4 8007CE74 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 4B9E3A8 8007CE78 00000000 */  nop
/* 4B9E3AC 8007CE7C 23186400 */  subu       $v1, $v1, $a0
.Llevel_16_8007CE80:
/* 4B9E3B0 8007CE80 02006104 */  bgez       $v1, .Llevel_16_8007CE8C
/* 4B9E3B4 8007CE84 00000000 */   nop
/* 4B9E3B8 8007CE88 23180300 */  negu       $v1, $v1
.Llevel_16_8007CE8C:
/* 4B9E3BC 8007CE8C 21286200 */  addu       $a1, $v1, $v0
/* 4B9E3C0 8007CE90 0780023C */  lui        $v0, %hi(D_8006C708)
/* 4B9E3C4 8007CE94 08C7428C */  lw         $v0, %lo(D_8006C708)($v0)
/* 4B9E3C8 8007CE98 0000038E */  lw         $v1, 0x0($s0)
/* 4B9E3CC 8007CE9C 80200500 */  sll        $a0, $a1, 2
/* 4B9E3D0 8007CEA0 21104300 */  addu       $v0, $v0, $v1
/* 4B9E3D4 8007CEA4 00004390 */  lbu        $v1, 0x0($v0)
/* 4B9E3D8 8007CEA8 23208500 */  subu       $a0, $a0, $a1
/* 4B9E3DC 8007CEAC 80100300 */  sll        $v0, $v1, 2
/* 4B9E3E0 8007CEB0 21104300 */  addu       $v0, $v0, $v1
/* 4B9E3E4 8007CEB4 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 4B9E3E8 8007CEB8 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 4B9E3EC 8007CEBC 80100200 */  sll        $v0, $v0, 2
/* 4B9E3F0 8007CEC0 21104300 */  addu       $v0, $v0, $v1
/* 4B9E3F4 8007CEC4 0A004294 */  lhu        $v0, 0xA($v0)
/* 4B9E3F8 8007CEC8 03290400 */  sra        $a1, $a0, 4
/* 4B9E3FC 8007CECC 2A10A200 */  slt        $v0, $a1, $v0
/* 4B9E400 8007CED0 28004010 */  beqz       $v0, .Llevel_16_8007CF74
/* 4B9E404 8007CED4 00000000 */   nop
/* 4B9E408 8007CED8 1800058E */  lw         $a1, 0x18($s0)
/* 4B9E40C 8007CEDC F0EF000C */  jal        func_8003BFC0
/* 4B9E410 8007CEE0 21202002 */   addu      $a0, $s1, $zero
/* 4B9E414 8007CEE4 23004014 */  bnez       $v0, .Llevel_16_8007CF74
/* 4B9E418 8007CEE8 21202002 */   addu      $a0, $s1, $zero
/* 4B9E41C 8007CEEC 0000058E */  lw         $a1, 0x0($s0)
/* 4B9E420 8007CEF0 C4EE000C */  jal        func_8003BB10
/* 4B9E424 8007CEF4 04000624 */   addiu     $a2, $zero, 0x4
/* 4B9E428 8007CEF8 DDF30108 */  j          .Llevel_16_8007CF74
/* 4B9E42C 8007CEFC 180002AE */   sw        $v0, 0x18($s0)
.Llevel_16_8007CF00:
/* 4B9E430 8007CF00 14000426 */  addiu      $a0, $s0, 0x14
/* 4B9E434 8007CF04 69D6000C */  jal        func_800359A4
/* 4B9E438 8007CF08 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9E43C 8007CF0C 19004010 */  beqz       $v0, .Llevel_16_8007CF74
/* 4B9E440 8007CF10 00000000 */   nop
/* 4B9E444 8007CF14 0000048E */  lw         $a0, 0x0($s0)
/* 4B9E448 8007CF18 0400058E */  lw         $a1, 0x4($s0)
/* 4B9E44C 8007CF1C 00000000 */  nop
/* 4B9E450 8007CF20 2A108500 */  slt        $v0, $a0, $a1
/* 4B9E454 8007CF24 04004010 */  beqz       $v0, .Llevel_16_8007CF38
/* 4B9E458 8007CF28 21908000 */   addu      $s2, $a0, $zero
/* 4B9E45C 8007CF2C DBD8000C */  jal        func_8003636C
/* 4B9E460 8007CF30 00000000 */   nop
/* 4B9E464 8007CF34 21904000 */  addu       $s2, $v0, $zero
.Llevel_16_8007CF38:
/* 4B9E468 8007CF38 0800048E */  lw         $a0, 0x8($s0)
/* 4B9E46C 8007CF3C 0C00058E */  lw         $a1, 0xC($s0)
/* 4B9E470 8007CF40 00000000 */  nop
/* 4B9E474 8007CF44 2A108500 */  slt        $v0, $a0, $a1
/* 4B9E478 8007CF48 05004010 */  beqz       $v0, .Llevel_16_8007CF60
/* 4B9E47C 8007CF4C 00000000 */   nop
/* 4B9E480 8007CF50 DBD8000C */  jal        func_8003636C
/* 4B9E484 8007CF54 00000000 */   nop
/* 4B9E488 8007CF58 D9F30108 */  j          .Llevel_16_8007CF64
/* 4B9E48C 8007CF5C 140002AE */   sw        $v0, 0x14($s0)
.Llevel_16_8007CF60:
/* 4B9E490 8007CF60 140004AE */  sw         $a0, 0x14($s0)
.Llevel_16_8007CF64:
/* 4B9E494 8007CF64 21202002 */  addu       $a0, $s1, $zero
/* 4B9E498 8007CF68 21284002 */  addu       $a1, $s2, $zero
/* 4B9E49C 8007CF6C C4EE000C */  jal        func_8003BB10
/* 4B9E4A0 8007CF70 21300000 */   addu      $a2, $zero, $zero
.Llevel_16_8007CF74:
/* 4B9E4A4 8007CF74 1000058E */  lw         $a1, 0x10($s0)
/* 4B9E4A8 8007CF78 00000000 */  nop
/* 4B9E4AC 8007CF7C 0C00A010 */  beqz       $a1, .Llevel_16_8007CFB0
/* 4B9E4B0 8007CF80 00000000 */   nop
/* 4B9E4B4 8007CF84 0780043C */  lui        $a0, %hi(D_80070328)
/* 4B9E4B8 8007CF88 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 4B9E4BC 8007CF8C 46D9000C */  jal        func_80036518
/* 4B9E4C0 8007CF90 1000A627 */   addiu     $a2, $sp, 0x10
/* 4B9E4C4 8007CF94 0C002426 */  addiu      $a0, $s1, 0xC
/* 4B9E4C8 8007CF98 1000028E */  lw         $v0, 0x10($s0)
/* 4B9E4CC 8007CF9C 1000A58F */  lw         $a1, 0x10($sp)
/* 4B9E4D0 8007CFA0 0C00428C */  lw         $v0, 0xC($v0)
/* 4B9E4D4 8007CFA4 00290500 */  sll        $a1, $a1, 4
/* 4B9E4D8 8007CFA8 5E3C010C */  jal        func_8004F178
/* 4B9E4DC 8007CFAC 21284500 */   addu      $a1, $v0, $a1
.Llevel_16_8007CFB0:
/* 4B9E4E0 8007CFB0 2400BF8F */  lw         $ra, 0x24($sp)
/* 4B9E4E4 8007CFB4 2000B28F */  lw         $s2, 0x20($sp)
/* 4B9E4E8 8007CFB8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4B9E4EC 8007CFBC 1800B08F */  lw         $s0, 0x18($sp)
/* 4B9E4F0 8007CFC0 2800BD27 */  addiu      $sp, $sp, 0x28
/* 4B9E4F4 8007CFC4 0800E003 */  jr         $ra
/* 4B9E4F8 8007CFC8 00000000 */   nop
.size MobyUpdate_1016_level_16, . - MobyUpdate_1016_level_16
