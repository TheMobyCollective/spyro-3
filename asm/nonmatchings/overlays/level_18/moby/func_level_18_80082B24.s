.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MobyUpdate_960_level_18
/* 4EB5854 80082B24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4EB5858 80082B28 1000B0AF */  sw         $s0, 0x10($sp)
/* 4EB585C 80082B2C 21808000 */  addu       $s0, $a0, $zero
/* 4EB5860 80082B30 1400BFAF */  sw         $ra, 0x14($sp)
/* 4EB5864 80082B34 0000068E */  lw         $a2, 0x0($s0)
/* 4EB5868 80082B38 0780023C */  lui        $v0, %hi(D_80070328 + 0x250)
/* 4EB586C 80082B3C 7805428C */  lw         $v0, %lo(D_80070328 + 0x250)($v0)
/* 4EB5870 80082B40 0780033C */  lui        $v1, %hi(D_80070328 + 0x250)
/* 4EB5874 80082B44 7805638C */  lw         $v1, %lo(D_80070328 + 0x250)($v1)
/* 4EB5878 80082B48 0000458C */  lw         $a1, 0x0($v0)
/* 4EB587C 80082B4C 58006010 */  beqz       $v1, .Llevel_18_80082CB0
/* 4EB5880 80082B50 00000000 */   nop
/* 4EB5884 80082B54 0000C48C */  lw         $a0, 0x0($a2)
/* 4EB5888 80082B58 00000000 */  nop
/* 4EB588C 80082B5C 05008010 */  beqz       $a0, .Llevel_18_80082B74
/* 4EB5890 80082B60 01000224 */   addiu     $v0, $zero, 0x1
/* 4EB5894 80082B64 17008210 */  beq        $a0, $v0, .Llevel_18_80082BC4
/* 4EB5898 80082B68 00000000 */   nop
/* 4EB589C 80082B6C 070B0208 */  j          .Llevel_18_80082C1C
/* 4EB58A0 80082B70 00000000 */   nop
.Llevel_18_80082B74:
/* 4EB58A4 80082B74 0780033C */  lui        $v1, %hi(D_8006E538)
/* 4EB58A8 80082B78 38E5638C */  lw         $v1, %lo(D_8006E538)($v1)
/* 4EB58AC 80082B7C 00000000 */  nop
/* 4EB58B0 80082B80 0C006230 */  andi       $v0, $v1, 0xC
/* 4EB58B4 80082B84 25004010 */  beqz       $v0, .Llevel_18_80082C1C
/* 4EB58B8 80082B88 60006230 */   andi      $v0, $v1, 0x60
/* 4EB58BC 80082B8C 23004010 */  beqz       $v0, .Llevel_18_80082C1C
/* 4EB58C0 80082B90 99000224 */   addiu     $v0, $zero, 0x99
/* 4EB58C4 80082B94 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 4EB58C8 80082B98 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 4EB58CC 80082B9C 00000000 */  nop
/* 4EB58D0 80082BA0 1E006210 */  beq        $v1, $v0, .Llevel_18_80082C1C
/* 4EB58D4 80082BA4 01000224 */   addiu     $v0, $zero, 0x1
/* 4EB58D8 80082BA8 0780033C */  lui        $v1, %hi(D_8006E344)
/* 4EB58DC 80082BAC 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 4EB58E0 80082BB0 00000000 */  nop
/* 4EB58E4 80082BB4 19006210 */  beq        $v1, $v0, .Llevel_18_80082C1C
/* 4EB58E8 80082BB8 00000000 */   nop
/* 4EB58EC 80082BBC 070B0208 */  j          .Llevel_18_80082C1C
/* 4EB58F0 80082BC0 0800C0AC */   sw        $zero, 0x8($a2)
.Llevel_18_80082BC4:
/* 4EB58F4 80082BC4 0780023C */  lui        $v0, %hi(D_8006E538)
/* 4EB58F8 80082BC8 38E5428C */  lw         $v0, %lo(D_8006E538)($v0)
/* 4EB58FC 80082BCC 00000000 */  nop
/* 4EB5900 80082BD0 40004230 */  andi       $v0, $v0, 0x40
/* 4EB5904 80082BD4 11004010 */  beqz       $v0, .Llevel_18_80082C1C
/* 4EB5908 80082BD8 99000224 */   addiu     $v0, $zero, 0x99
/* 4EB590C 80082BDC 0780033C */  lui        $v1, %hi(D_80070328 + 0x48)
/* 4EB5910 80082BE0 7003638C */  lw         $v1, %lo(D_80070328 + 0x48)($v1)
/* 4EB5914 80082BE4 00000000 */  nop
/* 4EB5918 80082BE8 0C006210 */  beq        $v1, $v0, .Llevel_18_80082C1C
/* 4EB591C 80082BEC 00000000 */   nop
/* 4EB5920 80082BF0 0780023C */  lui        $v0, %hi(D_8006E344)
/* 4EB5924 80082BF4 44E3428C */  lw         $v0, %lo(D_8006E344)($v0)
/* 4EB5928 80082BF8 00000000 */  nop
/* 4EB592C 80082BFC 07004410 */  beq        $v0, $a0, .Llevel_18_80082C1C
/* 4EB5930 80082C00 00000000 */   nop
/* 4EB5934 80082C04 1C00A28C */  lw         $v0, 0x1C($a1)
/* 4EB5938 80082C08 00000000 */  nop
/* 4EB593C 80082C0C 02004230 */  andi       $v0, $v0, 0x2
/* 4EB5940 80082C10 02004010 */  beqz       $v0, .Llevel_18_80082C1C
/* 4EB5944 80082C14 00000000 */   nop
/* 4EB5948 80082C18 0800C0AC */  sw         $zero, 0x8($a2)
.Llevel_18_80082C1C:
/* 4EB594C 80082C1C 0400C48C */  lw         $a0, 0x4($a2)
/* 4EB5950 80082C20 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 4EB5954 80082C24 18008210 */  beq        $a0, $v0, .Llevel_18_80082C88
/* 4EB5958 80082C28 80100400 */   sll       $v0, $a0, 2
/* 4EB595C 80082C2C 0780033C */  lui        $v1, %hi(D_8006C730)
/* 4EB5960 80082C30 30C7638C */  lw         $v1, %lo(D_8006C730)($v1)
/* 4EB5964 80082C34 0780073C */  lui        $a3, %hi(D_8006C550)
/* 4EB5968 80082C38 50C5E78C */  lw         $a3, %lo(D_8006C550)($a3)
/* 4EB596C 80082C3C 21104300 */  addu       $v0, $v0, $v1
/* 4EB5970 80082C40 0000448C */  lw         $a0, 0x0($v0)
.Llevel_18_80082C44:
/* 4EB5974 80082C44 00000000 */  nop
/* 4EB5978 80082C48 00008594 */  lhu        $a1, 0x0($a0)
/* 4EB597C 80082C4C 00000000 */  nop
/* 4EB5980 80082C50 FF7FA230 */  andi       $v0, $a1, 0x7FFF
/* 4EB5984 80082C54 40180200 */  sll        $v1, $v0, 1
/* 4EB5988 80082C58 21186200 */  addu       $v1, $v1, $v0
/* 4EB598C 80082C5C 80180300 */  sll        $v1, $v1, 2
/* 4EB5990 80082C60 23186200 */  subu       $v1, $v1, $v0
/* 4EB5994 80082C64 C0180300 */  sll        $v1, $v1, 3
/* 4EB5998 80082C68 21186700 */  addu       $v1, $v1, $a3
/* 4EB599C 80082C6C 48006290 */  lbu        $v0, 0x48($v1)
/* 4EB59A0 80082C70 00000000 */  nop
/* 4EB59A4 80082C74 80004230 */  andi       $v0, $v0, 0x80
/* 4EB59A8 80082C78 0D004010 */  beqz       $v0, .Llevel_18_80082CB0
/* 4EB59AC 80082C7C 00140500 */   sll       $v0, $a1, 16
/* 4EB59B0 80082C80 F0FF4104 */  bgez       $v0, .Llevel_18_80082C44
/* 4EB59B4 80082C84 02008424 */   addiu     $a0, $a0, 0x2
.Llevel_18_80082C88:
/* 4EB59B8 80082C88 0800C28C */  lw         $v0, 0x8($a2)
/* 4EB59BC 80082C8C 00000000 */  nop
/* 4EB59C0 80082C90 05004010 */  beqz       $v0, .Llevel_18_80082CA8
/* 4EB59C4 80082C94 00000000 */   nop
/* 4EB59C8 80082C98 0780043C */  lui        $a0, %hi(D_8006D088)
/* 4EB59CC 80082C9C 88D08424 */  addiu      $a0, $a0, %lo(D_8006D088)
/* 4EB59D0 80082CA0 D3ED000C */  jal        func_8003B74C
/* 4EB59D4 80082CA4 00000000 */   nop
.Llevel_18_80082CA8:
/* 4EB59D8 80082CA8 C656010C */  jal        func_80055B18
/* 4EB59DC 80082CAC 21200002 */   addu      $a0, $s0, $zero
.Llevel_18_80082CB0:
/* 4EB59E0 80082CB0 1400BF8F */  lw         $ra, 0x14($sp)
/* 4EB59E4 80082CB4 1000B08F */  lw         $s0, 0x10($sp)
/* 4EB59E8 80082CB8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 4EB59EC 80082CBC 0800E003 */  jr         $ra
/* 4EB59F0 80082CC0 00000000 */   nop
.size MobyUpdate_960_level_18, . - MobyUpdate_960_level_18
