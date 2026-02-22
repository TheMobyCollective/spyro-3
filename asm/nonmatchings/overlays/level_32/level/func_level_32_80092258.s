.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80092258
/* 6DF9788 80092258 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 6DF978C 8009225C 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DF9790 80092260 21888000 */  addu       $s1, $a0, $zero
/* 6DF9794 80092264 1800BFAF */  sw         $ra, 0x18($sp)
/* 6DF9798 80092268 989E000C */  jal        func_80027A60
/* 6DF979C 8009226C 1000B0AF */   sw        $s0, 0x10($sp)
/* 6DF97A0 80092270 2800228E */  lw         $v0, 0x28($s1)
/* 6DF97A4 80092274 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 6DF97A8 80092278 0000458C */  lw         $a1, 0x0($v0)
/* 6DF97AC 8009227C 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 6DF97B0 80092280 1800A300 */  mult       $a1, $v1
/* 6DF97B4 80092284 5000228E */  lw         $v0, 0x50($s1)
/* 6DF97B8 80092288 C3270500 */  sra        $a0, $a1, 31
/* 6DF97BC 8009228C 10380000 */  mfhi       $a3
/* 6DF97C0 80092290 2118E500 */  addu       $v1, $a3, $a1
/* 6DF97C4 80092294 03190300 */  sra        $v1, $v1, 4
/* 6DF97C8 80092298 23806400 */  subu       $s0, $v1, $a0
/* 6DF97CC 8009229C 2A100202 */  slt        $v0, $s0, $v0
/* 6DF97D0 800922A0 0F004010 */  beqz       $v0, .Llevel_32_800922E0
/* 6DF97D4 800922A4 00000000 */   nop
/* 6DF97D8 800922A8 0D00A010 */  beqz       $a1, .Llevel_32_800922E0
/* 6DF97DC 800922AC 0800022A */   slti      $v0, $s0, 0x8
/* 6DF97E0 800922B0 05004014 */  bnez       $v0, .Llevel_32_800922C8
/* 6DF97E4 800922B4 1000022A */   slti      $v0, $s0, 0x10
/* 6DF97E8 800922B8 09004010 */  beqz       $v0, .Llevel_32_800922E0
/* 6DF97EC 800922BC 01000232 */   andi      $v0, $s0, 0x1
/* 6DF97F0 800922C0 07004010 */  beqz       $v0, .Llevel_32_800922E0
/* 6DF97F4 800922C4 00000000 */   nop
.Llevel_32_800922C8:
/* 6DF97F8 800922C8 0780023C */  lui        $v0, %hi(D_8006C654)
/* 6DF97FC 800922CC 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 6DF9800 800922D0 21280000 */  addu       $a1, $zero, $zero
/* 6DF9804 800922D4 1E004490 */  lbu        $a0, 0x1E($v0)
/* 6DF9808 800922D8 D4EE000C */  jal        PlaySound
/* 6DF980C 800922DC 21300000 */   addu      $a2, $zero, $zero
.Llevel_32_800922E0:
/* 6DF9810 800922E0 2800228E */  lw         $v0, 0x28($s1)
/* 6DF9814 800922E4 500030AE */  sw         $s0, 0x50($s1)
/* 6DF9818 800922E8 0000428C */  lw         $v0, 0x0($v0)
/* 6DF981C 800922EC 00000000 */  nop
/* 6DF9820 800922F0 04004014 */  bnez       $v0, .Llevel_32_80092304
/* 6DF9824 800922F4 00000000 */   nop
/* 6DF9828 800922F8 1A002486 */  lh         $a0, 0x1A($s1)
/* 6DF982C 800922FC 55A0000C */  jal        func_80028154
/* 6DF9830 80092300 00000000 */   nop
.Llevel_32_80092304:
/* 6DF9834 80092304 1800BF8F */  lw         $ra, 0x18($sp)
/* 6DF9838 80092308 1400B18F */  lw         $s1, 0x14($sp)
/* 6DF983C 8009230C 1000B08F */  lw         $s0, 0x10($sp)
/* 6DF9840 80092310 2000BD27 */  addiu      $sp, $sp, 0x20
/* 6DF9844 80092314 0800E003 */  jr         $ra
/* 6DF9848 80092318 00000000 */   nop
.size func_level_32_80092258, . - func_level_32_80092258
