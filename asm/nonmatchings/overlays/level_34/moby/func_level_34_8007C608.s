.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_459_level_34
/* 74D8338 8007C608 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 74D833C 8007C60C 1000B0AF */  sw         $s0, 0x10($sp)
/* 74D8340 8007C610 21808000 */  addu       $s0, $a0, $zero
/* 74D8344 8007C614 1400BFAF */  sw         $ra, 0x14($sp)
/* 74D8348 8007C618 0000048E */  lw         $a0, 0x0($s0)
/* 74D834C 8007C61C 00000000 */  nop
/* 74D8350 8007C620 0000838C */  lw         $v1, 0x0($a0)
/* 74D8354 8007C624 00000000 */  nop
/* 74D8358 8007C628 08006018 */  blez       $v1, .Llevel_34_8007C64C
/* 74D835C 8007C62C 00000000 */   nop
/* 74D8360 8007C630 0780023C */  lui        $v0, %hi(D_8006C648)
/* 74D8364 8007C634 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 74D8368 8007C638 00000000 */  nop
/* 74D836C 8007C63C 40100200 */  sll        $v0, $v0, 1
/* 74D8370 8007C640 23106200 */  subu       $v0, $v1, $v0
/* 74D8374 8007C644 99F10108 */  j          .Llevel_34_8007C664
/* 74D8378 8007C648 000082AC */   sw        $v0, 0x0($a0)
.Llevel_34_8007C64C:
/* 74D837C 8007C64C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 74D8380 8007C650 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 74D8384 8007C654 4F000392 */  lbu        $v1, 0x4F($s0)
/* 74D8388 8007C658 40100200 */  sll        $v0, $v0, 1
/* 74D838C 8007C65C 21186200 */  addu       $v1, $v1, $v0
/* 74D8390 8007C660 4F0003A2 */  sb         $v1, 0x4F($s0)
.Llevel_34_8007C664:
/* 74D8394 8007C664 0780043C */  lui        $a0, %hi(D_8006C648)
/* 74D8398 8007C668 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 74D839C 8007C66C 1400028E */  lw         $v0, 0x14($s0)
/* 74D83A0 8007C670 40190400 */  sll        $v1, $a0, 5
/* 74D83A4 8007C674 21104300 */  addu       $v0, $v0, $v1
/* 74D83A8 8007C678 C0200400 */  sll        $a0, $a0, 3
/* 74D83AC 8007C67C 140002AE */  sw         $v0, 0x14($s0)
/* 74D83B0 8007C680 46000292 */  lbu        $v0, 0x46($s0)
/* 74D83B4 8007C684 4F000392 */  lbu        $v1, 0x4F($s0)
/* 74D83B8 8007C688 21104400 */  addu       $v0, $v0, $a0
/* 74D83BC 8007C68C 7C00632C */  sltiu      $v1, $v1, 0x7C
/* 74D83C0 8007C690 0E006014 */  bnez       $v1, .Llevel_34_8007C6CC
/* 74D83C4 8007C694 460002A2 */   sb        $v0, 0x46($s0)
/* 74D83C8 8007C698 08000424 */  addiu      $a0, $zero, 0x8
/* 74D83CC 8007C69C 47000524 */  addiu      $a1, $zero, 0x47
/* 74D83D0 8007C6A0 1400028E */  lw         $v0, 0x14($s0)
/* 74D83D4 8007C6A4 0C000626 */  addiu      $a2, $s0, 0xC
/* 74D83D8 8007C6A8 60004224 */  addiu      $v0, $v0, 0x60
/* 74D83DC 8007C6AC 140002AE */  sw         $v0, 0x14($s0)
/* 74D83E0 8007C6B0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74D83E4 8007C6B4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74D83E8 8007C6B8 00000000 */  nop
/* 74D83EC 8007C6BC 09F84000 */  jalr       $v0
/* 74D83F0 8007C6C0 21380000 */   addu      $a3, $zero, $zero
/* 74D83F4 8007C6C4 C656010C */  jal        func_80055B18
/* 74D83F8 8007C6C8 21200002 */   addu      $a0, $s0, $zero
.Llevel_34_8007C6CC:
/* 74D83FC 8007C6CC 1400BF8F */  lw         $ra, 0x14($sp)
/* 74D8400 8007C6D0 1000B08F */  lw         $s0, 0x10($sp)
/* 74D8404 8007C6D4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 74D8408 8007C6D8 0800E003 */  jr         $ra
/* 74D840C 8007C6DC 00000000 */   nop
.size MobyUpdate_459_level_34, . - MobyUpdate_459_level_34
