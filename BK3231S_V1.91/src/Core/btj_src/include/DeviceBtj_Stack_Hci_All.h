#ifndef __DEVICEBTJ_STATCK_HCI_COMMON_DOT_H_
#define __DEVICEBTJ_STATCK_HCI_COMMON_DOT_H_
/*******************************************************************************************
  Defines packet type
 *******************************************************************************************/
#define HCI_PACKET_CMD                                    (0x01)
#define HCI_PACKET_ACL                                    (0x02)
#define HCI_PACKET_SCO                                    (0x03)
#define HCI_PACKET_EVT                                    (0x04)
#define HCI_HANDLE_VALUE(x)                               ((x & 0x0fff))
#define HCI_PBFLAG_VALUE(x)                               ((x & 0x3000) >> 12)
#define HCI_PBFLAG_CONTINUE                               (0x01)
#define HCI_PBFLAG_FIRST                                  (0x02)
#define HCI_BCFLAG_VALUE(x)                               ((x & 0xC000) >> 14)
#define HCI_BCFLAG_POINT                                  (0x00)
#define HCI_BCFLAG_ACTIVE                                 (0x01)
#define HCI_BCFLAG_PACKED                                 (0x02)
/*******************************************************************************************
  OCF opcode defines - Link Control Commands
 ******************************************************************************************/
#define HCI_CMD_INQUIRY                                   (0x0401)
#define HCI_CMD_INQUIRY_CANCEL                            (0x0402)
#define HCI_CMD_PERIODIC_INQUIRY_MODE                     (0x0403)
#define HCI_CMD_EXIT_PERIODIC_INQUIRY_MODE                (0x0404)
#define HCI_CMD_CREATE_CONNECTION                         (0x0405)
#define HCI_CMD_DISCONNECT                                (0x0406)
#define HCI_CMD_ADD_SCO_CONNECTION                        (0x0407)
#define HCI_CMD_CREATE_CONNECTION_CANCEL                  (0x0408)
#define HCI_CMD_ACCEPT_CONNECTION                         (0x0409)
#define HCI_CMD_REJECT_CONNECTION                         (0x040A)
#define HCI_CMD_LINK_KEY_REPLY                            (0x040B)
#define HCI_CMD_LINK_KEY_NEGATIVE_REPLY                   (0x040C)
#define HCI_CMD_PIN_CODE_REPLY                            (0x040D)
#define HCI_CMD_PIN_CODE_NEGATIVE_REPLY                   (0x040E)
#define HCI_CMD_CHANGE_CONN_PKT_TYPE                      (0x040F)
#define HCI_CMD_AUTH_REQ                                  (0x0411)
#define HCI_CMD_SET_CONN_ENCRYPTION                       (0x0413)
#define HCI_CMD_CHANGE_CONN_LINK_KEY                      (0x0415)
#define HCI_CMD_MASTER_LINK_KEY                           (0x0417)
#define HCI_CMD_REMOTE_NAME_REQUEST                       (0x0419)
#define HCI_CMD_REMOTE_NAME_REQUEST_CANCEL                (0x041A)
#define HCI_CMD_READ_REMOTE_SUPPORTED_FEATURES            (0x041B)
#define HCI_CMD_READ_REMOTE_EXTENTED_FEATURES             (0x041C)
#define HCI_CMD_READ_REMOTE_VERSION_INFOMATION            (0x041D)
#define HCI_CMD_READ_CLOCK_OFFSET                         (0x041F)
/* 1.2 Features */
#define HCI_CMD_READ_LMP_HANDLE                           (0x0420)
#define HCI_CMD_EXCHANGE_FIXED_INFO                       (0x0421)
#define HCI_CMD_EXCHANGE_ALIAS_INFO                       (0x0422)
#define HCI_CMD_PRIVATE_PAIRING_REQ_REPLY                 (0x0423)
#define HCI_CMD_PRIVATE_PAIRING_REQ_NEG_REPLY             (0x0424)
#define HCI_CMD_GENERATED_ALIAS                           (0x0425)
#define HCI_CMD_ALIAS_ADDRESS_REQ_REPLY                   (0x0426)
#define HCI_CMD_ALIAS_ADDRESS_REQ_NEG_REPLY               (0x0427)
#define HCI_CMD_SETUP_SYNCHRONOUS_CONN                    (0x0428)
#define HCI_CMD_ACCEPT_SYNCHRONOUS_CONN_REQ               (0x0429)
#define HCI_CMD_REJECT_SYNCHRONOUS_CONN_REQ               (0x042A)
/* Simple Pairing */
#define HCI_CMD_IO_CAPABILITY_RESPONSE                    (0x042B)
#define HCI_CMD_USER_CONFIRMATION_REQUEST_REPLY           (0x042C)
#define HCI_CMD_USER_CONFIRMATION_REQUEST_NEG_REPLY       (0x042D)
#define HCI_CMD_USER_PASSKEY_REQUEST_REPLY                (0x042E)
#define HCI_CMD_USER_PASSKEY_REQUEST_NEG_REPLY            (0x042F)
#define HCI_CMD_REMOTE_OOB_DATA_REQUEST_REPLY             (0x0430)
#define HCI_CMD_REMOTE_OOB_DATA_REQUEST_NEG_REPLY         (0x0433)
#define HCI_CMD_IO_CAPABILITY_REQUEST_NEG_REPLY           (0x0434)
/*******************************************************************************************
  OP CODE defines - Link Policy Commands
 ******************************************************************************************/
