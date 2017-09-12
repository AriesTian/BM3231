#ifndef __DEVICEBTJ_HEADER_DOT_H_
#define __DEVICEBTJ_HEADER_DOT_H_
#include "DeviceBtj.h"
#if defined(WIN32)
typedef unsigned char              BITBYTE;
typedef unsigned short             BITWORD;
#elif defined(C30)
typedef unsigned char              BITBYTE;
typedef unsigned short             BITWORD;
#else
typedef unsigned                   BITBYTE;
typedef unsigned                   BITWORD;
#endif

#define FLAG_L2CAP_SDP_CONNECT                  0X00000001
#define FLAG_POWER_ON                           0X00000002
#define FLAG_HOST_IOS                           0X00000004
#define FLAG_BT_INPAIRING                       0X00000008
#define FLAG_HOST_IOS_INIT                      0X00000010
#define FLAG_BT_INPAIR                          0X00000020
#define FLAG_BT_SET_LINKPOLICY_IND              0X00000040
#define FLAG_BT_DISABLE_SCAN                    0X00000080
#define FLAG_AUTO_CONNECT_START                 0X00000100
#define FLAG_AUTO_CONNECT_BUSY                  0X00000200
#define FLAG_CONNECTED                          0X00000400 
#define FLAG_AUTHENTICATION_REQ                 0X00000800 
#define FLAG_BT_IN_SNIFF                        0X00001000
#define FLAG_BT_SET_SNIFF                       0X00002000
#define FLAG_ENTER_SLEEP                        0X00004000
#define FLAG_ENTER_SLEEP_CNT_END                0X00008000
#define FLAG_KEY_ACTIVE                         0X00010000
#define FLAG_LOW_POWER                          0X00020000
#define FLAG_AUTO_CONNECT_TEST_DONGLE_BUSY      0X00040000   
#define FLAG_ADC_BUZY                           0X00080000 
#define FLAG_SAVE_LINKKEY                       0X00100000
#define FLAG_ROLE_SWITCH                        0X00200000
#define FLAG_SPP_CONNECTED                      0X00400000





#define FLAG_CONFIG_SSP_ENBALE                  0X01    
#define FLAG_CONFIG_UART_OPEN_ENBALE            0X02
#define FLAG_CONFIG_IO_PAIR_ENBALE              0X04
#define FLAG_CONFIG_POWER_ON_OFF_ENBALE         0X08
#define FLAG_CONFIG_ADC_ENBALE                  0X10
#define FLAG_CONFIG_ENTER_SINGLE_CARRY          0X20
#define FLAG_CONFIG_ENTER_DUT_TEST              0X40
#define FLAG_CONFIG_JOYSTICK_ENABLE             0X80



#define BTFIELD(x)                 (((0x01 << x)))
#define DEVICEMAX_HCI_CONTEXT      (0x01)
#define DEVICEMAX_L2C_CONTEXT      (0x05)
#define DEVICELEN_LMP_FEATURE      (0x08)
#define DEVICELEN_CMD_FEATURE      (0x08)
#define DEVICELEN_HCI_MACHINE_UART (0x00ff)
#define DEVICELEN_HCI_PACKETS_POOL (0x0250)
#define DEVICELEN_APP_PACKETS_POOL (0x0080)
#define btfree(x)                  {free(x); x=BTNULL;}
#define btsimplemalloc(length)     (BTPBYTE)malloc(sizeof(BTBYTE)*length)
#define btstructmalloc(bttype)     (bttype *)malloc(sizeof(BTBYTE)*sizeof(bttype))
#define btrealloc(ptr, length)     (BTPBYTE)realloc(ptr, sizeof(BTBYTE)*length)
#define btmemzero(ptr, length)     (memset(ptr, 0x00, sizeof(BTBYTE)*length))
#define btuse(x)                   (x=x)
#define BAUDRATE_W         0X01
#define BT_NAME_W          0X02
#define BT_PINCODE_W       0X04
#define BT_ADDR_W          0X08



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "DeviceBtj_Stack_Hci_All.h"
#include "DeviceBtj_Stack_Hci_Cmd.h"
#include "DeviceBtj_Stack_Hci_Evt.h"
#include "DeviceBtj_Stack_L2c.h"
#include "DeviceBtj_Stack_Rfc.h"
#include "DeviceBtj_Stack_Hid.h"
#include "DeviceBtj_Stack_Sdp.h"
#include "DeviceBtj_Stack_Sdpdb.h"
#include "DeviceBtj_Stack_Sdpdb_Parser.h"
#include "DeviceBtj_Utils.h"
#include "DeviceBtj_Utils_Key.h"
#include "DeviceBtj_Fcs.h"
#include "DeviceBtj_Adapter.h"
#include "DeviceBtj_Debuger.h"
#include "DeviceBtj_Endians.h"
#include "DeviceBtj_Service.h"
#include "DeviceBtj_Handler.h"

#ifdef WIN32
#include <windows.h>
#include "DeviceEvt.h"
#include "DeviceLib_Com.h"
#include "DeviceLib_Usb.h"
#endif
#endif /* __DEVICEBTJ_HEADER_DOT_H_ */
