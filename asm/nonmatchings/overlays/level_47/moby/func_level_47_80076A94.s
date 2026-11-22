.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_47
/* 9115FC4 80076A94 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9115FC8 80076A98 1000B0AF */  sw         $s0, 0x10($sp)
/* 9115FCC 80076A9C 21808000 */  addu       $s0, $a0, $zero
/* 9115FD0 80076AA0 1800BFAF */  sw         $ra, 0x18($sp)
/* 9115FD4 80076AA4 1400B1AF */  sw         $s1, 0x14($sp)
/* 9115FD8 80076AA8 0000118E */  lw         $s1, 0x0($s0)
/* 9115FDC 80076AAC 04000524 */  addiu      $a1, $zero, 0x4
/* 9115FE0 80076AB0 69D6000C */  jal        func_800359A4
/* 9115FE4 80076AB4 21202002 */   addu      $a0, $s1, $zero
/* 9115FE8 80076AB8 03004010 */  beqz       $v0, .Llevel_47_80076AC8
/* 9115FEC 80076ABC 00000000 */   nop
/* 9115FF0 80076AC0 C656010C */  jal        func_80055B18
/* 9115FF4 80076AC4 21200002 */   addu      $a0, $s0, $zero
.Llevel_47_80076AC8:
/* 9115FF8 80076AC8 0000238E */  lw         $v1, 0x0($s1)
/* 9115FFC 80076ACC 10000224 */  addiu      $v0, $zero, 0x10
/* 9116000 80076AD0 23104300 */  subu       $v0, $v0, $v1
/* 9116004 80076AD4 03004104 */  bgez       $v0, .Llevel_47_80076AE4
/* 9116008 80076AD8 30004224 */   addiu     $v0, $v0, 0x30
/* 911600C 80076ADC 21100000 */  addu       $v0, $zero, $zero
/* 9116010 80076AE0 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_47_80076AE4:
/* 9116014 80076AE4 570002A2 */  sb         $v0, 0x57($s0)
/* 9116018 80076AE8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 911601C 80076AEC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 9116020 80076AF0 00000000 */  nop
/* 9116024 80076AF4 40180200 */  sll        $v1, $v0, 1
/* 9116028 80076AF8 21186200 */  addu       $v1, $v1, $v0
/* 911602C 80076AFC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 9116030 80076B00 40180300 */  sll        $v1, $v1, 1
/* 9116034 80076B04 23104300 */  subu       $v0, $v0, $v1
/* 9116038 80076B08 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 911603C 80076B0C FF004230 */  andi       $v0, $v0, 0xFF
/* 9116040 80076B10 8000422C */  sltiu      $v0, $v0, 0x80
/* 9116044 80076B14 02004014 */  bnez       $v0, .Llevel_47_80076B20
/* 9116048 80076B18 00000000 */   nop
/* 911604C 80076B1C 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_47_80076B20:
/* 9116050 80076B20 4F000292 */  lbu        $v0, 0x4F($s0)
/* 9116054 80076B24 00000000 */  nop
/* 9116058 80076B28 1800422C */  sltiu      $v0, $v0, 0x18
/* 911605C 80076B2C 02004010 */  beqz       $v0, .Llevel_47_80076B38
/* 9116060 80076B30 18000224 */   addiu     $v0, $zero, 0x18
/* 9116064 80076B34 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_47_80076B38:
/* 9116068 80076B38 1800BF8F */  lw         $ra, 0x18($sp)
/* 911606C 80076B3C 1400B18F */  lw         $s1, 0x14($sp)
/* 9116070 80076B40 1000B08F */  lw         $s0, 0x10($sp)
/* 9116074 80076B44 2000BD27 */  addiu      $sp, $sp, 0x20
/* 9116078 80076B48 0800E003 */  jr         $ra
/* 911607C 80076B4C 00000000 */   nop
.size MobyUpdate_541_level_47, . - MobyUpdate_541_level_47
