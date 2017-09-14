
#ifndef _BK3231S_CHIP_H_
#define _BK3231S_CHIP_H_
#include "include.h"

#define REG32(x)            (*((volatile uint32 *)(x)))


#define BIT_0               0x00000001
#define BIT_1               0x00000002
#define BIT_2               0x00000004
#define BIT_3               0x00000008
#define BIT_4               0x00000010
#define BIT_5               0x00000020
#define BIT_6               0x00000040
#define BIT_7               0x00000080
#define BIT_8               0x00000100
#define BIT_9               0x00000200
#define BIT_10              0x00000400
#define BIT_11              0x00000800
#define BIT_12              0x00001000
#define BIT_13              0x00002000
#define BIT_14              0x00004000
#define BIT_15              0x00008000
#define BIT_16              0x00010000
#define BIT_17              0x00020000
#define BIT_18              0x00040000
#define BIT_19              0x00080000
#define BIT_20              0x00100000
#define BIT_21              0x00200000
#define BIT_22              0x00400000
#define BIT_23              0x00800000
#define BIT_24              0x01000000
#define BIT_25              0x02000000
#define BIT_26              0x04000000
#define BIT_27              0x08000000
#define BIT_28              0x10000000
#define BIT_29              0x20000000
#define BIT_30              0x40000000 
#define BIT_31              0x80000000

/////////////////////////////////////////////////////////////////////////////
//memory layout
/////////////////////////////////////////////////////////////////////////////
#define ROM_START_ADDR           0x00000000
#define RAM_START_ADDR           0x00400000

#define AHB_ICU_BASE             0x00800000
#define AHB_BK24_BASE            0x00810000
#define AHB_FLASH_BASE           0x00820000
#define AHB_AHB2APB_BASE         0x00F00000

#define APB_WDT_BASE             0x00F00000
#define APB_PWM_BASE             0x00F00100
#define APB_SPI_BASE             0x00F00200
#define APB_UART_BASE            0x00F00300
#define APB_I2C_BASE             0x00F00400
#define APB_GPIO_BASE            0x00F00500
#define APB_RTC_BASE             0x00F00600
#define APB_ADC_BASE             0x00F00700
#define APB_3DS_BASE             0x00F00800
#define APB_I2C1_BASE            0x00F00900
#define APB_TIMER_BASE           0x00F00A00
#define APB_XVER_BASE            0x00F10000
#define APB_CEVA_BASE            0x00F20000

#define p_AHB0_ICU_BASE          (*((volatile unsigned long *)  0x00800000))
#define p_AHB1_CEVA_BASE         (*((volatile unsigned long *)  0x00801000))
#define p_AHB3_MFC_BASE          (*((volatile unsigned long *)  0x00803000))
#define p_AHB6_AHB2APB_BASE      (*((volatile unsigned long *)  0x00806000))


/////////////////////////////////////////////////////////////////////////////
//register definition
/////////////////////////////////////////////////////////////////////////////
//ICU register definitions
#define REG_AHB0_ICU_CLKSRCSEL             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x00) ))
#define SET_CLK_SEL_32K                    0x0
#define SET_CLK_SEL_16M                    0x1
#define SET_CLK_SEL_96M                    0x3

#define REG_AHB0_ICU_CORECLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x04) ))
#define BIT_CORE_CLK_DIV                   1

#define REG_AHB0_ICU_ADCCLKCON             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x08) ))
#define REG_AHB0_ICU_UARTCLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x0c) ))
#define REG_AHB0_ICU_I2CCLKCON             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x10) ))
#define REG_AHB0_ICU_SPICLKCON             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x14) ))
#define REG_AHB0_ICU_CEVA_CLKCON           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x18) ))
#define REG_AHB0_ICU_WDTCLKCON             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x1c) ))
#define REG_AHB0_ICU_BK24CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x20) ))
#define REG_AHB0_ICU_LPO_CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x24) ))
#define REG_AHB0_ICU_RTCCLKCON             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x28) ))

#define REG_AHB0_ICU_PWM0CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x2C) ))
#define BIT_PWM0_CLK_SEL                   1
#define SET_PWM0_CLK_32K                   (0x0 << BIT_PWM0_CLK_SEL)
#define SET_PWM0_CLK_16M                   (0x1 << BIT_PWM0_CLK_SEL)
#define SET_PWM0_CLK_96M                   (0x2 << BIT_PWM0_CLK_SEL)

#define REG_AHB0_ICU_PWM1CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x30) ))
#define BIT_PWM1_CLK_SEL                   1
#define SET_PWM1_CLK_32K                   (0x0 << BIT_PWM1_CLK_SEL)
#define SET_PWM1_CLK_16M                   (0x1 << BIT_PWM1_CLK_SEL)
#define SET_PWM1_CLK_96M                   (0x2 << BIT_PWM1_CLK_SEL)

#define REG_AHB0_ICU_PWM2CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x34) ))
#define BIT_PWM2_CLK_SEL                   1
#define SET_PWM2_CLK_32K                   (0x0 << BIT_PWM2_CLK_SEL)
#define SET_PWM2_CLK_16M                   (0x1 << BIT_PWM2_CLK_SEL)
#define SET_PWM2_CLK_96M                   (0x2 << BIT_PWM2_CLK_SEL)

#define REG_AHB0_ICU_PWM3CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x38) ))
#define BIT_PWM3_CLK_SEL                   1
#define SET_PWM3_CLK_32K                   (0x0 << BIT_PWM3_CLK_SEL)
#define SET_PWM3_CLK_16M                   (0x1 << BIT_PWM3_CLK_SEL)
#define SET_PWM3_CLK_96M                   (0x2 << BIT_PWM3_CLK_SEL)

#define REG_AHB0_ICU_PWM4CLKCON            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x3C) ))
#define BIT_PWM4_CLK_SEL                   1
#define SET_PWM4_CLK_32K                   (0x0 << BIT_PWM4_CLK_SEL)
#define SET_PWM4_CLK_16M                   (0x1 << BIT_PWM4_CLK_SEL)
#define SET_PWM4_CLK_96M                   (0x2 << BIT_PWM4_CLK_SEL)
#define BIT_PWM5_CLK_SEL                   5
#define SET_PWM5_CLK_32K                   (0x0 << BIT_PWM5_CLK_SEL)
#define SET_PWM5_CLK_16M                   (0x1 << BIT_PWM5_CLK_SEL)
#define SET_PWM5_CLK_96M                   (0x2 << BIT_PWM5_CLK_SEL)
#define BIT_TIMER_CLK_PWD                  8
#define BIT_TIMER_CLK_SEL                  9
#define SET_TIMER_CLK_32K                  (0x0 << BIT_TIMER_CLK_SEL)
#define SET_TIMER_CLK_16M                  (0x1 << BIT_TIMER_CLK_SEL)

