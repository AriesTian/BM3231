#ifndef __DEVICTBTJ_ADAPTER_DOT_H_
#define __DEVICTBTJ_ADAPTER_DOT_H_
/******************************************************************************
  Statusx defines
 *****************************************************************************/
typedef enum _INQ_STATUSX
{
    INQ_STATUSX_NIL,
    INQ_STATUSX_MODE,
    INQ_STATUSX_INQUIRY,
    INQ_STATUSX_CANCEL
} INQ_STATUSX;
/* rnr is short for RemoteNameRequest */
typedef enum _RNR_STATUSX
{
    RNR_STATUSX_NIL,
    RNR_STATUSX_REQUEST,
    RNR_STATUSX_CANCEL
} RNR_STATUSX;
/* key action */
typedef enum _KEY_ACTION
{
    KEY_ACTION_LINK_KEY_REQ,
    KEY_ACTION_LINK_KEY_STORE_TRY,
    KEY_ACTION_LINK_KEY_STORE_RETRY,
    KEY_ACTION_TOP
} KEY_ACTION;
/******************************************************************************
  Structs defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _USB_CONTEXT
{
    BTPVOID             usb_stack;
} USB_CONTEXT_T;
typedef __packed struct _COM_CONTEXT
{
    BTPVOID             com_stack;
} COM_CONTEXT_T;
typedef __packed struct _LMP_FEATURE_T
{
    BTBYTE              lmp_feature[DEVICELEN_LMP_FEATURE];
} LMP_FEATURE_T, *LMP_FEATURE_P;
typedef __packed struct _CMD_FEATURE_T
{
    BTBYTE              cmd_feature[DEVICELEN_CMD_FEATURE];
} CMD_FEATURE_T, *CMD_FEATURE_P;
typedef __packed struct _INQ_CONTEXT_T
{
    DEV_MEM_ADDR        dev_mem_addr;
    DEV_MEM_TYPE        dev_mem_type;
    BTWORD              dev_rssi;
    BTBYTE              dev_count;
    struct _INQ_CONTEXT_T *next;
} INQ_CONTEXT_T, *INQ_CONTEXT_P;
typedef __packed struct _PIN_CONTEXT_T
{
    BTBYTE              pin_length;
    BTBYTE              pin_buffer[MAX_PIN_CODE];
} PIN_CONTEXT_T, *PIN_CONTEXT_P;
typedef __packed struct _KEY_CONTEXT_T
{
    BTBYTE              key_action;
    DEV_MEM_ADDR        key_mem_addr;
    BTBYTE              key_link_key[LEN_DEV_LINK_KEY];
} KEY_CONTEXT_T, *KEY_CONTEXT_P;
__packed struct __DEVICEBTJ_ADAPTER_T
{
    /* rnr is short for RemoteNameRequest */
    BTBYTE              rnr_statusx;
    /* Local device address */
    DEV_MEM_ADDR        dev_memaddr;
    BTBYTE              inq_statusx;
    INQ_CONTEXT_P       inq_context;
    LMP_FEATURE_T       lmp_feature;
    CMD_FEATURE_T       cmd_feature;
//    HCI_COMMAND_T       hci_command;
    HCI_MACHINE_T       hci_machine;
    PIN_CONTEXT_T       pin_context;
    KEY_CONTEXT_T       key_context;
    HCI_CONTEXT_T       hci_context[DEVICEMAX_HCI_CONTEXT];
    L2C_CONTEXT_T       l2c_context[DEVICEMAX_L2C_CONTEXT];
    BTWORD              l2c_globals_scid;
    BTBYTE              l2c_globals_iden;
    BTBOOL              sys_initial_flag;
    BTBYTE              sys_initial_count;
    BTWORD              acl_packets_len;
    BTWORD              acl_packets_num;
    BTWORD              acl_packets_len_bak;
    BTWORD              acl_packets_num_bak;
    BTBYTE              uih_credits_buf[sizeof(HCI_COMMON_T) + RFC_FRAME_UIH_LENGTH + 0x01];
    L2C_CONTEXT_P       uih_credits_l2c;
    RFC_CONTEXT_P       uih_credits_rfc;
    DEVICEBTJ_SERVICE_P app_service_header;
#if defined(WIN32)
    USB_CONTEXT_T       usb_context;
    COM_CONTEXT_T       com_context;
    DEVICEBTJ_ADAPTER_P next;
#endif
};
#ifdef WIN32
#include <poppack.h>
#endif
/******************************************************************************
  Routine defines
 *****************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif
    void
    DeviceBtj_Adapter_Init(
        void
    );
    DEVICEBTJ_ADAPTER_P
    DeviceBtj_Adapter_Head(
        void
    );
    BTBOOL
    DeviceBtj_Adapter_Write(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE buffer,
        BTWORD  length
    );
    BTBOOL
    DeviceBtj_Adapter_Update(
        void
    );
    BTBOOL
    DeviceBtj_Adapter_ChkValid(
        DEVICEBTJ_ADAPTER_P adapter
    );
    BTBOOL
    DeviceBtj_Adapter_HasService(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
    DEVICEBTJ_SERVICE_P
    DeviceBtj_Adapter_GetService(
        DEV_MEM_ADDR DevMemAddr
    );
    BTBOOL
    DeviceBtj_Adapter_HasIntance(
        DEVICEBTJ_SERVICE_P service,
        DEV_MEM_ADDR DevMemAddr
    );
#ifdef WIN32
    DEVICEBTJ_ADAPTER_P
    DeviceBtj_Adapter_From_Stack(
        BTPVOID stack
    );
    void
    DeviceBtj_Adapter_Shut(
        void
    );
#endif
#ifdef __cplusplus
}
#endif
#endif /* __DEVICTBTJ_ADAPTER_DOT_H_ */
