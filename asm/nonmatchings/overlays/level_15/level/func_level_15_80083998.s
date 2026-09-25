.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_80083998
/* 49BDEC8 80083998 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 49BDECC 8008399C 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 49BDED0 800839A0 21988000 */  addu       $s3, $a0, $zero
/* 49BDED4 800839A4 8000B4AF */  sw         $s4, 0x80($sp)
/* 49BDED8 800839A8 21A0A000 */  addu       $s4, $a1, $zero
/* 49BDEDC 800839AC 7400B1AF */  sw         $s1, 0x74($sp)
/* 49BDEE0 800839B0 2188C000 */  addu       $s1, $a2, $zero
/* 49BDEE4 800839B4 8C00B7AF */  sw         $s7, 0x8C($sp)
/* 49BDEE8 800839B8 21B80000 */  addu       $s7, $zero, $zero
/* 49BDEEC 800839BC 8800B6AF */  sw         $s6, 0x88($sp)
/* 49BDEF0 800839C0 9000BFAF */  sw         $ra, 0x90($sp)
/* 49BDEF4 800839C4 8400B5AF */  sw         $s5, 0x84($sp)
/* 49BDEF8 800839C8 7800B2AF */  sw         $s2, 0x78($sp)
/* 49BDEFC 800839CC 7000B0AF */  sw         $s0, 0x70($sp)
/* 49BDF00 800839D0 02008286 */  lh         $v0, 0x2($s4)
/* 49BDF04 800839D4 0C00838E */  lw         $v1, 0xC($s4)
/* 49BDF08 800839D8 00110200 */  sll        $v0, $v0, 4
/* 49BDF0C 800839DC 21A86200 */  addu       $s5, $v1, $v0
/* 49BDF10 800839E0 00002386 */  lh         $v1, 0x0($s1)
/* 49BDF14 800839E4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 49BDF18 800839E8 09006214 */  bne        $v1, $v0, .Llevel_15_80083A10
/* 49BDF1C 800839EC 21B00000 */   addu      $s6, $zero, $zero
/* 49BDF20 800839F0 45006292 */  lbu        $v0, 0x45($s3)
/* 49BDF24 800839F4 00000000 */  nop
/* 49BDF28 800839F8 00110200 */  sll        $v0, $v0, 4
/* 49BDF2C 800839FC 000022A6 */  sh         $v0, 0x0($s1)
/* 49BDF30 80083A00 46006292 */  lbu        $v0, 0x46($s3)
/* 49BDF34 80083A04 00000000 */  nop
/* 49BDF38 80083A08 00110200 */  sll        $v0, $v0, 4
/* 49BDF3C 80083A0C 020022A6 */  sh         $v0, 0x2($s1)
.Llevel_15_80083A10:
/* 49BDF40 80083A10 1000A427 */  addiu      $a0, $sp, 0x10
/* 49BDF44 80083A14 5E3C010C */  jal        func_8004F178
/* 49BDF48 80083A18 0C006526 */   addiu     $a1, $s3, 0xC
/* 49BDF4C 80083A1C 38006286 */  lh         $v0, 0x38($s3)
/* 49BDF50 80083A20 00000000 */  nop
/* 49BDF54 80083A24 1A004010 */  beqz       $v0, .Llevel_15_80083A90
/* 49BDF58 80083A28 5800A427 */   addiu     $a0, $sp, 0x58
/* 49BDF5C 80083A2C 4000B027 */  addiu      $s0, $sp, 0x40
/* 49BDF60 80083A30 5800A0A3 */  sb         $zero, 0x58($sp)
/* 49BDF64 80083A34 00002296 */  lhu        $v0, 0x0($s1)
/* 49BDF68 80083A38 21280002 */  addu       $a1, $s0, $zero
/* 49BDF6C 80083A3C 02110200 */  srl        $v0, $v0, 4
/* 49BDF70 80083A40 5900A2A3 */  sb         $v0, 0x59($sp)
/* 49BDF74 80083A44 02002296 */  lhu        $v0, 0x2($s1)
/* 49BDF78 80083A48 21300000 */  addu       $a2, $zero, $zero
/* 49BDF7C 80083A4C 02110200 */  srl        $v0, $v0, 4
/* 49BDF80 80083A50 A43A010C */  jal        func_8004EA90
/* 49BDF84 80083A54 5A00A2A3 */   sb        $v0, 0x5A($sp)
/* 49BDF88 80083A58 21200002 */  addu       $a0, $s0, $zero
/* 49BDF8C 80083A5C 3000B027 */  addiu      $s0, $sp, 0x30
/* 49BDF90 80083A60 21280002 */  addu       $a1, $s0, $zero
/* 49BDF94 80083A64 3000A0AF */  sw         $zero, 0x30($sp)
/* 49BDF98 80083A68 3400A0AF */  sw         $zero, 0x34($sp)
/* 49BDF9C 80083A6C 38006286 */  lh         $v0, 0x38($s3)
/* 49BDFA0 80083A70 21300002 */  addu       $a2, $s0, $zero
/* 49BDFA4 80083A74 23100200 */  negu       $v0, $v0
/* 49BDFA8 80083A78 5B3B010C */  jal        func_8004ED6C
/* 49BDFAC 80083A7C 3800A2AF */   sw        $v0, 0x38($sp)
/* 49BDFB0 80083A80 1000A427 */  addiu      $a0, $sp, 0x10
/* 49BDFB4 80083A84 21288000 */  addu       $a1, $a0, $zero
/* 49BDFB8 80083A88 653C010C */  jal        func_8004F194
/* 49BDFBC 80083A8C 21300002 */   addu      $a2, $s0, $zero
.Llevel_15_80083A90:
/* 49BDFC0 80083A90 01000624 */  addiu      $a2, $zero, 0x1
/* 49BDFC4 80083A94 0000A38E */  lw         $v1, 0x0($s5)
/* 49BDFC8 80083A98 1000A48F */  lw         $a0, 0x10($sp)
/* 49BDFCC 80083A9C 0400A28E */  lw         $v0, 0x4($s5)
/* 49BDFD0 80083AA0 1400A58F */  lw         $a1, 0x14($sp)
/* 49BDFD4 80083AA4 23206400 */  subu       $a0, $v1, $a0
/* 49BDFD8 80083AA8 203A010C */  jal        func_8004E880
/* 49BDFDC 80083AAC 23284500 */   subu      $a1, $v0, $a1
/* 49BDFE0 80083AB0 1000A427 */  addiu      $a0, $sp, 0x10
/* 49BDFE4 80083AB4 2128A002 */  addu       $a1, $s5, $zero
/* 49BDFE8 80083AB8 CD3C010C */  jal        func_8004F334
/* 49BDFEC 80083ABC 21804000 */   addu      $s0, $v0, $zero
/* 49BDFF0 80083AC0 21204000 */  addu       $a0, $v0, $zero
/* 49BDFF4 80083AC4 0800A28E */  lw         $v0, 0x8($s5)
/* 49BDFF8 80083AC8 1800A58F */  lw         $a1, 0x18($sp)
/* 49BDFFC 80083ACC 01000624 */  addiu      $a2, $zero, 0x1
/* 49BE000 80083AD0 203A010C */  jal        func_8004E880
/* 49BE004 80083AD4 23284500 */   subu      $a1, $v0, $a1
/* 49BE008 80083AD8 21280002 */  addu       $a1, $s0, $zero
/* 49BE00C 80083ADC 02002486 */  lh         $a0, 0x2($s1)
/* 49BE010 80083AE0 57D8000C */  jal        SubAngle12
/* 49BE014 80083AE4 21804000 */   addu      $s0, $v0, $zero
/* 49BE018 80083AE8 21904000 */  addu       $s2, $v0, $zero
/* 49BE01C 80083AEC 00002486 */  lh         $a0, 0x0($s1)
/* 49BE020 80083AF0 57D8000C */  jal        SubAngle12
/* 49BE024 80083AF4 21280002 */   addu      $a1, $s0, $zero
/* 49BE028 80083AF8 0E002386 */  lh         $v1, 0xE($s1)
/* 49BE02C 80083AFC 00000000 */  nop
/* 49BE030 80083B00 0E006010 */  beqz       $v1, .Llevel_15_80083B3C
/* 49BE034 80083B04 21284000 */   addu      $a1, $v0, $zero
/* 49BE038 80083B08 02004106 */  bgez       $s2, .Llevel_15_80083B14
/* 49BE03C 80083B0C 21104002 */   addu      $v0, $s2, $zero
/* 49BE040 80083B10 23100200 */  negu       $v0, $v0
.Llevel_15_80083B14:
/* 49BE044 80083B14 01044228 */  slti       $v0, $v0, 0x401
/* 49BE048 80083B18 07004010 */  beqz       $v0, .Llevel_15_80083B38
/* 49BE04C 80083B1C 00000000 */   nop
/* 49BE050 80083B20 0200A104 */  bgez       $a1, .Llevel_15_80083B2C
/* 49BE054 80083B24 2110A000 */   addu      $v0, $a1, $zero
/* 49BE058 80083B28 23100200 */  negu       $v0, $v0
.Llevel_15_80083B2C:
/* 49BE05C 80083B2C 01044228 */  slti       $v0, $v0, 0x401
/* 49BE060 80083B30 02004014 */  bnez       $v0, .Llevel_15_80083B3C
/* 49BE064 80083B34 00000000 */   nop
.Llevel_15_80083B38:
/* 49BE068 80083B38 01001624 */  addiu      $s6, $zero, 0x1
.Llevel_15_80083B3C:
/* 49BE06C 80083B3C 06002386 */  lh         $v1, 0x6($s1)
/* 49BE070 80083B40 00000000 */  nop
/* 49BE074 80083B44 2A107200 */  slt        $v0, $v1, $s2
/* 49BE078 80083B48 02004010 */  beqz       $v0, .Llevel_15_80083B54
/* 49BE07C 80083B4C 23200300 */   negu      $a0, $v1
/* 49BE080 80083B50 21906000 */  addu       $s2, $v1, $zero
.Llevel_15_80083B54:
/* 49BE084 80083B54 2A104402 */  slt        $v0, $s2, $a0
/* 49BE088 80083B58 02004010 */  beqz       $v0, .Llevel_15_80083B64
/* 49BE08C 80083B5C 2A106500 */   slt       $v0, $v1, $a1
/* 49BE090 80083B60 21908000 */  addu       $s2, $a0, $zero
.Llevel_15_80083B64:
/* 49BE094 80083B64 03004010 */  beqz       $v0, .Llevel_15_80083B74
/* 49BE098 80083B68 2A10A400 */   slt       $v0, $a1, $a0
/* 49BE09C 80083B6C 21286000 */  addu       $a1, $v1, $zero
/* 49BE0A0 80083B70 2A10A400 */  slt        $v0, $a1, $a0
.Llevel_15_80083B74:
/* 49BE0A4 80083B74 02004010 */  beqz       $v0, .Llevel_15_80083B80
/* 49BE0A8 80083B78 00000000 */   nop
/* 49BE0AC 80083B7C 21288000 */  addu       $a1, $a0, $zero
.Llevel_15_80083B80:
/* 49BE0B0 80083B80 0A002296 */  lhu        $v0, 0xA($s1)
/* 49BE0B4 80083B84 08002396 */  lhu        $v1, 0x8($s1)
/* 49BE0B8 80083B88 21105200 */  addu       $v0, $v0, $s2
/* 49BE0BC 80083B8C 02004106 */  bgez       $s2, .Llevel_15_80083B98
/* 49BE0C0 80083B90 00000000 */   nop
/* 49BE0C4 80083B94 23901200 */  negu       $s2, $s2
.Llevel_15_80083B98:
/* 49BE0C8 80083B98 21186500 */  addu       $v1, $v1, $a1
/* 49BE0CC 80083B9C 0A0022A6 */  sh         $v0, 0xA($s1)
/* 49BE0D0 80083BA0 0A002286 */  lh         $v0, 0xA($s1)
/* 49BE0D4 80083BA4 0200A104 */  bgez       $a1, .Llevel_15_80083BB0
/* 49BE0D8 80083BA8 00000000 */   nop
/* 49BE0DC 80083BAC 23280500 */  negu       $a1, $a1
.Llevel_15_80083BB0:
/* 49BE0E0 80083BB0 2A104202 */  slt        $v0, $s2, $v0
/* 49BE0E4 80083BB4 02004010 */  beqz       $v0, .Llevel_15_80083BC0
/* 49BE0E8 80083BB8 080023A6 */   sh        $v1, 0x8($s1)
/* 49BE0EC 80083BBC 0A0032A6 */  sh         $s2, 0xA($s1)
.Llevel_15_80083BC0:
/* 49BE0F0 80083BC0 0A002286 */  lh         $v0, 0xA($s1)
/* 49BE0F4 80083BC4 23181200 */  negu       $v1, $s2
/* 49BE0F8 80083BC8 2A104300 */  slt        $v0, $v0, $v1
/* 49BE0FC 80083BCC 02004010 */  beqz       $v0, .Llevel_15_80083BD8
/* 49BE100 80083BD0 00000000 */   nop
/* 49BE104 80083BD4 0A0023A6 */  sh         $v1, 0xA($s1)
.Llevel_15_80083BD8:
/* 49BE108 80083BD8 08002286 */  lh         $v0, 0x8($s1)
/* 49BE10C 80083BDC 00000000 */  nop
/* 49BE110 80083BE0 2A10A200 */  slt        $v0, $a1, $v0
/* 49BE114 80083BE4 02004010 */  beqz       $v0, .Llevel_15_80083BF0
/* 49BE118 80083BE8 00000000 */   nop
/* 49BE11C 80083BEC 080025A6 */  sh         $a1, 0x8($s1)
.Llevel_15_80083BF0:
/* 49BE120 80083BF0 08002286 */  lh         $v0, 0x8($s1)
/* 49BE124 80083BF4 23180500 */  negu       $v1, $a1
/* 49BE128 80083BF8 2A104300 */  slt        $v0, $v0, $v1
/* 49BE12C 80083BFC 02004010 */  beqz       $v0, .Llevel_15_80083C08
/* 49BE130 80083C00 00000000 */   nop
/* 49BE134 80083C04 080023A6 */  sh         $v1, 0x8($s1)
.Llevel_15_80083C08:
/* 49BE138 80083C08 00002396 */  lhu        $v1, 0x0($s1)
/* 49BE13C 80083C0C 08002296 */  lhu        $v0, 0x8($s1)
/* 49BE140 80083C10 0A002496 */  lhu        $a0, 0xA($s1)
/* 49BE144 80083C14 21186200 */  addu       $v1, $v1, $v0
/* 49BE148 80083C18 FF0F6330 */  andi       $v1, $v1, 0xFFF
/* 49BE14C 80083C1C 02002296 */  lhu        $v0, 0x2($s1)
/* 49BE150 80083C20 02290300 */  srl        $a1, $v1, 4
/* 49BE154 80083C24 000023A6 */  sh         $v1, 0x0($s1)
/* 49BE158 80083C28 21104400 */  addu       $v0, $v0, $a0
/* 49BE15C 80083C2C FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 49BE160 80083C30 020022A6 */  sh         $v0, 0x2($s1)
/* 49BE164 80083C34 450065A2 */  sb         $a1, 0x45($s3)
/* 49BE168 80083C38 02002296 */  lhu        $v0, 0x2($s1)
/* 49BE16C 80083C3C 00000000 */  nop
/* 49BE170 80083C40 02110200 */  srl        $v0, $v0, 4
/* 49BE174 80083C44 460062A2 */  sb         $v0, 0x46($s3)
/* 49BE178 80083C48 02002486 */  lh         $a0, 0x2($s1)
/* 49BE17C 80083C4C 8B3A010C */  jal        func_8004EA2C
/* 49BE180 80083C50 00000000 */   nop
/* 49BE184 80083C54 00002486 */  lh         $a0, 0x0($s1)
/* 49BE188 80083C58 8B3A010C */  jal        func_8004EA2C
/* 49BE18C 80083C5C 21804000 */   addu      $s0, $v0, $zero
/* 49BE190 80083C60 04002386 */  lh         $v1, 0x4($s1)
/* 49BE194 80083C64 00000000 */  nop
/* 49BE198 80083C68 18000302 */  mult       $s0, $v1
/* 49BE19C 80083C6C 12380000 */  mflo       $a3
/* 49BE1A0 80083C70 031B0700 */  sra        $v1, $a3, 12
/* 49BE1A4 80083C74 00000000 */  nop
/* 49BE1A8 80083C78 18006200 */  mult       $v1, $v0
/* 49BE1AC 80083C7C 12380000 */  mflo       $a3
/* 49BE1B0 80083C80 03130700 */  sra        $v0, $a3, 12
/* 49BE1B4 80083C84 2000A2AF */  sw         $v0, 0x20($sp)
/* 49BE1B8 80083C88 02002486 */  lh         $a0, 0x2($s1)
/* 49BE1BC 80083C8C 793A010C */  jal        func_8004E9E4
/* 49BE1C0 80083C90 00000000 */   nop
/* 49BE1C4 80083C94 00002486 */  lh         $a0, 0x0($s1)
/* 49BE1C8 80083C98 8B3A010C */  jal        func_8004EA2C
/* 49BE1CC 80083C9C 21804000 */   addu      $s0, $v0, $zero
/* 49BE1D0 80083CA0 04002386 */  lh         $v1, 0x4($s1)
/* 49BE1D4 80083CA4 00000000 */  nop
/* 49BE1D8 80083CA8 18000302 */  mult       $s0, $v1
/* 49BE1DC 80083CAC 12380000 */  mflo       $a3
/* 49BE1E0 80083CB0 031B0700 */  sra        $v1, $a3, 12
/* 49BE1E4 80083CB4 00000000 */  nop
/* 49BE1E8 80083CB8 18006200 */  mult       $v1, $v0
/* 49BE1EC 80083CBC 12380000 */  mflo       $a3
/* 49BE1F0 80083CC0 03130700 */  sra        $v0, $a3, 12
/* 49BE1F4 80083CC4 2400A2AF */  sw         $v0, 0x24($sp)
/* 49BE1F8 80083CC8 00002486 */  lh         $a0, 0x0($s1)
/* 49BE1FC 80083CCC 793A010C */  jal        func_8004E9E4
/* 49BE200 80083CD0 00000000 */   nop
/* 49BE204 80083CD4 04002386 */  lh         $v1, 0x4($s1)
/* 49BE208 80083CD8 00000000 */  nop
/* 49BE20C 80083CDC 18004300 */  mult       $v0, $v1
/* 49BE210 80083CE0 0C006426 */  addiu      $a0, $s3, 0xC
/* 49BE214 80083CE4 21288000 */  addu       $a1, $a0, $zero
/* 49BE218 80083CE8 2000B027 */  addiu      $s0, $sp, 0x20
/* 49BE21C 80083CEC 21300002 */  addu       $a2, $s0, $zero
/* 49BE220 80083CF0 12380000 */  mflo       $a3
/* 49BE224 80083CF4 03130700 */  sra        $v0, $a3, 12
/* 49BE228 80083CF8 653C010C */  jal        func_8004F194
/* 49BE22C 80083CFC 2800A2AF */   sw        $v0, 0x28($sp)
/* 49BE230 80083D00 1000A427 */  addiu      $a0, $sp, 0x10
/* 49BE234 80083D04 21288000 */  addu       $a1, $a0, $zero
/* 49BE238 80083D08 653C010C */  jal        func_8004F194
/* 49BE23C 80083D0C 21300002 */   addu      $a2, $s0, $zero
/* 49BE240 80083D10 21206002 */  addu       $a0, $s3, $zero
/* 49BE244 80083D14 4957010C */  jal        func_80055D24
/* 49BE248 80083D18 02000524 */   addiu     $a1, $zero, 0x2
/* 49BE24C 80083D1C 6000B027 */  addiu      $s0, $sp, 0x60
/* 49BE250 80083D20 21200002 */  addu       $a0, $s0, $zero
/* 49BE254 80083D24 1000A527 */  addiu      $a1, $sp, 0x10
/* 49BE258 80083D28 723C010C */  jal        func_8004F1C8
/* 49BE25C 80083D2C 2130A002 */   addu      $a2, $s5, $zero
/* 49BE260 80083D30 21200002 */  addu       $a0, $s0, $zero
/* 49BE264 80083D34 7A3B010C */  jal        func_8004EDE8
/* 49BE268 80083D38 01000524 */   addiu     $a1, $zero, 0x1
/* 49BE26C 80083D3C 0C002386 */  lh         $v1, 0xC($s1)
/* 49BE270 80083D40 00000000 */  nop
/* 49BE274 80083D44 2A104300 */  slt        $v0, $v0, $v1
/* 49BE278 80083D48 03004014 */  bnez       $v0, .Llevel_15_80083D58
/* 49BE27C 80083D4C 00000000 */   nop
/* 49BE280 80083D50 1400C012 */  beqz       $s6, .Llevel_15_80083DA4
/* 49BE284 80083D54 2110E002 */   addu      $v0, $s7, $zero
.Llevel_15_80083D58:
/* 49BE288 80083D58 02008286 */  lh         $v0, 0x2($s4)
/* 49BE28C 80083D5C 0A008486 */  lh         $a0, 0xA($s4)
/* 49BE290 80083D60 00008386 */  lh         $v1, 0x0($s4)
/* 49BE294 80083D64 21104400 */  addu       $v0, $v0, $a0
/* 49BE298 80083D68 21104300 */  addu       $v0, $v0, $v1
/* 49BE29C 80083D6C 1A004300 */  div        $zero, $v0, $v1
/* 49BE2A0 80083D70 02006014 */  bnez       $v1, .Llevel_15_80083D7C
/* 49BE2A4 80083D74 00000000 */   nop
/* 49BE2A8 80083D78 0D000700 */  break      7
.Llevel_15_80083D7C:
/* 49BE2AC 80083D7C FFFF0124 */  addiu      $at, $zero, -0x1
/* 49BE2B0 80083D80 04006114 */  bne        $v1, $at, .Llevel_15_80083D94
/* 49BE2B4 80083D84 0080013C */   lui       $at, (0x80000000 >> 16)
/* 49BE2B8 80083D88 02004114 */  bne        $v0, $at, .Llevel_15_80083D94
/* 49BE2BC 80083D8C 00000000 */   nop
/* 49BE2C0 80083D90 0D000600 */  break      6
.Llevel_15_80083D94:
/* 49BE2C4 80083D94 10180000 */  mfhi       $v1
/* 49BE2C8 80083D98 01001724 */  addiu      $s7, $zero, 0x1
/* 49BE2CC 80083D9C 020083A6 */  sh         $v1, 0x2($s4)
/* 49BE2D0 80083DA0 2110E002 */  addu       $v0, $s7, $zero
.Llevel_15_80083DA4:
/* 49BE2D4 80083DA4 9000BF8F */  lw         $ra, 0x90($sp)
/* 49BE2D8 80083DA8 8C00B78F */  lw         $s7, 0x8C($sp)
/* 49BE2DC 80083DAC 8800B68F */  lw         $s6, 0x88($sp)
/* 49BE2E0 80083DB0 8400B58F */  lw         $s5, 0x84($sp)
/* 49BE2E4 80083DB4 8000B48F */  lw         $s4, 0x80($sp)
/* 49BE2E8 80083DB8 7C00B38F */  lw         $s3, 0x7C($sp)
/* 49BE2EC 80083DBC 7800B28F */  lw         $s2, 0x78($sp)
/* 49BE2F0 80083DC0 7400B18F */  lw         $s1, 0x74($sp)
/* 49BE2F4 80083DC4 7000B08F */  lw         $s0, 0x70($sp)
/* 49BE2F8 80083DC8 9800BD27 */  addiu      $sp, $sp, 0x98
/* 49BE2FC 80083DCC 0800E003 */  jr         $ra
/* 49BE300 80083DD0 00000000 */   nop
.size func_level_15_80083998, . - func_level_15_80083998
