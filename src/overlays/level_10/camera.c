#include "common.h"
#include "camera.h"
#include "spyro.h"
#include "stdutil.h"

#define LEVEL_ID 10

#if (LEVEL_ID == 33) || (LEVEL_ID == 43) || (LEVEL_ID == 44) || (LEVEL_ID == 46)
    #define IS_AGENT_9_LEVEL
#endif

#if (LEVEL_ID == 10) || (LEVEL_ID == 20) || (LEVEL_ID == 30) || (LEVEL_ID == 40) \
 || (LEVEL_ID == 50) || (LEVEL_ID == 17) || (LEVEL_ID == 27) || (LEVEL_ID == 37) \
 || (LEVEL_ID == 23) || (LEVEL_ID == 32) || (LEVEL_ID == 33) || (LEVEL_ID == 44)
    #define IS_ZOOM_OUT_CAMERA_LEVEL
#endif

/**
 * ???() - func_level_10_8008AD44() - MATCHING
 * https://decomp.me/scratch/YHUgu
 */
void func_level_10_8008AD44() {
    int var_s2;
    int var_v1;

    var_s2 = (camera.unk138 + 2) >> 2;
    MAX(var_s2, 4);
    
    switch (camera.cameraState) {
        
    case 3:
        if (camera.unk134 == 0) {
            func_80014354();
            camera.unk7c.pos[1].pos.elevation = -spyro.rotation.pitch;
            
            var_v1 = (-spyro.rotation.pitch - camera.unk7c.pos[0].pos.elevation) >> 2;
            MAX(var_v1, 0xC0);
            MIN(var_v1, -0xC0);
            
            camera.unk7c.pos[1].yaw = (ABS(var_v1) >= 9) ? var_v1 : 0;
            if ((spyro.movementState != 6) || (spyro.unk13cc <= 0)) {
                camera.unk7c.pos[1].pitch = -spyro.rotation.roll >> 2;
            }
            
            func_80013918(0xC0);
            func_800139A4();
        }
        func_800142E0();
        func_800135A4(&camera.unk7c.pos[5], &D_8006929C[var_s2], 0); // &D_80068F7C.cam40[var_s2]
        MIN(camera.unk7c.pos[5].pos.azimuth, 0x100);
        MIN(camera.unk7c.pos[5].pos.elevation, 0x60);
        MIN(camera.unk7c.pos[5].pitch, 0x40);
        func_800135A4(&camera.unk7c.pos[6], &D_80069328[var_s2], 0); // &D_80068F7C.cam47[var_s2]
        func_800135A4(&camera.unk7c.pos[7], &D_800693C8, 0); // &D_80068F7C.cam55
        func_800135A4(&camera.unk7c.pos[8], &D_800693B4, 0); // &D_80068F7C.cam54
        if (spyro.movementState == 6) {
            camera.unk1c4[5] = -spyro.unk13ce;
        }
        break;
        
    case 4:
        if ((camera.unk134 == 0) && (game.state != 7)) {
            func_800135A4(&camera.unk7c.pos[1], &D_80069008, camera.unk6c);
            camera.unk7c.pos[1].pos.elevation = -spyro.rotation.pitch;
            
            var_v1 = (-spyro.rotation.pitch - camera.unk7c.pos[0].pos.elevation) >> 2;
            MAX(var_v1, 0xC0);
            MIN(var_v1, -0xC0);
            
            camera.unk7c.pos[1].yaw = (ABS(var_v1) >= 9) ? var_v1 : 0;
            camera.unk7c.pos[1].pitch = -spyro.rotation.roll >> 2;
            
            func_80013918(0x180);
            func_800139A4();
        }
        func_800142E0();
        func_800135A4(&camera.unk7c.pos[5], &D_8006929C[var_s2], 0);
        MIN(camera.unk7c.pos[5].pos.azimuth, 0x80);
        MIN(camera.unk7c.pos[5].pos.elevation, 0x60);
        MIN(camera.unk7c.pos[5].pitch, 0x40);
        func_800135A4(&camera.unk7c.pos[6], &D_80069328[var_s2], 0);
        func_800135A4(&camera.unk7c.pos[7], &D_800693C8, 0);
        func_800135A4(&camera.unk7c.pos[8], &D_800693B4, 0);
        break;
        
    case 17:
        if (camera.unk168 != camera.cameraState) break;
        
        if (camera.unk134 == 0) {
            func_800135A4(&camera.unk7c.pos[1], &camera.unk170, camera.unk6c);
        }
        func_8004F178(&camera.unk60, &camera.unk184);
        camera.unk6c = 0;
        func_800135A4(&camera.unk7c.pos[5], &D_8006929C[var_s2], 0);
        func_800135A4(&camera.unk7c.pos[6], &D_80069328[var_s2], 0);
        func_800135A4(&camera.unk7c.pos[8], &D_800693B4, 0);
        func_800135A4(&camera.unk7c.pos[7], &D_800693C8, 0);
        if (!(camera.unk58 & 2)) {
            func_800136F0(&camera.unk7c.pos[0], &camera.nextCameraPosCartesian, &camera.unk60);
            camera.unk7c.pos[2].pos.azimuth = camera.unk7c.pos[0].pos.azimuth;
        }
        break;
        
    case 23:
        if (camera.unk134 == 0) {
            if (spyro.unk13e[3] & 0x80) {
                func_800135A4(&camera.unk7c.pos[1], &D_80069260, camera.unk6c);
            } else {
                func_80014354();
                func_80013918(0x400);
            }
        }
        func_800142E0();
        camera.unk6c = spyro.unk17d->angle.yaw * 0x10;
        func_800135A4(&camera.unk7c.pos[5], &D_8006929C[var_s2], 0);
        func_800135A4(&camera.unk7c.pos[6], &D_80069328[var_s2], 0);
        func_800135A4(&camera.unk7c.pos[7], &D_800693C8, 0);
        func_800135A4(&camera.unk7c.pos[8], &D_800693B4, 0);
        if (!(camera.unk58 & 2)) {
            func_800136F0(&camera.unk7c.pos[0], &camera.nextCameraPosCartesian, &camera.unk60);
            camera.unk7c.pos[2].pos.azimuth = camera.unk7c.pos[0].pos.azimuth;
        }
        break;
        
    }
}

