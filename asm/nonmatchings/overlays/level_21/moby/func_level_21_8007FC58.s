.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_21_8007FC58
/* 53FC188 8007FC58 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 53FC18C 8007FC5C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 53FC190 8007FC60 21888000 */  addu       $s1, $a0, $zero
/* 53FC194 8007FC64 2400BFAF */  sw         $ra, 0x24($sp)
/* 53FC198 8007FC68 2000B2AF */  sw         $s2, 0x20($sp)
/* 53FC19C 8007FC6C 1800B0AF */  sw         $s0, 0x18($sp)
/* 53FC1A0 8007FC70 48002392 */  lbu        $v1, 0x48($s1)
/* 53FC1A4 8007FC74 0000308E */  lw         $s0, 0x0($s1)
/* 53FC1A8 8007FC78 05006010 */  beqz       $v1, .Llevel_21_8007FC90
/* 53FC1AC 8007FC7C 01000224 */   addiu     $v0, $zero, 0x1
/* 53FC1B0 8007FC80 1C006210 */  beq        $v1, $v0, .Llevel_21_8007FCF4
/* 53FC1B4 8007FC84 00000000 */   nop
/* 53FC1B8 8007FC88 5EFF0108 */  j          .Llevel_21_8007FD78
/* 53FC1BC 8007FC8C 00000000 */   nop
.Llevel_21_8007FC90:
/* 53FC1C0 8007FC90 21202002 */  addu       $a0, $s1, $zero
/* 53FC1C4 8007FC94 04000526 */  addiu      $a1, $s0, 0x4
/* 53FC1C8 8007FC98 38FF1224 */  addiu      $s2, $zero, -0xC8
/* 53FC1CC 8007FC9C 46002292 */  lbu        $v0, 0x46($s1)
/* 53FC1D0 8007FCA0 02000392 */  lbu        $v1, 0x2($s0)
/* 53FC1D4 8007FCA4 04000624 */  addiu      $a2, $zero, 0x4
/* 53FC1D8 8007FCA8 21104300 */  addu       $v0, $v0, $v1
/* 53FC1DC 8007FCAC 460022A2 */  sb         $v0, 0x46($s1)
/* 53FC1E0 8007FCB0 45002292 */  lbu        $v0, 0x45($s1)
/* 53FC1E4 8007FCB4 00000392 */  lbu        $v1, 0x0($s0)
/* 53FC1E8 8007FCB8 05000724 */  addiu      $a3, $zero, 0x5
/* 53FC1EC 8007FCBC 21104300 */  addu       $v0, $v0, $v1
/* 53FC1F0 8007FCC0 450022A2 */  sb         $v0, 0x45($s1)
/* 53FC1F4 8007FCC4 98DE000C */  jal        func_80037A60
/* 53FC1F8 8007FCC8 1000B2AF */   sw        $s2, 0x10($sp)
/* 53FC1FC 8007FCCC 02004010 */  beqz       $v0, .Llevel_21_8007FCD8
/* 53FC200 8007FCD0 01000224 */   addiu     $v0, $zero, 0x1
/* 53FC204 8007FCD4 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_21_8007FCD8:
/* 53FC208 8007FCD8 0400028E */  lw         $v0, 0x4($s0)
/* 53FC20C 8007FCDC 00000000 */  nop
/* 53FC210 8007FCE0 38FF4228 */  slti       $v0, $v0, -0xC8
/* 53FC214 8007FCE4 24004010 */  beqz       $v0, .Llevel_21_8007FD78
/* 53FC218 8007FCE8 00000000 */   nop
/* 53FC21C 8007FCEC 5EFF0108 */  j          .Llevel_21_8007FD78
/* 53FC220 8007FCF0 040012AE */   sw        $s2, 0x4($s0)
.Llevel_21_8007FCF4:
/* 53FC224 8007FCF4 45002492 */  lbu        $a0, 0x45($s1)
/* 53FC228 8007FCF8 4FD8000C */  jal        SubAngle8
/* 53FC22C 8007FCFC 21280000 */   addu      $a1, $zero, $zero
/* 53FC230 8007FD00 80000524 */  addiu      $a1, $zero, 0x80
/* 53FC234 8007FD04 45002492 */  lbu        $a0, 0x45($s1)
/* 53FC238 8007FD08 4FD8000C */  jal        SubAngle8
/* 53FC23C 8007FD0C 21804000 */   addu      $s0, $v0, $zero
/* 53FC240 8007FD10 21204000 */  addu       $a0, $v0, $zero
/* 53FC244 8007FD14 02000106 */  bgez       $s0, .Llevel_21_8007FD20
/* 53FC248 8007FD18 21180002 */   addu      $v1, $s0, $zero
/* 53FC24C 8007FD1C 23180300 */  negu       $v1, $v1
.Llevel_21_8007FD20:
/* 53FC250 8007FD20 02008104 */  bgez       $a0, .Llevel_21_8007FD2C
/* 53FC254 8007FD24 21108000 */   addu      $v0, $a0, $zero
/* 53FC258 8007FD28 23100200 */  negu       $v0, $v0
.Llevel_21_8007FD2C:
/* 53FC25C 8007FD2C 2A104300 */  slt        $v0, $v0, $v1
/* 53FC260 8007FD30 03004010 */  beqz       $v0, .Llevel_21_8007FD40
/* 53FC264 8007FD34 0F00022A */   slti      $v0, $s0, 0xF
/* 53FC268 8007FD38 21808000 */  addu       $s0, $a0, $zero
/* 53FC26C 8007FD3C 0F00022A */  slti       $v0, $s0, 0xF
.Llevel_21_8007FD40:
/* 53FC270 8007FD40 03004014 */  bnez       $v0, .Llevel_21_8007FD50
/* 53FC274 8007FD44 F2FF022A */   slti      $v0, $s0, -0xE
/* 53FC278 8007FD48 0E001024 */  addiu      $s0, $zero, 0xE
/* 53FC27C 8007FD4C F2FF022A */  slti       $v0, $s0, -0xE
.Llevel_21_8007FD50:
/* 53FC280 8007FD50 02004010 */  beqz       $v0, .Llevel_21_8007FD5C
/* 53FC284 8007FD54 00000000 */   nop
/* 53FC288 8007FD58 F2FF1024 */  addiu      $s0, $zero, -0xE
.Llevel_21_8007FD5C:
/* 53FC28C 8007FD5C 45002292 */  lbu        $v0, 0x45($s1)
/* 53FC290 8007FD60 00000000 */  nop
/* 53FC294 8007FD64 21105000 */  addu       $v0, $v0, $s0
/* 53FC298 8007FD68 03000016 */  bnez       $s0, .Llevel_21_8007FD78
/* 53FC29C 8007FD6C 450022A2 */   sb        $v0, 0x45($s1)
/* 53FC2A0 8007FD70 02000224 */  addiu      $v0, $zero, 0x2
/* 53FC2A4 8007FD74 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_21_8007FD78:
/* 53FC2A8 8007FD78 2400BF8F */  lw         $ra, 0x24($sp)
/* 53FC2AC 8007FD7C 2000B28F */  lw         $s2, 0x20($sp)
/* 53FC2B0 8007FD80 1C00B18F */  lw         $s1, 0x1C($sp)
/* 53FC2B4 8007FD84 1800B08F */  lw         $s0, 0x18($sp)
/* 53FC2B8 8007FD88 2800BD27 */  addiu      $sp, $sp, 0x28
/* 53FC2BC 8007FD8C 0800E003 */  jr         $ra
/* 53FC2C0 8007FD90 00000000 */   nop
.size func_level_21_8007FC58, . - func_level_21_8007FC58
