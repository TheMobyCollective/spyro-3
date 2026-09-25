.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_18_80083ACC
/* 4EB67FC 80083ACC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 4EB6800 80083AD0 3400B3AF */  sw         $s3, 0x34($sp)
/* 4EB6804 80083AD4 21988000 */  addu       $s3, $a0, $zero
/* 4EB6808 80083AD8 3800B4AF */  sw         $s4, 0x38($sp)
/* 4EB680C 80083ADC 21A0A000 */  addu       $s4, $a1, $zero
/* 4EB6810 80083AE0 4400B7AF */  sw         $s7, 0x44($sp)
/* 4EB6814 80083AE4 21B8C000 */  addu       $s7, $a2, $zero
/* 4EB6818 80083AE8 2800B0AF */  sw         $s0, 0x28($sp)
/* 4EB681C 80083AEC 2180E000 */  addu       $s0, $a3, $zero
/* 4EB6820 80083AF0 4000B6AF */  sw         $s6, 0x40($sp)
/* 4EB6824 80083AF4 6400B68F */  lw         $s6, 0x64($sp)
/* 4EB6828 80083AF8 21300000 */  addu       $a2, $zero, $zero
/* 4EB682C 80083AFC 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 4EB6830 80083B00 4800BEAF */  sw         $fp, 0x48($sp)
/* 4EB6834 80083B04 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 4EB6838 80083B08 3000B2AF */  sw         $s2, 0x30($sp)
/* 4EB683C 80083B0C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 4EB6840 80083B10 0C00638E */  lw         $v1, 0xC($s3)
/* 4EB6844 80083B14 0000848E */  lw         $a0, 0x0($s4)
/* 4EB6848 80083B18 1000628E */  lw         $v0, 0x10($s3)
/* 4EB684C 80083B1C 0400858E */  lw         $a1, 0x4($s4)
/* 4EB6850 80083B20 6000B18F */  lw         $s1, 0x60($sp)
/* 4EB6854 80083B24 7000BE8F */  lw         $fp, 0x70($sp)
/* 4EB6858 80083B28 23206400 */  subu       $a0, $v1, $a0
/* 4EB685C 80083B2C 203A010C */  jal        func_8004E880
/* 4EB6860 80083B30 23284500 */   subu      $a1, $v0, $a1
/* 4EB6864 80083B34 21904000 */  addu       $s2, $v0, $zero
/* 4EB6868 80083B38 21200002 */  addu       $a0, $s0, $zero
/* 4EB686C 80083B3C 4FD8000C */  jal        SubAngle8
/* 4EB6870 80083B40 FF004532 */   andi      $a1, $s2, 0xFF
/* 4EB6874 80083B44 0C006426 */  addiu      $a0, $s3, 0xC
/* 4EB6878 80083B48 21288002 */  addu       $a1, $s4, $zero
/* 4EB687C 80083B4C CD3C010C */  jal        func_8004F334
/* 4EB6880 80083B50 21A84000 */   addu      $s5, $v0, $zero
/* 4EB6884 80083B54 21184000 */  addu       $v1, $v0, $zero
/* 4EB6888 80083B58 0200A106 */  bgez       $s5, .Llevel_18_80083B64
/* 4EB688C 80083B5C 2110A002 */   addu      $v0, $s5, $zero
/* 4EB6890 80083B60 23100200 */  negu       $v0, $v0
.Llevel_18_80083B64:
/* 4EB6894 80083B64 2A105100 */  slt        $v0, $v0, $s1
/* 4EB6898 80083B68 07004010 */  beqz       $v0, .Llevel_18_80083B88
/* 4EB689C 80083B6C 23107700 */   subu      $v0, $v1, $s7
/* 4EB68A0 80083B70 03004104 */  bgez       $v0, .Llevel_18_80083B80
/* 4EB68A4 80083B74 C8004228 */   slti      $v0, $v0, 0xC8
/* 4EB68A8 80083B78 2310E302 */  subu       $v0, $s7, $v1
/* 4EB68AC 80083B7C C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_18_80083B80:
/* 4EB68B0 80083B80 89004014 */  bnez       $v0, .Llevel_18_80083DA8
/* 4EB68B4 80083B84 00000000 */   nop
.Llevel_18_80083B88:
/* 4EB68B8 80083B88 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4EB68BC 80083B8C 1200C213 */  beq        $fp, $v0, .Llevel_18_80083BD8
/* 4EB68C0 80083B90 00000000 */   nop
/* 4EB68C4 80083B94 FF005032 */  andi       $s0, $s2, 0xFF
/* 4EB68C8 80083B98 21200002 */  addu       $a0, $s0, $zero
/* 4EB68CC 80083B9C 993C010C */  jal        func_8004F264
/* 4EB68D0 80083BA0 2128C003 */   addu      $a1, $fp, $zero
/* 4EB68D4 80083BA4 05004228 */  slti       $v0, $v0, 0x5
/* 4EB68D8 80083BA8 0B004010 */  beqz       $v0, .Llevel_18_80083BD8
/* 4EB68DC 80083BAC 2120C003 */   addu      $a0, $fp, $zero
/* 4EB68E0 80083BB0 4FD8000C */  jal        SubAngle8
/* 4EB68E4 80083BB4 21280002 */   addu      $a1, $s0, $zero
/* 4EB68E8 80083BB8 0300A106 */  bgez       $s5, .Llevel_18_80083BC8
/* 4EB68EC 80083BBC 00000000 */   nop
/* 4EB68F0 80083BC0 1A004004 */  bltz       $v0, .Llevel_18_80083C2C
/* 4EB68F4 80083BC4 00000000 */   nop
.Llevel_18_80083BC8:
/* 4EB68F8 80083BC8 0300A01A */  blez       $s5, .Llevel_18_80083BD8
/* 4EB68FC 80083BCC 00000000 */   nop
/* 4EB6900 80083BD0 7800401C */  bgtz       $v0, .Llevel_18_80083DB4
/* 4EB6904 80083BD4 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_18_80083BD8:
/* 4EB6908 80083BD8 7400A88F */  lw         $t0, 0x74($sp)
/* 4EB690C 80083BDC FF000224 */  addiu      $v0, $zero, 0xFF
/* 4EB6910 80083BE0 14000211 */  beq        $t0, $v0, .Llevel_18_80083C34
/* 4EB6914 80083BE4 FF005032 */   andi      $s0, $s2, 0xFF
/* 4EB6918 80083BE8 7400A58F */  lw         $a1, 0x74($sp)
/* 4EB691C 80083BEC 993C010C */  jal        func_8004F264
/* 4EB6920 80083BF0 21200002 */   addu      $a0, $s0, $zero
/* 4EB6924 80083BF4 05004228 */  slti       $v0, $v0, 0x5
/* 4EB6928 80083BF8 0E004010 */  beqz       $v0, .Llevel_18_80083C34
/* 4EB692C 80083BFC 00000000 */   nop
/* 4EB6930 80083C00 7400A48F */  lw         $a0, 0x74($sp)
/* 4EB6934 80083C04 4FD8000C */  jal        SubAngle8
/* 4EB6938 80083C08 21280002 */   addu      $a1, $s0, $zero
/* 4EB693C 80083C0C 0300A106 */  bgez       $s5, .Llevel_18_80083C1C
/* 4EB6940 80083C10 00000000 */   nop
/* 4EB6944 80083C14 05004004 */  bltz       $v0, .Llevel_18_80083C2C
/* 4EB6948 80083C18 00000000 */   nop
.Llevel_18_80083C1C:
/* 4EB694C 80083C1C 0500A01A */  blez       $s5, .Llevel_18_80083C34
/* 4EB6950 80083C20 00000000 */   nop
/* 4EB6954 80083C24 03004018 */  blez       $v0, .Llevel_18_80083C34
/* 4EB6958 80083C28 00000000 */   nop
.Llevel_18_80083C2C:
/* 4EB695C 80083C2C 6D0F0208 */  j          .Llevel_18_80083DB4
/* 4EB6960 80083C30 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_18_80083C34:
/* 4EB6964 80083C34 0300A106 */  bgez       $s5, .Llevel_18_80083C44
/* 4EB6968 80083C38 00000000 */   nop
/* 4EB696C 80083C3C 120F0208 */  j          .Llevel_18_80083C48
/* 4EB6970 80083C40 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_18_80083C44:
/* 4EB6974 80083C44 FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_18_80083C48:
/* 4EB6978 80083C48 FF004332 */  andi       $v1, $s2, 0xFF
/* 4EB697C 80083C4C 40180300 */  sll        $v1, $v1, 1
/* 4EB6980 80083C50 0680013C */  lui        $at, %hi(D_80065920)
/* 4EB6984 80083C54 21082300 */  addu       $at, $at, $v1
/* 4EB6988 80083C58 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 4EB698C 80083C5C 00000000 */  nop
/* 4EB6990 80083C60 18005700 */  mult       $v0, $s7
/* 4EB6994 80083C64 0000878E */  lw         $a3, 0x0($s4)
/* 4EB6998 80083C68 12400000 */  mflo       $t0
/* 4EB699C 80083C6C 03130800 */  sra        $v0, $t0, 12
/* 4EB69A0 80083C70 2138E200 */  addu       $a3, $a3, $v0
/* 4EB69A4 80083C74 1800A7AF */  sw         $a3, 0x18($sp)
/* 4EB69A8 80083C78 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB69AC 80083C7C 21082300 */  addu       $at, $at, $v1
/* 4EB69B0 80083C80 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EB69B4 80083C84 00000000 */  nop
/* 4EB69B8 80083C88 18005700 */  mult       $v0, $s7
/* 4EB69BC 80083C8C 21300000 */  addu       $a2, $zero, $zero
/* 4EB69C0 80083C90 0400858E */  lw         $a1, 0x4($s4)
/* 4EB69C4 80083C94 12400000 */  mflo       $t0
/* 4EB69C8 80083C98 03130800 */  sra        $v0, $t0, 12
/* 4EB69CC 80083C9C 2128A200 */  addu       $a1, $a1, $v0
/* 4EB69D0 80083CA0 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 4EB69D4 80083CA4 0C00648E */  lw         $a0, 0xC($s3)
/* 4EB69D8 80083CA8 1000628E */  lw         $v0, 0x10($s3)
/* 4EB69DC 80083CAC 2320E400 */  subu       $a0, $a3, $a0
/* 4EB69E0 80083CB0 203A010C */  jal        func_8004E880
/* 4EB69E4 80083CB4 2328A200 */   subu      $a1, $a1, $v0
/* 4EB69E8 80083CB8 21804000 */  addu       $s0, $v0, $zero
/* 4EB69EC 80083CBC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 4EB69F0 80083CC0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 4EB69F4 80083CC4 03000224 */  addiu      $v0, $zero, 0x3
/* 4EB69F8 80083CC8 04006214 */  bne        $v1, $v0, .Llevel_18_80083CDC
/* 4EB69FC 80083CCC 04000224 */   addiu     $v0, $zero, 0x4
/* 4EB6A00 80083CD0 43101600 */  sra        $v0, $s6, 1
/* 4EB6A04 80083CD4 3A0F0208 */  j          .Llevel_18_80083CE8
/* 4EB6A08 80083CD8 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_18_80083CDC:
/* 4EB6A0C 80083CDC 02006214 */  bne        $v1, $v0, .Llevel_18_80083CE8
/* 4EB6A10 80083CE0 00000000 */   nop
/* 4EB6A14 80083CE4 40B01600 */  sll        $s6, $s6, 1
.Llevel_18_80083CE8:
/* 4EB6A18 80083CE8 8000A88F */  lw         $t0, 0x80($sp)
/* 4EB6A1C 80083CEC 00000000 */  nop
/* 4EB6A20 80083CF0 08000231 */  andi       $v0, $t0, 0x8
/* 4EB6A24 80083CF4 1A004010 */  beqz       $v0, .Llevel_18_80083D60
/* 4EB6A28 80083CF8 21300000 */   addu      $a2, $zero, $zero
/* 4EB6A2C 80083CFC 0000838E */  lw         $v1, 0x0($s4)
/* 4EB6A30 80083D00 0C00648E */  lw         $a0, 0xC($s3)
/* 4EB6A34 80083D04 0400828E */  lw         $v0, 0x4($s4)
/* 4EB6A38 80083D08 1000658E */  lw         $a1, 0x10($s3)
/* 4EB6A3C 80083D0C 23206400 */  subu       $a0, $v1, $a0
/* 4EB6A40 80083D10 203A010C */  jal        func_8004E880
/* 4EB6A44 80083D14 23284500 */   subu      $a1, $v0, $a1
/* 4EB6A48 80083D18 21206002 */  addu       $a0, $s3, $zero
/* 4EB6A4C 80083D1C 21284000 */  addu       $a1, $v0, $zero
/* 4EB6A50 80083D20 6800A68F */  lw         $a2, 0x68($sp)
/* 4EB6A54 80083D24 21380000 */  addu       $a3, $zero, $zero
/* 4EB6A58 80083D28 1000A0AF */  sw         $zero, 0x10($sp)
/* 4EB6A5C 80083D2C 17D6000C */  jal        func_8003585C
/* 4EB6A60 80083D30 1400A0AF */   sw        $zero, 0x14($sp)
/* 4EB6A64 80083D34 21206002 */  addu       $a0, $s3, $zero
/* 4EB6A68 80083D38 7800A78F */  lw         $a3, 0x78($sp)
/* 4EB6A6C 80083D3C 7C00A88F */  lw         $t0, 0x7C($sp)
/* 4EB6A70 80083D40 21280002 */  addu       $a1, $s0, $zero
/* 4EB6A74 80083D44 1000A8AF */  sw         $t0, 0x10($sp)
/* 4EB6A78 80083D48 8000A88F */  lw         $t0, 0x80($sp)
/* 4EB6A7C 80083D4C 2130C002 */  addu       $a2, $s6, $zero
/* 4EB6A80 80083D50 B8D7000C */  jal        func_80035EE0
/* 4EB6A84 80083D54 1400A8AF */   sw        $t0, 0x14($sp)
/* 4EB6A88 80083D58 680F0208 */  j          .Llevel_18_80083DA0
/* 4EB6A8C 80083D5C 00000000 */   nop
.Llevel_18_80083D60:
/* 4EB6A90 80083D60 21206002 */  addu       $a0, $s3, $zero
/* 4EB6A94 80083D64 21280002 */  addu       $a1, $s0, $zero
/* 4EB6A98 80083D68 6800A68F */  lw         $a2, 0x68($sp)
/* 4EB6A9C 80083D6C 6C00A78F */  lw         $a3, 0x6C($sp)
/* 4EB6AA0 80083D70 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB6AA4 80083D74 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EB6AA8 80083D78 17D6000C */  jal        func_8003585C
/* 4EB6AAC 80083D7C 1400A0AF */   sw        $zero, 0x14($sp)
/* 4EB6AB0 80083D80 09004010 */  beqz       $v0, .Llevel_18_80083DA8
/* 4EB6AB4 80083D84 21206002 */   addu      $a0, $s3, $zero
/* 4EB6AB8 80083D88 8000A88F */  lw         $t0, 0x80($sp)
/* 4EB6ABC 80083D8C 7800A68F */  lw         $a2, 0x78($sp)
/* 4EB6AC0 80083D90 7C00A78F */  lw         $a3, 0x7C($sp)
/* 4EB6AC4 80083D94 2128C002 */  addu       $a1, $s6, $zero
/* 4EB6AC8 80083D98 77D7000C */  jal        func_80035DDC
/* 4EB6ACC 80083D9C 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_18_80083DA0:
/* 4EB6AD0 80083DA0 04004014 */  bnez       $v0, .Llevel_18_80083DB4
/* 4EB6AD4 80083DA4 23100200 */   negu      $v0, $v0
.Llevel_18_80083DA8:
/* 4EB6AD8 80083DA8 0200A106 */  bgez       $s5, .Llevel_18_80083DB4
/* 4EB6ADC 80083DAC 2110A002 */   addu      $v0, $s5, $zero
/* 4EB6AE0 80083DB0 23100200 */  negu       $v0, $v0
.Llevel_18_80083DB4:
/* 4EB6AE4 80083DB4 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 4EB6AE8 80083DB8 4800BE8F */  lw         $fp, 0x48($sp)
/* 4EB6AEC 80083DBC 4400B78F */  lw         $s7, 0x44($sp)
/* 4EB6AF0 80083DC0 4000B68F */  lw         $s6, 0x40($sp)
/* 4EB6AF4 80083DC4 3C00B58F */  lw         $s5, 0x3C($sp)
/* 4EB6AF8 80083DC8 3800B48F */  lw         $s4, 0x38($sp)
/* 4EB6AFC 80083DCC 3400B38F */  lw         $s3, 0x34($sp)
/* 4EB6B00 80083DD0 3000B28F */  lw         $s2, 0x30($sp)
/* 4EB6B04 80083DD4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 4EB6B08 80083DD8 2800B08F */  lw         $s0, 0x28($sp)
/* 4EB6B0C 80083DDC 5000BD27 */  addiu      $sp, $sp, 0x50
/* 4EB6B10 80083DE0 0800E003 */  jr         $ra
/* 4EB6B14 80083DE4 00000000 */   nop
.size func_level_18_80083ACC, . - func_level_18_80083ACC
