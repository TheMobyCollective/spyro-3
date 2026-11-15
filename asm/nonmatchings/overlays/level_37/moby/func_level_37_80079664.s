.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_237_level_37
/* 7AA5394 80079664 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 7AA5398 80079668 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 7AA539C 8007966C 21888000 */  addu       $s1, $a0, $zero
/* 7AA53A0 80079670 3800BFAF */  sw         $ra, 0x38($sp)
/* 7AA53A4 80079674 3400B3AF */  sw         $s3, 0x34($sp)
/* 7AA53A8 80079678 3000B2AF */  sw         $s2, 0x30($sp)
/* 7AA53AC 8007967C 2800B0AF */  sw         $s0, 0x28($sp)
/* 7AA53B0 80079680 48002392 */  lbu        $v1, 0x48($s1)
/* 7AA53B4 80079684 0000328E */  lw         $s2, 0x0($s1)
/* 7AA53B8 80079688 05006010 */  beqz       $v1, .Llevel_37_800796A0
/* 7AA53BC 8007968C 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA53C0 80079690 5A006210 */  beq        $v1, $v0, .Llevel_37_800797FC
/* 7AA53C4 80079694 0C002426 */   addiu     $a0, $s1, 0xC
/* 7AA53C8 80079698 09E60108 */  j          .Llevel_37_80079824
/* 7AA53CC 8007969C 00000000 */   nop
.Llevel_37_800796A0:
/* 7AA53D0 800796A0 0C00228E */  lw         $v0, 0xC($s1)
/* 7AA53D4 800796A4 00000000 */  nop
/* 7AA53D8 800796A8 00084228 */  slti       $v0, $v0, 0x800
/* 7AA53DC 800796AC 5B004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA53E0 800796B0 00000000 */   nop
/* 7AA53E4 800796B4 1000228E */  lw         $v0, 0x10($s1)
/* 7AA53E8 800796B8 00000000 */  nop
/* 7AA53EC 800796BC 00084228 */  slti       $v0, $v0, 0x800
/* 7AA53F0 800796C0 56004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA53F4 800796C4 00000000 */   nop
/* 7AA53F8 800796C8 1400228E */  lw         $v0, 0x14($s1)
/* 7AA53FC 800796CC 00000000 */  nop
/* 7AA5400 800796D0 00084228 */  slti       $v0, $v0, 0x800
/* 7AA5404 800796D4 51004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA5408 800796D8 0C004426 */   addiu     $a0, $s2, 0xC
/* 7AA540C 800796DC 69D6000C */  jal        func_800359A4
/* 7AA5410 800796E0 04000524 */   addiu     $a1, $zero, 0x4
/* 7AA5414 800796E4 4D004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA5418 800796E8 0300033C */   lui       $v1, (0x3D400 >> 16)
/* 7AA541C 800796EC 0C00228E */  lw         $v0, 0xC($s1)
/* 7AA5420 800796F0 00D46334 */  ori        $v1, $v1, (0x3D400 & 0xFFFF)
/* 7AA5424 800796F4 2A106200 */  slt        $v0, $v1, $v0
/* 7AA5428 800796F8 48004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA542C 800796FC 00000000 */   nop
/* 7AA5430 80079700 1000228E */  lw         $v0, 0x10($s1)
/* 7AA5434 80079704 00000000 */  nop
/* 7AA5438 80079708 2A106200 */  slt        $v0, $v1, $v0
/* 7AA543C 8007970C 43004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA5440 80079710 0100023C */   lui       $v0, (0x1E000 >> 16)
/* 7AA5444 80079714 1400238E */  lw         $v1, 0x14($s1)
/* 7AA5448 80079718 00E04234 */  ori        $v0, $v0, (0x1E000 & 0xFFFF)
/* 7AA544C 8007971C 2A104300 */  slt        $v0, $v0, $v1
/* 7AA5450 80079720 3E004014 */  bnez       $v0, .Llevel_37_8007981C
/* 7AA5454 80079724 00000000 */   nop
/* 7AA5458 80079728 49002292 */  lbu        $v0, 0x49($s1)
/* 7AA545C 8007972C 00000000 */  nop
/* 7AA5460 80079730 08004014 */  bnez       $v0, .Llevel_37_80079754
/* 7AA5464 80079734 1800A427 */   addiu     $a0, $sp, 0x18
/* 7AA5468 80079738 21202002 */  addu       $a0, $s1, $zero
/* 7AA546C 8007973C 21280000 */  addu       $a1, $zero, $zero
/* 7AA5470 80079740 AFEE000C */  jal        func_8003BABC
/* 7AA5474 80079744 21300000 */   addu      $a2, $zero, $zero
/* 7AA5478 80079748 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA547C 8007974C 490022A2 */  sb         $v0, 0x49($s1)
/* 7AA5480 80079750 1800A427 */  addiu      $a0, $sp, 0x18
.Llevel_37_80079754:
/* 7AA5484 80079754 0C003026 */  addiu      $s0, $s1, 0xC
/* 7AA5488 80079758 5E3C010C */  jal        func_8004F178
/* 7AA548C 8007975C 21280002 */   addu      $a1, $s0, $zero
/* 7AA5490 80079760 21200002 */  addu       $a0, $s0, $zero
/* 7AA5494 80079764 21280002 */  addu       $a1, $s0, $zero
/* 7AA5498 80079768 653C010C */  jal        func_8004F194
/* 7AA549C 8007976C 21304002 */   addu      $a2, $s2, $zero
/* 7AA54A0 80079770 1800A427 */  addiu      $a0, $sp, 0x18
/* 7AA54A4 80079774 DA60000C */  jal        func_80018368
/* 7AA54A8 80079778 21280002 */   addu      $a1, $s0, $zero
/* 7AA54AC 8007977C 06004010 */  beqz       $v0, .Llevel_37_80079798
/* 7AA54B0 80079780 21200002 */   addu      $a0, $s0, $zero
/* 7AA54B4 80079784 5E3C010C */  jal        func_8004F178
/* 7AA54B8 80079788 1800A527 */   addiu     $a1, $sp, 0x18
/* 7AA54BC 8007978C 01000224 */  addiu      $v0, $zero, 0x1
/* 7AA54C0 80079790 FAE50108 */  j          .Llevel_37_800797E8
/* 7AA54C4 80079794 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_37_80079798:
/* 7AA54C8 80079798 C8000524 */  addiu      $a1, $zero, 0xC8
/* 7AA54CC 8007979C 21300000 */  addu       $a2, $zero, $zero
/* 7AA54D0 800797A0 21380000 */  addu       $a3, $zero, $zero
/* 7AA54D4 800797A4 1000023C */  lui        $v0, (0x100000 >> 16)
/* 7AA54D8 800797A8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA54DC 800797AC 8C6E000C */  jal        func_8001BA30
/* 7AA54E0 800797B0 1400A0AF */   sw        $zero, 0x14($sp)
/* 7AA54E4 800797B4 21804000 */  addu       $s0, $v0, $zero
/* 7AA54E8 800797B8 0B000012 */  beqz       $s0, .Llevel_37_800797E8
/* 7AA54EC 800797BC 01001324 */   addiu     $s3, $zero, 0x1
/* 7AA54F0 800797C0 480033A2 */  sb         $s3, 0x48($s1)
/* 7AA54F4 800797C4 0000448E */  lw         $a0, 0x0($s2)
/* 7AA54F8 800797C8 0400458E */  lw         $a1, 0x4($s2)
/* 7AA54FC 800797CC 203A010C */  jal        func_8004E880
/* 7AA5500 800797D0 21300000 */   addu      $a2, $zero, $zero
/* 7AA5504 800797D4 510002A2 */  sb         $v0, 0x51($s0)
/* 7AA5508 800797D8 FF004230 */  andi       $v0, $v0, 0xFF
/* 7AA550C 800797DC 03004014 */  bnez       $v0, .Llevel_37_800797EC
/* 7AA5510 800797E0 21202002 */   addu      $a0, $s1, $zero
/* 7AA5514 800797E4 510013A2 */  sb         $s3, 0x51($s0)
.Llevel_37_800797E8:
/* 7AA5518 800797E8 21202002 */  addu       $a0, $s1, $zero
.Llevel_37_800797EC:
/* 7AA551C 800797EC 4957010C */  jal        func_80055D24
/* 7AA5520 800797F0 02000524 */   addiu     $a1, $zero, 0x2
/* 7AA5524 800797F4 09E60108 */  j          .Llevel_37_80079824
/* 7AA5528 800797F8 00000000 */   nop
.Llevel_37_800797FC:
/* 7AA552C 800797FC 0D000524 */  addiu      $a1, $zero, 0xD
/* 7AA5530 80079800 0C000624 */  addiu      $a2, $zero, 0xC
/* 7AA5534 80079804 19000724 */  addiu      $a3, $zero, 0x19
/* 7AA5538 80079808 0780033C */  lui        $v1, %hi(unk_ovlheader_80074410)
/* 7AA553C 8007980C 1044638C */  lw         $v1, %lo(unk_ovlheader_80074410)($v1)
/* 7AA5540 80079810 23000224 */  addiu      $v0, $zero, 0x23
/* 7AA5544 80079814 09F86000 */  jalr       $v1
/* 7AA5548 80079818 1000A2AF */   sw        $v0, 0x10($sp)
.Llevel_37_8007981C:
/* 7AA554C 8007981C C656010C */  jal        func_80055B18
/* 7AA5550 80079820 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_80079824:
/* 7AA5554 80079824 3800BF8F */  lw         $ra, 0x38($sp)
/* 7AA5558 80079828 3400B38F */  lw         $s3, 0x34($sp)
/* 7AA555C 8007982C 3000B28F */  lw         $s2, 0x30($sp)
/* 7AA5560 80079830 2C00B18F */  lw         $s1, 0x2C($sp)
/* 7AA5564 80079834 2800B08F */  lw         $s0, 0x28($sp)
/* 7AA5568 80079838 4000BD27 */  addiu      $sp, $sp, 0x40
/* 7AA556C 8007983C 0800E003 */  jr         $ra
/* 7AA5570 80079840 00000000 */   nop
.size MobyUpdate_237_level_37, . - MobyUpdate_237_level_37
