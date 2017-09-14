#ifndef __DEVICEBTJ_STACK_HCI_EVT_DOT_H_
#define __DEVICEBTJ_STACK_HCI_EVT_DOT_H_
/*******************************************************************************************
  State machine defines
 *******************************************************************************************/
#define ROLE_SLAVE          0X01
#define ROLE_MASTER         0X02
#define ROLE_CHANGE_SETING  0X04
#define ROLE_CHANGE         0X08




typedef enum _HCI_STATE
{
    HCI_STATE_TYPE,
    HCI_STATE_HEAD_ACL_HANDLE_ONE,
    HCI_STATE_HEAD_ACL_HANDLE_TWO,
    HCI_STATE_HEAD_ACL_LENGTH_ONE,
    HCI_STATE_HEAD_ACL_LENGTH_TWO,
    HCI_STATE_HEAD_ACL_PACKET,
    HCI_STATE_HEAD_SCO_HANDLE_ONE,
    HCI_STATE_HEAD_SCO_HANDLE_TWO,
    HCI_STATE_HEAD_SCO_LENGTH,
    HCI_STATE_HEAD_SCO_PACKET,
    HCI_STATE_HEAD_EVT_CODE,
    HCI_STATE_HEAD_EVT_LENGTH,
    HCI_STATE_HEAD_EVT_PACKET
} HCI_STATE;
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _HCI_MACHINE_T
{
    BTBYTE       hci_state;
    BTWORD       hci_handle;
    BTWORD       hci_machine_uart_idx;
    BTWORD       hci_machine_uart_len;
    BTBYTE       hci_machine_uart_buf[DEVICELEN_HCI_MACHINE_UART];
#if defined(WIN32)
    BTWORD       hci_machine_ausb_head;
    BTWORD       hci_machine_ausb_tail;
    BTBYTE       hci_machine_ausb_buff[0x0400];
#endif
} HCI_MACHINE_T, *HCI_MACHINE_P;
typedef __packed struct _HCI_CONTEXT_T
{
    BTWORD       hci_context_handle;
    DEV_MEM_ADDR hci_context_devaddr;
    BTWORD       hci_packets_pool_len;
    BTBYTE       hci_packets_pool_buf[DEVICELEN_HCI_PACKETS_POOL];
    BTWORD       app_packets_pool_len;
    BTBYTE       app_packets_pool_buf[DEVICELEN_APP_PACKETS_POOL];
} HCI_CONTEXT_T, *HCI_CONTEXT_P;
typedef struct _HCI_EVENT_INQUIRY_RESULT_T
{
    BTBYTE       num_response;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       page_scan_repetition_mode;
    BTBYTE       page_scan_period_mode;
    BTBYTE       reversed;
    DEV_MEM_TYPE class_of_device;
    BTWORD       clock_offset;
} HCI_EVENT_INQUIRY_RESULT_T, *HCI_EVENT_INQUIRY_RESULT_P;
typedef __packed struct _HCI_EVENT_INQUIRY_RESULT_WITH_RSSI_T
{
    BTBYTE       num_response;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       page_scan_repetition_mode;
    BTBYTE       page_scan_period_mode;
    DEV_MEM_TYPE class_of_device;
    BTWORD       clock_offset;
    BTBYTE       rssi;
} HCI_EVENT_INQUIRY_RESULT_WITH_RSSI_T, *HCI_EVENT_INQUIRY_RESULT_WITH_RSSI_P;
typedef __packed struct _HCI_EVENT_CONNECTION_COMPLETE_T
{
    BTBYTE       status;
    BTWORD       connection_handle;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       link_type;
    BTBYTE       encryption_mode;
} HCI_EVENT_CONNECTION_COMPLETE_T, *HCI_EVENT_CONNECTION_COMPLETE_P;
typedef __packed struct _HCI_EVENT_CONNECTION_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
    DEV_MEM_TYPE dev_mem_type;
    BTBYTE       link_type;
} HCI_EVENT_CONNECTION_REQUEST_T, *HCI_EVENT_CONNECTION_REQUEST_P;
typedef __packed struct _HCI_EVENT_DISCONNECTION_COMPLETE_T
{
    BTBYTE       status;
    BTWORD       connection_handle;
    BTBYTE       reason;
} HCI_EVENT_DISCONNECTION_COMPLETE_T, *HCI_EVENT_DISCONNECTION_COMPLETE_P;
typedef __packed struct _HCI_EVENT_COMMAND_COMPLETE_T
{
    BTBYTE       num_packets;
    BTWORD       evt_opcode;
    BTBYTE       evt_return[0x01];
} HCI_EVENT_COMMAND_COMPLETE_T, *HCI_EVENT_COMMAND_COMPLETE_P;
typedef __packed struct _HCI_EVENT_READ_BUFFER_SIZE_T
{
    BTBYTE       status;
    BTWORD       acl_packets_len;
    BTBYTE       sco_packets_len;
    BTWORD       acl_packets_num;
    BTWORD       sco_packets_num;
} HCI_EVENT_READ_BUFFER_SIZE_T, *HCI_EVENT_READ_BUFFER_SIZE_P;
typedef __packed struct _HCI_EVENT_READ_LOCAL_ADDR_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_READ_LOCAL_ADDR_T, *HCI_EVENT_READ_LOCAL_ADDR_P;
typedef __packed struct _HCI_EVENT_READ_LOCAL_NAME_T
{
    BTBYTE       status;
    DEV_MEM_NAME dev_mem_name;
} HCI_EVENT_READ_LOCAL_NAME_T, *HCI_EVENT_READ_LOCAL_NAME_P;
typedef __packed struct _HCI_EVENT_READ_CLASS_OF_DEVICE_T
{
    BTBYTE       status;
    DEV_MEM_TYPE dev_mem_type;
} HCI_EVENT_READ_CLASS_OF_DEVICE_T, *HCI_EVENT_READ_CLASS_OF_DEVICE_P;
typedef __packed struct _HCI_EVENT_NUMBER_OF_COMPLETED_PACKETS_T
{
    BTBYTE       num_of_handles;
    BTWORD       val_of_handle;
    BTWORD       val_of_packet;
} HCI_EVENT_NUMBER_OF_COMPLETED_PACKETS_T, *HCI_EVENT_NUMBER_OF_COMPLETED_PACKETS_P;
typedef __packed struct _HCI_EVENT_LINKKEY_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_LINKKEY_REQUEST_T, *HCI_EVENT_LINKKEY_REQUEST_P;
typedef __packed struct _HCI_EVENT_LINKKEY_NOTIFICATION_T
{
    DEV_MEM_ADDR dev_mem_addr;
    DEV_LINK_KEY dev_link_key;
    BTBYTE       key_type;
} HCI_EVENT_LINKKEY_NOTIFICATION_T, *HCI_EVENT_LINKKEY_NOTIFICATION_P;
typedef __packed struct _HCI_EVENT_PINCODE_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_PINCODE_REQUEST_T, *HCI_EVENT_PINCODE_REQUEST_P;
typedef __packed struct _HCI_EVENT_RETURN_LINK_KEYS_T
{
    BTBYTE       key_num;
    DEV_MEM_ADDR dev_mem_addr;
    DEV_LINK_KEY dev_link_key;
} HCI_EVENT_RETURN_LINK_KEYS_T, *HCI_EVENT_RETURN_LINK_KEYS_P;
typedef __packed struct _HCI_EVENT_REMOTE_NAME_REQUEST_COMPLETE_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
    DEV_MEM_NAME dev_mem_name;
} HCI_EVENT_REMOTE_NAME_REQUEST_COMPLETE_T, *HCI_EVENT_REMOTE_NAME_REQUEST_COMPLETE_P;
typedef __packed struct _HCI_EVENT_REMOTE_NAME_REQUEST_CANCELLED_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_REMOTE_NAME_REQUEST_CANCELLED_T, *HCI_EVENT_REMOTE_NAME_REQUEST_CANCELLED_P;
typedef __packed struct _HCI_EVENT_READ_STORED_LINK_KEY_T
{
    BTBYTE       status;
    BTWORD       max_nums_keys;
    BTWORD       num_keys_read;
} HCI_EVENT_READ_STORED_LINK_KEY_T, *HCI_EVENT_READ_STORED_LINK_KEY_P;
typedef __packed struct _HCI_EVENT_WRITE_STORED_LINK_KEY_T
{
    BTBYTE       status;
    BTBYTE       num_keys_written;
} HCI_EVENT_WRITE_STORED_LINK_KEY_T, *HCI_EVENT_WRITE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_EVENT_DELETE_STORED_LINK_KEY_T
{
    BTBYTE       status;
    BTWORD       num_keys_deleted;
} HCI_EVENT_DELETE_STORED_LINK_KEY_T, *HCI_EVENT_DELETE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_EVENT_LOCAL_SUPPORTED_COMMAND_T
{
    BTBYTE       status;
    BTBYTE       cmd_feature[DEVICELEN_CMD_FEATURE];
} HCI_EVENT_LOCAL_SUPPORTED_COMMAND_T, *HCI_EVENT_LOCAL_SUPPORTED_COMMAND_P;
typedef __packed struct _HCI_EVENT_LOCAL_SUPPORTED_FEATURE_T
{
    BTBYTE       status;
    BTBYTE       lmp_feature[DEVICELEN_LMP_FEATURE];
} HCI_EVENT_LOCAL_SUPPORTED_FEATURE_T, *HCI_EVENT_LOCAL_SUPPORTED_FEATURE_P;
typedef __packed struct _HCI_EVENT_IO_CAPABILITY_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_IO_CAPABILITY_REQUEST_T, *HCI_EVENT_IO_CAPABILITY_REQUEST_P;
typedef __packed struct _HCI_EVENT_USER_CONFIRMATION_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
    BTDWORD      req_numeric;
} HCI_EVENT_USER_CONFIRMATION_REQUEST_T, *HCI_EVENT_USER_CONFIRMATION_REQUEST_P;
typedef __packed struct _HCI_EVENT_ROLE_CHANGE_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       new_role;
} HCI_EVENT_ROLE_CHANGE_T, *HCI_EVENT_ROLE_CHANGE_P;
typedef __packed struct _HCI_EVENT_ENCRPPTION_CHANGE_T
{
    BTBYTE       status;
    BTWORD       connection_handle;
    BTBYTE       Encryption_enable;
} HCI_EVENT_ENCRPPTION_CHANGE_T, *HCI_ENCRPPTION_ROLE_CHANGE_P;

#ifdef WIN32
#include <poppack.h>
#endif
/******************************************************************************
  Routine defines
 *****************************************************************************/
typedef void (*PHCICALLBACK)(DEVICEBTJ_ADAPTER_P adapter, BTPBYTE packet, BTWORD length);
#ifdef __cplusplus
extern "C" {
#endif
    void
    DeviceHci_Callback(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE packet,
        BTWORD  length
    );
    void
    DeviceHci_Events(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD  events,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceHci_Events_Complete(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD  opcode,
        BTPBYTE packet,
        BTWORD length
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STACK_HCI_EVT_DOT_H_ */
