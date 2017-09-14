#ifndef __DEVICEBTJ_DOT_H_
#define __DEVICEBTJ_DOT_H_
/*
 * ================================================================================
 *  Header files
 * ================================================================================
 */
#ifdef WIN32
#include <windows.h>
#endif
/*
 * ================================================================================
 *  Project types
 * ================================================================================
*/
#ifdef WIN32
#ifdef DEVICEBTJ_EXPORTS
#define DEVICEBTJ_API _declspec(dllexport)
#else
#define DEVICEBTJ_API _declspec(dllimport)
#endif
#define DEVICEBTJ_STDCALL _stdcall
#else
#define DEVICEBTJ_API
#define DEVICEBTJ_STDCALL
#endif
/*
 * ================================================================================
 *  Define enums
 * ================================================================================
*/
typedef enum _DEVICEBTJ_OBJECT
{
    DEVICEBTJ_OBJECT_SPP,
    DEVICEBTJ_OBJECT_HID,
    DEVICEBTJ_OBJECT_PNP,
    DEVICEBTJ_OBJECT_TOP
} DEVICEBTJ_OBJECT;
typedef enum _DEVICEBTJ_DEVICE
{
    DEVICEBTJ_DEVICE_LAPTOP,
    DEVICEBTJ_DEVICE_DESKTOP,
    DEVICEBTJ_DEVICE_PRINTER,
    DEVICEBTJ_DEVICE_CUSTOMS,
    DEVICEBTJ_DEVICE_TOP
} DEVICEBTJ_DEVICE;
typedef enum _DEVICEBTJ_SCAN_ENABLE
{
    DEVICEBTJ_SCAN_ENABLE_OFF,
    DEVICEBTJ_SCAN_ENABLE_INQ,
    DEVICEBTJ_SCAN_ENABLE_PAGE,
    DEVICEBTJ_SCAN_ENABLE_INQ_AND_PAGE
} DEVICEBTJ_SCAN_ENABLE;
typedef enum _DEVIEBTJ_EVENT
{
    DEVICEBTJ_EVENT_ADAPTER_ARRIVAL,
    DEVICEBTJ_EVENT_ADAPTER_REMOVED,
    DEVICEBTJ_EVENT_READ_LOCAL_NAME,
    DEVICEBTJ_EVENT_READ_LOCAL_TYPE,
    DEVICEBTJ_EVENT_WRITE_LOCAL_NAME,
    DEVICEBTJ_EVENT_WRITE_LOCAL_TYPE,
    DEVICEBTJ_EVENT_WRITE_SCAN_ENABLE,
    DEVICEBTJ_EVENT_INQUIRY_RESULT,
    DEVICEBTJ_EVENT_INQUIRY_COMPLETE,
    DEVICEBTJ_EVENT_INQUIRY_CANCELLED,
    DEVICEBTJ_EVENT_LINKKEY_REQUEST,
    DEVICEBTJ_EVENT_LINKKEY_NOTIFICATION,
    DEVICEBTN_EVENT_REMOTE_NAME_REQUEST_RESULT,
    DEVICEBTN_EVENT_REMOTE_NAME_REQUEST_CANCELLED,
    DEVICEBTJ_EVENT_SPP_RECEIVE,
    DEVICEBTJ_EVENT_SPP_CONNECT_CFM,
    DEVICEBTJ_EVENT_SPP_CONNECT_IND,
    DEVICEBTJ_EVENT_SPP_DISCONNECT_IND,
    DEVICEBTJ_EVENT_HID_RECEIVE,
    DEVICEBTJ_EVENT_HID_CONNECT_CFM,
    DEVICEBTJ_EVENT_HID_CONNECT_IND,
    DEVICEBTJ_EVENT_HID_DISCONNECT_IND,
    DEVICEBTN_EVENT_HID_UNPLUG_IND,
    DEVICEBTJ_EVENT_ACL_DISCONNECT_IND,
    DEVICEBTJ_EVENT_HID_OUT_REPORT,
    DEVICEBTJ_EVENT_HID_CREAT_CONNECT,
    DEVICEBTJ_EVENT_HID_DISCONNECT_HID,
    DEVICEBTJ_EVENT_WRITE_EIR,
    DEVICEBTJ_EVENT_MODE_CHANGE,
    DEVICEBTJ_EVENT_PIN_CODE_REQUEST,
    DEVICEBTJ_EVENT_WRITE_LINK_POLICY_SETING,
    DEVICEBTJ_EVENT_AUTO_CONNECT,
    DEVICEBTJ_EVENT_SAREQ,
    DEVICEBTJ_EVENT_SSAREQ,
    DEVICEBTJ_EVENT_HID_GET_REPORT,
    DEVICEBTN_EVENT_TOP
} DEVIEBTJ_EVENT;
typedef enum _DEVICEBTJ_STATE
{
    DEVICEBTJ_STATE_SUCCESS,
    DEVICEBTJ_STATE_FAILURE,
    DEVICEBTJ_STATE_FAILURE_INVALID,
    DEVICEBTJ_STATE_FAILURE_TIMEOUT,
    DEVICEBTJ_STATE_FAILURE_REFUSED,
    DEVICEBTJ_STATE_FAILURE_SECURITY,
    DEVICEBTJ_STATE_FAILURE_MISMATCH,
    DEVICEBTJ_STATE_FAILURE_LINKLOSS,
    DEVICEBTJ_STATE_FAILURE_INSTANCE,
    DEVICEBTJ_STATE_FAILURE_DEVICES_NOT_FOUND,
    DEVICEBTJ_STATE_FAILURE_SERVICE_NOT_FOUND,
    DEVICEBTJ_STATE_FAILURE_NOT_CONNECTED,
    DEVICEBTJ_STATE_FAILURE_ALREADY_CONNECTED,
    DEVICEBTJ_STATE_FAILURE_ALREADY_CONNECTING,
    DEVICEBTJ_STATE_TOP
} DEVICEBTJ_STATE;
/*
 * ================================================================================
 *  Bluetooth objects
 * ================================================================================
*/
struct __DEVICEBTJ_ADAPTER_T;
typedef struct __DEVICEBTJ_ADAPTER_T DEVICEBTJ_ADAPTER_T, *DEVICEBTJ_ADAPTER_P;
struct __DEVICEBTJ_SERVICE_T;
typedef struct __DEVICEBTJ_SERVICE_T DEVICEBTJ_SERVICE_T, *DEVICEBTJ_SERVICE_P;
/*
 * ================================================================================
 *  Bluetooth types
 * ================================================================================
*/
#define MAX_PIN_CODE            (0x10)
#define MIN_PIN_CODE            (0x01)
#define LEN_DEV_MEM_NAME        (0xf8)
#define LEN_DEV_STR_NAME        (0xf8)
typedef unsigned char           DEV_MEM_NAME[LEN_DEV_MEM_NAME];
typedef unsigned char           DEV_STR_NAME[LEN_DEV_STR_NAME];
#define LEN_DEV_MEM_ADDR        (0x06)
#define LEN_DEV_STR_ADDR        (0x12)
typedef unsigned char           DEV_MEM_ADDR[LEN_DEV_MEM_ADDR];
typedef unsigned char           DEV_STR_ADDR[LEN_DEV_STR_ADDR];
#define LEN_DEV_MEM_TYPE        (0x03)
#define LEN_DEV_STR_TYPE        (0x07)
typedef unsigned char           DEV_MEM_TYPE[LEN_DEV_MEM_TYPE];
typedef unsigned char           DEV_STR_TYPE[LEN_DEV_STR_TYPE];
#define LEN_DEV_LINK_KEY        (0x10)
typedef unsigned char           DEV_LINK_KEY[LEN_DEV_LINK_KEY];
/*
 * ================================================================================
 *  Type alias
 * ================================================================================
*/
typedef signed char              BTBOOL;
typedef signed char              BTCHAR,  *BTPCHAR;
typedef signed short             BTSHORT, *BTPSHORT;
typedef signed long              BTLONG,  *BTPLONG;
typedef unsigned char            BTBYTE,  *BTPBYTE;
typedef unsigned short           BTWORD,  *BTPWORD;
typedef unsigned long            BTDWORD, *BTPDWORD;
typedef void                     *BTPVOID;
#define BTNULL                   (0x00)
#define BTTRUE                   (0x01)
#define BTFALSE                  (0x00)
/*
 * ================================================================================
 *  Struct enums
 * ================================================================================
*/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _DEVICEBTJ_ADAPTER_ARRIVAL_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_ADAPTER_ARRIVAL_T, *DEVICEBTJ_ADAPTER_ARRIVAL_P;
typedef __packed struct _DEVICEBTJ_READ_LOCAL_NAME_T
{
    DEV_MEM_NAME DevMemName;
} DEVICEBTJ_READ_LOCAL_NAME_T, *DEVICEBTJ_READ_LOCAL_NAME_P;
typedef __packed struct _DEVICEBTJ_READ_LOCAL_TYPE_T
{
    DEV_MEM_TYPE DevMemType;
} DEVICEBTJ_READ_LOCAL_TYPE_T, *DEVICEBTJ_ADAPTER_TYPE_P;
typedef __packed struct _DEVICEBTJ_INQUIRY_RESULT_T
{
    DEV_MEM_ADDR DevMemAddr;
    DEV_MEM_TYPE DevMemType;
    BTBYTE       DevRssiValid;
    BTBYTE       DevRssiValue;
} DEVICEBTJ_INQUIRY_RESULT_T, *DEVICEBTJ_INQUIRY_RESULT_P;
typedef __packed struct _DEVICEBTJ_REMOTE_NAME_REQUEST_T
{
    DEV_MEM_ADDR DevMemAddr;
    DEV_MEM_NAME DevMemName;
} DEVICEBTJ_REMOTE_NAME_REQUEST_RESULT_T, *DEVICEBTJ_REMOTE_NAME_REQUEST_RESULT_P;
typedef __packed struct _DEVICEBTJ_REMOTE_NAME_REQUEST_CANCEL_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_REMOTE_NAME_REQUEST_CANCEL_T, *DEVICEBTJ_REMOTER_NAMECANCELLED_P;
typedef __packed struct _DEVICEBTJ_CONNECT_IND_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_CONNECT_IND_T, *DEVICEBTJ_CONNECT_IND_P;
typedef __packed struct _DEVICEBTJ_CONNECT_CFM_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_CONNECT_CFM_T, *DEVICEBTJ_CONNECT_CFM_P;
typedef __packed struct _DEVICEBTJ_DISCONNECT_IND_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_DISCONNECT_IND_T, *DEVICEBTJ_DISCONNECT_IND_P;
#ifdef WIN32
#include <poppack.h>
#endif
/*
 * ================================================================================
 *  Prototype definitions
 * ================================================================================
*/
#ifdef __cplusplus
extern "C" {
#endif
#ifdef WIN32
#include <pshpack1.h>
    typedef struct _DEVICEBTJ_MSG
    {
        DEVICEBTJ_ADAPTER_P MsgAdapter;
        DEVICEBTJ_SERVICE_P MsgService;
        BTBYTE MsgEvent;
        BTBYTE MsgState;
        BTWORD MsgLength;
        BTBYTE MsgPacket[0x01];
    } DEVICEBTJ_MSG, *PDEVICEBTJ_MSG;
#include <poppack.h>
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_Init(
        HWND hWnd,
        BTWORD WM_DEVICEBTJ
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_InstallDriver(
        void
    );
#else
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_Init(
        void
    );
    void
    DeviceBtj_Event(
        DEVICEBTJ_ADAPTER_P MsgAdapter,
        DEVICEBTJ_SERVICE_P MsgService,
        BTBYTE  MsgEvent,
        BTBYTE  MsgState,
        BTPBYTE MsgBuffer,
        BTWORD  MsgLength
    );
    DEVICEBTJ_API
    void
    DEVICEBTJ_STDCALL
    DeviceBtj_Timer(
        BTWORD Interval
    );
#endif
    DEVICEBTJ_API
    DEVICEBTJ_SERVICE_P
    DEVICEBTJ_STDCALL
    DeviceBtj_ServiceRegister(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_OBJECT Types
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_ServiceUnregister(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_InquiryStart(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTBOOL DevRssi
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_InquiryCancel(
        DEVICEBTJ_ADAPTER_P Adapter
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_RemoteNameRequestStart(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEV_MEM_ADDR DevMemAddr
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_RemoteNameRequestCancel(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEV_MEM_ADDR DevMemAddr
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_Pincode(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTPBYTE PincodeBuffer,
        BTBYTE PincodeLength
    );
    DEVICEBTJ_API
    DEVICEBTJ_STATE
    DEVICEBTJ_STDCALL
    DeviceBtj_Connect(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service,
        DEV_MEM_ADDR DevMemAddr
    );
    DEVICEBTJ_API
    DEVICEBTJ_STATE
    DEVICEBTJ_STDCALL
    DeviceBtj_Send(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service,
        BTPBYTE SppBuffer,
        BTWORD SppLength
    );
    DEVICEBTJ_API
    DEVICEBTJ_STATE
    DEVICEBTJ_STDCALL
    DeviceBtj_Disconnect(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_ReadLocalName(
        DEVICEBTJ_ADAPTER_P Adapter
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_ReadLocalType(
        DEVICEBTJ_ADAPTER_P Adapter
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_WriteLocalName(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTPBYTE LocalNameBuf,
        BTBYTE LocalNameLen
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_WriteLocalType(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_DEVICE Device,
        DEV_MEM_TYPE DevMemType
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_WriteScanEnable(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTBYTE SacnEnable
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_MemAddrToStrAddr(
        BTPBYTE MemAddrBuf,
        BTBYTE  MemAddrLen,
        BTPBYTE StrAddrBuf,
        BTBYTE  StrAddrLen
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_StrAddrToMemAddr(
        BTPBYTE StrAddrBuf,
        BTBYTE  StrAddrLen,
        BTPBYTE MemAddrBuf,
        BTBYTE  MemAddrLen
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_MemTypeToStrType(
        BTPBYTE MemTypeBuf,
        BTBYTE  MemTypeLen,
        BTPBYTE StrTypeBuf,
        BTBYTE  StrTypeLen
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_StrTypeToMemType(
        BTPBYTE StrTypeBuf,
        BTBYTE  StrTypeLen,
        BTPBYTE MemTypeBuf,
        BTBYTE  MemTypeLen
    );
    DEVICEBTJ_API
    BTBOOL
    DEVICEBTJ_STDCALL
    DeviceBtj_Shut(
        void
    );
#ifdef __cplusplus
}
#endif

#endif /* __DEVICEBTJ_DOT_H_ */
