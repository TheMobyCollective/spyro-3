.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_8007EEBC
/* 3AE3BEC 8007EEBC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3AE3BF0 8007EEC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AE3BF4 8007EEC4 21808000 */  addu       $s0, $a0, $zero
/* 3AE3BF8 8007EEC8 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE3BFC 8007EECC 1800BFAF */  sw         $ra, 0x18($sp)
/* 3AE3C00 8007EED0 1400B1AF */  sw         $s1, 0x14($sp)
/* 3AE3C04 8007EED4 48000392 */  lbu        $v1, 0x48($s0)
/* 3AE3C08 8007EED8 0000118E */  lw         $s1, 0x0($s0)
/* 3AE3C0C 8007EEDC 4F006210 */  beq        $v1, $v0, .Llevel_10_8007F01C
/* 3AE3C10 8007EEE0 02006228 */   slti      $v0, $v1, 0x2
/* 3AE3C14 8007EEE4 05004010 */  beqz       $v0, .Llevel_10_8007EEFC
/* 3AE3C18 8007EEE8 00000000 */   nop
/* 3AE3C1C 8007EEEC 08006010 */  beqz       $v1, .Llevel_10_8007EF10
/* 3AE3C20 8007EEF0 00000000 */   nop
/* 3AE3C24 8007EEF4 29FC0108 */  j          .Llevel_10_8007F0A4
/* 3AE3C28 8007EEF8 00000000 */   nop
.Llevel_10_8007EEFC:
/* 3AE3C2C 8007EEFC 02000224 */  addiu      $v0, $zero, 0x2
/* 3AE3C30 8007EF00 64006210 */  beq        $v1, $v0, .Llevel_10_8007F094
/* 3AE3C34 8007EF04 06000424 */   addiu     $a0, $zero, 0x6
/* 3AE3C38 8007EF08 29FC0108 */  j          .Llevel_10_8007F0A4
/* 3AE3C3C 8007EF0C 00000000 */   nop
.Llevel_10_8007EF10:
/* 3AE3C40 8007EF10 0000238E */  lw         $v1, 0x0($s1)
/* 3AE3C44 8007EF14 0780043C */  lui        $a0, %hi(D_8006C550)
/* 3AE3C48 8007EF18 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 3AE3C4C 8007EF1C 40100300 */  sll        $v0, $v1, 1
/* 3AE3C50 8007EF20 21104300 */  addu       $v0, $v0, $v1
/* 3AE3C54 8007EF24 80100200 */  sll        $v0, $v0, 2
/* 3AE3C58 8007EF28 23104300 */  subu       $v0, $v0, $v1
/* 3AE3C5C 8007EF2C C0100200 */  sll        $v0, $v0, 3
/* 3AE3C60 8007EF30 21284400 */  addu       $a1, $v0, $a0
/* 3AE3C64 8007EF34 0000A28C */  lw         $v0, 0x0($a1)
/* 3AE3C68 8007EF38 00000000 */  nop
/* 3AE3C6C 8007EF3C 2C00438C */  lw         $v1, 0x2C($v0)
/* 3AE3C70 8007EF40 00000000 */  nop
/* 3AE3C74 8007EF44 40100300 */  sll        $v0, $v1, 1
/* 3AE3C78 8007EF48 21104300 */  addu       $v0, $v0, $v1
/* 3AE3C7C 8007EF4C 80100200 */  sll        $v0, $v0, 2
/* 3AE3C80 8007EF50 23104300 */  subu       $v0, $v0, $v1
/* 3AE3C84 8007EF54 C0100200 */  sll        $v0, $v0, 3
/* 3AE3C88 8007EF58 21104400 */  addu       $v0, $v0, $a0
/* 3AE3C8C 8007EF5C 0000428C */  lw         $v0, 0x0($v0)
/* 3AE3C90 8007EF60 00000000 */  nop
/* 3AE3C94 8007EF64 0C00428C */  lw         $v0, 0xC($v0)
/* 3AE3C98 8007EF68 0780013C */  lui        $at, %hi(D_80071570)
/* 3AE3C9C 8007EF6C 21082200 */  addu       $at, $at, $v0
/* 3AE3CA0 8007EF70 70152290 */  lbu        $v0, %lo(D_80071570)($at)
/* 3AE3CA4 8007EF74 00000000 */  nop
/* 3AE3CA8 8007EF78 48004014 */  bnez       $v0, .Llevel_10_8007F09C
/* 3AE3CAC 8007EF7C 0C00A424 */   addiu     $a0, $a1, 0xC
/* 3AE3CB0 8007EF80 5E3C010C */  jal        func_8004F178
/* 3AE3CB4 8007EF84 0C000526 */   addiu     $a1, $s0, 0xC
/* 3AE3CB8 8007EF88 0000238E */  lw         $v1, 0x0($s1)
/* 3AE3CBC 8007EF8C 0780043C */  lui        $a0, %hi(D_8006C550)
/* 3AE3CC0 8007EF90 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 3AE3CC4 8007EF94 40100300 */  sll        $v0, $v1, 1
/* 3AE3CC8 8007EF98 21104300 */  addu       $v0, $v0, $v1
/* 3AE3CCC 8007EF9C 80100200 */  sll        $v0, $v0, 2
/* 3AE3CD0 8007EFA0 23104300 */  subu       $v0, $v0, $v1
/* 3AE3CD4 8007EFA4 C0100200 */  sll        $v0, $v0, 3
/* 3AE3CD8 8007EFA8 21104400 */  addu       $v0, $v0, $a0
/* 3AE3CDC 8007EFAC 1400438C */  lw         $v1, 0x14($v0)
/* 3AE3CE0 8007EFB0 00000000 */  nop
/* 3AE3CE4 8007EFB4 80006324 */  addiu      $v1, $v1, 0x80
/* 3AE3CE8 8007EFB8 140043AC */  sw         $v1, 0x14($v0)
/* 3AE3CEC 8007EFBC 0000238E */  lw         $v1, 0x0($s1)
/* 3AE3CF0 8007EFC0 00000000 */  nop
/* 3AE3CF4 8007EFC4 40100300 */  sll        $v0, $v1, 1
/* 3AE3CF8 8007EFC8 21104300 */  addu       $v0, $v0, $v1
/* 3AE3CFC 8007EFCC 80100200 */  sll        $v0, $v0, 2
/* 3AE3D00 8007EFD0 23104300 */  subu       $v0, $v0, $v1
/* 3AE3D04 8007EFD4 C0100200 */  sll        $v0, $v0, 3
/* 3AE3D08 8007EFD8 46000392 */  lbu        $v1, 0x46($s0)
/* 3AE3D0C 8007EFDC 21104400 */  addu       $v0, $v0, $a0
/* 3AE3D10 8007EFE0 460043A0 */  sb         $v1, 0x46($v0)
/* 3AE3D14 8007EFE4 0000228E */  lw         $v0, 0x0($s1)
/* 3AE3D18 8007EFE8 02000524 */  addiu      $a1, $zero, 0x2
/* 3AE3D1C 8007EFEC 40200200 */  sll        $a0, $v0, 1
/* 3AE3D20 8007EFF0 21208200 */  addu       $a0, $a0, $v0
/* 3AE3D24 8007EFF4 80200400 */  sll        $a0, $a0, 2
/* 3AE3D28 8007EFF8 23208200 */  subu       $a0, $a0, $v0
/* 3AE3D2C 8007EFFC 0780023C */  lui        $v0, %hi(D_8006C550)
/* 3AE3D30 8007F000 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 3AE3D34 8007F004 C0200400 */  sll        $a0, $a0, 3
/* 3AE3D38 8007F008 4957010C */  jal        func_80055D24
/* 3AE3D3C 8007F00C 21204400 */   addu      $a0, $v0, $a0
/* 3AE3D40 8007F010 01000224 */  addiu      $v0, $zero, 0x1
/* 3AE3D44 8007F014 29FC0108 */  j          .Llevel_10_8007F0A4
/* 3AE3D48 8007F018 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_10_8007F01C:
/* 3AE3D4C 8007F01C 0000238E */  lw         $v1, 0x0($s1)
/* 3AE3D50 8007F020 0780043C */  lui        $a0, %hi(D_8006C550)
/* 3AE3D54 8007F024 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 3AE3D58 8007F028 40100300 */  sll        $v0, $v1, 1
/* 3AE3D5C 8007F02C 21104300 */  addu       $v0, $v0, $v1
/* 3AE3D60 8007F030 80100200 */  sll        $v0, $v0, 2
/* 3AE3D64 8007F034 23104300 */  subu       $v0, $v0, $v1
/* 3AE3D68 8007F038 C0100200 */  sll        $v0, $v0, 3
/* 3AE3D6C 8007F03C 21104400 */  addu       $v0, $v0, $a0
/* 3AE3D70 8007F040 0000428C */  lw         $v0, 0x0($v0)
/* 3AE3D74 8007F044 00000000 */  nop
/* 3AE3D78 8007F048 2C00438C */  lw         $v1, 0x2C($v0)
/* 3AE3D7C 8007F04C 00000000 */  nop
/* 3AE3D80 8007F050 40100300 */  sll        $v0, $v1, 1
/* 3AE3D84 8007F054 21104300 */  addu       $v0, $v0, $v1
/* 3AE3D88 8007F058 80100200 */  sll        $v0, $v0, 2
/* 3AE3D8C 8007F05C 23104300 */  subu       $v0, $v0, $v1
/* 3AE3D90 8007F060 C0100200 */  sll        $v0, $v0, 3
/* 3AE3D94 8007F064 21104400 */  addu       $v0, $v0, $a0
/* 3AE3D98 8007F068 0000428C */  lw         $v0, 0x0($v0)
/* 3AE3D9C 8007F06C 00000000 */  nop
/* 3AE3DA0 8007F070 0C00428C */  lw         $v0, 0xC($v0)
/* 3AE3DA4 8007F074 0780013C */  lui        $at, %hi(D_80071570)
/* 3AE3DA8 8007F078 21082200 */  addu       $at, $at, $v0
/* 3AE3DAC 8007F07C 70152290 */  lbu        $v0, %lo(D_80071570)($at)
/* 3AE3DB0 8007F080 00000000 */  nop
/* 3AE3DB4 8007F084 07004010 */  beqz       $v0, .Llevel_10_8007F0A4
/* 3AE3DB8 8007F088 02000224 */   addiu     $v0, $zero, 0x2
/* 3AE3DBC 8007F08C 29FC0108 */  j          .Llevel_10_8007F0A4
/* 3AE3DC0 8007F090 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_10_8007F094:
/* 3AE3DC4 8007F094 2F61010C */  jal        WarpToLevel
/* 3AE3DC8 8007F098 4D000524 */   addiu     $a1, $zero, 0x4D
.Llevel_10_8007F09C:
/* 3AE3DCC 8007F09C C656010C */  jal        func_80055B18
/* 3AE3DD0 8007F0A0 21200002 */   addu      $a0, $s0, $zero
.Llevel_10_8007F0A4:
/* 3AE3DD4 8007F0A4 1800BF8F */  lw         $ra, 0x18($sp)
/* 3AE3DD8 8007F0A8 1400B18F */  lw         $s1, 0x14($sp)
/* 3AE3DDC 8007F0AC 1000B08F */  lw         $s0, 0x10($sp)
/* 3AE3DE0 8007F0B0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3AE3DE4 8007F0B4 0800E003 */  jr         $ra
/* 3AE3DE8 8007F0B8 00000000 */   nop
.size func_level_10_8007EEBC, . - func_level_10_8007EEBC
