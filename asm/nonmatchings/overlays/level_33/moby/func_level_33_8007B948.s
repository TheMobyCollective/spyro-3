.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_33
/* 71B3678 8007B948 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 71B367C 8007B94C 1400B1AF */  sw         $s1, 0x14($sp)
/* 71B3680 8007B950 21888000 */  addu       $s1, $a0, $zero
/* 71B3684 8007B954 1800BFAF */  sw         $ra, 0x18($sp)
/* 71B3688 8007B958 1000B0AF */  sw         $s0, 0x10($sp)
/* 71B368C 8007B95C 48002392 */  lbu        $v1, 0x48($s1)
/* 71B3690 8007B960 0000308E */  lw         $s0, 0x0($s1)
/* 71B3694 8007B964 05006010 */  beqz       $v1, .Llevel_33_8007B97C
/* 71B3698 8007B968 01000224 */   addiu     $v0, $zero, 0x1
/* 71B369C 8007B96C 3D006210 */  beq        $v1, $v0, .Llevel_33_8007BA64
/* 71B36A0 8007B970 00000000 */   nop
/* 71B36A4 8007B974 A0EE0108 */  j          .Llevel_33_8007BA80
/* 71B36A8 8007B978 00000000 */   nop
.Llevel_33_8007B97C:
/* 71B36AC 8007B97C 36002386 */  lh         $v1, 0x36($s1)
/* 71B36B0 8007B980 AD020224 */  addiu      $v0, $zero, 0x2AD
/* 71B36B4 8007B984 13006214 */  bne        $v1, $v0, .Llevel_33_8007B9D4
/* 71B36B8 8007B988 00000000 */   nop
/* 71B36BC 8007B98C 0780023C */  lui        $v0, %hi(D_8007157E)
/* 71B36C0 8007B990 7E154290 */  lbu        $v0, %lo(D_8007157E)($v0)
/* 71B36C4 8007B994 00000000 */  nop
/* 71B36C8 8007B998 03004014 */  bnez       $v0, .Llevel_33_8007B9A8
/* 71B36CC 8007B99C 00000000 */   nop
/* 71B36D0 8007B9A0 75EE0108 */  j          .Llevel_33_8007B9D4
/* 71B36D4 8007B9A4 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_33_8007B9A8:
/* 71B36D8 8007B9A8 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2E)
/* 71B36DC 8007B9AC FA6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2E)($v0)
/* 71B36E0 8007B9B0 0780013C */  lui        $at, %hi(D_80070300)
/* 71B36E4 8007B9B4 21082200 */  addu       $at, $at, $v0
/* 71B36E8 8007B9B8 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 71B36EC 8007B9BC 00000000 */  nop
/* 71B36F0 8007B9C0 01004230 */  andi       $v0, $v0, 0x1
/* 71B36F4 8007B9C4 02004014 */  bnez       $v0, .Llevel_33_8007B9D0
/* 71B36F8 8007B9C8 02000224 */   addiu     $v0, $zero, 0x2
/* 71B36FC 8007B9CC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_33_8007B9D0:
/* 71B3700 8007B9D0 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_33_8007B9D4:
/* 71B3704 8007B9D4 02000392 */  lbu        $v1, 0x2($s0)
/* 71B3708 8007B9D8 02000224 */  addiu      $v0, $zero, 0x2
/* 71B370C 8007B9DC 02006214 */  bne        $v1, $v0, .Llevel_33_8007B9E8
/* 71B3710 8007B9E0 00000000 */   nop
/* 71B3714 8007B9E4 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_33_8007B9E8:
/* 71B3718 8007B9E8 05000292 */  lbu        $v0, 0x5($s0)
/* 71B371C 8007B9EC 00000000 */  nop
/* 71B3720 8007B9F0 10004014 */  bnez       $v0, .Llevel_33_8007BA34
/* 71B3724 8007B9F4 21202002 */   addu      $a0, $s1, $zero
/* 71B3728 8007B9F8 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 71B372C 8007B9FC 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 71B3730 8007BA00 00000000 */  nop
/* 71B3734 8007BA04 10004230 */  andi       $v0, $v0, 0x10
/* 71B3738 8007BA08 06004010 */  beqz       $v0, .Llevel_33_8007BA24
/* 71B373C 8007BA0C 00000000 */   nop
/* 71B3740 8007BA10 EFDE000C */  jal        func_80037BBC
/* 71B3744 8007BA14 21280000 */   addu      $a1, $zero, $zero
/* 71B3748 8007BA18 0A004014 */  bnez       $v0, .Llevel_33_8007BA44
/* 71B374C 8007BA1C 21202002 */   addu      $a0, $s1, $zero
/* 71B3750 8007BA20 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_33_8007BA24:
/* 71B3754 8007BA24 05000292 */  lbu        $v0, 0x5($s0)
/* 71B3758 8007BA28 00000000 */  nop
/* 71B375C 8007BA2C 14004010 */  beqz       $v0, .Llevel_33_8007BA80
/* 71B3760 8007BA30 21202002 */   addu      $a0, $s1, $zero
.Llevel_33_8007BA34:
/* 71B3764 8007BA34 EFDE000C */  jal        func_80037BBC
/* 71B3768 8007BA38 21280000 */   addu      $a1, $zero, $zero
/* 71B376C 8007BA3C 07004010 */  beqz       $v0, .Llevel_33_8007BA5C
/* 71B3770 8007BA40 21202002 */   addu      $a0, $s1, $zero
.Llevel_33_8007BA44:
/* 71B3774 8007BA44 21280000 */  addu       $a1, $zero, $zero
/* 71B3778 8007BA48 B944010C */  jal        func_800512E4
/* 71B377C 8007BA4C 21300000 */   addu      $a2, $zero, $zero
/* 71B3780 8007BA50 01000224 */  addiu      $v0, $zero, 0x1
/* 71B3784 8007BA54 A0EE0108 */  j          .Llevel_33_8007BA80
/* 71B3788 8007BA58 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_33_8007BA5C:
/* 71B378C 8007BA5C A0EE0108 */  j          .Llevel_33_8007BA80
/* 71B3790 8007BA60 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_33_8007BA64:
/* 71B3794 8007BA64 0780023C */  lui        $v0, %hi(D_8006E344)
/* 71B3798 8007BA68 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 71B379C 8007BA6C 00000000 */  nop
/* 71B37A0 8007BA70 03004310 */  beq        $v0, $v1, .Llevel_33_8007BA80
/* 71B37A4 8007BA74 00000000 */   nop
/* 71B37A8 8007BA78 200003AE */  sw         $v1, 0x20($s0)
/* 71B37AC 8007BA7C 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_33_8007BA80:
/* 71B37B0 8007BA80 1800BF8F */  lw         $ra, 0x18($sp)
/* 71B37B4 8007BA84 1400B18F */  lw         $s1, 0x14($sp)
/* 71B37B8 8007BA88 1000B08F */  lw         $s0, 0x10($sp)
/* 71B37BC 8007BA8C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 71B37C0 8007BA90 0800E003 */  jr         $ra
/* 71B37C4 8007BA94 00000000 */   nop
.size MobyUpdate_408_level_33, . - MobyUpdate_408_level_33
