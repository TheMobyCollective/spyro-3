.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_80074D90
/* 7AA0AC0 80074D90 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 7AA0AC4 80074D94 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 7AA0AC8 80074D98 21888000 */  addu       $s1, $a0, $zero
/* 7AA0ACC 80074D9C 0780053C */  lui        $a1, %hi(D_80070328)
/* 7AA0AD0 80074DA0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7AA0AD4 80074DA4 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 7AA0AD8 80074DA8 5800B4AF */  sw         $s4, 0x58($sp)
/* 7AA0ADC 80074DAC 5400B3AF */  sw         $s3, 0x54($sp)
/* 7AA0AE0 80074DB0 5000B2AF */  sw         $s2, 0x50($sp)
/* 7AA0AE4 80074DB4 4800B0AF */  sw         $s0, 0x48($sp)
/* 7AA0AE8 80074DB8 0000328E */  lw         $s2, 0x0($s1)
/* 7AA0AEC 80074DBC CD3C010C */  jal        func_8004F334
/* 7AA0AF0 80074DC0 0C002426 */   addiu     $a0, $s1, 0xC
/* 7AA0AF4 80074DC4 21A04000 */  addu       $s4, $v0, $zero
/* 7AA0AF8 80074DC8 48002392 */  lbu        $v1, 0x48($s1)
/* 7AA0AFC 80074DCC 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA0B00 80074DD0 06006214 */  bne        $v1, $v0, .Llevel_37_80074DEC
/* 7AA0B04 80074DD4 B80B822A */   slti      $v0, $s4, 0xBB8
/* 7AA0B08 80074DD8 46002292 */  lbu        $v0, 0x46($s1)
/* 7AA0B0C 80074DDC 00000000 */  nop
/* 7AA0B10 80074DE0 02004224 */  addiu      $v0, $v0, 0x2
/* 7AA0B14 80074DE4 FED40108 */  j          .Llevel_37_800753F8
/* 7AA0B18 80074DE8 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_37_80074DEC:
/* 7AA0B1C 80074DEC 70004010 */  beqz       $v0, .Llevel_37_80074FB0
/* 7AA0B20 80074DF0 00000000 */   nop
/* 7AA0B24 80074DF4 38002386 */  lh         $v1, 0x38($s1)
/* 7AA0B28 80074DF8 1400228E */  lw         $v0, 0x14($s1)
/* 7AA0B2C 80074DFC 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 7AA0B30 80074E00 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 7AA0B34 80074E04 23184300 */  subu       $v1, $v0, $v1
/* 7AA0B38 80074E08 23106400 */  subu       $v0, $v1, $a0
/* 7AA0B3C 80074E0C 05004004 */  bltz       $v0, .Llevel_37_80074E24
/* 7AA0B40 80074E10 F00A4228 */   slti      $v0, $v0, 0xAF0
/* 7AA0B44 80074E14 66004010 */  beqz       $v0, .Llevel_37_80074FB0
/* 7AA0B48 80074E18 00000000 */   nop
/* 7AA0B4C 80074E1C 8DD30108 */  j          .Llevel_37_80074E34
/* 7AA0B50 80074E20 00000000 */   nop
.Llevel_37_80074E24:
/* 7AA0B54 80074E24 23108300 */  subu       $v0, $a0, $v1
/* 7AA0B58 80074E28 F00A4228 */  slti       $v0, $v0, 0xAF0
/* 7AA0B5C 80074E2C 60004010 */  beqz       $v0, .Llevel_37_80074FB0
/* 7AA0B60 80074E30 00000000 */   nop
.Llevel_37_80074E34:
/* 7AA0B64 80074E34 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 7AA0B68 80074E38 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 7AA0B6C 80074E3C 00000000 */  nop
/* 7AA0B70 80074E40 30004014 */  bnez       $v0, .Llevel_37_80074F04
/* 7AA0B74 80074E44 00000000 */   nop
/* 7AA0B78 80074E48 0780133C */  lui        $s3, %hi(D_80070328 + 0x280)
/* 7AA0B7C 80074E4C A8057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x280)
/* 7AA0B80 80074E50 0000628E */  lw         $v0, 0x0($s3)
/* 7AA0B84 80074E54 00000000 */  nop
/* 7AA0B88 80074E58 55004004 */  bltz       $v0, .Llevel_37_80074FB0
/* 7AA0B8C 80074E5C 78000424 */   addiu     $a0, $zero, 0x78
/* 7AA0B90 80074E60 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA0B94 80074E64 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA0B98 80074E68 00000000 */  nop
/* 7AA0B9C 80074E6C 09F84000 */  jalr       $v0
/* 7AA0BA0 80074E70 21282002 */   addu      $a1, $s1, $zero
/* 7AA0BA4 80074E74 0780013C */  lui        $at, %hi(D_8006C65C)
/* 7AA0BA8 80074E78 5CC622AC */  sw         $v0, %lo(D_8006C65C)($at)
/* 7AA0BAC 80074E7C 4C004010 */  beqz       $v0, .Llevel_37_80074FB0
/* 7AA0BB0 80074E80 00000000 */   nop
/* 7AA0BB4 80074E84 0000508C */  lw         $s0, 0x0($v0)
/* 7AA0BB8 80074E88 00000000 */  nop
/* 7AA0BBC 80074E8C 02000592 */  lbu        $a1, 0x2($s0)
/* 7AA0BC0 80074E90 F0EF000C */  jal        func_8003BFC0
/* 7AA0BC4 80074E94 21204000 */   addu      $a0, $v0, $zero
/* 7AA0BC8 80074E98 06004014 */  bnez       $v0, .Llevel_37_80074EB4
/* 7AA0BCC 80074E9C 21280000 */   addu      $a1, $zero, $zero
/* 7AA0BD0 80074EA0 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 7AA0BD4 80074EA4 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 7AA0BD8 80074EA8 AFEE000C */  jal        func_8003BABC
/* 7AA0BDC 80074EAC 21300000 */   addu      $a2, $zero, $zero
/* 7AA0BE0 80074EB0 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_37_80074EB4:
/* 7AA0BE4 80074EB4 36002386 */  lh         $v1, 0x36($s1)
/* 7AA0BE8 80074EB8 10000224 */  addiu      $v0, $zero, 0x10
/* 7AA0BEC 80074EBC 04006214 */  bne        $v1, $v0, .Llevel_37_80074ED0
/* 7AA0BF0 80074EC0 03000324 */   addiu     $v1, $zero, 0x3
/* 7AA0BF4 80074EC4 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA0BF8 80074EC8 FDD30108 */  j          .Llevel_37_80074FF4
/* 7AA0BFC 80074ECC 000062AE */   sw        $v0, 0x0($s3)
.Llevel_37_80074ED0:
/* 7AA0C00 80074ED0 0780023C */  lui        $v0, %hi(D_8006C784)
/* 7AA0C04 80074ED4 84C7428C */  lw         $v0, %lo(D_8006C784)($v0)
/* 7AA0C08 80074ED8 000063AE */  sw         $v1, 0x0($s3)
/* 7AA0C0C 80074EDC 01004224 */  addiu      $v0, $v0, 0x1
/* 7AA0C10 80074EE0 0780013C */  lui        $at, %hi(D_8006C784)
/* 7AA0C14 80074EE4 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 7AA0C18 80074EE8 64004228 */  slti       $v0, $v0, 0x64
/* 7AA0C1C 80074EEC 41004014 */  bnez       $v0, .Llevel_37_80074FF4
/* 7AA0C20 80074EF0 63000224 */   addiu     $v0, $zero, 0x63
/* 7AA0C24 80074EF4 0780013C */  lui        $at, %hi(D_8006C784)
/* 7AA0C28 80074EF8 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 7AA0C2C 80074EFC FDD30108 */  j          .Llevel_37_80074FF4
/* 7AA0C30 80074F00 00000000 */   nop
.Llevel_37_80074F04:
/* 7AA0C34 80074F04 0000508C */  lw         $s0, 0x0($v0)
/* 7AA0C38 80074F08 00000000 */  nop
/* 7AA0C3C 80074F0C 1400028E */  lw         $v0, 0x14($s0)
/* 7AA0C40 80074F10 00000000 */  nop
/* 7AA0C44 80074F14 0A004010 */  beqz       $v0, .Llevel_37_80074F40
/* 7AA0C48 80074F18 21300000 */   addu      $a2, $zero, $zero
/* 7AA0C4C 80074F1C 24005110 */  beq        $v0, $s1, .Llevel_37_80074FB0
/* 7AA0C50 80074F20 00000000 */   nop
/* 7AA0C54 80074F24 00000286 */  lh         $v0, 0x0($s0)
/* 7AA0C58 80074F28 00000000 */  nop
/* 7AA0C5C 80074F2C 1F004228 */  slti       $v0, $v0, 0x1F
/* 7AA0C60 80074F30 1F004014 */  bnez       $v0, .Llevel_37_80074FB0
/* 7AA0C64 80074F34 1E000224 */   addiu     $v0, $zero, 0x1E
/* 7AA0C68 80074F38 ECD30108 */  j          .Llevel_37_80074FB0
/* 7AA0C6C 80074F3C 000002A6 */   sh        $v0, 0x0($s0)
.Llevel_37_80074F40:
/* 7AA0C70 80074F40 0C00238E */  lw         $v1, 0xC($s1)
/* 7AA0C74 80074F44 0780043C */  lui        $a0, %hi(D_80070328)
/* 7AA0C78 80074F48 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 7AA0C7C 80074F4C 1000228E */  lw         $v0, 0x10($s1)
/* 7AA0C80 80074F50 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7AA0C84 80074F54 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7AA0C88 80074F58 23206400 */  subu       $a0, $v1, $a0
/* 7AA0C8C 80074F5C 203A010C */  jal        func_8004E880
/* 7AA0C90 80074F60 23284500 */   subu      $a1, $v0, $a1
/* 7AA0C94 80074F64 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 7AA0C98 80074F68 36038490 */  lbu        $a0, %lo(D_80070328 + 0xE)($a0)
/* 7AA0C9C 80074F6C 4FD8000C */  jal        func_8003613C
/* 7AA0CA0 80074F70 21284000 */   addu      $a1, $v0, $zero
/* 7AA0CA4 80074F74 02004104 */  bgez       $v0, .Llevel_37_80074F80
/* 7AA0CA8 80074F78 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 7AA0CAC 80074F7C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_37_80074F80:
/* 7AA0CB0 80074F80 0C0042A6 */  sh         $v0, 0xC($s2)
/* 7AA0CB4 80074F84 50000424 */  addiu      $a0, $zero, 0x50
/* 7AA0CB8 80074F88 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA0CBC 80074F8C 120040A2 */  sb         $zero, 0x12($s2)
/* 7AA0CC0 80074F90 480022A2 */  sb         $v0, 0x48($s1)
/* 7AA0CC4 80074F94 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 7AA0CC8 80074F98 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 7AA0CCC 80074F9C 82000524 */  addiu      $a1, $zero, 0x82
/* 7AA0CD0 80074FA0 490040A0 */  sb         $zero, 0x49($v0)
/* 7AA0CD4 80074FA4 DBD8000C */  jal        func_8003636C
/* 7AA0CD8 80074FA8 140011AE */   sw        $s1, 0x14($s0)
/* 7AA0CDC 80074FAC 000002A6 */  sh         $v0, 0x0($s0)
.Llevel_37_80074FB0:
/* 7AA0CE0 80074FB0 48002392 */  lbu        $v1, 0x48($s1)
/* 7AA0CE4 80074FB4 00000000 */  nop
/* 7AA0CE8 80074FB8 05006010 */  beqz       $v1, .Llevel_37_80074FD0
/* 7AA0CEC 80074FBC 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA0CF0 80074FC0 92006210 */  beq        $v1, $v0, .Llevel_37_8007520C
/* 7AA0CF4 80074FC4 00000000 */   nop
/* 7AA0CF8 80074FC8 B8D40108 */  j          .Llevel_37_800752E0
/* 7AA0CFC 80074FCC 00000000 */   nop
.Llevel_37_80074FD0:
/* 7AA0D00 80074FD0 0E004426 */  addiu      $a0, $s2, 0xE
/* 7AA0D04 80074FD4 69D6000C */  jal        func_800359A4
/* 7AA0D08 80074FD8 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA0D0C 80074FDC 09004010 */  beqz       $v0, .Llevel_37_80075004
/* 7AA0D10 80074FE0 00000000 */   nop
/* 7AA0D14 80074FE4 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7AA0D18 80074FE8 00000000 */  nop
/* 7AA0D1C 80074FEC 09004014 */  bnez       $v0, .Llevel_37_80075014
/* 7AA0D20 80074FF0 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_37_80074FF4:
/* 7AA0D24 80074FF4 C656010C */  jal        func_80055B18
/* 7AA0D28 80074FF8 21202002 */   addu      $a0, $s1, $zero
/* 7AA0D2C 80074FFC FED40108 */  j          .Llevel_37_800753F8
/* 7AA0D30 80075000 00000000 */   nop
.Llevel_37_80075004:
/* 7AA0D34 80075004 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7AA0D38 80075008 00000000 */  nop
/* 7AA0D3C 8007500C B8004010 */  beqz       $v0, .Llevel_37_800752F0
/* 7AA0D40 80075010 0130822A */   slti      $v0, $s4, 0x3001
.Llevel_37_80075014:
/* 7AA0D44 80075014 B2004010 */  beqz       $v0, .Llevel_37_800752E0
/* 7AA0D48 80075018 11004426 */   addiu     $a0, $s2, 0x11
/* 7AA0D4C 8007501C 69D6000C */  jal        func_800359A4
/* 7AA0D50 80075020 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA0D54 80075024 13004010 */  beqz       $v0, .Llevel_37_80075074
/* 7AA0D58 80075028 21202002 */   addu      $a0, $s1, $zero
/* 7AA0D5C 8007502C 1E000424 */  addiu      $a0, $zero, 0x1E
/* 7AA0D60 80075030 F7D8000C */  jal        func_800363DC
/* 7AA0D64 80075034 5A000524 */   addiu     $a1, $zero, 0x5A
/* 7AA0D68 80075038 9171010C */  jal        rand
/* 7AA0D6C 8007503C 21804000 */   addu      $s0, $v0, $zero
/* 7AA0D70 80075040 01004230 */  andi       $v0, $v0, 0x1
/* 7AA0D74 80075044 02004010 */  beqz       $v0, .Llevel_37_80075050
/* 7AA0D78 80075048 00000000 */   nop
/* 7AA0D7C 8007504C 23801000 */  negu       $s0, $s0
.Llevel_37_80075050:
/* 7AA0D80 80075050 10004492 */  lbu        $a0, 0x10($s2)
/* 7AA0D84 80075054 5FD8000C */  jal        func_8003617C
/* 7AA0D88 80075058 21280002 */   addu      $a1, $s0, $zero
/* 7AA0D8C 8007505C 3C000424 */  addiu      $a0, $zero, 0x3C
/* 7AA0D90 80075060 8C000524 */  addiu      $a1, $zero, 0x8C
/* 7AA0D94 80075064 DBD8000C */  jal        func_8003636C
/* 7AA0D98 80075068 100042A2 */   sb        $v0, 0x10($s2)
/* 7AA0D9C 8007506C 110042A2 */  sb         $v0, 0x11($s2)
/* 7AA0DA0 80075070 21202002 */  addu       $a0, $s1, $zero
.Llevel_37_80075074:
/* 7AA0DA4 80075074 04000624 */  addiu      $a2, $zero, 0x4
/* 7AA0DA8 80075078 0A000724 */  addiu      $a3, $zero, 0xA
/* 7AA0DAC 8007507C 10004592 */  lbu        $a1, 0x10($s2)
/* 7AA0DB0 80075080 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA0DB4 80075084 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA0DB8 80075088 17D6000C */  jal        func_8003585C
/* 7AA0DBC 8007508C 1400A0AF */   sw        $zero, 0x14($sp)
/* 7AA0DC0 80075090 21A04000 */  addu       $s4, $v0, $zero
/* 7AA0DC4 80075094 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA0DC8 80075098 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA0DCC 8007509C 03000224 */  addiu      $v0, $zero, 0x3
/* 7AA0DD0 800750A0 03006214 */  bne        $v1, $v0, .Llevel_37_800750B0
/* 7AA0DD4 800750A4 1E000424 */   addiu     $a0, $zero, 0x1E
/* 7AA0DD8 800750A8 30D40108 */  j          .Llevel_37_800750C0
/* 7AA0DDC 800750AC 2D000424 */   addiu     $a0, $zero, 0x2D
.Llevel_37_800750B0:
/* 7AA0DE0 800750B0 04000224 */  addiu      $v0, $zero, 0x4
/* 7AA0DE4 800750B4 02006214 */  bne        $v1, $v0, .Llevel_37_800750C0
/* 7AA0DE8 800750B8 00000000 */   nop
/* 7AA0DEC 800750BC 3C000424 */  addiu      $a0, $zero, 0x3C
.Llevel_37_800750C0:
/* 7AA0DF0 800750C0 46002292 */  lbu        $v0, 0x46($s1)
/* 7AA0DF4 800750C4 00000000 */  nop
/* 7AA0DF8 800750C8 40100200 */  sll        $v0, $v0, 1
/* 7AA0DFC 800750CC 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA0E00 800750D0 21082200 */  addu       $at, $at, $v0
/* 7AA0E04 800750D4 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7AA0E08 800750D8 00000000 */  nop
/* 7AA0E0C 800750DC 18004400 */  mult       $v0, $a0
/* 7AA0E10 800750E0 12400000 */  mflo       $t0
/* 7AA0E14 800750E4 03130800 */  sra        $v0, $t0, 12
/* 7AA0E18 800750E8 3800A2AF */  sw         $v0, 0x38($sp)
/* 7AA0E1C 800750EC 46002292 */  lbu        $v0, 0x46($s1)
/* 7AA0E20 800750F0 00000000 */  nop
/* 7AA0E24 800750F4 40100200 */  sll        $v0, $v0, 1
/* 7AA0E28 800750F8 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA0E2C 800750FC 21082200 */  addu       $at, $at, $v0
/* 7AA0E30 80075100 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7AA0E34 80075104 00000000 */  nop
/* 7AA0E38 80075108 18004400 */  mult       $v0, $a0
/* 7AA0E3C 8007510C 0C003026 */  addiu      $s0, $s1, 0xC
/* 7AA0E40 80075110 21300002 */  addu       $a2, $s0, $zero
/* 7AA0E44 80075114 4000A0AF */  sw         $zero, 0x40($sp)
/* 7AA0E48 80075118 3800A427 */  addiu      $a0, $sp, 0x38
/* 7AA0E4C 8007511C 21288000 */  addu       $a1, $a0, $zero
/* 7AA0E50 80075120 12400000 */  mflo       $t0
/* 7AA0E54 80075124 03130800 */  sra        $v0, $t0, 12
/* 7AA0E58 80075128 653C010C */  jal        func_8004F194
/* 7AA0E5C 8007512C 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 7AA0E60 80075130 3800A427 */  addiu      $a0, $sp, 0x38
/* 7AA0E64 80075134 6564000C */  jal        func_80019194
/* 7AA0E68 80075138 32000524 */   addiu     $a1, $zero, 0x32
/* 7AA0E6C 8007513C 21984000 */  addu       $s3, $v0, $zero
/* 7AA0E70 80075140 03006016 */  bnez       $s3, .Llevel_37_80075150
/* 7AA0E74 80075144 21200002 */   addu      $a0, $s0, $zero
/* 7AA0E78 80075148 5E3C010C */  jal        func_8004F178
/* 7AA0E7C 8007514C 3800A527 */   addiu     $a1, $sp, 0x38
.Llevel_37_80075150:
/* 7AA0E80 80075150 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AA0E84 80075154 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AA0E88 80075158 00000000 */  nop
/* 7AA0E8C 8007515C 04004230 */  andi       $v0, $v0, 0x4
/* 7AA0E90 80075160 06004014 */  bnez       $v0, .Llevel_37_8007517C
/* 7AA0E94 80075164 00000000 */   nop
/* 7AA0E98 80075168 21200002 */  addu       $a0, $s0, $zero
/* 7AA0E9C 8007516C D668000C */  jal        func_8001A358
/* 7AA0EA0 80075170 00080524 */   addiu     $a1, $zero, 0x800
/* 7AA0EA4 80075174 A758010C */  jal        func_8005629C
/* 7AA0EA8 80075178 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_8007517C:
/* 7AA0EAC 8007517C 0D008012 */  beqz       $s4, .Llevel_37_800751B4
/* 7AA0EB0 80075180 00000000 */   nop
/* 7AA0EB4 80075184 0B006012 */  beqz       $s3, .Llevel_37_800751B4
/* 7AA0EB8 80075188 62000424 */   addiu     $a0, $zero, 0x62
/* 7AA0EBC 8007518C DBD8000C */  jal        func_8003636C
/* 7AA0EC0 80075190 9E000524 */   addiu     $a1, $zero, 0x9E
/* 7AA0EC4 80075194 10004492 */  lbu        $a0, 0x10($s2)
/* 7AA0EC8 80075198 5FD8000C */  jal        func_8003617C
/* 7AA0ECC 8007519C 21284000 */   addu      $a1, $v0, $zero
/* 7AA0ED0 800751A0 1E000424 */  addiu      $a0, $zero, 0x1E
/* 7AA0ED4 800751A4 50000524 */  addiu      $a1, $zero, 0x50
/* 7AA0ED8 800751A8 DBD8000C */  jal        func_8003636C
/* 7AA0EDC 800751AC 100042A2 */   sb        $v0, 0x10($s2)
/* 7AA0EE0 800751B0 110042A2 */  sb         $v0, 0x11($s2)
.Llevel_37_800751B4:
/* 7AA0EE4 800751B4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AA0EE8 800751B8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AA0EEC 800751BC 00000000 */  nop
/* 7AA0EF0 800751C0 03004230 */  andi       $v0, $v0, 0x3
/* 7AA0EF4 800751C4 46004014 */  bnez       $v0, .Llevel_37_800752E0
/* 7AA0EF8 800751C8 0C002426 */   addiu     $a0, $s1, 0xC
/* 7AA0EFC 800751CC CD3C010C */  jal        func_8004F334
/* 7AA0F00 800751D0 21284002 */   addu      $a1, $s2, $zero
/* 7AA0F04 800751D4 D1074228 */  slti       $v0, $v0, 0x7D1
/* 7AA0F08 800751D8 41004014 */  bnez       $v0, .Llevel_37_800752E0
/* 7AA0F0C 800751DC 21300000 */   addu      $a2, $zero, $zero
/* 7AA0F10 800751E0 0000438E */  lw         $v1, 0x0($s2)
/* 7AA0F14 800751E4 0C00248E */  lw         $a0, 0xC($s1)
/* 7AA0F18 800751E8 0400428E */  lw         $v0, 0x4($s2)
/* 7AA0F1C 800751EC 1000258E */  lw         $a1, 0x10($s1)
/* 7AA0F20 800751F0 23206400 */  subu       $a0, $v1, $a0
/* 7AA0F24 800751F4 203A010C */  jal        func_8004E880
/* 7AA0F28 800751F8 23284500 */   subu      $a1, $v0, $a1
/* 7AA0F2C 800751FC 100042A2 */  sb         $v0, 0x10($s2)
/* 7AA0F30 80075200 28000224 */  addiu      $v0, $zero, 0x28
/* 7AA0F34 80075204 B8D40108 */  j          .Llevel_37_800752E0
/* 7AA0F38 80075208 110042A2 */   sb        $v0, 0x11($s2)
.Llevel_37_8007520C:
/* 7AA0F3C 8007520C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 7AA0F40 80075210 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 7AA0F44 80075214 00000000 */  nop
/* 7AA0F48 80075218 30004010 */  beqz       $v0, .Llevel_37_800752DC
/* 7AA0F4C 8007521C 21300000 */   addu      $a2, $zero, $zero
/* 7AA0F50 80075220 0780103C */  lui        $s0, %hi(D_80070328)
/* 7AA0F54 80075224 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 7AA0F58 80075228 0C00238E */  lw         $v1, 0xC($s1)
/* 7AA0F5C 8007522C 0000048E */  lw         $a0, 0x0($s0)
/* 7AA0F60 80075230 1000228E */  lw         $v0, 0x10($s1)
/* 7AA0F64 80075234 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7AA0F68 80075238 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7AA0F6C 8007523C 23206400 */  subu       $a0, $v1, $a0
/* 7AA0F70 80075240 203A010C */  jal        func_8004E880
/* 7AA0F74 80075244 23284500 */   subu      $a1, $v0, $a1
/* 7AA0F78 80075248 0C004386 */  lh         $v1, 0xC($s2)
/* 7AA0F7C 8007524C 21204000 */  addu       $a0, $v0, $zero
/* 7AA0F80 80075250 80280300 */  sll        $a1, $v1, 2
/* 7AA0F84 80075254 2128A300 */  addu       $a1, $a1, $v1
/* 7AA0F88 80075258 5FD8000C */  jal        func_8003617C
/* 7AA0F8C 8007525C 40280500 */   sll       $a1, $a1, 1
/* 7AA0F90 80075260 21202002 */  addu       $a0, $s1, $zero
/* 7AA0F94 80075264 21280002 */  addu       $a1, $s0, $zero
/* 7AA0F98 80075268 20030624 */  addiu      $a2, $zero, 0x320
/* 7AA0F9C 8007526C 21384000 */  addu       $a3, $v0, $zero
/* 7AA0FA0 80075270 0780033C */  lui        $v1, %hi(unk_ovlheader_80074314)
/* 7AA0FA4 80075274 1443638C */  lw         $v1, %lo(unk_ovlheader_80074314)($v1)
/* 7AA0FA8 80075278 08000224 */  addiu      $v0, $zero, 0x8
/* 7AA0FAC 8007527C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA0FB0 80075280 78000224 */  addiu      $v0, $zero, 0x78
/* 7AA0FB4 80075284 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AA0FB8 80075288 0E000224 */  addiu      $v0, $zero, 0xE
/* 7AA0FBC 8007528C 1800A2AF */  sw         $v0, 0x18($sp)
/* 7AA0FC0 80075290 80000224 */  addiu      $v0, $zero, 0x80
/* 7AA0FC4 80075294 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 7AA0FC8 80075298 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7AA0FCC 8007529C 2000A2AF */  sw         $v0, 0x20($sp)
/* 7AA0FD0 800752A0 2400A2AF */  sw         $v0, 0x24($sp)
/* 7AA0FD4 800752A4 2800A0AF */  sw         $zero, 0x28($sp)
/* 7AA0FD8 800752A8 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 7AA0FDC 800752AC 09F86000 */  jalr       $v1
/* 7AA0FE0 800752B0 3000A0AF */   sw        $zero, 0x30($sp)
/* 7AA0FE4 800752B4 0A004104 */  bgez       $v0, .Llevel_37_800752E0
/* 7AA0FE8 800752B8 00000000 */   nop
/* 7AA0FEC 800752BC 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 7AA0FF0 800752C0 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 7AA0FF4 800752C4 00000000 */  nop
/* 7AA0FF8 800752C8 05004010 */  beqz       $v0, .Llevel_37_800752E0
/* 7AA0FFC 800752CC 00000000 */   nop
/* 7AA1000 800752D0 0000428C */  lw         $v0, 0x0($v0)
/* 7AA1004 800752D4 B8D40108 */  j          .Llevel_37_800752E0
/* 7AA1008 800752D8 000040A4 */   sh        $zero, 0x0($v0)
.Llevel_37_800752DC:
/* 7AA100C 800752DC 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_37_800752E0:
/* 7AA1010 800752E0 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7AA1014 800752E4 00000000 */  nop
/* 7AA1018 800752E8 05004014 */  bnez       $v0, .Llevel_37_80075300
/* 7AA101C 800752EC 00000000 */   nop
.Llevel_37_800752F0:
/* 7AA1020 800752F0 48002392 */  lbu        $v1, 0x48($s1)
/* 7AA1024 800752F4 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA1028 800752F8 2E006214 */  bne        $v1, $v0, .Llevel_37_800753B4
/* 7AA102C 800752FC 00000000 */   nop
.Llevel_37_80075300:
/* 7AA1030 80075300 4ED7000C */  jal        func_80035D38
/* 7AA1034 80075304 21202002 */   addu      $a0, $s1, $zero
/* 7AA1038 80075308 21202002 */  addu       $a0, $s1, $zero
/* 7AA103C 8007530C A758010C */  jal        func_8005629C
/* 7AA1040 80075310 21804000 */   addu      $s0, $v0, $zero
/* 7AA1044 80075314 27000012 */  beqz       $s0, .Llevel_37_800753B4
/* 7AA1048 80075318 00000000 */   nop
/* 7AA104C 8007531C 12004492 */  lbu        $a0, 0x12($s2)
/* 7AA1050 80075320 00000000 */  nop
/* 7AA1054 80075324 40100400 */  sll        $v0, $a0, 1
/* 7AA1058 80075328 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA105C 8007532C 21082200 */  addu       $at, $at, $v0
/* 7AA1060 80075330 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AA1064 80075334 13004292 */  lbu        $v0, 0x13($s2)
/* 7AA1068 80075338 00000000 */  nop
/* 7AA106C 8007533C 18006200 */  mult       $v1, $v0
/* 7AA1070 80075340 12400000 */  mflo       $t0
/* 7AA1074 80075344 03130800 */  sra        $v0, $t0, 12
/* 7AA1078 80075348 80024224 */  addiu      $v0, $v0, 0x280
/* 7AA107C 8007534C 04008010 */  beqz       $a0, .Llevel_37_80075360
/* 7AA1080 80075350 21800202 */   addu      $s0, $s0, $v0
/* 7AA1084 80075354 80000224 */  addiu      $v0, $zero, 0x80
/* 7AA1088 80075358 05008214 */  bne        $a0, $v0, .Llevel_37_80075370
/* 7AA108C 8007535C 00000000 */   nop
.Llevel_37_80075360:
/* 7AA1090 80075360 00010424 */  addiu      $a0, $zero, 0x100
/* 7AA1094 80075364 DBD8000C */  jal        func_8003636C
/* 7AA1098 80075368 00020524 */   addiu     $a1, $zero, 0x200
/* 7AA109C 8007536C 130042A2 */  sb         $v0, 0x13($s2)
.Llevel_37_80075370:
/* 7AA10A0 80075370 12004292 */  lbu        $v0, 0x12($s2)
/* 7AA10A4 80075374 00000000 */  nop
/* 7AA10A8 80075378 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 7AA10AC 8007537C 120042A2 */  sb         $v0, 0x12($s2)
/* 7AA10B0 80075380 1400238E */  lw         $v1, 0x14($s1)
/* 7AA10B4 80075384 00000000 */  nop
/* 7AA10B8 80075388 23800302 */  subu       $s0, $s0, $v1
/* 7AA10BC 8007538C 2100022A */  slti       $v0, $s0, 0x21
/* 7AA10C0 80075390 03004014 */  bnez       $v0, .Llevel_37_800753A0
/* 7AA10C4 80075394 E0FF022A */   slti      $v0, $s0, -0x20
/* 7AA10C8 80075398 20001024 */  addiu      $s0, $zero, 0x20
/* 7AA10CC 8007539C E0FF022A */  slti       $v0, $s0, -0x20
.Llevel_37_800753A0:
/* 7AA10D0 800753A0 03004010 */  beqz       $v0, .Llevel_37_800753B0
/* 7AA10D4 800753A4 21107000 */   addu      $v0, $v1, $s0
/* 7AA10D8 800753A8 E0FF1024 */  addiu      $s0, $zero, -0x20
/* 7AA10DC 800753AC 21107000 */  addu       $v0, $v1, $s0
.Llevel_37_800753B0:
/* 7AA10E0 800753B0 140022AE */  sw         $v0, 0x14($s1)
.Llevel_37_800753B4:
/* 7AA10E4 800753B4 36002386 */  lh         $v1, 0x36($s1)
/* 7AA10E8 800753B8 D3000224 */  addiu      $v0, $zero, 0xD3
/* 7AA10EC 800753BC 0E006214 */  bne        $v1, $v0, .Llevel_37_800753F8
/* 7AA10F0 800753C0 00000000 */   nop
/* 7AA10F4 800753C4 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AA10F8 800753C8 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AA10FC 800753CC 00000000 */  nop
/* 7AA1100 800753D0 01004230 */  andi       $v0, $v0, 0x1
/* 7AA1104 800753D4 08004014 */  bnez       $v0, .Llevel_37_800753F8
/* 7AA1108 800753D8 01000424 */   addiu     $a0, $zero, 0x1
/* 7AA110C 800753DC 0C000524 */  addiu      $a1, $zero, 0xC
/* 7AA1110 800753E0 21302002 */  addu       $a2, $s1, $zero
/* 7AA1114 800753E4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA1118 800753E8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA111C 800753EC 00000000 */  nop
/* 7AA1120 800753F0 09F84000 */  jalr       $v0
/* 7AA1124 800753F4 06000724 */   addiu     $a3, $zero, 0x6
.Llevel_37_800753F8:
/* 7AA1128 800753F8 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 7AA112C 800753FC 5800B48F */  lw         $s4, 0x58($sp)
/* 7AA1130 80075400 5400B38F */  lw         $s3, 0x54($sp)
/* 7AA1134 80075404 5000B28F */  lw         $s2, 0x50($sp)
/* 7AA1138 80075408 4C00B18F */  lw         $s1, 0x4C($sp)
/* 7AA113C 8007540C 4800B08F */  lw         $s0, 0x48($sp)
/* 7AA1140 80075410 6000BD27 */  addiu      $sp, $sp, 0x60
/* 7AA1144 80075414 0800E003 */  jr         $ra
/* 7AA1148 80075418 00000000 */   nop
.size func_level_37_80074D90, . - func_level_37_80074D90
