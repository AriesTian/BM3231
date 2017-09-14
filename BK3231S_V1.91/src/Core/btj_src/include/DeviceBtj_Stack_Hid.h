#ifndef __DEVICEBTJ_STACK_HID_DOT_H_
#define __DEVICEBTJ_STACK_HID_DOT_H_
#define HID_HANDSHAKE       0
#define HID_CONTROL         1
#define HID_GET_REPORT      4
#define HID_SET_REPORT      5
#define HID_GET_PROTOCOL    6
#define HID_SET_PROTOCOL    7
#define HID_GET_IDLE        8
#define HID_SET_IDLE        9
#define HID_DATA            10
#define HID_DATC            11
#define KBD_NUMLOCK         (0x01 << 0x00)
#define KBD_CAPSLOCK        (0x01 << 0x01)
#define KBD_SCROLLLOCK      (0x01 << 0x02)
typedef enum
{
    hid_success = 0,                /*!< Successful operation.*/
    hid_busy = 1,                   /*!< Device is busy with previous operation.*/
    hid_invalid_id = 2,             /*!< Invalid report ID.*/
    hid_unsupported = 3,            /*!< Operation is unsupported.*/
    hid_invalid_param = 4,          /*!< Invalid parameter.*/
    hid_failed = 14,                /*!< Unknown failure.*/
    hid_timeout = 15,               /*!< Operation timeout.*/
    hid_resource_error = 16         /*!< Not enough resource to complete operation. (Local error, never reported to remote host/device)*/
} hid_status;
typedef enum
{
    hid_protocol_boot = 0,
    hid_protocol_report = 1
} hid_protocol;
typedef enum
{
    hid_control_op_nop = 0,
    hid_control_op_hard_reset = 1,
    hid_control_op_soft_reset = 2,
    hid_control_op_suspend = 3,
    hid_control_op_exit_suspend = 4,
    hid_control_op_unplug = 5
} hid_control_op;
typedef enum
{
    hid_data_other = 0,
    hid_data_input = 1,
    hid_data_output = 2,
    hid_data_feature = 3
} hid_data_type;
/******************************************************************************
  Structure declarations
 *****************************************************************************/
#ifdef _WINDOWS
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _HID_CONTEXT_T
{
    BTBYTE hid_report;
    BTBYTE hid_protocol;
    BTBYTE hid_idle;
    BTBYTE kbd_numlock;
    BTBYTE kbd_capslock;
    BTBYTE kbd_scrolllock;
    L2C_CONTEXT_P l2c_context_control;
    L2C_CONTEXT_P l2c_context_interrupt;
    DEVICEBTJ_SERVICE_P app_service_header;
} HID_CONTEXT_T, *HID_CONTEXT_P;
typedef __packed struct _HID_HEADER_T
{
    unsigned char trans_param: 4;
    unsigned char trans_type: 4;
} HID_HEADER_T, *HID_HEADER_P;
#ifdef _WINDOWS
#include <poppack.h>
#endif
/******************************************************************************
  Routine defines
 *****************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif
    typedef enum
    {
        HID_CONTROL_CONNECTED,
        HID_CONTROL_PACKET,
        HID_CONTROL_DISCONNECTED,
        HID_INTERRUPT_CONNECTED,
        HID_INTERRUPT_PACKET,
        HID_INTERRUPT_DISCONNECTED,
        HID_CONTROL_DISCONNECTED_REQ,
        HID_INTERRUPT_DISCONNECTED_REQ
    }
    HID_EVENT;
    void
    DeviceHid_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTBYTE  event,
        BTPBYTE packet,
        BTWORD  length
    );
    BTBOOL
    DeviceHid_Send(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        BTPBYTE buffer,
        BTWORD length
    );
    void
    DeviceHid_Reset(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STACK_HID_DOT_H_ */
