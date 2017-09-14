/*
 * MODULE NAME:    hw_leds.c
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Code to drive LEDs on ARM AEB1
 * MAINTAINER:     Ivan Griffin
 * DATE:           27 September 1999
 *
 * SOURCE CONTROL: $Id: hw_leds.c,v 1.6 2004/07/07 14:30:48 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    V0.9     27 September 1999 -   IG       - Created for SHARP LH77790 AEB
 *
 * SOURCE: 
 * ISSUES:
 * NOTES TO USERS:
 *    
 */


#include "hw_leds.h"

/*
 * HWleds_On, HWleds_Off and HWleds_Toggle are defined in
 * hw_leds_impl.h
 */


void HWleds_Test(void)
{
#if 0
    int i;
    HWleds_Off();

    HWled0_On(); for (i = 0; i < 100000; i++)  ;
    HWled1_On(); for (i = 0; i < 100000; i++)  ;
    HWled2_On(); for (i = 0; i < 100000; i++)  ;
    HWled3_On(); for (i = 0; i < 100000; i++)  ;
    HWled0_Off(); for (i = 0; i < 100000; i++)  ;
    HWled1_Off(); for (i = 0; i < 100000; i++)  ;
    HWled2_Off(); for (i = 0; i < 100000; i++)  ;
    HWled3_Off(); for (i = 0; i < 100000; i++)  ;
#endif	
}
 
void HWled_On(int led)
{
#if 0
    switch (led)
    {
    case HWled_POWER:
        HWled0_On();
        break;

    case HWled_RED:
        HWled1_On();
        break;

    case HWled_AMBER:
        HWled2_On();
        break;

    case HWled_GREEN:
        HWled3_On();
        break;

    default:
        break;
    }
#endif	
} 

void HWled_Off(int led)
{
#if 0
    switch (led)
    {
    case HWled_POWER:
        HWled0_Off();
        break;

    case HWled_RED:
        HWled1_Off();
        break;

    case HWled_AMBER:
        HWled2_Off();
        break;

    case HWled_GREEN:
        HWled3_Off();
        break;

    default:
        break;
    }
#endif	
}
 
void HWled_Toggle(int led)
{
#if 0
    switch (led)
    {
    case HWled_POWER:
        HWled0_Toggle();
        break;

    case HWled_RED:
        HWled1_Toggle();
        break;

    case HWled_AMBER:
        HWled2_Toggle();
        break;

    case HWled_GREEN:
        HWled3_Toggle();
        break;

    default:
        break;
    }
#endif	
}

#ifndef __USE_INLINES__
#include "hw_leds_impl.h"
#endif 
