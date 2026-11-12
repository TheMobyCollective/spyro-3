.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_703_level_25
/* 6013E34 8007D904 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6013E38 8007D908 1000BFAF */  sw         $ra, 0x10($sp)
/* 6013E3C 8007D90C 0000858C */  lw         $a1, 0x0($a0)
/* 6013E40 8007D910 00000000 */  nop
/* 6013E44 8007D914 0000A28C */  lw         $v0, 0x0($a1)
/* 6013E48 8007D918 00000000 */  nop
/* 6013E4C 8007D91C 38004010 */  beqz       $v0, .Llevel_25_8007DA00
/* 6013E50 8007D920 02000224 */   addiu     $v0, $zero, 0x2
/* 6013E54 8007D924 0780033C */  lui        $v1, %hi(D_8006FA3C)
/* 6013E58 8007D928 3CFA638C */  lw         $v1, %lo(D_8006FA3C)($v1)
/* 6013E5C 8007D92C 00000000 */  nop
/* 6013E60 8007D930 38006214 */  bne        $v1, $v0, .Llevel_25_8007DA14
/* 6013E64 8007D934 00000000 */   nop
/* 6013E68 8007D938 0400A38C */  lw         $v1, 0x4($a1)
/* 6013E6C 8007D93C 00000000 */  nop
/* 6013E70 8007D940 36006004 */  bltz       $v1, .Llevel_25_8007DA1C
/* 6013E74 8007D944 00000000 */   nop
/* 6013E78 8007D948 0800A58C */  lw         $a1, 0x8($a1)
/* 6013E7C 8007D94C 00000000 */  nop
/* 6013E80 8007D950 3200A018 */  blez       $a1, .Llevel_25_8007DA1C
/* 6013E84 8007D954 00000000 */   nop
/* 6013E88 8007D958 0780023C */  lui        $v0, %hi(D_8006FA80)
/* 6013E8C 8007D95C 80FA428C */  lw         $v0, %lo(D_8006FA80)($v0)
/* 6013E90 8007D960 00000000 */  nop
/* 6013E94 8007D964 23304300 */  subu       $a2, $v0, $v1
/* 6013E98 8007D968 48008390 */  lbu        $v1, 0x48($a0)
/* 6013E9C 8007D96C 01000224 */  addiu      $v0, $zero, 0x1
/* 6013EA0 8007D970 0D006214 */  bne        $v1, $v0, .Llevel_25_8007D9A8
/* 6013EA4 8007D974 00000000 */   nop
/* 6013EA8 8007D978 0200C104 */  bgez       $a2, .Llevel_25_8007D984
/* 6013EAC 8007D97C 2110C000 */   addu      $v0, $a2, $zero
/* 6013EB0 8007D980 23100200 */  negu       $v0, $v0
.Llevel_25_8007D984:
/* 6013EB4 8007D984 2A104500 */  slt        $v0, $v0, $a1
/* 6013EB8 8007D988 24004010 */  beqz       $v0, .Llevel_25_8007DA1C
/* 6013EBC 8007D98C 01000324 */   addiu     $v1, $zero, 0x1
/* 6013EC0 8007D990 3F000224 */  addiu      $v0, $zero, 0x3F
/* 6013EC4 8007D994 410083A0 */  sb         $v1, 0x41($a0)
/* 6013EC8 8007D998 4C0082A0 */  sb         $v0, 0x4C($a0)
/* 6013ECC 8007D99C 4D0083A0 */  sb         $v1, 0x4D($a0)
/* 6013ED0 8007D9A0 87F60108 */  j          .Llevel_25_8007DA1C
/* 6013ED4 8007D9A4 480080A0 */   sb        $zero, 0x48($a0)
.Llevel_25_8007D9A8:
/* 6013ED8 8007D9A8 0200C104 */  bgez       $a2, .Llevel_25_8007D9B4
/* 6013EDC 8007D9AC 2110C000 */   addu      $v0, $a2, $zero
/* 6013EE0 8007D9B0 23100200 */  negu       $v0, $v0
.Llevel_25_8007D9B4:
/* 6013EE4 8007D9B4 2A10A200 */  slt        $v0, $a1, $v0
/* 6013EE8 8007D9B8 06004010 */  beqz       $v0, .Llevel_25_8007D9D4
/* 6013EEC 8007D9BC 01000224 */   addiu     $v0, $zero, 0x1
/* 6013EF0 8007D9C0 410080A0 */  sb         $zero, 0x41($a0)
/* 6013EF4 8007D9C4 4C0080A0 */  sb         $zero, 0x4C($a0)
/* 6013EF8 8007D9C8 4D0080A0 */  sb         $zero, 0x4D($a0)
/* 6013EFC 8007D9CC 87F60108 */  j          .Llevel_25_8007DA1C
/* 6013F00 8007D9D0 480082A0 */   sb        $v0, 0x48($a0)
.Llevel_25_8007D9D4:
/* 6013F04 8007D9D4 0780023C */  lui        $v0, %hi(D_8006C644)
/* 6013F08 8007D9D8 44C6428C */  lw         $v0, %lo(D_8006C644)($v0)
/* 6013F0C 8007D9DC 00000000 */  nop
/* 6013F10 8007D9E0 3F004230 */  andi       $v0, $v0, 0x3F
/* 6013F14 8007D9E4 19004228 */  slti       $v0, $v0, 0x19
/* 6013F18 8007D9E8 02004014 */  bnez       $v0, .Llevel_25_8007D9F4
/* 6013F1C 8007D9EC 80600224 */   addiu     $v0, $zero, 0x6080
/* 6013F20 8007D9F0 FFC00234 */  ori        $v0, $zero, 0xC0FF
.Llevel_25_8007D9F4:
/* 6013F24 8007D9F4 540082AC */  sw         $v0, 0x54($a0)
/* 6013F28 8007D9F8 87F60108 */  j          .Llevel_25_8007DA1C
/* 6013F2C 8007D9FC 570080A0 */   sb        $zero, 0x57($a0)
.Llevel_25_8007DA00:
/* 6013F30 8007DA00 0780033C */  lui        $v1, %hi(D_8006FA3C)
/* 6013F34 8007DA04 3CFA638C */  lw         $v1, %lo(D_8006FA3C)($v1)
/* 6013F38 8007DA08 00000000 */  nop
/* 6013F3C 8007DA0C 03006214 */  bne        $v1, $v0, .Llevel_25_8007DA1C
/* 6013F40 8007DA10 00000000 */   nop
.Llevel_25_8007DA14:
/* 6013F44 8007DA14 C656010C */  jal        func_80055B18
/* 6013F48 8007DA18 00000000 */   nop
.Llevel_25_8007DA1C:
/* 6013F4C 8007DA1C 1000BF8F */  lw         $ra, 0x10($sp)
/* 6013F50 8007DA20 1800BD27 */  addiu      $sp, $sp, 0x18
/* 6013F54 8007DA24 0800E003 */  jr         $ra
/* 6013F58 8007DA28 00000000 */   nop
.size MobyUpdate_703_level_25, . - MobyUpdate_703_level_25
