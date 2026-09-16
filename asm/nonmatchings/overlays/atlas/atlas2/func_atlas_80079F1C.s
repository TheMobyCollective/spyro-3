.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_80079F1C
/* 963244C 80079F1C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9632450 80079F20 1800BFAF */  sw         $ra, 0x18($sp)
/* 9632454 80079F24 FE40010C */  jal        CDLoadTime
/* 9632458 80079F28 00000000 */   nop
/* 963245C 80079F2C 9A004014 */  bnez       $v0, .Latlas_8007A198
/* 9632460 80079F30 00000000 */   nop
/* 9632464 80079F34 0880033C */  lui        $v1, %hi(D_atlas_8007AE06)
/* 9632468 80079F38 06AE6384 */  lh         $v1, %lo(D_atlas_8007AE06)($v1)
/* 963246C 80079F3C 00000000 */  nop
/* 9632470 80079F40 0C006228 */  slti       $v0, $v1, 0xC
/* 9632474 80079F44 0E004010 */  beqz       $v0, .Latlas_80079F80
/* 9632478 80079F48 00000000 */   nop
/* 963247C 80079F4C 0880023C */  lui        $v0, %hi(D_atlas_8007AE08)
/* 9632480 80079F50 08AE4284 */  lh         $v0, %lo(D_atlas_8007AE08)($v0)
/* 9632484 80079F54 00000000 */  nop
/* 9632488 80079F58 09006214 */  bne        $v1, $v0, .Latlas_80079F80
/* 963248C 80079F5C 21204000 */   addu      $a0, $v0, $zero
/* 9632490 80079F60 01008424 */  addiu      $a0, $a0, 0x1
/* 9632494 80079F64 0880013C */  lui        $at, %hi(D_atlas_8007AE08)
/* 9632498 80079F68 08AE24A4 */  sh         $a0, %lo(D_atlas_8007AE08)($at)
/* 963249C 80079F6C 00240400 */  sll        $a0, $a0, 16
/* 96324A0 80079F70 0FD7010C */  jal        func_atlas_80075C3C
/* 96324A4 80079F74 03240400 */   sra       $a0, $a0, 16
/* 96324A8 80079F78 66E80108 */  j          .Latlas_8007A198
/* 96324AC 80079F7C 00000000 */   nop
.Latlas_80079F80:
/* 96324B0 80079F80 0780033C */  lui        $v1, %hi(D_8006E53C)
/* 96324B4 80079F84 3CE5638C */  lw         $v1, %lo(D_8006E53C)($v1)
/* 96324B8 80079F88 00000000 */  nop
/* 96324BC 80079F8C 00016230 */  andi       $v0, $v1, 0x100
/* 96324C0 80079F90 14004010 */  beqz       $v0, .Latlas_80079FE4
/* 96324C4 80079F94 00086230 */   andi      $v0, $v1, 0x800
/* 96324C8 80079F98 B9A9000C */  jal        func_8002A6E4
/* 96324CC 80079F9C 00000000 */   nop
/* 96324D0 80079FA0 06000224 */  addiu      $v0, $zero, 0x6
/* 96324D4 80079FA4 0880013C */  lui        $at, %hi(D_atlas_8007ADE0)
/* 96324D8 80079FA8 E0AD22AC */  sw         $v0, %lo(D_atlas_8007ADE0)($at)
/* 96324DC 80079FAC 01000224 */  addiu      $v0, $zero, 0x1
/* 96324E0 80079FB0 0780013C */  lui        $at, %hi(D_8006FBCC)
/* 96324E4 80079FB4 CCFB22AC */  sw         $v0, %lo(D_8006FBCC)($at)
/* 96324E8 80079FB8 01000224 */  addiu      $v0, $zero, 0x1
/* 96324EC 80079FBC 0780013C */  lui        $at, %hi(D_8006FBC4)
/* 96324F0 80079FC0 C4FB20AC */  sw         $zero, %lo(D_8006FBC4)($at)
/* 96324F4 80079FC4 0780013C */  lui        $at, %hi(D_8006FBD4)
/* 96324F8 80079FC8 D4FB20AC */  sw         $zero, %lo(D_8006FBD4)($at)
/* 96324FC 80079FCC 0780013C */  lui        $at, %hi(D_8007014E)
/* 9632500 80079FD0 4E0122A0 */  sb         $v0, %lo(D_8007014E)($at)
/* 9632504 80079FD4 ACD7010C */  jal        func_atlas_80075EB0
/* 9632508 80079FD8 21200000 */   addu      $a0, $zero, $zero
/* 963250C 80079FDC 66E80108 */  j          .Latlas_8007A198
/* 9632510 80079FE0 00000000 */   nop
.Latlas_80079FE4:
/* 9632514 80079FE4 18004010 */  beqz       $v0, .Latlas_8007A048
/* 9632518 80079FE8 10006230 */   andi      $v0, $v1, 0x10
/* 963251C 80079FEC B9A9000C */  jal        func_8002A6E4
/* 9632520 80079FF0 00000000 */   nop
/* 9632524 80079FF4 06000224 */  addiu      $v0, $zero, 0x6
/* 9632528 80079FF8 0880013C */  lui        $at, %hi(D_atlas_8007ADE0)
/* 963252C 80079FFC E0AD22AC */  sw         $v0, %lo(D_atlas_8007ADE0)($at)
/* 9632530 8007A000 01000224 */  addiu      $v0, $zero, 0x1
/* 9632534 8007A004 0780043C */  lui        $a0, %hi(D_80070148)
/* 9632538 8007A008 48018424 */  addiu      $a0, $a0, %lo(D_80070148)
/* 963253C 8007A00C 0780013C */  lui        $at, %hi(D_8006FBC4)
/* 9632540 8007A010 C4FB20AC */  sw         $zero, %lo(D_8006FBC4)($at)
/* 9632544 8007A014 0780013C */  lui        $at, %hi(D_8006FBD4)
/* 9632548 8007A018 D4FB20AC */  sw         $zero, %lo(D_8006FBD4)($at)
/* 963254C 8007A01C 0780013C */  lui        $at, %hi(D_8006FBCC)
/* 9632550 8007A020 CCFB22AC */  sw         $v0, %lo(D_8006FBCC)($at)
/* 9632554 8007A024 0000838C */  lw         $v1, 0x0($a0)
/* 9632558 8007A028 03000224 */  addiu      $v0, $zero, 0x3
/* 963255C 8007A02C 02006214 */  bne        $v1, $v0, .Latlas_8007A038
/* 9632560 8007A030 00000000 */   nop
/* 9632564 8007A034 000080AC */  sw         $zero, 0x0($a0)
.Latlas_8007A038:
/* 9632568 8007A038 ACD7010C */  jal        func_atlas_80075EB0
/* 963256C 8007A03C 21200000 */   addu      $a0, $zero, $zero
/* 9632570 8007A040 66E80108 */  j          .Latlas_8007A198
/* 9632574 8007A044 00000000 */   nop
.Latlas_8007A048:
/* 9632578 8007A048 05004010 */  beqz       $v0, .Latlas_8007A060
/* 963257C 8007A04C 40206230 */   andi      $v0, $v1, 0x2040
/* 9632580 8007A050 B9A9000C */  jal        func_8002A6E4
/* 9632584 8007A054 00000000 */   nop
/* 9632588 8007A058 2CE80108 */  j          .Latlas_8007A0B0
/* 963258C 8007A05C 01000224 */   addiu     $v0, $zero, 0x1
.Latlas_8007A060:
/* 9632590 8007A060 30004010 */  beqz       $v0, .Latlas_8007A124
/* 9632594 8007A064 0B000224 */   addiu     $v0, $zero, 0xB
/* 9632598 8007A068 B9A9000C */  jal        func_8002A6E4
/* 963259C 8007A06C 00000000 */   nop
/* 96325A0 8007A070 0880033C */  lui        $v1, %hi(D_atlas_8007AE0E)
/* 96325A4 8007A074 0EAE6384 */  lh         $v1, %lo(D_atlas_8007AE0E)($v1)
/* 96325A8 8007A078 14000224 */  addiu      $v0, $zero, 0x14
/* 96325AC 8007A07C 06006210 */  beq        $v1, $v0, .Latlas_8007A098
/* 96325B0 8007A080 05000224 */   addiu     $v0, $zero, 0x5
/* 96325B4 8007A084 0880033C */  lui        $v1, %hi(D_atlas_8007AE06)
/* 96325B8 8007A088 06AE6384 */  lh         $v1, %lo(D_atlas_8007AE06)($v1)
/* 96325BC 8007A08C 00000000 */  nop
/* 96325C0 8007A090 07006210 */  beq        $v1, $v0, .Latlas_8007A0B0
/* 96325C4 8007A094 01000224 */   addiu     $v0, $zero, 0x1
.Latlas_8007A098:
/* 96325C8 8007A098 0880023C */  lui        $v0, %hi(D_atlas_8007AE06)
/* 96325CC 8007A09C 06AE4284 */  lh         $v0, %lo(D_atlas_8007AE06)($v0)
/* 96325D0 8007A0A0 00000000 */  nop
/* 96325D4 8007A0A4 0B004228 */  slti       $v0, $v0, 0xB
/* 96325D8 8007A0A8 13004014 */  bnez       $v0, .Latlas_8007A0F8
/* 96325DC 8007A0AC 01000224 */   addiu     $v0, $zero, 0x1
.Latlas_8007A0B0:
/* 96325E0 8007A0B0 0780013C */  lui        $at, %hi(D_8006FBCC)
/* 96325E4 8007A0B4 CCFB22AC */  sw         $v0, %lo(D_8006FBCC)($at)
/* 96325E8 8007A0B8 0780023C */  lui        $v0, %hi(D_8006C648)
/* 96325EC 8007A0BC 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 96325F0 8007A0C0 04000324 */  addiu      $v1, $zero, 0x4
/* 96325F4 8007A0C4 0880013C */  lui        $at, %hi(D_atlas_8007ADE6)
/* 96325F8 8007A0C8 E6AD20A4 */  sh         $zero, %lo(D_atlas_8007ADE6)($at)
/* 96325FC 8007A0CC 0880013C */  lui        $at, %hi(D_atlas_8007ADEA)
/* 9632600 8007A0D0 EAAD20A4 */  sh         $zero, %lo(D_atlas_8007ADEA)($at)
/* 9632604 8007A0D4 0880013C */  lui        $at, %hi(D_atlas_8007ADE0)
/* 9632608 8007A0D8 E0AD23AC */  sw         $v1, %lo(D_atlas_8007ADE0)($at)
/* 963260C 8007A0DC 23100200 */  negu       $v0, $v0
/* 9632610 8007A0E0 0780013C */  lui        $at, %hi(D_8006FBC4)
/* 9632614 8007A0E4 C4FB22AC */  sw         $v0, %lo(D_8006FBC4)($at)
/* 9632618 8007A0E8 ACD7010C */  jal        func_atlas_80075EB0
/* 963261C 8007A0EC 21200000 */   addu      $a0, $zero, $zero
/* 9632620 8007A0F0 66E80108 */  j          .Latlas_8007A198
/* 9632624 8007A0F4 00000000 */   nop
.Latlas_8007A0F8:
/* 9632628 8007A0F8 0880033C */  lui        $v1, %hi(D_atlas_8007AE08)
/* 963262C 8007A0FC 08AE6394 */  lhu        $v1, %lo(D_atlas_8007AE08)($v1)
/* 9632630 8007A100 0780013C */  lui        $at, %hi(D_8006FBC4)
/* 9632634 8007A104 C4FB20AC */  sw         $zero, %lo(D_8006FBC4)($at)
/* 9632638 8007A108 0780013C */  lui        $at, %hi(D_8006FBCC)
/* 963263C 8007A10C CCFB22AC */  sw         $v0, %lo(D_8006FBCC)($at)
/* 9632640 8007A110 00240300 */  sll        $a0, $v1, 16
/* 9632644 8007A114 0880013C */  lui        $at, %hi(D_atlas_8007AE06)
/* 9632648 8007A118 06AE23A4 */  sh         $v1, %lo(D_atlas_8007AE06)($at)
/* 963264C 8007A11C 5EE80108 */  j          .Latlas_8007A178
/* 9632650 8007A120 03240400 */   sra       $a0, $a0, 16
.Latlas_8007A124:
/* 9632654 8007A124 0880053C */  lui        $a1, %hi(D_atlas_8007AE06)
/* 9632658 8007A128 06AEA524 */  addiu      $a1, $a1, %lo(D_atlas_8007AE06)
/* 963265C 8007A12C 0000A384 */  lh         $v1, 0x0($a1)
/* 9632660 8007A130 00000000 */  nop
/* 9632664 8007A134 18006214 */  bne        $v1, $v0, .Latlas_8007A198
/* 9632668 8007A138 A0000324 */   addiu     $v1, $zero, 0xA0
/* 963266C 8007A13C 0780023C */  lui        $v0, %hi(D_8006E538)
/* 9632670 8007A140 38E5428C */  lw         $v0, %lo(D_8006E538)($v0)
/* 9632674 8007A144 00000000 */  nop
/* 9632678 8007A148 A0004230 */  andi       $v0, $v0, 0xA0
/* 963267C 8007A14C 12004314 */  bne        $v0, $v1, .Latlas_8007A198
/* 9632680 8007A150 01000224 */   addiu     $v0, $zero, 0x1
/* 9632684 8007A154 0880033C */  lui        $v1, %hi(D_atlas_8007AE08)
/* 9632688 8007A158 08AE6394 */  lhu        $v1, %lo(D_atlas_8007AE08)($v1)
/* 963268C 8007A15C 0780013C */  lui        $at, %hi(D_8006FBC4)
/* 9632690 8007A160 C4FB20AC */  sw         $zero, %lo(D_8006FBC4)($at)
/* 9632694 8007A164 0780013C */  lui        $at, %hi(D_8006FBCC)
/* 9632698 8007A168 CCFB22AC */  sw         $v0, %lo(D_8006FBCC)($at)
/* 963269C 8007A16C 00240300 */  sll        $a0, $v1, 16
/* 96326A0 8007A170 03240400 */  sra        $a0, $a0, 16
/* 96326A4 8007A174 0000A3A4 */  sh         $v1, 0x0($a1)
.Latlas_8007A178:
/* 96326A8 8007A178 64006324 */  addiu      $v1, $v1, 0x64
/* 96326AC 8007A17C 0880013C */  lui        $at, %hi(D_atlas_8007ADE6)
/* 96326B0 8007A180 E6AD23A4 */  sh         $v1, %lo(D_atlas_8007ADE6)($at)
/* 96326B4 8007A184 2AD7010C */  jal        func_atlas_80075CA8
/* 96326B8 8007A188 00000000 */   nop
/* 96326BC 8007A18C 03000224 */  addiu      $v0, $zero, 0x3
/* 96326C0 8007A190 0880013C */  lui        $at, %hi(D_atlas_8007ADE0)
/* 96326C4 8007A194 E0AD22AC */  sw         $v0, %lo(D_atlas_8007ADE0)($at)
.Latlas_8007A198:
/* 96326C8 8007A198 1800BF8F */  lw         $ra, 0x18($sp)
/* 96326CC 8007A19C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 96326D0 8007A1A0 0800E003 */  jr         $ra
/* 96326D4 8007A1A4 00000000 */   nop
.size func_atlas_80079F1C, . - func_atlas_80079F1C
