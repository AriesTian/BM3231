#ifndef __DEVICEBTJ_STATCK_SDP_DOT_H_
#define __DEVICEBTJ_STATCK_SDP_DOT_H_
/******************************************************************************
  Primitive defines
 *****************************************************************************/
#define SDP_ERROR_RESPONSE                            (0x01)
#define SDP_SERVICE_SEARCH_REQUEST                    (0x02)
#define SDP_SERVICE_SEARCH_RESPONSE                   (0x03)
#define SDP_SERVICE_ATTRIBUTE_REQUEST                 (0x04)
#define SDP_SERVICE_ATTRIBUTE_RESPONSE                (0x05)
#define SDP_SERVICE_SEARCH_ATTRIBUTE_REQUEST          (0x06)
#define SDP_SERVICE_SEARCH_ATTRIBUTE_RESPONSE         (0x07)
#define SDP_DESEQ(tag)                                (((tag[0x00]) >> 0x03) == 0x06)
#define SDP_UINT(tag)                                 (((tag[0x00]) >> 0x03) == 0x01)
#define SDP_UUID(tag)                                 (((tag[0x00]) >> 0x03) == 0x03)
#define SDP_MAX_DATA_LEN                            (0x60)
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _SDP_HEADERS_T
{
    BTBYTE sdp_pdu_id;
    BTWORD sdp_trans_id;
    BTWORD sdp_trans_length;
} SDP_HEADERS_T, *SDP_HEADERS_P;
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
    DeviceSdp_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchRes(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceAttributeReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceAttributeRes(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchAttributeReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchAttributeRes(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Send_ServiceSearchAttributeReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STATCK_SDP_DOT_H_ */
