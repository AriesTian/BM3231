#ifndef _PARTHUS_SCO_CONTAINER_
#define _PARTHUS_SCO_CONTAINER_

/******************************************************************************
 * MODULE NAME:    lm_sco_container.h
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:   
 * MAINTAINER:     Gary Fleming
 * CREATION DATE:        
 *
 * SOURCE CONTROL: $Id: lmp_sco_container.h,v 1.44 2010/08/18 11:30:08 nicolal Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *
 ******************************************************************************/

#include "sys_types.h"
#include "lmp_acl_connection.h"    

void LMscoctr_Initialise(void);

t_sco_info *LMscoctr_Alloc(t_deviceIndex device_index, u_int16 voice_setting, t_linkType link_type);
void LMscoctr_Free(t_sco_info *p_sco_link);
void LMscoctr_Free_SCOs_On_Link(t_deviceIndex device_index);

#if (PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==1)
u_int8  LMscoctr_Get_Number_SCO_Connections(void);
u_int8  LMscoctr_Get_Number_SYN_Connections(void);
u_int8  LMscoctr_Is_All_Bandwidth_Used_By_SCO(void);
u_int8  LMscoctr_Is_All_Bandwidth_Used_By_SYN(void);
u_int8  LMscoctr_Get_Number_SCOs_Active_On_Link(t_deviceIndex device_index);
u_int8  LMscoctr_Get_Number_SCOs_Active(void);
#else
/*
 * If No SCOs then stub to 0
 */
#define LMscoctr_Get_Number_SCO_Connections()       (0)
#define LMscoctr_Get_Number_SYN_Connections()       (0)
#define LMscoctr_Is_All_Bandwidth_Used_By_SCO()     (0)
#define LMscoctr_Get_Number_SCOs_Active_On_Link(device_index) (0)

#endif

#define ESCO_DONT_CARE_BANDWIDTH 0xFFFFFFFF
#define ESCO_DONT_CARE_LATENCY   0xFFFF
#define ESCO_DONT_CARE_RETRANSMISSION_EFFORT 0xFF

#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
#define LM_SCO_CTR_NUM_PKT_TYPES 7
#else
#define LM_SCO_CTR_NUM_PKT_TYPES 3
#endif

typedef enum {
    ESCO_SETUP,
    ESCO_RECONFIGURE,
    ESCO_REMOVE,
    ESCO_IDLE
} t_esco_transaction_type;

typedef enum {
    ESCO_NGT_INIT,
    ESCO_NGT_PREF,
    ESCO_NGT_RS_VIOL,
    ESCO_NGT_LAT_VIOL,
    ESCO_NGT_UNSUPPORTED_FEATURE
} t_esco_neg_state ;

typedef enum {
    FIRST_NEW_ESCO_PDU,
    CONTINUE_NEW_ESCO_PDU,
    FIRST_CHANGE_ESCO_PDU,
    CONTINUE_CHANGE_ESCO_PDU
} t_esco_link_req_context;

typedef struct _rule_data {
    u_int8 retransmission_mode;
    u_int8 packet_type;
    u_int8 t_esco;
    u_int8 w_esco;
    u_int16 packet_length;
    u_int16 latency_in_us;
    t_sco_info* p_esco_link;
} t_rule_data;

typedef boolean (*t_rule_fn) (u_int8, t_rule_data*);


typedef struct s_esco_lmp_parameter_set {
    u_int8 t_esco;
    u_int8 w_esco;
    t_packet pkt_type;
    u_int16 pkt_len;
} t_esco_lmp_parameter_set;
	
typedef struct s_lm_esco_pkt_type_desc {
    t_packet type;
    u_int16 max_len;
    u_int8 w_esco_slots;
    u_int8 min_t_esco;
} t_lm_esco_pkt_type_desc;

typedef enum {
    LINEAR_IC,
    U_LAW_IC,
    A_LAW_IC,
    CVSD_IC
} t_input_coding;

typedef enum {
    ONES_COMP_IDF,
    TWOS_COMP_IDF,
    SIGN_MAG_IDF,
    UNSIGNED_IDF
} t_input_data_format;

typedef enum {
    EIGHT_BIT_ISS,
    SIXTEEN_BIT_ISS
} t_input_sample_size;

typedef enum {
    CVSD_ACF,
    U_LAW_ACF,
    A_LAW_ACF,
    TRANS_ACF
} t_air_coding_format;

typedef enum {
    REGULAR_RETRANS,
    SHARED_RETRANS
} t_esco_retrans_mode;

t_sco_info *LMscoctr_Find_SCO_By_Connection_Handle(t_connectionHandle connection_handle);
t_sco_info *LMscoctr_Find_SCO_By_SCO_Handle(u_int8 sco_handle);
t_sco_info *LMscoctr_Find_SCO_By_SCO_Index(u_int8 index);
t_sco_info *LMscoctr_Find_SCO_By_Device_Index(t_deviceIndex device_index);

