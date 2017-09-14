#ifndef _PARTHUS_HW_HAB_DEFS_
#define _PARTHUS_HW_HAB_DEFS_

/******************************************************************************
 * MODULE NAME:    hw_hab_defs.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Register definitions for Habanero
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  20 March 2000
 *
 * SOURCE CONTROL: $Id: hw_hab_defs.h,v 1.20 2004/07/07 14:21:19 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 ******************************************************************************/
#if(BK3000_CHIP_SELECT==BK3000_FPGA)

#include "sys_config.h"

#ifndef HAB_BASE_ADDR
#error Must include "sys_config.h" for HAB_BASE_ADDR
#endif

#define HAB_STOP_ADDR   (HAB_BASE_ADDR + 0x00010000)
#define HAB_WAIT_STATES 3
#define HAB_SEGMENT     5
#define HAB_ECE_HIGH    (1 << 9) /* CE4 High */
#define HAB_ECE_LOW     (1 << 8) /* CE4 Low  */

/***************************************************************************
 *
 * Define the bit positions for the Receive Control Registers 
 *
 * The addresses assume a 32-bit address space.  The 16-bit
 * address bus mappings are taken care of by macros in hw_lc.h
 *
 ***************************************************************************/

#define HAB_SYNC_ADDR            0x00000000 + HAB_BASE_ADDR
#define HAB_SYNC_MASK            0xFFFFFFFF
#define HAB_SYNC_SHFT            0

#define HAB_SYNC_ERR_ADDR        0x00000008 + HAB_BASE_ADDR
#define HAB_SYNC_ERR_MASK        0x0000003F
#define HAB_SYNC_ERR_SHFT        0

#define HAB_RX_MODE_ADDR         0x00000008 + HAB_BASE_ADDR
#define HAB_RX_MODE_MASK         0x00000040
#define HAB_RX_MODE_SHFT         6

#define HAB_DADC_BYP_ADDR        0x00000008 + HAB_BASE_ADDR
#define HAB_DADC_BYP_MASK        0x00000100
#define HAB_DADC_BYP_SHFT        8

#define HAB_RADC_BYP_ADDR        0x00000008 + HAB_BASE_ADDR
#define HAB_RADC_BYP_MASK        0x00000200
#define HAB_RADC_BYP_SHFT        9

#define HAB_RADC_NUM_ADDR        0x00000008 + HAB_BASE_ADDR
#define HAB_RADC_NUM_MASK        0x00000400
#define HAB_RADC_NUM_SHFT        10

#define HAB_FDB_DIS_ADDR         0x00000008 + HAB_BASE_ADDR
#define HAB_FDB_DIS_MASK         0x00000800
#define HAB_FDB_DIS_SHFT         11

#define HAB_SYM_GN_ADDR          0x00000008 + HAB_BASE_ADDR
#define HAB_SYM_GN_MASK          0x00070000
#define HAB_SYM_GN_SHFT          16

#define HAB_SYM_ENB_ADDR         0x00000008 + HAB_BASE_ADDR
#define HAB_SYM_ENB_MASK         0x00080000
#define HAB_SYM_ENB_SHFT         19

#define HAB_SYM_MSK_ADDR        0x00000008 + HAB_BASE_ADDR
#define HAB_SYM_MSK_MASK        0x00100000
#define HAB_SYM_MSK_SHFT        20

#define HAB_CMB_C1_ADDR          0x00000008 + HAB_BASE_ADDR
#define HAB_CMB_C1_MASK          0x00200000
#define HAB_CMB_C1_SHFT          21

#define HAB_CMB_C2_ADDR          0x00000008 + HAB_BASE_ADDR
#define HAB_CMB_C2_MASK          0x00C00000
#define HAB_CMB_C2_SHFT          22

#define HAB_OCL_DC_ADDR          0x00000008 + HAB_BASE_ADDR
#define HAB_OCL_DC_MASK          0x3F000000
#define HAB_OCL_DC_SHFT          24

#define HAB_OCL_FB_MODE_ADDR     0x00000008 + HAB_BASE_ADDR
#define HAB_OCL_FB_MODE_MASK     0x40000000
#define HAB_OCL_FB_MODE_SHFT     30

