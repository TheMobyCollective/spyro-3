.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_154_level_16
/* 4B9AB84 80079654 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 4B9AB88 80079658 4800B4AF */  sw         $s4, 0x48($sp)
/* 4B9AB8C 8007965C 21A08000 */  addu       $s4, $a0, $zero
/* 4B9AB90 80079660 21380000 */  addu       $a3, $zero, $zero
/* 4B9AB94 80079664 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 4B9AB98 80079668 21880000 */  addu       $s1, $zero, $zero
/* 4B9AB9C 8007966C 21280000 */  addu       $a1, $zero, $zero
/* 4B9ABA0 80079670 14000824 */  addiu      $t0, $zero, 0x14
/* 4B9ABA4 80079674 5000BFAF */  sw         $ra, 0x50($sp)
/* 4B9ABA8 80079678 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 4B9ABAC 8007967C 4400B3AF */  sw         $s3, 0x44($sp)
/* 4B9ABB0 80079680 4000B2AF */  sw         $s2, 0x40($sp)
/* 4B9ABB4 80079684 3800B0AF */  sw         $s0, 0x38($sp)
/* 4B9ABB8 80079688 0000938E */  lw         $s3, 0x0($s4)
/* 4B9ABBC 8007968C 0780063C */  lui        $a2, %hi(D_8006C550)
/* 4B9ABC0 80079690 50C5C68C */  lw         $a2, %lo(D_8006C550)($a2)
/* 4B9ABC4 80079694 21206002 */  addu       $a0, $s3, $zero
.Llevel_16_80079698:
/* 4B9ABC8 80079698 0000838C */  lw         $v1, 0x0($a0)
/* 4B9ABCC 8007969C 00000000 */  nop
/* 4B9ABD0 800796A0 40100300 */  sll        $v0, $v1, 1
/* 4B9ABD4 800796A4 21104300 */  addu       $v0, $v0, $v1
/* 4B9ABD8 800796A8 80100200 */  sll        $v0, $v0, 2
/* 4B9ABDC 800796AC 23104300 */  subu       $v0, $v0, $v1
/* 4B9ABE0 800796B0 C0100200 */  sll        $v0, $v0, 3
/* 4B9ABE4 800796B4 2110C200 */  addu       $v0, $a2, $v0
/* 4B9ABE8 800796B8 48004290 */  lbu        $v0, 0x48($v0)
/* 4B9ABEC 800796BC 00000000 */  nop
/* 4B9ABF0 800796C0 03004814 */  bne        $v0, $t0, .Llevel_16_800796D0
/* 4B9ABF4 800796C4 00000000 */   nop
/* 4B9ABF8 800796C8 21906000 */  addu       $s2, $v1, $zero
/* 4B9ABFC 800796CC 0100E724 */  addiu      $a3, $a3, 0x1
.Llevel_16_800796D0:
/* 4B9AC00 800796D0 0100A524 */  addiu      $a1, $a1, 0x1
/* 4B9AC04 800796D4 0200A228 */  slti       $v0, $a1, 0x2
/* 4B9AC08 800796D8 EFFF4014 */  bnez       $v0, .Llevel_16_80079698
/* 4B9AC0C 800796DC 04008424 */   addiu     $a0, $a0, 0x4
/* 4B9AC10 800796E0 14000824 */  addiu      $t0, $zero, 0x14
/* 4B9AC14 800796E4 0780023C */  lui        $v0, %hi(D_8006C730)
/* 4B9AC18 800796E8 30C7428C */  lw         $v0, %lo(D_8006C730)($v0)
/* 4B9AC1C 800796EC 0780063C */  lui        $a2, %hi(D_8006C550)
/* 4B9AC20 800796F0 50C5C68C */  lw         $a2, %lo(D_8006C550)($a2)
/* 4B9AC24 800796F4 1C00448C */  lw         $a0, 0x1C($v0)
.Llevel_16_800796F8:
/* 4B9AC28 800796F8 00000000 */  nop
/* 4B9AC2C 800796FC 00008594 */  lhu        $a1, 0x0($a0)
/* 4B9AC30 80079700 00000000 */  nop
/* 4B9AC34 80079704 FF7FA230 */  andi       $v0, $a1, 0x7FFF
/* 4B9AC38 80079708 40180200 */  sll        $v1, $v0, 1
/* 4B9AC3C 8007970C 21186200 */  addu       $v1, $v1, $v0
/* 4B9AC40 80079710 80180300 */  sll        $v1, $v1, 2
/* 4B9AC44 80079714 23186200 */  subu       $v1, $v1, $v0
/* 4B9AC48 80079718 C0180300 */  sll        $v1, $v1, 3
/* 4B9AC4C 8007971C 21186600 */  addu       $v1, $v1, $a2
/* 4B9AC50 80079720 48006294 */  lhu        $v0, 0x48($v1)
/* 4B9AC54 80079724 00000000 */  nop
/* 4B9AC58 80079728 02004810 */  beq        $v0, $t0, .Llevel_16_80079734
/* 4B9AC5C 8007972C 00140500 */   sll       $v0, $a1, 16
/* 4B9AC60 80079730 01003126 */  addiu      $s1, $s1, 0x1
.Llevel_16_80079734:
/* 4B9AC64 80079734 F0FF4104 */  bgez       $v0, .Llevel_16_800796F8
/* 4B9AC68 80079738 02008424 */   addiu     $a0, $a0, 0x2
/* 4B9AC6C 8007973C 1800828E */  lw         $v0, 0x18($s4)
/* 4B9AC70 80079740 0800033C */  lui        $v1, (0x80000 >> 16)
/* 4B9AC74 80079744 24104300 */  and        $v0, $v0, $v1
/* 4B9AC78 80079748 55004010 */  beqz       $v0, .Llevel_16_800798A0
/* 4B9AC7C 8007974C 21A80000 */   addu      $s5, $zero, $zero
/* 4B9AC80 80079750 21900000 */  addu       $s2, $zero, $zero
.Llevel_16_80079754:
/* 4B9AC84 80079754 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4B9AC88 80079758 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4B9AC8C 8007975C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4B9AC90 80079760 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4B9AC94 80079764 00000000 */  nop
/* 4B9AC98 80079768 23104300 */  subu       $v0, $v0, $v1
/* 4B9AC9C 8007976C 15004228 */  slti       $v0, $v0, 0x15
/* 4B9ACA0 80079770 2E004014 */  bnez       $v0, .Llevel_16_8007982C
/* 4B9ACA4 80079774 A2000424 */   addiu     $a0, $zero, 0xA2
/* 4B9ACA8 80079778 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4B9ACAC 8007977C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4B9ACB0 80079780 00000000 */  nop
/* 4B9ACB4 80079784 09F84000 */  jalr       $v0
/* 4B9ACB8 80079788 21288002 */   addu      $a1, $s4, $zero
/* 4B9ACBC 8007978C 21884000 */  addu       $s1, $v0, $zero
/* 4B9ACC0 80079790 22002012 */  beqz       $s1, .Llevel_16_8007981C
/* 4B9ACC4 80079794 3F000224 */   addiu     $v0, $zero, 0x3F
/* 4B9ACC8 80079798 4C0022A2 */  sb         $v0, 0x4C($s1)
/* 4B9ACCC 8007979C FF000224 */  addiu      $v0, $zero, 0xFF
/* 4B9ACD0 800797A0 1800A427 */  addiu      $a0, $sp, 0x18
/* 4B9ACD4 800797A4 3C0032A2 */  sb         $s2, 0x3C($s1)
/* 4B9ACD8 800797A8 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 4B9ACDC 800797AC 1000658E */  lw         $a1, 0x10($s3)
/* 4B9ACE0 800797B0 0000308E */  lw         $s0, 0x0($s1)
/* 4B9ACE4 800797B4 5E3C010C */  jal        func_8004F178
/* 4B9ACE8 800797B8 2128B500 */   addu      $a1, $a1, $s5
/* 4B9ACEC 800797BC 20008426 */  addiu      $a0, $s4, 0x20
/* 4B9ACF0 800797C0 1800A527 */  addiu      $a1, $sp, 0x18
/* 4B9ACF4 800797C4 5B3B010C */  jal        func_8004ED6C
/* 4B9ACF8 800797C8 2130A000 */   addu      $a2, $a1, $zero
/* 4B9ACFC 800797CC 0C002426 */  addiu      $a0, $s1, 0xC
/* 4B9AD00 800797D0 21288000 */  addu       $a1, $a0, $zero
/* 4B9AD04 800797D4 653C010C */  jal        func_8004F194
/* 4B9AD08 800797D8 1800A627 */   addiu     $a2, $sp, 0x18
/* 4B9AD0C 800797DC 1800A427 */  addiu      $a0, $sp, 0x18
/* 4B9AD10 800797E0 7A3B010C */  jal        func_8004EDE8
/* 4B9AD14 800797E4 01000524 */   addiu     $a1, $zero, 0x1
/* 4B9AD18 800797E8 1800A427 */  addiu      $a0, $sp, 0x18
/* 4B9AD1C 800797EC 21284000 */  addu       $a1, $v0, $zero
/* 4B9AD20 800797F0 233C010C */  jal        func_8004F08C
/* 4B9AD24 800797F4 8C000624 */   addiu     $a2, $zero, 0x8C
/* 4B9AD28 800797F8 1800A28F */  lw         $v0, 0x18($sp)
/* 4B9AD2C 800797FC 00000000 */  nop
/* 4B9AD30 80079800 000002A6 */  sh         $v0, 0x0($s0)
/* 4B9AD34 80079804 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4B9AD38 80079808 00000000 */  nop
/* 4B9AD3C 8007980C 020002A6 */  sh         $v0, 0x2($s0)
/* 4B9AD40 80079810 2000A28F */  lw         $v0, 0x20($sp)
/* 4B9AD44 80079814 00000000 */  nop
/* 4B9AD48 80079818 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_16_8007981C:
/* 4B9AD4C 8007981C 01005226 */  addiu      $s2, $s2, 0x1
/* 4B9AD50 80079820 0400422A */  slti       $v0, $s2, 0x4
/* 4B9AD54 80079824 CBFF4014 */  bnez       $v0, .Llevel_16_80079754
/* 4B9AD58 80079828 0C00B526 */   addiu     $s5, $s5, 0xC
.Llevel_16_8007982C:
/* 4B9AD5C 8007982C 2800B027 */  addiu      $s0, $sp, 0x28
/* 4B9AD60 80079830 21200002 */  addu       $a0, $s0, $zero
/* 4B9AD64 80079834 5E3C010C */  jal        func_8004F178
/* 4B9AD68 80079838 0C008526 */   addiu     $a1, $s4, 0xC
/* 4B9AD6C 8007983C 21200002 */  addu       $a0, $s0, $zero
/* 4B9AD70 80079840 21280000 */  addu       $a1, $zero, $zero
/* 4B9AD74 80079844 14000624 */  addiu      $a2, $zero, 0x14
/* 4B9AD78 80079848 50000724 */  addiu      $a3, $zero, 0x50
/* 4B9AD7C 8007984C 3000A28F */  lw         $v0, 0x30($sp)
/* 4B9AD80 80079850 0780033C */  lui        $v1, %hi(unk_ovlheader_80074410)
/* 4B9AD84 80079854 1044638C */  lw         $v1, %lo(unk_ovlheader_80074410)($v1)
/* 4B9AD88 80079858 58024224 */  addiu      $v0, $v0, 0x258
/* 4B9AD8C 8007985C 3000A2AF */  sw         $v0, 0x30($sp)
/* 4B9AD90 80079860 50000224 */  addiu      $v0, $zero, 0x50
/* 4B9AD94 80079864 09F86000 */  jalr       $v1
/* 4B9AD98 80079868 1000A2AF */   sw        $v0, 0x10($sp)
/* 4B9AD9C 8007986C 21208002 */  addu       $a0, $s4, $zero
/* 4B9ADA0 80079870 21280000 */  addu       $a1, $zero, $zero
/* 4B9ADA4 80079874 AFEE000C */  jal        func_8003BABC
/* 4B9ADA8 80079878 21300000 */   addu      $a2, $zero, $zero
/* 4B9ADAC 8007987C 21208002 */  addu       $a0, $s4, $zero
/* 4B9ADB0 80079880 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9ADB4 80079884 21300000 */  addu       $a2, $zero, $zero
/* 4B9ADB8 80079888 9ADA000C */  jal        func_80036A68
/* 4B9ADBC 8007988C 21380000 */   addu      $a3, $zero, $zero
/* 4B9ADC0 80079890 C656010C */  jal        func_80055B18
/* 4B9ADC4 80079894 21208002 */   addu      $a0, $s4, $zero
/* 4B9ADC8 80079898 B3E60108 */  j          .Llevel_16_80079ACC
/* 4B9ADCC 8007989C 00000000 */   nop
.Llevel_16_800798A0:
/* 4B9ADD0 800798A0 1400628E */  lw         $v0, 0x14($s3)
/* 4B9ADD4 800798A4 00000000 */  nop
/* 4B9ADD8 800798A8 04004014 */  bnez       $v0, .Llevel_16_800798BC
/* 4B9ADDC 800798AC 00000000 */   nop
/* 4B9ADE0 800798B0 0380023C */  lui        $v0, %hi(func_8002CA50 - 0x2370)
/* 4B9ADE4 800798B4 E0A64224 */  addiu      $v0, $v0, %lo(func_8002CA50 - 0x2370)
/* 4B9ADE8 800798B8 140062AE */  sw         $v0, 0x14($s3)
.Llevel_16_800798BC:
/* 4B9ADEC 800798BC 1400638E */  lw         $v1, 0x14($s3)
/* 4B9ADF0 800798C0 0380023C */  lui        $v0, %hi(func_8002D044 - 0x2370)
/* 4B9ADF4 800798C4 D4AC4224 */  addiu      $v0, $v0, %lo(func_8002D044 - 0x2370)
/* 4B9ADF8 800798C8 2B106200 */  sltu       $v0, $v1, $v0
/* 4B9ADFC 800798CC 19004010 */  beqz       $v0, .Llevel_16_80079934
/* 4B9AE00 800798D0 21200000 */   addu      $a0, $zero, $zero
/* 4B9AE04 800798D4 0580053C */  lui        $a1, (0x80050000 >> 16)
/* 4B9AE08 800798D8 70236290 */  lbu        $v0, 0x2370($v1)
/* 4B9AE0C 800798DC 1800638E */  lw         $v1, 0x18($s3)
/* 4B9AE10 800798E0 00160200 */  sll        $v0, $v0, 24
/* 4B9AE14 800798E4 26186200 */  xor        $v1, $v1, $v0
/* 4B9AE18 800798E8 180063AE */  sw         $v1, 0x18($s3)
.Llevel_16_800798EC:
/* 4B9AE1C 800798EC 1800628E */  lw         $v0, 0x18($s3)
/* 4B9AE20 800798F0 00000000 */  nop
/* 4B9AE24 800798F4 04004104 */  bgez       $v0, .Llevel_16_80079908
/* 4B9AE28 800798F8 00000000 */   nop
/* 4B9AE2C 800798FC 40100200 */  sll        $v0, $v0, 1
/* 4B9AE30 80079900 43E60108 */  j          .Llevel_16_8007990C
/* 4B9AE34 80079904 26104500 */   xor       $v0, $v0, $a1
.Llevel_16_80079908:
/* 4B9AE38 80079908 40100200 */  sll        $v0, $v0, 1
.Llevel_16_8007990C:
/* 4B9AE3C 8007990C 180062AE */  sw         $v0, 0x18($s3)
/* 4B9AE40 80079910 01008424 */  addiu      $a0, $a0, 0x1
/* 4B9AE44 80079914 08008228 */  slti       $v0, $a0, 0x8
/* 4B9AE48 80079918 F4FF4014 */  bnez       $v0, .Llevel_16_800798EC
/* 4B9AE4C 8007991C 00000000 */   nop
/* 4B9AE50 80079920 1400628E */  lw         $v0, 0x14($s3)
/* 4B9AE54 80079924 00000000 */  nop
/* 4B9AE58 80079928 01004224 */  addiu      $v0, $v0, 0x1
/* 4B9AE5C 8007992C 5FE60108 */  j          .Llevel_16_8007997C
/* 4B9AE60 80079930 140062AE */   sw        $v0, 0x14($s3)
.Llevel_16_80079934:
/* 4B9AE64 80079934 0F00053C */  lui        $a1, (0xFFFF0 >> 16)
/* 4B9AE68 80079938 F0FFA534 */  ori        $a1, $a1, (0xFFFF0 & 0xFFFF)
/* 4B9AE6C 8007993C F0FF043C */  lui        $a0, (0xFFF0000F >> 16)
/* 4B9AE70 80079940 0F008434 */  ori        $a0, $a0, (0xFFF0000F & 0xFFFF)
/* 4B9AE74 80079944 1800628E */  lw         $v0, 0x18($s3)
/* 4B9AE78 80079948 0780033C */  lui        $v1, %hi(D_800722B8)
/* 4B9AE7C 8007994C B822638C */  lw         $v1, %lo(D_800722B8)($v1)
/* 4B9AE80 80079950 03130200 */  sra        $v0, $v0, 12
/* 4B9AE84 80079954 24104500 */  and        $v0, $v0, $a1
/* 4B9AE88 80079958 24186400 */  and        $v1, $v1, $a0
/* 4B9AE8C 8007995C 0780043C */  lui        $a0, %hi(unk_ovlheader_800743B8)
/* 4B9AE90 80079960 B843848C */  lw         $a0, %lo(unk_ovlheader_800743B8)($a0)
/* 4B9AE94 80079964 25104300 */  or         $v0, $v0, $v1
/* 4B9AE98 80079968 04004410 */  beq        $v0, $a0, .Llevel_16_8007997C
/* 4B9AE9C 8007996C 00000000 */   nop
/* 4B9AEA0 80079970 0780013C */  lui        $at, %hi(D_80070300 + 7)
/* 4B9AEA4 80079974 070320A0 */  sb         $zero, %lo(D_80070300 + 7)($at)
/* 4B9AEA8 80079978 180060AE */  sw         $zero, 0x18($s3)
.Llevel_16_8007997C:
/* 4B9AEAC 8007997C 48008392 */  lbu        $v1, 0x48($s4)
/* 4B9AEB0 80079980 00000000 */  nop
/* 4B9AEB4 80079984 05006010 */  beqz       $v1, .Llevel_16_8007999C
/* 4B9AEB8 80079988 01000224 */   addiu     $v0, $zero, 0x1
/* 4B9AEBC 8007998C 43006210 */  beq        $v1, $v0, .Llevel_16_80079A9C
/* 4B9AEC0 80079990 0C006426 */   addiu     $a0, $s3, 0xC
/* 4B9AEC4 80079994 B3E60108 */  j          .Llevel_16_80079ACC
/* 4B9AEC8 80079998 00000000 */   nop
.Llevel_16_8007999C:
/* 4B9AECC 8007999C 4B00E010 */  beqz       $a3, .Llevel_16_80079ACC
/* 4B9AED0 800799A0 0C006426 */   addiu     $a0, $s3, 0xC
/* 4B9AED4 800799A4 69D6000C */  jal        func_800359A4
/* 4B9AED8 800799A8 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9AEDC 800799AC 47004010 */  beqz       $v0, .Llevel_16_80079ACC
/* 4B9AEE0 800799B0 0C009026 */   addiu     $s0, $s4, 0xC
/* 4B9AEE4 800799B4 0780053C */  lui        $a1, %hi(D_80070328)
/* 4B9AEE8 800799B8 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4B9AEEC 800799BC CD3C010C */  jal        func_8004F334
/* 4B9AEF0 800799C0 21200002 */   addu      $a0, $s0, $zero
/* 4B9AEF4 800799C4 010C4228 */  slti       $v0, $v0, 0xC01
/* 4B9AEF8 800799C8 40004014 */  bnez       $v0, .Llevel_16_80079ACC
/* 4B9AEFC 800799CC 0500222A */   slti      $v0, $s1, 0x5
/* 4B9AF00 800799D0 3E004010 */  beqz       $v0, .Llevel_16_80079ACC
/* 4B9AF04 800799D4 21280002 */   addu      $a1, $s0, $zero
/* 4B9AF08 800799D8 40101200 */  sll        $v0, $s2, 1
/* 4B9AF0C 800799DC 21105200 */  addu       $v0, $v0, $s2
/* 4B9AF10 800799E0 80100200 */  sll        $v0, $v0, 2
/* 4B9AF14 800799E4 23105200 */  subu       $v0, $v0, $s2
/* 4B9AF18 800799E8 C0100200 */  sll        $v0, $v0, 3
/* 4B9AF1C 800799EC 0780103C */  lui        $s0, %hi(D_8006C550)
/* 4B9AF20 800799F0 50C5108E */  lw         $s0, %lo(D_8006C550)($s0)
/* 4B9AF24 800799F4 01001124 */  addiu      $s1, $zero, 0x1
/* 4B9AF28 800799F8 21800202 */  addu       $s0, $s0, $v0
/* 4B9AF2C 800799FC 490011A2 */  sb         $s1, 0x49($s0)
/* 4B9AF30 80079A00 180000AE */  sw         $zero, 0x18($s0)
/* 4B9AF34 80079A04 46008292 */  lbu        $v0, 0x46($s4)
/* 4B9AF38 80079A08 0C000426 */  addiu      $a0, $s0, 0xC
/* 4B9AF3C 80079A0C 5E3C010C */  jal        func_8004F178
/* 4B9AF40 80079A10 460002A2 */   sb        $v0, 0x46($s0)
/* 4B9AF44 80079A14 46008292 */  lbu        $v0, 0x46($s4)
/* 4B9AF48 80079A18 00000000 */  nop
/* 4B9AF4C 80079A1C 40100200 */  sll        $v0, $v0, 1
/* 4B9AF50 80079A20 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9AF54 80079A24 21082200 */  addu       $at, $at, $v0
/* 4B9AF58 80079A28 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4B9AF5C 80079A2C 00000000 */  nop
/* 4B9AF60 80079A30 80100300 */  sll        $v0, $v1, 2
/* 4B9AF64 80079A34 21104300 */  addu       $v0, $v0, $v1
/* 4B9AF68 80079A38 80190200 */  sll        $v1, $v0, 6
/* 4B9AF6C 80079A3C 21104300 */  addu       $v0, $v0, $v1
/* 4B9AF70 80079A40 0C00038E */  lw         $v1, 0xC($s0)
/* 4B9AF74 80079A44 83120200 */  sra        $v0, $v0, 10
/* 4B9AF78 80079A48 21186200 */  addu       $v1, $v1, $v0
/* 4B9AF7C 80079A4C 0C0003AE */  sw         $v1, 0xC($s0)
/* 4B9AF80 80079A50 46008292 */  lbu        $v0, 0x46($s4)
/* 4B9AF84 80079A54 21208002 */  addu       $a0, $s4, $zero
/* 4B9AF88 80079A58 40100200 */  sll        $v0, $v0, 1
/* 4B9AF8C 80079A5C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4B9AF90 80079A60 21082200 */  addu       $at, $at, $v0
/* 4B9AF94 80079A64 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4B9AF98 80079A68 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9AF9C 80079A6C 80100300 */  sll        $v0, $v1, 2
/* 4B9AFA0 80079A70 21104300 */  addu       $v0, $v0, $v1
/* 4B9AFA4 80079A74 80190200 */  sll        $v1, $v0, 6
/* 4B9AFA8 80079A78 21104300 */  addu       $v0, $v0, $v1
/* 4B9AFAC 80079A7C 1000038E */  lw         $v1, 0x10($s0)
/* 4B9AFB0 80079A80 83120200 */  sra        $v0, $v0, 10
/* 4B9AFB4 80079A84 21186200 */  addu       $v1, $v1, $v0
/* 4B9AFB8 80079A88 28000224 */  addiu      $v0, $zero, 0x28
/* 4B9AFBC 80079A8C 100003AE */  sw         $v1, 0x10($s0)
/* 4B9AFC0 80079A90 0C0062AE */  sw         $v0, 0xC($s3)
/* 4B9AFC4 80079A94 B1E60108 */  j          .Llevel_16_80079AC4
/* 4B9AFC8 80079A98 480091A0 */   sb        $s1, 0x48($a0)
.Llevel_16_80079A9C:
/* 4B9AFCC 80079A9C 69D6000C */  jal        func_800359A4
/* 4B9AFD0 80079AA0 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9AFD4 80079AA4 09004010 */  beqz       $v0, .Llevel_16_80079ACC
/* 4B9AFD8 80079AA8 32000424 */   addiu     $a0, $zero, 0x32
/* 4B9AFDC 80079AAC DBD8000C */  jal        func_8003636C
/* 4B9AFE0 80079AB0 8C000524 */   addiu     $a1, $zero, 0x8C
/* 4B9AFE4 80079AB4 21208002 */  addu       $a0, $s4, $zero
/* 4B9AFE8 80079AB8 21280000 */  addu       $a1, $zero, $zero
/* 4B9AFEC 80079ABC 0C0062AE */  sw         $v0, 0xC($s3)
/* 4B9AFF0 80079AC0 480080A0 */  sb         $zero, 0x48($a0)
.Llevel_16_80079AC4:
/* 4B9AFF4 80079AC4 D0D3000C */  jal        func_80034F40
/* 4B9AFF8 80079AC8 00000000 */   nop
.Llevel_16_80079ACC:
/* 4B9AFFC 80079ACC 5000BF8F */  lw         $ra, 0x50($sp)
/* 4B9B000 80079AD0 4C00B58F */  lw         $s5, 0x4C($sp)
/* 4B9B004 80079AD4 4800B48F */  lw         $s4, 0x48($sp)
/* 4B9B008 80079AD8 4400B38F */  lw         $s3, 0x44($sp)
/* 4B9B00C 80079ADC 4000B28F */  lw         $s2, 0x40($sp)
/* 4B9B010 80079AE0 3C00B18F */  lw         $s1, 0x3C($sp)
/* 4B9B014 80079AE4 3800B08F */  lw         $s0, 0x38($sp)
/* 4B9B018 80079AE8 5800BD27 */  addiu      $sp, $sp, 0x58
/* 4B9B01C 80079AEC 0800E003 */  jr         $ra
/* 4B9B020 80079AF0 00000000 */   nop
.size MobyUpdate_154_level_16, . - MobyUpdate_154_level_16
