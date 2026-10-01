.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_43_8008B598
/* 87B0AC8 8008B598 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 87B0ACC 8008B59C 3400B3AF */  sw         $s3, 0x34($sp)
/* 87B0AD0 8008B5A0 21988000 */  addu       $s3, $a0, $zero
/* 87B0AD4 8008B5A4 3800B4AF */  sw         $s4, 0x38($sp)
/* 87B0AD8 8008B5A8 21A0A000 */  addu       $s4, $a1, $zero
/* 87B0ADC 8008B5AC 4400B7AF */  sw         $s7, 0x44($sp)
/* 87B0AE0 8008B5B0 21B8C000 */  addu       $s7, $a2, $zero
/* 87B0AE4 8008B5B4 2800B0AF */  sw         $s0, 0x28($sp)
/* 87B0AE8 8008B5B8 2180E000 */  addu       $s0, $a3, $zero
/* 87B0AEC 8008B5BC 4000B6AF */  sw         $s6, 0x40($sp)
/* 87B0AF0 8008B5C0 6400B68F */  lw         $s6, 0x64($sp)
/* 87B0AF4 8008B5C4 21300000 */  addu       $a2, $zero, $zero
/* 87B0AF8 8008B5C8 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 87B0AFC 8008B5CC 4800BEAF */  sw         $fp, 0x48($sp)
/* 87B0B00 8008B5D0 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 87B0B04 8008B5D4 3000B2AF */  sw         $s2, 0x30($sp)
/* 87B0B08 8008B5D8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 87B0B0C 8008B5DC 0C00638E */  lw         $v1, 0xC($s3)
/* 87B0B10 8008B5E0 0000848E */  lw         $a0, 0x0($s4)
/* 87B0B14 8008B5E4 1000628E */  lw         $v0, 0x10($s3)
/* 87B0B18 8008B5E8 0400858E */  lw         $a1, 0x4($s4)
/* 87B0B1C 8008B5EC 6000B18F */  lw         $s1, 0x60($sp)
/* 87B0B20 8008B5F0 7000BE8F */  lw         $fp, 0x70($sp)
/* 87B0B24 8008B5F4 23206400 */  subu       $a0, $v1, $a0
/* 87B0B28 8008B5F8 203A010C */  jal        func_8004E880
/* 87B0B2C 8008B5FC 23284500 */   subu      $a1, $v0, $a1
/* 87B0B30 8008B600 21904000 */  addu       $s2, $v0, $zero
/* 87B0B34 8008B604 21200002 */  addu       $a0, $s0, $zero
/* 87B0B38 8008B608 4FD8000C */  jal        SubAngle8
/* 87B0B3C 8008B60C FF004532 */   andi      $a1, $s2, 0xFF
/* 87B0B40 8008B610 0C006426 */  addiu      $a0, $s3, 0xC
/* 87B0B44 8008B614 21288002 */  addu       $a1, $s4, $zero
/* 87B0B48 8008B618 CD3C010C */  jal        func_8004F334
/* 87B0B4C 8008B61C 21A84000 */   addu      $s5, $v0, $zero
/* 87B0B50 8008B620 21184000 */  addu       $v1, $v0, $zero
/* 87B0B54 8008B624 0200A106 */  bgez       $s5, .Llevel_43_8008B630
/* 87B0B58 8008B628 2110A002 */   addu      $v0, $s5, $zero
/* 87B0B5C 8008B62C 23100200 */  negu       $v0, $v0
.Llevel_43_8008B630:
/* 87B0B60 8008B630 2A105100 */  slt        $v0, $v0, $s1
/* 87B0B64 8008B634 07004010 */  beqz       $v0, .Llevel_43_8008B654
/* 87B0B68 8008B638 23107700 */   subu      $v0, $v1, $s7
/* 87B0B6C 8008B63C 03004104 */  bgez       $v0, .Llevel_43_8008B64C
/* 87B0B70 8008B640 C8004228 */   slti      $v0, $v0, 0xC8
/* 87B0B74 8008B644 2310E302 */  subu       $v0, $s7, $v1
/* 87B0B78 8008B648 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_43_8008B64C:
/* 87B0B7C 8008B64C 89004014 */  bnez       $v0, .Llevel_43_8008B874
/* 87B0B80 8008B650 00000000 */   nop
.Llevel_43_8008B654:
/* 87B0B84 8008B654 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87B0B88 8008B658 1200C213 */  beq        $fp, $v0, .Llevel_43_8008B6A4
/* 87B0B8C 8008B65C 00000000 */   nop
/* 87B0B90 8008B660 FF005032 */  andi       $s0, $s2, 0xFF
/* 87B0B94 8008B664 21200002 */  addu       $a0, $s0, $zero
/* 87B0B98 8008B668 993C010C */  jal        func_8004F264
/* 87B0B9C 8008B66C 2128C003 */   addu      $a1, $fp, $zero
/* 87B0BA0 8008B670 05004228 */  slti       $v0, $v0, 0x5
/* 87B0BA4 8008B674 0B004010 */  beqz       $v0, .Llevel_43_8008B6A4
/* 87B0BA8 8008B678 2120C003 */   addu      $a0, $fp, $zero
/* 87B0BAC 8008B67C 4FD8000C */  jal        SubAngle8
/* 87B0BB0 8008B680 21280002 */   addu      $a1, $s0, $zero
/* 87B0BB4 8008B684 0300A106 */  bgez       $s5, .Llevel_43_8008B694
/* 87B0BB8 8008B688 00000000 */   nop
/* 87B0BBC 8008B68C 1A004004 */  bltz       $v0, .Llevel_43_8008B6F8
/* 87B0BC0 8008B690 00000000 */   nop
.Llevel_43_8008B694:
/* 87B0BC4 8008B694 0300A01A */  blez       $s5, .Llevel_43_8008B6A4
/* 87B0BC8 8008B698 00000000 */   nop
/* 87B0BCC 8008B69C 7800401C */  bgtz       $v0, .Llevel_43_8008B880
/* 87B0BD0 8008B6A0 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_43_8008B6A4:
/* 87B0BD4 8008B6A4 7400A88F */  lw         $t0, 0x74($sp)
/* 87B0BD8 8008B6A8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87B0BDC 8008B6AC 14000211 */  beq        $t0, $v0, .Llevel_43_8008B700
/* 87B0BE0 8008B6B0 FF005032 */   andi      $s0, $s2, 0xFF
/* 87B0BE4 8008B6B4 7400A58F */  lw         $a1, 0x74($sp)
/* 87B0BE8 8008B6B8 993C010C */  jal        func_8004F264
/* 87B0BEC 8008B6BC 21200002 */   addu      $a0, $s0, $zero
/* 87B0BF0 8008B6C0 05004228 */  slti       $v0, $v0, 0x5
/* 87B0BF4 8008B6C4 0E004010 */  beqz       $v0, .Llevel_43_8008B700
/* 87B0BF8 8008B6C8 00000000 */   nop
/* 87B0BFC 8008B6CC 7400A48F */  lw         $a0, 0x74($sp)
/* 87B0C00 8008B6D0 4FD8000C */  jal        SubAngle8
/* 87B0C04 8008B6D4 21280002 */   addu      $a1, $s0, $zero
/* 87B0C08 8008B6D8 0300A106 */  bgez       $s5, .Llevel_43_8008B6E8
/* 87B0C0C 8008B6DC 00000000 */   nop
/* 87B0C10 8008B6E0 05004004 */  bltz       $v0, .Llevel_43_8008B6F8
/* 87B0C14 8008B6E4 00000000 */   nop
.Llevel_43_8008B6E8:
/* 87B0C18 8008B6E8 0500A01A */  blez       $s5, .Llevel_43_8008B700
/* 87B0C1C 8008B6EC 00000000 */   nop
/* 87B0C20 8008B6F0 03004018 */  blez       $v0, .Llevel_43_8008B700
/* 87B0C24 8008B6F4 00000000 */   nop
.Llevel_43_8008B6F8:
/* 87B0C28 8008B6F8 202E0208 */  j          .Llevel_43_8008B880
/* 87B0C2C 8008B6FC 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_43_8008B700:
/* 87B0C30 8008B700 0300A106 */  bgez       $s5, .Llevel_43_8008B710
/* 87B0C34 8008B704 00000000 */   nop
/* 87B0C38 8008B708 C52D0208 */  j          .Llevel_43_8008B714
/* 87B0C3C 8008B70C 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_43_8008B710:
/* 87B0C40 8008B710 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_43_8008B714:
/* 87B0C44 8008B714 FF004332 */  andi       $v1, $s2, 0xFF
/* 87B0C48 8008B718 40180300 */  sll        $v1, $v1, 1
/* 87B0C4C 8008B71C 0680013C */  lui        $at, %hi(D_80065920)
/* 87B0C50 8008B720 21082300 */  addu       $at, $at, $v1
/* 87B0C54 8008B724 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 87B0C58 8008B728 00000000 */  nop
/* 87B0C5C 8008B72C 18005700 */  mult       $v0, $s7
/* 87B0C60 8008B730 0000878E */  lw         $a3, 0x0($s4)
/* 87B0C64 8008B734 12400000 */  mflo       $t0
/* 87B0C68 8008B738 03130800 */  sra        $v0, $t0, 12
/* 87B0C6C 8008B73C 2138E200 */  addu       $a3, $a3, $v0
/* 87B0C70 8008B740 1800A7AF */  sw         $a3, 0x18($sp)
/* 87B0C74 8008B744 0680013C */  lui        $at, %hi(D_800658A0)
/* 87B0C78 8008B748 21082300 */  addu       $at, $at, $v1
/* 87B0C7C 8008B74C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 87B0C80 8008B750 00000000 */  nop
/* 87B0C84 8008B754 18005700 */  mult       $v0, $s7
/* 87B0C88 8008B758 21300000 */  addu       $a2, $zero, $zero
/* 87B0C8C 8008B75C 0400858E */  lw         $a1, 0x4($s4)
/* 87B0C90 8008B760 12400000 */  mflo       $t0
/* 87B0C94 8008B764 03130800 */  sra        $v0, $t0, 12
/* 87B0C98 8008B768 2128A200 */  addu       $a1, $a1, $v0
/* 87B0C9C 8008B76C 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 87B0CA0 8008B770 0C00648E */  lw         $a0, 0xC($s3)
/* 87B0CA4 8008B774 1000628E */  lw         $v0, 0x10($s3)
/* 87B0CA8 8008B778 2320E400 */  subu       $a0, $a3, $a0
/* 87B0CAC 8008B77C 203A010C */  jal        func_8004E880
/* 87B0CB0 8008B780 2328A200 */   subu      $a1, $a1, $v0
/* 87B0CB4 8008B784 21804000 */  addu       $s0, $v0, $zero
/* 87B0CB8 8008B788 0780033C */  lui        $v1, %hi(D_8006C648)
/* 87B0CBC 8008B78C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 87B0CC0 8008B790 03000224 */  addiu      $v0, $zero, 0x3
/* 87B0CC4 8008B794 04006214 */  bne        $v1, $v0, .Llevel_43_8008B7A8
/* 87B0CC8 8008B798 04000224 */   addiu     $v0, $zero, 0x4
/* 87B0CCC 8008B79C 43101600 */  sra        $v0, $s6, 1
/* 87B0CD0 8008B7A0 ED2D0208 */  j          .Llevel_43_8008B7B4
/* 87B0CD4 8008B7A4 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_43_8008B7A8:
/* 87B0CD8 8008B7A8 02006214 */  bne        $v1, $v0, .Llevel_43_8008B7B4
/* 87B0CDC 8008B7AC 00000000 */   nop
/* 87B0CE0 8008B7B0 40B01600 */  sll        $s6, $s6, 1
.Llevel_43_8008B7B4:
/* 87B0CE4 8008B7B4 8000A88F */  lw         $t0, 0x80($sp)
/* 87B0CE8 8008B7B8 00000000 */  nop
/* 87B0CEC 8008B7BC 08000231 */  andi       $v0, $t0, 0x8
/* 87B0CF0 8008B7C0 1A004010 */  beqz       $v0, .Llevel_43_8008B82C
/* 87B0CF4 8008B7C4 21300000 */   addu      $a2, $zero, $zero
/* 87B0CF8 8008B7C8 0000838E */  lw         $v1, 0x0($s4)
/* 87B0CFC 8008B7CC 0C00648E */  lw         $a0, 0xC($s3)
/* 87B0D00 8008B7D0 0400828E */  lw         $v0, 0x4($s4)
/* 87B0D04 8008B7D4 1000658E */  lw         $a1, 0x10($s3)
/* 87B0D08 8008B7D8 23206400 */  subu       $a0, $v1, $a0
/* 87B0D0C 8008B7DC 203A010C */  jal        func_8004E880
/* 87B0D10 8008B7E0 23284500 */   subu      $a1, $v0, $a1
/* 87B0D14 8008B7E4 21206002 */  addu       $a0, $s3, $zero
/* 87B0D18 8008B7E8 21284000 */  addu       $a1, $v0, $zero
/* 87B0D1C 8008B7EC 6800A68F */  lw         $a2, 0x68($sp)
/* 87B0D20 8008B7F0 21380000 */  addu       $a3, $zero, $zero
/* 87B0D24 8008B7F4 1000A0AF */  sw         $zero, 0x10($sp)
/* 87B0D28 8008B7F8 17D6000C */  jal        func_8003585C
/* 87B0D2C 8008B7FC 1400A0AF */   sw        $zero, 0x14($sp)
/* 87B0D30 8008B800 21206002 */  addu       $a0, $s3, $zero
/* 87B0D34 8008B804 7800A78F */  lw         $a3, 0x78($sp)
/* 87B0D38 8008B808 7C00A88F */  lw         $t0, 0x7C($sp)
/* 87B0D3C 8008B80C 21280002 */  addu       $a1, $s0, $zero
/* 87B0D40 8008B810 1000A8AF */  sw         $t0, 0x10($sp)
/* 87B0D44 8008B814 8000A88F */  lw         $t0, 0x80($sp)
/* 87B0D48 8008B818 2130C002 */  addu       $a2, $s6, $zero
/* 87B0D4C 8008B81C B8D7000C */  jal        func_80035EE0
/* 87B0D50 8008B820 1400A8AF */   sw        $t0, 0x14($sp)
/* 87B0D54 8008B824 1B2E0208 */  j          .Llevel_43_8008B86C
/* 87B0D58 8008B828 00000000 */   nop
.Llevel_43_8008B82C:
/* 87B0D5C 8008B82C 21206002 */  addu       $a0, $s3, $zero
/* 87B0D60 8008B830 21280002 */  addu       $a1, $s0, $zero
/* 87B0D64 8008B834 6800A68F */  lw         $a2, 0x68($sp)
/* 87B0D68 8008B838 6C00A78F */  lw         $a3, 0x6C($sp)
/* 87B0D6C 8008B83C 01000224 */  addiu      $v0, $zero, 0x1
/* 87B0D70 8008B840 1000A2AF */  sw         $v0, 0x10($sp)
/* 87B0D74 8008B844 17D6000C */  jal        func_8003585C
/* 87B0D78 8008B848 1400A0AF */   sw        $zero, 0x14($sp)
/* 87B0D7C 8008B84C 09004010 */  beqz       $v0, .Llevel_43_8008B874
/* 87B0D80 8008B850 21206002 */   addu      $a0, $s3, $zero
/* 87B0D84 8008B854 8000A88F */  lw         $t0, 0x80($sp)
/* 87B0D88 8008B858 7800A68F */  lw         $a2, 0x78($sp)
/* 87B0D8C 8008B85C 7C00A78F */  lw         $a3, 0x7C($sp)
/* 87B0D90 8008B860 2128C002 */  addu       $a1, $s6, $zero
/* 87B0D94 8008B864 77D7000C */  jal        func_80035DDC
/* 87B0D98 8008B868 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_43_8008B86C:
/* 87B0D9C 8008B86C 04004014 */  bnez       $v0, .Llevel_43_8008B880
/* 87B0DA0 8008B870 23100200 */   negu      $v0, $v0
.Llevel_43_8008B874:
/* 87B0DA4 8008B874 0200A106 */  bgez       $s5, .Llevel_43_8008B880
/* 87B0DA8 8008B878 2110A002 */   addu      $v0, $s5, $zero
/* 87B0DAC 8008B87C 23100200 */  negu       $v0, $v0
.Llevel_43_8008B880:
/* 87B0DB0 8008B880 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 87B0DB4 8008B884 4800BE8F */  lw         $fp, 0x48($sp)
/* 87B0DB8 8008B888 4400B78F */  lw         $s7, 0x44($sp)
/* 87B0DBC 8008B88C 4000B68F */  lw         $s6, 0x40($sp)
/* 87B0DC0 8008B890 3C00B58F */  lw         $s5, 0x3C($sp)
/* 87B0DC4 8008B894 3800B48F */  lw         $s4, 0x38($sp)
/* 87B0DC8 8008B898 3400B38F */  lw         $s3, 0x34($sp)
/* 87B0DCC 8008B89C 3000B28F */  lw         $s2, 0x30($sp)
/* 87B0DD0 8008B8A0 2C00B18F */  lw         $s1, 0x2C($sp)
/* 87B0DD4 8008B8A4 2800B08F */  lw         $s0, 0x28($sp)
/* 87B0DD8 8008B8A8 5000BD27 */  addiu      $sp, $sp, 0x50
/* 87B0DDC 8008B8AC 0800E003 */  jr         $ra
/* 87B0DE0 8008B8B0 00000000 */   nop
.size func_level_43_8008B598, . - func_level_43_8008B598