#define HCI_CMD_HOLD_MODE                                 (0x0801)
#define HCI_CMD_SNIFF_MODE                                (0x0803)
#define HCI_CMD_EXIT_SNIFF_MODE                           (0x0804)
#define HCI_CMD_PARK_MODE                                 (0x0805)
#define HCI_CMD_EXIT_PARK_MODE                            (0x0806)
#define HCI_CMD_QOS_SETUP                                 (0x0807)
#define HCI_CMD_ROLE_DISCOVERY                            (0x0809)
#define HCI_CMD_SWITCH_ROLE                               (0x080B)
#define HCI_CMD_READ_LINK_POLICY_SETTINGS                 (0x080C)
#define HCI_CMD_WRITE_LINK_POLICY_SETTINGS                (0x080D)
/* 1.2 Features */
#define HCI_CMD_READ_DEFAULT_LINK_POLICY_SETTINGS         (0x080E)
#define HCI_CMD_WRITE_DEFAULT_LINK_POLICY_SETTINGS        (0x080F)
#define HCI_CMD_FLOW_SPEC                                 (0x0810)
#define HCI_CMD_SNIFF_SUB_RATE                            (0x0811)
/*******************************************************************************************
  OP CODE defines - Host Controller and Baseband Commands
 ******************************************************************************************/
#define HCI_CMD_SET_EVT_MASK                              (0x0C01)
#define HCI_CMD_RESET                                     (0x0C03)
#define HCI_CMD_SET_EVT_FILTER                            (0x0C05)
#define HCI_CMD_FLUSH                                     (0x0C08)
#define HCI_CMD_READ_PIN_TYPE                             (0x0C09)
#define HCI_CMD_WRITE_PIN_TYPE                            (0x0C0A)
#define HCI_CMD_CREATE_NEW_UNIT_KEY                       (0x0C0B)
#define HCI_CMD_READ_STORED_LINK_KEY                      (0x0C0D)
#define HCI_CMD_WRITE_STORED_LINK_KEY                     (0x0C11)
#define HCI_CMD_DELETE_STORED_LINK_KEY                    (0x0C12)
#define HCI_CMD_WRITE_LOCAL_NAME                          (0x0C13)
#define HCI_CMD_READ_LOCAL_NAME                           (0x0C14)
#define HCI_CMD_READ_CONN_ACCEPT_TIMEOUT                  (0x0C15)
#define HCI_CMD_WRITE_CONN_ACCEPT_TIMEOUT                 (0x0C16)
#define HCI_CMD_READ_PAGE_TIMEOUT                         (0x0C17)
#define HCI_CMD_WRITE_PAGE_TIMEOUT                        (0x0C18)
#define HCI_CMD_READ_SCAN_ENABLE                          (0x0C19)
#define HCI_CMD_WRITE_SCAN_ENABLE                         (0x0C1A)
#define HCI_CMD_READ_PAGESCAN_ACTIVITY                    (0x0C1B)
#define HCI_CMD_WRITE_PAGESCAN_ACTIVITY                   (0x0C1C)
#define HCI_CMD_READ_INQUIRYSCAN_ACTIVITY                 (0x0C1D)
#define HCI_CMD_WRITE_INQUIRYSCAN_ACTIVITY                (0x0C1E)
#define HCI_CMD_READ_AUTH_ENABLE                          (0x0C1F)
#define HCI_CMD_WRITE_AUTH_ENABLE                         (0x0C20)
#define HCI_CMD_READ_ENC_MODE                             (0x0C21)
#define HCI_CMD_WRITE_ENC_MODE                            (0x0C22)
#define HCI_CMD_READ_CLASS_OF_DEVICE                      (0x0C23)
#define HCI_CMD_WRITE_CLASS_OF_DEVICE                     (0x0C24)
#define HCI_CMD_READ_VOICE_SETTING                        (0x0C25)
#define HCI_CMD_WRITE_VOICE_SETTING                       (0x0C26)
#define HCI_CMD_READ_AUTO_FLUSH_TIMEOUT                   (0x0C27)
#define HCI_CMD_WRITE_AUTO_FLUSH_TIMEOUT                  (0x0C28)
#define HCI_CMD_READ_NUM_BCAST_RETXS                      (0x0C29)
#define HCI_CMD_WRITE_NUM_BCAST_RETXS                     (0x0C2A)
#define HCI_CMD_READ_HOLD_MODE_ACTIVITY                   (0x0C2B)
#define HCI_CMD_WRITE_HOLD_MODE_ACTIVITY                  (0x0C2C)
#define HCI_CMD_READ_TX_POWER_LEVEL                       (0x0C2D)
#define HCI_CMD_READ_SCO_FLOW_CON_ENABLE                  (0x0C2E)
#define HCI_CMD_WRITE_SCO_FLOW_CON_ENABLE                 (0x0C2F)
#define HCI_CMD_SET_HCTOHOST_FLOW_CONTROL                 (0x0C31)
#define HCI_CMD_HOST_BUFFER_SIZE                          (0x0C33)
#define HCI_CMD_HOST_NUM_COMPLETED_PACKETS                (0x0C35)
#define HCI_CMD_READ_LINK_SUPERV_TIMEOUT                  (0x0C36)
#define HCI_CMD_WRITE_LINK_SUPERV_TIMEOUT                 (0x0C37)
#define HCI_CMD_READ_NUM_SUPPORTED_IAC                    (0x0C38)
#define HCI_CMD_READ_CURRENT_IAC_LAP                      (0x0C39)
#define HCI_CMD_WRITE_CURRENT_IAC_LAP                     (0x0C3A)
#define HCI_CMD_READ_PAGESCAN_PERIOD_MODE                 (0x0C3B)
#define HCI_CMD_WRITE_PAGESCAN_PERIOD_MODE                (0x0C3C)
#define HCI_CMD_READ_PAGESCAN_MODE                        (0x0C3D)
#define HCI_CMD_WRITE_PAGESCAN_MODE                       (0x0C3E)
/* 1.2 Features */
#define HCI_CMD_SET_AFH_CHANNEL_CLASS                     (0x0C3F)
#define HCI_CMD_READ_INQUIRY_SCAN_TYPE                    (0x0C42)
#define HCI_CMD_WRITE_INQUIRY_SCAN_TYPE                   (0x0C43)
#define HCI_CMD_READ_INQUIRY_MODE                         (0x0C44)
#define HCI_CMD_WRITE_INQUIRY_MODE                        (0x0C45)
#define HCI_CMD_READ_PAGE_SCAN_TYPE                       (0x0C46)
#define HCI_CMD_WRITE_PAGE_SCAN_TYPE                      (0x0C47)
#define HCI_CMD_READ_AFH_CHANNEL_CLASS_M                  (0x0C48)
#define HCI_CMD_WRITE_AFH_CHANNEL_CLASS_M                 (0x0C49)
#define HCI_CMD_READ_ANON_MODE                            (0x0C4A)
#define HCI_CMD_WRITE_ANON_MODE                           (0x0C4B)
#define HCI_CMD_READ_ALIAS_AUTH_ENABLE                    (0x0C4C)
#define HCI_CMD_WRITE_ALIAS_AUTH_ENABLE                   (0x0C4D)
#define HCI_CMD_READ_ANON_ADDR_CHANGE_PARAMS              (0x0C4E)
#define HCI_CMD_WRITE_ANON_ADDR_CHANGE_PARAMS             (0x0C4F)
#define HCI_CMD_RESET_FIXED_ADDRESS_ATTEMPTS_COUNTER      (0x0C50)
/* 2.1 Features */
#define HCI_CMD_READ_EXTENDED_INQUIRY_RESPONSE_DATA       (0x0C51)
#define HCI_CMD_WRITE_EXTENDED_INQUIRY_RESPONSE_DATA      (0x0C52)
#define HCI_CMD_REFRESH_ENCRYPTION_KEY                    (0x0C53)
#define HCI_CMD_READ_SIMPLE_PAIRING_MODE                  (0x0C55)
#define HCI_CMD_WRITE_SIMPLE_PAIRING_MODE                 (0x0C56)
#define HCI_CMD_READ_LOCAL_OOB_DATA                       (0x0C57)
#define HCI_CMD_READ_INQUIRY_RESPONSE_TX_POWER_LEVEL      (0x0C58)
#define HCI_CMD_WRITE_INQUIRY_TRANSMIT_POWER_LEVEL        (0x0C59)
#define HCI_CMD_ENHANCED_FLUSH                            (0x0C5F)
#define HCI_CMD_SEND_KEYPRESS_NOTIFICATION                (0x0C60)
#define HCI_CMD_WRITE_LOCAL_ADDR                          (0xFC1A)

