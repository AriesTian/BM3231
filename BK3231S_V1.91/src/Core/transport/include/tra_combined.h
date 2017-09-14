#ifndef _PARTHUS_TRA_COMBINED_H_
#define _PARTHUS_TRA_COMBINED_H_

/*****************************************************************************
 * MODULE NAME:    tra_uart.h
 * PROJECT CODE:   Bluetooth
 * DESCRIPTION:    Generic UART sub-layer (HCI transport)_
 * MAINTAINER:     John Sheehy
 * CREATION DATE:  27 February 2001
 *
 * SOURCE CONTROL: $Id: tra_combined.h,v 1.3 2004/07/07 14:22:45 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * SOURCE:         
 *
 *****************************************************************************/
#include "sys_config.h"
#include "sys_types.h"

#include "tra_hcit.h"

struct tra_hcit_combined_info
{
    /*
     * Common structure (generic HCI transport structure above)
     * Any accesses to members of the common structure below should
     * collapse into additions from the base of the tra_hcit_uart_info
     * structure. NOTE: The common structure _must_ be the first member of
     * this or any other transport type.
     */

    struct tra_hcit_info common;
};


void TRAhcit_COMBINED_Initialise(void);
void TRAhcit_COMBINED_Shutdown(void);
void TRAhcit_COMBINED_Transmit(u_int8 *pdu, u_int32 pdu_len, u_int8 *head, u_int8 head_len, u_int8 tra_source, t_deviceIndex device_index);
/*void TRAhcit_COMBINED_Rx_Char(u_int8 ch);*/

#endif /* _PARTHUS_TRA_COMBINED_H_ */
