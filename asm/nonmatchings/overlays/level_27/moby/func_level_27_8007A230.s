.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_27_8007A230
/* 63EE760 8007A230 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 63EE764 8007A234 1400B1AF */  sw         $s1, 0x14($sp)
/* 63EE768 8007A238 21888000 */  addu       $s1, $a0, $zero
/* 63EE76C 8007A23C 1800BFAF */  sw         $ra, 0x18($sp)
/* 63EE770 8007A240 1000B0AF */  sw         $s0, 0x10($sp)
/* 63EE774 8007A244 0000308E */  lw         $s0, 0x0($s1)
/* 63EE778 8007A248 00000000 */  nop
/* 63EE77C 8007A24C 0C000292 */  lbu        $v0, 0xC($s0)
/* 63EE780 8007A250 00000000 */  nop
/* 63EE784 8007A254 52004010 */  beqz       $v0, .Llevel_27_8007A3A0
/* 63EE788 8007A258 00000000 */   nop
/* 63EE78C 8007A25C 4D002292 */  lbu        $v0, 0x4D($s1)
/* 63EE790 8007A260 00000000 */  nop
/* 63EE794 8007A264 4E004010 */  beqz       $v0, .Llevel_27_8007A3A0
/* 63EE798 8007A268 00000000 */   nop
/* 63EE79C 8007A26C 00000386 */  lh         $v1, 0x0($s0)
/* 63EE7A0 8007A270 0C00228E */  lw         $v0, 0xC($s1)
/* 63EE7A4 8007A274 00000000 */  nop
/* 63EE7A8 8007A278 21104300 */  addu       $v0, $v0, $v1
/* 63EE7AC 8007A27C 0C0022AE */  sw         $v0, 0xC($s1)
/* 63EE7B0 8007A280 02000386 */  lh         $v1, 0x2($s0)
/* 63EE7B4 8007A284 1000228E */  lw         $v0, 0x10($s1)
/* 63EE7B8 8007A288 00000000 */  nop
/* 63EE7BC 8007A28C 21104300 */  addu       $v0, $v0, $v1
/* 63EE7C0 8007A290 100022AE */  sw         $v0, 0x10($s1)
/* 63EE7C4 8007A294 0D000392 */  lbu        $v1, 0xD($s0)
/* 63EE7C8 8007A298 04000296 */  lhu        $v0, 0x4($s0)
/* 63EE7CC 8007A29C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 63EE7D0 8007A2A0 FBFF4224 */  addiu      $v0, $v0, -0x5
/* 63EE7D4 8007A2A4 0D0003A2 */  sb         $v1, 0xD($s0)
/* 63EE7D8 8007A2A8 FF006330 */  andi       $v1, $v1, 0xFF
/* 63EE7DC 8007A2AC 04006014 */  bnez       $v1, .Llevel_27_8007A2C0
/* 63EE7E0 8007A2B0 040002A6 */   sh        $v0, 0x4($s0)
/* 63EE7E4 8007A2B4 000000A6 */  sh         $zero, 0x0($s0)
/* 63EE7E8 8007A2B8 020000A6 */  sh         $zero, 0x2($s0)
/* 63EE7EC 8007A2BC 040000A6 */  sh         $zero, 0x4($s0)
.Llevel_27_8007A2C0:
/* 63EE7F0 8007A2C0 04000286 */  lh         $v0, 0x4($s0)
/* 63EE7F4 8007A2C4 00000000 */  nop
/* 63EE7F8 8007A2C8 E8FF4228 */  slti       $v0, $v0, -0x18
/* 63EE7FC 8007A2CC 02004010 */  beqz       $v0, .Llevel_27_8007A2D8
/* 63EE800 8007A2D0 E8FF0224 */   addiu     $v0, $zero, -0x18
/* 63EE804 8007A2D4 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_27_8007A2D8:
/* 63EE808 8007A2D8 1000028E */  lw         $v0, 0x10($s0)
/* 63EE80C 8007A2DC 00000000 */  nop
/* 63EE810 8007A2E0 04004014 */  bnez       $v0, .Llevel_27_8007A2F4
/* 63EE814 8007A2E4 00000000 */   nop
/* 63EE818 8007A2E8 46002292 */  lbu        $v0, 0x46($s1)
/* 63EE81C 8007A2EC DDE80108 */  j          .Llevel_27_8007A374
/* 63EE820 8007A2F0 0C004224 */   addiu     $v0, $v0, 0xC
.Llevel_27_8007A2F4:
/* 63EE824 8007A2F4 04000286 */  lh         $v0, 0x4($s0)
/* 63EE828 8007A2F8 00000000 */  nop
/* 63EE82C 8007A2FC 1F004104 */  bgez       $v0, .Llevel_27_8007A37C
/* 63EE830 8007A300 00000000 */   nop
/* 63EE834 8007A304 45002292 */  lbu        $v0, 0x45($s1)
/* 63EE838 8007A308 0E000486 */  lh         $a0, 0xE($s0)
/* 63EE83C 8007A30C 00000000 */  nop
/* 63EE840 8007A310 21184400 */  addu       $v1, $v0, $a0
/* 63EE844 8007A314 20000224 */  addiu      $v0, $zero, 0x20
/* 63EE848 8007A318 03006210 */  beq        $v1, $v0, .Llevel_27_8007A328
/* 63EE84C 8007A31C E0000224 */   addiu     $v0, $zero, 0xE0
/* 63EE850 8007A320 03006214 */  bne        $v1, $v0, .Llevel_27_8007A330
/* 63EE854 8007A324 00000000 */   nop
.Llevel_27_8007A328:
/* 63EE858 8007A328 23100400 */  negu       $v0, $a0
/* 63EE85C 8007A32C 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_27_8007A330:
/* 63EE860 8007A330 45002292 */  lbu        $v0, 0x45($s1)
/* 63EE864 8007A334 0E000392 */  lbu        $v1, 0xE($s0)
/* 63EE868 8007A338 00000000 */  nop
/* 63EE86C 8007A33C 21104300 */  addu       $v0, $v0, $v1
/* 63EE870 8007A340 450022A2 */  sb         $v0, 0x45($s1)
/* 63EE874 8007A344 0E000386 */  lh         $v1, 0xE($s0)
/* 63EE878 8007A348 1000228E */  lw         $v0, 0x10($s1)
/* 63EE87C 8007A34C 00000000 */  nop
/* 63EE880 8007A350 21104300 */  addu       $v0, $v0, $v1
/* 63EE884 8007A354 9171010C */  jal        rand
/* 63EE888 8007A358 100022AE */   sw        $v0, 0x10($s1)
/* 63EE88C 8007A35C 01004230 */  andi       $v0, $v0, 0x1
/* 63EE890 8007A360 05004010 */  beqz       $v0, .Llevel_27_8007A378
/* 63EE894 8007A364 00000000 */   nop
/* 63EE898 8007A368 46002292 */  lbu        $v0, 0x46($s1)
/* 63EE89C 8007A36C 00000000 */  nop
/* 63EE8A0 8007A370 01004224 */  addiu      $v0, $v0, 0x1
.Llevel_27_8007A374:
/* 63EE8A4 8007A374 460022A2 */  sb         $v0, 0x46($s1)
.Llevel_27_8007A378:
/* 63EE8A8 8007A378 04000286 */  lh         $v0, 0x4($s0)
.Llevel_27_8007A37C:
/* 63EE8AC 8007A37C 1400238E */  lw         $v1, 0x14($s1)
/* 63EE8B0 8007A380 00000000 */  nop
/* 63EE8B4 8007A384 21186200 */  addu       $v1, $v1, $v0
/* 63EE8B8 8007A388 140023AE */  sw         $v1, 0x14($s1)
/* 63EE8BC 8007A38C 0C000292 */  lbu        $v0, 0xC($s0)
/* 63EE8C0 8007A390 00000000 */  nop
/* 63EE8C4 8007A394 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 63EE8C8 8007A398 EAE80108 */  j          .Llevel_27_8007A3A8
/* 63EE8CC 8007A39C 0C0002A2 */   sb        $v0, 0xC($s0)
.Llevel_27_8007A3A0:
/* 63EE8D0 8007A3A0 C656010C */  jal        func_80055B18
/* 63EE8D4 8007A3A4 21202002 */   addu      $a0, $s1, $zero
.Llevel_27_8007A3A8:
/* 63EE8D8 8007A3A8 1800BF8F */  lw         $ra, 0x18($sp)
/* 63EE8DC 8007A3AC 1400B18F */  lw         $s1, 0x14($sp)
/* 63EE8E0 8007A3B0 1000B08F */  lw         $s0, 0x10($sp)
/* 63EE8E4 8007A3B4 2000BD27 */  addiu      $sp, $sp, 0x20
/* 63EE8E8 8007A3B8 0800E003 */  jr         $ra
/* 63EE8EC 8007A3BC 00000000 */   nop
.size func_level_27_8007A230, . - func_level_27_8007A230
