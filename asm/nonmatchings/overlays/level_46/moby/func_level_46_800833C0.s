.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_221_level_46
/* 8F558F0 800833C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8F558F4 800833C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 8F558F8 800833C8 21808000 */  addu       $s0, $a0, $zero
/* 8F558FC 800833CC 1400BFAF */  sw         $ra, 0x14($sp)
/* 8F55900 800833D0 48000292 */  lbu        $v0, 0x48($s0)
/* 8F55904 800833D4 00000000 */  nop
/* 8F55908 800833D8 0C004014 */  bnez       $v0, .Llevel_46_8008340C
/* 8F5590C 800833DC 00000000 */   nop
/* 8F55910 800833E0 0780023C */  lui        $v0, %hi(D_8006C770)
/* 8F55914 800833E4 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 8F55918 800833E8 00000000 */  nop
/* 8F5591C 800833EC 0E004010 */  beqz       $v0, .Llevel_46_80083428
/* 8F55920 800833F0 01000224 */   addiu     $v0, $zero, 0x1
/* 8F55924 800833F4 3C000392 */  lbu        $v1, 0x3C($s0)
/* 8F55928 800833F8 00000000 */  nop
/* 8F5592C 800833FC 08006210 */  beq        $v1, $v0, .Llevel_46_80083420
/* 8F55930 80083400 00000000 */   nop
/* 8F55934 80083404 0A0D0208 */  j          .Llevel_46_80083428
/* 8F55938 80083408 00000000 */   nop
.Llevel_46_8008340C:
/* 8F5593C 8008340C 0000048E */  lw         $a0, 0x0($s0)
/* 8F55940 80083410 69D6000C */  jal        func_800359A4
/* 8F55944 80083414 04000524 */   addiu     $a1, $zero, 0x4
/* 8F55948 80083418 03004010 */  beqz       $v0, .Llevel_46_80083428
/* 8F5594C 8008341C 21200002 */   addu      $a0, $s0, $zero
.Llevel_46_80083420:
/* 8F55950 80083420 C656010C */  jal        func_80055B18
/* 8F55954 80083424 00000000 */   nop
.Llevel_46_80083428:
/* 8F55958 80083428 1400BF8F */  lw         $ra, 0x14($sp)
/* 8F5595C 8008342C 1000B08F */  lw         $s0, 0x10($sp)
/* 8F55960 80083430 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8F55964 80083434 0800E003 */  jr         $ra
/* 8F55968 80083438 00000000 */   nop
.size MobyUpdate_221_level_46, . - MobyUpdate_221_level_46
