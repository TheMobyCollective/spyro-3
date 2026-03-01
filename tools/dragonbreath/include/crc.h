#pragma once
#include <iostream>

#define CRCPOLY  0x8005
#define CRCPOLYR 0xA001
#define INITXOR  0x0000
#define FINALXOR 0x0000

static short crc_table[256];
static short crc_revtable[256];

void make_crc_table() {
    for (int byte = 0; byte <= 0xFF; byte++) {
        short crc = (byte << 8);
        for (char bit = 0; bit < 8; bit++) {
            if (crc & 0x8000) crc = (crc << 1) ^ CRCPOLY;
            else crc = (crc << 1);
        }
        crc_table[byte] = crc;
    }
}

void make_crc_revtable() {
    for (int byte = 0; byte < 256; byte++) {
        int crc = byte;
        for (char bit = 0; bit < 8; bit++) {
            if (crc & 1) crc = (crc >> 1) ^ (CRCPOLY >> 1) ^ 0x8000; // CRCPOLYR
            else crc >>= 1;
        }
        crc_revtable[byte] = crc;
    }
}

/**
 * Standard CRC16 implementation (CRC-16/UMTS)
 */
int crc16(char* buffer, int length) {
    int crcreg = INITXOR;
    for (int i = 0; i < length; ++i) {
        crcreg = crc_table[(buffer[i] ^ (crcreg >> 8)) & 0xFF] ^ (crcreg << 8);
    }
    return crcreg ^ FINALXOR;
}

/**
 * CRC16 implementation (CRC-16/UMTS) using the generated CRC16 table.
 * @param buffer: Pointer to start of region to be scanned
 * @param length: Length of scanning region
 * @param initXor: Constant to XOR onto value at the start
 * @param finalXor: Constant to XOR onto value at the end
 * @param jumpMask: Should be 0 for a standard CRC, but is 3 for the first part of many scans
 */
int crc16_table(char* buffer, int length, int initXor, int finalXor, int jumpMask) {
    int crcreg = initXor;
    for (int i = 0; i < length; i += ((crcreg & jumpMask) + 1)) {
        crcreg = crc_table[(buffer[i] ^ (crcreg >> 8)) & 0xFF] ^ (crcreg << 8);
    }
    return crcreg ^ finalXor;
}

/**
 * CRC16 implementation (CRC-16/UMTS).
 * @param buffer: Pointer to start of region to be scanned
 * @param length: Length of scanning region
 * @param initXor: Constant to XOR onto value at the start
 * @param finalXor: Constant to XOR onto value at the end
 * @param jumpMask: Should be 0 for a standard CRC, but is 3 for the first part of many scans
 */
int crc16_bitwise(char* buffer, int length, int initXor, int finalXor, int jumpMask) {
    int crcreg = initXor;
    for (int i = 0; i < length; i += ((crcreg & jumpMask) + 1)) {
        crcreg ^= (buffer[i] << 8);
        for (char bit = 0; bit < 8; bit++) {
            if (crcreg & 0x8000) crcreg = (crcreg << 1) ^ CRCPOLY;
            else crcreg = (crcreg << 1);
        }
    }
    return crcreg ^ finalXor;
}

int crc16_rev_bitwise(char* buffer, int length, int initXor, int finalXor) { // buffer should be the start of region, still
    int crcreg = finalXor;
    for (int i = length - 1; i >= 0; i--) {
        crcreg ^= buffer[i];
        for (char bit = 0; bit < 8; bit++) {
            if (crcreg & 1) crcreg = (crcreg >> 1) ^ (CRCPOLY >> 1) ^ 0x8000; // CRCPOLYR?
            else crcreg = (crcreg >> 1);
        }
    }
    return crcreg ^ initXor;
}

int crc16_rev_table(char* buffer, int length, int initXor, int finalXor) {
    int tcrcreg = finalXor; // e.g. if you want it to be 0 at the end, this should be 0
    for (int i = length - 1; i >= 0; --i) {
        tcrcreg = (crc_revtable[tcrcreg & 0xFF] ^ (tcrcreg >> 8) ^ ((unsigned char)buffer[i] << 8)) & 0xFFFF;
    }
    return tcrcreg ^ initXor;
}

void restore_check(char* buffer, int length, int chk_pos, int chk_addr) { // rethink the arguments here?

    // make sure fix_pos is within 0..(length-1)
    chk_pos = ((chk_pos % length) + length) % length;

    chk_addr &= 0xFFFFFF;
    chk_addr /= 4;
    *(int*)(buffer + chk_pos) = 0x08000000 | chk_addr;

}

void fix_crc_pos_fast(char* buffer, int length, int chk_pos, int initXor) { // chk_pos must be relative to start of buffer, not start of ovl

    // make sure fix_pos is within 0..(length-1)
    chk_pos = ((chk_pos % length) + length) % length;

    // calculate crc register at position chk_pos + 1, and backwards crc at chk_pos + 3
    int crcreg = crc16_table(buffer, chk_pos + 1, initXor, 0, 0); // first byte of chk_pos is not edited
    int tcrcreg = crc16_rev_table(buffer + (chk_pos + 3), length - (chk_pos + 3), 0, 0);

    // this bridges the gap between the two values, but I don't really understand how it works
    unsigned int i2 = (unsigned short)crc_revtable[tcrcreg & 0xFF] >> 8;
    unsigned int i1 = (unsigned short)crc_revtable[(tcrcreg ^ (unsigned short)crc_table[i2]) >> 8] >> 8;
    
    buffer[chk_pos + 1] = i1 ^ (crcreg >> 8);
    buffer[chk_pos + 2] = i2 ^ (((unsigned short)crc_table[i1] ^ (crcreg << 8)) >> 8);

}

void fix_crc_pos_brute(char* buffer, int length, int chk_pos, int initXor) { // fix_pos must be relative to start of buffer, not start of ovl

    // make sure fix_pos is within 0..(length-1)
    chk_pos = ((chk_pos % length) + length) % length;

    // calculate crc register at position fix_pos + 1
    int crcreg = crc16_table(buffer, chk_pos + 1, initXor, 0, 0); // first byte of chk_pos is not edited
    
    char* endbuffer = buffer + chk_pos + 1;
    int endlen = length - chk_pos - 1;
    
    for (int incr = 0; incr < 0x10000; incr++) {
        int finalcrc = crc16_table(endbuffer, endlen, crcreg, 0, 0);

        if ((short)finalcrc == 0) break;

        *(short*)endbuffer += 1;
        // error if incr == 0xFFFF
    }

}