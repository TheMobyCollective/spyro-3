.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_971_level_38
/* 7C414B0 80082780 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7C414B4 80082784 1400B1AF */  sw         $s1, 0x14($sp)
/* 7C414B8 80082788 21888000 */  addu       $s1, $a0, $zero
/* 7C414BC 8008278C 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C414C0 80082790 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C414C4 80082794 1800BFAF */  sw         $ra, 0x18($sp)
/* 7C414C8 80082798 1000B0AF */  sw         $s0, 0x10($sp)
/* 7C414CC 8008279C 0000308E */  lw         $s0, 0x0($s1)
/* 7C414D0 800827A0 CD3C010C */  jal        func_8004F334
/* 7C414D4 800827A4 0C002426 */   addiu     $a0, $s1, 0xC
/* 7C414D8 800827A8 0000038E */  lw         $v1, 0x0($s0)
/* 7C414DC 800827AC 00000000 */  nop
/* 7C414E0 800827B0 2A104300 */  slt        $v0, $v0, $v1
/* 7C414E4 800827B4 0F004010 */  beqz       $v0, .Llevel_38_800827F4
/* 7C414E8 800827B8 10010424 */   addiu     $a0, $zero, 0x110
/* 7C414EC 800827BC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C414F0 800827C0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C414F4 800827C4 00000000 */  nop
/* 7C414F8 800827C8 09F84000 */  jalr       $v0
/* 7C414FC 800827CC 21282002 */   addu      $a1, $s1, $zero
/* 7C41500 800827D0 21284000 */  addu       $a1, $v0, $zero
/* 7C41504 800827D4 0700A010 */  beqz       $a1, .Llevel_38_800827F4
/* 7C41508 800827D8 21202002 */   addu      $a0, $s1, $zero
/* 7C4150C 800827DC 0000A38C */  lw         $v1, 0x0($a1)
/* 7C41510 800827E0 10000224 */  addiu      $v0, $zero, 0x10
/* 7C41514 800827E4 4600A0A0 */  sb         $zero, 0x46($a1)
/* 7C41518 800827E8 4F00A2A0 */  sb         $v0, 0x4F($a1)
/* 7C4151C 800827EC C656010C */  jal        func_80055B18
/* 7C41520 800827F0 040060A0 */   sb        $zero, 0x4($v1)
.Llevel_38_800827F4:
/* 7C41524 800827F4 1800BF8F */  lw         $ra, 0x18($sp)
/* 7C41528 800827F8 1400B18F */  lw         $s1, 0x14($sp)
/* 7C4152C 800827FC 1000B08F */  lw         $s0, 0x10($sp)
/* 7C41530 80082800 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7C41534 80082804 0800E003 */  jr         $ra
/* 7C41538 80082808 00000000 */   nop
.size MobyUpdate_971_level_38, . - MobyUpdate_971_level_38
