.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_atlas_800775D8
/* 962FB08 800775D8 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 962FB0C 800775DC 4400B5AF */  sw         $s5, 0x44($sp)
/* 962FB10 800775E0 21A8A000 */  addu       $s5, $a1, $zero
/* 962FB14 800775E4 4800B6AF */  sw         $s6, 0x48($sp)
/* 962FB18 800775E8 21B0E000 */  addu       $s6, $a3, $zero
/* 962FB1C 800775EC 3400B1AF */  sw         $s1, 0x34($sp)
/* 962FB20 800775F0 72011124 */  addiu      $s1, $zero, 0x172
/* 962FB24 800775F4 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 962FB28 800775F8 4000B4AF */  sw         $s4, 0x40($sp)
/* 962FB2C 800775FC 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 962FB30 80077600 3800B2AF */  sw         $s2, 0x38($sp)
/* 962FB34 80077604 0200A012 */  beqz       $s5, .Latlas_80077610
/* 962FB38 80077608 3000B0AF */   sw        $s0, 0x30($sp)
/* 962FB3C 8007760C 8E001124 */  addiu      $s1, $zero, 0x8E
.Latlas_80077610:
/* 962FB40 80077610 0780103C */  lui        $s0, %hi(D_80069CF8)
/* 962FB44 80077614 F89C1026 */  addiu      $s0, $s0, %lo(D_80069CF8)
/* 962FB48 80077618 0780033C */  lui        $v1, %hi(D_8006C76C)
/* 962FB4C 8007761C 6CC7638C */  lw         $v1, %lo(D_8006C76C)($v1)
/* 962FB50 80077620 0680013C */  lui        $at, %hi(D_80066FCC)
/* 962FB54 80077624 21082600 */  addu       $at, $at, $a2
/* 962FB58 80077628 CC6F3390 */  lbu        $s3, %lo(D_80066FCC)($at)
/* 962FB5C 8007762C 80100300 */  sll        $v0, $v1, 2
/* 962FB60 80077630 21104300 */  addu       $v0, $v0, $v1
/* 962FB64 80077634 40110200 */  sll        $v0, $v0, 5
/* 962FB68 80077638 21105000 */  addu       $v0, $v0, $s0
/* 962FB6C 8007763C 80901300 */  sll        $s2, $s3, 2
/* 962FB70 80077640 21104202 */  addu       $v0, $s2, $v0
/* 962FB74 80077644 0000448C */  lw         $a0, 0x0($v0)
/* 962FB78 80077648 0CD9010C */  jal        func_atlas_80076430
/* 962FB7C 8007764C 00000000 */   nop
/* 962FB80 80077650 43100200 */  sra        $v0, $v0, 1
/* 962FB84 80077654 23282202 */  subu       $a1, $s1, $v0
/* 962FB88 80077658 1E000624 */  addiu      $a2, $zero, 0x1E
/* 962FB8C 8007765C 2000073C */  lui        $a3, (0x202020 >> 16)
/* 962FB90 80077660 0780033C */  lui        $v1, %hi(D_8006C76C)
/* 962FB94 80077664 6CC7638C */  lw         $v1, %lo(D_8006C76C)($v1)
/* 962FB98 80077668 2020E734 */  ori        $a3, $a3, (0x202020 & 0xFFFF)
/* 962FB9C 8007766C 80100300 */  sll        $v0, $v1, 2
/* 962FBA0 80077670 21104300 */  addu       $v0, $v0, $v1
/* 962FBA4 80077674 40110200 */  sll        $v0, $v0, 5
/* 962FBA8 80077678 21105000 */  addu       $v0, $v0, $s0
/* 962FBAC 8007767C 21104202 */  addu       $v0, $s2, $v0
/* 962FBB0 80077680 0000448C */  lw         $a0, 0x0($v0)
/* 962FBB4 80077684 8AD8010C */  jal        func_atlas_80076228
/* 962FBB8 80077688 24011124 */   addiu     $s1, $zero, 0x124
/* 962FBBC 8007768C 21206002 */  addu       $a0, $s3, $zero
/* 962FBC0 80077690 40000524 */  addiu      $a1, $zero, 0x40
/* 962FBC4 80077694 B5D6010C */  jal        func_atlas_80075AD4
/* 962FBC8 80077698 30000624 */   addiu     $a2, $zero, 0x30
/* 962FBCC 8007769C 0200A012 */  beqz       $s5, .Latlas_800776A8
/* 962FBD0 800776A0 00000000 */   nop
/* 962FBD4 800776A4 40001124 */  addiu      $s1, $zero, 0x40
.Latlas_800776A8:
/* 962FBD8 800776A8 0680013C */  lui        $at, %hi(D_80066F54)
/* 962FBDC 800776AC 21083300 */  addu       $at, $at, $s3
/* 962FBE0 800776B0 546F2390 */  lbu        $v1, %lo(D_80066F54)($at)
/* 962FBE4 800776B4 0780013C */  lui        $at, %hi(D_80071A10)
/* 962FBE8 800776B8 21083200 */  addu       $at, $at, $s2
/* 962FBEC 800776BC 101A328C */  lw         $s2, %lo(D_80071A10)($at)
/* 962FBF0 800776C0 40100300 */  sll        $v0, $v1, 1
/* 962FBF4 800776C4 21104300 */  addu       $v0, $v0, $v1
/* 962FBF8 800776C8 C0100200 */  sll        $v0, $v0, 3
/* 962FBFC 800776CC 21104300 */  addu       $v0, $v0, $v1
/* 962FC00 800776D0 80800200 */  sll        $s0, $v0, 2
/* 962FC04 800776D4 26000012 */  beqz       $s0, .Latlas_80077770
/* 962FC08 800776D8 A0001424 */   addiu     $s4, $zero, 0xA0
/* 962FC0C 800776DC AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
/* 962FC10 800776E0 0880043C */  lui        $a0, %hi(D_atlas_8007AE00)
/* 962FC14 800776E4 00AE848C */  lw         $a0, %lo(D_atlas_8007AE00)($a0)
/* 962FC18 800776E8 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 962FC1C 800776EC 18008200 */  mult       $a0, $v0
/* 962FC20 800776F0 21282002 */  addu       $a1, $s1, $zero
/* 962FC24 800776F4 9A000624 */  addiu      $a2, $zero, 0x9A
/* 962FC28 800776F8 2138C002 */  addu       $a3, $s6, $zero
/* 962FC2C 800776FC 24003126 */  addiu      $s1, $s1, 0x24
/* 962FC30 80077700 C31F0400 */  sra        $v1, $a0, 31
/* 962FC34 80077704 10400000 */  mfhi       $t0
/* 962FC38 80077708 23180301 */  subu       $v1, $t0, $v1
/* 962FC3C 8007770C 40100300 */  sll        $v0, $v1, 1
/* 962FC40 80077710 21104300 */  addu       $v0, $v0, $v1
/* 962FC44 80077714 40100200 */  sll        $v0, $v0, 1
/* 962FC48 80077718 23208200 */  subu       $a0, $a0, $v0
/* 962FC4C 8007771C C0200400 */  sll        $a0, $a0, 3
/* 962FC50 80077720 0780023C */  lui        $v0, %hi(D_80070108)
/* 962FC54 80077724 0801428C */  lw         $v0, %lo(D_80070108)($v0)
/* 962FC58 80077728 00018424 */  addiu      $a0, $a0, 0x100
/* 962FC5C 8007772C 4CA3000C */  jal        func_80028D30
/* 962FC60 80077730 21204400 */   addu      $a0, $v0, $a0
/* 962FC64 80077734 1800A427 */  addiu      $a0, $sp, 0x18
/* 962FC68 80077738 0780053C */  lui        $a1, %hi(D_atlas_800757C8)
/* 962FC6C 8007773C C857A524 */  addiu      $a1, $a1, %lo(D_atlas_800757C8)
/* 962FC70 80077740 21304002 */  addu       $a2, $s2, $zero
/* 962FC74 80077744 DF65010C */  jal        sprintf
/* 962FC78 80077748 21380002 */   addu      $a3, $s0, $zero
/* 962FC7C 8007774C 2000073C */  lui        $a3, (0x202020 >> 16)
/* 962FC80 80077750 03005016 */  bne        $s2, $s0, .Latlas_80077760
/* 962FC84 80077754 2020E734 */   ori       $a3, $a3, (0x202020 & 0xFFFF)
/* 962FC88 80077758 0D00073C */  lui        $a3, (0xD8CCC >> 16)
/* 962FC8C 8007775C CC8CE734 */  ori        $a3, $a3, (0xD8CCC & 0xFFFF)
.Latlas_80077760:
/* 962FC90 80077760 1800A427 */  addiu      $a0, $sp, 0x18
/* 962FC94 80077764 21282002 */  addu       $a1, $s1, $zero
/* 962FC98 80077768 8AD8010C */  jal        func_atlas_80076228
/* 962FC9C 8007776C A0000624 */   addiu     $a2, $zero, 0xA0
.Latlas_80077770:
/* 962FCA0 80077770 0780013C */  lui        $at, %hi(D_80070300)
/* 962FCA4 80077774 21083300 */  addu       $at, $at, $s3
/* 962FCA8 80077778 00032390 */  lbu        $v1, %lo(D_80070300)($at)
/* 962FCAC 8007777C 00000000 */  nop
/* 962FCB0 80077780 08006010 */  beqz       $v1, .Latlas_800777A4
/* 962FCB4 80077784 21300000 */   addu      $a2, $zero, $zero
/* 962FCB8 80077788 01006230 */  andi       $v0, $v1, 0x1
.Latlas_8007778C:
/* 962FCBC 8007778C 02004010 */  beqz       $v0, .Latlas_80077798
/* 962FCC0 80077790 00000000 */   nop
/* 962FCC4 80077794 0100C624 */  addiu      $a2, $a2, 0x1
.Latlas_80077798:
/* 962FCC8 80077798 43180300 */  sra        $v1, $v1, 1
/* 962FCCC 8007779C FBFF6014 */  bnez       $v1, .Latlas_8007778C
/* 962FCD0 800777A0 01006230 */   andi      $v0, $v1, 0x1
.Latlas_800777A4:
/* 962FCD4 800777A4 21206002 */  addu       $a0, $s3, $zero
/* 962FCD8 800777A8 80100400 */  sll        $v0, $a0, 2
/* 962FCDC 800777AC 0780013C */  lui        $at, %hi(D_80071A10)
/* 962FCE0 800777B0 21082200 */  addu       $at, $at, $v0
/* 962FCE4 800777B4 101A258C */  lw         $a1, %lo(D_80071A10)($at)
/* 962FCE8 800777B8 D1E2000C */  jal        func_80038B44
/* 962FCEC 800777BC 24011124 */   addiu     $s1, $zero, 0x124
/* 962FCF0 800777C0 1800A427 */  addiu      $a0, $sp, 0x18
/* 962FCF4 800777C4 0780053C */  lui        $a1, %hi(D_atlas_800757C0)
/* 962FCF8 800777C8 C057A524 */  addiu      $a1, $a1, %lo(D_atlas_800757C0)
/* 962FCFC 800777CC 21304000 */  addu       $a2, $v0, $zero
/* 962FD00 800777D0 0880023C */  lui        $v0, %hi(D_atlas_8007AA1C)
/* 962FD04 800777D4 1CAA428C */  lw         $v0, %lo(D_atlas_8007AA1C)($v0)
/* 962FD08 800777D8 25000724 */  addiu      $a3, $zero, 0x25
/* 962FD0C 800777DC DF65010C */  jal        sprintf
/* 962FD10 800777E0 1000A2AF */   sw        $v0, 0x10($sp)
/* 962FD14 800777E4 0200A012 */  beqz       $s5, .Latlas_800777F0
/* 962FD18 800777E8 1800A427 */   addiu     $a0, $sp, 0x18
/* 962FD1C 800777EC 40001124 */  addiu      $s1, $zero, 0x40
.Latlas_800777F0:
/* 962FD20 800777F0 21282002 */  addu       $a1, $s1, $zero
/* 962FD24 800777F4 14008626 */  addiu      $a2, $s4, 0x14
/* 962FD28 800777F8 2000073C */  lui        $a3, (0x2020A0 >> 16)
/* 962FD2C 800777FC 8AD8010C */  jal        func_atlas_80076228
/* 962FD30 80077800 A020E734 */   ori       $a3, $a3, (0x2020A0 & 0xFFFF)
/* 962FD34 80077804 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 962FD38 80077808 4800B68F */  lw         $s6, 0x48($sp)
/* 962FD3C 8007780C 4400B58F */  lw         $s5, 0x44($sp)
/* 962FD40 80077810 4000B48F */  lw         $s4, 0x40($sp)
/* 962FD44 80077814 3C00B38F */  lw         $s3, 0x3C($sp)
/* 962FD48 80077818 3800B28F */  lw         $s2, 0x38($sp)
/* 962FD4C 8007781C 3400B18F */  lw         $s1, 0x34($sp)
/* 962FD50 80077820 3000B08F */  lw         $s0, 0x30($sp)
/* 962FD54 80077824 5000BD27 */  addiu      $sp, $sp, 0x50
/* 962FD58 80077828 0800E003 */  jr         $ra
/* 962FD5C 8007782C 00000000 */   nop
.size func_atlas_800775D8, . - func_atlas_800775D8
