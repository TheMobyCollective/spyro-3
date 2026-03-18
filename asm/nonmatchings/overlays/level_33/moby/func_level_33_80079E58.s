.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_33_80079E58
/* 71B1B88 80079E58 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 71B1B8C 80079E5C 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 71B1B90 80079E60 21888000 */  addu       $s1, $a0, $zero
/* 71B1B94 80079E64 4800BFAF */  sw         $ra, 0x48($sp)
/* 71B1B98 80079E68 4400B3AF */  sw         $s3, 0x44($sp)
/* 71B1B9C 80079E6C 4000B2AF */  sw         $s2, 0x40($sp)
/* 71B1BA0 80079E70 3800B0AF */  sw         $s0, 0x38($sp)
/* 71B1BA4 80079E74 0000328E */  lw         $s2, 0x0($s1)
/* 71B1BA8 80079E78 00000000 */  nop
/* 71B1BAC 80079E7C 0C00428E */  lw         $v0, 0xC($s2)
/* 71B1BB0 80079E80 00000000 */  nop
/* 71B1BB4 80079E84 E1004018 */  blez       $v0, .Llevel_33_8007A20C
/* 71B1BB8 80079E88 00000000 */   nop
/* 71B1BBC 80079E8C 4D002292 */  lbu        $v0, 0x4D($s1)
/* 71B1BC0 80079E90 00000000 */  nop
/* 71B1BC4 80079E94 DD004010 */  beqz       $v0, .Llevel_33_8007A20C
/* 71B1BC8 80079E98 00000000 */   nop
/* 71B1BCC 80079E9C 49002292 */  lbu        $v0, 0x49($s1)
/* 71B1BD0 80079EA0 00000000 */  nop
/* 71B1BD4 80079EA4 01004230 */  andi       $v0, $v0, 0x1
/* 71B1BD8 80079EA8 09004014 */  bnez       $v0, .Llevel_33_80079ED0
/* 71B1BDC 80079EAC 00000000 */   nop
/* 71B1BE0 80079EB0 1400238E */  lw         $v1, 0x14($s1)
/* 71B1BE4 80079EB4 1000428E */  lw         $v0, 0x10($s2)
/* 71B1BE8 80079EB8 00000000 */  nop
/* 71B1BEC 80079EBC 2A104300 */  slt        $v0, $v0, $v1
/* 71B1BF0 80079EC0 D2004010 */  beqz       $v0, .Llevel_33_8007A20C
/* 71B1BF4 80079EC4 00000000 */   nop
/* 71B1BF8 80079EC8 E9E70108 */  j          .Llevel_33_80079FA4
/* 71B1BFC 80079ECC 00000000 */   nop
.Llevel_33_80079ED0:
/* 71B1C00 80079ED0 0C002426 */  addiu      $a0, $s1, 0xC
/* 71B1C04 80079ED4 6564000C */  jal        func_80019194
/* 71B1C08 80079ED8 00010524 */   addiu     $a1, $zero, 0x100
/* 71B1C0C 80079EDC 31004010 */  beqz       $v0, .Llevel_33_80079FA4
/* 71B1C10 80079EE0 00000000 */   nop
/* 71B1C14 80079EE4 0780133C */  lui        $s3, %hi(D_80071918)
/* 71B1C18 80079EE8 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 71B1C1C 80079EEC 21206002 */  addu       $a0, $s3, $zero
/* 71B1C20 80079EF0 C13B010C */  jal        func_8004EF04
/* 71B1C24 80079EF4 00100524 */   addiu     $a1, $zero, 0x1000
/* 71B1C28 80079EF8 00004386 */  lh         $v1, 0x0($s2)
/* 71B1C2C 80079EFC 0000628E */  lw         $v0, 0x0($s3)
/* 71B1C30 80079F00 00000000 */  nop
/* 71B1C34 80079F04 18006200 */  mult       $v1, $v0
/* 71B1C38 80079F08 02004386 */  lh         $v1, 0x2($s2)
/* 71B1C3C 80079F0C 12280000 */  mflo       $a1
/* 71B1C40 80079F10 0780023C */  lui        $v0, %hi(D_8007191C)
/* 71B1C44 80079F14 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 71B1C48 80079F18 00000000 */  nop
/* 71B1C4C 80079F1C 18006200 */  mult       $v1, $v0
/* 71B1C50 80079F20 04004386 */  lh         $v1, 0x4($s2)
/* 71B1C54 80079F24 12200000 */  mflo       $a0
/* 71B1C58 80079F28 0780023C */  lui        $v0, %hi(D_80071920)
/* 71B1C5C 80079F2C 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 71B1C60 80079F30 00000000 */  nop
/* 71B1C64 80079F34 18006200 */  mult       $v1, $v0
/* 71B1C68 80079F38 2110A400 */  addu       $v0, $a1, $a0
/* 71B1C6C 80079F3C 12180000 */  mflo       $v1
/* 71B1C70 80079F40 21104300 */  addu       $v0, $v0, $v1
/* 71B1C74 80079F44 C3820200 */  sra        $s0, $v0, 11
/* 71B1C78 80079F48 16000106 */  bgez       $s0, .Llevel_33_80079FA4
/* 71B1C7C 80079F4C 21206002 */   addu      $a0, $s3, $zero
/* 71B1C80 80079F50 00100524 */  addiu      $a1, $zero, 0x1000
/* 71B1C84 80079F54 43330200 */  sra        $a2, $v0, 13
/* 71B1C88 80079F58 233C010C */  jal        func_8004F08C
/* 71B1C8C 80079F5C 2330D000 */   subu      $a2, $a2, $s0
/* 71B1C90 80079F60 0000638E */  lw         $v1, 0x0($s3)
/* 71B1C94 80079F64 00004296 */  lhu        $v0, 0x0($s2)
/* 71B1C98 80079F68 00000000 */  nop
/* 71B1C9C 80079F6C 21104300 */  addu       $v0, $v0, $v1
/* 71B1CA0 80079F70 000042A6 */  sh         $v0, 0x0($s2)
/* 71B1CA4 80079F74 0780033C */  lui        $v1, %hi(D_8007191C)
/* 71B1CA8 80079F78 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 71B1CAC 80079F7C 02004296 */  lhu        $v0, 0x2($s2)
/* 71B1CB0 80079F80 00000000 */  nop
/* 71B1CB4 80079F84 21104300 */  addu       $v0, $v0, $v1
/* 71B1CB8 80079F88 020042A6 */  sh         $v0, 0x2($s2)
/* 71B1CBC 80079F8C 0780033C */  lui        $v1, %hi(D_80071920)
/* 71B1CC0 80079F90 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 71B1CC4 80079F94 04004296 */  lhu        $v0, 0x4($s2)
/* 71B1CC8 80079F98 00000000 */  nop
/* 71B1CCC 80079F9C 21104300 */  addu       $v0, $v0, $v1
/* 71B1CD0 80079FA0 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_33_80079FA4:
/* 71B1CD4 80079FA4 00004386 */  lh         $v1, 0x0($s2)
/* 71B1CD8 80079FA8 0C00228E */  lw         $v0, 0xC($s1)
/* 71B1CDC 80079FAC 00000000 */  nop
/* 71B1CE0 80079FB0 21104300 */  addu       $v0, $v0, $v1
/* 71B1CE4 80079FB4 0C0022AE */  sw         $v0, 0xC($s1)
/* 71B1CE8 80079FB8 02004486 */  lh         $a0, 0x2($s2)
/* 71B1CEC 80079FBC 1000228E */  lw         $v0, 0x10($s1)
/* 71B1CF0 80079FC0 49002392 */  lbu        $v1, 0x49($s1)
/* 71B1CF4 80079FC4 21104400 */  addu       $v0, $v0, $a0
/* 71B1CF8 80079FC8 08006330 */  andi       $v1, $v1, 0x8
/* 71B1CFC 80079FCC 04006010 */  beqz       $v1, .Llevel_33_80079FE0
/* 71B1D00 80079FD0 100022AE */   sw        $v0, 0x10($s1)
/* 71B1D04 80079FD4 04004296 */  lhu        $v0, 0x4($s2)
/* 71B1D08 80079FD8 02E80108 */  j          .Llevel_33_8007A008
/* 71B1D0C 80079FDC FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_33_80079FE0:
/* 71B1D10 80079FE0 36002386 */  lh         $v1, 0x36($s1)
/* 71B1D14 80079FE4 2F010224 */  addiu      $v0, $zero, 0x12F
/* 71B1D18 80079FE8 04006214 */  bne        $v1, $v0, .Llevel_33_80079FFC
/* 71B1D1C 80079FEC 00000000 */   nop
/* 71B1D20 80079FF0 04004296 */  lhu        $v0, 0x4($s2)
/* 71B1D24 80079FF4 02E80108 */  j          .Llevel_33_8007A008
/* 71B1D28 80079FF8 F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_33_80079FFC:
/* 71B1D2C 80079FFC 04004296 */  lhu        $v0, 0x4($s2)
/* 71B1D30 8007A000 00000000 */  nop
/* 71B1D34 8007A004 FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_33_8007A008:
/* 71B1D38 8007A008 040042A6 */  sh         $v0, 0x4($s2)
/* 71B1D3C 8007A00C 04004286 */  lh         $v0, 0x4($s2)
/* 71B1D40 8007A010 00000000 */  nop
/* 71B1D44 8007A014 80FF4228 */  slti       $v0, $v0, -0x80
/* 71B1D48 8007A018 02004010 */  beqz       $v0, .Llevel_33_8007A024
/* 71B1D4C 8007A01C 80FF0224 */   addiu     $v0, $zero, -0x80
/* 71B1D50 8007A020 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_33_8007A024:
/* 71B1D54 8007A024 04004386 */  lh         $v1, 0x4($s2)
/* 71B1D58 8007A028 1400228E */  lw         $v0, 0x14($s1)
/* 71B1D5C 8007A02C 00000000 */  nop
/* 71B1D60 8007A030 21104300 */  addu       $v0, $v0, $v1
/* 71B1D64 8007A034 140022AE */  sw         $v0, 0x14($s1)
/* 71B1D68 8007A038 44002292 */  lbu        $v0, 0x44($s1)
/* 71B1D6C 8007A03C 06004392 */  lbu        $v1, 0x6($s2)
/* 71B1D70 8007A040 00000000 */  nop
/* 71B1D74 8007A044 21104300 */  addu       $v0, $v0, $v1
/* 71B1D78 8007A048 440022A2 */  sb         $v0, 0x44($s1)
/* 71B1D7C 8007A04C 45002292 */  lbu        $v0, 0x45($s1)
/* 71B1D80 8007A050 08004392 */  lbu        $v1, 0x8($s2)
/* 71B1D84 8007A054 00000000 */  nop
/* 71B1D88 8007A058 21104300 */  addu       $v0, $v0, $v1
/* 71B1D8C 8007A05C 450022A2 */  sb         $v0, 0x45($s1)
/* 71B1D90 8007A060 46002292 */  lbu        $v0, 0x46($s1)
/* 71B1D94 8007A064 0A004492 */  lbu        $a0, 0xA($s2)
/* 71B1D98 8007A068 49002392 */  lbu        $v1, 0x49($s1)
/* 71B1D9C 8007A06C 21104400 */  addu       $v0, $v0, $a0
/* 71B1DA0 8007A070 02006330 */  andi       $v1, $v1, 0x2
/* 71B1DA4 8007A074 18006010 */  beqz       $v1, .Llevel_33_8007A0D8
/* 71B1DA8 8007A078 460022A2 */   sb        $v0, 0x46($s1)
/* 71B1DAC 8007A07C 0C00428E */  lw         $v0, 0xC($s2)
/* 71B1DB0 8007A080 00000000 */  nop
/* 71B1DB4 8007A084 03004230 */  andi       $v0, $v0, 0x3
/* 71B1DB8 8007A088 13004014 */  bnez       $v0, .Llevel_33_8007A0D8
/* 71B1DBC 8007A08C 00000000 */   nop
/* 71B1DC0 8007A090 9171010C */  jal        rand
/* 71B1DC4 8007A094 00000000 */   nop
/* 71B1DC8 8007A098 03004230 */  andi       $v0, $v0, 0x3
/* 71B1DCC 8007A09C 9171010C */  jal        rand
/* 71B1DD0 8007A0A0 1000A2AF */   sw        $v0, 0x10($sp)
/* 71B1DD4 8007A0A4 01000424 */  addiu      $a0, $zero, 0x1
/* 71B1DD8 8007A0A8 01000524 */  addiu      $a1, $zero, 0x1
/* 71B1DDC 8007A0AC 0C002626 */  addiu      $a2, $s1, 0xC
/* 71B1DE0 8007A0B0 1000A727 */  addiu      $a3, $sp, 0x10
/* 71B1DE4 8007A0B4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 71B1DE8 8007A0B8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 71B1DEC 8007A0BC 03004230 */  andi       $v0, $v0, 0x3
/* 71B1DF0 8007A0C0 1400A2AF */  sw         $v0, 0x14($sp)
/* 71B1DF4 8007A0C4 14000224 */  addiu      $v0, $zero, 0x14
/* 71B1DF8 8007A0C8 09F86000 */  jalr       $v1
/* 71B1DFC 8007A0CC 1800A2AF */   sw        $v0, 0x18($sp)
/* 71B1E00 8007A0D0 7EE80108 */  j          .Llevel_33_8007A1F8
/* 71B1E04 8007A0D4 00000000 */   nop
.Llevel_33_8007A0D8:
/* 71B1E08 8007A0D8 49002392 */  lbu        $v1, 0x49($s1)
/* 71B1E0C 8007A0DC 00000000 */  nop
/* 71B1E10 8007A0E0 04006230 */  andi       $v0, $v1, 0x4
/* 71B1E14 8007A0E4 27004010 */  beqz       $v0, .Llevel_33_8007A184
/* 71B1E18 8007A0E8 01000224 */   addiu     $v0, $zero, 0x1
/* 71B1E1C 8007A0EC 42004010 */  beqz       $v0, .Llevel_33_8007A1F8
/* 71B1E20 8007A0F0 21800000 */   addu      $s0, $zero, $zero
/* 71B1E24 8007A0F4 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_33_8007A0F8:
/* 71B1E28 8007A0F8 9171010C */  jal        rand
/* 71B1E2C 8007A0FC 01001026 */   addiu     $s0, $s0, 0x1
/* 71B1E30 8007A100 7F004230 */  andi       $v0, $v0, 0x7F
/* 71B1E34 8007A104 23106202 */  subu       $v0, $s3, $v0
/* 71B1E38 8007A108 9171010C */  jal        rand
/* 71B1E3C 8007A10C 1000A2AF */   sw        $v0, 0x10($sp)
/* 71B1E40 8007A110 7F004230 */  andi       $v0, $v0, 0x7F
/* 71B1E44 8007A114 23106202 */  subu       $v0, $s3, $v0
/* 71B1E48 8007A118 9171010C */  jal        rand
/* 71B1E4C 8007A11C 1400A2AF */   sw        $v0, 0x14($sp)
/* 71B1E50 8007A120 1000A427 */  addiu      $a0, $sp, 0x10
/* 71B1E54 8007A124 21288000 */  addu       $a1, $a0, $zero
/* 71B1E58 8007A128 0C002626 */  addiu      $a2, $s1, 0xC
/* 71B1E5C 8007A12C 7F004230 */  andi       $v0, $v0, 0x7F
/* 71B1E60 8007A130 23106202 */  subu       $v0, $s3, $v0
/* 71B1E64 8007A134 653C010C */  jal        func_8004F194
/* 71B1E68 8007A138 1800A2AF */   sw        $v0, 0x18($sp)
/* 71B1E6C 8007A13C 01000424 */  addiu      $a0, $zero, 0x1
/* 71B1E70 8007A140 42000524 */  addiu      $a1, $zero, 0x42
/* 71B1E74 8007A144 1000A627 */  addiu      $a2, $sp, 0x10
/* 71B1E78 8007A148 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B1E7C 8007A14C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B1E80 8007A150 00000000 */  nop
/* 71B1E84 8007A154 09F84000 */  jalr       $v0
/* 71B1E88 8007A158 01000724 */   addiu     $a3, $zero, 0x1
/* 71B1E8C 8007A15C 49002292 */  lbu        $v0, 0x49($s1)
/* 71B1E90 8007A160 00000000 */  nop
/* 71B1E94 8007A164 01004230 */  andi       $v0, $v0, 0x1
/* 71B1E98 8007A168 40100200 */  sll        $v0, $v0, 1
/* 71B1E9C 8007A16C 01004224 */  addiu      $v0, $v0, 0x1
/* 71B1EA0 8007A170 2A100202 */  slt        $v0, $s0, $v0
/* 71B1EA4 8007A174 20004010 */  beqz       $v0, .Llevel_33_8007A1F8
/* 71B1EA8 8007A178 00000000 */   nop
/* 71B1EAC 8007A17C 3EE80108 */  j          .Llevel_33_8007A0F8
/* 71B1EB0 8007A180 00000000 */   nop
.Llevel_33_8007A184:
/* 71B1EB4 8007A184 08006230 */  andi       $v0, $v1, 0x8
/* 71B1EB8 8007A188 1B004010 */  beqz       $v0, .Llevel_33_8007A1F8
/* 71B1EBC 8007A18C 00000000 */   nop
/* 71B1EC0 8007A190 0C00428E */  lw         $v0, 0xC($s2)
/* 71B1EC4 8007A194 00000000 */  nop
/* 71B1EC8 8007A198 07004230 */  andi       $v0, $v0, 0x7
/* 71B1ECC 8007A19C 16004014 */  bnez       $v0, .Llevel_33_8007A1F8
/* 71B1ED0 8007A1A0 00000000 */   nop
/* 71B1ED4 8007A1A4 9171010C */  jal        rand
/* 71B1ED8 8007A1A8 08001024 */   addiu     $s0, $zero, 0x8
/* 71B1EDC 8007A1AC 0F004230 */  andi       $v0, $v0, 0xF
/* 71B1EE0 8007A1B0 23100202 */  subu       $v0, $s0, $v0
/* 71B1EE4 8007A1B4 9171010C */  jal        rand
/* 71B1EE8 8007A1B8 1000A2AF */   sw        $v0, 0x10($sp)
/* 71B1EEC 8007A1BC 0F004230 */  andi       $v0, $v0, 0xF
/* 71B1EF0 8007A1C0 23800202 */  subu       $s0, $s0, $v0
/* 71B1EF4 8007A1C4 9171010C */  jal        rand
/* 71B1EF8 8007A1C8 1400B0AF */   sw        $s0, 0x14($sp)
/* 71B1EFC 8007A1CC 01000424 */  addiu      $a0, $zero, 0x1
/* 71B1F00 8007A1D0 27000524 */  addiu      $a1, $zero, 0x27
/* 71B1F04 8007A1D4 0C002626 */  addiu      $a2, $s1, 0xC
/* 71B1F08 8007A1D8 1000A727 */  addiu      $a3, $sp, 0x10
/* 71B1F0C 8007A1DC 07004230 */  andi       $v0, $v0, 0x7
/* 71B1F10 8007A1E0 04000324 */  addiu      $v1, $zero, 0x4
/* 71B1F14 8007A1E4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 71B1F18 8007A1E8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 71B1F1C 8007A1EC 23186200 */  subu       $v1, $v1, $v0
/* 71B1F20 8007A1F0 09F80001 */  jalr       $t0
/* 71B1F24 8007A1F4 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_33_8007A1F8:
/* 71B1F28 8007A1F8 0C00428E */  lw         $v0, 0xC($s2)
/* 71B1F2C 8007A1FC 00000000 */  nop
/* 71B1F30 8007A200 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 71B1F34 8007A204 9AE80108 */  j          .Llevel_33_8007A268
/* 71B1F38 8007A208 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_33_8007A20C:
/* 71B1F3C 8007A20C 49002392 */  lbu        $v1, 0x49($s1)
/* 71B1F40 8007A210 00000000 */  nop
/* 71B1F44 8007A214 01006230 */  andi       $v0, $v1, 0x1
/* 71B1F48 8007A218 11004010 */  beqz       $v0, .Llevel_33_8007A260
/* 71B1F4C 8007A21C 10006230 */   andi      $v0, $v1, 0x10
/* 71B1F50 8007A220 07004010 */  beqz       $v0, .Llevel_33_8007A240
/* 71B1F54 8007A224 0F000524 */   addiu     $a1, $zero, 0xF
/* 71B1F58 8007A228 08000424 */  addiu      $a0, $zero, 0x8
/* 71B1F5C 8007A22C 0C002626 */  addiu      $a2, $s1, 0xC
/* 71B1F60 8007A230 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B1F64 8007A234 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B1F68 8007A238 96E80108 */  j          .Llevel_33_8007A258
/* 71B1F6C 8007A23C 21380000 */   addu      $a3, $zero, $zero
.Llevel_33_8007A240:
/* 71B1F70 8007A240 08000424 */  addiu      $a0, $zero, 0x8
/* 71B1F74 8007A244 46000524 */  addiu      $a1, $zero, 0x46
/* 71B1F78 8007A248 0C002626 */  addiu      $a2, $s1, 0xC
/* 71B1F7C 8007A24C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 71B1F80 8007A250 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 71B1F84 8007A254 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_33_8007A258:
/* 71B1F88 8007A258 09F84000 */  jalr       $v0
/* 71B1F8C 8007A25C 00000000 */   nop
.Llevel_33_8007A260:
/* 71B1F90 8007A260 C656010C */  jal        func_80055B18
/* 71B1F94 8007A264 21202002 */   addu      $a0, $s1, $zero
.Llevel_33_8007A268:
/* 71B1F98 8007A268 4800BF8F */  lw         $ra, 0x48($sp)
/* 71B1F9C 8007A26C 4400B38F */  lw         $s3, 0x44($sp)
/* 71B1FA0 8007A270 4000B28F */  lw         $s2, 0x40($sp)
/* 71B1FA4 8007A274 3C00B18F */  lw         $s1, 0x3C($sp)
/* 71B1FA8 8007A278 3800B08F */  lw         $s0, 0x38($sp)
/* 71B1FAC 8007A27C 5000BD27 */  addiu      $sp, $sp, 0x50
/* 71B1FB0 8007A280 0800E003 */  jr         $ra
/* 71B1FB4 8007A284 00000000 */   nop
.size func_level_33_80079E58, . - func_level_33_80079E58
