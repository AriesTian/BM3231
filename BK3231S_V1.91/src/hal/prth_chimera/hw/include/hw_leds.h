#ifndef _PARTHUS_HW_LEDS_
#define _PARTHUS_HW_LEDS_

/*
 * MODULE NAME:    hw_leds.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Functions to access LEDs on ARM AEB-1
 * MAINTAINER:     Ivan Grifffin
 * DATE:           
 *
 * SOURCE CONTROL: $Id: hw_leds.h,v 1.6 2004/07/07 14:30:48 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    1 June 1999 -   ig       - Initial Version 
 *
 */

#include "sys_config.h"
#include "sys_types.h"

enum HWleds_Type
{
    HWled_POWER = 0,
    HWled_RED,
    HWled_AMBER,
    HWled_GREEN
};

__INLINE__ void HWleds_Initialise(void);
__INLINE__ void HWleds_On(void);
__INLINE__ void HWleds_Off(void);

void HWleds_Toggle(void);
void HWleds_Test(void);

__INLINE__ void HWled0_Toggle(void);
__INLINE__ void HWled1_Toggle(void);
__INLINE__ void HWled2_Toggle(void);
__INLINE__ void HWled3_Toggle(void);

__INLINE__ void HWled0_On(void);
__INLINE__ void HWled1_On(void);
__INLINE__ void HWled2_On(void);
__INLINE__ void HWled3_On(void);

__INLINE__ void HWled0_Off(void);
__INLINE__ void HWled1_Off(void);
__INLINE__ void HWled2_Off(void);
__INLINE__ void HWled3_Off(void);

void HWled_Toggle(int);
void HWled_On(int);
void HWled_Off(int);

#ifdef __USE_INLINES__
#include "hw_leds_impl.h"
#endif

#endif
