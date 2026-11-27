.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_596_level_43
/* 87ACBFC 800876CC 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 87ACC00 800876D0 5800B2AF */  sw         $s2, 0x58($sp)
/* 87ACC04 800876D4 21908000 */  addu       $s2, $a0, $zero
/* 87ACC08 800876D8 7000BEAF */  sw         $fp, 0x70($sp)
/* 87ACC0C 800876DC 21F00000 */  addu       $fp, $zero, $zero
/* 87ACC10 800876E0 6000B4AF */  sw         $s4, 0x60($sp)
/* 87ACC14 800876E4 02000224 */  addiu      $v0, $zero, 0x2
/* 87ACC18 800876E8 7400BFAF */  sw         $ra, 0x74($sp)
/* 87ACC1C 800876EC 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 87ACC20 800876F0 6800B6AF */  sw         $s6, 0x68($sp)
/* 87ACC24 800876F4 6400B5AF */  sw         $s5, 0x64($sp)
/* 87ACC28 800876F8 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 87ACC2C 800876FC 5400B1AF */  sw         $s1, 0x54($sp)
/* 87ACC30 80087700 5000B0AF */  sw         $s0, 0x50($sp)
/* 87ACC34 80087704 48004392 */  lbu        $v1, 0x48($s2)
/* 87ACC38 80087708 0000538E */  lw         $s3, 0x0($s2)
/* 87ACC3C 8008770C 2F026210 */  beq        $v1, $v0, .Llevel_43_80087FCC
/* 87ACC40 80087710 21A00000 */   addu      $s4, $zero, $zero
/* 87ACC44 80087714 01000224 */  addiu      $v0, $zero, 0x1
/* 87ACC48 80087718 3B006214 */  bne        $v1, $v0, .Llevel_43_80087808
/* 87ACC4C 8008771C 96000224 */   addiu     $v0, $zero, 0x96
/* 87ACC50 80087720 4000A0AF */  sw         $zero, 0x40($sp)
/* 87ACC54 80087724 4400A2AF */  sw         $v0, 0x44($sp)
/* 87ACC58 80087728 4800A0AF */  sw         $zero, 0x48($sp)
/* 87ACC5C 8008772C 0000628E */  lw         $v0, 0x0($s3)
/* 87ACC60 80087730 05001424 */  addiu      $s4, $zero, 0x5
/* 87ACC64 80087734 03005414 */  bne        $v0, $s4, .Llevel_43_80087744
/* 87ACC68 80087738 21204002 */   addu      $a0, $s2, $zero
/* 87ACC6C 8008773C BC020224 */  addiu      $v0, $zero, 0x2BC
/* 87ACC70 80087740 4400A2AF */  sw         $v0, 0x44($sp)
.Llevel_43_80087744:
/* 87ACC74 80087744 4957010C */  jal        func_80055D24
/* 87ACC78 80087748 04000524 */   addiu     $a1, $zero, 0x4
/* 87ACC7C 8008774C 20004426 */  addiu      $a0, $s2, 0x20
/* 87ACC80 80087750 4000B127 */  addiu      $s1, $sp, 0x40
/* 87ACC84 80087754 21282002 */  addu       $a1, $s1, $zero
/* 87ACC88 80087758 5B3B010C */  jal        func_8004ED6C
/* 87ACC8C 8008775C 21302002 */   addu      $a2, $s1, $zero
/* 87ACC90 80087760 0C005026 */  addiu      $s0, $s2, 0xC
/* 87ACC94 80087764 21200002 */  addu       $a0, $s0, $zero
/* 87ACC98 80087768 21280002 */  addu       $a1, $s0, $zero
/* 87ACC9C 8008776C 653C010C */  jal        func_8004F194
/* 87ACCA0 80087770 21302002 */   addu      $a2, $s1, $zero
/* 87ACCA4 80087774 01000424 */  addiu      $a0, $zero, 0x1
/* 87ACCA8 80087778 0D000524 */  addiu      $a1, $zero, 0xD
/* 87ACCAC 8008777C 21300002 */  addu       $a2, $s0, $zero
/* 87ACCB0 80087780 4000A0AF */  sw         $zero, 0x40($sp)
/* 87ACCB4 80087784 4400A0AF */  sw         $zero, 0x44($sp)
/* 87ACCB8 80087788 0000638E */  lw         $v1, 0x0($s3)
/* 87ACCBC 8008778C 21382002 */  addu       $a3, $s1, $zero
/* 87ACCC0 80087790 23188302 */  subu       $v1, $s4, $v1
/* 87ACCC4 80087794 40100300 */  sll        $v0, $v1, 1
/* 87ACCC8 80087798 21104300 */  addu       $v0, $v0, $v1
/* 87ACCCC 8008779C 40100200 */  sll        $v0, $v0, 1
/* 87ACCD0 800877A0 0780033C */  lui        $v1, %hi(SpawnParticle)
/* 87ACCD4 800877A4 E442638C */  lw         $v1, %lo(SpawnParticle)($v1)
/* 87ACCD8 800877A8 23100200 */  negu       $v0, $v0
/* 87ACCDC 800877AC 09F86000 */  jalr       $v1
/* 87ACCE0 800877B0 4800A2AF */   sw        $v0, 0x48($sp)
/* 87ACCE4 800877B4 21204000 */  addu       $a0, $v0, $zero
/* 87ACCE8 800877B8 0C008010 */  beqz       $a0, .Llevel_43_800877EC
/* 87ACCEC 800877BC 00000000 */   nop
/* 87ACCF0 800877C0 0000628E */  lw         $v0, 0x0($s3)
/* 87ACCF4 800877C4 00000000 */  nop
/* 87ACCF8 800877C8 23108202 */  subu       $v0, $s4, $v0
/* 87ACCFC 800877CC 40180200 */  sll        $v1, $v0, 1
/* 87ACD00 800877D0 21186200 */  addu       $v1, $v1, $v0
/* 87ACD04 800877D4 80180300 */  sll        $v1, $v1, 2
/* 87ACD08 800877D8 23186200 */  subu       $v1, $v1, $v0
/* 87ACD0C 800877DC 40180300 */  sll        $v1, $v1, 1
/* 87ACD10 800877E0 78000224 */  addiu      $v0, $zero, 0x78
/* 87ACD14 800877E4 23104300 */  subu       $v0, $v0, $v1
/* 87ACD18 800877E8 0A0082A0 */  sb         $v0, 0xA($a0)
.Llevel_43_800877EC:
/* 87ACD1C 800877EC 0000628E */  lw         $v0, 0x0($s3)
/* 87ACD20 800877F0 00000000 */  nop
/* 87ACD24 800877F4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 87ACD28 800877F8 F401401C */  bgtz       $v0, .Llevel_43_80087FCC
/* 87ACD2C 800877FC 000062AE */   sw        $v0, 0x0($s3)
/* 87ACD30 80087800 F11F0208 */  j          .Llevel_43_80087FC4
/* 87ACD34 80087804 00000000 */   nop
.Llevel_43_80087808:
/* 87ACD38 80087808 2000A427 */  addiu      $a0, $sp, 0x20
/* 87ACD3C 8008780C 5E3C010C */  jal        func_8004F178
/* 87ACD40 80087810 0C004526 */   addiu     $a1, $s2, 0xC
/* 87ACD44 80087814 21200000 */  addu       $a0, $zero, $zero
/* 87ACD48 80087818 F7D8000C */  jal        func_800363DC
/* 87ACD4C 8008781C 64000524 */   addiu     $a1, $zero, 0x64
/* 87ACD50 80087820 21200000 */  addu       $a0, $zero, $zero
/* 87ACD54 80087824 2000A38F */  lw         $v1, 0x20($sp)
/* 87ACD58 80087828 64000524 */  addiu      $a1, $zero, 0x64
/* 87ACD5C 8008782C CEFF6324 */  addiu      $v1, $v1, -0x32
/* 87ACD60 80087830 21186200 */  addu       $v1, $v1, $v0
/* 87ACD64 80087834 F7D8000C */  jal        func_800363DC
/* 87ACD68 80087838 2000A3AF */   sw        $v1, 0x20($sp)
/* 87ACD6C 8008783C 21200000 */  addu       $a0, $zero, $zero
/* 87ACD70 80087840 2400A38F */  lw         $v1, 0x24($sp)
/* 87ACD74 80087844 64000524 */  addiu      $a1, $zero, 0x64
/* 87ACD78 80087848 CEFF6324 */  addiu      $v1, $v1, -0x32
/* 87ACD7C 8008784C 21186200 */  addu       $v1, $v1, $v0
/* 87ACD80 80087850 F7D8000C */  jal        func_800363DC
/* 87ACD84 80087854 2400A3AF */   sw        $v1, 0x24($sp)
/* 87ACD88 80087858 3000B027 */  addiu      $s0, $sp, 0x30
/* 87ACD8C 8008785C 2800A38F */  lw         $v1, 0x28($sp)
/* 87ACD90 80087860 21200002 */  addu       $a0, $s0, $zero
/* 87ACD94 80087864 CEFF6324 */  addiu      $v1, $v1, -0x32
/* 87ACD98 80087868 21186200 */  addu       $v1, $v1, $v0
/* 87ACD9C 8008786C 5A3C010C */  jal        func_8004F168
/* 87ACDA0 80087870 2800A3AF */   sw        $v1, 0x28($sp)
/* 87ACDA4 80087874 01000424 */  addiu      $a0, $zero, 0x1
/* 87ACDA8 80087878 0D000524 */  addiu      $a1, $zero, 0xD
/* 87ACDAC 8008787C 2000A627 */  addiu      $a2, $sp, 0x20
/* 87ACDB0 80087880 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 87ACDB4 80087884 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 87ACDB8 80087888 00000000 */  nop
/* 87ACDBC 8008788C 09F84000 */  jalr       $v0
/* 87ACDC0 80087890 21380002 */   addu      $a3, $s0, $zero
/* 87ACDC4 80087894 21184000 */  addu       $v1, $v0, $zero
/* 87ACDC8 80087898 02006010 */  beqz       $v1, .Llevel_43_800878A4
/* 87ACDCC 8008789C 0A000224 */   addiu     $v0, $zero, 0xA
/* 87ACDD0 800878A0 0A0062A0 */  sb         $v0, 0xA($v1)
.Llevel_43_800878A4:
/* 87ACDD4 800878A4 21204002 */  addu       $a0, $s2, $zero
/* 87ACDD8 800878A8 2C010524 */  addiu      $a1, $zero, 0x12C
/* 87ACDDC 800878AC 21300000 */  addu       $a2, $zero, $zero
/* 87ACDE0 800878B0 21380000 */  addu       $a3, $zero, $zero
/* 87ACDE4 800878B4 77D7000C */  jal        func_80035DDC
/* 87ACDE8 800878B8 1000A0AF */   sw        $zero, 0x10($sp)
/* 87ACDEC 800878BC 0800628E */  lw         $v0, 0x8($s3)
/* 87ACDF0 800878C0 00000000 */  nop
/* 87ACDF4 800878C4 0F004010 */  beqz       $v0, .Llevel_43_80087904
/* 87ACDF8 800878C8 0C004426 */   addiu     $a0, $s2, 0xC
/* 87ACDFC 800878CC 1400428E */  lw         $v0, 0x14($s2)
/* 87ACE00 800878D0 0400638E */  lw         $v1, 0x4($s3)
/* 87ACE04 800878D4 00000000 */  nop
/* 87ACE08 800878D8 21104300 */  addu       $v0, $v0, $v1
/* 87ACE0C 800878DC 140042AE */  sw         $v0, 0x14($s2)
/* 87ACE10 800878E0 0400628E */  lw         $v0, 0x4($s3)
/* 87ACE14 800878E4 00000000 */  nop
/* 87ACE18 800878E8 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 87ACE1C 800878EC 040062AE */  sw         $v0, 0x4($s3)
/* 87ACE20 800878F0 70FE4228 */  slti       $v0, $v0, -0x190
/* 87ACE24 800878F4 03004010 */  beqz       $v0, .Llevel_43_80087904
/* 87ACE28 800878F8 70FE0224 */   addiu     $v0, $zero, -0x190
/* 87ACE2C 800878FC 040062AE */  sw         $v0, 0x4($s3)
/* 87ACE30 80087900 0C004426 */  addiu      $a0, $s2, 0xC
.Llevel_43_80087904:
/* 87ACE34 80087904 00200524 */  addiu      $a1, $zero, 0x2000
/* 87ACE38 80087908 1C00428E */  lw         $v0, 0x1C($s2)
/* 87ACE3C 8008790C 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 87ACE40 80087910 25104300 */  or         $v0, $v0, $v1
/* 87ACE44 80087914 D668000C */  jal        func_8001A358
/* 87ACE48 80087918 1C0042AE */   sw        $v0, 0x1C($s2)
/* 87ACE4C 8008791C A758010C */  jal        func_8005629C
/* 87ACE50 80087920 21204002 */   addu      $a0, $s2, $zero
/* 87ACE54 80087924 21204002 */  addu       $a0, $s2, $zero
/* 87ACE58 80087928 4957010C */  jal        func_80055D24
/* 87ACE5C 8008792C 02000524 */   addiu     $a1, $zero, 0x2
/* 87ACE60 80087930 0C00428E */  lw         $v0, 0xC($s2)
/* 87ACE64 80087934 00000000 */  nop
/* 87ACE68 80087938 00044228 */  slti       $v0, $v0, 0x400
/* 87ACE6C 8008793C 0F004014 */  bnez       $v0, .Llevel_43_8008797C
/* 87ACE70 80087940 00000000 */   nop
/* 87ACE74 80087944 1000428E */  lw         $v0, 0x10($s2)
/* 87ACE78 80087948 00000000 */  nop
/* 87ACE7C 8008794C 00044228 */  slti       $v0, $v0, 0x400
/* 87ACE80 80087950 0A004014 */  bnez       $v0, .Llevel_43_8008797C
/* 87ACE84 80087954 00000000 */   nop
/* 87ACE88 80087958 1400428E */  lw         $v0, 0x14($s2)
/* 87ACE8C 8008795C 00000000 */  nop
/* 87ACE90 80087960 00044228 */  slti       $v0, $v0, 0x400
/* 87ACE94 80087964 05004014 */  bnez       $v0, .Llevel_43_8008797C
/* 87ACE98 80087968 21206002 */   addu      $a0, $s3, $zero
/* 87ACE9C 8008796C 69D6000C */  jal        func_800359A4
/* 87ACEA0 80087970 04000524 */   addiu     $a1, $zero, 0x4
/* 87ACEA4 80087974 03004010 */  beqz       $v0, .Llevel_43_80087984
/* 87ACEA8 80087978 0C005526 */   addiu     $s5, $s2, 0xC
.Llevel_43_8008797C:
/* 87ACEAC 8008797C 01001424 */  addiu      $s4, $zero, 0x1
/* 87ACEB0 80087980 0C005526 */  addiu      $s5, $s2, 0xC
.Llevel_43_80087984:
/* 87ACEB4 80087984 2120A002 */  addu       $a0, $s5, $zero
/* 87ACEB8 80087988 64000524 */  addiu      $a1, $zero, 0x64
/* 87ACEBC 8008798C 03000624 */  addiu      $a2, $zero, 0x3
/* 87ACEC0 80087990 21380000 */  addu       $a3, $zero, $zero
/* 87ACEC4 80087994 1000A0AF */  sw         $zero, 0x10($sp)
/* 87ACEC8 80087998 8C6E000C */  jal        func_8001BA30
/* 87ACECC 8008799C 1400B2AF */   sw        $s2, 0x14($sp)
/* 87ACED0 800879A0 21804000 */  addu       $s0, $v0, $zero
/* 87ACED4 800879A4 3C000012 */  beqz       $s0, .Llevel_43_80087A98
/* 87ACED8 800879A8 54020224 */   addiu     $v0, $zero, 0x254
/* 87ACEDC 800879AC 36000386 */  lh         $v1, 0x36($s0)
/* 87ACEE0 800879B0 00000000 */  nop
/* 87ACEE4 800879B4 38006214 */  bne        $v1, $v0, .Llevel_43_80087A98
/* 87ACEE8 800879B8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 87ACEEC 800879BC 3A000392 */  lbu        $v1, 0x3A($s0)
/* 87ACEF0 800879C0 00000000 */  nop
/* 87ACEF4 800879C4 34006210 */  beq        $v1, $v0, .Llevel_43_80087A98
/* 87ACEF8 800879C8 00000000 */   nop
/* 87ACEFC 800879CC 3A004492 */  lbu        $a0, 0x3A($s2)
/* 87ACF00 800879D0 00000000 */  nop
/* 87ACF04 800879D4 30006410 */  beq        $v1, $a0, .Llevel_43_80087A98
/* 87ACF08 800879D8 40100300 */   sll       $v0, $v1, 1
/* 87ACF0C 800879DC 21104300 */  addu       $v0, $v0, $v1
/* 87ACF10 800879E0 80100200 */  sll        $v0, $v0, 2
/* 87ACF14 800879E4 23104300 */  subu       $v0, $v0, $v1
/* 87ACF18 800879E8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 87ACF1C 800879EC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 87ACF20 800879F0 C0100200 */  sll        $v0, $v0, 3
/* 87ACF24 800879F4 21286200 */  addu       $a1, $v1, $v0
/* 87ACF28 800879F8 40100400 */  sll        $v0, $a0, 1
/* 87ACF2C 800879FC 21104400 */  addu       $v0, $v0, $a0
/* 87ACF30 80087A00 80100200 */  sll        $v0, $v0, 2
/* 87ACF34 80087A04 23104400 */  subu       $v0, $v0, $a0
/* 87ACF38 80087A08 C0100200 */  sll        $v0, $v0, 3
/* 87ACF3C 80087A0C 21104300 */  addu       $v0, $v0, $v1
/* 87ACF40 80087A10 36004384 */  lh         $v1, 0x36($v0)
/* 87ACF44 80087A14 53020224 */  addiu      $v0, $zero, 0x253
/* 87ACF48 80087A18 02006214 */  bne        $v1, $v0, .Llevel_43_80087A24
/* 87ACF4C 80087A1C F4011124 */   addiu     $s1, $zero, 0x1F4
/* 87ACF50 80087A20 84031124 */  addiu      $s1, $zero, 0x384
.Llevel_43_80087A24:
/* 87ACF54 80087A24 3600A384 */  lh         $v1, 0x36($a1)
/* 87ACF58 80087A28 0B020224 */  addiu      $v0, $zero, 0x20B
/* 87ACF5C 80087A2C 1A006214 */  bne        $v1, $v0, .Llevel_43_80087A98
/* 87ACF60 80087A30 00000000 */   nop
/* 87ACF64 80087A34 1400A28C */  lw         $v0, 0x14($a1)
/* 87ACF68 80087A38 1400438E */  lw         $v1, 0x14($s2)
/* 87ACF6C 80087A3C 00000000 */  nop
/* 87ACF70 80087A40 23104300 */  subu       $v0, $v0, $v1
/* 87ACF74 80087A44 02004104 */  bgez       $v0, .Llevel_43_80087A50
/* 87ACF78 80087A48 00000000 */   nop
/* 87ACF7C 80087A4C 23100200 */  negu       $v0, $v0
.Llevel_43_80087A50:
/* 87ACF80 80087A50 F4014228 */  slti       $v0, $v0, 0x1F4
/* 87ACF84 80087A54 10004010 */  beqz       $v0, .Llevel_43_80087A98
/* 87ACF88 80087A58 2120A002 */   addu      $a0, $s5, $zero
/* 87ACF8C 80087A5C CD3C010C */  jal        func_8004F334
/* 87ACF90 80087A60 0C00A524 */   addiu     $a1, $a1, 0xC
/* 87ACF94 80087A64 2A105100 */  slt        $v0, $v0, $s1
/* 87ACF98 80087A68 0B004010 */  beqz       $v0, .Llevel_43_80087A98
/* 87ACF9C 80087A6C 00000000 */   nop
/* 87ACFA0 80087A70 0800628E */  lw         $v0, 0x8($s3)
/* 87ACFA4 80087A74 00000000 */  nop
/* 87ACFA8 80087A78 02004010 */  beqz       $v0, .Llevel_43_80087A84
/* 87ACFAC 80087A7C 01001424 */   addiu     $s4, $zero, 0x1
/* 87ACFB0 80087A80 02001424 */  addiu      $s4, $zero, 0x2
.Llevel_43_80087A84:
/* 87ACFB4 80087A84 1000023C */  lui        $v0, (0x100000 >> 16)
/* 87ACFB8 80087A88 180002AE */  sw         $v0, 0x18($s0)
/* 87ACFBC 80087A8C 46004292 */  lbu        $v0, 0x46($s2)
/* 87ACFC0 80087A90 00000000 */  nop
/* 87ACFC4 80087A94 510002A2 */  sb         $v0, 0x51($s0)
.Llevel_43_80087A98:
/* 87ACFC8 80087A98 1C008016 */  bnez       $s4, .Llevel_43_80087B0C
/* 87ACFCC 80087A9C 00000000 */   nop
/* 87ACFD0 80087AA0 0D000012 */  beqz       $s0, .Llevel_43_80087AD8
/* 87ACFD4 80087AA4 54020224 */   addiu     $v0, $zero, 0x254
/* 87ACFD8 80087AA8 36000386 */  lh         $v1, 0x36($s0)
/* 87ACFDC 80087AAC 00000000 */  nop
/* 87ACFE0 80087AB0 09006214 */  bne        $v1, $v0, .Llevel_43_80087AD8
/* 87ACFE4 80087AB4 0C004426 */   addiu     $a0, $s2, 0xC
/* 87ACFE8 80087AB8 64000524 */  addiu      $a1, $zero, 0x64
/* 87ACFEC 80087ABC 03000624 */  addiu      $a2, $zero, 0x3
/* 87ACFF0 80087AC0 21380000 */  addu       $a3, $zero, $zero
/* 87ACFF4 80087AC4 1000A0AF */  sw         $zero, 0x10($sp)
/* 87ACFF8 80087AC8 8C6E000C */  jal        func_8001BA30
/* 87ACFFC 80087ACC 1400B0AF */   sw        $s0, 0x14($sp)
/* 87AD000 80087AD0 0E008016 */  bnez       $s4, .Llevel_43_80087B0C
/* 87AD004 80087AD4 21804000 */   addu      $s0, $v0, $zero
.Llevel_43_80087AD8:
/* 87AD008 80087AD8 0C000012 */  beqz       $s0, .Llevel_43_80087B0C
/* 87AD00C 80087ADC 54020224 */   addiu     $v0, $zero, 0x254
/* 87AD010 80087AE0 36000386 */  lh         $v1, 0x36($s0)
/* 87AD014 80087AE4 00000000 */  nop
/* 87AD018 80087AE8 08006210 */  beq        $v1, $v0, .Llevel_43_80087B0C
/* 87AD01C 80087AEC 1000023C */   lui       $v0, (0x100000 >> 16)
/* 87AD020 80087AF0 180002AE */  sw         $v0, 0x18($s0)
/* 87AD024 80087AF4 46004292 */  lbu        $v0, 0x46($s2)
/* 87AD028 80087AF8 1400038E */  lw         $v1, 0x14($s0)
/* 87AD02C 80087AFC 01001424 */  addiu      $s4, $zero, 0x1
/* 87AD030 80087B00 510002A2 */  sb         $v0, 0x51($s0)
/* 87AD034 80087B04 F01E0208 */  j          .Llevel_43_80087BC0
/* 87AD038 80087B08 140043AE */   sw        $v1, 0x14($s2)
.Llevel_43_80087B0C:
/* 87AD03C 80087B0C 0C00628E */  lw         $v0, 0xC($s3)
/* 87AD040 80087B10 00000000 */  nop
/* 87AD044 80087B14 2A004010 */  beqz       $v0, .Llevel_43_80087BC0
/* 87AD048 80087B18 0C004426 */   addiu     $a0, $s2, 0xC
/* 87AD04C 80087B1C 08000524 */  addiu      $a1, $zero, 0x8
/* 87AD050 80087B20 A270000C */  jal        func_8001C288
/* 87AD054 80087B24 07000624 */   addiu     $a2, $zero, 0x7
/* 87AD058 80087B28 25004010 */  beqz       $v0, .Llevel_43_80087BC0
/* 87AD05C 80087B2C 0010023C */   lui       $v0, (0x10000400 >> 16)
/* 87AD060 80087B30 46004392 */  lbu        $v1, 0x46($s2)
/* 87AD064 80087B34 00044234 */  ori        $v0, $v0, (0x10000400 & 0xFFFF)
/* 87AD068 80087B38 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 87AD06C 80087B3C 340522AC */  sw         $v0, %lo(D_80070328 + 0x20C)($at)
/* 87AD070 80087B40 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 87AD074 80087B44 C00523AC */  sw         $v1, %lo(D_80070328 + 0x298)($at)
/* 87AD078 80087B48 46004292 */  lbu        $v0, 0x46($s2)
/* 87AD07C 80087B4C 00000000 */  nop
/* 87AD080 80087B50 40100200 */  sll        $v0, $v0, 1
/* 87AD084 80087B54 0680013C */  lui        $at, %hi(D_80065920)
/* 87AD088 80087B58 21082200 */  addu       $at, $at, $v0
/* 87AD08C 80087B5C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 87AD090 80087B60 00000000 */  nop
/* 87AD094 80087B64 40100300 */  sll        $v0, $v1, 1
/* 87AD098 80087B68 21104300 */  addu       $v0, $v0, $v1
/* 87AD09C 80087B6C C0100200 */  sll        $v0, $v0, 3
/* 87AD0A0 80087B70 21104300 */  addu       $v0, $v0, $v1
/* 87AD0A4 80087B74 C3120200 */  sra        $v0, $v0, 11
/* 87AD0A8 80087B78 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 87AD0AC 80087B7C 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 87AD0B0 80087B80 46004292 */  lbu        $v0, 0x46($s2)
/* 87AD0B4 80087B84 00000000 */  nop
/* 87AD0B8 80087B88 40100200 */  sll        $v0, $v0, 1
/* 87AD0BC 80087B8C 0680013C */  lui        $at, %hi(D_800658A0)
/* 87AD0C0 80087B90 21082200 */  addu       $at, $at, $v0
/* 87AD0C4 80087B94 A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87AD0C8 80087B98 01001424 */  addiu      $s4, $zero, 0x1
/* 87AD0CC 80087B9C 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 87AD0D0 80087BA0 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 87AD0D4 80087BA4 40100300 */  sll        $v0, $v1, 1
/* 87AD0D8 80087BA8 21104300 */  addu       $v0, $v0, $v1
/* 87AD0DC 80087BAC C0100200 */  sll        $v0, $v0, 3
/* 87AD0E0 80087BB0 21104300 */  addu       $v0, $v0, $v1
/* 87AD0E4 80087BB4 C3120200 */  sra        $v0, $v0, 11
/* 87AD0E8 80087BB8 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 87AD0EC 80087BBC 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
.Llevel_43_80087BC0:
/* 87AD0F0 80087BC0 2000A427 */  addiu      $a0, $sp, 0x20
/* 87AD0F4 80087BC4 0C005026 */  addiu      $s0, $s2, 0xC
/* 87AD0F8 80087BC8 5E3C010C */  jal        func_8004F178
/* 87AD0FC 80087BCC 21280002 */   addu      $a1, $s0, $zero
/* 87AD100 80087BD0 2800A28F */  lw         $v0, 0x28($sp)
/* 87AD104 80087BD4 00000000 */  nop
/* 87AD108 80087BD8 80004224 */  addiu      $v0, $v0, 0x80
/* 87AD10C 80087BDC 0B008016 */  bnez       $s4, .Llevel_43_80087C0C
/* 87AD110 80087BE0 2800A2AF */   sw        $v0, 0x28($sp)
/* 87AD114 80087BE4 2000A427 */  addiu      $a0, $sp, 0x20
/* 87AD118 80087BE8 FA000524 */  addiu      $a1, $zero, 0xFA
/* 87AD11C 80087BEC 01000624 */  addiu      $a2, $zero, 0x1
/* 87AD120 80087BF0 21380000 */  addu       $a3, $zero, $zero
/* 87AD124 80087BF4 1000A0AF */  sw         $zero, 0x10($sp)
/* 87AD128 80087BF8 4E64000C */  jal        func_80019138
/* 87AD12C 80087BFC 1400A0AF */   sw        $zero, 0x14($sp)
/* 87AD130 80087C00 21F04000 */  addu       $fp, $v0, $zero
/* 87AD134 80087C04 F100C013 */  beqz       $fp, .Llevel_43_80087FCC
/* 87AD138 80087C08 00000000 */   nop
.Llevel_43_80087C0C:
/* 87AD13C 80087C0C 21B80000 */  addu       $s7, $zero, $zero
/* 87AD140 80087C10 21204002 */  addu       $a0, $s2, $zero
/* 87AD144 80087C14 21280000 */  addu       $a1, $zero, $zero
/* 87AD148 80087C18 AFEE000C */  jal        func_8003BABC
/* 87AD14C 80087C1C 21300000 */   addu      $a2, $zero, $zero
/* 87AD150 80087C20 4000C013 */  beqz       $fp, .Llevel_43_80087D24
/* 87AD154 80087C24 00000000 */   nop
/* 87AD158 80087C28 0780053C */  lui        $a1, %hi(D_80070328)
/* 87AD15C 80087C2C 2803A524 */  addiu      $a1, $a1, %lo(D_80070328)
/* 87AD160 80087C30 CD3C010C */  jal        func_8004F334
/* 87AD164 80087C34 21200002 */   addu      $a0, $s0, $zero
/* 87AD168 80087C38 D0074228 */  slti       $v0, $v0, 0x7D0
/* 87AD16C 80087C3C 23004010 */  beqz       $v0, .Llevel_43_80087CCC
/* 87AD170 80087C40 0010033C */   lui       $v1, (0x10000400 >> 16)
/* 87AD174 80087C44 07000224 */  addiu      $v0, $zero, 0x7
/* 87AD178 80087C48 0780013C */  lui        $at, %hi(D_80070328 + 0x24)
/* 87AD17C 80087C4C 4C0322AC */  sw         $v0, %lo(D_80070328 + 0x24)($at)
/* 87AD180 80087C50 46004292 */  lbu        $v0, 0x46($s2)
/* 87AD184 80087C54 00046334 */  ori        $v1, $v1, (0x10000400 & 0xFFFF)
/* 87AD188 80087C58 0780013C */  lui        $at, %hi(D_80070328 + 0x20C)
/* 87AD18C 80087C5C 340523AC */  sw         $v1, %lo(D_80070328 + 0x20C)($at)
/* 87AD190 80087C60 0780013C */  lui        $at, %hi(D_80070328 + 0x298)
/* 87AD194 80087C64 C00522AC */  sw         $v0, %lo(D_80070328 + 0x298)($at)
/* 87AD198 80087C68 46004292 */  lbu        $v0, 0x46($s2)
/* 87AD19C 80087C6C 00000000 */  nop
/* 87AD1A0 80087C70 40100200 */  sll        $v0, $v0, 1
/* 87AD1A4 80087C74 0680013C */  lui        $at, %hi(D_80065920)
/* 87AD1A8 80087C78 21082200 */  addu       $at, $at, $v0
/* 87AD1AC 80087C7C 20592384 */  lh         $v1, %lo(D_80065920)($at)
/* 87AD1B0 80087C80 00000000 */  nop
/* 87AD1B4 80087C84 00110300 */  sll        $v0, $v1, 4
/* 87AD1B8 80087C88 23104300 */  subu       $v0, $v0, $v1
/* 87AD1BC 80087C8C C3120200 */  sra        $v0, $v0, 11
/* 87AD1C0 80087C90 0780013C */  lui        $at, %hi(D_80070328 + 0x21C)
/* 87AD1C4 80087C94 440522AC */  sw         $v0, %lo(D_80070328 + 0x21C)($at)
/* 87AD1C8 80087C98 46004292 */  lbu        $v0, 0x46($s2)
/* 87AD1CC 80087C9C 00000000 */  nop
/* 87AD1D0 80087CA0 40100200 */  sll        $v0, $v0, 1
/* 87AD1D4 80087CA4 0680013C */  lui        $at, %hi(D_800658A0)
/* 87AD1D8 80087CA8 21082200 */  addu       $at, $at, $v0
/* 87AD1DC 80087CAC A0582384 */  lh         $v1, %lo(D_800658A0)($at)
/* 87AD1E0 80087CB0 0780013C */  lui        $at, %hi(D_80070328 + 0x224)
/* 87AD1E4 80087CB4 4C0520AC */  sw         $zero, %lo(D_80070328 + 0x224)($at)
/* 87AD1E8 80087CB8 00110300 */  sll        $v0, $v1, 4
/* 87AD1EC 80087CBC 23104300 */  subu       $v0, $v0, $v1
/* 87AD1F0 80087CC0 C3120200 */  sra        $v0, $v0, 11
/* 87AD1F4 80087CC4 0780013C */  lui        $at, %hi(D_80070328 + 0x220)
/* 87AD1F8 80087CC8 480522AC */  sw         $v0, %lo(D_80070328 + 0x220)($at)
.Llevel_43_80087CCC:
/* 87AD1FC 80087CCC 3A004392 */  lbu        $v1, 0x3A($s2)
/* 87AD200 80087CD0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 87AD204 80087CD4 13006210 */  beq        $v1, $v0, .Llevel_43_80087D24
/* 87AD208 80087CD8 40100300 */   sll       $v0, $v1, 1
/* 87AD20C 80087CDC 21104300 */  addu       $v0, $v0, $v1
/* 87AD210 80087CE0 80100200 */  sll        $v0, $v0, 2
/* 87AD214 80087CE4 23104300 */  subu       $v0, $v0, $v1
/* 87AD218 80087CE8 0780033C */  lui        $v1, %hi(D_8006C550)
/* 87AD21C 80087CEC 50C5638C */  lw         $v1, %lo(D_8006C550)($v1)
/* 87AD220 80087CF0 C0100200 */  sll        $v0, $v0, 3
/* 87AD224 80087CF4 21104300 */  addu       $v0, $v0, $v1
/* 87AD228 80087CF8 36004384 */  lh         $v1, 0x36($v0)
/* 87AD22C 80087CFC 53020224 */  addiu      $v0, $zero, 0x253
/* 87AD230 80087D00 08006214 */  bne        $v1, $v0, .Llevel_43_80087D24
/* 87AD234 80087D04 21200002 */   addu      $a0, $s0, $zero
/* 87AD238 80087D08 00020524 */  addiu      $a1, $zero, 0x200
/* 87AD23C 80087D0C 03000624 */  addiu      $a2, $zero, 0x3
/* 87AD240 80087D10 21380000 */  addu       $a3, $zero, $zero
/* 87AD244 80087D14 1000023C */  lui        $v0, (0x100000 >> 16)
/* 87AD248 80087D18 1000A2AF */  sw         $v0, 0x10($sp)
/* 87AD24C 80087D1C 8C6E000C */  jal        func_8001BA30
/* 87AD250 80087D20 1400B2AF */   sw        $s2, 0x14($sp)
.Llevel_43_80087D24:
/* 87AD254 80087D24 21800000 */  addu       $s0, $zero, $zero
/* 87AD258 80087D28 02001124 */  addiu      $s1, $zero, 0x2
/* 87AD25C 80087D2C C8001624 */  addiu      $s6, $zero, 0xC8
/* 87AD260 80087D30 00011524 */  addiu      $s5, $zero, 0x100
/* 87AD264 80087D34 1C001324 */  addiu      $s3, $zero, 0x1C
/* 87AD268 80087D38 01000424 */  addiu      $a0, $zero, 0x1
.Llevel_43_80087D3C:
/* 87AD26C 80087D3C 54000524 */  addiu      $a1, $zero, 0x54
/* 87AD270 80087D40 21304002 */  addu       $a2, $s2, $zero
/* 87AD274 80087D44 21380000 */  addu       $a3, $zero, $zero
/* 87AD278 80087D48 1000B1AF */  sw         $s1, 0x10($sp)
/* 87AD27C 80087D4C 1400B6AF */  sw         $s6, 0x14($sp)
/* 87AD280 80087D50 7AE4000C */  jal        func_800391E8
/* 87AD284 80087D54 1800B5AF */   sw        $s5, 0x18($sp)
/* 87AD288 80087D58 03004010 */  beqz       $v0, .Llevel_43_80087D68
/* 87AD28C 80087D5C 00000000 */   nop
/* 87AD290 80087D60 480051A0 */  sb         $s1, 0x48($v0)
/* 87AD294 80087D64 4F0053A0 */  sb         $s3, 0x4F($v0)
.Llevel_43_80087D68:
/* 87AD298 80087D68 01001026 */  addiu      $s0, $s0, 0x1
/* 87AD29C 80087D6C 0500022A */  slti       $v0, $s0, 0x5
/* 87AD2A0 80087D70 F2FF4014 */  bnez       $v0, .Llevel_43_80087D3C
/* 87AD2A4 80087D74 01000424 */   addiu     $a0, $zero, 0x1
/* 87AD2A8 80087D78 02000224 */  addiu      $v0, $zero, 0x2
/* 87AD2AC 80087D7C 08008216 */  bne        $s4, $v0, .Llevel_43_80087DA0
/* 87AD2B0 80087D80 E8030424 */   addiu     $a0, $zero, 0x3E8
/* 87AD2B4 80087D84 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87AD2B8 80087D88 E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87AD2BC 80087D8C 00000000 */  nop
/* 87AD2C0 80087D90 09F84000 */  jalr       $v0
/* 87AD2C4 80087D94 21284002 */   addu      $a1, $s2, $zero
/* 87AD2C8 80087D98 AB1F0208 */  j          .Llevel_43_80087EAC
/* 87AD2CC 80087D9C 21184000 */   addu      $v1, $v0, $zero
.Llevel_43_80087DA0:
/* 87AD2D0 80087DA0 4D00C013 */  beqz       $fp, .Llevel_43_80087ED8
/* 87AD2D4 80087DA4 00000000 */   nop
/* 87AD2D8 80087DA8 0780043C */  lui        $a0, %hi(D_80071920)
/* 87AD2DC 80087DAC 2019848C */  lw         $a0, %lo(D_80071920)($a0)
/* 87AD2E0 80087DB0 00000000 */  nop
/* 87AD2E4 80087DB4 33008018 */  blez       $a0, .Llevel_43_80087E84
/* 87AD2E8 80087DB8 21280000 */   addu      $a1, $zero, $zero
/* 87AD2EC 80087DBC 0780033C */  lui        $v1, %hi(D_80071918)
/* 87AD2F0 80087DC0 1819638C */  lw         $v1, %lo(D_80071918)($v1)
/* 87AD2F4 80087DC4 00000000 */  nop
/* 87AD2F8 80087DC8 40100300 */  sll        $v0, $v1, 1
/* 87AD2FC 80087DCC 21104300 */  addu       $v0, $v0, $v1
/* 87AD300 80087DD0 C0100200 */  sll        $v0, $v0, 3
/* 87AD304 80087DD4 21104300 */  addu       $v0, $v0, $v1
/* 87AD308 80087DD8 80100200 */  sll        $v0, $v0, 2
/* 87AD30C 80087DDC 1A004400 */  div        $zero, $v0, $a0
/* 87AD310 80087DE0 02008014 */  bnez       $a0, .Llevel_43_80087DEC
/* 87AD314 80087DE4 00000000 */   nop
/* 87AD318 80087DE8 0D000700 */  break      7
.Llevel_43_80087DEC:
/* 87AD31C 80087DEC FFFF0124 */  addiu      $at, $zero, -0x1
/* 87AD320 80087DF0 04008114 */  bne        $a0, $at, .Llevel_43_80087E04
/* 87AD324 80087DF4 0080013C */   lui       $at, (0x80000000 >> 16)
/* 87AD328 80087DF8 02004114 */  bne        $v0, $at, .Llevel_43_80087E04
/* 87AD32C 80087DFC 00000000 */   nop
/* 87AD330 80087E00 0D000600 */  break      6
.Llevel_43_80087E04:
/* 87AD334 80087E04 12100000 */  mflo       $v0
/* 87AD338 80087E08 00000000 */  nop
/* 87AD33C 80087E0C 02004104 */  bgez       $v0, .Llevel_43_80087E18
/* 87AD340 80087E10 00000000 */   nop
/* 87AD344 80087E14 23100200 */  negu       $v0, $v0
.Llevel_43_80087E18:
/* 87AD348 80087E18 06004228 */  slti       $v0, $v0, 0x6
/* 87AD34C 80087E1C 19004010 */  beqz       $v0, .Llevel_43_80087E84
/* 87AD350 80087E20 00000000 */   nop
/* 87AD354 80087E24 0780033C */  lui        $v1, %hi(D_8007191C)
/* 87AD358 80087E28 1C19638C */  lw         $v1, %lo(D_8007191C)($v1)
/* 87AD35C 80087E2C 00000000 */  nop
/* 87AD360 80087E30 40100300 */  sll        $v0, $v1, 1
/* 87AD364 80087E34 21104300 */  addu       $v0, $v0, $v1
/* 87AD368 80087E38 C0100200 */  sll        $v0, $v0, 3
/* 87AD36C 80087E3C 21104300 */  addu       $v0, $v0, $v1
/* 87AD370 80087E40 80100200 */  sll        $v0, $v0, 2
/* 87AD374 80087E44 1A004400 */  div        $zero, $v0, $a0
/* 87AD378 80087E48 02008014 */  bnez       $a0, .Llevel_43_80087E54
/* 87AD37C 80087E4C 00000000 */   nop
/* 87AD380 80087E50 0D000700 */  break      7
.Llevel_43_80087E54:
/* 87AD384 80087E54 FFFF0124 */  addiu      $at, $zero, -0x1
/* 87AD388 80087E58 04008114 */  bne        $a0, $at, .Llevel_43_80087E6C
/* 87AD38C 80087E5C 0080013C */   lui       $at, (0x80000000 >> 16)
/* 87AD390 80087E60 02004114 */  bne        $v0, $at, .Llevel_43_80087E6C
/* 87AD394 80087E64 00000000 */   nop
/* 87AD398 80087E68 0D000600 */  break      6
.Llevel_43_80087E6C:
/* 87AD39C 80087E6C 12100000 */  mflo       $v0
/* 87AD3A0 80087E70 00000000 */  nop
/* 87AD3A4 80087E74 02004104 */  bgez       $v0, .Llevel_43_80087E80
/* 87AD3A8 80087E78 00000000 */   nop
/* 87AD3AC 80087E7C 23100200 */  negu       $v0, $v0
.Llevel_43_80087E80:
/* 87AD3B0 80087E80 06004528 */  slti       $a1, $v0, 0x6
.Llevel_43_80087E84:
/* 87AD3B4 80087E84 1400A010 */  beqz       $a1, .Llevel_43_80087ED8
/* 87AD3B8 80087E88 E8030424 */   addiu     $a0, $zero, 0x3E8
/* 87AD3BC 80087E8C 0780023C */  lui        $v0, %hi(D_80071908)
/* 87AD3C0 80087E90 0819428C */  lw         $v0, %lo(D_80071908)($v0)
/* 87AD3C4 80087E94 0780033C */  lui        $v1, %hi(SpawnMoby)
/* 87AD3C8 80087E98 E042638C */  lw         $v1, %lo(SpawnMoby)($v1)
/* 87AD3CC 80087E9C 21284002 */  addu       $a1, $s2, $zero
/* 87AD3D0 80087EA0 09F86000 */  jalr       $v1
/* 87AD3D4 80087EA4 140042AE */   sw        $v0, 0x14($s2)
/* 87AD3D8 80087EA8 21184000 */  addu       $v1, $v0, $zero
.Llevel_43_80087EAC:
/* 87AD3DC 80087EAC 0A006010 */  beqz       $v1, .Llevel_43_80087ED8
/* 87AD3E0 80087EB0 01000224 */   addiu     $v0, $zero, 0x1
/* 87AD3E4 80087EB4 01001724 */  addiu      $s7, $zero, 0x1
/* 87AD3E8 80087EB8 480062A0 */  sb         $v0, 0x48($v1)
/* 87AD3EC 80087EBC 0000638C */  lw         $v1, 0x0($v1)
/* 87AD3F0 80087EC0 90010224 */  addiu      $v0, $zero, 0x190
/* 87AD3F4 80087EC4 020062A4 */  sh         $v0, 0x2($v1)
/* 87AD3F8 80087EC8 1E000224 */  addiu      $v0, $zero, 0x1E
/* 87AD3FC 80087ECC 140062A4 */  sh         $v0, 0x14($v1)
/* 87AD400 80087ED0 50000224 */  addiu      $v0, $zero, 0x50
/* 87AD404 80087ED4 160062A4 */  sh         $v0, 0x16($v1)
.Llevel_43_80087ED8:
/* 87AD408 80087ED8 3300E016 */  bnez       $s7, .Llevel_43_80087FA8
/* 87AD40C 80087EDC 0A000424 */   addiu     $a0, $zero, 0xA
/* 87AD410 80087EE0 21300000 */  addu       $a2, $zero, $zero
/* 87AD414 80087EE4 21800000 */  addu       $s0, $zero, $zero
/* 87AD418 80087EE8 0780033C */  lui        $v1, %hi(D_80070328)
/* 87AD41C 80087EEC 2803638C */  lw         $v1, %lo(D_80070328)($v1)
/* 87AD420 80087EF0 0C00448E */  lw         $a0, 0xC($s2)
/* 87AD424 80087EF4 0780023C */  lui        $v0, %hi(D_80070328 + 4)
/* 87AD428 80087EF8 2C03428C */  lw         $v0, %lo(D_80070328 + 4)($v0)
/* 87AD42C 80087EFC 1000458E */  lw         $a1, 0x10($s2)
/* 87AD430 80087F00 23206400 */  subu       $a0, $v1, $a0
/* 87AD434 80087F04 203A010C */  jal        func_8004E880
/* 87AD438 80087F08 23284500 */   subu      $a1, $v0, $a1
/* 87AD43C 80087F0C 21200000 */  addu       $a0, $zero, $zero
/* 87AD440 80087F10 7F000524 */  addiu      $a1, $zero, 0x7F
/* 87AD444 80087F14 DBD8000C */  jal        func_8003636C
/* 87AD448 80087F18 460042A2 */   sb        $v0, 0x46($s2)
/* 87AD44C 80087F1C 21884000 */  addu       $s1, $v0, $zero
.Llevel_43_80087F20:
/* 87AD450 80087F20 0780023C */  lui        $v0, %hi(D_8006C578)
/* 87AD454 80087F24 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 87AD458 80087F28 0780033C */  lui        $v1, %hi(D_8006C574)
/* 87AD45C 80087F2C 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 87AD460 80087F30 00000000 */  nop
/* 87AD464 80087F34 23104300 */  subu       $v0, $v0, $v1
/* 87AD468 80087F38 15004228 */  slti       $v0, $v0, 0x15
/* 87AD46C 80087F3C 1A004014 */  bnez       $v0, .Llevel_43_80087FA8
/* 87AD470 80087F40 0A000424 */   addiu     $a0, $zero, 0xA
/* 87AD474 80087F44 54020424 */  addiu      $a0, $zero, 0x254
/* 87AD478 80087F48 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 87AD47C 80087F4C E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 87AD480 80087F50 00000000 */  nop
/* 87AD484 80087F54 09F84000 */  jalr       $v0
/* 87AD488 80087F58 21284002 */   addu      $a1, $s2, $zero
/* 87AD48C 80087F5C 21204000 */  addu       $a0, $v0, $zero
/* 87AD490 80087F60 0C008010 */  beqz       $a0, .Llevel_43_80087F94
/* 87AD494 80087F64 01000224 */   addiu     $v0, $zero, 0x1
/* 87AD498 80087F68 410080A0 */  sb         $zero, 0x41($a0)
/* 87AD49C 80087F6C 4C0080A0 */  sb         $zero, 0x4C($a0)
/* 87AD4A0 80087F70 4D0080A0 */  sb         $zero, 0x4D($a0)
/* 87AD4A4 80087F74 46004392 */  lbu        $v1, 0x46($s2)
/* 87AD4A8 80087F78 480082A0 */  sb         $v0, 0x48($a0)
/* 87AD4AC 80087F7C 460083A0 */  sb         $v1, 0x46($a0)
/* 87AD4B0 80087F80 0000838C */  lw         $v1, 0x0($a0)
/* 87AD4B4 80087F84 05000224 */  addiu      $v0, $zero, 0x5
/* 87AD4B8 80087F88 440091A0 */  sb         $s1, 0x44($a0)
/* 87AD4BC 80087F8C 080080AC */  sw         $zero, 0x8($a0)
/* 87AD4C0 80087F90 000062AC */  sw         $v0, 0x0($v1)
.Llevel_43_80087F94:
/* 87AD4C4 80087F94 01001026 */  addiu      $s0, $s0, 0x1
/* 87AD4C8 80087F98 0500022A */  slti       $v0, $s0, 0x5
/* 87AD4CC 80087F9C E0FF4014 */  bnez       $v0, .Llevel_43_80087F20
/* 87AD4D0 80087FA0 33003126 */   addiu     $s1, $s1, 0x33
/* 87AD4D4 80087FA4 0A000424 */  addiu      $a0, $zero, 0xA
.Llevel_43_80087FA8:
/* 87AD4D8 80087FA8 46000524 */  addiu      $a1, $zero, 0x46
/* 87AD4DC 80087FAC 0C004626 */  addiu      $a2, $s2, 0xC
/* 87AD4E0 80087FB0 0780023C */  lui        $v0, %hi(SpawnParticle)
/* 87AD4E4 80087FB4 E442428C */  lw         $v0, %lo(SpawnParticle)($v0)
/* 87AD4E8 80087FB8 00000000 */  nop
/* 87AD4EC 80087FBC 09F84000 */  jalr       $v0
/* 87AD4F0 80087FC0 10000724 */   addiu     $a3, $zero, 0x10
.Llevel_43_80087FC4:
/* 87AD4F4 80087FC4 C656010C */  jal        func_80055B18
/* 87AD4F8 80087FC8 21204002 */   addu      $a0, $s2, $zero
.Llevel_43_80087FCC:
/* 87AD4FC 80087FCC 7400BF8F */  lw         $ra, 0x74($sp)
/* 87AD500 80087FD0 7000BE8F */  lw         $fp, 0x70($sp)
/* 87AD504 80087FD4 6C00B78F */  lw         $s7, 0x6C($sp)
/* 87AD508 80087FD8 6800B68F */  lw         $s6, 0x68($sp)
/* 87AD50C 80087FDC 6400B58F */  lw         $s5, 0x64($sp)
/* 87AD510 80087FE0 6000B48F */  lw         $s4, 0x60($sp)
/* 87AD514 80087FE4 5C00B38F */  lw         $s3, 0x5C($sp)
/* 87AD518 80087FE8 5800B28F */  lw         $s2, 0x58($sp)
/* 87AD51C 80087FEC 5400B18F */  lw         $s1, 0x54($sp)
/* 87AD520 80087FF0 5000B08F */  lw         $s0, 0x50($sp)
/* 87AD524 80087FF4 7800BD27 */  addiu      $sp, $sp, 0x78
/* 87AD528 80087FF8 0800E003 */  jr         $ra
/* 87AD52C 80087FFC 00000000 */   nop
.size MobyUpdate_596_level_43, . - MobyUpdate_596_level_43