u_int8 LMscoctr_Convert_HCI_To_LM_SCO_Packet_Type(t_packetTypes packet_type);

u_int8  LMscoctr_Is_Bandwidth_Available_For_SCO_Packet_Types(
    t_packetTypes packet_types);

u_int8  LMscoctr_Get_SCO_Index(const t_sco_info *p_sco_link);

void LMscoctr_Assign_SCO_Parameters(
    t_sco_info *p_sco_link_dest, const t_sco_info *p_sco_link_source);
void LMscoctr_Derive_SCO_Parameters(
    t_sco_info *p_sco_link, t_packetTypes packet_types, t_role role,
    u_int8 use_peer_air_mode_flag);

t_error LMscoctr_Extract_SCO_Parameters_From_PDU(
    t_sco_info *p_sco_link, t_p_pdu p_pdu, t_role role);

u_int8 LMscoctr_Map_AirMode_HCI2LMP(u_int8 hc_air_mode);
u_int8 LMscoctr_Map_AirMode_LMP2HCI(u_int8 lm_air_mode);
u_int8 LMscoctr_Derive_LM_SCO_Packet_Type(
    const t_sco_info *p_sco_link, t_packetTypes packet_types);
u_int8 LMscoctr_Get_Active_LM_SCO_Packet_Type(void);
u_int8 LMscoctr_Get_Used_LM_SCO_Packet_Type(void);
boolean LMscoctr_Is_LM_Air_Mode_Supported(u_int8 lm_air_mode);
t_sco_info* LMscoctr_Get_SCO_Transitioning_Ref(void);
t_sco_info* LMscoctr_Find_SCO_Under_Negotiation(t_role role);

t_sco_info *LMscoctr_Allocate_Negotation_SCO_Link(
     const t_sco_info *p_sco_link, t_role role, 
     t_packetTypes packet_types, u_int8 lm_air_mode);
void LMscoctr_Free_Negotiation_SCO_Link(void);
void LMscoctr_Accept_And_Free_Negotiated_SCO_Link(t_sco_info *p_sco_link);

u_int8 LMeScoctr_Get_Tx_Packet_Type_in_Slots(const t_sco_info *p_sco_link);
u_int8 LMeScoctr_Get_Rx_Packet_Type_in_Slots(const t_sco_info *p_sco_link);
boolean LMeScoctr_Are_Renegotiated_Params_Available(t_sco_info *p_esco_link);
u_int8 LMscoctr_GetSlotOccupancy(t_packet packet_type);


u_int8 LMeScoctr_Get_M_to_S_Packet_Type_in_Slots(const t_sco_info *p_sco_link);
u_int8 LMeScoctr_Get_S_to_M_Packet_Type_in_Slots(const t_sco_info *p_sco_link);

u_int8 LMeScoctr_Get_Number_eSCO_Connections(void);

u_int16 LMscoctr_Map_eSCO_Pkt_Type_LMP2HCI(u_int8 packet_type);

t_packet LMscoctr_Get_eSCO_BB_Packet_From_LMP_Type(u_int8 lmp_pkt_type);
u_int8 LMscoctr_Get_eSCO_LMP_Type_From_BB_Packet(t_packet bb_pkt_type);

void LMscoctr_Extract_eSCO_Parameters_From_LMP_PDU(
    t_p_pdu p_pdu);
t_error LMscoctr_Validate_Host_eSCO_Parameters(u_int16 handle,
        u_int32 tx_bandwidth, u_int32 rx_bandwidth,
        u_int16 max_latency, u_int16 voice_setting, u_int8 retransmission_effort, 
        u_int16* esco_packet_types);
t_error LMscoctr_Validate_Peer_eSCO_Parameters(t_lmp_link* p_link,
        u_int8* p_pdu);
t_error LMscoctr_Validate_Admission(u_int32 tx_bandwidth);
t_error LMscoctr_Detect_Transaction_Collisions(void);

t_sco_info* LMscoctr_Get_Topical_eSCO_Link(void);
t_esco_transaction_type LMscoctr_Get_Topical_eSCO_Link_Transaction_Type(void);
void LMscoctr_Set_Topical_eSCO_Link(t_sco_info* p_esco_link, t_esco_transaction_type type);

t_lmp_link* LMscoctr_Find_ACL_Link_From_SCO_Link(t_sco_info* p_esco);
void LMscoctr_Commit_to_New_Synchronous_Parameters(t_sco_info* p_esc);

int LMscoctr_Derive_Initial_LMP_Parameter_Sets_From_Host_Constraints(
    u_int32 tx_bandwidth, u_int32 rx_bandwidth, 
    u_int16 max_latency, u_int8 retransmission_effort, 
    u_int16 esco_packet_types);
int LMscoctr_Get_Number_LMP_Parameter_Sets(void);
int LMscoctr_Is_An_LMP_Parameter_Set(u_int8 t_esco, u_int8 w_esco, t_packet pkt_type, u_int16 pkt_len);
t_esco_descr* LMscoctr_Get_eSCO_Scratchpad(void);
void LMscoctr_Clean_eSCO_Scratchpad(void);

