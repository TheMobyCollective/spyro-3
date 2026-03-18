.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007D9F4
/* 7AA9724 8007D9F4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 7AA9728 8007D9F8 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AA972C 8007D9FC 21888000 */  addu       $s1, $a0, $zero
/* 7AA9730 8007DA00 1800BFAF */  sw         $ra, 0x18($sp)
/* 7AA9734 8007DA04 1000B0AF */  sw         $s0, 0x10($sp)
/* 7AA9738 8007DA08 0000308E */  lw         $s0, 0x0($s1)
/* 7AA973C 8007DA0C 00000000 */  nop
/* 7AA9740 8007DA10 0C000292 */  lbu        $v0, 0xC($s0)
/* 7AA9744 8007DA14 00000000 */  nop
/* 7AA9748 8007DA18 52004010 */  beqz       $v0, .Llevel_37_8007DB64
/* 7AA974C 8007DA1C 00000000 */   nop
/* 7AA9750 8007DA20 4D002292 */  lbu        $v0, 0x4D($s1)
/* 7AA9754 8007DA24 00000000 */  nop
/* 7AA9758 8007DA28 4E004010 */  beqz       $v0, .Llevel_37_8007DB64
/* 7AA975C 8007DA2C 00000000 */   nop
/* 7AA9760 8007DA30 00000386 */  lh         $v1, 0x0($s0)
/* 7AA9764 8007DA34 0C00228E */  lw         $v0, 0xC($s1)
/* 7AA9768 8007DA38 00000000 */  nop
/* 7AA976C 8007DA3C 21104300 */  addu       $v0, $v0, $v1
/* 7AA9770 8007DA40 0C0022AE */  sw         $v0, 0xC($s1)
/* 7AA9774 8007DA44 02000386 */  lh         $v1, 0x2($s0)
/* 7AA9778 8007DA48 1000228E */  lw         $v0, 0x10($s1)
/* 7AA977C 8007DA4C 00000000 */  nop
/* 7AA9780 8007DA50 21104300 */  addu       $v0, $v0, $v1
/* 7AA9784 8007DA54 100022AE */  sw         $v0, 0x10($s1)
/* 7AA9788 8007DA58 0D000392 */  lbu        $v1, 0xD($s0)
/* 7AA978C 8007DA5C 04000296 */  lhu        $v0, 0x4($s0)
/* 7AA9790 8007DA60 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 7AA9794 8007DA64 FBFF4224 */  addiu      $v0, $v0, -0x5
/* 7AA9798 8007DA68 0D0003A2 */  sb         $v1, 0xD($s0)
/* 7AA979C 8007DA6C FF006330 */  andi       $v1, $v1, 0xFF
/* 7AA97A0 8007DA70 04006014 */  bnez       $v1, .Llevel_37_8007DA84
/* 7AA97A4 8007DA74 040002A6 */   sh        $v0, 0x4($s0)
/* 7AA97A8 8007DA78 000000A6 */  sh         $zero, 0x0($s0)
/* 7AA97AC 8007DA7C 020000A6 */  sh         $zero, 0x2($s0)
/* 7AA97B0 8007DA80 040000A6 */  sh         $zero, 0x4($s0)
.Llevel_37_8007DA84:
/* 7AA97B4 8007DA84 04000286 */  lh         $v0, 0x4($s0)
/* 7AA97B8 8007DA88 00000000 */  nop
/* 7AA97BC 8007DA8C E8FF4228 */  slti       $v0, $v0, -0x18
/* 7AA97C0 8007DA90 02004010 */  beqz       $v0, .Llevel_37_8007DA9C
/* 7AA97C4 8007DA94 E8FF0224 */   addiu     $v0, $zero, -0x18
/* 7AA97C8 8007DA98 040002A6 */  sh         $v0, 0x4($s0)
.Llevel_37_8007DA9C:
/* 7AA97CC 8007DA9C 1000028E */  lw         $v0, 0x10($s0)
/* 7AA97D0 8007DAA0 00000000 */  nop
/* 7AA97D4 8007DAA4 04004014 */  bnez       $v0, .Llevel_37_8007DAB8
/* 7AA97D8 8007DAA8 00000000 */   nop
/* 7AA97DC 8007DAAC 46002292 */  lbu        $v0, 0x46($s1)
/* 7AA97E0 8007DAB0 CEF60108 */  j          .Llevel_37_8007DB38
/* 7AA97E4 8007DAB4 0C004224 */   addiu     $v0, $v0, 0xC
.Llevel_37_8007DAB8:
/* 7AA97E8 8007DAB8 04000286 */  lh         $v0, 0x4($s0)
/* 7AA97EC 8007DABC 00000000 */  nop
/* 7AA97F0 8007DAC0 1F004104 */  bgez       $v0, .Llevel_37_8007DB40
/* 7AA97F4 8007DAC4 00000000 */   nop
/* 7AA97F8 8007DAC8 45002292 */  lbu        $v0, 0x45($s1)
/* 7AA97FC 8007DACC 0E000486 */  lh         $a0, 0xE($s0)
/* 7AA9800 8007DAD0 00000000 */  nop
/* 7AA9804 8007DAD4 21184400 */  addu       $v1, $v0, $a0
/* 7AA9808 8007DAD8 20000224 */  addiu      $v0, $zero, 0x20
/* 7AA980C 8007DADC 03006210 */  beq        $v1, $v0, .Llevel_37_8007DAEC
/* 7AA9810 8007DAE0 E0000224 */   addiu     $v0, $zero, 0xE0
/* 7AA9814 8007DAE4 03006214 */  bne        $v1, $v0, .Llevel_37_8007DAF4
/* 7AA9818 8007DAE8 00000000 */   nop
.Llevel_37_8007DAEC:
/* 7AA981C 8007DAEC 23100400 */  negu       $v0, $a0
/* 7AA9820 8007DAF0 0E0002A6 */  sh         $v0, 0xE($s0)
.Llevel_37_8007DAF4:
/* 7AA9824 8007DAF4 45002292 */  lbu        $v0, 0x45($s1)
/* 7AA9828 8007DAF8 0E000392 */  lbu        $v1, 0xE($s0)
/* 7AA982C 8007DAFC 00000000 */  nop
/* 7AA9830 8007DB00 21104300 */  addu       $v0, $v0, $v1
/* 7AA9834 8007DB04 450022A2 */  sb         $v0, 0x45($s1)
/* 7AA9838 8007DB08 0E000386 */  lh         $v1, 0xE($s0)
/* 7AA983C 8007DB0C 1000228E */  lw         $v0, 0x10($s1)
/* 7AA9840 8007DB10 00000000 */  nop
/* 7AA9844 8007DB14 21104300 */  addu       $v0, $v0, $v1
/* 7AA9848 8007DB18 9171010C */  jal        rand
/* 7AA984C 8007DB1C 100022AE */   sw        $v0, 0x10($s1)
/* 7AA9850 8007DB20 01004230 */  andi       $v0, $v0, 0x1
/* 7AA9854 8007DB24 05004010 */  beqz       $v0, .Llevel_37_8007DB3C
/* 7AA9858 8007DB28 00000000 */   nop
/* 7AA985C 8007DB2C 46002292 */  lbu        $v0, 0x46($s1)
/* 7AA9860 8007DB30 00000000 */  nop
/* 7AA9864 8007DB34 01004224 */  addiu      $v0, $v0, 0x1
.Llevel_37_8007DB38:
/* 7AA9868 8007DB38 460022A2 */  sb         $v0, 0x46($s1)
.Llevel_37_8007DB3C:
/* 7AA986C 8007DB3C 04000286 */  lh         $v0, 0x4($s0)
.Llevel_37_8007DB40:
/* 7AA9870 8007DB40 1400238E */  lw         $v1, 0x14($s1)
/* 7AA9874 8007DB44 00000000 */  nop
/* 7AA9878 8007DB48 21186200 */  addu       $v1, $v1, $v0
/* 7AA987C 8007DB4C 140023AE */  sw         $v1, 0x14($s1)
/* 7AA9880 8007DB50 0C000292 */  lbu        $v0, 0xC($s0)
/* 7AA9884 8007DB54 00000000 */  nop
/* 7AA9888 8007DB58 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 7AA988C 8007DB5C DBF60108 */  j          .Llevel_37_8007DB6C
/* 7AA9890 8007DB60 0C0002A2 */   sb        $v0, 0xC($s0)
.Llevel_37_8007DB64:
/* 7AA9894 8007DB64 C656010C */  jal        func_80055B18
/* 7AA9898 8007DB68 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_8007DB6C:
/* 7AA989C 8007DB6C 1800BF8F */  lw         $ra, 0x18($sp)
/* 7AA98A0 8007DB70 1400B18F */  lw         $s1, 0x14($sp)
/* 7AA98A4 8007DB74 1000B08F */  lw         $s0, 0x10($sp)
/* 7AA98A8 8007DB78 2000BD27 */  addiu      $sp, $sp, 0x20
/* 7AA98AC 8007DB7C 0800E003 */  jr         $ra
/* 7AA98B0 8007DB80 00000000 */   nop
.size func_level_37_8007D9F4, . - func_level_37_8007D9F4
