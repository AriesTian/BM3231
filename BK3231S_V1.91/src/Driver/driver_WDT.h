//======================================================
// File Name:     BK_WDT_Api.h
// Author:        yubei
// Created Date:  @2015-02-16
// Description:   funtion to apply WDT Interface
//======================================================

#ifndef _BK_WDT_API_
#define _BK_WDT_API_

void Driver_wdt_enable(uint16 wdt_cnt);
void Driver_wdt_feed_dog(uint16 wdt_cnt);
void Driver_wdt_disable(void);

#endif

