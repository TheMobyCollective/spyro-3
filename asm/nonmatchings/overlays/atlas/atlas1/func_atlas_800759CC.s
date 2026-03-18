.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_800759CC
/* 962DEFC 800759CC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 962DF00 800759D0 21308000 */  addu       $a2, $a0, $zero
/* 962DF04 800759D4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 962DF08 800759D8 2188A000 */  addu       $s1, $a1, $zero
/* 962DF0C 800759DC 21280000 */  addu       $a1, $zero, $zero
/* 962DF10 800759E0 0880033C */  lui        $v1, %hi(D_atlas_8007ADEC)
/* 962DF14 800759E4 ECAD6324 */  addiu      $v1, $v1, %lo(D_atlas_8007ADEC)
/* 962DF18 800759E8 21206000 */  addu       $a0, $v1, $zero
/* 962DF1C 800759EC 2000BFAF */  sw         $ra, 0x20($sp)
/* 962DF20 800759F0 1800B0AF */  sw         $s0, 0x18($sp)
.Latlas_800759F4:
/* 962DF24 800759F4 00008284 */  lh         $v0, 0x0($a0)
/* 962DF28 800759F8 00000000 */  nop
/* 962DF2C 800759FC 05004610 */  beq        $v0, $a2, .Latlas_80075A14
/* 962DF30 80075A00 00000000 */   nop
/* 962DF34 80075A04 0100A524 */  addiu      $a1, $a1, 0x1
/* 962DF38 80075A08 0300A228 */  slti       $v0, $a1, 0x3
/* 962DF3C 80075A0C F9FF4014 */  bnez       $v0, .Latlas_800759F4
/* 962DF40 80075A10 02008424 */   addiu     $a0, $a0, 0x2
.Latlas_80075A14:
/* 962DF44 80075A14 21200000 */  addu       $a0, $zero, $zero
/* 962DF48 80075A18 06006324 */  addiu      $v1, $v1, 0x6
/* 962DF4C 80075A1C 40101100 */  sll        $v0, $s1, 1
/* 962DF50 80075A20 21104300 */  addu       $v0, $v0, $v1
/* 962DF54 80075A24 000046A4 */  sh         $a2, 0x0($v0)
/* 962DF58 80075A28 00030224 */  addiu      $v0, $zero, 0x300
/* 962DF5C 80075A2C 1000A2A7 */  sh         $v0, 0x10($sp)
/* 962DF60 80075A30 7E002226 */  addiu      $v0, $s1, 0x7E
/* 962DF64 80075A34 1200A2A7 */  sh         $v0, 0x12($sp)
/* 962DF68 80075A38 00010224 */  addiu      $v0, $zero, 0x100
/* 962DF6C 80075A3C 1400A2A7 */  sh         $v0, 0x14($sp)
/* 962DF70 80075A40 01000224 */  addiu      $v0, $zero, 0x1
/* 962DF74 80075A44 1600A2A7 */  sh         $v0, 0x16($sp)
/* 962DF78 80075A48 C0100500 */  sll        $v0, $a1, 3
/* 962DF7C 80075A4C 21104500 */  addu       $v0, $v0, $a1
/* 962DF80 80075A50 0780103C */  lui        $s0, %hi(D_80070140)
/* 962DF84 80075A54 4001108E */  lw         $s0, %lo(D_80070140)($s0)
/* 962DF88 80075A58 C0120200 */  sll        $v0, $v0, 11
/* 962DF8C 80075A5C 21800202 */  addu       $s0, $s0, $v0
/* 962DF90 80075A60 9968010C */  jal        DrawSync
/* 962DF94 80075A64 1C001026 */   addiu     $s0, $s0, 0x1C
/* 962DF98 80075A68 1000A427 */  addiu      $a0, $sp, 0x10
/* 962DF9C 80075A6C 1E69010C */  jal        LoadImage
/* 962DFA0 80075A70 21280002 */   addu      $a1, $s0, $zero
/* 962DFA4 80075A74 00021026 */  addiu      $s0, $s0, 0x200
/* 962DFA8 80075A78 21200000 */  addu       $a0, $zero, $zero
/* 962DFAC 80075A7C 50000324 */  addiu      $v1, $zero, 0x50
/* 962DFB0 80075A80 04182302 */  sllv       $v1, $v1, $s1
/* 962DFB4 80075A84 00040224 */  addiu      $v0, $zero, 0x400
/* 962DFB8 80075A88 23104300 */  subu       $v0, $v0, $v1
/* 962DFBC 80075A8C 1000A2A7 */  sh         $v0, 0x10($sp)
/* 962DFC0 80075A90 50000224 */  addiu      $v0, $zero, 0x50
/* 962DFC4 80075A94 1400A2A7 */  sh         $v0, 0x14($sp)
/* 962DFC8 80075A98 64000224 */  addiu      $v0, $zero, 0x64
/* 962DFCC 80075A9C 1200A0A7 */  sh         $zero, 0x12($sp)
/* 962DFD0 80075AA0 9968010C */  jal        DrawSync
/* 962DFD4 80075AA4 1600A2A7 */   sh        $v0, 0x16($sp)
/* 962DFD8 80075AA8 1000A427 */  addiu      $a0, $sp, 0x10
/* 962DFDC 80075AAC 1E69010C */  jal        LoadImage
/* 962DFE0 80075AB0 21280002 */   addu      $a1, $s0, $zero
/* 962DFE4 80075AB4 9968010C */  jal        DrawSync
/* 962DFE8 80075AB8 21200000 */   addu      $a0, $zero, $zero
/* 962DFEC 80075ABC 2000BF8F */  lw         $ra, 0x20($sp)
/* 962DFF0 80075AC0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 962DFF4 80075AC4 1800B08F */  lw         $s0, 0x18($sp)
/* 962DFF8 80075AC8 2800BD27 */  addiu      $sp, $sp, 0x28
/* 962DFFC 80075ACC 0800E003 */  jr         $ra
/* 962E000 80075AD0 00000000 */   nop
.size func_atlas_800759CC, . - func_atlas_800759CC
