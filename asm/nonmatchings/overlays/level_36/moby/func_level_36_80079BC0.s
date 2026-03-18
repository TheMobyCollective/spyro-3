.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_36_80079BC0
/* 78DA0F0 80079BC0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 78DA0F4 80079BC4 3000B0AF */  sw         $s0, 0x30($sp)
/* 78DA0F8 80079BC8 21808000 */  addu       $s0, $a0, $zero
/* 78DA0FC 80079BCC 3800BFAF */  sw         $ra, 0x38($sp)
/* 78DA100 80079BD0 3400B1AF */  sw         $s1, 0x34($sp)
/* 78DA104 80079BD4 3C000292 */  lbu        $v0, 0x3C($s0)
/* 78DA108 80079BD8 00000000 */  nop
/* 78DA10C 80079BDC 39004014 */  bnez       $v0, .Llevel_36_80079CC4
/* 78DA110 80079BE0 0004033C */   lui       $v1, (0x4000000 >> 16)
/* 78DA114 80079BE4 1800028E */  lw         $v0, 0x18($s0)
/* 78DA118 80079BE8 00000000 */  nop
/* 78DA11C 80079BEC 24104300 */  and        $v0, $v0, $v1
/* 78DA120 80079BF0 3F004010 */  beqz       $v0, .Llevel_36_80079CF0
/* 78DA124 80079BF4 01000524 */   addiu     $a1, $zero, 0x1
/* 78DA128 80079BF8 21300000 */  addu       $a2, $zero, $zero
/* 78DA12C 80079BFC 9ADA000C */  jal        func_80036A68
/* 78DA130 80079C00 21380000 */   addu      $a3, $zero, $zero
/* 78DA134 80079C04 21880000 */  addu       $s1, $zero, $zero
.Llevel_36_80079C08:
/* 78DA138 80079C08 9171010C */  jal        rand
/* 78DA13C 80079C0C 01003126 */   addiu     $s1, $s1, 0x1
/* 78DA140 80079C10 FE014230 */  andi       $v0, $v0, 0x1FE
/* 78DA144 80079C14 01FF4224 */  addiu      $v0, $v0, -0xFF
/* 78DA148 80079C18 9171010C */  jal        rand
/* 78DA14C 80079C1C 2000A2AF */   sw        $v0, 0x20($sp)
/* 78DA150 80079C20 FE014230 */  andi       $v0, $v0, 0x1FE
/* 78DA154 80079C24 01FF4224 */  addiu      $v0, $v0, -0xFF
/* 78DA158 80079C28 9171010C */  jal        rand
/* 78DA15C 80079C2C 2400A2AF */   sw        $v0, 0x24($sp)
/* 78DA160 80079C30 2000A427 */  addiu      $a0, $sp, 0x20
/* 78DA164 80079C34 21288000 */  addu       $a1, $a0, $zero
/* 78DA168 80079C38 0C000626 */  addiu      $a2, $s0, 0xC
/* 78DA16C 80079C3C FE014230 */  andi       $v0, $v0, 0x1FE
/* 78DA170 80079C40 01FF4224 */  addiu      $v0, $v0, -0xFF
/* 78DA174 80079C44 653C010C */  jal        func_8004F194
/* 78DA178 80079C48 2800A2AF */   sw        $v0, 0x28($sp)
/* 78DA17C 80079C4C 04000424 */  addiu      $a0, $zero, 0x4
/* 78DA180 80079C50 0F000524 */  addiu      $a1, $zero, 0xF
/* 78DA184 80079C54 2000A627 */  addiu      $a2, $sp, 0x20
/* 78DA188 80079C58 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DA18C 80079C5C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DA190 80079C60 00000000 */  nop
/* 78DA194 80079C64 09F84000 */  jalr       $v0
/* 78DA198 80079C68 21380000 */   addu      $a3, $zero, $zero
/* 78DA19C 80079C6C 0400222A */  slti       $v0, $s1, 0x4
/* 78DA1A0 80079C70 E5FF4014 */  bnez       $v0, .Llevel_36_80079C08
/* 78DA1A4 80079C74 08000424 */   addiu     $a0, $zero, 0x8
/* 78DA1A8 80079C78 4A000524 */  addiu      $a1, $zero, 0x4A
/* 78DA1AC 80079C7C 21300002 */  addu       $a2, $s0, $zero
/* 78DA1B0 80079C80 01000724 */  addiu      $a3, $zero, 0x1
/* 78DA1B4 80079C84 03000224 */  addiu      $v0, $zero, 0x3
/* 78DA1B8 80079C88 1000A2AF */  sw         $v0, 0x10($sp)
/* 78DA1BC 80079C8C 00010224 */  addiu      $v0, $zero, 0x100
/* 78DA1C0 80079C90 1400A2AF */  sw         $v0, 0x14($sp)
/* 78DA1C4 80079C94 7AE4000C */  jal        func_800391E8
/* 78DA1C8 80079C98 1800A2AF */   sw        $v0, 0x18($sp)
/* 78DA1CC 80079C9C 21200002 */  addu       $a0, $s0, $zero
/* 78DA1D0 80079CA0 21280000 */  addu       $a1, $zero, $zero
/* 78DA1D4 80079CA4 AFEE000C */  jal        func_8003BABC
/* 78DA1D8 80079CA8 21300000 */   addu      $a2, $zero, $zero
/* 78DA1DC 80079CAC 80EE000C */  jal        func_8003BA00
/* 78DA1E0 80079CB0 21200002 */   addu      $a0, $s0, $zero
/* 78DA1E4 80079CB4 C656010C */  jal        func_80055B18
/* 78DA1E8 80079CB8 21200002 */   addu      $a0, $s0, $zero
/* 78DA1EC 80079CBC 3CE70108 */  j          .Llevel_36_80079CF0
/* 78DA1F0 80079CC0 00000000 */   nop
.Llevel_36_80079CC4:
/* 78DA1F4 80079CC4 C5E5000C */  jal        func_80039714
/* 78DA1F8 80079CC8 21200002 */   addu      $a0, $s0, $zero
/* 78DA1FC 80079CCC 08004010 */  beqz       $v0, .Llevel_36_80079CF0
/* 78DA200 80079CD0 08000424 */   addiu     $a0, $zero, 0x8
/* 78DA204 80079CD4 0F000524 */  addiu      $a1, $zero, 0xF
/* 78DA208 80079CD8 0C000626 */  addiu      $a2, $s0, 0xC
/* 78DA20C 80079CDC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DA210 80079CE0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DA214 80079CE4 00000000 */  nop
/* 78DA218 80079CE8 09F84000 */  jalr       $v0
/* 78DA21C 80079CEC 21380000 */   addu      $a3, $zero, $zero
.Llevel_36_80079CF0:
/* 78DA220 80079CF0 3800BF8F */  lw         $ra, 0x38($sp)
/* 78DA224 80079CF4 3400B18F */  lw         $s1, 0x34($sp)
/* 78DA228 80079CF8 3000B08F */  lw         $s0, 0x30($sp)
/* 78DA22C 80079CFC 4000BD27 */  addiu      $sp, $sp, 0x40
/* 78DA230 80079D00 0800E003 */  jr         $ra
/* 78DA234 80079D04 00000000 */   nop
.size func_level_36_80079BC0, . - func_level_36_80079BC0
