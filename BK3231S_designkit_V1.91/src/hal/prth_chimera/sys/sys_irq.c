/******************************************************************************
 *        
 * MODULE NAME:    sys_irq.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Hardware Interrupt Interface - Chimera
 * MAINTAINER:     Ivan Griffin/Cyril Jean
 * DATE:           09 August 1999
 *
 * SOURCE CONTROL: $Id: sys_irq.c,v 1.102 2009/04/28 16:08:51 morrisc Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    09 Aug 1999 -   IG       -  Initial Version
 *    Oct 2000    -   CJ       -  Port to Chimera
 *
 ******************************************************************************/
#include "sys_config.h"
#include "sys_types.h"
#include "sys_features.h"
#include "sys_config.h"
#include "sys_power.h"
#include "sys_irq.h"
#include "lc_types.h"
#include "lslc_slot.h"
#include "lslc_irq.h"
#include "hw_jalapeno.h"
#include "hw_register.h"
#include "hw_macro_defs.h"
#include "sys_mmi.h"
#include "tra_hcit.h"
#include "lmp_config.h"
#include "DeviceBtj_Header.h"
#ifndef __USE_INLINES__
#include "sys_irq_chimera_impl.h"
#endif


extern t_LMconfig g_LM_config_info;


#define IRQ_VECTOR (unsigned *)   0x18 
#define FIQ_VECTOR (unsigned *)   0x1c
#define MASK_24_BIT         0xff000000
#define BRANCH_OP_CODE      0xea000000

#define PIPE_OFFSET               0x08
#define WORD_OFFSET               0x02

/******************************************************************************
 *
 * Module variables
 *
 ******************************************************************************/
#if (PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1)
#define DSRS_TABLE_SIZE		10

static volatile u_int32 pending_dsr_counter;
static volatile u_int32 dsr_lock;
static volatile u_int32 dsr_table_head;
static volatile u_int32 dsr_table_tail;

static void (*pending_dsr_table[DSRS_TABLE_SIZE])(void);
#endif

extern volatile u_int8 flag_system_active;
extern volatile u_int8 flag_key_down;
extern volatile u_int8 b_26M_colsed;

/******************************************************************************
 *
 * FUNCTION:  SYSirq_IRQ_Handler
 * PURPOSE:   Services slow interrupt requests to micro-controller
 *
 ******************************************************************************/
