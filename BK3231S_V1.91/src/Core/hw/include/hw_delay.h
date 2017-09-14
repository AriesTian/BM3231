#ifndef __PARTHUS_HW_DELAY__
#define __PARTHUS_HW_DELAY__

/*
 * HEADER NAME:    hw_delay.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    
 * MAINTAINER:     Ivan Griffin
 * DATE:           12 September 2001
 *
 * SOURCE CONTROL: $Id: hw_delay.h,v 1.7 2004/10/04 13:39:54 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2001-2004 Ceva Inc.
 *     All rights reserved.
 */

void HWdelay_Initialise(void);
void HWdelay_Wait_For_10us(u_int32 tens_of_u_secs);
void HWdelay_Wait_For_us(u_int32 units_of_u_secs);
void HWdelay_Wait_For_ms(u_int32 units_of_m_secs, boolean use_native_clk);
void HWdelay_Wait_For_Serial_Interface_Idle(void);
void HWdelay_Wait_For_Serial_Interface_Busy_us(u_int32 units_of_u_secs);

/*
 * Temporary backwards compatibility with radio drivers
 */
#define HWdelay_Wait_For HWdelay_Wait_For_10us
#endif
