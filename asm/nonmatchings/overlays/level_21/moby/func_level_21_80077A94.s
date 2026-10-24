.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_326_level_21
/* 53F3FC4 80077A94 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 53F3FC8 80077A98 2000B0AF */  sw         $s0, 0x20($sp)
/* 53F3FCC 80077A9C 21808000 */  addu       $s0, $a0, $zero
/* 53F3FD0 80077AA0 2800BFAF */  sw         $ra, 0x28($sp)
/* 53F3FD4 80077AA4 2400B1AF */  sw         $s1, 0x24($sp)
/* 53F3FD8 80077AA8 0000118E */  lw         $s1, 0x0($s0)
/* 53F3FDC 80077AAC 02000524 */  addiu      $a1, $zero, 0x2
/* 53F3FE0 80077AB0 69D6000C */  jal        func_800359A4
/* 53F3FE4 80077AB4 21202002 */   addu      $a0, $s1, $zero
/* 53F3FE8 80077AB8 03004010 */  beqz       $v0, .Llevel_21_80077AC8
/* 53F3FEC 80077ABC 00000000 */   nop
/* 53F3FF0 80077AC0 C656010C */  jal        func_80055B18
/* 53F3FF4 80077AC4 21200002 */   addu      $a0, $s0, $zero
.Llevel_21_80077AC8:
/* 53F3FF8 80077AC8 02002392 */  lbu        $v1, 0x2($s1)
/* 53F3FFC 80077ACC 00000000 */  nop
/* 53F4000 80077AD0 0E006014 */  bnez       $v1, .Llevel_21_80077B0C
/* 53F4004 80077AD4 01000224 */   addiu     $v0, $zero, 0x1
/* 53F4008 80077AD8 00002286 */  lh         $v0, 0x0($s1)
/* 53F400C 80077ADC 00000000 */  nop
/* 53F4010 80077AE0 21184000 */  addu       $v1, $v0, $zero
/* 53F4014 80077AE4 08004228 */  slti       $v0, $v0, 0x8
/* 53F4018 80077AE8 04004010 */  beqz       $v0, .Llevel_21_80077AFC
/* 53F401C 80077AEC 00110300 */   sll       $v0, $v1, 4
/* 53F4020 80077AF0 540002A2 */  sb         $v0, 0x54($s0)
/* 53F4024 80077AF4 E0DE0108 */  j          .Llevel_21_80077B80
/* 53F4028 80077AF8 550000A2 */   sb        $zero, 0x55($s0)
.Llevel_21_80077AFC:
/* 53F402C 80077AFC F8FF6224 */  addiu      $v0, $v1, -0x8
/* 53F4030 80077B00 00110200 */  sll        $v0, $v0, 4
/* 53F4034 80077B04 E0DE0108 */  j          .Llevel_21_80077B80
/* 53F4038 80077B08 550002A2 */   sb        $v0, 0x55($s0)
.Llevel_21_80077B0C:
/* 53F403C 80077B0C 0E006214 */  bne        $v1, $v0, .Llevel_21_80077B48
/* 53F4040 80077B10 02000224 */   addiu     $v0, $zero, 0x2
/* 53F4044 80077B14 00002286 */  lh         $v0, 0x0($s1)
/* 53F4048 80077B18 00000000 */  nop
/* 53F404C 80077B1C 21184000 */  addu       $v1, $v0, $zero
/* 53F4050 80077B20 08004228 */  slti       $v0, $v0, 0x8
/* 53F4054 80077B24 04004010 */  beqz       $v0, .Llevel_21_80077B38
/* 53F4058 80077B28 00110300 */   sll       $v0, $v1, 4
/* 53F405C 80077B2C 550002A2 */  sb         $v0, 0x55($s0)
/* 53F4060 80077B30 E0DE0108 */  j          .Llevel_21_80077B80
/* 53F4064 80077B34 540000A2 */   sb        $zero, 0x54($s0)
.Llevel_21_80077B38:
/* 53F4068 80077B38 F8FF6224 */  addiu      $v0, $v1, -0x8
/* 53F406C 80077B3C 00110200 */  sll        $v0, $v0, 4
/* 53F4070 80077B40 E0DE0108 */  j          .Llevel_21_80077B80
/* 53F4074 80077B44 540002A2 */   sb        $v0, 0x54($s0)
.Llevel_21_80077B48:
/* 53F4078 80077B48 0D006214 */  bne        $v1, $v0, .Llevel_21_80077B80
/* 53F407C 80077B4C 00000000 */   nop
/* 53F4080 80077B50 54000292 */  lbu        $v0, 0x54($s0)
/* 53F4084 80077B54 56000392 */  lbu        $v1, 0x56($s0)
/* 53F4088 80077B58 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 53F408C 80077B5C 540002A2 */  sb         $v0, 0x54($s0)
/* 53F4090 80077B60 55000292 */  lbu        $v0, 0x55($s0)
/* 53F4094 80077B64 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 53F4098 80077B68 560003A2 */  sb         $v1, 0x56($s0)
/* 53F409C 80077B6C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 53F40A0 80077B70 550002A2 */  sb         $v0, 0x55($s0)
/* 53F40A4 80077B74 00002296 */  lhu        $v0, 0x0($s1)
/* 53F40A8 80077B78 00000000 */  nop
/* 53F40AC 80077B7C 570002A2 */  sb         $v0, 0x57($s0)
.Llevel_21_80077B80:
/* 53F40B0 80077B80 03002292 */  lbu        $v0, 0x3($s1)
/* 53F40B4 80077B84 00000000 */  nop
/* 53F40B8 80077B88 06004014 */  bnez       $v0, .Llevel_21_80077BA4
/* 53F40BC 80077B8C 00000000 */   nop
/* 53F40C0 80077B90 00002292 */  lbu        $v0, 0x0($s1)
/* 53F40C4 80077B94 00000000 */  nop
/* 53F40C8 80077B98 40100200 */  sll        $v0, $v0, 1
/* 53F40CC 80077B9C EDDE0108 */  j          .Llevel_21_80077BB4
/* 53F40D0 80077BA0 30004224 */   addiu     $v0, $v0, 0x30
.Llevel_21_80077BA4:
/* 53F40D4 80077BA4 00002292 */  lbu        $v0, 0x0($s1)
/* 53F40D8 80077BA8 00000000 */  nop
/* 53F40DC 80077BAC 80100200 */  sll        $v0, $v0, 2
/* 53F40E0 80077BB0 34004224 */  addiu      $v0, $v0, 0x34
.Llevel_21_80077BB4:
/* 53F40E4 80077BB4 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 53F40E8 80077BB8 2800BF8F */  lw         $ra, 0x28($sp)
/* 53F40EC 80077BBC 2400B18F */  lw         $s1, 0x24($sp)
/* 53F40F0 80077BC0 2000B08F */  lw         $s0, 0x20($sp)
/* 53F40F4 80077BC4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 53F40F8 80077BC8 0800E003 */  jr         $ra
/* 53F40FC 80077BCC 00000000 */   nop
.size MobyUpdate_326_level_21, . - MobyUpdate_326_level_21
