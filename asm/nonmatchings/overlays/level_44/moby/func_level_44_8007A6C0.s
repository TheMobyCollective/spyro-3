.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_99_level_44
/* 8B4DBF0 8007A6C0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 8B4DBF4 8007A6C4 3000B2AF */  sw         $s2, 0x30($sp)
/* 8B4DBF8 8007A6C8 21908000 */  addu       $s2, $a0, $zero
/* 8B4DBFC 8007A6CC FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B4DC00 8007A6D0 3800BFAF */  sw         $ra, 0x38($sp)
/* 8B4DC04 8007A6D4 3400B3AF */  sw         $s3, 0x34($sp)
/* 8B4DC08 8007A6D8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8B4DC0C 8007A6DC 2800B0AF */  sw         $s0, 0x28($sp)
/* 8B4DC10 8007A6E0 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 8B4DC14 8007A6E4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8B4DC18 8007A6E8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8B4DC1C 8007A6EC 0000538E */  lw         $s3, 0x0($s2)
/* 8B4DC20 8007A6F0 12004018 */  blez       $v0, .Llevel_44_8007A73C
/* 8B4DC24 8007A6F4 00000000 */   nop
/* 8B4DC28 8007A6F8 8004628E */  lw         $v0, 0x480($s3)
/* 8B4DC2C 8007A6FC 00000000 */  nop
/* 8B4DC30 8007A700 0E004014 */  bnez       $v0, .Llevel_44_8007A73C
/* 8B4DC34 8007A704 00000000 */   nop
/* 8B4DC38 8007A708 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 8B4DC3C 8007A70C F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 8B4DC40 8007A710 0680023C */  lui        $v0, %hi(D_800652B0 + 0xB0)
/* 8B4DC44 8007A714 6053428C */  lw         $v0, %lo(D_800652B0 + 0xB0)($v0)
/* 8B4DC48 8007A718 0680063C */  lui        $a2, %hi(D_800652B6 + 0xB0)
/* 8B4DC4C 8007A71C 6653C694 */  lhu        $a2, %lo(D_800652B6 + 0xB0)($a2)
/* 8B4DC50 8007A720 0680053C */  lui        $a1, %hi(D_800652B4 + 0xB0)
/* 8B4DC54 8007A724 6453A594 */  lhu        $a1, %lo(D_800652B4 + 0xB0)($a1)
/* 8B4DC58 8007A728 21208200 */  addu       $a0, $a0, $v0
/* 8B4DC5C 8007A72C 613E010C */  jal        func_8004F984
/* 8B4DC60 8007A730 21288500 */   addu      $a1, $a0, $a1
/* 8B4DC64 8007A734 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4DC68 8007A738 800462AE */  sw         $v0, 0x480($s3)
.Llevel_44_8007A73C:
/* 8B4DC6C 8007A73C 48004392 */  lbu        $v1, 0x48($s2)
/* 8B4DC70 8007A740 01000424 */  addiu      $a0, $zero, 0x1
/* 8B4DC74 8007A744 75006410 */  beq        $v1, $a0, .Llevel_44_8007A91C
/* 8B4DC78 8007A748 02006228 */   slti      $v0, $v1, 0x2
/* 8B4DC7C 8007A74C 05004010 */  beqz       $v0, .Llevel_44_8007A764
/* 8B4DC80 8007A750 00000000 */   nop
/* 8B4DC84 8007A754 0A006010 */  beqz       $v1, .Llevel_44_8007A780
/* 8B4DC88 8007A758 0D000224 */   addiu     $v0, $zero, 0xD
/* 8B4DC8C 8007A75C A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4DC90 8007A760 00000000 */   nop
.Llevel_44_8007A764:
/* 8B4DC94 8007A764 03000224 */  addiu      $v0, $zero, 0x3
/* 8B4DC98 8007A768 97006210 */  beq        $v1, $v0, .Llevel_44_8007A9C8
/* 8B4DC9C 8007A76C 12000224 */   addiu     $v0, $zero, 0x12
/* 8B4DCA0 8007A770 57006210 */  beq        $v1, $v0, .Llevel_44_8007A8D0
/* 8B4DCA4 8007A774 00000000 */   nop
/* 8B4DCA8 8007A778 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4DCAC 8007A77C 00000000 */   nop
.Llevel_44_8007A780:
/* 8B4DCB0 8007A780 0780033C */  lui        $v1, %hi(D_8006E344)
/* 8B4DCB4 8007A784 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 8B4DCB8 8007A788 00000000 */  nop
/* 8B4DCBC 8007A78C 3F006214 */  bne        $v1, $v0, .Llevel_44_8007A88C
/* 8B4DCC0 8007A790 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4DCC4 8007A794 49004292 */  lbu        $v0, 0x49($s2)
/* 8B4DCC8 8007A798 00000000 */  nop
/* 8B4DCCC 8007A79C 3B004014 */  bnez       $v0, .Llevel_44_8007A88C
/* 8B4DCD0 8007A7A0 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4DCD4 8007A7A4 0780023C */  lui        $v0, %hi(D_8006C4F8)
/* 8B4DCD8 8007A7A8 F8C4428C */  lw         $v0, %lo(D_8006C4F8)($v0)
/* 8B4DCDC 8007A7AC 00000000 */  nop
/* 8B4DCE0 8007A7B0 0F004410 */  beq        $v0, $a0, .Llevel_44_8007A7F0
/* 8B4DCE4 8007A7B4 03000224 */   addiu     $v0, $zero, 0x3
/* 8B4DCE8 8007A7B8 480042A2 */  sb         $v0, 0x48($s2)
/* 8B4DCEC 8007A7BC 48005026 */  addiu      $s0, $s2, 0x48
/* 8B4DCF0 8007A7C0 21200002 */  addu       $a0, $s0, $zero
/* 8B4DCF4 8007A7C4 0780063C */  lui        $a2, %hi(D_8006D088)
/* 8B4DCF8 8007A7C8 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 8B4DCFC 8007A7CC EDED000C */  jal        func_8003B7B4
/* 8B4DD00 8007A7D0 01000524 */   addiu     $a1, $zero, 0x1
/* 8B4DD04 8007A7D4 21200002 */  addu       $a0, $s0, $zero
/* 8B4DD08 8007A7D8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8B4DD0C 8007A7DC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8B4DD10 8007A7E0 EDED000C */  jal        func_8003B7B4
/* 8B4DD14 8007A7E4 01000524 */   addiu     $a1, $zero, 0x1
/* 8B4DD18 8007A7E8 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4DD1C 8007A7EC 00000000 */   nop
.Llevel_44_8007A7F0:
/* 8B4DD20 8007A7F0 46004292 */  lbu        $v0, 0x46($s2)
/* 8B4DD24 8007A7F4 00000000 */  nop
/* 8B4DD28 8007A7F8 40100200 */  sll        $v0, $v0, 1
/* 8B4DD2C 8007A7FC 0680013C */  lui        $at, %hi(D_80065920)
/* 8B4DD30 8007A800 21082200 */  addu       $at, $at, $v0
/* 8B4DD34 8007A804 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8B4DD38 8007A808 0780043C */  lui        $a0, %hi(D_800719BC)
/* 8B4DD3C 8007A80C BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 8B4DD40 8007A810 40100300 */  sll        $v0, $v1, 1
/* 8B4DD44 8007A814 21104300 */  addu       $v0, $v0, $v1
/* 8B4DD48 8007A818 80100200 */  sll        $v0, $v0, 2
/* 8B4DD4C 8007A81C 21104300 */  addu       $v0, $v0, $v1
/* 8B4DD50 8007A820 43110200 */  sra        $v0, $v0, 5
/* 8B4DD54 8007A824 000082AC */  sw         $v0, 0x0($a0)
/* 8B4DD58 8007A828 46004292 */  lbu        $v0, 0x46($s2)
/* 8B4DD5C 8007A82C 21288000 */  addu       $a1, $a0, $zero
/* 8B4DD60 8007A830 40100200 */  sll        $v0, $v0, 1
/* 8B4DD64 8007A834 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B4DD68 8007A838 21082200 */  addu       $at, $at, $v0
/* 8B4DD6C 8007A83C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8B4DD70 8007A840 0780013C */  lui        $at, %hi(D_800719C4)
/* 8B4DD74 8007A844 C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 8B4DD78 8007A848 40100300 */  sll        $v0, $v1, 1
/* 8B4DD7C 8007A84C 21104300 */  addu       $v0, $v0, $v1
/* 8B4DD80 8007A850 80100200 */  sll        $v0, $v0, 2
/* 8B4DD84 8007A854 21104300 */  addu       $v0, $v0, $v1
/* 8B4DD88 8007A858 43110200 */  sra        $v0, $v0, 5
/* 8B4DD8C 8007A85C 0780013C */  lui        $at, %hi(D_800719C0)
/* 8B4DD90 8007A860 C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 8B4DD94 8007A864 653C010C */  jal        func_8004F194
/* 8B4DD98 8007A868 0C004626 */   addiu     $a2, $s2, 0xC
/* 8B4DD9C 8007A86C 46004292 */  lbu        $v0, 0x46($s2)
/* 8B4DDA0 8007A870 00000000 */  nop
/* 8B4DDA4 8007A874 80004224 */  addiu      $v0, $v0, 0x80
/* 8B4DDA8 8007A878 00110200 */  sll        $v0, $v0, 4
/* 8B4DDAC 8007A87C FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 8B4DDB0 8007A880 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 8B4DDB4 8007A884 E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 8B4DDB8 8007A888 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_44_8007A88C:
/* 8B4DDBC 8007A88C 380040A6 */  sh         $zero, 0x38($s2)
/* 8B4DDC0 8007A890 050062A2 */  sb         $v0, 0x5($s3)
/* 8B4DDC4 8007A894 0780023C */  lui        $v0, %hi(D_8006C598)
/* 8B4DDC8 8007A898 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 8B4DDCC 8007A89C 00000000 */  nop
/* 8B4DDD0 8007A8A0 7D014014 */  bnez       $v0, .Llevel_44_8007AE98
/* 8B4DDD4 8007A8A4 21204002 */   addu      $a0, $s2, $zero
/* 8B4DDD8 8007A8A8 EFDE000C */  jal        func_80037BBC
/* 8B4DDDC 8007A8AC 21280000 */   addu      $a1, $zero, $zero
/* 8B4DDE0 8007A8B0 79014010 */  beqz       $v0, .Llevel_44_8007AE98
/* 8B4DDE4 8007A8B4 21204002 */   addu      $a0, $s2, $zero
/* 8B4DDE8 8007A8B8 21280000 */  addu       $a1, $zero, $zero
/* 8B4DDEC 8007A8BC B944010C */  jal        func_800512E4
/* 8B4DDF0 8007A8C0 12000624 */   addiu     $a2, $zero, 0x12
/* 8B4DDF4 8007A8C4 12000224 */  addiu      $v0, $zero, 0x12
/* 8B4DDF8 8007A8C8 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4DDFC 8007A8CC 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007A8D0:
/* 8B4DE00 8007A8D0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 8B4DE04 8007A8D4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 8B4DE08 8007A8D8 00000000 */  nop
/* 8B4DE0C 8007A8DC 6E014410 */  beq        $v0, $a0, .Llevel_44_8007AE98
/* 8B4DE10 8007A8E0 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 8B4DE14 8007A8E4 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 8B4DE18 8007A8E8 21204002 */  addu       $a0, $s2, $zero
/* 8B4DE1C 8007A8EC 01000524 */  addiu      $a1, $zero, 0x1
/* 8B4DE20 8007A8F0 01000324 */  addiu      $v1, $zero, 0x1
/* 8B4DE24 8007A8F4 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 8B4DE28 8007A8F8 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 8B4DE2C 8007A8FC 3C000224 */  addiu      $v0, $zero, 0x3C
/* 8B4DE30 8007A900 0780013C */  lui        $at, %hi(D_80071591)
/* 8B4DE34 8007A904 911523A0 */  sb         $v1, %lo(D_80071591)($at)
/* 8B4DE38 8007A908 7C0062AE */  sw         $v0, 0x7C($s3)
/* 8B4DE3C 8007A90C D0D3000C */  jal        func_80034F40
/* 8B4DE40 8007A910 480043A2 */   sb        $v1, 0x48($s2)
/* 8B4DE44 8007A914 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4DE48 8007A918 00000000 */   nop
.Llevel_44_8007A91C:
/* 8B4DE4C 8007A91C 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 8B4DE50 8007A920 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 8B4DE54 8007A924 21204002 */  addu       $a0, $s2, $zero
/* 8B4DE58 8007A928 08000624 */  addiu      $a2, $zero, 0x8
/* 8B4DE5C 8007A92C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 8B4DE60 8007A930 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 8B4DE64 8007A934 3400658E */  lw         $a1, 0x34($s3)
/* 8B4DE68 8007A938 10000724 */  addiu      $a3, $zero, 0x10
/* 8B4DE6C 8007A93C 1000A3AF */  sw         $v1, 0x10($sp)
/* 8B4DE70 8007A940 1400A0AF */  sw         $zero, 0x14($sp)
/* 8B4DE74 8007A944 17D6000C */  jal        func_8003585C
/* 8B4DE78 8007A948 8000A524 */   addiu     $a1, $a1, 0x80
/* 8B4DE7C 8007A94C 06004010 */  beqz       $v0, .Llevel_44_8007A968
/* 8B4DE80 8007A950 21204002 */   addu      $a0, $s2, $zero
/* 8B4DE84 8007A954 1000A0AF */  sw         $zero, 0x10($sp)
/* 8B4DE88 8007A958 80000524 */  addiu      $a1, $zero, 0x80
/* 8B4DE8C 8007A95C 21300000 */  addu       $a2, $zero, $zero
/* 8B4DE90 8007A960 77D7000C */  jal        func_80035DDC
/* 8B4DE94 8007A964 21380000 */   addu      $a3, $zero, $zero
.Llevel_44_8007A968:
/* 8B4DE98 8007A968 7C006426 */  addiu      $a0, $s3, 0x7C
/* 8B4DE9C 8007A96C 69D6000C */  jal        func_800359A4
/* 8B4DEA0 8007A970 04000524 */   addiu     $a1, $zero, 0x4
/* 8B4DEA4 8007A974 02000324 */  addiu      $v1, $zero, 0x2
/* 8B4DEA8 8007A978 47014314 */  bne        $v0, $v1, .Llevel_44_8007AE98
/* 8B4DEAC 8007A97C 48005026 */   addiu     $s0, $s2, 0x48
/* 8B4DEB0 8007A980 21200002 */  addu       $a0, $s0, $zero
/* 8B4DEB4 8007A984 01000524 */  addiu      $a1, $zero, 0x1
/* 8B4DEB8 8007A988 0780113C */  lui        $s1, %hi(D_8006D088)
/* 8B4DEBC 8007A98C 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 8B4DEC0 8007A990 21302002 */  addu       $a2, $s1, $zero
/* 8B4DEC4 8007A994 03000224 */  addiu      $v0, $zero, 0x3
/* 8B4DEC8 8007A998 EDED000C */  jal        func_8003B7B4
/* 8B4DECC 8007A99C 480042A2 */   sb        $v0, 0x48($s2)
/* 8B4DED0 8007A9A0 21200002 */  addu       $a0, $s0, $zero
/* 8B4DED4 8007A9A4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8B4DED8 8007A9A8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8B4DEDC 8007A9AC EDED000C */  jal        func_8003B7B4
/* 8B4DEE0 8007A9B0 01000524 */   addiu     $a1, $zero, 0x1
/* 8B4DEE4 8007A9B4 D3ED000C */  jal        func_8003B74C
/* 8B4DEE8 8007A9B8 21202002 */   addu      $a0, $s1, $zero
/* 8B4DEEC 8007A9BC 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4DEF0 8007A9C0 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4DEF4 8007A9C4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_44_8007A9C8:
/* 8B4DEF8 8007A9C8 21204002 */  addu       $a0, $s2, $zero
/* 8B4DEFC 8007A9CC 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 8B4DF00 8007A9D0 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 8B4DF04 8007A9D4 00000000 */  nop
/* 8B4DF08 8007A9D8 09F84000 */  jalr       $v0
/* 8B4DF0C 8007A9DC 73000524 */   addiu     $a1, $zero, 0x73
/* 8B4DF10 8007A9E0 0780043C */  lui        $a0, %hi(D_800719A8)
/* 8B4DF14 8007A9E4 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 8B4DF18 8007A9E8 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 8B4DF1C 8007A9EC 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 8B4DF20 8007A9F0 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 8B4DF24 8007A9F4 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 8B4DF28 8007A9F8 694D000C */  jal        func_800135A4
/* 8B4DF2C 8007A9FC 21300000 */   addu      $a2, $zero, $zero
/* 8B4DF30 8007AA00 0780043C */  lui        $a0, %hi(D_800719F0)
/* 8B4DF34 8007AA04 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 8B4DF38 8007AA08 0780053C */  lui        $a1, %hi(D_80068F90)
/* 8B4DF3C 8007AA0C 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 8B4DF40 8007AA10 694D000C */  jal        func_800135A4
/* 8B4DF44 8007AA14 21300000 */   addu      $a2, $zero, $zero
/* 8B4DF48 8007AA18 0780033C */  lui        $v1, %hi(D_8006E044)
/* 8B4DF4C 8007AA1C 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 8B4DF50 8007AA20 1F000224 */  addiu      $v0, $zero, 0x1F
/* 8B4DF54 8007AA24 03006210 */  beq        $v1, $v0, .Llevel_44_8007AA34
/* 8B4DF58 8007AA28 28000224 */   addiu     $v0, $zero, 0x28
/* 8B4DF5C 8007AA2C 0D006214 */  bne        $v1, $v0, .Llevel_44_8007AA64
/* 8B4DF60 8007AA30 10000324 */   addiu     $v1, $zero, 0x10
.Llevel_44_8007AA34:
/* 8B4DF64 8007AA34 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 8B4DF68 8007AA38 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 8B4DF6C 8007AA3C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 8B4DF70 8007AA40 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 8B4DF74 8007AA44 00000000 */  nop
/* 8B4DF78 8007AA48 0D004010 */  beqz       $v0, .Llevel_44_8007AA80
/* 8B4DF7C 8007AA4C 00000000 */   nop
/* 8B4DF80 8007AA50 4C0040A0 */  sb         $zero, 0x4C($v0)
/* 8B4DF84 8007AA54 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 8B4DF88 8007AA58 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 8B4DF8C 8007AA5C A0EA0108 */  j          .Llevel_44_8007AA80
/* 8B4DF90 8007AA60 4D0040A0 */   sb        $zero, 0x4D($v0)
.Llevel_44_8007AA64:
/* 8B4DF94 8007AA64 4C0043A2 */  sb         $v1, 0x4C($s2)
/* 8B4DF98 8007AA68 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 8B4DF9C 8007AA6C 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 8B4DFA0 8007AA70 00000000 */  nop
/* 8B4DFA4 8007AA74 02004010 */  beqz       $v0, .Llevel_44_8007AA80
/* 8B4DFA8 8007AA78 00000000 */   nop
/* 8B4DFAC 8007AA7C 4C0043A0 */  sb         $v1, 0x4C($v0)
.Llevel_44_8007AA80:
/* 8B4DFB0 8007AA80 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 8B4DFB4 8007AA84 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 8B4DFB8 8007AA88 04000224 */  addiu      $v0, $zero, 0x4
/* 8B4DFBC 8007AA8C 31006214 */  bne        $v1, $v0, .Llevel_44_8007AB54
/* 8B4DFC0 8007AA90 00000000 */   nop
/* 8B4DFC4 8007AA94 0780043C */  lui        $a0, %hi(D_80070328 + 0x48)
/* 8B4DFC8 8007AA98 7003848C */  lw         $a0, %lo(D_80070328 + 0x48)($a0)
/* 8B4DFCC 8007AA9C 3D004392 */  lbu        $v1, 0x3D($s2)
/* 8B4DFD0 8007AAA0 8DFF8524 */  addiu      $a1, $a0, -0x73
/* 8B4DFD4 8007AAA4 2C00A310 */  beq        $a1, $v1, .Llevel_44_8007AB58
/* 8B4DFD8 8007AAA8 83000224 */   addiu     $v0, $zero, 0x83
/* 8B4DFDC 8007AAAC 13008214 */  bne        $a0, $v0, .Llevel_44_8007AAFC
/* 8B4DFE0 8007AAB0 84000224 */   addiu     $v0, $zero, 0x84
/* 8B4DFE4 8007AAB4 3C004492 */  lbu        $a0, 0x3C($s2)
/* 8B4DFE8 8007AAB8 11000224 */  addiu      $v0, $zero, 0x11
/* 8B4DFEC 8007AABC 03008210 */  beq        $a0, $v0, .Llevel_44_8007AACC
/* 8B4DFF0 8007AAC0 00000000 */   nop
/* 8B4DFF4 8007AAC4 04006214 */  bne        $v1, $v0, .Llevel_44_8007AAD8
/* 8B4DFF8 8007AAC8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_44_8007AACC:
/* 8B4DFFC 8007AACC 21204002 */  addu       $a0, $s2, $zero
/* 8B4E000 8007AAD0 D1EA0108 */  j          .Llevel_44_8007AB44
/* 8B4E004 8007AAD4 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_44_8007AAD8:
/* 8B4E008 8007AAD8 05006214 */  bne        $v1, $v0, .Llevel_44_8007AAF0
/* 8B4E00C 8007AADC 00000000 */   nop
/* 8B4E010 8007AAE0 1A008314 */  bne        $a0, $v1, .Llevel_44_8007AB4C
/* 8B4E014 8007AAE4 21204002 */   addu      $a0, $s2, $zero
/* 8B4E018 8007AAE8 D1EA0108 */  j          .Llevel_44_8007AB44
/* 8B4E01C 8007AAEC 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_44_8007AAF0:
/* 8B4E020 8007AAF0 21204002 */  addu       $a0, $s2, $zero
/* 8B4E024 8007AAF4 D1EA0108 */  j          .Llevel_44_8007AB44
/* 8B4E028 8007AAF8 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_44_8007AAFC:
/* 8B4E02C 8007AAFC 11008214 */  bne        $a0, $v0, .Llevel_44_8007AB44
/* 8B4E030 8007AB00 21204002 */   addu      $a0, $s2, $zero
/* 8B4E034 8007AB04 3C004492 */  lbu        $a0, 0x3C($s2)
/* 8B4E038 8007AB08 10000224 */  addiu      $v0, $zero, 0x10
/* 8B4E03C 8007AB0C 03008210 */  beq        $a0, $v0, .Llevel_44_8007AB1C
/* 8B4E040 8007AB10 00000000 */   nop
/* 8B4E044 8007AB14 04006214 */  bne        $v1, $v0, .Llevel_44_8007AB28
/* 8B4E048 8007AB18 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_44_8007AB1C:
/* 8B4E04C 8007AB1C 21204002 */  addu       $a0, $s2, $zero
/* 8B4E050 8007AB20 D1EA0108 */  j          .Llevel_44_8007AB44
/* 8B4E054 8007AB24 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_44_8007AB28:
/* 8B4E058 8007AB28 05006214 */  bne        $v1, $v0, .Llevel_44_8007AB40
/* 8B4E05C 8007AB2C 11000524 */   addiu     $a1, $zero, 0x11
/* 8B4E060 8007AB30 06008314 */  bne        $a0, $v1, .Llevel_44_8007AB4C
/* 8B4E064 8007AB34 21204002 */   addu      $a0, $s2, $zero
/* 8B4E068 8007AB38 D1EA0108 */  j          .Llevel_44_8007AB44
/* 8B4E06C 8007AB3C 00000000 */   nop
.Llevel_44_8007AB40:
/* 8B4E070 8007AB40 21204002 */  addu       $a0, $s2, $zero
.Llevel_44_8007AB44:
/* 8B4E074 8007AB44 D0D3000C */  jal        func_80034F40
/* 8B4E078 8007AB48 00000000 */   nop
.Llevel_44_8007AB4C:
/* 8B4E07C 8007AB4C EAEA0108 */  j          .Llevel_44_8007ABA8
/* 8B4E080 8007AB50 480060AE */   sw        $zero, 0x48($s3)
.Llevel_44_8007AB54:
/* 8B4E084 8007AB54 3D004392 */  lbu        $v1, 0x3D($s2)
.Llevel_44_8007AB58:
/* 8B4E088 8007AB58 01000224 */  addiu      $v0, $zero, 0x1
/* 8B4E08C 8007AB5C 12006214 */  bne        $v1, $v0, .Llevel_44_8007ABA8
/* 8B4E090 8007AB60 00000000 */   nop
/* 8B4E094 8007AB64 0780023C */  lui        $v0, %hi(D_80070328 + 0xB4)
/* 8B4E098 8007AB68 DC03428C */  lw         $v0, %lo(D_80070328 + 0xB4)($v0)
/* 8B4E09C 8007AB6C 00000000 */  nop
/* 8B4E0A0 8007AB70 06004010 */  beqz       $v0, .Llevel_44_8007AB8C
/* 8B4E0A4 8007AB74 00290200 */   sll       $a1, $v0, 4
/* 8B4E0A8 8007AB78 0200A104 */  bgez       $a1, .Llevel_44_8007AB84
/* 8B4E0AC 8007AB7C 00000000 */   nop
/* 8B4E0B0 8007AB80 FF07A524 */  addiu      $a1, $a1, 0x7FF
.Llevel_44_8007AB84:
/* 8B4E0B4 8007AB84 E4EA0108 */  j          .Llevel_44_8007AB90
/* 8B4E0B8 8007AB88 C32A0500 */   sra       $a1, $a1, 11
.Llevel_44_8007AB8C:
/* 8B4E0BC 8007AB8C 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_44_8007AB90:
/* 8B4E0C0 8007AB90 21204002 */  addu       $a0, $s2, $zero
/* 8B4E0C4 8007AB94 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 8B4E0C8 8007AB98 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 8B4E0CC 8007AB9C 00000000 */  nop
/* 8B4E0D0 8007ABA0 09F84000 */  jalr       $v0
/* 8B4E0D4 8007ABA4 48006626 */   addiu     $a2, $s3, 0x48
.Llevel_44_8007ABA8:
/* 8B4E0D8 8007ABA8 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8B4E0DC 8007ABAC 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8B4E0E0 8007ABB0 81000224 */  addiu      $v0, $zero, 0x81
/* 8B4E0E4 8007ABB4 19006214 */  bne        $v1, $v0, .Llevel_44_8007AC1C
/* 8B4E0E8 8007ABB8 00000000 */   nop
/* 8B4E0EC 8007ABBC 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 8B4E0F0 8007ABC0 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 8B4E0F4 8007ABC4 00000000 */  nop
/* 8B4E0F8 8007ABC8 03006010 */  beqz       $v1, .Llevel_44_8007ABD8
/* 8B4E0FC 8007ABCC FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 8B4E100 8007ABD0 02EB0108 */  j          .Llevel_44_8007AC08
/* 8B4E104 8007ABD4 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
.Llevel_44_8007ABD8:
/* 8B4E108 8007ABD8 1800A427 */  addiu      $a0, $sp, 0x18
/* 8B4E10C 8007ABDC 5E3C010C */  jal        func_8004F178
/* 8B4E110 8007ABE0 0C004526 */   addiu     $a1, $s2, 0xC
/* 8B4E114 8007ABE4 1800A427 */  addiu      $a0, $sp, 0x18
/* 8B4E118 8007ABE8 2000A28F */  lw         $v0, 0x20($sp)
/* 8B4E11C 8007ABEC 00080524 */  addiu      $a1, $zero, 0x800
/* 8B4E120 8007ABF0 00044224 */  addiu      $v0, $v0, 0x400
/* 8B4E124 8007ABF4 D668000C */  jal        func_8001A358
/* 8B4E128 8007ABF8 2000A2AF */   sw        $v0, 0x20($sp)
/* 8B4E12C 8007ABFC FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 8B4E130 8007AC00 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 8B4E134 8007AC04 2000A2AF */  sw         $v0, 0x20($sp)
.Llevel_44_8007AC08:
/* 8B4E138 8007AC08 24104300 */  and        $v0, $v0, $v1
/* 8B4E13C 8007AC0C 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 8B4E140 8007AC10 25104300 */  or         $v0, $v0, $v1
/* 8B4E144 8007AC14 08EB0108 */  j          .Llevel_44_8007AC20
/* 8B4E148 8007AC18 540042AE */   sw        $v0, 0x54($s2)
.Llevel_44_8007AC1C:
/* 8B4E14C 8007AC1C 540040AE */  sw         $zero, 0x54($s2)
.Llevel_44_8007AC20:
/* 8B4E150 8007AC20 4C006426 */  addiu      $a0, $s3, 0x4C
/* 8B4E154 8007AC24 69D6000C */  jal        func_800359A4
/* 8B4E158 8007AC28 04000524 */   addiu     $a1, $zero, 0x4
/* 8B4E15C 8007AC2C 28004010 */  beqz       $v0, .Llevel_44_8007ACD0
/* 8B4E160 8007AC30 00000000 */   nop
/* 8B4E164 8007AC34 0780023C */  lui        $v0, %hi(D_8006E538)
/* 8B4E168 8007AC38 38E5428C */  lw         $v0, %lo(D_8006E538)($v0)
/* 8B4E16C 8007AC3C 00000000 */  nop
/* 8B4E170 8007AC40 20004230 */  andi       $v0, $v0, 0x20
/* 8B4E174 8007AC44 22004010 */  beqz       $v0, .Llevel_44_8007ACD0
/* 8B4E178 8007AC48 1F000224 */   addiu     $v0, $zero, 0x1F
/* 8B4E17C 8007AC4C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 8B4E180 8007AC50 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 8B4E184 8007AC54 00000000 */  nop
/* 8B4E188 8007AC58 14006210 */  beq        $v1, $v0, .Llevel_44_8007ACAC
/* 8B4E18C 8007AC5C 7E000224 */   addiu     $v0, $zero, 0x7E
/* 8B4E190 8007AC60 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8B4E194 8007AC64 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8B4E198 8007AC68 00000000 */  nop
/* 8B4E19C 8007AC6C 18006210 */  beq        $v1, $v0, .Llevel_44_8007ACD0
/* 8B4E1A0 8007AC70 79000224 */   addiu     $v0, $zero, 0x79
/* 8B4E1A4 8007AC74 16006210 */  beq        $v1, $v0, .Llevel_44_8007ACD0
/* 8B4E1A8 8007AC78 80000224 */   addiu     $v0, $zero, 0x80
/* 8B4E1AC 8007AC7C 14006210 */  beq        $v1, $v0, .Llevel_44_8007ACD0
/* 8B4E1B0 8007AC80 86FF6224 */   addiu     $v0, $v1, -0x7A
/* 8B4E1B4 8007AC84 0200422C */  sltiu      $v0, $v0, 0x2
/* 8B4E1B8 8007AC88 11004014 */  bnez       $v0, .Llevel_44_8007ACD0
/* 8B4E1BC 8007AC8C 7C000224 */   addiu     $v0, $zero, 0x7C
/* 8B4E1C0 8007AC90 0F006210 */  beq        $v1, $v0, .Llevel_44_8007ACD0
/* 8B4E1C4 8007AC94 00000000 */   nop
/* 8B4E1C8 8007AC98 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 8B4E1CC 8007AC9C 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 8B4E1D0 8007ACA0 00000000 */  nop
/* 8B4E1D4 8007ACA4 0A004014 */  bnez       $v0, .Llevel_44_8007ACD0
/* 8B4E1D8 8007ACA8 00000000 */   nop
.Llevel_44_8007ACAC:
/* 8B4E1DC 8007ACAC C5000424 */  addiu      $a0, $zero, 0xC5
/* 8B4E1E0 8007ACB0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4E1E4 8007ACB4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4E1E8 8007ACB8 00000000 */  nop
/* 8B4E1EC 8007ACBC 09F84000 */  jalr       $v0
/* 8B4E1F0 8007ACC0 21284002 */   addu      $a1, $s2, $zero
/* 8B4E1F4 8007ACC4 02004010 */  beqz       $v0, .Llevel_44_8007ACD0
/* 8B4E1F8 8007ACC8 19000224 */   addiu     $v0, $zero, 0x19
/* 8B4E1FC 8007ACCC 4C0062AE */  sw         $v0, 0x4C($s3)
.Llevel_44_8007ACD0:
/* 8B4E200 8007ACD0 7800628E */  lw         $v0, 0x78($s3)
/* 8B4E204 8007ACD4 00000000 */  nop
/* 8B4E208 8007ACD8 50004010 */  beqz       $v0, .Llevel_44_8007AE1C
/* 8B4E20C 8007ACDC 00000000 */   nop
/* 8B4E210 8007ACE0 48004290 */  lbu        $v0, 0x48($v0)
/* 8B4E214 8007ACE4 00000000 */  nop
/* 8B4E218 8007ACE8 04004010 */  beqz       $v0, .Llevel_44_8007ACFC
/* 8B4E21C 8007ACEC 3C000224 */   addiu     $v0, $zero, 0x3C
/* 8B4E220 8007ACF0 780060AE */  sw         $zero, 0x78($s3)
/* 8B4E224 8007ACF4 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4E228 8007ACF8 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_44_8007ACFC:
/* 8B4E22C 8007ACFC 7C00648E */  lw         $a0, 0x7C($s3)
/* 8B4E230 8007AD00 00000000 */  nop
/* 8B4E234 8007AD04 1C008010 */  beqz       $a0, .Llevel_44_8007AD78
/* 8B4E238 8007AD08 82000224 */   addiu     $v0, $zero, 0x82
/* 8B4E23C 8007AD0C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8B4E240 8007AD10 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8B4E244 8007AD14 00000000 */  nop
/* 8B4E248 8007AD18 11006214 */  bne        $v1, $v0, .Llevel_44_8007AD60
/* 8B4E24C 8007AD1C 00000000 */   nop
/* 8B4E250 8007AD20 A157010C */  jal        func_80055E84
/* 8B4E254 8007AD24 21204002 */   addu      $a0, $s2, $zero
/* 8B4E258 8007AD28 07004228 */  slti       $v0, $v0, 0x7
/* 8B4E25C 8007AD2C 5A004014 */  bnez       $v0, .Llevel_44_8007AE98
/* 8B4E260 8007AD30 2A020224 */   addiu     $v0, $zero, 0x22A
/* 8B4E264 8007AD34 74006386 */  lh         $v1, 0x74($s3)
/* 8B4E268 8007AD38 00000000 */  nop
/* 8B4E26C 8007AD3C 05006214 */  bne        $v1, $v0, .Llevel_44_8007AD54
/* 8B4E270 8007AD40 01000224 */   addiu     $v0, $zero, 0x1
/* 8B4E274 8007AD44 7800638E */  lw         $v1, 0x78($s3)
/* 8B4E278 8007AD48 50000224 */  addiu      $v0, $zero, 0x50
/* 8B4E27C 8007AD4C A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4E280 8007AD50 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_44_8007AD54:
/* 8B4E284 8007AD54 7800638E */  lw         $v1, 0x78($s3)
/* 8B4E288 8007AD58 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4E28C 8007AD5C 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_44_8007AD60:
/* 8B4E290 8007AD60 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8B4E294 8007AD64 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8B4E298 8007AD68 00000000 */  nop
/* 8B4E29C 8007AD6C 21108200 */  addu       $v0, $a0, $v0
/* 8B4E2A0 8007AD70 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4E2A4 8007AD74 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_44_8007AD78:
/* 8B4E2A8 8007AD78 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 8B4E2AC 8007AD7C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 8B4E2B0 8007AD80 00000000 */  nop
/* 8B4E2B4 8007AD84 80004230 */  andi       $v0, $v0, 0x80
/* 8B4E2B8 8007AD88 43004010 */  beqz       $v0, .Llevel_44_8007AE98
/* 8B4E2BC 8007AD8C 00000000 */   nop
/* 8B4E2C0 8007AD90 0780023C */  lui        $v0, %hi(D_8006E344)
/* 8B4E2C4 8007AD94 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 8B4E2C8 8007AD98 00000000 */  nop
/* 8B4E2CC 8007AD9C 3E004014 */  bnez       $v0, .Llevel_44_8007AE98
/* 8B4E2D0 8007ADA0 64007026 */   addiu     $s0, $s3, 0x64
/* 8B4E2D4 8007ADA4 0780113C */  lui        $s1, %hi(D_80070328 + 0x30)
/* 8B4E2D8 8007ADA8 58033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x30)
/* 8B4E2DC 8007ADAC 21202002 */  addu       $a0, $s1, $zero
/* 8B4E2E0 8007ADB0 21280002 */  addu       $a1, $s0, $zero
/* 8B4E2E4 8007ADB4 21300002 */  addu       $a2, $s0, $zero
/* 8B4E2E8 8007ADB8 80010224 */  addiu      $v0, $zero, 0x180
/* 8B4E2EC 8007ADBC 5C0062AE */  sw         $v0, 0x5C($s3)
/* 8B4E2F0 8007ADC0 00180224 */  addiu      $v0, $zero, 0x1800
/* 8B4E2F4 8007ADC4 640062AE */  sw         $v0, 0x64($s3)
/* 8B4E2F8 8007ADC8 680060AE */  sw         $zero, 0x68($s3)
/* 8B4E2FC 8007ADCC 5B3B010C */  jal        func_8004ED6C
/* 8B4E300 8007ADD0 6C0060AE */   sw        $zero, 0x6C($s3)
/* 8B4E304 8007ADD4 21200002 */  addu       $a0, $s0, $zero
/* 8B4E308 8007ADD8 21288000 */  addu       $a1, $a0, $zero
/* 8B4E30C 8007ADDC 653C010C */  jal        func_8004F194
/* 8B4E310 8007ADE0 D0FF2626 */   addiu     $a2, $s1, -0x30
/* 8B4E314 8007ADE4 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 8B4E318 8007ADE8 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 8B4E31C 8007ADEC 0780023C */  lui        $v0, %hi(unk_ovlheader_8007432C)
/* 8B4E320 8007ADF0 2C43428C */  lw         $v0, %lo(unk_ovlheader_8007432C)($v0)
/* 8B4E324 8007ADF4 00000000 */  nop
/* 8B4E328 8007ADF8 09F84000 */  jalr       $v0
/* 8B4E32C 8007ADFC 00000000 */   nop
/* 8B4E330 8007AE00 7C00628E */  lw         $v0, 0x7C($s3)
/* 8B4E334 8007AE04 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8B4E338 8007AE08 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8B4E33C 8007AE0C 00000000 */  nop
/* 8B4E340 8007AE10 21104300 */  addu       $v0, $v0, $v1
/* 8B4E344 8007AE14 A6EB0108 */  j          .Llevel_44_8007AE98
/* 8B4E348 8007AE18 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_44_8007AE1C:
/* 8B4E34C 8007AE1C 76006286 */  lh         $v0, 0x76($s3)
/* 8B4E350 8007AE20 00000000 */  nop
/* 8B4E354 8007AE24 1C004010 */  beqz       $v0, .Llevel_44_8007AE98
/* 8B4E358 8007AE28 7C006426 */   addiu     $a0, $s3, 0x7C
/* 8B4E35C 8007AE2C 69D6000C */  jal        func_800359A4
/* 8B4E360 8007AE30 04000524 */   addiu     $a1, $zero, 0x4
/* 8B4E364 8007AE34 18004010 */  beqz       $v0, .Llevel_44_8007AE98
/* 8B4E368 8007AE38 79000224 */   addiu     $v0, $zero, 0x79
/* 8B4E36C 8007AE3C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8B4E370 8007AE40 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8B4E374 8007AE44 00000000 */  nop
/* 8B4E378 8007AE48 13006210 */  beq        $v1, $v0, .Llevel_44_8007AE98
/* 8B4E37C 8007AE4C 82000224 */   addiu     $v0, $zero, 0x82
/* 8B4E380 8007AE50 11006210 */  beq        $v1, $v0, .Llevel_44_8007AE98
/* 8B4E384 8007AE54 80000224 */   addiu     $v0, $zero, 0x80
/* 8B4E388 8007AE58 0F006210 */  beq        $v1, $v0, .Llevel_44_8007AE98
/* 8B4E38C 8007AE5C 7C000224 */   addiu     $v0, $zero, 0x7C
/* 8B4E390 8007AE60 0D006210 */  beq        $v1, $v0, .Llevel_44_8007AE98
/* 8B4E394 8007AE64 00000000 */   nop
/* 8B4E398 8007AE68 74006486 */  lh         $a0, 0x74($s3)
/* 8B4E39C 8007AE6C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8B4E3A0 8007AE70 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8B4E3A4 8007AE74 00000000 */  nop
/* 8B4E3A8 8007AE78 09F84000 */  jalr       $v0
/* 8B4E3AC 8007AE7C 21284002 */   addu      $a1, $s2, $zero
/* 8B4E3B0 8007AE80 05004010 */  beqz       $v0, .Llevel_44_8007AE98
/* 8B4E3B4 8007AE84 780062AE */   sw        $v0, 0x78($s3)
/* 8B4E3B8 8007AE88 76006296 */  lhu        $v0, 0x76($s3)
/* 8B4E3BC 8007AE8C 7C0060AE */  sw         $zero, 0x7C($s3)
/* 8B4E3C0 8007AE90 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8B4E3C4 8007AE94 760062A6 */  sh         $v0, 0x76($s3)
.Llevel_44_8007AE98:
/* 8B4E3C8 8007AE98 4ED7000C */  jal        func_80035D38
/* 8B4E3CC 8007AE9C 21204002 */   addu      $a0, $s2, $zero
/* 8B4E3D0 8007AEA0 A758010C */  jal        func_8005629C
/* 8B4E3D4 8007AEA4 21204002 */   addu      $a0, $s2, $zero
/* 8B4E3D8 8007AEA8 3800BF8F */  lw         $ra, 0x38($sp)
/* 8B4E3DC 8007AEAC 3400B38F */  lw         $s3, 0x34($sp)
/* 8B4E3E0 8007AEB0 3000B28F */  lw         $s2, 0x30($sp)
/* 8B4E3E4 8007AEB4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8B4E3E8 8007AEB8 2800B08F */  lw         $s0, 0x28($sp)
/* 8B4E3EC 8007AEBC 4000BD27 */  addiu      $sp, $sp, 0x40
/* 8B4E3F0 8007AEC0 0800E003 */  jr         $ra
/* 8B4E3F4 8007AEC4 00000000 */   nop
.size MobyUpdate_99_level_44, . - MobyUpdate_99_level_44
