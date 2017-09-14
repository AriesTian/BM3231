#ifndef _PARTHUS_SYS_HAL_FEATURES_H
#define _PARTHUS_SYS_HAL_FEATURES_H

/***********************************************************************
 *
 * MODULE NAME:    sys_hal_features.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Platform specific feature configuration
 * MAINTAINER:     Tom Kerwick
 * DATE:           March 08 2001
 *
 * SOURCE CONTROL: $Id: sys_hal_features.h,v 1.18 2009/08/27 09:51:13 morrisc Exp $
 *
 * LICENCE:
 *    This source code is copyright (c) 2001-2008 Ceva Inc.
 *    All rights reserved.
 *
 * REVISION HISTORY:
 *    08 March 2001 - Initially added by JS
 *
 ***********************************************************************/
 
/*
 * Any platform specific configurable features (e.g. UART baud rate)
 * should go in this module.
 */

/*
 * Transport plane options
 */

#if (BUILD_TYPE==UNIT_TEST_BUILD)
#define TRA_HCIT_UART_SUPPORTED 1
#define TRA_HCIT_GENERIC_SUPPORTED 1
#define TRA_HCIT_USB_SUPPORTED 0
#define TRA_HCIT_PCMCIA_SUPPORTED 0
#define TRA_HCIT_UART_ONLY_SUPPORTED 1
#elif (BUILD_TYPE==GENERIC_BUILD)
#define TRA_HCIT_UART_SUPPORTED 0
#define TRA_HCIT_GENERIC_SUPPORTED 1
#define TRA_HCIT_USB_SUPPORTED 0
#define TRA_HCIT_PCMCIA_SUPPORTED 0
#define TRA_HCIT_UART_ONLY_SUPPORTED 0
#else // FLASH/DEBUG UART Build
#define TRA_HCIT_UART_SUPPORTED 1
#define TRA_HCIT_GENERIC_SUPPORTED 0
#define TRA_HCIT_USB_SUPPORTED 0
#define TRA_HCIT_PCMCIA_SUPPORTED 0
#define TRA_HCIT_UART_ONLY_SUPPORTED 1
#endif

#if (PRH_BS_CFG_SELECT_LEVEL == 5)         
#define TRA_HCIT_UART_DEFAULT_BAUD_RATE 230400
#else
#define TRA_HCIT_UART_DEFAULT_BAUD_RATE 115200
#endif

#define TRA_HCIT_UART_SET_BAUD_RATE_IMMEDIATE 1


#if (BUILD_TYPE==UNIT_TEST_BUILD)
#define EEPROM_STORAGE 0
#else
#define EEPROM_STORAGE 0
#endif


/*
 * XR7 Specific UART section
 *
 * On the XR7, only UART1 has the 16 byte FIFOs, (the
 * others have only 4)
 * while only UART2 has the modem control feature
 */


#define XR7_HCIT_UART 1


#if XR7_HCIT_UART == 1
    #define HCIT_CHIMERA_16550_RECV_FIFO_TRIGGER 14
    #define HCIT_CHIMERA_16550_TX_FIFO_LENGTH 15
    #define HCIT_CHIMERA_USE_CTSRTS 0
#elif XR7_HCIT_UART == 2
#if (PRH_BS_CFG_SELECT_LEVEL == 4)
    #define HCIT_CHIMERA_16550_RECV_FIFO_TRIGGER 1
#else
    #define HCIT_CHIMERA_16550_RECV_FIFO_TRIGGER 4
#endif
    #define HCIT_CHIMERA_16550_TX_FIFO_LENGTH 4
    #define HCIT_CHIMERA_USE_CTSRTS 1
#else 
    #error Please define XR7_HCIT_UART to be either 1 or 2 
#endif

/*
 * There seems to be a problem with the interrupt unit on 
 * the XR7 UARTs, whereby under heavy stress conditions,
 * the UART will miss a transmit interrupt, thus causing
 * the HCI transport to be permanently "stuck" in the busy
 * state. To alleviate this, the following option enables
 * the polled mode. This is guaranteed to work, but is far
 * more cpu intensive (the CPU must spin on the status of
 * a register rather than sleep and wait for an interrupt)
 */
#if (TRA_HCIT_UART_SUPPORTED==1)
#define TRA_HCIT_UART_POLLED_TX_SUPPORTED 1
#endif
/*
 * DEFINE OS RELATED CONFIGURATION OPTIONS
 */
#if (BUILD_TYPE==GENERIC_BUILD)
#define SYS_HAL_OS_EVENT_DRIVEN_HOST_CONTROLLER
#endif

 
 /*
 * Memory limit values for POST (Power on Self Test)
 * These are for the AEB-1, Chimera needs different values
 */

#ifdef BUILD_FOR_ROM
    #define SYSpost_LSRAM_START_ADDR 0x00000000
    #define SYSpost_LSRAM_END_ADDR   0x00000800

    #define SYSpost_SRAM_START_ADDR  0x00000810
    #define SYSpost_SRAM_END_ADDR    0x00040800
#else
    #define SYSpost_LSRAM_START_ADDR 0x00000800
    #define SYSpost_LSRAM_END_ADDR   0x00001000

    #define SYSpost_SRAM_START_ADDR  0x00000800
    #define SYSpost_SRAM_END_ADDR    0x00001000
#endif

#endif /* _PARTHUS_SYS_HAL_FEATURES_H */
