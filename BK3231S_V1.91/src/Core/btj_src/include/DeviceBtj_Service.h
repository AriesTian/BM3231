#ifndef __DEVICEBTJ_SERVICE_DOT_H_
#define __DEVICEBTJ_SERVICE_DOT_H_
typedef enum
{
    SERVICE_STATE_IDLE,
    SERVICE_STATE_CONNECTING_START,
    SERVICE_STATE_CONNECTING_RETRY,
    SERVICE_STATE_CONNECTING_STACK,
    SERVICE_STATE_CONNECTED
} SERVICE_STATE;
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
__packed struct __DEVICEBTJ_SERVICE_T
{
    BTBYTE        ctx_state;
    DEV_MEM_ADDR  dev_mem_addr;
    L2C_CONTEXT_P l2c_context;
    SDP_DATBASE_T sdp_database;
    RFC_CONTEXT_T rfc_context;
    HID_CONTEXT_T hid_context;
    struct __DEVICEBTJ_ADAPTER_T *adapter;
    struct __DEVICEBTJ_SERVICE_T *next;
};
#ifdef WIN32
#include <poppack.h>
#endif
#endif /* __DEVICEBTJ_SERVICE_DOT_H_ */
