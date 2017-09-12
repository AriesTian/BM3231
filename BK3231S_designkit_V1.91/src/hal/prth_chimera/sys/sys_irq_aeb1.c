/******************************************************************************
 *        
 * MODULE NAME:    sys_irq_aeb1.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    ARM AEB-1 Hardware Interrupt Interface
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  09 August 1999
 *
 * SOURCE CONTROL: $Id: sys_irq_aeb1.c,v 1.4 2004/07/07 14:30:49 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    09 Aug 1999 -   IG       -  Initial Version
 *    11 Oct 2000 -   IG       -  splitting IRQ handler up into common code
 *                                and platform specific code -- this is for
 *                                ARM AEB-1
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

#define AEB1_INT_CTRL_BASE        0xffffa800
#define AEB1_IRQSR                ((volatile u_int32 *)(AEB1_INT_CTRL_BASE + 0x14))
#define AEB1_FIQSR		          ((volatile u_int32 *)(AEB1_INT_CTRL_BASE + 0x18))
#define AEB1_UART1_IRQ		      0x0400
#define IRQ_JALAPENO              0x0002 
#define AEB1_IRQ_JALAPENO_CTRL    0x02000028 
#define AEB1_IRQ_JALAPENO_CLR     0x0200002a 
#define AEB1_IRQ_JALAPENO_ENABLE  0xffffffff

/* Inerrupt Enable Register */
#define AEB1_IRQER                ((volatile u_int32)(AEB1_INT_CTRL_BASE + 0x0c))
#define AEB1_FIQER		          ((volatile u_int32)(AEB1_INT_CTRL_BASE + 0x10))

/* Interrupt Clear Register */
#define AEB1_ICLR                 0xffffa808

/* Interrupt Configuration Register (External) */
#define AEB1_ICR0                 0xffffa800

#define IRQ_UART AEB1_UART1_IRQ

__INLINE__ static u_int32 _SYSirq_Get_Status_IRQ(void);
//__INLINE__ static u_int32 _SYSirq_Get_Status_FIQ(void);
__INLINE__ void _SYSirq_Setup_IRQ_FIQ_Enable_Masks(void);

//__INLINE__ static u_int32 _SYSirq_Get_Status_FIQ(void);
__INLINE__ static void _SYSirq_Clear_IRQ(u_int32 status);
__INLINE__ static u_int32 _SYSirq_Get_Status_IRQ(void);

__INLINE__ static u_int32 _SYSirq_Get_Status_IRQ(void)
{
    return BK3000_ICU_REGC_INT_STATUS;
}

//__INLINE__ static u_int32 _SYSirq_Get_Status_FIQ(void)
//{
//    u_int32 status = *(u_int32*)AEB1_FIQSR;
  //  status &= 0xffff;

   // return (status);
//}

__INLINE__ static void _SYSirq_Clear_IRQ(u_int32 status)
{
    BK3000_ICU_REGB_INT_CLEAR_CONFIG= status;
}


__INLINE__ void _SYSirq_Setup_IRQ_FIQ_Enable_Masks(void)
{
    *(u_int32*)AEB1_ICLR |= 0x0001;
    *(u_int32*)AEB1_ICR0 |= 0x0003; /* enable low-high edge detection */
    *(u_int32*)AEB1_FIQER = IRQ_UART;
    *(u_int32*)AEB1_IRQER = IRQ_JALAPENO;
    *(u_int32*)AEB1_IRQER |= 0x0001;   /* Button Interrupt */
}

/* Status Routines used by TCI */

u_int32 SYSirq_Get_Active_IRQ(void)
{
    u_int32 status = *(u_int32*)AEB1_IRQER;
    status &= 0xffff;

    return (status);
}

u_int32 SYSirq_Get_Active_FIQ(void)
{
    u_int32 status = *(u_int32*)AEB1_FIQER;
    status &= 0xffff;

    return (status);
}

