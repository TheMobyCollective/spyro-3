.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80029CF8
/* 1A4F8 80029CF8 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 1A4FC 80029CFC 5000B2AF */  sw         $s2, 0x50($sp)
/* 1A500 80029D00 21908000 */  addu       $s2, $a0, $zero
/* 1A504 80029D04 5400BFAF */  sw         $ra, 0x54($sp)
/* 1A508 80029D08 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 1A50C 80029D0C 4800B0AF */  sw         $s0, 0x48($sp)
/* 1A510 80029D10 00004286 */  lh         $v0, 0x0($s2)
/* 1A514 80029D14 02004386 */  lh         $v1, 0x2($s2)
/* 1A518 80029D18 3800A2AF */  sw         $v0, 0x38($sp)
/* 1A51C 80029D1C 3C00A3AF */  sw         $v1, 0x3C($sp)
/* 1A520 80029D20 3F004292 */  lbu        $v0, 0x3F($s2)
/* 1A524 80029D24 00000000 */  nop
/* 1A528 80029D28 04004010 */  beqz       $v0, .L80029D3C
/* 1A52C 80029D2C 0A004224 */   addiu     $v0, $v0, 0xA
/* 1A530 80029D30 43100200 */  sra        $v0, $v0, 1
/* 1A534 80029D34 50A70008 */  j          .L80029D40
/* 1A538 80029D38 4000A2AF */   sw        $v0, 0x40($sp)
.L80029D3C:
/* 1A53C 80029D3C 4000A0AF */  sw         $zero, 0x40($sp)
.L80029D40:
/* 1A540 80029D40 21204002 */  addu       $a0, $s2, $zero
/* 1A544 80029D44 3800B127 */  addiu      $s1, $sp, 0x38
/* 1A548 80029D48 21282002 */  addu       $a1, $s1, $zero
/* 1A54C 80029D4C 3C00B027 */  addiu      $s0, $sp, 0x3C
/* 1A550 80029D50 9DA5000C */  jal        func_80029674
/* 1A554 80029D54 21300002 */   addu      $a2, $s0, $zero
/* 1A558 80029D58 21204002 */  addu       $a0, $s2, $zero
/* 1A55C 80029D5C 4000A527 */  addiu      $a1, $sp, 0x40
/* 1A560 80029D60 21302002 */  addu       $a2, $s1, $zero
/* 1A564 80029D64 C2A5000C */  jal        func_80029708
/* 1A568 80029D68 21380002 */   addu      $a3, $s0, $zero
/* 1A56C 80029D6C 3800A58F */  lw         $a1, 0x38($sp)
/* 1A570 80029D70 3C00A78F */  lw         $a3, 0x3C($sp)
/* 1A574 80029D74 F7FFA424 */  addiu      $a0, $a1, -0x9
/* 1A578 80029D78 FAFFE624 */  addiu      $a2, $a3, -0x6
/* 1A57C 80029D7C FCFFE224 */  addiu      $v0, $a3, -0x4
/* 1A580 80029D80 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1A584 80029D84 3C004292 */  lbu        $v0, 0x3C($s2)
/* 1A588 80029D88 0700E724 */  addiu      $a3, $a3, 0x7
/* 1A58C 80029D8C 2128A200 */  addu       $a1, $a1, $v0
/* 1A590 80029D90 927F000C */  jal        func_8001FE48
/* 1A594 80029D94 0900A524 */   addiu     $a1, $a1, 0x9
/* 1A598 80029D98 1000A0AF */  sw         $zero, 0x10($sp)
/* 1A59C 80029D9C 2800448E */  lw         $a0, 0x28($s2)
/* 1A5A0 80029DA0 3800A58F */  lw         $a1, 0x38($sp)
/* 1A5A4 80029DA4 3C00A68F */  lw         $a2, 0x3C($sp)
/* 1A5A8 80029DA8 D2B9000C */  jal        func_8002E748
/* 1A5AC 80029DAC 01000724 */   addiu     $a3, $zero, 0x1
/* 1A5B0 80029DB0 0780023C */  lui        $v0, %hi(D_8006C7D0)
/* 1A5B4 80029DB4 D0C7428C */  lw         $v0, %lo(D_8006C7D0)($v0)
/* 1A5B8 80029DB8 00000000 */  nop
/* 1A5BC 80029DBC 1A004010 */  beqz       $v0, .L80029E28
/* 1A5C0 80029DC0 00000000 */   nop
/* 1A5C4 80029DC4 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 1A5C8 80029DC8 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 1A5CC 80029DCC 00000000 */  nop
/* 1A5D0 80029DD0 80100200 */  sll        $v0, $v0, 2
/* 1A5D4 80029DD4 0780013C */  lui        $at, %hi(D_80069DC4)
/* 1A5D8 80029DD8 21082200 */  addu       $at, $at, $v0
/* 1A5DC 80029DDC C49D258C */  lw         $a1, %lo(D_80069DC4)($at)
/* 1A5E0 80029DE0 DF65010C */  jal        sprintf
/* 1A5E4 80029DE4 1800A427 */   addiu     $a0, $sp, 0x18
/* 1A5E8 80029DE8 ECBA000C */  jal        func_8002EBB0
/* 1A5EC 80029DEC 1800A427 */   addiu     $a0, $sp, 0x18
/* 1A5F0 80029DF0 43100200 */  sra        $v0, $v0, 1
/* 1A5F4 80029DF4 00011024 */  addiu      $s0, $zero, 0x100
/* 1A5F8 80029DF8 23800202 */  subu       $s0, $s0, $v0
/* 1A5FC 80029DFC F7FF0426 */  addiu      $a0, $s0, -0x9
/* 1A600 80029E00 09014524 */  addiu      $a1, $v0, 0x109
/* 1A604 80029E04 B2000624 */  addiu      $a2, $zero, 0xB2
/* 1A608 80029E08 927F000C */  jal        func_8001FE48
/* 1A60C 80029E0C BF000724 */   addiu     $a3, $zero, 0xBF
/* 1A610 80029E10 1800A427 */  addiu      $a0, $sp, 0x18
/* 1A614 80029E14 21280002 */  addu       $a1, $s0, $zero
/* 1A618 80029E18 B4000624 */  addiu      $a2, $zero, 0xB4
/* 1A61C 80029E1C 01000724 */  addiu      $a3, $zero, 0x1
/* 1A620 80029E20 D2B9000C */  jal        func_8002E748
/* 1A624 80029E24 1000A0AF */   sw        $zero, 0x10($sp)
.L80029E28:
/* 1A628 80029E28 3C004292 */  lbu        $v0, 0x3C($s2)
/* 1A62C 80029E2C 5400BF8F */  lw         $ra, 0x54($sp)
/* 1A630 80029E30 5000B28F */  lw         $s2, 0x50($sp)
/* 1A634 80029E34 4C00B18F */  lw         $s1, 0x4C($sp)
/* 1A638 80029E38 4800B08F */  lw         $s0, 0x48($sp)
/* 1A63C 80029E3C 5800BD27 */  addiu      $sp, $sp, 0x58
/* 1A640 80029E40 0800E003 */  jr         $ra
/* 1A644 80029E44 00000000 */   nop
.size func_80029CF8, . - func_80029CF8
