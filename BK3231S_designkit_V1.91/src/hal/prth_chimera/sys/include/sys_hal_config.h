#ifndef _PARTHUS_SYS_HAL_CONFIG_H
#define _PARTHUS_SYS_HAL_CONFIG_H

/***********************************************************************
 *
 * MODULE NAME:    sys_hal_config.h
 * PROJECT CODE:   BlueStream
 * MAINTAINER:     Daire.McNamara@parthusceva.com
 * DATE:           Wed Jul 14 11:39:10 BST 1999
 *
 * SOURCE CONTROL: $Id: sys_hal_config.h,v 1.13 2009/11/06 13:08:07 garyf Exp $
 *
 * LICENCE:
 *    This source code is copyright (c) 1999-2004 Ceva Inc.
 *    All rights reserved.
 *
 * REVISION HISTORY:
 *    08 March 2001 - Initially added by JS
 *
 ***********************************************************************/

void SYShalconfig_Initialise_EEPROM(void);

void SYShalconfig_BD_ADDR_Was_Set(void);
void SYShalconfig_Get_Stored_BD_ADDR(void);

void SYShalconfig_Device_Class_Was_Set(void);
void SYShalconfig_Get_Stored_Device_Class(void);

void SYShalconfig_Unit_Key_Was_Set(void);
void SYShalconfig_Get_Stored_Unit_Key(void);

void SYShalconfig_Set_System_Hardware_Configuration(u_int32 info);



#if(BK3000_CHIP_SELECT==BK3000_FPGA)




/*
 * Some registers for Chimera
 * PORT_A -> This is a port using the IOBUSOUT on Chimera
 */

#define XR7_PORTA_DIR (*(volatile u_int16*)0x11214)
#define XR7_PORTA_LAT (*(volatile u_int16*)0x11204)

/*
 * System configuration registers (for IOBUS)
 * These registers determine what is connected to IOBUS OUT and IOBUS IN.
 * Either general PORT_A (above) can be used, or specific "options" can be
 * chosen. E.g. to access CTS and RTS for the UART2, option 3 in 
 * IOBUS_IN[5] is set (using SREGD) and Option 2 in IOBUS_OUT[4] (non-PORT_A signals) is
 * set (using SREGB). 
 */

#define XR7_SREGB (*(volatile u_int16*)0x10104)
#define XR7_SREGC (*(volatile u_int16*)0x10108)
#define XR7_SREGD (*(volatile u_int16*)0x1010C)

/*
 * System configuration registers for N2W (I2C-pseudocompatible interface)
 * These registers determine
 * 1. If an N2W device is present on the chimera platform
 * 2. How to read, write, control, and get status from the I2C device.
 *
 */
#define N2W_RX_FIFO     (*(volatile u_int16*)0x011000)
#define N2W_TX_FIFO     (*(volatile u_int16*)0x011000)
#define N2W_STATUS_REG  (*(volatile u_int16*)0x011004)
#define N2W_CONTROL_REG (*(volatile u_int16*)0x011008)
#define N2W_CLOCK_REG   (*(volatile u_int16*)0x01100C)

#define EEPROM_ADDR     0xA0
#define EEPROM_BLOCK0_ADDR   (EEPROM_ADDR | (0x0 < 1))
#define EEPROM_BLOCK1_ADDR   (EEPROM_ADDR | (0x1 < 1))
#define EEPROM_BLOCK2_ADDR   (EEPROM_ADDR | (0x2 < 1))
#define EEPROM_BLOCK3_ADDR   (EEPROM_ADDR | (0x3 < 1))
#define EEPROM_BLOCK4_ADDR   (EEPROM_ADDR | (0x4 < 1))
#define EEPROM_BLOCK5_ADDR   (EEPROM_ADDR | (0x5 < 1))
#define EEPROM_BLOCK6_ADDR   (EEPROM_ADDR | (0x6 < 1))
#define EEPROM_BLOCK7_ADDR   (EEPROM_ADDR | (0x7 < 1))

#define READ_CYCLE  1
#define WRITE_CYCLE 0


/*
 * N2W Receive FIFO, Transmit FIFO, and Clock Register Bits
 */
#define N2W_CTRL_BIT             0x8000
#define N2W_RESET_BIT            0x4000
#define N2W_STOP_BIT             0x0200
#define N2W_START_BIT            0x0100

/*
 * N2W Status Register Bits
 */
#define N2W_DATA_CHANNEL_BIT     0x0400
#define N2W_CLOCK_CHANNEL_BIT    0x0200
#define N2W_ACTIVE_BIT           0x0100
#define N2W_TX_FIFO_EMPTY_BIT    0x0080
#define N2W_TX_FIFO_FULL_BIT     0x0040
#define N2W_RX_FIFO_EMPTY_BIT    0x0020
#define N2W_RX_FIFO_FULL_BIT     0x0010
#define N2W_ARBITRATE_FAIL_BIT   0x0008
#define N2W_NAK_BIT              0x0004
#define N2W_DATA_REQ_BIT         0x0002
#define N2W_TRANSACTION_DONE_BIT 0x0001

