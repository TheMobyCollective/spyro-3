.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8007A73C
/* 5A96C6C 8007A73C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5A96C70 8007A740 1000BFAF */  sw         $ra, 0x10($sp)
/* 5A96C74 8007A744 0000828C */  lw         $v0, 0x0($a0)
/* 5A96C78 8007A748 00000000 */  nop
/* 5A96C7C 8007A74C 0000428C */  lw         $v0, 0x0($v0)
/* 5A96C80 8007A750 00000000 */  nop
/* 5A96C84 8007A754 05004010 */  beqz       $v0, .Llevel_23_8007A76C
/* 5A96C88 8007A758 00000000 */   nop
/* 5A96C8C 8007A75C 49008290 */  lbu        $v0, 0x49($a0)
/* 5A96C90 8007A760 00000000 */  nop
/* 5A96C94 8007A764 0B004010 */  beqz       $v0, .Llevel_23_8007A794
/* 5A96C98 8007A768 00000000 */   nop
.Llevel_23_8007A76C:
/* 5A96C9C 8007A76C 9171010C */  jal        rand
/* 5A96CA0 8007A770 00000000 */   nop
/* 5A96CA4 8007A774 01004230 */  andi       $v0, $v0, 0x1
/* 5A96CA8 8007A778 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 5A96CAC 8007A77C E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 5A96CB0 8007A780 01004424 */  addiu      $a0, $v0, 0x1
/* 5A96CB4 8007A784 45000524 */  addiu      $a1, $zero, 0x45
/* 5A96CB8 8007A788 21300000 */  addu       $a2, $zero, $zero
/* 5A96CBC 8007A78C 09F86000 */  jalr       $v1
/* 5A96CC0 8007A790 21380000 */   addu      $a3, $zero, $zero
.Llevel_23_8007A794:
/* 5A96CC4 8007A794 1000BF8F */  lw         $ra, 0x10($sp)
/* 5A96CC8 8007A798 1800BD27 */  addiu      $sp, $sp, 0x18
/* 5A96CCC 8007A79C 0800E003 */  jr         $ra
/* 5A96CD0 8007A7A0 00000000 */   nop
.size func_level_23_8007A73C, . - func_level_23_8007A73C