__IRQ__ void FAST_CALL SYSirq_FIQ_Handler(void)//FIQ_Exception(void) 
{
    unsigned int IntStat ;
    
    IntStat = REG_AHB0_ICU_INT_STATUS_FLAG;
    
    
    if(IntStat & INT_STATUS_CEVA) 
    {
        if(b_26M_colsed)
        {
            REG_AHB0_ICU_CEVA_CLKCON=0x00;
            BK3000_XVR_REG_0x09 = 0x19407D00;
            Set_CPU_PLL_clk(1); 
            ///sys_wakeup();
        }
        //else
        //    REG_AHB0_ICU_CORECLKCON  = (1<<BIT_CORE_CLK_DIV);
        LSLCirq_IRQ_Handler();
       // REG_AHB0_ICU_CORECLKCON  = (2<<BIT_CORE_CLK_DIV);
    }
	if(IntStat & INT_STATUS_UART)          //Uart1 Int Assert
    {
        UART_Interrupt_Handler();
    }
   

    REG_AHB0_ICU_INT_STATUS_FLAG= IntStat;
}
//=======================================================================
//=======================================================================
__IRQ__  void SYSirq_IRQ_Handler(void)//IRQ_Exception(void)
{
    unsigned int IntStat;
    
    IntStat = REG_AHB0_ICU_INT_STATUS_FLAG;
    /*
    if(IntStat & INT_STATUS_UART)          //Uart1 Int Assert
    {
        UART_Interrupt_Handler();
    }
	*/
    if(IntStat & INT_STATUS_TIMER)
    {
        
       // else
        //    REG_AHB0_ICU_CORECLKCON  = (1<<BIT_CORE_CLK_DIV);
        Timer_ISR();
        //REG_AHB0_ICU_CORECLKCON  = (2<<BIT_CORE_CLK_DIV);
    }
    if(IntStat & INT_STATUS_GPIO)           //GPIO Int Assert
    {
        if(b_26M_colsed)
        {
            REG_AHB0_ICU_CEVA_CLKCON=0x00;
            BK3000_XVR_REG_0x09 = 0x19407D00;
            Set_CPU_PLL_clk(1); 
        }
        REG_APB5_GPIO_WUATOD_ENABLE = 0;
        REG_APB5_GPIO_WUE_ENABLE=0;
        REG_APB5_GPIO_WUATOD_STAT = 0xffffffff;
        REG_APB5_GPIO_WUE_STAT = 0xff ;
        REG_AHB0_ICU_INT_ENABLE &= ~(INT_STATUS_GPIO|INT_STATUS_GPIO_WAKEUP);

        //keyboard_mouse_process(); 				//shut down by ariestian in 20170803 
    }    
    if(IntStat & INT_STATUS_RTC)           //RTC Int Assert
    {
		//Beken_RTC_IntService();
    } 
    if(IntStat & INT_STATUS_PWM)
    {
		//Beken_PWM_IntService();
    }
    if(IntStat & INT_STATUS_ADC)            //ADC Int Assert
    {
        //bprintf("adc_i\n");
        sys_flag |= FLAG_ADC_BUZY;
        REG_APB7_ADC_CFG |= (1<<BIT_ADC_INT_CLEAR);

    }
    
    if(IntStat & INT_STATUS_EXT_TIME)      //External Timer (Sub-DeepSleep Timer) Int Assert
    {
		//SubDeepSleep_Timer_IntService();
    }

    if(IntStat & INT_STATUS_I2C)           //I2c1 Int Assert
    {
        //BKI2cIntService(0);
    }

    if(IntStat & INT_STATUS_SPI)           //Spi1 Int Assert
    {
        //BKSpiIntService(0);
        SPI_InterruptHandler();				//add by ariestian in 20170803
    }

    REG_AHB0_ICU_INT_STATUS_FLAG= IntStat;
}

#if 0

