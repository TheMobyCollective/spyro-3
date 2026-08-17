.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_title_80078B38
/* 27868 80078B38 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2786C 80078B3C 1000BFAF */  sw         $ra, 0x10($sp)
/* 27870 80078B40 7368010C */  jal        SetDispMask
/* 27874 80078B44 21200000 */   addu      $a0, $zero, $zero
/* 27878 80078B48 C776010C */  jal        func_8005DB1C
/* 2787C 80078B4C 00000000 */   nop
/* 27880 80078B50 C276010C */  jal        func_8005DB08
/* 27884 80078B54 21200000 */   addu      $a0, $zero, $zero
/* 27888 80078B58 C571010C */  jal        VSyncCallback
/* 2788C 80078B5C 21200000 */   addu      $a0, $zero, $zero
/* 27890 80078B60 2377010C */  jal        func_8005DC8C
/* 27894 80078B64 00000000 */   nop
/* 27898 80078B68 FF67010C */  jal        ResetGraph
/* 2789C 80078B6C 03000424 */   addiu     $a0, $zero, 0x3
/* 278A0 80078B70 DE71010C */  jal        StopCallback
/* 278A4 80078B74 00000000 */   nop
/* 278A8 80078B78 1000BF8F */  lw         $ra, 0x10($sp)
/* 278AC 80078B7C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 278B0 80078B80 0800E003 */  jr         $ra
/* 278B4 80078B84 00000000 */   nop
.size func_title_80078B38, . - func_title_80078B38
