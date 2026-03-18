.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_50_8008E924
/* 95E2E54 8008E924 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 95E2E58 8008E928 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 95E2E5C 8008E92C 21888000 */  addu       $s1, $a0, $zero
/* 95E2E60 8008E930 9000BFAF */  sw         $ra, 0x90($sp)
/* 95E2E64 8008E934 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 95E2E68 8008E938 8800B4AF */  sw         $s4, 0x88($sp)
/* 95E2E6C 8008E93C 8400B3AF */  sw         $s3, 0x84($sp)
/* 95E2E70 8008E940 8000B2AF */  sw         $s2, 0x80($sp)
/* 95E2E74 8008E944 7800B0AF */  sw         $s0, 0x78($sp)
/* 95E2E78 8008E948 48002292 */  lbu        $v0, 0x48($s1)
/* 95E2E7C 8008E94C 0000348E */  lw         $s4, 0x0($s1)
/* 95E2E80 8008E950 1A014014 */  bnez       $v0, .Llevel_50_8008EDBC
/* 95E2E84 8008E954 21980000 */   addu      $s3, $zero, $zero
/* 95E2E88 8008E958 21900000 */  addu       $s2, $zero, $zero
/* 95E2E8C 8008E95C 2800A427 */  addiu      $a0, $sp, 0x28
/* 95E2E90 8008E960 0C003026 */  addiu      $s0, $s1, 0xC
/* 95E2E94 8008E964 5E3C010C */  jal        func_8004F178
/* 95E2E98 8008E968 21280002 */   addu      $a1, $s0, $zero
/* 95E2E9C 8008E96C 1800A427 */  addiu      $a0, $sp, 0x18
/* 95E2EA0 8008E970 5E3C010C */  jal        func_8004F178
/* 95E2EA4 8008E974 21280002 */   addu      $a1, $s0, $zero
/* 95E2EA8 8008E978 21200000 */  addu       $a0, $zero, $zero
/* 95E2EAC 8008E97C DBD8000C */  jal        func_8003636C
/* 95E2EB0 8008E980 00020524 */   addiu     $a1, $zero, 0x200
/* 95E2EB4 8008E984 21200000 */  addu       $a0, $zero, $zero
/* 95E2EB8 8008E988 1800A38F */  lw         $v1, 0x18($sp)
/* 95E2EBC 8008E98C 00020524 */  addiu      $a1, $zero, 0x200
/* 95E2EC0 8008E990 00FF6324 */  addiu      $v1, $v1, -0x100
/* 95E2EC4 8008E994 21186200 */  addu       $v1, $v1, $v0
/* 95E2EC8 8008E998 DBD8000C */  jal        func_8003636C
/* 95E2ECC 8008E99C 1800A3AF */   sw        $v1, 0x18($sp)
/* 95E2ED0 8008E9A0 21200000 */  addu       $a0, $zero, $zero
/* 95E2ED4 8008E9A4 1C00A38F */  lw         $v1, 0x1C($sp)
/* 95E2ED8 8008E9A8 00020524 */  addiu      $a1, $zero, 0x200
/* 95E2EDC 8008E9AC 00FF6324 */  addiu      $v1, $v1, -0x100
/* 95E2EE0 8008E9B0 21186200 */  addu       $v1, $v1, $v0
/* 95E2EE4 8008E9B4 DBD8000C */  jal        func_8003636C
/* 95E2EE8 8008E9B8 1C00A3AF */   sw        $v1, 0x1C($sp)
/* 95E2EEC 8008E9BC 01000424 */  addiu      $a0, $zero, 0x1
/* 95E2EF0 8008E9C0 42000524 */  addiu      $a1, $zero, 0x42
/* 95E2EF4 8008E9C4 1800A627 */  addiu      $a2, $sp, 0x18
/* 95E2EF8 8008E9C8 21380000 */  addu       $a3, $zero, $zero
/* 95E2EFC 8008E9CC 2000A38F */  lw         $v1, 0x20($sp)
/* 95E2F00 8008E9D0 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 95E2F04 8008E9D4 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 95E2F08 8008E9D8 00FF6324 */  addiu      $v1, $v1, -0x100
/* 95E2F0C 8008E9DC 21186200 */  addu       $v1, $v1, $v0
/* 95E2F10 8008E9E0 09F80001 */  jalr       $t0
/* 95E2F14 8008E9E4 2000A3AF */   sw        $v1, 0x20($sp)
/* 95E2F18 8008E9E8 21804000 */  addu       $s0, $v0, $zero
/* 95E2F1C 8008E9EC 0F000012 */  beqz       $s0, .Llevel_50_8008EA2C
/* 95E2F20 8008E9F0 20002426 */   addiu     $a0, $s1, 0x20
/* 95E2F24 8008E9F4 9171010C */  jal        rand
/* 95E2F28 8008E9F8 00000000 */   nop
/* 95E2F2C 8008E9FC 01004230 */  andi       $v0, $v0, 0x1
/* 95E2F30 8008EA00 05004010 */  beqz       $v0, .Llevel_50_8008EA18
/* 95E2F34 8008EA04 FF000224 */   addiu     $v0, $zero, 0xFF
/* 95E2F38 8008EA08 0C0002A2 */  sb         $v0, 0xC($s0)
/* 95E2F3C 8008EA0C 0D0002A2 */  sb         $v0, 0xD($s0)
/* 95E2F40 8008EA10 893A0208 */  j          .Llevel_50_8008EA24
/* 95E2F44 8008EA14 80000224 */   addiu     $v0, $zero, 0x80
.Llevel_50_8008EA18:
/* 95E2F48 8008EA18 0C0002A2 */  sb         $v0, 0xC($s0)
/* 95E2F4C 8008EA1C 80000224 */  addiu      $v0, $zero, 0x80
/* 95E2F50 8008EA20 0D0002A2 */  sb         $v0, 0xD($s0)
.Llevel_50_8008EA24:
/* 95E2F54 8008EA24 0E0002A2 */  sb         $v0, 0xE($s0)
/* 95E2F58 8008EA28 20002426 */  addiu      $a0, $s1, 0x20
.Llevel_50_8008EA2C:
/* 95E2F5C 8008EA2C 1800A527 */  addiu      $a1, $sp, 0x18
/* 95E2F60 8008EA30 0780023C */  lui        $v0, %hi(D_8006C648)
/* 95E2F64 8008EA34 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 95E2F68 8008EA38 44002392 */  lbu        $v1, 0x44($s1)
/* 95E2F6C 8008EA3C C0100200 */  sll        $v0, $v0, 3
/* 95E2F70 8008EA40 21186200 */  addu       $v1, $v1, $v0
/* 95E2F74 8008EA44 440023A2 */  sb         $v1, 0x44($s1)
/* 95E2F78 8008EA48 02008286 */  lh         $v0, 0x2($s4)
/* 95E2F7C 8008EA4C 2130A000 */  addu       $a2, $a1, $zero
/* 95E2F80 8008EA50 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 95E2F84 8008EA54 2000A0AF */  sw         $zero, 0x20($sp)
/* 95E2F88 8008EA58 5B3B010C */  jal        func_8004ED6C
/* 95E2F8C 8008EA5C 1800A2AF */   sw        $v0, 0x18($sp)
/* 95E2F90 8008EA60 0C002426 */  addiu      $a0, $s1, 0xC
/* 95E2F94 8008EA64 21288000 */  addu       $a1, $a0, $zero
/* 95E2F98 8008EA68 653C010C */  jal        func_8004F194
/* 95E2F9C 8008EA6C 1800A627 */   addiu     $a2, $sp, 0x18
/* 95E2FA0 8008EA70 21202002 */  addu       $a0, $s1, $zero
/* 95E2FA4 8008EA74 4957010C */  jal        func_80055D24
/* 95E2FA8 8008EA78 02000524 */   addiu     $a1, $zero, 0x2
/* 95E2FAC 8008EA7C 49002392 */  lbu        $v1, 0x49($s1)
/* 95E2FB0 8008EA80 01000224 */  addiu      $v0, $zero, 0x1
/* 95E2FB4 8008EA84 0E006214 */  bne        $v1, $v0, .Llevel_50_8008EAC0
/* 95E2FB8 8008EA88 00000000 */   nop
/* 95E2FBC 8008EA8C 4F002392 */  lbu        $v1, 0x4F($s1)
/* 95E2FC0 8008EA90 00000000 */  nop
/* 95E2FC4 8008EA94 2100622C */  sltiu      $v0, $v1, 0x21
/* 95E2FC8 8008EA98 06004010 */  beqz       $v0, .Llevel_50_8008EAB4
/* 95E2FCC 8008EA9C 21200000 */   addu      $a0, $zero, $zero
/* 95E2FD0 8008EAA0 DBD8000C */  jal        func_8003636C
/* 95E2FD4 8008EAA4 08000524 */   addiu     $a1, $zero, 0x8
/* 95E2FD8 8008EAA8 38004224 */  addiu      $v0, $v0, 0x38
/* 95E2FDC 8008EAAC 283C0208 */  j          .Llevel_50_8008F0A0
/* 95E2FE0 8008EAB0 4F0022A2 */   sb        $v0, 0x4F($s1)
.Llevel_50_8008EAB4:
/* 95E2FE4 8008EAB4 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 95E2FE8 8008EAB8 283C0208 */  j          .Llevel_50_8008F0A0
/* 95E2FEC 8008EABC 4F0022A2 */   sb        $v0, 0x4F($s1)
.Llevel_50_8008EAC0:
/* 95E2FF0 8008EAC0 4F002392 */  lbu        $v1, 0x4F($s1)
/* 95E2FF4 8008EAC4 00000000 */  nop
/* 95E2FF8 8008EAC8 2100622C */  sltiu      $v0, $v1, 0x21
/* 95E2FFC 8008EACC 05004010 */  beqz       $v0, .Llevel_50_8008EAE4
/* 95E3000 8008EAD0 21200000 */   addu      $a0, $zero, $zero
/* 95E3004 8008EAD4 DBD8000C */  jal        func_8003636C
/* 95E3008 8008EAD8 08000524 */   addiu     $a1, $zero, 0x8
/* 95E300C 8008EADC BA3A0208 */  j          .Llevel_50_8008EAE8
/* 95E3010 8008EAE0 18004224 */   addiu     $v0, $v0, 0x18
.Llevel_50_8008EAE4:
/* 95E3014 8008EAE4 F8FF6224 */  addiu      $v0, $v1, -0x8
.Llevel_50_8008EAE8:
/* 95E3018 8008EAE8 4F0022A2 */  sb         $v0, 0x4F($s1)
/* 95E301C 8008EAEC 0C003026 */  addiu      $s0, $s1, 0xC
/* 95E3020 8008EAF0 21200002 */  addu       $a0, $s0, $zero
/* 95E3024 8008EAF4 C8000524 */  addiu      $a1, $zero, 0xC8
/* 95E3028 8008EAF8 03000624 */  addiu      $a2, $zero, 0x3
/* 95E302C 8008EAFC 1000A0AF */  sw         $zero, 0x10($sp)
/* 95E3030 8008EB00 3A002292 */  lbu        $v0, 0x3A($s1)
/* 95E3034 8008EB04 21380000 */  addu       $a3, $zero, $zero
/* 95E3038 8008EB08 40180200 */  sll        $v1, $v0, 1
/* 95E303C 8008EB0C 21186200 */  addu       $v1, $v1, $v0
/* 95E3040 8008EB10 80180300 */  sll        $v1, $v1, 2
/* 95E3044 8008EB14 23186200 */  subu       $v1, $v1, $v0
/* 95E3048 8008EB18 0780023C */  lui        $v0, %hi(D_8006C550)
/* 95E304C 8008EB1C 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 95E3050 8008EB20 C0180300 */  sll        $v1, $v1, 3
/* 95E3054 8008EB24 21104300 */  addu       $v0, $v0, $v1
/* 95E3058 8008EB28 8C6E000C */  jal        func_8001BA30
/* 95E305C 8008EB2C 1400A2AF */   sw        $v0, 0x14($sp)
/* 95E3060 8008EB30 21184000 */  addu       $v1, $v0, $zero
/* 95E3064 8008EB34 12006014 */  bnez       $v1, .Llevel_50_8008EB80
/* 95E3068 8008EB38 2800A427 */   addiu     $a0, $sp, 0x28
/* 95E306C 8008EB3C 21280002 */  addu       $a1, $s0, $zero
/* 95E3070 8008EB40 21300000 */  addu       $a2, $zero, $zero
/* 95E3074 8008EB44 3A002292 */  lbu        $v0, 0x3A($s1)
/* 95E3078 8008EB48 21380000 */  addu       $a3, $zero, $zero
/* 95E307C 8008EB4C 40180200 */  sll        $v1, $v0, 1
/* 95E3080 8008EB50 21186200 */  addu       $v1, $v1, $v0
/* 95E3084 8008EB54 80180300 */  sll        $v1, $v1, 2
/* 95E3088 8008EB58 23186200 */  subu       $v1, $v1, $v0
/* 95E308C 8008EB5C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 95E3090 8008EB60 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 95E3094 8008EB64 C0180300 */  sll        $v1, $v1, 3
/* 95E3098 8008EB68 21104300 */  addu       $v0, $v0, $v1
/* 95E309C 8008EB6C 586B000C */  jal        func_8001AD60
/* 95E30A0 8008EB70 1000A2AF */   sw        $v0, 0x10($sp)
/* 95E30A4 8008EB74 21184000 */  addu       $v1, $v0, $zero
/* 95E30A8 8008EB78 0B006010 */  beqz       $v1, .Llevel_50_8008EBA8
/* 95E30AC 8008EB7C 00000000 */   nop
.Llevel_50_8008EB80:
/* 95E30B0 8008EB80 01001324 */  addiu      $s3, $zero, 0x1
/* 95E30B4 8008EB84 21200002 */  addu       $a0, $s0, $zero
/* 95E30B8 8008EB88 1000023C */  lui        $v0, (0x100000 >> 16)
/* 95E30BC 8008EB8C 180062AC */  sw         $v0, 0x18($v1)
/* 95E30C0 8008EB90 46002292 */  lbu        $v0, 0x46($s1)
/* 95E30C4 8008EB94 2800A527 */  addiu      $a1, $sp, 0x28
/* 95E30C8 8008EB98 5E3C010C */  jal        func_8004F178
/* 95E30CC 8008EB9C 510062A0 */   sb        $v0, 0x51($v1)
/* 95E30D0 8008EBA0 183B0208 */  j          .Llevel_50_8008EC60
/* 95E30D4 8008EBA4 1800A427 */   addiu     $a0, $sp, 0x18
.Llevel_50_8008EBA8:
/* 95E30D8 8008EBA8 0400828E */  lw         $v0, 0x4($s4)
/* 95E30DC 8008EBAC 00000000 */  nop
/* 95E30E0 8008EBB0 2A004010 */  beqz       $v0, .Llevel_50_8008EC5C
/* 95E30E4 8008EBB4 21200002 */   addu      $a0, $s0, $zero
/* 95E30E8 8008EBB8 C8000524 */  addiu      $a1, $zero, 0xC8
/* 95E30EC 8008EBBC A270000C */  jal        func_8001C288
/* 95E30F0 8008EBC0 07000624 */   addiu     $a2, $zero, 0x7
/* 95E30F4 8008EBC4 25004010 */  beqz       $v0, .Llevel_50_8008EC5C
/* 95E30F8 8008EBC8 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 95E30FC 8008EBCC 46002392 */  lbu        $v1, 0x46($s1)
/* 95E3100 8008EBD0 00044234 */  ori        $v0, $v0, (0x10000400 & 0xFFFF)
/* 95E3104 8008EBD4 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 95E3108 8008EBD8 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 95E310C 8008EBDC 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 95E3110 8008EBE0 C00523AC */  sw         $v1, %lo(D_80070328 + 0x298)($at)
/* 95E3114 8008EBE4 46002292 */  lbu        $v0, 0x46($s1)
/* 95E3118 8008EBE8 00000000 */  nop
/* 95E311C 8008EBEC 40100200 */  sll        $v0, $v0, 1
/* 95E3120 8008EBF0 0680013C */  lui        $at, %hi(D_80065920)
/* 95E3124 8008EBF4 21082200 */  addu       $at, $at, $v0
/* 95E3128 8008EBF8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 95E312C 8008EBFC 00000000 */  nop
/* 95E3130 8008EC00 40100300 */  sll        $v0, $v1, 1
/* 95E3134 8008EC04 21104300 */  addu       $v0, $v0, $v1
/* 95E3138 8008EC08 C0100200 */  sll        $v0, $v0, 3
/* 95E313C 8008EC0C 21104300 */  addu       $v0, $v0, $v1
/* 95E3140 8008EC10 C3120200 */  sra        $v0, $v0, 11
/* 95E3144 8008EC14 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 95E3148 8008EC18 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 95E314C 8008EC1C 46002292 */  lbu        $v0, 0x46($s1)
/* 95E3150 8008EC20 00000000 */  nop
/* 95E3154 8008EC24 40100200 */  sll        $v0, $v0, 1
/* 95E3158 8008EC28 0680013C */  lui        $at, %hi(D_800658A0)
/* 95E315C 8008EC2C 21082200 */  addu       $at, $at, $v0
/* 95E3160 8008EC30 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 95E3164 8008EC34 01001324 */  addiu      $s3, $zero, 0x1
/* 95E3168 8008EC38 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 95E316C 8008EC3C 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 95E3170 8008EC40 40100300 */  sll        $v0, $v1, 1
/* 95E3174 8008EC44 21104300 */  addu       $v0, $v0, $v1
/* 95E3178 8008EC48 C0100200 */  sll        $v0, $v0, 3
/* 95E317C 8008EC4C 21104300 */  addu       $v0, $v0, $v1
/* 95E3180 8008EC50 C3120200 */  sra        $v0, $v0, 11
/* 95E3184 8008EC54 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 95E3188 8008EC58 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
.Llevel_50_8008EC5C:
/* 95E318C 8008EC5C 1800A427 */  addiu      $a0, $sp, 0x18
.Llevel_50_8008EC60:
/* 95E3190 8008EC60 0C003026 */  addiu      $s0, $s1, 0xC
/* 95E3194 8008EC64 5E3C010C */  jal        func_8004F178
/* 95E3198 8008EC68 21280002 */   addu      $a1, $s0, $zero
/* 95E319C 8008EC6C 2000A28F */  lw         $v0, 0x20($sp)
/* 95E31A0 8008EC70 00000000 */  nop
/* 95E31A4 8008EC74 80004224 */  addiu      $v0, $v0, 0x80
/* 95E31A8 8008EC78 37006016 */  bnez       $s3, .Llevel_50_8008ED58
/* 95E31AC 8008EC7C 2000A2AF */   sw        $v0, 0x20($sp)
/* 95E31B0 8008EC80 0C00228E */  lw         $v0, 0xC($s1)
/* 95E31B4 8008EC84 00000000 */  nop
/* 95E31B8 8008EC88 00044228 */  slti       $v0, $v0, 0x400
/* 95E31BC 8008EC8C 32004014 */  bnez       $v0, .Llevel_50_8008ED58
/* 95E31C0 8008EC90 00000000 */   nop
/* 95E31C4 8008EC94 1000228E */  lw         $v0, 0x10($s1)
/* 95E31C8 8008EC98 00000000 */  nop
/* 95E31CC 8008EC9C 00044228 */  slti       $v0, $v0, 0x400
/* 95E31D0 8008ECA0 2D004014 */  bnez       $v0, .Llevel_50_8008ED58
/* 95E31D4 8008ECA4 00000000 */   nop
/* 95E31D8 8008ECA8 1400228E */  lw         $v0, 0x14($s1)
/* 95E31DC 8008ECAC 00000000 */  nop
/* 95E31E0 8008ECB0 00044228 */  slti       $v0, $v0, 0x400
/* 95E31E4 8008ECB4 28004014 */  bnez       $v0, .Llevel_50_8008ED58
/* 95E31E8 8008ECB8 21208002 */   addu      $a0, $s4, $zero
/* 95E31EC 8008ECBC 69D6000C */  jal        func_800359A4
/* 95E31F0 8008ECC0 02000524 */   addiu     $a1, $zero, 0x2
/* 95E31F4 8008ECC4 24004014 */  bnez       $v0, .Llevel_50_8008ED58
/* 95E31F8 8008ECC8 1800A427 */   addiu     $a0, $sp, 0x18
/* 95E31FC 8008ECCC FA000524 */  addiu      $a1, $zero, 0xFA
/* 95E3200 8008ECD0 01000624 */  addiu      $a2, $zero, 0x1
/* 95E3204 8008ECD4 1000A0AF */  sw         $zero, 0x10($sp)
/* 95E3208 8008ECD8 3A002292 */  lbu        $v0, 0x3A($s1)
/* 95E320C 8008ECDC 21380000 */  addu       $a3, $zero, $zero
/* 95E3210 8008ECE0 40180200 */  sll        $v1, $v0, 1
/* 95E3214 8008ECE4 21186200 */  addu       $v1, $v1, $v0
/* 95E3218 8008ECE8 80180300 */  sll        $v1, $v1, 2
/* 95E321C 8008ECEC 23186200 */  subu       $v1, $v1, $v0
/* 95E3220 8008ECF0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 95E3224 8008ECF4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 95E3228 8008ECF8 C0180300 */  sll        $v1, $v1, 3
/* 95E322C 8008ECFC 21104300 */  addu       $v0, $v0, $v1
/* 95E3230 8008ED00 4E64000C */  jal        func_80019138
/* 95E3234 8008ED04 1400A2AF */   sw        $v0, 0x14($sp)
/* 95E3238 8008ED08 21904000 */  addu       $s2, $v0, $zero
/* 95E323C 8008ED0C 12004016 */  bnez       $s2, .Llevel_50_8008ED58
/* 95E3240 8008ED10 2800A427 */   addiu     $a0, $sp, 0x28
/* 95E3244 8008ED14 21280002 */  addu       $a1, $s0, $zero
/* 95E3248 8008ED18 03000624 */  addiu      $a2, $zero, 0x3
/* 95E324C 8008ED1C 3A002292 */  lbu        $v0, 0x3A($s1)
/* 95E3250 8008ED20 21380000 */  addu       $a3, $zero, $zero
/* 95E3254 8008ED24 40180200 */  sll        $v1, $v0, 1
/* 95E3258 8008ED28 21186200 */  addu       $v1, $v1, $v0
/* 95E325C 8008ED2C 80180300 */  sll        $v1, $v1, 2
/* 95E3260 8008ED30 23186200 */  subu       $v1, $v1, $v0
/* 95E3264 8008ED34 0780023C */  lui        $v0, %hi(D_8006C550)
/* 95E3268 8008ED38 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 95E326C 8008ED3C C0180300 */  sll        $v1, $v1, 3
/* 95E3270 8008ED40 21104300 */  addu       $v0, $v0, $v1
/* 95E3274 8008ED44 C360000C */  jal        func_8001830C
/* 95E3278 8008ED48 1000A2AF */   sw        $v0, 0x10($sp)
/* 95E327C 8008ED4C 21904000 */  addu       $s2, $v0, $zero
/* 95E3280 8008ED50 D3004012 */  beqz       $s2, .Llevel_50_8008F0A0
/* 95E3284 8008ED54 00000000 */   nop
.Llevel_50_8008ED58:
/* 95E3288 8008ED58 0800848E */  lw         $a0, 0x8($s4)
/* 95E328C 8008ED5C 00000000 */  nop
/* 95E3290 8008ED60 04008010 */  beqz       $a0, .Llevel_50_8008ED74
/* 95E3294 8008ED64 00000000 */   nop
/* 95E3298 8008ED68 C656010C */  jal        func_80055B18
/* 95E329C 8008ED6C 00000000 */   nop
/* 95E32A0 8008ED70 080080AE */  sw         $zero, 0x8($s4)
.Llevel_50_8008ED74:
/* 95E32A4 8008ED74 0C004012 */  beqz       $s2, .Llevel_50_8008EDA8
/* 95E32A8 8008ED78 0C003026 */   addiu     $s0, $s1, 0xC
/* 95E32AC 8008ED7C 21200002 */  addu       $a0, $s0, $zero
/* 95E32B0 8008ED80 00040524 */  addiu      $a1, $zero, 0x400
/* 95E32B4 8008ED84 03000624 */  addiu      $a2, $zero, 0x3
/* 95E32B8 8008ED88 21380000 */  addu       $a3, $zero, $zero
/* 95E32BC 8008ED8C 1000023C */  lui        $v0, (0x100000 >> 16)
/* 95E32C0 8008ED90 1000A2AF */  sw         $v0, 0x10($sp)
/* 95E32C4 8008ED94 8C6E000C */  jal        func_8001BA30
/* 95E32C8 8008ED98 1400B1AF */   sw        $s1, 0x14($sp)
/* 95E32CC 8008ED9C 21200002 */  addu       $a0, $s0, $zero
/* 95E32D0 8008EDA0 5E3C010C */  jal        func_8004F178
/* 95E32D4 8008EDA4 2800A527 */   addiu     $a1, $sp, 0x28
.Llevel_50_8008EDA8:
/* 95E32D8 8008EDA8 01000224 */  addiu      $v0, $zero, 0x1
/* 95E32DC 8008EDAC 410020A2 */  sb         $zero, 0x41($s1)
/* 95E32E0 8008EDB0 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 95E32E4 8008EDB4 4D0020A2 */  sb         $zero, 0x4D($s1)
/* 95E32E8 8008EDB8 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_50_8008EDBC:
/* 95E32EC 8008EDBC 48002392 */  lbu        $v1, 0x48($s1)
/* 95E32F0 8008EDC0 01000224 */  addiu      $v0, $zero, 0x1
/* 95E32F4 8008EDC4 54006214 */  bne        $v1, $v0, .Llevel_50_8008EF18
/* 95E32F8 8008EDC8 02000224 */   addiu     $v0, $zero, 0x2
/* 95E32FC 8008EDCC 21202002 */  addu       $a0, $s1, $zero
/* 95E3300 8008EDD0 21280000 */  addu       $a1, $zero, $zero
/* 95E3304 8008EDD4 AFEE000C */  jal        func_8003BABC
/* 95E3308 8008EDD8 21300000 */   addu      $a2, $zero, $zero
/* 95E330C 8008EDDC F7030424 */  addiu      $a0, $zero, 0x3F7
/* 95E3310 8008EDE0 14000224 */  addiu      $v0, $zero, 0x14
/* 95E3314 8008EDE4 490022A2 */  sb         $v0, 0x49($s1)
/* 95E3318 8008EDE8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 95E331C 8008EDEC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 95E3320 8008EDF0 00000000 */  nop
/* 95E3324 8008EDF4 09F84000 */  jalr       $v0
/* 95E3328 8008EDF8 21282002 */   addu      $a1, $s1, $zero
/* 95E332C 8008EDFC 21384000 */  addu       $a3, $v0, $zero
/* 95E3330 8008EE00 A700E010 */  beqz       $a3, .Llevel_50_8008F0A0
/* 95E3334 8008EE04 080087AE */   sw        $a3, 0x8($s4)
/* 95E3338 8008EE08 21300000 */  addu       $a2, $zero, $zero
/* 95E333C 8008EE0C 21900000 */  addu       $s2, $zero, $zero
/* 95E3340 8008EE10 4800B027 */  addiu      $s0, $sp, 0x48
/* 95E3344 8008EE14 3800B327 */  addiu      $s3, $sp, 0x38
/* 95E3348 8008EE18 08000224 */  addiu      $v0, $zero, 0x8
/* 95E334C 8008EE1C 4700E2A0 */  sb         $v0, 0x47($a3)
/* 95E3350 8008EE20 0780033C */  lui        $v1, %hi(D_8006E020)
/* 95E3354 8008EE24 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 95E3358 8008EE28 0C00248E */  lw         $a0, 0xC($s1)
/* 95E335C 8008EE2C 0780023C */  lui        $v0, %hi(D_8006E024)
/* 95E3360 8008EE30 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 95E3364 8008EE34 1000258E */  lw         $a1, 0x10($s1)
/* 95E3368 8008EE38 0000F58C */  lw         $s5, 0x0($a3)
/* 95E336C 8008EE3C 23206400 */  subu       $a0, $v1, $a0
/* 95E3370 8008EE40 203A010C */  jal        func_8004E880
/* 95E3374 8008EE44 23284500 */   subu      $a1, $v0, $a1
/* 95E3378 8008EE48 460022A2 */  sb         $v0, 0x46($s1)
/* 95E337C 8008EE4C 21202002 */  addu       $a0, $s1, $zero
.Llevel_50_8008EE50:
/* 95E3380 8008EE50 04000524 */  addiu      $a1, $zero, 0x4
/* 95E3384 8008EE54 40111200 */  sll        $v0, $s2, 5
/* 95E3388 8008EE58 440022A2 */  sb         $v0, 0x44($s1)
/* 95E338C 8008EE5C E2040224 */  addiu      $v0, $zero, 0x4E2
/* 95E3390 8008EE60 4800A0AF */  sw         $zero, 0x48($sp)
/* 95E3394 8008EE64 4C00A2AF */  sw         $v0, 0x4C($sp)
/* 95E3398 8008EE68 4957010C */  jal        func_80055D24
/* 95E339C 8008EE6C 5000A0AF */   sw        $zero, 0x50($sp)
/* 95E33A0 8008EE70 20002426 */  addiu      $a0, $s1, 0x20
/* 95E33A4 8008EE74 21280002 */  addu       $a1, $s0, $zero
/* 95E33A8 8008EE78 5B3B010C */  jal        func_8004ED6C
/* 95E33AC 8008EE7C 21300002 */   addu      $a2, $s0, $zero
/* 95E33B0 8008EE80 21200002 */  addu       $a0, $s0, $zero
/* 95E33B4 8008EE84 0C002526 */  addiu      $a1, $s1, 0xC
/* 95E33B8 8008EE88 653C010C */  jal        func_8004F194
/* 95E33BC 8008EE8C 21300002 */   addu      $a2, $s0, $zero
/* 95E33C0 8008EE90 5A3C010C */  jal        func_8004F168
/* 95E33C4 8008EE94 21206002 */   addu      $a0, $s3, $zero
/* 95E33C8 8008EE98 01000424 */  addiu      $a0, $zero, 0x1
/* 95E33CC 8008EE9C 0D000524 */  addiu      $a1, $zero, 0xD
/* 95E33D0 8008EEA0 21300002 */  addu       $a2, $s0, $zero
/* 95E33D4 8008EEA4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95E33D8 8008EEA8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95E33DC 8008EEAC 00000000 */  nop
/* 95E33E0 8008EEB0 09F84000 */  jalr       $v0
/* 95E33E4 8008EEB4 21386002 */   addu      $a3, $s3, $zero
/* 95E33E8 8008EEB8 21184000 */  addu       $v1, $v0, $zero
/* 95E33EC 8008EEBC 02006010 */  beqz       $v1, .Llevel_50_8008EEC8
/* 95E33F0 8008EEC0 3C000224 */   addiu     $v0, $zero, 0x3C
/* 95E33F4 8008EEC4 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_50_8008EEC8:
/* 95E33F8 8008EEC8 01005226 */  addiu      $s2, $s2, 0x1
/* 95E33FC 8008EECC 0800422A */  slti       $v0, $s2, 0x8
/* 95E3400 8008EED0 DFFF4014 */  bnez       $v0, .Llevel_50_8008EE50
/* 95E3404 8008EED4 21202002 */   addu      $a0, $s1, $zero
/* 95E3408 8008EED8 10000424 */  addiu      $a0, $zero, 0x10
/* 95E340C 8008EEDC 46000524 */  addiu      $a1, $zero, 0x46
/* 95E3410 8008EEE0 0C002626 */  addiu      $a2, $s1, 0xC
/* 95E3414 8008EEE4 20000724 */  addiu      $a3, $zero, 0x20
/* 95E3418 8008EEE8 90010224 */  addiu      $v0, $zero, 0x190
/* 95E341C 8008EEEC 0200A2A6 */  sh         $v0, 0x2($s5)
/* 95E3420 8008EEF0 02000224 */  addiu      $v0, $zero, 0x2
/* 95E3424 8008EEF4 480022A2 */  sb         $v0, 0x48($s1)
/* 95E3428 8008EEF8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 95E342C 8008EEFC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 95E3430 8008EF00 5A000224 */  addiu      $v0, $zero, 0x5A
/* 95E3434 8008EF04 080020AE */  sw         $zero, 0x8($s1)
/* 95E3438 8008EF08 09F86000 */  jalr       $v1
/* 95E343C 8008EF0C 000082A6 */   sh        $v0, 0x0($s4)
/* 95E3440 8008EF10 48002392 */  lbu        $v1, 0x48($s1)
/* 95E3444 8008EF14 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_50_8008EF18:
/* 95E3448 8008EF18 61006214 */  bne        $v1, $v0, .Llevel_50_8008F0A0
/* 95E344C 8008EF1C 0A000324 */   addiu     $v1, $zero, 0xA
/* 95E3450 8008EF20 0800928E */  lw         $s2, 0x8($s4)
/* 95E3454 8008EF24 49002292 */  lbu        $v0, 0x49($s1)
/* 95E3458 8008EF28 0000508E */  lw         $s0, 0x0($s2)
/* 95E345C 8008EF2C 05004310 */  beq        $v0, $v1, .Llevel_50_8008EF44
/* 95E3460 8008EF30 21208002 */   addu      $a0, $s4, $zero
/* 95E3464 8008EF34 69D6000C */  jal        func_800359A4
/* 95E3468 8008EF38 02000524 */   addiu     $a1, $zero, 0x2
/* 95E346C 8008EF3C 05004010 */  beqz       $v0, .Llevel_50_8008EF54
/* 95E3470 8008EF40 21300000 */   addu      $a2, $zero, $zero
.Llevel_50_8008EF44:
/* 95E3474 8008EF44 C656010C */  jal        func_80055B18
/* 95E3478 8008EF48 21202002 */   addu      $a0, $s1, $zero
/* 95E347C 8008EF4C 283C0208 */  j          .Llevel_50_8008F0A0
/* 95E3480 8008EF50 00000000 */   nop
.Llevel_50_8008EF54:
/* 95E3484 8008EF54 0780033C */  lui        $v1, %hi(D_8006E020)
/* 95E3488 8008EF58 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 95E348C 8008EF5C 0C00248E */  lw         $a0, 0xC($s1)
/* 95E3490 8008EF60 0780023C */  lui        $v0, %hi(D_8006E024)
/* 95E3494 8008EF64 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 95E3498 8008EF68 1000258E */  lw         $a1, 0x10($s1)
/* 95E349C 8008EF6C 23206400 */  subu       $a0, $v1, $a0
/* 95E34A0 8008EF70 203A010C */  jal        func_8004E880
/* 95E34A4 8008EF74 23284500 */   subu      $a1, $v0, $a1
/* 95E34A8 8008EF78 460042A2 */  sb         $v0, 0x46($s2)
/* 95E34AC 8008EF7C 14000286 */  lh         $v0, 0x14($s0)
/* 95E34B0 8008EF80 00000000 */  nop
/* 95E34B4 8008EF84 03004228 */  slti       $v0, $v0, 0x3
/* 95E34B8 8008EF88 05004010 */  beqz       $v0, .Llevel_50_8008EFA0
/* 95E34BC 8008EF8C 00000000 */   nop
/* 95E34C0 8008EF90 00000296 */  lhu        $v0, 0x0($s0)
/* 95E34C4 8008EF94 00000000 */  nop
/* 95E34C8 8008EF98 32004224 */  addiu      $v0, $v0, 0x32
/* 95E34CC 8008EF9C 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_50_8008EFA0:
/* 95E34D0 8008EFA0 14000286 */  lh         $v0, 0x14($s0)
/* 95E34D4 8008EFA4 00000000 */  nop
/* 95E34D8 8008EFA8 04004228 */  slti       $v0, $v0, 0x4
/* 95E34DC 8008EFAC 05004010 */  beqz       $v0, .Llevel_50_8008EFC4
/* 95E34E0 8008EFB0 00000000 */   nop
/* 95E34E4 8008EFB4 16000296 */  lhu        $v0, 0x16($s0)
/* 95E34E8 8008EFB8 00000000 */  nop
/* 95E34EC 8008EFBC 32004224 */  addiu      $v0, $v0, 0x32
/* 95E34F0 8008EFC0 160002A6 */  sh         $v0, 0x16($s0)
.Llevel_50_8008EFC4:
/* 95E34F4 8008EFC4 02000296 */  lhu        $v0, 0x2($s0)
/* 95E34F8 8008EFC8 14000386 */  lh         $v1, 0x14($s0)
/* 95E34FC 8008EFCC 64004224 */  addiu      $v0, $v0, 0x64
/* 95E3500 8008EFD0 07006328 */  slti       $v1, $v1, 0x7
/* 95E3504 8008EFD4 32006010 */  beqz       $v1, .Llevel_50_8008F0A0
/* 95E3508 8008EFD8 020002A6 */   sh        $v0, 0x2($s0)
/* 95E350C 8008EFDC 5800B227 */  addiu      $s2, $sp, 0x58
/* 95E3510 8008EFE0 21204002 */  addu       $a0, $s2, $zero
/* 95E3514 8008EFE4 5E3C010C */  jal        func_8004F178
/* 95E3518 8008EFE8 0C002526 */   addiu     $a1, $s1, 0xC
/* 95E351C 8008EFEC 21200000 */  addu       $a0, $zero, $zero
/* 95E3520 8008EFF0 DBD8000C */  jal        func_8003636C
/* 95E3524 8008EFF4 C8000524 */   addiu     $a1, $zero, 0xC8
/* 95E3528 8008EFF8 21200000 */  addu       $a0, $zero, $zero
/* 95E352C 8008EFFC 5800A38F */  lw         $v1, 0x58($sp)
/* 95E3530 8008F000 C8000524 */  addiu      $a1, $zero, 0xC8
/* 95E3534 8008F004 9CFF6324 */  addiu      $v1, $v1, -0x64
/* 95E3538 8008F008 21186200 */  addu       $v1, $v1, $v0
/* 95E353C 8008F00C DBD8000C */  jal        func_8003636C
/* 95E3540 8008F010 5800A3AF */   sw        $v1, 0x58($sp)
/* 95E3544 8008F014 21200000 */  addu       $a0, $zero, $zero
/* 95E3548 8008F018 C8000524 */  addiu      $a1, $zero, 0xC8
/* 95E354C 8008F01C 5C00A38F */  lw         $v1, 0x5C($sp)
/* 95E3550 8008F020 6000A68F */  lw         $a2, 0x60($sp)
/* 95E3554 8008F024 9CFF6324 */  addiu      $v1, $v1, -0x64
/* 95E3558 8008F028 21186200 */  addu       $v1, $v1, $v0
/* 95E355C 8008F02C C800C624 */  addiu      $a2, $a2, 0xC8
/* 95E3560 8008F030 5C00A3AF */  sw         $v1, 0x5C($sp)
/* 95E3564 8008F034 DBD8000C */  jal        func_8003636C
/* 95E3568 8008F038 6000A6AF */   sw        $a2, 0x60($sp)
/* 95E356C 8008F03C 6000A38F */  lw         $v1, 0x60($sp)
/* 95E3570 8008F040 6800A0AF */  sw         $zero, 0x68($sp)
/* 95E3574 8008F044 6C00A0AF */  sw         $zero, 0x6C($sp)
/* 95E3578 8008F048 7000A0AF */  sw         $zero, 0x70($sp)
/* 95E357C 8008F04C 9CFF6324 */  addiu      $v1, $v1, -0x64
/* 95E3580 8008F050 21186200 */  addu       $v1, $v1, $v0
/* 95E3584 8008F054 6000A3AF */  sw         $v1, 0x60($sp)
/* 95E3588 8008F058 14000286 */  lh         $v0, 0x14($s0)
/* 95E358C 8008F05C 00000000 */  nop
/* 95E3590 8008F060 04004228 */  slti       $v0, $v0, 0x4
/* 95E3594 8008F064 03004010 */  beqz       $v0, .Llevel_50_8008F074
/* 95E3598 8008F068 01000424 */   addiu     $a0, $zero, 0x1
/* 95E359C 8008F06C 1E3C0208 */  j          .Llevel_50_8008F078
/* 95E35A0 8008F070 21280000 */   addu      $a1, $zero, $zero
.Llevel_50_8008F074:
/* 95E35A4 8008F074 0D000524 */  addiu      $a1, $zero, 0xD
.Llevel_50_8008F078:
/* 95E35A8 8008F078 21304002 */  addu       $a2, $s2, $zero
/* 95E35AC 8008F07C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 95E35B0 8008F080 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 95E35B4 8008F084 00000000 */  nop
/* 95E35B8 8008F088 09F84000 */  jalr       $v0
/* 95E35BC 8008F08C 6800A727 */   addiu     $a3, $sp, 0x68
/* 95E35C0 8008F090 21184000 */  addu       $v1, $v0, $zero
/* 95E35C4 8008F094 02006010 */  beqz       $v1, .Llevel_50_8008F0A0
/* 95E35C8 8008F098 64000224 */   addiu     $v0, $zero, 0x64
/* 95E35CC 8008F09C 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_50_8008F0A0:
/* 95E35D0 8008F0A0 9000BF8F */  lw         $ra, 0x90($sp)
/* 95E35D4 8008F0A4 8C00B58F */  lw         $s5, 0x8C($sp)
/* 95E35D8 8008F0A8 8800B48F */  lw         $s4, 0x88($sp)
/* 95E35DC 8008F0AC 8400B38F */  lw         $s3, 0x84($sp)
/* 95E35E0 8008F0B0 8000B28F */  lw         $s2, 0x80($sp)
/* 95E35E4 8008F0B4 7C00B18F */  lw         $s1, 0x7C($sp)
/* 95E35E8 8008F0B8 7800B08F */  lw         $s0, 0x78($sp)
/* 95E35EC 8008F0BC 9800BD27 */  addiu      $sp, $sp, 0x98
/* 95E35F0 8008F0C0 0800E003 */  jr         $ra
/* 95E35F4 8008F0C4 00000000 */   nop
.size func_level_50_8008E924, . - func_level_50_8008E924
