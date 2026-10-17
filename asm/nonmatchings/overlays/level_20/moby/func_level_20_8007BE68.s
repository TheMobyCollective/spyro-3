.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_122_level_20
/* 50CBB98 8007BE68 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 50CBB9C 8007BE6C 2000B0AF */  sw         $s0, 0x20($sp)
/* 50CBBA0 8007BE70 21808000 */  addu       $s0, $a0, $zero
/* 50CBBA4 8007BE74 2800BFAF */  sw         $ra, 0x28($sp)
/* 50CBBA8 8007BE78 2400B1AF */  sw         $s1, 0x24($sp)
/* 50CBBAC 8007BE7C 48000292 */  lbu        $v0, 0x48($s0)
/* 50CBBB0 8007BE80 0000118E */  lw         $s1, 0x0($s0)
/* 50CBBB4 8007BE84 0200422C */  sltiu      $v0, $v0, 0x2
/* 50CBBB8 8007BE88 65004010 */  beqz       $v0, .Llevel_20_8007C020
/* 50CBBBC 8007BE8C 32000224 */   addiu     $v0, $zero, 0x32
/* 50CBBC0 8007BE90 49000392 */  lbu        $v1, 0x49($s0)
/* 50CBBC4 8007BE94 00000000 */  nop
/* 50CBBC8 8007BE98 03006214 */  bne        $v1, $v0, .Llevel_20_8007BEA8
/* 50CBBCC 8007BE9C 10000224 */   addiu     $v0, $zero, 0x10
/* 50CBBD0 8007BEA0 370022A2 */  sb         $v0, 0x37($s1)
/* 50CBBD4 8007BEA4 490000A2 */  sb         $zero, 0x49($s0)
.Llevel_20_8007BEA8:
/* 50CBBD8 8007BEA8 1800038E */  lw         $v1, 0x18($s0)
/* 50CBBDC 8007BEAC 0200023C */  lui        $v0, (0x20000 >> 16)
/* 50CBBE0 8007BEB0 24106200 */  and        $v0, $v1, $v0
/* 50CBBE4 8007BEB4 25004010 */  beqz       $v0, .Llevel_20_8007BF4C
/* 50CBBE8 8007BEB8 21200002 */   addu      $a0, $s0, $zero
/* 50CBBEC 8007BEBC 28002526 */  addiu      $a1, $s1, 0x28
/* 50CBBF0 8007BEC0 01000624 */  addiu      $a2, $zero, 0x1
/* 50CBBF4 8007BEC4 FEE2000C */  jal        func_80038BF8
/* 50CBBF8 8007BEC8 02000724 */   addiu     $a3, $zero, 0x2
/* 50CBBFC 8007BECC 58020224 */  addiu      $v0, $zero, 0x258
/* 50CBC00 8007BED0 2C0022A6 */  sh         $v0, 0x2C($s1)
/* 50CBC04 8007BED4 51000292 */  lbu        $v0, 0x51($s0)
/* 50CBC08 8007BED8 00000000 */  nop
/* 50CBC0C 8007BEDC 12004014 */  bnez       $v0, .Llevel_20_8007BF28
/* 50CBC10 8007BEE0 10000424 */   addiu     $a0, $zero, 0x10
/* 50CBC14 8007BEE4 21300000 */  addu       $a2, $zero, $zero
/* 50CBC18 8007BEE8 0C00038E */  lw         $v1, 0xC($s0)
/* 50CBC1C 8007BEEC 0780043C */  lui        $a0, %hi(D_80070328)
/* 50CBC20 8007BEF0 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 50CBC24 8007BEF4 1000028E */  lw         $v0, 0x10($s0)
/* 50CBC28 8007BEF8 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 50CBC2C 8007BEFC 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 50CBC30 8007BF00 23206400 */  subu       $a0, $v1, $a0
/* 50CBC34 8007BF04 203A010C */  jal        func_8004E880
/* 50CBC38 8007BF08 23284500 */   subu      $a1, $v0, $a1
/* 50CBC3C 8007BF0C 21204000 */  addu       $a0, $v0, $zero
/* 50CBC40 8007BF10 20000624 */  addiu      $a2, $zero, 0x20
/* 50CBC44 8007BF14 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 50CBC48 8007BF18 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 50CBC4C 8007BF1C 3ED8000C */  jal        func_800360F8
/* 50CBC50 8007BF20 40000724 */   addiu     $a3, $zero, 0x40
/* 50CBC54 8007BF24 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_20_8007BF28:
/* 50CBC58 8007BF28 21280002 */  addu       $a1, $s0, $zero
/* 50CBC5C 8007BF2C 390022A2 */  sb         $v0, 0x39($s1)
/* 50CBC60 8007BF30 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 50CBC64 8007BF34 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 50CBC68 8007BF38 00010324 */  addiu      $v1, $zero, 0x100
/* 50CBC6C 8007BF3C 09F84000 */  jalr       $v0
/* 50CBC70 8007BF40 2E0023A6 */   sh        $v1, 0x2E($s1)
/* 50CBC74 8007BF44 01F00108 */  j          .Llevel_20_8007C004
/* 50CBC78 8007BF48 21200002 */   addu      $a0, $s0, $zero
.Llevel_20_8007BF4C:
/* 50CBC7C 8007BF4C 42006010 */  beqz       $v1, .Llevel_20_8007C058
/* 50CBC80 8007BF50 28002526 */   addiu     $a1, $s1, 0x28
/* 50CBC84 8007BF54 01000624 */  addiu      $a2, $zero, 0x1
/* 50CBC88 8007BF58 FEE2000C */  jal        func_80038BF8
/* 50CBC8C 8007BF5C 02000724 */   addiu     $a3, $zero, 0x2
/* 50CBC90 8007BF60 C8000224 */  addiu      $v0, $zero, 0xC8
/* 50CBC94 8007BF64 2C0022A6 */  sh         $v0, 0x2C($s1)
/* 50CBC98 8007BF68 51000292 */  lbu        $v0, 0x51($s0)
/* 50CBC9C 8007BF6C 00000000 */  nop
/* 50CBCA0 8007BF70 12004014 */  bnez       $v0, .Llevel_20_8007BFBC
/* 50CBCA4 8007BF74 10000424 */   addiu     $a0, $zero, 0x10
/* 50CBCA8 8007BF78 21300000 */  addu       $a2, $zero, $zero
/* 50CBCAC 8007BF7C 0C00038E */  lw         $v1, 0xC($s0)
/* 50CBCB0 8007BF80 0780043C */  lui        $a0, %hi(D_80070328)
/* 50CBCB4 8007BF84 2803848C */  lw         $a0, %lo(D_80070328)($a0)
/* 50CBCB8 8007BF88 1000028E */  lw         $v0, 0x10($s0)
/* 50CBCBC 8007BF8C 0780053C */  lui        $a1, %hi(D_80070328 + 4)
/* 50CBCC0 8007BF90 2C03A58C */  lw         $a1, %lo(D_80070328 + 4)($a1)
/* 50CBCC4 8007BF94 23206400 */  subu       $a0, $v1, $a0
/* 50CBCC8 8007BF98 203A010C */  jal        func_8004E880
/* 50CBCCC 8007BF9C 23284500 */   subu      $a1, $v0, $a1
/* 50CBCD0 8007BFA0 21204000 */  addu       $a0, $v0, $zero
/* 50CBCD4 8007BFA4 20000624 */  addiu      $a2, $zero, 0x20
/* 50CBCD8 8007BFA8 0780053C */  lui        $a1, %hi(D_80070328 + 0xE)
/* 50CBCDC 8007BFAC 3603A590 */  lbu        $a1, %lo(D_80070328 + 0xE)($a1)
/* 50CBCE0 8007BFB0 3ED8000C */  jal        func_800360F8
/* 50CBCE4 8007BFB4 40000724 */   addiu     $a3, $zero, 0x40
/* 50CBCE8 8007BFB8 10000424 */  addiu      $a0, $zero, 0x10
.Llevel_20_8007BFBC:
/* 50CBCEC 8007BFBC 21280002 */  addu       $a1, $s0, $zero
/* 50CBCF0 8007BFC0 390022A2 */  sb         $v0, 0x39($s1)
/* 50CBCF4 8007BFC4 0780033C */  lui        $v1, %hi(SpawnMoby)
/* 50CBCF8 8007BFC8 E042638C */  lw         $v1, %lo(SpawnMoby)($v1)
/* 50CBCFC 8007BFCC 00010224 */  addiu      $v0, $zero, 0x100
/* 50CBD00 8007BFD0 09F86000 */  jalr       $v1
/* 50CBD04 8007BFD4 2E0022A6 */   sh        $v0, 0x2E($s1)
/* 50CBD08 8007BFD8 1800028E */  lw         $v0, 0x18($s0)
/* 50CBD0C 8007BFDC 1000033C */  lui        $v1, (0x100000 >> 16)
/* 50CBD10 8007BFE0 24104300 */  and        $v0, $v0, $v1
/* 50CBD14 8007BFE4 07004010 */  beqz       $v0, .Llevel_20_8007C004
/* 50CBD18 8007BFE8 21200002 */   addu      $a0, $s0, $zero
/* 50CBD1C 8007BFEC 2C002296 */  lhu        $v0, 0x2C($s1)
/* 50CBD20 8007BFF0 2E002396 */  lhu        $v1, 0x2E($s1)
/* 50CBD24 8007BFF4 C8004224 */  addiu      $v0, $v0, 0xC8
/* 50CBD28 8007BFF8 00016324 */  addiu      $v1, $v1, 0x100
/* 50CBD2C 8007BFFC 2C0022A6 */  sh         $v0, 0x2C($s1)
/* 50CBD30 8007C000 2E0023A6 */  sh         $v1, 0x2E($s1)
.Llevel_20_8007C004:
/* 50CBD34 8007C004 02000524 */  addiu      $a1, $zero, 0x2
/* 50CBD38 8007C008 02000224 */  addiu      $v0, $zero, 0x2
/* 50CBD3C 8007C00C 080000AE */  sw         $zero, 0x8($s0)
/* 50CBD40 8007C010 D0D3000C */  jal        func_80034F40
/* 50CBD44 8007C014 480002A2 */   sb        $v0, 0x48($s0)
/* 50CBD48 8007C018 16F00108 */  j          .Llevel_20_8007C058
/* 50CBD4C 8007C01C 00000000 */   nop
.Llevel_20_8007C020:
/* 50CBD50 8007C020 1800028E */  lw         $v0, 0x18($s0)
/* 50CBD54 8007C024 1000033C */  lui        $v1, (0x100000 >> 16)
/* 50CBD58 8007C028 24104300 */  and        $v0, $v0, $v1
/* 50CBD5C 8007C02C 0A004010 */  beqz       $v0, .Llevel_20_8007C058
/* 50CBD60 8007C030 01000424 */   addiu     $a0, $zero, 0x1
/* 50CBD64 8007C034 03000524 */  addiu      $a1, $zero, 0x3
/* 50CBD68 8007C038 0C000626 */  addiu      $a2, $s0, 0xC
/* 50CBD6C 8007C03C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 50CBD70 8007C040 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 50CBD74 8007C044 1000A727 */  addiu      $a3, $sp, 0x10
/* 50CBD78 8007C048 1000A0AF */  sw         $zero, 0x10($sp)
/* 50CBD7C 8007C04C 1400A0AF */  sw         $zero, 0x14($sp)
/* 50CBD80 8007C050 09F84000 */  jalr       $v0
/* 50CBD84 8007C054 1800A0AF */   sw        $zero, 0x18($sp)
.Llevel_20_8007C058:
/* 50CBD88 8007C058 48000392 */  lbu        $v1, 0x48($s0)
/* 50CBD8C 8007C05C 01000224 */  addiu      $v0, $zero, 0x1
/* 50CBD90 8007C060 1B006210 */  beq        $v1, $v0, .Llevel_20_8007C0D0
/* 50CBD94 8007C064 02006228 */   slti      $v0, $v1, 0x2
/* 50CBD98 8007C068 05004010 */  beqz       $v0, .Llevel_20_8007C080
/* 50CBD9C 8007C06C 00000000 */   nop
/* 50CBDA0 8007C070 08006010 */  beqz       $v1, .Llevel_20_8007C094
/* 50CBDA4 8007C074 00000000 */   nop
/* 50CBDA8 8007C078 50F00108 */  j          .Llevel_20_8007C140
/* 50CBDAC 8007C07C 00000000 */   nop
.Llevel_20_8007C080:
/* 50CBDB0 8007C080 05006228 */  slti       $v0, $v1, 0x5
/* 50CBDB4 8007C084 2E004010 */  beqz       $v0, .Llevel_20_8007C140
/* 50CBDB8 8007C088 21200002 */   addu      $a0, $s0, $zero
/* 50CBDBC 8007C08C 42F00108 */  j          .Llevel_20_8007C108
/* 50CBDC0 8007C090 00000000 */   nop
.Llevel_20_8007C094:
/* 50CBDC4 8007C094 0780023C */  lui        $v0, %hi(D_8006C770)
/* 50CBDC8 8007C098 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 50CBDCC 8007C09C 00000000 */  nop
/* 50CBDD0 8007C0A0 27004010 */  beqz       $v0, .Llevel_20_8007C140
/* 50CBDD4 8007C0A4 5A000424 */   addiu     $a0, $zero, 0x5A
/* 50CBDD8 8007C0A8 DBD8000C */  jal        func_8003636C
/* 50CBDDC 8007C0AC 2C010524 */   addiu     $a1, $zero, 0x12C
/* 50CBDE0 8007C0B0 21200002 */  addu       $a0, $s0, $zero
/* 50CBDE4 8007C0B4 01000524 */  addiu      $a1, $zero, 0x1
/* 50CBDE8 8007C0B8 180022AE */  sw         $v0, 0x18($s1)
/* 50CBDEC 8007C0BC 01000224 */  addiu      $v0, $zero, 0x1
/* 50CBDF0 8007C0C0 D0D3000C */  jal        func_80034F40
/* 50CBDF4 8007C0C4 480082A0 */   sb        $v0, 0x48($a0)
/* 50CBDF8 8007C0C8 50F00108 */  j          .Llevel_20_8007C140
/* 50CBDFC 8007C0CC 00000000 */   nop
.Llevel_20_8007C0D0:
/* 50CBE00 8007C0D0 21200002 */  addu       $a0, $s0, $zero
/* 50CBE04 8007C0D4 21282002 */  addu       $a1, $s1, $zero
/* 50CBE08 8007C0D8 5ADC000C */  jal        func_80037168
/* 50CBE0C 8007C0DC 57000624 */   addiu     $a2, $zero, 0x57
/* 50CBE10 8007C0E0 18002426 */  addiu      $a0, $s1, 0x18
/* 50CBE14 8007C0E4 69D6000C */  jal        func_800359A4
/* 50CBE18 8007C0E8 04000524 */   addiu     $a1, $zero, 0x4
/* 50CBE1C 8007C0EC 14004010 */  beqz       $v0, .Llevel_20_8007C140
/* 50CBE20 8007C0F0 21200002 */   addu      $a0, $s0, $zero
/* 50CBE24 8007C0F4 480000A2 */  sb         $zero, 0x48($s0)
/* 50CBE28 8007C0F8 D0D3000C */  jal        func_80034F40
/* 50CBE2C 8007C0FC 21280000 */   addu      $a1, $zero, $zero
/* 50CBE30 8007C100 50F00108 */  j          .Llevel_20_8007C140
/* 50CBE34 8007C104 00000000 */   nop
.Llevel_20_8007C108:
/* 50CBE38 8007C108 65D4000C */  jal        func_80035194
/* 50CBE3C 8007C10C 28002526 */   addiu     $a1, $s1, 0x28
/* 50CBE40 8007C110 00010324 */  addiu      $v1, $zero, 0x100
/* 50CBE44 8007C114 0A004314 */  bne        $v0, $v1, .Llevel_20_8007C140
/* 50CBE48 8007C118 21200002 */   addu      $a0, $s0, $zero
/* 50CBE4C 8007C11C 4957010C */  jal        func_80055D24
/* 50CBE50 8007C120 04000524 */   addiu     $a1, $zero, 0x4
/* 50CBE54 8007C124 21200002 */  addu       $a0, $s0, $zero
/* 50CBE58 8007C128 6EDA000C */  jal        func_800369B8
/* 50CBE5C 8007C12C 18000524 */   addiu     $a1, $zero, 0x18
/* 50CBE60 8007C130 32000224 */  addiu      $v0, $zero, 0x32
/* 50CBE64 8007C134 490002A2 */  sb         $v0, 0x49($s0)
/* 50CBE68 8007C138 C656010C */  jal        func_80055B18
/* 50CBE6C 8007C13C 21200002 */   addu      $a0, $s0, $zero
.Llevel_20_8007C140:
/* 50CBE70 8007C140 2800BF8F */  lw         $ra, 0x28($sp)
/* 50CBE74 8007C144 2400B18F */  lw         $s1, 0x24($sp)
/* 50CBE78 8007C148 2000B08F */  lw         $s0, 0x20($sp)
/* 50CBE7C 8007C14C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 50CBE80 8007C150 0800E003 */  jr         $ra
/* 50CBE84 8007C154 00000000 */   nop
.size MobyUpdate_122_level_20, . - MobyUpdate_122_level_20
