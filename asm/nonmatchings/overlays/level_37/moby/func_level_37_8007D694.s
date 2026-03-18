.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007D694
/* 7AA93C4 8007D694 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 7AA93C8 8007D698 2400B1AF */  sw         $s1, 0x24($sp)
/* 7AA93CC 8007D69C 21888000 */  addu       $s1, $a0, $zero
/* 7AA93D0 8007D6A0 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 7AA93D4 8007D6A4 2800B2AF */  sw         $s2, 0x28($sp)
/* 7AA93D8 8007D6A8 2000B0AF */  sw         $s0, 0x20($sp)
/* 7AA93DC 8007D6AC 48002292 */  lbu        $v0, 0x48($s1)
/* 7AA93E0 8007D6B0 0000328E */  lw         $s2, 0x0($s1)
/* 7AA93E4 8007D6B4 0200422C */  sltiu      $v0, $v0, 0x2
/* 7AA93E8 8007D6B8 3A004010 */  beqz       $v0, .Llevel_37_8007D7A4
/* 7AA93EC 8007D6BC 00000000 */   nop
/* 7AA93F0 8007D6C0 1800228E */  lw         $v0, 0x18($s1)
/* 7AA93F4 8007D6C4 00000000 */  nop
/* 7AA93F8 8007D6C8 36004010 */  beqz       $v0, .Llevel_37_8007D7A4
/* 7AA93FC 8007D6CC 00000000 */   nop
/* 7AA9400 8007D6D0 21800000 */  addu       $s0, $zero, $zero
.Llevel_37_8007D6D4:
/* 7AA9404 8007D6D4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 7AA9408 8007D6D8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 7AA940C 8007D6DC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 7AA9410 8007D6E0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 7AA9414 8007D6E4 00000000 */  nop
/* 7AA9418 8007D6E8 23104300 */  subu       $v0, $v0, $v1
/* 7AA941C 8007D6EC 15004228 */  slti       $v0, $v0, 0x15
/* 7AA9420 8007D6F0 0A004014 */  bnez       $v0, .Llevel_37_8007D71C
/* 7AA9424 8007D6F4 C0010424 */   addiu     $a0, $zero, 0x1C0
/* 7AA9428 8007D6F8 21282002 */  addu       $a1, $s1, $zero
/* 7AA942C 8007D6FC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA9430 8007D700 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA9434 8007D704 00000000 */  nop
/* 7AA9438 8007D708 09F84000 */  jalr       $v0
/* 7AA943C 8007D70C 01001026 */   addiu     $s0, $s0, 0x1
/* 7AA9440 8007D710 0A00022A */  slti       $v0, $s0, 0xA
/* 7AA9444 8007D714 EFFF4014 */  bnez       $v0, .Llevel_37_8007D6D4
/* 7AA9448 8007D718 00000000 */   nop
.Llevel_37_8007D71C:
/* 7AA944C 8007D71C 51002292 */  lbu        $v0, 0x51($s1)
/* 7AA9450 8007D720 00000000 */  nop
/* 7AA9454 8007D724 12004014 */  bnez       $v0, .Llevel_37_8007D770
/* 7AA9458 8007D728 10000424 */   addiu     $a0, $zero, 0x10
/* 7AA945C 8007D72C 21300000 */  addu       $a2, $zero, $zero
/* 7AA9460 8007D730 0C00238E */  lw         $v1, 0xC($s1)
/* 7AA9464 8007D734 0780043C */  lui        $a0, %hi(D_80070328)
/* 7AA9468 8007D738 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 7AA946C 8007D73C 1000228E */  lw         $v0, 0x10($s1)
/* 7AA9470 8007D740 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 7AA9474 8007D744 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 7AA9478 8007D748 23206400 */  subu       $a0, $v1, $a0
/* 7AA947C 8007D74C 203A010C */  jal        func_8004E880
/* 7AA9480 8007D750 23284500 */   subu      $a1, $v0, $a1
/* 7AA9484 8007D754 21204000 */  addu       $a0, $v0, $zero
/* 7AA9488 8007D758 20000624 */  addiu      $a2, $zero, 0x20
/* 7AA948C 8007D75C 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 7AA9490 8007D760 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 7AA9494 8007D764 3ED8000C */  jal        func_800360F8
/* 7AA9498 8007D768 40000724 */   addiu     $a3, $zero, 0x40
/* 7AA949C 8007D76C 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_37_8007D770:
/* 7AA94A0 8007D770 21282002 */  addu       $a1, $s1, $zero
/* 7AA94A4 8007D774 040042AE */  sw         $v0, 0x4($s2)
/* 7AA94A8 8007D778 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AA94AC 8007D77C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AA94B0 8007D780 FA000324 */  addiu      $v1, $zero, 0xFA
/* 7AA94B4 8007D784 000043AE */  sw         $v1, 0x0($s2)
/* 7AA94B8 8007D788 09F84000 */  jalr       $v0
/* 7AA94BC 8007D78C 080040AE */   sw        $zero, 0x8($s2)
/* 7AA94C0 8007D790 21202002 */  addu       $a0, $s1, $zero
/* 7AA94C4 8007D794 02000524 */  addiu      $a1, $zero, 0x2
/* 7AA94C8 8007D798 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA94CC 8007D79C D0D3000C */  jal        func_80034F40
/* 7AA94D0 8007D7A0 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_37_8007D7A4:
/* 7AA94D4 8007D7A4 0680043C */  lui        $a0, %hi(D_80066EEC + 4)
/* 7AA94D8 8007D7A8 F06E8424 */  addiu      $a0, $a0, %lo(D_80066EEC + 4)
/* 7AA94DC 8007D7AC 0000828C */  lw         $v0, 0x0($a0)
/* 7AA94E0 8007D7B0 0780033C */  lui        $v1, %hi(D_8006C648)
/* 7AA94E4 8007D7B4 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 7AA94E8 8007D7B8 00000000 */  nop
/* 7AA94EC 8007D7BC 21104300 */  addu       $v0, $v0, $v1
/* 7AA94F0 8007D7C0 000082AC */  sw         $v0, 0x0($a0)
/* 7AA94F4 8007D7C4 31754228 */  slti       $v0, $v0, 0x7531
/* 7AA94F8 8007D7C8 02004014 */  bnez       $v0, .Llevel_37_8007D7D4
/* 7AA94FC 8007D7CC 30750224 */   addiu     $v0, $zero, 0x7530
/* 7AA9500 8007D7D0 000082AC */  sw         $v0, 0x0($a0)
.Llevel_37_8007D7D4:
/* 7AA9504 8007D7D4 49002392 */  lbu        $v1, 0x49($s1)
/* 7AA9508 8007D7D8 00000000 */  nop
/* 7AA950C 8007D7DC FF00622C */  sltiu      $v0, $v1, 0xFF
/* 7AA9510 8007D7E0 03004010 */  beqz       $v0, .Llevel_37_8007D7F0
/* 7AA9514 8007D7E4 180020AE */   sw        $zero, 0x18($s1)
/* 7AA9518 8007D7E8 01006224 */  addiu      $v0, $v1, 0x1
/* 7AA951C 8007D7EC 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_37_8007D7F0:
/* 7AA9520 8007D7F0 48002392 */  lbu        $v1, 0x48($s1)
/* 7AA9524 8007D7F4 01000624 */  addiu      $a2, $zero, 0x1
/* 7AA9528 8007D7F8 2A006610 */  beq        $v1, $a2, .Llevel_37_8007D8A4
/* 7AA952C 8007D7FC 02006228 */   slti      $v0, $v1, 0x2
/* 7AA9530 8007D800 05004010 */  beqz       $v0, .Llevel_37_8007D818
/* 7AA9534 8007D804 00000000 */   nop
/* 7AA9538 8007D808 0A006010 */  beqz       $v1, .Llevel_37_8007D834
/* 7AA953C 8007D80C 16004426 */   addiu     $a0, $s2, 0x16
/* 7AA9540 8007D810 74F60108 */  j          .Llevel_37_8007D9D0
/* 7AA9544 8007D814 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_8007D818:
/* 7AA9548 8007D818 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA954C 8007D81C 45006210 */  beq        $v1, $v0, .Llevel_37_8007D934
/* 7AA9550 8007D820 0A000224 */   addiu     $v0, $zero, 0xA
/* 7AA9554 8007D824 5C006210 */  beq        $v1, $v0, .Llevel_37_8007D998
/* 7AA9558 8007D828 38FF0224 */   addiu     $v0, $zero, -0xC8
/* 7AA955C 8007D82C 74F60108 */  j          .Llevel_37_8007D9D0
/* 7AA9560 8007D830 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_8007D834:
/* 7AA9564 8007D834 69D6000C */  jal        func_800359A4
/* 7AA9568 8007D838 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA956C 8007D83C 05004010 */  beqz       $v0, .Llevel_37_8007D854
/* 7AA9570 8007D840 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA9574 8007D844 480022A2 */  sb         $v0, 0x48($s1)
/* 7AA9578 8007D848 21202002 */  addu       $a0, $s1, $zero
/* 7AA957C 8007D84C D0D3000C */  jal        func_80034F40
/* 7AA9580 8007D850 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_37_8007D854:
/* 7AA9584 8007D854 21202002 */  addu       $a0, $s1, $zero
/* 7AA9588 8007D858 21284002 */  addu       $a1, $s2, $zero
/* 7AA958C 8007D85C 5ADC000C */  jal        func_80037168
/* 7AA9590 8007D860 01000624 */   addiu     $a2, $zero, 0x1
/* 7AA9594 8007D864 17004426 */  addiu      $a0, $s2, 0x17
/* 7AA9598 8007D868 69D6000C */  jal        func_800359A4
/* 7AA959C 8007D86C 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA95A0 8007D870 57004010 */  beqz       $v0, .Llevel_37_8007D9D0
/* 7AA95A4 8007D874 21202002 */   addu      $a0, $s1, $zero
/* 7AA95A8 8007D878 9171010C */  jal        rand
/* 7AA95AC 8007D87C 00000000 */   nop
/* 7AA95B0 8007D880 3F004230 */  andi       $v0, $v0, 0x3F
/* 7AA95B4 8007D884 78004224 */  addiu      $v0, $v0, 0x78
/* 7AA95B8 8007D888 170042A2 */  sb         $v0, 0x17($s2)
/* 7AA95BC 8007D88C 21202002 */  addu       $a0, $s1, $zero
/* 7AA95C0 8007D890 03000524 */  addiu      $a1, $zero, 0x3
/* 7AA95C4 8007D894 AFEE000C */  jal        func_8003BABC
/* 7AA95C8 8007D898 21300000 */   addu      $a2, $zero, $zero
/* 7AA95CC 8007D89C 74F60108 */  j          .Llevel_37_8007D9D0
/* 7AA95D0 8007D8A0 21202002 */   addu      $a0, $s1, $zero
.Llevel_37_8007D8A4:
/* 7AA95D4 8007D8A4 17004426 */  addiu      $a0, $s2, 0x17
/* 7AA95D8 8007D8A8 69D6000C */  jal        func_800359A4
/* 7AA95DC 8007D8AC 01000524 */   addiu     $a1, $zero, 0x1
/* 7AA95E0 8007D8B0 13004010 */  beqz       $v0, .Llevel_37_8007D900
/* 7AA95E4 8007D8B4 00000000 */   nop
/* 7AA95E8 8007D8B8 9171010C */  jal        rand
/* 7AA95EC 8007D8BC 00000000 */   nop
/* 7AA95F0 8007D8C0 1F004230 */  andi       $v0, $v0, 0x1F
/* 7AA95F4 8007D8C4 50004224 */  addiu      $v0, $v0, 0x50
/* 7AA95F8 8007D8C8 9171010C */  jal        rand
/* 7AA95FC 8007D8CC 170042A2 */   sb        $v0, 0x17($s2)
/* 7AA9600 8007D8D0 5555033C */  lui        $v1, (0x55555556 >> 16)
/* 7AA9604 8007D8D4 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 7AA9608 8007D8D8 18004300 */  mult       $v0, $v1
/* 7AA960C 8007D8DC 21202002 */  addu       $a0, $s1, $zero
/* 7AA9610 8007D8E0 21300000 */  addu       $a2, $zero, $zero
/* 7AA9614 8007D8E4 C31F0200 */  sra        $v1, $v0, 31
/* 7AA9618 8007D8E8 10400000 */  mfhi       $t0
/* 7AA961C 8007D8EC 23180301 */  subu       $v1, $t0, $v1
/* 7AA9620 8007D8F0 40280300 */  sll        $a1, $v1, 1
/* 7AA9624 8007D8F4 2128A300 */  addu       $a1, $a1, $v1
/* 7AA9628 8007D8F8 AFEE000C */  jal        func_8003BABC
/* 7AA962C 8007D8FC 23284500 */   subu      $a1, $v0, $a1
.Llevel_37_8007D900:
/* 7AA9630 8007D900 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7AA9634 8007D904 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7AA9638 8007D908 00000000 */  nop
/* 7AA963C 8007D90C 2F004010 */  beqz       $v0, .Llevel_37_8007D9CC
/* 7AA9640 8007D910 B4000424 */   addiu     $a0, $zero, 0xB4
/* 7AA9644 8007D914 DBD8000C */  jal        func_8003636C
/* 7AA9648 8007D918 FF000524 */   addiu     $a1, $zero, 0xFF
/* 7AA964C 8007D91C 21202002 */  addu       $a0, $s1, $zero
/* 7AA9650 8007D920 21280000 */  addu       $a1, $zero, $zero
/* 7AA9654 8007D924 160042A2 */  sb         $v0, 0x16($s2)
/* 7AA9658 8007D928 170040A2 */  sb         $zero, 0x17($s2)
/* 7AA965C 8007D92C 71F60108 */  j          .Llevel_37_8007D9C4
/* 7AA9660 8007D930 480020A2 */   sb        $zero, 0x48($s1)
.Llevel_37_8007D934:
/* 7AA9664 8007D934 21202002 */  addu       $a0, $s1, $zero
/* 7AA9668 8007D938 21284002 */  addu       $a1, $s2, $zero
/* 7AA966C 8007D93C 0C000224 */  addiu      $v0, $zero, 0xC
/* 7AA9670 8007D940 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA9674 8007D944 2C010224 */  addiu      $v0, $zero, 0x12C
/* 7AA9678 8007D948 1400A0AF */  sw         $zero, 0x14($sp)
/* 7AA967C 8007D94C 1800A2AF */  sw         $v0, 0x18($sp)
/* 7AA9680 8007D950 1C00A6AF */  sw         $a2, 0x1C($sp)
/* 7AA9684 8007D954 0400A68C */  lw         $a2, 0x4($a1)
/* 7AA9688 8007D958 0CD4000C */  jal        func_80035030
/* 7AA968C 8007D95C 0800A724 */   addiu     $a3, $a1, 0x8
/* 7AA9690 8007D960 0780023C */  lui        $v0, %hi(D_8006C770)
/* 7AA9694 8007D964 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 7AA9698 8007D968 00000000 */  nop
/* 7AA969C 8007D96C 17004010 */  beqz       $v0, .Llevel_37_8007D9CC
/* 7AA96A0 8007D970 21202002 */   addu      $a0, $s1, $zero
/* 7AA96A4 8007D974 4957010C */  jal        func_80055D24
/* 7AA96A8 8007D978 04000524 */   addiu     $a1, $zero, 0x4
/* 7AA96AC 8007D97C 21202002 */  addu       $a0, $s1, $zero
/* 7AA96B0 8007D980 6EDA000C */  jal        func_800369B8
/* 7AA96B4 8007D984 28000524 */   addiu     $a1, $zero, 0x28
/* 7AA96B8 8007D988 C656010C */  jal        func_80055B18
/* 7AA96BC 8007D98C 21202002 */   addu      $a0, $s1, $zero
/* 7AA96C0 8007D990 76F60108 */  j          .Llevel_37_8007D9D8
/* 7AA96C4 8007D994 00000000 */   nop
.Llevel_37_8007D998:
/* 7AA96C8 8007D998 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA96CC 8007D99C 21202002 */  addu       $a0, $s1, $zero
/* 7AA96D0 8007D9A0 08004526 */  addiu      $a1, $s2, 0x8
/* 7AA96D4 8007D9A4 04000624 */  addiu      $a2, $zero, 0x4
/* 7AA96D8 8007D9A8 98DE000C */  jal        func_80037A60
/* 7AA96DC 8007D9AC 10000724 */   addiu     $a3, $zero, 0x10
/* 7AA96E0 8007D9B0 06004010 */  beqz       $v0, .Llevel_37_8007D9CC
/* 7AA96E4 8007D9B4 01000224 */   addiu     $v0, $zero, 0x1
/* 7AA96E8 8007D9B8 480022A2 */  sb         $v0, 0x48($s1)
/* 7AA96EC 8007D9BC 21202002 */  addu       $a0, $s1, $zero
/* 7AA96F0 8007D9C0 01000524 */  addiu      $a1, $zero, 0x1
.Llevel_37_8007D9C4:
/* 7AA96F4 8007D9C4 D0D3000C */  jal        func_80034F40
/* 7AA96F8 8007D9C8 00000000 */   nop
.Llevel_37_8007D9CC:
/* 7AA96FC 8007D9CC 21202002 */  addu       $a0, $s1, $zero
.Llevel_37_8007D9D0:
/* 7AA9700 8007D9D0 4957010C */  jal        func_80055D24
/* 7AA9704 8007D9D4 01000524 */   addiu     $a1, $zero, 0x1
.Llevel_37_8007D9D8:
/* 7AA9708 8007D9D8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 7AA970C 8007D9DC 2800B28F */  lw         $s2, 0x28($sp)
/* 7AA9710 8007D9E0 2400B18F */  lw         $s1, 0x24($sp)
/* 7AA9714 8007D9E4 2000B08F */  lw         $s0, 0x20($sp)
/* 7AA9718 8007D9E8 3000BD27 */  addiu      $sp, $sp, 0x30
/* 7AA971C 8007D9EC 0800E003 */  jr         $ra
/* 7AA9720 8007D9F0 00000000 */   nop
.size func_level_37_8007D694, . - func_level_37_8007D694
