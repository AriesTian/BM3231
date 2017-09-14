/*************************************************************************
 *
 * MODULE NAME:    hw_radio.c
 * PROJECT CODE:   XpertBlue
 * DESCRIPTION:    Rohm Bluetooth Ver.2.0+EDR radio driver for Tabasco.
 * MAINTAINER:     Tom Kerwick
 * CREATION DATE:  07.09.07
 *
 * SOURCE CONTROL: $Id: hw_radio.c,v 1.30 2010/06/21 21:23:13 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2007 Ceva Inc.
 *     All rights reserved.
 *
 * RECENT REVISION HISTORY:
 *
 *  07.09.07 TK    initial reference version, untested.
 *  28.09.07 TK    modified for rohm bu9468muv radio, still untested.
 *  01.02.08 TK    modified for independent tx/rx setup times.
 *  25.01.11 BK    modified for BK3011
 *
 ********************************************************************************/

/********************************************************************************
 *      Included File
 ********************************************************************************/

#include "sys_config.h"
#include "sys_types.h"
#include "hw_radio.h"
#include "hw_hab_defs.h"
#include "hw_habanero.h" 
#include "hw_habanero_impl.h"
#include "hw_lc.h" 
#include "lslc_access.h"
#include "uslc_chan_ctrl.h"
#include "./include/hw_radio_defs.h" 
#include "sys_mmi.h"
#include "hw_delay.h"
#include "lmp_sco_container.h"
#include "include.h"


#define USE_TIMED_TX_POWER_WRITE (1 && (PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED==1))
#define RECOVER_TO_STANDBY  1
#define ENABLE_SYMBOL_RECOVERY_BLOCK    0   /* #2921 */
#define TX_REPREPARE_ON_PKD_SUPPORTED 1
#define VERIFY_HW_RADIO 1

/********************************************************************************
 *      Define the times for GIO line transitions
 ********************************************************************************/

#define HW_RADIO_SLOT_TIME_POS_TX_START         (0)
#define HW_RADIO_SLOT_TIME_POS_TX_MID           (312)
#define HW_RADIO_SLOT_TIME_POS_RX_START         (625)
#define HW_RADIO_SLOT_TIME_POS_RX_MID           (937)
#define HW_RADIO_TOTAL_SLOT_TIME                (1250)
#define HW_RADIO_NORMAL_TIME_FOR_SPI_WRITE      (16)
#define HW_RADIO_USEC_WAIT_FOR_STABLE_RADIO_CLK (HW_RADIO_BLUE_RF_TIME_T_XTL)
#define HW_RADIO_MSEC_WAIT_FOR_STABLE_RADIO_CLK (HW_RADIO_BLUE_RF_TIME_T_XTL/1000)
#define HW_RADIO_POSITION_TIMED_SPI_WRITE_IDLE    (2) /* SER_ESER Position 2 */

//extern u_int32 XVR_analog_reg_save[];


/*************************************************************************************
 *
 *  The following is a defines the allocation of GIO lines in the Blue RF driver
 *
 * GIO 0     Used to change BDATA1 direction from receive to transmit.
 * GIO 1     Unused; for trx_mode
 * GIO 3     BXTLEN Enable/Disable Crystal. Sleep mode
 * GIO 2     Unused; for radio_on
 * GIO 4     BnPWR - Set low, places radio in lowest Power state. Config data is lost.
 * GIO 5     Unused; for slot_ctrl 
 * GIO 6     Combine with GIO 8 for Sync Tx pulse for BDATA1 when in page mode.
 * GIO 7     Unused
 * GIO 8     Creates Sync Tx pulse for combination with BDATA1.
 * GIO 9     BPKTCTL - In Transmit mode its a strobe to Enable the PA.
 *                     In receive the baseband generates this to  
 *                       indicate that the access code has been decoded.
 *                       
 * GIO 10     Unused
 * GIO 11     BPKTCTL combine for page mode.
 *
 *
 *************************************************************************************/





#define valid_frequency(FRAME_POS,MASK)    ((MASK & RADIO_FREQ_MASK(FRAME_POS)) != 0)


/********************************************************************************
 *      Local Variables
 ********************************************************************************/

static t_HWradio_Driver_Status radio_status = Power_Down_Mode_Not_Active;
t_RadioMode CurrentRadioMode =RADIO_MODE_STANDBY;
static t_RadioMode Requested_RadioMode = RADIO_MODE_STANDBY;
static u_int8 power_level_now = MAX_POWER_LEVEL_UNITS; /* radio default after reset */

u_int32 rawRSSIvalue=0x00; /* radio default after reset */

#if (TX_REPREPARE_ON_PKD_SUPPORTED==1)
//static u_int8 tx_prepared_on_tim2 = FALSE;
//static u_int8 tx_reprepare_on_pkd = FALSE;
#endif

#if (HW_RADIO_INDEPENDENT_TX_RX_SETUP_TIMES==1)
//static u_int32 jal_ser_eser_tx_times = 0;
//static u_int32 jal_ser_eser_rx_times = 0;
#endif

//here is our table!!!!!!!!!!!!!!
//const u_int16 Power_control_table[] = { 0x9713 /*-9dBm*/, 
//                                        0x862B /*-4.5 dBm*/,
//                                        0x86AF /* 0 dBm*/
//
//};


#if (PRH_BS_CFG_SYS_ENHANCED_POWER_CONTROL_SUPPORTED==1)
const s_int8 Power_control_table_dBm[] = {
     -19, 12, -5, 0.3,   /* 1Mbits: # entries = MAX_POWER_LEVEL_UNITS+1*/
     -25, -20, -12, 0.1, 0.5, /* 2Mbits: # entries = MAX_POWER_LEVEL_UNITS_2MBITS+1  */
     -25, -20, -12, 0.1, 0.5, 0.7 /* 3Mbits: # entries = MAX_POWER_LEVEL_UNITS_3MBITS+1 */
};
#endif
/********************************************************************************
 *
 * T1 Hardware SER_MASK Configuration Limitations:
 *
 * To avoid glitches in ESER block, the SER_MASK is double-registered to the
 * ct_1m_clk in ESER block. So when write a new SER_MASK, must wait at least 3us
 * to read back, and the new SER_MASK also takes effect 3us later after writing
 * the new SER_MASK. As all other ESER CTRL signals share the same register map
 * location, writing to any of these signals, must wait for 3us to write new
 * SER_MASK, otherwise the new SER_MASK is not written in.
 *
 * To avoid potential scenarios of SER_MASK not written in, update register to
 * cache, and write to hardware once per radio service call only.
 *
 * As cached method is also MIPS improvement, adopt for all Hardware revisions.
 *
 ********************************************************************************/


/*************************************************************************************
 *  Prototypes and externs
 *************************************************************************************/

