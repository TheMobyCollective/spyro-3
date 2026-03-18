.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_8007CA54
/* 49B6F84 8007CA54 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 49B6F88 8007CA58 4400B1AF */  sw         $s1, 0x44($sp)
/* 49B6F8C 8007CA5C 21888000 */  addu       $s1, $a0, $zero
/* 49B6F90 8007CA60 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 49B6F94 8007CA64 4800B2AF */  sw         $s2, 0x48($sp)
/* 49B6F98 8007CA68 4000B0AF */  sw         $s0, 0x40($sp)
/* 49B6F9C 8007CA6C 48002392 */  lbu        $v1, 0x48($s1)
/* 49B6FA0 8007CA70 00000000 */  nop
/* 49B6FA4 8007CA74 05006010 */  beqz       $v1, .Llevel_15_8007CA8C
/* 49B6FA8 8007CA78 01000224 */   addiu     $v0, $zero, 0x1
/* 49B6FAC 8007CA7C 4A006210 */  beq        $v1, $v0, .Llevel_15_8007CBA8
/* 49B6FB0 8007CA80 00000000 */   nop
/* 49B6FB4 8007CA84 8EF30108 */  j          .Llevel_15_8007CE38
/* 49B6FB8 8007CA88 00000000 */   nop
.Llevel_15_8007CA8C:
/* 49B6FBC 8007CA8C 49002392 */  lbu        $v1, 0x49($s1)
/* 49B6FC0 8007CA90 0000308E */  lw         $s0, 0x0($s1)
/* 49B6FC4 8007CA94 05006010 */  beqz       $v1, .Llevel_15_8007CAAC
/* 49B6FC8 8007CA98 00000000 */   nop
/* 49B6FCC 8007CA9C 21006210 */  beq        $v1, $v0, .Llevel_15_8007CB24
/* 49B6FD0 8007CAA0 21202002 */   addu      $a0, $s1, $zero
/* 49B6FD4 8007CAA4 8EF30108 */  j          .Llevel_15_8007CE38
/* 49B6FD8 8007CAA8 00000000 */   nop
.Llevel_15_8007CAAC:
/* 49B6FDC 8007CAAC 0780033C */  lui        $v1, %hi(D_8006FA3C)
/* 49B6FE0 8007CAB0 3CFA638C */  lw         $v1, %lo(D_8006FA3C)($v1)
/* 49B6FE4 8007CAB4 02000224 */  addiu      $v0, $zero, 0x2
/* 49B6FE8 8007CAB8 8A006210 */  beq        $v1, $v0, .Llevel_15_8007CCE4
/* 49B6FEC 8007CABC 00000000 */   nop
/* 49B6FF0 8007CAC0 080000AE */  sw         $zero, 0x8($s0)
.Llevel_15_8007CAC4:
/* 49B6FF4 8007CAC4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 49B6FF8 8007CAC8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 49B6FFC 8007CACC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 49B7000 8007CAD0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 49B7004 8007CAD4 00000000 */  nop
/* 49B7008 8007CAD8 23104300 */  subu       $v0, $v0, $v1
/* 49B700C 8007CADC 15004228 */  slti       $v0, $v0, 0x15
/* 49B7010 8007CAE0 0E004014 */  bnez       $v0, .Llevel_15_8007CB1C
/* 49B7014 8007CAE4 01000224 */   addiu     $v0, $zero, 0x1
/* 49B7018 8007CAE8 36002486 */  lh         $a0, 0x36($s1)
/* 49B701C 8007CAEC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 49B7020 8007CAF0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 49B7024 8007CAF4 00000000 */  nop
/* 49B7028 8007CAF8 09F84000 */  jalr       $v0
/* 49B702C 8007CAFC 21282002 */   addu      $a1, $s1, $zero
/* 49B7030 8007CB00 0800028E */  lw         $v0, 0x8($s0)
/* 49B7034 8007CB04 00000000 */  nop
/* 49B7038 8007CB08 01004224 */  addiu      $v0, $v0, 0x1
/* 49B703C 8007CB0C 080002AE */  sw         $v0, 0x8($s0)
/* 49B7040 8007CB10 0C004228 */  slti       $v0, $v0, 0xC
/* 49B7044 8007CB14 EBFF4014 */  bnez       $v0, .Llevel_15_8007CAC4
/* 49B7048 8007CB18 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_15_8007CB1C:
/* 49B704C 8007CB1C 8EF30108 */  j          .Llevel_15_8007CE38
/* 49B7050 8007CB20 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_15_8007CB24:
/* 49B7054 8007CB24 21280000 */  addu       $a1, $zero, $zero
/* 49B7058 8007CB28 0C001226 */  addiu      $s2, $s0, 0xC
/* 49B705C 8007CB2C C557010C */  jal        func_80055F14
/* 49B7060 8007CB30 21304002 */   addu      $a2, $s2, $zero
/* 49B7064 8007CB34 1800228E */  lw         $v0, 0x18($s1)
/* 49B7068 8007CB38 00000000 */  nop
/* 49B706C 8007CB3C BE004010 */  beqz       $v0, .Llevel_15_8007CE38
/* 49B7070 8007CB40 21202002 */   addu      $a0, $s1, $zero
/* 49B7074 8007CB44 21280000 */  addu       $a1, $zero, $zero
/* 49B7078 8007CB48 AFEE000C */  jal        func_8003BABC
/* 49B707C 8007CB4C 21300000 */   addu      $a2, $zero, $zero
/* 49B7080 8007CB50 21202002 */  addu       $a0, $s1, $zero
/* 49B7084 8007CB54 10000524 */  addiu      $a1, $zero, 0x10
/* 49B7088 8007CB58 21304002 */  addu       $a2, $s2, $zero
/* 49B708C 8007CB5C 9ADA000C */  jal        func_80036A68
/* 49B7090 8007CB60 21380000 */   addu      $a3, $zero, $zero
/* 49B7094 8007CB64 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 49B7098 8007CB68 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 49B709C 8007CB6C 00000000 */  nop
/* 49B70A0 8007CB70 09F84000 */  jalr       $v0
/* 49B70A4 8007CB74 21202002 */   addu      $a0, $s1, $zero
/* 49B70A8 8007CB78 03000424 */  addiu      $a0, $zero, 0x3
/* 49B70AC 8007CB7C 64020524 */  addiu      $a1, $zero, 0x264
/* 49B70B0 8007CB80 1000A0AF */  sw         $zero, 0x10($sp)
/* 49B70B4 8007CB84 1400A0AF */  sw         $zero, 0x14($sp)
/* 49B70B8 8007CB88 0400078E */  lw         $a3, 0x4($s0)
/* 49B70BC 8007CB8C 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 49B70C0 8007CB90 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 49B70C4 8007CB94 00000000 */  nop
/* 49B70C8 8007CB98 09F84000 */  jalr       $v0
/* 49B70CC 8007CB9C 21302002 */   addu      $a2, $s1, $zero
/* 49B70D0 8007CBA0 39F30108 */  j          .Llevel_15_8007CCE4
/* 49B70D4 8007CBA4 00000000 */   nop
.Llevel_15_8007CBA8:
/* 49B70D8 8007CBA8 49002292 */  lbu        $v0, 0x49($s1)
/* 49B70DC 8007CBAC 0000328E */  lw         $s2, 0x0($s1)
/* 49B70E0 8007CBB0 05004010 */  beqz       $v0, .Llevel_15_8007CBC8
/* 49B70E4 8007CBB4 00000000 */   nop
/* 49B70E8 8007CBB8 46004310 */  beq        $v0, $v1, .Llevel_15_8007CCD4
/* 49B70EC 8007CBBC 10004426 */   addiu     $a0, $s2, 0x10
/* 49B70F0 8007CBC0 8EF30108 */  j          .Llevel_15_8007CE38
/* 49B70F4 8007CBC4 00000000 */   nop
.Llevel_15_8007CBC8:
/* 49B70F8 8007CBC8 0000458E */  lw         $a1, 0x0($s2)
/* 49B70FC 8007CBCC 00000000 */  nop
/* 49B7100 8007CBD0 4800A290 */  lbu        $v0, 0x48($a1)
/* 49B7104 8007CBD4 00000000 */  nop
/* 49B7108 8007CBD8 80004230 */  andi       $v0, $v0, 0x80
/* 49B710C 8007CBDC 07004014 */  bnez       $v0, .Llevel_15_8007CBFC
/* 49B7110 8007CBE0 04005026 */   addiu     $s0, $s2, 0x4
/* 49B7114 8007CBE4 0000A58C */  lw         $a1, 0x0($a1)
/* 49B7118 8007CBE8 0C002426 */  addiu      $a0, $s1, 0xC
/* 49B711C 8007CBEC 5E3C010C */  jal        func_8004F178
/* 49B7120 8007CBF0 0C00A524 */   addiu     $a1, $a1, 0xC
/* 49B7124 8007CBF4 8EF30108 */  j          .Llevel_15_8007CE38
/* 49B7128 8007CBF8 00000000 */   nop
.Llevel_15_8007CBFC:
/* 49B712C 8007CBFC 46002292 */  lbu        $v0, 0x46($s1)
/* 49B7130 8007CC00 45002392 */  lbu        $v1, 0x45($s1)
/* 49B7134 8007CC04 40100200 */  sll        $v0, $v0, 1
/* 49B7138 8007CC08 40180300 */  sll        $v1, $v1, 1
/* 49B713C 8007CC0C 0680013C */  lui        $at, %hi(D_80065920)
/* 49B7140 8007CC10 21082200 */  addu       $at, $at, $v0
/* 49B7144 8007CC14 20592484 */  lh         $a0, %lo(D_80065920)($at)
/* 49B7148 8007CC18 0680013C */  lui        $at, %hi(D_80065920)
/* 49B714C 8007CC1C 21082300 */  addu       $at, $at, $v1
/* 49B7150 8007CC20 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 49B7154 8007CC24 00000000 */  nop
/* 49B7158 8007CC28 18008200 */  mult       $a0, $v0
/* 49B715C 8007CC2C 12400000 */  mflo       $t0
/* 49B7160 8007CC30 03130800 */  sra        $v0, $t0, 12
/* 49B7164 8007CC34 040042AE */  sw         $v0, 0x4($s2)
/* 49B7168 8007CC38 46002292 */  lbu        $v0, 0x46($s1)
/* 49B716C 8007CC3C 45002392 */  lbu        $v1, 0x45($s1)
/* 49B7170 8007CC40 40100200 */  sll        $v0, $v0, 1
/* 49B7174 8007CC44 40180300 */  sll        $v1, $v1, 1
/* 49B7178 8007CC48 0680013C */  lui        $at, %hi(D_800658A0)
/* 49B717C 8007CC4C 21082200 */  addu       $at, $at, $v0
/* 49B7180 8007CC50 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 49B7184 8007CC54 0680013C */  lui        $at, %hi(D_80065920)
/* 49B7188 8007CC58 21082300 */  addu       $at, $at, $v1
/* 49B718C 8007CC5C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 49B7190 8007CC60 00000000 */  nop
/* 49B7194 8007CC64 18008200 */  mult       $a0, $v0
/* 49B7198 8007CC68 21280002 */  addu       $a1, $s0, $zero
/* 49B719C 8007CC6C 12400000 */  mflo       $t0
/* 49B71A0 8007CC70 03130800 */  sra        $v0, $t0, 12
/* 49B71A4 8007CC74 080042AE */  sw         $v0, 0x8($s2)
/* 49B71A8 8007CC78 45002292 */  lbu        $v0, 0x45($s1)
/* 49B71AC 8007CC7C 0780063C */  lui        $a2, %hi(D_80070328 + 0x98)
/* 49B71B0 8007CC80 C003C624 */  addiu      $a2, $a2, %lo(D_80070328 + 0x98)
/* 49B71B4 8007CC84 40100200 */  sll        $v0, $v0, 1
/* 49B71B8 8007CC88 0680013C */  lui        $at, %hi(D_800658A0)
/* 49B71BC 8007CC8C 21082200 */  addu       $at, $at, $v0
/* 49B71C0 8007CC90 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 49B71C4 8007CC94 21200002 */  addu       $a0, $s0, $zero
/* 49B71C8 8007CC98 00084224 */  addiu      $v0, $v0, 0x800
/* 49B71CC 8007CC9C 653C010C */  jal        func_8004F194
/* 49B71D0 8007CCA0 0C0042AE */   sw        $v0, 0xC($s2)
/* 49B71D4 8007CCA4 21200002 */  addu       $a0, $s0, $zero
/* 49B71D8 8007CCA8 443C010C */  jal        func_8004F110
/* 49B71DC 8007CCAC 05000524 */   addiu     $a1, $zero, 0x5
/* 49B71E0 8007CCB0 9171010C */  jal        rand
/* 49B71E4 8007CCB4 00000000 */   nop
/* 49B71E8 8007CCB8 1F004230 */  andi       $v0, $v0, 0x1F
/* 49B71EC 8007CCBC 78000324 */  addiu      $v1, $zero, 0x78
/* 49B71F0 8007CCC0 23186200 */  subu       $v1, $v1, $v0
/* 49B71F4 8007CCC4 01000224 */  addiu      $v0, $zero, 0x1
/* 49B71F8 8007CCC8 100043AE */  sw         $v1, 0x10($s2)
/* 49B71FC 8007CCCC 490022A2 */  sb         $v0, 0x49($s1)
/* 49B7200 8007CCD0 10004426 */  addiu      $a0, $s2, 0x10
.Llevel_15_8007CCD4:
/* 49B7204 8007CCD4 69D6000C */  jal        func_800359A4
/* 49B7208 8007CCD8 04000524 */   addiu     $a1, $zero, 0x4
/* 49B720C 8007CCDC 05004010 */  beqz       $v0, .Llevel_15_8007CCF4
/* 49B7210 8007CCE0 0C002426 */   addiu     $a0, $s1, 0xC
.Llevel_15_8007CCE4:
/* 49B7214 8007CCE4 C656010C */  jal        func_80055B18
/* 49B7218 8007CCE8 21202002 */   addu      $a0, $s1, $zero
/* 49B721C 8007CCEC 8EF30108 */  j          .Llevel_15_8007CE38
/* 49B7220 8007CCF0 00000000 */   nop
.Llevel_15_8007CCF4:
/* 49B7224 8007CCF4 21288000 */  addu       $a1, $a0, $zero
/* 49B7228 8007CCF8 04005026 */  addiu      $s0, $s2, 0x4
/* 49B722C 8007CCFC 653C010C */  jal        func_8004F194
/* 49B7230 8007CD00 21300002 */   addu      $a2, $s0, $zero
/* 49B7234 8007CD04 0780053C */  lui        $a1, %hi(D_80070328 + 0x98)
/* 49B7238 8007CD08 C003A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0x98)
/* 49B723C 8007CD0C 5E3C010C */  jal        func_8004F178
/* 49B7240 8007CD10 1800A427 */   addiu     $a0, $sp, 0x18
/* 49B7244 8007CD14 1800A427 */  addiu      $a0, $sp, 0x18
/* 49B7248 8007CD18 443C010C */  jal        func_8004F110
/* 49B724C 8007CD1C 06000524 */   addiu     $a1, $zero, 0x6
/* 49B7250 8007CD20 E8FF0224 */  addiu      $v0, $zero, -0x18
/* 49B7254 8007CD24 2000A2AF */  sw         $v0, 0x20($sp)
/* 49B7258 8007CD28 1800A427 */  addiu      $a0, $sp, 0x18
/* 49B725C 8007CD2C 21288000 */  addu       $a1, $a0, $zero
/* 49B7260 8007CD30 723C010C */  jal        func_8004F1C8
/* 49B7264 8007CD34 21300002 */   addu      $a2, $s0, $zero
/* 49B7268 8007CD38 1800A427 */  addiu      $a0, $sp, 0x18
/* 49B726C 8007CD3C 7A3B010C */  jal        func_8004EDE8
/* 49B7270 8007CD40 01000524 */   addiu     $a1, $zero, 0x1
/* 49B7274 8007CD44 21284000 */  addu       $a1, $v0, $zero
/* 49B7278 8007CD48 0700A228 */  slti       $v0, $a1, 0x7
/* 49B727C 8007CD4C 05004014 */  bnez       $v0, .Llevel_15_8007CD64
/* 49B7280 8007CD50 21200002 */   addu      $a0, $s0, $zero
/* 49B7284 8007CD54 1800A427 */  addiu      $a0, $sp, 0x18
/* 49B7288 8007CD58 233C010C */  jal        func_8004F08C
/* 49B728C 8007CD5C 06000624 */   addiu     $a2, $zero, 0x6
/* 49B7290 8007CD60 21200002 */  addu       $a0, $s0, $zero
.Llevel_15_8007CD64:
/* 49B7294 8007CD64 21288000 */  addu       $a1, $a0, $zero
/* 49B7298 8007CD68 653C010C */  jal        func_8004F194
/* 49B729C 8007CD6C 1800A627 */   addiu     $a2, $sp, 0x18
/* 49B72A0 8007CD70 0780023C */  lui        $v0, %hi(D_8006E040)
/* 49B72A4 8007CD74 40E04294 */  lhu        $v0, %lo(D_8006E040)($v0)
/* 49B72A8 8007CD78 46002392 */  lbu        $v1, 0x46($s1)
/* 49B72AC 8007CD7C 00140200 */  sll        $v0, $v0, 16
/* 49B72B0 8007CD80 03150200 */  sra        $v0, $v0, 20
/* 49B72B4 8007CD84 40004524 */  addiu      $a1, $v0, 0x40
/* 49B72B8 8007CD88 2310A300 */  subu       $v0, $a1, $v1
/* 49B72BC 8007CD8C FF004530 */  andi       $a1, $v0, 0xFF
/* 49B72C0 8007CD90 8100A228 */  slti       $v0, $a1, 0x81
/* 49B72C4 8007CD94 03004014 */  bnez       $v0, .Llevel_15_8007CDA4
/* 49B72C8 8007CD98 FCFFA228 */   slti      $v0, $a1, -0x4
/* 49B72CC 8007CD9C 00FFA524 */  addiu      $a1, $a1, -0x100
/* 49B72D0 8007CDA0 FCFFA228 */  slti       $v0, $a1, -0x4
.Llevel_15_8007CDA4:
/* 49B72D4 8007CDA4 03004010 */  beqz       $v0, .Llevel_15_8007CDB4
/* 49B72D8 8007CDA8 0500A228 */   slti      $v0, $a1, 0x5
/* 49B72DC 8007CDAC FCFF0524 */  addiu      $a1, $zero, -0x4
/* 49B72E0 8007CDB0 0500A228 */  slti       $v0, $a1, 0x5
.Llevel_15_8007CDB4:
/* 49B72E4 8007CDB4 03004014 */  bnez       $v0, .Llevel_15_8007CDC4
/* 49B72E8 8007CDB8 21106500 */   addu      $v0, $v1, $a1
/* 49B72EC 8007CDBC 04000524 */  addiu      $a1, $zero, 0x4
/* 49B72F0 8007CDC0 21106500 */  addu       $v0, $v1, $a1
.Llevel_15_8007CDC4:
/* 49B72F4 8007CDC4 460022A2 */  sb         $v0, 0x46($s1)
/* 49B72F8 8007CDC8 0780023C */  lui        $v0, %hi(D_8006C644)
/* 49B72FC 8007CDCC 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 49B7300 8007CDD0 00000000 */  nop
/* 49B7304 8007CDD4 80100200 */  sll        $v0, $v0, 2
/* 49B7308 8007CDD8 FC014230 */  andi       $v0, $v0, 0x1FC
/* 49B730C 8007CDDC 0680013C */  lui        $at, %hi(D_80065920)
/* 49B7310 8007CDE0 21082200 */  addu       $at, $at, $v0
/* 49B7314 8007CDE4 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 49B7318 8007CDE8 45002392 */  lbu        $v1, 0x45($s1)
/* 49B731C 8007CDEC 00140200 */  sll        $v0, $v0, 16
/* 49B7320 8007CDF0 03160200 */  sra        $v0, $v0, 24
/* 49B7324 8007CDF4 40004524 */  addiu      $a1, $v0, 0x40
/* 49B7328 8007CDF8 2310A300 */  subu       $v0, $a1, $v1
/* 49B732C 8007CDFC FF004530 */  andi       $a1, $v0, 0xFF
/* 49B7330 8007CE00 8100A228 */  slti       $v0, $a1, 0x81
/* 49B7334 8007CE04 03004014 */  bnez       $v0, .Llevel_15_8007CE14
/* 49B7338 8007CE08 FCFFA228 */   slti      $v0, $a1, -0x4
/* 49B733C 8007CE0C 00FFA524 */  addiu      $a1, $a1, -0x100
/* 49B7340 8007CE10 FCFFA228 */  slti       $v0, $a1, -0x4
.Llevel_15_8007CE14:
/* 49B7344 8007CE14 03004010 */  beqz       $v0, .Llevel_15_8007CE24
/* 49B7348 8007CE18 0500A228 */   slti      $v0, $a1, 0x5
/* 49B734C 8007CE1C FCFF0524 */  addiu      $a1, $zero, -0x4
/* 49B7350 8007CE20 0500A228 */  slti       $v0, $a1, 0x5
.Llevel_15_8007CE24:
/* 49B7354 8007CE24 03004014 */  bnez       $v0, .Llevel_15_8007CE34
/* 49B7358 8007CE28 21106500 */   addu      $v0, $v1, $a1
/* 49B735C 8007CE2C 04000524 */  addiu      $a1, $zero, 0x4
/* 49B7360 8007CE30 21106500 */  addu       $v0, $v1, $a1
.Llevel_15_8007CE34:
/* 49B7364 8007CE34 450022A2 */  sb         $v0, 0x45($s1)
.Llevel_15_8007CE38:
/* 49B7368 8007CE38 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 49B736C 8007CE3C 4800B28F */  lw         $s2, 0x48($sp)
/* 49B7370 8007CE40 4400B18F */  lw         $s1, 0x44($sp)
/* 49B7374 8007CE44 4000B08F */  lw         $s0, 0x40($sp)
/* 49B7378 8007CE48 5000BD27 */  addiu      $sp, $sp, 0x50
/* 49B737C 8007CE4C 0800E003 */  jr         $ra
/* 49B7380 8007CE50 00000000 */   nop
.size func_level_15_8007CA54, . - func_level_15_8007CA54
