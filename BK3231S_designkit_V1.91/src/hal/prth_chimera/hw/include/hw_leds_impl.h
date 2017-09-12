#ifndef _PARTHUS_HW_LEDS_IMPL_
#define _PARTHUS_HW_LEDS_IMPL_

/*
 * MODULE NAME:    hw_leds_impl.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Functions to access LEDs on Parthus Chimera
 * MAINTAINER:     Ivan Grifffin
 * DATE:           
 *
 * SOURCE CONTROL: $Id: hw_leds_impl.h,v 1.9 2004/07/07 14:30:48 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    1 June 1999 -   ig       - Initial Version 
 *
 */

#include "sys_features.h"    /* Will include sys_hal_features, which will provide XR7_PORTA & LAT */


__INLINE__ void HWleds_On(void)
{
//	XR7_PORTA_LAT = 0x00ff;
}

__INLINE__ void HWleds_Off(void)
{
//	XR7_PORTA_LAT = 0x0000;
}

__INLINE__ void HWleds_Toggle(void)
{
//	XR7_PORTA_LAT ^= 0x00ff;
}

__INLINE__ void HWled0_On(void)
{
//	XR7_PORTA_LAT |= 0x0001;
}

__INLINE__ void HWled1_On(void)
{
//	XR7_PORTA_LAT |= 0x0002;
}

__INLINE__ void HWled2_On(void)
{
//	XR7_PORTA_LAT |= 0x0004;
}

__INLINE__ void HWled3_On(void)
{
//	XR7_PORTA_LAT |= 0x0008;
}

__INLINE__ void HWled4_On(void)
{
//	XR7_PORTA_LAT |= 0x0010;
}

__INLINE__ void HWled5_On(void)
{
//	XR7_PORTA_LAT |= 0x0020;
}

__INLINE__ void HWled6_On(void)
{
//	XR7_PORTA_LAT |= 0x0040;
}

__INLINE__ void HWled7_On(void)
{
//	XR7_PORTA_LAT |= 0x0080;
}

__INLINE__ void HWled0_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0001);
}

__INLINE__ void HWled1_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0002); 
}

__INLINE__ void HWled2_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0004);
}

__INLINE__ void HWled3_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0008);
}

__INLINE__ void HWled4_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0010);
}

__INLINE__ void HWled5_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0020);
}

__INLINE__ void HWled6_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0040);
}

__INLINE__ void HWled7_Off(void)
{
//	XR7_PORTA_LAT &= ~(0x0080);
}

__INLINE__ void HWled0_Toggle(void)
{
//	XR7_PORTA_LAT ^= 0x0001;
}

__INLINE__ void HWled1_Toggle(void)
{
//	XR7_PORTA_LAT ^= 0x0002;

}

__INLINE__ void HWled2_Toggle(void)
{
//	XR7_PORTA_LAT ^= 0x0004;

}

__INLINE__ void HWled3_Toggle(void)
{
//	XR7_PORTA_LAT ^= 0x0008;
}

__INLINE__ void HWleds_Initialise(void)
{
//	XR7_PORTA_DIR |= 0xffff;
}

#ifndef __USE_INLINES__
#include "hw_leds_impl.h"
#endif 
#endif
