#ifndef _DRIVER_ADC_H_
#define _DRIVER_ADC_H_


void ADC_Init(uint8 adc_channel);
uint8 ADC_Get_Value(void);
void ADC_Deinit(uint8 adc_channel);



#endif

