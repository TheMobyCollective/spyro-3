.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_408_level_40
/* 7E64BB4 80079684 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7E64BB8 80079688 1400B1AF */  sw         $s1, 0x14($sp)
/* 7E64BBC 8007968C 21888000 */  addu       $s1, $a0, $zero
/* 7E64BC0 80079690 45010324 */  addiu      $v1, $zero, 0x145
/* 7E64BC4 80079694 1800BFAF */  sw         $ra, 0x18($sp)
/* 7E64BC8 80079698 1000B0AF */  sw         $s0, 0x10($sp)
/* 7E64BCC 8007969C 36002286 */  lh         $v0, 0x36($s1)
/* 7E64BD0 800796A0 0000308E */  lw         $s0, 0x0($s1)
/* 7E64BD4 800796A4 12004314 */  bne        $v0, $v1, .Llevel_40_800796F0
/* 7E64BD8 800796A8 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 7E64BDC 800796AC 2400038E */  lw         $v1, 0x24($s0)
/* 7E64BE0 800796B0 00000000 */  nop
/* 7E64BE4 800796B4 0E006210 */  beq        $v1, $v0, .Llevel_40_800796F0
/* 7E64BE8 800796B8 40100300 */   sll       $v0, $v1, 1
/* 7E64BEC 800796BC 21104300 */  addu       $v0, $v0, $v1
/* 7E64BF0 800796C0 80100200 */  sll        $v0, $v0, 2
/* 7E64BF4 800796C4 23104300 */  subu       $v0, $v0, $v1
/* 7E64BF8 800796C8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7E64BFC 800796CC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7E64C00 800796D0 C0100200 */  sll        $v0, $v0, 3
/* 7E64C04 800796D4 21104300 */  addu       $v0, $v0, $v1
/* 7E64C08 800796D8 48004290 */  lbu        $v0, 0x48($v0)
/* 7E64C0C 800796DC 00000000 */  nop
/* 7E64C10 800796E0 8000422C */  sltiu      $v0, $v0, 0x80
/* 7E64C14 800796E4 02004010 */  beqz       $v0, .Llevel_40_800796F0
/* 7E64C18 800796E8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 7E64C1C 800796EC 050002A2 */  sb         $v0, 0x5($s0)
.Llevel_40_800796F0:
/* 7E64C20 800796F0 36002396 */  lhu        $v1, 0x36($s1)
/* 7E64C24 800796F4 00000000 */  nop
/* 7E64C28 800796F8 55FD6224 */  addiu      $v0, $v1, -0x2AB
/* 7E64C2C 800796FC 0200422C */  sltiu      $v0, $v0, 0x2
/* 7E64C30 80079700 09004014 */  bnez       $v0, .Llevel_40_80079728
/* 7E64C34 80079704 FF000224 */   addiu     $v0, $zero, 0xFF
/* 7E64C38 80079708 00140300 */  sll        $v0, $v1, 16
/* 7E64C3C 8007970C 031C0200 */  sra        $v1, $v0, 16
/* 7E64C40 80079710 98010224 */  addiu      $v0, $zero, 0x198
/* 7E64C44 80079714 03006210 */  beq        $v1, $v0, .Llevel_40_80079724
/* 7E64C48 80079718 AD020224 */   addiu     $v0, $zero, 0x2AD
/* 7E64C4C 8007971C 03006214 */  bne        $v1, $v0, .Llevel_40_8007972C
/* 7E64C50 80079720 00000000 */   nop
.Llevel_40_80079724:
/* 7E64C54 80079724 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_40_80079728:
/* 7E64C58 80079728 050002A2 */  sb         $v0, 0x5($s0)
.Llevel_40_8007972C:
/* 7E64C5C 8007972C 48002392 */  lbu        $v1, 0x48($s1)
/* 7E64C60 80079730 00000000 */  nop
/* 7E64C64 80079734 05006010 */  beqz       $v1, .Llevel_40_8007974C
/* 7E64C68 80079738 01000224 */   addiu     $v0, $zero, 0x1
/* 7E64C6C 8007973C 27006210 */  beq        $v1, $v0, .Llevel_40_800797DC
/* 7E64C70 80079740 00000000 */   nop
/* 7E64C74 80079744 FEE50108 */  j          .Llevel_40_800797F8
/* 7E64C78 80079748 00000000 */   nop
.Llevel_40_8007974C:
/* 7E64C7C 8007974C 02000392 */  lbu        $v1, 0x2($s0)
/* 7E64C80 80079750 02000224 */  addiu      $v0, $zero, 0x2
/* 7E64C84 80079754 02006214 */  bne        $v1, $v0, .Llevel_40_80079760
/* 7E64C88 80079758 00000000 */   nop
/* 7E64C8C 8007975C 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_40_80079760:
/* 7E64C90 80079760 05000292 */  lbu        $v0, 0x5($s0)
/* 7E64C94 80079764 00000000 */  nop
/* 7E64C98 80079768 10004014 */  bnez       $v0, .Llevel_40_800797AC
/* 7E64C9C 8007976C 21202002 */   addu      $a0, $s1, $zero
/* 7E64CA0 80079770 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 7E64CA4 80079774 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 7E64CA8 80079778 00000000 */  nop
/* 7E64CAC 8007977C 10004230 */  andi       $v0, $v0, 0x10
/* 7E64CB0 80079780 06004010 */  beqz       $v0, .Llevel_40_8007979C
/* 7E64CB4 80079784 00000000 */   nop
/* 7E64CB8 80079788 EFDE000C */  jal        func_80037BBC
/* 7E64CBC 8007978C 21280000 */   addu      $a1, $zero, $zero
/* 7E64CC0 80079790 0A004014 */  bnez       $v0, .Llevel_40_800797BC
/* 7E64CC4 80079794 21202002 */   addu      $a0, $s1, $zero
/* 7E64CC8 80079798 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_40_8007979C:
/* 7E64CCC 8007979C 05000292 */  lbu        $v0, 0x5($s0)
/* 7E64CD0 800797A0 00000000 */  nop
/* 7E64CD4 800797A4 14004010 */  beqz       $v0, .Llevel_40_800797F8
/* 7E64CD8 800797A8 21202002 */   addu      $a0, $s1, $zero
.Llevel_40_800797AC:
/* 7E64CDC 800797AC EFDE000C */  jal        func_80037BBC
/* 7E64CE0 800797B0 21280000 */   addu      $a1, $zero, $zero
/* 7E64CE4 800797B4 07004010 */  beqz       $v0, .Llevel_40_800797D4
/* 7E64CE8 800797B8 21202002 */   addu      $a0, $s1, $zero
.Llevel_40_800797BC:
/* 7E64CEC 800797BC 21280000 */  addu       $a1, $zero, $zero
/* 7E64CF0 800797C0 B944010C */  jal        func_800512E4
/* 7E64CF4 800797C4 21300000 */   addu      $a2, $zero, $zero
/* 7E64CF8 800797C8 01000224 */  addiu      $v0, $zero, 0x1
/* 7E64CFC 800797CC FEE50108 */  j          .Llevel_40_800797F8
/* 7E64D00 800797D0 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_40_800797D4:
/* 7E64D04 800797D4 FEE50108 */  j          .Llevel_40_800797F8
/* 7E64D08 800797D8 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_40_800797DC:
/* 7E64D0C 800797DC 0780023C */  lui        $v0, %hi(D_8006E344)
/* 7E64D10 800797E0 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 7E64D14 800797E4 00000000 */  nop
/* 7E64D18 800797E8 03004310 */  beq        $v0, $v1, .Llevel_40_800797F8
/* 7E64D1C 800797EC 00000000 */   nop
/* 7E64D20 800797F0 200003AE */  sw         $v1, 0x20($s0)
/* 7E64D24 800797F4 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_40_800797F8:
/* 7E64D28 800797F8 1800BF8F */  lw         $ra, 0x18($sp)
/* 7E64D2C 800797FC 1400B18F */  lw         $s1, 0x14($sp)
/* 7E64D30 80079800 1000B08F */  lw         $s0, 0x10($sp)
/* 7E64D34 80079804 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7E64D38 80079808 0800E003 */  jr         $ra
/* 7E64D3C 8007980C 00000000 */   nop
.size MobyUpdate_408_level_40, . - MobyUpdate_408_level_40
