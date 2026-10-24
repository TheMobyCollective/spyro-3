.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_957_level_18
/* 4EB579C 80082A6C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4EB57A0 80082A70 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EB57A4 80082A74 21808000 */  addu       $s0, $a0, $zero
/* 4EB57A8 80082A78 1400B1AF */  sw         $s1, 0x14($sp)
/* 4EB57AC 80082A7C 0780113C */  lui        $s1, %hi(D_80071599)
/* 4EB57B0 80082A80 99153192 */  lbu        $s1, %lo(D_80071599)($s1)
/* 4EB57B4 80082A84 01000224 */  addiu      $v0, $zero, 0x1
/* 4EB57B8 80082A88 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 4EB57BC 80082A8C 1800B2AF */  sw         $s2, 0x18($sp)
/* 4EB57C0 80082A90 0000128E */  lw         $s2, 0x0($s0)
/* 4EB57C4 80082A94 1C002216 */  bne        $s1, $v0, .Llevel_18_80082B08
/* 4EB57C8 80082A98 00000000 */   nop
/* 4EB57CC 80082A9C 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB57D0 80082AA0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB57D4 80082AA4 CD3C010C */  jal        func_8004F334
/* 4EB57D8 80082AA8 0C000426 */   addiu     $a0, $s0, 0xC
/* 4EB57DC 80082AAC 00084228 */  slti       $v0, $v0, 0x800
/* 4EB57E0 80082AB0 15004010 */  beqz       $v0, .Llevel_18_80082B08
/* 4EB57E4 80082AB4 00000000 */   nop
/* 4EB57E8 80082AB8 0780023C */  lui        $v0, %hi(D_8006E344)
/* 4EB57EC 80082ABC 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 4EB57F0 80082AC0 00000000 */  nop
/* 4EB57F4 80082AC4 10005110 */  beq        $v0, $s1, .Llevel_18_80082B08
/* 4EB57F8 80082AC8 21300000 */   addu      $a2, $zero, $zero
/* 4EB57FC 80082ACC 0000428E */  lw         $v0, 0x0($s2)
/* 4EB5800 80082AD0 98000724 */  addiu      $a3, $zero, 0x98
/* 4EB5804 80082AD4 40180200 */  sll        $v1, $v0, 1
/* 4EB5808 80082AD8 21186200 */  addu       $v1, $v1, $v0
/* 4EB580C 80082ADC 80180300 */  sll        $v1, $v1, 2
/* 4EB5810 80082AE0 23186200 */  subu       $v1, $v1, $v0
/* 4EB5814 80082AE4 0780023C */  lui        $v0, %hi(D_8006C550)
/* 4EB5818 80082AE8 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 4EB581C 80082AEC C0180300 */  sll        $v1, $v1, 3
/* 4EB5820 80082AF0 21104300 */  addu       $v0, $v0, $v1
/* 4EB5824 80082AF4 46004590 */  lbu        $a1, 0x46($v0)
/* 4EB5828 80082AF8 514F000C */  jal        func_80013D44
/* 4EB582C 80082AFC 0C004424 */   addiu     $a0, $v0, 0xC
/* 4EB5830 80082B00 C656010C */  jal        func_80055B18
/* 4EB5834 80082B04 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_80082B08:
/* 4EB5838 80082B08 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4EB583C 80082B0C 1800B28F */  lw         $s2, 0x18($sp)
/* 4EB5840 80082B10 1400B18F */  lw         $s1, 0x14($sp)
/* 4EB5844 80082B14 1000B08F */  lw         $s0, 0x10($sp)
/* 4EB5848 80082B18 2000BD27 */  addiu      $sp, $sp, 0x20
/* 4EB584C 80082B1C 0800E003 */  jr         $ra
/* 4EB5850 80082B20 00000000 */   nop
.size MobyUpdate_957_level_18, . - MobyUpdate_957_level_18
