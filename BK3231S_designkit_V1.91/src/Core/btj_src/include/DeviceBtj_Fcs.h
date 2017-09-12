#ifndef __DEVICEBTJ_CRC_DOT_H_
#define __DEVICEBTJ_CRC_DOT_H_
BTBYTE
DeviceFcs_Cal(
    BTPBYTE buffer,
    BTWORD  length
);
BTBOOL
DeviceFcs_Chk(
    BTPBYTE buffer,
    BTWORD  length,
    BTPBYTE crc
);
#endif /* __DEVICEBTJ_CRC_DOT_H_ */
