.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_800888C4
/* 3E2CDF4 800888C4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 3E2CDF8 800888C8 70000424 */  addiu      $a0, $zero, 0x70
/* 3E2CDFC 800888CC 90010524 */  addiu      $a1, $zero, 0x190
/* 3E2CE00 800888D0 48000624 */  addiu      $a2, $zero, 0x48
/* 3E2CE04 800888D4 B0000724 */  addiu      $a3, $zero, 0xB0
/* 3E2CE08 800888D8 4400BFAF */  sw         $ra, 0x44($sp)
/* 3E2CE0C 800888DC 407F000C */  jal        func_8001FD00
/* 3E2CE10 800888E0 4000B0AF */   sw        $s0, 0x40($sp)
/* 3E2CE14 800888E4 90000424 */  addiu      $a0, $zero, 0x90
/* 3E2CE18 800888E8 5E000524 */  addiu      $a1, $zero, 0x5E
/* 3E2CE1C 800888EC 70010624 */  addiu      $a2, $zero, 0x170
/* 3E2CE20 800888F0 DD7E000C */  jal        func_8001FB74
/* 3E2CE24 800888F4 5E000724 */   addiu     $a3, $zero, 0x5E
/* 3E2CE28 800888F8 90000424 */  addiu      $a0, $zero, 0x90
/* 3E2CE2C 800888FC 8C000524 */  addiu      $a1, $zero, 0x8C
/* 3E2CE30 80088900 70010624 */  addiu      $a2, $zero, 0x170
/* 3E2CE34 80088904 DD7E000C */  jal        func_8001FB74
/* 3E2CE38 80088908 8C000724 */   addiu     $a3, $zero, 0x8C
/* 3E2CE3C 8008890C 0780103C */  lui        $s0, %hi(D_8006FBC8)
/* 3E2CE40 80088910 C8FB1026 */  addiu      $s0, $s0, %lo(D_8006FBC8)
/* 3E2CE44 80088914 0000028E */  lw         $v0, 0x0($s0)
/* 3E2CE48 80088918 00000000 */  nop
/* 3E2CE4C 8008891C 1F004018 */  blez       $v0, .Llevel_11_8008899C
/* 3E2CE50 80088920 C0000524 */   addiu     $a1, $zero, 0xC0
/* 3E2CE54 80088924 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2CE58 80088928 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2CE5C 8008892C 68000624 */  addiu      $a2, $zero, 0x68
/* 3E2CE60 80088930 80100200 */  sll        $v0, $v0, 2
/* 3E2CE64 80088934 0780013C */  lui        $at, %hi(D_8006C450)
/* 3E2CE68 80088938 21082200 */  addu       $at, $at, $v0
/* 3E2CE6C 8008893C 50C4248C */  lw         $a0, %lo(D_8006C450)($at)
/* 3E2CE70 80088940 B780000C */  jal        DrawStringCentered
/* 3E2CE74 80088944 02000724 */   addiu     $a3, $zero, 0x2
/* 3E2CE78 80088948 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2CE7C 8008894C 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2CE80 80088950 00000000 */  nop
/* 3E2CE84 80088954 80100200 */  sll        $v0, $v0, 2
/* 3E2CE88 80088958 0780013C */  lui        $at, %hi(D_8006C450)
/* 3E2CE8C 8008895C 21082200 */  addu       $at, $at, $v0
/* 3E2CE90 80088960 50C4248C */  lw         $a0, %lo(D_8006C450)($at)
/* 3E2CE94 80088964 ECBA000C */  jal        func_8002EBB0
/* 3E2CE98 80088968 00000000 */   nop
/* 3E2CE9C 8008896C 0780063C */  lui        $a2, %hi(D_8006FA70)
/* 3E2CEA0 80088970 70FAC68C */  lw         $a2, %lo(D_8006FA70)($a2)
/* 3E2CEA4 80088974 0780053C */  lui        $a1, %hi(D_level_11_80074A00)
/* 3E2CEA8 80088978 004AA524 */  addiu      $a1, $a1, %lo(D_level_11_80074A00)
/* 3E2CEAC 8008897C DF65010C */  jal        sprintf
/* 3E2CEB0 80088980 1000A427 */   addiu     $a0, $sp, 0x10
/* 3E2CEB4 80088984 1000A427 */  addiu      $a0, $sp, 0x10
/* 3E2CEB8 80088988 C0000524 */  addiu      $a1, $zero, 0xC0
/* 3E2CEBC 8008898C 79000624 */  addiu      $a2, $zero, 0x79
/* 3E2CEC0 80088990 B780000C */  jal        DrawStringCentered
/* 3E2CEC4 80088994 02000724 */   addiu     $a3, $zero, 0x2
/* 3E2CEC8 80088998 0000028E */  lw         $v0, 0x0($s0)
.Llevel_11_8008899C:
/* 3E2CECC 8008899C 00000000 */  nop
/* 3E2CED0 800889A0 02004228 */  slti       $v0, $v0, 0x2
/* 3E2CED4 800889A4 27004014 */  bnez       $v0, .Llevel_11_80088A44
/* 3E2CED8 800889A8 40010524 */   addiu     $a1, $zero, 0x140
/* 3E2CEDC 800889AC 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2CEE0 800889B0 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2CEE4 800889B4 68000624 */  addiu      $a2, $zero, 0x68
/* 3E2CEE8 800889B8 80100200 */  sll        $v0, $v0, 2
/* 3E2CEEC 800889BC 0780013C */  lui        $at, %hi(D_8006C454)
/* 3E2CEF0 800889C0 21082200 */  addu       $at, $at, $v0
/* 3E2CEF4 800889C4 54C4248C */  lw         $a0, %lo(D_8006C454)($at)
/* 3E2CEF8 800889C8 B780000C */  jal        DrawStringCentered
/* 3E2CEFC 800889CC 02000724 */   addiu     $a3, $zero, 0x2
/* 3E2CF00 800889D0 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2CF04 800889D4 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2CF08 800889D8 00000000 */  nop
/* 3E2CF0C 800889DC 80100200 */  sll        $v0, $v0, 2
/* 3E2CF10 800889E0 0780013C */  lui        $at, %hi(D_8006C454)
/* 3E2CF14 800889E4 21082200 */  addu       $at, $at, $v0
/* 3E2CF18 800889E8 54C4248C */  lw         $a0, %lo(D_8006C454)($at)
/* 3E2CF1C 800889EC ECBA000C */  jal        func_8002EBB0
/* 3E2CF20 800889F0 00000000 */   nop
/* 3E2CF24 800889F4 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 3E2CF28 800889F8 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 3E2CF2C 800889FC 0B000224 */  addiu      $v0, $zero, 0xB
/* 3E2CF30 80088A00 05006214 */  bne        $v1, $v0, .Llevel_11_80088A18
/* 3E2CF34 80088A04 2000A427 */   addiu     $a0, $sp, 0x20
/* 3E2CF38 80088A08 0780063C */  lui        $a2, %hi(D_800718CC)
/* 3E2CF3C 80088A0C CC18C68C */  lw         $a2, %lo(D_800718CC)($a2)
/* 3E2CF40 80088A10 88220208 */  j          .Llevel_11_80088A20
/* 3E2CF44 80088A14 00000000 */   nop
.Llevel_11_80088A18:
/* 3E2CF48 80088A18 0780063C */  lui        $a2, %hi(D_800718D0)
/* 3E2CF4C 80088A1C D018C68C */  lw         $a2, %lo(D_800718D0)($a2)
.Llevel_11_80088A20:
/* 3E2CF50 80088A20 0780053C */  lui        $a1, %hi(D_level_11_80074A00)
/* 3E2CF54 80088A24 004AA524 */  addiu      $a1, $a1, %lo(D_level_11_80074A00)
/* 3E2CF58 80088A28 DF65010C */  jal        sprintf
/* 3E2CF5C 80088A2C 00000000 */   nop
/* 3E2CF60 80088A30 2000A427 */  addiu      $a0, $sp, 0x20
/* 3E2CF64 80088A34 40010524 */  addiu      $a1, $zero, 0x140
/* 3E2CF68 80088A38 79000624 */  addiu      $a2, $zero, 0x79
/* 3E2CF6C 80088A3C B780000C */  jal        DrawStringCentered
/* 3E2CF70 80088A40 02000724 */   addiu     $a3, $zero, 0x2
.Llevel_11_80088A44:
/* 3E2CF74 80088A44 0780023C */  lui        $v0, %hi(D_8006FBC8)
/* 3E2CF78 80088A48 C8FB428C */  lw         $v0, %lo(D_8006FBC8)($v0)
/* 3E2CF7C 80088A4C 00000000 */  nop
/* 3E2CF80 80088A50 03004228 */  slti       $v0, $v0, 0x3
/* 3E2CF84 80088A54 23004014 */  bnez       $v0, .Llevel_11_80088AE4
/* 3E2CF88 80088A58 00000000 */   nop
/* 3E2CF8C 80088A5C 0780033C */  lui        $v1, %hi(D_8006FA70)
/* 3E2CF90 80088A60 70FA638C */  lw         $v1, %lo(D_8006FA70)($v1)
/* 3E2CF94 80088A64 0780023C */  lui        $v0, %hi(D_800718CC)
/* 3E2CF98 80088A68 CC18428C */  lw         $v0, %lo(D_800718CC)($v0)
/* 3E2CF9C 80088A6C 00000000 */  nop
/* 3E2CFA0 80088A70 2A104300 */  slt        $v0, $v0, $v1
/* 3E2CFA4 80088A74 11004010 */  beqz       $v0, .Llevel_11_80088ABC
/* 3E2CFA8 80088A78 02000724 */   addiu     $a3, $zero, 0x2
/* 3E2CFAC 80088A7C 0780043C */  lui        $a0, %hi(D_8006C458)
/* 3E2CFB0 80088A80 58C48424 */  addiu      $a0, $a0, %lo(D_8006C458)
/* 3E2CFB4 80088A84 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2CFB8 80088A88 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2CFBC 80088A8C 0780033C */  lui        $v1, %hi(D_8006FBC4)
/* 3E2CFC0 80088A90 C4FB638C */  lw         $v1, %lo(D_8006FBC4)($v1)
/* 3E2CFC4 80088A94 80100200 */  sll        $v0, $v0, 2
/* 3E2CFC8 80088A98 1F006330 */  andi       $v1, $v1, 0x1F
/* 3E2CFCC 80088A9C 16006328 */  slti       $v1, $v1, 0x16
/* 3E2CFD0 80088AA0 02006010 */  beqz       $v1, .Llevel_11_80088AAC
/* 3E2CFD4 80088AA4 21104400 */   addu      $v0, $v0, $a0
/* 3E2CFD8 80088AA8 03000724 */  addiu      $a3, $zero, 0x3
.Llevel_11_80088AAC:
/* 3E2CFDC 80088AAC 0000448C */  lw         $a0, 0x0($v0)
/* 3E2CFE0 80088AB0 00010524 */  addiu      $a1, $zero, 0x100
/* 3E2CFE4 80088AB4 B7220208 */  j          .Llevel_11_80088ADC
/* 3E2CFE8 80088AB8 50000624 */   addiu     $a2, $zero, 0x50
.Llevel_11_80088ABC:
/* 3E2CFEC 80088ABC 00010524 */  addiu      $a1, $zero, 0x100
/* 3E2CFF0 80088AC0 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2CFF4 80088AC4 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2CFF8 80088AC8 50000624 */  addiu      $a2, $zero, 0x50
/* 3E2CFFC 80088ACC 80100200 */  sll        $v0, $v0, 2
/* 3E2D000 80088AD0 0780013C */  lui        $at, %hi(D_8006C45C)
/* 3E2D004 80088AD4 21082200 */  addu       $at, $at, $v0
/* 3E2D008 80088AD8 5CC4248C */  lw         $a0, %lo(D_8006C45C)($at)
.Llevel_11_80088ADC:
/* 3E2D00C 80088ADC B780000C */  jal        DrawStringCentered
/* 3E2D010 80088AE0 00000000 */   nop
.Llevel_11_80088AE4:
/* 3E2D014 80088AE4 0780033C */  lui        $v1, %hi(D_8006FBC8)
/* 3E2D018 80088AE8 C8FB638C */  lw         $v1, %lo(D_8006FBC8)($v1)
/* 3E2D01C 80088AEC 05000224 */  addiu      $v0, $zero, 0x5
/* 3E2D020 80088AF0 11006214 */  bne        $v1, $v0, .Llevel_11_80088B38
/* 3E2D024 80088AF4 02000724 */   addiu     $a3, $zero, 0x2
/* 3E2D028 80088AF8 0780043C */  lui        $a0, %hi(D_8006C43C)
/* 3E2D02C 80088AFC 3CC48424 */  addiu      $a0, $a0, %lo(D_8006C43C)
/* 3E2D030 80088B00 0780023C */  lui        $v0, %hi(D_8006C76C)
/* 3E2D034 80088B04 6CC7428C */  lw         $v0, %lo(D_8006C76C)($v0)
/* 3E2D038 80088B08 0780033C */  lui        $v1, %hi(D_8006FBC4)
/* 3E2D03C 80088B0C C4FB638C */  lw         $v1, %lo(D_8006FBC4)($v1)
/* 3E2D040 80088B10 80100200 */  sll        $v0, $v0, 2
/* 3E2D044 80088B14 1F006330 */  andi       $v1, $v1, 0x1F
/* 3E2D048 80088B18 16006328 */  slti       $v1, $v1, 0x16
/* 3E2D04C 80088B1C 02006010 */  beqz       $v1, .Llevel_11_80088B28
/* 3E2D050 80088B20 21104400 */   addu      $v0, $v0, $a0
/* 3E2D054 80088B24 03000724 */  addiu      $a3, $zero, 0x3
.Llevel_11_80088B28:
/* 3E2D058 80088B28 0000448C */  lw         $a0, 0x0($v0)
/* 3E2D05C 80088B2C 00010524 */  addiu      $a1, $zero, 0x100
/* 3E2D060 80088B30 B780000C */  jal        DrawStringCentered
/* 3E2D064 80088B34 9A000624 */   addiu     $a2, $zero, 0x9A
.Llevel_11_80088B38:
/* 3E2D068 80088B38 4400BF8F */  lw         $ra, 0x44($sp)
/* 3E2D06C 80088B3C 4000B08F */  lw         $s0, 0x40($sp)
/* 3E2D070 80088B40 4800BD27 */  addiu      $sp, $sp, 0x48
/* 3E2D074 80088B44 0800E003 */  jr         $ra
/* 3E2D078 80088B48 00000000 */   nop
.size func_level_11_800888C4, . - func_level_11_800888C4
