.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8008ABAC
/* 5AA70DC 8008ABAC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5AA70E0 8008ABB0 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 5AA70E4 8008ABB4 21988000 */  addu       $s3, $a0, $zero
/* 5AA70E8 8008ABB8 3000BFAF */  sw         $ra, 0x30($sp)
/* 5AA70EC 8008ABBC 2800B2AF */  sw         $s2, 0x28($sp)
/* 5AA70F0 8008ABC0 2400B1AF */  sw         $s1, 0x24($sp)
/* 5AA70F4 8008ABC4 2000B0AF */  sw         $s0, 0x20($sp)
/* 5AA70F8 8008ABC8 0000728E */  lw         $s2, 0x0($s3)
/* 5AA70FC 8008ABCC 00000000 */  nop
/* 5AA7100 8008ABD0 0000428E */  lw         $v0, 0x0($s2)
/* 5AA7104 8008ABD4 0780033C */  lui        $v1, %hi(D_8006D05C)
/* 5AA7108 8008ABD8 5CD0638C */  lw         $v1, %lo(D_8006D05C)($v1)
/* 5AA710C 8008ABDC 80100200 */  sll        $v0, $v0, 2
/* 5AA7110 8008ABE0 21104300 */  addu       $v0, $v0, $v1
/* 5AA7114 8008ABE4 0000438C */  lw         $v1, 0x0($v0)
/* 5AA7118 8008ABE8 00000000 */  nop
/* 5AA711C 8008ABEC 0400628C */  lw         $v0, 0x4($v1)
/* 5AA7120 8008ABF0 00000000 */  nop
/* 5AA7124 8008ABF4 4D004010 */  beqz       $v0, .Llevel_23_8008AD2C
/* 5AA7128 8008ABF8 21800000 */   addu      $s0, $zero, $zero
/* 5AA712C 8008ABFC FC000524 */  addiu      $a1, $zero, 0xFC
/* 5AA7130 8008AC00 21300000 */  addu       $a2, $zero, $zero
/* 5AA7134 8008AC04 040060AC */  sw         $zero, 0x4($v1)
/* 5AA7138 8008AC08 0400448E */  lw         $a0, 0x4($s2)
/* 5AA713C 8008AC0C B687000C */  jal        func_80021ED8
/* 5AA7140 8008AC10 21880000 */   addu      $s1, $zero, $zero
.Llevel_23_8008AC14:
/* 5AA7144 8008AC14 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5AA7148 8008AC18 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5AA714C 8008AC1C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5AA7150 8008AC20 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5AA7154 8008AC24 00000000 */  nop
/* 5AA7158 8008AC28 23104300 */  subu       $v0, $v0, $v1
/* 5AA715C 8008AC2C 15004228 */  slti       $v0, $v0, 0x15
/* 5AA7160 8008AC30 37004014 */  bnez       $v0, .Llevel_23_8008AD10
/* 5AA7164 8008AC34 08000424 */   addiu     $a0, $zero, 0x8
/* 5AA7168 8008AC38 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5AA716C 8008AC3C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5AA7170 8008AC40 00000000 */  nop
/* 5AA7174 8008AC44 09F84000 */  jalr       $v0
/* 5AA7178 8008AC48 21286002 */   addu      $a1, $s3, $zero
/* 5AA717C 8008AC4C 21804000 */  addu       $s0, $v0, $zero
/* 5AA7180 8008AC50 2B000012 */  beqz       $s0, .Llevel_23_8008AD00
/* 5AA7184 8008AC54 5555033C */   lui       $v1, (0x55555556 >> 16)
/* 5AA7188 8008AC58 0000028E */  lw         $v0, 0x0($s0)
/* 5AA718C 8008AC5C 00000000 */  nop
/* 5AA7190 8008AC60 120040A4 */  sh         $zero, 0x12($v0)
/* 5AA7194 8008AC64 2C000224 */  addiu      $v0, $zero, 0x2C
/* 5AA7198 8008AC68 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5AA719C 8008AC6C 3F000224 */  addiu      $v0, $zero, 0x3F
/* 5AA71A0 8008AC70 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 5AA71A4 8008AC74 FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA71A8 8008AC78 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 5AA71AC 8008AC7C 46006292 */  lbu        $v0, 0x46($s3)
/* 5AA71B0 8008AC80 00000000 */  nop
/* 5AA71B4 8008AC84 460002A2 */  sb         $v0, 0x46($s0)
/* 5AA71B8 8008AC88 1000A0AF */  sw         $zero, 0x10($sp)
/* 5AA71BC 8008AC8C 0C00428E */  lw         $v0, 0xC($s2)
/* 5AA71C0 8008AC90 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 5AA71C4 8008AC94 18004300 */  mult       $v0, $v1
/* 5AA71C8 8008AC98 43181100 */  sra        $v1, $s1, 1
/* 5AA71CC 8008AC9C 10380000 */  mfhi       $a3
/* 5AA71D0 8008ACA0 C3170200 */  sra        $v0, $v0, 31
/* 5AA71D4 8008ACA4 2310E200 */  subu       $v0, $a3, $v0
/* 5AA71D8 8008ACA8 18006200 */  mult       $v1, $v0
/* 5AA71DC 8008ACAC C2171100 */  srl        $v0, $s1, 31
/* 5AA71E0 8008ACB0 21102202 */  addu       $v0, $s1, $v0
/* 5AA71E4 8008ACB4 43180200 */  sra        $v1, $v0, 1
/* 5AA71E8 8008ACB8 40180300 */  sll        $v1, $v1, 1
/* 5AA71EC 8008ACBC 12380000 */  mflo       $a3
/* 5AA71F0 8008ACC0 1800A7AF */  sw         $a3, 0x18($sp)
/* 5AA71F4 8008ACC4 0800428E */  lw         $v0, 0x8($s2)
/* 5AA71F8 8008ACC8 23182302 */  subu       $v1, $s1, $v1
/* 5AA71FC 8008ACCC 18006200 */  mult       $v1, $v0
/* 5AA7200 8008ACD0 43100200 */  sra        $v0, $v0, 1
/* 5AA7204 8008ACD4 12380000 */  mflo       $a3
/* 5AA7208 8008ACD8 2310E200 */  subu       $v0, $a3, $v0
/* 5AA720C 8008ACDC 9171010C */  jal        rand
/* 5AA7210 8008ACE0 1400A2AF */   sw        $v0, 0x14($sp)
/* 5AA7214 8008ACE4 0C000426 */  addiu      $a0, $s0, 0xC
/* 5AA7218 8008ACE8 21288000 */  addu       $a1, $a0, $zero
/* 5AA721C 8008ACEC 1000A627 */  addiu      $a2, $sp, 0x10
/* 5AA7220 8008ACF0 01004230 */  andi       $v0, $v0, 0x1
/* 5AA7224 8008ACF4 01004224 */  addiu      $v0, $v0, 0x1
/* 5AA7228 8008ACF8 653C010C */  jal        func_8004F194
/* 5AA722C 8008ACFC 3C0002A2 */   sb        $v0, 0x3C($s0)
.Llevel_23_8008AD00:
/* 5AA7230 8008AD00 01003126 */  addiu      $s1, $s1, 0x1
/* 5AA7234 8008AD04 0600222A */  slti       $v0, $s1, 0x6
/* 5AA7238 8008AD08 C2FF4014 */  bnez       $v0, .Llevel_23_8008AC14
/* 5AA723C 8008AD0C 00000000 */   nop
.Llevel_23_8008AD10:
/* 5AA7240 8008AD10 04000012 */  beqz       $s0, .Llevel_23_8008AD24
/* 5AA7244 8008AD14 21200002 */   addu      $a0, $s0, $zero
/* 5AA7248 8008AD18 21280000 */  addu       $a1, $zero, $zero
/* 5AA724C 8008AD1C AFEE000C */  jal        func_8003BABC
/* 5AA7250 8008AD20 21300000 */   addu      $a2, $zero, $zero
.Llevel_23_8008AD24:
/* 5AA7254 8008AD24 C656010C */  jal        func_80055B18
/* 5AA7258 8008AD28 21206002 */   addu      $a0, $s3, $zero
.Llevel_23_8008AD2C:
/* 5AA725C 8008AD2C 3000BF8F */  lw         $ra, 0x30($sp)
/* 5AA7260 8008AD30 2C00B38F */  lw         $s3, 0x2C($sp)
/* 5AA7264 8008AD34 2800B28F */  lw         $s2, 0x28($sp)
/* 5AA7268 8008AD38 2400B18F */  lw         $s1, 0x24($sp)
/* 5AA726C 8008AD3C 2000B08F */  lw         $s0, 0x20($sp)
/* 5AA7270 8008AD40 3800BD27 */  addiu      $sp, $sp, 0x38
/* 5AA7274 8008AD44 0800E003 */  jr         $ra
/* 5AA7278 8008AD48 00000000 */   nop
.size func_level_23_8008ABAC, . - func_level_23_8008ABAC
