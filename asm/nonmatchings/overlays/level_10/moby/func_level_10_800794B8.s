.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_10_800794B8
/* 3ADE1E8 800794B8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3ADE1EC 800794BC 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3ADE1F0 800794C0 21988000 */  addu       $s3, $a0, $zero
/* 3ADE1F4 800794C4 3000BFAF */  sw         $ra, 0x30($sp)
/* 3ADE1F8 800794C8 2800B2AF */  sw         $s2, 0x28($sp)
/* 3ADE1FC 800794CC 2400B1AF */  sw         $s1, 0x24($sp)
/* 3ADE200 800794D0 2000B0AF */  sw         $s0, 0x20($sp)
/* 3ADE204 800794D4 0000728E */  lw         $s2, 0x0($s3)
/* 3ADE208 800794D8 00000000 */  nop
/* 3ADE20C 800794DC 0000428E */  lw         $v0, 0x0($s2)
/* 3ADE210 800794E0 00000000 */  nop
/* 3ADE214 800794E4 13004014 */  bnez       $v0, .Llevel_10_80079534
/* 3ADE218 800794E8 D3000424 */   addiu     $a0, $zero, 0xD3
/* 3ADE21C 800794EC 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3ADE220 800794F0 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3ADE224 800794F4 00000000 */  nop
/* 3ADE228 800794F8 09F84000 */  jalr       $v0
/* 3ADE22C 800794FC 21286002 */   addu      $a1, $s3, $zero
/* 3ADE230 80079500 21184000 */  addu       $v1, $v0, $zero
/* 3ADE234 80079504 0B006010 */  beqz       $v1, .Llevel_10_80079534
/* 3ADE238 80079508 000043AE */   sw        $v1, 0x0($s2)
/* 3ADE23C 8007950C 1400628E */  lw         $v0, 0x14($s3)
/* 3ADE240 80079510 00000000 */  nop
/* 3ADE244 80079514 E0004224 */  addiu      $v0, $v0, 0xE0
/* 3ADE248 80079518 140062AC */  sw         $v0, 0x14($v1)
/* 3ADE24C 8007951C 0000438E */  lw         $v1, 0x0($s2)
/* 3ADE250 80079520 02000224 */  addiu      $v0, $zero, 0x2
/* 3ADE254 80079524 480062A0 */  sb         $v0, 0x48($v1)
/* 3ADE258 80079528 0000428E */  lw         $v0, 0x0($s2)
/* 3ADE25C 8007952C 00000000 */  nop
/* 3ADE260 80079530 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_10_80079534:
/* 3ADE264 80079534 4D006292 */  lbu        $v0, 0x4D($s3)
/* 3ADE268 80079538 00000000 */  nop
/* 3ADE26C 8007953C 33004010 */  beqz       $v0, .Llevel_10_8007960C
/* 3ADE270 80079540 00000000 */   nop
/* 3ADE274 80079544 0400438E */  lw         $v1, 0x4($s2)
/* 3ADE278 80079548 00000000 */  nop
/* 3ADE27C 8007954C 90016228 */  slti       $v0, $v1, 0x190
/* 3ADE280 80079550 07004010 */  beqz       $v0, .Llevel_10_80079570
/* 3ADE284 80079554 00000000 */   nop
/* 3ADE288 80079558 0780023C */  lui        $v0, %hi(D_8006C648)
/* 3ADE28C 8007955C 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 3ADE290 80079560 00000000 */  nop
/* 3ADE294 80079564 21106200 */  addu       $v0, $v1, $v0
/* 3ADE298 80079568 83E50108 */  j          .Llevel_10_8007960C
/* 3ADE29C 8007956C 040042AE */   sw        $v0, 0x4($s2)
.Llevel_10_80079570:
/* 3ADE2A0 80079570 10BC000C */  jal        func_8002F040
/* 3ADE2A4 80079574 05000424 */   addiu     $a0, $zero, 0x5
/* 3ADE2A8 80079578 21884000 */  addu       $s1, $v0, $zero
/* 3ADE2AC 8007957C 1C002012 */  beqz       $s1, .Llevel_10_800795F0
/* 3ADE2B0 80079580 00000000 */   nop
/* 3ADE2B4 80079584 9171010C */  jal        rand
/* 3ADE2B8 80079588 00000000 */   nop
/* 3ADE2BC 8007958C 21202002 */  addu       $a0, $s1, $zero
/* 3ADE2C0 80079590 0C006526 */  addiu      $a1, $s3, 0xC
/* 3ADE2C4 80079594 5E3C010C */  jal        func_8004F178
/* 3ADE2C8 80079598 21804000 */   addu      $s0, $v0, $zero
/* 3ADE2CC 8007959C FF001032 */  andi       $s0, $s0, 0xFF
/* 3ADE2D0 800795A0 40801000 */  sll        $s0, $s0, 1
/* 3ADE2D4 800795A4 0680013C */  lui        $at, %hi(D_80065920)
/* 3ADE2D8 800795A8 21083000 */  addu       $at, $at, $s0
/* 3ADE2DC 800795AC 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 3ADE2E0 800795B0 0000238E */  lw         $v1, 0x0($s1)
/* 3ADE2E4 800795B4 00140200 */  sll        $v0, $v0, 16
/* 3ADE2E8 800795B8 03150200 */  sra        $v0, $v0, 20
/* 3ADE2EC 800795BC 21186200 */  addu       $v1, $v1, $v0
/* 3ADE2F0 800795C0 0800228E */  lw         $v0, 0x8($s1)
/* 3ADE2F4 800795C4 000023AE */  sw         $v1, 0x0($s1)
/* 3ADE2F8 800795C8 0680013C */  lui        $at, %hi(D_800658A0)
/* 3ADE2FC 800795CC 21083000 */  addu       $at, $at, $s0
/* 3ADE300 800795D0 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 3ADE304 800795D4 80014224 */  addiu      $v0, $v0, 0x180
/* 3ADE308 800795D8 001C0300 */  sll        $v1, $v1, 16
/* 3ADE30C 800795DC 080022AE */  sw         $v0, 0x8($s1)
/* 3ADE310 800795E0 0400228E */  lw         $v0, 0x4($s1)
/* 3ADE314 800795E4 031D0300 */  sra        $v1, $v1, 20
/* 3ADE318 800795E8 21104300 */  addu       $v0, $v0, $v1
/* 3ADE31C 800795EC 040022AE */  sw         $v0, 0x4($s1)
.Llevel_10_800795F0:
/* 3ADE320 800795F0 9171010C */  jal        rand
/* 3ADE324 800795F4 00000000 */   nop
/* 3ADE328 800795F8 0400438E */  lw         $v1, 0x4($s2)
/* 3ADE32C 800795FC FF004230 */  andi       $v0, $v0, 0xFF
/* 3ADE330 80079600 80FF6324 */  addiu      $v1, $v1, -0x80
/* 3ADE334 80079604 23186200 */  subu       $v1, $v1, $v0
/* 3ADE338 80079608 040043AE */  sw         $v1, 0x4($s2)
.Llevel_10_8007960C:
/* 3ADE33C 8007960C 1800628E */  lw         $v0, 0x18($s3)
/* 3ADE340 80079610 00000000 */  nop
/* 3ADE344 80079614 7A004010 */  beqz       $v0, .Llevel_10_80079800
/* 3ADE348 80079618 00000000 */   nop
/* 3ADE34C 8007961C 0000428E */  lw         $v0, 0x0($s2)
/* 3ADE350 80079620 00000000 */  nop
/* 3ADE354 80079624 05004010 */  beqz       $v0, .Llevel_10_8007963C
/* 3ADE358 80079628 00000000 */   nop
/* 3ADE35C 8007962C 480040A0 */  sb         $zero, 0x48($v0)
/* 3ADE360 80079630 0000438E */  lw         $v1, 0x0($s2)
/* 3ADE364 80079634 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3ADE368 80079638 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_10_8007963C:
/* 3ADE36C 8007963C 70000224 */  addiu      $v0, $zero, 0x70
/* 3ADE370 80079640 490062A2 */  sb         $v0, 0x49($s3)
/* 3ADE374 80079644 21880000 */  addu       $s1, $zero, $zero
/* 3ADE378 80079648 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 3ADE37C 8007964C 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_10_80079650:
/* 3ADE380 80079650 0780023C */  lui        $v0, %hi(D_8006C578)
/* 3ADE384 80079654 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 3ADE388 80079658 0780033C */  lui        $v1, %hi(D_8006C574)
/* 3ADE38C 8007965C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 3ADE390 80079660 00000000 */  nop
/* 3ADE394 80079664 23104300 */  subu       $v0, $v0, $v1
/* 3ADE398 80079668 15004228 */  slti       $v0, $v0, 0x15
/* 3ADE39C 8007966C 14004014 */  bnez       $v0, .Llevel_10_800796C0
/* 3ADE3A0 80079670 38020424 */   addiu     $a0, $zero, 0x238
/* 3ADE3A4 80079674 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3ADE3A8 80079678 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3ADE3AC 8007967C 00000000 */  nop
/* 3ADE3B0 80079680 09F84000 */  jalr       $v0
/* 3ADE3B4 80079684 21286002 */   addu      $a1, $s3, $zero
/* 3ADE3B8 80079688 9171010C */  jal        rand
/* 3ADE3BC 8007968C 21804000 */   addu      $s0, $v0, $zero
/* 3ADE3C0 80079690 18005200 */  mult       $v0, $s2
/* 3ADE3C4 80079694 01003126 */  addiu      $s1, $s1, 0x1
/* 3ADE3C8 80079698 C3270200 */  sra        $a0, $v0, 31
/* 3ADE3CC 8007969C 10480000 */  mfhi       $t1
/* 3ADE3D0 800796A0 23202401 */  subu       $a0, $t1, $a0
/* 3ADE3D4 800796A4 40180400 */  sll        $v1, $a0, 1
/* 3ADE3D8 800796A8 21186400 */  addu       $v1, $v1, $a0
/* 3ADE3DC 800796AC 23104300 */  subu       $v0, $v0, $v1
/* 3ADE3E0 800796B0 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 3ADE3E4 800796B4 1000222A */  slti       $v0, $s1, 0x10
/* 3ADE3E8 800796B8 E5FF4014 */  bnez       $v0, .Llevel_10_80079650
/* 3ADE3EC 800796BC 00000000 */   nop
.Llevel_10_800796C0:
/* 3ADE3F0 800796C0 21880000 */  addu       $s1, $zero, $zero
.Llevel_10_800796C4:
/* 3ADE3F4 800796C4 1000A427 */  addiu      $a0, $sp, 0x10
/* 3ADE3F8 800796C8 5E3C010C */  jal        func_8004F178
/* 3ADE3FC 800796CC 0C006526 */   addiu     $a1, $s3, 0xC
/* 3ADE400 800796D0 9171010C */  jal        rand
/* 3ADE404 800796D4 01003126 */   addiu     $s1, $s1, 0x1
/* 3ADE408 800796D8 1000A38F */  lw         $v1, 0x10($sp)
/* 3ADE40C 800796DC FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADE410 800796E0 00016324 */  addiu      $v1, $v1, 0x100
/* 3ADE414 800796E4 23186200 */  subu       $v1, $v1, $v0
/* 3ADE418 800796E8 9171010C */  jal        rand
/* 3ADE41C 800796EC 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ADE420 800796F0 1400A38F */  lw         $v1, 0x14($sp)
/* 3ADE424 800796F4 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADE428 800796F8 00016324 */  addiu      $v1, $v1, 0x100
/* 3ADE42C 800796FC 23186200 */  subu       $v1, $v1, $v0
/* 3ADE430 80079700 9171010C */  jal        rand
/* 3ADE434 80079704 1400A3AF */   sw        $v1, 0x14($sp)
/* 3ADE438 80079708 01000424 */  addiu      $a0, $zero, 0x1
/* 3ADE43C 8007970C 02000524 */  addiu      $a1, $zero, 0x2
/* 3ADE440 80079710 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADE444 80079714 21380000 */  addu       $a3, $zero, $zero
/* 3ADE448 80079718 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3ADE44C 8007971C 1800A38F */  lw         $v1, 0x18($sp)
/* 3ADE450 80079720 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3ADE454 80079724 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3ADE458 80079728 21186200 */  addu       $v1, $v1, $v0
/* 3ADE45C 8007972C 09F80001 */  jalr       $t0
/* 3ADE460 80079730 1800A3AF */   sw        $v1, 0x18($sp)
/* 3ADE464 80079734 04000424 */  addiu      $a0, $zero, 0x4
/* 3ADE468 80079738 46000524 */  addiu      $a1, $zero, 0x46
/* 3ADE46C 8007973C 1000A627 */  addiu      $a2, $sp, 0x10
/* 3ADE470 80079740 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3ADE474 80079744 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3ADE478 80079748 00000000 */  nop
/* 3ADE47C 8007974C 09F84000 */  jalr       $v0
/* 3ADE480 80079750 18000724 */   addiu     $a3, $zero, 0x18
/* 3ADE484 80079754 0400222A */  slti       $v0, $s1, 0x4
/* 3ADE488 80079758 DAFF4014 */  bnez       $v0, .Llevel_10_800796C4
/* 3ADE48C 8007975C 21206002 */   addu      $a0, $s3, $zero
/* 3ADE490 80079760 21280000 */  addu       $a1, $zero, $zero
/* 3ADE494 80079764 AFEE000C */  jal        func_8003BABC
/* 3ADE498 80079768 21300000 */   addu      $a2, $zero, $zero
/* 3ADE49C 8007976C 80EE000C */  jal        func_8003BA00
/* 3ADE4A0 80079770 21206002 */   addu      $a0, $s3, $zero
/* 3ADE4A4 80079774 0780023C */  lui        $v0, %hi(D_8006C550)
/* 3ADE4A8 80079778 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 3ADE4AC 8007977C 21206002 */  addu       $a0, $s3, $zero
/* 3ADE4B0 80079780 23288200 */  subu       $a1, $a0, $v0
/* 3ADE4B4 80079784 40110500 */  sll        $v0, $a1, 5
/* 3ADE4B8 80079788 23104500 */  subu       $v0, $v0, $a1
/* 3ADE4BC 8007978C 40110200 */  sll        $v0, $v0, 5
/* 3ADE4C0 80079790 21104500 */  addu       $v0, $v0, $a1
/* 3ADE4C4 80079794 C0180200 */  sll        $v1, $v0, 3
/* 3ADE4C8 80079798 21104300 */  addu       $v0, $v0, $v1
/* 3ADE4CC 8007979C C01B0200 */  sll        $v1, $v0, 15
/* 3ADE4D0 800797A0 23186200 */  subu       $v1, $v1, $v0
/* 3ADE4D4 800797A4 80180300 */  sll        $v1, $v1, 2
/* 3ADE4D8 800797A8 21186500 */  addu       $v1, $v1, $a1
/* 3ADE4DC 800797AC 23180300 */  negu       $v1, $v1
/* 3ADE4E0 800797B0 C3180300 */  sra        $v1, $v1, 3
/* 3ADE4E4 800797B4 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 3ADE4E8 800797B8 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 3ADE4EC 800797BC 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 3ADE4F0 800797C0 B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 3ADE4F4 800797C4 21186200 */  addu       $v1, $v1, $v0
/* 3ADE4F8 800797C8 43310300 */  sra        $a2, $v1, 5
/* 3ADE4FC 800797CC 80300600 */  sll        $a2, $a2, 2
/* 3ADE500 800797D0 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 3ADE504 800797D4 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 3ADE508 800797D8 1F006330 */  andi       $v1, $v1, 0x1F
/* 3ADE50C 800797DC 40110200 */  sll        $v0, $v0, 5
/* 3ADE510 800797E0 21104500 */  addu       $v0, $v0, $a1
/* 3ADE514 800797E4 2130C200 */  addu       $a2, $a2, $v0
/* 3ADE518 800797E8 01000224 */  addiu      $v0, $zero, 0x1
/* 3ADE51C 800797EC 0000C58C */  lw         $a1, 0x0($a2)
/* 3ADE520 800797F0 04106200 */  sllv       $v0, $v0, $v1
/* 3ADE524 800797F4 2528A200 */  or         $a1, $a1, $v0
/* 3ADE528 800797F8 C656010C */  jal        func_80055B18
/* 3ADE52C 800797FC 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_10_80079800:
/* 3ADE530 80079800 3000BF8F */  lw         $ra, 0x30($sp)
/* 3ADE534 80079804 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3ADE538 80079808 2800B28F */  lw         $s2, 0x28($sp)
/* 3ADE53C 8007980C 2400B18F */  lw         $s1, 0x24($sp)
/* 3ADE540 80079810 2000B08F */  lw         $s0, 0x20($sp)
/* 3ADE544 80079814 3800BD27 */  addiu      $sp, $sp, 0x38
/* 3ADE548 80079818 0800E003 */  jr         $ra
/* 3ADE54C 8007981C 00000000 */   nop
.size func_level_10_800794B8, . - func_level_10_800794B8
