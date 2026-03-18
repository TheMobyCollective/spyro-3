.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_8008368C
/* 3AE83BC 8008368C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3AE83C0 80083690 2400B1AF */  sw         $s1, 0x24($sp)
/* 3AE83C4 80083694 21888000 */  addu       $s1, $a0, $zero
/* 3AE83C8 80083698 3400B5AF */  sw         $s5, 0x34($sp)
/* 3AE83CC 8008369C 21A8A000 */  addu       $s5, $a1, $zero
/* 3AE83D0 800836A0 3800BFAF */  sw         $ra, 0x38($sp)
/* 3AE83D4 800836A4 3000B4AF */  sw         $s4, 0x30($sp)
/* 3AE83D8 800836A8 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3AE83DC 800836AC 2800B2AF */  sw         $s2, 0x28($sp)
/* 3AE83E0 800836B0 9F56010C */  jal        func_80055A7C
/* 3AE83E4 800836B4 2000B0AF */   sw        $s0, 0x20($sp)
/* 3AE83E8 800836B8 21984000 */  addu       $s3, $v0, $zero
/* 3AE83EC 800836BC 03006016 */  bnez       $s3, .Llevel_10_800836CC
/* 3AE83F0 800836C0 21206002 */   addu      $a0, $s3, $zero
/* 3AE83F4 800836C4 03100208 */  j          .Llevel_10_8008400C
/* 3AE83F8 800836C8 21100000 */   addu      $v0, $zero, $zero
.Llevel_10_800836CC:
/* 3AE83FC 800836CC 21280000 */  addu       $a1, $zero, $zero
/* 3AE8400 800836D0 0000708E */  lw         $s0, 0x0($s3)
/* 3AE8404 800836D4 E439010C */  jal        func_8004E790
/* 3AE8408 800836D8 58000624 */   addiu     $a2, $zero, 0x58
/* 3AE840C 800836DC 21280000 */  addu       $a1, $zero, $zero
/* 3AE8410 800836E0 18000624 */  addiu      $a2, $zero, 0x18
/* 3AE8414 800836E4 21200002 */  addu       $a0, $s0, $zero
/* 3AE8418 800836E8 E439010C */  jal        func_8004E790
/* 3AE841C 800836EC 000064AE */   sw        $a0, 0x0($s3)
/* 3AE8420 800836F0 1600A012 */  beqz       $s5, .Llevel_10_8008374C
/* 3AE8424 800836F4 360071A6 */   sh        $s1, 0x36($s3)
/* 3AE8428 800836F8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 3AE842C 800836FC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 3AE8430 80083700 00000000 */  nop
/* 3AE8434 80083704 2320A402 */  subu       $a0, $s5, $a0
/* 3AE8438 80083708 40190400 */  sll        $v1, $a0, 5
/* 3AE843C 8008370C 23186400 */  subu       $v1, $v1, $a0
/* 3AE8440 80083710 40190300 */  sll        $v1, $v1, 5
/* 3AE8444 80083714 21186400 */  addu       $v1, $v1, $a0
/* 3AE8448 80083718 C0100300 */  sll        $v0, $v1, 3
/* 3AE844C 8008371C 21186200 */  addu       $v1, $v1, $v0
/* 3AE8450 80083720 C0130300 */  sll        $v0, $v1, 15
/* 3AE8454 80083724 23104300 */  subu       $v0, $v0, $v1
/* 3AE8458 80083728 80100200 */  sll        $v0, $v0, 2
/* 3AE845C 8008372C 21104400 */  addu       $v0, $v0, $a0
/* 3AE8460 80083730 23100200 */  negu       $v0, $v0
/* 3AE8464 80083734 C3180200 */  sra        $v1, $v0, 3
/* 3AE8468 80083738 0001622C */  sltiu      $v0, $v1, 0x100
/* 3AE846C 8008373C 04004010 */  beqz       $v0, .Llevel_10_80083750
/* 3AE8470 80083740 FF000224 */   addiu     $v0, $zero, 0xFF
/* 3AE8474 80083744 D50D0208 */  j          .Llevel_10_80083754
/* 3AE8478 80083748 3A0063A2 */   sb        $v1, 0x3A($s3)
.Llevel_10_8008374C:
/* 3AE847C 8008374C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_10_80083750:
/* 3AE8480 80083750 3A0062A2 */  sb         $v0, 0x3A($s3)
.Llevel_10_80083754:
/* 3AE8484 80083754 FBD3000C */  jal        func_80034FEC
/* 3AE8488 80083758 21206002 */   addu      $a0, $s3, $zero
/* 3AE848C 8008375C 10010224 */  addiu      $v0, $zero, 0x110
/* 3AE8490 80083760 E6002212 */  beq        $s1, $v0, .Llevel_10_80083AFC
/* 3AE8494 80083764 1101222A */   slti      $v0, $s1, 0x111
/* 3AE8498 80083768 20004010 */  beqz       $v0, .Llevel_10_800837EC
/* 3AE849C 8008376C 84000224 */   addiu     $v0, $zero, 0x84
/* 3AE84A0 80083770 B0002212 */  beq        $s1, $v0, .Llevel_10_80083A34
/* 3AE84A4 80083774 8500222A */   slti      $v0, $s1, 0x85
/* 3AE84A8 80083778 0E004010 */  beqz       $v0, .Llevel_10_800837B4
/* 3AE84AC 8008377C 10000224 */   addiu     $v0, $zero, 0x10
/* 3AE84B0 80083780 3D002212 */  beq        $s1, $v0, .Llevel_10_80083878
/* 3AE84B4 80083784 1100222A */   slti      $v0, $s1, 0x11
/* 3AE84B8 80083788 05004010 */  beqz       $v0, .Llevel_10_800837A0
/* 3AE84BC 8008378C 01000224 */   addiu     $v0, $zero, 0x1
/* 3AE84C0 80083790 32002212 */  beq        $s1, $v0, .Llevel_10_8008385C
/* 3AE84C4 80083794 00000000 */   nop
/* 3AE84C8 80083798 F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE84CC 8008379C 00000000 */   nop
.Llevel_10_800837A0:
/* 3AE84D0 800837A0 78000224 */  addiu      $v0, $zero, 0x78
/* 3AE84D4 800837A4 67002212 */  beq        $s1, $v0, .Llevel_10_80083944
/* 3AE84D8 800837A8 00000000 */   nop
/* 3AE84DC 800837AC F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE84E0 800837B0 00000000 */   nop
.Llevel_10_800837B4:
/* 3AE84E4 800837B4 D3000224 */  addiu      $v0, $zero, 0xD3
/* 3AE84E8 800837B8 2F002212 */  beq        $s1, $v0, .Llevel_10_80083878
/* 3AE84EC 800837BC D400222A */   slti      $v0, $s1, 0xD4
/* 3AE84F0 800837C0 05004010 */  beqz       $v0, .Llevel_10_800837D8
/* 3AE84F4 800837C4 AA000224 */   addiu     $v0, $zero, 0xAA
/* 3AE84F8 800837C8 A9002212 */  beq        $s1, $v0, .Llevel_10_80083A70
/* 3AE84FC 800837CC 00000000 */   nop
/* 3AE8500 800837D0 F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE8504 800837D4 00000000 */   nop
.Llevel_10_800837D8:
/* 3AE8508 800837D8 04010224 */  addiu      $v0, $zero, 0x104
/* 3AE850C 800837DC B2002212 */  beq        $s1, $v0, .Llevel_10_80083AA8
/* 3AE8510 800837E0 00000000 */   nop
/* 3AE8514 800837E4 F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE8518 800837E8 00000000 */   nop
.Llevel_10_800837EC:
/* 3AE851C 800837EC AA010224 */  addiu      $v0, $zero, 0x1AA
/* 3AE8520 800837F0 A2012212 */  beq        $s1, $v0, .Llevel_10_80083E7C
/* 3AE8524 800837F4 AB01222A */   slti      $v0, $s1, 0x1AB
/* 3AE8528 800837F8 0A004010 */  beqz       $v0, .Llevel_10_80083824
/* 3AE852C 800837FC 3201222A */   slti      $v0, $s1, 0x132
/* 3AE8530 80083800 F6014014 */  bnez       $v0, .Llevel_10_80083FDC
/* 3AE8534 80083804 3401222A */   slti      $v0, $s1, 0x134
/* 3AE8538 80083808 D7004014 */  bnez       $v0, .Llevel_10_80083B68
/* 3AE853C 8008380C 0C006426 */   addiu     $a0, $s3, 0xC
/* 3AE8540 80083810 36010224 */  addiu      $v0, $zero, 0x136
/* 3AE8544 80083814 D5002212 */  beq        $s1, $v0, .Llevel_10_80083B6C
/* 3AE8548 80083818 0C00A526 */   addiu     $a1, $s5, 0xC
/* 3AE854C 8008381C F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE8550 80083820 00000000 */   nop
.Llevel_10_80083824:
/* 3AE8554 80083824 E6010224 */  addiu      $v0, $zero, 0x1E6
/* 3AE8558 80083828 BB012212 */  beq        $s1, $v0, .Llevel_10_80083F18
/* 3AE855C 8008382C E701222A */   slti      $v0, $s1, 0x1E7
/* 3AE8560 80083830 05004010 */  beqz       $v0, .Llevel_10_80083848
/* 3AE8564 80083834 AB010224 */   addiu     $v0, $zero, 0x1AB
/* 3AE8568 80083838 A0012212 */  beq        $s1, $v0, .Llevel_10_80083EBC
/* 3AE856C 8008383C 0C007126 */   addiu     $s1, $s3, 0xC
/* 3AE8570 80083840 F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE8574 80083844 00000000 */   nop
.Llevel_10_80083848:
/* 3AE8578 80083848 38020224 */  addiu      $v0, $zero, 0x238
/* 3AE857C 8008384C C6002212 */  beq        $s1, $v0, .Llevel_10_80083B68
/* 3AE8580 80083850 0C006426 */   addiu     $a0, $s3, 0xC
/* 3AE8584 80083854 F70F0208 */  j          .Llevel_10_80083FDC
/* 3AE8588 80083858 00000000 */   nop
.Llevel_10_8008385C:
/* 3AE858C 8008385C 0957010C */  jal        func_80055C24
/* 3AE8590 80083860 21206002 */   addu      $a0, $s3, $zero
/* 3AE8594 80083864 18000224 */  addiu      $v0, $zero, 0x18
/* 3AE8598 80083868 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 3AE859C 8008386C 40000224 */  addiu      $v0, $zero, 0x40
/* 3AE85A0 80083870 BC0E0208 */  j          .Llevel_10_80083AF0
/* 3AE85A4 80083874 4A0062A2 */   sb        $v0, 0x4A($s3)
.Llevel_10_80083878:
/* 3AE85A8 80083878 10000324 */  addiu      $v1, $zero, 0x10
/* 3AE85AC 8008387C 36006286 */  lh         $v0, 0x36($s3)
/* 3AE85B0 80083880 0000718E */  lw         $s1, 0x0($s3)
/* 3AE85B4 80083884 19004314 */  bne        $v0, $v1, .Llevel_10_800838EC
/* 3AE85B8 80083888 0C007026 */   addiu     $s0, $s3, 0xC
/* 3AE85BC 8008388C 0780043C */  lui        $a0, %hi(D_8006C784)
/* 3AE85C0 80083890 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 3AE85C4 80083894 00000000 */  nop
/* 3AE85C8 80083898 04008228 */  slti       $v0, $a0, 0x4
/* 3AE85CC 8008389C 03004010 */  beqz       $v0, .Llevel_10_800838AC
/* 3AE85D0 800838A0 0A000324 */   addiu     $v1, $zero, 0xA
/* 3AE85D4 800838A4 2F0E0208 */  j          .Llevel_10_800838BC
/* 3AE85D8 800838A8 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_10_800838AC:
/* 3AE85DC 800838AC 07008228 */  slti       $v0, $a0, 0x7
/* 3AE85E0 800838B0 02004010 */  beqz       $v0, .Llevel_10_800838BC
/* 3AE85E4 800838B4 00000000 */   nop
/* 3AE85E8 800838B8 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_10_800838BC:
/* 3AE85EC 800838BC 0680043C */  lui        $a0, %hi(D_8006582C)
/* 3AE85F0 800838C0 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 3AE85F4 800838C4 0000828C */  lw         $v0, 0x0($a0)
/* 3AE85F8 800838C8 00000000 */  nop
/* 3AE85FC 800838CC 01004224 */  addiu      $v0, $v0, 0x1
/* 3AE8600 800838D0 000082AC */  sw         $v0, 0x0($a0)
/* 3AE8604 800838D4 2A104300 */  slt        $v0, $v0, $v1
/* 3AE8608 800838D8 04004014 */  bnez       $v0, .Llevel_10_800838EC
/* 3AE860C 800838DC 0C007026 */   addiu     $s0, $s3, 0xC
/* 3AE8610 800838E0 D3000224 */  addiu      $v0, $zero, 0xD3
/* 3AE8614 800838E4 000080AC */  sw         $zero, 0x0($a0)
/* 3AE8618 800838E8 360062A6 */  sh         $v0, 0x36($s3)
.Llevel_10_800838EC:
/* 3AE861C 800838EC 21200002 */  addu       $a0, $s0, $zero
/* 3AE8620 800838F0 5E3C010C */  jal        func_8004F178
/* 3AE8624 800838F4 0C00A526 */   addiu     $a1, $s5, 0xC
/* 3AE8628 800838F8 0957010C */  jal        func_80055C24
/* 3AE862C 800838FC 21206002 */   addu      $a0, $s3, $zero
/* 3AE8630 80083900 21202002 */  addu       $a0, $s1, $zero
/* 3AE8634 80083904 1400628E */  lw         $v0, 0x14($s3)
/* 3AE8638 80083908 21280002 */  addu       $a1, $s0, $zero
/* 3AE863C 8008390C 00024224 */  addiu      $v0, $v0, 0x200
/* 3AE8640 80083910 5E3C010C */  jal        func_8004F178
/* 3AE8644 80083914 140062AE */   sw        $v0, 0x14($s3)
/* 3AE8648 80083918 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3AE864C 8008391C 1C0062AE */  sw         $v0, 0x1C($s3)
/* 3AE8650 80083920 02000224 */  addiu      $v0, $zero, 0x2
/* 3AE8654 80083924 470062A2 */  sb         $v0, 0x47($s3)
/* 3AE8658 80083928 08070224 */  addiu      $v0, $zero, 0x708
/* 3AE865C 8008392C 0E0022A6 */  sh         $v0, 0xE($s1)
/* 3AE8660 80083930 9171010C */  jal        rand
/* 3AE8664 80083934 110020A2 */   sb        $zero, 0x11($s1)
/* 3AE8668 80083938 FC004230 */  andi       $v0, $v0, 0xFC
/* 3AE866C 8008393C 02100208 */  j          .Llevel_10_80084008
/* 3AE8670 80083940 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_10_80083944:
/* 3AE8674 80083944 3600A286 */  lh         $v0, 0x36($s5)
/* 3AE8678 80083948 00000000 */  nop
/* 3AE867C 8008394C 06005110 */  beq        $v0, $s1, .Llevel_10_80083968
/* 3AE8680 80083950 21280000 */   addu      $a1, $zero, $zero
/* 3AE8684 80083954 0780043C */  lui        $a0, %hi(D_8006E394)
/* 3AE8688 80083958 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 3AE868C 8008395C 000064AE */  sw         $a0, 0x0($s3)
/* 3AE8690 80083960 E439010C */  jal        func_8004E790
/* 3AE8694 80083964 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_10_80083968:
/* 3AE8698 80083968 0000708E */  lw         $s0, 0x0($s3)
/* 3AE869C 8008396C 0957010C */  jal        func_80055C24
/* 3AE86A0 80083970 21206002 */   addu      $a0, $s3, $zero
/* 3AE86A4 80083974 78000224 */  addiu      $v0, $zero, 0x78
/* 3AE86A8 80083978 490060A2 */  sb         $zero, 0x49($s3)
/* 3AE86AC 8008397C 000000A6 */  sh         $zero, 0x0($s0)
/* 3AE86B0 80083980 080000A6 */  sh         $zero, 0x8($s0)
/* 3AE86B4 80083984 060000A6 */  sh         $zero, 0x6($s0)
/* 3AE86B8 80083988 040000A6 */  sh         $zero, 0x4($s0)
/* 3AE86BC 8008398C 0D0002A2 */  sb         $v0, 0xD($s0)
/* 3AE86C0 80083990 100000AE */  sw         $zero, 0x10($s0)
/* 3AE86C4 80083994 0600A012 */  beqz       $s5, .Llevel_10_800839B0
/* 3AE86C8 80083998 140000AE */   sw        $zero, 0x14($s0)
/* 3AE86CC 8008399C 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE86D0 800839A0 5E3C010C */  jal        func_8004F178
/* 3AE86D4 800839A4 0C00A526 */   addiu     $a1, $s5, 0xC
/* 3AE86D8 800839A8 8B0E0208 */  j          .Llevel_10_80083A2C
/* 3AE86DC 800839AC FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_10_800839B0:
/* 3AE86E0 800839B0 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE86E4 800839B4 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 3AE86E8 800839B8 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 3AE86EC 800839BC 0000A390 */  lbu        $v1, 0x0($a1)
/* 3AE86F0 800839C0 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 3AE86F4 800839C4 80FF6324 */  addiu      $v1, $v1, -0x80
/* 3AE86F8 800839C8 FF006330 */  andi       $v1, $v1, 0xFF
/* 3AE86FC 800839CC 40180300 */  sll        $v1, $v1, 1
/* 3AE8700 800839D0 0680013C */  lui        $at, %hi(D_80065920)
/* 3AE8704 800839D4 21082300 */  addu       $at, $at, $v1
/* 3AE8708 800839D8 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 3AE870C 800839DC 1000A627 */  addiu      $a2, $sp, 0x10
/* 3AE8710 800839E0 40110700 */  sll        $v0, $a3, 5
/* 3AE8714 800839E4 23104700 */  subu       $v0, $v0, $a3
/* 3AE8718 800839E8 80100200 */  sll        $v0, $v0, 2
/* 3AE871C 800839EC 21104700 */  addu       $v0, $v0, $a3
/* 3AE8720 800839F0 43120200 */  sra        $v0, $v0, 9
/* 3AE8724 800839F4 1000A2AF */  sw         $v0, 0x10($sp)
/* 3AE8728 800839F8 0680013C */  lui        $at, %hi(D_800658A0)
/* 3AE872C 800839FC 21082300 */  addu       $at, $at, $v1
/* 3AE8730 80083A00 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 3AE8734 80083A04 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 3AE8738 80083A08 1800A2AF */  sw         $v0, 0x18($sp)
/* 3AE873C 80083A0C 40110300 */  sll        $v0, $v1, 5
/* 3AE8740 80083A10 23104300 */  subu       $v0, $v0, $v1
/* 3AE8744 80083A14 80100200 */  sll        $v0, $v0, 2
/* 3AE8748 80083A18 21104300 */  addu       $v0, $v0, $v1
/* 3AE874C 80083A1C 43120200 */  sra        $v0, $v0, 9
/* 3AE8750 80083A20 653C010C */  jal        func_8004F194
/* 3AE8754 80083A24 1400A2AF */   sw        $v0, 0x14($sp)
/* 3AE8758 80083A28 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_10_80083A2C:
/* 3AE875C 80083A2C 02100208 */  j          .Llevel_10_80084008
/* 3AE8760 80083A30 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_10_80083A34:
/* 3AE8764 80083A34 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE8768 80083A38 4600A292 */  lbu        $v0, 0x46($s5)
/* 3AE876C 80083A3C 0C00A526 */  addiu      $a1, $s5, 0xC
/* 3AE8770 80083A40 5E3C010C */  jal        func_8004F178
/* 3AE8774 80083A44 460062A2 */   sb        $v0, 0x46($s3)
/* 3AE8778 80083A48 0957010C */  jal        func_80055C24
/* 3AE877C 80083A4C 21206002 */   addu      $a0, $s3, $zero
/* 3AE8780 80083A50 4ED7000C */  jal        func_80035D38
/* 3AE8784 80083A54 21206002 */   addu      $a0, $s3, $zero
/* 3AE8788 80083A58 02004010 */  beqz       $v0, .Llevel_10_80083A64
/* 3AE878C 80083A5C 00000000 */   nop
/* 3AE8790 80083A60 140062AE */  sw         $v0, 0x14($s3)
.Llevel_10_80083A64:
/* 3AE8794 80083A64 06000224 */  addiu      $v0, $zero, 0x6
/* 3AE8798 80083A68 02100208 */  j          .Llevel_10_80084008
/* 3AE879C 80083A6C 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_10_80083A70:
/* 3AE87A0 80083A70 410060A2 */  sb         $zero, 0x41($s3)
/* 3AE87A4 80083A74 400060A2 */  sb         $zero, 0x40($s3)
/* 3AE87A8 80083A78 3E0060A2 */  sb         $zero, 0x3E($s3)
/* 3AE87AC 80083A7C 0400A012 */  beqz       $s5, .Llevel_10_80083A90
/* 3AE87B0 80083A80 3F0060A2 */   sb        $zero, 0x3F($s3)
/* 3AE87B4 80083A84 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE87B8 80083A88 5E3C010C */  jal        func_8004F178
/* 3AE87BC 80083A8C 0C00A526 */   addiu     $a1, $s5, 0xC
.Llevel_10_80083A90:
/* 3AE87C0 80083A90 21206002 */  addu       $a0, $s3, $zero
/* 3AE87C4 80083A94 18000224 */  addiu      $v0, $zero, 0x18
/* 3AE87C8 80083A98 4F0062A2 */  sb         $v0, 0x4F($s3)
/* 3AE87CC 80083A9C 28000224 */  addiu      $v0, $zero, 0x28
/* 3AE87D0 80083AA0 00100208 */  j          .Llevel_10_80084000
/* 3AE87D4 80083AA4 4C0062A2 */   sb        $v0, 0x4C($s3)
.Llevel_10_80083AA8:
/* 3AE87D8 80083AA8 0957010C */  jal        func_80055C24
/* 3AE87DC 80083AAC 21206002 */   addu      $a0, $s3, $zero
/* 3AE87E0 80083AB0 02000224 */  addiu      $v0, $zero, 0x2
/* 3AE87E4 80083AB4 0E00A012 */  beqz       $s5, .Llevel_10_80083AF0
/* 3AE87E8 80083AB8 540062A2 */   sb        $v0, 0x54($s3)
/* 3AE87EC 80083ABC 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE87F0 80083AC0 0000628E */  lw         $v0, 0x0($s3)
/* 3AE87F4 80083AC4 0C00A526 */  addiu      $a1, $s5, 0xC
/* 3AE87F8 80083AC8 5E3C010C */  jal        func_8004F178
/* 3AE87FC 80083ACC 000055AC */   sw        $s5, 0x0($v0)
/* 3AE8800 80083AD0 0A000224 */  addiu      $v0, $zero, 0xA
/* 3AE8804 80083AD4 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 3AE8808 80083AD8 1400628E */  lw         $v0, 0x14($s3)
/* 3AE880C 80083ADC 08000324 */  addiu      $v1, $zero, 0x8
/* 3AE8810 80083AE0 4C0063A2 */  sb         $v1, 0x4C($s3)
/* 3AE8814 80083AE4 00044224 */  addiu      $v0, $v0, 0x400
/* 3AE8818 80083AE8 02100208 */  j          .Llevel_10_80084008
/* 3AE881C 80083AEC 140062AE */   sw        $v0, 0x14($s3)
.Llevel_10_80083AF0:
/* 3AE8820 80083AF0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3AE8824 80083AF4 02100208 */  j          .Llevel_10_80084008
/* 3AE8828 80083AF8 1C0062AE */   sw        $v0, 0x1C($s3)
.Llevel_10_80083AFC:
/* 3AE882C 80083AFC 0780053C */  lui        $a1, %hi(D_80070328)
/* 3AE8830 80083B00 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 3AE8834 80083B04 0000708E */  lw         $s0, 0x0($s3)
/* 3AE8838 80083B08 5E3C010C */  jal        func_8004F178
/* 3AE883C 80083B0C 0C006426 */   addiu     $a0, $s3, 0xC
/* 3AE8840 80083B10 1400628E */  lw         $v0, 0x14($s3)
/* 3AE8844 80083B14 00000000 */  nop
/* 3AE8848 80083B18 00044224 */  addiu      $v0, $v0, 0x400
/* 3AE884C 80083B1C 140062AE */  sw         $v0, 0x14($s3)
/* 3AE8850 80083B20 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 3AE8854 80083B24 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 3AE8858 80083B28 21206002 */  addu       $a0, $s3, $zero
/* 3AE885C 80083B2C 0957010C */  jal        func_80055C24
/* 3AE8860 80083B30 460062A2 */   sb        $v0, 0x46($s3)
/* 3AE8864 80083B34 02000224 */  addiu      $v0, $zero, 0x2
/* 3AE8868 80083B38 020002A2 */  sb         $v0, 0x2($s0)
/* 3AE886C 80083B3C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 3AE8870 80083B40 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 3AE8874 80083B44 00000000 */  nop
/* 3AE8878 80083B48 030002A2 */  sb         $v0, 0x3($s0)
/* 3AE887C 80083B4C 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 3AE8880 80083B50 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 3AE8884 80083B54 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3AE8888 80083B58 100002AE */  sw         $v0, 0x10($s0)
/* 3AE888C 80083B5C 040003A2 */  sb         $v1, 0x4($s0)
/* 3AE8890 80083B60 AC0F0208 */  j          .Llevel_10_80083EB0
/* 3AE8894 80083B64 410060A2 */   sb        $zero, 0x41($s3)
.Llevel_10_80083B68:
/* 3AE8898 80083B68 0C00A526 */  addiu      $a1, $s5, 0xC
.Llevel_10_80083B6C:
/* 3AE889C 80083B6C 0000748E */  lw         $s4, 0x0($s3)
/* 3AE88A0 80083B70 20000224 */  addiu      $v0, $zero, 0x20
/* 3AE88A4 80083B74 5E3C010C */  jal        func_8004F178
/* 3AE88A8 80083B78 4C0062A2 */   sb        $v0, 0x4C($s3)
/* 3AE88AC 80083B7C 0957010C */  jal        func_80055C24
/* 3AE88B0 80083B80 21206002 */   addu      $a0, $s3, $zero
/* 3AE88B4 80083B84 9171010C */  jal        rand
/* 3AE88B8 80083B88 00000000 */   nop
/* 3AE88BC 80083B8C 9171010C */  jal        rand
/* 3AE88C0 80083B90 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 3AE88C4 80083B94 FF075130 */  andi       $s1, $v0, 0x7FF
/* 3AE88C8 80083B98 8B3A010C */  jal        func_8004EA2C
/* 3AE88CC 80083B9C 21202002 */   addu      $a0, $s1, $zero
/* 3AE88D0 80083BA0 21204002 */  addu       $a0, $s2, $zero
/* 3AE88D4 80083BA4 8B3A010C */  jal        func_8004EA2C
/* 3AE88D8 80083BA8 21804000 */   addu      $s0, $v0, $zero
/* 3AE88DC 80083BAC 18000202 */  mult       $s0, $v0
/* 3AE88E0 80083BB0 12400000 */  mflo       $t0
/* 3AE88E4 80083BB4 4900A292 */  lbu        $v0, 0x49($s5)
/* 3AE88E8 80083BB8 00000000 */  nop
/* 3AE88EC 80083BBC 18000201 */  mult       $t0, $v0
/* 3AE88F0 80083BC0 21202002 */  addu       $a0, $s1, $zero
/* 3AE88F4 80083BC4 12400000 */  mflo       $t0
/* 3AE88F8 80083BC8 03160800 */  sra        $v0, $t0, 24
/* 3AE88FC 80083BCC 8B3A010C */  jal        func_8004EA2C
/* 3AE8900 80083BD0 000082A6 */   sh        $v0, 0x0($s4)
/* 3AE8904 80083BD4 21204002 */  addu       $a0, $s2, $zero
/* 3AE8908 80083BD8 793A010C */  jal        func_8004E9E4
/* 3AE890C 80083BDC 21804000 */   addu      $s0, $v0, $zero
/* 3AE8910 80083BE0 18000202 */  mult       $s0, $v0
/* 3AE8914 80083BE4 12400000 */  mflo       $t0
/* 3AE8918 80083BE8 4900A292 */  lbu        $v0, 0x49($s5)
/* 3AE891C 80083BEC 00000000 */  nop
/* 3AE8920 80083BF0 18000201 */  mult       $t0, $v0
/* 3AE8924 80083BF4 21202002 */  addu       $a0, $s1, $zero
/* 3AE8928 80083BF8 12400000 */  mflo       $t0
/* 3AE892C 80083BFC 03160800 */  sra        $v0, $t0, 24
/* 3AE8930 80083C00 793A010C */  jal        func_8004E9E4
/* 3AE8934 80083C04 020082A6 */   sh        $v0, 0x2($s4)
/* 3AE8938 80083C08 4900A392 */  lbu        $v1, 0x49($s5)
/* 3AE893C 80083C0C 00000000 */  nop
/* 3AE8940 80083C10 18004300 */  mult       $v0, $v1
/* 3AE8944 80083C14 12400000 */  mflo       $t0
/* 3AE8948 80083C18 03130800 */  sra        $v0, $t0, 12
/* 3AE894C 80083C1C 040082A6 */  sh         $v0, 0x4($s4)
/* 3AE8950 80083C20 1800A38E */  lw         $v1, 0x18($s5)
/* 3AE8954 80083C24 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 3AE8958 80083C28 24106200 */  and        $v0, $v1, $v0
/* 3AE895C 80083C2C 2C004010 */  beqz       $v0, .Llevel_10_80083CE0
/* 3AE8960 80083C30 21300000 */   addu      $a2, $zero, $zero
/* 3AE8964 80083C34 0780103C */  lui        $s0, %hi(D_80070328)
/* 3AE8968 80083C38 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 3AE896C 80083C3C 0C00638E */  lw         $v1, 0xC($s3)
/* 3AE8970 80083C40 0000048E */  lw         $a0, 0x0($s0)
/* 3AE8974 80083C44 1000628E */  lw         $v0, 0x10($s3)
/* 3AE8978 80083C48 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3AE897C 80083C4C 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3AE8980 80083C50 23206400 */  subu       $a0, $v1, $a0
/* 3AE8984 80083C54 203A010C */  jal        func_8004E880
/* 3AE8988 80083C58 23284500 */   subu      $a1, $v0, $a1
/* 3AE898C 80083C5C 40100200 */  sll        $v0, $v0, 1
/* 3AE8990 80083C60 21300000 */  addu       $a2, $zero, $zero
/* 3AE8994 80083C64 0680013C */  lui        $at, %hi(D_80065920)
/* 3AE8998 80083C68 21082200 */  addu       $at, $at, $v0
/* 3AE899C 80083C6C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 3AE89A0 80083C70 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 3AE89A4 80083C74 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 3AE89A8 80083C78 03110200 */  sra        $v0, $v0, 4
/* 3AE89AC 80083C7C 1000A2AF */  sw         $v0, 0x10($sp)
/* 3AE89B0 80083C80 0C00638E */  lw         $v1, 0xC($s3)
/* 3AE89B4 80083C84 0000048E */  lw         $a0, 0x0($s0)
/* 3AE89B8 80083C88 1000628E */  lw         $v0, 0x10($s3)
/* 3AE89BC 80083C8C 23206400 */  subu       $a0, $v1, $a0
/* 3AE89C0 80083C90 203A010C */  jal        func_8004E880
/* 3AE89C4 80083C94 23284500 */   subu      $a1, $v0, $a1
/* 3AE89C8 80083C98 40100200 */  sll        $v0, $v0, 1
/* 3AE89CC 80083C9C 0680013C */  lui        $at, %hi(D_800658A0)
/* 3AE89D0 80083CA0 21082200 */  addu       $at, $at, $v0
/* 3AE89D4 80083CA4 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 3AE89D8 80083CA8 1000A38F */  lw         $v1, 0x10($sp)
/* 3AE89DC 80083CAC 1800A0AF */  sw         $zero, 0x18($sp)
/* 3AE89E0 80083CB0 03110200 */  sra        $v0, $v0, 4
/* 3AE89E4 80083CB4 1400A2AF */  sw         $v0, 0x14($sp)
/* 3AE89E8 80083CB8 00008296 */  lhu        $v0, 0x0($s4)
/* 3AE89EC 80083CBC 00000000 */  nop
/* 3AE89F0 80083CC0 21104300 */  addu       $v0, $v0, $v1
/* 3AE89F4 80083CC4 000082A6 */  sh         $v0, 0x0($s4)
/* 3AE89F8 80083CC8 1400A38F */  lw         $v1, 0x14($sp)
/* 3AE89FC 80083CCC 02008296 */  lhu        $v0, 0x2($s4)
/* 3AE8A00 80083CD0 00000000 */  nop
/* 3AE8A04 80083CD4 21104300 */  addu       $v0, $v0, $v1
/* 3AE8A08 80083CD8 4F0F0208 */  j          .Llevel_10_80083D3C
/* 3AE8A0C 80083CDC 020082A6 */   sh        $v0, 0x2($s4)
.Llevel_10_80083CE0:
/* 3AE8A10 80083CE0 0200023C */  lui        $v0, (0x20000 >> 16)
/* 3AE8A14 80083CE4 24106200 */  and        $v0, $v1, $v0
/* 3AE8A18 80083CE8 14004010 */  beqz       $v0, .Llevel_10_80083D3C
/* 3AE8A1C 80083CEC 04000224 */   addiu     $v0, $zero, 0x4
/* 3AE8A20 80083CF0 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 3AE8A24 80083CF4 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 3AE8A28 80083CF8 00000000 */  nop
/* 3AE8A2C 80083CFC 03006210 */  beq        $v1, $v0, .Llevel_10_80083D0C
/* 3AE8A30 80083D00 0C000224 */   addiu     $v0, $zero, 0xC
/* 3AE8A34 80083D04 0D006214 */  bne        $v1, $v0, .Llevel_10_80083D3C
/* 3AE8A38 80083D08 00000000 */   nop
.Llevel_10_80083D0C:
/* 3AE8A3C 80083D0C 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 3AE8A40 80083D10 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 3AE8A44 80083D14 00008396 */  lhu        $v1, 0x0($s4)
/* 3AE8A48 80083D18 83110200 */  sra        $v0, $v0, 6
/* 3AE8A4C 80083D1C 21186200 */  addu       $v1, $v1, $v0
/* 3AE8A50 80083D20 000083A6 */  sh         $v1, 0x0($s4)
/* 3AE8A54 80083D24 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 3AE8A58 80083D28 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 3AE8A5C 80083D2C 02008396 */  lhu        $v1, 0x2($s4)
/* 3AE8A60 80083D30 83110200 */  sra        $v0, $v0, 6
/* 3AE8A64 80083D34 21186200 */  addu       $v1, $v1, $v0
/* 3AE8A68 80083D38 020083A6 */  sh         $v1, 0x2($s4)
.Llevel_10_80083D3C:
/* 3AE8A6C 80083D3C 5100A492 */  lbu        $a0, 0x51($s5)
/* 3AE8A70 80083D40 00000000 */  nop
/* 3AE8A74 80083D44 26008010 */  beqz       $a0, .Llevel_10_80083DE0
/* 3AE8A78 80083D48 1000033C */   lui       $v1, (0x100000 >> 16)
/* 3AE8A7C 80083D4C 1800A28E */  lw         $v0, 0x18($s5)
/* 3AE8A80 80083D50 00000000 */  nop
/* 3AE8A84 80083D54 24104300 */  and        $v0, $v0, $v1
/* 3AE8A88 80083D58 21004010 */  beqz       $v0, .Llevel_10_80083DE0
/* 3AE8A8C 80083D5C 40100400 */   sll       $v0, $a0, 1
/* 3AE8A90 80083D60 0680013C */  lui        $at, %hi(D_80065920)
/* 3AE8A94 80083D64 21082200 */  addu       $at, $at, $v0
/* 3AE8A98 80083D68 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 3AE8A9C 80083D6C 00000000 */  nop
/* 3AE8AA0 80083D70 80100300 */  sll        $v0, $v1, 2
/* 3AE8AA4 80083D74 21104300 */  addu       $v0, $v0, $v1
/* 3AE8AA8 80083D78 00190200 */  sll        $v1, $v0, 4
/* 3AE8AAC 80083D7C 23186200 */  subu       $v1, $v1, $v0
/* 3AE8AB0 80083D80 00008296 */  lhu        $v0, 0x0($s4)
/* 3AE8AB4 80083D84 C31A0300 */  sra        $v1, $v1, 11
/* 3AE8AB8 80083D88 21104300 */  addu       $v0, $v0, $v1
/* 3AE8ABC 80083D8C 000082A6 */  sh         $v0, 0x0($s4)
/* 3AE8AC0 80083D90 5100A292 */  lbu        $v0, 0x51($s5)
/* 3AE8AC4 80083D94 28000424 */  addiu      $a0, $zero, 0x28
/* 3AE8AC8 80083D98 40100200 */  sll        $v0, $v0, 1
/* 3AE8ACC 80083D9C 0680013C */  lui        $at, %hi(D_800658A0)
/* 3AE8AD0 80083DA0 21082200 */  addu       $at, $at, $v0
/* 3AE8AD4 80083DA4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 3AE8AD8 80083DA8 46000524 */  addiu      $a1, $zero, 0x46
/* 3AE8ADC 80083DAC 80100300 */  sll        $v0, $v1, 2
/* 3AE8AE0 80083DB0 21104300 */  addu       $v0, $v0, $v1
/* 3AE8AE4 80083DB4 00190200 */  sll        $v1, $v0, 4
/* 3AE8AE8 80083DB8 23186200 */  subu       $v1, $v1, $v0
/* 3AE8AEC 80083DBC 02008296 */  lhu        $v0, 0x2($s4)
/* 3AE8AF0 80083DC0 C31A0300 */  sra        $v1, $v1, 11
/* 3AE8AF4 80083DC4 21104300 */  addu       $v0, $v0, $v1
/* 3AE8AF8 80083DC8 DBD8000C */  jal        func_8003636C
/* 3AE8AFC 80083DCC 020082A6 */   sh        $v0, 0x2($s4)
/* 3AE8B00 80083DD0 04008396 */  lhu        $v1, 0x4($s4)
/* 3AE8B04 80083DD4 00000000 */  nop
/* 3AE8B08 80083DD8 21186200 */  addu       $v1, $v1, $v0
/* 3AE8B0C 80083DDC 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_10_80083DE0:
/* 3AE8B10 80083DE0 00008286 */  lh         $v0, 0x0($s4)
/* 3AE8B14 80083DE4 0C00638E */  lw         $v1, 0xC($s3)
/* 3AE8B18 80083DE8 80100200 */  sll        $v0, $v0, 2
/* 3AE8B1C 80083DEC 21186200 */  addu       $v1, $v1, $v0
/* 3AE8B20 80083DF0 0C0063AE */  sw         $v1, 0xC($s3)
/* 3AE8B24 80083DF4 02008286 */  lh         $v0, 0x2($s4)
/* 3AE8B28 80083DF8 1000638E */  lw         $v1, 0x10($s3)
/* 3AE8B2C 80083DFC 80100200 */  sll        $v0, $v0, 2
/* 3AE8B30 80083E00 21186200 */  addu       $v1, $v1, $v0
/* 3AE8B34 80083E04 100063AE */  sw         $v1, 0x10($s3)
/* 3AE8B38 80083E08 04008286 */  lh         $v0, 0x4($s4)
/* 3AE8B3C 80083E0C 1400638E */  lw         $v1, 0x14($s3)
/* 3AE8B40 80083E10 80100200 */  sll        $v0, $v0, 2
/* 3AE8B44 80083E14 21186200 */  addu       $v1, $v1, $v0
/* 3AE8B48 80083E18 9171010C */  jal        rand
/* 3AE8B4C 80083E1C 140063AE */   sw        $v1, 0x14($s3)
/* 3AE8B50 80083E20 9171010C */  jal        rand
/* 3AE8B54 80083E24 450062A2 */   sb        $v0, 0x45($s3)
/* 3AE8B58 80083E28 9171010C */  jal        rand
/* 3AE8B5C 80083E2C 460062A2 */   sb        $v0, 0x46($s3)
/* 3AE8B60 80083E30 1F004230 */  andi       $v0, $v0, 0x1F
/* 3AE8B64 80083E34 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 3AE8B68 80083E38 9171010C */  jal        rand
/* 3AE8B6C 80083E3C 060082A6 */   sh        $v0, 0x6($s4)
/* 3AE8B70 80083E40 1F004230 */  andi       $v0, $v0, 0x1F
/* 3AE8B74 80083E44 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 3AE8B78 80083E48 9171010C */  jal        rand
/* 3AE8B7C 80083E4C 080082A6 */   sh        $v0, 0x8($s4)
/* 3AE8B80 80083E50 32000424 */  addiu      $a0, $zero, 0x32
/* 3AE8B84 80083E54 1F004230 */  andi       $v0, $v0, 0x1F
/* 3AE8B88 80083E58 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 3AE8B8C 80083E5C 0A0082A6 */  sh         $v0, 0xA($s4)
/* 3AE8B90 80083E60 1400A28E */  lw         $v0, 0x14($s5)
/* 3AE8B94 80083E64 50000524 */  addiu      $a1, $zero, 0x50
/* 3AE8B98 80083E68 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 3AE8B9C 80083E6C DBD8000C */  jal        func_8003636C
/* 3AE8BA0 80083E70 100082AE */   sw        $v0, 0x10($s4)
/* 3AE8BA4 80083E74 02100208 */  j          .Llevel_10_80084008
/* 3AE8BA8 80083E78 0C0082AE */   sw        $v0, 0xC($s4)
.Llevel_10_80083E7C:
/* 3AE8BAC 80083E7C 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE8BB0 80083E80 0000708E */  lw         $s0, 0x0($s3)
/* 3AE8BB4 80083E84 0000B18E */  lw         $s1, 0x0($s5)
/* 3AE8BB8 80083E88 5E3C010C */  jal        func_8004F178
/* 3AE8BBC 80083E8C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 3AE8BC0 80083E90 21206002 */  addu       $a0, $s3, $zero
/* 3AE8BC4 80083E94 20000224 */  addiu      $v0, $zero, 0x20
/* 3AE8BC8 80083E98 0957010C */  jal        func_80055C24
/* 3AE8BCC 80083E9C 450062A2 */   sb        $v0, 0x45($s3)
/* 3AE8BD0 80083EA0 000000AE */  sw         $zero, 0x0($s0)
/* 3AE8BD4 80083EA4 5400228E */  lw         $v0, 0x54($s1)
/* 3AE8BD8 80083EA8 00000000 */  nop
/* 3AE8BDC 80083EAC 040002AE */  sw         $v0, 0x4($s0)
.Llevel_10_80083EB0:
/* 3AE8BE0 80083EB0 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 3AE8BE4 80083EB4 02100208 */  j          .Llevel_10_80084008
/* 3AE8BE8 80083EB8 4D0060A2 */   sb        $zero, 0x4D($s3)
.Llevel_10_80083EBC:
/* 3AE8BEC 80083EBC 21202002 */  addu       $a0, $s1, $zero
/* 3AE8BF0 80083EC0 0000708E */  lw         $s0, 0x0($s3)
/* 3AE8BF4 80083EC4 0000B28E */  lw         $s2, 0x0($s5)
/* 3AE8BF8 80083EC8 5E3C010C */  jal        func_8004F178
/* 3AE8BFC 80083ECC 0C00A526 */   addiu     $a1, $s5, 0xC
/* 3AE8C00 80083ED0 9171010C */  jal        rand
/* 3AE8C04 80083ED4 00000000 */   nop
/* 3AE8C08 80083ED8 9171010C */  jal        rand
/* 3AE8C0C 80083EDC 450062A2 */   sb        $v0, 0x45($s3)
/* 3AE8C10 80083EE0 21206002 */  addu       $a0, $s3, $zero
/* 3AE8C14 80083EE4 0957010C */  jal        func_80055C24
/* 3AE8C18 80083EE8 460062A2 */   sb        $v0, 0x46($s3)
/* 3AE8C1C 80083EEC 21202002 */  addu       $a0, $s1, $zero
/* 3AE8C20 80083EF0 06000524 */  addiu      $a1, $zero, 0x6
/* 3AE8C24 80083EF4 06000624 */  addiu      $a2, $zero, 0x6
/* 3AE8C28 80083EF8 FF00073C */  lui        $a3, (0xFFFFFF >> 16)
/* 3AE8C2C 80083EFC 000000AE */  sw         $zero, 0x0($s0)
/* 3AE8C30 80083F00 5400428E */  lw         $v0, 0x54($s2)
/* 3AE8C34 80083F04 FFFFE734 */  ori        $a3, $a3, (0xFFFFFF & 0xFFFF)
/* 3AE8C38 80083F08 1142010C */  jal        func_80050844
/* 3AE8C3C 80083F0C 040002AE */   sw        $v0, 0x4($s0)
/* 3AE8C40 80083F10 02100208 */  j          .Llevel_10_80084008
/* 3AE8C44 80083F14 080002AE */   sw        $v0, 0x8($s0)
.Llevel_10_80083F18:
/* 3AE8C48 80083F18 0000A28E */  lw         $v0, 0x0($s5)
/* 3AE8C4C 80083F1C 6666043C */  lui        $a0, (0x66666667 >> 16)
/* 3AE8C50 80083F20 0400438C */  lw         $v1, 0x4($v0)
/* 3AE8C54 80083F24 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
/* 3AE8C58 80083F28 001A0300 */  sll        $v1, $v1, 8
/* 3AE8C5C 80083F2C 18006400 */  mult       $v1, $a0
/* 3AE8C60 80083F30 0000658E */  lw         $a1, 0x0($s3)
/* 3AE8C64 80083F34 0C00A626 */  addiu      $a2, $s5, 0xC
/* 3AE8C68 80083F38 0000B5AC */  sw         $s5, 0x0($a1)
/* 3AE8C6C 80083F3C C31F0300 */  sra        $v1, $v1, 31
/* 3AE8C70 80083F40 10400000 */  mfhi       $t0
/* 3AE8C74 80083F44 43100800 */  sra        $v0, $t0, 1
/* 3AE8C78 80083F48 23104300 */  subu       $v0, $v0, $v1
/* 3AE8C7C 80083F4C 0400A2AC */  sw         $v0, 0x4($a1)
/* 3AE8C80 80083F50 4600A292 */  lbu        $v0, 0x46($s5)
/* 3AE8C84 80083F54 0400A38C */  lw         $v1, 0x4($a1)
/* 3AE8C88 80083F58 0C006426 */  addiu      $a0, $s3, 0xC
/* 3AE8C8C 80083F5C 21186200 */  addu       $v1, $v1, $v0
/* 3AE8C90 80083F60 FF006330 */  andi       $v1, $v1, 0xFF
/* 3AE8C94 80083F64 460063A2 */  sb         $v1, 0x46($s3)
/* 3AE8C98 80083F68 40180300 */  sll        $v1, $v1, 1
/* 3AE8C9C 80083F6C 0680013C */  lui        $at, %hi(D_80065920)
/* 3AE8CA0 80083F70 21082300 */  addu       $at, $at, $v1
/* 3AE8CA4 80083F74 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 3AE8CA8 80083F78 21288000 */  addu       $a1, $a0, $zero
/* 3AE8CAC 80083F7C 40100700 */  sll        $v0, $a3, 1
/* 3AE8CB0 80083F80 21104700 */  addu       $v0, $v0, $a3
/* 3AE8CB4 80083F84 00110200 */  sll        $v0, $v0, 4
/* 3AE8CB8 80083F88 23104700 */  subu       $v0, $v0, $a3
/* 3AE8CBC 80083F8C 80100200 */  sll        $v0, $v0, 2
/* 3AE8CC0 80083F90 23104700 */  subu       $v0, $v0, $a3
/* 3AE8CC4 80083F94 83120200 */  sra        $v0, $v0, 10
/* 3AE8CC8 80083F98 0C0062AE */  sw         $v0, 0xC($s3)
/* 3AE8CCC 80083F9C 0680013C */  lui        $at, %hi(D_800658A0)
/* 3AE8CD0 80083FA0 21082300 */  addu       $at, $at, $v1
/* 3AE8CD4 80083FA4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 3AE8CD8 80083FA8 9A020224 */  addiu      $v0, $zero, 0x29A
/* 3AE8CDC 80083FAC 140062AE */  sw         $v0, 0x14($s3)
/* 3AE8CE0 80083FB0 40100300 */  sll        $v0, $v1, 1
/* 3AE8CE4 80083FB4 21104300 */  addu       $v0, $v0, $v1
/* 3AE8CE8 80083FB8 00110200 */  sll        $v0, $v0, 4
/* 3AE8CEC 80083FBC 23104300 */  subu       $v0, $v0, $v1
/* 3AE8CF0 80083FC0 80100200 */  sll        $v0, $v0, 2
/* 3AE8CF4 80083FC4 23104300 */  subu       $v0, $v0, $v1
/* 3AE8CF8 80083FC8 83120200 */  sra        $v0, $v0, 10
/* 3AE8CFC 80083FCC 653C010C */  jal        func_8004F194
/* 3AE8D00 80083FD0 100062AE */   sw        $v0, 0x10($s3)
/* 3AE8D04 80083FD4 00100208 */  j          .Llevel_10_80084000
/* 3AE8D08 80083FD8 21206002 */   addu      $a0, $s3, $zero
.Llevel_10_80083FDC:
/* 3AE8D0C 80083FDC 0300A012 */  beqz       $s5, .Llevel_10_80083FEC
/* 3AE8D10 80083FE0 0C006426 */   addiu     $a0, $s3, 0xC
/* 3AE8D14 80083FE4 FD0F0208 */  j          .Llevel_10_80083FF4
/* 3AE8D18 80083FE8 0C00A526 */   addiu     $a1, $s5, 0xC
.Llevel_10_80083FEC:
/* 3AE8D1C 80083FEC 0780053C */  lui        $a1, %hi(D_80070328)
/* 3AE8D20 80083FF0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_10_80083FF4:
/* 3AE8D24 80083FF4 5E3C010C */  jal        func_8004F178
/* 3AE8D28 80083FF8 00000000 */   nop
/* 3AE8D2C 80083FFC 21206002 */  addu       $a0, $s3, $zero
.Llevel_10_80084000:
/* 3AE8D30 80084000 0957010C */  jal        func_80055C24
/* 3AE8D34 80084004 00000000 */   nop
.Llevel_10_80084008:
/* 3AE8D38 80084008 21106002 */  addu       $v0, $s3, $zero
.Llevel_10_8008400C:
/* 3AE8D3C 8008400C 3800BF8F */  lw         $ra, 0x38($sp)
/* 3AE8D40 80084010 3400B58F */  lw         $s5, 0x34($sp)
/* 3AE8D44 80084014 3000B48F */  lw         $s4, 0x30($sp)
/* 3AE8D48 80084018 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3AE8D4C 8008401C 2800B28F */  lw         $s2, 0x28($sp)
/* 3AE8D50 80084020 2400B18F */  lw         $s1, 0x24($sp)
/* 3AE8D54 80084024 2000B08F */  lw         $s0, 0x20($sp)
/* 3AE8D58 80084028 4000BD27 */  addiu      $sp, $sp, 0x40
/* 3AE8D5C 8008402C 0800E003 */  jr         $ra
/* 3AE8D60 80084030 00000000 */   nop
.size func_level_10_8008368C, . - func_level_10_8008368C