#define REG_AHB0_ICU_INT_ENABLE            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x40) ))
#define INT_STATUS_CEVA                (0x01<< 0)
#define INT_STATUS_GPIO                (0x01<< 1)
#define INT_STATUS_BK24                (0x01<< 2)
#define INT_STATUS_PWM                 (0x01<< 3)
#define INT_STATUS_UART                (0x01<< 4)
#define INT_STATUS_RTC                 (0x01<< 5)
#define INT_STATUS_ADC                 (0x01<< 6)
#define INT_STATUS_SPI                 (0x01<< 7)
#define INT_STATUS_I2C                 (0x01<< 8)
#define INT_STATUS_3DS                 (0x01<< 9)
#define INT_STATUS_EXT_TIME            (0x01<<10)
#define INT_STATUS_I2C1                (0x01<<11)
#define INT_STATUS_TIMER               (0x01<<12)

#define INT_STATUS_CEVA_WAKEUP                (0x01<<16)
#define INT_STATUS_GPIO_WAKEUP                (0x01<<17)
#define INT_STATUS_BK24_WAKEUP                (0x01<<18)
#define INT_STATUS_PWM_WAKEUP                 (0x01<<19)
#define INT_STATUS_UART_WAKEUP                (0x01<<20)
#define INT_STATUS_RTC_WAKEUP                 (0x01<<21)
#define INT_STATUS_ADC_WAKEUP                 (0x01<<22)
#define INT_STATUS_SPI_WAKEUP                 (0x01<<23)
#define INT_STATUS_I2C_WAKEUP                 (0x01<<24)
#define INT_STATUS_3DS_WAKEUP                 (0x01<<25)
#define INT_STATUS_EXT_TIME_WAKEUP            (0x01<<26)
#define INT_STATUS_I2C1_WAKEUP                (0x01<<27)
#define INT_STATUS_TIMER_WAKEUP               (0x01<<28)
#define ICU_INT_BIT_ENABLE(x)              do{REG_AHB0_ICU_INT_ENABLE |=  (x);} while(0)
#define ICU_INT_BIT_DISABLE(x)             do{REG_AHB0_ICU_INT_ENABLE &= ~(x);} while(0)



#define REG_AHB0_ICU_IRQ_ENABLE            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x44) ))
#define INT_IRQ_BIT                        (0x01<<0)
#define FIQ_IRQ_BIT                        (0x01<<1)

#define REG_AHB0_ICU_INT_STATUS_FLAG       (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x48) ))

#define REG_AHB0_ICU_PERI_2ND_EN           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x4c) ))
#define REG_AHB0_ICU_ANALOG_MODE           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x50) ))
#define REG_AHB0_ICU_ANALOG0_PWD           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x54) ))
#define REG_AHB0_ICU_ANALOG1_PWD           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x58) ))
#define REG_AHB0_ICU_DIGITAL_PWD           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x5c) ))

//Digital PWD Bit
#define BIT_CLK16M_PWD                     0
#define BIT_CLK48M_PWD                     1
#define BIT_CB_BAIS_PWD                    2
#define BIT_HP_LDO_PWD                     3
#define BIT_REF1V_PWD                      4
#define SET_CLK16M_PWD                     (0x01 << BIT_CLK16M_PWD ) 
#define SET_CLK48M_PWD                     (0x01 << BIT_CLK48M_PWD ) 
#define SET_CB_BAIS_PWD                    (0x01 << BIT_CB_BAIS_PWD) 
#define SET_HP_LDO_PWD                     (0x01 << BIT_HP_LDO_PWD ) 
#define SET_REF1V_PWD                      (0x01 << BIT_REF1V_PWD  ) 
#define SET_CLK16M_INT_WAKE                (0x01 << 7 ) 



// DEEP_SLEEP0 is GPIO-A to GPIO-D deep sleep wake-en
// DEEP_SLEEP1 is GPIO-E deep sleep wake-en and deep sleep word
#define REG_AHB0_ICU_DEEP_SLEEP0           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x60) ))
#define BIT_GPIOA_WAKE_EN                  0
#define BIT_GPIOB_WAKE_EN                  8
#define BIT_GPIOC_WAKE_EN                  16
#define BIT_GPIOD_WAKE_EN                  24

#define REG_AHB0_ICU_DEEP_SLEEP1           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x64) ))
#define BIT_GPIOE_WAKE_EN                  0
#define BIT_DEEP_SLEEP_WORD                16

#define REG_AHB0_ICU_RC32K_CONFG           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x68) ))
#define REG_AHB0_ICU_SLEEP_TIME            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x6C) ))
#define BIT_MANU_FIN                       8
#define BIT_MANU_CIN                       3
#define BIT_MANU_EN                        2
#define BIT_CALI_MODE                      1
#define BIT_SPI_TRIG                       0
#define SET_MANU_FIN                       (0x1FF<< BIT_MANU_FIN )
#define SET_MANU_CIN                       (0x1F << BIT_MANU_CIN )
#define SET_MANU_EN                        (0x1  << BIT_MANU_EN  )
#define SET_CALI_MODE                      (0x1  << BIT_CALI_MODE)
#define SET_SPI_TRIG                       (0x1  << BIT_SPI_TRIG )

#define REG_AHB0_BOOST_READY_DLY           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x70) ))
#define REG_AHB0_RSTNREG_LATCH             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x74) ))
#define REG_AHB0_EXT_TIMER_CTRL            (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x78) ))
#define REG_AHB0_FIQ_PRIORITY_EN           (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x7C) ))
#define REG_AHB0_DCO16M_PWD                (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x80) ))
#define REG_AHB0_OTP_PWD                   (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x84) ))
#define REG_AHB0_OTP_CSTM_CFG0             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x88) ))
#define REG_AHB0_OTP_CSTM_CFG1             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x8C) ))
#define REG_AHB0_OTP_CSTM_CFG2             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x90) ))
#define REG_AHB0_OTP_CSTM_CFG3             (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x94) ))
#define REG_AHB0_JTAG_MODE                 (*((volatile unsigned long *)   (AHB_ICU_BASE + 0x98) ))

