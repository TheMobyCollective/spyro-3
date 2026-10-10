.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_50_80095A84
/* 95E9FB4 80095A84 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 95E9FB8 80095A88 8800B6AF */  sw         $s6, 0x88($sp)
/* 95E9FBC 80095A8C 21B08000 */  addu       $s6, $a0, $zero
/* 95E9FC0 80095A90 7C00B3AF */  sw         $s3, 0x7C($sp)
/* 95E9FC4 80095A94 2198A000 */  addu       $s3, $a1, $zero
/* 95E9FC8 80095A98 8000B4AF */  sw         $s4, 0x80($sp)
/* 95E9FCC 80095A9C 21A0C000 */  addu       $s4, $a2, $zero
/* 95E9FD0 80095AA0 8400B5AF */  sw         $s5, 0x84($sp)
/* 95E9FD4 80095AA4 21A8E000 */  addu       $s5, $a3, $zero
/* 95E9FD8 80095AA8 1000A427 */  addiu      $a0, $sp, 0x10
/* 95E9FDC 80095AAC 7800B2AF */  sw         $s2, 0x78($sp)
/* 95E9FE0 80095AB0 1800B227 */  addiu      $s2, $sp, 0x18
/* 95E9FE4 80095AB4 8C00BFAF */  sw         $ra, 0x8C($sp)
/* 95E9FE8 80095AB8 7400B1AF */  sw         $s1, 0x74($sp)
/* 95E9FEC 80095ABC 7000B0AF */  sw         $s0, 0x70($sp)
/* 95E9FF0 80095AC0 4400C292 */  lbu        $v0, 0x44($s6)
/* 95E9FF4 80095AC4 21284002 */  addu       $a1, $s2, $zero
/* 95E9FF8 80095AC8 00110200 */  sll        $v0, $v0, 4
/* 95E9FFC 80095ACC 1000A2A7 */  sh         $v0, 0x10($sp)
/* 95EA000 80095AD0 4500C292 */  lbu        $v0, 0x45($s6)
/* 95EA004 80095AD4 3000B027 */  addiu      $s0, $sp, 0x30
/* 95EA008 80095AD8 00110200 */  sll        $v0, $v0, 4
/* 95EA00C 80095ADC 23100200 */  negu       $v0, $v0
/* 95EA010 80095AE0 1200A2A7 */  sh         $v0, 0x12($sp)
/* 95EA014 80095AE4 4600C292 */  lbu        $v0, 0x46($s6)
/* 95EA018 80095AE8 21300002 */  addu       $a2, $s0, $zero
/* 95EA01C 80095AEC 00110200 */  sll        $v0, $v0, 4
/* 95EA020 80095AF0 B13D010C */  jal        func_8004F6C4
/* 95EA024 80095AF4 1400A2A7 */   sh        $v0, 0x14($sp)
/* 95EA028 80095AF8 21204002 */  addu       $a0, $s2, $zero
/* 95EA02C 80095AFC 3D3B010C */  jal        func_8004ECF4
/* 95EA030 80095B00 21284002 */   addu      $a1, $s2, $zero
/* 95EA034 80095B04 1000A427 */  addiu      $a0, $sp, 0x10
/* 95EA038 80095B08 21280002 */  addu       $a1, $s0, $zero
/* 95EA03C 80095B0C 4800B127 */  addiu      $s1, $sp, 0x48
/* 95EA040 80095B10 21302002 */  addu       $a2, $s1, $zero
/* 95EA044 80095B14 00991300 */  sll        $s3, $s3, 4
/* 95EA048 80095B18 00A11400 */  sll        $s4, $s4, 4
/* 95EA04C 80095B1C 00A91500 */  sll        $s5, $s5, 4
/* 95EA050 80095B20 1000B3A7 */  sh         $s3, 0x10($sp)
/* 95EA054 80095B24 1200B4A7 */  sh         $s4, 0x12($sp)
/* 95EA058 80095B28 B13D010C */  jal        func_8004F6C4
/* 95EA05C 80095B2C 1400B5A7 */   sh        $s5, 0x14($sp)
/* 95EA060 80095B30 21200002 */  addu       $a0, $s0, $zero
/* 95EA064 80095B34 3D3B010C */  jal        func_8004ECF4
/* 95EA068 80095B38 21280002 */   addu      $a1, $s0, $zero
/* 95EA06C 80095B3C 21204002 */  addu       $a0, $s2, $zero
/* 95EA070 80095B40 21280002 */  addu       $a1, $s0, $zero
/* 95EA074 80095B44 D77C010C */  jal        MulMatrix0
/* 95EA078 80095B48 21302002 */   addu      $a2, $s1, $zero
/* 95EA07C 80095B4C 6000A427 */  addiu      $a0, $sp, 0x60
/* 95EA080 80095B50 5B39010C */  jal        func_8004E56C
/* 95EA084 80095B54 21282002 */   addu      $a1, $s1, $zero
/* 95EA088 80095B58 6000A28F */  lw         $v0, 0x60($sp)
/* 95EA08C 80095B5C 00000000 */  nop
/* 95EA090 80095B60 03110200 */  sra        $v0, $v0, 4
/* 95EA094 80095B64 4400C2A2 */  sb         $v0, 0x44($s6)
/* 95EA098 80095B68 6400A28F */  lw         $v0, 0x64($sp)
/* 95EA09C 80095B6C 00000000 */  nop
/* 95EA0A0 80095B70 03110200 */  sra        $v0, $v0, 4
/* 95EA0A4 80095B74 4500C2A2 */  sb         $v0, 0x45($s6)
/* 95EA0A8 80095B78 6800A28F */  lw         $v0, 0x68($sp)
/* 95EA0AC 80095B7C 00000000 */  nop
/* 95EA0B0 80095B80 03110200 */  sra        $v0, $v0, 4
/* 95EA0B4 80095B84 4600C2A2 */  sb         $v0, 0x46($s6)
/* 95EA0B8 80095B88 8C00BF8F */  lw         $ra, 0x8C($sp)
/* 95EA0BC 80095B8C 8800B68F */  lw         $s6, 0x88($sp)
/* 95EA0C0 80095B90 8400B58F */  lw         $s5, 0x84($sp)
/* 95EA0C4 80095B94 8000B48F */  lw         $s4, 0x80($sp)
/* 95EA0C8 80095B98 7C00B38F */  lw         $s3, 0x7C($sp)
/* 95EA0CC 80095B9C 7800B28F */  lw         $s2, 0x78($sp)
/* 95EA0D0 80095BA0 7400B18F */  lw         $s1, 0x74($sp)
/* 95EA0D4 80095BA4 7000B08F */  lw         $s0, 0x70($sp)
/* 95EA0D8 80095BA8 9000BD27 */  addiu      $sp, $sp, 0x90
/* 95EA0DC 80095BAC 0800E003 */  jr         $ra
/* 95EA0E0 80095BB0 00000000 */   nop
.size func_level_50_80095A84, . - func_level_50_80095A84
