/*************************************************************
 * File Name:     
 * Author:        simon
 * Created Date:  @2017-04-07
 * Description:   code of flash driver of BK3231S
 * Add:			  ariestian 20170803    
 * History:       2017-04-07 simon    create this file
*/
#include <stdio.h>
#include <string.h>
#include "driver_gpio.h"
#include "driver_spi.h"
#include "BK3231S_reg.h"
//#include "driver_uart.h"


volatile char spi_tx_data[SPI_DATA_BUF_LEN], spi_rx_data[SPI_DATA_BUF_LEN];
unsigned char *p_spi_txdata;
unsigned char *p_spi_rxdata;
volatile unsigned long spi_transmit_len, spi_receive_len;


 
/*
 * @brief: 从选择模式位，选择NSS工作模式:
			00: 3线从模式或3线主模式。NSS信号不连接到端口引脚
			01: 4线从模式或多主模式(默认值)。NSS总是器件的输入
			1x: 4线单主模式。NSS被分配一个输出引脚并输出NSSMD0的值
			【注意】4线单主模式下，每次传输前软件需要现配置该参数为2'b11后配置成2'b10，
			传输结束后需要再配置成2'b11。
 */
__INLINE__ void spi_trans_start(void)
{
	REG_APB2_SPI_CTRL &= ~(0x01<<BIT_SPI_CTRL_NSSMD);	 // Low Level of NSS
}

__INLINE__ void spi_trans_stop(void)
{
	REG_APB2_SPI_CTRL |= (0x03<<BIT_SPI_CTRL_NSSMD);	// high Level of NSS
}

__INLINE__ void spi_int_enable(void)
{
	ICU_INT_BIT_ENABLE(INT_STATUS_SPI); 			// SPI interrupt enable
}

__INLINE__ void spi_int_disable(void)
{
	ICU_INT_BIT_DISABLE(INT_STATUS_SPI);			 // SPI interrupt disable
}

__INLINE__ void spi_txint_disable(void)
{
	REG_APB2_SPI_CTRL &= ~(0x01<<BIT_SPI_CTRL_TXINT_EN);
}

__INLINE__ void spi_txint_enable(void)
{
	REG_APB2_SPI_CTRL |= (0x01<<BIT_SPI_CTRL_TXINT_EN);
}

__INLINE__ void spi_clk_open(void)
{
	REG_AHB0_ICU_SPICLKCON = 0x0;
}

__INLINE__ void spi_clk_close(void)
{
	REG_AHB0_ICU_SPICLKCON = 0x01;
}

__INLINE__ unsigned long spi_rx_fifo_empty(void)
{
	return (REG_APB2_SPI_STAT & (1<<BIT_SPI_STAT_RXFIFO_EMPTY));
}

__INLINE__ unsigned long spi_tx_fifo_empty(void)
{
	return (REG_APB2_SPI_STAT & (1<<BIT_SPI_STAT_TXFIFO_EMPTY));
}

void GPIO_SPI_function_enable(void)
{
    GPIO_config((SPI_MOSI_PIN>>4)&0x0F,SPI_MOSI_PIN&0x0F,2);
    GPIO_config((SPI_MISO_PIN>>4)&0x0F,SPI_MISO_PIN&0x0F,2);
    GPIO_config((SPI_SCK_PIN>>4)&0x0F,SPI_SCK_PIN&0x0F,2);
    GPIO_config((SPI_NSS_PIN>>4)&0x0F,SPI_NSS_PIN&0x0F,2);
}

