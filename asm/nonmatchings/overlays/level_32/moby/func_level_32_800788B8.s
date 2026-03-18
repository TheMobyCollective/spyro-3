.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_800788B8
/* 6DDFDE8 800788B8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6DDFDEC 800788BC 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 6DDFDF0 800788C0 21888000 */  addu       $s1, $a0, $zero
/* 6DDFDF4 800788C4 3400B3AF */  sw         $s3, 0x34($sp)
/* 6DDFDF8 800788C8 3800B4AF */  sw         $s4, 0x38($sp)
/* 6DDFDFC 800788CC 0780143C */  lui        $s4, %hi(D_80070328 + 0x24C)
/* 6DDFE00 800788D0 74059426 */  addiu      $s4, $s4, %lo(D_80070328 + 0x24C)
/* 6DDFE04 800788D4 01000324 */  addiu      $v1, $zero, 0x1
/* 6DDFE08 800788D8 4400BFAF */  sw         $ra, 0x44($sp)
/* 6DDFE0C 800788DC 4000B6AF */  sw         $s6, 0x40($sp)
/* 6DDFE10 800788E0 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 6DDFE14 800788E4 3000B2AF */  sw         $s2, 0x30($sp)
/* 6DDFE18 800788E8 2800B0AF */  sw         $s0, 0x28($sp)
/* 6DDFE1C 800788EC 0000828E */  lw         $v0, 0x0($s4)
/* 6DDFE20 800788F0 0000328E */  lw         $s2, 0x0($s1)
/* 6DDFE24 800788F4 02004314 */  bne        $v0, $v1, .Llevel_32_80078900
/* 6DDFE28 800788F8 1404133C */   lui       $s3, (0x4140000 >> 16)
/* 6DDFE2C 800788FC 1C04133C */  lui        $s3, (0x41C0000 >> 16)
.Llevel_32_80078900:
/* 6DDFE30 80078900 1000428E */  lw         $v0, 0x10($s2)
/* 6DDFE34 80078904 00000000 */  nop
/* 6DDFE38 80078908 03004010 */  beqz       $v0, .Llevel_32_80078918
/* 6DDFE3C 8007890C 00000000 */   nop
/* 6DDFE40 80078910 05DC000C */  jal        func_80037014
/* 6DDFE44 80078914 21202002 */   addu      $a0, $s1, $zero
.Llevel_32_80078918:
/* 6DDFE48 80078918 0680023C */  lui        $v0, %hi(D_8006581C)
/* 6DDFE4C 8007891C 1C58428C */  lw         $v0, %lo(D_8006581C)($v0)
/* 6DDFE50 80078920 00000000 */  nop
/* 6DDFE54 80078924 02004228 */  slti       $v0, $v0, 0x2
/* 6DDFE58 80078928 45004014 */  bnez       $v0, .Llevel_32_80078A40
/* 6DDFE5C 8007892C C9000224 */   addiu     $v0, $zero, 0xC9
/* 6DDFE60 80078930 36002386 */  lh         $v1, 0x36($s1)
/* 6DDFE64 80078934 00000000 */  nop
/* 6DDFE68 80078938 41006214 */  bne        $v1, $v0, .Llevel_32_80078A40
/* 6DDFE6C 8007893C 0C003026 */   addiu     $s0, $s1, 0xC
/* 6DDFE70 80078940 21200002 */  addu       $a0, $s0, $zero
/* 6DDFE74 80078944 CD3C010C */  jal        func_8004F334
/* 6DDFE78 80078948 B4FD8526 */   addiu     $a1, $s4, -0x24C
/* 6DDFE7C 8007894C 0680033C */  lui        $v1, %hi(D_80065810)
/* 6DDFE80 80078950 1058638C */  lw         $v1, %lo(D_80065810)($v1)
/* 6DDFE84 80078954 00000000 */  nop
/* 6DDFE88 80078958 2A104300 */  slt        $v0, $v0, $v1
/* 6DDFE8C 8007895C 38004010 */  beqz       $v0, .Llevel_32_80078A40
/* 6DDFE90 80078960 00000000 */   nop
/* 6DDFE94 80078964 1400228E */  lw         $v0, 0x14($s1)
/* 6DDFE98 80078968 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 6DDFE9C 8007896C 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 6DDFEA0 80078970 64014224 */  addiu      $v0, $v0, 0x164
/* 6DDFEA4 80078974 23186200 */  subu       $v1, $v1, $v0
/* 6DDFEA8 80078978 0680023C */  lui        $v0, %hi(D_80065818)
/* 6DDFEAC 8007897C 1858428C */  lw         $v0, %lo(D_80065818)($v0)
/* 6DDFEB0 80078980 02006104 */  bgez       $v1, .Llevel_32_8007898C
/* 6DDFEB4 80078984 00000000 */   nop
/* 6DDFEB8 80078988 23180300 */  negu       $v1, $v1
.Llevel_32_8007898C:
/* 6DDFEBC 8007898C 2A186200 */  slt        $v1, $v1, $v0
/* 6DDFEC0 80078990 2B006010 */  beqz       $v1, .Llevel_32_80078A40
/* 6DDFEC4 80078994 00000000 */   nop
/* 6DDFEC8 80078998 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDFECC 8007899C 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDFED0 800789A0 00000000 */  nop
/* 6DDFED4 800789A4 26008010 */  beqz       $a0, .Llevel_32_80078A40
/* 6DDFED8 800789A8 0C008424 */   addiu     $a0, $a0, 0xC
/* 6DDFEDC 800789AC 21280002 */  addu       $a1, $s0, $zero
/* 6DDFEE0 800789B0 8E4F000C */  jal        func_80013E38
/* 6DDFEE4 800789B4 04000624 */   addiu     $a2, $zero, 0x4
/* 6DDFEE8 800789B8 21004010 */  beqz       $v0, .Llevel_32_80078A40
/* 6DDFEEC 800789BC 00000000 */   nop
/* 6DDFEF0 800789C0 0780033C */  lui        $v1, %hi(D_8006C65C)
/* 6DDFEF4 800789C4 5CC6638C */  lw         $v1, %lo(D_8006C65C)($v1)
/* 6DDFEF8 800789C8 00000000 */  nop
/* 6DDFEFC 800789CC 0000708C */  lw         $s0, 0x0($v1)
/* 6DDFF00 800789D0 00000000 */  nop
/* 6DDFF04 800789D4 1400028E */  lw         $v0, 0x14($s0)
/* 6DDFF08 800789D8 00000000 */  nop
/* 6DDFF0C 800789DC 09004010 */  beqz       $v0, .Llevel_32_80078A04
/* 6DDFF10 800789E0 00000000 */   nop
/* 6DDFF14 800789E4 16005110 */  beq        $v0, $s1, .Llevel_32_80078A40
/* 6DDFF18 800789E8 00000000 */   nop
/* 6DDFF1C 800789EC 00000286 */  lh         $v0, 0x0($s0)
/* 6DDFF20 800789F0 00000000 */  nop
/* 6DDFF24 800789F4 12004018 */  blez       $v0, .Llevel_32_80078A40
/* 6DDFF28 800789F8 00000000 */   nop
/* 6DDFF2C 800789FC 90E20108 */  j          .Llevel_32_80078A40
/* 6DDFF30 80078A00 000000A6 */   sh        $zero, 0x0($s0)
.Llevel_32_80078A04:
/* 6DDFF34 80078A04 09000224 */  addiu      $v0, $zero, 0x9
/* 6DDFF38 80078A08 490062A0 */  sb         $v0, 0x49($v1)
/* 6DDFF3C 80078A0C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDFF40 80078A10 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDFF44 80078A14 02000592 */  lbu        $a1, 0x2($s0)
/* 6DDFF48 80078A18 140011AE */  sw         $s1, 0x14($s0)
/* 6DDFF4C 80078A1C F0EF000C */  jal        func_8003BFC0
/* 6DDFF50 80078A20 000000A6 */   sh        $zero, 0x0($s0)
/* 6DDFF54 80078A24 06004014 */  bnez       $v0, .Llevel_32_80078A40
/* 6DDFF58 80078A28 21280000 */   addu      $a1, $zero, $zero
/* 6DDFF5C 80078A2C 0780043C */  lui        $a0, %hi(D_8006C65C)
/* 6DDFF60 80078A30 5CC6848C */  lw         $a0, %lo(D_8006C65C)($a0)
/* 6DDFF64 80078A34 AFEE000C */  jal        func_8003BABC
/* 6DDFF68 80078A38 21300000 */   addu      $a2, $zero, $zero
/* 6DDFF6C 80078A3C 020002A2 */  sb         $v0, 0x2($s0)
.Llevel_32_80078A40:
/* 6DDFF70 80078A40 0000438E */  lw         $v1, 0x0($s2)
/* 6DDFF74 80078A44 00000000 */  nop
/* 6DDFF78 80078A48 39006010 */  beqz       $v1, .Llevel_32_80078B30
/* 6DDFF7C 80078A4C 00000000 */   nop
/* 6DDFF80 80078A50 0780023C */  lui        $v0, %hi(D_8006C648)
/* 6DDFF84 80078A54 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 6DDFF88 80078A58 00000000 */  nop
/* 6DDFF8C 80078A5C 21186200 */  addu       $v1, $v1, $v0
/* 6DDFF90 80078A60 40006228 */  slti       $v0, $v1, 0x40
/* 6DDFF94 80078A64 29004010 */  beqz       $v0, .Llevel_32_80078B0C
/* 6DDFF98 80078A68 000043AE */   sw        $v1, 0x0($s2)
/* 6DDFF9C 80078A6C 43100300 */  sra        $v0, $v1, 1
/* 6DDFFA0 80078A70 1800438E */  lw         $v1, 0x18($s2)
/* 6DDFFA4 80078A74 40100200 */  sll        $v0, $v0, 1
/* 6DDFFA8 80078A78 21104300 */  addu       $v0, $v0, $v1
/* 6DDFFAC 80078A7C 0400438E */  lw         $v1, 0x4($s2)
/* 6DDFFB0 80078A80 00004290 */  lbu        $v0, 0x0($v0)
/* 6DDFFB4 80078A84 00000000 */  nop
/* 6DDFFB8 80078A88 21104300 */  addu       $v0, $v0, $v1
/* 6DDFFBC 80078A8C 440022A2 */  sb         $v0, 0x44($s1)
/* 6DDFFC0 80078A90 0000428E */  lw         $v0, 0x0($s2)
/* 6DDFFC4 80078A94 1800438E */  lw         $v1, 0x18($s2)
/* 6DDFFC8 80078A98 43100200 */  sra        $v0, $v0, 1
/* 6DDFFCC 80078A9C 40100200 */  sll        $v0, $v0, 1
/* 6DDFFD0 80078AA0 21104300 */  addu       $v0, $v0, $v1
/* 6DDFFD4 80078AA4 0800438E */  lw         $v1, 0x8($s2)
/* 6DDFFD8 80078AA8 01004290 */  lbu        $v0, 0x1($v0)
/* 6DDFFDC 80078AAC 00000000 */  nop
/* 6DDFFE0 80078AB0 21104300 */  addu       $v0, $v0, $v1
/* 6DDFFE4 80078AB4 450022A2 */  sb         $v0, 0x45($s1)
/* 6DDFFE8 80078AB8 0000428E */  lw         $v0, 0x0($s2)
/* 6DDFFEC 80078ABC 1800438E */  lw         $v1, 0x18($s2)
/* 6DDFFF0 80078AC0 43100200 */  sra        $v0, $v0, 1
/* 6DDFFF4 80078AC4 40100200 */  sll        $v0, $v0, 1
/* 6DDFFF8 80078AC8 21104300 */  addu       $v0, $v0, $v1
/* 6DDFFFC 80078ACC 00004380 */  lb         $v1, 0x0($v0)
/* 6DE0000 80078AD0 01004280 */  lb         $v0, 0x1($v0)
/* 6DE0004 80078AD4 02006104 */  bgez       $v1, .Llevel_32_80078AE0
/* 6DE0008 80078AD8 00000000 */   nop
/* 6DE000C 80078ADC 23180300 */  negu       $v1, $v1
.Llevel_32_80078AE0:
/* 6DE0010 80078AE0 02004104 */  bgez       $v0, .Llevel_32_80078AEC
/* 6DE0014 80078AE4 00000000 */   nop
/* 6DE0018 80078AE8 23100200 */  negu       $v0, $v0
.Llevel_32_80078AEC:
/* 6DE001C 80078AEC 21186200 */  addu       $v1, $v1, $v0
/* 6DE0020 80078AF0 40100300 */  sll        $v0, $v1, 1
/* 6DE0024 80078AF4 21104300 */  addu       $v0, $v0, $v1
/* 6DE0028 80078AF8 0C00438E */  lw         $v1, 0xC($s2)
/* 6DE002C 80078AFC 40100200 */  sll        $v0, $v0, 1
/* 6DE0030 80078B00 21186200 */  addu       $v1, $v1, $v0
/* 6DE0034 80078B04 CCE20108 */  j          .Llevel_32_80078B30
/* 6DE0038 80078B08 140023AE */   sw        $v1, 0x14($s1)
.Llevel_32_80078B0C:
/* 6DE003C 80078B0C 0400428E */  lw         $v0, 0x4($s2)
/* 6DE0040 80078B10 000040AE */  sw         $zero, 0x0($s2)
/* 6DE0044 80078B14 440022A2 */  sb         $v0, 0x44($s1)
/* 6DE0048 80078B18 0800428E */  lw         $v0, 0x8($s2)
/* 6DE004C 80078B1C 00000000 */  nop
/* 6DE0050 80078B20 450022A2 */  sb         $v0, 0x45($s1)
/* 6DE0054 80078B24 0C00428E */  lw         $v0, 0xC($s2)
/* 6DE0058 80078B28 00000000 */  nop
/* 6DE005C 80078B2C 140022AE */  sw         $v0, 0x14($s1)
.Llevel_32_80078B30:
/* 6DE0060 80078B30 36002386 */  lh         $v1, 0x36($s1)
/* 6DE0064 80078B34 C9000224 */  addiu      $v0, $zero, 0xC9
/* 6DE0068 80078B38 03006214 */  bne        $v1, $v0, .Llevel_32_80078B48
/* 6DE006C 80078B3C CA000224 */   addiu     $v0, $zero, 0xCA
/* 6DE0070 80078B40 D4E20108 */  j          .Llevel_32_80078B50
/* 6DE0074 80078B44 8212023C */   lui       $v0, (0x12820000 >> 16)
.Llevel_32_80078B48:
/* 6DE0078 80078B48 02006214 */  bne        $v1, $v0, .Llevel_32_80078B54
/* 6DE007C 80078B4C 0800023C */   lui       $v0, (0x80000 >> 16)
.Llevel_32_80078B50:
/* 6DE0080 80078B50 25986202 */  or         $s3, $s3, $v0
.Llevel_32_80078B54:
/* 6DE0084 80078B54 1800228E */  lw         $v0, 0x18($s1)
/* 6DE0088 80078B58 00000000 */  nop
/* 6DE008C 80078B5C 24105300 */  and        $v0, $v0, $s3
/* 6DE0090 80078B60 6F004010 */  beqz       $v0, .Llevel_32_80078D20
/* 6DE0094 80078B64 21202002 */   addu      $a0, $s1, $zero
/* 6DE0098 80078B68 21280000 */  addu       $a1, $zero, $zero
/* 6DE009C 80078B6C AFEE000C */  jal        func_8003BABC
/* 6DE00A0 80078B70 21300000 */   addu      $a2, $zero, $zero
/* 6DE00A4 80078B74 36002386 */  lh         $v1, 0x36($s1)
/* 6DE00A8 80078B78 C9000224 */  addiu      $v0, $zero, 0xC9
/* 6DE00AC 80078B7C 06006214 */  bne        $v1, $v0, .Llevel_32_80078B98
/* 6DE00B0 80078B80 90000224 */   addiu     $v0, $zero, 0x90
/* 6DE00B4 80078B84 64000224 */  addiu      $v0, $zero, 0x64
/* 6DE00B8 80078B88 0C001224 */  addiu      $s2, $zero, 0xC
/* 6DE00BC 80078B8C 05001424 */  addiu      $s4, $zero, 0x5
/* 6DE00C0 80078B90 E9E20108 */  j          .Llevel_32_80078BA4
/* 6DE00C4 80078B94 33011324 */   addiu     $s3, $zero, 0x133
.Llevel_32_80078B98:
/* 6DE00C8 80078B98 10001224 */  addiu      $s2, $zero, 0x10
/* 6DE00CC 80078B9C 08001424 */  addiu      $s4, $zero, 0x8
/* 6DE00D0 80078BA0 34011324 */  addiu      $s3, $zero, 0x134
.Llevel_32_80078BA4:
/* 6DE00D4 80078BA4 490022A2 */  sb         $v0, 0x49($s1)
/* 6DE00D8 80078BA8 22004012 */  beqz       $s2, .Llevel_32_80078C34
/* 6DE00DC 80078BAC 21800000 */   addu      $s0, $zero, $zero
/* 6DE00E0 80078BB0 05001624 */  addiu      $s6, $zero, 0x5
/* 6DE00E4 80078BB4 01001524 */  addiu      $s5, $zero, 0x1
.Llevel_32_80078BB8:
/* 6DE00E8 80078BB8 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DE00EC 80078BBC 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DE00F0 80078BC0 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DE00F4 80078BC4 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DE00F8 80078BC8 00000000 */  nop
/* 6DE00FC 80078BCC 23104300 */  subu       $v0, $v0, $v1
/* 6DE0100 80078BD0 15004228 */  slti       $v0, $v0, 0x15
/* 6DE0104 80078BD4 17004014 */  bnez       $v0, .Llevel_32_80078C34
/* 6DE0108 80078BD8 21206002 */   addu      $a0, $s3, $zero
/* 6DE010C 80078BDC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DE0110 80078BE0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DE0114 80078BE4 00000000 */  nop
/* 6DE0118 80078BE8 09F84000 */  jalr       $v0
/* 6DE011C 80078BEC 21282002 */   addu      $a1, $s1, $zero
/* 6DE0120 80078BF0 21204000 */  addu       $a0, $v0, $zero
/* 6DE0124 80078BF4 2A101402 */  slt        $v0, $s0, $s4
/* 6DE0128 80078BF8 03004010 */  beqz       $v0, .Llevel_32_80078C08
/* 6DE012C 80078BFC 04000224 */   addiu     $v0, $zero, 0x4
/* 6DE0130 80078C00 04E30108 */  j          .Llevel_32_80078C10
/* 6DE0134 80078C04 490096A0 */   sb        $s6, 0x49($a0)
.Llevel_32_80078C08:
/* 6DE0138 80078C08 3C0095A0 */  sb         $s5, 0x3C($a0)
/* 6DE013C 80078C0C 490082A0 */  sb         $v0, 0x49($a0)
.Llevel_32_80078C10:
/* 6DE0140 80078C10 36002386 */  lh         $v1, 0x36($s1)
/* 6DE0144 80078C14 C9000224 */  addiu      $v0, $zero, 0xC9
/* 6DE0148 80078C18 02006210 */  beq        $v1, $v0, .Llevel_32_80078C24
/* 6DE014C 80078C1C 00000000 */   nop
/* 6DE0150 80078C20 540095A0 */  sb         $s5, 0x54($a0)
.Llevel_32_80078C24:
/* 6DE0154 80078C24 01001026 */  addiu      $s0, $s0, 0x1
/* 6DE0158 80078C28 2A101202 */  slt        $v0, $s0, $s2
/* 6DE015C 80078C2C E2FF4014 */  bnez       $v0, .Llevel_32_80078BB8
/* 6DE0160 80078C30 00000000 */   nop
.Llevel_32_80078C34:
/* 6DE0164 80078C34 36002386 */  lh         $v1, 0x36($s1)
/* 6DE0168 80078C38 C9000224 */  addiu      $v0, $zero, 0xC9
/* 6DE016C 80078C3C 04006214 */  bne        $v1, $v0, .Llevel_32_80078C50
/* 6DE0170 80078C40 21800000 */   addu      $s0, $zero, $zero
/* 6DE0174 80078C44 0400022A */  slti       $v0, $s0, 0x4
.Llevel_32_80078C48:
/* 6DE0178 80078C48 2D004010 */  beqz       $v0, .Llevel_32_80078D00
/* 6DE017C 80078C4C 21202002 */   addu      $a0, $s1, $zero
.Llevel_32_80078C50:
/* 6DE0180 80078C50 1000A427 */  addiu      $a0, $sp, 0x10
.Llevel_32_80078C54:
/* 6DE0184 80078C54 5E3C010C */  jal        func_8004F178
/* 6DE0188 80078C58 0C002526 */   addiu     $a1, $s1, 0xC
/* 6DE018C 80078C5C 9171010C */  jal        rand
/* 6DE0190 80078C60 01001026 */   addiu     $s0, $s0, 0x1
/* 6DE0194 80078C64 1000A38F */  lw         $v1, 0x10($sp)
/* 6DE0198 80078C68 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE019C 80078C6C 80006324 */  addiu      $v1, $v1, 0x80
/* 6DE01A0 80078C70 23186200 */  subu       $v1, $v1, $v0
/* 6DE01A4 80078C74 9171010C */  jal        rand
/* 6DE01A8 80078C78 1000A3AF */   sw        $v1, 0x10($sp)
/* 6DE01AC 80078C7C 1400A38F */  lw         $v1, 0x14($sp)
/* 6DE01B0 80078C80 FF004230 */  andi       $v0, $v0, 0xFF
/* 6DE01B4 80078C84 80006324 */  addiu      $v1, $v1, 0x80
/* 6DE01B8 80078C88 23186200 */  subu       $v1, $v1, $v0
/* 6DE01BC 80078C8C 9171010C */  jal        rand
/* 6DE01C0 80078C90 1400A3AF */   sw        $v1, 0x14($sp)
/* 6DE01C4 80078C94 01000424 */  addiu      $a0, $zero, 0x1
/* 6DE01C8 80078C98 02000524 */  addiu      $a1, $zero, 0x2
/* 6DE01CC 80078C9C 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE01D0 80078CA0 21380000 */  addu       $a3, $zero, $zero
/* 6DE01D4 80078CA4 FF014230 */  andi       $v0, $v0, 0x1FF
/* 6DE01D8 80078CA8 1800A38F */  lw         $v1, 0x18($sp)
/* 6DE01DC 80078CAC 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 6DE01E0 80078CB0 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 6DE01E4 80078CB4 21186200 */  addu       $v1, $v1, $v0
/* 6DE01E8 80078CB8 09F80001 */  jalr       $t0
/* 6DE01EC 80078CBC 1800A3AF */   sw        $v1, 0x18($sp)
/* 6DE01F0 80078CC0 04000424 */  addiu      $a0, $zero, 0x4
/* 6DE01F4 80078CC4 46000524 */  addiu      $a1, $zero, 0x46
/* 6DE01F8 80078CC8 1000A627 */  addiu      $a2, $sp, 0x10
/* 6DE01FC 80078CCC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 6DE0200 80078CD0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 6DE0204 80078CD4 00000000 */  nop
/* 6DE0208 80078CD8 09F84000 */  jalr       $v0
/* 6DE020C 80078CDC 18000724 */   addiu     $a3, $zero, 0x18
/* 6DE0210 80078CE0 36002386 */  lh         $v1, 0x36($s1)
/* 6DE0214 80078CE4 C9000224 */  addiu      $v0, $zero, 0xC9
/* 6DE0218 80078CE8 D7FF6210 */  beq        $v1, $v0, .Llevel_32_80078C48
/* 6DE021C 80078CEC 0400022A */   slti      $v0, $s0, 0x4
/* 6DE0220 80078CF0 0800022A */  slti       $v0, $s0, 0x8
/* 6DE0224 80078CF4 D7FF4014 */  bnez       $v0, .Llevel_32_80078C54
/* 6DE0228 80078CF8 1000A427 */   addiu     $a0, $sp, 0x10
/* 6DE022C 80078CFC 21202002 */  addu       $a0, $s1, $zero
.Llevel_32_80078D00:
/* 6DE0230 80078D00 21280000 */  addu       $a1, $zero, $zero
/* 6DE0234 80078D04 21300000 */  addu       $a2, $zero, $zero
/* 6DE0238 80078D08 9ADA000C */  jal        func_80036A68
/* 6DE023C 80078D0C 21380000 */   addu      $a3, $zero, $zero
/* 6DE0240 80078D10 C656010C */  jal        func_80055B18
/* 6DE0244 80078D14 21202002 */   addu      $a0, $s1, $zero
/* 6DE0248 80078D18 6BE30108 */  j          .Llevel_32_80078DAC
/* 6DE024C 80078D1C 180020AE */   sw        $zero, 0x18($s1)
.Llevel_32_80078D20:
/* 6DE0250 80078D20 36002686 */  lh         $a2, 0x36($s1)
/* 6DE0254 80078D24 1400458E */  lw         $a1, 0x14($s2)
/* 6DE0258 80078D28 C900C638 */  xori       $a2, $a2, 0xC9
/* 6DE025C 80078D2C 29DA000C */  jal        func_800368A4
/* 6DE0260 80078D30 2B300600 */   sltu      $a2, $zero, $a2
/* 6DE0264 80078D34 140042AE */  sw         $v0, 0x14($s2)
/* 6DE0268 80078D38 1800228E */  lw         $v0, 0x18($s1)
/* 6DE026C 80078D3C 0300033C */  lui        $v1, (0x30000 >> 16)
/* 6DE0270 80078D40 24104300 */  and        $v0, $v0, $v1
/* 6DE0274 80078D44 18004010 */  beqz       $v0, .Llevel_32_80078DA8
/* 6DE0278 80078D48 00000000 */   nop
/* 6DE027C 80078D4C 0000428E */  lw         $v0, 0x0($s2)
/* 6DE0280 80078D50 00000000 */  nop
/* 6DE0284 80078D54 14004014 */  bnez       $v0, .Llevel_32_80078DA8
/* 6DE0288 80078D58 01000224 */   addiu     $v0, $zero, 0x1
/* 6DE028C 80078D5C 000042AE */  sw         $v0, 0x0($s2)
/* 6DE0290 80078D60 44002292 */  lbu        $v0, 0x44($s1)
/* 6DE0294 80078D64 00000000 */  nop
/* 6DE0298 80078D68 040042AE */  sw         $v0, 0x4($s2)
/* 6DE029C 80078D6C 45002292 */  lbu        $v0, 0x45($s1)
/* 6DE02A0 80078D70 00000000 */  nop
/* 6DE02A4 80078D74 080042AE */  sw         $v0, 0x8($s2)
/* 6DE02A8 80078D78 1400228E */  lw         $v0, 0x14($s1)
/* 6DE02AC 80078D7C 00000000 */  nop
/* 6DE02B0 80078D80 0C0042AE */  sw         $v0, 0xC($s2)
/* 6DE02B4 80078D84 36002296 */  lhu        $v0, 0x36($s1)
/* 6DE02B8 80078D88 00000000 */  nop
/* 6DE02BC 80078D8C 36FF4224 */  addiu      $v0, $v0, -0xCA
/* 6DE02C0 80078D90 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DE02C4 80078D94 04004010 */  beqz       $v0, .Llevel_32_80078DA8
/* 6DE02C8 80078D98 21202002 */   addu      $a0, $s1, $zero
/* 6DE02CC 80078D9C 01000524 */  addiu      $a1, $zero, 0x1
/* 6DE02D0 80078DA0 AFEE000C */  jal        func_8003BABC
/* 6DE02D4 80078DA4 21300000 */   addu      $a2, $zero, $zero
.Llevel_32_80078DA8:
/* 6DE02D8 80078DA8 180020AE */  sw         $zero, 0x18($s1)
.Llevel_32_80078DAC:
/* 6DE02DC 80078DAC 4400BF8F */  lw         $ra, 0x44($sp)
/* 6DE02E0 80078DB0 4000B68F */  lw         $s6, 0x40($sp)
/* 6DE02E4 80078DB4 3C00B58F */  lw         $s5, 0x3C($sp)
/* 6DE02E8 80078DB8 3800B48F */  lw         $s4, 0x38($sp)
/* 6DE02EC 80078DBC 3400B38F */  lw         $s3, 0x34($sp)
/* 6DE02F0 80078DC0 3000B28F */  lw         $s2, 0x30($sp)
/* 6DE02F4 80078DC4 2C00B18F */  lw         $s1, 0x2C($sp)
/* 6DE02F8 80078DC8 2800B08F */  lw         $s0, 0x28($sp)
/* 6DE02FC 80078DCC 4800BD27 */  addiu      $sp, $sp, 0x48
/* 6DE0300 80078DD0 0800E003 */  jr         $ra
/* 6DE0304 80078DD4 00000000 */   nop
.size func_level_32_800788B8, . - func_level_32_800788B8
