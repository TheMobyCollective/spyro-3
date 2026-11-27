.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_356_level_41
/* 8144B94 8007EE64 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8144B98 8007EE68 1000BFAF */  sw         $ra, 0x10($sp)
/* 8144B9C 8007EE6C 48008390 */  lbu        $v1, 0x48($a0)
/* 8144BA0 8007EE70 01000224 */  addiu      $v0, $zero, 0x1
/* 8144BA4 8007EE74 17006210 */  beq        $v1, $v0, .Llevel_41_8007EED4
/* 8144BA8 8007EE78 02006228 */   slti      $v0, $v1, 0x2
/* 8144BAC 8007EE7C 05004010 */  beqz       $v0, .Llevel_41_8007EE94
/* 8144BB0 8007EE80 00000000 */   nop
/* 8144BB4 8007EE84 08006010 */  beqz       $v1, .Llevel_41_8007EEA8
/* 8144BB8 8007EE88 00000000 */   nop
/* 8144BBC 8007EE8C C7FB0108 */  j          .Llevel_41_8007EF1C
/* 8144BC0 8007EE90 00000000 */   nop
.Llevel_41_8007EE94:
/* 8144BC4 8007EE94 02000224 */  addiu      $v0, $zero, 0x2
/* 8144BC8 8007EE98 16006210 */  beq        $v1, $v0, .Llevel_41_8007EEF4
/* 8144BCC 8007EE9C 00000000 */   nop
/* 8144BD0 8007EEA0 C7FB0108 */  j          .Llevel_41_8007EF1C
/* 8144BD4 8007EEA4 00000000 */   nop
.Llevel_41_8007EEA8:
/* 8144BD8 8007EEA8 4F008290 */  lbu        $v0, 0x4F($a0)
/* 8144BDC 8007EEAC 00000000 */  nop
/* 8144BE0 8007EEB0 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 8144BE4 8007EEB4 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 8144BE8 8007EEB8 FF004230 */  andi       $v0, $v0, 0xFF
/* 8144BEC 8007EEBC 2100422C */  sltiu      $v0, $v0, 0x21
/* 8144BF0 8007EEC0 16004010 */  beqz       $v0, .Llevel_41_8007EF1C
/* 8144BF4 8007EEC4 01000224 */   addiu     $v0, $zero, 0x1
/* 8144BF8 8007EEC8 4F0080A0 */  sb         $zero, 0x4F($a0)
/* 8144BFC 8007EECC C7FB0108 */  j          .Llevel_41_8007EF1C
/* 8144C00 8007EED0 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_41_8007EED4:
/* 8144C04 8007EED4 49008290 */  lbu        $v0, 0x49($a0)
/* 8144C08 8007EED8 00000000 */  nop
/* 8144C0C 8007EEDC 0F004010 */  beqz       $v0, .Llevel_41_8007EF1C
/* 8144C10 8007EEE0 21000224 */   addiu     $v0, $zero, 0x21
/* 8144C14 8007EEE4 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 8144C18 8007EEE8 02000224 */  addiu      $v0, $zero, 0x2
/* 8144C1C 8007EEEC C7FB0108 */  j          .Llevel_41_8007EF1C
/* 8144C20 8007EEF0 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_41_8007EEF4:
/* 8144C24 8007EEF4 4F008290 */  lbu        $v0, 0x4F($a0)
/* 8144C28 8007EEF8 00000000 */  nop
/* 8144C2C 8007EEFC 08004224 */  addiu      $v0, $v0, 0x8
/* 8144C30 8007EF00 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 8144C34 8007EF04 FF004230 */  andi       $v0, $v0, 0xFF
/* 8144C38 8007EF08 7F00422C */  sltiu      $v0, $v0, 0x7F
/* 8144C3C 8007EF0C 03004014 */  bnez       $v0, .Llevel_41_8007EF1C
/* 8144C40 8007EF10 00000000 */   nop
/* 8144C44 8007EF14 C656010C */  jal        func_80055B18
/* 8144C48 8007EF18 00000000 */   nop
.Llevel_41_8007EF1C:
/* 8144C4C 8007EF1C 1000BF8F */  lw         $ra, 0x10($sp)
/* 8144C50 8007EF20 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8144C54 8007EF24 0800E003 */  jr         $ra
/* 8144C58 8007EF28 00000000 */   nop
.size MobyUpdate_356_level_41, . - MobyUpdate_356_level_41
