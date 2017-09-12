#ifndef _PARTHUS_LM_SCAN_
#define _PARTHUS_LM_SCAN_

/**********************************************************************
 * MODULE NAME:    lmp_scan.h
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Host Controller Page / Inquiry Scan Functionality
 * MAINTAINER:     Gary Fleming
 * DATE:           21 June 1999
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    xx xxx 1999 -   gf       - Initial Version 
 *
 * SOURCE CONTROL: $Id: lmp_scan.h,v 1.13 2011/04/01 16:03:20 garyf Exp $
 *
 **********************************************************************/

#include "lc_interface.h"
#include "lmp_acl_connection.h"

void LMscan_Initialise(void);
void LMscan_Scan_On(u_int8 new_scan_status);

t_error LMscan_Write_Scan_Activity(u_int8 scan_flag, t_scanActivity*);
t_scanActivity LMscan_Read_Scan_Activity(u_int8 scan_flag);


t_error LMscan_Write_Scan_Enable(t_scanEnable scan_enable);
t_scanEnable LMscan_Read_Scan_Enable(void);

void LMscan_Page_Scan_Start(t_lmp_link* p_dummy_link);
t_error LMscan_Page_Scan_Incoming(t_LC_Event_Info* eventInfo);
void LMscan_Inquiry_Scan_Start(t_lmp_link* p_dummy_link);

t_error LMscan_LM_Read_Supported_IAC(u_int8* p_num_iac, u_int8* p_iac);
t_error LMscan_LM_Write_Supported_IAC(u_int8 num_iac, u_int8* p_iac_list);


#if (PRH_BS_CFG_SYS_LMP_INTERLACED_INQUIRY_SCAN_SUPPORTED==1)
t_error LMscan_Write_Inquiry_Scan_Type(t_scan_type);
t_scan_type LMscan_Read_Inquiry_Scan_Type(void);
#endif

#if (PRH_BS_CFG_SYS_LMP_INTERLACED_PAGE_SCAN_SUPPORTED==1)
t_error LMscan_Write_Page_Scan_Type(t_scan_type);
t_scan_type LMscan_Read_Page_Scan_Type(void);
#endif


t_slots LMscan_Get_Interval_To_Next_Scan(t_clock next_instant);
#endif
