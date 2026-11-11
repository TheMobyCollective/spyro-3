.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_979_level_22
/* 577E7BC 8008EA8C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 577E7C0 8008EA90 1000B0AF */  sw         $s0, 0x10($sp)
/* 577E7C4 8008EA94 21808000 */  addu       $s0, $a0, $zero
/* 577E7C8 8008EA98 1400BFAF */  sw         $ra, 0x14($sp)
/* 577E7CC 8008EA9C 48000392 */  lbu        $v1, 0x48($s0)
/* 577E7D0 8008EAA0 0000048E */  lw         $a0, 0x0($s0)
/* 577E7D4 8008EAA4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 577E7D8 8008EAA8 06006010 */  beqz       $v1, .Llevel_22_8008EAC4
/* 577E7DC 8008EAAC 4A0002A2 */   sb        $v0, 0x4A($s0)
/* 577E7E0 8008EAB0 01000224 */  addiu      $v0, $zero, 0x1
/* 577E7E4 8008EAB4 0E006210 */  beq        $v1, $v0, .Llevel_22_8008EAF0
/* 577E7E8 8008EAB8 00000000 */   nop
/* 577E7EC 8008EABC C53A0208 */  j          .Llevel_22_8008EB14
/* 577E7F0 8008EAC0 00000000 */   nop
.Llevel_22_8008EAC4:
/* 577E7F4 8008EAC4 0780023C */  lui        $v0, %hi(D_80070328 + 0x24C)
/* 577E7F8 8008EAC8 7405428C */  lw         $v0, %lo(D_80070328 + 0x24C)($v0)
/* 577E7FC 8008EACC 00000000 */  nop
/* 577E800 8008EAD0 10004014 */  bnez       $v0, .Llevel_22_8008EB14
/* 577E804 8008EAD4 FC000524 */   addiu     $a1, $zero, 0xFC
/* 577E808 8008EAD8 0000848C */  lw         $a0, 0x0($a0)
/* 577E80C 8008EADC B687000C */  jal        func_80021ED8
/* 577E810 8008EAE0 21300000 */   addu      $a2, $zero, $zero
/* 577E814 8008EAE4 01000224 */  addiu      $v0, $zero, 0x1
/* 577E818 8008EAE8 C53A0208 */  j          .Llevel_22_8008EB14
/* 577E81C 8008EAEC 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_22_8008EAF0:
/* 577E820 8008EAF0 0780023C */  lui        $v0, %hi(D_80070328 + 0x24C)
/* 577E824 8008EAF4 7405428C */  lw         $v0, %lo(D_80070328 + 0x24C)($v0)
/* 577E828 8008EAF8 00000000 */  nop
/* 577E82C 8008EAFC 05004010 */  beqz       $v0, .Llevel_22_8008EB14
/* 577E830 8008EB00 FC000524 */   addiu     $a1, $zero, 0xFC
/* 577E834 8008EB04 0000848C */  lw         $a0, 0x0($a0)
/* 577E838 8008EB08 B687000C */  jal        func_80021ED8
/* 577E83C 8008EB0C 21300000 */   addu      $a2, $zero, $zero
/* 577E840 8008EB10 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_22_8008EB14:
/* 577E844 8008EB14 1400BF8F */  lw         $ra, 0x14($sp)
/* 577E848 8008EB18 1000B08F */  lw         $s0, 0x10($sp)
/* 577E84C 8008EB1C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 577E850 8008EB20 0800E003 */  jr         $ra
/* 577E854 8008EB24 00000000 */   nop
.size MobyUpdate_979_level_22, . - MobyUpdate_979_level_22
