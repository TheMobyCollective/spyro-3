.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_80091148
/* 74ECE78 80091148 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 74ECE7C 8009114C 1400B1AF */  sw         $s1, 0x14($sp)
/* 74ECE80 80091150 21888000 */  addu       $s1, $a0, $zero
/* 74ECE84 80091154 1800BFAF */  sw         $ra, 0x18($sp)
/* 74ECE88 80091158 989E000C */  jal        func_80027A60
/* 74ECE8C 8009115C 1000B0AF */   sw        $s0, 0x10($sp)
/* 74ECE90 80091160 2800228E */  lw         $v0, 0x28($s1)
/* 74ECE94 80091164 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 74ECE98 80091168 0000458C */  lw         $a1, 0x0($v0)
/* 74ECE9C 8009116C 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 74ECEA0 80091170 1800A300 */  mult       $a1, $v1
/* 74ECEA4 80091174 5000228E */  lw         $v0, 0x50($s1)
/* 74ECEA8 80091178 C3270500 */  sra        $a0, $a1, 31
/* 74ECEAC 8009117C 10380000 */  mfhi       $a3
/* 74ECEB0 80091180 2118E500 */  addu       $v1, $a3, $a1
/* 74ECEB4 80091184 03190300 */  sra        $v1, $v1, 4
/* 74ECEB8 80091188 23806400 */  subu       $s0, $v1, $a0
/* 74ECEBC 8009118C 2A100202 */  slt        $v0, $s0, $v0
/* 74ECEC0 80091190 0F004010 */  beqz       $v0, .Llevel_34_800911D0
/* 74ECEC4 80091194 00000000 */   nop
/* 74ECEC8 80091198 0D00A010 */  beqz       $a1, .Llevel_34_800911D0
/* 74ECECC 8009119C 0800022A */   slti      $v0, $s0, 0x8
/* 74ECED0 800911A0 05004014 */  bnez       $v0, .Llevel_34_800911B8
/* 74ECED4 800911A4 1000022A */   slti      $v0, $s0, 0x10
/* 74ECED8 800911A8 09004010 */  beqz       $v0, .Llevel_34_800911D0
/* 74ECEDC 800911AC 01000232 */   andi      $v0, $s0, 0x1
/* 74ECEE0 800911B0 07004010 */  beqz       $v0, .Llevel_34_800911D0
/* 74ECEE4 800911B4 00000000 */   nop
.Llevel_34_800911B8:
/* 74ECEE8 800911B8 0780023C */  lui        $v0, %hi(D_8006C654)
/* 74ECEEC 800911BC 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 74ECEF0 800911C0 21280000 */  addu       $a1, $zero, $zero
/* 74ECEF4 800911C4 1E004490 */  lbu        $a0, 0x1E($v0)
/* 74ECEF8 800911C8 D4EE000C */  jal        PlaySound
/* 74ECEFC 800911CC 21300000 */   addu      $a2, $zero, $zero
.Llevel_34_800911D0:
/* 74ECF00 800911D0 2800228E */  lw         $v0, 0x28($s1)
/* 74ECF04 800911D4 500030AE */  sw         $s0, 0x50($s1)
/* 74ECF08 800911D8 0000428C */  lw         $v0, 0x0($v0)
/* 74ECF0C 800911DC 00000000 */  nop
/* 74ECF10 800911E0 04004014 */  bnez       $v0, .Llevel_34_800911F4
/* 74ECF14 800911E4 00000000 */   nop
/* 74ECF18 800911E8 1A002486 */  lh         $a0, 0x1A($s1)
/* 74ECF1C 800911EC 55A0000C */  jal        func_80028154
/* 74ECF20 800911F0 00000000 */   nop
.Llevel_34_800911F4:
/* 74ECF24 800911F4 1800BF8F */  lw         $ra, 0x18($sp)
/* 74ECF28 800911F8 1400B18F */  lw         $s1, 0x14($sp)
/* 74ECF2C 800911FC 1000B08F */  lw         $s0, 0x10($sp)
/* 74ECF30 80091200 2000BD27 */  addiu      $sp, $sp, 0x20
/* 74ECF34 80091204 0800E003 */  jr         $ra
/* 74ECF38 80091208 00000000 */   nop
.size func_level_34_80091148, . - func_level_34_80091148
