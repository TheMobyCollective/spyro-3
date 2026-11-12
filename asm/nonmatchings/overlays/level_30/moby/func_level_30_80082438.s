.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_412_level_30
/* 678B168 80082438 0780023C */  lui        $v0, %hi(D_8006C770)
/* 678B16C 8008243C 70C7428C */  lw         $v0, %lo(D_8006C770)($v0)
/* 678B170 80082440 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 678B174 80082444 03004010 */  beqz       $v0, .Llevel_30_80082454
/* 678B178 80082448 1000BFAF */   sw        $ra, 0x10($sp)
/* 678B17C 8008244C C656010C */  jal        func_80055B18
/* 678B180 80082450 00000000 */   nop
.Llevel_30_80082454:
/* 678B184 80082454 1000BF8F */  lw         $ra, 0x10($sp)
/* 678B188 80082458 1800BD27 */  addiu      $sp, $sp, 0x18
/* 678B18C 8008245C 0800E003 */  jr         $ra
/* 678B190 80082460 00000000 */   nop
.size MobyUpdate_412_level_30, . - MobyUpdate_412_level_30