//void _HWhab_Config_PHY(void);
//static void _HWhab_Config_GAU(void);
//void _HWhab_Config_Intr_Ctrl(void);
//void _HWhab_Config_GIO_Ctrl(void);
//void _HWhab_Config_SYM(void);
//void _HWhab_Config_OCL(void);
//void _HWhab_Config_Radio_IF(void);
//void _HWhab_Config_COR(void);
//void _HWhab_Radio_Setup_Tx_SPI_Times(void);
//void _HWhab_Radio_Setup_Rx_SPI_Times(void);
void _HWhab_Init_RF(void);
void HWradio_Initialise(void);
//void HWradio_Reset(void);
//void HWradio_Set_Syncword(t_syncword const syncword);
//static void _HWradio_Prepare_SPI_Block    (void);
//static void _HWradio_SetGios_ResetCombines(void);
//static void _HWradio_SetGios_BpktCtlLow(void);
//static void _HWradio_SetGios_TxRx(void);
//static void _HWradio_SetGios_FullRx(void);
//static void _HWradio_SetGios_SlavePageResp(void);
//static void _HWradio_SetGios_MasterDoub(void);
//static void _HWradio_SetGios_Standby(void);
//static void _HWradio_DisableAllSpiWrites(void);
//void _HWradio_ProgNow(u_int32 in_val);
u_int32 _HWradio_ReadNow(u_int32 Reg_To_Read);

//static void _HWradio_Send_Idle_Now(void);
static boolean HWradio_Service(t_RadioMode in_RadioMode, t_freq *io_Channels, t_radio_freq_mask freq_mask);
void HWradio_Init_Tx_Power_Level(u_int8 power_level);

/********************************************************************************
 *
 * JAL_SER_ESER_DATA:
 * POSITION1 | 0:tx start freq / rssi read  4:tx mid freq   8:rx start freq   12:rx mid freq
 * POSITION2 | 1:tx start idle              5:tx mid idle   9:rx start idle   13:rx mid idle
 * POSITION3 | 2:tx power                   6:              10:               14:rssi read
 * POSITION4 | 3:                           7:              11:               15:
 *
 ********************************************************************************/
#define JAL_SER_ESER_TX_START (0x0007)
#define JAL_SER_ESER_TX_MID   (0x0030)
#define JAL_SER_ESER_RX_START (0x0300)
#define JAL_SER_ESER_RX_MID   (0x3000)

#define JAL_SER_ESER_RSSI     (0x4000)





#ifdef DEBUG_BK3000_RF

#define MAX_RF_CH_LENGTH 512
u_int8 debug_rf_ch[MAX_RF_CH_LENGTH+2];

volatile u_int16 debug_rf_ch_index=0;
#endif



void FAST_CALL BK3000_Write_RF_CH(u_int8 channel_nb)
{
    u_int32 v;


    v=BK3000_XVR_REG_0x24;
    
    v=v&0xFFFFFF80;

    channel_nb=channel_nb+2;

    v=v|(channel_nb);

    BK3000_XVR_REG_0x24=v;

}

//void Set_Timed_TX_START_Transmit_Command(u_int8 channel_nb)

//#define Set_Timed_TX_MID_Transmit_Command(channel_nb) Set_Timed_TX_START_Transmit_Command(channel_nb);
//#define Set_Timed_TX_MID_Receive_Command(channel_nb) Set_Timed_TX_START_Transmit_Command(channel_nb);
//#define Set_Timed_RX_START_Receive_Command(channel_nb) Set_Timed_TX_START_Transmit_Command(channel_nb);
//#define Set_Timed_RX_MID_Receive_Command(channel_nb) Set_Timed_TX_START_Transmit_Command(channel_nb);
//#define Send_Transmit_Command_Now(channel_nb) Set_Timed_TX_START_Transmit_Command(channel_nb);


#ifdef DEBUG_BK3000_RF
void Write_Debuginfo_To_PCM(u_int16 wdata)
{
    BK3000_PCM_REG5_WR_DATA=wdata;
}

#endif    

void Send_Receive_Command_Now(u_int8 channel_nb) 
{
    BK3000_Write_RF_CH(channel_nb);    

#ifdef DEBUG_BK3000_RF

      debug_rf_ch[debug_rf_ch_index++]=0;
      debug_rf_ch[debug_rf_ch_index]=channel_nb;

      if(debug_rf_ch_index<MAX_RF_CH_LENGTH)
          debug_rf_ch_index++;
     else
         debug_rf_ch_index=0;    


    Write_Debuginfo_To_PCM(channel_nb|(0x0) );
    
    Write_Debuginfo_To_PCM(0);

#endif


}


t_freq rf_channels_save[4];




void FAST_CALL TIM0_TX_START_Radio_Process()
{

  if((RADIO_MODE_SLAVE_PAGE_RESP==CurrentRadioMode)||(RADIO_MODE_MASTER_DOUBLE_WIN==CurrentRadioMode))
  {
    BK3000_Write_RF_CH(rf_channels_save[TX_MID]);

#ifdef DEBUG_BK3000_RF


    debug_rf_ch[debug_rf_ch_index++]=1;
    debug_rf_ch[debug_rf_ch_index]=rf_channels_save[TX_MID];

    if(debug_rf_ch_index<MAX_RF_CH_LENGTH)
       debug_rf_ch_index++;
    else
       debug_rf_ch_index=0;    

    Write_Debuginfo_To_PCM(rf_channels_save[TX_MID]|(0x1) );
    Write_Debuginfo_To_PCM(0);

#endif

  }
}

void FAST_CALL TIM1_TX_Middle_Radio_Process()
{
  if((RADIO_MODE_SLAVE_PAGE_RESP==CurrentRadioMode)||(RADIO_MODE_MASTER_DOUBLE_WIN==CurrentRadioMode)||(RADIO_MODE_TX_RX==CurrentRadioMode))
  {
    BK3000_Write_RF_CH(rf_channels_save[RX_START]);

#ifdef DEBUG_BK3000_RF

      debug_rf_ch[debug_rf_ch_index++]=2;
      debug_rf_ch[debug_rf_ch_index]=rf_channels_save[RX_START];

      if(debug_rf_ch_index<MAX_RF_CH_LENGTH)
          debug_rf_ch_index++;
      else
          debug_rf_ch_index=0;    


    Write_Debuginfo_To_PCM(rf_channels_save[RX_START]|(0x2) );
    Write_Debuginfo_To_PCM(0);

#endif

  }
}

void FAST_CALL TIM2_RX_START_Radio_Process()
{
    if(RADIO_MODE_MASTER_DOUBLE_WIN==CurrentRadioMode)
    {
        BK3000_Write_RF_CH(rf_channels_save[RX_MID]);

#ifdef DEBUG_BK3000_RF

        debug_rf_ch[debug_rf_ch_index++]=3;

        debug_rf_ch[debug_rf_ch_index]=rf_channels_save[RX_MID];

        if(debug_rf_ch_index<MAX_RF_CH_LENGTH)
            debug_rf_ch_index++;
        else
            debug_rf_ch_index=0;    

        Write_Debuginfo_To_PCM(rf_channels_save[RX_MID]|(0x3) );
        Write_Debuginfo_To_PCM(0);
                
#endif

  }
}