//=====================================================================================
//FLASH
//=====================================================================================
#define REG_FLASH_OPERATE_SW            (*((volatile unsigned long *)   (AHB_FLASH_BASE+0*4)))
#define REG_FLASH_DATA_SW_FLASH         (*((volatile unsigned long *)   (AHB_FLASH_BASE+1*4)))
#define REG_FLASH_DATA_FLASH_SW         (*((volatile unsigned long *)   (AHB_FLASH_BASE+2*4)))
#define REG_FLASH_RDID_DATA_FLASH       (*((volatile unsigned long *)   (AHB_FLASH_BASE+4*4)))
#define REG_FLASH_SR_DATA_CRC_CNT       (*((volatile unsigned long *)   (AHB_FLASH_BASE+5*4)))
#define REG_FLASH_CONF                  (*((volatile unsigned long *)   (AHB_FLASH_BASE+7*4)))
#define flash_200k_ADDR                 (*((volatile unsigned long *)    (0x00032000)))
#define BIT_ADDRESS_SW                  0
#define BIT_OP_TYPE_SW                  24
#define BIT_OP_SW                       29
#define BIT_WP_VALUE                    30
#define BIT_BUSY_SW                     31

#define SET_ADDRESS_SW                  0xFFFFFF << BIT_ADDRESS_SW
#define SET_OP_TYPE_SW                  0x1F     << BIT_OP_TYPE_SW
#define SET_OP_SW                       0x1      << BIT_OP_SW
#define SET_WP_VALUE                    0x1      << BIT_WP_VALUE
#define SET_BUSY_SW                     0x1      << BIT_BUSY_SW

#define BIT_FLASH_CLK_CONF              0
#define BIT_MODE_SEL                    4
#define BIT_FWREN_FLASH_CPU             9
#define BIT_WRSR_DATA                   10
#define BIT_CRC_EN                      26

#define SET_FLASH_CLK_CONF              0xF      << BIT_FLASH_CLK_CONF
#define SET_MODE_SEL                    0x1F     << BIT_MODE_SEL
#define SET_FWREN_FLASH_CPU             0x1      << BIT_FWREN_FLASH_CPU
#define SET_WRSR_DATA                   0xFFFF   << BIT_WRSR_DATA
#define SET_CRC_EN                      0x1      << BIT_CRC_EN

#define BIT_SR_DATA_FLASH               0
#define BIT_CRC_ERR_COUNTER             8
#define BIT_DATA_FLASH_SW_SEL           16
#define BIT_DATA_SW_FLASH_SEL           19

#define SET_SR_DATA_FLASH               0xFF     << BIT_SR_DATA_FLASH
#define SET_CRC_ERR_COUNTER             0xFF     << BIT_CRC_ERR_COUNTER
#define SET_DATA_FLASH_SW_SEL           0x7      << BIT_DATA_FLASH_SW_SEL
#define SET_DATA_SW_FLASH_SEL           0x7      << BIT_DATA_SW_FLASH_SEL

