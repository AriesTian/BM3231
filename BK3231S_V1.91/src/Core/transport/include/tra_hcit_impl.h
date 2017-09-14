#ifndef _PARTHUS_TRA_HCIT_IMPL
#define _PARTHUS_TRA_HCIT_IMPL

/*****************************************************************************
 * MODULE NAME:    tra_hcit_impl.h
 * PROJECT CODE:   Bluetooth
 * DESCRIPTION:    HCI Generic Transport Interface Inline functions
 * MAINTAINER:     Tom Kerwick
 * CREATION DATE:  4 March 2001
 *
 * SOURCE CONTROL: $Id: tra_hcit_impl.h,v 1.11 2004/11/19 14:35:09 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * SOURCE:         
 *
 *****************************************************************************/

#include "tra_hcit.h"

#if (PRAGMA_INLINE==1)
#pragma inline(TRAhcit_Set_Register_Function)
#pragma inline(TRAhcit_Call_Interrupt_Handler)
#pragma inline(TRAhcit_Call_Poll_Rx)
#pragma inline(TRAhcit_Call_Suspend)
#pragma inline(TRAhcit_Call_Resume)
#pragma inline(TRAhcit_Is_Tx_Busy)
#endif

/* 
 * TRAhcit_Call_Interrupt_Handler
 * 
 * paramters: void
 * returns: void
 *
 * This function calls the interrupt handler of the HCI physical transport device.
 * It is inline here to prevent sharing of private structures. This function itself
 * would be called from the processor's interrupt handler.
 */

__INLINE__ void TRAhcit_Call_Interrupt_Handler(void)
{
	extern struct tra_hcit_info volatile *sys_hcit_info;	
	sys_hcit_info->interrupt_handler();
}

/* 
 * TRAhcit_Call_Poll_Rx
 * 
 * paramters: void
 * returns: void
 *
 * This function calls the poll rx function of the HCI physical transport device
 * It is inline here to prevent sharing of private structures. This function itself
 * is called during clock sync spins to allow slow FIFO based devices empty their
 * FIFO - for a fast block based device, it may be implemented as an NULL pointer
 */
__INLINE__ void TRAhcit_Call_Poll_Rx(void)
{
#if (PRH_BS_DEV_SERVICE_TRANSPORT_DURING_SPINS_SUPPORTED==1)
	extern struct tra_hcit_info volatile *sys_hcit_info;	
        if (0 != sys_hcit_info->poll_rx) { sys_hcit_info->poll_rx(); }
#endif
}

/* 
 * TRAhcit_Call_Suspend
 * 
 * paramters: void
 * returns: void
 *
 * This function calls the ssupend function of the HCI physical transport device
 * It is inline here to prevent sharing of private structures. This function itself
 * is called during wakeup to prevent HCI corruption due to slow re-init of radio etc.
 * IF unnecessary for a platform, it may be implemented as an NULL pointer
 */
__INLINE__ void TRAhcit_Call_Suspend(void)
{
#if (PRH_BS_DEV_SERVICE_TRANSPORT_DURING_SPINS_SUPPORTED==1)
	extern struct tra_hcit_info volatile *sys_hcit_info;	
        if (0 != sys_hcit_info->suspend) { sys_hcit_info->suspend(); }
#endif
}

/* 
 * TRAhcit_Call_Resume
 * 
 * paramters: void
 * returns: void
 *
 * This function calls the resume function of the HCI physical transport device
 * It is inline here to prevent sharing of private structures. This function itself
 * is called during wakeup to prevent HCI corruption due to slow re-init of radio etc.
 * IF unnecessary for a platform, it may be implemented as an NULL pointer
 */
__INLINE__ void TRAhcit_Call_Resume(void)
{
#if (PRH_BS_DEV_SERVICE_TRANSPORT_DURING_SPINS_SUPPORTED==1)
	extern struct tra_hcit_info volatile *sys_hcit_info;	
        if (0 != sys_hcit_info->resume) { sys_hcit_info->resume(); }
#endif
}


/*
 * TRAhcit_Set_Register_Function
 *
 * paramters: func = function pointer corresponding to the function which will register
 * the appropriate HCI Transport device
 * returns: void
 *
 * This is called by the stack boot up sequence (or HAL startup)
 * to assign the proper function to the register pointer (used by TRAhcit_Initialise
 * to register the appropriate device. This is required because statically initialising
 * the register pointer at compile/link time does not afford the required flexibility
 * of hot-swapping HCI transport devices.
 */

__INLINE__ void TRAhcit_Set_Register_Function(void* (*func)(void))
{
    extern void* (*TRAhcit_Register)(void);
    TRAhcit_Register = func;
}


/*
 * TRAhcit_Is_Tx_Busy
 *
 * Returns TRUE if actively transmitting on HCI transport
 */
__INLINE__ u_int8 TRAhcit_Is_Tx_Busy(void)
{
   	extern struct tra_hcit_info volatile *sys_hcit_info;	
#if (BUILD_TYPE==GENERIC_BUILD)
    return ((sys_hcit_info->tx_acl_busy)
         || (sys_hcit_info->tx_sco_busy)
         || (sys_hcit_info->tx_evt_busy));
#else
    return  (sys_hcit_info->tx_busy);
#endif
}

#endif /* _PARTHUS_TRA_HCIT_IMPL */
