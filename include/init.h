#ifndef __INIT_H
#define __INIT_H

void InitSpu();
void InitCdAndWad();
void SetupDrawDispEnvs(); // SetupDrawDispEnvs
void InitGTE();
void func_8002A9D0();
void func_8002AA34();
int crc16(unsigned char* data, int in); // crc16step()
void func_8002AB38(); // Init()

#endif