.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002A9D0
/* 1B1D0 8002A9D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1B1D4 8002A9D4 0780043C */  lui        $a0, %hi(D_80071438)
/* 1B1D8 8002A9D8 38148424 */  addiu      $a0, $a0, %lo(D_80071438)
/* 1B1DC 8002A9DC 0780053C */  lui        $a1, %hi(D_800718DC)
/* 1B1E0 8002A9E0 DC18A524 */  addiu      $a1, $a1, %lo(D_800718DC)
/* 1B1E4 8002A9E4 1000BFAF */  sw         $ra, 0x10($sp)
/* 1B1E8 8002A9E8 3F73010C */  jal        func_8005CCFC
/* 1B1EC 8002A9EC 00000000 */   nop
/* 1B1F0 8002A9F0 1B77010C */  jal        func_8005DC6C
/* 1B1F4 8002A9F4 00000000 */   nop
/* 1B1F8 8002A9F8 7BEA000C */  jal        func_8003A9EC
/* 1B1FC 8002A9FC 00000000 */   nop
/* 1B200 8002AA00 0480043C */  lui        $a0, %hi(func_8003A40C)
/* 1B204 8002AA04 0CA48424 */  addiu      $a0, $a0, %lo(func_8003A40C)
/* 1B208 8002AA08 01000224 */  addiu      $v0, $zero, 0x1
/* 1B20C 8002AA0C 0780013C */  lui        $at, %hi(D_8006E50C)
/* 1B210 8002AA10 0CE522A0 */  sb         $v0, %lo(D_8006E50C)($at)
/* 1B214 8002AA14 0780013C */  lui        $at, %hi(D_8007201C)
/* 1B218 8002AA18 1C2022A0 */  sb         $v0, %lo(D_8007201C)($at)
/* 1B21C 8002AA1C C571010C */  jal        VSyncCallback
/* 1B220 8002AA20 00000000 */   nop
/* 1B224 8002AA24 1000BF8F */  lw         $ra, 0x10($sp)
/* 1B228 8002AA28 1800BD27 */  addiu      $sp, $sp, 0x18
/* 1B22C 8002AA2C 0800E003 */  jr         $ra
/* 1B230 8002AA30 00000000 */   nop
.size func_8002A9D0, . - func_8002A9D0
