.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_45_8007E9A0
/* 8D3AED0 8007E9A0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 8D3AED4 8007E9A4 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 8D3AED8 8007E9A8 21988000 */  addu       $s3, $a0, $zero
/* 8D3AEDC 8007E9AC 4000BFAF */  sw         $ra, 0x40($sp)
/* 8D3AEE0 8007E9B0 3800B2AF */  sw         $s2, 0x38($sp)
/* 8D3AEE4 8007E9B4 3400B1AF */  sw         $s1, 0x34($sp)
/* 8D3AEE8 8007E9B8 3000B0AF */  sw         $s0, 0x30($sp)
/* 8D3AEEC 8007E9BC 0000718E */  lw         $s1, 0x0($s3)
/* 8D3AEF0 8007E9C0 0780053C */  lui        $a1, %hi(D_level_45_80074644)
/* 8D3AEF4 8007E9C4 4446A524 */  addiu      $a1, $a1, %lo(D_level_45_80074644)
/* 8D3AEF8 8007E9C8 0000A28C */  lw         $v0, 0x0($a1)
/* 8D3AEFC 8007E9CC 0400A38C */  lw         $v1, 0x4($a1)
/* 8D3AF00 8007E9D0 0800A48C */  lw         $a0, 0x8($a1)
/* 8D3AF04 8007E9D4 2000A2AF */  sw         $v0, 0x20($sp)
/* 8D3AF08 8007E9D8 2400A3AF */  sw         $v1, 0x24($sp)
/* 8D3AF0C 8007E9DC 2800A4AF */  sw         $a0, 0x28($sp)
/* 8D3AF10 8007E9E0 48006392 */  lbu        $v1, 0x48($s3)
/* 8D3AF14 8007E9E4 00000000 */  nop
/* 8D3AF18 8007E9E8 05006010 */  beqz       $v1, .Llevel_45_8007EA00
/* 8D3AF1C 8007E9EC 01000224 */   addiu     $v0, $zero, 0x1
/* 8D3AF20 8007E9F0 08006210 */  beq        $v1, $v0, .Llevel_45_8007EA14
/* 8D3AF24 8007E9F4 00000000 */   nop
/* 8D3AF28 8007E9F8 F2FA0108 */  j          .Llevel_45_8007EBC8
/* 8D3AF2C 8007E9FC 00000000 */   nop
.Llevel_45_8007EA00:
/* 8D3AF30 8007EA00 410060A2 */  sb         $zero, 0x41($s3)
/* 8D3AF34 8007EA04 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 8D3AF38 8007EA08 4D0060A2 */  sb         $zero, 0x4D($s3)
/* 8D3AF3C 8007EA0C F2FA0108 */  j          .Llevel_45_8007EBC8
/* 8D3AF40 8007EA10 000020AE */   sw        $zero, 0x0($s1)
.Llevel_45_8007EA14:
/* 8D3AF44 8007EA14 0000238E */  lw         $v1, 0x0($s1)
/* 8D3AF48 8007EA18 00000000 */  nop
/* 8D3AF4C 8007EA1C 00106228 */  slti       $v0, $v1, 0x1000
/* 8D3AF50 8007EA20 06004010 */  beqz       $v0, .Llevel_45_8007EA3C
/* 8D3AF54 8007EA24 80006224 */   addiu     $v0, $v1, 0x80
/* 8D3AF58 8007EA28 000022AE */  sw         $v0, 0x0($s1)
/* 8D3AF5C 8007EA2C 01104228 */  slti       $v0, $v0, 0x1001
/* 8D3AF60 8007EA30 02004014 */  bnez       $v0, .Llevel_45_8007EA3C
/* 8D3AF64 8007EA34 00100224 */   addiu     $v0, $zero, 0x1000
/* 8D3AF68 8007EA38 000022AE */  sw         $v0, 0x0($s1)
.Llevel_45_8007EA3C:
/* 8D3AF6C 8007EA3C 21206002 */  addu       $a0, $s3, $zero
/* 8D3AF70 8007EA40 04000524 */  addiu      $a1, $zero, 0x4
/* 8D3AF74 8007EA44 0400228E */  lw         $v0, 0x4($s1)
/* 8D3AF78 8007EA48 21900000 */  addu       $s2, $zero, $zero
/* 8D3AF7C 8007EA4C 08004224 */  addiu      $v0, $v0, 0x8
/* 8D3AF80 8007EA50 4957010C */  jal        func_80055D24
/* 8D3AF84 8007EA54 040022AE */   sw        $v0, 0x4($s1)
/* 8D3AF88 8007EA58 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
.Llevel_45_8007EA5C:
/* 8D3AF8C 8007EA5C ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 8D3AF90 8007EA60 001B1200 */  sll        $v1, $s2, 12
/* 8D3AF94 8007EA64 18006200 */  mult       $v1, $v0
/* 8D3AF98 8007EA68 0400228E */  lw         $v0, 0x4($s1)
/* 8D3AF9C 8007EA6C C31F0300 */  sra        $v1, $v1, 31
/* 8D3AFA0 8007EA70 00110200 */  sll        $v0, $v0, 4
/* 8D3AFA4 8007EA74 10400000 */  mfhi       $t0
/* 8D3AFA8 8007EA78 43200800 */  sra        $a0, $t0, 1
/* 8D3AFAC 8007EA7C 23808300 */  subu       $s0, $a0, $v1
/* 8D3AFB0 8007EA80 21100202 */  addu       $v0, $s0, $v0
/* 8D3AFB4 8007EA84 FF0F5030 */  andi       $s0, $v0, 0xFFF
/* 8D3AFB8 8007EA88 8B93010C */  jal        rcos
/* 8D3AFBC 8007EA8C 21200002 */   addu      $a0, $s0, $zero
/* 8D3AFC0 8007EA90 0000238E */  lw         $v1, 0x0($s1)
/* 8D3AFC4 8007EA94 00000000 */  nop
/* 8D3AFC8 8007EA98 18006200 */  mult       $v1, $v0
/* 8D3AFCC 8007EA9C 21200002 */  addu       $a0, $s0, $zero
/* 8D3AFD0 8007EAA0 12400000 */  mflo       $t0
/* 8D3AFD4 8007EAA4 03130800 */  sra        $v0, $t0, 12
/* 8D3AFD8 8007EAA8 B393010C */  jal        rsin
/* 8D3AFDC 8007EAAC 1800A2AF */   sw        $v0, 0x18($sp)
/* 8D3AFE0 8007EAB0 0000238E */  lw         $v1, 0x0($s1)
/* 8D3AFE4 8007EAB4 00000000 */  nop
/* 8D3AFE8 8007EAB8 18006200 */  mult       $v1, $v0
/* 8D3AFEC 8007EABC 01005226 */  addiu      $s2, $s2, 0x1
/* 8D3AFF0 8007EAC0 20006426 */  addiu      $a0, $s3, 0x20
/* 8D3AFF4 8007EAC4 1000A527 */  addiu      $a1, $sp, 0x10
/* 8D3AFF8 8007EAC8 2130A000 */  addu       $a2, $a1, $zero
/* 8D3AFFC 8007EACC 1000A0AF */  sw         $zero, 0x10($sp)
/* 8D3B000 8007EAD0 12400000 */  mflo       $t0
/* 8D3B004 8007EAD4 03130800 */  sra        $v0, $t0, 12
/* 8D3B008 8007EAD8 5B3B010C */  jal        func_8004ED6C
/* 8D3B00C 8007EADC 1400A2AF */   sw        $v0, 0x14($sp)
/* 8D3B010 8007EAE0 1000A427 */  addiu      $a0, $sp, 0x10
/* 8D3B014 8007EAE4 21288000 */  addu       $a1, $a0, $zero
/* 8D3B018 8007EAE8 653C010C */  jal        func_8004F194
/* 8D3B01C 8007EAEC 0C006626 */   addiu     $a2, $s3, 0xC
/* 8D3B020 8007EAF0 01000424 */  addiu      $a0, $zero, 0x1
/* 8D3B024 8007EAF4 3A000524 */  addiu      $a1, $zero, 0x3A
/* 8D3B028 8007EAF8 1000A627 */  addiu      $a2, $sp, 0x10
/* 8D3B02C 8007EAFC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8D3B030 8007EB00 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8D3B034 8007EB04 00000000 */  nop
/* 8D3B038 8007EB08 09F84000 */  jalr       $v0
/* 8D3B03C 8007EB0C 2000A727 */   addiu     $a3, $sp, 0x20
/* 8D3B040 8007EB10 0C00422A */  slti       $v0, $s2, 0xC
/* 8D3B044 8007EB14 D1FF4014 */  bnez       $v0, .Llevel_45_8007EA5C
/* 8D3B048 8007EB18 AA2A023C */   lui       $v0, (0x2AAAAAAB >> 16)
/* 8D3B04C 8007EB1C 6666033C */  lui        $v1, (0x66666667 >> 16)
/* 8D3B050 8007EB20 0000228E */  lw         $v0, 0x0($s1)
/* 8D3B054 8007EB24 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 8D3B058 8007EB28 40300200 */  sll        $a2, $v0, 1
/* 8D3B05C 8007EB2C 2130C200 */  addu       $a2, $a2, $v0
/* 8D3B060 8007EB30 80300600 */  sll        $a2, $a2, 2
/* 8D3B064 8007EB34 2330C200 */  subu       $a2, $a2, $v0
/* 8D3B068 8007EB38 1800C300 */  mult       $a2, $v1
/* 8D3B06C 8007EB3C 21206002 */  addu       $a0, $s3, $zero
/* 8D3B070 8007EB40 0780053C */  lui        $a1, %hi(D_80070328)
/* 8D3B074 8007EB44 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 8D3B078 8007EB48 1000A727 */  addiu      $a3, $sp, 0x10
/* 8D3B07C 8007EB4C C3370600 */  sra        $a2, $a2, 31
/* 8D3B080 8007EB50 0780023C */  lui        $v0, %hi(unk_ovlheader_8007439C)
/* 8D3B084 8007EB54 9C43428C */  lw         $v0, %lo(unk_ovlheader_8007439C)($v0)
/* 8D3B088 8007EB58 10400000 */  mfhi       $t0
/* 8D3B08C 8007EB5C 83180800 */  sra        $v1, $t0, 2
/* 8D3B090 8007EB60 09F84000 */  jalr       $v0
/* 8D3B094 8007EB64 23306600 */   subu      $a2, $v1, $a2
/* 8D3B098 8007EB68 07004010 */  beqz       $v0, .Llevel_45_8007EB88
/* 8D3B09C 8007EB6C 21280000 */   addu      $a1, $zero, $zero
/* 8D3B0A0 8007EB70 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 8D3B0A4 8007EB74 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 8D3B0A8 8007EB78 AFEE000C */  jal        func_8003BABC
/* 8D3B0AC 8007EB7C 21300000 */   addu      $a2, $zero, $zero
/* 8D3B0B0 8007EB80 F0FA0108 */  j          .Llevel_45_8007EBC0
/* 8D3B0B4 8007EB84 21206002 */   addu      $a0, $s3, $zero
.Llevel_45_8007EB88:
/* 8D3B0B8 8007EB88 49006426 */  addiu      $a0, $s3, 0x49
/* 8D3B0BC 8007EB8C 69D6000C */  jal        func_800359A4
/* 8D3B0C0 8007EB90 01000524 */   addiu     $a1, $zero, 0x1
/* 8D3B0C4 8007EB94 06004014 */  bnez       $v0, .Llevel_45_8007EBB0
/* 8D3B0C8 8007EB98 21206002 */   addu      $a0, $s3, $zero
/* 8D3B0CC 8007EB9C 1000A28F */  lw         $v0, 0x10($sp)
/* 8D3B0D0 8007EBA0 00000000 */  nop
/* 8D3B0D4 8007EBA4 01024228 */  slti       $v0, $v0, 0x201
/* 8D3B0D8 8007EBA8 07004014 */  bnez       $v0, .Llevel_45_8007EBC8
/* 8D3B0DC 8007EBAC 00000000 */   nop
.Llevel_45_8007EBB0:
/* 8D3B0E0 8007EBB0 0780033C */  lui        $v1, %hi(D_80070328 + 0x250)
/* 8D3B0E4 8007EBB4 7805638C */  lw         $v1, %lo(D_80070328 + 0x250)($v1)
/* 8D3B0E8 8007EBB8 02000224 */  addiu      $v0, $zero, 0x2
/* 8D3B0EC 8007EBBC 490062A0 */  sb         $v0, 0x49($v1)
.Llevel_45_8007EBC0:
/* 8D3B0F0 8007EBC0 C656010C */  jal        func_80055B18
/* 8D3B0F4 8007EBC4 00000000 */   nop
.Llevel_45_8007EBC8:
/* 8D3B0F8 8007EBC8 4000BF8F */  lw         $ra, 0x40($sp)
/* 8D3B0FC 8007EBCC 3C00B38F */  lw         $s3, 0x3C($sp)
/* 8D3B100 8007EBD0 3800B28F */  lw         $s2, 0x38($sp)
/* 8D3B104 8007EBD4 3400B18F */  lw         $s1, 0x34($sp)
/* 8D3B108 8007EBD8 3000B08F */  lw         $s0, 0x30($sp)
/* 8D3B10C 8007EBDC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 8D3B110 8007EBE0 0800E003 */  jr         $ra
/* 8D3B114 8007EBE4 00000000 */   nop
.size func_level_45_8007E9A0, . - func_level_45_8007E9A0
