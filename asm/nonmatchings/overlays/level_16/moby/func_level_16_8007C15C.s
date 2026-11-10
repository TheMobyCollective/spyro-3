.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_57_level_16
/* 4B9D68C 8007C15C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4B9D690 8007C160 2000B2AF */  sw         $s2, 0x20($sp)
/* 4B9D694 8007C164 21908000 */  addu       $s2, $a0, $zero
/* 4B9D698 8007C168 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4B9D69C 8007C16C 2400BFAF */  sw         $ra, 0x24($sp)
/* 4B9D6A0 8007C170 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4B9D6A4 8007C174 1800B0AF */  sw         $s0, 0x18($sp)
/* 4B9D6A8 8007C178 4A0042A2 */  sb         $v0, 0x4A($s2)
/* 4B9D6AC 8007C17C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 4B9D6B0 8007C180 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 4B9D6B4 8007C184 0000508E */  lw         $s0, 0x0($s2)
/* 4B9D6B8 8007C188 12004018 */  blez       $v0, .Llevel_16_8007C1D4
/* 4B9D6BC 8007C18C 00000000 */   nop
/* 4B9D6C0 8007C190 5000028E */  lw         $v0, 0x50($s0)
/* 4B9D6C4 8007C194 00000000 */  nop
/* 4B9D6C8 8007C198 0E004014 */  bnez       $v0, .Llevel_16_8007C1D4
/* 4B9D6CC 8007C19C 00000000 */   nop
/* 4B9D6D0 8007C1A0 0780043C */  lui        $a0, %hi(D_8006C3F4)
/* 4B9D6D4 8007C1A4 F4C3848C */  lw         $a0, %lo(D_8006C3F4)($a0)
/* 4B9D6D8 8007C1A8 0680023C */  lui        $v0, %hi(D_800652B0 + 0x40)
/* 4B9D6DC 8007C1AC F052428C */  lw         $v0, %lo(D_800652B0 + 0x40)($v0)
/* 4B9D6E0 8007C1B0 0680063C */  lui        $a2, %hi(D_800652B6 + 0x40)
/* 4B9D6E4 8007C1B4 F652C694 */  lhu        $a2, %lo(D_800652B6 + 0x40)($a2)
/* 4B9D6E8 8007C1B8 0680053C */  lui        $a1, %hi(D_800652B4 + 0x40)
/* 4B9D6EC 8007C1BC F452A594 */  lhu        $a1, %lo(D_800652B4 + 0x40)($a1)
/* 4B9D6F0 8007C1C0 21208200 */  addu       $a0, $a0, $v0
/* 4B9D6F4 8007C1C4 613E010C */  jal        func_8004F984
/* 4B9D6F8 8007C1C8 21288500 */   addu      $a1, $a0, $a1
/* 4B9D6FC 8007C1CC 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D700 8007C1D0 500002AE */  sw         $v0, 0x50($s0)
.Llevel_16_8007C1D4:
/* 4B9D704 8007C1D4 48004392 */  lbu        $v1, 0x48($s2)
/* 4B9D708 8007C1D8 01001124 */  addiu      $s1, $zero, 0x1
/* 4B9D70C 8007C1DC 66007110 */  beq        $v1, $s1, .Llevel_16_8007C378
/* 4B9D710 8007C1E0 02006228 */   slti      $v0, $v1, 0x2
/* 4B9D714 8007C1E4 05004010 */  beqz       $v0, .Llevel_16_8007C1FC
/* 4B9D718 8007C1E8 00000000 */   nop
/* 4B9D71C 8007C1EC 0A006010 */  beqz       $v1, .Llevel_16_8007C218
/* 4B9D720 8007C1F0 00000000 */   nop
/* 4B9D724 8007C1F4 4AF10108 */  j          .Llevel_16_8007C528
/* 4B9D728 8007C1F8 00000000 */   nop
.Llevel_16_8007C1FC:
/* 4B9D72C 8007C1FC 03000224 */  addiu      $v0, $zero, 0x3
/* 4B9D730 8007C200 88006210 */  beq        $v1, $v0, .Llevel_16_8007C424
/* 4B9D734 8007C204 0F000224 */   addiu     $v0, $zero, 0xF
/* 4B9D738 8007C208 34006210 */  beq        $v1, $v0, .Llevel_16_8007C2DC
/* 4B9D73C 8007C20C 00000000 */   nop
/* 4B9D740 8007C210 4AF10108 */  j          .Llevel_16_8007C528
/* 4B9D744 8007C214 00000000 */   nop
.Llevel_16_8007C218:
/* 4B9D748 8007C218 02000292 */  lbu        $v0, 0x2($s0)
/* 4B9D74C 8007C21C 00000000 */  nop
/* 4B9D750 8007C220 06004014 */  bnez       $v0, .Llevel_16_8007C23C
/* 4B9D754 8007C224 00000000 */   nop
/* 4B9D758 8007C228 0780023C */  lui        $v0, %hi(D_8007157D)
/* 4B9D75C 8007C22C 7D154290 */  lbu        $v0, %lo(D_8007157D)($v0)
/* 4B9D760 8007C230 00000000 */  nop
/* 4B9D764 8007C234 14004014 */  bnez       $v0, .Llevel_16_8007C288
/* 4B9D768 8007C238 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_16_8007C23C:
/* 4B9D76C 8007C23C 02000392 */  lbu        $v1, 0x2($s0)
/* 4B9D770 8007C240 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D774 8007C244 12006214 */  bne        $v1, $v0, .Llevel_16_8007C290
/* 4B9D778 8007C248 01001124 */   addiu     $s1, $zero, 0x1
/* 4B9D77C 8007C24C 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 4B9D780 8007C250 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 4B9D784 8007C254 00000000 */  nop
/* 4B9D788 8007C258 01004230 */  andi       $v0, $v0, 0x1
/* 4B9D78C 8007C25C 0C004014 */  bnez       $v0, .Llevel_16_8007C290
/* 4B9D790 8007C260 00000000 */   nop
/* 4B9D794 8007C264 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 4B9D798 8007C268 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 4B9D79C 8007C26C 0780013C */  lui        $at, %hi(D_80070300)
/* 4B9D7A0 8007C270 21082200 */  addu       $at, $at, $v0
/* 4B9D7A4 8007C274 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 4B9D7A8 8007C278 00000000 */  nop
/* 4B9D7AC 8007C27C 01004230 */  andi       $v0, $v0, 0x1
/* 4B9D7B0 8007C280 03004014 */  bnez       $v0, .Llevel_16_8007C290
/* 4B9D7B4 8007C284 05000224 */   addiu     $v0, $zero, 0x5
.Llevel_16_8007C288:
/* 4B9D7B8 8007C288 020002A2 */  sb         $v0, 0x2($s0)
/* 4B9D7BC 8007C28C 01001124 */  addiu      $s1, $zero, 0x1
.Llevel_16_8007C290:
/* 4B9D7C0 8007C290 380040A6 */  sh         $zero, 0x38($s2)
/* 4B9D7C4 8007C294 050011A2 */  sb         $s1, 0x5($s0)
/* 4B9D7C8 8007C298 0780023C */  lui        $v0, %hi(D_8006C598)
/* 4B9D7CC 8007C29C 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 4B9D7D0 8007C2A0 00000000 */  nop
/* 4B9D7D4 8007C2A4 A0004014 */  bnez       $v0, .Llevel_16_8007C528
/* 4B9D7D8 8007C2A8 21204002 */   addu      $a0, $s2, $zero
/* 4B9D7DC 8007C2AC EFDE000C */  jal        func_80037BBC
/* 4B9D7E0 8007C2B0 21280000 */   addu      $a1, $zero, $zero
/* 4B9D7E4 8007C2B4 9C004010 */  beqz       $v0, .Llevel_16_8007C528
/* 4B9D7E8 8007C2B8 21204002 */   addu      $a0, $s2, $zero
/* 4B9D7EC 8007C2BC 21280000 */  addu       $a1, $zero, $zero
/* 4B9D7F0 8007C2C0 0780013C */  lui        $at, %hi(D_8007157D)
/* 4B9D7F4 8007C2C4 7D1531A0 */  sb         $s1, %lo(D_8007157D)($at)
/* 4B9D7F8 8007C2C8 B944010C */  jal        func_800512E4
/* 4B9D7FC 8007C2CC 0F000624 */   addiu     $a2, $zero, 0xF
/* 4B9D800 8007C2D0 0F000224 */  addiu      $v0, $zero, 0xF
/* 4B9D804 8007C2D4 4AF10108 */  j          .Llevel_16_8007C528
/* 4B9D808 8007C2D8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_16_8007C2DC:
/* 4B9D80C 8007C2DC 0780023C */  lui        $v0, %hi(D_8006E344)
/* 4B9D810 8007C2E0 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 4B9D814 8007C2E4 00000000 */  nop
/* 4B9D818 8007C2E8 8F005110 */  beq        $v0, $s1, .Llevel_16_8007C528
/* 4B9D81C 8007C2EC 0010023C */   lui       $v0, (0x10000002 >> 16)
/* 4B9D820 8007C2F0 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 4B9D824 8007C2F4 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 4B9D828 8007C2F8 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 4B9D82C 8007C2FC 04000392 */  lbu        $v1, 0x4($s0)
/* 4B9D830 8007C300 02000224 */  addiu      $v0, $zero, 0x2
/* 4B9D834 8007C304 05006214 */  bne        $v1, $v0, .Llevel_16_8007C31C
/* 4B9D838 8007C308 00000000 */   nop
/* 4B9D83C 8007C30C D44F010C */  jal        func_80053F50
/* 4B9D840 8007C310 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 4B9D844 8007C314 4AF10108 */  j          .Llevel_16_8007C528
/* 4B9D848 8007C318 00000000 */   nop
.Llevel_16_8007C31C:
/* 4B9D84C 8007C31C 0780043C */  lui        $a0, %hi(D_8006D088)
/* 4B9D850 8007C320 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 4B9D854 8007C324 4400038E */  lw         $v1, 0x44($s0)
/* 4B9D858 8007C328 0780053C */  lui        $a1, %hi(D_8006C550)
/* 4B9D85C 8007C32C 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 4B9D860 8007C330 40100300 */  sll        $v0, $v1, 1
/* 4B9D864 8007C334 21104300 */  addu       $v0, $v0, $v1
/* 4B9D868 8007C338 80100200 */  sll        $v0, $v0, 2
/* 4B9D86C 8007C33C 23104300 */  subu       $v0, $v0, $v1
/* 4B9D870 8007C340 C0100200 */  sll        $v0, $v0, 3
/* 4B9D874 8007C344 2128A200 */  addu       $a1, $a1, $v0
/* 4B9D878 8007C348 4600A690 */  lbu        $a2, 0x46($a1)
/* 4B9D87C 8007C34C 8DED000C */  jal        func_8003B634
/* 4B9D880 8007C350 0C00A524 */   addiu     $a1, $a1, 0xC
/* 4B9D884 8007C354 21204002 */  addu       $a0, $s2, $zero
/* 4B9D888 8007C358 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9D88C 8007C35C 3C000224 */  addiu      $v0, $zero, 0x3C
/* 4B9D890 8007C360 480002AE */  sw         $v0, 0x48($s0)
/* 4B9D894 8007C364 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D898 8007C368 D0D3000C */  jal        func_80034F40
/* 4B9D89C 8007C36C 480042A2 */   sb        $v0, 0x48($s2)
/* 4B9D8A0 8007C370 4AF10108 */  j          .Llevel_16_8007C528
/* 4B9D8A4 8007C374 00000000 */   nop
.Llevel_16_8007C378:
/* 4B9D8A8 8007C378 0010023C */  lui        $v0, (0x10000002 >> 16)
/* 4B9D8AC 8007C37C 02004234 */  ori        $v0, $v0, (0x10000002 & 0xFFFF)
/* 4B9D8B0 8007C380 21204002 */  addu       $a0, $s2, $zero
/* 4B9D8B4 8007C384 08000624 */  addiu      $a2, $zero, 0x8
/* 4B9D8B8 8007C388 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 4B9D8BC 8007C38C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 4B9D8C0 8007C390 3400058E */  lw         $a1, 0x34($s0)
/* 4B9D8C4 8007C394 10000724 */  addiu      $a3, $zero, 0x10
/* 4B9D8C8 8007C398 1000B1AF */  sw         $s1, 0x10($sp)
/* 4B9D8CC 8007C39C 1400A0AF */  sw         $zero, 0x14($sp)
/* 4B9D8D0 8007C3A0 17D6000C */  jal        func_8003585C
/* 4B9D8D4 8007C3A4 8000A524 */   addiu     $a1, $a1, 0x80
/* 4B9D8D8 8007C3A8 06004010 */  beqz       $v0, .Llevel_16_8007C3C4
/* 4B9D8DC 8007C3AC 21204002 */   addu      $a0, $s2, $zero
/* 4B9D8E0 8007C3B0 1000A0AF */  sw         $zero, 0x10($sp)
/* 4B9D8E4 8007C3B4 80000524 */  addiu      $a1, $zero, 0x80
/* 4B9D8E8 8007C3B8 21300000 */  addu       $a2, $zero, $zero
/* 4B9D8EC 8007C3BC 77D7000C */  jal        func_80035DDC
/* 4B9D8F0 8007C3C0 21380000 */   addu      $a3, $zero, $zero
.Llevel_16_8007C3C4:
/* 4B9D8F4 8007C3C4 48000426 */  addiu      $a0, $s0, 0x48
/* 4B9D8F8 8007C3C8 69D6000C */  jal        func_800359A4
/* 4B9D8FC 8007C3CC 04000524 */   addiu     $a1, $zero, 0x4
/* 4B9D900 8007C3D0 02000324 */  addiu      $v1, $zero, 0x2
/* 4B9D904 8007C3D4 54004314 */  bne        $v0, $v1, .Llevel_16_8007C528
/* 4B9D908 8007C3D8 48005026 */   addiu     $s0, $s2, 0x48
/* 4B9D90C 8007C3DC 21200002 */  addu       $a0, $s0, $zero
/* 4B9D910 8007C3E0 01000524 */  addiu      $a1, $zero, 0x1
/* 4B9D914 8007C3E4 0780113C */  lui        $s1, %hi(D_8006D088)
/* 4B9D918 8007C3E8 88D03126 */  addiu      $s1, $s1, %lo(D_8006D088)
/* 4B9D91C 8007C3EC 21302002 */  addu       $a2, $s1, $zero
/* 4B9D920 8007C3F0 03000224 */  addiu      $v0, $zero, 0x3
/* 4B9D924 8007C3F4 EDED000C */  jal        func_8003B7B4
/* 4B9D928 8007C3F8 480042A2 */   sb        $v0, 0x48($s2)
/* 4B9D92C 8007C3FC 21200002 */  addu       $a0, $s0, $zero
/* 4B9D930 8007C400 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 4B9D934 8007C404 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 4B9D938 8007C408 EDED000C */  jal        func_8003B7B4
/* 4B9D93C 8007C40C 01000524 */   addiu     $a1, $zero, 0x1
/* 4B9D940 8007C410 D3ED000C */  jal        func_8003B74C
/* 4B9D944 8007C414 21202002 */   addu      $a0, $s1, $zero
/* 4B9D948 8007C418 01000224 */  addiu      $v0, $zero, 0x1
/* 4B9D94C 8007C41C 4AF10108 */  j          .Llevel_16_8007C528
/* 4B9D950 8007C420 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_16_8007C424:
/* 4B9D954 8007C424 21204002 */  addu       $a0, $s2, $zero
/* 4B9D958 8007C428 0780023C */  lui        $v0, %hi(unk_ovlheader_80074318)
/* 4B9D95C 8007C42C 1843428C */  lw         $v0, %lo(unk_ovlheader_80074318)($v0)
/* 4B9D960 8007C430 00000000 */  nop
/* 4B9D964 8007C434 09F84000 */  jalr       $v0
/* 4B9D968 8007C438 41000524 */   addiu     $a1, $zero, 0x41
/* 4B9D96C 8007C43C 0780043C */  lui        $a0, %hi(D_800719A8)
/* 4B9D970 8007C440 A8198424 */  addiu      $a0, $a0, %lo(D_800719A8)
/* 4B9D974 8007C444 0780053C */  lui        $a1, %hi(D_80068F7C)
/* 4B9D978 8007C448 7C8FA524 */  addiu      $a1, $a1, %lo(D_80068F7C)
/* 4B9D97C 8007C44C 0780013C */  lui        $at, %hi(D_8006C6D0)
/* 4B9D980 8007C450 D0C620AC */  sw         $zero, %lo(D_8006C6D0)($at)
/* 4B9D984 8007C454 694D000C */  jal        func_800135A4
/* 4B9D988 8007C458 21300000 */   addu      $a2, $zero, $zero
/* 4B9D98C 8007C45C 0780043C */  lui        $a0, %hi(D_800719F0)
/* 4B9D990 8007C460 F0198424 */  addiu      $a0, $a0, %lo(D_800719F0)
/* 4B9D994 8007C464 0780053C */  lui        $a1, %hi(D_80068F90)
/* 4B9D998 8007C468 908FA524 */  addiu      $a1, $a1, %lo(D_80068F90)
/* 4B9D99C 8007C46C 694D000C */  jal        func_800135A4
/* 4B9D9A0 8007C470 21300000 */   addu      $a2, $zero, $zero
/* 4B9D9A4 8007C474 0780023C */  lui        $v0, %hi(D_80070328 + 0x24C)
/* 4B9D9A8 8007C478 7405428C */  lw         $v0, %lo(D_80070328 + 0x24C)($v0)
/* 4B9D9AC 8007C47C 00000000 */  nop
/* 4B9D9B0 8007C480 09005114 */  bne        $v0, $s1, .Llevel_16_8007C4A8
/* 4B9D9B4 8007C484 00000000 */   nop
/* 4B9D9B8 8007C488 0780023C */  lui        $v0, %hi(D_80070328 + 0x48)
/* 4B9D9BC 8007C48C 7003428C */  lw         $v0, %lo(D_80070328 + 0x48)($v0)
/* 4B9D9C0 8007C490 3D004392 */  lbu        $v1, 0x3D($s2)
/* 4B9D9C4 8007C494 BFFF4524 */  addiu      $a1, $v0, -0x41
/* 4B9D9C8 8007C498 0300A310 */  beq        $a1, $v1, .Llevel_16_8007C4A8
/* 4B9D9CC 8007C49C 00000000 */   nop
/* 4B9D9D0 8007C4A0 D0D3000C */  jal        func_80034F40
/* 4B9D9D4 8007C4A4 21204002 */   addu      $a0, $s2, $zero
.Llevel_16_8007C4A8:
/* 4B9D9D8 8007C4A8 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 4B9D9DC 8007C4AC 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 4B9D9E0 8007C4B0 0A000224 */  addiu      $v0, $zero, 0xA
/* 4B9D9E4 8007C4B4 0A006214 */  bne        $v1, $v0, .Llevel_16_8007C4E0
/* 4B9D9E8 8007C4B8 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
/* 4B9D9EC 8007C4BC 0780033C */  lui        $v1, %hi(D_80070328 + 0xF4)
/* 4B9D9F0 8007C4C0 1C04638C */  lw         $v1, %lo(D_80070328 + 0xF4)($v1)
/* 4B9D9F4 8007C4C4 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
/* 4B9D9F8 8007C4C8 23180300 */  negu       $v1, $v1
/* 4B9D9FC 8007C4CC 24186200 */  and        $v1, $v1, $v0
/* 4B9DA00 8007C4D0 80000224 */  addiu      $v0, $zero, 0x80
/* 4B9DA04 8007C4D4 540043AE */  sw         $v1, 0x54($s2)
/* 4B9DA08 8007C4D8 39F10108 */  j          .Llevel_16_8007C4E4
/* 4B9DA0C 8007C4DC 570042A2 */   sb        $v0, 0x57($s2)
.Llevel_16_8007C4E0:
/* 4B9DA10 8007C4E0 540040AE */  sw         $zero, 0x54($s2)
.Llevel_16_8007C4E4:
/* 4B9DA14 8007C4E4 0780023C */  lui        $v0, %hi(D_80070328 + 0x50)
/* 4B9DA18 8007C4E8 7803428C */  lw         $v0, %lo(D_80070328 + 0x50)($v0)
/* 4B9DA1C 8007C4EC 00000000 */  nop
/* 4B9DA20 8007C4F0 FEFF4224 */  addiu      $v0, $v0, -0x2
/* 4B9DA24 8007C4F4 0200422C */  sltiu      $v0, $v0, 0x2
/* 4B9DA28 8007C4F8 0B004014 */  bnez       $v0, .Llevel_16_8007C528
/* 4B9DA2C 8007C4FC 00000000 */   nop
/* 4B9DA30 8007C500 4800028E */  lw         $v0, 0x48($s0)
/* 4B9DA34 8007C504 0780033C */  lui        $v1, %hi(D_8006C648)
/* 4B9DA38 8007C508 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 4B9DA3C 8007C50C 00000000 */  nop
/* 4B9DA40 8007C510 21104300 */  addu       $v0, $v0, $v1
/* 4B9DA44 8007C514 480002AE */  sw         $v0, 0x48($s0)
/* 4B9DA48 8007C518 71174228 */  slti       $v0, $v0, 0x1771
/* 4B9DA4C 8007C51C 02004014 */  bnez       $v0, .Llevel_16_8007C528
/* 4B9DA50 8007C520 70170224 */   addiu     $v0, $zero, 0x1770
/* 4B9DA54 8007C524 480002AE */  sw         $v0, 0x48($s0)
.Llevel_16_8007C528:
/* 4B9DA58 8007C528 4ED7000C */  jal        func_80035D38
/* 4B9DA5C 8007C52C 21204002 */   addu      $a0, $s2, $zero
/* 4B9DA60 8007C530 A758010C */  jal        func_8005629C
/* 4B9DA64 8007C534 21204002 */   addu      $a0, $s2, $zero
/* 4B9DA68 8007C538 2400BF8F */  lw         $ra, 0x24($sp)
/* 4B9DA6C 8007C53C 2000B28F */  lw         $s2, 0x20($sp)
/* 4B9DA70 8007C540 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4B9DA74 8007C544 1800B08F */  lw         $s0, 0x18($sp)
/* 4B9DA78 8007C548 2800BD27 */  addiu      $sp, $sp, 0x28
/* 4B9DA7C 8007C54C 0800E003 */  jr         $ra
/* 4B9DA80 8007C550 00000000 */   nop
.size MobyUpdate_57_level_16, . - MobyUpdate_57_level_16