/**
 * ???() - func_level_10_8008B37C() - MATCHING
 * https://decomp.me/scratch/FsmXz (Level 10)
 * https://decomp.me/scratch/26uRu (Level 11)
 * https://decomp.me/scratch/wQiRZ (Level 33 - use this one)
 * https://decomp.me/scratch/uaaTn (Level 43)
 */
void func_level_10_8008B37C() {
	switch (camera.cameraState) {
        
#ifdef IS_ZOOM_OUT_CAMERA_LEVEL
	case CAMERA_ZOOM_OUT:
		if (camera.cameraState != camera.unk168) {
			func_80013900(&camera.unk7c.pos[3]);
			func_80012530();
			return;
		}
        func_8001241C();
		func_80012530();
		return;
#endif
        
#ifdef IS_AGENT_9_LEVEL  
	case CAMERA_AGENT_9_POV:
		func_800135A4(&camera.unk7c.pos[2], &camera.unk7c.pos[1], 0);
		return;
#endif
        
	default:
		func_8001241C();
		func_80012530();
		return;
	}

}

/**
 * ???() - func_level_10_8008B3E0() - MATCHING
 * https://decomp.me/scratch/f23du
 */
void func_level_10_8008B3E0(int cameraState) {

    switch (cameraState) {

    case 3:
    case 4:
    case 23:
        camera.unk50 = 0;
        camera.unk140[0] = 0;
        camera.unk140[1] = 0;
        camera.unk140[2] = 1;
        camera.unk140[5] = 0;
        camera.unk5c[0] = 0;
        func_800142E0();
        func_800136F0(&camera.unk7c.pos[0], &camera.nextCameraPosCartesian, &camera.unk60);
        func_800138A0(&camera.unk7c.pos[0], &camera.unk7c.pos[0]);
        func_800135A4(&camera.unk7c.pos[2], &camera.unk7c.pos[0], 0);
        break;
        
    case 17:
        camera.unk50 = 0;
        camera.unk140[0] = 0;
        camera.unk140[1] = 1;
        camera.unk140[2] = 1;
        camera.unk140[5] = 0;
        func_8004F178(&camera.unk60, &camera.unk184);
        camera.unk6c = 0;
        func_800136F0(&camera.unk7c.pos[0], &camera.nextCameraPosCartesian, &camera.unk60);
        func_800138A0(&camera.unk7c.pos[0], &camera.unk7c.pos[0]);
        func_800135A4(&camera.unk7c.pos[2], &camera.unk7c.pos[0], 0);
        break;
        
    }
}

/**
 * ???() - func_level_10_8008B528()
 * Not quite there yet, there's a block that I can't get to appear
 * https://decomp.me/scratch/MDxON
 */
INCLUDE_ASM("asm/nonmatchings/overlays/level_10/camera", func_level_10_8008B528);