void FAST_CALL TIM3_RX_Middle_Radio_Process()
{
  if( (RADIO_MODE_SLAVE_PAGE_RESP==CurrentRadioMode)||(RADIO_MODE_MASTER_DOUBLE_WIN==CurrentRadioMode)||(RADIO_MODE_TX_RX==CurrentRadioMode))     
  {
    BK3000_Write_RF_CH(rf_channels_save[TX_START]);

#ifdef DEBUG_BK3000_RF

      debug_rf_ch[debug_rf_ch_index++]=4;
      debug_rf_ch[debug_rf_ch_index]=rf_channels_save[TX_START];

      if(debug_rf_ch_index<MAX_RF_CH_LENGTH)
          debug_rf_ch_index++;
     else
       debug_rf_ch_index=0;

    Write_Debuginfo_To_PCM(rf_channels_save[TX_START]|(0x4) );
    Write_Debuginfo_To_PCM(0);

#endif


  }
}



__INLINE__ void  SetRFSyncWindow(u_int8 win_size)
{
    u_int32 v;

    v=BK3000_XVR_REG_0x24;
    
    v=v&0xFFFF07FF;

    v|=(win_size<<11);

    BK3000_XVR_REG_0x24=v;    
}


/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_Prepare_SPI_Block
 * DESCRIPTION:        Set the SPI registers used for timed idle commands.   
 *
 *    Timed SPI transactions usage:
 *    0 :    Tx command/frequency.
 *    1 :    Idle command.
 *    2 : Tx power level.
 *    3 :    RSSI read.
 *    4 :    Tx command/frequency.
 *    5 :    Idle command.
 *    6 :    unused.
 *    7 :    unused.
 *    8 : Rx command/frequency.
 *    9 :    Idle command.
 *    10: unused.
 *    11:    unused.
 *    12:    Rx command/frequency.
 *    13:    Idle command.
 *    14:    RSSI read.
 *    15:    unused.
 *
 *************************************************************************************/
//static void _HWradio_Prepare_SPI_Block    (void)
//{
//    mHWreg_Assign_Register(JAL_SER_ESER_DATA_1, (WRITE_REG14_IDLE));
//    mHWreg_Assign_Register(JAL_SER_ESER_DATA_5, (WRITE_REG14_IDLE));
//    mHWreg_Assign_Register(JAL_SER_ESER_DATA_9, (WRITE_REG14_IDLE));
//    mHWreg_Assign_Register(JAL_SER_ESER_DATA_13, (WRITE_REG14_IDLE));
//    mHWreg_Assign_Register(JAL_SER_ESER_DATA_14, READ_REG(3));
//}



/***************************************************************************
 *
 * FUNCTION: HWradio_Assign_TX_START_Channel
 *
 * Early assign (or late overwrite) useful on MIPS compromised scenarios.
 *
 ***************************************************************************/
//void HWradio_Assign_TX_START_Channel(u_int8 ch)
//{
  //  mHWreg_Assign_Register(JAL_SER_ESER_DATA_0, (WRITE_REG0_TRANSMIT + ((ch + 2)<<1)));
//}

/***************************************************************************
 *
 * FUNCTION: _HWradio_Go_To_Idle_State    
 * PURPOSE:     Put Radio back to BLUE RF IDLE    state.
 *
 *            1. BnPWR -> GIO_4 Low -> Radio goes to OFF state.
 *
 *            2. BXTLEN -> GIO_3 Low
 *            3. BDATA1 ->  High
 *            4. BnPWR -> GIO_4 High -> Radio goes to PWRON state
 *
 *            5. Wait 10mS
 *            6. BXTLEN -> GIO_3 High
 *
 *            additional: Setup DA of Sapphire when enabled class1 transmit.
 *    
 *    Note: See data sheet on HD157100NP and Sapphire
 *        
 *        The use of HW Delay function: 
 *        - Before the completion of gio setup and tabasco clock from radio
 *          is stabilized, HW delays are used with the pre calibrated value
 *          (SYS_HAL_PRECALIBRATED_DELAY). The calibration cannot be done
 *          before the PHY is configured since the Tabasco interrupts are used
 *          for the calibration. So it is required that tabasco clock is stabilized.
 *        - After tabasco clock is stabilized, the self-calibrating
 *          HW Delay function is initialised and the HW Delays are used for
 *          self diagnosis and immediate SPI read/write while radio initialisation.
 *
 ***************************************************************************/
void _HWradio_Go_To_Idle_State (void)
{
    volatile u_int32 radio_version;
    volatile u_int32 radio_type;
#if 0
    extern u_int8 _BTms_pending_hc_reset;
    
    if(_BTms_pending_hc_reset==0)
#endif
    {
        /* wait 10ms to stabalize */
//        HWdelay_Wait_For_ms(10,FALSE);
        /* Power Off - BNPWR low */
        /* now set BXTLEN low */
//        HWradio_SetOverrideLow(BXTLEN);
    }

    /* wait 10ms to stabalize */
//    HWdelay_Wait_For_ms(10,FALSE);
    /* Set BDATA1 as high output  */
//    HWradio_SetOverrideHigh(DATA_DIR);    
    /* output 1 */
//    HWradio_SetOverrideHigh(TX_SYNC_1);    
    /* Power On - BNPWR high */
//    HWradio_SetOverrideHigh(BNPWR);
    /* wait 10ms to stabalize */
//    HWdelay_Wait_For_ms(10,FALSE);
    /* now set BXTLEN high */ 
//    HWradio_SetOverrideHigh(BXTLEN);    
    /* Finally BDATA1 goes low */
//    HWradio_SetOverrideLow(BPKTCTL_AND_TX_SYNC_1);
    /* wait 30ms to stabalize */
//    HWdelay_Wait_For_ms(30,FALSE);

    /* 
     * HW delays are used for self diagnosis and immediate SPI read/write
     * while radio initialisation. The calibration cannot be done
     * before the PHY is configured since the Tabasco interrupts are used
     * for the calibration. Here tabasco clock is stabilized in any system
     * clock scheme so that initialise the self-calibrating HW Delay function
     * at this point.  
     */
    HWdelay_Initialise();

    HWradio_Init_Tx_Power_Level(MAX_POWER_LEVEL_UNITS);

}


//void _HWhab_Trim_Radio(u_int8 trim_val)
//{
//    _HWradio_ProgNow(WRITE_REG2_XO_TRIM(trim_val));
//}

/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_PHY
 * PURPOSE: 
 *
 ***************************************************************************/
//void _HWhab_Config_PHY(void)
//{
  //u_int32 hab_phy_cfg = HWhab_PHY_CFG;
    /*clk divider settings should not be re-configured by radio driver*/ 
  //HWhab_Set_PHY_Cfg((hab_phy_cfg&0xFFFFFFE0)|(HWhab_Get_PHY_Cfg()&0x1F));
  //HWhab_Set_PHY_Cfg(HWhab_PHY_CFG);
