.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_356_level_26
/* 6233BF8 80083EC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6233BFC 80083ECC 1000BFAF */  sw         $ra, 0x10($sp)
/* 6233C00 80083ED0 48008390 */  lbu        $v1, 0x48($a0)
/* 6233C04 80083ED4 01000224 */  addiu      $v0, $zero, 0x1
/* 6233C08 80083ED8 17006210 */  beq        $v1, $v0, .Llevel_26_80083F38
/* 6233C0C 80083EDC 02006228 */   slti      $v0, $v1, 0x2
/* 6233C10 80083EE0 05004010 */  beqz       $v0, .Llevel_26_80083EF8
/* 6233C14 80083EE4 00000000 */   nop
/* 6233C18 80083EE8 08006010 */  beqz       $v1, .Llevel_26_80083F0C
/* 6233C1C 80083EEC 00000000 */   nop
/* 6233C20 80083EF0 E00F0208 */  j          .Llevel_26_80083F80
/* 6233C24 80083EF4 00000000 */   nop
.Llevel_26_80083EF8:
/* 6233C28 80083EF8 02000224 */  addiu      $v0, $zero, 0x2
/* 6233C2C 80083EFC 16006210 */  beq        $v1, $v0, .Llevel_26_80083F58
/* 6233C30 80083F00 00000000 */   nop
/* 6233C34 80083F04 E00F0208 */  j          .Llevel_26_80083F80
/* 6233C38 80083F08 00000000 */   nop
.Llevel_26_80083F0C:
/* 6233C3C 80083F0C 4F008290 */  lbu        $v0, 0x4F($a0)
/* 6233C40 80083F10 00000000 */  nop
/* 6233C44 80083F14 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 6233C48 80083F18 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 6233C4C 80083F1C FF004230 */  andi       $v0, $v0, 0xFF
/* 6233C50 80083F20 2100422C */  sltiu      $v0, $v0, 0x21
/* 6233C54 80083F24 16004010 */  beqz       $v0, .Llevel_26_80083F80
/* 6233C58 80083F28 01000224 */   addiu     $v0, $zero, 0x1
/* 6233C5C 80083F2C 4F0080A0 */  sb         $zero, 0x4F($a0)
/* 6233C60 80083F30 E00F0208 */  j          .Llevel_26_80083F80
/* 6233C64 80083F34 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_26_80083F38:
/* 6233C68 80083F38 49008290 */  lbu        $v0, 0x49($a0)
/* 6233C6C 80083F3C 00000000 */  nop
/* 6233C70 80083F40 0F004010 */  beqz       $v0, .Llevel_26_80083F80
/* 6233C74 80083F44 21000224 */   addiu     $v0, $zero, 0x21
/* 6233C78 80083F48 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 6233C7C 80083F4C 02000224 */  addiu      $v0, $zero, 0x2
/* 6233C80 80083F50 E00F0208 */  j          .Llevel_26_80083F80
/* 6233C84 80083F54 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_26_80083F58:
/* 6233C88 80083F58 4F008290 */  lbu        $v0, 0x4F($a0)
/* 6233C8C 80083F5C 00000000 */  nop
/* 6233C90 80083F60 08004224 */  addiu      $v0, $v0, 0x8
/* 6233C94 80083F64 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 6233C98 80083F68 FF004230 */  andi       $v0, $v0, 0xFF
/* 6233C9C 80083F6C 7F00422C */  sltiu      $v0, $v0, 0x7F
/* 6233CA0 80083F70 03004014 */  bnez       $v0, .Llevel_26_80083F80
/* 6233CA4 80083F74 00000000 */   nop
/* 6233CA8 80083F78 C656010C */  jal        func_80055B18
/* 6233CAC 80083F7C 00000000 */   nop
.Llevel_26_80083F80:
/* 6233CB0 80083F80 1000BF8F */  lw         $ra, 0x10($sp)
/* 6233CB4 80083F84 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6233CB8 80083F88 0800E003 */  jr         $ra
/* 6233CBC 80083F8C 00000000 */   nop
.size MobyUpdate_356_level_26, . - MobyUpdate_356_level_26