#define HAB_OCL_LGN_ADDR         0x0000000C + HAB_BASE_ADDR
#define HAB_OCL_LGN_MASK         0x0000000F
#define HAB_OCL_LGN_SHFT         0

#define HAB_OCL_HGN_ADDR         0x0000000C + HAB_BASE_ADDR
#define HAB_OCL_HGN_MASK         0x000000F0
#define HAB_OCL_HGN_SHFT         4

/***************************************************************************
 *
 * Define the bit positions for the Transmit Control Registers
 *
 ***************************************************************************/

#define HAB_GAU_ADDR             0x00000010 + HAB_BASE_ADDR
#define HAB_GAU_MASK             0xFFFFFFFF  /* 96 bit */
#define HAB_GAU_SHFT             0

#define HAB_DAC_BYP_ADDR         0x0000001C + HAB_BASE_ADDR
#define HAB_DAC_BYP_MASK         0x00000001
#define HAB_DAC_BYP_SHFT         0

#define HAB_DACREF_ADDR          0x0000001C + HAB_BASE_ADDR
#define HAB_DACREF_MASK          0x0000001E
#define HAB_DACREF_SHFT          1

#define HAB_GAU_OFFSET_ADDR      0x0000001C + HAB_BASE_ADDR
#define HAB_GAU_OFFSET_MASK      0x01FF0000
#define HAB_GAU_OFFSET_SHFT      16

/***************************************************************************
 *
 * Define the bit positions for the Interrupt Control Registers
 *
 ***************************************************************************/

#define HAB_RIF_INTR_MSK0_ADDR  0x00000020 + HAB_BASE_ADDR
#define HAB_RIF_INTR_MSK0_MASK  0x00000003
#define HAB_RIF_INTR_MSK0_SHFT  0

#define HAB_RIF_INTR_MSK1_ADDR  0x00000020 + HAB_BASE_ADDR
#define HAB_RIF_INTR_MSK1_MASK  0x0000000C
#define HAB_RIF_INTR_MSK1_SHFT  2

#define HAB_RIF_INTR_MSK2_ADDR  0x00000020 + HAB_BASE_ADDR
#define HAB_RIF_INTR_MSK2_MASK  0x00000030
#define HAB_RIF_INTR_MSK2_SHFT  4

#define HAB_RIF_INTR_MSK3_ADDR  0x00000020 + HAB_BASE_ADDR
#define HAB_RIF_INTR_MSK3_MASK  0x000000C0
#define HAB_RIF_INTR_MSK3_SHFT  6

#define HAB_LTR_INTR_MSK_ADDR   0x00000020 + HAB_BASE_ADDR
#define HAB_LTR_INTR_MSK_MASK   0x00000100
#define HAB_LTR_INTR_MSK_SHFT   8

#define HAB_RIF_INTR_CLR_ADDR    0x00000024 + HAB_BASE_ADDR
#define HAB_RIF_INTR_CLR_MASK    0x0000000F
#define HAB_RIF_INTR_CLR_SHFT    0

#define HAB_LTR_INTR_CLR_ADDR    0x00000024 + HAB_BASE_ADDR
#define HAB_LTR_INTR_CLR_MASK    0x00000010
#define HAB_LTR_INTR_CLR_SHFT    4

#define HAB_ASA_INTR_CLR_ADDR    0x00000024 + HAB_BASE_ADDR
#define HAB_ASA_INTR_CLR_MASK    0x00000010
#define HAB_ASA_INTR_CLR_SHFT    4

/***************************************************************************
 *
 * Define the bit positions for the Interface Configuration Registers 
 *
 ***************************************************************************/

#define HAB_PHY_CFG_ADDR         0x00000028 + HAB_BASE_ADDR
#define HAB_PHY_CFG_MASK         0xFFFFFFFF /* 32 bits */
#define HAB_PHY_CFG_SHFT         0

/***************************************************************************
 *
 * Define the bit positions for the Status Registers
 *
 ***************************************************************************/

#define HAB_RADC_RSSI_ADDR       0x0000002C + HAB_BASE_ADDR
#define HAB_RADC_RSSI_MASK       0x0000001F
#define HAB_RADC_RSSI_SHFT       0

