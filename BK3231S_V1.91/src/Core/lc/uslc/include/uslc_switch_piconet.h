#ifndef _PARTHUS_USLC_SWITCH_PICONET_
#define _PARTHUS_USLC_SWITCH_PICONET_

/***********************************************************************
 *
 * HEADER NAME:    uslc_switch_piconet.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    LC Portion of Scatternet Interpiconet Switch Procedure
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  8 April 2002
 *
 * SOURCE CONTROL: $Id: uslc_switch_piconet.h,v 1.7 2005/01/19 12:20:09 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2002-2004 Ceva Inc.
 *     All rights reserved.
 *
 ***********************************************************************/

void USLCsp_Initialise(void);
t_error USLCsp_Request(t_deviceIndex device_index, boolean sp_override);
t_error USLCsp_Cancel(void);
void USLCsp_State_Dispatcher(boolean);

t_deviceIndex USLCsp_Get_Activated_Device_Index(void);
boolean USLCsp_Set_Activated_Device_Index(t_deviceIndex device_index);
#if (PRH_BS_CFG_SYS_SCO_REPEATER_SUPPORTED==1)
void USLCsp_SCO_Rep_Switch(t_devicelink* p_dev_link);
#endif

#define USLCsp_RESUME_PICONET FALSE
#define USLCsp_CHANGE_PICONET TRUE

#endif

