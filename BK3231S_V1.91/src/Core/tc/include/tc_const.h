#ifndef _PARTHUS_TC_CONST_
#define _PARTHUS_TC_CONST_

/**********************************************************************
 *
 * MODULE NAME:    tc_const.h
 * PROJECT:       BlueStream
 * DESCRIPTION:   Constants used by the TCI (Command Opcodes etc.)
 * MAINTAINER:     Daire McNamara <Daire McNamara@sslinc.com>
 * CREATION DATE:  13 April 2000
 *
 * SOURCE CONTROL: $Id: tc_const.h,v 1.60 2010/04/30 16:58:37 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *
 **********************************************************************/

/*
 * TCI SYSTEM TEST OP CODES - OPCODE GROUP SUBFIELD = 0x3F
 */
#define ST_G ( 0x3F << 10)

#define TCI_ACTIVATE_REMOTE_DUT                         0x0002 + ST_G
#define TCI_TEST_CONTROL                                0x0003 + ST_G
#define TCI_INCREASE_REMOTE_POWER                       0x0004 + ST_G
#define TCI_WRITE_LOCAL_HOP_FREQUENCIES                 0x0005 + ST_G
#define TCI_READ_LOCAL_HARDWARE_VERSION                 0x0006 + ST_G
#define TCI_DECREASE_REMOTE_POWER                       0x0007 + ST_G
#define TCI_INCREASE_LOCAL_VOLUME                       0x0008 + ST_G
#define TCI_DECREASE_LOCAL_VOLUME                       0x0009 + ST_G
#define TCI_WRITE_LOCAL_NATIVE_CLOCK                    0x000A + ST_G
#define TCI_READ_LOCAL_NATIVE_CLOCK                     0x000B + ST_G
#define TCI_READ_LOCAL_HOST_CONTROLLER_RELATIVE_MIPS    0x000C + ST_G
#define TCI_TYPE_APPROVAL_TEST_CONTROL                  0x000D + ST_G
#define TCI_SET_LOCAL_FAILED_ATTEMPTS_COUNTER           0x000E + ST_G
#define TCI_CLEAR_LOCAL_FAILED_ATTEMPTS_COUNTER         0x000F + ST_G
#define TCI_READ_LOCAL_DEFAULT_PACKET_TYPE              0x0010 + ST_G
#define TCI_WRITE_LOCAL_DEFAULT_PACKET_TYPE             0x0011 + ST_G
#define TCI_WRITE_LOCAL_SYNCWORD                        0x0012 + ST_G
#define TCI_WRITE_LOCAL_HOPPING_MODE                    0x0013 + ST_G
#define TCI_READ_LOCAL_HOPPING_MODE                     0x0014 + ST_G
#define TCI_WRITE_LOCAL_WHITENING_ENABLE                0x0015 + ST_G
#define TCI_READ_LOCAL_WHITENING_ENABLE                 0x0016 + ST_G
#define TCI_WRITE_LOCAL_RADIO_POWER                     0x0017 + ST_G
#define TCI_READ_LOCAL_RADIO_POWER                      0x0018 + ST_G
#define TCI_SET_LOCAL_NEXT_AVAILABLE_AM_ADDR            0x0019 + ST_G
#define TCI_SET_LOCAL_BD_ADDR                           0x001A + ST_G
#define TCI_WRITE_LOCAL_LINK_KEY_TYPE                   0x001B + ST_G
#define TCI_READ_LOCAL_LINK_KEY_TYPE                    0x001C + ST_G
#define TCI_READ_LOCAL_EXTENDED_FEATURES                0x001D + ST_G
#define TCI_WRITE_LOCAL_FEATURES                        0x001E + ST_G
#define TCI_WRITE_LOCAL_EXTENDED_FEATURES               0x001F + ST_G
#define TCI_READ_LOCAL_TIMING_INFORMATION               0x002A + ST_G
#define TCI_WRITE_LOCAL_TIMING_INFORMATION              0x002B + ST_G
#define TCI_READ_REMOTE_TIMING_INFORMATION              0x002C + ST_G
#define TCI_WRITE_LOCAL_HARDWARE_REGISTER               0x002D + ST_G
#define TCI_RESET_LOCAL_BASEBAND_MONITORS               0x002E + ST_G
#define TCI_UPDATE_MANUFACTURING_INFORMATION            0x002F + ST_G
#define TCI_WRITE_LOCAL_RADIO_REGISTER                  0x0030 + ST_G
#define TCI_READ_LOCAL_RADIO_REGISTER                   0x0031 + ST_G
#define TCI_CHANGE_RADIO_MODULATION                     0x0032 + ST_G
#define TCI_READ_RADIO_MODULATION                       0x0033 + ST_G
#define TCI_SET_HCIT_UART_BAUD_RATE                     0x0034 + ST_G
#define TCI_LOCAL_AREA_DOWNLOAD                         0x0035 + ST_G
#define TCI_WRITE_HOST_SPECIFIC_PARAMETERS              0x0036 + ST_G
#define TCI_READ_LOCAL_HARDWARE_AREA                    0x0037 + ST_G
#define TCI_SET_SYSTEM_HARDWARE_CONFIGURATION           0x0038 + ST_G
#define TCI_SEND_ENCRYPTION_KEY_SIZE_MASK_REQ           0x0039 + ST_G
#define TCI_RESET_LOCAL_PUMP_MONITORS                   0x003A + ST_G
#define TCI_READ_LOCAL_PUMP_MONITORS                    0x003B + ST_G
#define TCI_WRITE_LOCAL_ENCRYPTION_KEY_LENGTH           0x003C + ST_G
#define TCI_READ_LOCAL_ENCRYPTION_KEY_LENGTH            0x003D + ST_G
#define TCI_READ_LOCAL_HOP_FREQUENCIES                  0x003E + ST_G
#define TCI_READ_LOCAL_BASEBAND_MONITORS                0x003F + ST_G
#define TCI_SET_DISABLE_LOW_POWER_MODE                  0x0040 + ST_G
#define TCI_SET_ENABLE_LOW_POWER_MODE                   0x0041 + ST_G
#define TCI_READ_R2P_MIN_SEARCH_WINDOW                  0x0042 + ST_G
#define TCI_WRITE_R2P_MIN_SEARCH_WINDOW                 0x0043 + ST_G
#define TCI_SET_DISABLE_SCO_VIA_HCI                     0x0044 + ST_G // Control via SCO_Repeater menu on HC_Data_tester
#define TCI_SET_ENABLE_SCO_VIA_HCI                      0x0045 + ST_G // Control via SCO_Repeater menu on HC_Data_tester

