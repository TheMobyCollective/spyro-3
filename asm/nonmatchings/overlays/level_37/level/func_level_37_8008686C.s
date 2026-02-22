.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8008686C
/* 7AB259C 8008686C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7AB25A0 80086870 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AB25A4 80086874 21888000 */  addu       $s1, $a0, $zero
/* 7AB25A8 80086878 1800BFAF */  sw         $ra, 0x18($sp)
/* 7AB25AC 8008687C 989E000C */  jal        func_80027A60
/* 7AB25B0 80086880 1000B0AF */   sw        $s0, 0x10($sp)
/* 7AB25B4 80086884 2800228E */  lw         $v0, 0x28($s1)
/* 7AB25B8 80086888 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 7AB25BC 8008688C 0000458C */  lw         $a1, 0x0($v0)
/* 7AB25C0 80086890 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 7AB25C4 80086894 1800A300 */  mult       $a1, $v1
/* 7AB25C8 80086898 5000228E */  lw         $v0, 0x50($s1)
/* 7AB25CC 8008689C C3270500 */  sra        $a0, $a1, 31
/* 7AB25D0 800868A0 10380000 */  mfhi       $a3
/* 7AB25D4 800868A4 2118E500 */  addu       $v1, $a3, $a1
/* 7AB25D8 800868A8 03190300 */  sra        $v1, $v1, 4
/* 7AB25DC 800868AC 23806400 */  subu       $s0, $v1, $a0
/* 7AB25E0 800868B0 2A100202 */  slt        $v0, $s0, $v0
/* 7AB25E4 800868B4 0F004010 */  beqz       $v0, .Llevel_37_800868F4
/* 7AB25E8 800868B8 00000000 */   nop
/* 7AB25EC 800868BC 0D00A010 */  beqz       $a1, .Llevel_37_800868F4
/* 7AB25F0 800868C0 0800022A */   slti      $v0, $s0, 0x8
/* 7AB25F4 800868C4 05004014 */  bnez       $v0, .Llevel_37_800868DC
/* 7AB25F8 800868C8 1000022A */   slti      $v0, $s0, 0x10
/* 7AB25FC 800868CC 09004010 */  beqz       $v0, .Llevel_37_800868F4
/* 7AB2600 800868D0 01000232 */   andi      $v0, $s0, 0x1
/* 7AB2604 800868D4 07004010 */  beqz       $v0, .Llevel_37_800868F4
/* 7AB2608 800868D8 00000000 */   nop
.Llevel_37_800868DC:
/* 7AB260C 800868DC 0780023C */  lui        $v0, %hi(D_8006C654)
/* 7AB2610 800868E0 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 7AB2614 800868E4 21280000 */  addu       $a1, $zero, $zero
/* 7AB2618 800868E8 1E004490 */  lbu        $a0, 0x1E($v0)
/* 7AB261C 800868EC D4EE000C */  jal        PlaySound
/* 7AB2620 800868F0 21300000 */   addu      $a2, $zero, $zero
.Llevel_37_800868F4:
/* 7AB2624 800868F4 2800228E */  lw         $v0, 0x28($s1)
/* 7AB2628 800868F8 500030AE */  sw         $s0, 0x50($s1)
/* 7AB262C 800868FC 0000428C */  lw         $v0, 0x0($v0)
/* 7AB2630 80086900 00000000 */  nop
/* 7AB2634 80086904 04004014 */  bnez       $v0, .Llevel_37_80086918
/* 7AB2638 80086908 00000000 */   nop
/* 7AB263C 8008690C 1A002486 */  lh         $a0, 0x1A($s1)
/* 7AB2640 80086910 55A0000C */  jal        func_80028154
/* 7AB2644 80086914 00000000 */   nop
.Llevel_37_80086918:
/* 7AB2648 80086918 1800BF8F */  lw         $ra, 0x18($sp)
/* 7AB264C 8008691C 1400B18F */  lw         $s1, 0x14($sp)
/* 7AB2650 80086920 1000B08F */  lw         $s0, 0x10($sp)
/* 7AB2654 80086924 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7AB2658 80086928 0800E003 */  jr         $ra
/* 7AB265C 8008692C 00000000 */   nop
.size func_level_37_8008686C, . - func_level_37_8008686C
