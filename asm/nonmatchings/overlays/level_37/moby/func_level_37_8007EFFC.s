.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_37_8007EFFC
/* 7AAAD2C 8007EFFC 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 7AAAD30 8007F000 8400B3AF */  sw         $s3, 0x84($sp)
/* 7AAAD34 8007F004 21988000 */  addu       $s3, $a0, $zero
/* 7AAAD38 8007F008 9400BFAF */  sw         $ra, 0x94($sp)
/* 7AAAD3C 8007F00C 9000B6AF */  sw         $s6, 0x90($sp)
/* 7AAAD40 8007F010 8C00B5AF */  sw         $s5, 0x8C($sp)
/* 7AAAD44 8007F014 8800B4AF */  sw         $s4, 0x88($sp)
/* 7AAAD48 8007F018 8000B2AF */  sw         $s2, 0x80($sp)
/* 7AAAD4C 8007F01C 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 7AAAD50 8007F020 7800B0AF */  sw         $s0, 0x78($sp)
/* 7AAAD54 8007F024 0000728E */  lw         $s2, 0x0($s3)
/* 7AAAD58 8007F028 00000000 */  nop
/* 7AAAD5C 8007F02C 3800438E */  lw         $v1, 0x38($s2)
/* 7AAAD60 8007F030 0780143C */  lui        $s4, %hi(D_8006C40A)
/* 7AAAD64 8007F034 0AC49492 */  lbu        $s4, %lo(D_8006C40A)($s4)
/* 7AAAD68 8007F038 40100300 */  sll        $v0, $v1, 1
/* 7AAAD6C 8007F03C 21104300 */  addu       $v0, $v0, $v1
/* 7AAAD70 8007F040 80100200 */  sll        $v0, $v0, 2
/* 7AAAD74 8007F044 23104300 */  subu       $v0, $v0, $v1
/* 7AAAD78 8007F048 0780033C */  lui        $v1, %hi(D_8006C550)
/* 7AAAD7C 8007F04C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 7AAAD80 8007F050 C0100200 */  sll        $v0, $v0, 3
/* 7AAAD84 8007F054 21806200 */  addu       $s0, $v1, $v0
/* 7AAAD88 8007F058 02000224 */  addiu      $v0, $zero, 0x2
/* 7AAAD8C 8007F05C 0780033C */  lui        $v1, %hi(D_8006C7C4)
/* 7AAAD90 8007F060 C4C7638C */  lw         $v1, %lo(D_8006C7C4)($v1)
/* 7AAAD94 8007F064 0000168E */  lw         $s6, 0x0($s0)
/* 7AAAD98 8007F068 06006214 */  bne        $v1, $v0, .Llevel_37_8007F084
/* 7AAAD9C 8007F06C 00000000 */   nop
/* 7AAADA0 8007F070 FCFF9426 */  addiu      $s4, $s4, -0x4
/* 7AAADA4 8007F074 0B008106 */  bgez       $s4, .Llevel_37_8007F0A4
/* 7AAADA8 8007F078 00000000 */   nop
/* 7AAADAC 8007F07C 29FC0108 */  j          .Llevel_37_8007F0A4
/* 7AAADB0 8007F080 21A00000 */   addu      $s4, $zero, $zero
.Llevel_37_8007F084:
/* 7AAADB4 8007F084 01000224 */  addiu      $v0, $zero, 0x1
/* 7AAADB8 8007F088 03006214 */  bne        $v1, $v0, .Llevel_37_8007F098
/* 7AAADBC 8007F08C 00000000 */   nop
/* 7AAADC0 8007F090 29FC0108 */  j          .Llevel_37_8007F0A4
/* 7AAADC4 8007F094 02009426 */   addiu     $s4, $s4, 0x2
.Llevel_37_8007F098:
/* 7AAADC8 8007F098 02006014 */  bnez       $v1, .Llevel_37_8007F0A4
/* 7AAADCC 8007F09C 00000000 */   nop
/* 7AAADD0 8007F0A0 05009426 */  addiu      $s4, $s4, 0x5
.Llevel_37_8007F0A4:
/* 7AAADD4 8007F0A4 0780023C */  lui        $v0, %hi(D_8007158E)
/* 7AAADD8 8007F0A8 8E154290 */  lbu        $v0, %lo(D_8007158E)($v0)
/* 7AAADDC 8007F0AC 00000000 */  nop
/* 7AAADE0 8007F0B0 02004010 */  beqz       $v0, .Llevel_37_8007F0BC
/* 7AAADE4 8007F0B4 00000000 */   nop
/* 7AAADE8 8007F0B8 21A00000 */  addu       $s4, $zero, $zero
.Llevel_37_8007F0BC:
/* 7AAADEC 8007F0BC 4C00428E */  lw         $v0, 0x4C($s2)
/* 7AAADF0 8007F0C0 00000000 */  nop
/* 7AAADF4 8007F0C4 04004014 */  bnez       $v0, .Llevel_37_8007F0D8
/* 7AAADF8 8007F0C8 00000000 */   nop
/* 7AAADFC 8007F0CC 0380023C */  lui        $v0, %hi(func_8002AB38)
/* 7AAAE00 8007F0D0 38AB4224 */  addiu      $v0, $v0, %lo(func_8002AB38)
/* 7AAAE04 8007F0D4 4C0042AE */  sw         $v0, 0x4C($s2)
.Llevel_37_8007F0D8:
/* 7AAAE08 8007F0D8 4C00438E */  lw         $v1, 0x4C($s2)
/* 7AAAE0C 8007F0DC 0380023C */  lui        $v0, %hi(func_8002AE00)
/* 7AAAE10 8007F0E0 00AE4224 */  addiu      $v0, $v0, %lo(func_8002AE00)
/* 7AAAE14 8007F0E4 2B106200 */  sltu       $v0, $v1, $v0
/* 7AAAE18 8007F0E8 19004010 */  beqz       $v0, .Llevel_37_8007F150
/* 7AAAE1C 8007F0EC 21200000 */   addu      $a0, $zero, $zero
/* 7AAAE20 8007F0F0 0580053C */  lui        $a1, (0x80050000 >> 16)
/* 7AAAE24 8007F0F4 00006290 */  lbu        $v0, 0x0($v1)
/* 7AAAE28 8007F0F8 5000438E */  lw         $v1, 0x50($s2)
/* 7AAAE2C 8007F0FC 00160200 */  sll        $v0, $v0, 24
/* 7AAAE30 8007F100 26186200 */  xor        $v1, $v1, $v0
/* 7AAAE34 8007F104 500043AE */  sw         $v1, 0x50($s2)
.Llevel_37_8007F108:
/* 7AAAE38 8007F108 5000428E */  lw         $v0, 0x50($s2)
/* 7AAAE3C 8007F10C 00000000 */  nop
/* 7AAAE40 8007F110 04004104 */  bgez       $v0, .Llevel_37_8007F124
/* 7AAAE44 8007F114 00000000 */   nop
/* 7AAAE48 8007F118 40100200 */  sll        $v0, $v0, 1
/* 7AAAE4C 8007F11C 4AFC0108 */  j          .Llevel_37_8007F128
/* 7AAAE50 8007F120 26104500 */   xor       $v0, $v0, $a1
.Llevel_37_8007F124:
/* 7AAAE54 8007F124 40100200 */  sll        $v0, $v0, 1
.Llevel_37_8007F128:
/* 7AAAE58 8007F128 500042AE */  sw         $v0, 0x50($s2)
/* 7AAAE5C 8007F12C 01008424 */  addiu      $a0, $a0, 0x1
/* 7AAAE60 8007F130 08008228 */  slti       $v0, $a0, 0x8
/* 7AAAE64 8007F134 F4FF4014 */  bnez       $v0, .Llevel_37_8007F108
/* 7AAAE68 8007F138 00000000 */   nop
/* 7AAAE6C 8007F13C 4C00428E */  lw         $v0, 0x4C($s2)
/* 7AAAE70 8007F140 00000000 */  nop
/* 7AAAE74 8007F144 01004224 */  addiu      $v0, $v0, 0x1
/* 7AAAE78 8007F148 AEFC0108 */  j          .Llevel_37_8007F2B8
/* 7AAAE7C 8007F14C 4C0042AE */   sw        $v0, 0x4C($s2)
.Llevel_37_8007F150:
/* 7AAAE80 8007F150 0F00053C */  lui        $a1, (0xFFFF0 >> 16)
/* 7AAAE84 8007F154 F0FFA534 */  ori        $a1, $a1, (0xFFFF0 & 0xFFFF)
/* 7AAAE88 8007F158 F0FF043C */  lui        $a0, (0xFFF0000F >> 16)
/* 7AAAE8C 8007F15C 0F008434 */  ori        $a0, $a0, (0xFFF0000F & 0xFFFF)
/* 7AAAE90 8007F160 5000428E */  lw         $v0, 0x50($s2)
/* 7AAAE94 8007F164 0780033C */  lui        $v1, %hi(D_800722B8)
/* 7AAAE98 8007F168 B822638C */  lw         $v1, %lo(D_800722B8)($v1)
/* 7AAAE9C 8007F16C 03130200 */  sra        $v0, $v0, 12
/* 7AAAEA0 8007F170 24104500 */  and        $v0, $v0, $a1
/* 7AAAEA4 8007F174 24186400 */  and        $v1, $v1, $a0
/* 7AAAEA8 8007F178 0780043C */  lui        $a0, %hi(unk_ovlheader_80074454)
/* 7AAAEAC 8007F17C 5444848C */  lw         $a0, %lo(unk_ovlheader_80074454)($a0)
/* 7AAAEB0 8007F180 25104300 */  or         $v0, $v0, $v1
/* 7AAAEB4 8007F184 4C004410 */  beq        $v0, $a0, .Llevel_37_8007F2B8
/* 7AAAEB8 8007F188 00000000 */   nop
/* 7AAAEBC 8007F18C 0780023C */  lui        $v0, %hi(D_80070300 + 1)
/* 7AAAEC0 8007F190 01034290 */  lbu        $v0, %lo(D_80070300 + 1)($v0)
/* 7AAAEC4 8007F194 0780033C */  lui        $v1, %hi(D_80070300 + 2)
/* 7AAAEC8 8007F198 02036390 */  lbu        $v1, %lo(D_80070300 + 2)($v1)
/* 7AAAECC 8007F19C 0780013C */  lui        $at, %hi(D_80071587)
/* 7AAAED0 8007F1A0 871520A0 */  sb         $zero, %lo(D_80071587)($at)
/* 7AAAED4 8007F1A4 0780013C */  lui        $at, %hi(D_80071586)
/* 7AAAED8 8007F1A8 861520A0 */  sb         $zero, %lo(D_80071586)($at)
/* 7AAAEDC 8007F1AC FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAEE0 8007F1B0 0780013C */  lui        $at, %hi(D_80070300 + 1)
/* 7AAAEE4 8007F1B4 010322A0 */  sb         $v0, %lo(D_80070300 + 1)($at)
/* 7AAAEE8 8007F1B8 0780023C */  lui        $v0, %hi(D_80070300 + 3)
/* 7AAAEEC 8007F1BC 03034290 */  lbu        $v0, %lo(D_80070300 + 3)($v0)
/* 7AAAEF0 8007F1C0 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAEF4 8007F1C4 0780013C */  lui        $at, %hi(D_80070300 + 2)
/* 7AAAEF8 8007F1C8 020323A0 */  sb         $v1, %lo(D_80070300 + 2)($at)
/* 7AAAEFC 8007F1CC 0780033C */  lui        $v1, %hi(D_80070300 + 4)
/* 7AAAF00 8007F1D0 04036390 */  lbu        $v1, %lo(D_80070300 + 4)($v1)
/* 7AAAF04 8007F1D4 FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAF08 8007F1D8 0780013C */  lui        $at, %hi(D_80070300 + 3)
/* 7AAAF0C 8007F1DC 030322A0 */  sb         $v0, %lo(D_80070300 + 3)($at)
/* 7AAAF10 8007F1E0 0780023C */  lui        $v0, %hi(D_80070300 + 10)
/* 7AAAF14 8007F1E4 0A034290 */  lbu        $v0, %lo(D_80070300 + 10)($v0)
/* 7AAAF18 8007F1E8 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAF1C 8007F1EC 0780013C */  lui        $at, %hi(D_80070300 + 4)
/* 7AAAF20 8007F1F0 040323A0 */  sb         $v1, %lo(D_80070300 + 4)($at)
/* 7AAAF24 8007F1F4 0780033C */  lui        $v1, %hi(D_80070300 + 11)
/* 7AAAF28 8007F1F8 0B036390 */  lbu        $v1, %lo(D_80070300 + 11)($v1)
/* 7AAAF2C 8007F1FC FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAF30 8007F200 0780013C */  lui        $at, %hi(D_80070300 + 10)
/* 7AAAF34 8007F204 0A0322A0 */  sb         $v0, %lo(D_80070300 + 10)($at)
/* 7AAAF38 8007F208 0780023C */  lui        $v0, %hi(D_80070300 + 12)
/* 7AAAF3C 8007F20C 0C034290 */  lbu        $v0, %lo(D_80070300 + 12)($v0)
/* 7AAAF40 8007F210 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAF44 8007F214 0780013C */  lui        $at, %hi(D_80070300 + 11)
/* 7AAAF48 8007F218 0B0323A0 */  sb         $v1, %lo(D_80070300 + 11)($at)
/* 7AAAF4C 8007F21C 0780033C */  lui        $v1, %hi(D_80070300 + 13)
/* 7AAAF50 8007F220 0D036390 */  lbu        $v1, %lo(D_80070300 + 13)($v1)
/* 7AAAF54 8007F224 FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAF58 8007F228 0780013C */  lui        $at, %hi(D_80070300 + 12)
/* 7AAAF5C 8007F22C 0C0322A0 */  sb         $v0, %lo(D_80070300 + 12)($at)
/* 7AAAF60 8007F230 0780023C */  lui        $v0, %hi(D_80070300 + 14)
/* 7AAAF64 8007F234 0E034290 */  lbu        $v0, %lo(D_80070300 + 14)($v0)
/* 7AAAF68 8007F238 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAF6C 8007F23C 0780013C */  lui        $at, %hi(D_80070300 + 13)
/* 7AAAF70 8007F240 0D0323A0 */  sb         $v1, %lo(D_80070300 + 13)($at)
/* 7AAAF74 8007F244 0780033C */  lui        $v1, %hi(D_80070300 + 16 + 0x3)
/* 7AAAF78 8007F248 13036390 */  lbu        $v1, %lo(D_80070300 + 16 + 0x3)($v1)
/* 7AAAF7C 8007F24C FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAF80 8007F250 0780013C */  lui        $at, %hi(D_80070300 + 14)
/* 7AAAF84 8007F254 0E0322A0 */  sb         $v0, %lo(D_80070300 + 14)($at)
/* 7AAAF88 8007F258 0780023C */  lui        $v0, %hi(D_80070300 + 20)
/* 7AAAF8C 8007F25C 14034290 */  lbu        $v0, %lo(D_80070300 + 20)($v0)
/* 7AAAF90 8007F260 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAF94 8007F264 0780013C */  lui        $at, %hi(D_80070300 + 16 + 0x3)
/* 7AAAF98 8007F268 130323A0 */  sb         $v1, %lo(D_80070300 + 16 + 0x3)($at)
/* 7AAAF9C 8007F26C 0780033C */  lui        $v1, %hi(D_80070300 + 20 + 0x1)
/* 7AAAFA0 8007F270 15036390 */  lbu        $v1, %lo(D_80070300 + 20 + 0x1)($v1)
/* 7AAAFA4 8007F274 FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAFA8 8007F278 0780013C */  lui        $at, %hi(D_80070300 + 20)
/* 7AAAFAC 8007F27C 140322A0 */  sb         $v0, %lo(D_80070300 + 20)($at)
/* 7AAAFB0 8007F280 0780023C */  lui        $v0, %hi(D_80070300 + 20 + 0x2)
/* 7AAAFB4 8007F284 16034290 */  lbu        $v0, %lo(D_80070300 + 20 + 0x2)($v0)
/* 7AAAFB8 8007F288 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAFBC 8007F28C 0780013C */  lui        $at, %hi(D_80070300 + 20 + 0x1)
/* 7AAAFC0 8007F290 150323A0 */  sb         $v1, %lo(D_80070300 + 20 + 0x1)($at)
/* 7AAAFC4 8007F294 0780033C */  lui        $v1, %hi(D_80070300 + 20 + 0x3)
/* 7AAAFC8 8007F298 17036390 */  lbu        $v1, %lo(D_80070300 + 20 + 0x3)($v1)
/* 7AAAFCC 8007F29C FE004230 */  andi       $v0, $v0, 0xFE
/* 7AAAFD0 8007F2A0 FE006330 */  andi       $v1, $v1, 0xFE
/* 7AAAFD4 8007F2A4 0780013C */  lui        $at, %hi(D_80070300 + 20 + 0x2)
/* 7AAAFD8 8007F2A8 160322A0 */  sb         $v0, %lo(D_80070300 + 20 + 0x2)($at)
/* 7AAAFDC 8007F2AC 0780013C */  lui        $at, %hi(D_80070300 + 20 + 0x3)
/* 7AAAFE0 8007F2B0 170323A0 */  sb         $v1, %lo(D_80070300 + 20 + 0x3)($at)
/* 7AAAFE4 8007F2B4 500040AE */  sw         $zero, 0x50($s2)
.Llevel_37_8007F2B8:
/* 7AAAFE8 8007F2B8 48006392 */  lbu        $v1, 0x48($s3)
/* 7AAAFEC 8007F2BC 01000724 */  addiu      $a3, $zero, 0x1
/* 7AAAFF0 8007F2C0 73006710 */  beq        $v1, $a3, .Llevel_37_8007F490
/* 7AAAFF4 8007F2C4 02006228 */   slti      $v0, $v1, 0x2
/* 7AAAFF8 8007F2C8 05004010 */  beqz       $v0, .Llevel_37_8007F2E0
/* 7AAAFFC 8007F2CC 00000000 */   nop
/* 7AAB000 8007F2D0 0A006010 */  beqz       $v1, .Llevel_37_8007F2FC
/* 7AAB004 8007F2D4 00000000 */   nop
/* 7AAB008 8007F2D8 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB00C 8007F2DC 00000000 */   nop
.Llevel_37_8007F2E0:
/* 7AAB010 8007F2E0 05000224 */  addiu      $v0, $zero, 0x5
/* 7AAB014 8007F2E4 5F016210 */  beq        $v1, $v0, .Llevel_37_8007F864
/* 7AAB018 8007F2E8 0A000224 */   addiu     $v0, $zero, 0xA
/* 7AAB01C 8007F2EC 7C006210 */  beq        $v1, $v0, .Llevel_37_8007F4E0
/* 7AAB020 8007F2F0 21300000 */   addu      $a2, $zero, $zero
/* 7AAB024 8007F2F4 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB028 8007F2F8 00000000 */   nop
.Llevel_37_8007F2FC:
/* 7AAB02C 8007F2FC 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AAB030 8007F300 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AAB034 8007F304 00000000 */  nop
/* 7AAB038 8007F308 02004014 */  bnez       $v0, .Llevel_37_8007F314
/* 7AAB03C 8007F30C 02000224 */   addiu     $v0, $zero, 0x2
/* 7AAB040 8007F310 470062A2 */  sb         $v0, 0x47($s3)
.Llevel_37_8007F314:
/* 7AAB044 8007F314 5800428E */  lw         $v0, 0x58($s2)
/* 7AAB048 8007F318 00000000 */  nop
/* 7AAB04C 8007F31C 4C004010 */  beqz       $v0, .Llevel_37_8007F450
/* 7AAB050 8007F320 01001024 */   addiu     $s0, $zero, 0x1
/* 7AAB054 8007F324 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AAB058 8007F328 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AAB05C 8007F32C 00000000 */  nop
/* 7AAB060 8007F330 36004014 */  bnez       $v0, .Llevel_37_8007F40C
/* 7AAB064 8007F334 0A000224 */   addiu     $v0, $zero, 0xA
/* 7AAB068 8007F338 21300000 */  addu       $a2, $zero, $zero
/* 7AAB06C 8007F33C 2C00428E */  lw         $v0, 0x2C($s2)
/* 7AAB070 8007F340 0780073C */  lui        $a3, %hi(D_80070328)
/* 7AAB074 8007F344 2803E78C */  lw         $a3, %lo(D_80070328)($a3)
/* 7AAB078 8007F348 0C00428C */  lw         $v0, 0xC($v0)
/* 7AAB07C 8007F34C 0780033C */  lui        $v1, %hi(D_80070328 + 4)
/* 7AAB080 8007F350 2C03638C */  lw         $v1, %lo(D_80070328 + 4)($v1)
/* 7AAB084 8007F354 0000448C */  lw         $a0, 0x0($v0)
/* 7AAB088 8007F358 0400458C */  lw         $a1, 0x4($v0)
/* 7AAB08C 8007F35C 2320E400 */  subu       $a0, $a3, $a0
/* 7AAB090 8007F360 203A010C */  jal        func_8004E880
/* 7AAB094 8007F364 23286500 */   subu      $a1, $v1, $a1
/* 7AAB098 8007F368 16000324 */  addiu      $v1, $zero, 0x16
/* 7AAB09C 8007F36C 21884000 */  addu       $s1, $v0, $zero
/* 7AAB0A0 8007F370 4F0063A2 */  sb         $v1, 0x4F($s3)
/* 7AAB0A4 8007F374 2C00428E */  lw         $v0, 0x2C($s2)
/* 7AAB0A8 8007F378 40003026 */  addiu      $s0, $s1, 0x40
/* 7AAB0AC 8007F37C 0C00458C */  lw         $a1, 0xC($v0)
/* 7AAB0B0 8007F380 5E3C010C */  jal        func_8004F178
/* 7AAB0B4 8007F384 3800A427 */   addiu     $a0, $sp, 0x38
/* 7AAB0B8 8007F388 FF001032 */  andi       $s0, $s0, 0xFF
/* 7AAB0BC 8007F38C 40801000 */  sll        $s0, $s0, 1
/* 7AAB0C0 8007F390 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAB0C4 8007F394 21083000 */  addu       $at, $at, $s0
/* 7AAB0C8 8007F398 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AAB0CC 8007F39C 0C006426 */  addiu      $a0, $s3, 0xC
/* 7AAB0D0 8007F3A0 C0100300 */  sll        $v0, $v1, 3
/* 7AAB0D4 8007F3A4 23104300 */  subu       $v0, $v0, $v1
/* 7AAB0D8 8007F3A8 3800A38F */  lw         $v1, 0x38($sp)
/* 7AAB0DC 8007F3AC 43100200 */  sra        $v0, $v0, 1
/* 7AAB0E0 8007F3B0 21186200 */  addu       $v1, $v1, $v0
/* 7AAB0E4 8007F3B4 3800A3AF */  sw         $v1, 0x38($sp)
/* 7AAB0E8 8007F3B8 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAB0EC 8007F3BC 21083000 */  addu       $at, $at, $s0
/* 7AAB0F0 8007F3C0 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AAB0F4 8007F3C4 3800A527 */  addiu      $a1, $sp, 0x38
/* 7AAB0F8 8007F3C8 C0100300 */  sll        $v0, $v1, 3
/* 7AAB0FC 8007F3CC 23104300 */  subu       $v0, $v0, $v1
/* 7AAB100 8007F3D0 3C00A38F */  lw         $v1, 0x3C($sp)
/* 7AAB104 8007F3D4 43100200 */  sra        $v0, $v0, 1
/* 7AAB108 8007F3D8 21186200 */  addu       $v1, $v1, $v0
/* 7AAB10C 8007F3DC 5E3C010C */  jal        func_8004F178
/* 7AAB110 8007F3E0 3C00A3AF */   sw        $v1, 0x3C($sp)
/* 7AAB114 8007F3E4 05DC000C */  jal        func_80037014
/* 7AAB118 8007F3E8 21206002 */   addu      $a0, $s3, $zero
/* 7AAB11C 8007F3EC 21206002 */  addu       $a0, $s3, $zero
/* 7AAB120 8007F3F0 02000524 */  addiu      $a1, $zero, 0x2
/* 7AAB124 8007F3F4 FE000224 */  addiu      $v0, $zero, 0xFE
/* 7AAB128 8007F3F8 4957010C */  jal        func_80055D24
/* 7AAB12C 8007F3FC 520062A2 */   sb        $v0, 0x52($s3)
/* 7AAB130 8007F400 C0003126 */  addiu      $s1, $s1, 0xC0
/* 7AAB134 8007F404 460071A2 */  sb         $s1, 0x46($s3)
/* 7AAB138 8007F408 0A000224 */  addiu      $v0, $zero, 0xA
.Llevel_37_8007F40C:
/* 7AAB13C 8007F40C 480062A2 */  sb         $v0, 0x48($s3)
/* 7AAB140 8007F410 58005026 */  addiu      $s0, $s2, 0x58
/* 7AAB144 8007F414 21200002 */  addu       $a0, $s0, $zero
/* 7AAB148 8007F418 0780063C */  lui        $a2, %hi(D_8006D088)
/* 7AAB14C 8007F41C 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 7AAB150 8007F420 EDED000C */  jal        func_8003B7B4
/* 7AAB154 8007F424 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB158 8007F428 21200002 */  addu       $a0, $s0, $zero
/* 7AAB15C 8007F42C 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 7AAB160 8007F430 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 7AAB164 8007F434 EDED000C */  jal        func_8003B7B4
/* 7AAB168 8007F438 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB16C 8007F43C 21206002 */  addu       $a0, $s3, $zero
/* 7AAB170 8007F440 D0D3000C */  jal        func_80034F40
/* 7AAB174 8007F444 21280000 */   addu      $a1, $zero, $zero
/* 7AAB178 8007F448 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB17C 8007F44C 00000000 */   nop
.Llevel_37_8007F450:
/* 7AAB180 8007F450 380060A6 */  sh         $zero, 0x38($s3)
/* 7AAB184 8007F454 050050A2 */  sb         $s0, 0x5($s2)
/* 7AAB188 8007F458 0780023C */  lui        $v0, %hi(D_8006C598)
/* 7AAB18C 8007F45C 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 7AAB190 8007F460 00000000 */  nop
/* 7AAB194 8007F464 E7014014 */  bnez       $v0, .Llevel_37_8007FC04
/* 7AAB198 8007F468 21206002 */   addu      $a0, $s3, $zero
/* 7AAB19C 8007F46C EFDE000C */  jal        func_80037BBC
/* 7AAB1A0 8007F470 21280000 */   addu      $a1, $zero, $zero
/* 7AAB1A4 8007F474 E3014010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB1A8 8007F478 21206002 */   addu      $a0, $s3, $zero
/* 7AAB1AC 8007F47C 21280000 */  addu       $a1, $zero, $zero
/* 7AAB1B0 8007F480 B944010C */  jal        func_800512E4
/* 7AAB1B4 8007F484 01000624 */   addiu     $a2, $zero, 0x1
/* 7AAB1B8 8007F488 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB1BC 8007F48C 480070A2 */   sb        $s0, 0x48($s3)
.Llevel_37_8007F490:
/* 7AAB1C0 8007F490 0780023C */  lui        $v0, %hi(D_8006E344)
/* 7AAB1C4 8007F494 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 7AAB1C8 8007F498 00000000 */  nop
/* 7AAB1CC 8007F49C D9014710 */  beq        $v0, $a3, .Llevel_37_8007FC04
/* 7AAB1D0 8007F4A0 58005026 */   addiu     $s0, $s2, 0x58
/* 7AAB1D4 8007F4A4 21200002 */  addu       $a0, $s0, $zero
/* 7AAB1D8 8007F4A8 04000524 */  addiu      $a1, $zero, 0x4
/* 7AAB1DC 8007F4AC 0780063C */  lui        $a2, %hi(D_8006D088)
/* 7AAB1E0 8007F4B0 88D0C624 */  addiu      $a2, $a2, %lo(D_8006D088)
/* 7AAB1E4 8007F4B4 EDED000C */  jal        func_8003B7B4
/* 7AAB1E8 8007F4B8 580047AE */   sw        $a3, 0x58($s2)
/* 7AAB1EC 8007F4BC 21200002 */  addu       $a0, $s0, $zero
/* 7AAB1F0 8007F4C0 0780063C */  lui        $a2, %hi(D_8006C7F8)
/* 7AAB1F4 8007F4C4 F8C7C624 */  addiu      $a2, $a2, %lo(D_8006C7F8)
/* 7AAB1F8 8007F4C8 EDED000C */  jal        func_8003B7B4
/* 7AAB1FC 8007F4CC 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB200 8007F4D0 21206002 */  addu       $a0, $s3, $zero
/* 7AAB204 8007F4D4 21280000 */  addu       $a1, $zero, $zero
/* 7AAB208 8007F4D8 15FE0108 */  j          .Llevel_37_8007F854
/* 7AAB20C 8007F4DC 0A000224 */   addiu     $v0, $zero, 0xA
.Llevel_37_8007F4E0:
/* 7AAB210 8007F4E0 2C00428E */  lw         $v0, 0x2C($s2)
/* 7AAB214 8007F4E4 0C00678E */  lw         $a3, 0xC($s3)
/* 7AAB218 8007F4E8 0C00428C */  lw         $v0, 0xC($v0)
/* 7AAB21C 8007F4EC 1000638E */  lw         $v1, 0x10($s3)
/* 7AAB220 8007F4F0 0000448C */  lw         $a0, 0x0($v0)
/* 7AAB224 8007F4F4 0400458C */  lw         $a1, 0x4($v0)
/* 7AAB228 8007F4F8 2320E400 */  subu       $a0, $a3, $a0
/* 7AAB22C 8007F4FC 203A010C */  jal        func_8004E880
/* 7AAB230 8007F500 23286500 */   subu      $a1, $v1, $a1
/* 7AAB234 8007F504 21300000 */  addu       $a2, $zero, $zero
/* 7AAB238 8007F508 21884000 */  addu       $s1, $v0, $zero
/* 7AAB23C 8007F50C 2C00438E */  lw         $v1, 0x2C($s2)
/* 7AAB240 8007F510 0C00048E */  lw         $a0, 0xC($s0)
/* 7AAB244 8007F514 0C00638C */  lw         $v1, 0xC($v1)
/* 7AAB248 8007F518 1000058E */  lw         $a1, 0x10($s0)
/* 7AAB24C 8007F51C 0000678C */  lw         $a3, 0x0($v1)
/* 7AAB250 8007F520 0400638C */  lw         $v1, 0x4($v1)
/* 7AAB254 8007F524 2320E400 */  subu       $a0, $a3, $a0
/* 7AAB258 8007F528 203A010C */  jal        func_8004E880
/* 7AAB25C 8007F52C 23286500 */   subu      $a1, $v1, $a1
/* 7AAB260 8007F530 FF002432 */  andi       $a0, $s1, 0xFF
/* 7AAB264 8007F534 80FF4224 */  addiu      $v0, $v0, -0x80
/* 7AAB268 8007F538 4FD8000C */  jal        func_8003613C
/* 7AAB26C 8007F53C FF004530 */   andi      $a1, $v0, 0xFF
/* 7AAB270 8007F540 2C00438E */  lw         $v1, 0x2C($s2)
/* 7AAB274 8007F544 21804000 */  addu       $s0, $v0, $zero
/* 7AAB278 8007F548 0C00658C */  lw         $a1, 0xC($v1)
/* 7AAB27C 8007F54C CD3C010C */  jal        func_8004F334
/* 7AAB280 8007F550 0C006426 */   addiu     $a0, $s3, 0xC
/* 7AAB284 8007F554 4F006392 */  lbu        $v1, 0x4F($s3)
/* 7AAB288 8007F558 00000000 */  nop
/* 7AAB28C 8007F55C 03006014 */  bnez       $v1, .Llevel_37_8007F56C
/* 7AAB290 8007F560 21A84000 */   addu      $s5, $v0, $zero
/* 7AAB294 8007F564 20000224 */  addiu      $v0, $zero, 0x20
/* 7AAB298 8007F568 4F0062A2 */  sb         $v0, 0x4F($s3)
.Llevel_37_8007F56C:
/* 7AAB29C 8007F56C 4F006392 */  lbu        $v1, 0x4F($s3)
/* 7AAB2A0 8007F570 00000000 */  nop
/* 7AAB2A4 8007F574 1700622C */  sltiu      $v0, $v1, 0x17
/* 7AAB2A8 8007F578 08004014 */  bnez       $v0, .Llevel_37_8007F59C
/* 7AAB2AC 8007F57C 00000000 */   nop
/* 7AAB2B0 8007F580 0780023C */  lui        $v0, %hi(D_8006C640)
/* 7AAB2B4 8007F584 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 7AAB2B8 8007F588 00000000 */  nop
/* 7AAB2BC 8007F58C 07004230 */  andi       $v0, $v0, 0x7
/* 7AAB2C0 8007F590 02004014 */  bnez       $v0, .Llevel_37_8007F59C
/* 7AAB2C4 8007F594 FFFF6224 */   addiu     $v0, $v1, -0x1
/* 7AAB2C8 8007F598 4F0062A2 */  sb         $v0, 0x4F($s3)
.Llevel_37_8007F59C:
/* 7AAB2CC 8007F59C 02000106 */  bgez       $s0, .Llevel_37_8007F5A8
/* 7AAB2D0 8007F5A0 21100002 */   addu      $v0, $s0, $zero
/* 7AAB2D4 8007F5A4 23100200 */  negu       $v0, $v0
.Llevel_37_8007F5A8:
/* 7AAB2D8 8007F5A8 15004228 */  slti       $v0, $v0, 0x15
/* 7AAB2DC 8007F5AC 2D004014 */  bnez       $v0, .Llevel_37_8007F664
/* 7AAB2E0 8007F5B0 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB2E4 8007F5B4 0200022A */  slti       $v0, $s0, 0x2
/* 7AAB2E8 8007F5B8 03004014 */  bnez       $v0, .Llevel_37_8007F5C8
/* 7AAB2EC 8007F5BC FFFF022A */   slti      $v0, $s0, -0x1
/* 7AAB2F0 8007F5C0 01001024 */  addiu      $s0, $zero, 0x1
/* 7AAB2F4 8007F5C4 FFFF022A */  slti       $v0, $s0, -0x1
.Llevel_37_8007F5C8:
/* 7AAB2F8 8007F5C8 03004010 */  beqz       $v0, .Llevel_37_8007F5D8
/* 7AAB2FC 8007F5CC 80101000 */   sll       $v0, $s0, 2
/* 7AAB300 8007F5D0 FFFF1024 */  addiu      $s0, $zero, -0x1
/* 7AAB304 8007F5D4 80101000 */  sll        $v0, $s0, 2
.Llevel_37_8007F5D8:
/* 7AAB308 8007F5D8 21800202 */  addu       $s0, $s0, $v0
/* 7AAB30C 8007F5DC 21383002 */  addu       $a3, $s1, $s0
/* 7AAB310 8007F5E0 21206002 */  addu       $a0, $s3, $zero
/* 7AAB314 8007F5E4 2C00438E */  lw         $v1, 0x2C($s2)
/* 7AAB318 8007F5E8 04000224 */  addiu      $v0, $zero, 0x4
/* 7AAB31C 8007F5EC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7AAB320 8007F5F0 6E000224 */  addiu      $v0, $zero, 0x6E
/* 7AAB324 8007F5F4 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AAB328 8007F5F8 05000224 */  addiu      $v0, $zero, 0x5
/* 7AAB32C 8007F5FC 1800A2AF */  sw         $v0, 0x18($sp)
/* 7AAB330 8007F600 0C000224 */  addiu      $v0, $zero, 0xC
/* 7AAB334 8007F604 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 7AAB338 8007F608 FF000224 */  addiu      $v0, $zero, 0xFF
/* 7AAB33C 8007F60C 2000A2AF */  sw         $v0, 0x20($sp)
/* 7AAB340 8007F610 2400A2AF */  sw         $v0, 0x24($sp)
/* 7AAB344 8007F614 0780023C */  lui        $v0, %hi(unk_ovlheader_80074314)
/* 7AAB348 8007F618 1443428C */  lw         $v0, %lo(unk_ovlheader_80074314)($v0)
/* 7AAB34C 8007F61C 64380624 */  addiu      $a2, $zero, 0x3864
/* 7AAB350 8007F620 2800A0AF */  sw         $zero, 0x28($sp)
/* 7AAB354 8007F624 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 7AAB358 8007F628 3000A0AF */  sw         $zero, 0x30($sp)
/* 7AAB35C 8007F62C 0C00658C */  lw         $a1, 0xC($v1)
/* 7AAB360 8007F630 09F84000 */  jalr       $v0
/* 7AAB364 8007F634 FF00E730 */   andi      $a3, $a3, 0xFF
/* 7AAB368 8007F638 3D006392 */  lbu        $v1, 0x3D($s3)
/* 7AAB36C 8007F63C 02000224 */  addiu      $v0, $zero, 0x2
/* 7AAB370 8007F640 19006210 */  beq        $v1, $v0, .Llevel_37_8007F6A8
/* 7AAB374 8007F644 21206002 */   addu      $a0, $s3, $zero
/* 7AAB378 8007F648 72000224 */  addiu      $v0, $zero, 0x72
/* 7AAB37C 8007F64C 0780013C */  lui        $at, %hi(D_8006C770)
/* 7AAB380 8007F650 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 7AAB384 8007F654 400062A2 */  sb         $v0, 0x40($s3)
/* 7AAB388 8007F658 02000224 */  addiu      $v0, $zero, 0x2
/* 7AAB38C 8007F65C A8FD0108 */  j          .Llevel_37_8007F6A0
/* 7AAB390 8007F660 3D0062A2 */   sb        $v0, 0x3D($s3)
.Llevel_37_8007F664:
/* 7AAB394 8007F664 21206002 */  addu       $a0, $s3, $zero
/* 7AAB398 8007F668 21300000 */  addu       $a2, $zero, $zero
/* 7AAB39C 8007F66C CFD5000C */  jal        func_8003573C
/* 7AAB3A0 8007F670 21380000 */   addu      $a3, $zero, $zero
/* 7AAB3A4 8007F674 0C004010 */  beqz       $v0, .Llevel_37_8007F6A8
/* 7AAB3A8 8007F678 00000000 */   nop
/* 7AAB3AC 8007F67C 3D006292 */  lbu        $v0, 0x3D($s3)
/* 7AAB3B0 8007F680 00000000 */  nop
/* 7AAB3B4 8007F684 08004010 */  beqz       $v0, .Llevel_37_8007F6A8
/* 7AAB3B8 8007F688 21206002 */   addu      $a0, $s3, $zero
/* 7AAB3BC 8007F68C 72000224 */  addiu      $v0, $zero, 0x72
/* 7AAB3C0 8007F690 0780013C */  lui        $at, %hi(D_8006C770)
/* 7AAB3C4 8007F694 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 7AAB3C8 8007F698 400062A2 */  sb         $v0, 0x40($s3)
/* 7AAB3CC 8007F69C 3D0060A2 */  sb         $zero, 0x3D($s3)
.Llevel_37_8007F6A0:
/* 7AAB3D0 8007F6A0 CDD5000C */  jal        func_80035734
/* 7AAB3D4 8007F6A4 3F0060A2 */   sb        $zero, 0x3F($s3)
.Llevel_37_8007F6A8:
/* 7AAB3D8 8007F6A8 5600C286 */  lh         $v0, 0x56($s6)
/* 7AAB3DC 8007F6AC 00000000 */  nop
/* 7AAB3E0 8007F6B0 54014010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB3E4 8007F6B4 0D36A22A */   slti      $v0, $s5, 0x360D
/* 7AAB3E8 8007F6B8 52014014 */  bnez       $v0, .Llevel_37_8007FC04
/* 7AAB3EC 8007F6BC 21800000 */   addu      $s0, $zero, $zero
/* 7AAB3F0 8007F6C0 21880000 */  addu       $s1, $zero, $zero
/* 7AAB3F4 8007F6C4 0780043C */  lui        $a0, %hi(D_8006E788)
/* 7AAB3F8 8007F6C8 88E78424 */  addiu      $a0, $a0, %lo(D_8006E788)
/* 7AAB3FC 8007F6CC 04000324 */  addiu      $v1, $zero, 0x4
/* 7AAB400 8007F6D0 4800A227 */  addiu      $v0, $sp, 0x48
.Llevel_37_8007F6D4:
/* 7AAB404 8007F6D4 100040AC */  sw         $zero, 0x10($v0)
/* 7AAB408 8007F6D8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 7AAB40C 8007F6DC FDFF6104 */  bgez       $v1, .Llevel_37_8007F6D4
/* 7AAB410 8007F6E0 FCFF4224 */   addiu     $v0, $v0, -0x4
/* 7AAB414 8007F6E4 0000838C */  lw         $v1, 0x0($a0)
/* 7AAB418 8007F6E8 00000000 */  nop
/* 7AAB41C 8007F6EC 1E006010 */  beqz       $v1, .Llevel_37_8007F768
/* 7AAB420 8007F6F0 04008424 */   addiu     $a0, $a0, 0x4
/* 7AAB424 8007F6F4 C3020924 */  addiu      $t1, $zero, 0x2C3
/* 7AAB428 8007F6F8 3800A527 */  addiu      $a1, $sp, 0x38
/* 7AAB42C 8007F6FC BF010824 */  addiu      $t0, $zero, 0x1BF
/* 7AAB430 8007F700 10000724 */  addiu      $a3, $zero, 0x10
/* 7AAB434 8007F704 D3000624 */  addiu      $a2, $zero, 0xD3
.Llevel_37_8007F708:
/* 7AAB438 8007F708 36006284 */  lh         $v0, 0x36($v1)
/* 7AAB43C 8007F70C 00000000 */  nop
/* 7AAB440 8007F710 0A004914 */  bne        $v0, $t1, .Llevel_37_8007F73C
/* 7AAB444 8007F714 00000000 */   nop
/* 7AAB448 8007F718 49006390 */  lbu        $v1, 0x49($v1)
/* 7AAB44C 8007F71C 00000000 */  nop
/* 7AAB450 8007F720 80180300 */  sll        $v1, $v1, 2
/* 7AAB454 8007F724 21186500 */  addu       $v1, $v1, $a1
/* 7AAB458 8007F728 1000628C */  lw         $v0, 0x10($v1)
/* 7AAB45C 8007F72C 01001026 */  addiu      $s0, $s0, 0x1
/* 7AAB460 8007F730 01004224 */  addiu      $v0, $v0, 0x1
/* 7AAB464 8007F734 D6FD0108 */  j          .Llevel_37_8007F758
/* 7AAB468 8007F738 100062AC */   sw        $v0, 0x10($v1)
.Llevel_37_8007F73C:
/* 7AAB46C 8007F73C 05004810 */  beq        $v0, $t0, .Llevel_37_8007F754
/* 7AAB470 8007F740 00000000 */   nop
/* 7AAB474 8007F744 03004710 */  beq        $v0, $a3, .Llevel_37_8007F754
/* 7AAB478 8007F748 00000000 */   nop
/* 7AAB47C 8007F74C 02004614 */  bne        $v0, $a2, .Llevel_37_8007F758
/* 7AAB480 8007F750 00000000 */   nop
.Llevel_37_8007F754:
/* 7AAB484 8007F754 01003126 */  addiu      $s1, $s1, 0x1
.Llevel_37_8007F758:
/* 7AAB488 8007F758 0000838C */  lw         $v1, 0x0($a0)
/* 7AAB48C 8007F75C 00000000 */  nop
/* 7AAB490 8007F760 E9FF6014 */  bnez       $v1, .Llevel_37_8007F708
/* 7AAB494 8007F764 04008424 */   addiu     $a0, $a0, 0x4
.Llevel_37_8007F768:
/* 7AAB498 8007F768 30004426 */  addiu      $a0, $s2, 0x30
/* 7AAB49C 8007F76C 69D6000C */  jal        func_800359A4
/* 7AAB4A0 8007F770 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB4A4 8007F774 15004010 */  beqz       $v0, .Llevel_37_8007F7CC
/* 7AAB4A8 8007F778 0300022A */   slti      $v0, $s0, 0x3
/* 7AAB4AC 8007F77C 13004010 */  beqz       $v0, .Llevel_37_8007F7CC
/* 7AAB4B0 8007F780 00000000 */   nop
/* 7AAB4B4 8007F784 9171010C */  jal        rand
/* 7AAB4B8 8007F788 03001024 */   addiu     $s0, $zero, 0x3
/* 7AAB4BC 8007F78C 01004230 */  andi       $v0, $v0, 0x1
/* 7AAB4C0 8007F790 02004010 */  beqz       $v0, .Llevel_37_8007F79C
/* 7AAB4C4 8007F794 F4010424 */   addiu     $a0, $zero, 0x1F4
/* 7AAB4C8 8007F798 04001024 */  addiu      $s0, $zero, 0x4
.Llevel_37_8007F79C:
/* 7AAB4CC 8007F79C DBD8000C */  jal        func_8003636C
/* 7AAB4D0 8007F7A0 BC020524 */   addiu     $a1, $zero, 0x2BC
/* 7AAB4D4 8007F7A4 21206002 */  addu       $a0, $s3, $zero
/* 7AAB4D8 8007F7A8 05000524 */  addiu      $a1, $zero, 0x5
/* 7AAB4DC 8007F7AC 300042AE */  sw         $v0, 0x30($s2)
/* 7AAB4E0 8007F7B0 C3020224 */  addiu      $v0, $zero, 0x2C3
/* 7AAB4E4 8007F7B4 3C0042AE */  sw         $v0, 0x3C($s2)
/* 7AAB4E8 8007F7B8 14000224 */  addiu      $v0, $zero, 0x14
/* 7AAB4EC 8007F7BC 440042AE */  sw         $v0, 0x44($s2)
/* 7AAB4F0 8007F7C0 05000224 */  addiu      $v0, $zero, 0x5
/* 7AAB4F4 8007F7C4 14FE0108 */  j          .Llevel_37_8007F850
/* 7AAB4F8 8007F7C8 400050AE */   sw        $s0, 0x40($s2)
.Llevel_37_8007F7CC:
/* 7AAB4FC 8007F7CC 0780023C */  lui        $v0, %hi(D_8006C7C4)
/* 7AAB500 8007F7D0 C4C7428C */  lw         $v0, %lo(D_8006C7C4)($v0)
/* 7AAB504 8007F7D4 0700832A */  slti       $v1, $s4, 0x7
/* 7AAB508 8007F7D8 02004238 */  xori       $v0, $v0, 0x2
/* 7AAB50C 8007F7DC 02006014 */  bnez       $v1, .Llevel_37_8007F7E8
/* 7AAB510 8007F7E0 2B800200 */   sltu      $s0, $zero, $v0
/* 7AAB514 8007F7E4 02001024 */  addiu      $s0, $zero, 0x2
.Llevel_37_8007F7E8:
/* 7AAB518 8007F7E8 0780023C */  lui        $v0, %hi(D_80070328 + 0x280)
/* 7AAB51C 8007F7EC A805428C */  lw         $v0, %lo(D_80070328 + 0x280)($v0)
/* 7AAB520 8007F7F0 00000000 */  nop
/* 7AAB524 8007F7F4 02004228 */  slti       $v0, $v0, 0x2
/* 7AAB528 8007F7F8 04004014 */  bnez       $v0, .Llevel_37_8007F80C
/* 7AAB52C 8007F7FC 34004426 */   addiu     $a0, $s2, 0x34
/* 7AAB530 8007F800 02006010 */  beqz       $v1, .Llevel_37_8007F80C
/* 7AAB534 8007F804 00000000 */   nop
/* 7AAB538 8007F808 21800000 */  addu       $s0, $zero, $zero
.Llevel_37_8007F80C:
/* 7AAB53C 8007F80C 69D6000C */  jal        func_800359A4
/* 7AAB540 8007F810 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB544 8007F814 FB004010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB548 8007F818 2A103002 */   slt       $v0, $s1, $s0
/* 7AAB54C 8007F81C F9004010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB550 8007F820 BC020424 */   addiu     $a0, $zero, 0x2BC
/* 7AAB554 8007F824 DBD8000C */  jal        func_8003636C
/* 7AAB558 8007F828 E8030524 */   addiu     $a1, $zero, 0x3E8
/* 7AAB55C 8007F82C 21206002 */  addu       $a0, $s3, $zero
/* 7AAB560 8007F830 05000524 */  addiu      $a1, $zero, 0x5
/* 7AAB564 8007F834 340042AE */  sw         $v0, 0x34($s2)
/* 7AAB568 8007F838 05000224 */  addiu      $v0, $zero, 0x5
/* 7AAB56C 8007F83C 3C0042AE */  sw         $v0, 0x3C($s2)
/* 7AAB570 8007F840 14000224 */  addiu      $v0, $zero, 0x14
/* 7AAB574 8007F844 440042AE */  sw         $v0, 0x44($s2)
/* 7AAB578 8007F848 05000224 */  addiu      $v0, $zero, 0x5
/* 7AAB57C 8007F84C 400040AE */  sw         $zero, 0x40($s2)
.Llevel_37_8007F850:
/* 7AAB580 8007F850 490080A0 */  sb         $zero, 0x49($a0)
.Llevel_37_8007F854:
/* 7AAB584 8007F854 D0D3000C */  jal        func_80034F40
/* 7AAB588 8007F858 480082A0 */   sb        $v0, 0x48($a0)
/* 7AAB58C 8007F85C 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB590 8007F860 00000000 */   nop
.Llevel_37_8007F864:
/* 7AAB594 8007F864 49006292 */  lbu        $v0, 0x49($s3)
/* 7AAB598 8007F868 00000000 */  nop
/* 7AAB59C 8007F86C 05004010 */  beqz       $v0, .Llevel_37_8007F884
/* 7AAB5A0 8007F870 00000000 */   nop
/* 7AAB5A4 8007F874 C3004710 */  beq        $v0, $a3, .Llevel_37_8007FB84
/* 7AAB5A8 8007F878 44004426 */   addiu     $a0, $s2, 0x44
/* 7AAB5AC 8007F87C 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB5B0 8007F880 00000000 */   nop
.Llevel_37_8007F884:
/* 7AAB5B4 8007F884 4800428E */  lw         $v0, 0x48($s2)
/* 7AAB5B8 8007F888 00000000 */  nop
/* 7AAB5BC 8007F88C 3B004014 */  bnez       $v0, .Llevel_37_8007F97C
/* 7AAB5C0 8007F890 41000424 */   addiu     $a0, $zero, 0x41
/* 7AAB5C4 8007F894 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AAB5C8 8007F898 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AAB5CC 8007F89C 00000000 */  nop
/* 7AAB5D0 8007F8A0 09F84000 */  jalr       $v0
/* 7AAB5D4 8007F8A4 21286002 */   addu      $a1, $s3, $zero
/* 7AAB5D8 8007F8A8 480042AE */  sw         $v0, 0x48($s2)
/* 7AAB5DC 8007F8AC 46006392 */  lbu        $v1, 0x46($s3)
/* 7AAB5E0 8007F8B0 00000000 */  nop
/* 7AAB5E4 8007F8B4 460043A0 */  sb         $v1, 0x46($v0)
/* 7AAB5E8 8007F8B8 46006292 */  lbu        $v0, 0x46($s3)
/* 7AAB5EC 8007F8BC 00000000 */  nop
/* 7AAB5F0 8007F8C0 40100200 */  sll        $v0, $v0, 1
/* 7AAB5F4 8007F8C4 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAB5F8 8007F8C8 21082200 */  addu       $at, $at, $v0
/* 7AAB5FC 8007F8CC 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AAB600 8007F8D0 4800448E */  lw         $a0, 0x48($s2)
/* 7AAB604 8007F8D4 40100300 */  sll        $v0, $v1, 1
/* 7AAB608 8007F8D8 21104300 */  addu       $v0, $v0, $v1
/* 7AAB60C 8007F8DC 80100200 */  sll        $v0, $v0, 2
/* 7AAB610 8007F8E0 23104300 */  subu       $v0, $v0, $v1
/* 7AAB614 8007F8E4 00110200 */  sll        $v0, $v0, 4
/* 7AAB618 8007F8E8 23104300 */  subu       $v0, $v0, $v1
/* 7AAB61C 8007F8EC 0C00838C */  lw         $v1, 0xC($a0)
/* 7AAB620 8007F8F0 83120200 */  sra        $v0, $v0, 10
/* 7AAB624 8007F8F4 21186200 */  addu       $v1, $v1, $v0
/* 7AAB628 8007F8F8 0C0083AC */  sw         $v1, 0xC($a0)
/* 7AAB62C 8007F8FC 46006292 */  lbu        $v0, 0x46($s3)
/* 7AAB630 8007F900 00000000 */  nop
/* 7AAB634 8007F904 40100200 */  sll        $v0, $v0, 1
/* 7AAB638 8007F908 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAB63C 8007F90C 21082200 */  addu       $at, $at, $v0
/* 7AAB640 8007F910 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AAB644 8007F914 4800448E */  lw         $a0, 0x48($s2)
/* 7AAB648 8007F918 40100300 */  sll        $v0, $v1, 1
/* 7AAB64C 8007F91C 21104300 */  addu       $v0, $v0, $v1
/* 7AAB650 8007F920 80100200 */  sll        $v0, $v0, 2
/* 7AAB654 8007F924 23104300 */  subu       $v0, $v0, $v1
/* 7AAB658 8007F928 00110200 */  sll        $v0, $v0, 4
/* 7AAB65C 8007F92C 23104300 */  subu       $v0, $v0, $v1
/* 7AAB660 8007F930 1000838C */  lw         $v1, 0x10($a0)
/* 7AAB664 8007F934 83120200 */  sra        $v0, $v0, 10
/* 7AAB668 8007F938 21186200 */  addu       $v1, $v1, $v0
/* 7AAB66C 8007F93C 100083AC */  sw         $v1, 0x10($a0)
/* 7AAB670 8007F940 4800438E */  lw         $v1, 0x48($s2)
/* 7AAB674 8007F944 00000000 */  nop
/* 7AAB678 8007F948 1400628C */  lw         $v0, 0x14($v1)
/* 7AAB67C 8007F94C 00000000 */  nop
/* 7AAB680 8007F950 C2014224 */  addiu      $v0, $v0, 0x1C2
/* 7AAB684 8007F954 140062AC */  sw         $v0, 0x14($v1)
/* 7AAB688 8007F958 4800438E */  lw         $v1, 0x48($s2)
/* 7AAB68C 8007F95C 08000224 */  addiu      $v0, $zero, 0x8
/* 7AAB690 8007F960 470062A0 */  sb         $v0, 0x47($v1)
/* 7AAB694 8007F964 4800438E */  lw         $v1, 0x48($s2)
/* 7AAB698 8007F968 50000224 */  addiu      $v0, $zero, 0x50
/* 7AAB69C 8007F96C 4C0062A0 */  sb         $v0, 0x4C($v1)
/* 7AAB6A0 8007F970 4800438E */  lw         $v1, 0x48($s2)
/* 7AAB6A4 8007F974 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7AAB6A8 8007F978 4E0062A0 */  sb         $v0, 0x4E($v1)
.Llevel_37_8007F97C:
/* 7AAB6AC 8007F97C 5400458E */  lw         $a1, 0x54($s2)
/* 7AAB6B0 8007F980 F0EF000C */  jal        func_8003BFC0
/* 7AAB6B4 8007F984 21206002 */   addu      $a0, $s3, $zero
/* 7AAB6B8 8007F988 07004014 */  bnez       $v0, .Llevel_37_8007F9A8
/* 7AAB6BC 8007F98C 44004426 */   addiu     $a0, $s2, 0x44
/* 7AAB6C0 8007F990 21206002 */  addu       $a0, $s3, $zero
/* 7AAB6C4 8007F994 21280000 */  addu       $a1, $zero, $zero
/* 7AAB6C8 8007F998 AFEE000C */  jal        func_8003BABC
/* 7AAB6CC 8007F99C 04000624 */   addiu     $a2, $zero, 0x4
/* 7AAB6D0 8007F9A0 540042AE */  sw         $v0, 0x54($s2)
/* 7AAB6D4 8007F9A4 44004426 */  addiu      $a0, $s2, 0x44
.Llevel_37_8007F9A8:
/* 7AAB6D8 8007F9A8 69D6000C */  jal        func_800359A4
/* 7AAB6DC 8007F9AC 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB6E0 8007F9B0 94004010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB6E4 8007F9B4 21206002 */   addu      $a0, $s3, $zero
/* 7AAB6E8 8007F9B8 05000524 */  addiu      $a1, $zero, 0x5
/* 7AAB6EC 8007F9BC 21300000 */  addu       $a2, $zero, $zero
/* 7AAB6F0 8007F9C0 CFD5000C */  jal        func_8003573C
/* 7AAB6F4 8007F9C4 21380000 */   addu      $a3, $zero, $zero
/* 7AAB6F8 8007F9C8 8E004010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB6FC 8007F9CC C3020424 */   addiu     $a0, $zero, 0x2C3
/* 7AAB700 8007F9D0 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 7AAB704 8007F9D4 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 7AAB708 8007F9D8 00000000 */  nop
/* 7AAB70C 8007F9DC 09F84000 */  jalr       $v0
/* 7AAB710 8007F9E0 21286002 */   addu      $a1, $s3, $zero
/* 7AAB714 8007F9E4 21884000 */  addu       $s1, $v0, $zero
/* 7AAB718 8007F9E8 5F002012 */  beqz       $s1, .Llevel_37_8007FB68
/* 7AAB71C 8007F9EC C3020324 */   addiu     $v1, $zero, 0x2C3
/* 7AAB720 8007F9F0 4000428E */  lw         $v0, 0x40($s2)
/* 7AAB724 8007F9F4 00000000 */  nop
/* 7AAB728 8007F9F8 490022A2 */  sb         $v0, 0x49($s1)
/* 7AAB72C 8007F9FC 3C00428E */  lw         $v0, 0x3C($s2)
/* 7AAB730 8007FA00 0000348E */  lw         $s4, 0x0($s1)
/* 7AAB734 8007FA04 02004310 */  beq        $v0, $v1, .Llevel_37_8007FA10
/* 7AAB738 8007FA08 05000224 */   addiu     $v0, $zero, 0x5
/* 7AAB73C 8007FA0C 490022A2 */  sb         $v0, 0x49($s1)
.Llevel_37_8007FA10:
/* 7AAB740 8007FA10 14000224 */  addiu      $v0, $zero, 0x14
/* 7AAB744 8007FA14 480022A2 */  sb         $v0, 0x48($s1)
/* 7AAB748 8007FA18 3F000224 */  addiu      $v0, $zero, 0x3F
/* 7AAB74C 8007FA1C 4C0022A2 */  sb         $v0, 0x4C($s1)
/* 7AAB750 8007FA20 4E0022A2 */  sb         $v0, 0x4E($s1)
/* 7AAB754 8007FA24 46006292 */  lbu        $v0, 0x46($s3)
/* 7AAB758 8007FA28 00000000 */  nop
/* 7AAB75C 8007FA2C 40100200 */  sll        $v0, $v0, 1
/* 7AAB760 8007FA30 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAB764 8007FA34 21082200 */  addu       $at, $at, $v0
/* 7AAB768 8007FA38 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AAB76C 8007FA3C 00000000 */  nop
/* 7AAB770 8007FA40 40110300 */  sll        $v0, $v1, 5
/* 7AAB774 8007FA44 23104300 */  subu       $v0, $v0, $v1
/* 7AAB778 8007FA48 80100200 */  sll        $v0, $v0, 2
/* 7AAB77C 8007FA4C 21104300 */  addu       $v0, $v0, $v1
/* 7AAB780 8007FA50 0C00238E */  lw         $v1, 0xC($s1)
/* 7AAB784 8007FA54 43120200 */  sra        $v0, $v0, 9
/* 7AAB788 8007FA58 21186200 */  addu       $v1, $v1, $v0
/* 7AAB78C 8007FA5C 0C0023AE */  sw         $v1, 0xC($s1)
/* 7AAB790 8007FA60 46006392 */  lbu        $v1, 0x46($s3)
/* 7AAB794 8007FA64 1400228E */  lw         $v0, 0x14($s1)
/* 7AAB798 8007FA68 40180300 */  sll        $v1, $v1, 1
/* 7AAB79C 8007FA6C 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAB7A0 8007FA70 21082300 */  addu       $at, $at, $v1
/* 7AAB7A4 8007FA74 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AAB7A8 8007FA78 F4014224 */  addiu      $v0, $v0, 0x1F4
/* 7AAB7AC 8007FA7C 140022AE */  sw         $v0, 0x14($s1)
/* 7AAB7B0 8007FA80 40110300 */  sll        $v0, $v1, 5
/* 7AAB7B4 8007FA84 23104300 */  subu       $v0, $v0, $v1
/* 7AAB7B8 8007FA88 80100200 */  sll        $v0, $v0, 2
/* 7AAB7BC 8007FA8C 21104300 */  addu       $v0, $v0, $v1
/* 7AAB7C0 8007FA90 1000238E */  lw         $v1, 0x10($s1)
/* 7AAB7C4 8007FA94 43120200 */  sra        $v0, $v0, 9
/* 7AAB7C8 8007FA98 21186200 */  addu       $v1, $v1, $v0
/* 7AAB7CC 8007FA9C 9171010C */  jal        rand
/* 7AAB7D0 8007FAA0 100023AE */   sw        $v1, 0x10($s1)
/* 7AAB7D4 8007FAA4 B80B0424 */  addiu      $a0, $zero, 0xBB8
/* 7AAB7D8 8007FAA8 581B0524 */  addiu      $a1, $zero, 0x1B58
/* 7AAB7DC 8007FAAC DBD8000C */  jal        func_8003636C
/* 7AAB7E0 8007FAB0 21804000 */   addu      $s0, $v0, $zero
/* 7AAB7E4 8007FAB4 FF001032 */  andi       $s0, $s0, 0xFF
/* 7AAB7E8 8007FAB8 40801000 */  sll        $s0, $s0, 1
/* 7AAB7EC 8007FABC 0680013C */  lui        $at, %hi(D_80065920)
/* 7AAB7F0 8007FAC0 21083000 */  addu       $at, $at, $s0
/* 7AAB7F4 8007FAC4 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 7AAB7F8 8007FAC8 00000000 */  nop
/* 7AAB7FC 8007FACC 18006200 */  mult       $v1, $v0
/* 7AAB800 8007FAD0 12500000 */  mflo       $t2
/* 7AAB804 8007FAD4 031B0A00 */  sra        $v1, $t2, 12
/* 7AAB808 8007FAD8 3800A3AF */  sw         $v1, 0x38($sp)
/* 7AAB80C 8007FADC 0680013C */  lui        $at, %hi(D_800658A0)
/* 7AAB810 8007FAE0 21083000 */  addu       $at, $at, $s0
/* 7AAB814 8007FAE4 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 7AAB818 8007FAE8 00000000 */  nop
/* 7AAB81C 8007FAEC 18006200 */  mult       $v1, $v0
/* 7AAB820 8007FAF0 4000A0AF */  sw         $zero, 0x40($sp)
/* 7AAB824 8007FAF4 12500000 */  mflo       $t2
/* 7AAB828 8007FAF8 03130A00 */  sra        $v0, $t2, 12
/* 7AAB82C 8007FAFC 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 7AAB830 8007FB00 2C00428E */  lw         $v0, 0x2C($s2)
/* 7AAB834 8007FB04 3800A427 */  addiu      $a0, $sp, 0x38
/* 7AAB838 8007FB08 0C00468C */  lw         $a2, 0xC($v0)
/* 7AAB83C 8007FB0C 653C010C */  jal        func_8004F194
/* 7AAB840 8007FB10 21288000 */   addu      $a1, $a0, $zero
/* 7AAB844 8007FB14 21300000 */  addu       $a2, $zero, $zero
/* 7AAB848 8007FB18 40010224 */  addiu      $v0, $zero, 0x140
/* 7AAB84C 8007FB1C 000082A6 */  sh         $v0, 0x0($s4)
/* 7AAB850 8007FB20 3800A38F */  lw         $v1, 0x38($sp)
/* 7AAB854 8007FB24 0C00248E */  lw         $a0, 0xC($s1)
/* 7AAB858 8007FB28 3C00A28F */  lw         $v0, 0x3C($sp)
/* 7AAB85C 8007FB2C 1000258E */  lw         $a1, 0x10($s1)
/* 7AAB860 8007FB30 23206400 */  subu       $a0, $v1, $a0
/* 7AAB864 8007FB34 203A010C */  jal        func_8004E880
/* 7AAB868 8007FB38 23284500 */   subu      $a1, $v0, $a1
/* 7AAB86C 8007FB3C 0C002426 */  addiu      $a0, $s1, 0xC
/* 7AAB870 8007FB40 3800A527 */  addiu      $a1, $sp, 0x38
/* 7AAB874 8007FB44 00008686 */  lh         $a2, 0x0($s4)
/* 7AAB878 8007FB48 F2FF0724 */  addiu      $a3, $zero, -0xE
/* 7AAB87C 8007FB4C 040082A6 */  sh         $v0, 0x4($s4)
/* 7AAB880 8007FB50 F2FF0224 */  addiu      $v0, $zero, -0xE
/* 7AAB884 8007FB54 060082A6 */  sh         $v0, 0x6($s4)
/* 7AAB888 8007FB58 6000A227 */  addiu      $v0, $sp, 0x60
/* 7AAB88C 8007FB5C 79D9000C */  jal        func_800365E4
/* 7AAB890 8007FB60 1000A2AF */   sw        $v0, 0x10($sp)
/* 7AAB894 8007FB64 020082A6 */  sh         $v0, 0x2($s4)
.Llevel_37_8007FB68:
/* 7AAB898 8007FB68 49006292 */  lbu        $v0, 0x49($s3)
/* 7AAB89C 8007FB6C 00000000 */  nop
/* 7AAB8A0 8007FB70 01004224 */  addiu      $v0, $v0, 0x1
/* 7AAB8A4 8007FB74 490062A2 */  sb         $v0, 0x49($s3)
/* 7AAB8A8 8007FB78 1E000224 */  addiu      $v0, $zero, 0x1E
/* 7AAB8AC 8007FB7C 01FF0108 */  j          .Llevel_37_8007FC04
/* 7AAB8B0 8007FB80 440042AE */   sw        $v0, 0x44($s2)
.Llevel_37_8007FB84:
/* 7AAB8B4 8007FB84 69D6000C */  jal        func_800359A4
/* 7AAB8B8 8007FB88 04000524 */   addiu     $a1, $zero, 0x4
/* 7AAB8BC 8007FB8C 1D004010 */  beqz       $v0, .Llevel_37_8007FC04
/* 7AAB8C0 8007FB90 00000000 */   nop
/* 7AAB8C4 8007FB94 5400458E */  lw         $a1, 0x54($s2)
/* 7AAB8C8 8007FB98 F0EF000C */  jal        func_8003BFC0
/* 7AAB8CC 8007FB9C 21206002 */   addu      $a0, $s3, $zero
/* 7AAB8D0 8007FBA0 04004010 */  beqz       $v0, .Llevel_37_8007FBB4
/* 7AAB8D4 8007FBA4 00000000 */   nop
/* 7AAB8D8 8007FBA8 5400448E */  lw         $a0, 0x54($s2)
/* 7AAB8DC 8007FBAC 9CEF000C */  jal        func_8003BE70
/* 7AAB8E0 8007FBB0 00000000 */   nop
.Llevel_37_8007FBB4:
/* 7AAB8E4 8007FBB4 4800448E */  lw         $a0, 0x48($s2)
/* 7AAB8E8 8007FBB8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 7AAB8EC 8007FBBC 04008010 */  beqz       $a0, .Llevel_37_8007FBD0
/* 7AAB8F0 8007FBC0 540042AE */   sw        $v0, 0x54($s2)
/* 7AAB8F4 8007FBC4 C656010C */  jal        func_80055B18
/* 7AAB8F8 8007FBC8 00000000 */   nop
/* 7AAB8FC 8007FBCC 480040AE */  sw         $zero, 0x48($s2)
.Llevel_37_8007FBD0:
/* 7AAB900 8007FBD0 3D006292 */  lbu        $v0, 0x3D($s3)
/* 7AAB904 8007FBD4 00000000 */  nop
/* 7AAB908 8007FBD8 08004010 */  beqz       $v0, .Llevel_37_8007FBFC
/* 7AAB90C 8007FBDC 21206002 */   addu      $a0, $s3, $zero
/* 7AAB910 8007FBE0 72000224 */  addiu      $v0, $zero, 0x72
/* 7AAB914 8007FBE4 0780013C */  lui        $at, %hi(D_8006C770)
/* 7AAB918 8007FBE8 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 7AAB91C 8007FBEC 400062A2 */  sb         $v0, 0x40($s3)
/* 7AAB920 8007FBF0 3D0060A2 */  sb         $zero, 0x3D($s3)
/* 7AAB924 8007FBF4 CDD5000C */  jal        func_80035734
/* 7AAB928 8007FBF8 3F0060A2 */   sb        $zero, 0x3F($s3)
.Llevel_37_8007FBFC:
/* 7AAB92C 8007FBFC 0A000224 */  addiu      $v0, $zero, 0xA
/* 7AAB930 8007FC00 480062A2 */  sb         $v0, 0x48($s3)
.Llevel_37_8007FC04:
/* 7AAB934 8007FC04 9400BF8F */  lw         $ra, 0x94($sp)
/* 7AAB938 8007FC08 9000B68F */  lw         $s6, 0x90($sp)
/* 7AAB93C 8007FC0C 8C00B58F */  lw         $s5, 0x8C($sp)
/* 7AAB940 8007FC10 8800B48F */  lw         $s4, 0x88($sp)
/* 7AAB944 8007FC14 8400B38F */  lw         $s3, 0x84($sp)
/* 7AAB948 8007FC18 8000B28F */  lw         $s2, 0x80($sp)
/* 7AAB94C 8007FC1C 7C00B18F */  lw         $s1, 0x7C($sp)
/* 7AAB950 8007FC20 7800B08F */  lw         $s0, 0x78($sp)
/* 7AAB954 8007FC24 9800BD27 */  addiu      $sp, $sp, 0x98
/* 7AAB958 8007FC28 0800E003 */  jr         $ra
/* 7AAB95C 8007FC2C 00000000 */   nop
.size func_level_37_8007EFFC, . - func_level_37_8007EFFC
