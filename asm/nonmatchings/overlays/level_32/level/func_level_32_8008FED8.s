.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8008FED8
/* 6DF7408 8008FED8 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 6DF740C 8008FEDC 3400B3AF */  sw         $s3, 0x34($sp)
/* 6DF7410 8008FEE0 21988000 */  addu       $s3, $a0, $zero
/* 6DF7414 8008FEE4 3800B4AF */  sw         $s4, 0x38($sp)
/* 6DF7418 8008FEE8 21A0A000 */  addu       $s4, $a1, $zero
/* 6DF741C 8008FEEC 4400B7AF */  sw         $s7, 0x44($sp)
/* 6DF7420 8008FEF0 21B8C000 */  addu       $s7, $a2, $zero
/* 6DF7424 8008FEF4 2800B0AF */  sw         $s0, 0x28($sp)
/* 6DF7428 8008FEF8 2180E000 */  addu       $s0, $a3, $zero
/* 6DF742C 8008FEFC 4000B6AF */  sw         $s6, 0x40($sp)
/* 6DF7430 8008FF00 6400B68F */  lw         $s6, 0x64($sp)
/* 6DF7434 8008FF04 21300000 */  addu       $a2, $zero, $zero
/* 6DF7438 8008FF08 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 6DF743C 8008FF0C 4800BEAF */  sw         $fp, 0x48($sp)
/* 6DF7440 8008FF10 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 6DF7444 8008FF14 3000B2AF */  sw         $s2, 0x30($sp)
/* 6DF7448 8008FF18 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 6DF744C 8008FF1C 0C00638E */  lw         $v1, 0xC($s3)
/* 6DF7450 8008FF20 0000848E */  lw         $a0, 0x0($s4)
/* 6DF7454 8008FF24 1000628E */  lw         $v0, 0x10($s3)
/* 6DF7458 8008FF28 0400858E */  lw         $a1, 0x4($s4)
/* 6DF745C 8008FF2C 6000B18F */  lw         $s1, 0x60($sp)
/* 6DF7460 8008FF30 7000BE8F */  lw         $fp, 0x70($sp)
/* 6DF7464 8008FF34 23206400 */  subu       $a0, $v1, $a0
/* 6DF7468 8008FF38 203A010C */  jal        func_8004E880
/* 6DF746C 8008FF3C 23284500 */   subu      $a1, $v0, $a1
/* 6DF7470 8008FF40 21904000 */  addu       $s2, $v0, $zero
/* 6DF7474 8008FF44 21200002 */  addu       $a0, $s0, $zero
/* 6DF7478 8008FF48 4FD8000C */  jal        SubAngle8
/* 6DF747C 8008FF4C FF004532 */   andi      $a1, $s2, 0xFF
/* 6DF7480 8008FF50 0C006426 */  addiu      $a0, $s3, 0xC
/* 6DF7484 8008FF54 21288002 */  addu       $a1, $s4, $zero
/* 6DF7488 8008FF58 CD3C010C */  jal        func_8004F334
/* 6DF748C 8008FF5C 21A84000 */   addu      $s5, $v0, $zero
/* 6DF7490 8008FF60 21184000 */  addu       $v1, $v0, $zero
/* 6DF7494 8008FF64 0200A106 */  bgez       $s5, .Llevel_32_8008FF70
/* 6DF7498 8008FF68 2110A002 */   addu      $v0, $s5, $zero
/* 6DF749C 8008FF6C 23100200 */  negu       $v0, $v0
.Llevel_32_8008FF70:
/* 6DF74A0 8008FF70 2A105100 */  slt        $v0, $v0, $s1
/* 6DF74A4 8008FF74 07004010 */  beqz       $v0, .Llevel_32_8008FF94
/* 6DF74A8 8008FF78 23107700 */   subu      $v0, $v1, $s7
/* 6DF74AC 8008FF7C 03004104 */  bgez       $v0, .Llevel_32_8008FF8C
/* 6DF74B0 8008FF80 C8004228 */   slti      $v0, $v0, 0xC8
/* 6DF74B4 8008FF84 2310E302 */  subu       $v0, $s7, $v1
/* 6DF74B8 8008FF88 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_32_8008FF8C:
/* 6DF74BC 8008FF8C 89004014 */  bnez       $v0, .Llevel_32_800901B4
/* 6DF74C0 8008FF90 00000000 */   nop
.Llevel_32_8008FF94:
/* 6DF74C4 8008FF94 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF74C8 8008FF98 1200C213 */  beq        $fp, $v0, .Llevel_32_8008FFE4
/* 6DF74CC 8008FF9C 00000000 */   nop
/* 6DF74D0 8008FFA0 FF005032 */  andi       $s0, $s2, 0xFF
/* 6DF74D4 8008FFA4 21200002 */  addu       $a0, $s0, $zero
/* 6DF74D8 8008FFA8 993C010C */  jal        func_8004F264
/* 6DF74DC 8008FFAC 2128C003 */   addu      $a1, $fp, $zero
/* 6DF74E0 8008FFB0 05004228 */  slti       $v0, $v0, 0x5
/* 6DF74E4 8008FFB4 0B004010 */  beqz       $v0, .Llevel_32_8008FFE4
/* 6DF74E8 8008FFB8 2120C003 */   addu      $a0, $fp, $zero
/* 6DF74EC 8008FFBC 4FD8000C */  jal        SubAngle8
/* 6DF74F0 8008FFC0 21280002 */   addu      $a1, $s0, $zero
/* 6DF74F4 8008FFC4 0300A106 */  bgez       $s5, .Llevel_32_8008FFD4
/* 6DF74F8 8008FFC8 00000000 */   nop
/* 6DF74FC 8008FFCC 1A004004 */  bltz       $v0, .Llevel_32_80090038
/* 6DF7500 8008FFD0 00000000 */   nop
.Llevel_32_8008FFD4:
/* 6DF7504 8008FFD4 0300A01A */  blez       $s5, .Llevel_32_8008FFE4
/* 6DF7508 8008FFD8 00000000 */   nop
/* 6DF750C 8008FFDC 7800401C */  bgtz       $v0, .Llevel_32_800901C0
/* 6DF7510 8008FFE0 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_32_8008FFE4:
/* 6DF7514 8008FFE4 7400A88F */  lw         $t0, 0x74($sp)
/* 6DF7518 8008FFE8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF751C 8008FFEC 14000211 */  beq        $t0, $v0, .Llevel_32_80090040
/* 6DF7520 8008FFF0 FF005032 */   andi      $s0, $s2, 0xFF
/* 6DF7524 8008FFF4 7400A58F */  lw         $a1, 0x74($sp)
/* 6DF7528 8008FFF8 993C010C */  jal        func_8004F264
/* 6DF752C 8008FFFC 21200002 */   addu      $a0, $s0, $zero
/* 6DF7530 80090000 05004228 */  slti       $v0, $v0, 0x5
/* 6DF7534 80090004 0E004010 */  beqz       $v0, .Llevel_32_80090040
/* 6DF7538 80090008 00000000 */   nop
/* 6DF753C 8009000C 7400A48F */  lw         $a0, 0x74($sp)
/* 6DF7540 80090010 4FD8000C */  jal        SubAngle8
/* 6DF7544 80090014 21280002 */   addu      $a1, $s0, $zero
/* 6DF7548 80090018 0300A106 */  bgez       $s5, .Llevel_32_80090028
/* 6DF754C 8009001C 00000000 */   nop
/* 6DF7550 80090020 05004004 */  bltz       $v0, .Llevel_32_80090038
/* 6DF7554 80090024 00000000 */   nop
.Llevel_32_80090028:
/* 6DF7558 80090028 0500A01A */  blez       $s5, .Llevel_32_80090040
/* 6DF755C 8009002C 00000000 */   nop
/* 6DF7560 80090030 03004018 */  blez       $v0, .Llevel_32_80090040
/* 6DF7564 80090034 00000000 */   nop
.Llevel_32_80090038:
/* 6DF7568 80090038 70400208 */  j          .Llevel_32_800901C0
/* 6DF756C 8009003C 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_32_80090040:
/* 6DF7570 80090040 0300A106 */  bgez       $s5, .Llevel_32_80090050
/* 6DF7574 80090044 00000000 */   nop
/* 6DF7578 80090048 15400208 */  j          .Llevel_32_80090054
/* 6DF757C 8009004C 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_32_80090050:
/* 6DF7580 80090050 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_32_80090054:
/* 6DF7584 80090054 FF004332 */  andi       $v1, $s2, 0xFF
/* 6DF7588 80090058 40180300 */  sll        $v1, $v1, 1
/* 6DF758C 8009005C 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF7590 80090060 21082300 */  addu       $at, $at, $v1
/* 6DF7594 80090064 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DF7598 80090068 00000000 */  nop
/* 6DF759C 8009006C 18005700 */  mult       $v0, $s7
/* 6DF75A0 80090070 0000878E */  lw         $a3, 0x0($s4)
/* 6DF75A4 80090074 12400000 */  mflo       $t0
/* 6DF75A8 80090078 03130800 */  sra        $v0, $t0, 12
/* 6DF75AC 8009007C 2138E200 */  addu       $a3, $a3, $v0
/* 6DF75B0 80090080 1800A7AF */  sw         $a3, 0x18($sp)
/* 6DF75B4 80090084 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF75B8 80090088 21082300 */  addu       $at, $at, $v1
/* 6DF75BC 8009008C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 6DF75C0 80090090 00000000 */  nop
/* 6DF75C4 80090094 18005700 */  mult       $v0, $s7
/* 6DF75C8 80090098 21300000 */  addu       $a2, $zero, $zero
/* 6DF75CC 8009009C 0400858E */  lw         $a1, 0x4($s4)
/* 6DF75D0 800900A0 12400000 */  mflo       $t0
/* 6DF75D4 800900A4 03130800 */  sra        $v0, $t0, 12
/* 6DF75D8 800900A8 2128A200 */  addu       $a1, $a1, $v0
/* 6DF75DC 800900AC 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 6DF75E0 800900B0 0C00648E */  lw         $a0, 0xC($s3)
/* 6DF75E4 800900B4 1000628E */  lw         $v0, 0x10($s3)
/* 6DF75E8 800900B8 2320E400 */  subu       $a0, $a3, $a0
/* 6DF75EC 800900BC 203A010C */  jal        func_8004E880
/* 6DF75F0 800900C0 2328A200 */   subu      $a1, $a1, $v0
/* 6DF75F4 800900C4 21804000 */  addu       $s0, $v0, $zero
/* 6DF75F8 800900C8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 6DF75FC 800900CC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 6DF7600 800900D0 03000224 */  addiu      $v0, $zero, 0x3
/* 6DF7604 800900D4 04006214 */  bne        $v1, $v0, .Llevel_32_800900E8
/* 6DF7608 800900D8 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF760C 800900DC 43101600 */  sra        $v0, $s6, 1
/* 6DF7610 800900E0 3D400208 */  j          .Llevel_32_800900F4
/* 6DF7614 800900E4 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_32_800900E8:
/* 6DF7618 800900E8 02006214 */  bne        $v1, $v0, .Llevel_32_800900F4
/* 6DF761C 800900EC 00000000 */   nop
/* 6DF7620 800900F0 40B01600 */  sll        $s6, $s6, 1
.Llevel_32_800900F4:
/* 6DF7624 800900F4 8000A88F */  lw         $t0, 0x80($sp)
/* 6DF7628 800900F8 00000000 */  nop
/* 6DF762C 800900FC 08000231 */  andi       $v0, $t0, 0x8
/* 6DF7630 80090100 1A004010 */  beqz       $v0, .Llevel_32_8009016C
/* 6DF7634 80090104 21300000 */   addu      $a2, $zero, $zero
/* 6DF7638 80090108 0000838E */  lw         $v1, 0x0($s4)
/* 6DF763C 8009010C 0C00648E */  lw         $a0, 0xC($s3)
/* 6DF7640 80090110 0400828E */  lw         $v0, 0x4($s4)
/* 6DF7644 80090114 1000658E */  lw         $a1, 0x10($s3)
/* 6DF7648 80090118 23206400 */  subu       $a0, $v1, $a0
/* 6DF764C 8009011C 203A010C */  jal        func_8004E880
/* 6DF7650 80090120 23284500 */   subu      $a1, $v0, $a1
/* 6DF7654 80090124 21206002 */  addu       $a0, $s3, $zero
/* 6DF7658 80090128 21284000 */  addu       $a1, $v0, $zero
/* 6DF765C 8009012C 6800A68F */  lw         $a2, 0x68($sp)
/* 6DF7660 80090130 21380000 */  addu       $a3, $zero, $zero
/* 6DF7664 80090134 1000A0AF */  sw         $zero, 0x10($sp)
/* 6DF7668 80090138 17D6000C */  jal        func_8003585C
/* 6DF766C 8009013C 1400A0AF */   sw        $zero, 0x14($sp)
/* 6DF7670 80090140 21206002 */  addu       $a0, $s3, $zero
/* 6DF7674 80090144 7800A78F */  lw         $a3, 0x78($sp)
/* 6DF7678 80090148 7C00A88F */  lw         $t0, 0x7C($sp)
/* 6DF767C 8009014C 21280002 */  addu       $a1, $s0, $zero
/* 6DF7680 80090150 1000A8AF */  sw         $t0, 0x10($sp)
/* 6DF7684 80090154 8000A88F */  lw         $t0, 0x80($sp)
/* 6DF7688 80090158 2130C002 */  addu       $a2, $s6, $zero
/* 6DF768C 8009015C B8D7000C */  jal        func_80035EE0
/* 6DF7690 80090160 1400A8AF */   sw        $t0, 0x14($sp)
/* 6DF7694 80090164 6B400208 */  j          .Llevel_32_800901AC
/* 6DF7698 80090168 00000000 */   nop
.Llevel_32_8009016C:
/* 6DF769C 8009016C 21206002 */  addu       $a0, $s3, $zero
/* 6DF76A0 80090170 21280002 */  addu       $a1, $s0, $zero
/* 6DF76A4 80090174 6800A68F */  lw         $a2, 0x68($sp)
/* 6DF76A8 80090178 6C00A78F */  lw         $a3, 0x6C($sp)
/* 6DF76AC 8009017C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF76B0 80090180 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF76B4 80090184 17D6000C */  jal        func_8003585C
/* 6DF76B8 80090188 1400A0AF */   sw        $zero, 0x14($sp)
/* 6DF76BC 8009018C 09004010 */  beqz       $v0, .Llevel_32_800901B4
/* 6DF76C0 80090190 21206002 */   addu      $a0, $s3, $zero
/* 6DF76C4 80090194 8000A88F */  lw         $t0, 0x80($sp)
/* 6DF76C8 80090198 7800A68F */  lw         $a2, 0x78($sp)
/* 6DF76CC 8009019C 7C00A78F */  lw         $a3, 0x7C($sp)
/* 6DF76D0 800901A0 2128C002 */  addu       $a1, $s6, $zero
/* 6DF76D4 800901A4 77D7000C */  jal        func_80035DDC
/* 6DF76D8 800901A8 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_32_800901AC:
/* 6DF76DC 800901AC 04004014 */  bnez       $v0, .Llevel_32_800901C0
/* 6DF76E0 800901B0 23100200 */   negu      $v0, $v0
.Llevel_32_800901B4:
/* 6DF76E4 800901B4 0200A106 */  bgez       $s5, .Llevel_32_800901C0
/* 6DF76E8 800901B8 2110A002 */   addu      $v0, $s5, $zero
/* 6DF76EC 800901BC 23100200 */  negu       $v0, $v0
.Llevel_32_800901C0:
/* 6DF76F0 800901C0 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 6DF76F4 800901C4 4800BE8F */  lw         $fp, 0x48($sp)
/* 6DF76F8 800901C8 4400B78F */  lw         $s7, 0x44($sp)
/* 6DF76FC 800901CC 4000B68F */  lw         $s6, 0x40($sp)
/* 6DF7700 800901D0 3C00B58F */  lw         $s5, 0x3C($sp)
/* 6DF7704 800901D4 3800B48F */  lw         $s4, 0x38($sp)
/* 6DF7708 800901D8 3400B38F */  lw         $s3, 0x34($sp)
/* 6DF770C 800901DC 3000B28F */  lw         $s2, 0x30($sp)
/* 6DF7710 800901E0 2C00B18F */  lw         $s1, 0x2C($sp)
/* 6DF7714 800901E4 2800B08F */  lw         $s0, 0x28($sp)
/* 6DF7718 800901E8 5000BD27 */  addiu      $sp, $sp, 0x50
/* 6DF771C 800901EC 0800E003 */  jr         $ra
/* 6DF7720 800901F0 00000000 */   nop
.size func_level_32_8008FED8, . - func_level_32_8008FED8
