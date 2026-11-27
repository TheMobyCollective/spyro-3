.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_41
/* 813FBC8 80079E98 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 813FBCC 80079E9C 2800B0AF */  sw         $s0, 0x28($sp)
/* 813FBD0 80079EA0 21808000 */  addu       $s0, $a0, $zero
/* 813FBD4 80079EA4 3400BFAF */  sw         $ra, 0x34($sp)
/* 813FBD8 80079EA8 3000B2AF */  sw         $s2, 0x30($sp)
/* 813FBDC 80079EAC 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 813FBE0 80079EB0 49000292 */  lbu        $v0, 0x49($s0)
/* 813FBE4 80079EB4 0000128E */  lw         $s2, 0x0($s0)
/* 813FBE8 80079EB8 60004014 */  bnez       $v0, .Llevel_41_8007A03C
/* 813FBEC 80079EBC 00000000 */   nop
/* 813FBF0 80079EC0 0400428E */  lw         $v0, 0x4($s2)
/* 813FBF4 80079EC4 00000000 */  nop
/* 813FBF8 80079EC8 53004018 */  blez       $v0, .Llevel_41_8007A018
/* 813FBFC 80079ECC 47000524 */   addiu     $a1, $zero, 0x47
/* 813FC00 80079ED0 46000292 */  lbu        $v0, 0x46($s0)
/* 813FC04 80079ED4 00000000 */  nop
/* 813FC08 80079ED8 01004224 */  addiu      $v0, $v0, 0x1
/* 813FC0C 80079EDC 460002A2 */  sb         $v0, 0x46($s0)
/* 813FC10 80079EE0 1400428E */  lw         $v0, 0x14($s2)
/* 813FC14 80079EE4 00000000 */  nop
/* 813FC18 80079EE8 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 813FC1C 80079EEC 140042AE */  sw         $v0, 0x14($s2)
/* 813FC20 80079EF0 80FF4228 */  slti       $v0, $v0, -0x80
/* 813FC24 80079EF4 02004010 */  beqz       $v0, .Llevel_41_80079F00
/* 813FC28 80079EF8 80FF0224 */   addiu     $v0, $zero, -0x80
/* 813FC2C 80079EFC 140042AE */  sw         $v0, 0x14($s2)
.Llevel_41_80079F00:
/* 813FC30 80079F00 0C00028E */  lw         $v0, 0xC($s0)
/* 813FC34 80079F04 0C00438E */  lw         $v1, 0xC($s2)
/* 813FC38 80079F08 00000000 */  nop
/* 813FC3C 80079F0C 21104300 */  addu       $v0, $v0, $v1
/* 813FC40 80079F10 0C0002AE */  sw         $v0, 0xC($s0)
/* 813FC44 80079F14 1000028E */  lw         $v0, 0x10($s0)
/* 813FC48 80079F18 1000438E */  lw         $v1, 0x10($s2)
/* 813FC4C 80079F1C 00000000 */  nop
/* 813FC50 80079F20 21104300 */  addu       $v0, $v0, $v1
/* 813FC54 80079F24 100002AE */  sw         $v0, 0x10($s0)
/* 813FC58 80079F28 1400028E */  lw         $v0, 0x14($s0)
/* 813FC5C 80079F2C 1400438E */  lw         $v1, 0x14($s2)
/* 813FC60 80079F30 00000000 */  nop
/* 813FC64 80079F34 21104300 */  addu       $v0, $v0, $v1
/* 813FC68 80079F38 140002AE */  sw         $v0, 0x14($s0)
/* 813FC6C 80079F3C 00044228 */  slti       $v0, $v0, 0x400
/* 813FC70 80079F40 44004014 */  bnez       $v0, .Llevel_41_8007A054
/* 813FC74 80079F44 0C001126 */   addiu     $s1, $s0, 0xC
/* 813FC78 80079F48 21202002 */  addu       $a0, $s1, $zero
/* 813FC7C 80079F4C D668000C */  jal        func_8001A358
/* 813FC80 80079F50 00200524 */   addiu     $a1, $zero, 0x2000
/* 813FC84 80079F54 A758010C */  jal        func_8005629C
/* 813FC88 80079F58 21200002 */   addu      $a0, $s0, $zero
/* 813FC8C 80079F5C 21202002 */  addu       $a0, $s1, $zero
/* 813FC90 80079F60 6564000C */  jal        func_80019194
/* 813FC94 80079F64 00010524 */   addiu     $a1, $zero, 0x100
/* 813FC98 80079F68 26004010 */  beqz       $v0, .Llevel_41_8007A004
/* 813FC9C 80079F6C 21202002 */   addu      $a0, $s1, $zero
/* 813FCA0 80079F70 0780103C */  lui        $s0, %hi(D_8007190C)
/* 813FCA4 80079F74 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 813FCA8 80079F78 5E3C010C */  jal        func_8004F178
/* 813FCAC 80079F7C 21280002 */   addu      $a1, $s0, $zero
/* 813FCB0 80079F80 0C001126 */  addiu      $s1, $s0, 0xC
/* 813FCB4 80079F84 21202002 */  addu       $a0, $s1, $zero
/* 813FCB8 80079F88 C13B010C */  jal        func_8004EF04
/* 813FCBC 80079F8C 00100524 */   addiu     $a1, $zero, 0x1000
/* 813FCC0 80079F90 0C00438E */  lw         $v1, 0xC($s2)
/* 813FCC4 80079F94 0C00028E */  lw         $v0, 0xC($s0)
/* 813FCC8 80079F98 00000000 */  nop
/* 813FCCC 80079F9C 18006200 */  mult       $v1, $v0
/* 813FCD0 80079FA0 1000438E */  lw         $v1, 0x10($s2)
/* 813FCD4 80079FA4 12280000 */  mflo       $a1
/* 813FCD8 80079FA8 0780023C */  lui        $v0, %hi(D_8007191C)
/* 813FCDC 80079FAC 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 813FCE0 80079FB0 00000000 */  nop
/* 813FCE4 80079FB4 18006200 */  mult       $v1, $v0
/* 813FCE8 80079FB8 1400438E */  lw         $v1, 0x14($s2)
/* 813FCEC 80079FBC 12200000 */  mflo       $a0
/* 813FCF0 80079FC0 0780023C */  lui        $v0, %hi(D_80071920)
/* 813FCF4 80079FC4 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 813FCF8 80079FC8 00000000 */  nop
/* 813FCFC 80079FCC 18006200 */  mult       $v1, $v0
/* 813FD00 80079FD0 2110A400 */  addu       $v0, $a1, $a0
/* 813FD04 80079FD4 12180000 */  mflo       $v1
/* 813FD08 80079FD8 21104300 */  addu       $v0, $v0, $v1
/* 813FD0C 80079FDC C3120200 */  sra        $v0, $v0, 11
/* 813FD10 80079FE0 08004104 */  bgez       $v0, .Llevel_41_8007A004
/* 813FD14 80079FE4 21202002 */   addu      $a0, $s1, $zero
/* 813FD18 80079FE8 00100524 */  addiu      $a1, $zero, 0x1000
/* 813FD1C 80079FEC 233C010C */  jal        func_8004F08C
/* 813FD20 80079FF0 23300200 */   negu      $a2, $v0
/* 813FD24 80079FF4 0C004426 */  addiu      $a0, $s2, 0xC
/* 813FD28 80079FF8 21288000 */  addu       $a1, $a0, $zero
/* 813FD2C 80079FFC 653C010C */  jal        func_8004F194
/* 813FD30 8007A000 21302002 */   addu      $a2, $s1, $zero
.Llevel_41_8007A004:
/* 813FD34 8007A004 0400428E */  lw         $v0, 0x4($s2)
/* 813FD38 8007A008 00000000 */  nop
/* 813FD3C 8007A00C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 813FD40 8007A010 60E80108 */  j          .Llevel_41_8007A180
/* 813FD44 8007A014 040042AE */   sw        $v0, 0x4($s2)
.Llevel_41_8007A018:
/* 813FD48 8007A018 0A000424 */  addiu      $a0, $zero, 0xA
/* 813FD4C 8007A01C 0C000626 */  addiu      $a2, $s0, 0xC
/* 813FD50 8007A020 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 813FD54 8007A024 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 813FD58 8007A028 00000000 */  nop
/* 813FD5C 8007A02C 09F84000 */  jalr       $v0
/* 813FD60 8007A030 21380000 */   addu      $a3, $zero, $zero
/* 813FD64 8007A034 15E80108 */  j          .Llevel_41_8007A054
/* 813FD68 8007A038 00000000 */   nop
.Llevel_41_8007A03C:
/* 813FD6C 8007A03C 0000428E */  lw         $v0, 0x0($s2)
/* 813FD70 8007A040 00000000 */  nop
/* 813FD74 8007A044 48004290 */  lbu        $v0, 0x48($v0)
/* 813FD78 8007A048 00000000 */  nop
/* 813FD7C 8007A04C 05004010 */  beqz       $v0, .Llevel_41_8007A064
/* 813FD80 8007A050 21300000 */   addu      $a2, $zero, $zero
.Llevel_41_8007A054:
/* 813FD84 8007A054 C656010C */  jal        func_80055B18
/* 813FD88 8007A058 21200002 */   addu      $a0, $s0, $zero
/* 813FD8C 8007A05C 60E80108 */  j          .Llevel_41_8007A180
/* 813FD90 8007A060 00000000 */   nop
.Llevel_41_8007A064:
/* 813FD94 8007A064 0780033C */  lui        $v1, %hi(D_8006E020)
/* 813FD98 8007A068 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 813FD9C 8007A06C 0C00048E */  lw         $a0, 0xC($s0)
/* 813FDA0 8007A070 0780023C */  lui        $v0, %hi(D_8006E024)
/* 813FDA4 8007A074 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 813FDA8 8007A078 1000058E */  lw         $a1, 0x10($s0)
/* 813FDAC 8007A07C 23206400 */  subu       $a0, $v1, $a0
/* 813FDB0 8007A080 203A010C */  jal        func_8004E880
/* 813FDB4 8007A084 23284500 */   subu      $a1, $v0, $a1
/* 813FDB8 8007A088 21204000 */  addu       $a0, $v0, $zero
/* 813FDBC 8007A08C 80004224 */  addiu      $v0, $v0, 0x80
/* 813FDC0 8007A090 0780033C */  lui        $v1, %hi(D_8006C644)
/* 813FDC4 8007A094 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 813FDC8 8007A098 0680063C */  lui        $a2, %hi(D_800658A0)
/* 813FDCC 8007A09C A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 813FDD0 8007A0A0 C0180300 */  sll        $v1, $v1, 3
/* 813FDD4 8007A0A4 F8016330 */  andi       $v1, $v1, 0x1F8
/* 813FDD8 8007A0A8 0680013C */  lui        $at, %hi(D_800658A0)
/* 813FDDC 8007A0AC 21082300 */  addu       $at, $at, $v1
/* 813FDE0 8007A0B0 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 813FDE4 8007A0B4 21284000 */  addu       $a1, $v0, $zero
/* 813FDE8 8007A0B8 001C0300 */  sll        $v1, $v1, 16
/* 813FDEC 8007A0BC C31D0300 */  sra        $v1, $v1, 23
/* 813FDF0 8007A0C0 21186200 */  addu       $v1, $v1, $v0
/* 813FDF4 8007A0C4 460003A2 */  sb         $v1, 0x46($s0)
/* 813FDF8 8007A0C8 49000392 */  lbu        $v1, 0x49($s0)
/* 813FDFC 8007A0CC 02000224 */  addiu      $v0, $zero, 0x2
/* 813FE00 8007A0D0 02006214 */  bne        $v1, $v0, .Llevel_41_8007A0DC
/* 813FE04 8007A0D4 00000000 */   nop
/* 813FE08 8007A0D8 2120A000 */  addu       $a0, $a1, $zero
.Llevel_41_8007A0DC:
/* 813FE0C 8007A0DC 1000A0AF */  sw         $zero, 0x10($sp)
/* 813FE10 8007A0E0 1400A0AF */  sw         $zero, 0x14($sp)
/* 813FE14 8007A0E4 49000392 */  lbu        $v1, 0x49($s0)
/* 813FE18 8007A0E8 03000224 */  addiu      $v0, $zero, 0x3
/* 813FE1C 8007A0EC 1D006210 */  beq        $v1, $v0, .Llevel_41_8007A164
/* 813FE20 8007A0F0 FF008430 */   andi      $a0, $a0, 0xFF
/* 813FE24 8007A0F4 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 813FE28 8007A0F8 40200400 */  sll        $a0, $a0, 1
/* 813FE2C 8007A0FC 21108600 */  addu       $v0, $a0, $a2
/* 813FE30 8007A100 00004394 */  lhu        $v1, 0x0($v0)
/* 813FE34 8007A104 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 813FE38 8007A108 001C0300 */  sll        $v1, $v1, 16
/* 813FE3C 8007A10C 03140300 */  sra        $v0, $v1, 16
/* 813FE40 8007A110 18004500 */  mult       $v0, $a1
/* 813FE44 8007A114 C31F0300 */  sra        $v1, $v1, 31
/* 813FE48 8007A118 10400000 */  mfhi       $t0
/* 813FE4C 8007A11C 21100201 */  addu       $v0, $t0, $v0
/* 813FE50 8007A120 03110200 */  sra        $v0, $v0, 4
/* 813FE54 8007A124 23104300 */  subu       $v0, $v0, $v1
/* 813FE58 8007A128 00140200 */  sll        $v0, $v0, 16
/* 813FE5C 8007A12C 03140200 */  sra        $v0, $v0, 16
/* 813FE60 8007A130 1000A2AF */  sw         $v0, 0x10($sp)
/* 813FE64 8007A134 0680013C */  lui        $at, %hi(D_80065920)
/* 813FE68 8007A138 21082400 */  addu       $at, $at, $a0
/* 813FE6C 8007A13C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 813FE70 8007A140 00000000 */  nop
/* 813FE74 8007A144 23100200 */  negu       $v0, $v0
/* 813FE78 8007A148 18004500 */  mult       $v0, $a1
/* 813FE7C 8007A14C 10400000 */  mfhi       $t0
/* 813FE80 8007A150 21180201 */  addu       $v1, $t0, $v0
/* 813FE84 8007A154 03190300 */  sra        $v1, $v1, 4
/* 813FE88 8007A158 C3170200 */  sra        $v0, $v0, 31
/* 813FE8C 8007A15C 23186200 */  subu       $v1, $v1, $v0
/* 813FE90 8007A160 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_41_8007A164:
/* 813FE94 8007A164 0C000426 */  addiu      $a0, $s0, 0xC
/* 813FE98 8007A168 20050224 */  addiu      $v0, $zero, 0x520
/* 813FE9C 8007A16C 1800A2AF */  sw         $v0, 0x18($sp)
/* 813FEA0 8007A170 0000458E */  lw         $a1, 0x0($s2)
/* 813FEA4 8007A174 1000A627 */  addiu      $a2, $sp, 0x10
/* 813FEA8 8007A178 653C010C */  jal        func_8004F194
/* 813FEAC 8007A17C 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_41_8007A180:
/* 813FEB0 8007A180 3400BF8F */  lw         $ra, 0x34($sp)
/* 813FEB4 8007A184 3000B28F */  lw         $s2, 0x30($sp)
/* 813FEB8 8007A188 2C00B18F */  lw         $s1, 0x2C($sp)
/* 813FEBC 8007A18C 2800B08F */  lw         $s0, 0x28($sp)
/* 813FEC0 8007A190 3800BD27 */  addiu      $sp, $sp, 0x38
/* 813FEC4 8007A194 0800E003 */  jr         $ra
/* 813FEC8 8007A198 00000000 */   nop
.size MobyUpdate_260_level_41, . - MobyUpdate_260_level_41
