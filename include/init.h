#ifndef __INIT_H
#define __INIT_H

void InitSpu();
void InitCdAndWad();
void func_8002A834(); // SetupDrawDispEnvs
void func_8002A99C(); // InitGeom? This label used in psyq so probably don't wanna call it this
void func_8002A9D0();
void func_8002AA34();
int crc16(unsigned char* data, int in); // crc16step()
void func_8002AB38(); // Init()

#endif