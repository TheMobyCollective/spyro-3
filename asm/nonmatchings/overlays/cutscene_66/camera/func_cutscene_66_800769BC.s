.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_66_800769BC
/* 12CCEEC 800769BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 12CCEF0 800769C0 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 12CCEF4 800769C4 DCED8424 */  addiu      $a0, $a0, %lo(D_8006EDDC)
/* 12CCEF8 800769C8 1400BFAF */  sw         $ra, 0x14($sp)
/* 12CCEFC 800769CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 12CCF00 800769D0 0000828C */  lw         $v0, 0x0($a0)
/* 12CCF04 800769D4 0780033C */  lui        $v1, %hi(D_8006C648)
/* 12CCF08 800769D8 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 12CCF0C 800769DC 1000858C */  lw         $a1, 0x10($a0)
/* 12CCF10 800769E0 21104300 */  addu       $v0, $v0, $v1
/* 12CCF14 800769E4 FFFFA324 */  addiu      $v1, $a1, -0x1
/* 12CCF18 800769E8 000082AC */  sw         $v0, 0x0($a0)
/* 12CCF1C 800769EC 2A106200 */  slt        $v0, $v1, $v0
/* 12CCF20 800769F0 02004010 */  beqz       $v0, .Lcutscene_66_800769FC
/* 12CCF24 800769F4 00000000 */   nop
/* 12CCF28 800769F8 000083AC */  sw         $v1, 0x0($a0)
.Lcutscene_66_800769FC:
/* 12CCF2C 800769FC 0000848C */  lw         $a0, 0x0($a0)
/* 12CCF30 80076A00 00000000 */  nop
/* 12CCF34 80076A04 14008228 */  slti       $v0, $a0, 0x14
/* 12CCF38 80076A08 0B004010 */  beqz       $v0, .Lcutscene_66_80076A38
/* 12CCF3C 80076A0C 0F000224 */   addiu     $v0, $zero, 0xF
/* 12CCF40 80076A10 23104400 */  subu       $v0, $v0, $a0
/* 12CCF44 80076A14 00110200 */  sll        $v0, $v0, 4
/* 12CCF48 80076A18 0780013C */  lui        $at, %hi(D_8006C598)
/* 12CCF4C 80076A1C 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 12CCF50 80076A20 21004104 */  bgez       $v0, .Lcutscene_66_80076AA8
/* 12CCF54 80076A24 00000000 */   nop
/* 12CCF58 80076A28 0780013C */  lui        $at, %hi(D_8006C598)
/* 12CCF5C 80076A2C 98C520AC */  sw         $zero, %lo(D_8006C598)($at)
/* 12CCF60 80076A30 AADA0108 */  j          .Lcutscene_66_80076AA8
/* 12CCF64 80076A34 00000000 */   nop
.Lcutscene_66_80076A38:
/* 12CCF68 80076A38 2118A000 */  addu       $v1, $a1, $zero
/* 12CCF6C 80076A3C F6FF6224 */  addiu      $v0, $v1, -0xA
/* 12CCF70 80076A40 2A104400 */  slt        $v0, $v0, $a0
/* 12CCF74 80076A44 05004010 */  beqz       $v0, .Lcutscene_66_80076A5C
/* 12CCF78 80076A48 23186400 */   subu      $v1, $v1, $a0
/* 12CCF7C 80076A4C 0A000224 */  addiu      $v0, $zero, 0xA
/* 12CCF80 80076A50 23104300 */  subu       $v0, $v0, $v1
/* 12CCF84 80076A54 A8DA0108 */  j          .Lcutscene_66_80076AA0
/* 12CCF88 80076A58 40110200 */   sll       $v0, $v0, 5
.Lcutscene_66_80076A5C:
/* 12CCF8C 80076A5C 0780023C */  lui        $v0, %hi(D_8006C598)
/* 12CCF90 80076A60 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 12CCF94 80076A64 00000000 */  nop
/* 12CCF98 80076A68 0D004014 */  bnez       $v0, .Lcutscene_66_80076AA0
/* 12CCF9C 80076A6C 20004224 */   addiu     $v0, $v0, 0x20
/* 12CCFA0 80076A70 78008228 */  slti       $v0, $a0, 0x78
/* 12CCFA4 80076A74 0C004014 */  bnez       $v0, .Lcutscene_66_80076AA8
/* 12CCFA8 80076A78 E0FFA224 */   addiu     $v0, $a1, -0x20
/* 12CCFAC 80076A7C 2A108200 */  slt        $v0, $a0, $v0
/* 12CCFB0 80076A80 09004010 */  beqz       $v0, .Lcutscene_66_80076AA8
/* 12CCFB4 80076A84 00000000 */   nop
/* 12CCFB8 80076A88 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 12CCFBC 80076A8C 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 12CCFC0 80076A90 00000000 */  nop
/* 12CCFC4 80076A94 40094230 */  andi       $v0, $v0, 0x940
/* 12CCFC8 80076A98 03004010 */  beqz       $v0, .Lcutscene_66_80076AA8
/* 12CCFCC 80076A9C 20000224 */   addiu     $v0, $zero, 0x20
.Lcutscene_66_80076AA0:
/* 12CCFD0 80076AA0 0780013C */  lui        $at, %hi(D_8006C598)
/* 12CCFD4 80076AA4 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
.Lcutscene_66_80076AA8:
/* 12CCFD8 80076AA8 0780033C */  lui        $v1, %hi(D_8006C598)
/* 12CCFDC 80076AAC 98C5638C */  lw         $v1, %lo(D_8006C598)($v1)
/* 12CCFE0 80076AB0 00000000 */  nop
/* 12CCFE4 80076AB4 FF006228 */  slti       $v0, $v1, 0xFF
/* 12CCFE8 80076AB8 07004014 */  bnez       $v0, .Lcutscene_66_80076AD8
/* 12CCFEC 80076ABC FF000224 */   addiu     $v0, $zero, 0xFF
/* 12CCFF0 80076AC0 0780013C */  lui        $at, %hi(D_8006C598)
/* 12CCFF4 80076AC4 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 12CCFF8 80076AC8 08DA010C */  jal        func_cutscene_66_80076820
/* 12CCFFC 80076ACC 00000000 */   nop
/* 12CD000 80076AD0 47DB0108 */  j          .Lcutscene_66_80076D1C
/* 12CD004 80076AD4 00000000 */   nop
.Lcutscene_66_80076AD8:
/* 12CD008 80076AD8 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* 12CD00C 80076ADC DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* 12CD010 80076AE0 00000000 */  nop
/* 12CD014 80076AE4 02004228 */  slti       $v0, $v0, 0x2
/* 12CD018 80076AE8 13004014 */  bnez       $v0, .Lcutscene_66_80076B38
/* 12CD01C 80076AEC 00000000 */   nop
/* 12CD020 80076AF0 0780043C */  lui        $a0, %hi(D_8006EE14)
/* 12CD024 80076AF4 14EE848C */  lw         $a0, %lo(D_8006EE14)($a0)
/* 12CD028 80076AF8 00000000 */  nop
/* 12CD02C 80076AFC 09008104 */  bgez       $a0, .Lcutscene_66_80076B24
/* 12CD030 80076B00 00010224 */   addiu     $v0, $zero, 0x100
/* 12CD034 80076B04 21200000 */  addu       $a0, $zero, $zero
/* 12CD038 80076B08 21280000 */  addu       $a1, $zero, $zero
/* 12CD03C 80076B0C D4EE000C */  jal        PlaySound
/* 12CD040 80076B10 04000624 */   addiu     $a2, $zero, 0x4
/* 12CD044 80076B14 0780013C */  lui        $at, %hi(D_8006EE14)
/* 12CD048 80076B18 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 12CD04C 80076B1C CEDA0108 */  j          .Lcutscene_66_80076B38
/* 12CD050 80076B20 00000000 */   nop
.Lcutscene_66_80076B24:
/* 12CD054 80076B24 23104300 */  subu       $v0, $v0, $v1
/* 12CD058 80076B28 40280200 */  sll        $a1, $v0, 1
/* 12CD05C 80076B2C 2128A200 */  addu       $a1, $a1, $v0
/* 12CD060 80076B30 50F0000C */  jal        func_8003C140
/* 12CD064 80076B34 C0280500 */   sll       $a1, $a1, 3
.Lcutscene_66_80076B38:
/* 12CD068 80076B38 0780103C */  lui        $s0, %hi(D_8006EDE8)
/* 12CD06C 80076B3C E8ED1026 */  addiu      $s0, $s0, %lo(D_8006EDE8)
/* 12CD070 80076B40 0000028E */  lw         $v0, 0x0($s0)
/* 12CD074 80076B44 00000000 */  nop
/* 12CD078 80076B48 10004104 */  bgez       $v0, .Lcutscene_66_80076B8C
/* 12CD07C 80076B4C 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 12CD080 80076B50 FE40010C */  jal        func_800503F8
/* 12CD084 80076B54 00000000 */   nop
/* 12CD088 80076B58 0C004014 */  bnez       $v0, .Lcutscene_66_80076B8C
/* 12CD08C 80076B5C 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 12CD090 80076B60 0780053C */  lui        $a1, %hi(D_8006EDE0)
/* 12CD094 80076B64 E0EDA58C */  lw         $a1, %lo(D_8006EDE0)($a1)
/* 12CD098 80076B68 00000000 */  nop
/* 12CD09C 80076B6C 0100A524 */  addiu      $a1, $a1, 0x1
/* 12CD0A0 80076B70 0100A230 */  andi       $v0, $a1, 0x1
/* 12CD0A4 80076B74 80100200 */  sll        $v0, $v0, 2
/* 12CD0A8 80076B78 21100202 */  addu       $v0, $s0, $v0
/* 12CD0AC 80076B7C 2000448C */  lw         $a0, 0x20($v0)
/* 12CD0B0 80076B80 F8DB010C */  jal        func_cutscene_66_80076FE0
/* 12CD0B4 80076B84 01000624 */   addiu     $a2, $zero, 0x1
/* 12CD0B8 80076B88 8888063C */  lui        $a2, (0x88888889 >> 16)
.Lcutscene_66_80076B8C:
/* 12CD0BC 80076B8C 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 12CD0C0 80076B90 DCED848C */  lw         $a0, %lo(D_8006EDDC)($a0)
/* 12CD0C4 80076B94 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
/* 12CD0C8 80076B98 18008600 */  mult       $a0, $a2
/* 12CD0CC 80076B9C 0780073C */  lui        $a3, %hi(D_8006EDE0)
/* 12CD0D0 80076BA0 E0EDE724 */  addiu      $a3, $a3, %lo(D_8006EDE0)
/* 12CD0D4 80076BA4 0780053C */  lui        $a1, %hi(D_8006C648)
/* 12CD0D8 80076BA8 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 12CD0DC 80076BAC C31F0400 */  sra        $v1, $a0, 31
/* 12CD0E0 80076BB0 10480000 */  mfhi       $t1
/* 12CD0E4 80076BB4 21102401 */  addu       $v0, $t1, $a0
/* 12CD0E8 80076BB8 83110200 */  sra        $v0, $v0, 6
/* 12CD0EC 80076BBC 23184300 */  subu       $v1, $v0, $v1
/* 12CD0F0 80076BC0 00110300 */  sll        $v0, $v1, 4
/* 12CD0F4 80076BC4 23104300 */  subu       $v0, $v0, $v1
/* 12CD0F8 80076BC8 C0100200 */  sll        $v0, $v0, 3
/* 12CD0FC 80076BCC 23108200 */  subu       $v0, $a0, $v0
/* 12CD100 80076BD0 0000E3AC */  sw         $v1, 0x0($a3)
/* 12CD104 80076BD4 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 12CD108 80076BD8 E4ED22AC */  sw         $v0, %lo(D_8006EDE4)($at)
/* 12CD10C 80076BDC 2A104500 */  slt        $v0, $v0, $a1
/* 12CD110 80076BE0 18004010 */  beqz       $v0, .Lcutscene_66_80076C44
/* 12CD114 80076BE4 00000000 */   nop
/* 12CD118 80076BE8 0780023C */  lui        $v0, %hi(D_8006EDE8)
/* 12CD11C 80076BEC E8ED428C */  lw         $v0, %lo(D_8006EDE8)($v0)
/* 12CD120 80076BF0 00000000 */  nop
/* 12CD124 80076BF4 2A104300 */  slt        $v0, $v0, $v1
/* 12CD128 80076BF8 12004010 */  beqz       $v0, .Lcutscene_66_80076C44
/* 12CD12C 80076BFC 23208500 */   subu      $a0, $a0, $a1
/* 12CD130 80076C00 18008600 */  mult       $a0, $a2
/* 12CD134 80076C04 C31F0400 */  sra        $v1, $a0, 31
/* 12CD138 80076C08 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 12CD13C 80076C0C DCED24AC */  sw         $a0, %lo(D_8006EDDC)($at)
/* 12CD140 80076C10 10480000 */  mfhi       $t1
/* 12CD144 80076C14 21102401 */  addu       $v0, $t1, $a0
/* 12CD148 80076C18 83110200 */  sra        $v0, $v0, 6
/* 12CD14C 80076C1C 23104300 */  subu       $v0, $v0, $v1
/* 12CD150 80076C20 00190200 */  sll        $v1, $v0, 4
/* 12CD154 80076C24 23186200 */  subu       $v1, $v1, $v0
/* 12CD158 80076C28 C0180300 */  sll        $v1, $v1, 3
/* 12CD15C 80076C2C 23208300 */  subu       $a0, $a0, $v1
/* 12CD160 80076C30 0000E2AC */  sw         $v0, 0x0($a3)
/* 12CD164 80076C34 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 12CD168 80076C38 E4ED24AC */  sw         $a0, %lo(D_8006EDE4)($at)
/* 12CD16C 80076C3C B7EF000C */  jal        func_8003BEDC
/* 12CD170 80076C40 00000000 */   nop
.Lcutscene_66_80076C44:
/* 12CD174 80076C44 0780063C */  lui        $a2, %hi(D_8006EDE4)
/* 12CD178 80076C48 E4EDC624 */  addiu      $a2, $a2, %lo(D_8006EDE4)
/* 12CD17C 80076C4C 0000C38C */  lw         $v1, 0x0($a2)
/* 12CD180 80076C50 00000000 */  nop
/* 12CD184 80076C54 2A006010 */  beqz       $v1, .Lcutscene_66_80076D00
/* 12CD188 80076C58 00000000 */   nop
/* 12CD18C 80076C5C 0780023C */  lui        $v0, %hi(D_8006C648)
/* 12CD190 80076C60 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 12CD194 80076C64 00000000 */  nop
/* 12CD198 80076C68 2A104300 */  slt        $v0, $v0, $v1
/* 12CD19C 80076C6C 24004014 */  bnez       $v0, .Lcutscene_66_80076D00
/* 12CD1A0 80076C70 00000000 */   nop
/* 12CD1A4 80076C74 0780033C */  lui        $v1, %hi(D_8006EDE0)
/* 12CD1A8 80076C78 E0ED638C */  lw         $v1, %lo(D_8006EDE0)($v1)
/* 12CD1AC 80076C7C 0780023C */  lui        $v0, %hi(D_8006EDF0)
/* 12CD1B0 80076C80 F0ED428C */  lw         $v0, %lo(D_8006EDF0)($v0)
/* 12CD1B4 80076C84 01006524 */  addiu      $a1, $v1, 0x1
/* 12CD1B8 80076C88 2A10A200 */  slt        $v0, $a1, $v0
/* 12CD1BC 80076C8C 1C004010 */  beqz       $v0, .Lcutscene_66_80076D00
/* 12CD1C0 80076C90 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 12CD1C4 80076C94 0780013C */  lui        $at, %hi(D_8006EDE8)
/* 12CD1C8 80076C98 E8ED22AC */  sw         $v0, %lo(D_8006EDE8)($at)
/* 12CD1CC 80076C9C 0100A230 */  andi       $v0, $a1, 0x1
/* 12CD1D0 80076CA0 80100200 */  sll        $v0, $v0, 2
/* 12CD1D4 80076CA4 2110C200 */  addu       $v0, $a2, $v0
/* 12CD1D8 80076CA8 80180300 */  sll        $v1, $v1, 2
/* 12CD1DC 80076CAC 0780043C */  lui        $a0, %hi(D_8006E470)
/* 12CD1E0 80076CB0 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 12CD1E4 80076CB4 2400458C */  lw         $a1, 0x24($v0)
/* 12CD1E8 80076CB8 0780083C */  lui        $t0, %hi(D_8006EDF8)
/* 12CD1EC 80076CBC F8ED088D */  lw         $t0, %lo(D_8006EDF8)($t0)
/* 12CD1F0 80076CC0 0780063C */  lui        $a2, %hi(D_8006C58C)
/* 12CD1F4 80076CC4 8CC5C68C */  lw         $a2, %lo(D_8006C58C)($a2)
/* 12CD1F8 80076CC8 21406800 */  addu       $t0, $v1, $t0
/* 12CD1FC 80076CCC 40100600 */  sll        $v0, $a2, 1
/* 12CD200 80076CD0 21104600 */  addu       $v0, $v0, $a2
/* 12CD204 80076CD4 C0100200 */  sll        $v0, $v0, 3
/* 12CD208 80076CD8 0780063C */  lui        $a2, %hi(D_8006EDF4)
/* 12CD20C 80076CDC F4EDC68C */  lw         $a2, %lo(D_8006EDF4)($a2)
/* 12CD210 80076CE0 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 12CD214 80076CE4 21082200 */  addu       $at, $at, $v0
/* 12CD218 80076CE8 18D9228C */  lw         $v0, %lo(D_8006D8D8 + 0x40)($at)
/* 12CD21C 80076CEC 21186600 */  addu       $v1, $v1, $a2
/* 12CD220 80076CF0 0400678C */  lw         $a3, 0x4($v1)
/* 12CD224 80076CF4 0400068D */  lw         $a2, 0x4($t0)
/* 12CD228 80076CF8 A041010C */  jal        func_80050680
/* 12CD22C 80076CFC 21384700 */   addu      $a3, $v0, $a3
.Lcutscene_66_80076D00:
/* 12CD230 80076D00 0780033C */  lui        $v1, %hi(D_8006EDE4)
/* 12CD234 80076D04 E4ED6324 */  addiu      $v1, $v1, %lo(D_8006EDE4)
/* 12CD238 80076D08 0000628C */  lw         $v0, 0x0($v1)
/* 12CD23C 80076D0C 00000000 */  nop
/* 12CD240 80076D10 FE004230 */  andi       $v0, $v0, 0xFE
/* 12CD244 80076D14 70DC010C */  jal        func_cutscene_66_800771C0
/* 12CD248 80076D18 000062AC */   sw        $v0, 0x0($v1)
.Lcutscene_66_80076D1C:
/* 12CD24C 80076D1C 1400BF8F */  lw         $ra, 0x14($sp)
/* 12CD250 80076D20 1000B08F */  lw         $s0, 0x10($sp)
/* 12CD254 80076D24 1800BD27 */  addiu      $sp, $sp, 0x18
/* 12CD258 80076D28 0800E003 */  jr         $ra
/* 12CD25C 80076D2C 00000000 */   nop
.size func_cutscene_66_800769BC, . - func_cutscene_66_800769BC
