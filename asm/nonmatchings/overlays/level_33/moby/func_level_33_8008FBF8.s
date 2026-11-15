.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_970_level_33
/* 71C7928 8008FBF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 71C792C 8008FBFC 1800B2AF */  sw         $s2, 0x18($sp)
/* 71C7930 8008FC00 21908000 */  addu       $s2, $a0, $zero
/* 71C7934 8008FC04 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 71C7938 8008FC08 1400B1AF */  sw         $s1, 0x14($sp)
/* 71C793C 8008FC0C 1000B0AF */  sw         $s0, 0x10($sp)
/* 71C7940 8008FC10 48004392 */  lbu        $v1, 0x48($s2)
/* 71C7944 8008FC14 0000508E */  lw         $s0, 0x0($s2)
/* 71C7948 8008FC18 05006010 */  beqz       $v1, .Llevel_33_8008FC30
/* 71C794C 8008FC1C 01000224 */   addiu     $v0, $zero, 0x1
/* 71C7950 8008FC20 26006210 */  beq        $v1, $v0, .Llevel_33_8008FCBC
/* 71C7954 8008FC24 21280002 */   addu      $a1, $s0, $zero
/* 71C7958 8008FC28 493F0208 */  j          .Llevel_33_8008FD24
/* 71C795C 8008FC2C 180000AE */   sw        $zero, 0x18($s0)
.Llevel_33_8008FC30:
/* 71C7960 8008FC30 1800028E */  lw         $v0, 0x18($s0)
/* 71C7964 8008FC34 00000000 */  nop
/* 71C7968 8008FC38 08004014 */  bnez       $v0, .Llevel_33_8008FC5C
/* 71C796C 8008FC3C 21280002 */   addu      $a1, $s0, $zero
/* 71C7970 8008FC40 0780043C */  lui        $a0, %hi(D_80070328)
/* 71C7974 8008FC44 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 71C7978 8008FC48 21300000 */  addu       $a2, $zero, $zero
/* 71C797C 8008FC4C 88D8000C */  jal        func_80036220
/* 71C7980 8008FC50 21380000 */   addu      $a3, $zero, $zero
/* 71C7984 8008FC54 32004010 */  beqz       $v0, .Llevel_33_8008FD20
/* 71C7988 8008FC58 00000000 */   nop
.Llevel_33_8008FC5C:
/* 71C798C 8008FC5C 2000048E */  lw         $a0, 0x20($s0)
/* 71C7990 8008FC60 CF87000C */  jal        func_80021F3C
/* 71C7994 8008FC64 00000000 */   nop
/* 71C7998 8008FC68 FC000524 */  addiu      $a1, $zero, 0xFC
/* 71C799C 8008FC6C 21300000 */  addu       $a2, $zero, $zero
/* 71C79A0 8008FC70 03120200 */  sra        $v0, $v0, 8
/* 71C79A4 8008FC74 2000048E */  lw         $a0, 0x20($s0)
/* 71C79A8 8008FC78 B687000C */  jal        func_80021ED8
/* 71C79AC 8008FC7C FF005130 */   andi      $s1, $v0, 0xFF
/* 71C79B0 8008FC80 1A00222A */  slti       $v0, $s1, 0x1A
/* 71C79B4 8008FC84 07004014 */  bnez       $v0, .Llevel_33_8008FCA4
/* 71C79B8 8008FC88 21204002 */   addu      $a0, $s2, $zero
/* 71C79BC 8008FC8C 2000048E */  lw         $a0, 0x20($s0)
/* 71C79C0 8008FC90 32000524 */  addiu      $a1, $zero, 0x32
/* 71C79C4 8008FC94 2328B100 */  subu       $a1, $a1, $s1
/* 71C79C8 8008FC98 E387000C */  jal        func_80021F8C
/* 71C79CC 8008FC9C 21300000 */   addu      $a2, $zero, $zero
/* 71C79D0 8008FCA0 21204002 */  addu       $a0, $s2, $zero
.Llevel_33_8008FCA4:
/* 71C79D4 8008FCA4 05000524 */  addiu      $a1, $zero, 0x5
/* 71C79D8 8008FCA8 C4EE000C */  jal        func_8003BB10
/* 71C79DC 8008FCAC 21300000 */   addu      $a2, $zero, $zero
/* 71C79E0 8008FCB0 01000224 */  addiu      $v0, $zero, 0x1
/* 71C79E4 8008FCB4 483F0208 */  j          .Llevel_33_8008FD20
/* 71C79E8 8008FCB8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_33_8008FCBC:
/* 71C79EC 8008FCBC 0780043C */  lui        $a0, %hi(D_80070328)
/* 71C79F0 8008FCC0 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 71C79F4 8008FCC4 00080624 */  addiu      $a2, $zero, 0x800
/* 71C79F8 8008FCC8 88D8000C */  jal        func_80036220
/* 71C79FC 8008FCCC 21380000 */   addu      $a3, $zero, $zero
/* 71C7A00 8008FCD0 13004014 */  bnez       $v0, .Llevel_33_8008FD20
/* 71C7A04 8008FCD4 00000000 */   nop
/* 71C7A08 8008FCD8 2000048E */  lw         $a0, 0x20($s0)
/* 71C7A0C 8008FCDC CF87000C */  jal        func_80021F3C
/* 71C7A10 8008FCE0 00000000 */   nop
/* 71C7A14 8008FCE4 02004230 */  andi       $v0, $v0, 0x2
/* 71C7A18 8008FCE8 0D004010 */  beqz       $v0, .Llevel_33_8008FD20
/* 71C7A1C 8008FCEC 00000000 */   nop
/* 71C7A20 8008FCF0 1800028E */  lw         $v0, 0x18($s0)
/* 71C7A24 8008FCF4 00000000 */  nop
/* 71C7A28 8008FCF8 09004014 */  bnez       $v0, .Llevel_33_8008FD20
/* 71C7A2C 8008FCFC FC000524 */   addiu     $a1, $zero, 0xFC
/* 71C7A30 8008FD00 2000048E */  lw         $a0, 0x20($s0)
/* 71C7A34 8008FD04 B687000C */  jal        func_80021ED8
/* 71C7A38 8008FD08 21300000 */   addu      $a2, $zero, $zero
/* 71C7A3C 8008FD0C 21204002 */  addu       $a0, $s2, $zero
/* 71C7A40 8008FD10 06000524 */  addiu      $a1, $zero, 0x6
/* 71C7A44 8008FD14 C4EE000C */  jal        func_8003BB10
/* 71C7A48 8008FD18 21300000 */   addu      $a2, $zero, $zero
/* 71C7A4C 8008FD1C 480040A2 */  sb         $zero, 0x48($s2)
.Llevel_33_8008FD20:
/* 71C7A50 8008FD20 180000AE */  sw         $zero, 0x18($s0)
.Llevel_33_8008FD24:
/* 71C7A54 8008FD24 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 71C7A58 8008FD28 1800B28F */  lw         $s2, 0x18($sp)
/* 71C7A5C 8008FD2C 1400B18F */  lw         $s1, 0x14($sp)
/* 71C7A60 8008FD30 1000B08F */  lw         $s0, 0x10($sp)
/* 71C7A64 8008FD34 2000BD27 */  addiu      $sp, $sp, 0x20
/* 71C7A68 8008FD38 0800E003 */  jr         $ra
/* 71C7A6C 8008FD3C 00000000 */   nop
.size MobyUpdate_970_level_33, . - MobyUpdate_970_level_33
