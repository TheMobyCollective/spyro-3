.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80020344
/* 10B44 80020344 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 10B48 80020348 1800B2AF */  sw         $s2, 0x18($sp)
/* 10B4C 8002034C 21908000 */  addu       $s2, $a0, $zero
/* 10B50 80020350 1000B0AF */  sw         $s0, 0x10($sp)
/* 10B54 80020354 2180A000 */  addu       $s0, $a1, $zero
/* 10B58 80020358 1400B1AF */  sw         $s1, 0x14($sp)
/* 10B5C 8002035C 2188C000 */  addu       $s1, $a2, $zero
/* 10B60 80020360 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 10B64 80020364 2000BFAF */  sw         $ra, 0x20($sp)
/* 10B68 80020368 ECBA000C */  jal        func_8002EBB0
/* 10B6C 8002036C 2198E000 */   addu      $s3, $a3, $zero
/* 10B70 80020370 43100200 */  sra        $v0, $v0, 1
/* 10B74 80020374 23200202 */  subu       $a0, $s0, $v0
/* 10B78 80020378 F8FF8424 */  addiu      $a0, $a0, -0x8
/* 10B7C 8002037C 21100202 */  addu       $v0, $s0, $v0
/* 10B80 80020380 08004524 */  addiu      $a1, $v0, 0x8
/* 10B84 80020384 FEFF2626 */  addiu      $a2, $s1, -0x2
/* 10B88 80020388 927F000C */  jal        func_8001FE48
/* 10B8C 8002038C 0B002726 */   addiu     $a3, $s1, 0xB
/* 10B90 80020390 21204002 */  addu       $a0, $s2, $zero
/* 10B94 80020394 21280002 */  addu       $a1, $s0, $zero
/* 10B98 80020398 21302002 */  addu       $a2, $s1, $zero
/* 10B9C 8002039C B780000C */  jal        DrawStringCentered
/* 10BA0 800203A0 21386002 */   addu      $a3, $s3, $zero
/* 10BA4 800203A4 2000BF8F */  lw         $ra, 0x20($sp)
/* 10BA8 800203A8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 10BAC 800203AC 1800B28F */  lw         $s2, 0x18($sp)
/* 10BB0 800203B0 1400B18F */  lw         $s1, 0x14($sp)
/* 10BB4 800203B4 1000B08F */  lw         $s0, 0x10($sp)
/* 10BB8 800203B8 2800BD27 */  addiu      $sp, $sp, 0x28
/* 10BBC 800203BC 0800E003 */  jr         $ra
/* 10BC0 800203C0 00000000 */   nop
.size func_80020344, . - func_80020344
