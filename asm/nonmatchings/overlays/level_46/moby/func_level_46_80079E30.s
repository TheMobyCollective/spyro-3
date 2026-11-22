.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_99_level_46
/* 8F4C360 80079E30 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 8F4C364 80079E34 3400B3AF */  sw         $s3, 0x34($sp)
/* 8F4C368 80079E38 21988000 */  addu       $s3, $a0, $zero
/* 8F4C36C 80079E3C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8F4C370 80079E40 3800BFAF */  sw         $ra, 0x38($sp)
/* 8F4C374 80079E44 3000B2AF */  sw         $s2, 0x30($sp)
/* 8F4C378 80079E48 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8F4C37C 80079E4C 2800B0AF */  sw         $s0, 0x28($sp)
/* 8F4C380 80079E50 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 8F4C384 80079E54 0780023C */  lui        $v0, %hi(D_8006C640)
/* 8F4C388 80079E58 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 8F4C38C 80079E5C 0000728E */  lw         $s2, 0x0($s3)
/* 8F4C390 80079E60 12004018 */  blez       $v0, .Llevel_46_80079EAC
/* 8F4C394 80079E64 00000000 */   nop
/* 8F4C398 80079E68 8004428E */  lw         $v0, 0x480($s2)
/* 8F4C39C 80079E6C 00000000 */  nop
/* 8F4C3A0 80079E70 0E004014 */  bnez       $v0, .Llevel_46_80079EAC
/* 8F4C3A4 80079E74 00000000 */   nop
/* 8F4C3A8 80079E78 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 8F4C3AC 80079E7C F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 8F4C3B0 80079E80 0680023C */  lui        $v0, %hi(D_800652B0 + 0xB0)
/* 8F4C3B4 80079E84 6053428C */  lw         $v0, %lo(D_800652B0 + 0xB0)($v0)
/* 8F4C3B8 80079E88 0680063C */  lui        $a2, %hi(D_800652B6 + 0xB0)
/* 8F4C3BC 80079E8C 6653C694 */  lhu        $a2, %lo(D_800652B6 + 0xB0)($a2)
/* 8F4C3C0 80079E90 0680053C */  lui        $a1, %hi(D_800652B4 + 0xB0)
/* 8F4C3C4 80079E94 6453A594 */  lhu        $a1, %lo(D_800652B4 + 0xB0)($a1)
/* 8F4C3C8 80079E98 21208200 */  addu       $a0, $a0, $v0
/* 8F4C3CC 80079E9C 613E010C */  jal        func_8004F984
/* 8F4C3D0 80079EA0 21288500 */   addu      $a1, $a0, $a1
/* 8F4C3D4 80079EA4 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4C3D8 80079EA8 800442AE */  sw         $v0, 0x480($s2)
.Llevel_46_80079EAC:
/* 8F4C3DC 80079EAC 48006392 */  lbu        $v1, 0x48($s3)
/* 8F4C3E0 80079EB0 01000424 */  addiu      $a0, $zero, 0x1
/* 8F4C3E4 80079EB4 65006410 */  beq        $v1, $a0, .Llevel_46_8007A04C
/* 8F4C3E8 80079EB8 02006228 */   slti      $v0, $v1, 0x2
/* 8F4C3EC 80079EBC 05004010 */  beqz       $v0, .Llevel_46_80079ED4
/* 8F4C3F0 80079EC0 00000000 */   nop
/* 8F4C3F4 80079EC4 0A006010 */  beqz       $v1, .Llevel_46_80079EF0
/* 8F4C3F8 80079EC8 00000000 */   nop
/* 8F4C3FC 80079ECC 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C400 80079ED0 00000000 */   nop
.Llevel_46_80079ED4:
/* 8F4C404 80079ED4 03000224 */  addiu      $v0, $zero, 0x3
/* 8F4C408 80079ED8 87006210 */  beq        $v1, $v0, .Llevel_46_8007A0F8
/* 8F4C40C 80079EDC 12000224 */   addiu     $v0, $zero, 0x12
/* 8F4C410 80079EE0 33006210 */  beq        $v1, $v0, .Llevel_46_80079FB0
/* 8F4C414 80079EE4 00000000 */   nop
/* 8F4C418 80079EE8 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C41C 80079EEC 00000000 */   nop
.Llevel_46_80079EF0:
/* 8F4C420 80079EF0 02004292 */  lbu        $v0, 0x2($s2)
/* 8F4C424 80079EF4 00000000 */  nop
/* 8F4C428 80079EF8 06004014 */  bnez       $v0, .Llevel_46_80079F14
/* 8F4C42C 80079EFC 00000000 */   nop
/* 8F4C430 80079F00 0780023C */  lui        $v0, %hi(D_800715B2)
/* 8F4C434 80079F04 B2154290 */  lbu        $v0, %lo(D_800715B2)($v0)
/* 8F4C438 80079F08 00000000 */  nop
/* 8F4C43C 80079F0C 15004014 */  bnez       $v0, .Llevel_46_80079F64
/* 8F4C440 80079F10 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_46_80079F14:
/* 8F4C444 80079F14 02004392 */  lbu        $v1, 0x2($s2)
/* 8F4C448 80079F18 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4C44C 80079F1C 13006214 */  bne        $v1, $v0, .Llevel_46_80079F6C
/* 8F4C450 80079F20 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4C454 80079F24 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 8F4C458 80079F28 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 8F4C45C 80079F2C 00000000 */  nop
/* 8F4C460 80079F30 01004230 */  andi       $v0, $v0, 0x1
/* 8F4C464 80079F34 0D004014 */  bnez       $v0, .Llevel_46_80079F6C
/* 8F4C468 80079F38 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4C46C 80079F3C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 8F4C470 80079F40 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 8F4C474 80079F44 0780013C */  lui        $at, %hi(D_80070300)
/* 8F4C478 80079F48 21082200 */  addu       $at, $at, $v0
/* 8F4C47C 80079F4C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 8F4C480 80079F50 00000000 */  nop
/* 8F4C484 80079F54 01004230 */  andi       $v0, $v0, 0x1
/* 8F4C488 80079F58 04004014 */  bnez       $v0, .Llevel_46_80079F6C
/* 8F4C48C 80079F5C 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4C490 80079F60 05000224 */  addiu      $v0, $zero, 0x5
.Llevel_46_80079F64:
/* 8F4C494 80079F64 020042A2 */  sb         $v0, 0x2($s2)
/* 8F4C498 80079F68 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_46_80079F6C:
/* 8F4C49C 80079F6C 380060A6 */  sh         $zero, 0x38($s3)
/* 8F4C4A0 80079F70 050042A2 */  sb         $v0, 0x5($s2)
/* 8F4C4A4 80079F74 0780023C */  lui        $v0, %hi(D_8006C598)
/* 8F4C4A8 80079F78 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 8F4C4AC 80079F7C 00000000 */  nop
/* 8F4C4B0 80079F80 91014014 */  bnez       $v0, .Llevel_46_8007A5C8
/* 8F4C4B4 80079F84 21206002 */   addu      $a0, $s3, $zero
/* 8F4C4B8 80079F88 EFDE000C */  jal        func_80037BBC
/* 8F4C4BC 80079F8C 21280000 */   addu      $a1, $zero, $zero
/* 8F4C4C0 80079F90 8D014010 */  beqz       $v0, .Llevel_46_8007A5C8
/* 8F4C4C4 80079F94 21206002 */   addu      $a0, $s3, $zero
/* 8F4C4C8 80079F98 21280000 */  addu       $a1, $zero, $zero
/* 8F4C4CC 80079F9C B944010C */  jal        func_800512E4
/* 8F4C4D0 80079FA0 12000624 */   addiu     $a2, $zero, 0x12
/* 8F4C4D4 80079FA4 12000224 */  addiu      $v0, $zero, 0x12
/* 8F4C4D8 80079FA8 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C4DC 80079FAC 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_46_80079FB0:
/* 8F4C4E0 80079FB0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 8F4C4E4 80079FB4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 8F4C4E8 80079FB8 00000000 */  nop
/* 8F4C4EC 80079FBC 82014410 */  beq        $v0, $a0, .Llevel_46_8007A5C8
/* 8F4C4F0 80079FC0 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 8F4C4F4 80079FC4 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 8F4C4F8 80079FC8 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 8F4C4FC 80079FCC 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 8F4C500 80079FD0 04004392 */  lbu        $v1, 0x4($s2)
/* 8F4C504 80079FD4 02000224 */  addiu      $v0, $zero, 0x2
/* 8F4C508 80079FD8 05006214 */  bne        $v1, $v0, .Llevel_46_80079FF0
/* 8F4C50C 80079FDC 00000000 */   nop
/* 8F4C510 80079FE0 D44F010C */  jal        func_80053F50
/* 8F4C514 80079FE4 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 8F4C518 80079FE8 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C51C 80079FEC 00000000 */   nop
.Llevel_46_80079FF0:
/* 8F4C520 80079FF0 0780043C */  lui        $a0, %hi(D_8006D088)
/* 8F4C524 80079FF4 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 8F4C528 80079FF8 4400438E */  lw         $v1, 0x44($s2)
/* 8F4C52C 80079FFC 0780053C */  lui        $a1, %hi(D_8006C550)
/* 8F4C530 8007A000 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 8F4C534 8007A004 40100300 */  sll        $v0, $v1, 1
/* 8F4C538 8007A008 21104300 */  addu       $v0, $v0, $v1
/* 8F4C53C 8007A00C 80100200 */  sll        $v0, $v0, 2
/* 8F4C540 8007A010 23104300 */  subu       $v0, $v0, $v1
/* 8F4C544 8007A014 C0100200 */  sll        $v0, $v0, 3
/* 8F4C548 8007A018 2128A200 */  addu       $a1, $a1, $v0
/* 8F4C54C 8007A01C 4600A690 */  lbu        $a2, 0x46($a1)
/* 8F4C550 8007A020 8DED000C */  jal        func_8003B634
/* 8F4C554 8007A024 0C00A524 */   addiu     $a1, $a1, 0xC
/* 8F4C558 8007A028 21206002 */  addu       $a0, $s3, $zero
/* 8F4C55C 8007A02C 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4C560 8007A030 3C000224 */  addiu      $v0, $zero, 0x3C
/* 8F4C564 8007A034 7C0042AE */  sw         $v0, 0x7C($s2)
/* 8F4C568 8007A038 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4C56C 8007A03C D0D3000C */  jal        func_80034F40
/* 8F4C570 8007A040 480062A2 */   sb        $v0, 0x48($s3)
/* 8F4C574 8007A044 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C578 8007A048 00000000 */   nop
.Llevel_46_8007A04C:
/* 8F4C57C 8007A04C 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 8F4C580 8007A050 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 8F4C584 8007A054 21206002 */  addu       $a0, $s3, $zero
/* 8F4C588 8007A058 08000624 */  addiu      $a2, $zero, 0x8
/* 8F4C58C 8007A05C 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 8F4C590 8007A060 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 8F4C594 8007A064 3400458E */  lw         $a1, 0x34($s2)
/* 8F4C598 8007A068 10000724 */  addiu      $a3, $zero, 0x10
/* 8F4C59C 8007A06C 1000A3AF */  sw         $v1, 0x10($sp)
/* 8F4C5A0 8007A070 1400A0AF */  sw         $zero, 0x14($sp)
/* 8F4C5A4 8007A074 17D6000C */  jal        func_8003585C
/* 8F4C5A8 8007A078 8000A524 */   addiu     $a1, $a1, 0x80
/* 8F4C5AC 8007A07C 06004010 */  beqz       $v0, .Llevel_46_8007A098
/* 8F4C5B0 8007A080 21206002 */   addu      $a0, $s3, $zero
/* 8F4C5B4 8007A084 1000A0AF */  sw         $zero, 0x10($sp)
/* 8F4C5B8 8007A088 80000524 */  addiu      $a1, $zero, 0x80
/* 8F4C5BC 8007A08C 21300000 */  addu       $a2, $zero, $zero
/* 8F4C5C0 8007A090 77D7000C */  jal        func_80035DDC
/* 8F4C5C4 8007A094 21380000 */   addu      $a3, $zero, $zero
.Llevel_46_8007A098:
/* 8F4C5C8 8007A098 7C004426 */  addiu      $a0, $s2, 0x7C
/* 8F4C5CC 8007A09C 69D6000C */  jal        func_800359A4
/* 8F4C5D0 8007A0A0 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4C5D4 8007A0A4 02000324 */  addiu      $v1, $zero, 0x2
/* 8F4C5D8 8007A0A8 47014314 */  bne        $v0, $v1, .Llevel_46_8007A5C8
/* 8F4C5DC 8007A0AC 48007026 */   addiu     $s0, $s3, 0x48
/* 8F4C5E0 8007A0B0 21200002 */  addu       $a0, $s0, $zero
/* 8F4C5E4 8007A0B4 01000524 */  addiu      $a1, $zero, 0x1
/* 8F4C5E8 8007A0B8 0780113C */  lui        $s1, %hi(D_8006D088)
/* 8F4C5EC 8007A0BC 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 8F4C5F0 8007A0C0 21302002 */  addu       $a2, $s1, $zero
/* 8F4C5F4 8007A0C4 03000224 */  addiu      $v0, $zero, 0x3
/* 8F4C5F8 8007A0C8 EDED000C */  jal        func_8003B7B4
/* 8F4C5FC 8007A0CC 480062A2 */   sb        $v0, 0x48($s3)
/* 8F4C600 8007A0D0 21200002 */  addu       $a0, $s0, $zero
/* 8F4C604 8007A0D4 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 8F4C608 8007A0D8 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 8F4C60C 8007A0DC EDED000C */  jal        func_8003B7B4
/* 8F4C610 8007A0E0 01000524 */   addiu     $a1, $zero, 0x1
/* 8F4C614 8007A0E4 D3ED000C */  jal        func_8003B74C
/* 8F4C618 8007A0E8 21202002 */   addu      $a0, $s1, $zero
/* 8F4C61C 8007A0EC 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4C620 8007A0F0 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C624 8007A0F4 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_46_8007A0F8:
/* 8F4C628 8007A0F8 21206002 */  addu       $a0, $s3, $zero
/* 8F4C62C 8007A0FC 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 8F4C630 8007A100 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 8F4C634 8007A104 00000000 */  nop
/* 8F4C638 8007A108 09F84000 */  jalr       $v0
/* 8F4C63C 8007A10C 73000524 */   addiu     $a1, $zero, 0x73
/* 8F4C640 8007A110 0780043C */  lui        $a0, %hi(D_800719A8)
/* 8F4C644 8007A114 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 8F4C648 8007A118 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 8F4C64C 8007A11C 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 8F4C650 8007A120 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 8F4C654 8007A124 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 8F4C658 8007A128 694D000C */  jal        func_800135A4
/* 8F4C65C 8007A12C 21300000 */   addu      $a2, $zero, $zero
/* 8F4C660 8007A130 0780043C */  lui        $a0, %hi(D_800719F0)
/* 8F4C664 8007A134 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 8F4C668 8007A138 0780053C */  lui        $a1, %hi(D_80068F90)
/* 8F4C66C 8007A13C 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 8F4C670 8007A140 694D000C */  jal        func_800135A4
/* 8F4C674 8007A144 21300000 */   addu      $a2, $zero, $zero
/* 8F4C678 8007A148 0780033C */  lui        $v1, %hi(D_8006E044)
/* 8F4C67C 8007A14C 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 8F4C680 8007A150 1F000224 */  addiu      $v0, $zero, 0x1F
/* 8F4C684 8007A154 03006210 */  beq        $v1, $v0, .Llevel_46_8007A164
/* 8F4C688 8007A158 28000224 */   addiu     $v0, $zero, 0x28
/* 8F4C68C 8007A15C 0D006214 */  bne        $v1, $v0, .Llevel_46_8007A194
/* 8F4C690 8007A160 10000324 */   addiu     $v1, $zero, 0x10
.Llevel_46_8007A164:
/* 8F4C694 8007A164 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 8F4C698 8007A168 4D0060A2 */  sb         $zero, 0x4D($s3)
/* 8F4C69C 8007A16C 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 8F4C6A0 8007A170 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 8F4C6A4 8007A174 00000000 */  nop
/* 8F4C6A8 8007A178 0D004010 */  beqz       $v0, .Llevel_46_8007A1B0
/* 8F4C6AC 8007A17C 00000000 */   nop
/* 8F4C6B0 8007A180 4C0040A0 */  sb         $zero, 0x4C($v0)
/* 8F4C6B4 8007A184 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 8F4C6B8 8007A188 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 8F4C6BC 8007A18C 6CE80108 */  j          .Llevel_46_8007A1B0
/* 8F4C6C0 8007A190 4D0040A0 */   sb        $zero, 0x4D($v0)
.Llevel_46_8007A194:
/* 8F4C6C4 8007A194 4C0063A2 */  sb         $v1, 0x4C($s3)
/* 8F4C6C8 8007A198 0780023C */  lui        $v0, %hi(D_8006C65C)
/* 8F4C6CC 8007A19C 5CC6428C */  lw         $v0, %lo(D_8006C65C)($v0)
/* 8F4C6D0 8007A1A0 00000000 */  nop
/* 8F4C6D4 8007A1A4 02004010 */  beqz       $v0, .Llevel_46_8007A1B0
/* 8F4C6D8 8007A1A8 00000000 */   nop
/* 8F4C6DC 8007A1AC 4C0043A0 */  sb         $v1, 0x4C($v0)
.Llevel_46_8007A1B0:
/* 8F4C6E0 8007A1B0 0780033C */  lui        $v1, %hi(D_80070328 + 0x24C)
/* 8F4C6E4 8007A1B4 7405638C */  lw         $v1, %lo(D_80070328 + 0x24C)($v1)
/* 8F4C6E8 8007A1B8 04000224 */  addiu      $v0, $zero, 0x4
/* 8F4C6EC 8007A1BC 31006214 */  bne        $v1, $v0, .Llevel_46_8007A284
/* 8F4C6F0 8007A1C0 00000000 */   nop
/* 8F4C6F4 8007A1C4 0780043C */  lui        $a0, %hi(D_80070328 + 0x48)
/* 8F4C6F8 8007A1C8 7003848C */  lw         $a0, %lo(D_80070328 + 0x48)($a0)
/* 8F4C6FC 8007A1CC 3D006392 */  lbu        $v1, 0x3D($s3)
/* 8F4C700 8007A1D0 8DFF8524 */  addiu      $a1, $a0, -0x73
/* 8F4C704 8007A1D4 2C00A310 */  beq        $a1, $v1, .Llevel_46_8007A288
/* 8F4C708 8007A1D8 83000224 */   addiu     $v0, $zero, 0x83
/* 8F4C70C 8007A1DC 13008214 */  bne        $a0, $v0, .Llevel_46_8007A22C
/* 8F4C710 8007A1E0 84000224 */   addiu     $v0, $zero, 0x84
/* 8F4C714 8007A1E4 3C006492 */  lbu        $a0, 0x3C($s3)
/* 8F4C718 8007A1E8 11000224 */  addiu      $v0, $zero, 0x11
/* 8F4C71C 8007A1EC 03008210 */  beq        $a0, $v0, .Llevel_46_8007A1FC
/* 8F4C720 8007A1F0 00000000 */   nop
/* 8F4C724 8007A1F4 04006214 */  bne        $v1, $v0, .Llevel_46_8007A208
/* 8F4C728 8007A1F8 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_46_8007A1FC:
/* 8F4C72C 8007A1FC 21206002 */  addu       $a0, $s3, $zero
/* 8F4C730 8007A200 9DE80108 */  j          .Llevel_46_8007A274
/* 8F4C734 8007A204 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_46_8007A208:
/* 8F4C738 8007A208 05006214 */  bne        $v1, $v0, .Llevel_46_8007A220
/* 8F4C73C 8007A20C 00000000 */   nop
/* 8F4C740 8007A210 1A008314 */  bne        $a0, $v1, .Llevel_46_8007A27C
/* 8F4C744 8007A214 21206002 */   addu      $a0, $s3, $zero
/* 8F4C748 8007A218 9DE80108 */  j          .Llevel_46_8007A274
/* 8F4C74C 8007A21C 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_46_8007A220:
/* 8F4C750 8007A220 21206002 */  addu       $a0, $s3, $zero
/* 8F4C754 8007A224 9DE80108 */  j          .Llevel_46_8007A274
/* 8F4C758 8007A228 10000524 */   addiu     $a1, $zero, 0x10
.Llevel_46_8007A22C:
/* 8F4C75C 8007A22C 11008214 */  bne        $a0, $v0, .Llevel_46_8007A274
/* 8F4C760 8007A230 21206002 */   addu      $a0, $s3, $zero
/* 8F4C764 8007A234 3C006492 */  lbu        $a0, 0x3C($s3)
/* 8F4C768 8007A238 10000224 */  addiu      $v0, $zero, 0x10
/* 8F4C76C 8007A23C 03008210 */  beq        $a0, $v0, .Llevel_46_8007A24C
/* 8F4C770 8007A240 00000000 */   nop
/* 8F4C774 8007A244 04006214 */  bne        $v1, $v0, .Llevel_46_8007A258
/* 8F4C778 8007A248 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_46_8007A24C:
/* 8F4C77C 8007A24C 21206002 */  addu       $a0, $s3, $zero
/* 8F4C780 8007A250 9DE80108 */  j          .Llevel_46_8007A274
/* 8F4C784 8007A254 02000524 */   addiu     $a1, $zero, 0x2
.Llevel_46_8007A258:
/* 8F4C788 8007A258 05006214 */  bne        $v1, $v0, .Llevel_46_8007A270
/* 8F4C78C 8007A25C 11000524 */   addiu     $a1, $zero, 0x11
/* 8F4C790 8007A260 06008314 */  bne        $a0, $v1, .Llevel_46_8007A27C
/* 8F4C794 8007A264 21206002 */   addu      $a0, $s3, $zero
/* 8F4C798 8007A268 9DE80108 */  j          .Llevel_46_8007A274
/* 8F4C79C 8007A26C 00000000 */   nop
.Llevel_46_8007A270:
/* 8F4C7A0 8007A270 21206002 */  addu       $a0, $s3, $zero
.Llevel_46_8007A274:
/* 8F4C7A4 8007A274 D0D3000C */  jal        func_80034F40
/* 8F4C7A8 8007A278 00000000 */   nop
.Llevel_46_8007A27C:
/* 8F4C7AC 8007A27C B6E80108 */  j          .Llevel_46_8007A2D8
/* 8F4C7B0 8007A280 480040AE */   sw        $zero, 0x48($s2)
.Llevel_46_8007A284:
/* 8F4C7B4 8007A284 3D006392 */  lbu        $v1, 0x3D($s3)
.Llevel_46_8007A288:
/* 8F4C7B8 8007A288 01000224 */  addiu      $v0, $zero, 0x1
/* 8F4C7BC 8007A28C 12006214 */  bne        $v1, $v0, .Llevel_46_8007A2D8
/* 8F4C7C0 8007A290 00000000 */   nop
/* 8F4C7C4 8007A294 0780023C */  lui        $v0, %hi(D_80070328 + 0xB4)
/* 8F4C7C8 8007A298 DC03428C */  lw         $v0, %lo(D_80070328 + 0xB4)($v0)
/* 8F4C7CC 8007A29C 00000000 */  nop
/* 8F4C7D0 8007A2A0 06004010 */  beqz       $v0, .Llevel_46_8007A2BC
/* 8F4C7D4 8007A2A4 00290200 */   sll       $a1, $v0, 4
/* 8F4C7D8 8007A2A8 0200A104 */  bgez       $a1, .Llevel_46_8007A2B4
/* 8F4C7DC 8007A2AC 00000000 */   nop
/* 8F4C7E0 8007A2B0 FF07A524 */  addiu      $a1, $a1, 0x7FF
.Llevel_46_8007A2B4:
/* 8F4C7E4 8007A2B4 B0E80108 */  j          .Llevel_46_8007A2C0
/* 8F4C7E8 8007A2B8 C32A0500 */   sra       $a1, $a1, 11
.Llevel_46_8007A2BC:
/* 8F4C7EC 8007A2BC 08000524 */  addiu      $a1, $zero, 0x8
.Llevel_46_8007A2C0:
/* 8F4C7F0 8007A2C0 21206002 */  addu       $a0, $s3, $zero
/* 8F4C7F4 8007A2C4 0780023C */  lui        $v0, %hi(unk_ovlheader_80074320)
/* 8F4C7F8 8007A2C8 2043428C */  lw         $v0, %lo(unk_ovlheader_80074320)($v0)
/* 8F4C7FC 8007A2CC 00000000 */  nop
/* 8F4C800 8007A2D0 09F84000 */  jalr       $v0
/* 8F4C804 8007A2D4 48004626 */   addiu     $a2, $s2, 0x48
.Llevel_46_8007A2D8:
/* 8F4C808 8007A2D8 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8F4C80C 8007A2DC 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8F4C810 8007A2E0 81000224 */  addiu      $v0, $zero, 0x81
/* 8F4C814 8007A2E4 19006214 */  bne        $v1, $v0, .Llevel_46_8007A34C
/* 8F4C818 8007A2E8 00000000 */   nop
/* 8F4C81C 8007A2EC 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 8F4C820 8007A2F0 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 8F4C824 8007A2F4 00000000 */  nop
/* 8F4C828 8007A2F8 03006010 */  beqz       $v1, .Llevel_46_8007A308
/* 8F4C82C 8007A2FC FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 8F4C830 8007A300 CEE80108 */  j          .Llevel_46_8007A338
/* 8F4C834 8007A304 FFFF4234 */   ori       $v0, $v0, (0xFFFFFF & 0xFFFF)
.Llevel_46_8007A308:
/* 8F4C838 8007A308 1800A427 */  addiu      $a0, $sp, 0x18
/* 8F4C83C 8007A30C 5E3C010C */  jal        func_8004F178
/* 8F4C840 8007A310 0C006526 */   addiu     $a1, $s3, 0xC
/* 8F4C844 8007A314 1800A427 */  addiu      $a0, $sp, 0x18
/* 8F4C848 8007A318 2000A28F */  lw         $v0, 0x20($sp)
/* 8F4C84C 8007A31C 00080524 */  addiu      $a1, $zero, 0x800
/* 8F4C850 8007A320 00044224 */  addiu      $v0, $v0, 0x400
/* 8F4C854 8007A324 D668000C */  jal        func_8001A358
/* 8F4C858 8007A328 2000A2AF */   sw        $v0, 0x20($sp)
/* 8F4C85C 8007A32C FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 8F4C860 8007A330 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 8F4C864 8007A334 2000A2AF */  sw         $v0, 0x20($sp)
.Llevel_46_8007A338:
/* 8F4C868 8007A338 24104300 */  and        $v0, $v0, $v1
/* 8F4C86C 8007A33C 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 8F4C870 8007A340 25104300 */  or         $v0, $v0, $v1
/* 8F4C874 8007A344 D4E80108 */  j          .Llevel_46_8007A350
/* 8F4C878 8007A348 540062AE */   sw        $v0, 0x54($s3)
.Llevel_46_8007A34C:
/* 8F4C87C 8007A34C 540060AE */  sw         $zero, 0x54($s3)
.Llevel_46_8007A350:
/* 8F4C880 8007A350 4C004426 */  addiu      $a0, $s2, 0x4C
/* 8F4C884 8007A354 69D6000C */  jal        func_800359A4
/* 8F4C888 8007A358 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4C88C 8007A35C 28004010 */  beqz       $v0, .Llevel_46_8007A400
/* 8F4C890 8007A360 00000000 */   nop
/* 8F4C894 8007A364 0780023C */  lui        $v0, %hi(D_8006E538)
/* 8F4C898 8007A368 38E5428C */  lw         $v0, %lo(D_8006E538)($v0)
/* 8F4C89C 8007A36C 00000000 */  nop
/* 8F4C8A0 8007A370 20004230 */  andi       $v0, $v0, 0x20
/* 8F4C8A4 8007A374 22004010 */  beqz       $v0, .Llevel_46_8007A400
/* 8F4C8A8 8007A378 1F000224 */   addiu     $v0, $zero, 0x1F
/* 8F4C8AC 8007A37C 0780033C */  lui        $v1, %hi(D_8006E044)
/* 8F4C8B0 8007A380 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 8F4C8B4 8007A384 00000000 */  nop
/* 8F4C8B8 8007A388 14006210 */  beq        $v1, $v0, .Llevel_46_8007A3DC
/* 8F4C8BC 8007A38C 7E000224 */   addiu     $v0, $zero, 0x7E
/* 8F4C8C0 8007A390 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8F4C8C4 8007A394 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8F4C8C8 8007A398 00000000 */  nop
/* 8F4C8CC 8007A39C 18006210 */  beq        $v1, $v0, .Llevel_46_8007A400
/* 8F4C8D0 8007A3A0 79000224 */   addiu     $v0, $zero, 0x79
/* 8F4C8D4 8007A3A4 16006210 */  beq        $v1, $v0, .Llevel_46_8007A400
/* 8F4C8D8 8007A3A8 80000224 */   addiu     $v0, $zero, 0x80
/* 8F4C8DC 8007A3AC 14006210 */  beq        $v1, $v0, .Llevel_46_8007A400
/* 8F4C8E0 8007A3B0 86FF6224 */   addiu     $v0, $v1, -0x7A
/* 8F4C8E4 8007A3B4 0200422C */  sltiu      $v0, $v0, 0x2
/* 8F4C8E8 8007A3B8 11004014 */  bnez       $v0, .Llevel_46_8007A400
/* 8F4C8EC 8007A3BC 7C000224 */   addiu     $v0, $zero, 0x7C
/* 8F4C8F0 8007A3C0 0F006210 */  beq        $v1, $v0, .Llevel_46_8007A400
/* 8F4C8F4 8007A3C4 00000000 */   nop
/* 8F4C8F8 8007A3C8 0780023C */  lui        $v0, %hi(D_80070328 + 0x240)
/* 8F4C8FC 8007A3CC 6805428C */  lw         $v0, %lo(D_80070328 + 0x240)($v0)
/* 8F4C900 8007A3D0 00000000 */  nop
/* 8F4C904 8007A3D4 0A004014 */  bnez       $v0, .Llevel_46_8007A400
/* 8F4C908 8007A3D8 00000000 */   nop
.Llevel_46_8007A3DC:
/* 8F4C90C 8007A3DC C5000424 */  addiu      $a0, $zero, 0xC5
/* 8F4C910 8007A3E0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8F4C914 8007A3E4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8F4C918 8007A3E8 00000000 */  nop
/* 8F4C91C 8007A3EC 09F84000 */  jalr       $v0
/* 8F4C920 8007A3F0 21286002 */   addu      $a1, $s3, $zero
/* 8F4C924 8007A3F4 02004010 */  beqz       $v0, .Llevel_46_8007A400
/* 8F4C928 8007A3F8 19000224 */   addiu     $v0, $zero, 0x19
/* 8F4C92C 8007A3FC 4C0042AE */  sw         $v0, 0x4C($s2)
.Llevel_46_8007A400:
/* 8F4C930 8007A400 7800428E */  lw         $v0, 0x78($s2)
/* 8F4C934 8007A404 00000000 */  nop
/* 8F4C938 8007A408 50004010 */  beqz       $v0, .Llevel_46_8007A54C
/* 8F4C93C 8007A40C 00000000 */   nop
/* 8F4C940 8007A410 48004290 */  lbu        $v0, 0x48($v0)
/* 8F4C944 8007A414 00000000 */  nop
/* 8F4C948 8007A418 04004010 */  beqz       $v0, .Llevel_46_8007A42C
/* 8F4C94C 8007A41C 3C000224 */   addiu     $v0, $zero, 0x3C
/* 8F4C950 8007A420 780040AE */  sw         $zero, 0x78($s2)
/* 8F4C954 8007A424 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C958 8007A428 7C0042AE */   sw        $v0, 0x7C($s2)
.Llevel_46_8007A42C:
/* 8F4C95C 8007A42C 7C00448E */  lw         $a0, 0x7C($s2)
/* 8F4C960 8007A430 00000000 */  nop
/* 8F4C964 8007A434 1C008010 */  beqz       $a0, .Llevel_46_8007A4A8
/* 8F4C968 8007A438 82000224 */   addiu     $v0, $zero, 0x82
/* 8F4C96C 8007A43C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8F4C970 8007A440 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8F4C974 8007A444 00000000 */  nop
/* 8F4C978 8007A448 11006214 */  bne        $v1, $v0, .Llevel_46_8007A490
/* 8F4C97C 8007A44C 00000000 */   nop
/* 8F4C980 8007A450 A157010C */  jal        func_80055E84
/* 8F4C984 8007A454 21206002 */   addu      $a0, $s3, $zero
/* 8F4C988 8007A458 07004228 */  slti       $v0, $v0, 0x7
/* 8F4C98C 8007A45C 5A004014 */  bnez       $v0, .Llevel_46_8007A5C8
/* 8F4C990 8007A460 2A020224 */   addiu     $v0, $zero, 0x22A
/* 8F4C994 8007A464 74004386 */  lh         $v1, 0x74($s2)
/* 8F4C998 8007A468 00000000 */  nop
/* 8F4C99C 8007A46C 05006214 */  bne        $v1, $v0, .Llevel_46_8007A484
/* 8F4C9A0 8007A470 01000224 */   addiu     $v0, $zero, 0x1
/* 8F4C9A4 8007A474 7800438E */  lw         $v1, 0x78($s2)
/* 8F4C9A8 8007A478 50000224 */  addiu      $v0, $zero, 0x50
/* 8F4C9AC 8007A47C 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C9B0 8007A480 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_46_8007A484:
/* 8F4C9B4 8007A484 7800438E */  lw         $v1, 0x78($s2)
/* 8F4C9B8 8007A488 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C9BC 8007A48C 480062A0 */   sb        $v0, 0x48($v1)
.Llevel_46_8007A490:
/* 8F4C9C0 8007A490 0780023C */  lui        $v0, %hi(D_8006C648)
/* 8F4C9C4 8007A494 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 8F4C9C8 8007A498 00000000 */  nop
/* 8F4C9CC 8007A49C 21108200 */  addu       $v0, $a0, $v0
/* 8F4C9D0 8007A4A0 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4C9D4 8007A4A4 7C0042AE */   sw        $v0, 0x7C($s2)
.Llevel_46_8007A4A8:
/* 8F4C9D8 8007A4A8 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 8F4C9DC 8007A4AC 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 8F4C9E0 8007A4B0 00000000 */  nop
/* 8F4C9E4 8007A4B4 80004230 */  andi       $v0, $v0, 0x80
/* 8F4C9E8 8007A4B8 43004010 */  beqz       $v0, .Llevel_46_8007A5C8
/* 8F4C9EC 8007A4BC 00000000 */   nop
/* 8F4C9F0 8007A4C0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 8F4C9F4 8007A4C4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 8F4C9F8 8007A4C8 00000000 */  nop
/* 8F4C9FC 8007A4CC 3E004014 */  bnez       $v0, .Llevel_46_8007A5C8
/* 8F4CA00 8007A4D0 64005026 */   addiu     $s0, $s2, 0x64
/* 8F4CA04 8007A4D4 0780113C */  lui        $s1, %hi(D_80070328 + 0x30)
/* 8F4CA08 8007A4D8 58033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x30)
/* 8F4CA0C 8007A4DC 21202002 */  addu       $a0, $s1, $zero
/* 8F4CA10 8007A4E0 21280002 */  addu       $a1, $s0, $zero
/* 8F4CA14 8007A4E4 21300002 */  addu       $a2, $s0, $zero
/* 8F4CA18 8007A4E8 80010224 */  addiu      $v0, $zero, 0x180
/* 8F4CA1C 8007A4EC 5C0042AE */  sw         $v0, 0x5C($s2)
/* 8F4CA20 8007A4F0 00180224 */  addiu      $v0, $zero, 0x1800
/* 8F4CA24 8007A4F4 640042AE */  sw         $v0, 0x64($s2)
/* 8F4CA28 8007A4F8 680040AE */  sw         $zero, 0x68($s2)
/* 8F4CA2C 8007A4FC 5B3B010C */  jal        func_8004ED6C
/* 8F4CA30 8007A500 6C0040AE */   sw        $zero, 0x6C($s2)
/* 8F4CA34 8007A504 21200002 */  addu       $a0, $s0, $zero
/* 8F4CA38 8007A508 21288000 */  addu       $a1, $a0, $zero
/* 8F4CA3C 8007A50C 653C010C */  jal        func_8004F194
/* 8F4CA40 8007A510 D0FF2626 */   addiu     $a2, $s1, -0x30
/* 8F4CA44 8007A514 0780043C */  lui        $a0, %hi(D_80070328 + 0x250)
/* 8F4CA48 8007A518 7805848C */  lw         $a0, %lo(D_80070328 + 0x250)($a0)
/* 8F4CA4C 8007A51C 0780023C */  lui        $v0, %hi(unk_ovlheader_8007432C)
/* 8F4CA50 8007A520 2C43428C */  lw         $v0, %lo(unk_ovlheader_8007432C)($v0)
/* 8F4CA54 8007A524 00000000 */  nop
/* 8F4CA58 8007A528 09F84000 */  jalr       $v0
/* 8F4CA5C 8007A52C 00000000 */   nop
/* 8F4CA60 8007A530 7C00428E */  lw         $v0, 0x7C($s2)
/* 8F4CA64 8007A534 0780033C */  lui        $v1, %hi(D_8006C648)
/* 8F4CA68 8007A538 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 8F4CA6C 8007A53C 00000000 */  nop
/* 8F4CA70 8007A540 21104300 */  addu       $v0, $v0, $v1
/* 8F4CA74 8007A544 72E90108 */  j          .Llevel_46_8007A5C8
/* 8F4CA78 8007A548 7C0042AE */   sw        $v0, 0x7C($s2)
.Llevel_46_8007A54C:
/* 8F4CA7C 8007A54C 76004286 */  lh         $v0, 0x76($s2)
/* 8F4CA80 8007A550 00000000 */  nop
/* 8F4CA84 8007A554 1C004010 */  beqz       $v0, .Llevel_46_8007A5C8
/* 8F4CA88 8007A558 7C004426 */   addiu     $a0, $s2, 0x7C
/* 8F4CA8C 8007A55C 69D6000C */  jal        func_800359A4
/* 8F4CA90 8007A560 04000524 */   addiu     $a1, $zero, 0x4
/* 8F4CA94 8007A564 18004010 */  beqz       $v0, .Llevel_46_8007A5C8
/* 8F4CA98 8007A568 79000224 */   addiu     $v0, $zero, 0x79
/* 8F4CA9C 8007A56C 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 8F4CAA0 8007A570 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 8F4CAA4 8007A574 00000000 */  nop
/* 8F4CAA8 8007A578 13006210 */  beq        $v1, $v0, .Llevel_46_8007A5C8
/* 8F4CAAC 8007A57C 82000224 */   addiu     $v0, $zero, 0x82
/* 8F4CAB0 8007A580 11006210 */  beq        $v1, $v0, .Llevel_46_8007A5C8
/* 8F4CAB4 8007A584 80000224 */   addiu     $v0, $zero, 0x80
/* 8F4CAB8 8007A588 0F006210 */  beq        $v1, $v0, .Llevel_46_8007A5C8
/* 8F4CABC 8007A58C 7C000224 */   addiu     $v0, $zero, 0x7C
/* 8F4CAC0 8007A590 0D006210 */  beq        $v1, $v0, .Llevel_46_8007A5C8
/* 8F4CAC4 8007A594 00000000 */   nop
/* 8F4CAC8 8007A598 74004486 */  lh         $a0, 0x74($s2)
/* 8F4CACC 8007A59C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 8F4CAD0 8007A5A0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 8F4CAD4 8007A5A4 00000000 */  nop
/* 8F4CAD8 8007A5A8 09F84000 */  jalr       $v0
/* 8F4CADC 8007A5AC 21286002 */   addu      $a1, $s3, $zero
/* 8F4CAE0 8007A5B0 05004010 */  beqz       $v0, .Llevel_46_8007A5C8
/* 8F4CAE4 8007A5B4 780042AE */   sw        $v0, 0x78($s2)
/* 8F4CAE8 8007A5B8 76004296 */  lhu        $v0, 0x76($s2)
/* 8F4CAEC 8007A5BC 7C0040AE */  sw         $zero, 0x7C($s2)
/* 8F4CAF0 8007A5C0 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8F4CAF4 8007A5C4 760042A6 */  sh         $v0, 0x76($s2)
.Llevel_46_8007A5C8:
/* 8F4CAF8 8007A5C8 4ED7000C */  jal        func_80035D38
/* 8F4CAFC 8007A5CC 21206002 */   addu      $a0, $s3, $zero
/* 8F4CB00 8007A5D0 A758010C */  jal        func_8005629C
/* 8F4CB04 8007A5D4 21206002 */   addu      $a0, $s3, $zero
/* 8F4CB08 8007A5D8 3800BF8F */  lw         $ra, 0x38($sp)
/* 8F4CB0C 8007A5DC 3400B38F */  lw         $s3, 0x34($sp)
/* 8F4CB10 8007A5E0 3000B28F */  lw         $s2, 0x30($sp)
/* 8F4CB14 8007A5E4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8F4CB18 8007A5E8 2800B08F */  lw         $s0, 0x28($sp)
/* 8F4CB1C 8007A5EC 4000BD27 */  addiu      $sp, $sp, 0x40
/* 8F4CB20 8007A5F0 0800E003 */  jr         $ra
/* 8F4CB24 8007A5F4 00000000 */   nop
.size MobyUpdate_99_level_46, . - MobyUpdate_99_level_46
