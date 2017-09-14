#ifndef __DEVICEBTJ_STATCK_L2C_DOT_H_
#define __DEVICEBTJ_STATCK_L2C_DOT_H_
/******************************************************************************
  Channel defines
 *****************************************************************************/
#define L2C_CHANNEL_NULL                            (0x0000)
#define L2C_CHANNEL_SIGNALLING                      (0x0001)
#define L2C_CHANNEL_CONNECTIONLESS                  (0x0002)
#define L2C_CHANNEL_CONFIGURE                       (0x003F)
/******************************************************************************
  Signals defines
 *****************************************************************************/
#define L2C_SIGNAL_COMMAND_REJECT                   (0x01)
#define L2C_SIGNAL_CONNECT_REQUEST                  (0x02)
#define L2C_SIGNAL_CONNECTION_RESPONSE              (0x03)
#define L2C_SIGNAL_CONFIGURATION_REQUEST            (0x04)
#define L2C_SIGNAL_CONFIGURATION_RESPONSE           (0x05)
#define L2C_SIGNAL_DISCONNECTION_REQUEST            (0x06)
#define L2C_SIGNAL_DISCONNECTION_RESPONSE           (0x07)
#define L2C_SIGNAL_ECHO_REQUEST                     (0x08)
#define L2C_SIGNAL_ECHO_RESPONSE                    (0x09)
#define L2C_SIGNAL_INFO_REQUEST                     (0x0A)
#define L2C_SIGNAL_INFO_RESPONSE                    (0x0B)
/******************************************************************************
  Dirs defines
 *****************************************************************************/
#define L2C_DIR_NOTHING                             (0x00)
#define L2C_DIR_OUTGOING                            (0x01)
#define L2C_DIR_INCOMING                            (0x02)
/******************************************************************************
  PSMs defines
 *****************************************************************************/
#define L2C_PSM_SDP                                 (0x0001)
#define L2C_PSM_RFC                                 (0x0003)
#define L2C_PSM_TCP                                 (0x0005)
#define L2C_PSM_TCS                                 (0x0007)
#define L2C_PSM_BNEP                                (0x000F)
#define L2C_PSM_HID_CONTROL                         (0x0011)
#define L2C_PSM_HID_INTERRUPT                       (0x0013)
#define L2C_PSM_UPNP                                (0x0015)
#define L2C_PSM_AVCTP                               (0x0017)
#define L2C_PSM_AVDTP                               (0x0019)
/******************************************************************************
  Const defines
 *****************************************************************************/
#define L2C_CONNECT_RESULTS_SUCCESSFUL              (0x0000)
#define L2C_CONNECT_RESULTS_PENDING                 (0x0001)
#define L2C_CONNECT_RESULTS_PSM_NOT_SUPPORTED       (0x0002)
#define L2C_CONNECT_RESULTS_SECURITY_BLOCK          (0x0003)
#define L2C_CONNECT_RESULTS_NO_RESOURCES_AVAILABLE  (0x0004)
#define L2C_CONNECT_STATUSX_NOTHING                 (0x0000)
#define L2C_CONNECT_STATUSX_PENDING_AUTHENTICATION  (0x0001)
#define L2C_CONNECT_STATUSX_PENDING_AUTHORIZATION   (0x0002)
#define L2C_CONFIGS_RESULTS_SUCCESS                 (0x0000)
#define L2C_CONFIGS_RESULTS_UNACCEPTABLE            (0x0001)
#define L2C_CONFIGS_RESULTS_REJECTED                (0x0002)
#define L2C_CONFIGS_RESULTS_UNKNOWN_OPTIONS         (0x0003)
#define L2C_CONFIGS_OPTTYPE_MTU                     (0x01)
#define L2C_CONFIGS_OPTTYPE_FLUSH                   (0x02)
#define L2C_CONFIGS_DEFAULT_MTU                     (0x0080)
#define L2C_CONFIGS_DEFAULT_FLUSH                   (0xffff)
#define L2C_INFORES_SUCCESS                         (0x0000)
#define L2C_INFORES_NOTSUPPORTED                    (0x0001)
/******************************************************************************
  State defines
 *****************************************************************************/
