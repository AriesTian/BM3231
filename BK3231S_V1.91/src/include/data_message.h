//======================================================
// File Name:     data_message.h
// Author:        Zhou Guofei 
// Created Date:  @2015-01-12
// Description:   Project Test Firmware for Massive Production 
//                Header files for Firmware data typedef declarations 
//                Used in BK3231S Beken Test Firmware with ARM9 and erxternal flash.
//======================================================

#ifndef _BK_FIRMWARE_DATA_TYPEDEF_H_
#define _BK_FIRMWARE_DATA_TYPEDEF_H_


//----------------------------------------------
// I2C and SPI data typedef 
//----------------------------------------------
typedef  struct
{
	unsigned char		int_mode;
	unsigned char		rw_mode;
	unsigned char		addr10_flag;
	unsigned short int	send_addr;
	unsigned char		remain_data_cnt;
	unsigned char		addr_idx;
	unsigned char		addr_tx_done;
	unsigned char		trans_done;
	unsigned char		repeat_start;	
	unsigned char		ack_check;	
}  i2c_message;

typedef  struct
{
 	unsigned char		txint_mode;
	unsigned char		rxint_mode;
   	unsigned char		tx_remain_data_cnt;
	unsigned char		rx_remain_data_cnt;
	unsigned char		master;
	unsigned char		nssmd;
	unsigned char		trans_done;
}  spi_message;

typedef  struct
{
	unsigned char	rxfifo_level;
	unsigned char	txfifo0_level;
	unsigned char	txfifo1_level;
	unsigned char	txfifo2_level;
	unsigned char	trans_done;
	int  		remain_data_cnt;
}  i2s_message;

#define REG_APB7_I2C_CN		reg_I2C2_CN
#define REG_APB7_I2C_STAT	reg_I2C2_STATUS
#define REG_APB7_I2C_DAT	reg_I2C2_DATA

#define REG_APB5_SPI_CTRL	reg_SPI_SPI_CONF
#define REG_APB5_SPI_STAT	reg_SPI_SPI_STAT
#define REG_APB5_SPI_DAT	reg_SPI_SPI_DATA
//----------------------------------------------



//----------------------------------------------
// Configuration of 32KHz Clock calibration 
//----------------------------------------------
typedef struct _BK_CLK32K_Calib_CFG_STRUCT_internal
{
     uint8 manu_en;    
     uint8 cali_mode;  
     uint8 spi_trig;   
}BK_CLK32K_Calib_CFG_STRUCT;


// Structure type of Beken UART Control parameters 
typedef struct BKUART_CONTROL_STRU_internal
{
        unsigned char   *pTx;
        unsigned int    txBufLen;
        unsigned int    txIndex;        
        unsigned char   *pRx;
        unsigned int    rxBufLen;
        unsigned int    rxWrIndex;
        unsigned int    rxRdIndex;      
        unsigned int    active;        //active flag
        unsigned int    busy;
}BKUART_CONTROL_STRU;


// Structure type of Beken ADC Buffer  
typedef struct _BKADC_BUFFER_STRUCT_internal
{
    uint16   buf_index;
    uint16   *pBuf;
    uint16   bufLen;
}BKADC_BUFFER_STRUCT;

// Structure type of Beken ADC Control parameters 
typedef struct _BKADC_CONFIG_STRUCT_internal
{
    uint8   mode;           //0x00:pwrdown, 0x01:step, 0x02:software, 0x03:continue
    uint8   channel;        //channel selection
    uint8   sample_rate;    //0x00:adc_clk/36, 0x01:adc_clk/18
    uint8   settling;       //0x00:4 ADC_CLK,0x01:8 ADC_CLK
    uint8   valid_mode;     //0x0~0x3: data valid counter=0x0~0x3
    uint8   clk_rate;       //0x00: 4div, 0x01:8div, 0x02:16div, 0x03:32div
}BKADC_CONFIG_STRUCT;
//----------------------------------------------

#endif