void LMscoctr_Remove_LMP_Parameter_Set(int index);

void LMscoctr_Remove_LMP_Parameter_Sets(t_rule_fn rule_fn, t_rule_data* p_rule_args);
void LMscoctr_Clear_LMP_Parameter_Sets( void);
boolean LMscoctr_Rule_Retransmission_Not_Equal_To(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Packet_Type_Equals(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Matches_Exactly(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Latency_Above(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_No_Possible_D_Value(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Wesco_Equals(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Tesco_Not_Equal_To(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Wesco_Not_Equal_To(u_int8 arr_index, t_rule_data* p_rule_data);

void LMscoctr_Set_D_eSCO_and_Timing_Flag(t_esco_descr* p_esco_descr);
s_int16 LMscoctr_Derive_D_eSCO(t_sco_info* p_esco_link, u_int8 t_esco, 
    u_int8 w_esco, u_int8 timing_ctrl, t_packet tx_packet_type, t_packet rx_packet_type);
s_int16 LMscoctr_Derive_D_eSCO_AtLeast(u_int8 init_d_esco,
    t_sco_info* p_esco_link, u_int8 t_esco, u_int8 w_esco, 
    u_int8 timing_ctrl, t_packet tx_packet_type, t_packet rx_packet_type);

void LMscoctr_Transfer_Best_LMP_Parameter_Set_to_Scratchpad(void);
void LMscoctr_Suspend_Link(t_sco_info* p_esco_link);
void LMscoctr_Resume_Link(t_sco_info* p_esco_link);
u_int32 LMscoctr_Calculate_Bandwidth(t_esco_descr* p_esco_descr);
int LMscoctr_Is_D_eSCO_Acceptable(t_esco_descr* p_esco_descr, t_lmp_link* p_link);
u_int16 LMscoctr_Calculate_Latency_In_uSec(u_int8 t_esco, u_int8 w_esco, 
    t_packet tx_pkt_type, t_packet rx_pkt_type);

int LMscoctr_Get_Num_D_eSCOs_In_List(void);
void LMscoctr_Derive_D_eSCO_List(u_int8 t_esco, u_int8 w_esco,
    u_int8 timing_ctrl_flag, t_packet tx_pkt_type, t_packet rx_packet_type);
boolean LMscoctr_Is_In_D_eSCO_List(u_int8 d_esco);
void LMscoctr_Remove_From_D_eSCO_List(u_int8 d_esco);
u_int8 LMscoctr_Get_D_eSCO_From_List(void);

u_int16 LMscoctr_Derive_Tx_Dequeue_Length(t_sco_info* p_esco_link);
u_int16 LMscoctr_Derive_Rx_Dequeue_Length(t_sco_info* p_esco_link);

void LMscoctr_Set_Voice_Setting(t_sco_info* p_esco_link, 
    u_int16 voice_setting);
u_int16 LMscoctr_Get_Voice_Setting(t_sco_info* p_esco_link);
t_input_coding LMscoctr_Get_Input_Coding(u_int16 voice_setting);
t_input_data_format LMscoctr_Get_Input_Data_Format(u_int16 voice_setting);
u_int8 LMscoctr_Get_Input_Sample_Size(u_int16 voice_setting);
u_int8 LMscoctr_Get_Linear_PCM_Bit_Pos(u_int16 voice_setting);
t_air_coding_format LMscoctr_Get_Air_Coding(u_int16 voice_setting);

/*
 * The following routines are used on slave-initiated SCO when
 * the IUT is a slave - it frees and re-allocates the SCO container
 * (losing the voice setting information. Store that voice
 * information in a holding variable.
 */
void LMscoctr_Store_Topical_Voice_Setting(u_int16 voice_setting);
u_int16 LMscoctr_Restore_Topical_Voice_Setting(void);

/*
 * The following routines are used to set and get the eSCO retransmission
 * mode. Either shared or unshared.
 */
t_esco_retrans_mode LMscoctr_Get_eSCO_Retransmission_Mode(void);
void LMscoctr_Set_eSCO_Retransmission_Mode(t_esco_retrans_mode mode);
void LMscoctr_Order_LMP_Parameter_Sets_For_Shared_Retransmission(void);

t_length LMscoctr_Determine_SCO_Pkt_Length(u_int8 sco_packet);

void LMscoctr_Advance_Tx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Advance_Rx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Read_End_Tx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Read_End_Rx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Write_Start_Tx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Write_Start_Rx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Read_Start_Tx_Transcode_State(t_sco_info *p_sco_link);

u_int8 LMscoctr_Current_eSCO_Link_In_eSCO_Window(t_sco_info *p_sco_link);
u_int8 LMscoctr_Current_eSCO_Link_In_Reserved_Slot(t_sco_info *p_sco_link);

t_error LMscoctr_Test_ReTransRegisters(void);
#endif
