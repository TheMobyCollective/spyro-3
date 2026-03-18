.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80075F2C
/* 962E45C 80075F2C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 962E460 80075F30 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 962E464 80075F34 21888000 */  addu       $s1, $a0, $zero
/* 962E468 80075F38 21200000 */  addu       $a0, $zero, $zero
/* 962E46C 80075F3C 00020324 */  addiu      $v1, $zero, 0x200
/* 962E470 80075F40 80111100 */  sll        $v0, $s1, 6
/* 962E474 80075F44 1800B0AF */  sw         $s0, 0x18($sp)
/* 962E478 80075F48 0780103C */  lui        $s0, %hi(D_80070140)
/* 962E47C 80075F4C 4001108E */  lw         $s0, %lo(D_80070140)($s0)
/* 962E480 80075F50 80004224 */  addiu      $v0, $v0, 0x80
/* 962E484 80075F54 1200A2A7 */  sh         $v0, 0x12($sp)
/* 962E488 80075F58 40000224 */  addiu      $v0, $zero, 0x40
/* 962E48C 80075F5C 2000BFAF */  sw         $ra, 0x20($sp)
/* 962E490 80075F60 1000A3A7 */  sh         $v1, 0x10($sp)
/* 962E494 80075F64 1400A3A7 */  sh         $v1, 0x14($sp)
/* 962E498 80075F68 9968010C */  jal        DrawSync
/* 962E49C 80075F6C 1600A2A7 */   sh        $v0, 0x16($sp)
/* 962E4A0 80075F70 1000A427 */  addiu      $a0, $sp, 0x10
/* 962E4A4 80075F74 1E69010C */  jal        LoadImage
/* 962E4A8 80075F78 21280002 */   addu      $a1, $s0, $zero
/* 962E4AC 80075F7C 9968010C */  jal        DrawSync
/* 962E4B0 80075F80 21200000 */   addu      $a0, $zero, $zero
/* 962E4B4 80075F84 05002012 */  beqz       $s1, .Latlas_80075F9C
/* 962E4B8 80075F88 00000000 */   nop
/* 962E4BC 80075F8C 0880013C */  lui        $at, %hi(D_atlas_8007AE04)
/* 962E4C0 80075F90 04AE20A4 */  sh         $zero, %lo(D_atlas_8007AE04)($at)
/* 962E4C4 80075F94 E9D70108 */  j          .Latlas_80075FA4
/* 962E4C8 80075F98 00000000 */   nop
.Latlas_80075F9C:
/* 962E4CC 80075F9C ACD7010C */  jal        func_atlas_80075EB0
/* 962E4D0 80075FA0 01000424 */   addiu     $a0, $zero, 0x1
.Latlas_80075FA4:
/* 962E4D4 80075FA4 2000BF8F */  lw         $ra, 0x20($sp)
/* 962E4D8 80075FA8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 962E4DC 80075FAC 1800B08F */  lw         $s0, 0x18($sp)
/* 962E4E0 80075FB0 2800BD27 */  addiu      $sp, $sp, 0x28
/* 962E4E4 80075FB4 0800E003 */  jr         $ra
/* 962E4E8 80075FB8 00000000 */   nop
.size func_atlas_80075F2C, . - func_atlas_80075F2C
