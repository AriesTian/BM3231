#include"config.h"
struct_beken_config g_beken_initial_config;
void Initial_config(void)
{
    g_beken_initial_config.g_enable_32k_sleep=1;
    g_beken_initial_config.g_enable_host_wakeup=1;
    g_beken_initial_config.g_disable_CPU_Halt_sleep=0;
    g_beken_initial_config.g_disable_Analog_Powerdown=0;
    g_beken_initial_config.g_Disable_ACL_active_check_when_Sleep=0;
    g_beken_initial_config.g_Disable_Sniffer_when_other_link_active=0;
    g_beken_initial_config.g_Disable_ACL_Accept_When_ACL_exist=1;   
    g_beken_initial_config.g_lm_config_sleep_in_standby_monitor_period=0x7ff; //0x7FFF /* 20 sec */-->0x7ff= 1.25s
    g_beken_initial_config.g_lm_config_awake_in_standby_monitor_period=0x04e;// //0x0640   -->0x4e=47ms
    g_beken_initial_config.g_lm_config_awake_keep_when_UART_Wakeup_period=0x3fff; //0x7FFF /* 20 sec */-->0x7ff= 1.25s
    g_beken_initial_config.g_max_acl_buff_number=0;//    
    g_beken_initial_config.g_Enable_TX_Power_Control=0;
    g_beken_initial_config.g_Disable_Inquiry_When_ACL_exist=1;  
    g_beken_initial_config.g_write_addr_for_rda_enable=1;
    g_beken_initial_config.g_TCI_PATCH_102_BYTE_Number=5;
    g_beken_initial_config.g_TCI_PATCH_102_BYTE_Value=0x40;
    g_beken_initial_config.g_enable_ViMicro_encryption_issue=0;
    g_beken_initial_config.Disable_Hardware_Error_Log=1;
    g_beken_initial_config.Delay_Ptt_Set=1;
    g_beken_initial_config.g_in_chip_host = 1;
    g_beken_initial_config.g_enable_CPU_speed_for_ecc = 0;
}