/*******************************************************************************************
  OP CODE defines - Informational Parameters
 ******************************************************************************************/
#define HCI_CMD_READ_LOCAL_VERSION_INFORMATION            (0x1001)
/* 1.2 Feature */
#define HCI_CMD_READ_LOCAL_SUPPORTED_COMMANDS             (0x1002)
#define HCI_CMD_READ_LOCAL_SUPPORTED_FEATURES             (0x1003)
/* 1.2 Feature */
#define HCI_CMD_READ_LOCAL_EXTTENDED_FEATURES             (0x1004)
#define HCI_CMD_READ_BUFFER_SIZE                          (0x1005)
#define HCI_CMD_READ_COUNTRY_CODE                         (0x1007)
#define HCI_CMD_READ_BD_ADDR                              (0x1009)
/*******************************************************************************************
  OP CODE defines - Status Parameters
 ******************************************************************************************/
#define HCI_CMD_READ_FAILED_CONTACT_COUNT                 (0x1401)
#define HCI_CMD_RESET_FAILED_CONTACT_COUNT                (0x1402)
#define HCI_CMD_READ_LINK_QUALITY                         (0x1403)
#define HCI_CMD_READ_RSSI                                 (0x1405)
/* 1.2 Features */
#define HCI_CMD_READ_AFH_CHANNEL_MAP                      (0x1406)
#define HCI_CMD_READ_CLOCK                                (0x1407)
/*******************************************************************************************
  OP CODE defines - Testing Parameters
 ******************************************************************************************/
#define HCI_CMD_READ_LOOPBACK_MODE                        (0x1801)
#define HCI_CMD_WRITE_LOOPBACK_MODE                       (0x1802)
#define HCI_CMD_ENABLE_DUT_MODE                           (0x1803)
#define HCI_CMD_WRITE_SIMPLE_PAIRING_DEBUG_MODE           (0x1804)
/*******************************************************************************************
  Event defines - these are events as per the HCI definition
 *******************************************************************************************/
