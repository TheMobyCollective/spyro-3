.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8008EFE4
/* 5E09D14 8008EFE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5E09D18 8008EFE8 1400B1AF */  sw         $s1, 0x14($sp)
/* 5E09D1C 8008EFEC 21888000 */  addu       $s1, $a0, $zero
/* 5E09D20 8008EFF0 1800BFAF */  sw         $ra, 0x18($sp)
/* 5E09D24 8008EFF4 989E000C */  jal        func_80027A60
/* 5E09D28 8008EFF8 1000B0AF */   sw        $s0, 0x10($sp)
/* 5E09D2C 8008EFFC 2800228E */  lw         $v0, 0x28($s1)
/* 5E09D30 8008F000 8888033C */  lui        $v1, (0x88888889 >> 16)
/* 5E09D34 8008F004 0000458C */  lw         $a1, 0x0($v0)
/* 5E09D38 8008F008 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 5E09D3C 8008F00C 1800A300 */  mult       $a1, $v1
/* 5E09D40 8008F010 5000228E */  lw         $v0, 0x50($s1)
/* 5E09D44 8008F014 C3270500 */  sra        $a0, $a1, 31
/* 5E09D48 8008F018 10380000 */  mfhi       $a3
/* 5E09D4C 8008F01C 2118E500 */  addu       $v1, $a3, $a1
/* 5E09D50 8008F020 03190300 */  sra        $v1, $v1, 4
/* 5E09D54 8008F024 23806400 */  subu       $s0, $v1, $a0
/* 5E09D58 8008F028 2A100202 */  slt        $v0, $s0, $v0
/* 5E09D5C 8008F02C 0F004010 */  beqz       $v0, .Llevel_24_8008F06C
/* 5E09D60 8008F030 00000000 */   nop
/* 5E09D64 8008F034 0D00A010 */  beqz       $a1, .Llevel_24_8008F06C
/* 5E09D68 8008F038 0800022A */   slti      $v0, $s0, 0x8
/* 5E09D6C 8008F03C 05004014 */  bnez       $v0, .Llevel_24_8008F054
/* 5E09D70 8008F040 1000022A */   slti      $v0, $s0, 0x10
/* 5E09D74 8008F044 09004010 */  beqz       $v0, .Llevel_24_8008F06C
/* 5E09D78 8008F048 01000232 */   andi      $v0, $s0, 0x1
/* 5E09D7C 8008F04C 07004010 */  beqz       $v0, .Llevel_24_8008F06C
/* 5E09D80 8008F050 00000000 */   nop
.Llevel_24_8008F054:
/* 5E09D84 8008F054 0780023C */  lui        $v0, %hi(D_8006C654)
/* 5E09D88 8008F058 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 5E09D8C 8008F05C 21280000 */  addu       $a1, $zero, $zero
/* 5E09D90 8008F060 1E004490 */  lbu        $a0, 0x1E($v0)
/* 5E09D94 8008F064 D4EE000C */  jal        PlaySound
/* 5E09D98 8008F068 21300000 */   addu      $a2, $zero, $zero
.Llevel_24_8008F06C:
/* 5E09D9C 8008F06C 2800228E */  lw         $v0, 0x28($s1)
/* 5E09DA0 8008F070 500030AE */  sw         $s0, 0x50($s1)
/* 5E09DA4 8008F074 0000428C */  lw         $v0, 0x0($v0)
/* 5E09DA8 8008F078 00000000 */  nop
/* 5E09DAC 8008F07C 04004014 */  bnez       $v0, .Llevel_24_8008F090
/* 5E09DB0 8008F080 00000000 */   nop
/* 5E09DB4 8008F084 1A002486 */  lh         $a0, 0x1A($s1)
/* 5E09DB8 8008F088 55A0000C */  jal        func_80028154
/* 5E09DBC 8008F08C 00000000 */   nop
.Llevel_24_8008F090:
/* 5E09DC0 8008F090 1800BF8F */  lw         $ra, 0x18($sp)
/* 5E09DC4 8008F094 1400B18F */  lw         $s1, 0x14($sp)
/* 5E09DC8 8008F098 1000B08F */  lw         $s0, 0x10($sp)
/* 5E09DCC 8008F09C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5E09DD0 8008F0A0 0800E003 */  jr         $ra
/* 5E09DD4 8008F0A4 00000000 */   nop
.size func_level_24_8008EFE4, . - func_level_24_8008EFE4
