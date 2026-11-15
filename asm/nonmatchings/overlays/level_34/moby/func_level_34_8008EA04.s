.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_986_level_34
/* 74EA734 8008EA04 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 74EA738 8008EA08 1800B2AF */  sw         $s2, 0x18($sp)
/* 74EA73C 8008EA0C 21908000 */  addu       $s2, $a0, $zero
/* 74EA740 8008EA10 0780043C */  lui        $a0, %hi(D_80070328)
/* 74EA744 8008EA14 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 74EA748 8008EA18 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 74EA74C 8008EA1C 1400B1AF */  sw         $s1, 0x14($sp)
/* 74EA750 8008EA20 1000B0AF */  sw         $s0, 0x10($sp)
/* 74EA754 8008EA24 0000518E */  lw         $s1, 0x0($s2)
/* 74EA758 8008EA28 21300000 */  addu       $a2, $zero, $zero
/* 74EA75C 8008EA2C 21282002 */  addu       $a1, $s1, $zero
/* 74EA760 8008EA30 1800228E */  lw         $v0, 0x18($s1)
/* 74EA764 8008EA34 1C002786 */  lh         $a3, 0x1C($s1)
/* 74EA768 8008EA38 40180200 */  sll        $v1, $v0, 1
/* 74EA76C 8008EA3C 21186200 */  addu       $v1, $v1, $v0
/* 74EA770 8008EA40 80180300 */  sll        $v1, $v1, 2
/* 74EA774 8008EA44 23186200 */  subu       $v1, $v1, $v0
/* 74EA778 8008EA48 0780023C */  lui        $v0, %hi(D_8006C550)
/* 74EA77C 8008EA4C 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 74EA780 8008EA50 C0180300 */  sll        $v1, $v1, 3
/* 74EA784 8008EA54 88D8000C */  jal        func_80036220
/* 74EA788 8008EA58 21804300 */   addu      $s0, $v0, $v1
/* 74EA78C 8008EA5C 19004010 */  beqz       $v0, .Llevel_34_8008EAC4
/* 74EA790 8008EA60 01000224 */   addiu     $v0, $zero, 0x1
/* 74EA794 8008EA64 48004292 */  lbu        $v0, 0x48($s2)
/* 74EA798 8008EA68 00000000 */  nop
/* 74EA79C 8008EA6C 0F004014 */  bnez       $v0, .Llevel_34_8008EAAC
/* 74EA7A0 8008EA70 00000000 */   nop
/* 74EA7A4 8008EA74 1E002386 */  lh         $v1, 0x1E($s1)
/* 74EA7A8 8008EA78 00000000 */  nop
/* 74EA7AC 8008EA7C 05006010 */  beqz       $v1, .Llevel_34_8008EA94
/* 74EA7B0 8008EA80 01000224 */   addiu     $v0, $zero, 0x1
/* 74EA7B4 8008EA84 48000292 */  lbu        $v0, 0x48($s0)
/* 74EA7B8 8008EA88 00000000 */  nop
/* 74EA7BC 8008EA8C 08004314 */  bne        $v0, $v1, .Llevel_34_8008EAB0
/* 74EA7C0 8008EA90 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_34_8008EA94:
/* 74EA7C4 8008EA94 480042A2 */  sb         $v0, 0x48($s2)
/* 74EA7C8 8008EA98 21200002 */  addu       $a0, $s0, $zero
/* 74EA7CC 8008EA9C B34E000C */  jal        func_80013ACC
/* 74EA7D0 8008EAA0 0D000524 */   addiu     $a1, $zero, 0xD
/* 74EA7D4 8008EAA4 C73A0208 */  j          .Llevel_34_8008EB1C
/* 74EA7D8 8008EAA8 00000000 */   nop
.Llevel_34_8008EAAC:
/* 74EA7DC 8008EAAC 1E002386 */  lh         $v1, 0x1E($s1)
.Llevel_34_8008EAB0:
/* 74EA7E0 8008EAB0 00000000 */  nop
/* 74EA7E4 8008EAB4 19006010 */  beqz       $v1, .Llevel_34_8008EB1C
/* 74EA7E8 8008EAB8 00000000 */   nop
/* 74EA7EC 8008EABC B93A0208 */  j          .Llevel_34_8008EAE4
/* 74EA7F0 8008EAC0 00000000 */   nop
.Llevel_34_8008EAC4:
/* 74EA7F4 8008EAC4 48004392 */  lbu        $v1, 0x48($s2)
/* 74EA7F8 8008EAC8 00000000 */  nop
/* 74EA7FC 8008EACC 13006214 */  bne        $v1, $v0, .Llevel_34_8008EB1C
/* 74EA800 8008EAD0 00000000 */   nop
/* 74EA804 8008EAD4 1E002386 */  lh         $v1, 0x1E($s1)
/* 74EA808 8008EAD8 00000000 */  nop
/* 74EA80C 8008EADC 05006010 */  beqz       $v1, .Llevel_34_8008EAF4
/* 74EA810 8008EAE0 00000000 */   nop
.Llevel_34_8008EAE4:
/* 74EA814 8008EAE4 48000292 */  lbu        $v0, 0x48($s0)
/* 74EA818 8008EAE8 00000000 */  nop
/* 74EA81C 8008EAEC 0B004310 */  beq        $v0, $v1, .Llevel_34_8008EB1C
/* 74EA820 8008EAF0 00000000 */   nop
.Llevel_34_8008EAF4:
/* 74EA824 8008EAF4 0780033C */  lui        $v1, %hi(D_8006E164)
/* 74EA828 8008EAF8 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 74EA82C 8008EAFC 480040A2 */  sb         $zero, 0x48($s2)
/* 74EA830 8008EB00 0000628C */  lw         $v0, 0x0($v1)
/* 74EA834 8008EB04 00000000 */  nop
/* 74EA838 8008EB08 04005014 */  bne        $v0, $s0, .Llevel_34_8008EB1C
/* 74EA83C 8008EB0C 00000000 */   nop
/* 74EA840 8008EB10 0780013C */  lui        $at, %hi(D_8006E160)
/* 74EA844 8008EB14 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 74EA848 8008EB18 000060AC */  sw         $zero, 0x0($v1)
.Llevel_34_8008EB1C:
/* 74EA84C 8008EB1C 48000392 */  lbu        $v1, 0x48($s0)
/* 74EA850 8008EB20 00000000 */  nop
/* 74EA854 8008EB24 80006230 */  andi       $v0, $v1, 0x80
/* 74EA858 8008EB28 05004014 */  bnez       $v0, .Llevel_34_8008EB40
/* 74EA85C 8008EB2C 00000000 */   nop
/* 74EA860 8008EB30 2000228E */  lw         $v0, 0x20($s1)
/* 74EA864 8008EB34 00000000 */  nop
/* 74EA868 8008EB38 10006214 */  bne        $v1, $v0, .Llevel_34_8008EB7C
/* 74EA86C 8008EB3C 00000000 */   nop
.Llevel_34_8008EB40:
/* 74EA870 8008EB40 48004392 */  lbu        $v1, 0x48($s2)
/* 74EA874 8008EB44 01000224 */  addiu      $v0, $zero, 0x1
/* 74EA878 8008EB48 0A006214 */  bne        $v1, $v0, .Llevel_34_8008EB74
/* 74EA87C 8008EB4C 00000000 */   nop
/* 74EA880 8008EB50 0780033C */  lui        $v1, %hi(D_8006E164)
/* 74EA884 8008EB54 64E16324 */  addiu      $v1, $v1, %lo(D_8006E164)
/* 74EA888 8008EB58 0000628C */  lw         $v0, 0x0($v1)
/* 74EA88C 8008EB5C 00000000 */  nop
/* 74EA890 8008EB60 04005014 */  bne        $v0, $s0, .Llevel_34_8008EB74
/* 74EA894 8008EB64 00000000 */   nop
/* 74EA898 8008EB68 0780013C */  lui        $at, %hi(D_8006E160)
/* 74EA89C 8008EB6C 60E120AC */  sw         $zero, %lo(D_8006E160)($at)
/* 74EA8A0 8008EB70 000060AC */  sw         $zero, 0x0($v1)
.Llevel_34_8008EB74:
/* 74EA8A4 8008EB74 C656010C */  jal        func_80055B18
/* 74EA8A8 8008EB78 21204002 */   addu      $a0, $s2, $zero
.Llevel_34_8008EB7C:
/* 74EA8AC 8008EB7C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 74EA8B0 8008EB80 1800B28F */  lw         $s2, 0x18($sp)
/* 74EA8B4 8008EB84 1400B18F */  lw         $s1, 0x14($sp)
/* 74EA8B8 8008EB88 1000B08F */  lw         $s0, 0x10($sp)
/* 74EA8BC 8008EB8C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 74EA8C0 8008EB90 0800E003 */  jr         $ra
/* 74EA8C4 8008EB94 00000000 */   nop
.size MobyUpdate_986_level_34, . - MobyUpdate_986_level_34
