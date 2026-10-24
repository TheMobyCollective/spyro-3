.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_18
/* 4EAA1B4 80077484 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EAA1B8 80077488 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EAA1BC 8007748C 21808000 */  addu       $s0, $a0, $zero
/* 4EAA1C0 80077490 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EAA1C4 80077494 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EAA1C8 80077498 0000118E */  lw         $s1, 0x0($s0)
/* 4EAA1CC 8007749C 04000524 */  addiu      $a1, $zero, 0x4
/* 4EAA1D0 800774A0 69D6000C */  jal        func_800359A4
/* 4EAA1D4 800774A4 21202002 */   addu      $a0, $s1, $zero
/* 4EAA1D8 800774A8 03004010 */  beqz       $v0, .Llevel_18_800774B8
/* 4EAA1DC 800774AC 00000000 */   nop
/* 4EAA1E0 800774B0 C656010C */  jal        func_80055B18
/* 4EAA1E4 800774B4 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_800774B8:
/* 4EAA1E8 800774B8 0000228E */  lw         $v0, 0x0($s1)
/* 4EAA1EC 800774BC 00000000 */  nop
/* 4EAA1F0 800774C0 C0100200 */  sll        $v0, $v0, 3
/* 4EAA1F4 800774C4 540002A2 */  sb         $v0, 0x54($s0)
/* 4EAA1F8 800774C8 0000228E */  lw         $v0, 0x0($s1)
/* 4EAA1FC 800774CC 00000000 */  nop
/* 4EAA200 800774D0 80100200 */  sll        $v0, $v0, 2
/* 4EAA204 800774D4 550002A2 */  sb         $v0, 0x55($s0)
/* 4EAA208 800774D8 0780043C */  lui        $a0, %hi(D_8006C648)
/* 4EAA20C 800774DC 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 4EAA210 800774E0 4F000292 */  lbu        $v0, 0x4F($s0)
/* 4EAA214 800774E4 40180400 */  sll        $v1, $a0, 1
/* 4EAA218 800774E8 21186400 */  addu       $v1, $v1, $a0
/* 4EAA21C 800774EC 23104300 */  subu       $v0, $v0, $v1
/* 4EAA220 800774F0 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 4EAA224 800774F4 FF004230 */  andi       $v0, $v0, 0xFF
/* 4EAA228 800774F8 8000422C */  sltiu      $v0, $v0, 0x80
/* 4EAA22C 800774FC 02004014 */  bnez       $v0, .Llevel_18_80077508
/* 4EAA230 80077500 00000000 */   nop
/* 4EAA234 80077504 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_18_80077508:
/* 4EAA238 80077508 4F000292 */  lbu        $v0, 0x4F($s0)
/* 4EAA23C 8007750C 00000000 */  nop
/* 4EAA240 80077510 0E00422C */  sltiu      $v0, $v0, 0xE
/* 4EAA244 80077514 02004010 */  beqz       $v0, .Llevel_18_80077520
/* 4EAA248 80077518 0E000224 */   addiu     $v0, $zero, 0xE
/* 4EAA24C 8007751C 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_18_80077520:
/* 4EAA250 80077520 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EAA254 80077524 1400B18F */  lw         $s1, 0x14($sp)
/* 4EAA258 80077528 1000B08F */  lw         $s0, 0x10($sp)
/* 4EAA25C 8007752C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EAA260 80077530 0800E003 */  jr         $ra
/* 4EAA264 80077534 00000000 */   nop
.size MobyUpdate_482_level_18, . - MobyUpdate_482_level_18
