.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_31_80086BBC
/* 6AA18EC 80086BBC A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 6AA18F0 80086BC0 4400B1AF */  sw         $s1, 0x44($sp)
/* 6AA18F4 80086BC4 21888000 */  addu       $s1, $a0, $zero
/* 6AA18F8 80086BC8 5400B5AF */  sw         $s5, 0x54($sp)
/* 6AA18FC 80086BCC 21A8A000 */  addu       $s5, $a1, $zero
/* 6AA1900 80086BD0 5800BFAF */  sw         $ra, 0x58($sp)
/* 6AA1904 80086BD4 5000B4AF */  sw         $s4, 0x50($sp)
/* 6AA1908 80086BD8 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 6AA190C 80086BDC 4800B2AF */  sw         $s2, 0x48($sp)
/* 6AA1910 80086BE0 9F56010C */  jal        func_80055A7C
/* 6AA1914 80086BE4 4000B0AF */   sw        $s0, 0x40($sp)
/* 6AA1918 80086BE8 21984000 */  addu       $s3, $v0, $zero
/* 6AA191C 80086BEC 03006016 */  bnez       $s3, .Llevel_31_80086BFC
/* 6AA1920 80086BF0 21206002 */   addu      $a0, $s3, $zero
/* 6AA1924 80086BF4 2E1D0208 */  j          .Llevel_31_800874B8
/* 6AA1928 80086BF8 21100000 */   addu      $v0, $zero, $zero
.Llevel_31_80086BFC:
/* 6AA192C 80086BFC 21280000 */  addu       $a1, $zero, $zero
/* 6AA1930 80086C00 0000708E */  lw         $s0, 0x0($s3)
/* 6AA1934 80086C04 E439010C */  jal        func_8004E790
/* 6AA1938 80086C08 58000624 */   addiu     $a2, $zero, 0x58
/* 6AA193C 80086C0C 21280000 */  addu       $a1, $zero, $zero
/* 6AA1940 80086C10 18000624 */  addiu      $a2, $zero, 0x18
/* 6AA1944 80086C14 21200002 */  addu       $a0, $s0, $zero
/* 6AA1948 80086C18 E439010C */  jal        func_8004E790
/* 6AA194C 80086C1C 000064AE */   sw        $a0, 0x0($s3)
/* 6AA1950 80086C20 1600A012 */  beqz       $s5, .Llevel_31_80086C7C
/* 6AA1954 80086C24 360071A6 */   sh        $s1, 0x36($s3)
/* 6AA1958 80086C28 0780043C */  lui        $a0, %hi(D_8006C550)
/* 6AA195C 80086C2C 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 6AA1960 80086C30 00000000 */  nop
/* 6AA1964 80086C34 2320A402 */  subu       $a0, $s5, $a0
/* 6AA1968 80086C38 40190400 */  sll        $v1, $a0, 5
/* 6AA196C 80086C3C 23186400 */  subu       $v1, $v1, $a0
/* 6AA1970 80086C40 40190300 */  sll        $v1, $v1, 5
/* 6AA1974 80086C44 21186400 */  addu       $v1, $v1, $a0
/* 6AA1978 80086C48 C0100300 */  sll        $v0, $v1, 3
/* 6AA197C 80086C4C 21186200 */  addu       $v1, $v1, $v0
/* 6AA1980 80086C50 C0130300 */  sll        $v0, $v1, 15
/* 6AA1984 80086C54 23104300 */  subu       $v0, $v0, $v1
/* 6AA1988 80086C58 80100200 */  sll        $v0, $v0, 2
/* 6AA198C 80086C5C 21104400 */  addu       $v0, $v0, $a0
/* 6AA1990 80086C60 23100200 */  negu       $v0, $v0
/* 6AA1994 80086C64 C3180200 */  sra        $v1, $v0, 3
/* 6AA1998 80086C68 0001622C */  sltiu      $v0, $v1, 0x100
/* 6AA199C 80086C6C 04004010 */  beqz       $v0, .Llevel_31_80086C80
/* 6AA19A0 80086C70 FF000224 */   addiu     $v0, $zero, 0xFF
/* 6AA19A4 80086C74 211B0208 */  j          .Llevel_31_80086C84
/* 6AA19A8 80086C78 3A0063A2 */   sb        $v1, 0x3A($s3)
.Llevel_31_80086C7C:
/* 6AA19AC 80086C7C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_31_80086C80:
/* 6AA19B0 80086C80 3A0062A2 */  sb         $v0, 0x3A($s3)
.Llevel_31_80086C84:
/* 6AA19B4 80086C84 FBD3000C */  jal        func_80034FEC
/* 6AA19B8 80086C88 21206002 */   addu      $a0, $s3, $zero
/* 6AA19BC 80086C8C D3000224 */  addiu      $v0, $zero, 0xD3
/* 6AA19C0 80086C90 3E002212 */  beq        $s1, $v0, .Llevel_31_80086D8C
/* 6AA19C4 80086C94 D400222A */   slti      $v0, $s1, 0xD4
/* 6AA19C8 80086C98 19004010 */  beqz       $v0, .Llevel_31_80086D00
/* 6AA19CC 80086C9C 5D000224 */   addiu     $v0, $zero, 0x5D
/* 6AA19D0 80086CA0 C8002212 */  beq        $s1, $v0, .Llevel_31_80086FC4
/* 6AA19D4 80086CA4 5E00222A */   slti      $v0, $s1, 0x5E
/* 6AA19D8 80086CA8 07004010 */  beqz       $v0, .Llevel_31_80086CC8
/* 6AA19DC 80086CAC 01000224 */   addiu     $v0, $zero, 0x1
/* 6AA19E0 80086CB0 2F002212 */  beq        $s1, $v0, .Llevel_31_80086D70
/* 6AA19E4 80086CB4 10000224 */   addiu     $v0, $zero, 0x10
/* 6AA19E8 80086CB8 35002212 */  beq        $s1, $v0, .Llevel_31_80086D90
/* 6AA19EC 80086CBC 10000324 */   addiu     $v1, $zero, 0x10
/* 6AA19F0 80086CC0 221D0208 */  j          .Llevel_31_80087488
/* 6AA19F4 80086CC4 00000000 */   nop
.Llevel_31_80086CC8:
/* 6AA19F8 80086CC8 79000224 */  addiu      $v0, $zero, 0x79
/* 6AA19FC 80086CCC AC002212 */  beq        $s1, $v0, .Llevel_31_80086F80
/* 6AA1A00 80086CD0 7A00222A */   slti      $v0, $s1, 0x7A
/* 6AA1A04 80086CD4 05004010 */  beqz       $v0, .Llevel_31_80086CEC
/* 6AA1A08 80086CD8 78000224 */   addiu     $v0, $zero, 0x78
/* 6AA1A0C 80086CDC 5E002212 */  beq        $s1, $v0, .Llevel_31_80086E58
/* 6AA1A10 80086CE0 00000000 */   nop
/* 6AA1A14 80086CE4 221D0208 */  j          .Llevel_31_80087488
/* 6AA1A18 80086CE8 00000000 */   nop
.Llevel_31_80086CEC:
/* 6AA1A1C 80086CEC 84000224 */  addiu      $v0, $zero, 0x84
/* 6AA1A20 80086CF0 95002212 */  beq        $s1, $v0, .Llevel_31_80086F48
/* 6AA1A24 80086CF4 0C006426 */   addiu     $a0, $s3, 0xC
/* 6AA1A28 80086CF8 221D0208 */  j          .Llevel_31_80087488
/* 6AA1A2C 80086CFC 00000000 */   nop
.Llevel_31_80086D00:
/* 6AA1A30 80086D00 10010224 */  addiu      $v0, $zero, 0x110
/* 6AA1A34 80086D04 FE002212 */  beq        $s1, $v0, .Llevel_31_80087100
/* 6AA1A38 80086D08 1101222A */   slti      $v0, $s1, 0x111
/* 6AA1A3C 80086D0C 0E004010 */  beqz       $v0, .Llevel_31_80086D48
/* 6AA1A40 80086D10 F4000224 */   addiu     $v0, $zero, 0xF4
/* 6AA1A44 80086D14 C2002212 */  beq        $s1, $v0, .Llevel_31_80087020
/* 6AA1A48 80086D18 F500222A */   slti      $v0, $s1, 0xF5
/* 6AA1A4C 80086D1C 05004010 */  beqz       $v0, .Llevel_31_80086D34
/* 6AA1A50 80086D20 EF000224 */   addiu     $v0, $zero, 0xEF
/* 6AA1A54 80086D24 A8002212 */  beq        $s1, $v0, .Llevel_31_80086FC8
/* 6AA1A58 80086D28 0C006426 */   addiu     $a0, $s3, 0xC
/* 6AA1A5C 80086D2C 221D0208 */  j          .Llevel_31_80087488
/* 6AA1A60 80086D30 00000000 */   nop
.Llevel_31_80086D34:
/* 6AA1A64 80086D34 04010224 */  addiu      $v0, $zero, 0x104
/* 6AA1A68 80086D38 DC002212 */  beq        $s1, $v0, .Llevel_31_800870AC
/* 6AA1A6C 80086D3C 00000000 */   nop
/* 6AA1A70 80086D40 221D0208 */  j          .Llevel_31_80087488
/* 6AA1A74 80086D44 00000000 */   nop
.Llevel_31_80086D48:
/* 6AA1A78 80086D48 3201222A */  slti       $v0, $s1, 0x132
/* 6AA1A7C 80086D4C CE014014 */  bnez       $v0, .Llevel_31_80087488
/* 6AA1A80 80086D50 3501222A */   slti      $v0, $s1, 0x135
/* 6AA1A84 80086D54 07014014 */  bnez       $v0, .Llevel_31_80087174
/* 6AA1A88 80086D58 0C006426 */   addiu     $a0, $s3, 0xC
/* 6AA1A8C 80086D5C 44010224 */  addiu      $v0, $zero, 0x144
/* 6AA1A90 80086D60 87002212 */  beq        $s1, $v0, .Llevel_31_80086F80
/* 6AA1A94 80086D64 00000000 */   nop
/* 6AA1A98 80086D68 221D0208 */  j          .Llevel_31_80087488
/* 6AA1A9C 80086D6C 00000000 */   nop
.Llevel_31_80086D70:
/* 6AA1AA0 80086D70 0957010C */  jal        func_80055C24
/* 6AA1AA4 80086D74 21206002 */   addu      $a0, $s3, $zero
/* 6AA1AA8 80086D78 18000224 */  addiu      $v0, $zero, 0x18
/* 6AA1AAC 80086D7C 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 6AA1AB0 80086D80 40000224 */  addiu      $v0, $zero, 0x40
/* 6AA1AB4 80086D84 3D1C0208 */  j          .Llevel_31_800870F4
/* 6AA1AB8 80086D88 4A0062A2 */   sb        $v0, 0x4A($s3)
.Llevel_31_80086D8C:
/* 6AA1ABC 80086D8C 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_31_80086D90:
/* 6AA1AC0 80086D90 36006286 */  lh         $v0, 0x36($s3)
/* 6AA1AC4 80086D94 0000718E */  lw         $s1, 0x0($s3)
/* 6AA1AC8 80086D98 19004314 */  bne        $v0, $v1, .Llevel_31_80086E00
/* 6AA1ACC 80086D9C 0C007026 */   addiu     $s0, $s3, 0xC
/* 6AA1AD0 80086DA0 0780043C */  lui        $a0, %hi(D_8006C784)
/* 6AA1AD4 80086DA4 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 6AA1AD8 80086DA8 00000000 */  nop
/* 6AA1ADC 80086DAC 04008228 */  slti       $v0, $a0, 0x4
/* 6AA1AE0 80086DB0 03004010 */  beqz       $v0, .Llevel_31_80086DC0
/* 6AA1AE4 80086DB4 0A000324 */   addiu     $v1, $zero, 0xA
/* 6AA1AE8 80086DB8 741B0208 */  j          .Llevel_31_80086DD0
/* 6AA1AEC 80086DBC 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_31_80086DC0:
/* 6AA1AF0 80086DC0 07008228 */  slti       $v0, $a0, 0x7
/* 6AA1AF4 80086DC4 02004010 */  beqz       $v0, .Llevel_31_80086DD0
/* 6AA1AF8 80086DC8 00000000 */   nop
/* 6AA1AFC 80086DCC 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_31_80086DD0:
/* 6AA1B00 80086DD0 0680043C */  lui        $a0, %hi(D_8006582C)
/* 6AA1B04 80086DD4 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 6AA1B08 80086DD8 0000828C */  lw         $v0, 0x0($a0)
/* 6AA1B0C 80086DDC 00000000 */  nop
/* 6AA1B10 80086DE0 01004224 */  addiu      $v0, $v0, 0x1
/* 6AA1B14 80086DE4 000082AC */  sw         $v0, 0x0($a0)
/* 6AA1B18 80086DE8 2A104300 */  slt        $v0, $v0, $v1
/* 6AA1B1C 80086DEC 04004014 */  bnez       $v0, .Llevel_31_80086E00
/* 6AA1B20 80086DF0 0C007026 */   addiu     $s0, $s3, 0xC
/* 6AA1B24 80086DF4 D3000224 */  addiu      $v0, $zero, 0xD3
/* 6AA1B28 80086DF8 000080AC */  sw         $zero, 0x0($a0)
/* 6AA1B2C 80086DFC 360062A6 */  sh         $v0, 0x36($s3)
.Llevel_31_80086E00:
/* 6AA1B30 80086E00 21200002 */  addu       $a0, $s0, $zero
/* 6AA1B34 80086E04 5E3C010C */  jal        func_8004F178
/* 6AA1B38 80086E08 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6AA1B3C 80086E0C 0957010C */  jal        func_80055C24
/* 6AA1B40 80086E10 21206002 */   addu      $a0, $s3, $zero
/* 6AA1B44 80086E14 21202002 */  addu       $a0, $s1, $zero
/* 6AA1B48 80086E18 1400628E */  lw         $v0, 0x14($s3)
/* 6AA1B4C 80086E1C 21280002 */  addu       $a1, $s0, $zero
/* 6AA1B50 80086E20 00024224 */  addiu      $v0, $v0, 0x200
/* 6AA1B54 80086E24 5E3C010C */  jal        func_8004F178
/* 6AA1B58 80086E28 140062AE */   sw        $v0, 0x14($s3)
/* 6AA1B5C 80086E2C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6AA1B60 80086E30 1C0062AE */  sw         $v0, 0x1C($s3)
/* 6AA1B64 80086E34 02000224 */  addiu      $v0, $zero, 0x2
/* 6AA1B68 80086E38 470062A2 */  sb         $v0, 0x47($s3)
/* 6AA1B6C 80086E3C 08070224 */  addiu      $v0, $zero, 0x708
/* 6AA1B70 80086E40 0E0022A6 */  sh         $v0, 0xE($s1)
/* 6AA1B74 80086E44 9171010C */  jal        rand
/* 6AA1B78 80086E48 110020A2 */   sb        $zero, 0x11($s1)
/* 6AA1B7C 80086E4C FC004230 */  andi       $v0, $v0, 0xFC
/* 6AA1B80 80086E50 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1B84 80086E54 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_31_80086E58:
/* 6AA1B88 80086E58 3600A286 */  lh         $v0, 0x36($s5)
/* 6AA1B8C 80086E5C 00000000 */  nop
/* 6AA1B90 80086E60 06005110 */  beq        $v0, $s1, .Llevel_31_80086E7C
/* 6AA1B94 80086E64 21280000 */   addu      $a1, $zero, $zero
/* 6AA1B98 80086E68 0780043C */  lui        $a0, %hi(D_8006E394)
/* 6AA1B9C 80086E6C 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 6AA1BA0 80086E70 000064AE */  sw         $a0, 0x0($s3)
/* 6AA1BA4 80086E74 E439010C */  jal        func_8004E790
/* 6AA1BA8 80086E78 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_31_80086E7C:
/* 6AA1BAC 80086E7C 0000708E */  lw         $s0, 0x0($s3)
/* 6AA1BB0 80086E80 0957010C */  jal        func_80055C24
/* 6AA1BB4 80086E84 21206002 */   addu      $a0, $s3, $zero
/* 6AA1BB8 80086E88 78000224 */  addiu      $v0, $zero, 0x78
/* 6AA1BBC 80086E8C 490060A2 */  sb         $zero, 0x49($s3)
/* 6AA1BC0 80086E90 000000A6 */  sh         $zero, 0x0($s0)
/* 6AA1BC4 80086E94 080000A6 */  sh         $zero, 0x8($s0)
/* 6AA1BC8 80086E98 060000A6 */  sh         $zero, 0x6($s0)
/* 6AA1BCC 80086E9C 040000A6 */  sh         $zero, 0x4($s0)
/* 6AA1BD0 80086EA0 0D0002A2 */  sb         $v0, 0xD($s0)
/* 6AA1BD4 80086EA4 100000AE */  sw         $zero, 0x10($s0)
/* 6AA1BD8 80086EA8 0600A012 */  beqz       $s5, .Llevel_31_80086EC4
/* 6AA1BDC 80086EAC 140000AE */   sw        $zero, 0x14($s0)
/* 6AA1BE0 80086EB0 0C006426 */  addiu      $a0, $s3, 0xC
/* 6AA1BE4 80086EB4 5E3C010C */  jal        func_8004F178
/* 6AA1BE8 80086EB8 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6AA1BEC 80086EBC D01B0208 */  j          .Llevel_31_80086F40
/* 6AA1BF0 80086EC0 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_31_80086EC4:
/* 6AA1BF4 80086EC4 0C006426 */  addiu      $a0, $s3, 0xC
/* 6AA1BF8 80086EC8 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 6AA1BFC 80086ECC 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 6AA1C00 80086ED0 0000A390 */  lbu        $v1, 0x0($a1)
/* 6AA1C04 80086ED4 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 6AA1C08 80086ED8 80FF6324 */  addiu      $v1, $v1, -0x80
/* 6AA1C0C 80086EDC FF006330 */  andi       $v1, $v1, 0xFF
/* 6AA1C10 80086EE0 40180300 */  sll        $v1, $v1, 1
/* 6AA1C14 80086EE4 0680013C */  lui        $at, %hi(D_80065920)
/* 6AA1C18 80086EE8 21082300 */  addu       $at, $at, $v1
/* 6AA1C1C 80086EEC 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 6AA1C20 80086EF0 1000A627 */  addiu      $a2, $sp, 0x10
/* 6AA1C24 80086EF4 40110700 */  sll        $v0, $a3, 5
/* 6AA1C28 80086EF8 23104700 */  subu       $v0, $v0, $a3
/* 6AA1C2C 80086EFC 80100200 */  sll        $v0, $v0, 2
/* 6AA1C30 80086F00 21104700 */  addu       $v0, $v0, $a3
/* 6AA1C34 80086F04 43120200 */  sra        $v0, $v0, 9
/* 6AA1C38 80086F08 1000A2AF */  sw         $v0, 0x10($sp)
/* 6AA1C3C 80086F0C 0680013C */  lui        $at, %hi(D_800658A0)
/* 6AA1C40 80086F10 21082300 */  addu       $at, $at, $v1
/* 6AA1C44 80086F14 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6AA1C48 80086F18 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 6AA1C4C 80086F1C 1800A2AF */  sw         $v0, 0x18($sp)
/* 6AA1C50 80086F20 40110300 */  sll        $v0, $v1, 5
/* 6AA1C54 80086F24 23104300 */  subu       $v0, $v0, $v1
/* 6AA1C58 80086F28 80100200 */  sll        $v0, $v0, 2
/* 6AA1C5C 80086F2C 21104300 */  addu       $v0, $v0, $v1
/* 6AA1C60 80086F30 43120200 */  sra        $v0, $v0, 9
/* 6AA1C64 80086F34 653C010C */  jal        func_8004F194
/* 6AA1C68 80086F38 1400A2AF */   sw        $v0, 0x14($sp)
/* 6AA1C6C 80086F3C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_31_80086F40:
/* 6AA1C70 80086F40 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1C74 80086F44 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_31_80086F48:
/* 6AA1C78 80086F48 4600A292 */  lbu        $v0, 0x46($s5)
/* 6AA1C7C 80086F4C 0C00A526 */  addiu      $a1, $s5, 0xC
/* 6AA1C80 80086F50 5E3C010C */  jal        func_8004F178
/* 6AA1C84 80086F54 460062A2 */   sb        $v0, 0x46($s3)
/* 6AA1C88 80086F58 0957010C */  jal        func_80055C24
/* 6AA1C8C 80086F5C 21206002 */   addu      $a0, $s3, $zero
/* 6AA1C90 80086F60 4ED7000C */  jal        func_80035D38
/* 6AA1C94 80086F64 21206002 */   addu      $a0, $s3, $zero
/* 6AA1C98 80086F68 02004010 */  beqz       $v0, .Llevel_31_80086F74
/* 6AA1C9C 80086F6C 00000000 */   nop
/* 6AA1CA0 80086F70 140062AE */  sw         $v0, 0x14($s3)
.Llevel_31_80086F74:
/* 6AA1CA4 80086F74 06000224 */  addiu      $v0, $zero, 0x6
/* 6AA1CA8 80086F78 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1CAC 80086F7C 480062A2 */   sb        $v0, 0x48($s3)
.Llevel_31_80086F80:
/* 6AA1CB0 80086F80 0000708E */  lw         $s0, 0x0($s3)
/* 6AA1CB4 80086F84 0300A012 */  beqz       $s5, .Llevel_31_80086F94
/* 6AA1CB8 80086F88 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6AA1CBC 80086F8C E81B0208 */  j          .Llevel_31_80086FA0
/* 6AA1CC0 80086F90 0C006426 */   addiu     $a0, $s3, 0xC
.Llevel_31_80086F94:
/* 6AA1CC4 80086F94 0C006426 */  addiu      $a0, $s3, 0xC
/* 6AA1CC8 80086F98 0780053C */  lui        $a1, %hi(D_80070328)
/* 6AA1CCC 80086F9C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_31_80086FA0:
/* 6AA1CD0 80086FA0 5E3C010C */  jal        func_8004F178
/* 6AA1CD4 80086FA4 00000000 */   nop
/* 6AA1CD8 80086FA8 0957010C */  jal        func_80055C24
/* 6AA1CDC 80086FAC 21206002 */   addu      $a0, $s3, $zero
/* 6AA1CE0 80086FB0 3F000224 */  addiu      $v0, $zero, 0x3F
/* 6AA1CE4 80086FB4 000015AE */  sw         $s5, 0x0($s0)
/* 6AA1CE8 80086FB8 4C0062A2 */  sb         $v0, 0x4C($s3)
/* 6AA1CEC 80086FBC 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1CF0 80086FC0 4E0062A2 */   sb        $v0, 0x4E($s3)
.Llevel_31_80086FC4:
/* 6AA1CF4 80086FC4 0C006426 */  addiu      $a0, $s3, 0xC
.Llevel_31_80086FC8:
/* 6AA1CF8 80086FC8 0000708E */  lw         $s0, 0x0($s3)
/* 6AA1CFC 80086FCC 5E3C010C */  jal        func_8004F178
/* 6AA1D00 80086FD0 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6AA1D04 80086FD4 4400A292 */  lbu        $v0, 0x44($s5)
/* 6AA1D08 80086FD8 00000000 */  nop
/* 6AA1D0C 80086FDC 23100200 */  negu       $v0, $v0
/* 6AA1D10 80086FE0 440062A2 */  sb         $v0, 0x44($s3)
/* 6AA1D14 80086FE4 4500A292 */  lbu        $v0, 0x45($s5)
/* 6AA1D18 80086FE8 00000000 */  nop
/* 6AA1D1C 80086FEC 23100200 */  negu       $v0, $v0
/* 6AA1D20 80086FF0 450062A2 */  sb         $v0, 0x45($s3)
/* 6AA1D24 80086FF4 4600A292 */  lbu        $v0, 0x46($s5)
/* 6AA1D28 80086FF8 21206002 */  addu       $a0, $s3, $zero
/* 6AA1D2C 80086FFC 0957010C */  jal        func_80055C24
/* 6AA1D30 80087000 460062A2 */   sb        $v0, 0x46($s3)
/* 6AA1D34 80087004 FD000224 */  addiu      $v0, $zero, 0xFD
/* 6AA1D38 80087008 470062A2 */  sb         $v0, 0x47($s3)
/* 6AA1D3C 8008700C 50000224 */  addiu      $v0, $zero, 0x50
/* 6AA1D40 80087010 080060AE */  sw         $zero, 0x8($s3)
/* 6AA1D44 80087014 570062A2 */  sb         $v0, 0x57($s3)
/* 6AA1D48 80087018 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1D4C 8008701C 000015AE */   sw        $s5, 0x0($s0)
.Llevel_31_80087020:
/* 6AA1D50 80087020 2120A002 */  addu       $a0, $s5, $zero
/* 6AA1D54 80087024 21280000 */  addu       $a1, $zero, $zero
/* 6AA1D58 80087028 0000718E */  lw         $s1, 0x0($s3)
/* 6AA1D5C 8008702C C557010C */  jal        func_80055F14
/* 6AA1D60 80087030 1000A627 */   addiu     $a2, $sp, 0x10
/* 6AA1D64 80087034 2120A002 */  addu       $a0, $s5, $zero
/* 6AA1D68 80087038 01000524 */  addiu      $a1, $zero, 0x1
/* 6AA1D6C 8008703C 2000B027 */  addiu      $s0, $sp, 0x20
/* 6AA1D70 80087040 C557010C */  jal        func_80055F14
/* 6AA1D74 80087044 21300002 */   addu      $a2, $s0, $zero
/* 6AA1D78 80087048 21200002 */  addu       $a0, $s0, $zero
/* 6AA1D7C 8008704C 21280002 */  addu       $a1, $s0, $zero
/* 6AA1D80 80087050 723C010C */  jal        func_8004F1C8
/* 6AA1D84 80087054 1000A627 */   addiu     $a2, $sp, 0x10
/* 6AA1D88 80087058 2000A48F */  lw         $a0, 0x20($sp)
/* 6AA1D8C 8008705C 2400A58F */  lw         $a1, 0x24($sp)
/* 6AA1D90 80087060 203A010C */  jal        func_8004E880
/* 6AA1D94 80087064 21300000 */   addu      $a2, $zero, $zero
/* 6AA1D98 80087068 21200002 */  addu       $a0, $s0, $zero
/* 6AA1D9C 8008706C 01000524 */  addiu      $a1, $zero, 0x1
/* 6AA1DA0 80087070 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 6AA1DA4 80087074 443C010C */  jal        func_8004F110
/* 6AA1DA8 80087078 460062A2 */   sb        $v0, 0x46($s3)
/* 6AA1DAC 8008707C 0C006426 */  addiu      $a0, $s3, 0xC
/* 6AA1DB0 80087080 21280002 */  addu       $a1, $s0, $zero
/* 6AA1DB4 80087084 653C010C */  jal        func_8004F194
/* 6AA1DB8 80087088 1000A627 */   addiu     $a2, $sp, 0x10
/* 6AA1DBC 8008708C 0957010C */  jal        func_80055C24
/* 6AA1DC0 80087090 21206002 */   addu      $a0, $s3, $zero
/* 6AA1DC4 80087094 0780053C */  lui        $a1, %hi(D_80071A04)
/* 6AA1DC8 80087098 041AA590 */  lbu        $a1, %lo(D_80071A04)($a1)
/* 6AA1DCC 8008709C E0D3000C */  jal        func_80034F80
/* 6AA1DD0 800870A0 21206002 */   addu      $a0, $s3, $zero
/* 6AA1DD4 800870A4 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1DD8 800870A8 000035AE */   sw        $s5, 0x0($s1)
.Llevel_31_800870AC:
/* 6AA1DDC 800870AC 0957010C */  jal        func_80055C24
/* 6AA1DE0 800870B0 21206002 */   addu      $a0, $s3, $zero
/* 6AA1DE4 800870B4 02000224 */  addiu      $v0, $zero, 0x2
/* 6AA1DE8 800870B8 0E00A012 */  beqz       $s5, .Llevel_31_800870F4
/* 6AA1DEC 800870BC 540062A2 */   sb        $v0, 0x54($s3)
/* 6AA1DF0 800870C0 0C006426 */  addiu      $a0, $s3, 0xC
/* 6AA1DF4 800870C4 0000628E */  lw         $v0, 0x0($s3)
/* 6AA1DF8 800870C8 0C00A526 */  addiu      $a1, $s5, 0xC
/* 6AA1DFC 800870CC 5E3C010C */  jal        func_8004F178
/* 6AA1E00 800870D0 000055AC */   sw        $s5, 0x0($v0)
/* 6AA1E04 800870D4 0A000224 */  addiu      $v0, $zero, 0xA
/* 6AA1E08 800870D8 4A0062A2 */  sb         $v0, 0x4A($s3)
/* 6AA1E0C 800870DC 1400628E */  lw         $v0, 0x14($s3)
/* 6AA1E10 800870E0 08000324 */  addiu      $v1, $zero, 0x8
/* 6AA1E14 800870E4 4C0063A2 */  sb         $v1, 0x4C($s3)
/* 6AA1E18 800870E8 00044224 */  addiu      $v0, $v0, 0x400
/* 6AA1E1C 800870EC 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1E20 800870F0 140062AE */   sw        $v0, 0x14($s3)
.Llevel_31_800870F4:
/* 6AA1E24 800870F4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6AA1E28 800870F8 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1E2C 800870FC 1C0062AE */   sw        $v0, 0x1C($s3)
.Llevel_31_80087100:
/* 6AA1E30 80087100 0780053C */  lui        $a1, %hi(D_80070328)
/* 6AA1E34 80087104 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6AA1E38 80087108 0000708E */  lw         $s0, 0x0($s3)
/* 6AA1E3C 8008710C 5E3C010C */  jal        func_8004F178
/* 6AA1E40 80087110 0C006426 */   addiu     $a0, $s3, 0xC
/* 6AA1E44 80087114 1400628E */  lw         $v0, 0x14($s3)
/* 6AA1E48 80087118 00000000 */  nop
/* 6AA1E4C 8008711C 00044224 */  addiu      $v0, $v0, 0x400
/* 6AA1E50 80087120 140062AE */  sw         $v0, 0x14($s3)
/* 6AA1E54 80087124 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 6AA1E58 80087128 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 6AA1E5C 8008712C 21206002 */  addu       $a0, $s3, $zero
/* 6AA1E60 80087130 0957010C */  jal        func_80055C24
/* 6AA1E64 80087134 460062A2 */   sb        $v0, 0x46($s3)
/* 6AA1E68 80087138 02000224 */  addiu      $v0, $zero, 0x2
/* 6AA1E6C 8008713C 020002A2 */  sb         $v0, 0x2($s0)
/* 6AA1E70 80087140 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 6AA1E74 80087144 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 6AA1E78 80087148 00000000 */  nop
/* 6AA1E7C 8008714C 030002A2 */  sb         $v0, 0x3($s0)
/* 6AA1E80 80087150 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 6AA1E84 80087154 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 6AA1E88 80087158 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6AA1E8C 8008715C 100002AE */  sw         $v0, 0x10($s0)
/* 6AA1E90 80087160 040003A2 */  sb         $v1, 0x4($s0)
/* 6AA1E94 80087164 410060A2 */  sb         $zero, 0x41($s3)
/* 6AA1E98 80087168 4C0060A2 */  sb         $zero, 0x4C($s3)
/* 6AA1E9C 8008716C 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA1EA0 80087170 4D0060A2 */   sb        $zero, 0x4D($s3)
.Llevel_31_80087174:
/* 6AA1EA4 80087174 0C00A526 */  addiu      $a1, $s5, 0xC
/* 6AA1EA8 80087178 0000748E */  lw         $s4, 0x0($s3)
/* 6AA1EAC 8008717C 20000224 */  addiu      $v0, $zero, 0x20
/* 6AA1EB0 80087180 5E3C010C */  jal        func_8004F178
/* 6AA1EB4 80087184 4C0062A2 */   sb        $v0, 0x4C($s3)
/* 6AA1EB8 80087188 0957010C */  jal        func_80055C24
/* 6AA1EBC 8008718C 21206002 */   addu      $a0, $s3, $zero
/* 6AA1EC0 80087190 9171010C */  jal        rand
/* 6AA1EC4 80087194 00000000 */   nop
/* 6AA1EC8 80087198 9171010C */  jal        rand
/* 6AA1ECC 8008719C FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 6AA1ED0 800871A0 FF075130 */  andi       $s1, $v0, 0x7FF
/* 6AA1ED4 800871A4 8B3A010C */  jal        func_8004EA2C
/* 6AA1ED8 800871A8 21202002 */   addu      $a0, $s1, $zero
/* 6AA1EDC 800871AC 21204002 */  addu       $a0, $s2, $zero
/* 6AA1EE0 800871B0 8B3A010C */  jal        func_8004EA2C
/* 6AA1EE4 800871B4 21804000 */   addu      $s0, $v0, $zero
/* 6AA1EE8 800871B8 18000202 */  mult       $s0, $v0
/* 6AA1EEC 800871BC 12400000 */  mflo       $t0
/* 6AA1EF0 800871C0 4900A292 */  lbu        $v0, 0x49($s5)
/* 6AA1EF4 800871C4 00000000 */  nop
/* 6AA1EF8 800871C8 18000201 */  mult       $t0, $v0
/* 6AA1EFC 800871CC 21202002 */  addu       $a0, $s1, $zero
/* 6AA1F00 800871D0 12400000 */  mflo       $t0
/* 6AA1F04 800871D4 03160800 */  sra        $v0, $t0, 24
/* 6AA1F08 800871D8 8B3A010C */  jal        func_8004EA2C
/* 6AA1F0C 800871DC 000082A6 */   sh        $v0, 0x0($s4)
/* 6AA1F10 800871E0 21204002 */  addu       $a0, $s2, $zero
/* 6AA1F14 800871E4 793A010C */  jal        func_8004E9E4
/* 6AA1F18 800871E8 21804000 */   addu      $s0, $v0, $zero
/* 6AA1F1C 800871EC 18000202 */  mult       $s0, $v0
/* 6AA1F20 800871F0 12400000 */  mflo       $t0
/* 6AA1F24 800871F4 4900A292 */  lbu        $v0, 0x49($s5)
/* 6AA1F28 800871F8 00000000 */  nop
/* 6AA1F2C 800871FC 18000201 */  mult       $t0, $v0
/* 6AA1F30 80087200 21202002 */  addu       $a0, $s1, $zero
/* 6AA1F34 80087204 12400000 */  mflo       $t0
/* 6AA1F38 80087208 03160800 */  sra        $v0, $t0, 24
/* 6AA1F3C 8008720C 793A010C */  jal        func_8004E9E4
/* 6AA1F40 80087210 020082A6 */   sh        $v0, 0x2($s4)
/* 6AA1F44 80087214 4900A392 */  lbu        $v1, 0x49($s5)
/* 6AA1F48 80087218 00000000 */  nop
/* 6AA1F4C 8008721C 18004300 */  mult       $v0, $v1
/* 6AA1F50 80087220 12400000 */  mflo       $t0
/* 6AA1F54 80087224 03130800 */  sra        $v0, $t0, 12
/* 6AA1F58 80087228 040082A6 */  sh         $v0, 0x4($s4)
/* 6AA1F5C 8008722C 1800A38E */  lw         $v1, 0x18($s5)
/* 6AA1F60 80087230 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 6AA1F64 80087234 24106200 */  and        $v0, $v1, $v0
/* 6AA1F68 80087238 2C004010 */  beqz       $v0, .Llevel_31_800872EC
/* 6AA1F6C 8008723C 21300000 */   addu      $a2, $zero, $zero
/* 6AA1F70 80087240 0780103C */  lui        $s0, %hi(D_80070328)
/* 6AA1F74 80087244 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 6AA1F78 80087248 0C00638E */  lw         $v1, 0xC($s3)
/* 6AA1F7C 8008724C 0000048E */  lw         $a0, 0x0($s0)
/* 6AA1F80 80087250 1000628E */  lw         $v0, 0x10($s3)
/* 6AA1F84 80087254 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6AA1F88 80087258 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6AA1F8C 8008725C 23206400 */  subu       $a0, $v1, $a0
/* 6AA1F90 80087260 203A010C */  jal        func_8004E880
/* 6AA1F94 80087264 23284500 */   subu      $a1, $v0, $a1
/* 6AA1F98 80087268 40100200 */  sll        $v0, $v0, 1
/* 6AA1F9C 8008726C 21300000 */  addu       $a2, $zero, $zero
/* 6AA1FA0 80087270 0680013C */  lui        $at, %hi(D_80065920)
/* 6AA1FA4 80087274 21082200 */  addu       $at, $at, $v0
/* 6AA1FA8 80087278 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6AA1FAC 8008727C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6AA1FB0 80087280 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6AA1FB4 80087284 03110200 */  sra        $v0, $v0, 4
/* 6AA1FB8 80087288 3000A2AF */  sw         $v0, 0x30($sp)
/* 6AA1FBC 8008728C 0C00638E */  lw         $v1, 0xC($s3)
/* 6AA1FC0 80087290 0000048E */  lw         $a0, 0x0($s0)
/* 6AA1FC4 80087294 1000628E */  lw         $v0, 0x10($s3)
/* 6AA1FC8 80087298 23206400 */  subu       $a0, $v1, $a0
/* 6AA1FCC 8008729C 203A010C */  jal        func_8004E880
/* 6AA1FD0 800872A0 23284500 */   subu      $a1, $v0, $a1
/* 6AA1FD4 800872A4 40100200 */  sll        $v0, $v0, 1
/* 6AA1FD8 800872A8 0680013C */  lui        $at, %hi(D_800658A0)
/* 6AA1FDC 800872AC 21082200 */  addu       $at, $at, $v0
/* 6AA1FE0 800872B0 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 6AA1FE4 800872B4 3000A38F */  lw         $v1, 0x30($sp)
/* 6AA1FE8 800872B8 3800A0AF */  sw         $zero, 0x38($sp)
/* 6AA1FEC 800872BC 03110200 */  sra        $v0, $v0, 4
/* 6AA1FF0 800872C0 3400A2AF */  sw         $v0, 0x34($sp)
/* 6AA1FF4 800872C4 00008296 */  lhu        $v0, 0x0($s4)
/* 6AA1FF8 800872C8 00000000 */  nop
/* 6AA1FFC 800872CC 21104300 */  addu       $v0, $v0, $v1
/* 6AA2000 800872D0 000082A6 */  sh         $v0, 0x0($s4)
/* 6AA2004 800872D4 3400A38F */  lw         $v1, 0x34($sp)
/* 6AA2008 800872D8 02008296 */  lhu        $v0, 0x2($s4)
/* 6AA200C 800872DC 00000000 */  nop
/* 6AA2010 800872E0 21104300 */  addu       $v0, $v0, $v1
/* 6AA2014 800872E4 D21C0208 */  j          .Llevel_31_80087348
/* 6AA2018 800872E8 020082A6 */   sh        $v0, 0x2($s4)
.Llevel_31_800872EC:
/* 6AA201C 800872EC 0200023C */  lui        $v0, (0x20000 >> 16)
/* 6AA2020 800872F0 24106200 */  and        $v0, $v1, $v0
/* 6AA2024 800872F4 14004010 */  beqz       $v0, .Llevel_31_80087348
/* 6AA2028 800872F8 04000224 */   addiu     $v0, $zero, 0x4
/* 6AA202C 800872FC 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 6AA2030 80087300 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 6AA2034 80087304 00000000 */  nop
/* 6AA2038 80087308 03006210 */  beq        $v1, $v0, .Llevel_31_80087318
/* 6AA203C 8008730C 0C000224 */   addiu     $v0, $zero, 0xC
/* 6AA2040 80087310 0D006214 */  bne        $v1, $v0, .Llevel_31_80087348
/* 6AA2044 80087314 00000000 */   nop
.Llevel_31_80087318:
/* 6AA2048 80087318 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 6AA204C 8008731C B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 6AA2050 80087320 00008396 */  lhu        $v1, 0x0($s4)
/* 6AA2054 80087324 83110200 */  sra        $v0, $v0, 6
/* 6AA2058 80087328 21186200 */  addu       $v1, $v1, $v0
/* 6AA205C 8008732C 000083A6 */  sh         $v1, 0x0($s4)
/* 6AA2060 80087330 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 6AA2064 80087334 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 6AA2068 80087338 02008396 */  lhu        $v1, 0x2($s4)
/* 6AA206C 8008733C 83110200 */  sra        $v0, $v0, 6
/* 6AA2070 80087340 21186200 */  addu       $v1, $v1, $v0
/* 6AA2074 80087344 020083A6 */  sh         $v1, 0x2($s4)
.Llevel_31_80087348:
/* 6AA2078 80087348 5100A492 */  lbu        $a0, 0x51($s5)
/* 6AA207C 8008734C 00000000 */  nop
/* 6AA2080 80087350 26008010 */  beqz       $a0, .Llevel_31_800873EC
/* 6AA2084 80087354 1000033C */   lui       $v1, (0x100000 >> 16)
/* 6AA2088 80087358 1800A28E */  lw         $v0, 0x18($s5)
/* 6AA208C 8008735C 00000000 */  nop
/* 6AA2090 80087360 24104300 */  and        $v0, $v0, $v1
/* 6AA2094 80087364 21004010 */  beqz       $v0, .Llevel_31_800873EC
/* 6AA2098 80087368 40100400 */   sll       $v0, $a0, 1
/* 6AA209C 8008736C 0680013C */  lui        $at, %hi(D_80065920)
/* 6AA20A0 80087370 21082200 */  addu       $at, $at, $v0
/* 6AA20A4 80087374 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6AA20A8 80087378 00000000 */  nop
/* 6AA20AC 8008737C 80100300 */  sll        $v0, $v1, 2
/* 6AA20B0 80087380 21104300 */  addu       $v0, $v0, $v1
/* 6AA20B4 80087384 00190200 */  sll        $v1, $v0, 4
/* 6AA20B8 80087388 23186200 */  subu       $v1, $v1, $v0
/* 6AA20BC 8008738C 00008296 */  lhu        $v0, 0x0($s4)
/* 6AA20C0 80087390 C31A0300 */  sra        $v1, $v1, 11
/* 6AA20C4 80087394 21104300 */  addu       $v0, $v0, $v1
/* 6AA20C8 80087398 000082A6 */  sh         $v0, 0x0($s4)
/* 6AA20CC 8008739C 5100A292 */  lbu        $v0, 0x51($s5)
/* 6AA20D0 800873A0 28000424 */  addiu      $a0, $zero, 0x28
/* 6AA20D4 800873A4 40100200 */  sll        $v0, $v0, 1
/* 6AA20D8 800873A8 0680013C */  lui        $at, %hi(D_800658A0)
/* 6AA20DC 800873AC 21082200 */  addu       $at, $at, $v0
/* 6AA20E0 800873B0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6AA20E4 800873B4 46000524 */  addiu      $a1, $zero, 0x46
/* 6AA20E8 800873B8 80100300 */  sll        $v0, $v1, 2
/* 6AA20EC 800873BC 21104300 */  addu       $v0, $v0, $v1
/* 6AA20F0 800873C0 00190200 */  sll        $v1, $v0, 4
/* 6AA20F4 800873C4 23186200 */  subu       $v1, $v1, $v0
/* 6AA20F8 800873C8 02008296 */  lhu        $v0, 0x2($s4)
/* 6AA20FC 800873CC C31A0300 */  sra        $v1, $v1, 11
/* 6AA2100 800873D0 21104300 */  addu       $v0, $v0, $v1
/* 6AA2104 800873D4 DBD8000C */  jal        func_8003636C
/* 6AA2108 800873D8 020082A6 */   sh        $v0, 0x2($s4)
/* 6AA210C 800873DC 04008396 */  lhu        $v1, 0x4($s4)
/* 6AA2110 800873E0 00000000 */  nop
/* 6AA2114 800873E4 21186200 */  addu       $v1, $v1, $v0
/* 6AA2118 800873E8 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_31_800873EC:
/* 6AA211C 800873EC 00008286 */  lh         $v0, 0x0($s4)
/* 6AA2120 800873F0 0C00638E */  lw         $v1, 0xC($s3)
/* 6AA2124 800873F4 80100200 */  sll        $v0, $v0, 2
/* 6AA2128 800873F8 21186200 */  addu       $v1, $v1, $v0
/* 6AA212C 800873FC 0C0063AE */  sw         $v1, 0xC($s3)
/* 6AA2130 80087400 02008286 */  lh         $v0, 0x2($s4)
/* 6AA2134 80087404 1000638E */  lw         $v1, 0x10($s3)
/* 6AA2138 80087408 80100200 */  sll        $v0, $v0, 2
/* 6AA213C 8008740C 21186200 */  addu       $v1, $v1, $v0
/* 6AA2140 80087410 100063AE */  sw         $v1, 0x10($s3)
/* 6AA2144 80087414 04008286 */  lh         $v0, 0x4($s4)
/* 6AA2148 80087418 1400638E */  lw         $v1, 0x14($s3)
/* 6AA214C 8008741C 80100200 */  sll        $v0, $v0, 2
/* 6AA2150 80087420 21186200 */  addu       $v1, $v1, $v0
/* 6AA2154 80087424 9171010C */  jal        rand
/* 6AA2158 80087428 140063AE */   sw        $v1, 0x14($s3)
/* 6AA215C 8008742C 9171010C */  jal        rand
/* 6AA2160 80087430 450062A2 */   sb        $v0, 0x45($s3)
/* 6AA2164 80087434 9171010C */  jal        rand
/* 6AA2168 80087438 460062A2 */   sb        $v0, 0x46($s3)
/* 6AA216C 8008743C 1F004230 */  andi       $v0, $v0, 0x1F
/* 6AA2170 80087440 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6AA2174 80087444 9171010C */  jal        rand
/* 6AA2178 80087448 060082A6 */   sh        $v0, 0x6($s4)
/* 6AA217C 8008744C 1F004230 */  andi       $v0, $v0, 0x1F
/* 6AA2180 80087450 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6AA2184 80087454 9171010C */  jal        rand
/* 6AA2188 80087458 080082A6 */   sh        $v0, 0x8($s4)
/* 6AA218C 8008745C 32000424 */  addiu      $a0, $zero, 0x32
/* 6AA2190 80087460 1F004230 */  andi       $v0, $v0, 0x1F
/* 6AA2194 80087464 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6AA2198 80087468 0A0082A6 */  sh         $v0, 0xA($s4)
/* 6AA219C 8008746C 1400A28E */  lw         $v0, 0x14($s5)
/* 6AA21A0 80087470 50000524 */  addiu      $a1, $zero, 0x50
/* 6AA21A4 80087474 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 6AA21A8 80087478 DBD8000C */  jal        func_8003636C
/* 6AA21AC 8008747C 100082AE */   sw        $v0, 0x10($s4)
/* 6AA21B0 80087480 2D1D0208 */  j          .Llevel_31_800874B4
/* 6AA21B4 80087484 0C0082AE */   sw        $v0, 0xC($s4)
.Llevel_31_80087488:
/* 6AA21B8 80087488 0300A012 */  beqz       $s5, .Llevel_31_80087498
/* 6AA21BC 8008748C 0C00A526 */   addiu     $a1, $s5, 0xC
/* 6AA21C0 80087490 291D0208 */  j          .Llevel_31_800874A4
/* 6AA21C4 80087494 0C006426 */   addiu     $a0, $s3, 0xC
.Llevel_31_80087498:
/* 6AA21C8 80087498 0C006426 */  addiu      $a0, $s3, 0xC
/* 6AA21CC 8008749C 0780053C */  lui        $a1, %hi(D_80070328)
/* 6AA21D0 800874A0 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_31_800874A4:
/* 6AA21D4 800874A4 5E3C010C */  jal        func_8004F178
/* 6AA21D8 800874A8 00000000 */   nop
/* 6AA21DC 800874AC 0957010C */  jal        func_80055C24
/* 6AA21E0 800874B0 21206002 */   addu      $a0, $s3, $zero
.Llevel_31_800874B4:
/* 6AA21E4 800874B4 21106002 */  addu       $v0, $s3, $zero
.Llevel_31_800874B8:
/* 6AA21E8 800874B8 5800BF8F */  lw         $ra, 0x58($sp)
/* 6AA21EC 800874BC 5400B58F */  lw         $s5, 0x54($sp)
/* 6AA21F0 800874C0 5000B48F */  lw         $s4, 0x50($sp)
/* 6AA21F4 800874C4 4C00B38F */  lw         $s3, 0x4C($sp)
/* 6AA21F8 800874C8 4800B28F */  lw         $s2, 0x48($sp)
/* 6AA21FC 800874CC 4400B18F */  lw         $s1, 0x44($sp)
/* 6AA2200 800874D0 4000B08F */  lw         $s0, 0x40($sp)
/* 6AA2204 800874D4 6000BD27 */  addiu      $sp, $sp, 0x60
/* 6AA2208 800874D8 0800E003 */  jr         $ra
/* 6AA220C 800874DC 00000000 */   nop
.size func_level_31_80086BBC, . - func_level_31_80086BBC
