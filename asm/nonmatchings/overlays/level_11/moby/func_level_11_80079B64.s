.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_325_level_11
/* 3E1E094 80079B64 0780023C */  lui        $v0, %hi(D_8006C640)
/* 3E1E098 80079B68 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 3E1E09C 80079B6C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3E1E0A0 80079B70 1400B1AF */  sw         $s1, 0x14($sp)
/* 3E1E0A4 80079B74 21888000 */  addu       $s1, $a0, $zero
/* 3E1E0A8 80079B78 1800BFAF */  sw         $ra, 0x18($sp)
/* 3E1E0AC 80079B7C 1000B0AF */  sw         $s0, 0x10($sp)
/* 3E1E0B0 80079B80 0000308E */  lw         $s0, 0x0($s1)
/* 3E1E0B4 80079B84 0E004014 */  bnez       $v0, .Llevel_11_80079BC0
/* 3E1E0B8 80079B88 20020224 */   addiu     $v0, $zero, 0x220
/* 3E1E0BC 80079B8C 36002386 */  lh         $v1, 0x36($s1)
/* 3E1E0C0 80079B90 00000000 */  nop
/* 3E1E0C4 80079B94 0A006214 */  bne        $v1, $v0, .Llevel_11_80079BC0
/* 3E1E0C8 80079B98 00000000 */   nop
/* 3E1E0CC 80079B9C 0780023C */  lui        $v0, %hi(D_8007159A)
/* 3E1E0D0 80079BA0 9A154290 */  lbu        $v0, %lo(D_8007159A)($v0)
/* 3E1E0D4 80079BA4 00000000 */  nop
/* 3E1E0D8 80079BA8 05004014 */  bnez       $v0, .Llevel_11_80079BC0
/* 3E1E0DC 80079BAC 00000000 */   nop
/* 3E1E0E0 80079BB0 C656010C */  jal        func_80055B18
/* 3E1E0E4 80079BB4 00000000 */   nop
/* 3E1E0E8 80079BB8 39E70108 */  j          .Llevel_11_80079CE4
/* 3E1E0EC 80079BBC 00000000 */   nop
.Llevel_11_80079BC0:
/* 3E1E0F0 80079BC0 48002392 */  lbu        $v1, 0x48($s1)
/* 3E1E0F4 80079BC4 00000000 */  nop
/* 3E1E0F8 80079BC8 05006010 */  beqz       $v1, .Llevel_11_80079BE0
/* 3E1E0FC 80079BCC 01000224 */   addiu     $v0, $zero, 0x1
/* 3E1E100 80079BD0 3D006210 */  beq        $v1, $v0, .Llevel_11_80079CC8
/* 3E1E104 80079BD4 00000000 */   nop
/* 3E1E108 80079BD8 39E70108 */  j          .Llevel_11_80079CE4
/* 3E1E10C 80079BDC 00000000 */   nop
.Llevel_11_80079BE0:
/* 3E1E110 80079BE0 36002386 */  lh         $v1, 0x36($s1)
/* 3E1E114 80079BE4 AB020224 */  addiu      $v0, $zero, 0x2AB
/* 3E1E118 80079BE8 13006214 */  bne        $v1, $v0, .Llevel_11_80079C38
/* 3E1E11C 80079BEC 00000000 */   nop
/* 3E1E120 80079BF0 0780023C */  lui        $v0, %hi(D_8007158A)
/* 3E1E124 80079BF4 8A154290 */  lbu        $v0, %lo(D_8007158A)($v0)
/* 3E1E128 80079BF8 00000000 */  nop
/* 3E1E12C 80079BFC 03004014 */  bnez       $v0, .Llevel_11_80079C0C
/* 3E1E130 80079C00 00000000 */   nop
/* 3E1E134 80079C04 0EE70108 */  j          .Llevel_11_80079C38
/* 3E1E138 80079C08 020000A2 */   sb        $zero, 0x2($s0)
.Llevel_11_80079C0C:
/* 3E1E13C 80079C0C 0680023C */  lui        $v0, %hi(D_80066FCC + 0x10)
/* 3E1E140 80079C10 DC6F4290 */  lbu        $v0, %lo(D_80066FCC + 0x10)($v0)
/* 3E1E144 80079C14 0780013C */  lui        $at, %hi(D_80070300)
/* 3E1E148 80079C18 21082200 */  addu       $at, $at, $v0
/* 3E1E14C 80079C1C 00032290 */  lbu        $v0, %lo(D_80070300)($at)
/* 3E1E150 80079C20 00000000 */  nop
/* 3E1E154 80079C24 01004230 */  andi       $v0, $v0, 0x1
/* 3E1E158 80079C28 02004014 */  bnez       $v0, .Llevel_11_80079C34
/* 3E1E15C 80079C2C 02000224 */   addiu     $v0, $zero, 0x2
/* 3E1E160 80079C30 01000224 */  addiu      $v0, $zero, 0x1
.Llevel_11_80079C34:
/* 3E1E164 80079C34 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_11_80079C38:
/* 3E1E168 80079C38 02000392 */  lbu        $v1, 0x2($s0)
/* 3E1E16C 80079C3C 02000224 */  addiu      $v0, $zero, 0x2
/* 3E1E170 80079C40 02006214 */  bne        $v1, $v0, .Llevel_11_80079C4C
/* 3E1E174 80079C44 00000000 */   nop
/* 3E1E178 80079C48 050000A2 */  sb         $zero, 0x5($s0)
.Llevel_11_80079C4C:
/* 3E1E17C 80079C4C 05000292 */  lbu        $v0, 0x5($s0)
/* 3E1E180 80079C50 00000000 */  nop
/* 3E1E184 80079C54 10004014 */  bnez       $v0, .Llevel_11_80079C98
/* 3E1E188 80079C58 21202002 */   addu      $a0, $s1, $zero
/* 3E1E18C 80079C5C 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 3E1E190 80079C60 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 3E1E194 80079C64 00000000 */  nop
/* 3E1E198 80079C68 10004230 */  andi       $v0, $v0, 0x10
/* 3E1E19C 80079C6C 06004010 */  beqz       $v0, .Llevel_11_80079C88
/* 3E1E1A0 80079C70 00000000 */   nop
/* 3E1E1A4 80079C74 EFDE000C */  jal        func_80037BBC
/* 3E1E1A8 80079C78 21280000 */   addu      $a1, $zero, $zero
/* 3E1E1AC 80079C7C 0A004014 */  bnez       $v0, .Llevel_11_80079CA8
/* 3E1E1B0 80079C80 21202002 */   addu      $a0, $s1, $zero
/* 3E1E1B4 80079C84 070000A2 */  sb         $zero, 0x7($s0)
.Llevel_11_80079C88:
/* 3E1E1B8 80079C88 05000292 */  lbu        $v0, 0x5($s0)
/* 3E1E1BC 80079C8C 00000000 */  nop
/* 3E1E1C0 80079C90 14004010 */  beqz       $v0, .Llevel_11_80079CE4
/* 3E1E1C4 80079C94 21202002 */   addu      $a0, $s1, $zero
.Llevel_11_80079C98:
/* 3E1E1C8 80079C98 EFDE000C */  jal        func_80037BBC
/* 3E1E1CC 80079C9C 21280000 */   addu      $a1, $zero, $zero
/* 3E1E1D0 80079CA0 07004010 */  beqz       $v0, .Llevel_11_80079CC0
/* 3E1E1D4 80079CA4 21202002 */   addu      $a0, $s1, $zero
.Llevel_11_80079CA8:
/* 3E1E1D8 80079CA8 21280000 */  addu       $a1, $zero, $zero
/* 3E1E1DC 80079CAC B944010C */  jal        func_800512E4
/* 3E1E1E0 80079CB0 21300000 */   addu      $a2, $zero, $zero
/* 3E1E1E4 80079CB4 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1E1E8 80079CB8 39E70108 */  j          .Llevel_11_80079CE4
/* 3E1E1EC 80079CBC 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_11_80079CC0:
/* 3E1E1F0 80079CC0 39E70108 */  j          .Llevel_11_80079CE4
/* 3E1E1F4 80079CC4 070000A2 */   sb        $zero, 0x7($s0)
.Llevel_11_80079CC8:
/* 3E1E1F8 80079CC8 0780023C */  lui        $v0, %hi(D_8006E344)
/* 3E1E1FC 80079CCC 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 3E1E200 80079CD0 00000000 */  nop
/* 3E1E204 80079CD4 03004310 */  beq        $v0, $v1, .Llevel_11_80079CE4
/* 3E1E208 80079CD8 00000000 */   nop
/* 3E1E20C 80079CDC 200003AE */  sw         $v1, 0x20($s0)
/* 3E1E210 80079CE0 480020A2 */  sb         $zero, 0x48($s1)
.Llevel_11_80079CE4:
/* 3E1E214 80079CE4 1800BF8F */  lw         $ra, 0x18($sp)
/* 3E1E218 80079CE8 1400B18F */  lw         $s1, 0x14($sp)
/* 3E1E21C 80079CEC 1000B08F */  lw         $s0, 0x10($sp)
/* 3E1E220 80079CF0 2000BD27 */  addiu      $sp, $sp, 0x20
/* 3E1E224 80079CF4 0800E003 */  jr         $ra
/* 3E1E228 80079CF8 00000000 */   nop
.size MobyUpdate_325_level_11, . - MobyUpdate_325_level_11
