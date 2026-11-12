.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_24
/* 5DF2E8C 8007815C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5DF2E90 80078160 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF2E94 80078164 21808000 */  addu       $s0, $a0, $zero
/* 5DF2E98 80078168 1800BFAF */  sw         $ra, 0x18($sp)
/* 5DF2E9C 8007816C 1400B1AF */  sw         $s1, 0x14($sp)
/* 5DF2EA0 80078170 0000118E */  lw         $s1, 0x0($s0)
/* 5DF2EA4 80078174 04000524 */  addiu      $a1, $zero, 0x4
/* 5DF2EA8 80078178 69D6000C */  jal        func_800359A4
/* 5DF2EAC 8007817C 21202002 */   addu      $a0, $s1, $zero
/* 5DF2EB0 80078180 03004010 */  beqz       $v0, .Llevel_24_80078190
/* 5DF2EB4 80078184 00000000 */   nop
/* 5DF2EB8 80078188 C656010C */  jal        func_80055B18
/* 5DF2EBC 8007818C 21200002 */   addu      $a0, $s0, $zero
.Llevel_24_80078190:
/* 5DF2EC0 80078190 0000228E */  lw         $v0, 0x0($s1)
/* 5DF2EC4 80078194 00000000 */  nop
/* 5DF2EC8 80078198 C0100200 */  sll        $v0, $v0, 3
/* 5DF2ECC 8007819C 540002A2 */  sb         $v0, 0x54($s0)
/* 5DF2ED0 800781A0 0000228E */  lw         $v0, 0x0($s1)
/* 5DF2ED4 800781A4 00000000 */  nop
/* 5DF2ED8 800781A8 80100200 */  sll        $v0, $v0, 2
/* 5DF2EDC 800781AC 550002A2 */  sb         $v0, 0x55($s0)
/* 5DF2EE0 800781B0 0780043C */  lui        $a0, %hi(D_8006C648)
/* 5DF2EE4 800781B4 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 5DF2EE8 800781B8 4F000292 */  lbu        $v0, 0x4F($s0)
/* 5DF2EEC 800781BC 40180400 */  sll        $v1, $a0, 1
/* 5DF2EF0 800781C0 21186400 */  addu       $v1, $v1, $a0
/* 5DF2EF4 800781C4 23104300 */  subu       $v0, $v0, $v1
/* 5DF2EF8 800781C8 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5DF2EFC 800781CC FF004230 */  andi       $v0, $v0, 0xFF
/* 5DF2F00 800781D0 8000422C */  sltiu      $v0, $v0, 0x80
/* 5DF2F04 800781D4 02004014 */  bnez       $v0, .Llevel_24_800781E0
/* 5DF2F08 800781D8 00000000 */   nop
/* 5DF2F0C 800781DC 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_24_800781E0:
/* 5DF2F10 800781E0 4F000292 */  lbu        $v0, 0x4F($s0)
/* 5DF2F14 800781E4 00000000 */  nop
/* 5DF2F18 800781E8 0E00422C */  sltiu      $v0, $v0, 0xE
/* 5DF2F1C 800781EC 02004010 */  beqz       $v0, .Llevel_24_800781F8
/* 5DF2F20 800781F0 0E000224 */   addiu     $v0, $zero, 0xE
/* 5DF2F24 800781F4 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_24_800781F8:
/* 5DF2F28 800781F8 1800BF8F */  lw         $ra, 0x18($sp)
/* 5DF2F2C 800781FC 1400B18F */  lw         $s1, 0x14($sp)
/* 5DF2F30 80078200 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF2F34 80078204 2000BD27 */  addiu      $sp, $sp, 0x20
/* 5DF2F38 80078208 0800E003 */  jr         $ra
/* 5DF2F3C 8007820C 00000000 */   nop
.size MobyUpdate_482_level_24, . - MobyUpdate_482_level_24
