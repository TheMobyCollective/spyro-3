.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_20_80086058
/* 50D5D88 80086058 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 50D5D8C 8008605C 1400B1AF */  sw         $s1, 0x14($sp)
/* 50D5D90 80086060 21888000 */  addu       $s1, $a0, $zero
/* 50D5D94 80086064 1800BFAF */  sw         $ra, 0x18($sp)
/* 50D5D98 80086068 989E000C */  jal        func_80027A60
/* 50D5D9C 8008606C 1000B0AF */   sw        $s0, 0x10($sp)
/* 50D5DA0 80086070 2800228E */  lw         $v0, 0x28($s1)
/* 50D5DA4 80086074 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 50D5DA8 80086078 0000458C */  lw         $a1, 0x0($v0)
/* 50D5DAC 8008607C 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 50D5DB0 80086080 1800A300 */  mult       $a1, $v1
/* 50D5DB4 80086084 5000228E */  lw         $v0, 0x50($s1)
/* 50D5DB8 80086088 C3270500 */  sra        $a0, $a1, 31
/* 50D5DBC 8008608C 10380000 */  mfhi       $a3
/* 50D5DC0 80086090 2118E500 */  addu       $v1, $a3, $a1
/* 50D5DC4 80086094 03190300 */  sra        $v1, $v1, 4
/* 50D5DC8 80086098 23806400 */  subu       $s0, $v1, $a0
/* 50D5DCC 8008609C 2A100202 */  slt        $v0, $s0, $v0
/* 50D5DD0 800860A0 0F004010 */  beqz       $v0, .Llevel_20_800860E0
/* 50D5DD4 800860A4 00000000 */   nop
/* 50D5DD8 800860A8 0D00A010 */  beqz       $a1, .Llevel_20_800860E0
/* 50D5DDC 800860AC 0800022A */   slti      $v0, $s0, 0x8
/* 50D5DE0 800860B0 05004014 */  bnez       $v0, .Llevel_20_800860C8
/* 50D5DE4 800860B4 1000022A */   slti      $v0, $s0, 0x10
/* 50D5DE8 800860B8 09004010 */  beqz       $v0, .Llevel_20_800860E0
/* 50D5DEC 800860BC 01000232 */   andi      $v0, $s0, 0x1
/* 50D5DF0 800860C0 07004010 */  beqz       $v0, .Llevel_20_800860E0
/* 50D5DF4 800860C4 00000000 */   nop
.Llevel_20_800860C8:
/* 50D5DF8 800860C8 0780023C */  lui        $v0, %hi(D_8006C654)
/* 50D5DFC 800860CC 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 50D5E00 800860D0 21280000 */  addu       $a1, $zero, $zero
/* 50D5E04 800860D4 1E004490 */  lbu        $a0, 0x1E($v0)
/* 50D5E08 800860D8 D4EE000C */  jal        PlaySound
/* 50D5E0C 800860DC 21300000 */   addu      $a2, $zero, $zero
.Llevel_20_800860E0:
/* 50D5E10 800860E0 2800228E */  lw         $v0, 0x28($s1)
/* 50D5E14 800860E4 500030AE */  sw         $s0, 0x50($s1)
/* 50D5E18 800860E8 0000428C */  lw         $v0, 0x0($v0)
/* 50D5E1C 800860EC 00000000 */  nop
/* 50D5E20 800860F0 04004014 */  bnez       $v0, .Llevel_20_80086104
/* 50D5E24 800860F4 00000000 */   nop
/* 50D5E28 800860F8 1A002486 */  lh         $a0, 0x1A($s1)
/* 50D5E2C 800860FC 55A0000C */  jal        func_80028154
/* 50D5E30 80086100 00000000 */   nop
.Llevel_20_80086104:
/* 50D5E34 80086104 1800BF8F */  lw         $ra, 0x18($sp)
/* 50D5E38 80086108 1400B18F */  lw         $s1, 0x14($sp)
/* 50D5E3C 8008610C 1000B08F */  lw         $s0, 0x10($sp)
/* 50D5E40 80086110 2000BD27 */  addiu      $sp, $sp, 0x20
/* 50D5E44 80086114 0800E003 */  jr         $ra
/* 50D5E48 80086118 00000000 */   nop
.size func_level_20_80086058, . - func_level_20_80086058
