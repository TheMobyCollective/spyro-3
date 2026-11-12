.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_89_level_26
/* 622A3B8 8007A688 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 622A3BC 8007A68C 2000B2AF */  sw         $s2, 0x20($sp)
/* 622A3C0 8007A690 21908000 */  addu       $s2, $a0, $zero
/* 622A3C4 8007A694 FF000224 */  addiu      $v0, $zero, 0xFF
/* 622A3C8 8007A698 2400BFAF */  sw         $ra, 0x24($sp)
/* 622A3CC 8007A69C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 622A3D0 8007A6A0 1800B0AF */  sw         $s0, 0x18($sp)
/* 622A3D4 8007A6A4 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 622A3D8 8007A6A8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 622A3DC 8007A6AC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 622A3E0 8007A6B0 0000518E */  lw         $s1, 0x0($s2)
/* 622A3E4 8007A6B4 12004018 */  blez       $v0, .Llevel_26_8007A700
/* 622A3E8 8007A6B8 00000000 */   nop
/* 622A3EC 8007A6BC 6000228E */  lw         $v0, 0x60($s1)
/* 622A3F0 8007A6C0 00000000 */  nop
/* 622A3F4 8007A6C4 0E004014 */  bnez       $v0, .Llevel_26_8007A700
/* 622A3F8 8007A6C8 00000000 */   nop
/* 622A3FC 8007A6CC 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 622A400 8007A6D0 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 622A404 8007A6D4 0680023C */  lui        $v0, %hi(D_800652B0 + 0x10)
/* 622A408 8007A6D8 C052428C */  lw         $v0, %lo(D_800652B0 + 0x10)($v0)
/* 622A40C 8007A6DC 0680063C */  lui        $a2, %hi(D_800652B6 + 0x10)
/* 622A410 8007A6E0 C652C694 */  lhu        $a2, %lo(D_800652B6 + 0x10)($a2)
/* 622A414 8007A6E4 0680053C */  lui        $a1, %hi(D_800652B4 + 0x10)
/* 622A418 8007A6E8 C452A594 */  lhu        $a1, %lo(D_800652B4 + 0x10)($a1)
/* 622A41C 8007A6EC 21208200 */  addu       $a0, $a0, $v0
/* 622A420 8007A6F0 613E010C */  jal        func_8004F984
/* 622A424 8007A6F4 21288500 */   addu      $a1, $a0, $a1
/* 622A428 8007A6F8 01000224 */  addiu      $v0, $zero, 0x1
/* 622A42C 8007A6FC 600022AE */  sw         $v0, 0x60($s1)
.Llevel_26_8007A700:
/* 622A430 8007A700 48005092 */  lbu        $s0, 0x48($s2)
/* 622A434 8007A704 03000224 */  addiu      $v0, $zero, 0x3
/* 622A438 8007A708 8D000212 */  beq        $s0, $v0, .Llevel_26_8007A940
/* 622A43C 8007A70C 0400022A */   slti      $v0, $s0, 0x4
/* 622A440 8007A710 07004010 */  beqz       $v0, .Llevel_26_8007A730
/* 622A444 8007A714 00000000 */   nop
/* 622A448 8007A718 0C000012 */  beqz       $s0, .Llevel_26_8007A74C
/* 622A44C 8007A71C 01000224 */   addiu     $v0, $zero, 0x1
/* 622A450 8007A720 59000212 */  beq        $s0, $v0, .Llevel_26_8007A888
/* 622A454 8007A724 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 622A458 8007A728 1FEB0108 */  j          .Llevel_26_8007AC7C
/* 622A45C 8007A72C 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_26_8007A730:
/* 622A460 8007A730 0A000224 */  addiu      $v0, $zero, 0xA
/* 622A464 8007A734 2D000212 */  beq        $s0, $v0, .Llevel_26_8007A7EC
/* 622A468 8007A738 63000224 */   addiu     $v0, $zero, 0x63
/* 622A46C 8007A73C 3D010212 */  beq        $s0, $v0, .Llevel_26_8007AC34
/* 622A470 8007A740 0B000224 */   addiu     $v0, $zero, 0xB
/* 622A474 8007A744 1FEB0108 */  j          .Llevel_26_8007AC7C
/* 622A478 8007A748 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_26_8007A74C:
/* 622A47C 8007A74C 02002392 */  lbu        $v1, 0x2($s1)
/* 622A480 8007A750 00000000 */  nop
/* 622A484 8007A754 13006214 */  bne        $v1, $v0, .Llevel_26_8007A7A4
/* 622A488 8007A758 01000224 */   addiu     $v0, $zero, 0x1
/* 622A48C 8007A75C 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 622A490 8007A760 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 622A494 8007A764 00000000 */  nop
/* 622A498 8007A768 01004230 */  andi       $v0, $v0, 0x1
/* 622A49C 8007A76C 0D004014 */  bnez       $v0, .Llevel_26_8007A7A4
/* 622A4A0 8007A770 01000224 */   addiu     $v0, $zero, 0x1
/* 622A4A4 8007A774 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 622A4A8 8007A778 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 622A4AC 8007A77C 0780013C */  lui        $at, %hi(D_80070300)
/* 622A4B0 8007A780 21082200 */  addu       $at, $at, $v0
/* 622A4B4 8007A784 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 622A4B8 8007A788 00000000 */  nop
/* 622A4BC 8007A78C 01004230 */  andi       $v0, $v0, 0x1
/* 622A4C0 8007A790 04004014 */  bnez       $v0, .Llevel_26_8007A7A4
/* 622A4C4 8007A794 01000224 */   addiu     $v0, $zero, 0x1
/* 622A4C8 8007A798 04000224 */  addiu      $v0, $zero, 0x4
/* 622A4CC 8007A79C 020022A2 */  sb         $v0, 0x2($s1)
/* 622A4D0 8007A7A0 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_26_8007A7A4:
/* 622A4D4 8007A7A4 380040A6 */  sh         $zero, 0x38($s2)
/* 622A4D8 8007A7A8 050022A2 */  sb         $v0, 0x5($s1)
/* 622A4DC 8007A7AC 0780023C */  lui        $v0, %hi(D_8006C598)
/* 622A4E0 8007A7B0 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 622A4E4 8007A7B4 00000000 */  nop
/* 622A4E8 8007A7B8 30014014 */  bnez       $v0, .Llevel_26_8007AC7C
/* 622A4EC 8007A7BC 0C004426 */   addiu     $a0, $s2, 0xC
/* 622A4F0 8007A7C0 21204002 */  addu       $a0, $s2, $zero
/* 622A4F4 8007A7C4 EFDE000C */  jal        func_80037BBC
/* 622A4F8 8007A7C8 21280000 */   addu      $a1, $zero, $zero
/* 622A4FC 8007A7CC 2A014010 */  beqz       $v0, .Llevel_26_8007AC78
/* 622A500 8007A7D0 21204002 */   addu      $a0, $s2, $zero
/* 622A504 8007A7D4 21280000 */  addu       $a1, $zero, $zero
/* 622A508 8007A7D8 B944010C */  jal        func_800512E4
/* 622A50C 8007A7DC 0A000624 */   addiu     $a2, $zero, 0xA
/* 622A510 8007A7E0 0A000224 */  addiu      $v0, $zero, 0xA
/* 622A514 8007A7E4 1EEB0108 */  j          .Llevel_26_8007AC78
/* 622A518 8007A7E8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_26_8007A7EC:
/* 622A51C 8007A7EC 0780033C */  lui        $v1, %hi(D_8006E344)
/* 622A520 8007A7F0 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 622A524 8007A7F4 01000224 */  addiu      $v0, $zero, 0x1
/* 622A528 8007A7F8 1F016210 */  beq        $v1, $v0, .Llevel_26_8007AC78
/* 622A52C 8007A7FC 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 622A530 8007A800 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 622A534 8007A804 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 622A538 8007A808 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 622A53C 8007A80C 04002392 */  lbu        $v1, 0x4($s1)
/* 622A540 8007A810 02000224 */  addiu      $v0, $zero, 0x2
/* 622A544 8007A814 05006214 */  bne        $v1, $v0, .Llevel_26_8007A82C
/* 622A548 8007A818 00000000 */   nop
/* 622A54C 8007A81C D44F010C */  jal        func_80053F50
/* 622A550 8007A820 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 622A554 8007A824 1FEB0108 */  j          .Llevel_26_8007AC7C
/* 622A558 8007A828 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_26_8007A82C:
/* 622A55C 8007A82C 0780043C */  lui        $a0, %hi(D_8006D088)
/* 622A560 8007A830 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 622A564 8007A834 5800238E */  lw         $v1, 0x58($s1)
/* 622A568 8007A838 0780053C */  lui        $a1, %hi(D_8006C550)
/* 622A56C 8007A83C 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 622A570 8007A840 40100300 */  sll        $v0, $v1, 1
/* 622A574 8007A844 21104300 */  addu       $v0, $v0, $v1
/* 622A578 8007A848 80100200 */  sll        $v0, $v0, 2
/* 622A57C 8007A84C 23104300 */  subu       $v0, $v0, $v1
/* 622A580 8007A850 C0100200 */  sll        $v0, $v0, 3
/* 622A584 8007A854 2128A200 */  addu       $a1, $a1, $v0
/* 622A588 8007A858 4600A690 */  lbu        $a2, 0x46($a1)
/* 622A58C 8007A85C 8DED000C */  jal        func_8003B634
/* 622A590 8007A860 0C00A524 */   addiu     $a1, $a1, 0xC
/* 622A594 8007A864 21204002 */  addu       $a0, $s2, $zero
/* 622A598 8007A868 01000524 */  addiu      $a1, $zero, 0x1
/* 622A59C 8007A86C 3C000224 */  addiu      $v0, $zero, 0x3C
/* 622A5A0 8007A870 240022AE */  sw         $v0, 0x24($s1)
/* 622A5A4 8007A874 01000224 */  addiu      $v0, $zero, 0x1
/* 622A5A8 8007A878 D0D3000C */  jal        func_80034F40
/* 622A5AC 8007A87C 480042A2 */   sb        $v0, 0x48($s2)
/* 622A5B0 8007A880 1FEB0108 */  j          .Llevel_26_8007AC7C
/* 622A5B4 8007A884 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_26_8007A888:
/* 622A5B8 8007A888 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 622A5BC 8007A88C 21204002 */  addu       $a0, $s2, $zero
/* 622A5C0 8007A890 08000624 */  addiu      $a2, $zero, 0x8
/* 622A5C4 8007A894 01000324 */  addiu      $v1, $zero, 0x1
/* 622A5C8 8007A898 0780013C */  lui        $at, %hi(D_800719D4)
/* 622A5CC 8007A89C D41923A4 */  sh         $v1, %lo(D_800719D4)($at)
/* 622A5D0 8007A8A0 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 622A5D4 8007A8A4 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 622A5D8 8007A8A8 4800258E */  lw         $a1, 0x48($s1)
/* 622A5DC 8007A8AC 10000724 */  addiu      $a3, $zero, 0x10
/* 622A5E0 8007A8B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 622A5E4 8007A8B4 1400A0AF */  sw         $zero, 0x14($sp)
/* 622A5E8 8007A8B8 17D6000C */  jal        func_8003585C
/* 622A5EC 8007A8BC 8000A524 */   addiu     $a1, $a1, 0x80
/* 622A5F0 8007A8C0 06004010 */  beqz       $v0, .Llevel_26_8007A8DC
/* 622A5F4 8007A8C4 21204002 */   addu      $a0, $s2, $zero
/* 622A5F8 8007A8C8 1000A0AF */  sw         $zero, 0x10($sp)
/* 622A5FC 8007A8CC 80000524 */  addiu      $a1, $zero, 0x80
/* 622A600 8007A8D0 21300000 */  addu       $a2, $zero, $zero
/* 622A604 8007A8D4 77D7000C */  jal        func_80035DDC
/* 622A608 8007A8D8 21380000 */   addu      $a3, $zero, $zero
.Llevel_26_8007A8DC:
/* 622A60C 8007A8DC 24002426 */  addiu      $a0, $s1, 0x24
/* 622A610 8007A8E0 69D6000C */  jal        func_800359A4
/* 622A614 8007A8E4 04000524 */   addiu     $a1, $zero, 0x4
/* 622A618 8007A8E8 02000324 */  addiu      $v1, $zero, 0x2
/* 622A61C 8007A8EC E3004314 */  bne        $v0, $v1, .Llevel_26_8007AC7C
/* 622A620 8007A8F0 0C004426 */   addiu     $a0, $s2, 0xC
/* 622A624 8007A8F4 48005026 */  addiu      $s0, $s2, 0x48
/* 622A628 8007A8F8 21200002 */  addu       $a0, $s0, $zero
/* 622A62C 8007A8FC 01000524 */  addiu      $a1, $zero, 0x1
/* 622A630 8007A900 0780113C */  lui        $s1, %hi(D_8006D088)
/* 622A634 8007A904 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 622A638 8007A908 21302002 */  addu       $a2, $s1, $zero
/* 622A63C 8007A90C 03000224 */  addiu      $v0, $zero, 0x3
/* 622A640 8007A910 EDED000C */  jal        func_8003B7B4
/* 622A644 8007A914 480042A2 */   sb        $v0, 0x48($s2)
/* 622A648 8007A918 21200002 */  addu       $a0, $s0, $zero
/* 622A64C 8007A91C 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 622A650 8007A920 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 622A654 8007A924 EDED000C */  jal        func_8003B7B4
/* 622A658 8007A928 01000524 */   addiu     $a1, $zero, 0x1
/* 622A65C 8007A92C D3ED000C */  jal        func_8003B74C
/* 622A660 8007A930 21202002 */   addu      $a0, $s1, $zero
/* 622A664 8007A934 01000224 */  addiu      $v0, $zero, 0x1
/* 622A668 8007A938 1EEB0108 */  j          .Llevel_26_8007AC78
/* 622A66C 8007A93C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_26_8007A940:
/* 622A670 8007A940 21204002 */  addu       $a0, $s2, $zero
/* 622A674 8007A944 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 622A678 8007A948 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 622A67C 8007A94C 00000000 */  nop
/* 622A680 8007A950 09F84000 */  jalr       $v0
/* 622A684 8007A954 64000524 */   addiu     $a1, $zero, 0x64
/* 622A688 8007A958 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 622A68C 8007A95C 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 622A690 8007A960 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 622A694 8007A964 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 622A698 8007A968 07005014 */  bne        $v0, $s0, .Llevel_26_8007A988
/* 622A69C 8007A96C 00000000 */   nop
/* 622A6A0 8007A970 0780043C */  lui        $a0, %hi(D_800719A8)
/* 622A6A4 8007A974 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 622A6A8 8007A978 0780053C */  lui        $a1, %hi(D_80068FA4)
/* 622A6AC 8007A97C A48FA524 */  addiu      $a1, $a1, %lo(D_80068FA4)
/* 622A6B0 8007A980 66EA0108 */  j          .Llevel_26_8007A998
/* 622A6B4 8007A984 00000000 */   nop
.Llevel_26_8007A988:
/* 622A6B8 8007A988 0780043C */  lui        $a0, %hi(D_800719A8)
/* 622A6BC 8007A98C A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 622A6C0 8007A990 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 622A6C4 8007A994 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
.Llevel_26_8007A998:
/* 622A6C8 8007A998 694D000C */  jal        func_800135A4
/* 622A6CC 8007A99C 21300000 */   addu      $a2, $zero, $zero
/* 622A6D0 8007A9A0 0780043C */  lui        $a0, %hi(D_800719F0)
/* 622A6D4 8007A9A4 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 622A6D8 8007A9A8 0780053C */  lui        $a1, %hi(D_80068F90)
/* 622A6DC 8007A9AC 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 622A6E0 8007A9B0 694D000C */  jal        func_800135A4
/* 622A6E4 8007A9B4 21300000 */   addu      $a2, $zero, $zero
/* 622A6E8 8007A9B8 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 622A6EC 8007A9BC E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 622A6F0 8007A9C0 00000000 */  nop
/* 622A6F4 8007A9C4 02004014 */  bnez       $v0, .Llevel_26_8007A9D0
/* 622A6F8 8007A9C8 00000000 */   nop
/* 622A6FC 8007A9CC 2C0020AE */  sw         $zero, 0x2C($s1)
.Llevel_26_8007A9D0:
/* 622A700 8007A9D0 0780033C */  lui        $v1, %hi(D_8006E044)
/* 622A704 8007A9D4 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 622A708 8007A9D8 07000224 */  addiu      $v0, $zero, 0x7
/* 622A70C 8007A9DC 11006214 */  bne        $v1, $v0, .Llevel_26_8007AA24
/* 622A710 8007A9E0 00000000 */   nop
/* 622A714 8007A9E4 0780023C */  lui        $v0, %hi(D_8006E048)
/* 622A718 8007A9E8 48E0428C */  lw         $v0, %lo(D_8006E048)($v0)
/* 622A71C 8007A9EC 00000000 */  nop
/* 622A720 8007A9F0 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 622A724 8007A9F4 0200422C */  sltiu      $v0, $v0, 0x2
/* 622A728 8007A9F8 0A004010 */  beqz       $v0, .Llevel_26_8007AA24
/* 622A72C 8007A9FC 01000224 */   addiu     $v0, $zero, 0x1
/* 622A730 8007AA00 0780013C */  lui        $at, %hi(D_8006C768)
/* 622A734 8007AA04 68C722AC */  sw         $v0, %lo(D_8006C768)($at)
/* 622A738 8007AA08 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 622A73C 8007AA0C B00522AC */  sw         $v0, %lo(D_80070328 + 0x288)($at)
/* 622A740 8007AA10 01000224 */  addiu      $v0, $zero, 0x1
/* 622A744 8007AA14 0780013C */  lui        $at, %hi(D_8006E13F)
/* 622A748 8007AA18 3FE122A0 */  sb         $v0, %lo(D_8006E13F)($at)
/* 622A74C 8007AA1C 8BEA0108 */  j          .Llevel_26_8007AA2C
/* 622A750 8007AA20 00000000 */   nop
.Llevel_26_8007AA24:
/* 622A754 8007AA24 0780013C */  lui        $at, %hi(D_8006C768)
/* 622A758 8007AA28 68C720AC */  sw         $zero, %lo(D_8006C768)($at)
.Llevel_26_8007AA2C:
/* 622A75C 8007AA2C 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 622A760 8007AA30 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 622A764 8007AA34 03000224 */  addiu      $v0, $zero, 0x3
/* 622A768 8007AA38 0B006214 */  bne        $v1, $v0, .Llevel_26_8007AA68
/* 622A76C 8007AA3C 01000224 */   addiu     $v0, $zero, 0x1
/* 622A770 8007AA40 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 622A774 8007AA44 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 622A778 8007AA48 3D004392 */  lbu        $v1, 0x3D($s2)
/* 622A77C 8007AA4C 9CFF4524 */  addiu      $a1, $v0, -0x64
/* 622A780 8007AA50 0600A310 */  beq        $a1, $v1, .Llevel_26_8007AA6C
/* 622A784 8007AA54 01000224 */   addiu     $v0, $zero, 0x1
/* 622A788 8007AA58 D0D3000C */  jal        func_80034F40
/* 622A78C 8007AA5C 21204002 */   addu      $a0, $s2, $zero
/* 622A790 8007AA60 B3EA0108 */  j          .Llevel_26_8007AACC
/* 622A794 8007AA64 3C0020AE */   sw        $zero, 0x3C($s1)
.Llevel_26_8007AA68:
/* 622A798 8007AA68 3D004392 */  lbu        $v1, 0x3D($s2)
.Llevel_26_8007AA6C:
/* 622A79C 8007AA6C 00000000 */  nop
/* 622A7A0 8007AA70 17006214 */  bne        $v1, $v0, .Llevel_26_8007AAD0
/* 622A7A4 8007AA74 24002426 */   addiu     $a0, $s1, 0x24
/* 622A7A8 8007AA78 0780033C */  lui        $v1, %hi(D_80070328 + 0xB4)
/* 622A7AC 8007AA7C DC03638C */  lw         $v1, %lo(D_80070328 + 0xB4)($v1)
/* 622A7B0 8007AA80 00000000 */  nop
/* 622A7B4 8007AA84 0A006010 */  beqz       $v1, .Llevel_26_8007AAB0
/* 622A7B8 8007AA88 8888023C */   lui       $v0, (0x88888889 >> 16)
/* 622A7BC 8007AA8C 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 622A7C0 8007AA90 00190300 */  sll        $v1, $v1, 4
/* 622A7C4 8007AA94 18006200 */  mult       $v1, $v0
/* 622A7C8 8007AA98 10400000 */  mfhi       $t0
/* 622A7CC 8007AA9C 21100301 */  addu       $v0, $t0, $v1
/* 622A7D0 8007AAA0 C3120200 */  sra        $v0, $v0, 11
/* 622A7D4 8007AAA4 C31F0300 */  sra        $v1, $v1, 31
/* 622A7D8 8007AAA8 ADEA0108 */  j          .Llevel_26_8007AAB4
/* 622A7DC 8007AAAC 23284300 */   subu      $a1, $v0, $v1
.Llevel_26_8007AAB0:
/* 622A7E0 8007AAB0 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_26_8007AAB4:
/* 622A7E4 8007AAB4 21204002 */  addu       $a0, $s2, $zero
/* 622A7E8 8007AAB8 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 622A7EC 8007AABC 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 622A7F0 8007AAC0 00000000 */  nop
/* 622A7F4 8007AAC4 09F84000 */  jalr       $v0
/* 622A7F8 8007AAC8 3C002626 */   addiu     $a2, $s1, 0x3C
.Llevel_26_8007AACC:
/* 622A7FC 8007AACC 24002426 */  addiu      $a0, $s1, 0x24
.Llevel_26_8007AAD0:
/* 622A800 8007AAD0 69D6000C */  jal        func_800359A4
/* 622A804 8007AAD4 04000524 */   addiu     $a1, $zero, 0x4
/* 622A808 8007AAD8 20004010 */  beqz       $v0, .Llevel_26_8007AB5C
/* 622A80C 8007AADC 00000000 */   nop
/* 622A810 8007AAE0 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 622A814 8007AAE4 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 622A818 8007AAE8 00000000 */  nop
/* 622A81C 8007AAEC 20004230 */  andi       $v0, $v0, 0x20
/* 622A820 8007AAF0 1A004010 */  beqz       $v0, .Llevel_26_8007AB5C
/* 622A824 8007AAF4 26000224 */   addiu     $v0, $zero, 0x26
/* 622A828 8007AAF8 0780033C */  lui        $v1, %hi(D_8006E044)
/* 622A82C 8007AAFC 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 622A830 8007AB00 00000000 */  nop
/* 622A834 8007AB04 15006210 */  beq        $v1, $v0, .Llevel_26_8007AB5C
/* 622A838 8007AB08 00000000 */   nop
/* 622A83C 8007AB0C 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 622A840 8007AB10 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 622A844 8007AB14 00000000 */  nop
/* 622A848 8007AB18 10004014 */  bnez       $v0, .Llevel_26_8007AB5C
/* 622A84C 8007AB1C 21204002 */   addu      $a0, $s2, $zero
/* 622A850 8007AB20 4957010C */  jal        func_80055D24
/* 622A854 8007AB24 04000524 */   addiu     $a1, $zero, 0x4
/* 622A858 8007AB28 5A000424 */  addiu      $a0, $zero, 0x5A
/* 622A85C 8007AB2C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 622A860 8007AB30 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 622A864 8007AB34 00000000 */  nop
/* 622A868 8007AB38 09F84000 */  jalr       $v0
/* 622A86C 8007AB3C 21284002 */   addu      $a1, $s2, $zero
/* 622A870 8007AB40 06004010 */  beqz       $v0, .Llevel_26_8007AB5C
/* 622A874 8007AB44 28000224 */   addiu     $v0, $zero, 0x28
/* 622A878 8007AB48 2800238E */  lw         $v1, 0x28($s1)
/* 622A87C 8007AB4C 240022AE */  sw         $v0, 0x24($s1)
/* 622A880 8007AB50 01000224 */  addiu      $v0, $zero, 0x1
/* 622A884 8007AB54 23104300 */  subu       $v0, $v0, $v1
/* 622A888 8007AB58 280022AE */  sw         $v0, 0x28($s1)
.Llevel_26_8007AB5C:
/* 622A88C 8007AB5C 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 622A890 8007AB60 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 622A894 8007AB64 00000000 */  nop
/* 622A898 8007AB68 80100200 */  sll        $v0, $v0, 2
/* 622A89C 8007AB6C 0780013C */  lui        $at, %hi(D_80068CAC)
/* 622A8A0 8007AB70 21082200 */  addu       $at, $at, $v0
/* 622A8A4 8007AB74 AC8C238C */  lw         $v1, %lo(D_80068CAC)($at)
/* 622A8A8 8007AB78 1E000224 */  addiu      $v0, $zero, 0x1E
/* 622A8AC 8007AB7C 0B006214 */  bne        $v1, $v0, .Llevel_26_8007ABAC
/* 622A8B0 8007AB80 00000000 */   nop
/* 622A8B4 8007AB84 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 622A8B8 8007AB88 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 622A8BC 8007AB8C 00000000 */  nop
/* 622A8C0 8007AB90 10004230 */  andi       $v0, $v0, 0x10
/* 622A8C4 8007AB94 05004010 */  beqz       $v0, .Llevel_26_8007ABAC
/* 622A8C8 8007AB98 01000224 */   addiu     $v0, $zero, 0x1
/* 622A8CC 8007AB9C 2C00238E */  lw         $v1, 0x2C($s1)
/* 622A8D0 8007ABA0 00000000 */  nop
/* 622A8D4 8007ABA4 23104300 */  subu       $v0, $v0, $v1
/* 622A8D8 8007ABA8 2C0022AE */  sw         $v0, 0x2C($s1)
.Llevel_26_8007ABAC:
/* 622A8DC 8007ABAC 0780033C */  lui        $v1, %hi(D_8006E044)
/* 622A8E0 8007ABB0 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 622A8E4 8007ABB4 26000224 */  addiu      $v0, $zero, 0x26
/* 622A8E8 8007ABB8 30006214 */  bne        $v1, $v0, .Llevel_26_8007AC7C
/* 622A8EC 8007ABBC 0C004426 */   addiu     $a0, $s2, 0xC
/* 622A8F0 8007ABC0 0780023C */  lui        $v0, %hi(D_8006E08C)
/* 622A8F4 8007ABC4 8CE0428C */  lw         $v0, %lo(D_8006E08C)($v0)
/* 622A8F8 8007ABC8 0780033C */  lui        $v1, %hi(D_8006E078)
/* 622A8FC 8007ABCC 78E0638C */  lw         $v1, %lo(D_8006E078)($v1)
/* 622A900 8007ABD0 00000000 */  nop
/* 622A904 8007ABD4 23104300 */  subu       $v0, $v0, $v1
/* 622A908 8007ABD8 FF0F4330 */  andi       $v1, $v0, 0xFFF
/* 622A90C 8007ABDC 01086228 */  slti       $v0, $v1, 0x801
/* 622A910 8007ABE0 02004014 */  bnez       $v0, .Llevel_26_8007ABEC
/* 622A914 8007ABE4 00000000 */   nop
/* 622A918 8007ABE8 00F06324 */  addiu      $v1, $v1, -0x1000
.Llevel_26_8007ABEC:
/* 622A91C 8007ABEC 02006104 */  bgez       $v1, .Llevel_26_8007ABF8
/* 622A920 8007ABF0 21106000 */   addu      $v0, $v1, $zero
/* 622A924 8007ABF4 23100200 */  negu       $v0, $v0
.Llevel_26_8007ABF8:
/* 622A928 8007ABF8 80004228 */  slti       $v0, $v0, 0x80
/* 622A92C 8007ABFC 07004010 */  beqz       $v0, .Llevel_26_8007AC1C
/* 622A930 8007AC00 01000224 */   addiu     $v0, $zero, 0x1
/* 622A934 8007AC04 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 622A938 8007AC08 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 622A93C 8007AC0C 0780013C */  lui        $at, %hi(D_8006C768)
/* 622A940 8007AC10 68C722AC */  sw         $v0, %lo(D_8006C768)($at)
/* 622A944 8007AC14 1FEB0108 */  j          .Llevel_26_8007AC7C
/* 622A948 8007AC18 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_26_8007AC1C:
/* 622A94C 8007AC1C 10000224 */  addiu      $v0, $zero, 0x10
/* 622A950 8007AC20 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 622A954 8007AC24 0780013C */  lui        $at, %hi(D_8006C768)
/* 622A958 8007AC28 68C720AC */  sw         $zero, %lo(D_8006C768)($at)
/* 622A95C 8007AC2C 1FEB0108 */  j          .Llevel_26_8007AC7C
/* 622A960 8007AC30 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_26_8007AC34:
/* 622A964 8007AC34 0780033C */  lui        $v1, %hi(D_8006E044)
/* 622A968 8007AC38 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 622A96C 8007AC3C 00000000 */  nop
/* 622A970 8007AC40 0E006214 */  bne        $v1, $v0, .Llevel_26_8007AC7C
/* 622A974 8007AC44 0C004426 */   addiu     $a0, $s2, 0xC
/* 622A978 8007AC48 480040A2 */  sb         $zero, 0x48($s2)
/* 622A97C 8007AC4C 48005026 */  addiu      $s0, $s2, 0x48
/* 622A980 8007AC50 21200002 */  addu       $a0, $s0, $zero
/* 622A984 8007AC54 0780063C */  lui        $a2, %hi(D_8006D088)
/* 622A988 8007AC58 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 622A98C 8007AC5C EDED000C */  jal        func_8003B7B4
/* 622A990 8007AC60 01000524 */   addiu     $a1, $zero, 0x1
/* 622A994 8007AC64 21200002 */  addu       $a0, $s0, $zero
/* 622A998 8007AC68 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 622A99C 8007AC6C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 622A9A0 8007AC70 EDED000C */  jal        func_8003B7B4
/* 622A9A4 8007AC74 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_26_8007AC78:
/* 622A9A8 8007AC78 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_26_8007AC7C:
/* 622A9AC 8007AC7C 1400428E */  lw         $v0, 0x14($s2)
/* 622A9B0 8007AC80 00100524 */  addiu      $a1, $zero, 0x1000
/* 622A9B4 8007AC84 00014224 */  addiu      $v0, $v0, 0x100
/* 622A9B8 8007AC88 D668000C */  jal        func_8001A358
/* 622A9BC 8007AC8C 140042AE */   sw        $v0, 0x14($s2)
/* 622A9C0 8007AC90 1400428E */  lw         $v0, 0x14($s2)
/* 622A9C4 8007AC94 21204002 */  addu       $a0, $s2, $zero
/* 622A9C8 8007AC98 00FF4224 */  addiu      $v0, $v0, -0x100
/* 622A9CC 8007AC9C A758010C */  jal        func_8005629C
/* 622A9D0 8007ACA0 140082AC */   sw        $v0, 0x14($a0)
/* 622A9D4 8007ACA4 2400BF8F */  lw         $ra, 0x24($sp)
/* 622A9D8 8007ACA8 2000B28F */  lw         $s2, 0x20($sp)
/* 622A9DC 8007ACAC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 622A9E0 8007ACB0 1800B08F */  lw         $s0, 0x18($sp)
/* 622A9E4 8007ACB4 2800BD27 */  addiu      $sp, $sp, 0x28
/* 622A9E8 8007ACB8 0800E003 */  jr         $ra
/* 622A9EC 8007ACBC 00000000 */   nop
.size MobyUpdate_89_level_26, . - MobyUpdate_89_level_26
