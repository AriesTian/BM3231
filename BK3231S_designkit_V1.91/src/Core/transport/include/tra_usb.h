#ifndef _PARTHUS_TRA_USB_H_
#define _PARTHUS_TRA_USB_H_
/*****************************************************************************
 * MODULE NAME:    
 * PROJECT CODE:   Bluetooth
 * DESCRIPTION:    
 * MAINTAINER:     
 * CREATION DATE:  
 *
 * SOURCE CONTROL: 
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * SOURCE:         
 *
 *****************************************************************************/


#include "sys_types.h"
#include "sys_config.h"

#include "tra_hcit.h"

/*
 * Structure for USB
 */

struct tra_hcit_usb_info
{
    /*
     * Common structure (generic HCI transport structure above)
     * Any accesses to members of the common structure below should
     * collapse into additions from the base of the tra_hcit_uart_info
     * structure. NOTE: The common structure _must_ be the first member of
     * this or any other transport type.
     */

    struct tra_hcit_info common;

    /* Functions to initialise, shutdown, transmit a block and transmit a block polled  */

    void (*initialise)(void);
    void (*shutdown)(void);
    int (*transmit)(u_int8 *block_start,u_int32 block_length, u_int8 *header, unsigned int queue,t_deviceIndex device_index);

    /*     bmRequestType : indentifies the characteristics of specific request
     *
     */
    u_int8 request_type;
    /* Error counters and other information 
     TBD : cmcs */

};

void TRAhcit_USB_Initialise(void);
void TRAhcit_USB_Shutdown(void);
void TRAhcit_USB_Transmit (u_int8 *data, u_int32 pdu_len, u_int8 *header, 
                           u_int8 head_len, u_int8 tra_source, 
                           t_deviceIndex device_index);

void TRAhcit_USB_Acknowledge_Complete_Tx(void);
/*
 * Include any inline'd helper methods
 */


#endif /* _PARTHUS_TRA_USB_H_ */

