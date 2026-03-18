.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_18_80080E30
/* 4EB3B60 80080E30 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 4EB3B64 80080E34 6000B2AF */  sw         $s2, 0x60($sp)
/* 4EB3B68 80080E38 21908000 */  addu       $s2, $a0, $zero
/* 4EB3B6C 80080E3C 7400BFAF */  sw         $ra, 0x74($sp)
/* 4EB3B70 80080E40 7000B6AF */  sw         $s6, 0x70($sp)
/* 4EB3B74 80080E44 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 4EB3B78 80080E48 6800B4AF */  sw         $s4, 0x68($sp)
/* 4EB3B7C 80080E4C 6400B3AF */  sw         $s3, 0x64($sp)
/* 4EB3B80 80080E50 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 4EB3B84 80080E54 5800B0AF */  sw         $s0, 0x58($sp)
/* 4EB3B88 80080E58 4D004292 */  lbu        $v0, 0x4D($s2)
/* 4EB3B8C 80080E5C 0000568E */  lw         $s6, 0x0($s2)
/* 4EB3B90 80080E60 09004014 */  bnez       $v0, .Llevel_18_80080E88
/* 4EB3B94 80080E64 00000000 */   nop
/* 4EB3B98 80080E68 0800C48E */  lw         $a0, 0x8($s6)
/* 4EB3B9C 80080E6C 00000000 */  nop
/* 4EB3BA0 80080E70 64018010 */  beqz       $a0, .Llevel_18_80081404
/* 4EB3BA4 80080E74 00000000 */   nop
/* 4EB3BA8 80080E78 7A42010C */  jal        func_800509E8
/* 4EB3BAC 80080E7C 00000000 */   nop
/* 4EB3BB0 80080E80 01050208 */  j          .Llevel_18_80081404
/* 4EB3BB4 80080E84 00000000 */   nop
.Llevel_18_80080E88:
/* 4EB3BB8 80080E88 48004392 */  lbu        $v1, 0x48($s2)
/* 4EB3BBC 80080E8C 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB3BC0 80080E90 20006210 */  beq        $v1, $v0, .Llevel_18_80080F14
/* 4EB3BC4 80080E94 02006228 */   slti      $v0, $v1, 0x2
/* 4EB3BC8 80080E98 05004010 */  beqz       $v0, .Llevel_18_80080EB0
/* 4EB3BCC 80080E9C 00000000 */   nop
/* 4EB3BD0 80080EA0 0A006010 */  beqz       $v1, .Llevel_18_80080ECC
/* 4EB3BD4 80080EA4 00000000 */   nop
/* 4EB3BD8 80080EA8 03050208 */  j          .Llevel_18_8008140C
/* 4EB3BDC 80080EAC 00000000 */   nop
.Llevel_18_80080EB0:
/* 4EB3BE0 80080EB0 02000224 */  addiu      $v0, $zero, 0x2
/* 4EB3BE4 80080EB4 F5006210 */  beq        $v1, $v0, .Llevel_18_8008128C
/* 4EB3BE8 80080EB8 00000000 */   nop
/* 4EB3BEC 80080EBC 03050208 */  j          .Llevel_18_8008140C
/* 4EB3BF0 80080EC0 00000000 */   nop
.Llevel_18_80080EC4:
/* 4EB3BF4 80080EC4 C3030208 */  j          .Llevel_18_80080F0C
/* 4EB3BF8 80080EC8 0400C4AE */   sw        $a0, 0x4($s6)
.Llevel_18_80080ECC:
/* 4EB3BFC 80080ECC 0780033C */  lui        $v1, %hi(D_8006E788)
/* 4EB3C00 80080ED0 88E76324 */  addiu      $v1, $v1, %lo(D_8006E788)
/* 4EB3C04 80080ED4 0400C0AE */  sw         $zero, 0x4($s6)
/* 4EB3C08 80080ED8 0000648C */  lw         $a0, 0x0($v1)
/* 4EB3C0C 80080EDC 00000000 */  nop
/* 4EB3C10 80080EE0 0A008010 */  beqz       $a0, .Llevel_18_80080F0C
/* 4EB3C14 80080EE4 04006324 */   addiu     $v1, $v1, 0x4
/* 4EB3C18 80080EE8 70010524 */  addiu      $a1, $zero, 0x170
.Llevel_18_80080EEC:
/* 4EB3C1C 80080EEC 36008284 */  lh         $v0, 0x36($a0)
/* 4EB3C20 80080EF0 00000000 */  nop
/* 4EB3C24 80080EF4 F3FF4510 */  beq        $v0, $a1, .Llevel_18_80080EC4
/* 4EB3C28 80080EF8 00000000 */   nop
/* 4EB3C2C 80080EFC 0000648C */  lw         $a0, 0x0($v1)
/* 4EB3C30 80080F00 00000000 */  nop
/* 4EB3C34 80080F04 F9FF8014 */  bnez       $a0, .Llevel_18_80080EEC
/* 4EB3C38 80080F08 04006324 */   addiu     $v1, $v1, 0x4
.Llevel_18_80080F0C:
/* 4EB3C3C 80080F0C 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB3C40 80080F10 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_18_80080F14:
/* 4EB3C44 80080F14 0C00428E */  lw         $v0, 0xC($s2)
/* 4EB3C48 80080F18 00000000 */  nop
/* 4EB3C4C 80080F1C 00044228 */  slti       $v0, $v0, 0x400
/* 4EB3C50 80080F20 10004014 */  bnez       $v0, .Llevel_18_80080F64
/* 4EB3C54 80080F24 02000224 */   addiu     $v0, $zero, 0x2
/* 4EB3C58 80080F28 1000428E */  lw         $v0, 0x10($s2)
/* 4EB3C5C 80080F2C 00000000 */  nop
/* 4EB3C60 80080F30 00044228 */  slti       $v0, $v0, 0x400
/* 4EB3C64 80080F34 0B004014 */  bnez       $v0, .Llevel_18_80080F64
/* 4EB3C68 80080F38 02000224 */   addiu     $v0, $zero, 0x2
/* 4EB3C6C 80080F3C 1400428E */  lw         $v0, 0x14($s2)
/* 4EB3C70 80080F40 00000000 */  nop
/* 4EB3C74 80080F44 00044228 */  slti       $v0, $v0, 0x400
/* 4EB3C78 80080F48 06004014 */  bnez       $v0, .Llevel_18_80080F64
/* 4EB3C7C 80080F4C 02000224 */   addiu     $v0, $zero, 0x2
/* 4EB3C80 80080F50 2120C002 */  addu       $a0, $s6, $zero
/* 4EB3C84 80080F54 69D6000C */  jal        func_800359A4
/* 4EB3C88 80080F58 04000524 */   addiu     $a1, $zero, 0x4
/* 4EB3C8C 80080F5C 03004010 */  beqz       $v0, .Llevel_18_80080F6C
/* 4EB3C90 80080F60 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_18_80080F64:
/* 4EB3C94 80080F64 03050208 */  j          .Llevel_18_8008140C
/* 4EB3C98 80080F68 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_18_80080F6C:
/* 4EB3C9C 80080F6C 0780113C */  lui        $s1, %hi(D_8006E788)
/* 4EB3CA0 80080F70 88E73126 */  addiu      $s1, $s1, %lo(D_8006E788)
/* 4EB3CA4 80080F74 0000308E */  lw         $s0, 0x0($s1)
/* 4EB3CA8 80080F78 00000000 */  nop
/* 4EB3CAC 80080F7C 40000012 */  beqz       $s0, .Llevel_18_80081080
/* 4EB3CB0 80080F80 04003126 */   addiu     $s1, $s1, 0x4
/* 4EB3CB4 80080F84 97001324 */  addiu      $s3, $zero, 0x97
/* 4EB3CB8 80080F88 BB001424 */  addiu      $s4, $zero, 0xBB
.Llevel_18_80080F8C:
/* 4EB3CBC 80080F8C 36000386 */  lh         $v1, 0x36($s0)
/* 4EB3CC0 80080F90 75010224 */  addiu      $v0, $zero, 0x175
/* 4EB3CC4 80080F94 05006210 */  beq        $v1, $v0, .Llevel_18_80080FAC
/* 4EB3CC8 80080F98 0C004426 */   addiu     $a0, $s2, 0xC
/* 4EB3CCC 80080F9C 03007310 */  beq        $v1, $s3, .Llevel_18_80080FAC
/* 4EB3CD0 80080FA0 00000000 */   nop
/* 4EB3CD4 80080FA4 32007414 */  bne        $v1, $s4, .Llevel_18_80081070
/* 4EB3CD8 80080FA8 00000000 */   nop
.Llevel_18_80080FAC:
/* 4EB3CDC 80080FAC CD3C010C */  jal        func_8004F334
/* 4EB3CE0 80080FB0 0C000526 */   addiu     $a1, $s0, 0xC
/* 4EB3CE4 80080FB4 00024228 */  slti       $v0, $v0, 0x200
/* 4EB3CE8 80080FB8 2D004010 */  beqz       $v0, .Llevel_18_80081070
/* 4EB3CEC 80080FBC 02000224 */   addiu     $v0, $zero, 0x2
/* 4EB3CF0 80080FC0 480042A2 */  sb         $v0, 0x48($s2)
/* 4EB3CF4 80080FC4 36000286 */  lh         $v0, 0x36($s0)
/* 4EB3CF8 80080FC8 00000000 */  nop
/* 4EB3CFC 80080FCC 19005314 */  bne        $v0, $s3, .Llevel_18_80081034
/* 4EB3D00 80080FD0 00000000 */   nop
/* 4EB3D04 80080FD4 0000028E */  lw         $v0, 0x0($s0)
/* 4EB3D08 80080FD8 00000000 */  nop
/* 4EB3D0C 80080FDC 0800458C */  lw         $a1, 0x8($v0)
/* 4EB3D10 80080FE0 F0EF000C */  jal        func_8003BFC0
/* 4EB3D14 80080FE4 21200002 */   addu      $a0, $s0, $zero
/* 4EB3D18 80080FE8 11004010 */  beqz       $v0, .Llevel_18_80081030
/* 4EB3D1C 80080FEC 00000000 */   nop
/* 4EB3D20 80080FF0 0000028E */  lw         $v0, 0x0($s0)
/* 4EB3D24 80080FF4 00000000 */  nop
/* 4EB3D28 80080FF8 0800458C */  lw         $a1, 0x8($v0)
/* 4EB3D2C 80080FFC F0EF000C */  jal        func_8003BFC0
/* 4EB3D30 80081000 21204002 */   addu      $a0, $s2, $zero
/* 4EB3D34 80081004 06004010 */  beqz       $v0, .Llevel_18_80081020
/* 4EB3D38 80081008 00000000 */   nop
/* 4EB3D3C 8008100C 0000028E */  lw         $v0, 0x0($s0)
/* 4EB3D40 80081010 00000000 */  nop
/* 4EB3D44 80081014 0800448C */  lw         $a0, 0x8($v0)
/* 4EB3D48 80081018 9CEF000C */  jal        func_8003BE70
/* 4EB3D4C 8008101C 00000000 */   nop
.Llevel_18_80081020:
/* 4EB3D50 80081020 0000038E */  lw         $v1, 0x0($s0)
/* 4EB3D54 80081024 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4EB3D58 80081028 18040208 */  j          .Llevel_18_80081060
/* 4EB3D5C 8008102C 080062AC */   sw        $v0, 0x8($v1)
.Llevel_18_80081030:
/* 4EB3D60 80081030 36000286 */  lh         $v0, 0x36($s0)
.Llevel_18_80081034:
/* 4EB3D64 80081034 00000000 */  nop
/* 4EB3D68 80081038 09005414 */  bne        $v0, $s4, .Llevel_18_80081060
/* 4EB3D6C 8008103C 00000000 */   nop
/* 4EB3D70 80081040 0000028E */  lw         $v0, 0x0($s0)
/* 4EB3D74 80081044 00000000 */  nop
/* 4EB3D78 80081048 0800448C */  lw         $a0, 0x8($v0)
/* 4EB3D7C 8008104C 00000000 */  nop
/* 4EB3D80 80081050 03008010 */  beqz       $a0, .Llevel_18_80081060
/* 4EB3D84 80081054 00000000 */   nop
/* 4EB3D88 80081058 7A42010C */  jal        func_800509E8
/* 4EB3D8C 8008105C 00000000 */   nop
.Llevel_18_80081060:
/* 4EB3D90 80081060 C656010C */  jal        func_80055B18
/* 4EB3D94 80081064 21200002 */   addu      $a0, $s0, $zero
/* 4EB3D98 80081068 21040208 */  j          .Llevel_18_80081084
/* 4EB3D9C 8008106C 1800A427 */   addiu     $a0, $sp, 0x18
.Llevel_18_80081070:
/* 4EB3DA0 80081070 0000308E */  lw         $s0, 0x0($s1)
/* 4EB3DA4 80081074 00000000 */  nop
/* 4EB3DA8 80081078 C4FF0016 */  bnez       $s0, .Llevel_18_80080F8C
/* 4EB3DAC 8008107C 04003126 */   addiu     $s1, $s1, 0x4
.Llevel_18_80081080:
/* 4EB3DB0 80081080 1800A427 */  addiu      $a0, $sp, 0x18
.Llevel_18_80081084:
/* 4EB3DB4 80081084 0C005126 */  addiu      $s1, $s2, 0xC
/* 4EB3DB8 80081088 5E3C010C */  jal        func_8004F178
/* 4EB3DBC 8008108C 21282002 */   addu      $a1, $s1, $zero
/* 4EB3DC0 80081090 0400C28E */  lw         $v0, 0x4($s6)
/* 4EB3DC4 80081094 00000000 */  nop
/* 4EB3DC8 80081098 48004290 */  lbu        $v0, 0x48($v0)
/* 4EB3DCC 8008109C 00000000 */  nop
/* 4EB3DD0 800810A0 80004230 */  andi       $v0, $v0, 0x80
/* 4EB3DD4 800810A4 02004010 */  beqz       $v0, .Llevel_18_800810B0
/* 4EB3DD8 800810A8 00000000 */   nop
/* 4EB3DDC 800810AC 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_18_800810B0:
/* 4EB3DE0 800810B0 0400C58E */  lw         $a1, 0x4($s6)
/* 4EB3DE4 800810B4 00000000 */  nop
/* 4EB3DE8 800810B8 3000A010 */  beqz       $a1, .Llevel_18_8008117C
/* 4EB3DEC 800810BC 3800B027 */   addiu     $s0, $sp, 0x38
/* 4EB3DF0 800810C0 21200002 */  addu       $a0, $s0, $zero
/* 4EB3DF4 800810C4 5E3C010C */  jal        func_8004F178
/* 4EB3DF8 800810C8 0C00A524 */   addiu     $a1, $a1, 0xC
/* 4EB3DFC 800810CC 2800A427 */  addiu      $a0, $sp, 0x28
/* 4EB3E00 800810D0 21280002 */  addu       $a1, $s0, $zero
/* 4EB3E04 800810D4 4000A28F */  lw         $v0, 0x40($sp)
/* 4EB3E08 800810D8 21302002 */  addu       $a2, $s1, $zero
/* 4EB3E0C 800810DC 80004224 */  addiu      $v0, $v0, 0x80
/* 4EB3E10 800810E0 723C010C */  jal        func_8004F1C8
/* 4EB3E14 800810E4 4000A2AF */   sw        $v0, 0x40($sp)
/* 4EB3E18 800810E8 21300000 */  addu       $a2, $zero, $zero
/* 4EB3E1C 800810EC 2800A48F */  lw         $a0, 0x28($sp)
/* 4EB3E20 800810F0 3000A28F */  lw         $v0, 0x30($sp)
/* 4EB3E24 800810F4 2C00A58F */  lw         $a1, 0x2C($sp)
/* 4EB3E28 800810F8 00014224 */  addiu      $v0, $v0, 0x100
/* 4EB3E2C 800810FC 203A010C */  jal        func_8004E880
/* 4EB3E30 80081100 3000A2AF */   sw        $v0, 0x30($sp)
/* 4EB3E34 80081104 2800A48F */  lw         $a0, 0x28($sp)
/* 4EB3E38 80081108 2C00A58F */  lw         $a1, 0x2C($sp)
/* 4EB3E3C 8008110C 203A010C */  jal        func_8004E880
/* 4EB3E40 80081110 21300000 */   addu      $a2, $zero, $zero
/* 4EB3E44 80081114 46004492 */  lbu        $a0, 0x46($s2)
/* 4EB3E48 80081118 00000000 */  nop
/* 4EB3E4C 8008111C 23104400 */  subu       $v0, $v0, $a0
/* 4EB3E50 80081120 FF004330 */  andi       $v1, $v0, 0xFF
/* 4EB3E54 80081124 81006228 */  slti       $v0, $v1, 0x81
/* 4EB3E58 80081128 02004014 */  bnez       $v0, .Llevel_18_80081134
/* 4EB3E5C 8008112C 00000000 */   nop
/* 4EB3E60 80081130 00FF6324 */  addiu      $v1, $v1, -0x100
.Llevel_18_80081134:
/* 4EB3E64 80081134 02006104 */  bgez       $v1, .Llevel_18_80081140
/* 4EB3E68 80081138 21106000 */   addu      $v0, $v1, $zero
/* 4EB3E6C 8008113C 23100200 */  negu       $v0, $v0
.Llevel_18_80081140:
/* 4EB3E70 80081140 30004228 */  slti       $v0, $v0, 0x30
/* 4EB3E74 80081144 02004010 */  beqz       $v0, .Llevel_18_80081150
/* 4EB3E78 80081148 82001124 */   addiu     $s1, $zero, 0x82
/* 4EB3E7C 8008114C 96001124 */  addiu      $s1, $zero, 0x96
.Llevel_18_80081150:
/* 4EB3E80 80081150 FEFF6228 */  slti       $v0, $v1, -0x2
/* 4EB3E84 80081154 03004010 */  beqz       $v0, .Llevel_18_80081164
/* 4EB3E88 80081158 03006228 */   slti      $v0, $v1, 0x3
/* 4EB3E8C 8008115C FEFF0324 */  addiu      $v1, $zero, -0x2
/* 4EB3E90 80081160 03006228 */  slti       $v0, $v1, 0x3
.Llevel_18_80081164:
/* 4EB3E94 80081164 03004014 */  bnez       $v0, .Llevel_18_80081174
/* 4EB3E98 80081168 21108300 */   addu      $v0, $a0, $v1
/* 4EB3E9C 8008116C 02000324 */  addiu      $v1, $zero, 0x2
/* 4EB3EA0 80081170 21108300 */  addu       $v0, $a0, $v1
.Llevel_18_80081174:
/* 4EB3EA4 80081174 61040208 */  j          .Llevel_18_80081184
/* 4EB3EA8 80081178 460042A2 */   sb        $v0, 0x46($s2)
.Llevel_18_8008117C:
/* 4EB3EAC 8008117C 96001124 */  addiu      $s1, $zero, 0x96
/* 4EB3EB0 80081180 480040A2 */  sb         $zero, 0x48($s2)
.Llevel_18_80081184:
/* 4EB3EB4 80081184 21204002 */  addu       $a0, $s2, $zero
/* 4EB3EB8 80081188 4957010C */  jal        func_80055D24
/* 4EB3EBC 8008118C 04000524 */   addiu     $a1, $zero, 0x4
/* 4EB3EC0 80081190 20004426 */  addiu      $a0, $s2, 0x20
/* 4EB3EC4 80081194 2800B027 */  addiu      $s0, $sp, 0x28
/* 4EB3EC8 80081198 21280002 */  addu       $a1, $s0, $zero
/* 4EB3ECC 8008119C 21300002 */  addu       $a2, $s0, $zero
/* 4EB3ED0 800811A0 2800B1AF */  sw         $s1, 0x28($sp)
/* 4EB3ED4 800811A4 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 4EB3ED8 800811A8 5B3B010C */  jal        func_8004ED6C
/* 4EB3EDC 800811AC 3000A0AF */   sw        $zero, 0x30($sp)
/* 4EB3EE0 800811B0 0C005126 */  addiu      $s1, $s2, 0xC
/* 4EB3EE4 800811B4 21202002 */  addu       $a0, $s1, $zero
/* 4EB3EE8 800811B8 21282002 */  addu       $a1, $s1, $zero
/* 4EB3EEC 800811BC 653C010C */  jal        func_8004F194
/* 4EB3EF0 800811C0 21300002 */   addu      $a2, $s0, $zero
/* 4EB3EF4 800811C4 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EB3EF8 800811C8 21282002 */  addu       $a1, $s1, $zero
/* 4EB3EFC 800811CC 21300000 */  addu       $a2, $zero, $zero
/* 4EB3F00 800811D0 1100073C */  lui        $a3, (0x110000 >> 16)
/* 4EB3F04 800811D4 C360000C */  jal        func_8001830C
/* 4EB3F08 800811D8 1000B2AF */   sw        $s2, 0x10($sp)
/* 4EB3F0C 800811DC 05004010 */  beqz       $v0, .Llevel_18_800811F4
/* 4EB3F10 800811E0 21202002 */   addu      $a0, $s1, $zero
/* 4EB3F14 800811E4 5E3C010C */  jal        func_8004F178
/* 4EB3F18 800811E8 1800A527 */   addiu     $a1, $sp, 0x18
/* 4EB3F1C 800811EC 8B040208 */  j          .Llevel_18_8008122C
/* 4EB3F20 800811F0 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_18_800811F4:
/* 4EB3F24 800811F4 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB3F28 800811F8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB3F2C 800811FC CD3C010C */  jal        func_8004F334
/* 4EB3F30 80081200 21202002 */   addu      $a0, $s1, $zero
/* 4EB3F34 80081204 00044228 */  slti       $v0, $v0, 0x400
/* 4EB3F38 80081208 09004010 */  beqz       $v0, .Llevel_18_80081230
/* 4EB3F3C 8008120C 00000000 */   nop
/* 4EB3F40 80081210 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 4EB3F44 80081214 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 4EB3F48 80081218 00000000 */  nop
/* 4EB3F4C 8008121C 01004234 */  ori        $v0, $v0, 0x1
/* 4EB3F50 80081220 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 4EB3F54 80081224 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 4EB3F58 80081228 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_18_8008122C:
/* 4EB3F5C 8008122C 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_18_80081230:
/* 4EB3F60 80081230 0800C28E */  lw         $v0, 0x8($s6)
/* 4EB3F64 80081234 00000000 */  nop
/* 4EB3F68 80081238 74004010 */  beqz       $v0, .Llevel_18_8008140C
/* 4EB3F6C 8008123C 00000000 */   nop
/* 4EB3F70 80081240 46004492 */  lbu        $a0, 0x46($s2)
/* 4EB3F74 80081244 993C010C */  jal        func_8004F264
/* 4EB3F78 80081248 21280000 */   addu      $a1, $zero, $zero
/* 4EB3F7C 8008124C 20004228 */  slti       $v0, $v0, 0x20
/* 4EB3F80 80081250 07004014 */  bnez       $v0, .Llevel_18_80081270
/* 4EB3F84 80081254 00000000 */   nop
/* 4EB3F88 80081258 46004492 */  lbu        $a0, 0x46($s2)
/* 4EB3F8C 8008125C 993C010C */  jal        func_8004F264
/* 4EB3F90 80081260 80000524 */   addiu     $a1, $zero, 0x80
/* 4EB3F94 80081264 20004228 */  slti       $v0, $v0, 0x20
/* 4EB3F98 80081268 05004010 */  beqz       $v0, .Llevel_18_80081280
/* 4EB3F9C 8008126C 07000224 */   addiu     $v0, $zero, 0x7
.Llevel_18_80081270:
/* 4EB3FA0 80081270 0800C38E */  lw         $v1, 0x8($s6)
/* 4EB3FA4 80081274 F4000224 */  addiu      $v0, $zero, 0xF4
/* 4EB3FA8 80081278 03050208 */  j          .Llevel_18_8008140C
/* 4EB3FAC 8008127C 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_18_80081280:
/* 4EB3FB0 80081280 0800C38E */  lw         $v1, 0x8($s6)
/* 4EB3FB4 80081284 03050208 */  j          .Llevel_18_8008140C
/* 4EB3FB8 80081288 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_18_8008128C:
/* 4EB3FBC 8008128C 9171010C */  jal        rand
/* 4EB3FC0 80081290 21800000 */   addu      $s0, $zero, $zero
/* 4EB3FC4 80081294 FF005130 */  andi       $s1, $v0, 0xFF
/* 4EB3FC8 80081298 0C005526 */  addiu      $s5, $s2, 0xC
/* 4EB3FCC 8008129C 4800B427 */  addiu      $s4, $sp, 0x48
/* 4EB3FD0 800812A0 0680033C */  lui        $v1, %hi(D_80065920)
/* 4EB3FD4 800812A4 20596324 */  addiu      $v1, $v1, %lo(D_80065920)
/* 4EB3FD8 800812A8 40101100 */  sll        $v0, $s1, 1
/* 4EB3FDC 800812AC 21984300 */  addu       $s3, $v0, $v1
.Llevel_18_800812B0:
/* 4EB3FE0 800812B0 01000424 */  addiu      $a0, $zero, 0x1
/* 4EB3FE4 800812B4 37000524 */  addiu      $a1, $zero, 0x37
/* 4EB3FE8 800812B8 2130A002 */  addu       $a2, $s5, $zero
/* 4EB3FEC 800812BC 00006286 */  lh         $v0, 0x0($s3)
/* 4EB3FF0 800812C0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 4EB3FF4 800812C4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 4EB3FF8 800812C8 C3110200 */  sra        $v0, $v0, 7
/* 4EB3FFC 800812CC 4800A2AF */  sw         $v0, 0x48($sp)
/* 4EB4000 800812D0 40101100 */  sll        $v0, $s1, 1
/* 4EB4004 800812D4 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB4008 800812D8 21082200 */  addu       $at, $at, $v0
/* 4EB400C 800812DC A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EB4010 800812E0 21388002 */  addu       $a3, $s4, $zero
/* 4EB4014 800812E4 5000A0AF */  sw         $zero, 0x50($sp)
/* 4EB4018 800812E8 C3110200 */  sra        $v0, $v0, 7
/* 4EB401C 800812EC 09F86000 */  jalr       $v1
/* 4EB4020 800812F0 4C00A2AF */   sw        $v0, 0x4C($sp)
/* 4EB4024 800812F4 01000232 */  andi       $v0, $s0, 0x1
/* 4EB4028 800812F8 0B004010 */  beqz       $v0, .Llevel_18_80081328
/* 4EB402C 800812FC 21208002 */   addu      $a0, $s4, $zero
/* 4EB4030 80081300 443C010C */  jal        func_8004F110
/* 4EB4034 80081304 01000524 */   addiu     $a1, $zero, 0x1
/* 4EB4038 80081308 01000424 */  addiu      $a0, $zero, 0x1
/* 4EB403C 8008130C 37000524 */  addiu      $a1, $zero, 0x37
/* 4EB4040 80081310 2130A002 */  addu       $a2, $s5, $zero
/* 4EB4044 80081314 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4EB4048 80081318 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4EB404C 8008131C 00000000 */  nop
/* 4EB4050 80081320 09F84000 */  jalr       $v0
/* 4EB4054 80081324 21388002 */   addu      $a3, $s4, $zero
.Llevel_18_80081328:
/* 4EB4058 80081328 40007326 */  addiu      $s3, $s3, 0x40
/* 4EB405C 8008132C 01001026 */  addiu      $s0, $s0, 0x1
/* 4EB4060 80081330 0800022A */  slti       $v0, $s0, 0x8
/* 4EB4064 80081334 DEFF4014 */  bnez       $v0, .Llevel_18_800812B0
/* 4EB4068 80081338 20003126 */   addiu     $s1, $s1, 0x20
/* 4EB406C 8008133C 0C005126 */  addiu      $s1, $s2, 0xC
/* 4EB4070 80081340 21202002 */  addu       $a0, $s1, $zero
/* 4EB4074 80081344 00040524 */  addiu      $a1, $zero, 0x400
/* 4EB4078 80081348 01000624 */  addiu      $a2, $zero, 0x1
/* 4EB407C 8008134C 21380000 */  addu       $a3, $zero, $zero
/* 4EB4080 80081350 1000A0AF */  sw         $zero, 0x10($sp)
/* 4EB4084 80081354 8C6E000C */  jal        func_8001BA30
/* 4EB4088 80081358 1400B2AF */   sw        $s2, 0x14($sp)
/* 4EB408C 8008135C 21804000 */  addu       $s0, $v0, $zero
/* 4EB4090 80081360 09000012 */  beqz       $s0, .Llevel_18_80081388
/* 4EB4094 80081364 21202002 */   addu      $a0, $s1, $zero
/* 4EB4098 80081368 DA60000C */  jal        func_80018368
/* 4EB409C 8008136C 0C000526 */   addiu     $a1, $s0, 0xC
/* 4EB40A0 80081370 05004014 */  bnez       $v0, .Llevel_18_80081388
/* 4EB40A4 80081374 1100033C */   lui       $v1, (0x110000 >> 16)
/* 4EB40A8 80081378 1800028E */  lw         $v0, 0x18($s0)
/* 4EB40AC 8008137C 00000000 */  nop
/* 4EB40B0 80081380 25104300 */  or         $v0, $v0, $v1
/* 4EB40B4 80081384 180002AE */  sw         $v0, 0x18($s0)
.Llevel_18_80081388:
/* 4EB40B8 80081388 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4EB40BC 8008138C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4EB40C0 80081390 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4EB40C4 80081394 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4EB40C8 80081398 00000000 */  nop
/* 4EB40CC 8008139C 23104300 */  subu       $v0, $v0, $v1
/* 4EB40D0 800813A0 15004228 */  slti       $v0, $v0, 0x15
/* 4EB40D4 800813A4 0D004014 */  bnez       $v0, .Llevel_18_800813DC
/* 4EB40D8 800813A8 46010424 */   addiu     $a0, $zero, 0x146
/* 4EB40DC 800813AC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4EB40E0 800813B0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4EB40E4 800813B4 00000000 */  nop
/* 4EB40E8 800813B8 09F84000 */  jalr       $v0
/* 4EB40EC 800813BC 21284002 */   addu      $a1, $s2, $zero
/* 4EB40F0 800813C0 21804000 */  addu       $s0, $v0, $zero
/* 4EB40F4 800813C4 05000012 */  beqz       $s0, .Llevel_18_800813DC
/* 4EB40F8 800813C8 08000224 */   addiu     $v0, $zero, 0x8
/* 4EB40FC 800813CC 470002A2 */  sb         $v0, 0x47($s0)
/* 4EB4100 800813D0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 4EB4104 800813D4 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 4EB4108 800813D8 4E0002A2 */  sb         $v0, 0x4E($s0)
.Llevel_18_800813DC:
/* 4EB410C 800813DC 0800C48E */  lw         $a0, 0x8($s6)
/* 4EB4110 800813E0 00000000 */  nop
/* 4EB4114 800813E4 03008010 */  beqz       $a0, .Llevel_18_800813F4
/* 4EB4118 800813E8 00000000 */   nop
/* 4EB411C 800813EC 7A42010C */  jal        func_800509E8
/* 4EB4120 800813F0 00000000 */   nop
.Llevel_18_800813F4:
/* 4EB4124 800813F4 21204002 */  addu       $a0, $s2, $zero
/* 4EB4128 800813F8 01000524 */  addiu      $a1, $zero, 0x1
/* 4EB412C 800813FC AFEE000C */  jal        func_8003BABC
/* 4EB4130 80081400 21300000 */   addu      $a2, $zero, $zero
.Llevel_18_80081404:
/* 4EB4134 80081404 C656010C */  jal        func_80055B18
/* 4EB4138 80081408 21204002 */   addu      $a0, $s2, $zero
.Llevel_18_8008140C:
/* 4EB413C 8008140C 7400BF8F */  lw         $ra, 0x74($sp)
/* 4EB4140 80081410 7000B68F */  lw         $s6, 0x70($sp)
/* 4EB4144 80081414 6C00B58F */  lw         $s5, 0x6C($sp)
/* 4EB4148 80081418 6800B48F */  lw         $s4, 0x68($sp)
/* 4EB414C 8008141C 6400B38F */  lw         $s3, 0x64($sp)
/* 4EB4150 80081420 6000B28F */  lw         $s2, 0x60($sp)
/* 4EB4154 80081424 5C00B18F */  lw         $s1, 0x5C($sp)
/* 4EB4158 80081428 5800B08F */  lw         $s0, 0x58($sp)
/* 4EB415C 8008142C 7800BD27 */  addiu      $sp, $sp, 0x78
/* 4EB4160 80081430 0800E003 */  jr         $ra
/* 4EB4164 80081434 00000000 */   nop
.size func_level_18_80080E30, . - func_level_18_80080E30
