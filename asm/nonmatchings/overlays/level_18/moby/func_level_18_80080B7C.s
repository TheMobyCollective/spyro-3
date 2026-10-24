.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_590_level_18
/* 4EB38AC 80080B7C 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4EB38B0 80080B80 6000B2AF */  sw         $s2, 0x60($sp)
/* 4EB38B4 80080B84 21908000 */  addu       $s2, $a0, $zero
/* 4EB38B8 80080B88 6800BFAF */  sw         $ra, 0x68($sp)
/* 4EB38BC 80080B8C 6400B3AF */  sw         $s3, 0x64($sp)
/* 4EB38C0 80080B90 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 4EB38C4 80080B94 5800B0AF */  sw         $s0, 0x58($sp)
/* 4EB38C8 80080B98 0C00468E */  lw         $a2, 0xC($s2)
/* 4EB38CC 80080B9C 0000508E */  lw         $s0, 0x0($s2)
/* 4EB38D0 80080BA0 20000724 */  addiu      $a3, $zero, 0x20
/* 4EB38D4 80080BA4 0004C228 */  slti       $v0, $a2, 0x400
/* 4EB38D8 80080BA8 97004014 */  bnez       $v0, .Llevel_18_80080E08
/* 4EB38DC 80080BAC 4F0047A2 */   sb        $a3, 0x4F($s2)
/* 4EB38E0 80080BB0 1000458E */  lw         $a1, 0x10($s2)
/* 4EB38E4 80080BB4 00000000 */  nop
/* 4EB38E8 80080BB8 0004A228 */  slti       $v0, $a1, 0x400
/* 4EB38EC 80080BBC 92004014 */  bnez       $v0, .Llevel_18_80080E08
/* 4EB38F0 80080BC0 00000000 */   nop
/* 4EB38F4 80080BC4 1400448E */  lw         $a0, 0x14($s2)
/* 4EB38F8 80080BC8 00000000 */  nop
/* 4EB38FC 80080BCC 00048228 */  slti       $v0, $a0, 0x400
/* 4EB3900 80080BD0 8D004014 */  bnez       $v0, .Llevel_18_80080E08
/* 4EB3904 80080BD4 0300033C */   lui       $v1, (0x3E800 >> 16)
/* 4EB3908 80080BD8 00E86334 */  ori        $v1, $v1, (0x3E800 & 0xFFFF)
/* 4EB390C 80080BDC 2A106600 */  slt        $v0, $v1, $a2
/* 4EB3910 80080BE0 89004014 */  bnez       $v0, .Llevel_18_80080E08
/* 4EB3914 80080BE4 2A106500 */   slt       $v0, $v1, $a1
/* 4EB3918 80080BE8 87004014 */  bnez       $v0, .Llevel_18_80080E08
/* 4EB391C 80080BEC 2A106400 */   slt       $v0, $v1, $a0
/* 4EB3920 80080BF0 85004014 */  bnez       $v0, .Llevel_18_80080E08
/* 4EB3924 80080BF4 00000000 */   nop
/* 4EB3928 80080BF8 4D004292 */  lbu        $v0, 0x4D($s2)
/* 4EB392C 80080BFC 00000000 */  nop
/* 4EB3930 80080C00 81004010 */  beqz       $v0, .Llevel_18_80080E08
/* 4EB3934 80080C04 1800A427 */   addiu     $a0, $sp, 0x18
/* 4EB3938 80080C08 0C005126 */  addiu      $s1, $s2, 0xC
/* 4EB393C 80080C0C 21282002 */  addu       $a1, $s1, $zero
/* 4EB3940 80080C10 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4EB3944 80080C14 550042A2 */  sb         $v0, 0x55($s2)
/* 4EB3948 80080C18 3F000224 */  addiu      $v0, $zero, 0x3F
/* 4EB394C 80080C1C 540047A2 */  sb         $a3, 0x54($s2)
/* 4EB3950 80080C20 560047A2 */  sb         $a3, 0x56($s2)
/* 4EB3954 80080C24 5E3C010C */  jal        func_8004F178
/* 4EB3958 80080C28 570042A2 */   sb        $v0, 0x57($s2)
/* 4EB395C 80080C2C 0C00428E */  lw         $v0, 0xC($s2)
/* 4EB3960 80080C30 0000038E */  lw         $v1, 0x0($s0)
/* 4EB3964 80080C34 00000000 */  nop
/* 4EB3968 80080C38 21104300 */  addu       $v0, $v0, $v1
/* 4EB396C 80080C3C 0C0042AE */  sw         $v0, 0xC($s2)
/* 4EB3970 80080C40 1000428E */  lw         $v0, 0x10($s2)
/* 4EB3974 80080C44 0400038E */  lw         $v1, 0x4($s0)
/* 4EB3978 80080C48 00000000 */  nop
/* 4EB397C 80080C4C 21104300 */  addu       $v0, $v0, $v1
/* 4EB3980 80080C50 100042AE */  sw         $v0, 0x10($s2)
/* 4EB3984 80080C54 1400428E */  lw         $v0, 0x14($s2)
/* 4EB3988 80080C58 0800038E */  lw         $v1, 0x8($s0)
/* 4EB398C 80080C5C 48004492 */  lbu        $a0, 0x48($s2)
/* 4EB3990 80080C60 21104300 */  addu       $v0, $v0, $v1
/* 4EB3994 80080C64 64008014 */  bnez       $a0, .Llevel_18_80080DF8
/* 4EB3998 80080C68 140042AE */   sw        $v0, 0x14($s2)
/* 4EB399C 80080C6C 0780053C */  lui        $a1, %hi(D_80070328)
/* 4EB39A0 80080C70 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 4EB39A4 80080C74 CD3C010C */  jal        func_8004F334
/* 4EB39A8 80080C78 21202002 */   addu      $a0, $s1, $zero
/* 4EB39AC 80080C7C 00024228 */  slti       $v0, $v0, 0x200
/* 4EB39B0 80080C80 0A004010 */  beqz       $v0, .Llevel_18_80080CAC
/* 4EB39B4 80080C84 0C000426 */   addiu     $a0, $s0, 0xC
/* 4EB39B8 80080C88 0780023C */  lui        $v0, %hi(D_80070328 + 0x24)
/* 4EB39BC 80080C8C 4C03428C */  lw         $v0, %lo(D_80070328 + 0x24)($v0)
/* 4EB39C0 80080C90 00000000 */  nop
/* 4EB39C4 80080C94 01004234 */  ori        $v0, $v0, 0x1
/* 4EB39C8 80080C98 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 4EB39CC 80080C9C 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 4EB39D0 80080CA0 62000224 */  addiu      $v0, $zero, 0x62
/* 4EB39D4 80080CA4 7E030208 */  j          .Llevel_18_80080DF8
/* 4EB39D8 80080CA8 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_18_80080CAC:
/* 4EB39DC 80080CAC 69D6000C */  jal        func_800359A4
/* 4EB39E0 80080CB0 04000524 */   addiu     $a1, $zero, 0x4
/* 4EB39E4 80080CB4 09004014 */  bnez       $v0, .Llevel_18_80080CDC
/* 4EB39E8 80080CB8 21202002 */   addu      $a0, $s1, $zero
/* 4EB39EC 80080CBC 1000B2AF */  sw         $s2, 0x10($sp)
/* 4EB39F0 80080CC0 1800A427 */  addiu      $a0, $sp, 0x18
/* 4EB39F4 80080CC4 21282002 */  addu       $a1, $s1, $zero
/* 4EB39F8 80080CC8 21300000 */  addu       $a2, $zero, $zero
/* 4EB39FC 80080CCC C360000C */  jal        func_8001830C
/* 4EB3A00 80080CD0 0100073C */   lui       $a3, (0x10000 >> 16)
/* 4EB3A04 80080CD4 08004010 */  beqz       $v0, .Llevel_18_80080CF8
/* 4EB3A08 80080CD8 21202002 */   addu      $a0, $s1, $zero
.Llevel_18_80080CDC:
/* 4EB3A0C 80080CDC 1800A527 */  addiu      $a1, $sp, 0x18
/* 4EB3A10 80080CE0 000000AE */  sw         $zero, 0x0($s0)
/* 4EB3A14 80080CE4 040000AE */  sw         $zero, 0x4($s0)
/* 4EB3A18 80080CE8 5E3C010C */  jal        func_8004F178
/* 4EB3A1C 80080CEC 080000AE */   sw        $zero, 0x8($s0)
/* 4EB3A20 80080CF0 62000224 */  addiu      $v0, $zero, 0x62
/* 4EB3A24 80080CF4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_18_80080CF8:
/* 4EB3A28 80080CF8 0000048E */  lw         $a0, 0x0($s0)
/* 4EB3A2C 80080CFC 0400058E */  lw         $a1, 0x4($s0)
/* 4EB3A30 80080D00 203A010C */  jal        func_8004E880
/* 4EB3A34 80080D04 21300000 */   addu      $a2, $zero, $zero
/* 4EB3A38 80080D08 21200000 */  addu       $a0, $zero, $zero
/* 4EB3A3C 80080D0C 0E000524 */  addiu      $a1, $zero, 0xE
/* 4EB3A40 80080D10 F7D8000C */  jal        func_800363DC
/* 4EB3A44 80080D14 21804000 */   addu      $s0, $v0, $zero
/* 4EB3A48 80080D18 21800202 */  addu       $s0, $s0, $v0
/* 4EB3A4C 80080D1C 21980002 */  addu       $s3, $s0, $zero
/* 4EB3A50 80080D20 2800B127 */  addiu      $s1, $sp, 0x28
/* 4EB3A54 80080D24 21202002 */  addu       $a0, $s1, $zero
/* 4EB3A58 80080D28 5E3C010C */  jal        func_8004F178
/* 4EB3A5C 80080D2C 0C004526 */   addiu     $a1, $s2, 0xC
/* 4EB3A60 80080D30 FF006332 */  andi       $v1, $s3, 0xFF
/* 4EB3A64 80080D34 80FF1326 */  addiu      $s3, $s0, -0x80
/* 4EB3A68 80080D38 40180300 */  sll        $v1, $v1, 1
/* 4EB3A6C 80080D3C 01000424 */  addiu      $a0, $zero, 0x1
/* 4EB3A70 80080D40 FF006732 */  andi       $a3, $s3, 0xFF
/* 4EB3A74 80080D44 40380700 */  sll        $a3, $a3, 1
/* 4EB3A78 80080D48 0680013C */  lui        $at, %hi(D_80065920)
/* 4EB3A7C 80080D4C 21082300 */  addu       $at, $at, $v1
/* 4EB3A80 80080D50 20592584 */  lh         $a1, %lo(D_80065920)($at)
/* 4EB3A84 80080D54 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 4EB3A88 80080D58 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 4EB3A8C 80080D5C 00110500 */  sll        $v0, $a1, 4
/* 4EB3A90 80080D60 23104500 */  subu       $v0, $v0, $a1
/* 4EB3A94 80080D64 C3120200 */  sra        $v0, $v0, 11
/* 4EB3A98 80080D68 3800A2AF */  sw         $v0, 0x38($sp)
/* 4EB3A9C 80080D6C 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB3AA0 80080D70 21082300 */  addu       $at, $at, $v1
/* 4EB3AA4 80080D74 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 4EB3AA8 80080D78 21302002 */  addu       $a2, $s1, $zero
/* 4EB3AAC 80080D7C 4000A0AF */  sw         $zero, 0x40($sp)
/* 4EB3AB0 80080D80 00110300 */  sll        $v0, $v1, 4
/* 4EB3AB4 80080D84 23104300 */  subu       $v0, $v0, $v1
/* 4EB3AB8 80080D88 C3120200 */  sra        $v0, $v0, 11
/* 4EB3ABC 80080D8C 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 4EB3AC0 80080D90 0680013C */  lui        $at, %hi(D_80065920)
/* 4EB3AC4 80080D94 21082700 */  addu       $at, $at, $a3
/* 4EB3AC8 80080D98 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 4EB3ACC 80080D9C 0D000524 */  addiu      $a1, $zero, 0xD
/* 4EB3AD0 80080DA0 80100300 */  sll        $v0, $v1, 2
/* 4EB3AD4 80080DA4 21104300 */  addu       $v0, $v0, $v1
/* 4EB3AD8 80080DA8 2800A38F */  lw         $v1, 0x28($sp)
/* 4EB3ADC 80080DAC 43120200 */  sra        $v0, $v0, 9
/* 4EB3AE0 80080DB0 21186200 */  addu       $v1, $v1, $v0
/* 4EB3AE4 80080DB4 2800A3AF */  sw         $v1, 0x28($sp)
/* 4EB3AE8 80080DB8 0680013C */  lui        $at, %hi(D_800658A0)
/* 4EB3AEC 80080DBC 21082700 */  addu       $at, $at, $a3
/* 4EB3AF0 80080DC0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 4EB3AF4 80080DC4 3800A727 */  addiu      $a3, $sp, 0x38
/* 4EB3AF8 80080DC8 80180200 */  sll        $v1, $v0, 2
/* 4EB3AFC 80080DCC 21186200 */  addu       $v1, $v1, $v0
/* 4EB3B00 80080DD0 2C00A28F */  lw         $v0, 0x2C($sp)
/* 4EB3B04 80080DD4 431A0300 */  sra        $v1, $v1, 9
/* 4EB3B08 80080DD8 21104300 */  addu       $v0, $v0, $v1
/* 4EB3B0C 80080DDC 09F80001 */  jalr       $t0
/* 4EB3B10 80080DE0 2C00A2AF */   sw        $v0, 0x2C($sp)
/* 4EB3B14 80080DE4 0A004390 */  lbu        $v1, 0xA($v0)
/* 4EB3B18 80080DE8 0E000424 */  addiu      $a0, $zero, 0xE
/* 4EB3B1C 80080DEC 020044A0 */  sb         $a0, 0x2($v0)
/* 4EB3B20 80080DF0 38006324 */  addiu      $v1, $v1, 0x38
/* 4EB3B24 80080DF4 0A0043A0 */  sb         $v1, 0xA($v0)
.Llevel_18_80080DF8:
/* 4EB3B28 80080DF8 48004392 */  lbu        $v1, 0x48($s2)
/* 4EB3B2C 80080DFC 62000224 */  addiu      $v0, $zero, 0x62
/* 4EB3B30 80080E00 03006214 */  bne        $v1, $v0, .Llevel_18_80080E10
/* 4EB3B34 80080E04 00000000 */   nop
.Llevel_18_80080E08:
/* 4EB3B38 80080E08 C656010C */  jal        func_80055B18
/* 4EB3B3C 80080E0C 21204002 */   addu      $a0, $s2, $zero
.Llevel_18_80080E10:
/* 4EB3B40 80080E10 6800BF8F */  lw         $ra, 0x68($sp)
/* 4EB3B44 80080E14 6400B38F */  lw         $s3, 0x64($sp)
/* 4EB3B48 80080E18 6000B28F */  lw         $s2, 0x60($sp)
/* 4EB3B4C 80080E1C 5C00B18F */  lw         $s1, 0x5C($sp)
/* 4EB3B50 80080E20 5800B08F */  lw         $s0, 0x58($sp)
/* 4EB3B54 80080E24 7000BD27 */  addiu      $sp, $sp, 0x70
/* 4EB3B58 80080E28 0800E003 */  jr         $ra
/* 4EB3B5C 80080E2C 00000000 */   nop
.size MobyUpdate_590_level_18, . - MobyUpdate_590_level_18
