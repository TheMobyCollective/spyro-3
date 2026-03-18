.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_31_80081920
/* 6A9C650 80081920 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 6A9C654 80081924 4800B6AF */  sw         $s6, 0x48($sp)
/* 6A9C658 80081928 21B08000 */  addu       $s6, $a0, $zero
/* 6A9C65C 8008192C 0A00033C */  lui        $v1, (0xA0000 >> 16)
/* 6A9C660 80081930 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 6A9C664 80081934 4400B5AF */  sw         $s5, 0x44($sp)
/* 6A9C668 80081938 4000B4AF */  sw         $s4, 0x40($sp)
/* 6A9C66C 8008193C 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 6A9C670 80081940 3800B2AF */  sw         $s2, 0x38($sp)
/* 6A9C674 80081944 3400B1AF */  sw         $s1, 0x34($sp)
/* 6A9C678 80081948 3000B0AF */  sw         $s0, 0x30($sp)
/* 6A9C67C 8008194C 1800C28E */  lw         $v0, 0x18($s6)
/* 6A9C680 80081950 0000D58E */  lw         $s5, 0x0($s6)
/* 6A9C684 80081954 24104300 */  and        $v0, $v0, $v1
/* 6A9C688 80081958 0C004010 */  beqz       $v0, .Llevel_31_8008198C
/* 6A9C68C 8008195C 3000A526 */   addiu     $a1, $s5, 0x30
/* 6A9C690 80081960 0780023C */  lui        $v0, %hi(unk_ovlheader_80074350)
/* 6A9C694 80081964 5043428C */  lw         $v0, %lo(unk_ovlheader_80074350)($v0)
/* 6A9C698 80081968 00000000 */  nop
/* 6A9C69C 8008196C 09F84000 */  jalr       $v0
/* 6A9C6A0 80081970 50000624 */   addiu     $a2, $zero, 0x50
/* 6A9C6A4 80081974 05004010 */  beqz       $v0, .Llevel_31_8008198C
/* 6A9C6A8 80081978 00000000 */   nop
/* 6A9C6AC 8008197C 5400C0A2 */  sb         $zero, 0x54($s6)
/* 6A9C6B0 80081980 5500C0A2 */  sb         $zero, 0x55($s6)
/* 6A9C6B4 80081984 5600C0A2 */  sb         $zero, 0x56($s6)
/* 6A9C6B8 80081988 5700C0A2 */  sb         $zero, 0x57($s6)
.Llevel_31_8008198C:
/* 6A9C6BC 8008198C 1800C28E */  lw         $v0, 0x18($s6)
/* 6A9C6C0 80081990 0100033C */  lui        $v1, (0x10000 >> 16)
/* 6A9C6C4 80081994 24104300 */  and        $v0, $v0, $v1
/* 6A9C6C8 80081998 0D004010 */  beqz       $v0, .Llevel_31_800819D0
/* 6A9C6CC 8008199C 00000000 */   nop
/* 6A9C6D0 800819A0 4800C292 */  lbu        $v0, 0x48($s6)
/* 6A9C6D4 800819A4 00000000 */  nop
/* 6A9C6D8 800819A8 5100422C */  sltiu      $v0, $v0, 0x51
/* 6A9C6DC 800819AC 08004010 */  beqz       $v0, .Llevel_31_800819D0
/* 6A9C6E0 800819B0 2120C002 */   addu      $a0, $s6, $zero
/* 6A9C6E4 800819B4 3000A526 */  addiu      $a1, $s5, 0x30
/* 6A9C6E8 800819B8 50000624 */  addiu      $a2, $zero, 0x50
/* 6A9C6EC 800819BC 0780023C */  lui        $v0, %hi(unk_ovlheader_80074348)
/* 6A9C6F0 800819C0 4843428C */  lw         $v0, %lo(unk_ovlheader_80074348)($v0)
/* 6A9C6F4 800819C4 00000000 */  nop
/* 6A9C6F8 800819C8 09F84000 */  jalr       $v0
/* 6A9C6FC 800819CC 1C000724 */   addiu     $a3, $zero, 0x1C
.Llevel_31_800819D0:
/* 6A9C700 800819D0 1800C0AE */  sw         $zero, 0x18($s6)
/* 6A9C704 800819D4 0000A392 */  lbu        $v1, 0x0($s5)
/* 6A9C708 800819D8 04000224 */  addiu      $v0, $zero, 0x4
/* 6A9C70C 800819DC 09006214 */  bne        $v1, $v0, .Llevel_31_80081A04
/* 6A9C710 800819E0 6000A526 */   addiu     $a1, $s5, 0x60
/* 6A9C714 800819E4 0780043C */  lui        $a0, %hi(D_80070328)
/* 6A9C718 800819E8 28038424 */  addiu      $a0, $a0, %lo(D_80070328)
/* 6A9C71C 800819EC 21300000 */  addu       $a2, $zero, $zero
/* 6A9C720 800819F0 88D8000C */  jal        func_80036220
/* 6A9C724 800819F4 21380000 */   addu      $a3, $zero, $zero
/* 6A9C728 800819F8 02004010 */  beqz       $v0, .Llevel_31_80081A04
/* 6A9C72C 800819FC 01000224 */   addiu     $v0, $zero, 0x1
/* 6A9C730 80081A00 7800A2AE */  sw         $v0, 0x78($s5)
.Llevel_31_80081A04:
/* 6A9C734 80081A04 5C00A38E */  lw         $v1, 0x5C($s5)
/* 6A9C738 80081A08 0980023C */  lui        $v0, %hi(D_level_31_8008FAF8)
/* 6A9C73C 80081A0C F8FA4224 */  addiu      $v0, $v0, %lo(D_level_31_8008FAF8)
/* 6A9C740 80081A10 12006214 */  bne        $v1, $v0, .Llevel_31_80081A5C
/* 6A9C744 80081A14 00000000 */   nop
/* 6A9C748 80081A18 4C00A28E */  lw         $v0, 0x4C($s5)
/* 6A9C74C 80081A1C 00000000 */  nop
/* 6A9C750 80081A20 0E004010 */  beqz       $v0, .Llevel_31_80081A5C
/* 6A9C754 80081A24 00000000 */   nop
/* 6A9C758 80081A28 9171010C */  jal        rand
/* 6A9C75C 80081A2C 00000000 */   nop
/* 6A9C760 80081A30 0780013C */  lui        $at, %hi(D_8006C76C)
/* 6A9C764 80081A34 6CC720AC */  sw         $zero, %lo(D_8006C76C)($at)
/* 6A9C768 80081A38 21180000 */  addu       $v1, $zero, $zero
/* 6A9C76C 80081A3C 0680053C */  lui        $a1, %hi(D_800676E8)
/* 6A9C770 80081A40 E876A524 */  addiu      $a1, $a1, %lo(D_800676E8)
/* 6A9C774 80081A44 E8350424 */  addiu      $a0, $zero, 0x35E8
.Llevel_31_80081A48:
/* 6A9C778 80081A48 01006324 */  addiu      $v1, $v1, 0x1
/* 6A9C77C 80081A4C 28006228 */  slti       $v0, $v1, 0x28
/* 6A9C780 80081A50 FDFF4014 */  bnez       $v0, .Llevel_31_80081A48
/* 6A9C784 80081A54 0000A4AC */   sw        $a0, 0x0($a1)
/* 6A9C788 80081A58 4C00A0AE */  sw         $zero, 0x4C($s5)
.Llevel_31_80081A5C:
/* 6A9C78C 80081A5C 4800C392 */  lbu        $v1, 0x48($s6)
/* 6A9C790 80081A60 51000224 */  addiu      $v0, $zero, 0x51
/* 6A9C794 80081A64 DB016210 */  beq        $v1, $v0, .Llevel_31_800821D4
/* 6A9C798 80081A68 52006228 */   slti      $v0, $v1, 0x52
/* 6A9C79C 80081A6C 0E004010 */  beqz       $v0, .Llevel_31_80081AA8
/* 6A9C7A0 80081A70 1E000224 */   addiu     $v0, $zero, 0x1E
/* 6A9C7A4 80081A74 17026210 */  beq        $v1, $v0, .Llevel_31_800822D4
/* 6A9C7A8 80081A78 1F006228 */   slti      $v0, $v1, 0x1F
/* 6A9C7AC 80081A7C 05004010 */  beqz       $v0, .Llevel_31_80081A94
/* 6A9C7B0 80081A80 00000000 */   nop
/* 6A9C7B4 80081A84 62006010 */  beqz       $v1, .Llevel_31_80081C10
/* 6A9C7B8 80081A88 00000000 */   nop
/* 6A9C7BC 80081A8C 25090208 */  j          .Llevel_31_80082494
/* 6A9C7C0 80081A90 00000000 */   nop
.Llevel_31_80081A94:
/* 6A9C7C4 80081A94 50000224 */  addiu      $v0, $zero, 0x50
/* 6A9C7C8 80081A98 07026210 */  beq        $v1, $v0, .Llevel_31_800822B8
/* 6A9C7CC 80081A9C 2120C002 */   addu      $a0, $s6, $zero
/* 6A9C7D0 80081AA0 25090208 */  j          .Llevel_31_80082494
/* 6A9C7D4 80081AA4 00000000 */   nop
.Llevel_31_80081AA8:
/* 6A9C7D8 80081AA8 53000224 */  addiu      $v0, $zero, 0x53
/* 6A9C7DC 80081AAC 08006210 */  beq        $v1, $v0, .Llevel_31_80081AD0
/* 6A9C7E0 80081AB0 53006228 */   slti      $v0, $v1, 0x53
/* 6A9C7E4 80081AB4 5F024014 */  bnez       $v0, .Llevel_31_80082434
/* 6A9C7E8 80081AB8 5800A426 */   addiu     $a0, $s5, 0x58
/* 6A9C7EC 80081ABC 54000224 */  addiu      $v0, $zero, 0x54
/* 6A9C7F0 80081AC0 38006210 */  beq        $v1, $v0, .Llevel_31_80081BA4
/* 6A9C7F4 80081AC4 2120C002 */   addu      $a0, $s6, $zero
/* 6A9C7F8 80081AC8 25090208 */  j          .Llevel_31_80082494
/* 6A9C7FC 80081ACC 00000000 */   nop
.Llevel_31_80081AD0:
/* 6A9C800 80081AD0 2120C002 */  addu       $a0, $s6, $zero
/* 6A9C804 80081AD4 D0D3000C */  jal        func_80034F40
/* 6A9C808 80081AD8 02000524 */   addiu     $a1, $zero, 0x2
/* 6A9C80C 80081ADC 21300000 */  addu       $a2, $zero, $zero
/* 6A9C810 80081AE0 7C00A38E */  lw         $v1, 0x7C($s5)
/* 6A9C814 80081AE4 0C00C48E */  lw         $a0, 0xC($s6)
/* 6A9C818 80081AE8 1000C58E */  lw         $a1, 0x10($s6)
/* 6A9C81C 80081AEC 40100300 */  sll        $v0, $v1, 1
/* 6A9C820 80081AF0 21104300 */  addu       $v0, $v0, $v1
/* 6A9C824 80081AF4 80100200 */  sll        $v0, $v0, 2
/* 6A9C828 80081AF8 23104300 */  subu       $v0, $v0, $v1
/* 6A9C82C 80081AFC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A9C830 80081B00 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A9C834 80081B04 C0100200 */  sll        $v0, $v0, 3
/* 6A9C838 80081B08 21104300 */  addu       $v0, $v0, $v1
/* 6A9C83C 80081B0C 0C00438C */  lw         $v1, 0xC($v0)
/* 6A9C840 80081B10 1000428C */  lw         $v0, 0x10($v0)
/* 6A9C844 80081B14 23206400 */  subu       $a0, $v1, $a0
/* 6A9C848 80081B18 203A010C */  jal        func_8004E880
/* 6A9C84C 80081B1C 23284500 */   subu      $a1, $v0, $a1
/* 6A9C850 80081B20 2120C002 */  addu       $a0, $s6, $zero
/* 6A9C854 80081B24 21284000 */  addu       $a1, $v0, $zero
/* 6A9C858 80081B28 04000624 */  addiu      $a2, $zero, 0x4
/* 6A9C85C 80081B2C 21380000 */  addu       $a3, $zero, $zero
/* 6A9C860 80081B30 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9C864 80081B34 1000A2AF */  sw         $v0, 0x10($sp)
/* 6A9C868 80081B38 17D6000C */  jal        func_8003585C
/* 6A9C86C 80081B3C 1400A0AF */   sw        $zero, 0x14($sp)
/* 6A9C870 80081B40 2120C002 */  addu       $a0, $s6, $zero
/* 6A9C874 80081B44 96000524 */  addiu      $a1, $zero, 0x96
/* 6A9C878 80081B48 21300000 */  addu       $a2, $zero, $zero
/* 6A9C87C 80081B4C 21380000 */  addu       $a3, $zero, $zero
/* 6A9C880 80081B50 77D7000C */  jal        func_80035DDC
/* 6A9C884 80081B54 1000A0AF */   sw        $zero, 0x10($sp)
/* 6A9C888 80081B58 0C00C426 */  addiu      $a0, $s6, 0xC
/* 6A9C88C 80081B5C 7C00A38E */  lw         $v1, 0x7C($s5)
/* 6A9C890 80081B60 0780053C */  lui        $a1, %hi(D_8006C550)
/* 6A9C894 80081B64 50C5A58C */  lw         $a1, %lo(D_8006C550)($a1)
/* 6A9C898 80081B68 40100300 */  sll        $v0, $v1, 1
/* 6A9C89C 80081B6C 21104300 */  addu       $v0, $v0, $v1
/* 6A9C8A0 80081B70 80100200 */  sll        $v0, $v0, 2
/* 6A9C8A4 80081B74 23104300 */  subu       $v0, $v0, $v1
/* 6A9C8A8 80081B78 C0100200 */  sll        $v0, $v0, 3
/* 6A9C8AC 80081B7C 2128A200 */  addu       $a1, $a1, $v0
/* 6A9C8B0 80081B80 CD3C010C */  jal        func_8004F334
/* 6A9C8B4 80081B84 0C00A524 */   addiu     $a1, $a1, 0xC
/* 6A9C8B8 80081B88 00024228 */  slti       $v0, $v0, 0x200
/* 6A9C8BC 80081B8C 41024010 */  beqz       $v0, .Llevel_31_80082494
/* 6A9C8C0 80081B90 0F000224 */   addiu     $v0, $zero, 0xF
/* 6A9C8C4 80081B94 5800A2AE */  sw         $v0, 0x58($s5)
/* 6A9C8C8 80081B98 54000224 */  addiu      $v0, $zero, 0x54
/* 6A9C8CC 80081B9C 25090208 */  j          .Llevel_31_80082494
/* 6A9C8D0 80081BA0 4800C2A2 */   sb        $v0, 0x48($s6)
.Llevel_31_80081BA4:
/* 6A9C8D4 80081BA4 96000524 */  addiu      $a1, $zero, 0x96
/* 6A9C8D8 80081BA8 21300000 */  addu       $a2, $zero, $zero
/* 6A9C8DC 80081BAC 21380000 */  addu       $a3, $zero, $zero
/* 6A9C8E0 80081BB0 77D7000C */  jal        func_80035DDC
/* 6A9C8E4 80081BB4 1000A0AF */   sw        $zero, 0x10($sp)
/* 6A9C8E8 80081BB8 02000424 */  addiu      $a0, $zero, 0x2
/* 6A9C8EC 80081BBC 0C000524 */  addiu      $a1, $zero, 0xC
/* 6A9C8F0 80081BC0 05000724 */  addiu      $a3, $zero, 0x5
/* 6A9C8F4 80081BC4 7C00A28E */  lw         $v0, 0x7C($s5)
/* 6A9C8F8 80081BC8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 6A9C8FC 80081BCC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 6A9C900 80081BD0 40300200 */  sll        $a2, $v0, 1
/* 6A9C904 80081BD4 2130C200 */  addu       $a2, $a2, $v0
/* 6A9C908 80081BD8 80300600 */  sll        $a2, $a2, 2
/* 6A9C90C 80081BDC 2330C200 */  subu       $a2, $a2, $v0
/* 6A9C910 80081BE0 0780023C */  lui        $v0, %hi(D_8006C550)
/* 6A9C914 80081BE4 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 6A9C918 80081BE8 C0300600 */  sll        $a2, $a2, 3
/* 6A9C91C 80081BEC 09F86000 */  jalr       $v1
/* 6A9C920 80081BF0 21304600 */   addu      $a2, $v0, $a2
/* 6A9C924 80081BF4 5800A426 */  addiu      $a0, $s5, 0x58
/* 6A9C928 80081BF8 69D6000C */  jal        func_800359A4
/* 6A9C92C 80081BFC 04000524 */   addiu     $a1, $zero, 0x4
/* 6A9C930 80081C00 24024010 */  beqz       $v0, .Llevel_31_80082494
/* 6A9C934 80081C04 00000000 */   nop
/* 6A9C938 80081C08 79070208 */  j          .Llevel_31_80081DE4
/* 6A9C93C 80081C0C 00000000 */   nop
.Llevel_31_80081C10:
/* 6A9C940 80081C10 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6A9C944 80081C14 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6A9C948 80081C18 00000000 */  nop
/* 6A9C94C 80081C1C 12004010 */  beqz       $v0, .Llevel_31_80081C68
/* 6A9C950 80081C20 00000000 */   nop
/* 6A9C954 80081C24 8000A28E */  lw         $v0, 0x80($s5)
/* 6A9C958 80081C28 00000000 */  nop
/* 6A9C95C 80081C2C 08004014 */  bnez       $v0, .Llevel_31_80081C50
/* 6A9C960 80081C30 2120C002 */   addu      $a0, $s6, $zero
/* 6A9C964 80081C34 D0D3000C */  jal        func_80034F40
/* 6A9C968 80081C38 04000524 */   addiu     $a1, $zero, 0x4
/* 6A9C96C 80081C3C 03000424 */  addiu      $a0, $zero, 0x3
/* 6A9C970 80081C40 DBD8000C */  jal        func_8003636C
/* 6A9C974 80081C44 08000524 */   addiu     $a1, $zero, 0x8
/* 6A9C978 80081C48 1A070208 */  j          .Llevel_31_80081C68
/* 6A9C97C 80081C4C 8000A2AE */   sw        $v0, 0x80($s5)
.Llevel_31_80081C50:
/* 6A9C980 80081C50 D0D3000C */  jal        func_80034F40
/* 6A9C984 80081C54 21280000 */   addu      $a1, $zero, $zero
/* 6A9C988 80081C58 8000A28E */  lw         $v0, 0x80($s5)
/* 6A9C98C 80081C5C 00000000 */  nop
/* 6A9C990 80081C60 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6A9C994 80081C64 8000A2AE */  sw         $v0, 0x80($s5)
.Llevel_31_80081C68:
/* 6A9C998 80081C68 0000A392 */  lbu        $v1, 0x0($s5)
/* 6A9C99C 80081C6C 00000000 */  nop
/* 6A9C9A0 80081C70 05006010 */  beqz       $v1, .Llevel_31_80081C88
/* 6A9C9A4 80081C74 03000224 */   addiu     $v0, $zero, 0x3
/* 6A9C9A8 80081C78 27006210 */  beq        $v1, $v0, .Llevel_31_80081D18
/* 6A9C9AC 80081C7C 00000000 */   nop
/* 6A9C9B0 80081C80 53070208 */  j          .Llevel_31_80081D4C
/* 6A9C9B4 80081C84 04000224 */   addiu     $v0, $zero, 0x4
.Llevel_31_80081C88:
/* 6A9C9B8 80081C88 5C00A28E */  lw         $v0, 0x5C($s5)
/* 6A9C9BC 80081C8C 0780033C */  lui        $v1, %hi(func_level_31_800757BC)
/* 6A9C9C0 80081C90 BC576324 */  addiu      $v1, $v1, %lo(func_level_31_800757BC)
/* 6A9C9C4 80081C94 2B104300 */  sltu       $v0, $v0, $v1
/* 6A9C9C8 80081C98 1F004014 */  bnez       $v0, .Llevel_31_80081D18
/* 6A9C9CC 80081C9C 21280000 */   addu      $a1, $zero, $zero
/* 6A9C9D0 80081CA0 0980063C */  lui        $a2, %hi(D_level_31_8008FAF8)
/* 6A9C9D4 80081CA4 F8FAC624 */  addiu      $a2, $a2, %lo(D_level_31_8008FAF8)
.Llevel_31_80081CA8:
/* 6A9C9D8 80081CA8 5C00A38E */  lw         $v1, 0x5C($s5)
/* 6A9C9DC 80081CAC 00000000 */  nop
/* 6A9C9E0 80081CB0 2B106600 */  sltu       $v0, $v1, $a2
/* 6A9C9E4 80081CB4 18004010 */  beqz       $v0, .Llevel_31_80081D18
/* 6A9C9E8 80081CB8 21200000 */   addu      $a0, $zero, $zero
/* 6A9C9EC 80081CBC 00006290 */  lbu        $v0, 0x0($v1)
/* 6A9C9F0 80081CC0 4C00A38E */  lw         $v1, 0x4C($s5)
/* 6A9C9F4 80081CC4 00120200 */  sll        $v0, $v0, 8
/* 6A9C9F8 80081CC8 26186200 */  xor        $v1, $v1, $v0
/* 6A9C9FC 80081CCC 4C00A3AE */  sw         $v1, 0x4C($s5)
.Llevel_31_80081CD0:
/* 6A9CA00 80081CD0 4C00A38E */  lw         $v1, 0x4C($s5)
/* 6A9CA04 80081CD4 00000000 */  nop
/* 6A9CA08 80081CD8 00806230 */  andi       $v0, $v1, 0x8000
/* 6A9CA0C 80081CDC 02004010 */  beqz       $v0, .Llevel_31_80081CE8
/* 6A9CA10 80081CE0 40100300 */   sll       $v0, $v1, 1
/* 6A9CA14 80081CE4 05804238 */  xori       $v0, $v0, 0x8005
.Llevel_31_80081CE8:
/* 6A9CA18 80081CE8 4C00A2AE */  sw         $v0, 0x4C($s5)
/* 6A9CA1C 80081CEC 01008424 */  addiu      $a0, $a0, 0x1
/* 6A9CA20 80081CF0 08008228 */  slti       $v0, $a0, 0x8
/* 6A9CA24 80081CF4 F6FF4014 */  bnez       $v0, .Llevel_31_80081CD0
/* 6A9CA28 80081CF8 00000000 */   nop
/* 6A9CA2C 80081CFC 5C00A28E */  lw         $v0, 0x5C($s5)
/* 6A9CA30 80081D00 0100A524 */  addiu      $a1, $a1, 0x1
/* 6A9CA34 80081D04 01004224 */  addiu      $v0, $v0, 0x1
/* 6A9CA38 80081D08 5C00A2AE */  sw         $v0, 0x5C($s5)
/* 6A9CA3C 80081D0C 4000A228 */  slti       $v0, $a1, 0x40
/* 6A9CA40 80081D10 E5FF4014 */  bnez       $v0, .Llevel_31_80081CA8
/* 6A9CA44 80081D14 00000000 */   nop
.Llevel_31_80081D18:
/* 6A9CA48 80081D18 4000A38E */  lw         $v1, 0x40($s5)
/* 6A9CA4C 80081D1C 00000000 */  nop
/* 6A9CA50 80081D20 40100300 */  sll        $v0, $v1, 1
/* 6A9CA54 80081D24 21104300 */  addu       $v0, $v0, $v1
/* 6A9CA58 80081D28 80100200 */  sll        $v0, $v0, 2
/* 6A9CA5C 80081D2C 23104300 */  subu       $v0, $v0, $v1
/* 6A9CA60 80081D30 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6A9CA64 80081D34 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6A9CA68 80081D38 C0100200 */  sll        $v0, $v0, 3
/* 6A9CA6C 80081D3C 21104300 */  addu       $v0, $v0, $v1
/* 6A9CA70 80081D40 48004290 */  lbu        $v0, 0x48($v0)
/* 6A9CA74 80081D44 56070208 */  j          .Llevel_31_80081D58
/* 6A9CA78 80081D48 80004230 */   andi      $v0, $v0, 0x80
.Llevel_31_80081D4C:
/* 6A9CA7C 80081D4C 07006214 */  bne        $v1, $v0, .Llevel_31_80081D6C
/* 6A9CA80 80081D50 01000224 */   addiu     $v0, $zero, 0x1
/* 6A9CA84 80081D54 7800A28E */  lw         $v0, 0x78($s5)
.Llevel_31_80081D58:
/* 6A9CA88 80081D58 00000000 */  nop
/* 6A9CA8C 80081D5C 25004010 */  beqz       $v0, .Llevel_31_80081DF4
/* 6A9CA90 80081D60 02000224 */   addiu     $v0, $zero, 0x2
/* 6A9CA94 80081D64 7D070208 */  j          .Llevel_31_80081DF4
/* 6A9CA98 80081D68 0200A2A2 */   sb        $v0, 0x2($s5)
.Llevel_31_80081D6C:
/* 6A9CA9C 80081D6C 21006214 */  bne        $v1, $v0, .Llevel_31_80081DF4
/* 6A9CAA0 80081D70 00000000 */   nop
/* 6A9CAA4 80081D74 4900C292 */  lbu        $v0, 0x49($s6)
/* 6A9CAA8 80081D78 00000000 */  nop
/* 6A9CAAC 80081D7C 1D004014 */  bnez       $v0, .Llevel_31_80081DF4
/* 6A9CAB0 80081D80 00000000 */   nop
/* 6A9CAB4 80081D84 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 6A9CAB8 80081D88 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 6A9CABC 80081D8C 00000000 */  nop
/* 6A9CAC0 80081D90 01004230 */  andi       $v0, $v0, 0x1
/* 6A9CAC4 80081D94 0A004014 */  bnez       $v0, .Llevel_31_80081DC0
/* 6A9CAC8 80081D98 01000424 */   addiu     $a0, $zero, 0x1
/* 6A9CACC 80081D9C 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6A9CAD0 80081DA0 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6A9CAD4 80081DA4 0780013C */  lui        $at, %hi(D_80070300)
/* 6A9CAD8 80081DA8 21082200 */  addu       $at, $at, $v0
/* 6A9CADC 80081DAC 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 6A9CAE0 80081DB0 00000000 */  nop
/* 6A9CAE4 80081DB4 01004230 */  andi       $v0, $v0, 0x1
/* 6A9CAE8 80081DB8 0E004010 */  beqz       $v0, .Llevel_31_80081DF4
/* 6A9CAEC 80081DBC 00000000 */   nop
.Llevel_31_80081DC0:
/* 6A9CAF0 80081DC0 FC000524 */  addiu      $a1, $zero, 0xFC
/* 6A9CAF4 80081DC4 B687000C */  jal        func_80021ED8
/* 6A9CAF8 80081DC8 21300000 */   addu      $a2, $zero, $zero
/* 6A9CAFC 80081DCC 01000424 */  addiu      $a0, $zero, 0x1
/* 6A9CB00 80081DD0 13000524 */  addiu      $a1, $zero, 0x13
/* 6A9CB04 80081DD4 E387000C */  jal        func_80021F8C
/* 6A9CB08 80081DD8 21300000 */   addu      $a2, $zero, $zero
/* 6A9CB0C 80081DDC 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9CB10 80081DE0 4900C2A2 */  sb         $v0, 0x49($s6)
.Llevel_31_80081DE4:
/* 6A9CB14 80081DE4 C656010C */  jal        func_80055B18
/* 6A9CB18 80081DE8 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CB1C 80081DEC 25090208 */  j          .Llevel_31_80082494
/* 6A9CB20 80081DF0 00000000 */   nop
.Llevel_31_80081DF4:
/* 6A9CB24 80081DF4 0000A392 */  lbu        $v1, 0x0($s5)
/* 6A9CB28 80081DF8 02000224 */  addiu      $v0, $zero, 0x2
/* 6A9CB2C 80081DFC A7006214 */  bne        $v1, $v0, .Llevel_31_8008209C
/* 6A9CB30 80081E00 00000000 */   nop
/* 6A9CB34 80081E04 4900C292 */  lbu        $v0, 0x49($s6)
/* 6A9CB38 80081E08 00000000 */  nop
/* 6A9CB3C 80081E0C 8B004010 */  beqz       $v0, .Llevel_31_8008203C
/* 6A9CB40 80081E10 00000000 */   nop
/* 6A9CB44 80081E14 4800A28E */  lw         $v0, 0x48($s5)
/* 6A9CB48 80081E18 0780043C */  lui        $a0, %hi(D_8006C550)
/* 6A9CB4C 80081E1C 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 6A9CB50 80081E20 40180200 */  sll        $v1, $v0, 1
/* 6A9CB54 80081E24 21186200 */  addu       $v1, $v1, $v0
/* 6A9CB58 80081E28 80180300 */  sll        $v1, $v1, 2
/* 6A9CB5C 80081E2C 23186200 */  subu       $v1, $v1, $v0
/* 6A9CB60 80081E30 C0180300 */  sll        $v1, $v1, 3
/* 6A9CB64 80081E34 21186400 */  addu       $v1, $v1, $a0
/* 6A9CB68 80081E38 0000628C */  lw         $v0, 0x0($v1)
/* 6A9CB6C 80081E3C 00000000 */  nop
/* 6A9CB70 80081E40 0000428C */  lw         $v0, 0x0($v0)
/* 6A9CB74 80081E44 00000000 */  nop
/* 6A9CB78 80081E48 05004228 */  slti       $v0, $v0, 0x5
/* 6A9CB7C 80081E4C 2C004014 */  bnez       $v0, .Llevel_31_80081F00
/* 6A9CB80 80081E50 7800B026 */   addiu     $s0, $s5, 0x78
/* 6A9CB84 80081E54 21200002 */  addu       $a0, $s0, $zero
/* 6A9CB88 80081E58 04000524 */  addiu      $a1, $zero, 0x4
/* 6A9CB8C 80081E5C 0780123C */  lui        $s2, %hi(D_8006D088)
/* 6A9CB90 80081E60 88D05226 */  addiu      $s2, $s2, %lo(D_8006D088)
/* 6A9CB94 80081E64 21304002 */  addu       $a2, $s2, $zero
/* 6A9CB98 80081E68 20000224 */  addiu      $v0, $zero, 0x20
/* 6A9CB9C 80081E6C 4A00C2A2 */  sb         $v0, 0x4A($s6)
/* 6A9CBA0 80081E70 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9CBA4 80081E74 4900C0A2 */  sb         $zero, 0x49($s6)
/* 6A9CBA8 80081E78 7800A2AE */  sw         $v0, 0x78($s5)
/* 6A9CBAC 80081E7C 06000224 */  addiu      $v0, $zero, 0x6
/* 6A9CBB0 80081E80 0200A2A2 */  sb         $v0, 0x2($s5)
/* 6A9CBB4 80081E84 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9CBB8 80081E88 EDED000C */  jal        func_8003B7B4
/* 6A9CBBC 80081E8C 0500A2A2 */   sb        $v0, 0x5($s5)
/* 6A9CBC0 80081E90 21200002 */  addu       $a0, $s0, $zero
/* 6A9CBC4 80081E94 04000524 */  addiu      $a1, $zero, 0x4
/* 6A9CBC8 80081E98 0780113C */  lui        $s1, %hi(D_8006C7F8)
/* 6A9CBCC 80081E9C F8C73126 */  addiu      $s1, $s1, %lo(D_8006C7F8)
/* 6A9CBD0 80081EA0 EDED000C */  jal        func_8003B7B4
/* 6A9CBD4 80081EA4 21302002 */   addu      $a2, $s1, $zero
/* 6A9CBD8 80081EA8 0200B026 */  addiu      $s0, $s5, 0x2
/* 6A9CBDC 80081EAC 21200002 */  addu       $a0, $s0, $zero
/* 6A9CBE0 80081EB0 01000524 */  addiu      $a1, $zero, 0x1
/* 6A9CBE4 80081EB4 EDED000C */  jal        func_8003B7B4
/* 6A9CBE8 80081EB8 21304002 */   addu      $a2, $s2, $zero
/* 6A9CBEC 80081EBC 21200002 */  addu       $a0, $s0, $zero
/* 6A9CBF0 80081EC0 01000524 */  addiu      $a1, $zero, 0x1
/* 6A9CBF4 80081EC4 EDED000C */  jal        func_8003B7B4
/* 6A9CBF8 80081EC8 21302002 */   addu      $a2, $s1, $zero
/* 6A9CBFC 80081ECC 0500B026 */  addiu      $s0, $s5, 0x5
/* 6A9CC00 80081ED0 21200002 */  addu       $a0, $s0, $zero
/* 6A9CC04 80081ED4 01000524 */  addiu      $a1, $zero, 0x1
/* 6A9CC08 80081ED8 EDED000C */  jal        func_8003B7B4
/* 6A9CC0C 80081EDC 21304002 */   addu      $a2, $s2, $zero
/* 6A9CC10 80081EE0 21200002 */  addu       $a0, $s0, $zero
/* 6A9CC14 80081EE4 01000524 */  addiu      $a1, $zero, 0x1
/* 6A9CC18 80081EE8 EDED000C */  jal        func_8003B7B4
/* 6A9CC1C 80081EEC 21302002 */   addu      $a2, $s1, $zero
/* 6A9CC20 80081EF0 D3ED000C */  jal        func_8003B74C
/* 6A9CC24 80081EF4 21204002 */   addu      $a0, $s2, $zero
/* 6A9CC28 80081EF8 25090208 */  j          .Llevel_31_80082494
/* 6A9CC2C 80081EFC 00000000 */   nop
.Llevel_31_80081F00:
/* 6A9CC30 80081F00 4400A28E */  lw         $v0, 0x44($s5)
/* 6A9CC34 80081F04 00000000 */  nop
/* 6A9CC38 80081F08 40180200 */  sll        $v1, $v0, 1
/* 6A9CC3C 80081F0C 21186200 */  addu       $v1, $v1, $v0
/* 6A9CC40 80081F10 80180300 */  sll        $v1, $v1, 2
/* 6A9CC44 80081F14 23186200 */  subu       $v1, $v1, $v0
/* 6A9CC48 80081F18 C0180300 */  sll        $v1, $v1, 3
/* 6A9CC4C 80081F1C 21186400 */  addu       $v1, $v1, $a0
/* 6A9CC50 80081F20 0000628C */  lw         $v0, 0x0($v1)
/* 6A9CC54 80081F24 00000000 */  nop
/* 6A9CC58 80081F28 0000428C */  lw         $v0, 0x0($v0)
/* 6A9CC5C 80081F2C 00000000 */  nop
/* 6A9CC60 80081F30 05004228 */  slti       $v0, $v0, 0x5
/* 6A9CC64 80081F34 93004014 */  bnez       $v0, .Llevel_31_80082184
/* 6A9CC68 80081F38 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CC6C 80081F3C 20000224 */  addiu      $v0, $zero, 0x20
/* 6A9CC70 80081F40 4A00C2A2 */  sb         $v0, 0x4A($s6)
/* 6A9CC74 80081F44 5000A48E */  lw         $a0, 0x50($s5)
/* 6A9CC78 80081F48 55A0000C */  jal        func_80028154
/* 6A9CC7C 80081F4C 00000000 */   nop
/* 6A9CC80 80081F50 5400A48E */  lw         $a0, 0x54($s5)
/* 6A9CC84 80081F54 55A0000C */  jal        func_80028154
/* 6A9CC88 80081F58 00000000 */   nop
/* 6A9CC8C 80081F5C 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 6A9CC90 80081F60 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 6A9CC94 80081F64 0000C38E */  lw         $v1, 0x0($s6)
/* 6A9CC98 80081F68 08004234 */  ori        $v0, $v0, 0x8
/* 6A9CC9C 80081F6C 0780013C */  lui        $at, %hi(D_8006C7B4)
/* 6A9CCA0 80081F70 B4C722A0 */  sb         $v0, %lo(D_8006C7B4)($at)
/* 6A9CCA4 80081F74 02000224 */  addiu      $v0, $zero, 0x2
/* 6A9CCA8 80081F78 4900C0A2 */  sb         $zero, 0x49($s6)
/* 6A9CCAC 80081F7C 050062A0 */  sb         $v0, 0x5($v1)
/* 6A9CCB0 80081F80 4600C292 */  lbu        $v0, 0x46($s6)
/* 6A9CCB4 80081F84 00000000 */  nop
/* 6A9CCB8 80081F88 40100200 */  sll        $v0, $v0, 1
/* 6A9CCBC 80081F8C 0680013C */  lui        $at, %hi(D_80065920)
/* 6A9CCC0 80081F90 21082200 */  addu       $at, $at, $v0
/* 6A9CCC4 80081F94 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6A9CCC8 80081F98 2000A427 */  addiu      $a0, $sp, 0x20
/* 6A9CCCC 80081F9C 80100300 */  sll        $v0, $v1, 2
/* 6A9CCD0 80081FA0 21104300 */  addu       $v0, $v0, $v1
/* 6A9CCD4 80081FA4 C0100200 */  sll        $v0, $v0, 3
/* 6A9CCD8 80081FA8 23104300 */  subu       $v0, $v0, $v1
/* 6A9CCDC 80081FAC 83110200 */  sra        $v0, $v0, 6
/* 6A9CCE0 80081FB0 2000A2AF */  sw         $v0, 0x20($sp)
/* 6A9CCE4 80081FB4 4600C292 */  lbu        $v0, 0x46($s6)
/* 6A9CCE8 80081FB8 21288000 */  addu       $a1, $a0, $zero
/* 6A9CCEC 80081FBC 40100200 */  sll        $v0, $v0, 1
/* 6A9CCF0 80081FC0 0680013C */  lui        $at, %hi(D_800658A0)
/* 6A9CCF4 80081FC4 21082200 */  addu       $at, $at, $v0
/* 6A9CCF8 80081FC8 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6A9CCFC 80081FCC 0780023C */  lui        $v0, %hi(D_80070328 + 0x44)
/* 6A9CD00 80081FD0 6C03428C */  lw         $v0, %lo(D_80070328 + 0x44)($v0)
/* 6A9CD04 80081FD4 0C00C626 */  addiu      $a2, $s6, 0xC
/* 6A9CD08 80081FD8 2800A0AF */  sw         $zero, 0x28($sp)
/* 6A9CD0C 80081FDC 2800A2AF */  sw         $v0, 0x28($sp)
/* 6A9CD10 80081FE0 80100300 */  sll        $v0, $v1, 2
/* 6A9CD14 80081FE4 21104300 */  addu       $v0, $v0, $v1
/* 6A9CD18 80081FE8 C0100200 */  sll        $v0, $v0, 3
/* 6A9CD1C 80081FEC 23104300 */  subu       $v0, $v0, $v1
/* 6A9CD20 80081FF0 83110200 */  sra        $v0, $v0, 6
/* 6A9CD24 80081FF4 653C010C */  jal        func_8004F194
/* 6A9CD28 80081FF8 2400A2AF */   sw        $v0, 0x24($sp)
/* 6A9CD2C 80081FFC 2000A427 */  addiu      $a0, $sp, 0x20
/* 6A9CD30 80082000 21300000 */  addu       $a2, $zero, $zero
/* 6A9CD34 80082004 4600C592 */  lbu        $a1, 0x46($s6)
/* 6A9CD38 80082008 21380000 */  addu       $a3, $zero, $zero
/* 6A9CD3C 8008200C 8000A524 */  addiu      $a1, $a1, 0x80
/* 6A9CD40 80082010 514F000C */  jal        func_80013D44
/* 6A9CD44 80082014 FF00A530 */   andi      $a1, $a1, 0xFF
/* 6A9CD48 80082018 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 6A9CD4C 8008201C A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 6A9CD50 80082020 00000000 */  nop
/* 6A9CD54 80082024 57004104 */  bgez       $v0, .Llevel_31_80082184
/* 6A9CD58 80082028 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CD5C 8008202C 0780013C */  lui        $at, %hi(D_80070328 + 0x280)
/* 6A9CD60 80082030 A80520AC */  sw         $zero, %lo(D_80070328 + 0x280)($at)
/* 6A9CD64 80082034 60080208 */  j          .Llevel_31_80082180
/* 6A9CD68 80082038 00000000 */   nop
.Llevel_31_8008203C:
/* 6A9CD6C 8008203C 0200A392 */  lbu        $v1, 0x2($s5)
/* 6A9CD70 80082040 00000000 */  nop
/* 6A9CD74 80082044 0400622C */  sltiu      $v0, $v1, 0x4
/* 6A9CD78 80082048 4E004010 */  beqz       $v0, .Llevel_31_80082184
/* 6A9CD7C 8008204C 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CD80 80082050 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 6A9CD84 80082054 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 6A9CD88 80082058 00000000 */  nop
/* 6A9CD8C 8008205C 08004230 */  andi       $v0, $v0, 0x8
/* 6A9CD90 80082060 03004010 */  beqz       $v0, .Llevel_31_80082070
/* 6A9CD94 80082064 05000224 */   addiu     $v0, $zero, 0x5
/* 6A9CD98 80082068 61080208 */  j          .Llevel_31_80082184
/* 6A9CD9C 8008206C 0200A2A2 */   sb        $v0, 0x2($s5)
.Llevel_31_80082070:
/* 6A9CDA0 80082070 7800A28E */  lw         $v0, 0x78($s5)
/* 6A9CDA4 80082074 00000000 */  nop
/* 6A9CDA8 80082078 06004010 */  beqz       $v0, .Llevel_31_80082094
/* 6A9CDAC 8008207C 00000000 */   nop
/* 6A9CDB0 80082080 40006014 */  bnez       $v1, .Llevel_31_80082184
/* 6A9CDB4 80082084 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CDB8 80082088 07000224 */  addiu      $v0, $zero, 0x7
/* 6A9CDBC 8008208C 61080208 */  j          .Llevel_31_80082184
/* 6A9CDC0 80082090 0200A2A2 */   sb        $v0, 0x2($s5)
.Llevel_31_80082094:
/* 6A9CDC4 80082094 60080208 */  j          .Llevel_31_80082180
/* 6A9CDC8 80082098 0200A0A2 */   sb        $zero, 0x2($s5)
.Llevel_31_8008209C:
/* 6A9CDCC 8008209C 39006014 */  bnez       $v1, .Llevel_31_80082184
/* 6A9CDD0 800820A0 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CDD4 800820A4 5C00A28E */  lw         $v0, 0x5C($s5)
/* 6A9CDD8 800820A8 00000000 */  nop
/* 6A9CDDC 800820AC 08004014 */  bnez       $v0, .Llevel_31_800820D0
/* 6A9CDE0 800820B0 00000000 */   nop
/* 6A9CDE4 800820B4 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 6A9CDE8 800820B8 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 6A9CDEC 800820BC 0180033C */  lui        $v1, %hi(main_TEXT_START + 0x2)
/* 6A9CDF0 800820C0 0E206324 */  addiu      $v1, $v1, %lo(main_TEXT_START + 0x2)
/* 6A9CDF4 800820C4 21104300 */  addu       $v0, $v0, $v1
/* 6A9CDF8 800820C8 5C00A2AE */  sw         $v0, 0x5C($s5)
/* 6A9CDFC 800820CC 5C00A28E */  lw         $v0, 0x5C($s5)
.Llevel_31_800820D0:
/* 6A9CE00 800820D0 0680033C */  lui        $v1, %hi(main_TEXT_END)
/* 6A9CE04 800820D4 9C4F6324 */  addiu      $v1, $v1, %lo(main_TEXT_END)
/* 6A9CE08 800820D8 2B104300 */  sltu       $v0, $v0, $v1
/* 6A9CE0C 800820DC 28004010 */  beqz       $v0, .Llevel_31_80082180
/* 6A9CE10 800820E0 21280000 */   addu      $a1, $zero, $zero
/* 6A9CE14 800820E4 21306000 */  addu       $a2, $v1, $zero
.Llevel_31_800820E8:
/* 6A9CE18 800820E8 5C00A38E */  lw         $v1, 0x5C($s5)
/* 6A9CE1C 800820EC 00000000 */  nop
/* 6A9CE20 800820F0 2B106600 */  sltu       $v0, $v1, $a2
/* 6A9CE24 800820F4 1F004010 */  beqz       $v0, .Llevel_31_80082174
/* 6A9CE28 800820F8 21200000 */   addu      $a0, $zero, $zero
/* 6A9CE2C 800820FC 00006290 */  lbu        $v0, 0x0($v1)
/* 6A9CE30 80082100 4C00A38E */  lw         $v1, 0x4C($s5)
/* 6A9CE34 80082104 00120200 */  sll        $v0, $v0, 8
/* 6A9CE38 80082108 26186200 */  xor        $v1, $v1, $v0
/* 6A9CE3C 8008210C 4C00A3AE */  sw         $v1, 0x4C($s5)
.Llevel_31_80082110:
/* 6A9CE40 80082110 4C00A38E */  lw         $v1, 0x4C($s5)
/* 6A9CE44 80082114 00000000 */  nop
/* 6A9CE48 80082118 00806230 */  andi       $v0, $v1, 0x8000
/* 6A9CE4C 8008211C 02004010 */  beqz       $v0, .Llevel_31_80082128
/* 6A9CE50 80082120 40100300 */   sll       $v0, $v1, 1
/* 6A9CE54 80082124 05804238 */  xori       $v0, $v0, 0x8005
.Llevel_31_80082128:
/* 6A9CE58 80082128 4C00A2AE */  sw         $v0, 0x4C($s5)
/* 6A9CE5C 8008212C 01008424 */  addiu      $a0, $a0, 0x1
/* 6A9CE60 80082130 08008228 */  slti       $v0, $a0, 0x8
/* 6A9CE64 80082134 F6FF4014 */  bnez       $v0, .Llevel_31_80082110
/* 6A9CE68 80082138 00000000 */   nop
/* 6A9CE6C 8008213C 0100A524 */  addiu      $a1, $a1, 0x1
/* 6A9CE70 80082140 4C00A28E */  lw         $v0, 0x4C($s5)
/* 6A9CE74 80082144 5C00A38E */  lw         $v1, 0x5C($s5)
/* 6A9CE78 80082148 03004230 */  andi       $v0, $v0, 0x3
/* 6A9CE7C 8008214C 01004224 */  addiu      $v0, $v0, 0x1
/* 6A9CE80 80082150 21186200 */  addu       $v1, $v1, $v0
/* 6A9CE84 80082154 4000A228 */  slti       $v0, $a1, 0x40
/* 6A9CE88 80082158 E3FF4014 */  bnez       $v0, .Llevel_31_800820E8
/* 6A9CE8C 8008215C 5C00A3AE */   sw        $v1, 0x5C($s5)
/* 6A9CE90 80082160 0680023C */  lui        $v0, %hi(main_TEXT_END)
/* 6A9CE94 80082164 9C4F4224 */  addiu      $v0, $v0, %lo(main_TEXT_END)
/* 6A9CE98 80082168 2B106200 */  sltu       $v0, $v1, $v0
/* 6A9CE9C 8008216C 05004014 */  bnez       $v0, .Llevel_31_80082184
/* 6A9CEA0 80082170 2120C002 */   addu      $a0, $s6, $zero
.Llevel_31_80082174:
/* 6A9CEA4 80082174 0780023C */  lui        $v0, %hi(func_level_31_800757BC)
/* 6A9CEA8 80082178 BC574224 */  addiu      $v0, $v0, %lo(func_level_31_800757BC)
/* 6A9CEAC 8008217C 5C00A2AE */  sw         $v0, 0x5C($s5)
.Llevel_31_80082180:
/* 6A9CEB0 80082180 2120C002 */  addu       $a0, $s6, $zero
.Llevel_31_80082184:
/* 6A9CEB4 80082184 EFDE000C */  jal        func_80037BBC
/* 6A9CEB8 80082188 21280000 */   addu      $a1, $zero, $zero
/* 6A9CEBC 8008218C C1004010 */  beqz       $v0, .Llevel_31_80082494
/* 6A9CEC0 80082190 01000224 */   addiu     $v0, $zero, 0x1
/* 6A9CEC4 80082194 0000A392 */  lbu        $v1, 0x0($s5)
/* 6A9CEC8 80082198 00000000 */  nop
/* 6A9CECC 8008219C 07006214 */  bne        $v1, $v0, .Llevel_31_800821BC
/* 6A9CED0 800821A0 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CED4 800821A4 0780023C */  lui        $v0, %hi(D_8006C7B4)
/* 6A9CED8 800821A8 B4C74290 */  lbu        $v0, %lo(D_8006C7B4)($v0)
/* 6A9CEDC 800821AC 00000000 */  nop
/* 6A9CEE0 800821B0 01004234 */  ori        $v0, $v0, 0x1
/* 6A9CEE4 800821B4 0780013C */  lui        $at, %hi(D_8006C7B4)
/* 6A9CEE8 800821B8 B4C722A0 */  sb         $v0, %lo(D_8006C7B4)($at)
.Llevel_31_800821BC:
/* 6A9CEEC 800821BC 21280000 */  addu       $a1, $zero, $zero
/* 6A9CEF0 800821C0 B944010C */  jal        func_800512E4
/* 6A9CEF4 800821C4 01000624 */   addiu     $a2, $zero, 0x1
/* 6A9CEF8 800821C8 51000224 */  addiu      $v0, $zero, 0x51
/* 6A9CEFC 800821CC 25090208 */  j          .Llevel_31_80082494
/* 6A9CF00 800821D0 4800C2A2 */   sb        $v0, 0x48($s6)
.Llevel_31_800821D4:
/* 6A9CF04 800821D4 0780023C */  lui        $v0, %hi(D_8006E344)
/* 6A9CF08 800821D8 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 6A9CF0C 800821DC 01001024 */  addiu      $s0, $zero, 0x1
/* 6A9CF10 800821E0 AC005010 */  beq        $v0, $s0, .Llevel_31_80082494
/* 6A9CF14 800821E4 2120C002 */   addu      $a0, $s6, $zero
/* 6A9CF18 800821E8 D0D3000C */  jal        func_80034F40
/* 6A9CF1C 800821EC 21280000 */   addu      $a1, $zero, $zero
/* 6A9CF20 800821F0 0000A292 */  lbu        $v0, 0x0($s5)
/* 6A9CF24 800821F4 00000000 */  nop
/* 6A9CF28 800821F8 11005014 */  bne        $v0, $s0, .Llevel_31_80082240
/* 6A9CF2C 800821FC 00000000 */   nop
/* 6A9CF30 80082200 0400A292 */  lbu        $v0, 0x4($s5)
/* 6A9CF34 80082204 00000000 */  nop
/* 6A9CF38 80082208 0D004014 */  bnez       $v0, .Llevel_31_80082240
/* 6A9CF3C 8008220C 00000000 */   nop
/* 6A9CF40 80082210 3C00A28E */  lw         $v0, 0x3C($s5)
/* 6A9CF44 80082214 00000000 */  nop
/* 6A9CF48 80082218 0C00448C */  lw         $a0, 0xC($v0)
/* 6A9CF4C 8008221C B94E000C */  jal        func_80013AE4
/* 6A9CF50 80082220 10008524 */   addiu     $a1, $a0, 0x10
/* 6A9CF54 80082224 78000224 */  addiu      $v0, $zero, 0x78
/* 6A9CF58 80082228 5800A2AE */  sw         $v0, 0x58($s5)
/* 6A9CF5C 8008222C FF000224 */  addiu      $v0, $zero, 0xFF
/* 6A9CF60 80082230 4A00C2A2 */  sb         $v0, 0x4A($s6)
/* 6A9CF64 80082234 52000224 */  addiu      $v0, $zero, 0x52
/* 6A9CF68 80082238 25090208 */  j          .Llevel_31_80082494
/* 6A9CF6C 8008223C 4800C2A2 */   sb        $v0, 0x48($s6)
.Llevel_31_80082240:
/* 6A9CF70 80082240 0000A392 */  lbu        $v1, 0x0($s5)
/* 6A9CF74 80082244 02000224 */  addiu      $v0, $zero, 0x2
/* 6A9CF78 80082248 57006214 */  bne        $v1, $v0, .Llevel_31_800823A8
/* 6A9CF7C 8008224C 01000224 */   addiu     $v0, $zero, 0x1
/* 6A9CF80 80082250 0400A392 */  lbu        $v1, 0x4($s5)
/* 6A9CF84 80082254 00000000 */  nop
/* 6A9CF88 80082258 53006214 */  bne        $v1, $v0, .Llevel_31_800823A8
/* 6A9CF8C 8008225C 21300000 */   addu      $a2, $zero, $zero
/* 6A9CF90 80082260 3C00A28E */  lw         $v0, 0x3C($s5)
/* 6A9CF94 80082264 00000000 */  nop
/* 6A9CF98 80082268 0C00428C */  lw         $v0, 0xC($v0)
/* 6A9CF9C 8008226C 00000000 */  nop
/* 6A9CFA0 80082270 1000478C */  lw         $a3, 0x10($v0)
/* 6A9CFA4 80082274 0000448C */  lw         $a0, 0x0($v0)
/* 6A9CFA8 80082278 1400438C */  lw         $v1, 0x14($v0)
/* 6A9CFAC 8008227C 0400458C */  lw         $a1, 0x4($v0)
/* 6A9CFB0 80082280 2320E400 */  subu       $a0, $a3, $a0
/* 6A9CFB4 80082284 203A010C */  jal        func_8004E880
/* 6A9CFB8 80082288 23286500 */   subu      $a1, $v1, $a1
/* 6A9CFBC 8008228C 21284000 */  addu       $a1, $v0, $zero
/* 6A9CFC0 80082290 3C00A28E */  lw         $v0, 0x3C($s5)
/* 6A9CFC4 80082294 21300000 */  addu       $a2, $zero, $zero
/* 6A9CFC8 80082298 0C00448C */  lw         $a0, 0xC($v0)
/* 6A9CFCC 8008229C 514F000C */  jal        func_80013D44
/* 6A9CFD0 800822A0 21380000 */   addu      $a3, $zero, $zero
/* 6A9CFD4 800822A4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6A9CFD8 800822A8 4A00C2A2 */  sb         $v0, 0x4A($s6)
/* 6A9CFDC 800822AC 1E000224 */  addiu      $v0, $zero, 0x1E
/* 6A9CFE0 800822B0 25090208 */  j          .Llevel_31_80082494
/* 6A9CFE4 800822B4 4800C2A2 */   sb        $v0, 0x48($s6)
.Llevel_31_800822B8:
/* 6A9CFE8 800822B8 0780023C */  lui        $v0, %hi(unk_ovlheader_8007434C)
/* 6A9CFEC 800822BC 4C43428C */  lw         $v0, %lo(unk_ovlheader_8007434C)($v0)
/* 6A9CFF0 800822C0 00000000 */  nop
/* 6A9CFF4 800822C4 09F84000 */  jalr       $v0
/* 6A9CFF8 800822C8 3000A526 */   addiu     $a1, $s5, 0x30
/* 6A9CFFC 800822CC 25090208 */  j          .Llevel_31_80082494
/* 6A9D000 800822D0 00000000 */   nop
.Llevel_31_800822D4:
/* 6A9D004 800822D4 0780033C */  lui        $v1, %hi(D_8006E044)
/* 6A9D008 800822D8 44E0638C */  lw         $v1, %lo(D_8006E044)($v1)
/* 6A9D00C 800822DC 0B000224 */  addiu      $v0, $zero, 0xB
/* 6A9D010 800822E0 33006210 */  beq        $v1, $v0, .Llevel_31_800823B0
/* 6A9D014 800822E4 15000424 */   addiu     $a0, $zero, 0x15
/* 6A9D018 800822E8 38010524 */  addiu      $a1, $zero, 0x138
/* 6A9D01C 800822EC 0280143C */  lui        $s4, %hi(func_80027E40)
/* 6A9D020 800822F0 407E9426 */  addiu      $s4, $s4, %lo(func_80027E40)
/* 6A9D024 800822F4 21308002 */  addu       $a2, $s4, $zero
/* 6A9D028 800822F8 0280133C */  lui        $s3, %hi(func_80027A60)
/* 6A9D02C 800822FC 607A7326 */  addiu      $s3, $s3, %lo(func_80027A60)
/* 6A9D030 80082300 21386002 */  addu       $a3, $s3, $zero
/* 6A9D034 80082304 0380103C */  lui        $s0, %hi(func_80029904)
/* 6A9D038 80082308 04991026 */  addiu      $s0, $s0, %lo(func_80029904)
/* 6A9D03C 8008230C 4800A28E */  lw         $v0, 0x48($s5)
/* 6A9D040 80082310 0780093C */  lui        $t1, %hi(D_8006C550)
/* 6A9D044 80082314 50C5298D */  lw         $t1, %lo(D_8006C550)($t1)
/* 6A9D048 80082318 4400A88E */  lw         $t0, 0x44($s5)
/* 6A9D04C 8008231C 40180200 */  sll        $v1, $v0, 1
/* 6A9D050 80082320 21186200 */  addu       $v1, $v1, $v0
/* 6A9D054 80082324 80180300 */  sll        $v1, $v1, 2
/* 6A9D058 80082328 23186200 */  subu       $v1, $v1, $v0
/* 6A9D05C 8008232C C0180300 */  sll        $v1, $v1, 3
/* 6A9D060 80082330 21186900 */  addu       $v1, $v1, $t1
/* 6A9D064 80082334 40100800 */  sll        $v0, $t0, 1
/* 6A9D068 80082338 21104800 */  addu       $v0, $v0, $t0
/* 6A9D06C 8008233C 80100200 */  sll        $v0, $v0, 2
/* 6A9D070 80082340 23104800 */  subu       $v0, $v0, $t0
/* 6A9D074 80082344 C0100200 */  sll        $v0, $v0, 3
/* 6A9D078 80082348 21104900 */  addu       $v0, $v0, $t1
/* 6A9D07C 8008234C 0000728C */  lw         $s2, 0x0($v1)
/* 6A9D080 80082350 0000428C */  lw         $v0, 0x0($v0)
/* 6A9D084 80082354 05001124 */  addiu      $s1, $zero, 0x5
/* 6A9D088 80082358 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A9D08C 8008235C 1800B1AF */  sw         $s1, 0x18($sp)
/* 6A9D090 80082360 0FA0000C */  jal        func_8002803C
/* 6A9D094 80082364 1400A2AF */   sw        $v0, 0x14($sp)
/* 6A9D098 80082368 17000424 */  addiu      $a0, $zero, 0x17
/* 6A9D09C 8008236C 39010524 */  addiu      $a1, $zero, 0x139
/* 6A9D0A0 80082370 21308002 */  addu       $a2, $s4, $zero
/* 6A9D0A4 80082374 21386002 */  addu       $a3, $s3, $zero
/* 6A9D0A8 80082378 00140200 */  sll        $v0, $v0, 16
/* 6A9D0AC 8008237C 03140200 */  sra        $v0, $v0, 16
/* 6A9D0B0 80082380 5000A2AE */  sw         $v0, 0x50($s5)
/* 6A9D0B4 80082384 1000B0AF */  sw         $s0, 0x10($sp)
/* 6A9D0B8 80082388 1400B2AF */  sw         $s2, 0x14($sp)
/* 6A9D0BC 8008238C 0FA0000C */  jal        func_8002803C
/* 6A9D0C0 80082390 1800B1AF */   sw        $s1, 0x18($sp)
/* 6A9D0C4 80082394 00140200 */  sll        $v0, $v0, 16
/* 6A9D0C8 80082398 03140200 */  sra        $v0, $v0, 16
/* 6A9D0CC 8008239C 5400A2AE */  sw         $v0, 0x54($s5)
/* 6A9D0D0 800823A0 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9D0D4 800823A4 4900C2A2 */  sb         $v0, 0x49($s6)
.Llevel_31_800823A8:
/* 6A9D0D8 800823A8 25090208 */  j          .Llevel_31_80082494
/* 6A9D0DC 800823AC 4800C0A2 */   sb        $zero, 0x48($s6)
.Llevel_31_800823B0:
/* 6A9D0E0 800823B0 0780023C */  lui        $v0, %hi(D_8006E048)
/* 6A9D0E4 800823B4 48E0428C */  lw         $v0, %lo(D_8006E048)($v0)
/* 6A9D0E8 800823B8 00000000 */  nop
/* 6A9D0EC 800823BC 01004230 */  andi       $v0, $v0, 0x1
/* 6A9D0F0 800823C0 34004010 */  beqz       $v0, .Llevel_31_80082494
/* 6A9D0F4 800823C4 00000000 */   nop
/* 6A9D0F8 800823C8 4000A38E */  lw         $v1, 0x40($s5)
/* 6A9D0FC 800823CC 0780043C */  lui        $a0, %hi(D_8006C550)
/* 6A9D100 800823D0 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 6A9D104 800823D4 40100300 */  sll        $v0, $v1, 1
/* 6A9D108 800823D8 21104300 */  addu       $v0, $v0, $v1
/* 6A9D10C 800823DC 80100200 */  sll        $v0, $v0, 2
/* 6A9D110 800823E0 23104300 */  subu       $v0, $v0, $v1
/* 6A9D114 800823E4 C0100200 */  sll        $v0, $v0, 3
/* 6A9D118 800823E8 3C00A38E */  lw         $v1, 0x3C($s5)
/* 6A9D11C 800823EC 21208200 */  addu       $a0, $a0, $v0
/* 6A9D120 800823F0 0C00658C */  lw         $a1, 0xC($v1)
/* 6A9D124 800823F4 0C008424 */  addiu      $a0, $a0, 0xC
/* 6A9D128 800823F8 5E3C010C */  jal        func_8004F178
/* 6A9D12C 800823FC 1000A524 */   addiu     $a1, $a1, 0x10
/* 6A9D130 80082400 3C00A28E */  lw         $v0, 0x3C($s5)
/* 6A9D134 80082404 00000000 */  nop
/* 6A9D138 80082408 0C00428C */  lw         $v0, 0xC($v0)
/* 6A9D13C 8008240C 21300000 */  addu       $a2, $zero, $zero
/* 6A9D140 80082410 0000478C */  lw         $a3, 0x0($v0)
/* 6A9D144 80082414 1000448C */  lw         $a0, 0x10($v0)
/* 6A9D148 80082418 0400438C */  lw         $v1, 0x4($v0)
/* 6A9D14C 8008241C 1400458C */  lw         $a1, 0x14($v0)
/* 6A9D150 80082420 2320E400 */  subu       $a0, $a3, $a0
/* 6A9D154 80082424 203A010C */  jal        func_8004E880
/* 6A9D158 80082428 23286500 */   subu      $a1, $v1, $a1
/* 6A9D15C 8008242C 25090208 */  j          .Llevel_31_80082494
/* 6A9D160 80082430 4600C2A2 */   sb        $v0, 0x46($s6)
.Llevel_31_80082434:
/* 6A9D164 80082434 69D6000C */  jal        func_800359A4
/* 6A9D168 80082438 04000524 */   addiu     $a1, $zero, 0x4
/* 6A9D16C 8008243C 15004010 */  beqz       $v0, .Llevel_31_80082494
/* 6A9D170 80082440 00000000 */   nop
/* 6A9D174 80082444 4900C292 */  lbu        $v0, 0x49($s6)
/* 6A9D178 80082448 00000000 */  nop
/* 6A9D17C 8008244C 06004010 */  beqz       $v0, .Llevel_31_80082468
/* 6A9D180 80082450 2120C002 */   addu      $a0, $s6, $zero
/* 6A9D184 80082454 DF4E000C */  jal        func_80013B7C
/* 6A9D188 80082458 01000424 */   addiu     $a0, $zero, 0x1
/* 6A9D18C 8008245C 53000224 */  addiu      $v0, $zero, 0x53
/* 6A9D190 80082460 25090208 */  j          .Llevel_31_80082494
/* 6A9D194 80082464 4800C2A2 */   sb        $v0, 0x48($s6)
.Llevel_31_80082468:
/* 6A9D198 80082468 06000524 */  addiu      $a1, $zero, 0x6
/* 6A9D19C 8008246C 01000624 */  addiu      $a2, $zero, 0x1
/* 6A9D1A0 80082470 B4000224 */  addiu      $v0, $zero, 0xB4
/* 6A9D1A4 80082474 C4EE000C */  jal        func_8003BB10
/* 6A9D1A8 80082478 5800A2AE */   sw        $v0, 0x58($s5)
/* 6A9D1AC 8008247C 01000424 */  addiu      $a0, $zero, 0x1
/* 6A9D1B0 80082480 FC000524 */  addiu      $a1, $zero, 0xFC
/* 6A9D1B4 80082484 B687000C */  jal        func_80021ED8
/* 6A9D1B8 80082488 21300000 */   addu      $a2, $zero, $zero
/* 6A9D1BC 8008248C 01000224 */  addiu      $v0, $zero, 0x1
/* 6A9D1C0 80082490 4900C2A2 */  sb         $v0, 0x49($s6)
.Llevel_31_80082494:
/* 6A9D1C4 80082494 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 6A9D1C8 80082498 4800B68F */  lw         $s6, 0x48($sp)
/* 6A9D1CC 8008249C 4400B58F */  lw         $s5, 0x44($sp)
/* 6A9D1D0 800824A0 4000B48F */  lw         $s4, 0x40($sp)
/* 6A9D1D4 800824A4 3C00B38F */  lw         $s3, 0x3C($sp)
/* 6A9D1D8 800824A8 3800B28F */  lw         $s2, 0x38($sp)
/* 6A9D1DC 800824AC 3400B18F */  lw         $s1, 0x34($sp)
/* 6A9D1E0 800824B0 3000B08F */  lw         $s0, 0x30($sp)
/* 6A9D1E4 800824B4 5000BD27 */  addiu      $sp, $sp, 0x50
/* 6A9D1E8 800824B8 0800E003 */  jr         $ra
/* 6A9D1EC 800824BC 00000000 */   nop
.size func_level_31_80081920, . - func_level_31_80081920
