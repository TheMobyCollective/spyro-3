.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_393_level_32
/* 6DED3F0 80085EC0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6DED3F4 80085EC4 2800B0AF */  sw         $s0, 0x28($sp)
/* 6DED3F8 80085EC8 21808000 */  addu       $s0, $a0, $zero
/* 6DED3FC 80085ECC 3400BFAF */  sw         $ra, 0x34($sp)
/* 6DED400 80085ED0 3000B2AF */  sw         $s2, 0x30($sp)
/* 6DED404 80085ED4 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 6DED408 80085ED8 48000392 */  lbu        $v1, 0x48($s0)
/* 6DED40C 80085EDC 0000118E */  lw         $s1, 0x0($s0)
/* 6DED410 80085EE0 05006010 */  beqz       $v1, .Llevel_32_80085EF8
/* 6DED414 80085EE4 01000224 */   addiu     $v0, $zero, 0x1
/* 6DED418 80085EE8 5A006210 */  beq        $v1, $v0, .Llevel_32_80086054
/* 6DED41C 80085EEC 00000000 */   nop
/* 6DED420 80085EF0 17180208 */  j          .Llevel_32_8008605C
/* 6DED424 80085EF4 00000000 */   nop
.Llevel_32_80085EF8:
/* 6DED428 80085EF8 0C00028E */  lw         $v0, 0xC($s0)
/* 6DED42C 80085EFC 00000000 */  nop
/* 6DED430 80085F00 00044228 */  slti       $v0, $v0, 0x400
/* 6DED434 80085F04 53004014 */  bnez       $v0, .Llevel_32_80086054
/* 6DED438 80085F08 00000000 */   nop
/* 6DED43C 80085F0C 1000028E */  lw         $v0, 0x10($s0)
/* 6DED440 80085F10 00000000 */  nop
/* 6DED444 80085F14 00044228 */  slti       $v0, $v0, 0x400
/* 6DED448 80085F18 4E004014 */  bnez       $v0, .Llevel_32_80086054
/* 6DED44C 80085F1C 00000000 */   nop
/* 6DED450 80085F20 1400028E */  lw         $v0, 0x14($s0)
/* 6DED454 80085F24 00000000 */  nop
/* 6DED458 80085F28 00044228 */  slti       $v0, $v0, 0x400
/* 6DED45C 80085F2C 49004014 */  bnez       $v0, .Llevel_32_80086054
/* 6DED460 80085F30 1800A427 */   addiu     $a0, $sp, 0x18
/* 6DED464 80085F34 0C001226 */  addiu      $s2, $s0, 0xC
/* 6DED468 80085F38 5E3C010C */  jal        func_8004F178
/* 6DED46C 80085F3C 21284002 */   addu      $a1, $s2, $zero
/* 6DED470 80085F40 06002292 */  lbu        $v0, 0x6($s1)
/* 6DED474 80085F44 00000000 */  nop
/* 6DED478 80085F48 40100200 */  sll        $v0, $v0, 1
/* 6DED47C 80085F4C 0680013C */  lui        $at, %hi(D_80065920)
/* 6DED480 80085F50 21082200 */  addu       $at, $at, $v0
/* 6DED484 80085F54 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DED488 80085F58 0000228E */  lw         $v0, 0x0($s1)
/* 6DED48C 80085F5C 00000000 */  nop
/* 6DED490 80085F60 18006200 */  mult       $v1, $v0
/* 6DED494 80085F64 0C00028E */  lw         $v0, 0xC($s0)
/* 6DED498 80085F68 12400000 */  mflo       $t0
/* 6DED49C 80085F6C 031B0800 */  sra        $v1, $t0, 12
/* 6DED4A0 80085F70 21104300 */  addu       $v0, $v0, $v1
/* 6DED4A4 80085F74 0C0002AE */  sw         $v0, 0xC($s0)
/* 6DED4A8 80085F78 06002292 */  lbu        $v0, 0x6($s1)
/* 6DED4AC 80085F7C 00000000 */  nop
/* 6DED4B0 80085F80 40100200 */  sll        $v0, $v0, 1
/* 6DED4B4 80085F84 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DED4B8 80085F88 21082200 */  addu       $at, $at, $v0
/* 6DED4BC 80085F8C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DED4C0 80085F90 0000228E */  lw         $v0, 0x0($s1)
/* 6DED4C4 80085F94 00000000 */  nop
/* 6DED4C8 80085F98 18006200 */  mult       $v1, $v0
/* 6DED4CC 80085F9C 1000028E */  lw         $v0, 0x10($s0)
/* 6DED4D0 80085FA0 12400000 */  mflo       $t0
/* 6DED4D4 80085FA4 031B0800 */  sra        $v1, $t0, 12
/* 6DED4D8 80085FA8 21104300 */  addu       $v0, $v0, $v1
/* 6DED4DC 80085FAC 100002AE */  sw         $v0, 0x10($s0)
/* 6DED4E0 80085FB0 04002386 */  lh         $v1, 0x4($s1)
/* 6DED4E4 80085FB4 1400028E */  lw         $v0, 0x14($s0)
/* 6DED4E8 80085FB8 07002426 */  addiu      $a0, $s1, 0x7
/* 6DED4EC 80085FBC 21104300 */  addu       $v0, $v0, $v1
/* 6DED4F0 80085FC0 140002AE */  sw         $v0, 0x14($s0)
/* 6DED4F4 80085FC4 04002296 */  lhu        $v0, 0x4($s1)
/* 6DED4F8 80085FC8 0A002392 */  lbu        $v1, 0xA($s1)
/* 6DED4FC 80085FCC FEFF4224 */  addiu      $v0, $v0, -0x2
/* 6DED500 80085FD0 040022A6 */  sh         $v0, 0x4($s1)
/* 6DED504 80085FD4 46000292 */  lbu        $v0, 0x46($s0)
/* 6DED508 80085FD8 01000524 */  addiu      $a1, $zero, 0x1
/* 6DED50C 80085FDC 21104300 */  addu       $v0, $v0, $v1
/* 6DED510 80085FE0 69D6000C */  jal        func_800359A4
/* 6DED514 80085FE4 460002A2 */   sb        $v0, 0x46($s0)
/* 6DED518 80085FE8 0B004010 */  beqz       $v0, .Llevel_32_80086018
/* 6DED51C 80085FEC 21204002 */   addu      $a0, $s2, $zero
/* 6DED520 80085FF0 20030524 */  addiu      $a1, $zero, 0x320
/* 6DED524 80085FF4 21300000 */  addu       $a2, $zero, $zero
/* 6DED528 80085FF8 1200023C */  lui        $v0, (0x120000 >> 16)
/* 6DED52C 80085FFC 21380000 */  addu       $a3, $zero, $zero
/* 6DED530 80086000 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DED534 80086004 8C6E000C */  jal        func_8001BA30
/* 6DED538 80086008 1400B0AF */   sw        $s0, 0x14($sp)
/* 6DED53C 8008600C 02004010 */  beqz       $v0, .Llevel_32_80086018
/* 6DED540 80086010 01000224 */   addiu     $v0, $zero, 0x1
/* 6DED544 80086014 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_32_80086018:
/* 6DED548 80086018 0C001126 */  addiu      $s1, $s0, 0xC
/* 6DED54C 8008601C 21202002 */  addu       $a0, $s1, $zero
/* 6DED550 80086020 20030524 */  addiu      $a1, $zero, 0x320
/* 6DED554 80086024 A270000C */  jal        func_8001C288
/* 6DED558 80086028 07000624 */   addiu     $a2, $zero, 0x7
/* 6DED55C 8008602C 02004010 */  beqz       $v0, .Llevel_32_80086038
/* 6DED560 80086030 01000224 */   addiu     $v0, $zero, 0x1
/* 6DED564 80086034 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_32_80086038:
/* 6DED568 80086038 1800A427 */  addiu      $a0, $sp, 0x18
/* 6DED56C 8008603C DA60000C */  jal        func_80018368
/* 6DED570 80086040 21282002 */   addu      $a1, $s1, $zero
/* 6DED574 80086044 05004010 */  beqz       $v0, .Llevel_32_8008605C
/* 6DED578 80086048 01000224 */   addiu     $v0, $zero, 0x1
/* 6DED57C 8008604C 17180208 */  j          .Llevel_32_8008605C
/* 6DED580 80086050 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_32_80086054:
/* 6DED584 80086054 C656010C */  jal        func_80055B18
/* 6DED588 80086058 21200002 */   addu      $a0, $s0, $zero
.Llevel_32_8008605C:
/* 6DED58C 8008605C 3400BF8F */  lw         $ra, 0x34($sp)
/* 6DED590 80086060 3000B28F */  lw         $s2, 0x30($sp)
/* 6DED594 80086064 2C00B18F */  lw         $s1, 0x2C($sp)
/* 6DED598 80086068 2800B08F */  lw         $s0, 0x28($sp)
/* 6DED59C 8008606C 3800BD27 */  addiu      $sp, $sp, 0x38
/* 6DED5A0 80086070 0800E003 */  jr         $ra
/* 6DED5A4 80086074 00000000 */   nop
.size MobyUpdate_393_level_32, . - MobyUpdate_393_level_32
