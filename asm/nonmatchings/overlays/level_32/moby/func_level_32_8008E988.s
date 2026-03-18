.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_8008E988
/* 6DF5EB8 8008E988 50FFBD27 */  addiu      $sp, $sp, -0xB0
/* 6DF5EBC 8008E98C 9400B1AF */  sw         $s1, 0x94($sp)
/* 6DF5EC0 8008E990 21888000 */  addu       $s1, $a0, $zero
/* 6DF5EC4 8008E994 A800B6AF */  sw         $s6, 0xA8($sp)
/* 6DF5EC8 8008E998 21B0A000 */  addu       $s6, $a1, $zero
/* 6DF5ECC 8008E99C AC00BFAF */  sw         $ra, 0xAC($sp)
/* 6DF5ED0 8008E9A0 A400B5AF */  sw         $s5, 0xA4($sp)
/* 6DF5ED4 8008E9A4 A000B4AF */  sw         $s4, 0xA0($sp)
/* 6DF5ED8 8008E9A8 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 6DF5EDC 8008E9AC 9800B2AF */  sw         $s2, 0x98($sp)
/* 6DF5EE0 8008E9B0 9F56010C */  jal        func_80055A7C
/* 6DF5EE4 8008E9B4 9000B0AF */   sw        $s0, 0x90($sp)
/* 6DF5EE8 8008E9B8 21A84000 */  addu       $s5, $v0, $zero
/* 6DF5EEC 8008E9BC 0300A016 */  bnez       $s5, .Llevel_32_8008E9CC
/* 6DF5EF0 8008E9C0 2120A002 */   addu      $a0, $s5, $zero
/* 6DF5EF4 8008E9C4 AB3F0208 */  j          .Llevel_32_8008FEAC
/* 6DF5EF8 8008E9C8 21100000 */   addu      $v0, $zero, $zero
.Llevel_32_8008E9CC:
/* 6DF5EFC 8008E9CC 21280000 */  addu       $a1, $zero, $zero
/* 6DF5F00 8008E9D0 0000B08E */  lw         $s0, 0x0($s5)
/* 6DF5F04 8008E9D4 E439010C */  jal        func_8004E790
/* 6DF5F08 8008E9D8 58000624 */   addiu     $a2, $zero, 0x58
/* 6DF5F0C 8008E9DC 21280000 */  addu       $a1, $zero, $zero
/* 6DF5F10 8008E9E0 18000624 */  addiu      $a2, $zero, 0x18
/* 6DF5F14 8008E9E4 21200002 */  addu       $a0, $s0, $zero
/* 6DF5F18 8008E9E8 E439010C */  jal        func_8004E790
/* 6DF5F1C 8008E9EC 0000A4AE */   sw        $a0, 0x0($s5)
/* 6DF5F20 8008E9F0 1600C012 */  beqz       $s6, .Llevel_32_8008EA4C
/* 6DF5F24 8008E9F4 3600B1A6 */   sh        $s1, 0x36($s5)
/* 6DF5F28 8008E9F8 0780043C */  lui        $a0, %hi(D_8006C550)
/* 6DF5F2C 8008E9FC 50C5848C */  lw         $a0, %lo(D_8006C550)($a0)
/* 6DF5F30 8008EA00 00000000 */  nop
/* 6DF5F34 8008EA04 2320C402 */  subu       $a0, $s6, $a0
/* 6DF5F38 8008EA08 40190400 */  sll        $v1, $a0, 5
/* 6DF5F3C 8008EA0C 23186400 */  subu       $v1, $v1, $a0
/* 6DF5F40 8008EA10 40190300 */  sll        $v1, $v1, 5
/* 6DF5F44 8008EA14 21186400 */  addu       $v1, $v1, $a0
/* 6DF5F48 8008EA18 C0100300 */  sll        $v0, $v1, 3
/* 6DF5F4C 8008EA1C 21186200 */  addu       $v1, $v1, $v0
/* 6DF5F50 8008EA20 C0130300 */  sll        $v0, $v1, 15
/* 6DF5F54 8008EA24 23104300 */  subu       $v0, $v0, $v1
/* 6DF5F58 8008EA28 80100200 */  sll        $v0, $v0, 2
/* 6DF5F5C 8008EA2C 21104400 */  addu       $v0, $v0, $a0
/* 6DF5F60 8008EA30 23100200 */  negu       $v0, $v0
/* 6DF5F64 8008EA34 C3180200 */  sra        $v1, $v0, 3
/* 6DF5F68 8008EA38 0001622C */  sltiu      $v0, $v1, 0x100
/* 6DF5F6C 8008EA3C 04004010 */  beqz       $v0, .Llevel_32_8008EA50
/* 6DF5F70 8008EA40 FF000224 */   addiu     $v0, $zero, 0xFF
/* 6DF5F74 8008EA44 953A0208 */  j          .Llevel_32_8008EA54
/* 6DF5F78 8008EA48 3A00A3A2 */   sb        $v1, 0x3A($s5)
.Llevel_32_8008EA4C:
/* 6DF5F7C 8008EA4C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_32_8008EA50:
/* 6DF5F80 8008EA50 3A00A2A2 */  sb         $v0, 0x3A($s5)
.Llevel_32_8008EA54:
/* 6DF5F84 8008EA54 FBD3000C */  jal        func_80034FEC
/* 6DF5F88 8008EA58 2120A002 */   addu      $a0, $s5, $zero
/* 6DF5F8C 8008EA5C D7000224 */  addiu      $v0, $zero, 0xD7
/* 6DF5F90 8008EA60 53002212 */  beq        $s1, $v0, .Llevel_32_8008EBB0
/* 6DF5F94 8008EA64 D800222A */   slti      $v0, $s1, 0xD8
/* 6DF5F98 8008EA68 24004010 */  beqz       $v0, .Llevel_32_8008EAFC
/* 6DF5F9C 8008EA6C 84000224 */   addiu     $v0, $zero, 0x84
/* 6DF5FA0 8008EA70 AD012212 */  beq        $s1, $v0, .Llevel_32_8008F128
/* 6DF5FA4 8008EA74 8500222A */   slti      $v0, $s1, 0x85
/* 6DF5FA8 8008EA78 10004010 */  beqz       $v0, .Llevel_32_8008EABC
/* 6DF5FAC 8008EA7C 10000224 */   addiu     $v0, $zero, 0x10
/* 6DF5FB0 8008EA80 21012212 */  beq        $s1, $v0, .Llevel_32_8008EF08
/* 6DF5FB4 8008EA84 1100222A */   slti      $v0, $s1, 0x11
/* 6DF5FB8 8008EA88 05004010 */  beqz       $v0, .Llevel_32_8008EAA0
/* 6DF5FBC 8008EA8C 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF5FC0 8008EA90 40002212 */  beq        $s1, $v0, .Llevel_32_8008EB94
/* 6DF5FC4 8008EA94 00000000 */   nop
/* 6DF5FC8 8008EA98 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF5FCC 8008EA9C 00000000 */   nop
.Llevel_32_8008EAA0:
/* 6DF5FD0 8008EAA0 5C000224 */  addiu      $v0, $zero, 0x5C
/* 6DF5FD4 8008EAA4 4B012212 */  beq        $s1, $v0, .Llevel_32_8008EFD4
/* 6DF5FD8 8008EAA8 78000224 */   addiu     $v0, $zero, 0x78
/* 6DF5FDC 8008EAAC 62012212 */  beq        $s1, $v0, .Llevel_32_8008F038
/* 6DF5FE0 8008EAB0 00000000 */   nop
/* 6DF5FE4 8008EAB4 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF5FE8 8008EAB8 00000000 */   nop
.Llevel_32_8008EABC:
/* 6DF5FEC 8008EABC AA000224 */  addiu      $v0, $zero, 0xAA
/* 6DF5FF0 8008EAC0 15022212 */  beq        $s1, $v0, .Llevel_32_8008F318
/* 6DF5FF4 8008EAC4 AB00222A */   slti      $v0, $s1, 0xAB
/* 6DF5FF8 8008EAC8 05004010 */  beqz       $v0, .Llevel_32_8008EAE0
/* 6DF5FFC 8008EACC 8E000224 */   addiu     $v0, $zero, 0x8E
/* 6DF6000 8008EAD0 A4012212 */  beq        $s1, $v0, .Llevel_32_8008F164
/* 6DF6004 8008EAD4 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF6008 8008EAD8 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF600C 8008EADC 00000000 */   nop
.Llevel_32_8008EAE0:
/* 6DF6010 8008EAE0 C2000224 */  addiu      $v0, $zero, 0xC2
/* 6DF6014 8008EAE4 1A022212 */  beq        $s1, $v0, .Llevel_32_8008F350
/* 6DF6018 8008EAE8 D3000224 */   addiu     $v0, $zero, 0xD3
/* 6DF601C 8008EAEC 07012212 */  beq        $s1, $v0, .Llevel_32_8008EF0C
/* 6DF6020 8008EAF0 10000324 */   addiu     $v1, $zero, 0x10
/* 6DF6024 8008EAF4 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF6028 8008EAF8 00000000 */   nop
.Llevel_32_8008EAFC:
/* 6DF602C 8008EAFC 36010224 */  addiu      $v0, $zero, 0x136
/* 6DF6030 8008EB00 BA022212 */  beq        $s1, $v0, .Llevel_32_8008F5EC
/* 6DF6034 8008EB04 3701222A */   slti      $v0, $s1, 0x137
/* 6DF6038 8008EB08 10004010 */  beqz       $v0, .Llevel_32_8008EB4C
/* 6DF603C 8008EB0C 10010224 */   addiu     $v0, $zero, 0x110
/* 6DF6040 8008EB10 99022212 */  beq        $s1, $v0, .Llevel_32_8008F578
/* 6DF6044 8008EB14 1101222A */   slti      $v0, $s1, 0x111
/* 6DF6048 8008EB18 05004010 */  beqz       $v0, .Llevel_32_8008EB30
/* 6DF604C 8008EB1C 04010224 */   addiu     $v0, $zero, 0x104
/* 6DF6050 8008EB20 80022212 */  beq        $s1, $v0, .Llevel_32_8008F524
/* 6DF6054 8008EB24 00000000 */   nop
/* 6DF6058 8008EB28 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF605C 8008EB2C 00000000 */   nop
.Llevel_32_8008EB30:
/* 6DF6060 8008EB30 32010224 */  addiu      $v0, $zero, 0x132
/* 6DF6064 8008EB34 AD022212 */  beq        $s1, $v0, .Llevel_32_8008F5EC
/* 6DF6068 8008EB38 34010224 */   addiu     $v0, $zero, 0x134
/* 6DF606C 8008EB3C AC022212 */  beq        $s1, $v0, .Llevel_32_8008F5F0
/* 6DF6070 8008EB40 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF6074 8008EB44 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF6078 8008EB48 00000000 */   nop
.Llevel_32_8008EB4C:
/* 6DF607C 8008EB4C 6C010224 */  addiu      $v0, $zero, 0x16C
/* 6DF6080 8008EB50 9D042212 */  beq        $s1, $v0, .Llevel_32_8008FDC8
/* 6DF6084 8008EB54 6D01222A */   slti      $v0, $s1, 0x16D
/* 6DF6088 8008EB58 07004010 */  beqz       $v0, .Llevel_32_8008EB78
/* 6DF608C 8008EB5C 46010224 */   addiu     $v0, $zero, 0x146
/* 6DF6090 8008EB60 68032212 */  beq        $s1, $v0, .Llevel_32_8008F904
/* 6DF6094 8008EB64 47010224 */   addiu     $v0, $zero, 0x147
/* 6DF6098 8008EB68 A9032212 */  beq        $s1, $v0, .Llevel_32_8008FA10
/* 6DF609C 8008EB6C 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF60A0 8008EB70 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF60A4 8008EB74 00000000 */   nop
.Llevel_32_8008EB78:
/* 6DF60A8 8008EB78 38020224 */  addiu      $v0, $zero, 0x238
/* 6DF60AC 8008EB7C 9B022212 */  beq        $s1, $v0, .Llevel_32_8008F5EC
/* 6DF60B0 8008EB80 DA020224 */   addiu     $v0, $zero, 0x2DA
/* 6DF60B4 8008EB84 A3042212 */  beq        $s1, $v0, .Llevel_32_8008FE14
/* 6DF60B8 8008EB88 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF60BC 8008EB8C 9F3F0208 */  j          .Llevel_32_8008FE7C
/* 6DF60C0 8008EB90 00000000 */   nop
.Llevel_32_8008EB94:
/* 6DF60C4 8008EB94 0957010C */  jal        func_80055C24
/* 6DF60C8 8008EB98 2120A002 */   addu      $a0, $s5, $zero
/* 6DF60CC 8008EB9C 18000224 */  addiu      $v0, $zero, 0x18
/* 6DF60D0 8008EBA0 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DF60D4 8008EBA4 40000224 */  addiu      $v0, $zero, 0x40
/* 6DF60D8 8008EBA8 5B3D0208 */  j          .Llevel_32_8008F56C
/* 6DF60DC 8008EBAC 4A00A2A2 */   sb        $v0, 0x4A($s5)
.Llevel_32_8008EBB0:
/* 6DF60E0 8008EBB0 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF60E4 8008EBB4 0C00C526 */  addiu      $a1, $s6, 0xC
/* 6DF60E8 8008EBB8 0000B48E */  lw         $s4, 0x0($s5)
/* 6DF60EC 8008EBBC 20000224 */  addiu      $v0, $zero, 0x20
/* 6DF60F0 8008EBC0 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DF60F4 8008EBC4 5E3C010C */  jal        func_8004F178
/* 6DF60F8 8008EBC8 4E00A2A2 */   sb        $v0, 0x4E($s5)
/* 6DF60FC 8008EBCC 0957010C */  jal        func_80055C24
/* 6DF6100 8008EBD0 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6104 8008EBD4 2C010424 */  addiu      $a0, $zero, 0x12C
/* 6DF6108 8008EBD8 DBD8000C */  jal        func_8003636C
/* 6DF610C 8008EBDC 34080524 */   addiu     $a1, $zero, 0x834
/* 6DF6110 8008EBE0 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 6DF6114 8008EBE4 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 6DF6118 8008EBE8 DBD8000C */  jal        func_8003636C
/* 6DF611C 8008EBEC 21904000 */   addu      $s2, $v0, $zero
/* 6DF6120 8008EBF0 4600D192 */  lbu        $s1, 0x46($s6)
/* 6DF6124 8008EBF4 21204002 */  addu       $a0, $s2, $zero
/* 6DF6128 8008EBF8 21882202 */  addu       $s1, $s1, $v0
/* 6DF612C 8008EBFC 8B3A010C */  jal        func_8004EA2C
/* 6DF6130 8008EC00 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 6DF6134 8008EC04 21202002 */  addu       $a0, $s1, $zero
/* 6DF6138 8008EC08 8B3A010C */  jal        func_8004EA2C
/* 6DF613C 8008EC0C 21804000 */   addu      $s0, $v0, $zero
/* 6DF6140 8008EC10 78001324 */  addiu      $s3, $zero, 0x78
/* 6DF6144 8008EC14 18005300 */  mult       $v0, $s3
/* 6DF6148 8008EC18 12400000 */  mflo       $t0
/* 6DF614C 8008EC1C 83811000 */  sra        $s0, $s0, 6
/* 6DF6150 8008EC20 00000000 */  nop
/* 6DF6154 8008EC24 18000802 */  mult       $s0, $t0
/* 6DF6158 8008EC28 21204002 */  addu       $a0, $s2, $zero
/* 6DF615C 8008EC2C 12400000 */  mflo       $t0
/* 6DF6160 8008EC30 83140800 */  sra        $v0, $t0, 18
/* 6DF6164 8008EC34 8B3A010C */  jal        func_8004EA2C
/* 6DF6168 8008EC38 000082A6 */   sh        $v0, 0x0($s4)
/* 6DF616C 8008EC3C 21202002 */  addu       $a0, $s1, $zero
/* 6DF6170 8008EC40 793A010C */  jal        func_8004E9E4
/* 6DF6174 8008EC44 21804000 */   addu      $s0, $v0, $zero
/* 6DF6178 8008EC48 18005300 */  mult       $v0, $s3
/* 6DF617C 8008EC4C 12400000 */  mflo       $t0
/* 6DF6180 8008EC50 83811000 */  sra        $s0, $s0, 6
/* 6DF6184 8008EC54 00000000 */  nop
/* 6DF6188 8008EC58 18000802 */  mult       $s0, $t0
/* 6DF618C 8008EC5C 21204002 */  addu       $a0, $s2, $zero
/* 6DF6190 8008EC60 12400000 */  mflo       $t0
/* 6DF6194 8008EC64 83140800 */  sra        $v0, $t0, 18
/* 6DF6198 8008EC68 793A010C */  jal        func_8004E9E4
/* 6DF619C 8008EC6C 020082A6 */   sh        $v0, 0x2($s4)
/* 6DF61A0 8008EC70 96000324 */  addiu      $v1, $zero, 0x96
/* 6DF61A4 8008EC74 18004300 */  mult       $v0, $v1
/* 6DF61A8 8008EC78 12400000 */  mflo       $t0
/* 6DF61AC 8008EC7C 03130800 */  sra        $v0, $t0, 12
/* 6DF61B0 8008EC80 040082A6 */  sh         $v0, 0x4($s4)
/* 6DF61B4 8008EC84 5100C492 */  lbu        $a0, 0x51($s6)
/* 6DF61B8 8008EC88 00000000 */  nop
/* 6DF61BC 8008EC8C 26008010 */  beqz       $a0, .Llevel_32_8008ED28
/* 6DF61C0 8008EC90 1000033C */   lui       $v1, (0x100000 >> 16)
/* 6DF61C4 8008EC94 1800C28E */  lw         $v0, 0x18($s6)
/* 6DF61C8 8008EC98 00000000 */  nop
/* 6DF61CC 8008EC9C 24104300 */  and        $v0, $v0, $v1
/* 6DF61D0 8008ECA0 21004010 */  beqz       $v0, .Llevel_32_8008ED28
/* 6DF61D4 8008ECA4 40100400 */   sll       $v0, $a0, 1
/* 6DF61D8 8008ECA8 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF61DC 8008ECAC 21082200 */  addu       $at, $at, $v0
/* 6DF61E0 8008ECB0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF61E4 8008ECB4 00000000 */  nop
/* 6DF61E8 8008ECB8 80100300 */  sll        $v0, $v1, 2
/* 6DF61EC 8008ECBC 21104300 */  addu       $v0, $v0, $v1
/* 6DF61F0 8008ECC0 00190200 */  sll        $v1, $v0, 4
/* 6DF61F4 8008ECC4 23186200 */  subu       $v1, $v1, $v0
/* 6DF61F8 8008ECC8 00008296 */  lhu        $v0, 0x0($s4)
/* 6DF61FC 8008ECCC C31A0300 */  sra        $v1, $v1, 11
/* 6DF6200 8008ECD0 21104300 */  addu       $v0, $v0, $v1
/* 6DF6204 8008ECD4 000082A6 */  sh         $v0, 0x0($s4)
/* 6DF6208 8008ECD8 5100C292 */  lbu        $v0, 0x51($s6)
/* 6DF620C 8008ECDC 28000424 */  addiu      $a0, $zero, 0x28
/* 6DF6210 8008ECE0 40100200 */  sll        $v0, $v0, 1
/* 6DF6214 8008ECE4 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF6218 8008ECE8 21082200 */  addu       $at, $at, $v0
/* 6DF621C 8008ECEC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF6220 8008ECF0 46000524 */  addiu      $a1, $zero, 0x46
/* 6DF6224 8008ECF4 80100300 */  sll        $v0, $v1, 2
/* 6DF6228 8008ECF8 21104300 */  addu       $v0, $v0, $v1
/* 6DF622C 8008ECFC 00190200 */  sll        $v1, $v0, 4
/* 6DF6230 8008ED00 23186200 */  subu       $v1, $v1, $v0
/* 6DF6234 8008ED04 02008296 */  lhu        $v0, 0x2($s4)
/* 6DF6238 8008ED08 C31A0300 */  sra        $v1, $v1, 11
/* 6DF623C 8008ED0C 21104300 */  addu       $v0, $v0, $v1
/* 6DF6240 8008ED10 DBD8000C */  jal        func_8003636C
/* 6DF6244 8008ED14 020082A6 */   sh        $v0, 0x2($s4)
/* 6DF6248 8008ED18 04008396 */  lhu        $v1, 0x4($s4)
/* 6DF624C 8008ED1C 00000000 */  nop
/* 6DF6250 8008ED20 21186200 */  addu       $v1, $v1, $v0
/* 6DF6254 8008ED24 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_32_8008ED28:
/* 6DF6258 8008ED28 1800C28E */  lw         $v0, 0x18($s6)
/* 6DF625C 8008ED2C 0200033C */  lui        $v1, (0x20000 >> 16)
/* 6DF6260 8008ED30 24104300 */  and        $v0, $v0, $v1
/* 6DF6264 8008ED34 1B004010 */  beqz       $v0, .Llevel_32_8008EDA4
/* 6DF6268 8008ED38 00000000 */   nop
/* 6DF626C 8008ED3C 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF6270 8008ED40 00000000 */  nop
/* 6DF6274 8008ED44 40100200 */  sll        $v0, $v0, 1
/* 6DF6278 8008ED48 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF627C 8008ED4C 21082200 */  addu       $at, $at, $v0
/* 6DF6280 8008ED50 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF6284 8008ED54 00000000 */  nop
/* 6DF6288 8008ED58 C0100300 */  sll        $v0, $v1, 3
/* 6DF628C 8008ED5C 23104300 */  subu       $v0, $v0, $v1
/* 6DF6290 8008ED60 C0100200 */  sll        $v0, $v0, 3
/* 6DF6294 8008ED64 23104300 */  subu       $v0, $v0, $v1
/* 6DF6298 8008ED68 00008396 */  lhu        $v1, 0x0($s4)
/* 6DF629C 8008ED6C 83120200 */  sra        $v0, $v0, 10
/* 6DF62A0 8008ED70 21186200 */  addu       $v1, $v1, $v0
/* 6DF62A4 8008ED74 000083A6 */  sh         $v1, 0x0($s4)
/* 6DF62A8 8008ED78 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF62AC 8008ED7C 00000000 */  nop
/* 6DF62B0 8008ED80 40100200 */  sll        $v0, $v0, 1
/* 6DF62B4 8008ED84 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF62B8 8008ED88 21082200 */  addu       $at, $at, $v0
/* 6DF62BC 8008ED8C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF62C0 8008ED90 00000000 */  nop
/* 6DF62C4 8008ED94 C0100300 */  sll        $v0, $v1, 3
/* 6DF62C8 8008ED98 23104300 */  subu       $v0, $v0, $v1
/* 6DF62CC 8008ED9C 823B0208 */  j          .Llevel_32_8008EE08
/* 6DF62D0 8008EDA0 C0100200 */   sll       $v0, $v0, 3
.Llevel_32_8008EDA4:
/* 6DF62D4 8008EDA4 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF62D8 8008EDA8 00000000 */  nop
/* 6DF62DC 8008EDAC 40100200 */  sll        $v0, $v0, 1
/* 6DF62E0 8008EDB0 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF62E4 8008EDB4 21082200 */  addu       $at, $at, $v0
/* 6DF62E8 8008EDB8 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF62EC 8008EDBC 00000000 */  nop
/* 6DF62F0 8008EDC0 C0100300 */  sll        $v0, $v1, 3
/* 6DF62F4 8008EDC4 21104300 */  addu       $v0, $v0, $v1
/* 6DF62F8 8008EDC8 80100200 */  sll        $v0, $v0, 2
/* 6DF62FC 8008EDCC 23104300 */  subu       $v0, $v0, $v1
/* 6DF6300 8008EDD0 00008396 */  lhu        $v1, 0x0($s4)
/* 6DF6304 8008EDD4 83120200 */  sra        $v0, $v0, 10
/* 6DF6308 8008EDD8 21186200 */  addu       $v1, $v1, $v0
/* 6DF630C 8008EDDC 000083A6 */  sh         $v1, 0x0($s4)
/* 6DF6310 8008EDE0 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF6314 8008EDE4 00000000 */  nop
/* 6DF6318 8008EDE8 40100200 */  sll        $v0, $v0, 1
/* 6DF631C 8008EDEC 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF6320 8008EDF0 21082200 */  addu       $at, $at, $v0
/* 6DF6324 8008EDF4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF6328 8008EDF8 00000000 */  nop
/* 6DF632C 8008EDFC C0100300 */  sll        $v0, $v1, 3
/* 6DF6330 8008EE00 21104300 */  addu       $v0, $v0, $v1
/* 6DF6334 8008EE04 80100200 */  sll        $v0, $v0, 2
.Llevel_32_8008EE08:
/* 6DF6338 8008EE08 23104300 */  subu       $v0, $v0, $v1
/* 6DF633C 8008EE0C 02008396 */  lhu        $v1, 0x2($s4)
/* 6DF6340 8008EE10 83120200 */  sra        $v0, $v0, 10
/* 6DF6344 8008EE14 21186200 */  addu       $v1, $v1, $v0
/* 6DF6348 8008EE18 020083A6 */  sh         $v1, 0x2($s4)
/* 6DF634C 8008EE1C 3600A386 */  lh         $v1, 0x36($s5)
/* 6DF6350 8008EE20 0A000224 */  addiu      $v0, $zero, 0xA
/* 6DF6354 8008EE24 1A006210 */  beq        $v1, $v0, .Llevel_32_8008EE90
/* 6DF6358 8008EE28 1D000224 */   addiu     $v0, $zero, 0x1D
/* 6DF635C 8008EE2C 18006210 */  beq        $v1, $v0, .Llevel_32_8008EE90
/* 6DF6360 8008EE30 00000000 */   nop
/* 6DF6364 8008EE34 9171010C */  jal        rand
/* 6DF6368 8008EE38 00000000 */   nop
/* 6DF636C 8008EE3C 9171010C */  jal        rand
/* 6DF6370 8008EE40 4400A2A2 */   sb        $v0, 0x44($s5)
/* 6DF6374 8008EE44 9171010C */  jal        rand
/* 6DF6378 8008EE48 4500A2A2 */   sb        $v0, 0x45($s5)
/* 6DF637C 8008EE4C 4600A2A2 */  sb         $v0, 0x46($s5)
/* 6DF6380 8008EE50 00008286 */  lh         $v0, 0x0($s4)
/* 6DF6384 8008EE54 0C00A38E */  lw         $v1, 0xC($s5)
/* 6DF6388 8008EE58 40100200 */  sll        $v0, $v0, 1
/* 6DF638C 8008EE5C 21186200 */  addu       $v1, $v1, $v0
/* 6DF6390 8008EE60 0C00A3AE */  sw         $v1, 0xC($s5)
/* 6DF6394 8008EE64 02008286 */  lh         $v0, 0x2($s4)
/* 6DF6398 8008EE68 1000A38E */  lw         $v1, 0x10($s5)
/* 6DF639C 8008EE6C 40100200 */  sll        $v0, $v0, 1
/* 6DF63A0 8008EE70 21186200 */  addu       $v1, $v1, $v0
/* 6DF63A4 8008EE74 1000A3AE */  sw         $v1, 0x10($s5)
/* 6DF63A8 8008EE78 04008286 */  lh         $v0, 0x4($s4)
/* 6DF63AC 8008EE7C 1400A38E */  lw         $v1, 0x14($s5)
/* 6DF63B0 8008EE80 40100200 */  sll        $v0, $v0, 1
/* 6DF63B4 8008EE84 21186200 */  addu       $v1, $v1, $v0
/* 6DF63B8 8008EE88 AD3B0208 */  j          .Llevel_32_8008EEB4
/* 6DF63BC 8008EE8C 1400A3AE */   sw        $v1, 0x14($s5)
.Llevel_32_8008EE90:
/* 6DF63C0 8008EE90 4400C292 */  lbu        $v0, 0x44($s6)
/* 6DF63C4 8008EE94 00000000 */  nop
/* 6DF63C8 8008EE98 4400A2A2 */  sb         $v0, 0x44($s5)
/* 6DF63CC 8008EE9C 4500C292 */  lbu        $v0, 0x45($s6)
/* 6DF63D0 8008EEA0 00000000 */  nop
/* 6DF63D4 8008EEA4 4500A2A2 */  sb         $v0, 0x45($s5)
/* 6DF63D8 8008EEA8 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF63DC 8008EEAC 00000000 */  nop
/* 6DF63E0 8008EEB0 4600A2A2 */  sb         $v0, 0x46($s5)
.Llevel_32_8008EEB4:
/* 6DF63E4 8008EEB4 9171010C */  jal        rand
/* 6DF63E8 8008EEB8 00000000 */   nop
/* 6DF63EC 8008EEBC 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF63F0 8008EEC0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF63F4 8008EEC4 9171010C */  jal        rand
/* 6DF63F8 8008EEC8 060082A6 */   sh        $v0, 0x6($s4)
/* 6DF63FC 8008EECC 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF6400 8008EED0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6404 8008EED4 9171010C */  jal        rand
/* 6DF6408 8008EED8 080082A6 */   sh        $v0, 0x8($s4)
/* 6DF640C 8008EEDC 78000424 */  addiu      $a0, $zero, 0x78
/* 6DF6410 8008EEE0 96000524 */  addiu      $a1, $zero, 0x96
/* 6DF6414 8008EEE4 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF6418 8008EEE8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF641C 8008EEEC DBD8000C */  jal        func_8003636C
/* 6DF6420 8008EEF0 0A0082A6 */   sh        $v0, 0xA($s4)
/* 6DF6424 8008EEF4 0C0082A6 */  sh         $v0, 0xC($s4)
/* 6DF6428 8008EEF8 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF642C 8008EEFC 0E0082A6 */  sh         $v0, 0xE($s4)
/* 6DF6430 8008EF00 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6434 8008EF04 120080A6 */   sh        $zero, 0x12($s4)
.Llevel_32_8008EF08:
/* 6DF6438 8008EF08 10000324 */  addiu      $v1, $zero, 0x10
.Llevel_32_8008EF0C:
/* 6DF643C 8008EF0C 3600A286 */  lh         $v0, 0x36($s5)
/* 6DF6440 8008EF10 0000B18E */  lw         $s1, 0x0($s5)
/* 6DF6444 8008EF14 19004314 */  bne        $v0, $v1, .Llevel_32_8008EF7C
/* 6DF6448 8008EF18 0C00B026 */   addiu     $s0, $s5, 0xC
/* 6DF644C 8008EF1C 0780043C */  lui        $a0, %hi(D_8006C784)
/* 6DF6450 8008EF20 84C7848C */  lw         $a0, %lo(D_8006C784)($a0)
/* 6DF6454 8008EF24 00000000 */  nop
/* 6DF6458 8008EF28 04008228 */  slti       $v0, $a0, 0x4
/* 6DF645C 8008EF2C 03004010 */  beqz       $v0, .Llevel_32_8008EF3C
/* 6DF6460 8008EF30 0A000324 */   addiu     $v1, $zero, 0xA
/* 6DF6464 8008EF34 D33B0208 */  j          .Llevel_32_8008EF4C
/* 6DF6468 8008EF38 07000324 */   addiu     $v1, $zero, 0x7
.Llevel_32_8008EF3C:
/* 6DF646C 8008EF3C 07008228 */  slti       $v0, $a0, 0x7
/* 6DF6470 8008EF40 02004010 */  beqz       $v0, .Llevel_32_8008EF4C
/* 6DF6474 8008EF44 00000000 */   nop
/* 6DF6478 8008EF48 09000324 */  addiu      $v1, $zero, 0x9
.Llevel_32_8008EF4C:
/* 6DF647C 8008EF4C 0680043C */  lui        $a0, %hi(D_8006582C)
/* 6DF6480 8008EF50 2C588424 */  addiu      $a0, $a0, %lo(D_8006582C)
/* 6DF6484 8008EF54 0000828C */  lw         $v0, 0x0($a0)
/* 6DF6488 8008EF58 00000000 */  nop
/* 6DF648C 8008EF5C 01004224 */  addiu      $v0, $v0, 0x1
/* 6DF6490 8008EF60 000082AC */  sw         $v0, 0x0($a0)
/* 6DF6494 8008EF64 2A104300 */  slt        $v0, $v0, $v1
/* 6DF6498 8008EF68 04004014 */  bnez       $v0, .Llevel_32_8008EF7C
/* 6DF649C 8008EF6C 0C00B026 */   addiu     $s0, $s5, 0xC
/* 6DF64A0 8008EF70 D3000224 */  addiu      $v0, $zero, 0xD3
/* 6DF64A4 8008EF74 000080AC */  sw         $zero, 0x0($a0)
/* 6DF64A8 8008EF78 3600A2A6 */  sh         $v0, 0x36($s5)
.Llevel_32_8008EF7C:
/* 6DF64AC 8008EF7C 21200002 */  addu       $a0, $s0, $zero
/* 6DF64B0 8008EF80 5E3C010C */  jal        func_8004F178
/* 6DF64B4 8008EF84 0C00C526 */   addiu     $a1, $s6, 0xC
/* 6DF64B8 8008EF88 0957010C */  jal        func_80055C24
/* 6DF64BC 8008EF8C 2120A002 */   addu      $a0, $s5, $zero
/* 6DF64C0 8008EF90 21202002 */  addu       $a0, $s1, $zero
/* 6DF64C4 8008EF94 1400A28E */  lw         $v0, 0x14($s5)
/* 6DF64C8 8008EF98 21280002 */  addu       $a1, $s0, $zero
/* 6DF64CC 8008EF9C 00024224 */  addiu      $v0, $v0, 0x200
/* 6DF64D0 8008EFA0 5E3C010C */  jal        func_8004F178
/* 6DF64D4 8008EFA4 1400A2AE */   sw        $v0, 0x14($s5)
/* 6DF64D8 8008EFA8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF64DC 8008EFAC 1C00A2AE */  sw         $v0, 0x1C($s5)
/* 6DF64E0 8008EFB0 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF64E4 8008EFB4 4700A2A2 */  sb         $v0, 0x47($s5)
/* 6DF64E8 8008EFB8 08070224 */  addiu      $v0, $zero, 0x708
/* 6DF64EC 8008EFBC 0E0022A6 */  sh         $v0, 0xE($s1)
/* 6DF64F0 8008EFC0 9171010C */  jal        rand
/* 6DF64F4 8008EFC4 110020A2 */   sb        $zero, 0x11($s1)
/* 6DF64F8 8008EFC8 FC004230 */  andi       $v0, $v0, 0xFC
/* 6DF64FC 8008EFCC AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6500 8008EFD0 120022A2 */   sb        $v0, 0x12($s1)
.Llevel_32_8008EFD4:
/* 6DF6504 8008EFD4 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF6508 8008EFD8 0000B08E */  lw         $s0, 0x0($s5)
/* 6DF650C 8008EFDC 5E3C010C */  jal        func_8004F178
/* 6DF6510 8008EFE0 0C00C526 */   addiu     $a1, $s6, 0xC
/* 6DF6514 8008EFE4 9171010C */  jal        rand
/* 6DF6518 8008EFE8 00000000 */   nop
/* 6DF651C 8008EFEC 9171010C */  jal        rand
/* 6DF6520 8008EFF0 4500A2A2 */   sb        $v0, 0x45($s5)
/* 6DF6524 8008EFF4 2120A002 */  addu       $a0, $s5, $zero
/* 6DF6528 8008EFF8 0957010C */  jal        func_80055C24
/* 6DF652C 8008EFFC 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF6530 8008F000 2000A426 */  addiu      $a0, $s5, 0x20
/* 6DF6534 8008F004 7F000224 */  addiu      $v0, $zero, 0x7F
/* 6DF6538 8008F008 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DF653C 8008F00C 4E00A2A2 */  sb         $v0, 0x4E($s5)
/* 6DF6540 8008F010 40000224 */  addiu      $v0, $zero, 0x40
/* 6DF6544 8008F014 21280002 */  addu       $a1, $s0, $zero
/* 6DF6548 8008F018 2130A000 */  addu       $a2, $a1, $zero
/* 6DF654C 8008F01C 1000A2AC */  sw         $v0, 0x10($a1)
/* 6DF6550 8008F020 0000A2AC */  sw         $v0, 0x0($a1)
/* 6DF6554 8008F024 0400A0AC */  sw         $zero, 0x4($a1)
/* 6DF6558 8008F028 5B3B010C */  jal        func_8004ED6C
/* 6DF655C 8008F02C 0800A0AC */   sw        $zero, 0x8($a1)
/* 6DF6560 8008F030 AB3F0208 */  j          .Llevel_32_8008FEAC
/* 6DF6564 8008F034 2110A002 */   addu      $v0, $s5, $zero
.Llevel_32_8008F038:
/* 6DF6568 8008F038 3600C286 */  lh         $v0, 0x36($s6)
/* 6DF656C 8008F03C 00000000 */  nop
/* 6DF6570 8008F040 06005110 */  beq        $v0, $s1, .Llevel_32_8008F05C
/* 6DF6574 8008F044 21280000 */   addu      $a1, $zero, $zero
/* 6DF6578 8008F048 0780043C */  lui        $a0, %hi(D_8006E394)
/* 6DF657C 8008F04C 94E38424 */  addiu      $a0, $a0, %lo(D_8006E394)
/* 6DF6580 8008F050 0000A4AE */  sw         $a0, 0x0($s5)
/* 6DF6584 8008F054 E439010C */  jal        func_8004E790
/* 6DF6588 8008F058 1C000624 */   addiu     $a2, $zero, 0x1C
.Llevel_32_8008F05C:
/* 6DF658C 8008F05C 0000B08E */  lw         $s0, 0x0($s5)
/* 6DF6590 8008F060 0957010C */  jal        func_80055C24
/* 6DF6594 8008F064 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6598 8008F068 78000224 */  addiu      $v0, $zero, 0x78
/* 6DF659C 8008F06C 4900A0A2 */  sb         $zero, 0x49($s5)
/* 6DF65A0 8008F070 000000A6 */  sh         $zero, 0x0($s0)
/* 6DF65A4 8008F074 080000A6 */  sh         $zero, 0x8($s0)
/* 6DF65A8 8008F078 060000A6 */  sh         $zero, 0x6($s0)
/* 6DF65AC 8008F07C 040000A6 */  sh         $zero, 0x4($s0)
/* 6DF65B0 8008F080 0D0002A2 */  sb         $v0, 0xD($s0)
/* 6DF65B4 8008F084 100000AE */  sw         $zero, 0x10($s0)
/* 6DF65B8 8008F088 0600C012 */  beqz       $s6, .Llevel_32_8008F0A4
/* 6DF65BC 8008F08C 140000AE */   sw        $zero, 0x14($s0)
/* 6DF65C0 8008F090 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF65C4 8008F094 5E3C010C */  jal        func_8004F178
/* 6DF65C8 8008F098 0C00C526 */   addiu     $a1, $s6, 0xC
/* 6DF65CC 8008F09C 483C0208 */  j          .Llevel_32_8008F120
/* 6DF65D0 8008F0A0 FF000224 */   addiu     $v0, $zero, 0xFF
.Llevel_32_8008F0A4:
/* 6DF65D4 8008F0A4 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF65D8 8008F0A8 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 6DF65DC 8008F0AC 3603A524 */  addiu      $a1, $a1, %lo(D_80070328 + 0xE)
/* 6DF65E0 8008F0B0 0000A390 */  lbu        $v1, 0x0($a1)
/* 6DF65E4 8008F0B4 F2FFA524 */  addiu      $a1, $a1, -0xE
/* 6DF65E8 8008F0B8 80FF6324 */  addiu      $v1, $v1, -0x80
/* 6DF65EC 8008F0BC FF006330 */  andi       $v1, $v1, 0xFF
/* 6DF65F0 8008F0C0 40180300 */  sll        $v1, $v1, 1
/* 6DF65F4 8008F0C4 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF65F8 8008F0C8 21082300 */  addu       $at, $at, $v1
/* 6DF65FC 8008F0CC 20592784 */  lh         $a3, %lo(D_80065920)($at)
/* 6DF6600 8008F0D0 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DF6604 8008F0D4 40110700 */  sll        $v0, $a3, 5
/* 6DF6608 8008F0D8 23104700 */  subu       $v0, $v0, $a3
/* 6DF660C 8008F0DC 80100200 */  sll        $v0, $v0, 2
/* 6DF6610 8008F0E0 21104700 */  addu       $v0, $v0, $a3
/* 6DF6614 8008F0E4 43120200 */  sra        $v0, $v0, 9
/* 6DF6618 8008F0E8 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF661C 8008F0EC 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF6620 8008F0F0 21082300 */  addu       $at, $at, $v1
/* 6DF6624 8008F0F4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF6628 8008F0F8 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 6DF662C 8008F0FC 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DF6630 8008F100 40110300 */  sll        $v0, $v1, 5
/* 6DF6634 8008F104 23104300 */  subu       $v0, $v0, $v1
/* 6DF6638 8008F108 80100200 */  sll        $v0, $v0, 2
/* 6DF663C 8008F10C 21104300 */  addu       $v0, $v0, $v1
/* 6DF6640 8008F110 43120200 */  sra        $v0, $v0, 9
/* 6DF6644 8008F114 653C010C */  jal        func_8004F194
/* 6DF6648 8008F118 1400A2AF */   sw        $v0, 0x14($sp)
/* 6DF664C 8008F11C FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_32_8008F120:
/* 6DF6650 8008F120 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6654 8008F124 020002A2 */   sb        $v0, 0x2($s0)
.Llevel_32_8008F128:
/* 6DF6658 8008F128 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF665C 8008F12C 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF6660 8008F130 0C00C526 */  addiu      $a1, $s6, 0xC
/* 6DF6664 8008F134 5E3C010C */  jal        func_8004F178
/* 6DF6668 8008F138 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF666C 8008F13C 0957010C */  jal        func_80055C24
/* 6DF6670 8008F140 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6674 8008F144 4ED7000C */  jal        func_80035D38
/* 6DF6678 8008F148 2120A002 */   addu      $a0, $s5, $zero
/* 6DF667C 8008F14C 02004010 */  beqz       $v0, .Llevel_32_8008F158
/* 6DF6680 8008F150 00000000 */   nop
/* 6DF6684 8008F154 1400A2AE */  sw         $v0, 0x14($s5)
.Llevel_32_8008F158:
/* 6DF6688 8008F158 06000224 */  addiu      $v0, $zero, 0x6
/* 6DF668C 8008F15C AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6690 8008F160 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_32_8008F164:
/* 6DF6694 8008F164 0C00C526 */  addiu      $a1, $s6, 0xC
/* 6DF6698 8008F168 0000B28E */  lw         $s2, 0x0($s5)
/* 6DF669C 8008F16C 20000224 */  addiu      $v0, $zero, 0x20
/* 6DF66A0 8008F170 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DF66A4 8008F174 5E3C010C */  jal        func_8004F178
/* 6DF66A8 8008F178 4E00A2A2 */   sb        $v0, 0x4E($s5)
/* 6DF66AC 8008F17C 0957010C */  jal        func_80055C24
/* 6DF66B0 8008F180 2120A002 */   addu      $a0, $s5, $zero
/* 6DF66B4 8008F184 9171010C */  jal        rand
/* 6DF66B8 8008F188 96001424 */   addiu     $s4, $zero, 0x96
/* 6DF66BC 8008F18C 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 6DF66C0 8008F190 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 6DF66C4 8008F194 DBD8000C */  jal        func_8003636C
/* 6DF66C8 8008F198 FF0F5330 */   andi      $s3, $v0, 0xFFF
/* 6DF66CC 8008F19C 5100D192 */  lbu        $s1, 0x51($s6)
/* 6DF66D0 8008F1A0 21206002 */  addu       $a0, $s3, $zero
/* 6DF66D4 8008F1A4 21882202 */  addu       $s1, $s1, $v0
/* 6DF66D8 8008F1A8 8B3A010C */  jal        func_8004EA2C
/* 6DF66DC 8008F1AC FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 6DF66E0 8008F1B0 21202002 */  addu       $a0, $s1, $zero
/* 6DF66E4 8008F1B4 8B3A010C */  jal        func_8004EA2C
/* 6DF66E8 8008F1B8 21804000 */   addu      $s0, $v0, $zero
/* 6DF66EC 8008F1BC 18005400 */  mult       $v0, $s4
/* 6DF66F0 8008F1C0 12400000 */  mflo       $t0
/* 6DF66F4 8008F1C4 83811000 */  sra        $s0, $s0, 6
/* 6DF66F8 8008F1C8 00000000 */  nop
/* 6DF66FC 8008F1CC 18000802 */  mult       $s0, $t0
/* 6DF6700 8008F1D0 21206002 */  addu       $a0, $s3, $zero
/* 6DF6704 8008F1D4 12400000 */  mflo       $t0
/* 6DF6708 8008F1D8 83140800 */  sra        $v0, $t0, 18
/* 6DF670C 8008F1DC 8B3A010C */  jal        func_8004EA2C
/* 6DF6710 8008F1E0 000042A6 */   sh        $v0, 0x0($s2)
/* 6DF6714 8008F1E4 21202002 */  addu       $a0, $s1, $zero
/* 6DF6718 8008F1E8 793A010C */  jal        func_8004E9E4
/* 6DF671C 8008F1EC 21804000 */   addu      $s0, $v0, $zero
/* 6DF6720 8008F1F0 18005400 */  mult       $v0, $s4
/* 6DF6724 8008F1F4 12400000 */  mflo       $t0
/* 6DF6728 8008F1F8 83811000 */  sra        $s0, $s0, 6
/* 6DF672C 8008F1FC 00000000 */  nop
/* 6DF6730 8008F200 18000802 */  mult       $s0, $t0
/* 6DF6734 8008F204 21206002 */  addu       $a0, $s3, $zero
/* 6DF6738 8008F208 12400000 */  mflo       $t0
/* 6DF673C 8008F20C 83140800 */  sra        $v0, $t0, 18
/* 6DF6740 8008F210 793A010C */  jal        func_8004E9E4
/* 6DF6744 8008F214 020042A6 */   sh        $v0, 0x2($s2)
/* 6DF6748 8008F218 B4000324 */  addiu      $v1, $zero, 0xB4
/* 6DF674C 8008F21C 18004300 */  mult       $v0, $v1
/* 6DF6750 8008F220 12400000 */  mflo       $t0
/* 6DF6754 8008F224 03130800 */  sra        $v0, $t0, 12
/* 6DF6758 8008F228 040042A6 */  sh         $v0, 0x4($s2)
/* 6DF675C 8008F22C 5100C292 */  lbu        $v0, 0x51($s6)
/* 6DF6760 8008F230 00000000 */  nop
/* 6DF6764 8008F234 40100200 */  sll        $v0, $v0, 1
/* 6DF6768 8008F238 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF676C 8008F23C 21082200 */  addu       $at, $at, $v0
/* 6DF6770 8008F240 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF6774 8008F244 00000000 */  nop
/* 6DF6778 8008F248 C0100300 */  sll        $v0, $v1, 3
/* 6DF677C 8008F24C 21104300 */  addu       $v0, $v0, $v1
/* 6DF6780 8008F250 80100200 */  sll        $v0, $v0, 2
/* 6DF6784 8008F254 23104300 */  subu       $v0, $v0, $v1
/* 6DF6788 8008F258 00004396 */  lhu        $v1, 0x0($s2)
/* 6DF678C 8008F25C 83120200 */  sra        $v0, $v0, 10
/* 6DF6790 8008F260 21186200 */  addu       $v1, $v1, $v0
/* 6DF6794 8008F264 000043A6 */  sh         $v1, 0x0($s2)
/* 6DF6798 8008F268 5100C292 */  lbu        $v0, 0x51($s6)
/* 6DF679C 8008F26C 00000000 */  nop
/* 6DF67A0 8008F270 40100200 */  sll        $v0, $v0, 1
/* 6DF67A4 8008F274 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF67A8 8008F278 21082200 */  addu       $at, $at, $v0
/* 6DF67AC 8008F27C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF67B0 8008F280 00000000 */  nop
/* 6DF67B4 8008F284 C0100300 */  sll        $v0, $v1, 3
/* 6DF67B8 8008F288 21104300 */  addu       $v0, $v0, $v1
/* 6DF67BC 8008F28C 80100200 */  sll        $v0, $v0, 2
/* 6DF67C0 8008F290 23104300 */  subu       $v0, $v0, $v1
/* 6DF67C4 8008F294 02004396 */  lhu        $v1, 0x2($s2)
/* 6DF67C8 8008F298 83120200 */  sra        $v0, $v0, 10
/* 6DF67CC 8008F29C 21186200 */  addu       $v1, $v1, $v0
/* 6DF67D0 8008F2A0 020043A6 */  sh         $v1, 0x2($s2)
/* 6DF67D4 8008F2A4 4400C292 */  lbu        $v0, 0x44($s6)
/* 6DF67D8 8008F2A8 00000000 */  nop
/* 6DF67DC 8008F2AC 4400A2A2 */  sb         $v0, 0x44($s5)
/* 6DF67E0 8008F2B0 4500C292 */  lbu        $v0, 0x45($s6)
/* 6DF67E4 8008F2B4 00000000 */  nop
/* 6DF67E8 8008F2B8 4500A2A2 */  sb         $v0, 0x45($s5)
/* 6DF67EC 8008F2BC 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF67F0 8008F2C0 9171010C */  jal        rand
/* 6DF67F4 8008F2C4 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF67F8 8008F2C8 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF67FC 8008F2CC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6800 8008F2D0 9171010C */  jal        rand
/* 6DF6804 8008F2D4 060042A6 */   sh        $v0, 0x6($s2)
/* 6DF6808 8008F2D8 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF680C 8008F2DC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6810 8008F2E0 9171010C */  jal        rand
/* 6DF6814 8008F2E4 080042A6 */   sh        $v0, 0x8($s2)
/* 6DF6818 8008F2E8 78000424 */  addiu      $a0, $zero, 0x78
/* 6DF681C 8008F2EC 96000524 */  addiu      $a1, $zero, 0x96
/* 6DF6820 8008F2F0 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF6824 8008F2F4 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6828 8008F2F8 DBD8000C */  jal        func_8003636C
/* 6DF682C 8008F2FC 0A0042A6 */   sh        $v0, 0xA($s2)
/* 6DF6830 8008F300 0C0042A6 */  sh         $v0, 0xC($s2)
/* 6DF6834 8008F304 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF6838 8008F308 0E0042A6 */  sh         $v0, 0xE($s2)
/* 6DF683C 8008F30C 03000224 */  addiu      $v0, $zero, 0x3
/* 6DF6840 8008F310 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6844 8008F314 120042A6 */   sh        $v0, 0x12($s2)
.Llevel_32_8008F318:
/* 6DF6848 8008F318 4100A0A2 */  sb         $zero, 0x41($s5)
/* 6DF684C 8008F31C 4000A0A2 */  sb         $zero, 0x40($s5)
/* 6DF6850 8008F320 3E00A0A2 */  sb         $zero, 0x3E($s5)
/* 6DF6854 8008F324 0400C012 */  beqz       $s6, .Llevel_32_8008F338
/* 6DF6858 8008F328 3F00A0A2 */   sb        $zero, 0x3F($s5)
/* 6DF685C 8008F32C 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF6860 8008F330 5E3C010C */  jal        func_8004F178
/* 6DF6864 8008F334 0C00C526 */   addiu     $a1, $s6, 0xC
.Llevel_32_8008F338:
/* 6DF6868 8008F338 2120A002 */  addu       $a0, $s5, $zero
/* 6DF686C 8008F33C 18000224 */  addiu      $v0, $zero, 0x18
/* 6DF6870 8008F340 4F00A2A2 */  sb         $v0, 0x4F($s5)
/* 6DF6874 8008F344 28000224 */  addiu      $v0, $zero, 0x28
/* 6DF6878 8008F348 A83F0208 */  j          .Llevel_32_8008FEA0
/* 6DF687C 8008F34C 4C00A2A2 */   sb        $v0, 0x4C($s5)
.Llevel_32_8008F350:
/* 6DF6880 8008F350 2000C426 */  addiu      $a0, $s6, 0x20
/* 6DF6884 8008F354 1000A527 */  addiu      $a1, $sp, 0x10
/* 6DF6888 8008F358 0000B28E */  lw         $s2, 0x0($s5)
/* 6DF688C 8008F35C FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF6890 8008F360 140056AE */  sw         $s6, 0x14($s2)
/* 6DF6894 8008F364 4A00A2A2 */  sb         $v0, 0x4A($s5)
/* 6DF6898 8008F368 40000224 */  addiu      $v0, $zero, 0x40
/* 6DF689C 8008F36C 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DF68A0 8008F370 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF68A4 8008F374 1C00A2AE */  sw         $v0, 0x1C($s5)
/* 6DF68A8 8008F378 08070224 */  addiu      $v0, $zero, 0x708
/* 6DF68AC 8008F37C 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF68B0 8008F380 1400A0AF */  sw         $zero, 0x14($sp)
/* 6DF68B4 8008F384 4000C292 */  lbu        $v0, 0x40($s6)
/* 6DF68B8 8008F388 2130A000 */  addu       $a2, $a1, $zero
/* 6DF68BC 8008F38C 40110200 */  sll        $v0, $v0, 5
/* 6DF68C0 8008F390 00024224 */  addiu      $v0, $v0, 0x200
/* 6DF68C4 8008F394 5B3B010C */  jal        func_8004ED6C
/* 6DF68C8 8008F398 1800A2AF */   sw        $v0, 0x18($sp)
/* 6DF68CC 8008F39C 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF68D0 8008F3A0 1000A527 */  addiu      $a1, $sp, 0x10
/* 6DF68D4 8008F3A4 653C010C */  jal        func_8004F194
/* 6DF68D8 8008F3A8 0C00C626 */   addiu     $a2, $s6, 0xC
/* 6DF68DC 8008F3AC 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF68E0 8008F3B0 00000000 */  nop
/* 6DF68E4 8008F3B4 4600A2A2 */  sb         $v0, 0x46($s5)
/* 6DF68E8 8008F3B8 05000224 */  addiu      $v0, $zero, 0x5
/* 6DF68EC 8008F3BC 0E0042A6 */  sh         $v0, 0xE($s2)
/* 6DF68F0 8008F3C0 F9FF0224 */  addiu      $v0, $zero, -0x7
/* 6DF68F4 8008F3C4 0C0042A6 */  sh         $v0, 0xC($s2)
/* 6DF68F8 8008F3C8 4000C392 */  lbu        $v1, 0x40($s6)
/* 6DF68FC 8008F3CC 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DF6900 8008F3D0 00190300 */  sll        $v1, $v1, 4
/* 6DF6904 8008F3D4 40100200 */  sll        $v0, $v0, 1
/* 6DF6908 8008F3D8 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF690C 8008F3DC 21082200 */  addu       $at, $at, $v0
/* 6DF6910 8008F3E0 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DF6914 8008F3E4 F0006324 */  addiu      $v1, $v1, 0xF0
/* 6DF6918 8008F3E8 18004300 */  mult       $v0, $v1
/* 6DF691C 8008F3EC 12400000 */  mflo       $t0
/* 6DF6920 8008F3F0 03130800 */  sra        $v0, $t0, 12
/* 6DF6924 8008F3F4 000042AE */  sw         $v0, 0x0($s2)
/* 6DF6928 8008F3F8 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DF692C 8008F3FC 00000000 */  nop
/* 6DF6930 8008F400 40100200 */  sll        $v0, $v0, 1
/* 6DF6934 8008F404 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF6938 8008F408 21082200 */  addu       $at, $at, $v0
/* 6DF693C 8008F40C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 6DF6940 8008F410 00000000 */  nop
/* 6DF6944 8008F414 18004300 */  mult       $v0, $v1
/* 6DF6948 8008F418 21980000 */  addu       $s3, $zero, $zero
/* 6DF694C 8008F41C 080040AE */  sw         $zero, 0x8($s2)
/* 6DF6950 8008F420 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF6954 8008F424 120042A2 */  sb         $v0, 0x12($s2)
/* 6DF6958 8008F428 12400000 */  mflo       $t0
/* 6DF695C 8008F42C 03130800 */  sra        $v0, $t0, 12
/* 6DF6960 8008F430 040042AE */  sw         $v0, 0x4($s2)
/* 6DF6964 8008F434 4000C392 */  lbu        $v1, 0x40($s6)
/* 6DF6968 8008F438 4000B427 */  addiu      $s4, $sp, 0x40
/* 6DF696C 8008F43C 130040A2 */  sb         $zero, 0x13($s2)
/* 6DF6970 8008F440 00110300 */  sll        $v0, $v1, 4
/* 6DF6974 8008F444 23104300 */  subu       $v0, $v0, $v1
/* 6DF6978 8008F448 78004224 */  addiu      $v0, $v0, 0x78
/* 6DF697C 8008F44C 9171010C */  jal        rand
/* 6DF6980 8008F450 080042AE */   sw        $v0, 0x8($s2)
/* 6DF6984 8008F454 5800A2A3 */  sb         $v0, 0x58($sp)
/* 6DF6988 8008F458 4500A292 */  lbu        $v0, 0x45($s5)
/* 6DF698C 8008F45C 2000B127 */  addiu      $s1, $sp, 0x20
/* 6DF6990 8008F460 5900A2A3 */  sb         $v0, 0x59($sp)
/* 6DF6994 8008F464 4600A292 */  lbu        $v0, 0x46($s5)
/* 6DF6998 8008F468 3000B027 */  addiu      $s0, $sp, 0x30
/* 6DF699C 8008F46C 5A00A2A3 */  sb         $v0, 0x5A($sp)
/* 6DF69A0 8008F470 5800A427 */  addiu      $a0, $sp, 0x58
.Llevel_32_8008F474:
/* 6DF69A4 8008F474 21288002 */  addu       $a1, $s4, $zero
/* 6DF69A8 8008F478 21300000 */  addu       $a2, $zero, $zero
/* 6DF69AC 8008F47C 5800A293 */  lbu        $v0, 0x58($sp)
/* 6DF69B0 8008F480 01007326 */  addiu      $s3, $s3, 0x1
/* 6DF69B4 8008F484 20004224 */  addiu      $v0, $v0, 0x20
/* 6DF69B8 8008F488 A43A010C */  jal        func_8004EA90
/* 6DF69BC 8008F48C 5800A2A3 */   sb        $v0, 0x58($sp)
/* 6DF69C0 8008F490 1E000224 */  addiu      $v0, $zero, 0x1E
/* 6DF69C4 8008F494 9171010C */  jal        rand
/* 6DF69C8 8008F498 2000A2AF */   sw        $v0, 0x20($sp)
/* 6DF69CC 8008F49C 21208002 */  addu       $a0, $s4, $zero
/* 6DF69D0 8008F4A0 21282002 */  addu       $a1, $s1, $zero
/* 6DF69D4 8008F4A4 21302002 */  addu       $a2, $s1, $zero
/* 6DF69D8 8008F4A8 0F004230 */  andi       $v0, $v0, 0xF
/* 6DF69DC 8008F4AC 20004224 */  addiu      $v0, $v0, 0x20
/* 6DF69E0 8008F4B0 2400A2AF */  sw         $v0, 0x24($sp)
/* 6DF69E4 8008F4B4 5B3B010C */  jal        func_8004ED6C
/* 6DF69E8 8008F4B8 2800A0AF */   sw        $zero, 0x28($sp)
/* 6DF69EC 8008F4BC 21200002 */  addu       $a0, $s0, $zero
/* 6DF69F0 8008F4C0 5E3C010C */  jal        func_8004F178
/* 6DF69F4 8008F4C4 21282002 */   addu      $a1, $s1, $zero
/* 6DF69F8 8008F4C8 21200002 */  addu       $a0, $s0, $zero
/* 6DF69FC 8008F4CC 3A3C010C */  jal        func_8004F0E8
/* 6DF6A00 8008F4D0 02000524 */   addiu     $a1, $zero, 0x2
/* 6DF6A04 8008F4D4 21200002 */  addu       $a0, $s0, $zero
/* 6DF6A08 8008F4D8 21280002 */  addu       $a1, $s0, $zero
/* 6DF6A0C 8008F4DC 653C010C */  jal        func_8004F194
/* 6DF6A10 8008F4E0 0C00A626 */   addiu     $a2, $s5, 0xC
/* 6DF6A14 8008F4E4 01000424 */  addiu      $a0, $zero, 0x1
/* 6DF6A18 8008F4E8 0D000524 */  addiu      $a1, $zero, 0xD
/* 6DF6A1C 8008F4EC 21300002 */  addu       $a2, $s0, $zero
/* 6DF6A20 8008F4F0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DF6A24 8008F4F4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DF6A28 8008F4F8 00000000 */  nop
/* 6DF6A2C 8008F4FC 09F84000 */  jalr       $v0
/* 6DF6A30 8008F500 21382002 */   addu      $a3, $s1, $zero
/* 6DF6A34 8008F504 0800622A */  slti       $v0, $s3, 0x8
/* 6DF6A38 8008F508 DAFF4014 */  bnez       $v0, .Llevel_32_8008F474
/* 6DF6A3C 8008F50C 5800A427 */   addiu     $a0, $sp, 0x58
/* 6DF6A40 8008F510 0957010C */  jal        func_80055C24
/* 6DF6A44 8008F514 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6A48 8008F518 B4000224 */  addiu      $v0, $zero, 0xB4
/* 6DF6A4C 8008F51C AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6A50 8008F520 100042A6 */   sh        $v0, 0x10($s2)
.Llevel_32_8008F524:
/* 6DF6A54 8008F524 0957010C */  jal        func_80055C24
/* 6DF6A58 8008F528 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6A5C 8008F52C 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF6A60 8008F530 0E00C012 */  beqz       $s6, .Llevel_32_8008F56C
/* 6DF6A64 8008F534 5400A2A2 */   sb        $v0, 0x54($s5)
/* 6DF6A68 8008F538 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF6A6C 8008F53C 0000A28E */  lw         $v0, 0x0($s5)
/* 6DF6A70 8008F540 0C00C526 */  addiu      $a1, $s6, 0xC
/* 6DF6A74 8008F544 5E3C010C */  jal        func_8004F178
/* 6DF6A78 8008F548 000056AC */   sw        $s6, 0x0($v0)
/* 6DF6A7C 8008F54C 0A000224 */  addiu      $v0, $zero, 0xA
/* 6DF6A80 8008F550 4A00A2A2 */  sb         $v0, 0x4A($s5)
/* 6DF6A84 8008F554 1400A28E */  lw         $v0, 0x14($s5)
/* 6DF6A88 8008F558 08000324 */  addiu      $v1, $zero, 0x8
/* 6DF6A8C 8008F55C 4C00A3A2 */  sb         $v1, 0x4C($s5)
/* 6DF6A90 8008F560 00044224 */  addiu      $v0, $v0, 0x400
/* 6DF6A94 8008F564 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6A98 8008F568 1400A2AE */   sw        $v0, 0x14($s5)
.Llevel_32_8008F56C:
/* 6DF6A9C 8008F56C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF6AA0 8008F570 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6AA4 8008F574 1C00A2AE */   sw        $v0, 0x1C($s5)
.Llevel_32_8008F578:
/* 6DF6AA8 8008F578 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DF6AAC 8008F57C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DF6AB0 8008F580 0000B08E */  lw         $s0, 0x0($s5)
/* 6DF6AB4 8008F584 5E3C010C */  jal        func_8004F178
/* 6DF6AB8 8008F588 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF6ABC 8008F58C 1400A28E */  lw         $v0, 0x14($s5)
/* 6DF6AC0 8008F590 00000000 */  nop
/* 6DF6AC4 8008F594 00044224 */  addiu      $v0, $v0, 0x400
/* 6DF6AC8 8008F598 1400A2AE */  sw         $v0, 0x14($s5)
/* 6DF6ACC 8008F59C 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 6DF6AD0 8008F5A0 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 6DF6AD4 8008F5A4 2120A002 */  addu       $a0, $s5, $zero
/* 6DF6AD8 8008F5A8 0957010C */  jal        func_80055C24
/* 6DF6ADC 8008F5AC 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF6AE0 8008F5B0 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF6AE4 8008F5B4 020002A2 */  sb         $v0, 0x2($s0)
/* 6DF6AE8 8008F5B8 0780023C */  lui        $v0, %hi(D_80070328 + 0xE)
/* 6DF6AEC 8008F5BC 36034290 */  lbu        $v0, %lo(D_80070328 + 0xE)($v0)
/* 6DF6AF0 8008F5C0 00000000 */  nop
/* 6DF6AF4 8008F5C4 030002A2 */  sb         $v0, 0x3($s0)
/* 6DF6AF8 8008F5C8 0780033C */  lui        $v1, %hi(D_80070328 + 0xE)
/* 6DF6AFC 8008F5CC 36036390 */  lbu        $v1, %lo(D_80070328 + 0xE)($v1)
/* 6DF6B00 8008F5D0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DF6B04 8008F5D4 100002AE */  sw         $v0, 0x10($s0)
/* 6DF6B08 8008F5D8 040003A2 */  sb         $v1, 0x4($s0)
/* 6DF6B0C 8008F5DC 4100A0A2 */  sb         $zero, 0x41($s5)
/* 6DF6B10 8008F5E0 4C00A0A2 */  sb         $zero, 0x4C($s5)
/* 6DF6B14 8008F5E4 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6B18 8008F5E8 4D00A0A2 */   sb        $zero, 0x4D($s5)
.Llevel_32_8008F5EC:
/* 6DF6B1C 8008F5EC 0C00A426 */  addiu      $a0, $s5, 0xC
.Llevel_32_8008F5F0:
/* 6DF6B20 8008F5F0 0C00C526 */  addiu      $a1, $s6, 0xC
/* 6DF6B24 8008F5F4 0000B38E */  lw         $s3, 0x0($s5)
/* 6DF6B28 8008F5F8 20000224 */  addiu      $v0, $zero, 0x20
/* 6DF6B2C 8008F5FC 5E3C010C */  jal        func_8004F178
/* 6DF6B30 8008F600 4C00A2A2 */   sb        $v0, 0x4C($s5)
/* 6DF6B34 8008F604 0957010C */  jal        func_80055C24
/* 6DF6B38 8008F608 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6B3C 8008F60C 9171010C */  jal        rand
/* 6DF6B40 8008F610 00000000 */   nop
/* 6DF6B44 8008F614 9171010C */  jal        rand
/* 6DF6B48 8008F618 FF0F5230 */   andi      $s2, $v0, 0xFFF
/* 6DF6B4C 8008F61C FF075130 */  andi       $s1, $v0, 0x7FF
/* 6DF6B50 8008F620 8B3A010C */  jal        func_8004EA2C
/* 6DF6B54 8008F624 21202002 */   addu      $a0, $s1, $zero
/* 6DF6B58 8008F628 21204002 */  addu       $a0, $s2, $zero
/* 6DF6B5C 8008F62C 8B3A010C */  jal        func_8004EA2C
/* 6DF6B60 8008F630 21804000 */   addu      $s0, $v0, $zero
/* 6DF6B64 8008F634 18000202 */  mult       $s0, $v0
/* 6DF6B68 8008F638 12400000 */  mflo       $t0
/* 6DF6B6C 8008F63C 4900C292 */  lbu        $v0, 0x49($s6)
/* 6DF6B70 8008F640 00000000 */  nop
/* 6DF6B74 8008F644 18000201 */  mult       $t0, $v0
/* 6DF6B78 8008F648 21202002 */  addu       $a0, $s1, $zero
/* 6DF6B7C 8008F64C 12400000 */  mflo       $t0
/* 6DF6B80 8008F650 03160800 */  sra        $v0, $t0, 24
/* 6DF6B84 8008F654 8B3A010C */  jal        func_8004EA2C
/* 6DF6B88 8008F658 000062A6 */   sh        $v0, 0x0($s3)
/* 6DF6B8C 8008F65C 21204002 */  addu       $a0, $s2, $zero
/* 6DF6B90 8008F660 793A010C */  jal        func_8004E9E4
/* 6DF6B94 8008F664 21804000 */   addu      $s0, $v0, $zero
/* 6DF6B98 8008F668 18000202 */  mult       $s0, $v0
/* 6DF6B9C 8008F66C 12400000 */  mflo       $t0
/* 6DF6BA0 8008F670 4900C292 */  lbu        $v0, 0x49($s6)
/* 6DF6BA4 8008F674 00000000 */  nop
/* 6DF6BA8 8008F678 18000201 */  mult       $t0, $v0
/* 6DF6BAC 8008F67C 21202002 */  addu       $a0, $s1, $zero
/* 6DF6BB0 8008F680 12400000 */  mflo       $t0
/* 6DF6BB4 8008F684 03160800 */  sra        $v0, $t0, 24
/* 6DF6BB8 8008F688 793A010C */  jal        func_8004E9E4
/* 6DF6BBC 8008F68C 020062A6 */   sh        $v0, 0x2($s3)
/* 6DF6BC0 8008F690 4900C392 */  lbu        $v1, 0x49($s6)
/* 6DF6BC4 8008F694 00000000 */  nop
/* 6DF6BC8 8008F698 18004300 */  mult       $v0, $v1
/* 6DF6BCC 8008F69C 12400000 */  mflo       $t0
/* 6DF6BD0 8008F6A0 03130800 */  sra        $v0, $t0, 12
/* 6DF6BD4 8008F6A4 040062A6 */  sh         $v0, 0x4($s3)
/* 6DF6BD8 8008F6A8 1800C38E */  lw         $v1, 0x18($s6)
/* 6DF6BDC 8008F6AC 0002023C */  lui        $v0, (0x2000000 >> 16)
/* 6DF6BE0 8008F6B0 24106200 */  and        $v0, $v1, $v0
/* 6DF6BE4 8008F6B4 2C004010 */  beqz       $v0, .Llevel_32_8008F768
/* 6DF6BE8 8008F6B8 21300000 */   addu      $a2, $zero, $zero
/* 6DF6BEC 8008F6BC 0780103C */  lui        $s0, %hi(D_80070328)
/* 6DF6BF0 8008F6C0 28031026 */  addiu      $s0, $s0, %lo(D_80070328)
/* 6DF6BF4 8008F6C4 0C00A38E */  lw         $v1, 0xC($s5)
/* 6DF6BF8 8008F6C8 0000048E */  lw         $a0, 0x0($s0)
/* 6DF6BFC 8008F6CC 1000A28E */  lw         $v0, 0x10($s5)
/* 6DF6C00 8008F6D0 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6DF6C04 8008F6D4 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6DF6C08 8008F6D8 23206400 */  subu       $a0, $v1, $a0
/* 6DF6C0C 8008F6DC 203A010C */  jal        func_8004E880
/* 6DF6C10 8008F6E0 23284500 */   subu      $a1, $v0, $a1
/* 6DF6C14 8008F6E4 40100200 */  sll        $v0, $v0, 1
/* 6DF6C18 8008F6E8 21300000 */  addu       $a2, $zero, $zero
/* 6DF6C1C 8008F6EC 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF6C20 8008F6F0 21082200 */  addu       $at, $at, $v0
/* 6DF6C24 8008F6F4 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 6DF6C28 8008F6F8 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 6DF6C2C 8008F6FC 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 6DF6C30 8008F700 03110200 */  sra        $v0, $v0, 4
/* 6DF6C34 8008F704 6000A2AF */  sw         $v0, 0x60($sp)
/* 6DF6C38 8008F708 0C00A38E */  lw         $v1, 0xC($s5)
/* 6DF6C3C 8008F70C 0000048E */  lw         $a0, 0x0($s0)
/* 6DF6C40 8008F710 1000A28E */  lw         $v0, 0x10($s5)
/* 6DF6C44 8008F714 23206400 */  subu       $a0, $v1, $a0
/* 6DF6C48 8008F718 203A010C */  jal        func_8004E880
/* 6DF6C4C 8008F71C 23284500 */   subu      $a1, $v0, $a1
/* 6DF6C50 8008F720 40100200 */  sll        $v0, $v0, 1
/* 6DF6C54 8008F724 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF6C58 8008F728 21082200 */  addu       $at, $at, $v0
/* 6DF6C5C 8008F72C A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 6DF6C60 8008F730 6000A38F */  lw         $v1, 0x60($sp)
/* 6DF6C64 8008F734 6800A0AF */  sw         $zero, 0x68($sp)
/* 6DF6C68 8008F738 03110200 */  sra        $v0, $v0, 4
/* 6DF6C6C 8008F73C 6400A2AF */  sw         $v0, 0x64($sp)
/* 6DF6C70 8008F740 00006296 */  lhu        $v0, 0x0($s3)
/* 6DF6C74 8008F744 00000000 */  nop
/* 6DF6C78 8008F748 21104300 */  addu       $v0, $v0, $v1
/* 6DF6C7C 8008F74C 000062A6 */  sh         $v0, 0x0($s3)
/* 6DF6C80 8008F750 6400A38F */  lw         $v1, 0x64($sp)
/* 6DF6C84 8008F754 02006296 */  lhu        $v0, 0x2($s3)
/* 6DF6C88 8008F758 00000000 */  nop
/* 6DF6C8C 8008F75C 21104300 */  addu       $v0, $v0, $v1
/* 6DF6C90 8008F760 F13D0208 */  j          .Llevel_32_8008F7C4
/* 6DF6C94 8008F764 020062A6 */   sh        $v0, 0x2($s3)
.Llevel_32_8008F768:
/* 6DF6C98 8008F768 0200023C */  lui        $v0, (0x20000 >> 16)
/* 6DF6C9C 8008F76C 24106200 */  and        $v0, $v1, $v0
/* 6DF6CA0 8008F770 14004010 */  beqz       $v0, .Llevel_32_8008F7C4
/* 6DF6CA4 8008F774 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF6CA8 8008F778 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 6DF6CAC 8008F77C 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 6DF6CB0 8008F780 00000000 */  nop
/* 6DF6CB4 8008F784 03006210 */  beq        $v1, $v0, .Llevel_32_8008F794
/* 6DF6CB8 8008F788 0C000224 */   addiu     $v0, $zero, 0xC
/* 6DF6CBC 8008F78C 0D006214 */  bne        $v1, $v0, .Llevel_32_8008F7C4
/* 6DF6CC0 8008F790 00000000 */   nop
.Llevel_32_8008F794:
/* 6DF6CC4 8008F794 0780023C */  lui        $v0, %hi(D_80070328 + 0x8C)
/* 6DF6CC8 8008F798 B403428C */  lw         $v0, %lo(D_80070328 + 0x8C)($v0)
/* 6DF6CCC 8008F79C 00006396 */  lhu        $v1, 0x0($s3)
/* 6DF6CD0 8008F7A0 83110200 */  sra        $v0, $v0, 6
/* 6DF6CD4 8008F7A4 21186200 */  addu       $v1, $v1, $v0
/* 6DF6CD8 8008F7A8 000063A6 */  sh         $v1, 0x0($s3)
/* 6DF6CDC 8008F7AC 0780023C */  lui        $v0, %hi(D_80070328 + 0x90)
/* 6DF6CE0 8008F7B0 B803428C */  lw         $v0, %lo(D_80070328 + 0x90)($v0)
/* 6DF6CE4 8008F7B4 02006396 */  lhu        $v1, 0x2($s3)
/* 6DF6CE8 8008F7B8 83110200 */  sra        $v0, $v0, 6
/* 6DF6CEC 8008F7BC 21186200 */  addu       $v1, $v1, $v0
/* 6DF6CF0 8008F7C0 020063A6 */  sh         $v1, 0x2($s3)
.Llevel_32_8008F7C4:
/* 6DF6CF4 8008F7C4 5100C492 */  lbu        $a0, 0x51($s6)
/* 6DF6CF8 8008F7C8 00000000 */  nop
/* 6DF6CFC 8008F7CC 26008010 */  beqz       $a0, .Llevel_32_8008F868
/* 6DF6D00 8008F7D0 1000033C */   lui       $v1, (0x100000 >> 16)
/* 6DF6D04 8008F7D4 1800C28E */  lw         $v0, 0x18($s6)
/* 6DF6D08 8008F7D8 00000000 */  nop
/* 6DF6D0C 8008F7DC 24104300 */  and        $v0, $v0, $v1
/* 6DF6D10 8008F7E0 21004010 */  beqz       $v0, .Llevel_32_8008F868
/* 6DF6D14 8008F7E4 40100400 */   sll       $v0, $a0, 1
/* 6DF6D18 8008F7E8 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF6D1C 8008F7EC 21082200 */  addu       $at, $at, $v0
/* 6DF6D20 8008F7F0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF6D24 8008F7F4 00000000 */  nop
/* 6DF6D28 8008F7F8 80100300 */  sll        $v0, $v1, 2
/* 6DF6D2C 8008F7FC 21104300 */  addu       $v0, $v0, $v1
/* 6DF6D30 8008F800 00190200 */  sll        $v1, $v0, 4
/* 6DF6D34 8008F804 23186200 */  subu       $v1, $v1, $v0
/* 6DF6D38 8008F808 00006296 */  lhu        $v0, 0x0($s3)
/* 6DF6D3C 8008F80C C31A0300 */  sra        $v1, $v1, 11
/* 6DF6D40 8008F810 21104300 */  addu       $v0, $v0, $v1
/* 6DF6D44 8008F814 000062A6 */  sh         $v0, 0x0($s3)
/* 6DF6D48 8008F818 5100C292 */  lbu        $v0, 0x51($s6)
/* 6DF6D4C 8008F81C 28000424 */  addiu      $a0, $zero, 0x28
/* 6DF6D50 8008F820 40100200 */  sll        $v0, $v0, 1
/* 6DF6D54 8008F824 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF6D58 8008F828 21082200 */  addu       $at, $at, $v0
/* 6DF6D5C 8008F82C A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF6D60 8008F830 46000524 */  addiu      $a1, $zero, 0x46
/* 6DF6D64 8008F834 80100300 */  sll        $v0, $v1, 2
/* 6DF6D68 8008F838 21104300 */  addu       $v0, $v0, $v1
/* 6DF6D6C 8008F83C 00190200 */  sll        $v1, $v0, 4
/* 6DF6D70 8008F840 23186200 */  subu       $v1, $v1, $v0
/* 6DF6D74 8008F844 02006296 */  lhu        $v0, 0x2($s3)
/* 6DF6D78 8008F848 C31A0300 */  sra        $v1, $v1, 11
/* 6DF6D7C 8008F84C 21104300 */  addu       $v0, $v0, $v1
/* 6DF6D80 8008F850 DBD8000C */  jal        func_8003636C
/* 6DF6D84 8008F854 020062A6 */   sh        $v0, 0x2($s3)
/* 6DF6D88 8008F858 04006396 */  lhu        $v1, 0x4($s3)
/* 6DF6D8C 8008F85C 00000000 */  nop
/* 6DF6D90 8008F860 21186200 */  addu       $v1, $v1, $v0
/* 6DF6D94 8008F864 040063A6 */  sh         $v1, 0x4($s3)
.Llevel_32_8008F868:
/* 6DF6D98 8008F868 00006286 */  lh         $v0, 0x0($s3)
/* 6DF6D9C 8008F86C 0C00A38E */  lw         $v1, 0xC($s5)
/* 6DF6DA0 8008F870 80100200 */  sll        $v0, $v0, 2
/* 6DF6DA4 8008F874 21186200 */  addu       $v1, $v1, $v0
/* 6DF6DA8 8008F878 0C00A3AE */  sw         $v1, 0xC($s5)
/* 6DF6DAC 8008F87C 02006286 */  lh         $v0, 0x2($s3)
/* 6DF6DB0 8008F880 1000A38E */  lw         $v1, 0x10($s5)
/* 6DF6DB4 8008F884 80100200 */  sll        $v0, $v0, 2
/* 6DF6DB8 8008F888 21186200 */  addu       $v1, $v1, $v0
/* 6DF6DBC 8008F88C 1000A3AE */  sw         $v1, 0x10($s5)
/* 6DF6DC0 8008F890 04006286 */  lh         $v0, 0x4($s3)
/* 6DF6DC4 8008F894 1400A38E */  lw         $v1, 0x14($s5)
/* 6DF6DC8 8008F898 80100200 */  sll        $v0, $v0, 2
/* 6DF6DCC 8008F89C 21186200 */  addu       $v1, $v1, $v0
/* 6DF6DD0 8008F8A0 9171010C */  jal        rand
/* 6DF6DD4 8008F8A4 1400A3AE */   sw        $v1, 0x14($s5)
/* 6DF6DD8 8008F8A8 9171010C */  jal        rand
/* 6DF6DDC 8008F8AC 4500A2A2 */   sb        $v0, 0x45($s5)
/* 6DF6DE0 8008F8B0 9171010C */  jal        rand
/* 6DF6DE4 8008F8B4 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF6DE8 8008F8B8 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF6DEC 8008F8BC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6DF0 8008F8C0 9171010C */  jal        rand
/* 6DF6DF4 8008F8C4 060062A6 */   sh        $v0, 0x6($s3)
/* 6DF6DF8 8008F8C8 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF6DFC 8008F8CC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6E00 8008F8D0 9171010C */  jal        rand
/* 6DF6E04 8008F8D4 080062A6 */   sh        $v0, 0x8($s3)
/* 6DF6E08 8008F8D8 32000424 */  addiu      $a0, $zero, 0x32
/* 6DF6E0C 8008F8DC 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF6E10 8008F8E0 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF6E14 8008F8E4 0A0062A6 */  sh         $v0, 0xA($s3)
/* 6DF6E18 8008F8E8 1400C28E */  lw         $v0, 0x14($s6)
/* 6DF6E1C 8008F8EC 50000524 */  addiu      $a1, $zero, 0x50
/* 6DF6E20 8008F8F0 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 6DF6E24 8008F8F4 DBD8000C */  jal        func_8003636C
/* 6DF6E28 8008F8F8 100062AE */   sw        $v0, 0x10($s3)
/* 6DF6E2C 8008F8FC AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6E30 8008F900 0C0062AE */   sw        $v0, 0xC($s3)
.Llevel_32_8008F904:
/* 6DF6E34 8008F904 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF6E38 8008F908 0000B08E */  lw         $s0, 0x0($s5)
/* 6DF6E3C 8008F90C 5E3C010C */  jal        func_8004F178
/* 6DF6E40 8008F910 0C00C526 */   addiu     $a1, $s6, 0xC
/* 6DF6E44 8008F914 0957010C */  jal        func_80055C24
/* 6DF6E48 8008F918 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6E4C 8008F91C 10000224 */  addiu      $v0, $zero, 0x10
/* 6DF6E50 8008F920 3B000324 */  addiu      $v1, $zero, 0x3B
/* 6DF6E54 8008F924 000002A6 */  sh         $v0, 0x0($s0)
/* 6DF6E58 8008F928 80000224 */  addiu      $v0, $zero, 0x80
/* 6DF6E5C 8008F92C 5700A3A2 */  sb         $v1, 0x57($s5)
/* 6DF6E60 8008F930 5400A2A2 */  sb         $v0, 0x54($s5)
/* 6DF6E64 8008F934 5500A2A2 */  sb         $v0, 0x55($s5)
/* 6DF6E68 8008F938 5600A0A2 */  sb         $zero, 0x56($s5)
/* 6DF6E6C 8008F93C 3600C486 */  lh         $a0, 0x36($s6)
/* 6DF6E70 8008F940 98010224 */  addiu      $v0, $zero, 0x198
/* 6DF6E74 8008F944 04008210 */  beq        $a0, $v0, .Llevel_32_8008F958
/* 6DF6E78 8008F948 01000224 */   addiu     $v0, $zero, 0x1
/* 6DF6E7C 8008F94C C2020224 */  addiu      $v0, $zero, 0x2C2
/* 6DF6E80 8008F950 05008214 */  bne        $a0, $v0, .Llevel_32_8008F968
/* 6DF6E84 8008F954 01000224 */   addiu     $v0, $zero, 0x1
.Llevel_32_8008F958:
/* 6DF6E88 8008F958 020002A2 */  sb         $v0, 0x2($s0)
/* 6DF6E8C 8008F95C 030002A2 */  sb         $v0, 0x3($s0)
/* 6DF6E90 8008F960 683E0208 */  j          .Llevel_32_8008F9A0
/* 6DF6E94 8008F964 7F000224 */   addiu     $v0, $zero, 0x7F
.Llevel_32_8008F968:
/* 6DF6E98 8008F968 70020224 */  addiu      $v0, $zero, 0x270
/* 6DF6E9C 8008F96C 0A008214 */  bne        $a0, $v0, .Llevel_32_8008F998
/* 6DF6EA0 8008F970 60000224 */   addiu     $v0, $zero, 0x60
/* 6DF6EA4 8008F974 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF6EA8 8008F978 020002A2 */  sb         $v0, 0x2($s0)
/* 6DF6EAC 8008F97C E0000224 */  addiu      $v0, $zero, 0xE0
/* 6DF6EB0 8008F980 5400A2A2 */  sb         $v0, 0x54($s5)
/* 6DF6EB4 8008F984 5500A2A2 */  sb         $v0, 0x55($s5)
/* 6DF6EB8 8008F988 5600A2A2 */  sb         $v0, 0x56($s5)
/* 6DF6EBC 8008F98C 60000224 */  addiu      $v0, $zero, 0x60
/* 6DF6EC0 8008F990 673E0208 */  j          .Llevel_32_8008F99C
/* 6DF6EC4 8008F994 5700A3A2 */   sb        $v1, 0x57($s5)
.Llevel_32_8008F998:
/* 6DF6EC8 8008F998 020000A2 */  sb         $zero, 0x2($s0)
.Llevel_32_8008F99C:
/* 6DF6ECC 8008F99C 030000A2 */  sb         $zero, 0x3($s0)
.Llevel_32_8008F9A0:
/* 6DF6ED0 8008F9A0 4F00A2A2 */  sb         $v0, 0x4F($s5)
/* 6DF6ED4 8008F9A4 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF6ED8 8008F9A8 0780103C */  lui        $s0, %hi(D_8006E020)
/* 6DF6EDC 8008F9AC 20E01026 */  addiu      $s0, $s0, %lo(D_8006E020)
/* 6DF6EE0 8008F9B0 21280002 */  addu       $a1, $s0, $zero
/* 6DF6EE4 8008F9B4 FE000224 */  addiu      $v0, $zero, 0xFE
/* 6DF6EE8 8008F9B8 CD3C010C */  jal        func_8004F334
/* 6DF6EEC 8008F9BC 4700A2A2 */   sb        $v0, 0x47($s5)
/* 6DF6EF0 8008F9C0 21204000 */  addu       $a0, $v0, $zero
/* 6DF6EF4 8008F9C4 0780023C */  lui        $v0, %hi(D_8006E028)
/* 6DF6EF8 8008F9C8 28E0428C */  lw         $v0, %lo(D_8006E028)($v0)
/* 6DF6EFC 8008F9CC 1400A58E */  lw         $a1, 0x14($s5)
/* 6DF6F00 8008F9D0 21300000 */  addu       $a2, $zero, $zero
/* 6DF6F04 8008F9D4 203A010C */  jal        func_8004E880
/* 6DF6F08 8008F9D8 23284500 */   subu      $a1, $v0, $a1
/* 6DF6F0C 8008F9DC 21300000 */  addu       $a2, $zero, $zero
/* 6DF6F10 8008F9E0 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 6DF6F14 8008F9E4 4500A2A2 */  sb         $v0, 0x45($s5)
/* 6DF6F18 8008F9E8 0000038E */  lw         $v1, 0x0($s0)
/* 6DF6F1C 8008F9EC 0C00A48E */  lw         $a0, 0xC($s5)
/* 6DF6F20 8008F9F0 0780023C */  lui        $v0, %hi(D_8006E024)
/* 6DF6F24 8008F9F4 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 6DF6F28 8008F9F8 1000A58E */  lw         $a1, 0x10($s5)
/* 6DF6F2C 8008F9FC 23206400 */  subu       $a0, $v1, $a0
/* 6DF6F30 8008FA00 203A010C */  jal        func_8004E880
/* 6DF6F34 8008FA04 23284500 */   subu      $a1, $v0, $a1
/* 6DF6F38 8008FA08 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF6F3C 8008FA0C 4600A2A2 */   sb        $v0, 0x46($s5)
.Llevel_32_8008FA10:
/* 6DF6F40 8008FA10 0C00C526 */  addiu      $a1, $s6, 0xC
/* 6DF6F44 8008FA14 0000B48E */  lw         $s4, 0x0($s5)
/* 6DF6F48 8008FA18 20000224 */  addiu      $v0, $zero, 0x20
/* 6DF6F4C 8008FA1C 4C00A2A2 */  sb         $v0, 0x4C($s5)
/* 6DF6F50 8008FA20 5E3C010C */  jal        func_8004F178
/* 6DF6F54 8008FA24 4E00A2A2 */   sb        $v0, 0x4E($s5)
/* 6DF6F58 8008FA28 0957010C */  jal        func_80055C24
/* 6DF6F5C 8008FA2C 2120A002 */   addu      $a0, $s5, $zero
/* 6DF6F60 8008FA30 2C010424 */  addiu      $a0, $zero, 0x12C
/* 6DF6F64 8008FA34 DBD8000C */  jal        func_8003636C
/* 6DF6F68 8008FA38 34080524 */   addiu     $a1, $zero, 0x834
/* 6DF6F6C 8008FA3C 24FA0424 */  addiu      $a0, $zero, -0x5DC
/* 6DF6F70 8008FA40 DC050524 */  addiu      $a1, $zero, 0x5DC
/* 6DF6F74 8008FA44 DBD8000C */  jal        func_8003636C
/* 6DF6F78 8008FA48 21904000 */   addu      $s2, $v0, $zero
/* 6DF6F7C 8008FA4C 0780113C */  lui        $s1, %hi(D_80070328 + 0xE)
/* 6DF6F80 8008FA50 36033192 */  lbu        $s1, %lo(D_80070328 + 0xE)($s1)
/* 6DF6F84 8008FA54 21204002 */  addu       $a0, $s2, $zero
/* 6DF6F88 8008FA58 21882202 */  addu       $s1, $s1, $v0
/* 6DF6F8C 8008FA5C 8B3A010C */  jal        func_8004EA2C
/* 6DF6F90 8008FA60 FF0F3132 */   andi      $s1, $s1, 0xFFF
/* 6DF6F94 8008FA64 21202002 */  addu       $a0, $s1, $zero
/* 6DF6F98 8008FA68 8B3A010C */  jal        func_8004EA2C
/* 6DF6F9C 8008FA6C 21804000 */   addu      $s0, $v0, $zero
/* 6DF6FA0 8008FA70 78001324 */  addiu      $s3, $zero, 0x78
/* 6DF6FA4 8008FA74 18005300 */  mult       $v0, $s3
/* 6DF6FA8 8008FA78 12400000 */  mflo       $t0
/* 6DF6FAC 8008FA7C 83811000 */  sra        $s0, $s0, 6
/* 6DF6FB0 8008FA80 00000000 */  nop
/* 6DF6FB4 8008FA84 18000802 */  mult       $s0, $t0
/* 6DF6FB8 8008FA88 21204002 */  addu       $a0, $s2, $zero
/* 6DF6FBC 8008FA8C 12400000 */  mflo       $t0
/* 6DF6FC0 8008FA90 83140800 */  sra        $v0, $t0, 18
/* 6DF6FC4 8008FA94 8B3A010C */  jal        func_8004EA2C
/* 6DF6FC8 8008FA98 000082A6 */   sh        $v0, 0x0($s4)
/* 6DF6FCC 8008FA9C 21202002 */  addu       $a0, $s1, $zero
/* 6DF6FD0 8008FAA0 793A010C */  jal        func_8004E9E4
/* 6DF6FD4 8008FAA4 21804000 */   addu      $s0, $v0, $zero
/* 6DF6FD8 8008FAA8 18005300 */  mult       $v0, $s3
/* 6DF6FDC 8008FAAC 12400000 */  mflo       $t0
/* 6DF6FE0 8008FAB0 83811000 */  sra        $s0, $s0, 6
/* 6DF6FE4 8008FAB4 00000000 */  nop
/* 6DF6FE8 8008FAB8 18000802 */  mult       $s0, $t0
/* 6DF6FEC 8008FABC 21204002 */  addu       $a0, $s2, $zero
/* 6DF6FF0 8008FAC0 12400000 */  mflo       $t0
/* 6DF6FF4 8008FAC4 83140800 */  sra        $v0, $t0, 18
/* 6DF6FF8 8008FAC8 793A010C */  jal        func_8004E9E4
/* 6DF6FFC 8008FACC 020082A6 */   sh        $v0, 0x2($s4)
/* 6DF7000 8008FAD0 96000324 */  addiu      $v1, $zero, 0x96
/* 6DF7004 8008FAD4 18004300 */  mult       $v0, $v1
/* 6DF7008 8008FAD8 12400000 */  mflo       $t0
/* 6DF700C 8008FADC 03130800 */  sra        $v0, $t0, 12
/* 6DF7010 8008FAE0 040082A6 */  sh         $v0, 0x4($s4)
/* 6DF7014 8008FAE4 5100C492 */  lbu        $a0, 0x51($s6)
/* 6DF7018 8008FAE8 00000000 */  nop
/* 6DF701C 8008FAEC 22008010 */  beqz       $a0, .Llevel_32_8008FB78
/* 6DF7020 8008FAF0 1000033C */   lui       $v1, (0x100000 >> 16)
/* 6DF7024 8008FAF4 1800C28E */  lw         $v0, 0x18($s6)
/* 6DF7028 8008FAF8 00000000 */  nop
/* 6DF702C 8008FAFC 24104300 */  and        $v0, $v0, $v1
/* 6DF7030 8008FB00 1D004010 */  beqz       $v0, .Llevel_32_8008FB78
/* 6DF7034 8008FB04 40100400 */   sll       $v0, $a0, 1
/* 6DF7038 8008FB08 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF703C 8008FB0C 21082200 */  addu       $at, $at, $v0
/* 6DF7040 8008FB10 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF7044 8008FB14 00000000 */  nop
/* 6DF7048 8008FB18 00110300 */  sll        $v0, $v1, 4
/* 6DF704C 8008FB1C 23104300 */  subu       $v0, $v0, $v1
/* 6DF7050 8008FB20 00008396 */  lhu        $v1, 0x0($s4)
/* 6DF7054 8008FB24 43120200 */  sra        $v0, $v0, 9
/* 6DF7058 8008FB28 21186200 */  addu       $v1, $v1, $v0
/* 6DF705C 8008FB2C 000083A6 */  sh         $v1, 0x0($s4)
/* 6DF7060 8008FB30 5100C292 */  lbu        $v0, 0x51($s6)
/* 6DF7064 8008FB34 46000424 */  addiu      $a0, $zero, 0x46
/* 6DF7068 8008FB38 40100200 */  sll        $v0, $v0, 1
/* 6DF706C 8008FB3C 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF7070 8008FB40 21082200 */  addu       $at, $at, $v0
/* 6DF7074 8008FB44 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF7078 8008FB48 64000524 */  addiu      $a1, $zero, 0x64
/* 6DF707C 8008FB4C 00110300 */  sll        $v0, $v1, 4
/* 6DF7080 8008FB50 23104300 */  subu       $v0, $v0, $v1
/* 6DF7084 8008FB54 02008396 */  lhu        $v1, 0x2($s4)
/* 6DF7088 8008FB58 43120200 */  sra        $v0, $v0, 9
/* 6DF708C 8008FB5C 21186200 */  addu       $v1, $v1, $v0
/* 6DF7090 8008FB60 DBD8000C */  jal        func_8003636C
/* 6DF7094 8008FB64 020083A6 */   sh        $v1, 0x2($s4)
/* 6DF7098 8008FB68 04008396 */  lhu        $v1, 0x4($s4)
/* 6DF709C 8008FB6C 00000000 */  nop
/* 6DF70A0 8008FB70 21186200 */  addu       $v1, $v1, $v0
/* 6DF70A4 8008FB74 040083A6 */  sh         $v1, 0x4($s4)
.Llevel_32_8008FB78:
/* 6DF70A8 8008FB78 00010224 */  addiu      $v0, $zero, 0x100
/* 6DF70AC 8008FB7C 8800A427 */  addiu      $a0, $sp, 0x88
/* 6DF70B0 8008FB80 5800A0AF */  sw         $zero, 0x58($sp)
/* 6DF70B4 8008FB84 5C00A0AF */  sw         $zero, 0x5C($sp)
/* 6DF70B8 8008FB88 6000A2AF */  sw         $v0, 0x60($sp)
/* 6DF70BC 8008FB8C 4400C292 */  lbu        $v0, 0x44($s6)
/* 6DF70C0 8008FB90 7000B127 */  addiu      $s1, $sp, 0x70
/* 6DF70C4 8008FB94 8800A2A3 */  sb         $v0, 0x88($sp)
/* 6DF70C8 8008FB98 4500C292 */  lbu        $v0, 0x45($s6)
/* 6DF70CC 8008FB9C 21282002 */  addu       $a1, $s1, $zero
/* 6DF70D0 8008FBA0 8900A2A3 */  sb         $v0, 0x89($sp)
/* 6DF70D4 8008FBA4 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF70D8 8008FBA8 21300000 */  addu       $a2, $zero, $zero
/* 6DF70DC 8008FBAC A43A010C */  jal        func_8004EA90
/* 6DF70E0 8008FBB0 8A00A2A3 */   sb        $v0, 0x8A($sp)
/* 6DF70E4 8008FBB4 21202002 */  addu       $a0, $s1, $zero
/* 6DF70E8 8008FBB8 5800B027 */  addiu      $s0, $sp, 0x58
/* 6DF70EC 8008FBBC 21280002 */  addu       $a1, $s0, $zero
/* 6DF70F0 8008FBC0 5B3B010C */  jal        func_8004ED6C
/* 6DF70F4 8008FBC4 21300002 */   addu      $a2, $s0, $zero
/* 6DF70F8 8008FBC8 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF70FC 8008FBCC 21288000 */  addu       $a1, $a0, $zero
/* 6DF7100 8008FBD0 653C010C */  jal        func_8004F194
/* 6DF7104 8008FBD4 21300002 */   addu      $a2, $s0, $zero
/* 6DF7108 8008FBD8 00008286 */  lh         $v0, 0x0($s4)
/* 6DF710C 8008FBDC 21202002 */  addu       $a0, $s1, $zero
/* 6DF7110 8008FBE0 5800A2AF */  sw         $v0, 0x58($sp)
/* 6DF7114 8008FBE4 02008286 */  lh         $v0, 0x2($s4)
/* 6DF7118 8008FBE8 21280002 */  addu       $a1, $s0, $zero
/* 6DF711C 8008FBEC 5C00A2AF */  sw         $v0, 0x5C($sp)
/* 6DF7120 8008FBF0 04008286 */  lh         $v0, 0x4($s4)
/* 6DF7124 8008FBF4 2130A000 */  addu       $a2, $a1, $zero
/* 6DF7128 8008FBF8 5B3B010C */  jal        func_8004ED6C
/* 6DF712C 8008FBFC 6000A2AF */   sw        $v0, 0x60($sp)
/* 6DF7130 8008FC00 5800A28F */  lw         $v0, 0x58($sp)
/* 6DF7134 8008FC04 00000000 */  nop
/* 6DF7138 8008FC08 000082A6 */  sh         $v0, 0x0($s4)
/* 6DF713C 8008FC0C 5C00A28F */  lw         $v0, 0x5C($sp)
/* 6DF7140 8008FC10 00000000 */  nop
/* 6DF7144 8008FC14 020082A6 */  sh         $v0, 0x2($s4)
/* 6DF7148 8008FC18 6000A28F */  lw         $v0, 0x60($sp)
/* 6DF714C 8008FC1C 00000000 */  nop
/* 6DF7150 8008FC20 040082A6 */  sh         $v0, 0x4($s4)
/* 6DF7154 8008FC24 1800C28E */  lw         $v0, 0x18($s6)
/* 6DF7158 8008FC28 0200033C */  lui        $v1, (0x20000 >> 16)
/* 6DF715C 8008FC2C 24104300 */  and        $v0, $v0, $v1
/* 6DF7160 8008FC30 1D004010 */  beqz       $v0, .Llevel_32_8008FCA8
/* 6DF7164 8008FC34 00000000 */   nop
/* 6DF7168 8008FC38 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 6DF716C 8008FC3C 36038424 */  addiu      $a0, $a0, %lo(D_80070328 + 0xE)
/* 6DF7170 8008FC40 00008290 */  lbu        $v0, 0x0($a0)
/* 6DF7174 8008FC44 00000000 */  nop
/* 6DF7178 8008FC48 40100200 */  sll        $v0, $v0, 1
/* 6DF717C 8008FC4C 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF7180 8008FC50 21082200 */  addu       $at, $at, $v0
/* 6DF7184 8008FC54 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF7188 8008FC58 00000000 */  nop
/* 6DF718C 8008FC5C C0100300 */  sll        $v0, $v1, 3
/* 6DF7190 8008FC60 23104300 */  subu       $v0, $v0, $v1
/* 6DF7194 8008FC64 C0100200 */  sll        $v0, $v0, 3
/* 6DF7198 8008FC68 23104300 */  subu       $v0, $v0, $v1
/* 6DF719C 8008FC6C 00008396 */  lhu        $v1, 0x0($s4)
/* 6DF71A0 8008FC70 83120200 */  sra        $v0, $v0, 10
/* 6DF71A4 8008FC74 21186200 */  addu       $v1, $v1, $v0
/* 6DF71A8 8008FC78 000083A6 */  sh         $v1, 0x0($s4)
/* 6DF71AC 8008FC7C 00008290 */  lbu        $v0, 0x0($a0)
/* 6DF71B0 8008FC80 00000000 */  nop
/* 6DF71B4 8008FC84 40100200 */  sll        $v0, $v0, 1
/* 6DF71B8 8008FC88 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF71BC 8008FC8C 21082200 */  addu       $at, $at, $v0
/* 6DF71C0 8008FC90 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF71C4 8008FC94 00000000 */  nop
/* 6DF71C8 8008FC98 C0100300 */  sll        $v0, $v1, 3
/* 6DF71CC 8008FC9C 23104300 */  subu       $v0, $v0, $v1
/* 6DF71D0 8008FCA0 453F0208 */  j          .Llevel_32_8008FD14
/* 6DF71D4 8008FCA4 C0100200 */   sll       $v0, $v0, 3
.Llevel_32_8008FCA8:
/* 6DF71D8 8008FCA8 0780043C */  lui        $a0, %hi(D_80070328 + 0xE)
/* 6DF71DC 8008FCAC 36038424 */  addiu      $a0, $a0, %lo(D_80070328 + 0xE)
/* 6DF71E0 8008FCB0 00008290 */  lbu        $v0, 0x0($a0)
/* 6DF71E4 8008FCB4 00000000 */  nop
/* 6DF71E8 8008FCB8 40100200 */  sll        $v0, $v0, 1
/* 6DF71EC 8008FCBC 0680013C */  lui        $at, %hi(D_80065920)
/* 6DF71F0 8008FCC0 21082200 */  addu       $at, $at, $v0
/* 6DF71F4 8008FCC4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 6DF71F8 8008FCC8 00000000 */  nop
/* 6DF71FC 8008FCCC C0100300 */  sll        $v0, $v1, 3
/* 6DF7200 8008FCD0 21104300 */  addu       $v0, $v0, $v1
/* 6DF7204 8008FCD4 80100200 */  sll        $v0, $v0, 2
/* 6DF7208 8008FCD8 23104300 */  subu       $v0, $v0, $v1
/* 6DF720C 8008FCDC 00008396 */  lhu        $v1, 0x0($s4)
/* 6DF7210 8008FCE0 83120200 */  sra        $v0, $v0, 10
/* 6DF7214 8008FCE4 21186200 */  addu       $v1, $v1, $v0
/* 6DF7218 8008FCE8 000083A6 */  sh         $v1, 0x0($s4)
/* 6DF721C 8008FCEC 00008290 */  lbu        $v0, 0x0($a0)
/* 6DF7220 8008FCF0 00000000 */  nop
/* 6DF7224 8008FCF4 40100200 */  sll        $v0, $v0, 1
/* 6DF7228 8008FCF8 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF722C 8008FCFC 21082200 */  addu       $at, $at, $v0
/* 6DF7230 8008FD00 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 6DF7234 8008FD04 00000000 */  nop
/* 6DF7238 8008FD08 C0100300 */  sll        $v0, $v1, 3
/* 6DF723C 8008FD0C 21104300 */  addu       $v0, $v0, $v1
/* 6DF7240 8008FD10 80100200 */  sll        $v0, $v0, 2
.Llevel_32_8008FD14:
/* 6DF7244 8008FD14 23104300 */  subu       $v0, $v0, $v1
/* 6DF7248 8008FD18 02008396 */  lhu        $v1, 0x2($s4)
/* 6DF724C 8008FD1C 83120200 */  sra        $v0, $v0, 10
/* 6DF7250 8008FD20 21186200 */  addu       $v1, $v1, $v0
/* 6DF7254 8008FD24 9171010C */  jal        rand
/* 6DF7258 8008FD28 020083A6 */   sh        $v1, 0x2($s4)
/* 6DF725C 8008FD2C 9171010C */  jal        rand
/* 6DF7260 8008FD30 4400A2A2 */   sb        $v0, 0x44($s5)
/* 6DF7264 8008FD34 9171010C */  jal        rand
/* 6DF7268 8008FD38 4500A2A2 */   sb        $v0, 0x45($s5)
/* 6DF726C 8008FD3C 4600A2A2 */  sb         $v0, 0x46($s5)
/* 6DF7270 8008FD40 00008286 */  lh         $v0, 0x0($s4)
/* 6DF7274 8008FD44 0C00A38E */  lw         $v1, 0xC($s5)
/* 6DF7278 8008FD48 40100200 */  sll        $v0, $v0, 1
/* 6DF727C 8008FD4C 21186200 */  addu       $v1, $v1, $v0
/* 6DF7280 8008FD50 0C00A3AE */  sw         $v1, 0xC($s5)
/* 6DF7284 8008FD54 02008286 */  lh         $v0, 0x2($s4)
/* 6DF7288 8008FD58 1000A38E */  lw         $v1, 0x10($s5)
/* 6DF728C 8008FD5C 40100200 */  sll        $v0, $v0, 1
/* 6DF7290 8008FD60 21186200 */  addu       $v1, $v1, $v0
/* 6DF7294 8008FD64 1000A3AE */  sw         $v1, 0x10($s5)
/* 6DF7298 8008FD68 04008286 */  lh         $v0, 0x4($s4)
/* 6DF729C 8008FD6C 1400A38E */  lw         $v1, 0x14($s5)
/* 6DF72A0 8008FD70 40100200 */  sll        $v0, $v0, 1
/* 6DF72A4 8008FD74 21186200 */  addu       $v1, $v1, $v0
/* 6DF72A8 8008FD78 9171010C */  jal        rand
/* 6DF72AC 8008FD7C 1400A3AE */   sw        $v1, 0x14($s5)
/* 6DF72B0 8008FD80 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF72B4 8008FD84 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF72B8 8008FD88 9171010C */  jal        rand
/* 6DF72BC 8008FD8C 060082A6 */   sh        $v0, 0x6($s4)
/* 6DF72C0 8008FD90 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF72C4 8008FD94 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF72C8 8008FD98 9171010C */  jal        rand
/* 6DF72CC 8008FD9C 080082A6 */   sh        $v0, 0x8($s4)
/* 6DF72D0 8008FDA0 5A000424 */  addiu      $a0, $zero, 0x5A
/* 6DF72D4 8008FDA4 96000524 */  addiu      $a1, $zero, 0x96
/* 6DF72D8 8008FDA8 1F004230 */  andi       $v0, $v0, 0x1F
/* 6DF72DC 8008FDAC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 6DF72E0 8008FDB0 DBD8000C */  jal        func_8003636C
/* 6DF72E4 8008FDB4 0A0082A6 */   sh        $v0, 0xA($s4)
/* 6DF72E8 8008FDB8 0C0082A6 */  sh         $v0, 0xC($s4)
/* 6DF72EC 8008FDBC 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF72F0 8008FDC0 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF72F4 8008FDC4 0E0082A6 */   sh        $v0, 0xE($s4)
.Llevel_32_8008FDC8:
/* 6DF72F8 8008FDC8 0C00A426 */  addiu      $a0, $s5, 0xC
/* 6DF72FC 8008FDCC 5E3C010C */  jal        func_8004F178
/* 6DF7300 8008FDD0 0C00C526 */   addiu     $a1, $s6, 0xC
/* 6DF7304 8008FDD4 4400C292 */  lbu        $v0, 0x44($s6)
/* 6DF7308 8008FDD8 00000000 */  nop
/* 6DF730C 8008FDDC 4400A2A2 */  sb         $v0, 0x44($s5)
/* 6DF7310 8008FDE0 4500C292 */  lbu        $v0, 0x45($s6)
/* 6DF7314 8008FDE4 00000000 */  nop
/* 6DF7318 8008FDE8 4500A2A2 */  sb         $v0, 0x45($s5)
/* 6DF731C 8008FDEC 4600C292 */  lbu        $v0, 0x46($s6)
/* 6DF7320 8008FDF0 2120A002 */  addu       $a0, $s5, $zero
/* 6DF7324 8008FDF4 0957010C */  jal        func_80055C24
/* 6DF7328 8008FDF8 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF732C 8008FDFC 2120A002 */  addu       $a0, $s5, $zero
/* 6DF7330 8008FE00 E0D3000C */  jal        func_80034F80
/* 6DF7334 8008FE04 01000524 */   addiu     $a1, $zero, 0x1
/* 6DF7338 8008FE08 04000224 */  addiu      $v0, $zero, 0x4
/* 6DF733C 8008FE0C AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF7340 8008FE10 4800A2A2 */   sb        $v0, 0x48($s5)
.Llevel_32_8008FE14:
/* 6DF7344 8008FE14 0000B08E */  lw         $s0, 0x0($s5)
/* 6DF7348 8008FE18 5E3C010C */  jal        func_8004F178
/* 6DF734C 8008FE1C 0C00C526 */   addiu     $a1, $s6, 0xC
/* 6DF7350 8008FE20 21200000 */  addu       $a0, $zero, $zero
/* 6DF7354 8008FE24 DBD8000C */  jal        func_8003636C
/* 6DF7358 8008FE28 FF000524 */   addiu     $a1, $zero, 0xFF
/* 6DF735C 8008FE2C 2120A002 */  addu       $a0, $s5, $zero
/* 6DF7360 8008FE30 0957010C */  jal        func_80055C24
/* 6DF7364 8008FE34 4600A2A2 */   sb        $v0, 0x46($s5)
/* 6DF7368 8008FE38 78000424 */  addiu      $a0, $zero, 0x78
/* 6DF736C 8008FE3C DBD8000C */  jal        func_8003636C
/* 6DF7370 8008FE40 B4000524 */   addiu     $a1, $zero, 0xB4
/* 6DF7374 8008FE44 000002AE */  sw         $v0, 0x0($s0)
/* 6DF7378 8008FE48 C0100200 */  sll        $v0, $v0, 3
/* 6DF737C 8008FE4C F8014230 */  andi       $v0, $v0, 0x1F8
/* 6DF7380 8008FE50 0680013C */  lui        $at, %hi(D_800658A0)
/* 6DF7384 8008FE54 21082200 */  addu       $at, $at, $v0
/* 6DF7388 8008FE58 A0582294 */  lhu        $v0, %lo(D_800658A0)($at)
/* 6DF738C 8008FE5C 3600A386 */  lh         $v1, 0x36($s5)
/* 6DF7390 8008FE60 00140200 */  sll        $v0, $v0, 16
/* 6DF7394 8008FE64 C3150200 */  sra        $v0, $v0, 23
/* 6DF7398 8008FE68 0F007110 */  beq        $v1, $s1, .Llevel_32_8008FEA8
/* 6DF739C 8008FE6C 4500A2A2 */   sb        $v0, 0x45($s5)
/* 6DF73A0 8008FE70 40004224 */  addiu      $v0, $v0, 0x40
/* 6DF73A4 8008FE74 AA3F0208 */  j          .Llevel_32_8008FEA8
/* 6DF73A8 8008FE78 4500A2A2 */   sb        $v0, 0x45($s5)
.Llevel_32_8008FE7C:
/* 6DF73AC 8008FE7C 0300C012 */  beqz       $s6, .Llevel_32_8008FE8C
/* 6DF73B0 8008FE80 0C00A426 */   addiu     $a0, $s5, 0xC
/* 6DF73B4 8008FE84 A53F0208 */  j          .Llevel_32_8008FE94
/* 6DF73B8 8008FE88 0C00C526 */   addiu     $a1, $s6, 0xC
.Llevel_32_8008FE8C:
/* 6DF73BC 8008FE8C 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DF73C0 8008FE90 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
.Llevel_32_8008FE94:
/* 6DF73C4 8008FE94 5E3C010C */  jal        func_8004F178
/* 6DF73C8 8008FE98 00000000 */   nop
/* 6DF73CC 8008FE9C 2120A002 */  addu       $a0, $s5, $zero
.Llevel_32_8008FEA0:
/* 6DF73D0 8008FEA0 0957010C */  jal        func_80055C24
/* 6DF73D4 8008FEA4 00000000 */   nop
.Llevel_32_8008FEA8:
/* 6DF73D8 8008FEA8 2110A002 */  addu       $v0, $s5, $zero
.Llevel_32_8008FEAC:
/* 6DF73DC 8008FEAC AC00BF8F */  lw         $ra, 0xAC($sp)
/* 6DF73E0 8008FEB0 A800B68F */  lw         $s6, 0xA8($sp)
/* 6DF73E4 8008FEB4 A400B58F */  lw         $s5, 0xA4($sp)
/* 6DF73E8 8008FEB8 A000B48F */  lw         $s4, 0xA0($sp)
/* 6DF73EC 8008FEBC 9C00B38F */  lw         $s3, 0x9C($sp)
/* 6DF73F0 8008FEC0 9800B28F */  lw         $s2, 0x98($sp)
/* 6DF73F4 8008FEC4 9400B18F */  lw         $s1, 0x94($sp)
/* 6DF73F8 8008FEC8 9000B08F */  lw         $s0, 0x90($sp)
/* 6DF73FC 8008FECC B000BD27 */  addiu      $sp, $sp, 0xB0
/* 6DF7400 8008FED0 0800E003 */  jr         $ra
/* 6DF7404 8008FED4 00000000 */   nop
.size func_level_32_8008E988, . - func_level_32_8008E988
