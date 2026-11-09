.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_57_level_14
/* 47B9A08 8007A4D8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 47B9A0C 8007A4DC 2000B2AF */  sw         $s2, 0x20($sp)
/* 47B9A10 8007A4E0 21908000 */  addu       $s2, $a0, $zero
/* 47B9A14 8007A4E4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 47B9A18 8007A4E8 2400BFAF */  sw         $ra, 0x24($sp)
/* 47B9A1C 8007A4EC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 47B9A20 8007A4F0 1800B0AF */  sw         $s0, 0x18($sp)
/* 47B9A24 8007A4F4 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 47B9A28 8007A4F8 0780023C */  lui        $v0, %hi(D_8006C640)
/* 47B9A2C 8007A4FC 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 47B9A30 8007A500 0000508E */  lw         $s0, 0x0($s2)
/* 47B9A34 8007A504 12004018 */  blez       $v0, .Llevel_14_8007A550
/* 47B9A38 8007A508 00000000 */   nop
/* 47B9A3C 8007A50C 5000028E */  lw         $v0, 0x50($s0)
/* 47B9A40 8007A510 00000000 */  nop
/* 47B9A44 8007A514 0E004014 */  bnez       $v0, .Llevel_14_8007A550
/* 47B9A48 8007A518 00000000 */   nop
/* 47B9A4C 8007A51C 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 47B9A50 8007A520 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 47B9A54 8007A524 0680023C */  lui        $v0, %hi(D_800652B0 + 0x40)
/* 47B9A58 8007A528 F052428C */  lw         $v0, %lo(D_800652B0 + 0x40)($v0)
/* 47B9A5C 8007A52C 0680063C */  lui        $a2, %hi(D_800652B6 + 0x40)
/* 47B9A60 8007A530 F652C694 */  lhu        $a2, %lo(D_800652B6 + 0x40)($a2)
/* 47B9A64 8007A534 0680053C */  lui        $a1, %hi(D_800652B4 + 0x40)
/* 47B9A68 8007A538 F452A594 */  lhu        $a1, %lo(D_800652B4 + 0x40)($a1)
/* 47B9A6C 8007A53C 21208200 */  addu       $a0, $a0, $v0
/* 47B9A70 8007A540 613E010C */  jal        func_8004F984
/* 47B9A74 8007A544 21288500 */   addu      $a1, $a0, $a1
/* 47B9A78 8007A548 01000224 */  addiu      $v0, $zero, 0x1
/* 47B9A7C 8007A54C 500002AE */  sw         $v0, 0x50($s0)
.Llevel_14_8007A550:
/* 47B9A80 8007A550 48004392 */  lbu        $v1, 0x48($s2)
/* 47B9A84 8007A554 01001124 */  addiu      $s1, $zero, 0x1
/* 47B9A88 8007A558 75007110 */  beq        $v1, $s1, .Llevel_14_8007A730
/* 47B9A8C 8007A55C 02006228 */   slti      $v0, $v1, 0x2
/* 47B9A90 8007A560 05004010 */  beqz       $v0, .Llevel_14_8007A578
/* 47B9A94 8007A564 00000000 */   nop
/* 47B9A98 8007A568 0A006010 */  beqz       $v1, .Llevel_14_8007A594
/* 47B9A9C 8007A56C 0D000224 */   addiu     $v0, $zero, 0xD
/* 47B9AA0 8007A570 38EA0108 */  j          .Llevel_14_8007A8E0
/* 47B9AA4 8007A574 00000000 */   nop
.Llevel_14_8007A578:
/* 47B9AA8 8007A578 03000224 */  addiu      $v0, $zero, 0x3
/* 47B9AAC 8007A57C 97006210 */  beq        $v1, $v0, .Llevel_14_8007A7DC
/* 47B9AB0 8007A580 0F000224 */   addiu     $v0, $zero, 0xF
/* 47B9AB4 8007A584 57006210 */  beq        $v1, $v0, .Llevel_14_8007A6E4
/* 47B9AB8 8007A588 00000000 */   nop
/* 47B9ABC 8007A58C 38EA0108 */  j          .Llevel_14_8007A8E0
/* 47B9AC0 8007A590 00000000 */   nop
.Llevel_14_8007A594:
/* 47B9AC4 8007A594 0780033C */  lui        $v1, %hi(D_8006E344)
/* 47B9AC8 8007A598 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 47B9ACC 8007A59C 00000000 */  nop
/* 47B9AD0 8007A5A0 3F006214 */  bne        $v1, $v0, .Llevel_14_8007A6A0
/* 47B9AD4 8007A5A4 01000224 */   addiu     $v0, $zero, 0x1
/* 47B9AD8 8007A5A8 49004292 */  lbu        $v0, 0x49($s2)
/* 47B9ADC 8007A5AC 00000000 */  nop
/* 47B9AE0 8007A5B0 3B004014 */  bnez       $v0, .Llevel_14_8007A6A0
/* 47B9AE4 8007A5B4 01000224 */   addiu     $v0, $zero, 0x1
/* 47B9AE8 8007A5B8 0780023C */  lui        $v0, %hi(D_8006C4F8)
/* 47B9AEC 8007A5BC F8C4428C */  lw         $v0, %lo(D_8006C4F8)($v0)
/* 47B9AF0 8007A5C0 00000000 */  nop
/* 47B9AF4 8007A5C4 0F005110 */  beq        $v0, $s1, .Llevel_14_8007A604
/* 47B9AF8 8007A5C8 03000224 */   addiu     $v0, $zero, 0x3
/* 47B9AFC 8007A5CC 480042A2 */  sb         $v0, 0x48($s2)
/* 47B9B00 8007A5D0 48005026 */  addiu      $s0, $s2, 0x48
/* 47B9B04 8007A5D4 21200002 */  addu       $a0, $s0, $zero
/* 47B9B08 8007A5D8 0780063C */  lui        $a2, %hi(D_8006D088)
/* 47B9B0C 8007A5DC 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 47B9B10 8007A5E0 EDED000C */  jal        func_8003B7B4
/* 47B9B14 8007A5E4 01000524 */   addiu     $a1, $zero, 0x1
/* 47B9B18 8007A5E8 21200002 */  addu       $a0, $s0, $zero
/* 47B9B1C 8007A5EC 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 47B9B20 8007A5F0 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 47B9B24 8007A5F4 EDED000C */  jal        func_8003B7B4
/* 47B9B28 8007A5F8 01000524 */   addiu     $a1, $zero, 0x1
/* 47B9B2C 8007A5FC 38EA0108 */  j          .Llevel_14_8007A8E0
/* 47B9B30 8007A600 00000000 */   nop
.Llevel_14_8007A604:
/* 47B9B34 8007A604 46004292 */  lbu        $v0, 0x46($s2)
/* 47B9B38 8007A608 00000000 */  nop
/* 47B9B3C 8007A60C 40100200 */  sll        $v0, $v0, 1
/* 47B9B40 8007A610 0680013C */  lui        $at, %hi(D_80065920)
/* 47B9B44 8007A614 21082200 */  addu       $at, $at, $v0
/* 47B9B48 8007A618 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 47B9B4C 8007A61C 0780043C */  lui        $a0, %hi(D_800719BC)
/* 47B9B50 8007A620 BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 47B9B54 8007A624 40100300 */  sll        $v0, $v1, 1
/* 47B9B58 8007A628 21104300 */  addu       $v0, $v0, $v1
/* 47B9B5C 8007A62C 80100200 */  sll        $v0, $v0, 2
/* 47B9B60 8007A630 21104300 */  addu       $v0, $v0, $v1
/* 47B9B64 8007A634 43110200 */  sra        $v0, $v0, 5
/* 47B9B68 8007A638 000082AC */  sw         $v0, 0x0($a0)
/* 47B9B6C 8007A63C 46004292 */  lbu        $v0, 0x46($s2)
/* 47B9B70 8007A640 21288000 */  addu       $a1, $a0, $zero
/* 47B9B74 8007A644 40100200 */  sll        $v0, $v0, 1
/* 47B9B78 8007A648 0680013C */  lui        $at, %hi(D_800658A0)
/* 47B9B7C 8007A64C 21082200 */  addu       $at, $at, $v0
/* 47B9B80 8007A650 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 47B9B84 8007A654 0780013C */  lui        $at, %hi(D_800719C4)
/* 47B9B88 8007A658 C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 47B9B8C 8007A65C 40100300 */  sll        $v0, $v1, 1
/* 47B9B90 8007A660 21104300 */  addu       $v0, $v0, $v1
/* 47B9B94 8007A664 80100200 */  sll        $v0, $v0, 2
/* 47B9B98 8007A668 21104300 */  addu       $v0, $v0, $v1
/* 47B9B9C 8007A66C 43110200 */  sra        $v0, $v0, 5
/* 47B9BA0 8007A670 0780013C */  lui        $at, %hi(D_800719C0)
/* 47B9BA4 8007A674 C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 47B9BA8 8007A678 653C010C */  jal        func_8004F194
/* 47B9BAC 8007A67C 0C004626 */   addiu     $a2, $s2, 0xC
/* 47B9BB0 8007A680 46004292 */  lbu        $v0, 0x46($s2)
/* 47B9BB4 8007A684 00000000 */  nop
/* 47B9BB8 8007A688 80004224 */  addiu      $v0, $v0, 0x80
/* 47B9BBC 8007A68C 00110200 */  sll        $v0, $v0, 4
/* 47B9BC0 8007A690 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 47B9BC4 8007A694 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 47B9BC8 8007A698 E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 47B9BCC 8007A69C 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_14_8007A6A0:
/* 47B9BD0 8007A6A0 380040A6 */  sh         $zero, 0x38($s2)
/* 47B9BD4 8007A6A4 050002A2 */  sb         $v0, 0x5($s0)
/* 47B9BD8 8007A6A8 0780023C */  lui        $v0, %hi(D_8006C598)
/* 47B9BDC 8007A6AC 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 47B9BE0 8007A6B0 00000000 */  nop
/* 47B9BE4 8007A6B4 8A004014 */  bnez       $v0, .Llevel_14_8007A8E0
/* 47B9BE8 8007A6B8 21204002 */   addu      $a0, $s2, $zero
/* 47B9BEC 8007A6BC EFDE000C */  jal        func_80037BBC
/* 47B9BF0 8007A6C0 21280000 */   addu      $a1, $zero, $zero
/* 47B9BF4 8007A6C4 86004010 */  beqz       $v0, .Llevel_14_8007A8E0
/* 47B9BF8 8007A6C8 21204002 */   addu      $a0, $s2, $zero
/* 47B9BFC 8007A6CC 21280000 */  addu       $a1, $zero, $zero
/* 47B9C00 8007A6D0 B944010C */  jal        func_800512E4
/* 47B9C04 8007A6D4 0F000624 */   addiu     $a2, $zero, 0xF
/* 47B9C08 8007A6D8 0F000224 */  addiu      $v0, $zero, 0xF
/* 47B9C0C 8007A6DC 38EA0108 */  j          .Llevel_14_8007A8E0
/* 47B9C10 8007A6E0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_14_8007A6E4:
/* 47B9C14 8007A6E4 0780023C */  lui        $v0, %hi(D_8006E344)
/* 47B9C18 8007A6E8 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 47B9C1C 8007A6EC 00000000 */  nop
/* 47B9C20 8007A6F0 7B005110 */  beq        $v0, $s1, .Llevel_14_8007A8E0
/* 47B9C24 8007A6F4 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 47B9C28 8007A6F8 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 47B9C2C 8007A6FC 21204002 */  addu       $a0, $s2, $zero
/* 47B9C30 8007A700 01000524 */  addiu      $a1, $zero, 0x1
/* 47B9C34 8007A704 01000324 */  addiu      $v1, $zero, 0x1
/* 47B9C38 8007A708 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 47B9C3C 8007A70C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 47B9C40 8007A710 3C000224 */  addiu      $v0, $zero, 0x3C
/* 47B9C44 8007A714 0780013C */  lui        $at, %hi(D_80071579)
/* 47B9C48 8007A718 791523A0 */  sb         $v1, %lo(D_80071579)($at)
/* 47B9C4C 8007A71C 480002AE */  sw         $v0, 0x48($s0)
/* 47B9C50 8007A720 D0D3000C */  jal        func_80034F40
/* 47B9C54 8007A724 480043A2 */   sb        $v1, 0x48($s2)
/* 47B9C58 8007A728 38EA0108 */  j          .Llevel_14_8007A8E0
/* 47B9C5C 8007A72C 00000000 */   nop
.Llevel_14_8007A730:
/* 47B9C60 8007A730 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 47B9C64 8007A734 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 47B9C68 8007A738 21204002 */  addu       $a0, $s2, $zero
/* 47B9C6C 8007A73C 08000624 */  addiu      $a2, $zero, 0x8
/* 47B9C70 8007A740 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 47B9C74 8007A744 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 47B9C78 8007A748 3400058E */  lw         $a1, 0x34($s0)
/* 47B9C7C 8007A74C 10000724 */  addiu      $a3, $zero, 0x10
/* 47B9C80 8007A750 1000B1AF */  sw         $s1, 0x10($sp)
/* 47B9C84 8007A754 1400A0AF */  sw         $zero, 0x14($sp)
/* 47B9C88 8007A758 17D6000C */  jal        func_8003585C
/* 47B9C8C 8007A75C 8000A524 */   addiu     $a1, $a1, 0x80
/* 47B9C90 8007A760 06004010 */  beqz       $v0, .Llevel_14_8007A77C
/* 47B9C94 8007A764 21204002 */   addu      $a0, $s2, $zero
/* 47B9C98 8007A768 1000A0AF */  sw         $zero, 0x10($sp)
/* 47B9C9C 8007A76C 80000524 */  addiu      $a1, $zero, 0x80
/* 47B9CA0 8007A770 21300000 */  addu       $a2, $zero, $zero
/* 47B9CA4 8007A774 77D7000C */  jal        func_80035DDC
/* 47B9CA8 8007A778 21380000 */   addu      $a3, $zero, $zero
.Llevel_14_8007A77C:
/* 47B9CAC 8007A77C 48000426 */  addiu      $a0, $s0, 0x48
/* 47B9CB0 8007A780 69D6000C */  jal        func_800359A4
/* 47B9CB4 8007A784 04000524 */   addiu     $a1, $zero, 0x4
/* 47B9CB8 8007A788 02000324 */  addiu      $v1, $zero, 0x2
/* 47B9CBC 8007A78C 54004314 */  bne        $v0, $v1, .Llevel_14_8007A8E0
/* 47B9CC0 8007A790 48005026 */   addiu     $s0, $s2, 0x48
/* 47B9CC4 8007A794 21200002 */  addu       $a0, $s0, $zero
/* 47B9CC8 8007A798 01000524 */  addiu      $a1, $zero, 0x1
/* 47B9CCC 8007A79C 0780113C */  lui        $s1, %hi(D_8006D088)
/* 47B9CD0 8007A7A0 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 47B9CD4 8007A7A4 21302002 */  addu       $a2, $s1, $zero
/* 47B9CD8 8007A7A8 03000224 */  addiu      $v0, $zero, 0x3
/* 47B9CDC 8007A7AC EDED000C */  jal        func_8003B7B4
/* 47B9CE0 8007A7B0 480042A2 */   sb        $v0, 0x48($s2)
/* 47B9CE4 8007A7B4 21200002 */  addu       $a0, $s0, $zero
/* 47B9CE8 8007A7B8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 47B9CEC 8007A7BC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 47B9CF0 8007A7C0 EDED000C */  jal        func_8003B7B4
/* 47B9CF4 8007A7C4 01000524 */   addiu     $a1, $zero, 0x1
/* 47B9CF8 8007A7C8 D3ED000C */  jal        func_8003B74C
/* 47B9CFC 8007A7CC 21202002 */   addu      $a0, $s1, $zero
/* 47B9D00 8007A7D0 01000224 */  addiu      $v0, $zero, 0x1
/* 47B9D04 8007A7D4 38EA0108 */  j          .Llevel_14_8007A8E0
/* 47B9D08 8007A7D8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_14_8007A7DC:
/* 47B9D0C 8007A7DC 21204002 */  addu       $a0, $s2, $zero
/* 47B9D10 8007A7E0 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 47B9D14 8007A7E4 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 47B9D18 8007A7E8 00000000 */  nop
/* 47B9D1C 8007A7EC 09F84000 */  jalr       $v0
/* 47B9D20 8007A7F0 41000524 */   addiu     $a1, $zero, 0x41
/* 47B9D24 8007A7F4 0780043C */  lui        $a0, %hi(D_800719A8)
/* 47B9D28 8007A7F8 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 47B9D2C 8007A7FC 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 47B9D30 8007A800 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 47B9D34 8007A804 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 47B9D38 8007A808 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 47B9D3C 8007A80C 694D000C */  jal        func_800135A4
/* 47B9D40 8007A810 21300000 */   addu      $a2, $zero, $zero
/* 47B9D44 8007A814 0780043C */  lui        $a0, %hi(D_800719F0)
/* 47B9D48 8007A818 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 47B9D4C 8007A81C 0780053C */  lui        $a1, %hi(D_80068F90)
/* 47B9D50 8007A820 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 47B9D54 8007A824 694D000C */  jal        func_800135A4
/* 47B9D58 8007A828 21300000 */   addu      $a2, $zero, $zero
/* 47B9D5C 8007A82C 0780023C */  lui        $v0, %hi(D_80070328 + 0x24C)
/* 47B9D60 8007A830 7405428C */  lw         $v0, %lo(D_80070328 + 0x24C)($v0)
/* 47B9D64 8007A834 00000000 */  nop
/* 47B9D68 8007A838 09005114 */  bne        $v0, $s1, .Llevel_14_8007A860
/* 47B9D6C 8007A83C 00000000 */   nop
/* 47B9D70 8007A840 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 47B9D74 8007A844 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 47B9D78 8007A848 3D004392 */  lbu        $v1, 0x3D($s2)
/* 47B9D7C 8007A84C BFFF4524 */  addiu      $a1, $v0, -0x41
/* 47B9D80 8007A850 0300A310 */  beq        $a1, $v1, .Llevel_14_8007A860
/* 47B9D84 8007A854 00000000 */   nop
/* 47B9D88 8007A858 D0D3000C */  jal        func_80034F40
/* 47B9D8C 8007A85C 21204002 */   addu      $a0, $s2, $zero
.Llevel_14_8007A860:
/* 47B9D90 8007A860 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 47B9D94 8007A864 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 47B9D98 8007A868 0A000224 */  addiu      $v0, $zero, 0xA
/* 47B9D9C 8007A86C 0A006214 */  bne        $v1, $v0, .Llevel_14_8007A898
/* 47B9DA0 8007A870 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 47B9DA4 8007A874 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 47B9DA8 8007A878 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 47B9DAC 8007A87C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 47B9DB0 8007A880 23180300 */  negu       $v1, $v1
/* 47B9DB4 8007A884 24186200 */  and        $v1, $v1, $v0
/* 47B9DB8 8007A888 80000224 */  addiu      $v0, $zero, 0x80
/* 47B9DBC 8007A88C 540043AE */  sw         $v1, 0x54($s2)
/* 47B9DC0 8007A890 27EA0108 */  j          .Llevel_14_8007A89C
/* 47B9DC4 8007A894 570042A2 */   sb        $v0, 0x57($s2)
.Llevel_14_8007A898:
/* 47B9DC8 8007A898 540040AE */  sw         $zero, 0x54($s2)
.Llevel_14_8007A89C:
/* 47B9DCC 8007A89C 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 47B9DD0 8007A8A0 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 47B9DD4 8007A8A4 00000000 */  nop
/* 47B9DD8 8007A8A8 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 47B9DDC 8007A8AC 0200422C */  sltiu      $v0, $v0, 0x2
/* 47B9DE0 8007A8B0 0B004014 */  bnez       $v0, .Llevel_14_8007A8E0
/* 47B9DE4 8007A8B4 00000000 */   nop
/* 47B9DE8 8007A8B8 4800028E */  lw         $v0, 0x48($s0)
/* 47B9DEC 8007A8BC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 47B9DF0 8007A8C0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 47B9DF4 8007A8C4 00000000 */  nop
/* 47B9DF8 8007A8C8 21104300 */  addu       $v0, $v0, $v1
/* 47B9DFC 8007A8CC 480002AE */  sw         $v0, 0x48($s0)
/* 47B9E00 8007A8D0 71174228 */  slti       $v0, $v0, 0x1771
/* 47B9E04 8007A8D4 02004014 */  bnez       $v0, .Llevel_14_8007A8E0
/* 47B9E08 8007A8D8 70170224 */   addiu     $v0, $zero, 0x1770
/* 47B9E0C 8007A8DC 480002AE */  sw         $v0, 0x48($s0)
.Llevel_14_8007A8E0:
/* 47B9E10 8007A8E0 4ED7000C */  jal        func_80035D38
/* 47B9E14 8007A8E4 21204002 */   addu      $a0, $s2, $zero
/* 47B9E18 8007A8E8 A758010C */  jal        func_8005629C
/* 47B9E1C 8007A8EC 21204002 */   addu      $a0, $s2, $zero
/* 47B9E20 8007A8F0 2400BF8F */  lw         $ra, 0x24($sp)
/* 47B9E24 8007A8F4 2000B28F */  lw         $s2, 0x20($sp)
/* 47B9E28 8007A8F8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 47B9E2C 8007A8FC 1800B08F */  lw         $s0, 0x18($sp)
/* 47B9E30 8007A900 2800BD27 */  addiu      $sp, $sp, 0x28
/* 47B9E34 8007A904 0800E003 */  jr         $ra
/* 47B9E38 8007A908 00000000 */   nop
.size MobyUpdate_57_level_14, . - MobyUpdate_57_level_14
