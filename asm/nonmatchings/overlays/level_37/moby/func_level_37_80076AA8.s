.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_541_level_37
/* 7AA27D8 80076AA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7AA27DC 80076AAC 1000B0AF */  sw         $s0, 0x10($sp)
/* 7AA27E0 80076AB0 21808000 */  addu       $s0, $a0, $zero
/* 7AA27E4 80076AB4 1800BFAF */  sw         $ra, 0x18($sp)
/* 7AA27E8 80076AB8 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AA27EC 80076ABC 0000118E */  lw         $s1, 0x0($s0)
/* 7AA27F0 80076AC0 04000524 */  addiu      $a1, $zero, 0x4
/* 7AA27F4 80076AC4 69D6000C */  jal        func_800359A4
/* 7AA27F8 80076AC8 21202002 */   addu      $a0, $s1, $zero
/* 7AA27FC 80076ACC 03004010 */  beqz       $v0, .Llevel_37_80076ADC
/* 7AA2800 80076AD0 00000000 */   nop
/* 7AA2804 80076AD4 C656010C */  jal        func_80055B18
/* 7AA2808 80076AD8 21200002 */   addu      $a0, $s0, $zero
.Llevel_37_80076ADC:
/* 7AA280C 80076ADC 0000238E */  lw         $v1, 0x0($s1)
/* 7AA2810 80076AE0 10000224 */  addiu      $v0, $zero, 0x10
/* 7AA2814 80076AE4 23104300 */  subu       $v0, $v0, $v1
/* 7AA2818 80076AE8 03004104 */  bgez       $v0, .Llevel_37_80076AF8
/* 7AA281C 80076AEC 30004224 */   addiu     $v0, $v0, 0x30
/* 7AA2820 80076AF0 21100000 */  addu       $v0, $zero, $zero
/* 7AA2824 80076AF4 30004224 */  addiu      $v0, $v0, 0x30
.Llevel_37_80076AF8:
/* 7AA2828 80076AF8 570002A2 */  sb         $v0, 0x57($s0)
/* 7AA282C 80076AFC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 7AA2830 80076B00 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 7AA2834 80076B04 00000000 */  nop
/* 7AA2838 80076B08 40180200 */  sll        $v1, $v0, 1
/* 7AA283C 80076B0C 21186200 */  addu       $v1, $v1, $v0
/* 7AA2840 80076B10 4F000292 */  lbu        $v0, 0x4F($s0)
/* 7AA2844 80076B14 40180300 */  sll        $v1, $v1, 1
/* 7AA2848 80076B18 23104300 */  subu       $v0, $v0, $v1
/* 7AA284C 80076B1C 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 7AA2850 80076B20 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA2854 80076B24 8000422C */  sltiu      $v0, $v0, 0x80
/* 7AA2858 80076B28 02004014 */  bnez       $v0, .Llevel_37_80076B34
/* 7AA285C 80076B2C 00000000 */   nop
/* 7AA2860 80076B30 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_37_80076B34:
/* 7AA2864 80076B34 4F000292 */  lbu        $v0, 0x4F($s0)
/* 7AA2868 80076B38 00000000 */  nop
/* 7AA286C 80076B3C 1800422C */  sltiu      $v0, $v0, 0x18
/* 7AA2870 80076B40 02004010 */  beqz       $v0, .Llevel_37_80076B4C
/* 7AA2874 80076B44 18000224 */   addiu     $v0, $zero, 0x18
/* 7AA2878 80076B48 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_37_80076B4C:
/* 7AA287C 80076B4C 1800BF8F */  lw         $ra, 0x18($sp)
/* 7AA2880 80076B50 1400B18F */  lw         $s1, 0x14($sp)
/* 7AA2884 80076B54 1000B08F */  lw         $s0, 0x10($sp)
/* 7AA2888 80076B58 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7AA288C 80076B5C 0800E003 */  jr         $ra
/* 7AA2890 80076B60 00000000 */   nop
.size MobyUpdate_541_level_37, . - MobyUpdate_541_level_37
