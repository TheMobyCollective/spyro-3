.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_601_level_18
/* 4EB47B4 80081A84 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4EB47B8 80081A88 6000B2AF */  sw         $s2, 0x60($sp)
/* 4EB47BC 80081A8C 21908000 */  addu       $s2, $a0, $zero
/* 4EB47C0 80081A90 6800BFAF */  sw         $ra, 0x68($sp)
/* 4EB47C4 80081A94 6400B3AF */  sw         $s3, 0x64($sp)
/* 4EB47C8 80081A98 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 4EB47CC 80081A9C 5800B0AF */  sw         $s0, 0x58($sp)
/* 4EB47D0 80081AA0 0C00468E */  lw         $a2, 0xC($s2)
/* 4EB47D4 80081AA4 0000508E */  lw         $s0, 0x0($s2)
/* 4EB47D8 80081AA8 20000224 */  addiu      $v0, $zero, 0x20
/* 4EB47DC 80081AAC 4F0042A2 */  sb         $v0, 0x4F($s2)
/* 4EB47E0 80081AB0 0004C228 */  slti       $v0, $a2, 0x400
/* 4EB47E4 80081AB4 C0004014 */  bnez       $v0, .Llevel_18_80081DB8
/* 4EB47E8 80081AB8 00000000 */   nop
/* 4EB47EC 80081ABC 1000458E */  lw         $a1, 0x10($s2)
/* 4EB47F0 80081AC0 00000000 */  nop
/* 4EB47F4 80081AC4 0004A228 */  slti       $v0, $a1, 0x400
/* 4EB47F8 80081AC8 BB004014 */  bnez       $v0, .Llevel_18_80081DB8
/* 4EB47FC 80081ACC 00000000 */   nop
/* 4EB4800 80081AD0 1400448E */  lw         $a0, 0x14($s2)
/* 4EB4804 80081AD4 00000000 */  nop
/* 4EB4808 80081AD8 00048228 */  slti       $v0, $a0, 0x400
/* 4EB480C 80081ADC B6004014 */  bnez       $v0, .Llevel_18_80081DB8
/* 4EB4810 80081AE0 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 4EB4814 80081AE4 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 4EB4818 80081AE8 2A106600 */  slt        $v0, $v1, $a2
/* 4EB481C 80081AEC B2004014 */  bnez       $v0, .Llevel_18_80081DB8
/* 4EB4820 80081AF0 2A106500 */   slt       $v0, $v1, $a1
/* 4EB4824 80081AF4 B0004014 */  bnez       $v0, .Llevel_18_80081DB8
/* 4EB4828 80081AF8 2A106400 */   slt       $v0, $v1, $a0
/* 4EB482C 80081AFC AE004014 */  bnez       $v0, .Llevel_18_80081DB8
/* 4EB4830 80081B00 0EEA043C */   lui       $a0, (0xEA0EA0EB >> 16)
/* 4EB4834 80081B04 0C00038E */  lw         $v1, 0xC($s0)
/* 4EB4838 80081B08 EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
/* 4EB483C 80081B0C 00120300 */  sll        $v0, $v1, 8
/* 4EB4840 80081B10 23104300 */  subu       $v0, $v0, $v1
/* 4EB4844 80081B14 18004400 */  mult       $v0, $a0
/* 4EB4848 80081B18 10480000 */  mfhi       $t1
/* 4EB484C 80081B1C 21182201 */  addu       $v1, $t1, $v0
/* 4EB4850 80081B20 43190300 */  sra        $v1, $v1, 5
/* 4EB4854 80081B24 C3170200 */  sra        $v0, $v0, 31
/* 4EB4858 80081B28 23386200 */  subu       $a3, $v1, $v0
/* 4EB485C 80081B2C 0001E228 */  slti       $v0, $a3, 0x100
/* 4EB4860 80081B30 03004014 */  bnez       $v0, .Llevel_18_80081B40
/* 4EB4864 80081B34 00000000 */   nop
/* 4EB4868 80081B38 D3060208 */  j          .Llevel_18_80081B4C
/* 4EB486C 80081B3C FF000724 */   addiu     $a3, $zero, 0xFF
.Llevel_18_80081B40:
/* 4EB4870 80081B40 0300E104 */  bgez       $a3, .Llevel_18_80081B50
/* 4EB4874 80081B44 0EEA043C */   lui       $a0, (0xEA0EA0EB >> 16)
/* 4EB4878 80081B48 21380000 */  addu       $a3, $zero, $zero
.Llevel_18_80081B4C:
/* 4EB487C 80081B4C 0EEA043C */  lui        $a0, (0xEA0EA0EB >> 16)
.Llevel_18_80081B50:
/* 4EB4880 80081B50 0C00038E */  lw         $v1, 0xC($s0)
/* 4EB4884 80081B54 EBA08434 */  ori        $a0, $a0, (0xEA0EA0EB & 0xFFFF)
/* 4EB4888 80081B58 00110300 */  sll        $v0, $v1, 4
/* 4EB488C 80081B5C 23104300 */  subu       $v0, $v0, $v1
/* 4EB4890 80081B60 18004400 */  mult       $v0, $a0
/* 4EB4894 80081B64 10480000 */  mfhi       $t1
/* 4EB4898 80081B68 21182201 */  addu       $v1, $t1, $v0
/* 4EB489C 80081B6C 43190300 */  sra        $v1, $v1, 5
/* 4EB48A0 80081B70 C3170200 */  sra        $v0, $v0, 31
/* 4EB48A4 80081B74 23186200 */  subu       $v1, $v1, $v0
/* 4EB48A8 80081B78 01000424 */  addiu      $a0, $zero, 0x1
/* 4EB48AC 80081B7C 0C000524 */  addiu      $a1, $zero, 0xC
/* 4EB48B0 80081B80 21304002 */  addu       $a2, $s2, $zero
/* 4EB48B4 80081B84 3F000224 */  addiu      $v0, $zero, 0x3F
/* 4EB48B8 80081B88 540047A2 */  sb         $a3, 0x54($s2)
/* 4EB48BC 80081B8C 550040A2 */  sb         $zero, 0x55($s2)
/* 4EB48C0 80081B90 560040A2 */  sb         $zero, 0x56($s2)
/* 4EB48C4 80081B94 570042A2 */  sb         $v0, 0x57($s2)
/* 4EB48C8 80081B98 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 4EB48CC 80081B9C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 4EB48D0 80081BA0 00000000 */  nop
/* 4EB48D4 80081BA4 09F84000 */  jalr       $v0
/* 4EB48D8 80081BA8 04000724 */   addiu     $a3, $zero, 0x4
/* 4EB48DC 80081BAC 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EB48E0 80081BB0 0C005126 */  addiu      $s1, $s2, 0xC
/* 4EB48E4 80081BB4 5E3C010C */  jal        func_8004F178
/* 4EB48E8 80081BB8 21282002 */   addu      $a1, $s1, $zero
/* 4EB48EC 80081BBC 0C00428E */  lw         $v0, 0xC($s2)
/* 4EB48F0 80081BC0 0000038E */  lw         $v1, 0x0($s0)
/* 4EB48F4 80081BC4 00000000 */  nop
/* 4EB48F8 80081BC8 21104300 */  addu       $v0, $v0, $v1
/* 4EB48FC 80081BCC 0C0042AE */  sw         $v0, 0xC($s2)
/* 4EB4900 80081BD0 1000428E */  lw         $v0, 0x10($s2)
/* 4EB4904 80081BD4 0400038E */  lw         $v1, 0x4($s0)
/* 4EB4908 80081BD8 00000000 */  nop
/* 4EB490C 80081BDC 21104300 */  addu       $v0, $v0, $v1
/* 4EB4910 80081BE0 100042AE */  sw         $v0, 0x10($s2)
/* 4EB4914 80081BE4 1400428E */  lw         $v0, 0x14($s2)
/* 4EB4918 80081BE8 0800038E */  lw         $v1, 0x8($s0)
/* 4EB491C 80081BEC 48004492 */  lbu        $a0, 0x48($s2)
/* 4EB4920 80081BF0 21104300 */  addu       $v0, $v0, $v1
/* 4EB4924 80081BF4 6C008014 */  bnez       $a0, .Llevel_18_80081DA8
/* 4EB4928 80081BF8 140042AE */   sw        $v0, 0x14($s2)
/* 4EB492C 80081BFC 21202002 */  addu       $a0, $s1, $zero
/* 4EB4930 80081C00 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4EB4934 80081C04 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4EB4938 80081C08 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB493C 80081C0C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB4940 80081C10 0000518C */  lw         $s1, 0x0($v0)
/* 4EB4944 80081C14 CD3C010C */  jal        func_8004F334
/* 4EB4948 80081C18 00000000 */   nop
/* 4EB494C 80081C1C 21204000 */  addu       $a0, $v0, $zero
/* 4EB4950 80081C20 48004392 */  lbu        $v1, 0x48($s2)
/* 4EB4954 80081C24 62000224 */  addiu      $v0, $zero, 0x62
/* 4EB4958 80081C28 11006210 */  beq        $v1, $v0, .Llevel_18_80081C70
/* 4EB495C 80081C2C 00028228 */   slti      $v0, $a0, 0x200
/* 4EB4960 80081C30 0F004010 */  beqz       $v0, .Llevel_18_80081C70
/* 4EB4964 80081C34 00000000 */   nop
/* 4EB4968 80081C38 1C00228E */  lw         $v0, 0x1C($s1)
/* 4EB496C 80081C3C 00000000 */  nop
/* 4EB4970 80081C40 01004230 */  andi       $v0, $v0, 0x1
/* 4EB4974 80081C44 08004014 */  bnez       $v0, .Llevel_18_80081C68
/* 4EB4978 80081C48 62000224 */   addiu     $v0, $zero, 0x62
/* 4EB497C 80081C4C 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 4EB4980 80081C50 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 4EB4984 80081C54 00000000 */  nop
/* 4EB4988 80081C58 01004234 */  ori        $v0, $v0, 0x1
/* 4EB498C 80081C5C 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 4EB4990 80081C60 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 4EB4994 80081C64 62000224 */  addiu      $v0, $zero, 0x62
.Llevel_18_80081C68:
/* 4EB4998 80081C68 6A070208 */  j          .Llevel_18_80081DA8
/* 4EB499C 80081C6C 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_18_80081C70:
/* 4EB49A0 80081C70 0C000426 */  addiu      $a0, $s0, 0xC
/* 4EB49A4 80081C74 69D6000C */  jal        func_800359A4
/* 4EB49A8 80081C78 04000524 */   addiu     $a1, $zero, 0x4
/* 4EB49AC 80081C7C 09004014 */  bnez       $v0, .Llevel_18_80081CA4
/* 4EB49B0 80081C80 62000224 */   addiu     $v0, $zero, 0x62
/* 4EB49B4 80081C84 1000B2AF */  sw         $s2, 0x10($sp)
/* 4EB49B8 80081C88 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EB49BC 80081C8C 0C004526 */  addiu      $a1, $s2, 0xC
/* 4EB49C0 80081C90 21300000 */  addu       $a2, $zero, $zero
/* 4EB49C4 80081C94 C360000C */  jal        func_8001830C
/* 4EB49C8 80081C98 21380000 */   addu      $a3, $zero, $zero
/* 4EB49CC 80081C9C 02004010 */  beqz       $v0, .Llevel_18_80081CA8
/* 4EB49D0 80081CA0 62000224 */   addiu     $v0, $zero, 0x62
.Llevel_18_80081CA4:
/* 4EB49D4 80081CA4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_18_80081CA8:
/* 4EB49D8 80081CA8 0000048E */  lw         $a0, 0x0($s0)
/* 4EB49DC 80081CAC 0400058E */  lw         $a1, 0x4($s0)
/* 4EB49E0 80081CB0 203A010C */  jal        func_8004E880
/* 4EB49E4 80081CB4 21300000 */   addu      $a2, $zero, $zero
/* 4EB49E8 80081CB8 21200000 */  addu       $a0, $zero, $zero
/* 4EB49EC 80081CBC 0E000524 */  addiu      $a1, $zero, 0xE
/* 4EB49F0 80081CC0 F7D8000C */  jal        func_800363DC
/* 4EB49F4 80081CC4 21804000 */   addu      $s0, $v0, $zero
/* 4EB49F8 80081CC8 21800202 */  addu       $s0, $s0, $v0
/* 4EB49FC 80081CCC 21980002 */  addu       $s3, $s0, $zero
/* 4EB4A00 80081CD0 2800B127 */  addiu      $s1, $sp, 0x28
/* 4EB4A04 80081CD4 21202002 */  addu       $a0, $s1, $zero
/* 4EB4A08 80081CD8 5E3C010C */  jal        func_8004F178
/* 4EB4A0C 80081CDC 0C004526 */   addiu     $a1, $s2, 0xC
/* 4EB4A10 80081CE0 FF006332 */  andi       $v1, $s3, 0xFF
/* 4EB4A14 80081CE4 80FF1326 */  addiu      $s3, $s0, -0x80
/* 4EB4A18 80081CE8 40180300 */  sll        $v1, $v1, 1
/* 4EB4A1C 80081CEC 01000424 */  addiu      $a0, $zero, 0x1
/* 4EB4A20 80081CF0 FF006732 */  andi       $a3, $s3, 0xFF
/* 4EB4A24 80081CF4 40380700 */  sll        $a3, $a3, 1
/* 4EB4A28 80081CF8 0680013C */  lui        $at, %hi(D_80065920)
/* 4EB4A2C 80081CFC 21082300 */  addu       $at, $at, $v1
/* 4EB4A30 80081D00 20592584 */  lh         $a1, %lo(D_80065920)($at)
/* 4EB4A34 80081D04 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 4EB4A38 80081D08 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 4EB4A3C 80081D0C 00110500 */  sll        $v0, $a1, 4
/* 4EB4A40 80081D10 23104500 */  subu       $v0, $v0, $a1
/* 4EB4A44 80081D14 C3120200 */  sra        $v0, $v0, 11
/* 4EB4A48 80081D18 3800A2AF */  sw         $v0, 0x38($sp)
/* 4EB4A4C 80081D1C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB4A50 80081D20 21082300 */  addu       $at, $at, $v1
/* 4EB4A54 80081D24 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4EB4A58 80081D28 21302002 */  addu       $a2, $s1, $zero
/* 4EB4A5C 80081D2C 4000A0AF */  sw         $zero, 0x40($sp)
/* 4EB4A60 80081D30 00110300 */  sll        $v0, $v1, 4
/* 4EB4A64 80081D34 23104300 */  subu       $v0, $v0, $v1
/* 4EB4A68 80081D38 C3120200 */  sra        $v0, $v0, 11
/* 4EB4A6C 80081D3C 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 4EB4A70 80081D40 0680013C */  lui        $at, %hi(D_80065920)
/* 4EB4A74 80081D44 21082700 */  addu       $at, $at, $a3
/* 4EB4A78 80081D48 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4EB4A7C 80081D4C 0D000524 */  addiu      $a1, $zero, 0xD
/* 4EB4A80 80081D50 80100300 */  sll        $v0, $v1, 2
/* 4EB4A84 80081D54 21104300 */  addu       $v0, $v0, $v1
/* 4EB4A88 80081D58 2800A38F */  lw         $v1, 0x28($sp)
/* 4EB4A8C 80081D5C 43120200 */  sra        $v0, $v0, 9
/* 4EB4A90 80081D60 21186200 */  addu       $v1, $v1, $v0
/* 4EB4A94 80081D64 2800A3AF */  sw         $v1, 0x28($sp)
/* 4EB4A98 80081D68 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB4A9C 80081D6C 21082700 */  addu       $at, $at, $a3
/* 4EB4AA0 80081D70 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EB4AA4 80081D74 3800A727 */  addiu      $a3, $sp, 0x38
/* 4EB4AA8 80081D78 80180200 */  sll        $v1, $v0, 2
/* 4EB4AAC 80081D7C 21186200 */  addu       $v1, $v1, $v0
/* 4EB4AB0 80081D80 2C00A28F */  lw         $v0, 0x2C($sp)
/* 4EB4AB4 80081D84 431A0300 */  sra        $v1, $v1, 9
/* 4EB4AB8 80081D88 21104300 */  addu       $v0, $v0, $v1
/* 4EB4ABC 80081D8C 09F80001 */  jalr       $t0
/* 4EB4AC0 80081D90 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 4EB4AC4 80081D94 0A004390 */  lbu        $v1, 0xA($v0)
/* 4EB4AC8 80081D98 0E000424 */  addiu      $a0, $zero, 0xE
/* 4EB4ACC 80081D9C 020044A0 */  sb         $a0, 0x2($v0)
/* 4EB4AD0 80081DA0 38006324 */  addiu      $v1, $v1, 0x38
/* 4EB4AD4 80081DA4 0A0043A0 */  sb         $v1, 0xA($v0)
.Llevel_18_80081DA8:
/* 4EB4AD8 80081DA8 48004392 */  lbu        $v1, 0x48($s2)
/* 4EB4ADC 80081DAC 62000224 */  addiu      $v0, $zero, 0x62
/* 4EB4AE0 80081DB0 14006214 */  bne        $v1, $v0, .Llevel_18_80081E04
/* 4EB4AE4 80081DB4 00000000 */   nop
.Llevel_18_80081DB8:
/* 4EB4AE8 80081DB8 3A004392 */  lbu        $v1, 0x3A($s2)
/* 4EB4AEC 80081DBC 00000000 */  nop
/* 4EB4AF0 80081DC0 40100300 */  sll        $v0, $v1, 1
/* 4EB4AF4 80081DC4 21104300 */  addu       $v0, $v0, $v1
/* 4EB4AF8 80081DC8 80100200 */  sll        $v0, $v0, 2
/* 4EB4AFC 80081DCC 23104300 */  subu       $v0, $v0, $v1
/* 4EB4B00 80081DD0 0780033C */  lui        $v1, %hi(D_8006C550)
/* 4EB4B04 80081DD4 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 4EB4B08 80081DD8 C0100200 */  sll        $v0, $v0, 3
/* 4EB4B0C 80081DDC 21104300 */  addu       $v0, $v0, $v1
/* 4EB4B10 80081DE0 0000438C */  lw         $v1, 0x0($v0)
/* 4EB4B14 80081DE4 00000000 */  nop
/* 4EB4B18 80081DE8 0000628C */  lw         $v0, 0x0($v1)
/* 4EB4B1C 80081DEC 00000000 */  nop
/* 4EB4B20 80081DF0 02005214 */  bne        $v0, $s2, .Llevel_18_80081DFC
/* 4EB4B24 80081DF4 00000000 */   nop
/* 4EB4B28 80081DF8 000060AC */  sw         $zero, 0x0($v1)
.Llevel_18_80081DFC:
/* 4EB4B2C 80081DFC C656010C */  jal        func_80055B18
/* 4EB4B30 80081E00 21204002 */   addu      $a0, $s2, $zero
.Llevel_18_80081E04:
/* 4EB4B34 80081E04 6800BF8F */  lw         $ra, 0x68($sp)
/* 4EB4B38 80081E08 6400B38F */  lw         $s3, 0x64($sp)
/* 4EB4B3C 80081E0C 6000B28F */  lw         $s2, 0x60($sp)
/* 4EB4B40 80081E10 5C00B18F */  lw         $s1, 0x5C($sp)
/* 4EB4B44 80081E14 5800B08F */  lw         $s0, 0x58($sp)
/* 4EB4B48 80081E18 7000BD27 */  addiu      $sp, $sp, 0x70
/* 4EB4B4C 80081E1C 0800E003 */  jr         $ra
/* 4EB4B50 80081E20 00000000 */   nop
.size MobyUpdate_601_level_18, . - MobyUpdate_601_level_18