//=====================================================================================
//BK24 baseband
#define  bk2401_config                  (*((volatile unsigned long *)   AHB_BK24_BASE +  0))
#define  bk2401_enaa                    (*((volatile unsigned long *)   AHB_BK24_BASE +  1))
#define  bk2401_enrx                    (*((volatile unsigned long *)   AHB_BK24_BASE +  2))
#define  bk2401_aw                      (*((volatile unsigned long *)   AHB_BK24_BASE +  3))
#define  bk2401_retr                    (*((volatile unsigned long *)   AHB_BK24_BASE +  4))
#define  bk2401_rfch                    (*((volatile unsigned long *)   AHB_BK24_BASE +  5))
#define  bk2401_setup                   (*((volatile unsigned long *)   AHB_BK24_BASE +  6))
#define  bk2401_r0_addr_0               (*((volatile unsigned long *)   AHB_BK24_BASE +  7))
#define  bk2401_r0_addr_1               (*((volatile unsigned long *)   AHB_BK24_BASE +  8))
#define  bk2401_r0_addr_2               (*((volatile unsigned long *)   AHB_BK24_BASE +  9))
#define  bk2401_r0_addr_3               (*((volatile unsigned long *)   AHB_BK24_BASE + 10))
#define  bk2401_r0_addr_4               (*((volatile unsigned long *)   AHB_BK24_BASE + 11))
#define  bk2401_r1_addr_0               (*((volatile unsigned long *)   AHB_BK24_BASE + 12))    
#define  bk2401_r1_addr_1               (*((volatile unsigned long *)   AHB_BK24_BASE + 13))    
#define  bk2401_r1_addr_2               (*((volatile unsigned long *)   AHB_BK24_BASE + 14))    
#define  bk2401_r1_addr_3               (*((volatile unsigned long *)   AHB_BK24_BASE + 15))    
#define  bk2401_r1_addr_4               (*((volatile unsigned long *)   AHB_BK24_BASE + 16))    
#define  bk2401_r2_addr                 (*((volatile unsigned long *)   AHB_BK24_BASE + 17))
#define  bk2401_r3_addr                 (*((volatile unsigned long *)   AHB_BK24_BASE + 18))
#define  bk2401_r4_addr                 (*((volatile unsigned long *)   AHB_BK24_BASE + 19))
#define  bk2401_r5_addr                 (*((volatile unsigned long *)   AHB_BK24_BASE + 20))
#define  bk2401_tx_addr_0               (*((volatile unsigned long *)   AHB_BK24_BASE + 21))
#define  bk2401_tx_addr_1               (*((volatile unsigned long *)   AHB_BK24_BASE + 22))
#define  bk2401_tx_addr_2               (*((volatile unsigned long *)   AHB_BK24_BASE + 23))
#define  bk2401_tx_addr_3               (*((volatile unsigned long *)   AHB_BK24_BASE + 24))
#define  bk2401_tx_addr_4               (*((volatile unsigned long *)   AHB_BK24_BASE + 25))
#define  bk2401_r0_pw                   (*((volatile unsigned long *)   AHB_BK24_BASE + 26))
#define  bk2401_r1_pw                   (*((volatile unsigned long *)   AHB_BK24_BASE + 27))
#define  bk2401_r2_pw                   (*((volatile unsigned long *)   AHB_BK24_BASE + 28))
#define  bk2401_r3_pw                   (*((volatile unsigned long *)   AHB_BK24_BASE + 29))
#define  bk2401_r4_pw                   (*((volatile unsigned long *)   AHB_BK24_BASE + 30))
#define  bk2401_r5_pw                   (*((volatile unsigned long *)   AHB_BK24_BASE + 31))
#define  bk2401_dynpd                   (*((volatile unsigned long *)   AHB_BK24_BASE + 32))
#define  bk2401_feature                 (*((volatile unsigned long *)   AHB_BK24_BASE + 33))
#define  bk2401_cfg0c_0                 (*((volatile unsigned long *)   AHB_BK24_BASE + 34))
#define  bk2401_cfg0c_1                 (*((volatile unsigned long *)   AHB_BK24_BASE + 35))
#define  bk2401_cfg0c_2                 (*((volatile unsigned long *)   AHB_BK24_BASE + 36))
#define  bk2401_cfg0c_3                 (*((volatile unsigned long *)   AHB_BK24_BASE + 37))
#define  bk2401_cfg0d_0                 (*((volatile unsigned long *)   AHB_BK24_BASE + 38)) 
#define  bk2401_cfg0d_1                 (*((volatile unsigned long *)   AHB_BK24_BASE + 39)) 
#define  bk2401_cfg0d_2                 (*((volatile unsigned long *)   AHB_BK24_BASE + 40)) 
#define  bk2401_cfg0d_3                 (*((volatile unsigned long *)   AHB_BK24_BASE + 41)) 
#define  bk2401_table_0                 (*((volatile unsigned long *)   AHB_BK24_BASE + 42))
#define  bk2401_table_1                 (*((volatile unsigned long *)   AHB_BK24_BASE + 43))
#define  bk2401_table_2                 (*((volatile unsigned long *)   AHB_BK24_BASE + 44))
#define  bk2401_table_3                 (*((volatile unsigned long *)   AHB_BK24_BASE + 45))
#define  bk2401_table_4                 (*((volatile unsigned long *)   AHB_BK24_BASE + 46))
#define  bk2401_table_5                 (*((volatile unsigned long *)   AHB_BK24_BASE + 47))
#define  bk2401_table_6                 (*((volatile unsigned long *)   AHB_BK24_BASE + 48))
#define  bk2401_table_7                 (*((volatile unsigned long *)   AHB_BK24_BASE + 49))
#define  bk2401_table_8                 (*((volatile unsigned long *)   AHB_BK24_BASE + 50))
#define  bk2401_table_9                 (*((volatile unsigned long *)   AHB_BK24_BASE + 51))
#define  bk2401_table_A                 (*((volatile unsigned long *)   AHB_BK24_BASE + 52))
#define  bk2401_ce                      (*((volatile unsigned long *)   AHB_BK24_BASE + 53))
#define  bk2401_cmd                     (*((volatile unsigned long *)   AHB_BK24_BASE + 54))
#define  bk2401_fifo                    (*((volatile unsigned long *)   AHB_BK24_BASE + 55))
#define  bk2401_sdata_0                 (*((volatile unsigned long *)   AHB_BK24_BASE + 56))
#define  bk2401_sdata_1                 (*((volatile unsigned long *)   AHB_BK24_BASE + 57))
#define  bk2401_sdata_2                 (*((volatile unsigned long *)   AHB_BK24_BASE + 58))
#define  bk2401_sdata_3                 (*((volatile unsigned long *)   AHB_BK24_BASE + 59))
#define  bk2401_sctrl                   (*((volatile unsigned long *)   AHB_BK24_BASE + 60))
#define  bk2401_status                  (*((volatile unsigned long *)   AHB_BK24_BASE + 64))
#define  bk2401_observetx               (*((volatile unsigned long *)   AHB_BK24_BASE + 65))
#define  bk2401_cdstatus                (*((volatile unsigned long *)   AHB_BK24_BASE + 66))
#define  bk2401_fifostatus              (*((volatile unsigned long *)   AHB_BK24_BASE + 67))
#define  bk2401_rpl_width               (*((volatile unsigned long *)   AHB_BK24_BASE + 68))
#define  bk2401_mbist_st                (*((volatile unsigned long *)   AHB_BK24_BASE + 69))
#define  bk2401_bit_cnt_0               (*((volatile unsigned long *)   AHB_BK24_BASE + 72))
#define  bk2401_bit_cnt_1               (*((volatile unsigned long *)   AHB_BK24_BASE + 73))
#define  bk2401_bit_cnt_2               (*((volatile unsigned long *)   AHB_BK24_BASE + 74))
#define  bk2401_bit_cnt_3               (*((volatile unsigned long *)   AHB_BK24_BASE + 75))
#define  bk2401_err_cnt_0               (*((volatile unsigned long *)   AHB_BK24_BASE + 76)) 
#define  bk2401_err_cnt_1               (*((volatile unsigned long *)   AHB_BK24_BASE + 77)) 
#define  bk2401_err_cnt_2               (*((volatile unsigned long *)   AHB_BK24_BASE + 78)) 
#define  bk2401_err_cnt_3               (*((volatile unsigned long *)   AHB_BK24_BASE + 79)) 

//=====================================================================================
//WDT
#define REG_APB0_WDT_CFG                (*((volatile unsigned long *)   APB_WDT_BASE))
//=====================================================================================



//=====================================================================================
// 16bit PWM & Timer  
//=====================================================================================
#define REG_APB_BK_PWM_CTRL    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x0*4)) ))
#define REG_APB_BK_PWM_INTR    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x1*4)) )) 
#define REG_APB_BK_PWM0_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x2*4)) ))
#define REG_APB_BK_PWM0_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x3*4)) ))
#define REG_APB_BK_PWM1_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x4*4)) ))
#define REG_APB_BK_PWM1_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x5*4)) ))
#define REG_APB_BK_PWM2_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x6*4)) ))
#define REG_APB_BK_PWM2_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x7*4)) ))
#define REG_APB_BK_PWM3_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x8*4)) ))
#define REG_APB_BK_PWM3_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0x9*4)) ))
#define REG_APB_BK_PWM4_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0xA*4)) ))
#define REG_APB_BK_PWM4_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0xB*4)) ))
#define REG_APB_BK_PWM5_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0xC*4)) ))
#define REG_APB_BK_PWM5_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0xD*4)) ))
#define REG_APB_BK_PWM6_CNT    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0xE*4)) ))
#define REG_APB_BK_PWM6_CAP    (*( (volatile unsigned long *)   (APB_PWM_BASE + (0xF*4)) ))
 
