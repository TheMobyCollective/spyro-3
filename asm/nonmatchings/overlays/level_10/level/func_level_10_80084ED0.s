.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80084ED0
/* 3AE9C00 80084ED0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3AE9C04 80084ED4 1400B1AF */  sw         $s1, 0x14($sp)
/* 3AE9C08 80084ED8 21888000 */  addu       $s1, $a0, $zero
/* 3AE9C0C 80084EDC 1800BFAF */  sw         $ra, 0x18($sp)
/* 3AE9C10 80084EE0 989E000C */  jal        func_80027A60
/* 3AE9C14 80084EE4 1000B0AF */   sw        $s0, 0x10($sp)
/* 3AE9C18 80084EE8 2800228E */  lw         $v0, 0x28($s1)
/* 3AE9C1C 80084EEC 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 3AE9C20 80084EF0 0000458C */  lw         $a1, 0x0($v0)
/* 3AE9C24 80084EF4 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 3AE9C28 80084EF8 1800A300 */  mult       $a1, $v1
/* 3AE9C2C 80084EFC 5000228E */  lw         $v0, 0x50($s1)
/* 3AE9C30 80084F00 C3270500 */  sra        $a0, $a1, 31
/* 3AE9C34 80084F04 10380000 */  mfhi       $a3
/* 3AE9C38 80084F08 2118E500 */  addu       $v1, $a3, $a1
/* 3AE9C3C 80084F0C 03190300 */  sra        $v1, $v1, 4
/* 3AE9C40 80084F10 23806400 */  subu       $s0, $v1, $a0
/* 3AE9C44 80084F14 2A100202 */  slt        $v0, $s0, $v0
/* 3AE9C48 80084F18 0F004010 */  beqz       $v0, .Llevel_10_80084F58
/* 3AE9C4C 80084F1C 00000000 */   nop
/* 3AE9C50 80084F20 0D00A010 */  beqz       $a1, .Llevel_10_80084F58
/* 3AE9C54 80084F24 0800022A */   slti      $v0, $s0, 0x8
/* 3AE9C58 80084F28 05004014 */  bnez       $v0, .Llevel_10_80084F40
/* 3AE9C5C 80084F2C 1000022A */   slti      $v0, $s0, 0x10
/* 3AE9C60 80084F30 09004010 */  beqz       $v0, .Llevel_10_80084F58
/* 3AE9C64 80084F34 01000232 */   andi      $v0, $s0, 0x1
/* 3AE9C68 80084F38 07004010 */  beqz       $v0, .Llevel_10_80084F58
/* 3AE9C6C 80084F3C 00000000 */   nop
.Llevel_10_80084F40:
/* 3AE9C70 80084F40 0780023C */  lui        $v0, %hi(D_8006C654)
/* 3AE9C74 80084F44 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 3AE9C78 80084F48 21280000 */  addu       $a1, $zero, $zero
/* 3AE9C7C 80084F4C 1E004490 */  lbu        $a0, 0x1E($v0)
/* 3AE9C80 80084F50 D4EE000C */  jal        PlaySound
/* 3AE9C84 80084F54 21300000 */   addu      $a2, $zero, $zero
.Llevel_10_80084F58:
/* 3AE9C88 80084F58 2800228E */  lw         $v0, 0x28($s1)
/* 3AE9C8C 80084F5C 500030AE */  sw         $s0, 0x50($s1)
/* 3AE9C90 80084F60 0000428C */  lw         $v0, 0x0($v0)
/* 3AE9C94 80084F64 00000000 */  nop
/* 3AE9C98 80084F68 04004014 */  bnez       $v0, .Llevel_10_80084F7C
/* 3AE9C9C 80084F6C 00000000 */   nop
/* 3AE9CA0 80084F70 1A002486 */  lh         $a0, 0x1A($s1)
/* 3AE9CA4 80084F74 55A0000C */  jal        func_80028154
/* 3AE9CA8 80084F78 00000000 */   nop
.Llevel_10_80084F7C:
/* 3AE9CAC 80084F7C 1800BF8F */  lw         $ra, 0x18($sp)
/* 3AE9CB0 80084F80 1400B18F */  lw         $s1, 0x14($sp)
/* 3AE9CB4 80084F84 1000B08F */  lw         $s0, 0x10($sp)
/* 3AE9CB8 80084F88 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3AE9CBC 80084F8C 0800E003 */  jr         $ra
/* 3AE9CC0 80084F90 00000000 */   nop
.size func_level_10_80084ED0, . - func_level_10_80084ED0
