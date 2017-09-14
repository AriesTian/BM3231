
#include "Driver_uart.h"
#include "tra_hcit.h"
#include "tra_uart.h"
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>
#include "DeviceBtj_Header.h"


volatile u_int16 uart_rx_buff_header,uart_rx_buff_tailor;
volatile char uart_rx_tx_buff[UART_BUFF_LEN];
char uart_send_buff[UART_SEND_LENGTH];
u_int8 uart_send_length, uart_send_cnt, uart_cnt_index = 0;


void UART_Initial(void)
{
    uint16 uart_clk_div;
    uint32 uart_conf_value,config_baud_rate;
    ENV_CONFIG_P env_config=(ENV_CONFIG_P)env_config_buff;
    
    switch(env_config->uart_baudrate)
    {
        case 0:
            config_baud_rate=UART_BAUDRATE_1200;    
            break;
        case 1:
            config_baud_rate=UART_BAUDRATE_2400;    
            break;
        case 2:
            config_baud_rate=UART_BAUDRATE_4800;    
            break;
        case 3:
            config_baud_rate=UART_BAUDRATE_9600;    
            break;
        case 4:
            config_baud_rate=UART_BAUDRATE_19200;    
            break;
        case 5:
            config_baud_rate=UART_BAUDRATE_38400;    
            break;
        case 6:
            config_baud_rate=UART_BAUDRATE_57600;    
            break;
        case 7:
            config_baud_rate=UART_BAUDRATE_115200;    
            break;
        case 8:
            config_baud_rate=UART_BAUDRATE_128000;    
            break;
        case 9:
            config_baud_rate=UART_BAUDRATE_256000;    
            break;
        case 10:
            config_baud_rate=UART_BAUDRATE_921600;    
            break;
         default:
            config_baud_rate=UART_BAUDRATE_115200;
            break;

    }


    uart_clk_div    = 16000000/config_baud_rate;//0x8A;  // 16M/115200=138.89=0x8A
    uart_conf_value  = REG_APB3_UART_CFG ;
    uart_conf_value |= SET_UART_TX_ENABLE ;
    uart_conf_value |= SET_UART_RX_ENABLE ;
    uart_conf_value &= (~SET_UART_IRDA)   ;
    uart_conf_value |= SET_UART_LEN       ;

	if(env_config->uart_stop != 0)
		uart_conf_value |= SET_UART_STOP_LEN; //1: 2bit
	else
		uart_conf_value &= (~SET_UART_STOP_LEN);

	if(env_config->uart_par != 0)
	{
		uart_conf_value &= ~SET_UART_PAR_EN;
		uart_conf_value |= SET_UART_PAR_EN;

		if(env_config->uart_par == 1)
		{
			uart_conf_value &= ~SET_UART_PAR_MODE;   //1偶检验
		}
		else if(env_config->uart_par == 2)
			uart_conf_value |= SET_UART_PAR_MODE;	//2奇校验
	}
	else
	{
		uart_conf_value &= ~SET_UART_PAR_EN;
	}

    uart_conf_value &= (~SET_UART_STOP_LEN);
    uart_conf_value  = (uart_conf_value & (~SET_UART_CLK_DIVID)) | (uart_clk_div << BIT_UART_CLK_DIVID) ;
    REG_APB3_UART_CFG = uart_conf_value;

    // UART HW Rx FIFO threshold is 32 ao avoid set RxNeedRead=1 interrupt when Rx every character.
    REG_APB3_UART_FIFO_THRESHOLD = (1<<BIT_TX_FIFO_THRESHOLD)|(8<<BIT_RX_FIFO_THRESHOLD);
    REG_APB3_UART_INT_ENABLE |= SET_RX_FIFO_NEED_READ_EN; //UART Data RX interrupt enable 
    REG_APB3_UART_INT_ENABLE |= SET_UART_RX_STOP_END_EN;  //Enable Rx Stop for 4-Byte-time of no-data

	/* 添加的校验位中断配置 */
	REG_APB3_UART_INT_ENABLE |= SET_UART_RX_PARITY_ERR_EN;  //Enable parity err interrput 
	
    // GPIO-C: [0]-UART Output(Tx). [1]-UART Input(Rx) 
    // Enable peripheral functions. No PullDown nor PullUp. No Output nor Input.
    REG_APB5_GPIO2_CFG  &= ~((0x3<<BIT_GPIO_PULL_UP) + (0x3<<BIT_GPIO_PULL_DOWN) + (0x3<<BIT_GPIO_NORMAL)); 
    REG_APB5_GPIO2_CFG  |=   (0x3<<BIT_GPIO_OUT_EN_N);
    REG_APB5_GPIO2_DATA	&= ~ (0x3<<BIT_GPIO_INPUT_EN);

    REG_AHB0_FIQ_PRIORITY_EN |=  INT_STATUS_UART;
    REG_AHB0_ICU_UARTCLKCON   = 0x0;                     //UART1 clock enable
    REG_AHB0_ICU_INT_ENABLE  |=  (INT_STATUS_UART|INT_STATUS_UART_WAKEUP);//IRQ UART interrupt enable
}
void HCIT_UART_Shutdown(void)
{
    //REG_APB3_UART_INT_ENABLE=0;             /* Disable uart Interrupts */
}