#define HAB_LTR_LONG_PERIOD_ADDR 0x0000002C + HAB_BASE_ADDR
#define HAB_LTR_LONG_PERIOD_MASK 0x00000020
#define HAB_LTR_LONG_PERIOD_SHFT 5

#define HAB_LTR_INTR_ADDR        0x0000002C + HAB_BASE_ADDR
#define HAB_LTR_INTR_MASK        0x00000040
#define HAB_LTR_INTR_SHFT        6

#define HAB_RIF_INTR_ADDR        0x0000002C + HAB_BASE_ADDR
#define HAB_RIF_INTR_MASK        0x00000F00
#define HAB_RIF_INTR_SHFT        8

#define HAB_GIO_STATUS_ADDR      0x0000002C + HAB_BASE_ADDR
#define HAB_GIO_STATUS_MASK      0x0000F000
#define HAB_GIO_STATUS_SHFT      12

#define HAB_MINOR_REV_ADDR       0x0000002C + HAB_BASE_ADDR
#define HAB_MINOR_REV_MASK       0x00FF0000
#define HAB_MINOR_REV_SHFT       16

#define HAB_MAJOR_REV_ADDR       0x0000002C + HAB_BASE_ADDR
#define HAB_MAJOR_REV_MASK       0xFF000000
#define HAB_MAJOR_REV_SHFT       24

/***************************************************************************
 *
 * Define the bit positions for the GIO Control Registers
 *
 ***************************************************************************/

#define HAB_GIO_COMB0_ADDR       0x00000060 + HAB_BASE_ADDR
#define HAB_GIO_COMB0_MASK       0x0000003F
#define HAB_GIO_COMB0_SHFT       0

#define HAB_GIO_COMB1_ADDR       0x00000060 + HAB_BASE_ADDR
#define HAB_GIO_COMB1_MASK       0x00003F00
#define HAB_GIO_COMB1_SHFT       8

#define HAB_GIO_COMB2_ADDR       0x00000060 + HAB_BASE_ADDR
#define HAB_GIO_COMB2_MASK       0x003F0000
#define HAB_GIO_COMB2_SHFT       16

#define HAB_GIO_COMB3_ADDR       0x00000060 + HAB_BASE_ADDR
#define HAB_GIO_COMB3_MASK       0x3F000000
#define HAB_GIO_COMB3_SHFT       24

#define HAB_GIO_COMB4_ADDR       0x00000064 + HAB_BASE_ADDR
#define HAB_GIO_COMB4_MASK       0x0000003F
#define HAB_GIO_COMB4_SHFT       0

#define HAB_GIO_COMB5_ADDR       0x00000064 + HAB_BASE_ADDR
#define HAB_GIO_COMB5_MASK       0x00003F00
#define HAB_GIO_COMB5_SHFT       8

/***************************************************************************
 *
 * Define the bit positions for the Reset Control Registers
 *
 ***************************************************************************/

#define HAB_RST_CODE_ADDR        0x0000006C + HAB_BASE_ADDR
#define HAB_RST_CODE_MASK        0x000000FF
#define HAB_RST_CODE_SHFT        0

/***************************************************************************
 *
 * Define the bit positions for the RF Support Register
 *
 ***************************************************************************/
#define HAB_RF_SUPPORT_ADDR    0x00000070 + HAB_BASE_ADDR
#define HAB_RF_SUPPORT_MASK    0x00000007
#define HAB_RF_SUPPORT_SHFT    0

/***************************************************************************
 *
 * Define the bit positions for the AUTO WAKEUP
 *
 ***************************************************************************/
#define HAB_AUTO_WAKEUP_ADDR         0x000000A0 + HAB_BASE_ADDR
#define HAB_AUTO_WAKEUP_MASK         0x0000E000 /* 32 bits */
#define HAB_AUTO_WAKEUP_SHFT         13

#if defined(SHOGA)
/***************************************************************************
 *
 * Define the bit positions for the CPU_SLEEP_RF_CLK
 *
 ***************************************************************************/
#define HAB_CPU_SLEEP_RF_CLK_ADDR    0x000000A0 + HAB_BASE_ADDR
#define HAB_CPU_SLEEP_RF_CLK_MASK    0x00001000 /* 32 bits */
#define HAB_CPU_SLEEP_RF_CLK_SHFT    12
#endif
 

