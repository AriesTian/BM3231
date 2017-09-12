/*************************************************************
 * File Name:     
 * Author:        simon
 * Created Date:  @2017-04-07
 * Description:   Header file of driver_spi.c
 * Add:		    arirestian 2017-08-03
 * History:       2017-04-07 simon    create this file
*/

#ifndef __DRIVER_SPI_H__
#define __DRIVER_SPI_H__


#ifdef __cplusplus
extern "C" {
#endif  /* __cplusplus */


#include "config.h"

#define SPI_DATA_BUF_LEN  127
#define SPI_HID_TX_LEN  100
#define SPI_MOSI_PIN    0x05
#define SPI_MISO_PIN    0x06
#define SPI_SCK_PIN     0x04
#define SPI_NSS_PIN     0x07

#define SM_ASSERT(expr)    do{                                          \
                            if(!(expr))                                 \
                            {                                           \
                                bprintf("ASSERT!SPI,%d",__LINE__);      \
                                while(1);                               \
                            }                                           \
                        }while(0)

typedef enum 
{
	SPI_MASTER   = 1,
	SPI_SLAVE    = 0
} SPI_MASTER_SLAVE;

extern volatile char spi_tx_data[SPI_DATA_BUF_LEN], spi_rx_data[SPI_DATA_BUF_LEN];




void spi_set_txint_mode(unsigned char mode);
void spi_set_rxint_mode(unsigned char mode);
extern void spi_init(SPI_MASTER_SLAVE spi_master_slave);
extern void spi_trans_start(void);
extern void spi_int_enable(void);
extern unsigned char is_spi_busy(void);

extern void SPI_InterruptHandler(void);


#ifdef __cplusplus
}
#endif  /* __cplusplus */


#endif      /* __DRIVER_SPI_H__ */


