#ifndef __DEVICEBTJ_DEBUGER_DOT_H_
#define __DEVICEBTJ_DEBUGER_DOT_H_
/******************************************************************************
  Traces defines
 *****************************************************************************/
typedef enum _DEBUGER_TRACER
{
    DEBUGER_TRACER_RECV_EVT,
    DEBUGER_TRACER_RECV_ACL,
    DEBUGER_TRACER_SEND_CMD,
    DEBUGER_TRACER_SEND_ACL,
    DEBUGER_TRACER_RFCS_NUM
} DEBUGER_TRACER;
/******************************************************************************
  Routine defines
 *****************************************************************************/
#ifdef WIN32
#ifdef __cplusplus
extern "C" {
#endif
    void
    DeviceBtj_Debuger_Init(
        void
    );
    void
    DeviceBtj_Debuger_Tracer(
        BTBYTE  TracerType,
        BTPBYTE TracerBuffer,
        BTWORD  TracerLength
    );
#ifdef __cplusplus
}
#endif
#else
void
DeviceBtj_Debuger_Init(
    void
);
#define DeviceBtj_Debuger_Tracer(a,b,c)
#endif
#endif /* __DEVICEBTJ_DEBUGER_DOT_H_ */
