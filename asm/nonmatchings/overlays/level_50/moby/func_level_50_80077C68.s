.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_50
/* 95CC198 80077C68 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 95CC19C 80077C6C 2000B0AF */  sw         $s0, 0x20($sp)
/* 95CC1A0 80077C70 21808000 */  addu       $s0, $a0, $zero
/* 95CC1A4 80077C74 2800BFAF */  sw         $ra, 0x28($sp)
/* 95CC1A8 80077C78 2400B1AF */  sw         $s1, 0x24($sp)
/* 95CC1AC 80077C7C 0000118E */  lw         $s1, 0x0($s0)
/* 95CC1B0 80077C80 02000524 */  addiu      $a1, $zero, 0x2
/* 95CC1B4 80077C84 69D6000C */  jal        func_800359A4
/* 95CC1B8 80077C88 21202002 */   addu      $a0, $s1, $zero
/* 95CC1BC 80077C8C 03004010 */  beqz       $v0, .Llevel_50_80077C9C
/* 95CC1C0 80077C90 00000000 */   nop
/* 95CC1C4 80077C94 C656010C */  jal        func_80055B18
/* 95CC1C8 80077C98 21200002 */   addu      $a0, $s0, $zero
.Llevel_50_80077C9C:
/* 95CC1CC 80077C9C 02002392 */  lbu        $v1, 0x2($s1)
/* 95CC1D0 80077CA0 00000000 */  nop
/* 95CC1D4 80077CA4 0E006014 */  bnez       $v1, .Llevel_50_80077CE0
/* 95CC1D8 80077CA8 01000224 */   addiu     $v0, $zero, 0x1
/* 95CC1DC 80077CAC 00002286 */  lh         $v0, 0x0($s1)
/* 95CC1E0 80077CB0 00000000 */  nop
/* 95CC1E4 80077CB4 21184000 */  addu       $v1, $v0, $zero
/* 95CC1E8 80077CB8 08004228 */  slti       $v0, $v0, 0x8
/* 95CC1EC 80077CBC 04004010 */  beqz       $v0, .Llevel_50_80077CD0
/* 95CC1F0 80077CC0 00110300 */   sll       $v0, $v1, 4
/* 95CC1F4 80077CC4 540002A2 */  sb         $v0, 0x54($s0)
/* 95CC1F8 80077CC8 55DF0108 */  j          .Llevel_50_80077D54
/* 95CC1FC 80077CCC 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_50_80077CD0:
/* 95CC200 80077CD0 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 95CC204 80077CD4 00110200 */  sll        $v0, $v0, 4
/* 95CC208 80077CD8 55DF0108 */  j          .Llevel_50_80077D54
/* 95CC20C 80077CDC 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_50_80077CE0:
/* 95CC210 80077CE0 0E006214 */  bne        $v1, $v0, .Llevel_50_80077D1C
/* 95CC214 80077CE4 02000224 */   addiu     $v0, $zero, 0x2
/* 95CC218 80077CE8 00002286 */  lh         $v0, 0x0($s1)
/* 95CC21C 80077CEC 00000000 */  nop
/* 95CC220 80077CF0 21184000 */  addu       $v1, $v0, $zero
/* 95CC224 80077CF4 08004228 */  slti       $v0, $v0, 0x8
/* 95CC228 80077CF8 04004010 */  beqz       $v0, .Llevel_50_80077D0C
/* 95CC22C 80077CFC 00110300 */   sll       $v0, $v1, 4
/* 95CC230 80077D00 550002A2 */  sb         $v0, 0x55($s0)
/* 95CC234 80077D04 55DF0108 */  j          .Llevel_50_80077D54
/* 95CC238 80077D08 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_50_80077D0C:
/* 95CC23C 80077D0C F8FF6224 */  addiu      $v0, $v1, -0x8
/* 95CC240 80077D10 00110200 */  sll        $v0, $v0, 4
/* 95CC244 80077D14 55DF0108 */  j          .Llevel_50_80077D54
/* 95CC248 80077D18 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_50_80077D1C:
/* 95CC24C 80077D1C 0D006214 */  bne        $v1, $v0, .Llevel_50_80077D54
/* 95CC250 80077D20 00000000 */   nop
/* 95CC254 80077D24 54000292 */  lbu        $v0, 0x54($s0)
/* 95CC258 80077D28 56000392 */  lbu        $v1, 0x56($s0)
/* 95CC25C 80077D2C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 95CC260 80077D30 540002A2 */  sb         $v0, 0x54($s0)
/* 95CC264 80077D34 55000292 */  lbu        $v0, 0x55($s0)
/* 95CC268 80077D38 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 95CC26C 80077D3C 560003A2 */  sb         $v1, 0x56($s0)
/* 95CC270 80077D40 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 95CC274 80077D44 550002A2 */  sb         $v0, 0x55($s0)
/* 95CC278 80077D48 00002296 */  lhu        $v0, 0x0($s1)
/* 95CC27C 80077D4C 00000000 */  nop
/* 95CC280 80077D50 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_50_80077D54:
/* 95CC284 80077D54 03002292 */  lbu        $v0, 0x3($s1)
/* 95CC288 80077D58 00000000 */  nop
/* 95CC28C 80077D5C 06004014 */  bnez       $v0, .Llevel_50_80077D78
/* 95CC290 80077D60 00000000 */   nop
/* 95CC294 80077D64 00002292 */  lbu        $v0, 0x0($s1)
/* 95CC298 80077D68 00000000 */  nop
/* 95CC29C 80077D6C 40100200 */  sll        $v0, $v0, 1
/* 95CC2A0 80077D70 62DF0108 */  j          .Llevel_50_80077D88
/* 95CC2A4 80077D74 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_50_80077D78:
/* 95CC2A8 80077D78 00002292 */  lbu        $v0, 0x0($s1)
/* 95CC2AC 80077D7C 00000000 */  nop
/* 95CC2B0 80077D80 80100200 */  sll        $v0, $v0, 2
/* 95CC2B4 80077D84 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_50_80077D88:
/* 95CC2B8 80077D88 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 95CC2BC 80077D8C 2800BF8F */  lw         $ra, 0x28($sp)
/* 95CC2C0 80077D90 2400B18F */  lw         $s1, 0x24($sp)
/* 95CC2C4 80077D94 2000B08F */  lw         $s0, 0x20($sp)
/* 95CC2C8 80077D98 3000BD27 */  addiu      $sp, $sp, 0x30
/* 95CC2CC 80077D9C 0800E003 */  jr         $ra
/* 95CC2D0 80077DA0 00000000 */   nop
.size MobyUpdate_326_level_50, . - MobyUpdate_326_level_50
