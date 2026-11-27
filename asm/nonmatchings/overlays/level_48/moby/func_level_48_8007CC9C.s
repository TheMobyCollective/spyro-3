.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_577_level_48
/* 926F9CC 8007CC9C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 926F9D0 8007CCA0 1000B0AF */  sw         $s0, 0x10($sp)
/* 926F9D4 8007CCA4 21808000 */  addu       $s0, $a0, $zero
/* 926F9D8 8007CCA8 1800BFAF */  sw         $ra, 0x18($sp)
/* 926F9DC 8007CCAC 1400B1AF */  sw         $s1, 0x14($sp)
/* 926F9E0 8007CCB0 1800028E */  lw         $v0, 0x18($s0)
/* 926F9E4 8007CCB4 0000118E */  lw         $s1, 0x0($s0)
/* 926F9E8 8007CCB8 09004010 */  beqz       $v0, .Llevel_48_8007CCE0
/* 926F9EC 8007CCBC 01000224 */   addiu     $v0, $zero, 0x1
/* 926F9F0 8007CCC0 48000392 */  lbu        $v1, 0x48($s0)
/* 926F9F4 8007CCC4 00000000 */  nop
/* 926F9F8 8007CCC8 03006210 */  beq        $v1, $v0, .Llevel_48_8007CCD8
/* 926F9FC 8007CCCC 21280000 */   addu      $a1, $zero, $zero
/* 926FA00 8007CCD0 AFEE000C */  jal        func_8003BABC
/* 926FA04 8007CCD4 21300000 */   addu      $a2, $zero, $zero
.Llevel_48_8007CCD8:
/* 926FA08 8007CCD8 000020AE */  sw         $zero, 0x0($s1)
/* 926FA0C 8007CCDC 180000AE */  sw         $zero, 0x18($s0)
.Llevel_48_8007CCE0:
/* 926FA10 8007CCE0 0400258E */  lw         $a1, 0x4($s1)
/* 926FA14 8007CCE4 F0EF000C */  jal        func_8003BFC0
/* 926FA18 8007CCE8 21200002 */   addu      $a0, $s0, $zero
/* 926FA1C 8007CCEC 0A004014 */  bnez       $v0, .Llevel_48_8007CD18
/* 926FA20 8007CCF0 00000000 */   nop
/* 926FA24 8007CCF4 0400258E */  lw         $a1, 0x4($s1)
/* 926FA28 8007CCF8 F0EF000C */  jal        func_8003BFC0
/* 926FA2C 8007CCFC 21200002 */   addu      $a0, $s0, $zero
/* 926FA30 8007CD00 05004014 */  bnez       $v0, .Llevel_48_8007CD18
/* 926FA34 8007CD04 21200002 */   addu      $a0, $s0, $zero
/* 926FA38 8007CD08 01000524 */  addiu      $a1, $zero, 0x1
/* 926FA3C 8007CD0C AFEE000C */  jal        func_8003BABC
/* 926FA40 8007CD10 04000624 */   addiu     $a2, $zero, 0x4
/* 926FA44 8007CD14 040022AE */  sw         $v0, 0x4($s1)
.Llevel_48_8007CD18:
/* 926FA48 8007CD18 0000238E */  lw         $v1, 0x0($s1)
/* 926FA4C 8007CD1C 00000000 */  nop
/* 926FA50 8007CD20 0F006228 */  slti       $v0, $v1, 0xF
/* 926FA54 8007CD24 03004014 */  bnez       $v0, .Llevel_48_8007CD34
/* 926FA58 8007CD28 03006228 */   slti      $v0, $v1, 0x3
/* 926FA5C 8007CD2C 51F30108 */  j          .Llevel_48_8007CD44
/* 926FA60 8007CD30 480000A2 */   sb        $zero, 0x48($s0)
.Llevel_48_8007CD34:
/* 926FA64 8007CD34 02004014 */  bnez       $v0, .Llevel_48_8007CD40
/* 926FA68 8007CD38 01000224 */   addiu     $v0, $zero, 0x1
/* 926FA6C 8007CD3C 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_48_8007CD40:
/* 926FA70 8007CD40 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_48_8007CD44:
/* 926FA74 8007CD44 48000392 */  lbu        $v1, 0x48($s0)
/* 926FA78 8007CD48 01000224 */  addiu      $v0, $zero, 0x1
/* 926FA7C 8007CD4C 11006210 */  beq        $v1, $v0, .Llevel_48_8007CD94
/* 926FA80 8007CD50 02006228 */   slti      $v0, $v1, 0x2
/* 926FA84 8007CD54 05004010 */  beqz       $v0, .Llevel_48_8007CD6C
/* 926FA88 8007CD58 00000000 */   nop
/* 926FA8C 8007CD5C 08006010 */  beqz       $v1, .Llevel_48_8007CD80
/* 926FA90 8007CD60 4F000224 */   addiu     $v0, $zero, 0x4F
/* 926FA94 8007CD64 C8F30108 */  j          .Llevel_48_8007CF20
/* 926FA98 8007CD68 00000000 */   nop
.Llevel_48_8007CD6C:
/* 926FA9C 8007CD6C 02000224 */  addiu      $v0, $zero, 0x2
/* 926FAA0 8007CD70 30006210 */  beq        $v1, $v0, .Llevel_48_8007CE34
/* 926FAA4 8007CD74 4F000224 */   addiu     $v0, $zero, 0x4F
/* 926FAA8 8007CD78 C8F30108 */  j          .Llevel_48_8007CF20
/* 926FAAC 8007CD7C 00000000 */   nop
.Llevel_48_8007CD80:
/* 926FAB0 8007CD80 540000A2 */  sb         $zero, 0x54($s0)
/* 926FAB4 8007CD84 550000A2 */  sb         $zero, 0x55($s0)
/* 926FAB8 8007CD88 560000A2 */  sb         $zero, 0x56($s0)
/* 926FABC 8007CD8C C7F30108 */  j          .Llevel_48_8007CF1C
/* 926FAC0 8007CD90 570000A2 */   sb        $zero, 0x57($s0)
.Llevel_48_8007CD94:
/* 926FAC4 8007CD94 0000238E */  lw         $v1, 0x0($s1)
/* 926FAC8 8007CD98 00000000 */  nop
/* 926FACC 8007CD9C 80100300 */  sll        $v0, $v1, 2
/* 926FAD0 8007CDA0 21104300 */  addu       $v0, $v0, $v1
/* 926FAD4 8007CDA4 00190200 */  sll        $v1, $v0, 4
/* 926FAD8 8007CDA8 21304300 */  addu       $a2, $v0, $v1
/* 926FADC 8007CDAC 0001C228 */  slti       $v0, $a2, 0x100
/* 926FAE0 8007CDB0 03004014 */  bnez       $v0, .Llevel_48_8007CDC0
/* 926FAE4 8007CDB4 00000000 */   nop
/* 926FAE8 8007CDB8 73F30108 */  j          .Llevel_48_8007CDCC
/* 926FAEC 8007CDBC FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_48_8007CDC0:
/* 926FAF0 8007CDC0 0300C104 */  bgez       $a2, .Llevel_48_8007CDD0
/* 926FAF4 8007CDC4 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 926FAF8 8007CDC8 21300000 */  addu       $a2, $zero, $zero
.Llevel_48_8007CDCC:
/* 926FAFC 8007CDCC 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_48_8007CDD0:
/* 926FB00 8007CDD0 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 926FB04 8007CDD4 0000238E */  lw         $v1, 0x0($s1)
/* 926FB08 8007CDD8 0F000224 */  addiu      $v0, $zero, 0xF
/* 926FB0C 8007CDDC 23104300 */  subu       $v0, $v0, $v1
/* 926FB10 8007CDE0 C0100200 */  sll        $v0, $v0, 3
/* 926FB14 8007CDE4 18004400 */  mult       $v0, $a0
/* 926FB18 8007CDE8 10380000 */  mfhi       $a3
/* 926FB1C 8007CDEC 2118E200 */  addu       $v1, $a3, $v0
/* 926FB20 8007CDF0 C3180300 */  sra        $v1, $v1, 3
/* 926FB24 8007CDF4 C3170200 */  sra        $v0, $v0, 31
/* 926FB28 8007CDF8 23286200 */  subu       $a1, $v1, $v0
/* 926FB2C 8007CDFC 1000A228 */  slti       $v0, $a1, 0x10
/* 926FB30 8007CE00 03004014 */  bnez       $v0, .Llevel_48_8007CE10
/* 926FB34 8007CE04 00000000 */   nop
/* 926FB38 8007CE08 87F30108 */  j          .Llevel_48_8007CE1C
/* 926FB3C 8007CE0C 0F000524 */   addiu     $a1, $zero, 0xF
.Llevel_48_8007CE10:
/* 926FB40 8007CE10 0300A104 */  bgez       $a1, .Llevel_48_8007CE20
/* 926FB44 8007CE14 FF000224 */   addiu     $v0, $zero, 0xFF
/* 926FB48 8007CE18 21280000 */  addu       $a1, $zero, $zero
.Llevel_48_8007CE1C:
/* 926FB4C 8007CE1C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_48_8007CE20:
/* 926FB50 8007CE20 540002A2 */  sb         $v0, 0x54($s0)
/* 926FB54 8007CE24 3000A234 */  ori        $v0, $a1, 0x30
/* 926FB58 8007CE28 550000A2 */  sb         $zero, 0x55($s0)
/* 926FB5C 8007CE2C C2F30108 */  j          .Llevel_48_8007CF08
/* 926FB60 8007CE30 560006A2 */   sb        $a2, 0x56($s0)
.Llevel_48_8007CE34:
/* 926FB64 8007CE34 0000238E */  lw         $v1, 0x0($s1)
/* 926FB68 8007CE38 00000000 */  nop
/* 926FB6C 8007CE3C 80100300 */  sll        $v0, $v1, 2
/* 926FB70 8007CE40 21104300 */  addu       $v0, $v0, $v1
/* 926FB74 8007CE44 00190200 */  sll        $v1, $v0, 4
/* 926FB78 8007CE48 21104300 */  addu       $v0, $v0, $v1
/* 926FB7C 8007CE4C 40300200 */  sll        $a2, $v0, 1
/* 926FB80 8007CE50 0001C228 */  slti       $v0, $a2, 0x100
/* 926FB84 8007CE54 03004014 */  bnez       $v0, .Llevel_48_8007CE64
/* 926FB88 8007CE58 00000000 */   nop
/* 926FB8C 8007CE5C 9CF30108 */  j          .Llevel_48_8007CE70
/* 926FB90 8007CE60 FF000624 */   addiu     $a2, $zero, 0xFF
.Llevel_48_8007CE64:
/* 926FB94 8007CE64 0200C104 */  bgez       $a2, .Llevel_48_8007CE70
/* 926FB98 8007CE68 00000000 */   nop
/* 926FB9C 8007CE6C 21300000 */  addu       $a2, $zero, $zero
.Llevel_48_8007CE70:
/* 926FBA0 8007CE70 0000238E */  lw         $v1, 0x0($s1)
/* 926FBA4 8007CE74 00000000 */  nop
/* 926FBA8 8007CE78 80100300 */  sll        $v0, $v1, 2
/* 926FBAC 8007CE7C 21104300 */  addu       $v0, $v0, $v1
/* 926FBB0 8007CE80 00190200 */  sll        $v1, $v0, 4
/* 926FBB4 8007CE84 21284300 */  addu       $a1, $v0, $v1
/* 926FBB8 8007CE88 0001A228 */  slti       $v0, $a1, 0x100
/* 926FBBC 8007CE8C 03004014 */  bnez       $v0, .Llevel_48_8007CE9C
/* 926FBC0 8007CE90 00000000 */   nop
/* 926FBC4 8007CE94 AAF30108 */  j          .Llevel_48_8007CEA8
/* 926FBC8 8007CE98 FF000524 */   addiu     $a1, $zero, 0xFF
.Llevel_48_8007CE9C:
/* 926FBCC 8007CE9C 0300A104 */  bgez       $a1, .Llevel_48_8007CEAC
/* 926FBD0 8007CEA0 8888043C */   lui       $a0, (0x88888889 >> 16)
/* 926FBD4 8007CEA4 21280000 */  addu       $a1, $zero, $zero
.Llevel_48_8007CEA8:
/* 926FBD8 8007CEA8 8888043C */  lui        $a0, (0x88888889 >> 16)
.Llevel_48_8007CEAC:
/* 926FBDC 8007CEAC 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 926FBE0 8007CEB0 0000238E */  lw         $v1, 0x0($s1)
/* 926FBE4 8007CEB4 0F000224 */  addiu      $v0, $zero, 0xF
/* 926FBE8 8007CEB8 23104300 */  subu       $v0, $v0, $v1
/* 926FBEC 8007CEBC C0100200 */  sll        $v0, $v0, 3
/* 926FBF0 8007CEC0 18004400 */  mult       $v0, $a0
/* 926FBF4 8007CEC4 10380000 */  mfhi       $a3
/* 926FBF8 8007CEC8 2118E200 */  addu       $v1, $a3, $v0
/* 926FBFC 8007CECC C3180300 */  sra        $v1, $v1, 3
/* 926FC00 8007CED0 C3170200 */  sra        $v0, $v0, 31
/* 926FC04 8007CED4 23186200 */  subu       $v1, $v1, $v0
/* 926FC08 8007CED8 10006228 */  slti       $v0, $v1, 0x10
/* 926FC0C 8007CEDC 03004014 */  bnez       $v0, .Llevel_48_8007CEEC
/* 926FC10 8007CEE0 00000000 */   nop
/* 926FC14 8007CEE4 BEF30108 */  j          .Llevel_48_8007CEF8
/* 926FC18 8007CEE8 0F000324 */   addiu     $v1, $zero, 0xF
.Llevel_48_8007CEEC:
/* 926FC1C 8007CEEC 03006104 */  bgez       $v1, .Llevel_48_8007CEFC
/* 926FC20 8007CEF0 30006234 */   ori       $v0, $v1, 0x30
/* 926FC24 8007CEF4 21180000 */  addu       $v1, $zero, $zero
.Llevel_48_8007CEF8:
/* 926FC28 8007CEF8 30006234 */  ori        $v0, $v1, 0x30
.Llevel_48_8007CEFC:
/* 926FC2C 8007CEFC 540006A2 */  sb         $a2, 0x54($s0)
/* 926FC30 8007CF00 550000A2 */  sb         $zero, 0x55($s0)
/* 926FC34 8007CF04 560005A2 */  sb         $a1, 0x56($s0)
.Llevel_48_8007CF08:
/* 926FC38 8007CF08 570002A2 */  sb         $v0, 0x57($s0)
/* 926FC3C 8007CF0C 0000228E */  lw         $v0, 0x0($s1)
/* 926FC40 8007CF10 00000000 */  nop
/* 926FC44 8007CF14 01004224 */  addiu      $v0, $v0, 0x1
/* 926FC48 8007CF18 000022AE */  sw         $v0, 0x0($s1)
.Llevel_48_8007CF1C:
/* 926FC4C 8007CF1C 4F000224 */  addiu      $v0, $zero, 0x4F
.Llevel_48_8007CF20:
/* 926FC50 8007CF20 540002A2 */  sb         $v0, 0x54($s0)
/* 926FC54 8007CF24 5F000224 */  addiu      $v0, $zero, 0x5F
/* 926FC58 8007CF28 560002A2 */  sb         $v0, 0x56($s0)
/* 926FC5C 8007CF2C 3A000224 */  addiu      $v0, $zero, 0x3A
/* 926FC60 8007CF30 570002A2 */  sb         $v0, 0x57($s0)
/* 926FC64 8007CF34 7F000224 */  addiu      $v0, $zero, 0x7F
/* 926FC68 8007CF38 550000A2 */  sb         $zero, 0x55($s0)
/* 926FC6C 8007CF3C 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 926FC70 8007CF40 4E0002A2 */  sb         $v0, 0x4E($s0)
/* 926FC74 8007CF44 1800BF8F */  lw         $ra, 0x18($sp)
/* 926FC78 8007CF48 1400B18F */  lw         $s1, 0x14($sp)
/* 926FC7C 8007CF4C 1000B08F */  lw         $s0, 0x10($sp)
/* 926FC80 8007CF50 2000BD27 */  addiu      $sp, $sp, 0x20
/* 926FC84 8007CF54 0800E003 */  jr         $ra
/* 926FC88 8007CF58 00000000 */   nop
.size MobyUpdate_577_level_48, . - MobyUpdate_577_level_48