//}

/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_GAU
 * PURPOSE:     Sets Gaussian Filter offsets and
 *              co-efficients
 *
 ***************************************************************************/
//static void _HWhab_Config_GAU(void)
//{
//    mHWreg_Assign_Register(HAB_TX_CTRL_GAU_3_2_1_0_REG, 0x316096bb);
//    mHWreg_Assign_Register(HAB_TX_CTRL_GAU_7_6_5_4_REG, 0x00020714);
//    mHWreg_Assign_Register(HAB_TX_CTRL_GAU_B_A_9_8_REG, 0x00000000);
//  HWhab_Set_Gaussian_Offset(0);
//}

/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_Intr_Ctrl
 * PURPOSE:     Configure the Interrupts
 *
 ***************************************************************************/
//void _HWhab_Config_Intr_Ctrl(void)
//{
    /* mask all interrupts */
//    HWhab_Set_RIF_Intr_Mask0(0x3);
//    HWhab_Set_RIF_Intr_Mask1(0x3);
//    HWhab_Set_RIF_Intr_Mask2(0x3);
//    HWhab_Set_RIF_Intr_Mask3(0x3);
//    HWhab_Set_LTR_Intr_Mask(1);

    /* clear all interrupts */
 //   HWhab_Set_RIF_Intr_Clr(0xF);
  //  HWhab_Set_LTR_Intr_Clr(1);
//}


/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_GIO_Ctrl
 * PURPOSE:     Configure the General IO
 *
 ***************************************************************************/
//void _HWhab_Config_GIO_Ctrl(void)
//{
//}

/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_SYM
 * PURPOSE:     Configure the Symbol/Clock Recovery Block
 *
 ***************************************************************************/
//void _HWhab_Config_SYM(void)
//{
#if (ENABLE_SYMBOL_RECOVERY_BLOCK==1)
/* Recommended the settings below to improve
 * data transfer rate against some other interoperable devices
 */
//    HWhab_Set_Sym_Gn(0x2);
//    HWhab_Set_Sym_Enb(1);
#else
/* SYM_GN = 7 and SYM_ENB = 0 are default settings
 * but this does not consider phase error for data from radio to baseband
 */ 
//    HWhab_Set_Sym_Gn(0x7);
//    HWhab_Set_Sym_Enb(0);
#endif
//  HWhab_Set_Sym_Mask(0x1);
//}


/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_OCL
 * PURPOSE:     Configure the Offset Compensation Loop
 *
 ***************************************************************************/
//void _HWhab_Config_OCL(void)
//{

//    HWhab_Set_OCL_DC_Offset(0);
//    HWhab_Set_OCL_Feedback_Mode(0);
//    HWhab_Set_OCL_Low_Gain(0xa);
//    HWhab_Set_OCL_High_Gain(0x2);
//}


/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_Radio_IF
 * PURPOSE:     Configure the Radio I/F Block
 *
 ***************************************************************************/
//void _HWhab_Config_Radio_IF(void)
//{
//    HWhab_Set_DADC_Bypass(0);
//    HWhab_Set_RADC_Bypass(1);
//    HWhab_Set_RADC_Num(0);

//    HWhab_Set_DAC_Bypass(0);
//    HWhab_Set_DAC_Ref(0);

//    HWhab_Set_Cmb_C1(0);
//    HWhab_Set_Cmb_C2(0);
//}


/***************************************************************************
 *
 * FUNCTION:    _HWhab_Config_COR
 * PURPOSE:     Configure the Correlator
 *
 ***************************************************************************/
//void _HWhab_Config_COR(void)
//{
//    HWhab_Set_Sync_Error(0x7);
//}                                 

/***********************************************************************
 *
 * FUNCTION:    _HWhab_Init_RF
 * PURPOSE:     Configure the SPI and GIO blocks. 
 *
 *
 *
 ************************************************************************/
void _HWhab_Init_RF(void)
{
//    volatile u_int32 config_word = 0; 
///    u_int32 RadioSetupTime;

#ifdef DEBUG_BK3000_RF
    debug_rf_ch_index=0;
#endif
     

    /* Set Tx and Rx delays*/
    HW_set_tx_delay(mHWradio_TX_DELAY);  
    HW_set_rx_delay(mHWradio_RX_DELAY);


}

/***************************************************************************
 * Radio HAL
 ***************************************************************************/

/***************************************************************************
 *
 * FUNCTION:   HWradio_Initialise
 * PURPOSE:    Initialises Habanero 
 *
 ***************************************************************************/
void HWradio_Initialise(void)
{
//    _HWhab_Config_PHY();
//    _HWhab_Config_GAU();
//    _HWhab_Config_SYM();
//    _HWhab_Config_OCL();
//    _HWhab_Config_COR();
//    _HWhab_Config_Intr_Ctrl();
//    _HWhab_Config_Radio_IF();

 //   HWhab_Set_Rx_Mode(HWradio_RXm_NORMAL);

    _HWhab_Init_RF();                        /* Set default register settings. */

    _HWradio_Go_To_Idle_State();            /* Power Up radio and then Radio needs to start in IDLE state.*/
//    _HWradio_SetGios_Standby();
//    _HWradio_Prepare_SPI_Block();

    radio_status = Power_Down_Mode_Not_Active;
    CurrentRadioMode =RADIO_MODE_STANDBY;
    Requested_RadioMode = RADIO_MODE_STANDBY;

}

/***************************************************************************
 *
 * FUNCTION:   HWradio_Reset
 * PURPOSE:    Resets the Habanero core AND register map by writing special
 *             sequence to reset register
 *               Also resets radio registers.
 *    
 *    NOTE:      Reset for Habanero implemented in core (hw_lc.c)
 ***************************************************************************/ 
void HWradio_Reset(void)
{
//    BK3000_PCM_EXT_CONFIG=0x03;
}

/***************************************************************************
 *
 * FUNCTION:    HWradio_Set_Syncword
 * PURPOSE:
 *
 ***************************************************************************/
//void HWradio_Set_Syncword(t_syncword const syncword)
//{
//    HWhab_Set_Syncword_Ref((u_int32 const*)&syncword);
//}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_ResetGioCombines
 * DESCRIPTION:   This function resets the GIO line combines that may have 
 *                been programmed.
 *
 *
 * PARAMETER:     None.
 *
 *
 * RETURNS:       None.
 *
 *
 * SPECIAL CONSIDERATIONS: None.
 *
 *
 *************************************************************************************/
//static void _HWradio_SetGios_ResetCombines(void)
//{
    /* GIO Combines - Un combine everything. */
//}



/*************************************************************************************
 *
 * FUNCTION NAME:  _HWradio_BpktCtlLow
 * DESCRIPTION:    This function ensures that the BPCKCTL GIO line is low.
 *                 It also disables the tx BDATA1 sync pulse.
 *
 *
 * PARAMETER:      None.
 *
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//static void _HWradio_SetGios_BpktCtlLow(void)
//{
    /* Ensure BPKTCTL is low  */

