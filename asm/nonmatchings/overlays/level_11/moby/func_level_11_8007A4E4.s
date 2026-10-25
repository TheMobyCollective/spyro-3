.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_57_level_11
/* 3E1EA14 8007A4E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3E1EA18 8007A4E8 2000B2AF */  sw         $s2, 0x20($sp)
/* 3E1EA1C 8007A4EC 21908000 */  addu       $s2, $a0, $zero
/* 3E1EA20 8007A4F0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3E1EA24 8007A4F4 2400BFAF */  sw         $ra, 0x24($sp)
/* 3E1EA28 8007A4F8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3E1EA2C 8007A4FC 1800B0AF */  sw         $s0, 0x18($sp)
/* 3E1EA30 8007A500 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 3E1EA34 8007A504 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3E1EA38 8007A508 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3E1EA3C 8007A50C 0000508E */  lw         $s0, 0x0($s2)
/* 3E1EA40 8007A510 12004018 */  blez       $v0, .Llevel_11_8007A55C
/* 3E1EA44 8007A514 00000000 */   nop
/* 3E1EA48 8007A518 5000028E */  lw         $v0, 0x50($s0)
/* 3E1EA4C 8007A51C 00000000 */  nop
/* 3E1EA50 8007A520 0E004014 */  bnez       $v0, .Llevel_11_8007A55C
/* 3E1EA54 8007A524 00000000 */   nop
/* 3E1EA58 8007A528 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 3E1EA5C 8007A52C F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 3E1EA60 8007A530 0680023C */  lui        $v0, %hi(D_800652B0 + 0x40)
/* 3E1EA64 8007A534 F052428C */  lw         $v0, %lo(D_800652B0 + 0x40)($v0)
/* 3E1EA68 8007A538 0680063C */  lui        $a2, %hi(D_800652B6 + 0x40)
/* 3E1EA6C 8007A53C F652C694 */  lhu        $a2, %lo(D_800652B6 + 0x40)($a2)
/* 3E1EA70 8007A540 0680053C */  lui        $a1, %hi(D_800652B4 + 0x40)
/* 3E1EA74 8007A544 F452A594 */  lhu        $a1, %lo(D_800652B4 + 0x40)($a1)
/* 3E1EA78 8007A548 21208200 */  addu       $a0, $a0, $v0
/* 3E1EA7C 8007A54C 613E010C */  jal        func_8004F984
/* 3E1EA80 8007A550 21288500 */   addu      $a1, $a0, $a1
/* 3E1EA84 8007A554 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1EA88 8007A558 500002AE */  sw         $v0, 0x50($s0)
.Llevel_11_8007A55C:
/* 3E1EA8C 8007A55C 48004392 */  lbu        $v1, 0x48($s2)
/* 3E1EA90 8007A560 01001124 */  addiu      $s1, $zero, 0x1
/* 3E1EA94 8007A564 75007110 */  beq        $v1, $s1, .Llevel_11_8007A73C
/* 3E1EA98 8007A568 02006228 */   slti      $v0, $v1, 0x2
/* 3E1EA9C 8007A56C 05004010 */  beqz       $v0, .Llevel_11_8007A584
/* 3E1EAA0 8007A570 00000000 */   nop
/* 3E1EAA4 8007A574 0A006010 */  beqz       $v1, .Llevel_11_8007A5A0
/* 3E1EAA8 8007A578 0D000224 */   addiu     $v0, $zero, 0xD
/* 3E1EAAC 8007A57C 3BEA0108 */  j          .Llevel_11_8007A8EC
/* 3E1EAB0 8007A580 00000000 */   nop
.Llevel_11_8007A584:
/* 3E1EAB4 8007A584 03000224 */  addiu      $v0, $zero, 0x3
/* 3E1EAB8 8007A588 97006210 */  beq        $v1, $v0, .Llevel_11_8007A7E8
/* 3E1EABC 8007A58C 0F000224 */   addiu     $v0, $zero, 0xF
/* 3E1EAC0 8007A590 57006210 */  beq        $v1, $v0, .Llevel_11_8007A6F0
/* 3E1EAC4 8007A594 00000000 */   nop
/* 3E1EAC8 8007A598 3BEA0108 */  j          .Llevel_11_8007A8EC
/* 3E1EACC 8007A59C 00000000 */   nop
.Llevel_11_8007A5A0:
/* 3E1EAD0 8007A5A0 0780033C */  lui        $v1, %hi(D_8006E344)
/* 3E1EAD4 8007A5A4 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 3E1EAD8 8007A5A8 00000000 */  nop
/* 3E1EADC 8007A5AC 3F006214 */  bne        $v1, $v0, .Llevel_11_8007A6AC
/* 3E1EAE0 8007A5B0 01000224 */   addiu     $v0, $zero, 0x1
/* 3E1EAE4 8007A5B4 49004292 */  lbu        $v0, 0x49($s2)
/* 3E1EAE8 8007A5B8 00000000 */  nop
/* 3E1EAEC 8007A5BC 3B004014 */  bnez       $v0, .Llevel_11_8007A6AC
/* 3E1EAF0 8007A5C0 01000224 */   addiu     $v0, $zero, 0x1
/* 3E1EAF4 8007A5C4 0780023C */  lui        $v0, %hi(D_8006C4F8)
/* 3E1EAF8 8007A5C8 F8C4428C */  lw         $v0, %lo(D_8006C4F8)($v0)
/* 3E1EAFC 8007A5CC 00000000 */  nop
/* 3E1EB00 8007A5D0 0F005110 */  beq        $v0, $s1, .Llevel_11_8007A610
/* 3E1EB04 8007A5D4 03000224 */   addiu     $v0, $zero, 0x3
/* 3E1EB08 8007A5D8 480042A2 */  sb         $v0, 0x48($s2)
/* 3E1EB0C 8007A5DC 48005026 */  addiu      $s0, $s2, 0x48
/* 3E1EB10 8007A5E0 21200002 */  addu       $a0, $s0, $zero
/* 3E1EB14 8007A5E4 0780063C */  lui        $a2, %hi(D_8006D088)
/* 3E1EB18 8007A5E8 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 3E1EB1C 8007A5EC EDED000C */  jal        func_8003B7B4
/* 3E1EB20 8007A5F0 01000524 */   addiu     $a1, $zero, 0x1
/* 3E1EB24 8007A5F4 21200002 */  addu       $a0, $s0, $zero
/* 3E1EB28 8007A5F8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 3E1EB2C 8007A5FC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 3E1EB30 8007A600 EDED000C */  jal        func_8003B7B4
/* 3E1EB34 8007A604 01000524 */   addiu     $a1, $zero, 0x1
/* 3E1EB38 8007A608 3BEA0108 */  j          .Llevel_11_8007A8EC
/* 3E1EB3C 8007A60C 00000000 */   nop
.Llevel_11_8007A610:
/* 3E1EB40 8007A610 46004292 */  lbu        $v0, 0x46($s2)
/* 3E1EB44 8007A614 00000000 */  nop
/* 3E1EB48 8007A618 40100200 */  sll        $v0, $v0, 1
/* 3E1EB4C 8007A61C 0680013C */  lui        $at, %hi(D_80065920)
/* 3E1EB50 8007A620 21082200 */  addu       $at, $at, $v0
/* 3E1EB54 8007A624 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 3E1EB58 8007A628 0780043C */  lui        $a0, %hi(D_800719BC)
/* 3E1EB5C 8007A62C BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 3E1EB60 8007A630 40100300 */  sll        $v0, $v1, 1
/* 3E1EB64 8007A634 21104300 */  addu       $v0, $v0, $v1
/* 3E1EB68 8007A638 80100200 */  sll        $v0, $v0, 2
/* 3E1EB6C 8007A63C 21104300 */  addu       $v0, $v0, $v1
/* 3E1EB70 8007A640 43110200 */  sra        $v0, $v0, 5
/* 3E1EB74 8007A644 000082AC */  sw         $v0, 0x0($a0)
/* 3E1EB78 8007A648 46004292 */  lbu        $v0, 0x46($s2)
/* 3E1EB7C 8007A64C 21288000 */  addu       $a1, $a0, $zero
/* 3E1EB80 8007A650 40100200 */  sll        $v0, $v0, 1
/* 3E1EB84 8007A654 0680013C */  lui        $at, %hi(D_800658A0)
/* 3E1EB88 8007A658 21082200 */  addu       $at, $at, $v0
/* 3E1EB8C 8007A65C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 3E1EB90 8007A660 0780013C */  lui        $at, %hi(D_800719C4)
/* 3E1EB94 8007A664 C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 3E1EB98 8007A668 40100300 */  sll        $v0, $v1, 1
/* 3E1EB9C 8007A66C 21104300 */  addu       $v0, $v0, $v1
/* 3E1EBA0 8007A670 80100200 */  sll        $v0, $v0, 2
/* 3E1EBA4 8007A674 21104300 */  addu       $v0, $v0, $v1
/* 3E1EBA8 8007A678 43110200 */  sra        $v0, $v0, 5
/* 3E1EBAC 8007A67C 0780013C */  lui        $at, %hi(D_800719C0)
/* 3E1EBB0 8007A680 C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 3E1EBB4 8007A684 653C010C */  jal        func_8004F194
/* 3E1EBB8 8007A688 0C004626 */   addiu     $a2, $s2, 0xC
/* 3E1EBBC 8007A68C 46004292 */  lbu        $v0, 0x46($s2)
/* 3E1EBC0 8007A690 00000000 */  nop
/* 3E1EBC4 8007A694 80004224 */  addiu      $v0, $v0, 0x80
/* 3E1EBC8 8007A698 00110200 */  sll        $v0, $v0, 4
/* 3E1EBCC 8007A69C FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 3E1EBD0 8007A6A0 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 3E1EBD4 8007A6A4 E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 3E1EBD8 8007A6A8 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_11_8007A6AC:
/* 3E1EBDC 8007A6AC 380040A6 */  sh         $zero, 0x38($s2)
/* 3E1EBE0 8007A6B0 050002A2 */  sb         $v0, 0x5($s0)
/* 3E1EBE4 8007A6B4 0780023C */  lui        $v0, %hi(D_8006C598)
/* 3E1EBE8 8007A6B8 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 3E1EBEC 8007A6BC 00000000 */  nop
/* 3E1EBF0 8007A6C0 8A004014 */  bnez       $v0, .Llevel_11_8007A8EC
/* 3E1EBF4 8007A6C4 21204002 */   addu      $a0, $s2, $zero
/* 3E1EBF8 8007A6C8 EFDE000C */  jal        func_80037BBC
/* 3E1EBFC 8007A6CC 21280000 */   addu      $a1, $zero, $zero
/* 3E1EC00 8007A6D0 86004010 */  beqz       $v0, .Llevel_11_8007A8EC
/* 3E1EC04 8007A6D4 21204002 */   addu      $a0, $s2, $zero
/* 3E1EC08 8007A6D8 21280000 */  addu       $a1, $zero, $zero
/* 3E1EC0C 8007A6DC B944010C */  jal        func_800512E4
/* 3E1EC10 8007A6E0 0F000624 */   addiu     $a2, $zero, 0xF
/* 3E1EC14 8007A6E4 0F000224 */  addiu      $v0, $zero, 0xF
/* 3E1EC18 8007A6E8 3BEA0108 */  j          .Llevel_11_8007A8EC
/* 3E1EC1C 8007A6EC 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007A6F0:
/* 3E1EC20 8007A6F0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 3E1EC24 8007A6F4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 3E1EC28 8007A6F8 00000000 */  nop
/* 3E1EC2C 8007A6FC 7B005110 */  beq        $v0, $s1, .Llevel_11_8007A8EC
/* 3E1EC30 8007A700 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 3E1EC34 8007A704 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 3E1EC38 8007A708 21204002 */  addu       $a0, $s2, $zero
/* 3E1EC3C 8007A70C 01000524 */  addiu      $a1, $zero, 0x1
/* 3E1EC40 8007A710 01000324 */  addiu      $v1, $zero, 0x1
/* 3E1EC44 8007A714 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 3E1EC48 8007A718 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 3E1EC4C 8007A71C 3C000224 */  addiu      $v0, $zero, 0x3C
/* 3E1EC50 8007A720 0780013C */  lui        $at, %hi(D_80071575)
/* 3E1EC54 8007A724 751523A0 */  sb         $v1, %lo(D_80071575)($at)
/* 3E1EC58 8007A728 480002AE */  sw         $v0, 0x48($s0)
/* 3E1EC5C 8007A72C D0D3000C */  jal        func_80034F40
/* 3E1EC60 8007A730 480043A2 */   sb        $v1, 0x48($s2)
/* 3E1EC64 8007A734 3BEA0108 */  j          .Llevel_11_8007A8EC
/* 3E1EC68 8007A738 00000000 */   nop
.Llevel_11_8007A73C:
/* 3E1EC6C 8007A73C 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 3E1EC70 8007A740 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 3E1EC74 8007A744 21204002 */  addu       $a0, $s2, $zero
/* 3E1EC78 8007A748 08000624 */  addiu      $a2, $zero, 0x8
/* 3E1EC7C 8007A74C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 3E1EC80 8007A750 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 3E1EC84 8007A754 3400058E */  lw         $a1, 0x34($s0)
/* 3E1EC88 8007A758 10000724 */  addiu      $a3, $zero, 0x10
/* 3E1EC8C 8007A75C 1000B1AF */  sw         $s1, 0x10($sp)
/* 3E1EC90 8007A760 1400A0AF */  sw         $zero, 0x14($sp)
/* 3E1EC94 8007A764 17D6000C */  jal        func_8003585C
/* 3E1EC98 8007A768 8000A524 */   addiu     $a1, $a1, 0x80
/* 3E1EC9C 8007A76C 06004010 */  beqz       $v0, .Llevel_11_8007A788
/* 3E1ECA0 8007A770 21204002 */   addu      $a0, $s2, $zero
/* 3E1ECA4 8007A774 1000A0AF */  sw         $zero, 0x10($sp)
/* 3E1ECA8 8007A778 80000524 */  addiu      $a1, $zero, 0x80
/* 3E1ECAC 8007A77C 21300000 */  addu       $a2, $zero, $zero
/* 3E1ECB0 8007A780 77D7000C */  jal        func_80035DDC
/* 3E1ECB4 8007A784 21380000 */   addu      $a3, $zero, $zero
.Llevel_11_8007A788:
/* 3E1ECB8 8007A788 48000426 */  addiu      $a0, $s0, 0x48
/* 3E1ECBC 8007A78C 69D6000C */  jal        func_800359A4
/* 3E1ECC0 8007A790 04000524 */   addiu     $a1, $zero, 0x4
/* 3E1ECC4 8007A794 02000324 */  addiu      $v1, $zero, 0x2
/* 3E1ECC8 8007A798 54004314 */  bne        $v0, $v1, .Llevel_11_8007A8EC
/* 3E1ECCC 8007A79C 48005026 */   addiu     $s0, $s2, 0x48
/* 3E1ECD0 8007A7A0 21200002 */  addu       $a0, $s0, $zero
/* 3E1ECD4 8007A7A4 01000524 */  addiu      $a1, $zero, 0x1
/* 3E1ECD8 8007A7A8 0780113C */  lui        $s1, %hi(D_8006D088)
/* 3E1ECDC 8007A7AC 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 3E1ECE0 8007A7B0 21302002 */  addu       $a2, $s1, $zero
/* 3E1ECE4 8007A7B4 03000224 */  addiu      $v0, $zero, 0x3
/* 3E1ECE8 8007A7B8 EDED000C */  jal        func_8003B7B4
/* 3E1ECEC 8007A7BC 480042A2 */   sb        $v0, 0x48($s2)
/* 3E1ECF0 8007A7C0 21200002 */  addu       $a0, $s0, $zero
/* 3E1ECF4 8007A7C4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 3E1ECF8 8007A7C8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 3E1ECFC 8007A7CC EDED000C */  jal        func_8003B7B4
/* 3E1ED00 8007A7D0 01000524 */   addiu     $a1, $zero, 0x1
/* 3E1ED04 8007A7D4 D3ED000C */  jal        func_8003B74C
/* 3E1ED08 8007A7D8 21202002 */   addu      $a0, $s1, $zero
/* 3E1ED0C 8007A7DC 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1ED10 8007A7E0 3BEA0108 */  j          .Llevel_11_8007A8EC
/* 3E1ED14 8007A7E4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_11_8007A7E8:
/* 3E1ED18 8007A7E8 21204002 */  addu       $a0, $s2, $zero
/* 3E1ED1C 8007A7EC 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 3E1ED20 8007A7F0 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 3E1ED24 8007A7F4 00000000 */  nop
/* 3E1ED28 8007A7F8 09F84000 */  jalr       $v0
/* 3E1ED2C 8007A7FC 41000524 */   addiu     $a1, $zero, 0x41
/* 3E1ED30 8007A800 0780043C */  lui        $a0, %hi(D_800719A8)
/* 3E1ED34 8007A804 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 3E1ED38 8007A808 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 3E1ED3C 8007A80C 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 3E1ED40 8007A810 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 3E1ED44 8007A814 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 3E1ED48 8007A818 694D000C */  jal        func_800135A4
/* 3E1ED4C 8007A81C 21300000 */   addu      $a2, $zero, $zero
/* 3E1ED50 8007A820 0780043C */  lui        $a0, %hi(D_800719F0)
/* 3E1ED54 8007A824 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 3E1ED58 8007A828 0780053C */  lui        $a1, %hi(D_80068F90)
/* 3E1ED5C 8007A82C 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 3E1ED60 8007A830 694D000C */  jal        func_800135A4
/* 3E1ED64 8007A834 21300000 */   addu      $a2, $zero, $zero
/* 3E1ED68 8007A838 0780023C */  lui        $v0, %hi(D_80070328 + 0x24C)
/* 3E1ED6C 8007A83C 7405428C */  lw         $v0, %lo(D_80070328 + 0x24C)($v0)
/* 3E1ED70 8007A840 00000000 */  nop
/* 3E1ED74 8007A844 09005114 */  bne        $v0, $s1, .Llevel_11_8007A86C
/* 3E1ED78 8007A848 00000000 */   nop
/* 3E1ED7C 8007A84C 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 3E1ED80 8007A850 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 3E1ED84 8007A854 3D004392 */  lbu        $v1, 0x3D($s2)
/* 3E1ED88 8007A858 BFFF4524 */  addiu      $a1, $v0, -0x41
/* 3E1ED8C 8007A85C 0300A310 */  beq        $a1, $v1, .Llevel_11_8007A86C
/* 3E1ED90 8007A860 00000000 */   nop
/* 3E1ED94 8007A864 D0D3000C */  jal        func_80034F40
/* 3E1ED98 8007A868 21204002 */   addu      $a0, $s2, $zero
.Llevel_11_8007A86C:
/* 3E1ED9C 8007A86C 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 3E1EDA0 8007A870 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 3E1EDA4 8007A874 0A000224 */  addiu      $v0, $zero, 0xA
/* 3E1EDA8 8007A878 0A006214 */  bne        $v1, $v0, .Llevel_11_8007A8A4
/* 3E1EDAC 8007A87C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 3E1EDB0 8007A880 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 3E1EDB4 8007A884 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 3E1EDB8 8007A888 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 3E1EDBC 8007A88C 23180300 */  negu       $v1, $v1
/* 3E1EDC0 8007A890 24186200 */  and        $v1, $v1, $v0
/* 3E1EDC4 8007A894 80000224 */  addiu      $v0, $zero, 0x80
/* 3E1EDC8 8007A898 540043AE */  sw         $v1, 0x54($s2)
/* 3E1EDCC 8007A89C 2AEA0108 */  j          .Llevel_11_8007A8A8
/* 3E1EDD0 8007A8A0 570042A2 */   sb        $v0, 0x57($s2)
.Llevel_11_8007A8A4:
/* 3E1EDD4 8007A8A4 540040AE */  sw         $zero, 0x54($s2)
.Llevel_11_8007A8A8:
/* 3E1EDD8 8007A8A8 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 3E1EDDC 8007A8AC 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 3E1EDE0 8007A8B0 00000000 */  nop
/* 3E1EDE4 8007A8B4 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 3E1EDE8 8007A8B8 0200422C */  sltiu      $v0, $v0, 0x2
/* 3E1EDEC 8007A8BC 0B004014 */  bnez       $v0, .Llevel_11_8007A8EC
/* 3E1EDF0 8007A8C0 00000000 */   nop
/* 3E1EDF4 8007A8C4 4800028E */  lw         $v0, 0x48($s0)
/* 3E1EDF8 8007A8C8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 3E1EDFC 8007A8CC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 3E1EE00 8007A8D0 00000000 */  nop
/* 3E1EE04 8007A8D4 21104300 */  addu       $v0, $v0, $v1
/* 3E1EE08 8007A8D8 480002AE */  sw         $v0, 0x48($s0)
/* 3E1EE0C 8007A8DC 71174228 */  slti       $v0, $v0, 0x1771
/* 3E1EE10 8007A8E0 02004014 */  bnez       $v0, .Llevel_11_8007A8EC
/* 3E1EE14 8007A8E4 70170224 */   addiu     $v0, $zero, 0x1770
/* 3E1EE18 8007A8E8 480002AE */  sw         $v0, 0x48($s0)
.Llevel_11_8007A8EC:
/* 3E1EE1C 8007A8EC 4ED7000C */  jal        func_80035D38
/* 3E1EE20 8007A8F0 21204002 */   addu      $a0, $s2, $zero
/* 3E1EE24 8007A8F4 A758010C */  jal        func_8005629C
/* 3E1EE28 8007A8F8 21204002 */   addu      $a0, $s2, $zero
/* 3E1EE2C 8007A8FC 2400BF8F */  lw         $ra, 0x24($sp)
/* 3E1EE30 8007A900 2000B28F */  lw         $s2, 0x20($sp)
/* 3E1EE34 8007A904 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3E1EE38 8007A908 1800B08F */  lw         $s0, 0x18($sp)
/* 3E1EE3C 8007A90C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 3E1EE40 8007A910 0800E003 */  jr         $ra
/* 3E1EE44 8007A914 00000000 */   nop
.size MobyUpdate_57_level_11, . - MobyUpdate_57_level_11
