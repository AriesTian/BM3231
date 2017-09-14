#ifndef _PARTHUS_USLC_SCHED_
#define _PARTHUS_USLC_SCHED_

#include "lc_types.h"

/******************************************************************************
 * MODULE NAME:    uslc_scheduler.h
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Baseband Controller Module
 * MAINTAINER:     John Nelson, Conor Morris
 *
 * SOURCE CONTROL: $Id: uslc_scheduler.h,v 1.37 2008/11/17 14:14:53 tomk Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 ******************************************************************************/

void FAST_CALL USLCsched_Tx_Start(void);
void FAST_CALL USLCsched_Rx_Start(void) ;
void FAST_CALL USLCsched_Prepare_Tx(void);
void FAST_CALL USLCsched_Tx_Complete(void);
void FAST_CALL USLCsched_Process_Rx(void);
void FAST_CALL USLCsched_Initialise(void);

t_error USLCsched_Local_Piconet_Request(void);

void FAST_CALL USLCsched_Set_Next_Frame_Activity(t_USLC_Frame_Activity next_USLC_Frame_Activity);
t_USLC_Frame_Activity FAST_CALL USLCsched_Get_Next_Frame_Activity(void);
t_USLC_Frame_Activity FAST_CALL USLCsched_Get_Current_Frame_Activity(void);

t_devicelink* USLCsched_Get_Active_Device_Link(void);
void USLCsched_Update_Chac_Procedure_If_Req(void);

#endif