//}


/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_SetGios_TxRx
 *
 * Sets up the high and low times for the GIOs in order to produce correct signals
 * for the Tx Rx driver mode.
 *
 *************************************************************************************/
//static void _HWradio_SetGios_TxRx(void)
//{
 

//}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_SetGios_FullRx
 * DESCRIPTION:   This functions sets up the high and low times for the GIOs in
 *                order to produce correct signals for the  FullRx driver mode.
 *
 * PARAMETER:      None.
 *
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//static void _HWradio_SetGios_FullRx(void)
//{

//} 


/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_SetGios_SlavePageResp
 * DESCRIPTION:   This functions sets up the high and low times for the GIOs in
 *                order to produce correct signals for the SlavePageResp driver mode.
 *
 *
 * PARAMETER:      None. 
 *
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//static void _HWradio_SetGios_SlavePageResp(void)
//{

  
//}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_SetGios_MasterDoub
 * DESCRIPTION:   This functions sets up the high and low times for the GIOs in
 *                order to produce correct signals for the MasterDoubleWin driver mode.
 *
 *
 * PARAMETER:      None.
 *
 * 
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//static void _HWradio_SetGios_MasterDoub(void)
//{

//}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_SetGios_Standby
 * DESCRIPTION:   This functions sets up the high and low times for the GIOs in
 *                order to produce correct signals for the Standby driver mode.
 *
 *
 * PARAMETER:      None.
 *
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//static void _HWradio_SetGios_Standby(void)
//{

//}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_DisableAllSpiWrites
 *
 * Disables all SPI writes (TX/RX writes and RSSI reads).
 *
 *************************************************************************************/
//static void _HWradio_DisableAllSpiWrites(void)
//{
//}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_DisableTxRxSpiWrites
 *
 * Disables all TX/RX SPI writes, but leaves RSSI reads enabled.
 *
 *************************************************************************************/
//void _HWradio_DisableTxRxSpiWrites(void)
//{
//}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_ProgNow
 *
 * Use SPI NOW mode to prog a radio register. Due to MIPS consumptions on wait/polls
 * required in SPI NOW mode, this should be avoided where possible. Mainly suited to
 * radio initialisation.
 *
 *************************************************************************************/
//void _HWradio_ProgNow(u_int32 in_val)
//{
 
//}


/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_ReadNow
 *
 * Use SPI NOW mode to read a radio register. Due to MIPS consumptions on wait/polls
 * required in SPI NOW mode, this should be avoided where possible. Mainly suited to
 * radio initialisation.
 *
 *************************************************************************************/
u_int32 _HWradio_ReadNow(u_int32 Reg_To_Read)
{
    u_int32 val;
    val=*((u_int32*)(Reg_To_Read));

    return(val);
}

/*************************************************************************************
 *
 * FUNCTION NAME: _HWradio_Send_Idle_Now
 * DESCRIPTION:   This function send an Idle command to the Radio. It is sent 
 *                immediately. The function wil not return until it has been sent
 *
 *
 * PARAMETER:      None.
 *
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//static void _HWradio_Send_Idle_Now(void)
//{

//}


/*************************************************************************************
 *
 * FUNCTION NAME: _HWradioCleanUpRx
 * DESCRIPTION:   This function attempts to get the radio back to the idle state after
 *                being in receive
 *
 *
 * PARAMETER:      None.
 *
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//void _HWradioCleanUpRx(void)
//{


//}
/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_PacketExtend
 * DESCRIPTION:   This function extends the Rx or Tx window for multislot packets 
 *                and akso for the receiption of the FHS packet during Inquiry.
 *
 * PARAMETER:      in_PacketType - This is packet type to be extended. 
 *                 in_FramePos - the current frame position - indicate Rx Or Tx
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//void HWradio_Rx_PacketExtend(void)
//{
    /* disable all tx/rx SPI writes first */
   // _HWradio_DisableTxRxSpiWrites();

#if (PRH_BS_CFG_SYS_LMP_RSSI_INQUIRY_RESULTS_SUPPORTED==1)
 //   if (HW_get_bt_clk()&1/*second half slot*/)
   // {
        /* Perform an RSSI read timed on TIM0. */
///        Set_Timed_TX_START_RSSI_Read();
    //}
#endif

    /* extend -  Data Direction */
 //   HWradio_SetOverrideLow(DATA_DIR);
    
#if (TX_REPREPARE_ON_PKD_SUPPORTED==1)
//  if(tx_prepared_on_tim2)
  //{
      /*
       * Restrict tx_reprepare_on_pkd to limited scenarios as precaution due to
       * unexplained issues in some scenarios (TC_AFH_BV_08, TC_LIH_BV_25).
       * Enable for SCO during Page/Inq procedures only. #2493.
       */
  //    t_ulc_procedure active_procedure = USLCchac_Get_Active_Procedure();
    //  if (((active_procedure==PAGE_PROCEDURE) || (active_procedure==INQUIRY_PROCEDURE))
      //     && LMscoctr_Get_Number_SCO_Connections())
     // {
         // tx_reprepare_on_pkd = TRUE;
      //}
     // tx_prepared_on_tim2 = FALSE;
//  }
#endif

//}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_RxComplete
 * DESCRIPTION:    This function should be called from the PKD interrupt handler.
 *                Its purpose is to cancel the GIO lines extension after receiving a 
 *                multi-slot packet in TX/RX mode or receiving a FHS when inquiring.
 *
 * PARAMETER:      None.
 *                 
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
void HWradio_RxComplete(void)
{
//  t_RadioMode current_radio_mode = CurrentRadioMode;

//  if (current_radio_mode==RADIO_MODE_MASTER_DOUBLE_WIN)
 // {
#if (TX_REPREPARE_ON_PKD_SUPPORTED==1)
      /* 
       * Re-enable SPI writes for TX_START & TX_MID
       * If receiving the packet, sync_det interrupt where all SPI wirtes are 
       * disabled due to Rx Packet Extension may happen.
       * In this case the prepared page/inquiry Tx IDs on TIM2 has already
       * been disabled.
       */
   //   mHWreg_Logical_OR_With_Cache_Register(JAL_SER_ESER_CTRL_REG, 
     //                                     JAL_SER_ESER_TX_START|JAL_SER_ESER_TX_MID);      
#endif
      /* For re-enabling DATA_DIR after receiving an FHS during inquiry */
   //   HWradio_CancelOverride(DATA_DIR);
 // }
#if (TX_REPREPARE_ON_PKD_SUPPORTED==1)
 // else if ((tx_reprepare_on_pkd) && (current_radio_mode==RADIO_MODE_TX_RX))
  //{
      /* 
       * Re-enable SPI writes for TX_START
       * If receiving the packet, sync_det interrupt where all SPI wirtes are 
       * disabled due to Rx Packet Extension may happen.
       * In this case the next Tx packet prepared on TIM2 has already
       * been disabled.
       */
      //mHWreg_Logical_OR_With_Cache_Register(JAL_SER_ESER_CTRL_REG, JAL_SER_ESER_TX_START);

      /* Re-enabling DATA_DIR after receiving a packet */
     // HWradio_CancelOverride(DATA_DIR);
 
//      tx_reprepare_on_pkd = FALSE;  
  //}
#endif

    /* ensure the radio is returned to the idle state even if there is no Tx in the next slot*/
   // Set_Timed_TX_START_Idle_Command();
  //  mHWreg_Store_Cache_Register(JAL_SER_ESER_CTRL_REG);
}


