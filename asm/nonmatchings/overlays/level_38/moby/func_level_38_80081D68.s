.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_38_80081D68
/* 7C40A98 80081D68 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 7C40A9C 80081D6C 3000B0AF */  sw         $s0, 0x30($sp)
/* 7C40AA0 80081D70 21808000 */  addu       $s0, $a0, $zero
/* 7C40AA4 80081D74 4400BFAF */  sw         $ra, 0x44($sp)
/* 7C40AA8 80081D78 4000B4AF */  sw         $s4, 0x40($sp)
/* 7C40AAC 80081D7C 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 7C40AB0 80081D80 3800B2AF */  sw         $s2, 0x38($sp)
/* 7C40AB4 80081D84 3400B1AF */  sw         $s1, 0x34($sp)
/* 7C40AB8 80081D88 48000392 */  lbu        $v1, 0x48($s0)
/* 7C40ABC 80081D8C 0000128E */  lw         $s2, 0x0($s0)
/* 7C40AC0 80081D90 85006010 */  beqz       $v1, .Llevel_38_80081FA8
/* 7C40AC4 80081D94 2A000224 */   addiu     $v0, $zero, 0x2A
/* 7C40AC8 80081D98 83006210 */  beq        $v1, $v0, .Llevel_38_80081FA8
/* 7C40ACC 80081D9C 21200002 */   addu      $a0, $s0, $zero
/* 7C40AD0 80081DA0 4957010C */  jal        func_80055D24
/* 7C40AD4 80081DA4 05000524 */   addiu     $a1, $zero, 0x5
/* 7C40AD8 80081DA8 1800028E */  lw         $v0, 0x18($s0)
/* 7C40ADC 80081DAC 00000000 */  nop
/* 7C40AE0 80081DB0 0B004010 */  beqz       $v0, .Llevel_38_80081DE0
/* 7C40AE4 80081DB4 02000224 */   addiu     $v0, $zero, 0x2
/* 7C40AE8 80081DB8 48000392 */  lbu        $v1, 0x48($s0)
/* 7C40AEC 80081DBC 00000000 */  nop
/* 7C40AF0 80081DC0 07006210 */  beq        $v1, $v0, .Llevel_38_80081DE0
/* 7C40AF4 80081DC4 21200002 */   addu      $a0, $s0, $zero
/* 7C40AF8 80081DC8 21280000 */  addu       $a1, $zero, $zero
/* 7C40AFC 80081DCC 21300000 */  addu       $a2, $zero, $zero
/* 7C40B00 80081DD0 02000224 */  addiu      $v0, $zero, 0x2
/* 7C40B04 80081DD4 480002A2 */  sb         $v0, 0x48($s0)
/* 7C40B08 80081DD8 AFEE000C */  jal        func_8003BABC
/* 7C40B0C 80081DDC 080000AE */   sw        $zero, 0x8($s0)
.Llevel_38_80081DE0:
/* 7C40B10 80081DE0 0780053C */  lui        $a1, %hi(D_80070328)
/* 7C40B14 80081DE4 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 7C40B18 80081DE8 CD3C010C */  jal        func_8004F334
/* 7C40B1C 80081DEC 0C000426 */   addiu     $a0, $s0, 0xC
/* 7C40B20 80081DF0 21204000 */  addu       $a0, $v0, $zero
/* 7C40B24 80081DF4 48000392 */  lbu        $v1, 0x48($s0)
/* 7C40B28 80081DF8 02000224 */  addiu      $v0, $zero, 0x2
/* 7C40B2C 80081DFC 0B006210 */  beq        $v1, $v0, .Llevel_38_80081E2C
/* 7C40B30 80081E00 00048228 */   slti      $v0, $a0, 0x400
/* 7C40B34 80081E04 09004010 */  beqz       $v0, .Llevel_38_80081E2C
/* 7C40B38 80081E08 00000000 */   nop
/* 7C40B3C 80081E0C 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 7C40B40 80081E10 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 7C40B44 80081E14 00000000 */  nop
/* 7C40B48 80081E18 01004234 */  ori        $v0, $v0, 0x1
/* 7C40B4C 80081E1C 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 7C40B50 80081E20 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 7C40B54 80081E24 02000224 */  addiu      $v0, $zero, 0x2
/* 7C40B58 80081E28 480002A2 */  sb         $v0, 0x48($s0)
.Llevel_38_80081E2C:
/* 7C40B5C 80081E2C 48001192 */  lbu        $s1, 0x48($s0)
/* 7C40B60 80081E30 02000224 */  addiu      $v0, $zero, 0x2
/* 7C40B64 80081E34 31002212 */  beq        $s1, $v0, .Llevel_38_80081EFC
/* 7C40B68 80081E38 0300222A */   slti      $v0, $s1, 0x3
/* 7C40B6C 80081E3C 05004010 */  beqz       $v0, .Llevel_38_80081E54
/* 7C40B70 80081E40 01000224 */   addiu     $v0, $zero, 0x1
/* 7C40B74 80081E44 08002212 */  beq        $s1, $v0, .Llevel_38_80081E68
/* 7C40B78 80081E48 23000224 */   addiu     $v0, $zero, 0x23
/* 7C40B7C 80081E4C 03080208 */  j          .Llevel_38_8008200C
/* 7C40B80 80081E50 00000000 */   nop
.Llevel_38_80081E54:
/* 7C40B84 80081E54 03000224 */  addiu      $v0, $zero, 0x3
/* 7C40B88 80081E58 5A002212 */  beq        $s1, $v0, .Llevel_38_80081FC4
/* 7C40B8C 80081E5C 21200002 */   addu      $a0, $s0, $zero
/* 7C40B90 80081E60 03080208 */  j          .Llevel_38_8008200C
/* 7C40B94 80081E64 00000000 */   nop
.Llevel_38_80081E68:
/* 7C40B98 80081E68 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C40B9C 80081E6C 21200002 */  addu       $a0, $s0, $zero
/* 7C40BA0 80081E70 A0000524 */  addiu      $a1, $zero, 0xA0
/* 7C40BA4 80081E74 80030624 */  addiu      $a2, $zero, 0x380
/* 7C40BA8 80081E78 77D7000C */  jal        func_80035DDC
/* 7C40BAC 80081E7C 80030724 */   addiu     $a3, $zero, 0x380
/* 7C40BB0 80081E80 20004230 */  andi       $v0, $v0, 0x20
/* 7C40BB4 80081E84 0C004010 */  beqz       $v0, .Llevel_38_80081EB8
/* 7C40BB8 80081E88 21300000 */   addu      $a2, $zero, $zero
/* 7C40BBC 80081E8C 0780023C */  lui        $v0, %hi(D_80071930)
/* 7C40BC0 80081E90 3019428C */  lw         $v0, %lo(D_80071930)($v0)
/* 7C40BC4 80081E94 0C00078E */  lw         $a3, 0xC($s0)
/* 7C40BC8 80081E98 1000038E */  lw         $v1, 0x10($s0)
/* 7C40BCC 80081E9C 0C00448C */  lw         $a0, 0xC($v0)
/* 7C40BD0 80081EA0 1000458C */  lw         $a1, 0x10($v0)
/* 7C40BD4 80081EA4 2320E400 */  subu       $a0, $a3, $a0
/* 7C40BD8 80081EA8 203A010C */  jal        func_8004E880
/* 7C40BDC 80081EAC 23286500 */   subu      $a1, $v1, $a1
/* 7C40BE0 80081EB0 B6070208 */  j          .Llevel_38_80081ED8
/* 7C40BE4 80081EB4 21200002 */   addu      $a0, $s0, $zero
.Llevel_38_80081EB8:
/* 7C40BE8 80081EB8 49000426 */  addiu      $a0, $s0, 0x49
/* 7C40BEC 80081EBC 0780023C */  lui        $v0, %hi(unk_ovlheader_800743C4)
/* 7C40BF0 80081EC0 C443428C */  lw         $v0, %lo(unk_ovlheader_800743C4)($v0)
/* 7C40BF4 80081EC4 0780063C */  lui        $a2, %hi(D_80070328)
/* 7C40BF8 80081EC8 2803C624 */  addiu      $a2, $a2, %lo(D_80070328)
/* 7C40BFC 80081ECC 09F84000 */  jalr       $v0
/* 7C40C00 80081ED0 0C000526 */   addiu     $a1, $s0, 0xC
/* 7C40C04 80081ED4 21200002 */  addu       $a0, $s0, $zero
.Llevel_38_80081ED8:
/* 7C40C08 80081ED8 FF004530 */  andi       $a1, $v0, 0xFF
/* 7C40C0C 80081EDC 0A000624 */  addiu      $a2, $zero, 0xA
/* 7C40C10 80081EE0 21380000 */  addu       $a3, $zero, $zero
/* 7C40C14 80081EE4 01000224 */  addiu      $v0, $zero, 0x1
/* 7C40C18 80081EE8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C40C1C 80081EEC 17D6000C */  jal        func_8003585C
/* 7C40C20 80081EF0 1400A0AF */   sw        $zero, 0x14($sp)
/* 7C40C24 80081EF4 03080208 */  j          .Llevel_38_8008200C
/* 7C40C28 80081EF8 00000000 */   nop
.Llevel_38_80081EFC:
/* 7C40C2C 80081EFC 9171010C */  jal        rand
/* 7C40C30 80081F00 21880000 */   addu      $s1, $zero, $zero
/* 7C40C34 80081F04 21904000 */  addu       $s2, $v0, $zero
/* 7C40C38 80081F08 0680143C */  lui        $s4, %hi(D_80065920)
/* 7C40C3C 80081F0C 20599426 */  addiu      $s4, $s4, %lo(D_80065920)
/* 7C40C40 80081F10 0C001326 */  addiu      $s3, $s0, 0xC
.Llevel_38_80081F14:
/* 7C40C44 80081F14 01000424 */  addiu      $a0, $zero, 0x1
/* 7C40C48 80081F18 14000524 */  addiu      $a1, $zero, 0x14
/* 7C40C4C 80081F1C FF004332 */  andi       $v1, $s2, 0xFF
/* 7C40C50 80081F20 40180300 */  sll        $v1, $v1, 1
/* 7C40C54 80081F24 21107400 */  addu       $v0, $v1, $s4
/* 7C40C58 80081F28 00004284 */  lh         $v0, 0x0($v0)
/* 7C40C5C 80081F2C 21306002 */  addu       $a2, $s3, $zero
/* 7C40C60 80081F30 C3110200 */  sra        $v0, $v0, 7
/* 7C40C64 80081F34 2000A2AF */  sw         $v0, 0x20($sp)
/* 7C40C68 80081F38 0680013C */  lui        $at, %hi(D_800658A0)
/* 7C40C6C 80081F3C 21082300 */  addu       $at, $at, $v1
/* 7C40C70 80081F40 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 7C40C74 80081F44 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 7C40C78 80081F48 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 7C40C7C 80081F4C 2000A727 */  addiu      $a3, $sp, 0x20
/* 7C40C80 80081F50 2800A0AF */  sw         $zero, 0x28($sp)
/* 7C40C84 80081F54 C3110200 */  sra        $v0, $v0, 7
/* 7C40C88 80081F58 09F86000 */  jalr       $v1
/* 7C40C8C 80081F5C 2400A2AF */   sw        $v0, 0x24($sp)
/* 7C40C90 80081F60 01002232 */  andi       $v0, $s1, 0x1
/* 7C40C94 80081F64 0B004010 */  beqz       $v0, .Llevel_38_80081F94
/* 7C40C98 80081F68 2000A427 */   addiu     $a0, $sp, 0x20
/* 7C40C9C 80081F6C 443C010C */  jal        func_8004F110
/* 7C40CA0 80081F70 01000524 */   addiu     $a1, $zero, 0x1
/* 7C40CA4 80081F74 01000424 */  addiu      $a0, $zero, 0x1
/* 7C40CA8 80081F78 14000524 */  addiu      $a1, $zero, 0x14
/* 7C40CAC 80081F7C 21306002 */  addu       $a2, $s3, $zero
/* 7C40CB0 80081F80 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7C40CB4 80081F84 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7C40CB8 80081F88 00000000 */  nop
/* 7C40CBC 80081F8C 09F84000 */  jalr       $v0
/* 7C40CC0 80081F90 2000A727 */   addiu     $a3, $sp, 0x20
.Llevel_38_80081F94:
/* 7C40CC4 80081F94 01003126 */  addiu      $s1, $s1, 0x1
/* 7C40CC8 80081F98 FF002232 */  andi       $v0, $s1, 0xFF
/* 7C40CCC 80081F9C 0800422C */  sltiu      $v0, $v0, 0x8
/* 7C40CD0 80081FA0 DCFF4014 */  bnez       $v0, .Llevel_38_80081F14
/* 7C40CD4 80081FA4 20005226 */   addiu     $s2, $s2, 0x20
.Llevel_38_80081FA8:
/* 7C40CD8 80081FA8 2A000224 */  addiu      $v0, $zero, 0x2A
/* 7C40CDC 80081FAC 080000AE */  sw         $zero, 0x8($s0)
/* 7C40CE0 80081FB0 410000A2 */  sb         $zero, 0x41($s0)
/* 7C40CE4 80081FB4 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 7C40CE8 80081FB8 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 7C40CEC 80081FBC 03080208 */  j          .Llevel_38_8008200C
/* 7C40CF0 80081FC0 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_38_80081FC4:
/* 7C40CF4 80081FC4 0C004526 */  addiu      $a1, $s2, 0xC
/* 7C40CF8 80081FC8 08000224 */  addiu      $v0, $zero, 0x8
/* 7C40CFC 80081FCC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7C40D00 80081FD0 10000224 */  addiu      $v0, $zero, 0x10
/* 7C40D04 80081FD4 1400A2AF */  sw         $v0, 0x14($sp)
/* 7C40D08 80081FD8 00020224 */  addiu      $v0, $zero, 0x200
/* 7C40D0C 80081FDC 1800A2AF */  sw         $v0, 0x18($sp)
/* 7C40D10 80081FE0 23000224 */  addiu      $v0, $zero, 0x23
/* 7C40D14 80081FE4 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 7C40D18 80081FE8 0400468E */  lw         $a2, 0x4($s2)
/* 7C40D1C 80081FEC 0CD4000C */  jal        func_80035030
/* 7C40D20 80081FF0 08004726 */   addiu     $a3, $s2, 0x8
/* 7C40D24 80081FF4 05005114 */  bne        $v0, $s1, .Llevel_38_8008200C
/* 7C40D28 80081FF8 01000224 */   addiu     $v0, $zero, 0x1
/* 7C40D2C 80081FFC 480002A2 */  sb         $v0, 0x48($s0)
/* 7C40D30 80082000 21200002 */  addu       $a0, $s0, $zero
/* 7C40D34 80082004 D0D3000C */  jal        func_80034F40
/* 7C40D38 80082008 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_38_8008200C:
/* 7C40D3C 8008200C 4400BF8F */  lw         $ra, 0x44($sp)
/* 7C40D40 80082010 4000B48F */  lw         $s4, 0x40($sp)
/* 7C40D44 80082014 3C00B38F */  lw         $s3, 0x3C($sp)
/* 7C40D48 80082018 3800B28F */  lw         $s2, 0x38($sp)
/* 7C40D4C 8008201C 3400B18F */  lw         $s1, 0x34($sp)
/* 7C40D50 80082020 3000B08F */  lw         $s0, 0x30($sp)
/* 7C40D54 80082024 4800BD27 */  addiu      $sp, $sp, 0x48
/* 7C40D58 80082028 0800E003 */  jr         $ra
/* 7C40D5C 8008202C 00000000 */   nop
.size func_level_38_80081D68, . - func_level_38_80081D68