void spi_init(SPI_MASTER_SLAVE spi_master_slave)
{
    spi_clk_open(); 
    GPIO_SPI_function_enable(); 

    // SPI config register mapping:
    // 1110 0011: master, ckpha = 1, ckpol = 0, nssmd = 3,
    // 0000 0001: spi_ckr=1 (4MHz). 0000 0111: spi_ckr=7 (1MHz).  0001 1111: spi_ckr = 31 (250kHz)
    // 1011 1110: txint_en = 0, rxint_en = 1, rxint_mode = 3, txint_mode = 0
    if (spi_master_slave == SPI_MASTER)
    {
//        REG_APB2_SPI_CTRL = 0x00C304F6;
        REG_APB2_SPI_CTRL = (0x01UL           << BIT_SPI_CTRL_SPIEN)
                          | (spi_master_slave << BIT_SPI_CTRL_MSTEN)
                          | (0x01UL           << BIT_SPI_CTRL_CKPHA)
                          | (0x00UL           << BIT_SPI_CTRL_CKPOL)
                          | (0x00UL           << BIT_SPI_CTRL_BIT_WIDTH)
                          | (0x03UL           << BIT_SPI_CTRL_NSSMD)
//                          | (0xFFUL           << BIT_SPI_CTRL_SPI_CKR)      // 31.2KHz
//                          | (0x7FUL           << BIT_SPI_CTRL_SPI_CKR)      // 62.5KHz
                          | (0x1FUL           << BIT_SPI_CTRL_SPI_CKR)      // 250KHz
//                          | (0x07UL           << BIT_SPI_CTRL_SPI_CKR)      // 1MHz
//                          | (0x04UL           << BIT_SPI_CTRL_SPI_CKR)      // 1.6MHz
//                          | (0x01UL           << BIT_SPI_CTRL_SPI_CKR)      // 4MHz
                          | (0x01UL           << BIT_SPI_CTRL_RXINT_EN)
                          | (0x00UL           << BIT_SPI_CTRL_TXINT_EN)
                          | (0x01UL           << BIT_SPI_CTRL_RXOVR_EN)
                          | (0x01UL           << BIT_SPI_CTRL_TXOVR_EN)
                          | (0x01UL           << BIT_SPI_CTRL_RXINT_MODE)
                          | (0x02UL           << BIT_SPI_CTRL_TXINT_MODE);

    }
    // SPI config register mapping:
    // 1000 0011: slave, ckpha = 0, ckpol = 0, nssmd = 1,
    // 0000 0000: spi_ckr = 0
    // 1011 0110: txint_en = 0, rxint_mode = 1, txint_mode = 2
    else if (spi_master_slave == SPI_SLAVE)
    {
//        REG_APB2_SPI_CTRL = 0x008104F6;
        REG_APB2_SPI_CTRL = (0x01UL           << BIT_SPI_CTRL_SPIEN)
                          | (spi_master_slave << BIT_SPI_CTRL_MSTEN)
                          | (0x00UL           << BIT_SPI_CTRL_CKPHA)
                          | (0x00UL           << BIT_SPI_CTRL_CKPOL)
                          | (0x00UL           << BIT_SPI_CTRL_BIT_WIDTH)
                          | (0x01UL           << BIT_SPI_CTRL_NSSMD)
//                          | (0xFFUL           << BIT_SPI_CTRL_SPI_CKR)      // 31.2KHz
//                          | (0x7FUL           << BIT_SPI_CTRL_SPI_CKR)      // 62.5KHz
//                          | (0x1FUL           << BIT_SPI_CTRL_SPI_CKR)      // 250KHz
//                          | (0x07UL           << BIT_SPI_CTRL_SPI_CKR)      // 1MHz
//                          | (0x04UL           << BIT_SPI_CTRL_SPI_CKR)      // 1.6MHz
                          | (0x01UL           << BIT_SPI_CTRL_SPI_CKR)      // 4MHz
                          | (0x01UL           << BIT_SPI_CTRL_RXINT_EN)
                          | (0x01UL           << BIT_SPI_CTRL_TXINT_EN)
                          | (0x01UL           << BIT_SPI_CTRL_RXOVR_EN)
                          | (0x01UL           << BIT_SPI_CTRL_TXOVR_EN)
                          | (0x01UL           << BIT_SPI_CTRL_RXINT_MODE)
                          | (0x02UL           << BIT_SPI_CTRL_TXINT_MODE);
    }

	/* open spi interrupter */
    spi_int_enable();

	/* select rx interrupter mode */
    spi_set_rxint_mode(3);

	/* disable tx interrupter */
    spi_txint_disable();	
}

