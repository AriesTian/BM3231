#ifndef _PARTHUS_TRA_UART_IMPL
#define _PARTHUS_TRA_UART_IMPL

/*****************************************************************************
 * MODULE NAME:    tra_uart_impl.h
 * PROJECT CODE:   Bluetooth
 * DESCRIPTION:    Inline functions for UART decoder layer
 * MAINTAINER:     John Sheehy
 * CREATION DATE:  5 April 2001
 *
 * SOURCE CONTROL: $Id: tra_uart_impl.h,v 1.5 2004/07/07 14:22:46 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2001-2004 Ceva Inc.
 *     All rights reserved.
 *
 * SOURCE:         
 *
 *****************************************************************************/

#include "tra_uart.h"
#include "hc_event_gen.h"

/* 
 * TRAhcit_UART_Indicate_Error
 * 
 * paramters: type = type of UART error
 * returns: void
 *
 * This function adds one to an appropriate error counter 
 */
#if (TRA_HCIT_UART_SUPPORTED==1)
__INLINE__ void TRAhcit_UART_Indicate_Error(u_int8 type)
{
    extern struct tra_hcit_uart_info sys_hcit_uart_info;

    switch(type)
    {
        case TRA_HCIT_UART_FRAMING_ERROR:
            sys_hcit_uart_info.framing_errors++;
            HCeg_Hardware_Error_Event(PRH_BS_HW_ERROR_HCIT_UART_FRAMING);
            break;

        case TRA_HCIT_UART_OVERRUN_ERROR:
            sys_hcit_uart_info.overrun_errors++;
            HCeg_Hardware_Error_Event(PRH_BS_HW_ERROR_HCIT_UART_OVERRUN);
        break;
    }
}
#endif

#endif /* _PARTHUS_TRA_UART_IMPL */
