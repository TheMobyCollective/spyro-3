.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_18_80079724
/* 4EAC454 80079724 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 4EAC458 80079728 6400B3AF */  sw         $s3, 0x64($sp)
/* 4EAC45C 8007972C 21988000 */  addu       $s3, $a0, $zero
/* 4EAC460 80079730 7400BFAF */  sw         $ra, 0x74($sp)
/* 4EAC464 80079734 7000B6AF */  sw         $s6, 0x70($sp)
/* 4EAC468 80079738 6C00B5AF */  sw         $s5, 0x6C($sp)
/* 4EAC46C 8007973C 6800B4AF */  sw         $s4, 0x68($sp)
/* 4EAC470 80079740 6000B2AF */  sw         $s2, 0x60($sp)
/* 4EAC474 80079744 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 4EAC478 80079748 5800B0AF */  sw         $s0, 0x58($sp)
/* 4EAC47C 8007974C 0C00668E */  lw         $a2, 0xC($s3)
/* 4EAC480 80079750 0000758E */  lw         $s5, 0x0($s3)
/* 4EAC484 80079754 0004C228 */  slti       $v0, $a2, 0x400
/* 4EAC488 80079758 6C014014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC48C 8007975C 00000000 */   nop
/* 4EAC490 80079760 1000658E */  lw         $a1, 0x10($s3)
/* 4EAC494 80079764 00000000 */  nop
/* 4EAC498 80079768 0004A228 */  slti       $v0, $a1, 0x400
/* 4EAC49C 8007976C 67014014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC4A0 80079770 00000000 */   nop
/* 4EAC4A4 80079774 1400648E */  lw         $a0, 0x14($s3)
/* 4EAC4A8 80079778 00000000 */  nop
/* 4EAC4AC 8007977C 00048228 */  slti       $v0, $a0, 0x400
/* 4EAC4B0 80079780 62014014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC4B4 80079784 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 4EAC4B8 80079788 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 4EAC4BC 8007978C 2A106600 */  slt        $v0, $v1, $a2
/* 4EAC4C0 80079790 5E014014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC4C4 80079794 2A106500 */   slt       $v0, $v1, $a1
/* 4EAC4C8 80079798 5C014014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC4CC 8007979C 2A106400 */   slt       $v0, $v1, $a0
/* 4EAC4D0 800797A0 5A014014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC4D4 800797A4 00000000 */   nop
/* 4EAC4D8 800797A8 4D006292 */  lbu        $v0, 0x4D($s3)
/* 4EAC4DC 800797AC 00000000 */  nop
/* 4EAC4E0 800797B0 56014010 */  beqz       $v0, .Llevel_18_80079D0C
/* 4EAC4E4 800797B4 1800A427 */   addiu     $a0, $sp, 0x18
/* 4EAC4E8 800797B8 5E3C010C */  jal        func_8004F178
/* 4EAC4EC 800797BC 0C006526 */   addiu     $a1, $s3, 0xC
/* 4EAC4F0 800797C0 48006392 */  lbu        $v1, 0x48($s3)
/* 4EAC4F4 800797C4 01000224 */  addiu      $v0, $zero, 0x1
/* 4EAC4F8 800797C8 47006210 */  beq        $v1, $v0, .Llevel_18_800798E8
/* 4EAC4FC 800797CC 02006228 */   slti      $v0, $v1, 0x2
/* 4EAC500 800797D0 05004010 */  beqz       $v0, .Llevel_18_800797E8
/* 4EAC504 800797D4 00000000 */   nop
/* 4EAC508 800797D8 0A006010 */  beqz       $v1, .Llevel_18_80079804
/* 4EAC50C 800797DC 0100163C */   lui       $s6, (0x1869F >> 16)
/* 4EAC510 800797E0 54E70108 */  j          .Llevel_18_80079D50
/* 4EAC514 800797E4 00000000 */   nop
.Llevel_18_800797E8:
/* 4EAC518 800797E8 02000224 */  addiu      $v0, $zero, 0x2
/* 4EAC51C 800797EC E5006210 */  beq        $v1, $v0, .Llevel_18_80079B84
/* 4EAC520 800797F0 03000224 */   addiu     $v0, $zero, 0x3
/* 4EAC524 800797F4 1A016210 */  beq        $v1, $v0, .Llevel_18_80079C60
/* 4EAC528 800797F8 00000000 */   nop
/* 4EAC52C 800797FC 54E70108 */  j          .Llevel_18_80079D50
/* 4EAC530 80079800 00000000 */   nop
.Llevel_18_80079804:
/* 4EAC534 80079804 9F86D636 */  ori        $s6, $s6, (0x1869F & 0xFFFF)
/* 4EAC538 80079808 0780123C */  lui        $s2, %hi(D_8006E788)
/* 4EAC53C 8007980C 88E75226 */  addiu      $s2, $s2, %lo(D_8006E788)
/* 4EAC540 80079810 0400A0AE */  sw         $zero, 0x4($s5)
/* 4EAC544 80079814 0000518E */  lw         $s1, 0x0($s2)
/* 4EAC548 80079818 00000000 */  nop
/* 4EAC54C 8007981C 30002012 */  beqz       $s1, .Llevel_18_800798E0
/* 4EAC550 80079820 04005226 */   addiu     $s2, $s2, 0x4
/* 4EAC554 80079824 3800B427 */  addiu      $s4, $sp, 0x38
.Llevel_18_80079828:
/* 4EAC558 80079828 0800228E */  lw         $v0, 0x8($s1)
/* 4EAC55C 8007982C 00000000 */  nop
/* 4EAC560 80079830 27004010 */  beqz       $v0, .Llevel_18_800798D0
/* 4EAC564 80079834 21208002 */   addu      $a0, $s4, $zero
/* 4EAC568 80079838 5E3C010C */  jal        func_8004F178
/* 4EAC56C 8007983C 0C002526 */   addiu     $a1, $s1, 0xC
/* 4EAC570 80079840 21300000 */  addu       $a2, $zero, $zero
/* 4EAC574 80079844 3800A38F */  lw         $v1, 0x38($sp)
/* 4EAC578 80079848 0C00648E */  lw         $a0, 0xC($s3)
/* 4EAC57C 8007984C 3C00A28F */  lw         $v0, 0x3C($sp)
/* 4EAC580 80079850 1000658E */  lw         $a1, 0x10($s3)
/* 4EAC584 80079854 23206400 */  subu       $a0, $v1, $a0
/* 4EAC588 80079858 203A010C */  jal        func_8004E880
/* 4EAC58C 8007985C 23284500 */   subu      $a1, $v0, $a1
/* 4EAC590 80079860 46006392 */  lbu        $v1, 0x46($s3)
/* 4EAC594 80079864 00000000 */  nop
/* 4EAC598 80079868 23104300 */  subu       $v0, $v0, $v1
/* 4EAC59C 8007986C FF005030 */  andi       $s0, $v0, 0xFF
/* 4EAC5A0 80079870 8100022A */  slti       $v0, $s0, 0x81
/* 4EAC5A4 80079874 02004014 */  bnez       $v0, .Llevel_18_80079880
/* 4EAC5A8 80079878 00000000 */   nop
/* 4EAC5AC 8007987C 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_18_80079880:
/* 4EAC5B0 80079880 02000106 */  bgez       $s0, .Llevel_18_8007988C
/* 4EAC5B4 80079884 00000000 */   nop
/* 4EAC5B8 80079888 23801000 */  negu       $s0, $s0
.Llevel_18_8007988C:
/* 4EAC5BC 8007988C 0600022A */  slti       $v0, $s0, 0x6
/* 4EAC5C0 80079890 0F004010 */  beqz       $v0, .Llevel_18_800798D0
/* 4EAC5C4 80079894 0C006426 */   addiu     $a0, $s3, 0xC
/* 4EAC5C8 80079898 CD3C010C */  jal        func_8004F334
/* 4EAC5CC 8007989C 21288002 */   addu      $a1, $s4, $zero
/* 4EAC5D0 800798A0 00100324 */  addiu      $v1, $zero, 0x1000
/* 4EAC5D4 800798A4 23186200 */  subu       $v1, $v1, $v0
/* 4EAC5D8 800798A8 02006104 */  bgez       $v1, .Llevel_18_800798B4
/* 4EAC5DC 800798AC 00000000 */   nop
/* 4EAC5E0 800798B0 23180300 */  negu       $v1, $v1
.Llevel_18_800798B4:
/* 4EAC5E4 800798B4 40111000 */  sll        $v0, $s0, 5
/* 4EAC5E8 800798B8 21186200 */  addu       $v1, $v1, $v0
/* 4EAC5EC 800798BC 2A107600 */  slt        $v0, $v1, $s6
/* 4EAC5F0 800798C0 03004010 */  beqz       $v0, .Llevel_18_800798D0
/* 4EAC5F4 800798C4 00000000 */   nop
/* 4EAC5F8 800798C8 0400B1AE */  sw         $s1, 0x4($s5)
/* 4EAC5FC 800798CC 21B06000 */  addu       $s6, $v1, $zero
.Llevel_18_800798D0:
/* 4EAC600 800798D0 0000518E */  lw         $s1, 0x0($s2)
/* 4EAC604 800798D4 00000000 */  nop
/* 4EAC608 800798D8 D3FF2016 */  bnez       $s1, .Llevel_18_80079828
/* 4EAC60C 800798DC 04005226 */   addiu     $s2, $s2, 0x4
.Llevel_18_800798E0:
/* 4EAC610 800798E0 01000224 */  addiu      $v0, $zero, 0x1
/* 4EAC614 800798E4 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_18_800798E8:
/* 4EAC618 800798E8 0800A58E */  lw         $a1, 0x8($s5)
/* 4EAC61C 800798EC F0EF000C */  jal        func_8003BFC0
/* 4EAC620 800798F0 21206002 */   addu      $a0, $s3, $zero
/* 4EAC624 800798F4 05004014 */  bnez       $v0, .Llevel_18_8007990C
/* 4EAC628 800798F8 21206002 */   addu      $a0, $s3, $zero
/* 4EAC62C 800798FC 01000524 */  addiu      $a1, $zero, 0x1
/* 4EAC630 80079900 AFEE000C */  jal        func_8003BABC
/* 4EAC634 80079904 04000624 */   addiu     $a2, $zero, 0x4
/* 4EAC638 80079908 0800A2AE */  sw         $v0, 0x8($s5)
.Llevel_18_8007990C:
/* 4EAC63C 8007990C 0400A28E */  lw         $v0, 0x4($s5)
/* 4EAC640 80079910 00000000 */  nop
/* 4EAC644 80079914 48004290 */  lbu        $v0, 0x48($v0)
/* 4EAC648 80079918 00000000 */  nop
/* 4EAC64C 8007991C 80004230 */  andi       $v0, $v0, 0x80
/* 4EAC650 80079920 02004010 */  beqz       $v0, .Llevel_18_8007992C
/* 4EAC654 80079924 00000000 */   nop
/* 4EAC658 80079928 0400A0AE */  sw         $zero, 0x4($s5)
.Llevel_18_8007992C:
/* 4EAC65C 8007992C 0400A58E */  lw         $a1, 0x4($s5)
/* 4EAC660 80079930 00000000 */  nop
/* 4EAC664 80079934 2800A010 */  beqz       $a1, .Llevel_18_800799D8
/* 4EAC668 80079938 2800B027 */   addiu     $s0, $sp, 0x28
/* 4EAC66C 8007993C 21200002 */  addu       $a0, $s0, $zero
/* 4EAC670 80079940 5E3C010C */  jal        func_8004F178
/* 4EAC674 80079944 0C00A524 */   addiu     $a1, $a1, 0xC
/* 4EAC678 80079948 21200002 */  addu       $a0, $s0, $zero
/* 4EAC67C 8007994C 21288000 */  addu       $a1, $a0, $zero
/* 4EAC680 80079950 2000A28F */  lw         $v0, 0x20($sp)
/* 4EAC684 80079954 0C006626 */  addiu      $a2, $s3, 0xC
/* 4EAC688 80079958 80004224 */  addiu      $v0, $v0, 0x80
/* 4EAC68C 8007995C 723C010C */  jal        func_8004F1C8
/* 4EAC690 80079960 2000A2AF */   sw        $v0, 0x20($sp)
/* 4EAC694 80079964 21300000 */  addu       $a2, $zero, $zero
/* 4EAC698 80079968 2800A48F */  lw         $a0, 0x28($sp)
/* 4EAC69C 8007996C 3000A28F */  lw         $v0, 0x30($sp)
/* 4EAC6A0 80079970 2C00A58F */  lw         $a1, 0x2C($sp)
/* 4EAC6A4 80079974 00014224 */  addiu      $v0, $v0, 0x100
/* 4EAC6A8 80079978 203A010C */  jal        func_8004E880
/* 4EAC6AC 8007997C 3000A2AF */   sw        $v0, 0x30($sp)
/* 4EAC6B0 80079980 2800A48F */  lw         $a0, 0x28($sp)
/* 4EAC6B4 80079984 2C00A58F */  lw         $a1, 0x2C($sp)
/* 4EAC6B8 80079988 203A010C */  jal        func_8004E880
/* 4EAC6BC 8007998C 21300000 */   addu      $a2, $zero, $zero
/* 4EAC6C0 80079990 46006492 */  lbu        $a0, 0x46($s3)
/* 4EAC6C4 80079994 00000000 */  nop
/* 4EAC6C8 80079998 23104400 */  subu       $v0, $v0, $a0
/* 4EAC6CC 8007999C FF004330 */  andi       $v1, $v0, 0xFF
/* 4EAC6D0 800799A0 81006228 */  slti       $v0, $v1, 0x81
/* 4EAC6D4 800799A4 03004014 */  bnez       $v0, .Llevel_18_800799B4
/* 4EAC6D8 800799A8 FDFF6228 */   slti      $v0, $v1, -0x3
/* 4EAC6DC 800799AC 00FF6324 */  addiu      $v1, $v1, -0x100
/* 4EAC6E0 800799B0 FDFF6228 */  slti       $v0, $v1, -0x3
.Llevel_18_800799B4:
/* 4EAC6E4 800799B4 03004010 */  beqz       $v0, .Llevel_18_800799C4
/* 4EAC6E8 800799B8 04006228 */   slti      $v0, $v1, 0x4
/* 4EAC6EC 800799BC FDFF0324 */  addiu      $v1, $zero, -0x3
/* 4EAC6F0 800799C0 04006228 */  slti       $v0, $v1, 0x4
.Llevel_18_800799C4:
/* 4EAC6F4 800799C4 03004014 */  bnez       $v0, .Llevel_18_800799D4
/* 4EAC6F8 800799C8 21108300 */   addu      $v0, $a0, $v1
/* 4EAC6FC 800799CC 03000324 */  addiu      $v1, $zero, 0x3
/* 4EAC700 800799D0 21108300 */  addu       $v0, $a0, $v1
.Llevel_18_800799D4:
/* 4EAC704 800799D4 460062A2 */  sb         $v0, 0x46($s3)
.Llevel_18_800799D8:
/* 4EAC708 800799D8 0C007026 */  addiu      $s0, $s3, 0xC
/* 4EAC70C 800799DC 46006292 */  lbu        $v0, 0x46($s3)
/* 4EAC710 800799E0 21200002 */  addu       $a0, $s0, $zero
/* 4EAC714 800799E4 40100200 */  sll        $v0, $v0, 1
/* 4EAC718 800799E8 0680013C */  lui        $at, %hi(D_80065920)
/* 4EAC71C 800799EC 21082200 */  addu       $at, $at, $v0
/* 4EAC720 800799F0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 4EAC724 800799F4 21280002 */  addu       $a1, $s0, $zero
/* 4EAC728 800799F8 03110200 */  sra        $v0, $v0, 4
/* 4EAC72C 800799FC 2800A2AF */  sw         $v0, 0x28($sp)
/* 4EAC730 80079A00 46006292 */  lbu        $v0, 0x46($s3)
/* 4EAC734 80079A04 2800B627 */  addiu      $s6, $sp, 0x28
/* 4EAC738 80079A08 40100200 */  sll        $v0, $v0, 1
/* 4EAC73C 80079A0C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EAC740 80079A10 21082200 */  addu       $at, $at, $v0
/* 4EAC744 80079A14 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EAC748 80079A18 2130C002 */  addu       $a2, $s6, $zero
/* 4EAC74C 80079A1C 3000A0AF */  sw         $zero, 0x30($sp)
/* 4EAC750 80079A20 03110200 */  sra        $v0, $v0, 4
/* 4EAC754 80079A24 653C010C */  jal        func_8004F194
/* 4EAC758 80079A28 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 4EAC75C 80079A2C 21200002 */  addu       $a0, $s0, $zero
/* 4EAC760 80079A30 80000524 */  addiu      $a1, $zero, 0x80
/* 4EAC764 80079A34 01000624 */  addiu      $a2, $zero, 0x1
/* 4EAC768 80079A38 44006292 */  lbu        $v0, 0x44($s3)
/* 4EAC76C 80079A3C 21380000 */  addu       $a3, $zero, $zero
/* 4EAC770 80079A40 04004224 */  addiu      $v0, $v0, 0x4
/* 4EAC774 80079A44 440062A2 */  sb         $v0, 0x44($s3)
/* 4EAC778 80079A48 1100023C */  lui        $v0, (0x110000 >> 16)
/* 4EAC77C 80079A4C 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EAC780 80079A50 8C6E000C */  jal        func_8001BA30
/* 4EAC784 80079A54 1400B3AF */   sw        $s3, 0x14($sp)
/* 4EAC788 80079A58 0680123C */  lui        $s2, %hi(D_80065920)
/* 4EAC78C 80079A5C 20595226 */  addiu      $s2, $s2, %lo(D_80065920)
/* 4EAC790 80079A60 0680143C */  lui        $s4, %hi(D_800658A0)
/* 4EAC794 80079A64 A0589426 */  addiu      $s4, $s4, %lo(D_800658A0)
/* 4EAC798 80079A68 21884000 */  addu       $s1, $v0, $zero
/* 4EAC79C 80079A6C 19002012 */  beqz       $s1, .Llevel_18_80079AD4
/* 4EAC7A0 80079A70 21300000 */   addu      $a2, $zero, $zero
/* 4EAC7A4 80079A74 0C00238E */  lw         $v1, 0xC($s1)
/* 4EAC7A8 80079A78 0C00648E */  lw         $a0, 0xC($s3)
/* 4EAC7AC 80079A7C 1000228E */  lw         $v0, 0x10($s1)
/* 4EAC7B0 80079A80 1000658E */  lw         $a1, 0x10($s3)
/* 4EAC7B4 80079A84 23206400 */  subu       $a0, $v1, $a0
/* 4EAC7B8 80079A88 203A010C */  jal        func_8004E880
/* 4EAC7BC 80079A8C 23284500 */   subu      $a1, $v0, $a1
/* 4EAC7C0 80079A90 21300000 */  addu       $a2, $zero, $zero
/* 4EAC7C4 80079A94 2800A48F */  lw         $a0, 0x28($sp)
/* 4EAC7C8 80079A98 2C00A58F */  lw         $a1, 0x2C($sp)
/* 4EAC7CC 80079A9C 203A010C */  jal        func_8004E880
/* 4EAC7D0 80079AA0 21804000 */   addu      $s0, $v0, $zero
/* 4EAC7D4 80079AA4 21200002 */  addu       $a0, $s0, $zero
/* 4EAC7D8 80079AA8 21284000 */  addu       $a1, $v0, $zero
/* 4EAC7DC 80079AAC 20000624 */  addiu      $a2, $zero, 0x20
/* 4EAC7E0 80079AB0 3ED8000C */  jal        func_800360F8
/* 4EAC7E4 80079AB4 40000724 */   addiu     $a3, $zero, 0x40
/* 4EAC7E8 80079AB8 510022A2 */  sb         $v0, 0x51($s1)
/* 4EAC7EC 80079ABC 0200A286 */  lh         $v0, 0x2($s5)
/* 4EAC7F0 80079AC0 00000000 */  nop
/* 4EAC7F4 80079AC4 0E004010 */  beqz       $v0, .Llevel_18_80079B00
/* 4EAC7F8 80079AC8 02000224 */   addiu     $v0, $zero, 0x2
/* 4EAC7FC 80079ACC 54E70108 */  j          .Llevel_18_80079D50
/* 4EAC800 80079AD0 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_18_80079AD4:
/* 4EAC804 80079AD4 2120A002 */  addu       $a0, $s5, $zero
/* 4EAC808 80079AD8 69D6000C */  jal        func_800359A4
/* 4EAC80C 80079ADC 02000524 */   addiu     $a1, $zero, 0x2
/* 4EAC810 80079AE0 8A004014 */  bnez       $v0, .Llevel_18_80079D0C
/* 4EAC814 80079AE4 1800A427 */   addiu     $a0, $sp, 0x18
/* 4EAC818 80079AE8 DA60000C */  jal        func_80018368
/* 4EAC81C 80079AEC 21280002 */   addu      $a1, $s0, $zero
/* 4EAC820 80079AF0 06004010 */  beqz       $v0, .Llevel_18_80079B0C
/* 4EAC824 80079AF4 21200002 */   addu      $a0, $s0, $zero
/* 4EAC828 80079AF8 5E3C010C */  jal        func_8004F178
/* 4EAC82C 80079AFC 1800A527 */   addiu     $a1, $sp, 0x18
.Llevel_18_80079B00:
/* 4EAC830 80079B00 03000224 */  addiu      $v0, $zero, 0x3
/* 4EAC834 80079B04 54E70108 */  j          .Llevel_18_80079D50
/* 4EAC838 80079B08 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_18_80079B0C:
/* 4EAC83C 80079B0C 9171010C */  jal        rand
/* 4EAC840 80079B10 00000000 */   nop
/* 4EAC844 80079B14 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EAC848 80079B18 FF004230 */  andi       $v0, $v0, 0xFF
/* 4EAC84C 80079B1C 40100200 */  sll        $v0, $v0, 1
/* 4EAC850 80079B20 21185200 */  addu       $v1, $v0, $s2
/* 4EAC854 80079B24 21288000 */  addu       $a1, $a0, $zero
/* 4EAC858 80079B28 00006384 */  lh         $v1, 0x0($v1)
/* 4EAC85C 80079B2C 21105400 */  addu       $v0, $v0, $s4
/* 4EAC860 80079B30 C3190300 */  sra        $v1, $v1, 7
/* 4EAC864 80079B34 1800A3AF */  sw         $v1, 0x18($sp)
/* 4EAC868 80079B38 00004284 */  lh         $v0, 0x0($v0)
/* 4EAC86C 80079B3C 2130C002 */  addu       $a2, $s6, $zero
/* 4EAC870 80079B40 2000A0AF */  sw         $zero, 0x20($sp)
/* 4EAC874 80079B44 C3110200 */  sra        $v0, $v0, 7
/* 4EAC878 80079B48 653C010C */  jal        func_8004F194
/* 4EAC87C 80079B4C 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 4EAC880 80079B50 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EAC884 80079B54 443C010C */  jal        func_8004F110
/* 4EAC888 80079B58 02000524 */   addiu     $a1, $zero, 0x2
/* 4EAC88C 80079B5C 01000424 */  addiu      $a0, $zero, 0x1
/* 4EAC890 80079B60 37000524 */  addiu      $a1, $zero, 0x37
/* 4EAC894 80079B64 21300002 */  addu       $a2, $s0, $zero
/* 4EAC898 80079B68 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4EAC89C 80079B6C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4EAC8A0 80079B70 00000000 */  nop
/* 4EAC8A4 80079B74 09F84000 */  jalr       $v0
/* 4EAC8A8 80079B78 1800A727 */   addiu     $a3, $sp, 0x18
/* 4EAC8AC 80079B7C 54E70108 */  j          .Llevel_18_80079D50
/* 4EAC8B0 80079B80 00000000 */   nop
.Llevel_18_80079B84:
/* 4EAC8B4 80079B84 0780143C */  lui        $s4, %hi(D_8006E788)
/* 4EAC8B8 80079B88 88E79426 */  addiu      $s4, $s4, %lo(D_8006E788)
/* 4EAC8BC 80079B8C 09E70108 */  j          .Llevel_18_80079C24
/* 4EAC8C0 80079B90 21B00000 */   addu      $s6, $zero, $zero
.Llevel_18_80079B94:
/* 4EAC8C4 80079B94 30004010 */  beqz       $v0, .Llevel_18_80079C58
/* 4EAC8C8 80079B98 00000000 */   nop
/* 4EAC8CC 80079B9C 0800428E */  lw         $v0, 0x8($s2)
/* 4EAC8D0 80079BA0 00000000 */  nop
/* 4EAC8D4 80079BA4 1F004010 */  beqz       $v0, .Llevel_18_80079C24
/* 4EAC8D8 80079BA8 1100033C */   lui       $v1, (0x110000 >> 16)
/* 4EAC8DC 80079BAC 1800428E */  lw         $v0, 0x18($s2)
/* 4EAC8E0 80079BB0 00000000 */  nop
/* 4EAC8E4 80079BB4 24104300 */  and        $v0, $v0, $v1
/* 4EAC8E8 80079BB8 1A004014 */  bnez       $v0, .Llevel_18_80079C24
/* 4EAC8EC 80079BBC 0C006426 */   addiu     $a0, $s3, 0xC
/* 4EAC8F0 80079BC0 CD3C010C */  jal        func_8004F334
/* 4EAC8F4 80079BC4 0C004526 */   addiu     $a1, $s2, 0xC
/* 4EAC8F8 80079BC8 00104228 */  slti       $v0, $v0, 0x1000
/* 4EAC8FC 80079BCC 15004010 */  beqz       $v0, .Llevel_18_80079C24
/* 4EAC900 80079BD0 00000000 */   nop
/* 4EAC904 80079BD4 36006486 */  lh         $a0, 0x36($s3)
/* 4EAC908 80079BD8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 4EAC90C 80079BDC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 4EAC910 80079BE0 00000000 */  nop
/* 4EAC914 80079BE4 09F84000 */  jalr       $v0
/* 4EAC918 80079BE8 21286002 */   addu      $a1, $s3, $zero
/* 4EAC91C 80079BEC 21884000 */  addu       $s1, $v0, $zero
/* 4EAC920 80079BF0 0C002012 */  beqz       $s1, .Llevel_18_80079C24
/* 4EAC924 80079BF4 21300000 */   addu      $a2, $zero, $zero
/* 4EAC928 80079BF8 0100D626 */  addiu      $s6, $s6, 0x1
/* 4EAC92C 80079BFC 0C00438E */  lw         $v1, 0xC($s2)
/* 4EAC930 80079C00 0C00648E */  lw         $a0, 0xC($s3)
/* 4EAC934 80079C04 1000428E */  lw         $v0, 0x10($s2)
/* 4EAC938 80079C08 1000658E */  lw         $a1, 0x10($s3)
/* 4EAC93C 80079C0C 0000308E */  lw         $s0, 0x0($s1)
/* 4EAC940 80079C10 23206400 */  subu       $a0, $v1, $a0
/* 4EAC944 80079C14 203A010C */  jal        func_8004E880
/* 4EAC948 80079C18 23284500 */   subu      $a1, $v0, $a1
/* 4EAC94C 80079C1C 460022A2 */  sb         $v0, 0x46($s1)
/* 4EAC950 80079C20 040012AE */  sw         $s2, 0x4($s0)
.Llevel_18_80079C24:
/* 4EAC954 80079C24 0000928E */  lw         $s2, 0x0($s4)
/* 4EAC958 80079C28 00000000 */  nop
/* 4EAC95C 80079C2C 0A004012 */  beqz       $s2, .Llevel_18_80079C58
/* 4EAC960 80079C30 04009426 */   addiu     $s4, $s4, 0x4
/* 4EAC964 80079C34 0780023C */  lui        $v0, %hi(D_8006C578)
/* 4EAC968 80079C38 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 4EAC96C 80079C3C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 4EAC970 80079C40 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 4EAC974 80079C44 00000000 */  nop
/* 4EAC978 80079C48 23104300 */  subu       $v0, $v0, $v1
/* 4EAC97C 80079C4C 15004228 */  slti       $v0, $v0, 0x15
/* 4EAC980 80079C50 D0FF4010 */  beqz       $v0, .Llevel_18_80079B94
/* 4EAC984 80079C54 0400C22A */   slti      $v0, $s6, 0x4
.Llevel_18_80079C58:
/* 4EAC988 80079C58 2C00C016 */  bnez       $s6, .Llevel_18_80079D0C
/* 4EAC98C 80079C5C 00000000 */   nop
.Llevel_18_80079C60:
/* 4EAC990 80079C60 9171010C */  jal        rand
/* 4EAC994 80079C64 21800000 */   addu      $s0, $zero, $zero
/* 4EAC998 80079C68 FF005130 */  andi       $s1, $v0, 0xFF
/* 4EAC99C 80079C6C 0C007426 */  addiu      $s4, $s3, 0xC
/* 4EAC9A0 80079C70 0680033C */  lui        $v1, %hi(D_80065920)
/* 4EAC9A4 80079C74 20596324 */  addiu      $v1, $v1, %lo(D_80065920)
/* 4EAC9A8 80079C78 40101100 */  sll        $v0, $s1, 1
/* 4EAC9AC 80079C7C 21904300 */  addu       $s2, $v0, $v1
.Llevel_18_80079C80:
/* 4EAC9B0 80079C80 01000424 */  addiu      $a0, $zero, 0x1
/* 4EAC9B4 80079C84 37000524 */  addiu      $a1, $zero, 0x37
/* 4EAC9B8 80079C88 21308002 */  addu       $a2, $s4, $zero
/* 4EAC9BC 80079C8C 00004286 */  lh         $v0, 0x0($s2)
/* 4EAC9C0 80079C90 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 4EAC9C4 80079C94 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 4EAC9C8 80079C98 C3110200 */  sra        $v0, $v0, 7
/* 4EAC9CC 80079C9C 1800A2AF */  sw         $v0, 0x18($sp)
/* 4EAC9D0 80079CA0 40101100 */  sll        $v0, $s1, 1
/* 4EAC9D4 80079CA4 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EAC9D8 80079CA8 21082200 */  addu       $at, $at, $v0
/* 4EAC9DC 80079CAC A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EAC9E0 80079CB0 1800A727 */  addiu      $a3, $sp, 0x18
/* 4EAC9E4 80079CB4 2000A0AF */  sw         $zero, 0x20($sp)
/* 4EAC9E8 80079CB8 C3110200 */  sra        $v0, $v0, 7
/* 4EAC9EC 80079CBC 09F86000 */  jalr       $v1
/* 4EAC9F0 80079CC0 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 4EAC9F4 80079CC4 01000232 */  andi       $v0, $s0, 0x1
/* 4EAC9F8 80079CC8 0B004010 */  beqz       $v0, .Llevel_18_80079CF8
/* 4EAC9FC 80079CCC 1800A427 */   addiu     $a0, $sp, 0x18
/* 4EACA00 80079CD0 443C010C */  jal        func_8004F110
/* 4EACA04 80079CD4 01000524 */   addiu     $a1, $zero, 0x1
/* 4EACA08 80079CD8 01000424 */  addiu      $a0, $zero, 0x1
/* 4EACA0C 80079CDC 37000524 */  addiu      $a1, $zero, 0x37
/* 4EACA10 80079CE0 21308002 */  addu       $a2, $s4, $zero
/* 4EACA14 80079CE4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4EACA18 80079CE8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4EACA1C 80079CEC 00000000 */  nop
/* 4EACA20 80079CF0 09F84000 */  jalr       $v0
/* 4EACA24 80079CF4 1800A727 */   addiu     $a3, $sp, 0x18
.Llevel_18_80079CF8:
/* 4EACA28 80079CF8 40005226 */  addiu      $s2, $s2, 0x40
/* 4EACA2C 80079CFC 01001026 */  addiu      $s0, $s0, 0x1
/* 4EACA30 80079D00 0800022A */  slti       $v0, $s0, 0x8
/* 4EACA34 80079D04 DEFF4014 */  bnez       $v0, .Llevel_18_80079C80
/* 4EACA38 80079D08 20003126 */   addiu     $s1, $s1, 0x20
.Llevel_18_80079D0C:
/* 4EACA3C 80079D0C 0800A58E */  lw         $a1, 0x8($s5)
/* 4EACA40 80079D10 F0EF000C */  jal        func_8003BFC0
/* 4EACA44 80079D14 21206002 */   addu      $a0, $s3, $zero
/* 4EACA48 80079D18 0B004010 */  beqz       $v0, .Llevel_18_80079D48
/* 4EACA4C 80079D1C 00000000 */   nop
/* 4EACA50 80079D20 0800A58E */  lw         $a1, 0x8($s5)
/* 4EACA54 80079D24 F0EF000C */  jal        func_8003BFC0
/* 4EACA58 80079D28 21206002 */   addu      $a0, $s3, $zero
/* 4EACA5C 80079D2C 05004010 */  beqz       $v0, .Llevel_18_80079D44
/* 4EACA60 80079D30 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 4EACA64 80079D34 0800A48E */  lw         $a0, 0x8($s5)
/* 4EACA68 80079D38 9CEF000C */  jal        func_8003BE70
/* 4EACA6C 80079D3C 00000000 */   nop
/* 4EACA70 80079D40 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_18_80079D44:
/* 4EACA74 80079D44 0800A2AE */  sw         $v0, 0x8($s5)
.Llevel_18_80079D48:
/* 4EACA78 80079D48 C656010C */  jal        func_80055B18
/* 4EACA7C 80079D4C 21206002 */   addu      $a0, $s3, $zero
.Llevel_18_80079D50:
/* 4EACA80 80079D50 7400BF8F */  lw         $ra, 0x74($sp)
/* 4EACA84 80079D54 7000B68F */  lw         $s6, 0x70($sp)
/* 4EACA88 80079D58 6C00B58F */  lw         $s5, 0x6C($sp)
/* 4EACA8C 80079D5C 6800B48F */  lw         $s4, 0x68($sp)
/* 4EACA90 80079D60 6400B38F */  lw         $s3, 0x64($sp)
/* 4EACA94 80079D64 6000B28F */  lw         $s2, 0x60($sp)
/* 4EACA98 80079D68 5C00B18F */  lw         $s1, 0x5C($sp)
/* 4EACA9C 80079D6C 5800B08F */  lw         $s0, 0x58($sp)
/* 4EACAA0 80079D70 7800BD27 */  addiu      $sp, $sp, 0x78
/* 4EACAA4 80079D74 0800E003 */  jr         $ra
/* 4EACAA8 80079D78 00000000 */   nop
.size func_level_18_80079724, . - func_level_18_80079724
