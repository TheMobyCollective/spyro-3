.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_8007F53C
/* 49B9A6C 8007F53C B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 49B9A70 8007F540 3400B3AF */  sw         $s3, 0x34($sp)
/* 49B9A74 8007F544 21988000 */  addu       $s3, $a0, $zero
/* 49B9A78 8007F548 3800B4AF */  sw         $s4, 0x38($sp)
/* 49B9A7C 8007F54C 21A0A000 */  addu       $s4, $a1, $zero
/* 49B9A80 8007F550 4400B7AF */  sw         $s7, 0x44($sp)
/* 49B9A84 8007F554 21B8C000 */  addu       $s7, $a2, $zero
/* 49B9A88 8007F558 2800B0AF */  sw         $s0, 0x28($sp)
/* 49B9A8C 8007F55C 2180E000 */  addu       $s0, $a3, $zero
/* 49B9A90 8007F560 4000B6AF */  sw         $s6, 0x40($sp)
/* 49B9A94 8007F564 6400B68F */  lw         $s6, 0x64($sp)
/* 49B9A98 8007F568 21300000 */  addu       $a2, $zero, $zero
/* 49B9A9C 8007F56C 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 49B9AA0 8007F570 4800BEAF */  sw         $fp, 0x48($sp)
/* 49B9AA4 8007F574 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 49B9AA8 8007F578 3000B2AF */  sw         $s2, 0x30($sp)
/* 49B9AAC 8007F57C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 49B9AB0 8007F580 0C00638E */  lw         $v1, 0xC($s3)
/* 49B9AB4 8007F584 0000848E */  lw         $a0, 0x0($s4)
/* 49B9AB8 8007F588 1000628E */  lw         $v0, 0x10($s3)
/* 49B9ABC 8007F58C 0400858E */  lw         $a1, 0x4($s4)
/* 49B9AC0 8007F590 6000B18F */  lw         $s1, 0x60($sp)
/* 49B9AC4 8007F594 7000BE8F */  lw         $fp, 0x70($sp)
/* 49B9AC8 8007F598 23206400 */  subu       $a0, $v1, $a0
/* 49B9ACC 8007F59C 203A010C */  jal        func_8004E880
/* 49B9AD0 8007F5A0 23284500 */   subu      $a1, $v0, $a1
/* 49B9AD4 8007F5A4 21904000 */  addu       $s2, $v0, $zero
/* 49B9AD8 8007F5A8 21200002 */  addu       $a0, $s0, $zero
/* 49B9ADC 8007F5AC 4FD8000C */  jal        SubAngle8
/* 49B9AE0 8007F5B0 FF004532 */   andi      $a1, $s2, 0xFF
/* 49B9AE4 8007F5B4 0C006426 */  addiu      $a0, $s3, 0xC
/* 49B9AE8 8007F5B8 21288002 */  addu       $a1, $s4, $zero
/* 49B9AEC 8007F5BC CD3C010C */  jal        func_8004F334
/* 49B9AF0 8007F5C0 21A84000 */   addu      $s5, $v0, $zero
/* 49B9AF4 8007F5C4 21184000 */  addu       $v1, $v0, $zero
/* 49B9AF8 8007F5C8 0200A106 */  bgez       $s5, .Llevel_15_8007F5D4
/* 49B9AFC 8007F5CC 2110A002 */   addu      $v0, $s5, $zero
/* 49B9B00 8007F5D0 23100200 */  negu       $v0, $v0
.Llevel_15_8007F5D4:
/* 49B9B04 8007F5D4 2A105100 */  slt        $v0, $v0, $s1
/* 49B9B08 8007F5D8 07004010 */  beqz       $v0, .Llevel_15_8007F5F8
/* 49B9B0C 8007F5DC 23107700 */   subu      $v0, $v1, $s7
/* 49B9B10 8007F5E0 03004104 */  bgez       $v0, .Llevel_15_8007F5F0
/* 49B9B14 8007F5E4 C8004228 */   slti      $v0, $v0, 0xC8
/* 49B9B18 8007F5E8 2310E302 */  subu       $v0, $s7, $v1
/* 49B9B1C 8007F5EC C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_15_8007F5F0:
/* 49B9B20 8007F5F0 89004014 */  bnez       $v0, .Llevel_15_8007F818
/* 49B9B24 8007F5F4 00000000 */   nop
.Llevel_15_8007F5F8:
/* 49B9B28 8007F5F8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 49B9B2C 8007F5FC 1200C213 */  beq        $fp, $v0, .Llevel_15_8007F648
/* 49B9B30 8007F600 00000000 */   nop
/* 49B9B34 8007F604 FF005032 */  andi       $s0, $s2, 0xFF
/* 49B9B38 8007F608 21200002 */  addu       $a0, $s0, $zero
/* 49B9B3C 8007F60C 993C010C */  jal        func_8004F264
/* 49B9B40 8007F610 2128C003 */   addu      $a1, $fp, $zero
/* 49B9B44 8007F614 05004228 */  slti       $v0, $v0, 0x5
/* 49B9B48 8007F618 0B004010 */  beqz       $v0, .Llevel_15_8007F648
/* 49B9B4C 8007F61C 2120C003 */   addu      $a0, $fp, $zero
/* 49B9B50 8007F620 4FD8000C */  jal        SubAngle8
/* 49B9B54 8007F624 21280002 */   addu      $a1, $s0, $zero
/* 49B9B58 8007F628 0300A106 */  bgez       $s5, .Llevel_15_8007F638
/* 49B9B5C 8007F62C 00000000 */   nop
/* 49B9B60 8007F630 1A004004 */  bltz       $v0, .Llevel_15_8007F69C
/* 49B9B64 8007F634 00000000 */   nop
.Llevel_15_8007F638:
/* 49B9B68 8007F638 0300A01A */  blez       $s5, .Llevel_15_8007F648
/* 49B9B6C 8007F63C 00000000 */   nop
/* 49B9B70 8007F640 7800401C */  bgtz       $v0, .Llevel_15_8007F824
/* 49B9B74 8007F644 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_15_8007F648:
/* 49B9B78 8007F648 7400A88F */  lw         $t0, 0x74($sp)
/* 49B9B7C 8007F64C FF000224 */  addiu      $v0, $zero, 0xFF
/* 49B9B80 8007F650 14000211 */  beq        $t0, $v0, .Llevel_15_8007F6A4
/* 49B9B84 8007F654 FF005032 */   andi      $s0, $s2, 0xFF
/* 49B9B88 8007F658 7400A58F */  lw         $a1, 0x74($sp)
/* 49B9B8C 8007F65C 993C010C */  jal        func_8004F264
/* 49B9B90 8007F660 21200002 */   addu      $a0, $s0, $zero
/* 49B9B94 8007F664 05004228 */  slti       $v0, $v0, 0x5
/* 49B9B98 8007F668 0E004010 */  beqz       $v0, .Llevel_15_8007F6A4
/* 49B9B9C 8007F66C 00000000 */   nop
/* 49B9BA0 8007F670 7400A48F */  lw         $a0, 0x74($sp)
/* 49B9BA4 8007F674 4FD8000C */  jal        SubAngle8
/* 49B9BA8 8007F678 21280002 */   addu      $a1, $s0, $zero
/* 49B9BAC 8007F67C 0300A106 */  bgez       $s5, .Llevel_15_8007F68C
/* 49B9BB0 8007F680 00000000 */   nop
/* 49B9BB4 8007F684 05004004 */  bltz       $v0, .Llevel_15_8007F69C
/* 49B9BB8 8007F688 00000000 */   nop
.Llevel_15_8007F68C:
/* 49B9BBC 8007F68C 0500A01A */  blez       $s5, .Llevel_15_8007F6A4
/* 49B9BC0 8007F690 00000000 */   nop
/* 49B9BC4 8007F694 03004018 */  blez       $v0, .Llevel_15_8007F6A4
/* 49B9BC8 8007F698 00000000 */   nop
.Llevel_15_8007F69C:
/* 49B9BCC 8007F69C 09FE0108 */  j          .Llevel_15_8007F824
/* 49B9BD0 8007F6A0 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_15_8007F6A4:
/* 49B9BD4 8007F6A4 0300A106 */  bgez       $s5, .Llevel_15_8007F6B4
/* 49B9BD8 8007F6A8 00000000 */   nop
/* 49B9BDC 8007F6AC AEFD0108 */  j          .Llevel_15_8007F6B8
/* 49B9BE0 8007F6B0 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_15_8007F6B4:
/* 49B9BE4 8007F6B4 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_15_8007F6B8:
/* 49B9BE8 8007F6B8 FF004332 */  andi       $v1, $s2, 0xFF
/* 49B9BEC 8007F6BC 40180300 */  sll        $v1, $v1, 1
/* 49B9BF0 8007F6C0 0680013C */  lui        $at, %hi(D_80065920)
/* 49B9BF4 8007F6C4 21082300 */  addu       $at, $at, $v1
/* 49B9BF8 8007F6C8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 49B9BFC 8007F6CC 00000000 */  nop
/* 49B9C00 8007F6D0 18005700 */  mult       $v0, $s7
/* 49B9C04 8007F6D4 0000878E */  lw         $a3, 0x0($s4)
/* 49B9C08 8007F6D8 12400000 */  mflo       $t0
/* 49B9C0C 8007F6DC 03130800 */  sra        $v0, $t0, 12
/* 49B9C10 8007F6E0 2138E200 */  addu       $a3, $a3, $v0
/* 49B9C14 8007F6E4 1800A7AF */  sw         $a3, 0x18($sp)
/* 49B9C18 8007F6E8 0680013C */  lui        $at, %hi(D_800658A0)
/* 49B9C1C 8007F6EC 21082300 */  addu       $at, $at, $v1
/* 49B9C20 8007F6F0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 49B9C24 8007F6F4 00000000 */  nop
/* 49B9C28 8007F6F8 18005700 */  mult       $v0, $s7
/* 49B9C2C 8007F6FC 21300000 */  addu       $a2, $zero, $zero
/* 49B9C30 8007F700 0400858E */  lw         $a1, 0x4($s4)
/* 49B9C34 8007F704 12400000 */  mflo       $t0
/* 49B9C38 8007F708 03130800 */  sra        $v0, $t0, 12
/* 49B9C3C 8007F70C 2128A200 */  addu       $a1, $a1, $v0
/* 49B9C40 8007F710 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 49B9C44 8007F714 0C00648E */  lw         $a0, 0xC($s3)
/* 49B9C48 8007F718 1000628E */  lw         $v0, 0x10($s3)
/* 49B9C4C 8007F71C 2320E400 */  subu       $a0, $a3, $a0
/* 49B9C50 8007F720 203A010C */  jal        func_8004E880
/* 49B9C54 8007F724 2328A200 */   subu      $a1, $a1, $v0
/* 49B9C58 8007F728 21804000 */  addu       $s0, $v0, $zero
/* 49B9C5C 8007F72C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 49B9C60 8007F730 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 49B9C64 8007F734 03000224 */  addiu      $v0, $zero, 0x3
/* 49B9C68 8007F738 04006214 */  bne        $v1, $v0, .Llevel_15_8007F74C
/* 49B9C6C 8007F73C 04000224 */   addiu     $v0, $zero, 0x4
/* 49B9C70 8007F740 43101600 */  sra        $v0, $s6, 1
/* 49B9C74 8007F744 D6FD0108 */  j          .Llevel_15_8007F758
/* 49B9C78 8007F748 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_15_8007F74C:
/* 49B9C7C 8007F74C 02006214 */  bne        $v1, $v0, .Llevel_15_8007F758
/* 49B9C80 8007F750 00000000 */   nop
/* 49B9C84 8007F754 40B01600 */  sll        $s6, $s6, 1
.Llevel_15_8007F758:
/* 49B9C88 8007F758 8000A88F */  lw         $t0, 0x80($sp)
/* 49B9C8C 8007F75C 00000000 */  nop
/* 49B9C90 8007F760 08000231 */  andi       $v0, $t0, 0x8
/* 49B9C94 8007F764 1A004010 */  beqz       $v0, .Llevel_15_8007F7D0
/* 49B9C98 8007F768 21300000 */   addu      $a2, $zero, $zero
/* 49B9C9C 8007F76C 0000838E */  lw         $v1, 0x0($s4)
/* 49B9CA0 8007F770 0C00648E */  lw         $a0, 0xC($s3)
/* 49B9CA4 8007F774 0400828E */  lw         $v0, 0x4($s4)
/* 49B9CA8 8007F778 1000658E */  lw         $a1, 0x10($s3)
/* 49B9CAC 8007F77C 23206400 */  subu       $a0, $v1, $a0
/* 49B9CB0 8007F780 203A010C */  jal        func_8004E880
/* 49B9CB4 8007F784 23284500 */   subu      $a1, $v0, $a1
/* 49B9CB8 8007F788 21206002 */  addu       $a0, $s3, $zero
/* 49B9CBC 8007F78C 21284000 */  addu       $a1, $v0, $zero
/* 49B9CC0 8007F790 6800A68F */  lw         $a2, 0x68($sp)
/* 49B9CC4 8007F794 21380000 */  addu       $a3, $zero, $zero
/* 49B9CC8 8007F798 1000A0AF */  sw         $zero, 0x10($sp)
/* 49B9CCC 8007F79C 17D6000C */  jal        func_8003585C
/* 49B9CD0 8007F7A0 1400A0AF */   sw        $zero, 0x14($sp)
/* 49B9CD4 8007F7A4 21206002 */  addu       $a0, $s3, $zero
/* 49B9CD8 8007F7A8 7800A78F */  lw         $a3, 0x78($sp)
/* 49B9CDC 8007F7AC 7C00A88F */  lw         $t0, 0x7C($sp)
/* 49B9CE0 8007F7B0 21280002 */  addu       $a1, $s0, $zero
/* 49B9CE4 8007F7B4 1000A8AF */  sw         $t0, 0x10($sp)
/* 49B9CE8 8007F7B8 8000A88F */  lw         $t0, 0x80($sp)
/* 49B9CEC 8007F7BC 2130C002 */  addu       $a2, $s6, $zero
/* 49B9CF0 8007F7C0 B8D7000C */  jal        func_80035EE0
/* 49B9CF4 8007F7C4 1400A8AF */   sw        $t0, 0x14($sp)
/* 49B9CF8 8007F7C8 04FE0108 */  j          .Llevel_15_8007F810
/* 49B9CFC 8007F7CC 00000000 */   nop
.Llevel_15_8007F7D0:
/* 49B9D00 8007F7D0 21206002 */  addu       $a0, $s3, $zero
/* 49B9D04 8007F7D4 21280002 */  addu       $a1, $s0, $zero
/* 49B9D08 8007F7D8 6800A68F */  lw         $a2, 0x68($sp)
/* 49B9D0C 8007F7DC 6C00A78F */  lw         $a3, 0x6C($sp)
/* 49B9D10 8007F7E0 01000224 */  addiu      $v0, $zero, 0x1
/* 49B9D14 8007F7E4 1000A2AF */  sw         $v0, 0x10($sp)
/* 49B9D18 8007F7E8 17D6000C */  jal        func_8003585C
/* 49B9D1C 8007F7EC 1400A0AF */   sw        $zero, 0x14($sp)
/* 49B9D20 8007F7F0 09004010 */  beqz       $v0, .Llevel_15_8007F818
/* 49B9D24 8007F7F4 21206002 */   addu      $a0, $s3, $zero
/* 49B9D28 8007F7F8 8000A88F */  lw         $t0, 0x80($sp)
/* 49B9D2C 8007F7FC 7800A68F */  lw         $a2, 0x78($sp)
/* 49B9D30 8007F800 7C00A78F */  lw         $a3, 0x7C($sp)
/* 49B9D34 8007F804 2128C002 */  addu       $a1, $s6, $zero
/* 49B9D38 8007F808 77D7000C */  jal        func_80035DDC
/* 49B9D3C 8007F80C 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_15_8007F810:
/* 49B9D40 8007F810 04004014 */  bnez       $v0, .Llevel_15_8007F824
/* 49B9D44 8007F814 23100200 */   negu      $v0, $v0
.Llevel_15_8007F818:
/* 49B9D48 8007F818 0200A106 */  bgez       $s5, .Llevel_15_8007F824
/* 49B9D4C 8007F81C 2110A002 */   addu      $v0, $s5, $zero
/* 49B9D50 8007F820 23100200 */  negu       $v0, $v0
.Llevel_15_8007F824:
/* 49B9D54 8007F824 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 49B9D58 8007F828 4800BE8F */  lw         $fp, 0x48($sp)
/* 49B9D5C 8007F82C 4400B78F */  lw         $s7, 0x44($sp)
/* 49B9D60 8007F830 4000B68F */  lw         $s6, 0x40($sp)
/* 49B9D64 8007F834 3C00B58F */  lw         $s5, 0x3C($sp)
/* 49B9D68 8007F838 3800B48F */  lw         $s4, 0x38($sp)
/* 49B9D6C 8007F83C 3400B38F */  lw         $s3, 0x34($sp)
/* 49B9D70 8007F840 3000B28F */  lw         $s2, 0x30($sp)
/* 49B9D74 8007F844 2C00B18F */  lw         $s1, 0x2C($sp)
/* 49B9D78 8007F848 2800B08F */  lw         $s0, 0x28($sp)
/* 49B9D7C 8007F84C 5000BD27 */  addiu      $sp, $sp, 0x50
/* 49B9D80 8007F850 0800E003 */  jr         $ra
/* 49B9D84 8007F854 00000000 */   nop
.size func_level_15_8007F53C, . - func_level_15_8007F53C
