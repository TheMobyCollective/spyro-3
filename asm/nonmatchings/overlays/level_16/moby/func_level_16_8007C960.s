.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_991_level_16
/* 4B9DE90 8007C960 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4B9DE94 8007C964 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 4B9DE98 8007C968 2800B2AF */  sw         $s2, 0x28($sp)
/* 4B9DE9C 8007C96C 2400B1AF */  sw         $s1, 0x24($sp)
/* 4B9DEA0 8007C970 2000B0AF */  sw         $s0, 0x20($sp)
/* 4B9DEA4 8007C974 0000858C */  lw         $a1, 0x0($a0)
/* 4B9DEA8 8007C978 0780043C */  lui        $a0, %hi(D_80070328)
/* 4B9DEAC 8007C97C 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 4B9DEB0 8007C980 21300000 */  addu       $a2, $zero, $zero
/* 4B9DEB4 8007C984 88D8000C */  jal        func_80036220
/* 4B9DEB8 8007C988 00040724 */   addiu     $a3, $zero, 0x400
/* 4B9DEBC 8007C98C 39004010 */  beqz       $v0, .Llevel_16_8007CA74
/* 4B9DEC0 8007C990 1000A427 */   addiu     $a0, $sp, 0x10
/* 4B9DEC4 8007C994 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4B9DEC8 8007C998 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4B9DECC 8007C99C 00000000 */  nop
/* 4B9DED0 8007C9A0 0000468C */  lw         $a2, 0x0($v0)
/* 4B9DED4 8007C9A4 00000000 */  nop
/* 4B9DED8 8007C9A8 3400D18C */  lw         $s1, 0x34($a2)
/* 4B9DEDC 8007C9AC 00000000 */  nop
/* 4B9DEE0 8007C9B0 40101100 */  sll        $v0, $s1, 1
/* 4B9DEE4 8007C9B4 0680013C */  lui        $at, %hi(D_80065920)
/* 4B9DEE8 8007C9B8 21082200 */  addu       $at, $at, $v0
/* 4B9DEEC 8007C9BC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4B9DEF0 8007C9C0 21288000 */  addu       $a1, $a0, $zero
/* 4B9DEF4 8007C9C4 40100300 */  sll        $v0, $v1, 1
/* 4B9DEF8 8007C9C8 21104300 */  addu       $v0, $v0, $v1
/* 4B9DEFC 8007C9CC 80100200 */  sll        $v0, $v0, 2
/* 4B9DF00 8007C9D0 21104300 */  addu       $v0, $v0, $v1
/* 4B9DF04 8007C9D4 43110200 */  sra        $v0, $v0, 5
/* 4B9DF08 8007C9D8 1000A2AF */  sw         $v0, 0x10($sp)
/* 4B9DF0C 8007C9DC 3400C28C */  lw         $v0, 0x34($a2)
/* 4B9DF10 8007C9E0 80FF3126 */  addiu      $s1, $s1, -0x80
/* 4B9DF14 8007C9E4 40100200 */  sll        $v0, $v0, 1
/* 4B9DF18 8007C9E8 0680013C */  lui        $at, %hi(D_800658A0)
/* 4B9DF1C 8007C9EC 21082200 */  addu       $at, $at, $v0
/* 4B9DF20 8007C9F0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4B9DF24 8007C9F4 3800C624 */  addiu      $a2, $a2, 0x38
/* 4B9DF28 8007C9F8 1800A0AF */  sw         $zero, 0x18($sp)
/* 4B9DF2C 8007C9FC 40100300 */  sll        $v0, $v1, 1
/* 4B9DF30 8007CA00 21104300 */  addu       $v0, $v0, $v1
/* 4B9DF34 8007CA04 80100200 */  sll        $v0, $v0, 2
/* 4B9DF38 8007CA08 21104300 */  addu       $v0, $v0, $v1
/* 4B9DF3C 8007CA0C 43110200 */  sra        $v0, $v0, 5
/* 4B9DF40 8007CA10 653C010C */  jal        func_8004F194
/* 4B9DF44 8007CA14 1400A2AF */   sw        $v0, 0x14($sp)
/* 4B9DF48 8007CA18 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4B9DF4C 8007CA1C 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4B9DF50 8007CA20 00000000 */  nop
/* 4B9DF54 8007CA24 48005290 */  lbu        $s2, 0x48($v0)
/* 4B9DF58 8007CA28 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9DF5C 8007CA2C 480040A0 */  sb         $zero, 0x48($v0)
/* 4B9DF60 8007CA30 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 4B9DF64 8007CA34 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 4B9DF68 8007CA38 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 4B9DF6C 8007CA3C F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 4B9DF70 8007CA40 EDED000C */  jal        func_8003B7B4
/* 4B9DF74 8007CA44 48008424 */   addiu     $a0, $a0, 0x48
/* 4B9DF78 8007CA48 0780103C */  lui        $s0, %hi(D_8006D088)
/* 4B9DF7C 8007CA4C 88D01026 */  addiu      $s0, $s0, %lo(D_8006D088)
/* 4B9DF80 8007CA50 21200002 */  addu       $a0, $s0, $zero
/* 4B9DF84 8007CA54 1000A527 */  addiu      $a1, $sp, 0x10
/* 4B9DF88 8007CA58 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4B9DF8C 8007CA5C 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4B9DF90 8007CA60 FF002632 */  andi       $a2, $s1, 0xFF
/* 4B9DF94 8007CA64 8DED000C */  jal        func_8003B634
/* 4B9DF98 8007CA68 480052A0 */   sb        $s2, 0x48($v0)
/* 4B9DF9C 8007CA6C D3ED000C */  jal        func_8003B74C
/* 4B9DFA0 8007CA70 21200002 */   addu      $a0, $s0, $zero
.Llevel_16_8007CA74:
/* 4B9DFA4 8007CA74 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 4B9DFA8 8007CA78 2800B28F */  lw         $s2, 0x28($sp)
/* 4B9DFAC 8007CA7C 2400B18F */  lw         $s1, 0x24($sp)
/* 4B9DFB0 8007CA80 2000B08F */  lw         $s0, 0x20($sp)
/* 4B9DFB4 8007CA84 3000BD27 */  addiu      $sp, $sp, 0x30
/* 4B9DFB8 8007CA88 0800E003 */  jr         $ra
/* 4B9DFBC 8007CA8C 00000000 */   nop
.size MobyUpdate_991_level_16, . - MobyUpdate_991_level_16
