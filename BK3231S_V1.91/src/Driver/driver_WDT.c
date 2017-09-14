//======================================================
// File Name:     BK_WDT_API.c
// Author:        yubei
// Created Date:  @2015-02-16
// Description:   Project BK3231S - Test Firmware for Massive Production
//                RTC protocol
//                Source from
//======================================================
#include "include.h"

void Driver_wdt_enable(uint16 wdt_cnt)
//the timer is 48uS @1 CLK
//0xffff: 3s
{
    REG_AHB0_ICU_WDTCLKCON = 0x0 ; // Step1. WDT clock enable,16M
	REG_APB0_WDT_CFG  = wdt_cnt;   // Step2. Set WDT period=0xFF
	// Do two things together: 1. Set WDT period. 2. Write WDT key to feed dog.
	 // Write WDT key: 0x5A firstly and 0xA5 secondly.
	 REG_APB0_WDT_CFG = (0x5A<<16) + wdt_cnt;
	 REG_APB0_WDT_CFG = (0xA5<<16) + wdt_cnt;
}

void Driver_wdt_feed_dog(uint16 wdt_cnt)
{
	// Do two things together: 1. Set WDT period. 2. Write WDT key to feed dog.
	  // Write WDT key: 0x5A firstly and 0xA5 secondly.
	  REG_APB0_WDT_CFG = (0x5A<<16) + wdt_cnt;
	  REG_APB0_WDT_CFG = (0xA5<<16) + wdt_cnt;
}

void Driver_wdt_disable(void)
{
    REG_AHB0_ICU_WDTCLKCON = 0x1 ; // Step1. WDT clock enable
	REG_APB0_WDT_CFG = 0x005A0000;// Step3. Feed dog. Write WDT key: 0x5A firstly and 0xA5 secondly.
    REG_APB0_WDT_CFG = 0x00A50000;
}

