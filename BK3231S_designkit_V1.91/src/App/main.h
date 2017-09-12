#ifndef __MAIN_H__
#define __MAIN_H__


//spi gpio
extern u_int8 spiCount;
extern u_int8 templata;



typedef struct _ENV_CONFIG_T
{
    uint8 stand_key_map[8][19];
    uint8 gpio_row[8],gpio_cow[19];
    uint8 bt_device_name[32];
    uint8 pincode[16];
    uint8 bt_addr[6];
    uint8 test_addr[6];
    uint8 uart_baudrate;
    uint8 work_mode;
    uint8 bt_pair_io;
    uint8 power_on_off_io;
    uint8 power_on_off_time;
    uint8 low_power_led_io;
    uint8 bt_led_io;
    uint8 low_power_led_on_time;
    uint8 low_power_led_off_time;
    uint8 bt_pair_led_on_time;
    uint8 bt_pair_led_off_time;    
    uint8 bt_connected_led_on_time;
    uint8 bt_connected_led_off_time;
    uint8 bt_auto_connect_led_on_time;
    uint8 bt_auto_connect_led_off_time;
    uint8 adc_io;
    uint8 lowpower_threshold;
    uint8 config_flag;
    uint8 gpio_cm_config[5];
    uint8 gpio_cm_config_enable;
    uint8 gpio_vr_config[8];
    uint8 uart_stop;//adc_x;
    uint8 uart_par;//adc_y;

} ENV_CONFIG_T,*ENV_CONFIG_P;
 
 

void delay_us(uint32 num);
void delay_for_32k(uint32 num);



#endif


