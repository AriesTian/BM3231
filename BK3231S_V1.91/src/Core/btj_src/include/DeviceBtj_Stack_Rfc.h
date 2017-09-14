#ifndef __DEVICEBTJ_STATCK_RFC_DOT_H_
#define __DEVICEBTJ_STATCK_RFC_DOT_H_
/******************************************************************************
  Macro declarations
 *****************************************************************************/
#define RFC_PF_SET(CONTROL)         ((CONTROL | 0x10))
#define RFC_PF_CLS(CONTROL)         ((CONTROL & 0xEF))
#define RFC_PF_GET(CONTROL)         ((CONTROL & 0x10))
#define RFC_PF_VAL(CONTROL)         ((CONTROL & 0x10) >> 0x04)
#define RFC_EA_BYTE                 ((BTBYTE)0x01)
#define RFC_EA_WORD                 ((BTBYTE)0x00)
#define RFC_PN_TYPE1                ((BTBYTE)0x00)
#define RFC_PN_TYPE2                ((BTBYTE)0x01)
#define RFC_PN_TYPE3                ((BTBYTE)0x02)
#define RFC_PN_TYPE4                ((BTBYTE)0x03)
#define RFC_SC_CONTROL              ((BTBYTE)0x00)
#define RFC_PN_CL_VER11_REQ         ((BTBYTE)0x0F)
#define RFC_PN_CL_VER11_RSP         ((BTBYTE)0x0E)
#define RFC_PN_CL_VER10B            ((BTBYTE)0x00)
#define RFC_CR_FRA_CTL_CMD(Init)    ((BTBYTE)(Init ? 0x01 : 0x00))
#define RFC_CR_FRA_CTL_RSP(Init)    ((BTBYTE)(Init ? 0x00 : 0x01))
#define RFC_CR_FRA_UIH_VAL(Init)    ((BTBYTE)(Init ? 0x01 : 0x00))
#define RFC_CR_MSG_CMD              ((BTBYTE)0x01)
#define RFC_CR_MSG_RES              ((BTBYTE)0x00)
#define RFC_CR_MSG_LCI              ((BTBYTE)0x01)
#define RFC_DI_VAL(Init)            (Init ? 0x00 : 0x01)
#define RFC_FRA_SABM                ((BTBYTE)0x2F)
#define RFC_FRA_UA                  ((BTBYTE)0x63)
#define RFC_FRA_DM                  ((BTBYTE)0x0F)
#define RFC_FRA_DISC                ((BTBYTE)0x43)
#define RFC_FRA_UIH                 ((BTBYTE)0xEF)
#define RFC_MSG_PN                  ((BTBYTE)0x20)
#define RFC_MSG_TEST                ((BTBYTE)0x08)
#define RFC_MSG_FCON                ((BTBYTE)0x28)
#define RFC_MSG_FCOFF               ((BTBYTE)0x18)
#define RFC_MSG_MSC                 ((BTBYTE)0x38)
#define RFC_MSG_NSC                 ((BTBYTE)0x04)
#define RFC_MSG_RPN                 ((BTBYTE)0x24)
#define RFC_MSG_RLS                 ((BTBYTE)0x14)
#define RFC_FRA_DLCI(SC)            ((BTBYTE)(SC<<1))
#define RFC_FRA_ADDR(CR, SC)        ((BTBYTE)(RFC_EA_BYTE | CR<<1 | SC<<3))
#define RFC_MSG_TYPE(CR, TYPE)      ((BTBYTE)(RFC_EA_BYTE | CR<<1 | TYPE<<2))
#define RFC_MSG_DLCI(DI, SC)        ((BTBYTE)(DI | SC<<1))
#define RFC_BYTE_LENGTH(LENGTH)     ((BTBYTE)(RFC_EA_BYTE | LENGTH<<1))
#define RFC_WORD_LENGTH(LENGTH)     ((BTWORD)(RFC_EA_WORD | LENGTH<<1))
#define RFC_FRAME_SIZE              (0x0080)
#define RFC_FRAME_COUNT             (0x04)
#define RFC_FRAME_CTL_OFFSET        (0x03)
#define RFC_FRAME_CTL_LENGTH        (0x04)
#define RFC_FRAME_MSG_OFFSET        (0x03)
#define RFC_FRAME_MSG_LENGTH        (0x04)
#define RFC_FRAME_UIH_OFFSET        (0x04)
#define RFC_FRAME_UIH_LENGTH        (0x05)
/******************************************************************************
  Enums declarations
 *****************************************************************************/
typedef enum
{
    RFC_UA_NIL,
    RFC_UA_SEND_CONTROL_CONNECTING,
    RFC_UA_SEND_CHANNEL_CONNECTING,
    RFC_UA_SEND_CHANNEL_DISCONNECTING,
    RFC_UA_SEND_CONTROL_DISCONNECTING,
    RFC_UA_ACTIVE
} BTRFCOMM_UA_STATE;
/******************************************************************************
  Structure declarations
 *****************************************************************************/
