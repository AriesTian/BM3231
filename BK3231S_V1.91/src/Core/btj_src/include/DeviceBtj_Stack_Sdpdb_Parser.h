#ifndef __DEVICEBTJ_STACK_DATABASE_DOT_H_
#define __DEVICEBTJ_STACK_DATABASE_DOT_H_
/******************************************************************************
  Routine defines
 *****************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif
    BTBOOL
    DeviceSdpdb_Parse_DataElement_Head(
        BTPBYTE *ElementAddr,
        BTBYTE *ElementOffset,
        BTWORD *ElementLength
    );
    BTBOOL
    DeviceSdpdb_Parse_DataElement_Body(
        BTPBYTE *ElementAddr,
        BTBYTE *ElementOffset,
        BTWORD *ElementLength
    );
    BTBOOL
    DeviceSdpdb_Parse_MatchUuid(
        BTWORD Uuid,
        BTPBYTE SearchPatternBuf,
        BTWORD SearchPatternLen
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STACK_DATABASE_DOT_H_ */
