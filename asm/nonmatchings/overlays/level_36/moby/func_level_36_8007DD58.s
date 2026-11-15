.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_991_level_36
/* 78DE288 8007DD58 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 78DE28C 8007DD5C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 78DE290 8007DD60 2800B2AF */  sw         $s2, 0x28($sp)
/* 78DE294 8007DD64 2400B1AF */  sw         $s1, 0x24($sp)
/* 78DE298 8007DD68 2000B0AF */  sw         $s0, 0x20($sp)
/* 78DE29C 8007DD6C 0000858C */  lw         $a1, 0x0($a0)
/* 78DE2A0 8007DD70 0780043C */  lui        $a0, %hi(D_80070328)
/* 78DE2A4 8007DD74 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 78DE2A8 8007DD78 21300000 */  addu       $a2, $zero, $zero
/* 78DE2AC 8007DD7C 88D8000C */  jal        func_80036220
/* 78DE2B0 8007DD80 00040724 */   addiu     $a3, $zero, 0x400
/* 78DE2B4 8007DD84 39004010 */  beqz       $v0, .Llevel_36_8007DE6C
/* 78DE2B8 8007DD88 1000A427 */   addiu     $a0, $sp, 0x10
/* 78DE2BC 8007DD8C 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 78DE2C0 8007DD90 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 78DE2C4 8007DD94 00000000 */  nop
/* 78DE2C8 8007DD98 0000468C */  lw         $a2, 0x0($v0)
/* 78DE2CC 8007DD9C 00000000 */  nop
/* 78DE2D0 8007DDA0 3400D18C */  lw         $s1, 0x34($a2)
/* 78DE2D4 8007DDA4 00000000 */  nop
/* 78DE2D8 8007DDA8 40101100 */  sll        $v0, $s1, 1
/* 78DE2DC 8007DDAC 0680013C */  lui        $at, %hi(D_80065920)
/* 78DE2E0 8007DDB0 21082200 */  addu       $at, $at, $v0
/* 78DE2E4 8007DDB4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 78DE2E8 8007DDB8 21288000 */  addu       $a1, $a0, $zero
/* 78DE2EC 8007DDBC 40100300 */  sll        $v0, $v1, 1
/* 78DE2F0 8007DDC0 21104300 */  addu       $v0, $v0, $v1
/* 78DE2F4 8007DDC4 80100200 */  sll        $v0, $v0, 2
/* 78DE2F8 8007DDC8 21104300 */  addu       $v0, $v0, $v1
/* 78DE2FC 8007DDCC 43110200 */  sra        $v0, $v0, 5
/* 78DE300 8007DDD0 1000A2AF */  sw         $v0, 0x10($sp)
/* 78DE304 8007DDD4 3400C28C */  lw         $v0, 0x34($a2)
/* 78DE308 8007DDD8 80FF3126 */  addiu      $s1, $s1, -0x80
/* 78DE30C 8007DDDC 40100200 */  sll        $v0, $v0, 1
/* 78DE310 8007DDE0 0680013C */  lui        $at, %hi(D_800658A0)
/* 78DE314 8007DDE4 21082200 */  addu       $at, $at, $v0
/* 78DE318 8007DDE8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 78DE31C 8007DDEC 3800C624 */  addiu      $a2, $a2, 0x38
/* 78DE320 8007DDF0 1800A0AF */  sw         $zero, 0x18($sp)
/* 78DE324 8007DDF4 40100300 */  sll        $v0, $v1, 1
/* 78DE328 8007DDF8 21104300 */  addu       $v0, $v0, $v1
/* 78DE32C 8007DDFC 80100200 */  sll        $v0, $v0, 2
/* 78DE330 8007DE00 21104300 */  addu       $v0, $v0, $v1
/* 78DE334 8007DE04 43110200 */  sra        $v0, $v0, 5
/* 78DE338 8007DE08 653C010C */  jal        func_8004F194
/* 78DE33C 8007DE0C 1400A2AF */   sw        $v0, 0x14($sp)
/* 78DE340 8007DE10 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 78DE344 8007DE14 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 78DE348 8007DE18 00000000 */  nop
/* 78DE34C 8007DE1C 48005290 */  lbu        $s2, 0x48($v0)
/* 78DE350 8007DE20 01000524 */  addiu      $a1, $zero, 0x1
/* 78DE354 8007DE24 480040A0 */  sb         $zero, 0x48($v0)
/* 78DE358 8007DE28 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 78DE35C 8007DE2C 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 78DE360 8007DE30 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 78DE364 8007DE34 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 78DE368 8007DE38 EDED000C */  jal        func_8003B7B4
/* 78DE36C 8007DE3C 48008424 */   addiu     $a0, $a0, 0x48
/* 78DE370 8007DE40 0780103C */  lui        $s0, %hi(D_8006D088)
/* 78DE374 8007DE44 88D01026 */  addiu      $s0, $s0, %lo(D_8006D088)
/* 78DE378 8007DE48 21200002 */  addu       $a0, $s0, $zero
/* 78DE37C 8007DE4C 1000A527 */  addiu      $a1, $sp, 0x10
/* 78DE380 8007DE50 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 78DE384 8007DE54 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 78DE388 8007DE58 FF002632 */  andi       $a2, $s1, 0xFF
/* 78DE38C 8007DE5C 8DED000C */  jal        func_8003B634
/* 78DE390 8007DE60 480052A0 */   sb        $s2, 0x48($v0)
/* 78DE394 8007DE64 D3ED000C */  jal        func_8003B74C
/* 78DE398 8007DE68 21200002 */   addu      $a0, $s0, $zero
.Llevel_36_8007DE6C:
/* 78DE39C 8007DE6C 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 78DE3A0 8007DE70 2800B28F */  lw         $s2, 0x28($sp)
/* 78DE3A4 8007DE74 2400B18F */  lw         $s1, 0x24($sp)
/* 78DE3A8 8007DE78 2000B08F */  lw         $s0, 0x20($sp)
/* 78DE3AC 8007DE7C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 78DE3B0 8007DE80 0800E003 */  jr         $ra
/* 78DE3B4 8007DE84 00000000 */   nop
.size MobyUpdate_991_level_36, . - MobyUpdate_991_level_36
