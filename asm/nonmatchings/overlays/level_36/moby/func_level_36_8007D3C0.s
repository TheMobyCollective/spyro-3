.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_280_level_36
/* 78DD8F0 8007D3C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 78DD8F4 8007D3C4 1800B0AF */  sw         $s0, 0x18($sp)
/* 78DD8F8 8007D3C8 21808000 */  addu       $s0, $a0, $zero
/* 78DD8FC 8007D3CC 2000BFAF */  sw         $ra, 0x20($sp)
/* 78DD900 8007D3D0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 78DD904 8007D3D4 48000392 */  lbu        $v1, 0x48($s0)
/* 78DD908 8007D3D8 0000118E */  lw         $s1, 0x0($s0)
/* 78DD90C 8007D3DC 05006010 */  beqz       $v1, .Llevel_36_8007D3F4
/* 78DD910 8007D3E0 01000224 */   addiu     $v0, $zero, 0x1
/* 78DD914 8007D3E4 0A006210 */  beq        $v1, $v0, .Llevel_36_8007D410
/* 78DD918 8007D3E8 21200002 */   addu      $a0, $s0, $zero
/* 78DD91C 8007D3EC 15F50108 */  j          .Llevel_36_8007D454
/* 78DD920 8007D3F0 00000000 */   nop
.Llevel_36_8007D3F4:
/* 78DD924 8007D3F4 1800028E */  lw         $v0, 0x18($s0)
/* 78DD928 8007D3F8 0004033C */  lui        $v1, (0x4000000 >> 16)
/* 78DD92C 8007D3FC 24104300 */  and        $v0, $v0, $v1
/* 78DD930 8007D400 14004010 */  beqz       $v0, .Llevel_36_8007D454
/* 78DD934 8007D404 01000224 */   addiu     $v0, $zero, 0x1
/* 78DD938 8007D408 15F50108 */  j          .Llevel_36_8007D454
/* 78DD93C 8007D40C 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_36_8007D410:
/* 78DD940 8007D410 21280000 */  addu       $a1, $zero, $zero
/* 78DD944 8007D414 AFEE000C */  jal        func_8003BABC
/* 78DD948 8007D418 21300000 */   addu      $a2, $zero, $zero
/* 78DD94C 8007D41C 03000424 */  addiu      $a0, $zero, 0x3
/* 78DD950 8007D420 00020224 */  addiu      $v0, $zero, 0x200
/* 78DD954 8007D424 1400A2AF */  sw         $v0, 0x14($sp)
/* 78DD958 8007D428 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 78DD95C 8007D42C 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 78DD960 8007D430 1D010524 */  addiu      $a1, $zero, 0x11D
/* 78DD964 8007D434 1000A0AF */  sw         $zero, 0x10($sp)
/* 78DD968 8007D438 0000278E */  lw         $a3, 0x0($s1)
/* 78DD96C 8007D43C 09F84000 */  jalr       $v0
/* 78DD970 8007D440 21300002 */   addu      $a2, $s0, $zero
/* 78DD974 8007D444 80EE000C */  jal        func_8003BA00
/* 78DD978 8007D448 21200002 */   addu      $a0, $s0, $zero
/* 78DD97C 8007D44C C656010C */  jal        func_80055B18
/* 78DD980 8007D450 21200002 */   addu      $a0, $s0, $zero
.Llevel_36_8007D454:
/* 78DD984 8007D454 2000BF8F */  lw         $ra, 0x20($sp)
/* 78DD988 8007D458 1C00B18F */  lw         $s1, 0x1C($sp)
/* 78DD98C 8007D45C 1800B08F */  lw         $s0, 0x18($sp)
/* 78DD990 8007D460 2800BD27 */  addiu      $sp, $sp, 0x28
/* 78DD994 8007D464 0800E003 */  jr         $ra
/* 78DD998 8007D468 00000000 */   nop
.size MobyUpdate_280_level_36, . - MobyUpdate_280_level_36
