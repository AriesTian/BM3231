#ifndef _PARTHUS_HW_RADIO_
#define _PARTHUS_HW_RADIO_

/******************************************************************************
 * MODULE NAME:    hw_radio.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Generic RF/DSP hardware abstraction layer
 * MAINTAINER:     Ivan Griffin
 * DATE:           20 March 2000
 *
 * SOURCE CONTROL: $Id: hw_radio.h,v 1.64 2010/04/29 10:43:53 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 ******************************************************************************/

#include "sys_config.h"
#include "lc_types.h"
#include "hw_macro_defs.h"
#include "include.h"

/***************************************************************************
 *
 * HWradio Typedefs
 *
 ***************************************************************************/
typedef enum
{
    HWradio_RXm_NORMAL = 0,
    HWradio_RXm_FULL_WIN = 1
} t_HWradio_Rx_Mode;

typedef enum
{
    Power_Down_Mode_Active,
    Power_Down_Mode_Not_Active
} t_HWradio_Driver_Status;

typedef u_int8 t_radio_freq_mask;

#define RADIO_FREQ_MASK(X)    ((t_radio_freq_mask)(1 << (X)))

#define TX_START_FREQ    RADIO_FREQ_MASK(TX_START)
#define TX_MID_FREQ        RADIO_FREQ_MASK(TX_MID)
#define RX_START_FREQ    RADIO_FREQ_MASK(RX_START)
#define RX_MID_FREQ        RADIO_FREQ_MASK(RX_MID)

typedef enum {
    RADIO_MODE_STANDBY,
    RADIO_MODE_FULL_RX,
    RADIO_MODE_MASTER_DOUBLE_WIN,
    RADIO_MODE_TX_RX,
    RADIO_MODE_SLAVE_PAGE_RESP
}t_RadioMode;

typedef enum
{
    HWradio_SERV_RX = 0,
    HWradio_SERV_DISABLE_RX ,
    HWradio_SERV_TX,
    HWradio_SERV_DISABLE_TX ,
    HWradio_SERV_RX_TX
}t_RadioServiceType;

        
#define HW_RADIO_MAX_CHANNEL 80
#define HW_RADIO_SETTING_INVALID (HW_RADIO_MAX_CHANNEL+1)

/***************************************************************************
 *
 * HWradio Interface Functions
 *
 ***************************************************************************/
 
void HWradio_Initialise(void);
void HWradio_Reset(void);
void HWradio_Set_Syncword(t_syncword const);

void FAST_CALL HWradio_SetRadioMode(t_RadioMode in_RadioMode);
t_RadioMode FAST_CALL HWradio_GetRadioMode(void);
void FAST_CALL HWradio_SetFrequency(t_freq *io_Channels, t_radio_freq_mask freq_mask);
void HWradio_Rx_PacketExtend(void);
void HWradio_Tx_PacketExtend(void);
void HWradio_TxComplete(void);
void HWradio_RxComplete(void);

void HWradio_Setup_Radio_For_Next_Half_Slot(t_frame_pos const frame_posn);

void FAST_CALL HWradio_Set_Tx_Power_Level(u_int8 power_level);
u_int8 HWradio_Get_Tx_Power_Level(void);

#if (BUILD_TYPE!=UNIT_TEST_BUILD)
void HWradio_Set_Rx_Gain(u_int32 x);
#endif
u_int32 HWradio_Get_Radio_Register(u_int32 reg); 
void HWradio_Set_Radio_Register(u_int32 reg, u_int32 val);

s_int8 HWradio_Read_RSSI(void); /* N == RSSI Return, -128 <= N <= 127 */

void HWradio_Update_Rx_Gain_If_Reqd(s_int8 rssi);
boolean FAST_CALL HWradio_Update_Internal_RSSI_Cache(boolean late_read_opportunity);

t_HWradio_Driver_Status HWradio_Get_Radio_Driver_Status(void);
void HWradio_Enter_Low_Power_Mode_Request(void);
void HWradio_Exit_Low_Power_Mode_Request(void);

#if (BUILD_TYPE==UNIT_TEST_BUILD)
u_int8 HWradio_Get_Last_Tx_Power_Level(void);
#endif

void HWradio_Trim_LPO(void);

void HWradio_Set_Tx_Power_Level(u_int8 power_level);
u_int8 HWradio_Get_Tx_Power_Level(void);

s_int8 HWradio_Read_RSSI(void); /* N == RSSI Return, -128 <= N <= 127 */
s_int8 HWradio_Read_Background_RSSI(void);

void HWradio_Setup_Radio_For_Next_Half_Slot(t_frame_pos const frame_posn);

void HWradio_Update_Rx_Gain_If_Reqd(s_int8 rssi);

boolean FAST_CALL HWradio_Update_Internal_RSSI_Cache(boolean late_read_opportunity);

void HWradio_Put_Master_Park_Rx_Double_Win(void);

t_HWradio_Driver_Status HWradio_Get_Radio_Driver_Status(void);
void HWradio_Enter_Low_Power_Mode_Request(void);
void HWradio_Exit_Low_Power_Mode_Request(void);
void HWradio_Enter_Low_Power_Mode_Forced(void);

void HWradio_Change_Radio_Modulation(boolean);
boolean HWradio_Read_Radio_Modulation(void);

void HWradio_Assign_TX_START_Channel(u_int8 ch);


u_int8 HWradio_Convert_Tx_Power_to_Tx_Power_Level_Units(s_int8 power_level);
s_int8 HWradio_Convert_Tx_Power_Level_Units_to_Tx_Power(u_int8 power_level);

#endif