#define HCI_EVT_INQUIRY_COMPLETE                          (0x01)
#define HCI_EVT_INQUIRY_RESULT                            (0x02)
#define HCI_EVT_CONNECTION_COMPLETE                       (0x03)
#define HCI_EVT_CONNECTION_REQUEST                        (0x04)
#define HCI_EVT_DISCONNECTION_COMPLETE                    (0x05)
#define HCI_EVT_AUTHENTICATION_COMPLETE                   (0x06)
#define HCI_EVT_REMOTE_NAME_REQUEST_COMPLETE              (0x07)
#define HCI_EVT_ENCRYPTION_CHANGE                         (0x08)
#define HCI_EVT_CHANGE_CONNECTION_LINK_KEY_COMPLETE       (0x09)
#define HCI_EVT_MASTER_LINK_KEY_COMPLETE                  (0x0A)
#define HCI_EVT_READ_REMOTE_SUPPORTED_FEATURES_COMPLETE   (0x0B)
#define HCI_EVT_READ_REMOTE_VERSION_INFORMATION_COMPLETE  (0x0C)
#define HCI_EVT_QOS_SETUP_COMPLETE                        (0x0D)
#define HCI_EVT_COMMAND_COMPLETE                          (0x0E)
#define HCI_EVT_COMMAND_STATUS                            (0x0F)
#define HCI_EVT_HARDWARE_ERROR                            (0x10)
#define HCI_EVT_FLUSH_OCCURRED                            (0x11)
#define HCI_EVT_ROLE_CHANGE                               (0x12)
#define HCI_EVT_NUMBER_OF_COMPLETED_PACKETS               (0x13)
#define HCI_EVT_MODE_CHANGE                               (0x14)
#define HCI_EVT_RETURN_LINK_KEYS                          (0x15)
#define HCI_EVT_PIN_CODE_REQ                              (0x16)
#define HCI_EVT_LINK_KEY_REQ                              (0x17)
#define HCI_EVT_LINK_KEY_NOTIFICATION                     (0x18)
#define HCI_EVT_LOOPBACK_COMMAND                          (0x19)
#define HCI_EVT_DATA_BUFFER_OVERFLOW                      (0x1A)
#define HCI_EVT_MAX_SLOTS_CHANGE                          (0x1B)
#define HCI_EVT_READ_CLOCK_OFFSET_COMPLETE                (0x1C)
#define HCI_EVT_CONN_PACKET_TYPE_CHANGED                  (0x1D)
#define HCI_EVT_QOS_VIOLATION                             (0x1E)
#define HCI_EVT_PAGE_SCAN_MODE_CHANGE                     (0x1F)
#define HCI_EVT_PAGE_SCAN_REP_MODE_CHANGE                 (0x20)
/* 1.2 Events */
#define HCI_EVT_FLOW_SPECIFICATION_COMPLETE               (0x21)
#define HCI_EVT_INQUIRY_RESULT_WITH_RSSI                  (0x22)
#define HCI_EVT_READ_REMOTE_EXTENDED_FEATURES_COMPLETE    (0x23)
#define HCI_EVT_FIXED_ADDRESS                             (0x24)
#define HCI_EVT_ALIAS_ADDRESS                             (0x25)
#define HCI_EVT_GENERATE_ALIAS_REQ                        (0x26)
#define HCI_EVT_ACTIVE_ADDRESS                            (0x27)
#define HCI_EVT_ALLOW_PRIVATE_PAIRING                     (0x28)
#define HCI_EVT_ALIAS_ADDRESS_REQ                         (0x29)
#define HCI_EVT_ALIAS_NOT_RECOGNISED                      (0x2A)
#define HCI_EVT_FIXED_ADDRESS_ATTEMPT                     (0x2B)
#define HCI_EVT_SYNC_CONNECTION_COMPLETE                  (0x2C)
#define HCI_EVT_SYNC_CONNECTION_CHANGED                   (0x2D)
/* 2.1 Events */
#define HCI_EVT_SNIFF_SUBRATING                           (0x2E)
#define HCI_EVT_EXTENDED_INQUIRY_RESULT                   (0x2F)
#define HCI_EVT_ENCRYPTION_KEY_REFRESH_COMPLETE           (0x30)
#define HCI_EVT_IO_CAPABILITY_REQUEST                     (0x31)
#define HCI_EVT_IO_CAPABILITY_RESPONSE                    (0x32)
#define HCI_EVT_USER_CONFIRMATION_REQUEST                 (0x33)
#define HCI_EVT_USER_PASSKEY_REQUEST                      (0x34)
#define HCI_EVT_REMOTE_OOB_DATA_REQUEST                   (0x35)
#define HCI_EVT_SIMPLE_PAIRING_COMPLETE                   (0x36)
#define HCI_EVT_LINK_SUPERVISION_TIMEOUT_CHANGE           (0x38)
#define HCI_EVT_ENHANCED_FLUSH_COMPLETE                   (0x39)
#define HCI_EVT_USER_PASSKEY_NOTIFICATION                 (0x3B)
#define HCI_EVT_KEYPRESS_NOTIFICATION                     (0x3C)
#define HCI_EVT_REMOTE_HOST_SUPPORTED_FEATURES            (0x3D)
/******************************************************************************
  HCI Error codes
 *****************************************************************************/
