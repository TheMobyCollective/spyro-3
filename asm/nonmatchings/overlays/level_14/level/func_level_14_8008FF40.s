.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_14_8008FF40
/* 47CF470 8008FF40 F0FEBD27 */  addiu      $sp, $sp, -0x110
/* 47CF474 8008FF44 E800B0AF */  sw         $s0, 0xE8($sp)
/* 47CF478 8008FF48 21800000 */  addu       $s0, $zero, $zero
/* 47CF47C 8008FF4C EC00B1AF */  sw         $s1, 0xEC($sp)
/* 47CF480 8008FF50 0780113C */  lui        $s1, %hi(D_80070328 + 0xB4)
/* 47CF484 8008FF54 DC033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0xB4)
/* 47CF488 8008FF58 FC00B5AF */  sw         $s5, 0xFC($sp)
/* 47CF48C 8008FF5C 7CFF3526 */  addiu      $s5, $s1, -0x84
/* 47CF490 8008FF60 F400B3AF */  sw         $s3, 0xF4($sp)
/* 47CF494 8008FF64 2000B327 */  addiu      $s3, $sp, 0x20
/* 47CF498 8008FF68 F800B4AF */  sw         $s4, 0xF8($sp)
/* 47CF49C 8008FF6C 3000B427 */  addiu      $s4, $sp, 0x30
/* 47CF4A0 8008FF70 F000B2AF */  sw         $s2, 0xF0($sp)
/* 47CF4A4 8008FF74 4000B227 */  addiu      $s2, $sp, 0x40
/* 47CF4A8 8008FF78 0801BFAF */  sw         $ra, 0x108($sp)
/* 47CF4AC 8008FF7C 0401B7AF */  sw         $s7, 0x104($sp)
/* 47CF4B0 8008FF80 0001B6AF */  sw         $s6, 0x100($sp)
.Llevel_14_8008FF84:
/* 47CF4B4 8008FF84 0000228E */  lw         $v0, 0x0($s1)
/* 47CF4B8 8008FF88 00000000 */  nop
/* 47CF4BC 8008FF8C 01044228 */  slti       $v0, $v0, 0x401
/* 47CF4C0 8008FF90 33004014 */  bnez       $v0, .Llevel_14_80090060
/* 47CF4C4 8008FF94 0200022A */   slti      $v0, $s0, 0x2
/* 47CF4C8 8008FF98 31004010 */  beqz       $v0, .Llevel_14_80090060
/* 47CF4CC 8008FF9C 00000000 */   nop
/* 47CF4D0 8008FFA0 0780023C */  lui        $v0, %hi(D_8006C640)
/* 47CF4D4 8008FFA4 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 47CF4D8 8008FFA8 00000000 */  nop
/* 47CF4DC 8008FFAC 01004230 */  andi       $v0, $v0, 0x1
/* 47CF4E0 8008FFB0 2B004010 */  beqz       $v0, .Llevel_14_80090060
/* 47CF4E4 8008FFB4 1000A427 */   addiu     $a0, $sp, 0x10
/* 47CF4E8 8008FFB8 5E3C010C */  jal        func_8004F178
/* 47CF4EC 8008FFBC 4CFF2526 */   addiu     $a1, $s1, -0xB4
/* 47CF4F0 8008FFC0 FCFF238E */  lw         $v1, -0x4($s1)
/* 47CF4F4 8008FFC4 B4000224 */  addiu      $v0, $zero, 0xB4
/* 47CF4F8 8008FFC8 2400A2AF */  sw         $v0, 0x24($sp)
/* 47CF4FC 8008FFCC 2800A0AF */  sw         $zero, 0x28($sp)
/* 47CF500 8008FFD0 43190300 */  sra        $v1, $v1, 5
/* 47CF504 8008FFD4 03000012 */  beqz       $s0, .Llevel_14_8008FFE4
/* 47CF508 8008FFD8 2000A3AF */   sw        $v1, 0x20($sp)
/* 47CF50C 8008FFDC 4CFF0224 */  addiu      $v0, $zero, -0xB4
/* 47CF510 8008FFE0 2400A2AF */  sw         $v0, 0x24($sp)
.Llevel_14_8008FFE4:
/* 47CF514 8008FFE4 2120A002 */  addu       $a0, $s5, $zero
/* 47CF518 8008FFE8 21286002 */  addu       $a1, $s3, $zero
/* 47CF51C 8008FFEC 5B3B010C */  jal        func_8004ED6C
/* 47CF520 8008FFF0 21308002 */   addu      $a2, $s4, $zero
/* 47CF524 8008FFF4 1000A427 */  addiu      $a0, $sp, 0x10
/* 47CF528 8008FFF8 21288000 */  addu       $a1, $a0, $zero
/* 47CF52C 8008FFFC 653C010C */  jal        func_8004F194
/* 47CF530 80090000 21308002 */   addu      $a2, $s4, $zero
/* 47CF534 80090004 2120A002 */  addu       $a0, $s5, $zero
/* 47CF538 80090008 21286002 */  addu       $a1, $s3, $zero
/* 47CF53C 8009000C 4000228E */  lw         $v0, 0x40($s1)
/* 47CF540 80090010 21306002 */  addu       $a2, $s3, $zero
/* 47CF544 80090014 2000A0AF */  sw         $zero, 0x20($sp)
/* 47CF548 80090018 5B3B010C */  jal        func_8004ED6C
/* 47CF54C 8009001C 1800A2AF */   sw        $v0, 0x18($sp)
/* 47CF550 80090020 21206002 */  addu       $a0, $s3, $zero
/* 47CF554 80090024 443C010C */  jal        func_8004F110
/* 47CF558 80090028 03000524 */   addiu     $a1, $zero, 0x3
/* 47CF55C 8009002C 01000424 */  addiu      $a0, $zero, 0x1
/* 47CF560 80090030 2A000524 */  addiu      $a1, $zero, 0x2A
/* 47CF564 80090034 1000A627 */  addiu      $a2, $sp, 0x10
/* 47CF568 80090038 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CF56C 8009003C E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CF570 80090040 00000000 */  nop
/* 47CF574 80090044 09F84000 */  jalr       $v0
/* 47CF578 80090048 21386002 */   addu      $a3, $s3, $zero
/* 47CF57C 8009004C 21184000 */  addu       $v1, $v0, $zero
/* 47CF580 80090050 29006010 */  beqz       $v1, .Llevel_14_800900F8
/* 47CF584 80090054 28000224 */   addiu     $v0, $zero, 0x28
/* 47CF588 80090058 3E400208 */  j          .Llevel_14_800900F8
/* 47CF58C 8009005C 0A0062A0 */   sb        $v0, 0xA($v1)
.Llevel_14_80090060:
/* 47CF590 80090060 0000228E */  lw         $v0, 0x0($s1)
/* 47CF594 80090064 00000000 */  nop
/* 47CF598 80090068 01024228 */  slti       $v0, $v0, 0x201
/* 47CF59C 8009006C 22004010 */  beqz       $v0, .Llevel_14_800900F8
/* 47CF5A0 80090070 00000000 */   nop
/* 47CF5A4 80090074 20000016 */  bnez       $s0, .Llevel_14_800900F8
/* 47CF5A8 80090078 00000000 */   nop
/* 47CF5AC 8009007C 0780023C */  lui        $v0, %hi(D_8006C640)
/* 47CF5B0 80090080 40C6428C */  lw         $v0, %lo(D_8006C640)($v0)
/* 47CF5B4 80090084 00000000 */  nop
/* 47CF5B8 80090088 07004230 */  andi       $v0, $v0, 0x7
/* 47CF5BC 8009008C 1A004014 */  bnez       $v0, .Llevel_14_800900F8
/* 47CF5C0 80090090 00000000 */   nop
/* 47CF5C4 80090094 9171010C */  jal        rand
/* 47CF5C8 80090098 00000000 */   nop
/* 47CF5CC 8009009C 03004230 */  andi       $v0, $v0, 0x3
/* 47CF5D0 800900A0 15004014 */  bnez       $v0, .Llevel_14_800900F8
/* 47CF5D4 800900A4 7CFF2426 */   addiu     $a0, $s1, -0x84
/* 47CF5D8 800900A8 21284002 */  addu       $a1, $s2, $zero
/* 47CF5DC 800900AC 21304002 */  addu       $a2, $s2, $zero
/* 47CF5E0 800900B0 80000224 */  addiu      $v0, $zero, 0x80
/* 47CF5E4 800900B4 4000A2AF */  sw         $v0, 0x40($sp)
/* 47CF5E8 800900B8 4400A0AF */  sw         $zero, 0x44($sp)
/* 47CF5EC 800900BC 5B3B010C */  jal        func_8004ED6C
/* 47CF5F0 800900C0 4800A0AF */   sw        $zero, 0x48($sp)
/* 47CF5F4 800900C4 21204002 */  addu       $a0, $s2, $zero
/* 47CF5F8 800900C8 21284002 */  addu       $a1, $s2, $zero
/* 47CF5FC 800900CC 653C010C */  jal        func_8004F194
/* 47CF600 800900D0 4CFF2626 */   addiu     $a2, $s1, -0xB4
/* 47CF604 800900D4 01000424 */  addiu      $a0, $zero, 0x1
/* 47CF608 800900D8 2B000524 */  addiu      $a1, $zero, 0x2B
/* 47CF60C 800900DC 21304002 */  addu       $a2, $s2, $zero
/* 47CF610 800900E0 4000228E */  lw         $v0, 0x40($s1)
/* 47CF614 800900E4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47CF618 800900E8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47CF61C 800900EC 01000724 */  addiu      $a3, $zero, 0x1
/* 47CF620 800900F0 09F86000 */  jalr       $v1
/* 47CF624 800900F4 4800A2AF */   sw        $v0, 0x48($sp)
.Llevel_14_800900F8:
/* 47CF628 800900F8 01001026 */  addiu      $s0, $s0, 0x1
/* 47CF62C 800900FC 0200022A */  slti       $v0, $s0, 0x2
/* 47CF630 80090100 A0FF4014 */  bnez       $v0, .Llevel_14_8008FF84
/* 47CF634 80090104 00000000 */   nop
/* 47CF638 80090108 0780133C */  lui        $s3, %hi(D_80070328 + 0x250)
/* 47CF63C 8009010C 78057326 */  addiu      $s3, $s3, %lo(D_80070328 + 0x250)
/* 47CF640 80090110 0000638E */  lw         $v1, 0x0($s3)
/* 47CF644 80090114 00000000 */  nop
/* 47CF648 80090118 82016010 */  beqz       $v1, .Llevel_14_80090724
/* 47CF64C 8009011C 21100000 */   addu      $v0, $zero, $zero
/* 47CF650 80090120 0780053C */  lui        $a1, %hi(D_80070328 + 0xAC)
/* 47CF654 80090124 D403A58C */  lw         $a1, %lo(D_80070328 + 0xAC)($a1)
/* 47CF658 80090128 0000758C */  lw         $s5, 0x0($v1)
/* 47CF65C 8009012C 8913A228 */  slti       $v0, $a1, 0x1389
/* 47CF660 80090130 02004014 */  bnez       $v0, .Llevel_14_8009013C
/* 47CF664 80090134 6F000424 */   addiu     $a0, $zero, 0x6F
/* 47CF668 80090138 8F000424 */  addiu      $a0, $zero, 0x8F
.Llevel_14_8009013C:
/* 47CF66C 8009013C 1800A400 */  mult       $a1, $a0
/* 47CF670 80090140 12180000 */  mflo       $v1
/* 47CF674 80090144 E338023C */  lui        $v0, (0x38E38E39 >> 16)
/* 47CF678 80090148 398E4234 */  ori        $v0, $v0, (0x38E38E39 & 0xFFFF)
/* 47CF67C 8009014C 18006200 */  mult       $v1, $v0
/* 47CF680 80090150 0780023C */  lui        $v0, %hi(D_80070328 + 0xB4)
/* 47CF684 80090154 DC03428C */  lw         $v0, %lo(D_80070328 + 0xB4)($v0)
/* 47CF688 80090158 C31F0300 */  sra        $v1, $v1, 31
/* 47CF68C 8009015C F4014228 */  slti       $v0, $v0, 0x1F4
/* 47CF690 80090160 10480000 */  mfhi       $t1
/* 47CF694 80090164 C3220900 */  sra        $a0, $t1, 11
/* 47CF698 80090168 72004010 */  beqz       $v0, .Llevel_14_80090334
/* 47CF69C 8009016C 23B88300 */   subu      $s7, $a0, $v1
/* 47CF6A0 80090170 1000A48E */  lw         $a0, 0x10($s5)
/* 47CF6A4 80090174 00000000 */  nop
/* 47CF6A8 80090178 04008010 */  beqz       $a0, .Llevel_14_8009018C
/* 47CF6AC 8009017C 00000000 */   nop
/* 47CF6B0 80090180 C656010C */  jal        func_80055B18
/* 47CF6B4 80090184 00000000 */   nop
/* 47CF6B8 80090188 1000A0AE */  sw         $zero, 0x10($s5)
.Llevel_14_8009018C:
/* 47CF6BC 8009018C 1400A48E */  lw         $a0, 0x14($s5)
/* 47CF6C0 80090190 00000000 */  nop
/* 47CF6C4 80090194 04008010 */  beqz       $a0, .Llevel_14_800901A8
/* 47CF6C8 80090198 00000000 */   nop
/* 47CF6CC 8009019C C656010C */  jal        func_80055B18
/* 47CF6D0 800901A0 00000000 */   nop
/* 47CF6D4 800901A4 1400A0AE */  sw         $zero, 0x14($s5)
.Llevel_14_800901A8:
/* 47CF6D8 800901A8 0780023C */  lui        $v0, %hi(D_80070328 + 0xB4)
/* 47CF6DC 800901AC DC03428C */  lw         $v0, %lo(D_80070328 + 0xB4)($v0)
/* 47CF6E0 800901B0 00000000 */  nop
/* 47CF6E4 800901B4 5B014010 */  beqz       $v0, .Llevel_14_80090724
/* 47CF6E8 800901B8 01000224 */   addiu     $v0, $zero, 0x1
/* 47CF6EC 800901BC 0C00A286 */  lh         $v0, 0xC($s5)
/* 47CF6F0 800901C0 00000000 */  nop
/* 47CF6F4 800901C4 1E004014 */  bnez       $v0, .Llevel_14_80090240
/* 47CF6F8 800901C8 E0FD6426 */   addiu     $a0, $s3, -0x220
/* 47CF6FC 800901CC 5000B027 */  addiu      $s0, $sp, 0x50
/* 47CF700 800901D0 21280002 */  addu       $a1, $s0, $zero
/* 47CF704 800901D4 21300002 */  addu       $a2, $s0, $zero
/* 47CF708 800901D8 0CFE0224 */  addiu      $v0, $zero, -0x1F4
/* 47CF70C 800901DC 5000A2AF */  sw         $v0, 0x50($sp)
/* 47CF710 800901E0 70FE0224 */  addiu      $v0, $zero, -0x190
/* 47CF714 800901E4 5400A2AF */  sw         $v0, 0x54($sp)
/* 47CF718 800901E8 06FF0224 */  addiu      $v0, $zero, -0xFA
/* 47CF71C 800901EC 5B3B010C */  jal        func_8004ED6C
/* 47CF720 800901F0 5800A2AF */   sw        $v0, 0x58($sp)
/* 47CF724 800901F4 6000B127 */  addiu      $s1, $sp, 0x60
/* 47CF728 800901F8 21202002 */  addu       $a0, $s1, $zero
/* 47CF72C 800901FC B0FD6526 */  addiu      $a1, $s3, -0x250
/* 47CF730 80090200 653C010C */  jal        func_8004F194
/* 47CF734 80090204 21300002 */   addu      $a2, $s0, $zero
/* 47CF738 80090208 5A3C010C */  jal        func_8004F168
/* 47CF73C 8009020C 21200002 */   addu      $a0, $s0, $zero
/* 47CF740 80090210 01000424 */  addiu      $a0, $zero, 0x1
/* 47CF744 80090214 37000524 */  addiu      $a1, $zero, 0x37
/* 47CF748 80090218 21302002 */  addu       $a2, $s1, $zero
/* 47CF74C 8009021C 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CF750 80090220 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CF754 80090224 00000000 */  nop
/* 47CF758 80090228 09F84000 */  jalr       $v0
/* 47CF75C 8009022C 21380002 */   addu      $a3, $s0, $zero
/* 47CF760 80090230 21184000 */  addu       $v1, $v0, $zero
/* 47CF764 80090234 02006010 */  beqz       $v1, .Llevel_14_80090240
/* 47CF768 80090238 19000224 */   addiu     $v0, $zero, 0x19
/* 47CF76C 8009023C 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_14_80090240:
/* 47CF770 80090240 0E00A286 */  lh         $v0, 0xE($s5)
/* 47CF774 80090244 00000000 */  nop
/* 47CF778 80090248 22004014 */  bnez       $v0, .Llevel_14_800902D4
/* 47CF77C 8009024C 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 47CF780 80090250 0780123C */  lui        $s2, %hi(D_80070328 + 0x30)
/* 47CF784 80090254 58035226 */  addiu      $s2, $s2, %lo(D_80070328 + 0x30)
/* 47CF788 80090258 21204002 */  addu       $a0, $s2, $zero
/* 47CF78C 8009025C 5000B027 */  addiu      $s0, $sp, 0x50
/* 47CF790 80090260 21280002 */  addu       $a1, $s0, $zero
/* 47CF794 80090264 21300002 */  addu       $a2, $s0, $zero
/* 47CF798 80090268 0CFE0224 */  addiu      $v0, $zero, -0x1F4
/* 47CF79C 8009026C 5000A2AF */  sw         $v0, 0x50($sp)
/* 47CF7A0 80090270 90010224 */  addiu      $v0, $zero, 0x190
/* 47CF7A4 80090274 5400A2AF */  sw         $v0, 0x54($sp)
/* 47CF7A8 80090278 06FF0224 */  addiu      $v0, $zero, -0xFA
/* 47CF7AC 8009027C 5B3B010C */  jal        func_8004ED6C
/* 47CF7B0 80090280 5800A2AF */   sw        $v0, 0x58($sp)
/* 47CF7B4 80090284 6000B127 */  addiu      $s1, $sp, 0x60
/* 47CF7B8 80090288 21202002 */  addu       $a0, $s1, $zero
/* 47CF7BC 8009028C D0FF4526 */  addiu      $a1, $s2, -0x30
/* 47CF7C0 80090290 653C010C */  jal        func_8004F194
/* 47CF7C4 80090294 21300002 */   addu      $a2, $s0, $zero
/* 47CF7C8 80090298 5A3C010C */  jal        func_8004F168
/* 47CF7CC 8009029C 21200002 */   addu      $a0, $s0, $zero
/* 47CF7D0 800902A0 01000424 */  addiu      $a0, $zero, 0x1
/* 47CF7D4 800902A4 37000524 */  addiu      $a1, $zero, 0x37
/* 47CF7D8 800902A8 21302002 */  addu       $a2, $s1, $zero
/* 47CF7DC 800902AC 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CF7E0 800902B0 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CF7E4 800902B4 00000000 */  nop
/* 47CF7E8 800902B8 09F84000 */  jalr       $v0
/* 47CF7EC 800902BC 21380002 */   addu      $a3, $s0, $zero
/* 47CF7F0 800902C0 21184000 */  addu       $v1, $v0, $zero
/* 47CF7F4 800902C4 02006010 */  beqz       $v1, .Llevel_14_800902D0
/* 47CF7F8 800902C8 19000224 */   addiu     $v0, $zero, 0x19
/* 47CF7FC 800902CC 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_14_800902D0:
/* 47CF800 800902D0 5555023C */  lui        $v0, (0x55555556 >> 16)
.Llevel_14_800902D4:
/* 47CF804 800902D4 0C00A586 */  lh         $a1, 0xC($s5)
/* 47CF808 800902D8 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 47CF80C 800902DC 0100A524 */  addiu      $a1, $a1, 0x1
/* 47CF810 800902E0 1800A200 */  mult       $a1, $v0
/* 47CF814 800902E4 0E00A686 */  lh         $a2, 0xE($s5)
/* 47CF818 800902E8 10180000 */  mfhi       $v1
/* 47CF81C 800902EC 0100C624 */  addiu      $a2, $a2, 0x1
/* 47CF820 800902F0 00000000 */  nop
/* 47CF824 800902F4 1800C200 */  mult       $a2, $v0
/* 47CF828 800902F8 C3270500 */  sra        $a0, $a1, 31
/* 47CF82C 800902FC 02000224 */  addiu      $v0, $zero, 0x2
/* 47CF830 80090300 23206400 */  subu       $a0, $v1, $a0
/* 47CF834 80090304 40180400 */  sll        $v1, $a0, 1
/* 47CF838 80090308 21186400 */  addu       $v1, $v1, $a0
/* 47CF83C 8009030C 2328A300 */  subu       $a1, $a1, $v1
/* 47CF840 80090310 C3270600 */  sra        $a0, $a2, 31
/* 47CF844 80090314 0C00A5A6 */  sh         $a1, 0xC($s5)
/* 47CF848 80090318 10380000 */  mfhi       $a3
/* 47CF84C 8009031C 2320E400 */  subu       $a0, $a3, $a0
/* 47CF850 80090320 40180400 */  sll        $v1, $a0, 1
/* 47CF854 80090324 21186400 */  addu       $v1, $v1, $a0
/* 47CF858 80090328 2330C300 */  subu       $a2, $a2, $v1
/* 47CF85C 8009032C C9410208 */  j          .Llevel_14_80090724
/* 47CF860 80090330 0E00A6A6 */   sh        $a2, 0xE($s5)
.Llevel_14_80090334:
/* 47CF864 80090334 1000A28E */  lw         $v0, 0x10($s5)
/* 47CF868 80090338 00000000 */  nop
/* 47CF86C 8009033C 0A004014 */  bnez       $v0, .Llevel_14_80090368
/* 47CF870 80090340 E0FD6426 */   addiu     $a0, $s3, -0x220
/* 47CF874 80090344 17020424 */  addiu      $a0, $zero, 0x217
/* 47CF878 80090348 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47CF87C 8009034C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47CF880 80090350 00000000 */  nop
/* 47CF884 80090354 09F84000 */  jalr       $v0
/* 47CF888 80090358 21280000 */   addu      $a1, $zero, $zero
/* 47CF88C 8009035C 71004010 */  beqz       $v0, .Llevel_14_80090524
/* 47CF890 80090360 1000A2AE */   sw        $v0, 0x10($s5)
/* 47CF894 80090364 E0FD6426 */  addiu      $a0, $s3, -0x220
.Llevel_14_80090368:
/* 47CF898 80090368 5000B027 */  addiu      $s0, $sp, 0x50
/* 47CF89C 8009036C 21280002 */  addu       $a1, $s0, $zero
/* 47CF8A0 80090370 21300002 */  addu       $a2, $s0, $zero
/* 47CF8A4 80090374 1000B28E */  lw         $s2, 0x10($s5)
/* 47CF8A8 80090378 0CFE0224 */  addiu      $v0, $zero, -0x1F4
/* 47CF8AC 8009037C 5000A2AF */  sw         $v0, 0x50($sp)
/* 47CF8B0 80090380 70FE0224 */  addiu      $v0, $zero, -0x190
/* 47CF8B4 80090384 5400A2AF */  sw         $v0, 0x54($sp)
/* 47CF8B8 80090388 06FF0224 */  addiu      $v0, $zero, -0xFA
/* 47CF8BC 8009038C 5B3B010C */  jal        func_8004ED6C
/* 47CF8C0 80090390 5800A2AF */   sw        $v0, 0x58($sp)
/* 47CF8C4 80090394 B0FD6526 */  addiu      $a1, $s3, -0x250
/* 47CF8C8 80090398 21300002 */  addu       $a2, $s0, $zero
/* 47CF8CC 8009039C 653C010C */  jal        func_8004F194
/* 47CF8D0 800903A0 0C004426 */   addiu     $a0, $s2, 0xC
/* 47CF8D4 800903A4 21200000 */  addu       $a0, $zero, $zero
/* 47CF8D8 800903A8 DBD8000C */  jal        func_8003636C
/* 47CF8DC 800903AC 40000524 */   addiu     $a1, $zero, 0x40
/* 47CF8E0 800903B0 21200000 */  addu       $a0, $zero, $zero
/* 47CF8E4 800903B4 08000524 */  addiu      $a1, $zero, 0x8
/* 47CF8E8 800903B8 4100E326 */  addiu      $v1, $s7, 0x41
/* 47CF8EC 800903BC 23104300 */  subu       $v0, $v0, $v1
/* 47CF8F0 800903C0 DBD8000C */  jal        func_8003636C
/* 47CF8F4 800903C4 4F0042A2 */   sb        $v0, 0x4F($s2)
/* 47CF8F8 800903C8 00110200 */  sll        $v0, $v0, 4
/* 47CF8FC 800903CC 440042A2 */  sb         $v0, 0x44($s2)
/* 47CF900 800903D0 0780023C */  lui        $v0, %hi(D_80070328 + 0x60)
/* 47CF904 800903D4 8803428C */  lw         $v0, %lo(D_80070328 + 0x60)($v0)
/* 47CF908 800903D8 00000000 */  nop
/* 47CF90C 800903DC 03110200 */  sra        $v0, $v0, 4
/* 47CF910 800903E0 23100200 */  negu       $v0, $v0
/* 47CF914 800903E4 450042A2 */  sb         $v0, 0x45($s2)
/* 47CF918 800903E8 0780023C */  lui        $v0, %hi(D_80070328 + 0x64)
/* 47CF91C 800903EC 8C03428C */  lw         $v0, %lo(D_80070328 + 0x64)($v0)
/* 47CF920 800903F0 00000000 */  nop
/* 47CF924 800903F4 03110200 */  sra        $v0, $v0, 4
/* 47CF928 800903F8 80FF4224 */  addiu      $v0, $v0, -0x80
/* 47CF92C 800903FC 460042A2 */  sb         $v0, 0x46($s2)
/* 47CF930 80090400 0780023C */  lui        $v0, %hi(D_80070328 + 0xAC)
/* 47CF934 80090404 D403428C */  lw         $v0, %lo(D_80070328 + 0xAC)($v0)
/* 47CF938 80090408 00000000 */  nop
/* 47CF93C 8009040C 89134228 */  slti       $v0, $v0, 0x1389
/* 47CF940 80090410 44004014 */  bnez       $v0, .Llevel_14_80090524
/* 47CF944 80090414 A000B127 */   addiu     $s1, $sp, 0xA0
/* 47CF948 80090418 21A00000 */  addu       $s4, $zero, $zero
/* 47CF94C 8009041C 7800B327 */  addiu      $s3, $sp, 0x78
/* 47CF950 80090420 9000B027 */  addiu      $s0, $sp, 0x90
/* 47CF954 80090424 0780023C */  lui        $v0, %hi(D_80070328 + 0x64)
/* 47CF958 80090428 8C03428C */  lw         $v0, %lo(D_80070328 + 0x64)($v0)
/* 47CF95C 8009042C 00000000 */  nop
/* 47CF960 80090430 03B10200 */  sra        $s6, $v0, 4
/* 47CF964 80090434 21200000 */  addu       $a0, $zero, $zero
.Llevel_14_80090438:
/* 47CF968 80090438 DBD8000C */  jal        func_8003636C
/* 47CF96C 8009043C FF000524 */   addiu     $a1, $zero, 0xFF
/* 47CF970 80090440 7000A427 */  addiu      $a0, $sp, 0x70
/* 47CF974 80090444 21286002 */  addu       $a1, $s3, $zero
/* 47CF978 80090448 21300000 */  addu       $a2, $zero, $zero
/* 47CF97C 8009044C 7000A2A3 */  sb         $v0, 0x70($sp)
/* 47CF980 80090450 7100A0A3 */  sb         $zero, 0x71($sp)
/* 47CF984 80090454 A43A010C */  jal        func_8004EA90
/* 47CF988 80090458 7200B6A3 */   sb        $s6, 0x72($sp)
/* 47CF98C 8009045C 21206002 */  addu       $a0, $s3, $zero
/* 47CF990 80090460 21280002 */  addu       $a1, $s0, $zero
/* 47CF994 80090464 21300002 */  addu       $a2, $s0, $zero
/* 47CF998 80090468 32000224 */  addiu      $v0, $zero, 0x32
/* 47CF99C 8009046C 9000A0AF */  sw         $zero, 0x90($sp)
/* 47CF9A0 80090470 9400A2AF */  sw         $v0, 0x94($sp)
/* 47CF9A4 80090474 5B3B010C */  jal        func_8004ED6C
/* 47CF9A8 80090478 9800A0AF */   sw        $zero, 0x98($sp)
/* 47CF9AC 8009047C 21206002 */  addu       $a0, $s3, $zero
/* 47CF9B0 80090480 21282002 */  addu       $a1, $s1, $zero
/* 47CF9B4 80090484 21302002 */  addu       $a2, $s1, $zero
/* 47CF9B8 80090488 6AFF0224 */  addiu      $v0, $zero, -0x96
/* 47CF9BC 8009048C A000A2AF */  sw         $v0, 0xA0($sp)
/* 47CF9C0 80090490 96000224 */  addiu      $v0, $zero, 0x96
/* 47CF9C4 80090494 A400A2AF */  sw         $v0, 0xA4($sp)
/* 47CF9C8 80090498 5B3B010C */  jal        func_8004ED6C
/* 47CF9CC 8009049C A800A0AF */   sw        $zero, 0xA8($sp)
/* 47CF9D0 800904A0 21200002 */  addu       $a0, $s0, $zero
/* 47CF9D4 800904A4 0C004526 */  addiu      $a1, $s2, 0xC
/* 47CF9D8 800904A8 653C010C */  jal        func_8004F194
/* 47CF9DC 800904AC 21300002 */   addu      $a2, $s0, $zero
/* 47CF9E0 800904B0 01000424 */  addiu      $a0, $zero, 0x1
/* 47CF9E4 800904B4 55000524 */  addiu      $a1, $zero, 0x55
/* 47CF9E8 800904B8 21300002 */  addu       $a2, $s0, $zero
/* 47CF9EC 800904BC 21382002 */  addu       $a3, $s1, $zero
/* 47CF9F0 800904C0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CF9F4 800904C4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CF9F8 800904C8 00000000 */  nop
/* 47CF9FC 800904CC 09F84000 */  jalr       $v0
/* 47CFA00 800904D0 01009426 */   addiu     $s4, $s4, 0x1
/* 47CFA04 800904D4 0300822A */  slti       $v0, $s4, 0x3
/* 47CFA08 800904D8 D7FF4014 */  bnez       $v0, .Llevel_14_80090438
/* 47CFA0C 800904DC 21200000 */   addu      $a0, $zero, $zero
/* 47CFA10 800904E0 DBD8000C */  jal        func_8003636C
/* 47CFA14 800904E4 0A000524 */   addiu     $a1, $zero, 0xA
/* 47CFA18 800904E8 0E004014 */  bnez       $v0, .Llevel_14_80090524
/* 47CFA1C 800904EC 01000424 */   addiu     $a0, $zero, 0x1
/* 47CFA20 800904F0 29000524 */  addiu      $a1, $zero, 0x29
/* 47CFA24 800904F4 0C00428E */  lw         $v0, 0xC($s2)
/* 47CFA28 800904F8 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47CFA2C 800904FC E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47CFA30 80090500 21302002 */  addu       $a2, $s1, $zero
/* 47CFA34 80090504 A000A2AF */  sw         $v0, 0xA0($sp)
/* 47CFA38 80090508 1000488E */  lw         $t0, 0x10($s2)
/* 47CFA3C 8009050C 0780023C */  lui        $v0, %hi(D_80070328 + 0xF4)
/* 47CFA40 80090510 1C04428C */  lw         $v0, %lo(D_80070328 + 0xF4)($v0)
/* 47CFA44 80090514 21380000 */  addu       $a3, $zero, $zero
/* 47CFA48 80090518 A800A2AF */  sw         $v0, 0xA8($sp)
/* 47CFA4C 8009051C 09F86000 */  jalr       $v1
/* 47CFA50 80090520 A400A8AF */   sw        $t0, 0xA4($sp)
.Llevel_14_80090524:
/* 47CFA54 80090524 1400A28E */  lw         $v0, 0x14($s5)
/* 47CFA58 80090528 00000000 */  nop
/* 47CFA5C 8009052C 09004014 */  bnez       $v0, .Llevel_14_80090554
/* 47CFA60 80090530 00000000 */   nop
/* 47CFA64 80090534 17020424 */  addiu      $a0, $zero, 0x217
/* 47CFA68 80090538 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 47CFA6C 8009053C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 47CFA70 80090540 00000000 */  nop
/* 47CFA74 80090544 09F84000 */  jalr       $v0
/* 47CFA78 80090548 21280000 */   addu      $a1, $zero, $zero
/* 47CFA7C 8009054C 74004010 */  beqz       $v0, .Llevel_14_80090720
/* 47CFA80 80090550 1400A2AE */   sw        $v0, 0x14($s5)
.Llevel_14_80090554:
/* 47CFA84 80090554 0780113C */  lui        $s1, %hi(D_80070328 + 0x30)
/* 47CFA88 80090558 58033126 */  addiu      $s1, $s1, %lo(D_80070328 + 0x30)
/* 47CFA8C 8009055C 21202002 */  addu       $a0, $s1, $zero
/* 47CFA90 80090560 5000B027 */  addiu      $s0, $sp, 0x50
/* 47CFA94 80090564 21280002 */  addu       $a1, $s0, $zero
/* 47CFA98 80090568 21300002 */  addu       $a2, $s0, $zero
/* 47CFA9C 8009056C 1400B28E */  lw         $s2, 0x14($s5)
/* 47CFAA0 80090570 0CFE0224 */  addiu      $v0, $zero, -0x1F4
/* 47CFAA4 80090574 5000A2AF */  sw         $v0, 0x50($sp)
/* 47CFAA8 80090578 90010224 */  addiu      $v0, $zero, 0x190
/* 47CFAAC 8009057C 5400A2AF */  sw         $v0, 0x54($sp)
/* 47CFAB0 80090580 06FF0224 */  addiu      $v0, $zero, -0xFA
/* 47CFAB4 80090584 5B3B010C */  jal        func_8004ED6C
/* 47CFAB8 80090588 5800A2AF */   sw        $v0, 0x58($sp)
/* 47CFABC 8009058C D0FF2526 */  addiu      $a1, $s1, -0x30
/* 47CFAC0 80090590 21300002 */  addu       $a2, $s0, $zero
/* 47CFAC4 80090594 653C010C */  jal        func_8004F194
/* 47CFAC8 80090598 0C004426 */   addiu     $a0, $s2, 0xC
/* 47CFACC 8009059C 21200000 */  addu       $a0, $zero, $zero
/* 47CFAD0 800905A0 DBD8000C */  jal        func_8003636C
/* 47CFAD4 800905A4 40000524 */   addiu     $a1, $zero, 0x40
/* 47CFAD8 800905A8 21200000 */  addu       $a0, $zero, $zero
/* 47CFADC 800905AC 08000524 */  addiu      $a1, $zero, 0x8
/* 47CFAE0 800905B0 4100E326 */  addiu      $v1, $s7, 0x41
/* 47CFAE4 800905B4 23104300 */  subu       $v0, $v0, $v1
/* 47CFAE8 800905B8 DBD8000C */  jal        func_8003636C
/* 47CFAEC 800905BC 4F0042A2 */   sb        $v0, 0x4F($s2)
/* 47CFAF0 800905C0 00110200 */  sll        $v0, $v0, 4
/* 47CFAF4 800905C4 440042A2 */  sb         $v0, 0x44($s2)
/* 47CFAF8 800905C8 0780023C */  lui        $v0, %hi(D_80070328 + 0x60)
/* 47CFAFC 800905CC 8803428C */  lw         $v0, %lo(D_80070328 + 0x60)($v0)
/* 47CFB00 800905D0 00000000 */  nop
/* 47CFB04 800905D4 03110200 */  sra        $v0, $v0, 4
/* 47CFB08 800905D8 23100200 */  negu       $v0, $v0
/* 47CFB0C 800905DC 450042A2 */  sb         $v0, 0x45($s2)
/* 47CFB10 800905E0 0780023C */  lui        $v0, %hi(D_80070328 + 0x64)
/* 47CFB14 800905E4 8C03428C */  lw         $v0, %lo(D_80070328 + 0x64)($v0)
/* 47CFB18 800905E8 00000000 */  nop
/* 47CFB1C 800905EC 03110200 */  sra        $v0, $v0, 4
/* 47CFB20 800905F0 80FF4224 */  addiu      $v0, $v0, -0x80
/* 47CFB24 800905F4 460042A2 */  sb         $v0, 0x46($s2)
/* 47CFB28 800905F8 0780023C */  lui        $v0, %hi(D_80070328 + 0xAC)
/* 47CFB2C 800905FC D403428C */  lw         $v0, %lo(D_80070328 + 0xAC)($v0)
/* 47CFB30 80090600 00000000 */  nop
/* 47CFB34 80090604 89134228 */  slti       $v0, $v0, 0x1389
/* 47CFB38 80090608 46004014 */  bnez       $v0, .Llevel_14_80090724
/* 47CFB3C 8009060C 03000224 */   addiu     $v0, $zero, 0x3
/* 47CFB40 80090610 21A00000 */  addu       $s4, $zero, $zero
/* 47CFB44 80090614 B000B327 */  addiu      $s3, $sp, 0xB0
/* 47CFB48 80090618 C800B027 */  addiu      $s0, $sp, 0xC8
/* 47CFB4C 8009061C 0780023C */  lui        $v0, %hi(D_80070328 + 0x64)
/* 47CFB50 80090620 8C03428C */  lw         $v0, %lo(D_80070328 + 0x64)($v0)
/* 47CFB54 80090624 D800B127 */  addiu      $s1, $sp, 0xD8
/* 47CFB58 80090628 03A90200 */  sra        $s5, $v0, 4
/* 47CFB5C 8009062C 21200000 */  addu       $a0, $zero, $zero
.Llevel_14_80090630:
/* 47CFB60 80090630 DBD8000C */  jal        func_8003636C
/* 47CFB64 80090634 FF000524 */   addiu     $a1, $zero, 0xFF
/* 47CFB68 80090638 7000A427 */  addiu      $a0, $sp, 0x70
/* 47CFB6C 8009063C 21286002 */  addu       $a1, $s3, $zero
/* 47CFB70 80090640 21300000 */  addu       $a2, $zero, $zero
/* 47CFB74 80090644 7000A2A3 */  sb         $v0, 0x70($sp)
/* 47CFB78 80090648 7100A0A3 */  sb         $zero, 0x71($sp)
/* 47CFB7C 8009064C A43A010C */  jal        func_8004EA90
/* 47CFB80 80090650 7200B5A3 */   sb        $s5, 0x72($sp)
/* 47CFB84 80090654 21206002 */  addu       $a0, $s3, $zero
/* 47CFB88 80090658 21280002 */  addu       $a1, $s0, $zero
/* 47CFB8C 8009065C 21300002 */  addu       $a2, $s0, $zero
/* 47CFB90 80090660 32000224 */  addiu      $v0, $zero, 0x32
/* 47CFB94 80090664 C800A0AF */  sw         $zero, 0xC8($sp)
/* 47CFB98 80090668 CC00A2AF */  sw         $v0, 0xCC($sp)
/* 47CFB9C 8009066C 5B3B010C */  jal        func_8004ED6C
/* 47CFBA0 80090670 D000A0AF */   sw        $zero, 0xD0($sp)
/* 47CFBA4 80090674 21206002 */  addu       $a0, $s3, $zero
/* 47CFBA8 80090678 21282002 */  addu       $a1, $s1, $zero
/* 47CFBAC 8009067C 21302002 */  addu       $a2, $s1, $zero
/* 47CFBB0 80090680 6AFF0224 */  addiu      $v0, $zero, -0x96
/* 47CFBB4 80090684 D800A2AF */  sw         $v0, 0xD8($sp)
/* 47CFBB8 80090688 96000224 */  addiu      $v0, $zero, 0x96
/* 47CFBBC 8009068C DC00A2AF */  sw         $v0, 0xDC($sp)
/* 47CFBC0 80090690 5B3B010C */  jal        func_8004ED6C
/* 47CFBC4 80090694 E000A0AF */   sw        $zero, 0xE0($sp)
/* 47CFBC8 80090698 21200002 */  addu       $a0, $s0, $zero
/* 47CFBCC 8009069C 0C004526 */  addiu      $a1, $s2, 0xC
/* 47CFBD0 800906A0 653C010C */  jal        func_8004F194
/* 47CFBD4 800906A4 21300002 */   addu      $a2, $s0, $zero
/* 47CFBD8 800906A8 01000424 */  addiu      $a0, $zero, 0x1
/* 47CFBDC 800906AC 55000524 */  addiu      $a1, $zero, 0x55
/* 47CFBE0 800906B0 21300002 */  addu       $a2, $s0, $zero
/* 47CFBE4 800906B4 21382002 */  addu       $a3, $s1, $zero
/* 47CFBE8 800906B8 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 47CFBEC 800906BC E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 47CFBF0 800906C0 00000000 */  nop
/* 47CFBF4 800906C4 09F84000 */  jalr       $v0
/* 47CFBF8 800906C8 01009426 */   addiu     $s4, $s4, 0x1
/* 47CFBFC 800906CC 0300822A */  slti       $v0, $s4, 0x3
/* 47CFC00 800906D0 D7FF4014 */  bnez       $v0, .Llevel_14_80090630
/* 47CFC04 800906D4 21200000 */   addu      $a0, $zero, $zero
/* 47CFC08 800906D8 DBD8000C */  jal        func_8003636C
/* 47CFC0C 800906DC 0A000524 */   addiu     $a1, $zero, 0xA
/* 47CFC10 800906E0 10004014 */  bnez       $v0, .Llevel_14_80090724
/* 47CFC14 800906E4 03000224 */   addiu     $v0, $zero, 0x3
/* 47CFC18 800906E8 01000424 */  addiu      $a0, $zero, 0x1
/* 47CFC1C 800906EC 29000524 */  addiu      $a1, $zero, 0x29
/* 47CFC20 800906F0 0C00428E */  lw         $v0, 0xC($s2)
/* 47CFC24 800906F4 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 47CFC28 800906F8 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 47CFC2C 800906FC 21302002 */  addu       $a2, $s1, $zero
/* 47CFC30 80090700 D800A2AF */  sw         $v0, 0xD8($sp)
/* 47CFC34 80090704 1000488E */  lw         $t0, 0x10($s2)
/* 47CFC38 80090708 0780023C */  lui        $v0, %hi(D_80070328 + 0xF4)
/* 47CFC3C 8009070C 1C04428C */  lw         $v0, %lo(D_80070328 + 0xF4)($v0)
/* 47CFC40 80090710 21380000 */  addu       $a3, $zero, $zero
/* 47CFC44 80090714 E000A2AF */  sw         $v0, 0xE0($sp)
/* 47CFC48 80090718 09F86000 */  jalr       $v1
/* 47CFC4C 8009071C DC00A8AF */   sw        $t0, 0xDC($sp)
.Llevel_14_80090720:
/* 47CFC50 80090720 03000224 */  addiu      $v0, $zero, 0x3
.Llevel_14_80090724:
/* 47CFC54 80090724 0801BF8F */  lw         $ra, 0x108($sp)
/* 47CFC58 80090728 0401B78F */  lw         $s7, 0x104($sp)
/* 47CFC5C 8009072C 0001B68F */  lw         $s6, 0x100($sp)
/* 47CFC60 80090730 FC00B58F */  lw         $s5, 0xFC($sp)
/* 47CFC64 80090734 F800B48F */  lw         $s4, 0xF8($sp)
/* 47CFC68 80090738 F400B38F */  lw         $s3, 0xF4($sp)
/* 47CFC6C 8009073C F000B28F */  lw         $s2, 0xF0($sp)
/* 47CFC70 80090740 EC00B18F */  lw         $s1, 0xEC($sp)
/* 47CFC74 80090744 E800B08F */  lw         $s0, 0xE8($sp)
/* 47CFC78 80090748 1001BD27 */  addiu      $sp, $sp, 0x110
/* 47CFC7C 8009074C 0800E003 */  jr         $ra
/* 47CFC80 80090750 00000000 */   nop
.size func_level_14_8008FF40, . - func_level_14_8008FF40
