.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_34
/* 74D5C40 80079F10 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 74D5C44 80079F14 2800B0AF */  sw         $s0, 0x28($sp)
/* 74D5C48 80079F18 21808000 */  addu       $s0, $a0, $zero
/* 74D5C4C 80079F1C 3400BFAF */  sw         $ra, 0x34($sp)
/* 74D5C50 80079F20 3000B2AF */  sw         $s2, 0x30($sp)
/* 74D5C54 80079F24 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 74D5C58 80079F28 49000292 */  lbu        $v0, 0x49($s0)
/* 74D5C5C 80079F2C 0000128E */  lw         $s2, 0x0($s0)
/* 74D5C60 80079F30 60004014 */  bnez       $v0, .Llevel_34_8007A0B4
/* 74D5C64 80079F34 00000000 */   nop
/* 74D5C68 80079F38 0400428E */  lw         $v0, 0x4($s2)
/* 74D5C6C 80079F3C 00000000 */  nop
/* 74D5C70 80079F40 53004018 */  blez       $v0, .Llevel_34_8007A090
/* 74D5C74 80079F44 47000524 */   addiu     $a1, $zero, 0x47
/* 74D5C78 80079F48 46000292 */  lbu        $v0, 0x46($s0)
/* 74D5C7C 80079F4C 00000000 */  nop
/* 74D5C80 80079F50 01004224 */  addiu      $v0, $v0, 0x1
/* 74D5C84 80079F54 460002A2 */  sb         $v0, 0x46($s0)
/* 74D5C88 80079F58 1400428E */  lw         $v0, 0x14($s2)
/* 74D5C8C 80079F5C 00000000 */  nop
/* 74D5C90 80079F60 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 74D5C94 80079F64 140042AE */  sw         $v0, 0x14($s2)
/* 74D5C98 80079F68 80FF4228 */  slti       $v0, $v0, -0x80
/* 74D5C9C 80079F6C 02004010 */  beqz       $v0, .Llevel_34_80079F78
/* 74D5CA0 80079F70 80FF0224 */   addiu     $v0, $zero, -0x80
/* 74D5CA4 80079F74 140042AE */  sw         $v0, 0x14($s2)
.Llevel_34_80079F78:
/* 74D5CA8 80079F78 0C00028E */  lw         $v0, 0xC($s0)
/* 74D5CAC 80079F7C 0C00438E */  lw         $v1, 0xC($s2)
/* 74D5CB0 80079F80 00000000 */  nop
/* 74D5CB4 80079F84 21104300 */  addu       $v0, $v0, $v1
/* 74D5CB8 80079F88 0C0002AE */  sw         $v0, 0xC($s0)
/* 74D5CBC 80079F8C 1000028E */  lw         $v0, 0x10($s0)
/* 74D5CC0 80079F90 1000438E */  lw         $v1, 0x10($s2)
/* 74D5CC4 80079F94 00000000 */  nop
/* 74D5CC8 80079F98 21104300 */  addu       $v0, $v0, $v1
/* 74D5CCC 80079F9C 100002AE */  sw         $v0, 0x10($s0)
/* 74D5CD0 80079FA0 1400028E */  lw         $v0, 0x14($s0)
/* 74D5CD4 80079FA4 1400438E */  lw         $v1, 0x14($s2)
/* 74D5CD8 80079FA8 00000000 */  nop
/* 74D5CDC 80079FAC 21104300 */  addu       $v0, $v0, $v1
/* 74D5CE0 80079FB0 140002AE */  sw         $v0, 0x14($s0)
/* 74D5CE4 80079FB4 00044228 */  slti       $v0, $v0, 0x400
/* 74D5CE8 80079FB8 44004014 */  bnez       $v0, .Llevel_34_8007A0CC
/* 74D5CEC 80079FBC 0C001126 */   addiu     $s1, $s0, 0xC
/* 74D5CF0 80079FC0 21202002 */  addu       $a0, $s1, $zero
/* 74D5CF4 80079FC4 D668000C */  jal        func_8001A358
/* 74D5CF8 80079FC8 00200524 */   addiu     $a1, $zero, 0x2000
/* 74D5CFC 80079FCC A758010C */  jal        func_8005629C
/* 74D5D00 80079FD0 21200002 */   addu      $a0, $s0, $zero
/* 74D5D04 80079FD4 21202002 */  addu       $a0, $s1, $zero
/* 74D5D08 80079FD8 6564000C */  jal        func_80019194
/* 74D5D0C 80079FDC 00010524 */   addiu     $a1, $zero, 0x100
/* 74D5D10 80079FE0 26004010 */  beqz       $v0, .Llevel_34_8007A07C
/* 74D5D14 80079FE4 21202002 */   addu      $a0, $s1, $zero
/* 74D5D18 80079FE8 0780103C */  lui        $s0, %hi(D_8007190C)
/* 74D5D1C 80079FEC 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 74D5D20 80079FF0 5E3C010C */  jal        func_8004F178
/* 74D5D24 80079FF4 21280002 */   addu      $a1, $s0, $zero
/* 74D5D28 80079FF8 0C001126 */  addiu      $s1, $s0, 0xC
/* 74D5D2C 80079FFC 21202002 */  addu       $a0, $s1, $zero
/* 74D5D30 8007A000 C13B010C */  jal        func_8004EF04
/* 74D5D34 8007A004 00100524 */   addiu     $a1, $zero, 0x1000
/* 74D5D38 8007A008 0C00438E */  lw         $v1, 0xC($s2)
/* 74D5D3C 8007A00C 0C00028E */  lw         $v0, 0xC($s0)
/* 74D5D40 8007A010 00000000 */  nop
/* 74D5D44 8007A014 18006200 */  mult       $v1, $v0
/* 74D5D48 8007A018 1000438E */  lw         $v1, 0x10($s2)
/* 74D5D4C 8007A01C 12280000 */  mflo       $a1
/* 74D5D50 8007A020 0780023C */  lui        $v0, %hi(D_8007191C)
/* 74D5D54 8007A024 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 74D5D58 8007A028 00000000 */  nop
/* 74D5D5C 8007A02C 18006200 */  mult       $v1, $v0
/* 74D5D60 8007A030 1400438E */  lw         $v1, 0x14($s2)
/* 74D5D64 8007A034 12200000 */  mflo       $a0
/* 74D5D68 8007A038 0780023C */  lui        $v0, %hi(D_80071920)
/* 74D5D6C 8007A03C 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 74D5D70 8007A040 00000000 */  nop
/* 74D5D74 8007A044 18006200 */  mult       $v1, $v0
/* 74D5D78 8007A048 2110A400 */  addu       $v0, $a1, $a0
/* 74D5D7C 8007A04C 12180000 */  mflo       $v1
/* 74D5D80 8007A050 21104300 */  addu       $v0, $v0, $v1
/* 74D5D84 8007A054 C3120200 */  sra        $v0, $v0, 11
/* 74D5D88 8007A058 08004104 */  bgez       $v0, .Llevel_34_8007A07C
/* 74D5D8C 8007A05C 21202002 */   addu      $a0, $s1, $zero
/* 74D5D90 8007A060 00100524 */  addiu      $a1, $zero, 0x1000
/* 74D5D94 8007A064 233C010C */  jal        func_8004F08C
/* 74D5D98 8007A068 23300200 */   negu      $a2, $v0
/* 74D5D9C 8007A06C 0C004426 */  addiu      $a0, $s2, 0xC
/* 74D5DA0 8007A070 21288000 */  addu       $a1, $a0, $zero
/* 74D5DA4 8007A074 653C010C */  jal        func_8004F194
/* 74D5DA8 8007A078 21302002 */   addu      $a2, $s1, $zero
.Llevel_34_8007A07C:
/* 74D5DAC 8007A07C 0400428E */  lw         $v0, 0x4($s2)
/* 74D5DB0 8007A080 00000000 */  nop
/* 74D5DB4 8007A084 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 74D5DB8 8007A088 7EE80108 */  j          .Llevel_34_8007A1F8
/* 74D5DBC 8007A08C 040042AE */   sw        $v0, 0x4($s2)
.Llevel_34_8007A090:
/* 74D5DC0 8007A090 0A000424 */  addiu      $a0, $zero, 0xA
/* 74D5DC4 8007A094 0C000626 */  addiu      $a2, $s0, 0xC
/* 74D5DC8 8007A098 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D5DCC 8007A09C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D5DD0 8007A0A0 00000000 */  nop
/* 74D5DD4 8007A0A4 09F84000 */  jalr       $v0
/* 74D5DD8 8007A0A8 21380000 */   addu      $a3, $zero, $zero
/* 74D5DDC 8007A0AC 33E80108 */  j          .Llevel_34_8007A0CC
/* 74D5DE0 8007A0B0 00000000 */   nop
.Llevel_34_8007A0B4:
/* 74D5DE4 8007A0B4 0000428E */  lw         $v0, 0x0($s2)
/* 74D5DE8 8007A0B8 00000000 */  nop
/* 74D5DEC 8007A0BC 48004290 */  lbu        $v0, 0x48($v0)
/* 74D5DF0 8007A0C0 00000000 */  nop
/* 74D5DF4 8007A0C4 05004010 */  beqz       $v0, .Llevel_34_8007A0DC
/* 74D5DF8 8007A0C8 21300000 */   addu      $a2, $zero, $zero
.Llevel_34_8007A0CC:
/* 74D5DFC 8007A0CC C656010C */  jal        func_80055B18
/* 74D5E00 8007A0D0 21200002 */   addu      $a0, $s0, $zero
/* 74D5E04 8007A0D4 7EE80108 */  j          .Llevel_34_8007A1F8
/* 74D5E08 8007A0D8 00000000 */   nop
.Llevel_34_8007A0DC:
/* 74D5E0C 8007A0DC 0780033C */  lui        $v1, %hi(D_8006E020)
/* 74D5E10 8007A0E0 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 74D5E14 8007A0E4 0C00048E */  lw         $a0, 0xC($s0)
/* 74D5E18 8007A0E8 0780023C */  lui        $v0, %hi(D_8006E024)
/* 74D5E1C 8007A0EC 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 74D5E20 8007A0F0 1000058E */  lw         $a1, 0x10($s0)
/* 74D5E24 8007A0F4 23206400 */  subu       $a0, $v1, $a0
/* 74D5E28 8007A0F8 203A010C */  jal        func_8004E880
/* 74D5E2C 8007A0FC 23284500 */   subu      $a1, $v0, $a1
/* 74D5E30 8007A100 21204000 */  addu       $a0, $v0, $zero
/* 74D5E34 8007A104 80004224 */  addiu      $v0, $v0, 0x80
/* 74D5E38 8007A108 0780033C */  lui        $v1, %hi(D_8006C644)
/* 74D5E3C 8007A10C 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 74D5E40 8007A110 0680063C */  lui        $a2, %hi(D_800658A0)
/* 74D5E44 8007A114 A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 74D5E48 8007A118 C0180300 */  sll        $v1, $v1, 3
/* 74D5E4C 8007A11C F8016330 */  andi       $v1, $v1, 0x1F8
/* 74D5E50 8007A120 0680013C */  lui        $at, %hi(D_800658A0)
/* 74D5E54 8007A124 21082300 */  addu       $at, $at, $v1
/* 74D5E58 8007A128 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 74D5E5C 8007A12C 21284000 */  addu       $a1, $v0, $zero
/* 74D5E60 8007A130 001C0300 */  sll        $v1, $v1, 16
/* 74D5E64 8007A134 C31D0300 */  sra        $v1, $v1, 23
/* 74D5E68 8007A138 21186200 */  addu       $v1, $v1, $v0
/* 74D5E6C 8007A13C 460003A2 */  sb         $v1, 0x46($s0)
/* 74D5E70 8007A140 49000392 */  lbu        $v1, 0x49($s0)
/* 74D5E74 8007A144 02000224 */  addiu      $v0, $zero, 0x2
/* 74D5E78 8007A148 02006214 */  bne        $v1, $v0, .Llevel_34_8007A154
/* 74D5E7C 8007A14C 00000000 */   nop
/* 74D5E80 8007A150 2120A000 */  addu       $a0, $a1, $zero
.Llevel_34_8007A154:
/* 74D5E84 8007A154 1000A0AF */  sw         $zero, 0x10($sp)
/* 74D5E88 8007A158 1400A0AF */  sw         $zero, 0x14($sp)
/* 74D5E8C 8007A15C 49000392 */  lbu        $v1, 0x49($s0)
/* 74D5E90 8007A160 03000224 */  addiu      $v0, $zero, 0x3
/* 74D5E94 8007A164 1D006210 */  beq        $v1, $v0, .Llevel_34_8007A1DC
/* 74D5E98 8007A168 FF008430 */   andi      $a0, $a0, 0xFF
/* 74D5E9C 8007A16C 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 74D5EA0 8007A170 40200400 */  sll        $a0, $a0, 1
/* 74D5EA4 8007A174 21108600 */  addu       $v0, $a0, $a2
/* 74D5EA8 8007A178 00004394 */  lhu        $v1, 0x0($v0)
/* 74D5EAC 8007A17C 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 74D5EB0 8007A180 001C0300 */  sll        $v1, $v1, 16
/* 74D5EB4 8007A184 03140300 */  sra        $v0, $v1, 16
/* 74D5EB8 8007A188 18004500 */  mult       $v0, $a1
/* 74D5EBC 8007A18C C31F0300 */  sra        $v1, $v1, 31
/* 74D5EC0 8007A190 10400000 */  mfhi       $t0
/* 74D5EC4 8007A194 21100201 */  addu       $v0, $t0, $v0
/* 74D5EC8 8007A198 03110200 */  sra        $v0, $v0, 4
/* 74D5ECC 8007A19C 23104300 */  subu       $v0, $v0, $v1
/* 74D5ED0 8007A1A0 00140200 */  sll        $v0, $v0, 16
/* 74D5ED4 8007A1A4 03140200 */  sra        $v0, $v0, 16
/* 74D5ED8 8007A1A8 1000A2AF */  sw         $v0, 0x10($sp)
/* 74D5EDC 8007A1AC 0680013C */  lui        $at, %hi(D_80065920)
/* 74D5EE0 8007A1B0 21082400 */  addu       $at, $at, $a0
/* 74D5EE4 8007A1B4 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 74D5EE8 8007A1B8 00000000 */  nop
/* 74D5EEC 8007A1BC 23100200 */  negu       $v0, $v0
/* 74D5EF0 8007A1C0 18004500 */  mult       $v0, $a1
/* 74D5EF4 8007A1C4 10400000 */  mfhi       $t0
/* 74D5EF8 8007A1C8 21180201 */  addu       $v1, $t0, $v0
/* 74D5EFC 8007A1CC 03190300 */  sra        $v1, $v1, 4
/* 74D5F00 8007A1D0 C3170200 */  sra        $v0, $v0, 31
/* 74D5F04 8007A1D4 23186200 */  subu       $v1, $v1, $v0
/* 74D5F08 8007A1D8 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_34_8007A1DC:
/* 74D5F0C 8007A1DC 0C000426 */  addiu      $a0, $s0, 0xC
/* 74D5F10 8007A1E0 20050224 */  addiu      $v0, $zero, 0x520
/* 74D5F14 8007A1E4 1800A2AF */  sw         $v0, 0x18($sp)
/* 74D5F18 8007A1E8 0000458E */  lw         $a1, 0x0($s2)
/* 74D5F1C 8007A1EC 1000A627 */  addiu      $a2, $sp, 0x10
/* 74D5F20 8007A1F0 653C010C */  jal        func_8004F194
/* 74D5F24 8007A1F4 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_34_8007A1F8:
/* 74D5F28 8007A1F8 3400BF8F */  lw         $ra, 0x34($sp)
/* 74D5F2C 8007A1FC 3000B28F */  lw         $s2, 0x30($sp)
/* 74D5F30 8007A200 2C00B18F */  lw         $s1, 0x2C($sp)
/* 74D5F34 8007A204 2800B08F */  lw         $s0, 0x28($sp)
/* 74D5F38 8007A208 3800BD27 */  addiu      $sp, $sp, 0x38
/* 74D5F3C 8007A20C 0800E003 */  jr         $ra
/* 74D5F40 8007A210 00000000 */   nop
.size MobyUpdate_260_level_34, . - MobyUpdate_260_level_34