/*
 * N2W Control Register Bits
 */
#define N2W_SOFT_RESET                0x0080
#define N2W_TX_FIFO_NOT_FULL_INT_ENB  0x0040
#define N2W_RX_DATA_AVAIL_INT_ENB     0x0020
#define N2W_RX_FIFO_FULL_INT_ENB      0x0010
#define N2W_TX_ARBITRATE_FAIL_INT_ENB 0x0008
#define N2W_TX_NAK_INT_ENB            0x0004
#define N2W_TX_DATA_REQ_INT_ENB       0x0002
#define N2W_TX_DONE_INT_ENB           0x0001

/*
 * N2W Clock Rate
 */
#define N2W_CLOCK_RATE 0xF8



/*
 * The locations
 *
 * BLOCK 0
 * Bytes 0 - 5 BD_ADDR
 * Bytes 6 - 21 UNIT_KEY
 * Bytes 22 - 25 currently unused
 * Bytes 26 - 28 DEVICE_CLASS
 */
#define BD_ADDR_LOCATION       0x0000
#define UNIT_KEY_LOCATION      0x0006
#define DEVICE_CLASS_LOCATION  0x0019

#endif



void EEPROM_Soft_Reset(void);
void EEPROM_Initialise_Clock(void);
void EEPROM_Initialise_Rx_Fifo(void);
void EEPROM_Self_Check(void);
void EEPROM_Write_Byte(u_int8 addr_block, u_int16 address, u_int8 byte);
u_int8 EEPROM_Read_Byte(u_int8 addr_block, u_int16 address);
void EEPROM_Wait_For_10us(void);

/*
 * ARM platform specific compiler constants
 */

#ifndef XStr
    /*
     * the following 2 macros allow the expansion of a (numeric) macro
     * as a quoted string
     */
    #define Str(x) #x
    #define XStr(x) Str(x)
#endif

#if (defined(__arm) && !defined(__GNUC__))

    #if defined(__USE_INLINES__)
        #define __INLINE__ __inline
    #endif

    #if (!defined(__GNUC__) && (__ARMCC_VERSION >= 4))

        #define __COMPILER_VERSION__ "ARM Compiler SDK 2.50 or higher ("##XStr(__ARMCC_VERSION)##")"
        #define __IRQ__ __irq

    #else

        #define __COMPILER_VERSION__ "ARM Compiler "##XStr(__ARMCC_VERSION)
        #define __IRQ__ __irq

    #endif

#elif (defined(__thumb) && !defined(__GNUC__))

    #if defined(__USE_INLINES__)
        #define __INLINE__ __inline
    #endif

    #if (__ARMCC_VERSION >= 4.90)

        #define __COMPILER_VERSION__ "ARM Compiler SDK 2.50 or higher ("##XStr(__ARMCC_VERSION)##")"
        #define __IRQ__ __irq

    #else

        #define __COMPILER_VERSION__ "ARM Compiler (Thumb) "##XStr(__ARMCC_VERSION)
        #define __IRQ__ __irq

    #endif

#elif defined(__GNUC__)
    /* GCC's version macro is not numeric, but a string */
    #if defined(__USE_INLINES__)
        #define __INLINE__ __inline__ extern
    #endif

    #define __COMPILER_VERSION__ "GNU CC "##__VERSION__
    #define __IRQ__

    /*
     * GCC does not define endianness, but ARM compiler does
     */
    #ifndef __LITTLE_ENDIAN

        #ifndef __BIG_ENDIAN

            #define __LITTLE_ENDIAN

        #endif

    #endif

#endif /* defined(__GNUC__) */
     
/*
**	for chimera boards where tabasco is clocked from the radio board
*/
#if (PRH_BS_CFG_TABASCO_VERSION >= PRH_BS_HW_TABASCO_VERSION_P7_5_0)
#define TABASCO_CLOCKED_FROM_RADIO 1
#else
#define TABASCO_CLOCKED_FROM_RADIO 0
#endif


/* 
 * MAX_POWER_LEVEL_UNITS
 * This value indicates the number of power steps available. Ie for n power 
 * steps, there are n+1 freqs required.
 */
#if (HW_RADIO==HWradio_SIWAVE_SIW1502)
/*
 * SiWave 1502 only has 8 power levels.
 * 15 is the maximum power levels allowed by the spec.
 * and is a useful default.
 *
 * The SiWave 1502 programmer's guide suggests
 * that MAX_POWER_LEVEL_UNITS should be set to 8.
 * The range of MAX_POWER_LEVEL_UNITS is from 0 .. 7.
 */
#define MAX_POWER_LEVEL_UNITS 7

#else // HWradio_BU9468MUV

#undef MAX_POWER_LEVEL_UNITS

