#include"include.h"
#include "DeviceBtj_Header.h"
#include"DeviceBtj_Handler.h"
#define SCAN_COUT 0x03

MOUSE_VARIABLE_T mouse_val;

u_int8 bt_tx_buff[6][10],tx_buff_len[6];
u_int8 tx_buff_head,tx_buff_tail,tx_buff_count,enter_pair_count;
u_int16 key_press_flag,key_rel_flag,mix_key_flag;

u_int16 enter_sleep_cont,key_idle_count,led_time_cnt;
u_int16 low_power_led_time_cnt;

u_int8  stan_key_len,old_key_len;
u_int8  cow[19];   
u_int8  row[8];    
u_int8  key_flag[8][19];	
u_int8  stan_key[8],old_key[8];
u_int8  real_key_value[19];
u_int16 key_err_time,key_status;
u_int8 m_key,s_key,c_key,p_key,key_null;
u_int8 sys_media_key[4],sys_power_key[1],sys_standard_key[8];
u_int8 data_upload_status;
u_int8 f1_f12[14] = {0,1,4,45,46,11,12,13,14,9,10,8,6,24};
u_int8 media_key[47][4] = 
{
	{0x01,0x00,0x00,0x00},//{0x24,0x02},   //WWW back  0
	{0x02,0x00,0x00,0x00},//{0x25,0x02},   //WWW forward 1
	{0x04,0x00,0x00,0x00},//{0x26,0x02},	//WWW Stop  2
	{0x08,0x00,0x00,0x00},//{0x27,0x02},   //WWW Refresh 3
	{0x10,0x00,0x00,0x00},//{0x21,0x02},	//WWW Search 4
	{0x20,0x00,0x00,0x00},//{0x2A,0x02},	//WWW Favorites  5
	{0x40,0x00,0x00,0x00},//{0x23,0x02},   //WWW Home 6
	{0x80,0x00,0x00,0x00},//{0x8A,0x01},	//Mail  7
	{0x00,0x01,0x00,0x00},//{0xE2,0x00},	//Mute 8
	{0x00,0x02,0x00,0x00},//{0xEA,0x00},	//Volume-  9              
	{0x00,0x04,0x00,0x00},//{0xE9,0x00},	//Volume+   10            
	{0x00,0x08,0x00,0x00},//{0xCD,0x00},	//Play/Pause  11           
	{0x00,0x10,0x00,0x00},//{0xB7,0x00},	//Stop  12 
	{0x00,0x20,0x00,0x00},//{0xB6,0x00},	//Prev Track 13           
	{0x00,0x40,0x00,0x00},//{0xB5,0x00},	//Next Track  14          
	{0x00,0x80,0x00,0x00},//{0x83,0x01},	//Media Select  15        
	{0x00,0x00,0x01,0x00},//{0x94,0x01},	//My Computer   16        
	{0x00,0x00,0x02,0x00},//{0x92,0x01},	//Calculator   17         
	{0x00,0x00,0x04,0x00},//{0x09,0x02},	//More Info  18           
	{0x00,0x00,0x08,0x00},//{0xB2,0x00},	//Record     19           
	{0x00,0x00,0x10,0x00},//{0xB3,0x00},	//Forward     20          
	{0x00,0x00,0x20,0x00},//{0xB4,0x00},	//Rewind      21          
	{0x00,0x00,0x40,0x00},//{0x8D,0x00},	//Guide        22         
	{0x00,0x00,0x80,0x00},//{0x04,0x00},	//<Reserved>   23         
	{0x00,0x00,0x00,0x01},//{0x30,0x00},	//Eject(Mac,power)   24
	{0x00,0x00,0x00,0x02},//{0x07,0x03},	//H7    31touchkey
	{0x00,0x00,0x00,0x04},//{0x0A,0x03},	//H10	34lightness+
	{0x00,0x00,0x00,0x08},//{0x0B,0x03},	//H11	35lightness-	
	{0x00,0x00,0x00,0x10},//{0xb1,0x01},    //photo 45
    {0x00,0x00,0x00,0x20},//{0xb8,0x00},    //touchkey 46
    {0x40,0x00,0x00,0x01},//截屏
    {0x00,0x00,0x00,0x00},//{0x01,0x03},	//H1   25
	{0x00,0x00,0x00,0x00},//{0x02,0x03},	//H2   26
	{0x00,0x00,0x00,0x00},//{0x03,0x03},	//H3 	27
	{0x00,0x00,0x00,0x00},//{0x04,0x03},	//H4    28
	{0x00,0x00,0x00,0x00},//{0x05,0x03},	//H5	29
	{0x00,0x00,0x00,0x00},//{0x06,0x03},	//H6	30
	{0x00,0x00,0x00,0x00},//{0x08,0x03},	//H8	32
	{0x00,0x00,0x00,0x00},//{0x09,0x03},	//H9	33
	{0x00,0x00,0x00,0x00},//{0x0C,0x03},	//H12	36
	{0x00,0x00,0x00,0x00},//{0x0D,0x03},	//H13	37
	{0x00,0x00,0x00,0x00},//{0x0E,0x03},	//H14	38
	{0x00,0x00,0x00,0x00},//{0x0F,0x03},	//H15	39
	{0x00,0x00,0x00,0x00},//{0x10,0x03},	//H16	40
	{0x00,0x00,0x00,0x00},//{0x11,0x03},	//H17	41
	{0x00,0x00,0x00,0x00},//{0x12,0x03},	//H18	42
	{0x00,0x00,0x00,0x00},//{0x13,0x03},	//H19	43
};
uint8 mouse_data[7]=
{    
    0xa1,0x02,0x00,0x00,0x00,0x00,0x00,
};


