.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8007ABC8
/* 5A970F8 8007ABC8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5A970FC 8007ABCC 2000B2AF */  sw         $s2, 0x20($sp)
/* 5A97100 8007ABD0 21908000 */  addu       $s2, $a0, $zero
/* 5A97104 8007ABD4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 5A97108 8007ABD8 2800B4AF */  sw         $s4, 0x28($sp)
/* 5A9710C 8007ABDC 2400B3AF */  sw         $s3, 0x24($sp)
/* 5A97110 8007ABE0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 5A97114 8007ABE4 1800B0AF */  sw         $s0, 0x18($sp)
/* 5A97118 8007ABE8 0000508E */  lw         $s0, 0x0($s2)
/* 5A9711C 8007ABEC 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 5A97120 8007ABF0 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 5A97124 8007ABF4 4000038E */  lw         $v1, 0x40($s0)
/* 5A97128 8007ABF8 00000000 */  nop
/* 5A9712C 8007ABFC 94006214 */  bne        $v1, $v0, .Llevel_23_8007AE50
/* 5A97130 8007AC00 00000000 */   nop
/* 5A97134 8007AC04 0780143C */  lui        $s4, %hi(D_8006E480)
/* 5A97138 8007AC08 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 5A9713C 8007AC0C 0000828E */  lw         $v0, 0x0($s4)
/* 5A97140 8007AC10 00000000 */  nop
/* 5A97144 8007AC14 8E004014 */  bnez       $v0, .Llevel_23_8007AE50
/* 5A97148 8007AC18 01001324 */   addiu     $s3, $zero, 0x1
/* 5A9714C 8007AC1C 0780033C */  lui        $v1, %hi(D_8006E344)
/* 5A97150 8007AC20 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 5A97154 8007AC24 00000000 */  nop
/* 5A97158 8007AC28 89007310 */  beq        $v1, $s3, .Llevel_23_8007AE50
/* 5A9715C 8007AC2C 0F000224 */   addiu     $v0, $zero, 0xF
/* 5A97160 8007AC30 87006210 */  beq        $v1, $v0, .Llevel_23_8007AE50
/* 5A97164 8007AC34 21280002 */   addu      $a1, $s0, $zero
/* 5A97168 8007AC38 0780113C */  lui        $s1, %hi(D_80070328)
/* 5A9716C 8007AC3C 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 5A97170 8007AC40 21202002 */  addu       $a0, $s1, $zero
/* 5A97174 8007AC44 3800078E */  lw         $a3, 0x38($s0)
/* 5A97178 8007AC48 88D8000C */  jal        func_80036220
/* 5A9717C 8007AC4C 21300000 */   addu      $a2, $zero, $zero
/* 5A97180 8007AC50 0E004010 */  beqz       $v0, .Llevel_23_8007AC8C
/* 5A97184 8007AC54 00000000 */   nop
/* 5A97188 8007AC58 3000028E */  lw         $v0, 0x30($s0)
/* 5A9718C 8007AC5C 3400048E */  lw         $a0, 0x34($s0)
/* 5A97190 8007AC60 40280200 */  sll        $a1, $v0, 1
/* 5A97194 8007AC64 2128A200 */  addu       $a1, $a1, $v0
/* 5A97198 8007AC68 80280500 */  sll        $a1, $a1, 2
/* 5A9719C 8007AC6C 2328A200 */  subu       $a1, $a1, $v0
/* 5A971A0 8007AC70 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5A971A4 8007AC74 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5A971A8 8007AC78 C0280500 */  sll        $a1, $a1, 3
/* 5A971AC 8007AC7C 464A010C */  jal        func_80052918
/* 5A971B0 8007AC80 21284500 */   addu      $a1, $v0, $a1
/* 5A971B4 8007AC84 94EB0108 */  j          .Llevel_23_8007AE50
/* 5A971B8 8007AC88 00000000 */   nop
.Llevel_23_8007AC8C:
/* 5A971BC 8007AC8C 48004392 */  lbu        $v1, 0x48($s2)
/* 5A971C0 8007AC90 00000000 */  nop
/* 5A971C4 8007AC94 14007310 */  beq        $v1, $s3, .Llevel_23_8007ACE8
/* 5A971C8 8007AC98 02006228 */   slti      $v0, $v1, 0x2
/* 5A971CC 8007AC9C 05004010 */  beqz       $v0, .Llevel_23_8007ACB4
/* 5A971D0 8007ACA0 00000000 */   nop
/* 5A971D4 8007ACA4 0A006010 */  beqz       $v1, .Llevel_23_8007ACD0
/* 5A971D8 8007ACA8 21202002 */   addu      $a0, $s1, $zero
/* 5A971DC 8007ACAC 94EB0108 */  j          .Llevel_23_8007AE50
/* 5A971E0 8007ACB0 00000000 */   nop
.Llevel_23_8007ACB4:
/* 5A971E4 8007ACB4 02001424 */  addiu      $s4, $zero, 0x2
/* 5A971E8 8007ACB8 43007410 */  beq        $v1, $s4, .Llevel_23_8007ADC8
/* 5A971EC 8007ACBC 03000224 */   addiu     $v0, $zero, 0x3
/* 5A971F0 8007ACC0 56006210 */  beq        $v1, $v0, .Llevel_23_8007AE1C
/* 5A971F4 8007ACC4 00000000 */   nop
/* 5A971F8 8007ACC8 94EB0108 */  j          .Llevel_23_8007AE50
/* 5A971FC 8007ACCC 00000000 */   nop
.Llevel_23_8007ACD0:
/* 5A97200 8007ACD0 18000526 */  addiu      $a1, $s0, 0x18
/* 5A97204 8007ACD4 3C00078E */  lw         $a3, 0x3C($s0)
/* 5A97208 8007ACD8 88D8000C */  jal        func_80036220
/* 5A9720C 8007ACDC 21300000 */   addu      $a2, $zero, $zero
/* 5A97210 8007ACE0 80EB0108 */  j          .Llevel_23_8007AE00
/* 5A97214 8007ACE4 00000000 */   nop
.Llevel_23_8007ACE8:
/* 5A97218 8007ACE8 21202002 */  addu       $a0, $s1, $zero
/* 5A9721C 8007ACEC 18000526 */  addiu      $a1, $s0, 0x18
/* 5A97220 8007ACF0 3C00078E */  lw         $a3, 0x3C($s0)
/* 5A97224 8007ACF4 00040624 */  addiu      $a2, $zero, 0x400
/* 5A97228 8007ACF8 88D8000C */  jal        func_80036220
/* 5A9722C 8007ACFC 0004E724 */   addiu     $a3, $a3, 0x400
/* 5A97230 8007AD00 39004010 */  beqz       $v0, .Llevel_23_8007ADE8
/* 5A97234 8007AD04 00000000 */   nop
/* 5A97238 8007AD08 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 5A9723C 8007AD0C 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 5A97240 8007AD10 00000000 */  nop
/* 5A97244 8007AD14 4E004014 */  bnez       $v0, .Llevel_23_8007AE50
/* 5A97248 8007AD18 02000324 */   addiu     $v1, $zero, 0x2
/* 5A9724C 8007AD1C 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 5A97250 8007AD20 C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 5A97254 8007AD24 80000224 */  addiu      $v0, $zero, 0x80
/* 5A97258 8007AD28 03008010 */  beqz       $a0, .Llevel_23_8007AD38
/* 5A9725C 8007AD2C 1000A2A3 */   sb        $v0, 0x10($sp)
/* 5A97260 8007AD30 40100400 */  sll        $v0, $a0, 1
/* 5A97264 8007AD34 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_23_8007AD38:
/* 5A97268 8007AD38 0E000424 */  addiu      $a0, $zero, 0xE
/* 5A9726C 8007AD3C 1000A527 */  addiu      $a1, $sp, 0x10
/* 5A97270 8007AD40 C0180300 */  sll        $v1, $v1, 3
/* 5A97274 8007AD44 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 5A97278 8007AD48 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 5A9727C 8007AD4C 0780013C */  lui        $at, %hi(D_80072098)
/* 5A97280 8007AD50 21082300 */  addu       $at, $at, $v1
/* 5A97284 8007AD54 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 5A97288 8007AD58 00110200 */  sll        $v0, $v0, 4
/* 5A9728C 8007AD5C 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 5A97290 8007AD60 21082200 */  addu       $at, $at, $v0
/* 5A97294 8007AD64 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 5A97298 8007AD68 21300000 */  addu       $a2, $zero, $zero
/* 5A9729C 8007AD6C 2F78010C */  jal        func_8005E0BC
/* 5A972A0 8007AD70 21800202 */   addu      $s0, $s0, $v0
/* 5A972A4 8007AD74 21200002 */  addu       $a0, $s0, $zero
/* 5A972A8 8007AD78 02008104 */  bgez       $a0, .Llevel_23_8007AD84
/* 5A972AC 8007AD7C F8FF9026 */   addiu     $s0, $s4, -0x8
/* 5A972B0 8007AD80 FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_23_8007AD84:
/* 5A972B4 8007AD84 21280002 */  addu       $a1, $s0, $zero
/* 5A972B8 8007AD88 0780023C */  lui        $v0, %hi(D_8006E470)
/* 5A972BC 8007AD8C 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 5A972C0 8007AD90 C3220400 */  sra        $a0, $a0, 11
/* 5A972C4 8007AD94 1B7D010C */  jal        CdIntToPos
/* 5A972C8 8007AD98 21204400 */   addu      $a0, $v0, $a0
/* 5A972CC 8007AD9C 02000424 */  addiu      $a0, $zero, 0x2
/* 5A972D0 8007ADA0 21280002 */  addu       $a1, $s0, $zero
/* 5A972D4 8007ADA4 2F78010C */  jal        func_8005E0BC
/* 5A972D8 8007ADA8 21300000 */   addu      $a2, $zero, $zero
/* 5A972DC 8007ADAC 16000424 */  addiu      $a0, $zero, 0x16
/* 5A972E0 8007ADB0 21280000 */  addu       $a1, $zero, $zero
/* 5A972E4 8007ADB4 2F78010C */  jal        func_8005E0BC
/* 5A972E8 8007ADB8 21300000 */   addu      $a2, $zero, $zero
/* 5A972EC 8007ADBC 02000224 */  addiu      $v0, $zero, 0x2
/* 5A972F0 8007ADC0 94EB0108 */  j          .Llevel_23_8007AE50
/* 5A972F4 8007ADC4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_23_8007ADC8:
/* 5A972F8 8007ADC8 21202002 */  addu       $a0, $s1, $zero
/* 5A972FC 8007ADCC 18000526 */  addiu      $a1, $s0, 0x18
/* 5A97300 8007ADD0 3C00078E */  lw         $a3, 0x3C($s0)
/* 5A97304 8007ADD4 00040624 */  addiu      $a2, $zero, 0x400
/* 5A97308 8007ADD8 88D8000C */  jal        func_80036220
/* 5A9730C 8007ADDC 0004E724 */   addiu     $a3, $a3, 0x400
/* 5A97310 8007ADE0 05004014 */  bnez       $v0, .Llevel_23_8007ADF8
/* 5A97314 8007ADE4 00000000 */   nop
.Llevel_23_8007ADE8:
/* 5A97318 8007ADE8 0780013C */  lui        $at, %hi(D_8006E49C)
/* 5A9731C 8007ADEC 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 5A97320 8007ADF0 94EB0108 */  j          .Llevel_23_8007AE50
/* 5A97324 8007ADF4 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_23_8007ADF8:
/* 5A97328 8007ADF8 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 5A9732C 8007ADFC 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_23_8007AE00:
/* 5A97330 8007AE00 00000000 */  nop
/* 5A97334 8007AE04 12004010 */  beqz       $v0, .Llevel_23_8007AE50
/* 5A97338 8007AE08 01000224 */   addiu     $v0, $zero, 0x1
/* 5A9733C 8007AE0C 0780013C */  lui        $at, %hi(D_8006E49C)
/* 5A97340 8007AE10 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 5A97344 8007AE14 94EB0108 */  j          .Llevel_23_8007AE50
/* 5A97348 8007AE18 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_23_8007AE1C:
/* 5A9734C 8007AE1C 3000028E */  lw         $v0, 0x30($s0)
/* 5A97350 8007AE20 3400048E */  lw         $a0, 0x34($s0)
/* 5A97354 8007AE24 40280200 */  sll        $a1, $v0, 1
/* 5A97358 8007AE28 2128A200 */  addu       $a1, $a1, $v0
/* 5A9735C 8007AE2C 80280500 */  sll        $a1, $a1, 2
/* 5A97360 8007AE30 2328A200 */  subu       $a1, $a1, $v0
/* 5A97364 8007AE34 0780023C */  lui        $v0, %hi(D_8006C550)
/* 5A97368 8007AE38 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 5A9736C 8007AE3C C0280500 */  sll        $a1, $a1, 3
/* 5A97370 8007AE40 464A010C */  jal        func_80052918
/* 5A97374 8007AE44 21284500 */   addu      $a1, $v0, $a1
/* 5A97378 8007AE48 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 5A9737C 8007AE4C F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_23_8007AE50:
/* 5A97380 8007AE50 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 5A97384 8007AE54 2800B48F */  lw         $s4, 0x28($sp)
/* 5A97388 8007AE58 2400B38F */  lw         $s3, 0x24($sp)
/* 5A9738C 8007AE5C 2000B28F */  lw         $s2, 0x20($sp)
/* 5A97390 8007AE60 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5A97394 8007AE64 1800B08F */  lw         $s0, 0x18($sp)
/* 5A97398 8007AE68 3000BD27 */  addiu      $sp, $sp, 0x30
/* 5A9739C 8007AE6C 0800E003 */  jr         $ra
/* 5A973A0 8007AE70 00000000 */   nop
.size func_level_23_8007ABC8, . - func_level_23_8007ABC8
