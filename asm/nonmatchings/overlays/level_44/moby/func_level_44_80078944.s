.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_260_level_44
/* 8B4BE74 80078944 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 8B4BE78 80078948 2800B0AF */  sw         $s0, 0x28($sp)
/* 8B4BE7C 8007894C 21808000 */  addu       $s0, $a0, $zero
/* 8B4BE80 80078950 3400BFAF */  sw         $ra, 0x34($sp)
/* 8B4BE84 80078954 3000B2AF */  sw         $s2, 0x30($sp)
/* 8B4BE88 80078958 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 8B4BE8C 8007895C 49000292 */  lbu        $v0, 0x49($s0)
/* 8B4BE90 80078960 0000128E */  lw         $s2, 0x0($s0)
/* 8B4BE94 80078964 60004014 */  bnez       $v0, .Llevel_44_80078AE8
/* 8B4BE98 80078968 00000000 */   nop
/* 8B4BE9C 8007896C 0400428E */  lw         $v0, 0x4($s2)
/* 8B4BEA0 80078970 00000000 */  nop
/* 8B4BEA4 80078974 53004018 */  blez       $v0, .Llevel_44_80078AC4
/* 8B4BEA8 80078978 47000524 */   addiu     $a1, $zero, 0x47
/* 8B4BEAC 8007897C 46000292 */  lbu        $v0, 0x46($s0)
/* 8B4BEB0 80078980 00000000 */  nop
/* 8B4BEB4 80078984 01004224 */  addiu      $v0, $v0, 0x1
/* 8B4BEB8 80078988 460002A2 */  sb         $v0, 0x46($s0)
/* 8B4BEBC 8007898C 1400428E */  lw         $v0, 0x14($s2)
/* 8B4BEC0 80078990 00000000 */  nop
/* 8B4BEC4 80078994 FAFF4224 */  addiu      $v0, $v0, -0x6
/* 8B4BEC8 80078998 140042AE */  sw         $v0, 0x14($s2)
/* 8B4BECC 8007899C 80FF4228 */  slti       $v0, $v0, -0x80
/* 8B4BED0 800789A0 02004010 */  beqz       $v0, .Llevel_44_800789AC
/* 8B4BED4 800789A4 80FF0224 */   addiu     $v0, $zero, -0x80
/* 8B4BED8 800789A8 140042AE */  sw         $v0, 0x14($s2)
.Llevel_44_800789AC:
/* 8B4BEDC 800789AC 0C00028E */  lw         $v0, 0xC($s0)
/* 8B4BEE0 800789B0 0C00438E */  lw         $v1, 0xC($s2)
/* 8B4BEE4 800789B4 00000000 */  nop
/* 8B4BEE8 800789B8 21104300 */  addu       $v0, $v0, $v1
/* 8B4BEEC 800789BC 0C0002AE */  sw         $v0, 0xC($s0)
/* 8B4BEF0 800789C0 1000028E */  lw         $v0, 0x10($s0)
/* 8B4BEF4 800789C4 1000438E */  lw         $v1, 0x10($s2)
/* 8B4BEF8 800789C8 00000000 */  nop
/* 8B4BEFC 800789CC 21104300 */  addu       $v0, $v0, $v1
/* 8B4BF00 800789D0 100002AE */  sw         $v0, 0x10($s0)
/* 8B4BF04 800789D4 1400028E */  lw         $v0, 0x14($s0)
/* 8B4BF08 800789D8 1400438E */  lw         $v1, 0x14($s2)
/* 8B4BF0C 800789DC 00000000 */  nop
/* 8B4BF10 800789E0 21104300 */  addu       $v0, $v0, $v1
/* 8B4BF14 800789E4 140002AE */  sw         $v0, 0x14($s0)
/* 8B4BF18 800789E8 00044228 */  slti       $v0, $v0, 0x400
/* 8B4BF1C 800789EC 44004014 */  bnez       $v0, .Llevel_44_80078B00
/* 8B4BF20 800789F0 0C001126 */   addiu     $s1, $s0, 0xC
/* 8B4BF24 800789F4 21202002 */  addu       $a0, $s1, $zero
/* 8B4BF28 800789F8 D668000C */  jal        func_8001A358
/* 8B4BF2C 800789FC 00200524 */   addiu     $a1, $zero, 0x2000
/* 8B4BF30 80078A00 A758010C */  jal        func_8005629C
/* 8B4BF34 80078A04 21200002 */   addu      $a0, $s0, $zero
/* 8B4BF38 80078A08 21202002 */  addu       $a0, $s1, $zero
/* 8B4BF3C 80078A0C 6564000C */  jal        func_80019194
/* 8B4BF40 80078A10 00010524 */   addiu     $a1, $zero, 0x100
/* 8B4BF44 80078A14 26004010 */  beqz       $v0, .Llevel_44_80078AB0
/* 8B4BF48 80078A18 21202002 */   addu      $a0, $s1, $zero
/* 8B4BF4C 80078A1C 0780103C */  lui        $s0, %hi(D_8007190C)
/* 8B4BF50 80078A20 0C191026 */  addiu      $s0, $s0, %lo(D_8007190C)
/* 8B4BF54 80078A24 5E3C010C */  jal        func_8004F178
/* 8B4BF58 80078A28 21280002 */   addu      $a1, $s0, $zero
/* 8B4BF5C 80078A2C 0C001126 */  addiu      $s1, $s0, 0xC
/* 8B4BF60 80078A30 21202002 */  addu       $a0, $s1, $zero
/* 8B4BF64 80078A34 C13B010C */  jal        func_8004EF04
/* 8B4BF68 80078A38 00100524 */   addiu     $a1, $zero, 0x1000
/* 8B4BF6C 80078A3C 0C00438E */  lw         $v1, 0xC($s2)
/* 8B4BF70 80078A40 0C00028E */  lw         $v0, 0xC($s0)
/* 8B4BF74 80078A44 00000000 */  nop
/* 8B4BF78 80078A48 18006200 */  mult       $v1, $v0
/* 8B4BF7C 80078A4C 1000438E */  lw         $v1, 0x10($s2)
/* 8B4BF80 80078A50 12280000 */  mflo       $a1
/* 8B4BF84 80078A54 0780023C */  lui        $v0, %hi(D_8007191C)
/* 8B4BF88 80078A58 1C19428C */  lw         $v0, %lo(D_8007191C)($v0)
/* 8B4BF8C 80078A5C 00000000 */  nop
/* 8B4BF90 80078A60 18006200 */  mult       $v1, $v0
/* 8B4BF94 80078A64 1400438E */  lw         $v1, 0x14($s2)
/* 8B4BF98 80078A68 12200000 */  mflo       $a0
/* 8B4BF9C 80078A6C 0780023C */  lui        $v0, %hi(D_80071920)
/* 8B4BFA0 80078A70 2019428C */  lw         $v0, %lo(D_80071920)($v0)
/* 8B4BFA4 80078A74 00000000 */  nop
/* 8B4BFA8 80078A78 18006200 */  mult       $v1, $v0
/* 8B4BFAC 80078A7C 2110A400 */  addu       $v0, $a1, $a0
/* 8B4BFB0 80078A80 12180000 */  mflo       $v1
/* 8B4BFB4 80078A84 21104300 */  addu       $v0, $v0, $v1
/* 8B4BFB8 80078A88 C3120200 */  sra        $v0, $v0, 11
/* 8B4BFBC 80078A8C 08004104 */  bgez       $v0, .Llevel_44_80078AB0
/* 8B4BFC0 80078A90 21202002 */   addu      $a0, $s1, $zero
/* 8B4BFC4 80078A94 00100524 */  addiu      $a1, $zero, 0x1000
/* 8B4BFC8 80078A98 233C010C */  jal        func_8004F08C
/* 8B4BFCC 80078A9C 23300200 */   negu      $a2, $v0
/* 8B4BFD0 80078AA0 0C004426 */  addiu      $a0, $s2, 0xC
/* 8B4BFD4 80078AA4 21288000 */  addu       $a1, $a0, $zero
/* 8B4BFD8 80078AA8 653C010C */  jal        func_8004F194
/* 8B4BFDC 80078AAC 21302002 */   addu      $a2, $s1, $zero
.Llevel_44_80078AB0:
/* 8B4BFE0 80078AB0 0400428E */  lw         $v0, 0x4($s2)
/* 8B4BFE4 80078AB4 00000000 */  nop
/* 8B4BFE8 80078AB8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 8B4BFEC 80078ABC 0BE30108 */  j          .Llevel_44_80078C2C
/* 8B4BFF0 80078AC0 040042AE */   sw        $v0, 0x4($s2)
.Llevel_44_80078AC4:
/* 8B4BFF4 80078AC4 0A000424 */  addiu      $a0, $zero, 0xA
/* 8B4BFF8 80078AC8 0C000626 */  addiu      $a2, $s0, 0xC
/* 8B4BFFC 80078ACC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B4C000 80078AD0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B4C004 80078AD4 00000000 */  nop
/* 8B4C008 80078AD8 09F84000 */  jalr       $v0
/* 8B4C00C 80078ADC 21380000 */   addu      $a3, $zero, $zero
/* 8B4C010 80078AE0 C0E20108 */  j          .Llevel_44_80078B00
/* 8B4C014 80078AE4 00000000 */   nop
.Llevel_44_80078AE8:
/* 8B4C018 80078AE8 0000428E */  lw         $v0, 0x0($s2)
/* 8B4C01C 80078AEC 00000000 */  nop
/* 8B4C020 80078AF0 48004290 */  lbu        $v0, 0x48($v0)
/* 8B4C024 80078AF4 00000000 */  nop
/* 8B4C028 80078AF8 05004010 */  beqz       $v0, .Llevel_44_80078B10
/* 8B4C02C 80078AFC 21300000 */   addu      $a2, $zero, $zero
.Llevel_44_80078B00:
/* 8B4C030 80078B00 C656010C */  jal        func_80055B18
/* 8B4C034 80078B04 21200002 */   addu      $a0, $s0, $zero
/* 8B4C038 80078B08 0BE30108 */  j          .Llevel_44_80078C2C
/* 8B4C03C 80078B0C 00000000 */   nop
.Llevel_44_80078B10:
/* 8B4C040 80078B10 0780033C */  lui        $v1, %hi(D_8006E020)
/* 8B4C044 80078B14 20E0638C */  lw         $v1, %lo(D_8006E020)($v1)
/* 8B4C048 80078B18 0C00048E */  lw         $a0, 0xC($s0)
/* 8B4C04C 80078B1C 0780023C */  lui        $v0, %hi(D_8006E024)
/* 8B4C050 80078B20 24E0428C */  lw         $v0, %lo(D_8006E024)($v0)
/* 8B4C054 80078B24 1000058E */  lw         $a1, 0x10($s0)
/* 8B4C058 80078B28 23206400 */  subu       $a0, $v1, $a0
/* 8B4C05C 80078B2C 203A010C */  jal        func_8004E880
/* 8B4C060 80078B30 23284500 */   subu      $a1, $v0, $a1
/* 8B4C064 80078B34 21204000 */  addu       $a0, $v0, $zero
/* 8B4C068 80078B38 80004224 */  addiu      $v0, $v0, 0x80
/* 8B4C06C 80078B3C 0780033C */  lui        $v1, %hi(D_8006C644)
/* 8B4C070 80078B40 44C6638C */  lw         $v1, %lo(D_8006C644)($v1)
/* 8B4C074 80078B44 0680063C */  lui        $a2, %hi(D_800658A0)
/* 8B4C078 80078B48 A058C624 */  addiu      $a2, $a2, %lo(D_800658A0)
/* 8B4C07C 80078B4C C0180300 */  sll        $v1, $v1, 3
/* 8B4C080 80078B50 F8016330 */  andi       $v1, $v1, 0x1F8
/* 8B4C084 80078B54 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B4C088 80078B58 21082300 */  addu       $at, $at, $v1
/* 8B4C08C 80078B5C A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 8B4C090 80078B60 21284000 */  addu       $a1, $v0, $zero
/* 8B4C094 80078B64 001C0300 */  sll        $v1, $v1, 16
/* 8B4C098 80078B68 C31D0300 */  sra        $v1, $v1, 23
/* 8B4C09C 80078B6C 21186200 */  addu       $v1, $v1, $v0
/* 8B4C0A0 80078B70 460003A2 */  sb         $v1, 0x46($s0)
/* 8B4C0A4 80078B74 49000392 */  lbu        $v1, 0x49($s0)
/* 8B4C0A8 80078B78 02000224 */  addiu      $v0, $zero, 0x2
/* 8B4C0AC 80078B7C 02006214 */  bne        $v1, $v0, .Llevel_44_80078B88
/* 8B4C0B0 80078B80 00000000 */   nop
/* 8B4C0B4 80078B84 2120A000 */  addu       $a0, $a1, $zero
.Llevel_44_80078B88:
/* 8B4C0B8 80078B88 1000A0AF */  sw         $zero, 0x10($sp)
/* 8B4C0BC 80078B8C 1400A0AF */  sw         $zero, 0x14($sp)
/* 8B4C0C0 80078B90 49000392 */  lbu        $v1, 0x49($s0)
/* 8B4C0C4 80078B94 03000224 */  addiu      $v0, $zero, 0x3
/* 8B4C0C8 80078B98 1D006210 */  beq        $v1, $v0, .Llevel_44_80078C10
/* 8B4C0CC 80078B9C FF008430 */   andi      $a0, $a0, 0xFF
/* 8B4C0D0 80078BA0 4992053C */  lui        $a1, (0x92492493 >> 16)
/* 8B4C0D4 80078BA4 40200400 */  sll        $a0, $a0, 1
/* 8B4C0D8 80078BA8 21108600 */  addu       $v0, $a0, $a2
/* 8B4C0DC 80078BAC 00004394 */  lhu        $v1, 0x0($v0)
/* 8B4C0E0 80078BB0 9324A534 */  ori        $a1, $a1, (0x92492493 & 0xFFFF)
/* 8B4C0E4 80078BB4 001C0300 */  sll        $v1, $v1, 16
/* 8B4C0E8 80078BB8 03140300 */  sra        $v0, $v1, 16
/* 8B4C0EC 80078BBC 18004500 */  mult       $v0, $a1
/* 8B4C0F0 80078BC0 C31F0300 */  sra        $v1, $v1, 31
/* 8B4C0F4 80078BC4 10400000 */  mfhi       $t0
/* 8B4C0F8 80078BC8 21100201 */  addu       $v0, $t0, $v0
/* 8B4C0FC 80078BCC 03110200 */  sra        $v0, $v0, 4
/* 8B4C100 80078BD0 23104300 */  subu       $v0, $v0, $v1
/* 8B4C104 80078BD4 00140200 */  sll        $v0, $v0, 16
/* 8B4C108 80078BD8 03140200 */  sra        $v0, $v0, 16
/* 8B4C10C 80078BDC 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B4C110 80078BE0 0680013C */  lui        $at, %hi(D_80065920)
/* 8B4C114 80078BE4 21082400 */  addu       $at, $at, $a0
/* 8B4C118 80078BE8 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8B4C11C 80078BEC 00000000 */  nop
/* 8B4C120 80078BF0 23100200 */  negu       $v0, $v0
/* 8B4C124 80078BF4 18004500 */  mult       $v0, $a1
/* 8B4C128 80078BF8 10400000 */  mfhi       $t0
/* 8B4C12C 80078BFC 21180201 */  addu       $v1, $t0, $v0
/* 8B4C130 80078C00 03190300 */  sra        $v1, $v1, 4
/* 8B4C134 80078C04 C3170200 */  sra        $v0, $v0, 31
/* 8B4C138 80078C08 23186200 */  subu       $v1, $v1, $v0
/* 8B4C13C 80078C0C 1400A3AF */  sw         $v1, 0x14($sp)
.Llevel_44_80078C10:
/* 8B4C140 80078C10 0C000426 */  addiu      $a0, $s0, 0xC
/* 8B4C144 80078C14 20050224 */  addiu      $v0, $zero, 0x520
/* 8B4C148 80078C18 1800A2AF */  sw         $v0, 0x18($sp)
/* 8B4C14C 80078C1C 0000458E */  lw         $a1, 0x0($s2)
/* 8B4C150 80078C20 1000A627 */  addiu      $a2, $sp, 0x10
/* 8B4C154 80078C24 653C010C */  jal        func_8004F194
/* 8B4C158 80078C28 0C00A524 */   addiu     $a1, $a1, 0xC
.Llevel_44_80078C2C:
/* 8B4C15C 80078C2C 3400BF8F */  lw         $ra, 0x34($sp)
/* 8B4C160 80078C30 3000B28F */  lw         $s2, 0x30($sp)
/* 8B4C164 80078C34 2C00B18F */  lw         $s1, 0x2C($sp)
/* 8B4C168 80078C38 2800B08F */  lw         $s0, 0x28($sp)
/* 8B4C16C 80078C3C 3800BD27 */  addiu      $sp, $sp, 0x38
/* 8B4C170 80078C40 0800E003 */  jr         $ra
/* 8B4C174 80078C44 00000000 */   nop
.size MobyUpdate_260_level_44, . - MobyUpdate_260_level_44