// 16bit Timer
#define REG_APB_TIMER_CTRL     (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x0*4)) ))
#define REG_APB_TIMER_INTR     (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x1*4)) )) 
#define REG_APB_TIMER0_TIMETO  (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x2*4)) ))
#define REG_APB_TIMER0_RDBACK  (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x3*4)) ))
#define REG_APB_TIMER1_TIMETO  (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x4*4)) ))
#define REG_APB_TIMER1_RDBACK  (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x5*4)) ))
#define REG_APB_TIMER2_TIMETO  (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x6*4)) ))
#define REG_APB_TIMER2_RDBACK  (*( (volatile unsigned long *)   (APB_TIMER_BASE + (0x7*4)) ))

#define bit_PT0_ENABLE                        BIT_0
#define bit_PT0_INT_ENABLE                    BIT_1
#define bit_PT1_ENABLE                        BIT_2
#define bit_PT1_INT_ENABLE                    BIT_3
#define bit_PT2_ENABLE                        BIT_4
#define bit_PT2_INT_ENABLE                    BIT_5
#define bit_PT0_INT_FLAG                      BIT_0
#define bit_PT1_INT_FLAG                      BIT_1
#define bit_PT2_INT_FLAG                      BIT_2


//=====================================================================================
//SPI
//=====================================================================================
//#define REG_APB2_SPI_CTRL               (*((volatile unsigned long *)   (APB_SPI_BASE + 0x00) ))
//#define REG_APB2_SPI_STAT               (*((volatile unsigned long *)   (APB_SPI_BASE + 0x04) ))
//#define REG_APB2_SPI_DAT                (*((volatile unsigned long *)   (APB_SPI_BASE + 0x08) ))

#define REG_APB2_SPI_CTRL               (*((volatile unsigned long *)   (APB_SPI_BASE + 0x00) ))
#define BIT_SPI_CTRL_SPIEN              23
#define BIT_SPI_CTRL_MSTEN              22
#define BIT_SPI_CTRL_CKPHA              21
#define BIT_SPI_CTRL_CKPOL              20
#define BIT_SPI_CTRL_BIT_WIDTH          18
#define BIT_SPI_CTRL_NSSMD              16
#define BIT_SPI_CTRL_SPI_CKR            8
#define BIT_SPI_CTRL_RXINT_EN           7
#define BIT_SPI_CTRL_TXINT_EN           6
#define BIT_SPI_CTRL_RXOVR_EN           5
#define BIT_SPI_CTRL_TXOVR_EN           4
#define BIT_SPI_CTRL_RXINT_MODE         2
#define BIT_SPI_CTRL_TXINT_MODE         0

#define REG_APB2_SPI_STAT               (*((volatile unsigned long *)   (APB_SPI_BASE + 0x04) ))
#define BIT_SPI_STAT_SPIBUSY            15
#define BIT_SPI_STAT_SLVSEL             14
#define BIT_SPI_STAT_RXOVR              12
#define BIT_SPI_STAT_TXOVR              11
#define BIT_SPI_STAT_MODF               10
#define BIT_SPI_STAT_RXINT              9
#define BIT_SPI_STAT_TXINT              8
#define BIT_SPI_STAT_RXFIFO_FULL        3
#define BIT_SPI_STAT_RXFIFO_EMPTY       2
#define BIT_SPI_STAT_TXFIFO_FULL        1
#define BIT_SPI_STAT_TXFIFO_EMPTY       0

#define REG_APB2_SPI_DAT                (*((volatile unsigned long *)   (APB_SPI_BASE + 0x08) ))
//=====================================================================================



//=====================================================================================
// UART  
//=====================================================================================
#define REG_APB3_UART_CFG               (*((volatile unsigned long *)   (APB_UART_BASE + 0x00) ))
#define REG_APB3_UART_FIFO_THRESHOLD    (*((volatile unsigned long *)   (APB_UART_BASE + 0x04) ))
#define REG_APB3_UART_FIFO_COUNT        (*((volatile unsigned long *)   (APB_UART_BASE + 0x08) ))
#define REG_APB3_UART_DATA              (*((volatile unsigned long *)   (APB_UART_BASE + 0x0C) ))
#define REG_APB3_UART_INT_ENABLE        (*((volatile unsigned long *)   (APB_UART_BASE + 0x10) ))
#define REG_APB3_UART_INT_FLAG          (*((volatile unsigned long *)   (APB_UART_BASE + 0x14) ))
#define REG_APB3_UART_FLOW_CTRL         (*((volatile unsigned long *)   (APB_UART_BASE + 0x18) ))
#define REG_APB3_UART_WAKE_CTRL         (*((volatile unsigned long *)   (APB_UART_BASE + 0x1c) ))

#define BIT_UART_TX_ENABLE              0
#define BIT_UART_RX_ENABLE              1
#define BIT_UART_IRDA                   2
#define BIT_UART_LEN                    3
#define BIT_UART_PAR_EN                 5
#define BIT_UART_PAR_MODE               6
#define BIT_UART_STOP_LEN               7
#define BIT_UART_CLK_DIVID              8
#define SET_UART_TX_ENABLE              (0x1 << BIT_UART_TX_ENABLE)
#define SET_UART_RX_ENABLE              (0x1 << BIT_UART_RX_ENABLE)
#define SET_UART_IRDA                   (0x1 << BIT_UART_IRDA     )
#define SET_UART_LEN                    (0x3 << BIT_UART_LEN      )
#define SET_UART_PAR_EN                 (0x1 << BIT_UART_PAR_EN   )
#define SET_UART_PAR_MODE               (0x1 << BIT_UART_PAR_MODE )
#define SET_UART_STOP_LEN               (0x1 << BIT_UART_STOP_LEN )
#define SET_UART_CLK_DIVID              (0x1FFF<<BIT_UART_CLK_DIVID)

#define BIT_TX_FIFO_THRESHOLD           0
#define BIT_RX_FIFO_THRESHOLD           8
#define BIT_STOP_DETECT_TIME            16
#define SET_TX_FIFO_THRESHOLD           (0xFF<< BIT_TX_FIFO_THRESHOLD)
#define SET_RX_FIFO_THRESHOLD           (0xFF<< BIT_RX_FIFO_THRESHOLD)
#define SET_STOP_DETECT_TIME            (0x3 << BIT_STOP_DETECT_TIME)


// FIFO Read-Only Status: 
#define BIT_TX_FIFO_COUNT               0
#define BIT_RX_FIFO_COUNT               8
#define BIT_TX_FIFO_FULL                16 
#define BIT_TX_FIFO_EMPTY               17
#define BIT_RX_FIFO_FULL                18
#define BIT_RX_FIFO_EMPTY               19
#define BIT_FIFO_WR_READY               20
#define BIT_FIFO_RD_READY               21

