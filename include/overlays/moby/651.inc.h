#include "common.h"
#include "ovl_header.h"
#include "stdutil.h"
#include "moby_props.h"
#include "savepoint.h"
#include "camera.h"
#include "mobyutil.h"
#include "spu.h"
#include "spyro.h"

// TODO - apparently asm still to remove

// Collision - unclear types
extern int func_8001A358(Vector3D*, int);

// Update
extern void func_80054F94(int, Moby*); // unclear types

// UpdateMobys
extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision

// Warp
extern void WarpToLevel(int, int); // fWarpToLevel

// Psyq
extern int rand(); // rand

// .data 80064f9c
extern Sparx sparx;
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern unsigned char lvlIdToIndex[0x48]; // 80066fcc

// .sdata 8006c3b0
extern int D_8006C528;
extern int D_8006C598;
extern int currentLevel; // 8006C5BC
extern int D_8006C73C;
extern unsigned char D_8006C7B4; // EggsCollectedSinceEnteredBitmask

// .bss 8006c7f8
extern Game game; // 8006E344
extern Unk_80070104 D_80070104;

extern unsigned char eggsCollectedArray[40]; // 80070300 EggsCollectedBitmaskArray
extern ProgressFlags progressFlags; // 80071570

/**
 * MobyUpdate_651() - MATCHING
 * https://decomp.me/scratch/YdBst
 */

