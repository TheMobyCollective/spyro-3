.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_80089F90
/* 6DF14C0 80089F90 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 6DF14C4 80089F94 3800BFAF */  sw         $ra, 0x38($sp)
/* 6DF14C8 80089F98 3400B1AF */  sw         $s1, 0x34($sp)
/* 6DF14CC 80089F9C 3000B0AF */  sw         $s0, 0x30($sp)
/* 6DF14D0 80089FA0 0000918C */  lw         $s1, 0x0($a0)
/* 6DF14D4 80089FA4 9171010C */  jal        rand
/* 6DF14D8 80089FA8 00000000 */   nop
/* 6DF14DC 80089FAC 1800238E */  lw         $v1, 0x18($s1)
/* 6DF14E0 80089FB0 FF034230 */  andi       $v0, $v0, 0x3FF
/* 6DF14E4 80089FB4 2A104300 */  slt        $v0, $v0, $v1
/* 6DF14E8 80089FB8 1A004010 */  beqz       $v0, .Llevel_32_8008A024
/* 6DF14EC 80089FBC 14000224 */   addiu     $v0, $zero, 0x14
/* 6DF14F0 80089FC0 2000A0AF */  sw         $zero, 0x20($sp)
/* 6DF14F4 80089FC4 2400A0AF */  sw         $zero, 0x24($sp)
/* 6DF14F8 80089FC8 9171010C */  jal        rand
/* 6DF14FC 80089FCC 2800A2AF */   sw        $v0, 0x28($sp)
/* 6DF1500 80089FD0 FF005030 */  andi       $s0, $v0, 0xFF
/* 6DF1504 80089FD4 9171010C */  jal        rand
/* 6DF1508 80089FD8 81FF1026 */   addiu     $s0, $s0, -0x7F
/* 6DF150C 80089FDC 1000A427 */  addiu      $a0, $sp, 0x10
/* 6DF1510 80089FE0 21280002 */  addu       $a1, $s0, $zero
/* 6DF1514 80089FE4 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DF1518 80089FE8 81FF4624 */  addiu      $a2, $v0, -0x7F
/* 6DF151C 80089FEC 0780023C */  lui        $v0, %hi(unk_ovlheader_800743E4)
/* 6DF1520 80089FF0 E443428C */  lw         $v0, %lo(unk_ovlheader_800743E4)($v0)
/* 6DF1524 80089FF4 00000000 */  nop
/* 6DF1528 80089FF8 09F84000 */  jalr       $v0
/* 6DF152C 80089FFC 21382002 */   addu      $a3, $s1, $zero
/* 6DF1530 8008A000 01000424 */  addiu      $a0, $zero, 0x1
/* 6DF1534 8008A004 21280000 */  addu       $a1, $zero, $zero
/* 6DF1538 8008A008 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DF153C 8008A00C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DF1540 8008A010 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DF1544 8008A014 00000000 */  nop
/* 6DF1548 8008A018 09F84000 */  jalr       $v0
/* 6DF154C 8008A01C 2000A727 */   addiu     $a3, $sp, 0x20
/* 6DF1550 8008A020 110040A0 */  sb         $zero, 0x11($v0)
.Llevel_32_8008A024:
/* 6DF1554 8008A024 3800BF8F */  lw         $ra, 0x38($sp)
/* 6DF1558 8008A028 3400B18F */  lw         $s1, 0x34($sp)
/* 6DF155C 8008A02C 3000B08F */  lw         $s0, 0x30($sp)
/* 6DF1560 8008A030 4000BD27 */  addiu      $sp, $sp, 0x40
/* 6DF1564 8008A034 0800E003 */  jr         $ra
/* 6DF1568 8008A038 00000000 */   nop
.size func_level_32_80089F90, . - func_level_32_80089F90
