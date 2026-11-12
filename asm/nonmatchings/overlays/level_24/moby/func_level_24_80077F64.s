.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_24
/* 5DF2C94 80077F64 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5DF2C98 80077F68 2000B0AF */  sw         $s0, 0x20($sp)
/* 5DF2C9C 80077F6C 21808000 */  addu       $s0, $a0, $zero
/* 5DF2CA0 80077F70 2800BFAF */  sw         $ra, 0x28($sp)
/* 5DF2CA4 80077F74 2400B1AF */  sw         $s1, 0x24($sp)
/* 5DF2CA8 80077F78 0000118E */  lw         $s1, 0x0($s0)
/* 5DF2CAC 80077F7C 02000524 */  addiu      $a1, $zero, 0x2
/* 5DF2CB0 80077F80 69D6000C */  jal        func_800359A4
/* 5DF2CB4 80077F84 21202002 */   addu      $a0, $s1, $zero
/* 5DF2CB8 80077F88 03004010 */  beqz       $v0, .Llevel_24_80077F98
/* 5DF2CBC 80077F8C 00000000 */   nop
/* 5DF2CC0 80077F90 C656010C */  jal        func_80055B18
/* 5DF2CC4 80077F94 21200002 */   addu      $a0, $s0, $zero
.Llevel_24_80077F98:
/* 5DF2CC8 80077F98 02002392 */  lbu        $v1, 0x2($s1)
/* 5DF2CCC 80077F9C 00000000 */  nop
/* 5DF2CD0 80077FA0 0E006014 */  bnez       $v1, .Llevel_24_80077FDC
/* 5DF2CD4 80077FA4 01000224 */   addiu     $v0, $zero, 0x1
/* 5DF2CD8 80077FA8 00002286 */  lh         $v0, 0x0($s1)
/* 5DF2CDC 80077FAC 00000000 */  nop
/* 5DF2CE0 80077FB0 21184000 */  addu       $v1, $v0, $zero
/* 5DF2CE4 80077FB4 08004228 */  slti       $v0, $v0, 0x8
/* 5DF2CE8 80077FB8 04004010 */  beqz       $v0, .Llevel_24_80077FCC
/* 5DF2CEC 80077FBC 00110300 */   sll       $v0, $v1, 4
/* 5DF2CF0 80077FC0 540002A2 */  sb         $v0, 0x54($s0)
/* 5DF2CF4 80077FC4 14E00108 */  j          .Llevel_24_80078050
/* 5DF2CF8 80077FC8 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_24_80077FCC:
/* 5DF2CFC 80077FCC F8FF6224 */  addiu      $v0, $v1, -0x8
/* 5DF2D00 80077FD0 00110200 */  sll        $v0, $v0, 4
/* 5DF2D04 80077FD4 14E00108 */  j          .Llevel_24_80078050
/* 5DF2D08 80077FD8 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_24_80077FDC:
/* 5DF2D0C 80077FDC 0E006214 */  bne        $v1, $v0, .Llevel_24_80078018
/* 5DF2D10 80077FE0 02000224 */   addiu     $v0, $zero, 0x2
/* 5DF2D14 80077FE4 00002286 */  lh         $v0, 0x0($s1)
/* 5DF2D18 80077FE8 00000000 */  nop
/* 5DF2D1C 80077FEC 21184000 */  addu       $v1, $v0, $zero
/* 5DF2D20 80077FF0 08004228 */  slti       $v0, $v0, 0x8
/* 5DF2D24 80077FF4 04004010 */  beqz       $v0, .Llevel_24_80078008
/* 5DF2D28 80077FF8 00110300 */   sll       $v0, $v1, 4
/* 5DF2D2C 80077FFC 550002A2 */  sb         $v0, 0x55($s0)
/* 5DF2D30 80078000 14E00108 */  j          .Llevel_24_80078050
/* 5DF2D34 80078004 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_24_80078008:
/* 5DF2D38 80078008 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 5DF2D3C 8007800C 00110200 */  sll        $v0, $v0, 4
/* 5DF2D40 80078010 14E00108 */  j          .Llevel_24_80078050
/* 5DF2D44 80078014 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_24_80078018:
/* 5DF2D48 80078018 0D006214 */  bne        $v1, $v0, .Llevel_24_80078050
/* 5DF2D4C 8007801C 00000000 */   nop
/* 5DF2D50 80078020 54000292 */  lbu        $v0, 0x54($s0)
/* 5DF2D54 80078024 56000392 */  lbu        $v1, 0x56($s0)
/* 5DF2D58 80078028 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 5DF2D5C 8007802C 540002A2 */  sb         $v0, 0x54($s0)
/* 5DF2D60 80078030 55000292 */  lbu        $v0, 0x55($s0)
/* 5DF2D64 80078034 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 5DF2D68 80078038 560003A2 */  sb         $v1, 0x56($s0)
/* 5DF2D6C 8007803C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 5DF2D70 80078040 550002A2 */  sb         $v0, 0x55($s0)
/* 5DF2D74 80078044 00002296 */  lhu        $v0, 0x0($s1)
/* 5DF2D78 80078048 00000000 */  nop
/* 5DF2D7C 8007804C 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_24_80078050:
/* 5DF2D80 80078050 03002292 */  lbu        $v0, 0x3($s1)
/* 5DF2D84 80078054 00000000 */  nop
/* 5DF2D88 80078058 06004014 */  bnez       $v0, .Llevel_24_80078074
/* 5DF2D8C 8007805C 00000000 */   nop
/* 5DF2D90 80078060 00002292 */  lbu        $v0, 0x0($s1)
/* 5DF2D94 80078064 00000000 */  nop
/* 5DF2D98 80078068 40100200 */  sll        $v0, $v0, 1
/* 5DF2D9C 8007806C 21E00108 */  j          .Llevel_24_80078084
/* 5DF2DA0 80078070 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_24_80078074:
/* 5DF2DA4 80078074 00002292 */  lbu        $v0, 0x0($s1)
/* 5DF2DA8 80078078 00000000 */  nop
/* 5DF2DAC 8007807C 80100200 */  sll        $v0, $v0, 2
/* 5DF2DB0 80078080 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_24_80078084:
/* 5DF2DB4 80078084 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5DF2DB8 80078088 2800BF8F */  lw         $ra, 0x28($sp)
/* 5DF2DBC 8007808C 2400B18F */  lw         $s1, 0x24($sp)
/* 5DF2DC0 80078090 2000B08F */  lw         $s0, 0x20($sp)
/* 5DF2DC4 80078094 3000BD27 */  addiu      $sp, $sp, 0x30
/* 5DF2DC8 80078098 0800E003 */  jr         $ra
/* 5DF2DCC 8007809C 00000000 */   nop
.size MobyUpdate_326_level_24, . - MobyUpdate_326_level_24
