#ifndef __DEVICEBTJ_STATCK_SDPDB_DOT_H_
#define __DEVICEBTJ_STATCK_SDPDB_DOT_H_
/******************************************************************************
  psm defines
 *****************************************************************************/
#define SDP_DB_PSM_BASE                                       (0x7FFF)
#define SDP_DB_PSM_HCRP_CONTROL                               (SDP_DB_PSM_BASE + 0x02)
#define SDP_DB_PSM_HCRP_DATUM                                 (SDP_DB_PSM_BASE + 0x04)
#define SDP_DB_PSM_HCRP_NOTIF                                 (SDP_DB_PSM_BASE + 0x06)
/******************************************************************************
  hdl defines
 *****************************************************************************/
#define SDP_DB_HDL_BASE                                       (0x00010000)
/******************************************************************************
  uuid defines
 *****************************************************************************/
#define SDP_DB_UUID_SDP                                       (0x0001)
#define SDP_DB_UUID_UDP                                       (0x0002)
#define SDP_DB_UUID_RFCOMM                                    (0x0003)
#define SDP_DB_UUID_TCP                                       (0x0004)
#define SDP_DB_UUID_TCS_BIN                                   (0x0005)
#define SDP_DB_UUID_TCS_AT                                    (0x0006)
#define SDP_DB_UUID_OBEX                                      (0x0008)
#define SDP_DB_UUID_IP                                        (0x0009)
#define SDP_DB_UUID_FTP                                       (0x000A)
#define SDP_DB_UUID_HTTP                                      (0x000C)
#define SDP_DB_UUID_WSP                                       (0x000E)
#define SDP_DB_UUID_BNEP                                      (0x000F)
#define SDP_DB_UUID_UPNP                                      (0x0010)
#define SDP_DB_UUID_HIDP                                      (0x0011)
#define SDP_DB_UUID_HARDCOPY_CONTROL_CHANNEL                  (0x0012)
#define SDP_DB_UUID_HARDCOPY_DATA_CHANNEL                     (0x0014)
#define SDP_DB_UUID_HARDCOPY_NOTIFICATION_CHANNEL             (0x0016)
#define SDP_DB_UUID_AVCTP                                     (0x0017)
#define SDP_DB_UUID_AVDTP                                     (0x0019)
#define SDP_DB_UUID_CMPT                                      (0x001B)
#define SDP_DB_UUID_UDI_C_PLANE                               (0x001D)
#define SDP_DB_UUID_L2C                                       (0x0100)
#define SDP_DB_UUID_SERVICE_DESCOVERY_SERVER_SERVICE_CLASS_ID (0x1000)
#define SDP_DB_UUID_BROWSE_GROUP_DESCRIPTIOR_SERVICE_CLASS_ID (0x1001)
#define SDP_DB_UUID_PUBLIC_BROWSE_GROUP                       (0x1002)
#define SDP_DB_UUID_SERIAL_PORT                               (0x1101)
#define SDP_DB_UUID_LAN_ACCESS_USING_PPP                      (0x1102)
#define SDP_DB_UUID_DIALUP_NETWORKING                         (0x1103)
#define SDP_DB_UUID_IRMC_SYNC                                 (0x1104)
#define SDP_DB_UUID_OBEX_OBJECT_PUSH                          (0x1105)
#define SDP_DB_UUID_IRMC_SYNC_COMMAND                         (0x1107)
#define SDP_DB_UUID_HEADSET                                   (0x1108)
#define SDP_DB_UUID_CORDLESS_TELEPHONY                        (0x1109)
#define SDP_DB_UUID_AUDIO_SOURCE                              (0x110A)
#define SDP_DB_UUID_AUDIO_SINK                                (0x110B)
#define SDP_DB_UUID_AV_REMOTE_C0NTROL_TARGET                  (0x110C)
#define SDP_DB_UUID_ADVANCED_AUDIO_DISTRIBUTION               (0x110D)
#define SDP_DB_UUID_AV_REMOTE_CONTROL                         (0x110E)
#define SDP_DB_UUID_VIDEO_CONFERENCING                        (0x110F)
#define SDP_DB_UUID_INTERCOM                                  (0x1110)
#define SDP_DB_UUID_FAX                                       (0x1111)
#define SDP_DB_UUID_HEADSET_AUDIO_GATEWAY                     (0x1112)
#define SDP_DB_UUID_WAP                                       (0x1113)
#define SDP_DB_UUID_WAP_CLIENT                                (0x1114)
#define SDP_DB_UUID_PANU                                      (0x1115)
#define SDP_DB_UUID_NAP                                       (0x1116)
#define SDP_DB_UUID_GN                                        (0x1117)
#define SDP_DB_UUID_DIRECT_PRINTING                           (0x1118)
#define SDP_DB_UUID_REFERENCE_PRINTING                        (0x1119)
#define SDP_DB_UUID_IMAGING                                   (0x111A)
#define SDP_DB_UUID_IMAGING_RESPONDER                         (0x111B)
#define SDP_DB_UUID_IMAGING_AUTOMATIC_ARCHIVE                 (0x111C)
#define SDP_DB_UUID_IMAGING_REFERENCED_OBJECTS                (0x111D)
#define SDP_DB_UUID_HANDSFREE                                 (0x111E)
#define SDP_DB_UUID_HANDSFREE_AUDIO_GATEWAY                   (0x111F)
#define SDP_DB_UUID_DERICT_PRINTING_REFERENCE_OBJECTS_SERVICE (0x1120)
#define SDP_DB_UUID_REFLECTED_UI                              (0x1121)
#define SDP_DB_UUID_BASIC_PRINTING                            (0x1122)
#define SDP_DB_UUID_PRINTING_STATE                            (0x1123)
#define SDP_DB_UUID_HUMAN_INTERFACE_DEVICE_SERVICE            (0x1124)
#define SDP_DB_UUID_HARDCOPY_CABLE_REPLACEMENT                (0x1125)
#define SDP_DB_UUID_HCR_PRINT                                 (0x1126)
#define SDP_DB_UUID_HCR_SCAN                                  (0x1127)
#define SDP_DB_UUID_COMMON_ISDN_ACCESS                        (0x1128)
#define SDP_DB_UUID_VIDEO_CONFERENCING_GW                     (0x1129)
#define SDP_DB_UUID_UDI_MT                                    (0x112A)
#define SDP_DB_UUID_UDI_TA                                    (0x112B)
#define SDP_DB_UUID_AUDIO_VIDEO                               (0x112C)
#define SDP_DB_UUID_PNP_INFORMATION                           (0x1200)
#define SDP_DB_UUID_GENERIC_NETWORKING                        (0x1201)
#define SDP_DB_UUID_GENERIC_FILE_TRANSFER                     (0x1202)
#define SDP_DB_UUID_GENERIC_AUDIO                             (0x1203)
#define SDP_DB_UUID_GENERIC_TELEPHONY                         (0x1204)
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _SDP_DB_ATTRIBUTE_T
{
    BTWORD  id;
    BTPBYTE string;
    BTBYTE  length;
} SDP_DB_ATTRIBUTE_T, *SDP_DB_ATTRIBUTE_P;
typedef __packed struct _SDP_DATBASE_T
{
    BTBOOL  busy;
    BTWORD  uuid;
    BTBYTE  index;
    BTBYTE  channel;
    BTDWORD handle;
    BTBYTE  counts;
    struct _SDP_DB_ATTRIBUTE_T *attrib;
} SDP_DATBASE_T, *SDP_DATBASE_P;
typedef __packed struct _SDP_DATABASE_LIST_T
{
    struct _SDP_DATBASE_T *base;
    struct _SDP_DATABASE_LIST_T *next;
} SDP_DATABASE_LIST_T, *SDP_DATABASE_LIST_P;
#ifdef WIN32
#include <poppack.h>
#endif
/******************************************************************************
  Function defines
 *****************************************************************************/
#if defined(__cplusplus)
extern "C" {
#endif
    void
    DeviceSdpdb_Doreg(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        DEVICEBTJ_OBJECT     types
    );
    void
    DeviceSdpdb_Unreg(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
    void
    DeviceSdpdb_Add_Attrib_String(
        SDP_DATBASE_P       db,
        BTWORD              id,
        BTBYTE              memory,
        BTPBYTE             string,
        BTBYTE              length
    );
    SDP_DATBASE_P
    DeviceSdpdb_Get_Database(
        DEVICEBTJ_ADAPTER_P adapter,
        BTDWORD             handle
    );
#if defined(__cplusplus)
}
#endif
#endif /* __DEVICEBTJ_STATCK_SDPDB_DOT_H_ */
