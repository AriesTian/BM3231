/***********************************************************************
 *
 * MODULE NAME:    sys_hal_config.c
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Customer specific configuration
 * MAINTAINER:     John Nelson
 * DATE:           15 June 2001
 *
 * SOURCE CONTROL: $Id: sys_hal_config.c,v 1.8 2011/01/19 17:35:32 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    15 June 2001 -   JN       - first version extracted from sys_config
 *
 *
 * This module is a customer specific module per hal that allows the 
 * customer to configure the stack through the sys_config interface.
 *
 * The customer can:
 * 1. Initialise the BD_ADDR
 * 2. Initialise the device class
 * 2. Override the default features supported
 * 3. Override the ACL/SCO buffer allocations
 * 4. Override default major hardware register initialisations
 * 5. Override the default unit key
 * 6. Override the default random number seed.
 ***********************************************************************/

#include "sys_config.h"
#include "sys_hal_features.h"
extern t_SYS_Config g_sys_config;

#define TEN_MICRO_SECONDS (0x30d40)
void EEPROM_Wait_For(u_int32 len);
extern u_int8 bd_addr[6];

/*****************************************************************************
 * SYShal_config_Initialise
 *
 * Setup/override the major system configuration structure g_sys_config.
 *
 * Customer modifiable.
 *
 *****************************************************************************/
void SYShal_config_Initialise(void)
{
#if (EEPROM_STORAGE == 1)
    /*
     * A. Initialise the chimera N2W peripheral
     */
    SYShalconfig_Initialise_EEPROM();

    /*
     * 1. Initialise the BD_ADDR
     */
    SYShalconfig_Get_Stored_BD_ADDR();

    /*
     * 2. Initialise the device class
     */
    SYShalconfig_Get_Stored_Device_Class();

    /*
     * 3. Override the default features supported
     */

    /*
     * 4. Override the ACL/SCO buffer allocations
     */

    /*
     * 5. Override default major hardware register initialisations
     */

    /*
     * 6. Override default SYSrand seed using 16 bits of local address as upper
     *    16 bits of seed.
     */
    g_sys_config.rand_seed = (g_sys_config.local_device_address.bytes[0] << 24) + 
                             (g_sys_config.local_device_address.bytes[1] << 16);

    /*
     * 7. Override default unit key.
     */
    SYShalconfig_Get_Stored_Unit_Key();
#else
//   u_int8 bd_addr[6] = {0xb0, 0xff, 0xb0, 0x22, 0x2d, 0xae};

//    u_int8 bd_addr[6] = {0x3d, 0x01, 0x91, 0x19, 0x92, 0x38};
//    u_int8 bd_addr[6] = {0xb2, 0xf1, 0xb3, 0x23, 0x2d, 0xae};
//      u_int8 bd_addr[6] = {0x12, 0x34, 0x56, 0x78, 0x9a, 0xaa};

//    u_int8 bd_addr[6] = {0xae,0x2d,0x33,0xe0,0xd4,0x35};
    int i = 0;

    for(i = 0; i < 6; i++)
    {
        g_sys_config.local_device_address.bytes[i] = bd_addr[i];
    }
#endif
}


void SYShalconfig_BD_ADDR_Was_Set(void)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;

    for(i = 0; i < 6; i++)
    {
        EEPROM_Write_Byte(0, BD_ADDR_LOCATION+i, g_sys_config.local_device_address.bytes[i]);
    }
#endif
}

void SYShalconfig_Get_Stored_BD_ADDR(void)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;

    for(i = 0; i < 6 ; i++)
    {
        g_sys_config.local_device_address.bytes[i] = EEPROM_Read_Byte(0, (BD_ADDR_LOCATION+i));
    }
#endif
}

void SYShalconfig_Device_Class_Was_Set(void)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        EEPROM_Write_Byte(0, DEVICE_CLASS_LOCATION+i, (g_sys_config.device_class >>  (8*i)));
    }
#endif
}

void SYShalconfig_Get_Stored_Device_Class(void)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;
    g_sys_config.device_class = 0;

    for(i = 0; i < 3; i++)
    {
        g_sys_config.device_class += ((EEPROM_Read_Byte(0, DEVICE_CLASS_LOCATION+i)) << (8*i));
    }
#endif
}

void SYShalconfig_SYS_Rand_Seed_Was_Set(void)
{
    /*
     * Override default SYS Rand Seed.
     */
}

#if (PRH_BS_CFG_SYS_DEPRECATED_BT12_FEATURES_SUPPORTED == 1)
void SYShalconfig_Unit_Key_Was_Set(void)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;

    for(i = 0; i < 16; i++)
    {
        EEPROM_Write_Byte(0, UNIT_KEY_LOCATION+i, g_sys_config.unit_key[i]);
    }
#endif
}

void SYShalconfig_Get_Stored_Unit_Key(void)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;

    for(i = 0; i < 16; i++)
    {
        g_sys_config.unit_key[i] = EEPROM_Read_Byte(0, UNIT_KEY_LOCATION+i);
    }
