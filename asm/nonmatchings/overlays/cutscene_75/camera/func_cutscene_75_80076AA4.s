.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_cutscene_75_80076AA4
/* 24DBFD4 80076AA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 24DBFD8 80076AA8 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 24DBFDC 80076AAC DCED8424 */  addiu      $a0, $a0, %lo(D_8006EDDC)
/* 24DBFE0 80076AB0 1400BFAF */  sw         $ra, 0x14($sp)
/* 24DBFE4 80076AB4 1000B0AF */  sw         $s0, 0x10($sp)
/* 24DBFE8 80076AB8 0000828C */  lw         $v0, 0x0($a0)
/* 24DBFEC 80076ABC 0780033C */  lui        $v1, %hi(D_8006C648)
/* 24DBFF0 80076AC0 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 24DBFF4 80076AC4 1000858C */  lw         $a1, 0x10($a0)
/* 24DBFF8 80076AC8 21104300 */  addu       $v0, $v0, $v1
/* 24DBFFC 80076ACC FFFFA324 */  addiu      $v1, $a1, -0x1
/* 24DC000 80076AD0 000082AC */  sw         $v0, 0x0($a0)
/* 24DC004 80076AD4 2A106200 */  slt        $v0, $v1, $v0
/* 24DC008 80076AD8 02004010 */  beqz       $v0, .Lcutscene_75_80076AE4
/* 24DC00C 80076ADC 00000000 */   nop
/* 24DC010 80076AE0 000083AC */  sw         $v1, 0x0($a0)
.Lcutscene_75_80076AE4:
/* 24DC014 80076AE4 0000848C */  lw         $a0, 0x0($a0)
/* 24DC018 80076AE8 00000000 */  nop
/* 24DC01C 80076AEC 14008228 */  slti       $v0, $a0, 0x14
/* 24DC020 80076AF0 0B004010 */  beqz       $v0, .Lcutscene_75_80076B20
/* 24DC024 80076AF4 0F000224 */   addiu     $v0, $zero, 0xF
/* 24DC028 80076AF8 23104400 */  subu       $v0, $v0, $a0
/* 24DC02C 80076AFC 00110200 */  sll        $v0, $v0, 4
/* 24DC030 80076B00 0780013C */  lui        $at, %hi(D_8006C598)
/* 24DC034 80076B04 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 24DC038 80076B08 21004104 */  bgez       $v0, .Lcutscene_75_80076B90
/* 24DC03C 80076B0C 00000000 */   nop
/* 24DC040 80076B10 0780013C */  lui        $at, %hi(D_8006C598)
/* 24DC044 80076B14 98C520AC */  sw         $zero, %lo(D_8006C598)($at)
/* 24DC048 80076B18 E4DA0108 */  j          .Lcutscene_75_80076B90
/* 24DC04C 80076B1C 00000000 */   nop
.Lcutscene_75_80076B20:
/* 24DC050 80076B20 2118A000 */  addu       $v1, $a1, $zero
/* 24DC054 80076B24 F6FF6224 */  addiu      $v0, $v1, -0xA
/* 24DC058 80076B28 2A104400 */  slt        $v0, $v0, $a0
/* 24DC05C 80076B2C 05004010 */  beqz       $v0, .Lcutscene_75_80076B44
/* 24DC060 80076B30 23186400 */   subu      $v1, $v1, $a0
/* 24DC064 80076B34 0A000224 */  addiu      $v0, $zero, 0xA
/* 24DC068 80076B38 23104300 */  subu       $v0, $v0, $v1
/* 24DC06C 80076B3C E2DA0108 */  j          .Lcutscene_75_80076B88
/* 24DC070 80076B40 40110200 */   sll       $v0, $v0, 5
.Lcutscene_75_80076B44:
/* 24DC074 80076B44 0780023C */  lui        $v0, %hi(D_8006C598)
/* 24DC078 80076B48 98C5428C */  lw         $v0, %lo(D_8006C598)($v0)
/* 24DC07C 80076B4C 00000000 */  nop
/* 24DC080 80076B50 0D004014 */  bnez       $v0, .Lcutscene_75_80076B88
/* 24DC084 80076B54 20004224 */   addiu     $v0, $v0, 0x20
/* 24DC088 80076B58 78008228 */  slti       $v0, $a0, 0x78
/* 24DC08C 80076B5C 0C004014 */  bnez       $v0, .Lcutscene_75_80076B90
/* 24DC090 80076B60 E0FFA224 */   addiu     $v0, $a1, -0x20
/* 24DC094 80076B64 2A108200 */  slt        $v0, $a0, $v0
/* 24DC098 80076B68 09004010 */  beqz       $v0, .Lcutscene_75_80076B90
/* 24DC09C 80076B6C 00000000 */   nop
/* 24DC0A0 80076B70 0780023C */  lui        $v0, %hi(D_8006E53C)
/* 24DC0A4 80076B74 3CE5428C */  lw         $v0, %lo(D_8006E53C)($v0)
/* 24DC0A8 80076B78 00000000 */  nop
/* 24DC0AC 80076B7C 40094230 */  andi       $v0, $v0, 0x940
/* 24DC0B0 80076B80 03004010 */  beqz       $v0, .Lcutscene_75_80076B90
/* 24DC0B4 80076B84 20000224 */   addiu     $v0, $zero, 0x20
.Lcutscene_75_80076B88:
/* 24DC0B8 80076B88 0780013C */  lui        $at, %hi(D_8006C598)
/* 24DC0BC 80076B8C 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
.Lcutscene_75_80076B90:
/* 24DC0C0 80076B90 0780033C */  lui        $v1, %hi(D_8006C598)
/* 24DC0C4 80076B94 98C5638C */  lw         $v1, %lo(D_8006C598)($v1)
/* 24DC0C8 80076B98 00000000 */  nop
/* 24DC0CC 80076B9C FF006228 */  slti       $v0, $v1, 0xFF
/* 24DC0D0 80076BA0 07004014 */  bnez       $v0, .Lcutscene_75_80076BC0
/* 24DC0D4 80076BA4 FF000224 */   addiu     $v0, $zero, 0xFF
/* 24DC0D8 80076BA8 0780013C */  lui        $at, %hi(D_8006C598)
/* 24DC0DC 80076BAC 98C522AC */  sw         $v0, %lo(D_8006C598)($at)
/* 24DC0E0 80076BB0 42DA010C */  jal        func_cutscene_75_80076908
/* 24DC0E4 80076BB4 00000000 */   nop
/* 24DC0E8 80076BB8 81DB0108 */  j          .Lcutscene_75_80076E04
/* 24DC0EC 80076BBC 00000000 */   nop
.Lcutscene_75_80076BC0:
/* 24DC0F0 80076BC0 0780023C */  lui        $v0, %hi(D_8006EDDC)
/* 24DC0F4 80076BC4 DCED428C */  lw         $v0, %lo(D_8006EDDC)($v0)
/* 24DC0F8 80076BC8 00000000 */  nop
/* 24DC0FC 80076BCC 02004228 */  slti       $v0, $v0, 0x2
/* 24DC100 80076BD0 13004014 */  bnez       $v0, .Lcutscene_75_80076C20
/* 24DC104 80076BD4 00000000 */   nop
/* 24DC108 80076BD8 0780043C */  lui        $a0, %hi(D_8006EE14)
/* 24DC10C 80076BDC 14EE848C */  lw         $a0, %lo(D_8006EE14)($a0)
/* 24DC110 80076BE0 00000000 */  nop
/* 24DC114 80076BE4 09008104 */  bgez       $a0, .Lcutscene_75_80076C0C
/* 24DC118 80076BE8 00010224 */   addiu     $v0, $zero, 0x100
/* 24DC11C 80076BEC 21200000 */  addu       $a0, $zero, $zero
/* 24DC120 80076BF0 21280000 */  addu       $a1, $zero, $zero
/* 24DC124 80076BF4 D4EE000C */  jal        PlaySound
/* 24DC128 80076BF8 04000624 */   addiu     $a2, $zero, 0x4
/* 24DC12C 80076BFC 0780013C */  lui        $at, %hi(D_8006EE14)
/* 24DC130 80076C00 14EE22AC */  sw         $v0, %lo(D_8006EE14)($at)
/* 24DC134 80076C04 08DB0108 */  j          .Lcutscene_75_80076C20
/* 24DC138 80076C08 00000000 */   nop
.Lcutscene_75_80076C0C:
/* 24DC13C 80076C0C 23104300 */  subu       $v0, $v0, $v1
/* 24DC140 80076C10 40280200 */  sll        $a1, $v0, 1
/* 24DC144 80076C14 2128A200 */  addu       $a1, $a1, $v0
/* 24DC148 80076C18 50F0000C */  jal        func_8003C140
/* 24DC14C 80076C1C C0280500 */   sll       $a1, $a1, 3
.Lcutscene_75_80076C20:
/* 24DC150 80076C20 0780103C */  lui        $s0, %hi(D_8006EDE8)
/* 24DC154 80076C24 E8ED1026 */  addiu      $s0, $s0, %lo(D_8006EDE8)
/* 24DC158 80076C28 0000028E */  lw         $v0, 0x0($s0)
/* 24DC15C 80076C2C 00000000 */  nop
/* 24DC160 80076C30 10004104 */  bgez       $v0, .Lcutscene_75_80076C74
/* 24DC164 80076C34 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 24DC168 80076C38 FE40010C */  jal        func_800503F8
/* 24DC16C 80076C3C 00000000 */   nop
/* 24DC170 80076C40 0C004014 */  bnez       $v0, .Lcutscene_75_80076C74
/* 24DC174 80076C44 8888063C */   lui       $a2, (0x88888889 >> 16)
/* 24DC178 80076C48 0780053C */  lui        $a1, %hi(D_8006EDE0)
/* 24DC17C 80076C4C E0EDA58C */  lw         $a1, %lo(D_8006EDE0)($a1)
/* 24DC180 80076C50 00000000 */  nop
/* 24DC184 80076C54 0100A524 */  addiu      $a1, $a1, 0x1
/* 24DC188 80076C58 0100A230 */  andi       $v0, $a1, 0x1
/* 24DC18C 80076C5C 80100200 */  sll        $v0, $v0, 2
/* 24DC190 80076C60 21100202 */  addu       $v0, $s0, $v0
/* 24DC194 80076C64 2000448C */  lw         $a0, 0x20($v0)
/* 24DC198 80076C68 32DC010C */  jal        func_cutscene_75_800770C8
/* 24DC19C 80076C6C 01000624 */   addiu     $a2, $zero, 0x1
/* 24DC1A0 80076C70 8888063C */  lui        $a2, (0x88888889 >> 16)
.Lcutscene_75_80076C74:
/* 24DC1A4 80076C74 0780043C */  lui        $a0, %hi(D_8006EDDC)
/* 24DC1A8 80076C78 DCED848C */  lw         $a0, %lo(D_8006EDDC)($a0)
/* 24DC1AC 80076C7C 8988C634 */  ori        $a2, $a2, (0x88888889 & 0xFFFF)
/* 24DC1B0 80076C80 18008600 */  mult       $a0, $a2
/* 24DC1B4 80076C84 0780073C */  lui        $a3, %hi(D_8006EDE0)
/* 24DC1B8 80076C88 E0EDE724 */  addiu      $a3, $a3, %lo(D_8006EDE0)
/* 24DC1BC 80076C8C 0780053C */  lui        $a1, %hi(D_8006C648)
/* 24DC1C0 80076C90 48C6A58C */  lw         $a1, %lo(D_8006C648)($a1)
/* 24DC1C4 80076C94 C31F0400 */  sra        $v1, $a0, 31
/* 24DC1C8 80076C98 10480000 */  mfhi       $t1
/* 24DC1CC 80076C9C 21102401 */  addu       $v0, $t1, $a0
/* 24DC1D0 80076CA0 83110200 */  sra        $v0, $v0, 6
/* 24DC1D4 80076CA4 23184300 */  subu       $v1, $v0, $v1
/* 24DC1D8 80076CA8 00110300 */  sll        $v0, $v1, 4
/* 24DC1DC 80076CAC 23104300 */  subu       $v0, $v0, $v1
/* 24DC1E0 80076CB0 C0100200 */  sll        $v0, $v0, 3
/* 24DC1E4 80076CB4 23108200 */  subu       $v0, $a0, $v0
/* 24DC1E8 80076CB8 0000E3AC */  sw         $v1, 0x0($a3)
/* 24DC1EC 80076CBC 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 24DC1F0 80076CC0 E4ED22AC */  sw         $v0, %lo(D_8006EDE4)($at)
/* 24DC1F4 80076CC4 2A104500 */  slt        $v0, $v0, $a1
/* 24DC1F8 80076CC8 18004010 */  beqz       $v0, .Lcutscene_75_80076D2C
/* 24DC1FC 80076CCC 00000000 */   nop
/* 24DC200 80076CD0 0780023C */  lui        $v0, %hi(D_8006EDE8)
/* 24DC204 80076CD4 E8ED428C */  lw         $v0, %lo(D_8006EDE8)($v0)
/* 24DC208 80076CD8 00000000 */  nop
/* 24DC20C 80076CDC 2A104300 */  slt        $v0, $v0, $v1
/* 24DC210 80076CE0 12004010 */  beqz       $v0, .Lcutscene_75_80076D2C
/* 24DC214 80076CE4 23208500 */   subu      $a0, $a0, $a1
/* 24DC218 80076CE8 18008600 */  mult       $a0, $a2
/* 24DC21C 80076CEC C31F0400 */  sra        $v1, $a0, 31
/* 24DC220 80076CF0 0780013C */  lui        $at, %hi(D_8006EDDC)
/* 24DC224 80076CF4 DCED24AC */  sw         $a0, %lo(D_8006EDDC)($at)
/* 24DC228 80076CF8 10480000 */  mfhi       $t1
/* 24DC22C 80076CFC 21102401 */  addu       $v0, $t1, $a0
/* 24DC230 80076D00 83110200 */  sra        $v0, $v0, 6
/* 24DC234 80076D04 23104300 */  subu       $v0, $v0, $v1
/* 24DC238 80076D08 00190200 */  sll        $v1, $v0, 4
/* 24DC23C 80076D0C 23186200 */  subu       $v1, $v1, $v0
/* 24DC240 80076D10 C0180300 */  sll        $v1, $v1, 3
/* 24DC244 80076D14 23208300 */  subu       $a0, $a0, $v1
/* 24DC248 80076D18 0000E2AC */  sw         $v0, 0x0($a3)
/* 24DC24C 80076D1C 0780013C */  lui        $at, %hi(D_8006EDE4)
/* 24DC250 80076D20 E4ED24AC */  sw         $a0, %lo(D_8006EDE4)($at)
/* 24DC254 80076D24 B7EF000C */  jal        func_8003BEDC
/* 24DC258 80076D28 00000000 */   nop
.Lcutscene_75_80076D2C:
/* 24DC25C 80076D2C 0780063C */  lui        $a2, %hi(D_8006EDE4)
/* 24DC260 80076D30 E4EDC624 */  addiu      $a2, $a2, %lo(D_8006EDE4)
/* 24DC264 80076D34 0000C38C */  lw         $v1, 0x0($a2)
/* 24DC268 80076D38 00000000 */  nop
/* 24DC26C 80076D3C 2A006010 */  beqz       $v1, .Lcutscene_75_80076DE8
/* 24DC270 80076D40 00000000 */   nop
/* 24DC274 80076D44 0780023C */  lui        $v0, %hi(D_8006C648)
/* 24DC278 80076D48 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 24DC27C 80076D4C 00000000 */  nop
/* 24DC280 80076D50 2A104300 */  slt        $v0, $v0, $v1
/* 24DC284 80076D54 24004014 */  bnez       $v0, .Lcutscene_75_80076DE8
/* 24DC288 80076D58 00000000 */   nop
/* 24DC28C 80076D5C 0780033C */  lui        $v1, %hi(D_8006EDE0)
/* 24DC290 80076D60 E0ED638C */  lw         $v1, %lo(D_8006EDE0)($v1)
/* 24DC294 80076D64 0780023C */  lui        $v0, %hi(D_8006EDF0)
/* 24DC298 80076D68 F0ED428C */  lw         $v0, %lo(D_8006EDF0)($v0)
/* 24DC29C 80076D6C 01006524 */  addiu      $a1, $v1, 0x1
/* 24DC2A0 80076D70 2A10A200 */  slt        $v0, $a1, $v0
/* 24DC2A4 80076D74 1C004010 */  beqz       $v0, .Lcutscene_75_80076DE8
/* 24DC2A8 80076D78 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 24DC2AC 80076D7C 0780013C */  lui        $at, %hi(D_8006EDE8)
/* 24DC2B0 80076D80 E8ED22AC */  sw         $v0, %lo(D_8006EDE8)($at)
/* 24DC2B4 80076D84 0100A230 */  andi       $v0, $a1, 0x1
/* 24DC2B8 80076D88 80100200 */  sll        $v0, $v0, 2
/* 24DC2BC 80076D8C 2110C200 */  addu       $v0, $a2, $v0
/* 24DC2C0 80076D90 80180300 */  sll        $v1, $v1, 2
/* 24DC2C4 80076D94 0780043C */  lui        $a0, %hi(D_8006E470)
/* 24DC2C8 80076D98 70E4848C */  lw         $a0, %lo(D_8006E470)($a0)
/* 24DC2CC 80076D9C 2400458C */  lw         $a1, 0x24($v0)
/* 24DC2D0 80076DA0 0780083C */  lui        $t0, %hi(D_8006EDF8)
/* 24DC2D4 80076DA4 F8ED088D */  lw         $t0, %lo(D_8006EDF8)($t0)
/* 24DC2D8 80076DA8 0780063C */  lui        $a2, %hi(D_8006C58C)
/* 24DC2DC 80076DAC 8CC5C68C */  lw         $a2, %lo(D_8006C58C)($a2)
/* 24DC2E0 80076DB0 21406800 */  addu       $t0, $v1, $t0
/* 24DC2E4 80076DB4 40100600 */  sll        $v0, $a2, 1
/* 24DC2E8 80076DB8 21104600 */  addu       $v0, $v0, $a2
/* 24DC2EC 80076DBC C0100200 */  sll        $v0, $v0, 3
/* 24DC2F0 80076DC0 0780063C */  lui        $a2, %hi(D_8006EDF4)
/* 24DC2F4 80076DC4 F4EDC68C */  lw         $a2, %lo(D_8006EDF4)($a2)
/* 24DC2F8 80076DC8 0780013C */  lui        $at, %hi(D_8006D8D8 + 0x40)
/* 24DC2FC 80076DCC 21082200 */  addu       $at, $at, $v0
/* 24DC300 80076DD0 18D9228C */  lw         $v0, %lo(D_8006D8D8 + 0x40)($at)
/* 24DC304 80076DD4 21186600 */  addu       $v1, $v1, $a2
/* 24DC308 80076DD8 0400678C */  lw         $a3, 0x4($v1)
/* 24DC30C 80076DDC 0400068D */  lw         $a2, 0x4($t0)
/* 24DC310 80076DE0 A041010C */  jal        func_80050680
/* 24DC314 80076DE4 21384700 */   addu      $a3, $v0, $a3
.Lcutscene_75_80076DE8:
/* 24DC318 80076DE8 0780033C */  lui        $v1, %hi(D_8006EDE4)
/* 24DC31C 80076DEC E4ED6324 */  addiu      $v1, $v1, %lo(D_8006EDE4)
/* 24DC320 80076DF0 0000628C */  lw         $v0, 0x0($v1)
/* 24DC324 80076DF4 00000000 */  nop
/* 24DC328 80076DF8 FE004230 */  andi       $v0, $v0, 0xFE
/* 24DC32C 80076DFC AADC010C */  jal        func_cutscene_75_800772A8
/* 24DC330 80076E00 000062AC */   sw        $v0, 0x0($v1)
.Lcutscene_75_80076E04:
/* 24DC334 80076E04 1400BF8F */  lw         $ra, 0x14($sp)
/* 24DC338 80076E08 1000B08F */  lw         $s0, 0x10($sp)
/* 24DC33C 80076E0C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 24DC340 80076E10 0800E003 */  jr         $ra
/* 24DC344 80076E14 00000000 */   nop
.size func_cutscene_75_80076AA4, . - func_cutscene_75_80076AA4