void MOBYUPDATE(651) (Moby* arg0) {
    Vector3D sp10;
    Vector3D sp20;
    Vector3D sp30;
    Vector3D sp40;
    Vector3D sp50;
    Vector3D sp60;
    int temp_v1_3;
    MobyTag_651* mobyTag;

    mobyTag = (MobyTag_651*)arg0->mobyTag;
    switch (arg0->state) {
        
    case 0:
        switch (arg0->substate) {
        case 0:
            if (progressFlags.lvl30_RocketUsable || ((currentLevel != 0x14) && !progressFlags.lvl20_WhirligigUsable)) {
                func_80055B18(arg0);
                return;
            }
            else {
                arg0->position.z += 0x1000;
                spyro.unk17a = 0x10018000;
                spyro.unk20[1] = 0;
                func_8004F178(&spyro.unk19, &arg0->position);
                spyro.unk19.z += spyro.unk4a + 0x133;
                spyro.unk18.roll = arg0->angle.roll;
                spyro.unk18.pitch = arg0->angle.pitch;
                spyro.unk18.yaw = arg0->angle.yaw;
                arg0->substate = 1;
                func_8003B7B4(&arg0->substate, 1, &savedData);
                func_8003B7B4(&arg0->substate, 1, &unsavedData);
                arg0->state = 7;
                if ((D_8006C73C != 0) && (currentLevel != D_8006C73C) && ((temp_v1_3 = D_8006C73C % 10, (temp_v1_3 == 0)) || ((temp_v1_3 == 7) && (D_8006C73C < 0x3C))) && (arg0->mobyClass == D_8006C528)) {
                    arg0->position.z += 0xC00;
                    func_800136F0(&camera.unk170, &mobyTag->unk8->m_Nodes[0].m_Position, &arg0->position);
                    camera.unk170.yaw = 0;
                    camera.unk170.pitch = 0;
                    spyro.unk17a = 0x10018000;
                    spyro.unk20[1] = 0;
                    camera.unk170.pos.azimuth -= spyro.rotation.yaw;
                    func_8004F178(&spyro.unk19, &arg0->position);
                    spyro.unk19.z += spyro.unk4a + 0x133;
                    spyro.unk18.roll = arg0->angle.roll;
                    spyro.unk18.pitch = arg0->angle.pitch;
                    spyro.unk18.yaw = arg0->angle.yaw;
                    func_80012BA8(&camera.unk170);
                    func_8004F178(&camera.unk184, &camera.unk60);
                    arg0->state = 7;
                } else if (arg0->state == 0) {
                    arg0->state = 1;
                }
            }
            break;
            
        default:
            break;
            
        case 1:
            arg0->position.z += 0xF00;
            func_80055D24(arg0, 2);
            mobyTag->unkC = 0;
            arg0->state = 8;
            break;
        }
        break;
        
    case 1:
        switch (arg0->substate) {
        case 0:
            sp10.x = (D_80065920[arg0->angle.yaw] * 3) >> 3;
            sp10.y = (D_800658A0[arg0->angle.yaw] * 3) >> 3;
            sp10.z = 0;
            func_8004F194(&sp10, &sp10, &arg0->position);
            if (unk_ovlheader_80074330(&sp10, arg0->angle.yaw + 0x80, 0) != 0) {
                spyro.unk17c = 0;
                func_8004F178(&sp10, &arg0->position);
                sp10.z += 0x280;
                unk_ovlheader_80074334(&sp10);
                arg0->substate = 1;
            }
            break;
        case 1:
            func_8004F178(&sp10, &arg0->position);
            sp10.z += 0x280;
            unk_ovlheader_80074334(&sp10);
            break;
        }
        if (spyro.m_StoodOnMoby == arg0) {
            arg0->state = 2;
        case 2:
            if (spyro.m_StoodOnMoby != arg0) {
                camera.unk168 = 0;
                arg0->state = 1;
            } else {
                if (unk_ovlheader_80074330(&arg0->position, arg0->angle.yaw, 0) != 0) {
                    D_80070104.loadLevel = ((currentLevel / 10) + 1) * 0xA;
                    arg0->state = 4U;
                }
                func_8004F178(&camera.unk184, &arg0->position);
                func_800136F0(&camera.unk170, &mobyTag->unk8->m_Nodes[0].m_Position, &arg0->position);
                camera.unk170.yaw = 0;
                camera.unk170.pitch = 0;
                camera.unk168 = 0x11;
            }
        }
        break;
        
    case 3:
        camera.unk168 = 0;
        if (D_80070104.loadLevel != 0) {
            mobyTag->unkC = 0x78;
            arg0->state = 4;
        } else {
            arg0->state = 5;
        }
        break;
        
    case 4:
        func_80034F40(arg0, 1);
        arg0->position.z = (int) (arg0->position.z + 0x40);
        spyro.unk17a = 0x10008000;
        spyro.unk20[1] = 0;
        func_8004F178(&spyro.unk19, &arg0->position);
        spyro.unk19.z += spyro.unk4a + 0x133;
        spyro.unk18.roll = spyro.bodyRotation.roll;
        spyro.unk18.pitch = spyro.bodyRotation.pitch;
        spyro.unk18.yaw = spyro.bodyRotation.yaw;
        func_8004F178(&camera.unk184, &arg0->position);
        func_800136F0(&camera.unk170, &mobyTag->unk8->m_Nodes[0].m_Position, &arg0->position);
        camera.unk170.yaw = 0;
        camera.unk170.pitch = 0;
        camera.unk168 = 0x11;
        if (func_800359A4(&mobyTag->unkC, 4) != 0) {
            D_8006C598 += 0x10;
            if (D_8006C598 >= 0xFF) {
                D_8006C598 = 0xFF;
                if ((D_80070104.loadLevel == 0x1E) && (eggsCollectedArray[lvlIdToIndex[27]] == 0)) {
                    D_80070104.loadLevel = 0x1B;
                }
                // BUG // Spike Bug
                // In NTSC-U Rev 0, the game checks if "Bianca Strikes Back" has been seen instead of "Spike Is Born"
                // As this cutscene is always seen by this point in normal play, "Spike Is Born" is never shown to the player
                // This was fixed in all later revisions
                if ((D_80070104.loadLevel != 0x1B) || (progressFlags.lvl63_BiancaStrikesBack != 0)) {
                    func_80054F94(D_80070104.loadLevel, arg0);
                } else {
                    progressFlags.lvl65_SpikeIsBorn = 1;
                    WarpToLevel(6, 0x41);
                }
            }
        }
        func_80055D24(arg0, 2);
        break;
        
    case 5:
        sp20.x = D_80065920[arg0->angle.yaw];
        sp20.y = D_800658A0[arg0->angle.yaw];
        sp20.z = 0;
        func_8004F194(&sp20, &sp20, &arg0->position);
        if (unk_ovlheader_80074334(&sp20) != 0) {
            spyro.unk17c = 0;
            unk_ovlheader_80074330(&sp20, arg0->angle.yaw, 0);
            arg0->state = 6U;
        }
        break;
        
    case 6:
        sp30.x = D_80065920[arg0->angle.yaw];
        sp30.y = D_800658A0[arg0->angle.yaw];
        sp30.z = 0;
        func_8004F194(&sp30, &sp30, &arg0->position);
        if (unk_ovlheader_80074330(&sp30, arg0->angle.yaw, 0) != 0) {
            func_8004F178(&sp40, &spyro.position);
            sp40.z -= spyro.unk4a;
            func_8003B634(&savedData, &sp40, spyro.bodyRotation.yaw);
            mobyTag->unkC = 0x78;
            arg0->substate = 0;
            arg0->state = 8;
        }
        break;
        
    case 7:
        func_80034F40(arg0, 1);
        arg0->position.z -= 0x40;
        spyro.unk17a = 0x10018000;
        spyro.unk20[1] = 0;
        func_8004F178(&spyro.unk19, &arg0->position);
        spyro.unk19.z += spyro.unk4a + 0x133;
        spyro.unk18.roll = arg0->angle.roll;
        spyro.unk18.pitch = arg0->angle.pitch;
        spyro.unk18.yaw = arg0->angle.yaw;
        func_80013AE4(&mobyTag->unk8->m_Nodes[0].m_Position, &spyro.position);
        func_8004F178(&sp50, &arg0->position);
        arg0->position.z += 0x400;
        sp50.z += 0x200;
        sp50.z = func_8001A358(&sp50, 0x200);
        if (sp50.z != 0) {
            arg0->position.z = sp50.z;
            func_80013B7C(0);
            arg0->state = 5U;
        } else {
            arg0->position.z -= 0x400;
        }
        func_80055D24(arg0, 2);
        break;
        
    case 8:
        func_80034F40(arg0, 1);
        if (mobyTag->unkC != 0) {
            arg0->position.z += 0x40;
            func_800359A4(&mobyTag->unkC, 4);
            if (arg0->substate == 0) {
                spyro.unk17a = 0x10000002;
                if (spyro.movementState == 0) {
                    arg0->substate = 1;
                }
            }
        }
        if (D_8006C7B4 & 1) {
            arg0->state = 9;
        }
        break;
        
    case 9:
        spyro.unk17a = 0x10000002;
        func_80034F40(arg0, 1);
        arg0->position.z -= 0x40;
        func_8004F178(&sp60, &arg0->position);
        arg0->position.z += 0x400;
        sp60.z += 0x200;
        sp60.z = func_8001A358(&sp60, 0x200);
        if (sp60.z != 0) {
            arg0->position.z = sp60.z;
            arg0->substate = 0;
            arg0->state = 1;
        } else {
            arg0->position.z -= 0x400;
        }
        func_80055D24(arg0, 2);
        break;
    }

    if ((game.state == 0) && (arg0->animationState.nextId == 1)) {
        if (func_8003BFC0(arg0, mobyTag->unk10) == 0) {
            mobyTag->unk10 = func_8003BABC(arg0, 0, 4);
            return;
        }
    } else {
        if (func_8003BFC0(arg0, mobyTag->unk10) != 0) {
            func_8003BE70(mobyTag->unk10);
        }
        mobyTag->unk10 = -1;
        return;
    }
    
}
