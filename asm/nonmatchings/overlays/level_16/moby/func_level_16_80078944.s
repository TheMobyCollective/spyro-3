.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_16_80078944
/* 4B99E74 80078944 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 4B99E78 80078948 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 4B99E7C 8007894C 21888000 */  addu       $s1, $a0, $zero
/* 4B99E80 80078950 4800BFAF */  sw         $ra, 0x48($sp)
/* 4B99E84 80078954 4400B3AF */  sw         $s3, 0x44($sp)
/* 4B99E88 80078958 4000B2AF */  sw         $s2, 0x40($sp)
/* 4B99E8C 8007895C 3800B0AF */  sw         $s0, 0x38($sp)
/* 4B99E90 80078960 0000328E */  lw         $s2, 0x0($s1)
/* 4B99E94 80078964 00000000 */  nop
/* 4B99E98 80078968 0C00428E */  lw         $v0, 0xC($s2)
/* 4B99E9C 8007896C 00000000 */  nop
/* 4B99EA0 80078970 E1004018 */  blez       $v0, .Llevel_16_80078CF8
/* 4B99EA4 80078974 00000000 */   nop
/* 4B99EA8 80078978 4D002292 */  lbu        $v0, 0x4D($s1)
/* 4B99EAC 8007897C 00000000 */  nop
/* 4B99EB0 80078980 DD004010 */  beqz       $v0, .Llevel_16_80078CF8
/* 4B99EB4 80078984 00000000 */   nop
/* 4B99EB8 80078988 49002292 */  lbu        $v0, 0x49($s1)
/* 4B99EBC 8007898C 00000000 */  nop
/* 4B99EC0 80078990 01004230 */  andi       $v0, $v0, 0x1
/* 4B99EC4 80078994 09004014 */  bnez       $v0, .Llevel_16_800789BC
/* 4B99EC8 80078998 00000000 */   nop
/* 4B99ECC 8007899C 1400238E */  lw         $v1, 0x14($s1)
/* 4B99ED0 800789A0 1000428E */  lw         $v0, 0x10($s2)
/* 4B99ED4 800789A4 00000000 */  nop
/* 4B99ED8 800789A8 2A104300 */  slt        $v0, $v0, $v1
/* 4B99EDC 800789AC D2004010 */  beqz       $v0, .Llevel_16_80078CF8
/* 4B99EE0 800789B0 00000000 */   nop
/* 4B99EE4 800789B4 A4E20108 */  j          .Llevel_16_80078A90
/* 4B99EE8 800789B8 00000000 */   nop
.Llevel_16_800789BC:
/* 4B99EEC 800789BC 0C002426 */  addiu      $a0, $s1, 0xC
/* 4B99EF0 800789C0 6564000C */  jal        func_80019194
/* 4B99EF4 800789C4 00010524 */   addiu     $a1, $zero, 0x100
/* 4B99EF8 800789C8 31004010 */  beqz       $v0, .Llevel_16_80078A90
/* 4B99EFC 800789CC 00000000 */   nop
/* 4B99F00 800789D0 0780133C */  lui        $s3, %hi(D_80071918)
/* 4B99F04 800789D4 18197326 */  addiu      $s3, $s3, %lo(D_80071918)
/* 4B99F08 800789D8 21206002 */  addu       $a0, $s3, $zero
/* 4B99F0C 800789DC C13B010C */  jal        func_8004EF04
/* 4B99F10 800789E0 00100524 */   addiu     $a1, $zero, 0x1000
/* 4B99F14 800789E4 00004386 */  lh         $v1, 0x0($s2)
/* 4B99F18 800789E8 0000628E */  lw         $v0, 0x0($s3)
/* 4B99F1C 800789EC 00000000 */  nop
/* 4B99F20 800789F0 18006200 */  mult       $v1, $v0
/* 4B99F24 800789F4 02004386 */  lh         $v1, 0x2($s2)
/* 4B99F28 800789F8 12280000 */  mflo       $a1
/* 4B99F2C 800789FC 0780023C */  lui        $v0, %hi(D_8007191C)
/* 4B99F30 80078A00 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 4B99F34 80078A04 00000000 */  nop
/* 4B99F38 80078A08 18006200 */  mult       $v1, $v0
/* 4B99F3C 80078A0C 04004386 */  lh         $v1, 0x4($s2)
/* 4B99F40 80078A10 12200000 */  mflo       $a0
/* 4B99F44 80078A14 0780023C */  lui        $v0, %hi(D_80071920)
/* 4B99F48 80078A18 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 4B99F4C 80078A1C 00000000 */  nop
/* 4B99F50 80078A20 18006200 */  mult       $v1, $v0
/* 4B99F54 80078A24 2110A400 */  addu       $v0, $a1, $a0
/* 4B99F58 80078A28 12180000 */  mflo       $v1
/* 4B99F5C 80078A2C 21104300 */  addu       $v0, $v0, $v1
/* 4B99F60 80078A30 C3820200 */  sra        $s0, $v0, 11
/* 4B99F64 80078A34 16000106 */  bgez       $s0, .Llevel_16_80078A90
/* 4B99F68 80078A38 21206002 */   addu      $a0, $s3, $zero
/* 4B99F6C 80078A3C 00100524 */  addiu      $a1, $zero, 0x1000
/* 4B99F70 80078A40 43330200 */  sra        $a2, $v0, 13
/* 4B99F74 80078A44 233C010C */  jal        func_8004F08C
/* 4B99F78 80078A48 2330D000 */   subu      $a2, $a2, $s0
/* 4B99F7C 80078A4C 0000638E */  lw         $v1, 0x0($s3)
/* 4B99F80 80078A50 00004296 */  lhu        $v0, 0x0($s2)
/* 4B99F84 80078A54 00000000 */  nop
/* 4B99F88 80078A58 21104300 */  addu       $v0, $v0, $v1
/* 4B99F8C 80078A5C 000042A6 */  sh         $v0, 0x0($s2)
/* 4B99F90 80078A60 0780033C */  lui        $v1, %hi(D_8007191C)
/* 4B99F94 80078A64 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 4B99F98 80078A68 02004296 */  lhu        $v0, 0x2($s2)
/* 4B99F9C 80078A6C 00000000 */  nop
/* 4B99FA0 80078A70 21104300 */  addu       $v0, $v0, $v1
/* 4B99FA4 80078A74 020042A6 */  sh         $v0, 0x2($s2)
/* 4B99FA8 80078A78 0780033C */  lui        $v1, %hi(D_80071920)
/* 4B99FAC 80078A7C 2019638C */  lw         $v1, %lo(D_80071920)($v1)
/* 4B99FB0 80078A80 04004296 */  lhu        $v0, 0x4($s2)
/* 4B99FB4 80078A84 00000000 */  nop
/* 4B99FB8 80078A88 21104300 */  addu       $v0, $v0, $v1
/* 4B99FBC 80078A8C 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_16_80078A90:
/* 4B99FC0 80078A90 00004386 */  lh         $v1, 0x0($s2)
/* 4B99FC4 80078A94 0C00228E */  lw         $v0, 0xC($s1)
/* 4B99FC8 80078A98 00000000 */  nop
/* 4B99FCC 80078A9C 21104300 */  addu       $v0, $v0, $v1
/* 4B99FD0 80078AA0 0C0022AE */  sw         $v0, 0xC($s1)
/* 4B99FD4 80078AA4 02004486 */  lh         $a0, 0x2($s2)
/* 4B99FD8 80078AA8 1000228E */  lw         $v0, 0x10($s1)
/* 4B99FDC 80078AAC 49002392 */  lbu        $v1, 0x49($s1)
/* 4B99FE0 80078AB0 21104400 */  addu       $v0, $v0, $a0
/* 4B99FE4 80078AB4 08006330 */  andi       $v1, $v1, 0x8
/* 4B99FE8 80078AB8 04006010 */  beqz       $v1, .Llevel_16_80078ACC
/* 4B99FEC 80078ABC 100022AE */   sw        $v0, 0x10($s1)
/* 4B99FF0 80078AC0 04004296 */  lhu        $v0, 0x4($s2)
/* 4B99FF4 80078AC4 BDE20108 */  j          .Llevel_16_80078AF4
/* 4B99FF8 80078AC8 FDFF4224 */   addiu     $v0, $v0, -0x3
.Llevel_16_80078ACC:
/* 4B99FFC 80078ACC 36002386 */  lh         $v1, 0x36($s1)
/* 4B9A000 80078AD0 2F010224 */  addiu      $v0, $zero, 0x12F
/* 4B9A004 80078AD4 04006214 */  bne        $v1, $v0, .Llevel_16_80078AE8
/* 4B9A008 80078AD8 00000000 */   nop
/* 4B9A00C 80078ADC 04004296 */  lhu        $v0, 0x4($s2)
/* 4B9A010 80078AE0 BDE20108 */  j          .Llevel_16_80078AF4
/* 4B9A014 80078AE4 F0FF4224 */   addiu     $v0, $v0, -0x10
.Llevel_16_80078AE8:
/* 4B9A018 80078AE8 04004296 */  lhu        $v0, 0x4($s2)
/* 4B9A01C 80078AEC 00000000 */  nop
/* 4B9A020 80078AF0 FAFF4224 */  addiu      $v0, $v0, -0x6
.Llevel_16_80078AF4:
/* 4B9A024 80078AF4 040042A6 */  sh         $v0, 0x4($s2)
/* 4B9A028 80078AF8 04004286 */  lh         $v0, 0x4($s2)
/* 4B9A02C 80078AFC 00000000 */  nop
/* 4B9A030 80078B00 80FF4228 */  slti       $v0, $v0, -0x80
/* 4B9A034 80078B04 02004010 */  beqz       $v0, .Llevel_16_80078B10
/* 4B9A038 80078B08 80FF0224 */   addiu     $v0, $zero, -0x80
/* 4B9A03C 80078B0C 040042A6 */  sh         $v0, 0x4($s2)
.Llevel_16_80078B10:
/* 4B9A040 80078B10 04004386 */  lh         $v1, 0x4($s2)
/* 4B9A044 80078B14 1400228E */  lw         $v0, 0x14($s1)
/* 4B9A048 80078B18 00000000 */  nop
/* 4B9A04C 80078B1C 21104300 */  addu       $v0, $v0, $v1
/* 4B9A050 80078B20 140022AE */  sw         $v0, 0x14($s1)
/* 4B9A054 80078B24 44002292 */  lbu        $v0, 0x44($s1)
/* 4B9A058 80078B28 06004392 */  lbu        $v1, 0x6($s2)
/* 4B9A05C 80078B2C 00000000 */  nop
/* 4B9A060 80078B30 21104300 */  addu       $v0, $v0, $v1
/* 4B9A064 80078B34 440022A2 */  sb         $v0, 0x44($s1)
/* 4B9A068 80078B38 45002292 */  lbu        $v0, 0x45($s1)
/* 4B9A06C 80078B3C 08004392 */  lbu        $v1, 0x8($s2)
/* 4B9A070 80078B40 00000000 */  nop
/* 4B9A074 80078B44 21104300 */  addu       $v0, $v0, $v1
/* 4B9A078 80078B48 450022A2 */  sb         $v0, 0x45($s1)
/* 4B9A07C 80078B4C 46002292 */  lbu        $v0, 0x46($s1)
/* 4B9A080 80078B50 0A004492 */  lbu        $a0, 0xA($s2)
/* 4B9A084 80078B54 49002392 */  lbu        $v1, 0x49($s1)
/* 4B9A088 80078B58 21104400 */  addu       $v0, $v0, $a0
/* 4B9A08C 80078B5C 02006330 */  andi       $v1, $v1, 0x2
/* 4B9A090 80078B60 18006010 */  beqz       $v1, .Llevel_16_80078BC4
/* 4B9A094 80078B64 460022A2 */   sb        $v0, 0x46($s1)
/* 4B9A098 80078B68 0C00428E */  lw         $v0, 0xC($s2)
/* 4B9A09C 80078B6C 00000000 */  nop
/* 4B9A0A0 80078B70 03004230 */  andi       $v0, $v0, 0x3
/* 4B9A0A4 80078B74 13004014 */  bnez       $v0, .Llevel_16_80078BC4
/* 4B9A0A8 80078B78 00000000 */   nop
/* 4B9A0AC 80078B7C 9171010C */  jal        rand
/* 4B9A0B0 80078B80 00000000 */   nop
/* 4B9A0B4 80078B84 03004230 */  andi       $v0, $v0, 0x3
/* 4B9A0B8 80078B88 9171010C */  jal        rand
/* 4B9A0BC 80078B8C 1000A2AF */   sw        $v0, 0x10($sp)
/* 4B9A0C0 80078B90 01000424 */  addiu      $a0, $zero, 0x1
/* 4B9A0C4 80078B94 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9A0C8 80078B98 0C002626 */  addiu      $a2, $s1, 0xC
/* 4B9A0CC 80078B9C 1000A727 */  addiu      $a3, $sp, 0x10
/* 4B9A0D0 80078BA0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 4B9A0D4 80078BA4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 4B9A0D8 80078BA8 03004230 */  andi       $v0, $v0, 0x3
/* 4B9A0DC 80078BAC 1400A2AF */  sw         $v0, 0x14($sp)
/* 4B9A0E0 80078BB0 14000224 */  addiu      $v0, $zero, 0x14
/* 4B9A0E4 80078BB4 09F86000 */  jalr       $v1
/* 4B9A0E8 80078BB8 1800A2AF */   sw        $v0, 0x18($sp)
/* 4B9A0EC 80078BBC 39E30108 */  j          .Llevel_16_80078CE4
/* 4B9A0F0 80078BC0 00000000 */   nop
.Llevel_16_80078BC4:
/* 4B9A0F4 80078BC4 49002392 */  lbu        $v1, 0x49($s1)
/* 4B9A0F8 80078BC8 00000000 */  nop
/* 4B9A0FC 80078BCC 04006230 */  andi       $v0, $v1, 0x4
/* 4B9A100 80078BD0 27004010 */  beqz       $v0, .Llevel_16_80078C70
/* 4B9A104 80078BD4 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9A108 80078BD8 42004010 */  beqz       $v0, .Llevel_16_80078CE4
/* 4B9A10C 80078BDC 21800000 */   addu      $s0, $zero, $zero
/* 4B9A110 80078BE0 40001324 */  addiu      $s3, $zero, 0x40
.Llevel_16_80078BE4:
/* 4B9A114 80078BE4 9171010C */  jal        rand
/* 4B9A118 80078BE8 01001026 */   addiu     $s0, $s0, 0x1
/* 4B9A11C 80078BEC 7F004230 */  andi       $v0, $v0, 0x7F
/* 4B9A120 80078BF0 23106202 */  subu       $v0, $s3, $v0
/* 4B9A124 80078BF4 9171010C */  jal        rand
/* 4B9A128 80078BF8 1000A2AF */   sw        $v0, 0x10($sp)
/* 4B9A12C 80078BFC 7F004230 */  andi       $v0, $v0, 0x7F
/* 4B9A130 80078C00 23106202 */  subu       $v0, $s3, $v0
/* 4B9A134 80078C04 9171010C */  jal        rand
/* 4B9A138 80078C08 1400A2AF */   sw        $v0, 0x14($sp)
/* 4B9A13C 80078C0C 1000A427 */  addiu      $a0, $sp, 0x10
/* 4B9A140 80078C10 21288000 */  addu       $a1, $a0, $zero
/* 4B9A144 80078C14 0C002626 */  addiu      $a2, $s1, 0xC
/* 4B9A148 80078C18 7F004230 */  andi       $v0, $v0, 0x7F
/* 4B9A14C 80078C1C 23106202 */  subu       $v0, $s3, $v0
/* 4B9A150 80078C20 653C010C */  jal        func_8004F194
/* 4B9A154 80078C24 1800A2AF */   sw        $v0, 0x18($sp)
/* 4B9A158 80078C28 01000424 */  addiu      $a0, $zero, 0x1
/* 4B9A15C 80078C2C 42000524 */  addiu      $a1, $zero, 0x42
/* 4B9A160 80078C30 1000A627 */  addiu      $a2, $sp, 0x10
/* 4B9A164 80078C34 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4B9A168 80078C38 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4B9A16C 80078C3C 00000000 */  nop
/* 4B9A170 80078C40 09F84000 */  jalr       $v0
/* 4B9A174 80078C44 01000724 */   addiu     $a3, $zero, 0x1
/* 4B9A178 80078C48 49002292 */  lbu        $v0, 0x49($s1)
/* 4B9A17C 80078C4C 00000000 */  nop
/* 4B9A180 80078C50 01004230 */  andi       $v0, $v0, 0x1
/* 4B9A184 80078C54 40100200 */  sll        $v0, $v0, 1
/* 4B9A188 80078C58 01004224 */  addiu      $v0, $v0, 0x1
/* 4B9A18C 80078C5C 2A100202 */  slt        $v0, $s0, $v0
/* 4B9A190 80078C60 20004010 */  beqz       $v0, .Llevel_16_80078CE4
/* 4B9A194 80078C64 00000000 */   nop
/* 4B9A198 80078C68 F9E20108 */  j          .Llevel_16_80078BE4
/* 4B9A19C 80078C6C 00000000 */   nop
.Llevel_16_80078C70:
/* 4B9A1A0 80078C70 08006230 */  andi       $v0, $v1, 0x8
/* 4B9A1A4 80078C74 1B004010 */  beqz       $v0, .Llevel_16_80078CE4
/* 4B9A1A8 80078C78 00000000 */   nop
/* 4B9A1AC 80078C7C 0C00428E */  lw         $v0, 0xC($s2)
/* 4B9A1B0 80078C80 00000000 */  nop
/* 4B9A1B4 80078C84 07004230 */  andi       $v0, $v0, 0x7
/* 4B9A1B8 80078C88 16004014 */  bnez       $v0, .Llevel_16_80078CE4
/* 4B9A1BC 80078C8C 00000000 */   nop
/* 4B9A1C0 80078C90 9171010C */  jal        rand
/* 4B9A1C4 80078C94 08001024 */   addiu     $s0, $zero, 0x8
/* 4B9A1C8 80078C98 0F004230 */  andi       $v0, $v0, 0xF
/* 4B9A1CC 80078C9C 23100202 */  subu       $v0, $s0, $v0
/* 4B9A1D0 80078CA0 9171010C */  jal        rand
/* 4B9A1D4 80078CA4 1000A2AF */   sw        $v0, 0x10($sp)
/* 4B9A1D8 80078CA8 0F004230 */  andi       $v0, $v0, 0xF
/* 4B9A1DC 80078CAC 23800202 */  subu       $s0, $s0, $v0
/* 4B9A1E0 80078CB0 9171010C */  jal        rand
/* 4B9A1E4 80078CB4 1400B0AF */   sw        $s0, 0x14($sp)
/* 4B9A1E8 80078CB8 01000424 */  addiu      $a0, $zero, 0x1
/* 4B9A1EC 80078CBC 27000524 */  addiu      $a1, $zero, 0x27
/* 4B9A1F0 80078CC0 0C002626 */  addiu      $a2, $s1, 0xC
/* 4B9A1F4 80078CC4 1000A727 */  addiu      $a3, $sp, 0x10
/* 4B9A1F8 80078CC8 07004230 */  andi       $v0, $v0, 0x7
/* 4B9A1FC 80078CCC 04000324 */  addiu      $v1, $zero, 0x4
/* 4B9A200 80078CD0 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 4B9A204 80078CD4 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 4B9A208 80078CD8 23186200 */  subu       $v1, $v1, $v0
/* 4B9A20C 80078CDC 09F80001 */  jalr       $t0
/* 4B9A210 80078CE0 1800A3AF */   sw        $v1, 0x18($sp)
.Llevel_16_80078CE4:
/* 4B9A214 80078CE4 0C00428E */  lw         $v0, 0xC($s2)
/* 4B9A218 80078CE8 00000000 */  nop
/* 4B9A21C 80078CEC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4B9A220 80078CF0 55E30108 */  j          .Llevel_16_80078D54
/* 4B9A224 80078CF4 0C0042AE */   sw        $v0, 0xC($s2)
.Llevel_16_80078CF8:
/* 4B9A228 80078CF8 49002392 */  lbu        $v1, 0x49($s1)
/* 4B9A22C 80078CFC 00000000 */  nop
/* 4B9A230 80078D00 01006230 */  andi       $v0, $v1, 0x1
/* 4B9A234 80078D04 11004010 */  beqz       $v0, .Llevel_16_80078D4C
/* 4B9A238 80078D08 10006230 */   andi      $v0, $v1, 0x10
/* 4B9A23C 80078D0C 07004010 */  beqz       $v0, .Llevel_16_80078D2C
/* 4B9A240 80078D10 0F000524 */   addiu     $a1, $zero, 0xF
/* 4B9A244 80078D14 08000424 */  addiu      $a0, $zero, 0x8
/* 4B9A248 80078D18 0C002626 */  addiu      $a2, $s1, 0xC
/* 4B9A24C 80078D1C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4B9A250 80078D20 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4B9A254 80078D24 51E30108 */  j          .Llevel_16_80078D44
/* 4B9A258 80078D28 21380000 */   addu      $a3, $zero, $zero
.Llevel_16_80078D2C:
/* 4B9A25C 80078D2C 08000424 */  addiu      $a0, $zero, 0x8
/* 4B9A260 80078D30 46000524 */  addiu      $a1, $zero, 0x46
/* 4B9A264 80078D34 0C002626 */  addiu      $a2, $s1, 0xC
/* 4B9A268 80078D38 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4B9A26C 80078D3C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4B9A270 80078D40 10000724 */  addiu      $a3, $zero, 0x10
.Llevel_16_80078D44:
/* 4B9A274 80078D44 09F84000 */  jalr       $v0
/* 4B9A278 80078D48 00000000 */   nop
.Llevel_16_80078D4C:
/* 4B9A27C 80078D4C C656010C */  jal        func_80055B18
/* 4B9A280 80078D50 21202002 */   addu      $a0, $s1, $zero
.Llevel_16_80078D54:
/* 4B9A284 80078D54 4800BF8F */  lw         $ra, 0x48($sp)
/* 4B9A288 80078D58 4400B38F */  lw         $s3, 0x44($sp)
/* 4B9A28C 80078D5C 4000B28F */  lw         $s2, 0x40($sp)
/* 4B9A290 80078D60 3C00B18F */  lw         $s1, 0x3C($sp)
/* 4B9A294 80078D64 3800B08F */  lw         $s0, 0x38($sp)
/* 4B9A298 80078D68 5000BD27 */  addiu      $sp, $sp, 0x50
/* 4B9A29C 80078D6C 0800E003 */  jr         $ra
/* 4B9A2A0 80078D70 00000000 */   nop
.size func_level_16_80078944, . - func_level_16_80078944
