.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007F630
/* 3E23B60 8007F630 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3E23B64 8007F634 3400B1AF */  sw         $s1, 0x34($sp)
/* 3E23B68 8007F638 21888000 */  addu       $s1, $a0, $zero
/* 3E23B6C 8007F63C 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 3E23B70 8007F640 3800B2AF */  sw         $s2, 0x38($sp)
/* 3E23B74 8007F644 3000B0AF */  sw         $s0, 0x30($sp)
/* 3E23B78 8007F648 0000328E */  lw         $s2, 0x0($s1)
/* 3E23B7C 8007F64C 00000000 */  nop
/* 3E23B80 8007F650 0000438E */  lw         $v1, 0x0($s2)
/* 3E23B84 8007F654 00000000 */  nop
/* 3E23B88 8007F658 39006010 */  beqz       $v1, .Llevel_11_8007F740
/* 3E23B8C 8007F65C 00000000 */   nop
/* 3E23B90 8007F660 0780023C */  lui        $v0, %hi(D_8006C648)
/* 3E23B94 8007F664 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 3E23B98 8007F668 00000000 */  nop
/* 3E23B9C 8007F66C 21186200 */  addu       $v1, $v1, $v0
/* 3E23BA0 8007F670 40006228 */  slti       $v0, $v1, 0x40
/* 3E23BA4 8007F674 29004010 */  beqz       $v0, .Llevel_11_8007F71C
/* 3E23BA8 8007F678 000043AE */   sw        $v1, 0x0($s2)
/* 3E23BAC 8007F67C 43100300 */  sra        $v0, $v1, 1
/* 3E23BB0 8007F680 1C00438E */  lw         $v1, 0x1C($s2)
/* 3E23BB4 8007F684 40100200 */  sll        $v0, $v0, 1
/* 3E23BB8 8007F688 21104300 */  addu       $v0, $v0, $v1
/* 3E23BBC 8007F68C 0800438E */  lw         $v1, 0x8($s2)
/* 3E23BC0 8007F690 00004290 */  lbu        $v0, 0x0($v0)
/* 3E23BC4 8007F694 00000000 */  nop
/* 3E23BC8 8007F698 21104300 */  addu       $v0, $v0, $v1
/* 3E23BCC 8007F69C 440022A2 */  sb         $v0, 0x44($s1)
/* 3E23BD0 8007F6A0 0000428E */  lw         $v0, 0x0($s2)
/* 3E23BD4 8007F6A4 1C00438E */  lw         $v1, 0x1C($s2)
/* 3E23BD8 8007F6A8 43100200 */  sra        $v0, $v0, 1
/* 3E23BDC 8007F6AC 40100200 */  sll        $v0, $v0, 1
/* 3E23BE0 8007F6B0 21104300 */  addu       $v0, $v0, $v1
/* 3E23BE4 8007F6B4 0C00438E */  lw         $v1, 0xC($s2)
/* 3E23BE8 8007F6B8 01004290 */  lbu        $v0, 0x1($v0)
/* 3E23BEC 8007F6BC 00000000 */  nop
/* 3E23BF0 8007F6C0 21104300 */  addu       $v0, $v0, $v1
/* 3E23BF4 8007F6C4 450022A2 */  sb         $v0, 0x45($s1)
/* 3E23BF8 8007F6C8 0000428E */  lw         $v0, 0x0($s2)
/* 3E23BFC 8007F6CC 1C00438E */  lw         $v1, 0x1C($s2)
/* 3E23C00 8007F6D0 43100200 */  sra        $v0, $v0, 1
/* 3E23C04 8007F6D4 40100200 */  sll        $v0, $v0, 1
/* 3E23C08 8007F6D8 21104300 */  addu       $v0, $v0, $v1
/* 3E23C0C 8007F6DC 00004380 */  lb         $v1, 0x0($v0)
/* 3E23C10 8007F6E0 01004280 */  lb         $v0, 0x1($v0)
/* 3E23C14 8007F6E4 02006104 */  bgez       $v1, .Llevel_11_8007F6F0
/* 3E23C18 8007F6E8 00000000 */   nop
/* 3E23C1C 8007F6EC 23180300 */  negu       $v1, $v1
.Llevel_11_8007F6F0:
/* 3E23C20 8007F6F0 02004104 */  bgez       $v0, .Llevel_11_8007F6FC
/* 3E23C24 8007F6F4 00000000 */   nop
/* 3E23C28 8007F6F8 23100200 */  negu       $v0, $v0
.Llevel_11_8007F6FC:
/* 3E23C2C 8007F6FC 21186200 */  addu       $v1, $v1, $v0
/* 3E23C30 8007F700 40100300 */  sll        $v0, $v1, 1
/* 3E23C34 8007F704 21104300 */  addu       $v0, $v0, $v1
/* 3E23C38 8007F708 1000438E */  lw         $v1, 0x10($s2)
/* 3E23C3C 8007F70C 40100200 */  sll        $v0, $v0, 1
/* 3E23C40 8007F710 21186200 */  addu       $v1, $v1, $v0
/* 3E23C44 8007F714 D0FD0108 */  j          .Llevel_11_8007F740
/* 3E23C48 8007F718 140023AE */   sw        $v1, 0x14($s1)
.Llevel_11_8007F71C:
/* 3E23C4C 8007F71C 0800428E */  lw         $v0, 0x8($s2)
/* 3E23C50 8007F720 000040AE */  sw         $zero, 0x0($s2)
/* 3E23C54 8007F724 440022A2 */  sb         $v0, 0x44($s1)
/* 3E23C58 8007F728 0C00428E */  lw         $v0, 0xC($s2)
/* 3E23C5C 8007F72C 00000000 */  nop
/* 3E23C60 8007F730 450022A2 */  sb         $v0, 0x45($s1)
/* 3E23C64 8007F734 1000428E */  lw         $v0, 0x10($s2)
/* 3E23C68 8007F738 00000000 */  nop
/* 3E23C6C 8007F73C 140022AE */  sw         $v0, 0x14($s1)
.Llevel_11_8007F740:
/* 3E23C70 8007F740 1800228E */  lw         $v0, 0x18($s1)
/* 3E23C74 8007F744 0100033C */  lui        $v1, (0x10000 >> 16)
/* 3E23C78 8007F748 24104300 */  and        $v0, $v0, $v1
/* 3E23C7C 8007F74C 71004010 */  beqz       $v0, .Llevel_11_8007F914
/* 3E23C80 8007F750 00000000 */   nop
/* 3E23C84 8007F754 1800428E */  lw         $v0, 0x18($s2)
/* 3E23C88 8007F758 00000000 */  nop
/* 3E23C8C 8007F75C 6D004014 */  bnez       $v0, .Llevel_11_8007F914
/* 3E23C90 8007F760 00000000 */   nop
/* 3E23C94 8007F764 48002292 */  lbu        $v0, 0x48($s1)
/* 3E23C98 8007F768 00000000 */  nop
/* 3E23C9C 8007F76C 66004014 */  bnez       $v0, .Llevel_11_8007F908
/* 3E23CA0 8007F770 3C000224 */   addiu     $v0, $zero, 0x3C
/* 3E23CA4 8007F774 21202002 */  addu       $a0, $s1, $zero
/* 3E23CA8 8007F778 21280000 */  addu       $a1, $zero, $zero
/* 3E23CAC 8007F77C AFEE000C */  jal        func_8003BABC
/* 3E23CB0 8007F780 21300000 */   addu      $a2, $zero, $zero
/* 3E23CB4 8007F784 78000224 */  addiu      $v0, $zero, 0x78
/* 3E23CB8 8007F788 180042AE */  sw         $v0, 0x18($s2)
/* 3E23CBC 8007F78C 43002492 */  lbu        $a0, 0x43($s1)
/* 3E23CC0 8007F790 02000224 */  addiu      $v0, $zero, 0x2
/* 3E23CC4 8007F794 480022A2 */  sb         $v0, 0x48($s1)
/* 3E23CC8 8007F798 7F000224 */  addiu      $v0, $zero, 0x7F
/* 3E23CCC 8007F79C 540022A2 */  sb         $v0, 0x54($s1)
/* 3E23CD0 8007F7A0 550022A2 */  sb         $v0, 0x55($s1)
/* 3E23CD4 8007F7A4 560022A2 */  sb         $v0, 0x56($s1)
/* 3E23CD8 8007F7A8 FF000224 */  addiu      $v0, $zero, 0xFF
/* 3E23CDC 8007F7AC 59008210 */  beq        $a0, $v0, .Llevel_11_8007F914
/* 3E23CE0 8007F7B0 570020A2 */   sb        $zero, 0x57($s1)
/* 3E23CE4 8007F7B4 21300000 */  addu       $a2, $zero, $zero
/* 3E23CE8 8007F7B8 80100400 */  sll        $v0, $a0, 2
/* 3E23CEC 8007F7BC 0780033C */  lui        $v1, %hi(D_8006C730)
/* 3E23CF0 8007F7C0 30C7638C */  lw         $v1, %lo(D_8006C730)($v1)
/* 3E23CF4 8007F7C4 0780073C */  lui        $a3, %hi(D_8006C550)
/* 3E23CF8 8007F7C8 50C5E78C */  lw         $a3, %lo(D_8006C550)($a3)
/* 3E23CFC 8007F7CC 21104300 */  addu       $v0, $v0, $v1
/* 3E23D00 8007F7D0 0000448C */  lw         $a0, 0x0($v0)
.Llevel_11_8007F7D4:
/* 3E23D04 8007F7D4 00000000 */  nop
/* 3E23D08 8007F7D8 00008594 */  lhu        $a1, 0x0($a0)
/* 3E23D0C 8007F7DC 00000000 */  nop
/* 3E23D10 8007F7E0 FF7FA230 */  andi       $v0, $a1, 0x7FFF
/* 3E23D14 8007F7E4 40180200 */  sll        $v1, $v0, 1
/* 3E23D18 8007F7E8 21186200 */  addu       $v1, $v1, $v0
/* 3E23D1C 8007F7EC 80180300 */  sll        $v1, $v1, 2
/* 3E23D20 8007F7F0 23186200 */  subu       $v1, $v1, $v0
/* 3E23D24 8007F7F4 C0180300 */  sll        $v1, $v1, 3
/* 3E23D28 8007F7F8 21186700 */  addu       $v1, $v1, $a3
/* 3E23D2C 8007F7FC 48006290 */  lbu        $v0, 0x48($v1)
/* 3E23D30 8007F800 00000000 */  nop
/* 3E23D34 8007F804 02004014 */  bnez       $v0, .Llevel_11_8007F810
/* 3E23D38 8007F808 00140500 */   sll       $v0, $a1, 16
/* 3E23D3C 8007F80C 0100C624 */  addiu      $a2, $a2, 0x1
.Llevel_11_8007F810:
/* 3E23D40 8007F810 F0FF4104 */  bgez       $v0, .Llevel_11_8007F7D4
/* 3E23D44 8007F814 02008424 */   addiu     $a0, $a0, 0x2
/* 3E23D48 8007F818 3E00C014 */  bnez       $a2, .Llevel_11_8007F914
/* 3E23D4C 8007F81C 21282002 */   addu      $a1, $s1, $zero
/* 3E23D50 8007F820 0780033C */  lui        $v1, %hi(D_8006C654)
/* 3E23D54 8007F824 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 3E23D58 8007F828 03000224 */  addiu      $v0, $zero, 0x3
/* 3E23D5C 8007F82C 0680013C */  lui        $at, %hi(D_80066BC8)
/* 3E23D60 8007F830 C86B22A0 */  sb         $v0, %lo(D_80066BC8)($at)
/* 3E23D64 8007F834 01000224 */  addiu      $v0, $zero, 0x1
/* 3E23D68 8007F838 0780013C */  lui        $at, %hi(D_800719DC)
/* 3E23D6C 8007F83C DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 3E23D70 8007F840 23006490 */  lbu        $a0, 0x23($v1)
/* 3E23D74 8007F844 D4EE000C */  jal        PlaySound
/* 3E23D78 8007F848 A1000624 */   addiu     $a2, $zero, 0xA1
/* 3E23D7C 8007F84C D3000424 */  addiu      $a0, $zero, 0xD3
/* 3E23D80 8007F850 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3E23D84 8007F854 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3E23D88 8007F858 00000000 */  nop
/* 3E23D8C 8007F85C 09F84000 */  jalr       $v0
/* 3E23D90 8007F860 21282002 */   addu      $a1, $s1, $zero
/* 3E23D94 8007F864 21804000 */  addu       $s0, $v0, $zero
/* 3E23D98 8007F868 2A000012 */  beqz       $s0, .Llevel_11_8007F914
/* 3E23D9C 8007F86C 00000000 */   nop
/* 3E23DA0 8007F870 0780053C */  lui        $a1, %hi(D_80070328)
/* 3E23DA4 8007F874 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3E23DA8 8007F878 5E3C010C */  jal        func_8004F178
/* 3E23DAC 8007F87C 0C000426 */   addiu     $a0, $s0, 0xC
/* 3E23DB0 8007F880 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 3E23DB4 8007F884 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 3E23DB8 8007F888 00000000 */  nop
/* 3E23DBC 8007F88C 40100200 */  sll        $v0, $v0, 1
/* 3E23DC0 8007F890 0680013C */  lui        $at, %hi(D_80065920)
/* 3E23DC4 8007F894 21082200 */  addu       $at, $at, $v0
/* 3E23DC8 8007F898 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 3E23DCC 8007F89C 00000000 */  nop
/* 3E23DD0 8007F8A0 40100300 */  sll        $v0, $v1, 1
/* 3E23DD4 8007F8A4 21104300 */  addu       $v0, $v0, $v1
/* 3E23DD8 8007F8A8 C0100200 */  sll        $v0, $v0, 3
/* 3E23DDC 8007F8AC 21104300 */  addu       $v0, $v0, $v1
/* 3E23DE0 8007F8B0 0C00038E */  lw         $v1, 0xC($s0)
/* 3E23DE4 8007F8B4 C3110200 */  sra        $v0, $v0, 7
/* 3E23DE8 8007F8B8 21186200 */  addu       $v1, $v1, $v0
/* 3E23DEC 8007F8BC 0C0003AE */  sw         $v1, 0xC($s0)
/* 3E23DF0 8007F8C0 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 3E23DF4 8007F8C4 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 3E23DF8 8007F8C8 1400038E */  lw         $v1, 0x14($s0)
/* 3E23DFC 8007F8CC 40100200 */  sll        $v0, $v0, 1
/* 3E23E00 8007F8D0 0680013C */  lui        $at, %hi(D_800658A0)
/* 3E23E04 8007F8D4 21082200 */  addu       $at, $at, $v0
/* 3E23E08 8007F8D8 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 3E23E0C 8007F8DC F4016324 */  addiu      $v1, $v1, 0x1F4
/* 3E23E10 8007F8E0 140003AE */  sw         $v1, 0x14($s0)
/* 3E23E14 8007F8E4 1000038E */  lw         $v1, 0x10($s0)
/* 3E23E18 8007F8E8 40100400 */  sll        $v0, $a0, 1
/* 3E23E1C 8007F8EC 21104400 */  addu       $v0, $v0, $a0
/* 3E23E20 8007F8F0 C0100200 */  sll        $v0, $v0, 3
/* 3E23E24 8007F8F4 21104400 */  addu       $v0, $v0, $a0
/* 3E23E28 8007F8F8 C3110200 */  sra        $v0, $v0, 7
/* 3E23E2C 8007F8FC 21186200 */  addu       $v1, $v1, $v0
/* 3E23E30 8007F900 45FE0108 */  j          .Llevel_11_8007F914
/* 3E23E34 8007F904 100003AE */   sw        $v1, 0x10($s0)
.Llevel_11_8007F908:
/* 3E23E38 8007F908 180042AE */  sw         $v0, 0x18($s2)
/* 3E23E3C 8007F90C 03000224 */  addiu      $v0, $zero, 0x3
/* 3E23E40 8007F910 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_11_8007F914:
/* 3E23E44 8007F914 1800228E */  lw         $v0, 0x18($s1)
/* 3E23E48 8007F918 0200033C */  lui        $v1, (0x20000 >> 16)
/* 3E23E4C 8007F91C 24104300 */  and        $v0, $v0, $v1
/* 3E23E50 8007F920 10004010 */  beqz       $v0, .Llevel_11_8007F964
/* 3E23E54 8007F924 00000000 */   nop
/* 3E23E58 8007F928 0000428E */  lw         $v0, 0x0($s2)
/* 3E23E5C 8007F92C 00000000 */  nop
/* 3E23E60 8007F930 0C004014 */  bnez       $v0, .Llevel_11_8007F964
/* 3E23E64 8007F934 01000224 */   addiu     $v0, $zero, 0x1
/* 3E23E68 8007F938 000042AE */  sw         $v0, 0x0($s2)
/* 3E23E6C 8007F93C 44002292 */  lbu        $v0, 0x44($s1)
/* 3E23E70 8007F940 21202002 */  addu       $a0, $s1, $zero
/* 3E23E74 8007F944 080042AE */  sw         $v0, 0x8($s2)
/* 3E23E78 8007F948 45002292 */  lbu        $v0, 0x45($s1)
/* 3E23E7C 8007F94C 01000524 */  addiu      $a1, $zero, 0x1
/* 3E23E80 8007F950 0C0042AE */  sw         $v0, 0xC($s2)
/* 3E23E84 8007F954 1400228E */  lw         $v0, 0x14($s1)
/* 3E23E88 8007F958 21300000 */  addu       $a2, $zero, $zero
/* 3E23E8C 8007F95C AFEE000C */  jal        func_8003BABC
/* 3E23E90 8007F960 100042AE */   sw        $v0, 0x10($s2)
.Llevel_11_8007F964:
/* 3E23E94 8007F964 48002392 */  lbu        $v1, 0x48($s1)
/* 3E23E98 8007F968 01000224 */  addiu      $v0, $zero, 0x1
/* 3E23E9C 8007F96C 9E006210 */  beq        $v1, $v0, .Llevel_11_8007FBE8
/* 3E23EA0 8007F970 180020AE */   sw        $zero, 0x18($s1)
/* 3E23EA4 8007F974 02006228 */  slti       $v0, $v1, 0x2
/* 3E23EA8 8007F978 05004010 */  beqz       $v0, .Llevel_11_8007F990
/* 3E23EAC 8007F97C 00000000 */   nop
/* 3E23EB0 8007F980 0A006010 */  beqz       $v1, .Llevel_11_8007F9AC
/* 3E23EB4 8007F984 80000224 */   addiu     $v0, $zero, 0x80
/* 3E23EB8 8007F988 FAFE0108 */  j          .Llevel_11_8007FBE8
/* 3E23EBC 8007F98C 00000000 */   nop
.Llevel_11_8007F990:
/* 3E23EC0 8007F990 02000224 */  addiu      $v0, $zero, 0x2
/* 3E23EC4 8007F994 24006210 */  beq        $v1, $v0, .Llevel_11_8007FA28
/* 3E23EC8 8007F998 03000224 */   addiu     $v0, $zero, 0x3
/* 3E23ECC 8007F99C 6E006210 */  beq        $v1, $v0, .Llevel_11_8007FB58
/* 3E23ED0 8007F9A0 18004426 */   addiu     $a0, $s2, 0x18
/* 3E23ED4 8007F9A4 FAFE0108 */  j          .Llevel_11_8007FBE8
/* 3E23ED8 8007F9A8 00000000 */   nop
.Llevel_11_8007F9AC:
/* 3E23EDC 8007F9AC 540022A2 */  sb         $v0, 0x54($s1)
/* 3E23EE0 8007F9B0 550022A2 */  sb         $v0, 0x55($s1)
/* 3E23EE4 8007F9B4 0400448E */  lw         $a0, 0x4($s2)
/* 3E23EE8 8007F9B8 00000000 */  nop
/* 3E23EEC 8007F9BC 16008004 */  bltz       $a0, .Llevel_11_8007FA18
/* 3E23EF0 8007F9C0 40100400 */   sll       $v0, $a0, 1
/* 3E23EF4 8007F9C4 21104400 */  addu       $v0, $v0, $a0
/* 3E23EF8 8007F9C8 80100200 */  sll        $v0, $v0, 2
/* 3E23EFC 8007F9CC 23104400 */  subu       $v0, $v0, $a0
/* 3E23F00 8007F9D0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3E23F04 8007F9D4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3E23F08 8007F9D8 C0100200 */  sll        $v0, $v0, 3
/* 3E23F0C 8007F9DC 21104300 */  addu       $v0, $v0, $v1
/* 3E23F10 8007F9E0 0000448C */  lw         $a0, 0x0($v0)
/* 3E23F14 8007F9E4 00000000 */  nop
/* 3E23F18 8007F9E8 2400838C */  lw         $v1, 0x24($a0)
/* 3E23F1C 8007F9EC 0980023C */  lui        $v0, %hi(D_level_11_80091ED4)
/* 3E23F20 8007F9F0 D41E4224 */  addiu      $v0, $v0, %lo(D_level_11_80091ED4)
/* 3E23F24 8007F9F4 09006214 */  bne        $v1, $v0, .Llevel_11_8007FA1C
/* 3E23F28 8007F9F8 80000224 */   addiu     $v0, $zero, 0x80
/* 3E23F2C 8007F9FC 3400828C */  lw         $v0, 0x34($a0)
/* 3E23F30 8007FA00 00000000 */  nop
/* 3E23F34 8007FA04 04004010 */  beqz       $v0, .Llevel_11_8007FA18
/* 3E23F38 8007FA08 01000224 */   addiu     $v0, $zero, 0x1
/* 3E23F3C 8007FA0C 0780013C */  lui        $at, %hi(D_800715B3)
/* 3E23F40 8007FA10 B31522A0 */  sb         $v0, %lo(D_800715B3)($at)
/* 3E23F44 8007FA14 340080AC */  sw         $zero, 0x34($a0)
.Llevel_11_8007FA18:
/* 3E23F48 8007FA18 80000224 */  addiu      $v0, $zero, 0x80
.Llevel_11_8007FA1C:
/* 3E23F4C 8007FA1C 560022A2 */  sb         $v0, 0x56($s1)
/* 3E23F50 8007FA20 FAFE0108 */  j          .Llevel_11_8007FBE8
/* 3E23F54 8007FA24 570020A2 */   sb        $zero, 0x57($s1)
.Llevel_11_8007FA28:
/* 3E23F58 8007FA28 18004426 */  addiu      $a0, $s2, 0x18
/* 3E23F5C 8007FA2C 69D6000C */  jal        func_800359A4
/* 3E23F60 8007FA30 04000524 */   addiu     $a1, $zero, 0x4
/* 3E23F64 8007FA34 19004010 */  beqz       $v0, .Llevel_11_8007FA9C
/* 3E23F68 8007FA38 01000324 */   addiu     $v1, $zero, 0x1
/* 3E23F6C 8007FA3C 36002286 */  lh         $v0, 0x36($s1)
/* 3E23F70 8007FA40 540020A2 */  sb         $zero, 0x54($s1)
/* 3E23F74 8007FA44 550020A2 */  sb         $zero, 0x55($s1)
/* 3E23F78 8007FA48 560020A2 */  sb         $zero, 0x56($s1)
/* 3E23F7C 8007FA4C 570020A2 */  sb         $zero, 0x57($s1)
/* 3E23F80 8007FA50 480023A2 */  sb         $v1, 0x48($s1)
/* 3E23F84 8007FA54 80100200 */  sll        $v0, $v0, 2
/* 3E23F88 8007FA58 0780013C */  lui        $at, %hi(D_8006EE2C)
/* 3E23F8C 8007FA5C 21082200 */  addu       $at, $at, $v0
/* 3E23F90 8007FA60 2CEE228C */  lw         $v0, %lo(D_8006EE2C)($at)
/* 3E23F94 8007FA64 00000000 */  nop
/* 3E23F98 8007FA68 4000428C */  lw         $v0, 0x40($v0)
/* 3E23F9C 8007FA6C 00000000 */  nop
/* 3E23FA0 8007FA70 00004290 */  lbu        $v0, 0x0($v0)
/* 3E23FA4 8007FA74 3C0023A2 */  sb         $v1, 0x3C($s1)
/* 3E23FA8 8007FA78 3D0023A2 */  sb         $v1, 0x3D($s1)
/* 3E23FAC 8007FA7C 3E0020A2 */  sb         $zero, 0x3E($s1)
/* 3E23FB0 8007FA80 3F0023A2 */  sb         $v1, 0x3F($s1)
/* 3E23FB4 8007FA84 0200422C */  sltiu      $v0, $v0, 0x2
/* 3E23FB8 8007FA88 01004238 */  xori       $v0, $v0, 0x1
/* 3E23FBC 8007FA8C 23100200 */  negu       $v0, $v0
/* 3E23FC0 8007FA90 30004230 */  andi       $v0, $v0, 0x30
/* 3E23FC4 8007FA94 FAFE0108 */  j          .Llevel_11_8007FBE8
/* 3E23FC8 8007FA98 400022A2 */   sb        $v0, 0x40($s1)
.Llevel_11_8007FA9C:
/* 3E23FCC 8007FA9C 9171010C */  jal        func_8005C644
/* 3E23FD0 8007FAA0 00000000 */   nop
/* 3E23FD4 8007FAA4 0F004230 */  andi       $v0, $v0, 0xF
/* 3E23FD8 8007FAA8 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E23FDC 8007FAAC 9171010C */  jal        func_8005C644
/* 3E23FE0 8007FAB0 1000A2AF */   sw        $v0, 0x10($sp)
/* 3E23FE4 8007FAB4 0F004230 */  andi       $v0, $v0, 0xF
/* 3E23FE8 8007FAB8 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E23FEC 8007FABC 9171010C */  jal        func_8005C644
/* 3E23FF0 8007FAC0 1400A2AF */   sw        $v0, 0x14($sp)
/* 3E23FF4 8007FAC4 01000424 */  addiu      $a0, $zero, 0x1
/* 3E23FF8 8007FAC8 37000524 */  addiu      $a1, $zero, 0x37
/* 3E23FFC 8007FACC 0C002626 */  addiu      $a2, $s1, 0xC
/* 3E24000 8007FAD0 1000A727 */  addiu      $a3, $sp, 0x10
/* 3E24004 8007FAD4 0F004230 */  andi       $v0, $v0, 0xF
/* 3E24008 8007FAD8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 3E2400C 8007FADC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 3E24010 8007FAE0 08004224 */  addiu      $v0, $v0, 0x8
/* 3E24014 8007FAE4 09F86000 */  jalr       $v1
/* 3E24018 8007FAE8 1800A2AF */   sw        $v0, 0x18($sp)
/* 3E2401C 8007FAEC 21804000 */  addu       $s0, $v0, $zero
/* 3E24020 8007FAF0 08000012 */  beqz       $s0, .Llevel_11_8007FB14
/* 3E24024 8007FAF4 07000224 */   addiu     $v0, $zero, 0x7
/* 3E24028 8007FAF8 9171010C */  jal        func_8005C644
/* 3E2402C 8007FAFC 110002A2 */   sb        $v0, 0x11($s0)
/* 3E24030 8007FB00 08000396 */  lhu        $v1, 0x8($s0)
/* 3E24034 8007FB04 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E24038 8007FB08 80006324 */  addiu      $v1, $v1, 0x80
/* 3E2403C 8007FB0C 21186200 */  addu       $v1, $v1, $v0
/* 3E24040 8007FB10 080003A6 */  sh         $v1, 0x8($s0)
.Llevel_11_8007FB14:
/* 3E24044 8007FB14 54002392 */  lbu        $v1, 0x54($s1)
/* 3E24048 8007FB18 00000000 */  nop
/* 3E2404C 8007FB1C 0500622C */  sltiu      $v0, $v1, 0x5
/* 3E24050 8007FB20 03004014 */  bnez       $v0, .Llevel_11_8007FB30
/* 3E24054 8007FB24 FCFF6224 */   addiu     $v0, $v1, -0x4
/* 3E24058 8007FB28 CDFE0108 */  j          .Llevel_11_8007FB34
/* 3E2405C 8007FB2C 540022A2 */   sb        $v0, 0x54($s1)
.Llevel_11_8007FB30:
/* 3E24060 8007FB30 540020A2 */  sb         $zero, 0x54($s1)
.Llevel_11_8007FB34:
/* 3E24064 8007FB34 54002292 */  lbu        $v0, 0x54($s1)
/* 3E24068 8007FB38 54002392 */  lbu        $v1, 0x54($s1)
/* 3E2406C 8007FB3C 560022A2 */  sb         $v0, 0x56($s1)
/* 3E24070 8007FB40 550022A2 */  sb         $v0, 0x55($s1)
/* 3E24074 8007FB44 7F000224 */  addiu      $v0, $zero, 0x7F
/* 3E24078 8007FB48 23104300 */  subu       $v0, $v0, $v1
/* 3E2407C 8007FB4C C3100200 */  sra        $v0, $v0, 3
/* 3E24080 8007FB50 FAFE0108 */  j          .Llevel_11_8007FBE8
/* 3E24084 8007FB54 570022A2 */   sb        $v0, 0x57($s1)
.Llevel_11_8007FB58:
/* 3E24088 8007FB58 69D6000C */  jal        func_800359A4
/* 3E2408C 8007FB5C 04000524 */   addiu     $a1, $zero, 0x4
/* 3E24090 8007FB60 03004010 */  beqz       $v0, .Llevel_11_8007FB70
/* 3E24094 8007FB64 01000224 */   addiu     $v0, $zero, 0x1
/* 3E24098 8007FB68 FAFE0108 */  j          .Llevel_11_8007FBE8
/* 3E2409C 8007FB6C 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_11_8007FB70:
/* 3E240A0 8007FB70 9171010C */  jal        func_8005C644
/* 3E240A4 8007FB74 00000000 */   nop
/* 3E240A8 8007FB78 0F004230 */  andi       $v0, $v0, 0xF
/* 3E240AC 8007FB7C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E240B0 8007FB80 9171010C */  jal        func_8005C644
/* 3E240B4 8007FB84 2000A2AF */   sw        $v0, 0x20($sp)
/* 3E240B8 8007FB88 0F004230 */  andi       $v0, $v0, 0xF
/* 3E240BC 8007FB8C F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3E240C0 8007FB90 9171010C */  jal        func_8005C644
/* 3E240C4 8007FB94 2400A2AF */   sw        $v0, 0x24($sp)
/* 3E240C8 8007FB98 01000424 */  addiu      $a0, $zero, 0x1
/* 3E240CC 8007FB9C 01000524 */  addiu      $a1, $zero, 0x1
/* 3E240D0 8007FBA0 0C002626 */  addiu      $a2, $s1, 0xC
/* 3E240D4 8007FBA4 2000A727 */  addiu      $a3, $sp, 0x20
/* 3E240D8 8007FBA8 0F004230 */  andi       $v0, $v0, 0xF
/* 3E240DC 8007FBAC 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 3E240E0 8007FBB0 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 3E240E4 8007FBB4 08004224 */  addiu      $v0, $v0, 0x8
/* 3E240E8 8007FBB8 09F86000 */  jalr       $v1
/* 3E240EC 8007FBBC 2800A2AF */   sw        $v0, 0x28($sp)
/* 3E240F0 8007FBC0 21804000 */  addu       $s0, $v0, $zero
/* 3E240F4 8007FBC4 08000012 */  beqz       $s0, .Llevel_11_8007FBE8
/* 3E240F8 8007FBC8 06000224 */   addiu     $v0, $zero, 0x6
/* 3E240FC 8007FBCC 9171010C */  jal        func_8005C644
/* 3E24100 8007FBD0 110002A2 */   sb        $v0, 0x11($s0)
/* 3E24104 8007FBD4 08000396 */  lhu        $v1, 0x8($s0)
/* 3E24108 8007FBD8 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E2410C 8007FBDC 80006324 */  addiu      $v1, $v1, 0x80
/* 3E24110 8007FBE0 21186200 */  addu       $v1, $v1, $v0
/* 3E24114 8007FBE4 080003A6 */  sh         $v1, 0x8($s0)
.Llevel_11_8007FBE8:
/* 3E24118 8007FBE8 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 3E2411C 8007FBEC 3800B28F */  lw         $s2, 0x38($sp)
/* 3E24120 8007FBF0 3400B18F */  lw         $s1, 0x34($sp)
/* 3E24124 8007FBF4 3000B08F */  lw         $s0, 0x30($sp)
/* 3E24128 8007FBF8 4000BD27 */  addiu      $sp, $sp, 0x40
/* 3E2412C 8007FBFC 0800E003 */  jr         $ra
/* 3E24130 8007FC00 00000000 */   nop
.size func_level_11_8007F630, . - func_level_11_8007F630
