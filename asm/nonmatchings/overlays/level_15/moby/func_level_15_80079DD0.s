.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_15
/* 49B4300 80079DD0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 49B4304 80079DD4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 49B4308 80079DD8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 49B430C 80079DDC 1000B0AF */  sw         $s0, 0x10($sp)
/* 49B4310 80079DE0 21808000 */  addu       $s0, $a0, $zero
/* 49B4314 80079DE4 1800BFAF */  sw         $ra, 0x18($sp)
/* 49B4318 80079DE8 1400B1AF */  sw         $s1, 0x14($sp)
/* 49B431C 80079DEC 0000118E */  lw         $s1, 0x0($s0)
/* 49B4320 80079DF0 0E004014 */  bnez       $v0, .Llevel_15_80079E2C
/* 49B4324 80079DF4 20020224 */   addiu     $v0, $zero, 0x220
/* 49B4328 80079DF8 36000386 */  lh         $v1, 0x36($s0)
/* 49B432C 80079DFC 00000000 */  nop
/* 49B4330 80079E00 0A006214 */  bne        $v1, $v0, .Llevel_15_80079E2C
/* 49B4334 80079E04 00000000 */   nop
/* 49B4338 80079E08 0780023C */  lui        $v0, %hi(D_8007159A)
/* 49B433C 80079E0C 9A154290 */  lbu        $v0, %lo(D_8007159A)($v0)
/* 49B4340 80079E10 00000000 */  nop
/* 49B4344 80079E14 05004014 */  bnez       $v0, .Llevel_15_80079E2C
/* 49B4348 80079E18 00000000 */   nop
/* 49B434C 80079E1C C656010C */  jal        func_80055B18
/* 49B4350 80079E20 00000000 */   nop
/* 49B4354 80079E24 BEE70108 */  j          .Llevel_15_80079EF8
/* 49B4358 80079E28 00000000 */   nop
.Llevel_15_80079E2C:
/* 49B435C 80079E2C 48000392 */  lbu        $v1, 0x48($s0)
/* 49B4360 80079E30 00000000 */  nop
/* 49B4364 80079E34 05006010 */  beqz       $v1, .Llevel_15_80079E4C
/* 49B4368 80079E38 01000224 */   addiu     $v0, $zero, 0x1
/* 49B436C 80079E3C 27006210 */  beq        $v1, $v0, .Llevel_15_80079EDC
/* 49B4370 80079E40 00000000 */   nop
/* 49B4374 80079E44 BEE70108 */  j          .Llevel_15_80079EF8
/* 49B4378 80079E48 00000000 */   nop
.Llevel_15_80079E4C:
/* 49B437C 80079E4C 02002392 */  lbu        $v1, 0x2($s1)
/* 49B4380 80079E50 02000224 */  addiu      $v0, $zero, 0x2
/* 49B4384 80079E54 02006214 */  bne        $v1, $v0, .Llevel_15_80079E60
/* 49B4388 80079E58 00000000 */   nop
/* 49B438C 80079E5C 050020A2 */  sb         $zero, 0x5($s1)
.Llevel_15_80079E60:
/* 49B4390 80079E60 05002292 */  lbu        $v0, 0x5($s1)
/* 49B4394 80079E64 00000000 */  nop
/* 49B4398 80079E68 10004014 */  bnez       $v0, .Llevel_15_80079EAC
/* 49B439C 80079E6C 21200002 */   addu      $a0, $s0, $zero
/* 49B43A0 80079E70 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 49B43A4 80079E74 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 49B43A8 80079E78 00000000 */  nop
/* 49B43AC 80079E7C 10004230 */  andi       $v0, $v0, 0x10
/* 49B43B0 80079E80 06004010 */  beqz       $v0, .Llevel_15_80079E9C
/* 49B43B4 80079E84 00000000 */   nop
/* 49B43B8 80079E88 EFDE000C */  jal        func_80037BBC
/* 49B43BC 80079E8C 21280000 */   addu      $a1, $zero, $zero
/* 49B43C0 80079E90 0A004014 */  bnez       $v0, .Llevel_15_80079EBC
/* 49B43C4 80079E94 21200002 */   addu      $a0, $s0, $zero
/* 49B43C8 80079E98 070020A2 */  sb         $zero, 0x7($s1)
.Llevel_15_80079E9C:
/* 49B43CC 80079E9C 05002292 */  lbu        $v0, 0x5($s1)
/* 49B43D0 80079EA0 00000000 */  nop
/* 49B43D4 80079EA4 14004010 */  beqz       $v0, .Llevel_15_80079EF8
/* 49B43D8 80079EA8 21200002 */   addu      $a0, $s0, $zero
.Llevel_15_80079EAC:
/* 49B43DC 80079EAC EFDE000C */  jal        func_80037BBC
/* 49B43E0 80079EB0 21280000 */   addu      $a1, $zero, $zero
/* 49B43E4 80079EB4 07004010 */  beqz       $v0, .Llevel_15_80079ED4
/* 49B43E8 80079EB8 21200002 */   addu      $a0, $s0, $zero
.Llevel_15_80079EBC:
/* 49B43EC 80079EBC 21280000 */  addu       $a1, $zero, $zero
/* 49B43F0 80079EC0 B944010C */  jal        func_800512E4
/* 49B43F4 80079EC4 21300000 */   addu      $a2, $zero, $zero
/* 49B43F8 80079EC8 01000224 */  addiu      $v0, $zero, 0x1
/* 49B43FC 80079ECC BEE70108 */  j          .Llevel_15_80079EF8
/* 49B4400 80079ED0 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_15_80079ED4:
/* 49B4404 80079ED4 BEE70108 */  j          .Llevel_15_80079EF8
/* 49B4408 80079ED8 070020A2 */   sb        $zero, 0x7($s1)
.Llevel_15_80079EDC:
/* 49B440C 80079EDC 0780023C */  lui        $v0, %hi(D_8006E344)
/* 49B4410 80079EE0 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 49B4414 80079EE4 00000000 */  nop
/* 49B4418 80079EE8 03004310 */  beq        $v0, $v1, .Llevel_15_80079EF8
/* 49B441C 80079EEC 00000000 */   nop
/* 49B4420 80079EF0 200023AE */  sw         $v1, 0x20($s1)
/* 49B4424 80079EF4 480000A2 */  sb         $zero, 0x48($s0)
.Llevel_15_80079EF8:
/* 49B4428 80079EF8 1800BF8F */  lw         $ra, 0x18($sp)
/* 49B442C 80079EFC 1400B18F */  lw         $s1, 0x14($sp)
/* 49B4430 80079F00 1000B08F */  lw         $s0, 0x10($sp)
/* 49B4434 80079F04 2000BD27 */  addiu      $sp, $sp, 0x20
/* 49B4438 80079F08 0800E003 */  jr         $ra
/* 49B443C 80079F0C 00000000 */   nop
.size MobyUpdate_408_level_15, . - MobyUpdate_408_level_15
