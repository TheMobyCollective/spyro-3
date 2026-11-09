.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_14
/* 47B960C 8007A0DC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47B9610 8007A0E0 1400B1AF */  sw         $s1, 0x14($sp)
/* 47B9614 8007A0E4 21888000 */  addu       $s1, $a0, $zero
/* 47B9618 8007A0E8 1800BFAF */  sw         $ra, 0x18($sp)
/* 47B961C 8007A0EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 47B9620 8007A0F0 48002392 */  lbu        $v1, 0x48($s1)
/* 47B9624 8007A0F4 0000308E */  lw         $s0, 0x0($s1)
/* 47B9628 8007A0F8 05006010 */  beqz       $v1, .Llevel_14_8007A110
/* 47B962C 8007A0FC 01000224 */   addiu     $v0, $zero, 0x1
/* 47B9630 8007A100 3D006210 */  beq        $v1, $v0, .Llevel_14_8007A1F8
/* 47B9634 8007A104 00000000 */   nop
/* 47B9638 8007A108 85E80108 */  j          .Llevel_14_8007A214
/* 47B963C 8007A10C 00000000 */   nop
.Llevel_14_8007A110:
/* 47B9640 8007A110 36002386 */  lh         $v1, 0x36($s1)
/* 47B9644 8007A114 AB020224 */  addiu      $v0, $zero, 0x2AB
/* 47B9648 8007A118 13006214 */  bne        $v1, $v0, .Llevel_14_8007A168
/* 47B964C 8007A11C 00000000 */   nop
/* 47B9650 8007A120 0780023C */  lui        $v0, %hi(D_8007158A)
/* 47B9654 8007A124 8A154290 */  lbu        $v0, %lo(D_8007158A)($v0)
/* 47B9658 8007A128 00000000 */  nop
/* 47B965C 8007A12C 03004014 */  bnez       $v0, .Llevel_14_8007A13C
/* 47B9660 8007A130 00000000 */   nop
/* 47B9664 8007A134 5AE80108 */  j          .Llevel_14_8007A168
/* 47B9668 8007A138 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_14_8007A13C:
/* 47B966C 8007A13C 0680023C */  lui        $v0, %hi(D_80066FCC + 0x10)
/* 47B9670 8007A140 DC6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x10)($v0)
/* 47B9674 8007A144 0780013C */  lui        $at, %hi(D_80070300)
/* 47B9678 8007A148 21082200 */  addu       $at, $at, $v0
/* 47B967C 8007A14C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 47B9680 8007A150 00000000 */  nop
/* 47B9684 8007A154 01004230 */  andi       $v0, $v0, 0x1
/* 47B9688 8007A158 02004014 */  bnez       $v0, .Llevel_14_8007A164
/* 47B968C 8007A15C 02000224 */   addiu     $v0, $zero, 0x2
/* 47B9690 8007A160 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_14_8007A164:
/* 47B9694 8007A164 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_14_8007A168:
/* 47B9698 8007A168 02000392 */  lbu        $v1, 0x2($s0)
/* 47B969C 8007A16C 02000224 */  addiu      $v0, $zero, 0x2
/* 47B96A0 8007A170 02006214 */  bne        $v1, $v0, .Llevel_14_8007A17C
/* 47B96A4 8007A174 00000000 */   nop
/* 47B96A8 8007A178 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_14_8007A17C:
/* 47B96AC 8007A17C 05000292 */  lbu        $v0, 0x5($s0)
/* 47B96B0 8007A180 00000000 */  nop
/* 47B96B4 8007A184 10004014 */  bnez       $v0, .Llevel_14_8007A1C8
/* 47B96B8 8007A188 21202002 */   addu      $a0, $s1, $zero
/* 47B96BC 8007A18C 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 47B96C0 8007A190 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 47B96C4 8007A194 00000000 */  nop
/* 47B96C8 8007A198 10004230 */  andi       $v0, $v0, 0x10
/* 47B96CC 8007A19C 06004010 */  beqz       $v0, .Llevel_14_8007A1B8
/* 47B96D0 8007A1A0 00000000 */   nop
/* 47B96D4 8007A1A4 EFDE000C */  jal        func_80037BBC
/* 47B96D8 8007A1A8 21280000 */   addu      $a1, $zero, $zero
/* 47B96DC 8007A1AC 0A004014 */  bnez       $v0, .Llevel_14_8007A1D8
/* 47B96E0 8007A1B0 21202002 */   addu      $a0, $s1, $zero
/* 47B96E4 8007A1B4 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_14_8007A1B8:
/* 47B96E8 8007A1B8 05000292 */  lbu        $v0, 0x5($s0)
/* 47B96EC 8007A1BC 00000000 */  nop
/* 47B96F0 8007A1C0 14004010 */  beqz       $v0, .Llevel_14_8007A214
/* 47B96F4 8007A1C4 21202002 */   addu      $a0, $s1, $zero
.Llevel_14_8007A1C8:
/* 47B96F8 8007A1C8 EFDE000C */  jal        func_80037BBC
/* 47B96FC 8007A1CC 21280000 */   addu      $a1, $zero, $zero
/* 47B9700 8007A1D0 07004010 */  beqz       $v0, .Llevel_14_8007A1F0
/* 47B9704 8007A1D4 21202002 */   addu      $a0, $s1, $zero
.Llevel_14_8007A1D8:
/* 47B9708 8007A1D8 21280000 */  addu       $a1, $zero, $zero
/* 47B970C 8007A1DC B944010C */  jal        func_800512E4
/* 47B9710 8007A1E0 21300000 */   addu      $a2, $zero, $zero
/* 47B9714 8007A1E4 01000224 */  addiu      $v0, $zero, 0x1
/* 47B9718 8007A1E8 85E80108 */  j          .Llevel_14_8007A214
/* 47B971C 8007A1EC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_14_8007A1F0:
/* 47B9720 8007A1F0 85E80108 */  j          .Llevel_14_8007A214
/* 47B9724 8007A1F4 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_14_8007A1F8:
/* 47B9728 8007A1F8 0780023C */  lui        $v0, %hi(D_8006E344)
/* 47B972C 8007A1FC 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 47B9730 8007A200 00000000 */  nop
/* 47B9734 8007A204 03004310 */  beq        $v0, $v1, .Llevel_14_8007A214
/* 47B9738 8007A208 00000000 */   nop
/* 47B973C 8007A20C 200003AE */  sw         $v1, 0x20($s0)
/* 47B9740 8007A210 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_14_8007A214:
/* 47B9744 8007A214 1800BF8F */  lw         $ra, 0x18($sp)
/* 47B9748 8007A218 1400B18F */  lw         $s1, 0x14($sp)
/* 47B974C 8007A21C 1000B08F */  lw         $s0, 0x10($sp)
/* 47B9750 8007A220 2000BD27 */  addiu      $sp, $sp, 0x20
/* 47B9754 8007A224 0800E003 */  jr         $ra
/* 47B9758 8007A228 00000000 */   nop
.size MobyUpdate_408_level_14, . - MobyUpdate_408_level_14
