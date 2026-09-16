.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_64_800775E8
/* BCCB18 800775E8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* BCCB1C 800775EC 2C00B5AF */  sw         $s5, 0x2C($sp)
/* BCCB20 800775F0 21A88000 */  addu       $s5, $a0, $zero
/* BCCB24 800775F4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* BCCB28 800775F8 2188A002 */  addu       $s1, $s5, $zero
/* BCCB2C 800775FC 3000BFAF */  sw         $ra, 0x30($sp)
/* BCCB30 80077600 2800B4AF */  sw         $s4, 0x28($sp)
/* BCCB34 80077604 2400B3AF */  sw         $s3, 0x24($sp)
/* BCCB38 80077608 2000B2AF */  sw         $s2, 0x20($sp)
/* BCCB3C 8007760C 1800B0AF */  sw         $s0, 0x18($sp)
/* BCCB40 80077610 0000228E */  lw         $v0, 0x0($s1)
/* BCCB44 80077614 04003126 */  addiu      $s1, $s1, 0x4
/* BCCB48 80077618 40100200 */  sll        $v0, $v0, 1
/* BCCB4C 8007761C 0780013C */  lui        $at, %hi(D_8006EDEC)
/* BCCB50 80077620 ECED22AC */  sw         $v0, %lo(D_8006EDEC)($at)
/* BCCB54 80077624 0000238E */  lw         $v1, 0x0($s1)
/* BCCB58 80077628 04003126 */  addiu      $s1, $s1, 0x4
/* BCCB5C 8007762C 0780013C */  lui        $at, %hi(D_8006EDF0)
/* BCCB60 80077630 F0ED23AC */  sw         $v1, %lo(D_8006EDF0)($at)
/* BCCB64 80077634 0000228E */  lw         $v0, 0x0($s1)
/* BCCB68 80077638 04003126 */  addiu      $s1, $s1, 0x4
/* BCCB6C 8007763C 80180300 */  sll        $v1, $v1, 2
/* BCCB70 80077640 0780013C */  lui        $at, %hi(D_8006EDFC)
/* BCCB74 80077644 FCED22AC */  sw         $v0, %lo(D_8006EDFC)($at)
/* BCCB78 80077648 0000278E */  lw         $a3, 0x0($s1)
/* BCCB7C 8007764C 04003126 */  addiu      $s1, $s1, 0x4
/* BCCB80 80077650 0780013C */  lui        $at, %hi(D_8006EE00)
/* BCCB84 80077654 00EE27AC */  sw         $a3, %lo(D_8006EE00)($at)
/* BCCB88 80077658 0000248E */  lw         $a0, 0x0($s1)
/* BCCB8C 8007765C 04003126 */  addiu      $s1, $s1, 0x4
/* BCCB90 80077660 0780013C */  lui        $at, %hi(D_8006EDF4)
/* BCCB94 80077664 F4ED31AC */  sw         $s1, %lo(D_8006EDF4)($at)
/* BCCB98 80077668 21882302 */  addu       $s1, $s1, $v1
/* BCCB9C 8007766C 0780013C */  lui        $at, %hi(D_8006EDF8)
/* BCCBA0 80077670 F8ED31AC */  sw         $s1, %lo(D_8006EDF8)($at)
/* BCCBA4 80077674 2110A702 */  addu       $v0, $s5, $a3
/* BCCBA8 80077678 0780013C */  lui        $at, %hi(D_8006EE08)
/* BCCBAC 8007767C 08EE22AC */  sw         $v0, %lo(D_8006EE08)($at)
/* BCCBB0 80077680 21104400 */  addu       $v0, $v0, $a0
/* BCCBB4 80077684 0780013C */  lui        $at, %hi(D_8006EE04)
/* BCCBB8 80077688 04EE24AC */  sw         $a0, %lo(D_8006EE04)($at)
/* BCCBBC 8007768C 0780013C */  lui        $at, %hi(D_8006EE0C)
/* BCCBC0 80077690 0CEE22AC */  sw         $v0, %lo(D_8006EE0C)($at)
/* BCCBC4 80077694 1300A010 */  beqz       $a1, .Lcutscene_64_800776E4
/* BCCBC8 80077698 21882302 */   addu      $s1, $s1, $v1
/* BCCBCC 8007769C 0008A526 */  addiu      $a1, $s5, 0x800
/* BCCBD0 800776A0 0780023C */  lui        $v0, %hi(D_8006EDF8)
/* BCCBD4 800776A4 F8ED428C */  lw         $v0, %lo(D_8006EDF8)($v0)
/* BCCBD8 800776A8 0780043C */  lui        $a0, %hi(D_8006E470)
/* BCCBDC 800776AC 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* BCCBE0 800776B0 0780033C */  lui        $v1, %hi(D_8006C58C)
/* BCCBE4 800776B4 8CC5638C */  lw         $v1, %lo(D_8006C58C)($v1)
/* BCCBE8 800776B8 0000468C */  lw         $a2, 0x0($v0)
/* BCCBEC 800776BC 40100300 */  sll        $v0, $v1, 1
/* BCCBF0 800776C0 21104300 */  addu       $v0, $v0, $v1
/* BCCBF4 800776C4 C0100200 */  sll        $v0, $v0, 3
/* BCCBF8 800776C8 2130E600 */  addu       $a2, $a3, $a2
/* BCCBFC 800776CC 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* BCCC00 800776D0 21082200 */  addu       $at, $at, $v0
/* BCCC04 800776D4 18D9278C */  lw         $a3, %lo(D_8006D8D8 + 0x40)($at)
/* BCCC08 800776D8 00F8C624 */  addiu      $a2, $a2, -0x800
/* BCCC0C 800776DC 5E41010C */  jal        CDLoadSync
/* BCCC10 800776E0 0008E724 */   addiu     $a3, $a3, 0x800
.Lcutscene_64_800776E4:
/* BCCC14 800776E4 0000228E */  lw         $v0, 0x0($s1)
/* BCCC18 800776E8 04003126 */  addiu      $s1, $s1, 0x4
/* BCCC1C 800776EC 0780103C */  lui        $s0, %hi(D_8006EE2C)
/* BCCC20 800776F0 2CEE1026 */  addiu      $s0, $s0, %lo(D_8006EE2C)
/* BCCC24 800776F4 0780043C */  lui        $a0, %hi(D_8006EE00)
/* BCCC28 800776F8 00EE848C */  lw         $a0, %lo(D_8006EE00)($a0)
/* BCCC2C 800776FC 0780063C */  lui        $a2, %hi(D_8006EDFC)
/* BCCC30 80077700 FCEDC68C */  lw         $a2, %lo(D_8006EDFC)($a2)
/* BCCC34 80077704 2120A402 */  addu       $a0, $s5, $a0
/* BCCC38 80077708 80300600 */  sll        $a2, $a2, 2
/* BCCC3C 8007770C 23208600 */  subu       $a0, $a0, $a2
/* BCCC40 80077710 2110A202 */  addu       $v0, $s5, $v0
/* BCCC44 80077714 0780013C */  lui        $at, %hi(D_8006C550)
/* BCCC48 80077718 50C522AC */  sw         $v0, %lo(D_8006C550)($at)
/* BCCC4C 8007771C 0780013C */  lui        $at, %hi(D_8006EE10)
/* BCCC50 80077720 10EE24AC */  sw         $a0, %lo(D_8006EE10)($at)
/* BCCC54 80077724 F539010C */  jal        func_8004E7D4
/* BCCC58 80077728 21280002 */   addu      $a1, $s0, $zero
/* BCCC5C 8007772C 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* BCCC60 80077730 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* BCCC64 80077734 00000000 */  nop
/* BCCC68 80077738 40004018 */  blez       $v0, .Lcutscene_64_8007783C
/* BCCC6C 8007773C 21980000 */   addu      $s3, $zero, $zero
/* BCCC70 80077740 21900000 */  addu       $s2, $zero, $zero
/* BCCC74 80077744 21A00002 */  addu       $s4, $s0, $zero
.Lcutscene_64_80077748:
/* BCCC78 80077748 0000228E */  lw         $v0, 0x0($s1)
/* BCCC7C 8007774C 00000000 */  nop
/* BCCC80 80077750 2120A202 */  addu       $a0, $s5, $v0
/* BCCC84 80077754 000084AE */  sw         $a0, 0x0($s4)
/* BCCC88 80077758 0000828C */  lw         $v0, 0x0($a0)
/* BCCC8C 8007775C 00000000 */  nop
/* BCCC90 80077760 06004104 */  bgez       $v0, .Lcutscene_64_8007777C
/* BCCC94 80077764 04003126 */   addiu     $s1, $s1, 0x4
/* BCCC98 80077768 21286002 */  addu       $a1, $s3, $zero
/* BCCC9C 8007776C E7AB000C */  jal        func_8002AF9C
/* BCCCA0 80077770 8080063C */   lui       $a2, (0x80800000 >> 16)
/* BCCCA4 80077774 ECDD0108 */  j          .Lcutscene_64_800777B0
/* BCCCA8 80077778 21280000 */   addu      $a1, $zero, $zero
.Lcutscene_64_8007777C:
/* BCCCAC 8007777C 3400828C */  lw         $v0, 0x34($a0)
/* BCCCB0 80077780 00000000 */  nop
/* BCCCB4 80077784 02004010 */  beqz       $v0, .Lcutscene_64_80077790
/* BCCCB8 80077788 21108200 */   addu      $v0, $a0, $v0
/* BCCCBC 8007778C 340082AC */  sw         $v0, 0x34($a0)
.Lcutscene_64_80077790:
/* BCCCC0 80077790 0000838E */  lw         $v1, 0x0($s4)
/* BCCCC4 80077794 00000000 */  nop
/* BCCCC8 80077798 3800628C */  lw         $v0, 0x38($v1)
/* BCCCCC 8007779C 00000000 */  nop
/* BCCCD0 800777A0 02004010 */  beqz       $v0, .Lcutscene_64_800777AC
/* BCCCD4 800777A4 21106200 */   addu      $v0, $v1, $v0
/* BCCCD8 800777A8 380062AC */  sw         $v0, 0x38($v1)
.Lcutscene_64_800777AC:
/* BCCCDC 800777AC 21280000 */  addu       $a1, $zero, $zero
.Lcutscene_64_800777B0:
/* BCCCE0 800777B0 0780043C */  lui        $a0, %hi(D_8006C550)
/* BCCCE4 800777B4 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* BCCCE8 800777B8 00000000 */  nop
/* BCCCEC 800777BC 21204402 */  addu       $a0, $s2, $a0
/* BCCCF0 800777C0 38009084 */  lh         $s0, 0x38($a0)
/* BCCCF4 800777C4 E439010C */  jal        func_8004E790
/* BCCCF8 800777C8 58000624 */   addiu     $a2, $zero, 0x58
/* BCCCFC 800777CC 20000224 */  addiu      $v0, $zero, 0x20
/* BCCD00 800777D0 0780033C */  lui        $v1, %hi(D_8006C550)
/* BCCD04 800777D4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* BCCD08 800777D8 04009426 */  addiu      $s4, $s4, 0x4
/* BCCD0C 800777DC 21184302 */  addu       $v1, $s2, $v1
/* BCCD10 800777E0 4C0062A0 */  sb         $v0, 0x4C($v1)
/* BCCD14 800777E4 0780043C */  lui        $a0, %hi(D_8006C550)
/* BCCD18 800777E8 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* BCCD1C 800777EC 40000224 */  addiu      $v0, $zero, 0x40
/* BCCD20 800777F0 360073A4 */  sh         $s3, 0x36($v1)
/* BCCD24 800777F4 21204402 */  addu       $a0, $s2, $a0
/* BCCD28 800777F8 4E0082A0 */  sb         $v0, 0x4E($a0)
/* BCCD2C 800777FC 0780033C */  lui        $v1, %hi(D_8006C550)
/* BCCD30 80077800 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* BCCD34 80077804 FF000224 */  addiu      $v0, $zero, 0xFF
/* BCCD38 80077808 21184302 */  addu       $v1, $s2, $v1
/* BCCD3C 8007780C 520062A0 */  sb         $v0, 0x52($v1)
/* BCCD40 80077810 0780023C */  lui        $v0, %hi(D_8006C550)
/* BCCD44 80077814 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* BCCD48 80077818 01007326 */  addiu      $s3, $s3, 0x1
/* BCCD4C 8007781C 21104202 */  addu       $v0, $s2, $v0
/* BCCD50 80077820 380050A4 */  sh         $s0, 0x38($v0)
/* BCCD54 80077824 0780023C */  lui        $v0, %hi(D_8006EDFC)
/* BCCD58 80077828 FCED428C */  lw         $v0, %lo(D_8006EDFC)($v0)
/* BCCD5C 8007782C 00000000 */  nop
/* BCCD60 80077830 2A106202 */  slt        $v0, $s3, $v0
/* BCCD64 80077834 C4FF4014 */  bnez       $v0, .Lcutscene_64_80077748
/* BCCD68 80077838 58005226 */   addiu     $s2, $s2, 0x58
.Lcutscene_64_8007783C:
/* BCCD6C 8007783C 0780033C */  lui        $v1, %hi(D_8006EDFC)
/* BCCD70 80077840 FCED638C */  lw         $v1, %lo(D_8006EDFC)($v1)
/* BCCD74 80077844 00000000 */  nop
/* BCCD78 80077848 40100300 */  sll        $v0, $v1, 1
/* BCCD7C 8007784C 21104300 */  addu       $v0, $v0, $v1
/* BCCD80 80077850 80100200 */  sll        $v0, $v0, 2
/* BCCD84 80077854 23104300 */  subu       $v0, $v0, $v1
/* BCCD88 80077858 0780033C */  lui        $v1, %hi(D_8006C550)
/* BCCD8C 8007785C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* BCCD90 80077860 C0100200 */  sll        $v0, $v0, 3
/* BCCD94 80077864 21104300 */  addu       $v0, $v0, $v1
/* BCCD98 80077868 FF000324 */  addiu      $v1, $zero, 0xFF
/* BCCD9C 8007786C 480043A0 */  sb         $v1, 0x48($v0)
/* BCCDA0 80077870 3000BF8F */  lw         $ra, 0x30($sp)
/* BCCDA4 80077874 2C00B58F */  lw         $s5, 0x2C($sp)
/* BCCDA8 80077878 2800B48F */  lw         $s4, 0x28($sp)
/* BCCDAC 8007787C 2400B38F */  lw         $s3, 0x24($sp)
/* BCCDB0 80077880 2000B28F */  lw         $s2, 0x20($sp)
/* BCCDB4 80077884 1C00B18F */  lw         $s1, 0x1C($sp)
/* BCCDB8 80077888 1800B08F */  lw         $s0, 0x18($sp)
/* BCCDBC 8007788C 3800BD27 */  addiu      $sp, $sp, 0x38
/* BCCDC0 80077890 0800E003 */  jr         $ra
/* BCCDC4 80077894 00000000 */   nop
.size func_cutscene_64_800775E8, . - func_cutscene_64_800775E8
