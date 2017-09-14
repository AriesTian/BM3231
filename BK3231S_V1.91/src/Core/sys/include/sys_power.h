#ifndef _PARTHUS_SYS_POWER_
#define _PARTHUS_SYS_POWER_

/******************************************************************************
 * MODULE NAME:    sys_power.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Low Power Mode Clock Control
 * MAINTAINER:     Ivan Griffin
 * DATE:           10 December 2001
 *
 * SOURCE CONTROL: $Id: sys_power.h,v 1.18 2004/11/19 16:17:29 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2001-2004 Ceva Inc.
 *     All rights reserved.
 *
 ******************************************************************************/


typedef enum {
    SYS_LF_OSC_NONE   = 0,
    SYS_LF_OSC_32K000 = 1,
    SYS_LF_OSC_32K768 = 2
} t_sys_lf_osc_type;

#if (PRH_BS_CFG_SYS_LOW_POWER_MODE_SUPPORTED==1)



/*
 * Function prototypes
 */
void SYSpwr_Halt_System(void);
void SYSpwr_Sleep_System(void);
void SYSpwr_Exit_Halt_System(void);
void SYSpwr_Force_System_Halt(void);

void SYSpwr_Initialise(void);
void SYSpwr_Setup_Sleep_Timer(u_int32 max_num_frames_to_sleep);
void SYSpwr_Handle_Early_Wakeup(void);
boolean SYSpwr_Is_Low_Power_Mode_Active(void);

boolean SYSpwr_Set_LowFrequencyOscillatorAvailable_Value(u_int8 osc_available);
t_sys_lf_osc_type SYSpwr_LowFrequencyOscillatorAvailable(void);
u_int32 SYSpwr_Get_Min_Frames_To_Sleep(void);

#else
/*
 * No sys_power, hence empty functions
 */
void SYSpwr_Initialise(void);
boolean SYSpwr_Is_Low_Power_Mode_Active(void);

#endif

#endif

