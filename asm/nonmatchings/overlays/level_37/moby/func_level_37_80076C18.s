.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_37
/* 7AA2948 80076C18 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 7AA294C 80076C1C 2800B0AF */  sw         $s0, 0x28($sp)
/* 7AA2950 80076C20 21808000 */  addu       $s0, $a0, $zero
/* 7AA2954 80076C24 3400BFAF */  sw         $ra, 0x34($sp)
/* 7AA2958 80076C28 3000B2AF */  sw         $s2, 0x30($sp)
/* 7AA295C 80076C2C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 7AA2960 80076C30 49000292 */  lbu        $v0, 0x49($s0)
/* 7AA2964 80076C34 0000128E */  lw         $s2, 0x0($s0)
/* 7AA2968 80076C38 60004014 */  bnez       $v0, .Llevel_37_80076DBC
/* 7AA296C 80076C3C 00000000 */   nop
/* 7AA2970 80076C40 0400428E */  lw         $v0, 0x4($s2)
/* 7AA2974 80076C44 00000000 */  nop
/* 7AA2978 80076C48 53004018 */  blez       $v0, .Llevel_37_80076D98
/* 7AA297C 80076C4C 47000524 */   addiu     $a1, $zero, 0x47
/* 7AA2980 80076C50 46000292 */  lbu        $v0, 0x46($s0)
/* 7AA2984 80076C54 00000000 */  nop
/* 7AA2988 80076C58 01004224 */  addiu      $v0, $v0, 0x1
/* 7AA298C 80076C5C 460002A2 */  sb         $v0, 0x46($s0)
/* 7AA2990 80076C60 1400428E */  lw         $v0, 0x14($s2)
/* 7AA2994 80076C64 00000000 */  nop
/* 7AA2998 80076C68 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 7AA299C 80076C6C 140042AE */  sw         $v0, 0x14($s2)
/* 7AA29A0 80076C70 80FF4228 */  slti       $v0, $v0, -0x80
/* 7AA29A4 80076C74 02004010 */  beqz       $v0, .Llevel_37_80076C80
/* 7AA29A8 80076C78 80FF0224 */   addiu     $v0, $zero, -0x80
/* 7AA29AC 80076C7C 140042AE */  sw         $v0, 0x14($s2)
.Llevel_37_80076C80:
/* 7AA29B0 80076C80 0C00028E */  lw         $v0, 0xC($s0)
/* 7AA29B4 80076C84 0C00438E */  lw         $v1, 0xC($s2)
/* 7AA29B8 80076C88 00000000 */  nop
/* 7AA29BC 80076C8C 21104300 */  addu       $v0, $v0, $v1
/* 7AA29C0 80076C90 0C0002AE */  sw         $v0, 0xC($s0)
/* 7AA29C4 80076C94 1000028E */  lw         $v0, 0x10($s0)
/* 7AA29C8 80076C98 1000438E */  lw         $v1, 0x10($s2)
/* 7AA29CC 80076C9C 00000000 */  nop
/* 7AA29D0 80076CA0 21104300 */  addu       $v0, $v0, $v1
/* 7AA29D4 80076CA4 100002AE */  sw         $v0, 0x10($s0)
/* 7AA29D8 80076CA8 1400028E */  lw         $v0, 0x14($s0)
/* 7AA29DC 80076CAC 1400438E */  lw         $v1, 0x14($s2)
/* 7AA29E0 80076CB0 00000000 */  nop
/* 7AA29E4 80076CB4 21104300 */  addu       $v0, $v0, $v1
/* 7AA29E8 80076CB8 140002AE */  sw         $v0, 0x14($s0)
/* 7AA29EC 80076CBC 00044228 */  slti       $v0, $v0, 0x400
/* 7AA29F0 80076CC0 44004014 */  bnez       $v0, .Llevel_37_80076DD4
/* 7AA29F4 80076CC4 0C001126 */   addiu     $s1, $s0, 0xC
/* 7AA29F8 80076CC8 21202002 */  addu       $a0, $s1, $zero
/* 7AA29FC 80076CCC D668000C */  jal        func_8001A358
/* 7AA2A00 80076CD0 00200524 */   addiu     $a1, $zero, 0x2000
/* 7AA2A04 80076CD4 A758010C */  jal        func_8005629C
/* 7AA2A08 80076CD8 21200002 */   addu      $a0, $s0, $zero
/* 7AA2A0C 80076CDC 21202002 */  addu       $a0, $s1, $zero
/* 7AA2A10 80076CE0 6564000C */  jal        func_80019194
/* 7AA2A14 80076CE4 00010524 */   addiu     $a1, $zero, 0x100
/* 7AA2A18 80076CE8 26004010 */  beqz       $v0, .Llevel_37_80076D84
/* 7AA2A1C 80076CEC 21202002 */   addu      $a0, $s1, $zero
/* 7AA2A20 80076CF0 0780103C */  lui        $s0, %hi(D_8007190C)
/* 7AA2A24 80076CF4 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 7AA2A28 80076CF8 5E3C010C */  jal        func_8004F178
/* 7AA2A2C 80076CFC 21280002 */   addu      $a1, $s0, $zero
/* 7AA2A30 80076D00 0C001126 */  addiu      $s1, $s0, 0xC
/* 7AA2A34 80076D04 21202002 */  addu       $a0, $s1, $zero
/* 7AA2A38 80076D08 C13B010C */  jal        func_8004EF04
/* 7AA2A3C 80076D0C 00100524 */   addiu     $a1, $zero, 0x1000
/* 7AA2A40 80076D10 0C00438E */  lw         $v1, 0xC($s2)
/* 7AA2A44 80076D14 0C00028E */  lw         $v0, 0xC($s0)
/* 7AA2A48 80076D18 00000000 */  nop
/* 7AA2A4C 80076D1C 18006200 */  mult       $v1, $v0
/* 7AA2A50 80076D20 1000438E */  lw         $v1, 0x10($s2)
/* 7AA2A54 80076D24 12280000 */  mflo       $a1
/* 7AA2A58 80076D28 0780023C */  lui        $v0, %hi(D_8007191C)
/* 7AA2A5C 80076D2C 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 7AA2A60 80076D30 00000000 */  nop
/* 7AA2A64 80076D34 18006200 */  mult       $v1, $v0
/* 7AA2A68 80076D38 1400438E */  lw         $v1, 0x14($s2)
/* 7AA2A6C 80076D3C 12200000 */  mflo       $a0
/* 7AA2A70 80076D40 0780023C */  lui        $v0, %hi(D_80071920)
/* 7AA2A74 80076D44 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 7AA2A78 80076D48 00000000 */  nop
/* 7AA2A7C 80076D4C 18006200 */  mult       $v1, $v0
/* 7AA2A80 80076D50 2110A400 */  addu       $v0, $a1, $a0
/* 7AA2A84 80076D54 12180000 */  mflo       $v1
/* 7AA2A88 80076D58 21104300 */  addu       $v0, $v0, $v1
/* 7AA2A8C 80076D5C C3120200 */  sra        $v0, $v0, 11
/* 7AA2A90 80076D60 08004104 */  bgez       $v0, .Llevel_37_80076D84
/* 7AA2A94 80076D64 21202002 */   addu      $a0, $s1, $zero
/* 7AA2A98 80076D68 00100524 */  addiu      $a1, $zero, 0x1000
/* 7AA2A9C 80076D6C 233C010C */  jal        func_8004F08C
/* 7AA2AA0 80076D70 23300200 */   negu      $a2, $v0
/* 7AA2AA4 80076D74 0C004426 */  addiu      $a0, $s2, 0xC
/* 7AA2AA8 80076D78 21288000 */  addu       $a1, $a0, $zero
/* 7AA2AAC 80076D7C 653C010C */  jal        func_8004F194
/* 7AA2AB0 80076D80 21302002 */   addu      $a2, $s1, $zero
.Llevel_37_80076D84:
/* 7AA2AB4 80076D84 0400428E */  lw         $v0, 0x4($s2)
/* 7AA2AB8 80076D88 00000000 */  nop
/* 7AA2ABC 80076D8C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 7AA2AC0 80076D90 C0DB0108 */  j          .Llevel_37_80076F00
/* 7AA2AC4 80076D94 040042AE */   sw        $v0, 0x4($s2)
.Llevel_37_80076D98:
/* 7AA2AC8 80076D98 0A000424 */  addiu      $a0, $zero, 0xA
/* 7AA2ACC 80076D9C 0C000626 */  addiu      $a2, $s0, 0xC
/* 7AA2AD0 80076DA0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 7AA2AD4 80076DA4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 7AA2AD8 80076DA8 00000000 */  nop
/* 7AA2ADC 80076DAC 09F84000 */  jalr       $v0
/* 7AA2AE0 80076DB0 21380000 */   addu      $a3, $zero, $zero
/* 7AA2AE4 80076DB4 75DB0108 */  j          .Llevel_37_80076DD4
/* 7AA2AE8 80076DB8 00000000 */   nop
.Llevel_37_80076DBC:
/* 7AA2AEC 80076DBC 0000428E */  lw         $v0, 0x0($s2)
/* 7AA2AF0 80076DC0 00000000 */  nop
/* 7AA2AF4 80076DC4 48004290 */  lbu        $v0, 0x48($v0)
/* 7AA2AF8 80076DC8 00000000 */  nop
/* 7AA2AFC 80076DCC 05004010 */  beqz       $v0, .Llevel_37_80076DE4
/* 7AA2B00 80076DD0 21300000 */   addu      $a2, $zero, $zero
.Llevel_37_80076DD4:
/* 7AA2B04 80076DD4 C656010C */  jal        func_80055B18
/* 7AA2B08 80076DD8 21200002 */   addu      $a0, $s0, $zero
/* 7AA2B0C 80076DDC C0DB0108 */  j          .Llevel_37_80076F00
/* 7AA2B10 80076DE0 00000000 */   nop
.Llevel_37_80076DE4:
/* 7AA2B14 80076DE4 0780033C */  lui        $v1, %hi(D_8006E020)
/* 7AA2B18 80076DE8 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 7AA2B1C 80076DEC 0C00048E */  lw         $a0, 0xC($s0)
/* 7AA2B20 80076DF0 0780023C */  lui        $v0, %hi(D_8006E024)
/* 7AA2B24 80076DF4 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 7AA2B28 80076DF8 1000058E */  lw         $a1, 0x10($s0)
/* 7AA2B2C 80076DFC 23206400 */  subu       $a0, $v1, $a0
/* 7AA2B30 80076E00 203A010C */  jal        func_8004E880
/* 7AA2B34 80076E04 23284500 */   subu      $a1, $v0, $a1
/* 7AA2B38 80076E08 21204000 */  addu       $a0, $v0, $zero
/* 7AA2B3C 80076E0C 80004224 */  addiu      $v0, $v0, 0x80
/* 7AA2B40 80076E10 0780033C */  lui        $v1, %hi(D_8006C644)
/* 7AA2B44 80076E14 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 7AA2B48 80076E18 0680063C */  lui        $a2, %hi(D_800658A0)
/* 7AA2B4C 80076E1C A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 7AA2B50 80076E20 C0180300 */  sll        $v1, $v1, 3
/* 7AA2B54 80076E24 F8016330 */  andi       $v1, $v1, 0x1F8
/* 7AA2B58 80076E28 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AA2B5C 80076E2C 21082300 */  addu       $at, $at, $v1
/* 7AA2B60 80076E30 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 7AA2B64 80076E34 21284000 */  addu       $a1, $v0, $zero
/* 7AA2B68 80076E38 001C0300 */  sll        $v1, $v1, 16
/* 7AA2B6C 80076E3C C31D0300 */  sra        $v1, $v1, 23
/* 7AA2B70 80076E40 21186200 */  addu       $v1, $v1, $v0
/* 7AA2B74 80076E44 460003A2 */  sb         $v1, 0x46($s0)
/* 7AA2B78 80076E48 49000392 */  lbu        $v1, 0x49($s0)
/* 7AA2B7C 80076E4C 02000224 */  addiu      $v0, $zero, 0x2
/* 7AA2B80 80076E50 02006214 */  bne        $v1, $v0, .Llevel_37_80076E5C
/* 7AA2B84 80076E54 00000000 */   nop
/* 7AA2B88 80076E58 2120A000 */  addu       $a0, $a1, $zero
.Llevel_37_80076E5C:
/* 7AA2B8C 80076E5C 1000A0AF */  sw         $zero, 0x10($sp)
/* 7AA2B90 80076E60 1400A0AF */  sw         $zero, 0x14($sp)
/* 7AA2B94 80076E64 49000392 */  lbu        $v1, 0x49($s0)
/* 7AA2B98 80076E68 03000224 */  addiu      $v0, $zero, 0x3
/* 7AA2B9C 80076E6C 1D006210 */  beq        $v1, $v0, .Llevel_37_80076EE4
/* 7AA2BA0 80076E70 FF008430 */   andi      $a0, $a0, 0xFF
/* 7AA2BA4 80076E74 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 7AA2BA8 80076E78 40200400 */  sll        $a0, $a0, 1
/* 7AA2BAC 80076E7C 21108600 */  addu       $v0, $a0, $a2
/* 7AA2BB0 80076E80 00004394 */  lhu        $v1, 0x0($v0)
/* 7AA2BB4 80076E84 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 7AA2BB8 80076E88 001C0300 */  sll        $v1, $v1, 16
/* 7AA2BBC 80076E8C 03140300 */  sra        $v0, $v1, 16
/* 7AA2BC0 80076E90 18004500 */  mult       $v0, $a1
/* 7AA2BC4 80076E94 C31F0300 */  sra        $v1, $v1, 31
/* 7AA2BC8 80076E98 10400000 */  mfhi       $t0
/* 7AA2BCC 80076E9C 21100201 */  addu       $v0, $t0, $v0
/* 7AA2BD0 80076EA0 03110200 */  sra        $v0, $v0, 4
/* 7AA2BD4 80076EA4 23104300 */  subu       $v0, $v0, $v1
/* 7AA2BD8 80076EA8 00140200 */  sll        $v0, $v0, 16
/* 7AA2BDC 80076EAC 03140200 */  sra        $v0, $v0, 16
/* 7AA2BE0 80076EB0 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AA2BE4 80076EB4 0680013C */  lui        $at, %hi(D_80065920)
/* 7AA2BE8 80076EB8 21082400 */  addu       $at, $at, $a0
/* 7AA2BEC 80076EBC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 7AA2BF0 80076EC0 00000000 */  nop
/* 7AA2BF4 80076EC4 23100200 */  negu       $v0, $v0
/* 7AA2BF8 80076EC8 18004500 */  mult       $v0, $a1
/* 7AA2BFC 80076ECC 10400000 */  mfhi       $t0
/* 7AA2C00 80076ED0 21180201 */  addu       $v1, $t0, $v0
/* 7AA2C04 80076ED4 03190300 */  sra        $v1, $v1, 4
/* 7AA2C08 80076ED8 C3170200 */  sra        $v0, $v0, 31
/* 7AA2C0C 80076EDC 23186200 */  subu       $v1, $v1, $v0
/* 7AA2C10 80076EE0 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_37_80076EE4:
/* 7AA2C14 80076EE4 0C000426 */  addiu      $a0, $s0, 0xC
/* 7AA2C18 80076EE8 20050224 */  addiu      $v0, $zero, 0x520
/* 7AA2C1C 80076EEC 1800A2AF */  sw         $v0, 0x18($sp)
/* 7AA2C20 80076EF0 0000458E */  lw         $a1, 0x0($s2)
/* 7AA2C24 80076EF4 1000A627 */  addiu      $a2, $sp, 0x10
/* 7AA2C28 80076EF8 653C010C */  jal        func_8004F194
/* 7AA2C2C 80076EFC 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_37_80076F00:
/* 7AA2C30 80076F00 3400BF8F */  lw         $ra, 0x34($sp)
/* 7AA2C34 80076F04 3000B28F */  lw         $s2, 0x30($sp)
/* 7AA2C38 80076F08 2C00B18F */  lw         $s1, 0x2C($sp)
/* 7AA2C3C 80076F0C 2800B08F */  lw         $s0, 0x28($sp)
/* 7AA2C40 80076F10 3800BD27 */  addiu      $sp, $sp, 0x38
/* 7AA2C44 80076F14 0800E003 */  jr         $ra
/* 7AA2C48 80076F18 00000000 */   nop
.size MobyUpdate_260_level_37, . - MobyUpdate_260_level_37
