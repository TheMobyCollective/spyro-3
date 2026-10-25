.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_325_level_10
/* 3ADEA88 80079D58 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3ADEA8C 80079D5C 1400B1AF */  sw         $s1, 0x14($sp)
/* 3ADEA90 80079D60 21888000 */  addu       $s1, $a0, $zero
/* 3ADEA94 80079D64 45010324 */  addiu      $v1, $zero, 0x145
/* 3ADEA98 80079D68 1800BFAF */  sw         $ra, 0x18($sp)
/* 3ADEA9C 80079D6C 1000B0AF */  sw         $s0, 0x10($sp)
/* 3ADEAA0 80079D70 36002286 */  lh         $v0, 0x36($s1)
/* 3ADEAA4 80079D74 0000308E */  lw         $s0, 0x0($s1)
/* 3ADEAA8 80079D78 12004314 */  bne        $v0, $v1, .Llevel_10_80079DC4
/* 3ADEAAC 80079D7C FFFF0224 */   addiu     $v0, $zero, -0x1
/* 3ADEAB0 80079D80 2400038E */  lw         $v1, 0x24($s0)
/* 3ADEAB4 80079D84 00000000 */  nop
/* 3ADEAB8 80079D88 0E006210 */  beq        $v1, $v0, .Llevel_10_80079DC4
/* 3ADEABC 80079D8C 40100300 */   sll       $v0, $v1, 1
/* 3ADEAC0 80079D90 21104300 */  addu       $v0, $v0, $v1
/* 3ADEAC4 80079D94 80100200 */  sll        $v0, $v0, 2
/* 3ADEAC8 80079D98 23104300 */  subu       $v0, $v0, $v1
/* 3ADEACC 80079D9C 0780033C */  lui        $v1, %hi(D_8006C550)
/* 3ADEAD0 80079DA0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 3ADEAD4 80079DA4 C0100200 */  sll        $v0, $v0, 3
/* 3ADEAD8 80079DA8 21104300 */  addu       $v0, $v0, $v1
/* 3ADEADC 80079DAC 48004290 */  lbu        $v0, 0x48($v0)
/* 3ADEAE0 80079DB0 00000000 */  nop
/* 3ADEAE4 80079DB4 8000422C */  sltiu      $v0, $v0, 0x80
/* 3ADEAE8 80079DB8 02004010 */  beqz       $v0, .Llevel_10_80079DC4
/* 3ADEAEC 80079DBC FF000224 */   addiu     $v0, $zero, 0xFF
/* 3ADEAF0 80079DC0 050002A2 */  sb         $v0, 0x5($s0)
.Llevel_10_80079DC4:
/* 3ADEAF4 80079DC4 36002396 */  lhu        $v1, 0x36($s1)
/* 3ADEAF8 80079DC8 00000000 */  nop
/* 3ADEAFC 80079DCC 55FD6224 */  addiu      $v0, $v1, -0x2AB
/* 3ADEB00 80079DD0 0200422C */  sltiu      $v0, $v0, 0x2
/* 3ADEB04 80079DD4 09004014 */  bnez       $v0, .Llevel_10_80079DFC
/* 3ADEB08 80079DD8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 3ADEB0C 80079DDC 00140300 */  sll        $v0, $v1, 16
/* 3ADEB10 80079DE0 031C0200 */  sra        $v1, $v0, 16
/* 3ADEB14 80079DE4 98010224 */  addiu      $v0, $zero, 0x198
/* 3ADEB18 80079DE8 03006210 */  beq        $v1, $v0, .Llevel_10_80079DF8
/* 3ADEB1C 80079DEC AD020224 */   addiu     $v0, $zero, 0x2AD
/* 3ADEB20 80079DF0 03006214 */  bne        $v1, $v0, .Llevel_10_80079E00
/* 3ADEB24 80079DF4 00000000 */   nop
.Llevel_10_80079DF8:
/* 3ADEB28 80079DF8 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_10_80079DFC:
/* 3ADEB2C 80079DFC 050002A2 */  sb         $v0, 0x5($s0)
.Llevel_10_80079E00:
/* 3ADEB30 80079E00 48002392 */  lbu        $v1, 0x48($s1)
/* 3ADEB34 80079E04 00000000 */  nop
/* 3ADEB38 80079E08 05006010 */  beqz       $v1, .Llevel_10_80079E20
/* 3ADEB3C 80079E0C 01000224 */   addiu     $v0, $zero, 0x1
/* 3ADEB40 80079E10 27006210 */  beq        $v1, $v0, .Llevel_10_80079EB0
/* 3ADEB44 80079E14 00000000 */   nop
/* 3ADEB48 80079E18 B3E70108 */  j          .Llevel_10_80079ECC
/* 3ADEB4C 80079E1C 00000000 */   nop
.Llevel_10_80079E20:
/* 3ADEB50 80079E20 02000392 */  lbu        $v1, 0x2($s0)
/* 3ADEB54 80079E24 02000224 */  addiu      $v0, $zero, 0x2
/* 3ADEB58 80079E28 02006214 */  bne        $v1, $v0, .Llevel_10_80079E34
/* 3ADEB5C 80079E2C 00000000 */   nop
/* 3ADEB60 80079E30 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_10_80079E34:
/* 3ADEB64 80079E34 05000292 */  lbu        $v0, 0x5($s0)
/* 3ADEB68 80079E38 00000000 */  nop
/* 3ADEB6C 80079E3C 10004014 */  bnez       $v0, .Llevel_10_80079E80
/* 3ADEB70 80079E40 21202002 */   addu      $a0, $s1, $zero
/* 3ADEB74 80079E44 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 3ADEB78 80079E48 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 3ADEB7C 80079E4C 00000000 */  nop
/* 3ADEB80 80079E50 10004230 */  andi       $v0, $v0, 0x10
/* 3ADEB84 80079E54 06004010 */  beqz       $v0, .Llevel_10_80079E70
/* 3ADEB88 80079E58 00000000 */   nop
/* 3ADEB8C 80079E5C EFDE000C */  jal        func_80037BBC
/* 3ADEB90 80079E60 21280000 */   addu      $a1, $zero, $zero
/* 3ADEB94 80079E64 0A004014 */  bnez       $v0, .Llevel_10_80079E90
/* 3ADEB98 80079E68 21202002 */   addu      $a0, $s1, $zero
/* 3ADEB9C 80079E6C 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_10_80079E70:
/* 3ADEBA0 80079E70 05000292 */  lbu        $v0, 0x5($s0)
/* 3ADEBA4 80079E74 00000000 */  nop
/* 3ADEBA8 80079E78 14004010 */  beqz       $v0, .Llevel_10_80079ECC
/* 3ADEBAC 80079E7C 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_80079E80:
/* 3ADEBB0 80079E80 EFDE000C */  jal        func_80037BBC
/* 3ADEBB4 80079E84 21280000 */   addu      $a1, $zero, $zero
/* 3ADEBB8 80079E88 07004010 */  beqz       $v0, .Llevel_10_80079EA8
/* 3ADEBBC 80079E8C 21202002 */   addu      $a0, $s1, $zero
.Llevel_10_80079E90:
/* 3ADEBC0 80079E90 21280000 */  addu       $a1, $zero, $zero
/* 3ADEBC4 80079E94 B944010C */  jal        func_800512E4
/* 3ADEBC8 80079E98 21300000 */   addu      $a2, $zero, $zero
/* 3ADEBCC 80079E9C 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADEBD0 80079EA0 B3E70108 */  j          .Llevel_10_80079ECC
/* 3ADEBD4 80079EA4 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_10_80079EA8:
/* 3ADEBD8 80079EA8 B3E70108 */  j          .Llevel_10_80079ECC
/* 3ADEBDC 80079EAC 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_10_80079EB0:
/* 3ADEBE0 80079EB0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 3ADEBE4 80079EB4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 3ADEBE8 80079EB8 00000000 */  nop
/* 3ADEBEC 80079EBC 03004310 */  beq        $v0, $v1, .Llevel_10_80079ECC
/* 3ADEBF0 80079EC0 00000000 */   nop
/* 3ADEBF4 80079EC4 200003AE */  sw         $v1, 0x20($s0)
/* 3ADEBF8 80079EC8 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_10_80079ECC:
/* 3ADEBFC 80079ECC 1800BF8F */  lw         $ra, 0x18($sp)
/* 3ADEC00 80079ED0 1400B18F */  lw         $s1, 0x14($sp)
/* 3ADEC04 80079ED4 1000B08F */  lw         $s0, 0x10($sp)
/* 3ADEC08 80079ED8 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3ADEC0C 80079EDC 0800E003 */  jr         $ra
/* 3ADEC10 80079EE0 00000000 */   nop
.size MobyUpdate_325_level_10, . - MobyUpdate_325_level_10
