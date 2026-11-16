.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_235_level_40
/* 7E667D0 8007B2A0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7E667D4 8007B2A4 2000B0AF */  sw         $s0, 0x20($sp)
/* 7E667D8 8007B2A8 21808000 */  addu       $s0, $a0, $zero
/* 7E667DC 8007B2AC 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 7E667E0 8007B2B0 2800B2AF */  sw         $s2, 0x28($sp)
/* 7E667E4 8007B2B4 2400B1AF */  sw         $s1, 0x24($sp)
/* 7E667E8 8007B2B8 49000292 */  lbu        $v0, 0x49($s0)
/* 7E667EC 8007B2BC 0000038E */  lw         $v1, 0x0($s0)
/* 7E667F0 8007B2C0 24004014 */  bnez       $v0, .Llevel_40_8007B354
/* 7E667F4 8007B2C4 00000000 */   nop
/* 7E667F8 8007B2C8 0C006284 */  lh         $v0, 0xC($v1)
/* 7E667FC 8007B2CC 00000000 */  nop
/* 7E66800 8007B2D0 2000401C */  bgtz       $v0, .Llevel_40_8007B354
/* 7E66804 8007B2D4 70000224 */   addiu     $v0, $zero, 0x70
/* 7E66808 8007B2D8 490002A2 */  sb         $v0, 0x49($s0)
/* 7E6680C 8007B2DC 21880000 */  addu       $s1, $zero, $zero
/* 7E66810 8007B2E0 02001224 */  addiu      $s2, $zero, 0x2
.Llevel_40_8007B2E4:
/* 7E66814 8007B2E4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7E66818 8007B2E8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7E6681C 8007B2EC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7E66820 8007B2F0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7E66824 8007B2F4 00000000 */  nop
/* 7E66828 8007B2F8 23104300 */  subu       $v0, $v0, $v1
/* 7E6682C 8007B2FC 15004228 */  slti       $v0, $v0, 0x15
/* 7E66830 8007B300 14004014 */  bnez       $v0, .Llevel_40_8007B354
/* 7E66834 8007B304 01000424 */   addiu     $a0, $zero, 0x1
/* 7E66838 8007B308 36000586 */  lh         $a1, 0x36($s0)
/* 7E6683C 8007B30C 40000224 */  addiu      $v0, $zero, 0x40
/* 7E66840 8007B310 1400A2AF */  sw         $v0, 0x14($sp)
/* 7E66844 8007B314 00010224 */  addiu      $v0, $zero, 0x100
/* 7E66848 8007B318 21300002 */  addu       $a2, $s0, $zero
/* 7E6684C 8007B31C 21380000 */  addu       $a3, $zero, $zero
/* 7E66850 8007B320 1000B2AF */  sw         $s2, 0x10($sp)
/* 7E66854 8007B324 7AE4000C */  jal        func_800391E8
/* 7E66858 8007B328 1800A2AF */   sw        $v0, 0x18($sp)
/* 7E6685C 8007B32C 21184000 */  addu       $v1, $v0, $zero
/* 7E66860 8007B330 04006010 */  beqz       $v1, .Llevel_40_8007B344
/* 7E66864 8007B334 01000224 */   addiu     $v0, $zero, 0x1
/* 7E66868 8007B338 490062A0 */  sb         $v0, 0x49($v1)
/* 7E6686C 8007B33C 7F000224 */  addiu      $v0, $zero, 0x7F
/* 7E66870 8007B340 4F0062A0 */  sb         $v0, 0x4F($v1)
.Llevel_40_8007B344:
/* 7E66874 8007B344 01003126 */  addiu      $s1, $s1, 0x1
/* 7E66878 8007B348 0400222A */  slti       $v0, $s1, 0x4
/* 7E6687C 8007B34C E5FF4014 */  bnez       $v0, .Llevel_40_8007B2E4
/* 7E66880 8007B350 00000000 */   nop
.Llevel_40_8007B354:
/* 7E66884 8007B354 C5E5000C */  jal        func_80039714
/* 7E66888 8007B358 21200002 */   addu      $a0, $s0, $zero
/* 7E6688C 8007B35C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 7E66890 8007B360 2800B28F */  lw         $s2, 0x28($sp)
/* 7E66894 8007B364 2400B18F */  lw         $s1, 0x24($sp)
/* 7E66898 8007B368 2000B08F */  lw         $s0, 0x20($sp)
/* 7E6689C 8007B36C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7E668A0 8007B370 0800E003 */  jr         $ra
/* 7E668A4 8007B374 00000000 */   nop
.size MobyUpdate_235_level_40, . - MobyUpdate_235_level_40
