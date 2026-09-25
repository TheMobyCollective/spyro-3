.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_80084034
/* 3AE8D64 80084034 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 3AE8D68 80084038 3400B3AF */  sw         $s3, 0x34($sp)
/* 3AE8D6C 8008403C 21988000 */  addu       $s3, $a0, $zero
/* 3AE8D70 80084040 3800B4AF */  sw         $s4, 0x38($sp)
/* 3AE8D74 80084044 21A0A000 */  addu       $s4, $a1, $zero
/* 3AE8D78 80084048 4400B7AF */  sw         $s7, 0x44($sp)
/* 3AE8D7C 8008404C 21B8C000 */  addu       $s7, $a2, $zero
/* 3AE8D80 80084050 2800B0AF */  sw         $s0, 0x28($sp)
/* 3AE8D84 80084054 2180E000 */  addu       $s0, $a3, $zero
/* 3AE8D88 80084058 4000B6AF */  sw         $s6, 0x40($sp)
/* 3AE8D8C 8008405C 6400B68F */  lw         $s6, 0x64($sp)
/* 3AE8D90 80084060 21300000 */  addu       $a2, $zero, $zero
/* 3AE8D94 80084064 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 3AE8D98 80084068 4800BEAF */  sw         $fp, 0x48($sp)
/* 3AE8D9C 8008406C 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 3AE8DA0 80084070 3000B2AF */  sw         $s2, 0x30($sp)
/* 3AE8DA4 80084074 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 3AE8DA8 80084078 0C00638E */  lw         $v1, 0xC($s3)
/* 3AE8DAC 8008407C 0000848E */  lw         $a0, 0x0($s4)
/* 3AE8DB0 80084080 1000628E */  lw         $v0, 0x10($s3)
/* 3AE8DB4 80084084 0400858E */  lw         $a1, 0x4($s4)
/* 3AE8DB8 80084088 6000B18F */  lw         $s1, 0x60($sp)
/* 3AE8DBC 8008408C 7000BE8F */  lw         $fp, 0x70($sp)
/* 3AE8DC0 80084090 23206400 */  subu       $a0, $v1, $a0
/* 3AE8DC4 80084094 203A010C */  jal        func_8004E880
/* 3AE8DC8 80084098 23284500 */   subu      $a1, $v0, $a1
/* 3AE8DCC 8008409C 21904000 */  addu       $s2, $v0, $zero
/* 3AE8DD0 800840A0 21200002 */  addu       $a0, $s0, $zero
/* 3AE8DD4 800840A4 4FD8000C */  jal        SubAngle8
/* 3AE8DD8 800840A8 FF004532 */   andi      $a1, $s2, 0xFF
/* 3AE8DDC 800840AC 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE8DE0 800840B0 21288002 */  addu       $a1, $s4, $zero
/* 3AE8DE4 800840B4 CD3C010C */  jal        func_8004F334
/* 3AE8DE8 800840B8 21A84000 */   addu      $s5, $v0, $zero
/* 3AE8DEC 800840BC 21184000 */  addu       $v1, $v0, $zero
/* 3AE8DF0 800840C0 0200A106 */  bgez       $s5, .Llevel_10_800840CC
/* 3AE8DF4 800840C4 2110A002 */   addu      $v0, $s5, $zero
/* 3AE8DF8 800840C8 23100200 */  negu       $v0, $v0
.Llevel_10_800840CC:
/* 3AE8DFC 800840CC 2A105100 */  slt        $v0, $v0, $s1
/* 3AE8E00 800840D0 07004010 */  beqz       $v0, .Llevel_10_800840F0
/* 3AE8E04 800840D4 23107700 */   subu      $v0, $v1, $s7
/* 3AE8E08 800840D8 03004104 */  bgez       $v0, .Llevel_10_800840E8
/* 3AE8E0C 800840DC C8004228 */   slti      $v0, $v0, 0xC8
/* 3AE8E10 800840E0 2310E302 */  subu       $v0, $s7, $v1
/* 3AE8E14 800840E4 C8004228 */  slti       $v0, $v0, 0xC8
.Llevel_10_800840E8:
/* 3AE8E18 800840E8 89004014 */  bnez       $v0, .Llevel_10_80084310
/* 3AE8E1C 800840EC 00000000 */   nop
.Llevel_10_800840F0:
/* 3AE8E20 800840F0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3AE8E24 800840F4 1200C213 */  beq        $fp, $v0, .Llevel_10_80084140
/* 3AE8E28 800840F8 00000000 */   nop
/* 3AE8E2C 800840FC FF005032 */  andi       $s0, $s2, 0xFF
/* 3AE8E30 80084100 21200002 */  addu       $a0, $s0, $zero
/* 3AE8E34 80084104 993C010C */  jal        func_8004F264
/* 3AE8E38 80084108 2128C003 */   addu      $a1, $fp, $zero
/* 3AE8E3C 8008410C 05004228 */  slti       $v0, $v0, 0x5
/* 3AE8E40 80084110 0B004010 */  beqz       $v0, .Llevel_10_80084140
/* 3AE8E44 80084114 2120C003 */   addu      $a0, $fp, $zero
/* 3AE8E48 80084118 4FD8000C */  jal        SubAngle8
/* 3AE8E4C 8008411C 21280002 */   addu      $a1, $s0, $zero
/* 3AE8E50 80084120 0300A106 */  bgez       $s5, .Llevel_10_80084130
/* 3AE8E54 80084124 00000000 */   nop
/* 3AE8E58 80084128 1A004004 */  bltz       $v0, .Llevel_10_80084194
/* 3AE8E5C 8008412C 00000000 */   nop
.Llevel_10_80084130:
/* 3AE8E60 80084130 0300A01A */  blez       $s5, .Llevel_10_80084140
/* 3AE8E64 80084134 00000000 */   nop
/* 3AE8E68 80084138 7800401C */  bgtz       $v0, .Llevel_10_8008431C
/* 3AE8E6C 8008413C 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_10_80084140:
/* 3AE8E70 80084140 7400A88F */  lw         $t0, 0x74($sp)
/* 3AE8E74 80084144 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3AE8E78 80084148 14000211 */  beq        $t0, $v0, .Llevel_10_8008419C
/* 3AE8E7C 8008414C FF005032 */   andi      $s0, $s2, 0xFF
/* 3AE8E80 80084150 7400A58F */  lw         $a1, 0x74($sp)
/* 3AE8E84 80084154 993C010C */  jal        func_8004F264
/* 3AE8E88 80084158 21200002 */   addu      $a0, $s0, $zero
/* 3AE8E8C 8008415C 05004228 */  slti       $v0, $v0, 0x5
/* 3AE8E90 80084160 0E004010 */  beqz       $v0, .Llevel_10_8008419C
/* 3AE8E94 80084164 00000000 */   nop
/* 3AE8E98 80084168 7400A48F */  lw         $a0, 0x74($sp)
/* 3AE8E9C 8008416C 4FD8000C */  jal        SubAngle8
/* 3AE8EA0 80084170 21280002 */   addu      $a1, $s0, $zero
/* 3AE8EA4 80084174 0300A106 */  bgez       $s5, .Llevel_10_80084184
/* 3AE8EA8 80084178 00000000 */   nop
/* 3AE8EAC 8008417C 05004004 */  bltz       $v0, .Llevel_10_80084194
/* 3AE8EB0 80084180 00000000 */   nop
.Llevel_10_80084184:
/* 3AE8EB4 80084184 0500A01A */  blez       $s5, .Llevel_10_8008419C
/* 3AE8EB8 80084188 00000000 */   nop
/* 3AE8EBC 8008418C 03004018 */  blez       $v0, .Llevel_10_8008419C
/* 3AE8EC0 80084190 00000000 */   nop
.Llevel_10_80084194:
/* 3AE8EC4 80084194 C7100208 */  j          .Llevel_10_8008431C
/* 3AE8EC8 80084198 00010224 */   addiu     $v0, $zero, 0x100
.Llevel_10_8008419C:
/* 3AE8ECC 8008419C 0300A106 */  bgez       $s5, .Llevel_10_800841AC
/* 3AE8ED0 800841A0 00000000 */   nop
/* 3AE8ED4 800841A4 6C100208 */  j          .Llevel_10_800841B0
/* 3AE8ED8 800841A8 03005226 */   addiu     $s2, $s2, 0x3
.Llevel_10_800841AC:
/* 3AE8EDC 800841AC FDFF5226 */  addiu      $s2, $s2, -0x3
.Llevel_10_800841B0:
/* 3AE8EE0 800841B0 FF004332 */  andi       $v1, $s2, 0xFF
/* 3AE8EE4 800841B4 40180300 */  sll        $v1, $v1, 1
/* 3AE8EE8 800841B8 0680013C */  lui        $at, %hi(D_80065920)
/* 3AE8EEC 800841BC 21082300 */  addu       $at, $at, $v1
/* 3AE8EF0 800841C0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 3AE8EF4 800841C4 00000000 */  nop
/* 3AE8EF8 800841C8 18005700 */  mult       $v0, $s7
/* 3AE8EFC 800841CC 0000878E */  lw         $a3, 0x0($s4)
/* 3AE8F00 800841D0 12400000 */  mflo       $t0
/* 3AE8F04 800841D4 03130800 */  sra        $v0, $t0, 12
/* 3AE8F08 800841D8 2138E200 */  addu       $a3, $a3, $v0
/* 3AE8F0C 800841DC 1800A7AF */  sw         $a3, 0x18($sp)
/* 3AE8F10 800841E0 0680013C */  lui        $at, %hi(D_800658A0)
/* 3AE8F14 800841E4 21082300 */  addu       $at, $at, $v1
/* 3AE8F18 800841E8 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 3AE8F1C 800841EC 00000000 */  nop
/* 3AE8F20 800841F0 18005700 */  mult       $v0, $s7
/* 3AE8F24 800841F4 21300000 */  addu       $a2, $zero, $zero
/* 3AE8F28 800841F8 0400858E */  lw         $a1, 0x4($s4)
/* 3AE8F2C 800841FC 12400000 */  mflo       $t0
/* 3AE8F30 80084200 03130800 */  sra        $v0, $t0, 12
/* 3AE8F34 80084204 2128A200 */  addu       $a1, $a1, $v0
/* 3AE8F38 80084208 1C00A5AF */  sw         $a1, 0x1C($sp)
/* 3AE8F3C 8008420C 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE8F40 80084210 1000628E */  lw         $v0, 0x10($s3)
/* 3AE8F44 80084214 2320E400 */  subu       $a0, $a3, $a0
/* 3AE8F48 80084218 203A010C */  jal        func_8004E880
/* 3AE8F4C 8008421C 2328A200 */   subu      $a1, $a1, $v0
/* 3AE8F50 80084220 21804000 */  addu       $s0, $v0, $zero
/* 3AE8F54 80084224 0780033C */  lui        $v1, %hi(D_8006C648)
/* 3AE8F58 80084228 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 3AE8F5C 8008422C 03000224 */  addiu      $v0, $zero, 0x3
/* 3AE8F60 80084230 04006214 */  bne        $v1, $v0, .Llevel_10_80084244
/* 3AE8F64 80084234 04000224 */   addiu     $v0, $zero, 0x4
/* 3AE8F68 80084238 43101600 */  sra        $v0, $s6, 1
/* 3AE8F6C 8008423C 94100208 */  j          .Llevel_10_80084250
/* 3AE8F70 80084240 21B0C202 */   addu      $s6, $s6, $v0
.Llevel_10_80084244:
/* 3AE8F74 80084244 02006214 */  bne        $v1, $v0, .Llevel_10_80084250
/* 3AE8F78 80084248 00000000 */   nop
/* 3AE8F7C 8008424C 40B01600 */  sll        $s6, $s6, 1
.Llevel_10_80084250:
/* 3AE8F80 80084250 8000A88F */  lw         $t0, 0x80($sp)
/* 3AE8F84 80084254 00000000 */  nop
/* 3AE8F88 80084258 08000231 */  andi       $v0, $t0, 0x8
/* 3AE8F8C 8008425C 1A004010 */  beqz       $v0, .Llevel_10_800842C8
/* 3AE8F90 80084260 21300000 */   addu      $a2, $zero, $zero
/* 3AE8F94 80084264 0000838E */  lw         $v1, 0x0($s4)
/* 3AE8F98 80084268 0C00648E */  lw         $a0, 0xC($s3)
/* 3AE8F9C 8008426C 0400828E */  lw         $v0, 0x4($s4)
/* 3AE8FA0 80084270 1000658E */  lw         $a1, 0x10($s3)
/* 3AE8FA4 80084274 23206400 */  subu       $a0, $v1, $a0
/* 3AE8FA8 80084278 203A010C */  jal        func_8004E880
/* 3AE8FAC 8008427C 23284500 */   subu      $a1, $v0, $a1
/* 3AE8FB0 80084280 21206002 */  addu       $a0, $s3, $zero
/* 3AE8FB4 80084284 21284000 */  addu       $a1, $v0, $zero
/* 3AE8FB8 80084288 6800A68F */  lw         $a2, 0x68($sp)
/* 3AE8FBC 8008428C 21380000 */  addu       $a3, $zero, $zero
/* 3AE8FC0 80084290 1000A0AF */  sw         $zero, 0x10($sp)
/* 3AE8FC4 80084294 17D6000C */  jal        func_8003585C
/* 3AE8FC8 80084298 1400A0AF */   sw        $zero, 0x14($sp)
/* 3AE8FCC 8008429C 21206002 */  addu       $a0, $s3, $zero
/* 3AE8FD0 800842A0 7800A78F */  lw         $a3, 0x78($sp)
/* 3AE8FD4 800842A4 7C00A88F */  lw         $t0, 0x7C($sp)
/* 3AE8FD8 800842A8 21280002 */  addu       $a1, $s0, $zero
/* 3AE8FDC 800842AC 1000A8AF */  sw         $t0, 0x10($sp)
/* 3AE8FE0 800842B0 8000A88F */  lw         $t0, 0x80($sp)
/* 3AE8FE4 800842B4 2130C002 */  addu       $a2, $s6, $zero
/* 3AE8FE8 800842B8 B8D7000C */  jal        func_80035EE0
/* 3AE8FEC 800842BC 1400A8AF */   sw        $t0, 0x14($sp)
/* 3AE8FF0 800842C0 C2100208 */  j          .Llevel_10_80084308
/* 3AE8FF4 800842C4 00000000 */   nop
.Llevel_10_800842C8:
/* 3AE8FF8 800842C8 21206002 */  addu       $a0, $s3, $zero
/* 3AE8FFC 800842CC 21280002 */  addu       $a1, $s0, $zero
/* 3AE9000 800842D0 6800A68F */  lw         $a2, 0x68($sp)
/* 3AE9004 800842D4 6C00A78F */  lw         $a3, 0x6C($sp)
/* 3AE9008 800842D8 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE900C 800842DC 1000A2AF */  sw         $v0, 0x10($sp)
/* 3AE9010 800842E0 17D6000C */  jal        func_8003585C
/* 3AE9014 800842E4 1400A0AF */   sw        $zero, 0x14($sp)
/* 3AE9018 800842E8 09004010 */  beqz       $v0, .Llevel_10_80084310
/* 3AE901C 800842EC 21206002 */   addu      $a0, $s3, $zero
/* 3AE9020 800842F0 8000A88F */  lw         $t0, 0x80($sp)
/* 3AE9024 800842F4 7800A68F */  lw         $a2, 0x78($sp)
/* 3AE9028 800842F8 7C00A78F */  lw         $a3, 0x7C($sp)
/* 3AE902C 800842FC 2128C002 */  addu       $a1, $s6, $zero
/* 3AE9030 80084300 77D7000C */  jal        func_80035DDC
/* 3AE9034 80084304 1000A8AF */   sw        $t0, 0x10($sp)
.Llevel_10_80084308:
/* 3AE9038 80084308 04004014 */  bnez       $v0, .Llevel_10_8008431C
/* 3AE903C 8008430C 23100200 */   negu      $v0, $v0
.Llevel_10_80084310:
/* 3AE9040 80084310 0200A106 */  bgez       $s5, .Llevel_10_8008431C
/* 3AE9044 80084314 2110A002 */   addu      $v0, $s5, $zero
/* 3AE9048 80084318 23100200 */  negu       $v0, $v0
.Llevel_10_8008431C:
/* 3AE904C 8008431C 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 3AE9050 80084320 4800BE8F */  lw         $fp, 0x48($sp)
/* 3AE9054 80084324 4400B78F */  lw         $s7, 0x44($sp)
/* 3AE9058 80084328 4000B68F */  lw         $s6, 0x40($sp)
/* 3AE905C 8008432C 3C00B58F */  lw         $s5, 0x3C($sp)
/* 3AE9060 80084330 3800B48F */  lw         $s4, 0x38($sp)
/* 3AE9064 80084334 3400B38F */  lw         $s3, 0x34($sp)
/* 3AE9068 80084338 3000B28F */  lw         $s2, 0x30($sp)
/* 3AE906C 8008433C 2C00B18F */  lw         $s1, 0x2C($sp)
/* 3AE9070 80084340 2800B08F */  lw         $s0, 0x28($sp)
/* 3AE9074 80084344 5000BD27 */  addiu      $sp, $sp, 0x50
/* 3AE9078 80084348 0800E003 */  jr         $ra
/* 3AE907C 8008434C 00000000 */   nop
.size func_level_10_80084034, . - func_level_10_80084034