/***************************************************************************
 *
 * Define the bit positions for the RF Mux
 *
 ***************************************************************************/
#define HAB_RF_MUX_ADDR         0x000000A0 + HAB_BASE_ADDR
#define HAB_RF_MUX_MASK         0x00000100 /* 32 bits */
#define HAB_RF_MUX_SHFT         8

/***************************************************************************
 *
 * Define the bit positions for the clock divider
 * Note: RGB 24/07/01 temporary until new HAB spec released
 *
 ***************************************************************************/
#define HAB_CLK_DIVIDER_ADDR         0x000000A0 + HAB_BASE_ADDR
#define HAB_CLK_DIVIDER_MASK         0x000F0000 /* 32 bits */
#define HAB_CLK_DIVIDER_SHFT         16

/***************************************************************************
 *
 * Define the addresses of the main registers and associated fields to allow
 * local caching of registers and checking of field assignments to take
 * place.
 * 
 * To use a local copy of a register:
 *    1. Give it a unique meaningful name REGISTER_XXX
 *    2. #define REGISTER_XXX_FIELD FIELD for each FIELD that will be used
 *       with this register
 *
 ***************************************************************************/

/*
 * Receive Control General Purpose Register 1 Address 0x08
 */
#define HAB_RX_CTRL_GP1_REG_ADDR                 (HAB_BASE_ADDR + 0x08)

#define HAB_RX_CTRL_GP1_REG_SYNC_ERR_MASK         HAB_SYNC_ERR_MASK
#define HAB_RX_CTRL_GP1_REG_RXMODE_MASK           HAB_RXMODE_MASK
#define HAB_RX_CTRL_GP1_REG_DADC_BYP_MASK         HAB_DADC_BYP_MASK
#define HAB_RX_CTRL_GP1_REG_RADC_BYP_MASK         HAB_RADC_BYP_MASK
#define HAB_RX_CTRL_GP1_REG_DADC_NUM_MASK         HAB_DADC_NUM_MASK
#define HAB_RX_CTRL_GP1_REG_RADC_NUM_MASK         HAB_RADC_NUM_MASK
#define HAB_RX_CTRL_GP1_REG_SYM_GN_MASK           HAB_SYM_GN_MASK
#define HAB_RX_CTRL_GP1_REG_CMB_C1_MASK           HAB_CMB_C1_MASK
#define HAB_RX_CTRL_GP1_REG_CMB_C2_MASK           HAB_CMB_C2_MASK
#define HAB_RX_CTRL_GP1_REG_OCL_DC_MASK           HAB_OCL_DC_MASK
#define HAB_RX_CTRL_GP1_REG_OCL_FB_MODE_MASK      HAB_OCL_FB_MODE_MASK

/*
 * Receive Control General Purpose Register 2 Address 0x0C
 */
#define HAB_RX_CTRL_GP2_REG_ADDR                  (HAB_BASE_ADDR + 0x0C)

#define HAB_RX_CTRL_GP2_REG_OCL_LGN_MASK          HAB_OCL_LGN_MASK
#define HAB_RX_CTRL_GP2_REG_OCL_HGN_MASK          HAB_OCL_HGN_MASK

/*
 * Transmit Control - Gaussian Coefficients Address 0x10-0x1B */
#define HAB_TX_CTRL_GAU_3_2_1_0_REG_ADDR          (HAB_BASE_ADDR + 0x10)
#define HAB_TX_CTRL_GAU_7_6_5_4_REG_ADDR          (HAB_BASE_ADDR + 0x14)
#define HAB_TX_CTRL_GAU_B_A_9_8_REG_ADDR          (HAB_BASE_ADDR + 0x18)

/*
 * Transmit Control General Purpose Register 1 Address 0x1c
 */
#define HAB_TX_CTRL_GP1_REG_ADDR                  (HAB_BASE_ADDR + 0x1C)

#define HAB_TX_CTRL_GP1_REG_DAC_NUM_MASK          HAB_DAC_NUM_MASK
#define HAB_TX_CTRL_GP1_REG_DAC_BYP_MASK          HAB_DAC_BYP_MASK
#define HAB_TX_CTRL_GP1_REG_DACREF_MASK           HAB_DACREF_MASK

/*
 * Interrupt Control General Purpose Register 1 Address 0x20
 */
