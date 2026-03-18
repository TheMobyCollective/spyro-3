.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8007A080
/* 5DF4DB0 8007A080 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 5DF4DB4 8007A084 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 5DF4DB8 8007A088 21888000 */  addu       $s1, $a0, $zero
/* 5DF4DBC 8007A08C 4800BFAF */  sw         $ra, 0x48($sp)
/* 5DF4DC0 8007A090 4400B3AF */  sw         $s3, 0x44($sp)
/* 5DF4DC4 8007A094 4000B2AF */  sw         $s2, 0x40($sp)
/* 5DF4DC8 8007A098 3800B0AF */  sw         $s0, 0x38($sp)
/* 5DF4DCC 8007A09C 0000328E */  lw         $s2, 0x0($s1)
/* 5DF4DD0 8007A0A0 00000000 */  nop
/* 5DF4DD4 8007A0A4 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF4DD8 8007A0A8 00000000 */  nop
/* 5DF4DDC 8007A0AC E1004018 */  blez       $v0, .Llevel_24_8007A434
/* 5DF4DE0 8007A0B0 00000000 */   nop
/* 5DF4DE4 8007A0B4 4D002292 */  lbu        $v0, 0x4D($s1)
/* 5DF4DE8 8007A0B8 00000000 */  nop
/* 5DF4DEC 8007A0BC DD004010 */  beqz       $v0, .Llevel_24_8007A434
/* 5DF4DF0 8007A0C0 00000000 */   nop
/* 5DF4DF4 8007A0C4 49002292 */  lbu        $v0, 0x49($s1)
/* 5DF4DF8 8007A0C8 00000000 */  nop
/* 5DF4DFC 8007A0CC 01004230 */  andi       $v0, $v0, 0x1
/* 5DF4E00 8007A0D0 09004014 */  bnez       $v0, .Llevel_24_8007A0F8
/* 5DF4E04 8007A0D4 00000000 */   nop
/* 5DF4E08 8007A0D8 1400238E */  lw         $v1, 0x14($s1)
/* 5DF4E0C 8007A0DC 1000428E */  lw         $v0, 0x10($s2)
/* 5DF4E10 8007A0E0 00000000 */  nop
/* 5DF4E14 8007A0E4 2A104300 */  slt        $v0, $v0, $v1
/* 5DF4E18 8007A0E8 D2004010 */  beqz       $v0, .Llevel_24_8007A434
/* 5DF4E1C 8007A0EC 00000000 */   nop
/* 5DF4E20 8007A0F0 73E80108 */  j          .Llevel_24_8007A1CC
/* 5DF4E24 8007A0F4 00000000 */   nop
.Llevel_24_8007A0F8:
/* 5DF4E28 8007A0F8 0C002426 */  addiu      $a0, $s1, 0xC
/* 5DF4E2C 8007A0FC 6564000C */  jal        func_80019194
/* 5DF4E30 8007A100 00010524 */   addiu     $a1, $zero, 0x100
/* 5DF4E34 8007A104 31004010 */  beqz       $v0, .Llevel_24_8007A1CC
/* 5DF4E38 8007A108 00000000 */   nop
/* 5DF4E3C 8007A10C 0780133C */  lui        $s3, %hi(D_80071918)
/* 5DF4E40 8007A110 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 5DF4E44 8007A114 21206002 */  addu       $a0, $s3, $zero
/* 5DF4E48 8007A118 C13B010C */  jal        func_8004EF04
/* 5DF4E4C 8007A11C 00100524 */   addiu     $a1, $zero, 0x1000
/* 5DF4E50 8007A120 00004386 */  lh         $v1, 0x0($s2)
/* 5DF4E54 8007A124 0000628E */  lw         $v0, 0x0($s3)
/* 5DF4E58 8007A128 00000000 */  nop
/* 5DF4E5C 8007A12C 18006200 */  mult       $v1, $v0
/* 5DF4E60 8007A130 02004386 */  lh         $v1, 0x2($s2)
/* 5DF4E64 8007A134 12280000 */  mflo       $a1
/* 5DF4E68 8007A138 0780023C */  lui        $v0, %hi(D_8007191C)
/* 5DF4E6C 8007A13C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 5DF4E70 8007A140 00000000 */  nop
/* 5DF4E74 8007A144 18006200 */  mult       $v1, $v0
/* 5DF4E78 8007A148 04004386 */  lh         $v1, 0x4($s2)
/* 5DF4E7C 8007A14C 12200000 */  mflo       $a0
/* 5DF4E80 8007A150 0780023C */  lui        $v0, %hi(D_80071920)
/* 5DF4E84 8007A154 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 5DF4E88 8007A158 00000000 */  nop
/* 5DF4E8C 8007A15C 18006200 */  mult       $v1, $v0
/* 5DF4E90 8007A160 2110A400 */  addu       $v0, $a1, $a0
/* 5DF4E94 8007A164 12180000 */  mflo       $v1
/* 5DF4E98 8007A168 21104300 */  addu       $v0, $v0, $v1
/* 5DF4E9C 8007A16C C3820200 */  sra        $s0, $v0, 11
/* 5DF4EA0 8007A170 16000106 */  bgez       $s0, .Llevel_24_8007A1CC
/* 5DF4EA4 8007A174 21206002 */   addu      $a0, $s3, $zero
/* 5DF4EA8 8007A178 00100524 */  addiu      $a1, $zero, 0x1000
/* 5DF4EAC 8007A17C 43330200 */  sra        $a2, $v0, 13
/* 5DF4EB0 8007A180 233C010C */  jal        func_8004F08C
/* 5DF4EB4 8007A184 2330D000 */   subu      $a2, $a2, $s0
/* 5DF4EB8 8007A188 0000638E */  lw         $v1, 0x0($s3)
/* 5DF4EBC 8007A18C 00004296 */  lhu        $v0, 0x0($s2)
/* 5DF4EC0 8007A190 00000000 */  nop
/* 5DF4EC4 8007A194 21104300 */  addu       $v0, $v0, $v1
/* 5DF4EC8 8007A198 000042A6 */  sh         $v0, 0x0($s2)
/* 5DF4ECC 8007A19C 0780033C */  lui        $v1, %hi(D_8007191C)
/* 5DF4ED0 8007A1A0 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 5DF4ED4 8007A1A4 02004296 */  lhu        $v0, 0x2($s2)
/* 5DF4ED8 8007A1A8 00000000 */  nop
/* 5DF4EDC 8007A1AC 21104300 */  addu       $v0, $v0, $v1
/* 5DF4EE0 8007A1B0 020042A6 */  sh         $v0, 0x2($s2)
/* 5DF4EE4 8007A1B4 0780033C */  lui        $v1, %hi(D_80071920)
/* 5DF4EE8 8007A1B8 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 5DF4EEC 8007A1BC 04004296 */  lhu        $v0, 0x4($s2)
/* 5DF4EF0 8007A1C0 00000000 */  nop
/* 5DF4EF4 8007A1C4 21104300 */  addu       $v0, $v0, $v1
/* 5DF4EF8 8007A1C8 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_24_8007A1CC:
/* 5DF4EFC 8007A1CC 00004386 */  lh         $v1, 0x0($s2)
/* 5DF4F00 8007A1D0 0C00228E */  lw         $v0, 0xC($s1)
/* 5DF4F04 8007A1D4 00000000 */  nop
/* 5DF4F08 8007A1D8 21104300 */  addu       $v0, $v0, $v1
/* 5DF4F0C 8007A1DC 0C0022AE */  sw         $v0, 0xC($s1)
/* 5DF4F10 8007A1E0 02004486 */  lh         $a0, 0x2($s2)
/* 5DF4F14 8007A1E4 1000228E */  lw         $v0, 0x10($s1)
/* 5DF4F18 8007A1E8 49002392 */  lbu        $v1, 0x49($s1)
/* 5DF4F1C 8007A1EC 21104400 */  addu       $v0, $v0, $a0
/* 5DF4F20 8007A1F0 08006330 */  andi       $v1, $v1, 0x8
/* 5DF4F24 8007A1F4 04006010 */  beqz       $v1, .Llevel_24_8007A208
/* 5DF4F28 8007A1F8 100022AE */   sw        $v0, 0x10($s1)
/* 5DF4F2C 8007A1FC 04004296 */  lhu        $v0, 0x4($s2)
/* 5DF4F30 8007A200 8CE80108 */  j          .Llevel_24_8007A230
/* 5DF4F34 8007A204 FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_24_8007A208:
/* 5DF4F38 8007A208 36002386 */  lh         $v1, 0x36($s1)
/* 5DF4F3C 8007A20C 2F010224 */  addiu      $v0, $zero, 0x12F
/* 5DF4F40 8007A210 04006214 */  bne        $v1, $v0, .Llevel_24_8007A224
/* 5DF4F44 8007A214 00000000 */   nop
/* 5DF4F48 8007A218 04004296 */  lhu        $v0, 0x4($s2)
/* 5DF4F4C 8007A21C 8CE80108 */  j          .Llevel_24_8007A230
/* 5DF4F50 8007A220 F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_24_8007A224:
/* 5DF4F54 8007A224 04004296 */  lhu        $v0, 0x4($s2)
/* 5DF4F58 8007A228 00000000 */  nop
/* 5DF4F5C 8007A22C FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_24_8007A230:
/* 5DF4F60 8007A230 040042A6 */  sh         $v0, 0x4($s2)
/* 5DF4F64 8007A234 04004286 */  lh         $v0, 0x4($s2)
/* 5DF4F68 8007A238 00000000 */  nop
/* 5DF4F6C 8007A23C 80FF4228 */  slti       $v0, $v0, -0x80
/* 5DF4F70 8007A240 02004010 */  beqz       $v0, .Llevel_24_8007A24C
/* 5DF4F74 8007A244 80FF0224 */   addiu     $v0, $zero, -0x80
/* 5DF4F78 8007A248 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_24_8007A24C:
/* 5DF4F7C 8007A24C 04004386 */  lh         $v1, 0x4($s2)
/* 5DF4F80 8007A250 1400228E */  lw         $v0, 0x14($s1)
/* 5DF4F84 8007A254 00000000 */  nop
/* 5DF4F88 8007A258 21104300 */  addu       $v0, $v0, $v1
/* 5DF4F8C 8007A25C 140022AE */  sw         $v0, 0x14($s1)
/* 5DF4F90 8007A260 44002292 */  lbu        $v0, 0x44($s1)
/* 5DF4F94 8007A264 06004392 */  lbu        $v1, 0x6($s2)
/* 5DF4F98 8007A268 00000000 */  nop
/* 5DF4F9C 8007A26C 21104300 */  addu       $v0, $v0, $v1
/* 5DF4FA0 8007A270 440022A2 */  sb         $v0, 0x44($s1)
/* 5DF4FA4 8007A274 45002292 */  lbu        $v0, 0x45($s1)
/* 5DF4FA8 8007A278 08004392 */  lbu        $v1, 0x8($s2)
/* 5DF4FAC 8007A27C 00000000 */  nop
/* 5DF4FB0 8007A280 21104300 */  addu       $v0, $v0, $v1
/* 5DF4FB4 8007A284 450022A2 */  sb         $v0, 0x45($s1)
/* 5DF4FB8 8007A288 46002292 */  lbu        $v0, 0x46($s1)
/* 5DF4FBC 8007A28C 0A004492 */  lbu        $a0, 0xA($s2)
/* 5DF4FC0 8007A290 49002392 */  lbu        $v1, 0x49($s1)
/* 5DF4FC4 8007A294 21104400 */  addu       $v0, $v0, $a0
/* 5DF4FC8 8007A298 02006330 */  andi       $v1, $v1, 0x2
/* 5DF4FCC 8007A29C 18006010 */  beqz       $v1, .Llevel_24_8007A300
/* 5DF4FD0 8007A2A0 460022A2 */   sb        $v0, 0x46($s1)
/* 5DF4FD4 8007A2A4 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF4FD8 8007A2A8 00000000 */  nop
/* 5DF4FDC 8007A2AC 03004230 */  andi       $v0, $v0, 0x3
/* 5DF4FE0 8007A2B0 13004014 */  bnez       $v0, .Llevel_24_8007A300
/* 5DF4FE4 8007A2B4 00000000 */   nop
/* 5DF4FE8 8007A2B8 9171010C */  jal        rand
/* 5DF4FEC 8007A2BC 00000000 */   nop
/* 5DF4FF0 8007A2C0 03004230 */  andi       $v0, $v0, 0x3
/* 5DF4FF4 8007A2C4 9171010C */  jal        rand
/* 5DF4FF8 8007A2C8 1000A2AF */   sw        $v0, 0x10($sp)
/* 5DF4FFC 8007A2CC 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF5000 8007A2D0 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF5004 8007A2D4 0C002626 */  addiu      $a2, $s1, 0xC
/* 5DF5008 8007A2D8 1000A727 */  addiu      $a3, $sp, 0x10
/* 5DF500C 8007A2DC 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 5DF5010 8007A2E0 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 5DF5014 8007A2E4 03004230 */  andi       $v0, $v0, 0x3
/* 5DF5018 8007A2E8 1400A2AF */  sw         $v0, 0x14($sp)
/* 5DF501C 8007A2EC 14000224 */  addiu      $v0, $zero, 0x14
/* 5DF5020 8007A2F0 09F86000 */  jalr       $v1
/* 5DF5024 8007A2F4 1800A2AF */   sw        $v0, 0x18($sp)
/* 5DF5028 8007A2F8 08E90108 */  j          .Llevel_24_8007A420
/* 5DF502C 8007A2FC 00000000 */   nop
.Llevel_24_8007A300:
/* 5DF5030 8007A300 49002392 */  lbu        $v1, 0x49($s1)
/* 5DF5034 8007A304 00000000 */  nop
/* 5DF5038 8007A308 04006230 */  andi       $v0, $v1, 0x4
/* 5DF503C 8007A30C 27004010 */  beqz       $v0, .Llevel_24_8007A3AC
/* 5DF5040 8007A310 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF5044 8007A314 42004010 */  beqz       $v0, .Llevel_24_8007A420
/* 5DF5048 8007A318 21800000 */   addu      $s0, $zero, $zero
/* 5DF504C 8007A31C 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_24_8007A320:
/* 5DF5050 8007A320 9171010C */  jal        rand
/* 5DF5054 8007A324 01001026 */   addiu     $s0, $s0, 0x1
/* 5DF5058 8007A328 7F004230 */  andi       $v0, $v0, 0x7F
/* 5DF505C 8007A32C 23106202 */  subu       $v0, $s3, $v0
/* 5DF5060 8007A330 9171010C */  jal        rand
/* 5DF5064 8007A334 1000A2AF */   sw        $v0, 0x10($sp)
/* 5DF5068 8007A338 7F004230 */  andi       $v0, $v0, 0x7F
/* 5DF506C 8007A33C 23106202 */  subu       $v0, $s3, $v0
/* 5DF5070 8007A340 9171010C */  jal        rand
/* 5DF5074 8007A344 1400A2AF */   sw        $v0, 0x14($sp)
/* 5DF5078 8007A348 1000A427 */  addiu      $a0, $sp, 0x10
/* 5DF507C 8007A34C 21288000 */  addu       $a1, $a0, $zero
/* 5DF5080 8007A350 0C002626 */  addiu      $a2, $s1, 0xC
/* 5DF5084 8007A354 7F004230 */  andi       $v0, $v0, 0x7F
/* 5DF5088 8007A358 23106202 */  subu       $v0, $s3, $v0
/* 5DF508C 8007A35C 653C010C */  jal        func_8004F194
/* 5DF5090 8007A360 1800A2AF */   sw        $v0, 0x18($sp)
/* 5DF5094 8007A364 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF5098 8007A368 42000524 */  addiu      $a1, $zero, 0x42
/* 5DF509C 8007A36C 1000A627 */  addiu      $a2, $sp, 0x10
/* 5DF50A0 8007A370 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF50A4 8007A374 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF50A8 8007A378 00000000 */  nop
/* 5DF50AC 8007A37C 09F84000 */  jalr       $v0
/* 5DF50B0 8007A380 01000724 */   addiu     $a3, $zero, 0x1
/* 5DF50B4 8007A384 49002292 */  lbu        $v0, 0x49($s1)
/* 5DF50B8 8007A388 00000000 */  nop
/* 5DF50BC 8007A38C 01004230 */  andi       $v0, $v0, 0x1
/* 5DF50C0 8007A390 40100200 */  sll        $v0, $v0, 1
/* 5DF50C4 8007A394 01004224 */  addiu      $v0, $v0, 0x1
/* 5DF50C8 8007A398 2A100202 */  slt        $v0, $s0, $v0
/* 5DF50CC 8007A39C 20004010 */  beqz       $v0, .Llevel_24_8007A420
/* 5DF50D0 8007A3A0 00000000 */   nop
/* 5DF50D4 8007A3A4 C8E80108 */  j          .Llevel_24_8007A320
/* 5DF50D8 8007A3A8 00000000 */   nop
.Llevel_24_8007A3AC:
/* 5DF50DC 8007A3AC 08006230 */  andi       $v0, $v1, 0x8
/* 5DF50E0 8007A3B0 1B004010 */  beqz       $v0, .Llevel_24_8007A420
/* 5DF50E4 8007A3B4 00000000 */   nop
/* 5DF50E8 8007A3B8 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF50EC 8007A3BC 00000000 */  nop
/* 5DF50F0 8007A3C0 07004230 */  andi       $v0, $v0, 0x7
/* 5DF50F4 8007A3C4 16004014 */  bnez       $v0, .Llevel_24_8007A420
/* 5DF50F8 8007A3C8 00000000 */   nop
/* 5DF50FC 8007A3CC 9171010C */  jal        rand
/* 5DF5100 8007A3D0 08001024 */   addiu     $s0, $zero, 0x8
/* 5DF5104 8007A3D4 0F004230 */  andi       $v0, $v0, 0xF
/* 5DF5108 8007A3D8 23100202 */  subu       $v0, $s0, $v0
/* 5DF510C 8007A3DC 9171010C */  jal        rand
/* 5DF5110 8007A3E0 1000A2AF */   sw        $v0, 0x10($sp)
/* 5DF5114 8007A3E4 0F004230 */  andi       $v0, $v0, 0xF
/* 5DF5118 8007A3E8 23800202 */  subu       $s0, $s0, $v0
/* 5DF511C 8007A3EC 9171010C */  jal        rand
/* 5DF5120 8007A3F0 1400B0AF */   sw        $s0, 0x14($sp)
/* 5DF5124 8007A3F4 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF5128 8007A3F8 27000524 */  addiu      $a1, $zero, 0x27
/* 5DF512C 8007A3FC 0C002626 */  addiu      $a2, $s1, 0xC
/* 5DF5130 8007A400 1000A727 */  addiu      $a3, $sp, 0x10
/* 5DF5134 8007A404 07004230 */  andi       $v0, $v0, 0x7
/* 5DF5138 8007A408 04000324 */  addiu      $v1, $zero, 0x4
/* 5DF513C 8007A40C 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 5DF5140 8007A410 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 5DF5144 8007A414 23186200 */  subu       $v1, $v1, $v0
/* 5DF5148 8007A418 09F80001 */  jalr       $t0
/* 5DF514C 8007A41C 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_24_8007A420:
/* 5DF5150 8007A420 0C00428E */  lw         $v0, 0xC($s2)
/* 5DF5154 8007A424 00000000 */  nop
/* 5DF5158 8007A428 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 5DF515C 8007A42C 24E90108 */  j          .Llevel_24_8007A490
/* 5DF5160 8007A430 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_24_8007A434:
/* 5DF5164 8007A434 49002392 */  lbu        $v1, 0x49($s1)
/* 5DF5168 8007A438 00000000 */  nop
/* 5DF516C 8007A43C 01006230 */  andi       $v0, $v1, 0x1
/* 5DF5170 8007A440 11004010 */  beqz       $v0, .Llevel_24_8007A488
/* 5DF5174 8007A444 10006230 */   andi      $v0, $v1, 0x10
/* 5DF5178 8007A448 07004010 */  beqz       $v0, .Llevel_24_8007A468
/* 5DF517C 8007A44C 0F000524 */   addiu     $a1, $zero, 0xF
/* 5DF5180 8007A450 08000424 */  addiu      $a0, $zero, 0x8
/* 5DF5184 8007A454 0C002626 */  addiu      $a2, $s1, 0xC
/* 5DF5188 8007A458 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF518C 8007A45C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF5190 8007A460 20E90108 */  j          .Llevel_24_8007A480
/* 5DF5194 8007A464 21380000 */   addu      $a3, $zero, $zero
.Llevel_24_8007A468:
/* 5DF5198 8007A468 08000424 */  addiu      $a0, $zero, 0x8
/* 5DF519C 8007A46C 46000524 */  addiu      $a1, $zero, 0x46
/* 5DF51A0 8007A470 0C002626 */  addiu      $a2, $s1, 0xC
/* 5DF51A4 8007A474 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5DF51A8 8007A478 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5DF51AC 8007A47C 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_24_8007A480:
/* 5DF51B0 8007A480 09F84000 */  jalr       $v0
/* 5DF51B4 8007A484 00000000 */   nop
.Llevel_24_8007A488:
/* 5DF51B8 8007A488 C656010C */  jal        func_80055B18
/* 5DF51BC 8007A48C 21202002 */   addu      $a0, $s1, $zero
.Llevel_24_8007A490:
/* 5DF51C0 8007A490 4800BF8F */  lw         $ra, 0x48($sp)
/* 5DF51C4 8007A494 4400B38F */  lw         $s3, 0x44($sp)
/* 5DF51C8 8007A498 4000B28F */  lw         $s2, 0x40($sp)
/* 5DF51CC 8007A49C 3C00B18F */  lw         $s1, 0x3C($sp)
/* 5DF51D0 8007A4A0 3800B08F */  lw         $s0, 0x38($sp)
/* 5DF51D4 8007A4A4 5000BD27 */  addiu      $sp, $sp, 0x50
/* 5DF51D8 8007A4A8 0800E003 */  jr         $ra
/* 5DF51DC 8007A4AC 00000000 */   nop
.size func_level_24_8007A080, . - func_level_24_8007A080
