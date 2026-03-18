.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8008A690
/* 74E63C0 8008A690 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 74E63C4 8008A694 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 74E63C8 8008A698 21888000 */  addu       $s1, $a0, $zero
/* 74E63CC 8008A69C 4400B3AF */  sw         $s3, 0x44($sp)
/* 74E63D0 8008A6A0 21980000 */  addu       $s3, $zero, $zero
/* 74E63D4 8008A6A4 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 74E63D8 8008A6A8 4800B4AF */  sw         $s4, 0x48($sp)
/* 74E63DC 8008A6AC 4000B2AF */  sw         $s2, 0x40($sp)
/* 74E63E0 8008A6B0 3800B0AF */  sw         $s0, 0x38($sp)
/* 74E63E4 8008A6B4 0000348E */  lw         $s4, 0x0($s1)
/* 74E63E8 8008A6B8 4957010C */  jal        func_80055D24
/* 74E63EC 8008A6BC 04000524 */   addiu     $a1, $zero, 0x4
/* 74E63F0 8008A6C0 1800A0AF */  sw         $zero, 0x18($sp)
/* 74E63F4 8008A6C4 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 74E63F8 8008A6C8 9171010C */  jal        rand
/* 74E63FC 8008A6CC 2000A0AF */   sw        $zero, 0x20($sp)
/* 74E6400 8008A6D0 01004230 */  andi       $v0, $v0, 0x1
/* 74E6404 8008A6D4 08004010 */  beqz       $v0, .Llevel_34_8008A6F8
/* 74E6408 8008A6D8 01000424 */   addiu     $a0, $zero, 0x1
/* 74E640C 8008A6DC 21280000 */  addu       $a1, $zero, $zero
/* 74E6410 8008A6E0 0C002626 */  addiu      $a2, $s1, 0xC
/* 74E6414 8008A6E4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74E6418 8008A6E8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74E641C 8008A6EC 00000000 */  nop
/* 74E6420 8008A6F0 09F84000 */  jalr       $v0
/* 74E6424 8008A6F4 1800A727 */   addiu     $a3, $sp, 0x18
.Llevel_34_8008A6F8:
/* 74E6428 8008A6F8 2800B027 */  addiu      $s0, $sp, 0x28
/* 74E642C 8008A6FC 21200002 */  addu       $a0, $s0, $zero
/* 74E6430 8008A700 0C003226 */  addiu      $s2, $s1, 0xC
/* 74E6434 8008A704 5E3C010C */  jal        func_8004F178
/* 74E6438 8008A708 21284002 */   addu      $a1, $s2, $zero
/* 74E643C 8008A70C 20002426 */  addiu      $a0, $s1, 0x20
/* 74E6440 8008A710 1800A527 */  addiu      $a1, $sp, 0x18
/* 74E6444 8008A714 0400828E */  lw         $v0, 0x4($s4)
/* 74E6448 8008A718 2130A000 */  addu       $a2, $a1, $zero
/* 74E644C 8008A71C 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 74E6450 8008A720 2000A0AF */  sw         $zero, 0x20($sp)
/* 74E6454 8008A724 5B3B010C */  jal        func_8004ED6C
/* 74E6458 8008A728 1800A2AF */   sw        $v0, 0x18($sp)
/* 74E645C 8008A72C 21204002 */  addu       $a0, $s2, $zero
/* 74E6460 8008A730 21284002 */  addu       $a1, $s2, $zero
/* 74E6464 8008A734 653C010C */  jal        func_8004F194
/* 74E6468 8008A738 1800A627 */   addiu     $a2, $sp, 0x18
/* 74E646C 8008A73C 21200002 */  addu       $a0, $s0, $zero
/* 74E6470 8008A740 21284002 */  addu       $a1, $s2, $zero
/* 74E6474 8008A744 03000624 */  addiu      $a2, $zero, 0x3
/* 74E6478 8008A748 21380000 */  addu       $a3, $zero, $zero
/* 74E647C 8008A74C C360000C */  jal        func_8001830C
/* 74E6480 8008A750 1000A0AF */   sw        $zero, 0x10($sp)
/* 74E6484 8008A754 02004010 */  beqz       $v0, .Llevel_34_8008A760
/* 74E6488 8008A758 00000000 */   nop
/* 74E648C 8008A75C 01001324 */  addiu      $s3, $zero, 0x1
.Llevel_34_8008A760:
/* 74E6490 8008A760 0780033C */  lui        $v1, %hi(D_8006E044)
/* 74E6494 8008A764 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 74E6498 8008A768 09000224 */  addiu      $v0, $zero, 0x9
/* 74E649C 8008A76C 13006210 */  beq        $v1, $v0, .Llevel_34_8008A7BC
/* 74E64A0 8008A770 0B000224 */   addiu     $v0, $zero, 0xB
/* 74E64A4 8008A774 12006210 */  beq        $v1, $v0, .Llevel_34_8008A7C0
/* 74E64A8 8008A778 0C002426 */   addiu     $a0, $s1, 0xC
/* 74E64AC 8008A77C 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 74E64B0 8008A780 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 74E64B4 8008A784 00000000 */  nop
/* 74E64B8 8008A788 0E004014 */  bnez       $v0, .Llevel_34_8008A7C4
/* 74E64BC 8008A78C 00010524 */   addiu     $a1, $zero, 0x100
/* 74E64C0 8008A790 21204002 */  addu       $a0, $s2, $zero
/* 74E64C4 8008A794 80000524 */  addiu      $a1, $zero, 0x80
/* 74E64C8 8008A798 A270000C */  jal        func_8001C288
/* 74E64CC 8008A79C 07000624 */   addiu     $a2, $zero, 0x7
/* 74E64D0 8008A7A0 07004010 */  beqz       $v0, .Llevel_34_8008A7C0
/* 74E64D4 8008A7A4 0C002426 */   addiu     $a0, $s1, 0xC
/* 74E64D8 8008A7A8 46002292 */  lbu        $v0, 0x46($s1)
/* 74E64DC 8008A7AC 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 74E64E0 8008A7B0 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 74E64E4 8008A7B4 092A0208 */  j          .Llevel_34_8008A824
/* 74E64E8 8008A7B8 01001324 */   addiu     $s3, $zero, 0x1
.Llevel_34_8008A7BC:
/* 74E64EC 8008A7BC 0C002426 */  addiu      $a0, $s1, 0xC
.Llevel_34_8008A7C0:
/* 74E64F0 8008A7C0 00010524 */  addiu      $a1, $zero, 0x100
.Llevel_34_8008A7C4:
/* 74E64F4 8008A7C4 02000624 */  addiu      $a2, $zero, 0x2
/* 74E64F8 8008A7C8 1000A0AF */  sw         $zero, 0x10($sp)
/* 74E64FC 8008A7CC 3A002292 */  lbu        $v0, 0x3A($s1)
/* 74E6500 8008A7D0 21380000 */  addu       $a3, $zero, $zero
/* 74E6504 8008A7D4 40180200 */  sll        $v1, $v0, 1
/* 74E6508 8008A7D8 21186200 */  addu       $v1, $v1, $v0
/* 74E650C 8008A7DC 80180300 */  sll        $v1, $v1, 2
/* 74E6510 8008A7E0 23186200 */  subu       $v1, $v1, $v0
/* 74E6514 8008A7E4 0780023C */  lui        $v0, %hi(D_8006C550)
/* 74E6518 8008A7E8 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 74E651C 8008A7EC C0180300 */  sll        $v1, $v1, 3
/* 74E6520 8008A7F0 21104300 */  addu       $v0, $v0, $v1
/* 74E6524 8008A7F4 8C6E000C */  jal        func_8001BA30
/* 74E6528 8008A7F8 1400A2AF */   sw        $v0, 0x14($sp)
/* 74E652C 8008A7FC 21204000 */  addu       $a0, $v0, $zero
/* 74E6530 8008A800 08008010 */  beqz       $a0, .Llevel_34_8008A824
/* 74E6534 8008A804 0310033C */   lui       $v1, (0x10030000 >> 16)
/* 74E6538 8008A808 1800828C */  lw         $v0, 0x18($a0)
/* 74E653C 8008A80C 00000000 */  nop
/* 74E6540 8008A810 25104300 */  or         $v0, $v0, $v1
/* 74E6544 8008A814 180082AC */  sw         $v0, 0x18($a0)
/* 74E6548 8008A818 46002292 */  lbu        $v0, 0x46($s1)
/* 74E654C 8008A81C 01001324 */  addiu      $s3, $zero, 0x1
/* 74E6550 8008A820 510082A0 */  sb         $v0, 0x51($a0)
.Llevel_34_8008A824:
/* 74E6554 8008A824 21208002 */  addu       $a0, $s4, $zero
/* 74E6558 8008A828 69D6000C */  jal        func_800359A4
/* 74E655C 8008A82C 04000524 */   addiu     $a1, $zero, 0x4
/* 74E6560 8008A830 03004014 */  bnez       $v0, .Llevel_34_8008A840
/* 74E6564 8008A834 00000000 */   nop
/* 74E6568 8008A838 0B006012 */  beqz       $s3, .Llevel_34_8008A868
/* 74E656C 8008A83C 00000000 */   nop
.Llevel_34_8008A840:
/* 74E6570 8008A840 04006012 */  beqz       $s3, .Llevel_34_8008A854
/* 74E6574 8008A844 01000524 */   addiu     $a1, $zero, 0x1
/* 74E6578 8008A848 21202002 */  addu       $a0, $s1, $zero
/* 74E657C 8008A84C AFEE000C */  jal        func_8003BABC
/* 74E6580 8008A850 21300000 */   addu      $a2, $zero, $zero
.Llevel_34_8008A854:
/* 74E6584 8008A854 21202002 */  addu       $a0, $s1, $zero
/* 74E6588 8008A858 6EDA000C */  jal        func_800369B8
/* 74E658C 8008A85C 19000524 */   addiu     $a1, $zero, 0x19
/* 74E6590 8008A860 C656010C */  jal        func_80055B18
/* 74E6594 8008A864 21202002 */   addu      $a0, $s1, $zero
.Llevel_34_8008A868:
/* 74E6598 8008A868 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 74E659C 8008A86C 4800B48F */  lw         $s4, 0x48($sp)
/* 74E65A0 8008A870 4400B38F */  lw         $s3, 0x44($sp)
/* 74E65A4 8008A874 4000B28F */  lw         $s2, 0x40($sp)
/* 74E65A8 8008A878 3C00B18F */  lw         $s1, 0x3C($sp)
/* 74E65AC 8008A87C 3800B08F */  lw         $s0, 0x38($sp)
/* 74E65B0 8008A880 5000BD27 */  addiu      $sp, $sp, 0x50
/* 74E65B4 8008A884 0800E003 */  jr         $ra
/* 74E65B8 8008A888 00000000 */   nop
.size func_level_34_8008A690, . - func_level_34_8008A690
