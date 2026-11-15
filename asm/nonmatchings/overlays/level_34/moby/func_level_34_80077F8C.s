.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_34
/* 74D3CBC 80077F8C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 74D3CC0 80077F90 1000B0AF */  sw         $s0, 0x10($sp)
/* 74D3CC4 80077F94 21808000 */  addu       $s0, $a0, $zero
/* 74D3CC8 80077F98 1800BFAF */  sw         $ra, 0x18($sp)
/* 74D3CCC 80077F9C 1400B1AF */  sw         $s1, 0x14($sp)
/* 74D3CD0 80077FA0 0000118E */  lw         $s1, 0x0($s0)
/* 74D3CD4 80077FA4 04000524 */  addiu      $a1, $zero, 0x4
/* 74D3CD8 80077FA8 69D6000C */  jal        func_800359A4
/* 74D3CDC 80077FAC 21202002 */   addu      $a0, $s1, $zero
/* 74D3CE0 80077FB0 03004010 */  beqz       $v0, .Llevel_34_80077FC0
/* 74D3CE4 80077FB4 00000000 */   nop
/* 74D3CE8 80077FB8 C656010C */  jal        func_80055B18
/* 74D3CEC 80077FBC 21200002 */   addu      $a0, $s0, $zero
.Llevel_34_80077FC0:
/* 74D3CF0 80077FC0 0000238E */  lw         $v1, 0x0($s1)
/* 74D3CF4 80077FC4 10000224 */  addiu      $v0, $zero, 0x10
/* 74D3CF8 80077FC8 23104300 */  subu       $v0, $v0, $v1
/* 74D3CFC 80077FCC 03004104 */  bgez       $v0, .Llevel_34_80077FDC
/* 74D3D00 80077FD0 30004224 */   addiu     $v0, $v0, 0x30
/* 74D3D04 80077FD4 21100000 */  addu       $v0, $zero, $zero
/* 74D3D08 80077FD8 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_34_80077FDC:
/* 74D3D0C 80077FDC 570002A2 */  sb         $v0, 0x57($s0)
/* 74D3D10 80077FE0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 74D3D14 80077FE4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 74D3D18 80077FE8 00000000 */  nop
/* 74D3D1C 80077FEC 40180200 */  sll        $v1, $v0, 1
/* 74D3D20 80077FF0 21186200 */  addu       $v1, $v1, $v0
/* 74D3D24 80077FF4 4F000292 */  lbu        $v0, 0x4F($s0)
/* 74D3D28 80077FF8 40180300 */  sll        $v1, $v1, 1
/* 74D3D2C 80077FFC 23104300 */  subu       $v0, $v0, $v1
/* 74D3D30 80078000 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74D3D34 80078004 FF004230 */  andi       $v0, $v0, 0xFF
/* 74D3D38 80078008 8000422C */  sltiu      $v0, $v0, 0x80
/* 74D3D3C 8007800C 02004014 */  bnez       $v0, .Llevel_34_80078018
/* 74D3D40 80078010 00000000 */   nop
/* 74D3D44 80078014 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_34_80078018:
/* 74D3D48 80078018 4F000292 */  lbu        $v0, 0x4F($s0)
/* 74D3D4C 8007801C 00000000 */  nop
/* 74D3D50 80078020 1800422C */  sltiu      $v0, $v0, 0x18
/* 74D3D54 80078024 02004010 */  beqz       $v0, .Llevel_34_80078030
/* 74D3D58 80078028 18000224 */   addiu     $v0, $zero, 0x18
/* 74D3D5C 8007802C 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_34_80078030:
/* 74D3D60 80078030 1800BF8F */  lw         $ra, 0x18($sp)
/* 74D3D64 80078034 1400B18F */  lw         $s1, 0x14($sp)
/* 74D3D68 80078038 1000B08F */  lw         $s0, 0x10($sp)
/* 74D3D6C 8007803C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 74D3D70 80078040 0800E003 */  jr         $ra
/* 74D3D74 80078044 00000000 */   nop
.size MobyUpdate_541_level_34, . - MobyUpdate_541_level_34
