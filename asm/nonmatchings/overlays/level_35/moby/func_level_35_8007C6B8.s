.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_35_8007C6B8
/* 76FF3E8 8007C6B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 76FF3EC 8007C6BC 2000B2AF */  sw         $s2, 0x20($sp)
/* 76FF3F0 8007C6C0 21908000 */  addu       $s2, $a0, $zero
/* 76FF3F4 8007C6C4 01000224 */  addiu      $v0, $zero, 0x1
/* 76FF3F8 8007C6C8 2400BFAF */  sw         $ra, 0x24($sp)
/* 76FF3FC 8007C6CC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 76FF400 8007C6D0 1800B0AF */  sw         $s0, 0x18($sp)
/* 76FF404 8007C6D4 48004392 */  lbu        $v1, 0x48($s2)
/* 76FF408 8007C6D8 0000518E */  lw         $s1, 0x0($s2)
/* 76FF40C 8007C6DC 45006210 */  beq        $v1, $v0, .Llevel_35_8007C7F4
/* 76FF410 8007C6E0 02006228 */   slti      $v0, $v1, 0x2
/* 76FF414 8007C6E4 05004010 */  beqz       $v0, .Llevel_35_8007C6FC
/* 76FF418 8007C6E8 00000000 */   nop
/* 76FF41C 8007C6EC 0A006010 */  beqz       $v1, .Llevel_35_8007C718
/* 76FF420 8007C6F0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 76FF424 8007C6F4 4BF20108 */  j          .Llevel_35_8007C92C
/* 76FF428 8007C6F8 00000000 */   nop
.Llevel_35_8007C6FC:
/* 76FF42C 8007C6FC 02000224 */  addiu      $v0, $zero, 0x2
/* 76FF430 8007C700 6E006210 */  beq        $v1, $v0, .Llevel_35_8007C8BC
/* 76FF434 8007C704 03000224 */   addiu     $v0, $zero, 0x3
/* 76FF438 8007C708 7F006210 */  beq        $v1, $v0, .Llevel_35_8007C908
/* 76FF43C 8007C70C 00000000 */   nop
/* 76FF440 8007C710 4BF20108 */  j          .Llevel_35_8007C92C
/* 76FF444 8007C714 00000000 */   nop
.Llevel_35_8007C718:
/* 76FF448 8007C718 50004392 */  lbu        $v1, 0x50($s2)
/* 76FF44C 8007C71C 00000000 */  nop
/* 76FF450 8007C720 31006210 */  beq        $v1, $v0, .Llevel_35_8007C7E8
/* 76FF454 8007C724 01000424 */   addiu     $a0, $zero, 0x1
/* 76FF458 8007C728 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 76FF45C 8007C72C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 76FF460 8007C730 00000000 */  nop
/* 76FF464 8007C734 09F84000 */  jalr       $v0
/* 76FF468 8007C738 21284002 */   addu      $a1, $s2, $zero
/* 76FF46C 8007C73C 2A004010 */  beqz       $v0, .Llevel_35_8007C7E8
/* 76FF470 8007C740 000022AE */   sw        $v0, 0x0($s1)
/* 76FF474 8007C744 0C004424 */  addiu      $a0, $v0, 0xC
/* 76FF478 8007C748 0000508C */  lw         $s0, 0x0($v0)
/* 76FF47C 8007C74C 5E3C010C */  jal        func_8004F178
/* 76FF480 8007C750 0C004526 */   addiu     $a1, $s2, 0xC
/* 76FF484 8007C754 0000238E */  lw         $v1, 0x0($s1)
/* 76FF488 8007C758 05000224 */  addiu      $v0, $zero, 0x5
/* 76FF48C 8007C75C 480062A0 */  sb         $v0, 0x48($v1)
/* 76FF490 8007C760 50004292 */  lbu        $v0, 0x50($s2)
/* 76FF494 8007C764 0000238E */  lw         $v1, 0x0($s1)
/* 76FF498 8007C768 0680013C */  lui        $at, %hi(D_80066964)
/* 76FF49C 8007C76C 21082200 */  addu       $at, $at, $v0
/* 76FF4A0 8007C770 64692290 */  lbu        $v0, %lo(D_80066964)($at)
/* 76FF4A4 8007C774 00000000 */  nop
/* 76FF4A8 8007C778 490062A0 */  sb         $v0, 0x49($v1)
/* 76FF4AC 8007C77C 0000238E */  lw         $v1, 0x0($s1)
/* 76FF4B0 8007C780 00000000 */  nop
/* 76FF4B4 8007C784 49006290 */  lbu        $v0, 0x49($v1)
/* 76FF4B8 8007C788 0680013C */  lui        $at, %hi(D_80066988)
/* 76FF4BC 8007C78C 21082200 */  addu       $at, $at, $v0
/* 76FF4C0 8007C790 88692290 */  lbu        $v0, %lo(D_80066988)($at)
/* 76FF4C4 8007C794 00000000 */  nop
/* 76FF4C8 8007C798 3C0062A0 */  sb         $v0, 0x3C($v1)
/* 76FF4CC 8007C79C 0000238E */  lw         $v1, 0x0($s1)
/* 76FF4D0 8007C7A0 00000000 */  nop
/* 76FF4D4 8007C7A4 49006290 */  lbu        $v0, 0x49($v1)
/* 76FF4D8 8007C7A8 0680013C */  lui        $at, %hi(D_80066990)
/* 76FF4DC 8007C7AC 21082200 */  addu       $at, $at, $v0
/* 76FF4E0 8007C7B0 90692290 */  lbu        $v0, %lo(D_80066990)($at)
/* 76FF4E4 8007C7B4 00000000 */  nop
/* 76FF4E8 8007C7B8 540062A0 */  sb         $v0, 0x54($v1)
/* 76FF4EC 8007C7BC 0000228E */  lw         $v0, 0x0($s1)
/* 76FF4F0 8007C7C0 3F000324 */  addiu      $v1, $zero, 0x3F
/* 76FF4F4 8007C7C4 4C0043A0 */  sb         $v1, 0x4C($v0)
/* 76FF4F8 8007C7C8 0000228E */  lw         $v0, 0x0($s1)
/* 76FF4FC 8007C7CC 00000000 */  nop
/* 76FF500 8007C7D0 4E0043A0 */  sb         $v1, 0x4E($v0)
/* 76FF504 8007C7D4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 76FF508 8007C7D8 9171010C */  jal        rand
/* 76FF50C 8007C7DC 130002A2 */   sb        $v0, 0x13($s0)
/* 76FF510 8007C7E0 FF004230 */  andi       $v0, $v0, 0xFF
/* 76FF514 8007C7E4 040022AE */  sw         $v0, 0x4($s1)
.Llevel_35_8007C7E8:
/* 76FF518 8007C7E8 01000224 */  addiu      $v0, $zero, 0x1
/* 76FF51C 8007C7EC 4BF20108 */  j          .Llevel_35_8007C92C
/* 76FF520 8007C7F0 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_35_8007C7F4:
/* 76FF524 8007C7F4 0000228E */  lw         $v0, 0x0($s1)
/* 76FF528 8007C7F8 00000000 */  nop
/* 76FF52C 8007C7FC 23004010 */  beqz       $v0, .Llevel_35_8007C88C
/* 76FF530 8007C800 21204002 */   addu      $a0, $s2, $zero
/* 76FF534 8007C804 0400228E */  lw         $v0, 0x4($s1)
/* 76FF538 8007C808 0780033C */  lui        $v1, %hi(D_8006C648)
/* 76FF53C 8007C80C 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 76FF540 8007C810 00000000 */  nop
/* 76FF544 8007C814 21104300 */  addu       $v0, $v0, $v1
/* 76FF548 8007C818 040022AE */  sw         $v0, 0x4($s1)
/* 76FF54C 8007C81C C0100200 */  sll        $v0, $v0, 3
/* 76FF550 8007C820 F8014230 */  andi       $v0, $v0, 0x1F8
/* 76FF554 8007C824 0680013C */  lui        $at, %hi(D_80065920)
/* 76FF558 8007C828 21082200 */  addu       $at, $at, $v0
/* 76FF55C 8007C82C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 76FF560 8007C830 0000238E */  lw         $v1, 0x0($s1)
/* 76FF564 8007C834 02120200 */  srl        $v0, $v0, 8
/* 76FF568 8007C838 450062A0 */  sb         $v0, 0x45($v1)
/* 76FF56C 8007C83C 0000238E */  lw         $v1, 0x0($s1)
/* 76FF570 8007C840 00000000 */  nop
/* 76FF574 8007C844 46006290 */  lbu        $v0, 0x46($v1)
/* 76FF578 8007C848 00000000 */  nop
/* 76FF57C 8007C84C 04004224 */  addiu      $v0, $v0, 0x4
/* 76FF580 8007C850 460062A0 */  sb         $v0, 0x46($v1)
/* 76FF584 8007C854 0400228E */  lw         $v0, 0x4($s1)
/* 76FF588 8007C858 1400438E */  lw         $v1, 0x14($s2)
/* 76FF58C 8007C85C 80100200 */  sll        $v0, $v0, 2
/* 76FF590 8007C860 FC014230 */  andi       $v0, $v0, 0x1FC
/* 76FF594 8007C864 0680013C */  lui        $at, %hi(D_80065920)
/* 76FF598 8007C868 21082200 */  addu       $at, $at, $v0
/* 76FF59C 8007C86C 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 76FF5A0 8007C870 0000248E */  lw         $a0, 0x0($s1)
/* 76FF5A4 8007C874 00140200 */  sll        $v0, $v0, 16
/* 76FF5A8 8007C878 03150200 */  sra        $v0, $v0, 20
/* 76FF5AC 8007C87C 00044224 */  addiu      $v0, $v0, 0x400
/* 76FF5B0 8007C880 21186200 */  addu       $v1, $v1, $v0
/* 76FF5B4 8007C884 140083AC */  sw         $v1, 0x14($a0)
/* 76FF5B8 8007C888 21204002 */  addu       $a0, $s2, $zero
.Llevel_35_8007C88C:
/* 76FF5BC 8007C88C 0780053C */  lui        $a1, %hi(D_80070328)
/* 76FF5C0 8007C890 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 76FF5C4 8007C894 000C0624 */  addiu      $a2, $zero, 0xC00
/* 76FF5C8 8007C898 0780023C */  lui        $v0, %hi(unk_ovlheader_8007439C)
/* 76FF5CC 8007C89C 9C43428C */  lw         $v0, %lo(unk_ovlheader_8007439C)($v0)
/* 76FF5D0 8007C8A0 00000000 */  nop
/* 76FF5D4 8007C8A4 09F84000 */  jalr       $v0
/* 76FF5D8 8007C8A8 21380000 */   addu      $a3, $zero, $zero
/* 76FF5DC 8007C8AC 1F004010 */  beqz       $v0, .Llevel_35_8007C92C
/* 76FF5E0 8007C8B0 02000224 */   addiu     $v0, $zero, 0x2
/* 76FF5E4 8007C8B4 4BF20108 */  j          .Llevel_35_8007C92C
/* 76FF5E8 8007C8B8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_35_8007C8BC:
/* 76FF5EC 8007C8BC 0C00248E */  lw         $a0, 0xC($s1)
/* 76FF5F0 8007C8C0 00000000 */  nop
/* 76FF5F4 8007C8C4 03008004 */  bltz       $a0, .Llevel_35_8007C8D4
/* 76FF5F8 8007C8C8 FC000524 */   addiu     $a1, $zero, 0xFC
/* 76FF5FC 8007C8CC B687000C */  jal        func_80021ED8
/* 76FF600 8007C8D0 21300000 */   addu      $a2, $zero, $zero
.Llevel_35_8007C8D4:
/* 76FF604 8007C8D4 0780023C */  lui        $v0, %hi(unk_ovlheader_80074384)
/* 76FF608 8007C8D8 8443428C */  lw         $v0, %lo(unk_ovlheader_80074384)($v0)
/* 76FF60C 8007C8DC 00000000 */  nop
/* 76FF610 8007C8E0 09F84000 */  jalr       $v0
/* 76FF614 8007C8E4 21204002 */   addu      $a0, $s2, $zero
/* 76FF618 8007C8E8 0000238E */  lw         $v1, 0x0($s1)
/* 76FF61C 8007C8EC 00000000 */  nop
/* 76FF620 8007C8F0 02006010 */  beqz       $v1, .Llevel_35_8007C8FC
/* 76FF624 8007C8F4 04000224 */   addiu     $v0, $zero, 0x4
/* 76FF628 8007C8F8 480062A0 */  sb         $v0, 0x48($v1)
.Llevel_35_8007C8FC:
/* 76FF62C 8007C8FC 03000224 */  addiu      $v0, $zero, 0x3
/* 76FF630 8007C900 4BF20108 */  j          .Llevel_35_8007C92C
/* 76FF634 8007C904 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_35_8007C908:
/* 76FF638 8007C908 0800258E */  lw         $a1, 0x8($s1)
/* 76FF63C 8007C90C F0EF000C */  jal        func_8003BFC0
/* 76FF640 8007C910 21204002 */   addu      $a0, $s2, $zero
/* 76FF644 8007C914 05004014 */  bnez       $v0, .Llevel_35_8007C92C
/* 76FF648 8007C918 21204002 */   addu      $a0, $s2, $zero
/* 76FF64C 8007C91C 08000524 */  addiu      $a1, $zero, 0x8
/* 76FF650 8007C920 C4EE000C */  jal        func_8003BB10
/* 76FF654 8007C924 04000624 */   addiu     $a2, $zero, 0x4
/* 76FF658 8007C928 080022AE */  sw         $v0, 0x8($s1)
.Llevel_35_8007C92C:
/* 76FF65C 8007C92C 2400BF8F */  lw         $ra, 0x24($sp)
/* 76FF660 8007C930 2000B28F */  lw         $s2, 0x20($sp)
/* 76FF664 8007C934 1C00B18F */  lw         $s1, 0x1C($sp)
/* 76FF668 8007C938 1800B08F */  lw         $s0, 0x18($sp)
/* 76FF66C 8007C93C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 76FF670 8007C940 0800E003 */  jr         $ra
/* 76FF674 8007C944 00000000 */   nop
.size func_level_35_8007C6B8, . - func_level_35_8007C6B8
