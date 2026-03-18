.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007D748
/* 3E21C78 8007D748 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3E21C7C 8007D74C 3000B0AF */  sw         $s0, 0x30($sp)
/* 3E21C80 8007D750 21808000 */  addu       $s0, $a0, $zero
/* 3E21C84 8007D754 3800BFAF */  sw         $ra, 0x38($sp)
/* 3E21C88 8007D758 3400B1AF */  sw         $s1, 0x34($sp)
/* 3E21C8C 8007D75C 3C000292 */  lbu        $v0, 0x3C($s0)
/* 3E21C90 8007D760 01000824 */  addiu      $t0, $zero, 0x1
/* 3E21C94 8007D764 05004814 */  bne        $v0, $t0, .Llevel_11_8007D77C
/* 3E21C98 8007D768 0100023C */   lui       $v0, (0x10000 >> 16)
/* 3E21C9C 8007D76C C5E5000C */  jal        func_80039714
/* 3E21CA0 8007D770 00000000 */   nop
/* 3E21CA4 8007D774 28F60108 */  j          .Llevel_11_8007D8A0
/* 3E21CA8 8007D778 00000000 */   nop
.Llevel_11_8007D77C:
/* 3E21CAC 8007D77C 1800038E */  lw         $v1, 0x18($s0)
/* 3E21CB0 8007D780 00000000 */  nop
/* 3E21CB4 8007D784 24106200 */  and        $v0, $v1, $v0
/* 3E21CB8 8007D788 36004010 */  beqz       $v0, .Llevel_11_8007D864
/* 3E21CBC 8007D78C 21880000 */   addu      $s1, $zero, $zero
/* 3E21CC0 8007D790 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_11_8007D794:
/* 3E21CC4 8007D794 21300002 */  addu       $a2, $s0, $zero
/* 3E21CC8 8007D798 01000724 */  addiu      $a3, $zero, 0x1
/* 3E21CCC 8007D79C 36000586 */  lh         $a1, 0x36($s0)
/* 3E21CD0 8007D7A0 01000224 */  addiu      $v0, $zero, 0x1
/* 3E21CD4 8007D7A4 1000A2AF */  sw         $v0, 0x10($sp)
/* 3E21CD8 8007D7A8 20000224 */  addiu      $v0, $zero, 0x20
/* 3E21CDC 8007D7AC 1400A2AF */  sw         $v0, 0x14($sp)
/* 3E21CE0 8007D7B0 00010224 */  addiu      $v0, $zero, 0x100
/* 3E21CE4 8007D7B4 7AE4000C */  jal        func_800391E8
/* 3E21CE8 8007D7B8 1800A2AF */   sw        $v0, 0x18($sp)
/* 3E21CEC 8007D7BC 21284000 */  addu       $a1, $v0, $zero
/* 3E21CF0 8007D7C0 0F00A010 */  beqz       $a1, .Llevel_11_8007D800
/* 3E21CF4 8007D7C4 00000000 */   nop
/* 3E21CF8 8007D7C8 0000A48C */  lw         $a0, 0x0($a1)
/* 3E21CFC 8007D7CC 00000000 */  nop
/* 3E21D00 8007D7D0 04008294 */  lhu        $v0, 0x4($a0)
/* 3E21D04 8007D7D4 0C008394 */  lhu        $v1, 0xC($a0)
/* 3E21D08 8007D7D8 32004224 */  addiu      $v0, $v0, 0x32
/* 3E21D0C 8007D7DC 001C0300 */  sll        $v1, $v1, 16
/* 3E21D10 8007D7E0 431C0300 */  sra        $v1, $v1, 17
/* 3E21D14 8007D7E4 040082A4 */  sh         $v0, 0x4($a0)
/* 3E21D18 8007D7E8 3F000224 */  addiu      $v0, $zero, 0x3F
/* 3E21D1C 8007D7EC 0C0083A4 */  sh         $v1, 0xC($a0)
/* 3E21D20 8007D7F0 5400A0A0 */  sb         $zero, 0x54($a1)
/* 3E21D24 8007D7F4 5500A0A0 */  sb         $zero, 0x55($a1)
/* 3E21D28 8007D7F8 5600A0A0 */  sb         $zero, 0x56($a1)
/* 3E21D2C 8007D7FC 5700A2A0 */  sb         $v0, 0x57($a1)
.Llevel_11_8007D800:
/* 3E21D30 8007D800 9171010C */  jal        rand
/* 3E21D34 8007D804 01003126 */   addiu     $s1, $s1, 0x1
/* 3E21D38 8007D808 0F004230 */  andi       $v0, $v0, 0xF
/* 3E21D3C 8007D80C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E21D40 8007D810 9171010C */  jal        rand
/* 3E21D44 8007D814 2000A2AF */   sw        $v0, 0x20($sp)
/* 3E21D48 8007D818 0F004230 */  andi       $v0, $v0, 0xF
/* 3E21D4C 8007D81C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E21D50 8007D820 9171010C */  jal        rand
/* 3E21D54 8007D824 2400A2AF */   sw        $v0, 0x24($sp)
/* 3E21D58 8007D828 01000424 */  addiu      $a0, $zero, 0x1
/* 3E21D5C 8007D82C 37000524 */  addiu      $a1, $zero, 0x37
/* 3E21D60 8007D830 0C000626 */  addiu      $a2, $s0, 0xC
/* 3E21D64 8007D834 2000A727 */  addiu      $a3, $sp, 0x20
/* 3E21D68 8007D838 0F004230 */  andi       $v0, $v0, 0xF
/* 3E21D6C 8007D83C 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 3E21D70 8007D840 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 3E21D74 8007D844 08004224 */  addiu      $v0, $v0, 0x8
/* 3E21D78 8007D848 09F86000 */  jalr       $v1
/* 3E21D7C 8007D84C 2800A2AF */   sw        $v0, 0x28($sp)
/* 3E21D80 8007D850 0700222A */  slti       $v0, $s1, 0x7
/* 3E21D84 8007D854 CFFF4014 */  bnez       $v0, .Llevel_11_8007D794
/* 3E21D88 8007D858 01000424 */   addiu     $a0, $zero, 0x1
/* 3E21D8C 8007D85C 26F60108 */  j          .Llevel_11_8007D898
/* 3E21D90 8007D860 00000000 */   nop
.Llevel_11_8007D864:
/* 3E21D94 8007D864 0200023C */  lui        $v0, (0x20000 >> 16)
/* 3E21D98 8007D868 24106200 */  and        $v0, $v1, $v0
/* 3E21D9C 8007D86C 0C004010 */  beqz       $v0, .Llevel_11_8007D8A0
/* 3E21DA0 8007D870 07000424 */   addiu     $a0, $zero, 0x7
/* 3E21DA4 8007D874 21300002 */  addu       $a2, $s0, $zero
/* 3E21DA8 8007D878 01000724 */  addiu      $a3, $zero, 0x1
/* 3E21DAC 8007D87C 36000586 */  lh         $a1, 0x36($s0)
/* 3E21DB0 8007D880 40000224 */  addiu      $v0, $zero, 0x40
/* 3E21DB4 8007D884 1400A2AF */  sw         $v0, 0x14($sp)
/* 3E21DB8 8007D888 00010224 */  addiu      $v0, $zero, 0x100
/* 3E21DBC 8007D88C 1000A8AF */  sw         $t0, 0x10($sp)
/* 3E21DC0 8007D890 7AE4000C */  jal        func_800391E8
/* 3E21DC4 8007D894 1800A2AF */   sw        $v0, 0x18($sp)
.Llevel_11_8007D898:
/* 3E21DC8 8007D898 C656010C */  jal        func_80055B18
/* 3E21DCC 8007D89C 21200002 */   addu      $a0, $s0, $zero
.Llevel_11_8007D8A0:
/* 3E21DD0 8007D8A0 3800BF8F */  lw         $ra, 0x38($sp)
/* 3E21DD4 8007D8A4 3400B18F */  lw         $s1, 0x34($sp)
/* 3E21DD8 8007D8A8 3000B08F */  lw         $s0, 0x30($sp)
/* 3E21DDC 8007D8AC 4000BD27 */  addiu      $sp, $sp, 0x40
/* 3E21DE0 8007D8B0 0800E003 */  jr         $ra
/* 3E21DE4 8007D8B4 00000000 */   nop
.size func_level_11_8007D748, . - func_level_11_8007D748
