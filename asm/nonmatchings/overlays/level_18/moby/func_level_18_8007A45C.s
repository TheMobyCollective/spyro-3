.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_289_level_18
/* 4EAD18C 8007A45C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EAD190 8007A460 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EAD194 8007A464 21808000 */  addu       $s0, $a0, $zero
/* 4EAD198 8007A468 01000224 */  addiu      $v0, $zero, 0x1
/* 4EAD19C 8007A46C 1800BFAF */  sw         $ra, 0x18($sp)
/* 4EAD1A0 8007A470 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EAD1A4 8007A474 48000392 */  lbu        $v1, 0x48($s0)
/* 4EAD1A8 8007A478 0000048E */  lw         $a0, 0x0($s0)
/* 4EAD1AC 8007A47C 1C006210 */  beq        $v1, $v0, .Llevel_18_8007A4F0
/* 4EAD1B0 8007A480 02006228 */   slti      $v0, $v1, 0x2
/* 4EAD1B4 8007A484 05004010 */  beqz       $v0, .Llevel_18_8007A49C
/* 4EAD1B8 8007A488 00000000 */   nop
/* 4EAD1BC 8007A48C 08006010 */  beqz       $v1, .Llevel_18_8007A4B0
/* 4EAD1C0 8007A490 00000000 */   nop
/* 4EAD1C4 8007A494 74E90108 */  j          .Llevel_18_8007A5D0
/* 4EAD1C8 8007A498 00000000 */   nop
.Llevel_18_8007A49C:
/* 4EAD1CC 8007A49C 02000224 */  addiu      $v0, $zero, 0x2
/* 4EAD1D0 8007A4A0 2F006210 */  beq        $v1, $v0, .Llevel_18_8007A560
/* 4EAD1D4 8007A4A4 FFFF0624 */   addiu     $a2, $zero, -0x1
/* 4EAD1D8 8007A4A8 74E90108 */  j          .Llevel_18_8007A5D0
/* 4EAD1DC 8007A4AC 00000000 */   nop
.Llevel_18_8007A4B0:
/* 4EAD1E0 8007A4B0 0780023C */  lui        $v0, %hi(D_80071599)
/* 4EAD1E4 8007A4B4 99154290 */  lbu        $v0, %lo(D_80071599)($v0)
/* 4EAD1E8 8007A4B8 00000000 */  nop
/* 4EAD1EC 8007A4BC 44004014 */  bnez       $v0, .Llevel_18_8007A5D0
/* 4EAD1F0 8007A4C0 01001124 */   addiu     $s1, $zero, 0x1
/* 4EAD1F4 8007A4C4 050091A0 */  sb         $s1, 0x5($a0)
/* 4EAD1F8 8007A4C8 21200002 */  addu       $a0, $s0, $zero
/* 4EAD1FC 8007A4CC EFDE000C */  jal        func_80037BBC
/* 4EAD200 8007A4D0 09000524 */   addiu     $a1, $zero, 0x9
/* 4EAD204 8007A4D4 3E004010 */  beqz       $v0, .Llevel_18_8007A5D0
/* 4EAD208 8007A4D8 21200002 */   addu      $a0, $s0, $zero
/* 4EAD20C 8007A4DC 21280000 */  addu       $a1, $zero, $zero
/* 4EAD210 8007A4E0 B944010C */  jal        func_800512E4
/* 4EAD214 8007A4E4 21300000 */   addu      $a2, $zero, $zero
/* 4EAD218 8007A4E8 74E90108 */  j          .Llevel_18_8007A5D0
/* 4EAD21C 8007A4EC 480011A2 */   sb        $s1, 0x48($s0)
.Llevel_18_8007A4F0:
/* 4EAD220 8007A4F0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 4EAD224 8007A4F4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 4EAD228 8007A4F8 00000000 */  nop
/* 4EAD22C 8007A4FC 34004310 */  beq        $v0, $v1, .Llevel_18_8007A5D0
/* 4EAD230 8007A500 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 4EAD234 8007A504 3000838C */  lw         $v1, 0x30($a0)
/* 4EAD238 8007A508 00000000 */  nop
/* 4EAD23C 8007A50C 11006210 */  beq        $v1, $v0, .Llevel_18_8007A554
/* 4EAD240 8007A510 01000224 */   addiu     $v0, $zero, 0x1
/* 4EAD244 8007A514 21300000 */  addu       $a2, $zero, $zero
/* 4EAD248 8007A518 0780013C */  lui        $at, %hi(D_80071599)
/* 4EAD24C 8007A51C 991522A0 */  sb         $v0, %lo(D_80071599)($at)
/* 4EAD250 8007A520 3000838C */  lw         $v1, 0x30($a0)
/* 4EAD254 8007A524 98000724 */  addiu      $a3, $zero, 0x98
/* 4EAD258 8007A528 40100300 */  sll        $v0, $v1, 1
/* 4EAD25C 8007A52C 21104300 */  addu       $v0, $v0, $v1
/* 4EAD260 8007A530 80100200 */  sll        $v0, $v0, 2
/* 4EAD264 8007A534 23104300 */  subu       $v0, $v0, $v1
/* 4EAD268 8007A538 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4EAD26C 8007A53C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4EAD270 8007A540 C0100200 */  sll        $v0, $v0, 3
/* 4EAD274 8007A544 21186200 */  addu       $v1, $v1, $v0
/* 4EAD278 8007A548 46006590 */  lbu        $a1, 0x46($v1)
/* 4EAD27C 8007A54C 514F000C */  jal        func_80013D44
/* 4EAD280 8007A550 0C006424 */   addiu     $a0, $v1, 0xC
.Llevel_18_8007A554:
/* 4EAD284 8007A554 02000224 */  addiu      $v0, $zero, 0x2
/* 4EAD288 8007A558 74E90108 */  j          .Llevel_18_8007A5D0
/* 4EAD28C 8007A55C 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_18_8007A560:
/* 4EAD290 8007A560 3000828C */  lw         $v0, 0x30($a0)
/* 4EAD294 8007A564 00000000 */  nop
/* 4EAD298 8007A568 0F004610 */  beq        $v0, $a2, .Llevel_18_8007A5A8
/* 4EAD29C 8007A56C 00000000 */   nop
/* 4EAD2A0 8007A570 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4EAD2A4 8007A574 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4EAD2A8 8007A578 00000000 */  nop
/* 4EAD2AC 8007A57C 0000438C */  lw         $v1, 0x0($v0)
/* 4EAD2B0 8007A580 E1FF0424 */  addiu      $a0, $zero, -0x1F
/* 4EAD2B4 8007A584 1C00628C */  lw         $v0, 0x1C($v1)
/* 4EAD2B8 8007A588 36006584 */  lh         $a1, 0x36($v1)
/* 4EAD2BC 8007A58C 24104400 */  and        $v0, $v0, $a0
/* 4EAD2C0 8007A590 0D00A610 */  beq        $a1, $a2, .Llevel_18_8007A5C8
/* 4EAD2C4 8007A594 1C0062AC */   sw        $v0, 0x1C($v1)
/* 4EAD2C8 8007A598 55A0000C */  jal        func_80028154
/* 4EAD2CC 8007A59C 2120A000 */   addu      $a0, $a1, $zero
/* 4EAD2D0 8007A5A0 72E90108 */  j          .Llevel_18_8007A5C8
/* 4EAD2D4 8007A5A4 00000000 */   nop
.Llevel_18_8007A5A8:
/* 4EAD2D8 8007A5A8 0780043C */  lui        $a0, %hi(D_8006D088)
/* 4EAD2DC 8007A5AC 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 4EAD2E0 8007A5B0 0780063C */  lui        $a2, %hi(D_80070328 + 0xE)
/* 4EAD2E4 8007A5B4 3603C690 */  lbu        $a2, %lo(D_80070328 + 0xE)($a2)
/* 4EAD2E8 8007A5B8 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EAD2EC 8007A5BC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EAD2F0 8007A5C0 8DED000C */  jal        func_8003B634
/* 4EAD2F4 8007A5C4 00000000 */   nop
.Llevel_18_8007A5C8:
/* 4EAD2F8 8007A5C8 C656010C */  jal        func_80055B18
/* 4EAD2FC 8007A5CC 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_8007A5D0:
/* 4EAD300 8007A5D0 1800BF8F */  lw         $ra, 0x18($sp)
/* 4EAD304 8007A5D4 1400B18F */  lw         $s1, 0x14($sp)
/* 4EAD308 8007A5D8 1000B08F */  lw         $s0, 0x10($sp)
/* 4EAD30C 8007A5DC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EAD310 8007A5E0 0800E003 */  jr         $ra
/* 4EAD314 8007A5E4 00000000 */   nop
.size MobyUpdate_289_level_18, . - MobyUpdate_289_level_18