//#define TCI_SET_DISABLE_EPC                             0x0044 + ST_G  // Control via SCO_Repeater menu on HC_Data_tester
//#define TCI_SET_ENABLE_EPC                              0x0045 + ST_G  // Control via SCO_Repeater menu on HC_Data_tester

#define TCI_WRITE_ESCO_RETRANSMISSION_MODE              0x0046 + ST_G
#define TCI_READ_ESCO_RETRANSMISSION_MODE               0x0047 + ST_G

#define TCI_VCI_CLK_OVERRIDE                            0x004E + ST_G
#define TCI_SET_BROADCAST_SCAN_WINDOW                   0x004F + ST_G
#define TCI_WRITE_PARK_PARAMETERS                       0x0050 + ST_G
#define TCI_READ_UNUSED_STACK_SPACE                     0x0051 + ST_G

#if (HW_RADIO==HWradio_BU9469EKN)
/****************************************
* RF 32bit Register in Shoga_Radio_2006
*****************************************/
#define TCI_WRITE_LOCAL_RADIO_REGISTER32                0x0052 + ST_G
#define TCI_READ_LOCAL_RADIO_REGISTER32                 0x0053 + ST_G
#endif

#define TCI_WRITE_AFH_CONTROL                           0x0060 + ST_G

#define TCI_READ_RAW_RSSI                               0x0061 + ST_G
#define TCI_READ_BER                                    0x0062 + ST_G
#define TCI_READ_PER                                    0x0063 + ST_G
#define TCI_READ_RAW_RSSI_PER_BER                       0x0064 + ST_G

#define TCI_FORCE_SYSTEM_HALT                           0x0065 + ST_G


#define TCI_WRITE_SECURITY_TIMEOUTS                     0x0066 + ST_G


#if(PRH_BS_CFG_SYS_BROADCAST_NULL_IN_INQ_PAGE_SUPPORTED==1)
#define TCI_SET_EMERGENCY_POLL_INTERVAL					0x0069 + ST_G
#endif

#define TCI_WRITE_FEATURES                              0x0067 + ST_G


#define TCI_MTK_TEST_COMMAND_fc_d0                              0x00d0 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_c4                              0x00c4 + ST_G


#ifdef SUPPORT_MTK_SPECAIL_COMMAND//support MTK command

#define TCI_MTK_TEST_COMMAND_fc_d1                              0x00d1 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_df                              0x00df + ST_G

#define TCI_MTK_TEST_COMMAND_fc_c4                              0x00c4 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_1a                              0x001a + ST_G
#define TCI_MTK_TEST_COMMAND_fc_1e                              0x001e + ST_G

#define TCI_MTK_TEST_COMMAND_fc_56                              0x0056 + ST_G

