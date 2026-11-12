.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_27
/* 63EB034 80076B04 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 63EB038 80076B08 2800B0AF */  sw         $s0, 0x28($sp)
/* 63EB03C 80076B0C 21808000 */  addu       $s0, $a0, $zero
/* 63EB040 80076B10 3400BFAF */  sw         $ra, 0x34($sp)
/* 63EB044 80076B14 3000B2AF */  sw         $s2, 0x30($sp)
/* 63EB048 80076B18 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 63EB04C 80076B1C 49000292 */  lbu        $v0, 0x49($s0)
/* 63EB050 80076B20 0000128E */  lw         $s2, 0x0($s0)
/* 63EB054 80076B24 60004014 */  bnez       $v0, .Llevel_27_80076CA8
/* 63EB058 80076B28 00000000 */   nop
/* 63EB05C 80076B2C 0400428E */  lw         $v0, 0x4($s2)
/* 63EB060 80076B30 00000000 */  nop
/* 63EB064 80076B34 53004018 */  blez       $v0, .Llevel_27_80076C84
/* 63EB068 80076B38 47000524 */   addiu     $a1, $zero, 0x47
/* 63EB06C 80076B3C 46000292 */  lbu        $v0, 0x46($s0)
/* 63EB070 80076B40 00000000 */  nop
/* 63EB074 80076B44 01004224 */  addiu      $v0, $v0, 0x1
/* 63EB078 80076B48 460002A2 */  sb         $v0, 0x46($s0)
/* 63EB07C 80076B4C 1400428E */  lw         $v0, 0x14($s2)
/* 63EB080 80076B50 00000000 */  nop
/* 63EB084 80076B54 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 63EB088 80076B58 140042AE */  sw         $v0, 0x14($s2)
/* 63EB08C 80076B5C 80FF4228 */  slti       $v0, $v0, -0x80
/* 63EB090 80076B60 02004010 */  beqz       $v0, .Llevel_27_80076B6C
/* 63EB094 80076B64 80FF0224 */   addiu     $v0, $zero, -0x80
/* 63EB098 80076B68 140042AE */  sw         $v0, 0x14($s2)
.Llevel_27_80076B6C:
/* 63EB09C 80076B6C 0C00028E */  lw         $v0, 0xC($s0)
/* 63EB0A0 80076B70 0C00438E */  lw         $v1, 0xC($s2)
/* 63EB0A4 80076B74 00000000 */  nop
/* 63EB0A8 80076B78 21104300 */  addu       $v0, $v0, $v1
/* 63EB0AC 80076B7C 0C0002AE */  sw         $v0, 0xC($s0)
/* 63EB0B0 80076B80 1000028E */  lw         $v0, 0x10($s0)
/* 63EB0B4 80076B84 1000438E */  lw         $v1, 0x10($s2)
/* 63EB0B8 80076B88 00000000 */  nop
/* 63EB0BC 80076B8C 21104300 */  addu       $v0, $v0, $v1
/* 63EB0C0 80076B90 100002AE */  sw         $v0, 0x10($s0)
/* 63EB0C4 80076B94 1400028E */  lw         $v0, 0x14($s0)
/* 63EB0C8 80076B98 1400438E */  lw         $v1, 0x14($s2)
/* 63EB0CC 80076B9C 00000000 */  nop
/* 63EB0D0 80076BA0 21104300 */  addu       $v0, $v0, $v1
/* 63EB0D4 80076BA4 140002AE */  sw         $v0, 0x14($s0)
/* 63EB0D8 80076BA8 00044228 */  slti       $v0, $v0, 0x400
/* 63EB0DC 80076BAC 44004014 */  bnez       $v0, .Llevel_27_80076CC0
/* 63EB0E0 80076BB0 0C001126 */   addiu     $s1, $s0, 0xC
/* 63EB0E4 80076BB4 21202002 */  addu       $a0, $s1, $zero
/* 63EB0E8 80076BB8 D668000C */  jal        func_8001A358
/* 63EB0EC 80076BBC 00200524 */   addiu     $a1, $zero, 0x2000
/* 63EB0F0 80076BC0 A758010C */  jal        func_8005629C
/* 63EB0F4 80076BC4 21200002 */   addu      $a0, $s0, $zero
/* 63EB0F8 80076BC8 21202002 */  addu       $a0, $s1, $zero
/* 63EB0FC 80076BCC 6564000C */  jal        func_80019194
/* 63EB100 80076BD0 00010524 */   addiu     $a1, $zero, 0x100
/* 63EB104 80076BD4 26004010 */  beqz       $v0, .Llevel_27_80076C70
/* 63EB108 80076BD8 21202002 */   addu      $a0, $s1, $zero
/* 63EB10C 80076BDC 0780103C */  lui        $s0, %hi(D_8007190C)
/* 63EB110 80076BE0 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 63EB114 80076BE4 5E3C010C */  jal        func_8004F178
/* 63EB118 80076BE8 21280002 */   addu      $a1, $s0, $zero
/* 63EB11C 80076BEC 0C001126 */  addiu      $s1, $s0, 0xC
/* 63EB120 80076BF0 21202002 */  addu       $a0, $s1, $zero
/* 63EB124 80076BF4 C13B010C */  jal        func_8004EF04
/* 63EB128 80076BF8 00100524 */   addiu     $a1, $zero, 0x1000
/* 63EB12C 80076BFC 0C00438E */  lw         $v1, 0xC($s2)
/* 63EB130 80076C00 0C00028E */  lw         $v0, 0xC($s0)
/* 63EB134 80076C04 00000000 */  nop
/* 63EB138 80076C08 18006200 */  mult       $v1, $v0
/* 63EB13C 80076C0C 1000438E */  lw         $v1, 0x10($s2)
/* 63EB140 80076C10 12280000 */  mflo       $a1
/* 63EB144 80076C14 0780023C */  lui        $v0, %hi(D_8007191C)
/* 63EB148 80076C18 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 63EB14C 80076C1C 00000000 */  nop
/* 63EB150 80076C20 18006200 */  mult       $v1, $v0
/* 63EB154 80076C24 1400438E */  lw         $v1, 0x14($s2)
/* 63EB158 80076C28 12200000 */  mflo       $a0
/* 63EB15C 80076C2C 0780023C */  lui        $v0, %hi(D_80071920)
/* 63EB160 80076C30 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 63EB164 80076C34 00000000 */  nop
/* 63EB168 80076C38 18006200 */  mult       $v1, $v0
/* 63EB16C 80076C3C 2110A400 */  addu       $v0, $a1, $a0
/* 63EB170 80076C40 12180000 */  mflo       $v1
/* 63EB174 80076C44 21104300 */  addu       $v0, $v0, $v1
/* 63EB178 80076C48 C3120200 */  sra        $v0, $v0, 11
/* 63EB17C 80076C4C 08004104 */  bgez       $v0, .Llevel_27_80076C70
/* 63EB180 80076C50 21202002 */   addu      $a0, $s1, $zero
/* 63EB184 80076C54 00100524 */  addiu      $a1, $zero, 0x1000
/* 63EB188 80076C58 233C010C */  jal        func_8004F08C
/* 63EB18C 80076C5C 23300200 */   negu      $a2, $v0
/* 63EB190 80076C60 0C004426 */  addiu      $a0, $s2, 0xC
/* 63EB194 80076C64 21288000 */  addu       $a1, $a0, $zero
/* 63EB198 80076C68 653C010C */  jal        func_8004F194
/* 63EB19C 80076C6C 21302002 */   addu      $a2, $s1, $zero
.Llevel_27_80076C70:
/* 63EB1A0 80076C70 0400428E */  lw         $v0, 0x4($s2)
/* 63EB1A4 80076C74 00000000 */  nop
/* 63EB1A8 80076C78 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 63EB1AC 80076C7C 7BDB0108 */  j          .Llevel_27_80076DEC
/* 63EB1B0 80076C80 040042AE */   sw        $v0, 0x4($s2)
.Llevel_27_80076C84:
/* 63EB1B4 80076C84 0A000424 */  addiu      $a0, $zero, 0xA
/* 63EB1B8 80076C88 0C000626 */  addiu      $a2, $s0, 0xC
/* 63EB1BC 80076C8C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 63EB1C0 80076C90 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 63EB1C4 80076C94 00000000 */  nop
/* 63EB1C8 80076C98 09F84000 */  jalr       $v0
/* 63EB1CC 80076C9C 21380000 */   addu      $a3, $zero, $zero
/* 63EB1D0 80076CA0 30DB0108 */  j          .Llevel_27_80076CC0
/* 63EB1D4 80076CA4 00000000 */   nop
.Llevel_27_80076CA8:
/* 63EB1D8 80076CA8 0000428E */  lw         $v0, 0x0($s2)
/* 63EB1DC 80076CAC 00000000 */  nop
/* 63EB1E0 80076CB0 48004290 */  lbu        $v0, 0x48($v0)
/* 63EB1E4 80076CB4 00000000 */  nop
/* 63EB1E8 80076CB8 05004010 */  beqz       $v0, .Llevel_27_80076CD0
/* 63EB1EC 80076CBC 21300000 */   addu      $a2, $zero, $zero
.Llevel_27_80076CC0:
/* 63EB1F0 80076CC0 C656010C */  jal        func_80055B18
/* 63EB1F4 80076CC4 21200002 */   addu      $a0, $s0, $zero
/* 63EB1F8 80076CC8 7BDB0108 */  j          .Llevel_27_80076DEC
/* 63EB1FC 80076CCC 00000000 */   nop
.Llevel_27_80076CD0:
/* 63EB200 80076CD0 0780033C */  lui        $v1, %hi(D_8006E020)
/* 63EB204 80076CD4 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 63EB208 80076CD8 0C00048E */  lw         $a0, 0xC($s0)
/* 63EB20C 80076CDC 0780023C */  lui        $v0, %hi(D_8006E024)
/* 63EB210 80076CE0 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 63EB214 80076CE4 1000058E */  lw         $a1, 0x10($s0)
/* 63EB218 80076CE8 23206400 */  subu       $a0, $v1, $a0
/* 63EB21C 80076CEC 203A010C */  jal        func_8004E880
/* 63EB220 80076CF0 23284500 */   subu      $a1, $v0, $a1
/* 63EB224 80076CF4 21204000 */  addu       $a0, $v0, $zero
/* 63EB228 80076CF8 80004224 */  addiu      $v0, $v0, 0x80
/* 63EB22C 80076CFC 0780033C */  lui        $v1, %hi(D_8006C644)
/* 63EB230 80076D00 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 63EB234 80076D04 0680063C */  lui        $a2, %hi(D_800658A0)
/* 63EB238 80076D08 A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 63EB23C 80076D0C C0180300 */  sll        $v1, $v1, 3
/* 63EB240 80076D10 F8016330 */  andi       $v1, $v1, 0x1F8
/* 63EB244 80076D14 0680013C */  lui        $at, %hi(D_800658A0)
/* 63EB248 80076D18 21082300 */  addu       $at, $at, $v1
/* 63EB24C 80076D1C A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 63EB250 80076D20 21284000 */  addu       $a1, $v0, $zero
/* 63EB254 80076D24 001C0300 */  sll        $v1, $v1, 16
/* 63EB258 80076D28 C31D0300 */  sra        $v1, $v1, 23
/* 63EB25C 80076D2C 21186200 */  addu       $v1, $v1, $v0
/* 63EB260 80076D30 460003A2 */  sb         $v1, 0x46($s0)
/* 63EB264 80076D34 49000392 */  lbu        $v1, 0x49($s0)
/* 63EB268 80076D38 02000224 */  addiu      $v0, $zero, 0x2
/* 63EB26C 80076D3C 02006214 */  bne        $v1, $v0, .Llevel_27_80076D48
/* 63EB270 80076D40 00000000 */   nop
/* 63EB274 80076D44 2120A000 */  addu       $a0, $a1, $zero
.Llevel_27_80076D48:
/* 63EB278 80076D48 1000A0AF */  sw         $zero, 0x10($sp)
/* 63EB27C 80076D4C 1400A0AF */  sw         $zero, 0x14($sp)
/* 63EB280 80076D50 49000392 */  lbu        $v1, 0x49($s0)
/* 63EB284 80076D54 03000224 */  addiu      $v0, $zero, 0x3
/* 63EB288 80076D58 1D006210 */  beq        $v1, $v0, .Llevel_27_80076DD0
/* 63EB28C 80076D5C FF008430 */   andi      $a0, $a0, 0xFF
/* 63EB290 80076D60 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 63EB294 80076D64 40200400 */  sll        $a0, $a0, 1
/* 63EB298 80076D68 21108600 */  addu       $v0, $a0, $a2
/* 63EB29C 80076D6C 00004394 */  lhu        $v1, 0x0($v0)
/* 63EB2A0 80076D70 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 63EB2A4 80076D74 001C0300 */  sll        $v1, $v1, 16
/* 63EB2A8 80076D78 03140300 */  sra        $v0, $v1, 16
/* 63EB2AC 80076D7C 18004500 */  mult       $v0, $a1
/* 63EB2B0 80076D80 C31F0300 */  sra        $v1, $v1, 31
/* 63EB2B4 80076D84 10400000 */  mfhi       $t0
/* 63EB2B8 80076D88 21100201 */  addu       $v0, $t0, $v0
/* 63EB2BC 80076D8C 03110200 */  sra        $v0, $v0, 4
/* 63EB2C0 80076D90 23104300 */  subu       $v0, $v0, $v1
/* 63EB2C4 80076D94 00140200 */  sll        $v0, $v0, 16
/* 63EB2C8 80076D98 03140200 */  sra        $v0, $v0, 16
/* 63EB2CC 80076D9C 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EB2D0 80076DA0 0680013C */  lui        $at, %hi(D_80065920)
/* 63EB2D4 80076DA4 21082400 */  addu       $at, $at, $a0
/* 63EB2D8 80076DA8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 63EB2DC 80076DAC 00000000 */  nop
/* 63EB2E0 80076DB0 23100200 */  negu       $v0, $v0
/* 63EB2E4 80076DB4 18004500 */  mult       $v0, $a1
/* 63EB2E8 80076DB8 10400000 */  mfhi       $t0
/* 63EB2EC 80076DBC 21180201 */  addu       $v1, $t0, $v0
/* 63EB2F0 80076DC0 03190300 */  sra        $v1, $v1, 4
/* 63EB2F4 80076DC4 C3170200 */  sra        $v0, $v0, 31
/* 63EB2F8 80076DC8 23186200 */  subu       $v1, $v1, $v0
/* 63EB2FC 80076DCC 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_27_80076DD0:
/* 63EB300 80076DD0 0C000426 */  addiu      $a0, $s0, 0xC
/* 63EB304 80076DD4 20050224 */  addiu      $v0, $zero, 0x520
/* 63EB308 80076DD8 1800A2AF */  sw         $v0, 0x18($sp)
/* 63EB30C 80076DDC 0000458E */  lw         $a1, 0x0($s2)
/* 63EB310 80076DE0 1000A627 */  addiu      $a2, $sp, 0x10
/* 63EB314 80076DE4 653C010C */  jal        func_8004F194
/* 63EB318 80076DE8 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_27_80076DEC:
/* 63EB31C 80076DEC 3400BF8F */  lw         $ra, 0x34($sp)
/* 63EB320 80076DF0 3000B28F */  lw         $s2, 0x30($sp)
/* 63EB324 80076DF4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 63EB328 80076DF8 2800B08F */  lw         $s0, 0x28($sp)
/* 63EB32C 80076DFC 3800BD27 */  addiu      $sp, $sp, 0x38
/* 63EB330 80076E00 0800E003 */  jr         $ra
/* 63EB334 80076E04 00000000 */   nop
.size MobyUpdate_260_level_27, . - MobyUpdate_260_level_27
