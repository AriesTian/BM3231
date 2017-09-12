#include "include.h"

//#define ENABLE_RF_DEBUG_PIN

void GPIO_Initial(void)  // As GPIO Output
{

    REG_APB5_GPIO0_CFG  = 0x000000FF ; 
    REG_APB5_GPIO0_DATA = 0x00000000 ; 
    REG_APB5_GPIO1_CFG  = 0x000000FF ; 
    REG_APB5_GPIO1_DATA = 0x00000000 ; 
    REG_APB5_GPIO2_CFG  = 0x000000FF ; 
    REG_APB5_GPIO2_DATA = 0x00000000 ; 
    REG_APB5_GPIO3_CFG  = 0x000000FF ; 
    REG_APB5_GPIO3_DATA = 0x00000000 ; 
    REG_APB5_GPIO4_CFG  = 0x000000FF ; 
    REG_APB5_GPIO4_DATA = 0x00000000 ; 

    REG_APB5_GPIO_WUATOD_TYPE=0xffffffff;
    REG_APB5_GPIO_WUE_TYPE=0x000000ff;
    REG_APB5_GPIO_WUATOD_ENABLE = 0x00000000 ;
    REG_APB5_GPIO_WUE_ENABLE = 0x00000000 ;
    REG_APB5_GPIO_WUATOD_STAT = 0xffffffff ;
    REG_APB5_GPIO_WUE_STAT = 0xff ;

	//LED
	GPIO_config(3, 1, 1);
	GPIO_output(3, 1, 0);
	GPIO_config(0, 4, 1);
	GPIO_output(0, 4, 0);
	GPIO_config(3, 0, 1);
	GPIO_output(3, 0, 1);
	GPIO_config(3, 2, 1);
	GPIO_output(3, 2, 1);	
#ifdef ENABLE_RF_DEBUG_PIN    
    GPIO_config(1, 1, 4);
    GPIO_config(1, 2, 4);
    GPIO_config(1, 3, 4);
    GPIO_config(1, 4, 4);
    GPIO_config(1, 5, 4);
    GPIO_config(1, 6, 4);
    GPIO_config(2, 2, 4);
    GPIO_config(2, 7, 4);
    
#endif
}

void gpio_sleep()
{
    REG_APB5_GPIO0_CFG  = 0x0000FFFF ; 
    REG_APB5_GPIO0_DATA = 0x00000000 ; 
    REG_APB5_GPIO1_CFG  = 0x0000FFFF ; 
    REG_APB5_GPIO1_DATA = 0x00000000 ; 
    REG_APB5_GPIO2_CFG  = 0x0000FFFF ; 
    REG_APB5_GPIO2_DATA = 0x00000000 ; 
    REG_APB5_GPIO3_CFG  = 0x0000FFFF ; 
    REG_APB5_GPIO3_DATA = 0x00000000 ; 
    REG_APB5_GPIO4_CFG  = 0x0000FFFF ; 
    REG_APB5_GPIO4_DATA = 0x00000000 ; 
}





// port:0~4;  gpio:0~7;
// index:0 -input & pullup, 1-output, 2--second function,
//       3--no input output,4--third function
void GPIO_config( uint8 port, uint8 gpio, uint8 index ) 
{
    volatile unsigned long *ptr0,*ptr1;
    uint32 val = 0;

    if(port>4)
        return;
    
    ptr0 = (volatile unsigned long *)(APB_GPIO_BASE+8*port);
    ptr1 = (volatile unsigned long *)(APB_GPIO_BASE+(8*port+4));
    if( index  == 0 )
    {
        val = (1<<(0+gpio)) + (1<<(8+gpio)) + (1<<(16+gpio));
        *ptr0 |= val;
        val = 1<<(16+gpio);
        *ptr1 |= val;
    }
    else if( index == 1 )
    {
        val = 1<<(16+gpio);
        *ptr1 &= (~val);
        val = 1<<(0+gpio);
        *ptr0 |= val;
        val = 1<<(8+gpio);
        *ptr0 &= (~val);
        
    }
    else if( index == 2 )
    {
        val = 1<<(0+gpio);
        *ptr0 &= (~val);
        
    }
    else if(index == 3)
    {
        val = (1<<(0+gpio)) + (1<<(8+gpio));
        *ptr0 |= val;
        val = 1<<(16+gpio)+1<<(24+gpio);
        *ptr0 &= (~val);
        val = 1<<(16+gpio);
        *ptr1 &= (~val);

    }
    else if(index == 4)
    {
        val = 1<<(0+gpio);
        *ptr0 &= (~val);
        val = 1<<(port*8 + gpio);
        REG_AHB0_ICU_PERI_2ND_EN |= val;

    }
}
void GPIO_output( uint8 port, uint8 gpio, uint8 val ) 
{
    volatile unsigned long *ptr;
    uint32 data;
    if(port>4)
        return;
    ptr = (volatile unsigned long *)(APB_GPIO_BASE+(8*port+4));
    data = *ptr;
    data &= ~( 1 << gpio );
    data |= (val&0x01) << gpio;
    *ptr = data;
}

uint32 gpio_input( uint8 port, uint8 gpio )
{
    volatile unsigned long *ptr;
    if(port>4)
        return 0xff;
    ptr = (volatile unsigned long *)(APB_GPIO_BASE+(8*port+4));

    return (*ptr)&( 1 << (gpio+8) );
}


void gpio_output_for_debug(uint8 output_data)
{
#ifdef UART_LOG_P
    REG_APB5_GPIO1_DATA=output_data;
#endif
}

void FAST_CALL DEBUG_MSG(uint32 x)
{
    REG_APB5_GPIO3_DATA &= 0xfffffff7;
	REG_APB5_GPIO0_DATA = x&0xFF;
    REG_APB5_GPIO3_DATA |= 0x00000008;
}
