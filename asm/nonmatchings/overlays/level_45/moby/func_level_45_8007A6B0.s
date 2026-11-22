.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_383_level_45
/* 8D36BE0 8007A6B0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 8D36BE4 8007A6B4 3800B2AF */  sw         $s2, 0x38($sp)
/* 8D36BE8 8007A6B8 21908000 */  addu       $s2, $a0, $zero
/* 8D36BEC 8007A6BC 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 8D36BF0 8007A6C0 3400B1AF */  sw         $s1, 0x34($sp)
/* 8D36BF4 8007A6C4 3000B0AF */  sw         $s0, 0x30($sp)
/* 8D36BF8 8007A6C8 48004392 */  lbu        $v1, 0x48($s2)
/* 8D36BFC 8007A6CC 0000448E */  lw         $a0, 0x0($s2)
/* 8D36C00 8007A6D0 6A006004 */  bltz       $v1, .Llevel_45_8007A87C
/* 8D36C04 8007A6D4 02006228 */   slti      $v0, $v1, 0x2
/* 8D36C08 8007A6D8 05004014 */  bnez       $v0, .Llevel_45_8007A6F0
/* 8D36C0C 8007A6DC 02000224 */   addiu     $v0, $zero, 0x2
/* 8D36C10 8007A6E0 0B006210 */  beq        $v1, $v0, .Llevel_45_8007A710
/* 8D36C14 8007A6E4 00000000 */   nop
/* 8D36C18 8007A6E8 1FEA0108 */  j          .Llevel_45_8007A87C
/* 8D36C1C 8007A6EC 00000000 */   nop
.Llevel_45_8007A6F0:
/* 8D36C20 8007A6F0 0000828C */  lw         $v0, 0x0($a0)
/* 8D36C24 8007A6F4 00000000 */  nop
/* 8D36C28 8007A6F8 4C004290 */  lbu        $v0, 0x4C($v0)
/* 8D36C2C 8007A6FC 00000000 */  nop
/* 8D36C30 8007A700 5E004014 */  bnez       $v0, .Llevel_45_8007A87C
/* 8D36C34 8007A704 4C0042A2 */   sb        $v0, 0x4C($s2)
/* 8D36C38 8007A708 1FEA0108 */  j          .Llevel_45_8007A87C
/* 8D36C3C 8007A70C 4D0040A2 */   sb        $zero, 0x4D($s2)
.Llevel_45_8007A710:
/* 8D36C40 8007A710 49004492 */  lbu        $a0, 0x49($s2)
/* 8D36C44 8007A714 00000000 */  nop
/* 8D36C48 8007A718 05008010 */  beqz       $a0, .Llevel_45_8007A730
/* 8D36C4C 8007A71C 01000224 */   addiu     $v0, $zero, 0x1
/* 8D36C50 8007A720 48008210 */  beq        $a0, $v0, .Llevel_45_8007A844
/* 8D36C54 8007A724 03000224 */   addiu     $v0, $zero, 0x3
/* 8D36C58 8007A728 1FEA0108 */  j          .Llevel_45_8007A87C
/* 8D36C5C 8007A72C 00000000 */   nop
.Llevel_45_8007A730:
/* 8D36C60 8007A730 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 8D36C64 8007A734 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 8D36C68 8007A738 00000000 */  nop
/* 8D36C6C 8007A73C 05004310 */  beq        $v0, $v1, .Llevel_45_8007A754
/* 8D36C70 8007A740 7F010424 */   addiu     $a0, $zero, 0x17F
/* 8D36C74 8007A744 C656010C */  jal        func_80055B18
/* 8D36C78 8007A748 21204002 */   addu      $a0, $s2, $zero
/* 8D36C7C 8007A74C 1FEA0108 */  j          .Llevel_45_8007A87C
/* 8D36C80 8007A750 00000000 */   nop
.Llevel_45_8007A754:
/* 8D36C84 8007A754 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D36C88 8007A758 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D36C8C 8007A75C 00000000 */  nop
/* 8D36C90 8007A760 09F84000 */  jalr       $v0
/* 8D36C94 8007A764 21284002 */   addu      $a1, $s2, $zero
/* 8D36C98 8007A768 21884000 */  addu       $s1, $v0, $zero
/* 8D36C9C 8007A76C 15002012 */  beqz       $s1, .Llevel_45_8007A7C4
/* 8D36CA0 8007A770 21202002 */   addu      $a0, $s1, $zero
/* 8D36CA4 8007A774 E0D3000C */  jal        func_80034F80
/* 8D36CA8 8007A778 21280000 */   addu      $a1, $zero, $zero
/* 8D36CAC 8007A77C 480020A2 */  sb         $zero, 0x48($s1)
/* 8D36CB0 8007A780 21202002 */  addu       $a0, $s1, $zero
/* 8D36CB4 8007A784 21280000 */  addu       $a1, $zero, $zero
/* 8D36CB8 8007A788 C557010C */  jal        func_80055F14
/* 8D36CBC 8007A78C 1000A627 */   addiu     $a2, $sp, 0x10
/* 8D36CC0 8007A790 21204002 */  addu       $a0, $s2, $zero
/* 8D36CC4 8007A794 21280000 */  addu       $a1, $zero, $zero
/* 8D36CC8 8007A798 2000B027 */  addiu      $s0, $sp, 0x20
/* 8D36CCC 8007A79C C557010C */  jal        func_80055F14
/* 8D36CD0 8007A7A0 21300002 */   addu      $a2, $s0, $zero
/* 8D36CD4 8007A7A4 1000A427 */  addiu      $a0, $sp, 0x10
/* 8D36CD8 8007A7A8 21280002 */  addu       $a1, $s0, $zero
/* 8D36CDC 8007A7AC 723C010C */  jal        func_8004F1C8
/* 8D36CE0 8007A7B0 21308000 */   addu      $a2, $a0, $zero
/* 8D36CE4 8007A7B4 0C002426 */  addiu      $a0, $s1, 0xC
/* 8D36CE8 8007A7B8 21288000 */  addu       $a1, $a0, $zero
/* 8D36CEC 8007A7BC 653C010C */  jal        func_8004F194
/* 8D36CF0 8007A7C0 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_45_8007A7C4:
/* 8D36CF4 8007A7C4 7F010424 */  addiu      $a0, $zero, 0x17F
/* 8D36CF8 8007A7C8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8D36CFC 8007A7CC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8D36D00 8007A7D0 00000000 */  nop
/* 8D36D04 8007A7D4 09F84000 */  jalr       $v0
/* 8D36D08 8007A7D8 21284002 */   addu      $a1, $s2, $zero
/* 8D36D0C 8007A7DC 21884000 */  addu       $s1, $v0, $zero
/* 8D36D10 8007A7E0 16002012 */  beqz       $s1, .Llevel_45_8007A83C
/* 8D36D14 8007A7E4 21202002 */   addu      $a0, $s1, $zero
/* 8D36D18 8007A7E8 E0D3000C */  jal        func_80034F80
/* 8D36D1C 8007A7EC 01000524 */   addiu     $a1, $zero, 0x1
/* 8D36D20 8007A7F0 01000224 */  addiu      $v0, $zero, 0x1
/* 8D36D24 8007A7F4 480022A2 */  sb         $v0, 0x48($s1)
/* 8D36D28 8007A7F8 21202002 */  addu       $a0, $s1, $zero
/* 8D36D2C 8007A7FC 01000524 */  addiu      $a1, $zero, 0x1
/* 8D36D30 8007A800 C557010C */  jal        func_80055F14
/* 8D36D34 8007A804 1000A627 */   addiu     $a2, $sp, 0x10
/* 8D36D38 8007A808 21204002 */  addu       $a0, $s2, $zero
/* 8D36D3C 8007A80C 01000524 */  addiu      $a1, $zero, 0x1
/* 8D36D40 8007A810 2000B027 */  addiu      $s0, $sp, 0x20
/* 8D36D44 8007A814 C557010C */  jal        func_80055F14
/* 8D36D48 8007A818 21300002 */   addu      $a2, $s0, $zero
/* 8D36D4C 8007A81C 1000A427 */  addiu      $a0, $sp, 0x10
/* 8D36D50 8007A820 21280002 */  addu       $a1, $s0, $zero
/* 8D36D54 8007A824 723C010C */  jal        func_8004F1C8
/* 8D36D58 8007A828 21308000 */   addu      $a2, $a0, $zero
/* 8D36D5C 8007A82C 0C002426 */  addiu      $a0, $s1, 0xC
/* 8D36D60 8007A830 21288000 */  addu       $a1, $a0, $zero
/* 8D36D64 8007A834 653C010C */  jal        func_8004F194
/* 8D36D68 8007A838 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_45_8007A83C:
/* 8D36D6C 8007A83C 1EEA0108 */  j          .Llevel_45_8007A878
/* 8D36D70 8007A840 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_45_8007A844:
/* 8D36D74 8007A844 0780033C */  lui        $v1, %hi(D_8006FA78)
/* 8D36D78 8007A848 78FA638C */  lw         $v1, %lo(D_8006FA78)($v1)
/* 8D36D7C 8007A84C 00000000 */  nop
/* 8D36D80 8007A850 0A006214 */  bne        $v1, $v0, .Llevel_45_8007A87C
/* 8D36D84 8007A854 00000000 */   nop
/* 8D36D88 8007A858 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8D36D8C 8007A85C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8D36D90 8007A860 00000000 */  nop
/* 8D36D94 8007A864 0B004228 */  slti       $v0, $v0, 0xB
/* 8D36D98 8007A868 04004014 */  bnez       $v0, .Llevel_45_8007A87C
/* 8D36D9C 8007A86C 3F000224 */   addiu     $v0, $zero, 0x3F
/* 8D36DA0 8007A870 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 8D36DA4 8007A874 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_45_8007A878:
/* 8D36DA8 8007A878 490042A2 */  sb         $v0, 0x49($s2)
.Llevel_45_8007A87C:
/* 8D36DAC 8007A87C 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 8D36DB0 8007A880 3800B28F */  lw         $s2, 0x38($sp)
/* 8D36DB4 8007A884 3400B18F */  lw         $s1, 0x34($sp)
/* 8D36DB8 8007A888 3000B08F */  lw         $s0, 0x30($sp)
/* 8D36DBC 8007A88C 4000BD27 */  addiu      $sp, $sp, 0x40
/* 8D36DC0 8007A890 0800E003 */  jr         $ra
/* 8D36DC4 8007A894 00000000 */   nop
.size MobyUpdate_383_level_45, . - MobyUpdate_383_level_45
