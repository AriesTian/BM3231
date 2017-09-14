#ifndef __DEVICEBTJ_UTILS_DOT_H_
#define __DEVICEBTJ_UTILS_DOT_H_
BTWORD
DeviceBtj_Utils_Max(
    BTWORD Source,
    BTWORD Destination
);
BTWORD
DeviceBtj_Utils_Min(
    BTWORD Source,
    BTWORD Destination
);
#ifdef WIN32
BTBYTE
DeviceBtj_Utils_HexStrToBytVal(
    BTPBYTE HexStrBuf,
    BTBYTE  HexStrLen
);
BTBOOL
DeviceBtj_Utils_BytValToHexStr(
    BTBYTE  BytVal,
    BTPBYTE HexStrBuf,
    BTBYTE  HexStrLen
);
#endif
BTBOOL
DeviceBtj_Utils_DevMemAddr_ChkValid(
    DEV_MEM_ADDR DevMemAddr
);
BTBOOL
DeviceBtj_Utils_DevMemAddr_ChkZero(
    DEV_MEM_ADDR DevMemAddr
);
BTBOOL
DeviceBtj_Utils_DevMemAddr_ChkSame(
    DEV_MEM_ADDR DevMemAddr1,
    DEV_MEM_ADDR DevMemAddr2
);
BTBOOL
DeviceBtj_Utils_DevStrAddr_ChkValid(
    DEV_STR_ADDR DevStrAddr
);
#endif /* __DEVICEBTJ_UTILS_DOT_H_ */
