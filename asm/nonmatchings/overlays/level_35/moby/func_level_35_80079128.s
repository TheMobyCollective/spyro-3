.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_35_80079128
/* 76FBE58 80079128 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 76FBE5C 8007912C 2000B0AF */  sw         $s0, 0x20($sp)
/* 76FBE60 80079130 21808000 */  addu       $s0, $a0, $zero
/* 76FBE64 80079134 01000224 */  addiu      $v0, $zero, 0x1
/* 76FBE68 80079138 3000BFAF */  sw         $ra, 0x30($sp)
/* 76FBE6C 8007913C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 76FBE70 80079140 2800B2AF */  sw         $s2, 0x28($sp)
/* 76FBE74 80079144 2400B1AF */  sw         $s1, 0x24($sp)
/* 76FBE78 80079148 48000392 */  lbu        $v1, 0x48($s0)
/* 76FBE7C 8007914C 0000138E */  lw         $s3, 0x0($s0)
/* 76FBE80 80079150 25006210 */  beq        $v1, $v0, .Llevel_35_800791E8
/* 76FBE84 80079154 02006228 */   slti      $v0, $v1, 0x2
/* 76FBE88 80079158 05004010 */  beqz       $v0, .Llevel_35_80079170
/* 76FBE8C 8007915C 00000000 */   nop
/* 76FBE90 80079160 0A006010 */  beqz       $v1, .Llevel_35_8007918C
/* 76FBE94 80079164 02000224 */   addiu     $v0, $zero, 0x2
/* 76FBE98 80079168 FAE40108 */  j          .Llevel_35_800793E8
/* 76FBE9C 8007916C 00000000 */   nop
.Llevel_35_80079170:
/* 76FBEA0 80079170 02000224 */  addiu      $v0, $zero, 0x2
/* 76FBEA4 80079174 4B006210 */  beq        $v1, $v0, .Llevel_35_800792A4
/* 76FBEA8 80079178 03000224 */   addiu     $v0, $zero, 0x3
/* 76FBEAC 8007917C 85006210 */  beq        $v1, $v0, .Llevel_35_80079394
/* 76FBEB0 80079180 21206002 */   addu      $a0, $s3, $zero
/* 76FBEB4 80079184 FAE40108 */  j          .Llevel_35_800793E8
/* 76FBEB8 80079188 00000000 */   nop
.Llevel_35_8007918C:
/* 76FBEBC 8007918C 0780033C */  lui        $v1, %hi(D_8006FA3C)
/* 76FBEC0 80079190 3CFA638C */  lw         $v1, %lo(D_8006FA3C)($v1)
/* 76FBEC4 80079194 00000000 */  nop
/* 76FBEC8 80079198 07006214 */  bne        $v1, $v0, .Llevel_35_800791B8
/* 76FBECC 8007919C 03000224 */   addiu     $v0, $zero, 0x3
/* 76FBED0 800791A0 0400628E */  lw         $v0, 0x4($s3)
/* 76FBED4 800791A4 00000000 */  nop
/* 76FBED8 800791A8 0D004014 */  bnez       $v0, .Llevel_35_800791E0
/* 76FBEDC 800791AC 01000224 */   addiu     $v0, $zero, 0x1
/* 76FBEE0 800791B0 74E40108 */  j          .Llevel_35_800791D0
/* 76FBEE4 800791B4 00000000 */   nop
.Llevel_35_800791B8:
/* 76FBEE8 800791B8 05006210 */  beq        $v1, $v0, .Llevel_35_800791D0
/* 76FBEEC 800791BC 00000000 */   nop
/* 76FBEF0 800791C0 0400628E */  lw         $v0, 0x4($s3)
/* 76FBEF4 800791C4 00000000 */  nop
/* 76FBEF8 800791C8 05004010 */  beqz       $v0, .Llevel_35_800791E0
/* 76FBEFC 800791CC 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_35_800791D0:
/* 76FBF00 800791D0 C656010C */  jal        func_80055B18
/* 76FBF04 800791D4 21200002 */   addu      $a0, $s0, $zero
/* 76FBF08 800791D8 FAE40108 */  j          .Llevel_35_800793E8
/* 76FBF0C 800791DC 00000000 */   nop
.Llevel_35_800791E0:
/* 76FBF10 800791E0 FAE40108 */  j          .Llevel_35_800793E8
/* 76FBF14 800791E4 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_35_800791E8:
/* 76FBF18 800791E8 08006286 */  lh         $v0, 0x8($s3)
/* 76FBF1C 800791EC 00000000 */  nop
/* 76FBF20 800791F0 16004010 */  beqz       $v0, .Llevel_35_8007924C
/* 76FBF24 800791F4 00000000 */   nop
/* 76FBF28 800791F8 0A006486 */  lh         $a0, 0xA($s3)
/* 76FBF2C 800791FC 00000000 */  nop
/* 76FBF30 80079200 12008010 */  beqz       $a0, .Llevel_35_8007924C
/* 76FBF34 80079204 00000000 */   nop
/* 76FBF38 80079208 0780033C */  lui        $v1, %hi(D_8006FA80)
/* 76FBF3C 8007920C 80FA638C */  lw         $v1, %lo(D_8006FA80)($v1)
/* 76FBF40 80079210 00000000 */  nop
/* 76FBF44 80079214 2A104300 */  slt        $v0, $v0, $v1
/* 76FBF48 80079218 07004010 */  beqz       $v0, .Llevel_35_80079238
/* 76FBF4C 8007921C 2A106400 */   slt       $v0, $v1, $a0
/* 76FBF50 80079220 06004010 */  beqz       $v0, .Llevel_35_8007923C
/* 76FBF54 80079224 01000324 */   addiu     $v1, $zero, 0x1
/* 76FBF58 80079228 410000A2 */  sb         $zero, 0x41($s0)
/* 76FBF5C 8007922C 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 76FBF60 80079230 93E40108 */  j          .Llevel_35_8007924C
/* 76FBF64 80079234 4D0000A2 */   sb        $zero, 0x4D($s0)
.Llevel_35_80079238:
/* 76FBF68 80079238 01000324 */  addiu      $v1, $zero, 0x1
.Llevel_35_8007923C:
/* 76FBF6C 8007923C 3F000224 */  addiu      $v0, $zero, 0x3F
/* 76FBF70 80079240 410003A2 */  sb         $v1, 0x41($s0)
/* 76FBF74 80079244 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 76FBF78 80079248 4D0003A2 */  sb         $v1, 0x4D($s0)
.Llevel_35_8007924C:
/* 76FBF7C 8007924C 0780023C */  lui        $v0, %hi(D_8006E040)
/* 76FBF80 80079250 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 76FBF84 80079254 21200002 */  addu       $a0, $s0, $zero
/* 76FBF88 80079258 00140200 */  sll        $v0, $v0, 16
/* 76FBF8C 8007925C 03150200 */  sra        $v0, $v0, 20
/* 76FBF90 80079260 80FF4224 */  addiu      $v0, $v0, -0x80
/* 76FBF94 80079264 460002A2 */  sb         $v0, 0x46($s0)
/* 76FBF98 80079268 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 76FBF9C 8007926C 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 76FBFA0 80079270 0780053C */  lui        $a1, %hi(D_80070328)
/* 76FBFA4 80079274 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 76FBFA8 80079278 02110200 */  srl        $v0, $v0, 4
/* 76FBFAC 8007927C 450002A2 */  sb         $v0, 0x45($s0)
/* 76FBFB0 80079280 0780023C */  lui        $v0, %hi(unk_ovlheader_800743A0)
/* 76FBFB4 80079284 A043428C */  lw         $v0, %lo(unk_ovlheader_800743A0)($v0)
/* 76FBFB8 80079288 00000000 */  nop
/* 76FBFBC 8007928C 09F84000 */  jalr       $v0
/* 76FBFC0 80079290 00040624 */   addiu     $a2, $zero, 0x400
/* 76FBFC4 80079294 54004010 */  beqz       $v0, .Llevel_35_800793E8
/* 76FBFC8 80079298 02000224 */   addiu     $v0, $zero, 0x2
/* 76FBFCC 8007929C FAE40108 */  j          .Llevel_35_800793E8
/* 76FBFD0 800792A0 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_35_800792A4:
/* 76FBFD4 800792A4 21200002 */  addu       $a0, $s0, $zero
/* 76FBFD8 800792A8 21280000 */  addu       $a1, $zero, $zero
/* 76FBFDC 800792AC AFEE000C */  jal        func_8003BABC
/* 76FBFE0 800792B0 21300000 */   addu      $a2, $zero, $zero
/* 76FBFE4 800792B4 21880000 */  addu       $s1, $zero, $zero
/* 76FBFE8 800792B8 0780123C */  lui        $s2, %hi(D_80070328 + 0x98)
/* 76FBFEC 800792BC C0035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x98)
/* 76FBFF0 800792C0 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_35_800792C4:
/* 76FBFF4 800792C4 5E3C010C */  jal        func_8004F178
/* 76FBFF8 800792C8 21284002 */   addu      $a1, $s2, $zero
/* 76FBFFC 800792CC 1000A427 */  addiu      $a0, $sp, 0x10
/* 76FC000 800792D0 443C010C */  jal        func_8004F110
/* 76FC004 800792D4 05000524 */   addiu     $a1, $zero, 0x5
/* 76FC008 800792D8 9171010C */  jal        rand
/* 76FC00C 800792DC 01003126 */   addiu     $s1, $s1, 0x1
/* 76FC010 800792E0 1000A38F */  lw         $v1, 0x10($sp)
/* 76FC014 800792E4 FE004230 */  andi       $v0, $v0, 0xFE
/* 76FC018 800792E8 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 76FC01C 800792EC 21186200 */  addu       $v1, $v1, $v0
/* 76FC020 800792F0 9171010C */  jal        rand
/* 76FC024 800792F4 1000A3AF */   sw        $v1, 0x10($sp)
/* 76FC028 800792F8 1400A38F */  lw         $v1, 0x14($sp)
/* 76FC02C 800792FC FE004230 */  andi       $v0, $v0, 0xFE
/* 76FC030 80079300 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 76FC034 80079304 21186200 */  addu       $v1, $v1, $v0
/* 76FC038 80079308 9171010C */  jal        rand
/* 76FC03C 8007930C 1400A3AF */   sw        $v1, 0x14($sp)
/* 76FC040 80079310 01000424 */  addiu      $a0, $zero, 0x1
/* 76FC044 80079314 17000524 */  addiu      $a1, $zero, 0x17
/* 76FC048 80079318 68FF4626 */  addiu      $a2, $s2, -0x98
/* 76FC04C 8007931C 1800A38F */  lw         $v1, 0x18($sp)
/* 76FC050 80079320 FE004230 */  andi       $v0, $v0, 0xFE
/* 76FC054 80079324 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 76FC058 80079328 21186200 */  addu       $v1, $v1, $v0
/* 76FC05C 8007932C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 76FC060 80079330 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 76FC064 80079334 1000A727 */  addiu      $a3, $sp, 0x10
/* 76FC068 80079338 09F84000 */  jalr       $v0
/* 76FC06C 8007933C 1800A3AF */   sw        $v1, 0x18($sp)
/* 76FC070 80079340 0800222A */  slti       $v0, $s1, 0x8
/* 76FC074 80079344 DFFF4014 */  bnez       $v0, .Llevel_35_800792C4
/* 76FC078 80079348 1000A427 */   addiu     $a0, $sp, 0x10
/* 76FC07C 8007934C 0780033C */  lui        $v1, %hi(D_80070328 + 0x15C)
/* 76FC080 80079350 8404638C */  lw         $v1, %lo(D_80070328 + 0x15C)($v1)
/* 76FC084 80079354 4B000224 */  addiu      $v0, $zero, 0x4B
/* 76FC088 80079358 03006004 */  bltz       $v1, .Llevel_35_80079368
/* 76FC08C 8007935C B00042A6 */   sh        $v0, 0xB0($s2)
/* 76FC090 80079360 DBE40108 */  j          .Llevel_35_8007936C
/* 76FC094 80079364 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_35_80079368:
/* 76FC098 80079368 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_35_8007936C:
/* 76FC09C 8007936C B20042A6 */  sh         $v0, 0xB2($s2)
/* 76FC0A0 80079370 FF000224 */  addiu      $v0, $zero, 0xFF
/* 76FC0A4 80079374 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 76FC0A8 80079378 3C000224 */  addiu      $v0, $zero, 0x3C
/* 76FC0AC 8007937C 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 76FC0B0 80079380 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 76FC0B4 80079384 000062AE */  sw         $v0, 0x0($s3)
/* 76FC0B8 80079388 03000224 */  addiu      $v0, $zero, 0x3
/* 76FC0BC 8007938C FAE40108 */  j          .Llevel_35_800793E8
/* 76FC0C0 80079390 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_35_80079394:
/* 76FC0C4 80079394 69D6000C */  jal        func_800359A4
/* 76FC0C8 80079398 04000524 */   addiu     $a1, $zero, 0x4
/* 76FC0CC 8007939C 12004010 */  beqz       $v0, .Llevel_35_800793E8
/* 76FC0D0 800793A0 00000000 */   nop
/* 76FC0D4 800793A4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 76FC0D8 800793A8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 76FC0DC 800793AC 00000000 */  nop
/* 76FC0E0 800793B0 00140200 */  sll        $v0, $v0, 16
/* 76FC0E4 800793B4 03150200 */  sra        $v0, $v0, 20
/* 76FC0E8 800793B8 80FF4224 */  addiu      $v0, $v0, -0x80
/* 76FC0EC 800793BC 460002A2 */  sb         $v0, 0x46($s0)
/* 76FC0F0 800793C0 0780033C */  lui        $v1, %hi(D_8006E03E)
/* 76FC0F4 800793C4 3EE06394 */  lhu        $v1, %lo(D_8006E03E)($v1)
/* 76FC0F8 800793C8 3F000224 */  addiu      $v0, $zero, 0x3F
/* 76FC0FC 800793CC 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 76FC100 800793D0 10000224 */  addiu      $v0, $zero, 0x10
/* 76FC104 800793D4 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 76FC108 800793D8 01000224 */  addiu      $v0, $zero, 0x1
/* 76FC10C 800793DC 480002A2 */  sb         $v0, 0x48($s0)
/* 76FC110 800793E0 02190300 */  srl        $v1, $v1, 4
/* 76FC114 800793E4 450003A2 */  sb         $v1, 0x45($s0)
.Llevel_35_800793E8:
/* 76FC118 800793E8 3000BF8F */  lw         $ra, 0x30($sp)
/* 76FC11C 800793EC 2C00B38F */  lw         $s3, 0x2C($sp)
/* 76FC120 800793F0 2800B28F */  lw         $s2, 0x28($sp)
/* 76FC124 800793F4 2400B18F */  lw         $s1, 0x24($sp)
/* 76FC128 800793F8 2000B08F */  lw         $s0, 0x20($sp)
/* 76FC12C 800793FC 3800BD27 */  addiu      $sp, $sp, 0x38
/* 76FC130 80079400 0800E003 */  jr         $ra
/* 76FC134 80079404 00000000 */   nop
.size func_level_35_80079128, . - func_level_35_80079128
