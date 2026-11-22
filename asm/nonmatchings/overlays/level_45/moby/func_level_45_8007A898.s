.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_679_level_45
/* 8D36DC8 8007A898 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8D36DCC 8007A89C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 8D36DD0 8007A8A0 21888000 */  addu       $s1, $a0, $zero
/* 8D36DD4 8007A8A4 2400BFAF */  sw         $ra, 0x24($sp)
/* 8D36DD8 8007A8A8 2000B2AF */  sw         $s2, 0x20($sp)
/* 8D36DDC 8007A8AC 1800B0AF */  sw         $s0, 0x18($sp)
/* 8D36DE0 8007A8B0 1800228E */  lw         $v0, 0x18($s1)
/* 8D36DE4 8007A8B4 0000328E */  lw         $s2, 0x0($s1)
/* 8D36DE8 8007A8B8 26004010 */  beqz       $v0, .Llevel_45_8007A954
/* 8D36DEC 8007A8BC 00000000 */   nop
/* 8D36DF0 8007A8C0 1800458E */  lw         $a1, 0x18($s2)
/* 8D36DF4 8007A8C4 F0EF000C */  jal        func_8003BFC0
/* 8D36DF8 8007A8C8 00000000 */   nop
/* 8D36DFC 8007A8CC 05004010 */  beqz       $v0, .Llevel_45_8007A8E4
/* 8D36E00 8007A8D0 21202002 */   addu      $a0, $s1, $zero
/* 8D36E04 8007A8D4 1800448E */  lw         $a0, 0x18($s2)
/* 8D36E08 8007A8D8 9CEF000C */  jal        func_8003BE70
/* 8D36E0C 8007A8DC 00000000 */   nop
/* 8D36E10 8007A8E0 21202002 */  addu       $a0, $s1, $zero
.Llevel_45_8007A8E4:
/* 8D36E14 8007A8E4 02000524 */  addiu      $a1, $zero, 0x2
/* 8D36E18 8007A8E8 21300000 */  addu       $a2, $zero, $zero
/* 8D36E1C 8007A8EC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8D36E20 8007A8F0 AFEE000C */  jal        func_8003BABC
/* 8D36E24 8007A8F4 180042AE */   sw        $v0, 0x18($s2)
/* 8D36E28 8007A8F8 21202002 */  addu       $a0, $s1, $zero
/* 8D36E2C 8007A8FC 10000524 */  addiu      $a1, $zero, 0x10
/* 8D36E30 8007A900 21300000 */  addu       $a2, $zero, $zero
/* 8D36E34 8007A904 9ADA000C */  jal        func_80036A68
/* 8D36E38 8007A908 21380000 */   addu      $a3, $zero, $zero
/* 8D36E3C 8007A90C 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 8D36E40 8007A910 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 8D36E44 8007A914 00000000 */  nop
/* 8D36E48 8007A918 09F84000 */  jalr       $v0
/* 8D36E4C 8007A91C 21202002 */   addu      $a0, $s1, $zero
/* 8D36E50 8007A920 04000424 */  addiu      $a0, $zero, 0x4
/* 8D36E54 8007A924 16010524 */  addiu      $a1, $zero, 0x116
/* 8D36E58 8007A928 00020224 */  addiu      $v0, $zero, 0x200
/* 8D36E5C 8007A92C 1000A0AF */  sw         $zero, 0x10($sp)
/* 8D36E60 8007A930 1400A2AF */  sw         $v0, 0x14($sp)
/* 8D36E64 8007A934 1400478E */  lw         $a3, 0x14($s2)
/* 8D36E68 8007A938 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 8D36E6C 8007A93C 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 8D36E70 8007A940 00000000 */  nop
/* 8D36E74 8007A944 09F84000 */  jalr       $v0
/* 8D36E78 8007A948 21302002 */   addu      $a2, $s1, $zero
/* 8D36E7C 8007A94C 5CEA0108 */  j          .Llevel_45_8007A970
/* 8D36E80 8007A950 00000000 */   nop
.Llevel_45_8007A954:
/* 8D36E84 8007A954 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 8D36E88 8007A958 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 8D36E8C 8007A95C 00000000 */  nop
/* 8D36E90 8007A960 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 8D36E94 8007A964 0200422C */  sltiu      $v0, $v0, 0x2
/* 8D36E98 8007A968 05004010 */  beqz       $v0, .Llevel_45_8007A980
/* 8D36E9C 8007A96C 00000000 */   nop
.Llevel_45_8007A970:
/* 8D36EA0 8007A970 C656010C */  jal        func_80055B18
/* 8D36EA4 8007A974 21202002 */   addu      $a0, $s1, $zero
/* 8D36EA8 8007A978 8EEA0108 */  j          .Llevel_45_8007AA38
/* 8D36EAC 8007A97C 00000000 */   nop
.Llevel_45_8007A980:
/* 8D36EB0 8007A980 1800458E */  lw         $a1, 0x18($s2)
/* 8D36EB4 8007A984 F0EF000C */  jal        func_8003BFC0
/* 8D36EB8 8007A988 21202002 */   addu      $a0, $s1, $zero
/* 8D36EBC 8007A98C 05004014 */  bnez       $v0, .Llevel_45_8007A9A4
/* 8D36EC0 8007A990 01000524 */   addiu     $a1, $zero, 0x1
/* 8D36EC4 8007A994 21202002 */  addu       $a0, $s1, $zero
/* 8D36EC8 8007A998 AFEE000C */  jal        func_8003BABC
/* 8D36ECC 8007A99C 04000624 */   addiu     $a2, $zero, 0x4
/* 8D36ED0 8007A9A0 180042AE */  sw         $v0, 0x18($s2)
.Llevel_45_8007A9A4:
/* 8D36ED4 8007A9A4 21202002 */  addu       $a0, $s1, $zero
/* 8D36ED8 8007A9A8 04004626 */  addiu      $a2, $s2, 0x4
/* 8D36EDC 8007A9AC 06000224 */  addiu      $v0, $zero, 0x6
/* 8D36EE0 8007A9B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D36EE4 8007A9B4 1400A0AF */  sw         $zero, 0x14($sp)
/* 8D36EE8 8007A9B8 0000458E */  lw         $a1, 0x0($s2)
/* 8D36EEC 8007A9BC 0780023C */  lui        $v0, %hi(unk_ovlheader_800743EC)
/* 8D36EF0 8007A9C0 EC43428C */  lw         $v0, %lo(unk_ovlheader_800743EC)($v0)
/* 8D36EF4 8007A9C4 00000000 */  nop
/* 8D36EF8 8007A9C8 09F84000 */  jalr       $v0
/* 8D36EFC 8007A9CC 10004726 */   addiu     $a3, $s2, 0x10
/* 8D36F00 8007A9D0 4ED7000C */  jal        func_80035D38
/* 8D36F04 8007A9D4 21202002 */   addu      $a0, $s1, $zero
/* 8D36F08 8007A9D8 21202002 */  addu       $a0, $s1, $zero
/* 8D36F0C 8007A9DC A758010C */  jal        func_8005629C
/* 8D36F10 8007A9E0 21804000 */   addu      $s0, $v0, $zero
/* 8D36F14 8007A9E4 1400228E */  lw         $v0, 0x14($s1)
/* 8D36F18 8007A9E8 00000000 */  nop
/* 8D36F1C 8007A9EC 23800202 */  subu       $s0, $s0, $v0
/* 8D36F20 8007A9F0 02000106 */  bgez       $s0, .Llevel_45_8007A9FC
/* 8D36F24 8007A9F4 00000000 */   nop
/* 8D36F28 8007A9F8 23801000 */  negu       $s0, $s0
.Llevel_45_8007A9FC:
/* 8D36F2C 8007A9FC 8000102A */  slti       $s0, $s0, 0x80
/* 8D36F30 8007AA00 0C000012 */  beqz       $s0, .Llevel_45_8007AA34
/* 8D36F34 8007AA04 00000000 */   nop
/* 8D36F38 8007AA08 1C00428E */  lw         $v0, 0x1C($s2)
/* 8D36F3C 8007AA0C 00000000 */  nop
/* 8D36F40 8007AA10 06004014 */  bnez       $v0, .Llevel_45_8007AA2C
/* 8D36F44 8007AA14 01000224 */   addiu     $v0, $zero, 0x1
/* 8D36F48 8007AA18 21202002 */  addu       $a0, $s1, $zero
/* 8D36F4C 8007AA1C 21280000 */  addu       $a1, $zero, $zero
/* 8D36F50 8007AA20 AFEE000C */  jal        func_8003BABC
/* 8D36F54 8007AA24 21300000 */   addu      $a2, $zero, $zero
/* 8D36F58 8007AA28 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_45_8007AA2C:
/* 8D36F5C 8007AA2C 8EEA0108 */  j          .Llevel_45_8007AA38
/* 8D36F60 8007AA30 1C0042AE */   sw        $v0, 0x1C($s2)
.Llevel_45_8007AA34:
/* 8D36F64 8007AA34 1C0040AE */  sw         $zero, 0x1C($s2)
.Llevel_45_8007AA38:
/* 8D36F68 8007AA38 2400BF8F */  lw         $ra, 0x24($sp)
/* 8D36F6C 8007AA3C 2000B28F */  lw         $s2, 0x20($sp)
/* 8D36F70 8007AA40 1C00B18F */  lw         $s1, 0x1C($sp)
/* 8D36F74 8007AA44 1800B08F */  lw         $s0, 0x18($sp)
/* 8D36F78 8007AA48 2800BD27 */  addiu      $sp, $sp, 0x28
/* 8D36F7C 8007AA4C 0800E003 */  jr         $ra
/* 8D36F80 8007AA50 00000000 */   nop
.size MobyUpdate_679_level_45, . - MobyUpdate_679_level_45
