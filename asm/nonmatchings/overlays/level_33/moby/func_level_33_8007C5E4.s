.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_99_level_33
/* 71B4314 8007C5E4 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 71B4318 8007C5E8 3000B2AF */  sw         $s2, 0x30($sp)
/* 71B431C 8007C5EC 21908000 */  addu       $s2, $a0, $zero
/* 71B4320 8007C5F0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 71B4324 8007C5F4 3800BFAF */  sw         $ra, 0x38($sp)
/* 71B4328 8007C5F8 3400B3AF */  sw         $s3, 0x34($sp)
/* 71B432C 8007C5FC 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 71B4330 8007C600 2800B0AF */  sw         $s0, 0x28($sp)
/* 71B4334 8007C604 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 71B4338 8007C608 0780023C */  lui        $v0, %hi(D_8006C640)
/* 71B433C 8007C60C 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 71B4340 8007C610 0000538E */  lw         $s3, 0x0($s2)
/* 71B4344 8007C614 12004018 */  blez       $v0, .Llevel_33_8007C660
/* 71B4348 8007C618 00000000 */   nop
/* 71B434C 8007C61C 8004628E */  lw         $v0, 0x480($s3)
/* 71B4350 8007C620 00000000 */  nop
/* 71B4354 8007C624 0E004014 */  bnez       $v0, .Llevel_33_8007C660
/* 71B4358 8007C628 00000000 */   nop
/* 71B435C 8007C62C 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 71B4360 8007C630 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 71B4364 8007C634 0680023C */  lui        $v0, %hi(D_800652B0 + 0xB0)
/* 71B4368 8007C638 6053428C */  lw         $v0, %lo(D_800652B0 + 0xB0)($v0)
/* 71B436C 8007C63C 0680063C */  lui        $a2, %hi(D_800652B6 + 0xB0)
/* 71B4370 8007C640 6653C694 */  lhu        $a2, %lo(D_800652B6 + 0xB0)($a2)
/* 71B4374 8007C644 0680053C */  lui        $a1, %hi(D_800652B4 + 0xB0)
/* 71B4378 8007C648 6453A594 */  lhu        $a1, %lo(D_800652B4 + 0xB0)($a1)
/* 71B437C 8007C64C 21208200 */  addu       $a0, $a0, $v0
/* 71B4380 8007C650 613E010C */  jal        func_8004F984
/* 71B4384 8007C654 21288500 */   addu      $a1, $a0, $a1
/* 71B4388 8007C658 01000224 */  addiu      $v0, $zero, 0x1
/* 71B438C 8007C65C 800462AE */  sw         $v0, 0x480($s3)
.Llevel_33_8007C660:
/* 71B4390 8007C660 48004392 */  lbu        $v1, 0x48($s2)
/* 71B4394 8007C664 01000424 */  addiu      $a0, $zero, 0x1
/* 71B4398 8007C668 75006410 */  beq        $v1, $a0, .Llevel_33_8007C840
/* 71B439C 8007C66C 02006228 */   slti      $v0, $v1, 0x2
/* 71B43A0 8007C670 05004010 */  beqz       $v0, .Llevel_33_8007C688
/* 71B43A4 8007C674 00000000 */   nop
/* 71B43A8 8007C678 0A006010 */  beqz       $v1, .Llevel_33_8007C6A4
/* 71B43AC 8007C67C 0D000224 */   addiu     $v0, $zero, 0xD
/* 71B43B0 8007C680 86F30108 */  j          .Llevel_33_8007CE18
/* 71B43B4 8007C684 00000000 */   nop
.Llevel_33_8007C688:
/* 71B43B8 8007C688 03000224 */  addiu      $v0, $zero, 0x3
/* 71B43BC 8007C68C 97006210 */  beq        $v1, $v0, .Llevel_33_8007C8EC
/* 71B43C0 8007C690 12000224 */   addiu     $v0, $zero, 0x12
/* 71B43C4 8007C694 57006210 */  beq        $v1, $v0, .Llevel_33_8007C7F4
/* 71B43C8 8007C698 00000000 */   nop
/* 71B43CC 8007C69C 86F30108 */  j          .Llevel_33_8007CE18
/* 71B43D0 8007C6A0 00000000 */   nop
.Llevel_33_8007C6A4:
/* 71B43D4 8007C6A4 0780033C */  lui        $v1, %hi(D_8006E344)
/* 71B43D8 8007C6A8 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 71B43DC 8007C6AC 00000000 */  nop
/* 71B43E0 8007C6B0 3F006214 */  bne        $v1, $v0, .Llevel_33_8007C7B0
/* 71B43E4 8007C6B4 01000224 */   addiu     $v0, $zero, 0x1
/* 71B43E8 8007C6B8 49004292 */  lbu        $v0, 0x49($s2)
/* 71B43EC 8007C6BC 00000000 */  nop
/* 71B43F0 8007C6C0 3B004014 */  bnez       $v0, .Llevel_33_8007C7B0
/* 71B43F4 8007C6C4 01000224 */   addiu     $v0, $zero, 0x1
/* 71B43F8 8007C6C8 0780023C */  lui        $v0, %hi(D_8006C4F8)
/* 71B43FC 8007C6CC F8C4428C */  lw         $v0, %lo(D_8006C4F8)($v0)
/* 71B4400 8007C6D0 00000000 */  nop
/* 71B4404 8007C6D4 0F004410 */  beq        $v0, $a0, .Llevel_33_8007C714
/* 71B4408 8007C6D8 03000224 */   addiu     $v0, $zero, 0x3
/* 71B440C 8007C6DC 480042A2 */  sb         $v0, 0x48($s2)
/* 71B4410 8007C6E0 48005026 */  addiu      $s0, $s2, 0x48
/* 71B4414 8007C6E4 21200002 */  addu       $a0, $s0, $zero
/* 71B4418 8007C6E8 0780063C */  lui        $a2, %hi(D_8006D088)
/* 71B441C 8007C6EC 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 71B4420 8007C6F0 EDED000C */  jal        func_8003B7B4
/* 71B4424 8007C6F4 01000524 */   addiu     $a1, $zero, 0x1
/* 71B4428 8007C6F8 21200002 */  addu       $a0, $s0, $zero
/* 71B442C 8007C6FC 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 71B4430 8007C700 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 71B4434 8007C704 EDED000C */  jal        func_8003B7B4
/* 71B4438 8007C708 01000524 */   addiu     $a1, $zero, 0x1
/* 71B443C 8007C70C 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4440 8007C710 00000000 */   nop
.Llevel_33_8007C714:
/* 71B4444 8007C714 46004292 */  lbu        $v0, 0x46($s2)
/* 71B4448 8007C718 00000000 */  nop
/* 71B444C 8007C71C 40100200 */  sll        $v0, $v0, 1
/* 71B4450 8007C720 0680013C */  lui        $at, %hi(D_80065920)
/* 71B4454 8007C724 21082200 */  addu       $at, $at, $v0
/* 71B4458 8007C728 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 71B445C 8007C72C 0780043C */  lui        $a0, %hi(D_800719BC)
/* 71B4460 8007C730 BC198424 */  addiu      $a0, $a0, %lo(D_800719BC)
/* 71B4464 8007C734 40100300 */  sll        $v0, $v1, 1
/* 71B4468 8007C738 21104300 */  addu       $v0, $v0, $v1
/* 71B446C 8007C73C 80100200 */  sll        $v0, $v0, 2
/* 71B4470 8007C740 21104300 */  addu       $v0, $v0, $v1
/* 71B4474 8007C744 43110200 */  sra        $v0, $v0, 5
/* 71B4478 8007C748 000082AC */  sw         $v0, 0x0($a0)
/* 71B447C 8007C74C 46004292 */  lbu        $v0, 0x46($s2)
/* 71B4480 8007C750 21288000 */  addu       $a1, $a0, $zero
/* 71B4484 8007C754 40100200 */  sll        $v0, $v0, 1
/* 71B4488 8007C758 0680013C */  lui        $at, %hi(D_800658A0)
/* 71B448C 8007C75C 21082200 */  addu       $at, $at, $v0
/* 71B4490 8007C760 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 71B4494 8007C764 0780013C */  lui        $at, %hi(D_800719C4)
/* 71B4498 8007C768 C41920AC */  sw         $zero, %lo(D_800719C4)($at)
/* 71B449C 8007C76C 40100300 */  sll        $v0, $v1, 1
/* 71B44A0 8007C770 21104300 */  addu       $v0, $v0, $v1
/* 71B44A4 8007C774 80100200 */  sll        $v0, $v0, 2
/* 71B44A8 8007C778 21104300 */  addu       $v0, $v0, $v1
/* 71B44AC 8007C77C 43110200 */  sra        $v0, $v0, 5
/* 71B44B0 8007C780 0780013C */  lui        $at, %hi(D_800719C0)
/* 71B44B4 8007C784 C01922AC */  sw         $v0, %lo(D_800719C0)($at)
/* 71B44B8 8007C788 653C010C */  jal        func_8004F194
/* 71B44BC 8007C78C 0C004626 */   addiu     $a2, $s2, 0xC
/* 71B44C0 8007C790 46004292 */  lbu        $v0, 0x46($s2)
/* 71B44C4 8007C794 00000000 */  nop
/* 71B44C8 8007C798 80004224 */  addiu      $v0, $v0, 0x80
/* 71B44CC 8007C79C 00110200 */  sll        $v0, $v0, 4
/* 71B44D0 8007C7A0 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 71B44D4 8007C7A4 0780013C */  lui        $at, %hi(D_8006C6E0)
/* 71B44D8 8007C7A8 E0C622AC */  sw         $v0, %lo(D_8006C6E0)($at)
/* 71B44DC 8007C7AC 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_33_8007C7B0:
/* 71B44E0 8007C7B0 380040A6 */  sh         $zero, 0x38($s2)
/* 71B44E4 8007C7B4 050062A2 */  sb         $v0, 0x5($s3)
/* 71B44E8 8007C7B8 0780023C */  lui        $v0, %hi(D_8006C598)
/* 71B44EC 8007C7BC 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 71B44F0 8007C7C0 00000000 */  nop
/* 71B44F4 8007C7C4 94014014 */  bnez       $v0, .Llevel_33_8007CE18
/* 71B44F8 8007C7C8 21204002 */   addu      $a0, $s2, $zero
/* 71B44FC 8007C7CC EFDE000C */  jal        func_80037BBC
/* 71B4500 8007C7D0 21280000 */   addu      $a1, $zero, $zero
/* 71B4504 8007C7D4 90014010 */  beqz       $v0, .Llevel_33_8007CE18
/* 71B4508 8007C7D8 21204002 */   addu      $a0, $s2, $zero
/* 71B450C 8007C7DC 21280000 */  addu       $a1, $zero, $zero
/* 71B4510 8007C7E0 B944010C */  jal        func_800512E4
/* 71B4514 8007C7E4 12000624 */   addiu     $a2, $zero, 0x12
/* 71B4518 8007C7E8 12000224 */  addiu      $v0, $zero, 0x12
/* 71B451C 8007C7EC 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4520 8007C7F0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_33_8007C7F4:
/* 71B4524 8007C7F4 0780023C */  lui        $v0, %hi(D_8006E344)
/* 71B4528 8007C7F8 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 71B452C 8007C7FC 00000000 */  nop
/* 71B4530 8007C800 85014410 */  beq        $v0, $a0, .Llevel_33_8007CE18
/* 71B4534 8007C804 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 71B4538 8007C808 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 71B453C 8007C80C 21204002 */  addu       $a0, $s2, $zero
/* 71B4540 8007C810 01000524 */  addiu      $a1, $zero, 0x1
/* 71B4544 8007C814 01000324 */  addiu      $v1, $zero, 0x1
/* 71B4548 8007C818 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 71B454C 8007C81C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 71B4550 8007C820 3C000224 */  addiu      $v0, $zero, 0x3C
/* 71B4554 8007C824 0780013C */  lui        $at, %hi(D_8007157C)
/* 71B4558 8007C828 7C1523A0 */  sb         $v1, %lo(D_8007157C)($at)
/* 71B455C 8007C82C 7C0062AE */  sw         $v0, 0x7C($s3)
/* 71B4560 8007C830 D0D3000C */  jal        func_80034F40
/* 71B4564 8007C834 480043A2 */   sb        $v1, 0x48($s2)
/* 71B4568 8007C838 86F30108 */  j          .Llevel_33_8007CE18
/* 71B456C 8007C83C 00000000 */   nop
.Llevel_33_8007C840:
/* 71B4570 8007C840 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 71B4574 8007C844 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 71B4578 8007C848 21204002 */  addu       $a0, $s2, $zero
/* 71B457C 8007C84C 08000624 */  addiu      $a2, $zero, 0x8
/* 71B4580 8007C850 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 71B4584 8007C854 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 71B4588 8007C858 3400658E */  lw         $a1, 0x34($s3)
/* 71B458C 8007C85C 10000724 */  addiu      $a3, $zero, 0x10
/* 71B4590 8007C860 1000A3AF */  sw         $v1, 0x10($sp)
/* 71B4594 8007C864 1400A0AF */  sw         $zero, 0x14($sp)
/* 71B4598 8007C868 17D6000C */  jal        func_8003585C
/* 71B459C 8007C86C 8000A524 */   addiu     $a1, $a1, 0x80
/* 71B45A0 8007C870 06004010 */  beqz       $v0, .Llevel_33_8007C88C
/* 71B45A4 8007C874 21204002 */   addu      $a0, $s2, $zero
/* 71B45A8 8007C878 1000A0AF */  sw         $zero, 0x10($sp)
/* 71B45AC 8007C87C 80000524 */  addiu      $a1, $zero, 0x80
/* 71B45B0 8007C880 21300000 */  addu       $a2, $zero, $zero
/* 71B45B4 8007C884 77D7000C */  jal        func_80035DDC
/* 71B45B8 8007C888 21380000 */   addu      $a3, $zero, $zero
.Llevel_33_8007C88C:
/* 71B45BC 8007C88C 7C006426 */  addiu      $a0, $s3, 0x7C
/* 71B45C0 8007C890 69D6000C */  jal        func_800359A4
/* 71B45C4 8007C894 04000524 */   addiu     $a1, $zero, 0x4
/* 71B45C8 8007C898 02000324 */  addiu      $v1, $zero, 0x2
/* 71B45CC 8007C89C 5E014314 */  bne        $v0, $v1, .Llevel_33_8007CE18
/* 71B45D0 8007C8A0 48005026 */   addiu     $s0, $s2, 0x48
/* 71B45D4 8007C8A4 21200002 */  addu       $a0, $s0, $zero
/* 71B45D8 8007C8A8 01000524 */  addiu      $a1, $zero, 0x1
/* 71B45DC 8007C8AC 0780113C */  lui        $s1, %hi(D_8006D088)
/* 71B45E0 8007C8B0 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 71B45E4 8007C8B4 21302002 */  addu       $a2, $s1, $zero
/* 71B45E8 8007C8B8 03000224 */  addiu      $v0, $zero, 0x3
/* 71B45EC 8007C8BC EDED000C */  jal        func_8003B7B4
/* 71B45F0 8007C8C0 480042A2 */   sb        $v0, 0x48($s2)
/* 71B45F4 8007C8C4 21200002 */  addu       $a0, $s0, $zero
/* 71B45F8 8007C8C8 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 71B45FC 8007C8CC F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 71B4600 8007C8D0 EDED000C */  jal        func_8003B7B4
/* 71B4604 8007C8D4 01000524 */   addiu     $a1, $zero, 0x1
/* 71B4608 8007C8D8 D3ED000C */  jal        func_8003B74C
/* 71B460C 8007C8DC 21202002 */   addu      $a0, $s1, $zero
/* 71B4610 8007C8E0 01000224 */  addiu      $v0, $zero, 0x1
/* 71B4614 8007C8E4 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4618 8007C8E8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_33_8007C8EC:
/* 71B461C 8007C8EC 21204002 */  addu       $a0, $s2, $zero
/* 71B4620 8007C8F0 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 71B4624 8007C8F4 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 71B4628 8007C8F8 00000000 */  nop
/* 71B462C 8007C8FC 09F84000 */  jalr       $v0
/* 71B4630 8007C900 73000524 */   addiu     $a1, $zero, 0x73
/* 71B4634 8007C904 0780043C */  lui        $a0, %hi(D_800719A8)
/* 71B4638 8007C908 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 71B463C 8007C90C 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 71B4640 8007C910 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 71B4644 8007C914 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 71B4648 8007C918 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 71B464C 8007C91C 694D000C */  jal        func_800135A4
/* 71B4650 8007C920 21300000 */   addu      $a2, $zero, $zero
/* 71B4654 8007C924 0780043C */  lui        $a0, %hi(D_800719F0)
/* 71B4658 8007C928 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 71B465C 8007C92C 0780053C */  lui        $a1, %hi(D_80068F90)
/* 71B4660 8007C930 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 71B4664 8007C934 694D000C */  jal        func_800135A4
/* 71B4668 8007C938 21300000 */   addu      $a2, $zero, $zero
/* 71B466C 8007C93C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 71B4670 8007C940 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 71B4674 8007C944 1F000224 */  addiu      $v0, $zero, 0x1F
/* 71B4678 8007C948 03006210 */  beq        $v1, $v0, .Llevel_33_8007C958
/* 71B467C 8007C94C 28000224 */   addiu     $v0, $zero, 0x28
/* 71B4680 8007C950 0D006214 */  bne        $v1, $v0, .Llevel_33_8007C988
/* 71B4684 8007C954 10000324 */   addiu     $v1, $zero, 0x10
.Llevel_33_8007C958:
/* 71B4688 8007C958 4C0040A2 */  sb         $zero, 0x4C($s2)
/* 71B468C 8007C95C 4D0040A2 */  sb         $zero, 0x4D($s2)
/* 71B4690 8007C960 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71B4694 8007C964 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71B4698 8007C968 00000000 */  nop
/* 71B469C 8007C96C 0D004010 */  beqz       $v0, .Llevel_33_8007C9A4
/* 71B46A0 8007C970 00000000 */   nop
/* 71B46A4 8007C974 4C0040A0 */  sb         $zero, 0x4C($v0)
/* 71B46A8 8007C978 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71B46AC 8007C97C 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71B46B0 8007C980 69F20108 */  j          .Llevel_33_8007C9A4
/* 71B46B4 8007C984 4D0040A0 */   sb        $zero, 0x4D($v0)
.Llevel_33_8007C988:
/* 71B46B8 8007C988 4C0043A2 */  sb         $v1, 0x4C($s2)
/* 71B46BC 8007C98C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 71B46C0 8007C990 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 71B46C4 8007C994 00000000 */  nop
/* 71B46C8 8007C998 02004010 */  beqz       $v0, .Llevel_33_8007C9A4
/* 71B46CC 8007C99C 00000000 */   nop
/* 71B46D0 8007C9A0 4C0043A0 */  sb         $v1, 0x4C($v0)
.Llevel_33_8007C9A4:
/* 71B46D4 8007C9A4 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 71B46D8 8007C9A8 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 71B46DC 8007C9AC 04000224 */  addiu      $v0, $zero, 0x4
/* 71B46E0 8007C9B0 31006214 */  bne        $v1, $v0, .Llevel_33_8007CA78
/* 71B46E4 8007C9B4 00000000 */   nop
/* 71B46E8 8007C9B8 0780043C */  lui        $a0, %hi(D_80070328 + 0x48)
/* 71B46EC 8007C9BC 7003848C */  lw         $a0, %lo(D_80070328 + 0x48)($a0)
/* 71B46F0 8007C9C0 3D004392 */  lbu        $v1, 0x3D($s2)
/* 71B46F4 8007C9C4 8DFF8524 */  addiu      $a1, $a0, -0x73
/* 71B46F8 8007C9C8 2C00A310 */  beq        $a1, $v1, .Llevel_33_8007CA7C
/* 71B46FC 8007C9CC 83000224 */   addiu     $v0, $zero, 0x83
/* 71B4700 8007C9D0 13008214 */  bne        $a0, $v0, .Llevel_33_8007CA20
/* 71B4704 8007C9D4 84000224 */   addiu     $v0, $zero, 0x84
/* 71B4708 8007C9D8 3C004492 */  lbu        $a0, 0x3C($s2)
/* 71B470C 8007C9DC 11000224 */  addiu      $v0, $zero, 0x11
/* 71B4710 8007C9E0 03008210 */  beq        $a0, $v0, .Llevel_33_8007C9F0
/* 71B4714 8007C9E4 00000000 */   nop
/* 71B4718 8007C9E8 04006214 */  bne        $v1, $v0, .Llevel_33_8007C9FC
/* 71B471C 8007C9EC 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_33_8007C9F0:
/* 71B4720 8007C9F0 21204002 */  addu       $a0, $s2, $zero
/* 71B4724 8007C9F4 9AF20108 */  j          .Llevel_33_8007CA68
/* 71B4728 8007C9F8 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_33_8007C9FC:
/* 71B472C 8007C9FC 05006214 */  bne        $v1, $v0, .Llevel_33_8007CA14
/* 71B4730 8007CA00 00000000 */   nop
/* 71B4734 8007CA04 1A008314 */  bne        $a0, $v1, .Llevel_33_8007CA70
/* 71B4738 8007CA08 21204002 */   addu      $a0, $s2, $zero
/* 71B473C 8007CA0C 9AF20108 */  j          .Llevel_33_8007CA68
/* 71B4740 8007CA10 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_33_8007CA14:
/* 71B4744 8007CA14 21204002 */  addu       $a0, $s2, $zero
/* 71B4748 8007CA18 9AF20108 */  j          .Llevel_33_8007CA68
/* 71B474C 8007CA1C 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_33_8007CA20:
/* 71B4750 8007CA20 11008214 */  bne        $a0, $v0, .Llevel_33_8007CA68
/* 71B4754 8007CA24 21204002 */   addu      $a0, $s2, $zero
/* 71B4758 8007CA28 3C004492 */  lbu        $a0, 0x3C($s2)
/* 71B475C 8007CA2C 10000224 */  addiu      $v0, $zero, 0x10
/* 71B4760 8007CA30 03008210 */  beq        $a0, $v0, .Llevel_33_8007CA40
/* 71B4764 8007CA34 00000000 */   nop
/* 71B4768 8007CA38 04006214 */  bne        $v1, $v0, .Llevel_33_8007CA4C
/* 71B476C 8007CA3C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_33_8007CA40:
/* 71B4770 8007CA40 21204002 */  addu       $a0, $s2, $zero
/* 71B4774 8007CA44 9AF20108 */  j          .Llevel_33_8007CA68
/* 71B4778 8007CA48 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_33_8007CA4C:
/* 71B477C 8007CA4C 05006214 */  bne        $v1, $v0, .Llevel_33_8007CA64
/* 71B4780 8007CA50 11000524 */   addiu     $a1, $zero, 0x11
/* 71B4784 8007CA54 06008314 */  bne        $a0, $v1, .Llevel_33_8007CA70
/* 71B4788 8007CA58 21204002 */   addu      $a0, $s2, $zero
/* 71B478C 8007CA5C 9AF20108 */  j          .Llevel_33_8007CA68
/* 71B4790 8007CA60 00000000 */   nop
.Llevel_33_8007CA64:
/* 71B4794 8007CA64 21204002 */  addu       $a0, $s2, $zero
.Llevel_33_8007CA68:
/* 71B4798 8007CA68 D0D3000C */  jal        func_80034F40
/* 71B479C 8007CA6C 00000000 */   nop
.Llevel_33_8007CA70:
/* 71B47A0 8007CA70 B3F20108 */  j          .Llevel_33_8007CACC
/* 71B47A4 8007CA74 480060AE */   sw        $zero, 0x48($s3)
.Llevel_33_8007CA78:
/* 71B47A8 8007CA78 3D004392 */  lbu        $v1, 0x3D($s2)
.Llevel_33_8007CA7C:
/* 71B47AC 8007CA7C 01000224 */  addiu      $v0, $zero, 0x1
/* 71B47B0 8007CA80 12006214 */  bne        $v1, $v0, .Llevel_33_8007CACC
/* 71B47B4 8007CA84 00000000 */   nop
/* 71B47B8 8007CA88 0780023C */  lui        $v0, %hi(D_80070328 + 0xB4)
/* 71B47BC 8007CA8C DC03428C */  lw         $v0, %lo(D_80070328 + 0xB4)($v0)
/* 71B47C0 8007CA90 00000000 */  nop
/* 71B47C4 8007CA94 06004010 */  beqz       $v0, .Llevel_33_8007CAB0
/* 71B47C8 8007CA98 00290200 */   sll       $a1, $v0, 4
/* 71B47CC 8007CA9C 0200A104 */  bgez       $a1, .Llevel_33_8007CAA8
/* 71B47D0 8007CAA0 00000000 */   nop
/* 71B47D4 8007CAA4 FF07A524 */  addiu      $a1, $a1, 0x7FF
.Llevel_33_8007CAA8:
/* 71B47D8 8007CAA8 ADF20108 */  j          .Llevel_33_8007CAB4
/* 71B47DC 8007CAAC C32A0500 */   sra       $a1, $a1, 11
.Llevel_33_8007CAB0:
/* 71B47E0 8007CAB0 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_33_8007CAB4:
/* 71B47E4 8007CAB4 21204002 */  addu       $a0, $s2, $zero
/* 71B47E8 8007CAB8 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 71B47EC 8007CABC 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 71B47F0 8007CAC0 00000000 */  nop
/* 71B47F4 8007CAC4 09F84000 */  jalr       $v0
/* 71B47F8 8007CAC8 48006626 */   addiu     $a2, $s3, 0x48
.Llevel_33_8007CACC:
/* 71B47FC 8007CACC 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 71B4800 8007CAD0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 71B4804 8007CAD4 81000224 */  addiu      $v0, $zero, 0x81
/* 71B4808 8007CAD8 19006214 */  bne        $v1, $v0, .Llevel_33_8007CB40
/* 71B480C 8007CADC 00000000 */   nop
/* 71B4810 8007CAE0 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 71B4814 8007CAE4 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 71B4818 8007CAE8 00000000 */  nop
/* 71B481C 8007CAEC 03006010 */  beqz       $v1, .Llevel_33_8007CAFC
/* 71B4820 8007CAF0 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 71B4824 8007CAF4 CBF20108 */  j          .Llevel_33_8007CB2C
/* 71B4828 8007CAF8 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
.Llevel_33_8007CAFC:
/* 71B482C 8007CAFC 1800A427 */  addiu      $a0, $sp, 0x18
/* 71B4830 8007CB00 5E3C010C */  jal        func_8004F178
/* 71B4834 8007CB04 0C004526 */   addiu     $a1, $s2, 0xC
/* 71B4838 8007CB08 1800A427 */  addiu      $a0, $sp, 0x18
/* 71B483C 8007CB0C 2000A28F */  lw         $v0, 0x20($sp)
/* 71B4840 8007CB10 00080524 */  addiu      $a1, $zero, 0x800
/* 71B4844 8007CB14 00044224 */  addiu      $v0, $v0, 0x400
/* 71B4848 8007CB18 D668000C */  jal        func_8001A358
/* 71B484C 8007CB1C 2000A2AF */   sw        $v0, 0x20($sp)
/* 71B4850 8007CB20 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 71B4854 8007CB24 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 71B4858 8007CB28 2000A2AF */  sw         $v0, 0x20($sp)
.Llevel_33_8007CB2C:
/* 71B485C 8007CB2C 24104300 */  and        $v0, $v0, $v1
/* 71B4860 8007CB30 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 71B4864 8007CB34 25104300 */  or         $v0, $v0, $v1
/* 71B4868 8007CB38 D1F20108 */  j          .Llevel_33_8007CB44
/* 71B486C 8007CB3C 540042AE */   sw        $v0, 0x54($s2)
.Llevel_33_8007CB40:
/* 71B4870 8007CB40 540040AE */  sw         $zero, 0x54($s2)
.Llevel_33_8007CB44:
/* 71B4874 8007CB44 4C006426 */  addiu      $a0, $s3, 0x4C
/* 71B4878 8007CB48 69D6000C */  jal        func_800359A4
/* 71B487C 8007CB4C 04000524 */   addiu     $a1, $zero, 0x4
/* 71B4880 8007CB50 3F004010 */  beqz       $v0, .Llevel_33_8007CC50
/* 71B4884 8007CB54 00000000 */   nop
/* 71B4888 8007CB58 0780023C */  lui        $v0, %hi(D_8006E538)
/* 71B488C 8007CB5C 38E5428C */  lw         $v0, %lo(D_8006E538)($v0)
/* 71B4890 8007CB60 00000000 */  nop
/* 71B4894 8007CB64 20004230 */  andi       $v0, $v0, 0x20
/* 71B4898 8007CB68 39004010 */  beqz       $v0, .Llevel_33_8007CC50
/* 71B489C 8007CB6C 1F000224 */   addiu     $v0, $zero, 0x1F
/* 71B48A0 8007CB70 0780033C */  lui        $v1, %hi(D_8006E044)
/* 71B48A4 8007CB74 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 71B48A8 8007CB78 00000000 */  nop
/* 71B48AC 8007CB7C 14006210 */  beq        $v1, $v0, .Llevel_33_8007CBD0
/* 71B48B0 8007CB80 7E000224 */   addiu     $v0, $zero, 0x7E
/* 71B48B4 8007CB84 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 71B48B8 8007CB88 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 71B48BC 8007CB8C 00000000 */  nop
/* 71B48C0 8007CB90 2F006210 */  beq        $v1, $v0, .Llevel_33_8007CC50
/* 71B48C4 8007CB94 79000224 */   addiu     $v0, $zero, 0x79
/* 71B48C8 8007CB98 2D006210 */  beq        $v1, $v0, .Llevel_33_8007CC50
/* 71B48CC 8007CB9C 80000224 */   addiu     $v0, $zero, 0x80
/* 71B48D0 8007CBA0 2B006210 */  beq        $v1, $v0, .Llevel_33_8007CC50
/* 71B48D4 8007CBA4 86FF6224 */   addiu     $v0, $v1, -0x7A
/* 71B48D8 8007CBA8 0200422C */  sltiu      $v0, $v0, 0x2
/* 71B48DC 8007CBAC 28004014 */  bnez       $v0, .Llevel_33_8007CC50
/* 71B48E0 8007CBB0 7C000224 */   addiu     $v0, $zero, 0x7C
/* 71B48E4 8007CBB4 26006210 */  beq        $v1, $v0, .Llevel_33_8007CC50
/* 71B48E8 8007CBB8 00000000 */   nop
/* 71B48EC 8007CBBC 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 71B48F0 8007CBC0 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 71B48F4 8007CBC4 00000000 */  nop
/* 71B48F8 8007CBC8 21004014 */  bnez       $v0, .Llevel_33_8007CC50
/* 71B48FC 8007CBCC 00000000 */   nop
.Llevel_33_8007CBD0:
/* 71B4900 8007CBD0 7C04628E */  lw         $v0, 0x47C($s3)
/* 71B4904 8007CBD4 00000000 */  nop
/* 71B4908 8007CBD8 14004010 */  beqz       $v0, .Llevel_33_8007CC2C
/* 71B490C 8007CBDC 60010424 */   addiu     $a0, $zero, 0x160
/* 71B4910 8007CBE0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71B4914 8007CBE4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71B4918 8007CBE8 00000000 */  nop
/* 71B491C 8007CBEC 09F84000 */  jalr       $v0
/* 71B4920 8007CBF0 21284002 */   addu      $a1, $s2, $zero
/* 71B4924 8007CBF4 16004010 */  beqz       $v0, .Llevel_33_8007CC50
/* 71B4928 8007CBF8 08000224 */   addiu     $v0, $zero, 0x8
/* 71B492C 8007CBFC 02000524 */  addiu      $a1, $zero, 0x2
/* 71B4930 8007CC00 7C04648E */  lw         $a0, 0x47C($s3)
/* 71B4934 8007CC04 4C0062AE */  sw         $v0, 0x4C($s3)
/* 71B4938 8007CC08 0000908C */  lw         $s0, 0x0($a0)
/* 71B493C 8007CC0C AFEE000C */  jal        func_8003BABC
/* 71B4940 8007CC10 01000624 */   addiu     $a2, $zero, 0x1
/* 71B4944 8007CC14 0400028E */  lw         $v0, 0x4($s0)
/* 71B4948 8007CC18 00000000 */  nop
/* 71B494C 8007CC1C 0C004018 */  blez       $v0, .Llevel_33_8007CC50
/* 71B4950 8007CC20 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 71B4954 8007CC24 14F30108 */  j          .Llevel_33_8007CC50
/* 71B4958 8007CC28 040002AE */   sw        $v0, 0x4($s0)
.Llevel_33_8007CC2C:
/* 71B495C 8007CC2C C5000424 */  addiu      $a0, $zero, 0xC5
/* 71B4960 8007CC30 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71B4964 8007CC34 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71B4968 8007CC38 00000000 */  nop
/* 71B496C 8007CC3C 09F84000 */  jalr       $v0
/* 71B4970 8007CC40 21284002 */   addu      $a1, $s2, $zero
/* 71B4974 8007CC44 02004010 */  beqz       $v0, .Llevel_33_8007CC50
/* 71B4978 8007CC48 19000224 */   addiu     $v0, $zero, 0x19
/* 71B497C 8007CC4C 4C0062AE */  sw         $v0, 0x4C($s3)
.Llevel_33_8007CC50:
/* 71B4980 8007CC50 7800628E */  lw         $v0, 0x78($s3)
/* 71B4984 8007CC54 00000000 */  nop
/* 71B4988 8007CC58 50004010 */  beqz       $v0, .Llevel_33_8007CD9C
/* 71B498C 8007CC5C 00000000 */   nop
/* 71B4990 8007CC60 48004290 */  lbu        $v0, 0x48($v0)
/* 71B4994 8007CC64 00000000 */  nop
/* 71B4998 8007CC68 04004010 */  beqz       $v0, .Llevel_33_8007CC7C
/* 71B499C 8007CC6C 3C000224 */   addiu     $v0, $zero, 0x3C
/* 71B49A0 8007CC70 780060AE */  sw         $zero, 0x78($s3)
/* 71B49A4 8007CC74 86F30108 */  j          .Llevel_33_8007CE18
/* 71B49A8 8007CC78 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_33_8007CC7C:
/* 71B49AC 8007CC7C 7C00648E */  lw         $a0, 0x7C($s3)
/* 71B49B0 8007CC80 00000000 */  nop
/* 71B49B4 8007CC84 1C008010 */  beqz       $a0, .Llevel_33_8007CCF8
/* 71B49B8 8007CC88 82000224 */   addiu     $v0, $zero, 0x82
/* 71B49BC 8007CC8C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 71B49C0 8007CC90 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 71B49C4 8007CC94 00000000 */  nop
/* 71B49C8 8007CC98 11006214 */  bne        $v1, $v0, .Llevel_33_8007CCE0
/* 71B49CC 8007CC9C 00000000 */   nop
/* 71B49D0 8007CCA0 A157010C */  jal        func_80055E84
/* 71B49D4 8007CCA4 21204002 */   addu      $a0, $s2, $zero
/* 71B49D8 8007CCA8 07004228 */  slti       $v0, $v0, 0x7
/* 71B49DC 8007CCAC 5A004014 */  bnez       $v0, .Llevel_33_8007CE18
/* 71B49E0 8007CCB0 2A020224 */   addiu     $v0, $zero, 0x22A
/* 71B49E4 8007CCB4 74006386 */  lh         $v1, 0x74($s3)
/* 71B49E8 8007CCB8 00000000 */  nop
/* 71B49EC 8007CCBC 05006214 */  bne        $v1, $v0, .Llevel_33_8007CCD4
/* 71B49F0 8007CCC0 01000224 */   addiu     $v0, $zero, 0x1
/* 71B49F4 8007CCC4 7800638E */  lw         $v1, 0x78($s3)
/* 71B49F8 8007CCC8 50000224 */  addiu      $v0, $zero, 0x50
/* 71B49FC 8007CCCC 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4A00 8007CCD0 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_33_8007CCD4:
/* 71B4A04 8007CCD4 7800638E */  lw         $v1, 0x78($s3)
/* 71B4A08 8007CCD8 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4A0C 8007CCDC 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_33_8007CCE0:
/* 71B4A10 8007CCE0 0780023C */  lui        $v0, %hi(D_8006C648)
/* 71B4A14 8007CCE4 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 71B4A18 8007CCE8 00000000 */  nop
/* 71B4A1C 8007CCEC 21108200 */  addu       $v0, $a0, $v0
/* 71B4A20 8007CCF0 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4A24 8007CCF4 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_33_8007CCF8:
/* 71B4A28 8007CCF8 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 71B4A2C 8007CCFC 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 71B4A30 8007CD00 00000000 */  nop
/* 71B4A34 8007CD04 80004230 */  andi       $v0, $v0, 0x80
/* 71B4A38 8007CD08 43004010 */  beqz       $v0, .Llevel_33_8007CE18
/* 71B4A3C 8007CD0C 00000000 */   nop
/* 71B4A40 8007CD10 0780023C */  lui        $v0, %hi(D_8006E344)
/* 71B4A44 8007CD14 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 71B4A48 8007CD18 00000000 */  nop
/* 71B4A4C 8007CD1C 3E004014 */  bnez       $v0, .Llevel_33_8007CE18
/* 71B4A50 8007CD20 64007026 */   addiu     $s0, $s3, 0x64
/* 71B4A54 8007CD24 0780113C */  lui        $s1, %hi(D_80070328 + 0x30)
/* 71B4A58 8007CD28 58033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x30)
/* 71B4A5C 8007CD2C 21202002 */  addu       $a0, $s1, $zero
/* 71B4A60 8007CD30 21280002 */  addu       $a1, $s0, $zero
/* 71B4A64 8007CD34 21300002 */  addu       $a2, $s0, $zero
/* 71B4A68 8007CD38 80010224 */  addiu      $v0, $zero, 0x180
/* 71B4A6C 8007CD3C 5C0062AE */  sw         $v0, 0x5C($s3)
/* 71B4A70 8007CD40 00180224 */  addiu      $v0, $zero, 0x1800
/* 71B4A74 8007CD44 640062AE */  sw         $v0, 0x64($s3)
/* 71B4A78 8007CD48 680060AE */  sw         $zero, 0x68($s3)
/* 71B4A7C 8007CD4C 5B3B010C */  jal        func_8004ED6C
/* 71B4A80 8007CD50 6C0060AE */   sw        $zero, 0x6C($s3)
/* 71B4A84 8007CD54 21200002 */  addu       $a0, $s0, $zero
/* 71B4A88 8007CD58 21288000 */  addu       $a1, $a0, $zero
/* 71B4A8C 8007CD5C 653C010C */  jal        func_8004F194
/* 71B4A90 8007CD60 D0FF2626 */   addiu     $a2, $s1, -0x30
/* 71B4A94 8007CD64 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 71B4A98 8007CD68 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 71B4A9C 8007CD6C 0780023C */  lui        $v0, %hi(unk_ovlheader_8007432C)
/* 71B4AA0 8007CD70 2C43428C */  lw         $v0, %lo(unk_ovlheader_8007432C)($v0)
/* 71B4AA4 8007CD74 00000000 */  nop
/* 71B4AA8 8007CD78 09F84000 */  jalr       $v0
/* 71B4AAC 8007CD7C 00000000 */   nop
/* 71B4AB0 8007CD80 7C00628E */  lw         $v0, 0x7C($s3)
/* 71B4AB4 8007CD84 0780033C */  lui        $v1, %hi(D_8006C648)
/* 71B4AB8 8007CD88 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 71B4ABC 8007CD8C 00000000 */  nop
/* 71B4AC0 8007CD90 21104300 */  addu       $v0, $v0, $v1
/* 71B4AC4 8007CD94 86F30108 */  j          .Llevel_33_8007CE18
/* 71B4AC8 8007CD98 7C0062AE */   sw        $v0, 0x7C($s3)
.Llevel_33_8007CD9C:
/* 71B4ACC 8007CD9C 76006286 */  lh         $v0, 0x76($s3)
/* 71B4AD0 8007CDA0 00000000 */  nop
/* 71B4AD4 8007CDA4 1C004010 */  beqz       $v0, .Llevel_33_8007CE18
/* 71B4AD8 8007CDA8 7C006426 */   addiu     $a0, $s3, 0x7C
/* 71B4ADC 8007CDAC 69D6000C */  jal        func_800359A4
/* 71B4AE0 8007CDB0 04000524 */   addiu     $a1, $zero, 0x4
/* 71B4AE4 8007CDB4 18004010 */  beqz       $v0, .Llevel_33_8007CE18
/* 71B4AE8 8007CDB8 79000224 */   addiu     $v0, $zero, 0x79
/* 71B4AEC 8007CDBC 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 71B4AF0 8007CDC0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 71B4AF4 8007CDC4 00000000 */  nop
/* 71B4AF8 8007CDC8 13006210 */  beq        $v1, $v0, .Llevel_33_8007CE18
/* 71B4AFC 8007CDCC 82000224 */   addiu     $v0, $zero, 0x82
/* 71B4B00 8007CDD0 11006210 */  beq        $v1, $v0, .Llevel_33_8007CE18
/* 71B4B04 8007CDD4 80000224 */   addiu     $v0, $zero, 0x80
/* 71B4B08 8007CDD8 0F006210 */  beq        $v1, $v0, .Llevel_33_8007CE18
/* 71B4B0C 8007CDDC 7C000224 */   addiu     $v0, $zero, 0x7C
/* 71B4B10 8007CDE0 0D006210 */  beq        $v1, $v0, .Llevel_33_8007CE18
/* 71B4B14 8007CDE4 00000000 */   nop
/* 71B4B18 8007CDE8 74006486 */  lh         $a0, 0x74($s3)
/* 71B4B1C 8007CDEC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 71B4B20 8007CDF0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 71B4B24 8007CDF4 00000000 */  nop
/* 71B4B28 8007CDF8 09F84000 */  jalr       $v0
/* 71B4B2C 8007CDFC 21284002 */   addu      $a1, $s2, $zero
/* 71B4B30 8007CE00 05004010 */  beqz       $v0, .Llevel_33_8007CE18
/* 71B4B34 8007CE04 780062AE */   sw        $v0, 0x78($s3)
/* 71B4B38 8007CE08 76006296 */  lhu        $v0, 0x76($s3)
/* 71B4B3C 8007CE0C 7C0060AE */  sw         $zero, 0x7C($s3)
/* 71B4B40 8007CE10 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 71B4B44 8007CE14 760062A6 */  sh         $v0, 0x76($s3)
.Llevel_33_8007CE18:
/* 71B4B48 8007CE18 4ED7000C */  jal        func_80035D38
/* 71B4B4C 8007CE1C 21204002 */   addu      $a0, $s2, $zero
/* 71B4B50 8007CE20 A758010C */  jal        func_8005629C
/* 71B4B54 8007CE24 21204002 */   addu      $a0, $s2, $zero
/* 71B4B58 8007CE28 3800BF8F */  lw         $ra, 0x38($sp)
/* 71B4B5C 8007CE2C 3400B38F */  lw         $s3, 0x34($sp)
/* 71B4B60 8007CE30 3000B28F */  lw         $s2, 0x30($sp)
/* 71B4B64 8007CE34 2C00B18F */  lw         $s1, 0x2C($sp)
/* 71B4B68 8007CE38 2800B08F */  lw         $s0, 0x28($sp)
/* 71B4B6C 8007CE3C 4000BD27 */  addiu      $sp, $sp, 0x40
/* 71B4B70 8007CE40 0800E003 */  jr         $ra
/* 71B4B74 8007CE44 00000000 */   nop
.size MobyUpdate_99_level_33, . - MobyUpdate_99_level_33