/*
 * @brief: 发送中断产生模式
            00: 即发送FIFO中数据个数少于1个才产生中断
            01: 即发送FIFO中数据个数少于4个才产生中断
            10: 即发送FIFO中数据个数少于8个才产生中断
            11: 即发送FIFO中数据个数少于12个才产生中断
 */
void spi_set_txint_mode(unsigned char mode)
{
    REG_APB2_SPI_CTRL &= ~(0x03<<BIT_SPI_CTRL_TXINT_MODE);
    REG_APB2_SPI_CTRL |= (mode<<BIT_SPI_CTRL_TXINT_MODE);
}

/*
 * @brief: 接收中断产生模式
            00: 即接收FIFO中数据个数more than 12个才产生中断
            01: 即接收FIFO中数据个数more than 8个才产生中断
            10: 即接收FIFO中数据个数more than 4个才产生中断
            11: 即接收FIFO中数据个数more than 1个才产生中断
 */
void spi_set_rxint_mode(unsigned char mode)
{
    REG_APB2_SPI_CTRL &= ~(0x03<<BIT_SPI_CTRL_RXINT_MODE);
    REG_APB2_SPI_CTRL |= (mode<<BIT_SPI_CTRL_RXINT_MODE);
}

void SPI_InterruptHandler(void)
{
	//unsigned long           stat, ctrl;
    unsigned long           txint, rxint;
    volatile unsigned char  fifo_empty_num = 0x2a;
    volatile unsigned char  data_num = 0;
    unsigned char           i;
    unsigned long           txint_mode = (REG_APB2_SPI_CTRL>>BIT_SPI_CTRL_TXINT_MODE)&0x03;
    unsigned long           rxint_mode = (REG_APB2_SPI_CTRL>>BIT_SPI_CTRL_RXINT_MODE)&0x03;
    unsigned long           nss_mode = (REG_APB2_SPI_CTRL>>BIT_SPI_CTRL_NSSMD)&0x03;

    txint = REG_APB2_SPI_STAT & 0x0100;
    rxint = REG_APB2_SPI_STAT & 0x0200;

    if (txint)
    {
        switch (txint_mode)
        {
            case 0  :   fifo_empty_num = 16;    break;
            case 1  :   fifo_empty_num = 12;    break;
            case 2  :   fifo_empty_num = 8;     break;
            case 3  :   fifo_empty_num = 4;     break;
            default :   fifo_empty_num = 0x5a;  break;
        }
        fifo_empty_num = (fifo_empty_num < spi_transmit_len) ? fifo_empty_num : spi_transmit_len;
        for (i=0; i < fifo_empty_num; i++)
        {
        	//bprintf("tx\n");
            REG_APB2_SPI_DAT = *p_spi_txdata;
            p_spi_txdata ++;
            spi_transmit_len --;
            if(spi_transmit_len <= 0) 
            {
                while(!spi_tx_fifo_empty())
                {
                }
                spi_set_txint_mode(0);
                spi_txint_disable();
                spi_int_disable();
                break;
            }
        }
        while(!spi_tx_fifo_empty())
        {
        }
        while(REG_APB2_SPI_CTRL&(0x01 << BIT_SPI_CTRL_NSSMD)) 
        {
            spi_trans_start();
        }
        //REG_APB2_SPI_STAT |= 0x0100; //clear txint
    }
    
    if (rxint)
    {
    	//bprintf("rxint\n");
        switch (rxint_mode)
        {
            case 0  :   data_num = 12;  break;
            case 1  :   data_num = 8;   break;
            case 2  :   data_num = 4;   break;
            case 3  :   data_num = 1;   break;
            default :   data_num = 0;   break;
        }

        data_num = (data_num < spi_receive_len) ? data_num : spi_receive_len;
        while (!spi_rx_fifo_empty())
        {
            *p_spi_rxdata = REG_APB2_SPI_DAT;
            //bprintf("rx:%X\n",*p_spi_rxdata);
            p_spi_rxdata++;
            spi_receive_len--;
            if(spi_receive_len <= 0) {
				//bprintf("rxlen\n");
                spi_set_rxint_mode(3);
                break;
            }
        }
		REG_APB2_SPI_STAT |= 0x0200; //clear rxint
    }
}

