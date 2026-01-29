#include "moby/mobytag.h"
#include "moby/moby260.h"

#include "stdutil.h"
#include "warp.h"

// This needs re-writing / factoring into the general moby spawn

// Collision - unclear types
extern int func_8001A358(Vector3D*, int);

// Sound
extern int func_8003BABC(Moby*, int, char); // fPlayMobySound
extern void func_8003BE70(int); // fKillSound
extern int func_8003BFC0(Moby*, int);

// Update
extern void func_80054F94(int, Moby*); // unclear types

// UpdateMobys
extern Moby* func_80055A7C(); // get first empty allocated moby
extern void func_80055B18(Moby*); // fDeleteMoby
extern void func_80055C24(Moby*);
extern void func_80055D24(Moby*, int); // fUpdateMobyCollision

// Psyq
extern int func_8005C644(); // rand

// .data 80064f9c
extern Sparx sparx;
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern unsigned char lvlIdToIndex[0x48]; // 80066fcc

// .sdata 8006c3b0
extern int D_8006C528;
extern Moby* mobyArrayPtr; // moby array ptr
extern int D_8006C598;
extern int currentLevel; // 8006C5BC
extern int D_8006C73C;
extern int D_8006C784; // lifeCount
extern unsigned char D_8006C7B4; // EggsCollectedSinceEnteredBitmask

extern MobyTag_120 D_8006E394; // bss, some sort of shared moby tag?? used by Sparx

extern Spyro spyro; // Spyro 80070328

////////////////////////////////////////////////////////////////////////////////////
// Spawn

/**
 * MobySpawn_Level17() - func_level_17_8007EFAC() - MATCHING
 * https://decomp.me/scratch/6G7bh
 * @param mobyClass Class of the moby to spawn
 * @param linkedMoby Moby that spawned the new moby, if applicable
 * 
 * Alternative:
 * https://decomp.me/scratch/qQuvz
 * This one replaces some of the mobys with static inlines, which they might've done
 * Butterflies and Sparx don't seem to play well though
 */
Moby* func_level_17_8007EFAC(int mobyClass, Moby* linkedMoby) {
    Vector3D sp10;
    void* newMobyTag;
    MobyTag_120* temp_s0_2;
    MobyTag_272* temp_s0_3;
    MobyTag_16* temp_s2;
    Moby* newMoby;
    Vector3D* var_a0;
    Vector3D* var_a1;
    int temp_v0_3;
    unsigned char temp_v1_2;
    int var_v1;

    newMoby = func_80055A7C();
    if (newMoby == 0) return 0;

    newMobyTag = newMoby->mobyTag;
    func_8004E790(newMoby, 0, 0x58);
    newMoby->mobyTag = newMobyTag;
    func_8004E790(newMobyTag, 0, 0x18);
    newMoby->mobyClass = mobyClass;
    if (linkedMoby != 0) {
        if (linkedMoby - mobyArrayPtr < 0x100U) {
            newMoby->linkedMoby = linkedMoby - mobyArrayPtr;
        } else {
            newMoby->linkedMoby = 0xFF;
        }
    } else {
        newMoby->linkedMoby = 0xFF;
    }
    func_80034FEC(newMoby);
    
    switch (mobyClass) {
        
    case 0x10: // Butterfly
    case 0xD3: // Extra Life Butterfly
        temp_s2 = newMoby->mobyTag;
        if (newMoby->mobyClass == 0x10) {
            var_v1 = 10;
            if (D_8006C784 < 4)      var_v1 = 7;
            else if (D_8006C784 < 7) var_v1 = 9;
            
            sparx.butterflyCount++;
            if (sparx.butterflyCount >= var_v1) {
                sparx.butterflyCount = 0;
                newMoby->mobyClass = 0xD3;
            }
        }
        func_8004F178(&newMoby->position, &linkedMoby->position);
        func_80055C24(newMoby);
        newMoby->position.z += 0x200;
        func_8004F178(&temp_s2->unk0, &newMoby->position);
        newMoby->unknown = -1;
        newMoby->unknown4 = 2;
        temp_s2->unkE = 0x708;
        temp_s2->unk11 = 0;
        temp_s2->unk12 = (char) (func_8005C644() & 0xFC);
        break;
        
    case 0x78: // Sparx
        if (linkedMoby->mobyClass != mobyClass) {
            newMoby->mobyTag = &D_8006E394;
            func_8004E790(&D_8006E394, 0, 0x1C);
        }
        temp_s0_2 = newMoby->mobyTag;
        func_80055C24(newMoby);
        newMoby->substate = 0;
        temp_s0_2->unk0 = 0;
        temp_s0_2->unk8 = 0;
        temp_s0_2->unk6 = 0;
        temp_s0_2->unk4 = 0;
        temp_s0_2->unkD = 0x78;
        temp_s0_2->unk10 = 0;
        temp_s0_2->unk14 = 0;
        if (linkedMoby != 0) {
            func_8004F178(&newMoby->position, &linkedMoby->position);
        } else {
            temp_v1_2 = spyro.bodyRotation.yaw - 0x80;
            sp10.x = (D_80065920[temp_v1_2] * 0x7D) >> 9;
            sp10.y = (D_800658A0[temp_v1_2] * 0x7D) >> 9;
            sp10.z = 0x3E8;
            func_8004F194(&newMoby->position, &spyro.position, &sp10);
        }
        temp_s0_2->unk2 = 0xFF;
        break;
        
    case 0x84: // Egg
        newMoby->angle.yaw = linkedMoby->angle.yaw;
        func_8004F178(&newMoby->position, &linkedMoby->position);
        func_80055C24(newMoby);
        
        temp_v0_3 = func_80035D38(newMoby);
        if (temp_v0_3) newMoby->position.z = temp_v0_3;
        
        newMoby->state = 6;
        break;
        
    case 0x104: // Gem Number
        func_80055C24(newMoby);
        newMoby->colour.r = 2;
        if (linkedMoby != 0) {
            ((MobyTag_260*)newMoby->mobyTag)->unk0 = linkedMoby; // when this has a tag struct, it would be nice to fix this
            func_8004F178(&newMoby->position, &linkedMoby->position);
            newMoby->updateDistance = 0xA;
            newMoby->lowDrawDistance = 8;
            newMoby->position.z += 0x400;
        } else {
            newMoby->unknown = -1;
        }
        break;
        
    case 0x110: // Zoe
        temp_s0_3 = (MobyTag_272*)newMoby->mobyTag;
        func_8004F178(&newMoby->position, &spyro.position);
        newMoby->position.z += 0x400;
        newMoby->angle.yaw = spyro.bodyRotation.yaw;
        func_80055C24(newMoby);
        temp_s0_3->unk2 = 2;
        temp_s0_3->unk3 = spyro.bodyRotation.yaw;
        temp_s0_3->unk4 = spyro.bodyRotation.yaw;
        temp_s0_3->unk10 = -1;
        newMoby->unknown3[0] = 0;
        newMoby->lowDrawDistance = 0;
        newMoby->drawn = 0;
        break;
        
    default: // Everything else
        var_a1 = &linkedMoby->position;
        if (linkedMoby != 0) {
            var_a0 = &newMoby->position;
        } else {
            var_a0 = &newMoby->position;
            var_a1 = &spyro.position;
        }
        func_8004F178(var_a0, var_a1);
        func_80055C24(newMoby);
        break;
        
    }
    return newMoby;
}