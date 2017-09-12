/***********************************************************************
 *
 * MODULE NAME:    sys_init.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    hal specific init code
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  21 September 2001
 *
 * SOURCE CONTROL: $Id: 
 *
 * LICENSE:
 *     This source code is copyright (c) 2001-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    21 Sept 2001 - RGB  - initial version
 *
 *    
 ***********************************************************************/

#include "sys_config.h"
#include "sys_types.h"
#include "sys_init.h"
//#include "hw_leds.h"
#include "hw_lc.h"
#include "hw_radio.h"
#include "hw_register.h"
#include "hw_hab_defs.h"
#include "hw_habanero.h"



extern void BK3000_RF_Initial(void);
extern void BK3000_ICU_Initial(void);

void SYSinit_Initialise(void)
{
#if (BUILD_TYPE!=FLASH_BUILD)
    /*
     * if a ROM build, this is called from startup assembly -- otherwise
     * need to hook it in here...
     *
     * halts system if problem with endianness, or SRAM 
     */
    /* SYSpost_Test(); */
#endif

 //   HWleds_Initialise(); 

 //   HWleds_Test(); /* flash LEDs here to show POST successful */
                   /* allows visual verification of LEDs */

    /* Setup the Tabasco Clock Divider (40MHz / 5 => 8MHz) */
#if(BK3000_CHIP_SELECT==BK3000_FPGA)
    {
        mHWreg_Create_Cache_Register(HAB_RF_MUX_CLK_DIV_REG);
        mHWreg_Load_Cache_Register(HAB_RF_MUX_CLK_DIV_REG);
        mHWreg_Assign_Cache_Field(HAB_RF_MUX_CLK_DIV_REG, HAB_CLK_DIVIDER, 5);
        mHWreg_Store_Cache_Register(HAB_RF_MUX_CLK_DIV_REG);
    }
        
#endif

}

