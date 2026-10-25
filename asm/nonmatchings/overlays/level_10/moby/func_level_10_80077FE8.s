.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_10
/* 3ADCD18 80077FE8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3ADCD1C 80077FEC 2800B0AF */  sw         $s0, 0x28($sp)
/* 3ADCD20 80077FF0 21808000 */  addu       $s0, $a0, $zero
/* 3ADCD24 80077FF4 3400BFAF */  sw         $ra, 0x34($sp)
/* 3ADCD28 80077FF8 3000B2AF */  sw         $s2, 0x30($sp)
/* 3ADCD2C 80077FFC 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 3ADCD30 80078000 49000292 */  lbu        $v0, 0x49($s0)
/* 3ADCD34 80078004 0000128E */  lw         $s2, 0x0($s0)
/* 3ADCD38 80078008 60004014 */  bnez       $v0, .Llevel_10_8007818C
/* 3ADCD3C 8007800C 00000000 */   nop
/* 3ADCD40 80078010 0400428E */  lw         $v0, 0x4($s2)
/* 3ADCD44 80078014 00000000 */  nop
/* 3ADCD48 80078018 53004018 */  blez       $v0, .Llevel_10_80078168
/* 3ADCD4C 8007801C 47000524 */   addiu     $a1, $zero, 0x47
/* 3ADCD50 80078020 46000292 */  lbu        $v0, 0x46($s0)
/* 3ADCD54 80078024 00000000 */  nop
/* 3ADCD58 80078028 01004224 */  addiu      $v0, $v0, 0x1
/* 3ADCD5C 8007802C 460002A2 */  sb         $v0, 0x46($s0)
/* 3ADCD60 80078030 1400428E */  lw         $v0, 0x14($s2)
/* 3ADCD64 80078034 00000000 */  nop
/* 3ADCD68 80078038 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 3ADCD6C 8007803C 140042AE */  sw         $v0, 0x14($s2)
/* 3ADCD70 80078040 80FF4228 */  slti       $v0, $v0, -0x80
/* 3ADCD74 80078044 02004010 */  beqz       $v0, .Llevel_10_80078050
/* 3ADCD78 80078048 80FF0224 */   addiu     $v0, $zero, -0x80
/* 3ADCD7C 8007804C 140042AE */  sw         $v0, 0x14($s2)
.Llevel_10_80078050:
/* 3ADCD80 80078050 0C00028E */  lw         $v0, 0xC($s0)
/* 3ADCD84 80078054 0C00438E */  lw         $v1, 0xC($s2)
/* 3ADCD88 80078058 00000000 */  nop
/* 3ADCD8C 8007805C 21104300 */  addu       $v0, $v0, $v1
/* 3ADCD90 80078060 0C0002AE */  sw         $v0, 0xC($s0)
/* 3ADCD94 80078064 1000028E */  lw         $v0, 0x10($s0)
/* 3ADCD98 80078068 1000438E */  lw         $v1, 0x10($s2)
/* 3ADCD9C 8007806C 00000000 */  nop
/* 3ADCDA0 80078070 21104300 */  addu       $v0, $v0, $v1
/* 3ADCDA4 80078074 100002AE */  sw         $v0, 0x10($s0)
/* 3ADCDA8 80078078 1400028E */  lw         $v0, 0x14($s0)
/* 3ADCDAC 8007807C 1400438E */  lw         $v1, 0x14($s2)
/* 3ADCDB0 80078080 00000000 */  nop
/* 3ADCDB4 80078084 21104300 */  addu       $v0, $v0, $v1
/* 3ADCDB8 80078088 140002AE */  sw         $v0, 0x14($s0)
/* 3ADCDBC 8007808C 00044228 */  slti       $v0, $v0, 0x400
/* 3ADCDC0 80078090 44004014 */  bnez       $v0, .Llevel_10_800781A4
/* 3ADCDC4 80078094 0C001126 */   addiu     $s1, $s0, 0xC
/* 3ADCDC8 80078098 21202002 */  addu       $a0, $s1, $zero
/* 3ADCDCC 8007809C D668000C */  jal        func_8001A358
/* 3ADCDD0 800780A0 00200524 */   addiu     $a1, $zero, 0x2000
/* 3ADCDD4 800780A4 A758010C */  jal        func_8005629C
/* 3ADCDD8 800780A8 21200002 */   addu      $a0, $s0, $zero
/* 3ADCDDC 800780AC 21202002 */  addu       $a0, $s1, $zero
/* 3ADCDE0 800780B0 6564000C */  jal        func_80019194
/* 3ADCDE4 800780B4 00010524 */   addiu     $a1, $zero, 0x100
/* 3ADCDE8 800780B8 26004010 */  beqz       $v0, .Llevel_10_80078154
/* 3ADCDEC 800780BC 21202002 */   addu      $a0, $s1, $zero
/* 3ADCDF0 800780C0 0780103C */  lui        $s0, %hi(D_8007190C)
/* 3ADCDF4 800780C4 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 3ADCDF8 800780C8 5E3C010C */  jal        func_8004F178
/* 3ADCDFC 800780CC 21280002 */   addu      $a1, $s0, $zero
/* 3ADCE00 800780D0 0C001126 */  addiu      $s1, $s0, 0xC
/* 3ADCE04 800780D4 21202002 */  addu       $a0, $s1, $zero
/* 3ADCE08 800780D8 C13B010C */  jal        func_8004EF04
/* 3ADCE0C 800780DC 00100524 */   addiu     $a1, $zero, 0x1000
/* 3ADCE10 800780E0 0C00438E */  lw         $v1, 0xC($s2)
/* 3ADCE14 800780E4 0C00028E */  lw         $v0, 0xC($s0)
/* 3ADCE18 800780E8 00000000 */  nop
/* 3ADCE1C 800780EC 18006200 */  mult       $v1, $v0
/* 3ADCE20 800780F0 1000438E */  lw         $v1, 0x10($s2)
/* 3ADCE24 800780F4 12280000 */  mflo       $a1
/* 3ADCE28 800780F8 0780023C */  lui        $v0, %hi(D_8007191C)
/* 3ADCE2C 800780FC 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 3ADCE30 80078100 00000000 */  nop
/* 3ADCE34 80078104 18006200 */  mult       $v1, $v0
/* 3ADCE38 80078108 1400438E */  lw         $v1, 0x14($s2)
/* 3ADCE3C 8007810C 12200000 */  mflo       $a0
/* 3ADCE40 80078110 0780023C */  lui        $v0, %hi(D_80071920)
/* 3ADCE44 80078114 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 3ADCE48 80078118 00000000 */  nop
/* 3ADCE4C 8007811C 18006200 */  mult       $v1, $v0
/* 3ADCE50 80078120 2110A400 */  addu       $v0, $a1, $a0
/* 3ADCE54 80078124 12180000 */  mflo       $v1
/* 3ADCE58 80078128 21104300 */  addu       $v0, $v0, $v1
/* 3ADCE5C 8007812C C3120200 */  sra        $v0, $v0, 11
/* 3ADCE60 80078130 08004104 */  bgez       $v0, .Llevel_10_80078154
/* 3ADCE64 80078134 21202002 */   addu      $a0, $s1, $zero
/* 3ADCE68 80078138 00100524 */  addiu      $a1, $zero, 0x1000
/* 3ADCE6C 8007813C 233C010C */  jal        func_8004F08C
/* 3ADCE70 80078140 23300200 */   negu      $a2, $v0
/* 3ADCE74 80078144 0C004426 */  addiu      $a0, $s2, 0xC
/* 3ADCE78 80078148 21288000 */  addu       $a1, $a0, $zero
/* 3ADCE7C 8007814C 653C010C */  jal        func_8004F194
/* 3ADCE80 80078150 21302002 */   addu      $a2, $s1, $zero
.Llevel_10_80078154:
/* 3ADCE84 80078154 0400428E */  lw         $v0, 0x4($s2)
/* 3ADCE88 80078158 00000000 */  nop
/* 3ADCE8C 8007815C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3ADCE90 80078160 B4E00108 */  j          .Llevel_10_800782D0
/* 3ADCE94 80078164 040042AE */   sw        $v0, 0x4($s2)
.Llevel_10_80078168:
/* 3ADCE98 80078168 0A000424 */  addiu      $a0, $zero, 0xA
/* 3ADCE9C 8007816C 0C000626 */  addiu      $a2, $s0, 0xC
/* 3ADCEA0 80078170 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADCEA4 80078174 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADCEA8 80078178 00000000 */  nop
/* 3ADCEAC 8007817C 09F84000 */  jalr       $v0
/* 3ADCEB0 80078180 21380000 */   addu      $a3, $zero, $zero
/* 3ADCEB4 80078184 69E00108 */  j          .Llevel_10_800781A4
/* 3ADCEB8 80078188 00000000 */   nop
.Llevel_10_8007818C:
/* 3ADCEBC 8007818C 0000428E */  lw         $v0, 0x0($s2)
/* 3ADCEC0 80078190 00000000 */  nop
/* 3ADCEC4 80078194 48004290 */  lbu        $v0, 0x48($v0)
/* 3ADCEC8 80078198 00000000 */  nop
/* 3ADCECC 8007819C 05004010 */  beqz       $v0, .Llevel_10_800781B4
/* 3ADCED0 800781A0 21300000 */   addu      $a2, $zero, $zero
.Llevel_10_800781A4:
/* 3ADCED4 800781A4 C656010C */  jal        func_80055B18
/* 3ADCED8 800781A8 21200002 */   addu      $a0, $s0, $zero
/* 3ADCEDC 800781AC B4E00108 */  j          .Llevel_10_800782D0
/* 3ADCEE0 800781B0 00000000 */   nop
.Llevel_10_800781B4:
/* 3ADCEE4 800781B4 0780033C */  lui        $v1, %hi(D_8006E020)
/* 3ADCEE8 800781B8 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 3ADCEEC 800781BC 0C00048E */  lw         $a0, 0xC($s0)
/* 3ADCEF0 800781C0 0780023C */  lui        $v0, %hi(D_8006E024)
/* 3ADCEF4 800781C4 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 3ADCEF8 800781C8 1000058E */  lw         $a1, 0x10($s0)
/* 3ADCEFC 800781CC 23206400 */  subu       $a0, $v1, $a0
/* 3ADCF00 800781D0 203A010C */  jal        func_8004E880
/* 3ADCF04 800781D4 23284500 */   subu      $a1, $v0, $a1
/* 3ADCF08 800781D8 21204000 */  addu       $a0, $v0, $zero
/* 3ADCF0C 800781DC 80004224 */  addiu      $v0, $v0, 0x80
/* 3ADCF10 800781E0 0780033C */  lui        $v1, %hi(D_8006C644)
/* 3ADCF14 800781E4 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 3ADCF18 800781E8 0680063C */  lui        $a2, %hi(D_800658A0)
/* 3ADCF1C 800781EC A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 3ADCF20 800781F0 C0180300 */  sll        $v1, $v1, 3
/* 3ADCF24 800781F4 F8016330 */  andi       $v1, $v1, 0x1F8
/* 3ADCF28 800781F8 0680013C */  lui        $at, %hi(D_800658A0)
/* 3ADCF2C 800781FC 21082300 */  addu       $at, $at, $v1
/* 3ADCF30 80078200 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 3ADCF34 80078204 21284000 */  addu       $a1, $v0, $zero
/* 3ADCF38 80078208 001C0300 */  sll        $v1, $v1, 16
/* 3ADCF3C 8007820C C31D0300 */  sra        $v1, $v1, 23
/* 3ADCF40 80078210 21186200 */  addu       $v1, $v1, $v0
/* 3ADCF44 80078214 460003A2 */  sb         $v1, 0x46($s0)
/* 3ADCF48 80078218 49000392 */  lbu        $v1, 0x49($s0)
/* 3ADCF4C 8007821C 02000224 */  addiu      $v0, $zero, 0x2
/* 3ADCF50 80078220 02006214 */  bne        $v1, $v0, .Llevel_10_8007822C
/* 3ADCF54 80078224 00000000 */   nop
/* 3ADCF58 80078228 2120A000 */  addu       $a0, $a1, $zero
.Llevel_10_8007822C:
/* 3ADCF5C 8007822C 1000A0AF */  sw         $zero, 0x10($sp)
/* 3ADCF60 80078230 1400A0AF */  sw         $zero, 0x14($sp)
/* 3ADCF64 80078234 49000392 */  lbu        $v1, 0x49($s0)
/* 3ADCF68 80078238 03000224 */  addiu      $v0, $zero, 0x3
/* 3ADCF6C 8007823C 1D006210 */  beq        $v1, $v0, .Llevel_10_800782B4
/* 3ADCF70 80078240 FF008430 */   andi      $a0, $a0, 0xFF
/* 3ADCF74 80078244 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 3ADCF78 80078248 40200400 */  sll        $a0, $a0, 1
/* 3ADCF7C 8007824C 21108600 */  addu       $v0, $a0, $a2
/* 3ADCF80 80078250 00004394 */  lhu        $v1, 0x0($v0)
/* 3ADCF84 80078254 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 3ADCF88 80078258 001C0300 */  sll        $v1, $v1, 16
/* 3ADCF8C 8007825C 03140300 */  sra        $v0, $v1, 16
/* 3ADCF90 80078260 18004500 */  mult       $v0, $a1
/* 3ADCF94 80078264 C31F0300 */  sra        $v1, $v1, 31
/* 3ADCF98 80078268 10400000 */  mfhi       $t0
/* 3ADCF9C 8007826C 21100201 */  addu       $v0, $t0, $v0
/* 3ADCFA0 80078270 03110200 */  sra        $v0, $v0, 4
/* 3ADCFA4 80078274 23104300 */  subu       $v0, $v0, $v1
/* 3ADCFA8 80078278 00140200 */  sll        $v0, $v0, 16
/* 3ADCFAC 8007827C 03140200 */  sra        $v0, $v0, 16
/* 3ADCFB0 80078280 1000A2AF */  sw         $v0, 0x10($sp)
/* 3ADCFB4 80078284 0680013C */  lui        $at, %hi(D_80065920)
/* 3ADCFB8 80078288 21082400 */  addu       $at, $at, $a0
/* 3ADCFBC 8007828C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 3ADCFC0 80078290 00000000 */  nop
/* 3ADCFC4 80078294 23100200 */  negu       $v0, $v0
/* 3ADCFC8 80078298 18004500 */  mult       $v0, $a1
/* 3ADCFCC 8007829C 10400000 */  mfhi       $t0
/* 3ADCFD0 800782A0 21180201 */  addu       $v1, $t0, $v0
/* 3ADCFD4 800782A4 03190300 */  sra        $v1, $v1, 4
/* 3ADCFD8 800782A8 C3170200 */  sra        $v0, $v0, 31
/* 3ADCFDC 800782AC 23186200 */  subu       $v1, $v1, $v0
/* 3ADCFE0 800782B0 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_10_800782B4:
/* 3ADCFE4 800782B4 0C000426 */  addiu      $a0, $s0, 0xC
/* 3ADCFE8 800782B8 20050224 */  addiu      $v0, $zero, 0x520
/* 3ADCFEC 800782BC 1800A2AF */  sw         $v0, 0x18($sp)
/* 3ADCFF0 800782C0 0000458E */  lw         $a1, 0x0($s2)
/* 3ADCFF4 800782C4 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADCFF8 800782C8 653C010C */  jal        func_8004F194
/* 3ADCFFC 800782CC 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_10_800782D0:
/* 3ADD000 800782D0 3400BF8F */  lw         $ra, 0x34($sp)
/* 3ADD004 800782D4 3000B28F */  lw         $s2, 0x30($sp)
/* 3ADD008 800782D8 2C00B18F */  lw         $s1, 0x2C($sp)
/* 3ADD00C 800782DC 2800B08F */  lw         $s0, 0x28($sp)
/* 3ADD010 800782E0 3800BD27 */  addiu      $sp, $sp, 0x38
/* 3ADD014 800782E4 0800E003 */  jr         $ra
/* 3ADD018 800782E8 00000000 */   nop
.size MobyUpdate_260_level_10, . - MobyUpdate_260_level_10
