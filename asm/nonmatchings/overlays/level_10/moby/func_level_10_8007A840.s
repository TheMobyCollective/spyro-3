.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_265_level_10
/* 3ADF570 8007A840 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3ADF574 8007A844 1000BFAF */  sw         $ra, 0x10($sp)
/* 3ADF578 8007A848 0000858C */  lw         $a1, 0x0($a0)
/* 3ADF57C 8007A84C 00000000 */  nop
/* 3ADF580 8007A850 0000A28C */  lw         $v0, 0x0($a1)
/* 3ADF584 8007A854 48008390 */  lbu        $v1, 0x48($a0)
/* 3ADF588 8007A858 48004290 */  lbu        $v0, 0x48($v0)
/* 3ADF58C 8007A85C 00000000 */  nop
/* 3ADF590 8007A860 05006210 */  beq        $v1, $v0, .Llevel_10_8007A878
/* 3ADF594 8007A864 00000000 */   nop
/* 3ADF598 8007A868 C656010C */  jal        func_80055B18
/* 3ADF59C 8007A86C 00000000 */   nop
/* 3ADF5A0 8007A870 38EA0108 */  j          .Llevel_10_8007A8E0
/* 3ADF5A4 8007A874 00000000 */   nop
.Llevel_10_8007A878:
/* 3ADF5A8 8007A878 3C008290 */  lbu        $v0, 0x3C($a0)
/* 3ADF5AC 8007A87C 00000000 */  nop
/* 3ADF5B0 8007A880 06004014 */  bnez       $v0, .Llevel_10_8007A89C
/* 3ADF5B4 8007A884 00000000 */   nop
/* 3ADF5B8 8007A888 46008290 */  lbu        $v0, 0x46($a0)
/* 3ADF5BC 8007A88C 00000000 */  nop
/* 3ADF5C0 8007A890 06004224 */  addiu      $v0, $v0, 0x6
/* 3ADF5C4 8007A894 38EA0108 */  j          .Llevel_10_8007A8E0
/* 3ADF5C8 8007A898 460082A0 */   sb        $v0, 0x46($a0)
.Llevel_10_8007A89C:
/* 3ADF5CC 8007A89C 0500A290 */  lbu        $v0, 0x5($a1)
/* 3ADF5D0 8007A8A0 0780033C */  lui        $v1, %hi(D_8006C644)
/* 3ADF5D4 8007A8A4 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 3ADF5D8 8007A8A8 00000000 */  nop
/* 3ADF5DC 8007A8AC 21104300 */  addu       $v0, $v0, $v1
/* 3ADF5E0 8007A8B0 C0100200 */  sll        $v0, $v0, 3
/* 3ADF5E4 8007A8B4 F8014230 */  andi       $v0, $v0, 0x1F8
/* 3ADF5E8 8007A8B8 0680013C */  lui        $at, %hi(D_80065920)
/* 3ADF5EC 8007A8BC 21082200 */  addu       $at, $at, $v0
/* 3ADF5F0 8007A8C0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 3ADF5F4 8007A8C4 00000000 */  nop
/* 3ADF5F8 8007A8C8 40100300 */  sll        $v0, $v1, 1
/* 3ADF5FC 8007A8CC 21104300 */  addu       $v0, $v0, $v1
/* 3ADF600 8007A8D0 0400A390 */  lbu        $v1, 0x4($a1)
/* 3ADF604 8007A8D4 43120200 */  sra        $v0, $v0, 9
/* 3ADF608 8007A8D8 21186200 */  addu       $v1, $v1, $v0
/* 3ADF60C 8007A8DC 460083A0 */  sb         $v1, 0x46($a0)
.Llevel_10_8007A8E0:
/* 3ADF610 8007A8E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 3ADF614 8007A8E4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3ADF618 8007A8E8 0800E003 */  jr         $ra
/* 3ADF61C 8007A8EC 00000000 */   nop
.size MobyUpdate_265_level_10, . - MobyUpdate_265_level_10
