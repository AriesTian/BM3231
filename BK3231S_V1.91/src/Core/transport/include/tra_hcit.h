#ifndef _PARTHUS_TRA_HCIT
#define _PARTHUS_TRA_HCIT
/*****************************************************************************
 * MODULE NAME:    tra_hcit.h
 * PROJECT CODE:   Bluetooth
 * DESCRIPTION:    HCI Generic Transport Interface Header
 * MAINTAINER:     Tom Kerwick
 * CREATION DATE:  19 April 2000
 *
 * SOURCE CONTROL: $Id: tra_hcit.h,v 1.29 2009/04/28 16:08:44 morrisc Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * SOURCE:         
 *
 *****************************************************************************/

#include "sys_config.h"

/*
 * Types of transport supported
 */
enum
{
#if (TRA_HCIT_UART_SUPPORTED==1)
    TRA_HCIT_TYPE_UART,
#endif
#if (TRA_HCIT_USB_SUPPORTED==1)
	TRA_HCIT_TYPE_USB,
#endif
#if (TRA_HCIT_PCMCIA_SUPPORTED==1)
    TRA_HCIT_TYPE_PCMCIA,
#endif
#if (TRA_HCIT_COMBINED_SUPPORTED==1)
    TRA_HCIT_TYPE_COMBINED,
#endif
#if (TRA_HCIT_GENERIC_SUPPORTED==1)
	TRA_HCIT_TYPE_GENERIC,          /* This is used when a generic HCI API is required.
									 * Allows the a HC Object code build to present an
									 * interface which can be combined with an-other host
									 * without the need for source code.
									 */
#endif
    TRA_HCIT_TYPE_ENDS       /* This terminates the table, to dimension arrays */
};


/* Transport access mechanisms (with regards to interrupt/polled operation) */

enum 
{
    TRA_HCIT_FAST_IRQ,
    TRA_HCIT_SLOW_IRQ,
    TRA_HCIT_POLLED
};

/*
 * HCI transport type bytes
 */

enum
{
    TRA_HCIT_COMMAND = 1,
    TRA_HCIT_ACLDATA = 2,
    TRA_HCIT_SCODATA = 3,
    TRA_HCIT_EVENT   = 4,       
    TRA_HCIT_SREADTRUM  = 0xc0       

#ifdef SUPPORT_MTK_SPECAIL_COMMAND//support MTK command
,
    TRA_HCIT_MTK_COMMAND_fe = 0xfe
,
    TRA_HCIT_MTK_COMMAND_ff = 0xff
#endif    
};

/*
 * This structure contains information required to be persistent
 * during the operation of the HCI transport subsystem. This info
 * can be changed by calling another (platform dependent) register
 * function, passing this structure as the argument.
 * It is a union of common members and transport specific structures.
 */

struct tra_hcit_info
{
    /*
     * Type of transport mechanism, e.g. UART, USB
     */

    u_int8 type;

    /*
     * Type of access method, e.g. fast/slow interrupt, polled
     */

    u_int8 access_type;

    /* 
	 * Busy flag for scheduler 
	 */

#if (BUILD_TYPE==GENERIC_BUILD)
    u_int8 tx_acl_busy;
    u_int8 tx_sco_busy;
    u_int8 tx_evt_busy;
#else
    u_int8 tx_busy;
#endif

	/*
     * tx_tra_source indicates the queue (e.g. HCI/L2CAP/SCO) the PDU was removed
     * from - used to inform the queue that the PDU is fully transmitted.
     */

	u_int8 tx_tra_source;

    /*
     * Device indices held during transmit and 
     * receive (this info is required both at the
     * start and end of transmit or receive operation.
     */

    t_deviceIndex tx_device_index;
    t_deviceIndex rx_device_index;

    t_deviceIndex tx_sco_device_index;
    t_deviceIndex rx_sco_device_index;

    
    /*
     * Interrupt handlers must have the same interface
     * i.e. the normally take no arguments (this can change
     * if a dispatching re-entrant interrupt handler is employed
     */

    void (*interrupt_handler)(void);

#if (PRH_BS_DEV_SERVICE_TRANSPORT_DURING_SPINS_SUPPORTED==1)
    /* poll Rx (for UARTs) during spins */
    void (*poll_rx)(void);

    /* HCIT Suspend callback */
    void (*suspend)(void);

    /* HCIT Resume callback */
    void (*resume)(void);
#endif
}; 





/*
 * Function Interfaces to Generic HCI transport from physical layer decoded sublayer
 * e.g. tra_uart.c
 */

u_int8* TRAhcit_Generic_Get_Rx_Buf(u_int8 ptype,int size, u_int8 *hci_header);
void TRAhcit_Generic_Commit_Rx_Buf(u_int8 tra_source);
void TRAhcit_Generic_Acknowledge_Complete_Tx(u_int8 tra_source, u_int32 length);
t_error TRAhcit_Register_Generic_Dispatcher(void (*callback)(u_int8 *data, u_int32 pdu_len, u_int8 *header, 
                            u_int8 head_len));


#define UNITS_OF_CHECK_WAKEUP_M_SECS 1000  //1s

#ifdef NEW_SPREADTRUM_WAKEUP
typedef enum 
{
STEP_WAKE_UP_SPREADTRUM_HOST_START=0,
STEP_WAKE_UP_SPREADTRUM_HOST_LOW_LEVEL=1,
STEP_WAKE_UP_SPREADTRUM_HOST_HIGH_LEVEL_AGAIN=2,
STEP_WAKE_UP_SPREADTRUM_HOST_FINISHED=3,
}WAKE_UP_LOW_LEVEL;

#endif


extern volatile u_int8 force_step_spreadtrum_finish;
extern volatile t_clock t_check_wakeup_timer_count;



/*
 * Interfaces to System Scheduler
 */

t_error TRAhcit_Dispatch_Pending_Data(void);
t_error TRAhcit_Dispatch_Pending_Event(void);
t_error TRAhcit_Dispatch_Pending_SCO(void);



/*
 * Control Interface
 */

int TRAhcit_Initialise(void);
int TRAhcit_Shutdown(void);

/*
 * Accessor interface
 */
__INLINE__ u_int8 TRAhcit_Is_Tx_Busy(void);

/*
 * The following method sets the transport register function pointer
 * (*TRAhcit_Register) to the appropriate value. This is necessary, as
 * static initialisers cannot be relied upon after software reset
 */

extern void* (*TRAhcit_Register)(void);

__INLINE__ void TRAhcit_Set_Register_Function(void* (*func)(void));
void* TRAhcit_Register_UART_Driver(void);
void* TRAhcit_Register_USB_Driver(void);

__INLINE__ void TRAhcit_Call_Interrupt_Handler(void);

__INLINE__ void TRAhcit_Call_Poll_Rx(void);
__INLINE__ void TRAhcit_Suspend(void);
__INLINE__ void TRAhcit_Resume(void);


 #if (PRH_BS_DEV_PROCESS_UART_RX_DATA_IN_IRQ_CONTEXT == 1)
 #define TRAhcit_Service_Rx_Fifo_Cache() HCIT_Chimera_16550_Service_Rx_Fifo_Cache()
 #else
 #define TRAhcit_Service_Rx_Fifo_Cache()
 #endif
 
/*
 * Include any inline functions
 */

#ifdef __USE_INLINES__
#include "tra_hcit_impl.h"
#endif

#endif /* _PARTHUS_TRA_HCIT */
