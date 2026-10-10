.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_12_80081D84
/* 416EAB4 80081D84 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 416EAB8 80081D88 2000B2AF */  sw         $s2, 0x20($sp)
/* 416EABC 80081D8C 21908000 */  addu       $s2, $a0, $zero
/* 416EAC0 80081D90 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 416EAC4 80081D94 2800B4AF */  sw         $s4, 0x28($sp)
/* 416EAC8 80081D98 2400B3AF */  sw         $s3, 0x24($sp)
/* 416EACC 80081D9C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 416EAD0 80081DA0 1800B0AF */  sw         $s0, 0x18($sp)
/* 416EAD4 80081DA4 0000508E */  lw         $s0, 0x0($s2)
/* 416EAD8 80081DA8 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 416EADC 80081DAC C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 416EAE0 80081DB0 4000038E */  lw         $v1, 0x40($s0)
/* 416EAE4 80081DB4 00000000 */  nop
/* 416EAE8 80081DB8 94006214 */  bne        $v1, $v0, .Llevel_12_8008200C
/* 416EAEC 80081DBC 00000000 */   nop
/* 416EAF0 80081DC0 0780143C */  lui        $s4, %hi(D_8006E480)
/* 416EAF4 80081DC4 80E49426 */  addiu      $s4, $s4, %lo(D_8006E480)
/* 416EAF8 80081DC8 0000828E */  lw         $v0, 0x0($s4)
/* 416EAFC 80081DCC 00000000 */  nop
/* 416EB00 80081DD0 8E004014 */  bnez       $v0, .Llevel_12_8008200C
/* 416EB04 80081DD4 01001324 */   addiu     $s3, $zero, 0x1
/* 416EB08 80081DD8 0780033C */  lui        $v1, %hi(D_8006E344)
/* 416EB0C 80081DDC 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 416EB10 80081DE0 00000000 */  nop
/* 416EB14 80081DE4 89007310 */  beq        $v1, $s3, .Llevel_12_8008200C
/* 416EB18 80081DE8 0F000224 */   addiu     $v0, $zero, 0xF
/* 416EB1C 80081DEC 87006210 */  beq        $v1, $v0, .Llevel_12_8008200C
/* 416EB20 80081DF0 21280002 */   addu      $a1, $s0, $zero
/* 416EB24 80081DF4 0780113C */  lui        $s1, %hi(D_80070328)
/* 416EB28 80081DF8 28033126 */  addiu      $s1, $s1, %lo(D_80070328)
/* 416EB2C 80081DFC 21202002 */  addu       $a0, $s1, $zero
/* 416EB30 80081E00 3800078E */  lw         $a3, 0x38($s0)
/* 416EB34 80081E04 88D8000C */  jal        func_80036220
/* 416EB38 80081E08 21300000 */   addu      $a2, $zero, $zero
/* 416EB3C 80081E0C 0E004010 */  beqz       $v0, .Llevel_12_80081E48
/* 416EB40 80081E10 00000000 */   nop
/* 416EB44 80081E14 3000028E */  lw         $v0, 0x30($s0)
/* 416EB48 80081E18 3400048E */  lw         $a0, 0x34($s0)
/* 416EB4C 80081E1C 40280200 */  sll        $a1, $v0, 1
/* 416EB50 80081E20 2128A200 */  addu       $a1, $a1, $v0
/* 416EB54 80081E24 80280500 */  sll        $a1, $a1, 2
/* 416EB58 80081E28 2328A200 */  subu       $a1, $a1, $v0
/* 416EB5C 80081E2C 0780023C */  lui        $v0, %hi(D_8006C550)
/* 416EB60 80081E30 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 416EB64 80081E34 C0280500 */  sll        $a1, $a1, 3
/* 416EB68 80081E38 464A010C */  jal        func_80052918
/* 416EB6C 80081E3C 21284500 */   addu      $a1, $v0, $a1
/* 416EB70 80081E40 03080208 */  j          .Llevel_12_8008200C
/* 416EB74 80081E44 00000000 */   nop
.Llevel_12_80081E48:
/* 416EB78 80081E48 48004392 */  lbu        $v1, 0x48($s2)
/* 416EB7C 80081E4C 00000000 */  nop
/* 416EB80 80081E50 14007310 */  beq        $v1, $s3, .Llevel_12_80081EA4
/* 416EB84 80081E54 02006228 */   slti      $v0, $v1, 0x2
/* 416EB88 80081E58 05004010 */  beqz       $v0, .Llevel_12_80081E70
/* 416EB8C 80081E5C 00000000 */   nop
/* 416EB90 80081E60 0A006010 */  beqz       $v1, .Llevel_12_80081E8C
/* 416EB94 80081E64 21202002 */   addu      $a0, $s1, $zero
/* 416EB98 80081E68 03080208 */  j          .Llevel_12_8008200C
/* 416EB9C 80081E6C 00000000 */   nop
.Llevel_12_80081E70:
/* 416EBA0 80081E70 02001424 */  addiu      $s4, $zero, 0x2
/* 416EBA4 80081E74 43007410 */  beq        $v1, $s4, .Llevel_12_80081F84
/* 416EBA8 80081E78 03000224 */   addiu     $v0, $zero, 0x3
/* 416EBAC 80081E7C 56006210 */  beq        $v1, $v0, .Llevel_12_80081FD8
/* 416EBB0 80081E80 00000000 */   nop
/* 416EBB4 80081E84 03080208 */  j          .Llevel_12_8008200C
/* 416EBB8 80081E88 00000000 */   nop
.Llevel_12_80081E8C:
/* 416EBBC 80081E8C 18000526 */  addiu      $a1, $s0, 0x18
/* 416EBC0 80081E90 3C00078E */  lw         $a3, 0x3C($s0)
/* 416EBC4 80081E94 88D8000C */  jal        func_80036220
/* 416EBC8 80081E98 21300000 */   addu      $a2, $zero, $zero
/* 416EBCC 80081E9C EF070208 */  j          .Llevel_12_80081FBC
/* 416EBD0 80081EA0 00000000 */   nop
.Llevel_12_80081EA4:
/* 416EBD4 80081EA4 21202002 */  addu       $a0, $s1, $zero
/* 416EBD8 80081EA8 18000526 */  addiu      $a1, $s0, 0x18
/* 416EBDC 80081EAC 3C00078E */  lw         $a3, 0x3C($s0)
/* 416EBE0 80081EB0 00040624 */  addiu      $a2, $zero, 0x400
/* 416EBE4 80081EB4 88D8000C */  jal        func_80036220
/* 416EBE8 80081EB8 0004E724 */   addiu     $a3, $a3, 0x400
/* 416EBEC 80081EBC 39004010 */  beqz       $v0, .Llevel_12_80081FA4
/* 416EBF0 80081EC0 00000000 */   nop
/* 416EBF4 80081EC4 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 416EBF8 80081EC8 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
/* 416EBFC 80081ECC 00000000 */  nop
/* 416EC00 80081ED0 4E004014 */  bnez       $v0, .Llevel_12_8008200C
/* 416EC04 80081ED4 02000324 */   addiu     $v1, $zero, 0x2
/* 416EC08 80081ED8 0780043C */  lui        $a0, %hi(D_8006C5C8)
/* 416EC0C 80081EDC C8C5848C */  lw         $a0, %lo(D_8006C5C8)($a0)
/* 416EC10 80081EE0 80000224 */  addiu      $v0, $zero, 0x80
/* 416EC14 80081EE4 03008010 */  beqz       $a0, .Llevel_12_80081EF4
/* 416EC18 80081EE8 1000A2A3 */   sb        $v0, 0x10($sp)
/* 416EC1C 80081EEC 40100400 */  sll        $v0, $a0, 1
/* 416EC20 80081EF0 02004324 */  addiu      $v1, $v0, 0x2
.Llevel_12_80081EF4:
/* 416EC24 80081EF4 0E000424 */  addiu      $a0, $zero, 0xE
/* 416EC28 80081EF8 1000A527 */  addiu      $a1, $sp, 0x10
/* 416EC2C 80081EFC C0180300 */  sll        $v1, $v1, 3
/* 416EC30 80081F00 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 416EC34 80081F04 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 416EC38 80081F08 0780013C */  lui        $at, %hi(D_80072098)
/* 416EC3C 80081F0C 21082300 */  addu       $at, $at, $v1
/* 416EC40 80081F10 9820308C */  lw         $s0, %lo(D_80072098)($at)
/* 416EC44 80081F14 00110200 */  sll        $v0, $v0, 4
/* 416EC48 80081F18 0780013C */  lui        $at, %hi(D_8006DBE8)
/* 416EC4C 80081F1C 21082200 */  addu       $at, $at, $v0
/* 416EC50 80081F20 E8DB228C */  lw         $v0, %lo(D_8006DBE8)($at)
/* 416EC54 80081F24 21300000 */  addu       $a2, $zero, $zero
/* 416EC58 80081F28 2F78010C */  jal        func_8005E0BC
/* 416EC5C 80081F2C 21800202 */   addu      $s0, $s0, $v0
/* 416EC60 80081F30 21200002 */  addu       $a0, $s0, $zero
/* 416EC64 80081F34 02008104 */  bgez       $a0, .Llevel_12_80081F40
/* 416EC68 80081F38 F8FF9026 */   addiu     $s0, $s4, -0x8
/* 416EC6C 80081F3C FF078424 */  addiu      $a0, $a0, 0x7FF
.Llevel_12_80081F40:
/* 416EC70 80081F40 21280002 */  addu       $a1, $s0, $zero
/* 416EC74 80081F44 0780023C */  lui        $v0, %hi(D_8006E470)
/* 416EC78 80081F48 70E4428C */  lw         $v0, %lo(D_8006E470)($v0)
/* 416EC7C 80081F4C C3220400 */  sra        $a0, $a0, 11
/* 416EC80 80081F50 1B7D010C */  jal        CdIntToPos
/* 416EC84 80081F54 21204400 */   addu      $a0, $v0, $a0
/* 416EC88 80081F58 02000424 */  addiu      $a0, $zero, 0x2
/* 416EC8C 80081F5C 21280002 */  addu       $a1, $s0, $zero
/* 416EC90 80081F60 2F78010C */  jal        func_8005E0BC
/* 416EC94 80081F64 21300000 */   addu      $a2, $zero, $zero
/* 416EC98 80081F68 16000424 */  addiu      $a0, $zero, 0x16
/* 416EC9C 80081F6C 21280000 */  addu       $a1, $zero, $zero
/* 416ECA0 80081F70 2F78010C */  jal        func_8005E0BC
/* 416ECA4 80081F74 21300000 */   addu      $a2, $zero, $zero
/* 416ECA8 80081F78 02000224 */  addiu      $v0, $zero, 0x2
/* 416ECAC 80081F7C 03080208 */  j          .Llevel_12_8008200C
/* 416ECB0 80081F80 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_12_80081F84:
/* 416ECB4 80081F84 21202002 */  addu       $a0, $s1, $zero
/* 416ECB8 80081F88 18000526 */  addiu      $a1, $s0, 0x18
/* 416ECBC 80081F8C 3C00078E */  lw         $a3, 0x3C($s0)
/* 416ECC0 80081F90 00040624 */  addiu      $a2, $zero, 0x400
/* 416ECC4 80081F94 88D8000C */  jal        func_80036220
/* 416ECC8 80081F98 0004E724 */   addiu     $a3, $a3, 0x400
/* 416ECCC 80081F9C 05004014 */  bnez       $v0, .Llevel_12_80081FB4
/* 416ECD0 80081FA0 00000000 */   nop
.Llevel_12_80081FA4:
/* 416ECD4 80081FA4 0780013C */  lui        $at, %hi(D_8006E49C)
/* 416ECD8 80081FA8 9CE420AC */  sw         $zero, %lo(D_8006E49C)($at)
/* 416ECDC 80081FAC 03080208 */  j          .Llevel_12_8008200C
/* 416ECE0 80081FB0 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_12_80081FB4:
/* 416ECE4 80081FB4 0780023C */  lui        $v0, %hi(D_8006E48C)
/* 416ECE8 80081FB8 8CE4428C */  lw         $v0, %lo(D_8006E48C)($v0)
.Llevel_12_80081FBC:
/* 416ECEC 80081FBC 00000000 */  nop
/* 416ECF0 80081FC0 12004010 */  beqz       $v0, .Llevel_12_8008200C
/* 416ECF4 80081FC4 01000224 */   addiu     $v0, $zero, 0x1
/* 416ECF8 80081FC8 0780013C */  lui        $at, %hi(D_8006E49C)
/* 416ECFC 80081FCC 9CE433AC */  sw         $s3, %lo(D_8006E49C)($at)
/* 416ED00 80081FD0 03080208 */  j          .Llevel_12_8008200C
/* 416ED04 80081FD4 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_12_80081FD8:
/* 416ED08 80081FD8 3000028E */  lw         $v0, 0x30($s0)
/* 416ED0C 80081FDC 3400048E */  lw         $a0, 0x34($s0)
/* 416ED10 80081FE0 40280200 */  sll        $a1, $v0, 1
/* 416ED14 80081FE4 2128A200 */  addu       $a1, $a1, $v0
/* 416ED18 80081FE8 80280500 */  sll        $a1, $a1, 2
/* 416ED1C 80081FEC 2328A200 */  subu       $a1, $a1, $v0
/* 416ED20 80081FF0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 416ED24 80081FF4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 416ED28 80081FF8 C0280500 */  sll        $a1, $a1, 3
/* 416ED2C 80081FFC 464A010C */  jal        func_80052918
/* 416ED30 80082000 21284500 */   addu      $a1, $v0, $a1
/* 416ED34 80082004 0780013C */  lui        $at, %hi(D_8006C4F8)
/* 416ED38 80082008 F8C434AC */  sw         $s4, %lo(D_8006C4F8)($at)
.Llevel_12_8008200C:
/* 416ED3C 8008200C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 416ED40 80082010 2800B48F */  lw         $s4, 0x28($sp)
/* 416ED44 80082014 2400B38F */  lw         $s3, 0x24($sp)
/* 416ED48 80082018 2000B28F */  lw         $s2, 0x20($sp)
/* 416ED4C 8008201C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 416ED50 80082020 1800B08F */  lw         $s0, 0x18($sp)
/* 416ED54 80082024 3000BD27 */  addiu      $sp, $sp, 0x30
/* 416ED58 80082028 0800E003 */  jr         $ra
/* 416ED5C 8008202C 00000000 */   nop
.size func_level_12_80081D84, . - func_level_12_80081D84