__IRQ__ void SYSirq_IRQ_Handler(void)
{
    u_int32 status;

    if(BK3231_ICU_REG13_GPIO_INT&bit_GPIO_INTR_STATUS)
    {
        //delay_ms(1);
        b_gpio_intr = 1;
        flag_system_active = TRUE;
        flag_key_down = TRUE;
        BK3231_GPIO_Work();
        if(!link_flag)
        {   
            auto_connect_status|=AUTO_CONNECT_STEP_ONE;
            //SYSpwr_Handle_Early_Wakeup();
            SYSpwr_Exit_Halt_System();
            HW_set_aux_tim_intr_mask(1);
            LSLCirq_Disable_Aux_Tim_Intr(); 
        }
        BK3231_GPIO34_INTSTA0 = 0xffffffff;
        BK3231_GPIO35_INTSTA1 = 0xffffffff;
        BK3231_ICU_REG13_GPIO_INT |= bit_GPIO_INTR_CLEAR;
        
    }

    status = _SYSirq_Get_Status_IRQ();

    if(status&bit_UART_INTR)
    {
       // TRAhcit_Call_Interrupt_Handler();
        HCIT_Chimera_16550_Interrupt_Handler();
	    _SYSirq_Clear_IRQ(bit_UART_INTR);
        
    }

#if(BK3000_CHIP_SELECT!=BK3000_FPGA)

    if(status&(bit_PT0_INTR))
    {
        BK3000_Timer_ISR0();//clear INTR in this function
	    _SYSirq_Clear_IRQ((bit_PT0_INTR));
    }

    if(status&(bit_PT1_INTR))
    {
        BK3000_Timer_ISR1();//clear INTR in this function
	    _SYSirq_Clear_IRQ((bit_PT1_INTR));
    }
#endif
	if (status & (bit_PT2_INTR))
	{
        BK3000_Timer_ISR2();//clear INTR in this function
	    _SYSirq_Clear_IRQ((bit_PT2_INTR));
	}

#ifdef ENABLE_BEKEN_I2C_INTERFACE
    if(status&bit_I2C_INTR)
    {
        HCIT_Chimera_I2C_Interrupt_Handler();
	    _SYSirq_Clear_IRQ(bit_I2C_INTR);

    }

#endif
    if (status & bit_SPI_INTR)
    {
        BK3000_SPI_Interrupt_Handle();
        _SYSirq_Clear_IRQ(bit_SPI_INTR);
    }

    if (status & bit_ADC_INTR)
    {
        BK3000_ADC_Interrupt_Handle();
        _SYSirq_Clear_IRQ(bit_ADC_INTR);
    }
    
//close all other interrupt
#if(BK3000_CHIP_SELECT!=BK3000_FPGA)
    if(status& (bit_EXTERNAL_INT0|bit_EXTERNAL_INT1) )
    {
	    _SYSirq_Clear_IRQ(bit_EXTERNAL_INT0|bit_EXTERNAL_INT1);        
    }
#endif

//	_SYSirq_Clear_IRQ(status&bit_ALL_IRQ_INTR);//clear all interrupt

	
#if (PRH_BS_CFG_SYS_LOW_POWER_MODE_SUPPORTED==1)
    if (SYSpwr_Is_Low_Power_Mode_Active())
    {
/*        SYSpwr_Exit_Halt_System();*/
        //SYSpwr_Setup_Sleep_Timer(1);/* special value - load minimum or else will be shifted unknown times */
    }
#endif

}
#endif

/*static */ t_SYSirq_Counters _SYSirq_Counters;

#if 0//(PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1)

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Enable_Tabasco_interrupt
 * PURPOSE:   Enable the Tabasco interrupt. IRQ in this case
 *
 ******************************************************************************/