/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Tx_PacketExtend
 * DESCRIPTION:
 *             
 *
 * PARAMETER:
 *           
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/

//void HWradio_Tx_PacketExtend(void)
//{

//}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_TxComplete
 * DESCRIPTION:    This function should be called from the PKA interrupt handler.
 *                Its purpose is to cancel the GIO lines extension after transmitting
 *                a multi-slot packet. It is also used to force the BPKTCTL line low
 *                in order to disable the radio's power amplifier so as to save power.
 *
 * PARAMETER:      None.
 *                 
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
//void HWradio_TxComplete(void)
//{
  
//}


/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_SetRadioMode
 *
 *************************************************************************************/
void FAST_CALL HWradio_SetRadioMode(t_RadioMode in_RadioMode)
{
    Requested_RadioMode = in_RadioMode;
    
    if (Requested_RadioMode == RADIO_MODE_STANDBY)
    {
        HWradio_Service(Requested_RadioMode, NULL, 0);
    }
}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_GetRadioMode
 *
 *************************************************************************************/
t_RadioMode FAST_CALL HWradio_GetRadioMode()
{
    return CurrentRadioMode;
}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_SetFrequency
 * DESCRIPTION:    
 *
 * PARAMETER:      None.
 *                 
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
void FAST_CALL HWradio_SetFrequency(t_freq *io_Channels, t_radio_freq_mask freq_mask)
{
   HWradio_Service(Requested_RadioMode, io_Channels, freq_mask);
}



//static u_int32 debug_chn_1=0;
//static u_int32 debug_chn_2=0;
//static u_int32 debug_chn_3=0;
//static u_int32 debug_chn_4=0;
//static u_int32 debug_chn_5=0;
//static u_int32 debug_chn_6=0;
//static u_int32 debug_chn_7=0;
//static u_int32 debug_chn_8=0;
//static u_int32 debug_chn_9=0;
//static u_int32 debug_chn_10=0;


/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Service
 * DESCRIPTION:   This function is the main Radio service routine. It handles the radio 
 *                driver state machine and the change from one mode to another. It is also
 *                called to set the frequencies for the next frame or frame fragment 
 *                depending on the current mode.
 *
 * PARAMETER:      in_RadioMode - This is the requested mode for the driver. 
 *                 in_Context - the is the device context which defines the current activity
 *                 io_Channels - This is a pointer to the channel settings. When a channel setting
 *                               is used, it is reset to be invalid.
 *
 * RETURNS :       None.
 *
 *
 * SPECIAL CONSIDERATIONS:  None.
 *
 *
 *************************************************************************************/
