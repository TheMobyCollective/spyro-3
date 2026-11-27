.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_967_level_43
/* 87ADC24 800886F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 87ADC28 800886F8 2400B1AF */  sw         $s1, 0x24($sp)
/* 87ADC2C 800886FC 21888000 */  addu       $s1, $a0, $zero
/* 87ADC30 80088700 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 87ADC34 80088704 2800B2AF */  sw         $s2, 0x28($sp)
/* 87ADC38 80088708 2000B0AF */  sw         $s0, 0x20($sp)
/* 87ADC3C 8008870C 48002392 */  lbu        $v1, 0x48($s1)
/* 87ADC40 80088710 0000328E */  lw         $s2, 0x0($s1)
/* 87ADC44 80088714 05006010 */  beqz       $v1, .Llevel_43_8008872C
/* 87ADC48 80088718 01000224 */   addiu     $v0, $zero, 0x1
/* 87ADC4C 8008871C 13006210 */  beq        $v1, $v0, .Llevel_43_8008876C
/* 87ADC50 80088720 2A020424 */   addiu     $a0, $zero, 0x22A
/* 87ADC54 80088724 EE210208 */  j          .Llevel_43_800887B8
/* 87ADC58 80088728 00000000 */   nop
.Llevel_43_8008872C:
/* 87ADC5C 8008872C 0400428E */  lw         $v0, 0x4($s2)
/* 87ADC60 80088730 00000000 */  nop
/* 87ADC64 80088734 06004010 */  beqz       $v0, .Llevel_43_80088750
/* 87ADC68 80088738 21204002 */   addu      $a0, $s2, $zero
/* 87ADC6C 8008873C 48004290 */  lbu        $v0, 0x48($v0)
/* 87ADC70 80088740 00000000 */  nop
/* 87ADC74 80088744 80004230 */  andi       $v0, $v0, 0x80
/* 87ADC78 80088748 1B004010 */  beqz       $v0, .Llevel_43_800887B8
/* 87ADC7C 8008874C 00000000 */   nop
.Llevel_43_80088750:
/* 87ADC80 80088750 69D6000C */  jal        func_800359A4
/* 87ADC84 80088754 04000524 */   addiu     $a1, $zero, 0x4
/* 87ADC88 80088758 17004010 */  beqz       $v0, .Llevel_43_800887B8
/* 87ADC8C 8008875C 01000224 */   addiu     $v0, $zero, 0x1
/* 87ADC90 80088760 480022A2 */  sb         $v0, 0x48($s1)
/* 87ADC94 80088764 EE210208 */  j          .Llevel_43_800887B8
/* 87ADC98 80088768 040040AE */   sw        $zero, 0x4($s2)
.Llevel_43_8008876C:
/* 87ADC9C 8008876C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87ADCA0 80088770 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87ADCA4 80088774 00000000 */  nop
/* 87ADCA8 80088778 09F84000 */  jalr       $v0
/* 87ADCAC 8008877C 21282002 */   addu      $a1, $s1, $zero
/* 87ADCB0 80088780 21804000 */  addu       $s0, $v0, $zero
/* 87ADCB4 80088784 0C000012 */  beqz       $s0, .Llevel_43_800887B8
/* 87ADCB8 80088788 1000A527 */   addiu     $a1, $sp, 0x10
/* 87ADCBC 8008878C 0000048E */  lw         $a0, 0x0($s0)
/* 87ADCC0 80088790 1000A0AF */  sw         $zero, 0x10($sp)
/* 87ADCC4 80088794 1400A0AF */  sw         $zero, 0x14($sp)
/* 87ADCC8 80088798 5E3C010C */  jal        func_8004F178
/* 87ADCCC 8008879C 1800A0AF */   sw        $zero, 0x18($sp)
/* 87ADCD0 800887A0 52000224 */  addiu      $v0, $zero, 0x52
/* 87ADCD4 800887A4 480002A2 */  sb         $v0, 0x48($s0)
/* 87ADCD8 800887A8 14000224 */  addiu      $v0, $zero, 0x14
/* 87ADCDC 800887AC 480020A2 */  sb         $zero, 0x48($s1)
/* 87ADCE0 800887B0 000042AE */  sw         $v0, 0x0($s2)
/* 87ADCE4 800887B4 040050AE */  sw         $s0, 0x4($s2)
.Llevel_43_800887B8:
/* 87ADCE8 800887B8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 87ADCEC 800887BC 2800B28F */  lw         $s2, 0x28($sp)
/* 87ADCF0 800887C0 2400B18F */  lw         $s1, 0x24($sp)
/* 87ADCF4 800887C4 2000B08F */  lw         $s0, 0x20($sp)
/* 87ADCF8 800887C8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 87ADCFC 800887CC 0800E003 */  jr         $ra
/* 87ADD00 800887D0 00000000 */   nop
.size MobyUpdate_967_level_43, . - MobyUpdate_967_level_43
