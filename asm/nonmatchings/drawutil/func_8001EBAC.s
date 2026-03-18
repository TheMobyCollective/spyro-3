.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001EBAC
/* F3AC 8001EBAC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* F3B0 8001EBB0 1800BFAF */  sw         $ra, 0x18($sp)
/* F3B4 8001EBB4 9968010C */  jal        DrawSync
/* F3B8 8001EBB8 21200000 */   addu      $a0, $zero, $zero
/* F3BC 8001EBBC 5B65010C */  jal        VSync
/* F3C0 8001EBC0 21200000 */   addu      $a0, $zero, $zero
/* F3C4 8001EBC4 1000A427 */  addiu      $a0, $sp, 0x10
/* F3C8 8001EBC8 21280000 */  addu       $a1, $zero, $zero
/* F3CC 8001EBCC 21300000 */  addu       $a2, $zero, $zero
/* F3D0 8001EBD0 21380000 */  addu       $a3, $zero, $zero
/* F3D4 8001EBD4 00020224 */  addiu      $v0, $zero, 0x200
/* F3D8 8001EBD8 1400A2A7 */  sh         $v0, 0x14($sp)
/* F3DC 8001EBDC F0000224 */  addiu      $v0, $zero, 0xF0
/* F3E0 8001EBE0 1000A0A7 */  sh         $zero, 0x10($sp)
/* F3E4 8001EBE4 1200A0A7 */  sh         $zero, 0x12($sp)
/* F3E8 8001EBE8 FA68010C */  jal        ClearImage
/* F3EC 8001EBEC 1600A2A7 */   sh        $v0, 0x16($sp)
/* F3F0 8001EBF0 1000A427 */  addiu      $a0, $sp, 0x10
/* F3F4 8001EBF4 21280000 */  addu       $a1, $zero, $zero
/* F3F8 8001EBF8 21300000 */  addu       $a2, $zero, $zero
/* F3FC 8001EBFC 21380000 */  addu       $a3, $zero, $zero
/* F400 8001EC00 E4000224 */  addiu      $v0, $zero, 0xE4
/* F404 8001EC04 FA68010C */  jal        ClearImage
/* F408 8001EC08 1200A2A7 */   sh        $v0, 0x12($sp)
/* F40C 8001EC0C 9968010C */  jal        DrawSync
/* F410 8001EC10 21200000 */   addu      $a0, $zero, $zero
/* F414 8001EC14 1800BF8F */  lw         $ra, 0x18($sp)
/* F418 8001EC18 2000BD27 */  addiu      $sp, $sp, 0x20
/* F41C 8001EC1C 0800E003 */  jr         $ra
/* F420 8001EC20 00000000 */   nop
.size func_8001EBAC, . - func_8001EBAC
