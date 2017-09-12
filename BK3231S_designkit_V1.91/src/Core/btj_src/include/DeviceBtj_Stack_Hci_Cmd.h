#ifndef __DEVICEBTJ_STACK_HCI_CMD_DOT_H_
#define __DEVICEBTJ_STACK_HCI_CMD_DOT_H_
/******************************************************************************
  Struct defines
 *****************************************************************************/
#ifdef WIN32
#include <pshpack1.h>
#elif defined(ARM_PLATFORM)
#pragma pack(1)
#endif
typedef __packed struct _HCI_COMMON_T
{
    BTBYTE  hci_packet;
    BITWORD hci_handle: 12;
    BITWORD hci_pbflag: 2;
    BITWORD hci_bcflag: 2;
    BTWORD  hci_length;
    BTWORD  l2c_length;
    BTWORD  l2c_channel;
} HCI_COMMON_T, *HCI_COMMON_P;
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
    DeviceHci_Common(
        BTPBYTE packet,
        BTWORD handles,
        BTWORD channel,
        BTWORD length
    );
    void
    Write_Link_Policy_Settings(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle,
        BTWORD policy_settings
    );
    void
    DeviceHci_InquiryStart(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_InquiryCancel(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_Connect(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_ConnectCancel(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_Disconnect(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle,
        BTBYTE param_reason
    );
    void
    DeviceHci_AcceptConnection(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_role
    );
    void
    DeviceHci_RejectConnection(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_reason
    );
    void
    DeviceHci_LinkKeyReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        DEV_LINK_KEY param_linkkey
    );
    void
    DeviceHci_LinkKeyNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void 
	DeviceHci_PinCodeReply(
		DEVICEBTJ_ADAPTER_P adapter,
		DEV_MEM_ADDR param_dev_mem_addr,
		BTPBYTE param_pincode_buf,
		BTBYTE pin_code_len
	);
    void
    DeviceHci_PinCodeNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_RemoteNameRequest(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_RemoteNameRequestCancel(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_RemoteSupportedFeature(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_RemoteExtendedFeature(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle,
        BTBYTE param_page
    );
    void
    DeviceHci_RemoteVersionInformation(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_IoCapabilityReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_IoCapabilityNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_reason
    );
    void
    DeviceHci_UserConfirmationReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_UserConfirmationNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_UserPasskeyReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTWORD param_numeric
    );
    void
    DeviceHci_UserPasskeyNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_OobDataReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTPBYTE param_c,
        BTPBYTE param_r
    );
    void
    DeviceHci_OobDataNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_SwitchRole(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_role
    );
    void Role_Discovery_Command(
      DEVICEBTJ_ADAPTER_P adapter,
      BTWORD param_handle
    );
    void
    DeviceHci_Reset(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadStoredLinkkey(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_WriteStoredLinkkey(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        DEV_LINK_KEY param_dev_link_key
    );
    void
    DeviceHci_ReadLocalName(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteLocalName(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE param_local_name_buf,
        BTBYTE param_local_name_len
    );
    void
    DeviceHci_ReadScanEnable(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteScanEnable(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE value
    );
    void
    DeviceHci_ReadClassOfDevice(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteClassOfDevice(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_TYPE param_cod
    );
    void
    DeviceHci_ReadCurrentIacLap(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteCurrentIacLap(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadInquiryScanType(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteInquiryScanType(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE type
    );
    void
    DeviceHci_ReadInquiryMode(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteInquiryMode(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE mode
    );
    void
    DeviceHci_ReadPageScanType(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WritePageScanType(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE type
    );
    void
    DeviceHci_ReadLocalVersionInformation(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadLocalSupportedCommands(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadLocalSupportedFeatures(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadLocalExtendedFeatures(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE param_page
    );
    void
    DeviceHci_ReadBufferSize(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteLinkSupervisionTimeout(
        DEVICEBTJ_ADAPTER_P adpater,
        BTWORD param_handles,
        BTWORD param_timeout
    );
    void
    DeviceHci_ReadLocalAddr(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteLocalAddr(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE param_local_addr_buf
    );
    void
    DeviceHci_ReadLinkQuality(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_ReadRssi(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_ReadSimpleParingMode(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteSimpleParingMode(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE param_mode
    );
    void
    DeviceHci_AuthenticationRequestedCommand(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_SetConnectionEncryptionCommand(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void Write_Extended_Inquiry_Response_Command(
    DEVICEBTJ_ADAPTER_P adapter,
    BTPBYTE param_local_name_buf,
    BTBYTE param_local_name_len
    );
#ifdef __cplusplus
}
#endif
#endif /* __DEVICEBTJ_STACK_HCI_CMD_DOT_H_ */
