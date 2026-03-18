.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_title_80078848
/* 27578 80078848 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2757C 8007884C 2400B3AF */  sw         $s3, 0x24($sp)
/* 27580 80078850 21988000 */  addu       $s3, $a0, $zero
/* 27584 80078854 2000B2AF */  sw         $s2, 0x20($sp)
/* 27588 80078858 2190A000 */  addu       $s2, $a1, $zero
/* 2758C 8007885C 2800B4AF */  sw         $s4, 0x28($sp)
/* 27590 80078860 21A0C000 */  addu       $s4, $a2, $zero
/* 27594 80078864 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 27598 80078868 04001124 */  addiu      $s1, $zero, 0x4
/* 2759C 8007886C 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 275A0 80078870 1800B0AF */  sw         $s0, 0x18($sp)
/* 275A4 80078874 21206002 */  addu       $a0, $s3, $zero
.Ltitle_80078878:
/* 275A8 80078878 21284002 */  addu       $a1, $s2, $zero
/* 275AC 8007887C 0F000624 */  addiu      $a2, $zero, 0xF
/* 275B0 80078880 2330D100 */  subu       $a2, $a2, $s1
/* 275B4 80078884 083E010C */  jal        func_8004F820
/* 275B8 80078888 40300600 */   sll       $a2, $a2, 1
/* 275BC 8007888C 21200000 */  addu       $a0, $zero, $zero
/* 275C0 80078890 5B65010C */  jal        VSync
/* 275C4 80078894 21804000 */   addu      $s0, $v0, $zero
/* 275C8 80078898 1000A427 */  addiu      $a0, $sp, 0x10
/* 275CC 8007889C 21284002 */  addu       $a1, $s2, $zero
/* 275D0 800788A0 C3121000 */  sra        $v0, $s0, 11
/* 275D4 800788A4 23108202 */  subu       $v0, $s4, $v0
/* 275D8 800788A8 1200A2A7 */  sh         $v0, 0x12($sp)
/* 275DC 800788AC 00020224 */  addiu      $v0, $zero, 0x200
/* 275E0 800788B0 83821000 */  sra        $s0, $s0, 10
/* 275E4 800788B4 1000A0A7 */  sh         $zero, 0x10($sp)
/* 275E8 800788B8 1400A2A7 */  sh         $v0, 0x14($sp)
/* 275EC 800788BC 1E69010C */  jal        LoadImage
/* 275F0 800788C0 1600B0A7 */   sh        $s0, 0x16($sp)
/* 275F4 800788C4 1000A427 */  addiu      $a0, $sp, 0x10
/* 275F8 800788C8 21284002 */  addu       $a1, $s2, $zero
/* 275FC 800788CC 1200A297 */  lhu        $v0, 0x12($sp)
/* 27600 800788D0 01003126 */  addiu      $s1, $s1, 0x1
/* 27604 800788D4 E4004224 */  addiu      $v0, $v0, 0xE4
/* 27608 800788D8 1E69010C */  jal        LoadImage
/* 2760C 800788DC 1200A2A7 */   sh        $v0, 0x12($sp)
/* 27610 800788E0 9968010C */  jal        DrawSync
/* 27614 800788E4 21200000 */   addu      $a0, $zero, $zero
/* 27618 800788E8 1000222A */  slti       $v0, $s1, 0x10
/* 2761C 800788EC E2FF4014 */  bnez       $v0, .Ltitle_80078878
/* 27620 800788F0 21206002 */   addu      $a0, $s3, $zero
/* 27624 800788F4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 27628 800788F8 2800B48F */  lw         $s4, 0x28($sp)
/* 2762C 800788FC 2400B38F */  lw         $s3, 0x24($sp)
/* 27630 80078900 2000B28F */  lw         $s2, 0x20($sp)
/* 27634 80078904 1C00B18F */  lw         $s1, 0x1C($sp)
/* 27638 80078908 1800B08F */  lw         $s0, 0x18($sp)
/* 2763C 8007890C 3000BD27 */  addiu      $sp, $sp, 0x30
/* 27640 80078910 0800E003 */  jr         $ra
/* 27644 80078914 00000000 */   nop
.size func_title_80078848, . - func_title_80078848