#define BIT_UART_TX_FIFO_DIN            0
#define BIT_UART_RX_FIFO_DOUT           8
#define SET_UART_TX_FIFO_DIN            (0xFF<< BIT_UART_TX_FIFO_DIN )
#define SET_UART_RX_FIFO_DOUT           (0xFF<< BIT_UART_RX_FIFO_DOUT)


// UART Interrupts enable and flags
#define BIT_TX_FIFO_NEED_WRITE_EN       0
#define BIT_RX_FIFO_NEED_READ_EN        1
#define BIT_RX_FIFO_OVER_FLOW_EN        2
#define BIT_UART_RX_PARITY_ERR_EN       3
#define BIT_UART_RX_STOP_ERR_EN         4
#define BIT_UART_TX_STOP_END_EN         5
#define BIT_UART_RX_STOP_END_EN         6
#define BIT_UART_RXD_WAKEUP_EN          7
#define SET_TX_FIFO_NEED_WRITE_EN       (0x1 << BIT_TX_FIFO_NEED_WRITE_EN) 
#define SET_RX_FIFO_NEED_READ_EN        (0x1 << BIT_RX_FIFO_NEED_READ_EN ) 
#define SET_RX_FIFO_OVER_FLOW_EN        (0x1 << BIT_RX_FIFO_OVER_FLOW_EN ) 
#define SET_UART_RX_PARITY_ERR_EN       (0x1 << BIT_UART_RX_PARITY_ERR_EN) 
#define SET_UART_RX_STOP_ERR_EN         (0x1 << BIT_UART_RX_STOP_ERR_EN  ) 
#define SET_UART_TX_STOP_END_EN         (0x1 << BIT_UART_TX_STOP_END_EN  ) 
#define SET_UART_RX_STOP_END_EN         (0x1 << BIT_UART_RX_STOP_END_EN  ) 
#define SET_UART_RXD_WAKEUP_EN          (0x1 << BIT_UART_RXD_WAKEUP_EN   ) 

#define BIT_TX_FIFO_NEED_WRITE_FLAG     (0x1<<0) 
#define BIT_RX_FIFO_NEED_READ_FLAG      (0x1<<1)
#define BIT_RX_FIFO_OVER_FLOW_FLAG      (0x1<<2)
#define BIT_UART_RX_PARITY_ERR_FLAG     (0x1<<3)
#define BIT_UART_RX_STOP_ERR_FLAG       (0x1<<4)
#define BIT_UART_TX_STOP_END_FLAG       (0x1<<5)
#define BIT_UART_RX_STOP_END_FLAG       (0x1<<6)
#define BIT_UART_RXD_WAKEUP_FLAG        (0x1<<7)
//=====================================================================================



//=====================================================================================
//IIC0
//=====================================================================================
#define REG_APB4_I2C_CN                 (*((volatile unsigned long *)   (APB_I2C_BASE + 0x00) ))
#define REG_APB4_I2C_STAT               (*((volatile unsigned long *)   (APB_I2C_BASE + 0x04) ))
#define REG_APB4_I2C_DAT                (*((volatile unsigned long *)   (APB_I2C_BASE + 0x08) ))

#define I2C_INTR_BIT                    (0x01<<9)
#define I2C_INTR_TX                     (0x01<<1)
//=====================================================================================

//=====================================================================================
//IIC1
//=====================================================================================
#define REG_APB4_I2C1_CN                 (*((volatile unsigned long *)   (APB_I2C1_BASE + 0x00) ))
#define REG_APB4_I2C1_STAT               (*((volatile unsigned long *)   (APB_I2C1_BASE + 0x04) ))
#define REG_APB4_I2C1_DAT                (*((volatile unsigned long *)   (APB_I2C1_BASE + 0x08) ))

#define I2C1_INTR_BIT                    (0x01<<9)
#define I2C1_INTR_TX                     (0x01<<1)
//=====================================================================================

//=====================================================================================
// GPIO
//=====================================================================================
#define REG_APB5_GPIO0_CFG              (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x00) ))
#define REG_APB5_GPIO0_DATA             (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x04) ))
#define REG_APB5_GPIO1_CFG              (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x08) ))
#define REG_APB5_GPIO1_DATA             (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x0C) ))
#define REG_APB5_GPIO2_CFG              (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x10) ))
#define REG_APB5_GPIO2_DATA             (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x14) ))
#define REG_APB5_GPIO3_CFG              (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x18) ))
#define REG_APB5_GPIO3_DATA             (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x1C) ))
#define REG_APB5_GPIO4_CFG              (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x20) ))
#define REG_APB5_GPIO4_DATA             (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x24) ))

#define REG_APB5_GPIO_WUATOD_TYPE       (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x40) ))
#define REG_APB5_GPIO_WUE_TYPE          (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x44) ))
#define REG_APB5_GPIO_WUATOD_ENABLE     (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x48) ))
#define REG_APB5_GPIO_WUE_ENABLE        (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x4C) ))
#define REG_APB5_GPIO_WUATOD_STAT       (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x50) ))
#define REG_APB5_GPIO_WUE_STAT          (*((volatile unsigned long *)   (APB_GPIO_BASE + 0x54) ))

// GPIO config[7:0] are peripheral function enable low active. 0-Peri Function enable. 1-Normal GPIO.
#define BIT_GPIO_NORMAL                 0
#define BIT_GPIO_OUT_EN_N               8
#define BIT_GPIO_PULL_UP                16
#define BIT_GPIO_PULL_DOWN              24
#define BIT_GPIO_OUT_BUFFER             0
#define BIT_GPIO_IN_BUFFER              8
#define BIT_GPIO_INPUT_EN               16

#define BIT_GPIOA_WU_TYPE               0
#define BIT_GPIOB_WU_TYPE               8
#define BIT_GPIOC_WU_TYPE               16
#define BIT_GPIOD_WU_TYPE               24
#define BIT_GPIOE_WU_TYPE               0


//=====================================================================================
//RTC
//=====================================================================================
#define REG_APB6_RTC_CFG                (*((volatile unsigned long *)   (APB_RTC_BASE + 0x00) ))
#define BIT_RTC_ENABLE                  0
#define BIT_RTC_CLEAR                   1
#define BIT_RTC_ALARM_EN                2
#define BIT_RTC_ALARM_MODE              3
#define SET_RTC_ENABLE                  (0x1 << BIT_RTC_ENABLE     )
#define SET_RTC_CLEAR                   (0x1 << BIT_RTC_CLEAR      )
#define SET_RTC_ALARM_EN                (0x1 << BIT_RTC_ALARM_EN   )
#define SET_RTC_ALARM_MODE              (0x1 << BIT_RTC_ALARM_MODE )