#define HAB_INTR_CTRL_GP1_REG_ADDR                (HAB_BASE_ADDR + 0x20)

#define HAB_INTR_CTRL_GP1_REG_RIF_INTR_MASK0_MASK HAB_RIF_INTR_MASK0_MASK
#define HAB_INTR_CTRL_GP1_REG_RIF_INTR_MASK1_MASK HAB_RIF_INTR_MASK1_MASK
#define HAB_INTR_CTRL_GP1_REG_RIF_INTR_MASK2_MASK HAB_RIF_INTR_MASK2_MASK
#define HAB_INTR_CTRL_GP1_REG_RIF_INTR_MASK3_MASK HAB_RIF_INTR_MASK3_MASK

/*
 * Interface Configuration General Purpose Register 1 Address 0x28
 */
/* no need for a cache here - 32bit register PHY_CFG */

/*
 * Status General Purpose Register 1 Address 0x2C
 */
#define HAB_STAT_GP1_REG_ADDR                     (HAB_BASE_ADDR + 0x2C)

#define HAB_STAT_GP1_REG_RSSI_MASK                HAB_RSSI_MASK
#define HAB_STAT_GP1_REG_LTR_LONG_PERIOD_MASK     HAB_LTR_LONG_PERIOD_MASK
#define HAB_STAT_GP1_REG_LTR_INTR_MASK            HAB_LTR_INTR_MASK

#define HAB_STAT_GP1_REG_RIF_INTR_MASK            HAB_RIF_INTR_MASK
#define HAB_STAT_GP1_REG_REV_MASK                 HAB_REV_MASK

/*
 * General IO Control General Purpose Register 1 Address 0x60
 */

#define HAB_GIO_HIGH_CTRL_1_AND_0_REG_ADDR        (HAB_BASE_ADDR + 0x30)
#define HAB_GIO_HIGH_CTRL_3_AND_2_REG_ADDR        (HAB_BASE_ADDR + 0x34)
#define HAB_GIO_HIGH_CTRL_5_AND_4_REG_ADDR        (HAB_BASE_ADDR + 0x38)
#define HAB_GIO_HIGH_CTRL_7_AND_6_REG_ADDR        (HAB_BASE_ADDR + 0x3c)
#define HAB_GIO_HIGH_CTRL_9_AND_8_REG_ADDR        (HAB_BASE_ADDR + 0x40)
#define HAB_GIO_HIGH_CTRL_B_AND_A_REG_ADDR        (HAB_BASE_ADDR + 0x44)

#define HAB_GIO_LOW_CTRL_1_AND_0_REG_ADDR         (HAB_BASE_ADDR + 0x48)
#define HAB_GIO_LOW_CTRL_3_AND_2_REG_ADDR         (HAB_BASE_ADDR + 0x4c)
#define HAB_GIO_LOW_CTRL_5_AND_4_REG_ADDR         (HAB_BASE_ADDR + 0x50)
#define HAB_GIO_LOW_CTRL_7_AND_6_REG_ADDR         (HAB_BASE_ADDR + 0x54)
#define HAB_GIO_LOW_CTRL_9_AND_8_REG_ADDR         (HAB_BASE_ADDR + 0x58)
#define HAB_GIO_LOW_CTRL_B_AND_A_REG_ADDR         (HAB_BASE_ADDR + 0x5c)

#define HAB_GIO_CTRL_COMB_3_2_1_0_REG_ADDR        (HAB_BASE_ADDR + 0x60)
#define HAB_GIO_CTRL_COMB_7_6_5_4_REG_ADDR        (HAB_BASE_ADDR + 0x64)
#define HAB_GIO_CTRL_COMB_B_A_9_8_REG_ADDR        (HAB_BASE_ADDR + 0x68)

#define HAB_RF_MUX_CLK_DIV_REG_ADDR               (HAB_BASE_ADDR + 0xA0)
#define HAB_RF_MUX_CLK_DIV_REG_HAB_RF_MUX_MASK        HAB_RF_MUX_MASK
#define HAB_RF_MUX_CLK_DIV_REG_HAB_CLK_DIVIDER_MASK   HAB_CLK_DIVIDER_MASK
/*
 * Reset Control General Purpose Register 1 Address 0x64
 */

#endif


#endif
