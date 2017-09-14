#ifndef _PARTHUS_TRA_UART_H_
#define _PARTHUS_TRA_UART_H_
/*****************************************************************************
 * MODULE NAME:    tra_uart.h
 * PROJECT CODE:   Bluetooth
 * DESCRIPTION:    Generic UART sub-layer (HCI transport)_
 * MAINTAINER:     John Sheehy
 * CREATION DATE:  27 February 2001
 *
 * SOURCE CONTROL: $Id: tra_uart.h,v 1.11 2004/07/07 14:22:46 namarad Exp $
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

#include "lmp_acl_connection.h"

/*
 * Handle HALs that don't define TRA_HCIT_UART_POLLED_TX_SUPPORTED
 */
#ifndef TRA_HCIT_UART_POLLED_TX_SUPPORTED
    #define TRA_HCIT_UART_POLLED_TX_SUPPORTED 0
#endif


/*
 * Structure for UARTs
 */

struct tra_hcit_uart_info
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

    void (*initialise)(u_int32 speed);
    void (*shutdown)(void);
    void (*transmit)(volatile u_int8 **data,volatile u_int32 *len, void (*txcb)(void));
#if TRA_HCIT_UART_POLLED_TX_SUPPORTED == 1
    void (*poll_tx)(volatile u_int8 **data, volatile u_int32 *len);
#endif

    /* Error counters and other information */

    u_int16 framing_errors;
    u_int16 overrun_errors;
};


/*
 * Types of UART line status errors
 */

enum
{
    TRA_HCIT_UART_FRAMING_ERROR,
    TRA_HCIT_UART_OVERRUN_ERROR,
    TRA_HCIT_UART_PARITY_ERROR
};

#define SBIT_SPREAD_FLAGS_SEQ            0
#define SBIT_SPREAD_FLAGS_ACK            3
#define SBIT_SPREAD_FLAGS_CRC_PRESENT    6
#define SBIT_SPREAD_FLAGS_PROTOCAL   7


u_int32 TRAhcit_UART_Get_Default_Baud_Rate(void);
void TRAhcit_UART_Set_Default_Baud_Rate(u_int32 baud_rate);


void TRAhcit_UART_Initialise(void);
void TRAhcit_UART_Shutdown(void);
void TRAhcit_UART_Transmit(u_int8 *pdu, u_int32 pdu_len, u_int8 *head, u_int8 head_len, u_int8 tra_source, t_deviceIndex device_index);
void TRAhcit_UART_Rx_Char(u_int8 ch);
void TRAhcit_UART_Tx_PDU(void);

boolean TRAhcit_UART_Transport_Activity(void);

__INLINE__ void TRAhcit_UART_Indicate_Error(u_int8 type);




/*
 * Include any inline'd helper methods
 */

#ifdef __USE_INLINES__
#include "tra_uart_impl.h"
#endif

#endif /* _PARTHUS_TRA_UART_H_ */
