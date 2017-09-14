#include "include.h"
#include "sys_irq.h"
#include "bt_init.h"
#include "hc_event_gen.h"
#include "tra_hcit.h"
#include "bt_test.h"
#include "bt_test_impl.h"
#include "DeviceBtj_Header.h"


u_int8 bd_addr[6]={0x13,0x15,0x56,0xac,0xad,0xae};
u_int8 env_config_buff[sizeof(ENV_CONFIG_T)];
uint8 blinkCount = 5;
uint8 ledMode = 0;
u_int8 WorkMode[3];
u_int8 ios_flag = 0;
u_int8 iosCount = 0;


void delay_us(uint32 num)
{
    //for 48M clock
    //100=12.5us
    //16=2us   
    //8=1us    
    //for 32.768 clock
    //8=1.6ms
    //16M clock
    //100=120us

    u_int32 i,j;
    for(i=0;i<num;i++)
        for(j=0;j<3;j++);
}
void delay_for_32k(uint32 num)
{
    //for 32.768 clock 
    //num=1; 0.25ms 
    //num=5;1.5ms  
    //num=100;19ms 
    u_int32 i;
    for(i=0;i<num;i++);
}
void  enter_single_carry(uint8 channel)
{
    BK3000_XVR_REG_0x24 &= ~(0x7F<<0) ;// Clear RF Freq Ch.
    BK3000_XVR_REG_0x24 |= channel    ;// Set RF Freq Ch.
    BK3000_XVR_REG_0x25 &= 0xFFF00000 ;  // Clear XVR Test
    delay_ms(2);
    BK3000_XVR_REG_0x25 |= (0x1<<13) + (0x1<<12) ;
    while(1);   
}



void read_env_config()
{
    ENV_CONFIG_P env_config=(ENV_CONFIG_P)env_config_buff;
	
    flash_set_line_mode(1);
    flash_read_data (env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
	
	if((env_config->bt_led_io != 0) && (env_config->bt_led_io != 1))
	{
		env_config->bt_led_io = 0;
		flash_erase_sector(0x40000);
		flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
	}

    flash_set_line_mode(4);

	ledMode = env_config->bt_led_io;
    memcpy(bd_addr,&env_config->bt_addr,6);
	
}



void SYS_Initialise(void)
{
    u_int32 flags;//,i;
    ENV_CONFIG_P env_config=(ENV_CONFIG_P)env_config_buff;
    
    SYSirq_Disable_Interrupts_Save_Flags(&flags);
    Driver_wdt_disable();
    ICU_Initial();

    Initial_config();
    flash_init();
    xver_initial();
    GPIO_Initial(); 
    Timer_Initial(); 
    read_env_config();  
	readLinkNum();
    //button_led_init();
	Timer_Start(1, 100000);	//100ms¶¨Ê±
	//spi_init(SPI_MASTER);
    
    if(env_config->config_flag&FLAG_CONFIG_UART_OPEN_ENBALE)
        UART_Initial();

	#if 0
    if(env_config->config_flag&FLAG_CONFIG_ADC_ENBALE)
        ADC_Init(env_config->adc_io);
    if(env_config->config_flag&FLAG_CONFIG_JOYSTICK_ENABLE)
    {
        ADC_Init(env_config->adc_x);
        ADC_Init(env_config->adc_y);
    }
	#endif

	/* ÔØ²¨²âÊÔº¯Êý */ //waitting for change trigger conditions (IO trigger)
    //if(env_config->config_flag&FLAG_CONFIG_ENTER_SINGLE_CARRY)
    if((gpio_input(3, 6) == 0)&& (gpio_input(3, 7) == 0))
	{
		//bprintf("enter_single_carry\n");
        enter_single_carry(0x05);
	}
      
    SYSconfig_Initialise();  
    TRAhcit_Set_Register_Function(TRAhcit_Register_UART_Driver);
    BT_Initialise();
    REG_AHB0_ICU_INT_STATUS_FLAG = 0xffffffff;
   
   SYSirq_Enable_Interrupts_Save_Flags(&flags);   
   Enable_ICU_Intr();
}

/* main function */
void host_contrl(void)
{
	ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
	uint32 test = 0;
	
	/* HID auto connection flag */
	if(config->work_mode == 0)
		if(blinkCount == 3)//23)
			sys_flag |= FLAG_AUTO_CONNECT_START;
	else
		sys_flag &= ~FLAG_AUTO_CONNECT_START;

	/*
	test = gpio_input(0, 2);
	if(test)
	{
		iosCount++;
		GPIO_output(3, 5, 1);
		bprintf("IO=%d\n", test);
		bprintf("IN-H=%d\n", iosCount);
	}
	else
	{
		GPIO_output(3, 5, 0);
		bprintf("%d\n", iosCount);
		iosCount = 0;
	}
	*/
	
	if(ios_flag == 0)
	{
		if(gpio_input(0, 2))
		{
			iosCount++;
			if(iosCount > 30)//100ms counts 65
			{
				ios_flag = 1;
				iosCount = 0;
			}
		}
		else
		{
			ios_flag = 0;
		}
	}
	
	Host_Loop();
}



int FAST_CALL main(void)
{
    ENV_CONFIG_P env_config=(ENV_CONFIG_P)env_config_buff;
	
    SYS_Initialise();
    system_reset_reson();
 
    if(!(env_config->config_flag&FLAG_CONFIG_ENTER_DUT_TEST))
        SYS_Host_Initialise();
    else
    {
        LMscan_Write_Scan_Enable(3);
        BTtst_Set_DUT_Mode(1);
    }
	
	#if DEBUG
	bprintf("blinkCount0=%d\n", blinkCount);
	bprintf("workmode=%d\n", env_config->work_mode);
	#endif
	
    while(1)
    {
        BTms_Sched();
        if(!(env_config->config_flag&FLAG_CONFIG_ENTER_DUT_TEST))
        {  
            host_contrl();
        } 
    }
}


