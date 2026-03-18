.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_11_8007951C
/* 3E1DA4C 8007951C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3E1DA50 80079520 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3E1DA54 80079524 21988000 */  addu       $s3, $a0, $zero
/* 3E1DA58 80079528 3000BFAF */  sw         $ra, 0x30($sp)
/* 3E1DA5C 8007952C 2800B2AF */  sw         $s2, 0x28($sp)
/* 3E1DA60 80079530 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E1DA64 80079534 2000B0AF */  sw         $s0, 0x20($sp)
/* 3E1DA68 80079538 0000728E */  lw         $s2, 0x0($s3)
/* 3E1DA6C 8007953C 00000000 */  nop
/* 3E1DA70 80079540 0000428E */  lw         $v0, 0x0($s2)
/* 3E1DA74 80079544 00000000 */  nop
/* 3E1DA78 80079548 13004014 */  bnez       $v0, .Llevel_11_80079598
/* 3E1DA7C 8007954C D3000424 */   addiu     $a0, $zero, 0xD3
/* 3E1DA80 80079550 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3E1DA84 80079554 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3E1DA88 80079558 00000000 */  nop
/* 3E1DA8C 8007955C 09F84000 */  jalr       $v0
/* 3E1DA90 80079560 21286002 */   addu      $a1, $s3, $zero
/* 3E1DA94 80079564 21184000 */  addu       $v1, $v0, $zero
/* 3E1DA98 80079568 0B006010 */  beqz       $v1, .Llevel_11_80079598
/* 3E1DA9C 8007956C 000043AE */   sw        $v1, 0x0($s2)
/* 3E1DAA0 80079570 1400628E */  lw         $v0, 0x14($s3)
/* 3E1DAA4 80079574 00000000 */  nop
/* 3E1DAA8 80079578 E0004224 */  addiu      $v0, $v0, 0xE0
/* 3E1DAAC 8007957C 140062AC */  sw         $v0, 0x14($v1)
/* 3E1DAB0 80079580 0000438E */  lw         $v1, 0x0($s2)
/* 3E1DAB4 80079584 02000224 */  addiu      $v0, $zero, 0x2
/* 3E1DAB8 80079588 480062A0 */  sb         $v0, 0x48($v1)
/* 3E1DABC 8007958C 0000428E */  lw         $v0, 0x0($s2)
/* 3E1DAC0 80079590 00000000 */  nop
/* 3E1DAC4 80079594 1C0040AC */  sw         $zero, 0x1C($v0)
.Llevel_11_80079598:
/* 3E1DAC8 80079598 4D006292 */  lbu        $v0, 0x4D($s3)
/* 3E1DACC 8007959C 00000000 */  nop
/* 3E1DAD0 800795A0 33004010 */  beqz       $v0, .Llevel_11_80079670
/* 3E1DAD4 800795A4 00000000 */   nop
/* 3E1DAD8 800795A8 0400438E */  lw         $v1, 0x4($s2)
/* 3E1DADC 800795AC 00000000 */  nop
/* 3E1DAE0 800795B0 90016228 */  slti       $v0, $v1, 0x190
/* 3E1DAE4 800795B4 07004010 */  beqz       $v0, .Llevel_11_800795D4
/* 3E1DAE8 800795B8 00000000 */   nop
/* 3E1DAEC 800795BC 0780023C */  lui        $v0, %hi(D_8006C648)
/* 3E1DAF0 800795C0 48C6428C */  lw         $v0, %lo(D_8006C648)($v0)
/* 3E1DAF4 800795C4 00000000 */  nop
/* 3E1DAF8 800795C8 21106200 */  addu       $v0, $v1, $v0
/* 3E1DAFC 800795CC 9CE50108 */  j          .Llevel_11_80079670
/* 3E1DB00 800795D0 040042AE */   sw        $v0, 0x4($s2)
.Llevel_11_800795D4:
/* 3E1DB04 800795D4 10BC000C */  jal        func_8002F040
/* 3E1DB08 800795D8 05000424 */   addiu     $a0, $zero, 0x5
/* 3E1DB0C 800795DC 21884000 */  addu       $s1, $v0, $zero
/* 3E1DB10 800795E0 1C002012 */  beqz       $s1, .Llevel_11_80079654
/* 3E1DB14 800795E4 00000000 */   nop
/* 3E1DB18 800795E8 9171010C */  jal        rand
/* 3E1DB1C 800795EC 00000000 */   nop
/* 3E1DB20 800795F0 21202002 */  addu       $a0, $s1, $zero
/* 3E1DB24 800795F4 0C006526 */  addiu      $a1, $s3, 0xC
/* 3E1DB28 800795F8 5E3C010C */  jal        func_8004F178
/* 3E1DB2C 800795FC 21804000 */   addu      $s0, $v0, $zero
/* 3E1DB30 80079600 FF001032 */  andi       $s0, $s0, 0xFF
/* 3E1DB34 80079604 40801000 */  sll        $s0, $s0, 1
/* 3E1DB38 80079608 0680013C */  lui        $at, %hi(D_80065920)
/* 3E1DB3C 8007960C 21083000 */  addu       $at, $at, $s0
/* 3E1DB40 80079610 20592294 */  lhu        $v0, %lo(D_80065920)($at)
/* 3E1DB44 80079614 0000238E */  lw         $v1, 0x0($s1)
/* 3E1DB48 80079618 00140200 */  sll        $v0, $v0, 16
/* 3E1DB4C 8007961C 03150200 */  sra        $v0, $v0, 20
/* 3E1DB50 80079620 21186200 */  addu       $v1, $v1, $v0
/* 3E1DB54 80079624 0800228E */  lw         $v0, 0x8($s1)
/* 3E1DB58 80079628 000023AE */  sw         $v1, 0x0($s1)
/* 3E1DB5C 8007962C 0680013C */  lui        $at, %hi(D_800658A0)
/* 3E1DB60 80079630 21083000 */  addu       $at, $at, $s0
/* 3E1DB64 80079634 A0582394 */  lhu        $v1, %lo(D_800658A0)($at)
/* 3E1DB68 80079638 80014224 */  addiu      $v0, $v0, 0x180
/* 3E1DB6C 8007963C 001C0300 */  sll        $v1, $v1, 16
/* 3E1DB70 80079640 080022AE */  sw         $v0, 0x8($s1)
/* 3E1DB74 80079644 0400228E */  lw         $v0, 0x4($s1)
/* 3E1DB78 80079648 031D0300 */  sra        $v1, $v1, 20
/* 3E1DB7C 8007964C 21104300 */  addu       $v0, $v0, $v1
/* 3E1DB80 80079650 040022AE */  sw         $v0, 0x4($s1)
.Llevel_11_80079654:
/* 3E1DB84 80079654 9171010C */  jal        rand
/* 3E1DB88 80079658 00000000 */   nop
/* 3E1DB8C 8007965C 0400438E */  lw         $v1, 0x4($s2)
/* 3E1DB90 80079660 FF004230 */  andi       $v0, $v0, 0xFF
/* 3E1DB94 80079664 80FF6324 */  addiu      $v1, $v1, -0x80
/* 3E1DB98 80079668 23186200 */  subu       $v1, $v1, $v0
/* 3E1DB9C 8007966C 040043AE */  sw         $v1, 0x4($s2)
.Llevel_11_80079670:
/* 3E1DBA0 80079670 1800628E */  lw         $v0, 0x18($s3)
/* 3E1DBA4 80079674 00000000 */  nop
/* 3E1DBA8 80079678 7A004010 */  beqz       $v0, .Llevel_11_80079864
/* 3E1DBAC 8007967C 00000000 */   nop
/* 3E1DBB0 80079680 0000428E */  lw         $v0, 0x0($s2)
/* 3E1DBB4 80079684 00000000 */  nop
/* 3E1DBB8 80079688 05004010 */  beqz       $v0, .Llevel_11_800796A0
/* 3E1DBBC 8007968C 00000000 */   nop
/* 3E1DBC0 80079690 480040A0 */  sb         $zero, 0x48($v0)
/* 3E1DBC4 80079694 0000438E */  lw         $v1, 0x0($s2)
/* 3E1DBC8 80079698 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3E1DBCC 8007969C 1C0062AC */  sw         $v0, 0x1C($v1)
.Llevel_11_800796A0:
/* 3E1DBD0 800796A0 70000224 */  addiu      $v0, $zero, 0x70
/* 3E1DBD4 800796A4 490062A2 */  sb         $v0, 0x49($s3)
/* 3E1DBD8 800796A8 21880000 */  addu       $s1, $zero, $zero
/* 3E1DBDC 800796AC 5555123C */  lui        $s2, (0x55555556 >> 16)
/* 3E1DBE0 800796B0 56555236 */  ori        $s2, $s2, (0x55555556 & 0xFFFF)
.Llevel_11_800796B4:
/* 3E1DBE4 800796B4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 3E1DBE8 800796B8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 3E1DBEC 800796BC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 3E1DBF0 800796C0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 3E1DBF4 800796C4 00000000 */  nop
/* 3E1DBF8 800796C8 23104300 */  subu       $v0, $v0, $v1
/* 3E1DBFC 800796CC 15004228 */  slti       $v0, $v0, 0x15
/* 3E1DC00 800796D0 14004014 */  bnez       $v0, .Llevel_11_80079724
/* 3E1DC04 800796D4 38020424 */   addiu     $a0, $zero, 0x238
/* 3E1DC08 800796D8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 3E1DC0C 800796DC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 3E1DC10 800796E0 00000000 */  nop
/* 3E1DC14 800796E4 09F84000 */  jalr       $v0
/* 3E1DC18 800796E8 21286002 */   addu      $a1, $s3, $zero
/* 3E1DC1C 800796EC 9171010C */  jal        rand
/* 3E1DC20 800796F0 21804000 */   addu      $s0, $v0, $zero
/* 3E1DC24 800796F4 18005200 */  mult       $v0, $s2
/* 3E1DC28 800796F8 01003126 */  addiu      $s1, $s1, 0x1
/* 3E1DC2C 800796FC C3270200 */  sra        $a0, $v0, 31
/* 3E1DC30 80079700 10480000 */  mfhi       $t1
/* 3E1DC34 80079704 23202401 */  subu       $a0, $t1, $a0
/* 3E1DC38 80079708 40180400 */  sll        $v1, $a0, 1
/* 3E1DC3C 8007970C 21186400 */  addu       $v1, $v1, $a0
/* 3E1DC40 80079710 23104300 */  subu       $v0, $v0, $v1
/* 3E1DC44 80079714 3C0002A2 */  sb         $v0, 0x3C($s0)
/* 3E1DC48 80079718 1000222A */  slti       $v0, $s1, 0x10
/* 3E1DC4C 8007971C E5FF4014 */  bnez       $v0, .Llevel_11_800796B4
/* 3E1DC50 80079720 00000000 */   nop
.Llevel_11_80079724:
/* 3E1DC54 80079724 21880000 */  addu       $s1, $zero, $zero
.Llevel_11_80079728:
/* 3E1DC58 80079728 1000A427 */  addiu      $a0, $sp, 0x10
/* 3E1DC5C 8007972C 5E3C010C */  jal        func_8004F178
/* 3E1DC60 80079730 0C006526 */   addiu     $a1, $s3, 0xC
/* 3E1DC64 80079734 9171010C */  jal        rand
/* 3E1DC68 80079738 01003126 */   addiu     $s1, $s1, 0x1
/* 3E1DC6C 8007973C 1000A38F */  lw         $v1, 0x10($sp)
/* 3E1DC70 80079740 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E1DC74 80079744 00016324 */  addiu      $v1, $v1, 0x100
/* 3E1DC78 80079748 23186200 */  subu       $v1, $v1, $v0
/* 3E1DC7C 8007974C 9171010C */  jal        rand
/* 3E1DC80 80079750 1000A3AF */   sw        $v1, 0x10($sp)
/* 3E1DC84 80079754 1400A38F */  lw         $v1, 0x14($sp)
/* 3E1DC88 80079758 FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E1DC8C 8007975C 00016324 */  addiu      $v1, $v1, 0x100
/* 3E1DC90 80079760 23186200 */  subu       $v1, $v1, $v0
/* 3E1DC94 80079764 9171010C */  jal        rand
/* 3E1DC98 80079768 1400A3AF */   sw        $v1, 0x14($sp)
/* 3E1DC9C 8007976C 01000424 */  addiu      $a0, $zero, 0x1
/* 3E1DCA0 80079770 02000524 */  addiu      $a1, $zero, 0x2
/* 3E1DCA4 80079774 1000A627 */  addiu      $a2, $sp, 0x10
/* 3E1DCA8 80079778 21380000 */  addu       $a3, $zero, $zero
/* 3E1DCAC 8007977C FF014230 */  andi       $v0, $v0, 0x1FF
/* 3E1DCB0 80079780 1800A38F */  lw         $v1, 0x18($sp)
/* 3E1DCB4 80079784 0780083C */  lui        $t0, %hi(SpawnParticle)
/* 3E1DCB8 80079788 E442088D */  lw         $t0, %lo(SpawnParticle)($t0)
/* 3E1DCBC 8007978C 21186200 */  addu       $v1, $v1, $v0
/* 3E1DCC0 80079790 09F80001 */  jalr       $t0
/* 3E1DCC4 80079794 1800A3AF */   sw        $v1, 0x18($sp)
/* 3E1DCC8 80079798 04000424 */  addiu      $a0, $zero, 0x4
/* 3E1DCCC 8007979C 46000524 */  addiu      $a1, $zero, 0x46
/* 3E1DCD0 800797A0 1000A627 */  addiu      $a2, $sp, 0x10
/* 3E1DCD4 800797A4 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 3E1DCD8 800797A8 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 3E1DCDC 800797AC 00000000 */  nop
/* 3E1DCE0 800797B0 09F84000 */  jalr       $v0
/* 3E1DCE4 800797B4 18000724 */   addiu     $a3, $zero, 0x18
/* 3E1DCE8 800797B8 0400222A */  slti       $v0, $s1, 0x4
/* 3E1DCEC 800797BC DAFF4014 */  bnez       $v0, .Llevel_11_80079728
/* 3E1DCF0 800797C0 21206002 */   addu      $a0, $s3, $zero
/* 3E1DCF4 800797C4 21280000 */  addu       $a1, $zero, $zero
/* 3E1DCF8 800797C8 AFEE000C */  jal        func_8003BABC
/* 3E1DCFC 800797CC 21300000 */   addu      $a2, $zero, $zero
/* 3E1DD00 800797D0 80EE000C */  jal        func_8003BA00
/* 3E1DD04 800797D4 21206002 */   addu      $a0, $s3, $zero
/* 3E1DD08 800797D8 0780023C */  lui        $v0, %hi(D_8006C550)
/* 3E1DD0C 800797DC 50C5428C */  lw         $v0, %lo(D_8006C550)($v0)
/* 3E1DD10 800797E0 21206002 */  addu       $a0, $s3, $zero
/* 3E1DD14 800797E4 23288200 */  subu       $a1, $a0, $v0
/* 3E1DD18 800797E8 40110500 */  sll        $v0, $a1, 5
/* 3E1DD1C 800797EC 23104500 */  subu       $v0, $v0, $a1
/* 3E1DD20 800797F0 40110200 */  sll        $v0, $v0, 5
/* 3E1DD24 800797F4 21104500 */  addu       $v0, $v0, $a1
/* 3E1DD28 800797F8 C0180200 */  sll        $v1, $v0, 3
/* 3E1DD2C 800797FC 21104300 */  addu       $v0, $v0, $v1
/* 3E1DD30 80079800 C01B0200 */  sll        $v1, $v0, 15
/* 3E1DD34 80079804 23186200 */  subu       $v1, $v1, $v0
/* 3E1DD38 80079808 80180300 */  sll        $v1, $v1, 2
/* 3E1DD3C 8007980C 21186500 */  addu       $v1, $v1, $a1
/* 3E1DD40 80079810 23180300 */  negu       $v1, $v1
/* 3E1DD44 80079814 C3180300 */  sra        $v1, $v1, 3
/* 3E1DD48 80079818 0780023C */  lui        $v0, %hi(D_8006C79C)
/* 3E1DD4C 8007981C 9CC7428C */  lw         $v0, %lo(D_8006C79C)($v0)
/* 3E1DD50 80079820 0780053C */  lui        $a1, %hi(D_80071AB0)
/* 3E1DD54 80079824 B01AA524 */  addiu      $a1, $a1, %lo(D_80071AB0)
/* 3E1DD58 80079828 21186200 */  addu       $v1, $v1, $v0
/* 3E1DD5C 8007982C 43310300 */  sra        $a2, $v1, 5
/* 3E1DD60 80079830 80300600 */  sll        $a2, $a2, 2
/* 3E1DD64 80079834 0780023C */  lui        $v0, %hi(D_8006C58C)
/* 3E1DD68 80079838 8CC5428C */  lw         $v0, %lo(D_8006C58C)($v0)
/* 3E1DD6C 8007983C 1F006330 */  andi       $v1, $v1, 0x1F
/* 3E1DD70 80079840 40110200 */  sll        $v0, $v0, 5
/* 3E1DD74 80079844 21104500 */  addu       $v0, $v0, $a1
/* 3E1DD78 80079848 2130C200 */  addu       $a2, $a2, $v0
/* 3E1DD7C 8007984C 01000224 */  addiu      $v0, $zero, 0x1
/* 3E1DD80 80079850 0000C58C */  lw         $a1, 0x0($a2)
/* 3E1DD84 80079854 04106200 */  sllv       $v0, $v0, $v1
/* 3E1DD88 80079858 2528A200 */  or         $a1, $a1, $v0
/* 3E1DD8C 8007985C C656010C */  jal        func_80055B18
/* 3E1DD90 80079860 0000C5AC */   sw        $a1, 0x0($a2)
.Llevel_11_80079864:
/* 3E1DD94 80079864 3000BF8F */  lw         $ra, 0x30($sp)
/* 3E1DD98 80079868 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3E1DD9C 8007986C 2800B28F */  lw         $s2, 0x28($sp)
/* 3E1DDA0 80079870 2400B18F */  lw         $s1, 0x24($sp)
/* 3E1DDA4 80079874 2000B08F */  lw         $s0, 0x20($sp)
/* 3E1DDA8 80079878 3800BD27 */  addiu      $sp, $sp, 0x38
/* 3E1DDAC 8007987C 0800E003 */  jr         $ra
/* 3E1DDB0 80079880 00000000 */   nop
.size func_level_11_8007951C, . - func_level_11_8007951C
