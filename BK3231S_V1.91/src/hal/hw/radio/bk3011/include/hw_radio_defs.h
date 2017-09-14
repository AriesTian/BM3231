/*****************************************************************************
 *
 * MODULE NAME:    hw_radio_defs.h
 * PROJECT CODE:   XpertBlue
 * DESCRIPTION:    Rohm Bluetooth Ver.2.0+EDR radio driver for Tabasco.
 * MAINTAINER:     Tom Kerwick
 * CREATION DATE:  07.09.07
 *
 * SOURCE CONTROL: $Id: hw_radio_defs.h,v 1.21 2010/06/17 13:03:28 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2007 Ceva Inc.
 *     All rights reserved.
 *
 * RECENT REVISION HISTORY:
 *
 *  07.09.07 TK    initial reference version, untested.
 *  28.09.07 TK    modified for rohm bu9468muv radio.
 *  01.02.08 TK    modified for independent tx/rx setup times.
 *  25.01.11 BK    modified for BK3011
 *****************************************************************************/
#ifndef HW_RADIO_DEFS
#define HW_RADIO_DEFS

#include "hw_hab_defs.h"
#include "hw_register.h"

/*****************************************************************************
* Hardware Physical Config word:
******************************************************************************/

//#define HWhab_PHY_CFG              0x37016a18 // 24MHz

/*****************************************************************************
* Rohm Radio Verion :
******************************************************************************/

#define ROHM_RADIO_VER  94672
//#define ROHM_RADIO_VER  9467  // Newer Radio Version - BU9467MUV
                              // Revision :- 2.14.0
                              // Date :- April 2009

//#define ROHM_RADIO_VER  9468  // Older Radio Version - BU9468MUV
                              // Revision :- 2.7.0
                              // Date :- August 2007

/*****************************************************************************
* The definitions for Radio Setup:
******************************************************************************/

#define HW_RADIO_TIME_TX_SLOT 390 /* max radio time tx slot (acl/syn) */
#define HW_RADIO_TIME_RX_SLOT 390 /* max radio time rx slot (acl/syn) */
#define HW_RADIO_TIME_TX_ID_PACKET_SLOT 80 /* radio time tx slot (id) */

#define HW_RADIO_INDEPENDENT_TX_RX_SETUP_TIMES 1

#define HW_RADIO_TX_SETUP_TIME 192
#define HW_RADIO_RX_SETUP_TIME 192

/* recommended time for T_SYNC = T2+T3+T4 = 1us + 109us + 86us = 196us,
   however, instead calculate relative to HW_RADIO_SETUP_TIME */
#define HW_RADIO_SPI_WRITE_LENGTH 12 /* aprox 12us to perform a SPI read/write */
#define HW_RADIO_T1_PLL_START_TO_TX_SYNC_PULSE 8 /* spec: 8us to Tx Pulse */

#define HW_RADIO_PRE_TX_SYNC_TIME_T_SYNC /* BDATA1 sync pulse to TX */ \
    (HW_RADIO_TX_SETUP_TIME - HW_RADIO_SPI_WRITE_LENGTH \
    - HW_RADIO_T1_PLL_START_TO_TX_SYNC_PULSE)

#define HW_RADIO_PRE_TX_PULSE_LENGTH 1 /* min BDATA1 sync pulse width */

#define HW_RADIO_BLUE_RF_TIME_T_XTL 6000 /* BXTLEN low to BRCLK output available */
#define HW_RADIO_BLUE_RF_TIME_T_PA 86 /* BPKTCTL high to BDATA1 transmit available */
//#define HW_RADIO_BLUE_RF_TIME_T_PA 90
#define HW_RADIO_BLUE_RF_TIME_T_PD 6 /* BDATA1 transmit disable to BPKTCTL low */ 

/*****************************************************************************
*
* HD15710x PROPOGATION DELAYS BETWEEN ANTENNA AND BDATA1:
*
******************************************************************************/

#if 1 /* tab_chimera_rohm_050410 */

