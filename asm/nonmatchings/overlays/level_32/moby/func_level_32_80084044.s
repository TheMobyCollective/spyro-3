.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_155_level_32
/* 6DEB574 80084044 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 6DEB578 80084048 4800B2AF */  sw         $s2, 0x48($sp)
/* 6DEB57C 8008404C 21908000 */  addu       $s2, $a0, $zero
/* 6DEB580 80084050 8300023C */  lui        $v0, (0x830000 >> 16)
/* 6DEB584 80084054 5800BFAF */  sw         $ra, 0x58($sp)
/* 6DEB588 80084058 5400B5AF */  sw         $s5, 0x54($sp)
/* 6DEB58C 8008405C 5000B4AF */  sw         $s4, 0x50($sp)
/* 6DEB590 80084060 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 6DEB594 80084064 4400B1AF */  sw         $s1, 0x44($sp)
/* 6DEB598 80084068 4000B0AF */  sw         $s0, 0x40($sp)
/* 6DEB59C 8008406C 1800448E */  lw         $a0, 0x18($s2)
/* 6DEB5A0 80084070 0000538E */  lw         $s3, 0x0($s2)
/* 6DEB5A4 80084074 24108200 */  and        $v0, $a0, $v0
/* 6DEB5A8 80084078 11014010 */  beqz       $v0, .Llevel_32_800844C0
/* 6DEB5AC 8008407C 02000224 */   addiu     $v0, $zero, 0x2
/* 6DEB5B0 80084080 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 6DEB5B4 80084084 C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 6DEB5B8 80084088 00000000 */  nop
/* 6DEB5BC 8008408C 1E006214 */  bne        $v1, $v0, .Llevel_32_80084108
/* 6DEB5C0 80084090 21880000 */   addu      $s1, $zero, $zero
/* 6DEB5C4 80084094 1000023C */  lui        $v0, (0x100000 >> 16)
/* 6DEB5C8 80084098 25108200 */  or         $v0, $a0, $v0
/* 6DEB5CC 8008409C 180042AE */  sw         $v0, 0x18($s2)
/* 6DEB5D0 800840A0 4C00628E */  lw         $v0, 0x4C($s3)
/* 6DEB5D4 800840A4 00000000 */  nop
/* 6DEB5D8 800840A8 18004014 */  bnez       $v0, .Llevel_32_8008410C
/* 6DEB5DC 800840AC 01001424 */   addiu     $s4, $zero, 0x1
/* 6DEB5E0 800840B0 5000638E */  lw         $v1, 0x50($s3)
/* 6DEB5E4 800840B4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 6DEB5E8 800840B8 14006210 */  beq        $v1, $v0, .Llevel_32_8008410C
/* 6DEB5EC 800840BC 40100300 */   sll       $v0, $v1, 1
/* 6DEB5F0 800840C0 21104300 */  addu       $v0, $v0, $v1
/* 6DEB5F4 800840C4 80100200 */  sll        $v0, $v0, 2
/* 6DEB5F8 800840C8 23104300 */  subu       $v0, $v0, $v1
/* 6DEB5FC 800840CC 0780033C */  lui        $v1, %hi(D_8006C550)
/* 6DEB600 800840D0 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 6DEB604 800840D4 C0100200 */  sll        $v0, $v0, 3
/* 6DEB608 800840D8 21104300 */  addu       $v0, $v0, $v1
/* 6DEB60C 800840DC 0000438C */  lw         $v1, 0x0($v0)
/* 6DEB610 800840E0 00000000 */  nop
/* 6DEB614 800840E4 A400628C */  lw         $v0, 0xA4($v1)
/* 6DEB618 800840E8 00000000 */  nop
/* 6DEB61C 800840EC 3C004224 */  addiu      $v0, $v0, 0x3C
/* 6DEB620 800840F0 A40062AC */  sw         $v0, 0xA4($v1)
/* 6DEB624 800840F4 85034228 */  slti       $v0, $v0, 0x385
/* 6DEB628 800840F8 04004014 */  bnez       $v0, .Llevel_32_8008410C
/* 6DEB62C 800840FC 84030224 */   addiu     $v0, $zero, 0x384
/* 6DEB630 80084100 A40062AC */  sw         $v0, 0xA4($v1)
/* 6DEB634 80084104 21880000 */  addu       $s1, $zero, $zero
.Llevel_32_80084108:
/* 6DEB638 80084108 01001424 */  addiu      $s4, $zero, 0x1
.Llevel_32_8008410C:
/* 6DEB63C 8008410C 0780153C */  lui        $s5, %hi(D_8006EE2C)
/* 6DEB640 80084110 2CEEB526 */  addiu      $s5, $s5, %lo(D_8006EE2C)
.Llevel_32_80084114:
/* 6DEB644 80084114 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DEB648 80084118 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DEB64C 8008411C 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DEB650 80084120 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DEB654 80084124 00000000 */  nop
/* 6DEB658 80084128 23104300 */  subu       $v0, $v0, $v1
/* 6DEB65C 8008412C 15004228 */  slti       $v0, $v0, 0x15
/* 6DEB660 80084130 CE004014 */  bnez       $v0, .Llevel_32_8008446C
/* 6DEB664 80084134 47010424 */   addiu     $a0, $zero, 0x147
/* 6DEB668 80084138 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DEB66C 8008413C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DEB670 80084140 00000000 */  nop
/* 6DEB674 80084144 09F84000 */  jalr       $v0
/* 6DEB678 80084148 21284002 */   addu      $a1, $s2, $zero
/* 6DEB67C 8008414C 21804000 */  addu       $s0, $v0, $zero
/* 6DEB680 80084150 C2000012 */  beqz       $s0, .Llevel_32_8008445C
/* 6DEB684 80084154 00000000 */   nop
/* 6DEB688 80084158 0000028E */  lw         $v0, 0x0($s0)
/* 6DEB68C 8008415C 00000000 */  nop
/* 6DEB690 80084160 120054A4 */  sh         $s4, 0x12($v0)
/* 6DEB694 80084164 0400222A */  slti       $v0, $s1, 0x4
/* 6DEB698 80084168 1C004010 */  beqz       $v0, .Llevel_32_800841DC
/* 6DEB69C 8008416C C2171100 */   srl       $v0, $s1, 31
/* 6DEB6A0 80084170 3C000392 */  lbu        $v1, 0x3C($s0)
/* 6DEB6A4 80084174 21102202 */  addu       $v0, $s1, $v0
/* 6DEB6A8 80084178 43100200 */  sra        $v0, $v0, 1
/* 6DEB6AC 8008417C 40100200 */  sll        $v0, $v0, 1
/* 6DEB6B0 80084180 23202202 */  subu       $a0, $s1, $v0
/* 6DEB6B4 80084184 B5006410 */  beq        $v1, $a0, .Llevel_32_8008445C
/* 6DEB6B8 80084188 00000000 */   nop
/* 6DEB6BC 8008418C 36000286 */  lh         $v0, 0x36($s0)
/* 6DEB6C0 80084190 420000A2 */  sb         $zero, 0x42($s0)
/* 6DEB6C4 80084194 80100200 */  sll        $v0, $v0, 2
/* 6DEB6C8 80084198 21105500 */  addu       $v0, $v0, $s5
/* 6DEB6CC 8008419C 0000438C */  lw         $v1, 0x0($v0)
/* 6DEB6D0 800841A0 80100400 */  sll        $v0, $a0, 2
/* 6DEB6D4 800841A4 21104300 */  addu       $v0, $v0, $v1
/* 6DEB6D8 800841A8 3C00428C */  lw         $v0, 0x3C($v0)
/* 6DEB6DC 800841AC 00000000 */  nop
/* 6DEB6E0 800841B0 00004290 */  lbu        $v0, 0x0($v0)
/* 6DEB6E4 800841B4 3C0004A2 */  sb         $a0, 0x3C($s0)
/* 6DEB6E8 800841B8 3D0004A2 */  sb         $a0, 0x3D($s0)
/* 6DEB6EC 800841BC 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 6DEB6F0 800841C0 3F0014A2 */  sb         $s4, 0x3F($s0)
/* 6DEB6F4 800841C4 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEB6F8 800841C8 01004238 */  xori       $v0, $v0, 0x1
/* 6DEB6FC 800841CC 23100200 */  negu       $v0, $v0
/* 6DEB700 800841D0 30004230 */  andi       $v0, $v0, 0x30
/* 6DEB704 800841D4 17110208 */  j          .Llevel_32_8008445C
/* 6DEB708 800841D8 400002A2 */   sb        $v0, 0x40($s0)
.Llevel_32_800841DC:
/* 6DEB70C 800841DC 0800222A */  slti       $v0, $s1, 0x8
/* 6DEB710 800841E0 31004010 */  beqz       $v0, .Llevel_32_800842A8
/* 6DEB714 800841E4 02000224 */   addiu     $v0, $zero, 0x2
/* 6DEB718 800841E8 3C000392 */  lbu        $v1, 0x3C($s0)
/* 6DEB71C 800841EC 00000000 */  nop
/* 6DEB720 800841F0 13006210 */  beq        $v1, $v0, .Llevel_32_80084240
/* 6DEB724 800841F4 02000324 */   addiu     $v1, $zero, 0x2
/* 6DEB728 800841F8 36000286 */  lh         $v0, 0x36($s0)
/* 6DEB72C 800841FC 420000A2 */  sb         $zero, 0x42($s0)
/* 6DEB730 80084200 80100200 */  sll        $v0, $v0, 2
/* 6DEB734 80084204 21105500 */  addu       $v0, $v0, $s5
/* 6DEB738 80084208 0000428C */  lw         $v0, 0x0($v0)
/* 6DEB73C 8008420C 00000000 */  nop
/* 6DEB740 80084210 4400428C */  lw         $v0, 0x44($v0)
/* 6DEB744 80084214 00000000 */  nop
/* 6DEB748 80084218 00004290 */  lbu        $v0, 0x0($v0)
/* 6DEB74C 8008421C 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 6DEB750 80084220 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 6DEB754 80084224 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 6DEB758 80084228 3F0014A2 */  sb         $s4, 0x3F($s0)
/* 6DEB75C 8008422C 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEB760 80084230 01004238 */  xori       $v0, $v0, 0x1
/* 6DEB764 80084234 23100200 */  negu       $v0, $v0
/* 6DEB768 80084238 30004230 */  andi       $v0, $v0, 0x30
/* 6DEB76C 8008423C 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_32_80084240:
/* 6DEB770 80084240 2000A427 */  addiu      $a0, $sp, 0x20
/* 6DEB774 80084244 C2171100 */  srl        $v0, $s1, 31
/* 6DEB778 80084248 21102202 */  addu       $v0, $s1, $v0
/* 6DEB77C 8008424C 43100200 */  sra        $v0, $v0, 1
/* 6DEB780 80084250 40100200 */  sll        $v0, $v0, 1
/* 6DEB784 80084254 23102202 */  subu       $v0, $s1, $v0
/* 6DEB788 80084258 40280200 */  sll        $a1, $v0, 1
/* 6DEB78C 8008425C 2128A200 */  addu       $a1, $a1, $v0
/* 6DEB790 80084260 4400628E */  lw         $v0, 0x44($s3)
/* 6DEB794 80084264 80280500 */  sll        $a1, $a1, 2
/* 6DEB798 80084268 5E3C010C */  jal        func_8004F178
/* 6DEB79C 8008426C 21284500 */   addu      $a1, $v0, $a1
/* 6DEB7A0 80084270 20004426 */  addiu      $a0, $s2, 0x20
/* 6DEB7A4 80084274 2000A527 */  addiu      $a1, $sp, 0x20
/* 6DEB7A8 80084278 5B3B010C */  jal        func_8004ED6C
/* 6DEB7AC 8008427C 2130A000 */   addu      $a2, $a1, $zero
/* 6DEB7B0 80084280 0C000426 */  addiu      $a0, $s0, 0xC
/* 6DEB7B4 80084284 0C004526 */  addiu      $a1, $s2, 0xC
/* 6DEB7B8 80084288 46004292 */  lbu        $v0, 0x46($s2)
/* 6DEB7BC 8008428C 2000A627 */  addiu      $a2, $sp, 0x20
/* 6DEB7C0 80084290 450000A2 */  sb         $zero, 0x45($s0)
/* 6DEB7C4 80084294 440000A2 */  sb         $zero, 0x44($s0)
/* 6DEB7C8 80084298 653C010C */  jal        func_8004F194
/* 6DEB7CC 8008429C 460002A2 */   sb        $v0, 0x46($s0)
/* 6DEB7D0 800842A0 18110208 */  j          .Llevel_32_80084460
/* 6DEB7D4 800842A4 01003126 */   addiu     $s1, $s1, 0x1
.Llevel_32_800842A8:
/* 6DEB7D8 800842A8 0A00222A */  slti       $v0, $s1, 0xA
/* 6DEB7DC 800842AC 38004010 */  beqz       $v0, .Llevel_32_80084390
/* 6DEB7E0 800842B0 03000224 */   addiu     $v0, $zero, 0x3
/* 6DEB7E4 800842B4 3C000392 */  lbu        $v1, 0x3C($s0)
/* 6DEB7E8 800842B8 00000000 */  nop
/* 6DEB7EC 800842BC 13006210 */  beq        $v1, $v0, .Llevel_32_8008430C
/* 6DEB7F0 800842C0 03000324 */   addiu     $v1, $zero, 0x3
/* 6DEB7F4 800842C4 36000286 */  lh         $v0, 0x36($s0)
/* 6DEB7F8 800842C8 420000A2 */  sb         $zero, 0x42($s0)
/* 6DEB7FC 800842CC 80100200 */  sll        $v0, $v0, 2
/* 6DEB800 800842D0 21105500 */  addu       $v0, $v0, $s5
/* 6DEB804 800842D4 0000428C */  lw         $v0, 0x0($v0)
/* 6DEB808 800842D8 00000000 */  nop
/* 6DEB80C 800842DC 4800428C */  lw         $v0, 0x48($v0)
/* 6DEB810 800842E0 00000000 */  nop
/* 6DEB814 800842E4 00004290 */  lbu        $v0, 0x0($v0)
/* 6DEB818 800842E8 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 6DEB81C 800842EC 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 6DEB820 800842F0 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 6DEB824 800842F4 3F0014A2 */  sb         $s4, 0x3F($s0)
/* 6DEB828 800842F8 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEB82C 800842FC 01004238 */  xori       $v0, $v0, 0x1
/* 6DEB830 80084300 23100200 */  negu       $v0, $v0
/* 6DEB834 80084304 30004230 */  andi       $v0, $v0, 0x30
/* 6DEB838 80084308 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_32_8008430C:
/* 6DEB83C 8008430C 2000A427 */  addiu      $a0, $sp, 0x20
/* 6DEB840 80084310 C2171100 */  srl        $v0, $s1, 31
/* 6DEB844 80084314 21102202 */  addu       $v0, $s1, $v0
/* 6DEB848 80084318 43100200 */  sra        $v0, $v0, 1
/* 6DEB84C 8008431C 40100200 */  sll        $v0, $v0, 1
/* 6DEB850 80084320 23102202 */  subu       $v0, $s1, $v0
/* 6DEB854 80084324 40280200 */  sll        $a1, $v0, 1
/* 6DEB858 80084328 2128A200 */  addu       $a1, $a1, $v0
/* 6DEB85C 8008432C 80280500 */  sll        $a1, $a1, 2
/* 6DEB860 80084330 4400628E */  lw         $v0, 0x44($s3)
/* 6DEB864 80084334 1800A524 */  addiu      $a1, $a1, 0x18
/* 6DEB868 80084338 5E3C010C */  jal        func_8004F178
/* 6DEB86C 8008433C 21284500 */   addu      $a1, $v0, $a1
/* 6DEB870 80084340 20004426 */  addiu      $a0, $s2, 0x20
/* 6DEB874 80084344 2000A527 */  addiu      $a1, $sp, 0x20
/* 6DEB878 80084348 5B3B010C */  jal        func_8004ED6C
/* 6DEB87C 8008434C 2130A000 */   addu      $a2, $a1, $zero
/* 6DEB880 80084350 46004292 */  lbu        $v0, 0x46($s2)
/* 6DEB884 80084354 450000A2 */  sb         $zero, 0x45($s0)
/* 6DEB888 80084358 440000A2 */  sb         $zero, 0x44($s0)
/* 6DEB88C 8008435C 460002A2 */  sb         $v0, 0x46($s0)
/* 6DEB890 80084360 01002232 */  andi       $v0, $s1, 0x1
/* 6DEB894 80084364 05004014 */  bnez       $v0, .Llevel_32_8008437C
/* 6DEB898 80084368 0C000426 */   addiu     $a0, $s0, 0xC
/* 6DEB89C 8008436C 46000292 */  lbu        $v0, 0x46($s0)
/* 6DEB8A0 80084370 00000000 */  nop
/* 6DEB8A4 80084374 80004224 */  addiu      $v0, $v0, 0x80
/* 6DEB8A8 80084378 460002A2 */  sb         $v0, 0x46($s0)
.Llevel_32_8008437C:
/* 6DEB8AC 8008437C 0C004526 */  addiu      $a1, $s2, 0xC
/* 6DEB8B0 80084380 653C010C */  jal        func_8004F194
/* 6DEB8B4 80084384 2000A627 */   addiu     $a2, $sp, 0x20
/* 6DEB8B8 80084388 18110208 */  j          .Llevel_32_80084460
/* 6DEB8BC 8008438C 01003126 */   addiu     $s1, $s1, 0x1
.Llevel_32_80084390:
/* 6DEB8C0 80084390 3C000392 */  lbu        $v1, 0x3C($s0)
/* 6DEB8C4 80084394 04000224 */  addiu      $v0, $zero, 0x4
/* 6DEB8C8 80084398 13006210 */  beq        $v1, $v0, .Llevel_32_800843E8
/* 6DEB8CC 8008439C 04000324 */   addiu     $v1, $zero, 0x4
/* 6DEB8D0 800843A0 36000286 */  lh         $v0, 0x36($s0)
/* 6DEB8D4 800843A4 420000A2 */  sb         $zero, 0x42($s0)
/* 6DEB8D8 800843A8 80100200 */  sll        $v0, $v0, 2
/* 6DEB8DC 800843AC 21105500 */  addu       $v0, $v0, $s5
/* 6DEB8E0 800843B0 0000428C */  lw         $v0, 0x0($v0)
/* 6DEB8E4 800843B4 00000000 */  nop
/* 6DEB8E8 800843B8 4C00428C */  lw         $v0, 0x4C($v0)
/* 6DEB8EC 800843BC 00000000 */  nop
/* 6DEB8F0 800843C0 00004290 */  lbu        $v0, 0x0($v0)
/* 6DEB8F4 800843C4 3C0003A2 */  sb         $v1, 0x3C($s0)
/* 6DEB8F8 800843C8 3D0003A2 */  sb         $v1, 0x3D($s0)
/* 6DEB8FC 800843CC 3E0000A2 */  sb         $zero, 0x3E($s0)
/* 6DEB900 800843D0 3F0014A2 */  sb         $s4, 0x3F($s0)
/* 6DEB904 800843D4 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEB908 800843D8 01004238 */  xori       $v0, $v0, 0x1
/* 6DEB90C 800843DC 23100200 */  negu       $v0, $v0
/* 6DEB910 800843E0 30004230 */  andi       $v0, $v0, 0x30
/* 6DEB914 800843E4 400002A2 */  sb         $v0, 0x40($s0)
.Llevel_32_800843E8:
/* 6DEB918 800843E8 2000A427 */  addiu      $a0, $sp, 0x20
/* 6DEB91C 800843EC C2171100 */  srl        $v0, $s1, 31
/* 6DEB920 800843F0 21102202 */  addu       $v0, $s1, $v0
/* 6DEB924 800843F4 43100200 */  sra        $v0, $v0, 1
/* 6DEB928 800843F8 40100200 */  sll        $v0, $v0, 1
/* 6DEB92C 800843FC 23102202 */  subu       $v0, $s1, $v0
/* 6DEB930 80084400 40280200 */  sll        $a1, $v0, 1
/* 6DEB934 80084404 2128A200 */  addu       $a1, $a1, $v0
/* 6DEB938 80084408 80280500 */  sll        $a1, $a1, 2
/* 6DEB93C 8008440C 4400628E */  lw         $v0, 0x44($s3)
/* 6DEB940 80084410 3000A524 */  addiu      $a1, $a1, 0x30
/* 6DEB944 80084414 5E3C010C */  jal        func_8004F178
/* 6DEB948 80084418 21284500 */   addu      $a1, $v0, $a1
/* 6DEB94C 8008441C 20004426 */  addiu      $a0, $s2, 0x20
/* 6DEB950 80084420 2000A527 */  addiu      $a1, $sp, 0x20
/* 6DEB954 80084424 5B3B010C */  jal        func_8004ED6C
/* 6DEB958 80084428 2130A000 */   addu      $a2, $a1, $zero
/* 6DEB95C 8008442C 0C000426 */  addiu      $a0, $s0, 0xC
/* 6DEB960 80084430 0C004526 */  addiu      $a1, $s2, 0xC
/* 6DEB964 80084434 46004292 */  lbu        $v0, 0x46($s2)
/* 6DEB968 80084438 2000A627 */  addiu      $a2, $sp, 0x20
/* 6DEB96C 8008443C 450000A2 */  sb         $zero, 0x45($s0)
/* 6DEB970 80084440 440000A2 */  sb         $zero, 0x44($s0)
/* 6DEB974 80084444 653C010C */  jal        func_8004F194
/* 6DEB978 80084448 460002A2 */   sb        $v0, 0x46($s0)
/* 6DEB97C 8008444C 0B000224 */  addiu      $v0, $zero, 0xB
/* 6DEB980 80084450 02002216 */  bne        $s1, $v0, .Llevel_32_8008445C
/* 6DEB984 80084454 14000224 */   addiu     $v0, $zero, 0x14
/* 6DEB988 80084458 4F0002A2 */  sb         $v0, 0x4F($s0)
.Llevel_32_8008445C:
/* 6DEB98C 8008445C 01003126 */  addiu      $s1, $s1, 0x1
.Llevel_32_80084460:
/* 6DEB990 80084460 0C00222A */  slti       $v0, $s1, 0xC
/* 6DEB994 80084464 2BFF4014 */  bnez       $v0, .Llevel_32_80084114
/* 6DEB998 80084468 00000000 */   nop
.Llevel_32_8008446C:
/* 6DEB99C 8008446C 21204002 */  addu       $a0, $s2, $zero
/* 6DEB9A0 80084470 21280000 */  addu       $a1, $zero, $zero
/* 6DEB9A4 80084474 21300000 */  addu       $a2, $zero, $zero
/* 6DEB9A8 80084478 21380000 */  addu       $a3, $zero, $zero
/* 6DEB9AC 8008447C 08000224 */  addiu      $v0, $zero, 0x8
/* 6DEB9B0 80084480 9ADA000C */  jal        func_80036A68
/* 6DEB9B4 80084484 4A0042A2 */   sb        $v0, 0x4A($s2)
/* 6DEB9B8 80084488 21204002 */  addu       $a0, $s2, $zero
/* 6DEB9BC 8008448C 21280000 */  addu       $a1, $zero, $zero
/* 6DEB9C0 80084490 AFEE000C */  jal        func_8003BABC
/* 6DEB9C4 80084494 21300000 */   addu      $a2, $zero, $zero
/* 6DEB9C8 80084498 3B004392 */  lbu        $v1, 0x3B($s2)
/* 6DEB9CC 8008449C 7E000224 */  addiu      $v0, $zero, 0x7E
/* 6DEB9D0 800844A0 03006210 */  beq        $v1, $v0, .Llevel_32_800844B0
/* 6DEB9D4 800844A4 00000000 */   nop
/* 6DEB9D8 800844A8 80EE000C */  jal        func_8003BA00
/* 6DEB9DC 800844AC 21204002 */   addu      $a0, $s2, $zero
.Llevel_32_800844B0:
/* 6DEB9E0 800844B0 C656010C */  jal        func_80055B18
/* 6DEB9E4 800844B4 21204002 */   addu      $a0, $s2, $zero
/* 6DEB9E8 800844B8 F9120208 */  j          .Llevel_32_80084BE4
/* 6DEB9EC 800844BC 00000000 */   nop
.Llevel_32_800844C0:
/* 6DEB9F0 800844C0 4D004292 */  lbu        $v0, 0x4D($s2)
/* 6DEB9F4 800844C4 00000000 */  nop
/* 6DEB9F8 800844C8 C6014010 */  beqz       $v0, .Llevel_32_80084BE4
/* 6DEB9FC 800844CC 180040AE */   sw        $zero, 0x18($s2)
/* 6DEBA00 800844D0 48004292 */  lbu        $v0, 0x48($s2)
/* 6DEBA04 800844D4 00000000 */  nop
/* 6DEBA08 800844D8 0200422C */  sltiu      $v0, $v0, 0x2
/* 6DEBA0C 800844DC 72004010 */  beqz       $v0, .Llevel_32_800846A8
/* 6DEBA10 800844E0 2C006426 */   addiu     $a0, $s3, 0x2C
/* 6DEBA14 800844E4 69D6000C */  jal        func_800359A4
/* 6DEBA18 800844E8 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEBA1C 800844EC 6E004010 */  beqz       $v0, .Llevel_32_800846A8
/* 6DEBA20 800844F0 00000000 */   nop
/* 6DEBA24 800844F4 4800628E */  lw         $v0, 0x48($s3)
/* 6DEBA28 800844F8 00000000 */  nop
/* 6DEBA2C 800844FC 6A004014 */  bnez       $v0, .Llevel_32_800846A8
/* 6DEBA30 80084500 00000000 */   nop
/* 6DEBA34 80084504 0780043C */  lui        $a0, %hi(D_8006C640)
/* 6DEBA38 80084508 40C6848C */  lw         $a0, %lo(D_8006C640)($a0)
/* 6DEBA3C 8008450C 00000000 */  nop
/* 6DEBA40 80084510 02008104 */  bgez       $a0, .Llevel_32_8008451C
/* 6DEBA44 80084514 21108000 */   addu      $v0, $a0, $zero
/* 6DEBA48 80084518 03008224 */  addiu      $v0, $a0, 0x3
.Llevel_32_8008451C:
/* 6DEBA4C 8008451C 83100200 */  sra        $v0, $v0, 2
/* 6DEBA50 80084520 80100200 */  sll        $v0, $v0, 2
/* 6DEBA54 80084524 42006386 */  lh         $v1, 0x42($s3)
/* 6DEBA58 80084528 23108200 */  subu       $v0, $a0, $v0
/* 6DEBA5C 8008452C 5E004314 */  bne        $v0, $v1, .Llevel_32_800846A8
/* 6DEBA60 80084530 00000000 */   nop
/* 6DEBA64 80084534 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DEBA68 80084538 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DEBA6C 8008453C CD3C010C */  jal        func_8004F334
/* 6DEBA70 80084540 0C004426 */   addiu     $a0, $s2, 0xC
/* 6DEBA74 80084544 3400638E */  lw         $v1, 0x34($s3)
/* 6DEBA78 80084548 00000000 */  nop
/* 6DEBA7C 8008454C 2A104300 */  slt        $v0, $v0, $v1
/* 6DEBA80 80084550 55004010 */  beqz       $v0, .Llevel_32_800846A8
/* 6DEBA84 80084554 00000000 */   nop
/* 6DEBA88 80084558 3800628E */  lw         $v0, 0x38($s3)
/* 6DEBA8C 8008455C 00000000 */  nop
/* 6DEBA90 80084560 0F004010 */  beqz       $v0, .Llevel_32_800845A0
/* 6DEBA94 80084564 00000000 */   nop
/* 6DEBA98 80084568 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 6DEBA9C 8008456C E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 6DEBAA0 80084570 00000000 */  nop
/* 6DEBAA4 80084574 4C004014 */  bnez       $v0, .Llevel_32_800846A8
/* 6DEBAA8 80084578 00000000 */   nop
/* 6DEBAAC 8008457C 38004286 */  lh         $v0, 0x38($s2)
/* 6DEBAB0 80084580 1400438E */  lw         $v1, 0x14($s2)
/* 6DEBAB4 80084584 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 6DEBAB8 80084588 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 6DEBABC 8008458C 23186200 */  subu       $v1, $v1, $v0
/* 6DEBAC0 80084590 23186400 */  subu       $v1, $v1, $a0
/* 6DEBAC4 80084594 C8006328 */  slti       $v1, $v1, 0xC8
/* 6DEBAC8 80084598 43006010 */  beqz       $v1, .Llevel_32_800846A8
/* 6DEBACC 8008459C 00000000 */   nop
.Llevel_32_800845A0:
/* 6DEBAD0 800845A0 5400628E */  lw         $v0, 0x54($s3)
/* 6DEBAD4 800845A4 00000000 */  nop
/* 6DEBAD8 800845A8 0F004010 */  beqz       $v0, .Llevel_32_800845E8
/* 6DEBADC 800845AC 00000000 */   nop
/* 6DEBAE0 800845B0 0780023C */  lui        $v0, %hi(D_80070328 + 0xB8)
/* 6DEBAE4 800845B4 E003428C */  lw         $v0, %lo(D_80070328 + 0xB8)($v0)
/* 6DEBAE8 800845B8 00000000 */  nop
/* 6DEBAEC 800845BC 3A004014 */  bnez       $v0, .Llevel_32_800846A8
/* 6DEBAF0 800845C0 00000000 */   nop
/* 6DEBAF4 800845C4 38004286 */  lh         $v0, 0x38($s2)
/* 6DEBAF8 800845C8 1400438E */  lw         $v1, 0x14($s2)
/* 6DEBAFC 800845CC 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 6DEBB00 800845D0 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 6DEBB04 800845D4 23186200 */  subu       $v1, $v1, $v0
/* 6DEBB08 800845D8 23186400 */  subu       $v1, $v1, $a0
/* 6DEBB0C 800845DC D5FE6328 */  slti       $v1, $v1, -0x12B
/* 6DEBB10 800845E0 31006014 */  bnez       $v1, .Llevel_32_800846A8
/* 6DEBB14 800845E4 00000000 */   nop
.Llevel_32_800845E8:
/* 6DEBB18 800845E8 38004386 */  lh         $v1, 0x38($s2)
/* 6DEBB1C 800845EC 1400428E */  lw         $v0, 0x14($s2)
/* 6DEBB20 800845F0 0780043C */  lui        $a0, %hi(D_80070328 + 8)
/* 6DEBB24 800845F4 3003848C */  lw         $a0, %lo(D_80070328 + 8)($a0)
/* 6DEBB28 800845F8 23184300 */  subu       $v1, $v0, $v1
/* 6DEBB2C 800845FC 23106400 */  subu       $v0, $v1, $a0
/* 6DEBB30 80084600 05004004 */  bltz       $v0, .Llevel_32_80084618
/* 6DEBB34 80084604 E8034228 */   slti      $v0, $v0, 0x3E8
/* 6DEBB38 80084608 07004014 */  bnez       $v0, .Llevel_32_80084628
/* 6DEBB3C 8008460C 21300000 */   addu      $a2, $zero, $zero
/* 6DEBB40 80084610 AA110208 */  j          .Llevel_32_800846A8
/* 6DEBB44 80084614 00000000 */   nop
.Llevel_32_80084618:
/* 6DEBB48 80084618 23108300 */  subu       $v0, $a0, $v1
/* 6DEBB4C 8008461C E8034228 */  slti       $v0, $v0, 0x3E8
/* 6DEBB50 80084620 21004010 */  beqz       $v0, .Llevel_32_800846A8
/* 6DEBB54 80084624 21300000 */   addu      $a2, $zero, $zero
.Llevel_32_80084628:
/* 6DEBB58 80084628 0C00438E */  lw         $v1, 0xC($s2)
/* 6DEBB5C 8008462C 0780043C */  lui        $a0, %hi(D_8006E020)
/* 6DEBB60 80084630 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 6DEBB64 80084634 1000428E */  lw         $v0, 0x10($s2)
/* 6DEBB68 80084638 0780053C */  lui        $a1, %hi(D_8006E024)
/* 6DEBB6C 8008463C 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 6DEBB70 80084640 23206400 */  subu       $a0, $v1, $a0
/* 6DEBB74 80084644 203A010C */  jal        func_8004E880
/* 6DEBB78 80084648 23284500 */   subu      $a1, $v0, $a1
/* 6DEBB7C 8008464C 0780043C */  lui        $a0, %hi(D_8006E040)
/* 6DEBB80 80084650 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 6DEBB84 80084654 21284000 */  addu       $a1, $v0, $zero
/* 6DEBB88 80084658 00240400 */  sll        $a0, $a0, 16
/* 6DEBB8C 8008465C 993C010C */  jal        func_8004F264
/* 6DEBB90 80084660 03250400 */   sra       $a0, $a0, 20
/* 6DEBB94 80084664 1C004228 */  slti       $v0, $v0, 0x1C
/* 6DEBB98 80084668 0F004010 */  beqz       $v0, .Llevel_32_800846A8
/* 6DEBB9C 8008466C 3000B027 */   addiu     $s0, $sp, 0x30
/* 6DEBBA0 80084670 21200002 */  addu       $a0, $s0, $zero
/* 6DEBBA4 80084674 5E3C010C */  jal        func_8004F178
/* 6DEBBA8 80084678 0C004526 */   addiu     $a1, $s2, 0xC
/* 6DEBBAC 8008467C 21200002 */  addu       $a0, $s0, $zero
/* 6DEBBB0 80084680 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DEBBB4 80084684 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DEBBB8 80084688 3800A28F */  lw         $v0, 0x38($sp)
/* 6DEBBBC 8008468C 21300000 */  addu       $a2, $zero, $zero
/* 6DEBBC0 80084690 2C014224 */  addiu      $v0, $v0, 0x12C
/* 6DEBBC4 80084694 8E4F000C */  jal        func_80013E38
/* 6DEBBC8 80084698 3800A2AF */   sw        $v0, 0x38($sp)
/* 6DEBBCC 8008469C 02004010 */  beqz       $v0, .Llevel_32_800846A8
/* 6DEBBD0 800846A0 0A000224 */   addiu     $v0, $zero, 0xA
/* 6DEBBD4 800846A4 480042A2 */  sb         $v0, 0x48($s2)
.Llevel_32_800846A8:
/* 6DEBBD8 800846A8 48004392 */  lbu        $v1, 0x48($s2)
/* 6DEBBDC 800846AC 01001124 */  addiu      $s1, $zero, 0x1
/* 6DEBBE0 800846B0 6B007110 */  beq        $v1, $s1, .Llevel_32_80084860
/* 6DEBBE4 800846B4 02006228 */   slti      $v0, $v1, 0x2
/* 6DEBBE8 800846B8 05004010 */  beqz       $v0, .Llevel_32_800846D0
/* 6DEBBEC 800846BC 00000000 */   nop
/* 6DEBBF0 800846C0 08006010 */  beqz       $v1, .Llevel_32_800846E4
/* 6DEBBF4 800846C4 00000000 */   nop
/* 6DEBBF8 800846C8 DD120208 */  j          .Llevel_32_80084B74
/* 6DEBBFC 800846CC 00000000 */   nop
.Llevel_32_800846D0:
/* 6DEBC00 800846D0 0A000224 */  addiu      $v0, $zero, 0xA
/* 6DEBC04 800846D4 92006210 */  beq        $v1, $v0, .Llevel_32_80084920
/* 6DEBC08 800846D8 0C005026 */   addiu     $s0, $s2, 0xC
/* 6DEBC0C 800846DC DD120208 */  j          .Llevel_32_80084B74
/* 6DEBC10 800846E0 00000000 */   nop
.Llevel_32_800846E4:
/* 6DEBC14 800846E4 28006386 */  lh         $v1, 0x28($s3)
/* 6DEBC18 800846E8 00000000 */  nop
/* 6DEBC1C 800846EC 32006014 */  bnez       $v1, .Llevel_32_800847B8
/* 6DEBC20 800846F0 21204002 */   addu      $a0, $s2, $zero
/* 6DEBC24 800846F4 21286002 */  addu       $a1, $s3, $zero
/* 6DEBC28 800846F8 5ADC000C */  jal        func_80037168
/* 6DEBC2C 800846FC 57000624 */   addiu     $a2, $zero, 0x57
/* 6DEBC30 80084700 05DC000C */  jal        func_80037014
/* 6DEBC34 80084704 21204002 */   addu      $a0, $s2, $zero
/* 6DEBC38 80084708 49004292 */  lbu        $v0, 0x49($s2)
/* 6DEBC3C 8008470C 00000000 */  nop
/* 6DEBC40 80084710 0A004010 */  beqz       $v0, .Llevel_32_8008473C
/* 6DEBC44 80084714 3C000424 */   addiu     $a0, $zero, 0x3C
/* 6DEBC48 80084718 64000524 */  addiu      $a1, $zero, 0x64
/* 6DEBC4C 8008471C DBD8000C */  jal        func_8003636C
/* 6DEBC50 80084720 490040A2 */   sb        $zero, 0x49($s2)
/* 6DEBC54 80084724 21204002 */  addu       $a0, $s2, $zero
/* 6DEBC58 80084728 01000524 */  addiu      $a1, $zero, 0x1
/* 6DEBC5C 8008472C 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEBC60 80084730 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEBC64 80084734 D0D3000C */  jal        func_80034F40
/* 6DEBC68 80084738 480042A2 */   sb        $v0, 0x48($s2)
.Llevel_32_8008473C:
/* 6DEBC6C 8008473C 18006426 */  addiu      $a0, $s3, 0x18
/* 6DEBC70 80084740 69D6000C */  jal        func_800359A4
/* 6DEBC74 80084744 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEBC78 80084748 31004010 */  beqz       $v0, .Llevel_32_80084810
/* 6DEBC7C 8008474C 00000000 */   nop
/* 6DEBC80 80084750 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6DEBC84 80084754 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6DEBC88 80084758 00000000 */  nop
/* 6DEBC8C 8008475C 2C004010 */  beqz       $v0, .Llevel_32_80084810
/* 6DEBC90 80084760 00000000 */   nop
/* 6DEBC94 80084764 18006296 */  lhu        $v0, 0x18($s3)
/* 6DEBC98 80084768 00000000 */  nop
/* 6DEBC9C 8008476C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DEBCA0 80084770 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEBCA4 80084774 00140200 */  sll        $v0, $v0, 16
/* 6DEBCA8 80084778 2500401C */  bgtz       $v0, .Llevel_32_80084810
/* 6DEBCAC 8008477C 1E000424 */   addiu     $a0, $zero, 0x1E
/* 6DEBCB0 80084780 DBD8000C */  jal        func_8003636C
/* 6DEBCB4 80084784 64000524 */   addiu     $a1, $zero, 0x64
/* 6DEBCB8 80084788 21200000 */  addu       $a0, $zero, $zero
/* 6DEBCBC 8008478C 03000524 */  addiu      $a1, $zero, 0x3
/* 6DEBCC0 80084790 DBD8000C */  jal        func_8003636C
/* 6DEBCC4 80084794 180062A6 */   sh        $v0, 0x18($s3)
/* 6DEBCC8 80084798 21204002 */  addu       $a0, $s2, $zero
/* 6DEBCCC 8008479C 01000524 */  addiu      $a1, $zero, 0x1
/* 6DEBCD0 800847A0 1A0062A6 */  sh         $v0, 0x1A($s3)
/* 6DEBCD4 800847A4 01000224 */  addiu      $v0, $zero, 0x1
/* 6DEBCD8 800847A8 D0D3000C */  jal        func_80034F40
/* 6DEBCDC 800847AC 480042A2 */   sb        $v0, 0x48($s2)
/* 6DEBCE0 800847B0 04120208 */  j          .Llevel_32_80084810
/* 6DEBCE4 800847B4 00000000 */   nop
.Llevel_32_800847B8:
/* 6DEBCE8 800847B8 0F007114 */  bne        $v1, $s1, .Llevel_32_800847F8
/* 6DEBCEC 800847BC 02000224 */   addiu     $v0, $zero, 0x2
/* 6DEBCF0 800847C0 21204002 */  addu       $a0, $s2, $zero
/* 6DEBCF4 800847C4 00010624 */  addiu      $a2, $zero, 0x100
/* 6DEBCF8 800847C8 03000224 */  addiu      $v0, $zero, 0x3
/* 6DEBCFC 800847CC 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DEBD00 800847D0 0A000224 */  addiu      $v0, $zero, 0xA
/* 6DEBD04 800847D4 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DEBD08 800847D8 05000224 */  addiu      $v0, $zero, 0x5
/* 6DEBD0C 800847DC 1000A0AF */  sw         $zero, 0x10($sp)
/* 6DEBD10 800847E0 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 6DEBD14 800847E4 3000658E */  lw         $a1, 0x30($s3)
/* 6DEBD18 800847E8 A0D6000C */  jal        func_80035A80
/* 6DEBD1C 800847EC 50000724 */   addiu     $a3, $zero, 0x50
/* 6DEBD20 800847F0 04120208 */  j          .Llevel_32_80084810
/* 6DEBD24 800847F4 00000000 */   nop
.Llevel_32_800847F8:
/* 6DEBD28 800847F8 05006214 */  bne        $v1, $v0, .Llevel_32_80084810
/* 6DEBD2C 800847FC 21204002 */   addu      $a0, $s2, $zero
/* 6DEBD30 80084800 02000524 */  addiu      $a1, $zero, 0x2
/* 6DEBD34 80084804 21300000 */  addu       $a2, $zero, $zero
/* 6DEBD38 80084808 CFD5000C */  jal        func_8003573C
/* 6DEBD3C 8008480C 21380000 */   addu      $a3, $zero, $zero
.Llevel_32_80084810:
/* 6DEBD40 80084810 0780023C */  lui        $v0, %hi(D_8006C54C)
/* 6DEBD44 80084814 4CC5428C */  lw         $v0, %lo(D_8006C54C)($v0)
/* 6DEBD48 80084818 0A80033C */  lui        $v1, %hi(level_32_data_start)
/* 6DEBD4C 8008481C 30D06324 */  addiu      $v1, $v1, %lo(level_32_data_start)
/* 6DEBD50 80084820 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DEBD54 80084824 D3004314 */  bne        $v0, $v1, .Llevel_32_80084B74
/* 6DEBD58 80084828 00000000 */   nop
/* 6DEBD5C 8008482C 0780023C */  lui        $v0, %hi(D_8006C774)
/* 6DEBD60 80084830 74C7428C */  lw         $v0, %lo(D_8006C774)($v0)
/* 6DEBD64 80084834 00000000 */  nop
/* 6DEBD68 80084838 CE004010 */  beqz       $v0, .Llevel_32_80084B74
/* 6DEBD6C 8008483C 2C000224 */   addiu     $v0, $zero, 0x2C
.Llevel_32_80084840:
/* 6DEBD70 80084840 0680013C */  lui        $at, %hi(D_80066EAE)
/* 6DEBD74 80084844 21082200 */  addu       $at, $at, $v0
/* 6DEBD78 80084848 AE6E20A4 */  sh         $zero, %lo(D_80066EAE)($at)
/* 6DEBD7C 8008484C FCFF4224 */  addiu      $v0, $v0, -0x4
/* 6DEBD80 80084850 C8004004 */  bltz       $v0, .Llevel_32_80084B74
/* 6DEBD84 80084854 00000000 */   nop
/* 6DEBD88 80084858 10120208 */  j          .Llevel_32_80084840
/* 6DEBD8C 8008485C 00000000 */   nop
.Llevel_32_80084860:
/* 6DEBD90 80084860 28006386 */  lh         $v1, 0x28($s3)
/* 6DEBD94 80084864 02000224 */  addiu      $v0, $zero, 0x2
/* 6DEBD98 80084868 06006214 */  bne        $v1, $v0, .Llevel_32_80084884
/* 6DEBD9C 8008486C 18006426 */   addiu     $a0, $s3, 0x18
/* 6DEBDA0 80084870 480040A2 */  sb         $zero, 0x48($s2)
/* 6DEBDA4 80084874 21204002 */  addu       $a0, $s2, $zero
/* 6DEBDA8 80084878 D0D3000C */  jal        func_80034F40
/* 6DEBDAC 8008487C 21280000 */   addu      $a1, $zero, $zero
/* 6DEBDB0 80084880 18006426 */  addiu      $a0, $s3, 0x18
.Llevel_32_80084884:
/* 6DEBDB4 80084884 69D6000C */  jal        func_800359A4
/* 6DEBDB8 80084888 02000524 */   addiu     $a1, $zero, 0x2
/* 6DEBDBC 8008488C 0D004010 */  beqz       $v0, .Llevel_32_800848C4
/* 6DEBDC0 80084890 00000000 */   nop
/* 6DEBDC4 80084894 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6DEBDC8 80084898 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6DEBDCC 8008489C 00000000 */  nop
/* 6DEBDD0 800848A0 B4004010 */  beqz       $v0, .Llevel_32_80084B74
/* 6DEBDD4 800848A4 78000424 */   addiu     $a0, $zero, 0x78
/* 6DEBDD8 800848A8 DBD8000C */  jal        func_8003636C
/* 6DEBDDC 800848AC F4010524 */   addiu     $a1, $zero, 0x1F4
/* 6DEBDE0 800848B0 21204002 */  addu       $a0, $s2, $zero
/* 6DEBDE4 800848B4 21280000 */  addu       $a1, $zero, $zero
/* 6DEBDE8 800848B8 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEBDEC 800848BC D0D3000C */  jal        func_80034F40
/* 6DEBDF0 800848C0 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_32_800848C4:
/* 6DEBDF4 800848C4 0780023C */  lui        $v0, %hi(D_8006C770)
/* 6DEBDF8 800848C8 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 6DEBDFC 800848CC 00000000 */  nop
/* 6DEBE00 800848D0 A8004010 */  beqz       $v0, .Llevel_32_80084B74
/* 6DEBE04 800848D4 00000000 */   nop
/* 6DEBE08 800848D8 1A006286 */  lh         $v0, 0x1A($s3)
/* 6DEBE0C 800848DC 00000000 */  nop
/* 6DEBE10 800848E0 08004014 */  bnez       $v0, .Llevel_32_80084904
/* 6DEBE14 800848E4 21204002 */   addu      $a0, $s2, $zero
/* 6DEBE18 800848E8 D0D3000C */  jal        func_80034F40
/* 6DEBE1C 800848EC 04000524 */   addiu     $a1, $zero, 0x4
/* 6DEBE20 800848F0 07000424 */  addiu      $a0, $zero, 0x7
/* 6DEBE24 800848F4 DBD8000C */  jal        func_8003636C
/* 6DEBE28 800848F8 07000524 */   addiu     $a1, $zero, 0x7
/* 6DEBE2C 800848FC DD120208 */  j          .Llevel_32_80084B74
/* 6DEBE30 80084900 1A0062A6 */   sh        $v0, 0x1A($s3)
.Llevel_32_80084904:
/* 6DEBE34 80084904 D0D3000C */  jal        func_80034F40
/* 6DEBE38 80084908 01000524 */   addiu     $a1, $zero, 0x1
/* 6DEBE3C 8008490C 1A006296 */  lhu        $v0, 0x1A($s3)
/* 6DEBE40 80084910 00000000 */  nop
/* 6DEBE44 80084914 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 6DEBE48 80084918 DD120208 */  j          .Llevel_32_80084B74
/* 6DEBE4C 8008491C 1A0062A6 */   sh        $v0, 0x1A($s3)
.Llevel_32_80084920:
/* 6DEBE50 80084920 0780053C */  lui        $a1, %hi(D_80070328)
/* 6DEBE54 80084924 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 6DEBE58 80084928 CD3C010C */  jal        func_8004F334
/* 6DEBE5C 8008492C 21200002 */   addu      $a0, $s0, $zero
/* 6DEBE60 80084930 21200002 */  addu       $a0, $s0, $zero
/* 6DEBE64 80084934 21286002 */  addu       $a1, $s3, $zero
/* 6DEBE68 80084938 CD3C010C */  jal        func_8004F334
/* 6DEBE6C 8008493C 21804000 */   addu      $s0, $v0, $zero
/* 6DEBE70 80084940 29234228 */  slti       $v0, $v0, 0x2329
/* 6DEBE74 80084944 09004014 */  bnez       $v0, .Llevel_32_8008496C
/* 6DEBE78 80084948 21204002 */   addu      $a0, $s2, $zero
/* 6DEBE7C 8008494C 21280000 */  addu       $a1, $zero, $zero
/* 6DEBE80 80084950 B4000224 */  addiu      $v0, $zero, 0xB4
/* 6DEBE84 80084954 2C0062A6 */  sh         $v0, 0x2C($s3)
/* 6DEBE88 80084958 78000224 */  addiu      $v0, $zero, 0x78
/* 6DEBE8C 8008495C 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEBE90 80084960 D0D3000C */  jal        func_80034F40
/* 6DEBE94 80084964 480040A2 */   sb        $zero, 0x48($s2)
/* 6DEBE98 80084968 21204002 */  addu       $a0, $s2, $zero
.Llevel_32_8008496C:
/* 6DEBE9C 8008496C 06000524 */  addiu      $a1, $zero, 0x6
/* 6DEBEA0 80084970 14000624 */  addiu      $a2, $zero, 0x14
/* 6DEBEA4 80084974 CFD5000C */  jal        func_8003573C
/* 6DEBEA8 80084978 01000724 */   addiu     $a3, $zero, 0x1
/* 6DEBEAC 8008497C 23004010 */  beqz       $v0, .Llevel_32_80084A0C
/* 6DEBEB0 80084980 00000000 */   nop
/* 6DEBEB4 80084984 0780023C */  lui        $v0, %hi(D_8006C7C4)
/* 6DEBEB8 80084988 C4C7428C */  lw         $v0, %lo(D_8006C7C4)($v0)
/* 6DEBEBC 8008498C 00000000 */  nop
/* 6DEBEC0 80084990 03005114 */  bne        $v0, $s1, .Llevel_32_800849A0
/* 6DEBEC4 80084994 E6000524 */   addiu     $a1, $zero, 0xE6
/* 6DEBEC8 80084998 6B120208 */  j          .Llevel_32_800849AC
/* 6DEBECC 8008499C BE000524 */   addiu     $a1, $zero, 0xBE
.Llevel_32_800849A0:
/* 6DEBED0 800849A0 03004014 */  bnez       $v0, .Llevel_32_800849B0
/* 6DEBED4 800849A4 55020224 */   addiu     $v0, $zero, 0x255
/* 6DEBED8 800849A8 8C000524 */  addiu      $a1, $zero, 0x8C
.Llevel_32_800849AC:
/* 6DEBEDC 800849AC 55020224 */  addiu      $v0, $zero, 0x255
.Llevel_32_800849B0:
/* 6DEBEE0 800849B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DEBEE4 800849B4 21204002 */  addu       $a0, $s2, $zero
/* 6DEBEE8 800849B8 21300000 */  addu       $a2, $zero, $zero
/* 6DEBEEC 800849BC 77D7000C */  jal        func_80035DDC
/* 6DEBEF0 800849C0 90010724 */   addiu     $a3, $zero, 0x190
/* 6DEBEF4 800849C4 11004010 */  beqz       $v0, .Llevel_32_80084A0C
/* 6DEBEF8 800849C8 21300000 */   addu      $a2, $zero, $zero
/* 6DEBEFC 800849CC 0000638E */  lw         $v1, 0x0($s3)
/* 6DEBF00 800849D0 B4000224 */  addiu      $v0, $zero, 0xB4
/* 6DEBF04 800849D4 2C0062A6 */  sh         $v0, 0x2C($s3)
/* 6DEBF08 800849D8 0C00448E */  lw         $a0, 0xC($s2)
/* 6DEBF0C 800849DC 0400628E */  lw         $v0, 0x4($s3)
/* 6DEBF10 800849E0 1000458E */  lw         $a1, 0x10($s2)
/* 6DEBF14 800849E4 23206400 */  subu       $a0, $v1, $a0
/* 6DEBF18 800849E8 203A010C */  jal        func_8004E880
/* 6DEBF1C 800849EC 23284500 */   subu      $a1, $v0, $a1
/* 6DEBF20 800849F0 21204002 */  addu       $a0, $s2, $zero
/* 6DEBF24 800849F4 21280000 */  addu       $a1, $zero, $zero
/* 6DEBF28 800849F8 130062A2 */  sb         $v0, 0x13($s3)
/* 6DEBF2C 800849FC 78000224 */  addiu      $v0, $zero, 0x78
/* 6DEBF30 80084A00 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEBF34 80084A04 D0D3000C */  jal        func_80034F40
/* 6DEBF38 80084A08 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_32_80084A0C:
/* 6DEBF3C 80084A0C 3D004392 */  lbu        $v1, 0x3D($s2)
/* 6DEBF40 80084A10 05000224 */  addiu      $v0, $zero, 0x5
/* 6DEBF44 80084A14 0D006210 */  beq        $v1, $v0, .Llevel_32_80084A4C
/* 6DEBF48 80084A18 21204002 */   addu      $a0, $s2, $zero
/* 6DEBF4C 80084A1C 0780013C */  lui        $at, %hi(D_8006C770)
/* 6DEBF50 80084A20 70C720AC */  sw         $zero, %lo(D_8006C770)($at)
/* 6DEBF54 80084A24 3D004392 */  lbu        $v1, 0x3D($s2)
/* 6DEBF58 80084A28 3F004592 */  lbu        $a1, 0x3F($s2)
/* 6DEBF5C 80084A2C 72000224 */  addiu      $v0, $zero, 0x72
/* 6DEBF60 80084A30 400042A2 */  sb         $v0, 0x40($s2)
/* 6DEBF64 80084A34 05000224 */  addiu      $v0, $zero, 0x5
/* 6DEBF68 80084A38 3D0042A2 */  sb         $v0, 0x3D($s2)
/* 6DEBF6C 80084A3C 3F0040A2 */  sb         $zero, 0x3F($s2)
/* 6DEBF70 80084A40 3C0043A2 */  sb         $v1, 0x3C($s2)
/* 6DEBF74 80084A44 CDD5000C */  jal        func_80035734
/* 6DEBF78 80084A48 3E0045A2 */   sb        $a1, 0x3E($s2)
.Llevel_32_80084A4C:
/* 6DEBF7C 80084A4C 0807022A */  slti       $v0, $s0, 0x708
/* 6DEBF80 80084A50 06004014 */  bnez       $v0, .Llevel_32_80084A6C
/* 6DEBF84 80084A54 07000224 */   addiu     $v0, $zero, 0x7
/* 6DEBF88 80084A58 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 6DEBF8C 80084A5C 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 6DEBF90 80084A60 00000000 */  nop
/* 6DEBF94 80084A64 0A006214 */  bne        $v1, $v0, .Llevel_32_80084A90
/* 6DEBF98 80084A68 3C006426 */   addiu     $a0, $s3, 0x3C
.Llevel_32_80084A6C:
/* 6DEBF9C 80084A6C 3C00628E */  lw         $v0, 0x3C($s3)
/* 6DEBFA0 80084A70 00000000 */  nop
/* 6DEBFA4 80084A74 06004014 */  bnez       $v0, .Llevel_32_80084A90
/* 6DEBFA8 80084A78 3C006426 */   addiu     $a0, $s3, 0x3C
/* 6DEBFAC 80084A7C 0A000224 */  addiu      $v0, $zero, 0xA
/* 6DEBFB0 80084A80 3C0062AE */  sw         $v0, 0x3C($s3)
/* 6DEBFB4 80084A84 46004292 */  lbu        $v0, 0x46($s2)
/* 6DEBFB8 80084A88 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 6DEBFBC 80084A8C C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
.Llevel_32_80084A90:
/* 6DEBFC0 80084A90 69D6000C */  jal        func_800359A4
/* 6DEBFC4 80084A94 04000524 */   addiu     $a1, $zero, 0x4
/* 6DEBFC8 80084A98 02000324 */  addiu      $v1, $zero, 0x2
/* 6DEBFCC 80084A9C 13004310 */  beq        $v0, $v1, .Llevel_32_80084AEC
/* 6DEBFD0 80084AA0 21300000 */   addu      $a2, $zero, $zero
/* 6DEBFD4 80084AA4 0C00438E */  lw         $v1, 0xC($s2)
/* 6DEBFD8 80084AA8 0780043C */  lui        $a0, %hi(D_8006E020)
/* 6DEBFDC 80084AAC 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 6DEBFE0 80084AB0 1000428E */  lw         $v0, 0x10($s2)
/* 6DEBFE4 80084AB4 0780053C */  lui        $a1, %hi(D_8006E024)
/* 6DEBFE8 80084AB8 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 6DEBFEC 80084ABC 23206400 */  subu       $a0, $v1, $a0
/* 6DEBFF0 80084AC0 203A010C */  jal        func_8004E880
/* 6DEBFF4 80084AC4 23284500 */   subu      $a1, $v0, $a1
/* 6DEBFF8 80084AC8 0780043C */  lui        $a0, %hi(D_8006E040)
/* 6DEBFFC 80084ACC 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 6DEC000 80084AD0 21284000 */  addu       $a1, $v0, $zero
/* 6DEC004 80084AD4 00240400 */  sll        $a0, $a0, 16
/* 6DEC008 80084AD8 993C010C */  jal        func_8004F264
/* 6DEC00C 80084ADC 03250400 */   sra       $a0, $a0, 20
/* 6DEC010 80084AE0 29004228 */  slti       $v0, $v0, 0x29
/* 6DEC014 80084AE4 0A004014 */  bnez       $v0, .Llevel_32_80084B10
/* 6DEC018 80084AE8 21300000 */   addu      $a2, $zero, $zero
.Llevel_32_80084AEC:
/* 6DEC01C 80084AEC 21204002 */  addu       $a0, $s2, $zero
/* 6DEC020 80084AF0 21280000 */  addu       $a1, $zero, $zero
/* 6DEC024 80084AF4 B4000224 */  addiu      $v0, $zero, 0xB4
/* 6DEC028 80084AF8 2C0062A6 */  sh         $v0, 0x2C($s3)
/* 6DEC02C 80084AFC 78000224 */  addiu      $v0, $zero, 0x78
/* 6DEC030 80084B00 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEC034 80084B04 D0D3000C */  jal        func_80034F40
/* 6DEC038 80084B08 480040A2 */   sb        $zero, 0x48($s2)
/* 6DEC03C 80084B0C 21300000 */  addu       $a2, $zero, $zero
.Llevel_32_80084B10:
/* 6DEC040 80084B10 0C00438E */  lw         $v1, 0xC($s2)
/* 6DEC044 80084B14 0780043C */  lui        $a0, %hi(D_8006E020)
/* 6DEC048 80084B18 20E0848C */  lw         $a0, %lo(D_8006E020)($a0)
/* 6DEC04C 80084B1C 1000428E */  lw         $v0, 0x10($s2)
/* 6DEC050 80084B20 0780053C */  lui        $a1, %hi(D_8006E024)
/* 6DEC054 80084B24 24E0A58C */  lw         $a1, %lo(D_8006E024)($a1)
/* 6DEC058 80084B28 23206400 */  subu       $a0, $v1, $a0
/* 6DEC05C 80084B2C 203A010C */  jal        func_8004E880
/* 6DEC060 80084B30 23284500 */   subu      $a1, $v0, $a1
/* 6DEC064 80084B34 0780043C */  lui        $a0, %hi(D_8006E040)
/* 6DEC068 80084B38 40E08494 */  lhu        $a0, %lo(D_8006E040)($a0)
/* 6DEC06C 80084B3C 21284000 */  addu       $a1, $v0, $zero
/* 6DEC070 80084B40 00240400 */  sll        $a0, $a0, 16
/* 6DEC074 80084B44 993C010C */  jal        func_8004F264
/* 6DEC078 80084B48 03250400 */   sra       $a0, $a0, 20
/* 6DEC07C 80084B4C 29004228 */  slti       $v0, $v0, 0x29
/* 6DEC080 80084B50 08004014 */  bnez       $v0, .Llevel_32_80084B74
/* 6DEC084 80084B54 21204002 */   addu      $a0, $s2, $zero
/* 6DEC088 80084B58 21280000 */  addu       $a1, $zero, $zero
/* 6DEC08C 80084B5C 3C000224 */  addiu      $v0, $zero, 0x3C
/* 6DEC090 80084B60 2C0062A6 */  sh         $v0, 0x2C($s3)
/* 6DEC094 80084B64 78000224 */  addiu      $v0, $zero, 0x78
/* 6DEC098 80084B68 180062A6 */  sh         $v0, 0x18($s3)
/* 6DEC09C 80084B6C D0D3000C */  jal        func_80034F40
/* 6DEC0A0 80084B70 480040A2 */   sb        $zero, 0x48($s2)
.Llevel_32_80084B74:
/* 6DEC0A4 80084B74 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 6DEC0A8 80084B78 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 6DEC0AC 80084B7C 32000224 */  addiu      $v0, $zero, 0x32
/* 6DEC0B0 80084B80 11006214 */  bne        $v1, $v0, .Llevel_32_80084BC8
/* 6DEC0B4 80084B84 02000224 */   addiu     $v0, $zero, 0x2
/* 6DEC0B8 80084B88 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 6DEC0BC 80084B8C C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 6DEC0C0 80084B90 00000000 */  nop
/* 6DEC0C4 80084B94 11006214 */  bne        $v1, $v0, .Llevel_32_80084BDC
/* 6DEC0C8 80084B98 21204002 */   addu      $a0, $s2, $zero
/* 6DEC0CC 80084B9C 3D004392 */  lbu        $v1, 0x3D($s2)
/* 6DEC0D0 80084BA0 00000000 */  nop
/* 6DEC0D4 80084BA4 0200622C */  sltiu      $v0, $v1, 0x2
/* 6DEC0D8 80084BA8 0C004014 */  bnez       $v0, .Llevel_32_80084BDC
/* 6DEC0DC 80084BAC 04000224 */   addiu     $v0, $zero, 0x4
/* 6DEC0E0 80084BB0 0A006210 */  beq        $v1, $v0, .Llevel_32_80084BDC
/* 6DEC0E4 80084BB4 13000224 */   addiu     $v0, $zero, 0x13
/* 6DEC0E8 80084BB8 0780033C */  lui        $v1, %hi(D_80070328 + 0x50)
/* 6DEC0EC 80084BBC 7803638C */  lw         $v1, %lo(D_80070328 + 0x50)($v1)
/* 6DEC0F0 80084BC0 F4120208 */  j          .Llevel_32_80084BD0
/* 6DEC0F4 80084BC4 00000000 */   nop
.Llevel_32_80084BC8:
/* 6DEC0F8 80084BC8 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 6DEC0FC 80084BCC C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
.Llevel_32_80084BD0:
/* 6DEC100 80084BD0 00000000 */  nop
/* 6DEC104 80084BD4 03006210 */  beq        $v1, $v0, .Llevel_32_80084BE4
/* 6DEC108 80084BD8 21204002 */   addu      $a0, $s2, $zero
.Llevel_32_80084BDC:
/* 6DEC10C 80084BDC 4957010C */  jal        func_80055D24
/* 6DEC110 80084BE0 05000524 */   addiu     $a1, $zero, 0x5
.Llevel_32_80084BE4:
/* 6DEC114 80084BE4 5800BF8F */  lw         $ra, 0x58($sp)
/* 6DEC118 80084BE8 5400B58F */  lw         $s5, 0x54($sp)
/* 6DEC11C 80084BEC 5000B48F */  lw         $s4, 0x50($sp)
/* 6DEC120 80084BF0 4C00B38F */  lw         $s3, 0x4C($sp)
/* 6DEC124 80084BF4 4800B28F */  lw         $s2, 0x48($sp)
/* 6DEC128 80084BF8 4400B18F */  lw         $s1, 0x44($sp)
/* 6DEC12C 80084BFC 4000B08F */  lw         $s0, 0x40($sp)
/* 6DEC130 80084C00 6000BD27 */  addiu      $sp, $sp, 0x60
/* 6DEC134 80084C04 0800E003 */  jr         $ra
/* 6DEC138 80084C08 00000000 */   nop
.size MobyUpdate_155_level_32, . - MobyUpdate_155_level_32
