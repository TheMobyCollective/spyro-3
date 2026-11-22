.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_956_level_46
/* 8F59238 80086D08 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8F5923C 80086D0C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8F59240 80086D10 21888000 */  addu       $s1, $a0, $zero
/* 8F59244 80086D14 1800BFAF */  sw         $ra, 0x18($sp)
/* 8F59248 80086D18 1000B0AF */  sw         $s0, 0x10($sp)
/* 8F5924C 80086D1C 48002392 */  lbu        $v1, 0x48($s1)
/* 8F59250 80086D20 0000308E */  lw         $s0, 0x0($s1)
/* 8F59254 80086D24 05006010 */  beqz       $v1, .Llevel_46_80086D3C
/* 8F59258 80086D28 01000224 */   addiu     $v0, $zero, 0x1
/* 8F5925C 80086D2C 15006210 */  beq        $v1, $v0, .Llevel_46_80086D84
/* 8F59260 80086D30 00000000 */   nop
/* 8F59264 80086D34 701B0208 */  j          .Llevel_46_80086DC0
/* 8F59268 80086D38 00000000 */   nop
.Llevel_46_80086D3C:
/* 8F5926C 80086D3C 02000286 */  lh         $v0, 0x2($s0)
/* 8F59270 80086D40 00000000 */  nop
/* 8F59274 80086D44 1E004010 */  beqz       $v0, .Llevel_46_80086DC0
/* 8F59278 80086D48 01000224 */   addiu     $v0, $zero, 0x1
/* 8F5927C 80086D4C 480022A2 */  sb         $v0, 0x48($s1)
/* 8F59280 80086D50 48003026 */  addiu      $s0, $s1, 0x48
/* 8F59284 80086D54 21200002 */  addu       $a0, $s0, $zero
/* 8F59288 80086D58 0780063C */  lui        $a2, %hi(D_8006D088)
/* 8F5928C 80086D5C 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 8F59290 80086D60 EDED000C */  jal        func_8003B7B4
/* 8F59294 80086D64 01000524 */   addiu     $a1, $zero, 0x1
/* 8F59298 80086D68 21200002 */  addu       $a0, $s0, $zero
/* 8F5929C 80086D6C 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8F592A0 80086D70 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8F592A4 80086D74 EDED000C */  jal        func_8003B7B4
/* 8F592A8 80086D78 01000524 */   addiu     $a1, $zero, 0x1
/* 8F592AC 80086D7C 6E1B0208 */  j          .Llevel_46_80086DB8
/* 8F592B0 80086D80 00000000 */   nop
.Llevel_46_80086D84:
/* 8F592B4 80086D84 00000486 */  lh         $a0, 0x0($s0)
/* 8F592B8 80086D88 CF87000C */  jal        func_80021F3C
/* 8F592BC 80086D8C 00000000 */   nop
/* 8F592C0 80086D90 21184000 */  addu       $v1, $v0, $zero
/* 8F592C4 80086D94 03120300 */  sra        $v0, $v1, 8
/* 8F592C8 80086D98 FF004230 */  andi       $v0, $v0, 0xFF
/* 8F592CC 80086D9C 08004014 */  bnez       $v0, .Llevel_46_80086DC0
/* 8F592D0 80086DA0 0F006230 */   andi      $v0, $v1, 0xF
/* 8F592D4 80086DA4 06004010 */  beqz       $v0, .Llevel_46_80086DC0
/* 8F592D8 80086DA8 FC000524 */   addiu     $a1, $zero, 0xFC
/* 8F592DC 80086DAC 00000486 */  lh         $a0, 0x0($s0)
/* 8F592E0 80086DB0 B687000C */  jal        func_80021ED8
/* 8F592E4 80086DB4 21300000 */   addu      $a2, $zero, $zero
.Llevel_46_80086DB8:
/* 8F592E8 80086DB8 C656010C */  jal        func_80055B18
/* 8F592EC 80086DBC 21202002 */   addu      $a0, $s1, $zero
.Llevel_46_80086DC0:
/* 8F592F0 80086DC0 1800BF8F */  lw         $ra, 0x18($sp)
/* 8F592F4 80086DC4 1400B18F */  lw         $s1, 0x14($sp)
/* 8F592F8 80086DC8 1000B08F */  lw         $s0, 0x10($sp)
/* 8F592FC 80086DCC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8F59300 80086DD0 0800E003 */  jr         $ra
/* 8F59304 80086DD4 00000000 */   nop
.size MobyUpdate_956_level_46, . - MobyUpdate_956_level_46
