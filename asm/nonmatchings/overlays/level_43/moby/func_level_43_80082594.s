.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_495_level_43
/* 87A7AC4 80082594 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 87A7AC8 80082598 1400B1AF */  sw         $s1, 0x14($sp)
/* 87A7ACC 8008259C 21888000 */  addu       $s1, $a0, $zero
/* 87A7AD0 800825A0 02000324 */  addiu      $v1, $zero, 0x2
/* 87A7AD4 800825A4 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 87A7AD8 800825A8 1800B2AF */  sw         $s2, 0x18($sp)
/* 87A7ADC 800825AC 1000B0AF */  sw         $s0, 0x10($sp)
/* 87A7AE0 800825B0 48002292 */  lbu        $v0, 0x48($s1)
/* 87A7AE4 800825B4 0000328E */  lw         $s2, 0x0($s1)
/* 87A7AE8 800825B8 25004310 */  beq        $v0, $v1, .Llevel_43_80082650
/* 87A7AEC 800825BC 00000000 */   nop
/* 87A7AF0 800825C0 1800228E */  lw         $v0, 0x18($s1)
/* 87A7AF4 800825C4 00000000 */  nop
/* 87A7AF8 800825C8 21004010 */  beqz       $v0, .Llevel_43_80082650
/* 87A7AFC 800825CC 21280000 */   addu      $a1, $zero, $zero
/* 87A7B00 800825D0 AFEE000C */  jal        func_8003BABC
/* 87A7B04 800825D4 21300000 */   addu      $a2, $zero, $zero
/* 87A7B08 800825D8 10000424 */  addiu      $a0, $zero, 0x10
/* 87A7B0C 800825DC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87A7B10 800825E0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87A7B14 800825E4 00000000 */  nop
/* 87A7B18 800825E8 09F84000 */  jalr       $v0
/* 87A7B1C 800825EC 21282002 */   addu      $a1, $s1, $zero
/* 87A7B20 800825F0 1C005026 */  addiu      $s0, $s2, 0x1C
/* 87A7B24 800825F4 21200002 */  addu       $a0, $s0, $zero
/* 87A7B28 800825F8 21280000 */  addu       $a1, $zero, $zero
/* 87A7B2C 800825FC E439010C */  jal        func_8004E790
/* 87A7B30 80082600 18000624 */   addiu     $a2, $zero, 0x18
/* 87A7B34 80082604 21202002 */  addu       $a0, $s1, $zero
/* 87A7B38 80082608 21280002 */  addu       $a1, $s0, $zero
/* 87A7B3C 8008260C 08000624 */  addiu      $a2, $zero, 0x8
/* 87A7B40 80082610 02001024 */  addiu      $s0, $zero, 0x2
/* 87A7B44 80082614 21380000 */  addu       $a3, $zero, $zero
/* 87A7B48 80082618 FEE2000C */  jal        func_80038BF8
/* 87A7B4C 8008261C 480030A2 */   sb        $s0, 0x48($s1)
/* 87A7B50 80082620 C8000324 */  addiu      $v1, $zero, 0xC8
/* 87A7B54 80082624 01000224 */  addiu      $v0, $zero, 0x1
/* 87A7B58 80082628 280042A6 */  sh         $v0, 0x28($s2)
/* 87A7B5C 8008262C 78000224 */  addiu      $v0, $zero, 0x78
/* 87A7B60 80082630 320042A2 */  sb         $v0, 0x32($s2)
/* 87A7B64 80082634 17000224 */  addiu      $v0, $zero, 0x17
/* 87A7B68 80082638 260043A6 */  sh         $v1, 0x26($s2)
/* 87A7B6C 8008263C 2A0050A2 */  sb         $s0, 0x2A($s2)
/* 87A7B70 80082640 220043A6 */  sh         $v1, 0x22($s2)
/* 87A7B74 80082644 2B0042A2 */  sb         $v0, 0x2B($s2)
/* 87A7B78 80082648 EA090208 */  j          .Llevel_43_800827A8
/* 87A7B7C 8008264C 480030A2 */   sb        $s0, 0x48($s1)
.Llevel_43_80082650:
/* 87A7B80 80082650 48002392 */  lbu        $v1, 0x48($s1)
/* 87A7B84 80082654 01000224 */  addiu      $v0, $zero, 0x1
/* 87A7B88 80082658 28006210 */  beq        $v1, $v0, .Llevel_43_800826FC
/* 87A7B8C 8008265C 02006228 */   slti      $v0, $v1, 0x2
/* 87A7B90 80082660 05004010 */  beqz       $v0, .Llevel_43_80082678
/* 87A7B94 80082664 00000000 */   nop
/* 87A7B98 80082668 08006010 */  beqz       $v1, .Llevel_43_8008268C
/* 87A7B9C 8008266C 00000000 */   nop
/* 87A7BA0 80082670 EA090208 */  j          .Llevel_43_800827A8
/* 87A7BA4 80082674 00000000 */   nop
.Llevel_43_80082678:
/* 87A7BA8 80082678 02000224 */  addiu      $v0, $zero, 0x2
/* 87A7BAC 8008267C 3C006210 */  beq        $v1, $v0, .Llevel_43_80082770
/* 87A7BB0 80082680 21202002 */   addu      $a0, $s1, $zero
/* 87A7BB4 80082684 EA090208 */  j          .Llevel_43_800827A8
/* 87A7BB8 80082688 00000000 */   nop
.Llevel_43_8008268C:
/* 87A7BBC 8008268C 4D002292 */  lbu        $v0, 0x4D($s1)
/* 87A7BC0 80082690 00000000 */  nop
/* 87A7BC4 80082694 44004010 */  beqz       $v0, .Llevel_43_800827A8
/* 87A7BC8 80082698 00000000 */   nop
/* 87A7BCC 8008269C 0780053C */  lui        $a1, %hi(D_80070328)
/* 87A7BD0 800826A0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 87A7BD4 800826A4 CD3C010C */  jal        func_8004F334
/* 87A7BD8 800826A8 0C002426 */   addiu     $a0, $s1, 0xC
/* 87A7BDC 800826AC 00404228 */  slti       $v0, $v0, 0x4000
/* 87A7BE0 800826B0 3D004010 */  beqz       $v0, .Llevel_43_800827A8
/* 87A7BE4 800826B4 18004426 */   addiu     $a0, $s2, 0x18
/* 87A7BE8 800826B8 69D6000C */  jal        func_800359A4
/* 87A7BEC 800826BC 04000524 */   addiu     $a1, $zero, 0x4
/* 87A7BF0 800826C0 39004010 */  beqz       $v0, .Llevel_43_800827A8
/* 87A7BF4 800826C4 00000000 */   nop
/* 87A7BF8 800826C8 0780023C */  lui        $v0, %hi(D_8006C770)
/* 87A7BFC 800826CC 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 87A7C00 800826D0 00000000 */  nop
/* 87A7C04 800826D4 34004010 */  beqz       $v0, .Llevel_43_800827A8
/* 87A7C08 800826D8 03000424 */   addiu     $a0, $zero, 0x3
/* 87A7C0C 800826DC DBD8000C */  jal        func_8003636C
/* 87A7C10 800826E0 07000524 */   addiu     $a1, $zero, 0x7
/* 87A7C14 800826E4 21202002 */  addu       $a0, $s1, $zero
/* 87A7C18 800826E8 01000524 */  addiu      $a1, $zero, 0x1
/* 87A7C1C 800826EC 180042AE */  sw         $v0, 0x18($s2)
/* 87A7C20 800826F0 01000224 */  addiu      $v0, $zero, 0x1
/* 87A7C24 800826F4 D7090208 */  j          .Llevel_43_8008275C
/* 87A7C28 800826F8 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_43_800826FC:
/* 87A7C2C 800826FC 3C002292 */  lbu        $v0, 0x3C($s1)
/* 87A7C30 80082700 00000000 */  nop
/* 87A7C34 80082704 04004314 */  bne        $v0, $v1, .Llevel_43_80082718
/* 87A7C38 80082708 21202002 */   addu      $a0, $s1, $zero
/* 87A7C3C 8008270C 21284002 */  addu       $a1, $s2, $zero
/* 87A7C40 80082710 5ADC000C */  jal        func_80037168
/* 87A7C44 80082714 01000624 */   addiu     $a2, $zero, 0x1
.Llevel_43_80082718:
/* 87A7C48 80082718 0780023C */  lui        $v0, %hi(D_8006C770)
/* 87A7C4C 8008271C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 87A7C50 80082720 00000000 */  nop
/* 87A7C54 80082724 20004010 */  beqz       $v0, .Llevel_43_800827A8
/* 87A7C58 80082728 00000000 */   nop
/* 87A7C5C 8008272C 1800428E */  lw         $v0, 0x18($s2)
/* 87A7C60 80082730 00000000 */  nop
/* 87A7C64 80082734 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 87A7C68 80082738 1B00401C */  bgtz       $v0, .Llevel_43_800827A8
/* 87A7C6C 8008273C 180042AE */   sw        $v0, 0x18($s2)
/* 87A7C70 80082740 46000424 */  addiu      $a0, $zero, 0x46
/* 87A7C74 80082744 DBD8000C */  jal        func_8003636C
/* 87A7C78 80082748 78000524 */   addiu     $a1, $zero, 0x78
/* 87A7C7C 8008274C 21202002 */  addu       $a0, $s1, $zero
/* 87A7C80 80082750 21280000 */  addu       $a1, $zero, $zero
/* 87A7C84 80082754 180042AE */  sw         $v0, 0x18($s2)
/* 87A7C88 80082758 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_43_8008275C:
/* 87A7C8C 8008275C D0D3000C */  jal        func_80034F40
/* 87A7C90 80082760 00000000 */   nop
/* 87A7C94 80082764 F0000224 */  addiu      $v0, $zero, 0xF0
/* 87A7C98 80082768 EA090208 */  j          .Llevel_43_800827A8
/* 87A7C9C 8008276C 400022A2 */   sb        $v0, 0x40($s1)
.Llevel_43_80082770:
/* 87A7CA0 80082770 65D4000C */  jal        func_80035194
/* 87A7CA4 80082774 1C004526 */   addiu     $a1, $s2, 0x1C
/* 87A7CA8 80082778 00010324 */  addiu      $v1, $zero, 0x100
/* 87A7CAC 8008277C 0A004314 */  bne        $v0, $v1, .Llevel_43_800827A8
/* 87A7CB0 80082780 21202002 */   addu      $a0, $s1, $zero
/* 87A7CB4 80082784 4957010C */  jal        func_80055D24
/* 87A7CB8 80082788 04000524 */   addiu     $a1, $zero, 0x4
/* 87A7CBC 8008278C 80EE000C */  jal        func_8003BA00
/* 87A7CC0 80082790 21202002 */   addu      $a0, $s1, $zero
/* 87A7CC4 80082794 21202002 */  addu       $a0, $s1, $zero
/* 87A7CC8 80082798 6EDA000C */  jal        func_800369B8
/* 87A7CCC 8008279C 19000524 */   addiu     $a1, $zero, 0x19
/* 87A7CD0 800827A0 C656010C */  jal        func_80055B18
/* 87A7CD4 800827A4 21202002 */   addu      $a0, $s1, $zero
.Llevel_43_800827A8:
/* 87A7CD8 800827A8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 87A7CDC 800827AC 1800B28F */  lw         $s2, 0x18($sp)
/* 87A7CE0 800827B0 1400B18F */  lw         $s1, 0x14($sp)
/* 87A7CE4 800827B4 1000B08F */  lw         $s0, 0x10($sp)
/* 87A7CE8 800827B8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 87A7CEC 800827BC 0800E003 */  jr         $ra
/* 87A7CF0 800827C0 00000000 */   nop
.size MobyUpdate_495_level_43, . - MobyUpdate_495_level_43
