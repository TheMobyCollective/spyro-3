.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007EAB0
/* 74DA7E0 8007EAB0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 74DA7E4 8007EAB4 2400B1AF */  sw         $s1, 0x24($sp)
/* 74DA7E8 8007EAB8 21888000 */  addu       $s1, $a0, $zero
/* 74DA7EC 8007EABC 3400B5AF */  sw         $s5, 0x34($sp)
/* 74DA7F0 8007EAC0 0780153C */  lui        $s5, %hi(D_80070328 + 0x50)
/* 74DA7F4 8007EAC4 7803B526 */  addiu      $s5, $s5, %lo(D_80070328 + 0x50)
/* 74DA7F8 8007EAC8 06000324 */  addiu      $v1, $zero, 0x6
/* 74DA7FC 8007EACC 4000BFAF */  sw         $ra, 0x40($sp)
/* 74DA800 8007EAD0 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 74DA804 8007EAD4 3800B6AF */  sw         $s6, 0x38($sp)
/* 74DA808 8007EAD8 3000B4AF */  sw         $s4, 0x30($sp)
/* 74DA80C 8007EADC 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 74DA810 8007EAE0 2800B2AF */  sw         $s2, 0x28($sp)
/* 74DA814 8007EAE4 2000B0AF */  sw         $s0, 0x20($sp)
/* 74DA818 8007EAE8 0000A28E */  lw         $v0, 0x0($s5)
/* 74DA81C 8007EAEC 0000328E */  lw         $s2, 0x0($s1)
/* 74DA820 8007EAF0 06004310 */  beq        $v0, $v1, .Llevel_34_8007EB0C
/* 74DA824 8007EAF4 00000000 */   nop
/* 74DA828 8007EAF8 0780023C */  lui        $v0, %hi(D_80070328 + 0x244)
/* 74DA82C 8007EAFC 6C05428C */  lw         $v0, %lo(D_80070328 + 0x244)($v0)
/* 74DA830 8007EB00 00000000 */  nop
/* 74DA834 8007EB04 07004010 */  beqz       $v0, .Llevel_34_8007EB24
/* 74DA838 8007EB08 02001424 */   addiu     $s4, $zero, 0x2
.Llevel_34_8007EB0C:
/* 74DA83C 8007EB0C 48002292 */  lbu        $v0, 0x48($s1)
/* 74DA840 8007EB10 00000000 */  nop
/* 74DA844 8007EB14 24014010 */  beqz       $v0, .Llevel_34_8007EFA8
/* 74DA848 8007EB18 02000224 */   addiu     $v0, $zero, 0x2
/* 74DA84C 8007EB1C EAFB0108 */  j          .Llevel_34_8007EFA8
/* 74DA850 8007EB20 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_34_8007EB24:
/* 74DA854 8007EB24 48002292 */  lbu        $v0, 0x48($s1)
/* 74DA858 8007EB28 00000000 */  nop
/* 74DA85C 8007EB2C 03005414 */  bne        $v0, $s4, .Llevel_34_8007EB3C
/* 74DA860 8007EB30 1000A427 */   addiu     $a0, $sp, 0x10
/* 74DA864 8007EB34 01000224 */  addiu      $v0, $zero, 0x1
/* 74DA868 8007EB38 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_34_8007EB3C:
/* 74DA86C 8007EB3C B0FFB726 */  addiu      $s7, $s5, -0x50
/* 74DA870 8007EB40 2128E002 */  addu       $a1, $s7, $zero
/* 74DA874 8007EB44 0800428E */  lw         $v0, 0x8($s2)
/* 74DA878 8007EB48 0C003326 */  addiu      $s3, $s1, 0xC
/* 74DA87C 8007EB4C 21306002 */  addu       $a2, $s3, $zero
/* 74DA880 8007EB50 723C010C */  jal        func_8004F1C8
/* 74DA884 8007EB54 7F005030 */   andi      $s0, $v0, 0x7F
/* 74DA888 8007EB58 1000A427 */  addiu      $a0, $sp, 0x10
/* 74DA88C 8007EB5C 7A3B010C */  jal        func_8004EDE8
/* 74DA890 8007EB60 21280000 */   addu      $a1, $zero, $zero
/* 74DA894 8007EB64 63000012 */  beqz       $s0, .Llevel_34_8007ECF4
/* 74DA898 8007EB68 21B04000 */   addu      $s6, $v0, $zero
/* 74DA89C 8007EB6C 01000424 */  addiu      $a0, $zero, 0x1
/* 74DA8A0 8007EB70 35000416 */  bne        $s0, $a0, .Llevel_34_8007EC48
/* 74DA8A4 8007EB74 00000000 */   nop
/* 74DA8A8 8007EB78 49002392 */  lbu        $v1, 0x49($s1)
/* 74DA8AC 8007EB7C 00000000 */  nop
/* 74DA8B0 8007EB80 1F007010 */  beq        $v1, $s0, .Llevel_34_8007EC00
/* 74DA8B4 8007EB84 02006228 */   slti      $v0, $v1, 0x2
/* 74DA8B8 8007EB88 05004010 */  beqz       $v0, .Llevel_34_8007EBA0
/* 74DA8BC 8007EB8C 00000000 */   nop
/* 74DA8C0 8007EB90 09006010 */  beqz       $v1, .Llevel_34_8007EBB8
/* 74DA8C4 8007EB94 00000000 */   nop
/* 74DA8C8 8007EB98 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DA8CC 8007EB9C 00000000 */   nop
.Llevel_34_8007EBA0:
/* 74DA8D0 8007EBA0 1E007410 */  beq        $v1, $s4, .Llevel_34_8007EC1C
/* 74DA8D4 8007EBA4 03000224 */   addiu     $v0, $zero, 0x3
/* 74DA8D8 8007EBA8 23006210 */  beq        $v1, $v0, .Llevel_34_8007EC38
/* 74DA8DC 8007EBAC 00000000 */   nop
/* 74DA8E0 8007EBB0 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DA8E4 8007EBB4 00000000 */   nop
.Llevel_34_8007EBB8:
/* 74DA8E8 8007EBB8 0400428E */  lw         $v0, 0x4($s2)
/* 74DA8EC 8007EBBC 00000000 */  nop
/* 74DA8F0 8007EBC0 00044224 */  addiu      $v0, $v0, 0x400
/* 74DA8F4 8007EBC4 2A10C202 */  slt        $v0, $s6, $v0
/* 74DA8F8 8007EBC8 A0004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DA8FC 8007EBCC 00000000 */   nop
/* 74DA900 8007EBD0 1800A28F */  lw         $v0, 0x18($sp)
/* 74DA904 8007EBD4 00000000 */  nop
/* 74DA908 8007EBD8 02004104 */  bgez       $v0, .Llevel_34_8007EBE4
/* 74DA90C 8007EBDC 00000000 */   nop
/* 74DA910 8007EBE0 23100200 */  negu       $v0, $v0
.Llevel_34_8007EBE4:
/* 74DA914 8007EBE4 00044228 */  slti       $v0, $v0, 0x400
/* 74DA918 8007EBE8 98004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DA91C 8007EBEC 3C000224 */   addiu     $v0, $zero, 0x3C
/* 74DA920 8007EBF0 0C0042AE */  sw         $v0, 0xC($s2)
/* 74DA924 8007EBF4 01000224 */  addiu      $v0, $zero, 0x1
/* 74DA928 8007EBF8 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DA92C 8007EBFC 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_34_8007EC00:
/* 74DA930 8007EC00 0C004426 */  addiu      $a0, $s2, 0xC
/* 74DA934 8007EC04 69D6000C */  jal        func_800359A4
/* 74DA938 8007EC08 04000524 */   addiu     $a1, $zero, 0x4
/* 74DA93C 8007EC0C 8F004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DA940 8007EC10 02000224 */   addiu     $v0, $zero, 0x2
/* 74DA944 8007EC14 3CFB0108 */  j          .Llevel_34_8007ECF0
/* 74DA948 8007EC18 00000000 */   nop
.Llevel_34_8007EC1C:
/* 74DA94C 8007EC1C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 74DA950 8007EC20 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 74DA954 8007EC24 13000224 */  addiu      $v0, $zero, 0x13
/* 74DA958 8007EC28 88006214 */  bne        $v1, $v0, .Llevel_34_8007EE4C
/* 74DA95C 8007EC2C 3C000224 */   addiu     $v0, $zero, 0x3C
/* 74DA960 8007EC30 50FB0108 */  j          .Llevel_34_8007ED40
/* 74DA964 8007EC34 00000000 */   nop
.Llevel_34_8007EC38:
/* 74DA968 8007EC38 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 74DA96C 8007EC3C 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 74DA970 8007EC40 55FB0108 */  j          .Llevel_34_8007ED54
/* 74DA974 8007EC44 13000224 */   addiu     $v0, $zero, 0x13
.Llevel_34_8007EC48:
/* 74DA978 8007EC48 03000224 */  addiu      $v0, $zero, 0x3
/* 74DA97C 8007EC4C 4B000216 */  bne        $s0, $v0, .Llevel_34_8007ED7C
/* 74DA980 8007EC50 00000000 */   nop
/* 74DA984 8007EC54 49002392 */  lbu        $v1, 0x49($s1)
/* 74DA988 8007EC58 00000000 */  nop
/* 74DA98C 8007EC5C 1C006410 */  beq        $v1, $a0, .Llevel_34_8007ECD0
/* 74DA990 8007EC60 02006228 */   slti      $v0, $v1, 0x2
/* 74DA994 8007EC64 05004010 */  beqz       $v0, .Llevel_34_8007EC7C
/* 74DA998 8007EC68 00000000 */   nop
/* 74DA99C 8007EC6C 09006010 */  beqz       $v1, .Llevel_34_8007EC94
/* 74DA9A0 8007EC70 00000000 */   nop
/* 74DA9A4 8007EC74 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DA9A8 8007EC78 00000000 */   nop
.Llevel_34_8007EC7C:
/* 74DA9AC 8007EC7C 20007410 */  beq        $v1, $s4, .Llevel_34_8007ED00
/* 74DA9B0 8007EC80 13000224 */   addiu     $v0, $zero, 0x13
/* 74DA9B4 8007EC84 32007010 */  beq        $v1, $s0, .Llevel_34_8007ED50
/* 74DA9B8 8007EC88 00000000 */   nop
/* 74DA9BC 8007EC8C 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DA9C0 8007EC90 00000000 */   nop
.Llevel_34_8007EC94:
/* 74DA9C4 8007EC94 0400428E */  lw         $v0, 0x4($s2)
/* 74DA9C8 8007EC98 00000000 */  nop
/* 74DA9CC 8007EC9C 00084224 */  addiu      $v0, $v0, 0x800
/* 74DA9D0 8007ECA0 2A105600 */  slt        $v0, $v0, $s6
/* 74DA9D4 8007ECA4 69004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DA9D8 8007ECA8 0020C22A */   slti      $v0, $s6, 0x2000
/* 74DA9DC 8007ECAC 67004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DA9E0 8007ECB0 00000000 */   nop
/* 74DA9E4 8007ECB4 1800A28F */  lw         $v0, 0x18($sp)
/* 74DA9E8 8007ECB8 00000000 */  nop
/* 74DA9EC 8007ECBC 02004104 */  bgez       $v0, .Llevel_34_8007ECC8
/* 74DA9F0 8007ECC0 00000000 */   nop
/* 74DA9F4 8007ECC4 23100200 */  negu       $v0, $v0
.Llevel_34_8007ECC8:
/* 74DA9F8 8007ECC8 38FB0108 */  j          .Llevel_34_8007ECE0
/* 74DA9FC 8007ECCC 00044228 */   slti      $v0, $v0, 0x400
.Llevel_34_8007ECD0:
/* 74DAA00 8007ECD0 0400428E */  lw         $v0, 0x4($s2)
/* 74DAA04 8007ECD4 00000000 */  nop
/* 74DAA08 8007ECD8 00084224 */  addiu      $v0, $v0, 0x800
/* 74DAA0C 8007ECDC 2A105600 */  slt        $v0, $v0, $s6
.Llevel_34_8007ECE0:
/* 74DAA10 8007ECE0 5A004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DAA14 8007ECE4 3C000224 */   addiu     $v0, $zero, 0x3C
/* 74DAA18 8007ECE8 0C0042AE */  sw         $v0, 0xC($s2)
/* 74DAA1C 8007ECEC 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_34_8007ECF0:
/* 74DAA20 8007ECF0 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_34_8007ECF4:
/* 74DAA24 8007ECF4 01000224 */  addiu      $v0, $zero, 0x1
/* 74DAA28 8007ECF8 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DAA2C 8007ECFC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_34_8007ED00:
/* 74DAA30 8007ED00 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 74DAA34 8007ED04 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 74DAA38 8007ED08 00000000 */  nop
/* 74DAA3C 8007ED0C 0B006210 */  beq        $v1, $v0, .Llevel_34_8007ED3C
/* 74DAA40 8007ED10 0128C22A */   slti      $v0, $s6, 0x2801
/* 74DAA44 8007ED14 0A004010 */  beqz       $v0, .Llevel_34_8007ED40
/* 74DAA48 8007ED18 3C000224 */   addiu     $v0, $zero, 0x3C
/* 74DAA4C 8007ED1C 0780023C */  lui        $v0, %hi(D_80070328 + 8)
/* 74DAA50 8007ED20 3003428C */  lw         $v0, %lo(D_80070328 + 8)($v0)
/* 74DAA54 8007ED24 1400238E */  lw         $v1, 0x14($s1)
/* 74DAA58 8007ED28 00000000 */  nop
/* 74DAA5C 8007ED2C 23104300 */  subu       $v0, $v0, $v1
/* 74DAA60 8007ED30 010C4228 */  slti       $v0, $v0, 0xC01
/* 74DAA64 8007ED34 45004014 */  bnez       $v0, .Llevel_34_8007EE4C
/* 74DAA68 8007ED38 00000000 */   nop
.Llevel_34_8007ED3C:
/* 74DAA6C 8007ED3C 3C000224 */  addiu      $v0, $zero, 0x3C
.Llevel_34_8007ED40:
/* 74DAA70 8007ED40 0C0042AE */  sw         $v0, 0xC($s2)
/* 74DAA74 8007ED44 03000224 */  addiu      $v0, $zero, 0x3
/* 74DAA78 8007ED48 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DAA7C 8007ED4C 490022A2 */   sb        $v0, 0x49($s1)
.Llevel_34_8007ED50:
/* 74DAA80 8007ED50 F8FFA38E */  lw         $v1, -0x8($s5)
.Llevel_34_8007ED54:
/* 74DAA84 8007ED54 00000000 */  nop
/* 74DAA88 8007ED58 3C006210 */  beq        $v1, $v0, .Llevel_34_8007EE4C
/* 74DAA8C 8007ED5C 0C004426 */   addiu     $a0, $s2, 0xC
/* 74DAA90 8007ED60 69D6000C */  jal        func_800359A4
/* 74DAA94 8007ED64 04000524 */   addiu     $a1, $zero, 0x4
/* 74DAA98 8007ED68 38004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DAA9C 8007ED6C 00000000 */   nop
/* 74DAAA0 8007ED70 490020A2 */  sb         $zero, 0x49($s1)
/* 74DAAA4 8007ED74 93FB0108 */  j          .Llevel_34_8007EE4C
/* 74DAAA8 8007ED78 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_34_8007ED7C:
/* 74DAAAC 8007ED7C 04000224 */  addiu      $v0, $zero, 0x4
/* 74DAAB0 8007ED80 1C000216 */  bne        $s0, $v0, .Llevel_34_8007EDF4
/* 74DAAB4 8007ED84 05000224 */   addiu     $v0, $zero, 0x5
/* 74DAAB8 8007ED88 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 74DAABC 8007ED8C B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 74DAAC0 8007ED90 00000000 */  nop
/* 74DAAC4 8007ED94 01004230 */  andi       $v0, $v0, 0x1
/* 74DAAC8 8007ED98 0A004014 */  bnez       $v0, .Llevel_34_8007EDC4
/* 74DAACC 8007ED9C 21206002 */   addu      $a0, $s3, $zero
/* 74DAAD0 8007EDA0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 74DAAD4 8007EDA4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 74DAAD8 8007EDA8 0780013C */  lui        $at, %hi(D_80070300)
/* 74DAADC 8007EDAC 21082200 */  addu       $at, $at, $v0
/* 74DAAE0 8007EDB0 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 74DAAE4 8007EDB4 00000000 */  nop
/* 74DAAE8 8007EDB8 01004230 */  andi       $v0, $v0, 0x1
/* 74DAAEC 8007EDBC 23004010 */  beqz       $v0, .Llevel_34_8007EE4C
/* 74DAAF0 8007EDC0 00000000 */   nop
.Llevel_34_8007EDC4:
/* 74DAAF4 8007EDC4 CD3C010C */  jal        func_8004F334
/* 74DAAF8 8007EDC8 2128E002 */   addu      $a1, $s7, $zero
/* 74DAAFC 8007EDCC 01084228 */  slti       $v0, $v0, 0x801
/* 74DAB00 8007EDD0 1E004014 */  bnez       $v0, .Llevel_34_8007EE4C
/* 74DAB04 8007EDD4 00000000 */   nop
/* 74DAB08 8007EDD8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 74DAB0C 8007EDDC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 74DAB10 8007EDE0 00000000 */  nop
/* 74DAB14 8007EDE4 19004018 */  blez       $v0, .Llevel_34_8007EE4C
/* 74DAB18 8007EDE8 00000000 */   nop
/* 74DAB1C 8007EDEC 8FFB0108 */  j          .Llevel_34_8007EE3C
/* 74DAB20 8007EDF0 00000000 */   nop
.Llevel_34_8007EDF4:
/* 74DAB24 8007EDF4 15000216 */  bne        $s0, $v0, .Llevel_34_8007EE4C
/* 74DAB28 8007EDF8 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 74DAB2C 8007EDFC 1400438E */  lw         $v1, 0x14($s2)
/* 74DAB30 8007EE00 00000000 */  nop
/* 74DAB34 8007EE04 11006210 */  beq        $v1, $v0, .Llevel_34_8007EE4C
/* 74DAB38 8007EE08 40100300 */   sll       $v0, $v1, 1
/* 74DAB3C 8007EE0C 21104300 */  addu       $v0, $v0, $v1
/* 74DAB40 8007EE10 80100200 */  sll        $v0, $v0, 2
/* 74DAB44 8007EE14 23104300 */  subu       $v0, $v0, $v1
/* 74DAB48 8007EE18 0780033C */  lui        $v1, %hi(D_8006C550)
/* 74DAB4C 8007EE1C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 74DAB50 8007EE20 C0100200 */  sll        $v0, $v0, 3
/* 74DAB54 8007EE24 21104300 */  addu       $v0, $v0, $v1
/* 74DAB58 8007EE28 48004290 */  lbu        $v0, 0x48($v0)
/* 74DAB5C 8007EE2C 00000000 */  nop
/* 74DAB60 8007EE30 8000422C */  sltiu      $v0, $v0, 0x80
/* 74DAB64 8007EE34 05004014 */  bnez       $v0, .Llevel_34_8007EE4C
/* 74DAB68 8007EE38 00000000 */   nop
.Llevel_34_8007EE3C:
/* 74DAB6C 8007EE3C 0800428E */  lw         $v0, 0x8($s2)
/* 74DAB70 8007EE40 00000000 */  nop
/* 74DAB74 8007EE44 80004230 */  andi       $v0, $v0, 0x80
/* 74DAB78 8007EE48 080042AE */  sw         $v0, 0x8($s2)
.Llevel_34_8007EE4C:
/* 74DAB7C 8007EE4C 48002292 */  lbu        $v0, 0x48($s1)
/* 74DAB80 8007EE50 00000000 */  nop
/* 74DAB84 8007EE54 4A004010 */  beqz       $v0, .Llevel_34_8007EF80
/* 74DAB88 8007EE58 00000000 */   nop
/* 74DAB8C 8007EE5C 1000458E */  lw         $a1, 0x10($s2)
/* 74DAB90 8007EE60 F0EF000C */  jal        func_8003BFC0
/* 74DAB94 8007EE64 21202002 */   addu      $a0, $s1, $zero
/* 74DAB98 8007EE68 08004014 */  bnez       $v0, .Llevel_34_8007EE8C
/* 74DAB9C 8007EE6C 21282002 */   addu      $a1, $s1, $zero
/* 74DABA0 8007EE70 0780023C */  lui        $v0, %hi(D_8006C654)
/* 74DABA4 8007EE74 54C6428C */  lw         $v0, %lo(D_8006C654)($v0)
/* 74DABA8 8007EE78 00000000 */  nop
/* 74DABAC 8007EE7C 1D004490 */  lbu        $a0, 0x1D($v0)
/* 74DABB0 8007EE80 D4EE000C */  jal        PlaySound
/* 74DABB4 8007EE84 04000624 */   addiu     $a2, $zero, 0x4
/* 74DABB8 8007EE88 100042AE */  sw         $v0, 0x10($s2)
.Llevel_34_8007EE8C:
/* 74DABBC 8007EE8C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 74DABC0 8007EE90 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 74DABC4 8007EE94 00000000 */  nop
/* 74DABC8 8007EE98 01004230 */  andi       $v0, $v0, 0x1
/* 74DABCC 8007EE9C 09004014 */  bnez       $v0, .Llevel_34_8007EEC4
/* 74DABD0 8007EEA0 01000424 */   addiu     $a0, $zero, 0x1
/* 74DABD4 8007EEA4 06000524 */  addiu      $a1, $zero, 0x6
/* 74DABD8 8007EEA8 21302002 */  addu       $a2, $s1, $zero
/* 74DABDC 8007EEAC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74DABE0 8007EEB0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74DABE4 8007EEB4 00000000 */  nop
/* 74DABE8 8007EEB8 09F84000 */  jalr       $v0
/* 74DABEC 8007EEBC 21380000 */   addu      $a3, $zero, $zero
/* 74DABF0 8007EEC0 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_34_8007EEC4:
/* 74DABF4 8007EEC4 52000524 */  addiu      $a1, $zero, 0x52
/* 74DABF8 8007EEC8 21302002 */  addu       $a2, $s1, $zero
/* 74DABFC 8007EECC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74DAC00 8007EED0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74DAC04 8007EED4 00000000 */  nop
/* 74DAC08 8007EED8 09F84000 */  jalr       $v0
/* 74DAC0C 8007EEDC 21380000 */   addu      $a3, $zero, $zero
/* 74DAC10 8007EEE0 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 74DAC14 8007EEE4 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 74DAC18 8007EEE8 13000224 */  addiu      $v0, $zero, 0x13
/* 74DAC1C 8007EEEC 2E006210 */  beq        $v1, $v0, .Llevel_34_8007EFA8
/* 74DAC20 8007EEF0 00000000 */   nop
/* 74DAC24 8007EEF4 0400428E */  lw         $v0, 0x4($s2)
/* 74DAC28 8007EEF8 00000000 */  nop
/* 74DAC2C 8007EEFC 2A10C202 */  slt        $v0, $s6, $v0
/* 74DAC30 8007EF00 29004010 */  beqz       $v0, .Llevel_34_8007EFA8
/* 74DAC34 8007EF04 00000000 */   nop
/* 74DAC38 8007EF08 0780023C */  lui        $v0, %hi(D_8006E344)
/* 74DAC3C 8007EF0C 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 74DAC40 8007EF10 00000000 */  nop
/* 74DAC44 8007EF14 24004014 */  bnez       $v0, .Llevel_34_8007EFA8
/* 74DAC48 8007EF18 00000000 */   nop
/* 74DAC4C 8007EF1C 1800A38F */  lw         $v1, 0x18($sp)
/* 74DAC50 8007EF20 00000000 */  nop
/* 74DAC54 8007EF24 01FC6228 */  slti       $v0, $v1, -0x3FF
/* 74DAC58 8007EF28 1F004014 */  bnez       $v0, .Llevel_34_8007EFA8
/* 74DAC5C 8007EF2C 00000000 */   nop
/* 74DAC60 8007EF30 0000448E */  lw         $a0, 0x0($s2)
/* 74DAC64 8007EF34 00000000 */  nop
/* 74DAC68 8007EF38 2A106400 */  slt        $v0, $v1, $a0
/* 74DAC6C 8007EF3C 1A004010 */  beqz       $v0, .Llevel_34_8007EFA8
/* 74DAC70 8007EF40 00000000 */   nop
/* 74DAC74 8007EF44 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 74DAC78 8007EF48 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 74DAC7C 8007EF4C 1400228E */  lw         $v0, 0x14($s1)
/* 74DAC80 8007EF50 000C6324 */  addiu      $v1, $v1, 0xC00
/* 74DAC84 8007EF54 21104400 */  addu       $v0, $v0, $a0
/* 74DAC88 8007EF58 2A186200 */  slt        $v1, $v1, $v0
/* 74DAC8C 8007EF5C 12006010 */  beqz       $v1, .Llevel_34_8007EFA8
/* 74DAC90 8007EF60 0010023C */   lui       $v0, (0x10000020 >> 16)
/* 74DAC94 8007EF64 20004234 */  ori        $v0, $v0, (0x10000020 & 0xFFFF)
/* 74DAC98 8007EF68 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 74DAC9C 8007EF6C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 74DACA0 8007EF70 0780013C */  lui        $at, %hi(D_80070328 + 0x218)
/* 74DACA4 8007EF74 400531AC */  sw         $s1, %lo(D_80070328 + 0x218)($at)
/* 74DACA8 8007EF78 EAFB0108 */  j          .Llevel_34_8007EFA8
/* 74DACAC 8007EF7C 00000000 */   nop
.Llevel_34_8007EF80:
/* 74DACB0 8007EF80 1000458E */  lw         $a1, 0x10($s2)
/* 74DACB4 8007EF84 F0EF000C */  jal        func_8003BFC0
/* 74DACB8 8007EF88 21202002 */   addu      $a0, $s1, $zero
/* 74DACBC 8007EF8C 06004010 */  beqz       $v0, .Llevel_34_8007EFA8
/* 74DACC0 8007EF90 00000000 */   nop
/* 74DACC4 8007EF94 1000448E */  lw         $a0, 0x10($s2)
/* 74DACC8 8007EF98 9CEF000C */  jal        func_8003BE70
/* 74DACCC 8007EF9C 00000000 */   nop
/* 74DACD0 8007EFA0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 74DACD4 8007EFA4 100042AE */  sw         $v0, 0x10($s2)
.Llevel_34_8007EFA8:
/* 74DACD8 8007EFA8 4000BF8F */  lw         $ra, 0x40($sp)
/* 74DACDC 8007EFAC 3C00B78F */  lw         $s7, 0x3C($sp)
/* 74DACE0 8007EFB0 3800B68F */  lw         $s6, 0x38($sp)
/* 74DACE4 8007EFB4 3400B58F */  lw         $s5, 0x34($sp)
/* 74DACE8 8007EFB8 3000B48F */  lw         $s4, 0x30($sp)
/* 74DACEC 8007EFBC 2C00B38F */  lw         $s3, 0x2C($sp)
/* 74DACF0 8007EFC0 2800B28F */  lw         $s2, 0x28($sp)
/* 74DACF4 8007EFC4 2400B18F */  lw         $s1, 0x24($sp)
/* 74DACF8 8007EFC8 2000B08F */  lw         $s0, 0x20($sp)
/* 74DACFC 8007EFCC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 74DAD00 8007EFD0 0800E003 */  jr         $ra
/* 74DAD04 8007EFD4 00000000 */   nop
.size func_level_34_8007EAB0, . - func_level_34_8007EAB0
