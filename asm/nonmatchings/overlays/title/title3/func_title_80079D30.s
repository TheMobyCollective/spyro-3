.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_title_80079D30
/* 28A60 80079D30 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 28A64 80079D34 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 28A68 80079D38 21A88000 */  addu       $s5, $a0, $zero
/* 28A6C 80079D3C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 28A70 80079D40 2188A002 */  addu       $s1, $s5, $zero
/* 28A74 80079D44 3000BFAF */  sw         $ra, 0x30($sp)
/* 28A78 80079D48 2800B4AF */  sw         $s4, 0x28($sp)
/* 28A7C 80079D4C 2400B3AF */  sw         $s3, 0x24($sp)
/* 28A80 80079D50 2000B2AF */  sw         $s2, 0x20($sp)
/* 28A84 80079D54 1800B0AF */  sw         $s0, 0x18($sp)
/* 28A88 80079D58 0000228E */  lw         $v0, 0x0($s1)
/* 28A8C 80079D5C 04003126 */  addiu      $s1, $s1, 0x4
/* 28A90 80079D60 40100200 */  sll        $v0, $v0, 1
/* 28A94 80079D64 0780013C */  lui        $at, %hi(D_8006EDEC)
/* 28A98 80079D68 ECED22AC */  sw         $v0, %lo(D_8006EDEC)($at)
/* 28A9C 80079D6C 0000238E */  lw         $v1, 0x0($s1)
/* 28AA0 80079D70 04003126 */  addiu      $s1, $s1, 0x4
/* 28AA4 80079D74 0780013C */  lui        $at, %hi(D_8006EDF0)
/* 28AA8 80079D78 F0ED23AC */  sw         $v1, %lo(D_8006EDF0)($at)
/* 28AAC 80079D7C 0000228E */  lw         $v0, 0x0($s1)
/* 28AB0 80079D80 04003126 */  addiu      $s1, $s1, 0x4
/* 28AB4 80079D84 80180300 */  sll        $v1, $v1, 2
/* 28AB8 80079D88 0780013C */  lui        $at, %hi(D_8006EDFC)
/* 28ABC 80079D8C FCED22AC */  sw         $v0, %lo(D_8006EDFC)($at)
/* 28AC0 80079D90 0000278E */  lw         $a3, 0x0($s1)
/* 28AC4 80079D94 04003126 */  addiu      $s1, $s1, 0x4
/* 28AC8 80079D98 0780013C */  lui        $at, %hi(D_8006EE00)
/* 28ACC 80079D9C 00EE27AC */  sw         $a3, %lo(D_8006EE00)($at)
/* 28AD0 80079DA0 0000248E */  lw         $a0, 0x0($s1)
/* 28AD4 80079DA4 04003126 */  addiu      $s1, $s1, 0x4
/* 28AD8 80079DA8 0780013C */  lui        $at, %hi(D_8006EDF4)
/* 28ADC 80079DAC F4ED31AC */  sw         $s1, %lo(D_8006EDF4)($at)
/* 28AE0 80079DB0 21882302 */  addu       $s1, $s1, $v1
/* 28AE4 80079DB4 0780013C */  lui        $at, %hi(D_8006EDF8)
/* 28AE8 80079DB8 F8ED31AC */  sw         $s1, %lo(D_8006EDF8)($at)
/* 28AEC 80079DBC 2110A702 */  addu       $v0, $s5, $a3
/* 28AF0 80079DC0 0780013C */  lui        $at, %hi(D_8006EE08)
/* 28AF4 80079DC4 08EE22AC */  sw         $v0, %lo(D_8006EE08)($at)
/* 28AF8 80079DC8 21104400 */  addu       $v0, $v0, $a0
/* 28AFC 80079DCC 0780013C */  lui        $at, %hi(D_8006EE04)
/* 28B00 80079DD0 04EE24AC */  sw         $a0, %lo(D_8006EE04)($at)
/* 28B04 80079DD4 0780013C */  lui        $at, %hi(D_8006EE0C)
/* 28B08 80079DD8 0CEE22AC */  sw         $v0, %lo(D_8006EE0C)($at)
/* 28B0C 80079DDC 1300A010 */  beqz       $a1, .Ltitle_80079E2C
/* 28B10 80079DE0 21882302 */   addu      $s1, $s1, $v1
/* 28B14 80079DE4 0008A526 */  addiu      $a1, $s5, 0x800
/* 28B18 80079DE8 0780023C */  lui        $v0, %hi(D_8006EDF8)
/* 28B1C 80079DEC F8ED428C */  lw         $v0, %lo(D_8006EDF8)($v0)
/* 28B20 80079DF0 0780043C */  lui        $a0, %hi(D_8006E470)
/* 28B24 80079DF4 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 28B28 80079DF8 0780033C */  lui        $v1, %hi(D_8006C58C)
/* 28B2C 80079DFC 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* 28B30 80079E00 0000468C */  lw         $a2, 0x0($v0)
/* 28B34 80079E04 40100300 */  sll        $v0, $v1, 1
/* 28B38 80079E08 21104300 */  addu       $v0, $v0, $v1
/* 28B3C 80079E0C C0100200 */  sll        $v0, $v0, 3
/* 28B40 80079E10 2130E600 */  addu       $a2, $a3, $a2
/* 28B44 80079E14 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 28B48 80079E18 21082200 */  addu       $at, $at, $v0
/* 28B4C 80079E1C 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* 28B50 80079E20 00F8C624 */  addiu      $a2, $a2, -0x800
/* 28B54 80079E24 5E41010C */  jal        CDLoadSync
/* 28B58 80079E28 0008E724 */   addiu     $a3, $a3, 0x800
.Ltitle_80079E2C:
/* 28B5C 80079E2C 0000228E */  lw         $v0, 0x0($s1)
/* 28B60 80079E30 04003126 */  addiu      $s1, $s1, 0x4
/* 28B64 80079E34 0780103C */  lui        $s0, %hi(D_8006EE2C)
/* 28B68 80079E38 2CEE1026 */  addiu      $s0, $s0, %lo(D_8006EE2C)
/* 28B6C 80079E3C 0780043C */  lui        $a0, %hi(D_8006EE00)
/* 28B70 80079E40 00EE848C */  lw         $a0, %lo(D_8006EE00)($a0)
/* 28B74 80079E44 0780063C */  lui        $a2, %hi(D_8006EDFC)
/* 28B78 80079E48 FCEDC68C */  lw         $a2, %lo(D_8006EDFC)($a2)
/* 28B7C 80079E4C 2120A402 */  addu       $a0, $s5, $a0
/* 28B80 80079E50 80300600 */  sll        $a2, $a2, 2
/* 28B84 80079E54 23208600 */  subu       $a0, $a0, $a2
/* 28B88 80079E58 2110A202 */  addu       $v0, $s5, $v0
/* 28B8C 80079E5C 0780013C */  lui        $at, %hi(D_8006C550)
/* 28B90 80079E60 50C522AC */  sw         $v0, %lo(D_8006C550)($at)
/* 28B94 80079E64 0780013C */  lui        $at, %hi(D_8006EE10)
/* 28B98 80079E68 10EE24AC */  sw         $a0, %lo(D_8006EE10)($at)
/* 28B9C 80079E6C F539010C */  jal        func_8004E7D4
/* 28BA0 80079E70 21280002 */   addu      $a1, $s0, $zero
/* 28BA4 80079E74 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 28BA8 80079E78 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 28BAC 80079E7C 00000000 */  nop
/* 28BB0 80079E80 40004018 */  blez       $v0, .Ltitle_80079F84
/* 28BB4 80079E84 21980000 */   addu      $s3, $zero, $zero
/* 28BB8 80079E88 21900000 */  addu       $s2, $zero, $zero
/* 28BBC 80079E8C 21A00002 */  addu       $s4, $s0, $zero
.Ltitle_80079E90:
/* 28BC0 80079E90 0000228E */  lw         $v0, 0x0($s1)
/* 28BC4 80079E94 00000000 */  nop
/* 28BC8 80079E98 2120A202 */  addu       $a0, $s5, $v0
/* 28BCC 80079E9C 000084AE */  sw         $a0, 0x0($s4)
/* 28BD0 80079EA0 0000828C */  lw         $v0, 0x0($a0)
/* 28BD4 80079EA4 00000000 */  nop
/* 28BD8 80079EA8 06004104 */  bgez       $v0, .Ltitle_80079EC4
/* 28BDC 80079EAC 04003126 */   addiu     $s1, $s1, 0x4
/* 28BE0 80079EB0 21286002 */  addu       $a1, $s3, $zero
/* 28BE4 80079EB4 E7AB000C */  jal        func_8002AF9C
/* 28BE8 80079EB8 8080063C */   lui       $a2, (0x80800000 >> 16)
/* 28BEC 80079EBC BEE70108 */  j          .Ltitle_80079EF8
/* 28BF0 80079EC0 21280000 */   addu      $a1, $zero, $zero
.Ltitle_80079EC4:
/* 28BF4 80079EC4 3400828C */  lw         $v0, 0x34($a0)
/* 28BF8 80079EC8 00000000 */  nop
/* 28BFC 80079ECC 02004010 */  beqz       $v0, .Ltitle_80079ED8
/* 28C00 80079ED0 21108200 */   addu      $v0, $a0, $v0
/* 28C04 80079ED4 340082AC */  sw         $v0, 0x34($a0)
.Ltitle_80079ED8:
/* 28C08 80079ED8 0000838E */  lw         $v1, 0x0($s4)
/* 28C0C 80079EDC 00000000 */  nop
/* 28C10 80079EE0 3800628C */  lw         $v0, 0x38($v1)
/* 28C14 80079EE4 00000000 */  nop
/* 28C18 80079EE8 02004010 */  beqz       $v0, .Ltitle_80079EF4
/* 28C1C 80079EEC 21106200 */   addu      $v0, $v1, $v0
/* 28C20 80079EF0 380062AC */  sw         $v0, 0x38($v1)
.Ltitle_80079EF4:
/* 28C24 80079EF4 21280000 */  addu       $a1, $zero, $zero
.Ltitle_80079EF8:
/* 28C28 80079EF8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 28C2C 80079EFC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 28C30 80079F00 00000000 */  nop
/* 28C34 80079F04 21204402 */  addu       $a0, $s2, $a0
/* 28C38 80079F08 38009084 */  lh         $s0, 0x38($a0)
/* 28C3C 80079F0C E439010C */  jal        func_8004E790
/* 28C40 80079F10 58000624 */   addiu     $a2, $zero, 0x58
/* 28C44 80079F14 20000224 */  addiu      $v0, $zero, 0x20
/* 28C48 80079F18 0780033C */  lui        $v1, %hi(D_8006C550)
/* 28C4C 80079F1C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 28C50 80079F20 04009426 */  addiu      $s4, $s4, 0x4
/* 28C54 80079F24 21184302 */  addu       $v1, $s2, $v1
/* 28C58 80079F28 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 28C5C 80079F2C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 28C60 80079F30 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 28C64 80079F34 40000224 */  addiu      $v0, $zero, 0x40
/* 28C68 80079F38 360073A4 */  sh         $s3, 0x36($v1)
/* 28C6C 80079F3C 21204402 */  addu       $a0, $s2, $a0
/* 28C70 80079F40 4E0082A0 */  sb         $v0, 0x4E($a0)
/* 28C74 80079F44 0780033C */  lui        $v1, %hi(D_8006C550)
/* 28C78 80079F48 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 28C7C 80079F4C FF000224 */  addiu      $v0, $zero, 0xFF
/* 28C80 80079F50 21184302 */  addu       $v1, $s2, $v1
/* 28C84 80079F54 520062A0 */  sb         $v0, 0x52($v1)
/* 28C88 80079F58 0780023C */  lui        $v0, %hi(D_8006C550)
/* 28C8C 80079F5C 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 28C90 80079F60 01007326 */  addiu      $s3, $s3, 0x1
/* 28C94 80079F64 21104202 */  addu       $v0, $s2, $v0
/* 28C98 80079F68 380050A4 */  sh         $s0, 0x38($v0)
/* 28C9C 80079F6C 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* 28CA0 80079F70 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* 28CA4 80079F74 00000000 */  nop
/* 28CA8 80079F78 2A106202 */  slt        $v0, $s3, $v0
/* 28CAC 80079F7C C4FF4014 */  bnez       $v0, .Ltitle_80079E90
/* 28CB0 80079F80 58005226 */   addiu     $s2, $s2, 0x58
.Ltitle_80079F84:
/* 28CB4 80079F84 0780033C */  lui        $v1, %hi(D_8006EDFC)
/* 28CB8 80079F88 FCED638C */  lw         $v1, %lo(D_8006EDFC)($v1)
/* 28CBC 80079F8C 00000000 */  nop
/* 28CC0 80079F90 40100300 */  sll        $v0, $v1, 1
/* 28CC4 80079F94 21104300 */  addu       $v0, $v0, $v1
/* 28CC8 80079F98 80100200 */  sll        $v0, $v0, 2
/* 28CCC 80079F9C 23104300 */  subu       $v0, $v0, $v1
/* 28CD0 80079FA0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 28CD4 80079FA4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 28CD8 80079FA8 C0100200 */  sll        $v0, $v0, 3
/* 28CDC 80079FAC 21104300 */  addu       $v0, $v0, $v1
/* 28CE0 80079FB0 FF000324 */  addiu      $v1, $zero, 0xFF
/* 28CE4 80079FB4 480043A0 */  sb         $v1, 0x48($v0)
/* 28CE8 80079FB8 3000BF8F */  lw         $ra, 0x30($sp)
/* 28CEC 80079FBC 2C00B58F */  lw         $s5, 0x2C($sp)
/* 28CF0 80079FC0 2800B48F */  lw         $s4, 0x28($sp)
/* 28CF4 80079FC4 2400B38F */  lw         $s3, 0x24($sp)
/* 28CF8 80079FC8 2000B28F */  lw         $s2, 0x20($sp)
/* 28CFC 80079FCC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 28D00 80079FD0 1800B08F */  lw         $s0, 0x18($sp)
/* 28D04 80079FD4 3800BD27 */  addiu      $sp, $sp, 0x38
/* 28D08 80079FD8 0800E003 */  jr         $ra
/* 28D0C 80079FDC 00000000 */   nop
.size func_title_80079D30, . - func_title_80079D30