/*************************************************************
 * is_spi_busy
 * Description: ask if spi interface is busy
 * Parameterd:  none
 * return:      1: spi interface is busy
 *              0:  spi interface is free
 * error:       none
 */
unsigned char is_spi_busy(void)
{
    if (REG_APB2_SPI_STAT & (0x01<<15))
    {
        return 1;
    }

    if (spi_transmit_len)
    {
        return 1;
    }
    return 0;
}

void SPI_transmit_data(unsigned char *tx_data, unsigned char *rx_data, unsigned char len)
{
    SM_ASSERT(len<=SPI_DATA_BUF_LEN);
    SM_ASSERT(tx_data!=NULL);
    SM_ASSERT(rx_data!=NULL);

    spi_transmit_len = len;
    spi_receive_len = len;
    p_spi_txdata = tx_data;
    p_spi_rxdata = rx_data;

	#if 0
    if(REG_APB2_SPI_CTRL&(0x01 << BIT_SPI_CTRL_MSTEN))  //is spi master
    {  //NSS control
        spi_trans_start();
    }
	#endif 

	spi_trans_start();

	#if 0
    spi_int_enable();
    spi_set_rxint_mode(3);
    spi_txint_disable();
	#endif
	
    while(spi_transmit_len > 0)
    {
    	REG_APB2_SPI_DAT = *p_spi_txdata;
		*p_spi_txdata++;
		spi_transmit_len--;
    	//bprintf("len > 0\n");
    }
    //spi_set_txint_mode(0);
    //spi_set_rxint_mode(3);
    //spi_txint_disable();
    while(spi_receive_len)
	{
		//bprintf("not empty\n");
	}
    spi_trans_stop();     // High Level of NSS    
}

/*************************************************************
 * BK_SPI_Test_Master_Tx
 * Description: SPI Master Tx test
 * Parameterd:  none
 * return:      none
 * error:       none
 */
void BK_SPI_Test_Master_Tx(void)
{
    unsigned short i;

    for (i = 0; i<SPI_DATA_BUF_LEN; i++)
    {
        spi_tx_data[i] = i + 1;
    }
    memset((void *)spi_rx_data, 0, sizeof(spi_rx_data));
    
    spi_init(SPI_MASTER);
    bprintf("----- BK_SPI_Test_Master_Tx start -----\r\n");

    SPI_transmit_data((uint8 *)spi_tx_data, (uint8 *)spi_rx_data, SPI_DATA_BUF_LEN);

    bprintf("----- BK_SPI_Test_Master_Tx over  -----\r\n");
}


void spi_callback(volatile char *buff, u_int16 len)
{
	#if 0
	while(len > 0)
	{
		spi_hid_tx_buff[spi_cnt_index++] = *buff++;	//获取HID发送的数据

		if(spi_cnt_index >= SPI_DATA_BUF_LEN)//HID 单次数据包最大值
		{
			spi_send_cnt = 1;
			spi_send_length = SPI_DATA_BUF_LEN;
			spi_cnt_index = 0;
			break;
		}

		len--;
		//buff++;
	}
	#endif
}

#if 0
/*************************************************************
 * BK_SPI_Test_Slave_Rx
 * Description: SPI Slave Rx test
 * Parameterd:  none
 * return:      none
 * error:       none
 */
void BK_SPI_Test_Slave_Rx(void)
{
    unsigned short i;

    bprintf("----- BK_SPI_Test_Slave_Rx start -----\r\n");

    for (i=0; i<SPI_DATA_BUF_LEN; i++)
    {
        spi_tx_data[i] = i + 0x81;
    }
    memset(spi_rx_data, 0, sizeof(spi_rx_data));
    

    spi_init(SPI_SLAVE);
    delay_ms(2);
    
    SPI_transmit_data(spi_tx_data,spi_rx_data,SPI_DATA_BUF_LEN);

    bprintf("----- BK_SPI_Test_Slave_Rx over  -----\r\n");
}

#endif




