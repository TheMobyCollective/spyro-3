.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_72_level_32
/* 6DE4C78 8007D748 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6DE4C7C 8007D74C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DE4C80 8007D750 21808000 */  addu       $s0, $a0, $zero
/* 6DE4C84 8007D754 1400BFAF */  sw         $ra, 0x14($sp)
/* 6DE4C88 8007D758 1800028E */  lw         $v0, 0x18($s0)
/* 6DE4C8C 8007D75C 0202033C */  lui        $v1, (0x2020000 >> 16)
/* 6DE4C90 8007D760 24104300 */  and        $v0, $v0, $v1
/* 6DE4C94 8007D764 08004010 */  beqz       $v0, .Llevel_32_8007D788
/* 6DE4C98 8007D768 01000224 */   addiu     $v0, $zero, 0x1
/* 6DE4C9C 8007D76C 48000392 */  lbu        $v1, 0x48($s0)
/* 6DE4CA0 8007D770 00000000 */  nop
/* 6DE4CA4 8007D774 05006210 */  beq        $v1, $v0, .Llevel_32_8007D78C
/* 6DE4CA8 8007D778 01000224 */   addiu     $v0, $zero, 0x1
/* 6DE4CAC 8007D77C 480002A2 */  sb         $v0, 0x48($s0)
/* 6DE4CB0 8007D780 D0D3000C */  jal        func_80034F40
/* 6DE4CB4 8007D784 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_32_8007D788:
/* 6DE4CB8 8007D788 48000392 */  lbu        $v1, 0x48($s0)
.Llevel_32_8007D78C:
/* 6DE4CBC 8007D78C 00000000 */  nop
/* 6DE4CC0 8007D790 0C006010 */  beqz       $v1, .Llevel_32_8007D7C4
/* 6DE4CC4 8007D794 180000AE */   sw        $zero, 0x18($s0)
/* 6DE4CC8 8007D798 01000224 */  addiu      $v0, $zero, 0x1
/* 6DE4CCC 8007D79C 09006214 */  bne        $v1, $v0, .Llevel_32_8007D7C4
/* 6DE4CD0 8007D7A0 00000000 */   nop
/* 6DE4CD4 8007D7A4 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6DE4CD8 8007D7A8 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6DE4CDC 8007D7AC 00000000 */  nop
/* 6DE4CE0 8007D7B0 04004010 */  beqz       $v0, .Llevel_32_8007D7C4
/* 6DE4CE4 8007D7B4 21200002 */   addu      $a0, $s0, $zero
/* 6DE4CE8 8007D7B8 480000A2 */  sb         $zero, 0x48($s0)
/* 6DE4CEC 8007D7BC D0D3000C */  jal        func_80034F40
/* 6DE4CF0 8007D7C0 21280000 */   addu      $a1, $zero, $zero
.Llevel_32_8007D7C4:
/* 6DE4CF4 8007D7C4 1400BF8F */  lw         $ra, 0x14($sp)
/* 6DE4CF8 8007D7C8 1000B08F */  lw         $s0, 0x10($sp)
/* 6DE4CFC 8007D7CC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6DE4D00 8007D7D0 0800E003 */  jr         $ra
/* 6DE4D04 8007D7D4 00000000 */   nop
.size MobyUpdate_72_level_32, . - MobyUpdate_72_level_32