#define HCI_ERR_SUCCESS                                   (0x00)
#define HCI_ERR_UNKNOWN_COMMAND                           (0x01)
#define HCI_ERR_UNKNOWN_CONNECTION                        (0x02)
#define HCI_ERR_HARDWARE_FAIL                             (0x03)
#define HCI_ERR_PAGE_TIMEOUT                              (0x04)
#define HCI_ERR_AUTH_FAIL                                 (0x05)
#define HCI_ERR_KEY_MISSING                               (0x06)
#define HCI_ERR_MEMORY_FULL                               (0x07)
#define HCI_ERR_CONN_TIMEOUT                              (0x08)
#define HCI_ERR_MAX_NR_OF_CONNS                           (0x09)
#define HCI_ERR_MAX_NR_OF_SCO                             (0x0A)
#define HCI_ERR_MAX_NR_OF_ACL                             (0x0B)
#define HCI_ERR_COMMAND_DISALLOWED                        (0x0C)
#define HCI_ERR_REJECT_LIMITED_RESOURCES                  (0x0D) /* no resource */
#define HCI_ERR_REJECT_SECURITY_REASON                    (0x0E) /* security violation */
#define HCI_ERR_REJECT_UNACCEPTABLE                       (0x0F) /* personal device */
#define HCI_ERR_HOST_TIMEOUT                              (0x10)
#define HCI_ERR_UNSUPPORTED_FEATURE                       (0x11) /* or incorrect param value */
#define HCI_ERR_ILLEGAL_FORMAT                            (0x12)
#define HCI_ERR_OETC_USER                                 (0x13) /* other end terminated */
#define HCI_ERR_OETC_LOW_RESOURCE                         (0x14) /* other end terminated */
#define HCI_ERR_OETC_POWERING_OFF                         (0x15) /* other end terminated */
#define HCI_ERR_CONN_TERM_LOCAL_HOST                      (0x16) /* local host terminated */
#define HCI_ERR_AUTH_REPEATED                             (0x17)
#define HCI_ERR_PAIRING_NOT_ALLOWED                       (0x18)
#define HCI_ERR_UNKNOWN_LMP_PDU                           (0x19)
#define HCI_ERR_UNSUPPORTED_REM_FEATURE                   (0x1A) /* HCI_ERROR_UNSUPPORTED_LMP_FEATURE */
#define HCI_ERR_SCO_OFFSET_REJECTED                       (0x1B)
#define HCI_ERR_SCO_INTERVAL_REJECTED                     (0x1C)
#define HCI_ERR_SCO_AIR_MODE_REJECTED                     (0x1D)
#define HCI_ERR_INVALID_LMP_PARAMETERS                    (0x1E)
#define HCI_ERR_UNSPECIFIED                               (0x1F)
#define HCI_ERR_UNSUPP_LMP_PARAM                          (0x20)
#define HCI_ERR_ROLE_CHANGE_NOT_ALLOWED                   (0x21)
#define HCI_ERR_LMP_RESPONSE_TIMEOUT                      (0x22)
#define HCI_ERR_LMP_TRANSACTION_COLLISION                 (0x23)
#define HCI_ERR_LMP_PDU_NOT_ALLOWED                       (0x24)
#define HCI_ERR_ENC_MODE_NOT_ACCEPTABLE                   (0x25)
#define HCI_ERR_UNIT_KEY_USED                             (0x26)
#define HCI_ERR_QOS_NOT_SUPPORTED                         (0x27)
#define HCI_ERR_INSTANT_PASSED                            (0x28)
#define HCI_ERR_PAIR_UNIT_KEY_NO_SUPPORT                  (0x29)
#define HCI_ERR_DIFFERENT_TRANSACTION_COLLISION           (0x2A)
#define HCI_ERR_SCM_INSUFFICIENT_RESOURCES                (0x2B)
#define HCI_ERR_QOS_UNACCEPTABLE_PARAMETER                (0x2C)
#define HCI_ERR_QOS_REJECTED                              (0x2D)
#define HCI_ERR_CHANNEL_CLASS_NO_SUPPORT                  (0x2E)
#define HCI_ERR_INSUFFICIENT_SECURITY                     (0x2F)
#define HCI_ERR_PARAM_OUT_OF_MAND_RANGE                   (0x30)
#define HCI_ERR_SCM_NO_LONGER_REQD                        (0x31)
#define HCI_ERR_ROLE_SWITCH_PENDING                       (0x32)
#define HCI_ERR_SCM_PARAM_CHANGE_PENDING                  (0x33)
#define HCI_ERR_RESVD_SLOT_VIOLATION                      (0x34)
#define HCI_ERR_ROLE_SWITCH_FAILED                        (0x35)
#define HCI_ERR_INQUIRY_RESPONSE_DATA_TOO_LARGE           (0x36)
#define HCI_ERR_SP_NOT_SUPPORTED_BY_HOST                  (0x37)
#define HCI_ERR_HOST_BUSY_PAIRING                         (0x38)
/******************************************************************************
  HCI Link Type Values
 *****************************************************************************/
#define HCI_LINK_TYPE_SCO                                 (0x00)
#define HCI_LINK_TYPE_ACL                                 (0x01)
#define HCI_LINK_TYPE_ESCO                                (0x02)
#define HCI_LINK_TYPE_DONT_CARE                           (0x03)
/******************************************************************************
  HCI Version Information Values
 *****************************************************************************/
#define HCI_VER_1_0                                       (0x00)
#define HCI_VER_1_1                                       (0x01)
#define HCI_VER_1_2                                       (0x02)
#define HCI_VER_2_0                                       (0x03)
#define HCI_VER_2_1                                       (0x04)
/******************************************************************************
  HCI miscellaneous common fields
 *****************************************************************************/
#define HCI_MASTER                                        (0x00)
#define HCI_SLAVE                                         (0x01)
#define HCI_MASTER_SLAVE_UNKNOWN                          (0x02)
#define HCI_LINK_KEY_SEMIPERM                             (0x00)
#define HCI_LINK_KEY_TEMP                                 (0x01)
#define HCI_LINK_ENC_OFF                                  (0x00)
#define HCI_LINK_ENC_ON                                   (0x01)
#define HCI_QOS_NO_TRAFFIC                                (0x00)
#define HCI_QOS_BEST_EFFORT                               (0x01)
#define HCI_QOS_GUARANTEED                                (0x02)
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _HCI_STRUCT_COMMON_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_COMMON_T, *HCI_STRUCT_COMMON_P;
typedef __packed struct _HCI_STRUCT_INQUIRY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_lap[0x03];
    BTBYTE       param_length;
    BTBYTE       param_response;
} HCI_STRUCT_INQUIRY_T, *HCI_STRUCT_INQUIRY_P;
typedef __packed struct _HCI_STRUCT_INQUIRY_CANCEL_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_INQUIRY_CANCEL_T, *HCI_STRUCT_INQUIRY_CANCEL_P;
typedef __packed struct _HCI_STRUCT_CONNECT_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_bd_addr;
    BTWORD       param_packet_type;
    BTBYTE       param_page_scan_repetition_mode;
    BTBYTE       param_reversed;
    BTWORD       param_clock_offset;
    BTBYTE       param_allow_role_switch;
} HCI_STRUCT_CONNECT_T, *HCI_STRUCT_CONNECT_P;
typedef __packed struct _HCI_STRUCT_CONNECT_CANCEL_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_CONNECT_CANCEL_T, *HCI_STRUCT_CONNECT_CANCEL_P;
typedef __packed struct _HCI_STRUCT_DISCONNECT_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
    BTBYTE       param_reason;
} HCI_STRUCT_DISCONNECT_T, *HCI_STRUCT_DISCONNECT_P;
typedef __packed struct _HCI_STRUCT_ACCEPT_CONNECTION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_role;
} HCI_STRUCT_ACCEPT_CONNECTION_T, *HCI_STRUCT_ACCEPT_CONNECTION_P;
typedef __packed struct _HCI_STRUCT_REJECT_CONNECTION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_reason;
} HCI_STRUCT_REJECT_CONNECTION_T, *HCI_STRUCT_REJECT_CONNECTION_P;
typedef __packed struct _HCI_STRUCT_LINK_KEY_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    DEV_LINK_KEY param_linkkey;
} HCI_STRUCT_LINK_KEY_REPLY_T, *HCI_STRUCT_LINK_KEY_REPLY_P;
typedef __packed struct _HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_T, *HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_PIN_CODE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_pincode_length;
    BTBYTE       param_pincode_buffer[MAX_PIN_CODE];
} HCI_STRUCT_PIN_CODE_REPLY_T, *HCI_STRUCT_PIN_CODE_REPLY_P;




