.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_50_80094A44
/* 95E8F74 80094A44 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 95E8F78 80094A48 1400B1AF */  sw         $s1, 0x14($sp)
/* 95E8F7C 80094A4C 21888000 */  addu       $s1, $a0, $zero
/* 95E8F80 80094A50 1800BFAF */  sw         $ra, 0x18($sp)
/* 95E8F84 80094A54 989E000C */  jal        func_80027A60
/* 95E8F88 80094A58 1000B0AF */   sw        $s0, 0x10($sp)
/* 95E8F8C 80094A5C 2800228E */  lw         $v0, 0x28($s1)
/* 95E8F90 80094A60 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 95E8F94 80094A64 0000458C */  lw         $a1, 0x0($v0)
/* 95E8F98 80094A68 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 95E8F9C 80094A6C 1800A300 */  mult       $a1, $v1
/* 95E8FA0 80094A70 5000228E */  lw         $v0, 0x50($s1)
/* 95E8FA4 80094A74 C3270500 */  sra        $a0, $a1, 31
/* 95E8FA8 80094A78 10380000 */  mfhi       $a3
/* 95E8FAC 80094A7C 2118E500 */  addu       $v1, $a3, $a1
/* 95E8FB0 80094A80 03190300 */  sra        $v1, $v1, 4
/* 95E8FB4 80094A84 23806400 */  subu       $s0, $v1, $a0
/* 95E8FB8 80094A88 2A100202 */  slt        $v0, $s0, $v0
/* 95E8FBC 80094A8C 0F004010 */  beqz       $v0, .Llevel_50_80094ACC
/* 95E8FC0 80094A90 00000000 */   nop
/* 95E8FC4 80094A94 0D00A010 */  beqz       $a1, .Llevel_50_80094ACC
/* 95E8FC8 80094A98 0800022A */   slti      $v0, $s0, 0x8
/* 95E8FCC 80094A9C 05004014 */  bnez       $v0, .Llevel_50_80094AB4
/* 95E8FD0 80094AA0 1000022A */   slti      $v0, $s0, 0x10
/* 95E8FD4 80094AA4 09004010 */  beqz       $v0, .Llevel_50_80094ACC
/* 95E8FD8 80094AA8 01000232 */   andi      $v0, $s0, 0x1
/* 95E8FDC 80094AAC 07004010 */  beqz       $v0, .Llevel_50_80094ACC
/* 95E8FE0 80094AB0 00000000 */   nop
.Llevel_50_80094AB4:
/* 95E8FE4 80094AB4 0780023C */  lui        $v0, %hi(D_8006C654)
/* 95E8FE8 80094AB8 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 95E8FEC 80094ABC 21280000 */  addu       $a1, $zero, $zero
/* 95E8FF0 80094AC0 1E004490 */  lbu        $a0, 0x1E($v0)
/* 95E8FF4 80094AC4 D4EE000C */  jal        PlaySound
/* 95E8FF8 80094AC8 21300000 */   addu      $a2, $zero, $zero
.Llevel_50_80094ACC:
/* 95E8FFC 80094ACC 2800228E */  lw         $v0, 0x28($s1)
/* 95E9000 80094AD0 500030AE */  sw         $s0, 0x50($s1)
/* 95E9004 80094AD4 0000428C */  lw         $v0, 0x0($v0)
/* 95E9008 80094AD8 00000000 */  nop
/* 95E900C 80094ADC 04004014 */  bnez       $v0, .Llevel_50_80094AF0
/* 95E9010 80094AE0 00000000 */   nop
/* 95E9014 80094AE4 1A002486 */  lh         $a0, 0x1A($s1)
/* 95E9018 80094AE8 55A0000C */  jal        func_80028154
/* 95E901C 80094AEC 00000000 */   nop
.Llevel_50_80094AF0:
/* 95E9020 80094AF0 1800BF8F */  lw         $ra, 0x18($sp)
/* 95E9024 80094AF4 1400B18F */  lw         $s1, 0x14($sp)
/* 95E9028 80094AF8 1000B08F */  lw         $s0, 0x10($sp)
/* 95E902C 80094AFC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 95E9030 80094B00 0800E003 */  jr         $ra
/* 95E9034 80094B04 00000000 */   nop
.size func_level_50_80094A44, . - func_level_50_80094A44
