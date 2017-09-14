//======================================================
// File Name:     BK_ADC_Api.c.c
// Author:        yubei
// Created Date:  @2015-03-20
// Description:   Project BK3231S - Test Firmware for Massive Production
//                ADC protocol
//                 Main code of Firmware Test of BK3231S
//======================================================
#include "include.h"
#include "DeviceBtj_Header.h"


void ADC_Init(uint8 adc_channel)
{
	uint32	 adc_config_value ;

	REG_AHB0_ICU_ADCCLKCON   =  0x00; //enable ADC clk
  
    adc_config_value  = 0x0 ; 
    adc_config_value |= (0x01 << BIT_ADC_MODE ) ; //step mode
    adc_config_value |= (adc_channel << BIT_ADC_CHNL    ) ; //0 chn
    adc_config_value |= (0 << BIT_ADC_SAMPLE_RATE ) ; //adc_clk/36  in continue
    adc_config_value |= (0 << BIT_ADC_WAIT_CLK_SETTING) ; //wait 4 clk
    adc_config_value |= (1 << BIT_ADC_VALID_MODE ) ; //when from power dowm, 1 data is vaild
    adc_config_value |= (1 << BIT_ADC_CLK_RATE   ) ;// clk/8
    REG_APB7_ADC_CFG = adc_config_value ;
    REG_APB5_GPIO3_CFG &= ~(1<<adc_channel);
    REG_APB5_GPIO3_CFG |= (1<<(adc_channel+8));
    REG_AHB0_ICU_INT_ENABLE  |=  (INT_STATUS_ADC|INT_STATUS_ADC_WAKEUP);
    
}

void ADC_Deinit(uint8 adc_channel)
{
	//BK3000_ADC_CONFIG = (7<<16);
	REG_APB7_ADC_CFG &= ~SET_ADC_EN;

	REG_AHB0_ICU_ADCCLKCON   =  0x01; //CLOSE adc clk
    REG_APB5_GPIO3_CFG |= ((0x1<<adc_channel));// GPIO PD 0-7 for gpio

}
void ADC_Cancel(void)
{
	REG_APB7_ADC_CFG &= ~SET_ADC_EN;
}

void ADC_Set_Chn(uint8 chn)
{
	uint32	 adc_config_value ;
	adc_config_value = REG_APB7_ADC_CFG & (~(0x7<<BIT_ADC_CHNL));
	adc_config_value |= (chn << BIT_ADC_CHNL ) ;
	REG_APB7_ADC_CFG = adc_config_value;
}

uint8 ADC_Get_Value(void)
{
    uint8 temp_adc_data,adc_cnt;
    adc_cnt=0;
    sys_flag &= ~FLAG_ADC_BUZY;
	REG_APB7_ADC_CFG |= SET_ADC_EN+(0x01 << BIT_ADC_MODE );
    
	while (!(sys_flag&FLAG_ADC_BUZY))//(REG_APB7_ADC_CFG&(0x01<<BIT_ADC_FIFO_BUSY));
    {        
        adc_cnt++;
        if(adc_cnt>150)
        {
            break;
        }
    }   
       
    temp_adc_data=(REG_APB7_ADC_DAT>>2);
    //bprintf("adc=%x\n",temp_adc_data);
	return temp_adc_data;//(REG_APB7_ADC_DAT>>2);
     
}


