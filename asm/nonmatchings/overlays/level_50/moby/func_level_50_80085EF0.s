.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_265_level_50
/* 95DA420 80085EF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95DA424 80085EF4 1000BFAF */  sw         $ra, 0x10($sp)
/* 95DA428 80085EF8 0000858C */  lw         $a1, 0x0($a0)
/* 95DA42C 80085EFC 00000000 */  nop
/* 95DA430 80085F00 0000A28C */  lw         $v0, 0x0($a1)
/* 95DA434 80085F04 48008390 */  lbu        $v1, 0x48($a0)
/* 95DA438 80085F08 48004290 */  lbu        $v0, 0x48($v0)
/* 95DA43C 80085F0C 00000000 */  nop
/* 95DA440 80085F10 05006210 */  beq        $v1, $v0, .Llevel_50_80085F28
/* 95DA444 80085F14 00000000 */   nop
/* 95DA448 80085F18 C656010C */  jal        func_80055B18
/* 95DA44C 80085F1C 00000000 */   nop
/* 95DA450 80085F20 E4170208 */  j          .Llevel_50_80085F90
/* 95DA454 80085F24 00000000 */   nop
.Llevel_50_80085F28:
/* 95DA458 80085F28 3C008290 */  lbu        $v0, 0x3C($a0)
/* 95DA45C 80085F2C 00000000 */  nop
/* 95DA460 80085F30 06004014 */  bnez       $v0, .Llevel_50_80085F4C
/* 95DA464 80085F34 00000000 */   nop
/* 95DA468 80085F38 46008290 */  lbu        $v0, 0x46($a0)
/* 95DA46C 80085F3C 00000000 */  nop
/* 95DA470 80085F40 06004224 */  addiu      $v0, $v0, 0x6
/* 95DA474 80085F44 E4170208 */  j          .Llevel_50_80085F90
/* 95DA478 80085F48 460082A0 */   sb        $v0, 0x46($a0)
.Llevel_50_80085F4C:
/* 95DA47C 80085F4C 0500A290 */  lbu        $v0, 0x5($a1)
/* 95DA480 80085F50 0780033C */  lui        $v1, %hi(D_8006C644)
/* 95DA484 80085F54 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 95DA488 80085F58 00000000 */  nop
/* 95DA48C 80085F5C 21104300 */  addu       $v0, $v0, $v1
/* 95DA490 80085F60 C0100200 */  sll        $v0, $v0, 3
/* 95DA494 80085F64 F8014230 */  andi       $v0, $v0, 0x1F8
/* 95DA498 80085F68 0680013C */  lui        $at, %hi(D_80065920)
/* 95DA49C 80085F6C 21082200 */  addu       $at, $at, $v0
/* 95DA4A0 80085F70 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 95DA4A4 80085F74 00000000 */  nop
/* 95DA4A8 80085F78 40100300 */  sll        $v0, $v1, 1
/* 95DA4AC 80085F7C 21104300 */  addu       $v0, $v0, $v1
/* 95DA4B0 80085F80 0400A390 */  lbu        $v1, 0x4($a1)
/* 95DA4B4 80085F84 43120200 */  sra        $v0, $v0, 9
/* 95DA4B8 80085F88 21186200 */  addu       $v1, $v1, $v0
/* 95DA4BC 80085F8C 460083A0 */  sb         $v1, 0x46($a0)
.Llevel_50_80085F90:
/* 95DA4C0 80085F90 1000BF8F */  lw         $ra, 0x10($sp)
/* 95DA4C4 80085F94 1800BD27 */  addiu      $sp, $sp, 0x18
/* 95DA4C8 80085F98 0800E003 */  jr         $ra
/* 95DA4CC 80085F9C 00000000 */   nop
.size MobyUpdate_265_level_50, . - MobyUpdate_265_level_50
