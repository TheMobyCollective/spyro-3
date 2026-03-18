.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8007A8F4
/* 6DE1E24 8007A8F4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6DE1E28 8007A8F8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 6DE1E2C 8007A8FC 21888000 */  addu       $s1, $a0, $zero
/* 6DE1E30 8007A900 3000BFAF */  sw         $ra, 0x30($sp)
/* 6DE1E34 8007A904 2800B0AF */  sw         $s0, 0x28($sp)
/* 6DE1E38 8007A908 0000308E */  lw         $s0, 0x0($s1)
/* 6DE1E3C 8007A90C 00000000 */  nop
/* 6DE1E40 8007A910 0E000286 */  lh         $v0, 0xE($s0)
/* 6DE1E44 8007A914 00000000 */  nop
/* 6DE1E48 8007A918 B7004010 */  beqz       $v0, .Llevel_32_8007ABF8
/* 6DE1E4C 8007A91C 21184000 */   addu      $v1, $v0, $zero
/* 6DE1E50 8007A920 02004228 */  slti       $v0, $v0, 0x2
/* 6DE1E54 8007A924 0B004014 */  bnez       $v0, .Llevel_32_8007A954
/* 6DE1E58 8007A928 00000000 */   nop
/* 6DE1E5C 8007A92C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6DE1E60 8007A930 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6DE1E64 8007A934 00000000 */  nop
/* 6DE1E68 8007A938 23106200 */  subu       $v0, $v1, $v0
/* 6DE1E6C 8007A93C 0E0002A6 */  sh         $v0, 0xE($s0)
/* 6DE1E70 8007A940 00140200 */  sll        $v0, $v0, 16
/* 6DE1E74 8007A944 0400401C */  bgtz       $v0, .Llevel_32_8007A958
/* 6DE1E78 8007A948 0C000426 */   addiu     $a0, $s0, 0xC
/* 6DE1E7C 8007A94C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DE1E80 8007A950 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_32_8007A954:
/* 6DE1E84 8007A954 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_32_8007A958:
/* 6DE1E88 8007A958 69D6000C */  jal        func_800359A4
/* 6DE1E8C 8007A95C 02000524 */   addiu     $a1, $zero, 0x2
/* 6DE1E90 8007A960 0A004014 */  bnez       $v0, .Llevel_32_8007A98C
/* 6DE1E94 8007A964 08000424 */   addiu     $a0, $zero, 0x8
/* 6DE1E98 8007A968 4D002292 */  lbu        $v0, 0x4D($s1)
/* 6DE1E9C 8007A96C 00000000 */  nop
/* 6DE1EA0 8007A970 11004014 */  bnez       $v0, .Llevel_32_8007A9B8
/* 6DE1EA4 8007A974 0C002426 */   addiu     $a0, $s1, 0xC
/* 6DE1EA8 8007A978 0E000386 */  lh         $v1, 0xE($s0)
/* 6DE1EAC 8007A97C 01000224 */  addiu      $v0, $zero, 0x1
/* 6DE1EB0 8007A980 0D006214 */  bne        $v1, $v0, .Llevel_32_8007A9B8
/* 6DE1EB4 8007A984 00000000 */   nop
/* 6DE1EB8 8007A988 08000424 */  addiu      $a0, $zero, 0x8
.Llevel_32_8007A98C:
/* 6DE1EBC 8007A98C 46000524 */  addiu      $a1, $zero, 0x46
/* 6DE1EC0 8007A990 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE1EC4 8007A994 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE1EC8 8007A998 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE1ECC 8007A99C 00000000 */  nop
/* 6DE1ED0 8007A9A0 09F84000 */  jalr       $v0
/* 6DE1ED4 8007A9A4 10000724 */   addiu     $a3, $zero, 0x10
/* 6DE1ED8 8007A9A8 C656010C */  jal        func_80055B18
/* 6DE1EDC 8007A9AC 21202002 */   addu      $a0, $s1, $zero
/* 6DE1EE0 8007A9B0 FEEA0108 */  j          .Llevel_32_8007ABF8
/* 6DE1EE4 8007A9B4 00000000 */   nop
.Llevel_32_8007A9B8:
/* 6DE1EE8 8007A9B8 6564000C */  jal        func_80019194
/* 6DE1EEC 8007A9BC 2C010524 */   addiu     $a1, $zero, 0x12C
/* 6DE1EF0 8007A9C0 17004010 */  beqz       $v0, .Llevel_32_8007AA20
/* 6DE1EF4 8007A9C4 1000A427 */   addiu     $a0, $sp, 0x10
/* 6DE1EF8 8007A9C8 00000286 */  lh         $v0, 0x0($s0)
/* 6DE1EFC 8007A9CC 00000000 */  nop
/* 6DE1F00 8007A9D0 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DE1F04 8007A9D4 02000286 */  lh         $v0, 0x2($s0)
/* 6DE1F08 8007A9D8 0780053C */  lui        $a1, %hi(D_80071918)
/* 6DE1F0C 8007A9DC 1819A524 */  addiu      $a1, $a1, %lo(D_80071918)
/* 6DE1F10 8007A9E0 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DE1F14 8007A9E4 04000286 */  lh         $v0, 0x4($s0)
/* 6DE1F18 8007A9E8 21308000 */  addu       $a2, $a0, $zero
/* 6DE1F1C 8007A9EC DD3B010C */  jal        func_8004EF74
/* 6DE1F20 8007A9F0 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DE1F24 8007A9F4 0A004010 */  beqz       $v0, .Llevel_32_8007AA20
/* 6DE1F28 8007A9F8 00000000 */   nop
/* 6DE1F2C 8007A9FC 1000A28F */  lw         $v0, 0x10($sp)
/* 6DE1F30 8007AA00 00000000 */  nop
/* 6DE1F34 8007AA04 000002A6 */  sh         $v0, 0x0($s0)
/* 6DE1F38 8007AA08 1400A28F */  lw         $v0, 0x14($sp)
/* 6DE1F3C 8007AA0C 00000000 */  nop
/* 6DE1F40 8007AA10 020002A6 */  sh         $v0, 0x2($s0)
/* 6DE1F44 8007AA14 1800A28F */  lw         $v0, 0x18($sp)
/* 6DE1F48 8007AA18 00000000 */  nop
/* 6DE1F4C 8007AA1C 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_32_8007AA20:
/* 6DE1F50 8007AA20 00000386 */  lh         $v1, 0x0($s0)
/* 6DE1F54 8007AA24 0C00228E */  lw         $v0, 0xC($s1)
/* 6DE1F58 8007AA28 00000000 */  nop
/* 6DE1F5C 8007AA2C 21104300 */  addu       $v0, $v0, $v1
/* 6DE1F60 8007AA30 0C0022AE */  sw         $v0, 0xC($s1)
/* 6DE1F64 8007AA34 02000386 */  lh         $v1, 0x2($s0)
/* 6DE1F68 8007AA38 1000228E */  lw         $v0, 0x10($s1)
/* 6DE1F6C 8007AA3C 00000000 */  nop
/* 6DE1F70 8007AA40 21104300 */  addu       $v0, $v0, $v1
/* 6DE1F74 8007AA44 100022AE */  sw         $v0, 0x10($s1)
/* 6DE1F78 8007AA48 12000386 */  lh         $v1, 0x12($s0)
/* 6DE1F7C 8007AA4C 03000224 */  addiu      $v0, $zero, 0x3
/* 6DE1F80 8007AA50 04006214 */  bne        $v1, $v0, .Llevel_32_8007AA64
/* 6DE1F84 8007AA54 00000000 */   nop
/* 6DE1F88 8007AA58 04000296 */  lhu        $v0, 0x4($s0)
/* 6DE1F8C 8007AA5C 9CEA0108 */  j          .Llevel_32_8007AA70
/* 6DE1F90 8007AA60 FBFF4224 */   addiu     $v0, $v0, -0x5
.Llevel_32_8007AA64:
/* 6DE1F94 8007AA64 04000296 */  lhu        $v0, 0x4($s0)
/* 6DE1F98 8007AA68 00000000 */  nop
/* 6DE1F9C 8007AA6C F6FF4224 */  addiu      $v0, $v0, -0xA
.Llevel_32_8007AA70:
/* 6DE1FA0 8007AA70 040002A6 */  sh         $v0, 0x4($s0)
/* 6DE1FA4 8007AA74 04000286 */  lh         $v0, 0x4($s0)
/* 6DE1FA8 8007AA78 00000000 */  nop
/* 6DE1FAC 8007AA7C 38FF4228 */  slti       $v0, $v0, -0xC8
/* 6DE1FB0 8007AA80 02004010 */  beqz       $v0, .Llevel_32_8007AA8C
/* 6DE1FB4 8007AA84 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 6DE1FB8 8007AA88 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_32_8007AA8C:
/* 6DE1FBC 8007AA8C 04000386 */  lh         $v1, 0x4($s0)
/* 6DE1FC0 8007AA90 1400228E */  lw         $v0, 0x14($s1)
/* 6DE1FC4 8007AA94 00000000 */  nop
/* 6DE1FC8 8007AA98 21104300 */  addu       $v0, $v0, $v1
/* 6DE1FCC 8007AA9C 140022AE */  sw         $v0, 0x14($s1)
/* 6DE1FD0 8007AAA0 44002292 */  lbu        $v0, 0x44($s1)
/* 6DE1FD4 8007AAA4 06000392 */  lbu        $v1, 0x6($s0)
/* 6DE1FD8 8007AAA8 00000000 */  nop
/* 6DE1FDC 8007AAAC 21104300 */  addu       $v0, $v0, $v1
/* 6DE1FE0 8007AAB0 440022A2 */  sb         $v0, 0x44($s1)
/* 6DE1FE4 8007AAB4 45002292 */  lbu        $v0, 0x45($s1)
/* 6DE1FE8 8007AAB8 08000392 */  lbu        $v1, 0x8($s0)
/* 6DE1FEC 8007AABC 00000000 */  nop
/* 6DE1FF0 8007AAC0 21104300 */  addu       $v0, $v0, $v1
/* 6DE1FF4 8007AAC4 450022A2 */  sb         $v0, 0x45($s1)
/* 6DE1FF8 8007AAC8 46002292 */  lbu        $v0, 0x46($s1)
/* 6DE1FFC 8007AACC 0A000392 */  lbu        $v1, 0xA($s0)
/* 6DE2000 8007AAD0 00000000 */  nop
/* 6DE2004 8007AAD4 21104300 */  addu       $v0, $v0, $v1
/* 6DE2008 8007AAD8 460022A2 */  sb         $v0, 0x46($s1)
/* 6DE200C 8007AADC 12000386 */  lh         $v1, 0x12($s0)
/* 6DE2010 8007AAE0 02000224 */  addiu      $v0, $zero, 0x2
/* 6DE2014 8007AAE4 44006210 */  beq        $v1, $v0, .Llevel_32_8007ABF8
/* 6DE2018 8007AAE8 6666023C */   lui       $v0, (0x66666667 >> 16)
/* 6DE201C 8007AAEC 0780043C */  lui        $a0, %hi(D_8006C640)
/* 6DE2020 8007AAF0 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 6DE2024 8007AAF4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 6DE2028 8007AAF8 18008200 */  mult       $a0, $v0
/* 6DE202C 8007AAFC C3170400 */  sra        $v0, $a0, 31
/* 6DE2030 8007AB00 10480000 */  mfhi       $t1
/* 6DE2034 8007AB04 43180900 */  sra        $v1, $t1, 1
/* 6DE2038 8007AB08 23186200 */  subu       $v1, $v1, $v0
/* 6DE203C 8007AB0C 80100300 */  sll        $v0, $v1, 2
/* 6DE2040 8007AB10 21104300 */  addu       $v0, $v0, $v1
/* 6DE2044 8007AB14 38008214 */  bne        $a0, $v0, .Llevel_32_8007ABF8
/* 6DE2048 8007AB18 00000000 */   nop
/* 6DE204C 8007AB1C 9171010C */  jal        rand
/* 6DE2050 8007AB20 00000000 */   nop
/* 6DE2054 8007AB24 03004230 */  andi       $v0, $v0, 0x3
/* 6DE2058 8007AB28 9171010C */  jal        rand
/* 6DE205C 8007AB2C 1000A2AF */   sw        $v0, 0x10($sp)
/* 6DE2060 8007AB30 03004230 */  andi       $v0, $v0, 0x3
/* 6DE2064 8007AB34 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DE2068 8007AB38 14000224 */  addiu      $v0, $zero, 0x14
/* 6DE206C 8007AB3C 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DE2070 8007AB40 12000386 */  lh         $v1, 0x12($s0)
/* 6DE2074 8007AB44 01000224 */  addiu      $v0, $zero, 0x1
/* 6DE2078 8007AB48 03006214 */  bne        $v1, $v0, .Llevel_32_8007AB58
/* 6DE207C 8007AB4C 01000424 */   addiu     $a0, $zero, 0x1
/* 6DE2080 8007AB50 DAEA0108 */  j          .Llevel_32_8007AB68
/* 6DE2084 8007AB54 21280000 */   addu      $a1, $zero, $zero
.Llevel_32_8007AB58:
/* 6DE2088 8007AB58 0B006014 */  bnez       $v1, .Llevel_32_8007AB88
/* 6DE208C 8007AB5C 03000224 */   addiu     $v0, $zero, 0x3
/* 6DE2090 8007AB60 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE2094 8007AB64 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_32_8007AB68:
/* 6DE2098 8007AB68 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE209C 8007AB6C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE20A0 8007AB70 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE20A4 8007AB74 00000000 */  nop
/* 6DE20A8 8007AB78 09F84000 */  jalr       $v0
/* 6DE20AC 8007AB7C 1000A727 */   addiu     $a3, $sp, 0x10
/* 6DE20B0 8007AB80 FEEA0108 */  j          .Llevel_32_8007ABF8
/* 6DE20B4 8007AB84 00000000 */   nop
.Llevel_32_8007AB88:
/* 6DE20B8 8007AB88 1B006214 */  bne        $v1, $v0, .Llevel_32_8007ABF8
/* 6DE20BC 8007AB8C 0A000424 */   addiu     $a0, $zero, 0xA
/* 6DE20C0 8007AB90 00000296 */  lhu        $v0, 0x0($s0)
/* 6DE20C4 8007AB94 00000000 */  nop
/* 6DE20C8 8007AB98 00140200 */  sll        $v0, $v0, 16
/* 6DE20CC 8007AB9C 83140200 */  sra        $v0, $v0, 18
/* 6DE20D0 8007ABA0 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DE20D4 8007ABA4 00000296 */  lhu        $v0, 0x0($s0)
/* 6DE20D8 8007ABA8 00000000 */  nop
/* 6DE20DC 8007ABAC 00140200 */  sll        $v0, $v0, 16
/* 6DE20E0 8007ABB0 83140200 */  sra        $v0, $v0, 18
/* 6DE20E4 8007ABB4 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DE20E8 8007ABB8 04000296 */  lhu        $v0, 0x4($s0)
/* 6DE20EC 8007ABBC 14000524 */  addiu      $a1, $zero, 0x14
/* 6DE20F0 8007ABC0 00140200 */  sll        $v0, $v0, 16
/* 6DE20F4 8007ABC4 83140200 */  sra        $v0, $v0, 18
/* 6DE20F8 8007ABC8 DBD8000C */  jal        func_8003636C
/* 6DE20FC 8007ABCC 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DE2100 8007ABD0 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE2104 8007ABD4 27000524 */  addiu      $a1, $zero, 0x27
/* 6DE2108 8007ABD8 0C002626 */  addiu      $a2, $s1, 0xC
/* 6DE210C 8007ABDC 1000A727 */  addiu      $a3, $sp, 0x10
/* 6DE2110 8007ABE0 1800A38F */  lw         $v1, 0x18($sp)
/* 6DE2114 8007ABE4 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DE2118 8007ABE8 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DE211C 8007ABEC 21186200 */  addu       $v1, $v1, $v0
/* 6DE2120 8007ABF0 09F80001 */  jalr       $t0
/* 6DE2124 8007ABF4 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_32_8007ABF8:
/* 6DE2128 8007ABF8 3000BF8F */  lw         $ra, 0x30($sp)
/* 6DE212C 8007ABFC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 6DE2130 8007AC00 2800B08F */  lw         $s0, 0x28($sp)
/* 6DE2134 8007AC04 3800BD27 */  addiu      $sp, $sp, 0x38
/* 6DE2138 8007AC08 0800E003 */  jr         $ra
/* 6DE213C 8007AC0C 00000000 */   nop
.size func_level_32_8007A8F4, . - func_level_32_8007A8F4
