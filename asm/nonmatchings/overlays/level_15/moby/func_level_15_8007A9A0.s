.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_8007A9A0
/* 49B4ED0 8007A9A0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 49B4ED4 8007A9A4 2000B0AF */  sw         $s0, 0x20($sp)
/* 49B4ED8 8007A9A8 21808000 */  addu       $s0, $a0, $zero
/* 49B4EDC 8007A9AC 01000224 */  addiu      $v0, $zero, 0x1
/* 49B4EE0 8007A9B0 3000BFAF */  sw         $ra, 0x30($sp)
/* 49B4EE4 8007A9B4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 49B4EE8 8007A9B8 2800B2AF */  sw         $s2, 0x28($sp)
/* 49B4EEC 8007A9BC 2400B1AF */  sw         $s1, 0x24($sp)
/* 49B4EF0 8007A9C0 48000392 */  lbu        $v1, 0x48($s0)
/* 49B4EF4 8007A9C4 0000138E */  lw         $s3, 0x0($s0)
/* 49B4EF8 8007A9C8 25006210 */  beq        $v1, $v0, .Llevel_15_8007AA60
/* 49B4EFC 8007A9CC 02006228 */   slti      $v0, $v1, 0x2
/* 49B4F00 8007A9D0 05004010 */  beqz       $v0, .Llevel_15_8007A9E8
/* 49B4F04 8007A9D4 00000000 */   nop
/* 49B4F08 8007A9D8 0A006010 */  beqz       $v1, .Llevel_15_8007AA04
/* 49B4F0C 8007A9DC 02000224 */   addiu     $v0, $zero, 0x2
/* 49B4F10 8007A9E0 18EB0108 */  j          .Llevel_15_8007AC60
/* 49B4F14 8007A9E4 00000000 */   nop
.Llevel_15_8007A9E8:
/* 49B4F18 8007A9E8 02000224 */  addiu      $v0, $zero, 0x2
/* 49B4F1C 8007A9EC 4B006210 */  beq        $v1, $v0, .Llevel_15_8007AB1C
/* 49B4F20 8007A9F0 03000224 */   addiu     $v0, $zero, 0x3
/* 49B4F24 8007A9F4 85006210 */  beq        $v1, $v0, .Llevel_15_8007AC0C
/* 49B4F28 8007A9F8 21206002 */   addu      $a0, $s3, $zero
/* 49B4F2C 8007A9FC 18EB0108 */  j          .Llevel_15_8007AC60
/* 49B4F30 8007AA00 00000000 */   nop
.Llevel_15_8007AA04:
/* 49B4F34 8007AA04 0780033C */  lui        $v1, %hi(D_8006FA3C)
/* 49B4F38 8007AA08 3CFA638C */  lw         $v1, %lo(D_8006FA3C)($v1)
/* 49B4F3C 8007AA0C 00000000 */  nop
/* 49B4F40 8007AA10 07006214 */  bne        $v1, $v0, .Llevel_15_8007AA30
/* 49B4F44 8007AA14 03000224 */   addiu     $v0, $zero, 0x3
/* 49B4F48 8007AA18 0400628E */  lw         $v0, 0x4($s3)
/* 49B4F4C 8007AA1C 00000000 */  nop
/* 49B4F50 8007AA20 0D004014 */  bnez       $v0, .Llevel_15_8007AA58
/* 49B4F54 8007AA24 01000224 */   addiu     $v0, $zero, 0x1
/* 49B4F58 8007AA28 92EA0108 */  j          .Llevel_15_8007AA48
/* 49B4F5C 8007AA2C 00000000 */   nop
.Llevel_15_8007AA30:
/* 49B4F60 8007AA30 05006210 */  beq        $v1, $v0, .Llevel_15_8007AA48
/* 49B4F64 8007AA34 00000000 */   nop
/* 49B4F68 8007AA38 0400628E */  lw         $v0, 0x4($s3)
/* 49B4F6C 8007AA3C 00000000 */  nop
/* 49B4F70 8007AA40 05004010 */  beqz       $v0, .Llevel_15_8007AA58
/* 49B4F74 8007AA44 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_15_8007AA48:
/* 49B4F78 8007AA48 C656010C */  jal        func_80055B18
/* 49B4F7C 8007AA4C 21200002 */   addu      $a0, $s0, $zero
/* 49B4F80 8007AA50 18EB0108 */  j          .Llevel_15_8007AC60
/* 49B4F84 8007AA54 00000000 */   nop
.Llevel_15_8007AA58:
/* 49B4F88 8007AA58 18EB0108 */  j          .Llevel_15_8007AC60
/* 49B4F8C 8007AA5C 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_15_8007AA60:
/* 49B4F90 8007AA60 08006286 */  lh         $v0, 0x8($s3)
/* 49B4F94 8007AA64 00000000 */  nop
/* 49B4F98 8007AA68 16004010 */  beqz       $v0, .Llevel_15_8007AAC4
/* 49B4F9C 8007AA6C 00000000 */   nop
/* 49B4FA0 8007AA70 0A006486 */  lh         $a0, 0xA($s3)
/* 49B4FA4 8007AA74 00000000 */  nop
/* 49B4FA8 8007AA78 12008010 */  beqz       $a0, .Llevel_15_8007AAC4
/* 49B4FAC 8007AA7C 00000000 */   nop
/* 49B4FB0 8007AA80 0780033C */  lui        $v1, %hi(D_8006FA80)
/* 49B4FB4 8007AA84 80FA638C */  lw         $v1, %lo(D_8006FA80)($v1)
/* 49B4FB8 8007AA88 00000000 */  nop
/* 49B4FBC 8007AA8C 2A104300 */  slt        $v0, $v0, $v1
/* 49B4FC0 8007AA90 07004010 */  beqz       $v0, .Llevel_15_8007AAB0
/* 49B4FC4 8007AA94 2A106400 */   slt       $v0, $v1, $a0
/* 49B4FC8 8007AA98 06004010 */  beqz       $v0, .Llevel_15_8007AAB4
/* 49B4FCC 8007AA9C 01000324 */   addiu     $v1, $zero, 0x1
/* 49B4FD0 8007AAA0 410000A2 */  sb         $zero, 0x41($s0)
/* 49B4FD4 8007AAA4 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 49B4FD8 8007AAA8 B1EA0108 */  j          .Llevel_15_8007AAC4
/* 49B4FDC 8007AAAC 4D0000A2 */   sb        $zero, 0x4D($s0)
.Llevel_15_8007AAB0:
/* 49B4FE0 8007AAB0 01000324 */  addiu      $v1, $zero, 0x1
.Llevel_15_8007AAB4:
/* 49B4FE4 8007AAB4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 49B4FE8 8007AAB8 410003A2 */  sb         $v1, 0x41($s0)
/* 49B4FEC 8007AABC 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 49B4FF0 8007AAC0 4D0003A2 */  sb         $v1, 0x4D($s0)
.Llevel_15_8007AAC4:
/* 49B4FF4 8007AAC4 0780023C */  lui        $v0, %hi(D_8006E040)
/* 49B4FF8 8007AAC8 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 49B4FFC 8007AACC 21200002 */  addu       $a0, $s0, $zero
/* 49B5000 8007AAD0 00140200 */  sll        $v0, $v0, 16
/* 49B5004 8007AAD4 03150200 */  sra        $v0, $v0, 20
/* 49B5008 8007AAD8 80FF4224 */  addiu      $v0, $v0, -0x80
/* 49B500C 8007AADC 460002A2 */  sb         $v0, 0x46($s0)
/* 49B5010 8007AAE0 0780023C */  lui        $v0, %hi(D_8006E03E)
/* 49B5014 8007AAE4 3EE04294 */  lhu        $v0, %lo(D_8006E03E)($v0)
/* 49B5018 8007AAE8 0780053C */  lui        $a1, %hi(D_80070328)
/* 49B501C 8007AAEC 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 49B5020 8007AAF0 02110200 */  srl        $v0, $v0, 4
/* 49B5024 8007AAF4 450002A2 */  sb         $v0, 0x45($s0)
/* 49B5028 8007AAF8 0780023C */  lui        $v0, %hi(unk_ovlheader_800743A0)
/* 49B502C 8007AAFC A043428C */  lw         $v0, %lo(unk_ovlheader_800743A0)($v0)
/* 49B5030 8007AB00 00000000 */  nop
/* 49B5034 8007AB04 09F84000 */  jalr       $v0
/* 49B5038 8007AB08 00040624 */   addiu     $a2, $zero, 0x400
/* 49B503C 8007AB0C 54004010 */  beqz       $v0, .Llevel_15_8007AC60
/* 49B5040 8007AB10 02000224 */   addiu     $v0, $zero, 0x2
/* 49B5044 8007AB14 18EB0108 */  j          .Llevel_15_8007AC60
/* 49B5048 8007AB18 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_15_8007AB1C:
/* 49B504C 8007AB1C 21200002 */  addu       $a0, $s0, $zero
/* 49B5050 8007AB20 21280000 */  addu       $a1, $zero, $zero
/* 49B5054 8007AB24 AFEE000C */  jal        func_8003BABC
/* 49B5058 8007AB28 21300000 */   addu      $a2, $zero, $zero
/* 49B505C 8007AB2C 21880000 */  addu       $s1, $zero, $zero
/* 49B5060 8007AB30 0780123C */  lui        $s2, %hi(D_80070328 + 0x98)
/* 49B5064 8007AB34 C0035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x98)
/* 49B5068 8007AB38 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_15_8007AB3C:
/* 49B506C 8007AB3C 5E3C010C */  jal        func_8004F178
/* 49B5070 8007AB40 21284002 */   addu      $a1, $s2, $zero
/* 49B5074 8007AB44 1000A427 */  addiu      $a0, $sp, 0x10
/* 49B5078 8007AB48 443C010C */  jal        func_8004F110
/* 49B507C 8007AB4C 05000524 */   addiu     $a1, $zero, 0x5
/* 49B5080 8007AB50 9171010C */  jal        rand
/* 49B5084 8007AB54 01003126 */   addiu     $s1, $s1, 0x1
/* 49B5088 8007AB58 1000A38F */  lw         $v1, 0x10($sp)
/* 49B508C 8007AB5C FE004230 */  andi       $v0, $v0, 0xFE
/* 49B5090 8007AB60 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 49B5094 8007AB64 21186200 */  addu       $v1, $v1, $v0
/* 49B5098 8007AB68 9171010C */  jal        rand
/* 49B509C 8007AB6C 1000A3AF */   sw        $v1, 0x10($sp)
/* 49B50A0 8007AB70 1400A38F */  lw         $v1, 0x14($sp)
/* 49B50A4 8007AB74 FE004230 */  andi       $v0, $v0, 0xFE
/* 49B50A8 8007AB78 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 49B50AC 8007AB7C 21186200 */  addu       $v1, $v1, $v0
/* 49B50B0 8007AB80 9171010C */  jal        rand
/* 49B50B4 8007AB84 1400A3AF */   sw        $v1, 0x14($sp)
/* 49B50B8 8007AB88 01000424 */  addiu      $a0, $zero, 0x1
/* 49B50BC 8007AB8C 17000524 */  addiu      $a1, $zero, 0x17
/* 49B50C0 8007AB90 68FF4626 */  addiu      $a2, $s2, -0x98
/* 49B50C4 8007AB94 1800A38F */  lw         $v1, 0x18($sp)
/* 49B50C8 8007AB98 FE004230 */  andi       $v0, $v0, 0xFE
/* 49B50CC 8007AB9C 81FF6324 */  addiu      $v1, $v1, -0x7F
/* 49B50D0 8007ABA0 21186200 */  addu       $v1, $v1, $v0
/* 49B50D4 8007ABA4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 49B50D8 8007ABA8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 49B50DC 8007ABAC 1000A727 */  addiu      $a3, $sp, 0x10
/* 49B50E0 8007ABB0 09F84000 */  jalr       $v0
/* 49B50E4 8007ABB4 1800A3AF */   sw        $v1, 0x18($sp)
/* 49B50E8 8007ABB8 0800222A */  slti       $v0, $s1, 0x8
/* 49B50EC 8007ABBC DFFF4014 */  bnez       $v0, .Llevel_15_8007AB3C
/* 49B50F0 8007ABC0 1000A427 */   addiu     $a0, $sp, 0x10
/* 49B50F4 8007ABC4 0780033C */  lui        $v1, %hi(D_80070328 + 0x15C)
/* 49B50F8 8007ABC8 8404638C */  lw         $v1, %lo(D_80070328 + 0x15C)($v1)
/* 49B50FC 8007ABCC 4B000224 */  addiu      $v0, $zero, 0x4B
/* 49B5100 8007ABD0 03006004 */  bltz       $v1, .Llevel_15_8007ABE0
/* 49B5104 8007ABD4 B00042A6 */   sh        $v0, 0xB0($s2)
/* 49B5108 8007ABD8 F9EA0108 */  j          .Llevel_15_8007ABE4
/* 49B510C 8007ABDC 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_15_8007ABE0:
/* 49B5110 8007ABE0 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_15_8007ABE4:
/* 49B5114 8007ABE4 B20042A6 */  sh         $v0, 0xB2($s2)
/* 49B5118 8007ABE8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 49B511C 8007ABEC 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 49B5120 8007ABF0 3C000224 */  addiu      $v0, $zero, 0x3C
/* 49B5124 8007ABF4 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 49B5128 8007ABF8 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 49B512C 8007ABFC 000062AE */  sw         $v0, 0x0($s3)
/* 49B5130 8007AC00 03000224 */  addiu      $v0, $zero, 0x3
/* 49B5134 8007AC04 18EB0108 */  j          .Llevel_15_8007AC60
/* 49B5138 8007AC08 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_15_8007AC0C:
/* 49B513C 8007AC0C 69D6000C */  jal        func_800359A4
/* 49B5140 8007AC10 04000524 */   addiu     $a1, $zero, 0x4
/* 49B5144 8007AC14 12004010 */  beqz       $v0, .Llevel_15_8007AC60
/* 49B5148 8007AC18 00000000 */   nop
/* 49B514C 8007AC1C 0780023C */  lui        $v0, %hi(D_8006E040)
/* 49B5150 8007AC20 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 49B5154 8007AC24 00000000 */  nop
/* 49B5158 8007AC28 00140200 */  sll        $v0, $v0, 16
/* 49B515C 8007AC2C 03150200 */  sra        $v0, $v0, 20
/* 49B5160 8007AC30 80FF4224 */  addiu      $v0, $v0, -0x80
/* 49B5164 8007AC34 460002A2 */  sb         $v0, 0x46($s0)
/* 49B5168 8007AC38 0780033C */  lui        $v1, %hi(D_8006E03E)
/* 49B516C 8007AC3C 3EE06394 */  lhu        $v1, %lo(D_8006E03E)($v1)
/* 49B5170 8007AC40 3F000224 */  addiu      $v0, $zero, 0x3F
/* 49B5174 8007AC44 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 49B5178 8007AC48 10000224 */  addiu      $v0, $zero, 0x10
/* 49B517C 8007AC4C 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 49B5180 8007AC50 01000224 */  addiu      $v0, $zero, 0x1
/* 49B5184 8007AC54 480002A2 */  sb         $v0, 0x48($s0)
/* 49B5188 8007AC58 02190300 */  srl        $v1, $v1, 4
/* 49B518C 8007AC5C 450003A2 */  sb         $v1, 0x45($s0)
.Llevel_15_8007AC60:
/* 49B5190 8007AC60 3000BF8F */  lw         $ra, 0x30($sp)
/* 49B5194 8007AC64 2C00B38F */  lw         $s3, 0x2C($sp)
/* 49B5198 8007AC68 2800B28F */  lw         $s2, 0x28($sp)
/* 49B519C 8007AC6C 2400B18F */  lw         $s1, 0x24($sp)
/* 49B51A0 8007AC70 2000B08F */  lw         $s0, 0x20($sp)
/* 49B51A4 8007AC74 3800BD27 */  addiu      $sp, $sp, 0x38
/* 49B51A8 8007AC78 0800E003 */  jr         $ra
/* 49B51AC 8007AC7C 00000000 */   nop
.size func_level_15_8007A9A0, . - func_level_15_8007A9A0
