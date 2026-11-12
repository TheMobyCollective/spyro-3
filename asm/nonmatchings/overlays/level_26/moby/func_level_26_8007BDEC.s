.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_991_level_26
/* 622BB1C 8007BDEC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 622BB20 8007BDF0 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 622BB24 8007BDF4 2800B2AF */  sw         $s2, 0x28($sp)
/* 622BB28 8007BDF8 2400B1AF */  sw         $s1, 0x24($sp)
/* 622BB2C 8007BDFC 2000B0AF */  sw         $s0, 0x20($sp)
/* 622BB30 8007BE00 0000858C */  lw         $a1, 0x0($a0)
/* 622BB34 8007BE04 0780043C */  lui        $a0, %hi(D_80070328)
/* 622BB38 8007BE08 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 622BB3C 8007BE0C 21300000 */  addu       $a2, $zero, $zero
/* 622BB40 8007BE10 88D8000C */  jal        func_80036220
/* 622BB44 8007BE14 00040724 */   addiu     $a3, $zero, 0x400
/* 622BB48 8007BE18 39004010 */  beqz       $v0, .Llevel_26_8007BF00
/* 622BB4C 8007BE1C 1000A427 */   addiu     $a0, $sp, 0x10
/* 622BB50 8007BE20 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 622BB54 8007BE24 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 622BB58 8007BE28 00000000 */  nop
/* 622BB5C 8007BE2C 0000468C */  lw         $a2, 0x0($v0)
/* 622BB60 8007BE30 00000000 */  nop
/* 622BB64 8007BE34 4800D18C */  lw         $s1, 0x48($a2)
/* 622BB68 8007BE38 00000000 */  nop
/* 622BB6C 8007BE3C 40101100 */  sll        $v0, $s1, 1
/* 622BB70 8007BE40 0680013C */  lui        $at, %hi(D_80065920)
/* 622BB74 8007BE44 21082200 */  addu       $at, $at, $v0
/* 622BB78 8007BE48 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 622BB7C 8007BE4C 21288000 */  addu       $a1, $a0, $zero
/* 622BB80 8007BE50 40100300 */  sll        $v0, $v1, 1
/* 622BB84 8007BE54 21104300 */  addu       $v0, $v0, $v1
/* 622BB88 8007BE58 80100200 */  sll        $v0, $v0, 2
/* 622BB8C 8007BE5C 21104300 */  addu       $v0, $v0, $v1
/* 622BB90 8007BE60 43110200 */  sra        $v0, $v0, 5
/* 622BB94 8007BE64 1000A2AF */  sw         $v0, 0x10($sp)
/* 622BB98 8007BE68 4800C28C */  lw         $v0, 0x48($a2)
/* 622BB9C 8007BE6C 80FF3126 */  addiu      $s1, $s1, -0x80
/* 622BBA0 8007BE70 40100200 */  sll        $v0, $v0, 1
/* 622BBA4 8007BE74 0680013C */  lui        $at, %hi(D_800658A0)
/* 622BBA8 8007BE78 21082200 */  addu       $at, $at, $v0
/* 622BBAC 8007BE7C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 622BBB0 8007BE80 4C00C624 */  addiu      $a2, $a2, 0x4C
/* 622BBB4 8007BE84 1800A0AF */  sw         $zero, 0x18($sp)
/* 622BBB8 8007BE88 40100300 */  sll        $v0, $v1, 1
/* 622BBBC 8007BE8C 21104300 */  addu       $v0, $v0, $v1
/* 622BBC0 8007BE90 80100200 */  sll        $v0, $v0, 2
/* 622BBC4 8007BE94 21104300 */  addu       $v0, $v0, $v1
/* 622BBC8 8007BE98 43110200 */  sra        $v0, $v0, 5
/* 622BBCC 8007BE9C 653C010C */  jal        func_8004F194
/* 622BBD0 8007BEA0 1400A2AF */   sw        $v0, 0x14($sp)
/* 622BBD4 8007BEA4 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 622BBD8 8007BEA8 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 622BBDC 8007BEAC 00000000 */  nop
/* 622BBE0 8007BEB0 48005290 */  lbu        $s2, 0x48($v0)
/* 622BBE4 8007BEB4 01000524 */  addiu      $a1, $zero, 0x1
/* 622BBE8 8007BEB8 480040A0 */  sb         $zero, 0x48($v0)
/* 622BBEC 8007BEBC 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 622BBF0 8007BEC0 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 622BBF4 8007BEC4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 622BBF8 8007BEC8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 622BBFC 8007BECC EDED000C */  jal        func_8003B7B4
/* 622BC00 8007BED0 48008424 */   addiu     $a0, $a0, 0x48
/* 622BC04 8007BED4 0780103C */  lui        $s0, %hi(D_8006D088)
/* 622BC08 8007BED8 88D01026 */  addiu      $s0, $s0, %lo(D_8006D088)
/* 622BC0C 8007BEDC 21200002 */  addu       $a0, $s0, $zero
/* 622BC10 8007BEE0 1000A527 */  addiu      $a1, $sp, 0x10
/* 622BC14 8007BEE4 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 622BC18 8007BEE8 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 622BC1C 8007BEEC FF002632 */  andi       $a2, $s1, 0xFF
/* 622BC20 8007BEF0 8DED000C */  jal        func_8003B634
/* 622BC24 8007BEF4 480052A0 */   sb        $s2, 0x48($v0)
/* 622BC28 8007BEF8 D3ED000C */  jal        func_8003B74C
/* 622BC2C 8007BEFC 21200002 */   addu      $a0, $s0, $zero
.Llevel_26_8007BF00:
/* 622BC30 8007BF00 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 622BC34 8007BF04 2800B28F */  lw         $s2, 0x28($sp)
/* 622BC38 8007BF08 2400B18F */  lw         $s1, 0x24($sp)
/* 622BC3C 8007BF0C 2000B08F */  lw         $s0, 0x20($sp)
/* 622BC40 8007BF10 3000BD27 */  addiu      $sp, $sp, 0x30
/* 622BC44 8007BF14 0800E003 */  jr         $ra
/* 622BC48 8007BF18 00000000 */   nop
.size MobyUpdate_991_level_26, . - MobyUpdate_991_level_26
