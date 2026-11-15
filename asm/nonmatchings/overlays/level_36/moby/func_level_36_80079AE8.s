.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_71_level_36
/* 78DA018 80079AE8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 78DA01C 80079AEC 2000B0AF */  sw         $s0, 0x20($sp)
/* 78DA020 80079AF0 21808000 */  addu       $s0, $a0, $zero
/* 78DA024 80079AF4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 78DA028 80079AF8 2800B2AF */  sw         $s2, 0x28($sp)
/* 78DA02C 80079AFC 2400B1AF */  sw         $s1, 0x24($sp)
/* 78DA030 80079B00 49000292 */  lbu        $v0, 0x49($s0)
/* 78DA034 80079B04 0000038E */  lw         $v1, 0x0($s0)
/* 78DA038 80079B08 24004014 */  bnez       $v0, .Llevel_36_80079B9C
/* 78DA03C 80079B0C 00000000 */   nop
/* 78DA040 80079B10 0C006284 */  lh         $v0, 0xC($v1)
/* 78DA044 80079B14 00000000 */  nop
/* 78DA048 80079B18 2000401C */  bgtz       $v0, .Llevel_36_80079B9C
/* 78DA04C 80079B1C 70000224 */   addiu     $v0, $zero, 0x70
/* 78DA050 80079B20 490002A2 */  sb         $v0, 0x49($s0)
/* 78DA054 80079B24 21880000 */  addu       $s1, $zero, $zero
/* 78DA058 80079B28 08001224 */  addiu      $s2, $zero, 0x8
.Llevel_36_80079B2C:
/* 78DA05C 80079B2C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 78DA060 80079B30 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 78DA064 80079B34 0780033C */  lui        $v1, %hi(D_8006C574)
/* 78DA068 80079B38 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 78DA06C 80079B3C 00000000 */  nop
/* 78DA070 80079B40 23104300 */  subu       $v0, $v0, $v1
/* 78DA074 80079B44 15004228 */  slti       $v0, $v0, 0x15
/* 78DA078 80079B48 14004014 */  bnez       $v0, .Llevel_36_80079B9C
/* 78DA07C 80079B4C 01000424 */   addiu     $a0, $zero, 0x1
/* 78DA080 80079B50 36000586 */  lh         $a1, 0x36($s0)
/* 78DA084 80079B54 40000224 */  addiu      $v0, $zero, 0x40
/* 78DA088 80079B58 1400A2AF */  sw         $v0, 0x14($sp)
/* 78DA08C 80079B5C 00010224 */  addiu      $v0, $zero, 0x100
/* 78DA090 80079B60 21300002 */  addu       $a2, $s0, $zero
/* 78DA094 80079B64 21380000 */  addu       $a3, $zero, $zero
/* 78DA098 80079B68 1000B2AF */  sw         $s2, 0x10($sp)
/* 78DA09C 80079B6C 7AE4000C */  jal        func_800391E8
/* 78DA0A0 80079B70 1800A2AF */   sw        $v0, 0x18($sp)
/* 78DA0A4 80079B74 21184000 */  addu       $v1, $v0, $zero
/* 78DA0A8 80079B78 04006010 */  beqz       $v1, .Llevel_36_80079B8C
/* 78DA0AC 80079B7C 01000224 */   addiu     $v0, $zero, 0x1
/* 78DA0B0 80079B80 490062A0 */  sb         $v0, 0x49($v1)
/* 78DA0B4 80079B84 7F000224 */  addiu      $v0, $zero, 0x7F
/* 78DA0B8 80079B88 4F0062A0 */  sb         $v0, 0x4F($v1)
.Llevel_36_80079B8C:
/* 78DA0BC 80079B8C 01003126 */  addiu      $s1, $s1, 0x1
/* 78DA0C0 80079B90 0400222A */  slti       $v0, $s1, 0x4
/* 78DA0C4 80079B94 E5FF4014 */  bnez       $v0, .Llevel_36_80079B2C
/* 78DA0C8 80079B98 00000000 */   nop
.Llevel_36_80079B9C:
/* 78DA0CC 80079B9C C5E5000C */  jal        func_80039714
/* 78DA0D0 80079BA0 21200002 */   addu      $a0, $s0, $zero
/* 78DA0D4 80079BA4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 78DA0D8 80079BA8 2800B28F */  lw         $s2, 0x28($sp)
/* 78DA0DC 80079BAC 2400B18F */  lw         $s1, 0x24($sp)
/* 78DA0E0 80079BB0 2000B08F */  lw         $s0, 0x20($sp)
/* 78DA0E4 80079BB4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 78DA0E8 80079BB8 0800E003 */  jr         $ra
/* 78DA0EC 80079BBC 00000000 */   nop
.size MobyUpdate_71_level_36, . - MobyUpdate_71_level_36
