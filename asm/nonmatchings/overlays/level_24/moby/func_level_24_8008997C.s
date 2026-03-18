.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_24_8008997C
/* 5E046AC 8008997C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5E046B0 80089980 3000B4AF */  sw         $s4, 0x30($sp)
/* 5E046B4 80089984 21A08000 */  addu       $s4, $a0, $zero
/* 5E046B8 80089988 3400BFAF */  sw         $ra, 0x34($sp)
/* 5E046BC 8008998C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 5E046C0 80089990 2800B2AF */  sw         $s2, 0x28($sp)
/* 5E046C4 80089994 2400B1AF */  sw         $s1, 0x24($sp)
/* 5E046C8 80089998 2000B0AF */  sw         $s0, 0x20($sp)
/* 5E046CC 8008999C 0000938E */  lw         $s3, 0x0($s4)
/* 5E046D0 800899A0 04000524 */  addiu      $a1, $zero, 0x4
/* 5E046D4 800899A4 69D6000C */  jal        func_800359A4
/* 5E046D8 800899A8 21206002 */   addu      $a0, $s3, $zero
/* 5E046DC 800899AC 46004010 */  beqz       $v0, .Llevel_24_80089AC8
/* 5E046E0 800899B0 00000000 */   nop
/* 5E046E4 800899B4 0400628E */  lw         $v0, 0x4($s3)
/* 5E046E8 800899B8 00000000 */  nop
/* 5E046EC 800899BC 05004014 */  bnez       $v0, .Llevel_24_800899D4
/* 5E046F0 800899C0 1000A427 */   addiu     $a0, $sp, 0x10
/* 5E046F4 800899C4 5E3C010C */  jal        func_8004F178
/* 5E046F8 800899C8 0C008526 */   addiu     $a1, $s4, 0xC
/* 5E046FC 800899CC A7260208 */  j          .Llevel_24_80089A9C
/* 5E04700 800899D0 01000424 */   addiu     $a0, $zero, 0x1
.Llevel_24_800899D4:
/* 5E04704 800899D4 9171010C */  jal        rand
/* 5E04708 800899D8 00101124 */   addiu     $s1, $zero, 0x1000
/* 5E0470C 800899DC 0400658E */  lw         $a1, 0x4($s3)
/* 5E04710 800899E0 00000000 */  nop
/* 5E04714 800899E4 0000A384 */  lh         $v1, 0x0($a1)
/* 5E04718 800899E8 00000000 */  nop
/* 5E0471C 800899EC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 5E04720 800899F0 1A002302 */  div        $zero, $s1, $v1
/* 5E04724 800899F4 02006014 */  bnez       $v1, .Llevel_24_80089A00
/* 5E04728 800899F8 00000000 */   nop
/* 5E0472C 800899FC 0D000700 */  break      7
.Llevel_24_80089A00:
/* 5E04730 80089A00 FFFF0124 */  addiu      $at, $zero, -0x1
/* 5E04734 80089A04 04006114 */  bne        $v1, $at, .Llevel_24_80089A18
/* 5E04738 80089A08 0080013C */   lui       $at, (0x80000000 >> 16)
/* 5E0473C 80089A0C 02002116 */  bne        $s1, $at, .Llevel_24_80089A18
/* 5E04740 80089A10 00000000 */   nop
/* 5E04744 80089A14 0D000600 */  break      6
.Llevel_24_80089A18:
/* 5E04748 80089A18 12880000 */  mflo       $s1
/* 5E0474C 80089A1C FF0F5030 */  andi       $s0, $v0, 0xFFF
/* 5E04750 80089A20 00000000 */  nop
/* 5E04754 80089A24 1A001102 */  div        $zero, $s0, $s1
/* 5E04758 80089A28 02002016 */  bnez       $s1, .Llevel_24_80089A34
/* 5E0475C 80089A2C 00000000 */   nop
/* 5E04760 80089A30 0D000700 */  break      7
.Llevel_24_80089A34:
/* 5E04764 80089A34 FFFF0124 */  addiu      $at, $zero, -0x1
/* 5E04768 80089A38 04002116 */  bne        $s1, $at, .Llevel_24_80089A4C
/* 5E0476C 80089A3C 0080013C */   lui       $at, (0x80000000 >> 16)
/* 5E04770 80089A40 02000116 */  bne        $s0, $at, .Llevel_24_80089A4C
/* 5E04774 80089A44 00000000 */   nop
/* 5E04778 80089A48 0D000600 */  break      6
.Llevel_24_80089A4C:
/* 5E0477C 80089A4C 12800000 */  mflo       $s0
/* 5E04780 80089A50 10900000 */  mfhi       $s2
/* 5E04784 80089A54 1000A427 */  addiu      $a0, $sp, 0x10
/* 5E04788 80089A58 0C00A68C */  lw         $a2, 0xC($a1)
/* 5E0478C 80089A5C 00811000 */  sll        $s0, $s0, 4
/* 5E04790 80089A60 10000526 */  addiu      $a1, $s0, 0x10
/* 5E04794 80089A64 2128C500 */  addu       $a1, $a2, $a1
/* 5E04798 80089A68 723C010C */  jal        func_8004F1C8
/* 5E0479C 80089A6C 2130D000 */   addu      $a2, $a2, $s0
/* 5E047A0 80089A70 1000A427 */  addiu      $a0, $sp, 0x10
/* 5E047A4 80089A74 21282002 */  addu       $a1, $s1, $zero
/* 5E047A8 80089A78 233C010C */  jal        func_8004F08C
/* 5E047AC 80089A7C 21304002 */   addu      $a2, $s2, $zero
/* 5E047B0 80089A80 0400628E */  lw         $v0, 0x4($s3)
/* 5E047B4 80089A84 1000A427 */  addiu      $a0, $sp, 0x10
/* 5E047B8 80089A88 0C00468C */  lw         $a2, 0xC($v0)
/* 5E047BC 80089A8C 21288000 */  addu       $a1, $a0, $zero
/* 5E047C0 80089A90 653C010C */  jal        func_8004F194
/* 5E047C4 80089A94 2130D000 */   addu      $a2, $a2, $s0
/* 5E047C8 80089A98 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_24_80089A9C:
/* 5E047CC 80089A9C 30000524 */  addiu      $a1, $zero, 0x30
/* 5E047D0 80089AA0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 5E047D4 80089AA4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 5E047D8 80089AA8 46008792 */  lbu        $a3, 0x46($s4)
/* 5E047DC 80089AAC 09F84000 */  jalr       $v0
/* 5E047E0 80089AB0 1000A627 */   addiu     $a2, $sp, 0x10
/* 5E047E4 80089AB4 9171010C */  jal        rand
/* 5E047E8 80089AB8 00000000 */   nop
/* 5E047EC 80089ABC 03004230 */  andi       $v0, $v0, 0x3
/* 5E047F0 80089AC0 03004224 */  addiu      $v0, $v0, 0x3
/* 5E047F4 80089AC4 000062AE */  sw         $v0, 0x0($s3)
.Llevel_24_80089AC8:
/* 5E047F8 80089AC8 3400BF8F */  lw         $ra, 0x34($sp)
/* 5E047FC 80089ACC 3000B48F */  lw         $s4, 0x30($sp)
/* 5E04800 80089AD0 2C00B38F */  lw         $s3, 0x2C($sp)
/* 5E04804 80089AD4 2800B28F */  lw         $s2, 0x28($sp)
/* 5E04808 80089AD8 2400B18F */  lw         $s1, 0x24($sp)
/* 5E0480C 80089ADC 2000B08F */  lw         $s0, 0x20($sp)
/* 5E04810 80089AE0 3800BD27 */  addiu      $sp, $sp, 0x38
/* 5E04814 80089AE4 0800E003 */  jr         $ra
/* 5E04818 80089AE8 00000000 */   nop
.size func_level_24_8008997C, . - func_level_24_8008997C
