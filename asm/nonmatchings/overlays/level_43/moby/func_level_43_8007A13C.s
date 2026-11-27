.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_43
/* 879F66C 8007A13C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 879F670 8007A140 1400B1AF */  sw         $s1, 0x14($sp)
/* 879F674 8007A144 21888000 */  addu       $s1, $a0, $zero
/* 879F678 8007A148 1800BFAF */  sw         $ra, 0x18($sp)
/* 879F67C 8007A14C 1000B0AF */  sw         $s0, 0x10($sp)
/* 879F680 8007A150 48002392 */  lbu        $v1, 0x48($s1)
/* 879F684 8007A154 0000308E */  lw         $s0, 0x0($s1)
/* 879F688 8007A158 05006010 */  beqz       $v1, .Llevel_43_8007A170
/* 879F68C 8007A15C 01000224 */   addiu     $v0, $zero, 0x1
/* 879F690 8007A160 3D006210 */  beq        $v1, $v0, .Llevel_43_8007A258
/* 879F694 8007A164 00000000 */   nop
/* 879F698 8007A168 9DE80108 */  j          .Llevel_43_8007A274
/* 879F69C 8007A16C 00000000 */   nop
.Llevel_43_8007A170:
/* 879F6A0 8007A170 36002386 */  lh         $v1, 0x36($s1)
/* 879F6A4 8007A174 AD020224 */  addiu      $v0, $zero, 0x2AD
/* 879F6A8 8007A178 13006214 */  bne        $v1, $v0, .Llevel_43_8007A1C8
/* 879F6AC 8007A17C 00000000 */   nop
/* 879F6B0 8007A180 0780023C */  lui        $v0, %hi(D_8007157E)
/* 879F6B4 8007A184 7E154290 */  lbu        $v0, %lo(D_8007157E)($v0)
/* 879F6B8 8007A188 00000000 */  nop
/* 879F6BC 8007A18C 03004014 */  bnez       $v0, .Llevel_43_8007A19C
/* 879F6C0 8007A190 00000000 */   nop
/* 879F6C4 8007A194 72E80108 */  j          .Llevel_43_8007A1C8
/* 879F6C8 8007A198 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_43_8007A19C:
/* 879F6CC 8007A19C 0680023C */  lui        $v0, %hi(D_80066FCC + 0x2E)
/* 879F6D0 8007A1A0 FA6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x2E)($v0)
/* 879F6D4 8007A1A4 0780013C */  lui        $at, %hi(D_80070300)
/* 879F6D8 8007A1A8 21082200 */  addu       $at, $at, $v0
/* 879F6DC 8007A1AC 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 879F6E0 8007A1B0 00000000 */  nop
/* 879F6E4 8007A1B4 01004230 */  andi       $v0, $v0, 0x1
/* 879F6E8 8007A1B8 02004014 */  bnez       $v0, .Llevel_43_8007A1C4
/* 879F6EC 8007A1BC 02000224 */   addiu     $v0, $zero, 0x2
/* 879F6F0 8007A1C0 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_43_8007A1C4:
/* 879F6F4 8007A1C4 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_43_8007A1C8:
/* 879F6F8 8007A1C8 02000392 */  lbu        $v1, 0x2($s0)
/* 879F6FC 8007A1CC 02000224 */  addiu      $v0, $zero, 0x2
/* 879F700 8007A1D0 02006214 */  bne        $v1, $v0, .Llevel_43_8007A1DC
/* 879F704 8007A1D4 00000000 */   nop
/* 879F708 8007A1D8 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_43_8007A1DC:
/* 879F70C 8007A1DC 05000292 */  lbu        $v0, 0x5($s0)
/* 879F710 8007A1E0 00000000 */  nop
/* 879F714 8007A1E4 10004014 */  bnez       $v0, .Llevel_43_8007A228
/* 879F718 8007A1E8 21202002 */   addu      $a0, $s1, $zero
/* 879F71C 8007A1EC 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 879F720 8007A1F0 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 879F724 8007A1F4 00000000 */  nop
/* 879F728 8007A1F8 10004230 */  andi       $v0, $v0, 0x10
/* 879F72C 8007A1FC 06004010 */  beqz       $v0, .Llevel_43_8007A218
/* 879F730 8007A200 00000000 */   nop
/* 879F734 8007A204 EFDE000C */  jal        func_80037BBC
/* 879F738 8007A208 21280000 */   addu      $a1, $zero, $zero
/* 879F73C 8007A20C 0A004014 */  bnez       $v0, .Llevel_43_8007A238
/* 879F740 8007A210 21202002 */   addu      $a0, $s1, $zero
/* 879F744 8007A214 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_43_8007A218:
/* 879F748 8007A218 05000292 */  lbu        $v0, 0x5($s0)
/* 879F74C 8007A21C 00000000 */  nop
/* 879F750 8007A220 14004010 */  beqz       $v0, .Llevel_43_8007A274
/* 879F754 8007A224 21202002 */   addu      $a0, $s1, $zero
.Llevel_43_8007A228:
/* 879F758 8007A228 EFDE000C */  jal        func_80037BBC
/* 879F75C 8007A22C 21280000 */   addu      $a1, $zero, $zero
/* 879F760 8007A230 07004010 */  beqz       $v0, .Llevel_43_8007A250
/* 879F764 8007A234 21202002 */   addu      $a0, $s1, $zero
.Llevel_43_8007A238:
/* 879F768 8007A238 21280000 */  addu       $a1, $zero, $zero
/* 879F76C 8007A23C B944010C */  jal        func_800512E4
/* 879F770 8007A240 21300000 */   addu      $a2, $zero, $zero
/* 879F774 8007A244 01000224 */  addiu      $v0, $zero, 0x1
/* 879F778 8007A248 9DE80108 */  j          .Llevel_43_8007A274
/* 879F77C 8007A24C 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_43_8007A250:
/* 879F780 8007A250 9DE80108 */  j          .Llevel_43_8007A274
/* 879F784 8007A254 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_43_8007A258:
/* 879F788 8007A258 0780023C */  lui        $v0, %hi(D_8006E344)
/* 879F78C 8007A25C 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 879F790 8007A260 00000000 */  nop
/* 879F794 8007A264 03004310 */  beq        $v0, $v1, .Llevel_43_8007A274
/* 879F798 8007A268 00000000 */   nop
/* 879F79C 8007A26C 200003AE */  sw         $v1, 0x20($s0)
/* 879F7A0 8007A270 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_43_8007A274:
/* 879F7A4 8007A274 1800BF8F */  lw         $ra, 0x18($sp)
/* 879F7A8 8007A278 1400B18F */  lw         $s1, 0x14($sp)
/* 879F7AC 8007A27C 1000B08F */  lw         $s0, 0x10($sp)
/* 879F7B0 8007A280 2000BD27 */  addiu      $sp, $sp, 0x20
/* 879F7B4 8007A284 0800E003 */  jr         $ra
/* 879F7B8 8007A288 00000000 */   nop
.size MobyUpdate_408_level_43, . - MobyUpdate_408_level_43