static void SYSirq_Enable_Tabasco_interrupt(void)
{
#ifndef __GNUC__
    u_int32 current_flags;
    __asm
    {
        MRS current_flags, CPSR                 /* Get current CPSR */
        AND current_flags, current_flags, #0xffffff7f /* Enable IRQ */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Disable_Tabasco_Interrupt
 * PURPOSE:    Disable the Tabasco interrupt. IRQ in this case
 *
 ******************************************************************************/
static void SYSirq_Disable_Tabasco_Interrupt(void)
{
#ifndef __GNUC__
    u_int32 current_flags;
    __asm
    {
        MRS current_flags, CPSR                 /* Get current CPSR */
        ORR current_flags, current_flags, #0x80 /* Disable IRQ */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_IRQ_Tabasco_ISR
 * PURPOSE:   Tabasco interrupt service routine
 *
 ******************************************************************************/
void SYSirq_IRQ_Tabasco_ISR(void)
{
    t_dsr_pointer delayed_service_routine;

    delayed_service_routine = LSLCirq_Tabasco_ISR();

    if (0 != delayed_service_routine)
    {
        if (pending_dsr_counter == 0)
        {
            dsr_lock = 0;
        }

        /* add the dsr associated with this interrupt to the dsr queue. */
        pending_dsr_table[dsr_table_tail++] = delayed_service_routine;
        if( dsr_table_tail >= DSRS_TABLE_SIZE )
            dsr_table_tail = 0;

        pending_dsr_counter++;
    	
        if (dsr_lock == 0)
        {
            dsr_lock++;

            while(pending_dsr_counter != 0)
            {
                SYSirq_Enable_Tabasco_interrupt();
                /* Execute the dsr with interrupts enabled. */
                pending_dsr_table[dsr_table_head]();

                SYSirq_Disable_Tabasco_Interrupt();

                dsr_table_head++;
                if( dsr_table_head >= DSRS_TABLE_SIZE )
                dsr_table_head = 0;

                pending_dsr_counter--;
            }
        }
    } 	    
}

#else   /* (PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1) */
/* stub for proper compilation */
void SYSirq_IRQ_Tabasco_ISR(void)
{
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_FIQ_Handler
 * PURPOSE:   Services fast Interrupt Requests to micro-controller
 *
 ******************************************************************************/

#endif  /* (PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1) */


/******************************************************************************
 *
 * FUNCTION:  SYSirq_Disable_Interrupts_Save_Flags
 * PURPOSE:   Disables ARM IRQ and FIQ Interrupts, saves previous
 *            PSR
 *
 ******************************************************************************/
void SYSirq_Disable_Interrupts_Save_Flags(u_int32 *flags)
{
#ifndef __GNUC__
    u_int32 current_flags,my_tmp_flags;
    __asm
    {
	    MRS current_flags, CPSR                 /* Get current CPSR */
        AND my_tmp_flags, current_flags, #0xc0  /* Clear all ex. IRQ and FIQ */
        STR my_tmp_flags, [flags]               /* "save" flags */
#if (PRH_BS_DEV_UART_FIQ_ALWAYS_ENABLED==1)
        ORR current_flags, current_flags, #0x80 /* Disable IRQ Only */
#else
        ORR current_flags, current_flags, #0xc0 /* Disable IRQ and FIQ */
#endif
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

void SYSirq_Disable_Interrupts_Only_IRQ_Save_Flags(u_int32 *flags)
{
#ifndef __GNUC__
    u_int32 current_flags,my_tmp_flags;
    __asm
    {
	MRS current_flags, CPSR                 /* Get current CPSR */
        AND my_tmp_flags, current_flags, #0xc0  /* Clear all ex. IRQ and FIQ */
        STR my_tmp_flags, [flags]               /* "save" flags */

        ORR current_flags, current_flags, #0x80 /* Disable IRQ Only */

        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Enable_Interrupts_Save_Flags
 * PURPOSE:   Enables ARM IRQ and FIQ Interrupts, saves previous
 *            PSR
 *
 ******************************************************************************/
void SYSirq_Enable_Interrupts_Save_Flags(u_int32 *flags)
{
#ifndef __GNUC__
    u_int32 current_flags,my_tmp_flags;
    __asm
    {
	    MRS current_flags, CPSR                 /* Get current CPSR */
        AND my_tmp_flags, current_flags, #0xc0  /* Clear all ex. IRQ and FIQ */
        STR my_tmp_flags, [flags]               /* "save" flags */
        AND current_flags, current_flags, #0x3f /* Enable IRQ and FIQ */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Interrupts_Restore_Flags
 * PURPOSE:   Restores previously saved previous PSR
 *
 ******************************************************************************/
void SYSirq_Interrupts_Restore_Flags(u_int32 flags)
{
#ifndef __GNUC__
    u_int32 current_flags;
    __asm
    {
        MRS current_flags, CPSR                 /* Get current CPSR */
        BIC current_flags, current_flags, #0xc0 /* Clear IRQ and FIQ bits */
        ORR current_flags, current_flags, flags /* OR in saved copy */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}


/******************************************************************************
 *
 * FUNCTION:  _SYSirq_Install_Branch_Handler
 * PURPOSE:   Installs an exception handler using the ARM Branch and Link
 *            instruction
 *
 ******************************************************************************/
//static unsigned _SYSirq_Install_Branch_Handler(u_int32 routine,
//    u_int32 *vector) 
//{
//    u_int32 new_vector_value = 0,/* initialise locals */
 //       old_vector_value = 0;

//    new_vector_value = ((routine - (u_int32)vector - PIPE_OFFSET)
//                         >> WORD_OFFSET);

    /* Ensure that result is 24bit only */
 //   new_vector_value = BRANCH_OP_CODE | new_vector_value;
  //  old_vector_value = *vector;  

//    *vector =new_vector_value;
  //  return (old_vector_value);
//} 

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Initialise
 * PURPOSE:   Initialise Interrupt Requests
 *
 ******************************************************************************/
void SYSirq_Initialise(void)
{
    /*
     * Intialise interrupts
     */
#if (PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1)
    dsr_table_head = 0;
    dsr_table_tail = 0;
    
    pending_dsr_counter = 0;
    dsr_lock = 0;
#endif
    /* SYSirq_IRQ_Disable_All(); - now done in BT_Init */

#ifndef BUILD_FOR_ROM
//     SYSirq_IRQ_Stack_Setup();
//     SYSirq_FIQ_Stack_Setup();
//     SYSirq_SYS_Stack_Setup();
#endif

     /*
      * Install Service Routines
      */
	_SYSirq_Setup_IRQ_FIQ_Enable_Masks();
	
#if (PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1)
//    _SYSirq_Install_Branch_Handler((u_int32)SYSirq_IRQ_wrapper,
//        IRQ_VECTOR); 
#else
//    _SYSirq_Install_Branch_Handler((u_int32)SYSirq_IRQ_Handler,
  //      IRQ_VECTOR); 
#endif

//    _SYSirq_Install_Branch_Handler((u_int32)SYSirq_FIQ_Handler, FIQ_VECTOR);

    /* DO NOT RE-ENABLE INTERRUPTS HERE!!! */
}


/******************************************************************************
 *
 * FUNCTION:  SYSirq_Disable_Baseband_ISR_Save_Flags
 * PURPOSE:   Disables ARM IRQ Baseband_ISR, saves previous
 *            PSR
 *
 ******************************************************************************/
void SYSirq_Disable_Baseband_ISR_Save_Flags(u_int32 *flags)
{
#ifndef __GNUC__
    u_int32 current_flags,my_tmp_flags;
    __asm
    {
	MRS current_flags, CPSR                 /* Get current CPSR */
        AND my_tmp_flags, current_flags, #0xC0  /* Clear all ex. IRQ and FIQ */
        STR my_tmp_flags, [flags]               /* "save" flags */
        ORR current_flags, current_flags, #0x80 /* Disable IRQ and FIQ */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Enable_Baseband_ISR_Save_Flags
 * PURPOSE:   Enables ARM IRQ Baseband_ISR, saves previous
 *            PSR
 *
 ******************************************************************************/
void SYSirq_Enable_Baseband_ISR_Save_Flags(u_int32 *flags)
{
#ifndef __GNUC__
    u_int32 current_flags,my_tmp_flags;
    __asm
    {
	MRS current_flags, CPSR                 /* Get current CPSR */
        AND my_tmp_flags, current_flags, #0xC0  /* Clear all ex. IRQ and FIQ */
        STR my_tmp_flags, [flags]               /* "save" flags */
        AND current_flags, current_flags, #0x7f /* Enable IRQ and FIQ */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

/******************************************************************************
 *
 * FUNCTION:  SYSirq_Baseband_ISR_Restore_Flags
 * PURPOSE:   Restores previously saved previous PSR
 *
 ******************************************************************************/
void SYSirq_Baseband_ISR_Restore_Flags(u_int32 flags)
{
#ifndef __GNUC__
    u_int32 current_flags;
    __asm
    {
        MRS current_flags, CPSR                 /* Get current CPSR */
        BIC current_flags, current_flags, #0x80 /* Clear IRQ and FIQ bits */
        ORR current_flags, current_flags, flags /* OR in saved copy */
        MSR CPSR_c, current_flags                 /* Write back */
    }
#else
    /* GNU C inline asm? */
#endif
}

#if(BK3000_CHIP_SELECT!=BK3000_FPGA)

void ARM_Enter_Light_mode(void)
{
#if 1
// enter into wait_i mode
    __asm                           
    {
        MOV R4,0
	    MCR p15,0,R4,c7,c0,4;
     }
#endif
}
#endif








