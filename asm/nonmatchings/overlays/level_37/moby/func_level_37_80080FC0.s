.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_65_level_37
/* 7AACCF0 80080FC0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7AACCF4 80080FC4 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AACCF8 80080FC8 21888000 */  addu       $s1, $a0, $zero
/* 7AACCFC 80080FCC 1800BFAF */  sw         $ra, 0x18($sp)
/* 7AACD00 80080FD0 1000B0AF */  sw         $s0, 0x10($sp)
/* 7AACD04 80080FD4 3A002392 */  lbu        $v1, 0x3A($s1)
/* 7AACD08 80080FD8 00000000 */  nop
/* 7AACD0C 80080FDC 40100300 */  sll        $v0, $v1, 1
/* 7AACD10 80080FE0 21104300 */  addu       $v0, $v0, $v1
/* 7AACD14 80080FE4 80100200 */  sll        $v0, $v0, 2
/* 7AACD18 80080FE8 23104300 */  subu       $v0, $v0, $v1
/* 7AACD1C 80080FEC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7AACD20 80080FF0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7AACD24 80080FF4 C0100200 */  sll        $v0, $v0, 3
/* 7AACD28 80080FF8 21806200 */  addu       $s0, $v1, $v0
/* 7AACD2C 80080FFC 3D000392 */  lbu        $v1, 0x3D($s0)
/* 7AACD30 80081000 05000224 */  addiu      $v0, $zero, 0x5
/* 7AACD34 80081004 05006210 */  beq        $v1, $v0, .Llevel_37_8008101C
/* 7AACD38 80081008 00000000 */   nop
/* 7AACD3C 8008100C C656010C */  jal        func_80055B18
/* 7AACD40 80081010 00000000 */   nop
/* 7AACD44 80081014 13040208 */  j          .Llevel_37_8008104C
/* 7AACD48 80081018 00000000 */   nop
.Llevel_37_8008101C:
/* 7AACD4C 8008101C 0C002426 */  addiu      $a0, $s1, 0xC
/* 7AACD50 80081020 5E3C010C */  jal        func_8004F178
/* 7AACD54 80081024 0C000526 */   addiu     $a1, $s0, 0xC
/* 7AACD58 80081028 44000292 */  lbu        $v0, 0x44($s0)
/* 7AACD5C 8008102C 00000000 */  nop
/* 7AACD60 80081030 440022A2 */  sb         $v0, 0x44($s1)
/* 7AACD64 80081034 45000292 */  lbu        $v0, 0x45($s0)
/* 7AACD68 80081038 00000000 */  nop
/* 7AACD6C 8008103C 450022A2 */  sb         $v0, 0x45($s1)
/* 7AACD70 80081040 46000292 */  lbu        $v0, 0x46($s0)
/* 7AACD74 80081044 00000000 */  nop
/* 7AACD78 80081048 460022A2 */  sb         $v0, 0x46($s1)
.Llevel_37_8008104C:
/* 7AACD7C 8008104C 1800BF8F */  lw         $ra, 0x18($sp)
/* 7AACD80 80081050 1400B18F */  lw         $s1, 0x14($sp)
/* 7AACD84 80081054 1000B08F */  lw         $s0, 0x10($sp)
/* 7AACD88 80081058 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7AACD8C 8008105C 0800E003 */  jr         $ra
/* 7AACD90 80081060 00000000 */   nop
.size MobyUpdate_65_level_37, . - MobyUpdate_65_level_37
