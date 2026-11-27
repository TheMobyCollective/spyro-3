.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_1015_level_44
/* 8B5A8F0 800873C0 48FFBD27 */  addiu      $sp, $sp, -0xB8
/* 8B5A8F4 800873C4 B000BEAF */  sw         $fp, 0xB0($sp)
/* 8B5A8F8 800873C8 21F08000 */  addu       $fp, $a0, $zero
/* 8B5A8FC 800873CC B400BFAF */  sw         $ra, 0xB4($sp)
/* 8B5A900 800873D0 AC00B7AF */  sw         $s7, 0xAC($sp)
/* 8B5A904 800873D4 A800B6AF */  sw         $s6, 0xA8($sp)
/* 8B5A908 800873D8 A400B5AF */  sw         $s5, 0xA4($sp)
/* 8B5A90C 800873DC A000B4AF */  sw         $s4, 0xA0($sp)
/* 8B5A910 800873E0 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 8B5A914 800873E4 9800B2AF */  sw         $s2, 0x98($sp)
/* 8B5A918 800873E8 9400B1AF */  sw         $s1, 0x94($sp)
/* 8B5A91C 800873EC 9000B0AF */  sw         $s0, 0x90($sp)
/* 8B5A920 800873F0 0000CF8F */  lw         $t7, 0x0($fp)
/* 8B5A924 800873F4 00000000 */  nop
/* 8B5A928 800873F8 3800AFAF */  sw         $t7, 0x38($sp)
/* 8B5A92C 800873FC 1000E28D */  lw         $v0, 0x10($t7)
/* 8B5A930 80087400 00000000 */  nop
/* 8B5A934 80087404 0000428C */  lw         $v0, 0x0($v0)
/* 8B5A938 80087408 00000000 */  nop
/* 8B5A93C 8008740C 4000A2AF */  sw         $v0, 0x40($sp)
/* 8B5A940 80087410 4100C0A3 */  sb         $zero, 0x41($fp)
/* 8B5A944 80087414 4C00C0A3 */  sb         $zero, 0x4C($fp)
/* 8B5A948 80087418 4D00C0A3 */  sb         $zero, 0x4D($fp)
/* 8B5A94C 8008741C 1400E285 */  lh         $v0, 0x14($t7)
/* 8B5A950 80087420 00000000 */  nop
/* 8B5A954 80087424 7F004014 */  bnez       $v0, .Llevel_44_80087624
/* 8B5A958 80087428 21A80000 */   addu      $s5, $zero, $zero
/* 8B5A95C 8008742C 0C00C427 */  addiu      $a0, $fp, 0xC
/* 8B5A960 80087430 00040524 */  addiu      $a1, $zero, 0x400
/* 8B5A964 80087434 A270000C */  jal        func_8001C288
/* 8B5A968 80087438 07000624 */   addiu     $a2, $zero, 0x7
/* 8B5A96C 8008743C 6A004010 */  beqz       $v0, .Llevel_44_800875E8
/* 8B5A970 80087440 21300000 */   addu      $a2, $zero, $zero
/* 8B5A974 80087444 0780033C */  lui        $v1, %hi(D_80070328)
/* 8B5A978 80087448 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 8B5A97C 8008744C 0C00C48F */  lw         $a0, 0xC($fp)
/* 8B5A980 80087450 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 8B5A984 80087454 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 8B5A988 80087458 1000C58F */  lw         $a1, 0x10($fp)
/* 8B5A98C 8008745C 23206400 */  subu       $a0, $v1, $a0
/* 8B5A990 80087460 203A010C */  jal        func_8004E880
/* 8B5A994 80087464 23284500 */   subu      $a1, $v0, $a1
/* 8B5A998 80087468 21284000 */  addu       $a1, $v0, $zero
/* 8B5A99C 8008746C 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 8B5A9A0 80087470 C00525AC */  sw         $a1, %lo(D_80070328 + 0x298)($at)
/* 8B5A9A4 80087474 4800C393 */  lbu        $v1, 0x48($fp)
/* 8B5A9A8 80087478 14000224 */  addiu      $v0, $zero, 0x14
/* 8B5A9AC 8008747C 5B006214 */  bne        $v1, $v0, .Llevel_44_800875EC
/* 8B5A9B0 80087480 0C00C427 */   addiu     $a0, $fp, 0xC
/* 8B5A9B4 80087484 0780033C */  lui        $v1, %hi(D_8006C5BC)
/* 8B5A9B8 80087488 BCC5638C */  lw         $v1, %lo(D_8006C5BC)($v1)
/* 8B5A9BC 8008748C 2C000224 */  addiu      $v0, $zero, 0x2C
/* 8B5A9C0 80087490 2E006214 */  bne        $v1, $v0, .Llevel_44_8008754C
/* 8B5A9C4 80087494 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 8B5A9C8 80087498 0780033C */  lui        $v1, %hi(D_8006C5C8)
/* 8B5A9CC 8008749C C8C5638C */  lw         $v1, %lo(D_8006C5C8)($v1)
/* 8B5A9D0 800874A0 02000224 */  addiu      $v0, $zero, 0x2
/* 8B5A9D4 800874A4 29006214 */  bne        $v1, $v0, .Llevel_44_8008754C
/* 8B5A9D8 800874A8 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 8B5A9DC 800874AC 0010043C */  lui        $a0, (0x10000480 >> 16)
/* 8B5A9E0 800874B0 80048434 */  ori        $a0, $a0, (0x10000480 & 0xFFFF)
/* 8B5A9E4 800874B4 0780023C */  lui        $v0, %hi(D_80070328 + 0x20C)
/* 8B5A9E8 800874B8 3405428C */  lw         $v0, %lo(D_80070328 + 0x20C)($v0)
/* 8B5A9EC 800874BC 39000324 */  addiu      $v1, $zero, 0x39
/* 8B5A9F0 800874C0 0780013C */  lui        $at, %hi(D_80070328 + 0x23C)
/* 8B5A9F4 800874C4 640523AC */  sw         $v1, %lo(D_80070328 + 0x23C)($at)
/* 8B5A9F8 800874C8 25104400 */  or         $v0, $v0, $a0
/* 8B5A9FC 800874CC 40200500 */  sll        $a0, $a1, 1
/* 8B5AA00 800874D0 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 8B5AA04 800874D4 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 8B5AA08 800874D8 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5AA0C 800874DC 21082400 */  addu       $at, $at, $a0
/* 8B5AA10 800874E0 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 8B5AA14 800874E4 00000000 */  nop
/* 8B5AA18 800874E8 80100300 */  sll        $v0, $v1, 2
/* 8B5AA1C 800874EC 21104300 */  addu       $v0, $v0, $v1
/* 8B5AA20 800874F0 00190200 */  sll        $v1, $v0, 4
/* 8B5AA24 800874F4 23186200 */  subu       $v1, $v1, $v0
/* 8B5AA28 800874F8 031B0300 */  sra        $v1, $v1, 12
/* 8B5AA2C 800874FC 1800A3AF */  sw         $v1, 0x18($sp)
/* 8B5AA30 80087500 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5AA34 80087504 21082400 */  addu       $at, $at, $a0
/* 8B5AA38 80087508 A0582484 */  lh         $a0, %lo(D_800658A0)($at)
/* 8B5AA3C 8008750C 32000224 */  addiu      $v0, $zero, 0x32
/* 8B5AA40 80087510 2000A0AF */  sw         $zero, 0x20($sp)
/* 8B5AA44 80087514 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 8B5AA48 80087518 440523AC */  sw         $v1, %lo(D_80070328 + 0x21C)($at)
/* 8B5AA4C 8008751C 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 8B5AA50 80087520 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
/* 8B5AA54 80087524 80180400 */  sll        $v1, $a0, 2
/* 8B5AA58 80087528 21186400 */  addu       $v1, $v1, $a0
/* 8B5AA5C 8008752C 00110300 */  sll        $v0, $v1, 4
/* 8B5AA60 80087530 23104300 */  subu       $v0, $v0, $v1
/* 8B5AA64 80087534 03130200 */  sra        $v0, $v0, 12
/* 8B5AA68 80087538 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 8B5AA6C 8008753C 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 8B5AA70 80087540 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 8B5AA74 80087544 7B1D0208 */  j          .Llevel_44_800875EC
/* 8B5AA78 80087548 0C00C427 */   addiu     $a0, $fp, 0xC
.Llevel_44_8008754C:
/* 8B5AA7C 8008754C 0780043C */  lui        $a0, %hi(D_80070328 + 0x298)
/* 8B5AA80 80087550 C005848C */  lw         $a0, %lo(D_80070328 + 0x298)($a0)
/* 8B5AA84 80087554 00044234 */  ori        $v0, $v0, (0x10000400 & 0xFFFF)
/* 8B5AA88 80087558 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 8B5AA8C 8008755C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 8B5AA90 80087560 40200400 */  sll        $a0, $a0, 1
/* 8B5AA94 80087564 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5AA98 80087568 21082400 */  addu       $at, $at, $a0
/* 8B5AA9C 8008756C 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8B5AAA0 80087570 00000000 */  nop
/* 8B5AAA4 80087574 80180200 */  sll        $v1, $v0, 2
/* 8B5AAA8 80087578 21186200 */  addu       $v1, $v1, $v0
/* 8B5AAAC 8008757C 00110300 */  sll        $v0, $v1, 4
/* 8B5AAB0 80087580 23104300 */  subu       $v0, $v0, $v1
/* 8B5AAB4 80087584 03130200 */  sra        $v0, $v0, 12
/* 8B5AAB8 80087588 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 8B5AABC 8008758C 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 8B5AAC0 80087590 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5AAC4 80087594 21082400 */  addu       $at, $at, $a0
/* 8B5AAC8 80087598 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8B5AACC 8008759C 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 8B5AAD0 800875A0 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 8B5AAD4 800875A4 80180200 */  sll        $v1, $v0, 2
/* 8B5AAD8 800875A8 21186200 */  addu       $v1, $v1, $v0
/* 8B5AADC 800875AC 00110300 */  sll        $v0, $v1, 4
/* 8B5AAE0 800875B0 23104300 */  subu       $v0, $v0, $v1
/* 8B5AAE4 800875B4 0780033C */  lui        $v1, %hi(D_80070328 + 8)
/* 8B5AAE8 800875B8 3003638C */  lw         $v1, %lo(D_80070328 + 8)($v1)
/* 8B5AAEC 800875BC 03130200 */  sra        $v0, $v0, 12
/* 8B5AAF0 800875C0 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 8B5AAF4 800875C4 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
/* 8B5AAF8 800875C8 1400C28F */  lw         $v0, 0x14($fp)
/* 8B5AAFC 800875CC 00000000 */  nop
/* 8B5AB00 800875D0 2A104300 */  slt        $v0, $v0, $v1
/* 8B5AB04 800875D4 02004014 */  bnez       $v0, .Llevel_44_800875E0
/* 8B5AB08 800875D8 CEFF0224 */   addiu     $v0, $zero, -0x32
/* 8B5AB0C 800875DC 32000224 */  addiu      $v0, $zero, 0x32
.Llevel_44_800875E0:
/* 8B5AB10 800875E0 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 8B5AB14 800875E4 4C0522AC */  sw         $v0, %lo(D_80070328 + 0x224)($at)
.Llevel_44_800875E8:
/* 8B5AB18 800875E8 0C00C427 */  addiu      $a0, $fp, 0xC
.Llevel_44_800875EC:
/* 8B5AB1C 800875EC DC050524 */  addiu      $a1, $zero, 0x5DC
/* 8B5AB20 800875F0 01000624 */  addiu      $a2, $zero, 0x1
/* 8B5AB24 800875F4 21380000 */  addu       $a3, $zero, $zero
/* 8B5AB28 800875F8 0400023C */  lui        $v0, (0x40000 >> 16)
/* 8B5AB2C 800875FC 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B5AB30 80087600 8C6E000C */  jal        func_8001BA30
/* 8B5AB34 80087604 1400BEAF */   sw        $fp, 0x14($sp)
/* 8B5AB38 80087608 05004010 */  beqz       $v0, .Llevel_44_80087620
/* 8B5AB3C 8008760C 21200000 */   addu      $a0, $zero, $zero
/* 8B5AB40 80087610 21280000 */  addu       $a1, $zero, $zero
/* 8B5AB44 80087614 203A010C */  jal        func_8004E880
/* 8B5AB48 80087618 21300000 */   addu      $a2, $zero, $zero
/* 8B5AB4C 8008761C 5100C2A3 */  sb         $v0, 0x51($fp)
.Llevel_44_80087620:
/* 8B5AB50 80087620 21A80000 */  addu       $s5, $zero, $zero
.Llevel_44_80087624:
/* 8B5AB54 80087624 21980000 */  addu       $s3, $zero, $zero
/* 8B5AB58 80087628 01001224 */  addiu      $s2, $zero, 0x1
/* 8B5AB5C 8008762C 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AB60 80087630 14000424 */  addiu      $a0, $zero, 0x14
/* 8B5AB64 80087634 0400EE8D */  lw         $t6, 0x4($t7)
/* 8B5AB68 80087638 0200EF85 */  lh         $t7, 0x2($t7)
/* 8B5AB6C 8008763C 0406D725 */  addiu      $s7, $t6, 0x604
/* 8B5AB70 80087640 5800AFAF */  sw         $t7, 0x58($sp)
/* 8B5AB74 80087644 5800A397 */  lhu        $v1, 0x58($sp)
/* 8B5AB78 80087648 4406CF25 */  addiu      $t7, $t6, 0x644
/* 8B5AB7C 8008764C 4800AFAF */  sw         $t7, 0x48($sp)
/* 8B5AB80 80087650 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AB84 80087654 4800C293 */  lbu        $v0, 0x48($fp)
/* 8B5AB88 80087658 0000EF85 */  lh         $t7, 0x0($t7)
/* 8B5AB8C 8008765C 0F004410 */  beq        $v0, $a0, .Llevel_44_8008769C
/* 8B5AB90 80087660 5000AFAF */   sw        $t7, 0x50($sp)
/* 8B5AB94 80087664 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AB98 80087668 5E016224 */  addiu      $v0, $v1, 0x15E
/* 8B5AB9C 8008766C 0200E2A5 */  sh         $v0, 0x2($t7)
/* 8B5ABA0 80087670 4800C293 */  lbu        $v0, 0x48($fp)
/* 8B5ABA4 80087674 00000000 */  nop
/* 8B5ABA8 80087678 09004410 */  beq        $v0, $a0, .Llevel_44_800876A0
/* 8B5ABAC 8008767C 21B00000 */   addu      $s6, $zero, $zero
/* 8B5ABB0 80087680 1600E285 */  lh         $v0, 0x16($t7)
/* 8B5ABB4 80087684 00000000 */  nop
/* 8B5ABB8 80087688 21184000 */  addu       $v1, $v0, $zero
/* 8B5ABBC 8008768C 3A074228 */  slti       $v0, $v0, 0x73A
/* 8B5ABC0 80087690 03004010 */  beqz       $v0, .Llevel_44_800876A0
/* 8B5ABC4 80087694 FA006224 */   addiu     $v0, $v1, 0xFA
/* 8B5ABC8 80087698 1600E2A5 */  sh         $v0, 0x16($t7)
.Llevel_44_8008769C:
/* 8B5ABCC 8008769C 21B00000 */  addu       $s6, $zero, $zero
.Llevel_44_800876A0:
/* 8B5ABD0 800876A0 06800D3C */  lui        $t5, %hi(D_80065920)
/* 8B5ABD4 800876A4 2059AD25 */  addiu      $t5, $t5, %lo(D_80065920)
/* 8B5ABD8 800876A8 06800C3C */  lui        $t4, %hi(D_800658A0)
/* 8B5ABDC 800876AC A0588C25 */  addiu      $t4, $t4, %lo(D_800658A0)
.Llevel_44_800876B0:
/* 8B5ABE0 800876B0 21800000 */  addu       $s0, $zero, $zero
/* 8B5ABE4 800876B4 80001424 */  addiu      $s4, $zero, 0x80
/* 8B5ABE8 800876B8 40101500 */  sll        $v0, $s5, 1
/* 8B5ABEC 800876BC 21105500 */  addu       $v0, $v0, $s5
/* 8B5ABF0 800876C0 80100200 */  sll        $v0, $v0, 2
/* 8B5ABF4 800876C4 21884E00 */  addu       $s1, $v0, $t6
/* 8B5ABF8 800876C8 4600C293 */  lbu        $v0, 0x46($fp)
/* 8B5ABFC 800876CC C0181600 */  sll        $v1, $s6, 3
/* 8B5AC00 800876D0 21104300 */  addu       $v0, $v0, $v1
/* 8B5AC04 800876D4 FF004230 */  andi       $v0, $v0, 0xFF
/* 8B5AC08 800876D8 40100200 */  sll        $v0, $v0, 1
/* 8B5AC0C 800876DC 21584D00 */  addu       $t3, $v0, $t5
/* 8B5AC10 800876E0 21504C00 */  addu       $t2, $v0, $t4
.Llevel_44_800876E4:
/* 8B5AC14 800876E4 5000A48F */  lw         $a0, 0x50($sp)
/* 8B5AC18 800876E8 02006016 */  bnez       $s3, .Llevel_44_800876F4
/* 8B5AC1C 800876EC 5555023C */   lui       $v0, (0x55555556 >> 16)
/* 8B5AC20 800876F0 5800A48F */  lw         $a0, 0x58($sp)
.Llevel_44_800876F4:
/* 8B5AC24 800876F4 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 8B5AC28 800876F8 01006326 */  addiu      $v1, $s3, 0x1
/* 8B5AC2C 800876FC 18006200 */  mult       $v1, $v0
/* 8B5AC30 80087700 C3170300 */  sra        $v0, $v1, 31
/* 8B5AC34 80087704 10780000 */  mfhi       $t7
/* 8B5AC38 80087708 2398E201 */  subu       $s3, $t7, $v0
/* 8B5AC3C 8008770C 40101300 */  sll        $v0, $s3, 1
/* 8B5AC40 80087710 21105300 */  addu       $v0, $v0, $s3
/* 8B5AC44 80087714 04004016 */  bnez       $s2, .Llevel_44_80087728
/* 8B5AC48 80087718 23986200 */   subu      $s3, $v1, $v0
/* 8B5AC4C 8008771C 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AC50 80087720 00000000 */  nop
/* 8B5AC54 80087724 1600E485 */  lh         $a0, 0x16($t7)
.Llevel_44_80087728:
/* 8B5AC58 80087728 21108D02 */  addu       $v0, $s4, $t5
/* 8B5AC5C 8008772C 1800A0AF */  sw         $zero, 0x18($sp)
/* 8B5AC60 80087730 00004284 */  lh         $v0, 0x0($v0)
/* 8B5AC64 80087734 00000000 */  nop
/* 8B5AC68 80087738 18004400 */  mult       $v0, $a0
/* 8B5AC6C 8008773C 21108C02 */  addu       $v0, $s4, $t4
/* 8B5AC70 80087740 12180000 */  mflo       $v1
/* 8B5AC74 80087744 031B0300 */  sra        $v1, $v1, 12
/* 8B5AC78 80087748 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 8B5AC7C 8008774C 00004284 */  lh         $v0, 0x0($v0)
/* 8B5AC80 80087750 00000000 */  nop
/* 8B5AC84 80087754 18004400 */  mult       $v0, $a0
/* 8B5AC88 80087758 12400000 */  mflo       $t0
/* 8B5AC8C 8008775C 03130800 */  sra        $v0, $t0, 12
/* 8B5AC90 80087760 2000A2AF */  sw         $v0, 0x20($sp)
/* 8B5AC94 80087764 00004485 */  lh         $a0, 0x0($t2)
/* 8B5AC98 80087768 00000000 */  nop
/* 8B5AC9C 8008776C 18006400 */  mult       $v1, $a0
/* 8B5ACA0 80087770 01004726 */  addiu      $a3, $s2, 0x1
/* 8B5ACA4 80087774 12180000 */  mflo       $v1
/* 8B5ACA8 80087778 6666023C */  lui        $v0, (0x66666667 >> 16)
/* 8B5ACAC 8008777C 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
/* 8B5ACB0 80087780 1800E200 */  mult       $a3, $v0
/* 8B5ACB4 80087784 03430300 */  sra        $t0, $v1, 12
/* 8B5ACB8 80087788 00006385 */  lh         $v1, 0x0($t3)
/* 8B5ACBC 8008778C 23100800 */  negu       $v0, $t0
/* 8B5ACC0 80087790 000022AE */  sw         $v0, 0x0($s1)
/* 8B5ACC4 80087794 10480000 */  mfhi       $t1
/* 8B5ACC8 80087798 1C00A28F */  lw         $v0, 0x1C($sp)
/* 8B5ACCC 8008779C 00000000 */  nop
/* 8B5ACD0 800877A0 18004300 */  mult       $v0, $v1
/* 8B5ACD4 800877A4 12400000 */  mflo       $t0
/* 8B5ACD8 800877A8 1800A28F */  lw         $v0, 0x18($sp)
/* 8B5ACDC 800877AC 00000000 */  nop
/* 8B5ACE0 800877B0 18004400 */  mult       $v0, $a0
/* 8B5ACE4 800877B4 0C00C527 */  addiu      $a1, $fp, 0xC
/* 8B5ACE8 800877B8 21302002 */  addu       $a2, $s1, $zero
/* 8B5ACEC 800877BC 0100B526 */  addiu      $s5, $s5, 0x1
/* 8B5ACF0 800877C0 01001026 */  addiu      $s0, $s0, 0x1
/* 8B5ACF4 800877C4 20009426 */  addiu      $s4, $s4, 0x20
/* 8B5ACF8 800877C8 83180900 */  sra        $v1, $t1, 2
/* 8B5ACFC 800877CC 21202002 */  addu       $a0, $s1, $zero
/* 8B5AD00 800877D0 C3170700 */  sra        $v0, $a3, 31
/* 8B5AD04 800877D4 23906200 */  subu       $s2, $v1, $v0
/* 8B5AD08 800877D8 03430800 */  sra        $t0, $t0, 12
/* 8B5AD0C 800877DC 12C00000 */  mflo       $t8
/* 8B5AD10 800877E0 03131800 */  sra        $v0, $t8, 12
/* 8B5AD14 800877E4 21104800 */  addu       $v0, $v0, $t0
/* 8B5AD18 800877E8 040022AE */  sw         $v0, 0x4($s1)
/* 8B5AD1C 800877EC 80101200 */  sll        $v0, $s2, 2
/* 8B5AD20 800877F0 21105200 */  addu       $v0, $v0, $s2
/* 8B5AD24 800877F4 40100200 */  sll        $v0, $v0, 1
/* 8B5AD28 800877F8 2000A38F */  lw         $v1, 0x20($sp)
/* 8B5AD2C 800877FC 2390E200 */  subu       $s2, $a3, $v0
/* 8B5AD30 80087800 080023AE */  sw         $v1, 0x8($s1)
/* 8B5AD34 80087804 7800AAAF */  sw         $t2, 0x78($sp)
/* 8B5AD38 80087808 7C00ABAF */  sw         $t3, 0x7C($sp)
/* 8B5AD3C 8008780C 8000ACAF */  sw         $t4, 0x80($sp)
/* 8B5AD40 80087810 8400ADAF */  sw         $t5, 0x84($sp)
/* 8B5AD44 80087814 653C010C */  jal        func_8004F194
/* 8B5AD48 80087818 8800AEAF */   sw        $t6, 0x88($sp)
/* 8B5AD4C 8008781C 0800022A */  slti       $v0, $s0, 0x8
/* 8B5AD50 80087820 7800AA8F */  lw         $t2, 0x78($sp)
/* 8B5AD54 80087824 7C00AB8F */  lw         $t3, 0x7C($sp)
/* 8B5AD58 80087828 8000AC8F */  lw         $t4, 0x80($sp)
/* 8B5AD5C 8008782C 8400AD8F */  lw         $t5, 0x84($sp)
/* 8B5AD60 80087830 8800AE8F */  lw         $t6, 0x88($sp)
/* 8B5AD64 80087834 ABFF4014 */  bnez       $v0, .Llevel_44_800876E4
/* 8B5AD68 80087838 0C003126 */   addiu     $s1, $s1, 0xC
/* 8B5AD6C 8008783C 0100D626 */  addiu      $s6, $s6, 0x1
/* 8B5AD70 80087840 1000C22A */  slti       $v0, $s6, 0x10
/* 8B5AD74 80087844 9AFF4014 */  bnez       $v0, .Llevel_44_800876B0
/* 8B5AD78 80087848 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8B5AD7C 8008784C 0006C2AD */  sw         $v0, 0x600($t6)
/* 8B5AD80 80087850 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AD84 80087854 00000000 */  nop
/* 8B5AD88 80087858 1400E385 */  lh         $v1, 0x14($t7)
/* 8B5AD8C 8008785C 00000000 */  nop
/* 8B5AD90 80087860 07006228 */  slti       $v0, $v1, 0x7
/* 8B5AD94 80087864 10004014 */  bnez       $v0, .Llevel_44_800878A8
/* 8B5AD98 80087868 04006228 */   slti      $v0, $v1, 0x4
/* 8B5AD9C 8008786C FAFF6224 */  addiu      $v0, $v1, -0x6
/* 8B5ADA0 80087870 80180200 */  sll        $v1, $v0, 2
/* 8B5ADA4 80087874 21186200 */  addu       $v1, $v1, $v0
/* 8B5ADA8 80087878 40180300 */  sll        $v1, $v1, 1
/* 8B5ADAC 8008787C 40000224 */  addiu      $v0, $zero, 0x40
/* 8B5ADB0 80087880 23104300 */  subu       $v0, $v0, $v1
/* 8B5ADB4 80087884 02004104 */  bgez       $v0, .Llevel_44_80087890
/* 8B5ADB8 80087888 00000000 */   nop
/* 8B5ADBC 8008788C 21100000 */  addu       $v0, $zero, $zero
.Llevel_44_80087890:
/* 8B5ADC0 80087890 0000E2A2 */  sb         $v0, 0x0($s7)
/* 8B5ADC4 80087894 43100200 */  sra        $v0, $v0, 1
/* 8B5ADC8 80087898 0100E2A2 */  sb         $v0, 0x1($s7)
/* 8B5ADCC 8008789C FF004230 */  andi       $v0, $v0, 0xFF
/* 8B5ADD0 800878A0 3F1E0208 */  j          .Llevel_44_800878FC
/* 8B5ADD4 800878A4 42100200 */   srl       $v0, $v0, 1
.Llevel_44_800878A8:
/* 8B5ADD8 800878A8 09004014 */  bnez       $v0, .Llevel_44_800878D0
/* 8B5ADDC 800878AC 80000224 */   addiu     $v0, $zero, 0x80
/* 8B5ADE0 800878B0 FDFF6224 */  addiu      $v0, $v1, -0x3
/* 8B5ADE4 800878B4 00110200 */  sll        $v0, $v0, 4
/* 8B5ADE8 800878B8 80000324 */  addiu      $v1, $zero, 0x80
/* 8B5ADEC 800878BC 23106200 */  subu       $v0, $v1, $v0
/* 8B5ADF0 800878C0 0000E2A2 */  sb         $v0, 0x0($s7)
/* 8B5ADF4 800878C4 0100E2A2 */  sb         $v0, 0x1($s7)
/* 8B5ADF8 800878C8 401E0208 */  j          .Llevel_44_80087900
/* 8B5ADFC 800878CC 0200E0A2 */   sb        $zero, 0x2($s7)
.Llevel_44_800878D0:
/* 8B5AE00 800878D0 0000E2A2 */  sb         $v0, 0x0($s7)
/* 8B5AE04 800878D4 0100E2A2 */  sb         $v0, 0x1($s7)
/* 8B5AE08 800878D8 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AE0C 800878DC 00000000 */  nop
/* 8B5AE10 800878E0 1400E285 */  lh         $v0, 0x14($t7)
/* 8B5AE14 800878E4 80000324 */  addiu      $v1, $zero, 0x80
/* 8B5AE18 800878E8 40110200 */  sll        $v0, $v0, 5
/* 8B5AE1C 800878EC 23106200 */  subu       $v0, $v1, $v0
/* 8B5AE20 800878F0 02004104 */  bgez       $v0, .Llevel_44_800878FC
/* 8B5AE24 800878F4 00000000 */   nop
/* 8B5AE28 800878F8 21100000 */  addu       $v0, $zero, $zero
.Llevel_44_800878FC:
/* 8B5AE2C 800878FC 0200E2A2 */  sb         $v0, 0x2($s7)
.Llevel_44_80087900:
/* 8B5AE30 80087900 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AE34 80087904 00000000 */  nop
/* 8B5AE38 80087908 1400E385 */  lh         $v1, 0x14($t7)
/* 8B5AE3C 8008790C 00000000 */  nop
/* 8B5AE40 80087910 06006228 */  slti       $v0, $v1, 0x6
/* 8B5AE44 80087914 04004014 */  bnez       $v0, .Llevel_44_80087928
/* 8B5AE48 80087918 FF000224 */   addiu     $v0, $zero, 0xFF
/* 8B5AE4C 8008791C 10000224 */  addiu      $v0, $zero, 0x10
/* 8B5AE50 80087920 23104300 */  subu       $v0, $v0, $v1
/* 8B5AE54 80087924 C0100200 */  sll        $v0, $v0, 3
.Llevel_44_80087928:
/* 8B5AE58 80087928 0400E2A2 */  sb         $v0, 0x4($s7)
/* 8B5AE5C 8008792C 0500E2A2 */  sb         $v0, 0x5($s7)
/* 8B5AE60 80087930 0600E0A2 */  sb         $zero, 0x6($s7)
/* 8B5AE64 80087934 21800000 */  addu       $s0, $zero, $zero
/* 8B5AE68 80087938 21A80000 */  addu       $s5, $zero, $zero
/* 8B5AE6C 8008793C 21B00000 */  addu       $s6, $zero, $zero
/* 8B5AE70 80087940 5555083C */  lui        $t0, (0x55555556 >> 16)
/* 8B5AE74 80087944 56550835 */  ori        $t0, $t0, (0x55555556 & 0xFFFF)
/* 8B5AE78 80087948 4800A78F */  lw         $a3, 0x48($sp)
.Llevel_44_8008794C:
/* 8B5AE7C 8008794C 18000802 */  mult       $s0, $t0
/* 8B5AE80 80087950 10580000 */  mfhi       $t3
/* 8B5AE84 80087954 01000626 */  addiu      $a2, $s0, 0x1
/* 8B5AE88 80087958 00000000 */  nop
/* 8B5AE8C 8008795C 1800C800 */  mult       $a2, $t0
/* 8B5AE90 80087960 0100B526 */  addiu      $s5, $s5, 0x1
/* 8B5AE94 80087964 09000426 */  addiu      $a0, $s0, 0x9
/* 8B5AE98 80087968 08000526 */  addiu      $a1, $s0, 0x8
/* 8B5AE9C 8008796C C31F1000 */  sra        $v1, $s0, 31
/* 8B5AEA0 80087970 10500000 */  mfhi       $t2
/* 8B5AEA4 80087974 0000F0A0 */  sb         $s0, 0x0($a3)
/* 8B5AEA8 80087978 0100E6A0 */  sb         $a2, 0x1($a3)
/* 8B5AEAC 8008797C 18008800 */  mult       $a0, $t0
/* 8B5AEB0 80087980 0200E4A0 */  sb         $a0, 0x2($a3)
/* 8B5AEB4 80087984 0300E5A0 */  sb         $a1, 0x3($a3)
/* 8B5AEB8 80087988 23186301 */  subu       $v1, $t3, $v1
/* 8B5AEBC 8008798C 40100300 */  sll        $v0, $v1, 1
/* 8B5AEC0 80087990 21104300 */  addu       $v0, $v0, $v1
/* 8B5AEC4 80087994 23100202 */  subu       $v0, $s0, $v0
/* 8B5AEC8 80087998 2180C000 */  addu       $s0, $a2, $zero
/* 8B5AECC 8008799C 0100422C */  sltiu      $v0, $v0, 0x1
/* 8B5AED0 800879A0 C31F1000 */  sra        $v1, $s0, 31
/* 8B5AED4 800879A4 0400E2A0 */  sb         $v0, 0x4($a3)
/* 8B5AED8 800879A8 23184301 */  subu       $v1, $t2, $v1
/* 8B5AEDC 800879AC 10480000 */  mfhi       $t1
/* 8B5AEE0 800879B0 40100300 */  sll        $v0, $v1, 1
/* 8B5AEE4 800879B4 21104300 */  addu       $v0, $v0, $v1
/* 8B5AEE8 800879B8 1800A800 */  mult       $a1, $t0
/* 8B5AEEC 800879BC 23100202 */  subu       $v0, $s0, $v0
/* 8B5AEF0 800879C0 0100422C */  sltiu      $v0, $v0, 0x1
/* 8B5AEF4 800879C4 C31F0400 */  sra        $v1, $a0, 31
/* 8B5AEF8 800879C8 0500E2A0 */  sb         $v0, 0x5($a3)
/* 8B5AEFC 800879CC 23182301 */  subu       $v1, $t1, $v1
/* 8B5AF00 800879D0 40100300 */  sll        $v0, $v1, 1
/* 8B5AF04 800879D4 21104300 */  addu       $v0, $v0, $v1
/* 8B5AF08 800879D8 23208200 */  subu       $a0, $a0, $v0
/* 8B5AF0C 800879DC 0100842C */  sltiu      $a0, $a0, 0x1
/* 8B5AF10 800879E0 C31F0500 */  sra        $v1, $a1, 31
/* 8B5AF14 800879E4 0600E4A0 */  sb         $a0, 0x6($a3)
/* 8B5AF18 800879E8 10500000 */  mfhi       $t2
/* 8B5AF1C 800879EC 23184301 */  subu       $v1, $t2, $v1
/* 8B5AF20 800879F0 40100300 */  sll        $v0, $v1, 1
/* 8B5AF24 800879F4 21104300 */  addu       $v0, $v0, $v1
/* 8B5AF28 800879F8 2328A200 */  subu       $a1, $a1, $v0
/* 8B5AF2C 800879FC 0100A52C */  sltiu      $a1, $a1, 0x1
/* 8B5AF30 80087A00 0700A22A */  slti       $v0, $s5, 0x7
/* 8B5AF34 80087A04 03004014 */  bnez       $v0, .Llevel_44_80087A14
/* 8B5AF38 80087A08 0700E5A0 */   sb        $a1, 0x7($a3)
/* 8B5AF3C 80087A0C 01001026 */  addiu      $s0, $s0, 0x1
/* 8B5AF40 80087A10 21A80000 */  addu       $s5, $zero, $zero
.Llevel_44_80087A14:
/* 8B5AF44 80087A14 0100D626 */  addiu      $s6, $s6, 0x1
/* 8B5AF48 80087A18 6900C22A */  slti       $v0, $s6, 0x69
/* 8B5AF4C 80087A1C CBFF4014 */  bnez       $v0, .Llevel_44_8008794C
/* 8B5AF50 80087A20 0800E724 */   addiu     $a3, $a3, 0x8
/* 8B5AF54 80087A24 4800AF8F */  lw         $t7, 0x48($sp)
/* 8B5AF58 80087A28 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 8B5AF5C 80087A2C 4803E2AD */  sw         $v0, 0x348($t7)
/* 8B5AF60 80087A30 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AF64 80087A34 00000000 */  nop
/* 8B5AF68 80087A38 0800E28D */  lw         $v0, 0x8($t7)
/* 8B5AF6C 80087A3C 00000000 */  nop
/* 8B5AF70 80087A40 0B004014 */  bnez       $v0, .Llevel_44_80087A70
/* 8B5AF74 80087A44 2120C001 */   addu      $a0, $t6, $zero
/* 8B5AF78 80087A48 2128E002 */  addu       $a1, $s7, $zero
/* 8B5AF7C 80087A4C 4800A68F */  lw         $a2, 0x48($sp)
/* 8B5AF80 80087A50 4000AF8F */  lw         $t7, 0x40($sp)
/* 8B5AF84 80087A54 01000224 */  addiu      $v0, $zero, 0x1
/* 8B5AF88 80087A58 1000A2AF */  sw         $v0, 0x10($sp)
/* 8B5AF8C 80087A5C C042010C */  jal        func_80050B00
/* 8B5AF90 80087A60 0C00E725 */   addiu     $a3, $t7, 0xC
/* 8B5AF94 80087A64 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AF98 80087A68 00000000 */  nop
/* 8B5AF9C 80087A6C 0800E2AD */  sw         $v0, 0x8($t7)
.Llevel_44_80087A70:
/* 8B5AFA0 80087A70 4800C393 */  lbu        $v1, 0x48($fp)
/* 8B5AFA4 80087A74 14000224 */  addiu      $v0, $zero, 0x14
/* 8B5AFA8 80087A78 44006210 */  beq        $v1, $v0, .Llevel_44_80087B8C
/* 8B5AFAC 80087A7C 00000000 */   nop
/* 8B5AFB0 80087A80 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5AFB4 80087A84 00000000 */  nop
/* 8B5AFB8 80087A88 1400E285 */  lh         $v0, 0x14($t7)
/* 8B5AFBC 80087A8C 00000000 */  nop
/* 8B5AFC0 80087A90 80180200 */  sll        $v1, $v0, 2
/* 8B5AFC4 80087A94 21206200 */  addu       $a0, $v1, $v0
/* 8B5AFC8 80087A98 07004228 */  slti       $v0, $v0, 0x7
/* 8B5AFCC 80087A9C 03004014 */  bnez       $v0, .Llevel_44_80087AAC
/* 8B5AFD0 80087AA0 50000324 */   addiu     $v1, $zero, 0x50
/* 8B5AFD4 80087AA4 E31E0208 */  j          .Llevel_44_80087B8C
/* 8B5AFD8 80087AA8 0C00E0AD */   sw        $zero, 0xC($t7)
.Llevel_44_80087AAC:
/* 8B5AFDC 80087AAC C0200400 */  sll        $a0, $a0, 3
/* 8B5AFE0 80087AB0 1800A0AF */  sw         $zero, 0x18($sp)
/* 8B5AFE4 80087AB4 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 8B5AFE8 80087AB8 2000A3AF */  sw         $v1, 0x20($sp)
/* 8B5AFEC 80087ABC 0680013C */  lui        $at, %hi(D_800658A0)
/* 8B5AFF0 80087AC0 21082400 */  addu       $at, $at, $a0
/* 8B5AFF4 80087AC4 A0582284 */  lh         $v0, %lo(D_800658A0)($at)
/* 8B5AFF8 80087AC8 00000000 */  nop
/* 8B5AFFC 80087ACC 18004300 */  mult       $v0, $v1
/* 8B5B000 80087AD0 12400000 */  mflo       $t0
/* 8B5B004 80087AD4 0680013C */  lui        $at, %hi(D_80065920)
/* 8B5B008 80087AD8 21082400 */  addu       $at, $at, $a0
/* 8B5B00C 80087ADC 20592284 */  lh         $v0, %lo(D_80065920)($at)
/* 8B5B010 80087AE0 00000000 */  nop
/* 8B5B014 80087AE4 18004300 */  mult       $v0, $v1
/* 8B5B018 80087AE8 04000524 */  addiu      $a1, $zero, 0x4
/* 8B5B01C 80087AEC 2120C003 */  addu       $a0, $fp, $zero
/* 8B5B020 80087AF0 2C00A0AF */  sw         $zero, 0x2C($sp)
/* 8B5B024 80087AF4 031B0800 */  sra        $v1, $t0, 12
/* 8B5B028 80087AF8 23100300 */  negu       $v0, $v1
/* 8B5B02C 80087AFC 2800A2AF */  sw         $v0, 0x28($sp)
/* 8B5B030 80087B00 12300000 */  mflo       $a2
/* 8B5B034 80087B04 031B0600 */  sra        $v1, $a2, 12
/* 8B5B038 80087B08 4957010C */  jal        func_80055D24
/* 8B5B03C 80087B0C 3000A3AF */   sw        $v1, 0x30($sp)
/* 8B5B040 80087B10 2000C427 */  addiu      $a0, $fp, 0x20
/* 8B5B044 80087B14 2800B027 */  addiu      $s0, $sp, 0x28
/* 8B5B048 80087B18 21280002 */  addu       $a1, $s0, $zero
/* 8B5B04C 80087B1C 5B3B010C */  jal        func_8004ED6C
/* 8B5B050 80087B20 21300002 */   addu      $a2, $s0, $zero
/* 8B5B054 80087B24 01000424 */  addiu      $a0, $zero, 0x1
/* 8B5B058 80087B28 0D000524 */  addiu      $a1, $zero, 0xD
/* 8B5B05C 80087B2C 0C00C627 */  addiu      $a2, $fp, 0xC
/* 8B5B060 80087B30 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 8B5B064 80087B34 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 8B5B068 80087B38 00000000 */  nop
/* 8B5B06C 80087B3C 09F84000 */  jalr       $v0
/* 8B5B070 80087B40 21380002 */   addu      $a3, $s0, $zero
/* 8B5B074 80087B44 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5B078 80087B48 00000000 */  nop
/* 8B5B07C 80087B4C 0C00E38D */  lw         $v1, 0xC($t7)
/* 8B5B080 80087B50 00000000 */  nop
/* 8B5B084 80087B54 05006010 */  beqz       $v1, .Llevel_44_80087B6C
/* 8B5B088 80087B58 21204000 */   addu      $a0, $v0, $zero
/* 8B5B08C 80087B5C FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5B090 80087B60 0C0082A0 */  sb         $v0, 0xC($a0)
/* 8B5B094 80087B64 0D0082A0 */  sb         $v0, 0xD($a0)
/* 8B5B098 80087B68 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_44_80087B6C:
/* 8B5B09C 80087B6C 07008010 */  beqz       $a0, .Llevel_44_80087B8C
/* 8B5B0A0 80087B70 BE000224 */   addiu     $v0, $zero, 0xBE
/* 8B5B0A4 80087B74 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5B0A8 80087B78 00000000 */  nop
/* 8B5B0AC 80087B7C 0C00E4AD */  sw         $a0, 0xC($t7)
/* 8B5B0B0 80087B80 0A0082A0 */  sb         $v0, 0xA($a0)
/* 8B5B0B4 80087B84 FF000224 */  addiu      $v0, $zero, 0xFF
/* 8B5B0B8 80087B88 0E0082A0 */  sb         $v0, 0xE($a0)
.Llevel_44_80087B8C:
/* 8B5B0BC 80087B8C 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5B0C0 80087B90 00000000 */  nop
/* 8B5B0C4 80087B94 1400E295 */  lhu        $v0, 0x14($t7)
/* 8B5B0C8 80087B98 00000000 */  nop
/* 8B5B0CC 80087B9C 01004224 */  addiu      $v0, $v0, 0x1
/* 8B5B0D0 80087BA0 1400E2A5 */  sh         $v0, 0x14($t7)
/* 8B5B0D4 80087BA4 4800C393 */  lbu        $v1, 0x48($fp)
/* 8B5B0D8 80087BA8 14000224 */  addiu      $v0, $zero, 0x14
/* 8B5B0DC 80087BAC 08006210 */  beq        $v1, $v0, .Llevel_44_80087BD0
/* 8B5B0E0 80087BB0 00000000 */   nop
/* 8B5B0E4 80087BB4 0000E285 */  lh         $v0, 0x0($t7)
/* 8B5B0E8 80087BB8 00000000 */  nop
/* 8B5B0EC 80087BBC 21184000 */  addu       $v1, $v0, $zero
/* 8B5B0F0 80087BC0 58024228 */  slti       $v0, $v0, 0x258
/* 8B5B0F4 80087BC4 02004010 */  beqz       $v0, .Llevel_44_80087BD0
/* 8B5B0F8 80087BC8 64006224 */   addiu     $v0, $v1, 0x64
/* 8B5B0FC 80087BCC 0000E2A5 */  sh         $v0, 0x0($t7)
.Llevel_44_80087BD0:
/* 8B5B100 80087BD0 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5B104 80087BD4 00000000 */  nop
/* 8B5B108 80087BD8 1400E485 */  lh         $a0, 0x14($t7)
/* 8B5B10C 80087BDC 00000000 */  nop
/* 8B5B110 80087BE0 0B008228 */  slti       $v0, $a0, 0xB
/* 8B5B114 80087BE4 05004014 */  bnez       $v0, .Llevel_44_80087BFC
/* 8B5B118 80087BE8 10008228 */   slti      $v0, $a0, 0x10
/* 8B5B11C 80087BEC 4800C393 */  lbu        $v1, 0x48($fp)
/* 8B5B120 80087BF0 14000224 */  addiu      $v0, $zero, 0x14
/* 8B5B124 80087BF4 0E006210 */  beq        $v1, $v0, .Llevel_44_80087C30
/* 8B5B128 80087BF8 10008228 */   slti      $v0, $a0, 0x10
.Llevel_44_80087BFC:
/* 8B5B12C 80087BFC 05004014 */  bnez       $v0, .Llevel_44_80087C14
/* 8B5B130 80087C00 14000224 */   addiu     $v0, $zero, 0x14
/* 8B5B134 80087C04 4800C393 */  lbu        $v1, 0x48($fp)
/* 8B5B138 80087C08 00000000 */  nop
/* 8B5B13C 80087C0C 14006214 */  bne        $v1, $v0, .Llevel_44_80087C60
/* 8B5B140 80087C10 00000000 */   nop
.Llevel_44_80087C14:
/* 8B5B144 80087C14 21780000 */  addu       $t7, $zero, $zero
/* 8B5B148 80087C18 2300E011 */  beqz       $t7, .Llevel_44_80087CA8
/* 8B5B14C 80087C1C 14000224 */   addiu     $v0, $zero, 0x14
/* 8B5B150 80087C20 4800C393 */  lbu        $v1, 0x48($fp)
/* 8B5B154 80087C24 00000000 */  nop
/* 8B5B158 80087C28 0D006214 */  bne        $v1, $v0, .Llevel_44_80087C60
/* 8B5B15C 80087C2C 00000000 */   nop
.Llevel_44_80087C30:
/* 8B5B160 80087C30 3A00C393 */  lbu        $v1, 0x3A($fp)
/* 8B5B164 80087C34 00000000 */  nop
/* 8B5B168 80087C38 40100300 */  sll        $v0, $v1, 1
/* 8B5B16C 80087C3C 21104300 */  addu       $v0, $v0, $v1
/* 8B5B170 80087C40 80100200 */  sll        $v0, $v0, 2
/* 8B5B174 80087C44 23104300 */  subu       $v0, $v0, $v1
/* 8B5B178 80087C48 0780033C */  lui        $v1, %hi(D_8006C550)
/* 8B5B17C 80087C4C 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 8B5B180 80087C50 C0100200 */  sll        $v0, $v0, 3
/* 8B5B184 80087C54 21104300 */  addu       $v0, $v0, $v1
/* 8B5B188 80087C58 0A000324 */  addiu      $v1, $zero, 0xA
/* 8B5B18C 80087C5C 490043A0 */  sb         $v1, 0x49($v0)
.Llevel_44_80087C60:
/* 8B5B190 80087C60 3800AF8F */  lw         $t7, 0x38($sp)
/* 8B5B194 80087C64 00000000 */  nop
/* 8B5B198 80087C68 0800E48D */  lw         $a0, 0x8($t7)
/* 8B5B19C 80087C6C 00000000 */  nop
/* 8B5B1A0 80087C70 04008010 */  beqz       $a0, .Llevel_44_80087C84
/* 8B5B1A4 80087C74 00000000 */   nop
/* 8B5B1A8 80087C78 E242010C */  jal        func_80050B88
/* 8B5B1AC 80087C7C 00000000 */   nop
/* 8B5B1B0 80087C80 3800AF8F */  lw         $t7, 0x38($sp)
.Llevel_44_80087C84:
/* 8B5B1B4 80087C84 00000000 */  nop
/* 8B5B1B8 80087C88 0C00E48D */  lw         $a0, 0xC($t7)
/* 8B5B1BC 80087C8C 00000000 */  nop
/* 8B5B1C0 80087C90 03008010 */  beqz       $a0, .Llevel_44_80087CA0
/* 8B5B1C4 80087C94 00000000 */   nop
/* 8B5B1C8 80087C98 E242010C */  jal        func_80050B88
/* 8B5B1CC 80087C9C 00000000 */   nop
.Llevel_44_80087CA0:
/* 8B5B1D0 80087CA0 C656010C */  jal        func_80055B18
/* 8B5B1D4 80087CA4 2120C003 */   addu      $a0, $fp, $zero
.Llevel_44_80087CA8:
/* 8B5B1D8 80087CA8 B400BF8F */  lw         $ra, 0xB4($sp)
/* 8B5B1DC 80087CAC B000BE8F */  lw         $fp, 0xB0($sp)
/* 8B5B1E0 80087CB0 AC00B78F */  lw         $s7, 0xAC($sp)
/* 8B5B1E4 80087CB4 A800B68F */  lw         $s6, 0xA8($sp)
/* 8B5B1E8 80087CB8 A400B58F */  lw         $s5, 0xA4($sp)
/* 8B5B1EC 80087CBC A000B48F */  lw         $s4, 0xA0($sp)
/* 8B5B1F0 80087CC0 9C00B38F */  lw         $s3, 0x9C($sp)
/* 8B5B1F4 80087CC4 9800B28F */  lw         $s2, 0x98($sp)
/* 8B5B1F8 80087CC8 9400B18F */  lw         $s1, 0x94($sp)
/* 8B5B1FC 80087CCC 9000B08F */  lw         $s0, 0x90($sp)
/* 8B5B200 80087CD0 B800BD27 */  addiu      $sp, $sp, 0xB8
/* 8B5B204 80087CD4 0800E003 */  jr         $ra
/* 8B5B208 80087CD8 00000000 */   nop
.size MobyUpdate_1015_level_44, . - MobyUpdate_1015_level_44
