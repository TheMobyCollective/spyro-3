.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_44_80088EC4
/* 8B5C3F4 80088EC4 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8B5C3F8 80088EC8 3400B3AF */  sw         $s3, 0x34($sp)
/* 8B5C3FC 80088ECC 21988000 */  addu       $s3, $a0, $zero
/* 8B5C400 80088ED0 3800B4AF */  sw         $s4, 0x38($sp)
/* 8B5C404 80088ED4 21A0A000 */  addu       $s4, $a1, $zero
/* 8B5C408 80088ED8 4400B7AF */  sw         $s7, 0x44($sp)
/* 8B5C40C 80088EDC 21B8C000 */  addu       $s7, $a2, $zero
/* 8B5C410 80088EE0 2800B0AF */  sw         $s0, 0x28($sp)
/* 8B5C414 80088EE4 2180E000 */  addu       $s0, $a3, $zero
/* 8B5C418 80088EE8 4000B6AF */  sw         $s6, 0x40($sp)
/* 8B5C41C 80088EEC 6400B68F */  lw         $s6, 0x64($sp)
/* 8B5C420 80088EF0 21300000 */  addu       $a2, $zero, $zero
/* 8B5C424 80088EF4 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 8B5C428 80088EF8 4800BEAF */  sw         $fp, 0x48($sp)
/* 8B5C42C 80088EFC 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 8B5C430 80088F00 3000B2AF */  sw         $s2, 0x30($sp)
/* 8B5C434 80088F04 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8B5C438 80088F08 0C00638E */  lw         $v1, 0xC($s3)
/* 8B5C43C 80088F0C 0000848E */  lw         $a0, 0x0($s4)
/* 8B5C440 80088F10 1000628E */  lw         $v0, 0x10($s3)
/* 8B5C444 80088F14 0400858E */  lw         $a1, 0x4($s4)
/* 8B5C448 80088F18 6000B18F */  lw         $s1, 0x60($sp)
/* 8B5C44C 80088F1C 7000BE8F */  lw         $fp, 0x70($sp)
/* 8B5C450 80088F20 23206400 */  subu       $a0, $v1, $a0
/* 8B5C454 80088F24 203A010C */  jal        func_8004E880
/* 8B5C458 80088F28 23284500 */   subu      $a1, $v0, $a1
/* 8B5C45C 80088F2C 21904000 */  addu       $s2, $v0, $zero
/* 8B5C460 80088F30 21200002 */  addu       $a0, $s0, $zero
/* 8B5C464 80088F34 4FD8000C */  jal        SubAngle8
/* 8B5C468 80088F38 FF004532 */   andi      $a1, $s2, 0xFF
/* 8B5C46C 80088F3C 0C006426 */  addiu      $a0, $s3, 0xC
/* 8B5C470 80088F40 21288002 */  addu       $a1, $s4, $zero
/* 8B5C474 80088F44 CD3C010C */  jal        func_8004F334
/* 8B5C478 80088F48 21A84000 */   addu      $s5, $v0, $zero
/* 8B5C47C 80088F4C 21184000 */  addu       $v1, $v0, $zero
/* 8B5C480 80088F50 0200A106 */  bgez       $s5, .Llevel_44_80088F5C
/* 8B5C484 80088F54 2110A002 */   addu      $v0, $s5, $zero
/* 8B5C488 80088F58 23100200 */  negu       $v0, $v0
.Llevel_44_80088F5C:
/* 8B5C48C 80088F5C 2A105100 */  slt        $v0, $v0, $s1
/* 8B5C490 80088F60 07004010 */  beqz       $v0, .Llevel_44_80088F80
/* 8B5C494 80088F64 23107700 */   subu      $v0, $v1, $s7
/* 8B5C498 80088F68 03004104 */  bgez       $v0, .Llevel_44_80088F78
/* 8B5C49C 80088F6C C8004228 */   slti      $v0, $v0, 0xC8
/* 8B5C4A0 80088F70 2310E302 */  subu       $v0, $s7, $v1
/* 8B5C4A4 80088F74 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_44_80088F78:
/* 8B5C4A8 80088F78 89004014 */  bnez       $v0, .Llevel_44_800891A0
/* 8B5C4AC 80088F7C 00000000 */   nop
.Llevel_44_80088F80:
/* 8B5C4B0 80088F80 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5C4B4 80088F84 1200C213 */  beq        $fp, $v0, .Llevel_44_80088FD0
/* 8B5C4B8 80088F88 00000000 */   nop
/* 8B5C4BC 80088F8C FF005032 */  andi       $s0, $s2, 0xFF
/* 8B5C4C0 80088F90 21200002 */  addu       $a0, $s0, $zero
/* 8B5C4C4 80088F94 993C010C */  jal        func_8004F264
/* 8B5C4C8 80088F98 2128C003 */   addu      $a1, $fp, $zero
/* 8B5C4CC 80088F9C 05004228 */  slti       $v0, $v0, 0x5
/* 8B5C4D0 80088FA0 0B004010 */  beqz       $v0, .Llevel_44_80088FD0
/* 8B5C4D4 80088FA4 2120C003 */   addu      $a0, $fp, $zero
/* 8B5C4D8 80088FA8 4FD8000C */  jal        SubAngle8
/* 8B5C4DC 80088FAC 21280002 */   addu      $a1, $s0, $zero
/* 8B5C4E0 80088FB0 0300A106 */  bgez       $s5, .Llevel_44_80088FC0
/* 8B5C4E4 80088FB4 00000000 */   nop
/* 8B5C4E8 80088FB8 1A004004 */  bltz       $v0, .Llevel_44_80089024
/* 8B5C4EC 80088FBC 00000000 */   nop
.Llevel_44_80088FC0:
/* 8B5C4F0 80088FC0 0300A01A */  blez       $s5, .Llevel_44_80088FD0
/* 8B5C4F4 80088FC4 00000000 */   nop
/* 8B5C4F8 80088FC8 7800401C */  bgtz       $v0, .Llevel_44_800891AC
/* 8B5C4FC 80088FCC 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_44_80088FD0:
/* 8B5C500 80088FD0 7400A88F */  lw         $t0, 0x74($sp)
/* 8B5C504 80088FD4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5C508 80088FD8 14000211 */  beq        $t0, $v0, .Llevel_44_8008902C
/* 8B5C50C 80088FDC FF005032 */   andi      $s0, $s2, 0xFF
/* 8B5C510 80088FE0 7400A58F */  lw         $a1, 0x74($sp)
/* 8B5C514 80088FE4 993C010C */  jal        func_8004F264
/* 8B5C518 80088FE8 21200002 */   addu      $a0, $s0, $zero
/* 8B5C51C 80088FEC 05004228 */  slti       $v0, $v0, 0x5
/* 8B5C520 80088FF0 0E004010 */  beqz       $v0, .Llevel_44_8008902C
/* 8B5C524 80088FF4 00000000 */   nop
/* 8B5C528 80088FF8 7400A48F */  lw         $a0, 0x74($sp)
/* 8B5C52C 80088FFC 4FD8000C */  jal        SubAngle8
/* 8B5C530 80089000 21280002 */   addu      $a1, $s0, $zero
/* 8B5C534 80089004 0300A106 */  bgez       $s5, .Llevel_44_80089014
/* 8B5C538 80089008 00000000 */   nop
/* 8B5C53C 8008900C 05004004 */  bltz       $v0, .Llevel_44_80089024
/* 8B5C540 80089010 00000000 */   nop
.Llevel_44_80089014:
/* 8B5C544 80089014 0500A01A */  blez       $s5, .Llevel_44_8008902C
/* 8B5C548 80089018 00000000 */   nop
/* 8B5C54C 8008901C 03004018 */  blez       $v0, .Llevel_44_8008902C
/* 8B5C550 80089020 00000000 */   nop
.Llevel_44_80089024:
/* 8B5C554 80089024 6B240208 */  j          .Llevel_44_800891AC
/* 8B5C558 80089028 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_44_8008902C:
/* 8B5C55C 8008902C 0300A106 */  bgez       $s5, .Llevel_44_8008903C
/* 8B5C560 80089030 00000000 */   nop
/* 8B5C564 80089034 10240208 */  j          .Llevel_44_80089040
/* 8B5C568 80089038 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_44_8008903C:
/* 8B5C56C 8008903C FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_44_80089040:
/* 8B5C570 80089040 FF004332 */  andi       $v1, $s2, 0xFF
/* 8B5C574 80089044 40180300 */  sll        $v1, $v1, 1
/* 8B5C578 80089048 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5C57C 8008904C 21082300 */  addu       $at, $at, $v1
/* 8B5C580 80089050 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8B5C584 80089054 00000000 */  nop
/* 8B5C588 80089058 18005700 */  mult       $v0, $s7
/* 8B5C58C 8008905C 0000878E */  lw         $a3, 0x0($s4)
/* 8B5C590 80089060 12400000 */  mflo       $t0
/* 8B5C594 80089064 03130800 */  sra        $v0, $t0, 12
/* 8B5C598 80089068 2138E200 */  addu       $a3, $a3, $v0
/* 8B5C59C 8008906C 1800A7AF */  sw         $a3, 0x18($sp)
/* 8B5C5A0 80089070 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5C5A4 80089074 21082300 */  addu       $at, $at, $v1
/* 8B5C5A8 80089078 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8B5C5AC 8008907C 00000000 */  nop
/* 8B5C5B0 80089080 18005700 */  mult       $v0, $s7
/* 8B5C5B4 80089084 21300000 */  addu       $a2, $zero, $zero
/* 8B5C5B8 80089088 0400858E */  lw         $a1, 0x4($s4)
/* 8B5C5BC 8008908C 12400000 */  mflo       $t0
/* 8B5C5C0 80089090 03130800 */  sra        $v0, $t0, 12
/* 8B5C5C4 80089094 2128A200 */  addu       $a1, $a1, $v0
/* 8B5C5C8 80089098 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 8B5C5CC 8008909C 0C00648E */  lw         $a0, 0xC($s3)
/* 8B5C5D0 800890A0 1000628E */  lw         $v0, 0x10($s3)
/* 8B5C5D4 800890A4 2320E400 */  subu       $a0, $a3, $a0
/* 8B5C5D8 800890A8 203A010C */  jal        func_8004E880
/* 8B5C5DC 800890AC 2328A200 */   subu      $a1, $a1, $v0
/* 8B5C5E0 800890B0 21804000 */  addu       $s0, $v0, $zero
/* 8B5C5E4 800890B4 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8B5C5E8 800890B8 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8B5C5EC 800890BC 03000224 */  addiu      $v0, $zero, 0x3
/* 8B5C5F0 800890C0 04006214 */  bne        $v1, $v0, .Llevel_44_800890D4
/* 8B5C5F4 800890C4 04000224 */   addiu     $v0, $zero, 0x4
/* 8B5C5F8 800890C8 43101600 */  sra        $v0, $s6, 1
/* 8B5C5FC 800890CC 38240208 */  j          .Llevel_44_800890E0
/* 8B5C600 800890D0 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_44_800890D4:
/* 8B5C604 800890D4 02006214 */  bne        $v1, $v0, .Llevel_44_800890E0
/* 8B5C608 800890D8 00000000 */   nop
/* 8B5C60C 800890DC 40B01600 */  sll        $s6, $s6, 1
.Llevel_44_800890E0:
/* 8B5C610 800890E0 8000A88F */  lw         $t0, 0x80($sp)
/* 8B5C614 800890E4 00000000 */  nop
/* 8B5C618 800890E8 08000231 */  andi       $v0, $t0, 0x8
/* 8B5C61C 800890EC 1A004010 */  beqz       $v0, .Llevel_44_80089158
/* 8B5C620 800890F0 21300000 */   addu      $a2, $zero, $zero
/* 8B5C624 800890F4 0000838E */  lw         $v1, 0x0($s4)
/* 8B5C628 800890F8 0C00648E */  lw         $a0, 0xC($s3)
/* 8B5C62C 800890FC 0400828E */  lw         $v0, 0x4($s4)
/* 8B5C630 80089100 1000658E */  lw         $a1, 0x10($s3)
/* 8B5C634 80089104 23206400 */  subu       $a0, $v1, $a0
/* 8B5C638 80089108 203A010C */  jal        func_8004E880
/* 8B5C63C 8008910C 23284500 */   subu      $a1, $v0, $a1
/* 8B5C640 80089110 21206002 */  addu       $a0, $s3, $zero
/* 8B5C644 80089114 21284000 */  addu       $a1, $v0, $zero
/* 8B5C648 80089118 6800A68F */  lw         $a2, 0x68($sp)
/* 8B5C64C 8008911C 21380000 */  addu       $a3, $zero, $zero
/* 8B5C650 80089120 1000A0AF */  sw         $zero, 0x10($sp)
/* 8B5C654 80089124 17D6000C */  jal        func_8003585C
/* 8B5C658 80089128 1400A0AF */   sw        $zero, 0x14($sp)
/* 8B5C65C 8008912C 21206002 */  addu       $a0, $s3, $zero
/* 8B5C660 80089130 7800A78F */  lw         $a3, 0x78($sp)
/* 8B5C664 80089134 7C00A88F */  lw         $t0, 0x7C($sp)
/* 8B5C668 80089138 21280002 */  addu       $a1, $s0, $zero
/* 8B5C66C 8008913C 1000A8AF */  sw         $t0, 0x10($sp)
/* 8B5C670 80089140 8000A88F */  lw         $t0, 0x80($sp)
/* 8B5C674 80089144 2130C002 */  addu       $a2, $s6, $zero
/* 8B5C678 80089148 B8D7000C */  jal        func_80035EE0
/* 8B5C67C 8008914C 1400A8AF */   sw        $t0, 0x14($sp)
/* 8B5C680 80089150 66240208 */  j          .Llevel_44_80089198
/* 8B5C684 80089154 00000000 */   nop
.Llevel_44_80089158:
/* 8B5C688 80089158 21206002 */  addu       $a0, $s3, $zero
/* 8B5C68C 8008915C 21280002 */  addu       $a1, $s0, $zero
/* 8B5C690 80089160 6800A68F */  lw         $a2, 0x68($sp)
/* 8B5C694 80089164 6C00A78F */  lw         $a3, 0x6C($sp)
/* 8B5C698 80089168 01000224 */  addiu      $v0, $zero, 0x1
/* 8B5C69C 8008916C 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B5C6A0 80089170 17D6000C */  jal        func_8003585C
/* 8B5C6A4 80089174 1400A0AF */   sw        $zero, 0x14($sp)
/* 8B5C6A8 80089178 09004010 */  beqz       $v0, .Llevel_44_800891A0
/* 8B5C6AC 8008917C 21206002 */   addu      $a0, $s3, $zero
/* 8B5C6B0 80089180 8000A88F */  lw         $t0, 0x80($sp)
/* 8B5C6B4 80089184 7800A68F */  lw         $a2, 0x78($sp)
/* 8B5C6B8 80089188 7C00A78F */  lw         $a3, 0x7C($sp)
/* 8B5C6BC 8008918C 2128C002 */  addu       $a1, $s6, $zero
/* 8B5C6C0 80089190 77D7000C */  jal        func_80035DDC
/* 8B5C6C4 80089194 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_44_80089198:
/* 8B5C6C8 80089198 04004014 */  bnez       $v0, .Llevel_44_800891AC
/* 8B5C6CC 8008919C 23100200 */   negu      $v0, $v0
.Llevel_44_800891A0:
/* 8B5C6D0 800891A0 0200A106 */  bgez       $s5, .Llevel_44_800891AC
/* 8B5C6D4 800891A4 2110A002 */   addu      $v0, $s5, $zero
/* 8B5C6D8 800891A8 23100200 */  negu       $v0, $v0
.Llevel_44_800891AC:
/* 8B5C6DC 800891AC 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 8B5C6E0 800891B0 4800BE8F */  lw         $fp, 0x48($sp)
/* 8B5C6E4 800891B4 4400B78F */  lw         $s7, 0x44($sp)
/* 8B5C6E8 800891B8 4000B68F */  lw         $s6, 0x40($sp)
/* 8B5C6EC 800891BC 3C00B58F */  lw         $s5, 0x3C($sp)
/* 8B5C6F0 800891C0 3800B48F */  lw         $s4, 0x38($sp)
/* 8B5C6F4 800891C4 3400B38F */  lw         $s3, 0x34($sp)
/* 8B5C6F8 800891C8 3000B28F */  lw         $s2, 0x30($sp)
/* 8B5C6FC 800891CC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8B5C700 800891D0 2800B08F */  lw         $s0, 0x28($sp)
/* 8B5C704 800891D4 5000BD27 */  addiu      $sp, $sp, 0x50
/* 8B5C708 800891D8 0800E003 */  jr         $ra
/* 8B5C70C 800891DC 00000000 */   nop
.size func_level_44_80088EC4, . - func_level_44_80088EC4
