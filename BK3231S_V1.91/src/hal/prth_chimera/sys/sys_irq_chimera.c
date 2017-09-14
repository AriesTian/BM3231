/******************************************************************************
 *        
 * MODULE NAME:    sys_irq_chimera.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Chimera (XR7) Hardware Interrupt Interface
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  09 August 1999
 *
 * SOURCE CONTROL: $Id: sys_irq_chimera.c,v 1.4 2004/07/07 14:30:49 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    09 Aug 1999 -   IG       -  Initial Version
 *    11 Oct 2000 -   IG       -  split sys_irq into Chimera specific code
 *                                and common code -- this is for the
 *                                Chimera platform
 *
 ******************************************************************************/

/******************************************************************************
 *
 * Internal Helper Functions
 * these defines/functions eventually need to get split into a separate
 * file to support multiple ARM targets - the code that remains is
 * common to all ARM7 processors
 *
 ******************************************************************************/
#include"include.h"


#define IRQ_JALAPENO       0x0004
#define XR7_UART2_IRQ      0x0010
#define IRQ_UART  XR7_UART2_IRQ

#define IRQ_JALAPENO_CTRL  0x306028
#define IRQ_JALAPENO_CLR   0x30602a



__inline static uint32 _SYSirq_Get_Status_IRQ(void);
//__inline static u_int32 _SYSirq_Get_Status_FIQ(void);
__inline void _SYSirq_Setup_IRQ_FIQ_Enable_Masks(void);

//__inline static uint32 _SYSirq_Get_Status_FIQ(void);
__inline static void _SYSirq_Clear_IRQ(u_int32 status);
__inline static uint32 _SYSirq_Get_Status_IRQ(void);

__inline static uint32 _SYSirq_Get_Status_IRQ(void)
{
    return BK3000_ICU_REGC_INT_STATUS;
}

//__INLINE__ static u_int32 _SYSirq_Get_Status_FIQ(void)
//{
 //   u_int32 status =  *(u_int16*)XR7_FIQ_ST_ADDR;
//	status &= 0xffff;

//    return (status);
//}

__INLINE__ static void _SYSirq_Clear_IRQ(u_int32 status)
{
    BK3000_ICU_REGB_INT_CLEAR_CONFIG = status;
}


__INLINE__ void _SYSirq_Setup_IRQ_FIQ_Enable_Masks(void)
{
    *(u_int16*)XR7_FIQ_MAP_ADDR = 0x0000; /* IRQ_UART */
	*(u_int16*)XR7_FIQ_MSK_ADDR = 0x0000; /* IRQ_UART */
	*(u_int16*)XR7_IRQ_MAP_ADDR = IRQ_JALAPENO | IRQ_UART;
	*(u_int16*)XR7_IRQ_MSK_ADDR = IRQ_JALAPENO | IRQ_UART;
	*(u_int16*)XR7_INTCFG_ADDR = 0x0002;
	*(u_int16*)XR7_IRQCLR_ADDR = IRQ_JALAPENO;
}

/* Status Routines used by TCI */

u_int32 SYSirq_Get_Active_IRQ(void)
{
    u_int32 status = *(u_int16*)XR7_IRQ_MSK_ADDR;
    status &= 0xffff;

    return (status);
}

u_int32 SYSirq_Get_Active_FIQ(void)
{
    u_int32 status = *(u_int16*)XR7_FIQ_MSK_ADDR;
    status &= 0xffff;

    return (status);
}

