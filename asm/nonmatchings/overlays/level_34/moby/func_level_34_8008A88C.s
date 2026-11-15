.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_497_level_34
/* 74E65BC 8008A88C 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 74E65C0 8008A890 8000B2AF */  sw         $s2, 0x80($sp)
/* 74E65C4 8008A894 21908000 */  addu       $s2, $a0, $zero
/* 74E65C8 8008A898 9400BFAF */  sw         $ra, 0x94($sp)
/* 74E65CC 8008A89C 9000B6AF */  sw         $s6, 0x90($sp)
/* 74E65D0 8008A8A0 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 74E65D4 8008A8A4 8800B4AF */  sw         $s4, 0x88($sp)
/* 74E65D8 8008A8A8 8400B3AF */  sw         $s3, 0x84($sp)
/* 74E65DC 8008A8AC 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 74E65E0 8008A8B0 7800B0AF */  sw         $s0, 0x78($sp)
/* 74E65E4 8008A8B4 0000518E */  lw         $s1, 0x0($s2)
/* 74E65E8 8008A8B8 00000000 */  nop
/* 74E65EC 8008A8BC 1400228E */  lw         $v0, 0x14($s1)
/* 74E65F0 8008A8C0 0780033C */  lui        $v1, %hi(func_level_34_80075618)
/* 74E65F4 8008A8C4 18566324 */  addiu      $v1, $v1, %lo(func_level_34_80075618)
/* 74E65F8 8008A8C8 2B104300 */  sltu       $v0, $v0, $v1
/* 74E65FC 8008A8CC 21004014 */  bnez       $v0, .Llevel_34_8008A954
/* 74E6600 8008A8D0 C8001424 */   addiu     $s4, $zero, 0xC8
/* 74E6604 8008A8D4 21280000 */  addu       $a1, $zero, $zero
/* 74E6608 8008A8D8 0A80063C */  lui        $a2, %hi(level_34_data_start)
/* 74E660C 8008A8DC 6C88C624 */  addiu      $a2, $a2, %lo(level_34_data_start)
.Llevel_34_8008A8E0:
/* 74E6610 8008A8E0 1400238E */  lw         $v1, 0x14($s1)
/* 74E6614 8008A8E4 00000000 */  nop
/* 74E6618 8008A8E8 2B106600 */  sltu       $v0, $v1, $a2
/* 74E661C 8008A8EC 19004010 */  beqz       $v0, .Llevel_34_8008A954
/* 74E6620 8008A8F0 00000000 */   nop
/* 74E6624 8008A8F4 21200000 */  addu       $a0, $zero, $zero
/* 74E6628 8008A8F8 00006290 */  lbu        $v0, 0x0($v1)
/* 74E662C 8008A8FC 0C00238E */  lw         $v1, 0xC($s1)
/* 74E6630 8008A900 00120200 */  sll        $v0, $v0, 8
/* 74E6634 8008A904 26186200 */  xor        $v1, $v1, $v0
/* 74E6638 8008A908 0C0023AE */  sw         $v1, 0xC($s1)
.Llevel_34_8008A90C:
/* 74E663C 8008A90C 0C00238E */  lw         $v1, 0xC($s1)
/* 74E6640 8008A910 00000000 */  nop
/* 74E6644 8008A914 00806230 */  andi       $v0, $v1, 0x8000
/* 74E6648 8008A918 02004010 */  beqz       $v0, .Llevel_34_8008A924
/* 74E664C 8008A91C 40100300 */   sll       $v0, $v1, 1
/* 74E6650 8008A920 05804238 */  xori       $v0, $v0, 0x8005
.Llevel_34_8008A924:
/* 74E6654 8008A924 0C0022AE */  sw         $v0, 0xC($s1)
/* 74E6658 8008A928 01008424 */  addiu      $a0, $a0, 0x1
/* 74E665C 8008A92C 08008228 */  slti       $v0, $a0, 0x8
/* 74E6660 8008A930 F6FF4014 */  bnez       $v0, .Llevel_34_8008A90C
/* 74E6664 8008A934 00000000 */   nop
/* 74E6668 8008A938 1400228E */  lw         $v0, 0x14($s1)
/* 74E666C 8008A93C 0100A524 */  addiu      $a1, $a1, 0x1
/* 74E6670 8008A940 01004224 */  addiu      $v0, $v0, 0x1
/* 74E6674 8008A944 140022AE */  sw         $v0, 0x14($s1)
/* 74E6678 8008A948 4000A228 */  slti       $v0, $a1, 0x40
/* 74E667C 8008A94C E4FF4014 */  bnez       $v0, .Llevel_34_8008A8E0
/* 74E6680 8008A950 00000000 */   nop
.Llevel_34_8008A954:
/* 74E6684 8008A954 1400228E */  lw         $v0, 0x14($s1)
/* 74E6688 8008A958 00000000 */  nop
/* 74E668C 8008A95C 08004014 */  bnez       $v0, .Llevel_34_8008A980
/* 74E6690 8008A960 00000000 */   nop
/* 74E6694 8008A964 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 74E6698 8008A968 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 74E669C 8008A96C 0180033C */  lui        $v1, %hi(main_TEXT_START + 0x2)
/* 74E66A0 8008A970 0E206324 */  addiu      $v1, $v1, %lo(main_TEXT_START + 0x2)
/* 74E66A4 8008A974 21104300 */  addu       $v0, $v0, $v1
/* 74E66A8 8008A978 140022AE */  sw         $v0, 0x14($s1)
/* 74E66AC 8008A97C 1400228E */  lw         $v0, 0x14($s1)
.Llevel_34_8008A980:
/* 74E66B0 8008A980 0680033C */  lui        $v1, %hi(main_TEXT_END)
/* 74E66B4 8008A984 9C4F6324 */  addiu      $v1, $v1, %lo(main_TEXT_END)
/* 74E66B8 8008A988 2B104300 */  sltu       $v0, $v0, $v1
/* 74E66BC 8008A98C 2A004010 */  beqz       $v0, .Llevel_34_8008AA38
/* 74E66C0 8008A990 00000000 */   nop
/* 74E66C4 8008A994 21280000 */  addu       $a1, $zero, $zero
/* 74E66C8 8008A998 21306000 */  addu       $a2, $v1, $zero
.Llevel_34_8008A99C:
/* 74E66CC 8008A99C 1400238E */  lw         $v1, 0x14($s1)
/* 74E66D0 8008A9A0 00000000 */  nop
/* 74E66D4 8008A9A4 2B106600 */  sltu       $v0, $v1, $a2
/* 74E66D8 8008A9A8 20004010 */  beqz       $v0, .Llevel_34_8008AA2C
/* 74E66DC 8008A9AC 00000000 */   nop
/* 74E66E0 8008A9B0 21200000 */  addu       $a0, $zero, $zero
/* 74E66E4 8008A9B4 00006290 */  lbu        $v0, 0x0($v1)
/* 74E66E8 8008A9B8 0C00238E */  lw         $v1, 0xC($s1)
/* 74E66EC 8008A9BC 00120200 */  sll        $v0, $v0, 8
/* 74E66F0 8008A9C0 26186200 */  xor        $v1, $v1, $v0
/* 74E66F4 8008A9C4 0C0023AE */  sw         $v1, 0xC($s1)
.Llevel_34_8008A9C8:
/* 74E66F8 8008A9C8 0C00238E */  lw         $v1, 0xC($s1)
/* 74E66FC 8008A9CC 00000000 */  nop
/* 74E6700 8008A9D0 00806230 */  andi       $v0, $v1, 0x8000
/* 74E6704 8008A9D4 02004010 */  beqz       $v0, .Llevel_34_8008A9E0
/* 74E6708 8008A9D8 40100300 */   sll       $v0, $v1, 1
/* 74E670C 8008A9DC 05804238 */  xori       $v0, $v0, 0x8005
.Llevel_34_8008A9E0:
/* 74E6710 8008A9E0 0C0022AE */  sw         $v0, 0xC($s1)
/* 74E6714 8008A9E4 01008424 */  addiu      $a0, $a0, 0x1
/* 74E6718 8008A9E8 08008228 */  slti       $v0, $a0, 0x8
/* 74E671C 8008A9EC F6FF4014 */  bnez       $v0, .Llevel_34_8008A9C8
/* 74E6720 8008A9F0 00000000 */   nop
/* 74E6724 8008A9F4 0100A524 */  addiu      $a1, $a1, 0x1
/* 74E6728 8008A9F8 0C00228E */  lw         $v0, 0xC($s1)
/* 74E672C 8008A9FC 1400238E */  lw         $v1, 0x14($s1)
/* 74E6730 8008AA00 03004230 */  andi       $v0, $v0, 0x3
/* 74E6734 8008AA04 01004224 */  addiu      $v0, $v0, 0x1
/* 74E6738 8008AA08 21186200 */  addu       $v1, $v1, $v0
/* 74E673C 8008AA0C 4000A228 */  slti       $v0, $a1, 0x40
/* 74E6740 8008AA10 E2FF4014 */  bnez       $v0, .Llevel_34_8008A99C
/* 74E6744 8008AA14 140023AE */   sw        $v1, 0x14($s1)
/* 74E6748 8008AA18 0680023C */  lui        $v0, %hi(main_TEXT_END)
/* 74E674C 8008AA1C 9C4F4224 */  addiu      $v0, $v0, %lo(main_TEXT_END)
/* 74E6750 8008AA20 2B106200 */  sltu       $v0, $v1, $v0
/* 74E6754 8008AA24 04004014 */  bnez       $v0, .Llevel_34_8008AA38
/* 74E6758 8008AA28 00000000 */   nop
.Llevel_34_8008AA2C:
/* 74E675C 8008AA2C 0780023C */  lui        $v0, %hi(func_level_34_80075618)
/* 74E6760 8008AA30 18564224 */  addiu      $v0, $v0, %lo(func_level_34_80075618)
/* 74E6764 8008AA34 140022AE */  sw         $v0, 0x14($s1)
.Llevel_34_8008AA38:
/* 74E6768 8008AA38 1400238E */  lw         $v1, 0x14($s1)
/* 74E676C 8008AA3C 0A80023C */  lui        $v0, %hi(level_34_data_start)
/* 74E6770 8008AA40 6C884224 */  addiu      $v0, $v0, %lo(level_34_data_start)
/* 74E6774 8008AA44 1B006214 */  bne        $v1, $v0, .Llevel_34_8008AAB4
/* 74E6778 8008AA48 00000000 */   nop
/* 74E677C 8008AA4C 0C00228E */  lw         $v0, 0xC($s1)
/* 74E6780 8008AA50 00000000 */  nop
/* 74E6784 8008AA54 17004010 */  beqz       $v0, .Llevel_34_8008AAB4
/* 74E6788 8008AA58 00000000 */   nop
/* 74E678C 8008AA5C 01000324 */  addiu      $v1, $zero, 0x1
.Llevel_34_8008AA60:
/* 74E6790 8008AA60 0680013C */  lui        $at, %hi(D_80067014)
/* 74E6794 8008AA64 21082300 */  addu       $at, $at, $v1
/* 74E6798 8008AA68 14702290 */  lbu        $v0, %lo(D_80067014)($at)
/* 74E679C 8008AA6C 0680013C */  lui        $at, %hi(D_80067014 + 0x1B)
/* 74E67A0 8008AA70 21082300 */  addu       $at, $at, $v1
/* 74E67A4 8008AA74 2F7022A0 */  sb         $v0, %lo(D_80067014 + 0x1B)($at)
/* 74E67A8 8008AA78 01006324 */  addiu      $v1, $v1, 0x1
/* 74E67AC 8008AA7C 08006228 */  slti       $v0, $v1, 0x8
/* 74E67B0 8008AA80 F7FF4014 */  bnez       $v0, .Llevel_34_8008AA60
/* 74E67B4 8008AA84 00000000 */   nop
/* 74E67B8 8008AA88 29000324 */  addiu      $v1, $zero, 0x29
.Llevel_34_8008AA8C:
/* 74E67BC 8008AA8C 0680013C */  lui        $at, %hi(D_80066FA4 + 0xA)
/* 74E67C0 8008AA90 21082300 */  addu       $at, $at, $v1
/* 74E67C4 8008AA94 AE6F2290 */  lbu        $v0, %lo(D_80066FA4 + 0xA)($at)
/* 74E67C8 8008AA98 0680013C */  lui        $at, %hi(D_80066FCC)
/* 74E67CC 8008AA9C 21082300 */  addu       $at, $at, $v1
/* 74E67D0 8008AAA0 CC6F22A0 */  sb         $v0, %lo(D_80066FCC)($at)
/* 74E67D4 8008AAA4 01006324 */  addiu      $v1, $v1, 0x1
/* 74E67D8 8008AAA8 30006228 */  slti       $v0, $v1, 0x30
/* 74E67DC 8008AAAC F7FF4014 */  bnez       $v0, .Llevel_34_8008AA8C
/* 74E67E0 8008AAB0 00000000 */   nop
.Llevel_34_8008AAB4:
/* 74E67E4 8008AAB4 10002286 */  lh         $v0, 0x10($s1)
/* 74E67E8 8008AAB8 00000000 */  nop
/* 74E67EC 8008AABC 46004014 */  bnez       $v0, .Llevel_34_8008ABD8
/* 74E67F0 8008AAC0 00000000 */   nop
/* 74E67F4 8008AAC4 0800358E */  lw         $s5, 0x8($s1)
/* 74E67F8 8008AAC8 1400438E */  lw         $v1, 0x14($s2)
/* 74E67FC 8008AACC 00000000 */  nop
/* 74E6800 8008AAD0 2A10A302 */  slt        $v0, $s5, $v1
/* 74E6804 8008AAD4 F6014010 */  beqz       $v0, .Llevel_34_8008B2B0
/* 74E6808 8008AAD8 CEFF6224 */   addiu     $v0, $v1, -0x32
/* 74E680C 8008AADC 140042AE */  sw         $v0, 0x14($s2)
/* 74E6810 8008AAE0 2A10A202 */  slt        $v0, $s5, $v0
/* 74E6814 8008AAE4 F2014014 */  bnez       $v0, .Llevel_34_8008B2B0
/* 74E6818 8008AAE8 21204002 */   addu      $a0, $s2, $zero
/* 74E681C 8008AAEC 4957010C */  jal        func_80055D24
/* 74E6820 8008AAF0 04000524 */   addiu     $a1, $zero, 0x4
/* 74E6824 8008AAF4 21800000 */  addu       $s0, $zero, $zero
/* 74E6828 8008AAF8 4800B327 */  addiu      $s3, $sp, 0x48
/* 74E682C 8008AAFC 3800B427 */  addiu      $s4, $sp, 0x38
/* 74E6830 8008AB00 0680113C */  lui        $s1, %hi(D_80065920)
/* 74E6834 8008AB04 20593126 */  addiu      $s1, $s1, %lo(D_80065920)
/* 74E6838 8008AB08 21206002 */  addu       $a0, $s3, $zero
.Llevel_34_8008AB0C:
/* 74E683C 8008AB0C 00002286 */  lh         $v0, 0x0($s1)
/* 74E6840 8008AB10 0C004526 */  addiu      $a1, $s2, 0xC
/* 74E6844 8008AB14 80180200 */  sll        $v1, $v0, 2
/* 74E6848 8008AB18 21186200 */  addu       $v1, $v1, $v0
/* 74E684C 8008AB1C 00110300 */  sll        $v0, $v1, 4
/* 74E6850 8008AB20 23104300 */  subu       $v0, $v0, $v1
/* 74E6854 8008AB24 03120200 */  sra        $v0, $v0, 8
/* 74E6858 8008AB28 3800A2AF */  sw         $v0, 0x38($sp)
/* 74E685C 8008AB2C 80111000 */  sll        $v0, $s0, 6
/* 74E6860 8008AB30 0680013C */  lui        $at, %hi(D_800658A0)
/* 74E6864 8008AB34 21082200 */  addu       $at, $at, $v0
/* 74E6868 8008AB38 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 74E686C 8008AB3C 21308002 */  addu       $a2, $s4, $zero
/* 74E6870 8008AB40 4000A0AF */  sw         $zero, 0x40($sp)
/* 74E6874 8008AB44 80180200 */  sll        $v1, $v0, 2
/* 74E6878 8008AB48 21186200 */  addu       $v1, $v1, $v0
/* 74E687C 8008AB4C 00110300 */  sll        $v0, $v1, 4
/* 74E6880 8008AB50 23104300 */  subu       $v0, $v0, $v1
/* 74E6884 8008AB54 03120200 */  sra        $v0, $v0, 8
/* 74E6888 8008AB58 653C010C */  jal        func_8004F194
/* 74E688C 8008AB5C 3C00A2AF */   sw        $v0, 0x3C($sp)
/* 74E6890 8008AB60 01000424 */  addiu      $a0, $zero, 0x1
/* 74E6894 8008AB64 21280000 */  addu       $a1, $zero, $zero
/* 74E6898 8008AB68 21306002 */  addu       $a2, $s3, $zero
/* 74E689C 8008AB6C 21388002 */  addu       $a3, $s4, $zero
/* 74E68A0 8008AB70 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 74E68A4 8008AB74 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 74E68A8 8008AB78 32000224 */  addiu      $v0, $zero, 0x32
/* 74E68AC 8008AB7C 3800A0AF */  sw         $zero, 0x38($sp)
/* 74E68B0 8008AB80 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 74E68B4 8008AB84 09F86000 */  jalr       $v1
/* 74E68B8 8008AB88 4000A2AF */   sw        $v0, 0x40($sp)
/* 74E68BC 8008AB8C 21184000 */  addu       $v1, $v0, $zero
/* 74E68C0 8008AB90 02006010 */  beqz       $v1, .Llevel_34_8008AB9C
/* 74E68C4 8008AB94 64000224 */   addiu     $v0, $zero, 0x64
/* 74E68C8 8008AB98 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_34_8008AB9C:
/* 74E68CC 8008AB9C 01000424 */  addiu      $a0, $zero, 0x1
/* 74E68D0 8008ABA0 46000524 */  addiu      $a1, $zero, 0x46
/* 74E68D4 8008ABA4 21306002 */  addu       $a2, $s3, $zero
/* 74E68D8 8008ABA8 18000724 */  addiu      $a3, $zero, 0x18
/* 74E68DC 8008ABAC 40003126 */  addiu      $s1, $s1, 0x40
/* 74E68E0 8008ABB0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74E68E4 8008ABB4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74E68E8 8008ABB8 00000000 */  nop
/* 74E68EC 8008ABBC 09F84000 */  jalr       $v0
/* 74E68F0 8008ABC0 01001026 */   addiu     $s0, $s0, 0x1
/* 74E68F4 8008ABC4 0800022A */  slti       $v0, $s0, 0x8
/* 74E68F8 8008ABC8 D0FF4014 */  bnez       $v0, .Llevel_34_8008AB0C
/* 74E68FC 8008ABCC 21206002 */   addu      $a0, $s3, $zero
/* 74E6900 8008ABD0 AC2C0208 */  j          .Llevel_34_8008B2B0
/* 74E6904 8008ABD4 140055AE */   sw        $s5, 0x14($s2)
.Llevel_34_8008ABD8:
/* 74E6908 8008ABD8 10002426 */  addiu      $a0, $s1, 0x10
/* 74E690C 8008ABDC 69D6000C */  jal        func_800359A4
/* 74E6910 8008ABE0 02000524 */   addiu     $a1, $zero, 0x2
/* 74E6914 8008ABE4 0780133C */  lui        $s3, %hi(D_80070328 + 0x50)
/* 74E6918 8008ABE8 78037326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x50)
/* 74E691C 8008ABEC 0000638E */  lw         $v1, 0x0($s3)
/* 74E6920 8008ABF0 04000224 */  addiu      $v0, $zero, 0x4
/* 74E6924 8008ABF4 02006214 */  bne        $v1, $v0, .Llevel_34_8008AC00
/* 74E6928 8008ABF8 01001024 */   addiu     $s0, $zero, 0x1
/* 74E692C 8008ABFC 1E001024 */  addiu      $s0, $zero, 0x1E
.Llevel_34_8008AC00:
/* 74E6930 8008AC00 1800A427 */  addiu      $a0, $sp, 0x18
/* 74E6934 8008AC04 5E3C010C */  jal        func_8004F178
/* 74E6938 8008AC08 48006526 */   addiu     $a1, $s3, 0x48
/* 74E693C 8008AC0C 1800A28F */  lw         $v0, 0x18($sp)
/* 74E6940 8008AC10 00000000 */  nop
/* 74E6944 8008AC14 18005000 */  mult       $v0, $s0
/* 74E6948 8008AC18 12300000 */  mflo       $a2
/* 74E694C 8008AC1C 1C00A28F */  lw         $v0, 0x1C($sp)
/* 74E6950 8008AC20 00000000 */  nop
/* 74E6954 8008AC24 18005000 */  mult       $v0, $s0
/* 74E6958 8008AC28 12180000 */  mflo       $v1
/* 74E695C 8008AC2C 2000A28F */  lw         $v0, 0x20($sp)
/* 74E6960 8008AC30 00000000 */  nop
/* 74E6964 8008AC34 18005000 */  mult       $v0, $s0
/* 74E6968 8008AC38 1800A427 */  addiu      $a0, $sp, 0x18
/* 74E696C 8008AC3C 06000524 */  addiu      $a1, $zero, 0x6
/* 74E6970 8008AC40 1800A6AF */  sw         $a2, 0x18($sp)
/* 74E6974 8008AC44 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 74E6978 8008AC48 12480000 */  mflo       $t1
/* 74E697C 8008AC4C 443C010C */  jal        func_8004F110
/* 74E6980 8008AC50 2000A9AF */   sw        $t1, 0x20($sp)
/* 74E6984 8008AC54 1800A427 */  addiu      $a0, $sp, 0x18
/* 74E6988 8008AC58 21288000 */  addu       $a1, $a0, $zero
/* 74E698C 8008AC5C B0FF7026 */  addiu      $s0, $s3, -0x50
/* 74E6990 8008AC60 653C010C */  jal        func_8004F194
/* 74E6994 8008AC64 21300002 */   addu      $a2, $s0, $zero
/* 74E6998 8008AC68 48004392 */  lbu        $v1, 0x48($s2)
/* 74E699C 8008AC6C 02000224 */  addiu      $v0, $zero, 0x2
/* 74E69A0 8008AC70 17006210 */  beq        $v1, $v0, .Llevel_34_8008ACD0
/* 74E69A4 8008AC74 03000224 */   addiu     $v0, $zero, 0x3
/* 74E69A8 8008AC78 1C006214 */  bne        $v1, $v0, .Llevel_34_8008ACEC
/* 74E69AC 8008AC7C 01000224 */   addiu     $v0, $zero, 0x1
/* 74E69B0 8008AC80 0800238E */  lw         $v1, 0x8($s1)
/* 74E69B4 8008AC84 1400428E */  lw         $v0, 0x14($s2)
/* 74E69B8 8008AC88 E8036324 */  addiu      $v1, $v1, 0x3E8
/* 74E69BC 8008AC8C 2A104300 */  slt        $v0, $v0, $v1
/* 74E69C0 8008AC90 10004010 */  beqz       $v0, .Llevel_34_8008ACD4
/* 74E69C4 8008AC94 12002426 */   addiu     $a0, $s1, 0x12
/* 74E69C8 8008AC98 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 74E69CC 8008AC9C 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 74E69D0 8008ACA0 00000000 */  nop
/* 74E69D4 8008ACA4 16004234 */  ori        $v0, $v0, 0x16
/* 74E69D8 8008ACA8 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 74E69DC 8008ACAC 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 74E69E0 8008ACB0 1400428E */  lw         $v0, 0x14($s2)
/* 74E69E4 8008ACB4 00000000 */  nop
/* 74E69E8 8008ACB8 32004224 */  addiu      $v0, $v0, 0x32
/* 74E69EC 8008ACBC 140042AE */  sw         $v0, 0x14($s2)
/* 74E69F0 8008ACC0 2A106200 */  slt        $v0, $v1, $v0
/* 74E69F4 8008ACC4 03004010 */  beqz       $v0, .Llevel_34_8008ACD4
/* 74E69F8 8008ACC8 00000000 */   nop
/* 74E69FC 8008ACCC 140043AE */  sw         $v1, 0x14($s2)
.Llevel_34_8008ACD0:
/* 74E6A00 8008ACD0 12002426 */  addiu      $a0, $s1, 0x12
.Llevel_34_8008ACD4:
/* 74E6A04 8008ACD4 69D6000C */  jal        func_800359A4
/* 74E6A08 8008ACD8 02000524 */   addiu     $a1, $zero, 0x2
/* 74E6A0C 8008ACDC 74014010 */  beqz       $v0, .Llevel_34_8008B2B0
/* 74E6A10 8008ACE0 00000000 */   nop
/* 74E6A14 8008ACE4 1F2C0208 */  j          .Llevel_34_8008B07C
/* 74E6A18 8008ACE8 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_34_8008ACEC:
/* 74E6A1C 8008ACEC 90006214 */  bne        $v1, $v0, .Llevel_34_8008AF30
/* 74E6A20 8008ACF0 0C004426 */   addiu     $a0, $s2, 0xC
/* 74E6A24 8008ACF4 21280002 */  addu       $a1, $s0, $zero
/* 74E6A28 8008ACF8 1400428E */  lw         $v0, 0x14($s2)
/* 74E6A2C 8008ACFC 0800368E */  lw         $s6, 0x8($s1)
/* 74E6A30 8008AD00 6AFF4224 */  addiu      $v0, $v0, -0x96
/* 74E6A34 8008AD04 CD3C010C */  jal        func_8004F334
/* 74E6A38 8008AD08 140042AE */   sw        $v0, 0x14($s2)
/* 74E6A3C 8008AD0C E2044228 */  slti       $v0, $v0, 0x4E2
/* 74E6A40 8008AD10 35004010 */  beqz       $v0, .Llevel_34_8008ADE8
/* 74E6A44 8008AD14 00000000 */   nop
/* 74E6A48 8008AD18 18002292 */  lbu        $v0, 0x18($s1)
/* 74E6A4C 8008AD1C 00000000 */  nop
/* 74E6A50 8008AD20 0200422C */  sltiu      $v0, $v0, 0x2
/* 74E6A54 8008AD24 28004010 */  beqz       $v0, .Llevel_34_8008ADC8
/* 74E6A58 8008AD28 00000000 */   nop
/* 74E6A5C 8008AD2C 49004292 */  lbu        $v0, 0x49($s2)
/* 74E6A60 8008AD30 00000000 */  nop
/* 74E6A64 8008AD34 2C004014 */  bnez       $v0, .Llevel_34_8008ADE8
/* 74E6A68 8008AD38 0010033C */   lui       $v1, (0x10000400 >> 16)
/* 74E6A6C 8008AD3C 00046334 */  ori        $v1, $v1, (0x10000400 & 0xFFFF)
/* 74E6A70 8008AD40 01000224 */  addiu      $v0, $zero, 0x1
/* 74E6A74 8008AD44 490042A2 */  sb         $v0, 0x49($s2)
/* 74E6A78 8008AD48 18002292 */  lbu        $v0, 0x18($s1)
/* 74E6A7C 8008AD4C 21204002 */  addu       $a0, $s2, $zero
/* 74E6A80 8008AD50 01004224 */  addiu      $v0, $v0, 0x1
/* 74E6A84 8008AD54 180022A2 */  sb         $v0, 0x18($s1)
/* 74E6A88 8008AD58 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 74E6A8C 8008AD5C 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 74E6A90 8008AD60 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 74E6A94 8008AD64 340523AC */  sw         $v1, %lo(D_80070328 + 0x20C)($at)
/* 74E6A98 8008AD68 86004234 */  ori        $v0, $v0, 0x86
/* 74E6A9C 8008AD6C 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 74E6AA0 8008AD70 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 74E6AA4 8008AD74 4957010C */  jal        func_80055D24
/* 74E6AA8 8008AD78 04000524 */   addiu     $a1, $zero, 0x4
/* 74E6AAC 8008AD7C 20004426 */  addiu      $a0, $s2, 0x20
/* 74E6AB0 8008AD80 3800A527 */  addiu      $a1, $sp, 0x38
/* 74E6AB4 8008AD84 2130A000 */  addu       $a2, $a1, $zero
/* 74E6AB8 8008AD88 FA000224 */  addiu      $v0, $zero, 0xFA
/* 74E6ABC 8008AD8C 3800A2AF */  sw         $v0, 0x38($sp)
/* 74E6AC0 8008AD90 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 74E6AC4 8008AD94 5B3B010C */  jal        func_8004ED6C
/* 74E6AC8 8008AD98 4000A0AF */   sw        $zero, 0x40($sp)
/* 74E6ACC 8008AD9C 3800A38F */  lw         $v1, 0x38($sp)
/* 74E6AD0 8008ADA0 3C00A48F */  lw         $a0, 0x3C($sp)
/* 74E6AD4 8008ADA4 4B000224 */  addiu      $v0, $zero, 0x4B
/* 74E6AD8 8008ADA8 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 74E6ADC 8008ADAC 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 74E6AE0 8008ADB0 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 74E6AE4 8008ADB4 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 74E6AE8 8008ADB8 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 74E6AEC 8008ADBC 480524AC */  sw         $a0, %lo(D_80070328 + 0x220)($at)
/* 74E6AF0 8008ADC0 7A2B0208 */  j          .Llevel_34_8008ADE8
/* 74E6AF4 8008ADC4 00000000 */   nop
.Llevel_34_8008ADC8:
/* 74E6AF8 8008ADC8 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 74E6AFC 8008ADCC 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 74E6B00 8008ADD0 46004392 */  lbu        $v1, 0x46($s2)
/* 74E6B04 8008ADD4 16004234 */  ori        $v0, $v0, 0x16
/* 74E6B08 8008ADD8 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 74E6B0C 8008ADDC C00523AC */  sw         $v1, %lo(D_80070328 + 0x298)($at)
/* 74E6B10 8008ADE0 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 74E6B14 8008ADE4 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
.Llevel_34_8008ADE8:
/* 74E6B18 8008ADE8 1400428E */  lw         $v0, 0x14($s2)
/* 74E6B1C 8008ADEC 00000000 */  nop
/* 74E6B20 8008ADF0 2A10C202 */  slt        $v0, $s6, $v0
/* 74E6B24 8008ADF4 2E014014 */  bnez       $v0, .Llevel_34_8008B2B0
/* 74E6B28 8008ADF8 21204002 */   addu      $a0, $s2, $zero
/* 74E6B2C 8008ADFC 21280000 */  addu       $a1, $zero, $zero
/* 74E6B30 8008AE00 AFEE000C */  jal        func_8003BABC
/* 74E6B34 8008AE04 21300000 */   addu      $a2, $zero, $zero
/* 74E6B38 8008AE08 21204002 */  addu       $a0, $s2, $zero
/* 74E6B3C 8008AE0C 4957010C */  jal        func_80055D24
/* 74E6B40 8008AE10 04000524 */   addiu     $a1, $zero, 0x4
/* 74E6B44 8008AE14 21800000 */  addu       $s0, $zero, $zero
/* 74E6B48 8008AE18 6800B427 */  addiu      $s4, $sp, 0x68
/* 74E6B4C 8008AE1C 5800B527 */  addiu      $s5, $sp, 0x58
/* 74E6B50 8008AE20 0680133C */  lui        $s3, %hi(D_80065920)
/* 74E6B54 8008AE24 20597326 */  addiu      $s3, $s3, %lo(D_80065920)
/* 74E6B58 8008AE28 21208002 */  addu       $a0, $s4, $zero
.Llevel_34_8008AE2C:
/* 74E6B5C 8008AE2C 00006286 */  lh         $v0, 0x0($s3)
/* 74E6B60 8008AE30 0C004526 */  addiu      $a1, $s2, 0xC
/* 74E6B64 8008AE34 80180200 */  sll        $v1, $v0, 2
/* 74E6B68 8008AE38 21186200 */  addu       $v1, $v1, $v0
/* 74E6B6C 8008AE3C 00110300 */  sll        $v0, $v1, 4
/* 74E6B70 8008AE40 23104300 */  subu       $v0, $v0, $v1
/* 74E6B74 8008AE44 03120200 */  sra        $v0, $v0, 8
/* 74E6B78 8008AE48 5800A2AF */  sw         $v0, 0x58($sp)
/* 74E6B7C 8008AE4C 80111000 */  sll        $v0, $s0, 6
/* 74E6B80 8008AE50 0680013C */  lui        $at, %hi(D_800658A0)
/* 74E6B84 8008AE54 21082200 */  addu       $at, $at, $v0
/* 74E6B88 8008AE58 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 74E6B8C 8008AE5C 2130A002 */  addu       $a2, $s5, $zero
/* 74E6B90 8008AE60 6000A0AF */  sw         $zero, 0x60($sp)
/* 74E6B94 8008AE64 80180200 */  sll        $v1, $v0, 2
/* 74E6B98 8008AE68 21186200 */  addu       $v1, $v1, $v0
/* 74E6B9C 8008AE6C 00110300 */  sll        $v0, $v1, 4
/* 74E6BA0 8008AE70 23104300 */  subu       $v0, $v0, $v1
/* 74E6BA4 8008AE74 03120200 */  sra        $v0, $v0, 8
/* 74E6BA8 8008AE78 653C010C */  jal        func_8004F194
/* 74E6BAC 8008AE7C 5C00A2AF */   sw        $v0, 0x5C($sp)
/* 74E6BB0 8008AE80 01000424 */  addiu      $a0, $zero, 0x1
/* 74E6BB4 8008AE84 21280000 */  addu       $a1, $zero, $zero
/* 74E6BB8 8008AE88 21308002 */  addu       $a2, $s4, $zero
/* 74E6BBC 8008AE8C 2138A002 */  addu       $a3, $s5, $zero
/* 74E6BC0 8008AE90 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 74E6BC4 8008AE94 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 74E6BC8 8008AE98 32000224 */  addiu      $v0, $zero, 0x32
/* 74E6BCC 8008AE9C 5800A0AF */  sw         $zero, 0x58($sp)
/* 74E6BD0 8008AEA0 5C00A0AF */  sw         $zero, 0x5C($sp)
/* 74E6BD4 8008AEA4 09F86000 */  jalr       $v1
/* 74E6BD8 8008AEA8 6000A2AF */   sw        $v0, 0x60($sp)
/* 74E6BDC 8008AEAC 21184000 */  addu       $v1, $v0, $zero
/* 74E6BE0 8008AEB0 02006010 */  beqz       $v1, .Llevel_34_8008AEBC
/* 74E6BE4 8008AEB4 96000224 */   addiu     $v0, $zero, 0x96
/* 74E6BE8 8008AEB8 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_34_8008AEBC:
/* 74E6BEC 8008AEBC 02000424 */  addiu      $a0, $zero, 0x2
/* 74E6BF0 8008AEC0 46000524 */  addiu      $a1, $zero, 0x46
/* 74E6BF4 8008AEC4 21308002 */  addu       $a2, $s4, $zero
/* 74E6BF8 8008AEC8 18000724 */  addiu      $a3, $zero, 0x18
/* 74E6BFC 8008AECC 40007326 */  addiu      $s3, $s3, 0x40
/* 74E6C00 8008AED0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 74E6C04 8008AED4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 74E6C08 8008AED8 00000000 */  nop
/* 74E6C0C 8008AEDC 09F84000 */  jalr       $v0
/* 74E6C10 8008AEE0 01001026 */   addiu     $s0, $s0, 0x1
/* 74E6C14 8008AEE4 0800022A */  slti       $v0, $s0, 0x8
/* 74E6C18 8008AEE8 D0FF4014 */  bnez       $v0, .Llevel_34_8008AE2C
/* 74E6C1C 8008AEEC 21208002 */   addu      $a0, $s4, $zero
/* 74E6C20 8008AEF0 140056AE */  sw         $s6, 0x14($s2)
/* 74E6C24 8008AEF4 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 74E6C28 8008AEF8 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 74E6C2C 8008AEFC 00000000 */  nop
/* 74E6C30 8008AF00 10004230 */  andi       $v0, $v0, 0x10
/* 74E6C34 8008AF04 04004010 */  beqz       $v0, .Llevel_34_8008AF18
/* 74E6C38 8008AF08 03000224 */   addiu     $v0, $zero, 0x3
/* 74E6C3C 8008AF0C 480042A2 */  sb         $v0, 0x48($s2)
/* 74E6C40 8008AF10 C92B0208 */  j          .Llevel_34_8008AF24
/* 74E6C44 8008AF14 5A000224 */   addiu     $v0, $zero, 0x5A
.Llevel_34_8008AF18:
/* 74E6C48 8008AF18 02000224 */  addiu      $v0, $zero, 0x2
/* 74E6C4C 8008AF1C 480042A2 */  sb         $v0, 0x48($s2)
/* 74E6C50 8008AF20 3C000224 */  addiu      $v0, $zero, 0x3C
.Llevel_34_8008AF24:
/* 74E6C54 8008AF24 490040A2 */  sb         $zero, 0x49($s2)
/* 74E6C58 8008AF28 AC2C0208 */  j          .Llevel_34_8008B2B0
/* 74E6C5C 8008AF2C 120022A6 */   sh        $v0, 0x12($s1)
.Llevel_34_8008AF30:
/* 74E6C60 8008AF30 0800228E */  lw         $v0, 0x8($s1)
/* 74E6C64 8008AF34 1400448E */  lw         $a0, 0x14($s2)
/* 74E6C68 8008AF38 E8034324 */  addiu      $v1, $v0, 0x3E8
/* 74E6C6C 8008AF3C 2A108300 */  slt        $v0, $a0, $v1
/* 74E6C70 8008AF40 06004010 */  beqz       $v0, .Llevel_34_8008AF5C
/* 74E6C74 8008AF44 32008224 */   addiu     $v0, $a0, 0x32
/* 74E6C78 8008AF48 140042AE */  sw         $v0, 0x14($s2)
/* 74E6C7C 8008AF4C 2A106200 */  slt        $v0, $v1, $v0
/* 74E6C80 8008AF50 03004010 */  beqz       $v0, .Llevel_34_8008AF60
/* 74E6C84 8008AF54 21300000 */   addu      $a2, $zero, $zero
/* 74E6C88 8008AF58 140043AE */  sw         $v1, 0x14($s2)
.Llevel_34_8008AF5C:
/* 74E6C8C 8008AF5C 21300000 */  addu       $a2, $zero, $zero
.Llevel_34_8008AF60:
/* 74E6C90 8008AF60 0780133C */  lui        $s3, %hi(D_80070328)
/* 74E6C94 8008AF64 28037326 */  addiu      $s3, $s3, %lo(D_80070328)
/* 74E6C98 8008AF68 0000638E */  lw         $v1, 0x0($s3)
/* 74E6C9C 8008AF6C 0C00448E */  lw         $a0, 0xC($s2)
/* 74E6CA0 8008AF70 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 74E6CA4 8008AF74 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 74E6CA8 8008AF78 1000458E */  lw         $a1, 0x10($s2)
/* 74E6CAC 8008AF7C 23206400 */  subu       $a0, $v1, $a0
/* 74E6CB0 8008AF80 203A010C */  jal        func_8004E880
/* 74E6CB4 8008AF84 23284500 */   subu      $a1, $v0, $a1
/* 74E6CB8 8008AF88 46004592 */  lbu        $a1, 0x46($s2)
/* 74E6CBC 8008AF8C 993C010C */  jal        func_8004F264
/* 74E6CC0 8008AF90 21204000 */   addu      $a0, $v0, $zero
/* 74E6CC4 8008AF94 41004228 */  slti       $v0, $v0, 0x41
/* 74E6CC8 8008AF98 1A004014 */  bnez       $v0, .Llevel_34_8008B004
/* 74E6CCC 8008AF9C 0C005026 */   addiu     $s0, $s2, 0xC
/* 74E6CD0 8008AFA0 21200002 */  addu       $a0, $s0, $zero
/* 74E6CD4 8008AFA4 CD3C010C */  jal        func_8004F334
/* 74E6CD8 8008AFA8 21286002 */   addu      $a1, $s3, $zero
/* 74E6CDC 8008AFAC E2044228 */  slti       $v0, $v0, 0x4E2
/* 74E6CE0 8008AFB0 30004014 */  bnez       $v0, .Llevel_34_8008B074
/* 74E6CE4 8008AFB4 01000224 */   addiu     $v0, $zero, 0x1
/* 74E6CE8 8008AFB8 21200002 */  addu       $a0, $s0, $zero
/* 74E6CEC 8008AFBC CD3C010C */  jal        func_8004F334
/* 74E6CF0 8008AFC0 1800A527 */   addiu     $a1, $sp, 0x18
/* 74E6CF4 8008AFC4 E8034228 */  slti       $v0, $v0, 0x3E8
/* 74E6CF8 8008AFC8 2A004014 */  bnez       $v0, .Llevel_34_8008B074
/* 74E6CFC 8008AFCC 01000224 */   addiu     $v0, $zero, 0x1
/* 74E6D00 8008AFD0 21300000 */  addu       $a2, $zero, $zero
/* 74E6D04 8008AFD4 1800A38F */  lw         $v1, 0x18($sp)
/* 74E6D08 8008AFD8 0C00448E */  lw         $a0, 0xC($s2)
/* 74E6D0C 8008AFDC 1C00A28F */  lw         $v0, 0x1C($sp)
/* 74E6D10 8008AFE0 1000458E */  lw         $a1, 0x10($s2)
/* 74E6D14 8008AFE4 23206400 */  subu       $a0, $v1, $a0
/* 74E6D18 8008AFE8 203A010C */  jal        func_8004E880
/* 74E6D1C 8008AFEC 23284500 */   subu      $a1, $v0, $a1
/* 74E6D20 8008AFF0 46004592 */  lbu        $a1, 0x46($s2)
/* 74E6D24 8008AFF4 21204000 */  addu       $a0, $v0, $zero
/* 74E6D28 8008AFF8 8000A524 */  addiu      $a1, $a1, 0x80
/* 74E6D2C 8008AFFC 172C0208 */  j          .Llevel_34_8008B05C
/* 74E6D30 8008B000 FF00A530 */   andi      $a1, $a1, 0xFF
.Llevel_34_8008B004:
/* 74E6D34 8008B004 21200002 */  addu       $a0, $s0, $zero
/* 74E6D38 8008B008 CD3C010C */  jal        func_8004F334
/* 74E6D3C 8008B00C 1800A527 */   addiu     $a1, $sp, 0x18
/* 74E6D40 8008B010 E8034228 */  slti       $v0, $v0, 0x3E8
/* 74E6D44 8008B014 17004014 */  bnez       $v0, .Llevel_34_8008B074
/* 74E6D48 8008B018 01000224 */   addiu     $v0, $zero, 0x1
/* 74E6D4C 8008B01C 21200002 */  addu       $a0, $s0, $zero
/* 74E6D50 8008B020 CD3C010C */  jal        func_8004F334
/* 74E6D54 8008B024 21286002 */   addu      $a1, $s3, $zero
/* 74E6D58 8008B028 E2044228 */  slti       $v0, $v0, 0x4E2
/* 74E6D5C 8008B02C 11004014 */  bnez       $v0, .Llevel_34_8008B074
/* 74E6D60 8008B030 01000224 */   addiu     $v0, $zero, 0x1
/* 74E6D64 8008B034 21300000 */  addu       $a2, $zero, $zero
/* 74E6D68 8008B038 1800A38F */  lw         $v1, 0x18($sp)
/* 74E6D6C 8008B03C 0C00448E */  lw         $a0, 0xC($s2)
/* 74E6D70 8008B040 1C00A28F */  lw         $v0, 0x1C($sp)
/* 74E6D74 8008B044 1000458E */  lw         $a1, 0x10($s2)
/* 74E6D78 8008B048 23206400 */  subu       $a0, $v1, $a0
/* 74E6D7C 8008B04C 203A010C */  jal        func_8004E880
/* 74E6D80 8008B050 23284500 */   subu      $a1, $v0, $a1
/* 74E6D84 8008B054 46004592 */  lbu        $a1, 0x46($s2)
/* 74E6D88 8008B058 21204000 */  addu       $a0, $v0, $zero
.Llevel_34_8008B05C:
/* 74E6D8C 8008B05C 993C010C */  jal        func_8004F264
/* 74E6D90 8008B060 00000000 */   nop
/* 74E6D94 8008B064 47004228 */  slti       $v0, $v0, 0x47
/* 74E6D98 8008B068 05004014 */  bnez       $v0, .Llevel_34_8008B080
/* 74E6D9C 8008B06C 21300000 */   addu      $a2, $zero, $zero
/* 74E6DA0 8008B070 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_34_8008B074:
/* 74E6DA4 8008B074 480042A2 */  sb         $v0, 0x48($s2)
/* 74E6DA8 8008B078 1A0020A6 */  sh         $zero, 0x1A($s1)
.Llevel_34_8008B07C:
/* 74E6DAC 8008B07C 21300000 */  addu       $a2, $zero, $zero
.Llevel_34_8008B080:
/* 74E6DB0 8008B080 1800A38F */  lw         $v1, 0x18($sp)
/* 74E6DB4 8008B084 0C00448E */  lw         $a0, 0xC($s2)
/* 74E6DB8 8008B088 1C00A28F */  lw         $v0, 0x1C($sp)
/* 74E6DBC 8008B08C 1000458E */  lw         $a1, 0x10($s2)
/* 74E6DC0 8008B090 23206400 */  subu       $a0, $v1, $a0
/* 74E6DC4 8008B094 203A010C */  jal        func_8004E880
/* 74E6DC8 8008B098 23284500 */   subu      $a1, $v0, $a1
/* 74E6DCC 8008B09C 21984000 */  addu       $s3, $v0, $zero
/* 74E6DD0 8008B0A0 46004592 */  lbu        $a1, 0x46($s2)
/* 74E6DD4 8008B0A4 993C010C */  jal        func_8004F264
/* 74E6DD8 8008B0A8 21206002 */   addu      $a0, $s3, $zero
/* 74E6DDC 8008B0AC 2800A427 */  addiu      $a0, $sp, 0x28
/* 74E6DE0 8008B0B0 0C004526 */  addiu      $a1, $s2, 0xC
/* 74E6DE4 8008B0B4 5E3C010C */  jal        func_8004F178
/* 74E6DE8 8008B0B8 21804000 */   addu      $s0, $v0, $zero
/* 74E6DEC 8008B0BC 0400022A */  slti       $v0, $s0, 0x4
/* 74E6DF0 8008B0C0 02004010 */  beqz       $v0, .Llevel_34_8008B0CC
/* 74E6DF4 8008B0C4 0600022A */   slti      $v0, $s0, 0x6
/* 74E6DF8 8008B0C8 0A001424 */  addiu      $s4, $zero, 0xA
.Llevel_34_8008B0CC:
/* 74E6DFC 8008B0CC 03004010 */  beqz       $v0, .Llevel_34_8008B0DC
/* 74E6E00 8008B0D0 0800022A */   slti      $v0, $s0, 0x8
/* 74E6E04 8008B0D4 3E2C0208 */  j          .Llevel_34_8008B0F8
/* 74E6E08 8008B0D8 19001424 */   addiu     $s4, $zero, 0x19
.Llevel_34_8008B0DC:
/* 74E6E0C 8008B0DC 03004010 */  beqz       $v0, .Llevel_34_8008B0EC
/* 74E6E10 8008B0E0 0A00022A */   slti      $v0, $s0, 0xA
/* 74E6E14 8008B0E4 3E2C0208 */  j          .Llevel_34_8008B0F8
/* 74E6E18 8008B0E8 32001424 */   addiu     $s4, $zero, 0x32
.Llevel_34_8008B0EC:
/* 74E6E1C 8008B0EC 02004010 */  beqz       $v0, .Llevel_34_8008B0F8
/* 74E6E20 8008B0F0 00000000 */   nop
/* 74E6E24 8008B0F4 96001424 */  addiu      $s4, $zero, 0x96
.Llevel_34_8008B0F8:
/* 74E6E28 8008B0F8 02008106 */  bgez       $s4, .Llevel_34_8008B104
/* 74E6E2C 8008B0FC 21308002 */   addu      $a2, $s4, $zero
/* 74E6E30 8008B100 23300600 */  negu       $a2, $a2
.Llevel_34_8008B104:
/* 74E6E34 8008B104 9600C228 */  slti       $v0, $a2, 0x96
/* 74E6E38 8008B108 03004014 */  bnez       $v0, .Llevel_34_8008B118
/* 74E6E3C 8008B10C 6400C228 */   slti      $v0, $a2, 0x64
/* 74E6E40 8008B110 512C0208 */  j          .Llevel_34_8008B144
/* 74E6E44 8008B114 0F000624 */   addiu     $a2, $zero, 0xF
.Llevel_34_8008B118:
/* 74E6E48 8008B118 03004014 */  bnez       $v0, .Llevel_34_8008B128
/* 74E6E4C 8008B11C 3200C228 */   slti      $v0, $a2, 0x32
/* 74E6E50 8008B120 512C0208 */  j          .Llevel_34_8008B144
/* 74E6E54 8008B124 08000624 */   addiu     $a2, $zero, 0x8
.Llevel_34_8008B128:
/* 74E6E58 8008B128 03004014 */  bnez       $v0, .Llevel_34_8008B138
/* 74E6E5C 8008B12C 1900C228 */   slti      $v0, $a2, 0x19
/* 74E6E60 8008B130 512C0208 */  j          .Llevel_34_8008B144
/* 74E6E64 8008B134 05000624 */   addiu     $a2, $zero, 0x5
.Llevel_34_8008B138:
/* 74E6E68 8008B138 02004014 */  bnez       $v0, .Llevel_34_8008B144
/* 74E6E6C 8008B13C 02000624 */   addiu     $a2, $zero, 0x2
/* 74E6E70 8008B140 04000624 */  addiu      $a2, $zero, 0x4
.Llevel_34_8008B144:
/* 74E6E74 8008B144 46004392 */  lbu        $v1, 0x46($s2)
/* 74E6E78 8008B148 00000000 */  nop
/* 74E6E7C 8008B14C 8000622C */  sltiu      $v0, $v1, 0x80
/* 74E6E80 8008B150 03004010 */  beqz       $v0, .Llevel_34_8008B160
/* 74E6E84 8008B154 8000622A */   slti      $v0, $s3, 0x80
/* 74E6E88 8008B158 09004014 */  bnez       $v0, .Llevel_34_8008B180
/* 74E6E8C 8008B15C 2A107300 */   slt       $v0, $v1, $s3
.Llevel_34_8008B160:
/* 74E6E90 8008B160 8100622C */  sltiu      $v0, $v1, 0x81
/* 74E6E94 8008B164 28004014 */  bnez       $v0, .Llevel_34_8008B208
/* 74E6E98 8008B168 8100622A */   slti      $v0, $s3, 0x81
/* 74E6E9C 8008B16C 16004014 */  bnez       $v0, .Llevel_34_8008B1C8
/* 74E6EA0 8008B170 8000622A */   slti      $v0, $s3, 0x80
/* 74E6EA4 8008B174 46004392 */  lbu        $v1, 0x46($s2)
/* 74E6EA8 8008B178 00000000 */  nop
/* 74E6EAC 8008B17C 2A107300 */  slt        $v0, $v1, $s3
.Llevel_34_8008B180:
/* 74E6EB0 8008B180 28004014 */  bnez       $v0, .Llevel_34_8008B224
/* 74E6EB4 8008B184 2A106302 */   slt       $v0, $s3, $v1
/* 74E6EB8 8008B188 36004010 */  beqz       $v0, .Llevel_34_8008B264
/* 74E6EBC 8008B18C 21204002 */   addu      $a0, $s2, $zero
/* 74E6EC0 8008B190 1A002286 */  lh         $v0, 0x1A($s1)
/* 74E6EC4 8008B194 00000000 */  nop
/* 74E6EC8 8008B198 08004018 */  blez       $v0, .Llevel_34_8008B1BC
/* 74E6ECC 8008B19C 5555033C */   lui       $v1, (0x55555556 >> 16)
/* 74E6ED0 8008B1A0 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 74E6ED4 8008B1A4 40100200 */  sll        $v0, $v0, 1
/* 74E6ED8 8008B1A8 18004300 */  mult       $v0, $v1
/* 74E6EDC 8008B1AC C3170200 */  sra        $v0, $v0, 31
/* 74E6EE0 8008B1B0 10400000 */  mfhi       $t0
/* 74E6EE4 8008B1B4 23100201 */  subu       $v0, $t0, $v0
/* 74E6EE8 8008B1B8 1A0022A6 */  sh         $v0, 0x1A($s1)
.Llevel_34_8008B1BC:
/* 74E6EEC 8008B1BC 1A002296 */  lhu        $v0, 0x1A($s1)
/* 74E6EF0 8008B1C0 972C0208 */  j          .Llevel_34_8008B25C
/* 74E6EF4 8008B1C4 23104600 */   subu      $v0, $v0, $a2
.Llevel_34_8008B1C8:
/* 74E6EF8 8008B1C8 0F004010 */  beqz       $v0, .Llevel_34_8008B208
/* 74E6EFC 8008B1CC 00000000 */   nop
/* 74E6F00 8008B1D0 1A002286 */  lh         $v0, 0x1A($s1)
/* 74E6F04 8008B1D4 00000000 */  nop
/* 74E6F08 8008B1D8 08004018 */  blez       $v0, .Llevel_34_8008B1FC
/* 74E6F0C 8008B1DC 5555033C */   lui       $v1, (0x55555556 >> 16)
/* 74E6F10 8008B1E0 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 74E6F14 8008B1E4 40100200 */  sll        $v0, $v0, 1
/* 74E6F18 8008B1E8 18004300 */  mult       $v0, $v1
/* 74E6F1C 8008B1EC C3170200 */  sra        $v0, $v0, 31
/* 74E6F20 8008B1F0 10400000 */  mfhi       $t0
/* 74E6F24 8008B1F4 23100201 */  subu       $v0, $t0, $v0
/* 74E6F28 8008B1F8 1A0022A6 */  sh         $v0, 0x1A($s1)
.Llevel_34_8008B1FC:
/* 74E6F2C 8008B1FC 1A002296 */  lhu        $v0, 0x1A($s1)
/* 74E6F30 8008B200 972C0208 */  j          .Llevel_34_8008B25C
/* 74E6F34 8008B204 23104600 */   subu      $v0, $v0, $a2
.Llevel_34_8008B208:
/* 74E6F38 8008B208 46004292 */  lbu        $v0, 0x46($s2)
/* 74E6F3C 8008B20C 00000000 */  nop
/* 74E6F40 8008B210 8000422C */  sltiu      $v0, $v0, 0x80
/* 74E6F44 8008B214 12004010 */  beqz       $v0, .Llevel_34_8008B260
/* 74E6F48 8008B218 8100622A */   slti      $v0, $s3, 0x81
/* 74E6F4C 8008B21C 11004014 */  bnez       $v0, .Llevel_34_8008B264
/* 74E6F50 8008B220 21204002 */   addu      $a0, $s2, $zero
.Llevel_34_8008B224:
/* 74E6F54 8008B224 1A002286 */  lh         $v0, 0x1A($s1)
/* 74E6F58 8008B228 00000000 */  nop
/* 74E6F5C 8008B22C 08004104 */  bgez       $v0, .Llevel_34_8008B250
/* 74E6F60 8008B230 5555033C */   lui       $v1, (0x55555556 >> 16)
/* 74E6F64 8008B234 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
/* 74E6F68 8008B238 40100200 */  sll        $v0, $v0, 1
/* 74E6F6C 8008B23C 18004300 */  mult       $v0, $v1
/* 74E6F70 8008B240 C3170200 */  sra        $v0, $v0, 31
/* 74E6F74 8008B244 10400000 */  mfhi       $t0
/* 74E6F78 8008B248 23100201 */  subu       $v0, $t0, $v0
/* 74E6F7C 8008B24C 1A0022A6 */  sh         $v0, 0x1A($s1)
.Llevel_34_8008B250:
/* 74E6F80 8008B250 1A002296 */  lhu        $v0, 0x1A($s1)
/* 74E6F84 8008B254 00000000 */  nop
/* 74E6F88 8008B258 21104600 */  addu       $v0, $v0, $a2
.Llevel_34_8008B25C:
/* 74E6F8C 8008B25C 1A0022A6 */  sh         $v0, 0x1A($s1)
.Llevel_34_8008B260:
/* 74E6F90 8008B260 21204002 */  addu       $a0, $s2, $zero
.Llevel_34_8008B264:
/* 74E6F94 8008B264 1A003486 */  lh         $s4, 0x1A($s1)
/* 74E6F98 8008B268 46004592 */  lbu        $a1, 0x46($s2)
/* 74E6F9C 8008B26C 21380000 */  addu       $a3, $zero, $zero
/* 74E6FA0 8008B270 1000A0AF */  sw         $zero, 0x10($sp)
/* 74E6FA4 8008B274 1400A0AF */  sw         $zero, 0x14($sp)
/* 74E6FA8 8008B278 4000A524 */  addiu      $a1, $a1, 0x40
/* 74E6FAC 8008B27C FF00A530 */  andi       $a1, $a1, 0xFF
/* 74E6FB0 8008B280 B8D7000C */  jal        func_80035EE0
/* 74E6FB4 8008B284 21308002 */   addu      $a2, $s4, $zero
/* 74E6FB8 8008B288 0C005026 */  addiu      $s0, $s2, 0xC
/* 74E6FBC 8008B28C 21200002 */  addu       $a0, $s0, $zero
/* 74E6FC0 8008B290 CD3C010C */  jal        func_8004F334
/* 74E6FC4 8008B294 21282002 */   addu      $a1, $s1, $zero
/* 74E6FC8 8008B298 550B4228 */  slti       $v0, $v0, 0xB55
/* 74E6FCC 8008B29C 04004014 */  bnez       $v0, .Llevel_34_8008B2B0
/* 74E6FD0 8008B2A0 21200002 */   addu      $a0, $s0, $zero
/* 74E6FD4 8008B2A4 5E3C010C */  jal        func_8004F178
/* 74E6FD8 8008B2A8 2800A527 */   addiu     $a1, $sp, 0x28
/* 74E6FDC 8008B2AC 1A0020A6 */  sh         $zero, 0x1A($s1)
.Llevel_34_8008B2B0:
/* 74E6FE0 8008B2B0 9400BF8F */  lw         $ra, 0x94($sp)
/* 74E6FE4 8008B2B4 9000B68F */  lw         $s6, 0x90($sp)
/* 74E6FE8 8008B2B8 8C00B58F */  lw         $s5, 0x8C($sp)
/* 74E6FEC 8008B2BC 8800B48F */  lw         $s4, 0x88($sp)
/* 74E6FF0 8008B2C0 8400B38F */  lw         $s3, 0x84($sp)
/* 74E6FF4 8008B2C4 8000B28F */  lw         $s2, 0x80($sp)
/* 74E6FF8 8008B2C8 7C00B18F */  lw         $s1, 0x7C($sp)
/* 74E6FFC 8008B2CC 7800B08F */  lw         $s0, 0x78($sp)
/* 74E7000 8008B2D0 9800BD27 */  addiu      $sp, $sp, 0x98
/* 74E7004 8008B2D4 0800E003 */  jr         $ra
/* 74E7008 8008B2D8 00000000 */   nop
.size MobyUpdate_497_level_34, . - MobyUpdate_497_level_34
