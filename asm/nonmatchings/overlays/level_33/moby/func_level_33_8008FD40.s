.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_708_level_33
/* 71C7A70 8008FD40 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 71C7A74 8008FD44 1000B0AF */  sw         $s0, 0x10($sp)
/* 71C7A78 8008FD48 21808000 */  addu       $s0, $a0, $zero
/* 71C7A7C 8008FD4C 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 71C7A80 8008FD50 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 71C7A84 8008FD54 02000324 */  addiu      $v1, $zero, 0x2
/* 71C7A88 8008FD58 1800BFAF */  sw         $ra, 0x18($sp)
/* 71C7A8C 8008FD5C 1400B1AF */  sw         $s1, 0x14($sp)
/* 71C7A90 8008FD60 0000118E */  lw         $s1, 0x0($s0)
/* 71C7A94 8008FD64 40004314 */  bne        $v0, $v1, .Llevel_33_8008FE68
/* 71C7A98 8008FD68 FEFF033C */   lui       $v1, (0xFFFEFFFF >> 16)
/* 71C7A9C 8008FD6C 0780023C */  lui        $v0, %hi(D_8006C730)
/* 71C7AA0 8008FD70 30C7428C */  lw         $v0, %lo(D_8006C730)($v0)
/* 71C7AA4 8008FD74 00000000 */  nop
/* 71C7AA8 8008FD78 3400428C */  lw         $v0, 0x34($v0)
/* 71C7AAC 8008FD7C 00000000 */  nop
/* 71C7AB0 8008FD80 00004394 */  lhu        $v1, 0x0($v0)
/* 71C7AB4 8008FD84 00000000 */  nop
/* 71C7AB8 8008FD88 FF7F6330 */  andi       $v1, $v1, 0x7FFF
/* 71C7ABC 8008FD8C 40100300 */  sll        $v0, $v1, 1
/* 71C7AC0 8008FD90 21104300 */  addu       $v0, $v0, $v1
/* 71C7AC4 8008FD94 80100200 */  sll        $v0, $v0, 2
/* 71C7AC8 8008FD98 23104300 */  subu       $v0, $v0, $v1
/* 71C7ACC 8008FD9C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 71C7AD0 8008FDA0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 71C7AD4 8008FDA4 C0100200 */  sll        $v0, $v0, 3
/* 71C7AD8 8008FDA8 21104300 */  addu       $v0, $v0, $v1
/* 71C7ADC 8008FDAC 0000428C */  lw         $v0, 0x0($v0)
/* 71C7AE0 8008FDB0 0C00238E */  lw         $v1, 0xC($s1)
/* 71C7AE4 8008FDB4 4400448C */  lw         $a0, 0x44($v0)
/* 71C7AE8 8008FDB8 00000000 */  nop
/* 71C7AEC 8008FDBC 14008314 */  bne        $a0, $v1, .Llevel_33_8008FE10
/* 71C7AF0 8008FDC0 00000000 */   nop
/* 71C7AF4 8008FDC4 4C000292 */  lbu        $v0, 0x4C($s0)
/* 71C7AF8 8008FDC8 00000000 */  nop
/* 71C7AFC 8008FDCC 26004014 */  bnez       $v0, .Llevel_33_8008FE68
/* 71C7B00 8008FDD0 FEFF033C */   lui       $v1, (0xFFFEFFFF >> 16)
/* 71C7B04 8008FDD4 48000392 */  lbu        $v1, 0x48($s0)
/* 71C7B08 8008FDD8 63000224 */  addiu      $v0, $zero, 0x63
/* 71C7B0C 8008FDDC 21006210 */  beq        $v1, $v0, .Llevel_33_8008FE64
/* 71C7B10 8008FDE0 21200002 */   addu      $a0, $s0, $zero
/* 71C7B14 8008FDE4 01000524 */  addiu      $a1, $zero, 0x1
/* 71C7B18 8008FDE8 10000224 */  addiu      $v0, $zero, 0x10
/* 71C7B1C 8008FDEC 01000324 */  addiu      $v1, $zero, 0x1
/* 71C7B20 8008FDF0 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 71C7B24 8008FDF4 20000224 */  addiu      $v0, $zero, 0x20
/* 71C7B28 8008FDF8 410003A2 */  sb         $v1, 0x41($s0)
/* 71C7B2C 8008FDFC 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 71C7B30 8008FE00 4957010C */  jal        func_80055D24
/* 71C7B34 8008FE04 4D0003A2 */   sb        $v1, 0x4D($s0)
/* 71C7B38 8008FE08 9A3F0208 */  j          .Llevel_33_8008FE68
/* 71C7B3C 8008FE0C FEFF033C */   lui       $v1, (0xFFFEFFFF >> 16)
.Llevel_33_8008FE10:
/* 71C7B40 8008FE10 4C000292 */  lbu        $v0, 0x4C($s0)
/* 71C7B44 8008FE14 00000000 */  nop
/* 71C7B48 8008FE18 BC004010 */  beqz       $v0, .Llevel_33_8009010C
/* 71C7B4C 8008FE1C 2A106400 */   slt       $v0, $v1, $a0
/* 71C7B50 8008FE20 09004010 */  beqz       $v0, .Llevel_33_8008FE48
/* 71C7B54 8008FE24 21200002 */   addu      $a0, $s0, $zero
/* 71C7B58 8008FE28 01000524 */  addiu      $a1, $zero, 0x1
/* 71C7B5C 8008FE2C 21300000 */  addu       $a2, $zero, $zero
/* 71C7B60 8008FE30 9ADA000C */  jal        func_80036A68
/* 71C7B64 8008FE34 21380000 */   addu      $a3, $zero, $zero
/* 71C7B68 8008FE38 80EE000C */  jal        func_8003BA00
/* 71C7B6C 8008FE3C 21200002 */   addu      $a0, $s0, $zero
/* 71C7B70 8008FE40 B63F0208 */  j          .Llevel_33_8008FED8
/* 71C7B74 8008FE44 00000000 */   nop
.Llevel_33_8008FE48:
/* 71C7B78 8008FE48 FF000224 */  addiu      $v0, $zero, 0xFF
/* 71C7B7C 8008FE4C 410000A2 */  sb         $zero, 0x41($s0)
/* 71C7B80 8008FE50 4C0000A2 */  sb         $zero, 0x4C($s0)
/* 71C7B84 8008FE54 4D0000A2 */  sb         $zero, 0x4D($s0)
/* 71C7B88 8008FE58 080000AE */  sw         $zero, 0x8($s0)
/* 71C7B8C 8008FE5C 43400208 */  j          .Llevel_33_8009010C
/* 71C7B90 8008FE60 4A0002A2 */   sb        $v0, 0x4A($s0)
.Llevel_33_8008FE64:
/* 71C7B94 8008FE64 FEFF033C */  lui        $v1, (0xFFFEFFFF >> 16)
.Llevel_33_8008FE68:
/* 71C7B98 8008FE68 1800028E */  lw         $v0, 0x18($s0)
/* 71C7B9C 8008FE6C FFFF6334 */  ori        $v1, $v1, (0xFFFEFFFF & 0xFFFF)
/* 71C7BA0 8008FE70 24104300 */  and        $v0, $v0, $v1
/* 71C7BA4 8008FE74 2F004010 */  beqz       $v0, .Llevel_33_8008FF34
/* 71C7BA8 8008FE78 180002AE */   sw        $v0, 0x18($s0)
/* 71C7BAC 8008FE7C 0A002296 */  lhu        $v0, 0xA($s1)
/* 71C7BB0 8008FE80 00000000 */  nop
/* 71C7BB4 8008FE84 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 71C7BB8 8008FE88 0A0022A6 */  sh         $v0, 0xA($s1)
/* 71C7BBC 8008FE8C 00140200 */  sll        $v0, $v0, 16
/* 71C7BC0 8008FE90 1500401C */  bgtz       $v0, .Llevel_33_8008FEE8
/* 71C7BC4 8008FE94 21200002 */   addu      $a0, $s0, $zero
/* 71C7BC8 8008FE98 01000524 */  addiu      $a1, $zero, 0x1
/* 71C7BCC 8008FE9C AFEE000C */  jal        func_8003BABC
/* 71C7BD0 8008FEA0 21300000 */   addu      $a2, $zero, $zero
/* 71C7BD4 8008FEA4 21200002 */  addu       $a0, $s0, $zero
/* 71C7BD8 8008FEA8 01000524 */  addiu      $a1, $zero, 0x1
/* 71C7BDC 8008FEAC 21300000 */  addu       $a2, $zero, $zero
/* 71C7BE0 8008FEB0 9ADA000C */  jal        func_80036A68
/* 71C7BE4 8008FEB4 21380000 */   addu      $a3, $zero, $zero
/* 71C7BE8 8008FEB8 21200002 */  addu       $a0, $s0, $zero
/* 71C7BEC 8008FEBC 4957010C */  jal        func_80055D24
/* 71C7BF0 8008FEC0 04000524 */   addiu     $a1, $zero, 0x4
/* 71C7BF4 8008FEC4 80EE000C */  jal        func_8003BA00
/* 71C7BF8 8008FEC8 21200002 */   addu      $a0, $s0, $zero
/* 71C7BFC 8008FECC 21200002 */  addu       $a0, $s0, $zero
/* 71C7C00 8008FED0 6EDA000C */  jal        func_800369B8
/* 71C7C04 8008FED4 30000524 */   addiu     $a1, $zero, 0x30
.Llevel_33_8008FED8:
/* 71C7C08 8008FED8 C656010C */  jal        func_80055B18
/* 71C7C0C 8008FEDC 21200002 */   addu      $a0, $s0, $zero
/* 71C7C10 8008FEE0 43400208 */  j          .Llevel_33_8009010C
/* 71C7C14 8008FEE4 00000000 */   nop
.Llevel_33_8008FEE8:
/* 71C7C18 8008FEE8 21280000 */  addu       $a1, $zero, $zero
/* 71C7C1C 8008FEEC AFEE000C */  jal        func_8003BABC
/* 71C7C20 8008FEF0 21300000 */   addu      $a2, $zero, $zero
/* 71C7C24 8008FEF4 03000224 */  addiu      $v0, $zero, 0x3
/* 71C7C28 8008FEF8 0A002386 */  lh         $v1, 0xA($s1)
/* 71C7C2C 8008FEFC 3D000492 */  lbu        $a0, 0x3D($s0)
/* 71C7C30 8008FF00 23104300 */  subu       $v0, $v0, $v1
/* 71C7C34 8008FF04 48000392 */  lbu        $v1, 0x48($s0)
/* 71C7C38 8008FF08 40100200 */  sll        $v0, $v0, 1
/* 71C7C3C 8008FF0C 21186200 */  addu       $v1, $v1, $v0
/* 71C7C40 8008FF10 08008310 */  beq        $a0, $v1, .Llevel_33_8008FF34
/* 71C7C44 8008FF14 21200002 */   addu      $a0, $s0, $zero
/* 71C7C48 8008FF18 72000224 */  addiu      $v0, $zero, 0x72
/* 71C7C4C 8008FF1C 0780013C */  lui        $at, %hi(D_8006C770)
/* 71C7C50 8008FF20 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 71C7C54 8008FF24 400002A2 */  sb         $v0, 0x40($s0)
/* 71C7C58 8008FF28 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 71C7C5C 8008FF2C CDD5000C */  jal        func_80035734
/* 71C7C60 8008FF30 3F0000A2 */   sb        $zero, 0x3F($s0)
.Llevel_33_8008FF34:
/* 71C7C64 8008FF34 0A002286 */  lh         $v0, 0xA($s1)
/* 71C7C68 8008FF38 00000000 */  nop
/* 71C7C6C 8008FF3C 0F00401C */  bgtz       $v0, .Llevel_33_8008FF7C
/* 71C7C70 8008FF40 01000524 */   addiu     $a1, $zero, 0x1
/* 71C7C74 8008FF44 21200002 */  addu       $a0, $s0, $zero
/* 71C7C78 8008FF48 21300000 */  addu       $a2, $zero, $zero
/* 71C7C7C 8008FF4C 9ADA000C */  jal        func_80036A68
/* 71C7C80 8008FF50 21380000 */   addu      $a3, $zero, $zero
/* 71C7C84 8008FF54 21200002 */  addu       $a0, $s0, $zero
/* 71C7C88 8008FF58 4957010C */  jal        func_80055D24
/* 71C7C8C 8008FF5C 04000524 */   addiu     $a1, $zero, 0x4
/* 71C7C90 8008FF60 80EE000C */  jal        func_8003BA00
/* 71C7C94 8008FF64 21200002 */   addu      $a0, $s0, $zero
/* 71C7C98 8008FF68 21200002 */  addu       $a0, $s0, $zero
/* 71C7C9C 8008FF6C 6EDA000C */  jal        func_800369B8
/* 71C7CA0 8008FF70 30000524 */   addiu     $a1, $zero, 0x30
/* 71C7CA4 8008FF74 C656010C */  jal        func_80055B18
/* 71C7CA8 8008FF78 21200002 */   addu      $a0, $s0, $zero
.Llevel_33_8008FF7C:
/* 71C7CAC 8008FF7C 180000AE */  sw         $zero, 0x18($s0)
/* 71C7CB0 8008FF80 08002286 */  lh         $v0, 0x8($s1)
/* 71C7CB4 8008FF84 00000000 */  nop
/* 71C7CB8 8008FF88 1C004010 */  beqz       $v0, .Llevel_33_8008FFFC
/* 71C7CBC 8008FF8C 08002426 */   addiu     $a0, $s1, 0x8
/* 71C7CC0 8008FF90 69D6000C */  jal        func_800359A4
/* 71C7CC4 8008FF94 02000524 */   addiu     $a1, $zero, 0x2
/* 71C7CC8 8008FF98 5C004010 */  beqz       $v0, .Llevel_33_8009010C
/* 71C7CCC 8008FF9C 21200002 */   addu      $a0, $s0, $zero
/* 71C7CD0 8008FFA0 02000524 */  addiu      $a1, $zero, 0x2
/* 71C7CD4 8008FFA4 21300000 */  addu       $a2, $zero, $zero
/* 71C7CD8 8008FFA8 01000224 */  addiu      $v0, $zero, 0x1
/* 71C7CDC 8008FFAC AFEE000C */  jal        func_8003BABC
/* 71C7CE0 8008FFB0 480002A2 */   sb        $v0, 0x48($s0)
/* 71C7CE4 8008FFB4 03000224 */  addiu      $v0, $zero, 0x3
/* 71C7CE8 8008FFB8 0A002386 */  lh         $v1, 0xA($s1)
/* 71C7CEC 8008FFBC 3D000492 */  lbu        $a0, 0x3D($s0)
/* 71C7CF0 8008FFC0 23104300 */  subu       $v0, $v0, $v1
/* 71C7CF4 8008FFC4 48000392 */  lbu        $v1, 0x48($s0)
/* 71C7CF8 8008FFC8 40100200 */  sll        $v0, $v0, 1
/* 71C7CFC 8008FFCC 21186200 */  addu       $v1, $v1, $v0
/* 71C7D00 8008FFD0 4E008310 */  beq        $a0, $v1, .Llevel_33_8009010C
/* 71C7D04 8008FFD4 21200002 */   addu      $a0, $s0, $zero
/* 71C7D08 8008FFD8 72000224 */  addiu      $v0, $zero, 0x72
/* 71C7D0C 8008FFDC 0780013C */  lui        $at, %hi(D_8006C770)
/* 71C7D10 8008FFE0 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 71C7D14 8008FFE4 400082A0 */  sb         $v0, 0x40($a0)
/* 71C7D18 8008FFE8 3D0083A0 */  sb         $v1, 0x3D($a0)
/* 71C7D1C 8008FFEC CDD5000C */  jal        func_80035734
/* 71C7D20 8008FFF0 3F0080A0 */   sb        $zero, 0x3F($a0)
/* 71C7D24 8008FFF4 43400208 */  j          .Llevel_33_8009010C
/* 71C7D28 8008FFF8 00000000 */   nop
.Llevel_33_8008FFFC:
/* 71C7D2C 8008FFFC 0780023C */  lui        $v0, %hi(D_8006C5C8)
/* 71C7D30 80090000 C8C5428C */  lw         $v0, %lo(D_8006C5C8)($v0)
/* 71C7D34 80090004 00000000 */  nop
/* 71C7D38 80090008 1E004010 */  beqz       $v0, .Llevel_33_80090084
/* 71C7D3C 8009000C 21202002 */   addu      $a0, $s1, $zero
/* 71C7D40 80090010 0780023C */  lui        $v0, %hi(D_8006C7E8)
/* 71C7D44 80090014 E8C7428C */  lw         $v0, %lo(D_8006C7E8)($v0)
/* 71C7D48 80090018 00000000 */  nop
/* 71C7D4C 8009001C 01504228 */  slti       $v0, $v0, 0x5001
/* 71C7D50 80090020 3A004014 */  bnez       $v0, .Llevel_33_8009010C
/* 71C7D54 80090024 00000000 */   nop
/* 71C7D58 80090028 0780023C */  lui        $v0, %hi(D_8006C730)
/* 71C7D5C 8009002C 30C7428C */  lw         $v0, %lo(D_8006C730)($v0)
/* 71C7D60 80090030 00000000 */  nop
/* 71C7D64 80090034 3400428C */  lw         $v0, 0x34($v0)
/* 71C7D68 80090038 00000000 */  nop
/* 71C7D6C 8009003C 00004394 */  lhu        $v1, 0x0($v0)
/* 71C7D70 80090040 00000000 */  nop
/* 71C7D74 80090044 FF7F6330 */  andi       $v1, $v1, 0x7FFF
/* 71C7D78 80090048 40100300 */  sll        $v0, $v1, 1
/* 71C7D7C 8009004C 21104300 */  addu       $v0, $v0, $v1
/* 71C7D80 80090050 80100200 */  sll        $v0, $v0, 2
/* 71C7D84 80090054 23104300 */  subu       $v0, $v0, $v1
/* 71C7D88 80090058 0780033C */  lui        $v1, %hi(D_8006C550)
/* 71C7D8C 8009005C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 71C7D90 80090060 C0100200 */  sll        $v0, $v0, 3
/* 71C7D94 80090064 21104300 */  addu       $v0, $v0, $v1
/* 71C7D98 80090068 0000428C */  lw         $v0, 0x0($v0)
/* 71C7D9C 8009006C 00000000 */  nop
/* 71C7DA0 80090070 6400428C */  lw         $v0, 0x64($v0)
/* 71C7DA4 80090074 00000000 */  nop
/* 71C7DA8 80090078 06004228 */  slti       $v0, $v0, 0x6
/* 71C7DAC 8009007C 23004010 */  beqz       $v0, .Llevel_33_8009010C
/* 71C7DB0 80090080 00000000 */   nop
.Llevel_33_80090084:
/* 71C7DB4 80090084 69D6000C */  jal        func_800359A4
/* 71C7DB8 80090088 04000524 */   addiu     $a1, $zero, 0x4
/* 71C7DBC 8009008C 1F004010 */  beqz       $v0, .Llevel_33_8009010C
/* 71C7DC0 80090090 00000000 */   nop
/* 71C7DC4 80090094 0400228E */  lw         $v0, 0x4($s1)
/* 71C7DC8 80090098 00000000 */  nop
/* 71C7DCC 8009009C 1B004010 */  beqz       $v0, .Llevel_33_8009010C
/* 71C7DD0 800900A0 21200002 */   addu      $a0, $s0, $zero
/* 71C7DD4 800900A4 02000524 */  addiu      $a1, $zero, 0x2
/* 71C7DD8 800900A8 21300000 */  addu       $a2, $zero, $zero
/* 71C7DDC 800900AC AFEE000C */  jal        func_8003BABC
/* 71C7DE0 800900B0 480000A2 */   sb        $zero, 0x48($s0)
/* 71C7DE4 800900B4 03000224 */  addiu      $v0, $zero, 0x3
/* 71C7DE8 800900B8 0A002386 */  lh         $v1, 0xA($s1)
/* 71C7DEC 800900BC 3D000492 */  lbu        $a0, 0x3D($s0)
/* 71C7DF0 800900C0 23104300 */  subu       $v0, $v0, $v1
/* 71C7DF4 800900C4 48000392 */  lbu        $v1, 0x48($s0)
/* 71C7DF8 800900C8 40100200 */  sll        $v0, $v0, 1
/* 71C7DFC 800900CC 21186200 */  addu       $v1, $v1, $v0
/* 71C7E00 800900D0 08008310 */  beq        $a0, $v1, .Llevel_33_800900F4
/* 71C7E04 800900D4 21200002 */   addu      $a0, $s0, $zero
/* 71C7E08 800900D8 72000224 */  addiu      $v0, $zero, 0x72
/* 71C7E0C 800900DC 0780013C */  lui        $at, %hi(D_8006C770)
/* 71C7E10 800900E0 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 71C7E14 800900E4 400082A0 */  sb         $v0, 0x40($a0)
/* 71C7E18 800900E8 3D0083A0 */  sb         $v1, 0x3D($a0)
/* 71C7E1C 800900EC CDD5000C */  jal        func_80035734
/* 71C7E20 800900F0 3F0080A0 */   sb        $zero, 0x3F($a0)
.Llevel_33_800900F4:
/* 71C7E24 800900F4 0400228E */  lw         $v0, 0x4($s1)
/* 71C7E28 800900F8 01000324 */  addiu      $v1, $zero, 0x1
/* 71C7E2C 800900FC 490043A0 */  sb         $v1, 0x49($v0)
/* 71C7E30 80090100 1E000224 */  addiu      $v0, $zero, 0x1E
/* 71C7E34 80090104 040020AE */  sw         $zero, 0x4($s1)
/* 71C7E38 80090108 080022A6 */  sh         $v0, 0x8($s1)
.Llevel_33_8009010C:
/* 71C7E3C 8009010C 1800BF8F */  lw         $ra, 0x18($sp)
/* 71C7E40 80090110 1400B18F */  lw         $s1, 0x14($sp)
/* 71C7E44 80090114 1000B08F */  lw         $s0, 0x10($sp)
/* 71C7E48 80090118 2000BD27 */  addiu      $sp, $sp, 0x20
/* 71C7E4C 8009011C 0800E003 */  jr         $ra
/* 71C7E50 80090120 00000000 */   nop
.size MobyUpdate_708_level_33, . - MobyUpdate_708_level_33
