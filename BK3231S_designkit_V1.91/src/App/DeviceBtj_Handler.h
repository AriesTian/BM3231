#ifndef __DEVICEBTJ_HANDLER_H_
#define __DEVICEBTJ_HANDLER_H_

#include "sys_types.h"
#include "include.h"

#define HID_REPORT_SIZE 10
#define SEND_BUFFER_CNT  6
#define SEND_BUFFER_SIZE  10  
#define DATA_LENGTH    8
#define LINK_KEY_SAVE_BUF_LEN 23


/* debug defined */
//#define DEBUG	1

extern volatile u_int32 sys_flag;
extern u_int8 env_config_buff[sizeof(ENV_CONFIG_T)];
extern u_int8 uart_rx_buff_cnt;


extern u_int8 bd_addr[6];
extern u_int8 bt_tx_buff[SEND_BUFFER_CNT][SEND_BUFFER_SIZE],tx_buff_len[SEND_BUFFER_CNT];
extern u_int8 tx_buff_head,tx_buff_tail,tx_buff_count;
extern u_int8 backup_buffer[17],rfcomm_dis_fail,l2cap_dislink_fail;
extern u_int8 stan_key[8];

extern u_int8 pin_code_req;
extern DEV_MEM_ADDR pair_device_addr;
extern DEVICEBTJ_ADAPTER_T btj_adapter;
extern DEVICEBTJ_ADAPTER_P bt_adapter;


extern volatile u_int8 b_26M_colsed;
extern volatile u_int16 uart_rx_buff_header,uart_rx_buff_tailor;
extern volatile char uart_rx_tx_buff[UART_BUFF_LEN];
extern char uart_send_buff[UART_SEND_LENGTH];

extern u_int8 uart_send_length,uart_send_cnt,uart_cnt_index;

extern u_int8 key_lock;
//extern u_int16 enter_sleep_cont,key_idle_count,led_time_cnt;
extern u_int8 bt_time_tick;



void SYS_Host_Initialise(void);

static uint8 getATCommand(uint8 *pCommand);
static void getCommandData(uint8 *pbuf);
uint32 charToDec(uint8 *pchar, uint8 len);
uint8 shiftKeyPressOrRelease(uint8 keycode);
uint16 asciiToKeycode(uint8 ascii);



#endif

