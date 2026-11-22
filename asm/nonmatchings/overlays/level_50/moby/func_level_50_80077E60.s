.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_50
/* 95CC390 80077E60 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 95CC394 80077E64 1000B0AF */  sw         $s0, 0x10($sp)
/* 95CC398 80077E68 21808000 */  addu       $s0, $a0, $zero
/* 95CC39C 80077E6C 1800BFAF */  sw         $ra, 0x18($sp)
/* 95CC3A0 80077E70 1400B1AF */  sw         $s1, 0x14($sp)
/* 95CC3A4 80077E74 0000118E */  lw         $s1, 0x0($s0)
/* 95CC3A8 80077E78 04000524 */  addiu      $a1, $zero, 0x4
/* 95CC3AC 80077E7C 69D6000C */  jal        func_800359A4
/* 95CC3B0 80077E80 21202002 */   addu      $a0, $s1, $zero
/* 95CC3B4 80077E84 03004010 */  beqz       $v0, .Llevel_50_80077E94
/* 95CC3B8 80077E88 00000000 */   nop
/* 95CC3BC 80077E8C C656010C */  jal        func_80055B18
/* 95CC3C0 80077E90 21200002 */   addu      $a0, $s0, $zero
.Llevel_50_80077E94:
/* 95CC3C4 80077E94 0000228E */  lw         $v0, 0x0($s1)
/* 95CC3C8 80077E98 00000000 */  nop
/* 95CC3CC 80077E9C C0100200 */  sll        $v0, $v0, 3
/* 95CC3D0 80077EA0 540002A2 */  sb         $v0, 0x54($s0)
/* 95CC3D4 80077EA4 0000228E */  lw         $v0, 0x0($s1)
/* 95CC3D8 80077EA8 00000000 */  nop
/* 95CC3DC 80077EAC 80100200 */  sll        $v0, $v0, 2
/* 95CC3E0 80077EB0 550002A2 */  sb         $v0, 0x55($s0)
/* 95CC3E4 80077EB4 0780043C */  lui        $a0, %hi(D_8006C648)
/* 95CC3E8 80077EB8 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 95CC3EC 80077EBC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 95CC3F0 80077EC0 40180400 */  sll        $v1, $a0, 1
/* 95CC3F4 80077EC4 21186400 */  addu       $v1, $v1, $a0
/* 95CC3F8 80077EC8 23104300 */  subu       $v0, $v0, $v1
/* 95CC3FC 80077ECC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 95CC400 80077ED0 FF004230 */  andi       $v0, $v0, 0xFF
/* 95CC404 80077ED4 8000422C */  sltiu      $v0, $v0, 0x80
/* 95CC408 80077ED8 02004014 */  bnez       $v0, .Llevel_50_80077EE4
/* 95CC40C 80077EDC 00000000 */   nop
/* 95CC410 80077EE0 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_50_80077EE4:
/* 95CC414 80077EE4 4F000292 */  lbu        $v0, 0x4F($s0)
/* 95CC418 80077EE8 00000000 */  nop
/* 95CC41C 80077EEC 0E00422C */  sltiu      $v0, $v0, 0xE
/* 95CC420 80077EF0 02004010 */  beqz       $v0, .Llevel_50_80077EFC
/* 95CC424 80077EF4 0E000224 */   addiu     $v0, $zero, 0xE
/* 95CC428 80077EF8 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_50_80077EFC:
/* 95CC42C 80077EFC 1800BF8F */  lw         $ra, 0x18($sp)
/* 95CC430 80077F00 1400B18F */  lw         $s1, 0x14($sp)
/* 95CC434 80077F04 1000B08F */  lw         $s0, 0x10($sp)
/* 95CC438 80077F08 2000BD27 */  addiu      $sp, $sp, 0x20
/* 95CC43C 80077F0C 0800E003 */  jr         $ra
/* 95CC440 80077F10 00000000 */   nop
.size MobyUpdate_482_level_50, . - MobyUpdate_482_level_50
