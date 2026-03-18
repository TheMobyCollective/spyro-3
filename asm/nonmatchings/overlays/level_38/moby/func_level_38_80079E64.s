.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_80079E64
/* 7C38B94 80079E64 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 7C38B98 80079E68 8400B3AF */  sw         $s3, 0x84($sp)
/* 7C38B9C 80079E6C 21988000 */  addu       $s3, $a0, $zero
/* 7C38BA0 80079E70 9400BFAF */  sw         $ra, 0x94($sp)
/* 7C38BA4 80079E74 9000B6AF */  sw         $s6, 0x90($sp)
/* 7C38BA8 80079E78 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 7C38BAC 80079E7C 8800B4AF */  sw         $s4, 0x88($sp)
/* 7C38BB0 80079E80 8000B2AF */  sw         $s2, 0x80($sp)
/* 7C38BB4 80079E84 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 7C38BB8 80079E88 7800B0AF */  sw         $s0, 0x78($sp)
/* 7C38BBC 80079E8C 4D006292 */  lbu        $v0, 0x4D($s3)
/* 7C38BC0 80079E90 0000768E */  lw         $s6, 0x0($s3)
/* 7C38BC4 80079E94 09004014 */  bnez       $v0, .Llevel_38_80079EBC
/* 7C38BC8 80079E98 00000000 */   nop
/* 7C38BCC 80079E9C 0800C48E */  lw         $a0, 0x8($s6)
/* 7C38BD0 80079EA0 00000000 */  nop
/* 7C38BD4 80079EA4 4F018010 */  beqz       $a0, .Llevel_38_8007A3E4
/* 7C38BD8 80079EA8 00000000 */   nop
/* 7C38BDC 80079EAC 7A42010C */  jal        func_800509E8
/* 7C38BE0 80079EB0 00000000 */   nop
/* 7C38BE4 80079EB4 F9E80108 */  j          .Llevel_38_8007A3E4
/* 7C38BE8 80079EB8 00000000 */   nop
.Llevel_38_80079EBC:
/* 7C38BEC 80079EBC 48006392 */  lbu        $v1, 0x48($s3)
/* 7C38BF0 80079EC0 01000224 */  addiu      $v0, $zero, 0x1
/* 7C38BF4 80079EC4 44006210 */  beq        $v1, $v0, .Llevel_38_80079FD8
/* 7C38BF8 80079EC8 02006228 */   slti      $v0, $v1, 0x2
/* 7C38BFC 80079ECC 05004010 */  beqz       $v0, .Llevel_38_80079EE4
/* 7C38C00 80079ED0 00000000 */   nop
/* 7C38C04 80079ED4 08006010 */  beqz       $v1, .Llevel_38_80079EF8
/* 7C38C08 80079ED8 0100143C */   lui       $s4, (0x1869F >> 16)
/* 7C38C0C 80079EDC FBE80108 */  j          .Llevel_38_8007A3EC
/* 7C38C10 80079EE0 00000000 */   nop
.Llevel_38_80079EE4:
/* 7C38C14 80079EE4 02000224 */  addiu      $v0, $zero, 0x2
/* 7C38C18 80079EE8 E0006210 */  beq        $v1, $v0, .Llevel_38_8007A26C
/* 7C38C1C 80079EEC 00000000 */   nop
/* 7C38C20 80079EF0 FBE80108 */  j          .Llevel_38_8007A3EC
/* 7C38C24 80079EF4 00000000 */   nop
.Llevel_38_80079EF8:
/* 7C38C28 80079EF8 9F869436 */  ori        $s4, $s4, (0x1869F & 0xFFFF)
/* 7C38C2C 80079EFC 0780123C */  lui        $s2, %hi(D_8006E788)
/* 7C38C30 80079F00 88E75226 */  addiu      $s2, $s2, %lo(D_8006E788)
/* 7C38C34 80079F04 ECE70108 */  j          .Llevel_38_80079FB0
/* 7C38C38 80079F08 0400C0AE */   sw        $zero, 0x4($s6)
.Llevel_38_80079F0C:
/* 7C38C3C 80079F0C 0800228E */  lw         $v0, 0x8($s1)
/* 7C38C40 80079F10 00000000 */  nop
/* 7C38C44 80079F14 26004010 */  beqz       $v0, .Llevel_38_80079FB0
/* 7C38C48 80079F18 1800A427 */   addiu     $a0, $sp, 0x18
/* 7C38C4C 80079F1C 5E3C010C */  jal        func_8004F178
/* 7C38C50 80079F20 0C002526 */   addiu     $a1, $s1, 0xC
/* 7C38C54 80079F24 21300000 */  addu       $a2, $zero, $zero
/* 7C38C58 80079F28 1800A38F */  lw         $v1, 0x18($sp)
/* 7C38C5C 80079F2C 0C00648E */  lw         $a0, 0xC($s3)
/* 7C38C60 80079F30 1C00A28F */  lw         $v0, 0x1C($sp)
/* 7C38C64 80079F34 1000658E */  lw         $a1, 0x10($s3)
/* 7C38C68 80079F38 23206400 */  subu       $a0, $v1, $a0
/* 7C38C6C 80079F3C 203A010C */  jal        func_8004E880
/* 7C38C70 80079F40 23284500 */   subu      $a1, $v0, $a1
/* 7C38C74 80079F44 46006392 */  lbu        $v1, 0x46($s3)
/* 7C38C78 80079F48 00000000 */  nop
/* 7C38C7C 80079F4C 23104300 */  subu       $v0, $v0, $v1
/* 7C38C80 80079F50 FF005030 */  andi       $s0, $v0, 0xFF
/* 7C38C84 80079F54 8100022A */  slti       $v0, $s0, 0x81
/* 7C38C88 80079F58 02004014 */  bnez       $v0, .Llevel_38_80079F64
/* 7C38C8C 80079F5C 00000000 */   nop
/* 7C38C90 80079F60 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_38_80079F64:
/* 7C38C94 80079F64 02000106 */  bgez       $s0, .Llevel_38_80079F70
/* 7C38C98 80079F68 00000000 */   nop
/* 7C38C9C 80079F6C 23801000 */  negu       $s0, $s0
.Llevel_38_80079F70:
/* 7C38CA0 80079F70 0C006426 */  addiu      $a0, $s3, 0xC
/* 7C38CA4 80079F74 CD3C010C */  jal        func_8004F334
/* 7C38CA8 80079F78 1800A527 */   addiu     $a1, $sp, 0x18
/* 7C38CAC 80079F7C 00100324 */  addiu      $v1, $zero, 0x1000
/* 7C38CB0 80079F80 23186200 */  subu       $v1, $v1, $v0
/* 7C38CB4 80079F84 02006104 */  bgez       $v1, .Llevel_38_80079F90
/* 7C38CB8 80079F88 00000000 */   nop
/* 7C38CBC 80079F8C 23180300 */  negu       $v1, $v1
.Llevel_38_80079F90:
/* 7C38CC0 80079F90 00121000 */  sll        $v0, $s0, 8
/* 7C38CC4 80079F94 21186200 */  addu       $v1, $v1, $v0
/* 7C38CC8 80079F98 2A107400 */  slt        $v0, $v1, $s4
/* 7C38CCC 80079F9C 04004010 */  beqz       $v0, .Llevel_38_80079FB0
/* 7C38CD0 80079FA0 01086228 */   slti      $v0, $v1, 0x801
/* 7C38CD4 80079FA4 06004014 */  bnez       $v0, .Llevel_38_80079FC0
/* 7C38CD8 80079FA8 0400D1AE */   sw        $s1, 0x4($s6)
/* 7C38CDC 80079FAC 21A06000 */  addu       $s4, $v1, $zero
.Llevel_38_80079FB0:
/* 7C38CE0 80079FB0 0000518E */  lw         $s1, 0x0($s2)
/* 7C38CE4 80079FB4 00000000 */  nop
/* 7C38CE8 80079FB8 D4FF2016 */  bnez       $s1, .Llevel_38_80079F0C
/* 7C38CEC 80079FBC 04005226 */   addiu     $s2, $s2, 0x4
.Llevel_38_80079FC0:
/* 7C38CF0 80079FC0 0100023C */  lui        $v0, (0x1869F >> 16)
/* 7C38CF4 80079FC4 9F864234 */  ori        $v0, $v0, (0x1869F & 0xFFFF)
/* 7C38CF8 80079FC8 02008216 */  bne        $s4, $v0, .Llevel_38_80079FD4
/* 7C38CFC 80079FCC 01000224 */   addiu     $v0, $zero, 0x1
/* 7C38D00 80079FD0 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_38_80079FD4:
/* 7C38D04 80079FD4 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_38_80079FD8:
/* 7C38D08 80079FD8 0C00628E */  lw         $v0, 0xC($s3)
/* 7C38D0C 80079FDC 00000000 */  nop
/* 7C38D10 80079FE0 00044228 */  slti       $v0, $v0, 0x400
/* 7C38D14 80079FE4 10004014 */  bnez       $v0, .Llevel_38_8007A028
/* 7C38D18 80079FE8 02000224 */   addiu     $v0, $zero, 0x2
/* 7C38D1C 80079FEC 1000628E */  lw         $v0, 0x10($s3)
/* 7C38D20 80079FF0 00000000 */  nop
/* 7C38D24 80079FF4 00044228 */  slti       $v0, $v0, 0x400
/* 7C38D28 80079FF8 0B004014 */  bnez       $v0, .Llevel_38_8007A028
/* 7C38D2C 80079FFC 02000224 */   addiu     $v0, $zero, 0x2
/* 7C38D30 8007A000 1400628E */  lw         $v0, 0x14($s3)
/* 7C38D34 8007A004 00000000 */  nop
/* 7C38D38 8007A008 00044228 */  slti       $v0, $v0, 0x400
/* 7C38D3C 8007A00C 06004014 */  bnez       $v0, .Llevel_38_8007A028
/* 7C38D40 8007A010 02000224 */   addiu     $v0, $zero, 0x2
/* 7C38D44 8007A014 2120C002 */  addu       $a0, $s6, $zero
/* 7C38D48 8007A018 69D6000C */  jal        func_800359A4
/* 7C38D4C 8007A01C 04000524 */   addiu     $a1, $zero, 0x4
/* 7C38D50 8007A020 03004010 */  beqz       $v0, .Llevel_38_8007A030
/* 7C38D54 8007A024 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_38_8007A028:
/* 7C38D58 8007A028 FBE80108 */  j          .Llevel_38_8007A3EC
/* 7C38D5C 8007A02C 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_38_8007A030:
/* 7C38D60 8007A030 2800A427 */  addiu      $a0, $sp, 0x28
/* 7C38D64 8007A034 0C007126 */  addiu      $s1, $s3, 0xC
/* 7C38D68 8007A038 5E3C010C */  jal        func_8004F178
/* 7C38D6C 8007A03C 21282002 */   addu      $a1, $s1, $zero
/* 7C38D70 8007A040 0400C28E */  lw         $v0, 0x4($s6)
/* 7C38D74 8007A044 00000000 */  nop
/* 7C38D78 8007A048 48004290 */  lbu        $v0, 0x48($v0)
/* 7C38D7C 8007A04C 00000000 */  nop
/* 7C38D80 8007A050 80004230 */  andi       $v0, $v0, 0x80
/* 7C38D84 8007A054 02004010 */  beqz       $v0, .Llevel_38_8007A060
/* 7C38D88 8007A058 00000000 */   nop
/* 7C38D8C 8007A05C 0400C0AE */  sw         $zero, 0x4($s6)
.Llevel_38_8007A060:
/* 7C38D90 8007A060 0400C58E */  lw         $a1, 0x4($s6)
/* 7C38D94 8007A064 00000000 */  nop
/* 7C38D98 8007A068 3000A010 */  beqz       $a1, .Llevel_38_8007A12C
/* 7C38D9C 8007A06C 4800B027 */   addiu     $s0, $sp, 0x48
/* 7C38DA0 8007A070 21200002 */  addu       $a0, $s0, $zero
/* 7C38DA4 8007A074 5E3C010C */  jal        func_8004F178
/* 7C38DA8 8007A078 0C00A524 */   addiu     $a1, $a1, 0xC
/* 7C38DAC 8007A07C 3800A427 */  addiu      $a0, $sp, 0x38
/* 7C38DB0 8007A080 21280002 */  addu       $a1, $s0, $zero
/* 7C38DB4 8007A084 5000A28F */  lw         $v0, 0x50($sp)
/* 7C38DB8 8007A088 21302002 */  addu       $a2, $s1, $zero
/* 7C38DBC 8007A08C 80004224 */  addiu      $v0, $v0, 0x80
/* 7C38DC0 8007A090 723C010C */  jal        func_8004F1C8
/* 7C38DC4 8007A094 5000A2AF */   sw        $v0, 0x50($sp)
/* 7C38DC8 8007A098 21300000 */  addu       $a2, $zero, $zero
/* 7C38DCC 8007A09C 3800A48F */  lw         $a0, 0x38($sp)
/* 7C38DD0 8007A0A0 4000A28F */  lw         $v0, 0x40($sp)
/* 7C38DD4 8007A0A4 3C00A58F */  lw         $a1, 0x3C($sp)
/* 7C38DD8 8007A0A8 00014224 */  addiu      $v0, $v0, 0x100
/* 7C38DDC 8007A0AC 203A010C */  jal        func_8004E880
/* 7C38DE0 8007A0B0 4000A2AF */   sw        $v0, 0x40($sp)
/* 7C38DE4 8007A0B4 3800A48F */  lw         $a0, 0x38($sp)
/* 7C38DE8 8007A0B8 3C00A58F */  lw         $a1, 0x3C($sp)
/* 7C38DEC 8007A0BC 203A010C */  jal        func_8004E880
/* 7C38DF0 8007A0C0 21300000 */   addu      $a2, $zero, $zero
/* 7C38DF4 8007A0C4 46006492 */  lbu        $a0, 0x46($s3)
/* 7C38DF8 8007A0C8 00000000 */  nop
/* 7C38DFC 8007A0CC 23104400 */  subu       $v0, $v0, $a0
/* 7C38E00 8007A0D0 FF004330 */  andi       $v1, $v0, 0xFF
/* 7C38E04 8007A0D4 81006228 */  slti       $v0, $v1, 0x81
/* 7C38E08 8007A0D8 02004014 */  bnez       $v0, .Llevel_38_8007A0E4
/* 7C38E0C 8007A0DC 00000000 */   nop
/* 7C38E10 8007A0E0 00FF6324 */  addiu      $v1, $v1, -0x100
.Llevel_38_8007A0E4:
/* 7C38E14 8007A0E4 02006104 */  bgez       $v1, .Llevel_38_8007A0F0
/* 7C38E18 8007A0E8 21106000 */   addu      $v0, $v1, $zero
/* 7C38E1C 8007A0EC 23100200 */  negu       $v0, $v0
.Llevel_38_8007A0F0:
/* 7C38E20 8007A0F0 30004228 */  slti       $v0, $v0, 0x30
/* 7C38E24 8007A0F4 02004010 */  beqz       $v0, .Llevel_38_8007A100
/* 7C38E28 8007A0F8 80001124 */   addiu     $s1, $zero, 0x80
/* 7C38E2C 8007A0FC FA001124 */  addiu      $s1, $zero, 0xFA
.Llevel_38_8007A100:
/* 7C38E30 8007A100 FCFF6228 */  slti       $v0, $v1, -0x4
/* 7C38E34 8007A104 03004010 */  beqz       $v0, .Llevel_38_8007A114
/* 7C38E38 8007A108 05006228 */   slti      $v0, $v1, 0x5
/* 7C38E3C 8007A10C FCFF0324 */  addiu      $v1, $zero, -0x4
/* 7C38E40 8007A110 05006228 */  slti       $v0, $v1, 0x5
.Llevel_38_8007A114:
/* 7C38E44 8007A114 03004014 */  bnez       $v0, .Llevel_38_8007A124
/* 7C38E48 8007A118 21108300 */   addu      $v0, $a0, $v1
/* 7C38E4C 8007A11C 04000324 */  addiu      $v1, $zero, 0x4
/* 7C38E50 8007A120 21108300 */  addu       $v0, $a0, $v1
.Llevel_38_8007A124:
/* 7C38E54 8007A124 4DE80108 */  j          .Llevel_38_8007A134
/* 7C38E58 8007A128 460062A2 */   sb        $v0, 0x46($s3)
.Llevel_38_8007A12C:
/* 7C38E5C 8007A12C FA001124 */  addiu      $s1, $zero, 0xFA
/* 7C38E60 8007A130 480060A2 */  sb         $zero, 0x48($s3)
.Llevel_38_8007A134:
/* 7C38E64 8007A134 21206002 */  addu       $a0, $s3, $zero
/* 7C38E68 8007A138 4957010C */  jal        func_80055D24
/* 7C38E6C 8007A13C 04000524 */   addiu     $a1, $zero, 0x4
/* 7C38E70 8007A140 20006426 */  addiu      $a0, $s3, 0x20
/* 7C38E74 8007A144 3800B027 */  addiu      $s0, $sp, 0x38
/* 7C38E78 8007A148 21280002 */  addu       $a1, $s0, $zero
/* 7C38E7C 8007A14C 21300002 */  addu       $a2, $s0, $zero
/* 7C38E80 8007A150 3800B1AF */  sw         $s1, 0x38($sp)
/* 7C38E84 8007A154 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 7C38E88 8007A158 5B3B010C */  jal        func_8004ED6C
/* 7C38E8C 8007A15C 4000A0AF */   sw        $zero, 0x40($sp)
/* 7C38E90 8007A160 0C007226 */  addiu      $s2, $s3, 0xC
/* 7C38E94 8007A164 21204002 */  addu       $a0, $s2, $zero
/* 7C38E98 8007A168 21284002 */  addu       $a1, $s2, $zero
/* 7C38E9C 8007A16C 653C010C */  jal        func_8004F194
/* 7C38EA0 8007A170 21300002 */   addu      $a2, $s0, $zero
/* 7C38EA4 8007A174 2800B027 */  addiu      $s0, $sp, 0x28
/* 7C38EA8 8007A178 21200002 */  addu       $a0, $s0, $zero
/* 7C38EAC 8007A17C 21284002 */  addu       $a1, $s2, $zero
/* 7C38EB0 8007A180 21300000 */  addu       $a2, $zero, $zero
/* 7C38EB4 8007A184 1100073C */  lui        $a3, (0x110000 >> 16)
/* 7C38EB8 8007A188 C360000C */  jal        func_8001830C
/* 7C38EBC 8007A18C 1000B3AF */   sw        $s3, 0x10($sp)
/* 7C38EC0 8007A190 05004010 */  beqz       $v0, .Llevel_38_8007A1A8
/* 7C38EC4 8007A194 21204002 */   addu      $a0, $s2, $zero
/* 7C38EC8 8007A198 5E3C010C */  jal        func_8004F178
/* 7C38ECC 8007A19C 21280002 */   addu      $a1, $s0, $zero
/* 7C38ED0 8007A1A0 83E80108 */  j          .Llevel_38_8007A20C
/* 7C38ED4 8007A1A4 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_38_8007A1A8:
/* 7C38ED8 8007A1A8 00020524 */  addiu      $a1, $zero, 0x200
/* 7C38EDC 8007A1AC 01000624 */  addiu      $a2, $zero, 0x1
/* 7C38EE0 8007A1B0 21380000 */  addu       $a3, $zero, $zero
/* 7C38EE4 8007A1B4 1000A0AF */  sw         $zero, 0x10($sp)
/* 7C38EE8 8007A1B8 8C6E000C */  jal        func_8001BA30
/* 7C38EEC 8007A1BC 1400B3AF */   sw        $s3, 0x14($sp)
/* 7C38EF0 8007A1C0 21884000 */  addu       $s1, $v0, $zero
/* 7C38EF4 8007A1C4 12002012 */  beqz       $s1, .Llevel_38_8007A210
/* 7C38EF8 8007A1C8 5800B027 */   addiu     $s0, $sp, 0x58
/* 7C38EFC 8007A1CC 21200002 */  addu       $a0, $s0, $zero
/* 7C38F00 8007A1D0 5E3C010C */  jal        func_8004F178
/* 7C38F04 8007A1D4 0C002526 */   addiu     $a1, $s1, 0xC
/* 7C38F08 8007A1D8 21204002 */  addu       $a0, $s2, $zero
/* 7C38F0C 8007A1DC 6000A28F */  lw         $v0, 0x60($sp)
/* 7C38F10 8007A1E0 21280002 */  addu       $a1, $s0, $zero
/* 7C38F14 8007A1E4 80004224 */  addiu      $v0, $v0, 0x80
/* 7C38F18 8007A1E8 DA60000C */  jal        func_80018368
/* 7C38F1C 8007A1EC 6000A2AF */   sw        $v0, 0x60($sp)
/* 7C38F20 8007A1F0 07004014 */  bnez       $v0, .Llevel_38_8007A210
/* 7C38F24 8007A1F4 1100033C */   lui       $v1, (0x110000 >> 16)
/* 7C38F28 8007A1F8 1800228E */  lw         $v0, 0x18($s1)
/* 7C38F2C 8007A1FC 00000000 */  nop
/* 7C38F30 8007A200 25104300 */  or         $v0, $v0, $v1
/* 7C38F34 8007A204 180022AE */  sw         $v0, 0x18($s1)
/* 7C38F38 8007A208 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_38_8007A20C:
/* 7C38F3C 8007A20C 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_38_8007A210:
/* 7C38F40 8007A210 0800C28E */  lw         $v0, 0x8($s6)
/* 7C38F44 8007A214 00000000 */  nop
/* 7C38F48 8007A218 74004010 */  beqz       $v0, .Llevel_38_8007A3EC
/* 7C38F4C 8007A21C 00000000 */   nop
/* 7C38F50 8007A220 46006492 */  lbu        $a0, 0x46($s3)
/* 7C38F54 8007A224 993C010C */  jal        func_8004F264
/* 7C38F58 8007A228 21280000 */   addu      $a1, $zero, $zero
/* 7C38F5C 8007A22C 20004228 */  slti       $v0, $v0, 0x20
/* 7C38F60 8007A230 07004014 */  bnez       $v0, .Llevel_38_8007A250
/* 7C38F64 8007A234 00000000 */   nop
/* 7C38F68 8007A238 46006492 */  lbu        $a0, 0x46($s3)
/* 7C38F6C 8007A23C 993C010C */  jal        func_8004F264
/* 7C38F70 8007A240 80000524 */   addiu     $a1, $zero, 0x80
/* 7C38F74 8007A244 20004228 */  slti       $v0, $v0, 0x20
/* 7C38F78 8007A248 05004010 */  beqz       $v0, .Llevel_38_8007A260
/* 7C38F7C 8007A24C 07000224 */   addiu     $v0, $zero, 0x7
.Llevel_38_8007A250:
/* 7C38F80 8007A250 0800C38E */  lw         $v1, 0x8($s6)
/* 7C38F84 8007A254 F4000224 */  addiu      $v0, $zero, 0xF4
/* 7C38F88 8007A258 FBE80108 */  j          .Llevel_38_8007A3EC
/* 7C38F8C 8007A25C 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_38_8007A260:
/* 7C38F90 8007A260 0800C38E */  lw         $v1, 0x8($s6)
/* 7C38F94 8007A264 FBE80108 */  j          .Llevel_38_8007A3EC
/* 7C38F98 8007A268 660062A0 */   sb        $v0, 0x66($v1)
.Llevel_38_8007A26C:
/* 7C38F9C 8007A26C 9171010C */  jal        rand
/* 7C38FA0 8007A270 21800000 */   addu      $s0, $zero, $zero
/* 7C38FA4 8007A274 FF005130 */  andi       $s1, $v0, 0xFF
/* 7C38FA8 8007A278 0C007526 */  addiu      $s5, $s3, 0xC
/* 7C38FAC 8007A27C 6800B427 */  addiu      $s4, $sp, 0x68
/* 7C38FB0 8007A280 0680033C */  lui        $v1, %hi(D_80065920)
/* 7C38FB4 8007A284 20596324 */  addiu      $v1, $v1, %lo(D_80065920)
/* 7C38FB8 8007A288 40101100 */  sll        $v0, $s1, 1
/* 7C38FBC 8007A28C 21904300 */  addu       $s2, $v0, $v1
.Llevel_38_8007A290:
/* 7C38FC0 8007A290 01000424 */  addiu      $a0, $zero, 0x1
/* 7C38FC4 8007A294 37000524 */  addiu      $a1, $zero, 0x37
/* 7C38FC8 8007A298 2130A002 */  addu       $a2, $s5, $zero
/* 7C38FCC 8007A29C 00004286 */  lh         $v0, 0x0($s2)
/* 7C38FD0 8007A2A0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 7C38FD4 8007A2A4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 7C38FD8 8007A2A8 C3110200 */  sra        $v0, $v0, 7
/* 7C38FDC 8007A2AC 6800A2AF */  sw         $v0, 0x68($sp)
/* 7C38FE0 8007A2B0 40101100 */  sll        $v0, $s1, 1
/* 7C38FE4 8007A2B4 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C38FE8 8007A2B8 21082200 */  addu       $at, $at, $v0
/* 7C38FEC 8007A2BC A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7C38FF0 8007A2C0 21388002 */  addu       $a3, $s4, $zero
/* 7C38FF4 8007A2C4 7000A0AF */  sw         $zero, 0x70($sp)
/* 7C38FF8 8007A2C8 C3110200 */  sra        $v0, $v0, 7
/* 7C38FFC 8007A2CC 09F86000 */  jalr       $v1
/* 7C39000 8007A2D0 6C00A2AF */   sw        $v0, 0x6C($sp)
/* 7C39004 8007A2D4 01000232 */  andi       $v0, $s0, 0x1
/* 7C39008 8007A2D8 0B004010 */  beqz       $v0, .Llevel_38_8007A308
/* 7C3900C 8007A2DC 21208002 */   addu      $a0, $s4, $zero
/* 7C39010 8007A2E0 443C010C */  jal        func_8004F110
/* 7C39014 8007A2E4 01000524 */   addiu     $a1, $zero, 0x1
/* 7C39018 8007A2E8 01000424 */  addiu      $a0, $zero, 0x1
/* 7C3901C 8007A2EC 37000524 */  addiu      $a1, $zero, 0x37
/* 7C39020 8007A2F0 2130A002 */  addu       $a2, $s5, $zero
/* 7C39024 8007A2F4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C39028 8007A2F8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C3902C 8007A2FC 00000000 */  nop
/* 7C39030 8007A300 09F84000 */  jalr       $v0
/* 7C39034 8007A304 21388002 */   addu      $a3, $s4, $zero
.Llevel_38_8007A308:
/* 7C39038 8007A308 40005226 */  addiu      $s2, $s2, 0x40
/* 7C3903C 8007A30C 01001026 */  addiu      $s0, $s0, 0x1
/* 7C39040 8007A310 0800022A */  slti       $v0, $s0, 0x8
/* 7C39044 8007A314 DEFF4014 */  bnez       $v0, .Llevel_38_8007A290
/* 7C39048 8007A318 20003126 */   addiu     $s1, $s1, 0x20
/* 7C3904C 8007A31C 0C007126 */  addiu      $s1, $s3, 0xC
/* 7C39050 8007A320 21202002 */  addu       $a0, $s1, $zero
/* 7C39054 8007A324 00040524 */  addiu      $a1, $zero, 0x400
/* 7C39058 8007A328 01000624 */  addiu      $a2, $zero, 0x1
/* 7C3905C 8007A32C 21380000 */  addu       $a3, $zero, $zero
/* 7C39060 8007A330 1000A0AF */  sw         $zero, 0x10($sp)
/* 7C39064 8007A334 8C6E000C */  jal        func_8001BA30
/* 7C39068 8007A338 1400B3AF */   sw        $s3, 0x14($sp)
/* 7C3906C 8007A33C 21804000 */  addu       $s0, $v0, $zero
/* 7C39070 8007A340 09000012 */  beqz       $s0, .Llevel_38_8007A368
/* 7C39074 8007A344 21202002 */   addu      $a0, $s1, $zero
/* 7C39078 8007A348 DA60000C */  jal        func_80018368
/* 7C3907C 8007A34C 0C000526 */   addiu     $a1, $s0, 0xC
/* 7C39080 8007A350 05004014 */  bnez       $v0, .Llevel_38_8007A368
/* 7C39084 8007A354 1100033C */   lui       $v1, (0x110000 >> 16)
/* 7C39088 8007A358 1800028E */  lw         $v0, 0x18($s0)
/* 7C3908C 8007A35C 00000000 */  nop
/* 7C39090 8007A360 25104300 */  or         $v0, $v0, $v1
/* 7C39094 8007A364 180002AE */  sw         $v0, 0x18($s0)
.Llevel_38_8007A368:
/* 7C39098 8007A368 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7C3909C 8007A36C 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7C390A0 8007A370 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7C390A4 8007A374 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7C390A8 8007A378 00000000 */  nop
/* 7C390AC 8007A37C 23104300 */  subu       $v0, $v0, $v1
/* 7C390B0 8007A380 15004228 */  slti       $v0, $v0, 0x15
/* 7C390B4 8007A384 0D004014 */  bnez       $v0, .Llevel_38_8007A3BC
/* 7C390B8 8007A388 46010424 */   addiu     $a0, $zero, 0x146
/* 7C390BC 8007A38C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7C390C0 8007A390 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7C390C4 8007A394 00000000 */  nop
/* 7C390C8 8007A398 09F84000 */  jalr       $v0
/* 7C390CC 8007A39C 21286002 */   addu      $a1, $s3, $zero
/* 7C390D0 8007A3A0 21804000 */  addu       $s0, $v0, $zero
/* 7C390D4 8007A3A4 05000012 */  beqz       $s0, .Llevel_38_8007A3BC
/* 7C390D8 8007A3A8 08000224 */   addiu     $v0, $zero, 0x8
/* 7C390DC 8007A3AC 470002A2 */  sb         $v0, 0x47($s0)
/* 7C390E0 8007A3B0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7C390E4 8007A3B4 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 7C390E8 8007A3B8 4E0002A2 */  sb         $v0, 0x4E($s0)
.Llevel_38_8007A3BC:
/* 7C390EC 8007A3BC 0800C48E */  lw         $a0, 0x8($s6)
/* 7C390F0 8007A3C0 00000000 */  nop
/* 7C390F4 8007A3C4 03008010 */  beqz       $a0, .Llevel_38_8007A3D4
/* 7C390F8 8007A3C8 00000000 */   nop
/* 7C390FC 8007A3CC 7A42010C */  jal        func_800509E8
/* 7C39100 8007A3D0 00000000 */   nop
.Llevel_38_8007A3D4:
/* 7C39104 8007A3D4 21206002 */  addu       $a0, $s3, $zero
/* 7C39108 8007A3D8 01000524 */  addiu      $a1, $zero, 0x1
/* 7C3910C 8007A3DC AFEE000C */  jal        func_8003BABC
/* 7C39110 8007A3E0 21300000 */   addu      $a2, $zero, $zero
.Llevel_38_8007A3E4:
/* 7C39114 8007A3E4 C656010C */  jal        func_80055B18
/* 7C39118 8007A3E8 21206002 */   addu      $a0, $s3, $zero
.Llevel_38_8007A3EC:
/* 7C3911C 8007A3EC 9400BF8F */  lw         $ra, 0x94($sp)
/* 7C39120 8007A3F0 9000B68F */  lw         $s6, 0x90($sp)
/* 7C39124 8007A3F4 8C00B58F */  lw         $s5, 0x8C($sp)
/* 7C39128 8007A3F8 8800B48F */  lw         $s4, 0x88($sp)
/* 7C3912C 8007A3FC 8400B38F */  lw         $s3, 0x84($sp)
/* 7C39130 8007A400 8000B28F */  lw         $s2, 0x80($sp)
/* 7C39134 8007A404 7C00B18F */  lw         $s1, 0x7C($sp)
/* 7C39138 8007A408 7800B08F */  lw         $s0, 0x78($sp)
/* 7C3913C 8007A40C 9800BD27 */  addiu      $sp, $sp, 0x98
/* 7C39140 8007A410 0800E003 */  jr         $ra
/* 7C39144 8007A414 00000000 */   nop
.size func_level_38_80079E64, . - func_level_38_80079E64
