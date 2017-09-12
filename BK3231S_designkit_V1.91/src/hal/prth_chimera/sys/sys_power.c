/*****************************************************************************
 *
 * MODULE NAME:    sys_power.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Low Power Clock Activation
 * MAINTAINER:     Tom Kerwick
 * DATE:           10 December 2001
 *
 * SOURCE CONTROL: $Id: sys_power.c,v 1.12 2011/04/01 16:03:27 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2008 Ceva Inc.
 *     All rights reserved.
 *
 *****************************************************************************/


#include "sys_config.h"
#include "sys_types.h"
#include "sys_const.h"

#include "hw_delay.h"
#include "uslc_chan_ctrl.h"
#include "lslc_irq.h"
#include "sys_hal_features.h"

#include "sys_features.h"
#include "sys_power.h"
#include "lmp_timer.h"
#include "lmp_config.h"
#include "lmp_acl_container.h"
#include "bk3231s_reg.h"
#include "include.h"
#include "DeviceBtj_Header.h"


extern t_queue BTQueues[];
extern u_int32  Check_Inquiry_Is_Busy(void);
extern u_int32 Get_exist_Acl_Num(void);
#if (TRA_HCIT_GENERIC_SUPPORTED==1)
extern void (*hci_generic_exit_hc_callback)(void);
#endif

static boolean syspwr_low_power_mode_active_;
static u_int8 LowFrequencyOscillatorAvailable = 0;

/* can be increased if CPU is slown down and execution takes time */
#define SYS_PWR_MIN_FRAMES_TO_SLEEP      1
#define SYS_PWR_AUX_TIMER_MIN_RESOLUTION 4
extern uint32 flash_mid;

u_int8 bt_time_tick;
volatile u_int8 b_26M_colsed=0;
void   _SYSboot_Power_Down();

void sys_idle()
{
    //uint32 flash_dat;
  
    
    set_flash_clk(8);    
    flash_set_line_mode(1);
    b_26M_colsed=1;
    Set_CPU_Speed_16M();
    //BK3000_XVR_REG_0x06 =  0x3D2B1207;
    BK3000_XVR_REG_0x09 = 0x19407D01;
    REG_AHB0_DCO16M_PWD 	 = 0x1 ;

	REG_AHB0_ICU_DIGITAL_PWD = SET_CB_BAIS_PWD +SET_CLK48M_PWD +
								SET_HP_LDO_PWD + SET_REF1V_PWD;//SET_CLK16M_PWD 

    
    delay_us(10);
    
    REG_AHB0_ICU_CORECLKCON = 0x01;
 
}

void sys_wakeup()
{
    //REG_AHB0_ICU_CEVA_CLKCON=0x00;
    //BK3000_XVR_REG_0x09 = 0x19407D00;
    //Set_CPU_PLL_clk(1); 
    
    if(b_26M_colsed)
    {
        b_26M_colsed=0;
        
        flash_set_line_mode(1);
        while(!(flash_mid == get_flash_ID()));   // 等待Flash上电稳定。
        flash_set_line_mode(4);
        set_flash_clk(1);
    }
}

