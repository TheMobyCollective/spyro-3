.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_729_level_32
/* 6DF0ED0 800899A0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6DF0ED4 800899A4 2000B4AF */  sw         $s4, 0x20($sp)
/* 6DF0ED8 800899A8 21A08000 */  addu       $s4, $a0, $zero
/* 6DF0EDC 800899AC 0A000324 */  addiu      $v1, $zero, 0xA
/* 6DF0EE0 800899B0 3400BFAF */  sw         $ra, 0x34($sp)
/* 6DF0EE4 800899B4 3000BEAF */  sw         $fp, 0x30($sp)
/* 6DF0EE8 800899B8 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 6DF0EEC 800899BC 2800B6AF */  sw         $s6, 0x28($sp)
/* 6DF0EF0 800899C0 2400B5AF */  sw         $s5, 0x24($sp)
/* 6DF0EF4 800899C4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 6DF0EF8 800899C8 1800B2AF */  sw         $s2, 0x18($sp)
/* 6DF0EFC 800899CC 1400B1AF */  sw         $s1, 0x14($sp)
/* 6DF0F00 800899D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 6DF0F04 800899D4 48008292 */  lbu        $v0, 0x48($s4)
/* 6DF0F08 800899D8 0000968E */  lw         $s6, 0x0($s4)
/* 6DF0F0C 800899DC 26004314 */  bne        $v0, $v1, .Llevel_32_80089A78
/* 6DF0F10 800899E0 21300000 */   addu      $a2, $zero, $zero
/* 6DF0F14 800899E4 0780103C */  lui        $s0, %hi(D_80070328)
/* 6DF0F18 800899E8 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 6DF0F1C 800899EC 21200002 */  addu       $a0, $s0, $zero
/* 6DF0F20 800899F0 4000C526 */  addiu      $a1, $s6, 0x40
/* 6DF0F24 800899F4 88D8000C */  jal        func_80036220
/* 6DF0F28 800899F8 21380000 */   addu      $a3, $zero, $zero
/* 6DF0F2C 800899FC 08004014 */  bnez       $v0, .Llevel_32_80089A20
/* 6DF0F30 80089A00 21208002 */   addu      $a0, $s4, $zero
/* 6DF0F34 80089A04 21200002 */  addu       $a0, $s0, $zero
/* 6DF0F38 80089A08 5800C526 */  addiu      $a1, $s6, 0x58
/* 6DF0F3C 80089A0C 21300000 */  addu       $a2, $zero, $zero
/* 6DF0F40 80089A10 88D8000C */  jal        func_80036220
/* 6DF0F44 80089A14 21380000 */   addu      $a3, $zero, $zero
/* 6DF0F48 80089A18 E4004010 */  beqz       $v0, .Llevel_32_80089DAC
/* 6DF0F4C 80089A1C 21208002 */   addu      $a0, $s4, $zero
.Llevel_32_80089A20:
/* 6DF0F50 80089A20 01000524 */  addiu      $a1, $zero, 0x1
/* 6DF0F54 80089A24 01000324 */  addiu      $v1, $zero, 0x1
/* 6DF0F58 80089A28 50000224 */  addiu      $v0, $zero, 0x50
/* 6DF0F5C 80089A2C 410083A2 */  sb         $v1, 0x41($s4)
/* 6DF0F60 80089A30 4C0082A2 */  sb         $v0, 0x4C($s4)
/* 6DF0F64 80089A34 4957010C */  jal        func_80055D24
/* 6DF0F68 80089A38 4D0083A2 */   sb        $v1, 0x4D($s4)
/* 6DF0F6C 80089A3C 3C00D026 */  addiu      $s0, $s6, 0x3C
/* 6DF0F70 80089A40 21200002 */  addu       $a0, $s0, $zero
/* 6DF0F74 80089A44 04000524 */  addiu      $a1, $zero, 0x4
/* 6DF0F78 80089A48 0780063C */  lui        $a2, %hi(D_8006D088)
/* 6DF0F7C 80089A4C 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 6DF0F80 80089A50 46000224 */  addiu      $v0, $zero, 0x46
/* 6DF0F84 80089A54 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 6DF0F88 80089A58 EDED000C */  jal        func_8003B7B4
/* 6DF0F8C 80089A5C 3C00C0AE */   sw        $zero, 0x3C($s6)
/* 6DF0F90 80089A60 21200002 */  addu       $a0, $s0, $zero
/* 6DF0F94 80089A64 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 6DF0F98 80089A68 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 6DF0F9C 80089A6C EDED000C */  jal        func_8003B7B4
/* 6DF0FA0 80089A70 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF0FA4 80089A74 480080A2 */  sb         $zero, 0x48($s4)
.Llevel_32_80089A78:
/* 6DF0FA8 80089A78 1800828E */  lw         $v0, 0x18($s4)
/* 6DF0FAC 80089A7C 0300033C */  lui        $v1, (0x30000 >> 16)
/* 6DF0FB0 80089A80 24104300 */  and        $v0, $v0, $v1
/* 6DF0FB4 80089A84 9A004010 */  beqz       $v0, .Llevel_32_80089CF0
/* 6DF0FB8 80089A88 00000000 */   nop
/* 6DF0FBC 80089A8C 48008292 */  lbu        $v0, 0x48($s4)
/* 6DF0FC0 80089A90 00000000 */  nop
/* 6DF0FC4 80089A94 96004014 */  bnez       $v0, .Llevel_32_80089CF0
/* 6DF0FC8 80089A98 21208002 */   addu      $a0, $s4, $zero
/* 6DF0FCC 80089A9C 21280000 */  addu       $a1, $zero, $zero
/* 6DF0FD0 80089AA0 AFEE000C */  jal        func_8003BABC
/* 6DF0FD4 80089AA4 01000624 */   addiu     $a2, $zero, 0x1
/* 6DF0FD8 80089AA8 21208002 */  addu       $a0, $s4, $zero
/* 6DF0FDC 80089AAC 4957010C */  jal        func_80055D24
/* 6DF0FE0 80089AB0 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF0FE4 80089AB4 21A80000 */  addu       $s5, $zero, $zero
/* 6DF0FE8 80089AB8 5555173C */  lui        $s7, (0x55555556 >> 16)
/* 6DF0FEC 80089ABC 5655F736 */  ori        $s7, $s7, (0x55555556 & 0xFFFF)
/* 6DF0FF0 80089AC0 01001E24 */  addiu      $fp, $zero, 0x1
.Llevel_32_80089AC4:
/* 6DF0FF4 80089AC4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DF0FF8 80089AC8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DF0FFC 80089ACC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DF1000 80089AD0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DF1004 80089AD4 00000000 */  nop
/* 6DF1008 80089AD8 23104300 */  subu       $v0, $v0, $v1
/* 6DF100C 80089ADC 15004228 */  slti       $v0, $v0, 0x15
/* 6DF1010 80089AE0 75004014 */  bnez       $v0, .Llevel_32_80089CB8
/* 6DF1014 80089AE4 DA020424 */   addiu     $a0, $zero, 0x2DA
/* 6DF1018 80089AE8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DF101C 80089AEC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DF1020 80089AF0 00000000 */  nop
/* 6DF1024 80089AF4 09F84000 */  jalr       $v0
/* 6DF1028 80089AF8 21288002 */   addu      $a1, $s4, $zero
/* 6DF102C 80089AFC 21984000 */  addu       $s3, $v0, $zero
/* 6DF1030 80089B00 69006012 */  beqz       $s3, .Llevel_32_80089CA8
/* 6DF1034 80089B04 21200000 */   addu      $a0, $zero, $zero
/* 6DF1038 80089B08 FF000524 */  addiu      $a1, $zero, 0xFF
/* 6DF103C 80089B0C 0000728E */  lw         $s2, 0x0($s3)
/* 6DF1040 80089B10 50000224 */  addiu      $v0, $zero, 0x50
/* 6DF1044 80089B14 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 6DF1048 80089B18 DBD8000C */  jal        func_8003636C
/* 6DF104C 80089B1C 4E0062A2 */   sb        $v0, 0x4E($s3)
/* 6DF1050 80089B20 21200000 */  addu       $a0, $zero, $zero
/* 6DF1054 80089B24 FF000524 */  addiu      $a1, $zero, 0xFF
/* 6DF1058 80089B28 DBD8000C */  jal        func_8003636C
/* 6DF105C 80089B2C 21804000 */   addu      $s0, $v0, $zero
/* 6DF1060 80089B30 21200000 */  addu       $a0, $zero, $zero
/* 6DF1064 80089B34 84030524 */  addiu      $a1, $zero, 0x384
/* 6DF1068 80089B38 DBD8000C */  jal        func_8003636C
/* 6DF106C 80089B3C 21884000 */   addu      $s1, $v0, $zero
/* 6DF1070 80089B40 40801000 */  sll        $s0, $s0, 1
/* 6DF1074 80089B44 0680083C */  lui        $t0, %hi(D_80065920)
/* 6DF1078 80089B48 20590825 */  addiu      $t0, $t0, %lo(D_80065920)
/* 6DF107C 80089B4C 21180802 */  addu       $v1, $s0, $t0
/* 6DF1080 80089B50 00006384 */  lh         $v1, 0x0($v1)
/* 6DF1084 80089B54 00000000 */  nop
/* 6DF1088 80089B58 18006200 */  mult       $v1, $v0
/* 6DF108C 80089B5C 40881100 */  sll        $s1, $s1, 1
/* 6DF1090 80089B60 21282802 */  addu       $a1, $s1, $t0
/* 6DF1094 80089B64 12180000 */  mflo       $v1
/* 6DF1098 80089B68 0000A484 */  lh         $a0, 0x0($a1)
/* 6DF109C 80089B6C 031B0300 */  sra        $v1, $v1, 12
/* 6DF10A0 80089B70 18006400 */  mult       $v1, $a0
/* 6DF10A4 80089B74 0680083C */  lui        $t0, %hi(D_800658A0)
/* 6DF10A8 80089B78 A0580825 */  addiu      $t0, $t0, %lo(D_800658A0)
/* 6DF10AC 80089B7C 21800802 */  addu       $s0, $s0, $t0
/* 6DF10B0 80089B80 12180000 */  mflo       $v1
/* 6DF10B4 80089B84 031B0300 */  sra        $v1, $v1, 12
/* 6DF10B8 80089B88 0C0063AE */  sw         $v1, 0xC($s3)
/* 6DF10BC 80089B8C 00000386 */  lh         $v1, 0x0($s0)
/* 6DF10C0 80089B90 00000000 */  nop
/* 6DF10C4 80089B94 18006200 */  mult       $v1, $v0
/* 6DF10C8 80089B98 12180000 */  mflo       $v1
/* 6DF10CC 80089B9C 0000A484 */  lh         $a0, 0x0($a1)
/* 6DF10D0 80089BA0 031B0300 */  sra        $v1, $v1, 12
/* 6DF10D4 80089BA4 18006400 */  mult       $v1, $a0
/* 6DF10D8 80089BA8 21882802 */  addu       $s1, $s1, $t0
/* 6DF10DC 80089BAC 12180000 */  mflo       $v1
/* 6DF10E0 80089BB0 031B0300 */  sra        $v1, $v1, 12
/* 6DF10E4 80089BB4 100063AE */  sw         $v1, 0x10($s3)
/* 6DF10E8 80089BB8 00002386 */  lh         $v1, 0x0($s1)
/* 6DF10EC 80089BBC 00000000 */  nop
/* 6DF10F0 80089BC0 18006200 */  mult       $v1, $v0
/* 6DF10F4 80089BC4 0C00628E */  lw         $v0, 0xC($s3)
/* 6DF10F8 80089BC8 12180000 */  mflo       $v1
/* 6DF10FC 80089BCC 40100200 */  sll        $v0, $v0, 1
/* 6DF1100 80089BD0 00000000 */  nop
/* 6DF1104 80089BD4 18005700 */  mult       $v0, $s7
/* 6DF1108 80089BD8 031B0300 */  sra        $v1, $v1, 12
/* 6DF110C 80089BDC C3170200 */  sra        $v0, $v0, 31
/* 6DF1110 80089BE0 140063AE */  sw         $v1, 0x14($s3)
/* 6DF1114 80089BE4 10400000 */  mfhi       $t0
/* 6DF1118 80089BE8 23100201 */  subu       $v0, $t0, $v0
/* 6DF111C 80089BEC 040042AE */  sw         $v0, 0x4($s2)
/* 6DF1120 80089BF0 1000628E */  lw         $v0, 0x10($s3)
/* 6DF1124 80089BF4 00000000 */  nop
/* 6DF1128 80089BF8 40100200 */  sll        $v0, $v0, 1
/* 6DF112C 80089BFC 18005700 */  mult       $v0, $s7
/* 6DF1130 80089C00 C3170200 */  sra        $v0, $v0, 31
/* 6DF1134 80089C04 10400000 */  mfhi       $t0
/* 6DF1138 80089C08 23100201 */  subu       $v0, $t0, $v0
/* 6DF113C 80089C0C 080042AE */  sw         $v0, 0x8($s2)
/* 6DF1140 80089C10 1400628E */  lw         $v0, 0x14($s3)
/* 6DF1144 80089C14 00000000 */  nop
/* 6DF1148 80089C18 40100200 */  sll        $v0, $v0, 1
/* 6DF114C 80089C1C 18005700 */  mult       $v0, $s7
/* 6DF1150 80089C20 0C008626 */  addiu      $a2, $s4, 0xC
/* 6DF1154 80089C24 0C006426 */  addiu      $a0, $s3, 0xC
/* 6DF1158 80089C28 21288000 */  addu       $a1, $a0, $zero
/* 6DF115C 80089C2C C3170200 */  sra        $v0, $v0, 31
/* 6DF1160 80089C30 10400000 */  mfhi       $t0
/* 6DF1164 80089C34 23100201 */  subu       $v0, $t0, $v0
/* 6DF1168 80089C38 653C010C */  jal        func_8004F194
/* 6DF116C 80089C3C 0C0042AE */   sw        $v0, 0xC($s2)
/* 6DF1170 80089C40 0B00A22A */  slti       $v0, $s5, 0xB
/* 6DF1174 80089C44 18004014 */  bnez       $v0, .Llevel_32_80089CA8
/* 6DF1178 80089C48 00000000 */   nop
/* 6DF117C 80089C4C 3C006292 */  lbu        $v0, 0x3C($s3)
/* 6DF1180 80089C50 00000000 */  nop
/* 6DF1184 80089C54 14005E10 */  beq        $v0, $fp, .Llevel_32_80089CA8
/* 6DF1188 80089C58 00000000 */   nop
/* 6DF118C 80089C5C 36006286 */  lh         $v0, 0x36($s3)
/* 6DF1190 80089C60 420060A2 */  sb         $zero, 0x42($s3)
/* 6DF1194 80089C64 80100200 */  sll        $v0, $v0, 2
/* 6DF1198 80089C68 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 6DF119C 80089C6C 21082200 */  addu       $at, $at, $v0
/* 6DF11A0 80089C70 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 6DF11A4 80089C74 00000000 */  nop
/* 6DF11A8 80089C78 4000428C */  lw         $v0, 0x40($v0)
/* 6DF11AC 80089C7C 00000000 */  nop
/* 6DF11B0 80089C80 00004290 */  lbu        $v0, 0x0($v0)
/* 6DF11B4 80089C84 3C007EA2 */  sb         $fp, 0x3C($s3)
/* 6DF11B8 80089C88 3D007EA2 */  sb         $fp, 0x3D($s3)
/* 6DF11BC 80089C8C 3E0060A2 */  sb         $zero, 0x3E($s3)
/* 6DF11C0 80089C90 3F007EA2 */  sb         $fp, 0x3F($s3)
/* 6DF11C4 80089C94 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DF11C8 80089C98 01004238 */  xori       $v0, $v0, 0x1
/* 6DF11CC 80089C9C 23100200 */  negu       $v0, $v0
/* 6DF11D0 80089CA0 30004230 */  andi       $v0, $v0, 0x30
/* 6DF11D4 80089CA4 400062A2 */  sb         $v0, 0x40($s3)
.Llevel_32_80089CA8:
/* 6DF11D8 80089CA8 0100B526 */  addiu      $s5, $s5, 0x1
/* 6DF11DC 80089CAC 1000A22A */  slti       $v0, $s5, 0x10
/* 6DF11E0 80089CB0 84FF4014 */  bnez       $v0, .Llevel_32_80089AC4
/* 6DF11E4 80089CB4 00000000 */   nop
.Llevel_32_80089CB8:
/* 6DF11E8 80089CB8 21208002 */  addu       $a0, $s4, $zero
/* 6DF11EC 80089CBC 10000524 */  addiu      $a1, $zero, 0x10
/* 6DF11F0 80089CC0 21300000 */  addu       $a2, $zero, $zero
/* 6DF11F4 80089CC4 9ADA000C */  jal        func_80036A68
/* 6DF11F8 80089CC8 21380000 */   addu      $a3, $zero, $zero
/* 6DF11FC 80089CCC 21208002 */  addu       $a0, $s4, $zero
/* 6DF1200 80089CD0 0400C526 */  addiu      $a1, $s6, 0x4
/* 6DF1204 80089CD4 21300000 */  addu       $a2, $zero, $zero
/* 6DF1208 80089CD8 FEE2000C */  jal        func_80038BF8
/* 6DF120C 80089CDC 01000724 */   addiu     $a3, $zero, 0x1
/* 6DF1210 80089CE0 0A00C296 */  lhu        $v0, 0xA($s6)
/* 6DF1214 80089CE4 00000000 */  nop
/* 6DF1218 80089CE8 32004224 */  addiu      $v0, $v0, 0x32
/* 6DF121C 80089CEC 0A00C2A6 */  sh         $v0, 0xA($s6)
.Llevel_32_80089CF0:
/* 6DF1220 80089CF0 48008392 */  lbu        $v1, 0x48($s4)
/* 6DF1224 80089CF4 00000000 */  nop
/* 6DF1228 80089CF8 05006010 */  beqz       $v1, .Llevel_32_80089D10
/* 6DF122C 80089CFC 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF1230 80089D00 1C006210 */  beq        $v1, $v0, .Llevel_32_80089D74
/* 6DF1234 80089D04 21208002 */   addu      $a0, $s4, $zero
/* 6DF1238 80089D08 6B270208 */  j          .Llevel_32_80089DAC
/* 6DF123C 80089D0C 00000000 */   nop
.Llevel_32_80089D10:
/* 6DF1240 80089D10 3C00C28E */  lw         $v0, 0x3C($s6)
/* 6DF1244 80089D14 00000000 */  nop
/* 6DF1248 80089D18 09004010 */  beqz       $v0, .Llevel_32_80089D40
/* 6DF124C 80089D1C FF000224 */   addiu     $v0, $zero, 0xFF
/* 6DF1250 80089D20 4A0082A2 */  sb         $v0, 0x4A($s4)
/* 6DF1254 80089D24 0A000224 */  addiu      $v0, $zero, 0xA
/* 6DF1258 80089D28 410080A2 */  sb         $zero, 0x41($s4)
/* 6DF125C 80089D2C 4C0080A2 */  sb         $zero, 0x4C($s4)
/* 6DF1260 80089D30 4D0080A2 */  sb         $zero, 0x4D($s4)
/* 6DF1264 80089D34 080080AE */  sw         $zero, 0x8($s4)
/* 6DF1268 80089D38 6B270208 */  j          .Llevel_32_80089DAC
/* 6DF126C 80089D3C 480082A2 */   sb        $v0, 0x48($s4)
.Llevel_32_80089D40:
/* 6DF1270 80089D40 21208002 */  addu       $a0, $s4, $zero
/* 6DF1274 80089D44 1C00C626 */  addiu      $a2, $s6, 0x1C
/* 6DF1278 80089D48 0000C58E */  lw         $a1, 0x0($s6)
/* 6DF127C 80089D4C 0780033C */  lui        $v1, %hi(unk_ovlheader_800743E8)
/* 6DF1280 80089D50 E843638C */  lw         $v1, %lo(unk_ovlheader_800743E8)($v1)
/* 6DF1284 80089D54 A0000224 */  addiu      $v0, $zero, 0xA0
/* 6DF1288 80089D58 09F86000 */  jalr       $v1
/* 6DF128C 80089D5C 2000C2A6 */   sh        $v0, 0x20($s6)
/* 6DF1290 80089D60 21208002 */  addu       $a0, $s4, $zero
/* 6DF1294 80089D64 4957010C */  jal        func_80055D24
/* 6DF1298 80089D68 06000524 */   addiu     $a1, $zero, 0x6
/* 6DF129C 80089D6C 6B270208 */  j          .Llevel_32_80089DAC
/* 6DF12A0 80089D70 00000000 */   nop
.Llevel_32_80089D74:
/* 6DF12A4 80089D74 65D4000C */  jal        func_80035194
/* 6DF12A8 80089D78 0400C526 */   addiu     $a1, $s6, 0x4
/* 6DF12AC 80089D7C 00010324 */  addiu      $v1, $zero, 0x100
/* 6DF12B0 80089D80 0A004314 */  bne        $v0, $v1, .Llevel_32_80089DAC
/* 6DF12B4 80089D84 21208002 */   addu      $a0, $s4, $zero
/* 6DF12B8 80089D88 4957010C */  jal        func_80055D24
/* 6DF12BC 80089D8C 04000524 */   addiu     $a1, $zero, 0x4
/* 6DF12C0 80089D90 80EE000C */  jal        func_8003BA00
/* 6DF12C4 80089D94 21208002 */   addu      $a0, $s4, $zero
/* 6DF12C8 80089D98 21208002 */  addu       $a0, $s4, $zero
/* 6DF12CC 80089D9C 6EDA000C */  jal        func_800369B8
/* 6DF12D0 80089DA0 30000524 */   addiu     $a1, $zero, 0x30
/* 6DF12D4 80089DA4 C656010C */  jal        func_80055B18
/* 6DF12D8 80089DA8 21208002 */   addu      $a0, $s4, $zero
.Llevel_32_80089DAC:
/* 6DF12DC 80089DAC 3400BF8F */  lw         $ra, 0x34($sp)
/* 6DF12E0 80089DB0 3000BE8F */  lw         $fp, 0x30($sp)
/* 6DF12E4 80089DB4 2C00B78F */  lw         $s7, 0x2C($sp)
/* 6DF12E8 80089DB8 2800B68F */  lw         $s6, 0x28($sp)
/* 6DF12EC 80089DBC 2400B58F */  lw         $s5, 0x24($sp)
/* 6DF12F0 80089DC0 2000B48F */  lw         $s4, 0x20($sp)
/* 6DF12F4 80089DC4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 6DF12F8 80089DC8 1800B28F */  lw         $s2, 0x18($sp)
/* 6DF12FC 80089DCC 1400B18F */  lw         $s1, 0x14($sp)
/* 6DF1300 80089DD0 1000B08F */  lw         $s0, 0x10($sp)
/* 6DF1304 80089DD4 3800BD27 */  addiu      $sp, $sp, 0x38
/* 6DF1308 80089DD8 0800E003 */  jr         $ra
/* 6DF130C 80089DDC 00000000 */   nop
.size MobyUpdate_729_level_32, . - MobyUpdate_729_level_32
