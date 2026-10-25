.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_426_level_10
/* 3AE2220 8007D4F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3AE2224 8007D4F4 21308000 */  addu       $a2, $a0, $zero
/* 3AE2228 8007D4F8 2000BFAF */  sw         $ra, 0x20($sp)
/* 3AE222C 8007D4FC 0000C78C */  lw         $a3, 0x0($a2)
/* 3AE2230 8007D500 0780033C */  lui        $v1, %hi(D_8006C648)
/* 3AE2234 8007D504 48C6638C */  lw         $v1, %lo(D_8006C648)($v1)
/* 3AE2238 8007D508 0000E28C */  lw         $v0, 0x0($a3)
/* 3AE223C 8007D50C 00000000 */  nop
/* 3AE2240 8007D510 21204300 */  addu       $a0, $v0, $v1
/* 3AE2244 8007D514 1E008228 */  slti       $v0, $a0, 0x1E
/* 3AE2248 8007D518 05004014 */  bnez       $v0, .Llevel_10_8007D530
/* 3AE224C 8007D51C 0000E4AC */   sw        $a0, 0x0($a3)
/* 3AE2250 8007D520 C656010C */  jal        func_80055B18
/* 3AE2254 8007D524 2120C000 */   addu      $a0, $a2, $zero
/* 3AE2258 8007D528 87F50108 */  j          .Llevel_10_8007D61C
/* 3AE225C 8007D52C 00000000 */   nop
.Llevel_10_8007D530:
/* 3AE2260 8007D530 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 3AE2264 8007D534 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 3AE2268 8007D538 1E000324 */  addiu      $v1, $zero, 0x1E
/* 3AE226C 8007D53C 23186400 */  subu       $v1, $v1, $a0
/* 3AE2270 8007D540 001A0300 */  sll        $v1, $v1, 8
/* 3AE2274 8007D544 18006200 */  mult       $v1, $v0
/* 3AE2278 8007D548 4900C290 */  lbu        $v0, 0x49($a2)
/* 3AE227C 8007D54C 0400E48C */  lw         $a0, 0x4($a3)
/* 3AE2280 8007D550 80100200 */  sll        $v0, $v0, 2
/* 3AE2284 8007D554 21104400 */  addu       $v0, $v0, $a0
/* 3AE2288 8007D558 00004290 */  lbu        $v0, 0x0($v0)
/* 3AE228C 8007D55C 10400000 */  mfhi       $t0
/* 3AE2290 8007D560 21280301 */  addu       $a1, $t0, $v1
/* 3AE2294 8007D564 03290500 */  sra        $a1, $a1, 4
/* 3AE2298 8007D568 C31F0300 */  sra        $v1, $v1, 31
/* 3AE229C 8007D56C 2328A300 */  subu       $a1, $a1, $v1
/* 3AE22A0 8007D570 1800A200 */  mult       $a1, $v0
/* 3AE22A4 8007D574 12400000 */  mflo       $t0
/* 3AE22A8 8007D578 03120800 */  sra        $v0, $t0, 8
/* 3AE22AC 8007D57C 1000A2A3 */  sb         $v0, 0x10($sp)
/* 3AE22B0 8007D580 4900C290 */  lbu        $v0, 0x49($a2)
/* 3AE22B4 8007D584 0400E38C */  lw         $v1, 0x4($a3)
/* 3AE22B8 8007D588 80100200 */  sll        $v0, $v0, 2
/* 3AE22BC 8007D58C 21104300 */  addu       $v0, $v0, $v1
/* 3AE22C0 8007D590 01004290 */  lbu        $v0, 0x1($v0)
/* 3AE22C4 8007D594 00000000 */  nop
/* 3AE22C8 8007D598 1800A200 */  mult       $a1, $v0
/* 3AE22CC 8007D59C 12400000 */  mflo       $t0
/* 3AE22D0 8007D5A0 03120800 */  sra        $v0, $t0, 8
/* 3AE22D4 8007D5A4 1100A2A3 */  sb         $v0, 0x11($sp)
/* 3AE22D8 8007D5A8 4900C290 */  lbu        $v0, 0x49($a2)
/* 3AE22DC 8007D5AC 0400E38C */  lw         $v1, 0x4($a3)
/* 3AE22E0 8007D5B0 80100200 */  sll        $v0, $v0, 2
/* 3AE22E4 8007D5B4 21104300 */  addu       $v0, $v0, $v1
/* 3AE22E8 8007D5B8 02004290 */  lbu        $v0, 0x2($v0)
/* 3AE22EC 8007D5BC 00000000 */  nop
/* 3AE22F0 8007D5C0 1800A200 */  mult       $a1, $v0
/* 3AE22F4 8007D5C4 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
/* 3AE22F8 8007D5C8 12400000 */  mflo       $t0
/* 3AE22FC 8007D5CC 03120800 */  sra        $v0, $t0, 8
/* 3AE2300 8007D5D0 1200A2A3 */  sb         $v0, 0x12($sp)
/* 3AE2304 8007D5D4 4900C290 */  lbu        $v0, 0x49($a2)
/* 3AE2308 8007D5D8 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
/* 3AE230C 8007D5DC 00120200 */  sll        $v0, $v0, 8
/* 3AE2310 8007D5E0 18004300 */  mult       $v0, $v1
/* 3AE2314 8007D5E4 4F00C5A0 */  sb         $a1, 0x4F($a2)
/* 3AE2318 8007D5E8 10400000 */  mfhi       $t0
/* 3AE231C 8007D5EC 4600C8A0 */  sb         $t0, 0x46($a2)
/* 3AE2320 8007D5F0 1000A293 */  lbu        $v0, 0x10($sp)
/* 3AE2324 8007D5F4 00000000 */  nop
/* 3AE2328 8007D5F8 5400C2A0 */  sb         $v0, 0x54($a2)
/* 3AE232C 8007D5FC 1100A293 */  lbu        $v0, 0x11($sp)
/* 3AE2330 8007D600 00000000 */  nop
/* 3AE2334 8007D604 5500C2A0 */  sb         $v0, 0x55($a2)
/* 3AE2338 8007D608 1200A393 */  lbu        $v1, 0x12($sp)
/* 3AE233C 8007D60C 10000224 */  addiu      $v0, $zero, 0x10
/* 3AE2340 8007D610 5700C0A0 */  sb         $zero, 0x57($a2)
/* 3AE2344 8007D614 4C00C2A0 */  sb         $v0, 0x4C($a2)
/* 3AE2348 8007D618 5600C3A0 */  sb         $v1, 0x56($a2)
.Llevel_10_8007D61C:
/* 3AE234C 8007D61C 2000BF8F */  lw         $ra, 0x20($sp)
/* 3AE2350 8007D620 2800BD27 */  addiu      $sp, $sp, 0x28
/* 3AE2354 8007D624 0800E003 */  jr         $ra
/* 3AE2358 8007D628 00000000 */   nop
.size MobyUpdate_426_level_10, . - MobyUpdate_426_level_10
