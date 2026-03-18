.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_80080900
/* 3E24E30 80080900 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3E24E34 80080904 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E24E38 80080908 21888000 */  addu       $s1, $a0, $zero
/* 3E24E3C 8008090C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 3E24E40 80080910 2800B2AF */  sw         $s2, 0x28($sp)
/* 3E24E44 80080914 2000B0AF */  sw         $s0, 0x20($sp)
/* 3E24E48 80080918 1800238E */  lw         $v1, 0x18($s1)
/* 3E24E4C 8008091C 0000328E */  lw         $s2, 0x0($s1)
/* 3E24E50 80080920 10006010 */  beqz       $v1, .Llevel_11_80080964
/* 3E24E54 80080924 0100023C */   lui       $v0, (0x10000 >> 16)
/* 3E24E58 80080928 24106200 */  and        $v0, $v1, $v0
/* 3E24E5C 8008092C 02004010 */  beqz       $v0, .Llevel_11_80080938
/* 3E24E60 80080930 01000224 */   addiu     $v0, $zero, 0x1
/* 3E24E64 80080934 1A0042A2 */  sb         $v0, 0x1A($s2)
.Llevel_11_80080938:
/* 3E24E68 80080938 48002492 */  lbu        $a0, 0x48($s1)
/* 3E24E6C 8008093C 03000224 */  addiu      $v0, $zero, 0x3
/* 3E24E70 80080940 FF008330 */  andi       $v1, $a0, 0xFF
/* 3E24E74 80080944 06006210 */  beq        $v1, $v0, .Llevel_11_80080960
/* 3E24E78 80080948 03000224 */   addiu     $v0, $zero, 0x3
/* 3E24E7C 8008094C 180044A2 */  sb         $a0, 0x18($s2)
/* 3E24E80 80080950 3D002292 */  lbu        $v0, 0x3D($s1)
/* 3E24E84 80080954 00000000 */  nop
/* 3E24E88 80080958 190042A2 */  sb         $v0, 0x19($s2)
/* 3E24E8C 8008095C 03000224 */  addiu      $v0, $zero, 0x3
.Llevel_11_80080960:
/* 3E24E90 80080960 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_11_80080964:
/* 3E24E94 80080964 48002392 */  lbu        $v1, 0x48($s1)
/* 3E24E98 80080968 02000224 */  addiu      $v0, $zero, 0x2
/* 3E24E9C 8008096C 1F006210 */  beq        $v1, $v0, .Llevel_11_800809EC
/* 3E24EA0 80080970 180020AE */   sw        $zero, 0x18($s1)
/* 3E24EA4 80080974 03006228 */  slti       $v0, $v1, 0x3
/* 3E24EA8 80080978 05004010 */  beqz       $v0, .Llevel_11_80080990
/* 3E24EAC 8008097C 00000000 */   nop
/* 3E24EB0 80080980 08006010 */  beqz       $v1, .Llevel_11_800809A4
/* 3E24EB4 80080984 21202002 */   addu      $a0, $s1, $zero
/* 3E24EB8 80080988 B1020208 */  j          .Llevel_11_80080AC4
/* 3E24EBC 8008098C 00000000 */   nop
.Llevel_11_80080990:
/* 3E24EC0 80080990 03000224 */  addiu      $v0, $zero, 0x3
/* 3E24EC4 80080994 1E006210 */  beq        $v1, $v0, .Llevel_11_80080A10
/* 3E24EC8 80080998 00000000 */   nop
/* 3E24ECC 8008099C B1020208 */  j          .Llevel_11_80080AC4
/* 3E24ED0 800809A0 00000000 */   nop
.Llevel_11_800809A4:
/* 3E24ED4 800809A4 EFDE000C */  jal        func_80037BBC
/* 3E24ED8 800809A8 21280000 */   addu      $a1, $zero, $zero
/* 3E24EDC 800809AC 45004010 */  beqz       $v0, .Llevel_11_80080AC4
/* 3E24EE0 800809B0 00000000 */   nop
/* 3E24EE4 800809B4 0780033C */  lui        $v1, %hi(D_8006C7B4)
/* 3E24EE8 800809B8 B4C76390 */  lbu        $v1, %lo(D_8006C7B4)($v1)
/* 3E24EEC 800809BC 00000000 */  nop
/* 3E24EF0 800809C0 02006230 */  andi       $v0, $v1, 0x2
/* 3E24EF4 800809C4 04004014 */  bnez       $v0, .Llevel_11_800809D8
/* 3E24EF8 800809C8 21202002 */   addu      $a0, $s1, $zero
/* 3E24EFC 800809CC 02006234 */  ori        $v0, $v1, 0x2
/* 3E24F00 800809D0 0780013C */  lui        $at, %hi(D_8006C7B4)
/* 3E24F04 800809D4 B4C722A0 */  sb         $v0, %lo(D_8006C7B4)($at)
.Llevel_11_800809D8:
/* 3E24F08 800809D8 21280000 */  addu       $a1, $zero, $zero
/* 3E24F0C 800809DC B944010C */  jal        func_800512E4
/* 3E24F10 800809E0 01000624 */   addiu     $a2, $zero, 0x1
/* 3E24F14 800809E4 AF020208 */  j          .Llevel_11_80080ABC
/* 3E24F18 800809E8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_11_800809EC:
/* 3E24F1C 800809EC 0780033C */  lui        $v1, %hi(D_8006E344)
/* 3E24F20 800809F0 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 3E24F24 800809F4 01000224 */  addiu      $v0, $zero, 0x1
/* 3E24F28 800809F8 32006210 */  beq        $v1, $v0, .Llevel_11_80080AC4
/* 3E24F2C 800809FC 21202002 */   addu      $a0, $s1, $zero
/* 3E24F30 80080A00 D0D3000C */  jal        func_80034F40
/* 3E24F34 80080A04 21280000 */   addu      $a1, $zero, $zero
/* 3E24F38 80080A08 B1020208 */  j          .Llevel_11_80080AC4
/* 3E24F3C 80080A0C 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_11_80080A10:
/* 3E24F40 80080A10 1A004292 */  lbu        $v0, 0x1A($s2)
/* 3E24F44 80080A14 00000000 */  nop
/* 3E24F48 80080A18 1F004010 */  beqz       $v0, .Llevel_11_80080A98
/* 3E24F4C 80080A1C 00000000 */   nop
/* 3E24F50 80080A20 9171010C */  jal        rand
/* 3E24F54 80080A24 00000000 */   nop
/* 3E24F58 80080A28 0F004230 */  andi       $v0, $v0, 0xF
/* 3E24F5C 80080A2C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E24F60 80080A30 9171010C */  jal        rand
/* 3E24F64 80080A34 1000A2AF */   sw        $v0, 0x10($sp)
/* 3E24F68 80080A38 0F004230 */  andi       $v0, $v0, 0xF
/* 3E24F6C 80080A3C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E24F70 80080A40 9171010C */  jal        rand
/* 3E24F74 80080A44 1400A2AF */   sw        $v0, 0x14($sp)
/* 3E24F78 80080A48 01000424 */  addiu      $a0, $zero, 0x1
/* 3E24F7C 80080A4C 37000524 */  addiu      $a1, $zero, 0x37
/* 3E24F80 80080A50 0C002626 */  addiu      $a2, $s1, 0xC
/* 3E24F84 80080A54 0F004230 */  andi       $v0, $v0, 0xF
/* 3E24F88 80080A58 08004224 */  addiu      $v0, $v0, 0x8
/* 3E24F8C 80080A5C 1800A2AF */  sw         $v0, 0x18($sp)
/* 3E24F90 80080A60 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3E24F94 80080A64 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3E24F98 80080A68 00000000 */  nop
/* 3E24F9C 80080A6C 09F84000 */  jalr       $v0
/* 3E24FA0 80080A70 1000A727 */   addiu     $a3, $sp, 0x10
/* 3E24FA4 80080A74 21804000 */  addu       $s0, $v0, $zero
/* 3E24FA8 80080A78 07000012 */  beqz       $s0, .Llevel_11_80080A98
/* 3E24FAC 80080A7C 00000000 */   nop
/* 3E24FB0 80080A80 9171010C */  jal        rand
/* 3E24FB4 80080A84 00000000 */   nop
/* 3E24FB8 80080A88 08000396 */  lhu        $v1, 0x8($s0)
/* 3E24FBC 80080A8C FF004230 */  andi       $v0, $v0, 0xFF
/* 3E24FC0 80080A90 21186200 */  addu       $v1, $v1, $v0
/* 3E24FC4 80080A94 080003A6 */  sh         $v1, 0x8($s0)
.Llevel_11_80080A98:
/* 3E24FC8 80080A98 0780023C */  lui        $v0, %hi(D_8006C770)
/* 3E24FCC 80080A9C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 3E24FD0 80080AA0 00000000 */  nop
/* 3E24FD4 80080AA4 07004010 */  beqz       $v0, .Llevel_11_80080AC4
/* 3E24FD8 80080AA8 21202002 */   addu      $a0, $s1, $zero
/* 3E24FDC 80080AAC 19004592 */  lbu        $a1, 0x19($s2)
/* 3E24FE0 80080AB0 D0D3000C */  jal        func_80034F40
/* 3E24FE4 80080AB4 1A0040A2 */   sb        $zero, 0x1A($s2)
/* 3E24FE8 80080AB8 18004292 */  lbu        $v0, 0x18($s2)
.Llevel_11_80080ABC:
/* 3E24FEC 80080ABC 00000000 */  nop
/* 3E24FF0 80080AC0 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_11_80080AC4:
/* 3E24FF4 80080AC4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 3E24FF8 80080AC8 2800B28F */  lw         $s2, 0x28($sp)
/* 3E24FFC 80080ACC 2400B18F */  lw         $s1, 0x24($sp)
/* 3E25000 80080AD0 2000B08F */  lw         $s0, 0x20($sp)
/* 3E25004 80080AD4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 3E25008 80080AD8 0800E003 */  jr         $ra
/* 3E2500C 80080ADC 00000000 */   nop
.size func_level_11_80080900, . - func_level_11_80080900
