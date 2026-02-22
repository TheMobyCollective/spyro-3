.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_43_8007A28C
/* 879F7BC 8007A28C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 879F7C0 8007A290 1400B1AF */  sw         $s1, 0x14($sp)
/* 879F7C4 8007A294 21888000 */  addu       $s1, $a0, $zero
/* 879F7C8 8007A298 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 879F7CC 8007A29C 1800B2AF */  sw         $s2, 0x18($sp)
/* 879F7D0 8007A2A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 879F7D4 8007A2A4 48002292 */  lbu        $v0, 0x48($s1)
/* 879F7D8 8007A2A8 0000258E */  lw         $a1, 0x0($s1)
/* 879F7DC 8007A2AC 43004014 */  bnez       $v0, .Llevel_43_8007A3BC
/* 879F7E0 8007A2B0 48003026 */   addiu     $s0, $s1, 0x48
/* 879F7E4 8007A2B4 0780123C */  lui        $s2, %hi(D_80070328)
/* 879F7E8 8007A2B8 28035226 */  addiu      $s2, $s2, %lo(D_80070328)
/* 879F7EC 8007A2BC 21204002 */  addu       $a0, $s2, $zero
/* 879F7F0 8007A2C0 21300000 */  addu       $a2, $zero, $zero
/* 879F7F4 8007A2C4 88D8000C */  jal        func_80036220
/* 879F7F8 8007A2C8 00020724 */   addiu     $a3, $zero, 0x200
/* 879F7FC 8007A2CC 47004010 */  beqz       $v0, .Llevel_43_8007A3EC
/* 879F800 8007A2D0 21282002 */   addu      $a1, $s1, $zero
/* 879F804 8007A2D4 0780033C */  lui        $v1, %hi(D_8006C654)
/* 879F808 8007A2D8 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 879F80C 8007A2DC 03000224 */  addiu      $v0, $zero, 0x3
/* 879F810 8007A2E0 0680013C */  lui        $at, %hi(D_80066BC8 + 16)
/* 879F814 8007A2E4 D86B22A0 */  sb         $v0, %lo(D_80066BC8 + 16)($at)
/* 879F818 8007A2E8 01000224 */  addiu      $v0, $zero, 0x1
/* 879F81C 8007A2EC 0780013C */  lui        $at, %hi(D_800719DC)
/* 879F820 8007A2F0 DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 879F824 8007A2F4 23006490 */  lbu        $a0, 0x23($v1)
/* 879F828 8007A2F8 D4EE000C */  jal        PlaySound
/* 879F82C 8007A2FC A1000624 */   addiu     $a2, $zero, 0xA1
/* 879F830 8007A300 D3000424 */  addiu      $a0, $zero, 0xD3
/* 879F834 8007A304 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 879F838 8007A308 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 879F83C 8007A30C 00000000 */  nop
/* 879F840 8007A310 09F84000 */  jalr       $v0
/* 879F844 8007A314 21282002 */   addu      $a1, $s1, $zero
/* 879F848 8007A318 21804000 */  addu       $s0, $v0, $zero
/* 879F84C 8007A31C 24000012 */  beqz       $s0, .Llevel_43_8007A3B0
/* 879F850 8007A320 0C000426 */   addiu     $a0, $s0, 0xC
/* 879F854 8007A324 5E3C010C */  jal        func_8004F178
/* 879F858 8007A328 21284002 */   addu      $a1, $s2, $zero
/* 879F85C 8007A32C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 879F860 8007A330 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 879F864 8007A334 00000000 */  nop
/* 879F868 8007A338 40100200 */  sll        $v0, $v0, 1
/* 879F86C 8007A33C 0680013C */  lui        $at, %hi(D_80065920)
/* 879F870 8007A340 21082200 */  addu       $at, $at, $v0
/* 879F874 8007A344 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 879F878 8007A348 00000000 */  nop
/* 879F87C 8007A34C 40100300 */  sll        $v0, $v1, 1
/* 879F880 8007A350 21104300 */  addu       $v0, $v0, $v1
/* 879F884 8007A354 C0100200 */  sll        $v0, $v0, 3
/* 879F888 8007A358 21104300 */  addu       $v0, $v0, $v1
/* 879F88C 8007A35C 0C00038E */  lw         $v1, 0xC($s0)
/* 879F890 8007A360 C3110200 */  sra        $v0, $v0, 7
/* 879F894 8007A364 21186200 */  addu       $v1, $v1, $v0
/* 879F898 8007A368 0C0003AE */  sw         $v1, 0xC($s0)
/* 879F89C 8007A36C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 879F8A0 8007A370 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 879F8A4 8007A374 1400038E */  lw         $v1, 0x14($s0)
/* 879F8A8 8007A378 40100200 */  sll        $v0, $v0, 1
/* 879F8AC 8007A37C 0680013C */  lui        $at, %hi(D_800658A0)
/* 879F8B0 8007A380 21082200 */  addu       $at, $at, $v0
/* 879F8B4 8007A384 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 879F8B8 8007A388 F4016324 */  addiu      $v1, $v1, 0x1F4
/* 879F8BC 8007A38C 140003AE */  sw         $v1, 0x14($s0)
/* 879F8C0 8007A390 1000038E */  lw         $v1, 0x10($s0)
/* 879F8C4 8007A394 40100400 */  sll        $v0, $a0, 1
/* 879F8C8 8007A398 21104400 */  addu       $v0, $v0, $a0
/* 879F8CC 8007A39C C0100200 */  sll        $v0, $v0, 3
/* 879F8D0 8007A3A0 21104400 */  addu       $v0, $v0, $a0
/* 879F8D4 8007A3A4 C3110200 */  sra        $v0, $v0, 7
/* 879F8D8 8007A3A8 21186200 */  addu       $v1, $v1, $v0
/* 879F8DC 8007A3AC 100003AE */  sw         $v1, 0x10($s0)
.Llevel_43_8007A3B0:
/* 879F8E0 8007A3B0 01000224 */  addiu      $v0, $zero, 0x1
/* 879F8E4 8007A3B4 FBE80108 */  j          .Llevel_43_8007A3EC
/* 879F8E8 8007A3B8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_43_8007A3BC:
/* 879F8EC 8007A3BC 21200002 */  addu       $a0, $s0, $zero
/* 879F8F0 8007A3C0 0780063C */  lui        $a2, %hi(D_8006D088)
/* 879F8F4 8007A3C4 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 879F8F8 8007A3C8 EDED000C */  jal        func_8003B7B4
/* 879F8FC 8007A3CC 01000524 */   addiu     $a1, $zero, 0x1
/* 879F900 8007A3D0 21200002 */  addu       $a0, $s0, $zero
/* 879F904 8007A3D4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 879F908 8007A3D8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 879F90C 8007A3DC EDED000C */  jal        func_8003B7B4
/* 879F910 8007A3E0 01000524 */   addiu     $a1, $zero, 0x1
/* 879F914 8007A3E4 C656010C */  jal        func_80055B18
/* 879F918 8007A3E8 21202002 */   addu      $a0, $s1, $zero
.Llevel_43_8007A3EC:
/* 879F91C 8007A3EC 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 879F920 8007A3F0 1800B28F */  lw         $s2, 0x18($sp)
/* 879F924 8007A3F4 1400B18F */  lw         $s1, 0x14($sp)
/* 879F928 8007A3F8 1000B08F */  lw         $s0, 0x10($sp)
/* 879F92C 8007A3FC 2000BD27 */  addiu      $sp, $sp, 0x20
/* 879F930 8007A400 0800E003 */  jr         $ra
/* 879F934 8007A404 00000000 */   nop
.size func_level_43_8007A28C, . - func_level_43_8007A28C
