.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C428
/* 2CC28 8003C428 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 2CC2C 8003C42C 5000B0AF */  sw         $s0, 0x50($sp)
/* 2CC30 8003C430 21808000 */  addu       $s0, $a0, $zero
/* 2CC34 8003C434 01000424 */  addiu      $a0, $zero, 0x1
/* 2CC38 8003C438 04100402 */  sllv       $v0, $a0, $s0
/* 2CC3C 8003C43C 1000A2AF */  sw         $v0, 0x10($sp)
/* 2CC40 8003C440 40101000 */  sll        $v0, $s0, 1
/* 2CC44 8003C444 21105000 */  addu       $v0, $v0, $s0
/* 2CC48 8003C448 80100200 */  sll        $v0, $v0, 2
/* 2CC4C 8003C44C 23105000 */  subu       $v0, $v0, $s0
/* 2CC50 8003C450 80280200 */  sll        $a1, $v0, 2
/* 2CC54 8003C454 5400BFAF */  sw         $ra, 0x54($sp)
/* 2CC58 8003C458 1400A0AF */  sw         $zero, 0x14($sp)
/* 2CC5C 8003C45C 0780013C */  lui        $at, %hi(D_8006FCEC)
/* 2CC60 8003C460 21082500 */  addu       $at, $at, $a1
/* 2CC64 8003C464 ECFC268C */  lw         $a2, %lo(D_8006FCEC)($at)
/* 2CC68 8003C468 0780033C */  lui        $v1, %hi(D_8006E344)
/* 2CC6C 8003C46C 44E3638C */  lw         $v1, %lo(D_8006E344)($v1)
/* 2CC70 8003C470 03000224 */  addiu      $v0, $zero, 0x3
/* 2CC74 8003C474 1400A2AF */  sw         $v0, 0x14($sp)
/* 2CC78 8003C478 2110C000 */  addu       $v0, $a2, $zero
/* 2CC7C 8003C47C 1A00A2A7 */  sh         $v0, 0x1A($sp)
/* 2CC80 8003C480 0C006414 */  bne        $v1, $a0, .L8003C4B4
/* 2CC84 8003C484 1800A2A7 */   sh        $v0, 0x18($sp)
/* 2CC88 8003C488 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CC8C 8003C48C 21082500 */  addu       $at, $at, $a1
/* 2CC90 8003C490 E6FC2290 */  lbu        $v0, %lo(D_8006FCE6)($at)
/* 2CC94 8003C494 00000000 */  nop
/* 2CC98 8003C498 80004230 */  andi       $v0, $v0, 0x80
/* 2CC9C 8003C49C 06004014 */  bnez       $v0, .L8003C4B8
/* 2CCA0 8003C4A0 40101000 */   sll       $v0, $s0, 1
/* 2CCA4 8003C4A4 00140600 */  sll        $v0, $a2, 16
/* 2CCA8 8003C4A8 83140200 */  sra        $v0, $v0, 18
/* 2CCAC 8003C4AC 1800A2A7 */  sh         $v0, 0x18($sp)
/* 2CCB0 8003C4B0 1A00A2A7 */  sh         $v0, 0x1A($sp)
.L8003C4B4:
/* 2CCB4 8003C4B4 40101000 */  sll        $v0, $s0, 1
.L8003C4B8:
/* 2CCB8 8003C4B8 21105000 */  addu       $v0, $v0, $s0
/* 2CCBC 8003C4BC 80100200 */  sll        $v0, $v0, 2
/* 2CCC0 8003C4C0 23105000 */  subu       $v0, $v0, $s0
/* 2CCC4 8003C4C4 80180200 */  sll        $v1, $v0, 2
/* 2CCC8 8003C4C8 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CCCC 8003C4CC 21082300 */  addu       $at, $at, $v1
/* 2CCD0 8003C4D0 E6FC2490 */  lbu        $a0, %lo(D_8006FCE6)($at)
/* 2CCD4 8003C4D4 00000000 */  nop
/* 2CCD8 8003C4D8 01008230 */  andi       $v0, $a0, 0x1
/* 2CCDC 8003C4DC 21004014 */  bnez       $v0, .L8003C564
/* 2CCE0 8003C4E0 40101000 */   sll       $v0, $s0, 1
/* 2CCE4 8003C4E4 0780013C */  lui        $at, %hi(D_8006FD0C)
/* 2CCE8 8003C4E8 21082300 */  addu       $at, $at, $v1
/* 2CCEC 8003C4EC 0CFD228C */  lw         $v0, %lo(D_8006FD0C)($at)
/* 2CCF0 8003C4F0 00000000 */  nop
/* 2CCF4 8003C4F4 1A004010 */  beqz       $v0, .L8003C560
/* 2CCF8 8003C4F8 00000000 */   nop
/* 2CCFC 8003C4FC 48004290 */  lbu        $v0, 0x48($v0)
/* 2CD00 8003C500 00000000 */  nop
/* 2CD04 8003C504 80004230 */  andi       $v0, $v0, 0x80
/* 2CD08 8003C508 10004010 */  beqz       $v0, .L8003C54C
/* 2CD0C 8003C50C 00000000 */   nop
/* 2CD10 8003C510 0780013C */  lui        $at, %hi(D_8006FCE7)
/* 2CD14 8003C514 21082300 */  addu       $at, $at, $v1
/* 2CD18 8003C518 E7FC2290 */  lbu        $v0, %lo(D_8006FCE7)($at)
/* 2CD1C 8003C51C 00000000 */  nop
/* 2CD20 8003C520 05004010 */  beqz       $v0, .L8003C538
/* 2CD24 8003C524 01008234 */   ori       $v0, $a0, 0x1
/* 2CD28 8003C528 9CEF000C */  jal        func_8003BE70
/* 2CD2C 8003C52C 21200002 */   addu      $a0, $s0, $zero
/* 2CD30 8003C530 E2F10008 */  j          .L8003C788
/* 2CD34 8003C534 00000000 */   nop
.L8003C538:
/* 2CD38 8003C538 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CD3C 8003C53C 21082300 */  addu       $at, $at, $v1
/* 2CD40 8003C540 E6FC22A0 */  sb         $v0, %lo(D_8006FCE6)($at)
/* 2CD44 8003C544 59F10008 */  j          .L8003C564
/* 2CD48 8003C548 40101000 */   sll       $v0, $s0, 1
.L8003C54C:
/* 2CD4C 8003C54C 0780043C */  lui        $a0, %hi(D_8006FCE4)
/* 2CD50 8003C550 E4FC8424 */  addiu      $a0, $a0, %lo(D_8006FCE4)
/* 2CD54 8003C554 21206400 */  addu       $a0, $v1, $a0
/* 2CD58 8003C558 E7F1000C */  jal        func_8003C79C
/* 2CD5C 8003C55C 1000A527 */   addiu     $a1, $sp, 0x10
.L8003C560:
/* 2CD60 8003C560 40101000 */  sll        $v0, $s0, 1
.L8003C564:
/* 2CD64 8003C564 21105000 */  addu       $v0, $v0, $s0
/* 2CD68 8003C568 80100200 */  sll        $v0, $v0, 2
/* 2CD6C 8003C56C 23105000 */  subu       $v0, $v0, $s0
/* 2CD70 8003C570 80180200 */  sll        $v1, $v0, 2
/* 2CD74 8003C574 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CD78 8003C578 21082300 */  addu       $at, $at, $v1
/* 2CD7C 8003C57C E6FC2290 */  lbu        $v0, %lo(D_8006FCE6)($at)
/* 2CD80 8003C580 00000000 */  nop
/* 2CD84 8003C584 08004230 */  andi       $v0, $v0, 0x8
/* 2CD88 8003C588 12004010 */  beqz       $v0, .L8003C5D4
/* 2CD8C 8003C58C 00000000 */   nop
/* 2CD90 8003C590 1400A28F */  lw         $v0, 0x14($sp)
/* 2CD94 8003C594 00000000 */  nop
/* 2CD98 8003C598 10004234 */  ori        $v0, $v0, 0x10
/* 2CD9C 8003C59C 1400A2AF */  sw         $v0, 0x14($sp)
/* 2CDA0 8003C5A0 0780013C */  lui        $at, %hi(D_8006FCFC)
/* 2CDA4 8003C5A4 21082300 */  addu       $at, $at, $v1
/* 2CDA8 8003C5A8 FCFC228C */  lw         $v0, %lo(D_8006FCFC)($at)
/* 2CDAC 8003C5AC 00000000 */  nop
/* 2CDB0 8003C5B0 2400A2A7 */  sh         $v0, 0x24($sp)
/* 2CDB4 8003C5B4 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CDB8 8003C5B8 21082300 */  addu       $at, $at, $v1
/* 2CDBC 8003C5BC E6FC2290 */  lbu        $v0, %lo(D_8006FCE6)($at)
/* 2CDC0 8003C5C0 00000000 */  nop
/* 2CDC4 8003C5C4 F7004230 */  andi       $v0, $v0, 0xF7
/* 2CDC8 8003C5C8 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CDCC 8003C5CC 21082300 */  addu       $at, $at, $v1
/* 2CDD0 8003C5D0 E6FC22A0 */  sb         $v0, %lo(D_8006FCE6)($at)
.L8003C5D4:
/* 2CDD4 8003C5D4 0780013C */  lui        $at, %hi(D_8006FD0C)
/* 2CDD8 8003C5D8 21082300 */  addu       $at, $at, $v1
/* 2CDDC 8003C5DC 0CFD248C */  lw         $a0, %lo(D_8006FD0C)($at)
/* 2CDE0 8003C5E0 00000000 */  nop
/* 2CDE4 8003C5E4 13008010 */  beqz       $a0, .L8003C634
/* 2CDE8 8003C5E8 40101000 */   sll       $v0, $s0, 1
/* 2CDEC 8003C5EC 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CDF0 8003C5F0 21082300 */  addu       $at, $at, $v1
/* 2CDF4 8003C5F4 E6FC2290 */  lbu        $v0, %lo(D_8006FCE6)($at)
/* 2CDF8 8003C5F8 00000000 */  nop
/* 2CDFC 8003C5FC 21004230 */  andi       $v0, $v0, 0x21
/* 2CE00 8003C600 0C004014 */  bnez       $v0, .L8003C634
/* 2CE04 8003C604 40101000 */   sll       $v0, $s0, 1
/* 2CE08 8003C608 48008290 */  lbu        $v0, 0x48($a0)
/* 2CE0C 8003C60C 00000000 */  nop
/* 2CE10 8003C610 80004230 */  andi       $v0, $v0, 0x80
/* 2CE14 8003C614 07004014 */  bnez       $v0, .L8003C634
/* 2CE18 8003C618 40101000 */   sll       $v0, $s0, 1
/* 2CE1C 8003C61C 0780043C */  lui        $a0, %hi(D_8006FCE4)
/* 2CE20 8003C620 E4FC8424 */  addiu      $a0, $a0, %lo(D_8006FCE4)
/* 2CE24 8003C624 21206400 */  addu       $a0, $v1, $a0
/* 2CE28 8003C628 C0F2000C */  jal        func_8003CB00
/* 2CE2C 8003C62C 1000A527 */   addiu     $a1, $sp, 0x10
/* 2CE30 8003C630 40101000 */  sll        $v0, $s0, 1
.L8003C634:
/* 2CE34 8003C634 21105000 */  addu       $v0, $v0, $s0
/* 2CE38 8003C638 80100200 */  sll        $v0, $v0, 2
/* 2CE3C 8003C63C 23105000 */  subu       $v0, $v0, $s0
/* 2CE40 8003C640 80200200 */  sll        $a0, $v0, 2
/* 2CE44 8003C644 0780013C */  lui        $at, %hi(D_8006FCE4)
/* 2CE48 8003C648 21082400 */  addu       $at, $at, $a0
/* 2CE4C 8003C64C E4FC2390 */  lbu        $v1, %lo(D_8006FCE4)($at)
/* 2CE50 8003C650 01000224 */  addiu      $v0, $zero, 0x1
/* 2CE54 8003C654 17006214 */  bne        $v1, $v0, .L8003C6B4
/* 2CE58 8003C658 00000000 */   nop
/* 2CE5C 8003C65C 1400A28F */  lw         $v0, 0x14($sp)
/* 2CE60 8003C660 00000000 */  nop
/* 2CE64 8003C664 93004234 */  ori        $v0, $v0, 0x93
/* 2CE68 8003C668 1400A2AF */  sw         $v0, 0x14($sp)
/* 2CE6C 8003C66C 0780013C */  lui        $at, %hi(D_8006FCE5)
/* 2CE70 8003C670 21082400 */  addu       $at, $at, $a0
/* 2CE74 8003C674 E5FC2390 */  lbu        $v1, %lo(D_8006FCE5)($at)
/* 2CE78 8003C678 00000000 */  nop
/* 2CE7C 8003C67C 80100300 */  sll        $v0, $v1, 2
/* 2CE80 8003C680 21104300 */  addu       $v0, $v0, $v1
/* 2CE84 8003C684 0780033C */  lui        $v1, %hi(D_8006C6A0)
/* 2CE88 8003C688 A0C6638C */  lw         $v1, %lo(D_8006C6A0)($v1)
/* 2CE8C 8003C68C 80100200 */  sll        $v0, $v0, 2
/* 2CE90 8003C690 21104300 */  addu       $v0, $v0, $v1
/* 2CE94 8003C694 0000428C */  lw         $v0, 0x0($v0)
/* 2CE98 8003C698 00000000 */  nop
/* 2CE9C 8003C69C 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 2CEA0 8003C6A0 0780013C */  lui        $at, %hi(D_8006FCFC)
/* 2CEA4 8003C6A4 21082400 */  addu       $at, $at, $a0
/* 2CEA8 8003C6A8 FCFC228C */  lw         $v0, %lo(D_8006FCFC)($at)
/* 2CEAC 8003C6AC 00000000 */  nop
/* 2CEB0 8003C6B0 2400A2A7 */  sh         $v0, 0x24($sp)
.L8003C6B4:
/* 2CEB4 8003C6B4 0780013C */  lui        $at, %hi(D_8006FCE6)
/* 2CEB8 8003C6B8 21082400 */  addu       $at, $at, $a0
/* 2CEBC 8003C6BC E6FC2290 */  lbu        $v0, %lo(D_8006FCE6)($at)
/* 2CEC0 8003C6C0 00000000 */  nop
/* 2CEC4 8003C6C4 10004230 */  andi       $v0, $v0, 0x10
/* 2CEC8 8003C6C8 29004010 */  beqz       $v0, .L8003C770
/* 2CECC 8003C6CC 00000000 */   nop
/* 2CED0 8003C6D0 1400A28F */  lw         $v0, 0x14($sp)
/* 2CED4 8003C6D4 1800A387 */  lh         $v1, 0x18($sp)
/* 2CED8 8003C6D8 03004234 */  ori        $v0, $v0, 0x3
/* 2CEDC 8003C6DC 1400A2AF */  sw         $v0, 0x14($sp)
/* 2CEE0 8003C6E0 0780013C */  lui        $at, %hi(D_8006FCF0)
/* 2CEE4 8003C6E4 21082400 */  addu       $at, $at, $a0
/* 2CEE8 8003C6E8 F0FC228C */  lw         $v0, %lo(D_8006FCF0)($at)
/* 2CEEC 8003C6EC 00000000 */  nop
/* 2CEF0 8003C6F0 18006200 */  mult       $v1, $v0
/* 2CEF4 8003C6F4 12380000 */  mflo       $a3
/* 2CEF8 8003C6F8 031B0700 */  sra        $v1, $a3, 12
/* 2CEFC 8003C6FC 03006104 */  bgez       $v1, .L8003C70C
/* 2CF00 8003C700 00406228 */   slti      $v0, $v1, 0x4000
/* 2CF04 8003C704 21180000 */  addu       $v1, $zero, $zero
/* 2CF08 8003C708 00406228 */  slti       $v0, $v1, 0x4000
.L8003C70C:
/* 2CF0C 8003C70C 02004014 */  bnez       $v0, .L8003C718
/* 2CF10 8003C710 00000000 */   nop
/* 2CF14 8003C714 FF3F0324 */  addiu      $v1, $zero, 0x3FFF
.L8003C718:
/* 2CF18 8003C718 0780023C */  lui        $v0, %hi(D_8006FCE4)
/* 2CF1C 8003C71C E4FC4224 */  addiu      $v0, $v0, %lo(D_8006FCE4)
/* 2CF20 8003C720 21288200 */  addu       $a1, $a0, $v0
/* 2CF24 8003C724 1400A3AC */  sw         $v1, 0x14($a1)
/* 2CF28 8003C728 1800A3A7 */  sh         $v1, 0x18($sp)
/* 2CF2C 8003C72C 1A00A387 */  lh         $v1, 0x1A($sp)
/* 2CF30 8003C730 0780013C */  lui        $at, %hi(D_8006FCF0)
/* 2CF34 8003C734 21082400 */  addu       $at, $at, $a0
/* 2CF38 8003C738 F0FC228C */  lw         $v0, %lo(D_8006FCF0)($at)
/* 2CF3C 8003C73C 00000000 */  nop
/* 2CF40 8003C740 18006200 */  mult       $v1, $v0
/* 2CF44 8003C744 12380000 */  mflo       $a3
/* 2CF48 8003C748 031B0700 */  sra        $v1, $a3, 12
/* 2CF4C 8003C74C 03006104 */  bgez       $v1, .L8003C75C
/* 2CF50 8003C750 00406228 */   slti      $v0, $v1, 0x4000
/* 2CF54 8003C754 21180000 */  addu       $v1, $zero, $zero
/* 2CF58 8003C758 00406228 */  slti       $v0, $v1, 0x4000
.L8003C75C:
/* 2CF5C 8003C75C 02004014 */  bnez       $v0, .L8003C768
/* 2CF60 8003C760 00000000 */   nop
/* 2CF64 8003C764 FF3F0324 */  addiu      $v1, $zero, 0x3FFF
.L8003C768:
/* 2CF68 8003C768 1000A3AC */  sw         $v1, 0x10($a1)
/* 2CF6C 8003C76C 1A00A3A7 */  sh         $v1, 0x1A($sp)
.L8003C770:
/* 2CF70 8003C770 1400A28F */  lw         $v0, 0x14($sp)
/* 2CF74 8003C774 00000000 */  nop
/* 2CF78 8003C778 03004010 */  beqz       $v0, .L8003C788
/* 2CF7C 8003C77C 00000000 */   nop
/* 2CF80 8003C780 077B010C */  jal        SpuSetVoiceAttr
/* 2CF84 8003C784 1000A427 */   addiu     $a0, $sp, 0x10
.L8003C788:
/* 2CF88 8003C788 5400BF8F */  lw         $ra, 0x54($sp)
/* 2CF8C 8003C78C 5000B08F */  lw         $s0, 0x50($sp)
/* 2CF90 8003C790 5800BD27 */  addiu      $sp, $sp, 0x58
/* 2CF94 8003C794 0800E003 */  jr         $ra
/* 2CF98 8003C798 00000000 */   nop
.size func_8003C428, . - func_8003C428
