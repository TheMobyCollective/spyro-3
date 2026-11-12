.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_993_level_24
/* 5DF814C 8007D41C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5DF8150 8007D420 1000B0AF */  sw         $s0, 0x10($sp)
/* 5DF8154 8007D424 21808000 */  addu       $s0, $a0, $zero
/* 5DF8158 8007D428 1400BFAF */  sw         $ra, 0x14($sp)
/* 5DF815C 8007D42C 0000038E */  lw         $v1, 0x0($s0)
/* 5DF8160 8007D430 00000000 */  nop
/* 5DF8164 8007D434 0000628C */  lw         $v0, 0x0($v1)
/* 5DF8168 8007D438 0680013C */  lui        $at, %hi(D_80066FCC)
/* 5DF816C 8007D43C 21082200 */  addu       $at, $at, $v0
/* 5DF8170 8007D440 CC6F2290 */  lbu        $v0, %lo(D_80066FCC)($at)
/* 5DF8174 8007D444 0780013C */  lui        $at, %hi(D_80070300)
/* 5DF8178 8007D448 21082200 */  addu       $at, $at, $v0
/* 5DF817C 8007D44C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 5DF8180 8007D450 00000000 */  nop
/* 5DF8184 8007D454 01004230 */  andi       $v0, $v0, 0x1
/* 5DF8188 8007D458 04004010 */  beqz       $v0, .Llevel_24_8007D46C
/* 5DF818C 8007D45C FC000524 */   addiu     $a1, $zero, 0xFC
/* 5DF8190 8007D460 0400648C */  lw         $a0, 0x4($v1)
/* 5DF8194 8007D464 B687000C */  jal        func_80021ED8
/* 5DF8198 8007D468 21300000 */   addu      $a2, $zero, $zero
.Llevel_24_8007D46C:
/* 5DF819C 8007D46C C656010C */  jal        func_80055B18
/* 5DF81A0 8007D470 21200002 */   addu      $a0, $s0, $zero
/* 5DF81A4 8007D474 1400BF8F */  lw         $ra, 0x14($sp)
/* 5DF81A8 8007D478 1000B08F */  lw         $s0, 0x10($sp)
/* 5DF81AC 8007D47C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5DF81B0 8007D480 0800E003 */  jr         $ra
/* 5DF81B4 8007D484 00000000 */   nop
.size MobyUpdate_993_level_24, . - MobyUpdate_993_level_24
