.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_285_level_36
/* 78DDE2C 8007D8FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 78DDE30 8007D900 1000B0AF */  sw         $s0, 0x10($sp)
/* 78DDE34 8007D904 1400BFAF */  sw         $ra, 0x14($sp)
/* 78DDE38 8007D908 C5E5000C */  jal        func_80039714
/* 78DDE3C 8007D90C 21808000 */   addu      $s0, $a0, $zero
/* 78DDE40 8007D910 07004010 */  beqz       $v0, .Llevel_36_8007D930
/* 78DDE44 8007D914 08000424 */   addiu     $a0, $zero, 0x8
/* 78DDE48 8007D918 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 78DDE4C 8007D91C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 78DDE50 8007D920 0F000524 */  addiu      $a1, $zero, 0xF
/* 78DDE54 8007D924 0C000626 */  addiu      $a2, $s0, 0xC
/* 78DDE58 8007D928 09F84000 */  jalr       $v0
/* 78DDE5C 8007D92C 21380000 */   addu      $a3, $zero, $zero
.Llevel_36_8007D930:
/* 78DDE60 8007D930 1400BF8F */  lw         $ra, 0x14($sp)
/* 78DDE64 8007D934 1000B08F */  lw         $s0, 0x10($sp)
/* 78DDE68 8007D938 1800BD27 */  addiu      $sp, $sp, 0x18
/* 78DDE6C 8007D93C 0800E003 */  jr         $ra
/* 78DDE70 8007D940 00000000 */   nop
.size MobyUpdate_285_level_36, . - MobyUpdate_285_level_36
