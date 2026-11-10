.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_15
/* 49B1280 80076D50 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 49B1284 80076D54 1000B0AF */  sw         $s0, 0x10($sp)
/* 49B1288 80076D58 21808000 */  addu       $s0, $a0, $zero
/* 49B128C 80076D5C 1800BFAF */  sw         $ra, 0x18($sp)
/* 49B1290 80076D60 1400B1AF */  sw         $s1, 0x14($sp)
/* 49B1294 80076D64 0000118E */  lw         $s1, 0x0($s0)
/* 49B1298 80076D68 04000524 */  addiu      $a1, $zero, 0x4
/* 49B129C 80076D6C 69D6000C */  jal        func_800359A4
/* 49B12A0 80076D70 21202002 */   addu      $a0, $s1, $zero
/* 49B12A4 80076D74 03004010 */  beqz       $v0, .Llevel_15_80076D84
/* 49B12A8 80076D78 00000000 */   nop
/* 49B12AC 80076D7C C656010C */  jal        func_80055B18
/* 49B12B0 80076D80 21200002 */   addu      $a0, $s0, $zero
.Llevel_15_80076D84:
/* 49B12B4 80076D84 0000228E */  lw         $v0, 0x0($s1)
/* 49B12B8 80076D88 00000000 */  nop
/* 49B12BC 80076D8C C0100200 */  sll        $v0, $v0, 3
/* 49B12C0 80076D90 540002A2 */  sb         $v0, 0x54($s0)
/* 49B12C4 80076D94 0000228E */  lw         $v0, 0x0($s1)
/* 49B12C8 80076D98 00000000 */  nop
/* 49B12CC 80076D9C 80100200 */  sll        $v0, $v0, 2
/* 49B12D0 80076DA0 550002A2 */  sb         $v0, 0x55($s0)
/* 49B12D4 80076DA4 0780043C */  lui        $a0, %hi(D_8006C648)
/* 49B12D8 80076DA8 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 49B12DC 80076DAC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 49B12E0 80076DB0 40180400 */  sll        $v1, $a0, 1
/* 49B12E4 80076DB4 21186400 */  addu       $v1, $v1, $a0
/* 49B12E8 80076DB8 23104300 */  subu       $v0, $v0, $v1
/* 49B12EC 80076DBC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 49B12F0 80076DC0 FF004230 */  andi       $v0, $v0, 0xFF
/* 49B12F4 80076DC4 8000422C */  sltiu      $v0, $v0, 0x80
/* 49B12F8 80076DC8 02004014 */  bnez       $v0, .Llevel_15_80076DD4
/* 49B12FC 80076DCC 00000000 */   nop
/* 49B1300 80076DD0 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_15_80076DD4:
/* 49B1304 80076DD4 4F000292 */  lbu        $v0, 0x4F($s0)
/* 49B1308 80076DD8 00000000 */  nop
/* 49B130C 80076DDC 0E00422C */  sltiu      $v0, $v0, 0xE
/* 49B1310 80076DE0 02004010 */  beqz       $v0, .Llevel_15_80076DEC
/* 49B1314 80076DE4 0E000224 */   addiu     $v0, $zero, 0xE
/* 49B1318 80076DE8 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_15_80076DEC:
/* 49B131C 80076DEC 1800BF8F */  lw         $ra, 0x18($sp)
/* 49B1320 80076DF0 1400B18F */  lw         $s1, 0x14($sp)
/* 49B1324 80076DF4 1000B08F */  lw         $s0, 0x10($sp)
/* 49B1328 80076DF8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 49B132C 80076DFC 0800E003 */  jr         $ra
/* 49B1330 80076E00 00000000 */   nop
.size MobyUpdate_482_level_15, . - MobyUpdate_482_level_15