void Enter_Deep_sleep(void)
{   
    set_flash_clk(8);    
    flash_set_line_mode(1); 
    Set_CPU_Speed_16M();

    REG_AHB0_ICU_ANALOG_MODE &= ~(0x1<<18);// Enable Test Mode of pwdSARADCldo1V
    delay_us(10);
    REG_AHB0_ICU_ANALOG_MODE &= ~(0x1<<21);// Enable Test Mode of pwd48MPLL1V
    delay_us(20);
    BK3000_XVR_REG_0x09  = 0x18250000;
    delay_us(20);

    REG_AHB0_ICU_ADCCLKCON  = 0x1 ;
    REG_AHB0_ICU_UARTCLKCON = 0x1 ;
    REG_AHB0_ICU_I2CCLKCON  = 0x1 ;
    REG_AHB0_ICU_SPICLKCON  = 0x1 ;
    REG_AHB0_ICU_CEVA_CLKCON= 0x1 ;
    REG_AHB0_ICU_WDTCLKCON  = 0x1 ;
    REG_AHB0_ICU_BK24CLKCON = 0x1 ;
    REG_AHB0_ICU_LPO_CLKCON = 0x1 ;
    REG_AHB0_ICU_PWM0CLKCON = 0x1 + (0x1<<1) ;  // PWM select 16MHz clock
    REG_AHB0_ICU_PWM1CLKCON = 0x1 + (0x1<<1) ;  // PWM select 16MHz clock
    REG_AHB0_ICU_PWM2CLKCON = 0x1 + (0x1<<1) ;  // PWM select 16MHz clock
    REG_AHB0_ICU_PWM3CLKCON = 0x1 + (0x1<<1) ;  // PWM select 16MHz clock
    REG_AHB0_ICU_PWM4CLKCON = 0x1 + (0x1<<1) + (0x1<<BIT_PWM5_CLK_SEL) + (0x1<<BIT_TIMER_CLK_PWD) ;

    REG_AHB0_ICU_SLEEP_TIME = 0x0 ; // Disable 32KHz ROSC Auto-Calibration as it is not used.

    REG_AHB0_DCO16M_PWD     = 0x0 ;
    delay_us(10);
    BK3000_XVR_REG_0x0A  = XVR_ANALOG_REG_BAK[10] | 0x1;
    delay_us(10);
    REG_AHB0_ICU_INT_ENABLE=0;
    REG_AHB0_ICU_IRQ_ENABLE=0;
    //set_gpio_deep_sleep();
    REG_AHB0_ICU_DIGITAL_PWD = SET_CLK16M_PWD + SET_CLK48M_PWD + SET_CB_BAIS_PWD +
                                       SET_HP_LDO_PWD + SET_REF1V_PWD;
    REG_AHB0_ICU_DEEP_SLEEP1 |=( 0x3231<<16);
    delay_us(10);
    while(1);
}
/*
 * FUNCTION:   SYSpwr_Is_Available_Sleep_System()
 * PURPOSE:    Returns TRUE if system is available to sleep.
 */
int SYSpwr_Is_Available_Sleep_System(void)
{
	
    /* No need to monitor LMP_OUT, L2CAP_OUT and SCO_OUT queue
     * because once placed data there, dequeued in LC ISR
     * so that halt scheduler at this point is no problem
     * even if containing any data 
     */  
    t_queue *q = BTQueues;
        
    do  ///Check for HCI_COMMAND_Q, HCI_EVENT_Q and LMP_IN_Q  
    {       
            if(q->num_entries)      return(0/*Not Empty*/);
            q++;
    }
    while(q != &BTQueues[LMP_OUT_Q]);
    
    q = BTQueues + L2CAP_IN_Q;      
    do ///  Check for L2CAP_IN_Q 
    {
            if(q->num_entries)      
                return(0/*Not Empty*/);
            q++;
    }
    while(q != &BTQueues[L2CAP_OUT_Q]);

    if(Check_Inquiry_Is_Busy())
    {
        return 0;
    }
 
    return(!LMtmr_Timer_Expired()); //Allow sleep if timers not expired
   
}  


/*****************************************************************************
 * FUNCTION:   SYSpwr_Halt_System
 * PURPOSE:    Turn off entire chip / Deep Sleep
 ****************************************************************************/


void  SYSpwr_Halt_System(void)
{
    // may add cpu halt/sleep functionality here
    if(SYSpwr_Is_Available_Sleep_System())
    {    
         
    	 
        if(sys_flag&FLAG_ENTER_SLEEP)
        {   
        #if 0
            bprintf("enter deepsleep\n");
            delay_us(500);
        #endif
            HW_set_aux_tim_intr_mask(1);
            LSLCirq_Disable_Aux_Tim_Intr();
            
            Enter_Deep_sleep();

        }
        else if(sys_flag & FLAG_CONNECTED)
        {
            sys_idle(); 
            sys_wakeup();
        }
        else
            REG_AHB0_ICU_CORECLKCON  = (2<<BIT_CORE_CLK_DIV);

    }

    syspwr_low_power_mode_active_ = TRUE;
}


/*****************************************************************************
 * FUNTION:    SYSpwr_Sleep_System()
 * PURPOSE:    Turn off CPU clock / Light Sleep
 ****************************************************************************/
