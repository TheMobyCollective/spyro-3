.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_99_level_43
/* 879FBE4 8007A6B4 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 879FBE8 8007A6B8 3000B2AF */  sw         $s2, 0x30($sp)
/* 879FBEC 8007A6BC 21908000 */  addu       $s2, $a0, $zero
/* 879FBF0 8007A6C0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 879FBF4 8007A6C4 3800BFAF */  sw         $ra, 0x38($sp)
/* 879FBF8 8007A6C8 3400B3AF */  sw         $s3, 0x34($sp)
/* 879FBFC 8007A6CC 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 879FC00 8007A6D0 2800B0AF */  sw         $s0, 0x28($sp)
/* 879FC04 8007A6D4 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 879FC08 8007A6D8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 879FC0C 8007A6DC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 879FC10 8007A6E0 0000538E */  lw         $s3, 0x0($s2)
/* 879FC14 8007A6E4 12004018 */  blez       $v0, .Llevel_43_8007A730
/* 879FC18 8007A6E8 00000000 */   nop
/* 879FC1C 8007A6EC 8004628E */  lw         $v0, 0x480($s3)
/* 879FC20 8007A6F0 00000000 */  nop
/* 879FC24 8007A6F4 0E004014 */  bnez       $v0, .Llevel_43_8007A730
/* 879FC28 8007A6F8 00000000 */   nop
/* 879FC2C 8007A6FC 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 879FC30 8007A700 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 879FC34 8007A704 0680023C */  lui        $v0, %hi(D_800652B0 + 0xB0)
/* 879FC38 8007A708 6053428C */  lw         $v0, %lo(D_800652B0 + 0xB0)($v0)
/* 879FC3C 8007A70C 0680063C */  lui        $a2, %hi(D_800652B6 + 0xB0)
/* 879FC40 8007A710 6653C694 */  lhu        $a2, %lo(D_800652B6 + 0xB0)($a2)
/* 879FC44 8007A714 0680053C */  lui        $a1, %hi(D_800652B4 + 0xB0)
/* 879FC48 8007A718 6453A594 */  lhu        $a1, %lo(D_800652B4 + 0xB0)($a1)
/* 879FC4C 8007A71C 21208200 */  addu       $a0, $a0, $v0
/* 879FC50 8007A720 613E010C */  jal        func_8004F984
/* 879FC54 8007A724 21288500 */   addu      $a1, $a0, $a1
/* 879FC58 8007A728 01000224 */  addiu      $v0, $zero, 0x1
/* 879FC5C 8007A72C 800462AE */  sw         $v0, 0x480($s3)
.Llevel_43_8007A730:
/* 879FC60 8007A730 48004392 */  lbu        $v1, 0x48($s2)
/* 879FC64 8007A734 01000424 */  addiu      $a0, $zero, 0x1
/* 879FC68 8007A738 75006410 */  beq        $v1, $a0, .Llevel_43_8007A910
/* 879FC6C 8007A73C 02006228 */   slti      $v0, $v1, 0x2
/* 879FC70 8007A740 05004010 */  beqz       $v0, .Llevel_43_8007A758
/* 879FC74 8007A744 00000000 */   nop
/* 879FC78 8007A748 0A006010 */  beqz       $v1, .Llevel_43_8007A774
/* 879FC7C 8007A74C 0D000224 */   addiu     $v0, $zero, 0xD
/* 879FC80 8007A750 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 879FC84 8007A754 00000000 */   nop
.Llevel_43_8007A758:
/* 879FC88 8007A758 03000224 */  addiu      $v0, $zero, 0x3
/* 879FC8C 8007A75C 97006210 */  beq        $v1, $v0, .Llevel_43_8007A9BC
/* 879FC90 8007A760 12000224 */   addiu     $v0, $zero, 0x12
/* 879FC94 8007A764 57006210 */  beq        $v1, $v0, .Llevel_43_8007A8C4
/* 879FC98 8007A768 00000000 */   nop
/* 879FC9C 8007A76C A3EB0108 */  j          .Llevel_43_8007AE8C
/* 879FCA0 8007A770 00000000 */   nop
.Llevel_43_8007A774:
/* 879FCA4 8007A774 0780033C */  lui        $v1, %hi(D_8006E344)
/* 879FCA8 8007A778 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 879FCAC 8007A77C 00000000 */  nop
/* 879FCB0 8007A780 3F006214 */  bne        $v1, $v0, .Llevel_43_8007A880
/* 879FCB4 8007A784 01000224 */   addiu     $v0, $zero, 0x1
/* 879FCB8 8007A788 49004292 */  lbu        $v0, 0x49($s2)
/* 879FCBC 8007A78C 00000000 */  nop
/* 879FCC0 8007A790 3B004014 */  bnez       $v0, .Llevel_43_8007A880
/* 879FCC4 8007A794 01000224 */   addiu     $v0, $zero, 0x1
/* 879FCC8 8007A798 0780023C */  lui        $v0, %hi(D_8006C4F8)
/* 879FCCC 8007A79C F8C4428C */  lw         $v0, %lo(D_8006C4F8)($v0)
/* 879FCD0 8007A7A0 00000000 */  nop
/* 879FCD4 8007A7A4 0F004410 */  beq        $v0, $a0, .Llevel_43_8007A7E4
/* 879FCD8 8007A7A8 03000224 */   addiu     $v0, $zero, 0x3
/* 879FCDC 8007A7AC 480042A2 */  sb         $v0, 0x48($s2)
/* 879FCE0 8007A7B0 48005026 */  addiu      $s0, $s2, 0x48
/* 879FCE4 8007A7B4 21200002 */  addu       $a0, $s0, $zero
/* 879FCE8 8007A7B8 0780063C */  lui        $a2, %hi(D_8006D088)
/* 879FCEC 8007A7BC 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 879FCF0 8007A7C0 EDED000C */  jal        func_8003B7B4
/* 879FCF4 8007A7C4 01000524 */   addiu     $a1, $zero, 0x1
/* 879FCF8 8007A7C8 21200002 */  addu       $a0, $s0, $zero
/* 879FCFC 8007A7CC 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 879FD00 8007A7D0 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 879FD04 8007A7D4 EDED000C */  jal        func_8003B7B4
/* 879FD08 8007A7D8 01000524 */   addiu     $a1, $zero, 0x1
/* 879FD0C 8007A7DC A3EB0108 */  j          .Llevel_43_8007AE8C
/* 879FD10 8007A7E0 00000000 */   nop
.Llevel_43_8007A7E4:
/* 879FD14 8007A7E4 46004292 */  lbu        $v0, 0x46($s2)
/* 879FD18 8007A7E8 00000000 */  nop
/* 879FD1C 8007A7EC 40100200 */  sll        $v0, $v0, 1
/* 879FD20 8007A7F0 0680013C */  lui        $at, %hi(D_80065920)
/* 879FD24 8007A7F4 21082200 */  addu       $at, $at, $v0
/* 879FD28 8007A7F8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 879FD2C 8007A7FC 0780043C */  lui        $a0, %hi(D_800719BC)
/* 879FD30 8007A800 BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 879FD34 8007A804 40100300 */  sll        $v0, $v1, 1
/* 879FD38 8007A808 21104300 */  addu       $v0, $v0, $v1
/* 879FD3C 8007A80C 80100200 */  sll        $v0, $v0, 2
/* 879FD40 8007A810 21104300 */  addu       $v0, $v0, $v1
/* 879FD44 8007A814 43110200 */  sra        $v0, $v0, 5
/* 879FD48 8007A818 000082AC */  sw         $v0, 0x0($a0)
/* 879FD4C 8007A81C 46004292 */  lbu        $v0, 0x46($s2)
/* 879FD50 8007A820 21288000 */  addu       $a1, $a0, $zero
/* 879FD54 8007A824 40100200 */  sll        $v0, $v0, 1
/* 879FD58 8007A828 0680013C */  lui        $at, %hi(D_800658A0)
/* 879FD5C 8007A82C 21082200 */  addu       $at, $at, $v0
/* 879FD60 8007A830 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 879FD64 8007A834 0780013C */  lui        $at, %hi(D_800719C4)
/* 879FD68 8007A838 C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 879FD6C 8007A83C 40100300 */  sll        $v0, $v1, 1
/* 879FD70 8007A840 21104300 */  addu       $v0, $v0, $v1
/* 879FD74 8007A844 80100200 */  sll        $v0, $v0, 2
/* 879FD78 8007A848 21104300 */  addu       $v0, $v0, $v1
/* 879FD7C 8007A84C 43110200 */  sra        $v0, $v0, 5
/* 879FD80 8007A850 0780013C */  lui        $at, %hi(D_800719C0)
/* 879FD84 8007A854 C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 879FD88 8007A858 653C010C */  jal        func_8004F194
/* 879FD8C 8007A85C 0C004626 */   addiu     $a2, $s2, 0xC
/* 879FD90 8007A860 46004292 */  lbu        $v0, 0x46($s2)
/* 879FD94 8007A864 00000000 */  nop
/* 879FD98 8007A868 80004224 */  addiu      $v0, $v0, 0x80
/* 879FD9C 8007A86C 00110200 */  sll        $v0, $v0, 4
/* 879FDA0 8007A870 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 879FDA4 8007A874 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 879FDA8 8007A878 E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 879FDAC 8007A87C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_43_8007A880:
/* 879FDB0 8007A880 380040A6 */  sh         $zero, 0x38($s2)
/* 879FDB4 8007A884 050062A2 */  sb         $v0, 0x5($s3)
/* 879FDB8 8007A888 0780023C */  lui        $v0, %hi(D_8006C598)
/* 879FDBC 8007A88C 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 879FDC0 8007A890 00000000 */  nop
/* 879FDC4 8007A894 7D014014 */  bnez       $v0, .Llevel_43_8007AE8C
/* 879FDC8 8007A898 21204002 */   addu      $a0, $s2, $zero
/* 879FDCC 8007A89C EFDE000C */  jal        func_80037BBC
/* 879FDD0 8007A8A0 21280000 */   addu      $a1, $zero, $zero
/* 879FDD4 8007A8A4 79014010 */  beqz       $v0, .Llevel_43_8007AE8C
/* 879FDD8 8007A8A8 21204002 */   addu      $a0, $s2, $zero
/* 879FDDC 8007A8AC 21280000 */  addu       $a1, $zero, $zero
/* 879FDE0 8007A8B0 B944010C */  jal        func_800512E4
/* 879FDE4 8007A8B4 12000624 */   addiu     $a2, $zero, 0x12
/* 879FDE8 8007A8B8 12000224 */  addiu      $v0, $zero, 0x12
/* 879FDEC 8007A8BC A3EB0108 */  j          .Llevel_43_8007AE8C
/* 879FDF0 8007A8C0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_43_8007A8C4:
/* 879FDF4 8007A8C4 0780023C */  lui        $v0, %hi(D_8006E344)
/* 879FDF8 8007A8C8 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 879FDFC 8007A8CC 00000000 */  nop
/* 879FE00 8007A8D0 6E014410 */  beq        $v0, $a0, .Llevel_43_8007AE8C
/* 879FE04 8007A8D4 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 879FE08 8007A8D8 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 879FE0C 8007A8DC 21204002 */  addu       $a0, $s2, $zero
/* 879FE10 8007A8E0 01000524 */  addiu      $a1, $zero, 0x1
/* 879FE14 8007A8E4 01000324 */  addiu      $v1, $zero, 0x1
/* 879FE18 8007A8E8 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 879FE1C 8007A8EC 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 879FE20 8007A8F0 3C000224 */  addiu      $v0, $zero, 0x3C
/* 879FE24 8007A8F4 0780013C */  lui        $at, %hi(D_8007158B)
/* 879FE28 8007A8F8 8B1523A0 */  sb         $v1, %lo(D_8007158B)($at)
/* 879FE2C 8007A8FC 7C0062AE */  sw         $v0, 0x7C($s3)
/* 879FE30 8007A900 D0D3000C */  jal        func_80034F40
/* 879FE34 8007A904 480043A2 */   sb        $v1, 0x48($s2)
/* 879FE38 8007A908 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 879FE3C 8007A90C 00000000 */   nop
.Llevel_43_8007A910:
/* 879FE40 8007A910 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 879FE44 8007A914 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 879FE48 8007A918 21204002 */  addu       $a0, $s2, $zero
/* 879FE4C 8007A91C 08000624 */  addiu      $a2, $zero, 0x8
/* 879FE50 8007A920 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 879FE54 8007A924 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 879FE58 8007A928 3400658E */  lw         $a1, 0x34($s3)
/* 879FE5C 8007A92C 10000724 */  addiu      $a3, $zero, 0x10
/* 879FE60 8007A930 1000A3AF */  sw         $v1, 0x10($sp)
/* 879FE64 8007A934 1400A0AF */  sw         $zero, 0x14($sp)
/* 879FE68 8007A938 17D6000C */  jal        func_8003585C
/* 879FE6C 8007A93C 8000A524 */   addiu     $a1, $a1, 0x80
/* 879FE70 8007A940 06004010 */  beqz       $v0, .Llevel_43_8007A95C
/* 879FE74 8007A944 21204002 */   addu      $a0, $s2, $zero
/* 879FE78 8007A948 1000A0AF */  sw         $zero, 0x10($sp)
/* 879FE7C 8007A94C 80000524 */  addiu      $a1, $zero, 0x80
/* 879FE80 8007A950 21300000 */  addu       $a2, $zero, $zero
/* 879FE84 8007A954 77D7000C */  jal        func_80035DDC
/* 879FE88 8007A958 21380000 */   addu      $a3, $zero, $zero
.Llevel_43_8007A95C:
/* 879FE8C 8007A95C 7C006426 */  addiu      $a0, $s3, 0x7C
/* 879FE90 8007A960 69D6000C */  jal        func_800359A4
/* 879FE94 8007A964 04000524 */   addiu     $a1, $zero, 0x4
/* 879FE98 8007A968 02000324 */  addiu      $v1, $zero, 0x2
/* 879FE9C 8007A96C 47014314 */  bne        $v0, $v1, .Llevel_43_8007AE8C
/* 879FEA0 8007A970 48005026 */   addiu     $s0, $s2, 0x48
/* 879FEA4 8007A974 21200002 */  addu       $a0, $s0, $zero
/* 879FEA8 8007A978 01000524 */  addiu      $a1, $zero, 0x1
/* 879FEAC 8007A97C 0780113C */  lui        $s1, %hi(D_8006D088)
/* 879FEB0 8007A980 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 879FEB4 8007A984 21302002 */  addu       $a2, $s1, $zero
/* 879FEB8 8007A988 03000224 */  addiu      $v0, $zero, 0x3
/* 879FEBC 8007A98C EDED000C */  jal        func_8003B7B4
/* 879FEC0 8007A990 480042A2 */   sb        $v0, 0x48($s2)
/* 879FEC4 8007A994 21200002 */  addu       $a0, $s0, $zero
/* 879FEC8 8007A998 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 879FECC 8007A99C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 879FED0 8007A9A0 EDED000C */  jal        func_8003B7B4
/* 879FED4 8007A9A4 01000524 */   addiu     $a1, $zero, 0x1
/* 879FED8 8007A9A8 D3ED000C */  jal        func_8003B74C
/* 879FEDC 8007A9AC 21202002 */   addu      $a0, $s1, $zero
/* 879FEE0 8007A9B0 01000224 */  addiu      $v0, $zero, 0x1
/* 879FEE4 8007A9B4 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 879FEE8 8007A9B8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_43_8007A9BC:
/* 879FEEC 8007A9BC 21204002 */  addu       $a0, $s2, $zero
/* 879FEF0 8007A9C0 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 879FEF4 8007A9C4 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 879FEF8 8007A9C8 00000000 */  nop
/* 879FEFC 8007A9CC 09F84000 */  jalr       $v0
/* 879FF00 8007A9D0 73000524 */   addiu     $a1, $zero, 0x73
/* 879FF04 8007A9D4 0780043C */  lui        $a0, %hi(D_800719A8)
/* 879FF08 8007A9D8 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 879FF0C 8007A9DC 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 879FF10 8007A9E0 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 879FF14 8007A9E4 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 879FF18 8007A9E8 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 879FF1C 8007A9EC 694D000C */  jal        func_800135A4
/* 879FF20 8007A9F0 21300000 */   addu      $a2, $zero, $zero
/* 879FF24 8007A9F4 0780043C */  lui        $a0, %hi(D_800719F0)
/* 879FF28 8007A9F8 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 879FF2C 8007A9FC 0780053C */  lui        $a1, %hi(D_80068F90)
/* 879FF30 8007AA00 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 879FF34 8007AA04 694D000C */  jal        func_800135A4
/* 879FF38 8007AA08 21300000 */   addu      $a2, $zero, $zero
/* 879FF3C 8007AA0C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 879FF40 8007AA10 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 879FF44 8007AA14 1F000224 */  addiu      $v0, $zero, 0x1F
/* 879FF48 8007AA18 03006210 */  beq        $v1, $v0, .Llevel_43_8007AA28
/* 879FF4C 8007AA1C 28000224 */   addiu     $v0, $zero, 0x28
/* 879FF50 8007AA20 0D006214 */  bne        $v1, $v0, .Llevel_43_8007AA58
/* 879FF54 8007AA24 10000324 */   addiu     $v1, $zero, 0x10
.Llevel_43_8007AA28:
/* 879FF58 8007AA28 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 879FF5C 8007AA2C 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 879FF60 8007AA30 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 879FF64 8007AA34 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 879FF68 8007AA38 00000000 */  nop
/* 879FF6C 8007AA3C 0D004010 */  beqz       $v0, .Llevel_43_8007AA74
/* 879FF70 8007AA40 00000000 */   nop
/* 879FF74 8007AA44 4C0040A0 */  sb         $zero, 0x4C($v0)
/* 879FF78 8007AA48 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 879FF7C 8007AA4C 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 879FF80 8007AA50 9DEA0108 */  j          .Llevel_43_8007AA74
/* 879FF84 8007AA54 4D0040A0 */   sb        $zero, 0x4D($v0)
.Llevel_43_8007AA58:
/* 879FF88 8007AA58 4C0043A2 */  sb         $v1, 0x4C($s2)
/* 879FF8C 8007AA5C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 879FF90 8007AA60 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 879FF94 8007AA64 00000000 */  nop
/* 879FF98 8007AA68 02004010 */  beqz       $v0, .Llevel_43_8007AA74
/* 879FF9C 8007AA6C 00000000 */   nop
/* 879FFA0 8007AA70 4C0043A0 */  sb         $v1, 0x4C($v0)
.Llevel_43_8007AA74:
/* 879FFA4 8007AA74 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 879FFA8 8007AA78 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 879FFAC 8007AA7C 04000224 */  addiu      $v0, $zero, 0x4
/* 879FFB0 8007AA80 31006214 */  bne        $v1, $v0, .Llevel_43_8007AB48
/* 879FFB4 8007AA84 00000000 */   nop
/* 879FFB8 8007AA88 0780043C */  lui        $a0, %hi(D_80070328 + 0x48)
/* 879FFBC 8007AA8C 7003848C */  lw         $a0, %lo(D_80070328 + 0x48)($a0)
/* 879FFC0 8007AA90 3D004392 */  lbu        $v1, 0x3D($s2)
/* 879FFC4 8007AA94 8DFF8524 */  addiu      $a1, $a0, -0x73
/* 879FFC8 8007AA98 2C00A310 */  beq        $a1, $v1, .Llevel_43_8007AB4C
/* 879FFCC 8007AA9C 83000224 */   addiu     $v0, $zero, 0x83
/* 879FFD0 8007AAA0 13008214 */  bne        $a0, $v0, .Llevel_43_8007AAF0
/* 879FFD4 8007AAA4 84000224 */   addiu     $v0, $zero, 0x84
/* 879FFD8 8007AAA8 3C004492 */  lbu        $a0, 0x3C($s2)
/* 879FFDC 8007AAAC 11000224 */  addiu      $v0, $zero, 0x11
/* 879FFE0 8007AAB0 03008210 */  beq        $a0, $v0, .Llevel_43_8007AAC0
/* 879FFE4 8007AAB4 00000000 */   nop
/* 879FFE8 8007AAB8 04006214 */  bne        $v1, $v0, .Llevel_43_8007AACC
/* 879FFEC 8007AABC 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_43_8007AAC0:
/* 879FFF0 8007AAC0 21204002 */  addu       $a0, $s2, $zero
/* 879FFF4 8007AAC4 CEEA0108 */  j          .Llevel_43_8007AB38
/* 879FFF8 8007AAC8 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_43_8007AACC:
/* 879FFFC 8007AACC 05006214 */  bne        $v1, $v0, .Llevel_43_8007AAE4
/* 87A0000 8007AAD0 00000000 */   nop
/* 87A0004 8007AAD4 1A008314 */  bne        $a0, $v1, .Llevel_43_8007AB40
/* 87A0008 8007AAD8 21204002 */   addu      $a0, $s2, $zero
/* 87A000C 8007AADC CEEA0108 */  j          .Llevel_43_8007AB38
/* 87A0010 8007AAE0 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_43_8007AAE4:
/* 87A0014 8007AAE4 21204002 */  addu       $a0, $s2, $zero
/* 87A0018 8007AAE8 CEEA0108 */  j          .Llevel_43_8007AB38
/* 87A001C 8007AAEC 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_43_8007AAF0:
/* 87A0020 8007AAF0 11008214 */  bne        $a0, $v0, .Llevel_43_8007AB38
/* 87A0024 8007AAF4 21204002 */   addu      $a0, $s2, $zero
/* 87A0028 8007AAF8 3C004492 */  lbu        $a0, 0x3C($s2)
/* 87A002C 8007AAFC 10000224 */  addiu      $v0, $zero, 0x10
/* 87A0030 8007AB00 03008210 */  beq        $a0, $v0, .Llevel_43_8007AB10
/* 87A0034 8007AB04 00000000 */   nop
/* 87A0038 8007AB08 04006214 */  bne        $v1, $v0, .Llevel_43_8007AB1C
/* 87A003C 8007AB0C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_43_8007AB10:
/* 87A0040 8007AB10 21204002 */  addu       $a0, $s2, $zero
/* 87A0044 8007AB14 CEEA0108 */  j          .Llevel_43_8007AB38
/* 87A0048 8007AB18 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_43_8007AB1C:
/* 87A004C 8007AB1C 05006214 */  bne        $v1, $v0, .Llevel_43_8007AB34
/* 87A0050 8007AB20 11000524 */   addiu     $a1, $zero, 0x11
/* 87A0054 8007AB24 06008314 */  bne        $a0, $v1, .Llevel_43_8007AB40
/* 87A0058 8007AB28 21204002 */   addu      $a0, $s2, $zero
/* 87A005C 8007AB2C CEEA0108 */  j          .Llevel_43_8007AB38
/* 87A0060 8007AB30 00000000 */   nop
.Llevel_43_8007AB34:
/* 87A0064 8007AB34 21204002 */  addu       $a0, $s2, $zero
.Llevel_43_8007AB38:
/* 87A0068 8007AB38 D0D3000C */  jal        func_80034F40
/* 87A006C 8007AB3C 00000000 */   nop
.Llevel_43_8007AB40:
/* 87A0070 8007AB40 E7EA0108 */  j          .Llevel_43_8007AB9C
/* 87A0074 8007AB44 480060AE */   sw        $zero, 0x48($s3)
.Llevel_43_8007AB48:
/* 87A0078 8007AB48 3D004392 */  lbu        $v1, 0x3D($s2)
.Llevel_43_8007AB4C:
/* 87A007C 8007AB4C 01000224 */  addiu      $v0, $zero, 0x1
/* 87A0080 8007AB50 12006214 */  bne        $v1, $v0, .Llevel_43_8007AB9C
/* 87A0084 8007AB54 00000000 */   nop
/* 87A0088 8007AB58 0780023C */  lui        $v0, %hi(D_80070328 + 0xB4)
/* 87A008C 8007AB5C DC03428C */  lw         $v0, %lo(D_80070328 + 0xB4)($v0)
/* 87A0090 8007AB60 00000000 */  nop
/* 87A0094 8007AB64 06004010 */  beqz       $v0, .Llevel_43_8007AB80
/* 87A0098 8007AB68 00290200 */   sll       $a1, $v0, 4
/* 87A009C 8007AB6C 0200A104 */  bgez       $a1, .Llevel_43_8007AB78
/* 87A00A0 8007AB70 00000000 */   nop
/* 87A00A4 8007AB74 FF07A524 */  addiu      $a1, $a1, 0x7FF
.Llevel_43_8007AB78:
/* 87A00A8 8007AB78 E1EA0108 */  j          .Llevel_43_8007AB84
/* 87A00AC 8007AB7C C32A0500 */   sra       $a1, $a1, 11
.Llevel_43_8007AB80:
/* 87A00B0 8007AB80 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_43_8007AB84:
/* 87A00B4 8007AB84 21204002 */  addu       $a0, $s2, $zero
/* 87A00B8 8007AB88 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 87A00BC 8007AB8C 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 87A00C0 8007AB90 00000000 */  nop
/* 87A00C4 8007AB94 09F84000 */  jalr       $v0
/* 87A00C8 8007AB98 48006626 */   addiu     $a2, $s3, 0x48
.Llevel_43_8007AB9C:
/* 87A00CC 8007AB9C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 87A00D0 8007ABA0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 87A00D4 8007ABA4 81000224 */  addiu      $v0, $zero, 0x81
/* 87A00D8 8007ABA8 19006214 */  bne        $v1, $v0, .Llevel_43_8007AC10
/* 87A00DC 8007ABAC 00000000 */   nop
/* 87A00E0 8007ABB0 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 87A00E4 8007ABB4 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 87A00E8 8007ABB8 00000000 */  nop
/* 87A00EC 8007ABBC 03006010 */  beqz       $v1, .Llevel_43_8007ABCC
/* 87A00F0 8007ABC0 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 87A00F4 8007ABC4 FFEA0108 */  j          .Llevel_43_8007ABFC
/* 87A00F8 8007ABC8 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
.Llevel_43_8007ABCC:
/* 87A00FC 8007ABCC 1800A427 */  addiu      $a0, $sp, 0x18
/* 87A0100 8007ABD0 5E3C010C */  jal        func_8004F178
/* 87A0104 8007ABD4 0C004526 */   addiu     $a1, $s2, 0xC
/* 87A0108 8007ABD8 1800A427 */  addiu      $a0, $sp, 0x18
/* 87A010C 8007ABDC 2000A28F */  lw         $v0, 0x20($sp)
/* 87A0110 8007ABE0 00080524 */  addiu      $a1, $zero, 0x800
/* 87A0114 8007ABE4 00044224 */  addiu      $v0, $v0, 0x400
/* 87A0118 8007ABE8 D668000C */  jal        func_8001A358
/* 87A011C 8007ABEC 2000A2AF */   sw        $v0, 0x20($sp)
/* 87A0120 8007ABF0 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 87A0124 8007ABF4 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 87A0128 8007ABF8 2000A2AF */  sw         $v0, 0x20($sp)
.Llevel_43_8007ABFC:
/* 87A012C 8007ABFC 24104300 */  and        $v0, $v0, $v1
/* 87A0130 8007AC00 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 87A0134 8007AC04 25104300 */  or         $v0, $v0, $v1
/* 87A0138 8007AC08 05EB0108 */  j          .Llevel_43_8007AC14
/* 87A013C 8007AC0C 540042AE */   sw        $v0, 0x54($s2)
.Llevel_43_8007AC10:
/* 87A0140 8007AC10 540040AE */  sw         $zero, 0x54($s2)
.Llevel_43_8007AC14:
/* 87A0144 8007AC14 4C006426 */  addiu      $a0, $s3, 0x4C
/* 87A0148 8007AC18 69D6000C */  jal        func_800359A4
/* 87A014C 8007AC1C 04000524 */   addiu     $a1, $zero, 0x4
/* 87A0150 8007AC20 28004010 */  beqz       $v0, .Llevel_43_8007ACC4
/* 87A0154 8007AC24 00000000 */   nop
/* 87A0158 8007AC28 0780023C */  lui        $v0, %hi(D_8006E538)
/* 87A015C 8007AC2C 38E5428C */  lw         $v0, %lo(D_8006E538)($v0)
/* 87A0160 8007AC30 00000000 */  nop
/* 87A0164 8007AC34 20004230 */  andi       $v0, $v0, 0x20
/* 87A0168 8007AC38 22004010 */  beqz       $v0, .Llevel_43_8007ACC4
/* 87A016C 8007AC3C 1F000224 */   addiu     $v0, $zero, 0x1F
/* 87A0170 8007AC40 0780033C */  lui        $v1, %hi(D_8006E044)
/* 87A0174 8007AC44 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 87A0178 8007AC48 00000000 */  nop
/* 87A017C 8007AC4C 14006210 */  beq        $v1, $v0, .Llevel_43_8007ACA0
/* 87A0180 8007AC50 7E000224 */   addiu     $v0, $zero, 0x7E
/* 87A0184 8007AC54 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 87A0188 8007AC58 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 87A018C 8007AC5C 00000000 */  nop
/* 87A0190 8007AC60 18006210 */  beq        $v1, $v0, .Llevel_43_8007ACC4
/* 87A0194 8007AC64 79000224 */   addiu     $v0, $zero, 0x79
/* 87A0198 8007AC68 16006210 */  beq        $v1, $v0, .Llevel_43_8007ACC4
/* 87A019C 8007AC6C 80000224 */   addiu     $v0, $zero, 0x80
/* 87A01A0 8007AC70 14006210 */  beq        $v1, $v0, .Llevel_43_8007ACC4
/* 87A01A4 8007AC74 86FF6224 */   addiu     $v0, $v1, -0x7A
/* 87A01A8 8007AC78 0200422C */  sltiu      $v0, $v0, 0x2
/* 87A01AC 8007AC7C 11004014 */  bnez       $v0, .Llevel_43_8007ACC4
/* 87A01B0 8007AC80 7C000224 */   addiu     $v0, $zero, 0x7C
/* 87A01B4 8007AC84 0F006210 */  beq        $v1, $v0, .Llevel_43_8007ACC4
/* 87A01B8 8007AC88 00000000 */   nop
/* 87A01BC 8007AC8C 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 87A01C0 8007AC90 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 87A01C4 8007AC94 00000000 */  nop
/* 87A01C8 8007AC98 0A004014 */  bnez       $v0, .Llevel_43_8007ACC4
/* 87A01CC 8007AC9C 00000000 */   nop
.Llevel_43_8007ACA0:
/* 87A01D0 8007ACA0 C5000424 */  addiu      $a0, $zero, 0xC5
/* 87A01D4 8007ACA4 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87A01D8 8007ACA8 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87A01DC 8007ACAC 00000000 */  nop
/* 87A01E0 8007ACB0 09F84000 */  jalr       $v0
/* 87A01E4 8007ACB4 21284002 */   addu      $a1, $s2, $zero
/* 87A01E8 8007ACB8 02004010 */  beqz       $v0, .Llevel_43_8007ACC4
/* 87A01EC 8007ACBC 19000224 */   addiu     $v0, $zero, 0x19
/* 87A01F0 8007ACC0 4C0062AE */  sw         $v0, 0x4C($s3)
.Llevel_43_8007ACC4:
/* 87A01F4 8007ACC4 7800628E */  lw         $v0, 0x78($s3)
/* 87A01F8 8007ACC8 00000000 */  nop
/* 87A01FC 8007ACCC 50004010 */  beqz       $v0, .Llevel_43_8007AE10
/* 87A0200 8007ACD0 00000000 */   nop
/* 87A0204 8007ACD4 48004290 */  lbu        $v0, 0x48($v0)
/* 87A0208 8007ACD8 00000000 */  nop
/* 87A020C 8007ACDC 04004010 */  beqz       $v0, .Llevel_43_8007ACF0
/* 87A0210 8007ACE0 3C000224 */   addiu     $v0, $zero, 0x3C
/* 87A0214 8007ACE4 780060AE */  sw         $zero, 0x78($s3)
/* 87A0218 8007ACE8 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 87A021C 8007ACEC 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_43_8007ACF0:
/* 87A0220 8007ACF0 7C00648E */  lw         $a0, 0x7C($s3)
/* 87A0224 8007ACF4 00000000 */  nop
/* 87A0228 8007ACF8 1C008010 */  beqz       $a0, .Llevel_43_8007AD6C
/* 87A022C 8007ACFC 82000224 */   addiu     $v0, $zero, 0x82
/* 87A0230 8007AD00 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 87A0234 8007AD04 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 87A0238 8007AD08 00000000 */  nop
/* 87A023C 8007AD0C 11006214 */  bne        $v1, $v0, .Llevel_43_8007AD54
/* 87A0240 8007AD10 00000000 */   nop
/* 87A0244 8007AD14 A157010C */  jal        func_80055E84
/* 87A0248 8007AD18 21204002 */   addu      $a0, $s2, $zero
/* 87A024C 8007AD1C 07004228 */  slti       $v0, $v0, 0x7
/* 87A0250 8007AD20 5A004014 */  bnez       $v0, .Llevel_43_8007AE8C
/* 87A0254 8007AD24 2A020224 */   addiu     $v0, $zero, 0x22A
/* 87A0258 8007AD28 74006386 */  lh         $v1, 0x74($s3)
/* 87A025C 8007AD2C 00000000 */  nop
/* 87A0260 8007AD30 05006214 */  bne        $v1, $v0, .Llevel_43_8007AD48
/* 87A0264 8007AD34 01000224 */   addiu     $v0, $zero, 0x1
/* 87A0268 8007AD38 7800638E */  lw         $v1, 0x78($s3)
/* 87A026C 8007AD3C 50000224 */  addiu      $v0, $zero, 0x50
/* 87A0270 8007AD40 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 87A0274 8007AD44 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_43_8007AD48:
/* 87A0278 8007AD48 7800638E */  lw         $v1, 0x78($s3)
/* 87A027C 8007AD4C A3EB0108 */  j          .Llevel_43_8007AE8C
/* 87A0280 8007AD50 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_43_8007AD54:
/* 87A0284 8007AD54 0780023C */  lui        $v0, %hi(D_8006C648)
/* 87A0288 8007AD58 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 87A028C 8007AD5C 00000000 */  nop
/* 87A0290 8007AD60 21108200 */  addu       $v0, $a0, $v0
/* 87A0294 8007AD64 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 87A0298 8007AD68 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_43_8007AD6C:
/* 87A029C 8007AD6C 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 87A02A0 8007AD70 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 87A02A4 8007AD74 00000000 */  nop
/* 87A02A8 8007AD78 80004230 */  andi       $v0, $v0, 0x80
/* 87A02AC 8007AD7C 43004010 */  beqz       $v0, .Llevel_43_8007AE8C
/* 87A02B0 8007AD80 00000000 */   nop
/* 87A02B4 8007AD84 0780023C */  lui        $v0, %hi(D_8006E344)
/* 87A02B8 8007AD88 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 87A02BC 8007AD8C 00000000 */  nop
/* 87A02C0 8007AD90 3E004014 */  bnez       $v0, .Llevel_43_8007AE8C
/* 87A02C4 8007AD94 64007026 */   addiu     $s0, $s3, 0x64
/* 87A02C8 8007AD98 0780113C */  lui        $s1, %hi(D_80070328 + 0x30)
/* 87A02CC 8007AD9C 58033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x30)
/* 87A02D0 8007ADA0 21202002 */  addu       $a0, $s1, $zero
/* 87A02D4 8007ADA4 21280002 */  addu       $a1, $s0, $zero
/* 87A02D8 8007ADA8 21300002 */  addu       $a2, $s0, $zero
/* 87A02DC 8007ADAC 80010224 */  addiu      $v0, $zero, 0x180
/* 87A02E0 8007ADB0 5C0062AE */  sw         $v0, 0x5C($s3)
/* 87A02E4 8007ADB4 00180224 */  addiu      $v0, $zero, 0x1800
/* 87A02E8 8007ADB8 640062AE */  sw         $v0, 0x64($s3)
/* 87A02EC 8007ADBC 680060AE */  sw         $zero, 0x68($s3)
/* 87A02F0 8007ADC0 5B3B010C */  jal        func_8004ED6C
/* 87A02F4 8007ADC4 6C0060AE */   sw        $zero, 0x6C($s3)
/* 87A02F8 8007ADC8 21200002 */  addu       $a0, $s0, $zero
/* 87A02FC 8007ADCC 21288000 */  addu       $a1, $a0, $zero
/* 87A0300 8007ADD0 653C010C */  jal        func_8004F194
/* 87A0304 8007ADD4 D0FF2626 */   addiu     $a2, $s1, -0x30
/* 87A0308 8007ADD8 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 87A030C 8007ADDC 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 87A0310 8007ADE0 0780023C */  lui        $v0, %hi(unk_ovlheader_8007432C)
/* 87A0314 8007ADE4 2C43428C */  lw         $v0, %lo(unk_ovlheader_8007432C)($v0)
/* 87A0318 8007ADE8 00000000 */  nop
/* 87A031C 8007ADEC 09F84000 */  jalr       $v0
/* 87A0320 8007ADF0 00000000 */   nop
/* 87A0324 8007ADF4 7C00628E */  lw         $v0, 0x7C($s3)
/* 87A0328 8007ADF8 0780033C */  lui        $v1, %hi(D_8006C648)
/* 87A032C 8007ADFC 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 87A0330 8007AE00 00000000 */  nop
/* 87A0334 8007AE04 21104300 */  addu       $v0, $v0, $v1
/* 87A0338 8007AE08 A3EB0108 */  j          .Llevel_43_8007AE8C
/* 87A033C 8007AE0C 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_43_8007AE10:
/* 87A0340 8007AE10 76006286 */  lh         $v0, 0x76($s3)
/* 87A0344 8007AE14 00000000 */  nop
/* 87A0348 8007AE18 1C004010 */  beqz       $v0, .Llevel_43_8007AE8C
/* 87A034C 8007AE1C 7C006426 */   addiu     $a0, $s3, 0x7C
/* 87A0350 8007AE20 69D6000C */  jal        func_800359A4
/* 87A0354 8007AE24 04000524 */   addiu     $a1, $zero, 0x4
/* 87A0358 8007AE28 18004010 */  beqz       $v0, .Llevel_43_8007AE8C
/* 87A035C 8007AE2C 79000224 */   addiu     $v0, $zero, 0x79
/* 87A0360 8007AE30 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 87A0364 8007AE34 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 87A0368 8007AE38 00000000 */  nop
/* 87A036C 8007AE3C 13006210 */  beq        $v1, $v0, .Llevel_43_8007AE8C
/* 87A0370 8007AE40 82000224 */   addiu     $v0, $zero, 0x82
/* 87A0374 8007AE44 11006210 */  beq        $v1, $v0, .Llevel_43_8007AE8C
/* 87A0378 8007AE48 80000224 */   addiu     $v0, $zero, 0x80
/* 87A037C 8007AE4C 0F006210 */  beq        $v1, $v0, .Llevel_43_8007AE8C
/* 87A0380 8007AE50 7C000224 */   addiu     $v0, $zero, 0x7C
/* 87A0384 8007AE54 0D006210 */  beq        $v1, $v0, .Llevel_43_8007AE8C
/* 87A0388 8007AE58 00000000 */   nop
/* 87A038C 8007AE5C 74006486 */  lh         $a0, 0x74($s3)
/* 87A0390 8007AE60 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87A0394 8007AE64 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87A0398 8007AE68 00000000 */  nop
/* 87A039C 8007AE6C 09F84000 */  jalr       $v0
/* 87A03A0 8007AE70 21284002 */   addu      $a1, $s2, $zero
/* 87A03A4 8007AE74 05004010 */  beqz       $v0, .Llevel_43_8007AE8C
/* 87A03A8 8007AE78 780062AE */   sw        $v0, 0x78($s3)
/* 87A03AC 8007AE7C 76006296 */  lhu        $v0, 0x76($s3)
/* 87A03B0 8007AE80 7C0060AE */  sw         $zero, 0x7C($s3)
/* 87A03B4 8007AE84 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 87A03B8 8007AE88 760062A6 */  sh         $v0, 0x76($s3)
.Llevel_43_8007AE8C:
/* 87A03BC 8007AE8C 4ED7000C */  jal        func_80035D38
/* 87A03C0 8007AE90 21204002 */   addu      $a0, $s2, $zero
/* 87A03C4 8007AE94 A758010C */  jal        func_8005629C
/* 87A03C8 8007AE98 21204002 */   addu      $a0, $s2, $zero
/* 87A03CC 8007AE9C 3800BF8F */  lw         $ra, 0x38($sp)
/* 87A03D0 8007AEA0 3400B38F */  lw         $s3, 0x34($sp)
/* 87A03D4 8007AEA4 3000B28F */  lw         $s2, 0x30($sp)
/* 87A03D8 8007AEA8 2C00B18F */  lw         $s1, 0x2C($sp)
/* 87A03DC 8007AEAC 2800B08F */  lw         $s0, 0x28($sp)
/* 87A03E0 8007AEB0 4000BD27 */  addiu      $sp, $sp, 0x40
/* 87A03E4 8007AEB4 0800E003 */  jr         $ra
/* 87A03E8 8007AEB8 00000000 */   nop
.size MobyUpdate_99_level_43, . - MobyUpdate_99_level_43
