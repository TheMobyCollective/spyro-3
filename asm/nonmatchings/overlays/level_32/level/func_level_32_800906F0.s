.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_level_32_800906F0
/* 6DF7C20 800906F0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6DF7C24 800906F4 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 6DF7C28 800906F8 21A88000 */  addu       $s5, $a0, $zero
/* 6DF7C2C 800906FC 2130A000 */  addu       $a2, $a1, $zero
/* 6DF7C30 80090700 3000B2AF */  sw         $s2, 0x30($sp)
/* 6DF7C34 80090704 21900000 */  addu       $s2, $zero, $zero
/* 6DF7C38 80090708 3800B4AF */  sw         $s4, 0x38($sp)
/* 6DF7C3C 8009070C 21A00000 */  addu       $s4, $zero, $zero
/* 6DF7C40 80090710 3400B3AF */  sw         $s3, 0x34($sp)
/* 6DF7C44 80090714 21980000 */  addu       $s3, $zero, $zero
/* 6DF7C48 80090718 4000BFAF */  sw         $ra, 0x40($sp)
/* 6DF7C4C 8009071C 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 6DF7C50 80090720 2800B0AF */  sw         $s0, 0x28($sp)
/* 6DF7C54 80090724 0780053C */  lui        $a1, %hi(D_level_32_80074B9C)
/* 6DF7C58 80090728 9C4BA524 */  addiu      $a1, $a1, %lo(D_level_32_80074B9C)
/* 6DF7C5C 8009072C 0300A288 */  lwl        $v0, 0x3($a1)
/* 6DF7C60 80090730 0000A298 */  lwr        $v0, 0x0($a1)
/* 6DF7C64 80090734 0400A380 */  lb         $v1, 0x4($a1)
/* 6DF7C68 80090738 0500A480 */  lb         $a0, 0x5($a1)
/* 6DF7C6C 8009073C 1B00A2AB */  swl        $v0, 0x1B($sp)
/* 6DF7C70 80090740 1800A2BB */  swr        $v0, 0x18($sp)
/* 6DF7C74 80090744 1C00A3A3 */  sb         $v1, 0x1C($sp)
/* 6DF7C78 80090748 1D00A4A3 */  sb         $a0, 0x1D($sp)
/* 6DF7C7C 8009074C 0600A280 */  lb         $v0, 0x6($a1)
/* 6DF7C80 80090750 00000000 */  nop
/* 6DF7C84 80090754 1E00A2A3 */  sb         $v0, 0x1E($sp)
/* 6DF7C88 80090758 3600A386 */  lh         $v1, 0x36($s5)
/* 6DF7C8C 8009075C 5C000224 */  addiu      $v0, $zero, 0x5C
/* 6DF7C90 80090760 18006214 */  bne        $v1, $v0, .Llevel_32_800907C4
/* 6DF7C94 80090764 1800B027 */   addiu     $s0, $sp, 0x18
/* 6DF7C98 80090768 0000A38E */  lw         $v1, 0x0($s5)
/* 6DF7C9C 8009076C 00000000 */  nop
/* 6DF7CA0 80090770 0C00628C */  lw         $v0, 0xC($v1)
/* 6DF7CA4 80090774 00000000 */  nop
/* 6DF7CA8 80090778 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DF7CAC 8009077C 4800A392 */  lbu        $v1, 0x48($s5)
/* 6DF7CB0 80090780 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF7CB4 80090784 05006214 */  bne        $v1, $v0, .Llevel_32_8009079C
/* 6DF7CB8 80090788 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF7CBC 8009078C 21908002 */  addu       $s2, $s4, $zero
/* 6DF7CC0 80090790 04001424 */  addiu      $s4, $zero, 0x4
/* 6DF7CC4 80090794 2D420208 */  j          .Llevel_32_800908B4
/* 6DF7CC8 80090798 10001324 */   addiu     $s3, $zero, 0x10
.Llevel_32_8009079C:
/* 6DF7CCC 8009079C 46006214 */  bne        $v1, $v0, .Llevel_32_800908B8
/* 6DF7CD0 800907A0 3F000224 */   addiu     $v0, $zero, 0x3F
/* 6DF7CD4 800907A4 05001224 */  addiu      $s2, $zero, 0x5
/* 6DF7CD8 800907A8 01001424 */  addiu      $s4, $zero, 0x1
/* 6DF7CDC 800907AC 20001324 */  addiu      $s3, $zero, 0x20
/* 6DF7CE0 800907B0 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF7CE4 800907B4 1000A2A3 */  sb         $v0, 0x10($sp)
/* 6DF7CE8 800907B8 1100A2A3 */  sb         $v0, 0x11($sp)
/* 6DF7CEC 800907BC 2D420208 */  j          .Llevel_32_800908B4
/* 6DF7CF0 800907C0 1200A2A3 */   sb        $v0, 0x12($sp)
.Llevel_32_800907C4:
/* 6DF7CF4 800907C4 0500C104 */  bgez       $a2, .Llevel_32_800907DC
/* 6DF7CF8 800907C8 21100602 */   addu      $v0, $s0, $a2
/* 6DF7CFC 800907CC 21200000 */  addu       $a0, $zero, $zero
/* 6DF7D00 800907D0 DBD8000C */  jal        func_8003636C
/* 6DF7D04 800907D4 06000524 */   addiu     $a1, $zero, 0x6
/* 6DF7D08 800907D8 21100202 */  addu       $v0, $s0, $v0
.Llevel_32_800907DC:
/* 6DF7D0C 800907DC 00005290 */  lbu        $s2, 0x0($v0)
/* 6DF7D10 800907E0 03001024 */  addiu      $s0, $zero, 0x3
/* 6DF7D14 800907E4 1A005012 */  beq        $s2, $s0, .Llevel_32_80090850
/* 6DF7D18 800907E8 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF7D1C 800907EC 05004216 */  bne        $s2, $v0, .Llevel_32_80090804
/* 6DF7D20 800907F0 FF000224 */   addiu     $v0, $zero, 0xFF
/* 6DF7D24 800907F4 1000A2A3 */  sb         $v0, 0x10($sp)
/* 6DF7D28 800907F8 1100A2A3 */  sb         $v0, 0x11($sp)
/* 6DF7D2C 800907FC 23420208 */  j          .Llevel_32_8009088C
/* 6DF7D30 80090800 40000224 */   addiu     $v0, $zero, 0x40
.Llevel_32_80090804:
/* 6DF7D34 80090804 9171010C */  jal        rand
/* 6DF7D38 80090808 00000000 */   nop
/* 6DF7D3C 8009080C 03004330 */  andi       $v1, $v0, 0x3
/* 6DF7D40 80090810 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF7D44 80090814 13006210 */  beq        $v1, $v0, .Llevel_32_80090864
/* 6DF7D48 80090818 02006228 */   slti      $v0, $v1, 0x2
/* 6DF7D4C 8009081C 05004010 */  beqz       $v0, .Llevel_32_80090834
/* 6DF7D50 80090820 00000000 */   nop
/* 6DF7D54 80090824 0B006010 */  beqz       $v1, .Llevel_32_80090854
/* 6DF7D58 80090828 FF000224 */   addiu     $v0, $zero, 0xFF
/* 6DF7D5C 8009082C 25420208 */  j          .Llevel_32_80090894
/* 6DF7D60 80090830 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_32_80090834:
/* 6DF7D64 80090834 02000224 */  addiu      $v0, $zero, 0x2
/* 6DF7D68 80090838 0D006210 */  beq        $v1, $v0, .Llevel_32_80090870
/* 6DF7D6C 8009083C 00000000 */   nop
/* 6DF7D70 80090840 10007010 */  beq        $v1, $s0, .Llevel_32_80090884
/* 6DF7D74 80090844 FF000224 */   addiu     $v0, $zero, 0xFF
/* 6DF7D78 80090848 25420208 */  j          .Llevel_32_80090894
/* 6DF7D7C 8009084C 02000224 */   addiu     $v0, $zero, 0x2
.Llevel_32_80090850:
/* 6DF7D80 80090850 FF000224 */  addiu      $v0, $zero, 0xFF
.Llevel_32_80090854:
/* 6DF7D84 80090854 1000A2A3 */  sb         $v0, 0x10($sp)
/* 6DF7D88 80090858 1100A0A3 */  sb         $zero, 0x11($sp)
/* 6DF7D8C 8009085C 24420208 */  j          .Llevel_32_80090890
/* 6DF7D90 80090860 1200A0A3 */   sb        $zero, 0x12($sp)
.Llevel_32_80090864:
/* 6DF7D94 80090864 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF7D98 80090868 1E420208 */  j          .Llevel_32_80090878
/* 6DF7D9C 8009086C 1000A2A3 */   sb        $v0, 0x10($sp)
.Llevel_32_80090870:
/* 6DF7DA0 80090870 FF000224 */  addiu      $v0, $zero, 0xFF
/* 6DF7DA4 80090874 1000A0A3 */  sb         $zero, 0x10($sp)
.Llevel_32_80090878:
/* 6DF7DA8 80090878 1100A2A3 */  sb         $v0, 0x11($sp)
/* 6DF7DAC 8009087C 24420208 */  j          .Llevel_32_80090890
/* 6DF7DB0 80090880 1200A0A3 */   sb        $zero, 0x12($sp)
.Llevel_32_80090884:
/* 6DF7DB4 80090884 1000A2A3 */  sb         $v0, 0x10($sp)
/* 6DF7DB8 80090888 1100A0A3 */  sb         $zero, 0x11($sp)
.Llevel_32_8009088C:
/* 6DF7DBC 8009088C 1200A2A3 */  sb         $v0, 0x12($sp)
.Llevel_32_80090890:
/* 6DF7DC0 80090890 02000224 */  addiu      $v0, $zero, 0x2
.Llevel_32_80090894:
/* 6DF7DC4 80090894 03004216 */  bne        $s2, $v0, .Llevel_32_800908A4
/* 6DF7DC8 80090898 10001424 */   addiu     $s4, $zero, 0x10
/* 6DF7DCC 8009089C 2D420208 */  j          .Llevel_32_800908B4
/* 6DF7DD0 800908A0 30001324 */   addiu     $s3, $zero, 0x30
.Llevel_32_800908A4:
/* 6DF7DD4 800908A4 03000224 */  addiu      $v0, $zero, 0x3
/* 6DF7DD8 800908A8 02004216 */  bne        $s2, $v0, .Llevel_32_800908B4
/* 6DF7DDC 800908AC 40001324 */   addiu     $s3, $zero, 0x40
/* 6DF7DE0 800908B0 58001324 */  addiu      $s3, $zero, 0x58
.Llevel_32_800908B4:
/* 6DF7DE4 800908B4 3F000224 */  addiu      $v0, $zero, 0x3F
.Llevel_32_800908B8:
/* 6DF7DE8 800908B8 1300A2A3 */  sb         $v0, 0x13($sp)
/* 6DF7DEC 800908BC 2A008012 */  beqz       $s4, .Llevel_32_80090968
/* 6DF7DF0 800908C0 21880000 */   addu      $s1, $zero, $zero
.Llevel_32_800908C4:
/* 6DF7DF4 800908C4 0780023C */  lui        $v0, %hi(D_8006C578)
/* 6DF7DF8 800908C8 78C5428C */  lw         $v0, %lo(D_8006C578)($v0)
/* 6DF7DFC 800908CC 0780033C */  lui        $v1, %hi(D_8006C574)
/* 6DF7E00 800908D0 74C5638C */  lw         $v1, %lo(D_8006C574)($v1)
/* 6DF7E04 800908D4 00000000 */  nop
/* 6DF7E08 800908D8 23104300 */  subu       $v0, $v0, $v1
/* 6DF7E0C 800908DC 15004228 */  slti       $v0, $v0, 0x15
/* 6DF7E10 800908E0 21004014 */  bnez       $v0, .Llevel_32_80090968
/* 6DF7E14 800908E4 5C000424 */   addiu     $a0, $zero, 0x5C
/* 6DF7E18 800908E8 0780023C */  lui        $v0, %hi(SpawnMoby)
/* 6DF7E1C 800908EC E042428C */  lw         $v0, %lo(SpawnMoby)($v0)
/* 6DF7E20 800908F0 00000000 */  nop
/* 6DF7E24 800908F4 09F84000 */  jalr       $v0
/* 6DF7E28 800908F8 2128A002 */   addu      $a1, $s5, $zero
/* 6DF7E2C 800908FC 21804000 */  addu       $s0, $v0, $zero
/* 6DF7E30 80090900 15000012 */  beqz       $s0, .Llevel_32_80090958
/* 6DF7E34 80090904 04000224 */   addiu     $v0, $zero, 0x4
/* 6DF7E38 80090908 06004216 */  bne        $s2, $v0, .Llevel_32_80090924
/* 6DF7E3C 8009090C 00000000 */   nop
/* 6DF7E40 80090910 9171010C */  jal        rand
/* 6DF7E44 80090914 480012A2 */   sb        $s2, 0x48($s0)
/* 6DF7E48 80090918 03004230 */  andi       $v0, $v0, 0x3
/* 6DF7E4C 8009091C 4A420208 */  j          .Llevel_32_80090928
/* 6DF7E50 80090920 490002A2 */   sb        $v0, 0x49($s0)
.Llevel_32_80090924:
/* 6DF7E54 80090924 480012A2 */  sb         $s2, 0x48($s0)
.Llevel_32_80090928:
/* 6DF7E58 80090928 01000224 */  addiu      $v0, $zero, 0x1
/* 6DF7E5C 8009092C 05004216 */  bne        $s2, $v0, .Llevel_32_80090944
/* 6DF7E60 80090930 00000000 */   nop
/* 6DF7E64 80090934 9171010C */  jal        rand
/* 6DF7E68 80090938 00000000 */   nop
/* 6DF7E6C 8009093C 0F004230 */  andi       $v0, $v0, 0xF
/* 6DF7E70 80090940 490002A2 */  sb         $v0, 0x49($s0)
.Llevel_32_80090944:
/* 6DF7E74 80090944 0000038E */  lw         $v1, 0x0($s0)
/* 6DF7E78 80090948 1000A28F */  lw         $v0, 0x10($sp)
/* 6DF7E7C 8009094C 00000000 */  nop
/* 6DF7E80 80090950 0C0062AC */  sw         $v0, 0xC($v1)
/* 6DF7E84 80090954 100073AC */  sw         $s3, 0x10($v1)
.Llevel_32_80090958:
/* 6DF7E88 80090958 01003126 */  addiu      $s1, $s1, 0x1
/* 6DF7E8C 8009095C 2A103402 */  slt        $v0, $s1, $s4
/* 6DF7E90 80090960 D8FF4014 */  bnez       $v0, .Llevel_32_800908C4
/* 6DF7E94 80090964 00000000 */   nop
.Llevel_32_80090968:
/* 6DF7E98 80090968 4000BF8F */  lw         $ra, 0x40($sp)
/* 6DF7E9C 8009096C 3C00B58F */  lw         $s5, 0x3C($sp)
/* 6DF7EA0 80090970 3800B48F */  lw         $s4, 0x38($sp)
/* 6DF7EA4 80090974 3400B38F */  lw         $s3, 0x34($sp)
/* 6DF7EA8 80090978 3000B28F */  lw         $s2, 0x30($sp)
/* 6DF7EAC 8009097C 2C00B18F */  lw         $s1, 0x2C($sp)
/* 6DF7EB0 80090980 2800B08F */  lw         $s0, 0x28($sp)
/* 6DF7EB4 80090984 4800BD27 */  addiu      $sp, $sp, 0x48
/* 6DF7EB8 80090988 0800E003 */  jr         $ra
/* 6DF7EBC 8009098C 00000000 */   nop
.size func_level_32_800906F0, . - func_level_32_800906F0
