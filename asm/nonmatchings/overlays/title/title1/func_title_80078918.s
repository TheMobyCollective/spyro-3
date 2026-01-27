.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_title_80078918
/* 27648 80078918 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2764C 8007891C 21400000 */  addu       $t0, $zero, $zero
/* 27650 80078920 0780063C */  lui        $a2, %hi(D_800716AC)
/* 27654 80078924 AC16C624 */  addiu      $a2, $a2, %lo(D_800716AC)
/* 27658 80078928 0780073C */  lui        $a3, %hi(D_800715BC)
/* 2765C 8007892C BC15E724 */  addiu      $a3, $a3, %lo(D_800715BC)
/* 27660 80078930 04000224 */  addiu      $v0, $zero, 0x4
/* 27664 80078934 0780013C */  lui        $at, %hi(D_8006C784)
/* 27668 80078938 84C722AC */  sw         $v0, %lo(D_8006C784)($at)
/* 2766C 8007893C 01000224 */  addiu      $v0, $zero, 0x1
/* 27670 80078940 01000324 */  addiu      $v1, $zero, 0x1
/* 27674 80078944 0780013C */  lui        $at, %hi(D_8006E50C)
/* 27678 80078948 0CE522A0 */  sb         $v0, %lo(D_8006E50C)($at)
/* 2767C 8007894C 0780013C */  lui        $at, %hi(D_8007201C)
/* 27680 80078950 1C2022A0 */  sb         $v0, %lo(D_8007201C)($at)
/* 27684 80078954 0A000224 */  addiu      $v0, $zero, 0xA
/* 27688 80078958 0780013C */  lui        $at, %hi(D_8006C3F8)
/* 2768C 8007895C F8C322AC */  sw         $v0, %lo(D_8006C3F8)($at)
/* 27690 80078960 0780013C */  lui        $at, %hi(D_8006C3FC)
/* 27694 80078964 FCC322AC */  sw         $v0, %lo(D_8006C3FC)($at)
/* 27698 80078968 FF5F0224 */  addiu      $v0, $zero, 0x5FFF
/* 2769C 8007896C 1000BFAF */  sw         $ra, 0x10($sp)
/* 276A0 80078970 0780013C */  lui        $at, %hi(D_8006C5BC)
/* 276A4 80078974 BCC520AC */  sw         $zero, %lo(D_8006C5BC)($at)
/* 276A8 80078978 0780013C */  lui        $at, %hi(g_CheatFlags + 2)
/* 276AC 8007897C 92FB20A0 */  sb         $zero, %lo(g_CheatFlags + 2)($at)
/* 276B0 80078980 0780013C */  lui        $at, %hi(D_8006C7B0)
/* 276B4 80078984 B0C723AC */  sw         $v1, %lo(D_8006C7B0)($at)
/* 276B8 80078988 0780013C */  lui        $at, %hi(D_8006E4AC)
/* 276BC 8007898C ACE422AC */  sw         $v0, %lo(D_8006E4AC)($at)
/* 276C0 80078990 0780013C */  lui        $at, %hi(D_8006C400)
/* 276C4 80078994 00C423AC */  sw         $v1, %lo(D_8006C400)($at)
/* 276C8 80078998 0780013C */  lui        $at, %hi(D_8006C5D0)
/* 276CC 8007899C D0C520AC */  sw         $zero, %lo(D_8006C5D0)($at)
/* 276D0 800789A0 0780013C */  lui        $at, %hi(D_8006C584)
/* 276D4 800789A4 84C520AC */  sw         $zero, %lo(D_8006C584)($at)
/* 276D8 800789A8 0780013C */  lui        $at, %hi(D_8006C7A8)
/* 276DC 800789AC A8C720AC */  sw         $zero, %lo(D_8006C7A8)($at)
/* 276E0 800789B0 0780013C */  lui        $at, %hi(D_8006C7C4)
/* 276E4 800789B4 C4C720AC */  sw         $zero, %lo(D_8006C7C4)($at)
/* 276E8 800789B8 0780013C */  lui        $at, %hi(D_8006C70C)
/* 276EC 800789BC 0CC720AC */  sw         $zero, %lo(D_8006C70C)($at)
/* 276F0 800789C0 0780013C */  lui        $at, %hi(D_8006C710)
/* 276F4 800789C4 10C720AC */  sw         $zero, %lo(D_8006C710)($at)
.Ltitle_800789C8:
/* 276F8 800789C8 2118C000 */  addu       $v1, $a2, $zero
/* 276FC 800789CC 2120E000 */  addu       $a0, $a3, $zero
/* 27700 800789D0 0600C524 */  addiu      $a1, $a2, 0x6
.Ltitle_800789D4:
/* 27704 800789D4 000080A0 */  sb         $zero, 0x0($a0)
/* 27708 800789D8 000060A0 */  sb         $zero, 0x0($v1)
/* 2770C 800789DC 01006324 */  addiu      $v1, $v1, 0x1
/* 27710 800789E0 2A106500 */  slt        $v0, $v1, $a1
/* 27714 800789E4 FBFF4014 */  bnez       $v0, .Ltitle_800789D4
/* 27718 800789E8 01008424 */   addiu     $a0, $a0, 0x1
/* 2771C 800789EC 0600C624 */  addiu      $a2, $a2, 0x6
/* 27720 800789F0 01000825 */  addiu      $t0, $t0, 0x1
/* 27724 800789F4 28000229 */  slti       $v0, $t0, 0x28
/* 27728 800789F8 F3FF4014 */  bnez       $v0, .Ltitle_800789C8
/* 2772C 800789FC 0600E724 */   addiu     $a3, $a3, 0x6
/* 27730 80078A00 0780043C */  lui        $a0, %hi(D_80070300)
/* 27734 80078A04 00038424 */  addiu      $a0, $a0, %lo(D_80070300)
/* 27738 80078A08 21280000 */  addu       $a1, $zero, $zero
/* 2773C 80078A0C 0780013C */  lui        $at, %hi(D_8006C660)
/* 27740 80078A10 60C620AC */  sw         $zero, %lo(D_8006C660)($at)
/* 27744 80078A14 E439010C */  jal        func_8004E790
/* 27748 80078A18 28000624 */   addiu     $a2, $zero, 0x28
/* 2774C 80078A1C 0780043C */  lui        $a0, %hi(D_80071A10)
/* 27750 80078A20 101A8424 */  addiu      $a0, $a0, %lo(D_80071A10)
/* 27754 80078A24 21280000 */  addu       $a1, $zero, $zero
/* 27758 80078A28 0780013C */  lui        $at, %hi(D_8006C71C)
/* 2775C 80078A2C 1CC720AC */  sw         $zero, %lo(D_8006C71C)($at)
/* 27760 80078A30 E439010C */  jal        func_8004E790
/* 27764 80078A34 A0000624 */   addiu     $a2, $zero, 0xA0
/* 27768 80078A38 0780043C */  lui        $a0, %hi(D_80071AB0)
/* 2776C 80078A3C B01A8424 */  addiu      $a0, $a0, %lo(D_80071AB0)
/* 27770 80078A40 21280000 */  addu       $a1, $zero, $zero
/* 27774 80078A44 E439010C */  jal        func_8004E790
/* 27778 80078A48 00050624 */   addiu     $a2, $zero, 0x500
/* 2777C 80078A4C 0780043C */  lui        $a0, %hi(D_80071FB0)
/* 27780 80078A50 B01F8424 */  addiu      $a0, $a0, %lo(D_80071FB0)
/* 27784 80078A54 21280000 */  addu       $a1, $zero, $zero
/* 27788 80078A58 E439010C */  jal        func_8004E790
/* 2778C 80078A5C 28000624 */   addiu     $a2, $zero, 0x28
/* 27790 80078A60 0780043C */  lui        $a0, %hi(D_80071570)
/* 27794 80078A64 70158424 */  addiu      $a0, $a0, %lo(D_80071570)
/* 27798 80078A68 21280000 */  addu       $a1, $zero, $zero
/* 2779C 80078A6C E439010C */  jal        func_8004E790
/* 277A0 80078A70 4C000624 */   addiu     $a2, $zero, 0x4C
/* 277A4 80078A74 0780043C */  lui        $a0, %hi(D_8007145C)
/* 277A8 80078A78 5C148424 */  addiu      $a0, $a0, %lo(D_8007145C)
/* 277AC 80078A7C 21280000 */  addu       $a1, $zero, $zero
/* 277B0 80078A80 E439010C */  jal        func_8004E790
/* 277B4 80078A84 28000624 */   addiu     $a2, $zero, 0x28
/* 277B8 80078A88 0780043C */  lui        $a0, %hi(D_8006C408)
/* 277BC 80078A8C 08C48424 */  addiu      $a0, $a0, %lo(D_8006C408)
/* 277C0 80078A90 21280000 */  addu       $a1, $zero, $zero
/* 277C4 80078A94 E439010C */  jal        func_8004E790
/* 277C8 80078A98 08000624 */   addiu     $a2, $zero, 0x8
/* 277CC 80078A9C 0680043C */  lui        $a0, %hi(D_80066EEC)
/* 277D0 80078AA0 EC6E8424 */  addiu      $a0, $a0, %lo(D_80066EEC)
/* 277D4 80078AA4 21280000 */  addu       $a1, $zero, $zero
/* 277D8 80078AA8 E439010C */  jal        func_8004E790
/* 277DC 80078AAC 20000624 */   addiu     $a2, $zero, 0x20
/* 277E0 80078AB0 2C000224 */  addiu      $v0, $zero, 0x2C
.Ltitle_80078AB4:
/* 277E4 80078AB4 0680013C */  lui        $at, %hi(D_80066EAE)
/* 277E8 80078AB8 21082200 */  addu       $at, $at, $v0
/* 277EC 80078ABC AE6E20A4 */  sh         $zero, %lo(D_80066EAE)($at)
/* 277F0 80078AC0 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 277F4 80078AC4 FBFF4104 */  bgez       $v0, .Ltitle_80078AB4
/* 277F8 80078AC8 21200000 */   addu      $a0, $zero, $zero
/* 277FC 80078ACC A08C0534 */  ori        $a1, $zero, 0x8CA0
/* 27800 80078AD0 21180000 */  addu       $v1, $zero, $zero
.Ltitle_80078AD4:
/* 27804 80078AD4 0680013C */  lui        $at, %hi(speedwayRecords + 0x10)
/* 27808 80078AD8 21082300 */  addu       $at, $at, $v1
/* 2780C 80078ADC 6C5720AC */  sw         $zero, %lo(speedwayRecords + 0x10)($at)
/* 27810 80078AE0 0680013C */  lui        $at, %hi(speedwayRecords + 0x14)
/* 27814 80078AE4 21082300 */  addu       $at, $at, $v1
/* 27818 80078AE8 705725AC */  sw         $a1, %lo(speedwayRecords + 0x14)($at)
/* 2781C 80078AEC 0680013C */  lui        $at, %hi(speedwayRecords + 0x1C)
/* 27820 80078AF0 21082300 */  addu       $at, $at, $v1
/* 27824 80078AF4 785720AC */  sw         $zero, %lo(speedwayRecords + 0x1C)($at)
/* 27828 80078AF8 0680013C */  lui        $at, %hi(speedwayRecords + 0x28)
/* 2782C 80078AFC 21082300 */  addu       $at, $at, $v1
/* 27830 80078B00 845725AC */  sw         $a1, %lo(speedwayRecords + 0x28)($at)
/* 27834 80078B04 0680013C */  lui        $at, %hi(speedwayRecords + 0x24)
/* 27838 80078B08 21082300 */  addu       $at, $at, $v1
/* 2783C 80078B0C 805720AC */  sw         $zero, %lo(speedwayRecords + 0x24)($at)
/* 27840 80078B10 01008424 */  addiu      $a0, $a0, 0x1
/* 27844 80078B14 04008228 */  slti       $v0, $a0, 0x4
/* 27848 80078B18 EEFF4014 */  bnez       $v0, .Ltitle_80078AD4
/* 2784C 80078B1C 2C006324 */   addiu     $v1, $v1, 0x2C
/* 27850 80078B20 7055010C */  jal        ActivateSparxPowers
/* 27854 80078B24 00000000 */   nop
/* 27858 80078B28 1000BF8F */  lw         $ra, 0x10($sp)
/* 2785C 80078B2C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 27860 80078B30 0800E003 */  jr         $ra
/* 27864 80078B34 00000000 */   nop
.size func_title_80078918, . - func_title_80078918
