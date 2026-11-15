.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_37
/* 7AA2894 80076B64 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7AA2898 80076B68 1000B0AF */  sw         $s0, 0x10($sp)
/* 7AA289C 80076B6C 21808000 */  addu       $s0, $a0, $zero
/* 7AA28A0 80076B70 1800BFAF */  sw         $ra, 0x18($sp)
/* 7AA28A4 80076B74 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AA28A8 80076B78 0000118E */  lw         $s1, 0x0($s0)
/* 7AA28AC 80076B7C 04000524 */  addiu      $a1, $zero, 0x4
/* 7AA28B0 80076B80 69D6000C */  jal        func_800359A4
/* 7AA28B4 80076B84 21202002 */   addu      $a0, $s1, $zero
/* 7AA28B8 80076B88 03004010 */  beqz       $v0, .Llevel_37_80076B98
/* 7AA28BC 80076B8C 00000000 */   nop
/* 7AA28C0 80076B90 C656010C */  jal        func_80055B18
/* 7AA28C4 80076B94 21200002 */   addu      $a0, $s0, $zero
.Llevel_37_80076B98:
/* 7AA28C8 80076B98 0000228E */  lw         $v0, 0x0($s1)
/* 7AA28CC 80076B9C 00000000 */  nop
/* 7AA28D0 80076BA0 C0100200 */  sll        $v0, $v0, 3
/* 7AA28D4 80076BA4 540002A2 */  sb         $v0, 0x54($s0)
/* 7AA28D8 80076BA8 0000228E */  lw         $v0, 0x0($s1)
/* 7AA28DC 80076BAC 00000000 */  nop
/* 7AA28E0 80076BB0 80100200 */  sll        $v0, $v0, 2
/* 7AA28E4 80076BB4 550002A2 */  sb         $v0, 0x55($s0)
/* 7AA28E8 80076BB8 0780043C */  lui        $a0, %hi(D_8006C648)
/* 7AA28EC 80076BBC 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 7AA28F0 80076BC0 4F000292 */  lbu        $v0, 0x4F($s0)
/* 7AA28F4 80076BC4 40180400 */  sll        $v1, $a0, 1
/* 7AA28F8 80076BC8 21186400 */  addu       $v1, $v1, $a0
/* 7AA28FC 80076BCC 23104300 */  subu       $v0, $v0, $v1
/* 7AA2900 80076BD0 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 7AA2904 80076BD4 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA2908 80076BD8 8000422C */  sltiu      $v0, $v0, 0x80
/* 7AA290C 80076BDC 02004014 */  bnez       $v0, .Llevel_37_80076BE8
/* 7AA2910 80076BE0 00000000 */   nop
/* 7AA2914 80076BE4 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_37_80076BE8:
/* 7AA2918 80076BE8 4F000292 */  lbu        $v0, 0x4F($s0)
/* 7AA291C 80076BEC 00000000 */  nop
/* 7AA2920 80076BF0 0E00422C */  sltiu      $v0, $v0, 0xE
/* 7AA2924 80076BF4 02004010 */  beqz       $v0, .Llevel_37_80076C00
/* 7AA2928 80076BF8 0E000224 */   addiu     $v0, $zero, 0xE
/* 7AA292C 80076BFC 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_37_80076C00:
/* 7AA2930 80076C00 1800BF8F */  lw         $ra, 0x18($sp)
/* 7AA2934 80076C04 1400B18F */  lw         $s1, 0x14($sp)
/* 7AA2938 80076C08 1000B08F */  lw         $s0, 0x10($sp)
/* 7AA293C 80076C0C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7AA2940 80076C10 0800E003 */  jr         $ra
/* 7AA2944 80076C14 00000000 */   nop
.size MobyUpdate_482_level_37, . - MobyUpdate_482_level_37