typedef __packed struct _HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_T, *HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_P;

typedef __packed struct _HCI_STRUCT_REMOTE_NAME_REQUEST_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_page_scan_repetition_mode;
    BTBYTE       param_reversed;
    BTWORD       param_clock_offset;
} HCI_STRUCT_REMOTE_NAME_REQUEST_T, *HCI_STRUCT_REMOTE_NAME_REQUEST_P;
typedef __packed struct _HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_T, *HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_P;
typedef __packed struct _HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_T, *HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_P;
typedef __packed struct _HCI_STRUCT_REMOTE_EXTENDED_FEATURE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
    BTBYTE       param_page;
} HCI_STRUCT_REMOTE_EXTENDED_FEATURE_T, *HCI_STRUCT_REMOTE_EXTENDED_FEATURE_P;
typedef __packed struct _HCI_STRUCT_REMOTE_VERSION_INFORMATION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_REMOTE_VERSION_INFORMATION_T, *HCI_STRUCT_REMOTE_VERSION_INFORMATION_P;
typedef __packed struct _HCI_STRUCT_IO_CAPABILITY_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_io_capability;
    BTBYTE       param_oob_data_present;
    BTBYTE       param_req_authentication;
} HCI_STRUCT_IO_CAPABILITY_REPLY_T, *HCI_STRUCT_IO_CAPABILITY_REPLY_P;
typedef __packed struct _HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_reason;
} HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_T, *HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_CONFIRMATION_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_USER_CONFIRMATION_REPLY_T, *HCI_STRUCT_USER_CONFIRMATION_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_T, *HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_PASSKEY_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTDWORD       param_numeric;
} HCI_STRUCT_USER_PASSKEY_REPLY_T, *HCI_STRUCT_USER_PASSKEY_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_T, *HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_REMOTE_OOB_DATA_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_c[0x10];
    BTBYTE       param_r[0x10];
} HCI_STRUCT_REMOTE_OOB_DATA_REPLY_T, *HCI_STRUCT_REMOTE_OOB_DATA_REPLY_P;
typedef __packed struct _HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_T, *HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_SWITCH_ROLE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE param_role;
} HCI_STRUCT_SWITCH_ROLE_T, *HCI_STRUCT_SWITCH_ROLE_P;
typedef __packed struct _HCI_STRUCT_RESET_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_RESET_T, *HCI_STRUCT_RESET_P;
typedef __packed struct _HCI_STRUCT_READ_STORED_LINK_KEY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_read_all_flag;
} HCI_STRUCT_READ_STORED_LINK_KEY_T, *HCI_STRUCT_READ_STORED_LINK_KEY_P;
typedef __packed struct _HCI_STRUCT_WRITE_STORED_LINK_KEY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_num;
    DEV_MEM_ADDR param_dev_mem_addr;
    DEV_LINK_KEY param_dev_link_key;
} HCI_STRUCT_WRITE_STORED_LINK_KEY_T, *HCI_STRUCT_WRITE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_STRUCT_DELETE_STORED_LINK_KEY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_DELETE_STORED_LINK_KEY_T, *HCI_STRUCT_DELETE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_STRUCT_READ_LOCAL_NAME_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_LOCAL_NAME_T, *HCI_STRUCT_READ_LOCAL_NAME_P;
typedef __packed struct _HCI_STRUCT_WRITE_LOCAL_NAME_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
#ifdef WIN32
    DEV_MEM_NAME param_local_name;
