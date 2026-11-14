.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_110_level_23
/* 5AA4C14 800886E4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5AA4C18 800886E8 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 5AA4C1C 800886EC 21888000 */  addu       $s1, $a0, $zero
/* 5AA4C20 800886F0 0A000324 */  addiu      $v1, $zero, 0xA
/* 5AA4C24 800886F4 4000BFAF */  sw         $ra, 0x40($sp)
/* 5AA4C28 800886F8 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 5AA4C2C 800886FC 3800B4AF */  sw         $s4, 0x38($sp)
/* 5AA4C30 80088700 3400B3AF */  sw         $s3, 0x34($sp)
/* 5AA4C34 80088704 3000B2AF */  sw         $s2, 0x30($sp)
/* 5AA4C38 80088708 2800B0AF */  sw         $s0, 0x28($sp)
/* 5AA4C3C 8008870C 49002292 */  lbu        $v0, 0x49($s1)
/* 5AA4C40 80088710 0000338E */  lw         $s3, 0x0($s1)
/* 5AA4C44 80088714 03004314 */  bne        $v0, $v1, .Llevel_23_80088724
/* 5AA4C48 80088718 02000224 */   addiu     $v0, $zero, 0x2
/* 5AA4C4C 8008871C CA210208 */  j          .Llevel_23_80088728
/* 5AA4C50 80088720 180020AE */   sw        $zero, 0x18($s1)
.Llevel_23_80088724:
/* 5AA4C54 80088724 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_23_80088728:
/* 5AA4C58 80088728 1800228E */  lw         $v0, 0x18($s1)
/* 5AA4C5C 8008872C 00000000 */  nop
/* 5AA4C60 80088730 68004010 */  beqz       $v0, .Llevel_23_800888D4
/* 5AA4C64 80088734 21800000 */   addu      $s0, $zero, $zero
/* 5AA4C68 80088738 21202002 */  addu       $a0, $s1, $zero
/* 5AA4C6C 8008873C 04000524 */  addiu      $a1, $zero, 0x4
/* 5AA4C70 80088740 21900000 */  addu       $s2, $zero, $zero
/* 5AA4C74 80088744 01001424 */  addiu      $s4, $zero, 0x1
/* 5AA4C78 80088748 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5AA4C7C 8008874C 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5AA4C80 80088750 02001524 */  addiu      $s5, $zero, 0x2
/* 5AA4C84 80088754 4957010C */  jal        func_80055D24
/* 5AA4C88 80088758 460022A2 */   sb        $v0, 0x46($s1)
.Llevel_23_8008875C:
/* 5AA4C8C 8008875C 0780023C */  lui        $v0, %hi(D_8006C578)
/* 5AA4C90 80088760 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 5AA4C94 80088764 0780033C */  lui        $v1, %hi(D_8006C574)
/* 5AA4C98 80088768 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 5AA4C9C 8008876C 00000000 */  nop
/* 5AA4CA0 80088770 23104300 */  subu       $v0, $v0, $v1
/* 5AA4CA4 80088774 15004228 */  slti       $v0, $v0, 0x15
/* 5AA4CA8 80088778 37004014 */  bnez       $v0, .Llevel_23_80088858
/* 5AA4CAC 8008877C 08000424 */   addiu     $a0, $zero, 0x8
/* 5AA4CB0 80088780 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 5AA4CB4 80088784 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 5AA4CB8 80088788 00000000 */  nop
/* 5AA4CBC 8008878C 09F84000 */  jalr       $v0
/* 5AA4CC0 80088790 21282002 */   addu      $a1, $s1, $zero
/* 5AA4CC4 80088794 21804000 */  addu       $s0, $v0, $zero
/* 5AA4CC8 80088798 2B000012 */  beqz       $s0, .Llevel_23_80088848
/* 5AA4CCC 8008879C 2C000224 */   addiu     $v0, $zero, 0x2C
/* 5AA4CD0 800887A0 4F0002A2 */  sb         $v0, 0x4F($s0)
/* 5AA4CD4 800887A4 3F000224 */  addiu      $v0, $zero, 0x3F
/* 5AA4CD8 800887A8 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 5AA4CDC 800887AC FF000224 */  addiu      $v0, $zero, 0xFF
/* 5AA4CE0 800887B0 4A0002A2 */  sb         $v0, 0x4A($s0)
/* 5AA4CE4 800887B4 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 5AA4CE8 800887B8 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 5AA4CEC 800887BC 11005412 */  beq        $s2, $s4, .Llevel_23_80088804
/* 5AA4CF0 800887C0 460002A2 */   sb        $v0, 0x46($s0)
/* 5AA4CF4 800887C4 0200422A */  slti       $v0, $s2, 0x2
/* 5AA4CF8 800887C8 05004010 */  beqz       $v0, .Llevel_23_800887E0
/* 5AA4CFC 800887CC 00000000 */   nop
/* 5AA4D00 800887D0 07004012 */  beqz       $s2, .Llevel_23_800887F0
/* 5AA4D04 800887D4 A6010224 */   addiu     $v0, $zero, 0x1A6
/* 5AA4D08 800887D8 0F220208 */  j          .Llevel_23_8008883C
/* 5AA4D0C 800887DC 0C000426 */   addiu     $a0, $s0, 0xC
.Llevel_23_800887E0:
/* 5AA4D10 800887E0 0F005512 */  beq        $s2, $s5, .Llevel_23_80088820
/* 5AA4D14 800887E4 0A000224 */   addiu     $v0, $zero, 0xA
/* 5AA4D18 800887E8 0F220208 */  j          .Llevel_23_8008883C
/* 5AA4D1C 800887EC 0C000426 */   addiu     $a0, $s0, 0xC
.Llevel_23_800887F0:
/* 5AA4D20 800887F0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA4D24 800887F4 32000224 */  addiu      $v0, $zero, 0x32
/* 5AA4D28 800887F8 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AA4D2C 800887FC 0C220208 */  j          .Llevel_23_80088830
/* 5AA4D30 80088800 80010224 */   addiu     $v0, $zero, 0x180
.Llevel_23_80088804:
/* 5AA4D34 80088804 74FF0224 */  addiu      $v0, $zero, -0x8C
/* 5AA4D38 80088808 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AA4D3C 8008880C 00040224 */  addiu      $v0, $zero, 0x400
/* 5AA4D40 80088810 1000A0AF */  sw         $zero, 0x10($sp)
/* 5AA4D44 80088814 1800A2AF */  sw         $v0, 0x18($sp)
/* 5AA4D48 80088818 0E220208 */  j          .Llevel_23_80088838
/* 5AA4D4C 8008881C 3C0015A2 */   sb        $s5, 0x3C($s0)
.Llevel_23_80088820:
/* 5AA4D50 80088820 1000A2AF */  sw         $v0, 0x10($sp)
/* 5AA4D54 80088824 B8FE0224 */  addiu      $v0, $zero, -0x148
/* 5AA4D58 80088828 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AA4D5C 8008882C 00020224 */  addiu      $v0, $zero, 0x200
.Llevel_23_80088830:
/* 5AA4D60 80088830 1800A2AF */  sw         $v0, 0x18($sp)
/* 5AA4D64 80088834 3C0014A2 */  sb         $s4, 0x3C($s0)
.Llevel_23_80088838:
/* 5AA4D68 80088838 0C000426 */  addiu      $a0, $s0, 0xC
.Llevel_23_8008883C:
/* 5AA4D6C 8008883C 21288000 */  addu       $a1, $a0, $zero
/* 5AA4D70 80088840 653C010C */  jal        func_8004F194
/* 5AA4D74 80088844 1000A627 */   addiu     $a2, $sp, 0x10
.Llevel_23_80088848:
/* 5AA4D78 80088848 01005226 */  addiu      $s2, $s2, 0x1
/* 5AA4D7C 8008884C 0300422A */  slti       $v0, $s2, 0x3
/* 5AA4D80 80088850 C2FF4014 */  bnez       $v0, .Llevel_23_8008875C
/* 5AA4D84 80088854 00000000 */   nop
.Llevel_23_80088858:
/* 5AA4D88 80088858 04000012 */  beqz       $s0, .Llevel_23_8008886C
/* 5AA4D8C 8008885C 21200002 */   addu      $a0, $s0, $zero
/* 5AA4D90 80088860 21280000 */  addu       $a1, $zero, $zero
/* 5AA4D94 80088864 AFEE000C */  jal        func_8003BABC
/* 5AA4D98 80088868 21300000 */   addu      $a2, $zero, $zero
.Llevel_23_8008886C:
/* 5AA4D9C 8008886C 21202002 */  addu       $a0, $s1, $zero
/* 5AA4DA0 80088870 6EDA000C */  jal        func_800369B8
/* 5AA4DA4 80088874 64000524 */   addiu     $a1, $zero, 0x64
/* 5AA4DA8 80088878 12006286 */  lh         $v0, 0x12($s3)
/* 5AA4DAC 8008887C 00000000 */  nop
/* 5AA4DB0 80088880 0F004010 */  beqz       $v0, .Llevel_23_800888C0
/* 5AA4DB4 80088884 FF000224 */   addiu     $v0, $zero, 0xFF
/* 5AA4DB8 80088888 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 5AA4DBC 8008888C F4010224 */  addiu      $v0, $zero, 0x1F4
/* 5AA4DC0 80088890 180020AE */  sw         $zero, 0x18($s1)
/* 5AA4DC4 80088894 100060A6 */  sh         $zero, 0x10($s3)
/* 5AA4DC8 80088898 0C0062AE */  sw         $v0, 0xC($s3)
/* 5AA4DCC 8008889C 1400228E */  lw         $v0, 0x14($s1)
/* 5AA4DD0 800888A0 4C0020A2 */  sb         $zero, 0x4C($s1)
/* 5AA4DD4 800888A4 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 5AA4DD8 800888A8 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 5AA4DDC 800888AC 00404224 */  addiu      $v0, $v0, 0x4000
/* 5AA4DE0 800888B0 140022AE */  sw         $v0, 0x14($s1)
/* 5AA4DE4 800888B4 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA4DE8 800888B8 05006210 */  beq        $v1, $v0, .Llevel_23_800888D0
/* 5AA4DEC 800888BC 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_23_800888C0:
/* 5AA4DF0 800888C0 C656010C */  jal        func_80055B18
/* 5AA4DF4 800888C4 21202002 */   addu      $a0, $s1, $zero
/* 5AA4DF8 800888C8 83220208 */  j          .Llevel_23_80088A0C
/* 5AA4DFC 800888CC 00000000 */   nop
.Llevel_23_800888D0:
/* 5AA4E00 800888D0 480022A2 */  sb         $v0, 0x48($s1)
.Llevel_23_800888D4:
/* 5AA4E04 800888D4 48002392 */  lbu        $v1, 0x48($s1)
/* 5AA4E08 800888D8 02000224 */  addiu      $v0, $zero, 0x2
/* 5AA4E0C 800888DC 0A006214 */  bne        $v1, $v0, .Llevel_23_80088908
/* 5AA4E10 800888E0 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA4E14 800888E4 0C006426 */  addiu      $a0, $s3, 0xC
/* 5AA4E18 800888E8 69D6000C */  jal        func_800359A4
/* 5AA4E1C 800888EC 04000524 */   addiu     $a1, $zero, 0x4
/* 5AA4E20 800888F0 46004010 */  beqz       $v0, .Llevel_23_80088A0C
/* 5AA4E24 800888F4 01000224 */   addiu     $v0, $zero, 0x1
/* 5AA4E28 800888F8 480022A2 */  sb         $v0, 0x48($s1)
/* 5AA4E2C 800888FC 20000224 */  addiu      $v0, $zero, 0x20
/* 5AA4E30 80088900 83220208 */  j          .Llevel_23_80088A0C
/* 5AA4E34 80088904 4C0022A2 */   sb        $v0, 0x4C($s1)
.Llevel_23_80088908:
/* 5AA4E38 80088908 40006214 */  bne        $v1, $v0, .Llevel_23_80088A0C
/* 5AA4E3C 8008890C 00000000 */   nop
/* 5AA4E40 80088910 10006286 */  lh         $v0, 0x10($s3)
/* 5AA4E44 80088914 1400238E */  lw         $v1, 0x14($s1)
/* 5AA4E48 80088918 00000000 */  nop
/* 5AA4E4C 8008891C 23186200 */  subu       $v1, $v1, $v0
/* 5AA4E50 80088920 140023AE */  sw         $v1, 0x14($s1)
/* 5AA4E54 80088924 10006286 */  lh         $v0, 0x10($s3)
/* 5AA4E58 80088928 00000000 */  nop
/* 5AA4E5C 8008892C 21184000 */  addu       $v1, $v0, $zero
/* 5AA4E60 80088930 8A024228 */  slti       $v0, $v0, 0x28A
/* 5AA4E64 80088934 02004010 */  beqz       $v0, .Llevel_23_80088940
/* 5AA4E68 80088938 10006224 */   addiu     $v0, $v1, 0x10
/* 5AA4E6C 8008893C 100062A6 */  sh         $v0, 0x10($s3)
.Llevel_23_80088940:
/* 5AA4E70 80088940 1400238E */  lw         $v1, 0x14($s1)
/* 5AA4E74 80088944 0800628E */  lw         $v0, 0x8($s3)
/* 5AA4E78 80088948 00000000 */  nop
/* 5AA4E7C 8008894C 2A104300 */  slt        $v0, $v0, $v1
/* 5AA4E80 80088950 2B004014 */  bnez       $v0, .Llevel_23_80088A00
/* 5AA4E84 80088954 21300000 */   addu      $a2, $zero, $zero
/* 5AA4E88 80088958 0C00238E */  lw         $v1, 0xC($s1)
/* 5AA4E8C 8008895C 0780043C */  lui        $a0, %hi(D_8006E020)
/* 5AA4E90 80088960 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 5AA4E94 80088964 1000228E */  lw         $v0, 0x10($s1)
/* 5AA4E98 80088968 0780053C */  lui        $a1, %hi(D_8006E024)
/* 5AA4E9C 8008896C 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 5AA4EA0 80088970 23206400 */  subu       $a0, $v1, $a0
/* 5AA4EA4 80088974 203A010C */  jal        func_8004E880
/* 5AA4EA8 80088978 23284500 */   subu      $a1, $v0, $a1
/* 5AA4EAC 8008897C 0780043C */  lui        $a0, %hi(D_8006E040)
/* 5AA4EB0 80088980 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 5AA4EB4 80088984 21284000 */  addu       $a1, $v0, $zero
/* 5AA4EB8 80088988 00240400 */  sll        $a0, $a0, 16
/* 5AA4EBC 8008898C 993C010C */  jal        func_8004F264
/* 5AA4EC0 80088990 03250400 */   sra       $a0, $a0, 20
/* 5AA4EC4 80088994 10004228 */  slti       $v0, $v0, 0x10
/* 5AA4EC8 80088998 0E004010 */  beqz       $v0, .Llevel_23_800889D4
/* 5AA4ECC 8008899C 21202002 */   addu      $a0, $s1, $zero
/* 5AA4ED0 800889A0 0780053C */  lui        $a1, %hi(D_80070328)
/* 5AA4ED4 800889A4 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 5AA4ED8 800889A8 CD3C010C */  jal        func_8004F334
/* 5AA4EDC 800889AC 0C002426 */   addiu     $a0, $s1, 0xC
/* 5AA4EE0 800889B0 00284228 */  slti       $v0, $v0, 0x2800
/* 5AA4EE4 800889B4 06004010 */  beqz       $v0, .Llevel_23_800889D0
/* 5AA4EE8 800889B8 14000224 */   addiu     $v0, $zero, 0x14
/* 5AA4EEC 800889BC 0780013C */  lui        $at, %hi(D_8006E1D8)
/* 5AA4EF0 800889C0 D8E122AC */  sw         $v0, %lo(D_8006E1D8)($at)
/* 5AA4EF4 800889C4 00100224 */  addiu      $v0, $zero, 0x1000
/* 5AA4EF8 800889C8 0780013C */  lui        $at, %hi(D_8006E1D4)
/* 5AA4EFC 800889CC D4E122AC */  sw         $v0, %lo(D_8006E1D4)($at)
.Llevel_23_800889D0:
/* 5AA4F00 800889D0 21202002 */  addu       $a0, $s1, $zero
.Llevel_23_800889D4:
/* 5AA4F04 800889D4 21280000 */  addu       $a1, $zero, $zero
/* 5AA4F08 800889D8 AFEE000C */  jal        func_8003BABC
/* 5AA4F0C 800889DC 21300000 */   addu      $a2, $zero, $zero
/* 5AA4F10 800889E0 21202002 */  addu       $a0, $s1, $zero
/* 5AA4F14 800889E4 6EDA000C */  jal        func_800369B8
/* 5AA4F18 800889E8 28000524 */   addiu     $a1, $zero, 0x28
/* 5AA4F1C 800889EC 0800638E */  lw         $v1, 0x8($s3)
/* 5AA4F20 800889F0 20000224 */  addiu      $v0, $zero, 0x20
/* 5AA4F24 800889F4 480020A2 */  sb         $zero, 0x48($s1)
/* 5AA4F28 800889F8 4A0022A2 */  sb         $v0, 0x4A($s1)
/* 5AA4F2C 800889FC 140023AE */  sw         $v1, 0x14($s1)
.Llevel_23_80088A00:
/* 5AA4F30 80088A00 21202002 */  addu       $a0, $s1, $zero
/* 5AA4F34 80088A04 4957010C */  jal        func_80055D24
/* 5AA4F38 80088A08 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_23_80088A0C:
/* 5AA4F3C 80088A0C 4000BF8F */  lw         $ra, 0x40($sp)
/* 5AA4F40 80088A10 3C00B58F */  lw         $s5, 0x3C($sp)
/* 5AA4F44 80088A14 3800B48F */  lw         $s4, 0x38($sp)
/* 5AA4F48 80088A18 3400B38F */  lw         $s3, 0x34($sp)
/* 5AA4F4C 80088A1C 3000B28F */  lw         $s2, 0x30($sp)
/* 5AA4F50 80088A20 2C00B18F */  lw         $s1, 0x2C($sp)
/* 5AA4F54 80088A24 2800B08F */  lw         $s0, 0x28($sp)
/* 5AA4F58 80088A28 4800BD27 */  addiu      $sp, $sp, 0x48
/* 5AA4F5C 80088A2C 0800E003 */  jr         $ra
/* 5AA4F60 80088A30 00000000 */   nop
.size MobyUpdate_110_level_23, . - MobyUpdate_110_level_23