void uart_buff_send(volatile uint8 **buf, volatile uint32 *length)
{   
    uint32 count = *length;
    uint32 fifo_length;
    do
    {
        fifo_length=UART_TX_FIFO_COUNT&0xff;
    }while(fifo_length>(TX_FIFO_LENGTH/2));    
    /* Wait until the UART transmitter is empty */      

    fifo_length=TX_FIFO_LENGTH-fifo_length;//need tune again
    if(count > fifo_length)
        count = fifo_length;       

    (*length)-= count; 
     do
    {
        while(!UART_TX_WRITE_READY);
        UART_WRITE_BYTE(*((*buf)++));
        count--;            
    }
    while(count);
     
}

void uart_debug_send(uint8 * buffer,uint8 len)
{
    uint32 length2 = len;   
    uint8* buffer2 = &buffer[0];
    
    while(length2)
    {
        uart_buff_send((volatile uint8**)&buffer2, (uint32*)&length2);
    }
    
}

void UART_Interrupt_Handler(void)
{
    u_int32 status;
    u_int8 fifo[UART_BUFF_LEN], i = 0;

    status=REG_APB3_UART_INT_FLAG;

	if(status & 0x08)
	{
		while (UART_RX_READ_READY)    
        {
            fifo[i++] = ((REG_APB3_UART_DATA>>8)&0xff);
            i = (i % UART_BUFF_LEN);
		}
		//bprintf("uart error\n");
    }
	else if(status & 0x42)
	{
		uart_rx_buff_cnt = 0;
        while (UART_RX_READ_READY)    
        {
            uart_rx_tx_buff[uart_rx_buff_header++] = ((REG_APB3_UART_DATA>>8)&0xff);
            uart_rx_buff_header = (uart_rx_buff_header%UART_BUFF_LEN);
        }
		//bprintf("uart ok\n");
	}

    REG_APB3_UART_INT_FLAG = status;  
}


void* TRAhcit_Register_UART_Driver(void)
{
    
    //  Set up common members first, then UART specific ones.
    sys_hcit_uart_info.common.type = TRA_HCIT_TYPE_UART;
    sys_hcit_uart_info.common.access_type = TRA_HCIT_FAST_IRQ;
    
    sys_hcit_uart_info.common.interrupt_handler = UART_Interrupt_Handler;

   // sys_hcit_uart_info.initialise = UART_Initial;
    sys_hcit_uart_info.shutdown = HCIT_UART_Shutdown;
    

    sys_hcit_uart_info.poll_tx = uart_buff_send;

    return (void*)&sys_hcit_uart_info;
	
}


signed int bprintf(const char *fmt, ...)
{
#ifdef UART_LOG_P

    char buf[64];
    signed int rc; 
    va_list args; 
    va_start(args, fmt); 
    rc = vsnprintf(buf, sizeof(buf), fmt, args); 
    va_end(args); 
    buf[sizeof(buf) - 1] = '\0'; 
    if (rc < sizeof(buf) - 2 && buf[rc - 1] == '\n') 
    {            
        buf[rc - 1] = '\r'; 
        buf[rc] = '\n'; 
        buf[rc + 1] = 0; 
            
    }
    uart_debug_send((uint8 *)&buf[0], rc + 1);

    return rc;
#else
	return 0;// for warning messge change
    #endif
}


void uart_callback(volatile char * buff, u_int16 len)
{
    while(len > 0)
    {                
        uart_send_buff[uart_cnt_index++]=*buff++;
       
        if(uart_cnt_index >= UART_SEND_LENGTH)
        {
            uart_send_cnt=1;
            uart_send_length=UART_SEND_LENGTH;
            uart_cnt_index=0;
            break;
        }            	              
        len--;
        //buff++; 
        
    }   
}




