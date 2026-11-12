.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_243_level_31
/* 6A98340 8007D610 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 6A98344 8007D614 2000B0AF */  sw         $s0, 0x20($sp)
/* 6A98348 8007D618 21808000 */  addu       $s0, $a0, $zero
/* 6A9834C 8007D61C 02000224 */  addiu      $v0, $zero, 0x2
/* 6A98350 8007D620 2800BFAF */  sw         $ra, 0x28($sp)
/* 6A98354 8007D624 2400B1AF */  sw         $s1, 0x24($sp)
/* 6A98358 8007D628 48000592 */  lbu        $a1, 0x48($s0)
/* 6A9835C 8007D62C 0000118E */  lw         $s1, 0x0($s0)
/* 6A98360 8007D630 2700A210 */  beq        $a1, $v0, .Llevel_31_8007D6D0
/* 6A98364 8007D634 0300A228 */   slti      $v0, $a1, 0x3
/* 6A98368 8007D638 05004010 */  beqz       $v0, .Llevel_31_8007D650
/* 6A9836C 8007D63C 01000224 */   addiu     $v0, $zero, 0x1
/* 6A98370 8007D640 0800A210 */  beq        $a1, $v0, .Llevel_31_8007D664
/* 6A98374 8007D644 09000224 */   addiu     $v0, $zero, 0x9
/* 6A98378 8007D648 29F60108 */  j          .Llevel_31_8007D8A4
/* 6A9837C 8007D64C 00000000 */   nop
.Llevel_31_8007D650:
/* 6A98380 8007D650 03000224 */  addiu      $v0, $zero, 0x3
/* 6A98384 8007D654 7500A210 */  beq        $a1, $v0, .Llevel_31_8007D82C
/* 6A98388 8007D658 21200002 */   addu      $a0, $s0, $zero
/* 6A9838C 8007D65C 29F60108 */  j          .Llevel_31_8007D8A4
/* 6A98390 8007D660 00000000 */   nop
.Llevel_31_8007D664:
/* 6A98394 8007D664 0780033C */  lui        $v1, %hi(D_8006E160)
/* 6A98398 8007D668 60E1638C */  lw         $v1, %lo(D_8006E160)($v1)
/* 6A9839C 8007D66C 00000000 */  nop
/* 6A983A0 8007D670 10006214 */  bne        $v1, $v0, .Llevel_31_8007D6B4
/* 6A983A4 8007D674 00000000 */   nop
/* 6A983A8 8007D678 0780023C */  lui        $v0, %hi(D_8006E048)
/* 6A983AC 8007D67C 48E0428C */  lw         $v0, %lo(D_8006E048)($v0)
/* 6A983B0 8007D680 00000000 */  nop
/* 6A983B4 8007D684 87004514 */  bne        $v0, $a1, .Llevel_31_8007D8A4
/* 6A983B8 8007D688 F4000424 */   addiu     $a0, $zero, 0xF4
/* 6A983BC 8007D68C 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6A983C0 8007D690 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6A983C4 8007D694 00000000 */  nop
/* 6A983C8 8007D698 09F84000 */  jalr       $v0
/* 6A983CC 8007D69C 21280002 */   addu      $a1, $s0, $zero
/* 6A983D0 8007D6A0 20000224 */  addiu      $v0, $zero, 0x20
/* 6A983D4 8007D6A4 4C0002A2 */  sb         $v0, 0x4C($s0)
/* 6A983D8 8007D6A8 02000224 */  addiu      $v0, $zero, 0x2
/* 6A983DC 8007D6AC 29F60108 */  j          .Llevel_31_8007D8A4
/* 6A983E0 8007D6B0 480002A2 */   sb        $v0, 0x48($s0)
.Llevel_31_8007D6B4:
/* 6A983E4 8007D6B4 0400228E */  lw         $v0, 0x4($s1)
/* 6A983E8 8007D6B8 00000000 */  nop
/* 6A983EC 8007D6BC 0C00448C */  lw         $a0, 0xC($v0)
/* 6A983F0 8007D6C0 B94E000C */  jal        func_80013AE4
/* 6A983F4 8007D6C4 10008524 */   addiu     $a1, $a0, 0x10
/* 6A983F8 8007D6C8 29F60108 */  j          .Llevel_31_8007D8A4
/* 6A983FC 8007D6CC 00000000 */   nop
.Llevel_31_8007D6D0:
/* 6A98400 8007D6D0 0780023C */  lui        $v0, %hi(D_8006C598)
/* 6A98404 8007D6D4 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 6A98408 8007D6D8 00000000 */  nop
/* 6A9840C 8007D6DC 1B004014 */  bnez       $v0, .Llevel_31_8007D74C
/* 6A98410 8007D6E0 21200002 */   addu      $a0, $s0, $zero
/* 6A98414 8007D6E4 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 6A98418 8007D6E8 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 6A9841C 8007D6EC 00000000 */  nop
/* 6A98420 8007D6F0 00084230 */  andi       $v0, $v0, 0x800
/* 6A98424 8007D6F4 16004010 */  beqz       $v0, .Llevel_31_8007D750
/* 6A98428 8007D6F8 00020624 */   addiu     $a2, $zero, 0x200
/* 6A9842C 8007D6FC DF4E000C */  jal        func_80013B7C
/* 6A98430 8007D700 21200000 */   addu      $a0, $zero, $zero
/* 6A98434 8007D704 0C000424 */  addiu      $a0, $zero, 0xC
/* 6A98438 8007D708 0C000524 */  addiu      $a1, $zero, 0xC
/* 6A9843C 8007D70C 21300002 */  addu       $a2, $s0, $zero
/* 6A98440 8007D710 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 6A98444 8007D714 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 6A98448 8007D718 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9844C 8007D71C 0780013C */  lui        $at, %hi(D_8006C74C)
/* 6A98450 8007D720 4CC720AC */  sw         $zero, %lo(D_8006C74C)($at)
/* 6A98454 8007D724 0780013C */  lui        $at, %hi(D_8006C568)
/* 6A98458 8007D728 68C522AC */  sw         $v0, %lo(D_8006C568)($at)
/* 6A9845C 8007D72C 09F86000 */  jalr       $v1
/* 6A98460 8007D730 05000724 */   addiu     $a3, $zero, 0x5
/* 6A98464 8007D734 21200002 */  addu       $a0, $s0, $zero
/* 6A98468 8007D738 05000524 */  addiu      $a1, $zero, 0x5
/* 6A9846C 8007D73C C4EE000C */  jal        func_8003BB10
/* 6A98470 8007D740 01000624 */   addiu     $a2, $zero, 0x1
/* 6A98474 8007D744 24F60108 */  j          .Llevel_31_8007D890
/* 6A98478 8007D748 00000000 */   nop
.Llevel_31_8007D74C:
/* 6A9847C 8007D74C 00020624 */  addiu      $a2, $zero, 0x200
.Llevel_31_8007D750:
/* 6A98480 8007D750 03000224 */  addiu      $v0, $zero, 0x3
/* 6A98484 8007D754 1400A2AF */  sw         $v0, 0x14($sp)
/* 6A98488 8007D758 20000224 */  addiu      $v0, $zero, 0x20
/* 6A9848C 8007D75C 1000A0AF */  sw         $zero, 0x10($sp)
/* 6A98490 8007D760 1800A2AF */  sw         $v0, 0x18($sp)
/* 6A98494 8007D764 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 6A98498 8007D768 0000258E */  lw         $a1, 0x0($s1)
/* 6A9849C 8007D76C A0D6000C */  jal        func_80035A80
/* 6A984A0 8007D770 A0000724 */   addiu     $a3, $zero, 0xA0
/* 6A984A4 8007D774 01004230 */  andi       $v0, $v0, 0x1
/* 6A984A8 8007D778 47004010 */  beqz       $v0, .Llevel_31_8007D898
/* 6A984AC 8007D77C 02000224 */   addiu     $v0, $zero, 0x2
/* 6A984B0 8007D780 48000392 */  lbu        $v1, 0x48($s0)
/* 6A984B4 8007D784 00000000 */  nop
/* 6A984B8 8007D788 44006214 */  bne        $v1, $v0, .Llevel_31_8007D89C
/* 6A984BC 8007D78C 21200002 */   addu      $a0, $s0, $zero
/* 6A984C0 8007D790 0000258E */  lw         $a1, 0x0($s1)
/* 6A984C4 8007D794 00000000 */  nop
/* 6A984C8 8007D798 0000A384 */  lh         $v1, 0x0($a1)
/* 6A984CC 8007D79C 0200A284 */  lh         $v0, 0x2($a1)
/* 6A984D0 8007D7A0 FFFF6424 */  addiu      $a0, $v1, -0x1
/* 6A984D4 8007D7A4 21104400 */  addu       $v0, $v0, $a0
/* 6A984D8 8007D7A8 1A004300 */  div        $zero, $v0, $v1
/* 6A984DC 8007D7AC 02006014 */  bnez       $v1, .Llevel_31_8007D7B8
/* 6A984E0 8007D7B0 00000000 */   nop
/* 6A984E4 8007D7B4 0D000700 */  break      7
.Llevel_31_8007D7B8:
/* 6A984E8 8007D7B8 FFFF0124 */  addiu      $at, $zero, -0x1
/* 6A984EC 8007D7BC 04006114 */  bne        $v1, $at, .Llevel_31_8007D7D0
/* 6A984F0 8007D7C0 0080013C */   lui       $at, (0x80000000 >> 16)
/* 6A984F4 8007D7C4 02004114 */  bne        $v0, $at, .Llevel_31_8007D7D0
/* 6A984F8 8007D7C8 00000000 */   nop
/* 6A984FC 8007D7CC 0D000600 */  break      6
.Llevel_31_8007D7D0:
/* 6A98500 8007D7D0 10180000 */  mfhi       $v1
/* 6A98504 8007D7D4 0C00A28C */  lw         $v0, 0xC($a1)
/* 6A98508 8007D7D8 00190300 */  sll        $v1, $v1, 4
/* 6A9850C 8007D7DC 21186200 */  addu       $v1, $v1, $v0
/* 6A98510 8007D7E0 0C00628C */  lw         $v0, 0xC($v1)
/* 6A98514 8007D7E4 00000000 */  nop
/* 6A98518 8007D7E8 2C004010 */  beqz       $v0, .Llevel_31_8007D89C
/* 6A9851C 8007D7EC 21200002 */   addu      $a0, $s0, $zero
/* 6A98520 8007D7F0 DF4E000C */  jal        func_80013B7C
/* 6A98524 8007D7F4 21200000 */   addu      $a0, $zero, $zero
/* 6A98528 8007D7F8 21200002 */  addu       $a0, $s0, $zero
/* 6A9852C 8007D7FC 05000524 */  addiu      $a1, $zero, 0x5
/* 6A98530 8007D800 01000624 */  addiu      $a2, $zero, 0x1
/* 6A98534 8007D804 01000224 */  addiu      $v0, $zero, 0x1
/* 6A98538 8007D808 0780013C */  lui        $at, %hi(D_8006C568)
/* 6A9853C 8007D80C 68C522AC */  sw         $v0, %lo(D_8006C568)($at)
/* 6A98540 8007D810 03000224 */  addiu      $v0, $zero, 0x3
/* 6A98544 8007D814 0780013C */  lui        $at, %hi(D_8006C74C)
/* 6A98548 8007D818 4CC720AC */  sw         $zero, %lo(D_8006C74C)($at)
/* 6A9854C 8007D81C C4EE000C */  jal        func_8003BB10
/* 6A98550 8007D820 480002A2 */   sb        $v0, 0x48($s0)
/* 6A98554 8007D824 27F60108 */  j          .Llevel_31_8007D89C
/* 6A98558 8007D828 21200002 */   addu      $a0, $s0, $zero
.Llevel_31_8007D82C:
/* 6A9855C 8007D82C 00020624 */  addiu      $a2, $zero, 0x200
/* 6A98560 8007D830 18000224 */  addiu      $v0, $zero, 0x18
/* 6A98564 8007D834 1000A0AF */  sw         $zero, 0x10($sp)
/* 6A98568 8007D838 1400A5AF */  sw         $a1, 0x14($sp)
/* 6A9856C 8007D83C 1800A2AF */  sw         $v0, 0x18($sp)
/* 6A98570 8007D840 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 6A98574 8007D844 0000258E */  lw         $a1, 0x0($s1)
/* 6A98578 8007D848 A0D6000C */  jal        func_80035A80
/* 6A9857C 8007D84C A0000724 */   addiu     $a3, $zero, 0xA0
/* 6A98580 8007D850 01004230 */  andi       $v0, $v0, 0x1
/* 6A98584 8007D854 11004010 */  beqz       $v0, .Llevel_31_8007D89C
/* 6A98588 8007D858 21200002 */   addu      $a0, $s0, $zero
/* 6A9858C 8007D85C 0000228E */  lw         $v0, 0x0($s1)
/* 6A98590 8007D860 00000000 */  nop
/* 6A98594 8007D864 02004284 */  lh         $v0, 0x2($v0)
/* 6A98598 8007D868 00000000 */  nop
/* 6A9859C 8007D86C 0B004014 */  bnez       $v0, .Llevel_31_8007D89C
/* 6A985A0 8007D870 0C000524 */   addiu     $a1, $zero, 0xC
/* 6A985A4 8007D874 0C000424 */  addiu      $a0, $zero, 0xC
/* 6A985A8 8007D878 21300002 */  addu       $a2, $s0, $zero
/* 6A985AC 8007D87C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6A985B0 8007D880 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6A985B4 8007D884 00000000 */  nop
/* 6A985B8 8007D888 09F84000 */  jalr       $v0
/* 6A985BC 8007D88C 05000724 */   addiu     $a3, $zero, 0x5
.Llevel_31_8007D890:
/* 6A985C0 8007D890 C656010C */  jal        func_80055B18
/* 6A985C4 8007D894 21200002 */   addu      $a0, $s0, $zero
.Llevel_31_8007D898:
/* 6A985C8 8007D898 21200002 */  addu       $a0, $s0, $zero
.Llevel_31_8007D89C:
/* 6A985CC 8007D89C 4957010C */  jal        func_80055D24
/* 6A985D0 8007D8A0 04000524 */   addiu     $a1, $zero, 0x4
.Llevel_31_8007D8A4:
/* 6A985D4 8007D8A4 2800BF8F */  lw         $ra, 0x28($sp)
/* 6A985D8 8007D8A8 2400B18F */  lw         $s1, 0x24($sp)
/* 6A985DC 8007D8AC 2000B08F */  lw         $s0, 0x20($sp)
/* 6A985E0 8007D8B0 3000BD27 */  addiu      $sp, $sp, 0x30
/* 6A985E4 8007D8B4 0800E003 */  jr         $ra
/* 6A985E8 8007D8B8 00000000 */   nop
.size MobyUpdate_243_level_31, . - MobyUpdate_243_level_31