#define TCI_MTK_TEST_COMMAND_fc_79                              0x0079 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_7f                              0x007f + ST_G
#define TCI_MTK_TEST_COMMAND_fc_1b                              0x001b + ST_G
#define TCI_MTK_TEST_COMMAND_fc_72                              0x0072 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_74                              0x0074 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_75                              0x0075 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_76                              0x0076 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_77                              0x0077 + ST_G
#define TCI_MTK_TEST_COMMAND_fc_7a                              0x007a + ST_G
#define TCI_MTK_TEST_COMMAND_fc_7b                              0x007b + ST_G
#define TCI_MTK_TEST_COMMAND_fc_7c                              0x007c + ST_G
#define TCI_MTK_TEST_COMMAND_fc_7d                              0x007d + ST_G

#endif

#define TCI_BEKEN_HARDWARE_TEST                                 0x00e0 + ST_G

#define TCI_PATCH_102                                           0x0102 + ST_G
enum
{
    BEKEN_UART_LINK_CHECK=0x00,
    BEKEN_UART_REGISTER_WRITE_CMD=0x01,
    BEKEN_UART_REGISTER_CONINUOUSE_WRITE_CMD=2,
    BEKEN_UART_REGISTER_READ_CMD=3,
    BEKEN_UART_BT_START_CMD=4,
    BEKEN_UART_BT_STOP_CMD=5,
    BEKEN_UART_PATCH_CMD=6,
    BEKEN_UART_SET_PLATFORM_TYPE=7,
    BEKEN_UART_SET_UART_BAUDRATE=8,

    BEKEN_DISABLE_AFC=9,
    BEKEN_CONFIG_PCM=10,
    BEKEN_SET_UART_LOW_LEVEL_WAKEUP_VALUE=11,
    
    BEKEN_ENABLE_32K_SLEEP=12,
    BEKEN_ENABLE_HOST_WAKEUP=13,
    BEKEN_ENABLE_BT_WAKEUP=14,
    BEKEN_ENABLE_UART_LOW_LEVEL_WAKEUP=15,
    
    BEKEN_DISABLE_CPU_HALT_SLEEP=16,

    BEKEN_DISABLE_ANALOG_POWERDOWN=17,

    BEKEN_ENABLE_UART_TX_DELAY=18,

    BEKEN_MAX_ACL_BUFF_SIZE=19,

    BEKEN_ACL_ACTIVE_CHECK_WHEN_SLEEP=20,

    BEKEN_DISABLE_SNIFFER_WHEN_OTHER_LINK_ACTIVE=21,

    BEKEN_LM_CONFIG_SLEEP_IN_STANDBY_MONITOR_PERIOD=22,

    BEKEN_LM_CONFIG_AWAKE_IN_STANDBY_MONITOR_PERIOD=23,

    BEKEN_DISABLE_ACL_ACCEPT_WHEN_ACL_EXIST=24,

    BEKEN_ENABLE_TX_POWER_CONTROL=25,
    
    BEKEN_LM_CONFIG_AWAKE_KEEP_WHEN_UART_WAKEUP=26,

    BEKEN_DISABLE_INQUIRY_WHEN_ACL_EXIST=27,

    BEKEN_DELAY_BETWEEN_EVERY_PACKET_UART_TX=28,

    BEKEN_SCATTER_LENGTH_FOR_PACKET_UART_TX=29,


    BEKEN_ENABLE_ACK_SEQ_CHECK=30,
    BEKEN_RESET_ACK_SEQ_AFTER_TX=31,

    BEKEN_GET_FW_VERSION=32,

    BEKEN_UART_CLOCK_CONFIG_BEFORE_TX_LOW_LEVEL=33,
    BEKEN_UART_BAUD_RATE_FOR_TX_LOW_LEVEL=34,
    BEKEN_DELAY1_AFTER_TX_LOW_LEVEL=35,
    BEKEN_DELAY2_AFTER_TX_LOW_LEVEL=36,
    
    BEKEN_DELAY_FOR_OBEX_PACKET_FINAL=37,

    BEKEN_DISABLE_SPREADTRUM_HCI=38,
   
    BEKEN_MAX_ACL_BUFF_NUMBER=39,

    BEKEN_WRITE_ADDR_FOR_RDA_ENABLE=40,
    BEKEN_PATCH_102_BYTE_NUM=41,
    BEKEN_PATCH_102_BYTE_VALUE=42,

    BEKEN_ENABLE_MASTER_AFC=44,//0x2c

    BEKEN_ENABLE_VIMicro_ENCRYPTION_ISSUE=45,//0x2d

    BEKEN_DISALBE_HAREWARE_ERROR_LOG=51,//0x33

    BEKEN_DELAY_PTT_SET=59,
    
    BEKEN_UART_MODULE_TEST_CMD=0x80,
    BEKEN_UART_MODULE_SUB_TEST_CMD,
    BEKEN_UART_MODULE_GENERAL_CMD

};

#endif
