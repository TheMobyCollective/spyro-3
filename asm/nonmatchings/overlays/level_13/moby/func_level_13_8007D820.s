.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_89_level_13
/* 441BD50 8007D820 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 441BD54 8007D824 2000B2AF */  sw         $s2, 0x20($sp)
/* 441BD58 8007D828 21908000 */  addu       $s2, $a0, $zero
/* 441BD5C 8007D82C FF000224 */  addiu      $v0, $zero, 0xFF
/* 441BD60 8007D830 2400BFAF */  sw         $ra, 0x24($sp)
/* 441BD64 8007D834 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 441BD68 8007D838 1800B0AF */  sw         $s0, 0x18($sp)
/* 441BD6C 8007D83C 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 441BD70 8007D840 0780023C */  lui        $v0, %hi(D_8006C640)
/* 441BD74 8007D844 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 441BD78 8007D848 0000518E */  lw         $s1, 0x0($s2)
/* 441BD7C 8007D84C 12004018 */  blez       $v0, .Llevel_13_8007D898
/* 441BD80 8007D850 00000000 */   nop
/* 441BD84 8007D854 6000228E */  lw         $v0, 0x60($s1)
/* 441BD88 8007D858 00000000 */  nop
/* 441BD8C 8007D85C 0E004014 */  bnez       $v0, .Llevel_13_8007D898
/* 441BD90 8007D860 00000000 */   nop
/* 441BD94 8007D864 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 441BD98 8007D868 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 441BD9C 8007D86C 0680023C */  lui        $v0, %hi(D_800652B0 + 0x10)
/* 441BDA0 8007D870 C052428C */  lw         $v0, %lo(D_800652B0 + 0x10)($v0)
/* 441BDA4 8007D874 0680063C */  lui        $a2, %hi(D_800652B6 + 0x10)
/* 441BDA8 8007D878 C652C694 */  lhu        $a2, %lo(D_800652B6 + 0x10)($a2)
/* 441BDAC 8007D87C 0680053C */  lui        $a1, %hi(D_800652B4 + 0x10)
/* 441BDB0 8007D880 C452A594 */  lhu        $a1, %lo(D_800652B4 + 0x10)($a1)
/* 441BDB4 8007D884 21208200 */  addu       $a0, $a0, $v0
/* 441BDB8 8007D888 613E010C */  jal        func_8004F984
/* 441BDBC 8007D88C 21288500 */   addu      $a1, $a0, $a1
/* 441BDC0 8007D890 01000224 */  addiu      $v0, $zero, 0x1
/* 441BDC4 8007D894 600022AE */  sw         $v0, 0x60($s1)
.Llevel_13_8007D898:
/* 441BDC8 8007D898 48005092 */  lbu        $s0, 0x48($s2)
/* 441BDCC 8007D89C 03000224 */  addiu      $v0, $zero, 0x3
/* 441BDD0 8007D8A0 A1000212 */  beq        $s0, $v0, .Llevel_13_8007DB28
/* 441BDD4 8007D8A4 0400022A */   slti      $v0, $s0, 0x4
/* 441BDD8 8007D8A8 07004010 */  beqz       $v0, .Llevel_13_8007D8C8
/* 441BDDC 8007D8AC 00000000 */   nop
/* 441BDE0 8007D8B0 0C000012 */  beqz       $s0, .Llevel_13_8007D8E4
/* 441BDE4 8007D8B4 01000224 */   addiu     $v0, $zero, 0x1
/* 441BDE8 8007D8B8 6D000212 */  beq        $s0, $v0, .Llevel_13_8007DA70
/* 441BDEC 8007D8BC 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 441BDF0 8007D8C0 99F70108 */  j          .Llevel_13_8007DE64
/* 441BDF4 8007D8C4 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_13_8007D8C8:
/* 441BDF8 8007D8C8 0A000224 */  addiu      $v0, $zero, 0xA
/* 441BDFC 8007D8CC 55000212 */  beq        $s0, $v0, .Llevel_13_8007DA24
/* 441BE00 8007D8D0 63000224 */   addiu     $v0, $zero, 0x63
/* 441BE04 8007D8D4 51010212 */  beq        $s0, $v0, .Llevel_13_8007DE1C
/* 441BE08 8007D8D8 0B000224 */   addiu     $v0, $zero, 0xB
/* 441BE0C 8007D8DC 99F70108 */  j          .Llevel_13_8007DE64
/* 441BE10 8007D8E0 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_13_8007D8E4:
/* 441BE14 8007D8E4 0780023C */  lui        $v0, %hi(D_8006C658)
/* 441BE18 8007D8E8 58C6428C */  lw         $v0, %lo(D_8006C658)($v0)
/* 441BE1C 8007D8EC 00000000 */  nop
/* 441BE20 8007D8F0 06004014 */  bnez       $v0, .Llevel_13_8007D90C
/* 441BE24 8007D8F4 0D000224 */   addiu     $v0, $zero, 0xD
/* 441BE28 8007D8F8 0780033C */  lui        $v1, %hi(D_8006E344)
/* 441BE2C 8007D8FC 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 441BE30 8007D900 00000000 */  nop
/* 441BE34 8007D904 35006214 */  bne        $v1, $v0, .Llevel_13_8007D9DC
/* 441BE38 8007D908 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_13_8007D90C:
/* 441BE3C 8007D90C 49004292 */  lbu        $v0, 0x49($s2)
/* 441BE40 8007D910 00000000 */  nop
/* 441BE44 8007D914 31004014 */  bnez       $v0, .Llevel_13_8007D9DC
/* 441BE48 8007D918 01000224 */   addiu     $v0, $zero, 0x1
/* 441BE4C 8007D91C 0780033C */  lui        $v1, %hi(D_8006C4F8)
/* 441BE50 8007D920 F8C4638C */  lw         $v1, %lo(D_8006C4F8)($v1)
/* 441BE54 8007D924 01000224 */  addiu      $v0, $zero, 0x1
/* 441BE58 8007D928 03006210 */  beq        $v1, $v0, .Llevel_13_8007D938
/* 441BE5C 8007D92C 03000224 */   addiu     $v0, $zero, 0x3
/* 441BE60 8007D930 8DF70108 */  j          .Llevel_13_8007DE34
/* 441BE64 8007D934 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_13_8007D938:
/* 441BE68 8007D938 46004292 */  lbu        $v0, 0x46($s2)
/* 441BE6C 8007D93C 00000000 */  nop
/* 441BE70 8007D940 40100200 */  sll        $v0, $v0, 1
/* 441BE74 8007D944 0680013C */  lui        $at, %hi(D_80065920)
/* 441BE78 8007D948 21082200 */  addu       $at, $at, $v0
/* 441BE7C 8007D94C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 441BE80 8007D950 0780043C */  lui        $a0, %hi(D_800719BC)
/* 441BE84 8007D954 BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 441BE88 8007D958 40100300 */  sll        $v0, $v1, 1
/* 441BE8C 8007D95C 21104300 */  addu       $v0, $v0, $v1
/* 441BE90 8007D960 80100200 */  sll        $v0, $v0, 2
/* 441BE94 8007D964 21104300 */  addu       $v0, $v0, $v1
/* 441BE98 8007D968 43110200 */  sra        $v0, $v0, 5
/* 441BE9C 8007D96C 000082AC */  sw         $v0, 0x0($a0)
/* 441BEA0 8007D970 46004292 */  lbu        $v0, 0x46($s2)
/* 441BEA4 8007D974 21288000 */  addu       $a1, $a0, $zero
/* 441BEA8 8007D978 40100200 */  sll        $v0, $v0, 1
/* 441BEAC 8007D97C 0680013C */  lui        $at, %hi(D_800658A0)
/* 441BEB0 8007D980 21082200 */  addu       $at, $at, $v0
/* 441BEB4 8007D984 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 441BEB8 8007D988 0780013C */  lui        $at, %hi(D_800719C4)
/* 441BEBC 8007D98C C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 441BEC0 8007D990 40100300 */  sll        $v0, $v1, 1
/* 441BEC4 8007D994 21104300 */  addu       $v0, $v0, $v1
/* 441BEC8 8007D998 80100200 */  sll        $v0, $v0, 2
/* 441BECC 8007D99C 21104300 */  addu       $v0, $v0, $v1
/* 441BED0 8007D9A0 43110200 */  sra        $v0, $v0, 5
/* 441BED4 8007D9A4 0780013C */  lui        $at, %hi(D_800719C0)
/* 441BED8 8007D9A8 C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 441BEDC 8007D9AC 653C010C */  jal        func_8004F194
/* 441BEE0 8007D9B0 0C004626 */   addiu     $a2, $s2, 0xC
/* 441BEE4 8007D9B4 46004292 */  lbu        $v0, 0x46($s2)
/* 441BEE8 8007D9B8 00000000 */  nop
/* 441BEEC 8007D9BC 80004224 */  addiu      $v0, $v0, 0x80
/* 441BEF0 8007D9C0 00110200 */  sll        $v0, $v0, 4
/* 441BEF4 8007D9C4 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 441BEF8 8007D9C8 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 441BEFC 8007D9CC E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 441BF00 8007D9D0 01000224 */  addiu      $v0, $zero, 0x1
/* 441BF04 8007D9D4 490042A2 */  sb         $v0, 0x49($s2)
/* 441BF08 8007D9D8 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_13_8007D9DC:
/* 441BF0C 8007D9DC 380040A6 */  sh         $zero, 0x38($s2)
/* 441BF10 8007D9E0 050022A2 */  sb         $v0, 0x5($s1)
/* 441BF14 8007D9E4 0780023C */  lui        $v0, %hi(D_8006C598)
/* 441BF18 8007D9E8 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 441BF1C 8007D9EC 00000000 */  nop
/* 441BF20 8007D9F0 1C014014 */  bnez       $v0, .Llevel_13_8007DE64
/* 441BF24 8007D9F4 0C004426 */   addiu     $a0, $s2, 0xC
/* 441BF28 8007D9F8 21204002 */  addu       $a0, $s2, $zero
/* 441BF2C 8007D9FC EFDE000C */  jal        func_80037BBC
/* 441BF30 8007DA00 21280000 */   addu      $a1, $zero, $zero
/* 441BF34 8007DA04 16014010 */  beqz       $v0, .Llevel_13_8007DE60
/* 441BF38 8007DA08 21204002 */   addu      $a0, $s2, $zero
/* 441BF3C 8007DA0C 21280000 */  addu       $a1, $zero, $zero
/* 441BF40 8007DA10 B944010C */  jal        func_800512E4
/* 441BF44 8007DA14 0A000624 */   addiu     $a2, $zero, 0xA
/* 441BF48 8007DA18 0A000224 */  addiu      $v0, $zero, 0xA
/* 441BF4C 8007DA1C 98F70108 */  j          .Llevel_13_8007DE60
/* 441BF50 8007DA20 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_13_8007DA24:
/* 441BF54 8007DA24 0780033C */  lui        $v1, %hi(D_8006E344)
/* 441BF58 8007DA28 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 441BF5C 8007DA2C 01000224 */  addiu      $v0, $zero, 0x1
/* 441BF60 8007DA30 0B016210 */  beq        $v1, $v0, .Llevel_13_8007DE60
/* 441BF64 8007DA34 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 441BF68 8007DA38 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 441BF6C 8007DA3C 21204002 */  addu       $a0, $s2, $zero
/* 441BF70 8007DA40 01000524 */  addiu      $a1, $zero, 0x1
/* 441BF74 8007DA44 01000324 */  addiu      $v1, $zero, 0x1
/* 441BF78 8007DA48 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 441BF7C 8007DA4C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 441BF80 8007DA50 3C000224 */  addiu      $v0, $zero, 0x3C
/* 441BF84 8007DA54 0780013C */  lui        $at, %hi(D_80071576)
/* 441BF88 8007DA58 761523A0 */  sb         $v1, %lo(D_80071576)($at)
/* 441BF8C 8007DA5C 240022AE */  sw         $v0, 0x24($s1)
/* 441BF90 8007DA60 D0D3000C */  jal        func_80034F40
/* 441BF94 8007DA64 480043A2 */   sb        $v1, 0x48($s2)
/* 441BF98 8007DA68 99F70108 */  j          .Llevel_13_8007DE64
/* 441BF9C 8007DA6C 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_13_8007DA70:
/* 441BFA0 8007DA70 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 441BFA4 8007DA74 21204002 */  addu       $a0, $s2, $zero
/* 441BFA8 8007DA78 08000624 */  addiu      $a2, $zero, 0x8
/* 441BFAC 8007DA7C 01000324 */  addiu      $v1, $zero, 0x1
/* 441BFB0 8007DA80 0780013C */  lui        $at, %hi(D_800719D4)
/* 441BFB4 8007DA84 D41923A4 */  sh         $v1, %lo(D_800719D4)($at)
/* 441BFB8 8007DA88 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 441BFBC 8007DA8C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 441BFC0 8007DA90 4800258E */  lw         $a1, 0x48($s1)
/* 441BFC4 8007DA94 10000724 */  addiu      $a3, $zero, 0x10
/* 441BFC8 8007DA98 1000B0AF */  sw         $s0, 0x10($sp)
/* 441BFCC 8007DA9C 1400A0AF */  sw         $zero, 0x14($sp)
/* 441BFD0 8007DAA0 17D6000C */  jal        func_8003585C
/* 441BFD4 8007DAA4 8000A524 */   addiu     $a1, $a1, 0x80
/* 441BFD8 8007DAA8 06004010 */  beqz       $v0, .Llevel_13_8007DAC4
/* 441BFDC 8007DAAC 21204002 */   addu      $a0, $s2, $zero
/* 441BFE0 8007DAB0 1000A0AF */  sw         $zero, 0x10($sp)
/* 441BFE4 8007DAB4 80000524 */  addiu      $a1, $zero, 0x80
/* 441BFE8 8007DAB8 21300000 */  addu       $a2, $zero, $zero
/* 441BFEC 8007DABC 77D7000C */  jal        func_80035DDC
/* 441BFF0 8007DAC0 21380000 */   addu      $a3, $zero, $zero
.Llevel_13_8007DAC4:
/* 441BFF4 8007DAC4 24002426 */  addiu      $a0, $s1, 0x24
/* 441BFF8 8007DAC8 69D6000C */  jal        func_800359A4
/* 441BFFC 8007DACC 04000524 */   addiu     $a1, $zero, 0x4
/* 441C000 8007DAD0 02000324 */  addiu      $v1, $zero, 0x2
/* 441C004 8007DAD4 E3004314 */  bne        $v0, $v1, .Llevel_13_8007DE64
/* 441C008 8007DAD8 0C004426 */   addiu     $a0, $s2, 0xC
/* 441C00C 8007DADC 48005026 */  addiu      $s0, $s2, 0x48
/* 441C010 8007DAE0 21200002 */  addu       $a0, $s0, $zero
/* 441C014 8007DAE4 01000524 */  addiu      $a1, $zero, 0x1
/* 441C018 8007DAE8 0780113C */  lui        $s1, %hi(D_8006D088)
/* 441C01C 8007DAEC 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 441C020 8007DAF0 21302002 */  addu       $a2, $s1, $zero
/* 441C024 8007DAF4 03000224 */  addiu      $v0, $zero, 0x3
/* 441C028 8007DAF8 EDED000C */  jal        func_8003B7B4
/* 441C02C 8007DAFC 480042A2 */   sb        $v0, 0x48($s2)
/* 441C030 8007DB00 21200002 */  addu       $a0, $s0, $zero
/* 441C034 8007DB04 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 441C038 8007DB08 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 441C03C 8007DB0C EDED000C */  jal        func_8003B7B4
/* 441C040 8007DB10 01000524 */   addiu     $a1, $zero, 0x1
/* 441C044 8007DB14 D3ED000C */  jal        func_8003B74C
/* 441C048 8007DB18 21202002 */   addu      $a0, $s1, $zero
/* 441C04C 8007DB1C 01000224 */  addiu      $v0, $zero, 0x1
/* 441C050 8007DB20 98F70108 */  j          .Llevel_13_8007DE60
/* 441C054 8007DB24 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_13_8007DB28:
/* 441C058 8007DB28 21204002 */  addu       $a0, $s2, $zero
/* 441C05C 8007DB2C 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 441C060 8007DB30 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 441C064 8007DB34 00000000 */  nop
/* 441C068 8007DB38 09F84000 */  jalr       $v0
/* 441C06C 8007DB3C 64000524 */   addiu     $a1, $zero, 0x64
/* 441C070 8007DB40 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 441C074 8007DB44 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 441C078 8007DB48 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 441C07C 8007DB4C D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 441C080 8007DB50 07005014 */  bne        $v0, $s0, .Llevel_13_8007DB70
/* 441C084 8007DB54 00000000 */   nop
/* 441C088 8007DB58 0780043C */  lui        $a0, %hi(D_800719A8)
/* 441C08C 8007DB5C A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 441C090 8007DB60 0780053C */  lui        $a1, %hi(D_80068FA4)
/* 441C094 8007DB64 A48FA524 */  addiu      $a1, $a1, %lo(D_80068FA4)
/* 441C098 8007DB68 E0F60108 */  j          .Llevel_13_8007DB80
/* 441C09C 8007DB6C 00000000 */   nop
.Llevel_13_8007DB70:
/* 441C0A0 8007DB70 0780043C */  lui        $a0, %hi(D_800719A8)
/* 441C0A4 8007DB74 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 441C0A8 8007DB78 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 441C0AC 8007DB7C 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
.Llevel_13_8007DB80:
/* 441C0B0 8007DB80 694D000C */  jal        func_800135A4
/* 441C0B4 8007DB84 21300000 */   addu      $a2, $zero, $zero
/* 441C0B8 8007DB88 0780043C */  lui        $a0, %hi(D_800719F0)
/* 441C0BC 8007DB8C F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 441C0C0 8007DB90 0780053C */  lui        $a1, %hi(D_80068F90)
/* 441C0C4 8007DB94 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 441C0C8 8007DB98 694D000C */  jal        func_800135A4
/* 441C0CC 8007DB9C 21300000 */   addu      $a2, $zero, $zero
/* 441C0D0 8007DBA0 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 441C0D4 8007DBA4 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 441C0D8 8007DBA8 00000000 */  nop
/* 441C0DC 8007DBAC 02004014 */  bnez       $v0, .Llevel_13_8007DBB8
/* 441C0E0 8007DBB0 00000000 */   nop
/* 441C0E4 8007DBB4 2C0020AE */  sw         $zero, 0x2C($s1)
.Llevel_13_8007DBB8:
/* 441C0E8 8007DBB8 0780033C */  lui        $v1, %hi(D_8006E044)
/* 441C0EC 8007DBBC 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 441C0F0 8007DBC0 07000224 */  addiu      $v0, $zero, 0x7
/* 441C0F4 8007DBC4 11006214 */  bne        $v1, $v0, .Llevel_13_8007DC0C
/* 441C0F8 8007DBC8 00000000 */   nop
/* 441C0FC 8007DBCC 0780023C */  lui        $v0, %hi(D_8006E048)
/* 441C100 8007DBD0 48E0428C */  lw         $v0, %lo(D_8006E048)($v0)
/* 441C104 8007DBD4 00000000 */  nop
/* 441C108 8007DBD8 FDFF4224 */  addiu      $v0, $v0, -0x3
/* 441C10C 8007DBDC 0200422C */  sltiu      $v0, $v0, 0x2
/* 441C110 8007DBE0 0A004010 */  beqz       $v0, .Llevel_13_8007DC0C
/* 441C114 8007DBE4 01000224 */   addiu     $v0, $zero, 0x1
/* 441C118 8007DBE8 0780013C */  lui        $at, %hi(D_8006C768)
/* 441C11C 8007DBEC 68C722AC */  sw         $v0, %lo(D_8006C768)($at)
/* 441C120 8007DBF0 0780013C */  lui        $at, %hi(D_80070328 + 0x288)
/* 441C124 8007DBF4 B00522AC */  sw         $v0, %lo(D_80070328 + 0x288)($at)
/* 441C128 8007DBF8 01000224 */  addiu      $v0, $zero, 0x1
/* 441C12C 8007DBFC 0780013C */  lui        $at, %hi(D_8006E13F)
/* 441C130 8007DC00 3FE122A0 */  sb         $v0, %lo(D_8006E13F)($at)
/* 441C134 8007DC04 05F70108 */  j          .Llevel_13_8007DC14
/* 441C138 8007DC08 00000000 */   nop
.Llevel_13_8007DC0C:
/* 441C13C 8007DC0C 0780013C */  lui        $at, %hi(D_8006C768)
/* 441C140 8007DC10 68C720AC */  sw         $zero, %lo(D_8006C768)($at)
.Llevel_13_8007DC14:
/* 441C144 8007DC14 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 441C148 8007DC18 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 441C14C 8007DC1C 03000224 */  addiu      $v0, $zero, 0x3
/* 441C150 8007DC20 0B006214 */  bne        $v1, $v0, .Llevel_13_8007DC50
/* 441C154 8007DC24 01000224 */   addiu     $v0, $zero, 0x1
/* 441C158 8007DC28 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 441C15C 8007DC2C 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 441C160 8007DC30 3D004392 */  lbu        $v1, 0x3D($s2)
/* 441C164 8007DC34 9CFF4524 */  addiu      $a1, $v0, -0x64
/* 441C168 8007DC38 0600A310 */  beq        $a1, $v1, .Llevel_13_8007DC54
/* 441C16C 8007DC3C 01000224 */   addiu     $v0, $zero, 0x1
/* 441C170 8007DC40 D0D3000C */  jal        func_80034F40
/* 441C174 8007DC44 21204002 */   addu      $a0, $s2, $zero
/* 441C178 8007DC48 2DF70108 */  j          .Llevel_13_8007DCB4
/* 441C17C 8007DC4C 3C0020AE */   sw        $zero, 0x3C($s1)
.Llevel_13_8007DC50:
/* 441C180 8007DC50 3D004392 */  lbu        $v1, 0x3D($s2)
.Llevel_13_8007DC54:
/* 441C184 8007DC54 00000000 */  nop
/* 441C188 8007DC58 17006214 */  bne        $v1, $v0, .Llevel_13_8007DCB8
/* 441C18C 8007DC5C 24002426 */   addiu     $a0, $s1, 0x24
/* 441C190 8007DC60 0780033C */  lui        $v1, %hi(D_80070328 + 0xB4)
/* 441C194 8007DC64 DC03638C */  lw         $v1, %lo(D_80070328 + 0xB4)($v1)
/* 441C198 8007DC68 00000000 */  nop
/* 441C19C 8007DC6C 0A006010 */  beqz       $v1, .Llevel_13_8007DC98
/* 441C1A0 8007DC70 8888023C */   lui       $v0, (0x88888889 >> 16)
/* 441C1A4 8007DC74 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 441C1A8 8007DC78 00190300 */  sll        $v1, $v1, 4
/* 441C1AC 8007DC7C 18006200 */  mult       $v1, $v0
/* 441C1B0 8007DC80 10400000 */  mfhi       $t0
/* 441C1B4 8007DC84 21100301 */  addu       $v0, $t0, $v1
/* 441C1B8 8007DC88 C3120200 */  sra        $v0, $v0, 11
/* 441C1BC 8007DC8C C31F0300 */  sra        $v1, $v1, 31
/* 441C1C0 8007DC90 27F70108 */  j          .Llevel_13_8007DC9C
/* 441C1C4 8007DC94 23284300 */   subu      $a1, $v0, $v1
.Llevel_13_8007DC98:
/* 441C1C8 8007DC98 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_13_8007DC9C:
/* 441C1CC 8007DC9C 21204002 */  addu       $a0, $s2, $zero
/* 441C1D0 8007DCA0 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 441C1D4 8007DCA4 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 441C1D8 8007DCA8 00000000 */  nop
/* 441C1DC 8007DCAC 09F84000 */  jalr       $v0
/* 441C1E0 8007DCB0 3C002626 */   addiu     $a2, $s1, 0x3C
.Llevel_13_8007DCB4:
/* 441C1E4 8007DCB4 24002426 */  addiu      $a0, $s1, 0x24
.Llevel_13_8007DCB8:
/* 441C1E8 8007DCB8 69D6000C */  jal        func_800359A4
/* 441C1EC 8007DCBC 04000524 */   addiu     $a1, $zero, 0x4
/* 441C1F0 8007DCC0 20004010 */  beqz       $v0, .Llevel_13_8007DD44
/* 441C1F4 8007DCC4 00000000 */   nop
/* 441C1F8 8007DCC8 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 441C1FC 8007DCCC 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 441C200 8007DCD0 00000000 */  nop
/* 441C204 8007DCD4 20004230 */  andi       $v0, $v0, 0x20
/* 441C208 8007DCD8 1A004010 */  beqz       $v0, .Llevel_13_8007DD44
/* 441C20C 8007DCDC 26000224 */   addiu     $v0, $zero, 0x26
/* 441C210 8007DCE0 0780033C */  lui        $v1, %hi(D_8006E044)
/* 441C214 8007DCE4 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 441C218 8007DCE8 00000000 */  nop
/* 441C21C 8007DCEC 15006210 */  beq        $v1, $v0, .Llevel_13_8007DD44
/* 441C220 8007DCF0 00000000 */   nop
/* 441C224 8007DCF4 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 441C228 8007DCF8 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 441C22C 8007DCFC 00000000 */  nop
/* 441C230 8007DD00 10004014 */  bnez       $v0, .Llevel_13_8007DD44
/* 441C234 8007DD04 21204002 */   addu      $a0, $s2, $zero
/* 441C238 8007DD08 4957010C */  jal        func_80055D24
/* 441C23C 8007DD0C 04000524 */   addiu     $a1, $zero, 0x4
/* 441C240 8007DD10 5A000424 */  addiu      $a0, $zero, 0x5A
/* 441C244 8007DD14 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 441C248 8007DD18 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 441C24C 8007DD1C 00000000 */  nop
/* 441C250 8007DD20 09F84000 */  jalr       $v0
/* 441C254 8007DD24 21284002 */   addu      $a1, $s2, $zero
/* 441C258 8007DD28 06004010 */  beqz       $v0, .Llevel_13_8007DD44
/* 441C25C 8007DD2C 28000224 */   addiu     $v0, $zero, 0x28
/* 441C260 8007DD30 2800238E */  lw         $v1, 0x28($s1)
/* 441C264 8007DD34 240022AE */  sw         $v0, 0x24($s1)
/* 441C268 8007DD38 01000224 */  addiu      $v0, $zero, 0x1
/* 441C26C 8007DD3C 23104300 */  subu       $v0, $v0, $v1
/* 441C270 8007DD40 280022AE */  sw         $v0, 0x28($s1)
.Llevel_13_8007DD44:
/* 441C274 8007DD44 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 441C278 8007DD48 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 441C27C 8007DD4C 00000000 */  nop
/* 441C280 8007DD50 80100200 */  sll        $v0, $v0, 2
/* 441C284 8007DD54 0780013C */  lui        $at, %hi(D_80068CAC)
/* 441C288 8007DD58 21082200 */  addu       $at, $at, $v0
/* 441C28C 8007DD5C AC8C238C */  lw         $v1, %lo(D_80068CAC)($at)
/* 441C290 8007DD60 1E000224 */  addiu      $v0, $zero, 0x1E
/* 441C294 8007DD64 0B006214 */  bne        $v1, $v0, .Llevel_13_8007DD94
/* 441C298 8007DD68 00000000 */   nop
/* 441C29C 8007DD6C 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 441C2A0 8007DD70 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 441C2A4 8007DD74 00000000 */  nop
/* 441C2A8 8007DD78 10004230 */  andi       $v0, $v0, 0x10
/* 441C2AC 8007DD7C 05004010 */  beqz       $v0, .Llevel_13_8007DD94
/* 441C2B0 8007DD80 01000224 */   addiu     $v0, $zero, 0x1
/* 441C2B4 8007DD84 2C00238E */  lw         $v1, 0x2C($s1)
/* 441C2B8 8007DD88 00000000 */  nop
/* 441C2BC 8007DD8C 23104300 */  subu       $v0, $v0, $v1
/* 441C2C0 8007DD90 2C0022AE */  sw         $v0, 0x2C($s1)
.Llevel_13_8007DD94:
/* 441C2C4 8007DD94 0780033C */  lui        $v1, %hi(D_8006E044)
/* 441C2C8 8007DD98 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 441C2CC 8007DD9C 26000224 */  addiu      $v0, $zero, 0x26
/* 441C2D0 8007DDA0 30006214 */  bne        $v1, $v0, .Llevel_13_8007DE64
/* 441C2D4 8007DDA4 0C004426 */   addiu     $a0, $s2, 0xC
/* 441C2D8 8007DDA8 0780023C */  lui        $v0, %hi(D_8006E08C)
/* 441C2DC 8007DDAC 8CE0428C */  lw         $v0, %lo(D_8006E08C)($v0)
/* 441C2E0 8007DDB0 0780033C */  lui        $v1, %hi(D_8006E078)
/* 441C2E4 8007DDB4 78E0638C */  lw         $v1, %lo(D_8006E078)($v1)
/* 441C2E8 8007DDB8 00000000 */  nop
/* 441C2EC 8007DDBC 23104300 */  subu       $v0, $v0, $v1
/* 441C2F0 8007DDC0 FF0F4330 */  andi       $v1, $v0, 0xFFF
/* 441C2F4 8007DDC4 01086228 */  slti       $v0, $v1, 0x801
/* 441C2F8 8007DDC8 02004014 */  bnez       $v0, .Llevel_13_8007DDD4
/* 441C2FC 8007DDCC 00000000 */   nop
/* 441C300 8007DDD0 00F06324 */  addiu      $v1, $v1, -0x1000
.Llevel_13_8007DDD4:
/* 441C304 8007DDD4 02006104 */  bgez       $v1, .Llevel_13_8007DDE0
/* 441C308 8007DDD8 21106000 */   addu      $v0, $v1, $zero
/* 441C30C 8007DDDC 23100200 */  negu       $v0, $v0
.Llevel_13_8007DDE0:
/* 441C310 8007DDE0 80004228 */  slti       $v0, $v0, 0x80
/* 441C314 8007DDE4 07004010 */  beqz       $v0, .Llevel_13_8007DE04
/* 441C318 8007DDE8 01000224 */   addiu     $v0, $zero, 0x1
/* 441C31C 8007DDEC 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 441C320 8007DDF0 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 441C324 8007DDF4 0780013C */  lui        $at, %hi(D_8006C768)
/* 441C328 8007DDF8 68C722AC */  sw         $v0, %lo(D_8006C768)($at)
/* 441C32C 8007DDFC 99F70108 */  j          .Llevel_13_8007DE64
/* 441C330 8007DE00 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_13_8007DE04:
/* 441C334 8007DE04 10000224 */  addiu      $v0, $zero, 0x10
/* 441C338 8007DE08 4C0042A2 */  sb         $v0, 0x4C($s2)
/* 441C33C 8007DE0C 0780013C */  lui        $at, %hi(D_8006C768)
/* 441C340 8007DE10 68C720AC */  sw         $zero, %lo(D_8006C768)($at)
/* 441C344 8007DE14 99F70108 */  j          .Llevel_13_8007DE64
/* 441C348 8007DE18 0C004426 */   addiu     $a0, $s2, 0xC
.Llevel_13_8007DE1C:
/* 441C34C 8007DE1C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 441C350 8007DE20 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 441C354 8007DE24 00000000 */  nop
/* 441C358 8007DE28 0E006214 */  bne        $v1, $v0, .Llevel_13_8007DE64
/* 441C35C 8007DE2C 0C004426 */   addiu     $a0, $s2, 0xC
/* 441C360 8007DE30 480040A2 */  sb         $zero, 0x48($s2)
.Llevel_13_8007DE34:
/* 441C364 8007DE34 48005026 */  addiu      $s0, $s2, 0x48
/* 441C368 8007DE38 21200002 */  addu       $a0, $s0, $zero
/* 441C36C 8007DE3C 0780063C */  lui        $a2, %hi(D_8006D088)
/* 441C370 8007DE40 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 441C374 8007DE44 EDED000C */  jal        func_8003B7B4
/* 441C378 8007DE48 01000524 */   addiu     $a1, $zero, 0x1
/* 441C37C 8007DE4C 21200002 */  addu       $a0, $s0, $zero
/* 441C380 8007DE50 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 441C384 8007DE54 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 441C388 8007DE58 EDED000C */  jal        func_8003B7B4
/* 441C38C 8007DE5C 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_13_8007DE60:
/* 441C390 8007DE60 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_13_8007DE64:
/* 441C394 8007DE64 1400428E */  lw         $v0, 0x14($s2)
/* 441C398 8007DE68 00100524 */  addiu      $a1, $zero, 0x1000
/* 441C39C 8007DE6C 00014224 */  addiu      $v0, $v0, 0x100
/* 441C3A0 8007DE70 D668000C */  jal        func_8001A358
/* 441C3A4 8007DE74 140042AE */   sw        $v0, 0x14($s2)
/* 441C3A8 8007DE78 1400428E */  lw         $v0, 0x14($s2)
/* 441C3AC 8007DE7C 21204002 */  addu       $a0, $s2, $zero
/* 441C3B0 8007DE80 00FF4224 */  addiu      $v0, $v0, -0x100
/* 441C3B4 8007DE84 A758010C */  jal        func_8005629C
/* 441C3B8 8007DE88 140082AC */   sw        $v0, 0x14($a0)
/* 441C3BC 8007DE8C 2400BF8F */  lw         $ra, 0x24($sp)
/* 441C3C0 8007DE90 2000B28F */  lw         $s2, 0x20($sp)
/* 441C3C4 8007DE94 1C00B18F */  lw         $s1, 0x1C($sp)
/* 441C3C8 8007DE98 1800B08F */  lw         $s0, 0x18($sp)
/* 441C3CC 8007DE9C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 441C3D0 8007DEA0 0800E003 */  jr         $ra
/* 441C3D4 8007DEA4 00000000 */   nop
.size MobyUpdate_89_level_13, . - MobyUpdate_89_level_13