#define REG_APB6_RTC_UNIT               (*((volatile unsigned long *)   (APB_RTC_BASE + 0x04) ))
#define BIT_RTC_DIV                     0
#define BIT_RTC_MSUNIT                  2
#define BIT_RTC_SUNIT                   8
#define SET_RTC_DIV                     (0x3    << BIT_RTC_DIV   )
#define SET_RTC_MSUNIT                  (0x3F   << BIT_RTC_MSUNIT)
#define SET_RTC_SUNIT                   (0xFFFF << BIT_RTC_SUNIT )

#define REG_APB6_RTC_SET                (*((volatile unsigned long *)   (APB_RTC_BASE + 0x08) ))
#define BIT_RTC_SECOND                  0
#define BIT_RTC_MINUTE                  6
#define BIT_RTC_HOUR                    12
#define BIT_RTC_WEEK                    17
#define SET_RTC_SECOND                  (0x3F << BIT_RTC_SECOND )
#define SET_RTC_MINUTE                  (0x3F << BIT_RTC_MINUTE )
#define SET_RTC_HOUR                    (0x1F << BIT_RTC_HOUR   )
#define SET_RTC_WEEK                    (0x7  << BIT_RTC_WEEK   )

#define REG_APB6_RTC_ALM_TIME           (*((volatile unsigned long *)   (APB_RTC_BASE + 0x0C) ))
#define BIT_RTC_ALARM_SECOND            0
#define BIT_RTC_ALARM_MINUTE            6
#define BIT_RTC_ALARM_HOUR              12
#define BIT_RTC_ALARM_MILLISEC          17
#define SET_RTC_ALARM_SECOND            (0x3F  << BIT_RTC_ALARM_SECOND   )
#define SET_RTC_ALARM_MINUTE            (0x3F  << BIT_RTC_ALARM_MINUTE   )
#define SET_RTC_ALARM_HOUR              (0x1F  << BIT_RTC_ALARM_HOUR     )
#define SET_RTC_ALARM_MILLISEC          (0x3FF << BIT_RTC_ALARM_MILLISEC )

#define REG_APB6_RTC_ALM_FLAG           (*((volatile unsigned long *)   (APB_RTC_BASE + 0x10) ))

// RTC Test Firmware Definition
#define BK_RTC_CLOCK_MODE         0
#define BK_RTC_MILLISEC_MODE      1
//=====================================================================================




//=====================================================================================
// ADC                                   
//=====================================================================================
// TBD
#define REG_APB7_ADC_CFG                (*((volatile unsigned long *)   (APB_ADC_BASE + 0x00)))
#define REG_APB7_ADC_DAT                (*((volatile unsigned long *)   (APB_ADC_BASE + 0x04)))