void SYSpwr_Sleep_System(void)
{
#if (TRA_HCIT_UART_ONLY_SUPPORTED==1)
    // may add cpu halt/sleep functionality here    

if(SYSpwr_Is_Available_Sleep_System())
{
#if(BK3000_CHIP_SELECT!=BK3000_FPGA)

#ifdef BEKEN_ENABLE_LOW_POWER_MODE

    if(g_beken_initial_config.g_disable_CPU_Halt_sleep==0)  //0:normal mode; 1:only stop CPU when acl number = 0; 2:not stop CPU
        ARM_Enter_Light_mode();
    else
    if(g_beken_initial_config.g_disable_CPU_Halt_sleep==1)
    {
        if(Get_exist_Acl_Num()==0)
        {
            ARM_Enter_Light_mode();
        }
    }

#endif

#endif

}

#elif (TRA_HCIT_GENERIC_SUPPORTED==1)
    if(hci_generic_exit_hc_callback)
        hci_generic_exit_hc_callback();		
#endif
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Exit_Halt_System()
 * PURPOSE:    Wake entire chip back up (re-enable any gated clocks etc.)
 ****************************************************************************/
void SYSpwr_Exit_Halt_System(void)
{
    syspwr_low_power_mode_active_ = FALSE;
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Is_Available_Halt_System()
 * PURPOSE:    Returns TRUE if system is available to halt.
 ****************************************************************************/
int SYSpwr_Is_Available_Halt_System(void)
{
    return (syspwr_low_power_mode_active_);
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_LowFrequencyOscillatorAvailable()
 * PURPOSE:    Returns TRUE if low freq oscillator is available.
 ****************************************************************************/
extern volatile u_int8 b_pcm_on;
t_sys_lf_osc_type SYSpwr_LowFrequencyOscillatorAvailable(void)
{
    return SYS_LF_OSC_NONE;
   /* 
    if(g_beken_initial_config.g_Disable_ACL_active_check_when_Sleep==0)
    {
        if(Get_Active_Acl_Num()>0)
            return SYS_LF_OSC_NONE;
    }
    
    if(b_pcm_on)
        return SYS_LF_OSC_NONE;
    else
        return LowFrequencyOscillatorAvailable;
    */    
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Setup_Sleep_Timer()
 * PURPOSE:    Generic Function to setup sleep timer - can be implemented
 *             using any clock source capable of generating interrupt
 *
 *             this version uses AUX_TIMER
 ****************************************************************************/
static u_int32 syspwr_num_frames_to_sleep_;

void SYSpwr_Setup_Sleep_Timer(u_int32 max_num_frames_to_sleep)
{
/*#define NUM_FRAMES_TO_SLEEP 0x3FF*/
#define NUM_FRAMES_TO_SLEEP (0x3FFF << 1)
#define AUX_T_SHIFT 1
/* special values: 
 * 0 - stop timer
 * 1 - minimum value
 */
/*     if (max_num_frames_to_sleep == 0)
    {
        HW_set_aux_timer(0);
        max_num_frames_to_sleep = 0;
    } else

*/
    if(sys_flag&FLAG_BT_IN_SNIFF)
    {
        bt_time_tick|=0x01;
            
    }
    
    HW_set_aux_tim_intr_clr(1);
    if (max_num_frames_to_sleep == 1)
    {
        HW_set_aux_timer(1);
        max_num_frames_to_sleep = 0;
    } 
    else if (max_num_frames_to_sleep > NUM_FRAMES_TO_SLEEP)
        {
            HW_set_aux_timer(NUM_FRAMES_TO_SLEEP >> AUX_T_SHIFT);
            max_num_frames_to_sleep -= NUM_FRAMES_TO_SLEEP + SYS_PWR_MIN_FRAMES_TO_SLEEP;
        }
        else
        {

        if (max_num_frames_to_sleep > (SYS_PWR_MIN_FRAMES_TO_SLEEP + SYS_PWR_AUX_TIMER_MIN_RESOLUTION))
        {
        //HW_set_aux_timer((max_num_frames_to_sleep - SYS_PWR_MIN_FRAMES_TO_SLEEP) >> AUX_T_SHIFT);
           /* if(max_num_frames_to_sleep>0x30)
                HW_set_aux_sys_timer(2460*((max_num_frames_to_sleep - SYS_PWR_MIN_FRAMES_TO_SLEEP) >> AUX_T_SHIFT));
            else 
            */
            //if(max_num_frames_to_sleep>8)
                HW_set_aux_timer((max_num_frames_to_sleep - SYS_PWR_MIN_FRAMES_TO_SLEEP) >> AUX_T_SHIFT);
            //else
            //    HW_set_aux_sys_timer(3000*((max_num_frames_to_sleep - SYS_PWR_MIN_FRAMES_TO_SLEEP) >> AUX_T_SHIFT));
        }
        else
        { 
            HW_set_aux_timer(SYS_PWR_AUX_TIMER_MIN_RESOLUTION>>AUX_T_SHIFT);
            //HW_set_aux_sys_timer(3000*(SYS_PWR_AUX_TIMER_MIN_RESOLUTION>>AUX_T_SHIFT));
        }

            max_num_frames_to_sleep = 0;
        }

    //HW_set_aux_tim_intr_mask(0);
    syspwr_num_frames_to_sleep_ = max_num_frames_to_sleep;
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Initialise
 * PURPOSE:    
 ****************************************************************************/
void SYSpwr_Initialise(void)
{
    syspwr_num_frames_to_sleep_ = 0;
    syspwr_low_power_mode_active_ = FALSE;
	//Leave low power oscillator disabled until enabled by TCI.	 
#ifdef LPO_GEN_IS_16M_TO_32K
    LowFrequencyOscillatorAvailable = SYS_LF_OSCILLATOR_PRESENT;
#else
	LowFrequencyOscillatorAvailable = SYS_LF_OSC_32K768;
#endif
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Handle_Early_Wakeup
 * PURPOSE:    
 ****************************************************************************/
void SYSpwr_Handle_Early_Wakeup(void)
{
    /* wake chip back up to check on UART status */
    //SYSpwr_Exit_Halt_System();
    /*
     * DEPLOYMENT TEAM need to put code into this if() to check for HCI transport
     * activity. If TRUE, then subsequent 'naps' for this sleep period will be aborted
     */
    if(!syspwr_num_frames_to_sleep_ )
    {
        //SYSpwr_Exit_Halt_System();
        syspwr_low_power_mode_active_ = FALSE;
       /*
        * disable the sleep timer
        * as Setup_Sleep_Timer above uses AUX_TIMER, must disable it here
        */
       HW_set_aux_tim_intr_mask(1);
       LSLCirq_Disable_Aux_Tim_Intr();
       USLCchac_Wakeup(); /* move onto next state, wake system up... */
    }
    else
    {

        SYSpwr_Setup_Sleep_Timer(syspwr_num_frames_to_sleep_);

        SYSpwr_Halt_System();
    }     
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Is_Low_Power_Mode_Active
 * PURPOSE:    
 ****************************************************************************/
boolean SYSpwr_Is_Low_Power_Mode_Active(void)
{
    return (syspwr_low_power_mode_active_);
}

/*****************************************************************************
 * FUNCTION:   SYSpwr_Set_LowFrequencyOscillatorAvailable_Value()
 * PURPOSE:    set if oscillator is available.
 *             Returns TRUE if request was processed.
 ****************************************************************************/
boolean SYSpwr_Set_LowFrequencyOscillatorAvailable_Value(u_int8 osc_available)
{
   if((SYS_LF_OSCILLATOR_PRESENT==0) && (osc_available==1))
        return FALSE;
    LowFrequencyOscillatorAvailable = osc_available;
    return TRUE;
}

/*****************************************************************************
 * SYSpwr_Get_Min_Frames_To_Sleep
 * minimum amount of frames that device can be put in deep sleep
 ****************************************************************************/
u_int32 SYSpwr_Get_Min_Frames_To_Sleep(void)
{
    return (SYS_PWR_MIN_FRAMES_TO_SLEEP + SYS_PWR_AUX_TIMER_MIN_RESOLUTION);

}

