.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_15_8007A6CC
/* 49B4BFC 8007A6CC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 49B4C00 8007A6D0 2000B2AF */  sw         $s2, 0x20($sp)
/* 49B4C04 8007A6D4 21908000 */  addu       $s2, $a0, $zero
/* 49B4C08 8007A6D8 01000224 */  addiu      $v0, $zero, 0x1
/* 49B4C0C 8007A6DC 2400BFAF */  sw         $ra, 0x24($sp)
/* 49B4C10 8007A6E0 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 49B4C14 8007A6E4 1800B0AF */  sw         $s0, 0x18($sp)
/* 49B4C18 8007A6E8 48004392 */  lbu        $v1, 0x48($s2)
/* 49B4C1C 8007A6EC 0000518E */  lw         $s1, 0x0($s2)
/* 49B4C20 8007A6F0 4C006210 */  beq        $v1, $v0, .Llevel_15_8007A824
/* 49B4C24 8007A6F4 02006228 */   slti      $v0, $v1, 0x2
/* 49B4C28 8007A6F8 05004010 */  beqz       $v0, .Llevel_15_8007A710
/* 49B4C2C 8007A6FC 00000000 */   nop
/* 49B4C30 8007A700 08006010 */  beqz       $v1, .Llevel_15_8007A724
/* 49B4C34 8007A704 00000000 */   nop
/* 49B4C38 8007A708 61EA0108 */  j          .Llevel_15_8007A984
/* 49B4C3C 8007A70C 00000000 */   nop
.Llevel_15_8007A710:
/* 49B4C40 8007A710 02000224 */  addiu      $v0, $zero, 0x2
/* 49B4C44 8007A714 81006210 */  beq        $v1, $v0, .Llevel_15_8007A91C
/* 49B4C48 8007A718 00000000 */   nop
/* 49B4C4C 8007A71C 61EA0108 */  j          .Llevel_15_8007A984
/* 49B4C50 8007A720 00000000 */   nop
.Llevel_15_8007A724:
/* 49B4C54 8007A724 0780023C */  lui        $v0, %hi(D_8006FA3C)
/* 49B4C58 8007A728 3CFA428C */  lw         $v0, %lo(D_8006FA3C)($v0)
/* 49B4C5C 8007A72C 00000000 */  nop
/* 49B4C60 8007A730 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 49B4C64 8007A734 0200422C */  sltiu      $v0, $v0, 0x2
/* 49B4C68 8007A738 90004014 */  bnez       $v0, .Llevel_15_8007A97C
/* 49B4C6C 8007A73C FF000224 */   addiu     $v0, $zero, 0xFF
/* 49B4C70 8007A740 50004392 */  lbu        $v1, 0x50($s2)
/* 49B4C74 8007A744 00000000 */  nop
/* 49B4C78 8007A748 33006210 */  beq        $v1, $v0, .Llevel_15_8007A818
/* 49B4C7C 8007A74C 01000424 */   addiu     $a0, $zero, 0x1
/* 49B4C80 8007A750 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 49B4C84 8007A754 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 49B4C88 8007A758 00000000 */  nop
/* 49B4C8C 8007A75C 09F84000 */  jalr       $v0
/* 49B4C90 8007A760 21284002 */   addu      $a1, $s2, $zero
/* 49B4C94 8007A764 2C004010 */  beqz       $v0, .Llevel_15_8007A818
/* 49B4C98 8007A768 040022AE */   sw        $v0, 0x4($s1)
/* 49B4C9C 8007A76C 0C004424 */  addiu      $a0, $v0, 0xC
/* 49B4CA0 8007A770 0000508C */  lw         $s0, 0x0($v0)
/* 49B4CA4 8007A774 5E3C010C */  jal        func_8004F178
/* 49B4CA8 8007A778 0C004526 */   addiu     $a1, $s2, 0xC
/* 49B4CAC 8007A77C 0400238E */  lw         $v1, 0x4($s1)
/* 49B4CB0 8007A780 05000224 */  addiu      $v0, $zero, 0x5
/* 49B4CB4 8007A784 480062A0 */  sb         $v0, 0x48($v1)
/* 49B4CB8 8007A788 50004292 */  lbu        $v0, 0x50($s2)
/* 49B4CBC 8007A78C 0400238E */  lw         $v1, 0x4($s1)
/* 49B4CC0 8007A790 0680013C */  lui        $at, %hi(D_80066964)
/* 49B4CC4 8007A794 21082200 */  addu       $at, $at, $v0
/* 49B4CC8 8007A798 64692290 */  lbu        $v0, %lo(D_80066964)($at)
/* 49B4CCC 8007A79C 00000000 */  nop
/* 49B4CD0 8007A7A0 490062A0 */  sb         $v0, 0x49($v1)
/* 49B4CD4 8007A7A4 0400238E */  lw         $v1, 0x4($s1)
/* 49B4CD8 8007A7A8 00000000 */  nop
/* 49B4CDC 8007A7AC 49006290 */  lbu        $v0, 0x49($v1)
/* 49B4CE0 8007A7B0 0680013C */  lui        $at, %hi(D_80066988)
/* 49B4CE4 8007A7B4 21082200 */  addu       $at, $at, $v0
/* 49B4CE8 8007A7B8 88692290 */  lbu        $v0, %lo(D_80066988)($at)
/* 49B4CEC 8007A7BC 00000000 */  nop
/* 49B4CF0 8007A7C0 3C0062A0 */  sb         $v0, 0x3C($v1)
/* 49B4CF4 8007A7C4 0400238E */  lw         $v1, 0x4($s1)
/* 49B4CF8 8007A7C8 00000000 */  nop
/* 49B4CFC 8007A7CC 49006290 */  lbu        $v0, 0x49($v1)
/* 49B4D00 8007A7D0 0680013C */  lui        $at, %hi(D_80066990)
/* 49B4D04 8007A7D4 21082200 */  addu       $at, $at, $v0
/* 49B4D08 8007A7D8 90692290 */  lbu        $v0, %lo(D_80066990)($at)
/* 49B4D0C 8007A7DC 00000000 */  nop
/* 49B4D10 8007A7E0 540062A0 */  sb         $v0, 0x54($v1)
/* 49B4D14 8007A7E4 0400238E */  lw         $v1, 0x4($s1)
/* 49B4D18 8007A7E8 4C004292 */  lbu        $v0, 0x4C($s2)
/* 49B4D1C 8007A7EC 00000000 */  nop
/* 49B4D20 8007A7F0 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 49B4D24 8007A7F4 0400238E */  lw         $v1, 0x4($s1)
/* 49B4D28 8007A7F8 4E004292 */  lbu        $v0, 0x4E($s2)
/* 49B4D2C 8007A7FC 00000000 */  nop
/* 49B4D30 8007A800 4E0062A0 */  sb         $v0, 0x4E($v1)
/* 49B4D34 8007A804 FF000224 */  addiu      $v0, $zero, 0xFF
/* 49B4D38 8007A808 9171010C */  jal        rand
/* 49B4D3C 8007A80C 130002A2 */   sb        $v0, 0x13($s0)
/* 49B4D40 8007A810 FF004230 */  andi       $v0, $v0, 0xFF
/* 49B4D44 8007A814 080022AE */  sw         $v0, 0x8($s1)
.Llevel_15_8007A818:
/* 49B4D48 8007A818 01000224 */  addiu      $v0, $zero, 0x1
/* 49B4D4C 8007A81C 61EA0108 */  j          .Llevel_15_8007A984
/* 49B4D50 8007A820 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_15_8007A824:
/* 49B4D54 8007A824 0000258E */  lw         $a1, 0x0($s1)
/* 49B4D58 8007A828 F0EF000C */  jal        func_8003BFC0
/* 49B4D5C 8007A82C 21204002 */   addu      $a0, $s2, $zero
/* 49B4D60 8007A830 05004014 */  bnez       $v0, .Llevel_15_8007A848
/* 49B4D64 8007A834 21204002 */   addu      $a0, $s2, $zero
/* 49B4D68 8007A838 01000524 */  addiu      $a1, $zero, 0x1
/* 49B4D6C 8007A83C AFEE000C */  jal        func_8003BABC
/* 49B4D70 8007A840 04000624 */   addiu     $a2, $zero, 0x4
/* 49B4D74 8007A844 000022AE */  sw         $v0, 0x0($s1)
.Llevel_15_8007A848:
/* 49B4D78 8007A848 44004292 */  lbu        $v0, 0x44($s2)
/* 49B4D7C 8007A84C 00000000 */  nop
/* 49B4D80 8007A850 08004224 */  addiu      $v0, $v0, 0x8
/* 49B4D84 8007A854 440042A2 */  sb         $v0, 0x44($s2)
/* 49B4D88 8007A858 0400228E */  lw         $v0, 0x4($s1)
/* 49B4D8C 8007A85C 00000000 */  nop
/* 49B4D90 8007A860 22004010 */  beqz       $v0, .Llevel_15_8007A8EC
/* 49B4D94 8007A864 21204002 */   addu      $a0, $s2, $zero
/* 49B4D98 8007A868 0800228E */  lw         $v0, 0x8($s1)
/* 49B4D9C 8007A86C 0780033C */  lui        $v1, %hi(D_8006C648)
/* 49B4DA0 8007A870 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 49B4DA4 8007A874 00000000 */  nop
/* 49B4DA8 8007A878 21104300 */  addu       $v0, $v0, $v1
/* 49B4DAC 8007A87C 080022AE */  sw         $v0, 0x8($s1)
/* 49B4DB0 8007A880 C0100200 */  sll        $v0, $v0, 3
/* 49B4DB4 8007A884 F8014230 */  andi       $v0, $v0, 0x1F8
/* 49B4DB8 8007A888 0680013C */  lui        $at, %hi(D_80065920)
/* 49B4DBC 8007A88C 21082200 */  addu       $at, $at, $v0
/* 49B4DC0 8007A890 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 49B4DC4 8007A894 0400238E */  lw         $v1, 0x4($s1)
/* 49B4DC8 8007A898 02120200 */  srl        $v0, $v0, 8
/* 49B4DCC 8007A89C 450062A0 */  sb         $v0, 0x45($v1)
/* 49B4DD0 8007A8A0 0400238E */  lw         $v1, 0x4($s1)
/* 49B4DD4 8007A8A4 00000000 */  nop
/* 49B4DD8 8007A8A8 46006290 */  lbu        $v0, 0x46($v1)
/* 49B4DDC 8007A8AC 00000000 */  nop
/* 49B4DE0 8007A8B0 04004224 */  addiu      $v0, $v0, 0x4
/* 49B4DE4 8007A8B4 460062A0 */  sb         $v0, 0x46($v1)
/* 49B4DE8 8007A8B8 0800228E */  lw         $v0, 0x8($s1)
/* 49B4DEC 8007A8BC 0400248E */  lw         $a0, 0x4($s1)
/* 49B4DF0 8007A8C0 80100200 */  sll        $v0, $v0, 2
/* 49B4DF4 8007A8C4 FC014230 */  andi       $v0, $v0, 0x1FC
/* 49B4DF8 8007A8C8 0680013C */  lui        $at, %hi(D_80065920)
/* 49B4DFC 8007A8CC 21082200 */  addu       $at, $at, $v0
/* 49B4E00 8007A8D0 20592394 */  lhu        $v1, %lo(D_80065920)($at)
/* 49B4E04 8007A8D4 1400428E */  lw         $v0, 0x14($s2)
/* 49B4E08 8007A8D8 001C0300 */  sll        $v1, $v1, 16
/* 49B4E0C 8007A8DC 031D0300 */  sra        $v1, $v1, 20
/* 49B4E10 8007A8E0 21104300 */  addu       $v0, $v0, $v1
/* 49B4E14 8007A8E4 140082AC */  sw         $v0, 0x14($a0)
/* 49B4E18 8007A8E8 21204002 */  addu       $a0, $s2, $zero
.Llevel_15_8007A8EC:
/* 49B4E1C 8007A8EC 0780053C */  lui        $a1, %hi(D_80070328)
/* 49B4E20 8007A8F0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 49B4E24 8007A8F4 000C0624 */  addiu      $a2, $zero, 0xC00
/* 49B4E28 8007A8F8 0780023C */  lui        $v0, %hi(unk_ovlheader_8007439C)
/* 49B4E2C 8007A8FC 9C43428C */  lw         $v0, %lo(unk_ovlheader_8007439C)($v0)
/* 49B4E30 8007A900 00000000 */  nop
/* 49B4E34 8007A904 09F84000 */  jalr       $v0
/* 49B4E38 8007A908 21380000 */   addu      $a3, $zero, $zero
/* 49B4E3C 8007A90C 1D004010 */  beqz       $v0, .Llevel_15_8007A984
/* 49B4E40 8007A910 02000224 */   addiu     $v0, $zero, 0x2
/* 49B4E44 8007A914 61EA0108 */  j          .Llevel_15_8007A984
/* 49B4E48 8007A918 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_15_8007A91C:
/* 49B4E4C 8007A91C 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 49B4E50 8007A920 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 49B4E54 8007A924 00000000 */  nop
/* 49B4E58 8007A928 09F84000 */  jalr       $v0
/* 49B4E5C 8007A92C 21204002 */   addu      $a0, $s2, $zero
/* 49B4E60 8007A930 0400238E */  lw         $v1, 0x4($s1)
/* 49B4E64 8007A934 00000000 */  nop
/* 49B4E68 8007A938 02006010 */  beqz       $v1, .Llevel_15_8007A944
/* 49B4E6C 8007A93C 04000224 */   addiu     $v0, $zero, 0x4
/* 49B4E70 8007A940 480062A0 */  sb         $v0, 0x48($v1)
.Llevel_15_8007A944:
/* 49B4E74 8007A944 0000258E */  lw         $a1, 0x0($s1)
/* 49B4E78 8007A948 F0EF000C */  jal        func_8003BFC0
/* 49B4E7C 8007A94C 21204002 */   addu      $a0, $s2, $zero
/* 49B4E80 8007A950 05004010 */  beqz       $v0, .Llevel_15_8007A968
/* 49B4E84 8007A954 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 49B4E88 8007A958 0000248E */  lw         $a0, 0x0($s1)
/* 49B4E8C 8007A95C 9CEF000C */  jal        func_8003BE70
/* 49B4E90 8007A960 00000000 */   nop
/* 49B4E94 8007A964 FFFF0224 */  addiu      $v0, $zero, -0x1
.Llevel_15_8007A968:
/* 49B4E98 8007A968 000022AE */  sw         $v0, 0x0($s1)
/* 49B4E9C 8007A96C 21204002 */  addu       $a0, $s2, $zero
/* 49B4EA0 8007A970 21280000 */  addu       $a1, $zero, $zero
/* 49B4EA4 8007A974 AFEE000C */  jal        func_8003BABC
/* 49B4EA8 8007A978 21300000 */   addu      $a2, $zero, $zero
.Llevel_15_8007A97C:
/* 49B4EAC 8007A97C C656010C */  jal        func_80055B18
/* 49B4EB0 8007A980 21204002 */   addu      $a0, $s2, $zero
.Llevel_15_8007A984:
/* 49B4EB4 8007A984 2400BF8F */  lw         $ra, 0x24($sp)
/* 49B4EB8 8007A988 2000B28F */  lw         $s2, 0x20($sp)
/* 49B4EBC 8007A98C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 49B4EC0 8007A990 1800B08F */  lw         $s0, 0x18($sp)
/* 49B4EC4 8007A994 2800BD27 */  addiu      $sp, $sp, 0x28
/* 49B4EC8 8007A998 0800E003 */  jr         $ra
/* 49B4ECC 8007A99C 00000000 */   nop
.size func_level_15_8007A6CC, . - func_level_15_8007A6CC
