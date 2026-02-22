.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_34_8007CEA8
/* 74D8BD8 8007CEA8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 74D8BDC 8007CEAC 1400B1AF */  sw         $s1, 0x14($sp)
/* 74D8BE0 8007CEB0 21888000 */  addu       $s1, $a0, $zero
/* 74D8BE4 8007CEB4 2000BFAF */  sw         $ra, 0x20($sp)
/* 74D8BE8 8007CEB8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 74D8BEC 8007CEBC 1800B2AF */  sw         $s2, 0x18($sp)
/* 74D8BF0 8007CEC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 74D8BF4 8007CEC4 48002292 */  lbu        $v0, 0x48($s1)
/* 74D8BF8 8007CEC8 0000308E */  lw         $s0, 0x0($s1)
/* 74D8BFC 8007CECC 4D004014 */  bnez       $v0, .Llevel_34_8007D004
/* 74D8C00 8007CED0 00000000 */   nop
/* 74D8C04 8007CED4 0780123C */  lui        $s2, %hi(D_80070328 + 0xB8)
/* 74D8C08 8007CED8 E0035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0xB8)
/* 74D8C0C 8007CEDC 0000428E */  lw         $v0, 0x0($s2)
/* 74D8C10 8007CEE0 00000000 */  nop
/* 74D8C14 8007CEE4 54004014 */  bnez       $v0, .Llevel_34_8007D038
/* 74D8C18 8007CEE8 48FF5326 */   addiu     $s3, $s2, -0xB8
/* 74D8C1C 8007CEEC 21206002 */  addu       $a0, $s3, $zero
/* 74D8C20 8007CEF0 21280002 */  addu       $a1, $s0, $zero
/* 74D8C24 8007CEF4 21300000 */  addu       $a2, $zero, $zero
/* 74D8C28 8007CEF8 88D8000C */  jal        func_80036220
/* 74D8C2C 8007CEFC BC020724 */   addiu     $a3, $zero, 0x2BC
/* 74D8C30 8007CF00 4D004010 */  beqz       $v0, .Llevel_34_8007D038
/* 74D8C34 8007CF04 00000000 */   nop
/* 74D8C38 8007CF08 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 74D8C3C 8007CF0C 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 74D8C40 8007CF10 0800028E */  lw         $v0, 0x8($s0)
/* 74D8C44 8007CF14 00000000 */  nop
/* 74D8C48 8007CF18 2A104300 */  slt        $v0, $v0, $v1
/* 74D8C4C 8007CF1C 46004010 */  beqz       $v0, .Llevel_34_8007D038
/* 74D8C50 8007CF20 21282002 */   addu      $a1, $s1, $zero
/* 74D8C54 8007CF24 0780033C */  lui        $v1, %hi(D_8006C654)
/* 74D8C58 8007CF28 54C6638C */  lw         $v1, %lo(D_8006C654)($v1)
/* 74D8C5C 8007CF2C 03000224 */  addiu      $v0, $zero, 0x3
/* 74D8C60 8007CF30 0680013C */  lui        $at, %hi(D_80066BC8 + 12)
/* 74D8C64 8007CF34 D46B22A0 */  sb         $v0, %lo(D_80066BC8 + 12)($at)
/* 74D8C68 8007CF38 01000224 */  addiu      $v0, $zero, 0x1
/* 74D8C6C 8007CF3C 0780013C */  lui        $at, %hi(D_800719DC)
/* 74D8C70 8007CF40 DC1922A4 */  sh         $v0, %lo(D_800719DC)($at)
/* 74D8C74 8007CF44 23006490 */  lbu        $a0, 0x23($v1)
/* 74D8C78 8007CF48 D4EE000C */  jal        PlaySound
/* 74D8C7C 8007CF4C A1000624 */   addiu     $a2, $zero, 0xA1
/* 74D8C80 8007CF50 D3000424 */  addiu      $a0, $zero, 0xD3
/* 74D8C84 8007CF54 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 74D8C88 8007CF58 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 74D8C8C 8007CF5C 00000000 */  nop
/* 74D8C90 8007CF60 09F84000 */  jalr       $v0
/* 74D8C94 8007CF64 21282002 */   addu      $a1, $s1, $zero
/* 74D8C98 8007CF68 21804000 */  addu       $s0, $v0, $zero
/* 74D8C9C 8007CF6C 22000012 */  beqz       $s0, .Llevel_34_8007CFF8
/* 74D8CA0 8007CF70 0C000426 */   addiu     $a0, $s0, 0xC
/* 74D8CA4 8007CF74 5E3C010C */  jal        func_8004F178
/* 74D8CA8 8007CF78 21286002 */   addu      $a1, $s3, $zero
/* 74D8CAC 8007CF7C 56FF4292 */  lbu        $v0, -0xAA($s2)
/* 74D8CB0 8007CF80 00000000 */  nop
/* 74D8CB4 8007CF84 40100200 */  sll        $v0, $v0, 1
/* 74D8CB8 8007CF88 0680013C */  lui        $at, %hi(D_80065920)
/* 74D8CBC 8007CF8C 21082200 */  addu       $at, $at, $v0
/* 74D8CC0 8007CF90 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 74D8CC4 8007CF94 00000000 */  nop
/* 74D8CC8 8007CF98 40100300 */  sll        $v0, $v1, 1
/* 74D8CCC 8007CF9C 21104300 */  addu       $v0, $v0, $v1
/* 74D8CD0 8007CFA0 C0100200 */  sll        $v0, $v0, 3
/* 74D8CD4 8007CFA4 21104300 */  addu       $v0, $v0, $v1
/* 74D8CD8 8007CFA8 0C00038E */  lw         $v1, 0xC($s0)
/* 74D8CDC 8007CFAC C3110200 */  sra        $v0, $v0, 7
/* 74D8CE0 8007CFB0 21186200 */  addu       $v1, $v1, $v0
/* 74D8CE4 8007CFB4 0C0003AE */  sw         $v1, 0xC($s0)
/* 74D8CE8 8007CFB8 56FF4292 */  lbu        $v0, -0xAA($s2)
/* 74D8CEC 8007CFBC 1400038E */  lw         $v1, 0x14($s0)
/* 74D8CF0 8007CFC0 40100200 */  sll        $v0, $v0, 1
/* 74D8CF4 8007CFC4 0680013C */  lui        $at, %hi(D_800658A0)
/* 74D8CF8 8007CFC8 21082200 */  addu       $at, $at, $v0
/* 74D8CFC 8007CFCC A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 74D8D00 8007CFD0 F4016324 */  addiu      $v1, $v1, 0x1F4
/* 74D8D04 8007CFD4 140003AE */  sw         $v1, 0x14($s0)
/* 74D8D08 8007CFD8 1000038E */  lw         $v1, 0x10($s0)
/* 74D8D0C 8007CFDC 40100400 */  sll        $v0, $a0, 1
/* 74D8D10 8007CFE0 21104400 */  addu       $v0, $v0, $a0
/* 74D8D14 8007CFE4 C0100200 */  sll        $v0, $v0, 3
/* 74D8D18 8007CFE8 21104400 */  addu       $v0, $v0, $a0
/* 74D8D1C 8007CFEC C3110200 */  sra        $v0, $v0, 7
/* 74D8D20 8007CFF0 21186200 */  addu       $v1, $v1, $v0
/* 74D8D24 8007CFF4 100003AE */  sw         $v1, 0x10($s0)
.Llevel_34_8007CFF8:
/* 74D8D28 8007CFF8 01000224 */  addiu      $v0, $zero, 0x1
/* 74D8D2C 8007CFFC 0EF40108 */  j          .Llevel_34_8007D038
/* 74D8D30 8007D000 480022A2 */   sb        $v0, 0x48($s1)
.Llevel_34_8007D004:
/* 74D8D34 8007D004 48003026 */  addiu      $s0, $s1, 0x48
/* 74D8D38 8007D008 21200002 */  addu       $a0, $s0, $zero
/* 74D8D3C 8007D00C 0780063C */  lui        $a2, %hi(D_8006D088)
/* 74D8D40 8007D010 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 74D8D44 8007D014 EDED000C */  jal        func_8003B7B4
/* 74D8D48 8007D018 01000524 */   addiu     $a1, $zero, 0x1
/* 74D8D4C 8007D01C 21200002 */  addu       $a0, $s0, $zero
/* 74D8D50 8007D020 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 74D8D54 8007D024 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 74D8D58 8007D028 EDED000C */  jal        func_8003B7B4
/* 74D8D5C 8007D02C 01000524 */   addiu     $a1, $zero, 0x1
/* 74D8D60 8007D030 C656010C */  jal        func_80055B18
/* 74D8D64 8007D034 21202002 */   addu      $a0, $s1, $zero
.Llevel_34_8007D038:
/* 74D8D68 8007D038 2000BF8F */  lw         $ra, 0x20($sp)
/* 74D8D6C 8007D03C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 74D8D70 8007D040 1800B28F */  lw         $s2, 0x18($sp)
/* 74D8D74 8007D044 1400B18F */  lw         $s1, 0x14($sp)
/* 74D8D78 8007D048 1000B08F */  lw         $s0, 0x10($sp)
/* 74D8D7C 8007D04C 2800BD27 */  addiu      $sp, $sp, 0x28
/* 74D8D80 8007D050 0800E003 */  jr         $ra
/* 74D8D84 8007D054 00000000 */   nop
.size func_level_34_8007CEA8, . - func_level_34_8007CEA8