#endif
}
#endif

void SYShalconfig_Initialise_EEPROM(void)
{
#if (EEPROM_STORAGE == 1)
    /*
     * Do Soft Reset of N2W
     */
    EEPROM_Soft_Reset();

    /*
     * Initialise N2W Clock Registers
     */
    EEPROM_Initialise_Clock();

    /*
     * For some reason, soft reset does not
     * necessarily clean out the RX FIFO.
     * Clean out RX Fifo
     */
    EEPROM_Initialise_Rx_Fifo();

    /*
     * Run a small self-check on the EEPROM
     */
    /* EEPROM_Self_Check(); */
#endif
}


void SYShalconfig_Set_System_Hardware_Configuration(u_int32 info)
{
/*  
 *             *) hardware configuration information
 *                  bit31..bit16: reserved
 *                  bit15..bit12: transmitter class type
 *                                 0: external power amplifier unavailable (class2/3 tx)
 *                                 1: external power amplifier available (class1 tx)
 *                                 others: reserved
 *                  bit11..bit8 : voice codec via voice control interface
 *                                 0: Motorola MC145483
 *                                 1: ST Micro STLC7550
 *                                 others: reserved
 *                  bit7..bit4  : system clock scheme for low power mode operation
 *                                 0: radio clocks cpu
 *                                 1: an external oscillator clocks cpu
 *                                 others: reserved
 *                  bit3..bit0  : low power oscillator type
 *                                 0: low power oscillator unavailable
 *                                 1: 32.768KHz low power oscillator available
 *                                 2: 32.000KHz low power oscillator available
 *                                 others: reserved
 */
}





void EEPROM_Soft_Reset(void)
{
#if (EEPROM_STORAGE == 1)
    u_int16 status;
    N2W_CONTROL_REG = (u_int16)N2W_SOFT_RESET;
    EEPROM_Wait_For(0x1ff);
    status = N2W_STATUS_REG;
#endif
}

void EEPROM_Initialise_Clock(void)
{
#if (EEPROM_STORAGE == 1)
    u_int16 status;
    N2W_CLOCK_REG = (u_int16)N2W_CLOCK_RATE;
    EEPROM_Wait_For(0x1ff);
    status = N2W_STATUS_REG;
#endif
}

void EEPROM_Initialise_Rx_Fifo(void)
{
#if (EEPROM_STORAGE == 1)
    u_int16 foo;
    u_int16 status_reg;

    while(!((status_reg = N2W_STATUS_REG) & N2W_RX_FIFO_EMPTY_BIT))
    {
        foo = N2W_RX_FIFO;
    }
#endif
}

void EEPROM_Write_Byte(u_int8 addr_block, u_int16 address, u_int8 byte)
{
#if (EEPROM_STORAGE == 1)
    /*
     * Start Write Condition
     */
    N2W_TX_FIFO = (u_int16)(N2W_START_BIT | EEPROM_ADDR | (addr_block << 1) | WRITE_CYCLE);
    /* EEPROM_Wait_For(0x1ff); */

    /*
     * Provide Address to write to
     */
    N2W_TX_FIFO = (u_int16)address;
    /* EEPROM_Wait_For(0x1ff); */

    /*
     * Write byte and
     * end write Condition
     */
    N2W_TX_FIFO = (u_int16)(N2W_STOP_BIT | byte);

    EEPROM_Wait_For(0x30d40);
    EEPROM_Wait_For(0x30d40);

#endif
}


u_int8 EEPROM_Read_Byte(u_int8 addr_block, u_int16 address)
{
#if (EEPROM_STORAGE == 1)
    u_int16 status_reg;
    u_int8 result;

    SYShalconfig_Initialise_EEPROM();
    
    /*
     * Start read condition by "writing" byte's address
     */
    N2W_TX_FIFO = (u_int16)(N2W_START_BIT | EEPROM_ADDR | (addr_block << 1) | WRITE_CYCLE);
    EEPROM_Wait_For(0x1ff);

    /*
     *  Set address within block to read from
     */
    N2W_RX_FIFO = address;

    /*
     * Ask for a read value
     */
    N2W_RX_FIFO = (u_int16)(N2W_START_BIT | EEPROM_ADDR | (addr_block << 1) | READ_CYCLE);

    /*
     * Set address within block to read from
     */ 
    N2W_RX_FIFO = (u_int16)address;
    
    /*
     * send stop bit
     */
    N2W_RX_FIFO = (u_int16)N2W_STOP_BIT;

    EEPROM_Wait_For(0x30d40);

    status_reg = N2W_STATUS_REG;

    
    result = (N2W_RX_FIFO & 0xFF);

    EEPROM_Initialise_Rx_Fifo();

    return result;
#else
    return 0;
#endif
}

void EEPROM_Self_Check(void)
{
    /*
     * TODO: Detect if EEPROM present or not
     */
}

void EEPROM_Wait_For(u_int32 len)
{
#if (EEPROM_STORAGE == 1)
    int i = 0;

    for(i = 0; i < len; i++)
        ;
#endif
}