//#if (ROHM_RADIO_VER==9467)
#define MAX_POWER_LEVEL_UNITS 2
//#else if (ROHM_RADIO_VER==9468)
//#define MAX_POWER_LEVEL_UNITS 4
//#endif

#endif

#if (PRH_BS_CFG_SYS_ENHANCED_POWER_CONTROL_SUPPORTED==1)
/*
 * COMMON_TX_POWER_LEVELS 
 * Each modulation scheme may have its own unique set of Tx power levels, or
 * all modulation schemes can share the same set of Tx power levels.
 *
 * Initially, to ease debugging (and while trying to get a better understanding
 * why the modulation schemes would use different power levels  / different number
 * of power levels, the modulation schemes will share a common set of power levels.
 * These "common power" levels will be the same as the power levels used in the 
 * legacy power control.
 */
#define COMMON_TX_POWER_LEVELS 1

/*
 * EPC_MAX_TX_POWER_DIFFERENCE
 * The transmit power level difference between the packet headers of all supported
 * packet types at any given power step shall not exceed 10dB.
 */
#define EPC_MAX_TX_POWER_DIFFERENCE 10

/* EPC_REQ_MAX_TX_POWER_THRESHOLD (dBm)
 * If the avg. RSSI is at least this many dBm below
 * the lower threshold then req the peer device to 
 * go to MAX power.
 * If the avg. RSSI is not this many dBm below the 
 * lower threhold then req an Increment Power
 */
#define EPC_REQ_MAX_TX_POWER_THRESHOLD 8 


#if (COMMON_TX_POWER_LEVELS == 1)
#define MIN_POWER_LEVEL_UNITS        0  /* Position in the array of the lowest TX power level */
#define MAX_POWER_LEVEL_UNITS_2MBITS MAX_POWER_LEVEL_UNITS /* Position in the array 
                                                              of the highest TX power level */
#define MAX_POWER_LEVEL_UNITS_3MBITS MAX_POWER_LEVEL_UNITS
#define TX_POWER_STEP_SIZE 6

/* Dervived min/max markers */
#define MIN_POWER_LEVEL_2MBITS MIN_POWER_LEVEL_UNITS /* Array Index for the min power level for 2Mbits */
#define MAX_POWER_LEVEL_2MBITS MAX_POWER_LEVEL_UNITS /* Array Index for the max power level for 2Mbits */
#define MIN_POWER_LEVEL_3MBITS MIN_POWER_LEVEL_UNITS /* Array Index for the min power level for 3Mbits */
#define MAX_POWER_LEVEL_3MBITS MAX_POWER_LEVEL_UNITS /* Array Index for the max power level for 3Mbits */

#else  //COMMON_TX_POWER_LEVELS==0

#define MIN_POWER_LEVEL_UNITS        0
#define MAX_POWER_LEVEL_UNITS_2MBITS 4 /* TDB: Arbirary value for now */
#define MAX_POWER_LEVEL_UNITS_3MBITS 5 /* TDB: Arbirary value for now */

/* Dervived min/max markers */
#define MIN_POWER_LEVEL_2MBITS (MAX_POWER_LEVEL_UNITS+1)
#define MAX_POWER_LEVEL_2MBITS (MIN_POWER_LEVEL_2MBITS + MAX_POWER_LEVEL_UNITS_2MBITS)
#define MIN_POWER_LEVEL_3MBITS (MAX_POWER_LEVEL_2MBITS+1)
#define MAX_POWER_LEVEL_3MBITS (MIN_POWER_LEVEL_3MBITS + MAX_POWER_LEVEL_UNITS_3MBITS)

/* 
Example:
pwr_level = { 1_1, 1_2, 1_3, 1_4
              2_1, 2_2, 2_3, 2_4, 2_5
			  3_1, 3_2, 3_3, 3_4, 3_5, 3_6 } 
MIN_POWER_LEVEL_UNITS = 0
MAX_POWER_LEVEL_UNITS = 3
MIN_POWER_LEVEL_2MBITS = 4
MAX_POWER_LEVEL_2MBITS = 8
MIN_POWER_LEVEL_3MBITS = 9
MAX_POWER_LEVEL_3MBITS = 14
*/
#endif // COMMON_TX_POWER_LEVELS
#endif // PRH_BS_CFG_SYS_ENHANCED_POWER_CONTROL_SUPPORTED

#define TX_POWER_LEVEL_Pmax 0
#define TX_POWER_LEVEL_Pmin -30

#define GOLDEN_RECEIVER_RSSI_MIN -56
#define GOLDEN_RECEIVER_RSSI_MAX -30

/*
 *
 */

#if(BK3000_CHIP_SELECT==BK3000_FPGA)
#define SYS_LF_OSCILLATOR_PRESENT 0
#else

#ifdef BEKEN_ENABLE_LOW_POWER_MODE
#define SYS_LF_OSCILLATOR_PRESENT 1
#else
#define SYS_LF_OSCILLATOR_PRESENT 0
#endif

#endif

#endif /* _PARTHUS_SYS_HAL_CONFIG_H */

