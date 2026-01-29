#ifndef __MOBY_SPAWN_H
#define __MOBY_SPAWN_H

#include "ovl_header.h"
#include "moby/mobytag.h"
#include "mobyutil.h"
#include "camera.h"
#include "stdutil.h"

// updatemobys
extern Moby* func_80055A7C(); // get first empty allocated moby
extern void func_80055C24(Moby*);

// variables
extern Spyro spyro;
extern Moby* mobyArrayPtr;
extern short D_800658A0[0x100]; // sin
extern short D_80065920[0x100]; // cos
extern int D_8006C784; // life count

// sparx
extern Sparx sparx;
extern MobyTag_120 D_8006E394; // bss, some sort of shared moby tag?? used by Sparx

#if (LEVEL_ID < 60) && (LEVEL_ID >= 10)
    #define IS_LEVEL
#elif (LEVEL_ID <= 80) && (LEVEL_ID >= 61)
    #define IS_CUTSCENE
#endif

#if defined(HAS_MOBY_16) || defined(HAS_MOBY_211)
	#define HAS_BUTTERFLIES
#endif

#if    defined(HAS_MOBY_306) || defined(HAS_MOBY_307) || defined(HAS_MOBY_308) || defined(HAS_MOBY_568) \
    || defined(HAS_MOBY_630) || defined(HAS_MOBY_631)
	#define HAS_FRAGMENTS
#endif

