/*****************************************************************************
 *
 * MODULE NAME:    sys_main.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Entry point to the Bluetooth stack
 * MAINTAINER:     Tom Kerwick
 * DATE:           21 January 2000
 *
 * SOURCE CONTROL: $Id: sys_main.c,v 1.56 2008/07/03 12:26:45 tomk Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2008 Ceva Inc.
 *     All rights reserved.
 * 
 *****************************************************************************/

#include "sys_config.h"
#include "sys_types.h"
#include "sys_const.h"
#include "sys_post.h"
#include "bt_init.h"
#include "bt_mini_sched.h"
#include "sys_irq.h"
#include "hw_lc.h"
#include "hw_leds.h"
#include "hw_register.h"
#include "hw_hab_defs.h"
#include "tra_hcit.h"
#include "hcit_chimera_16550_serial.h"
#include "DeviceBtj_Header.h"
#include "bk3000_reg.h"
#include "bk3000_timer.h"
#include "tra_uart.h"
#include "flash.h"





u_int8 bd_addr[6]={0x11,0x22,0x33,0xac,0xad,0xae};
u_int8 env_config_buff[sizeof(ENV_CONFIG_T)];
u_int8 env_config_rdn_buff[sizeof(ENV_CONFIG_RDN_T)];
u_int8 uart_open,linkback_flag;

extern u_int8 linkkey_buff[23],lmecc_read_enable;

static void _SYS_Main_Loop(void);
void SYS_Main_Initialise(void);
static void _SYS_Main_Perform_Stack_Integrity_Check(void);

extern void Enable_UART_I2C_Intr(void);

#if (BUILD_TYPE==GENERIC_BUILD)
void *HCI_Generic_register_hcit(void);
int prh_generic_hci_ready = 0;
#endif

/*****************************************************************************
 *
 * FUNCTION:    Main
 * PURPOSE:     Instantiation
 *
 *****************************************************************************/

#if ((BUILD_TYPE!=FLASH_BUILD) || (defined(ADS_TOOLCHAIN_SUPPORTED)))

#if (BUILD_TYPE==FLASH_BUILD)
void SYS_Vector_Init_Block(void);
#endif

void SYS_Main(void);

int main (int argc, char *argv[])
{
    SYS_Main(); /* never returns */

    return 0;
}

#endif

/*****************************************************************************
 *
 * FUNCTION:    SYS_Main
 * PURPOSE:     Instantiation
 *
 *****************************************************************************/

void SYS_Main(void)
{
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
    SYS_Main_Initialise();
    _SYS_Host_Initialise();
    lmecc_read_enable = 0x02;
    if(uart_open)
    {
        BK3000_ICU_REG3_UART_CLOCK_CONFIG=0;
        BK3231_GPIO10_CONFIG = bit_GPIO_SECOND_FUNCTION_ENABLE;//UART RX
        BK3231_GPIO11_CONFIG = bit_GPIO_SECOND_FUNCTION_ENABLE;//UART TX
    }
    
    _SYS_Main_Loop();     
}

/******************************************************************************
 *
 * FUNCTION:  SYS_Main_Initialise
 * PURPOSE:   Controller Initialisations
 *
 ******************************************************************************/
    
void read_env_config()
{   
    u_int8 index;
    ENV_CONFIG_P env_config=(ENV_CONFIG_P)env_config_buff; 
    ENV_CONFIG_RDN_P env_config_rdn=(ENV_CONFIG_RDN_P)env_config_rdn_buff;
    driver_mfc_read_buf(0,0x3e000,env_config_buff,sizeof(ENV_CONFIG_T));
    
    index=get_bt_link_key_index();  
    linkback_flag=index;
    get_bt_link_key(LINK_KEY_SAVE_BUF_LEN*5,linkkey_buff);      
    {
        memcpy(bd_addr,&env_config->slave_addr,6);
    }
      
     
    if(env_config->uart_open_enable)
        uart_open=0X01;   
    else
        uart_open=0;   
}


void SYS_Main_Initialise(void)
{
    u_int32 flags;
    
    SYSirq_Disable_Interrupts_Save_Flags(&flags);
    Bk3000_Initialize();

    /*
     * need to delay the startup in Chimera until FPGA has been
     * loaded from EPROMs... 
     */
#if(BK3000_CHIP_SELECT==BK3000_FPGA)
    {
        u_int32 volatile delay;
        for(delay = 0; delay < 500000; delay ++);                           
    }
#endif
  
    read_env_config();

    SYSconfig_Initialise(); 
    
/*
* Set up the HCI transport registration function (this function
* is called on intialisation or re-initialisation of the HCI
* transport sub-system
*/
#if (BUILD_TYPE==GENERIC_BUILD)
    TRAhcit_Set_Register_Function(HCI_Generic_register_hcit);
#else
    TRAhcit_Set_Register_Function(TRAhcit_Register_UART_Driver);
#endif
   // BK3000_ICU_REGA_INTEN_CONFIG |= (bit_UART_INTR|bit_UART_INTR_WAKEUP);

    BT_Initialise();

#if (BUILD_TYPE==GENERIC_BUILD)
    prh_generic_hci_ready=1;
#endif
    SYSirq_Enable_Interrupts_Save_Flags(&flags);    
    Enable_ICU_Intr();
    if(uart_open)
        BK3000_ICU_REGA_INTEN_CONFIG |= (bit_UART_INTR|bit_UART_INTR_WAKEUP);
           
}

/******************************************************************************
 *
 * FUNCTION:  _SYS_Main_Loop
 * PURPOSE:   Controller Main Loop
 *
 ******************************************************************************/

static void _SYS_Main_Loop(void)
{
   while(1)
   {
#if defined(SYS_HAL_OS_EVENT_DRIVEN_HOST_CONTROLLER)
       BTms_Callback();
#else
       BTms_Sched(0x1);
#endif
        Host_Loop();
       _SYS_Main_Perform_Stack_Integrity_Check(); //need restore later!!!!!!!!!!!!!!!!!!!!!!!!!!!!      
   }
}

/******************************************************************************
 *
 * FUNCTION:  _SYS_Main_Perform_Stack_Integrity_Check
 * PURPOSE:   Controller Stack Integrity Monitoring
 *
 ******************************************************************************/

#include "sys_irq.h"
#include "hc_event_gen.h"
static void _SYS_Main_Perform_Stack_Integrity_Check(void)
{
#if (BUILD_TYPE==FLASH_BUILD)

    extern u_int32 FIQ_STACK;
    extern u_int32 SVC_STACK;
    extern u_int32 USR_STACK;

    if ((FIQ_STACK != (u_int32)0xDEADBEEF) ||         
        (SVC_STACK != (u_int32)0xDEADBEEF) ||
        (USR_STACK != (u_int32)0xDEADBEEF))
    {
        HCeg_Hardware_Error_Event(PRH_BS_HW_ERROR_STACK_CORRUPTION);
        /* TRAhcit_Dispatch_Pending_Event(void); */
        /* SYSirq_Disable_Interrupts_Save_Flags(&flags); */
         while(1)
         {
           bk3231_printf("stack over flow\r\n");
         }
    }
#endif
}
