#ifndef _PARTHUS_USLC_PAGE_
#define _PARTHUS_USLC_PAGE_

/*********************************************************************
 * MODULE NAME:    uslc_page.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Baseband Paging procedure
 * MAINTAINER:     John Nelson, Conor Morris
 *
 * SOURCE CONTROL: $Id: uslc_page.h,v 1.17 2006/09/14 15:49:35 nicolal Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 *      
 *********************************************************************/

t_error USLCpage_Request(t_deviceIndex device_index, 
                          u_int16 train_repetitions, t_slots page_timeout);

void USLCpage_Cancel(void);

void USLCpage_Initialise(void);

void USLCpage_Page(boolean look_ahead_to_next_frame);

void USLCpage_Potential_Early_Prepare_MasterPageResponse(void);

void USLCpage_Page_Force_To_Tx_State_If_Req(void);

#endif
