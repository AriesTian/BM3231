#ifndef __DRIVER_GPIO_H_
#define __DRIVER_GPIO_H_
#include "include.h"


void GPIO_Initial(void);
void gpio1_output_for_debug(uint8 output_data);
void GPIO_config( uint8 port, uint8 gpio, uint8 index ) ;
void GPIO_output( uint8 port, uint8 gpio, uint8 val ) ;
uint32 gpio_input( uint8 port, uint8 gpio );
void deep_sleep_wakeup(void);


#endif

