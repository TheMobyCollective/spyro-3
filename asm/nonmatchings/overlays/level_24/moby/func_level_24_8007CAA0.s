.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_15_level_24
/* 5DF77D0 8007CAA0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 5DF77D4 8007CAA4 2000B2AF */  sw         $s2, 0x20($sp)
/* 5DF77D8 8007CAA8 21908000 */  addu       $s2, $a0, $zero
/* 5DF77DC 8007CAAC FF000224 */  addiu      $v0, $zero, 0xFF
/* 5DF77E0 8007CAB0 2400BFAF */  sw         $ra, 0x24($sp)
/* 5DF77E4 8007CAB4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 5DF77E8 8007CAB8 1800B0AF */  sw         $s0, 0x18($sp)
/* 5DF77EC 8007CABC 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 5DF77F0 8007CAC0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 5DF77F4 8007CAC4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 5DF77F8 8007CAC8 0000508E */  lw         $s0, 0x0($s2)
/* 5DF77FC 8007CACC 12004018 */  blez       $v0, .Llevel_24_8007CB18
/* 5DF7800 8007CAD0 00000000 */   nop
/* 5DF7804 8007CAD4 6000028E */  lw         $v0, 0x60($s0)
/* 5DF7808 8007CAD8 00000000 */  nop
/* 5DF780C 8007CADC 0E004014 */  bnez       $v0, .Llevel_24_8007CB18
/* 5DF7810 8007CAE0 00000000 */   nop
/* 5DF7814 8007CAE4 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 5DF7818 8007CAE8 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 5DF781C 8007CAEC 0680023C */  lui        $v0, %hi(D_800652B0 + 0xE0)
/* 5DF7820 8007CAF0 9053428C */  lw         $v0, %lo(D_800652B0 + 0xE0)($v0)
/* 5DF7824 8007CAF4 0680063C */  lui        $a2, %hi(D_800652B6 + 0xE0)
/* 5DF7828 8007CAF8 9653C694 */  lhu        $a2, %lo(D_800652B6 + 0xE0)($a2)
/* 5DF782C 8007CAFC 0680053C */  lui        $a1, %hi(D_800652B4 + 0xE0)
/* 5DF7830 8007CB00 9453A594 */  lhu        $a1, %lo(D_800652B4 + 0xE0)($a1)
/* 5DF7834 8007CB04 21208200 */  addu       $a0, $a0, $v0
/* 5DF7838 8007CB08 613E010C */  jal        func_8004F984
/* 5DF783C 8007CB0C 21288500 */   addu      $a1, $a0, $a1
/* 5DF7840 8007CB10 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF7844 8007CB14 600002AE */  sw         $v0, 0x60($s0)
.Llevel_24_8007CB18:
/* 5DF7848 8007CB18 48004392 */  lbu        $v1, 0x48($s2)
/* 5DF784C 8007CB1C 01000424 */  addiu      $a0, $zero, 0x1
/* 5DF7850 8007CB20 75006410 */  beq        $v1, $a0, .Llevel_24_8007CCF8
/* 5DF7854 8007CB24 02006228 */   slti      $v0, $v1, 0x2
/* 5DF7858 8007CB28 05004010 */  beqz       $v0, .Llevel_24_8007CB40
/* 5DF785C 8007CB2C 00000000 */   nop
/* 5DF7860 8007CB30 0A006010 */  beqz       $v1, .Llevel_24_8007CB5C
/* 5DF7864 8007CB34 0D000224 */   addiu     $v0, $zero, 0xD
/* 5DF7868 8007CB38 D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF786C 8007CB3C 00000000 */   nop
.Llevel_24_8007CB40:
/* 5DF7870 8007CB40 03000224 */  addiu      $v0, $zero, 0x3
/* 5DF7874 8007CB44 97006210 */  beq        $v1, $v0, .Llevel_24_8007CDA4
/* 5DF7878 8007CB48 0D000224 */   addiu     $v0, $zero, 0xD
/* 5DF787C 8007CB4C 57006210 */  beq        $v1, $v0, .Llevel_24_8007CCAC
/* 5DF7880 8007CB50 00000000 */   nop
/* 5DF7884 8007CB54 D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF7888 8007CB58 00000000 */   nop
.Llevel_24_8007CB5C:
/* 5DF788C 8007CB5C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5DF7890 8007CB60 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5DF7894 8007CB64 00000000 */  nop
/* 5DF7898 8007CB68 3F006214 */  bne        $v1, $v0, .Llevel_24_8007CC68
/* 5DF789C 8007CB6C 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF78A0 8007CB70 49004292 */  lbu        $v0, 0x49($s2)
/* 5DF78A4 8007CB74 00000000 */  nop
/* 5DF78A8 8007CB78 3B004014 */  bnez       $v0, .Llevel_24_8007CC68
/* 5DF78AC 8007CB7C 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF78B0 8007CB80 0780023C */  lui        $v0, %hi(D_8006C4F8)
/* 5DF78B4 8007CB84 F8C4428C */  lw         $v0, %lo(D_8006C4F8)($v0)
/* 5DF78B8 8007CB88 00000000 */  nop
/* 5DF78BC 8007CB8C 0F004410 */  beq        $v0, $a0, .Llevel_24_8007CBCC
/* 5DF78C0 8007CB90 03000224 */   addiu     $v0, $zero, 0x3
/* 5DF78C4 8007CB94 480042A2 */  sb         $v0, 0x48($s2)
/* 5DF78C8 8007CB98 48005026 */  addiu      $s0, $s2, 0x48
/* 5DF78CC 8007CB9C 21200002 */  addu       $a0, $s0, $zero
/* 5DF78D0 8007CBA0 0780063C */  lui        $a2, %hi(D_8006D088)
/* 5DF78D4 8007CBA4 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 5DF78D8 8007CBA8 EDED000C */  jal        func_8003B7B4
/* 5DF78DC 8007CBAC 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF78E0 8007CBB0 21200002 */  addu       $a0, $s0, $zero
/* 5DF78E4 8007CBB4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 5DF78E8 8007CBB8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 5DF78EC 8007CBBC EDED000C */  jal        func_8003B7B4
/* 5DF78F0 8007CBC0 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF78F4 8007CBC4 D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF78F8 8007CBC8 00000000 */   nop
.Llevel_24_8007CBCC:
/* 5DF78FC 8007CBCC 46004292 */  lbu        $v0, 0x46($s2)
/* 5DF7900 8007CBD0 00000000 */  nop
/* 5DF7904 8007CBD4 40100200 */  sll        $v0, $v0, 1
/* 5DF7908 8007CBD8 0680013C */  lui        $at, %hi(D_80065920)
/* 5DF790C 8007CBDC 21082200 */  addu       $at, $at, $v0
/* 5DF7910 8007CBE0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5DF7914 8007CBE4 0780043C */  lui        $a0, %hi(D_800719BC)
/* 5DF7918 8007CBE8 BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 5DF791C 8007CBEC 40100300 */  sll        $v0, $v1, 1
/* 5DF7920 8007CBF0 21104300 */  addu       $v0, $v0, $v1
/* 5DF7924 8007CBF4 80100200 */  sll        $v0, $v0, 2
/* 5DF7928 8007CBF8 21104300 */  addu       $v0, $v0, $v1
/* 5DF792C 8007CBFC 43110200 */  sra        $v0, $v0, 5
/* 5DF7930 8007CC00 000082AC */  sw         $v0, 0x0($a0)
/* 5DF7934 8007CC04 46004292 */  lbu        $v0, 0x46($s2)
/* 5DF7938 8007CC08 21288000 */  addu       $a1, $a0, $zero
/* 5DF793C 8007CC0C 40100200 */  sll        $v0, $v0, 1
/* 5DF7940 8007CC10 0680013C */  lui        $at, %hi(D_800658A0)
/* 5DF7944 8007CC14 21082200 */  addu       $at, $at, $v0
/* 5DF7948 8007CC18 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 5DF794C 8007CC1C 0780013C */  lui        $at, %hi(D_800719C4)
/* 5DF7950 8007CC20 C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 5DF7954 8007CC24 40100300 */  sll        $v0, $v1, 1
/* 5DF7958 8007CC28 21104300 */  addu       $v0, $v0, $v1
/* 5DF795C 8007CC2C 80100200 */  sll        $v0, $v0, 2
/* 5DF7960 8007CC30 21104300 */  addu       $v0, $v0, $v1
/* 5DF7964 8007CC34 43110200 */  sra        $v0, $v0, 5
/* 5DF7968 8007CC38 0780013C */  lui        $at, %hi(D_800719C0)
/* 5DF796C 8007CC3C C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 5DF7970 8007CC40 653C010C */  jal        func_8004F194
/* 5DF7974 8007CC44 0C004626 */   addiu     $a2, $s2, 0xC
/* 5DF7978 8007CC48 46004292 */  lbu        $v0, 0x46($s2)
/* 5DF797C 8007CC4C 00000000 */  nop
/* 5DF7980 8007CC50 80004224 */  addiu      $v0, $v0, 0x80
/* 5DF7984 8007CC54 00110200 */  sll        $v0, $v0, 4
/* 5DF7988 8007CC58 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 5DF798C 8007CC5C 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 5DF7990 8007CC60 E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 5DF7994 8007CC64 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_24_8007CC68:
/* 5DF7998 8007CC68 380040A6 */  sh         $zero, 0x38($s2)
/* 5DF799C 8007CC6C 050002A2 */  sb         $v0, 0x5($s0)
/* 5DF79A0 8007CC70 0780023C */  lui        $v0, %hi(D_8006C598)
/* 5DF79A4 8007CC74 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 5DF79A8 8007CC78 00000000 */  nop
/* 5DF79AC 8007CC7C B0004014 */  bnez       $v0, .Llevel_24_8007CF40
/* 5DF79B0 8007CC80 21204002 */   addu      $a0, $s2, $zero
/* 5DF79B4 8007CC84 EFDE000C */  jal        func_80037BBC
/* 5DF79B8 8007CC88 21280000 */   addu      $a1, $zero, $zero
/* 5DF79BC 8007CC8C AC004010 */  beqz       $v0, .Llevel_24_8007CF40
/* 5DF79C0 8007CC90 21204002 */   addu      $a0, $s2, $zero
/* 5DF79C4 8007CC94 21280000 */  addu       $a1, $zero, $zero
/* 5DF79C8 8007CC98 B944010C */  jal        func_800512E4
/* 5DF79CC 8007CC9C 0D000624 */   addiu     $a2, $zero, 0xD
/* 5DF79D0 8007CCA0 0D000224 */  addiu      $v0, $zero, 0xD
/* 5DF79D4 8007CCA4 D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF79D8 8007CCA8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007CCAC:
/* 5DF79DC 8007CCAC 0780023C */  lui        $v0, %hi(D_8006E344)
/* 5DF79E0 8007CCB0 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 5DF79E4 8007CCB4 00000000 */  nop
/* 5DF79E8 8007CCB8 A1004410 */  beq        $v0, $a0, .Llevel_24_8007CF40
/* 5DF79EC 8007CCBC 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 5DF79F0 8007CCC0 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 5DF79F4 8007CCC4 21204002 */  addu       $a0, $s2, $zero
/* 5DF79F8 8007CCC8 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF79FC 8007CCCC 01000324 */  addiu      $v1, $zero, 0x1
/* 5DF7A00 8007CCD0 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5DF7A04 8007CCD4 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5DF7A08 8007CCD8 3C000224 */  addiu      $v0, $zero, 0x3C
/* 5DF7A0C 8007CCDC 0780013C */  lui        $at, %hi(D_80071577)
/* 5DF7A10 8007CCE0 771523A0 */  sb         $v1, %lo(D_80071577)($at)
/* 5DF7A14 8007CCE4 580002AE */  sw         $v0, 0x58($s0)
/* 5DF7A18 8007CCE8 D0D3000C */  jal        func_80034F40
/* 5DF7A1C 8007CCEC 480043A2 */   sb        $v1, 0x48($s2)
/* 5DF7A20 8007CCF0 D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF7A24 8007CCF4 00000000 */   nop
.Llevel_24_8007CCF8:
/* 5DF7A28 8007CCF8 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 5DF7A2C 8007CCFC 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 5DF7A30 8007CD00 21204002 */  addu       $a0, $s2, $zero
/* 5DF7A34 8007CD04 08000624 */  addiu      $a2, $zero, 0x8
/* 5DF7A38 8007CD08 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 5DF7A3C 8007CD0C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 5DF7A40 8007CD10 3400058E */  lw         $a1, 0x34($s0)
/* 5DF7A44 8007CD14 10000724 */  addiu      $a3, $zero, 0x10
/* 5DF7A48 8007CD18 1000A3AF */  sw         $v1, 0x10($sp)
/* 5DF7A4C 8007CD1C 1400A0AF */  sw         $zero, 0x14($sp)
/* 5DF7A50 8007CD20 17D6000C */  jal        func_8003585C
/* 5DF7A54 8007CD24 8000A524 */   addiu     $a1, $a1, 0x80
/* 5DF7A58 8007CD28 06004010 */  beqz       $v0, .Llevel_24_8007CD44
/* 5DF7A5C 8007CD2C 21204002 */   addu      $a0, $s2, $zero
/* 5DF7A60 8007CD30 1000A0AF */  sw         $zero, 0x10($sp)
/* 5DF7A64 8007CD34 80000524 */  addiu      $a1, $zero, 0x80
/* 5DF7A68 8007CD38 21300000 */  addu       $a2, $zero, $zero
/* 5DF7A6C 8007CD3C 77D7000C */  jal        func_80035DDC
/* 5DF7A70 8007CD40 21380000 */   addu      $a3, $zero, $zero
.Llevel_24_8007CD44:
/* 5DF7A74 8007CD44 58000426 */  addiu      $a0, $s0, 0x58
/* 5DF7A78 8007CD48 69D6000C */  jal        func_800359A4
/* 5DF7A7C 8007CD4C 04000524 */   addiu     $a1, $zero, 0x4
/* 5DF7A80 8007CD50 02000324 */  addiu      $v1, $zero, 0x2
/* 5DF7A84 8007CD54 7A004314 */  bne        $v0, $v1, .Llevel_24_8007CF40
/* 5DF7A88 8007CD58 48005026 */   addiu     $s0, $s2, 0x48
/* 5DF7A8C 8007CD5C 21200002 */  addu       $a0, $s0, $zero
/* 5DF7A90 8007CD60 01000524 */  addiu      $a1, $zero, 0x1
/* 5DF7A94 8007CD64 0780113C */  lui        $s1, %hi(D_8006D088)
/* 5DF7A98 8007CD68 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 5DF7A9C 8007CD6C 21302002 */  addu       $a2, $s1, $zero
/* 5DF7AA0 8007CD70 03000224 */  addiu      $v0, $zero, 0x3
/* 5DF7AA4 8007CD74 EDED000C */  jal        func_8003B7B4
/* 5DF7AA8 8007CD78 480042A2 */   sb        $v0, 0x48($s2)
/* 5DF7AAC 8007CD7C 21200002 */  addu       $a0, $s0, $zero
/* 5DF7AB0 8007CD80 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 5DF7AB4 8007CD84 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 5DF7AB8 8007CD88 EDED000C */  jal        func_8003B7B4
/* 5DF7ABC 8007CD8C 01000524 */   addiu     $a1, $zero, 0x1
/* 5DF7AC0 8007CD90 D3ED000C */  jal        func_8003B74C
/* 5DF7AC4 8007CD94 21202002 */   addu      $a0, $s1, $zero
/* 5DF7AC8 8007CD98 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF7ACC 8007CD9C D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF7AD0 8007CDA0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_24_8007CDA4:
/* 5DF7AD4 8007CDA4 21204002 */  addu       $a0, $s2, $zero
/* 5DF7AD8 8007CDA8 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 5DF7ADC 8007CDAC 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 5DF7AE0 8007CDB0 00000000 */  nop
/* 5DF7AE4 8007CDB4 09F84000 */  jalr       $v0
/* 5DF7AE8 8007CDB8 55000524 */   addiu     $a1, $zero, 0x55
/* 5DF7AEC 8007CDBC 0780043C */  lui        $a0, %hi(D_800719A8)
/* 5DF7AF0 8007CDC0 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 5DF7AF4 8007CDC4 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 5DF7AF8 8007CDC8 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 5DF7AFC 8007CDCC 00010224 */  addiu      $v0, $zero, 0x100
/* 5DF7B00 8007CDD0 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 5DF7B04 8007CDD4 D0C622AC */  sw         $v0, %lo(D_8006C6D0)($at)
/* 5DF7B08 8007CDD8 694D000C */  jal        func_800135A4
/* 5DF7B0C 8007CDDC 21300000 */   addu      $a2, $zero, $zero
/* 5DF7B10 8007CDE0 0780043C */  lui        $a0, %hi(D_800719F0)
/* 5DF7B14 8007CDE4 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 5DF7B18 8007CDE8 0780053C */  lui        $a1, %hi(D_80068F90)
/* 5DF7B1C 8007CDEC 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 5DF7B20 8007CDF0 694D000C */  jal        func_800135A4
/* 5DF7B24 8007CDF4 21300000 */   addu      $a2, $zero, $zero
/* 5DF7B28 8007CDF8 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 5DF7B2C 8007CDFC 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 5DF7B30 8007CE00 02000224 */  addiu      $v0, $zero, 0x2
/* 5DF7B34 8007CE04 1C006214 */  bne        $v1, $v0, .Llevel_24_8007CE78
/* 5DF7B38 8007CE08 00000000 */   nop
/* 5DF7B3C 8007CE0C 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 5DF7B40 8007CE10 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 5DF7B44 8007CE14 3D004392 */  lbu        $v1, 0x3D($s2)
/* 5DF7B48 8007CE18 ABFF4524 */  addiu      $a1, $v0, -0x55
/* 5DF7B4C 8007CE1C 1600A310 */  beq        $a1, $v1, .Llevel_24_8007CE78
/* 5DF7B50 8007CE20 F5FF6224 */   addiu     $v0, $v1, -0xB
/* 5DF7B54 8007CE24 0200422C */  sltiu      $v0, $v0, 0x2
/* 5DF7B58 8007CE28 05004010 */  beqz       $v0, .Llevel_24_8007CE40
/* 5DF7B5C 8007CE2C 00000000 */   nop
/* 5DF7B60 8007CE30 E0D3000C */  jal        func_80034F80
/* 5DF7B64 8007CE34 21204002 */   addu      $a0, $s2, $zero
/* 5DF7B68 8007CE38 92F30108 */  j          .Llevel_24_8007CE48
/* 5DF7B6C 8007CE3C 00000000 */   nop
.Llevel_24_8007CE40:
/* 5DF7B70 8007CE40 D0D3000C */  jal        func_80034F40
/* 5DF7B74 8007CE44 21204002 */   addu      $a0, $s2, $zero
.Llevel_24_8007CE48:
/* 5DF7B78 8007CE48 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 5DF7B7C 8007CE4C 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 5DF7B80 8007CE50 5B000224 */  addiu      $v0, $zero, 0x5B
/* 5DF7B84 8007CE54 06006214 */  bne        $v1, $v0, .Llevel_24_8007CE70
/* 5DF7B88 8007CE58 41000424 */   addiu     $a0, $zero, 0x41
/* 5DF7B8C 8007CE5C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5DF7B90 8007CE60 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5DF7B94 8007CE64 00000000 */  nop
/* 5DF7B98 8007CE68 09F84000 */  jalr       $v0
/* 5DF7B9C 8007CE6C 21284002 */   addu      $a1, $s2, $zero
.Llevel_24_8007CE70:
/* 5DF7BA0 8007CE70 B7F30108 */  j          .Llevel_24_8007CEDC
/* 5DF7BA4 8007CE74 480000AE */   sw        $zero, 0x48($s0)
.Llevel_24_8007CE78:
/* 5DF7BA8 8007CE78 3D004392 */  lbu        $v1, 0x3D($s2)
/* 5DF7BAC 8007CE7C 01000224 */  addiu      $v0, $zero, 0x1
/* 5DF7BB0 8007CE80 16006214 */  bne        $v1, $v0, .Llevel_24_8007CEDC
/* 5DF7BB4 8007CE84 00000000 */   nop
/* 5DF7BB8 8007CE88 0780033C */  lui        $v1, %hi(D_80070328 + 0xB4)
/* 5DF7BBC 8007CE8C DC03638C */  lw         $v1, %lo(D_80070328 + 0xB4)($v1)
/* 5DF7BC0 8007CE90 00000000 */  nop
/* 5DF7BC4 8007CE94 0A006010 */  beqz       $v1, .Llevel_24_8007CEC0
/* 5DF7BC8 8007CE98 8888023C */   lui       $v0, (0x88888889 >> 16)
/* 5DF7BCC 8007CE9C 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 5DF7BD0 8007CEA0 00190300 */  sll        $v1, $v1, 4
/* 5DF7BD4 8007CEA4 18006200 */  mult       $v1, $v0
/* 5DF7BD8 8007CEA8 10400000 */  mfhi       $t0
/* 5DF7BDC 8007CEAC 21100301 */  addu       $v0, $t0, $v1
/* 5DF7BE0 8007CEB0 C3120200 */  sra        $v0, $v0, 11
/* 5DF7BE4 8007CEB4 C31F0300 */  sra        $v1, $v1, 31
/* 5DF7BE8 8007CEB8 B1F30108 */  j          .Llevel_24_8007CEC4
/* 5DF7BEC 8007CEBC 23284300 */   subu      $a1, $v0, $v1
.Llevel_24_8007CEC0:
/* 5DF7BF0 8007CEC0 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_24_8007CEC4:
/* 5DF7BF4 8007CEC4 21204002 */  addu       $a0, $s2, $zero
/* 5DF7BF8 8007CEC8 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 5DF7BFC 8007CECC 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 5DF7C00 8007CED0 00000000 */  nop
/* 5DF7C04 8007CED4 09F84000 */  jalr       $v0
/* 5DF7C08 8007CED8 48000626 */   addiu     $a2, $s0, 0x48
.Llevel_24_8007CEDC:
/* 5DF7C0C 8007CEDC 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 5DF7C10 8007CEE0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 5DF7C14 8007CEE4 5B000224 */  addiu      $v0, $zero, 0x5B
/* 5DF7C18 8007CEE8 0B006214 */  bne        $v1, $v0, .Llevel_24_8007CF18
/* 5DF7C1C 8007CEEC 00000000 */   nop
/* 5DF7C20 8007CEF0 5C00058E */  lw         $a1, 0x5C($s0)
/* 5DF7C24 8007CEF4 F0EF000C */  jal        func_8003BFC0
/* 5DF7C28 8007CEF8 21204002 */   addu      $a0, $s2, $zero
/* 5DF7C2C 8007CEFC 10004014 */  bnez       $v0, .Llevel_24_8007CF40
/* 5DF7C30 8007CF00 21204002 */   addu      $a0, $s2, $zero
/* 5DF7C34 8007CF04 21280000 */  addu       $a1, $zero, $zero
/* 5DF7C38 8007CF08 AFEE000C */  jal        func_8003BABC
/* 5DF7C3C 8007CF0C 04000624 */   addiu     $a2, $zero, 0x4
/* 5DF7C40 8007CF10 D0F30108 */  j          .Llevel_24_8007CF40
/* 5DF7C44 8007CF14 5C0002AE */   sw        $v0, 0x5C($s0)
.Llevel_24_8007CF18:
/* 5DF7C48 8007CF18 5C00058E */  lw         $a1, 0x5C($s0)
/* 5DF7C4C 8007CF1C F0EF000C */  jal        func_8003BFC0
/* 5DF7C50 8007CF20 21204002 */   addu      $a0, $s2, $zero
/* 5DF7C54 8007CF24 05004010 */  beqz       $v0, .Llevel_24_8007CF3C
/* 5DF7C58 8007CF28 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 5DF7C5C 8007CF2C 5C00048E */  lw         $a0, 0x5C($s0)
/* 5DF7C60 8007CF30 9CEF000C */  jal        func_8003BE70
/* 5DF7C64 8007CF34 00000000 */   nop
/* 5DF7C68 8007CF38 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_24_8007CF3C:
/* 5DF7C6C 8007CF3C 5C0002AE */  sw         $v0, 0x5C($s0)
.Llevel_24_8007CF40:
/* 5DF7C70 8007CF40 4ED7000C */  jal        func_80035D38
/* 5DF7C74 8007CF44 21204002 */   addu      $a0, $s2, $zero
/* 5DF7C78 8007CF48 A758010C */  jal        func_8005629C
/* 5DF7C7C 8007CF4C 21204002 */   addu      $a0, $s2, $zero
/* 5DF7C80 8007CF50 2400BF8F */  lw         $ra, 0x24($sp)
/* 5DF7C84 8007CF54 2000B28F */  lw         $s2, 0x20($sp)
/* 5DF7C88 8007CF58 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5DF7C8C 8007CF5C 1800B08F */  lw         $s0, 0x18($sp)
/* 5DF7C90 8007CF60 2800BD27 */  addiu      $sp, $sp, 0x28
/* 5DF7C94 8007CF64 0800E003 */  jr         $ra
/* 5DF7C98 8007CF68 00000000 */   nop
.size MobyUpdate_15_level_24, . - MobyUpdate_15_level_24
