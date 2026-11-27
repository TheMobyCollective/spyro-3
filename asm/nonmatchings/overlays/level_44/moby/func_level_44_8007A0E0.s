.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_72_level_44
/* 8B4D610 8007A0E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8B4D614 8007A0E4 1000B0AF */  sw         $s0, 0x10($sp)
/* 8B4D618 8007A0E8 21808000 */  addu       $s0, $a0, $zero
/* 8B4D61C 8007A0EC 1400BFAF */  sw         $ra, 0x14($sp)
/* 8B4D620 8007A0F0 1800028E */  lw         $v0, 0x18($s0)
/* 8B4D624 8007A0F4 0202033C */  lui        $v1, (0x2020000 >> 16)
/* 8B4D628 8007A0F8 24104300 */  and        $v0, $v0, $v1
/* 8B4D62C 8007A0FC 08004010 */  beqz       $v0, .Llevel_44_8007A120
/* 8B4D630 8007A100 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4D634 8007A104 48000392 */  lbu        $v1, 0x48($s0)
/* 8B4D638 8007A108 00000000 */  nop
/* 8B4D63C 8007A10C 05006210 */  beq        $v1, $v0, .Llevel_44_8007A124
/* 8B4D640 8007A110 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4D644 8007A114 480002A2 */  sb         $v0, 0x48($s0)
/* 8B4D648 8007A118 D0D3000C */  jal        func_80034F40
/* 8B4D64C 8007A11C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_44_8007A120:
/* 8B4D650 8007A120 48000392 */  lbu        $v1, 0x48($s0)
.Llevel_44_8007A124:
/* 8B4D654 8007A124 00000000 */  nop
/* 8B4D658 8007A128 0C006010 */  beqz       $v1, .Llevel_44_8007A15C
/* 8B4D65C 8007A12C 180000AE */   sw        $zero, 0x18($s0)
/* 8B4D660 8007A130 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4D664 8007A134 09006214 */  bne        $v1, $v0, .Llevel_44_8007A15C
/* 8B4D668 8007A138 00000000 */   nop
/* 8B4D66C 8007A13C 0780023C */  lui        $v0, %hi(D_8006C770)
/* 8B4D670 8007A140 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 8B4D674 8007A144 00000000 */  nop
/* 8B4D678 8007A148 04004010 */  beqz       $v0, .Llevel_44_8007A15C
/* 8B4D67C 8007A14C 21200002 */   addu      $a0, $s0, $zero
/* 8B4D680 8007A150 480000A2 */  sb         $zero, 0x48($s0)
/* 8B4D684 8007A154 D0D3000C */  jal        func_80034F40
/* 8B4D688 8007A158 21280000 */   addu      $a1, $zero, $zero
.Llevel_44_8007A15C:
/* 8B4D68C 8007A15C 1400BF8F */  lw         $ra, 0x14($sp)
/* 8B4D690 8007A160 1000B08F */  lw         $s0, 0x10($sp)
/* 8B4D694 8007A164 1800BD27 */  addiu      $sp, $sp, 0x18
/* 8B4D698 8007A168 0800E003 */  jr         $ra
/* 8B4D69C 8007A16C 00000000 */   nop
.size MobyUpdate_72_level_44, . - MobyUpdate_72_level_44