#ifdef _WINDOWS
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _RFC_CONTEXT_T
{
    BTBOOL rfc_init;
    BTBYTE rfc_ua;
    BTBYTE rfc_sc;
    BTBYTE rfc_rcredit;
    BTBYTE rfc_lcredit;
    BTWORD rfc_mtu;
    L2C_CONTEXT_P       l2c_context;
    DEVICEBTJ_SERVICE_P app_service_header;
} RFC_CONTEXT_T, *RFC_CONTEXT_P;
typedef __packed struct _RFC_FRA_ADDRESS
{
    BITBYTE AddrEa                 :1;
    BITBYTE AddrCr                 :1;
    BITBYTE AddrDi                 :1;
    BITBYTE AddrSc                 :5;
} RFC_FRA_ADDRESS, *PRFC_FRA_ADDRESS;
typedef __packed struct _RFC_FRA_CONTROL
{
    BTBYTE Control;
} RFC_FRA_CONTROL, *PRFC_FRA_CONTROL;
typedef __packed struct _RFC_FRA_LENGTH_BYTE
{
    BITBYTE LengthEa               :1;
    BITBYTE LengthValue            :7;
} RFC_FRA_LENGTH_BYTE, *PRFC_FRA_LENGTH_BYTE;
typedef __packed struct _RFC_FRA_LENGTH_WORD
{
    BITWORD LengthEa               :1;
    BITWORD LengthValue            :15;
} RFC_FRA_LENGTH_WORD, *PRFC_FRA_LENGTH_WORD;
typedef __packed struct _RFC_MSG_TYPE_BYTE
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadCr                 :1;
    BITBYTE HeadType               :6;
} RFC_MSG_TYPE_BYTE, *PRFC_MSG_TYPE_BYTE;
typedef __packed struct _RFC_MSG_TYPE_WORD
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadCr                 :1;
    BITBYTE HeadType               :6;
    BITBYTE TailEA                 :1;
    BITBYTE TailType               :7;
} RFC_MSG_TYPE_WORD, *PRFC_MSG_TYPE_WORD;
typedef __packed struct _RFC_MSG_LENGTH_BYTE
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadLength             :7;
} RFC_MSG_LENGTH_BYTE, *PRFC_MSG_LENGTH_BYTE;
typedef __packed struct _RFC_MSG_LENGTH_WORD
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadLength             :7;
    BITBYTE TailEa                 :1;
    BITBYTE TailLength             :7;
} RFC_MSG_LENGTH_WORD, *PRFC_MSG_LENGTH_WORD;
typedef __packed struct _RFC_MSG_PN_DLCI
{
    BITBYTE PnDlciDi                :1;
    BITBYTE PnDlciSc                :5;
    BITBYTE PnDlciRes               :2;
} RFC_MSG_PN_DLCI, *PRFC_MSG_PN_DLCI;
typedef __packed struct _RFC_FRA_HEADER
{
    RFC_FRA_ADDRESS Address;
    RFC_FRA_CONTROL Control;
    RFC_FRA_LENGTH_BYTE Length;
} RFC_FRA_HEADER_T, *RFC_FRA_HEADER_P;
#ifdef _WINDOWS
#include <poppack.h>
#endif
/******************************************************************************
  Routine defines
 *****************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif
    void
    DeviceRfc_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet,
        BTWORD  length
    );
    void
    DeviceRfc_CtlHeader(
        BTPBYTE acl_packet,
        L2C_CONTEXT_P l2c_context,
        BTBYTE rfc_control,
        BTBYTE rfc_cr,
        BTBYTE rfc_sc,
        BTWORD rfc_length
    );
    void
    DeviceRfc_MsgHeader(
        BTPBYTE acl_packet,
        L2C_CONTEXT_P l2c_context,
        BTBYTE rfc_control,
        BTBYTE rfc_cr,
        BTBYTE rfc_sc,
        BTWORD rfc_length
    );
    void
    DeviceRfc_UihHeader(
        BTPBYTE acl_packet,
        L2C_CONTEXT_P l2c_context,
        BTBYTE rfc_control,
        BTBYTE rfc_cr,
        BTBYTE rfc_sc,
        BTWORD rfc_length
    );
    void
    DeviceRfc_Recv_FrameSabm(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameUa(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameDm(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameDisc(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameUih(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header,
        BTPBYTE BufferPointer,
        BTWORD BufferLength
    );
    BTBOOL
    DeviceRfc_Send(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        BTPBYTE buffer,
        BTWORD length
    );
    BTBOOL
    DeviceRfc_Disc(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
    BTBOOL
    DeviceRfc_Apps_Cfm(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        DEVICEBTJ_STATE state
    );
    BTBOOL
    DeviceRfc_Sabm_Control(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    BTBOOL
    DeviceRfc_Reset(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STATCK_RFC_DOT_H_ */
