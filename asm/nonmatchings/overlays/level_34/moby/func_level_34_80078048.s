.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_482_level_34
/* 74D3D78 80078048 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 74D3D7C 8007804C 1000B0AF */  sw         $s0, 0x10($sp)
/* 74D3D80 80078050 21808000 */  addu       $s0, $a0, $zero
/* 74D3D84 80078054 1800BFAF */  sw         $ra, 0x18($sp)
/* 74D3D88 80078058 1400B1AF */  sw         $s1, 0x14($sp)
/* 74D3D8C 8007805C 0000118E */  lw         $s1, 0x0($s0)
/* 74D3D90 80078060 04000524 */  addiu      $a1, $zero, 0x4
/* 74D3D94 80078064 69D6000C */  jal        func_800359A4
/* 74D3D98 80078068 21202002 */   addu      $a0, $s1, $zero
/* 74D3D9C 8007806C 03004010 */  beqz       $v0, .Llevel_34_8007807C
/* 74D3DA0 80078070 00000000 */   nop
/* 74D3DA4 80078074 C656010C */  jal        func_80055B18
/* 74D3DA8 80078078 21200002 */   addu      $a0, $s0, $zero
.Llevel_34_8007807C:
/* 74D3DAC 8007807C 0000228E */  lw         $v0, 0x0($s1)
/* 74D3DB0 80078080 00000000 */  nop
/* 74D3DB4 80078084 C0100200 */  sll        $v0, $v0, 3
/* 74D3DB8 80078088 540002A2 */  sb         $v0, 0x54($s0)
/* 74D3DBC 8007808C 0000228E */  lw         $v0, 0x0($s1)
/* 74D3DC0 80078090 00000000 */  nop
/* 74D3DC4 80078094 80100200 */  sll        $v0, $v0, 2
/* 74D3DC8 80078098 550002A2 */  sb         $v0, 0x55($s0)
/* 74D3DCC 8007809C 0780043C */  lui        $a0, %hi(D_8006C648)
/* 74D3DD0 800780A0 48C6848C */  lw         $a0, %lo(D_8006C648)($a0)
/* 74D3DD4 800780A4 4F000292 */  lbu        $v0, 0x4F($s0)
/* 74D3DD8 800780A8 40180400 */  sll        $v1, $a0, 1
/* 74D3DDC 800780AC 21186400 */  addu       $v1, $v1, $a0
/* 74D3DE0 800780B0 23104300 */  subu       $v0, $v0, $v1
/* 74D3DE4 800780B4 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 74D3DE8 800780B8 FF004230 */  andi       $v0, $v0, 0xFF
/* 74D3DEC 800780BC 8000422C */  sltiu      $v0, $v0, 0x80
/* 74D3DF0 800780C0 02004014 */  bnez       $v0, .Llevel_34_800780CC
/* 74D3DF4 800780C4 00000000 */   nop
/* 74D3DF8 800780C8 4F0000A2 */  sb         $zero, 0x4F($s0)
.Llevel_34_800780CC:
/* 74D3DFC 800780CC 4F000292 */  lbu        $v0, 0x4F($s0)
/* 74D3E00 800780D0 00000000 */  nop
/* 74D3E04 800780D4 0E00422C */  sltiu      $v0, $v0, 0xE
/* 74D3E08 800780D8 02004010 */  beqz       $v0, .Llevel_34_800780E4
/* 74D3E0C 800780DC 0E000224 */   addiu     $v0, $zero, 0xE
/* 74D3E10 800780E0 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_34_800780E4:
/* 74D3E14 800780E4 1800BF8F */  lw         $ra, 0x18($sp)
/* 74D3E18 800780E8 1400B18F */  lw         $s1, 0x14($sp)
/* 74D3E1C 800780EC 1000B08F */  lw         $s0, 0x10($sp)
/* 74D3E20 800780F0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 74D3E24 800780F4 0800E003 */  jr         $ra
/* 74D3E28 800780F8 00000000 */   nop
.size MobyUpdate_482_level_34, . - MobyUpdate_482_level_34