uint8 cm_key_press[13][10]=
{    
    {0xa1,0x03,0x00,0x04,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x28,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x28,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x2e,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x2d,0x00,0x00,0x00,0x00,0x00},

    {0xa1,0x03,0x00,0x20,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x03,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x03,0x00,0x02,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x03,0x00,0x08,0x00,0x00,0x00,0x00,0x00,0x00},

    {0xa1,0x01,0x00,0x00,0x4f,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x50,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x52,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x51,0x00,0x00,0x00,0x00,0x00},
};


uint8 cm_key_releas[13][10]=
{       
    {0xa1,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},

    {0xa1,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},

    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
    {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
};

u_int8 power_key[3] = 
{
	0x01,	//ACPI:Power                 
	0x02,	//ACPI:Sleep                 
	0x04,	//ACPI:Wake up               
};


void button_led_init(void)
{
    uint8 i;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff; 
    
    for(i=0;i<5;i++)
        GPIO_config((config->gpio_cm_config[i]>>4),(config->gpio_cm_config[i]&0x0f),0);

    for(i=0;i<8;i++)
        GPIO_config((config->gpio_vr_config[i]>>4),(config->gpio_vr_config[i]&0x0f),0);

    GPIO_config((config->bt_led_io>>4),(config->bt_led_io&0x0f),1);
    GPIO_output((config->bt_led_io>>4),(config->bt_led_io&0x0f),0);
    GPIO_config((config->low_power_led_io>>4),(config->low_power_led_io&0x0f),1);
    GPIO_output((config->low_power_led_io>>4),(config->low_power_led_io&0x0f),0);
    if(config->config_flag&FLAG_CONFIG_POWER_ON_OFF_ENBALE)
        GPIO_config((config->power_on_off_io>>4),(config->power_on_off_io&0x0f),0);

    key_press_flag=0;
    key_rel_flag=0xffff;
    mix_key_flag=0;
}
void key_wakeup_enable()
{
    uint8 i;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;

    for(i=0;i<5;i++)
    {
        if((config->gpio_cm_config[i]>>4)<4)
        {
            REG_APB5_GPIO_WUATOD_ENABLE |= 1<<(8*(config->gpio_cm_config[i]>>4)+(config->gpio_cm_config[i]&0x0f));
            
        }
        else  if((config->gpio_cm_config[i]>>4)==4)
        {
            REG_APB5_GPIO_WUE_ENABLE |= 1<<(config->gpio_cm_config[i]&0x0f);
               
        }
    }
    for(i=0;i<8;i++)
    {
        if((config->gpio_vr_config[i]>>4)<4)
        {
            REG_APB5_GPIO_WUATOD_ENABLE |= 1<<(8*(config->gpio_vr_config[i]>>4)+(config->gpio_vr_config[i]&0x0f));
            
        }
        else  if((config->gpio_vr_config[i]>>4)==4)
        {
            REG_APB5_GPIO_WUE_ENABLE |= 1<<(config->gpio_vr_config[i]&0x0f);
               
        }
    }
    
    REG_AHB0_ICU_INT_ENABLE |=(INT_STATUS_GPIO|INT_STATUS_GPIO_WAKEUP);
}

void set_gpio_deep_sleep(void)
{
    uint8 i;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
	if(config->config_flag&FLAG_CONFIG_POWER_ON_OFF_ENBALE)
    	while(0==gpio_input(config->power_on_off_io>>4,config->power_on_off_io&0x0f));
    
    ADC_Deinit(config->adc_io); 
    gpio_sleep();
    GPIO_config((config->bt_led_io>>4),(config->bt_led_io&0x0f),1);
    GPIO_output((config->bt_led_io>>4),(config->bt_led_io&0x0f),0);
    GPIO_config((config->low_power_led_io>>4),(config->low_power_led_io&0x0f),1);
    GPIO_output((config->low_power_led_io>>4),(config->low_power_led_io&0x0f),0);
    if(config->config_flag&FLAG_CONFIG_POWER_ON_OFF_ENBALE)
        GPIO_config((config->power_on_off_io>>4),(config->power_on_off_io&0x0f),0);
 
            
    REG_AHB0_ICU_INT_ENABLE |=(INT_STATUS_GPIO|INT_STATUS_GPIO_WAKEUP);
    for(i=0;i<5;i++)
    {
        GPIO_config((config->gpio_cm_config[i]>>4),(config->gpio_cm_config[i]&0x0f),0);
        if((config->gpio_cm_config[i]>>4)<4)
        {
            REG_AHB0_ICU_DEEP_SLEEP0 |= 1<<(8*(config->gpio_cm_config[i]>>4)+(config->gpio_cm_config[i]&0x0f));
            if(config->config_flag&FLAG_CONFIG_POWER_ON_OFF_ENBALE)
                REG_AHB0_ICU_DEEP_SLEEP0 |= 1<<(8*(config->power_on_off_io>>4)+(config->power_on_off_io&0x0f));

        }
        else
        {
            REG_AHB0_ICU_DEEP_SLEEP1 |= 1<<(config->gpio_cm_config[i]&0x0f);
            if(config->config_flag&FLAG_CONFIG_POWER_ON_OFF_ENBALE)
                REG_AHB0_ICU_DEEP_SLEEP1 |= 1<<(config->power_on_off_io&0x0f);   
        }
    }
    for(i=0;i<8;i++)
    {
        GPIO_config((config->gpio_vr_config[i]>>4),(config->gpio_vr_config[i]&0x0f),0);
        if((config->gpio_vr_config[i]>>4)<4)
        {
            REG_AHB0_ICU_DEEP_SLEEP0 |= 1<<(8*(config->gpio_vr_config[i]>>4)+(config->gpio_vr_config[i]&0x0f));
            
        }
        else
        {
            REG_AHB0_ICU_DEEP_SLEEP1 |= 1<<(config->gpio_vr_config[i]&0x0f);
             
        }
    }
}


void key_scan(void)
{
    unsigned char i,j,rw,cw;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff; 
   
    stan_key_len = 0;
    for(i=0;i<8;i++)
        stan_key[i] = 0;
    for(i=0;i<19;i++)
        cow[i] = 0;
    for(i=0;i<8;i++)
        row[i] = 0;
    for(i=0;i<8;i++)
    {
        for(j=0;j<19;j++)
            key_flag[i][j] <<= 1;
    }
    for(rw = 0;rw < 8; rw++)
    {       
        GPIO_config(config->gpio_row[rw]>>4,config->gpio_row[rw]&0x0f,1);
        GPIO_output(config->gpio_row[rw]>>4,config->gpio_row[rw]&0x0f,0);
        delay_us(2);
        for(cw = 0;cw < 19; cw++)
        {
            if(0==gpio_input(config->gpio_cow[cw]>>4,config->gpio_cow[cw]&0x0f)) 
            {
                key_flag[rw][cw] |=1;   
                if( (key_flag[rw][cw]&SCAN_COUT)==SCAN_COUT )
                {               
                    real_key_value[cw] |= (1<<rw);                
                }                   
            }
            else if( (key_flag[rw][cw]&SCAN_COUT) == 0x00)
            {
                real_key_value[cw] &= ~(1<<rw);
            }
  
            if( real_key_value[cw]&(1<<rw))
            {
                stan_key[stan_key_len]=config->stand_key_map[rw][cw];
                
                row[rw]++;
                cow[cw]++;       
                if(stan_key_len<8)
                    {stan_key_len++;}            
            }
        }
        
        GPIO_output(config->gpio_row[rw]>>4,config->gpio_row[rw]&0x0f,1);
        GPIO_config(config->gpio_row[rw]>>4,config->gpio_row[rw]&0x0f,3);
   }               
}
void judge_error_key(void)
{
	u_int8  i;

	key_status &= ~KEY_STATUS_CHANGE;
	if(stan_key_len != old_key_len) //按键长度变化
	{
		key_status  |= KEY_STATUS_CHANGE;
        
	}
	else
	{
		for(i = 0; i < stan_key_len; i++)  //按键值不一样
		{
			if(old_key[i] != stan_key[i])
			{
				key_status  |= KEY_STATUS_CHANGE;
				break;
			}
		}
	}

	if(key_status&KEY_STATUS_CHANGE)
	{
		key_status &= ~KEY_STATUS_ERROR;
		key_err_time=0;
		old_key_len = stan_key_len;
		for(i = 0; i < stan_key_len; i++) 
			old_key[i] = stan_key[i];
        
	}
	
	if((!(key_status & KEY_STATUS_CHANGE)) && stan_key_len)				//如果相同按键按下
	{	
		key_err_time++;	
		if(key_err_time >= KEY_ERROR_TIMEOUT)
		{
			key_status |= KEY_STATUS_ERROR;
		}
	}
}

void ghost_key_scan(void)
{
	u_int8 i,r;
	
	key_status &= ~KEY_STATUS_GHOST ;
	if(stan_key_len > 2)
	{
		for(r = 0; r<KEYBOARD_MATRIX_ROW_SIZE; r++)
		{
			if(row[r] >= 2)				//如果当前列存在两个以上按键按下
			{
				for(i = 0; i<KEYBOARD_MATRIX_COL_SIZE; i++)  
				{
					if(real_key_value[i]&(1<<r))  //判断行中当前列是否存在按键按下
					{
						if(cow[i] >= 2) //如果在行中存在两个以上案件按下
						{
							key_status |= KEY_STATUS_GHOST ;;
							return;
						}
					}
				}
			}			
		}
	}
}

void keyboard_data_analysis(void)
{
	u_int8 i = 0,j = 2;
    u_int8 numlock_sta;
    key_status &= ~KEY_STATUS_FN;
	
	for(i = 0; i < stan_key_len; i++)  //FN 键检测
	{
		if(KEY_FN == stan_key[i])
		{
			key_status |= KEY_STATUS_FN;
		}
	}
	//其他键检测
	for(i = 0; i < stan_key_len; i++)
	{
		m_key = 0xff;
	 	s_key = 0xff;
	 	c_key = 0xff;
	 	p_key = 0xff;
	 	key_null = 0xff;
		switch(stan_key[i])
		{
		//sepcal key
			case KEY_H7           : m_key = 31; break;   	//H7
			case KEY_MAIL         : m_key = 7;  break; 	//mail
 			case KEY_H8           : m_key = 32; break; 	//H8
			case KEY_POWER        : p_key = 0;  break;  	//POWER
			case KEY_H2           : m_key = 26; break;  	//H2
			case KEY_WWW_FAVORITE : m_key = 5;  break;  	//www favorite
 			case KEY_H9           : m_key = 33; break; 	//H9
			//case KEY_PAIR         :			 break; 	//bind
			case KEY_FN           :			 break;   	//FN
			case KEY_WWW_FORWARD  : m_key = 1;  break; 	//www forward
 			case KEY_H10          : m_key = 34; break; 	//H10
			case KEY_SLEEP	      : p_key = 1;  break;		//SLEEP	  
			case KEY_H1           : m_key = 25; break;		//H1  
 			case KEY_VOLUME_SUB   : m_key = 9;  break; 	//volume- 
 			case KEY_WWW_STOP     : m_key = 2;  break; 	//www stop
			case KEY_MY_COMPUTER  : m_key = 16; break;   	//my computer
 			case KEY_H11          : m_key = 35; break; 	//H11
			case KEY_H3           : m_key = 27; break; 	//H3
 			case KEY_PLAY_PAUSE   : m_key = 11; break; 	//play/pause
 			case KEY_VOLUME_ADD   : m_key = 10; break;		//volume+ 
 			case KEY_WWW_BACK     : m_key = 0;	 break; 	//www back
 			case KEY_STOP         : m_key = 12; break;		//stop
 			case KEY_H12          : m_key = 36; break;		//H12
 			case KEY_WAKE_UP      : p_key = 2;  break;		//WAKE UP
 			case KEY_NEXT_TRACK   : m_key = 14; break; 	//next track
 			case KEY_WWW_REFRESH  : m_key = 3;  break;		//www refresh
 			case KEY_CALCULATOR   : m_key = 17; break; 	//calculator
 			case KEY_H13	      : m_key = 37; break; 	//H13	
 			case KEY_H4           : m_key = 28; break; 	//H4
 			case KEY_PREV_TRACK   : m_key = 13; break; 	//prev track 
 			case KEY_MUTE         : m_key = 8;  break;  	//mute
 			case KEY_WEB_HOME     : m_key = 6;  break; 	//web home
 			case KEY_H14          : m_key = 38; break; 	//H14
			case KEY_H5           : m_key = 29; break; 	//H5
 			case KEY_H6           : m_key = 30; break; 	//H6
 			case KEY_MEDIA        : m_key = 15; break; 	//media
			case KEY_WWW_SEARCH   : m_key = 4;  break; 	//www search
 			case KEY_BACKLIGHT    :			    break; 	//BACKLIGHT

 		// ctrl key
			case KEY_LCTRL : 
			case KEY_LALT  : 
			case KEY_LSHFIT: 
			case KEY_LWIN  : 
			case KEY_RCTRL : 
			case KEY_RALT  : 
			case KEY_RSHIFT: 
			case KEY_RWIN  : c_key = (1<<(stan_key[i]-0XE0)); break;
		// end packege
			case END_NULL  : key_null = 0x00; break;

 			default :  			
				if(key_status & KEY_STATUS_FN)     //fn 键按下
				{
					switch(stan_key[i])
					{
                        /*
                        case KEY_F1 : m_key = f1_f12[0]; break;
						case KEY_F2 : m_key = f1_f12[1]; break;
						case KEY_F3 : m_key = f1_f12[2]; break;
						case KEY_F4 : m_key = f1_f12[3]; break;
						case KEY_F5 : m_key = f1_f12[4]; break;
						case KEY_F6 : m_key = f1_f12[6]; break;
						case KEY_F7 : m_key = f1_f12[7]; break;
						case KEY_F8 : m_key = f1_f12[5]; break;
						case KEY_F9 : m_key = f1_f12[8]; break;
						case KEY_F10 : m_key = f1_f12[11]; break;
						case KEY_F11 : m_key = f1_f12[9]; break;
						case KEY_F12 : m_key = f1_f12[10]; break;
                        case KEY_ESC : m_key = f1_f12[12]; break;
                        case KEY_DEL : m_key = f1_f12[13]; break;
                        */
                             
						case KEY_INS : s_key = KEY_INS; break;
						case KEY_UP_ARROW: s_key = KEY_UP_ARROW; break;
						case KEY_DOWN_ARROW: s_key = KEY_DOWN_ARROW; break;
						case KEY_LEFT_ARROW: s_key = KEY_LEFT_ARROW; break;
						case KEY_RIGHT_ARROW: s_key = KEY_RIGHT_ARROW; break;

						default:
							if(1)//system.keyboard_config.fn_num)  //带FN小键盘功能
							{
							    numlock_sta=key_status&KEY_STATUS_NUMLOCK;
								switch(stan_key[i])
								{
									case KEY_7 : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_7;break;
									case KEY_8 : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_8;break;
									case KEY_9 : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_9;break;
									case KEY_0 : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_DIV;break;
									case KEY_U : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_4;break;
									case KEY_I : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_5;break;
									case KEY_O :
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_6;break;
									case KEY_P : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_MUL;break;
									case KEY_J : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_1;break;
									case KEY_K : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_2;break;
									case KEY_L : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_3;break;
									case KEY_SEMICOLON: 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_SUB;break;
									case KEY_M : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_0;break;
									case KEY_DOT: 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_DOT;break;
									case KEY_QUESTION : 
										s_key = numlock_sta ? stan_key[i] : KEY_PAD_ADD;break;
									default:
										s_key = stan_key[i];break;
								}
							}									//不带FN小键盘功能
							else
							{
								s_key = stan_key[i];
							}
							
							break;
					}
				}
				else				// fn 键没按下
				{
					if(1)//system.keyboard_config.fn_num)  //带FN小键盘功能
					{
					    numlock_sta=key_status&KEY_STATUS_NUMLOCK;
						switch(stan_key[i])
						{	
                            //case KEY_F1 : m_key = f1_f12[0]; break;
                			//case KEY_F2 : m_key = f1_f12[1]; break;
                			case KEY_F3 : m_key = f1_f12[2]; break;
                			case KEY_F4 : m_key = f1_f12[3]; break;
                			case KEY_F5 : m_key = f1_f12[4]; break;
                			//case KEY_F6 : m_key = f1_f12[6]; break;
                			case KEY_F7 : m_key = f1_f12[8]; break;
                			case KEY_F8 : m_key = f1_f12[5]; break;
                			case KEY_F9 : m_key = f1_f12[7]; break;
                			case KEY_F10 : m_key = f1_f12[11]; break;
                			case KEY_F11 : m_key = f1_f12[9]; break;
                			case KEY_F12 : m_key = f1_f12[10]; break;
                            case KEY_ESC : m_key = f1_f12[12]; break;
                            case KEY_DEL : m_key = f1_f12[13]; break;


                        
							case KEY_7 :	
								s_key = numlock_sta ? KEY_PAD_7: stan_key[i];break;
							case KEY_8 :                       
								s_key = numlock_sta ? KEY_PAD_8: stan_key[i];break;
							case KEY_9 :                       
								s_key = numlock_sta ? KEY_PAD_9: stan_key[i];break;
							case KEY_0 :                       
								s_key = numlock_sta ? KEY_PAD_DIV: stan_key[i];break;
							case KEY_U :                       
								s_key = numlock_sta ? KEY_PAD_4: stan_key[i];break;
							case KEY_I :                       
								s_key = numlock_sta ? KEY_PAD_5: stan_key[i];break;
							case KEY_O :                       
								s_key = numlock_sta ? KEY_PAD_6: stan_key[i];break;
							case KEY_P :                       
								s_key = numlock_sta ? KEY_PAD_MUL: stan_key[i];break;
							case KEY_J :                       
								s_key = numlock_sta ? KEY_PAD_1: stan_key[i];break;
							case KEY_K :                       
								s_key = numlock_sta ? KEY_PAD_2: stan_key[i];break;
							case KEY_L :                       
								s_key = numlock_sta ? KEY_PAD_3: stan_key[i];break;
							case KEY_SEMICOLON:                
								s_key = numlock_sta ? KEY_PAD_SUB: stan_key[i];break;
							case KEY_M :                       
								s_key = numlock_sta ? KEY_PAD_0: stan_key[i];break;
							case KEY_DOT:                      
								s_key = numlock_sta ? KEY_PAD_DOT: stan_key[i];break;
							case KEY_QUESTION:                 
								s_key = numlock_sta ? KEY_PAD_ADD: stan_key[i];break;
							default:
								s_key = stan_key[i];break;
						}
                        
					}									//不带FN小键盘功能
					else
					{
						s_key = stan_key[i];
					}
				}	 			
 				break;
		}

		if(m_key != 0xff) //多媒体
		{			
			sys_media_key[0] = media_key[m_key][0]; 
			sys_media_key[1] = media_key[m_key][1];
            sys_media_key[2] = media_key[m_key][2]; 
			sys_media_key[3] = media_key[m_key][3];
			data_upload_status |= MEDIA_KEY_UPLOAD;	
            data_upload_status |= MEDIA_KEY_SEND;
						
		}		
		if(p_key != 0xff) //电源控制
		{
			sys_power_key[0] = power_key[p_key];  
			data_upload_status |= POWER_KEY_UPLOAD;
            data_upload_status |= POWER_KEY_SEND;
		}
		if(s_key != 0xff)	//普通按键
		{
			if(j < 8)
			{				
				sys_standard_key[j] = s_key; 
				j++;
			}
			data_upload_status |= STANDARD_KEY_UPLOAD;
            data_upload_status |= STANDARD_KEY_SEND;                
		}
		if(c_key != 0xff)  //控制按键
		{
			sys_standard_key[0] |= c_key; 
			data_upload_status |= STANDARD_KEY_UPLOAD;
            data_upload_status |= STANDARD_KEY_SEND;
		}
	}

	if(stan_key_len == 0x00)
	{
		if(data_upload_status & STANDARD_KEY_UPLOAD)  //普通按键释放
		{
			memset(sys_standard_key,0,8);
			data_upload_status &= ~STANDARD_KEY_UPLOAD;
			data_upload_status |= STANDARD_KEY_SEND;		
		}
		if(data_upload_status & MEDIA_KEY_UPLOAD)  //多媒体按键释放
		{
			data_upload_status &= ~MEDIA_KEY_UPLOAD;
            data_upload_status |= MEDIA_KEY_SEND;
			sys_media_key[0] = 0; 
			sys_media_key[1] = 0;
            sys_media_key[2] = 0; 
			sys_media_key[3] = 0;
		}
		
		if(data_upload_status & POWER_KEY_UPLOAD)  //电源控制按键释放
		{
			data_upload_status &= ~POWER_KEY_UPLOAD;
            data_upload_status |= POWER_KEY_SEND;
			sys_power_key[0] = 0x00;
		}
	}
							
	if((!(data_upload_status & STANDARD_KEY_SEND)) && (data_upload_status & STANDARD_KEY_UPLOAD))  //普通按键释放
	{
        memset(sys_standard_key,0,8);
        data_upload_status &= ~STANDARD_KEY_UPLOAD;
        data_upload_status |= STANDARD_KEY_SEND;
        
	}
	if((!(data_upload_status & MEDIA_KEY_SEND)) && (data_upload_status & MEDIA_KEY_UPLOAD))  //多媒体按键释放
	{
        data_upload_status &= ~MEDIA_KEY_UPLOAD;
        data_upload_status |= MEDIA_KEY_SEND;
        sys_media_key[0] = 0; 
		sys_media_key[1] = 0;
        sys_media_key[2] = 0; 
		sys_media_key[3] = 0;
	}
	if((!(data_upload_status & POWER_KEY_SEND)) && (data_upload_status & POWER_KEY_UPLOAD))  //电源控制按键释放
	{
        data_upload_status &= ~POWER_KEY_UPLOAD;
        data_upload_status |= POWER_KEY_SEND;
        sys_power_key[0] = 0x00;
	}
}

void Keyboard_Enter_PIN_Code(u_int8 key_code)
{
    if ((key_code == KEY_ENTER)||(key_code==KEY_PAD_ENTER))
    {
        DeviceHci_PinCodeReply(bt_adapter, pair_device_addr, bt_adapter->pin_context.pin_buffer, bt_adapter->pin_context.pin_length);
        bt_adapter->pin_context.pin_length=0;
        key_status|=KEY_STATUS_ENTER_PINCODE;
        pin_code_req = 0;
     
    }
    else if(key_code == KEY_BACKSPACE)
    {
        if(bt_adapter->pin_context.pin_length>0)
            bt_adapter->pin_context.pin_length--;
#ifdef PIN_CODE_DISPLAY
	    if(hid_interrupt_connected)
		{
	        bt_tx_buff[tx_buff_head][1]=0xff;
            bt_tx_buff[tx_buff_head][2]=1;
            tx_buff_len[tx_buff_head]=3;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
		}
#endif
    }
    else
    {
        if((key_code>=KEY_PAD_1)&&(key_code<=KEY_PAD_9))
        {
            bt_adapter->pin_context.pin_buffer[bt_adapter->pin_context.pin_length]=key_code-0X28;
            bt_adapter->pin_context.pin_length++;
#ifdef PIN_CODE_DISPLAY	
	    if(hid_interrupt_connected)
		{
	        bt_tx_buff[tx_buff_head][1]=0xff;
            bt_tx_buff[tx_buff_head][2]=0;
            tx_buff_len[tx_buff_head]=3;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
		}
#endif
        }
        else if(key_code==KEY_PAD_0)
        {
            bt_adapter->pin_context.pin_buffer[bt_adapter->pin_context.pin_length]=key_code-0X32;    
            bt_adapter->pin_context.pin_length++;
#ifdef PIN_CODE_DISPLAY
	    if(hid_interrupt_connected)
		{
	        bt_tx_buff[tx_buff_head][1]=0xff;
            bt_tx_buff[tx_buff_head][2]=0;
            tx_buff_len[tx_buff_head]=3;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
		}
#endif
        }
        else if((key_code>=KEY_1)&&(key_code<=KEY_9)) 
        {
            bt_adapter->pin_context.pin_buffer[bt_adapter->pin_context.pin_length] = key_code + 0x13;/*convert HID code to ASCII code*/
            bt_adapter->pin_context.pin_length++;
#ifdef PIN_CODE_DISPLAY
	    if(hid_interrupt_connected)
		{
	        bt_tx_buff[tx_buff_head][1]=0xff;
            bt_tx_buff[tx_buff_head][2]=0;
            tx_buff_len[tx_buff_head]=3;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
		}
#endif
        }
        else if(key_code == KEY_0)
        {
            bt_adapter->pin_context.pin_buffer[bt_adapter->pin_context.pin_length] = key_code + 0x09;
            bt_adapter->pin_context.pin_length++;
#ifdef PIN_CODE_DISPLAY
	    if(hid_interrupt_connected)
		{
	        bt_tx_buff[tx_buff_head][1]=0xff;
            bt_tx_buff[tx_buff_head][2]=0;
            tx_buff_len[tx_buff_head]=3;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
		}
#endif
        }
    }
}

uint8 cm_key_scan(void)
{
    uint8 i;
    //static uint8 send_cnt;
    static uint8 send_vol_cnt=0;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
    uint8  gpio_buff[13];
    memcpy(gpio_buff,config->gpio_cm_config,5);
    memcpy(&gpio_buff[5],config->gpio_vr_config,8);
    //gpio_buff[5]=config->power_on_off_io;
    if( 0==gpio_input(config->power_on_off_io>>4,config->power_on_off_io&0x0f)) 
    {
        sys_flag |= FLAG_KEY_ACTIVE;
        key_idle_count=0;
        enter_sleep_cont=0;
    }

    for(i=0;i<13;i++)
    {
        if( 0==gpio_input(gpio_buff[i]>>4,gpio_buff[i]&0x0f)) 
        {
            sys_flag |= FLAG_KEY_ACTIVE;
            key_idle_count=0;
            enter_sleep_cont=0;
            if( !(key_press_flag&(1<<i)) && (key_rel_flag&(1<<i)))
            { 
                bprintf("enter press=%x\n",i);
               
                if( sys_flag&FLAG_CONNECTED)
                {
                   /* 
                    if(sys_flag&FLAG_HOST_IOS)
                    {    
                        memcpy(&bt_tx_buff[tx_buff_head][0],&cm_key_press[0][0],10);
                        tx_buff_len[tx_buff_head]=6;
                        bprintf("vol+\n");
                    }
                    else
                    {    
                        memcpy(&bt_tx_buff[tx_buff_head][0],&cm_key_press[1][0],10);
                        tx_buff_len[tx_buff_head]=10;
                        bprintf("enter\n");
                    }
					*/
                    
                    memcpy(&bt_tx_buff[tx_buff_head][0],&cm_key_press[i][0],10);
                    if(i==0)
                        tx_buff_len[tx_buff_head]=6;
                    else
                        tx_buff_len[tx_buff_head]=10;

                    if(i==2)
                        mix_key_flag=1;    
                    
                    tx_buff_head++;
                    tx_buff_count++;
                    tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
                    
                    
                }
                //else if((sys_flag&FLAG_BT_INPAIR)&& i<5)
                //sys_flag|=FLAG_AUTO_CONNECT_START;   

                key_press_flag |= (1<<i);
                key_rel_flag   &= ~(1<<i);
                
            }
        }
        else if( (!(key_rel_flag&(1<<i)))&&(key_press_flag&(1<<i)))
        {
            bprintf("enter releas\n");
            if(sys_flag&FLAG_CONNECTED)
            {
                memcpy(&bt_tx_buff[tx_buff_head][0],&cm_key_releas[i][0],10);
                if(i==0)
                    tx_buff_len[tx_buff_head]=6;
                else
                    tx_buff_len[tx_buff_head]=10;
                tx_buff_head++;
                tx_buff_count++;
                tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
            }
            key_rel_flag |= (1<<i);
            key_press_flag   &= ~(1<<i);
        }
    }

    if(mix_key_flag)
    {
        send_vol_cnt++;
        if(send_vol_cnt==10)
        {
            bprintf("press vol\n");
            memcpy(&bt_tx_buff[tx_buff_head][0],&cm_key_press[0][0],10);
            tx_buff_len[tx_buff_head]=6;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
        }
        else if(send_vol_cnt==15)
        {
            bprintf("releas vol\n");
            memcpy(&bt_tx_buff[tx_buff_head][0],&cm_key_releas[0][0],10);
            tx_buff_len[tx_buff_head]=6;
            tx_buff_head++;
            tx_buff_count++;
            tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
            send_vol_cnt=0;
            mix_key_flag=0;
        }
    }
}


void keyboard_mouse_process(void)
{   
    static uint8 count = 0;
	ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
#ifdef _KEYBOARD__
	if(config->gpio_cm_config_enable)
    	cm_key_scan();

#else
#if 0//test

    if(sys_flag&FLAG_CONNECTED)
    {
        sys_flag |= FLAG_KEY_ACTIVE;
        key_idle_count=0;
        enter_sleep_cont=0;
        
    	count++;
    	if(count>=100)
    	{
    		count = 0;
    		if ((mouse_val.sensor_x == 0) && (mouse_val.sensor_y == 2))
    		{mouse_val.sensor_x=2; mouse_val.sensor_y = 0;}
    		else if ((mouse_val.sensor_x == 2) && (mouse_val.sensor_y == 0))
    		{mouse_val.sensor_x = 0; mouse_val.sensor_y = -2;}
    		else if ((mouse_val.sensor_x == 0) && (mouse_val.sensor_y== -2))
    		{mouse_val.sensor_x = -2; mouse_val.sensor_y = 0;}
    		else if ((mouse_val.sensor_x == -2) && (mouse_val.sensor_y == 0))
    		{mouse_val.sensor_x = 0; mouse_val.sensor_y = 2;}

            
        }

        mouse_data[3]=mouse_val.sensor_x;
        
        mouse_data[4]=mouse_val.sensor_y;
        memcpy(&bt_tx_buff[tx_buff_head][0],&mouse_data[0],6);
       
        tx_buff_len[tx_buff_head]=6;

        tx_buff_head++;
        tx_buff_count++;
        tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
    }
    else
    {
        mouse_val.sensor_x=0; 
        mouse_val.sensor_y = 2;
    }
#else
    
    if(sys_flag&FLAG_CONNECTED)
    {
        sys_flag |= FLAG_KEY_ACTIVE;
        key_idle_count=0;
        enter_sleep_cont=0;
        if(!(sys_flag&FLAG_HOST_IOS))
        {
            ADC_Set_Chn(config->adc_x);
            mouse_val.sensor_x=ADC_Get_Value();
            mouse_val.sensor_x=xyz_axis_process(ADC_Get_Value());

            ADC_Set_Chn(config->adc_y);
            mouse_val.sensor_y=ADC_Get_Value();
            mouse_val.sensor_y=xyz_axis_process(ADC_Get_Value());//xy轴的值需要做处理
     

            mouse_data[3]=(char) (mouse_val.sensor_x-0x80);
           //bprintf("x=%x\n",mouse_data[3]);
            mouse_data[4]=(char) (mouse_val.sensor_y-0x80);
           //bprintf("y=%x\n",mouse_data[4]); 

           if( (mouse_data[3]!=0) || (mouse_data[4]!=0))
           {
                memcpy(&bt_tx_buff[tx_buff_head][0],&mouse_data[0],6);
               
                tx_buff_len[tx_buff_head]=6;

                tx_buff_head++;
                tx_buff_count++;
                tx_buff_head=tx_buff_head%SEND_BUFFER_CNT;
            }
        }
        if(config->gpio_cm_config_enable)
    	    cm_key_scan();
    }
 #endif
 #endif
}
uint8 xyz_axis_process(uint8 joystick_xyz)
{
    if(joystick_xyz>0x78&& joystick_xyz<0x88)
    {
        joystick_xyz=0x80;
    }
    else if(joystick_xyz<0x10)
    {
        joystick_xyz=0;
    }
    else if(joystick_xyz<=0x78)
    {
        joystick_xyz=(0x80*(joystick_xyz-0x10))/(float)0x68;
    }
    else if(joystick_xyz>=0xf0)
    {
        joystick_xyz=0xff;
    }
    else
    {
        joystick_xyz=0xff-(0x80*(0xf0-joystick_xyz))/(float)0x68;
    }
    return joystick_xyz;
}

void power_on_off(uint8 index,uint8 power_off_time)
{
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
    static uint16 power_on_off_cnt=0;
    static uint8  enter_sleep_flag=0;
    
    if(index==POWER_ON)
    {
        if(0==gpio_input(config->power_on_off_io>>4,config->power_on_off_io&0x0f))
        {
            power_on_off_cnt++;
        }
        else
        {
            power_on_off_cnt=0;
            sys_flag|=FLAG_ENTER_SLEEP;
            //GPIO_output(config->bt_led_io>>4,config->bt_led_io&0x0f,0);
            Enter_Deep_sleep();
        }

        if( power_on_off_cnt>=(uint16)(100*(config->power_on_off_time)))
        {
            sys_flag|=FLAG_AUTO_CONNECT_START;
            sys_flag &= ~FLAG_POWER_ON;
            power_on_off_cnt=0;
            enter_sleep_flag|=0x01;
            GPIO_output(config->bt_led_io>>4,config->bt_led_io&0x0f,1);
        }
        
       
    }
    else if(index==POWER_OFF)
    {
        if(0==gpio_input(config->power_on_off_io>>4,config->power_on_off_io&0x0f) ) 
        {
            if( !(enter_sleep_flag&0x01) && 
                power_on_off_cnt<=(uint16)(power_off_time*(config->power_on_off_time)))
                power_on_off_cnt++;
            if( !(enter_sleep_flag&0x02) &&
                power_on_off_cnt>=(uint16)(power_off_time*(config->power_on_off_time)))
            {
                enter_sleep_flag|=0x02;  
                led_time_cnt=0;
            }
        }
        else
        {
            power_on_off_cnt=0;
            enter_sleep_flag &= 0xfe;
            sys_flag &= ~FLAG_ENTER_SLEEP_CNT_END;
        }
        
        if( enter_sleep_flag&0x02 )
        {   
            if(gpio_input(config->power_on_off_io>>4,config->power_on_off_io&0x0f))
            {
                power_on_off_cnt=0;
                enter_sleep_flag=0;
                sys_flag|=FLAG_ENTER_SLEEP;
                Enter_Deep_sleep();
            }
            sys_flag|=FLAG_ENTER_SLEEP_CNT_END;
            
           // GPIO_output(config->bt_led_io>>4,config->bt_led_io&0x0f,0);
           // GPIO_output(config->low_power_led_io>>4,config->low_power_led_io&0x0f,0);
            
        }
    }
}
void led_action(uint16 led_on_time,uint16 led_off_time,uint8 initial_led)
{
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
    static uint8 on_off_flag=1;
   

    if((led_time_cnt==led_on_time)&& (led_off_time!=0) && (on_off_flag==initial_led))
    {
        GPIO_output(config->bt_led_io>>4,config->bt_led_io&0x0f,0);  
        on_off_flag=0;
        led_time_cnt=0;
    }
    if((led_time_cnt==led_off_time) && (led_on_time!=0)&& (on_off_flag!=initial_led))
    {
        GPIO_output(config->bt_led_io>>4,config->bt_led_io&0x0f,1);
        led_time_cnt=0;
        on_off_flag=1;      
    } 
    led_time_cnt++;
    
}
 

void low_power_led_action( uint16 led_on_time,uint16 led_off_time )
{
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;

    if(sys_flag&FLAG_LOW_POWER)
    {
        if(low_power_led_time_cnt==led_on_time)
            GPIO_output(config->low_power_led_io>>4,config->low_power_led_io&0x0f,0);
        else if(low_power_led_time_cnt>=(led_on_time+led_off_time))
        {
            GPIO_output(config->low_power_led_io>>4,config->low_power_led_io&0x0f,1);
            low_power_led_time_cnt=0;
        }
    }
    else
        GPIO_output(config->low_power_led_io>>4,config->low_power_led_io&0x0f,0);
    low_power_led_time_cnt++;
}


void low_power_dect()
{
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
    static uint8 dect_cnt=0;
    if(config->config_flag&FLAG_CONFIG_ADC_ENBALE)
    {
        if(ADC_Get_Value()<config->lowpower_threshold )
        {
            if(dect_cnt<=0x20)
                dect_cnt++;
        }
        else if(dect_cnt)
            dect_cnt--;

        if((dect_cnt==0x20)&&!(sys_flag & FLAG_LOW_POWER))
        {   
            sys_flag |= FLAG_LOW_POWER;
            low_power_led_time_cnt=0;
        }
        else if(!dect_cnt)
            sys_flag &= ~FLAG_LOW_POWER;
    }
}



