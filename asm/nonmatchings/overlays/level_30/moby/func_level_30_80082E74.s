.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_722_level_30
/* 678BBA4 80082E74 48008390 */  lbu        $v1, 0x48($a0)
/* 678BBA8 80082E78 01000224 */  addiu      $v0, $zero, 0x1
/* 678BBAC 80082E7C 11006210 */  beq        $v1, $v0, .Llevel_30_80082EC4
/* 678BBB0 80082E80 080080AC */   sw        $zero, 0x8($a0)
/* 678BBB4 80082E84 02006228 */  slti       $v0, $v1, 0x2
/* 678BBB8 80082E88 05004010 */  beqz       $v0, .Llevel_30_80082EA0
/* 678BBBC 80082E8C 00000000 */   nop
/* 678BBC0 80082E90 08006010 */  beqz       $v1, .Llevel_30_80082EB4
/* 678BBC4 80082E94 00000000 */   nop
/* 678BBC8 80082E98 BB0B0208 */  j          .Llevel_30_80082EEC
/* 678BBCC 80082E9C 00000000 */   nop
.Llevel_30_80082EA0:
/* 678BBD0 80082EA0 02000224 */  addiu      $v0, $zero, 0x2
/* 678BBD4 80082EA4 0C006210 */  beq        $v1, $v0, .Llevel_30_80082ED8
/* 678BBD8 80082EA8 FF000224 */   addiu     $v0, $zero, 0xFF
/* 678BBDC 80082EAC BB0B0208 */  j          .Llevel_30_80082EEC
/* 678BBE0 80082EB0 00000000 */   nop
.Llevel_30_80082EB4:
/* 678BBE4 80082EB4 410080A0 */  sb         $zero, 0x41($a0)
/* 678BBE8 80082EB8 4C0080A0 */  sb         $zero, 0x4C($a0)
/* 678BBEC 80082EBC BB0B0208 */  j          .Llevel_30_80082EEC
/* 678BBF0 80082EC0 4D0080A0 */   sb        $zero, 0x4D($a0)
.Llevel_30_80082EC4:
/* 678BBF4 80082EC4 FF000224 */  addiu      $v0, $zero, 0xFF
/* 678BBF8 80082EC8 540082A0 */  sb         $v0, 0x54($a0)
/* 678BBFC 80082ECC 38000224 */  addiu      $v0, $zero, 0x38
/* 678BC00 80082ED0 B90B0208 */  j          .Llevel_30_80082EE4
/* 678BC04 80082ED4 550080A0 */   sb        $zero, 0x55($a0)
.Llevel_30_80082ED8:
/* 678BC08 80082ED8 550082A0 */  sb         $v0, 0x55($a0)
/* 678BC0C 80082EDC 38000224 */  addiu      $v0, $zero, 0x38
/* 678BC10 80082EE0 540080A0 */  sb         $zero, 0x54($a0)
.Llevel_30_80082EE4:
/* 678BC14 80082EE4 560080A0 */  sb         $zero, 0x56($a0)
/* 678BC18 80082EE8 570082A0 */  sb         $v0, 0x57($a0)
.Llevel_30_80082EEC:
/* 678BC1C 80082EEC 0800E003 */  jr         $ra
/* 678BC20 80082EF0 00000000 */   nop
.size MobyUpdate_722_level_30, . - MobyUpdate_722_level_30