static boolean FAST_CALL HWradio_Service(t_RadioMode in_RadioMode, t_freq *io_Channels, t_radio_freq_mask freq_mask)
{
    boolean lv_result =  TRUE;

#if (PRH_BS_CFG_SYS_HOP_MODE_EUROPE_USA_ONLY_SUPPORTED==0)
    extern t_SYS_Config g_sys_config;
    /* French RF channel range 2454MHz + channel [0..22] */
    if (g_sys_config.hopping_mode==FRANCE_FREQ)
    {
        io_Channels[TX_START]+=52;
        io_Channels[TX_MID]+=52;
        io_Channels[RX_START]+=52;
        io_Channels[RX_MID]+=52;
    }
#endif


    if(in_RadioMode==RADIO_MODE_FULL_RX)
        SetRFSyncWindow(0);            
    else
        SetRFSyncWindow(0x14);            

    /* a double on the requested mode and the current mode */    
    switch(in_RadioMode)
    {

        /************************/
        /* STANDBY MODE REQUEST */
        /************************/

        case RADIO_MODE_STANDBY :

            switch(CurrentRadioMode)
            {

                case RADIO_MODE_STANDBY : 
                    /*
                     *    Do nothing if we are already in Standby mode.
                     */
                    break;

                case RADIO_MODE_MASTER_DOUBLE_WIN :
                case RADIO_MODE_SLAVE_PAGE_RESP:
                case RADIO_MODE_TX_RX :               
                    /* Note, the following should only occur from a PKA */
//                    _HWradio_DisableAllSpiWrites();

                    /* Intentional Fall through */
                    
                case RADIO_MODE_FULL_RX:
                    /* Note that the BPKTCTL pulse should have already been generated */
                    /* Create our own BPKTCTL pulse  */

                    /* Send the SPI write to put the radio into Idle mode */
                //    _HWradio_Send_Idle_Now();
                    
                    /* Setup the GIO lines for Standby */
//                    _HWradio_SetGios_Standby();

                    /* Set the Hab Rx mode to normal */
                    //HWhab_Set_Rx_Mode(HWradio_RXm_NORMAL);
                    HW_set_rx_mode(0);
                    HW_set_use_lf(1);
                    HW_set_use_lf(0);
                                                                                
                    break;


                default:
                    break;
            }
            
            CurrentRadioMode = RADIO_MODE_STANDBY;

            break;


        /************************/
        /* FULL RX MODE REQUEST */
        /************************/

        case RADIO_MODE_FULL_RX :

            switch(CurrentRadioMode)
            {
                case RADIO_MODE_STANDBY :
                case RADIO_MODE_TX_RX:
                        /* Take the channel for  RX_START and start scan */                        
                        if(valid_frequency(RX_START,freq_mask))
                        {
                            /* Set the Hab receive mode to full window */
                            /* set up the gios for full rx */                            
                            Send_Receive_Command_Now(io_Channels[RX_START]);
				            HW_set_rx_mode(3);
                            CurrentRadioMode = RADIO_MODE_FULL_RX;
                        }
                    break;


                case RADIO_MODE_FULL_RX:
                        /* if the frequency setting for the position  RX_START then assume a change in frequency is required */
                        if(valid_frequency(RX_START,freq_mask))
                        {
                            HW_set_rx_mode(0);
                            HW_set_use_lf(1);
                            HW_set_use_lf(0);  
                            Send_Receive_Command_Now(io_Channels[RX_START]);
                        	delay_us(200);
                            HW_set_rx_mode(3);
                        }
                    break;
                    
                case RADIO_MODE_MASTER_DOUBLE_WIN:
                        /* Not allowed  go into standby first */
                        lv_result = FALSE;                        
                    break;

                default:
                        /* Error */
                        lv_result = FALSE;                        
                    break;
            }

            break;

        /************************************/
        /* SLAVE PAGE RESPONSE MODE REQUEST */
        /************************************/

        case RADIO_MODE_SLAVE_PAGE_RESP:            

            switch(CurrentRadioMode)
            {
                case RADIO_MODE_FULL_RX :
                    HW_set_rx_mode(0);                    
                    HW_set_use_lf(1);
                    HW_set_use_lf(0);                                                            				
                    HW_set_rx_mode(2);
                case RADIO_MODE_SLAVE_PAGE_RESP:

                    if (valid_frequency(TX_START, freq_mask))
                    {
                        /* Set the program words for tx */
                        rf_channels_save[TX_START]=io_Channels[TX_START];
                    }
                    
                    /* If we have the SPI writes for the FHS Set them now  - for the second window */
                    if (valid_frequency(RX_START, freq_mask)) 
                    {
                        /* Set the radio to be ready to receive from TX_MID, 
                         * in case we are responding to a second half_slot ID
                         */
                      //  Set_Timed_TX_MID_Receive_Command(io_Channels[RX_START]);
                        /* Also prepare for SPI writes for RX_START position to avoid HEC/CRC error 
                         * when received FHS at this position. This SPI writes will be disabled
                         * on sync_det interrupt in cese of FHS receipt at TX_MID position
                         */
                        rf_channels_save[TX_MID]=io_Channels[RX_START];
                        rf_channels_save[RX_START]=io_Channels[RX_START];                        
                    }
                    break;
                    
                default:
                    lv_result = FALSE;
                    break;
            }
            break;


        /************************/
        /* TX RX MODE REQUEST */
        /************************/

        case RADIO_MODE_TX_RX :
		switch(CurrentRadioMode)
		{
			case RADIO_MODE_FULL_RX :
			case RADIO_MODE_MASTER_DOUBLE_WIN :
				HW_set_rx_mode(0);
				delay_us(10);
				HW_set_use_lf(1);
				HW_set_use_lf(0);
				HW_set_rx_mode(1);
			case RADIO_MODE_STANDBY :                
			case RADIO_MODE_SLAVE_PAGE_RESP:
			case RADIO_MODE_TX_RX :

				if(valid_frequency(TX_START,freq_mask))
				{
				rf_channels_save[TX_START]=io_Channels[TX_START];                        
				//BK3000_Write_RF_CH(rf_channels_save[TX_START]);                   
				}

				if(valid_frequency(RX_START,freq_mask))
				{
				rf_channels_save[RX_START]=io_Channels[RX_START];

				//BK3000_Write_RF_CH(rf_channels_save[RX_START]);                   
				}

				break;

			default:
			/* Not allowed  go into standby first */
				lv_result = FALSE;                        
				break;
		}
		if(CurrentRadioMode==RADIO_MODE_MASTER_DOUBLE_WIN)
		{
			HW_set_use_lf(1);              
			delay_us(10);
			HW_set_use_lf(0);
			HW_set_rx_mode(0);
			delay_us(10);
			HW_set_tx_mode(1);
		}
    		break; 


        /**********************************/
        /* MASTER DOUBLE WIN MODE REQUEST */
        /**********************************/

        case RADIO_MODE_MASTER_DOUBLE_WIN :
            switch(CurrentRadioMode)
            {        
                case RADIO_MODE_TX_RX :
                case RADIO_MODE_STANDBY :
                case RADIO_MODE_MASTER_DOUBLE_WIN :
                        if (valid_frequency(TX_START, freq_mask))
                        {
                             rf_channels_save[TX_START]=io_Channels[TX_START];
                        }

                        if (valid_frequency(TX_MID, freq_mask))
                        {
                            rf_channels_save[TX_MID]=io_Channels[TX_MID];
                        }

                        if (valid_frequency(RX_START, freq_mask))
                        {
                            rf_channels_save[RX_START]=io_Channels[RX_START];
                            
#if (PRH_BS_CFG_SYS_LMP_RSSI_INQUIRY_RESULTS_SUPPORTED==1)
#endif
                        }
                        if (valid_frequency(RX_MID, freq_mask))
                        {
                            rf_channels_save[RX_MID]=io_Channels[RX_MID];                            
                        }
                    break;

                case RADIO_MODE_FULL_RX :
                        /* Not allowed  go into standby first */
                        lv_result = FALSE;                        
                    break;

                default:
                        /* Not allowed  go into standby first */
                        lv_result = FALSE;                        
                    break;
            }
            
            break; 

        default:
            break;
    }

    if (lv_result == TRUE )
        CurrentRadioMode = in_RadioMode;
#if (RECOVER_TO_STANDBY==1)
    else /* unexpected state: recover to radio mode standby */
    {
      //  _HWradio_DisableAllSpiWrites();
    //    _HWradio_Send_Idle_Now();
        //_HWradio_SetGios_Standby();
        //HWhab_Set_Rx_Mode(HWradio_RXm_NORMAL);
        CurrentRadioMode = RADIO_MODE_STANDBY;
    }
#endif

    return(lv_result);
}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Setup_Radio_For_Next_Half_Slot
 *
 *************************************************************************************/
void HWradio_Setup_Radio_For_Next_Half_Slot(t_frame_pos const next_slot_posn)
{
    /*  
     * Disable SPI writes for previous half slot.
     * Assumes TX_START=0, TX_MID=1, RX_START=2, RX_MID=3.
     */
 //   mHWreg_Logical_AND_With_Cache_Register(JAL_SER_ESER_CTRL_REG, 
 //    ~(0x0000000F<<(((((u_int8)next_slot_posn+3)&0x3)<<2))));
  //  mHWreg_Store_Cache_Register(JAL_SER_ESER_CTRL_REG);

#if (HW_RADIO_INDEPENDENT_TX_RX_SETUP_TIMES==1)
//    {
  //     if(next_slot_posn == RX_START)
    //   {
         //  Configure_Spi_For_Rx_Times();
      // }
      // else if ((next_slot_posn == TX_START) && (CurrentRadioMode != RADIO_MODE_FULL_RX)
      //     && (0==LMscoctr_Get_Number_SCO_Connections())) // #2959
      // {
          // Configure_Spi_For_Tx_Times();
       //}
//    }
#endif

#if (TX_REPREPARE_ON_PKD_SUPPORTED==1)
 //   if (next_slot_posn == TX_MID)
  //  {
    //    tx_prepared_on_tim2 = FALSE;
   // }
#endif

}

#if 1
/*************************************************************************************
 *
 * FUNCTION NAME: WRITE_BK3000_TX_POWER
 *
 *set transmitter power (0 to MAX_POWER_LEVEL_UNITS)
 *
* 0x9713 *-9dBm*
* 0x862B *-4.5 dBm*,
* 0x86AF * 0 dBm*
*************************************************************************************/ 
void FAST_CALL WRITE_BK3000_TX_POWER(u_int8 power_level)
{
    u_int32 regv_0x24;

    if(g_beken_initial_config.g_Enable_TX_Power_Control==0)
    {
        return;
    }

    regv_0x24=BK3000_XVR_REG_0x24&0xFFFFF87F;        

    switch(power_level)
    {
      case 0x0:
        power_level=0;
        break;

      case 0x1:
        power_level=1;
        break;

      default:
        power_level=6;
        break;      	

    }

    regv_0x24=regv_0x24|(power_level<<7);   
    
    BK3000_XVR_REG_0x24=regv_0x24;

}

