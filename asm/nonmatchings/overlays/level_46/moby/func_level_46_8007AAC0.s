.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_991_level_46
/* 8F4CFF0 8007AAC0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 8F4CFF4 8007AAC4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 8F4CFF8 8007AAC8 2800B2AF */  sw         $s2, 0x28($sp)
/* 8F4CFFC 8007AACC 2400B1AF */  sw         $s1, 0x24($sp)
/* 8F4D000 8007AAD0 2000B0AF */  sw         $s0, 0x20($sp)
/* 8F4D004 8007AAD4 0000858C */  lw         $a1, 0x0($a0)
/* 8F4D008 8007AAD8 0780043C */  lui        $a0, %hi(D_80070328)
/* 8F4D00C 8007AADC 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 8F4D010 8007AAE0 21300000 */  addu       $a2, $zero, $zero
/* 8F4D014 8007AAE4 88D8000C */  jal        func_80036220
/* 8F4D018 8007AAE8 00040724 */   addiu     $a3, $zero, 0x400
/* 8F4D01C 8007AAEC 39004010 */  beqz       $v0, .Llevel_46_8007ABD4
/* 8F4D020 8007AAF0 1000A427 */   addiu     $a0, $sp, 0x10
/* 8F4D024 8007AAF4 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 8F4D028 8007AAF8 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 8F4D02C 8007AAFC 00000000 */  nop
/* 8F4D030 8007AB00 0000468C */  lw         $a2, 0x0($v0)
/* 8F4D034 8007AB04 00000000 */  nop
/* 8F4D038 8007AB08 3400D18C */  lw         $s1, 0x34($a2)
/* 8F4D03C 8007AB0C 00000000 */  nop
/* 8F4D040 8007AB10 40101100 */  sll        $v0, $s1, 1
/* 8F4D044 8007AB14 0680013C */  lui        $at, %hi(D_80065920)
/* 8F4D048 8007AB18 21082200 */  addu       $at, $at, $v0
/* 8F4D04C 8007AB1C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8F4D050 8007AB20 21288000 */  addu       $a1, $a0, $zero
/* 8F4D054 8007AB24 40100300 */  sll        $v0, $v1, 1
/* 8F4D058 8007AB28 21104300 */  addu       $v0, $v0, $v1
/* 8F4D05C 8007AB2C 80100200 */  sll        $v0, $v0, 2
/* 8F4D060 8007AB30 21104300 */  addu       $v0, $v0, $v1
/* 8F4D064 8007AB34 43110200 */  sra        $v0, $v0, 5
/* 8F4D068 8007AB38 1000A2AF */  sw         $v0, 0x10($sp)
/* 8F4D06C 8007AB3C 3400C28C */  lw         $v0, 0x34($a2)
/* 8F4D070 8007AB40 80FF3126 */  addiu      $s1, $s1, -0x80
/* 8F4D074 8007AB44 40100200 */  sll        $v0, $v0, 1
/* 8F4D078 8007AB48 0680013C */  lui        $at, %hi(D_800658A0)
/* 8F4D07C 8007AB4C 21082200 */  addu       $at, $at, $v0
/* 8F4D080 8007AB50 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 8F4D084 8007AB54 3800C624 */  addiu      $a2, $a2, 0x38
/* 8F4D088 8007AB58 1800A0AF */  sw         $zero, 0x18($sp)
/* 8F4D08C 8007AB5C 40100300 */  sll        $v0, $v1, 1
/* 8F4D090 8007AB60 21104300 */  addu       $v0, $v0, $v1
/* 8F4D094 8007AB64 80100200 */  sll        $v0, $v0, 2
/* 8F4D098 8007AB68 21104300 */  addu       $v0, $v0, $v1
/* 8F4D09C 8007AB6C 43110200 */  sra        $v0, $v0, 5
/* 8F4D0A0 8007AB70 653C010C */  jal        func_8004F194
/* 8F4D0A4 8007AB74 1400A2AF */   sw        $v0, 0x14($sp)
/* 8F4D0A8 8007AB78 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 8F4D0AC 8007AB7C 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 8F4D0B0 8007AB80 00000000 */  nop
/* 8F4D0B4 8007AB84 48005290 */  lbu        $s2, 0x48($v0)
/* 8F4D0B8 8007AB88 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4D0BC 8007AB8C 480040A0 */  sb         $zero, 0x48($v0)
/* 8F4D0C0 8007AB90 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 8F4D0C4 8007AB94 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 8F4D0C8 8007AB98 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8F4D0CC 8007AB9C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8F4D0D0 8007ABA0 EDED000C */  jal        func_8003B7B4
/* 8F4D0D4 8007ABA4 48008424 */   addiu     $a0, $a0, 0x48
/* 8F4D0D8 8007ABA8 0780103C */  lui        $s0, %hi(D_8006D088)
/* 8F4D0DC 8007ABAC 88D01026 */  addiu      $s0, $s0, %lo(D_8006D088)
/* 8F4D0E0 8007ABB0 21200002 */  addu       $a0, $s0, $zero
/* 8F4D0E4 8007ABB4 1000A527 */  addiu      $a1, $sp, 0x10
/* 8F4D0E8 8007ABB8 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 8F4D0EC 8007ABBC 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 8F4D0F0 8007ABC0 FF002632 */  andi       $a2, $s1, 0xFF
/* 8F4D0F4 8007ABC4 8DED000C */  jal        func_8003B634
/* 8F4D0F8 8007ABC8 480052A0 */   sb        $s2, 0x48($v0)
/* 8F4D0FC 8007ABCC D3ED000C */  jal        func_8003B74C
/* 8F4D100 8007ABD0 21200002 */   addu      $a0, $s0, $zero
.Llevel_46_8007ABD4:
/* 8F4D104 8007ABD4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 8F4D108 8007ABD8 2800B28F */  lw         $s2, 0x28($sp)
/* 8F4D10C 8007ABDC 2400B18F */  lw         $s1, 0x24($sp)
/* 8F4D110 8007ABE0 2000B08F */  lw         $s0, 0x20($sp)
/* 8F4D114 8007ABE4 3000BD27 */  addiu      $sp, $sp, 0x30
/* 8F4D118 8007ABE8 0800E003 */  jr         $ra
/* 8F4D11C 8007ABEC 00000000 */   nop
.size MobyUpdate_991_level_46, . - MobyUpdate_991_level_46