#define BIT_ADC_MODE                    0
#define BIT_ADC_EN                      2
#define BIT_ADC_CHNL                    3
#define BIT_ADC_FIFO_EMPTY              6
#define BIT_ADC_FIFO_BUSY               7
#define BIT_ADC_SAMPLE_RATE             8
#define BIT_ADC_WAIT_CLK_SETTING        10
#define BIT_ADC_VALID_MODE              11
#define BIT_ADC_INT_CLEAR               15
#define BIT_ADC_CLK_RATE                16
#define SET_ADC_MODE                    (0x3 << BIT_ADC_MODE            )
#define SET_ADC_EN                      (0x1 << BIT_ADC_EN              )
#define SET_ADC_CHNL                    (0x7 << BIT_ADC_CHNL            )
#define SET_ADC_FIFO_EMPTY              (0x1 << BIT_ADC_FIFO_EMPTY      )
#define SET_ADC_FIFO_FULL               (0x1 << BIT_ADC_FIFO_FULL       )
#define SET_ADC_SAMPLE_RATE             (0x3 << BIT_ADC_SAMPLE_RATE     )
#define SET_ADC_WAIT_CLK_SETTING        (0x1 << BIT_ADC_WAIT_CLK_SETTING)
#define SET_ADC_VALID_MODE              (0x3 << BIT_ADC_VALID_MODE      )
#define SET_ADC_INT_CLEAR               (0x1 << BIT_ADC_INT_CLEAR       )
#define SET_ADC_CLK_RATE                (0x3 << BIT_ADC_CLK_RATE        )
//=====================================================================================
//XVR
#define BK3000_XVR_REG_0x00		        REG32(APB_XVER_BASE+0x00)
#define BK3000_XVR_REG_0x01		        REG32(APB_XVER_BASE+0x04)
#define BK3000_XVR_REG_0x02		        REG32(APB_XVER_BASE+0x08)
#define BK3000_XVR_REG_0x03		        REG32(APB_XVER_BASE+0x0C)
#define BK3000_XVR_REG_0x04		        REG32(APB_XVER_BASE+0x10)
#define BK3000_XVR_REG_0x05		        REG32(APB_XVER_BASE+0x14)
#define BK3000_XVR_REG_0x06		        REG32(APB_XVER_BASE+0x18)
#define BK3000_XVR_REG_0x07		        REG32(APB_XVER_BASE+0x1C)
#define BK3000_XVR_REG_0x08		        REG32(APB_XVER_BASE+0x20)
#define BK3000_XVR_REG_0x09		        REG32(APB_XVER_BASE+0x24)
#define BK3000_XVR_REG_0x0A		        REG32(APB_XVER_BASE+0x28)
#define BK3000_XVR_REG_0x0B		        REG32(APB_XVER_BASE+0x2C)
#define BK3000_XVR_REG_0x0C		        REG32(APB_XVER_BASE+0x30)
#define BK3000_XVR_REG_0x0D		        REG32(APB_XVER_BASE+0x34)
#define BK3000_XVR_REG_0x0E		        REG32(APB_XVER_BASE+0x38)
#define BK3000_XVR_REG_0x0F		        REG32(APB_XVER_BASE+0x3C)
#define BK3000_XVR_REG_0x10		        REG32(APB_XVER_BASE+0x40)
#define BK3000_XVR_REG_0x11		        REG32(APB_XVER_BASE+0x44)
#define BK3000_XVR_REG_0x12		        REG32(APB_XVER_BASE+0x48)
#define BK3000_XVR_REG_0x13		        REG32(APB_XVER_BASE+0x4C)
#define BK3000_XVR_REG_0x14		        REG32(APB_XVER_BASE+0x50)
#define BK3000_XVR_REG_0x15		        REG32(APB_XVER_BASE+0x54)
#define BK3000_XVR_REG_0x16		        REG32(APB_XVER_BASE+0x58)
#define BK3000_XVR_REG_0x17		        REG32(APB_XVER_BASE+0x5C)
#define BK3000_XVR_REG_0x18		        REG32(APB_XVER_BASE+0x60)
#define BK3000_XVR_REG_0x19		        REG32(APB_XVER_BASE+0x64)
#define BK3000_XVR_REG_0x1A		        REG32(APB_XVER_BASE+0x68)
#define BK3000_XVR_REG_0x1B		        REG32(APB_XVER_BASE+0x6C)
#define BK3000_XVR_REG_0x1C		        REG32(APB_XVER_BASE+0x70)
#define BK3000_XVR_REG_0x1D		        REG32(APB_XVER_BASE+0x74)
#define BK3000_XVR_REG_0x1E		        REG32(APB_XVER_BASE+0x78)
#define BK3000_XVR_REG_0x1F		        REG32(APB_XVER_BASE+0x7C)
#define BK3000_XVR_REG_0x20		        REG32(APB_XVER_BASE+0x80)
#define BK3000_XVR_REG_0x21		        REG32(APB_XVER_BASE+0x84)
#define BK3000_XVR_REG_0x22		        REG32(APB_XVER_BASE+0x88)
#define BK3000_XVR_REG_0x23		        REG32(APB_XVER_BASE+0x8C)
#define BK3000_XVR_REG_0x24		        REG32(APB_XVER_BASE+0x90)
#define BK3000_XVR_REG_0x25		        REG32(APB_XVER_BASE+0x94)
#define BK3000_XVR_REG_0x26		        REG32(APB_XVER_BASE+0x98)
#define BK3000_XVR_REG_0x27		        REG32(APB_XVER_BASE+0x9C)
#define BK3000_XVR_REG_0x28		        REG32(APB_XVER_BASE+0xA0)
#define BK3000_XVR_REG_0x29		        REG32(APB_XVER_BASE+0xA4)
#define BK3000_XVR_REG_0x2A		        REG32(APB_XVER_BASE+0xA8)
#define BK3000_XVR_REG_0x2B		        REG32(APB_XVER_BASE+0xAC)
#define BK3000_XVR_REG_0x2C		        REG32(APB_XVER_BASE+0xB0)
#define BK3000_XVR_REG_0x2D		        REG32(APB_XVER_BASE+0xB4)
#define BK3000_XVR_REG_0x2E		        REG32(APB_XVER_BASE+0xB8)
#define BK3000_XVR_REG_0x2F		        REG32(APB_XVER_BASE+0xBC)
#define BK3000_XVR_REG_0x30		        REG32(APB_XVER_BASE+0xC0)
#define BK3000_XVR_REG_0x31		        REG32(APB_XVER_BASE+0xC4)
#define BK3000_XVR_REG_0x32		        REG32(APB_XVER_BASE+0xC8)
#define BK3000_XVR_REG_0x33		        REG32(APB_XVER_BASE+0xCC)
#define BK3000_XVR_REG_0x34		        REG32(APB_XVER_BASE+0xD0)
#define BK3000_XVR_REG_0x35		        REG32(APB_XVER_BASE+0xD4)
#define BK3000_XVR_REG_0x36		        REG32(APB_XVER_BASE+0xD8)
#define BK3000_XVR_REG_0x37		        REG32(APB_XVER_BASE+0xDC)
#define BK3000_XVR_REG_0x38		        REG32(APB_XVER_BASE+0xE0)
#define BK3000_XVR_REG_0x39		        REG32(APB_XVER_BASE+0xE4)
#define BK3000_XVR_REG_0x3A		        REG32(APB_XVER_BASE+0xE8)
#define BK3000_XVR_REG_0x3B		        REG32(APB_XVER_BASE+0xEC)
#define BK3000_XVR_REG_0x3C		        REG32(APB_XVER_BASE+0xF0)
#define BK3000_XVR_REG_0x3D		        REG32(APB_XVER_BASE+0xF4)
#define BK3000_XVR_REG_0x3E		        REG32(APB_XVER_BASE+0xF8)
#define BK3000_XVR_REG_0x3F		        REG32(APB_XVER_BASE+0xFC)
#define BK3000_XVR_REG_0x40		        REG32(APB_XVER_BASE+0x100)
#define BK3000_XVR_REG_0x41		        REG32(APB_XVER_BASE+0x104)
#define BK3000_XVR_REG_0x42		        REG32(APB_XVER_BASE+0x108)
#define BK3000_XVR_REG_0x43		        REG32(APB_XVER_BASE+0x10C)
#define BK3000_XVR_REG_0x44		        REG32(APB_XVER_BASE+0x110)
#define BK3000_XVR_REG_0x45		        REG32(APB_XVER_BASE+0x114)
#define BK3000_XVR_REG_0x46		        REG32(APB_XVER_BASE+0x118)
#define BK3000_XVR_REG_0x47		        REG32(APB_XVER_BASE+0x11C)
#define BK3000_XVR_REG_0x48		        REG32(APB_XVER_BASE+0x120)
#define BK3000_XVR_REG_0x49		        REG32(APB_XVER_BASE+0x124)
#define BK3000_XVR_REG_0x4A		        REG32(APB_XVER_BASE+0x128)
#define BK3000_XVR_REG_0x4B		        REG32(APB_XVER_BASE+0x12C)
#define BK3000_XVR_REG_0x4C		        REG32(APB_XVER_BASE+0x130)
#define BK3000_XVR_REG_0x4D		        REG32(APB_XVER_BASE+0x134)
#define BK3000_XVR_REG_0x4E		        REG32(APB_XVER_BASE+0x138)
#define BK3000_XVR_REG_0x4F		        REG32(APB_XVER_BASE+0x13C)
#define BK3000_XVR_REG_0x50		        REG32(APB_XVER_BASE+0x140)
#define BK3000_XVR_REG_0x51		        REG32(APB_XVER_BASE+0x144)
#define BK3000_XVR_REG_0x52		        REG32(APB_XVER_BASE+0x148)
#define BK3000_XVR_REG_0x53		        REG32(APB_XVER_BASE+0x14C)


#define BK3000_XVR_REG_0x58		        REG32(APB_XVER_BASE+0x160)
#define BK3000_XVR_REG_0x59		        REG32(APB_XVER_BASE+0x164)




#endif