#endif


/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Init_Tx_Power_Level
 *
 * Initialises the radio power level - uses abstract representation of
 * transmitter power (0 to MAX_POWER_LEVEL_UNITS)
 *
 *************************************************************************************/ 
void HWradio_Init_Tx_Power_Level(u_int8 power_level)
{
    /* ProgNow initial radio power level, explicitly update power_level_now */
  //  _HWradio_ProgNow(WRITE_REG9_TX_POWER(power_level));

    WRITE_BK3000_TX_POWER(power_level);

    power_level_now = power_level;
}

#if (PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED==1)
/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Set_Tx_Power_Level
 *
 * Set the radio power level - uses abstract representation of
 * transmitter power (0 to MAX_POWER_LEVEL_UNITS)
 *
 *************************************************************************************/ 
void FAST_CALL HWradio_Set_Tx_Power_Level(u_int8 power_level)
{
    if(power_level != power_level_now)
    {
        power_level_now = power_level;
#if (USE_TIMED_TX_POWER_WRITE==0)
        /* Immediate SPI write for Tx power: not recommended */
     //   _HWradio_ProgNow(WRITE_REG9_TX_POWER(power_level));
          
#else
        /* Set timed SPI write of the Tx power level based on next TIM0 */
      //  mHWreg_Assign_Register(JAL_SER_ESER_DATA_2, WRITE_REG9_TX_POWER(power_level));
    

#endif
        WRITE_BK3000_TX_POWER(power_level);
        
    }
}

#if (BUILD_TYPE!=UNIT_TEST_BUILD)
void HWradio_Set_Rx_Gain(u_int32 x)
{
#if 0
#if 1
  //  _HWradio_ProgNow(WRITE_REG21_RX_GAIN(x));
#else
   // mHWreg_Assign_Register(JAL_SER_ESER_DATA_2, WRITE_REG21_RX_GAIN(x));
#endif
#endif
}
#endif
/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Get_Tx_Power_Level
 *
 *************************************************************************************/
#if (PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED==1)
u_int8 HWradio_Get_Tx_Power_Level(void)
{
    return power_level_now;
}
#endif

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Update_Rx_Gain_If_Reqd
 *
 *************************************************************************************/
void HWradio_Update_Rx_Gain_If_Reqd(s_int8 rssi)
{
}

/*************************************************************************************
 *
 * FUNCTION NAME:  HWradio_Update_Internal_RSSI_Cache
 *
 * Opportunities provided by core for radio driver to update RSSI to cache.
 * Early read opportunity: sync_detection.
 * Later read opportunity: pkd processing.
 * Should return TRUE only if RSSI value was read into cache.
 *
 * For timed SPI read only need to read SPI read register, as the SPI read
 * transaction should have occured during the packet header reception.
 *
 *************************************************************************************/

boolean FAST_CALL HWradio_Update_Internal_RSSI_Cache(boolean late_read_opportunity)
{
    if (((PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED==1) &&
         (CurrentRadioMode == RADIO_MODE_TX_RX)) ||
        ((PRH_BS_CFG_SYS_LMP_RSSI_INQUIRY_RESULTS_SUPPORTED==1) &&
         (CurrentRadioMode == RADIO_MODE_MASTER_DOUBLE_WIN)))
    {
        if( (!late_read_opportunity) && (BUILD_TYPE!=UNIT_TEST_BUILD))
        {
            //#2920:
            //rawRSSIvalue = mHWreg_Get_Register(JAL_SER_READ_DATA);
           // rawRSSIvalue = _HWradio_ReadNow(READ_REG(3));
             rawRSSIvalue=0;//BK3000_XVR_REG_0x12&0xff;
         }
         /* return true if RSSI read and value validated */
        return (late_read_opportunity && rawRSSIvalue);
    }
    
    return FALSE;
}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Read_RSSI
 *
 * converts raw RSSI value to a dBm value (signed 8 bit)
 *
 * 
 * [7:0]||power 
 * -----||-----
 *   15 || -80
 *   35 || -60
 *   55 || -40
 *   75 || -20
 *   95 ||   0
 *
 *************************************************************************************/
s_int8 HWradio_Read_RSSI(void) 
{
    s_int16 tmprssivalue;

    tmprssivalue=rawRSSIvalue;
    tmprssivalue=tmprssivalue-255;

    return (s_int8)(tmprssivalue);

}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Read_Background_RSSI
 *
 *************************************************************************************/
s_int8 HWradio_Read_Background_RSSI(void)
{
    u_int32  val;


    return (s_int8)(-255 + ((s_int8)((val>>8)&0xff)));
}             
#endif

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Enter_Low_Power_Mode_Request
 *
 *************************************************************************************/
void HWradio_Enter_Low_Power_Mode_Request(void)
{
    radio_status = Power_Down_Mode_Active;

    /* set XTLEN low to disable the radio clock */

}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Exit_Low_Power_Mode_Request
 *
 *************************************************************************************/
void HWradio_Exit_Low_Power_Mode_Request(void)
{
    radio_status = Power_Down_Mode_Not_Active;

    /* set XTLEN high to enable the radio clock */
    /* must wait stable clk from radio to clock tabasco after waking up */

}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Enter_Low_Power_Mode_Forced
 *
 *************************************************************************************/
void HWradio_Enter_Low_Power_Mode_Forced(void) 
{ 
} 

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Get_Radio_Driver_Status
 *
 *************************************************************************************/
t_HWradio_Driver_Status HWradio_Get_Radio_Driver_Status(void)
{
    return(radio_status);
}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Get_Radio_Register
 *
 *************************************************************************************/
u_int32 HWradio_Get_Radio_Register(u_int32 reg)
{
    return  *( (u_int32*)(reg+APB_XVER_BASE)) ;
}

/*************************************************************************************
 *
 * FUNCTION NAME: HWradio_Set_Radio_Register
 *
 *************************************************************************************/
void HWradio_Set_Radio_Register(u_int32 reg, u_int32 val)
{
   *( (u_int32*)(reg+APB_XVER_BASE)) =val;
}


u_int8 HWradio_Convert_Tx_Power_to_Tx_Power_Level_Units(s_int8 power_level)
{
    if (power_level >= -2)
        return MAX_POWER_LEVEL_UNITS;
    else if ((power_level > -7) && (power_level < -2))
        return 1;
    else 
        return 0;
}

s_int8 HWradio_Convert_Tx_Power_Level_Units_to_Tx_Power(u_int8 power_level)
{
    if (power_level == MAX_POWER_LEVEL_UNITS)
    {
        return 0;
    }
    else if (power_level == 1)
    {
        return -5;
    }
    else //    if (power_level == 0)
    {
        return -9;
    }
}

