.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_35
/* 76F9FB4 80077284 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 76F9FB8 80077288 1000B0AF */  sw         $s0, 0x10($sp)
/* 76F9FBC 8007728C 21808000 */  addu       $s0, $a0, $zero
/* 76F9FC0 80077290 1800BFAF */  sw         $ra, 0x18($sp)
/* 76F9FC4 80077294 1400B1AF */  sw         $s1, 0x14($sp)
/* 76F9FC8 80077298 0000118E */  lw         $s1, 0x0($s0)
/* 76F9FCC 8007729C 04000524 */  addiu      $a1, $zero, 0x4
/* 76F9FD0 800772A0 69D6000C */  jal        func_800359A4
/* 76F9FD4 800772A4 21202002 */   addu      $a0, $s1, $zero
/* 76F9FD8 800772A8 03004010 */  beqz       $v0, .Llevel_35_800772B8
/* 76F9FDC 800772AC 00000000 */   nop
/* 76F9FE0 800772B0 C656010C */  jal        func_80055B18
/* 76F9FE4 800772B4 21200002 */   addu      $a0, $s0, $zero
.Llevel_35_800772B8:
/* 76F9FE8 800772B8 0000228E */  lw         $v0, 0x0($s1)
/* 76F9FEC 800772BC 00000000 */  nop
/* 76F9FF0 800772C0 C0100200 */  sll        $v0, $v0, 3
/* 76F9FF4 800772C4 540002A2 */  sb         $v0, 0x54($s0)
/* 76F9FF8 800772C8 0000228E */  lw         $v0, 0x0($s1)
/* 76F9FFC 800772CC 00000000 */  nop
/* 76FA000 800772D0 80100200 */  sll        $v0, $v0, 2
/* 76FA004 800772D4 550002A2 */  sb         $v0, 0x55($s0)
/* 76FA008 800772D8 0780043C */  lui        $a0, %hi(D_8006C648)
/* 76FA00C 800772DC 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 76FA010 800772E0 4F000292 */  lbu        $v0, 0x4F($s0)
/* 76FA014 800772E4 40180400 */  sll        $v1, $a0, 1
/* 76FA018 800772E8 21186400 */  addu       $v1, $v1, $a0
/* 76FA01C 800772EC 23104300 */  subu       $v0, $v0, $v1
/* 76FA020 800772F0 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 76FA024 800772F4 FF004230 */  andi       $v0, $v0, 0xFF
/* 76FA028 800772F8 8000422C */  sltiu      $v0, $v0, 0x80
/* 76FA02C 800772FC 02004014 */  bnez       $v0, .Llevel_35_80077308
/* 76FA030 80077300 00000000 */   nop
/* 76FA034 80077304 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_35_80077308:
/* 76FA038 80077308 4F000292 */  lbu        $v0, 0x4F($s0)
/* 76FA03C 8007730C 00000000 */  nop
/* 76FA040 80077310 0E00422C */  sltiu      $v0, $v0, 0xE
/* 76FA044 80077314 02004010 */  beqz       $v0, .Llevel_35_80077320
/* 76FA048 80077318 0E000224 */   addiu     $v0, $zero, 0xE
/* 76FA04C 8007731C 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_35_80077320:
/* 76FA050 80077320 1800BF8F */  lw         $ra, 0x18($sp)
/* 76FA054 80077324 1400B18F */  lw         $s1, 0x14($sp)
/* 76FA058 80077328 1000B08F */  lw         $s0, 0x10($sp)
/* 76FA05C 8007732C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 76FA060 80077330 0800E003 */  jr         $ra
/* 76FA064 80077334 00000000 */   nop
.size MobyUpdate_482_level_35, . - MobyUpdate_482_level_35
