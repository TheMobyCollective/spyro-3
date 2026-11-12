.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_235_level_30
/* 678371C 8007A9EC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6783720 8007A9F0 2000B0AF */  sw         $s0, 0x20($sp)
/* 6783724 8007A9F4 21808000 */  addu       $s0, $a0, $zero
/* 6783728 8007A9F8 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 678372C 8007A9FC 2800B2AF */  sw         $s2, 0x28($sp)
/* 6783730 8007AA00 2400B1AF */  sw         $s1, 0x24($sp)
/* 6783734 8007AA04 49000292 */  lbu        $v0, 0x49($s0)
/* 6783738 8007AA08 0000038E */  lw         $v1, 0x0($s0)
/* 678373C 8007AA0C 24004014 */  bnez       $v0, .Llevel_30_8007AAA0
/* 6783740 8007AA10 00000000 */   nop
/* 6783744 8007AA14 0C006284 */  lh         $v0, 0xC($v1)
/* 6783748 8007AA18 00000000 */  nop
/* 678374C 8007AA1C 2000401C */  bgtz       $v0, .Llevel_30_8007AAA0
/* 6783750 8007AA20 70000224 */   addiu     $v0, $zero, 0x70
/* 6783754 8007AA24 490002A2 */  sb         $v0, 0x49($s0)
/* 6783758 8007AA28 21880000 */  addu       $s1, $zero, $zero
/* 678375C 8007AA2C 02001224 */  addiu      $s2, $zero, 0x2
.Llevel_30_8007AA30:
/* 6783760 8007AA30 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6783764 8007AA34 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6783768 8007AA38 0780033C */  lui        $v1, %hi(D_8006C574)
/* 678376C 8007AA3C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6783770 8007AA40 00000000 */  nop
/* 6783774 8007AA44 23104300 */  subu       $v0, $v0, $v1
/* 6783778 8007AA48 15004228 */  slti       $v0, $v0, 0x15
/* 678377C 8007AA4C 14004014 */  bnez       $v0, .Llevel_30_8007AAA0
/* 6783780 8007AA50 01000424 */   addiu     $a0, $zero, 0x1
/* 6783784 8007AA54 36000586 */  lh         $a1, 0x36($s0)
/* 6783788 8007AA58 40000224 */  addiu      $v0, $zero, 0x40
/* 678378C 8007AA5C 1400A2AF */  sw         $v0, 0x14($sp)
/* 6783790 8007AA60 00010224 */  addiu      $v0, $zero, 0x100
/* 6783794 8007AA64 21300002 */  addu       $a2, $s0, $zero
/* 6783798 8007AA68 21380000 */  addu       $a3, $zero, $zero
/* 678379C 8007AA6C 1000B2AF */  sw         $s2, 0x10($sp)
/* 67837A0 8007AA70 7AE4000C */  jal        func_800391E8
/* 67837A4 8007AA74 1800A2AF */   sw        $v0, 0x18($sp)
/* 67837A8 8007AA78 21184000 */  addu       $v1, $v0, $zero
/* 67837AC 8007AA7C 04006010 */  beqz       $v1, .Llevel_30_8007AA90
/* 67837B0 8007AA80 01000224 */   addiu     $v0, $zero, 0x1
/* 67837B4 8007AA84 490062A0 */  sb         $v0, 0x49($v1)
/* 67837B8 8007AA88 7F000224 */  addiu      $v0, $zero, 0x7F
/* 67837BC 8007AA8C 4F0062A0 */  sb         $v0, 0x4F($v1)
.Llevel_30_8007AA90:
/* 67837C0 8007AA90 01003126 */  addiu      $s1, $s1, 0x1
/* 67837C4 8007AA94 0400222A */  slti       $v0, $s1, 0x4
/* 67837C8 8007AA98 E5FF4014 */  bnez       $v0, .Llevel_30_8007AA30
/* 67837CC 8007AA9C 00000000 */   nop
.Llevel_30_8007AAA0:
/* 67837D0 8007AAA0 C5E5000C */  jal        func_80039714
/* 67837D4 8007AAA4 21200002 */   addu      $a0, $s0, $zero
/* 67837D8 8007AAA8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 67837DC 8007AAAC 2800B28F */  lw         $s2, 0x28($sp)
/* 67837E0 8007AAB0 2400B18F */  lw         $s1, 0x24($sp)
/* 67837E4 8007AAB4 2000B08F */  lw         $s0, 0x20($sp)
/* 67837E8 8007AAB8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 67837EC 8007AABC 0800E003 */  jr         $ra
/* 67837F0 8007AAC0 00000000 */   nop
.size MobyUpdate_235_level_30, . - MobyUpdate_235_level_30
