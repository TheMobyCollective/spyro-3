.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_26_8007ACC0
/* 622A9F0 8007ACC0 40FFBD27 */  addiu      $sp, $sp, -0xC0
/* 622A9F4 8007ACC4 A800B4AF */  sw         $s4, 0xA8($sp)
/* 622A9F8 8007ACC8 21A08000 */  addu       $s4, $a0, $zero
/* 622A9FC 8007ACCC 01000224 */  addiu      $v0, $zero, 0x1
/* 622AA00 8007ACD0 BC00BFAF */  sw         $ra, 0xBC($sp)
/* 622AA04 8007ACD4 B800BEAF */  sw         $fp, 0xB8($sp)
/* 622AA08 8007ACD8 B400B7AF */  sw         $s7, 0xB4($sp)
/* 622AA0C 8007ACDC B000B6AF */  sw         $s6, 0xB0($sp)
/* 622AA10 8007ACE0 AC00B5AF */  sw         $s5, 0xAC($sp)
/* 622AA14 8007ACE4 A400B3AF */  sw         $s3, 0xA4($sp)
/* 622AA18 8007ACE8 A000B2AF */  sw         $s2, 0xA0($sp)
/* 622AA1C 8007ACEC 9C00B1AF */  sw         $s1, 0x9C($sp)
/* 622AA20 8007ACF0 9800B0AF */  sw         $s0, 0x98($sp)
/* 622AA24 8007ACF4 48008392 */  lbu        $v1, 0x48($s4)
/* 622AA28 8007ACF8 0000958E */  lw         $s5, 0x0($s4)
/* 622AA2C 8007ACFC 80006210 */  beq        $v1, $v0, .Llevel_26_8007AF00
/* 622AA30 8007AD00 02006228 */   slti      $v0, $v1, 0x2
/* 622AA34 8007AD04 05004010 */  beqz       $v0, .Llevel_26_8007AD1C
/* 622AA38 8007AD08 00000000 */   nop
/* 622AA3C 8007AD0C 0A006010 */  beqz       $v1, .Llevel_26_8007AD38
/* 622AA40 8007AD10 01001E3C */   lui       $fp, (0x1869F >> 16)
/* 622AA44 8007AD14 57ED0108 */  j          .Llevel_26_8007B55C
/* 622AA48 8007AD18 00000000 */   nop
.Llevel_26_8007AD1C:
/* 622AA4C 8007AD1C 02000224 */  addiu      $v0, $zero, 0x2
/* 622AA50 8007AD20 84016210 */  beq        $v1, $v0, .Llevel_26_8007B334
/* 622AA54 8007AD24 03000224 */   addiu     $v0, $zero, 0x3
/* 622AA58 8007AD28 BB016210 */  beq        $v1, $v0, .Llevel_26_8007B418
/* 622AA5C 8007AD2C 00000000 */   nop
/* 622AA60 8007AD30 57ED0108 */  j          .Llevel_26_8007B55C
/* 622AA64 8007AD34 00000000 */   nop
.Llevel_26_8007AD38:
/* 622AA68 8007AD38 9F86DE37 */  ori        $fp, $fp, (0x1869F & 0xFFFF)
/* 622AA6C 8007AD3C 0780163C */  lui        $s6, %hi(D_8006E788)
/* 622AA70 8007AD40 88E7D626 */  addiu      $s6, $s6, %lo(D_8006E788)
/* 622AA74 8007AD44 0000A0AE */  sw         $zero, 0x0($s5)
/* 622AA78 8007AD48 0000D38E */  lw         $s3, 0x0($s6)
/* 622AA7C 8007AD4C 00000000 */  nop
/* 622AA80 8007AD50 53006012 */  beqz       $s3, .Llevel_26_8007AEA0
/* 622AA84 8007AD54 0400D626 */   addiu     $s6, $s6, 0x4
/* 622AA88 8007AD58 0C009726 */  addiu      $s7, $s4, 0xC
.Llevel_26_8007AD5C:
/* 622AA8C 8007AD5C 48006292 */  lbu        $v0, 0x48($s3)
/* 622AA90 8007AD60 00000000 */  nop
/* 622AA94 8007AD64 80004230 */  andi       $v0, $v0, 0x80
/* 622AA98 8007AD68 49004014 */  bnez       $v0, .Llevel_26_8007AE90
/* 622AA9C 8007AD6C 00000000 */   nop
/* 622AAA0 8007AD70 0800628E */  lw         $v0, 0x8($s3)
/* 622AAA4 8007AD74 00000000 */  nop
/* 622AAA8 8007AD78 45004010 */  beqz       $v0, .Llevel_26_8007AE90
/* 622AAAC 8007AD7C 1800A427 */   addiu     $a0, $sp, 0x18
/* 622AAB0 8007AD80 5E3C010C */  jal        func_8004F178
/* 622AAB4 8007AD84 0C006526 */   addiu     $a1, $s3, 0xC
/* 622AAB8 8007AD88 21300000 */  addu       $a2, $zero, $zero
/* 622AABC 8007AD8C 2000A28F */  lw         $v0, 0x20($sp)
/* 622AAC0 8007AD90 1800A38F */  lw         $v1, 0x18($sp)
/* 622AAC4 8007AD94 80004224 */  addiu      $v0, $v0, 0x80
/* 622AAC8 8007AD98 2000A2AF */  sw         $v0, 0x20($sp)
/* 622AACC 8007AD9C 0C00848E */  lw         $a0, 0xC($s4)
/* 622AAD0 8007ADA0 1C00A28F */  lw         $v0, 0x1C($sp)
/* 622AAD4 8007ADA4 1000858E */  lw         $a1, 0x10($s4)
/* 622AAD8 8007ADA8 23206400 */  subu       $a0, $v1, $a0
/* 622AADC 8007ADAC 203A010C */  jal        func_8004E880
/* 622AAE0 8007ADB0 23284500 */   subu      $a1, $v0, $a1
/* 622AAE4 8007ADB4 46008392 */  lbu        $v1, 0x46($s4)
/* 622AAE8 8007ADB8 00000000 */  nop
/* 622AAEC 8007ADBC 23104300 */  subu       $v0, $v0, $v1
/* 622AAF0 8007ADC0 FF005230 */  andi       $s2, $v0, 0xFF
/* 622AAF4 8007ADC4 8100422A */  slti       $v0, $s2, 0x81
/* 622AAF8 8007ADC8 02004014 */  bnez       $v0, .Llevel_26_8007ADD4
/* 622AAFC 8007ADCC 2120E002 */   addu      $a0, $s7, $zero
/* 622AB00 8007ADD0 00FF5226 */  addiu      $s2, $s2, -0x100
.Llevel_26_8007ADD4:
/* 622AB04 8007ADD4 CD3C010C */  jal        func_8004F334
/* 622AB08 8007ADD8 1800A527 */   addiu     $a1, $sp, 0x18
/* 622AB0C 8007ADDC 21204000 */  addu       $a0, $v0, $zero
/* 622AB10 8007ADE0 2000A28F */  lw         $v0, 0x20($sp)
/* 622AB14 8007ADE4 1400858E */  lw         $a1, 0x14($s4)
/* 622AB18 8007ADE8 21300000 */  addu       $a2, $zero, $zero
/* 622AB1C 8007ADEC 203A010C */  jal        func_8004E880
/* 622AB20 8007ADF0 23284500 */   subu      $a1, $v0, $a1
/* 622AB24 8007ADF4 45008392 */  lbu        $v1, 0x45($s4)
/* 622AB28 8007ADF8 00000000 */  nop
/* 622AB2C 8007ADFC 23104300 */  subu       $v0, $v0, $v1
/* 622AB30 8007AE00 FF005030 */  andi       $s0, $v0, 0xFF
/* 622AB34 8007AE04 8100022A */  slti       $v0, $s0, 0x81
/* 622AB38 8007AE08 02004014 */  bnez       $v0, .Llevel_26_8007AE14
/* 622AB3C 8007AE0C 00000000 */   nop
/* 622AB40 8007AE10 00FF1026 */  addiu      $s0, $s0, -0x100
.Llevel_26_8007AE14:
/* 622AB44 8007AE14 02004106 */  bgez       $s2, .Llevel_26_8007AE20
/* 622AB48 8007AE18 00000000 */   nop
/* 622AB4C 8007AE1C 23901200 */  negu       $s2, $s2
.Llevel_26_8007AE20:
/* 622AB50 8007AE20 02000106 */  bgez       $s0, .Llevel_26_8007AE2C
/* 622AB54 8007AE24 00000000 */   nop
/* 622AB58 8007AE28 23801000 */  negu       $s0, $s0
.Llevel_26_8007AE2C:
/* 622AB5C 8007AE2C 0C00422A */  slti       $v0, $s2, 0xC
/* 622AB60 8007AE30 17004010 */  beqz       $v0, .Llevel_26_8007AE90
/* 622AB64 8007AE34 0C00022A */   slti      $v0, $s0, 0xC
/* 622AB68 8007AE38 15004010 */  beqz       $v0, .Llevel_26_8007AE90
/* 622AB6C 8007AE3C 2120E002 */   addu      $a0, $s7, $zero
/* 622AB70 8007AE40 CD3C010C */  jal        func_8004F334
/* 622AB74 8007AE44 1800A527 */   addiu     $a1, $sp, 0x18
/* 622AB78 8007AE48 00280324 */  addiu      $v1, $zero, 0x2800
/* 622AB7C 8007AE4C 23186200 */  subu       $v1, $v1, $v0
/* 622AB80 8007AE50 02006104 */  bgez       $v1, .Llevel_26_8007AE5C
/* 622AB84 8007AE54 21886000 */   addu      $s1, $v1, $zero
/* 622AB88 8007AE58 23881100 */  negu       $s1, $s1
.Llevel_26_8007AE5C:
/* 622AB8C 8007AE5C 21105002 */  addu       $v0, $s2, $s0
/* 622AB90 8007AE60 80120200 */  sll        $v0, $v0, 10
/* 622AB94 8007AE64 21882202 */  addu       $s1, $s1, $v0
/* 622AB98 8007AE68 2A103E02 */  slt        $v0, $s1, $fp
/* 622AB9C 8007AE6C 08004010 */  beqz       $v0, .Llevel_26_8007AE90
/* 622ABA0 8007AE70 2120E002 */   addu      $a0, $s7, $zero
/* 622ABA4 8007AE74 1800A527 */  addiu      $a1, $sp, 0x18
/* 622ABA8 8007AE78 8E4F000C */  jal        func_80013E38
/* 622ABAC 8007AE7C 04000624 */   addiu     $a2, $zero, 0x4
/* 622ABB0 8007AE80 03004010 */  beqz       $v0, .Llevel_26_8007AE90
/* 622ABB4 8007AE84 00000000 */   nop
/* 622ABB8 8007AE88 0000B3AE */  sw         $s3, 0x0($s5)
/* 622ABBC 8007AE8C 21F02002 */  addu       $fp, $s1, $zero
.Llevel_26_8007AE90:
/* 622ABC0 8007AE90 0000D38E */  lw         $s3, 0x0($s6)
/* 622ABC4 8007AE94 00000000 */  nop
/* 622ABC8 8007AE98 B0FF6016 */  bnez       $s3, .Llevel_26_8007AD5C
/* 622ABCC 8007AE9C 0400D626 */   addiu     $s6, $s6, 0x4
.Llevel_26_8007AEA0:
/* 622ABD0 8007AEA0 0100023C */  lui        $v0, (0x1869F >> 16)
/* 622ABD4 8007AEA4 9F864234 */  ori        $v0, $v0, (0x1869F & 0xFFFF)
/* 622ABD8 8007AEA8 0200C217 */  bne        $fp, $v0, .Llevel_26_8007AEB4
/* 622ABDC 8007AEAC 00000000 */   nop
/* 622ABE0 8007AEB0 0000A0AE */  sw         $zero, 0x0($s5)
.Llevel_26_8007AEB4:
/* 622ABE4 8007AEB4 44008292 */  lbu        $v0, 0x44($s4)
/* 622ABE8 8007AEB8 00000000 */  nop
/* 622ABEC 8007AEBC 00110200 */  sll        $v0, $v0, 4
/* 622ABF0 8007AEC0 0400A2A6 */  sh         $v0, 0x4($s5)
/* 622ABF4 8007AEC4 45008292 */  lbu        $v0, 0x45($s4)
/* 622ABF8 8007AEC8 00000000 */  nop
/* 622ABFC 8007AECC 00110200 */  sll        $v0, $v0, 4
/* 622AC00 8007AED0 0600A2A6 */  sh         $v0, 0x6($s5)
/* 622AC04 8007AED4 46008392 */  lbu        $v1, 0x46($s4)
/* 622AC08 8007AED8 B4000224 */  addiu      $v0, $zero, 0xB4
/* 622AC0C 8007AEDC 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 622AC10 8007AEE0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 622AC14 8007AEE4 1000A2AE */  sw         $v0, 0x10($s5)
/* 622AC18 8007AEE8 01000224 */  addiu      $v0, $zero, 0x1
/* 622AC1C 8007AEEC 0A00A0A6 */  sh         $zero, 0xA($s5)
/* 622AC20 8007AEF0 0C00A0A6 */  sh         $zero, 0xC($s5)
/* 622AC24 8007AEF4 00190300 */  sll        $v1, $v1, 4
/* 622AC28 8007AEF8 0800A3A6 */  sh         $v1, 0x8($s5)
/* 622AC2C 8007AEFC 480082A2 */  sb         $v0, 0x48($s4)
.Llevel_26_8007AF00:
/* 622AC30 8007AF00 0300033C */  lui        $v1, (0x3D400 >> 16)
/* 622AC34 8007AF04 0C00858E */  lw         $a1, 0xC($s4)
/* 622AC38 8007AF08 00D46334 */  ori        $v1, $v1, (0x3D400 & 0xFFFF)
/* 622AC3C 8007AF0C 2A106500 */  slt        $v0, $v1, $a1
/* 622AC40 8007AF10 15004014 */  bnez       $v0, .Llevel_26_8007AF68
/* 622AC44 8007AF14 00000000 */   nop
/* 622AC48 8007AF18 1000848E */  lw         $a0, 0x10($s4)
/* 622AC4C 8007AF1C 00000000 */  nop
/* 622AC50 8007AF20 2A106400 */  slt        $v0, $v1, $a0
/* 622AC54 8007AF24 10004014 */  bnez       $v0, .Llevel_26_8007AF68
/* 622AC58 8007AF28 0100023C */   lui       $v0, (0x1E000 >> 16)
/* 622AC5C 8007AF2C 1400838E */  lw         $v1, 0x14($s4)
/* 622AC60 8007AF30 00E04234 */  ori        $v0, $v0, (0x1E000 & 0xFFFF)
/* 622AC64 8007AF34 2A104300 */  slt        $v0, $v0, $v1
/* 622AC68 8007AF38 0B004014 */  bnez       $v0, .Llevel_26_8007AF68
/* 622AC6C 8007AF3C 0004A228 */   slti      $v0, $a1, 0x400
/* 622AC70 8007AF40 09004014 */  bnez       $v0, .Llevel_26_8007AF68
/* 622AC74 8007AF44 00048228 */   slti      $v0, $a0, 0x400
/* 622AC78 8007AF48 07004014 */  bnez       $v0, .Llevel_26_8007AF68
/* 622AC7C 8007AF4C 00046228 */   slti      $v0, $v1, 0x400
/* 622AC80 8007AF50 05004014 */  bnez       $v0, .Llevel_26_8007AF68
/* 622AC84 8007AF54 0E00A426 */   addiu     $a0, $s5, 0xE
/* 622AC88 8007AF58 69D6000C */  jal        func_800359A4
/* 622AC8C 8007AF5C 02000524 */   addiu     $a1, $zero, 0x2
/* 622AC90 8007AF60 0B004010 */  beqz       $v0, .Llevel_26_8007AF90
/* 622AC94 8007AF64 2800A427 */   addiu     $a0, $sp, 0x28
.Llevel_26_8007AF68:
/* 622AC98 8007AF68 1000A58E */  lw         $a1, 0x10($s5)
/* 622AC9C 8007AF6C F0EF000C */  jal        func_8003BFC0
/* 622ACA0 8007AF70 21208002 */   addu      $a0, $s4, $zero
/* 622ACA4 8007AF74 77014010 */  beqz       $v0, .Llevel_26_8007B554
/* 622ACA8 8007AF78 00000000 */   nop
/* 622ACAC 8007AF7C 1000A48E */  lw         $a0, 0x10($s5)
/* 622ACB0 8007AF80 9CEF000C */  jal        func_8003BE70
/* 622ACB4 8007AF84 00000000 */   nop
/* 622ACB8 8007AF88 55ED0108 */  j          .Llevel_26_8007B554
/* 622ACBC 8007AF8C 00000000 */   nop
.Llevel_26_8007AF90:
/* 622ACC0 8007AF90 0C009126 */  addiu      $s1, $s4, 0xC
/* 622ACC4 8007AF94 5E3C010C */  jal        func_8004F178
/* 622ACC8 8007AF98 21282002 */   addu      $a1, $s1, $zero
/* 622ACCC 8007AF9C 0000A28E */  lw         $v0, 0x0($s5)
/* 622ACD0 8007AFA0 00000000 */  nop
/* 622ACD4 8007AFA4 48004290 */  lbu        $v0, 0x48($v0)
/* 622ACD8 8007AFA8 00000000 */  nop
/* 622ACDC 8007AFAC 80004230 */  andi       $v0, $v0, 0x80
/* 622ACE0 8007AFB0 02004010 */  beqz       $v0, .Llevel_26_8007AFBC
/* 622ACE4 8007AFB4 00000000 */   nop
/* 622ACE8 8007AFB8 0000A0AE */  sw         $zero, 0x0($s5)
.Llevel_26_8007AFBC:
/* 622ACEC 8007AFBC 0000A58E */  lw         $a1, 0x0($s5)
/* 622ACF0 8007AFC0 00000000 */  nop
/* 622ACF4 8007AFC4 5700A010 */  beqz       $a1, .Llevel_26_8007B124
/* 622ACF8 8007AFC8 4800B027 */   addiu     $s0, $sp, 0x48
/* 622ACFC 8007AFCC 21200002 */  addu       $a0, $s0, $zero
/* 622AD00 8007AFD0 5E3C010C */  jal        func_8004F178
/* 622AD04 8007AFD4 0C00A524 */   addiu     $a1, $a1, 0xC
/* 622AD08 8007AFD8 3800B227 */  addiu      $s2, $sp, 0x38
/* 622AD0C 8007AFDC 21204002 */  addu       $a0, $s2, $zero
/* 622AD10 8007AFE0 21280002 */  addu       $a1, $s0, $zero
/* 622AD14 8007AFE4 5000A28F */  lw         $v0, 0x50($sp)
/* 622AD18 8007AFE8 21302002 */  addu       $a2, $s1, $zero
/* 622AD1C 8007AFEC 80004224 */  addiu      $v0, $v0, 0x80
/* 622AD20 8007AFF0 723C010C */  jal        func_8004F1C8
/* 622AD24 8007AFF4 5000A2AF */   sw        $v0, 0x50($sp)
/* 622AD28 8007AFF8 01000624 */  addiu      $a2, $zero, 0x1
/* 622AD2C 8007AFFC 3800A48F */  lw         $a0, 0x38($sp)
/* 622AD30 8007B000 4000A28F */  lw         $v0, 0x40($sp)
/* 622AD34 8007B004 3C00A58F */  lw         $a1, 0x3C($sp)
/* 622AD38 8007B008 00014224 */  addiu      $v0, $v0, 0x100
/* 622AD3C 8007B00C 203A010C */  jal        func_8004E880
/* 622AD40 8007B010 4000A2AF */   sw        $v0, 0x40($sp)
/* 622AD44 8007B014 3800A48F */  lw         $a0, 0x38($sp)
/* 622AD48 8007B018 3C00A58F */  lw         $a1, 0x3C($sp)
/* 622AD4C 8007B01C 203A010C */  jal        func_8004E880
/* 622AD50 8007B020 01000624 */   addiu     $a2, $zero, 0x1
/* 622AD54 8007B024 0800A386 */  lh         $v1, 0x8($s5)
/* 622AD58 8007B028 00000000 */  nop
/* 622AD5C 8007B02C 23104300 */  subu       $v0, $v0, $v1
/* 622AD60 8007B030 FF0F4630 */  andi       $a2, $v0, 0xFFF
/* 622AD64 8007B034 0108C228 */  slti       $v0, $a2, 0x801
/* 622AD68 8007B038 02004014 */  bnez       $v0, .Llevel_26_8007B044
/* 622AD6C 8007B03C 21386000 */   addu      $a3, $v1, $zero
/* 622AD70 8007B040 00F0C624 */  addiu      $a2, $a2, -0x1000
.Llevel_26_8007B044:
/* 622AD74 8007B044 0200C104 */  bgez       $a2, .Llevel_26_8007B050
/* 622AD78 8007B048 2110C000 */   addu      $v0, $a2, $zero
/* 622AD7C 8007B04C 23100200 */  negu       $v0, $v0
.Llevel_26_8007B050:
/* 622AD80 8007B050 00034228 */  slti       $v0, $v0, 0x300
/* 622AD84 8007B054 32004010 */  beqz       $v0, .Llevel_26_8007B120
/* 622AD88 8007B058 B4000324 */   addiu     $v1, $zero, 0xB4
/* 622AD8C 8007B05C 0E00A286 */  lh         $v0, 0xE($s5)
/* 622AD90 8007B060 00000000 */  nop
/* 622AD94 8007B064 23186200 */  subu       $v1, $v1, $v0
/* 622AD98 8007B068 83800300 */  sra        $s0, $v1, 2
/* 622AD9C 8007B06C 0900022A */  slti       $v0, $s0, 0x9
/* 622ADA0 8007B070 03004014 */  bnez       $v0, .Llevel_26_8007B080
/* 622ADA4 8007B074 23881000 */   negu      $s1, $s0
/* 622ADA8 8007B078 08001024 */  addiu      $s0, $zero, 0x8
/* 622ADAC 8007B07C 23881000 */  negu       $s1, $s0
.Llevel_26_8007B080:
/* 622ADB0 8007B080 2A10D100 */  slt        $v0, $a2, $s1
/* 622ADB4 8007B084 03004010 */  beqz       $v0, .Llevel_26_8007B094
/* 622ADB8 8007B088 2A100602 */   slt       $v0, $s0, $a2
/* 622ADBC 8007B08C 21302002 */  addu       $a2, $s1, $zero
/* 622ADC0 8007B090 2A100602 */  slt        $v0, $s0, $a2
.Llevel_26_8007B094:
/* 622ADC4 8007B094 02004010 */  beqz       $v0, .Llevel_26_8007B0A0
/* 622ADC8 8007B098 21204002 */   addu      $a0, $s2, $zero
/* 622ADCC 8007B09C 21300002 */  addu       $a2, $s0, $zero
.Llevel_26_8007B0A0:
/* 622ADD0 8007B0A0 21280000 */  addu       $a1, $zero, $zero
/* 622ADD4 8007B0A4 2110E600 */  addu       $v0, $a3, $a2
/* 622ADD8 8007B0A8 7A3B010C */  jal        func_8004EDE8
/* 622ADDC 8007B0AC 0800A2A6 */   sh        $v0, 0x8($s5)
/* 622ADE0 8007B0B0 21204000 */  addu       $a0, $v0, $zero
/* 622ADE4 8007B0B4 4000A58F */  lw         $a1, 0x40($sp)
/* 622ADE8 8007B0B8 203A010C */  jal        func_8004E880
/* 622ADEC 8007B0BC 01000624 */   addiu     $a2, $zero, 0x1
/* 622ADF0 8007B0C0 0600A386 */  lh         $v1, 0x6($s5)
/* 622ADF4 8007B0C4 00000000 */  nop
/* 622ADF8 8007B0C8 23104300 */  subu       $v0, $v0, $v1
/* 622ADFC 8007B0CC FF0F4630 */  andi       $a2, $v0, 0xFFF
/* 622AE00 8007B0D0 0108C228 */  slti       $v0, $a2, 0x801
/* 622AE04 8007B0D4 02004014 */  bnez       $v0, .Llevel_26_8007B0E0
/* 622AE08 8007B0D8 00000000 */   nop
/* 622AE0C 8007B0DC 00F0C624 */  addiu      $a2, $a2, -0x1000
.Llevel_26_8007B0E0:
/* 622AE10 8007B0E0 0200C104 */  bgez       $a2, .Llevel_26_8007B0EC
/* 622AE14 8007B0E4 2110C000 */   addu      $v0, $a2, $zero
/* 622AE18 8007B0E8 23100200 */  negu       $v0, $v0
.Llevel_26_8007B0EC:
/* 622AE1C 8007B0EC 00034228 */  slti       $v0, $v0, 0x300
/* 622AE20 8007B0F0 0B004010 */  beqz       $v0, .Llevel_26_8007B120
/* 622AE24 8007B0F4 2A10D100 */   slt       $v0, $a2, $s1
/* 622AE28 8007B0F8 03004010 */  beqz       $v0, .Llevel_26_8007B108
/* 622AE2C 8007B0FC 2A100602 */   slt       $v0, $s0, $a2
/* 622AE30 8007B100 21302002 */  addu       $a2, $s1, $zero
/* 622AE34 8007B104 2A100602 */  slt        $v0, $s0, $a2
.Llevel_26_8007B108:
/* 622AE38 8007B108 03004010 */  beqz       $v0, .Llevel_26_8007B118
/* 622AE3C 8007B10C 21106600 */   addu      $v0, $v1, $a2
/* 622AE40 8007B110 21300002 */  addu       $a2, $s0, $zero
/* 622AE44 8007B114 21106600 */  addu       $v0, $v1, $a2
.Llevel_26_8007B118:
/* 622AE48 8007B118 49EC0108 */  j          .Llevel_26_8007B124
/* 622AE4C 8007B11C 0600A2A6 */   sh        $v0, 0x6($s5)
.Llevel_26_8007B120:
/* 622AE50 8007B120 0000A0AE */  sw         $zero, 0x0($s5)
.Llevel_26_8007B124:
/* 622AE54 8007B124 0400A296 */  lhu        $v0, 0x4($s5)
/* 622AE58 8007B128 00000000 */  nop
/* 622AE5C 8007B12C 02110200 */  srl        $v0, $v0, 4
/* 622AE60 8007B130 440082A2 */  sb         $v0, 0x44($s4)
/* 622AE64 8007B134 0600A296 */  lhu        $v0, 0x6($s5)
/* 622AE68 8007B138 21208002 */  addu       $a0, $s4, $zero
/* 622AE6C 8007B13C 02110200 */  srl        $v0, $v0, 4
/* 622AE70 8007B140 450082A2 */  sb         $v0, 0x45($s4)
/* 622AE74 8007B144 0800A296 */  lhu        $v0, 0x8($s5)
/* 622AE78 8007B148 04000524 */  addiu      $a1, $zero, 0x4
/* 622AE7C 8007B14C 02110200 */  srl        $v0, $v0, 4
/* 622AE80 8007B150 4957010C */  jal        func_80055D24
/* 622AE84 8007B154 460082A2 */   sb        $v0, 0x46($s4)
/* 622AE88 8007B158 20008426 */  addiu      $a0, $s4, 0x20
/* 622AE8C 8007B15C 3800B027 */  addiu      $s0, $sp, 0x38
/* 622AE90 8007B160 21280002 */  addu       $a1, $s0, $zero
/* 622AE94 8007B164 21300002 */  addu       $a2, $s0, $zero
/* 622AE98 8007B168 80010224 */  addiu      $v0, $zero, 0x180
/* 622AE9C 8007B16C 3800A2AF */  sw         $v0, 0x38($sp)
/* 622AEA0 8007B170 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 622AEA4 8007B174 5B3B010C */  jal        func_8004ED6C
/* 622AEA8 8007B178 4000A0AF */   sw        $zero, 0x40($sp)
/* 622AEAC 8007B17C 0C009226 */  addiu      $s2, $s4, 0xC
/* 622AEB0 8007B180 21204002 */  addu       $a0, $s2, $zero
/* 622AEB4 8007B184 21284002 */  addu       $a1, $s2, $zero
/* 622AEB8 8007B188 653C010C */  jal        func_8004F194
/* 622AEBC 8007B18C 21300002 */   addu      $a2, $s0, $zero
/* 622AEC0 8007B190 2800B127 */  addiu      $s1, $sp, 0x28
/* 622AEC4 8007B194 21202002 */  addu       $a0, $s1, $zero
/* 622AEC8 8007B198 21284002 */  addu       $a1, $s2, $zero
/* 622AECC 8007B19C 21300000 */  addu       $a2, $zero, $zero
/* 622AED0 8007B1A0 0100073C */  lui        $a3, (0x10000 >> 16)
/* 622AED4 8007B1A4 C360000C */  jal        func_8001830C
/* 622AED8 8007B1A8 1000B4AF */   sw        $s4, 0x10($sp)
/* 622AEDC 8007B1AC 1A004010 */  beqz       $v0, .Llevel_26_8007B218
/* 622AEE0 8007B1B0 21204002 */   addu      $a0, $s2, $zero
/* 622AEE4 8007B1B4 0780103C */  lui        $s0, %hi(D_80071924)
/* 622AEE8 8007B1B8 24191026 */  addiu      $s0, $s0, %lo(D_80071924)
/* 622AEEC 8007B1BC 0000048E */  lw         $a0, 0x0($s0)
/* 622AEF0 8007B1C0 5502010C */  jal        func_80040954
/* 622AEF4 8007B1C4 00000000 */   nop
/* 622AEF8 8007B1C8 03000324 */  addiu      $v1, $zero, 0x3
/* 622AEFC 8007B1CC 0E004314 */  bne        $v0, $v1, .Llevel_26_8007B208
/* 622AF00 8007B1D0 21204002 */   addu      $a0, $s2, $zero
/* 622AF04 8007B1D4 0000028E */  lw         $v0, 0x0($s0)
/* 622AF08 8007B1D8 0780033C */  lui        $v1, %hi(D_8006D048 + 0x14)
/* 622AF0C 8007B1DC 5CD0638C */  lw         $v1, %lo(D_8006D048 + 0x14)($v1)
/* 622AF10 8007B1E0 3F004230 */  andi       $v0, $v0, 0x3F
/* 622AF14 8007B1E4 80100200 */  sll        $v0, $v0, 2
/* 622AF18 8007B1E8 21104300 */  addu       $v0, $v0, $v1
/* 622AF1C 8007B1EC 0000448C */  lw         $a0, 0x0($v0)
/* 622AF20 8007B1F0 00000000 */  nop
/* 622AF24 8007B1F4 0400828C */  lw         $v0, 0x4($a0)
/* 622AF28 8007B1F8 0100033C */  lui        $v1, (0x10000 >> 16)
/* 622AF2C 8007B1FC 25104300 */  or         $v0, $v0, $v1
/* 622AF30 8007B200 040082AC */  sw         $v0, 0x4($a0)
/* 622AF34 8007B204 21204002 */  addu       $a0, $s2, $zero
.Llevel_26_8007B208:
/* 622AF38 8007B208 5E3C010C */  jal        func_8004F178
/* 622AF3C 8007B20C 21282002 */   addu      $a1, $s1, $zero
/* 622AF40 8007B210 9FEC0108 */  j          .Llevel_26_8007B27C
/* 622AF44 8007B214 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_26_8007B218:
/* 622AF48 8007B218 00020524 */  addiu      $a1, $zero, 0x200
/* 622AF4C 8007B21C 01000624 */  addiu      $a2, $zero, 0x1
/* 622AF50 8007B220 21380000 */  addu       $a3, $zero, $zero
/* 622AF54 8007B224 1000A0AF */  sw         $zero, 0x10($sp)
/* 622AF58 8007B228 8C6E000C */  jal        func_8001BA30
/* 622AF5C 8007B22C 1400B4AF */   sw        $s4, 0x14($sp)
/* 622AF60 8007B230 21884000 */  addu       $s1, $v0, $zero
/* 622AF64 8007B234 12002012 */  beqz       $s1, .Llevel_26_8007B280
/* 622AF68 8007B238 5800B027 */   addiu     $s0, $sp, 0x58
/* 622AF6C 8007B23C 21200002 */  addu       $a0, $s0, $zero
/* 622AF70 8007B240 5E3C010C */  jal        func_8004F178
/* 622AF74 8007B244 0C002526 */   addiu     $a1, $s1, 0xC
/* 622AF78 8007B248 21204002 */  addu       $a0, $s2, $zero
/* 622AF7C 8007B24C 6000A28F */  lw         $v0, 0x60($sp)
/* 622AF80 8007B250 21280002 */  addu       $a1, $s0, $zero
/* 622AF84 8007B254 80004224 */  addiu      $v0, $v0, 0x80
/* 622AF88 8007B258 DA60000C */  jal        func_80018368
/* 622AF8C 8007B25C 6000A2AF */   sw        $v0, 0x60($sp)
/* 622AF90 8007B260 07004014 */  bnez       $v0, .Llevel_26_8007B280
/* 622AF94 8007B264 0100033C */   lui       $v1, (0x10000 >> 16)
/* 622AF98 8007B268 1800228E */  lw         $v0, 0x18($s1)
/* 622AF9C 8007B26C 00000000 */  nop
/* 622AFA0 8007B270 25104300 */  or         $v0, $v0, $v1
/* 622AFA4 8007B274 180022AE */  sw         $v0, 0x18($s1)
/* 622AFA8 8007B278 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_26_8007B27C:
/* 622AFAC 8007B27C 480082A2 */  sb         $v0, 0x48($s4)
.Llevel_26_8007B280:
/* 622AFB0 8007B280 1000A58E */  lw         $a1, 0x10($s5)
/* 622AFB4 8007B284 F0EF000C */  jal        func_8003BFC0
/* 622AFB8 8007B288 21208002 */   addu      $a0, $s4, $zero
/* 622AFBC 8007B28C 07004014 */  bnez       $v0, .Llevel_26_8007B2AC
/* 622AFC0 8007B290 0BB6043C */   lui       $a0, (0xB60B60B7 >> 16)
/* 622AFC4 8007B294 21208002 */  addu       $a0, $s4, $zero
/* 622AFC8 8007B298 21280000 */  addu       $a1, $zero, $zero
/* 622AFCC 8007B29C AFEE000C */  jal        func_8003BABC
/* 622AFD0 8007B2A0 04000624 */   addiu     $a2, $zero, 0x4
/* 622AFD4 8007B2A4 BFEC0108 */  j          .Llevel_26_8007B2FC
/* 622AFD8 8007B2A8 1000A2AE */   sw        $v0, 0x10($s5)
.Llevel_26_8007B2AC:
/* 622AFDC 8007B2AC B7608434 */  ori        $a0, $a0, (0xB60B60B7 & 0xFFFF)
/* 622AFE0 8007B2B0 0E00A386 */  lh         $v1, 0xE($s5)
/* 622AFE4 8007B2B4 B4000224 */  addiu      $v0, $zero, 0xB4
/* 622AFE8 8007B2B8 23104300 */  subu       $v0, $v0, $v1
/* 622AFEC 8007B2BC 40130200 */  sll        $v0, $v0, 13
/* 622AFF0 8007B2C0 18004400 */  mult       $v0, $a0
/* 622AFF4 8007B2C4 10400000 */  mfhi       $t0
/* 622AFF8 8007B2C8 21180201 */  addu       $v1, $t0, $v0
/* 622AFFC 8007B2CC C3190300 */  sra        $v1, $v1, 7
/* 622B000 8007B2D0 C3170200 */  sra        $v0, $v0, 31
/* 622B004 8007B2D4 23186200 */  subu       $v1, $v1, $v0
/* 622B008 8007B2D8 00100224 */  addiu      $v0, $zero, 0x1000
/* 622B00C 8007B2DC 23804300 */  subu       $s0, $v0, $v1
/* 622B010 8007B2E0 000A022A */  slti       $v0, $s0, 0xA00
/* 622B014 8007B2E4 02004010 */  beqz       $v0, .Llevel_26_8007B2F0
/* 622B018 8007B2E8 00000000 */   nop
/* 622B01C 8007B2EC 000A1024 */  addiu      $s0, $zero, 0xA00
.Llevel_26_8007B2F0:
/* 622B020 8007B2F0 1000A48E */  lw         $a0, 0x10($s5)
/* 622B024 8007B2F4 2CF0000C */  jal        func_8003C0B0
/* 622B028 8007B2F8 21280002 */   addu      $a1, $s0, $zero
.Llevel_26_8007B2FC:
/* 622B02C 8007B2FC 3800B027 */  addiu      $s0, $sp, 0x38
/* 622B030 8007B300 21200002 */  addu       $a0, $s0, $zero
/* 622B034 8007B304 443C010C */  jal        func_8004F110
/* 622B038 8007B308 02000524 */   addiu     $a1, $zero, 0x2
/* 622B03C 8007B30C 01000424 */  addiu      $a0, $zero, 0x1
/* 622B040 8007B310 37000524 */  addiu      $a1, $zero, 0x37
/* 622B044 8007B314 0C008626 */  addiu      $a2, $s4, 0xC
/* 622B048 8007B318 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 622B04C 8007B31C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 622B050 8007B320 00000000 */  nop
/* 622B054 8007B324 09F84000 */  jalr       $v0
/* 622B058 8007B328 21380002 */   addu      $a3, $s0, $zero
/* 622B05C 8007B32C 57ED0108 */  j          .Llevel_26_8007B55C
/* 622B060 8007B330 00000000 */   nop
.Llevel_26_8007B334:
/* 622B064 8007B334 0C009126 */  addiu      $s1, $s4, 0xC
/* 622B068 8007B338 21202002 */  addu       $a0, $s1, $zero
/* 622B06C 8007B33C 00040524 */  addiu      $a1, $zero, 0x400
/* 622B070 8007B340 01000624 */  addiu      $a2, $zero, 0x1
/* 622B074 8007B344 21380000 */  addu       $a3, $zero, $zero
/* 622B078 8007B348 1000A0AF */  sw         $zero, 0x10($sp)
/* 622B07C 8007B34C 8C6E000C */  jal        func_8001BA30
/* 622B080 8007B350 1400B4AF */   sw        $s4, 0x14($sp)
/* 622B084 8007B354 21804000 */  addu       $s0, $v0, $zero
/* 622B088 8007B358 09000012 */  beqz       $s0, .Llevel_26_8007B380
/* 622B08C 8007B35C 21202002 */   addu      $a0, $s1, $zero
/* 622B090 8007B360 DA60000C */  jal        func_80018368
/* 622B094 8007B364 0C000526 */   addiu     $a1, $s0, 0xC
/* 622B098 8007B368 05004014 */  bnez       $v0, .Llevel_26_8007B380
/* 622B09C 8007B36C 0100033C */   lui       $v1, (0x10000 >> 16)
/* 622B0A0 8007B370 1800028E */  lw         $v0, 0x18($s0)
/* 622B0A4 8007B374 00000000 */  nop
/* 622B0A8 8007B378 25104300 */  or         $v0, $v0, $v1
/* 622B0AC 8007B37C 180002AE */  sw         $v0, 0x18($s0)
.Llevel_26_8007B380:
/* 622B0B0 8007B380 1000A58E */  lw         $a1, 0x10($s5)
/* 622B0B4 8007B384 F0EF000C */  jal        func_8003BFC0
/* 622B0B8 8007B388 21208002 */   addu      $a0, $s4, $zero
/* 622B0BC 8007B38C 04004010 */  beqz       $v0, .Llevel_26_8007B3A0
/* 622B0C0 8007B390 00000000 */   nop
/* 622B0C4 8007B394 1000A48E */  lw         $a0, 0x10($s5)
/* 622B0C8 8007B398 9CEF000C */  jal        func_8003BE70
/* 622B0CC 8007B39C 00000000 */   nop
.Llevel_26_8007B3A0:
/* 622B0D0 8007B3A0 0780023C */  lui        $v0, %hi(D_8006C578)
/* 622B0D4 8007B3A4 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 622B0D8 8007B3A8 0780033C */  lui        $v1, %hi(D_8006C574)
/* 622B0DC 8007B3AC 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 622B0E0 8007B3B0 00000000 */  nop
/* 622B0E4 8007B3B4 23104300 */  subu       $v0, $v0, $v1
/* 622B0E8 8007B3B8 15004228 */  slti       $v0, $v0, 0x15
/* 622B0EC 8007B3BC 0F004014 */  bnez       $v0, .Llevel_26_8007B3FC
/* 622B0F0 8007B3C0 21208002 */   addu      $a0, $s4, $zero
/* 622B0F4 8007B3C4 46010424 */  addiu      $a0, $zero, 0x146
/* 622B0F8 8007B3C8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 622B0FC 8007B3CC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 622B100 8007B3D0 00000000 */  nop
/* 622B104 8007B3D4 09F84000 */  jalr       $v0
/* 622B108 8007B3D8 21288002 */   addu      $a1, $s4, $zero
/* 622B10C 8007B3DC 21804000 */  addu       $s0, $v0, $zero
/* 622B110 8007B3E0 05000012 */  beqz       $s0, .Llevel_26_8007B3F8
/* 622B114 8007B3E4 08000224 */   addiu     $v0, $zero, 0x8
/* 622B118 8007B3E8 470002A2 */  sb         $v0, 0x47($s0)
/* 622B11C 8007B3EC 3F000224 */  addiu      $v0, $zero, 0x3F
/* 622B120 8007B3F0 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 622B124 8007B3F4 4E0002A2 */  sb         $v0, 0x4E($s0)
.Llevel_26_8007B3F8:
/* 622B128 8007B3F8 21208002 */  addu       $a0, $s4, $zero
.Llevel_26_8007B3FC:
/* 622B12C 8007B3FC 01000524 */  addiu      $a1, $zero, 0x1
/* 622B130 8007B400 AFEE000C */  jal        func_8003BABC
/* 622B134 8007B404 21300000 */   addu      $a2, $zero, $zero
/* 622B138 8007B408 04000224 */  addiu      $v0, $zero, 0x4
/* 622B13C 8007B40C 0E00A2A6 */  sh         $v0, 0xE($s5)
/* 622B140 8007B410 03000224 */  addiu      $v0, $zero, 0x3
/* 622B144 8007B414 480082A2 */  sb         $v0, 0x48($s4)
.Llevel_26_8007B418:
/* 622B148 8007B418 0E00A286 */  lh         $v0, 0xE($s5)
/* 622B14C 8007B41C 00000000 */  nop
/* 622B150 8007B420 00110200 */  sll        $v0, $v0, 4
/* 622B154 8007B424 03004104 */  bgez       $v0, .Llevel_26_8007B434
/* 622B158 8007B428 83900200 */   sra       $s2, $v0, 2
/* 622B15C 8007B42C 03004224 */  addiu      $v0, $v0, 0x3
/* 622B160 8007B430 83900200 */  sra        $s2, $v0, 2
.Llevel_26_8007B434:
/* 622B164 8007B434 21880000 */  addu       $s1, $zero, $zero
/* 622B168 8007B438 0680173C */  lui        $s7, %hi(D_80065920)
/* 622B16C 8007B43C 2059F726 */  addiu      $s7, $s7, %lo(D_80065920)
/* 622B170 8007B440 0680163C */  lui        $s6, %hi(D_800658A0)
/* 622B174 8007B444 A058D626 */  addiu      $s6, $s6, %lo(D_800658A0)
/* 622B178 8007B448 6800B027 */  addiu      $s0, $sp, 0x68
/* 622B17C 8007B44C 7800B327 */  addiu      $s3, $sp, 0x78
.Llevel_26_8007B450:
/* 622B180 8007B450 1400A38E */  lw         $v1, 0x14($s5)
/* 622B184 8007B454 40101100 */  sll        $v0, $s1, 1
/* 622B188 8007B458 21186200 */  addu       $v1, $v1, $v0
/* 622B18C 8007B45C 00006490 */  lbu        $a0, 0x0($v1)
/* 622B190 8007B460 00000000 */  nop
/* 622B194 8007B464 40200400 */  sll        $a0, $a0, 1
/* 622B198 8007B468 21109700 */  addu       $v0, $a0, $s7
/* 622B19C 8007B46C 00004284 */  lh         $v0, 0x0($v0)
/* 622B1A0 8007B470 00000000 */  nop
/* 622B1A4 8007B474 18005200 */  mult       $v0, $s2
/* 622B1A8 8007B478 01006590 */  lbu        $a1, 0x1($v1)
/* 622B1AC 8007B47C 00000000 */  nop
/* 622B1B0 8007B480 40280500 */  sll        $a1, $a1, 1
/* 622B1B4 8007B484 2130B700 */  addu       $a2, $a1, $s7
/* 622B1B8 8007B488 12400000 */  mflo       $t0
/* 622B1BC 8007B48C 0000C384 */  lh         $v1, 0x0($a2)
/* 622B1C0 8007B490 03130800 */  sra        $v0, $t0, 12
/* 622B1C4 8007B494 18004300 */  mult       $v0, $v1
/* 622B1C8 8007B498 21209600 */  addu       $a0, $a0, $s6
/* 622B1CC 8007B49C 12400000 */  mflo       $t0
/* 622B1D0 8007B4A0 03130800 */  sra        $v0, $t0, 12
/* 622B1D4 8007B4A4 7800A2AF */  sw         $v0, 0x78($sp)
/* 622B1D8 8007B4A8 00008284 */  lh         $v0, 0x0($a0)
/* 622B1DC 8007B4AC 00000000 */  nop
/* 622B1E0 8007B4B0 18005200 */  mult       $v0, $s2
/* 622B1E4 8007B4B4 12400000 */  mflo       $t0
/* 622B1E8 8007B4B8 0000C384 */  lh         $v1, 0x0($a2)
/* 622B1EC 8007B4BC 03130800 */  sra        $v0, $t0, 12
/* 622B1F0 8007B4C0 18004300 */  mult       $v0, $v1
/* 622B1F4 8007B4C4 2128B600 */  addu       $a1, $a1, $s6
/* 622B1F8 8007B4C8 12400000 */  mflo       $t0
/* 622B1FC 8007B4CC 03130800 */  sra        $v0, $t0, 12
/* 622B200 8007B4D0 7C00A2AF */  sw         $v0, 0x7C($sp)
/* 622B204 8007B4D4 0000A284 */  lh         $v0, 0x0($a1)
/* 622B208 8007B4D8 00000000 */  nop
/* 622B20C 8007B4DC 18005200 */  mult       $v0, $s2
/* 622B210 8007B4E0 01003126 */  addiu      $s1, $s1, 0x1
/* 622B214 8007B4E4 21200002 */  addu       $a0, $s0, $zero
/* 622B218 8007B4E8 21286002 */  addu       $a1, $s3, $zero
/* 622B21C 8007B4EC 12400000 */  mflo       $t0
/* 622B220 8007B4F0 03130800 */  sra        $v0, $t0, 12
/* 622B224 8007B4F4 5E3C010C */  jal        func_8004F178
/* 622B228 8007B4F8 8000A2AF */   sw        $v0, 0x80($sp)
/* 622B22C 8007B4FC 21200002 */  addu       $a0, $s0, $zero
/* 622B230 8007B500 3A3C010C */  jal        func_8004F0E8
/* 622B234 8007B504 04000524 */   addiu     $a1, $zero, 0x4
/* 622B238 8007B508 21200002 */  addu       $a0, $s0, $zero
/* 622B23C 8007B50C 21280002 */  addu       $a1, $s0, $zero
/* 622B240 8007B510 653C010C */  jal        func_8004F194
/* 622B244 8007B514 0C008626 */   addiu     $a2, $s4, 0xC
/* 622B248 8007B518 01000424 */  addiu      $a0, $zero, 0x1
/* 622B24C 8007B51C 13000524 */  addiu      $a1, $zero, 0x13
/* 622B250 8007B520 21300002 */  addu       $a2, $s0, $zero
/* 622B254 8007B524 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 622B258 8007B528 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 622B25C 8007B52C 00000000 */  nop
/* 622B260 8007B530 09F84000 */  jalr       $v0
/* 622B264 8007B534 21386002 */   addu      $a3, $s3, $zero
/* 622B268 8007B538 0C00222A */  slti       $v0, $s1, 0xC
/* 622B26C 8007B53C C4FF4014 */  bnez       $v0, .Llevel_26_8007B450
/* 622B270 8007B540 0E00A426 */   addiu     $a0, $s5, 0xE
/* 622B274 8007B544 69D6000C */  jal        func_800359A4
/* 622B278 8007B548 02000524 */   addiu     $a1, $zero, 0x2
/* 622B27C 8007B54C 03004010 */  beqz       $v0, .Llevel_26_8007B55C
/* 622B280 8007B550 00000000 */   nop
.Llevel_26_8007B554:
/* 622B284 8007B554 C656010C */  jal        func_80055B18
/* 622B288 8007B558 21208002 */   addu      $a0, $s4, $zero
.Llevel_26_8007B55C:
/* 622B28C 8007B55C BC00BF8F */  lw         $ra, 0xBC($sp)
/* 622B290 8007B560 B800BE8F */  lw         $fp, 0xB8($sp)
/* 622B294 8007B564 B400B78F */  lw         $s7, 0xB4($sp)
/* 622B298 8007B568 B000B68F */  lw         $s6, 0xB0($sp)
/* 622B29C 8007B56C AC00B58F */  lw         $s5, 0xAC($sp)
/* 622B2A0 8007B570 A800B48F */  lw         $s4, 0xA8($sp)
/* 622B2A4 8007B574 A400B38F */  lw         $s3, 0xA4($sp)
/* 622B2A8 8007B578 A000B28F */  lw         $s2, 0xA0($sp)
/* 622B2AC 8007B57C 9C00B18F */  lw         $s1, 0x9C($sp)
/* 622B2B0 8007B580 9800B08F */  lw         $s0, 0x98($sp)
/* 622B2B4 8007B584 C000BD27 */  addiu      $sp, $sp, 0xC0
/* 622B2B8 8007B588 0800E003 */  jr         $ra
/* 622B2BC 8007B58C 00000000 */   nop
.size func_level_26_8007ACC0, . - func_level_26_8007ACC0