typedef enum
{
    L2C_MAIN_STATE_CLOSED,
    L2C_MAIN_STATE_WAIT_CONNECT,
    L2C_MAIN_STATE_WAIT_CONNECT_RSP,
    L2C_MAIN_STATE_CONFIG,
    L2C_MAIN_STATE_OPEN,
    L2C_MAIN_STATE_WAIT_DISCONNECT
} L2C_MAIN_STATE;
typedef enum
{
    L2C_CONF_STATE_WAIT_CONFIG,
    L2C_CONF_STATE_WAIT_SEND_CONFIG,
    L2C_CONF_STATE_WAIT_CONFIG_REQ_RSP,
    L2C_CONF_STATE_WAIT_CONFIG_RSP,
    L2C_CONF_STATE_WAIT_CONFIG_REQ
} L2C_CONF_STATE;
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _L2C_CONTEXT_T
{
    BTBYTE l2c_dir;
    BTWORD l2c_psm;
    BTWORD l2c_scid;
    BTWORD l2c_dcid;
    BTWORD l2c_dmtu;
    BTBYTE l2c_diden;
    BTBYTE l2c_main_state;
    BTBYTE l2c_conf_state;
    HCI_CONTEXT_P hci_context;
} L2C_CONTEXT_T, *L2C_CONTEXT_P;
typedef __packed struct _L2C_HEADERS_T
{
    BTWORD l2c_length;
    BTWORD l2c_chan;
} L2C_HEADERS_T, *L2C_HEADERS_P;
typedef __packed struct _L2C_REJECT_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTBYTE packet_reason;
} L2C_REJECT_REQ_T, *L2C_REJECT_REQ_P;
typedef __packed struct _L2C_CONNECT_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_psm;
    BTWORD packet_scid;
} L2C_CONNECT_REQ_T, *L2C_CONNECT_REQ_P;
typedef __packed struct _L2C_CONNECT_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_scid;
    BTWORD packet_result;
    BTWORD packet_status;
} L2C_CONNECT_RSP_T, *L2C_CONNECT_RSP_P;
typedef __packed struct _L2C_CONFIGURE_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_flags;
    BTBYTE option_type_one;
    BTBYTE option_length_one;
    BTWORD option_option_one;
   // BTBYTE option_type_two;
   // BTBYTE option_length_two;
   // BTWORD option_option_two;
} L2C_CONFIGURE_REQ_T, *L2C_CONFIGURE_REQ_P;
typedef __packed struct _L2C_CONFIGURE_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_scid;
    BTWORD packet_flags;
    BTWORD packet_result;
   // BTBYTE option_type_one;
   // BTBYTE option_length_one;
   // BTWORD option_option_one;
   // BTBYTE option_type_two;
   // BTBYTE option_length_two;
   // BTWORD option_option_two;
} L2C_CONFIGURE_RSP_T, *L2C_CONFIGURE_RSP_P;
typedef __packed struct _L2C_DISCONNECT_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_scid;
} L2C_DISCONNECT_REQ_T, *L2C_DISCONNECT_REQ_P;
typedef __packed struct _L2C_DISCONNECT_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_scid;
} L2C_DISCONNECT_RSP_T, *L2C_DISCONNECT_RSP_P;
typedef __packed struct _L2C_ECHO_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
} L2C_ECHO_REQ_T, *L2C_ECHO_REQ_P;
typedef __packed struct _L2C_ECHO_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
} L2C_ECHO_RSP_T, *L2C_ECHO_RSP_P;
typedef __packed struct _L2C_INFO_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_infotype;
} L2C_INFO_REQ_T, *L2C_INFO_REQ_P;
typedef __packed struct _L2C_INFO_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_infotype;
    BTWORD packet_result;
    BTWORD packet_infotype1;
    BTWORD packet_result1;

} L2C_INFO_RSP_T, *L2C_INFO_RSP_P;
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
    DeviceL2c_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD  handle,
        BTPBYTE packet,
        BTWORD  length
    );
    DEVICEBTJ_SERVICE_P
    DeviceL2c_Service(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context
    );
    void
    DeviceL2c_Packets(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceL2c_Send_Reject(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_ConnectionReq(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        HCI_CONTEXT_P hci_context,
        BTWORD psm
    );
    void
    DeviceL2c_Send_ConnectionRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_ConfigurationReq(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_ConfigurationRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    BTBOOL
    DeviceL2c_Send_DisconnectionReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context
    );
    void
    DeviceL2c_Send_DisconnectionRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTBYTE l2c_iden,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_EchoReq(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_EchoRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_ECHO_REQ_P req_struct
    );
    void
    DeviceL2c_Send_InfoReq(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_InfoRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_INFO_REQ_P req_struct
    );
    void
    DeviceL2c_Reset(
        L2C_CONTEXT_P l2c_context
    );



#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STATCK_L2C_DOT_H_ */
