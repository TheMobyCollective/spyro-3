.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_18
/* 4EA9FBC 8007728C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4EA9FC0 80077290 2000B0AF */  sw         $s0, 0x20($sp)
/* 4EA9FC4 80077294 21808000 */  addu       $s0, $a0, $zero
/* 4EA9FC8 80077298 2800BFAF */  sw         $ra, 0x28($sp)
/* 4EA9FCC 8007729C 2400B1AF */  sw         $s1, 0x24($sp)
/* 4EA9FD0 800772A0 0000118E */  lw         $s1, 0x0($s0)
/* 4EA9FD4 800772A4 02000524 */  addiu      $a1, $zero, 0x2
/* 4EA9FD8 800772A8 69D6000C */  jal        func_800359A4
/* 4EA9FDC 800772AC 21202002 */   addu      $a0, $s1, $zero
/* 4EA9FE0 800772B0 03004010 */  beqz       $v0, .Llevel_18_800772C0
/* 4EA9FE4 800772B4 00000000 */   nop
/* 4EA9FE8 800772B8 C656010C */  jal        func_80055B18
/* 4EA9FEC 800772BC 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_800772C0:
/* 4EA9FF0 800772C0 02002392 */  lbu        $v1, 0x2($s1)
/* 4EA9FF4 800772C4 00000000 */  nop
/* 4EA9FF8 800772C8 0E006014 */  bnez       $v1, .Llevel_18_80077304
/* 4EA9FFC 800772CC 01000224 */   addiu     $v0, $zero, 0x1
/* 4EAA000 800772D0 00002286 */  lh         $v0, 0x0($s1)
/* 4EAA004 800772D4 00000000 */  nop
/* 4EAA008 800772D8 21184000 */  addu       $v1, $v0, $zero
/* 4EAA00C 800772DC 08004228 */  slti       $v0, $v0, 0x8
/* 4EAA010 800772E0 04004010 */  beqz       $v0, .Llevel_18_800772F4
/* 4EAA014 800772E4 00110300 */   sll       $v0, $v1, 4
/* 4EAA018 800772E8 540002A2 */  sb         $v0, 0x54($s0)
/* 4EAA01C 800772EC DEDC0108 */  j          .Llevel_18_80077378
/* 4EAA020 800772F0 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_18_800772F4:
/* 4EAA024 800772F4 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 4EAA028 800772F8 00110200 */  sll        $v0, $v0, 4
/* 4EAA02C 800772FC DEDC0108 */  j          .Llevel_18_80077378
/* 4EAA030 80077300 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_18_80077304:
/* 4EAA034 80077304 0E006214 */  bne        $v1, $v0, .Llevel_18_80077340
/* 4EAA038 80077308 02000224 */   addiu     $v0, $zero, 0x2
/* 4EAA03C 8007730C 00002286 */  lh         $v0, 0x0($s1)
/* 4EAA040 80077310 00000000 */  nop
/* 4EAA044 80077314 21184000 */  addu       $v1, $v0, $zero
/* 4EAA048 80077318 08004228 */  slti       $v0, $v0, 0x8
/* 4EAA04C 8007731C 04004010 */  beqz       $v0, .Llevel_18_80077330
/* 4EAA050 80077320 00110300 */   sll       $v0, $v1, 4
/* 4EAA054 80077324 550002A2 */  sb         $v0, 0x55($s0)
/* 4EAA058 80077328 DEDC0108 */  j          .Llevel_18_80077378
/* 4EAA05C 8007732C 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_18_80077330:
/* 4EAA060 80077330 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 4EAA064 80077334 00110200 */  sll        $v0, $v0, 4
/* 4EAA068 80077338 DEDC0108 */  j          .Llevel_18_80077378
/* 4EAA06C 8007733C 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_18_80077340:
/* 4EAA070 80077340 0D006214 */  bne        $v1, $v0, .Llevel_18_80077378
/* 4EAA074 80077344 00000000 */   nop
/* 4EAA078 80077348 54000292 */  lbu        $v0, 0x54($s0)
/* 4EAA07C 8007734C 56000392 */  lbu        $v1, 0x56($s0)
/* 4EAA080 80077350 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 4EAA084 80077354 540002A2 */  sb         $v0, 0x54($s0)
/* 4EAA088 80077358 55000292 */  lbu        $v0, 0x55($s0)
/* 4EAA08C 8007735C F8FF6324 */  addiu      $v1, $v1, -0x8
/* 4EAA090 80077360 560003A2 */  sb         $v1, 0x56($s0)
/* 4EAA094 80077364 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 4EAA098 80077368 550002A2 */  sb         $v0, 0x55($s0)
/* 4EAA09C 8007736C 00002296 */  lhu        $v0, 0x0($s1)
/* 4EAA0A0 80077370 00000000 */  nop
/* 4EAA0A4 80077374 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_18_80077378:
/* 4EAA0A8 80077378 03002292 */  lbu        $v0, 0x3($s1)
/* 4EAA0AC 8007737C 00000000 */  nop
/* 4EAA0B0 80077380 06004014 */  bnez       $v0, .Llevel_18_8007739C
/* 4EAA0B4 80077384 00000000 */   nop
/* 4EAA0B8 80077388 00002292 */  lbu        $v0, 0x0($s1)
/* 4EAA0BC 8007738C 00000000 */  nop
/* 4EAA0C0 80077390 40100200 */  sll        $v0, $v0, 1
/* 4EAA0C4 80077394 EBDC0108 */  j          .Llevel_18_800773AC
/* 4EAA0C8 80077398 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_18_8007739C:
/* 4EAA0CC 8007739C 00002292 */  lbu        $v0, 0x0($s1)
/* 4EAA0D0 800773A0 00000000 */  nop
/* 4EAA0D4 800773A4 80100200 */  sll        $v0, $v0, 2
/* 4EAA0D8 800773A8 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_18_800773AC:
/* 4EAA0DC 800773AC 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 4EAA0E0 800773B0 2800BF8F */  lw         $ra, 0x28($sp)
/* 4EAA0E4 800773B4 2400B18F */  lw         $s1, 0x24($sp)
/* 4EAA0E8 800773B8 2000B08F */  lw         $s0, 0x20($sp)
/* 4EAA0EC 800773BC 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4EAA0F0 800773C0 0800E003 */  jr         $ra
/* 4EAA0F4 800773C4 00000000 */   nop
.size MobyUpdate_326_level_18, . - MobyUpdate_326_level_18