#endif
} HCI_STRUCT_WRITE_LOCAL_NAME_T, *HCI_STRUCT_WRITE_LOCAL_NAME_P;
typedef __packed struct _HCI_STRUCT_READ_SCAN_ENABLE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SCAN_ENABLE_T, *HCI_STRUCT_READ_SCAN_ENABLE_P;
typedef __packed struct _HCI_STRUCT_WRITE_SCAN_ENABLE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_scan_enable;
} HCI_STRUCT_WRITE_SCAN_ENABLE_T, *HCI_STRUCT_WRITE_SCAN_ENABLE_P;
typedef __packed struct _HCI_STRUCT_READ_CLASS_OF_DEVICE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_CLASS_OF_DEVICE_T, *HCI_STRUCT_READ_CLASS_OF_DEVICE_P;
typedef __packed struct _HCI_STRUCT_WRITE_CLASS_OF_DEVICE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_TYPE param_cod;
} HCI_STRUCT_WRITE_CLASS_OF_DEVICE_T, *HCI_STRUCT_WRITE_CLASS_OF_DEVICE_P;
typedef __packed struct _HCI_STRUCT_READ_CURRENT_IAC_LAP_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_CURRENT_IAC_LAP_T, *HCI_STRUCT_READ_CURRENT_IAC_LAP_P;
typedef __packed struct _HCI_STRUCT_WRITE_CURRENT_IAC_LAP_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_num;
    BTBYTE       param_lap[0x03];
} HCI_STRUCT_WRITE_CURRENT_IAC_LAP_T, *HCI_STRUCT_WRITE_CURRENT_IAC_LAP_P;
typedef __packed struct _HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_T, *HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_type;
} HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_T, *HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_READ_INQUIRY_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_INQUIRY_MODE_T, *HCI_STRUCT_READ_INQUIRY_MODE_P;
typedef __packed struct _HCI_STRUCT_WRITE_INQUIRY_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_mode;
} HCI_STRUCT_WRITE_INQUIRY_MODE_T, *HCI_STRUCT_WRITE_INQUIRY_MODE_P;
typedef __packed struct _HCI_STRUCT_READ_PAGE_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_PAGE_SCAN_TYPE_T, *HCI_STRUCT_READ_PAGE_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_type;
} HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_T, *HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_READ_VERSION_INFORMATION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_VERSION_INFORMATION_T, *HCI_STRUCT_READ_VERSION_INFORMATION_P;
typedef __packed struct _HCI_STRUCT_READ_SUPPORTED_COMMANDS_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SUPPORTED_COMMANDS_T, *HCI_STRUCT_READ_SUPPORTED_COMMANDS_P;
typedef __packed struct _HCI_STRUCT_READ_SUPPORTED_FEATURES_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SUPPORTED_FEATURES_T, *HCI_STRUCT_READ_SUPPORTED_FEATURES_P;
typedef __packed struct _HCI_STRUCT_READ_EXTENDED_FEATURES_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_page;
} HCI_STRUCT_READ_EXTENDED_FEATURES_T, *HCI_STRUCT_READ_EXTENDED_FEATURES_P;
typedef __packed struct _HCI_STRUCT_READ_BUFFER_SIZE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_BUFFER_SIZE_T, *HCI_STRUCT_READ_BUFFER_SIZE_P;
typedef __packed struct _HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handles;
    BTWORD       param_timeout;
} HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_T, *HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_P;
typedef __packed struct _HCI_STRUCT_READ_DEV_ADDR_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_DEV_ADDR_T, *HCI_STRUCT_READ_DEV_ADDR_P;
typedef __packed struct _HCI_STRUCT_READ_LINK_QUALITY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_READ_LINK_QUALITY_T, *HCI_STRUCT_READ_LINK_QUALITY_P;
typedef __packed struct _HCI_STRUCT_READ_RSSI_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_READ_RSSI_T, *HCI_STRUCT_READ_RSSI_P;
typedef __packed struct _HCI_STRUCT_READ_SIMPLE_PARING_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SIMPLE_PARING_MODE_T, *HCI_STRUCT_READ_SIMPLE_PARING_MODE_P;
typedef __packed struct _HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_mode;
} HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_T, *HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_P;
typedef __packed struct _HCI_STRUCT_WRITE_LINK_POLICY_SET_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handles;
    BTWORD       policy_settings;
} HCI_STRUCT_WRITE_LINK_POLICY_SET_T,*HCI_STRUCT_WRITE_LINK_POLICY_SET_P;
typedef __packed union _HCI_COMMAND_T
{
    HCI_STRUCT_INQUIRY_T                                    Inquiry;
    HCI_STRUCT_INQUIRY_CANCEL_T                             InquiryCancel;
    HCI_STRUCT_CONNECT_T                                    Connect;
    HCI_STRUCT_DISCONNECT_T                                 Disconnect;
    HCI_STRUCT_CONNECT_CANCEL_T                             ConnectCancel;
    HCI_STRUCT_ACCEPT_CONNECTION_T                          AcceptConnection;
    HCI_STRUCT_REJECT_CONNECTION_T                          RejectConnection;
    HCI_STRUCT_LINK_KEY_REPLY_T                             LinkKeyReply;
    HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_T                    LinkKeyNegativeReply;
    HCI_STRUCT_PIN_CODE_REPLY_T                             PinCodeReply;
    HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_T                    PinCodeNegativeReply;
    HCI_STRUCT_REMOTE_NAME_REQUEST_T                        RemoteNameRequest;
    HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_T                 RemoteNameRequestCancel;
    HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_T                   RemoteSupportedFeature;
    HCI_STRUCT_REMOTE_EXTENDED_FEATURE_T                    RemoteExtendedFeature;
    HCI_STRUCT_REMOTE_VERSION_INFORMATION_T                 RemoteVersionInformation;
    HCI_STRUCT_IO_CAPABILITY_REPLY_T                        IoCapabilityReply;
    HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_T               IoCapabilityNegativeReply;
    HCI_STRUCT_USER_CONFIRMATION_REPLY_T                    UserConfirmationReply;
    HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_T           UserConfirmationNegativeReply;
    HCI_STRUCT_USER_PASSKEY_REPLY_T                         UserPasskeyReply;
    HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_T                UserPasskeyNegativeReply;
    HCI_STRUCT_REMOTE_OOB_DATA_REPLY_T                      RemoteOobDataReply;
    HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_T             RemoteOobDataNegativeReply;
    HCI_STRUCT_SWITCH_ROLE_T                                SwitchRole;
    HCI_STRUCT_RESET_T                                      Reset;
    HCI_STRUCT_READ_STORED_LINK_KEY_T                       ReadStoredLinkKey;
    HCI_STRUCT_WRITE_STORED_LINK_KEY_T                      WriteStoredLinkKey;
    HCI_STRUCT_DELETE_STORED_LINK_KEY_T                     DeleteStoredLinkKey;
    HCI_STRUCT_READ_LOCAL_NAME_T                            ReadLocalName;
    HCI_STRUCT_WRITE_LOCAL_NAME_T                           WriteLocalName;
    HCI_STRUCT_READ_SCAN_ENABLE_T                           ReadScanEnable;
    HCI_STRUCT_WRITE_SCAN_ENABLE_T                          WriteScanEnable;
    HCI_STRUCT_READ_CLASS_OF_DEVICE_T                       ReadClassOfDevice;
    HCI_STRUCT_WRITE_CLASS_OF_DEVICE_T                      WriteClassOfDevice;
    HCI_STRUCT_READ_CURRENT_IAC_LAP_T                       ReadCurrentIacLap;
    HCI_STRUCT_WRITE_CURRENT_IAC_LAP_T                      WriteCurrentIacLap;
    HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_T                     ReadInquiryScanType;
    HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_T                    WriteInquiryScanType;
    HCI_STRUCT_READ_INQUIRY_MODE_T                          ReadInquiryMode;
    HCI_STRUCT_WRITE_INQUIRY_MODE_T                         WriteInquiryMode;
    HCI_STRUCT_READ_PAGE_SCAN_TYPE_T                        ReadPageScanType;
    HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_T                       WritePageScanType;
    HCI_STRUCT_READ_VERSION_INFORMATION_T                   ReadVersionInformation;
    HCI_STRUCT_READ_SUPPORTED_COMMANDS_T                    ReadSupportedCommands;
    HCI_STRUCT_READ_SUPPORTED_FEATURES_T                    ReadSupportedFeatures;
    HCI_STRUCT_READ_EXTENDED_FEATURES_T                     ReadExtendedFeatures;
    HCI_STRUCT_READ_BUFFER_SIZE_T                           ReadBufferSize;
    HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_T             WriteLinkSupervisionTimeout;
    HCI_STRUCT_READ_DEV_ADDR_T                              ReadDevAddr;
    HCI_STRUCT_READ_LINK_QUALITY_T                          ReadLinkQuality;
    HCI_STRUCT_READ_RSSI_T                                  ReadRssi;
    HCI_STRUCT_READ_SIMPLE_PARING_MODE_T                    ReadSimpleParingMode;
    HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_T                   WriteSimpleParingMode;
    HCI_STRUCT_WRITE_LINK_POLICY_SET_T                          WriteLinkPolicySettings;
} HCI_COMMAND_T;
#ifdef WIN32
#include <poppack.h>
#endif
/******************************************************************************
  HCI Inquiry Mode : HCI_WRITE_INQUIRY_MODE
 *****************************************************************************/
