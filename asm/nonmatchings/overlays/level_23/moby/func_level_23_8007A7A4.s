.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_23_8007A7A4
/* 5A96CD4 8007A7A4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 5A96CD8 8007A7A8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 5A96CDC 8007A7AC 21888000 */  addu       $s1, $a0, $zero
/* 5A96CE0 8007A7B0 3000BFAF */  sw         $ra, 0x30($sp)
/* 5A96CE4 8007A7B4 2800B0AF */  sw         $s0, 0x28($sp)
/* 5A96CE8 8007A7B8 1800228E */  lw         $v0, 0x18($s1)
/* 5A96CEC 8007A7BC 0000308E */  lw         $s0, 0x0($s1)
/* 5A96CF0 8007A7C0 7C004010 */  beqz       $v0, .Llevel_23_8007A9B4
/* 5A96CF4 8007A7C4 09000524 */   addiu     $a1, $zero, 0x9
/* 5A96CF8 8007A7C8 C4EE000C */  jal        func_8003BB10
/* 5A96CFC 8007A7CC 21300000 */   addu      $a2, $zero, $zero
/* 5A96D00 8007A7D0 03000424 */  addiu      $a0, $zero, 0x3
/* 5A96D04 8007A7D4 E5020524 */  addiu      $a1, $zero, 0x2E5
/* 5A96D08 8007A7D8 00010224 */  addiu      $v0, $zero, 0x100
/* 5A96D0C 8007A7DC 1000A0AF */  sw         $zero, 0x10($sp)
/* 5A96D10 8007A7E0 1400A2AF */  sw         $v0, 0x14($sp)
/* 5A96D14 8007A7E4 0000078E */  lw         $a3, 0x0($s0)
/* 5A96D18 8007A7E8 0780023C */  lui        $v0, %hi(SpawnFragments)
/* 5A96D1C 8007A7EC 5C43428C */  lw         $v0, %lo(SpawnFragments)($v0)
/* 5A96D20 8007A7F0 00000000 */  nop
/* 5A96D24 8007A7F4 09F84000 */  jalr       $v0
/* 5A96D28 8007A7F8 21302002 */   addu      $a2, $s1, $zero
/* 5A96D2C 8007A7FC 1800228E */  lw         $v0, 0x18($s1)
/* 5A96D30 8007A800 0100033C */  lui        $v1, (0x10000 >> 16)
/* 5A96D34 8007A804 24104300 */  and        $v0, $v0, $v1
/* 5A96D38 8007A808 0F004010 */  beqz       $v0, .Llevel_23_8007A848
/* 5A96D3C 8007A80C 1800A427 */   addiu     $a0, $sp, 0x18
/* 5A96D40 8007A810 5E3C010C */  jal        func_8004F178
/* 5A96D44 8007A814 0C002526 */   addiu     $a1, $s1, 0xC
/* 5A96D48 8007A818 1800A427 */  addiu      $a0, $sp, 0x18
/* 5A96D4C 8007A81C 37000524 */  addiu      $a1, $zero, 0x37
/* 5A96D50 8007A820 10000624 */  addiu      $a2, $zero, 0x10
/* 5A96D54 8007A824 1C000724 */  addiu      $a3, $zero, 0x1C
/* 5A96D58 8007A828 2000A28F */  lw         $v0, 0x20($sp)
/* 5A96D5C 8007A82C 0780033C */  lui        $v1, %hi(unk_ovlheader_80074410)
/* 5A96D60 8007A830 1044638C */  lw         $v1, %lo(unk_ovlheader_80074410)($v1)
/* 5A96D64 8007A834 B0044224 */  addiu      $v0, $v0, 0x4B0
/* 5A96D68 8007A838 2000A2AF */  sw         $v0, 0x20($sp)
/* 5A96D6C 8007A83C 26000224 */  addiu      $v0, $zero, 0x26
/* 5A96D70 8007A840 09F86000 */  jalr       $v1
/* 5A96D74 8007A844 1000A2AF */   sw        $v0, 0x10($sp)
.Llevel_23_8007A848:
/* 5A96D78 8007A848 43002492 */  lbu        $a0, 0x43($s1)
/* 5A96D7C 8007A84C FF000224 */  addiu      $v0, $zero, 0xFF
/* 5A96D80 8007A850 56008210 */  beq        $a0, $v0, .Llevel_23_8007A9AC
/* 5A96D84 8007A854 21300000 */   addu      $a2, $zero, $zero
/* 5A96D88 8007A858 80100400 */  sll        $v0, $a0, 2
/* 5A96D8C 8007A85C 0780033C */  lui        $v1, %hi(D_8006C730)
/* 5A96D90 8007A860 30C7638C */  lw         $v1, %lo(D_8006C730)($v1)
/* 5A96D94 8007A864 0780073C */  lui        $a3, %hi(D_8006C550)
/* 5A96D98 8007A868 50C5E78C */  lw         $a3, %lo(D_8006C550)($a3)
/* 5A96D9C 8007A86C 21104300 */  addu       $v0, $v0, $v1
/* 5A96DA0 8007A870 0000448C */  lw         $a0, 0x0($v0)
.Llevel_23_8007A874:
/* 5A96DA4 8007A874 00000000 */  nop
/* 5A96DA8 8007A878 00008594 */  lhu        $a1, 0x0($a0)
/* 5A96DAC 8007A87C 00000000 */  nop
/* 5A96DB0 8007A880 FF7FA230 */  andi       $v0, $a1, 0x7FFF
/* 5A96DB4 8007A884 40180200 */  sll        $v1, $v0, 1
/* 5A96DB8 8007A888 21186200 */  addu       $v1, $v1, $v0
/* 5A96DBC 8007A88C 80180300 */  sll        $v1, $v1, 2
/* 5A96DC0 8007A890 23186200 */  subu       $v1, $v1, $v0
/* 5A96DC4 8007A894 C0180300 */  sll        $v1, $v1, 3
/* 5A96DC8 8007A898 21186700 */  addu       $v1, $v1, $a3
/* 5A96DCC 8007A89C 48006290 */  lbu        $v0, 0x48($v1)
/* 5A96DD0 8007A8A0 00000000 */  nop
/* 5A96DD4 8007A8A4 8000422C */  sltiu      $v0, $v0, 0x80
/* 5A96DD8 8007A8A8 02004010 */  beqz       $v0, .Llevel_23_8007A8B4
/* 5A96DDC 8007A8AC 00140500 */   sll       $v0, $a1, 16
/* 5A96DE0 8007A8B0 0100C624 */  addiu      $a2, $a2, 0x1
.Llevel_23_8007A8B4:
/* 5A96DE4 8007A8B4 EFFF4104 */  bgez       $v0, .Llevel_23_8007A874
/* 5A96DE8 8007A8B8 02008424 */   addiu     $a0, $a0, 0x2
/* 5A96DEC 8007A8BC 01000224 */  addiu      $v0, $zero, 0x1
/* 5A96DF0 8007A8C0 3A00C214 */  bne        $a2, $v0, .Llevel_23_8007A9AC
/* 5A96DF4 8007A8C4 21282002 */   addu      $a1, $s1, $zero
/* 5A96DF8 8007A8C8 0780033C */  lui        $v1, %hi(D_8006C654)
/* 5A96DFC 8007A8CC 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 5A96E00 8007A8D0 03000224 */  addiu      $v0, $zero, 0x3
/* 5A96E04 8007A8D4 0680013C */  lui        $at, %hi(D_80066BC8 + 7)
/* 5A96E08 8007A8D8 CF6B22A0 */  sb         $v0, %lo(D_80066BC8 + 7)($at)
/* 5A96E0C 8007A8DC 01000224 */  addiu      $v0, $zero, 0x1
/* 5A96E10 8007A8E0 0780013C */  lui        $at, %hi(D_800719DC)
/* 5A96E14 8007A8E4 DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 5A96E18 8007A8E8 23006490 */  lbu        $a0, 0x23($v1)
/* 5A96E1C 8007A8EC D4EE000C */  jal        PlaySound
/* 5A96E20 8007A8F0 A1000624 */   addiu     $a2, $zero, 0xA1
/* 5A96E24 8007A8F4 D3000424 */  addiu      $a0, $zero, 0xD3
/* 5A96E28 8007A8F8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5A96E2C 8007A8FC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5A96E30 8007A900 00000000 */  nop
/* 5A96E34 8007A904 09F84000 */  jalr       $v0
/* 5A96E38 8007A908 21282002 */   addu      $a1, $s1, $zero
/* 5A96E3C 8007A90C 21804000 */  addu       $s0, $v0, $zero
/* 5A96E40 8007A910 26000012 */  beqz       $s0, .Llevel_23_8007A9AC
/* 5A96E44 8007A914 00000000 */   nop
/* 5A96E48 8007A918 0780053C */  lui        $a1, %hi(D_80070328)
/* 5A96E4C 8007A91C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5A96E50 8007A920 5E3C010C */  jal        func_8004F178
/* 5A96E54 8007A924 0C000426 */   addiu     $a0, $s0, 0xC
/* 5A96E58 8007A928 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5A96E5C 8007A92C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5A96E60 8007A930 00000000 */  nop
/* 5A96E64 8007A934 40100200 */  sll        $v0, $v0, 1
/* 5A96E68 8007A938 0680013C */  lui        $at, %hi(D_80065920)
/* 5A96E6C 8007A93C 21082200 */  addu       $at, $at, $v0
/* 5A96E70 8007A940 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 5A96E74 8007A944 00000000 */  nop
/* 5A96E78 8007A948 40100300 */  sll        $v0, $v1, 1
/* 5A96E7C 8007A94C 21104300 */  addu       $v0, $v0, $v1
/* 5A96E80 8007A950 C0100200 */  sll        $v0, $v0, 3
/* 5A96E84 8007A954 21104300 */  addu       $v0, $v0, $v1
/* 5A96E88 8007A958 0C00038E */  lw         $v1, 0xC($s0)
/* 5A96E8C 8007A95C C3110200 */  sra        $v0, $v0, 7
/* 5A96E90 8007A960 21186200 */  addu       $v1, $v1, $v0
/* 5A96E94 8007A964 0C0003AE */  sw         $v1, 0xC($s0)
/* 5A96E98 8007A968 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5A96E9C 8007A96C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5A96EA0 8007A970 1400038E */  lw         $v1, 0x14($s0)
/* 5A96EA4 8007A974 40100200 */  sll        $v0, $v0, 1
/* 5A96EA8 8007A978 0680013C */  lui        $at, %hi(D_800658A0)
/* 5A96EAC 8007A97C 21082200 */  addu       $at, $at, $v0
/* 5A96EB0 8007A980 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 5A96EB4 8007A984 F4016324 */  addiu      $v1, $v1, 0x1F4
/* 5A96EB8 8007A988 140003AE */  sw         $v1, 0x14($s0)
/* 5A96EBC 8007A98C 1000038E */  lw         $v1, 0x10($s0)
/* 5A96EC0 8007A990 40100400 */  sll        $v0, $a0, 1
/* 5A96EC4 8007A994 21104400 */  addu       $v0, $v0, $a0
/* 5A96EC8 8007A998 C0100200 */  sll        $v0, $v0, 3
/* 5A96ECC 8007A99C 21104400 */  addu       $v0, $v0, $a0
/* 5A96ED0 8007A9A0 C3110200 */  sra        $v0, $v0, 7
/* 5A96ED4 8007A9A4 21186200 */  addu       $v1, $v1, $v0
/* 5A96ED8 8007A9A8 100003AE */  sw         $v1, 0x10($s0)
.Llevel_23_8007A9AC:
/* 5A96EDC 8007A9AC C656010C */  jal        func_80055B18
/* 5A96EE0 8007A9B0 21202002 */   addu      $a0, $s1, $zero
.Llevel_23_8007A9B4:
/* 5A96EE4 8007A9B4 3000BF8F */  lw         $ra, 0x30($sp)
/* 5A96EE8 8007A9B8 2C00B18F */  lw         $s1, 0x2C($sp)
/* 5A96EEC 8007A9BC 2800B08F */  lw         $s0, 0x28($sp)
/* 5A96EF0 8007A9C0 3800BD27 */  addiu      $sp, $sp, 0x38
/* 5A96EF4 8007A9C4 0800E003 */  jr         $ra
/* 5A96EF8 8007A9C8 00000000 */   nop
.size func_level_23_8007A7A4, . - func_level_23_8007A7A4
