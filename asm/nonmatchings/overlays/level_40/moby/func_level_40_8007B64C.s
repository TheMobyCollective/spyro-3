.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_265_level_40
/* 7E66B7C 8007B64C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 7E66B80 8007B650 1000BFAF */  sw         $ra, 0x10($sp)
/* 7E66B84 8007B654 0000858C */  lw         $a1, 0x0($a0)
/* 7E66B88 8007B658 00000000 */  nop
/* 7E66B8C 8007B65C 0000A28C */  lw         $v0, 0x0($a1)
/* 7E66B90 8007B660 48008390 */  lbu        $v1, 0x48($a0)
/* 7E66B94 8007B664 48004290 */  lbu        $v0, 0x48($v0)
/* 7E66B98 8007B668 00000000 */  nop
/* 7E66B9C 8007B66C 05006210 */  beq        $v1, $v0, .Llevel_40_8007B684
/* 7E66BA0 8007B670 00000000 */   nop
/* 7E66BA4 8007B674 C656010C */  jal        func_80055B18
/* 7E66BA8 8007B678 00000000 */   nop
/* 7E66BAC 8007B67C BBED0108 */  j          .Llevel_40_8007B6EC
/* 7E66BB0 8007B680 00000000 */   nop
.Llevel_40_8007B684:
/* 7E66BB4 8007B684 3C008290 */  lbu        $v0, 0x3C($a0)
/* 7E66BB8 8007B688 00000000 */  nop
/* 7E66BBC 8007B68C 06004014 */  bnez       $v0, .Llevel_40_8007B6A8
/* 7E66BC0 8007B690 00000000 */   nop
/* 7E66BC4 8007B694 46008290 */  lbu        $v0, 0x46($a0)
/* 7E66BC8 8007B698 00000000 */  nop
/* 7E66BCC 8007B69C 06004224 */  addiu      $v0, $v0, 0x6
/* 7E66BD0 8007B6A0 BBED0108 */  j          .Llevel_40_8007B6EC
/* 7E66BD4 8007B6A4 460082A0 */   sb        $v0, 0x46($a0)
.Llevel_40_8007B6A8:
/* 7E66BD8 8007B6A8 0500A290 */  lbu        $v0, 0x5($a1)
/* 7E66BDC 8007B6AC 0780033C */  lui        $v1, %hi(D_8006C644)
/* 7E66BE0 8007B6B0 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 7E66BE4 8007B6B4 00000000 */  nop
/* 7E66BE8 8007B6B8 21104300 */  addu       $v0, $v0, $v1
/* 7E66BEC 8007B6BC C0100200 */  sll        $v0, $v0, 3
/* 7E66BF0 8007B6C0 F8014230 */  andi       $v0, $v0, 0x1F8
/* 7E66BF4 8007B6C4 0680013C */  lui        $at, %hi(D_80065920)
/* 7E66BF8 8007B6C8 21082200 */  addu       $at, $at, $v0
/* 7E66BFC 8007B6CC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7E66C00 8007B6D0 00000000 */  nop
/* 7E66C04 8007B6D4 40100300 */  sll        $v0, $v1, 1
/* 7E66C08 8007B6D8 21104300 */  addu       $v0, $v0, $v1
/* 7E66C0C 8007B6DC 0400A390 */  lbu        $v1, 0x4($a1)
/* 7E66C10 8007B6E0 43120200 */  sra        $v0, $v0, 9
/* 7E66C14 8007B6E4 21186200 */  addu       $v1, $v1, $v0
/* 7E66C18 8007B6E8 460083A0 */  sb         $v1, 0x46($a0)
.Llevel_40_8007B6EC:
/* 7E66C1C 8007B6EC 1000BF8F */  lw         $ra, 0x10($sp)
/* 7E66C20 8007B6F0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 7E66C24 8007B6F4 0800E003 */  jr         $ra
/* 7E66C28 8007B6F8 00000000 */   nop
.size MobyUpdate_265_level_40, . - MobyUpdate_265_level_40
