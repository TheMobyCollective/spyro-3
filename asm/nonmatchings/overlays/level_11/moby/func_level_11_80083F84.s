.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_356_level_11
/* 3E284B4 80083F84 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3E284B8 80083F88 1000BFAF */  sw         $ra, 0x10($sp)
/* 3E284BC 80083F8C 48008390 */  lbu        $v1, 0x48($a0)
/* 3E284C0 80083F90 01000224 */  addiu      $v0, $zero, 0x1
/* 3E284C4 80083F94 17006210 */  beq        $v1, $v0, .Llevel_11_80083FF4
/* 3E284C8 80083F98 02006228 */   slti      $v0, $v1, 0x2
/* 3E284CC 80083F9C 05004010 */  beqz       $v0, .Llevel_11_80083FB4
/* 3E284D0 80083FA0 00000000 */   nop
/* 3E284D4 80083FA4 08006010 */  beqz       $v1, .Llevel_11_80083FC8
/* 3E284D8 80083FA8 00000000 */   nop
/* 3E284DC 80083FAC 0F100208 */  j          .Llevel_11_8008403C
/* 3E284E0 80083FB0 00000000 */   nop
.Llevel_11_80083FB4:
/* 3E284E4 80083FB4 02000224 */  addiu      $v0, $zero, 0x2
/* 3E284E8 80083FB8 16006210 */  beq        $v1, $v0, .Llevel_11_80084014
/* 3E284EC 80083FBC 00000000 */   nop
/* 3E284F0 80083FC0 0F100208 */  j          .Llevel_11_8008403C
/* 3E284F4 80083FC4 00000000 */   nop
.Llevel_11_80083FC8:
/* 3E284F8 80083FC8 4F008290 */  lbu        $v0, 0x4F($a0)
/* 3E284FC 80083FCC 00000000 */  nop
/* 3E28500 80083FD0 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E28504 80083FD4 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 3E28508 80083FD8 FF004230 */  andi       $v0, $v0, 0xFF
/* 3E2850C 80083FDC 2100422C */  sltiu      $v0, $v0, 0x21
/* 3E28510 80083FE0 16004010 */  beqz       $v0, .Llevel_11_8008403C
/* 3E28514 80083FE4 01000224 */   addiu     $v0, $zero, 0x1
/* 3E28518 80083FE8 4F0080A0 */  sb         $zero, 0x4F($a0)
/* 3E2851C 80083FEC 0F100208 */  j          .Llevel_11_8008403C
/* 3E28520 80083FF0 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_11_80083FF4:
/* 3E28524 80083FF4 49008290 */  lbu        $v0, 0x49($a0)
/* 3E28528 80083FF8 00000000 */  nop
/* 3E2852C 80083FFC 0F004010 */  beqz       $v0, .Llevel_11_8008403C
/* 3E28530 80084000 21000224 */   addiu     $v0, $zero, 0x21
/* 3E28534 80084004 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 3E28538 80084008 02000224 */  addiu      $v0, $zero, 0x2
/* 3E2853C 8008400C 0F100208 */  j          .Llevel_11_8008403C
/* 3E28540 80084010 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_11_80084014:
/* 3E28544 80084014 4F008290 */  lbu        $v0, 0x4F($a0)
/* 3E28548 80084018 00000000 */  nop
/* 3E2854C 8008401C 08004224 */  addiu      $v0, $v0, 0x8
/* 3E28550 80084020 4F0082A0 */  sb         $v0, 0x4F($a0)
/* 3E28554 80084024 FF004230 */  andi       $v0, $v0, 0xFF
/* 3E28558 80084028 7F00422C */  sltiu      $v0, $v0, 0x7F
/* 3E2855C 8008402C 03004014 */  bnez       $v0, .Llevel_11_8008403C
/* 3E28560 80084030 00000000 */   nop
/* 3E28564 80084034 C656010C */  jal        func_80055B18
/* 3E28568 80084038 00000000 */   nop
.Llevel_11_8008403C:
/* 3E2856C 8008403C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3E28570 80084040 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3E28574 80084044 0800E003 */  jr         $ra
/* 3E28578 80084048 00000000 */   nop
.size MobyUpdate_356_level_11, . - MobyUpdate_356_level_11
