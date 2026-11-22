.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_687_level_45
/* 8D38284 8007BD54 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8D38288 8007BD58 1000B0AF */  sw         $s0, 0x10($sp)
/* 8D3828C 8007BD5C 21808000 */  addu       $s0, $a0, $zero
/* 8D38290 8007BD60 1800BFAF */  sw         $ra, 0x18($sp)
/* 8D38294 8007BD64 1400B1AF */  sw         $s1, 0x14($sp)
/* 8D38298 8007BD68 1800028E */  lw         $v0, 0x18($s0)
/* 8D3829C 8007BD6C 0000118E */  lw         $s1, 0x0($s0)
/* 8D382A0 8007BD70 21004010 */  beqz       $v0, .Llevel_45_8007BDF8
/* 8D382A4 8007BD74 01000224 */   addiu     $v0, $zero, 0x1
/* 8D382A8 8007BD78 48000392 */  lbu        $v1, 0x48($s0)
/* 8D382AC 8007BD7C 00000000 */  nop
/* 8D382B0 8007BD80 1E006210 */  beq        $v1, $v0, .Llevel_45_8007BDFC
/* 8D382B4 8007BD84 21280000 */   addu      $a1, $zero, $zero
/* 8D382B8 8007BD88 AFEE000C */  jal        func_8003BABC
/* 8D382BC 8007BD8C 21300000 */   addu      $a2, $zero, $zero
/* 8D382C0 8007BD90 21200002 */  addu       $a0, $s0, $zero
/* 8D382C4 8007BD94 10000524 */  addiu      $a1, $zero, 0x10
/* 8D382C8 8007BD98 21300000 */  addu       $a2, $zero, $zero
/* 8D382CC 8007BD9C 9ADA000C */  jal        func_80036A68
/* 8D382D0 8007BDA0 21380000 */   addu      $a3, $zero, $zero
/* 8D382D4 8007BDA4 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 8D382D8 8007BDA8 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 8D382DC 8007BDAC 00000000 */  nop
/* 8D382E0 8007BDB0 09F84000 */  jalr       $v0
/* 8D382E4 8007BDB4 21200002 */   addu      $a0, $s0, $zero
/* 8D382E8 8007BDB8 21200002 */  addu       $a0, $s0, $zero
/* 8D382EC 8007BDBC 04002526 */  addiu      $a1, $s1, 0x4
/* 8D382F0 8007BDC0 06000624 */  addiu      $a2, $zero, 0x6
/* 8D382F4 8007BDC4 C5E3000C */  jal        func_80038F14
/* 8D382F8 8007BDC8 01000724 */   addiu     $a3, $zero, 0x1
/* 8D382FC 8007BDCC 0780033C */  lui        $v1, %hi(D_80070328 + 0xB4)
/* 8D38300 8007BDD0 DC03638C */  lw         $v1, %lo(D_80070328 + 0xB4)($v1)
/* 8D38304 8007BDD4 06000224 */  addiu      $v0, $zero, 0x6
/* 8D38308 8007BDD8 120022A2 */  sb         $v0, 0x12($s1)
/* 8D3830C 8007BDDC 78000224 */  addiu      $v0, $zero, 0x78
/* 8D38310 8007BDE0 1A0022A2 */  sb         $v0, 0x1A($s1)
/* 8D38314 8007BDE4 08002296 */  lhu        $v0, 0x8($s1)
/* 8D38318 8007BDE8 43190300 */  sra        $v1, $v1, 5
/* 8D3831C 8007BDEC 21104300 */  addu       $v0, $v0, $v1
/* 8D38320 8007BDF0 080022A6 */  sh         $v0, 0x8($s1)
/* 8D38324 8007BDF4 080000AE */  sw         $zero, 0x8($s0)
.Llevel_45_8007BDF8:
/* 8D38328 8007BDF8 48000392 */  lbu        $v1, 0x48($s0)
.Llevel_45_8007BDFC:
/* 8D3832C 8007BDFC 00000000 */  nop
/* 8D38330 8007BE00 05006010 */  beqz       $v1, .Llevel_45_8007BE18
/* 8D38334 8007BE04 01000224 */   addiu     $v0, $zero, 0x1
/* 8D38338 8007BE08 11006210 */  beq        $v1, $v0, .Llevel_45_8007BE50
/* 8D3833C 8007BE0C 21200002 */   addu      $a0, $s0, $zero
/* 8D38340 8007BE10 ADEF0108 */  j          .Llevel_45_8007BEB4
/* 8D38344 8007BE14 00000000 */   nop
.Llevel_45_8007BE18:
/* 8D38348 8007BE18 21200002 */  addu       $a0, $s0, $zero
/* 8D3834C 8007BE1C 04000524 */  addiu      $a1, $zero, 0x4
/* 8D38350 8007BE20 21300000 */  addu       $a2, $zero, $zero
/* 8D38354 8007BE24 CFD5000C */  jal        func_8003573C
/* 8D38358 8007BE28 21380000 */   addu      $a3, $zero, $zero
/* 8D3835C 8007BE2C 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 8D38360 8007BE30 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 8D38364 8007BE34 00000000 */  nop
/* 8D38368 8007BE38 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 8D3836C 8007BE3C 0200422C */  sltiu      $v0, $v0, 0x2
/* 8D38370 8007BE40 1C004010 */  beqz       $v0, .Llevel_45_8007BEB4
/* 8D38374 8007BE44 00000000 */   nop
/* 8D38378 8007BE48 A0EF0108 */  j          .Llevel_45_8007BE80
/* 8D3837C 8007BE4C 00000000 */   nop
.Llevel_45_8007BE50:
/* 8D38380 8007BE50 65D4000C */  jal        func_80035194
/* 8D38384 8007BE54 04002526 */   addiu     $a1, $s1, 0x4
/* 8D38388 8007BE58 00010324 */  addiu      $v1, $zero, 0x100
/* 8D3838C 8007BE5C 0C004314 */  bne        $v0, $v1, .Llevel_45_8007BE90
/* 8D38390 8007BE60 21200002 */   addu      $a0, $s0, $zero
/* 8D38394 8007BE64 4957010C */  jal        func_80055D24
/* 8D38398 8007BE68 04000524 */   addiu     $a1, $zero, 0x4
/* 8D3839C 8007BE6C 80EE000C */  jal        func_8003BA00
/* 8D383A0 8007BE70 21200002 */   addu      $a0, $s0, $zero
/* 8D383A4 8007BE74 21200002 */  addu       $a0, $s0, $zero
/* 8D383A8 8007BE78 6EDA000C */  jal        func_800369B8
/* 8D383AC 8007BE7C 30000524 */   addiu     $a1, $zero, 0x30
.Llevel_45_8007BE80:
/* 8D383B0 8007BE80 C656010C */  jal        func_80055B18
/* 8D383B4 8007BE84 21200002 */   addu      $a0, $s0, $zero
/* 8D383B8 8007BE88 ADEF0108 */  j          .Llevel_45_8007BEB4
/* 8D383BC 8007BE8C 00000000 */   nop
.Llevel_45_8007BE90:
/* 8D383C0 8007BE90 3D000292 */  lbu        $v0, 0x3D($s0)
/* 8D383C4 8007BE94 00000000 */  nop
/* 8D383C8 8007BE98 0200422C */  sltiu      $v0, $v0, 0x2
/* 8D383CC 8007BE9C 05004014 */  bnez       $v0, .Llevel_45_8007BEB4
/* 8D383D0 8007BEA0 00000000 */   nop
/* 8D383D4 8007BEA4 45000292 */  lbu        $v0, 0x45($s0)
/* 8D383D8 8007BEA8 00000000 */  nop
/* 8D383DC 8007BEAC 10004224 */  addiu      $v0, $v0, 0x10
/* 8D383E0 8007BEB0 450002A2 */  sb         $v0, 0x45($s0)
.Llevel_45_8007BEB4:
/* 8D383E4 8007BEB4 1800BF8F */  lw         $ra, 0x18($sp)
/* 8D383E8 8007BEB8 1400B18F */  lw         $s1, 0x14($sp)
/* 8D383EC 8007BEBC 1000B08F */  lw         $s0, 0x10($sp)
/* 8D383F0 8007BEC0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 8D383F4 8007BEC4 0800E003 */  jr         $ra
/* 8D383F8 8007BEC8 00000000 */   nop
.size MobyUpdate_687_level_45, . - MobyUpdate_687_level_45
