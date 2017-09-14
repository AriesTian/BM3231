#ifndef _PARTHUS_USLC_CHAN_
#define _PARTHUS_USLC_CHAN_

/******************************************************************************
 * MODULE NAME:    uslc_chac.h
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Baseband Channel Control Processor Module
 * MAINTAINER:     John Nelson, Conor Morris
 * DATE:           1 Feb 2000 Jun 1999
 *
 * SOURCE CONTROL: $Id: uslc_chan_ctrl.h,v 1.50 2006/08/16 15:00:26 nicolal Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 * 
 ******************************************************************************/
#include "sys_types.h"
#include "bt_fhs.h"
#include "lc_interface.h"
#include "dl_dev.h"

/*
 * Prototype Declarations
 */
void USLCchac_Initialise(void);

#if (PRH_BS_CFG_SYS_LMP_MSS_SUPPORTED==1)
void USLCchac_Set_Active_Procedure(t_ulc_procedure new_procedure);
#endif

t_USLC_Frame_Activity USLCchac_prepare_next_slave_frame_activity(t_devicelink 
                            **p_next_active_device_link);

t_USLC_Frame_Activity USLCchac_prepare_next_master_frame_activity(t_devicelink 
         **p_next_active_device_link,t_USLC_Frame_Activity current_USLC_Frame_Activity);

boolean USLCchac_check_slave_activity_start_next_frame(void);
boolean USLCchac_is_next_activity_scan_activation(void);

boolean USLCchac_Is_Inquiry_Scan_Rand_Wait(void);
void USLCchac_Set_Saved_Device_State(t_state state);
void USLCchac_Set_Device_State(t_state state);
boolean USLCchac_Get_Sleep_Request(void);

t_ulc_procedure USLCchac_Get_Active_Procedure(void);

t_state USLCchac_get_device_state(void);

t_error USLCchac_Procedure_Request(t_ulc_procedure procedure, boolean status);

void USLCchac_Procedure_Start(t_ulc_procedure procedure, t_devicelink *p_device_link);

void USLCchac_Procedure_Finish(boolean set_previous_super_state);

t_ulc_procedure USLCchac_Process_Rx(t_USLC_Frame_Activity next_USLC_Frame_Activity);

void USLCchac_prepareRx(t_devicelink* p_device_link);

t_error USLCchac_InqScan_Rand_Wait(t_LC_Event_Info* eventInfo);

void USLCchac_Wakeup(void);

boolean USLCchac_Is_Sleep_Possible(t_clock *next_instant);

boolean USLCchac_Is_Sleep_Request_Pending(void);

boolean USLCchac_Is_R2P_Request_Pending(void);
void USLCchac_Force_To_Tx_State_If_Req(void);
typedef struct t_chan_ctrl
{
    t_timer inquiry_scan_rand_timer;
    t_devicelink *p_active_procedure_device_link;

    u_int inquiry_scan_request;
    u_int page_scan_request;
    u_int inquiry_request;
    u_int page_request;

#if (PRH_BS_CFG_SYS_LMP_PARK_SUPPORTED==1)
    /* 
     * Park Slave related procedures.
     */
    u_int park_slave_request;

    /* 
     * Park Slave related procedures.
     */
    u_int park_master_request;
#endif

#if (PRH_BS_CFG_SYS_LMP_MSS_SUPPORTED==1)
    u_int role_switch_request_master_context;
    u_int role_switch_request_slave_context;
#endif

#if (PRH_BS_CFG_SYS_SCATTERNET_SUPPORTED==1)
    u_int piconet_switch_request_master_context;
    u_int piconet_switch_request_slave_context;
#endif

#if (PRH_BS_CFG_SYS_LOW_POWER_MODE_SUPPORTED==1)
    u_int sleep_request;
#endif

#if (PRH_BS_CFG_SYS_RETURN_TO_PICONET_SUPPORTED==1)
    u_int return_to_piconet_request;
#endif

    t_state super_state;

    /*
     * When the device enters the 'super_state=Page' state, the device must 
     * 'remember' the previous state before entering the 'super_state=Page'
     * state.  This is needed for the following reason: 
     * if the Page is unsuccessful (i.e. a connection with the peer device 
     * is not established) then the Paging device must return to the state 
     * the device was in before entering the Page state.  Thus, before 
     * entering the Page super state the current state must be stored. 
     */
    t_state previous_super_state;

    t_packet event;

    t_ulc_procedure procedure_active;
    
    boolean inquiry_scan_rand_wait;

} t_chan_ctrl;

#endif
