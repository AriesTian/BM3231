#ifndef __DRIVER_UART_H_
#define __DRIVER_UART_H_
#include "include.h"


#define TX_FIFO_LENGTH 15
#define UART_SEND_LENGTH 100
#define UART_BUFF_LEN    512
#define UART_BAUDRATE_1200 1200
#define UART_BAUDRATE_2400 2400
#define UART_BAUDRATE_4800 4800
#define UART_BAUDRATE_9600 9598
#define UART_BAUDRATE_19200 19200
#define UART_BAUDRATE_38400 38400
#define UART_BAUDRATE_57600 57600
#define UART_BAUDRATE_115200 115200
#define UART_BAUDRATE_128000 128000
#define UART_BAUDRATE_256000  256000
#define UART_BAUDRATE_921600  921600  //




#define UART_RX_INT_DISENABLE       REG_APB3_UART_INT_ENABLE &= ~(SET_RX_FIFO_NEED_READ_EN)
#define UART_TX_INT_EN              REG_APB3_UART_INT_ENABLE |=  (SET_TX_FIFO_NEED_WRITE_EN)
#define UART_TX_INT_DISENABLE       REG_APB3_UART_INT_ENABLE &= ~(SET_TX_FIFO_NEED_WRITE_EN)
#define UART_RX_INT_EN              REG_APB3_UART_INT_ENABLE |=  (SET_RX_FIFO_NEED_READ_EN)
#define UART_TX_FIFO_COUNT          (REG_APB3_UART_FIFO_COUNT&0xff)
#define UART_RX_FIFO_COUNT          ( (REG_APB3_UART_FIFO_COUNT>>8)&0xff)


//#define PRINT_BUF_SIZE           0X0200



#define UART_WRITE_BYTE(v)               (REG_APB3_UART_DATA=v)
#define UART_READ_BYTE()                 (REG_APB3_UART_DATA&0xff)
#define UART_TX_WRITE_READY              (REG_APB3_UART_FIFO_COUNT & (0x1<<BIT_FIFO_WR_READY))
#define UART_RX_READ_READY               (REG_APB3_UART_FIFO_COUNT & (0x1<<BIT_FIFO_RD_READY))

void UART_Initial(void);
void UART_Interrupt_Handler(void);
void uart_buff_send(volatile uint8 **buf, volatile uint32 *length);
void* TRAhcit_Register_UART_Driver(void);

signed int bprintf(const char *fmt, ...);




#endif