#define mHWradio_RX_TAB_DELAY 5
#define mHWradio_TX_TAB_DELAY 1
//#define mHWradio_RX_TAB_DELAY 3
//#define mHWradio_TX_TAB_DELAY 3

#define mHWradio_RX_DELAY (0x07)
#define mHWradio_TX_DELAY (5)

#else

#define mHWradio_RX_TAB_DELAY 0
#define mHWradio_TX_TAB_DELAY 4

#if 1 // GF BQB - Changes Suggested by Chen - ViMicro - Test Trx-03
      // Trx_03 passes with Rx_Delay set to 7
#define mHWradio_RX_DELAY (5 + mHWradio_RX_TAB_DELAY)
#else
#define mHWradio_RX_DELAY (7 + mHWradio_RX_TAB_DELAY)
#endif
#define mHWradio_TX_DELAY (4 + mHWradio_TX_TAB_DELAY)

#endif

/*****************************************************************************
* Register bit definitions
******************************************************************************/

#define mBIT(X) (((u_int32)1) << (X))



#if(BK3000_CHIP_SELECT==BK3000_FPGA)

/*****************************************************************************
*
* HD15710x REGISTER READS:
* bit 31 = 0 for SPI block to read
* bits 22..24 => 101 device address.
* Read from Radio - bit 21 = 1.
* reg address N - bit 16..20
*
******************************************************************************/

#define READ_REG(n)  (((n)<<16))

/*****************************************************************************
*
* HD15710x REGISTER WRITES:
* bit 31 = 1 for SPI block to write
* bits 22..24 => 101 device address.
* Write to Radio - bit 21 = 0.
* reg address N - bit 16..20
*
******************************************************************************/

//#define WRITE_REG(n,val)  ((1<<23)|((n)<<16)|(val))

/*****************************************************************************
*
* BU9468MUV REGISTER CONFIGURATIONS:
*
******************************************************************************/

//#define WRITE_REG9_TX_POWER(x) ( WRITE_REG(0x09,((u_int32)Power_control_table[x])))


/*****************************************************************************
*
* Defines to support high/low override control of GIO lines (debug purposes):
*
* HWradio_SetOverrideLow(GIO_N);
* HWradio_SetOverrideHigh(GIO_N);
*
******************************************************************************/


/*****************************************************************************
* GIO override macros
******************************************************************************/

#define HWradio_SetOverrideLow(GIO_NAME)	\
				mHWreg_Logical_OR_With_Register(HW_RADIO_GIO_LOW_##GIO_NAME, \
					HW_RADIO_GIO_OVERRIDE_MASK_##GIO_NAME); \
				mHWreg_Logical_AND_With_Register(HW_RADIO_GIO_HIGH_##GIO_NAME, \
					~(HW_RADIO_GIO_OVERRIDE_MASK_##GIO_NAME))

#define HWradio_SetOverrideHigh(GIO_NAME)	\
				mHWreg_Logical_OR_With_Register(HW_RADIO_GIO_HIGH_##GIO_NAME, \
					HW_RADIO_GIO_OVERRIDE_MASK_##GIO_NAME); \
				mHWreg_Logical_AND_With_Register(HW_RADIO_GIO_LOW_##GIO_NAME, \
					~(HW_RADIO_GIO_OVERRIDE_MASK_##GIO_NAME)) 

#define HWradio_CancelOverride(GIO_NAME) \
				mHWreg_Logical_AND_With_Register(HW_RADIO_GIO_LOW_##GIO_NAME, \
					~(HW_RADIO_GIO_OVERRIDE_MASK_##GIO_NAME)); \
				mHWreg_Logical_AND_With_Register(HW_RADIO_GIO_HIGH_##GIO_NAME, \
					~(HW_RADIO_GIO_OVERRIDE_MASK_##GIO_NAME))

#endif//#if(BK3000_CHIP_SELECT==BK3000_FPGA)


#endif // HW_RADIO_DEFS