#define HCI_INQUIRY_MODE_STANDARD                         (0x00)
#define HCI_INQUIRY_MODE_WITH_RSSI                        (0x01)
#define HCI_INQUIRY_MODE_WITH_EIR                         (0x02)
/******************************************************************************
  HCI Page Scan Repetition Mode Values
 *****************************************************************************/
#define HCI_PAGE_SCAN_REP_MODE_R0                         (0x00)
#define HCI_PAGE_SCAN_REP_MODE_R1                         (0x01)
#define HCI_PAGE_SCAN_REP_MODE_R2                         (0x02)
/******************************************************************************
  HCI Page Scan Mode Values
 *****************************************************************************/
#define HCI_PAGE_SCAN_MODE_MANDATORY                      (0x00)
#define HCI_PAGE_SCAN_MODE_OPTIONAL_1                     (0x01)
#define HCI_PAGE_SCAN_MODE_OPTIONAL_2                     (0x02)
#define HCI_PAGE_SCAN_MODE_OPTIONAL_3                     (0x03)
/******************************************************************************
  HCI Inquiry Scan type Values
 *****************************************************************************/
#define HCI_INQUIRY_SCAN_TYPE_MANDATORY                   (0x00)
#define HCI_INQUIRY_SCAN_TYPE_INTERLACED                  (0x01)
/******************************************************************************
  HCI Page Scan type Values
 *****************************************************************************/
#define HCI_PAGE_SCAN_TYPE_MANDATORY                      (0x00)
#define HCI_PAGE_SCAN_TYPE_INTERLACED                     (0x01)
/******************************************************************************
  HCI packet types
 *****************************************************************************/
#define HCI_PKT_DM1                                       (0x0008)    /* SCO and ACL */
#define HCI_PKT_DH1                                       (0x0010)    /* ACL only */
#define HCI_PKT_HV1                                       (0x0020)    /* SCO only */
#define HCI_PKT_HV2                                       (0x0040)    /* SCO only */
#define HCI_PKT_HV3                                       (0x0080)    /* SCO only */
#define HCI_PKT_DV                                        (0x0100)    /* SCO only */
#define HCI_PKT_AUX1                                      (0x0200)    /* ACL only NOT L2C */
#define HCI_PKT_DM3                                       (0x0400)    /* ACL only */
#define HCI_PKT_DH3                                       (0x0800)    /* ACL only */
#define HCI_PKT_DM5                                       (0x4000)    /* ACL only */
#define HCI_PKT_DH5                                       (0x8000)    /* ACL only */
/******************************************************************************
  HCI CREATE CONNECTION Boundary conditions
 *****************************************************************************/
#define HCI_DO_NOT_ALLOW_ROLE_SWITCH                      (0x00)
#define HCI_ALLOW_ROLE_SWITCH                             (0x01)
#define HCI_MASTER                                        (0x00)
#define HCI_SLAVE                                         (0x01)
#define ENABLE_ROLE_SWITCH                                (0x0001)
#define ENABLE_SNIFF_MODE                                 (0x0004)

#endif /* __DEVICEBTJ_STATCK_HCI_COMMON_DOT_H_ */