Moby* NAME_OVERLAY_FUNCTION(MobySpawn) (int mobyClass, Moby* linkedMoby) {
    Moby* newMoby;
    void* newMobyTag;

    // both of these should be ifdef'd
    // level 13 has both
    Vector3D v2; // may want to swap these variables in the long run // used by 90
    Vector3D v; // name based on S2 Sep15 debug printfs // used by 120 and FRAGMENTS

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

#ifdef HAS_MOBY_1
	case 1:
        func_80055C24(newMoby);
        newMoby->lowDrawDistance = 0x18;
        newMoby->updateDistance = 0x40;
        newMoby->unknown = -1;
        break;
#endif

#ifdef HAS_MOBY_76
    case 76:
    {
        MobyTag_76* mobyTag;
        
        if ((linkedMoby->mobyClass == mobyClass) || (linkedMoby->mobyClass == 0x142) || (linkedMoby->mobyClass == 0x15C)) {
            mobyTag = linkedMoby->mobyTag;
            unk_ovlheader_800743E4(&newMoby->position, (func_8005C644() & 0xFF) - 0x7F, (func_8005C644() & 0xFF) - 0x7F, &mobyTag->unk0);
        } else {
            func_8004F178(&newMoby->position, &linkedMoby->position);
        }
        newMoby->position.z += 0x80;
        newMoby->position.z = func_8001A358(&newMoby->position, 0x1000);
        newMoby->state = 2;
        newMoby->substate = 0;
        func_80055C24(newMoby);
        break;
    }
#endif

#ifdef HAS_MOBY_90
    case 90:
    {
        MobyTag_89* byrdTag;
        MobyTag_90* mobyTag;
        
        byrdTag = linkedMoby->mobyTag;
        mobyTag = newMoby->mobyTag;
        v2.x = 0;
        v2.y = 0xC0;
        if (byrdTag->unk28 != 0) {
            v2.y = -0xC0;
        }
        if (camera.cameraState == 7 && camera.unk50 != 1) {
            v2.z = 0;
            func_8004ED6C(&camera.unk14, &v2, &v2);
            func_8004F194(&newMoby->position, &camera.nextCameraPosCartesian, &v2);
            newMoby->angle.roll =   camera.unk44 >> 4;
            newMoby->angle.pitch = -camera.unk46 >> 4;
            newMoby->angle.yaw =    camera.unk48 >> 4;
        } else {
            v2.z = 0x180;
            func_8004ED6C(&linkedMoby->rotationMatrix, &v2, &v2);
            func_8004F194(&newMoby->position, &linkedMoby->position, &v2);
            newMoby->angle.roll =  linkedMoby->angle.roll;
            newMoby->angle.pitch = linkedMoby->angle.pitch;
            newMoby->angle.yaw =   linkedMoby->angle.yaw;
        }
        mobyTag->unk14 = byrdTag->unk5C;
        func_80055C24(newMoby);
        newMoby->state = 0;
        break;
    }
#endif

#ifdef HAS_MOBY_16
	case 16:
#endif
#ifdef HAS_MOBY_211
	case 211:
#endif
#ifdef HAS_BUTTERFLIES
    {
        MobyTag_16* mobyTag;
        int extraLifeThreshold;

        mobyTag = newMoby->mobyTag;
        if (newMoby->mobyClass == 0x10) {
            extraLifeThreshold = 10;
            if (D_8006C784 < 4)      extraLifeThreshold = 7;
            else if (D_8006C784 < 7) extraLifeThreshold = 9;
            
            sparx.butterflyCount++;
            if (sparx.butterflyCount >= extraLifeThreshold) {
                sparx.butterflyCount = 0;
                newMoby->mobyClass = 0xD3;
            }
        }
        func_8004F178(&newMoby->position, &linkedMoby->position);
        func_80055C24(newMoby);
        newMoby->position.z += 0x200;
        func_8004F178(&mobyTag->unk0, &newMoby->position);
        newMoby->unknown = -1;
        newMoby->unknown4 = 2;
        mobyTag->unkE = 0x708;
        mobyTag->unk11 = 0;
        mobyTag->unk12 = (char) (func_8005C644() & 0xFC);
        break;
    }
#endif
        
#ifdef HAS_MOBY_120
	case 120:
    {
        MobyTag_120* mobyTag;
        unsigned char yaw;
        
        if (linkedMoby->mobyClass != mobyClass) {
            newMoby->mobyTag = &D_8006E394;
            func_8004E790(&D_8006E394, 0, 0x1C);
        }
        
        mobyTag = newMoby->mobyTag;
        func_80055C24(newMoby);
        newMoby->substate = 0;
        mobyTag->unk0 = 0;
        mobyTag->unk8 = 0;
        mobyTag->unk6 = 0;
        mobyTag->unk4 = 0;
        mobyTag->unkD = 0x78;
        mobyTag->unk10 = 0;
        mobyTag->unk14 = 0;
        if (linkedMoby != 0) {
            func_8004F178(&newMoby->position, &linkedMoby->position);
        } else {
            yaw = spyro.bodyRotation.yaw - 0x80;
            v.x = (D_80065920[yaw] * 0x7D) >> 9;
            v.y = (D_800658A0[yaw] * 0x7D) >> 9;
            v.z = 0x3E8;
            func_8004F194(&newMoby->position, &spyro.position, &v);
        }
        mobyTag->unk2 = 0xFF;
        break;
    }
#endif
        
#ifdef HAS_MOBY_132
	case 132:
    {
        int ground;
        
        newMoby->angle.yaw = linkedMoby->angle.yaw;
        func_8004F178(&newMoby->position, &linkedMoby->position);
        func_80055C24(newMoby);
        
        ground = func_80035D38(newMoby);
        if (ground) newMoby->position.z = ground;
        
        newMoby->state = 6;
        break;
    }
#endif

// NOTE - this is present in Level 11 too, but this seems to be a different
// moby with the same class. They've got slightly different code.
// Separating them for now, but I imagine they actually shared code
#ifdef HAS_MOBY_245
#if (LEVEL_ID == 13)
    case 245:
    {
        MobyTag_245* mobyTag;
        int rand1;
        int rand2;

        mobyTag = newMoby->mobyTag;
        if (linkedMoby) func_8004F178(&newMoby->position, &linkedMoby->position);
        else            func_8004F178(&newMoby->position, &spyro.position);

        // Level 13 specific
        rand1 = (unsigned char)func_8005C644();
        rand2 = (unsigned char)func_8005C644();
        // Slightly awful fix for these first two lines; the z coord can also be done like this
        mobyTag->unk0.x = ((D_80065920[rand1] << 1 >> 5) * D_80065920[rand2]) >> 0xC;
        mobyTag->unk0.y = ((D_800658A0[rand1] << 1 >> 5) * D_80065920[rand2]) >> 0xC;
        mobyTag->unk0.z =   D_800658A0[rand2] << 1 >> 5;
        mobyTag->unkC = func_8003636C(0x5A, 0x96);
        
        func_8004F194(&newMoby->position, &newMoby->position, &mobyTag->unk0);
        func_8004F110(&mobyTag->unk0, 1);
        newMoby->angle.yaw = func_8005C644();
        func_80055C24(newMoby);
        switch (func_8005C644() & 3) {
        case 0:
            *(int*)&newMoby->colour = 0x3C0000FF;
            break;
        case 1:
            *(int*)&newMoby->colour = 0x3C00A0B0;
            break;
        case 2:
            *(int*)&newMoby->colour = 0x3C0080FF;
            break;
        case 3:
            *(int*)&newMoby->colour = 0x3C000000;
            break;
        default:
            break;
        }
        break;
    }
#endif
#endif
        
#ifdef HAS_MOBY_260
	case 260:
        func_80055C24(newMoby);
        newMoby->colour.r = 2;
        if (linkedMoby != 0) {
            ((MobyTag_260*)newMoby->mobyTag)->unk0 = linkedMoby;
            func_8004F178(&newMoby->position, &linkedMoby->position);
            newMoby->updateDistance = 10;
            newMoby->lowDrawDistance = 8;
            newMoby->position.z += 0x400;
        } else {
            newMoby->unknown = -1;
        }
        break;
#endif
        
#ifdef HAS_MOBY_272
	case 272:
    {
        MobyTag_272* mobyTag;
        
        mobyTag = newMoby->mobyTag;
        func_8004F178(&newMoby->position, &spyro.position);
        newMoby->position.z += 0x400;
        newMoby->angle.yaw = spyro.bodyRotation.yaw;
        func_80055C24(newMoby);
        mobyTag->unk2 = 2;
        mobyTag->unk3 = spyro.bodyRotation.yaw;
        mobyTag->unk4 = spyro.bodyRotation.yaw;
        mobyTag->unk10 = -1;
        newMoby->unknown3[0] = 0;
        newMoby->lowDrawDistance = 0;
        newMoby->drawn = 0;
        break;
    }
#endif

#ifdef HAS_MOBY_306
    case 306:
#endif
#ifdef HAS_MOBY_307
    case 307:
#endif
#ifdef HAS_MOBY_308
    case 308:
#endif
#ifdef HAS_MOBY_568
	case 568:
#endif
#ifdef HAS_MOBY_630
    case 630:
#endif
#ifdef HAS_MOBY_631
    case 631:
#endif
#ifdef HAS_FRAGMENTS
    {
    	MobyTag_Fragment* mobyTag;
        int azimuth;
    	int elevation;
        
        mobyTag = newMoby->mobyTag;
        newMoby->lowDrawDistance = 0x20;
        func_8004F178(&newMoby->position, &linkedMoby->position);
        func_80055C24(newMoby);
        azimuth = func_8005C644() & 0xFFF;
        elevation = func_8005C644() & 0x7FF;
		
        // spherical -> cartesian!
        mobyTag->linearVel.x = (func_8004EA2C(elevation) * func_8004EA2C(azimuth) * linkedMoby->substate) >> 0x18;
        mobyTag->linearVel.y = (func_8004EA2C(elevation) * func_8004E9E4(azimuth) * linkedMoby->substate) >> 0x18;
        mobyTag->linearVel.z = (func_8004E9E4(elevation) * linkedMoby->substate) >> 0xC;
        if (linkedMoby->damageFlags & 0x02000000) {
            v.x = D_80065920[func_8004E880(newMoby->position.x - spyro.position.x, newMoby->position.y - spyro.position.y, 0)];
            v.x = (short)v.x >> 4;
            v.y = D_800658A0[func_8004E880(newMoby->position.x - spyro.position.x, newMoby->position.y - spyro.position.y, 0)];
            v.y = (short)v.y >> 4;
            v.z = 0;

            mobyTag->linearVel.x += v.x;
            mobyTag->linearVel.y += v.y;
        } else if ((linkedMoby->damageFlags & 0x20000) && ((spyro.movementState == 4) || (spyro.movementState == 0xC))) {
            mobyTag->linearVel.x += spyro.unk7a[2].x >> 6;
            mobyTag->linearVel.y += spyro.unk7a[2].y >> 6;
        }
        if ((linkedMoby->unkb != 0) && (linkedMoby->damageFlags & 0x100000)) {
            mobyTag->linearVel.x += (D_80065920[linkedMoby->unkb] * 0x4B) >> 0xB;
            mobyTag->linearVel.y += (D_800658A0[linkedMoby->unkb] * 0x4B) >> 0xB;
            mobyTag->linearVel.z += func_8003636C(0x28, 0x46);
        }
        newMoby->position.x += mobyTag->linearVel.x * 4;
        newMoby->position.y += mobyTag->linearVel.y * 4;
        newMoby->position.z += mobyTag->linearVel.z * 4;
        newMoby->angle.pitch = func_8005C644();
        newMoby->angle.yaw = func_8005C644();
        mobyTag->angularVel.x = (func_8005C644() & 0x1F) - 0x10;
        mobyTag->angularVel.y = (func_8005C644() & 0x1F) - 0x10;
        mobyTag->angularVel.z = (func_8005C644() & 0x1F) - 0x10;
        mobyTag->unk10 = linkedMoby->position.z - 0x40;
        mobyTag->timer = func_8003636C(0x32, 0x50);
        break;
    }
#endif

#ifdef HAS_MOBY_326
    case 326:
    {
        MobyTag_326* mobyTag;

        mobyTag = newMoby->mobyTag;
        func_8004F178(&newMoby->position, &linkedMoby->position);
        func_80055C24(newMoby);
        mobyTag->unk0 = 0x10;
        newMoby->colour.a = 0x3B;
        newMoby->colour.r = 0x80;
        newMoby->colour.g = 0x80;
        newMoby->colour.b = 0;
        
        if ((linkedMoby->mobyClass == 0x198) || (linkedMoby->mobyClass == 0x2C2)) {
            mobyTag->unk2 = 1;
            mobyTag->unk3 = 1;
            newMoby->size = 0x7F;
        } else {
            if (linkedMoby->mobyClass == 0x270) {
                mobyTag->unk2 = 2;
                newMoby->colour.r = 0xE0;
                newMoby->colour.g = 0xE0;
                newMoby->colour.b = 0xE0;
                newMoby->colour.a = 0x3B;
                mobyTag->unk3 = 0;
                newMoby->size = 0x60;
            } else {
                mobyTag->unk2 = 0;
                mobyTag->unk3 = 0;
                newMoby->size = 0x60;
            }
        }
        
        newMoby->unknown4 = 0xFE;
        newMoby->angle.pitch = func_8004E880(func_8004F334(&newMoby->position, &camera.nextCameraPosCartesian), camera.nextCameraPosCartesian.z - newMoby->position.z, 0) - 0x40;
        newMoby->angle.yaw = func_8004E880(camera.nextCameraPosCartesian.x - newMoby->position.x, camera.nextCameraPosCartesian.y - newMoby->position.y, 0);
        break;
    }
#endif
        
#ifdef HAS_MOBY_556
    case 556:
    {
        if (linkedMoby) {
            func_8004F178(&newMoby->position, &linkedMoby->position);
        } else {
            func_8004F178(&newMoby->position, &spyro.position);
        }
        func_80055C24(newMoby);
        newMoby->state = 2;
        break;
    }
#endif

    default:
    {
        if (linkedMoby) {
            func_8004F178(&newMoby->position, &linkedMoby->position);
        } else {
            func_8004F178(&newMoby->position, &spyro.position);
        }
        func_80055C24(newMoby);
        break;
    }      
    }
    return newMoby;
}

#endif